extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("BotonPresionado").hide()
	get_node("BotonSeleccionado").hide()
	



func _on_Button3_mouse_entered():
	
	get_node("BotonSeleccionado").show()
	get_node("BotonPorPresionar").hide()
	



func _on_Button3_mouse_exited():
	get_node("BotonPorPresionar").show()
	get_node("BotonSeleccionado").hide()
	



func _on_Button3_button_down():
	get_node("BotonPresionado").show()
	get_node("BotonPorPresionar").hide()
	get_node("BotonSeleccionado").hide()


func _on_Button3_pressed():
	get_tree().change_scene("res://pregunta1.tscn")


func _on_Button3_button_up():
	get_node("BotonPresionado").hide()
	get_node("BotonPorPresionar").hide()
	get_node("BotonSeleccionado").show()
