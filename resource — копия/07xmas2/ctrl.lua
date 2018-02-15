------------------------------------------------------------------------------------------------------------------
--																												--
--					������� ����� Ctrl.lua																		--
--					������ DayLight Online II																	--
--					������ ���� 2.0																				--
--					������� ��������� DLDevTeam																	--
--					�������� ��������� DLDevTeam																--
--																												--
------------------------------------------------------------------------------------------------------------------

print( "Load Snow War! " )
print( "Loading Ctrl.lua " )
 
function config(map)
	MapCanSavePos(map, 0) 					-- ����������� ��������� ������� ��������� �� ����� (1 - ��, 0 - ���)
	MapCanPK(map, 1) 						-- ����������� ��������� ������ ���������� (1 - ��, 0 - ���)
	MapCanTeam( map, 1 )					-- ����������� ��������� ������ (1 - ��, 0 - ���)
	MapCopyNum(map, 1) 						-- ���������� ����� ����� (���� �������� �����������, ����������� ������ 1)
	SingleMapCopyPlyNum(map, 300)  			-- ���������� ������� �� �����
	MapType (map, 3)						-- ��� �����
	MapCanStall(map, 0)						-- ����������� ��������� (1 - ��, 0 - ���)
	RepatriateDie(map,0)					-- ����������� ������������ �� ����� ����� ������
end

function get_map_entry_pos_07xmas2()		-- ������������ ����� ����� (����������)
	local POS_X=795
	local POS_Y=3645
	return POS_X , POS_Y
end

function init_entry(map)
	SetMapEntryMapName(map, "magicsea")		-- �����, �� ������� ����������� ����� ����� �� ��� �����
											-- ��������� ������� ������ �����
											-- 2010/01/01/5/0 (���/�����/����/����/������) - ����� ������ ������ �����
											-- 0/1/0  (����/���/������) - ����� �������� ������� (��������� ��������)
											-- 0/0/30 (����/���/������) - ����� ������ ������� (������ �������� 30 �����)
											-- 0/0/55 (����/���/������) - ����� ������ ����� (����� �������� 55 �����)
    SetMapEntryTime(map, "2010/01/01/5/0", "0/1/0", "0/0/30", "0/0/55") 
end

function after_enter_07xmas2( role , map_copy )
end

function before_leave_07xmas2( role )
end

function map_copy_run_07xmas2 ( map_copy )
	--Notice ("�����")
end
-- ������� ����������� � ������� ����� ������� ������ �����
function map_copy_run_special_07xmas2( map_copy ) 

--�������
	local chest_1             = 1400 --������ ��� ���. ��.
	local chest_2             = 1401 --����������� ������ ���
	local chest_3             = 1402 --������ ��� ���. ��.
--���� ���
--���� = 1
	local mob_1               = 1403 --���� - �������
	local mob_2               = 1407 --������ - �������
	local mob_3               = 1410 --������ - �������
	local mob_4               = 1414 --��� - �������
--���� = 2
	local mob_5               = 1404 --���� - �������
	local mob_6               = 1415 --��� - ��������
	local mob_7               = 1411 --������ - �������������
	local mob_8               = 1408 --������ - ������
--���� = 3
	local mob_9               = 1405 --���� - �������
	local mob_10              = 1412 --������ - �������
	local mob_11              = 1416 --��� - ��������
	local mob_12              = 1406 --���� - ���������� �����
	local mob_13              = 1409 --������ - �������
	local mob_14              = 1413 --������ - ������������
--���� = 4
	local mob_15              = 1417 --���� - ������ ����
	local mob_16              = 1418 --������ - ������ ����
	local mob_17              = 1419 --������ - ������ ����
	local mob_18              = 1420 --��� - ������ ����
--���� ���� ���
--���� = 1
	local mini_mob_1          = 1421 --���� - �������
	local mini_mob_2          = 1425 --������ - �������
	local mini_mob_3          = 1428 --������ - �������
	local mini_mob_4          = 1432 --��� - �������
--���� = 2
	local mini_mob_5          = 1422 --���� - �������
	local mini_mob_6          = 1433 --��� - ��������
	local mini_mob_7          = 1429 --������ - �������������
	local mini_mob_8          = 1426 --������ - ������
--���� = 3
	local mini_mob_9          = 1423 --���� - �������
	local mini_mob_10         = 1430 --������ - �������
	local mini_mob_11         = 1434 --��� - ��������
	local mini_mob_12         = 1424 --���� - ���������� �����
	local mini_mob_13         = 1427 --������ - �������
	local mini_mob_14         = 1431 --������ - ������������
