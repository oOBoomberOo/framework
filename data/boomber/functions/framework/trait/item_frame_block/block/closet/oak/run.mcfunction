#> This function is generated by generated by generator
execute unless block ^ ^ ^-1 #boomber:framework/closet/valid_block run function boomber:framework/trait/item_frame_block/block/closet/oak/fail
execute positioned ^ ^ ^-1 if block ~ ~ ~ #boomber:framework/closet/valid_block if entity @e[tag=boomber.framework.trait.closet, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/closet/oak/fail
execute positioned ^ ^ ^-1 if block ~ ~ ~ #boomber:framework/closet/valid_block unless entity @e[tag=boomber.framework.trait.closet, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/closet/oak/success