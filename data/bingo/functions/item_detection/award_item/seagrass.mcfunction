tellraw @a {"translate": "bingo.got_item", "with": [{"selector": "@s"}, {"translate": "block.minecraft.seagrass", "hoverEvent": {"action": "show_item", "contents": {"id": "minecraft:seagrass"}}}]}
execute as @e[type=minecraft:area_effect_cloud, tag=bingo_completed_item, tag=bingo_current_team, limit=1] run function bingo:item_detection/goals/announce_completed_goals
tag @s add bingo_clear_seagrass
schedule function bingo:item_detection/clear_item/seagrass 1