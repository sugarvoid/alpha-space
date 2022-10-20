class_name  Meteor
extends Node2D

@onready var animation_player: AnimationPlayer = get_node("AnimationPlayer")

const WOBBLE_SIZE: Vector2 = Vector2(0.1,0.1)

enum TYPES {
	NUMBER,
	COLOR,
	SYMBOL,
	
}
var type: int

var value: String

func _ready() -> void:
	self.type = Meteor.TYPES.NUMBER
	self._wobble()

func _process(delta: float) -> void:
	print(self.get_current_scale())

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
	

func _wobble() -> void:
	var tween: Tween = create_tween() 
	tween.tween_property(self, "scale", (self.get_current_scale() - self.WOBBLE_SIZE), 1.0)
	await  tween.finished

	var tween2: Tween = create_tween()
	tween2.tween_property(self, "scale", (self.get_current_scale() + self.WOBBLE_SIZE), 1.0)
	await  tween2.finished

	self._wobble()


