extends Node2D

@export var licTab : Node2D
@export var infTab : Node2D

var tabs : Array[Node]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	tabs = get_children(false)
	_on_button_was_clicked("null", 0)


func _on_button_was_clicked(buttonName : String, tab_index : int) -> void:
	tabs.map(
		func  (tab):
			if tab == tabs[tab_index]:
				tab.show()
			else:
				tab.hide()

			#if tab_index == 2:
				#global.sendInfo["license"] = buttonName
	)
