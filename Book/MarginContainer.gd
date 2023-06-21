extends MarginContainer


func _on_ekg_ask_button_1_pressed():
	%AskSound.play()
	if $EKG/VBoxContainer/HBoxContainer3/Label.visible == false:
		$EKG/VBoxContainer/HBoxContainer3/Label.visible = true
		$EKG/VBoxContainer/HBoxContainer3/Label2.visible = false
	else:
		$EKG/VBoxContainer/HBoxContainer3/Label.visible = false
		$EKG/VBoxContainer/HBoxContainer3/Label2.visible = true
func _on_ekg_ask_button_2_pressed():
	%AskSound.play()
	if $EKG/VBoxContainer/HBoxContainer5/Label.visible == false:
		$EKG/VBoxContainer/HBoxContainer5/Label.visible = true
		$EKG/VBoxContainer/HBoxContainer5/Label2.visible = false
	else:
		$EKG/VBoxContainer/HBoxContainer5/Label.visible = false
		$EKG/VBoxContainer/HBoxContainer5/Label2.visible = true
func _on_ekg_ask_button_3_pressed():
	%AskSound.play()
	if $EKG/VBoxContainer/HBoxContainer8/Label.visible == false:
		$EKG/VBoxContainer/HBoxContainer8/Label.visible = true
		$EKG/VBoxContainer/HBoxContainer8/Label2.visible = false
	else:
		$EKG/VBoxContainer/HBoxContainer8/Label.visible = false
		$EKG/VBoxContainer/HBoxContainer8/Label2.visible = true
func _on_ekg_ask_button_4_pressed():
	%AskSound.play()
	if $EKG/VBoxContainer/HBoxContainer9/Label.visible == false:
		$EKG/VBoxContainer/HBoxContainer9/Label.visible = true
		$EKG/VBoxContainer/HBoxContainer9/Label2.visible = false
	else:
		$EKG/VBoxContainer/HBoxContainer9/Label.visible = false
		$EKG/VBoxContainer/HBoxContainer9/Label2.visible = true
func _on_uzi_ask_button_1_pressed():
	%AskSound.play()
	if  $UZI/VBoxContainer2/HBoxContainer3/Label.visible == false:
		$UZI/VBoxContainer2/HBoxContainer3/Label.visible = true
		$UZI/VBoxContainer2/HBoxContainer3/Label2.visible = false
	else:
		$UZI/VBoxContainer2/HBoxContainer3/Label.visible = false
		$UZI/VBoxContainer2/HBoxContainer3/Label2.visible = true
func _on_uzi_ask_button_2_pressed():
	%AskSound.play()
	if  $UZI/VBoxContainer2/HBoxContainer5/Label.visible == false:
		$UZI/VBoxContainer2/HBoxContainer5/Label.visible = true
		$UZI/VBoxContainer2/HBoxContainer5/Label2.visible = false
	else:
		$UZI/VBoxContainer2/HBoxContainer5/Label.visible = false
		$UZI/VBoxContainer2/HBoxContainer5/Label2.visible = true
func _on_uzi_ask_button_3_pressed():
	%AskSound.play()
	if  $UZI/VBoxContainer2/HBoxContainer8/Label.visible == false:
		$UZI/VBoxContainer2/HBoxContainer8/Label.visible = true
		$UZI/VBoxContainer2/HBoxContainer8/Label2.visible = false
	else:
		$UZI/VBoxContainer2/HBoxContainer8/Label.visible = false
		$UZI/VBoxContainer2/HBoxContainer8/Label2.visible = true
func _on_uzi_ask_button_4_pressed():
	%AskSound.play()
	if  $UZI/VBoxContainer2/HBoxContainer9/Label.visible == false:
		$UZI/VBoxContainer2/HBoxContainer9/Label.visible = true
		$UZI/VBoxContainer2/HBoxContainer9/Label2.visible = false
	else:
		$UZI/VBoxContainer2/HBoxContainer9/Label.visible = false
		$UZI/VBoxContainer2/HBoxContainer9/Label2.visible = true
