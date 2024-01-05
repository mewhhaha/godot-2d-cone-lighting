extends CharacterBody2D


@export var speed: float = 300.0
@onready var direction: Node2D = $direction

func _process(delta):
	direction.look_at(get_global_mouse_position())

func _physics_process(delta):
	velocity = Input.get_vector("left", "right", "up", "down") * speed 
	move_and_slide()
