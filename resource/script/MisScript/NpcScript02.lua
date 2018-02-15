print( "Loading NPCScript02.lua" )

function GoToWhere()

	local ReSelectTalk = "� ������ ��������..."
	local ReSelectPage = 1

	local CancelSelectTalk = "������... � �������� �����"
	local CancelSelectPage = 3

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"
	local CurMapName6 = "winterland"

	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	local GoTo03X = 735
	local GoTo03Y = 1590
	local GoTo03M = CurMapName1

	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	local GoTo05X = 633
	local GoTo05Y = 2100
	local GoTo05M = CurMapName1

	local GoTo06X = 1007
	local GoTo06Y = 2966
	local GoTo06M = CurMapName1

	local GoTo07X = 1507
	local GoTo07Y = 2039
	local GoTo07M = CurMapName1

	local GoTo08X = 1711
	local GoTo08Y = 3448
	local GoTo08M = CurMapName1

	local GoTo09X = 2501
	local GoTo09Y = 2997
	local GoTo09M = CurMapName1

	local GoTo10X = 3197
	local GoTo10Y = 1254
	local GoTo10M = CurMapName1

	local GoTo11X = 1903
	local GoTo11Y = 2807
	local GoTo11M = CurMapName1

	local GoTo12X = 1517
	local GoTo12Y = 3091
	local GoTo12M = CurMapName1

	local GoTo13X = 1120
	local GoTo13Y = 2773
	local GoTo13M = CurMapName1

	local GoTo14X = 535
	local GoTo14Y = 2433
	local GoTo14M = CurMapName1

	local GoTo15X = 787
	local GoTo15Y = 3121
	local GoTo15M = CurMapName2

	local GoTo16X = 1214
	local GoTo16Y = 3203
	local GoTo16M = CurMapName2

	local GoTo17X = 807
	local GoTo17Y = 360
	local GoTo17M = CurMapName5

	local GoTo18X = 1050
	local GoTo18Y = 656
	local GoTo18M = CurMapName5

	local GoTo19X = 2146
	local GoTo19Y = 542
	local GoTo19M = CurMapName5

	local GoTo20X = 2681
	local GoTo20Y = 647
	local GoTo20M = CurMapName5

	local GoTo21X = 249
	local GoTo21Y = 868
	local GoTo21M = CurMapName6

	Talk( 1, "�������: ������! � ���������� �����! ��� ���� ���� ������?" )
	--Text( 1, "�� ������ ����������� � Dream City", JumpPage, 2)
	Text( 1, "����������� � ������!", JumpPage, 5 )
	Text( 1, "����������� � ������!", JumpPage, 7 )
	Text( 1, "����������� � ���������", JumpPage, 6 )
