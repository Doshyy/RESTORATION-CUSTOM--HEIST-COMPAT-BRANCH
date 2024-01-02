



local origin_init = CharacterTweakData.init
local origin_presets = CharacterTweakData._presets
local origin_charmap = CharacterTweakData.character_map
Hooks:PostHook(CharacterTweakData, "init", "cdhook_constantine_backup", function(self)
-- CLONES
	self.constantine_backup= deep_clone(self.drug_lord_boss_stealth)
	self.mobster_ttr_vip= deep_clone(self.drug_lord_boss_stealth)
	self.mobster_ttr_clubowner= deep_clone(self.drug_lord_boss)
	self.mobster_ttr_enforcer= deep_clone(self.mobster_boss)	
	self.mobster_ttr_securityclub= deep_clone(self.mobster_boss)
	self.agent_ttr_swat= deep_clone(self.city_swat)
	self.ttr_civilian_noflee= deep_clone(self.bank_manager)	
	self.ttr_friendly= deep_clone(self.drug_lord_boss_stealth)
	self.ttr_captain_tank= deep_clone(self.tank)		
	self.cartel_tazer= deep_clone(self.taser)
	self.cartel_grenadier= deep_clone(self.tank)	
	self.ttr_civilian_noflee_female= deep_clone(self.bank_manager)		
	self.cartel_grenadier_fire= deep_clone(self.tank)		
	self.cartel_commando= deep_clone(self.tank_medic)


-- MOBSTER VIP
	self.mobster_ttr_vip.weapon = self.presets.weapon.gang_member
	self.mobster_ttr_vip.use_animation_on_fire_damage = false
	self.mobster_ttr_vip.flammable = false
	self.mobster_ttr_vip.can_be_tased = false
	self.mobster_ttr_vip.immune_to_knock_down = true
	self.mobster_ttr_vip.immune_to_concussion = true

	self.mobster_ttr_vip.can_be_tased = false
	self.mobster_ttr_vip.immune_to_knock_down = false
	self.mobster_ttr_vip.immune_to_concussion = false
	self.mobster_ttr_vip.damage = self.presets.gang_member_damage
	self.mobster_ttr_vip.headshot_dmg_mul = 2.0

	self.mobster_ttr_vip.no_retreat = true
	self.mobster_ttr_vip.no_arrest = true
	self.mobster_ttr_vip.surrender = nil

	self.mobster_ttr_vip.ecm_vulnerability = 0
	self.mobster_ttr_vip.ecm_hurts = {
		ears = {
			max_duration = 0,
			min_duration = 0
		}
	}
	
	self.mobster_ttr_vip.HEALTH_INIT = 30

-- CONSTANTINE BACKUP

	self.constantine_backup.HEALTH_INIT = 500
		
	self.constantine_backup.access = "teamAI4"
	
	self.constantine_backup.damage = self.presets.gang_member_damage
	self.constantine_backup.weapon = self.presets.weapon.gang_member
	
	self.constantine_backup.no_retreat = true
	self.constantine_backup.no_arrest = true
	self.constantine_backup.surrender = nil


	self.constantine_backup.move_speed = self.presets.move_speed.very_fast
	self.constantine_backup.dodge = self.presets.dodge.athletic
	
	self.constantine_backup.use_animation_on_fire_damage = false
	self.constantine_backup.flammable = false
	self.constantine_backup.can_be_tased = false
	self.constantine_backup.immune_to_knock_down = true
	self.constantine_backup.immune_to_concussion = true

		
	self.constantine_backup.DAMAGE_CLAMP_BULLET = 80
	self.constantine_backup.DAMAGE_CLAMP_EXPLOSION	= 0

	self.constantine_backup.damage.hurt_severity = self.presets.hurt_severities.no_hurts	
	
	self.constantine_backup.ecm_vulnerability = 0
	self.constantine_backup.ecm_hurts = {
		ears = {
			max_duration = 0,
			min_duration = 0
		}
	}
	
	
	
	
-- CLUB OWNER
	
	self.mobster_ttr_clubowner.damage = self.presets.gang_member_damage

	self.mobster_ttr_clubowner.use_animation_on_fire_damage = false
	self.mobster_ttr_clubowner.flammable = false
	self.mobster_ttr_clubowner.can_be_tased = false
	self.mobster_ttr_clubowner.immune_to_knock_down = true
	self.mobster_ttr_clubowner.immune_to_concussion = true

	self.mobster_ttr_clubowner.HEALTH_INIT = 200
	self.mobster_ttr_clubowner.damage.hurt_severity = self.presets.hurt_severities.no_hurts
	
	self.mobster_ttr_clubowner.ecm_vulnerability = 0
	self.mobster_ttr_clubowner.ecm_hurts = {
		ears = {
			max_duration = 0,
			min_duration = 0
		}
	}
	self.mobster_ttr_clubowner.throwable = "launcher_m203"
	self.mobster_ttr_clubowner.throwable_target_verified = true
	self.mobster_ttr_clubowner.throwable_cooldown = 10
	self.mobster_ttr_clubowner.player_health_scaling_mul = 1.5
	self.mobster_ttr_clubowner.headshot_dmg_mul = 1.25
	self.mobster_ttr_clubowner.DAMAGE_CLAMP_BULLET = 150
	self.mobster_ttr_clubowner.DAMAGE_CLAMP_EXPLOSION = 150

	self.mobster_ttr_clubowner.no_retreat = true
	self.mobster_ttr_clubowner.no_arrest = true
	self.mobster_ttr_clubowner.surrender = nil
	
	
	
	
-- MOBSTER ENFORCER

	self.mobster_ttr_enforcer.damage = self.presets.gang_member_damage

	self.mobster_ttr_enforcer.use_animation_on_fire_damage = false
	self.mobster_ttr_enforcer.flammable = false
	self.mobster_ttr_enforcer.can_be_tased = false
	self.mobster_ttr_enforcer.immune_to_knock_down = true
	self.mobster_ttr_enforcer.immune_to_concussion = true

	self.mobster_ttr_enforcer.HEALTH_INIT = 200

	
	self.mobster_ttr_enforcer.ecm_vulnerability = 0
	self.mobster_ttr_enforcer.ecm_hurts = {
		ears = {
			max_duration = 0,
			min_duration = 0
		}
	}
	self.mobster_ttr_enforcer.throwable = "frag"
	self.mobster_ttr_enforcer.throwable_target_verified = true
	self.mobster_ttr_enforcer.throwable_cooldown = 10
	self.mobster_ttr_enforcer.player_health_scaling_mul = 1.5
	self.mobster_ttr_enforcer.headshot_dmg_mul = 1.25

	self.mobster_ttr_enforcer.DAMAGE_CLAMP_BULLET = 100
	self.mobster_ttr_enforcer.DAMAGE_CLAMP_EXPLOSION = 100
	self.mobster_ttr_enforcer.damage.hurt_severity = self.presets.hurt_severities.no_hurts	
	self.mobster_ttr_enforcer.no_retreat = true
	self.mobster_ttr_enforcer.no_arrest = true
	self.mobster_ttr_enforcer.surrender = nil
	
	
	
	
	
	-- CLUB SECURITY 

	self.mobster_ttr_securityclub.damage = self.presets.gang_member_damage

	self.mobster_ttr_securityclub.use_animation_on_fire_damage = false
	self.mobster_ttr_securityclub.flammable = false
	self.mobster_ttr_securityclub.can_be_tased = false
	self.mobster_ttr_securityclub.immune_to_knock_down = true
	self.mobster_ttr_securityclub.immune_to_concussion = true

	self.mobster_ttr_securityclub.HEALTH_INIT = 200

	
	self.mobster_ttr_securityclub.ecm_vulnerability = 0
	self.mobster_ttr_securityclub.ecm_hurts = {
		ears = {
			max_duration = 0,
			min_duration = 0
		}
	}
	self.mobster_ttr_securityclub.throwable = "frag"
	self.mobster_ttr_securityclub.throwable_target_verified = true
	self.mobster_ttr_securityclub.throwable_cooldown = 10
	self.mobster_ttr_securityclub.player_health_scaling_mul = 1.5
	self.mobster_ttr_securityclub.headshot_dmg_mul = 1.5

	self.mobster_ttr_securityclub.DAMAGE_CLAMP_BULLET = 200
	self.mobster_ttr_securityclub.DAMAGE_CLAMP_EXPLOSION = 100
	self.mobster_ttr_securityclub.damage.hurt_severity = self.presets.hurt_severities.no_hurts	
	self.mobster_ttr_securityclub.no_retreat = true
	self.mobster_ttr_securityclub.no_arrest = true
	self.mobster_ttr_securityclub.surrender = nil
	self.mobster_ttr_securityclub.move_speed = self.presets.move_speed.normal	
	
	
	
	
	-- Enemy Agent

	self.agent_ttr_swat.no_retreat = true
	self.agent_ttr_swat.no_arrest = true
	self.agent_ttr_swat.surrender = nil
	self.agent_ttr_swat.HEALTH_INIT = 8
	self.agent_ttr_swat.headshot_dmg_mul = 2
	self.agent_ttr_swat.immune_to_concussion = true	
	self.agent_ttr_swat.can_be_tased = false	
	
	self.agent_ttr_swat.use_animation_on_fire_damage = false
	self.agent_ttr_swat.flammable = false
	self.agent_ttr_swat.can_be_tased = false
	self.agent_ttr_swat.DAMAGE_CLAMP_BULLET = 80
	self.agent_ttr_swat.DAMAGE_CLAMP_EXPLOSION	= 80

	self.agent_ttr_swat.damage.hurt_severity = self.presets.hurt_severities.no_hurts	
	
	self.agent_ttr_swat.ecm_vulnerability = 0
	self.agent_ttr_swat.ecm_hurts = {
		ears = {
			max_duration = 0,
			min_duration = 0
		}
	}
		
	self.agent_ttr_swat.weapon = self.presets.weapon.expert	
-- FRIENDLY UNIT

	self.ttr_friendly.HEALTH_INIT = 60
		
	self.ttr_friendly.DAMAGE_CLAMP_BULLET = 80
	self.ttr_friendly.DAMAGE_CLAMP_EXPLOSION	= 80
		
	self.ttr_friendly.access = "teamAI4"
	
	self.ttr_friendly.damage = self.presets.gang_member_damage
	self.ttr_friendly.weapon = self.presets.weapon.gang_member
	
	self.ttr_friendly.no_retreat = true
	self.ttr_friendly.no_arrest = true
	self.ttr_friendly.surrender = nil


	self.ttr_friendly.move_speed = self.presets.move_speed.very_fast
	self.ttr_friendly.dodge = self.presets.dodge.athletic
	
	self.ttr_friendly.use_animation_on_fire_damage = false
	self.ttr_friendly.flammable = false
	self.ttr_friendly.can_be_tased = false
	self.ttr_friendly.immune_to_knock_down = true
	self.ttr_friendly.immune_to_concussion = true

	

	self.ttr_friendly.damage.hurt_severity = self.presets.hurt_severities.no_hurts	
	
	self.ttr_friendly.ecm_vulnerability = 0
	self.ttr_friendly.ecm_hurts = {
		ears = {
			max_duration = 0,
			min_duration = 0	
		}
	}
	
		
		
		
		
		
		
		
		
		--  ITS THE CAPTAIN

	self.ttr_captain_tank.HEALTH_INIT = 600
		
	self.ttr_captain_tank.DAMAGE_CLAMP_BULLET = 200
	self.ttr_captain_tank.DAMAGE_CLAMP_EXPLOSION	= 100
		
	
	self.ttr_captain_tank.damage = self.presets.gang_member_damage
	self.ttr_captain_tank.weapon = self.presets.weapon.gang_member
	self.ttr_captain_tank.player_health_scaling_mul = 1.25	
	self.ttr_captain_tank.no_retreat = true
	self.ttr_captain_tank.no_arrest = true
	self.ttr_captain_tank.surrender = nil

	self.ttr_captain_tank.headshot_dmg_mul = 6.0
	
	self.ttr_captain_tank.use_animation_on_fire_damage = false
	self.ttr_captain_tank.flammable = false
	self.ttr_captain_tank.can_be_tased = false
	self.ttr_captain_tank.immune_to_knock_down = true
	self.ttr_captain_tank.immune_to_concussion = true

	

	self.ttr_captain_tank.damage.hurt_severity = self.presets.hurt_severities.no_hurts	
	
	self.ttr_captain_tank.ecm_vulnerability = 0
	self.ttr_captain_tank.ecm_hurts = {
		ears = {
			max_duration = 0,
			min_duration = 0
		}
	}
	
		
	

	
	--- civilian no penalty
	self.ttr_civilian_noflee.no_civ_penalty = true
		
	
	
	
	
	
	--- cartel tazer

	self.cartel_tazer.throwable_cooldown = 10
	self.cartel_tazer.flammable = false	
	self.cartel_tazer.immune_to_concussion = true	
---	self.cartel_tazer.use_animation_on_fire_damage = false	
	self.cartel_tazer.special_deaths = nil
	self.cartel_tazer.no_arrest = true	
	

	self.cartel_tazer.weapon = self.presets.weapon.expert
	self.cartel_tazer.weapon.is_rifle.tase_distance = 1500
	self.cartel_tazer.weapon.is_rifle.tase_sphere_cast_radius = 30
	self.cartel_tazer.weapon.is_rifle.aim_delay_tase = {0, 0}
	

	

	
	-----GRENADIER
	
	self.cartel_grenadier.throwable = "launcher_incendiary"
	self.cartel_grenadier.throwable_target_verified = true
	self.cartel_grenadier.throwable_cooldown = 10
	self.cartel_grenadier.DAMAGE_CLAMP_EXPLOSION = 300
	
	self.cartel_grenadier.move_speed = self.presets.move_speed.fast
	self.cartel_grenadier.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison	
	self.cartel_grenadier.can_be_tased = true	
---	self.cartel_grenadier.weapon = self.presets.weapon.gang_member
	self.cartel_grenadier.damage.immune_to_knockback = true
	self.cartel_grenadier.immune_to_knock_down = true
	self.cartel_grenadier.no_retreat = true	
	
	self.cartel_grenadier.weapon = self.presets.weapon.expert
	
	


	
	
	
	




	-----GRENADIER SHOTGUNNER MOLOTOV
	
	self.cartel_grenadier_fire.throwable = "molotov"
	self.cartel_grenadier_fire.throwable_target_verified = true
	self.cartel_grenadier_fire.throwable_cooldown = 10
	self.cartel_grenadier_fire.DAMAGE_CLAMP_EXPLOSION = 300
	
	self.cartel_grenadier_fire.move_speed = self.presets.move_speed.fast
	self.cartel_grenadier_fire.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison	
	self.cartel_grenadier_fire.can_be_tased = true	
---	self.cartel_grenadier_fire.weapon = self.presets.weapon.gang_member
	self.cartel_grenadier_fire.damage.immune_to_knockback = true
	self.cartel_grenadier_fire.immune_to_knock_down = true
	self.cartel_grenadier_fire.no_retreat = true

	self.cartel_grenadier_fire.weapon = self.presets.weapon.expert
	
	



	
	
	-----CARTEL COMMANDO	
	
	
	self.cartel_commando.tags = {
		"law",
		"medic",
		"special"
	}
	
	
	self.cartel_commando.HEALTH_INIT = 600
		
	self.cartel_commando.DAMAGE_CLAMP_BULLET = 200
	self.cartel_commando.DAMAGE_CLAMP_EXPLOSION	= 100
		
	self.cartel_commando.weapon = self.presets.weapon.expert

	self.cartel_commando.explosion_damage_mul = 0.85


	self.cartel_commando.player_health_scaling_mul = 1.5	
	self.cartel_commando.no_retreat = true
	self.cartel_commando.no_arrest = true
	self.cartel_commando.surrender = nil

	self.cartel_commando.headshot_dmg_mul = 6.0
	
	self.cartel_commando.use_animation_on_fire_damage = false
	self.cartel_commando.flammable = false
	self.cartel_commando.can_be_tased = false
	self.cartel_commando.immune_to_knock_down = true
	self.cartel_commando.immune_to_concussion = true
	
---	self.cartel_commando.self.tweak_data.medic.radius = 3000
	
	
	self.cartel_commando.throwable = "molotov"
	self.cartel_commando.throwable_target_verified = true		
	
	self.cartel_commando.silent_priority_shout = "f37"
	self.cartel_commando.priority_shout = "f47"
	
	self.cartel_commando.move_speed = self.presets.move_speed.normal	
		
	
	self.cartel_commando.ecm_hurts = {
		ears = {
			max_duration = 0,
			min_duration = 0
		}
	}
	

	---self.cartel_tazer.damage = self.presets.gang_member_damage	
	
	
	
	   --- CIVILIAN FEMALE NO FLEE
   

   	self.ttr_civilian_noflee_female.no_civ_penalty = true
	self.ttr_civilian_noflee_female.access = "civ_female"
	self.ttr_civilian_noflee_female.speech_prefix_p1 = "cf"
	self.ttr_civilian_noflee_female.speech_prefix_count = 5
	self.ttr_civilian_noflee_female.female = true	
   
	
	
	
	
	
-- INSERTS
	table.insert(self._enemy_list, "constantine_backup")
	table.insert(self._enemy_list, "mobster_ttr_vip")
	table.insert(self._enemy_list, "mobster_ttr_clubowner")
	table.insert(self._enemy_list, "mobster_ttr_enforcer")
	table.insert(self._enemy_list, "mobster_ttr_securityclub")	
	table.insert(self._enemy_list, "agent_ttr_swat")	
	table.insert(self._enemy_list, "ttr_civilian_noflee")
	table.insert(self._enemy_list, "ttr_civilian_noflee_female")	
	table.insert(self._enemy_list, "ttr_friendly")	
	table.insert(self._enemy_list, "ttr_captain_tank")		
	table.insert(self._enemy_list, "cartel_tazer")		
	table.insert(self._enemy_list, "cartel_grenadier")	
	table.insert(self._enemy_list, "cartel_grenadier_fire")		
	table.insert(self._enemy_list, "cartel_commando")			
end)



