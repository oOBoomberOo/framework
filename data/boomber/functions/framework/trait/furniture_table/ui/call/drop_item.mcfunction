summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:stone", Count: 1b}, PickupDelay: 5s, Tags: ['boomber.framework.furniture_table.ui.event.drop_item']}

execute as @e[type=minecraft:item, tag=boomber.framework.furniture_table.ui.event.drop_item] run data modify entity @s Item set from storage boomber:framework/furniture_table drop_item
execute as @e[type=minecraft:item, tag=boomber.framework.furniture_table.ui.event.drop_item] run tag @s remove boomber.framework.furniture_table.ui.event.drop_item