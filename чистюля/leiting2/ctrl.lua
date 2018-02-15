function config(map)
	MapCanSavePos(map, 0)
	MapCanPK(map, 1)
	MapCopyNum(map, 1)
	SingleMapCopyPlyNum(map, 300)
	MapCanTeam(map , 1)
	MapType ( map , 1 )
end


function get_map_entry_pos_leiting2()

	local POS_X=600
	local POS_Y=2106
	return POS_X , POS_Y

end

function init_entry(map)
	SetMapEntryMapName(map, "garner")
	SetMapEntryTime(map, "2005/8/30/13/0", "0/6/0", "0/4/0", "0/4/0")
end

function after_enter_leiting2( role , map_copy )
--AfterEnter(role)
end

function before_leave_leiting2( role )
end
function map_copy_run_special_leiting2()

end
function can_open_entry_leiting2( map )
end 

function map_run_leiting2(map)
end
function map_copy_run_leiting2()
end