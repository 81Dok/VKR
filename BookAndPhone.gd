extends Node

@onready var Telephone = $CanvasLayer/Telephone
@onready var Guidebook = $CanvasLayer/Guidebook
#@onready var LoseOr = $CanvasLayer/Control/WinorLose
var score = 0
var inst = null

var questButton = 0
var bigMiss = 0

var quest1_path = "res://Json/quest1.json"
var quest2_path = "res://Json/quest2.json"
var quest3_path = "res://Json/quest3.json"
var quest4_path = "res://Json/quest4.json"
var quest5_path = "res://Json/quest5.json"
var quest6_path = "res://Json/quest6.json"
var quest7_path = "res://Json/quest7.json"
var quest8_path = "res://Json/quest8.json"
var quest9_path = "res://Json/quest9.json"
var quest10_path = "res://Json/quest10.json"
var quest11_path = "res://Json/quest11.json"
var quest12_path = "res://Json/quest12.json"
var quest13_path = "res://Json/quest13.json"
var quest14_path = "res://Json/quest14.json"
var quest15_path = "res://Json/quest15.json"
var quest16_path = "res://Json/quest16.json"

var DialogueScene = preload("res://dialoge.tscn")
var WinOrLoseScene = preload("res://Main_menu.tscn")


var dialogue  = []
var dialogue2 = {}
var dialogue3 = {}
var dialogue4 = {}
var dialogue5 = {}
var dialogue6 = {}
var dialogue7 = {}
var dialogue8 = {}
var dialogue9 = {}
var dialogue10 = {}
var dialogue11 = {}
var dialogue12 = {}
var dialogue13 = {}
var dialogue14 = {}
var dialogue15 = {}
var dialogue16 = {}
var dialogue1 = {}

var mistake = 0
var accept = 100
var reject = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	
	$CanvasLayer/Telephone/PhoneActive.visible = false
	
	
	
	
	
		
	
	
	
	
	dialogue1 = load_json_file(quest1_path)
	dialogue2 = load_json_file(quest2_path)
	dialogue3 = load_json_file(quest3_path)
	dialogue4 = load_json_file(quest4_path)
	dialogue5 = load_json_file(quest5_path)
	dialogue6 = load_json_file(quest6_path)
	dialogue7 = load_json_file(quest7_path)
	dialogue8 = load_json_file(quest8_path)
	dialogue9 = load_json_file(quest9_path)
	dialogue10 = load_json_file(quest10_path)
	dialogue11 = load_json_file(quest11_path)
	dialogue12 = load_json_file(quest12_path)
	dialogue13 = load_json_file(quest13_path)
	dialogue14 = load_json_file(quest14_path)
	dialogue15 = load_json_file(quest15_path)
	dialogue16 = load_json_file(quest16_path)
#	if get_tree().get_root().has_node("MainMenu"):
#		$Main/MianMenu.queue_free()
	%GameSound.play()
	$CanvasLayer/Telephone.disabled = true
	await get_tree().create_timer(2).timeout
	$CanvasLayer/Telephone.disabled = false
	%PhoneRing.play()
	playing = true
	Signals._on_ekg_quest_button_1_pressed.connect(_11)
	Signals._on_ekg_quest_button_2_pressed.connect(_12)
	Signals._on_ekg_quest_button_3_pressed.connect(_13)
	Signals._on_ekg_quest_button_4_pressed.connect(_14)
	Signals._on_uzi_quest_button_1_pressed.connect(_21)
	Signals._on_uzi_quest_button_2_pressed.connect(_22)
	Signals._on_uzi_quest_button_3_pressed.connect(_23)
	Signals._on_uzi_quest_button_4_pressed.connect(_24)
	Signals._on_analiz_quest_button_1_pressed.connect(_31)
	Signals._on_analiz_quest_button_2_pressed.connect(_32)
	Signals._on_analiz_quest_button_3_pressed.connect(_33)
	Signals._on_analiz_quest_button_4_pressed.connect(_34)
	Signals._on_furniture_quest_button_1_pressed.connect(_41)
	Signals._on_furniture_quest_button_2_pressed.connect(_42)
	Signals._on_furniture_quest_button_3_pressed.connect(_43)
	Signals._on_furniture_quest_button_4_pressed.connect(_44)
	pass
	
	

	
	


