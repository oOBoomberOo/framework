#> Drop appropriate item depend on `boomber.framework.block.<id>` tag
# This mean every `doormat` must contain that tag
execute if entity @s[tag=boomber.framework.block.doormat.white_wool] run loot spawn ~ ~ ~ loot boomber:framework/item/doormat/white_wool
execute if entity @s[tag=boomber.framework.block.doormat.creeper] run loot spawn ~ ~ ~ loot boomber:framework/item/doormat/creeper
execute if entity @s[tag=boomber.framework.block.doormat.megumin] run loot spawn ~ ~ ~ loot boomber:framework/item/doormat/megumin

kill @s