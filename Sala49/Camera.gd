extends Camera3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var viewportSize = get_viewport().size
	var mousePos = get_viewport().get_mouse_position()
	if mousePos.x < 10:
		position.x -= 0.5
	elif mousePos.x > viewportSize.x - 10:
		position.x += 0.5
	if mousePos.y < 10:
		position.z -= 0.5
	elif mousePos.y > viewportSize.y - 10:
		position.z += 0.5
	pass
