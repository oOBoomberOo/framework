##########################################
#> trait gaming_chair: entity + chair {} #
##########################################
loot replace entity @s weapon.mainhand loot boomber:framework/trait/gaming_chair
data modify entity @s Pose.RightArm set value [0.0f, 0.0f, 0.0f]

execute positioned ~ ~-0.8 ~ run function boomber:framework/trait/entity/template/pig
execute as @e[type=minecraft:pig, tag=boomber.framework.template] run function boomber:framework/trait/gaming_chair/implement/template_builder

tag @s add boomber.framework.trait.gaming_chair