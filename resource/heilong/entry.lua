function config_entry(entry) 
	SetMapEntryEntiID(entry, 193,1)
end 

function after_create_entry(entry) 
	local EntryName = "\"������ ������� �������\""
	SetMapEntryEventName( entry, EntryName )
	local copy_mgr = GetMapEntryCopyObj(entry, 0)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("��������: �� '������� ����' - ["..posx..","..posy.."], ����������� ������ � \"������ ������� �������\"!")
end

function after_destroy_entry_heilong(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("��������: ������ � \"������ ������� �������\" ��������, ���������� ������ �������� � ������ ��������!")
end

function after_player_login_heilong(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "��������: �� '������� ����' - ["..posx..","..posy.."], ����������� ������ \"������ ������� �������\"!")
end

function check_can_enter_heilong( role, copy_mgr )
	local item1 = CheckBagItem(role, 179)
	if item1 >= 1 then
		SystemNotice(role, "�� ������ ������� ������ ��������� ����� ����� � ������ ������� �������.")
		return 0
	end
	local item2 = CheckBagItem(role, 3084)
	if item2 >= 1 then
		SystemNotice(role, "�� ������ ������� ���� ������� ����� ����� � ������ ������� �������.")
		return 0
	end
	local item3 = CheckBagItem(role, 3085)
	if item3 >= 1 then
		SystemNotice(role, "�� ������ ������� ����� ������ ����� ����� ����� � ������ ������� �������.")
		return 0
	end
end

function begin_enter_heilong(role, copy_mgr) 
	SystemNotice(role,"���� � ������ ������� ������� � ��������� ������������ �� 5 ������")
	AddState( role , role , STATE_PKWD , 10 , 5 )
	MoveCity(role, "������ ������� �������")
end