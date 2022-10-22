class_name Game
extends Node2D

@onready var fps_label: Control = get_node("CanvasLayer/FPSCounter")
@onready var word_manager: WordManager = get_node("WordManager")
@onready var meteor_manager: MeteorManager = get_node("MeteorManager")
@onready var laser_manager: LaserManager = get_node("LaserManager")
@onready var hand_sprite: Sprite2D = get_node("Hand")


enum states {
	
}


var state: int
var can_player_fire: bool = true
var typed_letters: Array = []


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	fps_label.update_label(Engine.get_frames_per_second())

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
	pass
	## self.hand_sprite.press_animation_finished.connect()
	
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
	
