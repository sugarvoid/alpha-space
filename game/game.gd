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

enum STATES {
	
}


var meteors_per_round: int = 5
var round: int 
var state: STATES
var can_player_fire: bool = true
var typed_letters: Array = []
var pizza = load("res://game/pizza_cursor.png")


func _ready() -> void:
	self.word_manager.load_words_from_file()
	Input.set_custom_mouse_cursor(pizza)
	self._connect_signals()
	var timer: Timer = Timer.new()
	add_child(timer)
	timer.start(0.01)
	await timer.timeout
	timer.queue_free()
	self._new_round()


func _process(delta: float) -> void:
	fps_label.update_label(Engine.get_frames_per_second())

func _new_round() -> void:
	self.round += 1
	self.meteor_manager.new_round(self.meteors_per_round)

func _unhandled_input(event) -> void:
	if event.is_action_pressed("num_pad_one"):
		print('6')
		_shoot_laser(6)
	elif event.is_action_pressed("num_pad_two"):
		print('7')
		_shoot_laser(7)
	elif event.is_action_pressed("num_pad_three"):
		print('8')
		_shoot_laser(8)
	elif event.is_action_pressed("num_pad_four"):
		print('3')
		_shoot_laser(3)
	elif event.is_action_pressed("num_pad_five"):
		print('4')
		_shoot_laser(4)
	elif event.is_action_pressed("num_pad_six"):
		print('5')
		_shoot_laser(5)
	elif event.is_action_pressed("num_pad_seven"):
		print('0')
		_shoot_laser(0)
	elif event.is_action_pressed("num_pad_eight"):
		print('1')
		_shoot_laser(1)
	elif event.is_action_pressed("num_pad_nine"):
		print('2')
		_shoot_laser(2)
	
	if event is InputEventKey and event.is_pressed():
		if event.keycode == 4194309:
			_submit_word()
			
			# start next round
			
			
		var key_typed = OS.get_keycode_string(event.keycode).to_lower()
		# if key_typed is a letter -> then do stuff
		if self.word_manager.LETTERS.has(key_typed):
			if self.meteor_manager.current_letters.has(key_typed):
				print('MATCH!')
			else:
				print("NOT HERE!")
		else:
			return
		# else ignore 
		# get the meteor that has that letter
		# then get its slot location 
		# then we can shoot


func _connect_signals() -> void:
	self.slot_0.on_letter_used.connect(self.word_manager.add_letter)
	self.slot_1.on_letter_used.connect(self.word_manager.add_letter)
	self.slot_2.on_letter_used.connect(self.word_manager.add_letter)
	self.meteor_manager.send_shoot.connect(self._shoot_laser)
	self.meteor_manager.meteor_shot.connect(self.word_manager.add_letter)
	self.meteor_manager.meteor_stored.connect(self.letter_bank.add_letter_to_bank)
	self.meteor_manager.meteor_shot.connect(self._letter_selected)
	self.letter_bank.on_valid_store.connect(self._letter_selected)
	#### self.hand_sprite.press_animation_finished.connect()
	self.word_manager.on_running_word_update.connect(self.hud.update_word_label)
	

func _letter_selected(_m: String) -> void:
	self._new_round()

func _submit_word() -> void:
	print(str("running score is: ", self.word_manager.get_running_score()))
	print(str("is word real: ", self.word_manager.check_if_word_is_vaild()))
	if self.word_manager.check_if_word_is_vaild():
		print('vaild word')
	else:
		print('wrong')
	
	self.word_manager.reset_values()
	self.hud

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
	


func _on_enter_button_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == 1:
			self._submit_word()
		else:
			pass
