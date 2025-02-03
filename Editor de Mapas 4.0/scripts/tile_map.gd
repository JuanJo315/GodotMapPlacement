extends TileMap

var YellowFlower: Vector2 = Vector2(5, 3)
var WhiteFlower: Vector2 = Vector2(4, 3)
var Grass: Vector2 = Vector2(1, 1)
var Stone: Vector2 = Vector2(0, 4)
var OldStone: Vector2 = Vector2(0, 6)
var DegradedStone: Vector2 = Vector2(1, 6)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if(Input.is_action_pressed("mouse_left")): 
		# Layers, Mouse (converted to the tilemap coordinate)
		# Source ID (Tileset number), coordinates on the tileset Atlas
		# set_cell(0, local_to_map(get_global_mouse_position()), 0, Vector2(0, 4))
		
		# SetTileAtMouse(0, 0, Vector2(0, 4))
		# Now we use Variables for the tiles 
		# SetTileAtMouse(0, 0, Grass)
		
		# Now we make use of the global variable
		SetTileAtMouse(0, 0, GameManager.TileID)
		
	if(Input.is_action_pressed("mouse_right")): 
		# We can erase the tile with a -1 Vector 
		#set_cell(0, local_to_map(get_global_mouse_position()), 0, Vector2(-1, -1))
		SetTileAtMouse(0, 0, Vector2(-1, -1))

# To avoid cluttering the code we make a reusable function 
func SetTileAtMouse(Layer: int = 0, ID: int = 0, Type: Vector2 = Vector2(0, 0)):
	set_cell(Layer, local_to_map(get_global_mouse_position()), ID, Type)
