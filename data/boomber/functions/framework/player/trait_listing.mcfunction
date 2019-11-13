#> Implement trait whenever player holding something
execute if entity @s[nbt={SelectedItem: {tag: {ucit: {id: "trowel", from: "boomber:framework"}}}}] run function boomber:framework/trait/trowel.mainhand/implement
execute if entity @s[nbt={Inventory: [{Slot: -106b, tag: {ucit: {id: "trowel", from: "boomber:framework"}}}]}] run function boomber:framework/trait/trowel.offhand/implement