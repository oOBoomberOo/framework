#> Entity that have `item_frame_block` trait must have block id attach as well
#> i.e. {trait.item_frame_block, block.foo}, {trait.item_frame_block, block.bar}
execute if entity @s[tag=boomber.framework.block.candle] run function boomber:framework/trait/item_frame_block/block/candle/run
execute if entity @s[tag=boomber.framework.block.furniture_table] run function boomber:framework/trait/item_frame_block/block/furniture_table/run