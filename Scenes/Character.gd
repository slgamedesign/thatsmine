extends Node2D

#PREFABRICADO DE PERSONAJE ALEATORIO

@export var clothes : AnimatedSprite2D
@export var face : AnimatedSprite2D
@export var hair : AnimatedSprite2D

# Se llama al ser instanciado el personaje, aleatoriza los 5 pelos, 5 caras, y 3 ropas. Además de los colores
func _ready():
	clothes.frame = randi_range(0, 2)
	face.frame = randi_range(0, 4)
	hair.frame = randi_range(0, 4)
	clothes.modulate = Color(randf_range(0.0, 1.0), randf_range(0.0, 1.0), randf_range(0.0, 1.0))
	var faceColor = Color(randf_range(33.0/255.0, 250.0/255.0), randf_range(25.0/255.0, 226.0/255.0), randf_range(21.0/255.0, 212.0/255.0))
	face.modulate = faceColor
	if hair.frame == 3:
		hair.modulate = faceColor
	else:
		hair.modulate = Color(randf_range(0.0, 1.0), randf_range(0.0, 1.0), randf_range(0.0, 1.0))
	pass # Replace with function body.


# PARA DEBUG (ALEATORIZA TODO NUEVAMENTE)
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		clothes.frame = randi_range(0, 2)
		face.frame = randi_range(0, 4)
		hair.frame = randi_range(0, 4)
		clothes.modulate = Color(randf_range(0.0, 1.0), randf_range(0.0, 1.0), randf_range(0.0, 1.0))
		var faceColor = Color(randf_range(33.0/255.0, 250.0/255.0), randf_range(25.0/255.0, 226.0/255.0), randf_range(21.0/255.0, 212.0/255.0))
		face.modulate = faceColor
		if hair.frame == 3:
			hair.modulate = faceColor
		else:
			hair.modulate = Color(randf_range(0.0, 1.0), randf_range(0.0, 1.0), randf_range(0.0, 1.0))
	pass


