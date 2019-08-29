tool
extends Control



# Declarations
export(int, 0, 361) var Orientation : int = 0 setget set_orientation
func set_orientation(orientation : int) -> void:
	Orientation = orientation % 360
	update()

export(bool) var CompassBearings : bool = true setget set_compass_bearings
func set_compass_bearings(visible : bool = !CompassBearings) -> void:
	CompassBearings = visible

var Waypoints : Array = []

# Core
func _process(delta) -> void: update()

func _draw() -> void:
	if CompassBearings:
		if Orientation <= 90:
			var pos = rect_size / 2
			pos.x += ((0 - Orientation) % 180) * rect_size.x / 180
			
			var char_size : Vector2 = get_font('font').get_string_size('N')
			char_size.x = char_size.x / 2
			char_size.y = -char_size.y / 2
			
			draw_char(get_font('font'), pos - char_size, 'N', '')
		elif Orientation >= 270:
			var pos = rect_size / 2
			pos.x += ((360 - Orientation) % 180) * rect_size.x / 180
			
			var char_size : Vector2 = get_font('font').get_string_size('N')
			char_size.x = char_size.x / 2
			char_size.y = -char_size.y / 2
			
			draw_char(get_font('font'), pos - char_size, 'N', '')
#	draw_circle(rect_size / 2, 3, Color.blue)
