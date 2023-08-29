Hooks:PostHook( AssetsTweakData, "_init_assets", "new_finsternis_assets", function(self, tweak_data)
	self.finsternis_second_dallas = deep_clone(self.health_bag)
	self.finsternis_second_dallas.texture = "guis/textures/asset_ovk_sux"
	self.finsternis_second_dallas.stages = {
		"finsternis"
	}
	self.finsternis_second_dallas.visible_if_locked = true
	self.finsternis_second_dallas.unlock_desc_id = "menu_asset_health_desc"
	self.finsternis_second_dallas.no_mystery = true
	self.finsternis_second_dallas.money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_small", 3)
	if Global.game_settings and Global.game_settings.one_down then
		self.finsternis_second_dallas.upgrade_lock = {
		upgrade = "additional_assets_pro",
		category = "player"
		}
	end
end )
