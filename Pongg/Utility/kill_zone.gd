class_name KillZone
extends Area2D


@onready var timer: Timer = $Timer

func _on_area_entered(area: Area2D) -> void:
	if(area is BallArea):
		print("dead")
		print("high score: " + str(GameState.high_score))
		print("current score: " + str(GameState.current_score))
		if(GameState.high_score < GameState.current_score):
			GameState.high_score = GameState.current_score
		timer.start()



func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	GameState.current_score = 0
	GameState.is_in_menu = true
	get_tree().reload_current_scene()
