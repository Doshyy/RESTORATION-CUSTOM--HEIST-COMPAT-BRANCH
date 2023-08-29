Hooks:PostHook(PrePlanningTweakData,"init","init_ahopl",function(self)

	self:_create_locations(tweak_data)


	
	self.types.ahopl_backup_heister = {
		name_id = "menu_pp_ahopl_backup_heister",
		desc_id = "menu_pp_ahopl_backup_heister_desc",
		pos_not_important = false,
		category = "hired_help",
		icon = 95,
		total = 1,
		cost = 4000,
		budget_cost = 6,
		post_event = "preplan_17",
		prio = 3
	}
	
	
	
		
		self.types.ahop_sawcutter = {
			name_id = "menu_pp_asset_ahop_sawcutter",
			desc_id = "menu_pp_asset_ahop_sawcutter_desc",
			category = "mission_equipment",
			pos_not_important = true,
			icon = 64,
			total = 1,
			cost = 2000,
			budget_cost = 4,
			post_event = "preplan_16",
			prio = 2
		}
		
		
	
	self.types.ahop_gate_key = {
		name_id = "menu_pp_asset_ahop_gate_key",
		desc_id = "menu_pp_asset_ahop_gate_key_desc",
		pos_not_important = true,
		category = "mission_equipment",
		icon = 43,
		total = 1,
		cost = 1000,
		budget_cost = 2,
		post_event = "",
		prio = 3
	}
	
	
	
	
	
	self.types.ahop_body_disposal_unit = {
		name_id = "menu_pp_asset_ahop_body_disposal_unit",
		desc_id = "menu_pp_asset_ahop_body_disposal_unit_desc",
		category = "hired_help",
		icon = 34,
		total = 2,
		post_event = "preplan_16",
		prio = 1,
		cost = 1000,
		budget_cost = 1
	}
	
	
	
		
	self.types.ahop_blowtorch = {
		name_id = "menu_pp_asset_ahop_blowtorch",
		desc_id = "menu_pp_asset_ahop_blowtorch_desc",
		category = "mission_equipment",
		pos_not_important = true,
		icon = 64,
		total = 1,
		cost = 1000,
		budget_cost = 2,
		post_event = "preplan_16",
		prio = 2
	}
	
	
	
	
	
	
	
	self.types.ahopl_backup_crew = {
		name_id = "menu_pp_ahopl_backup_crew",
		desc_id = "menu_pp_ahopl_backup_crew_desc",
		pos_not_important = false,
		category = "hired_help",
		icon = 95,
		total = 1,
		cost = 5000,
		budget_cost = 8	,
		post_event = "preplan_17",
		prio = 3
	}
	
	
	self.types.ahopl_vip_room = {
		name_id = "menu_pp_ahopl_vip_room",
		desc_id = "menu_pp_ahopl_vip_room_desc",
		pos_not_important = false,
		category = "hired_help",
		icon = 91,
		total = 1,
		cost =  2000,
		budget_cost = 2,
		post_event = "",
		prio = 3
	}
	
	
		
	self.types.ahopl_security_block_remover = {
		name_id = "menu_pp_ahopl_security_block_remover",
		desc_id = "menu_pp_ahopl_security_block_remover_desc",
		pos_not_important = false,
		category = "data_hacking",
		icon = 42,
		total = 1,
		cost =  2000,
		budget_cost = 4,
		post_event = "",
		prio = 3
	}
	
	
	self.types.ahopl_server_timelock_reducer = {
		name_id = "menu_pp_ahopl_server_timelock_reducer",
		desc_id = "menu_pp_ahopl_server_timelock_reducer_desc",
		pos_not_important = false,
		category = "data_hacking",
		icon = 15,
		total = 1,
		cost =  2000,
		budget_cost = 4,
		post_event = "",
		prio = 3
	}
	
	
	
	
	
	
	
	
	self.types.ahop_reduce_guard = {
		name_id = "menu_pp_asset_ahop_reduce_guard",
		desc_id = "menu_pp_asset_reduce_ahop_reduce_guard",
		category = "hired_help",
		icon = 61,
		total = 1,
		post_event = "preplan_13",
		prio = 1,
		cost = 2000,
		budget_cost = 4
	}
	
	if BeardLib.Utils:ModExists("RestorationMod") then
		self.types.ahop_gate_key.upgrade_lock = {
			upgrade = "additional_assets",
			category = "player"
		}
		self.types.ahop_body_disposal_unit.upgrade_lock = {
			upgrade = "additional_assets",
			category = "player"
		}
		self.types.ahop_reduce_guard.upgrade_lock = {
			upgrade = "additional_assets",
			category = "player"
		}
		if Global.game_settings and Global.game_settings.one_down then
			self.types.ahopl_backup_crew.upgrade_lock = {
				upgrade = "additional_assets_pro",
				category = "player"
			}
			self.types.ahopl_backup_heister.upgrade_lock = {
				upgrade = "additional_assets_pro",
				category = "player"
			}
		end
	end
	
	
end)

Hooks:PostHook(PrePlanningTweakData,"_create_locations","_ahopl",function(self)

	self.locations.ahopl = {
		mission_briefing_texture = "textures/Outside",
		total_budget = 12,
		default_plans = {
		},
			{
			texture = "textures/FirstFloor",
			name_id = "menu_pp_ahopl_a",
			rotation = 0,
			map_size = 1,
			map_x = 0.0,
			map_y = 0,
			x1 = -489.803,
			y1 =  1213,
			x2 = -5289,
			y2 = 8613,

			custom_points = {}
		},	
		{
			texture = "textures/Empty",
			name_id = "menu_pp_ahopl_b",
			rotation = 0,
			map_size = 1,
			map_x = 1,
			map_y = 0,
			x1 = -489.803,
			y1 =  1213,
			x2 = -5289,
			y2 = 8613,


			custom_points = {}
		},
	
		{
			texture = "textures/SecondFloor",
			name_id = "menu_pp_ahopl_c",
			rotation = 0,
			map_size = 1,
			map_x = -1.0,
			map_y = 0.0,
			x1 = -489.803,
			y1 =  1213,
			x2 = -5289,
			y2 = 8613,


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
