summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:stone", Count: 1b}, PickupDelay: 0s, Tags: ['boomber.framework.trowel.offhand.drop_item']}

#> When player press 'F' trowel will move from slot `-106b` to SelectedItem
# Which mean we have a access to trowel's nbt without much work
# We can then just copy that nbt to the drop_item
#
# Of course player can also choose to move the trowel from inventory GUI directly
# I decide to warn player from doing this instead of implementing a way to handle it
# Because when player do that I CAN'T read nbt inside the trowel
# So I can't store player hotbar back anyway
data modify entity @e[type=minecraft:item, tag=boomber.framework.trowel.offhand.drop_item, limit=1] Item set from entity @s SelectedItem
replaceitem entity @s weapon.mainhand minecraft:air