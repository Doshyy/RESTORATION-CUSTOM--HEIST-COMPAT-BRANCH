Hooks:PostHook(CharacterTweakData, "init", "cdhook_nikolai", function(self)
    self.nikolai= deep_clone(self.hector_boss)
	
	
	
	
	
	self.nikolai.damage = self.presets.gang_member_damage
	self.nikolai.weapon = self.presets.weapon.gang_member
	
	
	
    self.nikolai.HEALTH_INIT = 2500
	self.nikolai.DAMAGE_CLAMP_BULLET = 80
	self.nikolai.DAMAGE_CLAMP_EXPLOSION	= 1
	self.nikolai.move_speed = self.presets.move_speed.very_fast
	self.nikolai.use_animation_on_fire_damage = false
	self.nikolai.flammable = false
	self.nikolai.can_be_tased = false
	self.nikolai.immune_to_knock_down = true
	self.nikolai.immune_to_concussion = true
	
	self.nikolai.explosion_damage_mul = 0
	
	
	self.nikolai.LOWER_HEALTH_PERCENTAGE_LIMIT = 0.01
    self.nikolai.FINAL_LOWER_HEALTH_PERCENTAGE_LIMIT = 0.01
	
	table.insert(self._enemy_list, "nikolai")
	
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
		"ene_rus_cop_4_r870"
	}
	
	for _, unit in pairs(rus_map) do
		table.insert(char_map.mad.list, unit)
	end
	
	for _, unit in pairs(flatline_map) do
		table.insert(char_map.basic.list, unit)
	end
	
	
	
	
	
	return char_map
end