function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 1)
    MapCopyNum(map, 1)
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 4 )
end

function get_map_entry_pos_puzzleworld()
	local POS_X=1368
	local POS_Y=553
	return POS_X , POS_Y
end

function init_entry(map)
    SetMapEntryMapName(map, "darkblue")
    SetMapEntryTime(map, "2005/8/30/0/0", "0/3/0", "0/0/40", "0/2/0")
end

function map_run_puzzleworld(map)
end


function map_copy_run_special_puzzleworld()
end



function map_copy_run_puzzleworld(map)
end
function after_enter_puzzleworld( role , map_copy )
--AfterEnter(role)
end

function before_leave_puzzleworld( role )
end