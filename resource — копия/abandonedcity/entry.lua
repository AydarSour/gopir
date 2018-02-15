function config_entry(entry) 
	SetMapEntryEntiID(entry, 2492,4)
end 

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("����������: � ���������� ������ ["..posx..","..posy.."] ��������� ������, ������� � [���������� �����].")
end

function after_destroy_entry_abandonedcity(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("����������: ������ � [���������� �����] ��������! �����!") 
end

function after_player_login_abandonedcity(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "����������: � ���������� ������ ["..posx..","..posy.."] ��������� ������, ������� � [���������� �����].")
end

function check_can_enter_abandonedcity(role, copy_mgr)
	local Cha = TurnToCha(role)
	if Lv(Cha) >=30 and Lv(Cha) <=45 then
		return 1
	else
		SystemNotice(role, "������ ������ 30-45 ������ ����� ������� � ���������� �����.")
		return 0    
	end
end



function begin_enter_abandonedcity(role, copy_mgr)
	SystemNotice(role,"�� ����� � [���������� �����]") 
	MoveCity(role, "Forsaken City")
end