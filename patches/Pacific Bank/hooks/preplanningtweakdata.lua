Hooks:PostHook(PrePlanningTweakData,"init","init_constantine_bank_lvl",function(self)

	self:_create_locations(tweak_data)


	
	self.types.constantine_bank_van_escape = {
		name_id = "menu_pp_asset_constantine_bank_van_escape",
		desc_id = "menu_pp_asset_constantine_bank_van_escape_desc",
		plan = "escape_plan",
		category = "escape_plan",
		icon = 54,
		total = 1,
		cost = 0,
		budget_cost = 0,
		post_event = "preplan_12",
		prio = 3
	}

		
	self.types.constantine_bank_expert_van_escape = {
		name_id = "menu_pp_asset_constantine_bank_expert_van_escape",
		desc_id = "menu_pp_asset_constantine_bank_expert_van_escape_desc",
		plan = "escape_plan",
		category = "escape_plan",
		icon = 54,
		total = 1,
		cost = 8000,
		budget_cost = 8,
		post_event = "preplan_12",
		prio = 3
	}

	
	self.types.constantine_bank_backup_crew = {
		name_id = "menu_pp_constantine_bank_backup_crew",
		desc_id = "menu_pp_constantine_bank_backup_crew_desc",
		category = "hired_help",
		icon = 95,
		total = 1,
		cost = 5000,
		budget_cost = 4,
		post_event = "preplan_17",
		prio = 3
	}
	
	
	
		self.types.constantine_bank_vault_thermite = {
		name_id = "menu_pp_constantine_bank_vault_thermite",
		desc_id = "menu_pp_constantine_bank_vault_thermite_desc",
		plan = "vault_plan",
		category = "vault_plan",
		icon = 51,
		total = 1,
		cost = 8000,
		budget_cost = 8,
		post_event = "preplan_02",
		prio = 1
	}
	
	
	
		self.types.constantine_bank_vault_big_drill = {
		name_id = "menu_pp_vault_big_drill",
		desc_id = "menu_pp_vault_big_drill_desc",
		plan = "vault_plan",
		category = "vault_plan",
		icon = 12,
		total = 1,
		cost = 0,
		budget_cost = 0,
		post_event = "preplan_17",
		prio = 5
	}	
	
	
	
	self.types.constantine_bank_blocker_bypass = {
		name_id = "menu_pp_constantine_bank_blocker_bypass",
		desc_id = "menu_pp_constantine_bank_blocker_bypass_desc",
		category = "mission_equipment",
		icon = 15,
		total = 1,
		post_event = "preplan_07",
		cost = 5000,
		budget_cost = 4,
		prio = 2
	}
	
	
		self.types.constantine_bank_gate_key = {
		name_id = "menu_pp_asset_constantine_bank_gate_key",
		desc_id = "menu_pp_asset_constantine_bank_gate_key_desc",
		category = "mission_equipment",
		icon = 43,
		total = 1,
		cost = 1000,
		budget_cost = 4,
		post_event = "",
		prio = 3,
		upgrade_lock = {
		upgrade = "additional_assets",
		category = "player"
			}
	}
	
	
	
	self.types.constantine_bank_reduce_guard = {
		name_id = "menu_pp_asset_constantine_bank_reduce_guard",
		desc_id = "menu_pp_asset_constantine_bank_reduce_guard_desc",
		category = "hired_help",
		icon = 61,
		total = 1,
		post_event = "preplan_13",
		prio = 1,
		cost = 2000,
		budget_cost = 4,
		upgrade_lock = {
		upgrade = "additional_assets",
		category = "player"
			}
	}
	
	
		self.types.constantine_bank_road_construction = {
		name_id = "menu_pp_asset_constantine_bank_road_construction",
		desc_id = "menu_pp_asset_constantine_bank_road_construction_desc",
		category = "hired_help",
		icon = 102,
		total = 1,
		post_event = "preplan_13",
		prio = 1,
		cost = 2000,
		budget_cost = 4
	}
	
	if Global.game_settings and Global.game_settings.one_down then
			self.types.constantine_bank_backup_crew.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
			self.types.constantine_bank_expert_van_escape.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
	end	
	

	
end)

Hooks:PostHook(PrePlanningTweakData,"_create_locations","_constantine_bank_lvl",function(self)

	self.locations.constantine_bank_lvl = {
		mission_briefing_texture = "textures/FirstFloor",
		total_budget = 12,
		default_plans = {
				escape_plan = "constantine_bank_van_escape",
				vault_plan = "constantine_bank_vault_big_drill"
		},
			{
			texture = "textures/SecondFloor",
			name_id = "menu_pp_constantine_bank_a",
			rotation = 0,
			map_size = 1,
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
			name_id = "menu_pp_constantine_bank_b",
			rotation = 0,
			map_size = 0.25,
			map_x = 0.15,
			map_y = 0,
			x1 = 0,
			y1 =  3750,
			x2 = 2500,
			y2 = 6560,


			custom_points = {}
		},
	
		{
			texture = "textures/Empty",
			name_id = "menu_pp_constantine_bank_c",
			rotation = 0,
			map_size = 1,
			map_x = -1.0,
			map_y = 0.0,
			x1 = 800,
			y1 =  -80000,
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
