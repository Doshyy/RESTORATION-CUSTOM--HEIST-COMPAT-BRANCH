Hooks:PostHook(PrePlanningTweakData,"init","init_deadcargol",function(self)

	self:_create_locations(tweak_data)



	
	
	self.types.deadcargo_loot_drop_off = {
		name_id = "menu_pp_asset_deadcargo_loot_drop_off",
		desc_id = "menu_pp_asset_deadcargo_loot_drop_off_desc",
		category = "hired_help",
		icon = 34,
		total = 1,
		post_event = "preplan_16",
		prio = 1,
		cost = 1000,
		budget_cost = 2
	}
	
	
		
	self.types.deadcargo_reduce_civilians = {
		name_id = "menu_pp_asset_deadcargo_reduce_civilians",
		desc_id = "menu_pp_asset_reduce_deadcargo_reduce_civilians_desc",
		category = "hired_help",
		icon = 102,
		total = 1,
		post_event = "preplan_13",
		prio = 1,
		cost = 2000,
		budget_cost = 3
	}
	

	
	
	self.types.deadcargo_reduce_guard = {
		name_id = "menu_pp_asset_deadcargo_reduce_guard",
		desc_id = "menu_pp_asset_reduce_deadcargo_reduce_guard",
		category = "hired_help",
		icon = 61,
		total = 1,
		post_event = "preplan_13",
		prio = 1,
		cost = 2000,
		budget_cost = 2,
		upgrade_lock = {
		upgrade = "additional_assets",
		category = "player"
			}
	}
	
	
		self.types.deadcargo_unlocked_door = {
		name_id = "menu_pp_asset_deadcargo_unlocked_door",
		desc_id = "menu_pp_asset_deadcargo_unlocked_door_desc",
		category = "mission_equipment",
		icon = 41,
		total = 1	,
		post_event = "preplan_07",
		cost = 2000,
		budget_cost = 1,
		prio = 2,
		upgrade_lock = {
		upgrade = "additional_assets",
		category = "player"
			}
	}
	
end)

Hooks:PostHook(PrePlanningTweakData,"_create_locations","_deadcargol",function(self)

	self.locations.deadcargol = {
		mission_briefing_texture = "textures/FirstFloor",
		total_budget = 8,
		default_plans = {
		},
			{
			texture = "textures/SecondFloor",
			name_id = "menu_pp_deadcargol_a",
			rotation = 0,
			map_size = 1,
			map_x = 0.0,
			map_y = 0,
			x1 = 1000,
			y1 =  -4410,
			x2 = 5460,
			y2 = 8960,

			custom_points = {}
		},	
		{
			texture = "textures/Outside",
			name_id = "menu_pp_deadcargol_b",
			rotation = 0,
			map_size = 1,
			map_x = 1,
			map_y = 0,
			x1 = 1000,
			y1 =  -4410,
			x2 = 5460,
			y2 = 8960,



			custom_points = {}
		},
	
		{
			texture = "textures/Empty",
			name_id = "menu_pp_deadcargol_c",
			rotation = 0,
			map_size = 1,
			map_x = -1.0,
			map_y = 0.0,
			x1 = 1000,
			y1 =  -4410,
			x2 = 5460,
			y2 = 8960,



			custom_points = {}
		},

		start_location = {
			group = "a",
			zoom = 1,
			x = 1024,
			y = 1024
		}
	}
	
	
	
	
end)
