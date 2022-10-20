class_name Game
extends Node2D

@onready var fps_label: Control = get_node("CanvasLayer/FPSCounter")
@onready var meteor_manager: MeteorManager = get_node("MeteorManager")
@onready var laser_manager: LaserManager = get_node("LaserManager")
@onready var hand_sprite: Sprite2D = get_node("Hand")

const FIRE_RATE: float = 1.0


enum states {
	
}


var state: int
var can_player_fire: bool = true

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
	elif event.is_action_pressed("ui_up"):
		print('0')
		_shoot_laser(0)
	elif event.is_action_pressed("ui_left"):
		print('1')
		_shoot_laser(1)
	elif event.is_action_pressed("ui_right"):
		print('2')
		_shoot_laser(2)
	

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
	