func on_quest_check():
		_getDialogue()
		inst.conversation_start = "5"
		get_parent().add_child(inst)
		await get_tree().create_timer(1).timeout
		changeScore()
func _11():
	if questID == 1:
		_getDialogue()
		inst.conversation_start = "5"
		get_parent().add_child(inst)
		await get_tree().create_timer(1).timeout
		changeScore()
	if questID == 0:
		pass
	else:
		Misstake()
func _12():
	if questID == 2:
		_getDialogue()
		inst.conversation_start = "5"
		get_parent().add_child(inst)
		await get_tree().create_timer(1).timeout
		changeScore()
	if questID == 0:
		pass
	else:
		Misstake()
func _13():
	if questID == 3:
		_getDialogue()
		inst.conversation_start = "5"
		get_parent().add_child(inst)
		await get_tree().create_timer(1).timeout
		changeScore()
	if questID == 0:
		pass
	else:
		Misstake()
func _14():
	if questID == 4:
		_getDialogue()
		inst.conversation_start = "5"
		get_parent().add_child(inst)
		await get_tree().create_timer(1).timeout
		changeScore()
	if questID == 0:
		pass
	else:
		Misstake()
func _21():
	if questID == 5:
		_getDialogue()
		inst.conversation_start = "5"
		get_parent().add_child(inst)
		await get_tree().create_timer(1).timeout
		changeScore()
	if questID == 0:
		pass
	else:
		Misstake()
func _22():
	if questID == 6:
		_getDialogue()
		inst.conversation_start = "5"
		get_parent().add_child(inst)
		await get_tree().create_timer(1).timeout
		changeScore()
	if questID == 0:
		pass
	else:
		Misstake()
func _23():
	if questID == 7:
		_getDialogue()
		inst.conversation_start = "5"
		get_parent().add_child(inst)
		await get_tree().create_timer(1).timeout
		changeScore()
	if questID == 0:
		pass
	else:
		Misstake()
func _24():
	if questID == 8:
		_getDialogue()
		inst.conversation_start = "5"
		get_parent().add_child(inst)
		await get_tree().create_timer(1).timeout
		changeScore()
	if questID == 0:
		pass
	else:
		Misstake()
func _31():
	if questID == 9:
		_getDialogue()
		inst.conversation_start = "5"
		get_parent().add_child(inst)
		await get_tree().create_timer(1).timeout
		changeScore()
	if questID == 0:
		pass
	else:
		Misstake()
func _32():
	if questID == 10:
		_getDialogue()
		inst.conversation_start = "5"
		get_parent().add_child(inst)
		await get_tree().create_timer(1).timeout
		changeScore()
	if questID == 0:
		pass
	else:
		Misstake()
func _33():
	if questID == 11:
		_getDialogue()
		inst.conversation_start = "5"
		get_parent().add_child(inst)
		await get_tree().create_timer(1).timeout
		changeScore()
	if questID == 0:
		pass
	else:
		Misstake()
func _34():
	if questID == 12:
		_getDialogue()
		inst.conversation_start = "5"
		get_parent().add_child(inst)
		await get_tree().create_timer(1).timeout
		changeScore()
	if questID == 0:
		pass
	else:
		Misstake()
func _41():
	if questID == 13:
		_getDialogue()
		inst.conversation_start = "5"
		get_parent().add_child(inst)
		await get_tree().create_timer(1).timeout
		changeScore()
	if questID == 0:
		pass
	else:
		Misstake()
func _42():
	if questID == 14:
		_getDialogue()
		inst.conversation_start = "5"
		get_parent().add_child(inst)
		await get_tree().create_timer(1).timeout
		changeScore()
	if questID == 0:
		pass
	else:
		Misstake()
func _43():
	if questID == 15:
		_getDialogue()
		inst.conversation_start = "5"
		get_parent().add_child(inst)
		await get_tree().create_timer(1).timeout
		changeScore()
	if questID == 0:
		pass
	else:
		Misstake()
