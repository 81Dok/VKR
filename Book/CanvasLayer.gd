extends CanvasLayer

@onready var EKG = $Control/MarginContainer/EKG/VBoxContainer
@onready var UZI = $Control/MarginContainer/UZI/VBoxContainer2
@onready var Analizator = $Control/MarginContainer/Analizator/VBoxContainer3
@onready var FURNITURE = $Control/MarginContainer/FURNITURE/VBoxContainer4
@onready var FAQ = $Control/MarginContainer/FAQ/VBoxContainer5
@onready var on_book_close = $Control/BookClose

func _ready():
	$Control/UpBook.play()
	$ClearButton.grab_focus()
	EKG.visible = false
	UZI.visible = false
	Analizator.visible = false
	FURNITURE.visible = false
	FAQ.visible = false

func _process(_delta):
	if Input.is_action_pressed("ui_cancel"):
		$Control/DownBook.play()
		await get_tree().create_timer(0.4).timeout
		$"..".queue_free()

func _on_texture_button_pressed():
	on_book_close.visible = false
	EKG.visible = true
	UZI.visible = false
	Analizator.visible = false
	FURNITURE.visible = false
	FAQ.visible = false
	%AskSound.play()
	
func _on_texture_button_2_pressed():
	on_book_close.visible = false
	EKG.visible = false
	UZI.visible = true
	Analizator.visible = false
	FURNITURE.visible = false
	FAQ.visible = false
	%AskSound.play()
		
func _on_texture_button_3_pressed():
	on_book_close.visible = false
	EKG.visible = false
	UZI.visible = false
	Analizator.visible = true
	FURNITURE.visible = false
	FAQ.visible = false
	%AskSound.play()
		
func _on_texture_button_4_pressed():
	on_book_close.visible = false
	EKG.visible = false
	UZI.visible = false
	Analizator.visible = false
	FURNITURE.visible = true
	FAQ.visible = false
	%AskSound.play()
	
func _on_texture_button_5_pressed():
	on_book_close.visible = false
	EKG.visible = false
	UZI.visible = false
	Analizator.visible = false
	FURNITURE.visible = false
	FAQ.visible = true
	%AskSound.play()

func _on_exit_pressed():
	$Control/DownBook.play()
	await get_tree().create_timer(0.4).timeout
	$"..".queue_free()