Hooks:PostHook(CharacterTweakData, "_set_normal", "cdhook_constantine_backup", function(self)

	self.mobster_ttr_clubowner.HEALTH_INIT = 600
	
	self.mobster_ttr_vip.HEALTH_INIT = 51
	
	self.constantine_backup.HEALTH_INIT = 500
	
	self.ttr_friendly.HEALTH_INIT = 80	
	
	self.mobster_ttr_enforcer.HEALTH_INIT = 550
		
	self.constantine_backup.HEALTH_INIT = 500
	
	self.mobster_ttr_securityclub.HEALTH_INIT = 450
	
	self.constantine_backup.DAMAGE_CLAMP_EXPLOSION	= 0
	
	self.agent_ttr_swat.HEALTH_INIT = 48
	self.agent_ttr_swat.headshot_dmg_mul = 2
	
	self.ttr_captain_tank.HEALTH_INIT = 800
	
	self.cartel_tazer.HEALTH_INIT = 30
	self.cartel_tazer.headshot_dmg_mul = 2

	self.cartel_grenadier.HEALTH_INIT = 40
	self.cartel_grenadier.headshot_dmg_mul = 2

	self.cartel_grenadier_fire.HEALTH_INIT = 40
	self.cartel_grenadier_fire.headshot_dmg_mul = 2

	self.cartel_grenadier_fire.weapon = self.presets.weapon.normal
	self.cartel_grenadier.weapon = self.presets.weapon.normal
	self.cartel_tazer.weapon = self.presets.weapon.normal
	
	self.cartel_commando.HEALTH_INIT = 400
	self.cartel_commando.headshot_dmg_mul = 3
	
	self.cartel_commando.weapon = self.presets.weapon.normal
				
				
	
end)











