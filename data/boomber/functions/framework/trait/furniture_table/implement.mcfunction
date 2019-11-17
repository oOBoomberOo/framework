#> Create `furniture_table` struct
loot replace entity @s armor.head loot boomber:framework/trait/furniture_table
setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName: '{"translate": "boomber.framework.block.furniture_table"}'} destroy
scoreboard players set @s bb.fw.open 0
scoreboard players set @s bb.fw.red_dye 0
scoreboard players set @s bb.fw.green_dye 0
scoreboard players set @s bb.fw.blue_dye 0
scoreboard players set @s bb.fw.clay 0

#> Implement `furniture_table` trait
tag @s add boomber.framework.trait.furniture_table