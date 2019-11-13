#> Record player's current hotbar so it doesn't get delete
data modify storage boomber:framework/trowel.offhand player_hotbar set value []

data modify storage boomber:framework/trowel.offhand player_hotbar append from entity @s Inventory[{Slot: 0b}]
data modify storage boomber:framework/trowel.offhand player_hotbar append from entity @s Inventory[{Slot: 1b}]
data modify storage boomber:framework/trowel.offhand player_hotbar append from entity @s Inventory[{Slot: 2b}]
data modify storage boomber:framework/trowel.offhand player_hotbar append from entity @s Inventory[{Slot: 3b}]
data modify storage boomber:framework/trowel.offhand player_hotbar append from entity @s Inventory[{Slot: 4b}]
data modify storage boomber:framework/trowel.offhand player_hotbar append from entity @s Inventory[{Slot: 5b}]
data modify storage boomber:framework/trowel.offhand player_hotbar append from entity @s Inventory[{Slot: 6b}]
data modify storage boomber:framework/trowel.offhand player_hotbar append from entity @s Inventory[{Slot: 7b}]
data modify storage boomber:framework/trowel.offhand player_hotbar append from entity @s Inventory[{Slot: 8b}]