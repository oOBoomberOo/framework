summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:stone", Count: 1b}, PickupDelay: 0s, Tags: ['boomber.framework.doormat.event.drop_item']}
data modify entity @e[type=minecraft:item, tag=boomber.framework.doormat.event.drop_item, limit=1] Item set from entity @s ArmorItems[-1]
tag @e[type=minecraft:item, tag=boomber.framework.doormat.event.drop_item] remove boomber.framework.doormat.event.drop_item

clear @a[distance=..7] minecraft:structure_void{ucit: {id: "doormat", from: "boomber:framework"}}
function boomber:framework/trait/doormat/remove