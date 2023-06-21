extends TextureRect

var playing = true

func _ready():
	$".".visible = false
#	if playing != true:
#		_phone_active_change()
#	if playing == true:
#		for i in 10:
#			$".".visible = false
#			await get_tree().create_timer(0.1).timeout
#			$".".visible = true
	pass 


func _process(_delta):
	if playing != true:
		_phone_active_change()

#		for i in 10:
#			$".".visible = true
#			await get_tree().create_timer(2).timeout
#			$".".visible = false
	pass
	
func _phone_active_change():
		$".".visible = true
		await get_tree().create_timer(1).timeout
		$".".visible = false



func _on_phone_ring_finished():
	playing = false
	$".".visible = false
	pass 
