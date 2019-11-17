execute store result score @s bb.fw.base_model run data get entity @s ArmorItems[-1].tag.CustomModelData
scoreboard players operation @s bb.fw.base_model += #bb.fw.model_offset bb.variable
execute store result entity @s ArmorItems[-1].tag.CustomModelData int 1 run scoreboard players get @s bb.fw.base_model