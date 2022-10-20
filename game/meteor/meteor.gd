class_name  Meteor
extends Node2D

@onready var animation_player: AnimationPlayer = get_node("AnimationPlayer")

enum TYPES {
	NUMBER,
	COLOR,
	SYMBOL,
	
}
var type: int

var value: String

func _ready() -> void:
	self.type = Meteor.TYPES.NUMBER


func check_for_match(input: String) -> bool:
	return true


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


func _on_timer_timeout() -> void:
	flip_over()