func _44():
	if questID == 16:
		_getDialogue()
		inst.conversation_start = "5"
		get_parent().add_child(inst)
		await get_tree().create_timer(1).timeout
		changeScore()
	if questID == 0:
		pass
	else:
		Misstake()
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if playing == true:
		$CanvasLayer/Telephone/PhoneActive.visible = false
	else:
		$CanvasLayer/Telephone/PhoneActive.visible = true
	$ScoreLabel.text = str(score)
	$ScoreLabel2.text = str(questID)
	$Misstake.text = str(mistake)
	$BigMiss.text = str(bigMiss)
	$RandomQuest.text = str(random_number)
	if Input.is_action_just_pressed("ui_cancel") and !has_node("MainMenu") and !has_node("BookTry1") and !has_node("Dialoge"):
		var scene = preload("res://Main_menu.tscn")
		var instance = scene.instantiate()
		add_child(instance)
	if score == 100:
		win()
	if mistake == 3:
		nextQuest()
		mistake = 0;
		bigMiss += 1
	if bigMiss == 3:
		lose()

func lose():
	#%LoseSound.play()
	var inst1 = WinOrLoseScene.instantiate()
	await get_tree().create_timer(1).timeout
	get_parent().add_child(inst1)
	Signals.emit_signal("lose")
	$".".queue_free()

	
func win():
	score = 1000
	var inst1 = WinOrLoseScene.instantiate()
	%WinSound.play()
	await get_tree().create_timer(1).timeout
	get_parent().add_child(inst1)
	Signals.emit_signal("win")
	$".".queue_free()
	
func Misstake():
	if mistake == 2:
		mistake = 0
		BigMisstake()
	else:
		mistake += 1
		inst = DialogueScene.instantiate()
		check_quest()
		inst.conversation_start = "2"
		get_parent().add_child(inst)
	
func BigMisstake():
	inst = DialogueScene.instantiate()
	check_quest()
	inst.conversation_start = "1"
	get_parent().add_child(inst)
	bigMiss += 1
	nextQuest()
	pass
	
func nextQuest():
	questID = 0
	mistake = 0
	first_contact = 0
	$CanvasLayer/Telephone.disabled = true
	await get_tree().create_timer(3).timeout
	$CanvasLayer/Telephone.disabled = false
	%PhoneRing.play()
	playing = true



func changeScore():
	score += 20
	nextQuest()

func _on_guidebook_pressed():
	var scene = preload("res://Book/book_try_3.tscn")
	var instance = scene.instantiate()
	add_child(instance)
	


func _on_smart_phone_pressed():
	if !has_node("MainMenu"):
		var scene = preload("res://Main_menu.tscn")
		var instance = scene.instantiate()
		add_child(instance)

var start = "0"
var NotFirst = "-1"
var _on_quest = 0
var questID = 0
var first_contact = 0
var choosenumber = 0

var numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
var last_numbers =[]


var random_number = 0

func get_random_numbers():
	if numbers.is_empty():
		numbers = last_numbers.duplicate()
		numbers.shuffle()
	random_number = numbers.pop_front()
	#if random_number == null:
	#	get_random_numbers()
	return random_number



func _random_quest():
	if questID == 0:
		randomize()
		last_numbers = numbers.duplicate()
		numbers.shuffle()
		choosenumber = get_random_numbers()


func _on_telephone_pressed():
	if questID == 0:
		randomize()
		last_numbers = numbers.duplicate()
		numbers.shuffle()
		#for i in 3:
		choosenumber = get_random_numbers()
	if choosenumber == 0:
		get_random_numbers()
	
	
	questID = choosenumber
	%PhoneRing.stop()
	playing = false
#	if questID == 0:
#		questID = choosenumber

	_getDialogue()
#	inst.conversation_start = start
	get_parent().add_child(inst)
	
