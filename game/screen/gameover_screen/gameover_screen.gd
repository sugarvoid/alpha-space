extends Control


# TODO: Add option to copy seed to clipboard
# share on twitter or facebook....maybe
# Add daily leaderboard  
@onready var lbl_time: Label = get_node("Results/Time/lbl_time")
@onready var lbl_seed_name: Label = get_node("Results/Seed/lbl_seed_name")


func _ready():
	# set seed label
	var seed_name: String = Seeder.seed_name
	self.lbl_seed_name.text = seed_name
	
	# set time label
	var player_time: float = PlayerData.get_time()
	self.lbl_time.text = str(player_time)
	
	var unix_time = Time.get_unix_time_from_system()
	print(Time.get_date_string_from_unix_time(unix_time))
	pass # Replace with function body.


func _show_leaderboard() -> void:
	pass
