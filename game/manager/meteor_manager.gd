class_name  MeteorManager
extends Node2D

@onready var inner_node: Node2D = get_node("Inner")
@onready var outer_node: Node2D = get_node("Outer")

const p_Meteor: PackedScene = preload("res://game/meteor/meteor.tscn")
const p_Explosion: PackedScene = preload("res://game/meteor/particle_explosion.tscn")

const LETTERS: Array = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

var current_meteors: Array
var current_letters: Array

var inner_positions: Array
var outer_positions: Array

func add_meteor_to_screen(slot: int) -> void:
	var meteor: Meteor = p_Meteor.instantiate()
	meteor.letter = self._get_random_letter()
	meteor.slot_number = slot
	meteor.start_pos = self.inner_positions[slot]
	meteor.end_pos = self.outer_positions[slot]
	###self._add_meteor_to_child(slot, meteor)
	self.add_child(meteor)
	self.current_meteors[slot] = meteor
	self.current_letters.append(meteor.letter)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_resize_arrays()
	_add_pos_to_inner_array()
	_add_pos_to_outer_array()
	_remove_pos_nodes()
	add_meteor_to_screen(0)
	add_meteor_to_screen(1)
	add_meteor_to_screen(2)
	add_meteor_to_screen(3)
	add_meteor_to_screen(4)
	add_meteor_to_screen(5)
	add_meteor_to_screen(6)
	add_meteor_to_screen(7)
	add_meteor_to_screen(8)
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _get_random_letter() -> String:
	return self.LETTERS[randi() % LETTERS.size()]

func _add_meteor_to_child(child_num: int, meteor: Meteor) -> void:
	self.add_child(meteor)
	self.current_meteors[child_num] = meteor

func remove_meteor(meteor: Meteor) -> void:
	print(meteor)
	#var explosion = p_Explosion.instantiate()
	#explosion.position = meteor.global_position
	meteor.queue_free()
	
	#self.add_child(explosion)
	

func show_current_letters() -> void:
	for m in self.current_meteors:
		print(m.letter)

func check_if_slot_has_meteor(slot: int) -> bool:
	print(current_meteors)
	return is_instance_valid(current_meteors[slot])## current_meteors[slot] != null

func _resize_arrays() -> void:
	self.current_meteors.resize(9)
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
func _remove_pos_nodes() -> void:
	# Once the vectors have been put in the array, the nodes are no longer needed 
	self.outer_node.queue_free()
	self.inner_node.queue_free()
