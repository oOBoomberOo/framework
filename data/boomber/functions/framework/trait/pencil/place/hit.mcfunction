function boomber:framework/trait/entity/template/area_effect_cloud

scoreboard players operation #bb.fw.user_uid bb.variable = @s bb.fw.uid
scoreboard players operation #bb.fw.user_mode bb.variable = @s bb.fw.pc.mode
execute as @e[tag=boomber.framework.template] run function boomber:framework/trait/pencil/template_builder

scoreboard players set #bb.fw.raycast bb.success 1