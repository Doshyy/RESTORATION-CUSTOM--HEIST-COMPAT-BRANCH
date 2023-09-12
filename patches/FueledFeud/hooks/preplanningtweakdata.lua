Hooks:PostHook(PrePlanningTweakData,"init","init_fuel_fak_lock",function(self)
self.types.fuel_faks = {
		name_id = "menu_pp_fuel_faks",
		desc_id = "menu_pp_fuel_faks_desc",
		deployable_id = "first_aid_kit",
		icon = 31,
		category = "dead_drop",
		total = 4,
		cost = 1600,
		budget_cost = 1,
		post_event = "preplan_06",
		prio = 6
	}
        if Global.game_settings and Global.game_settings.one_down then
        self.types.fuel_faks.upgrade_lock = {
            upgrade = "additional_assets_pro",
            category = "player"
        }
        end

end)