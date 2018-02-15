function config_entry(entry) 
	SetMapEntryEntiID(entry,2492,1)
end 

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("����������: �� �������� ["..posx..","..posy.."] ��������� ������, ������� � [����������� ����].")
	local EntryName = "����������� ���� 40+"
		SetMapEntryEventName( entry, EntryName )
end

function after_destroy_entry_garner2(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("����������: ������ � [����������� ����] ��������! �����!") 
end

function after_player_login_garner2(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "����������: �� �������� ["..posx..","..posy.."] ��������� ������, ������� � [����������� ����].")
end
print "Start Garner 2"
function check_can_enter_garner2( role, copy_mgr )
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )
	local Team_In = IsInTeam(role)
	if Team_In == 1 then
		SystemNotice ( role , "�� �������� � ������. ���� � ����������� ���� ����������." )
		return 0
		
	end
	if FightingBook_Num <= 0 then
		SystemNotice ( role , "� ��� ��� ������ ������. ���������� � �������������� �����." )
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","Possess more than 1 Medal of Valor")
		return 0
	end
	if Lv(role) < 40 then
		SystemNotice(role, "���� � ����������� ���� �������� ������ ��� ������� 40-�� ������ � ����.")
		return 0    
	end
	local gmlvl = GetGmLv(role)
	if gmlvl > 50 then
		SystemNotice(role, "���� � ����������� ���� ������������� ��������")
		return 0
	end
end

function begin_enter_garner2(role, copy_mgr) 
	SystemNotice(role,"�� ����� � [����������� ����]") 
	MoveCity(role, "Chaos Argent")
end