data modify entity @s Marker set value 1b
execute if entity @p[predicate=boomber:framework/player/is_sneaking, distance=..3] run data modify entity @s Marker set value 0b

execute unless data entity @s ArmorItems[-1].tag{ucit: {id: "doormat", from: "boomber:framework"}} run function boomber:framework/trait/doormat/pickup
execute if block ~ ~-1 ~ #boomber:framework/doormat/non_solid run function boomber:framework/trait/doormat/remove