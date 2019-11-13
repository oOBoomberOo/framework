execute if score #bb.fw.vertical.facing bb.calculation matches -1 run data modify entity @s BlockState.Properties.facing set value "down"
execute if score #bb.fw.vertical.facing bb.calculation matches 1 run data modify entity @s BlockState.Properties.facing set value "up"

execute if score #bb.fw.vertical.facing bb.calculation matches 0 if score #bb.fw.horizontal.facing bb.calculation matches 0 run data modify entity @s BlockState.Properties.facing set value "south"
execute if score #bb.fw.vertical.facing bb.calculation matches 0 if score #bb.fw.horizontal.facing bb.calculation matches 1 run data modify entity @s BlockState.Properties.facing set value "west"
execute if score #bb.fw.vertical.facing bb.calculation matches 0 if score #bb.fw.horizontal.facing bb.calculation matches 2 run data modify entity @s BlockState.Properties.facing set value "north"
execute if score #bb.fw.vertical.facing bb.calculation matches 0 if score #bb.fw.horizontal.facing bb.calculation matches 3 run data modify entity @s BlockState.Properties.facing set value "east"

execute unless score #bb.fw.vertical.facing bb.calculation matches 0 if data entity @s BlockState.Properties{facing: "north"} if score #bb.fw.horizontal.facing bb.calculation matches 0 run data modify entity @s BlockState.Properties.facing set value "south"
execute unless score #bb.fw.vertical.facing bb.calculation matches 0 if data entity @s BlockState.Properties{facing: "north"} if score #bb.fw.horizontal.facing bb.calculation matches 1 run data modify entity @s BlockState.Properties.facing set value "west"
execute unless score #bb.fw.vertical.facing bb.calculation matches 0 if data entity @s BlockState.Properties{facing: "north"} if score #bb.fw.horizontal.facing bb.calculation matches 2 run data modify entity @s BlockState.Properties.facing set value "north"
execute unless score #bb.fw.vertical.facing bb.calculation matches 0 if data entity @s BlockState.Properties{facing: "north"} if score #bb.fw.horizontal.facing bb.calculation matches 3 run data modify entity @s BlockState.Properties.facing set value "east"