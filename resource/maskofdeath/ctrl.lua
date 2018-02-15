function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 1)
    MapCopyNum(map, 1)
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 0)
    MapType ( map , 3 )

end


function get_map_entry_pos_maskofdeath()

	local POS_X=301
	local POS_Y=742
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "garner")
    SetMapEntryTime(map, "2011/3/17/14/0", "0/6/0", "0/0/30", "0/0/45")
	
end

function after_enter_maskofdeath( role , map_copy )
end

function before_leave_maskofdeath( role )
end

function map_run_maskofdeath( map )
end

function map_copy_before_close_maskofdeath( map_copy )

end

function map_copy_close_maskofdeath( map_copy )
	ClearAllSubMapCha(map_copy)
end



function GiveSpecItem( role )

end