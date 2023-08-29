
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
	self.weap_unit_names = {
		Idstring("units/payday2/weapons/wpn_npc_beretta92/wpn_npc_beretta92"),
		Idstring("units/payday2/weapons/wpn_npc_c45/wpn_npc_c45"),
		Idstring("units/payday2/weapons/wpn_npc_raging_bull/wpn_npc_raging_bull"),
		Idstring("units/pd2_dlc_mad/weapons/wpn_npc_ak47/wpn_npc_ak47"),	-- Idstring("units/payday2/weapons/wpn_npc_m4/wpn_npc_m4"),
		Idstring("units/payday2/weapons/wpn_npc_m4_yellow/wpn_npc_m4_yellow"),
		Idstring("units/payday2/weapons/wpn_npc_ak47/wpn_npc_ak47"),
		Idstring("units/payday2/weapons/wpn_npc_r870/wpn_npc_r870"),
		Idstring("units/payday2/weapons/wpn_npc_sawnoff_shotgun/wpn_npc_sawnoff_shotgun"),
		Idstring("units/pd2_dlc_mad/weapons/wpn_npc_akmsu/wpn_npc_akmsu"),	-- Idstring("units/payday2/weapons/wpn_npc_mp5/wpn_npc_mp5"),
		Idstring("units/pd2_dlc_mad/weapons/wpn_npc_asval/wpn_npc_asval"),	-- Idstring("units/payday2/weapons/wpn_npc_mp5_tactical/wpn_npc_mp5_tactical"),
		Idstring("units/pd2_dlc_mad/weapons/wpn_npc_sr2/wpn_npc_sr2"),		-- Idstring("units/payday2/weapons/wpn_npc_smg_mp9/wpn_npc_smg_mp9"),
		Idstring("units/payday2/weapons/wpn_npc_mac11/wpn_npc_mac11"),
		Idstring("units/pd2_dlc_mad/weapons/wpn_npc_svd/wpn_npc_svd"),		-- Idstring("units/payday2/weapons/wpn_npc_sniper/wpn_npc_sniper"),
		Idstring("units/payday2/weapons/wpn_npc_saiga/wpn_npc_saiga"),
		Idstring("units/pd2_dlc_mad/weapons/wpn_npc_rpk/wpn_npc_rpk"),		-- Idstring("units/payday2/weapons/wpn_npc_lmg_m249/wpn_npc_lmg_m249"),
		Idstring("units/payday2/weapons/wpn_npc_r870/wpn_npc_r870"),		-- Idstring("units/payday2/weapons/wpn_npc_benelli/wpn_npc_benelli"),
		Idstring("units/pd2_dlc_mad/weapons/wpn_npc_ak47/wpn_npc_ak47"),	-- Idstring("units/payday2/weapons/wpn_npc_g36/wpn_npc_g36"),
		Idstring("units/pd2_dlc_mad/weapons/wpn_npc_asval/wpn_npc_asval"),	-- Idstring("units/payday2/weapons/wpn_npc_ump/wpn_npc_ump"),
		Idstring("units/payday2/weapons/wpn_npc_scar_murkywater/wpn_npc_scar_murkywater"),
		Idstring("units/pd2_dlc_mad/weapons/wpn_npc_rpk/wpn_npc_rpk"),
		Idstring("units/pd2_dlc_mad/weapons/wpn_npc_svd/wpn_npc_svd"),
		Idstring("units/pd2_dlc_mad/weapons/wpn_npc_akmsu/wpn_npc_akmsu"),
		Idstring("units/pd2_dlc_mad/weapons/wpn_npc_asval/wpn_npc_asval"),
		Idstring("units/pd2_dlc_mad/weapons/wpn_npc_sr2/wpn_npc_sr2"),
		Idstring("units/pd2_dlc_mad/weapons/wpn_npc_ak47/wpn_npc_ak47"),
		Idstring("units/payday2/weapons/wpn_npc_c45/wpn_npc_x_c45"),
		Idstring("units/pd2_dlc_chico/weapons/wpn_npc_sg417/wpn_npc_sg417"),
		Idstring("units/pd2_dlc_spa/weapons/wpn_npc_svd_silenced/wpn_npc_svd_silenced"),
		Idstring("units/pd2_dlc_drm/weapons/wpn_npc_mini/wpn_npc_mini"),
		Idstring("units/pd2_dlc_drm/weapons/wpn_npc_heavy_zeal_sniper/wpn_npc_heavy_zeal_sniper"),
		Idstring("units/pd2_dlc_uno/weapons/wpn_npc_smoke/wpn_npc_smoke"),
		Idstring("units/pd2_dlc_pent/weapons/wpn_npc_flamethrower/wpn_npc_flamethrower"),
		Idstring("units/pd2_dlc_usm1/weapons/wpn_npc_dmr/wpn_npc_dmr"),
		Idstring("units/pd2_dlc_usm2/weapons/wpn_npc_deagle/wpn_npc_deagle"),
		Idstring("units/pd2_dlc_usm2/weapons/wpn_npc_sko12_conc/wpn_npc_sko12_conc"),
		Idstring("units/pd2_dlc_cg22/weapons/wpn_npc_snowthrower/wpn_npc_snowthrower")
	}
