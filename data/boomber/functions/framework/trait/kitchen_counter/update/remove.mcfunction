function boomber:framework/trait/kitchen_counter/remove

execute positioned ~1 ~ ~ as @e[tag=boomber.framework.trait.kitchen_counter, distance=..0.3] at @s run function boomber:framework/trait/kitchen_counter/update/signal
execute positioned ~-1 ~ ~ as @e[tag=boomber.framework.trait.kitchen_counter, distance=..0.3] at @s run function boomber:framework/trait/kitchen_counter/update/signal
execute positioned ~ ~ ~1 as @e[tag=boomber.framework.trait.kitchen_counter, distance=..0.3] at @s run function boomber:framework/trait/kitchen_counter/update/signal
execute positioned ~ ~ ~-1 as @e[tag=boomber.framework.trait.kitchen_counter, distance=..0.3] at @s run function boomber:framework/trait/kitchen_counter/update/signal