--���� = 4
	local mini_mob_15         = 1435 --���� - ������ ����
	local mini_mob_16         = 1436 --������ - ������ ����
	local mini_mob_17         = 1437 --������ - ������ ����
	local mini_mob_18         = 1438 --��� - ������ ����

--����� ��� ������
	local bigSNV_BossID_1     = 1439 --����� ������������
	local bigSNV_BossID_2     = 1441 --������ ������� ���
	local bigSNV_miniBOSS_ID  = 1440 --���������� �����
--����� ��� �������
	local miniSNV_BossID_1    = 1442 --����� ������������
	local miniSNV_BossID_2    = 1444 --������ ������� ���
	local miniSNV_miniBOSS_ID = 1443 --���������� �����

--���� ������
	local BossID              = 987--������

	local players_07xmas2 = GetMapActivePlayer(map_copy)
	local now_miniute07xmas2 = os.date("%M")
	local notice_game = ""
	local every_07xmas2 = 0
	--Notice("������ "..now_miniute07xmas2.." ����� ")
	Every_Check_07xmas = Every_Check_07xmas + 1
	if Every_Check_07xmas == 1 then
		every_07xmas2 = 0
	end
	if Every_Check_07xmas >= 2 then
		every_07xmas2 = math.floor( now_miniute07xmas2 / 5 )
	end

-- ������ ����� (5 ���) 15 ������ (5 ���. ���, 5 ��. ��� � 5 ���. ���)
	if every_07xmas2 == 1 then
		notice_game = "��������� <<1>> ����� - '������� � �����������'!"
		set_monsters_07xmas2('squares', 1, chest_1, map_copy)														-- ������ ��� ���. ��. �� ������ � �������
			SetChaLifeTime(CreateChaEx(chest_1, 14400,  16500, math.random(1,360), 60, map_copy), 298000)			-- ������ ��� ���. ��. �� ����
		set_monsters_07xmas2('squares', 1, chest_2, map_copy)														-- ����������� ������ ��� �� ������ � �������
			SetChaLifeTime(CreateChaEx(chest_2, 14400,  24300, math.random(1,360), 60, map_copy), 298000)			-- ����������� ������ ��� ��� ����� �� 2
		set_monsters_07xmas2('squares', 1, chest_3, map_copy)														-- ������ ��� ���. ��. �� ������ � �������
			SetChaLifeTime(CreateChaEx(chest_3, 14400,  8500, math.random(1,360), 60, map_copy), 298000)			-- ������ ��� ���. ��. ��� ����� �� 8
	end
-- ������ ����� (10 ���)
	if every_07xmas2 == 2 then			-- 20 ������ (12 ���. ���, 4 ��. ��� � 4 ���. ���) � ������� �������
		notice_game = "��������� <<2>> ����� - '������� � �����������'!"
		set_monsters_07xmas2('squares', 3, chest_1, map_copy)
		set_monsters_07xmas2('squares', 1, chest_2, map_copy)
		set_monsters_07xmas2('squares', 1, chest_3, map_copy)
		if type_07xmas2 == "small" then
		--���� - ������� (ID mini_mob_1)
			set_monsters_07xmas2('squares', 7, mini_mob_1, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_1, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_1, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_1, map_copy)
		--������ - ������� (ID mini_mob_2)
			set_monsters_07xmas2('squares', 7, mini_mob_2, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_2, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_2, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_2, map_copy)
		--������ - ������� (ID mini_mob_3)
			set_monsters_07xmas2('squares', 7, mini_mob_3, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_3, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_3, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_3, map_copy)
		--��� - ������� (ID mini_mob_4)
			set_monsters_07xmas2('squares', 7, mini_mob_4, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_4, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_4, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_4, map_copy)
		else
		--���� - ������� (ID mob_1)
			set_monsters_07xmas2('squares', 7, mob_1, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_1, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_1, map_copy)
			set_monsters_07xmas2('centers', 1, mob_1, map_copy)
		--������ - ������� (ID mob_2)
			set_monsters_07xmas2('squares', 7, mob_2, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_2, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_2, map_copy)
			set_monsters_07xmas2('centers', 1, mob_2, map_copy)
		--������ - ������� (ID mob_3)
			set_monsters_07xmas2('squares', 7, mob_3, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_3, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_3, map_copy)
			set_monsters_07xmas2('centers', 1, mob_3, map_copy)
		--��� - ������� (ID mob_4)
			set_monsters_07xmas2('squares', 7, mob_4, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_4, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_4, map_copy)
			set_monsters_07xmas2('centers', 1, mob_4, map_copy)
		end
	end
