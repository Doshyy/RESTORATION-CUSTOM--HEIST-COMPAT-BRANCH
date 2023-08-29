Hooks:PostHook(PrePlanningTweakData,"init","init_constantine_mex_level",function(self)

	self:_create_locations(tweak_data)


	self.types.cmex_cam = {
		name_id = "menu_pp_asset_cmex_cam",
		desc_id = "menu_pp_asset_cmex_cam_desc",
		category = "insider_help",
		upgrade_lock = {
			upgrade = "additional_assets",
			category = "player"
		},
		icon = 61,
		total = 1,
		cost = 2000,
		budget_cost = 4,
		post_event = "preplan_09",
		prio = 1
	}


	
	
	self.types.cmex_backup_crew = {
		name_id = "menu_pp_cmex_backup_crew",
		desc_id = "menu_pp_cmex_backup_crew_desc",
		pos_not_important = false,
		category = "hired_help",
		icon = 95,
		total = 1,
		cost = 5000,
		budget_cost = 4,
		post_event = "preplan_17",
		prio = 3
	}
	
	
		self.types.cmex_backup_crew_addon = {
		name_id = "menu_pp_cmex_backup_crew_addon",
		desc_id = "menu_pp_cmex_backup_crew_addon_desc",
		pos_not_important = false,
		category = "hired_help",
		icon = 95,
		total = 1,
		cost = 5000,
		budget_cost = 2,
		post_event = "preplan_17",
		prio = 3
	}
	

	self.types.cmex_distracted_police = {
		name_id = "menu_pp_cmex_distracted_police",
		desc_id = "menu_pp_cmex_distracted_police_desc",
		pos_not_important = false,
		category = "hired_help",
		icon = 73,
		total = 1,
		cost = 5000,
		budget_cost = 6	,
		post_event = "preplan_17",
		prio = 3
	}


	self.types.cmex_vip = {
		name_id = "menu_pp_asset_cmex_vip",
		desc_id = "menu_pp_asset_cmex_vip_desc",
		category = "insider_help",
		upgrade_lock = {
			upgrade = "additional_assets",
			category = "player"
		},
		icon = 25,
		total = 1,
		cost = 2000,
		budget_cost = 6,
		post_event = "preplan_09",
		prio = 1
	}

	self.types.cmex_safecode = {
		name_id = "menu_pp_cmex_safecode",
		desc_id = "menu_pp_cmex_safecode_desc",
		category = "mission_equipment",
		icon = 43,
		total = 1,
		post_event = "preplan_07",
		cost = 2000,
		budget_cost = 4,
		prio = 2,
		upgrade_lock = {
			upgrade = "additional_assets",
			category = "player"
		}
	}

	self.types.cmex_c4 = {
		name_id = "menu_pp_cmex_c4",
		desc_id = "menu_pp_cmex_c4_desc",
		category = "mission_equipment",
		icon = 51,
		total = 1,
		post_event = "preplan_07",
		cost = 2000,
		budget_cost = 6,
		prio = 2
	}

	self.types.cmex_bypass = {
		name_id = "menu_pp_cmex_bypass",
		desc_id = "menu_pp_cmex_bypass_desc",
		category = "data_hacking",
		icon = 15,
		total = 1,
		post_event = "preplan_07",
		cost = 2000,
		budget_cost = 6,
		prio = 2
	}

	if Global.game_settings and Global.game_settings.one_down then
			self.types.cmex_backup_crew.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
			self.types.cmex_backup_crew_addon.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
	end	
end)

Hooks:PostHook(PrePlanningTweakData,"_create_locations","_constantine_mex_level",function(self)

	self.locations.constantine_mex_level = {
		mission_briefing_texture = "textures/FirstFloor",
		total_budget = 10,
		default_plans = {
		},
			{
			texture = "textures/SecondFloor",
			name_id = "menu_pp_constantine_mex_a",
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
			name_id = "menu_pp_constantine_mex_b",
			rotation = 0,
			map_size = 0.25,
			map_x = 0.15,
			map_y = -0.25,
			x1 = 0,
			y1 =  0,
			x2 = 2500,
			y2 = 2500,


			custom_points = {}
		},
	
		{
			texture = "textures/Outside",
			name_id = "menu_pp_constantine_mex_c",
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
