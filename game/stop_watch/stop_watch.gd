class_name StopWatch
extends Node2D



@onready var label: Label = get_node("Label")



var is_running: bool
var _elapsed: float


func _process(delta):
	if(self.is_running):
		self._elapsed += delta
	self.label.text = self.seconds2hhmmss(_elapsed)

func stop() -> void:
	self.is_running = false
	
func start() -> void:
	self.is_running = true
	
func get_time_elaspsed() -> float:
	return self._elapsed

func get_elaspsed_string() -> String:
	return self.seconds2hhmmss(self._elapsed)

func reset() -> void:
	self._elapsed = 0
	self.is_running = false

func seconds2hhmmss(total_seconds: float) -> String:
	var seconds: float = fmod(total_seconds , 60.0)
	var minutes: int   =  int(total_seconds / 60.0) % 60
	var hours: int   =  int(total_seconds / 3600.0)
	var hhmmss_string:String = "%02d:%02d" % [minutes, seconds]
	return hhmmss_string

#func float_to_min(seconds: float) -> String:
#
## we need a variable to know how many
## minutes we have. We'll reuse time_in_seconds
## to get the seconds.
#	var time_in_minutes = 0
#
## while there is more than a minute left:
#	while seconds > 60:
#		# Add a minute and remove 60 seconds
#		time_in_minutes += 1
#		seconds -= 60
## Now we have the minutes and time_in_seconds
## is the remaining seconds.
#
#	# Finally, let's print the result in the minutes:seconds format:
#	var result_string = ""
#
#	# If there are no minutes, then add a zero, otherwise convert
#	# the minutes to a string.
#	if (time_in_minutes > 0):
#		result_string += str(time_in_minutes)
#	else:
#		result_string += "0"
#
#	# Add a colon
#	result_string += ":"
#
#	# Add the seconds directly if they are double digit.
#	# if they are not double digit, then add a zero first.
#	if (seconds > 9):
#		result_string += str(seconds)
#	else:
#		result_string += "0" + str(seconds)
#
#	# print the result
#	return (result_string)
#


