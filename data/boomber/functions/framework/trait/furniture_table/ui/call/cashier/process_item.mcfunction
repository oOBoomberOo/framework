data modify storage boomber:framework/furniture_table/cashier input set from storage boomber:framework/furniture_table equality_test.tag

execute positioned ~ 255 ~ run function boomber:framework/trait/entity/template/loot_table
execute as @e[type=minecraft:husk, tag=boomber.framework.template] run function boomber:framework/trait/furniture_table/ui/call/cashier/template_builder

function boomber:framework/trait/furniture_table/ui/call/cashier/payment