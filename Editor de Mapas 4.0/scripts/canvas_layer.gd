extends CanvasLayer

# We need a game manager so when a button is pressed it 
# changes the selected tile 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# To access the TileID on the Game Manager script 
# we make it a global variable in Project Settings > Globals

func YellowFlowerPressed() -> void:
	GameManager.TileID = Vector2(5, 3)

func WhiteFlowerPressed() -> void:
	GameManager.TileID = Vector2(4, 3)

func GrassPressed() -> void:
	GameManager.TileID = Vector2(1, 1)

func StonePressed() -> void:
	GameManager.TileID = Vector2(0, 4)

func OldStonePressed() -> void:
	GameManager.TileID = Vector2(0, 6)

func DegradedStonePressed() -> void:
	GameManager.TileID = Vector2(1, 6)
