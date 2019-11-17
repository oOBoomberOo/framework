loot replace entity @s armor.head loot boomber:framework/trait/kitchen_counter

function boomber:framework/trait/entity/implement/model
function boomber:framework/trait/kitchen_counter/update/signal

tag @s add boomber.framework.trait.kitchen_counter

execute positioned ~1 ~ ~ as @e[tag=boomber.framework.trait.kitchen_counter, distance=..0.3] at @s run function boomber:framework/trait/kitchen_counter/update/signal
execute positioned ~-1 ~ ~ as @e[tag=boomber.framework.trait.kitchen_counter, distance=..0.3] at @s run function boomber:framework/trait/kitchen_counter/update/signal
execute positioned ~ ~ ~1 as @e[tag=boomber.framework.trait.kitchen_counter, distance=..0.3] at @s run function boomber:framework/trait/kitchen_counter/update/signal
execute positioned ~ ~ ~-1 as @e[tag=boomber.framework.trait.kitchen_counter, distance=..0.3] at @s run function boomber:framework/trait/kitchen_counter/update/signal