execute if score @s bb.fw.interact matches 1.. run function boomber:framework/trait/pencil/use
function boomber:framework/trait/pencil/mode

execute unless entity @s[nbt={SelectedItem: {tag: {ucit: {id: 'pencil', from: 'boomber:framework'}}}}] run function boomber:framework/trait/pencil/remove