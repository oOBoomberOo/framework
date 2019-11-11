#> Main loop function for every objects (implement `entity` trait)
execute as @e[tag=boomber.framework.trait.entity] at @s run function boomber:framework/trait/entity/main

execute as @a[tag=!global.ignore] at @s run function boomber:framework/player/main