Hooks:PostHook(CharacterTweakData, "_set_hard", "cdhook_constantine_backup", function(self)

	self.mobster_ttr_clubowner.HEALTH_INIT = 650
	
	self.mobster_ttr_enforcer.HEALTH_INIT = 600
	
	self.ttr_friendly.HEALTH_INIT = 100	
	
	self.mobster_ttr_vip.HEALTH_INIT = 184
	
	self.constantine_backup.HEALTH_INIT = 500
	
	self.mobster_ttr_securityclub.HEALTH_INIT = 400
	
	self.constantine_backup.DAMAGE_CLAMP_EXPLOSION	= 0
	
	self.agent_ttr_swat.HEALTH_INIT = 48
	
	self.agent_ttr_swat.headshot_dmg_mul = 2
	
	self.ttr_captain_tank.HEALTH_INIT = 800
	
	self.cartel_tazer.HEALTH_INIT = 30
	self.cartel_tazer.headshot_dmg_mul = 2
	
	
	
	self.cartel_grenadier.HEALTH_INIT = 40
	self.cartel_grenadier.headshot_dmg_mul = 2
	
	self.cartel_grenadier_fire.HEALTH_INIT = 40
	self.cartel_grenadier_fire.headshot_dmg_mul = 2
	
	self.cartel_grenadier_fire.weapon = self.presets.weapon.normal
	self.cartel_grenadier.weapon = self.presets.weapon.normal
	self.cartel_tazer.weapon = self.presets.weapon.normal
		

	self.cartel_commando.HEALTH_INIT = 600
	self.cartel_commando.headshot_dmg_mul = 3
	
	self.cartel_commando.weapon = self.presets.weapon.normal
							
	
end)



