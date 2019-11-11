#> Drop appropriate item depend on `boomber.framework.block.<id>` tag
# This mean every `torch_decorator` must contain that tag
execute if entity @s[tag=boomber.framework.block.candle] run loot spawn ~ ~ ~ loot boomber:framework/item/torch_decorator/candle

kill @s