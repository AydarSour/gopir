function config(map)
	MapCanSavePos(map, 0)
	MapCanPK(map, 1)
	SingleMapCopyPlyNum(map, 300)
	MapCanTeam(map , 1)
	MapType ( map , 4 )
end

function init_entry(map)
	SetMapEntryMapName(map, "winterland")
	SetMapEntryTime(map, "2005/8/30/19/0", "1/0/0", "0/1/0", "0/4/0")
end

function map_run_mjing3(map)
end

function get_map_entry_pos_mjing3()
end

function after_enter_mjing3( role , map_copy )
end

function before_leave_mjing3( role )
end