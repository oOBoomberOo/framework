#> Drop appropriate item depend on `boomber.framework.block.<id>` tag
# This mean every `doormat` must contain that tag
execute if entity @s[tag=boomber.framework.block.white_wool_doormat] run loot spawn ~ ~ ~ loot boomber:framework/item/doormat/white_wool

kill @s