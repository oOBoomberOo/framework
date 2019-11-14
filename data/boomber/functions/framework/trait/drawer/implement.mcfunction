setblock ~ ~ ~ minecraft:barrel{CustomName: '{"translate": "boomber.framework.block.drawer.oak"}'} destroy
loot replace entity @s armor.head loot boomber:framework/trait/drawer

function boomber:framework/trait/entity/implement/model

tag @s add boomber.framework.trait.drawer