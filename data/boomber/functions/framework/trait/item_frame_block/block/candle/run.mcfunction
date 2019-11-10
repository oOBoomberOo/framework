#> Check if there is already a torch decorator installed
execute if entity @e[tag=boomber.framework.trait.torch_decorator, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/candle/fail
execute unless entity @e[tag=boomber.framework.trait.torch_decorator, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/candle/success