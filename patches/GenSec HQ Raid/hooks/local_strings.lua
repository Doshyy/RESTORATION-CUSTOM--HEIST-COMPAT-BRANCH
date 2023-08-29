--yes, I stole this from Cargoship Raid
Hooks:Add("LocalizationManagerPostInit", "GenSecHQLocalization", function(loc)
		LocalizationManager:add_localized_strings({
		["hud_assault_assault"] = "GENSEC RAID IN PROGRESS",
		["heist_mex_transition"] = "The crew scales the GenSec Tower,\nunaware of the challenge ahead\n\nPrepare.",
		["hud_assault_point_no_return_in"] = " Bile will be shot in ",
		["hud_assault_point_no_return"] = "Completely overwhelmed in ",
		["hud_assault_point_no_vlad"] = "DEATH ROW",
		["hud_assault_point_no_vlad_in"] = " DEATH ROW "
		})
end)
