

function config(map)
	MapCanSavePos(map, 0)							-- ¬озможност?сохран€ть позици?персонаж?на карт?(1 - да, 0 - не?
	MapCanPK(map, 1) 								-- ¬озможност?атаковат?других персонажей (1 - да, 0 - не?
	MapCopyNum(map, 1)							--  оличество копи?карт?(если параметр отсутствуе? принимаетс€ равным 1)
	SingleMapCopyPlyNum(map, 300)  					--  оличество персонажей на карт?
	MapCanTeam(map , 1)							-- ¬озможност?создават?от?ды на карт?(1 - да, 0 - не?
	MapType ( map , 4 )							-- “и?карт?
end


function get_map_entry_pos_necropolis()

end

function init_entry(map)

end

function after_enter_necropolis( role , map_copy )
end

function before_leave_necropolis( role )
end

function map_run_necropolis( map )
end

function map_copy_before_close_necropolis( map_copy )

end

function map_copy_close_necropolis( map_copy )
	ClearAllSubMapCha(map_copy)
end

function can_open_entry_necropolis( map )


end

function GiveSpecItem( role )

end