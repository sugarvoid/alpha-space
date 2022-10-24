class_name Game
extends Node2D

signal on_word_submit

@onready var fps_label: Control = get_node("HUD/FPSCounter")
@onready var word_manager: WordManager = get_node("WordManager")
@onready var meteor_manager: MeteorManager = get_node("MeteorManager")
@onready var laser_manager: LaserManager = get_node("LaserManager")
@onready var hand_sprite: Sprite2D = get_node("Hand")


enum states {
	
}


var meteors_per_round: int = 5

var state: int
var can_player_fire: bool = true
var typed_letters: Array = []


func _ready() -> void:
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
	self.meteor_manager.meteor_shot.connect(self.word_manager.add_letter)
	self.meteor_manager.meteor_shot.connect(self._letter_selected)
	## self.hand_sprite.press_animation_finished.connect()

func _letter_selected(_m: String) -> void:
	print("new round")
	self._new_round()

func _submit_word() -> void:
	print(self.word_manager.running_word)

func _shoot_laser(array_slot: int) -> void:
	if self.meteor_manager.check_if_slot_has_meteor(array_slot):
		self.hand_sprite.play_press_animation()
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
