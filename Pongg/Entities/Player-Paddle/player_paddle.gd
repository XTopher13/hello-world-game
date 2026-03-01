extends Area2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@onready var score_manager: Control = $"../ScoreManager"

var width
var height
#var screen_pos: Vector2
var mouse_pos: Vector2 = Vector2.ZERO
var viewport_max
#var the_origin
#var offset = -200

func _ready() -> void:
	width = $CollisionShape2D.shape.extents.x * 2
	height = $CollisionShape2D.shape.extents.y * 2
	viewport_max = get_viewport().get_visible_rect().size.y
	#print(height)
	#print(global_position)
	#print(position)
	#screen_pos = get_viewport().get_canvas_transform().affine_inverse() * global_position
	#the_origin = get_global_transform_with_canvas().get_origin()
	#print("size.y:" + str(get_viewport().get_visible_rect().size.y))
	#print(the_origin)
	#print(screen_pos)

func _physics_process(_delta: float) -> void:
	# Check if mouse is on screen without has_point(mouse_pos)):
	# to allow us to adjust for height of object and allow player to
	# move mouse to right or left of screen
	if(viewport_max > mouse_pos.y and mouse_pos.y > 0): 
		#print(position)
		#if mouse_pos.y < 0: #top of the screen
		#max(offset, get_global_mouse_position().y)
		position.y = get_global_mouse_position().y  # use global mouse for moving the paddle
	else:
		pass
	mouse_pos = get_viewport().get_mouse_position() # use viewport mouse for checking if on screen
	
func _on_area_entered(area: Area2D) -> void:
	if(area is BallArea):
		score_manager.add_point()
		var new_angle = 0
		if(area.angle < 0):
			new_angle = deg_to_rad(posmod(floor(rad_to_deg(area.angle)) - 90,-180))
		else:
			new_angle = deg_to_rad(posmod(floor(rad_to_deg(area.angle)) + 90, 180))
		area.speed += 15
		print(rad_to_deg(new_angle))
		area.angle = new_angle
		
