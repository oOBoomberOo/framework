#> This function is generated by generated by generator
execute positioned ^ ^ ^-1 if block ~ ~ ~ #boomber:framework/doormat/should_spawn_inside if entity @e[tag=boomber.framework.trait.doormat, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/doormat/light_gray_wool/fail
execute positioned ^ ^ ^-1 if block ~ ~ ~ #boomber:framework/doormat/should_spawn_inside unless entity @e[tag=boomber.framework.trait.doormat, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/doormat/light_gray_wool/success
execute unless block ^ ^ ^-1 #boomber:framework/doormat/should_spawn_inside if entity @e[tag=boomber.framework.trait.doormat, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/doormat/light_gray_wool/fail
execute unless block ^ ^ ^-1 #boomber:framework/doormat/should_spawn_inside unless entity @e[tag=boomber.framework.trait.doormat, distance=..0.3] run function boomber:framework/trait/item_frame_block/block/doormat/light_gray_wool/success