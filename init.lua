print("scaffolding: Loading 'functions.lua'")
dofile(minetest.get_modpath("scaffolding").."/functions.lua")

minetest.register_craftitem("scaffolding:scaffolding_wrench", {
	description = "Scaffolding Wrench",
	inventory_image = "scaffolding_wrench.png",
})

minetest.register_node("scaffolding:scaffolding", {
		description = "Wooden Scaffolding",
		drawtype = "nodebox",
		tiles = {"scaffolding_wooden_scaffolding_top.png", "scaffolding_wooden_scaffolding_top.png", "scaffolding_wooden_scaffolding.png",
		"scaffolding_wooden_scaffolding.png", "scaffolding_wooden_scaffolding.png", "scaffolding_wooden_scaffolding.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		climbable = true,
		walkable = false,
		is_ground_content = true,
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
		sounds = default.node_sound_wood_defaults(),
		on_punch = function(pos, node, puncher)
		local tool = puncher:get_wielded_item():get_name()
			if tool and tool == "scaffolding:scaffolding_wrench" then
				node.name = "scaffolding:reinforced_scaffolding"
				minetest.env:set_node(pos, node)
				--puncher:get_inventory():remove_item("main", ItemStack("beer_test:tankard"))
				--puncher:get_inventory():add_item("main", ItemStack("beer_test:tankard_beer"))
			end
		end,	
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
		after_dig_node = function(pos, node, metadata, digger)
		default.dig_up(pos, node, digger)
	end,
	})

minetest.register_node("scaffolding:reinforced_scaffolding", {
		description = "Wooden Scaffolding",
		drawtype = "nodebox",
		tiles = {"scaffolding_wooden_scaffolding.png^scaffolding_reinforced.png", "scaffolding_wooden_scaffolding.png^scaffolding_reinforced.png",
		"scaffolding_wooden_scaffolding.png^scaffolding_reinforced.png"},
		drop = "scaffolding:scaffolding",
		paramtype = "light",
		paramtype2 = "facedir",
		climbable = true,
		walkable = false,
		is_ground_content = true,
		groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
		sounds = default.node_sound_wood_defaults(),
		on_punch = function(pos, node, puncher)
		local tool = puncher:get_wielded_item():get_name()
			if tool and tool == "scaffolding:scaffolding_wrench" then
				node.name = "scaffolding:scaffolding"
				minetest.env:set_node(pos, node)
				--puncher:get_inventory():remove_item("main", ItemStack("beer_test:tankard"))
				--puncher:get_inventory():add_item("main", ItemStack("beer_test:tankard_beer"))
			end
		end,	
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
	})
	
minetest.register_node("scaffolding:iron_scaffolding", {
		description = "Iron Scaffolding",
		drawtype = "nodebox",
		tiles = {"scaffolding_iron_scaffolding_top.png", "scaffolding_iron_scaffolding_top.png", "scaffolding_iron_scaffolding.png",
		"scaffolding_iron_scaffolding.png", "scaffolding_iron_scaffolding.png", "scaffolding_iron_scaffolding.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		climbable = true,
		walkable = true,
		is_ground_content = true,
		groups = {snappy=2,cracky=3},
		sounds = default.node_sound_wood_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
		on_punch = function(pos, node, puncher)
		local tool = puncher:get_wielded_item():get_name()
			if tool and tool == "scaffolding:scaffolding_wrench" then
				node.name = "scaffolding:reinforced_iron_scaffolding"
				minetest.env:set_node(pos, node)
			end
		end,	
		after_dig_node = function(pos, node, metadata, digger)
		default.dig_horx(pos, node, digger)
		default.dig_horx2(pos, node, digger)
		default.dig_horz(pos, node, digger)
		default.dig_horz2(pos, node, digger)
	end,
	})
	
	minetest.register_node("scaffolding:reinforced_iron_scaffolding", {
		description = "Iron Scaffolding",
		drawtype = "nodebox",
		tiles = {"scaffolding_iron_scaffolding.png^scaffolding_reinforced.png", "scaffolding_iron_scaffolding.png^scaffolding_reinforced.png",
		"scaffolding_iron_scaffolding.png^scaffolding_reinforced.png"},
		drop = "scaffolding:iron_scaffolding",
		paramtype = "light",
		paramtype2 = "facedir",
		climbable = true,
		walkable = true,
		is_ground_content = true,
		groups = {snappy=2,cracky=3},
		sounds = default.node_sound_wood_defaults(),
		on_punch = function(pos, node, puncher)
		local tool = puncher:get_wielded_item():get_name()
			if tool and tool == "scaffolding:scaffolding_wrench" then
				node.name = "scaffolding:iron_scaffolding"
				minetest.env:set_node(pos, node)
			end
		end,	
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
	})

minetest.register_craft({
	output = 'scaffolding:scaffolding 12',
	recipe = {
		{'default:wood', 'default:wood', 'default:wood'},
		{'default:stick', '', 'default:stick'},
		{'default:wood', 'default:wood', 'default:wood'},
	}
})

minetest.register_craft({
	output = 'scaffolding:scaffolding 4',
	recipe = {
		{'default:wood'},
		{'default:stick'},
		{'default:wood'},
	}
})

minetest.register_craft({
	output = 'scaffolding:iron_scaffolding 12',
	recipe = {
		{'default:wood', 'default:wood', 'default:wood'},
		{'default:steel_ingot', '', 'default:steel_ingot'},
		{'default:wood', 'default:wood', 'default:wood'},
	}
})

minetest.register_craft({
	output = 'scaffolding:iron_scaffolding 4',
	recipe = {
		{'default:wood'},
		{'default:steel_ingot'},
		{'default:wood'},
	}
})

minetest.register_craft({
	output = 'scaffolding:scaffolding_wrench',
	recipe = {
		{'', 'default:steel_ingot', ''},
		{'', 'default:steel_ingot', 'default:steel_ingot'},
		{'default:steel_ingot', '', ''},
	}
})
