extends KinematicBody2D

#var screenWidth = ProjectSettings.get_setting("display/window/size/width")
var screenHeight = ProjectSettings.get_setting("display/window/size/height")
var SPEED = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y += SPEED
	#checkForGroundHit()
	
func checkForGroundHit():
	pass
	if position.y == screenHeight:
		queue_free()
		#Gameover? Health down?
