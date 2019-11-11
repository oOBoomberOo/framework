loot spawn ~ ~ ~ loot boomber:framework/item/furniture_table

kill @e[type=item, nbt={Item: {tag: {ucit: {group: ['furniture_table/ui']}}}}]
kill @e[type=item, limit=1, sort=nearest, nbt={Item: {id: "minecraft:barrel"}}]
kill @s