function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    Notice("����������: � ���������� ������ ["..posx..","..posy.."] ��������� ������, ������� � [������ ����]!")
	local EntryName = "������ ���� 40-55"
		SetMapEntryEventName( entry, EntryName )
end

function after_destroy_entry_darkswamp(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("����������: ������ � [������ ����] ��������! �����!") 
end

function after_player_login_darkswamp(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ChaNotice(player_name, "����������: � ���������� ������ ["..posx..","..posy.."] ��������� ������, ������� � [������ ����]!")
end

function check_can_enter_darkswamp( role, copy_mgr )
	local FightingBook_Num = CheckBagItem( role,3849 )

	if FightingBook_Num <= 0 then
		SystemNotice ( role , "� ��� ������ ���� ������ ������ ��� ����� � ������ ����" )
		return 0
	end

    local Cha = TurnToCha(role)
	if Lv(Cha) >=40 and Lv(Cha) <=55 then
		return 1
	else
		SystemNotice(role, "������ ������ 40-55 ������ ����� ������� � ������ ����.")
		return 0
	end
	local gmlvl = GetGmLv(role)
	if gmlvl >= 98 then
		SystemNotice(role, "���� � ����� ���� ������������� ��������")
		return 0
	end
end


function begin_enter_darkswamp(role, copy_mgr) 
	SystemNotice(role,"�� ����� � [������ ����]") 
	MoveCity(role, "������ ���� �������")
end 