Hooks:PostHook(CharacterTweakData, "_set_overkill", "cdhook_constantine_backup", function(self)

	self.mobster_ttr_clubowner.HEALTH_INIT = 1250
	
	self.mobster_ttr_vip.HEALTH_INIT = 200
	
	self.ttr_friendly.HEALTH_INIT = 200	
	
	self.constantine_backup.HEALTH_INIT = 600
	
	self.mobster_ttr_enforcer.HEALTH_INIT = 2000
		
	self.mobster_ttr_securityclub.HEALTH_INIT = 500
	
	self.constantine_backup.DAMAGE_CLAMP_EXPLOSION	= 0	
	
	
	self.agent_ttr_swat.HEALTH_INIT = 60
	
	self.agent_ttr_swat.headshot_dmg_mul = 3 
	
	self.ttr_captain_tank.HEALTH_INIT = 1200
	
	
	self.cartel_tazer.HEALTH_INIT = 60
	self.cartel_tazer.headshot_dmg_mul = 4
	
	
	self.cartel_grenadier.HEALTH_INIT = 80
	self.cartel_grenadier.headshot_dmg_mul = 4
	
	
	self.cartel_grenadier_fire.HEALTH_INIT = 80
	self.cartel_grenadier_fire.headshot_dmg_mul = 4


	self.cartel_commando.HEALTH_INIT = 800
	self.cartel_commando.headshot_dmg_mul = 4
	

							
	
end)











