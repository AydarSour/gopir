function config(map)
	MapCanSavePos(map, 0)
	-----MapCanPK(map, 0)
	MapCopyNum(map, 1)
	SingleMapCopyPlyNum(map, 300)
	MapCanTeam(map , 1)
	MapType ( map , 1 )
end

function get_map_entry_pos_binglang2()
	local POS_X=2718
	local POS_Y=659
	return POS_X , POS_Y
end

function init_entry(map)
    SetMapEntryMapName(map, "darkblue")
    SetMapEntryTime(map, "2005/8/30/13/0", "0/6/0", "0/4/0", "0/4/0")
end

function after_enter_binglang2( role , map_copy )
--AfterEnter(role)
end

function before_leave_binglang2( role )
end
function map_copy_run_special_binglanq2()
end
function can_open_entry_binglang2( map )
end 

function map_run_binglang2(map)
end
function map_copy_run_binglang2()
end