extends Control

@onready var txt_seed: TextEdit = get_node("txt_Seed")

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("fade_in_music")
	$AudioStreamPlayer.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _load_daily_seed() -> void:
	pass
	# Get daily seed string from Seeder
	# Set Seeder seed_text to daily seed
	# start_game()

func _on_btn_start_pressed():
	var seed_choice: String = self.txt_seed.text
	if seed_choice == "":
		seed_choice = Seeder.get_random_seed()
	Seeder.set_seed(seed_choice)
	_start_game()

func _start_game() -> void:
	#TODO: Get random seed from seed list 
	get_tree().change_scene_to_file("res://game/game.tscn")


func _on_btn_daily_run_pressed() -> void:
	$txt_Seed.text = Seeder.get_daily_seed()
	Seeder.set_seed($txt_Seed.text)
	_start_game()
