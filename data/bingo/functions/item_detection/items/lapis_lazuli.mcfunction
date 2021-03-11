#> bingo:item_detection/items/lapis_lazuli
#
# Triggered when the player obtains a minecraft:lapis_lazuli
#
# @within advancement bingo:item_detection/lapis_lazuli
# @handles advancement bingo:item_detection/lapis_lazuli

#>
# @private
#declare score_holder $item_detect/lapis_lazuli.success

execute store success score $item_detect/lapis_lazuli.success bingo.tmp run data modify storage temp:bingo.input/item_detection slot set from storage bingo:card slots[{item:{id:"bingo:lapis_lazuli"}}]
execute if score $item_detect/lapis_lazuli.success bingo.tmp matches 1 run function bingo:item_detection/helper/check_and_announce