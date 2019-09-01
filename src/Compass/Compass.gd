tool
extends Control



# Declarations
export(int, -180, 180) var Orientation : int = 0
export(Vector2) var Bearing : Vector2 = Vector2()

var Bearings : Array = [
	Waypoint.new(true, 'N', null, Vector2(1, 0)),
	Waypoint.new(true, 'E', null, Vector2(0, 1)),
	Waypoint.new(true, 'S', null, Vector2(-1, 0)),
	Waypoint.new(true, 'W', null, Vector2(0, -1))
]
export(bool) var BearingsVisible : bool = true

var Waypoints : Array = []

# Core
func _process(delta) -> void: update()

func _draw() -> void:
	if BearingsVisible:
		for bearing in Bearings:
			var target : int = rad2deg(((bearing as Waypoint).Position - Bearing).angle())
			if target >= Orientation - 90 and target <= Orientation + 90:
				var pos = rect_size / 2
				pos.x += ((target - Orientation) % 180) * rect_size.x / 180
				
				var char_size : Vector2 = get_font('font').get_string_size((bearing as Waypoint).Title)
				char_size.x = char_size.x / 2
				char_size.y = -char_size.y / 2
				
				draw_string(get_font('font'), pos - char_size, (bearing as Waypoint).Title, '')
