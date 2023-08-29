Hooks:PostHook(PrePlanningTweakData,"init","init_TonCont",function(self)

	self:_create_locations(tweak_data)
	
	self.plans = {
		escape_plan = {}
	}
	
	self.plans.arm_hit = {
		category = "arm_hit"
	}
	
	self.categories.arm_hit = {
		name_id = "menu_pp_cat_arm_hit",
		desc_id = "menu_pp_cat_arm_hit_desc",
		plan = "arm_hit",
		icon = 102,
		total = 1,
		prio = 1
	}
	
	self.plans.arm_cont = {
		category = "arm_cont"
	}
	
	self.categories.arm_cont = {
		name_id = "menu_pp_cat_arm_cont",
		desc_id = "menu_pp_cat_arm_cont_desc",
		plan = "arm_cont",
		icon = 34,
		total = 1,
		prio = 1
	}
	
	self.plans.arm_amount = {
		category = "arm_amount"
	}
	
	self.categories.arm_amount = {
		name_id = "menu_pp_cat_arm_amount",
		desc_id = "menu_pp_cat_arm_amount_desc",
		plan = "arm_amount",
		icon = 102,
		total = 1,
		prio = 1
	}
	
	self.plans.arm_esc = {
		category = "arm_esc"
	}
	
	self.categories.arm_esc = {
		name_id = "menu_pp_cat_arm_esc",
		desc_id = "menu_pp_cat_arm_esc_desc",
		plan = "arm_esc",
		icon = 102,
		total = 1,
		prio = 1
	}
	
	self.plans.arm_cover = {
		category = "hired_help"
	}
	
	self.categories.arm_cover = {
		name_id = "menu_pp_cat_arm_cover",
		desc_id = "menu_pp_cat_arm_cover_desc",
		plan = "arm_cover",
		icon = 102,
		total = 2,
		prio = 1
	}
	
	self.types.TonCont_arm_amount_random = {}
	self.types.TonCont_arm_amount_random.name_id = "TonCont_arm_amount_random"
	self.types.TonCont_arm_amount_random.desc_id = "TonCont_arm_amount_random_desc"
	self.types.TonCont_arm_amount_random.category = "arm_amount"
	self.types.TonCont_arm_amount_random.plan = "arm_amount"
	self.types.TonCont_arm_amount_random.icon = 103
	self.types.TonCont_arm_amount_random.total = 1
	self.types.TonCont_arm_amount_random.post_event = "gus_preplan_12"
	self.types.TonCont_arm_amount_random.prio = 4
	self.types.TonCont_arm_amount_random.budget_cost = 0
	self.types.TonCont_arm_amount_random.cost = 0
	self.types.TonCont_arm_amount_random.pos_not_important = false
	
	self.types.TonCont_arm_amount_small = {}
	self.types.TonCont_arm_amount_small.name_id = "TonCont_arm_amount_small"
	self.types.TonCont_arm_amount_small.desc_id = "TonCont_arm_amount_small_desc"
	self.types.TonCont_arm_amount_small.category = "arm_amount"
	self.types.TonCont_arm_amount_small.plan = "arm_amount"
	self.types.TonCont_arm_amount_small.icon = 71
	self.types.TonCont_arm_amount_small.total = 1
	self.types.TonCont_arm_amount_small.post_event = "gus_preplan_12"
	self.types.TonCont_arm_amount_small.prio = 4
	self.types.TonCont_arm_amount_small.budget_cost = 1
	self.types.TonCont_arm_amount_small.cost = 10000
	self.types.TonCont_arm_amount_small.pos_not_important = false
	self.types.TonCont_arm_amount_small.upgrade_lock = {
		upgrade = "additional_assets",
		category = "player"
	}
	
	self.types.TonCont_arm_amount_medium = {}
	self.types.TonCont_arm_amount_medium.name_id = "TonCont_arm_amount_medium"
	self.types.TonCont_arm_amount_medium.desc_id = "TonCont_arm_amount_medium_desc"
	self.types.TonCont_arm_amount_medium.category = "arm_amount"
	self.types.TonCont_arm_amount_medium.plan = "arm_amount"
	self.types.TonCont_arm_amount_medium.icon = 71
	self.types.TonCont_arm_amount_medium.total = 1
	self.types.TonCont_arm_amount_medium.post_event = "gus_preplan_12"
	self.types.TonCont_arm_amount_medium.prio = 4
	self.types.TonCont_arm_amount_medium.budget_cost = 3
	self.types.TonCont_arm_amount_medium.cost = 15000
	self.types.TonCont_arm_amount_medium.pos_not_important = false
	self.types.TonCont_arm_amount_medium.upgrade_lock = {
		upgrade = "additional_assets",
		category = "player"
	}
	
	self.types.TonCont_arm_amount_big = {}
	self.types.TonCont_arm_amount_big.name_id = "TonCont_arm_amount_big"
	self.types.TonCont_arm_amount_big.desc_id = "TonCont_arm_amount_big_desc"
	self.types.TonCont_arm_amount_big.category = "arm_amount"
	self.types.TonCont_arm_amount_big.plan = "arm_amount"
	self.types.TonCont_arm_amount_big.icon = 71
	self.types.TonCont_arm_amount_big.total = 1
	self.types.TonCont_arm_amount_big.post_event = "gus_preplan_12"
	self.types.TonCont_arm_amount_big.prio = 4
	self.types.TonCont_arm_amount_big.budget_cost = 6
	self.types.TonCont_arm_amount_big.cost = 25000
	self.types.TonCont_arm_amount_big.pos_not_important = false
	self.types.TonCont_arm_amount_big.upgrade_lock = {
		upgrade = "additional_assets",
		category = "player"
	}
	
	self.types.TonCont_arm_loot_random = {}
	self.types.TonCont_arm_loot_random.name_id = "TonCont_arm_loot_random"
	self.types.TonCont_arm_loot_random.desc_id = "TonCont_arm_loot_random_desc"
	self.types.TonCont_arm_loot_random.category = "arm_cont"
	self.types.TonCont_arm_loot_random.plan = "arm_cont"
	self.types.TonCont_arm_loot_random.icon = 103
	self.types.TonCont_arm_loot_random.total = 1
	self.types.TonCont_arm_loot_random.post_event = "gus_preplan_12"
	self.types.TonCont_arm_loot_random.prio = 5
	self.types.TonCont_arm_loot_random.budget_cost = 0
	self.types.TonCont_arm_loot_random.cost = 0
	self.types.TonCont_arm_loot_random.pos_not_important = false
	
	self.types.TonCont_arm_loot_money = {}
	self.types.TonCont_arm_loot_money.name_id = "TonCont_arm_loot_money"
	self.types.TonCont_arm_loot_money.desc_id = "TonCont_arm_loot_money_desc"
	self.types.TonCont_arm_loot_money.category = "arm_cont"
	self.types.TonCont_arm_loot_money.plan = "arm_cont"
	self.types.TonCont_arm_loot_money.icon = 34
	self.types.TonCont_arm_loot_money.total = 1
	self.types.TonCont_arm_loot_money.post_event = "gus_preplan_12"
	self.types.TonCont_arm_loot_money.prio = 2
	self.types.TonCont_arm_loot_money.budget_cost = 2
	self.types.TonCont_arm_loot_money.cost = 15000
	self.types.TonCont_arm_loot_money.pos_not_important = false
	self.types.TonCont_arm_loot_money.upgrade_lock = {
		upgrade = "additional_assets",
		category = "player"
	}
	
	self.types.TonCont_arm_loot_gold = {}
	self.types.TonCont_arm_loot_gold.name_id = "TonCont_arm_loot_gold"
	self.types.TonCont_arm_loot_gold.desc_id = "TonCont_arm_loot_gold_desc"
	self.types.TonCont_arm_loot_gold.category = "arm_cont"
	self.types.TonCont_arm_loot_gold.plan = "arm_cont"
	self.types.TonCont_arm_loot_gold.icon = 34
	self.types.TonCont_arm_loot_gold.total = 1
	self.types.TonCont_arm_loot_gold.post_event = "gus_preplan_12"
	self.types.TonCont_arm_loot_gold.prio = 1
	self.types.TonCont_arm_loot_gold.budget_cost = 3
	self.types.TonCont_arm_loot_gold.cost = 30000
	self.types.TonCont_arm_loot_gold.pos_not_important = false
	self.types.TonCont_arm_loot_gold.upgrade_lock = {
		upgrade = "additional_assets",
		category = "player"
	}
	
	self.types.TonCont_arm_loot_art = {}
	self.types.TonCont_arm_loot_art.name_id = "TonCont_arm_loot_art"
	self.types.TonCont_arm_loot_art.desc_id = "TonCont_arm_loot_art_desc"
	self.types.TonCont_arm_loot_art.category = "arm_cont"
	self.types.TonCont_arm_loot_art.plan = "arm_cont"
	self.types.TonCont_arm_loot_art.icon = 34
	self.types.TonCont_arm_loot_art.total = 1
	self.types.TonCont_arm_loot_art.post_event = "gus_preplan_12"
	self.types.TonCont_arm_loot_art.prio = 4
	self.types.TonCont_arm_loot_art.budget_cost = 1
	self.types.TonCont_arm_loot_art.cost = 10000
	self.types.TonCont_arm_loot_art.pos_not_important = false
	self.types.TonCont_arm_loot_art.upgrade_lock = {
		upgrade = "additional_assets",
		category = "player"
	}
	
	self.types.TonCont_arm_loot_mixed = {}
	self.types.TonCont_arm_loot_mixed.name_id = "TonCont_arm_loot_mixed"
	self.types.TonCont_arm_loot_mixed.desc_id = "TonCont_arm_loot_mixed_desc"
	self.types.TonCont_arm_loot_mixed.category = "arm_cont"
	self.types.TonCont_arm_loot_mixed.plan = "arm_cont"
	self.types.TonCont_arm_loot_mixed.icon = 34
	self.types.TonCont_arm_loot_mixed.total = 1
	self.types.TonCont_arm_loot_mixed.post_event = "gus_preplan_12"
	self.types.TonCont_arm_loot_mixed.prio = 3
	self.types.TonCont_arm_loot_mixed.budget_cost = 2
	self.types.TonCont_arm_loot_mixed.cost = 20000
	self.types.TonCont_arm_loot_mixed.pos_not_important = false
	self.types.TonCont_arm_loot_mixed.upgrade_lock = {
		upgrade = "additional_assets",
		category = "player"
	}
	
	self.types.TonCont_arm_locr_hitr = {}
	self.types.TonCont_arm_locr_hitr.name_id = "TonCont_arm_locr_hitr"
	self.types.TonCont_arm_locr_hitr.desc_id = "TonCont_arm_locr_hitr_desc"
	self.types.TonCont_arm_locr_hitr.category = "arm_hit"
	self.types.TonCont_arm_locr_hitr.plan = "arm_hit"
	self.types.TonCont_arm_locr_hitr.icon = 103
	self.types.TonCont_arm_locr_hitr.total = 1
	self.types.TonCont_arm_locr_hitr.post_event = "gus_preplan_12"
	self.types.TonCont_arm_locr_hitr.prio = 1
	self.types.TonCont_arm_locr_hitr.budget_cost = 0
	self.types.TonCont_arm_locr_hitr.cost = 0
	self.types.TonCont_arm_locr_hitr.pos_not_important = false
	
	self.types.TonCont_arm_loc1_hit1 = {}
	self.types.TonCont_arm_loc1_hit1.name_id = "TonCont_arm_loc1_hit1"
	self.types.TonCont_arm_loc1_hit1.desc_id = "TonCont_arm_loc1_hit1_desc"
	self.types.TonCont_arm_loc1_hit1.category = "arm_hit"
	self.types.TonCont_arm_loc1_hit1.plan = "arm_hit"
	self.types.TonCont_arm_loc1_hit1.icon = 102
	self.types.TonCont_arm_loc1_hit1.total = 1
	self.types.TonCont_arm_loc1_hit1.post_event = "gus_preplan_12"
	self.types.TonCont_arm_loc1_hit1.prio = 3
	self.types.TonCont_arm_loc1_hit1.budget_cost = 1
	self.types.TonCont_arm_loc1_hit1.cost = 10000
	self.types.TonCont_arm_loc1_hit1.pos_not_important = false
	
	self.types.TonCont_arm_loc1_hit2 = {}
	self.types.TonCont_arm_loc1_hit2.name_id = "TonCont_arm_loc1_hit2"
	self.types.TonCont_arm_loc1_hit2.desc_id = "TonCont_arm_loc1_hit2_desc"
	self.types.TonCont_arm_loc1_hit2.category = "arm_hit"
	self.types.TonCont_arm_loc1_hit2.plan = "arm_hit"
	self.types.TonCont_arm_loc1_hit2.icon = 24
	self.types.TonCont_arm_loc1_hit2.total = 1
	self.types.TonCont_arm_loc1_hit2.post_event = "gus_preplan_12"
	self.types.TonCont_arm_loc1_hit2.prio = 4
	self.types.TonCont_arm_loc1_hit2.budget_cost = 2
	self.types.TonCont_arm_loc1_hit2.cost = 10000
	self.types.TonCont_arm_loc1_hit2.pos_not_important = false
	
	self.types.TonCont_arm_loc1_hit3 = {}
	self.types.TonCont_arm_loc1_hit3.name_id = "TonCont_arm_loc1_hit3"
	self.types.TonCont_arm_loc1_hit3.desc_id = "TonCont_arm_loc1_hit3_desc"
	self.types.TonCont_arm_loc1_hit3.category = "arm_hit"
	self.types.TonCont_arm_loc1_hit3.plan = "arm_hit"
	self.types.TonCont_arm_loc1_hit3.icon = 102
	self.types.TonCont_arm_loc1_hit3.total = 1
	self.types.TonCont_arm_loc1_hit3.post_event = "gus_preplan_12"
	self.types.TonCont_arm_loc1_hit3.prio = 5
	self.types.TonCont_arm_loc1_hit3.budget_cost = 4
	self.types.TonCont_arm_loc1_hit3.cost = 25000
	self.types.TonCont_arm_loc1_hit3.pos_not_important = false
	
	self.types.TonCont_arm_loc1_hit4 = {}
	self.types.TonCont_arm_loc1_hit4.name_id = "TonCont_arm_loc1_hit4"
	self.types.TonCont_arm_loc1_hit4.desc_id = "TonCont_arm_loc1_hit4_desc"
	self.types.TonCont_arm_loc1_hit4.category = "arm_hit"
	self.types.TonCont_arm_loc1_hit4.plan = "arm_hit"
	self.types.TonCont_arm_loc1_hit4.icon = 102
	self.types.TonCont_arm_loc1_hit4.total = 1
	self.types.TonCont_arm_loc1_hit4.post_event = "gus_preplan_12"
	self.types.TonCont_arm_loc1_hit4.prio = 6
	self.types.TonCont_arm_loc1_hit4.budget_cost = 3
	self.types.TonCont_arm_loc1_hit4.cost = 25000
	self.types.TonCont_arm_loc1_hit4.pos_not_important = false
	
	self.types.TonCont_arm_loc1_hit5 = {}
	self.types.TonCont_arm_loc1_hit5.name_id = "TonCont_arm_loc1_hit5"
	self.types.TonCont_arm_loc1_hit5.desc_id = "TonCont_arm_loc1_hit5_desc"
	self.types.TonCont_arm_loc1_hit5.category = "arm_hit"
	self.types.TonCont_arm_loc1_hit5.plan = "arm_hit"
	self.types.TonCont_arm_loc1_hit5.icon = 65
	self.types.TonCont_arm_loc1_hit5.total = 1
	self.types.TonCont_arm_loc1_hit5.post_event = "gus_preplan_12"
	self.types.TonCont_arm_loc1_hit5.prio = 7
	self.types.TonCont_arm_loc1_hit5.budget_cost = 5
	self.types.TonCont_arm_loc1_hit5.cost = 35000
	self.types.TonCont_arm_loc1_hit5.pos_not_important = false
	
	self.types.TonCont_arm_loc1_hit6 = {}
	self.types.TonCont_arm_loc1_hit6.name_id = "TonCont_arm_loc1_hit6"
	self.types.TonCont_arm_loc1_hit6.desc_id = "TonCont_arm_loc1_hit6_desc"
	self.types.TonCont_arm_loc1_hit6.category = "arm_hit"
	self.types.TonCont_arm_loc1_hit6.plan = "arm_hit"
	self.types.TonCont_arm_loc1_hit6.icon = 55
	self.types.TonCont_arm_loc1_hit6.total = 1
	self.types.TonCont_arm_loc1_hit6.post_event = "gus_preplan_12"
	self.types.TonCont_arm_loc1_hit6.prio = 2
	self.types.TonCont_arm_loc1_hit6.budget_cost = 0
	self.types.TonCont_arm_loc1_hit6.cost = 10000
	self.types.TonCont_arm_loc1_hit6.pos_not_important = false
	
	self.types.TonCont_arm_esc1 = {}
	self.types.TonCont_arm_esc1.name_id = "TonCont_arm_esc1"
	self.types.TonCont_arm_esc1.desc_id = "TonCont_arm_esc1_desc"
	self.types.TonCont_arm_esc1.category = "arm_esc"
	self.types.TonCont_arm_esc1.plan = "arm_esc"
	self.types.TonCont_arm_esc1.icon = 23
	self.types.TonCont_arm_esc1.total = 1
	self.types.TonCont_arm_esc1.post_event = "gus_preplan_12"
	self.types.TonCont_arm_esc1.prio = 5
	self.types.TonCont_arm_esc1.budget_cost = 1
	self.types.TonCont_arm_esc1.cost = 10000
	self.types.TonCont_arm_esc1.pos_not_important = false
	
	self.types.TonCont_arm_esc2 = {}
	self.types.TonCont_arm_esc2.name_id = "TonCont_arm_esc2"
	self.types.TonCont_arm_esc2.desc_id = "TonCont_arm_esc2_desc"
	self.types.TonCont_arm_esc2.category = "arm_esc"
	self.types.TonCont_arm_esc2.plan = "arm_esc"
	self.types.TonCont_arm_esc2.icon = 23
	self.types.TonCont_arm_esc2.total = 1
	self.types.TonCont_arm_esc2.post_event = "gus_preplan_12"
	self.types.TonCont_arm_esc2.prio = 4
	self.types.TonCont_arm_esc2.budget_cost = 2
	self.types.TonCont_arm_esc2.cost = 15000
	self.types.TonCont_arm_esc2.pos_not_important = false
	
	self.types.TonCont_arm_esc3 = {}
	self.types.TonCont_arm_esc3.name_id = "TonCont_arm_esc3"
	self.types.TonCont_arm_esc3.desc_id = "TonCont_arm_esc3_desc"
	self.types.TonCont_arm_esc3.category = "arm_esc"
	self.types.TonCont_arm_esc3.plan = "arm_esc"
	self.types.TonCont_arm_esc3.icon = 23
	self.types.TonCont_arm_esc3.total = 1
	self.types.TonCont_arm_esc3.post_event = "gus_preplan_12"
	self.types.TonCont_arm_esc3.prio = 3
	self.types.TonCont_arm_esc3.budget_cost = 3
	self.types.TonCont_arm_esc3.cost = 35000
	self.types.TonCont_arm_esc3.pos_not_important = false
	
	self.types.TonCont_arm_esc4 = {}
	self.types.TonCont_arm_esc4.name_id = "TonCont_arm_esc4"
	self.types.TonCont_arm_esc4.desc_id = "TonCont_arm_esc4_desc"
	self.types.TonCont_arm_esc4.category = "arm_esc"
	self.types.TonCont_arm_esc4.plan = "arm_esc"
	self.types.TonCont_arm_esc4.icon = 23
	self.types.TonCont_arm_esc4.total = 1
	self.types.TonCont_arm_esc4.post_event = "gus_preplan_12"
	self.types.TonCont_arm_esc4.prio = 2
	self.types.TonCont_arm_esc4.budget_cost = 5
	self.types.TonCont_arm_esc4.cost = 50000
	self.types.TonCont_arm_esc4.pos_not_important = false
	
	self.types.TonCont_arm_escr = {}
	self.types.TonCont_arm_escr.name_id = "TonCont_arm_escr"
	self.types.TonCont_arm_escr.desc_id = "TonCont_arm_escr_desc"
	self.types.TonCont_arm_escr.category = "arm_esc"
	self.types.TonCont_arm_escr.plan = "arm_esc"
	self.types.TonCont_arm_escr.icon = 103
	self.types.TonCont_arm_escr.total = 1
	self.types.TonCont_arm_escr.post_event = "gus_preplan_12"
	self.types.TonCont_arm_escr.prio = 1
	self.types.TonCont_arm_escr.budget_cost = 0
	self.types.TonCont_arm_escr.cost = 0
	self.types.TonCont_arm_escr.pos_not_important = false
	
	self.types.TonCont_arm_cover = {}
	self.types.TonCont_arm_cover.name_id = "TonCont_arm_cover"
	self.types.TonCont_arm_cover.desc_id = "TonCont_arm_cover_desc"
	self.types.TonCont_arm_cover.category = "hired_help"
	self.types.TonCont_arm_cover.plan = "arm_cover"
	self.types.TonCont_arm_cover.icon = 94
	self.types.TonCont_arm_cover.total = 2
	self.types.TonCont_arm_cover.post_event = "gus_preplan_12"
	self.types.TonCont_arm_cover.prio = 1
	self.types.TonCont_arm_cover.budget_cost = 1
	self.types.TonCont_arm_cover.cost = 20000
	self.types.TonCont_arm_cover.pos_not_important = false

	if Global.game_settings and Global.game_settings.one_down then
			self.types.TonCont_arm_loc1_hit1.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
			self.types.TonCont_arm_loc1_hit2.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
			self.types.TonCont_arm_loc1_hit3.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
			self.types.TonCont_arm_loc1_hit4.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
			self.types.TonCont_arm_loc1_hit5.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
			self.types.TonCont_arm_loc1_hit6.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
			self.types.TonCont_arm_esc1.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
			self.types.TonCont_arm_esc2.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
			self.types.TonCont_arm_esc3.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
			self.types.TonCont_arm_esc4.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
	end
end)

