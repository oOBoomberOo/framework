execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:hopper[enabled=true] run function boomber:framework/trait/furniture_table/function/hopper
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:hopper run data merge block ~ ~ ~ {TransferCooldown: 20}

function boomber:framework/trait/furniture_table/maintain
function boomber:framework/trait/furniture_table/ui/main

execute unless block ~ ~ ~ minecraft:barrel run function boomber:framework/trait/furniture_table/remove