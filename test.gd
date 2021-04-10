extends Spatial


func _input(event):
	# Control animation playback speed.
	# Allow echo events.
	if Input.is_action_pressed("ui_up"):
		for node in get_children():
			if node.get("speed_scale") != null:
				node.set("speed_scale", clamp(node.get("speed_scale") + 0.1, 0.001, 4))
			if node.get("playback_speed") != null:
				node.set("playback_speed", clamp(node.get("playback_speed") + 0.1, 0.001, 4))

	if Input.is_action_pressed("ui_down"):
		for node in get_children():
			if node.get("speed_scale") != null:
				node.set("speed_scale", clamp(node.get("speed_scale") - 0.1, 0.001, 4))
			if node.get("playback_speed") != null:
				node.set("playback_speed", clamp(node.get("playback_speed") - 0.1, 0.001, 4))
