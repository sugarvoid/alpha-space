extends Control

@onready var txt_seed: TextEdit = get_node("txt_Seed")

func _ready() -> void:
	$AnimationPlayer.play("fade_in_music")
	#$AudioStreamPlayer.play()

func _on_btn_start_pressed() -> void:
	var seed_choice: String = self.txt_seed.text
	if seed_choice == "":
		seed_choice = Seeder.get_random_seed()
	Seeder.set_seed(seed_choice)
	_start_game()

func _start_game() -> void:
	get_tree().change_scene_to_file("res://game/game.tscn")

func _on_btn_daily_run_pressed() -> void:
	$txt_Seed.text = Seeder.get_daily_seed()
	Seeder.set_seed($txt_Seed.text)
	_start_game()
