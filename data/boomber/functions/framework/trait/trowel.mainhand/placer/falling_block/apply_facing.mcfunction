scoreboard players operation #bb.fw.facing bb.calculation = #bb.fw.rot.x bb.variable
scoreboard players operation #bb.fw.facing bb.calculation += #45 bb.variable
scoreboard players operation #bb.fw.facing bb.calculation /= #90 bb.variable
scoreboard players operation #bb.fw.facing bb.calculation %= #4 bb.variable

execute if score #bb.fw.facing bb.calculation matches 0 run data modify entity @s BlockState.Properties.facing set value "south"
execute if score #bb.fw.facing bb.calculation matches 1 run data modify entity @s BlockState.Properties.facing set value "west"
execute if score #bb.fw.facing bb.calculation matches 2 run data modify entity @s BlockState.Properties.facing set value "north"
execute if score #bb.fw.facing bb.calculation matches 3 run data modify entity @s BlockState.Properties.facing set value "east"