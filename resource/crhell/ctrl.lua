--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
print "Loading crhell ctrl.lua"

-- ���������� �������� �������
local active_players = 0

-- ��������� �����
function config(map)
    MapCanSavePos(map, 0)         -- ������� ���������� � ����� ��� ������ �� ����
    MapCanPK(map, 1)              -- �� ����� ��������� PvP
    MapType(map, 4)               -- ��� ����� 4
    MapCopyNum(map, 1)            -- 1 ����� �����
    SingleMapCopyPlyNum(map, 300) -- 300 ������� �� �����
    MapCanTeam(map, 1)            -- ����� ��������� ������
    MapCanStall(map, 0)           -- ������ ������� ������
    RepatriateDie(map, 1)         -- ������ ������ check_repatriate_()
end

-- ���������� �������
function get_map_entry_pos_crhell()
	local POS_X = 2232
	local POS_Y = 2788
	return POS_X, POS_Y
end

-- ������������� �������
function init_entry(map)
	-- �����, �� ������� ���������� ������
    SetMapEntryMapName(map, "garner")
    -- ����� �������� 55 ����� 
    -- ������ ������ 45 �����
    -- ������ �������� ������� ������ ������ ���
    SetMapEntryTime(map, "2007/12/25/0/0", "0/1/0", "0/0/45", "0/0/55")
end

function after_enter_crhell()

end
function before_leave_crhell()

end

-- �������, ��� ������� ����������� ������
function can_open_entry_crhell(map) 
	-- ����� ����������� � 21.00
	local now_time = GetNowTime()
	if (now_time ~= 0) then
		return 1
	end
	return 1--������
end

-- ������� ���������� ����� ��������� �����
function map_copy_before_close_crhell(map_copy)
	active_players = GetMapActivePlayer(map_copy)
	if ( (active_players > 0) and (active_players <= 10) ) then
		DealAllActivePlayerInMap(map_copy, "WarAward")
	end

	ClearAllSubMapMonster(map_copy)
	active_players = 0
	wave_counter = 0
end

-- ������� ������ ������� �������� �������
function WarAward(role)
	local money = math.floor(500000 / active_players)
	SystemNotice(role, "\207\238\231\228\240\224\226\235\255\229\236 ".. GetChaDefaultName(role) .."! \194\251 \226\251\232\227\240\224\235\232 ".. money .." \231\238\235\238\242\224!")
	--SystemNotice(role, "����������� ".. GetChaDefaultName(role) .."! �� ��������  ".. money .." ������!")
	AddMoney(role, 0, money)
end


-- ������� �����
local wave_counter = 0


-- ������� ���������� ������ 5 ����� 
function map_copy_run_special_crhell(map_copy)
	active_players = GetMapActivePlayer(map_copy)
	wave_counter = wave_counter + 1
		if wave_counter == 1 then
			SummonBossAb(map_copy, active_players)
		end
end


-- �������� �����
function SummonBossAb(map, active_players)
	local Now_Week = os.date("%w")
	local Now_WeekNum = tonumber(Now_Week)
	local id = 0
		if (Now_WeekNum == 0) then
			id = 1721							-- ����� - �������
		end
		if (Now_WeekNum == 1) then
			id = 1722							-- ����� - �������
		end
		if (Now_WeekNum == 2) then
			id = 1723							-- ����� - �������
		end
		if (Now_WeekNum == 3) then
			id = 1724							-- ��������� - �������
		end
		if (Now_WeekNum == 4) then
			id = 1725							-- ��������� - ������������
		end
		if (Now_WeekNum == 5) then
			id = 1726							-- ��������� - ������
		end
		if (Now_WeekNum == 6) then
			id = 1727							-- ��������� - �����������������
		end
		
	local x, y = 7200, 6500
	local angle = math.random(1, 360)
	local monster = CreateChaEx(id, x, y, angle, 60, map)
	SetChaLifeTime(monster, 3300000)
	--Notice("��������: � ������� ������ �� ������ ��� �������(�) " .. GetChaDefaultName(monster) .. "!")
	Notice("\194\237\232\236\224\237\232\229: \226 \206\225\232\242\229\235\232 \239\224\228\248\232\245 \232\231 \227\235\243\225\232\237 \224\228\224 \226\238\241\241\242\224\235(\224) " .. GetChaDefaultName(monster) .. "!")

	end

	
--------------------------------------------------------------------------------------
-- �������������� �������
-- ����� �� ���� ������ � �����.....
function map_run_crhell(map)

end

function map_copy_run_crhell(map_copy)

end
--------------------------------------------------------------------------------------