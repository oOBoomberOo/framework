#> This function is generated by generator
execute positioned ^ ^ ^-1 if block ~ ~ ~ #boomber:framework/doormat/valid_block if entity @e[tag=boomber.framework.trait.doormat, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/doormat/white_wool/fail
execute positioned ^ ^ ^-1 if block ~ ~ ~ #boomber:framework/doormat/valid_block unless entity @e[tag=boomber.framework.trait.doormat, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/doormat/white_wool/success
execute unless block ^ ^ ^-1 #boomber:framework/doormat/valid_block if entity @e[tag=boomber.framework.trait.doormat, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/doormat/white_wool/fail
execute unless block ^ ^ ^-1 #boomber:framework/doormat/valid_block unless entity @e[tag=boomber.framework.trait.doormat, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/doormat/white_wool/success