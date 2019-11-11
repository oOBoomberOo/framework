scoreboard players set @s bb.fw.red_dye 0
scoreboard players set @s bb.fw.green_dye 0
scoreboard players set @s bb.fw.blue_dye 0

execute if block ~ ~ ~ minecraft:barrel{Items: [{Slot: 0b, id: "minecraft:red_dye"}]} store result score @s bb.fw.red_dye run data get block ~ ~ ~ Items[{Slot: 0b}].Count
execute if block ~ ~ ~ minecraft:barrel{Items: [{Slot: 9b, id: "minecraft:green_dye"}]} store result score @s bb.fw.green_dye run data get block ~ ~ ~ Items[{Slot: 9b}].Count
execute if block ~ ~ ~ minecraft:barrel{Items: [{Slot: 18b, id: "minecraft:blue_dye"}]} store result score @s bb.fw.blue_dye run data get block ~ ~ ~ Items[{Slot: 18b}].Count