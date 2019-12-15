execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[tag=boomber.framework.pencil.center, distance=..0.8] run scoreboard players set #bb.fw.raycast bb.success 1

execute if score #bb.fw.raycast bb.success matches 0 run scoreboard players add #bb.fw.distance bb.variable 1
execute as @s[distance=..100] if score #bb.fw.raycast bb.success matches 0 positioned ^ ^ ^1 run function boomber:framework/trait/pencil.marker/mode/circle/distance

particle flame