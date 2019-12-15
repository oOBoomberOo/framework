#> trait Entity: Main trait for all objects in datapack, must be implemented in every objects

# Run main loop of traits
execute if entity @s[tag=boomber.framework.trait.furniture_table] run function boomber:framework/trait/furniture_table/main
execute if entity @s[tag=boomber.framework.trait.barrier] run function boomber:framework/trait/barrier/main
execute if entity @s[tag=boomber.framework.trait.gaming_chair] run function boomber:framework/trait/gaming_chair/main
execute if entity @s[tag=boomber.framework.trait.pencil.marker] run function boomber:framework/trait/pencil.marker/main
execute if entity @s[tag=boomber.framework.trait.item_frame_block] align xyz positioned ~0.5 ~0.5 ~0.5 run function boomber:framework/trait/item_frame_block/main