#> This function is generated by generator
execute unless block ^ ^ ^-1 #boomber:framework/drawer/valid_block run function boomber:framework/trait/item_frame_block/block/drawer/spruce/fail
execute positioned ^ ^ ^-1 if block ~ ~ ~ #boomber:framework/drawer/valid_block if entity @e[tag=boomber.framework.trait.drawer, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/drawer/spruce/fail
execute positioned ^ ^ ^-1 if block ~ ~ ~ #boomber:framework/drawer/valid_block unless entity @e[tag=boomber.framework.trait.drawer, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/drawer/spruce/success