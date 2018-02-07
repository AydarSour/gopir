function config(map)
	MapCanSavePos(map, 0)
	MapCanPK(map, 1)
	MapCopyNum(map, 1)
	SingleMapCopyPlyNum(map, 300)
	MapCanTeam(map , 1)
	MapType ( map , 4 )
end

function get_map_entry_pos_darkswamp()
--ДС в ШАе
	local POS_X=865
	local POS_Y=3707
	return POS_X , POS_Y
end

function init_entry(map)
    SetMapEntryMapName(map, "magicsea")
   SetMapEntryTime(map, "2005/8/30/2/0", "0/4/0", "0/1/0", "0/2/0")
end

function map_copy_run_darkswamp()
end
function map_run_darkswamp(map)
end
function map_copy_run_special_darkswamp(map)
end
function after_enter_darkswamp( role , map_copy )
--AfterEnter(role)
end

function before_leave_darkswamp( role )
end