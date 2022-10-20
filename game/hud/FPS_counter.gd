extends Control

@onready var label_fps: Label = get_node('Label') 

func update_label(fps: float) -> void:
	self.label_fps.text = str(fps)
