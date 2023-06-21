extends Label
var enter = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_texture_button_pressed():
	offset_top = -30
	
	

func _on_texture_button_focus_entered():
	enter = true
	offset_top = -30


func _on_texture_button_mouse_entered():
	offset_top = -30



func _on_texture_button_focus_exited():
	offset_top = -22
	enter = false


func _on_texture_button_mouse_exited():
	if enter == true:
		offset_top = -30
	else:
		offset_top = -22
