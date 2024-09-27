extends Node2D

@export var background : AnimatedSprite2D
@export var engine : AudioStreamPlayer2D
@export var label : RichTextLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	background.frame = 68
	background.play_backwards("default")
	if global.health == 0:
		lost()
	else:
		label.add_text(str(global.score) + " dimes into your pocket\nCases: "
		+ str(global.daySummary["rounds"].size()))
	pass # Replace with function body.
	

func lost():
	label.clear()
	
	label.add_text("YOU'RE FIRED!")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if background.frame == 60:
		engine.play()
	pass
