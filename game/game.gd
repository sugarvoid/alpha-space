class_name Game
extends Node2D

signal on_word_submit

@onready var fps_label: Control = get_node("HUD/FPSCounter")
@onready var word_manager: WordManager = load("res://game/manager/word_manager.gd").new()
@onready var meteor_manager: MeteorManager = get_node("MeteorManager")
@onready var laser_manager: LaserManager = get_node("LaserManager")
@onready var hud: HUD = get_node("HUD")
@onready var letter_bank: LetterBank = get_node("LetterBank")
@onready var slot_0: BankSlot = get_node("LetterBank/Slots/BankSlot0")
@onready var slot_1: BankSlot = get_node("LetterBank/Slots/BankSlot1")
@onready var slot_2: BankSlot = get_node("LetterBank/Slots/BankSlot2")

const STARTING_DISTANCE: int = 50

var meteors_per_round: int = 5
var round: int 
var can_player_fire: bool = true
var typed_letters: Array = []
var pizza = load("res://game/pizza_cursor.png")
var _distance_to_goal: int


func _ready() -> void:
	self._distance_to_goal = STARTING_DISTANCE
	_update_dis_to_goal_label()
	self.word_manager.load_words_from_file()
	self.hud.update_distance_left_label(self._distance_to_goal)
	Input.set_custom_mouse_cursor(pizza)
	self._connect_signals()
	var timer: Timer = Timer.new()
	add_child(timer)
	timer.start(1.0)
	await timer.timeout
	timer.queue_free()
	self._start_game()
	self._new_round()


func _process(delta: float) -> void:
	fps_label.update_label(Engine.get_frames_per_second())


func _new_round() -> void:
	self.round += 1
	self.meteor_manager.new_round(self.meteors_per_round)


func _start_game() -> void:
	self.hud.start_stopwatch()


func _unhandled_input(event) -> void:
	if event.is_action_pressed("exit"):
		# Add pause screen
		print('pause')


func _connect_signals() -> void:
	self.slot_0.on_letter_used.connect(self.word_manager.add_letter)
	self.slot_1.on_letter_used.connect(self.word_manager.add_letter)
	self.slot_2.on_letter_used.connect(self.word_manager.add_letter)
	
	self.meteor_manager.send_shoot.connect(self._shoot_laser)
	self.meteor_manager.meteor_shot.connect(self._letter_selected)
	self.meteor_manager.meteor_shot.connect(self.word_manager.add_letter)
	self.meteor_manager.meteor_stored.connect(self._add_letter_to_bank)
	
	self.letter_bank.on_valid_store.connect(self._letter_selected)
	#### self.hand_sprite.press_animation_finished.connect()
	self.word_manager.on_running_word_update.connect(self.hud.update_word_label)


func _letter_selected(_m: String) -> void:
	self._new_round()

func _add_letter_to_bank(m: Meteor) -> void:
	var open_slot: BankSlot = null
	for slot in $LetterBank/Slots.get_children():
		if slot.is_open:
			open_slot = slot
	if open_slot != null:
		self.meteor_manager.move_meteor_to_storage_point(m)
		open_slot.add_letter(m.letter)
		self._letter_selected(m.letter)
	else:
		print('all slots full')

	"""
	check to see if there is an open slot
		let meteor_manager know it good
		add the letter
	"""

func _submit_word() -> void:
	if self.word_manager.running_word == "":
		return
	
	if self.word_manager.check_if_word_is_vaild():
		$SndCorrect.play()
		self.hud.play_score_animation(self.word_manager.get_running_score())
		self._lower_distance_left(self.word_manager.get_running_score())
		self._update_dis_to_goal_label()
		#####
		var good_word: WordObject = WordObject.new()
		good_word.word = word_manager.running_word
		good_word.score = word_manager.get_running_score()
		PlayerData.word_list.append(good_word)
		#####
		
	else:
		self.hud.disable_mouse_input()
		print(str(word_manager.running_word), ' is not a vaild word')
		
	
	self.word_manager.reset_values()


func _update_dis_to_goal_label() -> void:
	self.hud.update_distance_left_label(self._distance_to_goal)


func _shoot_laser(array_slot: int) -> void:
	if self.meteor_manager.check_if_slot_has_meteor(array_slot):
		#### self.hand_sprite.play_press_animation()
		var targeted_meteor: Meteor 
		targeted_meteor = self.meteor_manager.current_meteors[array_slot]
		var target_pos: Vector2 = targeted_meteor.global_position
		self.laser_manager.add_lasers_to_screen(target_pos)
		self.meteor_manager.remove_meteor(targeted_meteor)
	else:
		# no meteor in that spot
		return


func _game_over() -> void:
	# stop the stopwatch
	self.hud.stop_stopwatch()
	
	# get time from hud
	var player_time: float = self.hud.get_stopwatch_time()
	PlayerData.time_string = self.hud.get_stopwatch_string()
	
	# send that time to player_data
	PlayerData.set_time(player_time)
	
	# go to game over screen 
	get_tree().change_scene_to_file("res://game/screen/gameover_screen/gameover_screen.tscn")


func _lower_distance_left(value: int) -> void:
	self._distance_to_goal -= value
	self._distance_to_goal = clamp(self._distance_to_goal, 0, STARTING_DISTANCE)
	print(_distance_to_goal)
	
	if self._distance_to_goal == 0:
		
		self._game_over()
		
	
	# TODO: If this reaches zero, game won


func _on_enter_button_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == 1:
			self._submit_word()
	else:
		pass
