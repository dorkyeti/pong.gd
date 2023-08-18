extends Node2D

var score_player_1: int = 0
var score_player_2: int = 0

func _on_AreaPlayer2_body_entered(body) -> void:
	if not body.is_in_group('Ball'):
		return
		
	score_player_1 += 1
	reset_game()

func _on_AreaPlayer_body_entered(body) -> void:
	if not body.is_in_group('Ball'):
		return
		
	score_player_2 += 1
	reset_game()

func reset_game():
	$"Score-Text-Left".text = str(score_player_1)
	$"Score-Text-Right".text = str(score_player_2)
	$Ball.reset = true
