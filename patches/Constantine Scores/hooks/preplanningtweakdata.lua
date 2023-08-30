Hooks:PostHook(PrePlanningTweakData,"init","init_constantine_ondisplay_lvl",function(self)


	self:_create_locations(tweak_data)


	self.types.display_policedelay = {
		name_id = "menu_pp_display_policedelay",
		desc_id = "menu_pp_display_policedelay_desc",
		pos_not_important = false,
		category = "data_hacking",
		icon = 42,
		total = 1,
		cost = 5000,
		budget_cost = 4,
		post_event = "preplan_17",
		prio = 3
	}
	
	
	self.types.cmansion_ladder = {
		name_id = "menu_pp_cmansion_ladder",
		desc_id = "menu_pp_cmansion_ladder_desc",
		category = "mission_equipment",
		icon = 63,
		total = 1,
		post_event = "preplan_07",
		cost = 2000,
		budget_cost = 2,
		prio = 2
	}
	
	self.types.cscore_plank = {
		name_id = "menu_pp_cscore_plank",
		desc_id = "menu_pp_cscore_plank_desc",
		category = "mission_equipment",
		icon = 71,
		total = 1,
		post_event = "preplan_16",
		cost = 2000,
		budget_cost = 2,
		prio = 2
	}	
	
	
	self.types.cgunner_turret = {
		name_id = "menu_pp_cgunner_turret",
		desc_id = "menu_pp_cgunner_turret_desc",
		category = "mission_equipment",
		icon = 75,
		total = 1,
		post_event = "preplan_16",
		cost = 2000,
		budget_cost = 4,
		prio = 2
	}	
	
	
	self.types.cgunner_sentries = {
		name_id = "menu_pp_cgunner_sentries",
		desc_id = "menu_pp_cgunner_sentries_desc",
		category = "mission_equipment",
		icon = 75,
		total = 1,
		post_event = "preplan_16",
		cost = 2000,
		budget_cost = 4,
		prio = 2
	}	
		
	
	self.types.cgunner_tripmine = {
		name_id = "menu_pp_cgunner_tripmine",
		desc_id = "menu_pp_cgunner_tripmine_desc",
		category = "mission_equipment",
		icon = 61,
		total = 1,
		post_event = "preplan_16",
		cost = 2000,
		budget_cost = 2,
		prio = 2
	}	
		

	self.types.cgunner_firetrap = {
		name_id = "menu_pp_cgunner_firetrap",
		desc_id = "menu_pp_cgunner_firetrap_desc",
		category = "mission_equipment",
		icon = 75,
		total = 1,
		post_event = "preplan_16",
		cost = 2000,
		budget_cost = 4,
		prio = 2
	}		
	
	self.types.cmansion_code = {
		name_id = "menu_pp_cmansion_code",
		desc_id = "menu_pp_cmansion_code_desc",
		category = "mission_equipment",
		icon = 71,
		total = 1,
		post_event = "preplan_07",
		cost = 2000,
		budget_cost = 4,
		prio = 2
	}


	self.types.cmansion_boat = {
		name_id = "menu_pp_asset_cmansion_boat",
		desc_id = "menu_pp_asset_cmansion_boat_desc",
		plan = "entry_plan",
		pos_not_important = false,
		category = "entry_plan",
		icon = 95,
		cost = 0,
		budget_cost = 0,
		post_event = "",
		prio = 3
	}
	
	self.types.cmansion_helicopter = {
		name_id = "menu_pp_asset_cmansion_helicopter",
		desc_id = "menu_pp_asset_cmansion_helicopter_desc",
		plan = "entry_plan",
		pos_not_important = false,
		category = "entry_plan",
		icon = 95,
		cost = 0,
		budget_cost = 6,
		post_event = "",
		prio = 3
	}

	self.types.cmansion_staff = {
		name_id = "menu_pp_asset_cmansion_staff",
		desc_id = "menu_pp_asset_cmansion_staff_desc",
		plan = "entry_plan",
		pos_not_important = false,
		category = "entry_plan",
		icon = 95,
		cost = 2000,
		budget_cost = 4,
		post_event = "",
		prio = 3
	}	
	
	
	
	self.types.ondisplay_bandcase = {
		name_id = "menu_pp_asset_ondisplay_bandcase",
		desc_id = "menu_pp_asset_ondisplay_bandcase_desc",
		category = "hired_help",
		icon = 34,
		total = 1,
		post_event = "preplan_16",
		prio = 1,
		cost = 1000,
		budget_cost = 6
	}
	



	self.types.display_powercut = {
		name_id = "menu_pp_display_powercut",
		desc_id = "menu_pp_display_powercut_desc",
		category = "data_hacking",
		icon = 71,
		total = 1,
		post_event = "preplan_16",
		cost = 2000,
		budget_cost = 4,
		prio = 2
	}
	
	
	self.types.score_better_hack = {
		name_id = "menu_pp_score_better_hack",
		desc_id = "menu_pp_score_better_hack_desc",
		category = "data_hacking",
		icon = 71,
		total = 1,
		post_event = "preplan_16",
		cost = 2000,
		budget_cost = 6,
		prio = 2
	}
	
	
	self.types.score_expert_pilot = {
		name_id = "menu_pp_score_expert_pilot",
		desc_id = "menu_pp_score_expert_pilot_desc",
		pos_not_important = false,
		category = "hired_help",
		icon = 73,
		total = 1,
		cost = 5000,
		budget_cost = 6	,
		post_event = "preplan_17",
		prio = 3
	}

	self.types.clubhouse_keycard = {
		name_id = "menu_pp_clubhouse_keycard",
		desc_id = "menu_pp_clubhouse_keycard_desc",
		category = "mission_equipment",
		icon = 71,
		total = 1,
		post_event = "preplan_07",
		cost = 2000,
		budget_cost = 4,
		prio = 2
	}

	self.types.clubhouse_crowbar = {
		name_id = "menu_pp_clubhouse_crowbar",
		desc_id = "menu_pp_clubhouse_crowbar_desc",
		category = "mission_equipment",
		icon = 72,
		total = 1,
		post_event = "preplan_07",
		cost = 2000,
		budget_cost = 2,
		prio = 2
	}
	self.types.score_backupcrew = {
		name_id = "menu_pp_score_backupcrew",
		desc_id = "menu_pp_score_backupcrew_desc",
		category = "hired_help",
		icon = 95,
		total = 1,
		post_event = "preplan_13",
		cost = 2000,
		budget_cost = 4,
		prio = 2
	}

	

	self.types.score_bypass = {
		name_id = "menu_pp_score_bypass",
		desc_id = "menu_pp_score_bypass_desc",
		category = "data_hacking",
		icon = 71,
		total = 1,
		post_event = "preplan_16",
		cost = 2000,
		budget_cost = 6,
		prio = 2
	}

	self.types.score_police_distraction = {
		name_id = "menu_pp_score_police_distraction",
		desc_id = "menu_pp_score_police_distraction_desc",
		category = "hired_help",
		icon = 95,
		total = 1,
		post_event = "preplan_17",
		cost = 2000,
		budget_cost = 6,
		prio = 2
	}

	self.types.score_c4 = {
		name_id = "menu_pp_score_c4",
		desc_id = "menu_pp_score_c4_desc",
		category = "mission_equipment",
		icon = 95,
		total = 1,
		post_event = "preplan_07",
		cost = 2000,
		budget_cost = 6,
		prio = 2
	}

	self.types.clubhouse_safecode = {
		name_id = "menu_pp_clubhouse_safecode",
		desc_id = "menu_pp_clubhouse_safecode_desc",
		category = "mission_equipment",
		icon = 43,
		total = 1,
		post_event = "preplan_16",
		cost = 2000,
		budget_cost = 6,
		prio = 2
	}
	self.types.mobsterclub_bouncer = {
		name_id = "menu_pp_mobsterclub_bouncer",
		desc_id = "menu_pp_mobsterclub_bouncer_desc",
		category = "hired_help",
		icon = 95,
		total = 1,
		post_event = "preplan_13",
		cost = 2000,
		budget_cost = 4,
		prio = 2
	}
		self.types.mobsterclub_gatekey = {
		name_id = "menu_pp_mobsterclub_gatekey",
		desc_id = "menu_pp_mobsterclub_gatekey_desc",
		category = "mission_equipment",
		icon = 43,
		total = 1,
		post_event = "preplan_07",
		cost = 2000,
		budget_cost = 4,
		prio = 2
	}

		self.types.score_gatekey = {
		name_id = "menu_pp_score_gatekey",
		desc_id = "menu_pp_score_gatekey_desc",
		category = "mission_equipment",
		icon = 43,
		total = 1,
		post_event = "preplan_07",
		cost = 2000,
		budget_cost = 2,
		prio = 2
	}
	
	self.types.cresort_default_turret = {
		name_id = "menu_pp_cresort_default_turret",
		desc_id = "menu_pp_cresort_default_turret_desc",
		plan = "vault_plan",
		pos_not_important = false,
		category = "vault_plan",
		icon = 12,
		total = 1,
		cost = 0,
		budget_cost = 0,
		post_event = "preplan_17",
		prio = 5
	}
	
	self.types.cresort_enhanced_turret = {
		name_id = "menu_pp_cresort_enhanced_turret",
		desc_id = "menu_pp_cresort_enhanced_turret_desc",
		plan = "vault_plan",
		pos_not_important = false,
		category = "vault_plan",
		icon = 12,
		total = 1,
		cost = 2000,
		budget_cost = 4,
		post_event = "preplan_17",
		prio = 5
	}	
	
	self.types.cresort_overcharged_turret = {
		name_id = "menu_pp_cresort_overcharged_turret",
		desc_id = "menu_pp_cresort_overcharged_turret_desc",
		plan = "vault_plan",
		pos_not_important = false,
		category = "vault_plan",
		icon = 12,
		total = 1,
		cost = 4000,
		budget_cost = 6,
		post_event = "preplan_17",
		prio = 5
	}	
	
	
	
		self.types.crestaurant_default_hack = {
		name_id = "menu_pp_crestaurant_default_hack",
		desc_id = "menu_pp_crestaurant_default_hack_desc",
		plan = "vault_plan",
		pos_not_important = false,
		category = "vault_plan",
		icon = 71,
		total = 1,
		cost = 0,
		budget_cost = 0,
		post_event = "preplan_17",
		prio = 5
	}
	
	self.types.crestaurant_experimental_hack = {
		name_id = "menu_pp_crestaurant_experimental_hack",
		desc_id = "menu_pp_crestaurant_experimental_hack_desc",
		plan = "vault_plan",
		pos_not_important = false,
		category = "vault_plan",
		icon = 71,
		total = 1,
		cost = 2000,
		budget_cost = 6,
		post_event = "preplan_17",
		prio = 5
	}	
	
	self.types.crestaurant_military_hack = {
		name_id = "menu_pp_crestaurant_military_hack",
		desc_id = "menu_pp_crestaurant_military_hack_desc",
		plan = "vault_plan",
		pos_not_important = false,
		category = "vault_plan",
		icon = 71,
		total = 1,
		cost = 4000,
		budget_cost = 8,
		post_event = "preplan_17",
		prio = 5
	}
	
	
	
		self.types.cresort_expert_pilot = {
		name_id = "menu_pp_score_expert_pilot",
		desc_id = "menu_pp_score_expert_pilot_desc",
		pos_not_important = false,
		category = "hired_help",
		icon = 73,
		total = 1,
		cost = 2000,
		budget_cost = 4,
		post_event = "preplan_17",
		prio = 3
	}
	self.types.cresort_sabatoge_helicopter = {
		name_id = "menu_pp_cresort_sabatoge_helicopter",
		desc_id = "menu_pp_cresort_sabatoge_helicopter_desc",
		category = "hired_help",
		icon = 95,
		total = 1,
		post_event = "preplan_17",
		cost = 2000,
		budget_cost = 6,
		prio = 2
	}
	
	self.types.cresort_turret_autorestart = {
		name_id = "menu_pp_cresort_turret_autorestart",
		desc_id = "menu_pp_cresort_turret_autorestart_desc",
		category = "BFD_attachments",
		icon = 12,
		total = 1,
		post_event = "preplan_16",
		cost = 2000,
		budget_cost = 2,
		prio = 2
	}
	self.types.cresort_keycard = {
		name_id = "menu_pp_asset_cresort_keycard",
		desc_id = "menu_pp_asset_cresort_keycard_desc",
		category = "mission_equipment",
		icon = 53,
		total = 1,
		cost = 2000,
		budget_cost = 4,
		post_event = "preplan_16",
		prio = 2
	}

	self.types.cresort_disable_guards = {
		name_id = "menu_pp_asset_cresort_disable_guards",
		desc_id = "menu_pp_asset_cresort_disable_guards_desc",
		category = "hired_help",
		icon = 95,
		total = 1,
		cost = 2000,
		budget_cost = 6,
		post_event = "preplan_09",
		prio = 1
	}	
	self.types.cresort_disable_camera = {
		name_id = "menu_pp_asset_cresort_disable_camera",
		desc_id = "menu_pp_asset_cresort_disable_camera_desc",
		category = "data_hacking",
		icon = 71,
		total = 1,
		cost = 2000,
		budget_cost = 6,
		post_event = "preplan_09",
		prio = 1
	}	
	
	
	self.types.cgold_default_hack = {
		name_id = "menu_pp_cgold_default_hack",
		desc_id = "menu_pp_cgold_default_hack_desc",
		plan = "entry_plan",
		pos_not_important = false,
		category = "entry_plan",
		icon = 71,
		total = 1,
		cost = 0,
		budget_cost = 0,
		post_event = "preplan_17",
		prio = 5
	}
	
	self.types.cgold_c4_entry = {
		name_id = "menu_pp_cgold_c4_entry",
		desc_id = "menu_pp_cgold_c4_entry_desc",
		plan = "entry_plan",
		pos_not_important = false,
		category = "entry_plan",
		icon = 95,
		total = 1,
		cost = 2000,
		budget_cost = 6,
		post_event = "preplan_17",
		prio = 5
	}	
	
	self.types.cgold_timer_reduce = {
		name_id = "menu_pp_cgold_timer_reduce",
		desc_id = "menu_pp_cgold_timer_reduce_desc",
		category = "data_hacking",
		icon = 42,
		total = 1,
		post_event = "preplan_16",
		cost = 2000,
		budget_cost = 6,
		prio = 2
	}
	
	
	self.types.cgold_deposit_hack = {
		name_id = "menu_pp_cgold_deposit_hack",
		desc_id = "menu_pp_cgold_deposit_hack_desc",
		category = "data_hacking",
		icon = 71,
		total = 1,
		post_event = "preplan_16",
		cost = 2000,
		budget_cost = 2,
		prio = 2
	}
	
	
	
	self.types.score_secure_elevator = {
		name_id = "menu_pp_asset_score_secure_elevator",
		desc_id = "menu_pp_asset_score_secure_elevator_desc",
		category = "hired_help",
		icon = 34,
		total = 1,
		post_event = "preplan_16",
		prio = 1,
		cost = 1000,
		budget_cost = 6
	}
	
	
	if Global.game_settings and Global.game_settings.one_down then
		self.types.score_backupcrew.upgrade_lock = {
		upgrade = "additional_assets_pro",
		category = "player"
	}
end
	
	
	
end)

