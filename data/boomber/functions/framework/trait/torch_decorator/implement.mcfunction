#> Create `torch_decorator` struct
loot replace entity @s armor.head loot boomber:framework/trait/torch_decorator

#> Determine its shape (floor / wall)
function boomber:framework/trait/torch_decorator/implement/shape

#> Implement torch_decorator trait
tag @s add boomber.framework.trait.torch_decorator