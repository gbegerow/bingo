tellraw @a {"translate": "bingo.got_item", "with": [{"selector": "@s"}, {"translate": "item.minecraft.heart_of_the_sea", "hoverEvent": {"action": "show_item", "contents": {"id": "minecraft:heart_of_the_sea"}}}]}
execute as @e[type=minecraft:area_effect_cloud, tag=bingo_completed_item, tag=bingo_current_team, limit=1] run function bingo:item_detection/goals/announce_completed_goals
tag @s add bingo_clear_heart_of_the_sea
schedule function bingo:item_detection/clear_item/heart_of_the_sea 1