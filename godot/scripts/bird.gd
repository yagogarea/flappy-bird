extends CharacterBody2D

const JUMP_VELOCITY = -300.0

func _physics_process(delta: float) -> void:
	if Global.isStart: 
	# Add the gravity.
		if not is_on_floor():
			velocity += get_gravity() * delta

		# Handle jump.
		if Input.is_action_just_pressed("ui_accept"):
			$AudioStreamPlayer.play()
			velocity.y = JUMP_VELOCITY
			rotation = deg_to_rad(-30)

	move_and_slide()
	rotation_bird()

func rotation_bird():
	if velocity.y > 0 and rad_to_deg(rotation) < 90:
		rotation += 2 * deg_to_rad(0.75)
