function boomber:framework/trait/entity/template/area_effect_cloud

execute as @e[type=minecraft:area_effect_cloud, tag=boomber.framework.template] run tp @s ~ ~ ~ facing entity @p eyes
data modify entity @s Pose.Head[1] set from entity @e[type=minecraft:area_effect_cloud, tag=boomber.framework.template, limit=1] Rotation[0]

kill @e[type=minecraft:area_effect_cloud, tag=boomber.framework.template]