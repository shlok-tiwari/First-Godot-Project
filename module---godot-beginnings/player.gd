extends CharacterBody2D

const WALKING_SPEED: float = 120.0

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	velocity = Vector2.ZERO
	if (Input.is_action_pressed("Up")):
		velocity.y = -WALKING_SPEED
	if (Input.is_action_pressed("Down")):
		velocity.y = WALKING_SPEED
	if (Input.is_action_pressed("Left")):
		velocity.x = -WALKING_SPEED
	if (Input.is_action_pressed("Right")):
		velocity.x = WALKING_SPEED
	move_and_slide()