end)

Hooks:PostHook(CharacterTweakData, "init", "cdhook_nikolai", function(self)
    self.nikolai= deep_clone(self.hector_boss)
	
	
	

	

	self.nikolai.HEALTH_INIT = 2500
	
	
	self.nikolai.DAMAGE_CLAMP_BULLET = 80
	self.nikolai.DAMAGE_CLAMP_EXPLOSION	= 80
	

	
	
	
	
	self.nikolai.damage = self.presets.gang_member_damage
	self.nikolai.weapon = self.presets.weapon.gang_member
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	self.mobster_boss.damage.hurt_severity = self.presets.hurt_severities.no_hurts
	
	
	
	self.mobster_boss.move_speed = self.presets.move_speed.normal
	
	
	
	
	


	self.nikolai.move_speed = self.presets.move_speed.very_fast
	self.nikolai.dodge = self.presets.dodge.athletic
	
	self.nikolai.use_animation_on_fire_damage = false
	self.nikolai.flammable = false
	self.nikolai.can_be_tased = false
	self.nikolai.immune_to_knock_down = true
	self.nikolai.immune_to_concussion = true



	self.bolivian_indoors.speech_prefix_p1 = "r"		
	self.bolivian_indoors.radio_prefix = "rus_"
	
	self.nikolai.ecm_vulnerability = 0
	self.nikolai.ecm_hurts = {
		ears = {
			max_duration = 0,
			min_duration = 0
		}
	}
	
	
	
	
	self.mobster_boss.ecm_vulnerability = 0
	self.mobster_boss.ecm_hurts = {
		ears = {
			max_duration = 0,
			min_duration = 0
		}
	}
	
	
	self.drug_lord_boss_stealth.damage = self.presets.gang_member_damage
		
	
	self.drug_lord_boss_stealth.ecm_vulnerability = 0
	self.drug_lord_boss_stealth.ecm_hurts = {
		ears = {
			max_duration = 0,
			min_duration = 0
		}
	}
	
	
	
	
	self.nikolai.LOWER_HEALTH_PERCENTAGE_LIMIT = 0.01
    self.nikolai.FINAL_LOWER_HEALTH_PERCENTAGE_LIMIT = 0.01
	

	
	table.insert(self._enemy_list, "nikolai")
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
end)



Hooks:PostHook(CharacterTweakData, "_set_normal", "cdhook_nikolai", function(self)

	
	
	
	
	self.nikolai.HEALTH_INIT = 500
	
		
	self.nikolai.DAMAGE_CLAMP_BULLET = 80
	self.nikolai.DAMAGE_CLAMP_EXPLOSION	= 80
	
	
	
end)



