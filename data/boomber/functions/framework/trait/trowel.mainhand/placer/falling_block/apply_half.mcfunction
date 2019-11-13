summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ['boomber.framework.trowel.mainhand.coordinate'], Age: 0, Duration: 1}
execute store result score #bb.fw.y bb.calculation run data get entity @e[type=minecraft:area_effect_cloud, tag=boomber.framework.trowel.mainhand.coordinate, limit=1] Pos[1] 10
scoreboard players operation #bb.fw.y bb.calculation %= #10 bb.variable

execute if score #bb.fw.y bb.calculation matches 0..5 run data modify entity @s BlockState.Properties.half set value "bottom"
execute if score #bb.fw.y bb.calculation matches 6..10 run data modify entity @s BlockState.Properties.half set value "top"

kill @e[type=minecraft:area_effect_cloud, tag=boomber.framework.trowel.mainhand.coordinate]