-- ������ ����� (15 ���)
	if every_07xmas2 == 3 then			-- 20 ������ (12 ���. ���, 4 ��. ��� � 4 ���. ���) � ������� �������
		notice_game = "��������� <<3>> ����� - '������� � �����������'!"
		set_monsters_07xmas2('squares', 3, chest_1, map_copy)
		set_monsters_07xmas2('squares', 1, chest_2, map_copy)
		set_monsters_07xmas2('squares', 1, chest_3, map_copy)
		if type_07xmas2 == "small" then
		--���� - ������� (ID mini_mob_1)
			set_monsters_07xmas2('squares', 7, mini_mob_1, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_1, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_1, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_1, map_copy)
		--������ - ������� (ID mini_mob_2)
			set_monsters_07xmas2('squares', 7, mini_mob_2, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_2, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_2, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_2, map_copy)
		--������ - ������� (ID mini_mob_3)
			set_monsters_07xmas2('squares', 7, mini_mob_3, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_3, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_3, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_3, map_copy)
		--��� - ������� (ID mini_mob_4)
			set_monsters_07xmas2('squares', 7, mini_mob_4, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_4, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_4, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_4, map_copy)
		else
		--���� - ������� (ID mob_5)
			set_monsters_07xmas2('squares', 7, mob_5, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_5, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_5, map_copy)
			set_monsters_07xmas2('centers', 1, mob_5, map_copy)
		--������ - ������ (ID mob_6)
			set_monsters_07xmas2('squares', 7, mob_6, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_6, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_6, map_copy)
			set_monsters_07xmas2('centers', 1, mob_6, map_copy)
		--������ - ������������� (ID mob_7)
			set_monsters_07xmas2('squares', 7, mob_7, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_7, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_7, map_copy)
			set_monsters_07xmas2('centers', 1, mob_7, map_copy)
		--��� - �������� (ID mob_8)
			set_monsters_07xmas2('squares', 7, mob_8, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_8, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_8, map_copy)
			set_monsters_07xmas2('centers', 1, mob_8, map_copy)
		end
	end

-- ��������� ����� (20 ���)
	if every_07xmas2 == 4 then			-- ������� �������
		notice_game = "��������� <<4>> ����� - '����������� �������'!"
		if type_07xmas2 == "small" then
		--���� - ������� (ID mini_mob_5)
			set_monsters_07xmas2('squares', 7, mini_mob_5, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_5, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_5, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_5, map_copy)
		--������ - ������  (ID mini_mob_6)
			set_monsters_07xmas2('squares', 7, mini_mob_6, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_6, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_6, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_6, map_copy)
		--������ - ������������� (ID mini_mob_7)
			set_monsters_07xmas2('squares', 7, mini_mob_7, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_7, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_7, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_7, map_copy)
		--��� - �������� (ID mini_mob_8)
			set_monsters_07xmas2('squares', 7, mini_mob_8, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_8, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_8, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_8, map_copy)
		else
		--���� - ������� (ID mob_5)
			set_monsters_07xmas2('squares', 7, mob_5, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_5, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_5, map_copy)
			set_monsters_07xmas2('centers', 1, mob_5, map_copy)
		--������ - ������ (ID mob_6)
			set_monsters_07xmas2('squares', 7, mob_6, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_6, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_6, map_copy)
			set_monsters_07xmas2('centers', 1, mob_6, map_copy)
		--������ - ������������� (ID mob_7)
			set_monsters_07xmas2('squares', 7, mob_7, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_7, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_7, map_copy)
			set_monsters_07xmas2('centers', 1, mob_7, map_copy)
		--��� - �������� (ID mob_8)
			set_monsters_07xmas2('squares', 7, mob_8, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_8, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_8, map_copy)
			set_monsters_07xmas2('centers', 1, mob_8, map_copy)
		end
	end