Hooks:PostHook(PrePlanningTweakData,"_create_locations","_constantine_ondisplay_lvl",function(self)

	self.locations.constantine_ondisplay_lvl = {
		mission_briefing_texture = "textures/DisplayFirstFloor",
		total_budget = 10,
		default_plans = {
		},
			{
			texture = "textures/DisplayFirstFloor",
			name_id = "menu_pp_constantine_ondisplay_a",
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
			name_id = "menu_pp_constantine_ondisplay_b",
			rotation = 0,
			map_size = 0.35,
			map_x = 0.00,
			map_y = -0.50,
			x1 = 0,
			y1 =  -2000,
			x2 = 2000,
			y2 = 2000,


			custom_points = {}
		},
	
		{
			texture = "textures/Outside",
			name_id = "menu_pp_constantine_ondisplay_c",
			rotation = 0,
			map_size = 0.35,
			map_x = 0.25,
			map_y = -0.17,
			x1 = 0,
			y1 =  -2000,
			x2 = 2000,
			y2 = 2000,



			custom_points = {}
		},

		start_location = {
			group = "a",
			zoom = 0,
			x = 0,
			y = 1024
		}
	}
	
	
	
		self.locations.constantine_clubhouse_lvl = {
		mission_briefing_texture = "textures/ClubhouseFirstFloor",
		total_budget = 10,
		default_plans = {
		},
			{
			texture = "textures/ClubhouseFirstFloor",
			name_id = "menu_pp_constantine_clubhouse_a",
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
			name_id = "menu_pp_constantine_clubhouse_b",
			rotation = 0,
			map_size = 0.35,
			map_x = -0.30,
			map_y = -0.45,
			x1 = 0,
			y1 =  -2000,
			x2 = 2000,
			y2 = 2000,


			custom_points = {}
		},
	
		{
			texture = "textures/Outside",
			name_id = "menu_pp_constantine_clubhouse_c",
			rotation = 0,
			map_size = 0.30,
			map_x = -0.30,
			map_y = -0.15,
			x1 = 0,
			y1 =  -2000,
			x2 = 2000,
			y2 = 2000,



			custom_points = {}
		},

		start_location = {
			group = "a",
			zoom = 0,
			x = 0,
			y = 1024
		}
	}
	
		self.locations.constantine_apartment_lvl = {
		mission_briefing_texture = "textures/MotelFirstFloor",
		total_budget = 10,
		default_plans = {
		},
			{
			texture = "textures/MotelFirstFloor",
			name_id = "menu_pp_constantine_apartment_a",
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
			name_id = "menu_pp_constantine_apartment_b",
			rotation = 0,
			map_size = 0.35,
			map_x = 0.25,
			map_y = 0.40,
			x1 = 0,
			y1 =  -2000,
			x2 = 2000,
			y2 = 2000,


			custom_points = {}
		},
	
		{
			texture = "textures/Outside",
			name_id = "menu_pp_constantine_apartment_c",
			rotation = 0,
			map_size = 0.30,
			map_x = -0.30,
			map_y = -0.15,
			x1 = 0,
			y1 =  -2000,
			x2 = 2000,
			y2 = 2000,



			custom_points = {}
		},

		start_location = {
			group = "a",
			zoom = 0,
			x = 0,
			y = 1024
		}
	}	
	
self.locations.constantine_mobsterclub_lvl = {
		mission_briefing_texture = "textures/MobsterClubFirstFloor",
		total_budget = 10,
		default_plans = {
		},
			{
			texture = "textures/MobsterClubFirstFloor",
			name_id = "menu_pp_constantine_mobsterclub_a",
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
			name_id = "menu_pp_constantine_mobsterclub_b",
			rotation = 0,
			map_size = 0.40,
			map_x = -0.20,
			map_y = -0.50,
			x1 = 0,
			y1 =  -2000,
			x2 = 2000,
			y2 = 2000,


			custom_points = {}
		},
	
		{
			texture = "textures/Outside",
			name_id = "menu_pp_constantine_mobsterclub_c",
			rotation = 0,
			map_size = 0.30,
			map_x = 0.0,
			map_y = -0.60,
			x1 = 0,
			y1 =  -2000,
			x2 = 2000,
			y2 = 2000,



			custom_points = {}
		},

		start_location = {
			group = "a",
			zoom = 0,
			x = 0,
			y = 1024
		}
	}	
		
		
self.locations.constantine_butcher_lvl = {
		mission_briefing_texture = "textures/ButcherFirstFloor",
		total_budget = 10,
		default_plans = {
		},
			{
			texture = "textures/ButcherFirstFloor",
			name_id = "menu_pp_constantine_butcher_a",
			rotation = 0,
			map_size = 1,
			map_x = 0.0,
			map_y = 0,
			x1 = -7741,
			y1 =  5000,
			x2 = -18957,
			y2 = 8000,

			custom_points = {}
		},	
		{
			texture = "textures/Empty",
			name_id = "menu_pp_constantine_butcher_b",
			rotation = 0,
			map_size = 0.50,
			map_x = 0.70,
			map_y = 0.15,
			x1 = -7741,
			y1 =  5000,
			x2 = -18957,
			y2 = 8000,


			custom_points = {}
		},
	
		{
			texture = "textures/Outside",
			name_id = "menu_pp_constantine_butcher_c",
			rotation = 0,
			map_size = 0.50,
			map_x = 0.30,
			map_y = 0.10,
			x1 = -7741,
			y1 =  5000,
			x2 = -18957,
			y2 = 8000,



			custom_points = {}
		},

		start_location = {
			group = "a",
			zoom = 0,
			x = 0,
			y = 1024
		}
	}		
			
				
	

	self.locations.constantine_mansion_lvl = {
		mission_briefing_texture = "textures/MansionFirstFloor",
		total_budget = 10,
		default_plans = {
			entry_plan = "cmansion_boat",
		},
			{
			texture = "textures/MansionFirstFloor",
			name_id = "menu_pp_constantine_mansion_a",
			rotation = 0,
			map_size = 1,
			map_x = 0.0,
			map_y = 0,
			x1 = -2550,
			y1 =  3660,
			x2 = 6881,
			y2 = -3000,

			custom_points = {}
		},	
		{
			texture = "textures/Empty",
			name_id = "menu_pp_constantine_mansion_b",
			rotation = 0,
			map_size = 0.85,
			map_x = -0.20,
			map_y = -0.750,
			x1 = -2550,
			y1 =  3660,
			x2 = 6881,
			y2 = -3000,


			custom_points = {}
		},
	
		{
			texture = "textures/Outside",
			name_id = "menu_pp_constantine_mansion_c",
			rotation = 0,
			map_size = 0.85,
			map_x = -0.20,
			map_y = -0.750,
			x1 = -2550,
			y1 =  3660,
			x2 = 6881,
			y2 = -3000,


			custom_points = {}
		},

		start_location = {
			group = "a",
			zoom = 0,
			x = 0,
			y = 1024
		}
	}	
				
		







	self.locations.constantine_gunrunnerclubhouse_lvl = {
		mission_briefing_texture = "textures/GunrunnerClubhouseFirstFloor",
		total_budget = 10,
		default_plans = {
		},
			{
			texture = "textures/GunrunnerClubhouseFirstFloor",
			name_id = "menu_pp_constantine_gunrunnerclubhouse_a",
			rotation = 0,
			map_size = 1,
			map_x = 0.0,
			map_y = 0,
			x1 = -2550,
			y1 =  3660,
			x2 = 6881,
			y2 = -3000,

			custom_points = {}
		},	
		{
			texture = "textures/Empty",
			name_id = "menu_pp_constantine_gunrunnerclubhouse_b",
			rotation = 0,
			map_size = 0.95,
			map_x = -0.15,
			map_y = -0.850,
			x1 = -2550,
			y1 =  3660,
			x2 = 6881,
			y2 = -3000,


			custom_points = {}
		},
	
		{
			texture = "textures/Outside",
			name_id = "menu_pp_constantine_gunrunnerclubhouse_c",
			rotation = 0,
			map_size = 0.95,
			map_x = -0.15,
			map_y = -0.600,
			x1 = -2550,
			y1 =  3660,
			x2 = 6881,
			y2 = -3000,


			custom_points = {}
		},

		start_location = {
			group = "a",
			zoom = 0,
			x = 0,
			y = 1024
		}
	}	
				
		







	self.locations.constantine_resort_lvl = {
		mission_briefing_texture = "textures/ResortFirstFloor",
		total_budget = 12,
		default_plans = {
			vault_plan = "cresort_default_turret",
		},
			{
			texture = "textures/ResortFirstFloor",
			name_id = "menu_pp_constantine_resort_a",
			rotation = 0,
			map_size = 1,
			map_x = 0.0,
			map_y = 0,
			x1 = -2550,
			y1 =  3660,
			x2 = 6881,
			y2 = -3000,

			custom_points = {}
		},	
		{
			texture = "textures/Empty",
			name_id = "menu_pp_constantine_resort_b",
			rotation = 0,
			map_size = 0.85,
			map_x = -0.20,
			map_y = -0.750,
			x1 = -2550,
			y1 =  3660,
			x2 = 6881,
			y2 = -3000,


			custom_points = {}
		},
	
		{
			texture = "textures/Outside",
			name_id = "menu_pp_constantine_resort_c",
			rotation = 0,
			map_size = 0.85,
			map_x = 0.0,
			map_y = -0.750,
			x1 = -2550,
			y1 =  3660,
			x2 = 6881,
			y2 = -3000,


			custom_points = {}
		},

		start_location = {
			group = "a",
			zoom = 0,
			x = 0,
			y = 1024
		}
	}	
			


	self.locations.constantine_restaurant_lvl = {
		mission_briefing_texture = "textures/RestaurantFirstFloor",
		total_budget = 10,
		default_plans = {
		vault_plan = "crestaurant_default_hack",
		},
			{
			texture = "textures/RestaurantFirstFloor",
			name_id = "menu_pp_constantine_restaurant_a",
			rotation = 0,
			map_size = 1,
			map_x = 0.0,
			map_y = 0,
			x1 = -1009,
			y1 =  -49,
			x2 = 1961,
			y2 = 4000,

			custom_points = {}
		},	
		{
			texture = "textures/Empty",
			name_id = "menu_pp_constantine_restaurant_b",
			rotation = 0,
			map_size = 0.95,
			map_x = 0.00,
			map_y = -0.0,
			x1 = -1009,
			y1 =  -49,
			x2 = 1961,
			y2 = 4000,

			custom_points = {}
		},
	
		{
			texture = "textures/Outside",
			name_id = "menu_pp_constantine_restaurant_c",
			rotation = 0,
			map_size = 0.95,
			map_x = 0.00,
			map_y = -0.2,
			x1 = -1009,
			y1 =  -49,
			x2 = 1961,
			y2 = 4000,


			custom_points = {}
		},

		start_location = {
			group = "a",
			zoom = 0,
			x = 0,
			y = 1024
		}
	}	
			
	self.locations.constantine_gold_lvl = {
		mission_briefing_texture = "textures/GoldFirstFloor",
		total_budget = 10,
		default_plans = {
		entry_plan = "cgold_default_hack",
		},
			{
			texture = "textures/GoldFirstFloor",
			name_id = "menu_pp_constantine_gold_a",
			rotation = 0,
			map_size = 1,
			map_x = 0.0,
			map_y = 0,
			x1 = -1009,
			y1 =  -49,
			x2 = 1961,
			y2 = 4000,

			custom_points = {}
		},	
		{
			texture = "textures/Empty",
			name_id = "menu_pp_constantine_gold_b",
			rotation = 0,
			map_size = 0.95,
			map_x = -0.20,
			map_y = -0.0,
			x1 = -1009,
			y1 =  -49,
			x2 = 1961,
			y2 = 4000,

			custom_points = {}
		},
	
		{
			texture = "textures/Outside",
			name_id = "menu_pp_constantine_gold_c",
			rotation = 0,
			map_size = 0.95,
			map_x = -0.20,
			map_y = -0.2,
			x1 = -1009,
			y1 =  -49,
			x2 = 1961,
			y2 = 4000,


			custom_points = {}
		},

		start_location = {
			group = "a",
			zoom = 0,
			x = 0,
			y = 1024
		}
	}	


	
		
end)