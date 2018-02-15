print( "Loading Winterland" )
print( "Loading ctrl.lua" )

function config(map)
	MapCanSavePos(map, 1)
	MapCanPK(map, 1)
end

function init_entry(map)
end

function map_run_winterland ( map )
--	local now_hour= tonumber(os.date("%H"))
--	local now_miniute= tonumber(os.date("%M"))
--	local CheckDateNum = now_hour*100 +now_miniute
--	local NowSecond = tonumber(os.date("%S"))
--	if now_hour == 0  and now_miniute == 0 and  NowSecond < 6 then
--		Clear_Event_Record_By_Event_Name( "Harbor Operators\' Meeting" )
--		Clear_Event_Record_By_Event_Name( "Resident Evil" )
--		Clear_Event_Record_By_Event_Name( "Puppet Ville" )
--		Clear_Event_Record_By_Event_Name( "Puppet Kara" )
--		Clear_Event_Record_By_Event_Name( "Dragon Informer" )
--	end
end

function get_map_entry_pos_winterland()
end

function after_enter_winterland( role , map_copy )
--AfterEnter(role)
end

function before_leave_winterland( role )
end

function map_copy_run_winterland( map_copy )
end