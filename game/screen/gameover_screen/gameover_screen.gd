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
	var player_time: float = snapped(PlayerData.get_time(), 0.10)
	self.lbl_time.text = str(snapped(PlayerData.get_time(), 0.1))
	
	var unix_time = Time.get_unix_time_from_system()
	print(Time.get_date_string_from_unix_time(unix_time))
	pass # Replace with function body.


func _show_leaderboard() -> void:
	pass
	
func _float_to_min(seconds: float) -> String:
	# get your time and place it in a variable. We'll use
# the variable below for an example


# we need a variable to know how many
# minutes we have. We'll reuse time_in_seconds
# to get the seconds.
	var time_in_minutes = 0

# while there is more than a minute left:
	while seconds > 60:
		# Add a minute and remove 60 seconds
		time_in_minutes += 1
		seconds -= 60
# Now we have the minutes and time_in_seconds
# is the remaining seconds.
	
	# Finally, let's print the result in the minutes:seconds format:
	var result_string = ""
	
	# If there are no minutes, then add a zero, otherwise convert
	# the minutes to a string.
	if (time_in_minutes > 0):
		result_string += str(time_in_minutes)
	else:
		result_string += "0"

	# Add a colon
	result_string += ":"

	# Add the seconds directly if they are double digit.
	# if they are not double digit, then add a zero first.
	if (seconds > 9):
		result_string += str(seconds)
	else:
		result_string += "0" + str(seconds)

	# print the result
	return (result_string)
