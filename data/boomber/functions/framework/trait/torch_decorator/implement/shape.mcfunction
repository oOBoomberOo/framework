#> Model calculator
scoreboard players set #bb.fw.model bb.variable 8080000
scoreboard players operation #bb.fw.model bb.variable += #bb.fw.model_offset bb.variable

execute if block ~ ~ ~ #boomber:framework/torch_decorator/wall run function boomber:framework/trait/torch_decorator/implement/wall

execute store result entity @s ArmorItems[-1].tag.CustomModelData int 1 run scoreboard players get #bb.fw.model bb.variable