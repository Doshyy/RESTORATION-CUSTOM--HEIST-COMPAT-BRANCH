
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

Hooks:PostHook(CharacterTweakData, "init", "cdhook_nikolai", function(self)
    self.nikolai= deep_clone(self.hector_boss)
	
	
	

	
	
	
	
	table.insert(self.weap_ids, "x_mp5_npc")
	table.insert(self.weap_unit_names, Idstring("units/payday2/weapons/wpn_npc_mp5/wpn_npc_x_mp5"))

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
	local flatline_map ={
			"npc_nikolai_1",
			"npc_backup_1"
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
	
	for _, unit in pairs(flatline_map) do
		table.insert(char_map.basic.list, unit)
	end
	
	
	
	
	
	return char_map
end



