@tool
extends Node
class_name SpriteWrapper
@onready var sprite_node = $Sprite2D

func _get_property_list() -> Array[Dictionary]:
	return [{
		name 		= "Texture",
		type 		= TYPE_OBJECT,
		hint 		= PROPERTY_HINT_RESOURCE_TYPE,
		hint_string = "CompressedTexture2D",
		usage 		= PROPERTY_USAGE_DEFAULT
	}]


func _get(prop:StringName) -> Variant:
	if (sprite_node != null) and (prop == "Texture"):
		return sprite_node.texture
	return null


func _set(prop:StringName, val:Variant) -> bool:
	if (sprite_node != null) and (prop == "Texture"):
		sprite_node.texture = val
		notify_property_list_changed()
		return true
	return false
