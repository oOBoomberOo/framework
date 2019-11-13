#> Store player's data into scoreboard because we won't be able to access them inside `falling_block` function
execute store result score #bb.fw.rot.x bb.variable run data get entity @s Rotation[0]
execute store result score #bb.fw.rot.y bb.variable run data get entity @s Rotation[1]

scoreboard players set #bb.fw.place bb.success 1
execute align xyz positioned ~0.5 ~0.0 ~0.5 run summon minecraft:falling_block ~ ~ ~ {Tags: ['boomber.framework.trowel.mainhand.falling_sand'], Time: 1, BlockState: { Name: "minecraft:barrier", Properties: {facing: "east"} }}
execute as @e[type=minecraft:falling_block, tag=boomber.framework.trowel.mainhand.falling_sand] run function boomber:framework/trait/trowel.mainhand/placer/falling_block

execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:air run function boomber:framework/trait/barrier/create

execute positioned ~ 255 ~ run function boomber:framework/trait/trowel.mainhand/placer/trowel