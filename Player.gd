extends KinematicBody2D

var speed = 300
var direction = Vector2.ZERO

func _physics_process(delta: float) -> void:
	direction.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	move_and_slide(direction * speed)
