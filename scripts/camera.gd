extends Camera2D

enum CameraBehavior {
	FollowPlayer
}

@export var player: CharacterBody2D = null
@export var mode: CameraBehavior = CameraBehavior.FollowPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	match mode:
		CameraBehavior.FollowPlayer:
			global_position = player.global_position
			
	pass
