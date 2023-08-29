Hooks:PostHook(PrePlanningTweakData,"init","init_rusdl",function(self)

	self:_create_locations(tweak_data)


	
	self.types.rusdl_backup_heister = {
		name_id = "menu_pp_rusdl_backup_heister",
		desc_id = "menu_pp_rusdl_backup_heister_desc",
		pos_not_important = true,
		category = "hired_help",
		icon = 95,
		total = 1,
		cost = 8000,
		budget_cost = 4,
		post_event = "preplan_17",
		prio = 3
	}
	
	self.types.rusdl_reduce_timelock_30 = {
		name_id = "menu_pp_rusdl_reduce_timelock_30",
		desc_id = "menu_pp_asset_reduce_timelock_30_desc",
		pos_not_important = true,
		icon = 15,
		category = "data_hacking",
		total = 1,
		cost = 5000,
		budget_cost = 2,
		post_event = "preplan_10",
		prio = 3
	}

	if Global.game_settings and Global.game_settings.one_down then
			self.types.rusdl_backup_heister.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
	end
	
	
end)

Hooks:PostHook(PrePlanningTweakData,"_create_locations","_rusdl",function(self)

	self.locations.rusdl = {
		mission_briefing_texture = "textures/Outside",
		total_budget = 8,
		default_plans = {
		},
			{
			texture = "textures/Outside",
			name_id = "menu_pp_rusdl_a",
			rotation = 0,
			map_size = 1,
			map_x = 0,
			map_y = 0,
			x1 = 380,
			y1 = -4384,
			x2 = 4550.000,
			y2 = -846,

			custom_points = {}
		},	
		{
			texture = "textures/FirstFloor",
			name_id = "menu_pp_rusdl_b",
			rotation = 0,
			map_size = 1,
			map_x = 1,
			map_y = 0,
			x1 = 700,
			y1 = -8384,
			x2 = 4550.000,
			y2 = 0,

			custom_points = {}
		},
	
		{
			texture = "textures/SecondFloor",
			name_id = "menu_pp_rusdl_c",
			rotation = 0,
			map_size = 1,
			map_x = -1.0,
			map_y = 0.0,
			x1 = 380,
			y1 = -4384,
			x2 = 4550.000,
			y2 = -500,

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