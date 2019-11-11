execute store result score #bb.fw.facing bb.calculation run data get entity @p Rotation[0]
scoreboard players operation #bb.fw.facing bb.calculation += #45 bb.variable
scoreboard players operation #bb.fw.facing bb.calculation /= #90 bb.variable
scoreboard players operation #bb.fw.facing bb.calculation %= #4 bb.variable

execute if score #bb.fw.facing bb.calculation matches 0 run data modify entity @s Pose.Head[1] set value 0.0f
execute if score #bb.fw.facing bb.calculation matches 1 run data modify entity @s Pose.Head[1] set value 90.0f
execute if score #bb.fw.facing bb.calculation matches 2 run data modify entity @s Pose.Head[1] set value 180.0f
execute if score #bb.fw.facing bb.calculation matches 3 run data modify entity @s Pose.Head[1] set value 270.0f