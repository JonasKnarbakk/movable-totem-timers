local EventFrame = CreateFrame("Frame")
EventFrame:RegisterEvent("PLAYER_LOGIN")
EventFrame:SetScript("OnEvent", function(self,event,...)
     	ChatFrame1:AddMessage('Welcome ' .. UnitName("Player") .. ' it\'s good too see you! Type /tometimers for options')
end)

local function countArray(array)
	local i = 0
	while( (array[i] == nul) == false) do
		i = i + 1
	end
	return i
end

SLASH_TOTEMTIMERS1 = "/totemtimers"
SlashCmdList["TOTEMTIMERS"] = function(msg)
	local args = {}
	local i = 0
	for arg in string.gmatch(msg, "[^%s]+") do
	   args[i] = arg
		 i = i + 1
	end
	if (countArray(args) == 2) then
		local t=TotemFrame;
		t:ClearAllPoints();
		t:SetPoint("CENTER", UIParent, "CENTER", args[0], args[1]);
		ChatFrame1:AddMessage('Moved the TotemTimers to ' ..  args[0] .. ' ' .. args[1])

	elseif (msg == '') then
		ChatFrame1:AddMessage('Available Commands: Type \"/totemtimers x y\" to move the TotemFrame')
	elseif (msg == 'options') then
		ChatFrame1:AddMessage('Available Commands: Type \"/totemtimers x y\" to move the TotemFrame')
	else
		ChatFrame1:AddMessage(msg .. 'is not a valid command for TotemTimers')
	end
end
