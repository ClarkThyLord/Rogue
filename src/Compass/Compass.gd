tool
extends Control



# Declarations
export(int, 0, 361) var Orientation : int = 0 setget set_orientation
func set_orientation(orientation : int):
	Orientation = orientation % 360
	update()



# Core
func _process(delta): update()

func _draw():
	draw_circle(rect_size / 2, 3, Color.blue)
