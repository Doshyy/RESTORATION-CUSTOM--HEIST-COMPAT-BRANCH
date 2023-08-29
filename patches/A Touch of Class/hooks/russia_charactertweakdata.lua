local origin_charmap = CharacterTweakData.character_map
function CharacterTweakData:character_map()
	local char_map = origin_charmap(self)
	char_map.atoc = {
		path = "units/pd2_dlc_mad/characters/",
		list = {
			"ene_rus_security_1",
			"ene_rus_security_2",
			"ene_rus_security_3"
		}
	}
	return char_map
end