Hooks:PostHook(CharacterTweakData, "_set_overkill_145", "cdhook_constantine_backup", function(self)

	
	self.mobster_ttr_clubowner.HEALTH_INIT = 1450
		
	self.mobster_ttr_vip.HEALTH_INIT = 200
	
	self.ttr_friendly.HEALTH_INIT = 240		
	
	self.constantine_backup.HEALTH_INIT = 800
	
	
	self.mobster_ttr_enforcer.HEALTH_INIT = 2000
	
	self.mobster_ttr_securityclub.HEALTH_INIT = 650
	
	self.constantine_backup.DAMAGE_CLAMP_EXPLOSION	= 0	
	
	
	self.agent_ttr_swat.HEALTH_INIT = 100
	
	self.agent_ttr_swat.headshot_dmg_mul = 4 
	
	self.ttr_captain_tank.HEALTH_INIT = 2000
	
	
	self.cartel_tazer.HEALTH_INIT = 90
	self.cartel_tazer.headshot_dmg_mul = 6
	
	
	self.cartel_grenadier.HEALTH_INIT = 120
	self.cartel_grenadier.headshot_dmg_mul = 4
	
	self.cartel_grenadier_fire.HEALTH_INIT = 120
	self.cartel_grenadier_fire.headshot_dmg_mul = 4

	self.cartel_commando.HEALTH_INIT = 1400
	self.cartel_commando.headshot_dmg_mul = 4
					
	
	
end)







