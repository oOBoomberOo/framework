execute if block ~ ~ ~ minecraft:barrel[open=true] if score @s bb.fw.open matches 1 run function boomber:framework/trait/furniture_table/ui/event_listener/main
execute if block ~ ~ ~ minecraft:barrel[open=true] if score @s bb.fw.open matches 0 run function boomber:framework/trait/furniture_table/ui/event/draw

execute store success score @s bb.fw.open if block ~ ~ ~ minecraft:barrel[open=true]