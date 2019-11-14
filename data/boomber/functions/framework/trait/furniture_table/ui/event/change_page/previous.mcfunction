playsound minecraft:ui.button.click player @a[distance=..7]
execute store result score #bb.fw.page bb.calculation run data get entity @s ArmorItems[-1].tag.ucit.framework.selected_page
scoreboard players remove #bb.fw.page bb.calculation 1
execute store result entity @s ArmorItems[-1].tag.ucit.framework.selected_page int 1 run scoreboard players get #bb.fw.page bb.calculation