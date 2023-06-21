extends ParallaxLayer

var CLOUD_SPEED = -1.5

func _ready():
	pass 



func _process(delta):
	motion_offset.x += CLOUD_SPEED * delta