func check_quest():
	if questID == 1 and first_contact == 1:
		inst.conversation_data = dialogue1
		inst.conversation_start = NotFirst
	if questID == 1 and first_contact == 0:
		inst.conversation_data = dialogue1
		first_contact += 1
		inst.conversation_start = start
	if questID == 2 and first_contact == 1:
		inst.conversation_data = dialogue2
		inst.conversation_start = NotFirst
	if questID == 2 and first_contact == 0:
		inst.conversation_data = dialogue2
		first_contact += 1
		inst.conversation_start = start
	if questID == 3 and first_contact == 1:
		inst.conversation_data = dialogue3
		inst.conversation_start = NotFirst
	if questID == 3 and first_contact == 0:
		inst.conversation_data = dialogue3
		first_contact += 1
		inst.conversation_start = start
	if questID == 4 and first_contact == 1:
		inst.conversation_data = dialogue4
		inst.conversation_start = NotFirst
	if questID == 4 and first_contact == 0:
		inst.conversation_data = dialogue4
		first_contact += 1
		inst.conversation_start = start
	if questID == 5 and first_contact == 1:
		inst.conversation_data = dialogue5
		inst.conversation_start = NotFirst
	if questID == 5 and first_contact == 0:
		inst.conversation_data = dialogue5
		first_contact += 1
		inst.conversation_start = start
	if questID == 6 and first_contact == 1:
		inst.conversation_data = dialogue6
		inst.conversation_start = NotFirst
	if questID == 6 and first_contact == 0:
		inst.conversation_data = dialogue6
		first_contact += 1
		inst.conversation_start = start
	if questID == 7 and first_contact == 1:
		inst.conversation_data = dialogue7
		inst.conversation_start = NotFirst
	if questID == 7 and first_contact == 0:
		inst.conversation_data = dialogue7
		first_contact += 1
		inst.conversation_start = start
	if questID == 8 and first_contact == 1:
		inst.conversation_data = dialogue8
		inst.conversation_start = NotFirst
	if questID == 8 and first_contact == 0:
		inst.conversation_data = dialogue8
		first_contact += 1
		inst.conversation_start = start
	if questID == 9 and first_contact == 1:
		inst.conversation_data = dialogue9
		inst.conversation_start = NotFirst
	if questID == 9 and first_contact == 0:
		inst.conversation_data = dialogue9
		first_contact += 1
		inst.conversation_start = start
	if questID == 10 and first_contact == 1:
		inst.conversation_data = dialogue10
		inst.conversation_start = NotFirst
	if questID == 10 and first_contact == 0:
		inst.conversation_data = dialogue10
		first_contact += 1
		inst.conversation_start = start
	if questID == 11 and first_contact == 1:
		inst.conversation_data = dialogue11
		inst.conversation_start = NotFirst
	if questID == 11 and first_contact == 0:
		inst.conversation_data = dialogue11
		first_contact += 1
		inst.conversation_start = start
	if questID == 12 and first_contact == 1:
		inst.conversation_data = dialogue12
		inst.conversation_start = NotFirst
	if questID == 12 and first_contact == 0:
		inst.conversation_data = dialogue12
		first_contact += 1
		inst.conversation_start = start
	if questID == 13 and first_contact == 1:
		inst.conversation_data = dialogue13
		inst.conversation_start = NotFirst
	if questID == 13 and first_contact == 0:
		inst.conversation_data = dialogue13
		first_contact += 1
		inst.conversation_start = start
	if questID == 14 and first_contact == 1:
		inst.conversation_data = dialogue14
		inst.conversation_start = NotFirst
	if questID == 14 and first_contact == 0:
		inst.conversation_data = dialogue14
		first_contact += 1
		inst.conversation_start = start
	if questID == 15 and first_contact == 1:
		inst.conversation_data = dialogue15
		inst.conversation_start = NotFirst
	if questID == 15 and first_contact == 0:
		inst.conversation_data = dialogue15
		first_contact += 1
		inst.conversation_start = start
	if questID == 16 and first_contact == 1:
		inst.conversation_data = dialogue16
		inst.conversation_start = NotFirst
	if questID == 16 and first_contact == 0:
		inst.conversation_data = dialogue16
		first_contact += 1
		inst.conversation_start = start
	
func _getDialogue():
	if inst != null:
		inst.queue_free()
	inst = DialogueScene.instantiate()
	check_quest()
	inst.quest = questID
func _on_button_pressed():
	win()
	pass # Replace with function body.

func load_json_file(filePath : String):
	if FileAccess.file_exists(filePath):
		var dataFile = FileAccess.open(filePath, FileAccess.READ)
		var parseResult = JSON.parse_string(dataFile.get_as_text())
		if parseResult is Dictionary:
			return parseResult
		else:
			print("Error reading file")
	else :
		print("File not exist")
		






var playing = true



#		for i in 10:
#			$".".visible = true
#			await get_tree().create_timer(2).timeout
#			$".".visible = false
#	pass
	
func _phone_active_change():
		$".".visible = true
		await get_tree().create_timer(1).timeout
		$".".visible = false



func _on_phone_ring_finished():
	playing = false
	$CanvasLayer/Telephone/PhoneActive.visible = false
	pass 


func _on_button_2_pressed():
	_random_quest()
	pass # Replace with function body.


func _on_button_3_pressed():
	lose()
	pass # Replace with function body.
