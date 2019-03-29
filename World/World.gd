extends Node

var screenWidth = ProjectSettings.get_setting("display/window/size/width")
var screenHeight = ProjectSettings.get_setting("display/window/size/height")
const INVADER = preload("res://Invader/Invader.tscn")
var timer = null
var init_spawn_delay = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	#create and set up timer for spawn delay
	timer = Timer.new()
	timer.set_wait_time(init_spawn_delay)
	timer.connect("timeout", self, "on_timeout")
	add_child(timer)
	timer.start()


# When timer times out
func on_timeout():
	
	# spawn invader in a random location
	#TODO: set invader color
	var invader = INVADER.instance()
	var randx = floor(rand_range(1, screenWidth-1))
	invader.position = Vector2(randx, -2)
	add_child(invader)

	# set timer to random range and start timer.
	var rand_spawn_delay = rand_range(3,5)
	timer.set_wait_time(rand_spawn_delay)
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(timer.time_left)
