print( "Loading AddHelpNPC.lua" )
dofile(GetResPath("script/help/hook.lua"))
--dofile(GetResPath("script\\deffer.lua"))
print("Loading Anti-Dupe System");
print( "------------------------------------" )
print( "Loading DONE!" )

ClearHelpNPC()
AddHelpNPC("Drunkyard - Anthony")

CacheDir = GetResPath("script/help/cache")

--Проверка игрока на карте
function PlayerEnterMap(...)
	local name = GetRoleID(arg[2])	--ID игрока
	local x, y = GetChaPos(arg[2])
	local file = io.open(CacheDir.."/"..name..".txt", "r")
	--Если файл есть, то
	if file ~= nil then
		local x, y, map = file:read("*l"), file:read("*l"), file:read("*l")
		--Проверим выгрузку переменных
		if map ~= nil then
			--Проверим соответсвует ли карта записанной ранее, если нет то
			if map ~= GetChaMapName(arg[2]) then
				local file2 = io.open(CacheDir.."/DupeLog.log", "a")
				local now_date = os.date("%d/%m/%Y - %H:%M:%S")
				local PlayerName = GetChaDefaultName(arg[2])
				local PlayerMap = GetChaMapName(arg[2])
				local Player_x, Player_y = GetChaPos(arg[2])
				file2:write("["..now_date.."]: Игрок <<"..PlayerName.."(ID: "..name..")>> совершил попытку дюпа на локации: '"..PlayerMap.."' по координатам - ("..Player_x..","..Player_y..").\n")
				file2:close()
				GoTo(arg[2] , math.floor(x/100), math.floor(y/100), map)
				os.remove(CacheDir.."/"..name..".txt")
			end
		end
		file:close()
	--Если файла нет, то создадим его
	else
		if x ~= nil then
			local file = io.open(CacheDir.."/"..name..".txt", "a")
			file:write(x.."\n"..y.."\n"..GetChaMapName(arg[2]))
			file:close()
		end
	end
end

function PlayerLeaveMap(...)
	local name = GetRoleID(arg[2])
	os.remove(CacheDir.."/"..name..".txt")
end

function antichit2par(...)
	if arg[2] == 20 then
		ClearFightSkill(arg[1])
		SetChaAttr(arg[1], ATTR_TP ,0 )
	end
end

function antichit3par(...)
	if arg[3] == 20 then
		ClearFightSkill(arg[1])
		SetChaAttr(arg[1], ATTR_TP ,0 )
	end
end

Hook:SetHookPattern("^after_enter_.*$", "POST", PlayerEnterMap, 2)
Hook:SetHookPattern("^before_leave_.*$", "POST", PlayerLeaveMap, 2)