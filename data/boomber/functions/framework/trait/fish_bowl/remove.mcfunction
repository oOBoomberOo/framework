execute if entity @s[tag=boomber.framework.block.fish_bowl.small_empty] run loot spawn ~ ~ ~ loot boomber:framework/item/fish_bowl/small_empty

kill @e[type=item, sort=nearest, limit=1, nbt={Item: {id: "minecraft:stone_button"}}]
kill @s