#> trait Entity: Main trait for all objects in datapack, must be implemented in every objects

# Run main loop of traits
#region
execute as @s[tag=boomber.framework.trait.torch_decorator] run function boomber:framework/trait/torch_decorator/main
execute as @s[tag=boomber.framework.trait.furniture_table] run function boomber:framework/trait/furniture_table/main
execute as @s[tag=boomber.framework.trait.doormat] run function boomber:framework/trait/doormat/main
execute as @s[tag=boomber.framework.trait.item_frame_block] align xyz positioned ~0.5 ~0.5 ~0.5 run function boomber:framework/trait/item_frame_block/main
#endregion