extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	self.frame = 0
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN) # Se esconde el mouse al iniciar el juego
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.move_to_front()
	global_position = get_global_mouse_position() # Setea la posición del objeto Cursor a la posición del Mouse
	# Selecciona sprite del cursor si se hace click o no
	if Input.get_action_raw_strength("Click") >= 0.1: 
		self.frame = 1
	else:
		self.frame = 0
	pass
