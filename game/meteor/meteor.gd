class_name  Meteor
extends Node2D

@onready var sprite: Sprite2D = get_node("Sprite2D")



const WOBBLE_SIZE: Vector2 = Vector2(0.05,0.05)
const STARTING_SCALE: Vector2 = Vector2(0.3, 0.3)


enum TYPES {
	NUMBER,
	COLOR,
	SYMBOL,
	
}
var rng: RandomNumberGenerator
var type: int
var slot_number: int
var start_pos: Vector2
var end_pos: Vector2
var rotate_speed: float
var rotate_dir: int
var movement_tween_time: float = 3.5


var value: String

func _ready() -> void:
	self.global_position = self.start_pos
	self.sprite.scale = self.STARTING_SCALE
	self.type = Meteor.TYPES.NUMBER
	self.rotate_speed = self._get_ran_rotation_speed()
	self._move_to_end_pos()
	self._increase_scale_to_one()
	#######self._wobble()

func _process(delta: float) -> void:
	$Control.scale = self.sprite.scale
	self.sprite.rotation += self.rotate_speed * delta


func check_for_match(input: String) -> bool:
	return true

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
	


func _increase_scale_to_one() -> void:
	var tween2: Tween = create_tween()
	tween2.tween_property(self.sprite, "scale", Vector2(1,1), self.movement_tween_time)

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