-- ����� ����� (25 ���) + ������ ����� (30 ���)
	if every_07xmas2 == 5 or every_07xmas2 == 6 then			-- ������� �������
		notice_game = "��������� <<"..every_07xmas2..">> ����� - '������� �������'!"
		if type_07xmas2 == "small" then
		--���� - ������� (ID mini_mob_9)
			set_monsters_07xmas2('squares', 5, mini_mob_9, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_9, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_9, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_9, map_copy)
		--������ - ������� (ID mini_mob_10)
			set_monsters_07xmas2('squares', 5, mini_mob_10, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_10, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_10, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_10, map_copy)
		--��� - �������� (ID mini_mob_11)
			set_monsters_07xmas2('squares', 5, mini_mob_11, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_11, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_11, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_11, map_copy)
		--���� - ���������� ����� (ID mini_mob_12)
			set_monsters_07xmas2('squares', 5, mini_mob_12, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_12, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_12, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_12, map_copy)
		--������ - ������� (ID mini_mob_13)
			set_monsters_07xmas2('squares', 5, mini_mob_13, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_13, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_13, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_13, map_copy)
		--������ - ������������ (ID mini_mob_14)
			set_monsters_07xmas2('squares', 5, mini_mob_14, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_14, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_14, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_14, map_copy)
		else
		--���� - ������� (ID mob_9)
			set_monsters_07xmas2('squares', 5, mob_9, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_9, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_9, map_copy)
			set_monsters_07xmas2('centers', 2, mob_9, map_copy)
		--������ - ������� (ID mob_10)
			set_monsters_07xmas2('squares', 5, mob_10, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_10, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_10, map_copy)
			set_monsters_07xmas2('centers', 2, mob_10, map_copy)
		--��� - �������� (ID mob_11)
			set_monsters_07xmas2('squares', 5, mob_11, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_11, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_11, map_copy)
			set_monsters_07xmas2('centers', 2, mob_11, map_copy)
		--���� - ���������� ����� (ID mob_12)
			set_monsters_07xmas2('squares', 5, mob_12, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_12, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_12, map_copy)
			set_monsters_07xmas2('centers', 2, mob_12, map_copy)
		--������ - ������� (ID mob_13)
			set_monsters_07xmas2('squares', 5, mob_13, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_13, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_13, map_copy)
			set_monsters_07xmas2('centers', 2, mob_13, map_copy)
		--������ - ������������ (ID mob_14)
			set_monsters_07xmas2('squares', 5, mob_14, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_14, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_14, map_copy)
			set_monsters_07xmas2('centers', 2, mob_14, map_copy)
		end
	end

--������� ����� (35 ���)
	if every_07xmas2 == 7 then			-- ������� �������
		notice_game = "��������� <<"..every_07xmas2..">> ����� - '������� �������'!"
		if type_07xmas2 == "small" then
		--���� - ������ ���� (ID mini_mob_15)
			set_monsters_07xmas2('squares', 5, mini_mob_15, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_15, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_15, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_15, map_copy)
		--������ - ������ ���� (ID mini_mob_16)
			set_monsters_07xmas2('squares', 5, mini_mob_16, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_16, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_16, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_16, map_copy)
		--������ - ������ ���� (ID mini_mob_17)
			set_monsters_07xmas2('squares', 5, mini_mob_17, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_17, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_17, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_17, map_copy)
		--��� - ������ ���� (ID mini_mob_18)
			set_monsters_07xmas2('squares', 5, mini_mob_18, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_18, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_18, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_18, map_copy)
		else
		--���� - ������ ���� (ID mob_15)
			set_monsters_07xmas2('squares', 5, mob_15, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_15, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_15, map_copy)
			set_monsters_07xmas2('centers', 2, mob_15, map_copy)
		--������ - ������ ���� (ID mob_16)
			set_monsters_07xmas2('squares', 5, mob_16, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_16, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_16, map_copy)
			set_monsters_07xmas2('centers', 2, mob_16, map_copy)
		--������ - ������ ���� (ID mob_17)
			set_monsters_07xmas2('squares', 5, mob_17, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_17, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_17, map_copy)
			set_monsters_07xmas2('centers', 2, mob_17, map_copy)
		--��� - ������ ���� (ID mob_18)
			set_monsters_07xmas2('squares', 5, mob_18, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_18, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_18, map_copy)
			set_monsters_07xmas2('centers', 2, mob_18, map_copy)
		end
	end
