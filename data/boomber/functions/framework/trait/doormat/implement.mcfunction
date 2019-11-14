#> Create `doormat` struct
loot replace entity @s armor.head loot boomber:framework/trait/doormat

#> Apply doormat rotation
function boomber:framework/trait/doormat/implement/rotation
#> Apply doormat model
function boomber:framework/trait/entity/implement/model

data modify entity @s Marker set value 0b
data modify entity @s DisabledSlots set value 2035471

#> Implement `doormat` trait
tag @s add boomber.framework.trait.doormat