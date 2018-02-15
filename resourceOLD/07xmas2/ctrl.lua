--------------------------------------------------------------------------------------
-- ������� ����� v2.0
-- (c) V3ct0r
-- 08.01.2017
-- ctrl.lua
--------------------------------------------------------------------------------------
print "Loading Snow War ctrl.lua"

-- ������� �����
local wave_counter = 0
-- ���������� �������� �������
local active_players = 0
-- �����
local waves = {
	-- 1� �����: 15 ������ (5 ���. ���, 5 ��. ��� � 5 ���. ���)
	[1] = { {1400, 5}, {1401, 5}, {1402, 5} },
	-- 2� �����: 20 ������ (12 ���. ���, 4 ��. ��� � 4 ���. ���) � ������� ������� 
	[2] = {{1400, 12}, {1401, 4}, {1402, 4}, {1403, 12}, {1407, 12}, {1410, 12}, {1414, 12}},
	-- 3� �����: 20 ������ (12 ���. ���, 4 ��. ��� � 4 ���. ���) � ������� ������� 
	[3] = {{1400, 12}, {1401, 4}, {1402, 4}, {1403, 10}, {1407, 10}, {1410, 10}, {1414, 10}},
	-- 4� �����: ������� �������
	[4] = {{1404, 12}, {1415, 12}, {1411, 12}, {1408,12}},
	-- 5� �����: ������� ������� (��)
	[5] = {{1405, 15}, {1412, 15}, {1416, 15}, {1406, 15}},
	-- 6� �����: �� �������
	[6] = {{1417, 12}, {1418, 12}, {1419, 12}, {1420, 12}},
	-- 7� �����: �� �������
	[7] = {{1417, 12}, {1418, 12}, {1419, 12}, {1420, 12}},
	-- 8� �����: �� �������
	[8] = {{1417, 10}, {1418, 10}, {1419, 10}, {1420, 10}}
}
-- ���������� �����
local wave_pos = { {19,  25,  108,  101},
				   {112, 57,  173,  68 }, 
				   {181, 31,  264,  101}, 
				   {254, 109, 266,  189}, 
				   {180, 198, 265,  268}, 
				   {115, 239, 177,  263}, 
				   {24,  197, 103,  265}, 
				   {22,  105, 32,   185},
				   {140, 75,  149,  124} 
				 }
-- ���������� �����
local x_boss, y_boss = 145, 150
-- ���������� ���� ����
local santa_pos = { {144, 154}, {144, 152}, {144, 150}, {144, 148} }

-- ��������� �����
function config(map)
    MapCanSavePos(map, 0)         -- ������� ���������� � ����� ��� ������ �� ����
    MapCanPK(map, 1)              -- �� ����� ��������� PvP
    MapType(map, 4)               -- ��� ����� 4
    MapCopyNum(map, 1)            -- 1 ����� �����
    SingleMapCopyPlyNum(map, 300) -- 300 ������� �� �����
    MapCanTeam(map, 1)            -- ����� ��������� ������
    MapCanStall(map, 0)           -- ������ ������� ������
    RepatriateDie(map, 0)         -- ������ ������ check_repatriate_()
end

-- ���������� �������
function get_map_entry_pos_07xmas2()
	local POS_X = 1339
	local POS_Y = 583
	return POS_X, POS_Y
end

-- ������������� �������
function init_entry(map)
	-- �����, �� ������� ���������� ������
    SetMapEntryMapName(map, "darkblue")
    -- ����� �������� 55 ����� 
    -- ������ ������ 30 �����
    -- ������ �������� ������� ������ ������ ���
    SetMapEntryTime(map, "2007/12/25/0/0", "0/1/0", "0/0/30", "0/0/55")
end

-- �������, ��� ������� ����������� ������
function can_open_entry_07xmas2(map) 
	-- ����� ����������� � 6.00, 13.00, 19.00 � 22.00
	local now_time = GetNowTime()
	if (now_time == 6 or now_time == 13 or now_time == 19 or now_time == 22) then
		return 1
	end

	return 0
end

