class_name LaserManager
extends Node2D

@onready var left_turrent: Marker2D = get_node("Left")
@onready var right_turrent: Marker2D = get_node("Right")

const  p_laser: PackedScene = preload("res://game/laser/laser.tscn")


func _ready() -> void:
	pass 

func add_lasers_to_screen(target: Vector2) -> void:
	var laser_left: Laser = p_laser.instantiate()
	laser_left.start_pos = target
	laser_left.end_pos = left_turrent.global_position
	
	var laser_right: Laser = p_laser.instantiate()
	laser_right.start_pos = target
	laser_right.end_pos = right_turrent.global_position
	
	self.add_child(laser_left)
	self.add_child(laser_right)



