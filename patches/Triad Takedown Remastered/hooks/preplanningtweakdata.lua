Hooks:PostHook(PrePlanningTweakData,"init","init_ttr_yct_lvl",function(self)

	self:_create_locations(tweak_data)


	
	self.types.ttr_coastal_distraction = {
		name_id = "menu_pp_asset_ttr_coastal_distraction",
		desc_id = "menu_pp_asset_ttr_coastal_distraction_desc",
		category = "hired_help",
		icon = 61,
		total = 1,
		post_event = "preplan_13",
		prio = 1,
		cost = 2000,
		budget_cost = 8
	}
	
	
	self.types.ttr_backup_crew = {
		name_id = "menu_pp_ttr_backup_crew",
		desc_id = "menu_pp_ttr_backup_crew_desc",
		pos_not_important = false,
		category = "hired_help",
		icon = 95,
		total = 1,
		cost = 5000,
		budget_cost = 4,
		post_event = "preplan_17",
		prio = 3
	}
	

	self.types.ttr_expert_pilot = {
		name_id = "menu_pp_ttr_expert_pilot",
		desc_id = "menu_pp_ttr_expert_pilot_desc",
		pos_not_important = false,
		category = "hired_help",
		icon = 73,
		total = 1,
		cost = 5000,
		budget_cost = 6	,
		post_event = "preplan_17",
		prio = 3
	}


	self.types.ttr_boat_drop = {
		name_id = "menu_pp_ttr_boat_drop",
		desc_id = "menu_pp_ttr_boat_drop_desc",
		pos_not_important = false,
		category = "hired_help",
		icon = 34,
		total = 1,
		cost = 5000,
		budget_cost = 2	,
		post_event = "preplan_17",
		prio = 3
	}



	self.types.ttr_better_hack = {
		name_id = "menu_pp_ttr_better_hack",
		desc_id = "menu_pp_ttr_better_hack_desc",
		category = "mission_equipment",
		icon = 15,
		total = 1,
		post_event = "preplan_07",
		cost = 2000,
		budget_cost = 6,
		prio = 2
	}

	self.types.ttr_c4 = {
		name_id = "menu_pp_ttr_c4",
		desc_id = "menu_pp_ttr_c4_desc",
		category = "mission_equipment",
		icon = 51,
		total = 1,
		post_event = "preplan_07",
		cost = 2000,
		budget_cost = 8,
		prio = 2
	}

	if Global.game_settings and Global.game_settings.one_down then
			self.types.ttr_backup_crew.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
	end

	
end)

Hooks:PostHook(PrePlanningTweakData,"_create_locations","_ttr_yct_lvl",function(self)

	self.locations.ttr_yct_lvl = {
		mission_briefing_texture = "textures/FirstFloor",
		total_budget = 14,
		default_plans = {
		},
			{
			texture = "textures/SecondFloor",
			name_id = "menu_pp_ttr_a",
			rotation = 0,
			map_size = 4,
			map_x = 0.0,
			map_y = 0,
			x1 = 1700,
			y1 =  -1200,
			x2 = 5460,
			y2 = 8960,

			custom_points = {}
		},	
		{
			texture = "textures/Outside",
			name_id = "menu_pp_ttr_b",
			rotation = 0,
			map_size = 1,
			map_x = 1,
			map_y = 0,
			x1 = 1700,
			y1 =  2000,
			x2 = 5460,
			y2 = 8960,


			custom_points = {}
		},
	
		{
			texture = "textures/Empty",
			name_id = "menu_pp_ttr_c",
			rotation = 0,
			map_size = 1,
			map_x = -1.0,
			map_y = 0.0,
			x1 = 1700,
			y1 =  -8200,
			x2 = 5460,
			y2 = 8960,



			custom_points = {}
		},

		start_location = {
			group = "b",
			zoom = 0,
			x = 0,
			y = 1024
		}
	}
	
	
	
	
end)