Hooks:PostHook(CharacterTweakData, "_set_easy_wish", "cdhook_constantine_backup", function(self)

	self.mobster_ttr_clubowner.HEALTH_INIT = 1950
	
	self.mobster_ttr_vip.HEALTH_INIT = 350
	
	self.constantine_backup.HEALTH_INIT = 1000
	
	self.mobster_ttr_enforcer.HEALTH_INIT = 2500

	self.mobster_ttr_securityclub.HEALTH_INIT = 950
	
	self.constantine_backup.DAMAGE_CLAMP_EXPLOSION	= 0	
	
	self.ttr_friendly.HEALTH_INIT = 300	
	
	self.agent_ttr_swat.HEALTH_INIT = 132
	
	self.agent_ttr_swat.headshot_dmg_mul = 4 
	
	self.ttr_captain_tank.HEALTH_INIT = 2000
	
	
	self.cartel_tazer.HEALTH_INIT = 180
	self.cartel_tazer.headshot_dmg_mul = 4
	
	self.cartel_grenadier.HEALTH_INIT = 200
	self.cartel_grenadier.headshot_dmg_mul = 3	
	
	self.cartel_grenadier_fire.HEALTH_INIT = 200
	self.cartel_grenadier_fire.headshot_dmg_mul = 3
	
	
	self.cartel_commando.HEALTH_INIT = 2000
	self.cartel_commando.headshot_dmg_mul = 3	
	
end)












