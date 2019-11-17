#> Fixed update run once every 5 ticks
# Should be use for update that isn't particulary important

#> Pre update
execute if entity @s[tag=boomber.framework.trait.gaming_chair] run function boomber:framework/trait/gaming_chair/fixed_update
execute if entity @s[tag=boomber.framework.trait.gaming_chair.component] run function boomber:framework/trait/gaming_chair.component/fixed_update

#> Update
execute if entity @s[tag=boomber.framework.trait.torch_decorator] run function boomber:framework/trait/torch_decorator/fixed_update
execute if entity @s[tag=boomber.framework.trait.furniture_table] run function boomber:framework/trait/furniture_table/fixed_update
execute if entity @s[tag=boomber.framework.trait.doormat] run function boomber:framework/trait/doormat/fixed_update
execute if entity @s[tag=boomber.framework.trait.fish_bowl] run function boomber:framework/trait/fish_bowl/fixed_update
execute if entity @s[tag=boomber.framework.trait.gravestone] run function boomber:framework/trait/gravestone/fixed_update
execute if entity @s[tag=boomber.framework.trait.figure] run function boomber:framework/trait/figure/fixed_update
execute if entity @s[tag=boomber.framework.trait.drawer] run function boomber:framework/trait/drawer/fixed_update
execute if entity @s[tag=boomber.framework.trait.wardrobe] run function boomber:framework/trait/wardrobe/fixed_update
execute if entity @s[tag=boomber.framework.trait.fridge] run function boomber:framework/trait/fridge/fixed_update
execute if entity @s[tag=boomber.framework.trait.kitchen_counter] run function boomber:framework/trait/kitchen_counter/fixed_update
execute if entity @s[tag=boomber.framework.trait.chair] run function boomber:framework/trait/chair/fixed_update

#> Post update
execute if entity @s[tag=boomber.framework.trait.solid_block] run function boomber:framework/trait/solid_block/fixed_update