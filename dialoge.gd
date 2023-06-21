extends Control

@onready var npc_image = $CanvasLayer/DialogeBox/Portrait
@onready var npc_text = $CanvasLayer/DialogeBox/Text
@onready var npc_name = $CanvasLayer/DialogeBox/Name
#onready var player_option_box = $VBoxContainer/PlayerSelection/VBoxContainer 

var conversation_data = {}
var conversation_start = "0"
var dialog = {}
var dataID 
var dialog1 = {}

var dialog_index = 0
var finished = false
var quest = 0
var questName
var accepting = 0

func _ready():
	$CanvasLayer/ClearButton.grab_focus()
	_setup(conversation_start)


func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		$".".queue_free()
	if Input.is_action_just_pressed("ui_accept"):
#		load_dialog()
		_setup(conversation_start)
	
		

func _setup(selection):
	var data = conversation_data[selection]
	npc_text.text = data.text
	npc_image.texture = load("res://Png/"+data.image)
	npc_name.text = data.name
	if data.next == "-100":
		queue_free()
	conversation_start = data.next

	
	

#func _on_PlayerOptionButton_pressed(next):
#	if next == "-10":
#		queue_free()
#	else:
#		_setup(next)

#func load_dialog():
#
#	if dialog_index < dialog.size():
#		$CanvasLayer/DialogeBox/Name.bbcode_text = dialog[dialog_index]
#		dialog_index += 1
#		$CanvasLayer/DialogeBox/Text.bbcode_text = dialog[dialog_index]
#		dialog_index += 1
#		%Dialog.play()
#	else:
#		%Dialog.play()
#		await get_tree().create_timer(0.35).timeout
#		$".".queue_free()





func _on_texture_button_pressed():
	_setup(conversation_start)
	pass # Replace with function body.
