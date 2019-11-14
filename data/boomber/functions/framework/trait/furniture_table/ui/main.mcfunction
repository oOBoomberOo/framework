data modify storage boomber:framework/furniture_table previous_list set from entity @s ArmorItems[-1].tag.ucit.framework.history

#> Listening to event when the barrel is open (in use)
execute if block ~ ~ ~ minecraft:barrel[open=true] if score @s bb.fw.open matches 1 run function boomber:framework/trait/furniture_table/ui/event_listener/main

#> Draw once when player open the barrel
execute if block ~ ~ ~ minecraft:barrel[open=true] if score @s bb.fw.open matches 0 run function boomber:framework/trait/furniture_table/ui/event/draw

#> Storing barrel's open state
execute store success score @s bb.fw.open if block ~ ~ ~ minecraft:barrel[open=true]