Hooks:PostHook(CharacterTweakData, "_set_overkill_290", "cdhook_constantine_backup", function(self)

	self.mobster_ttr_clubowner.HEALTH_INIT = 1950
	self.mobster_ttr_vip.HEALTH_INIT = 350
	
	self.constantine_backup.HEALTH_INIT = 1000

		
	self.ttr_friendly.HEALTH_INIT = 300	
	
	self.mobster_ttr_enforcer.HEALTH_INIT = 2500
	self.mobster_ttr_securityclub.HEALTH_INIT = 950
	
	self.constantine_backup.DAMAGE_CLAMP_EXPLOSION	= 0
	
	self.agent_ttr_swat.HEALTH_INIT = 132
	
	self.agent_ttr_swat.headshot_dmg_mul = 4 
	
	self.ttr_captain_tank.HEALTH_INIT = 2000
	
	self.cartel_tazer.HEALTH_INIT = 180
	self.cartel_tazer.headshot_dmg_mul = 4
	
	self.cartel_grenadier.HEALTH_INIT = 200
	self.cartel_grenadier.headshot_dmg_mul = 3		
	
	self.cartel_grenadier_fire.HEALTH_INIT = 200
	self.cartel_grenadier_fire.headshot_dmg_mul = 3


	self.cartel_commando.HEALTH_INIT = 2000
	self.cartel_commando.headshot_dmg_mul = 3
				
	
end)


Hooks:PostHook(CharacterTweakData, "_set_sm_wish", "cdhook_constantine_backup", function(self)
	self.ttr_friendly.HEALTH_INIT = 600	
	
	self.mobster_ttr_clubowner.HEALTH_INIT = 1950
	self.mobster_ttr_vip.HEALTH_INIT = 350
	
	self.constantine_backup.HEALTH_INIT = 3000
	
	self.mobster_ttr_enforcer.HEALTH_INIT = 2500
	self.mobster_ttr_securityclub.HEALTH_INIT = 950	
	
	self.constantine_backup.DAMAGE_CLAMP_EXPLOSION	= 0	
	
	self.agent_ttr_swat.HEALTH_INIT = 132
	
	self.agent_ttr_swat.headshot_dmg_mul = 4 
	
	self.ttr_captain_tank.HEALTH_INIT = 2800
	
	
	self.cartel_tazer.HEALTH_INIT = 180
	self.cartel_tazer.headshot_dmg_mul = 3
	
	self.cartel_grenadier.HEALTH_INIT = 200
	self.cartel_grenadier.headshot_dmg_mul = 3	

	self.cartel_grenadier_fire.HEALTH_INIT = 200
	self.cartel_grenadier_fire.headshot_dmg_mul = 3


	self.cartel_commando.HEALTH_INIT = 2800
	self.cartel_commando.headshot_dmg_mul = 3	


	self.cartel_grenadier_fire.weapon = self.presets.weapon.deathwish
	self.cartel_grenadier.weapon = self.presets.weapon.deathwish
	self.cartel_tazer.weapon = self.presets.weapon.deathwish
	self.cartel_commando.weapon = self.presets.weapon.deathwish






				
	
	
end)








