
if not Global.level_data or BeardLib.Utils:ModExists("RestorationMod") then return end

Hooks:PostHook(GroupAITweakData, "_init_unit_categories", "russia_groupai", function(self, difficulty_index)
	
	self.unit_categories.CS_cop_C45_R870.unit_types.russia = {
		Idstring("units/pd2_dlc_mad/characters/ene_rus_cop_1/ene_rus_cop_1"),
		Idstring("units/pd2_dlc_mad/characters/ene_rus_cop_2/ene_rus_cop_2"),
		Idstring("units/pd2_dlc_mad/characters/ene_rus_cop_3_r870/ene_rus_cop_3_r870")
	}
	
	self.unit_categories.CS_cop_stealth_MP5.unit_types.russia = {Idstring("units/pd2_dlc_mad/characters/ene_rus_cop_3_mp5/ene_rus_cop_3_mp5")}
	
	self.unit_categories.CS_tazer.unit_types.russia = {Idstring("units/pd2_dlc_mad/characters/ene_rus_tazer/ene_rus_tazer")}
	
	self.unit_categories.CS_swat_MP5.unit_types.russia =	{Idstring("units/pd2_dlc_mad/characters/ene_rus_cop_3_mp5/ene_rus_cop_3_mp5")}
	self.unit_categories.CS_swat_R870.unit_types.russia =	{Idstring("units/pd2_dlc_mad/characters/ene_rus_cop_3_r870/ene_rus_cop_3_r870")}
	
	self.unit_categories.CS_heavy_M4.unit_types.russia =	{Idstring("units/pd2_dlc_mad/characters/ene_rus_cop_4_m4/ene_rus_cop_4_m4")}
	self.unit_categories.CS_heavy_R870.unit_types.russia =	{Idstring("units/pd2_dlc_mad/characters/ene_rus_cop_4_r870/ene_rus_cop_4_r870")}
	
	self.unit_categories.CS_shield.unit_types.russia =		{Idstring("units/pd2_dlc_mad/characters/ene_rus_shield_c45/ene_rus_shield_c45")}
	
	self.unit_categories.FBI_suit_C45_M4.unit_types.russia = {
		Idstring("units/pd2_dlc_mad/characters/ene_rus_cop_1/ene_rus_cop_1"),
		Idstring("units/pd2_dlc_mad/characters/ene_rus_cop_2/ene_rus_cop_2"),
		Idstring("units/pd2_dlc_mad/characters/ene_rus_cop_4_m4/ene_rus_cop_4_m4")
	}
	self.unit_categories.FBI_suit_M4_MP5.unit_types.russia = {
		Idstring("units/pd2_dlc_mad/characters/ene_rus_cop_3_mp5/ene_rus_cop_3_mp5"),
		Idstring("units/pd2_dlc_mad/characters/ene_rus_cop_4_m4/ene_rus_cop_4_m4")
	}
	self.unit_categories.FBI_suit_stealth_MP5.unit_types.russia = {Idstring("units/pd2_dlc_mad/characters/ene_rus_cop_4_m4/ene_rus_cop_4_m4")}
	
	if difficulty_index < 6 then
		-- FBI
		self.unit_categories.FBI_swat_M4.unit_types.russia =	{Idstring("units/pd2_dlc_mad/characters/ene_rus_fsb_m4/ene_rus_fsb_m4")}
		self.unit_categories.FBI_swat_R870.unit_types.russia =	{Idstring("units/pd2_dlc_mad/characters/ene_rus_fsb_r870/ene_rus_fsb_r870")}
		
		self.unit_categories.FBI_heavy_G36.unit_types.russia =	{Idstring("units/pd2_dlc_mad/characters/ene_rus_fsb_heavy_m4/ene_rus_fsb_heavy_m4")}
		self.unit_categories.FBI_heavy_R870.unit_types.russia =	{Idstring("units/pd2_dlc_mad/characters/ene_rus_fsb_heavy_m4/ene_rus_fsb_heavy_m4")}
		
		self.unit_categories.FBI_shield.unit_types.russia = {Idstring("units/pd2_dlc_mad/characters/ene_rus_shield_sr2/ene_rus_shield_sr2")}
		
	elseif difficulty_index < 8 then
		-- City
		self.unit_categories.FBI_swat_M4.unit_types.russia =	{Idstring("units/pd2_dlc_mad/characters/ene_rus_fsbcity_g36/ene_rus_fsbcity_g36")}
		self.unit_categories.FBI_swat_R870.unit_types.russia =	{Idstring("units/pd2_dlc_mad/characters/ene_rus_fsbcity_r870/ene_rus_fsbcity_r870")}
		
		self.unit_categories.FBI_heavy_G36.unit_types.russia =	{Idstring("units/pd2_dlc_mad/characters/ene_rus_fsbcity_heavy_g36/ene_rus_fsbcity_heavy_g36")}
		self.unit_categories.FBI_heavy_R870.unit_types.russia =	{Idstring("units/pd2_dlc_mad/characters/ene_rus_fsbcity_heavy_g36/ene_rus_fsbcity_heavy_g36")}
		
		self.unit_categories.FBI_shield.unit_types.russia = {Idstring("units/pd2_dlc_mad/characters/ene_rus_shield_sr2_city/ene_rus_shield_sr2_city")}
	else
		-- ZEALs
		self.unit_categories.FBI_swat_M4.unit_types.russia =	{Idstring("units/pd2_dlc_mad/characters/ene_rus_fsbzeal_akmsu/ene_rus_fsbzeal_akmsu")}
		self.unit_categories.FBI_swat_R870.unit_types.russia =	{Idstring("units/pd2_dlc_mad/characters/ene_rus_fsbzeal_akmsu/ene_rus_fsbzeal_akmsu")}
		
		self.unit_categories.FBI_heavy_G36.unit_types.russia =	{Idstring("units/pd2_dlc_mad/characters/ene_rus_fsbzeal_heavy_ak47_ass/ene_rus_fsbzeal_heavy_ak47_ass")}
		self.unit_categories.FBI_heavy_R870.unit_types.russia =	{Idstring("units/pd2_dlc_mad/characters/ene_rus_fsbzeal_heavy_ak47_ass/ene_rus_fsbzeal_heavy_ak47_ass")}
		
		self.unit_categories.FBI_shield.unit_types.russia = {Idstring("units/pd2_dlc_mad/characters/ene_rus_shield_sr2_city/ene_rus_shield_sr2_city")}
	end
end)
