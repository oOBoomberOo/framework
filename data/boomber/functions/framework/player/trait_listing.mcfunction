#> Implement trait whenever player holding something

# Trowel
execute if entity @s[nbt={SelectedItem: {tag: {ucit: {id: "trowel", from: "boomber:framework"}}}}] run function boomber:framework/trait/trowel.mainhand/implement
execute if entity @s[nbt={Inventory: [{Slot: -106b, tag: {ucit: {id: "trowel", from: "boomber:framework"}}}]}] run function boomber:framework/trait/trowel.offhand/implement

# Pencil
execute if entity @s[nbt={SelectedItem: {tag: {ucit: {id: "pencil", from: "boomber:framework"}}}}] run function boomber:framework/trait/pencil/implement

# Gaming Chair
execute if entity @s[nbt={RootVehicle: {Entity: {Tags: ['boomber.framework.trait.gaming_chair.component']}}}] run function boomber:framework/trait/gaming_chair.sitter/implement