local character_map_original = CharacterTweakData.character_map

function CharacterTweakData:character_map(...)
	
	local char_map = character_map_original(self, ...)
	local glb_map = {
		"civ_male_suave_1",	
		"civ_male_suave_2",	
		"civ_male_suave_3",		
		"civ_male_suave_4",					
		"civ_male_suitguy_1",		
		"civ_male_suitguy_2",	
		"civ_male_suitguy_3",					
		"civ_female_asian_dress_1",
		"civ_female_asian_dress_2",
		"civ_female_asian_party_1",	
		"civ_male_asian_business_1",	
		"civ_male_asian_business_2",	
		"civ_female_asian_party_1",		
		"civ_male_suitguy_1",	
		"civ_male_suitguy_2",	
		"civ_male_suitguy_3",	
		"civ_male_suitguy_4",
		"civ_male_asian_suit_1",	
		"civ_male_asian_suit_2",	
		"civ_male_asian_suit_3",									
		"civ_female_party_3",
		"civ_male_business_2",
		"ene_gang_triad_suit_1",	
		"ene_gang_triad_suit_2",	
		"ene_gang_triad_suit_3",
		"ene_gang_triad_suit_4",	
		"ene_gang_triad_suit_enforcer_1",	
		"ene_gang_triad_suit_enforcer_2",	
		"ene_gang_triad_suit_enforcer_3",
		"ene_gang_triad_suit_enforcer_4",
		"ene_gang_triad_suit_enforcer_1_pager",
		"ene_gang_triad_suit_enforcer_2_pager",
		"ene_gang_triad_suit_enforcer_3_pager",	
		"ene_gang_triad_suit_enforcer_4_pager",				
		"ene_gang_triad_vip_1",		
		"ene_gang_triad_vip_2"
	}
	
	for _, unit in pairs(glb_map) do
		table.insert(char_map.basic.list, unit)
	end
	
	
	return char_map
end

function CharacterTweakData:_init_drug_lord_boss_stealth(presets)
	self.drug_lord_boss_stealth = deep_clone(presets.base)
	self.drug_lord_boss_stealth.experience = {}
	self.drug_lord_boss_stealth.weapon = deep_clone(presets.weapon.good)
	self.drug_lord_boss_stealth.weapon.is_rifle = {
		aim_delay = {
			0.1,
			0.2
		},
		focus_delay = 4,
		focus_dis = 200,
		spread = 20,
		miss_dis = 40,
		RELOAD_SPEED = 1,
		melee_speed = 1,
		melee_dmg = 25,
		melee_retry_delay = {
			1,
			2
		},
		range = {
			optimal = 2500,
			far = 5000,
			close = 1000
		},
		autofire_rounds = {
			20,
			30
		},
		FALLOFF = {
			{
				dmg_mul = 3,
				r = 100,
				acc = {
					0.6,
					0.9
				},
				recoil = {
					0.4,
					0.7
				},
				mode = {
					0,
					0,
					0,
					1
				}
			},
			{
				dmg_mul = 3,
				r = 500,
				acc = {
					0.5,
					0.7
				},
				recoil = {
					0.4,
					0.7
				},
				mode = {
					0,
					1,
					2,
					8
				}
			},
			{
				dmg_mul = 1.5,
				r = 1000,
				acc = {
					0.4,
					0.6
				},
				recoil = {
					0.45,
					0.8
				},
				mode = {
					1,
					3,
					6,
					6
				}
			},
			{
				dmg_mul = 1,
				r = 2000,
				acc = {
					0.2,
					0.5
				},
				recoil = {
					0.45,
					0.8
				},
				mode = {
					1,
					2,
					2,
					1
				}
			},
			{
				dmg_mul = 1,
				r = 3000,
				acc = {
					0.1,
					0.35
				},
				recoil = {
					1,
					1.2
				},
				mode = {
					4,
					2,
					1,
					0
				}
			}
		}
	}
	self.drug_lord_boss_stealth.detection = presets.detection.normal
	self.drug_lord_boss_stealth.HEALTH_INIT = 10
	self.drug_lord_boss_stealth.headshot_dmg_mul = 2
	self.drug_lord_boss_stealth.damage.explosion_damage_mul = 1
	self.drug_lord_boss_stealth.move_speed = presets.move_speed.normal
	self.drug_lord_boss_stealth.allowed_poses = {
		stand = true
	}
	self.drug_lord_boss_stealth.no_retreat = true
	self.drug_lord_boss_stealth.no_arrest = true
	self.drug_lord_boss_stealth.surrender = nil
	self.drug_lord_boss_stealth.ecm_vulnerability = 0
	self.drug_lord_boss_stealth.ecm_hurts = {
		ears = 0
	}
	self.drug_lord_boss_stealth.weapon_voice = "3"
	self.drug_lord_boss_stealth.experience.cable_tie = "tie_swat"
	self.drug_lord_boss_stealth.access = "gangster"
	self.drug_lord_boss_stealth.speech_prefix_p1 = "bb"
	self.drug_lord_boss_stealth.speech_prefix_p2 = "n"
	self.drug_lord_boss_stealth.speech_prefix_count = 1
	self.drug_lord_boss_stealth.rescue_hostages = false
	self.drug_lord_boss_stealth.silent_priority_shout = "f37"
	self.drug_lord_boss_stealth.melee_weapon = "fists"
	self.drug_lord_boss_stealth.melee_weapon_dmg_multiplier = 2.5
	self.drug_lord_boss_stealth.steal_loot = nil
	self.drug_lord_boss_stealth.calls_in = nil
	self.drug_lord_boss_stealth.chatter = presets.enemy_chatter.no_chatter
	self.drug_lord_boss_stealth.use_radio = nil
	self.drug_lord_boss_stealth.can_be_tased = false
	self.drug_lord_boss_stealth.DAMAGE_CLAMP_BULLET = 80
	self.drug_lord_boss_stealth.DAMAGE_CLAMP_EXPLOSION = 80
	self.drug_lord_boss_stealth.use_animation_on_fire_damage = false
	self.drug_lord_boss_stealth.flammable = true
	self.drug_lord_boss_stealth.can_be_tased = false
	self.drug_lord_boss_stealth.immune_to_knock_down = true
	self.drug_lord_boss_stealth.immune_to_concussion = true

	table.insert(self._enemy_list, "drug_lord_boss_stealth")
end