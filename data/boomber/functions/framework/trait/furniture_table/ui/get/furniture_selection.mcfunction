#> Clone the slot number to prevent messing with the slot counter
scoreboard players operation #bb.fw.slot bb.calculation = #bb.fw.slot bb.variable

#> Determine row number by using this formula { row * (slot / col) }
scoreboard players operation #bb.fw.row bb.calculation = #bb.fw.slot bb.calculation
scoreboard players operation #bb.fw.row bb.calculation /= #bb.fw.col bb.config
scoreboard players operation #bb.fw.row bb.calculation *= #bb.fw.row bb.config

#> slot = col_offset + (row * (slot / col))
scoreboard players operation #bb.fw.slot bb.calculation += #bb.fw.col_offset bb.config
scoreboard players operation #bb.fw.slot bb.calculation += #bb.fw.row bb.calculation

#> Make sure all slots is within container 27 slots limit
scoreboard players operation #bb.fw.slot bb.calculation %= #27 bb.variable

scoreboard players operation #bb.fw.page bb.calculation = #bb.fw.slot bb.variable
scoreboard players operation #bb.fw.page bb.calculation %= #bb.fw.page_size bb.config

#> #bb.fw.page will hit 0 once every 18 slots (or row * col slots)
# Once that happen we will push an empty array ([]) to furniture_list
execute if score #bb.fw.page bb.calculation matches 0 run data modify storage boomber:framework/furniture_table furniture_list append value []

#> Because we're using [-1] index, we will always select the last array no matter what
# Even when we push an empty array ([]) using the previous command.
data modify storage boomber:framework/furniture_table furniture_list[-1] append from entity @s Item
#> Set slot number of current item
execute store result storage boomber:framework/furniture_table furniture_list[-1][-1].Slot byte 1 run scoreboard players get #bb.fw.slot bb.calculation

scoreboard players add #bb.fw.slot bb.variable 1
#> Remove this item from the world
# Because of this command, These items will never be able to exists in the world
kill @s