function CharacterTweakData:character_map()

	local char_map = origin_charmap(self)



	char_map.triadyacht = {
		path = "units/pd2_mod_ttr/characters/",
		list = {
			"civ_female_stripper_african_1",
			"civ_female_stripper_african_2",
			"civ_female_stripper_blonde_1",
			"civ_female_stripper_blonde_2",	
			"civ_female_stripper_asian_1",
			"civ_female_stripper_asian_2",			
			"civ_female_stripper_brunette_1",			
			"civ_female_stripper_brunette_2",	
			"civ_female_stripper_mexican_1",			
			"civ_female_stripper_mexican_2",			
			"civ_female_bikini_african_1",
			"civ_female_bikini_african_2",
			"civ_female_bikini_mexican_1",
			"civ_female_bikini_mexican_5",			
			"civ_female_bikini_blonde_1",
			"civ_female_bikini_blonde_2",	
			"civ_female_bikini_asian_1",
			"civ_female_bikini_asian_2",			
			"civ_female_bikini_brunette_1",			
			"civ_female_bikini_brunette_2",				
			"civ_male_suave_1",
			"civ_male_suave_2",	
			"civ_male_suave_3",	
			"civ_male_suave_4",
			"civ_male_suave_5",	
			"civ_male_white_bathrobe_1",
			"civ_male_white_bathrobe_2",	
			"civ_male_mex_bathrobe_1",				
			"civ_male_mex_bathrobe_3",
			"civ_male_mex_1",			
			"civ_male_mex_2",	
			"civ_male_mex_3",
			"civ_male_mex_4",	
			"civ_male_mex_5",
			"civ_female_mex_party_1",			
			"civ_female_mex_party_2",	
			"civ_female_african_party_1",
			"civ_female_african_party_2",											
			"civ_male_resort_suit_1",				
			"civ_male_resort_suit_2",	
			"civ_male_security",			
			"civ_diego",
			"civ_kozlov",
			"civ_mobster_son",
			"civ_informant",
			"ene_agent_soldier_1",			
			"ene_gang_mobster_1_pager",
			"ene_gang_mobster_2_pager",		
			"ene_gang_mobster_3_pager",
			"ene_gang_mobster_4_pager",
			"ene_gang_mobster_vip_1",
			"ene_gang_mobster_vip_2",				
			"ene_gang_mobster_5",
			"ene_gang_mobster_6",
			"ene_gang_mobster_7_pager",
			"ene_gang_mobster_armored",	
			"ene_gang_mobster_clubsecurity",				
			"ene_gang_mobster_clubowner",
			"ene_gang_mobster_mobboss",			
			"ene_gang_mobster_enforcer",
			"ene_friendly_security_winter_1",	
			"ene_friendly_backup_diego_crew",							
			"ene_security_resort_1",
			"ene_security_resort_2",		
			"ene_security_resort_3",
			"ene_security_resort_4",			
			"ene_captain_dozer",
			"ene_city_swat_1",
			"ene_city_swat_2",		
			"ene_city_heavy_g36",
			"ene_marshal_gensec",		
			"ene_cartel_security_1",
			"ene_cartel_security_2",		
			"ene_cartel_soldier",
			"ene_cartel_soldier_2",			
			"ene_cartel_soldier_3",					
			"ene_cartel_soldier_4",
			"ene_cartel_soldier_heavy",		
			"ene_cartel_tazer",		
			"ene_cartel_scout",		
			"ene_cartel_grenadier",		
			"ene_cartel_bulldozer",		
			"ene_cartel_suit_1",
			"ene_cartel_vip_armor_1",			
			"ene_cartel_suit_2",
			"ene_cartel_suit_3",
			"ene_cartel_bathrobe_1",
			"ene_cartel_bathrobe_2",
			"ene_cartel_bathrobe_3",
			"ene_cartel_clubowner",
			"ene_cartel_rebel_1",
			"ene_cartel_rebel_2",
			"ene_cartel_rebel_3",
			"ene_cartel_rebel_4",
			"ene_cartel_commando",			
			"ene_friendly_backup_1"
		}
	}
	




	
	return char_map
end

