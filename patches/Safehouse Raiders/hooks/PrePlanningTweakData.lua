Hooks:PostHook(PrePlanningTweakData,"init","init_sh_raiders",function(self)

	self:_create_locations(tweak_data)
	
	self.plans.distractions = {
        category = "distractions"
    }
	
	self.categories.distractions = {
		name_id = "menu_pp_cat_distractions",
		desc_id = "menu_pp_cat_distractions_desc",
		icon = 94,
		prio = 20
	}

	self.types.upload_device = {
		name_id = "menu_upload_device_name",
		desc_id = "menu_upload_device_desc",
		category = "mission_equipment",
		post_event = "preplan_15",
		prio = 1,
		icon = 93,
		total = 1,
		cost = 5000,
		budget_cost = 3
		}

	self.types.wall_ladder = {
		name_id = "menu_wall_ladder_name",
		desc_id = "menu_wall_ladder_desc",
		category = "mission_equipment",
		post_event = "preplan_15",
		prio = 2,
		icon = 63,
		total = 1,
		cost = 2000,
		budget_cost = 2
		}

	self.types.car_crash = {
		name_id = "menu_car_crash_name",
		desc_id = "menu_car_crash_desc",
		category = "distractions",
		post_event = "preplan_15",
		prio = 3,
		icon = 94,
		total = 1,
		cost = 3000,
		budget_cost = 4
		}

	self.types.drug_deal = {
		name_id = "menu_drug_deal_name",
		desc_id = "menu_drug_deal_desc",
		category = "distractions",
		post_event = "none",
		prio = 2,
		icon = 94,
		total = 1,
		cost = 4000,
		budget_cost = 5
		}

	self.types.sh_party = {
		name_id = "menu_sh_party_name",
		desc_id = "menu_sh_party_desc",
		category = "distractions",
		post_event = "none",
		prio = 1,
		icon = 94,
		total = 1,
		cost = 5000,
		budget_cost = 5,
		upgrade_lock = {
			upgrade = "additional_assets",
			category = "player"
			}
		}

	self.types.truck_secure = {
		name_id = "menu_truck_secure_name",
		desc_id = "menu_truck_secure_desc",
		category = "hired_help",
		post_event = "preplan_16",
		prio = 2,
		icon = 34,
		total = 1,
		cost = 3500,
		budget_cost = 5
		}

	self.types.container_secure = {
		name_id = "menu_container_secure_name",
		desc_id = "menu_container_secure_desc",
		category = "hired_help",
		post_event = "preplan_16",
		prio = 1,
		icon = 34,
		total = 1,
		cost = 5000,
		budget_cost = 8,
		upgrade_lock = {
			upgrade = "additional_assets",
			category = "player"
			}
		}

	if Global.game_settings and Global.game_settings.one_down then
			self.types.truck_secure.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
			self.types.container_secure.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
	end
	
end)

Hooks:PostHook(PrePlanningTweakData,"_create_locations","_sh_raiders",function(self)

	self.locations.sh_raiders = {
		{
			texture = "textures/outside",
			name_id = "menu_sh_raiders_a",
			rotation = 0,
			map_size = 1,
			map_x = 0,
			map_y = 0,
			x1 = -4000,
			y1 = -3200,
			x2 = 6400,
			y2 = 3200,
			custom_points = {}
		},
		{
			texture = "textures/warehouse",
			name_id = "menu_sh_raiders_b",
			rotation = 0,
			map_size = 1,
			map_x = 1.2,
			map_y = 0,
			x1 = -3200,
			y1 = -6837,
			x2 = 1600,
			y2 = 0,
			custom_points = {}
		},
		{
			texture = "textures/safehouse",
			name_id = "menu_sh_raiders_c",
			rotation = 0,
			map_size = 1,
			map_x = 0.5,
			map_y = 1.1,
			x1 = -3200,
			y1 = -6837,
			x2 = 1600,
			y2 = 0,
			custom_points = {}
		},
		{
			texture = "textures/safehousetext",
			name_id = "menu_sh_raiders_d",
			rotation = 0,
			map_size = 0.5,
			map_x = 1.4,
			map_y = 1.1,
			x1 = -3200,
			y1 = -6837,
			x2 = 1600,
			y2 = 0,
			custom_points = {}
		},
		mission_briefing_texture = "textures/preview",
		total_budget = 10,
		default_plans = {

		},
		start_location = {
			group = "a",
			zoom = 1,
			x = 1024,
			y = 1024
		}
	}
end)
