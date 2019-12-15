execute store result score #bb.fw.pos.x bb.variable run data get entity @s Pos[0] 100
execute store result score #bb.fw.pos.y bb.variable run data get entity @s Pos[1] 100
execute store result score #bb.fw.pos.z bb.variable run data get entity @s Pos[2] 100

summon area_effect_cloud ~ ~ ~ {Tags: ['boomber.framework.pencil.marker.node']}
execute as @e[tag=boomber.framework.pencil.marker.node] run function boomber:framework/trait/pencil.marker/mode/circle/vector_builder