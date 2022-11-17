# Creats, track and remove meteors

class_name  MeteorManager
extends Node2D

signal meteor_shot
signal meteor_stored

signal send_shoot
signal send_save

@onready var inner_node: Node2D = get_node("Inner")
@onready var outer_node: Node2D = get_node("Outer")
@onready var meteors: Node = get_node("Meteors")
@onready var storage_point: Marker2D = get_node("StoragePoint")

@onready var letter_maker: LetterMaker = load("res://game/manager/letter_maker.gd").new()


const p_Meteor: PackedScene = preload("res://game/meteor/meteor.tscn")
const p_Explosion: PackedScene = preload("res://game/meteor/particle_explosion.tscn")
#const LETTERS: Array = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

var current_meteors: Array
var current_letters: Array
var inner_positions: Array
var outer_positions: Array

var cloned_meteor: Meteor

func add_meteor_to_screen(slot: int) -> void:
	var meteor: Meteor = p_Meteor.instantiate()
	##meteor.letter = self._get_random_letter()
	meteor.letter = self.letter_maker.get_letters(1)[0]
	meteor.slot_number = slot
	meteor.storage_point = self.storage_point.global_position
	meteor.start_pos = self.inner_positions[slot]
	meteor.end_pos = self.outer_positions[slot]
	self.meteors.add_child(meteor)
	
	# Connecting the children
	meteor.was_shot.connect(_meteor_shot)
	meteor.was_stored.connect(_meteor_stored)
	
	self.current_meteors[slot] = meteor
	self.current_letters.append(meteor.letter)


func _ready() -> void:
	_resize_arrays()
	_add_pos_to_inner_array()
	_add_pos_to_outer_array()
	_remove_pos_nodes()
	self.letter_maker.set_up()


func new_round(meteors: int) -> void:
	for m in self.meteors.get_children():
		remove_meteor(m)
	self._spawn_meteors(meteors)


func _meteor_shot(m: Meteor) -> void:
	self.emit_signal("send_shoot", m.slot_number)
	self.emit_signal("meteor_shot", m.letter)


func _meteor_stored(m: Meteor) -> void:
	
	self.emit_signal("send_save", m.slot_number)
	self.emit_signal("meteor_stored", m)

func move_meteor_to_storage_point(m: Meteor) -> void:
	self._clone_selected_meteor(m)
	self.cloned_meteor.move_to_pos(self.storage_point.global_position)
	
	#var meteor: Meteor = self.meteors.find_child(m.name)
	#meteor.move_to_pos($StoragePoint.global_position)

#func _get_random_letter() -> String:
#	return self.LETTERS[randi() % LETTERS.size()]

func _clone_selected_meteor(m: Meteor) -> void:
	# create new meter based on passed in one
	var clone_meteor: Meteor = p_Meteor.instantiate()
	# remove Area2d 
	##clone_meteor.drop_area2d()
	# place it on top of old meteor
	clone_meteor.letter = m.letter
	clone_meteor.is_clone = true
	clone_meteor.transform = m.transform
	clone_meteor.global_position = m.global_position
	
	self.cloned_meteor = clone_meteor
	
	self.add_child(clone_meteor)
	
	
	
	# new meteor can either move to pos or turn into blow up animation
	# quere_fre itself
	pass

func _add_meteor_to_child(child_num: int, meteor: Meteor) -> void:
	self.meteors.add_child(meteor)
	self.current_meteors[child_num] = meteor


func remove_meteor(meteor: Meteor) -> void:
	#TODO: Add explosion animation 
	#var explosion = p_Explosion.instantiate()
	#explosion.position = meteor.global_position
	meteor.queue_free()
	
	#self.add_child(explosion)


func _spawn_meteors(amount: int) -> void:

	
	var slot_options: Array[int] = [0, 1, 2, 3, 4, 5, 6, 7, 8]
	slot_options.shuffle()
	for i in amount:
		self.add_meteor_to_screen(slot_options.pop_front())


func show_current_letters() -> void:
	for m in self.current_meteors:
		print(m.letter)


func check_if_slot_has_meteor(slot: int) -> bool:
	return is_instance_valid(current_meteors[slot])


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
