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