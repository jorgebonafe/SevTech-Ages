import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;

import scripts.crafttweaker.stages.stagePreOpenComputers;
import scripts.crafttweaker.stages.stageOpenComputers;

static stagedItems as IIngredient[][string] = {
	stagePreOpenComputers.stage: [
		<opencomputers:tool:4>
	],
	stageOpenComputers.stage: [
		<opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "plan9k"}, "oc:color": 1, display: {Name: "Plan9k (Operating System)"}, "oc:lootFactory": "opencomputers:plan9k"}),
		<opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "network"}, "oc:color": 10, display: {Name: "Network (Network Stack)"}, "oc:lootFactory": "opencomputers:network"}),
		<opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "openos"}, "oc:color": 2, display: {Name: "OpenOS (Operating System)"}, "oc:lootFactory": "opencomputers:openos"}),
		<opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "data"}, "oc:color": 9, display: {Name: "Data Card Software"}, "oc:lootFactory": "opencomputers:data"}),
		<opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "openloader"}, "oc:color": 13, display: {Name: "OpenLoader (Boot Loader)"}, "oc:lootFactory": "opencomputers:openloader"}),
		<opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "builder"}, "oc:color": 11, display: {Name: "Builder"}, "oc:lootFactory": "opencomputers:builder"}),
		<opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "generator"}, "oc:color": 5, display: {Name: "Generator Upgrade Software"}, "oc:lootFactory": "opencomputers:generator"}),
		<opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "oppm"}, "oc:color": 6, display: {Name: "OPPM (Package Manager)"}, "oc:lootFactory": "opencomputers:oppm"}),
		<opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "dig"}, "oc:color": 3, display: {Name: "Digger"}, "oc:lootFactory": "opencomputers:dig"}),
		<opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "maze"}, "oc:color": 14, display: {Name: "Mazer"}, "oc:lootFactory": "opencomputers:maze"}),
		<opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "irc"}, "oc:color": 12, display: {Name: "OpenIRC (IRC Client)"}, "oc:lootFactory": "opencomputers:irc"}),
 		<opencomputers:card:5>
	]	
};

function init() {
	var modId as string = stagedItems.entrySet[0].value[0].items[0].definition.owner;

	var modStage as string = scripts.crafttweaker.staging.itemsAndRecipes.modId.containsMod(modId);
	var doOverride as bool = modStage != "";

	for stageName, items in stagedItems {
		if (doOverride && stageName != modStage) {
			ZenStager.addModItemOverrides(modId, items);
		}

		ZenStager.getStage(stageName).addIngredients(items);
	}
}
