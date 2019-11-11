#> Listening to event when the barrel is open (in use)
execute if block ~ ~ ~ minecraft:barrel[open=true] if score @s bb.fw.open matches 1 run function boomber:framework/trait/furniture_table/ui/event_listener/main

#> Draw once when player open the barrel
execute if block ~ ~ ~ minecraft:barrel[open=true] if score @s bb.fw.open matches 0 run function boomber:framework/trait/furniture_table/ui/event/draw

#> Storing barrel's open state
execute store success score @s bb.fw.open if block ~ ~ ~ minecraft:barrel[open=true]