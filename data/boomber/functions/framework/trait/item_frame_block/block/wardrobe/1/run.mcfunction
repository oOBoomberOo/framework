#> This function is generated by generator
execute unless block ^ ^ ^-1 #boomber:framework/wardrobe/valid_block run function boomber:framework/trait/item_frame_block/block/wardrobe/1/fail
execute positioned ^ ^ ^-1 if block ~ ~ ~ #boomber:framework/wardrobe/valid_block if entity @e[tag=boomber.framework.trait.wardrobe, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/wardrobe/1/fail
execute positioned ^ ^ ^-1 if block ~ ~ ~ #boomber:framework/wardrobe/valid_block unless entity @e[tag=boomber.framework.trait.wardrobe, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/wardrobe/1/success