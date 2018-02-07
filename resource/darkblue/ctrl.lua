function config(map)
	MapCanPK(map, 1)
	MapType ( map , 4 )
end

function get_map_entry_pos_darkblue()
end

function init_entry(map)
end

function after_enter_darkblue(role,map_copy)
--AfterEnter(role)
end

function before_leave_darkblue(role)
end

function map_copy_first_run_darkblue(map_copy)
end

function map_copy_run_darkblue(map_copy)

end

function map_copy_run_special_darkblue(map_copy)
local now_miniute = os.date("%M")
		Tick_Tack2 = Tick_Tack2 + 1
		
		if Tick_Tack2 == 0  then
			Tick_Tack2=0
		end
		if Tick_Tack2 == 1 then
	arr = {}
	PlayersInMap = {}
	DealAllActivePlayerInMap ( map_copy , 'GetPlayerNames' )
	
	local ListPlayers = ''

	for i,v in pairs ( PlayersInMap ) do
		table.insert(arr,i,v)
		ListPlayers = string.format( '%s [%s],' , ListPlayers , v )
	end
		--Получаем размер массива
	local b = getn (arr)
	local c = 0
	local a = math.random ( 1, b )
	
	if arr[a] == nil and arr[a] == 0 and arr[a] == "" then
		return
	else
		NameDark = arr[a]
		Notice("Ледынь : Началась охота на "..NameDark..", поторопитесь скорей устранить его!")
	end
		end
		if Tick_Tack2 == 2 then
			
		end
		if Tick_Tack2 == 3 then
		
		end
		if Tick_Tack2 == 4 then
			
		end
		if Tick_Tack2 == 5 then
		
		end
		if Tick_Tack2 == 6 then

		end
		if Tick_Tack2 == 7 then
		if NameDark ~= nil and NameDark~="" then
			Notice("Ледынь : Поторопитесь! Охота на "..NameDark.." скоро закончится")
		end
		end
		if Tick_Tack2 == 8 then
		
		end
		if Tick_Tack2 == 9 then
			
		end
		if Tick_Tack2 == 10 then
			if NameDark ~= nil and NameDark~="" then
				Notice("Ледынь : Поторопитесь! Охота на "..NameDark.." скоро закончится")
			else
			
			end
		end
		if Tick_Tack2 == 11 then
		if NameDark ~= nil and NameDark~="" then
			Notice("Ледынь : Охота на "..NameDark.."  закончилась")
				NameDark=""
			else
			
			end
		end
		if Tick_Tack2 == 12 then
			Tick_Tack2=0
		end

end

function map_run_darkblue(map)
end

function map_copy_close_darkblue(map_copy)
end

function can_open_entry_darkblue(map) 
end 