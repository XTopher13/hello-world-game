@tool
extends EditorScript

# Called when the script is executed (using file -> Run in Script Editor).
func _run():
	pass
	
func _on_area_entered(area: BallArea) -> void:
	print("entered")
	var new_angle = -area.angle
	print(rad_to_deg(new_angle))
	area.angle = new_angle
