function config(map)
	MapCanSavePos(map, 0)							-- ����������� ��������� ������� ��������� �� ����� (1 - ��, 0 - ���)
	MapCanPK(map, 0) 								-- ����������� ��������� ������ ���������� (1 - ��, 0 - ���)
	MapCopyNum(map, 1)							-- ���������� ����� ����� (���� �������� �����������, ����������� ������ 1)
	SingleMapCopyPlyNum(map, 300)  					-- ���������� ���������� �� �����
	MapCanTeam(map , 1)							-- ����������� ��������� ������ �� ����� (1 - ��, 0 - ���)
	MapType ( map , 4 )							-- ��� �����
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