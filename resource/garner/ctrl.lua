function config(map)
	MapCanPK(map, 1)
	MapType ( map , 4 )
end

function get_map_entry_pos_garner()
end

function init_entry(map)

end

function after_enter_garner( role , map_copy )

--AfterEnter(role)


end

function before_leave_garner( role )
end

function map_copy_first_run_garner( map_copy )
 

end

function map_copy_run_garner( map_copy )

end

function map_copy_run_special_garner( map_copy )


local now_miniute = os.date("%M")
		Tick_Tack = Tick_Tack + 1
		
		if Tick_Tack == 0  then
			Tick_Tack=0
			
		end
		if Tick_Tack == 1 then
		
		
		
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
		NameGarn = arr[a]
		Notice("Аргент : Началась охота на "..NameGarn..", поторопитесь скорей устранить его!")
		
			
	end
		end
		if Tick_Tack == 2 then
		end
		if Tick_Tack == 3 then
		
		end
		if Tick_Tack == 4 then
			
		end
		if Tick_Tack == 5 then
		
		end
		if Tick_Tack == 6 then

		end
		if Tick_Tack == 7 then
		if NameGarn ~= nil and NameGarn~="" then
			Notice("Аргент : Поторопитесь! Охота на "..NameGarn.." скоро закончится")
		end
		end
		if Tick_Tack == 8 then
		
		end
		if Tick_Tack == 9 then
	
		end
		if Tick_Tack == 10 then
			if NameGarn ~= nil and NameGarn~="" then
			Notice("Аргент : Поторопитесь! Охота на "..NameGarn.." скоро закончится")
			else
			
			end
		end
		if Tick_Tack == 11 then
			if NameGarn ~= nil and NameGarn~="" then
				Notice("Аргент : Охота на "..NameGarn.."  закончилась")
				NameGarn=""
				else
				
				end
		end
		if Tick_Tack == 12 then
			Tick_Tack=0

		end

		end

function map_run_garner( map )

		
end

function map_copy_close_garner ( map_copy )

end

function can_open_entry_garner( map ) 
end 