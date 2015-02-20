print("scaffolding: Loading 'functions.lua'")
dofile(minetest.get_modpath("scaffolding").."/functions.lua")

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
		after_dig_node = function(pos, node, metadata, digger)
		default.dig_horx(pos, node, digger)
		default.dig_horx2(pos, node, digger)
		default.dig_horz(pos, node, digger)
		default.dig_horz2(pos, node, digger)
	end,
	})

minetest.register_craft({
	output = 'scaffolding:scaffolding 6',
	recipe = {
		{'default:wood', 'default:wood', 'default:wood'},
		{'default:stick', '', 'default:stick'},
		{'default:wood', 'default:wood', 'default:wood'},
	}
})

minetest.register_craft({
	output = 'scaffolding:iron_scaffolding 6',
	recipe = {
		{'default:wood', 'default:wood', 'default:wood'},
		{'default:steel_ingot', '', 'default:steel_ingot'},
		{'default:wood', 'default:wood', 'default:wood'},
	}
})

