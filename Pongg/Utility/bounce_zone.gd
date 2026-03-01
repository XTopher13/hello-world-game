extends Area2D



func _on_area_entered(area: BallArea) -> void:
	print("wall")
	var new_angle = -area.angle
	print(rad_to_deg(new_angle))
	area.angle = new_angle
	
