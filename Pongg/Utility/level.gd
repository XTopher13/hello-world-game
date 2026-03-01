@tool
extends Node2D

var ball_scene = preload("res://Entities/Ball/ball.tscn")
var player_scene = preload("res://Entities/Player-Paddle/player_paddle.tscn")
var cpu_scene = preload("res://Entities/CPU-Paddle/computer_paddle.tscn")
var ball: Area2D
var player: Area2D
var cpu: Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var viewport_size = get_viewport().size
	var zoom = $Camera2D.zoom
	
	var edge_of_screen = viewport_size.x/zoom.x/2
	
	ball = ball_scene.instantiate()
	player = player_scene.instantiate()
	cpu = cpu_scene.instantiate()
	add_child(ball)
	add_child(player)
	add_child(cpu)
	ball.position = Vector2(-edge_of_screen + player.width/2 + ball.width/2 - 3,0)
	player.position = Vector2(-edge_of_screen + player.width/2,0)
	cpu.position = Vector2(edge_of_screen - player.width/2,0)
	
	print("ready")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
