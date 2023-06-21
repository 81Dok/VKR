extends Control

var dialog = {}
var dialog2 = 3
var quest = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	dialog = ("dialog" + str(quest))
	$Label.text = dialog
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
