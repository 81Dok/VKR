extends Control
@onready var MainMenu = $CanvasLayer/Control/TextureRect
@onready var Continue = $CanvasLayer/Control/TextureRect/VBoxContainer/Continue
@onready var NewGame = $CanvasLayer/Control/TextureRect/VBoxContainer/NewGame
@onready var Options = $CanvasLayer/Control/TextureRect/VBoxContainer/Options
@onready var Training = $CanvasLayer/Control/TextureRect/VBoxContainer/Training
@onready var Exit = $CanvasLayer/Control/TextureRect/VBoxContainer/Exit
@onready var SoundOptions = $"CanvasLayer/Control/sound options"
@onready var SoundOptionsBack = $"CanvasLayer/Control/sound options/Back"

func _ready():
	Continue.visible = false
	if get_tree().get_root().has_node("Main"):
		Continue.visible = true
		$CanvasLayer/Control/TextureRect/VBoxContainer/Continue.grab_focus()
	else:
		$CanvasLayer/Control/TextureRect/VBoxContainer/NewGame.grab_focus()
	Signals.win.connect(win1)
	Signals.lose.connect(lose1)
	
func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel") and get_tree().get_root().has_node("Main"):
		$".".queue_free()
	pass

func _on_new_game_pressed():
	%UISound.play()
	await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://Main.tscn")

func _on_continue_pressed():
		%UISound.play()
		await get_tree().create_timer(0.12).timeout
		$".".queue_free()

func _on_exit_pressed():
	%UISound.play()
	await get_tree().create_timer(0.2).timeout
	get_tree().quit()

func _on_queue_exit_pressed():
		$".".queue_free()
func _on_continue_focus_entered():
	%UISound.play()
func _on_continue_mouse_entered():
	%UISound.play()
func _on_new_game_focus_entered():
	%UISound.play()
func _on_new_game_mouse_entered():
	%UISound.play()
func _on_options_focus_entered():
	%UISound.play()
func _on_options_mouse_entered():
	%UISound.play()
func _on_training_focus_entered():
	%UISound.play()
func _on_training_mouse_entered():
	%UISound.play()
func _on_exit_focus_entered():
	%UISound.play()
func _on_exit_mouse_entered():
	%UISound.play()

func _on_options_pressed():
	SoundOptions.visible = true
	SoundOptionsBack.visible = true
	Continue.visible = false
	NewGame.visible = false
	Options.visible = false
	Training.visible = false
	Exit.visible = false

func _on_back_pressed():
	SoundOptions.visible = false
	SoundOptionsBack.visible = false
	NewGame.visible = true
	Options.visible = true
	Training.visible = true
	Exit.visible = true
	if get_tree().get_root().has_node("Main"):
		Continue.visible = true
	
func lose1():
	%LoseSound.play()
	SoundOptions.visible = false
	SoundOptionsBack.visible = false
	$CanvasLayer/Control/WinorLose.visible = true
	$CanvasLayer/Control/WinorLose/LabelLose.visible = true
	$CanvasLayer/Control/WinorLose/LabelWin.visible = false
	NewGame.visible = false
	Options.visible = false
	Training.visible = false
	Exit.visible = false
	Continue.visible = false
func win1():
	SoundOptions.visible = false
	SoundOptionsBack.visible = false
	$CanvasLayer/Control/WinorLose.visible = true
	$CanvasLayer/Control/WinorLose/LabelWin.visible = true
	$CanvasLayer/Control/WinorLose/LabelLose.visible = false
	NewGame.visible = false
	Options.visible = false
	Training.visible = false
	Exit.visible = false
	Continue.visible = false

func _on_end_button_pressed():
	get_tree().change_scene_to_file("res://Main_menu.tscn")
	$".".queue_free()
