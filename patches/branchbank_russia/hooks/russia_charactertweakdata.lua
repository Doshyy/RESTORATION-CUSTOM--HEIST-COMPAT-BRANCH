
if not Global.level_data then return end
if Global.level_data.level_id ~= "branchbank_russia" then return end

Hooks:PostHook(CharacterTweakData, "_init_security", "russia_security", function(self, presets)
	self.security.speech_prefix_p1 = "r"
	self.security.radio_prefix = "rus_"
	self.security.use_radio = nil
end)

Hooks:PostHook(CharacterTweakData, "_init_cop", "russia_cop", function(self, presets)
	self.cop.speech_prefix_p1 = "r"
	self.cop.radio_prefix = "rus_"
	self.cop.use_radio = "dispatch_generic_message"
end)

-- Enemies will carry MP5s/M4s/G36s to have correct damage values, but visually they will be carrying AKs to be authentic
Hooks:PostHook(CharacterTweakData, "_create_table_structure", "SwapWepVisuals", function(self)
    local weap_unit_names = self.weap_unit_names

    for regular, replacement in pairs({
        ["units/payday2/weapons/wpn_npc_m4/wpn_npc_m4"] = "units/pd2_dlc_mad/weapons/wpn_npc_ak47/wpn_npc_ak47",
        ["units/payday2/weapons/wpn_npc_mp5/wpn_npc_mp5"] = "units/pd2_dlc_mad/weapons/wpn_npc_akmsu/wpn_npc_akmsu",
        ["units/payday2/weapons/wpn_npc_mp5_tactical/wpn_npc_mp5_tactical"] = "units/pd2_dlc_mad/weapons/wpn_npc_asval/wpn_npc_asval",
        ["units/payday2/weapons/wpn_npc_smg_mp9/wpn_npc_smg_mp9"] = "units/pd2_dlc_mad/weapons/wpn_npc_sr2/wpn_npc_sr2",
        ["units/payday2/weapons/wpn_npc_sniper/wpn_npc_sniper"] = "units/pd2_dlc_mad/weapons/wpn_npc_svd/wpn_npc_svd",
        ["units/payday2/weapons/wpn_npc_lmg_m249/wpn_npc_lmg_m249"] = "units/pd2_dlc_mad/weapons/wpn_npc_rpk/wpn_npc_rpk",
        ["units/payday2/weapons/wpn_npc_benelli/wpn_npc_benelli"] = "units/payday2/weapons/wpn_npc_r870/wpn_npc_r870",
        ["units/payday2/weapons/wpn_npc_g36/wpn_npc_g36"] = "units/pd2_dlc_mad/weapons/wpn_npc_ak47/wpn_npc_ak47",
        ["units/payday2/weapons/wpn_npc_ump/wpn_npc_ump"] = "units/pd2_dlc_mad/weapons/wpn_npc_asval/wpn_npc_asval",
    }) do
        local i = table.get_vector_index(weap_unit_names, Idstring(regular))

        if i then
            weap_unit_names[i] = Idstring(replacement)
        end
    end
end)

local character_map_original = CharacterTweakData.character_map

function CharacterTweakData:character_map(...)
	
	local char_map = character_map_original(self, ...)
	
	local rus_map = {
		"ene_rus_security_1",
		"ene_rus_security_2",
		"ene_rus_security_3",
		"ene_rus_cop_1",
		"ene_rus_cop_2",
		"ene_rus_cop_3_mp5",
		"ene_rus_cop_3_r870",
		"ene_rus_cop_4_m4",
		"ene_rus_cop_4_r870",
		"ene_rus_tazer",
		"ene_rus_shield_c45",
		"ene_rus_sniper",
		"ene_rus_fsb_m4",
		"ene_rus_fsb_r870",
		"ene_rus_fsb_heavy_m4",
		"ene_rus_shield_sr2",
		"ene_rus_fsbcity_g36",
		"ene_rus_fsbcity_r870",
		"ene_rus_fsbcity_heavy_g36",
		"ene_rus_shield_sr2_city",
		"ene_rus_fsbzeal_akmsu",
		"ene_rus_fsbzeal_heavy_ak47_ass"
	}
	
	for _, unit in pairs(rus_map) do
		table.insert(char_map.mad.list, unit)
	end
	
	return char_map
end
