--------------------------------------------------------------------------------------
-- ������� ����� v2.0
-- (c) V3ct0r
-- 08.01.2017
-- entry.lua
--------------------------------------------------------------------------------------
print "Loading crhell entry.lua"

-- ��������� �������
function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492, 1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 
	local EntryName = "������� ������ "
	SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("����������: � �������  �������� ������ ["..posx..","..posy.."] ������� � ������� ������!")
end
-- ������� ��������� ����� ������������ �������
function after_destroy_entry_crhell(entry)
Notice("����������: ������ � ������� ������ �����!") 
end

-- ������� ��������� ����� ����������� ������ � �������
function after_player_login_crhell(entry, player_name)
    	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "����������: �� ����������� ["..posx..","..posy.."] � ������� ������ ���� � ������� ������!")
end

-- ������� ��������� ����� ����� � ������
function begin_enter_crhell(role, copy_mgr) 
	SystemNotice(role, "�� �������� � ������� ������!")
	MoveCity(role, "crhell")
end

-- ������� ���������, ����� �� ����� ����� � ������
function check_can_enter_crhell(role, copy_mgr)
	-- ������� 40+
	if (Lv(role) < 40) then
		SystemNotice(role, "�� ������ ���� ���� �� 40 ������, ����� �������� ����� � ������� ������!")
		return 0
	end

	return 1
end