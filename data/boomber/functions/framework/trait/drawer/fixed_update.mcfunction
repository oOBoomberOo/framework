execute if block ~ ~ ~ minecraft:barrel[open=true] if score @s bb.fw.open matches 0 run function boomber:framework/trait/drawer/event/open
execute if block ~ ~ ~ minecraft:barrel[open=false] if score @s bb.fw.open matches 1 run function boomber:framework/trait/drawer/event/close

execute store result score @s bb.fw.open if block ~ ~ ~ minecraft:barrel[open=true]

execute unless block ~ ~ ~ minecraft:barrel run function boomber:framework/trait/drawer/remove