Hooks:PostHook(PrePlanningTweakData,"_create_locations","_TonCont",function(self)

	self.locations.TonCont = {
		mission_briefing_texture = "textures/test1",
		total_budget = 10,
		default_plans = {
			arm_hit = "TonCont_arm_locr_hitr",
			arm_cont = "TonCont_arm_loot_random",
			arm_amount = "TonCont_arm_amount_random",
			arm_esc = "TonCont_arm_escr"
		},
		{
			texture = "textures/test1",
			name_id = "menu_pp_TonCont_a",
			rotation = 0,
			map_size = 1,
			map_x = 0,
			map_y = 0,
			x1 = -3470,
			y1 = -9260,
			x2 = 12530,
			y2 = 10740,
			custom_points = {}
		},
		{
			texture = "textures/test2",
			name_id = "menu_pp_TonCont_b",
			rotation = 0,
			map_size = 1,
			map_x = 1.0,
			map_y = 0,
			x1 = -3470,
			y1 = -9260,
			x2 = 12530,
			y2 = 10740,
			custom_points = {}
		},
		{
			texture = "textures/test3",
			name_id = "menu_pp_TonCont_c",
			rotation = 0,
			map_size = 1,
			map_x = 1.0,
			map_y = -0.7,
			x1 = -3470,
			y1 = -9260,
			x2 = 12530,
			y2 = 10740,
			custom_points = {}
		},
		{
			texture = "textures/test4",
			name_id = "menu_pp_TonCont_d",
			rotation = 0,
			map_size = 1,
			map_x = -1.0,
			map_y = 0,
			x1 = -3470,
			y1 = -9260,
			x2 = 12530,
			y2 = 10740,
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