Hooks:PostHook(CharacterTweakData, "_set_hard", "cdhook_nikolai", function(self)

	
	
	
	
	self.nikolai.HEALTH_INIT = 1000
	
		
	self.nikolai.DAMAGE_CLAMP_BULLET = 80
	self.nikolai.DAMAGE_CLAMP_EXPLOSION	= 80
	
	
	
end)



Hooks:PostHook(CharacterTweakData, "_set_overkill", "cdhook_nikolai", function(self)

	
	
	
	
	self.nikolai.HEALTH_INIT = 1500
	
	
	self.drug_lord_boss_stealth.HEALTH_INIT = 200
	
	
		
	self.nikolai.DAMAGE_CLAMP_BULLET = 80
	self.nikolai.DAMAGE_CLAMP_EXPLOSION	= 80
	
	
end)











Hooks:PostHook(CharacterTweakData, "_set_overkill_145", "cdhook_nikolai", function(self)

	
	
	
	
	self.nikolai.HEALTH_INIT = 1800
	
	self.mobster_boss.HEALTH_INIT = 1000
	
	
	self.drug_lord_boss_stealth.HEALTH_INIT = 350
	
	
	
		
	self.nikolai.DAMAGE_CLAMP_BULLET = 80
	self.nikolai.DAMAGE_CLAMP_EXPLOSION	= 80
	
	
	
	
	
end)







Hooks:PostHook(CharacterTweakData, "_set_easy_wish", "cdhook_nikolai", function(self)

	
	
	
	
	self.nikolai.HEALTH_INIT = 2500
	
	
	self.mobster_boss.HEALTH_INIT = 1250
	self.drug_lord_boss_stealth.HEALTH_INIT = 500
	
	
		
	self.nikolai.DAMAGE_CLAMP_BULLET = 80
	self.nikolai.DAMAGE_CLAMP_EXPLOSION	= 80
	
	
	
	
	
end)












Hooks:PostHook(CharacterTweakData, "_set_overkill_290", "cdhook_nikolai", function(self)

	
	
	self.mobster_boss.HEALTH_INIT = 1250
	
	self.nikolai.HEALTH_INIT = 2500
	
	self.drug_lord_boss_stealth.HEALTH_INIT = 500
	
	
		
	self.nikolai.DAMAGE_CLAMP_BULLET = 80
	self.nikolai.DAMAGE_CLAMP_EXPLOSION	= 80
	
	
	
	
	
	
end)


Hooks:PostHook(CharacterTweakData, "_set_sm_wish", "cdhook_nikolai", function(self)

	
	
	self.mobster_boss.HEALTH_INIT = 1250
	
	self.nikolai.HEALTH_INIT = 3500
	
	
	self.drug_lord_boss_stealth.HEALTH_INIT = 1000
	
	
		
	self.nikolai.DAMAGE_CLAMP_BULLET = 80
	self.nikolai.DAMAGE_CLAMP_EXPLOSION	= 80
	
	

end)











local character_map_original = CharacterTweakData.character_map

function CharacterTweakData:character_map(...)
	
	local char_map = character_map_original(self, ...)
	local prison_map ={
		"npc_nikolai_winter_1",
		"npc_nikolai_1",
		"npc_backup_1",	
		"npc_backup_2",
		"civ_rus_prisoner_1",
		"civ_rus_prisoner_2",
		"civ_rus_prisoner_3",	
		"civ_rus_prisoner_4",
		"civ_rus_prisoner_special_1",
		"civ_rus_prisoner_special_2",
		"civ_rus_prisoner_special_3",	
		"civ_rus_prisoner_special_4",				
		"ene_rus_prisoner_1",
		"ene_rus_prisoner_2",
		"ene_rus_prisoner_3",	
		"ene_rus_prisoner_4",				
		"npc_ivan"			
	}
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
	
	for _, unit in pairs(prison_map) do
		table.insert(char_map.basic.list, unit)
	end
	
	
	
	
	
	return char_map
end



