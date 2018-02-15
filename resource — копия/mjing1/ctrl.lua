function config(map)
	MapCanSavePos(map, 0)
	MapCanPK(map, 0)
	SingleMapCopyPlyNum(map, 300)
	MapCanTeam(map , 1)
end

function init_entry(map)
	SetMapEntryMapName(map, "winterland")
	SetMapEntryTime(map, "2005/8/30/9/0", "1/0/0", "0/1/0", "0/4/0")
end

function map_run_mjing1(map)
end

function get_map_entry_pos_mjing1()
end

function after_enter_mjing1( role , map_copy )
end

function before_leave_mjing1( role )
end