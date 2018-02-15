------
-- ������� �����
------

function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1)
end 

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("����������: �� ����������� ["..posx..","..posy.."] � ���������� ������ ���������� ������� �����!")
	--Notice("����������: �� ����������� ["..posx..","..posy.."] �� ������� ������������� ���������� ������� �����!")
	local EntryName = "������� ����� - ����������� ������"
	local Hour = GetNowTime()
	if Hour == 5 or Hour == 12 or Hour == 21 then
	--if Hour == 1 or Hour == 3 or Hour == 5 or Hour == 7 or Hour == 9 or Hour == 11 or Hour == 13 or Hour == 15 or Hour == 17 or Hour == 19 or Hour == 21 or Hour == 23 then
		type_07xmas2 = "small"
	elseif Hour == 6 or Hour == 13 or Hour == 22 then
	--elseif Hour == 0 or Hour == 2 or Hour == 4 or Hour == 6 or Hour == 8 or Hour == 10 or Hour == 12 or Hour == 14 or Hour == 16 or Hour == 18 or Hour == 20 or Hour == 22 then 
		type_07xmas2 = "big"
	end
	if type_07xmas2 == "big" then
		EntryName = "������� ����� � 61 ������"
	elseif type_07xmas2 == "small" then
		EntryName = "������� ����� � 30 �� 60 ������"
	end
	SetMapEntryEventName( entry, EntryName )
end

function after_destroy_entry_07xmas2(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("����������: ������ � ������� ����� ��������!")
end

function after_player_login_07xmas2(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "����������: �� ����������� ["..posx..","..posy.."] � ���������� ������ ���������� ������� �����!")
	--ChaNotice(player_name, "����������: �� ����������� ["..posx..","..posy.."] �� ������� ������������� ���������� ������� �����!")
end

function check_can_enter_07xmas2( role, copy_mgr )

	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )
	if FightingBook_Num <= 0 then
		SystemNotice ( role , "� ��� ������ ���� ������ ������, ����� ����������� � ������� ������ " )
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","Possess more than 1 Medal of Valor")
		return 0
	end
	local Hour = GetNowTime()
	if Hour == 5 or Hour == 12 or Hour == 21 then
	--if Hour == 1 or Hour == 3 or Hour == 5 or Hour == 7 or Hour == 9 or Hour == 11 or Hour == 13 or Hour == 15 or Hour == 17 or Hour == 19 or Hour == 21 or Hour == 23 then
		type_07xmas2 = "small"
	elseif Hour == 6 or Hour == 13 or Hour == 22 then
	--elseif Hour == 0 or Hour == 2 or Hour == 4 or Hour == 6 or Hour == 8 or Hour == 10 or Hour == 12 or Hour == 14 or Hour == 16 or Hour == 18 or Hour == 20 or Hour == 22 then 
		type_07xmas2 = "big"
	end
	if type_07xmas2 == "small" then
		if Lv(role) < 30 then
			SystemNotice(role, "�� ������ ���� �� ���� 30 ������, ����� ����������� � ������� ������ ")
			return 0    
		elseif Lv(role) > 60 then
			SystemNotice(role, "�� ������ ���� �� ���� 60 ������, ����� ����������� � ������� ������ ")
			return 0    
		end
	elseif type_07xmas2 == "big" then
		if Lv(role) <= 60 then
			SystemNotice(role, "�� ������ ���� �� ���� 61 ������, ����� ����������� � ������� ������ ")
			return 0
		end
	else
		return 0
	end
	return 1
end

function begin_enter_07xmas2(role, copy_mgr) 
	SystemNotice(role,"�� ����� � [������� �����]")
	MoveCity(role, "Snow War")
end
