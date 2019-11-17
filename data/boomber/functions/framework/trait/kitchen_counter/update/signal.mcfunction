scoreboard players set #bb.fw.east bb.calculation 0
scoreboard players set #bb.fw.west bb.calculation 0
scoreboard players set #bb.fw.north bb.calculation 0
scoreboard players set #bb.fw.south bb.calculation 0

execute positioned ~1 ~ ~ store result score #bb.fw.east bb.calculation if entity @e[tag=boomber.framework.trait.kitchen_counter, distance=..0.3]
execute positioned ~-1 ~ ~ store result score #bb.fw.west bb.calculation if entity @e[tag=boomber.framework.trait.kitchen_counter, distance=..0.3]
execute positioned ~ ~ ~1 store result score #bb.fw.north bb.calculation if entity @e[tag=boomber.framework.trait.kitchen_counter, distance=..0.3]
execute positioned ~ ~ ~-1 store result score #bb.fw.south bb.calculation if entity @e[tag=boomber.framework.trait.kitchen_counter, distance=..0.3]

scoreboard players operation #bb.fw.model bb.calculation = @s bb.fw.base_model

scoreboard players operation #bb.fw.axis.x bb.calculation = #bb.fw.east bb.calculation
scoreboard players operation #bb.fw.axis.x bb.calculation -= #bb.fw.west bb.calculation
scoreboard players operation #bb.fw.axis.z bb.calculation = #bb.fw.north bb.calculation
scoreboard players operation #bb.fw.axis.z bb.calculation -= #bb.fw.south bb.calculation

scoreboard players operation #bb.fw.total_neighbor bb.calculation = #bb.fw.east bb.calculation
scoreboard players operation #bb.fw.total_neighbor bb.calculation += #bb.fw.west bb.calculation
scoreboard players operation #bb.fw.total_neighbor bb.calculation += #bb.fw.north bb.calculation
scoreboard players operation #bb.fw.total_neighbor bb.calculation += #bb.fw.south bb.calculation

particle flame ~ ~1 ~

execute if score #bb.fw.total_neighbor bb.calculation matches 1 run scoreboard players add #bb.fw.model bb.calculation 5
execute if score #bb.fw.total_neighbor bb.calculation matches 1 if score #bb.fw.east bb.calculation matches 1 run data modify entity @s Pose.Head[1] set value 0.0f
execute if score #bb.fw.total_neighbor bb.calculation matches 1 if score #bb.fw.west bb.calculation matches 1 run data modify entity @s Pose.Head[1] set value 180.0f
execute if score #bb.fw.total_neighbor bb.calculation matches 1 if score #bb.fw.north bb.calculation matches 1 run data modify entity @s Pose.Head[1] set value 90.0f
execute if score #bb.fw.total_neighbor bb.calculation matches 1 if score #bb.fw.south bb.calculation matches 1 run data modify entity @s Pose.Head[1] set value 270.0f

execute if score #bb.fw.total_neighbor bb.calculation matches 2 run scoreboard players add #bb.fw.model bb.calculation 1
execute if score #bb.fw.total_neighbor bb.calculation matches 2 if score #bb.fw.axis.x bb.calculation matches 0 run data modify entity @s Pose.Head[1] set value 90.0f
execute if score #bb.fw.total_neighbor bb.calculation matches 2 if score #bb.fw.axis.z bb.calculation matches 0 run data modify entity @s Pose.Head[1] set value 0.0f

execute if score #bb.fw.total_neighbor bb.calculation matches 2 unless score #bb.fw.axis.x bb.calculation matches 0 unless score #bb.fw.axis.z bb.calculation matches 0 run scoreboard players add #bb.fw.model bb.calculation 1
execute if score #bb.fw.total_neighbor bb.calculation matches 2 if score #bb.fw.east bb.calculation matches 1 if score #bb.fw.north bb.calculation matches 1 run data modify entity @s Pose.Head[1] set value 0.0f

# execute if score #bb.fw.total_neighbor bb.calculation matches 3 run scoreboard players add #bb.fw.model bb.calculation 2
execute if score #bb.fw.total_neighbor bb.calculation matches 4 run scoreboard players add #bb.fw.model bb.calculation 3

execute store result entity @s ArmorItems[-1].tag.CustomModelData int 1 run scoreboard players get #bb.fw.model bb.calculation