-- ������� ���������� ������ 5 ����� 
function map_copy_run_special_07xmas2(map_copy)
	active_players = GetMapActivePlayer(map_copy)
	Notice("\206\225\250\255\226\235\229\237\232\229: \194 \209\237\229\230\237\238\233 \226\238\233\237\229 \226\241\229 \229\249\229 \229\241\242\252 \226\251\230\232\226\248\232\229: " .. active_players .. " \232\227\240\238\234(\232)")
	--Notice("����������: � ������� ����� ��� ��� ���� ��������: " .. active_players .. " �����(�)")

	wave_counter = wave_counter + 1
	if ( (wave_counter >= 1) and (wave_counter <= 7) ) then
		SummonWave(map_copy, wave_counter)
	elseif (wave_counter == 8) then
		SummonBossWave(map_copy, active_players)
		SummonWave(map_copy, wave_counter)
	end
end

-- ������� ���������� ����� ��������� �����
function map_copy_before_close_07xmas2(map_copy)
	active_players = GetMapActivePlayer(map_copy)
	if ( (active_players > 0) and (active_players <= 5) ) then
		DealAllActivePlayerInMap(map_copy, "SnowWarAward")
	end

	ClearAllSubMapMonster(map_copy)
	wave_counter = 0
	active_players = 0
end

-- ������� ������ ������� �������� �������
function SnowWarAward(role)
	local money = math.floor(2000000 / active_players)
	SystemNotice(role, "\207\238\231\228\240\224\226\235\255\229\236 ".. GetChaDefaultName(role) .."! \194\251 \226\251\232\227\240\224\235\232 ".. money .." \231\238\235\238\242\224!")
	--SystemNotice(role, "����������� ".. GetChaDefaultName(role) .."! �� ��������  ".. money .." ������!")
	AddMoney(role, 0, money)
end

-- ������� ����� ��������
function SummonWave(map, number)
	-- ���������, ��� ����� ���� � ������
	if (number < 1 or number > table.getn(waves)) then
		return
	end

	-- �������� �����
	local wave = waves[number]
	-- ������� ��������
	for i = 1, table.getn(wave), 1 do
		local id  = wave[i][1]
		local n   = wave[i][2]
		for j = 1, n, 1 do
			local x, y    = GetRandomPos()
			local angle   = math.random(1, 360) 
			local monster = CreateChaEx(id, x, y, angle, 60, map)
			SetChaLifeTime(monster, 298050)
		end
	end
end

-- �������� ����� ������
function SummonBossWave(map, active_players)
	if (active_players < 15) then
		local r = math.random(1, 100)
		local id
		if (r <= 70) then
			id = 1442							-- 70% ����� ������������
		elseif ( (r > 70) and (r <= 95) ) then
			id = 1441							-- 25% ������ ������� ���
		else
			id = 1440							-- 5% ���� ������ � ������
		end

		local x, y = x_boss * 100, y_boss * 100
		local angle = math.random(1, 360)
		local monster = CreateChaEx(id, x, y, angle, 60, map)
		SetChaLifeTime(monster, 600000)
		Notice("\194\237\232\236\224\237\232\229: \226 \209\237\229\230\237\238\233 \226\238\233\237\229 \239\238\255\226\232\235\241\255 " .. GetChaDefaultName(monster) .. "!")
		--Notice("��������: � ������� ����� �������� " .. GetChaDefaultName(monster) .. "!")
	else
		for i = 1, table.getn(santa_pos), 1 do
			local id = 1443						-- ���� ����� �����
			local x, y = santa_pos[i][1] * 100, santa_pos[i][2] * 100
			local angle = table.getn(1, 360)
			local monster = CreateChaEx(id, x, y, angle, 60, map)
			SetChaLifeTime(monster, 600000)
		end

		Notice("\194\237\232\236\224\237\232\229: \226 \209\237\229\230\237\243\254 \226\238\233\237\243 \239\240\232\225\251\235\232 \194\238\241\241\242\224\226\248\232\229 \209\224\237\242\251!")
		--Notice("��������: � ������� ����� ������� ���������� �����!")
	end
end

-- �������� ��������� ����������
function GetRandomPos()
	local r = math.random(1, table.getn(wave_pos))
	local x_start, x_end = wave_pos[r][1], wave_pos[r][3]
	local y_start, y_end = wave_pos[r][2], wave_pos[r][4]
	local x = math.random(x_start, x_end) * 100
	local y = math.random(y_start, y_end) * 100

	return x, y
end


--------------------------------------------------------------------------------------
-- �������������� �������
-- ����� �� ���� ������ � �����.....
function after_enter_07xmas2()
end
function map_run_07xmas2(map)

end
function before_leave_07xmas2()
end

function map_copy_run_07xmas2(map_copy)

end
--------------------------------------------------------------------------------------