Hooks:Add("LocalizationManagerPostInit", "XanaxLocalization", function(loc)
		LocalizationManager:add_localized_strings({
		["menu_ghostable_job"] = "STEALTH IS REQUIREMENT [DON'T KILL BULLDOZERS!]",
		["hud_int_disable_alarm_pager"] = "HOLD $BTN_INTERACT TO ANSWER",
		["hud_int_press_enter"] = "PRESS $BTN_INTERACT TO ENTER SECURITY CODE."
		})
end)
