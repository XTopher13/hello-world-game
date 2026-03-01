extends Area2D



func _on_area_entered(area: Area2D) -> void:
	if(area is BallArea):
		var new_angle = -area.angle
		#print(rad_to_deg(new_angle))
		area.angle = new_angle
		
