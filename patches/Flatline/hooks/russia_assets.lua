
if not Global.level_data then return end
if Global.level_data.level_id ~= "flatline_lvl" then return end





Hooks:PostHook(AssetsTweakData, "_init_assets", "russia_assets", function(self, tweak_data)
	
	self.nikolai_backup = {
		name_id = "menu_asset_nikolai_backup",
		texture = "guis/textures/pd2/mission_briefing/assets/watch_dogs/day1/escapecar",
		stages = {"flatline_lvl"},
		visible_if_locked = true,
		unlock_desc_id = "menu_asset_nikolai_backup_desc",
		no_mystery = true,
		money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_medium", 4)
	}
	
	if Global.game_settings and Global.game_settings.one_down then
			self.nikolai_backup.upgrade_lock = {
			upgrade = "additional_assets_pro",
			category = "player"
		}
	end
end)