scoreboard players set #bb.fw.model_offset bb.variable 2
execute store result score #bb.fw.facing bb.variable run data get entity @s Facing

#> Check if doormat can be spawn inside a block behind item frame
execute unless block ^ ^ ^-1 #boomber:framework/doormat/should_spawn_inside run function boomber:framework/trait/entity/template/armor_stand
execute positioned ^ ^ ^-1 if block ~ ~ ~ #boomber:framework/doormat/should_spawn_inside run function boomber:framework/trait/entity/template/armor_stand

execute as @e[type=armor_stand, tag=boomber.framework.template] run function boomber:framework/trait/item_frame_block/block/doormat.creeper/template_builder

kill @s