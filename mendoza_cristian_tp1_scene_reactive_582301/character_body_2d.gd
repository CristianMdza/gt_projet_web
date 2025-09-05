extends CharacterBody2D

var course := false

var musique := false


func _on_btn_1_courir_toggled(toggled_on: bool) -> void:
	if toggled_on:
		$AnimatedSprite2D.play()
		print("btn1 1")
	else:
		$AnimatedSprite2D.stop()
		print("btn1 0")


func _on_btn_2_musique_toggled(toggled_on: bool) -> void:
	if toggled_on:
		$MusiqueCourir.play()
	else:
		$MusiqueCourir.stop()
	pass # Replace with function body.
	

func _input(event):
	if event.is_action_pressed("Touche C"):
		if course: 
			$AnimatedSprite2D.stop()
		else:
			$AnimatedSprite2D.play()
		
		course = !course
		pass
		
	if event.is_action_pressed("Touche M"):
		if musique: 
			$MusiqueCourir.play()
		else:
			$MusiqueCourir.stop()
		
		musique = !musique
		pass
