

Hooks:PostHook(AssetsTweakData, "_init_assets", "smackdown_assets", function(self, tweak_data)
	
	self.constantine_backup = {
		name_id = "menu_asset_constantine_backup",
		texture = "guis/textures/pd2/mission_briefing/assets/watch_dogs/day1/escapecar",
		stages = {"constantine_smackdown_lvl","constantine_smackdown2_lvl","constantine_policestation_lvl","constantine_murkyairport_lvl","constantine_penthouse_lvl","constantine_dwtd_lvl","constantine_suburbia_lvl","constantine_train_lvl","constantine_jungle_lvl","constantine_yacht_lvl","constantine_cart_dwn_lvl","constantine_cart_con_lvl"},
		visible_if_locked = true,
		unlock_desc_id = "menu_asset_constantine_backup_desc",
		no_mystery = true,
		money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_medium", 4)
	}

if Global.game_settings and Global.game_settings.one_down then
	self.constantine_backup.upgrade_lock = {
	upgrade = "additional_assets_pro",
	category = "player"
}
end    
end)