function config(map)
    MapCanSavePos(map, 0)
    MapCanPK(map, 1)
    MapCopyNum(map, 1)
    SingleMapCopyPlyNum(map, 300)
	MapCanTeam(map , 1)
    MapType ( map , 4 )
end


function get_map_entry_pos_puzzleworld2()

	local POS_X=172
	local POS_Y=165
	local a = 100
	local k = math.random ( 1 , a )
	if k < 25 then
		POS_X = 172
		POS_Y = 165
	end
	if k >= 25 and k < 50 then
		POS_X = 147
		POS_Y = 384
	end
	if k >= 50 and k < 75 then
		POS_X = 365
		POS_Y = 381
	end
	if k >= 75 then
		POS_X = 365
		POS_Y = 171
	end
	
	return POS_X , POS_Y

--172,165
--147,384
--365,381
--365,171

end

function after_player_login_puzzleworld2()

end
function map_copy_run_special_puzzleworld2()
end

function map_run_puzzleworld2(map)
end
function init_entry(map)
    SetMapEntryMapName(map, "puzzleworld")
    SetMapEntryTime(map, "2005/8/30/0/0", "0/3/0", "0/0/80", "0/2/0")
end
function map_copy_run_puzzleworld2(map)
end
function map_run_puzzleworld2(map)
end

 function after_enter_puzzleworld2( role , map_copy )
-- --AfterEnter(role)
 end

function before_leave_puzzleworld2( role )
end