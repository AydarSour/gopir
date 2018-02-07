function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 0)
    MapCopyNum(map, 1)
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 1 )
end

function get_map_entry_pos_premium()
	local POS_X=0
	local POS_Y=0
	return POS_X , POS_Y
end

function init_entry(map)
    SetMapEntryMapName(map, "garner")

end

function map_run_premium(map)
end

function after_enter_premium( role , map_copy )
end

function before_leave_premium( role )
end