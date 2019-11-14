const fs = require('fs');
const path = require('path');
const del = require('del');
const vanilla = require('./vanilla');
const { item_handler, create_file } = require('./furniture/item');

async function main(furniture_file, output) {
	// await del(output);
	const furniture_list = JSON.parse(fs.readFileSync(furniture_file));
	const framework = path.join(output, `loot_tables/framework`);
	const item = path.join(framework, `item`);
	const furniture_table = path.join(framework, `trait/furniture_table`);
	const functions = path.join(output, `functions/framework/trait`);
	const item_frame_block = path.join(functions, `item_frame_block`);
	const meta = { output, framework, item, furniture_table, functions, item_frame_block };

	const promises = [];
	for (const kind of furniture_list) {
		const { trait, type = 'minecraft:item_frame' } = kind;
		if (trait !== 'vanilla') {
			const promise = furniture({...meta, type}, kind);
			promises.push(promise);
		}
		else {
			vanilla(kind);
		}
	}

	const item_list = await Promise.all(promises);

	await create_file(path.join(item_frame_block, 'auto_trait.mcfunction'), [
		`#> This function is generated by generator`,
		...item_list.map(v => v.auto_trait).flat()
	]);
	await create_file(path.join(furniture_table, `furniture_list.json`), {
		type: "minecraft:item",
		pools: item_list.map(v => v.furniture_list)
	})
}

async function furniture(meta, kind) {
	const { furniture_table, functions } = meta;
	const { trait, block_model, item_model = block_model, list, step = 1 } = kind;

	const promises = [];
	for (const index in list) {
		const item = list[index];
		const model_offset = index * step;
		const model = item_model + model_offset;
		const promise = item_handler(item, {...meta, model, trait, model_offset});
		promises.push(promise);
	}
	
	create_file(path.join(functions, trait, `remove.mcfunction`), [
		`#> This function is generated by generator`,
		...list.map(({ name }) => `execute if entity @s[tag=boomber.framework.block.${trait}.${name}] run loot spawn ~ ~ ~ loot boomber:framework/item/${trait}/${name}`),
		`kill @s`
	]);

	const item_list = await Promise.all(promises);

	create_file(path.join(furniture_table, 'furniture', `${trait}.json`), furniture_trait(trait, item_model));
	create_file(path.join(furniture_table, 'expand', `${trait}.json`), {
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
			...item_list.map(v => v.furniture_list)]
	});

	return {
		auto_trait: item_list.map(v => v.auto_trait),
		furniture_list: {
			rolls: 1,
			entries: [
				{
					type: "minecraft:loot_table",
					name: `boomber:framework/trait/furniture_table/furniture/${trait}`
				}
			]
		}
	};
}

function furniture_trait(trait, model) {
	let result = furniture_template('minecraft:item_frame');
	let functions = result.pools[0].entries[0].functions;
	functions.push({
		function: "minecraft:set_nbt",
		tag: `{CustomModelData: ${model},ucit: {framework: {expand: 'boomber:framework/trait/furniture_table/expand/${trait}'}, id: 'furniture_expandable', from: 'boomber:framework', group: ['furniture_table/ui', 'furniture_table/selection']}}`
	});
	functions.push({
		function: "minecraft:set_name",
		name: {"translate": `boomber.framework.trait.${trait}`, "italic": false}
	});

	return result;
}

function furniture_template(item) {
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

module.exports = main;