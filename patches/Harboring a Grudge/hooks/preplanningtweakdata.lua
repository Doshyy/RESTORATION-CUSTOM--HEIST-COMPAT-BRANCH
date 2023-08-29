Hooks:PostHook(PrePlanningTweakData,"init","init_constantine_harbor_lvl",function(self)

	self:_create_locations(tweak_data)


	self.types.charbor_backup_crew = {
		name_id = "menu_pp_charbor_backup_crew",
		desc_id = "menu_pp_charbor_backup_crew_desc",
		pos_not_important = false,
		category = "hired_help",
		icon = 95,
		total = 1,
		cost = 5000,
		budget_cost = 2,
		post_event = "preplan_17",
		prio = 3
	}
	
	
		self.types.charbor_crowbar = {
		name_id = "menu_pp_asset_crojob3_crowbar",
		desc_id = "menu_pp_asset_crojob3_crowbar_desc",
		pos_not_important = false,
		icon = 72,
		category = "mission_equipment",
		total = 1,
		cost = 800,
		budget_cost = 2,
		post_event = "preplan_15",
		prio = 5
	}

	self.types.charbor_expert_pilot = {
		name_id = "menu_pp_charbor_expert_pilot",
		desc_id = "menu_pp_charbor_expert_pilot_desc",
		pos_not_important = false,
		category = "hired_help",
		icon = 73,
		total = 1,
		cost = 5000,
		budget_cost = 4	,
		post_event = "preplan_17",
		prio = 3
	}



	self.types.charbor_c4 = {
		name_id = "menu_pp_charbor_c4",
		desc_id = "menu_pp_charbor_c4_desc",
		category = "mission_equipment",
		icon = 51,
		total = 1,
		post_event = "preplan_07",
		cost = 2000,
		budget_cost = 6,
		prio = 2
	}



	self.types.charbor_manifest = {
		name_id = "menu_pp_charbor_manifest",
		desc_id = "menu_pp_charbor_manifest_desc",
		category = "mission_equipment",
		icon = 71,
		total = 1,
		post_event = "preplan_07",
		cost = 2000,
		budget_cost = 6,
		prio = 2,
		upgrade_lock = {
		upgrade = "additional_assets",
		category = "player"
			}
	}




	self.types.charbor_longfellow = {
		name_id = "menu_pp_charbor_longfellow",
		desc_id = "menu_pp_charbor_longfellow_desc",
		category = "mission_equipment",
		icon = 54,
		total = 1,
		post_event = "preplan_07",
		cost = 2000,
		budget_cost = 2,
		prio = 2
	}


	if Global.game_settings and Global.game_settings.one_down then
			self.types.charbor_backup_crew.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
			self.types.charbor_longfellow.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
	end




	
end)

Hooks:PostHook(PrePlanningTweakData,"_create_locations","_constantine_harbor_lvl",function(self)

	self.locations.constantine_harbor_lvl = {
		mission_briefing_texture = "textures/FirstFloor",
		total_budget = 10,
		default_plans = {
		},
			{
			texture = "textures/SecondFloor",
			name_id = "menu_pp_constantine_harbor_a",
			rotation = 0,
			map_size = 1,
			map_x = 0.0,
			map_y = 0,
			x1 = 0,
			y1 =  3750,
			x2 = 2500,
			y2 = 25560,

			custom_points = {}
		},	
		{
			texture = "textures/Empty",
			name_id = "menu_pp_constantine_harbor_b",
			rotation = 0,
			map_size = 0.25,
			map_x = 0.0,
			map_y = 0.40,
			x1 = 0,
			y1 =  0,
			x2 = 2000,
			y2 = 2000,


			custom_points = {}
		},
	
		{
			texture = "textures/Outside",
			name_id = "menu_pp_constantine_harbor_c",
			rotation = 0,
			map_size = 1,
			map_x = -1.0,
			map_y = 0.0,
			x1 = 0,
			y1 =  3750,
			x2 = 2500,
			y2 = 25560,



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
