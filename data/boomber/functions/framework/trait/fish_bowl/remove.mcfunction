#> This function is generated by generator
execute if entity @s[tag=boomber.framework.block.fish_bowl.small_empty] run loot spawn ~ ~ ~ loot boomber:framework/item/fish_bowl/small_empty
kill @s
kill @e[type=item, sort=nearest, limit=1, distance=..1, nbt={Item: {id: "minecraft:stone_button", Count: 1b}}]