extends Node2D


var god = false
var bad = false

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Good").hide()
	get_node("Wrong").hide()


func _process(delta):
	if god == true:
		get_node("Good").show()
		yield(get_tree().create_timer(1), "timeout")
		get_tree().change_scene("res://pregunta2.tscn")
	if bad == true:
		get_node("Wrong").show()
		yield(get_tree().create_timer(1), "timeout")
		get_tree().change_scene("res://menu/menu.tscn")
	



func _on_on_pressed():
	god = true


func _on_bettew_pressed():
	bad = true


func _on_in2_pressed():
	bad = true




func _on_Timer_timeout():
	pass # Replace with function body.
