extends Node3D

@onready var background_viewport: SubViewport = %BackgroundViewport
@onready var forground_viewport: SubViewport = %ForgroundViewport
@onready var background_camera: Camera3D = %BackgroundCamera
@onready var forground_camera: Camera3D = %ForgroundCamera


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	resize()


func resize() -> void:
	background_viewport.size = DisplayServer.window_get_size()
	forground_viewport.size = DisplayServer.window_get_size()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	background_camera.global_transform = GameManager.player.get_camera_point_global_transform()
	forground_camera.global_transform = GameManager.player.get_camera_point_global_transform()
	background_camera.look_at(GameManager.player.position)
	forground_camera.look_at(GameManager.player.position)
