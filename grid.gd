extends Node2D

var player_loc = null
var player_direction = null
var secrets = null

var wall_map = null

var entities = null

func is_empty(location):
	return wall_map[location.y][location.x] == " "

func set_simulation(memory):
	wall_map = memory['wall_map']
	entities = memory['entities']
	player_loc = memory['player_loc']
	player_direction = memory['player_dir']
	secrets = memory['secrets']
