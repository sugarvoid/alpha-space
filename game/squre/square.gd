class_name  Square
extends Node2D

enum TYPES {
	NUMBER,
	COLOR,
	SYMBOL,
	
}
var type: int

var value: String
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.type = Square.TYPES.NUMBER
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta) -> void:
	pass


func check_for_match(input: String) -> bool:
	return true


func flip_over() -> void:
	$AnimationPlayer.play("flip_over")
	await  $AnimationPlayer.animation_finished
	$Sprite2D.frame = 1

	$AnimationPlayer.play_backwards("flip_over")
	await  $AnimationPlayer.animation_finished
	
	$AnimationPlayer.play("flip_over")
	await  $AnimationPlayer.animation_finished

	$Sprite2D.frame = 0
	$AnimationPlayer.play_backwards("flip_over")
	await  $AnimationPlayer.animation_finished

	
	
	


func _on_timer_timeout() -> void:
	flip_over()
