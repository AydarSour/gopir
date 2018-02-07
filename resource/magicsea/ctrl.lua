function config(map)
	MapCanPK(map, 1)
	MapType ( map , 4 )
end

function get_map_entry_pos_magicsea()
end

function init_entry(map)
end

function after_enter_magicsea( role , map_copy )
--AfterEnter(role)
end

function before_leave_magicsea( role )
end

function map_copy_run_special_magicsea( map_copy )
local now_miniute = os.date("%M")
		Tick_Tack3 = Tick_Tack3 + 1
		
		if Tick_Tack3 == 0  then
			Tick_Tack3=0
		end
		if Tick_Tack3 == 1 then
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
		NameMagi = arr[a]
		Notice("Шайтан : Началась охота на "..NameMagi..", поторопитесь скорей устранить его!")
	end
		end
		if Tick_Tack3 == 2 then
		
		end
		if Tick_Tack3 == 3 then
		
		end
		if Tick_Tack3 == 4 then--20
			
		end
		if Tick_Tack3 == 5 then--25
		
		end
		if Tick_Tack3 == 6 then--30
		
		end
		if Tick_Tack3 == 7 then--35
		if NameMagi ~= nil and NameMagi~="" then
			Notice("Шайтан : Поторопитесь! Охота на "..NameMagi.." скоро закончится")
		end
		end
		if Tick_Tack3 == 8 then--40
		
		end
		if Tick_Tack3 == 9 then--45
		
		end
		if Tick_Tack3 == 10 then--50
			if NameMagi ~= nil and NameMagi~="" then
				Notice("Шайтан : Поторопитесь! Охота на "..NameMagi.." скоро закончится")
			else
			
			end
		end
		if Tick_Tack3 == 11 then--55
		if NameMagi ~= nil and NameMagi~="" then
			Notice("Шайтан : Охота на "..NameMagi.."  закончилась")
			NameMagi=""
		else
			
		end
		end
		if Tick_Tack3 == 12 then--00
			Tick_Tack3=0
			
		end

end

function map_copy_first_run_magicsea( map_copy )

end

function map_copy_run_magicsea( map_copy )

end

function map_run_magicsea( map )

end

function map_copy_close_magicsea ( map_copy )
end
		
function can_open_entry_magicsea( map ) 
end 