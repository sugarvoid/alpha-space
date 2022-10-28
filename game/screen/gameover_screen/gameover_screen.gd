extends Control


# TODO: Add option to copy seed to clipboard
# share on twitter or facebook....maybe
# Add daily leaderboard  


# Called when the node enters the scene tree for the first time.
func _ready():
	var unix_time = Time.get_unix_time_from_system()
	print(Time.get_date_string_from_unix_time(unix_time))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _show_leaderboard() -> void:
	pass
