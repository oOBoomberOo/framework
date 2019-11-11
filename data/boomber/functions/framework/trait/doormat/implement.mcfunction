#> Create `doormat` struct
loot replace entity @s armor.head loot boomber:framework/trait/doormat

#> Apply doormat rotation
function boomber:framework/trait/doormat/implement/rotation
#> Apply doormat model
function boomber:framework/trait/doormat/implement/model

#> Implement `doormat` trait
tag @s add boomber.framework.trait.doormat