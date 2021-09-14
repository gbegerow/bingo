#> bingo:init/initialize_hud_components/add_to_0
#
# @within function bingo:init/initialize_hud_components/add_defaults

#>
# @private
#declare score_holder $init/hud.line
execute store result score $init/hud.line bingo.tmp run data get storage temp:bingo.init/hud columns[0]
scoreboard players add $init/hud.line bingo.tmp 5

data modify storage temp:bingo.init/hud columns[0] append from storage temp:bingo.init/hud cur
data remove storage temp:bingo.init/hud columns[0][-1].preferredColumn
data remove storage temp:bingo.init/hud columns[0][-1].addByDefault

execute store result storage temp:bingo.init/hud columns[0][-1].line byte 1 run scoreboard players get $init/hud.line bingo.tmp