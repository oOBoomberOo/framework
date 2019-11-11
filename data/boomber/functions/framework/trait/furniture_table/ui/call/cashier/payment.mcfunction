execute store result score #bb.fw.cost.red_dye bb.variable run data get storage boomber:framework/furniture_table/cashier input.ucit.framework.red
execute store result score #bb.fw.cost.green_dye bb.variable run data get storage boomber:framework/furniture_table/cashier input.ucit.framework.green
execute store result score #bb.fw.cost.blue_dye bb.variable run data get storage boomber:framework/furniture_table/cashier input.ucit.framework.blue
execute store result score #bb.fw.cost.clay bb.variable run data get storage boomber:framework/furniture_table/cashier input.ucit.framework.clay

scoreboard players operation @s bb.fw.red_dye -= #bb.fw.cost.red_dye bb.variable
scoreboard players operation @s bb.fw.green_dye -= #bb.fw.cost.green_dye bb.variable
scoreboard players operation @s bb.fw.blue_dye -= #bb.fw.cost.blue_dye bb.variable
scoreboard players operation @s bb.fw.clay -= #bb.fw.cost.clay bb.variable

function boomber:framework/trait/furniture_table/ui/call/cashier/update_dyes