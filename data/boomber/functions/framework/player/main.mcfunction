function boomber:framework/player/trait_listing

execute if entity @s[tag=boomber.framework.trait.trowel.mainhand] run function boomber:framework/trait/trowel.mainhand/main
execute if entity @s[tag=boomber.framework.trait.trowel.offhand] run function boomber:framework/trait/trowel.offhand/main

#> bb.fw.interact increase whenever player use carrot_on_a_stick
# Any functions above will detect when this score increase
# But it must never set the score itself!
scoreboard players set @s bb.fw.interact 0