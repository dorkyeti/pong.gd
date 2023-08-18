extends KinematicBody2D

var speed: Vector2 = Vector2(0, 300)

func _physics_process(delta: float) -> void:
	var ballPosY = get_parent().get_node('Ball').position.y
	var direction = Vector2(0, ballPosY - position.y)
	
	move_and_slide(direction)

func _physics_process_old(delta: float) -> void:
	var ballPosY = get_parent().get_node('Ball').position.y
	var operation = (position.y + ($ColorRect.rect_size.y)/2)
	var random = randf() > .5
	
	if ballPosY < operation and random:
		move_and_slide(speed * -1)
	elif ballPosY > operation and random:
		move_and_slide(speed)