-- ������� ����� (40 ���) + ������� ����� (45 ���) + ������� ����� (50 ���)
	if every_07xmas2 == 8 or every_07xmas2 == 9 or every_07xmas2 == 10 then			-- �����
		-- ���� ������� ������ 10, ���������� ���������� ����
		if players_07xmas2 <= 10 then
			local lifeTime = 298000*(11-every_07xmas2)
			if boss_07xmas2 == 0 then -- ��������� ������������� �����
				local boss = math.random(1,100)
				-- 70% ����� ������������
				if boss <= 70 then
					if type_07xmas2 == "small" then
						Notice("��������: � ������� ������ �������� ����������� ������������!")
						SetChaLifeTime(CreateChaEx(miniSNV_BossID_1, 14300,  15900,  145, 60, map_copy),lifeTime)
					else
						Notice("��������: � ������� ������ �������� ����������� ������������!")
						SetChaLifeTime(CreateChaEx(bigSNV_BossID_1, 14300,  15900,  145, 60, map_copy),lifeTime)
					end
				-- 25% ������ ������� ���
				elseif boss <= 95 then
					if type_07xmas2 == "small" then
						Notice("��������: � ������� ������ �������� ����������� ������� ���!")
						local BOSS = SetChaLifeTime(CreateChaEx(miniSNV_BossID_2, 14300,  15900,  145, 60, map_copy),lifeTime)
					else
						Notice("��������: � ������� ������ �������� ����������� ������� ���!")
						local BOSS = SetChaLifeTime(CreateChaEx(bigSNV_BossID_2, 14300,  15900,  145, 60, map_copy),lifeTime)
					end
				-- 5% ���� ������ � ������
				else
					Notice("��������: � ������� ������ �������� ����������!")
					SetChaLifeTime(CreateChaEx(BossID, 14300,  15900,  145, 60, map_copy),lifeTime)
				end
				boss_07xmas2 = 1
			end
		-- ����� �������� 4 ����-������ � ������� �������� � ������
		-- �� 8� � 9� ������ ����� ���������� ���� �� ���� �������
		else
			notice_game = "��������� <<"..every_07xmas2..">> ����� - '������� �������'!"
			if type_07xmas2 == "small" then
				set_monsters_07xmas2('squares', 1, bigSNV_miniBOSS_ID, map_copy)
				--���� - ������ ���� (ID mini_mob_15)
					set_monsters_07xmas2('squares', 5, mini_mob_15, map_copy)
					set_monsters_07xmas2('bridges', 2, mini_mob_15, map_copy)
					set_monsters_07xmas2('cbrdges', 1, mini_mob_15, map_copy)
					set_monsters_07xmas2('centers', 2, mini_mob_15, map_copy)
				--������ - ������ ���� (ID mini_mob_16)
					set_monsters_07xmas2('squares', 5, mini_mob_16, map_copy)
					set_monsters_07xmas2('bridges', 2, mini_mob_16, map_copy)
					set_monsters_07xmas2('cbrdges', 1, mini_mob_16, map_copy)
					set_monsters_07xmas2('centers', 2, mini_mob_16, map_copy)
				--������ - ������ ���� (ID mini_mob_17)
					set_monsters_07xmas2('squares', 5, mini_mob_17, map_copy)
					set_monsters_07xmas2('bridges', 2, mini_mob_17, map_copy)
					set_monsters_07xmas2('cbrdges', 1, mini_mob_17, map_copy)
					set_monsters_07xmas2('centers', 2, mini_mob_17, map_copy)
				--��� - ������ ���� (ID mini_mob_18)
					set_monsters_07xmas2('squares', 5, mini_mob_18, map_copy)
					set_monsters_07xmas2('bridges', 2, mini_mob_18, map_copy)
					set_monsters_07xmas2('cbrdges', 1, mini_mob_18, map_copy)
					set_monsters_07xmas2('centers', 2, mini_mob_18, map_copy)
			else
				set_monsters_07xmas2('squares', 1, bigSNV_miniBOSS_ID, map_copy)
				--���� - ������ ���� (ID mob_15)
					set_monsters_07xmas2('squares', 5, mob_15, map_copy)
					set_monsters_07xmas2('bridges', 2, mob_15, map_copy)
					set_monsters_07xmas2('cbrdges', 1, mob_15, map_copy)
					set_monsters_07xmas2('centers', 2, mob_15, map_copy)
				--������ - ������ ���� (ID mob_16)
					set_monsters_07xmas2('squares', 5, mob_16, map_copy)
					set_monsters_07xmas2('bridges', 2, mob_16, map_copy)
					set_monsters_07xmas2('cbrdges', 1, mob_16, map_copy)
					set_monsters_07xmas2('centers', 2, mob_16, map_copy)
				--������ - ������ ���� (ID mob_17)
					set_monsters_07xmas2('squares', 5, mob_17, map_copy)
					set_monsters_07xmas2('bridges', 2, mob_17, map_copy)
					set_monsters_07xmas2('cbrdges', 1, mob_17, map_copy)
					set_monsters_07xmas2('centers', 2, mob_17, map_copy)
				--��� - ������ ���� (ID mob_18)
					set_monsters_07xmas2('squares', 5, mob_18, map_copy)
					set_monsters_07xmas2('bridges', 2, mob_18, map_copy)
					set_monsters_07xmas2('cbrdges', 1, mob_18, map_copy)
					set_monsters_07xmas2('centers', 2, mob_18, map_copy)
			end
		end
	end

	if every_07xmas2 >= 11 then
		notice_game = "������� �������������� ���!"
	end

	if players_07xmas2 == 1 then
		Notice("� ������� ������ "..notice_game)
		Notice("� ������� ������ ��� ��� ���� ��������: "..players_07xmas2.." �����!")
	elseif players_07xmas2 >= 2 then
		Notice("� ������� ������ "..notice_game)
		Notice("� ������� ������ ��� ��� ���� ��������: "..players_07xmas2.." �������, ���� �� ���������� ������� ����?!")
	elseif players_07xmas2 == 0 then
		Notice("� ������� ������ "..notice_game)
		Notice("� ������� ������ ��� ��������, �� ���� ��� ������� ������� ������!")
	end
