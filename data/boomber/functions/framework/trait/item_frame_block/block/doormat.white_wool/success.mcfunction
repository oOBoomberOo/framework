scoreboard players set #bb.fw.model_offset bb.variable 0
execute store result score #bb.fw.facing bb.variable run data get entity @s Facing

execute unless block ^ ^ ^-1 #boomber:framework/doormat/should_spawn_inside run function boomber:framework/trait/entity/template/armor_stand
execute positioned ^ ^ ^-1 if block ~ ~ ~ #boomber:framework/doormat/should_spawn_inside run function boomber:framework/trait/entity/template/armor_stand
execute as @e[type=armor_stand, tag=boomber.framework.template] run function boomber:framework/trait/item_frame_block/block/doormat.white_wool/template_builder

kill @s