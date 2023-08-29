
if not Global.level_data then return end
	
Hooks:PostHook(CopBrain, "on_alarm_pager_interaction", "fix_pager_static", function(self, status, player)
	if status ~= "started" then
		if self._unit:character_damage():dead() then
			self._unit:sound():corpse_play(self:_get_radio_id("dsp_stop_all"), nil, true)
		else
			self._unit:sound():play(self:_get_radio_id("dsp_stop_all"), nil, true)
		end
	end
end)
