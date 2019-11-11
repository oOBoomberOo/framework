data modify storage boomber:framework/furniture_table hopper_content set value []
data modify storage boomber:framework/furniture_table hopper_content set from block ~ ~ ~ Items

execute if block ~ ~ ~ minecraft:hopper[facing=east] run setblock ~ ~ ~ minecraft:hopper[facing=east, enabled=false]
execute if block ~ ~ ~ minecraft:hopper[facing=west] run setblock ~ ~ ~ minecraft:hopper[facing=west, enabled=false]
execute if block ~ ~ ~ minecraft:hopper[facing=south] run setblock ~ ~ ~ minecraft:hopper[facing=south, enabled=false]
execute if block ~ ~ ~ minecraft:hopper[facing=north] run setblock ~ ~ ~ minecraft:hopper[facing=north, enabled=false]

data modify block ~ ~ ~ Items set from storage boomber:framework/furniture_table hopper_content
data modify block ~ ~ ~ TransferCooldown set value 20