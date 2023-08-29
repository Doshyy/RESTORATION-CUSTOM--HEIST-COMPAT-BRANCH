Hooks:PostHook( AssetsTweakData, "_init_assets", "new_hidden_vault_assets", function(self, tweak_data)
    self.hidden_bag_shortcut = {}
	self.hidden_bag_shortcut.name_id = "hidden_bag_shortcut"
	self.hidden_bag_shortcut.texture = "gui/custom_asset/hidden_bag_shortcut"
	self.hidden_bag_shortcut.stages = {
		"hidden_vault"
	}
	self.hidden_bag_shortcut.visible_if_locked = true
	self.hidden_bag_shortcut.unlock_desc_id = "hidden_bag_shortcut_desc"
	self.hidden_bag_shortcut.no_mystery = true
	self.hidden_bag_shortcut.money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_small", 7)
	
	self.hidden_vault_cams = {}
	self.hidden_vault_cams.name_id = "hidden_vault_cams_name"
	self.hidden_vault_cams.texture = "gui/custom_asset/truck_cams"
	self.hidden_vault_cams.stages = {
		"hidden_vault"
	}
	self.hidden_vault_cams.visible_if_locked = true
	self.hidden_vault_cams.unlock_desc_id = "hidden_vault_cams_desc"
	self.hidden_vault_cams.no_mystery = true
	self.hidden_vault_cams.money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_small", 7)

	self.hidden_vault_bag_escape = {}
	self.hidden_vault_bag_escape.name_id = "hidden_vault_bag_escape"
	self.hidden_vault_bag_escape.texture = "gui/custom_asset/bag_escape"
	self.hidden_vault_bag_escape.stages = {
		"hidden_vault"
	}
	self.hidden_vault_bag_escape.visible_if_locked = true
	self.hidden_vault_bag_escape.unlock_desc_id = "hidden_vault_bag_escape_desc"
	self.hidden_vault_bag_escape.no_mystery = true
	self.hidden_vault_bag_escape.money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_small", 7)
	self.hidden_vault_bag_escape.upgrade_lock = {
			upgrade = "additional_assets",
			category = "player"
		}

end )
