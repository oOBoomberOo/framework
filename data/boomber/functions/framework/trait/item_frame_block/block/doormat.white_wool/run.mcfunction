#> Check if there already is a doormat installed
execute if entity @e[tag=boomber.framework.trait.doormat, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/doormat.white_wool/fail
execute unless entity @e[tag=boomber.framework.trait.doormat, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/doormat.white_wool/success