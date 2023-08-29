PrePlanningTweakData.btms_init = PrePlanningTweakData.init
PrePlanningTweakData.btms_create_locations = PrePlanningTweakData._create_locations

function PrePlanningTweakData:init(tweak_data)
	
	PrePlanningTweakData:btms_init(tweak_data)

	self.gui = {
		custom_icons_path = "guis/dlcs/big_bank/textures/pd2/pre_planning/preplan_icon_types",
		type_icons_path = "guis/dlcs/big_bank/textures/pd2/pre_planning/preplan_icon_types",
		category_icons_path = "guis/dlcs/big_bank/textures/pd2/pre_planning/preplan_icon_frames",
		category_icons_bg = 42,
		MAX_DRAW_POINTS = 999999999999999999999999999999999999999999999999999999999999999999999999999
	}

	self.categories.surveillance = {
		name_id = "menu_pp_cat_surveillance",
		desc_id = "menu_pp_cat_surveillance_desc",
		icon = 41,
		prio = 4
	}

	self.categories.default.name_id = "menu_pp_cat_default"
	self.categories.default.desc_id = "menu_pp_cat_default_desc"
	self.categories.default.icon = 32
	self.categories.default.prio = 0
	self.categories.dead_drop = {
		name_id = "menu_pp_cat_dead_drop",
		desc_id = "menu_pp_cat_dead_drop_desc",
		icon = 22,
		prio = 5
	}

	self.types.bodybags_bag = {
		name_id = "menu_pp_asset_bodybags_bag",
		desc_id = "menu_pp_asset_bodybags_bag_desc",
		deployable_id = "bodybags_bag",
		icon = 13,
		category = "dead_drop",
		upgrade_lock = {
			upgrade = "buy_bodybags_asset",
			category = "player"
		},
		total = 2,
		cost = tweak_data:get_value("money_manager", "preplaning_asset_cost_deaddropbag"),
		budget_cost = 2,
		post_event = "gus_preplan_15",
		prio = 3
	}

	self.types.camera_access = {
		name_id = "menu_pp_camera_access",
		desc_id = "menu_pp_camera_access_desc",
		category = "surveillance",
		icon = 24,
		total = 1,
		cost = tweak_data:get_value("money_manager", "preplaning_asset_cost_accesscameras"),
		budget_cost = 2,
		post_event = "gus_preplan_16",
		prio = 8
	}

	self.types.spycam = {
		name_id = "menu_asset_spycam",
		desc_id = "menu_asset_spycam_desc",
		category = "surveillance",
		upgrade_lock = {
			upgrade = "buy_spotter_asset",
			category = "player"
		},
		look_angle = {
			length = 0.5,
			angle = 80,
			color = Color(192, 255, 51, 51) / 255
		},
		icon = 35,
		total = 3,
		cost = tweak_data:get_value("money_manager", "preplaning_asset_cost_spycam"),
		budget_cost = 2,
		post_event = "gus_preplan_14",
		prio = 3
	}

end

function PrePlanningTweakData:_create_locations(tweak_data)

	PrePlanningTweakData:btms_create_locations(tweak_data)

	self.locations.btms = {
		{
			texture = "guis/dlcs/berry/textures/pd2/pre_planning/base_01",
			name_id = "menu_pp_berry_bpr_loc_a",
			rotation = 90,
			map_size = 1,
			map_x = -0.55,
			map_y = 0,
			x1 = -15000,
			y1 = -7600,
			x2 = -5000,
			y2 = 2400,
			custom_points = {}
		},
		{
			texture = "guis/dlcs/berry/textures/pd2/pre_planning/base_02",
			name_id = "menu_pp_berry_bpr_loc_b",
			rotation = 0,
			map_size = 1,
			map_x = 0.55,
			map_y = 0,
			x1 = -15100,
			y1 = -8000,
			x2 = -5100,
			y2 = 2000,
			custom_points = {}
		},
		{
			texture = "textures/btms_preplanning",
			name_id = "btms_preplanning_1",
			rotation = 0,
			map_size = 1,
			map_x = 1.65,
			map_y = 0,
			x1 = -3000,
			y1 = -7400,
			x2 = 9100,
			y2 = 5300,
			custom_points = {}
		},
		mission_briefing_texture = "guis/dlcs/berry/textures/pd2/pre_planning/mission_briefing_pbr",
		total_budget = 10,
		default_plans = {},
		start_location = {
			group = "a",
			zoom = 1,
			x = 1024,
			y = 1024
		}
	}
end
