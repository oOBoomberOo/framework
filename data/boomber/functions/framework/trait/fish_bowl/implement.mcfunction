setblock ~ ~ ~ minecraft:stone_button[face=floor] destroy

loot replace entity @s armor.head loot boomber:framework/trait/fish_bowl

execute store result score #bb.fw.model bb.calculation run data get entity @s ArmorItems[-1].tag.CustomModelData
scoreboard players operation #bb.fw.model bb.calculation += #bb.fw.model_offset bb.variable
execute store result entity @s ArmorItems[-1].tag.CustomModelData int 1 run scoreboard players get #bb.fw.model bb.calculation

tag @s add boomber.framework.trait.fish_bowl