--	Text( 1, "����������� �� ������ ����", JumpPage, 2 )
--	Text( 1, "� ���� �������� ������ �����" , JumpPage, 10 )
	Text( 1, "�������� ����� �����������", JumpPage, 29 )
	Text( 1, "�����, � ������ ������������",CloseTalk )

	Talk( 3, "���� ��������� ��������������� ����� ��������, ���������.", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1636 )
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo21X, GoTo21Y, GoTo21M )
	TriggerCondition( 2, HasRecord, 1636 )
	TriggerCondition( 2, HasMoney, 25000 )
	TriggerAction( 2, TakeMoney, 25000 )
	TriggerAction( 2, GoTo, GoTo21X, GoTo21Y, GoTo21M )
	TriggerFailure( 2, JumpPage, 28)
	Talk(2, "�� ������ ����������� �� ������ ����? ��� �������, ��������� ����������� ����� 25000 �������. ��� ��������, ������� ������� ���� 40, ��� ���������.")
	Text(2, "�������������",MultiTrigger, GetMultiTrigger(), 2 )
	Text(2, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 4, "�� ������ ����������� � ������? ��� �������, ��������� ����������� ����� 500 �������. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 4, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 5, "� ������ ������. ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 5, "�������������",MultiTrigger, GetMultiTrigger(), 2)
	Text( 5, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 6, "�� ������ ����������� � ���������? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 6, "�������������",MultiTrigger, GetMultiTrigger(), 2 )
	Text( 6, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 7, "�� ������ ����������� � ������? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 7, "�������������",MultiTrigger, GetMultiTrigger(), 2)
	Text( 7, CancelSelectTalk, JumpPage , CancelSelectPage )

--	InitTrigger()
--	TriggerCondition( 1, LvCheck, "<", 40 )
--	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
--	TriggerCondition( 2, HasMoney, 500 )
--	TriggerAction( 2, TakeMoney, 500 )
--	TriggerAction( 2, GoTo, GoTo05X, GoTo05Y, GoTo05M )
--	TriggerFailure( 2, JumpPage, 28 )
--	Talk( 8, "�� ������ ����������� � ���������� �����? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
--	Text( 8, "�������������",MultiTrigger, GetMultiTrigger(), 2)
--	Text( 8, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 10, "�������: � ����� ����� �������� �� ������ �������?" )
	Text( 10, "����������� � ����������� �����", JumpPage,11 )
	Text( 10, "����������� � ��������� ���", JumpPage, 16 )
	Text( 10, "����������� � ��������� ����", JumpPage, 12 )
	Text( 10, "����������� � ��������", JumpPage, 13 )
	Text( 10, "����������� � ���������� �����", JumpPage, 15 )
	Text( 10, "����������� � ������� �������", JumpPage,14 )
	Text( 10, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 11, "�� ������ ����������� � ����������� �����? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 11, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 11, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 12, "�� ������ ����������� � ��������� ����? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 12, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 12, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo13X, GoTo13Y, GoTo13M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo13X, GoTo13Y, GoTo13M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 13, "�� ������ ����������� � ��������? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 13, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 13, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo14X, GoTo14Y, GoTo14M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo14X, GoTo14Y, GoTo14M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 14, "�� ������ ����������� � ������� �������? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 14, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 15, "�� ������ ����������� � ���������� �����? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 15, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 16, "�� ������ ����������� � ��������� ���? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 16, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )
--
--
	Talk( 18, "���: ������! � ���������� �����! ��� ���� ���� ������?" )
	--Text ( 18, "�� ������ ����������� � Dream City", JumpPage, 2)
	Text( 18, "����������� � ������", JumpPage, 4 )
	Text( 18, "����������� � ������", JumpPage, 7 )
	Text( 18, "����������� � ���������", JumpPage, 6 )
--	Text( 18, "����������� �� ������ ����", JumpPage, 2 )
--	Text( 18, "� ���� ����������� � ������ �����",JumpPage, 19)
	Text( 18, "�������� ����� �����������", JumpPage, 30 )

	Talk( 19,"���: � ����� ����� ������� �� ������ �������?" )
	Text( 19,"����������� � ������ ������", JumpPage,20 )
	Text( 19,"����������� � ���� ������", JumpPage, 21 )
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo15X, GoTo15Y, GoTo15M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo15X, GoTo15Y, GoTo15M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 20, "�� ������ ����������� � ������ ������? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 20, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo16X, GoTo16Y, GoTo16M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo16X, GoTo16Y, GoTo16M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 21, "�� ������ ����������� � ���� ������? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 21, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 21, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 22, "����: ������! � ���������� �����! ��� ���� ���� ������?" )
	--Text( 22, "�� ������ ����������� � Dream City", JumpPage, 2)
	Text( 22, "����������� � ������", JumpPage, 4 )
	Text( 22, "����������� � ������", JumpPage, 5 )
	Text( 22, "����������� � ������", JumpPage, 7 )
--	Text( 22, "����������� �� ������ ����", JumpPage, 2 )
	Text( 22, "�������� ����� �����������", JumpPage, 31 )

	Talk( 23, "����: ������! � ���������� �����! ��� ���� ���� ������?" )
	--Text( 23, "�� ������ ����������� � Dream City", JumpPage, 2)
	Text( 23, "����������� � ������", JumpPage, 4 )
	Text( 23, "����������� � ������", JumpPage, 5 )
	Text( 23, "����������� � ���������", JumpPage, 6 )
--	Text( 23, "����������� �� ������ ����", JumpPage, 2 )
--	Text( 23, "� ���� ������������� � ������ �����", JumpPage, 24 )
	Text( 23, "�������� ����� �����������", JumpPage, 32 )

	Talk( 24, "����: � ����� ����� ������� ������� �� ������ �������?")
	Text( 24, "����������� � ������� ������", JumpPage, 25 )
	Text( 24, "����������� � ����� ��������", JumpPage, 26 )
	Text( 24, "����������� �� ����� ��������", JumpPage, 27 )
	Text( 24, "����������� � ������� ���", JumpPage, 9 )
	Text( 24, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo17X, GoTo17Y, GoTo17M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo17X, GoTo17Y, GoTo17M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 25, "�� ������ ����������� � ������� ������? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 25, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 25, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo18X, GoTo18Y, GoTo18M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo18X, GoTo18Y, GoTo18M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 26, "�� ������ ����������� � ����� ��������? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 26, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 26, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo19X, GoTo19Y, GoTo19M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo19X, GoTo19Y, GoTo19M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 27, "�� ������ ����������� � ����� ��������? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 27, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 27, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo20X, GoTo20Y, GoTo20M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo20X, GoTo20Y, GoTo20M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 9, "�� ������ ����������� � ������� ���? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 9, "�������������",MultiTrigger, GetMultiTrigger(), 2)
	Text( 9, CancelSelectTalk, JumpPage , CancelSelectPage )


	Talk( 28, "������! �� � ���� �� ���������� ������ ��� �����������." )

	Talk( 29, "�������: �������� ����� ����������� � �������?" )
	Text( 29, "��, ���������� ������.", SetSpawnPos, "������" )
	Text( 29, "���, �������",CloseTalk )

	Talk( 30, "���: �������� ����� ����������� � �������?" )
	Text( 30, "��, ���������� ������.", SetSpawnPos, "������" )
	Text( 30, "���, �������",CloseTalk )

	Talk( 31, "����: �������� ����� ����������� � ����������?" )
	Text( 31, "��, ���������� ������.", SetSpawnPos, "���������" )
	Text( 31, "���, �������",CloseTalk )

	Talk( 32, "����: �������� ����� ����������� � ������?" )
	Text( 32, "��, ���������� ������.", SetSpawnPos, "������" )
	Text( 32, "���, �������",CloseTalk )

	InitTrigger()

	TriggerCondition( 1, IsMapNpc, "garner", 0 )
	TriggerAction( 1, JumpPage, 1 )

	TriggerCondition( 2, IsMapNpc, "magicsea", 0 )
	TriggerAction( 2, JumpPage, 18 )

	TriggerCondition( 3, IsMapNpc, "garner", 43 )
	TriggerAction( 3, JumpPage, 22 )

	TriggerCondition( 4, IsMapNpc, "darkblue", 12 )
	TriggerAction( 4, JumpPage, 23 )

	Start( GetMultiTrigger(), 4 )
end


function transmittal()

	local CancelSelectTalk = "������... � �������� �����"
	local CancelSelectPage = 27

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"

	local GoTo01X = 1903
	local GoTo01Y = 2807
	local GoTo01M = CurMapName1

	local GoTo02X = 1517
	local GoTo02Y = 3091
	local GoTo02M = CurMapName1

	local GoTo03X = 1120
	local GoTo03Y = 2773
	local GoTo03M = CurMapName1

	local GoTo04X = 535
	local GoTo04Y = 2433
	local GoTo04M = CurMapName1

	local GoTo05X = 633
	local GoTo05Y = 2100
	local GoTo05M = CurMapName1

	local GoTo06X = 1007
	local GoTo06Y = 2966
	local GoTo06M = CurMapName1

	local GoTo07X = 787
	local GoTo07Y = 3121
	local GoTo07M = CurMapName2

	local GoTo08X = 1214
	local GoTo08Y = 3203
	local GoTo08M = CurMapName2

	local GoTo09X = 807
	local GoTo09Y = 360
	local GoTo09M = CurMapName5

	local GoTo10X = 1050
	local GoTo10Y = 656
	local GoTo10M = CurMapName5

	local GoTo11X = 2146
	local GoTo11Y = 542
	local GoTo11M = CurMapName5

	local GoTo12X = 2681
	local GoTo12Y = 647
	local GoTo12M = CurMapName5

	local GoTo13X = 2231
	local GoTo13Y = 2788
	local GoTo13M = CurMapName1

	local GoTo14X = 890
	local GoTo14Y = 3575
	local GoTo14M = CurMapName2

	local GoTo15X = 1318
	local GoTo15Y = 510
	local GoTo15M = CurMapName5

	Talk( 1, "���: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 1, "����������� � ��������� ����", JumpPage, 14 )
	Text( 1, "����������� � ������", JumpPage , 29 )
	Text( 1, "�������� ����� �����������", JumpPage, 25 )

	Talk( 2, "�������: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 2, "����������� � ����������� �����", JumpPage, 13 )
	Text( 2, "����������� � ��������� ���", JumpPage, 18 )
	Text( 2, "����������� � ������", JumpPage , 29 )
	Text( 2, "�������� ����� �����������", JumpPage, 25 )

	Talk( 3, "�����: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 3, "����������� � ��������", JumpPage, 15 )
	Text( 3, "����������� � ��������� ����", JumpPage, 14 )
	Text( 3, "����������� � ������", JumpPage , 29 )
	Text( 3, "�������� ����� �����������", JumpPage, 25 )

	Talk( 4, "��������: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 4, "����������� � ������� �������", JumpPage, 16 )
	Text( 4, "����������� � ��������� ���", JumpPage, 18 )
	Text( 4, "����������� � ������", JumpPage , 29 )
	Text( 4, "�������� ����� �����������", JumpPage, 25 )

	Talk( 5, "�����: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 5, "����������� � ���������� �����", JumpPage, 17 )
	Text( 5, "����������� � ��������", JumpPage, 15 )
	Text( 5, "����������� � ������", JumpPage , 29 )
	Text( 5, "�������� ����� �����������", JumpPage, 25 )

	Talk( 6, "�����: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 6, "����������� � ������� �������", JumpPage, 16 )
	Text( 6, "����������� � ������", JumpPage , 29 )
	Text( 6, "�������� ����� �����������", JumpPage, 25 )

	Talk( 7, "����: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 7, "����������� � ���� ������", JumpPage, 20 )
	Text( 7, "����������� � ������", JumpPage , 30 )
	Text( 7, "�������� ����� �����������", JumpPage, 25 )

	Talk( 8, "�����: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 8, "����������� � ������ ������", JumpPage, 19 )
	Text( 8, "����������� � ������!", JumpPage , 30 )
	Text( 8, "�������� ����� �����������", JumpPage, 25 )

	Talk( 9, "����: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 9, "����������� � ����� ��������", JumpPage, 22 )
	Text( 9, "����������� � ������", JumpPage , 31 )
	Text( 9, "�������� ����� �����������", JumpPage, 25 )

	Talk( 10, "�����: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 10, "����������� � ����� ��������", JumpPage, 23 )
	Text( 10, "����������� � ������� ������", JumpPage, 21 )
	Text( 10, "����������� � ������", JumpPage , 31 )
	Text( 10, "�������� ����� �����������", JumpPage, 25 )

	Talk( 11, "����: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 11, "����������� � ������� ���!", JumpPage, 24 )
	Text( 11, "����������� � ����� ��������!", JumpPage, 22 )
	Text( 11, "����������� � ������", JumpPage , 31 )
	Text( 11, "�������� ����� �����������", JumpPage, 25 )

	Talk( 12, "��������: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 12, "����������� � ����� ��������", JumpPage, 23 )
	Text( 12, "����������� � ������", JumpPage , 31 )
	Text( 12, "�������� ����� �����������", JumpPage, 25 )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 13, "�� ������ ����������� � ����������� �����? ������� ��� 200 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 13, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 13, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 14, "�� ������ ����������� � ��������� ����? ������� ��� 200 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 14, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 15, "�� ������ ����������� � ��������? ������� ��� 200 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 15, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 16, "�� ������ ����������� � ������� �������? ������� ��� 200 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 16, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 17, "�� ������ ����������� � ���������� �����? ������� ��� 200 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 17, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo06X, GoTo06Y, GoTo06M  )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 18, "�� ������ ����������� � ��������� ���? ������� ��� 200 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 18, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo07X, GoTo07Y, GoTo07M )	
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 19, "�� ������ ����������� � ������ ������? ������� ��� 200 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 19, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, 
	GoTo08X, GoTo08Y, GoTo08M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 20, "�� ������ ����������� � ���� ������? ������� ��� 200 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 20, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo09X, GoTo09Y, GoTo09M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo09X, GoTo09Y, GoTo09M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 21, "�� ������ ����������� � ������� ������? ������� ��� 200 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 21, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 21, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo10X, GoTo10Y, GoTo10M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo10X, GoTo10Y, GoTo10M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 22, "�� ������ ����������� � ����� ��������? ������� ��� 200 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 22, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 22, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 23, "�� ������ ����������� �� ����� ��������? ������� ��� 200 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 23, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 23, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 24, "�� ������ ����������� � ������� ���? ������� ��� 200 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 24, "�������������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 24, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 96 )
	TriggerAction( 1, SetSpawnPos, "����������� �����")
	TriggerCondition( 2, IsMapNpc, "garner", 94 )
	TriggerAction( 2, SetSpawnPos, "��������� ����")
	TriggerCondition( 3, IsMapNpc, "garner", 95 )
	TriggerAction( 3, SetSpawnPos, "��������")
	TriggerCondition( 4, IsMapNpc, "garner", 97 )
	TriggerAction( 4, SetSpawnPos, "������� �������")
	TriggerCondition( 5, IsMapNpc, "garner", 55 )
	TriggerAction( 5, SetSpawnPos, "���������� �����")
	TriggerCondition( 6, IsMapNpc, "garner", 56 )
	TriggerAction( 6, SetSpawnPos, "��������� ���")
	TriggerCondition( 7, IsMapNpc, "magicsea", 50 )
	TriggerAction( 7, SetSpawnPos, "������ ������")
	TriggerCondition( 8, IsMapNpc, "magicsea", 46 )
	TriggerAction( 8, SetSpawnPos, "���� ������")
	TriggerCondition( 9, IsMapNpc, "darkblue", 56 )
	TriggerAction( 9, SetSpawnPos, "������� ������")
	TriggerCondition( 10, IsMapNpc, "darkblue", 42 )
	TriggerAction( 10, SetSpawnPos, "����� ��������")
	TriggerCondition( 11, IsMapNpc, "darkblue", 46 )
	TriggerAction( 11, SetSpawnPos, "����� ��������")
	TriggerCondition( 12, IsMapNpc, "darkblue", 51 )
	TriggerAction( 12, SetSpawnPos, "������� ���")
	TriggerFailure( 12, JumpPage, 28 )
	Talk( 25, "�������� ����� �����������?" )
	Text( 25, "��, ���������� ������.", MultiTrigger, GetMultiTrigger(), 12 )
	Text( 25, "���, �������",CloseTalk )

	Talk( 26, "������! �� � ���� ������������ ������ ��� �����������." )

	Talk( 27, "���� ��������� ��������������� ����� ��������, ���������.", CloseTalk )

	Talk( 28, "������ ������, ���������� � ����������� ���������", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo13X, GoTo13Y, GoTo13M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo13X, GoTo13Y, GoTo13M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 29, "�� ������ ����������� � ������? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 29, "�������������",MultiTrigger, GetMultiTrigger(), 2)
	Text( 29, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo14X, GoTo14Y, GoTo14M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo14X, GoTo14Y, GoTo14M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 30, "�� ������ ����������� � ������? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������.." )
	Text( 30, "�������������",MultiTrigger, GetMultiTrigger(), 2)
	Text( 30, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo15X, GoTo15Y, GoTo15M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo15X, GoTo15Y, GoTo15M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 31, "�� ������ ����������� � ������? ������� ��� 500 ������� � � �������� ���� ����. ��� ��������, ������� ������� ���� 40, ��� ���������." )
	Text( 31, "�������������",MultiTrigger, GetMultiTrigger(), 2)
	Text( 31, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 96 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, IsMapNpc, "garner", 94 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, IsMapNpc, "garner", 95 )
	TriggerAction( 3, JumpPage, 4 )
	TriggerCondition( 4, IsMapNpc, "garner", 97 )
	TriggerAction( 4, JumpPage, 5 )
	TriggerCondition( 5, IsMapNpc, "garner", 55 )
	TriggerAction( 5, JumpPage, 6 )
	TriggerCondition( 6, IsMapNpc, "garner", 56 )
	TriggerAction( 6, JumpPage, 3 )
	TriggerCondition( 7, IsMapNpc, "magicsea", 50 )
	TriggerAction( 7, JumpPage, 7 )
	TriggerCondition( 8, IsMapNpc, "magicsea", 46 )
	TriggerAction( 8, JumpPage, 8 )
	TriggerCondition( 9, IsMapNpc, "darkblue", 56 )
	TriggerAction( 9, JumpPage, 9 )
	TriggerCondition( 10, IsMapNpc, "darkblue", 42 )
	TriggerAction( 10, JumpPage, 10 )
	TriggerCondition( 11, IsMapNpc, "darkblue", 46 )
	TriggerAction( 11, JumpPage, 11 )
	TriggerCondition( 12, IsMapNpc, "darkblue", 51 )
	TriggerAction( 12, JumpPage, 12 )
	Start( GetMultiTrigger(), 12 )
end

function island()

	local CancelSelectTalk = "������... � �������� �����"
	local CancelSelectPage = 27

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"
--	local CurMapName6 = "PKmap"

	local GoTo01X = 3260
	local GoTo01Y = 3280
	local GoTo01M = CurMapName1

	local GoTo02X = 2273
	local GoTo02Y = 1122
	local GoTo02M = CurMapName1

	local GoTo03X = 3590
	local GoTo03Y = 755
	local GoTo03M = CurMapName1

	local GoTo04X = 2376
	local GoTo04Y = 725
	local GoTo04M = CurMapName2

	local GoTo05X = 1730
	local GoTo05Y = 3775
	local GoTo05M = CurMapName2

	local GoTo06X = 2529
	local GoTo06Y = 2406
	local GoTo06M = CurMapName2

	local GoTo07X = 1631
	local GoTo07Y = 1974
	local GoTo07M = CurMapName5

	local GoTo08X = 2231
	local GoTo08Y = 2788
	local GoTo08M = CurMapName1

--	local GoTo09X = 64
--	local GoTo09Y = 43
--	local GoTo09M = CurMapName6	

	Talk( 1, "�������: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 1, "����������� �� ������ ������", JumpPage, 14 )
	Text( 1, "����������� �� ���������� ������", JumpPage, 15 )
	Text( 1, "����������� �� ������ �����������", JumpPage, 16 )
	Text( 1, "����������� �� ������ �����", JumpPage, 17 )
	Text( 1, "����������� �� ������ ��������", JumpPage, 18 )
	Text( 1, "����������� �� ������ ��������", JumpPage, 19 )
	Text( 1, "����������� �� ������ �����", JumpPage, 20 )
--	Text( 1, "����������� � PKMap", JumpPage, 29 )
	Text( 1, "�������� ����� �����������", JumpPage, 25 )
	
	Talk( 2, "������: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 2, "����������� � ������", JumpPage, 21 )
	Text( 2, "����������� �� ���������� ������", JumpPage, 15 )
	Text( 2, "����������� �� ������ �����������", JumpPage, 16 )
	Text( 2, "����������� �� ������ �����", JumpPage, 17 )
	Text( 2, "����������� �� ������ ��������", JumpPage, 18 )
	Text( 2, "����������� �� ������ ��������", JumpPage, 19 )
	Text( 2, "����������� �� ������ �����", JumpPage, 20 )
	Text( 2, "�������� ����� �����������", JumpPage, 25 )

	Talk( 3, "�����: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 3, "����������� � ������", JumpPage, 21 )
	Text( 3, "����������� �� ������ ������", JumpPage, 14 )
	Text( 3, "����������� �� ������ �����������", JumpPage, 16 )
	Text( 3, "����������� �� ������ �����", JumpPage, 17 )
	Text( 3, "����������� �� ������ ��������", JumpPage, 18 )
	Text( 3, "����������� �� ������ ��������", JumpPage, 19 )
	Text( 3, "����������� �� ������ �����", JumpPage, 20 )
	Text( 3, "�������� ����� �����������", JumpPage, 25 )

	Talk( 4, "�����: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 4, "����������� � ������", JumpPage, 21 )
	Text( 4, "����������� �� ������ ������", JumpPage, 14 )
	Text( 4, "����������� �� ���������� ������", JumpPage, 15 )
	Text( 4, "����������� �� ������ �����", JumpPage, 17 )
	Text( 4, "����������� �� ������ ��������", JumpPage, 18 )
	Text( 4, "����������� �� ������ ��������", JumpPage, 19 )
	Text( 4, "����������� �� ������ �����", JumpPage, 20 )
	Text( 4, "�������� ����� �����������", JumpPage, 25 )

	Talk( 5, "������: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 5, "����������� � ������", JumpPage, 21 )
	Text( 5, "����������� �� ������ ������", JumpPage, 14 )
	Text( 5, "����������� �� ���������� ������", JumpPage, 15 )
	Text( 5, "����������� �� ������ �����������", JumpPage, 16 )
	Text( 5, "����������� �� ������ ��������", JumpPage, 18 )
	Text( 5, "����������� �� ������ ��������", JumpPage, 19 )
	Text( 5, "����������� �� ������ �����", JumpPage, 20 )
	Text( 5, "�������� ����� �����������", JumpPage, 25 )

	Talk( 6, "�����: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 6, "����������� � ������", JumpPage, 21 )
	Text( 6, "����������� �� ������ ������", JumpPage, 14 )
	Text( 6, "����������� �� ���������� ������", JumpPage, 15 )
	Text( 6, "����������� �� ������ �����������", JumpPage, 16 )
	Text( 6, "����������� �� ������ �����", JumpPage, 17 )
	Text( 6, "����������� �� ������ ��������", JumpPage, 19 )
	Text( 6, "����������� �� ������ �����", JumpPage, 20 )
	Text( 6, "�������� ����� �����������", JumpPage, 25 )

	Talk( 7, "�����: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 7, "����������� � ������", JumpPage, 21 )
	Text( 7, "����������� �� ������ ������", JumpPage, 14 )
	Text( 7, "����������� �� ���������� ������", JumpPage, 15 )
	Text( 7, "����������� �� ������ �����������", JumpPage, 16 )
	Text( 7, "����������� �� ������ �����", JumpPage, 17 )
	Text( 7, "����������� �� ������ ��������", JumpPage, 18 )
	Text( 7, "����������� �� ������ �����", JumpPage, 20 )
	Text( 7, "�������� ����� �����������", JumpPage, 25 )

	Talk( 8, "�������: ������! � ���������� �����! ��� ���� ���� ������?" )
	Text( 8, "����������� � ������", JumpPage, 21 )
	Text( 8, "����������� �� ������ ������", JumpPage, 14 )
	Text( 8, "����������� �� ���������� ������", JumpPage, 15 )
	Text( 8, "����������� �� ������ �����������", JumpPage, 16 )
	Text( 8, "����������� �� ������ �����", JumpPage, 17 )
	Text( 8, "����������� �� ������ ��������", JumpPage, 18 )
	Text( 8, "����������� �� ������ ��������", JumpPage, 19 )
	Text( 8, "�������� ����� �����������", JumpPage, 25 )

--	Talk( 9, "Niecy: ������! � ���������� �����! ��� ���� ���� ������?" )
--	Text( 9, "����������� � ������", JumpPage, 21 )
--	Text( 9, "����������� �� ���������� ������", JumpPage, 15 )
--	Text( 9, "����������� �� ������ �����������", JumpPage, 16 )
--	Text( 9, "����������� �� ������ �����", JumpPage, 17 )
--	Text( 9, "����������� �� ������ ��������", JumpPage, 18 )
--	Text( 9, "����������� �� ������ ��������", JumpPage, 19 )
--	Text( 9, "����������� �� ������ �����", JumpPage, 20 )
--	Text( 9, "�������� ����� �����������", JumpPage, 25 )


	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 14, "�� ������ ����������� �� ������ ������? ��� �������! ������� ��� 2000 �������!" )
	Text( 14, "�������������",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 15, "�� ������ ����������� �� ���������� ������? ��� �������! ������� ��� 2000 �������!" )
	Text( 15, "�������������",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 16, "�� ������ ����������� �� ������ �����������? ��� �������! ������� ��� 2000 �������!" )
	Text( 16, "�������������",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 17, "�� ������ ����������� �� ������ �����? ��� �������! ������� ��� 2000 �������!" )
	Text( 17, "�������������",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 18, "�� ������ ����������� �� ������ ��������? ��� �������! ������� ��� 2000 �������!" )
	Text( 18, "�������������",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 19, "�� ������ ����������� �� ������ ��������? ��� �������! ������� ��� 2000 �������!" )
	Text( 19, "�������������",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 20, "�� ������ ����������� �� ������ �����? ��� �������! ������� ��� 2000 �������!" )
	Text( 20, "�������������",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 21, "�� ������ ����������� � ������? ��� �������! ������� ��� 2000 �������!" )
	Text( 21, "�������������",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 21, CancelSelectTalk, JumpPage , CancelSelectPage )

--	InitTrigger()
--	TriggerCondition( 1, HasMoney, 5000 )
--	TriggerAction( 1, TakeMoney, 5000 )
--	TriggerAction( 1, GoTo, GoTo09X, GoTo09Y, GoTo09M )
--	TriggerFailure( 1, JumpPage, 26 )
--	Talk( 29, "PKMap? No problem, just give me 5000 Gold, thank you!" )
--	Text( 29, "�������������",MultiTrigger, GetMultiTrigger(), 1 ) 
--	Text( 29, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 123 )
	TriggerAction( 1, SetSpawnPos, "Argent City")
	TriggerCondition( 2, IsMapNpc, "garner", 124 )
	TriggerAction( 2, SetSpawnPos, "������ ������")
	TriggerCondition( 3, IsMapNpc, "garner", 125 )
	TriggerAction( 3, SetSpawnPos, "���������� ������")
	TriggerCondition( 4, IsMapNpc, "garner", 126 )
	TriggerAction( 4, SetSpawnPos, "������ �����������")
	TriggerCondition( 5, IsMapNpc, "magicsea", 69 )
	TriggerAction( 5, SetSpawnPos, "������ �����")
	TriggerCondition( 6, IsMapNpc, "magicsea", 70)
	TriggerAction( 6, SetSpawnPos, "������ ��������")
	TriggerCondition( 7, IsMapNpc, "magicsea", 71 )
	TriggerAction( 7, SetSpawnPos, "������ ��������")
	TriggerCondition( 8, IsMapNpc, "darkblue", 65 )
	TriggerAction( 8, SetSpawnPos, "������ �����")
--	TriggerCondition( 9, IsMapNpc, "PKmap", 0 )
--	TriggerAction( 9, SetSpawnPos, "PKmap")
	TriggerFailure( 9, JumpPage, 28 )

	Talk( 25, "�������� ����� �����������?" )
	Text( 25, "��, ���������� ������.", MultiTrigger, GetMultiTrigger(), 8 )
	Text( 25, "���, �������",CloseTalk )

	Talk( 26, "������! �� � ���� ������������ ������, ��� �� �������������." )

	Talk( 27, "���� ��������� ��������������� ����� ��������, ���������.", CloseTalk )

	Talk( 28, "������ ������, ���������� � ����������� ���������", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 123 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, IsMapNpc, "garner", 124 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, IsMapNpc, "garner", 125 )
	TriggerAction( 3, JumpPage, 3 )
	TriggerCondition( 4, IsMapNpc, "garner", 126 )
	TriggerAction( 4, JumpPage, 4 )
	TriggerCondition( 5, IsMapNpc, "magicsea", 69 )
	TriggerAction( 5, JumpPage, 5)
	TriggerCondition( 6, IsMapNpc, "magicsea", 70)
	TriggerAction( 6, JumpPage, 6 )
	TriggerCondition( 7, IsMapNpc, "magicsea", 71 )
	TriggerAction( 7, JumpPage, 7)
	TriggerCondition( 8, IsMapNpc, "darkblue", 65 )
	TriggerAction( 8, JumpPage, 8 )
--	TriggerCondition( 9, IsMapNpc, "PKmap", 0 )
--	TriggerAction( 9, JumpPage, 9)
	Start( GetMultiTrigger(), 8 )
end