func _on_analiz_ask_button_1_pressed():
	%AskSound.play()
	if  $Analizator/VBoxContainer3/HBoxContainer3/Label.visible == false:
		$Analizator/VBoxContainer3/HBoxContainer3/Label.visible = true
		$Analizator/VBoxContainer3/HBoxContainer3/Label2.visible = false
	else:
		$Analizator/VBoxContainer3/HBoxContainer3/Label.visible = false
		$Analizator/VBoxContainer3/HBoxContainer3/Label2.visible = true
func _on_analiz_ask_button_2_pressed():
	%AskSound.play()
	if  $Analizator/VBoxContainer3/HBoxContainer5/Label.visible == false:
		$Analizator/VBoxContainer3/HBoxContainer5/Label.visible = true
		$Analizator/VBoxContainer3/HBoxContainer5/Label2.visible = false
	else:
		$Analizator/VBoxContainer3/HBoxContainer5/Label.visible = false
		$Analizator/VBoxContainer3/HBoxContainer5/Label2.visible = true
func _on_analiz_ask_button_3_pressed():
	%AskSound.play()
	if  $Analizator/VBoxContainer3/HBoxContainer8/Label.visible == false:
		$Analizator/VBoxContainer3/HBoxContainer8/Label.visible = true
		$Analizator/VBoxContainer3/HBoxContainer8/Label2.visible = false
	else:
		$Analizator/VBoxContainer3/HBoxContainer8/Label.visible = false
		$Analizator/VBoxContainer3/HBoxContainer8/Label2.visible = true
func _on_analiz_ask_button_4_pressed():
	%AskSound.play()
	if  $Analizator/VBoxContainer3/HBoxContainer9/Label.visible == false:
		$Analizator/VBoxContainer3/HBoxContainer9/Label.visible = true
		$Analizator/VBoxContainer3/HBoxContainer9/Label2.visible = false
	else:
		$Analizator/VBoxContainer3/HBoxContainer9/Label.visible = false
		$Analizator/VBoxContainer3/HBoxContainer9/Label2.visible = true
func _on_furniture_ask_button_1_pressed():
	%AskSound.play()
	if  $FURNITURE/VBoxContainer4/HBoxContainer3/Label.visible == false:
		$FURNITURE/VBoxContainer4/HBoxContainer3/Label.visible = true
		$FURNITURE/VBoxContainer4/HBoxContainer3/Label2.visible = false
	else:
		$FURNITURE/VBoxContainer4/HBoxContainer3/Label.visible = false
		$FURNITURE/VBoxContainer4/HBoxContainer3/Label2.visible = true
func _on_furniture_ask_button_2_pressed():
	%AskSound.play()
	if  $FURNITURE/VBoxContainer4/HBoxContainer5/Label.visible == false:
		$FURNITURE/VBoxContainer4/HBoxContainer5/Label.visible = true
		$FURNITURE/VBoxContainer4/HBoxContainer5/Label2.visible = false
	else:
		$FURNITURE/VBoxContainer4/HBoxContainer5/Label.visible = false
		$FURNITURE/VBoxContainer4/HBoxContainer5/Label2.visible = true
func _on_furniture_ask_button_3_pressed():
	%AskSound.play()
	if  $FURNITURE/VBoxContainer4/HBoxContainer8/Label.visible == false:
		$FURNITURE/VBoxContainer4/HBoxContainer8/Label.visible = true
		$FURNITURE/VBoxContainer4/HBoxContainer8/Label2.visible = false
	else:
		$FURNITURE/VBoxContainer4/HBoxContainer8/Label.visible = false
		$FURNITURE/VBoxContainer4/HBoxContainer8/Label2.visible = true
func _on_furniture_ask_button_4_pressed():
	%AskSound.play()
	if  $FURNITURE/VBoxContainer4/HBoxContainer9/Label.visible == false:
		$FURNITURE/VBoxContainer4/HBoxContainer9/Label.visible = true
		$FURNITURE/VBoxContainer4/HBoxContainer9/Label2.visible = false
	else:
		$FURNITURE/VBoxContainer4/HBoxContainer9/Label.visible = false
		$FURNITURE/VBoxContainer4/HBoxContainer9/Label2.visible = true
	
