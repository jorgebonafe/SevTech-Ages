/*
    SevTech: Ages OpenComputers Recipe Script

    This script handles the recipes for OpenComputers.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

import scripts.crafttweaker.stages.stageZero;
import scripts.crafttweaker.stages.stageOne;
import scripts.crafttweaker.stages.stageTwo;
import scripts.crafttweaker.stages.stageThree;
import scripts.crafttweaker.stages.stageFour;
import scripts.crafttweaker.stages.stageFive;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<opencomputers:card:12> : [
		[
			[<immersiveengineering:material:27>, <opencomputers:component:1>, <opencomputers:component:10>],
			[null, <opencomputers:card:11>, null]
		]
	],
	<opencomputers:upgrade:3> : [
		[
			[<immersiveengineering:material:27>, <opencomputers:capacitor>, <immersiveengineering:material:27>],
			[<opencomputers:material:6>, <opencomputers:capacitor>, <opencomputers:material:6>],
			[<immersiveengineering:material:27>, <opencomputers:capacitor>, <immersiveengineering:material:27>]
		]
	],
	<opencomputers:material:9> : [
		[
			[<ore:dustGlowstone>, <minecraft:comparator>, <ore:dustGlowstone>],
			[<opencomputers:material:8>, <immersiveengineering:material:27>, <opencomputers:material:8>],
			[<ore:dustGlowstone>, <minecraft:comparator>, <ore:dustGlowstone>]
		]
	],
	<opencomputers:component:17> : [
		[
			[<immersiveengineering:material:27>, <opencomputers:material:8>, <immersiveengineering:material:27>],
			[<opencomputers:component:2>, <opencomputers:component:4>, <opencomputers:card:2>],
			[<immersiveengineering:material:27>, <opencomputers:material:8>, <immersiveengineering:material:27>]
		]
	],
	<opencomputers:component:5> : [
		[
			[<immersiveengineering:material:27>, <opencomputers:component:10>, <immersiveengineering:material:27>],
			[<opencomputers:material:9>, <opencomputers:component:4>, null],
			[<immersiveengineering:material:27>, <opencomputers:material:4>, <immersiveengineering:material:27>]
		]
	],
	<opencomputers:component:2> : [
		[
			[<immersiveengineering:material:27>, <opencomputers:component:10>, <immersiveengineering:material:27>],
			[<opencomputers:material:9>, <opencomputers:component:1>, <opencomputers:material:9>],
			[<immersiveengineering:material:27>, <opencomputers:component:10>, <immersiveengineering:material:27>]
		]
	],
	<opencomputers:case3> : [
		[
			[<immersiveengineering:material:27>, <opencomputers:material:9>, <immersiveengineering:material:27>],
			[<opencomputers:material:9>, <opencomputers:case2>, <opencomputers:material:9>],
			[<immersiveengineering:material:27>, <opencomputers:material:4>, <immersiveengineering:material:27>]
		]
	],
	<opencomputers:hologram1> : [
		[
			[<opencomputers:material:8>, <ore:paneGlass>, <opencomputers:material:8>],
			[<opencomputers:material:4>, <immersiveengineering:material:27>, <opencomputers:material:4>],
			[<ore:obsidian>, <ore:dustGlowstone>, <ore:obsidian>]
		]
	],
	<opencomputers:hologram2> : [
		[
			[<opencomputers:material:9>, <ore:blockGlass>, <opencomputers:material:9>],
			[<opencomputers:material:4>, <appliedenergistics2:quartz_block>, <opencomputers:material:4>],
			[<ore:obsidian>, <ore:dustBlaze>, <ore:obsidian>]
		]
	]
};

static namedShapedRecipes as IIngredient[][][][IItemStack] = {
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
	<opencomputers:tool:4> : [
		[<ore:book>, <ore:crystalCertusQuartz>]
	],
	<opencomputers:material:2> : [
		[<opencomputers:material>, <ore:blockClay>],
		[<ore:dyeGreen>, <ore:crystalCertusQuartz>]
	],
	<opencomputers:material:2> : [
		[<opencomputers:material>, <ore:blockClay>],
		[<minecraft:dye:2>, <ore:crystalCertusQuartz>]
	]	
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<opencomputers:card:12>,
	<opencomputers:upgrade:3>,
	<opencomputers:material:9>,
	<opencomputers:component:17>,
	<opencomputers:component:5>,
	<opencomputers:component:2>,
	<opencomputers:case3>,
	<opencomputers:hologram1>,
	<opencomputers:hologram2>,
	<opencomputers:tool:4>,
	<opencomputers:material:2>,
	<opencomputers:material:29>
];

function init() {
	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
}
