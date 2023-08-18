extends RigidBody2D

var direction: int = 1
var speed: int = 300
var reset: bool = false

func _draw() -> void:
	draw_circle(
		Vector2(0,0),
		5,
		Color(1,1,1)
	)

func _ready() -> void:
	linear_velocity.x = speed * direction

func _physics_process(delta) -> void:
	linear_velocity.x = speed * direction

func _on_Ball_body_entered(body) -> void:
	if body.is_in_group('Player'):
		direction *= -1

func _integrate_forces(state: Physics2DDirectBodyState) -> void:
	if reset:
		direction *= -1
		linear_velocity = Vector2.ZERO
		state.angular_velocity = 0.0
		state.transform.origin = Vector2(324, 188)
		reset = false
