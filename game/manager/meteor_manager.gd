class_name  MeteorManager
extends Node2D

@onready var inner_node: Node2D = get_node("Inner")
@onready var outer_node: Node2D = get_node("Outer")

const p_Meteor: PackedScene = preload("res://game/meteor/meteor.tscn")

var inner_positions: Array
var outer_positions: Array

func add_metor_to_screen(pos: Vector2) -> void:
	pass

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_resize_arrays()
	_add_pos_to_inner_array()
	_add_pos_to_outer_array()
	print(self.inner_positions)
	print(self.outer_positions)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _resize_arrays() -> void:
	self.inner_positions.resize(9)
	self.outer_positions.resize(9)

func _add_pos_to_inner_array() -> void:
	var i = 0
	for pos in self.inner_node.get_children():
		self.inner_positions[i] = pos.global_position
		i += 1
		
func _add_pos_to_outer_array() -> void:
	var i = 0
	for pos in self.outer_node.get_children():
		self.outer_positions[i] = pos.global_position
		i += 1
