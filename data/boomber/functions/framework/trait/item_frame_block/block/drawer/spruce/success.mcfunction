#> This function is generated by generator
scoreboard players set #bb.fw.model_offset bb.variable 2
function boomber:framework/trait/entity/template/armor_stand
execute as @e[type=minecraft:armor_stand, tag=boomber.framework.template] run function boomber:framework/trait/item_frame_block/block/drawer/spruce/template_builder
kill @s