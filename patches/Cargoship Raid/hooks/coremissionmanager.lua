changeElement = {}
changeElement = changeElement or class(MissionElement)

if not XAudio then
	return
end

MixedSoundSource = MixedSoundSource or class(XAudio.Source)

function MixedSoundSource:alive()
	return alive(self._engine_source)
end

function changeElement:enable(ids)
	for _, script in pairs(managers.mission:scripts()) do
		for idx, element in pairs(script:elements()) do
		idx = tostring(idx)
			if table.contains(ids, idx) then
				if element then
					element:set_enabled(true)
				end
			end
		end
	end
end

function changeElement:execute(ids)
	for _, script in pairs(managers.mission:scripts()) do
		for idx, element in pairs(script:elements()) do
		idx = tostring(idx)
			if table.contains(ids, idx) then
				if element then
					element:on_executed()
				end
			end
		end
	end
end

function changeElement:setRandom(ids, value)
	for _, script in pairs(managers.mission:scripts()) do
		for idx, element in pairs(script:elements()) do
		idx = tostring(idx)
			if table.contains(ids, idx) then
				if element then
					element._values.amount = value
				end
			end
		end
	end
end

function changeElement:setCounter(ids, value)
	for _, script in pairs(managers.mission:scripts()) do
		for idx, element in pairs(script:elements()) do
		idx = tostring(idx)
			if table.contains(ids, idx) then
				if element then
					element._values.counter_target = value
				end
			end
		end
	end
end

Hooks:PostHook(MissionScriptElement, "on_executed", "start_up", function(self, ...)
local _id = tostring(self._id)
	if _id == "200309" then
		managers.mission:add_global_event_listener("xanax_ecm_checker", "ecm_jammer_off", function()
			if _G.xanax_ecm_update then
				DelayedCalls:Add("delay_alarm", 20, function()
					changeElement:enable({"100569"})
					changeElement:execute({"100569"})
				end)
			end
		end)
	end
	if _id == "200237" then
		checked_mods = {
		["RestorationMod"] = true, ["Payday 2 Hyper Heisting Shin Shootout"] = true
	}
	overhaul_installed = false
	local installed_mods = BLT.Mods.mods
	for _,mod in pairs(installed_mods) do 
		local id = mod:GetId()
		if checked_mods[id] then
			log(tostring(id))
			overhaul_installed = true
		end
	end
	--Using two ways for checking if overhaul mod is installed, seems like BeardLib.Utils:ModExists dosn't work for strings that have spaces in them.
	if BeardLib.Utils:ModExists("RestorationMod") or BeardLib.Utils:ModExists("Payday 2 Hyper Heisting Shin Shootout") or overhaul_installed then
--[[ this actually crashes res hud xd
					managers.hud:show_hint({
					text=on and "Overhaul mod detected. Custom map ballance applied!" or "Overhaul mod detected. Custom map ballance applied!",
					time=8
					})
]]
			--rework system;
			changeElement:setRandom({'210165', '210222', '210318'}, 2)
	else
		--Reduce guard ammount for vanilla players;
		local ids = {'100842', '100837', '100724'}
		for _, script in pairs(managers.mission:scripts()) do
			for idx, element in pairs(script:elements()) do
			idx = tostring(idx)
				if table.contains(ids, idx) then
					if element then
						element._values.trigger_times = 1
					end
				end
			end
		end
	end
end
end)