end

------
-- ������� ����������� ���� ��� � 5 ������
------

function map_run_07xmas2( map )
end

------
-- ������� ����������� ����� ��������� �����
------

function map_copy_before_close_07xmas2( map_copy )

	players_07xmas2 = GetMapActivePlayer(map_copy)
	if players_07xmas2 > 0 then
		DealAllActivePlayerInMap(map_copy,"prize_07xmas2")
	end
	ClearAllSubMapMonster(map_copy)
	players_07xmas2 = 0				-- �������� ���������� �� �����
	Every_Check_07xmas = 0
	every_07xmas2 = 0
	boss_07xmas2 = 0					-- �������� �������� boss_07xmas2 (0 - ���� �� ���������, 1 - ���� ���������)
	
end

-- ������� �������� �����
function map_copy_close_07xmas2( map_copy )
	ClearAllSubMapCha(map_copy)
end

------
-- ������� ������ �����, ������������ ������ �������  map_copy_before_close_07xmas2()
------

function prize_07xmas2( role )
	local money = 1000000;
	if players_07xmas2 == 1 then
		AddMoney (role , 0 , money)
	elseif players_07xmas2 <= 5 then
		AddMoney (role , 0 , math.floor (money/players_07xmas2))
	end
	return
end

------
-- ������������� ��� ����� (big ��� small) � ���������� ����������� �������� �����
-- @param object map ������ �����
------

function can_open_entry_07xmas2(map)
	--type_07xmas2 = "big"
	--return 1
	local Hour = GetNowTime()
	if Hour == 5 or Hour == 12 or Hour == 21 then
	--if Hour == 1 or Hour == 3 or Hour == 5 or Hour == 7 or Hour == 9 or Hour == 11 or Hour == 13 or Hour == 15 or Hour == 17 or Hour == 19 or Hour == 21 or Hour == 23 then
		type_07xmas2 = "small"
		return 1
	elseif Hour == 6 or Hour == 13 or Hour == 22 then
	--elseif Hour == 0 or Hour == 2 or Hour == 4 or Hour == 6 or Hour == 8 or Hour == 10 or Hour == 12 or Hour == 14 or Hour == 16 or Hour == 18 or Hour == 20 or Hour == 22 then 
		type_07xmas2 = "big"
		return 1
	else
		type_07xmas2 = "small"
		return 0
	end
	
end

------
-- ������� ����� �� �������� �����
-- @param string zone ���� (squares, bridges, centers, cbrdges)
-- @param int amount ���������� ����� � ������ �� ���
-- @param int charid Id ����
-- @param object map ������ �����
------

function set_monsters_07xmas2(zone, amount, charid, map_copy)

	local CurZone = zones_07xmas2[zone];
	
	if CurZone ~= nil and amount > 0 then 
	
		for i = 1 , table.getn(CurZone) , 1 do
			for d = 1 , amount , 1 do
				local x = math.random(CurZone[i][1]*100,CurZone[i][3]*100)
				local y = math.random(CurZone[i][2]*100,CurZone[i][4]*100)
				local lifeTime = 298000+i*50
				SetChaLifeTime(CreateChaEx(charid, x, y, math.random(1,360), 60, map_copy), lifeTime)
			end
		end
		
	end
	
end


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------DLDevTeam---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------2010 - 2011-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
