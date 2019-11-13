summon minecraft:item ~ ~ ~ {Tags: ['boomber.framework.trowel.mainhand.drop_item'], PickupDelay: 1s, Item: {id: "minecraft:stone", Count: 1b}}
execute as @e[type=minecraft:item, tag=boomber.framework.trowel.mainhand.drop_item] run function boomber:framework/trait/trowel.mainhand/placer/item

kill @s
scoreboard players set #bb.fw.place bb.success 0