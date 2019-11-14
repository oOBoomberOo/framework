#> trait Entity: Main trait for all objects in datapack, must be implemented in every objects

# Run main loop of traits
execute as @s[tag=boomber.framework.trait.furniture_table] run function boomber:framework/trait/furniture_table/main
execute as @s[tag=boomber.framework.trait.barrier] run function boomber:framework/trait/barrier/main
execute as @s[tag=boomber.framework.trait.drawer] run function boomber:framework/trait/drawer/main
execute as @s[tag=boomber.framework.trait.item_frame_block] align xyz positioned ~0.5 ~0.5 ~0.5 run function boomber:framework/trait/item_frame_block/main