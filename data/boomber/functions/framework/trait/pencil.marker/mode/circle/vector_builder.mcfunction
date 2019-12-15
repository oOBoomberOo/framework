execute store result score #bb.fw.unit.x bb.variable run data get entity @s Pos[0] 100
execute store result score #bb.fw.unit.y bb.variable run data get entity @s Pos[1] 100
execute store result score #bb.fw.unit.z bb.variable run data get entity @s Pos[2] 100

scoreboard players operation #bb.fw.direction.x bb.variable = #bb.fw.unit.x bb.variable
scoreboard players operation #bb.fw.direction.x bb.variable *= #bb.fw.distance bb.variable
scoreboard players operation #bb.fw.direction.y bb.variable = #bb.fw.unit.y bb.variable
scoreboard players operation #bb.fw.direction.y bb.variable *= #bb.fw.distance bb.variable
scoreboard players operation #bb.fw.direction.z bb.variable = #bb.fw.unit.z bb.variable
scoreboard players operation #bb.fw.direction.z bb.variable *= #bb.fw.distance bb.variable

scoreboard players operation #bb.fw.pos.x bb.variable += #bb.fw.direction.x bb.variable
scoreboard players operation #bb.fw.pos.y bb.variable += #bb.fw.direction.y bb.variable
scoreboard players operation #bb.fw.pos.z bb.variable += #bb.fw.direction.z bb.variable

execute store result entity @s Pos[0] double 0.01 run scoreboard players get #bb.fw.pos.x bb.variable
execute store result entity @s Pos[1] double 0.01 run scoreboard players get #bb.fw.pos.y bb.variable
execute store result entity @s Pos[2] double 0.01 run scoreboard players get #bb.fw.pos.z bb.variable

execute as @s at @s run function boomber:framework/trait/pencil.marker/display