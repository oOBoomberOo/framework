const furniture_handler = require('./furniture.js');
const { create_file } = require('./furniture/item');

const output = '../data/boomber';
// const output = 'out';
const furniture = 'furniture_list.json';
furniture_handler(furniture, output);

let list = [
	`scoreboard players set #bb.fw.equality_test bb.success 0`
];
for (let i = 0; i < 6*3; i++) {
	let index = i + 2 + (3 * Math.floor(i / 6));

	let data = [
		`execute if score #bb.fw.equality_test bb.success matches 0 run data modify storage boomber:framework/furniture_table equality_test set value {}`,
		`execute if score #bb.fw.equality_test bb.success matches 0 run data modify storage boomber:framework/furniture_table equality_test set from block ~ ~ ~ Items[{Slot: ${index}b}]`,
		`execute if score #bb.fw.equality_test bb.success matches 0 store result score #bb.fw.equality_test bb.success run data modify storage boomber:framework/furniture_table equality_test set from storage boomber:framework/furniture_table previous_list[{Slot: ${index}b}]`,
		`execute if score #bb.fw.equality_test bb.success matches 0 if data storage boomber:framework/furniture_table equality_test.Count unless data block ~ ~ ~ Items[{Slot: ${index}b}].Count run scoreboard players set #bb.fw.equality_test bb.success 1\n`,
	];
	list.push(...data);
}

list.push(...[
	`execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.tag.ucit{id: "furniture_item"} run function boomber:framework/trait/furniture_table/ui/call/cashier/process_item`,
	`execute if score #bb.fw.equality_test bb.success matches 1.. if data storage boomber:framework/furniture_table equality_test.tag.ucit{id: "furniture_expandable"} run function boomber:framework/trait/furniture_table/ui/action/expand/item`
]);

create_file(`out/furniture_change.mcfunction`, list);