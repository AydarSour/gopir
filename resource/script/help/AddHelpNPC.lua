----------------------
-- ������� �������� --
----------------------
print("-------------------------------------------------------------------------------")
print( "����㧪� AddHelpNPC.lua + ��⥬� ��⨄" )
print("-------------------------------------------------------------------------------")

ClearHelpNPC()
AddHelpNPC("�������� - ������ ")

CacheDir = GetResPath("systems/antidupe")

function PlayerEnterMap(...)
	local Char = arg[2]
	local mapname = GetChaMapName(Char)
	local x, y = GetChaPos(Char)
	if ChaIsBoat(Char) == 1 then 
		Char = GetMainCha(Char) 
		mapname = GetChaMapName(GetCtrlBoat(Char))
	end
	local name = GetChaDefaultName(Char)
	local file = io.open(CacheDir .. "/" .. name .. ".txt", "r")
	if file ~= nil then
		local x, y, map = file:read("*l"), file:read("*l"), file:read("*l")
		file:close()
		if map ~= mapname then
			LG("antidupe" , "����� "..name.." �������� ������� ����. ����� - "..map..", ���������� - "..math.floor(x/100)..", "..math.floor(y/100)..". ")
			os.remove(CacheDir .. "/" .. name .. ".txt")
			GoTo(Char , math.floor(x/100), math.floor(y/100), map)
		end
	else
		if x ~= nil and y ~= nil and name ~= nil and mapname ~= nil then
			local file = io.open(CacheDir .. "/" .. name .. ".txt", "a")
			file:write(x .. "\n" .. y .. "\n" .. mapname)
			file:close()
		end
	end
end

function PlayerLeaveMap(...)
	local Char = arg[2]
	if ChaIsBoat(Char) == 1 then 
		Char = GetMainCha(Char) 
		mapname = GetChaMapName(GetCtrlBoat(Char))
	end
	local name = GetChaDefaultName(Char)
	os.remove(CacheDir .. "/" .. name .. ".txt")
end

Hook:SetHookPattern("^after_enter_.*$", "POST", PlayerEnterMap, 2)
Hook:SetHookPattern("^before_leave_.*$", "POST", PlayerLeaveMap, 2)