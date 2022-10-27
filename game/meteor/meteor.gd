class_name  Meteor
extends Node2D

signal was_shot(m: Meteor)
signal was_stored

@onready var sprite: Sprite2D = get_node("Sprite2D")
@onready var label: Label = get_node("Control/Label")



const WOBBLE_SIZE: Vector2 = Vector2(0.03,0.03)
const STARTING_SCALE: Vector2 = Vector2(0.05, 0.05)


var rng: RandomNumberGenerator

var is_hovered: bool 
var is_hoverable: bool = false
var is_clickable: bool = false
var letter: String 
var slot_number: int
var start_pos: Vector2
var end_pos: Vector2
var rotate_speed: float
var rotate_dir: int
var movement_tween_time: float = 1.5


var value: String

func _ready() -> void:
	self.global_position = self.start_pos
	self._update_label()
	self.sprite.scale = self.STARTING_SCALE
	self.rotate_speed = self._get_ran_rotation_speed()
	self._move_to_end_pos()
	self._increase_scale_to_one()
	

func _process(delta: float) -> void:
	$Reticle.visible = self.is_hovered && self.is_hoverable
	$Control.scale = self.sprite.scale
	self.sprite.rotation += self.rotate_speed * delta


func _update_label() -> void:
	self.label.text = self.letter.to_upper()

func get_current_scale() -> Vector2:
	return self.scale

func flip_over() -> void:
	self.animation_player.play("flip_over")
	await  self.animation_player.animation_finished
	
	$Sprite2D.frame = 1

	self.animation_player.play_backwards("flip_over")
	await  self.animation_player.animation_finished
	
	self.animation_player.play("flip_over")
	await  self.animation_player.animation_finished

	$Sprite2D.frame = 0
	
	self.animation_player.play_backwards("flip_over")
	await  self.animation_player.animation_finished
	

func _move_to_end_pos() -> void:
	var tween: Tween = create_tween()
	tween.tween_property(self, "global_position", self.end_pos, self.movement_tween_time)
	await tween.finished
	self._wobble()


func _increase_scale_to_one() -> void:
	var tween2: Tween = create_tween()
	tween2.tween_property(self.sprite, "scale", Vector2(1,1), self.movement_tween_time)
	await  tween2.finished
	self.is_hoverable = true
	self.is_clickable = true

func _wobble() -> void:
	var tween: Tween = create_tween() 
	tween.tween_property(self.sprite, "scale", (self.get_current_scale() - self.WOBBLE_SIZE), 1.0)
	await  tween.finished

	var tween2: Tween = create_tween()
	tween2.tween_property(self.sprite, "scale", (self.get_current_scale() + self.WOBBLE_SIZE), 1.0)
	await  tween2.finished

	self._wobble()

func _get_ran_rotation_speed() -> float:
	self.rng = RandomNumberGenerator.new()
	self.rng.randomize()
	return rng.randf_range(-0.5, 0.5)


func _on_area_2d_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.is_pressed() and self.is_clickable:
		print(event)
		if event.button_index == 1:
			print(str(self.slot_number, ' was left clicked, letter is: ', self.letter))
			emit_signal("was_shot", self)
		elif event.button_index == 2:
			print(str(self.slot_number, ' was right clicked, letter is: ', self.letter))
			emit_signal("was_stored", self)
		else:
				## print("Left button was released")
				pass



func _on_area_2d_mouse_entered() -> void:
	is_hovered = true


func _on_area_2d_mouse_exited() -> void:
	is_hovered = false
