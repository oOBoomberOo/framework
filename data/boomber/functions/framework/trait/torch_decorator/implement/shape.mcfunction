#> Model calculator
execute store result score #bb.fw.model bb.calculation run data get entity @s ArmorItems[-1].tag.CustomModelData
scoreboard players operation #bb.fw.model bb.calculation += #bb.fw.model_offset bb.variable

execute if block ~ ~ ~ #boomber:framework/torch_decorator/wall run function boomber:framework/trait/torch_decorator/implement/wall

execute store result entity @s ArmorItems[-1].tag.CustomModelData int 1 run scoreboard players get #bb.fw.model bb.calculation