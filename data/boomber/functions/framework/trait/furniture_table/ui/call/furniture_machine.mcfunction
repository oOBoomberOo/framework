data modify entity @s DeathLootTable set from storage boomber:framework/furniture_table draw_camera
scoreboard players operation @s bb.fw.red_dye = #bb.fw.red_dye bb.calculation
scoreboard players operation @s bb.fw.green_dye = #bb.fw.green_dye bb.calculation
scoreboard players operation @s bb.fw.blue_dye = #bb.fw.blue_dye bb.calculation
scoreboard players operation @s bb.fw.clay = #bb.fw.clay bb.calculation
loot spawn ~ ~ ~ kill @s
function boomber:framework/trait/entity/template/remove