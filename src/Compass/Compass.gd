tool
extends Control



# Declarations
export(Vector2) var Bearing : Vector2 = Vector2()

var Bearings : Array = [
	Waypoint.new(true, 'N', null, Vector2(1, 0)),
#	Waypoint.new(true, 'E', null, Vector2(0, 1)),
#	Waypoint.new(true, 'S', null, Vector2(-1, 0)),
#	Waypoint.new(true, 'W', null, Vector2(0, -1))
]
export(bool) var BearingsVisible : bool = true

var Waypoints : Array = []

# Core
func _process(delta) -> void: update()

func _draw() -> void:
	print('===')
	print(Bearing)
	print('***')
	if BearingsVisible:
		for bearing in Bearings:
			pass
#			rad2deg(Vector2(pp.z-tpos.z,pp.x-tpos.x).angle())
			print(rad2deg((Bearing - (bearing as Waypoint).Position).angle()))
#			print(rad2deg(Bearing.angle_to((bearing as Waypoint).Position)))
	print('---')
#		if Orientation <= 90:
#			var pos = rect_size / 2
#			pos.x += ((0 - Orientation) % 180) * rect_size.x / 180
#
#			var char_size : Vector2 = get_font('font').get_string_size('N')
#			char_size.x = char_size.x / 2
#			char_size.y = -char_size.y / 2
#
#			draw_char(get_font('font'), pos - char_size, 'N', '')
#		elif Orientation >= 270:
#			var pos = rect_size / 2
#			pos.x += ((360 - Orientation) % 180) * rect_size.x / 180
#
#			var char_size : Vector2 = get_font('font').get_string_size('N')
#			char_size.x = char_size.x / 2
#			char_size.y = -char_size.y / 2
#
#			draw_char(get_font('font'), pos - char_size, 'N', '')
##	draw_circle(rect_size / 2, 3, Color.blue)
