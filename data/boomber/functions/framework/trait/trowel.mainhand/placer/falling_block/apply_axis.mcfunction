summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ['boomber.framework.trowel.mainhand.target', 'boomber.framework.trowel.mainhand.temp'], Age: 0, Duration: 1}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ['boomber.framework.trowel.mainhand.coordinate', 'boomber.framework.trowel.mainhand.temp'], Age: 0, Duration: 1}

execute as @e[type=minecraft:area_effect_cloud, tag=boomber.framework.trowel.mainhand.coordinate] at @s run tp @s ~ ~ ~ facing entity @e[type=minecraft:area_effect_cloud, tag=boomber.framework.trowel.mainhand.target, limit=1] feet

execute store result score #bb.fw.rot.x bb.calculation run data get entity @e[type=minecraft:area_effect_cloud, tag=boomber.framework.trowel.mainhand.coordinate, limit=1] Rotation[0]
execute store result score #bb.fw.rot.y bb.calculation run data get entity @e[type=minecraft:area_effect_cloud, tag=boomber.framework.trowel.mainhand.coordinate, limit=1] Rotation[1]

scoreboard players operation #bb.fw.horizontal.facing bb.calculation = #bb.fw.rot.x bb.calculation
scoreboard players operation #bb.fw.horizontal.facing bb.calculation += #45 bb.variable
scoreboard players operation #bb.fw.horizontal.facing bb.calculation /= #90 bb.variable
scoreboard players operation #bb.fw.horizontal.facing bb.calculation %= #4 bb.variable

scoreboard players operation #bb.fw.vertical.facing bb.calculation = #bb.fw.rot.y bb.calculation
scoreboard players operation #bb.fw.vertical.facing bb.calculation += #45 bb.variable
scoreboard players operation #bb.fw.vertical.facing bb.calculation /= #90 bb.variable

execute if score #bb.fw.vertical.facing bb.calculation matches -1 run data modify entity @s BlockState.Properties.axis set value "y"
execute if score #bb.fw.vertical.facing bb.calculation matches 0 if score #bb.fw.horizontal.facing bb.calculation matches 0 run data modify entity @s BlockState.Properties.axis set value "z"
execute if score #bb.fw.vertical.facing bb.calculation matches 0 if score #bb.fw.horizontal.facing bb.calculation matches 1 run data modify entity @s BlockState.Properties.axis set value "x"
execute if score #bb.fw.vertical.facing bb.calculation matches 0 if score #bb.fw.horizontal.facing bb.calculation matches 2 run data modify entity @s BlockState.Properties.axis set value "z"
execute if score #bb.fw.vertical.facing bb.calculation matches 0 if score #bb.fw.horizontal.facing bb.calculation matches 3 run data modify entity @s BlockState.Properties.axis set value "x"
execute if score #bb.fw.vertical.facing bb.calculation matches 1 run data modify entity @s BlockState.Properties.axis set value "y"

kill @e[type=minecraft:area_effect_cloud, tag=boomber.framework.trowel.mainhand.temp]