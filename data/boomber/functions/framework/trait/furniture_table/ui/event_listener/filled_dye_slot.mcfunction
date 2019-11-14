#> Set default score incase no items were found
scoreboard players set #bb.fw.red_dye bb.calculation 0
scoreboard players set #bb.fw.green_dye bb.calculation 0
scoreboard players set #bb.fw.blue_dye bb.calculation 0
scoreboard players set #bb.fw.clay bb.calculation 0

#> Get dyes value (Count)
execute if block ~ ~ ~ minecraft:barrel{Items: [{Slot: 0b, id: "minecraft:red_dye"}]} store result score #bb.fw.red_dye bb.calculation run data get block ~ ~ ~ Items[{Slot: 0b}].Count
execute if block ~ ~ ~ minecraft:barrel{Items: [{Slot: 9b, id: "minecraft:green_dye"}]} store result score #bb.fw.green_dye bb.calculation run data get block ~ ~ ~ Items[{Slot: 9b}].Count
execute if block ~ ~ ~ minecraft:barrel{Items: [{Slot: 18b, id: "minecraft:blue_dye"}]} store result score #bb.fw.blue_dye bb.calculation run data get block ~ ~ ~ Items[{Slot: 18b}].Count
execute if block ~ ~ ~ minecraft:barrel{Items: [{Slot: 17b, id: "minecraft:clay_ball"}]} store result score #bb.fw.clay bb.calculation run data get block ~ ~ ~ Items[{Slot: 17b}].Count

#> Compare to the actual dyes value, if false then it should be redraw
# execute unless score @s bb.fw.red_dye = #bb.fw.red_dye bb.calculation run scoreboard players add #bb.fw.should_draw bb.success 1
# execute unless score @s bb.fw.green_dye = #bb.fw.green_dye bb.calculation run scoreboard players add #bb.fw.should_draw bb.success 1
# execute unless score @s bb.fw.blue_dye = #bb.fw.blue_dye bb.calculation run scoreboard players add #bb.fw.should_draw bb.success 1
# execute unless score @s bb.fw.clay = #bb.fw.clay bb.calculation run scoreboard players add #bb.fw.should_draw bb.success 1
execute unless score @s bb.fw.red_dye = #bb.fw.red_dye bb.calculation run function boomber:framework/trait/furniture_table/ui/event/interact/add
execute unless score @s bb.fw.green_dye = #bb.fw.green_dye bb.calculation run function boomber:framework/trait/furniture_table/ui/event/interact/add
execute unless score @s bb.fw.blue_dye = #bb.fw.blue_dye bb.calculation run function boomber:framework/trait/furniture_table/ui/event/interact/add
execute unless score @s bb.fw.clay = #bb.fw.clay bb.calculation run function boomber:framework/trait/furniture_table/ui/event/interact/add