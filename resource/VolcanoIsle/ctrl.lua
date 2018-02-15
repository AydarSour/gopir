function config(map)
	MapCanSavePos(map, 0)							-- ¬озможность сохран€ть позицию персонажа на карте (1 - да, 0 - нет)
	MapCanPK(map, 0) 								-- ¬озможность атаковать других персонажей (1 - да, 0 - нет)
	MapCopyNum(map, 1)							--  оличество копий карты (если параметр отсутствует, принимаетс€ равным 1)
	SingleMapCopyPlyNum(map, 300)  					--  оличество персонажей на карте
	MapCanTeam(map , 1)							-- ¬озможность создавать отр€ды на карте (1 - да, 0 - нет)
	MapType ( map , 4 )							-- “ип карты
end


function get_map_entry_pos_basement()
 
    local POS_X=2000
    local POS_Y=2000
    return POS_X , POS_Y
 
end

function init_entry(map)
    SetMapEntryMapName(map, "garner")
	SetMapEntryTime(map, "2005/8/30/0/0", "0/2/0", "0/2/0", "0/2/0")
end

function after_enter_basement( role , map_copy )
end

function before_leave_basement( role )
end

function map_run_basement( map )
end

function map_copy_before_close_basement( map_copy )

end

function map_copy_close_basement( map_copy )
	ClearAllSubMapCha(map_copy)
end

function can_open_entry_basement( map )


end

function GiveSpecItem( role )

end