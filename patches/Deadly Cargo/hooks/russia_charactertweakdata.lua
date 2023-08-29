local character_map_original = CharacterTweakData.character_map

function CharacterTweakData:character_map(...)
	
	local char_map = character_map_original(self, ...)
	local cargo_map ={
			"ene_security_winter_2",
			"npc_backup_1"
	}
	local rus_map = {
		"ene_rus_security_1",
		"ene_rus_security_2",
		"ene_rus_security_3"
	}
	
	for _, unit in pairs(rus_map) do
		table.insert(char_map.mad.list, unit)
	end
	
	for _, unit in pairs(cargo_map) do
		table.insert(char_map.basic.list, unit)
	end
	
	
	
	
	
	return char_map
end



