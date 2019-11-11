scoreboard players operation #bb.fw.slot bb.calculation = #bb.fw.slot bb.variable
scoreboard players operation #bb.fw.row bb.calculation = #bb.fw.slot bb.calculation
scoreboard players operation #bb.fw.row bb.calculation /= #bb.fw.col bb.config
scoreboard players operation #bb.fw.row bb.calculation *= #bb.fw.row bb.config

scoreboard players operation #bb.fw.slot bb.calculation += #bb.fw.col_offset bb.config
scoreboard players operation #bb.fw.slot bb.calculation += #bb.fw.row bb.calculation

data modify storage boomber:framework/furniture_table furniture_list append from entity @s Item
data modify storage boomber:framework/furniture_table furniture_list[-1].Slot set value 0b
execute store result storage boomber:framework/furniture_table furniture_list[-1].Slot byte 1 run scoreboard players get #bb.fw.slot bb.calculation

scoreboard players add #bb.fw.slot bb.variable 1
kill @s