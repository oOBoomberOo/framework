const path = require('path');
const { create_file } = require('./furniture/item');

async function main(meta, kind) {
	const { furniture_table } = meta;
	const { trait, list, expandable = false, initial } = kind;
	const target_trait = expandable && initial ? `${trait}.${initial}`: trait;

	const promises = [];
	for (const item of list) {
		const name = get_name(item.id);
		const promise = item_handler({...item, name}, {...meta, target_trait});
		promises.push(promise);
	}
	const item_list = await Promise.all(promises);

	if (expandable) {
		create_file(path.join(furniture_table, 'furniture', `${target_trait}.json`), furniture_trait(list[0], target_trait));
		create_file(path.join(furniture_table, 'expand', `${target_trait}.json`), {
				type: "minecraft:item",
				pools: [	
					{
						"rolls": 1,
						"entries":[ 
							{
								"type": "minecraft:loot_table",
								"name": "boomber:framework/trait/furniture_table/expand/back"
							}
						]
					},
					...item_list
				]
		});

		return {
			auto_trait: null,
			furniture_list: {
				rolls: 1,
				entries: [
					{
						type: "minecraft:loot_table",
						name: `boomber:framework/trait/furniture_table/furniture/${target_trait}`
					}
				]
			}
		};
	}
	else {
		return {
			auto_trait: null,
			furniture_list: item_list,
		}
	}
}

async function item_handler(item, meta) {
	const { furniture_table, target_trait } = meta;
	console.log(furniture_table, target_trait);
	const { name } = item;
	await create_file(path.join(furniture_table, 'furniture', target_trait, `${name}.json`), ui_builder(item, meta))
	await create_file(path.join(furniture_table, 'result', target_trait, `${name}.json`), {
		type: "minecraft:item",
		pools: [
			{
				rolls: 1,
				entries: [
					{
						type: "minecraft:item",
						name: item.id,
						functions: [
							{
								function: "minecraft:set_count",
								count: item.count
							}
						]
					}
				]
			}
		]
	});

	return ui_preview(item, meta);
}

function ui_preview(item, meta) {
	const { name, cost } = item;
	const { target_trait } = meta;
	const [red, green, blue, clay] = cost;
	return {
		rolls: 1,
		entries: [
			{
				type: "minecraft:loot_table",
				name: `boomber:framework/trait/furniture_table/furniture/${target_trait}/${name}`
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

function ui_builder(item, meta) {
	const { target_trait } = meta;
	const { id, cost, name, count = 1 } = item;
	const [red, green, blue, clay] = cost;
	const result = furniture_template(id);
	const functions = result.pools[0].entries[0].functions;
	functions.push({
		function: "minecraft:set_nbt",
		tag: `{ucit: {framework: {item: 'boomber:framework/trait/furniture_table/result/${target_trait}/${name}', red: ${red}, green: ${green}, blue: ${blue}, clay: ${clay}}, id: 'furniture_item', from: 'boomber:framework', group: ['furniture_table/ui', 'furniture_table/selection']}}`
	});
	functions.push({
		function: "minecraft:set_count",
		count: count
	});

	if (red || green || blue || clay) {
		functions.push(lore_builder(cost));
	};

	return result;
}

function get_name(id) {
	return id.split(':')[1];
}

function furniture_trait(item, target_trait) {
	let result = furniture_template(item.id);
	let functions = result.pools[0].entries[0].functions;
	functions.push({
		function: "minecraft:set_nbt",
		tag: `{ucit: {framework: {expand: 'boomber:framework/trait/furniture_table/expand/${target_trait}'}, id: 'furniture_expandable', from: 'boomber:framework', group: ['furniture_table/ui', 'furniture_table/selection']}}`
	});
	functions.push({
		function: "minecraft:set_name",
		name: {"translate": `boomber.framework.trait.${target_trait}`, "italic": false}
	});

	return result;
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

module.exports = main;