#> bingo:item_detection/items/powered_rail
#
# Triggered when the player obtains a minecraft:powered_rail
#
# @within advancement bingo:item_detection/powered_rail
# @handles advancement bingo:item_detection/powered_rail

#>
# @private
#declare score_holder $item_detect/powered_rail.success

execute store success score $item_detect/powered_rail.success bingo.tmp run data modify storage temp:bingo.input/item_detection slot set from storage bingo:card slots[{item:{id:"bingo:powered_rail"}}]
execute if score $item_detect/powered_rail.success bingo.tmp matches 1 run function bingo:item_detection/helper/check_and_announce