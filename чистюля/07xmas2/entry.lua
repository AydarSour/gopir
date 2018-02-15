------
-- ������� �����
------

function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1)
end 

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("����������: �� ����������� ["..posx..","..posy.."] ����� � ������� ���������� ������� �����!")
	local EntryName = "������� ����� - ����������� ������"
	local Now_Time = tonumber(os.date("%H"))
	
		local EntryName = "������� �����"
		SetMapEntryEventName( entry, EntryName )
	
end

function after_destroy_entry_07xmas2(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("����������: ������ � ������� ����� ��������!")
end

function after_player_login_07xmas2(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "����������: �� ����������� ["..posx..","..posy.."] ����� � ������� ���������� ������� �����!")
end

function check_can_enter_07xmas2( role, copy_mgr )
	

	local Now_Time = tonumber(os.date("%H"))
		if Lv(role) < 40 then
			SystemNotice(role, "�� ������ ���� �� ���� 40 ������, ����� ����������� � ������� �����")
			return 0
		end
		
	
	
	local FightingBook_Num = 0
	FightingBook_Num = CheckBagItem( role,3849 )

	if FightingBook_Num <= 0 then
		SystemNotice ( role , "� ��� ������ ���� ������ ������, ����� ����������� � ������� �����" )
		return 0
	elseif FightingBook_Num > 1 then
		LG("RYZ_PK","Possess more than 1 Medal of Valor")
		return 0
	end
	
	if gmlvl > 50 then
		SystemNotice(role, "���� � ���������� ���� ������������� ��������")
		return 0
	end

end

function begin_enter_07xmas2(role, copy_mgr) 
	SystemNotice(role,"�� ����� � [������� �����]")
	MoveCity(role, "Snow War")
end
--------------------------------------------------------------------------------------
-- ������� ����� v2.0
-- (c) V3ct0r
-- 08.01.2017
-- entry.lua
--------------------------------------------------------------------------------------
print "Start Snow"

-- ��������� �������
function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492, 1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 
	local EntryName = "������� ����� 40+"
	SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("����������: � ������, �������� ������ ["..posx..","..posy.."] ������� � ������� �����!")
end
-- ������� ��������� ����� ������������ �������
function after_destroy_entry_07xmas2(entry)
Notice("\206\225\250\255\226\235\229\237\232\229: \207\238\240\242\224\235 \226 \209\237\229\230\237\243\254 \226\238\233\237\243 \232\241\247\229\231!")
    --Notice("����������: ������ � ������� ����� �����!") 
end

-- ������� ��������� ����� ����������� ������ � �������
function after_player_login_07xmas2(entry, player_name)
    	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
		ChaNotice(player_name, "����������: �� ����������� ["..posx..","..posy.."] � ������ ��������� ������� �����!")
end

-- ������� ��������� ����� ����� � ������
function begin_enter_07xmas2(role, copy_mgr) 
	SystemNotice(role, "\194\251 \226\238\248\235\232 \226 \209\237\229\230\237\243\254 \226\238\233\237\243!")
	--SystemNotice(role, "�� ����� � ������� �����!")
	MoveCity(role, "\209\237\229\230\237\224\255 \226\238\233\237\224")
	--MoveCity(role, "������� �����")
end

-- ������� ���������, ����� �� ����� ����� � ������
function check_can_enter_07xmas2(role, copy_mgr)
	-- ������� 40+
	if (Lv(role) < 40) then
		SystemNotice(role, "\194\251 \228\238\235\230\237\251 \225\251\242\252 \245\238\242\255 \225\251 40 \243\240\238\226\237\255, \247\242\238\225\251 \243\247\224\241\242\226\238\226\224\242\252 \226 \209\237\229\230\237\238\233 \226\238\233\237\229!")
		--SystemNotice(role, "�� ������ ���� ���� �� 40 ������, ����� ����������� � ������� �����!")
		return 0
	end

	-- ������ ������
	local medal = CheckBagItem(role, 3849)
	if (medal == 0) then
		SystemNotice(role, "\211 \226\224\241 \228\238\235\230\237\224 \225\251\242\252 \204\229\228\224\235\252 \238\242\226\224\227\232, \247\242\238\225\251 \243\247\224\241\242\226\238\226\224\242\252 \226 \209\237\229\230\237\238\233 \226\238\233\237\229!")
		--SystemNotice(role, "� ��� ������ ���� ������ ������, ����� ����������� � ������� �����!")
		return 0
	end
	local gmlvl = GetGmLv(role)
	if gmlvl >= 98 then
		SystemNotice(role, "���� � ������� ����� ������������� ��������")
		return 0
	end

	return 1
end