extends Control

signal restartGame

sync func setPause(val, player):
	get_tree().set_pause(val)

func showMenu():
	self.visible = true
#	rpc("setPause", true, get_tree().get_network_unique_id())

func hideMenu():
	print("hide")
	self.visible = false
#	rpc("setPause", false, get_tree().get_network_unique_id())

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _on_ButtonResume_pressed():
	hideMenu()

func _on_ButtonRestart_pressed():
	emit_signal("restartGame")

func _on_ButtonMenu_pressed():
	get_tree().change_scene("res://lobby.tscn")

func _on_ButtonQuit_pressed():
	get_tree().quit()


func _on_Settings_pressed():
	pass # replace with function body
	get_tree().get_root().get_node("Control/menu/Settings").show()