const mkdirp = require('mkdirp');
const fs = require('fs');
const path = require('path');
const item_frame = require('./item_frame');
const { promisify } = require('util');

async function item_handler(item, meta) {
	const { trait, furniture_table, model } = meta;
	const { name } = item;

	console.log(`${model}: ${trait}/${name}`);

	item_frame(item, meta);
	await create_file(path.join(furniture_table, 'furniture', trait, `${name}.json`), ui_builder(item, model, trait));
	await create_file(path.join(meta.item, trait, `${name}.json`), item_builder(item, model, meta));
	return {
		auto_trait: `execute if entity @s[tag=boomber.framework.block.${trait}.${name}] run function boomber:framework/trait/item_frame_block/block/${trait}/${name}/run`,
		furniture_list: ui_preview(item, trait)
	};
}

function ui_preview(item, trait) {
	const { name, cost } = item;
	const [red, green, blue, clay] = cost;
	return {
		rolls: 1,
		entries: [
			{
				type: "minecraft:loot_table",
				name: `boomber:framework/trait/furniture_table/furniture/${trait}/${name}`
			}
		],
		conditions: [
			{
				condition: "minecraft:entity_scores",
				entity: "this",
				scores: {
					"bb.fw.red_dye": {
						"min": red,
						"max": 1000
					},
					"bb.fw.green_dye": {
						"min": green,
						"max": 1000
					},
					"bb.fw.blue_dye": {
						"min": blue,
						"max": 1000
					},
					"bb.fw.clay": {
						"min": clay,
						"max": 1000
					}
				}
			}
		]
	}
}

function ui_builder(item, model, trait) {
	const { name, cost } = item;
	const [red, green, blue, clay] = cost;
	const result = furniture_template(item.item);
	const functions = result.pools[0].entries[0].functions;
	functions.push({
		function: "minecraft:set_name",
		name: {"translate": `boomber.framework.block.${trait}.${name}`, "italic": false}
	});
	functions.push({
		function: "minecraft:set_nbt",
		tag: `{CustomModelData: ${model}, ucit: {framework: {item: 'boomber:framework/trait/furniture_table/result/${trait}/${name}', red: ${red}, green: ${green}, blue: ${blue}, clay: ${clay}}, id: 'furniture_item', from: 'boomber:framework', group: ['furniture_table/ui', 'furniture_table/selection']}}`
	});

	if (red || green || blue || clay) {
		functions.push(lore_builder(cost));
	};

	return result;
}

function item_builder(item, model, meta) {
	const { name } = item;
	const { trait } = meta;
	const result = furniture_template(meta.type);
	const functions = result.pools[0].entries[0].functions;
	functions.push({
		function: "minecraft:set_name",
		name: {translate: `boomber.framework.block.${trait}.${name}`, italic: false}
	});
	functions.push({
		"function": "minecraft:set_nbt",
		"tag": `{ucit: {id: "${trait}.${name}", from: \"boomber:framework\", group: [\"item_frame_block\"]}}`
	});
	functions.push({
		function: "minecraft:set_nbt",
		tag: `{CustomModelData: ${model}}`
	})
	functions.push({
		function: "minecraft:set_nbt",
		tag: `{EntityTag: {Tags: ['boomber.framework.block.${trait}.${name}', 'boomber.framework.trait.entity', 'boomber.framework.trait.item_frame_block'], Invulnerable: 1b, Item: {id: \"minecraft:stone\", Count: 1b}}}`
	});
	return result;
}

const write = promisify(fs.writeFile);

async function create_file(file, data) {
	const parent = path.join(file, '..');
	mkdirp.sync(parent);
	let compiled_data = data;

	if (Array.isArray(data)) {
		compiled_data = data.join('\n');
	}
	else if (typeof data === 'object') {
		compiled_data = JSON.stringify(data, null, '\t');
	}

	return await write(file, compiled_data);
}

function furniture_template(item = 'minecraft:item_frame') {
	return {
		"type": "minecraft:item",
		"pools": [
			{
				"rolls": 1,
				"entries": [
					{
						"type": "minecraft:item",
						"name": item,
						"functions": []
					}
				]
			}
		]
	}
}

function lore_builder([red, green, blue, clay]) {
	const lore = [];
	if (red)
		lore.push(lore_template('red', red))
	if (green)
		lore.push(lore_template('green', green))
	if (blue)
		lore.push(lore_template('blue', blue))
	if (clay)
		lore.push(lore_template('clay', clay, "gray"))
	return {
		function: "minecraft:set_lore",
		lore: lore
	};
}

function lore_template(name, value, color = name) {
	return [
		{"translate": `boomber.framework.ui.furniture_table.cost.${name}`, "italic": false, "color": color},
		{"text": ": ", "color": "gray"},
		{"text": value.toString(), "color": "white"}
	];
}

module.exports = {
	item_handler,
	create_file
};