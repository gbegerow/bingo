#> bingo:game/start/locate_spawnpoint
#
# Moves players to the spawnpoint
#
# @within
# 	function bingo:game/start/initialize_game_start
# 	function bingo:card_generation/generate_card

#>
# Spawnpoint x coordinate
# @within function bingo:game/start/**
#declare score_holder $game/start.spawnx
#>
# Spawnpoint z coordinate
# @within function bingo:game/start/**
#declare score_holder $game/start.spawnz
#>
# Tag used for the aec which is moved to the random spawn coordinates
# @private
#declare tag bingo.spawn_position

execute if score $game_state bingo.state matches 1 run tellraw @a "Preparing Spawn..."

gamerule doDaylightCycle false
time set 0

# Spawn x: $result & 0xFFFF (signed)
execute store result score $game/start.spawnx bingo.tmp run data get storage bingo:card spawnLocation
scoreboard players operation $game/start.spawnx bingo.tmp %= 65536 bingo.const
execute if score $game/start.spawnx bingo.tmp matches 32768.. run scoreboard players remove $game/start.spawnx bingo.tmp 65536

#Spawn z: $result >> 16
execute store result score $game/start.spawnz bingo.tmp run data get storage bingo:card spawnLocation
scoreboard players operation $game/start.spawnz bingo.tmp /= 65536 bingo.const

execute if score $pregen_status bingo.state matches 0 in bingo:multi_noise run function bingo:game/start/move_x/0