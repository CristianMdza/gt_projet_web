extends CharacterBody2D

var saut := false

var bruit := false


func _on_btn_3_saut_toggled(toggled_on: bool) -> void:
	if toggled_on:
		$AnimatedSprite2D.play()
		print("btn3 1")
	else:
		$AnimatedSprite2D.stop()
		print("btn3 0")


func _on_btn_4_bruit_toggled(toggled_on: bool) -> void:
	if toggled_on:
		$BruitGrenouille.play()
	else:
		$BruitGrenouille.stop()
	pass # Replace with function body.
	
func _input(event):
	if event.is_action_pressed("Touche S"):
		if saut: 
			$AnimatedSprite2D.stop()
		else:
			$AnimatedSprite2D.play()
		
		saut = !saut
		pass
		
	if event.is_action_pressed("Touche B"):
		if bruit: 
			$BruitGrenouille.play()
		else:
			$BruitGrenouille.stop()
		
		bruit = !bruit
		pass
