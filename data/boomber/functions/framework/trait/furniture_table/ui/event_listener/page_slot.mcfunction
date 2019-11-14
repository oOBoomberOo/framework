execute store result score #bb.fw.page bb.calculation run data get entity @s ArmorItems[-1].tag.ucit.framework.selected_page

execute unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 8b, tag: {ucit: {group: ["furniture/button"]}}}]} run function boomber:framework/trait/furniture_table/ui/event_listener/change_page/previous
execute unless block ~ ~ ~ minecraft:barrel{Items: [{Slot: 26b, tag: {ucit: {group: ["furniture/button"]}}}]} run function boomber:framework/trait/furniture_table/ui/event_listener/change_page/next