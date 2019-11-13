#> Should probably find a better way to this since it won't support modded blocks
execute unless block ^ ^ ^0.1 #boomber:framework/trowel/placable if block ~ ~ ~ #boomber:framework/trowel/placable unless entity @e[tag=!global.ignore, distance=..0.8] run function boomber:framework/trait/trowel.mainhand/raycast/end

execute if entity @s[distance=..5.5] if score #bb.fw.raycast bb.success matches 0 positioned ^ ^ ^0.1 run function boomber:framework/trait/trowel.mainhand/raycast/run