tool
extends Node
class_name Waypoint



# Declarations
export(bool) var Visible : bool = true
export(String) var Title : String = ''
export(Texture) var Icon : Texture

export(Vector2) var Position : Vector2 = Vector2()



# Core
func _init(visible : bool = true, title : String = '', icon = null, position : Vector2 = Vector2()):
	Visible = visible
	Title = title
	if icon is Texture: Icon = icon
	Position = position