print( "Loading NPCScript04.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


function b_talk1()


	Talk( 1, "�� ���: ����� � ���� ���������� ������, ������ ���� ���������, � �� ������ - �������� ������. ����� ���� �� ���������!" )
	Text( 1, "��������", BuyPage )
	Text( 1, "������", OpenRepair)
	Text( 1, "� �����", JumpPage, 2)
	Text( 1, "� ��������������", JumpPage, 3)

	Talk( 2, "�� ���: �����? Ÿ ������ ����� ������ ������ �� �������" )

	Talk( 3, "�� ����: ������ ���-�� ��������������? ��������� � ����, ���� ����� ������ ��������������, � ������� ����������� ����������� ��������. ������ �� � �������� � ����������� - ����� � �������. �� ������������ ����� ������ ��������������." )

	Talk( 4, "�� ����: ��� ���� �� ��������!" )


	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )


	InitTrade()
	Weapon(	0023	)
	Weapon(	1399	)
	Weapon(	0021	)
	Weapon(	1378	)
	Weapon(	1387	)
	Weapon(	0084	)
	Weapon(	1426	)
	Weapon(	1461	)
	Weapon(	0108	)
	Weapon(	4302	)
	Weapon(	1438	)
	Weapon(	1441	)
	Weapon(	1473	)
	Weapon(	1476	)
	Weapon(	0045	)
	Weapon(	1414	)


	AddNpcMission	(393)	--1
	AddNpcMission	(567)	--2

	AddNpcMission	(5817)	--3
	AddNpcMission	(5818)	--4

end



function b_talk2()

	Talk( 1, "������� ��: ����� ����������! � ��� ���� ����� ���� ������ ����. ������� ���� ������?")

	Talk( 2, "������� ��: ��� ���� �� ��������!" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(394)	--1
	AddNpcMission	(536)	--2
	AddNpcMission	(537)	--3
	AddNpcMission	(538)	--4
	AddNpcMission	(569)	--5

	AddNpcMission	(5819)
	AddNpcMission	(5820)

	--AddNpcMission	(6174)
	--AddNpcMission	(6175)

end

function b_talk3()

	Talk( 1, "����: ��...������, � ����-�� ����� �� ���, ��� � � ����. � ���� �������� ��� �� ��������� ��������� ����!" )
	Text( 1, "����", BuyPage )
	Talk( 2, "����: ��� ���� �� ��������!" )


	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )


	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission	(395)	--1
	AddNpcMission	(517)	--2
	AddNpcMission	(519)	--3
	AddNpcMission	(525)	--4
	AddNpcMission	(526)	--5
	AddNpcMission	(564)	--6

	AddNpcMission	(5821)	--7
	AddNpcMission	(5822)	--8
	--AddNpcMission	(535)	--9

end


function b_talk4()

	Talk( 1, "����: �� �� ������ � ������� �����? � ����������� �������? ���? �� ������? � � ��������? ���� ���...����� �� �� �������� �����������?" )

	Talk( 8, "����: ��� ���� �� ��������!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )
	AddNpcMission	(396)	--1
	AddNpcMission	(530)	--2
	AddNpcMission	(545)	--3
	AddNpcMission	(546)	--4
	AddNpcMission	(547)	--5
	AddNpcMission	(572)	--6

	AddNpcMission	(5825)	--7
	AddNpcMission	(5826)	--8

end


function b_talk5()
	local ReSelectTalk = "� ������ ��������..."
	local ReSelectPage = 1

	local CancelSelectTalk = "������... � �������� �����"
	local CancelSelectPage = 7

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	Talk( 1, "��� ��: � ����� ���, ��� ������ ����� ��� ����. ����� ����������� ����� 500 �������, ��� �������� ���� 40 ������ ��� ���������. �� ��, ������ �����!" )
	Text( 1, "����������� � ������!", JumpPage, 2 )
	Text( 1, "����������� � ������!", JumpPage, 3 )
	Text( 1, "����������� � ������!", JumpPage, 4 )
	Text( 1, "�������� ����� �����������", JumpPage, 5 )
	
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 2, "������������� � ������? ��� �������! �������, ����������, 500 �������. ��� ���������� 40 ������ � ���� � ���������!" )
	Text( 2, "�����������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 39 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 3, "��� ��: ������ ������! ����������, ������� 500 �������! ��� ������� 40 � ���� ������� ���������!" )
	Text( 3, "�����������",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 4, "��� ��: ������������� � ������? ��� �������! �������, ���������� 500 �������! ��� ������� 40 ������ � ���� ����������� ���������!" )
	Text( 4, "�����������",MultiTrigger, GetMultiTrigger(), 2)
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 5, "���� ��: ������ ���������� � ���������? ��� ���������?" )
	Text( 5, "��, ���������� ��������.", SetSpawnPos, "���������" )
	Text( 5, "���, �������.",CloseTalk )

	Talk( 6, "��� ��: ������! � ���� ��� ����� �� ������������" )

	Talk( 7, "��� ��: ��������� �� ��� ���� ���� ����������� ����-������ �������������", CloseTalk )
	Talk( 8, "��� ��: ��� ���� �� ��������!" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(397)	--1
	AddNpcMission	(559)	--2
	MisListPage(8)

	AddNpcMission	(5827)	--3
	AddNpcMission	(5828)	--4

end

function b_talk6()


	Talk( 1, "�����-�����: �����������! ����, ���� ���� ������������, � ������� �����������. ��� � ���� ����� ���������� ����, � ������ ���� ���������� ������ ����� �� 500 �������. ����?" )
	Text( 1, "��� ����� 1 ������ �����", JumpPage, 2 )
	Text( 1, "��� ����� 10 ������� �����", JumpPage, 24 )
	Text( 1, "��� ����� 1 ������ �������", JumpPage, 3 )
	Text( 1, "��� ����� 10 ������� �������", JumpPage, 25 )
	Text( 1, "������ �� �������", JumpPage, 6 )
	Text( 1, "��������� ����������", OpenItemTiChun )

	Talk( 6, "����� �����: ���� - ����� ������. ��� �� ������ ��������?")
	Text( 6, "������ ������", JumpPage , 7 )
	Text( 6, "���������� ������", JumpPage , 8 )
	Text( 6, "��������� ����", JumpPage , 10 )
	Text( 6, "���� ��� ���������", JumpPage , 11 )

	Talk( 7, "����� �����: 1 ����� ������, 1 ��� ������, 1 ���� ������ � ����� �� 1 ������ ������.")
	Text( 7, "����������� �����", ChangeHeartDeath, 1 )

	Talk( 8, "����� �����: ��������� ������, ����� ������ �������! ������������: 3 ������������ ���� �������� � 3 ������������ ���� �������, ����� ������ ��������?")
	Text( 8, "���������� �������", MelancholyCrus, 1 )
	Text( 8, "���������� �������", MelancholySharp, 1 )
	Text( 8, "���������� ��������", MelancholyChamp, 1 )
	Text( 8, "���������� �������", MelancholyBow, 1 )
	Text( 8, "���������� ������������", MelancholyCler, 1 )
	Text( 8, "��������� �������� --->>", JumpPage, 9 )

	Talk( 9, "����� �����: ��������� ������, ����� ������ �������! ������������: 3 ������������ ���� �������� � 3 ������������ ���� �������, ����� ������ ��������?")
	Text( 9, "���������� ��������", MelancholySeal, 1 )
	Text( 9, "���������� ���������� �����", MelancholyVoy, 1 )
	Text( 9, "���������� ���������", MelancholyShield, 1 )
	Text( 9, "���������� ����� ������", MelancholyArmor, 1 )
	Text( 9, "<<--- ���������� ��������", JumpPage, 8 )

	Talk( 10, "����� �����: ��������� ����, � ��� ����� �� �����������, ��������� ������ � ���������! ������������: 10 ��� ����, ����� ������ ��������?")
	Text( 10, "��������� ���� �������", CursedSoulHardin, 1 )
	Text( 10, "��������� ���� C�����", CursedSoulDeath, 1 )
	Text( 10, "��������� ���� ��������", CursedSoulAbaddon, 1 )
	Text( 10, "��������� ���� �����", CursedSoulAsura, 1 )
	Text( 10, "��������� ���� ������", CursedSoulBezdna, 1 )
	Text( 10, "��������� ���� ������", CursedSoulStiks, 1 )

	Talk( 11, "����� �����: �� ����� ���� ��� �� �������� ���� ����������? � ���� �� �������������, �� ��� ������������: ���������� ������ ������� ����, ��������� ���� ��� ������ ������ � ������ ������.")
	Text( 11, "���� �������", SoulHardin, 1 )
	Text( 11, "���� ������", SoulDeath, 1 )
	Text( 11, "���� ��������", SoulAbaddon, 1 )
	Text( 11, "���� �����", SoulAsura, 1 )
	Text( 11, "���� ������", SoulBezdna, 1 )
	Text( 11, "���� ������", SoulStiks, 1 )
	Text( 11, "��������� �������� --->>", JumpPage, 12 )

	Talk( 12, "����� �����: �� ����� ���� ��� �� �������� ���� ����������? � ���� �� �������������, �� ��� ������������: ���������� ������ ������� ����, ��������� ���� ��� ������ ������ � ������ ������.")
	Text( 12, "<<--- ���������� ��������", JumpPage, 11 )
	Text( 12, "���� �������� ��������", SoulChamp, 1 )
	Text( 12, "���� �������� �������", SoulCrus, 1 )
	Text( 12, "���� �������� �������", SoulSharp, 1 )
	Text( 12, "���� �������� �������", SoulBow, 1 )
	Text( 12, "��������� �������� --->>", JumpPage, 13 )

	Talk( 13, "����� �����: �� ����� ���� ��� �� �������� ���� ����������? � ���� �� �������������, �� ��� ������������: ���������� ������ ������� ����, ��������� ���� ��� ������ ������ � ������ ������.")
	Text( 13, "���� �������� ���������� �����", SoulVoy, 1 )
	Text( 13, "���� ������� ������������", SoulCler, 1 )
	Text( 13, "���� ������� ��������", SoulSeal, 1 )
	Text( 13, "���� �������� ���������", SoulShield, 1 )
	Text( 13, "<<--- ���������� ��������", JumpPage, 12 )


	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3086,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 2, "����� �����: ���������� ������? ����������, 5000 �������!" )
	Text( 2, "������, � ��� ���� 5000 �������...",MultiTrigger, GetMultiTrigger(), 1 ) 

	InitTrigger()
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 50000)
	TriggerAction( 1, GiveItem, 3086,10, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 24, "����� �����: 10 ���������� �������? ��������� 50 000 �������! " )
	Text( 24, "������, � ������� 50 000 �������",MultiTrigger, GetMultiTrigger(), 1 ) 

	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3087,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "����� �����: ������ ������ ������ �������? 5000 �������!" )
	Text( 3, "������, � ��� ���� 5000 �������...",MultiTrigger, GetMultiTrigger(), 1 ) 
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 50000)
	TriggerAction( 1, GiveItem, 3087,10, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 25, "����� �����: 10 ������� �������? ��������� 50 000 �������! " )
	Text( 25, "������, � ������� 50 000 �������",MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 4, "����� �����: ��� ���� �� ��������!" )

	Talk( 5, "����� �����: � ���� ��� ���� ����������� ����������� ��� ������, ��� ������������ ���� � ���������. �������� �����, ��� ���� ��������� ������������." )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 4 )

	AddNpcMission	(520)	--1
	AddNpcMission	(900)	--2

	AddNpcMission	(5065)	--3
	AddNpcMission	(595)	--4
	AddNpcMission	(599)	--5
	AddNpcMission	(5000)	--6
	AddNpcMission	(5001)	--7
	AddNpcMission	(5002)	--8
	AddNpcMission	(5003)	--9
	AddNpcMission	(5066)	--10

	AddNpcMission	(5829)	--11
	AddNpcMission	(5830)	--12	

end

function b_talk7()

	Talk( 1, "���� ��: �����! ������������ ��������� ������!" )

	Talk( 2, "���� ��: ��� ���� �� ��������!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )


	AddNpcMission	(392)	--1
	AddNpcMission	(514)	--2
	AddNpcMission	(516)	--3
	AddNpcMission	(527)	--4
	AddNpcMission	(528)	--5
	AddNpcMission	(529)	--6
	AddNpcMission	(548)	--7
	AddNpcMission	(550)	--8
	AddNpcMission	(551)	--9
	AddNpcMission	(558)	--10
	AddNpcMission	(571)	--11

	AddNpcMission	(592)	--12
	AddNpcMission	(5004)	--13
	AddNpcMission	(5005)	--14
	AddNpcMission	(5006)	--15
	AddNpcMission	(5007)	--16
	AddNpcMission	(5008)	--17
	AddNpcMission	(5043)	--18
	AddNpcMission	(5054)	--19
	AddNpcMission	(5055)	--20

	AddNpcMission	(5831)	--21
	AddNpcMission	(5832)	--22

end

function b_talk8()


	Talk( 1, "�����: ������� �������? ��������? ��� ��� ������?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 13 )
	TriggerAction( 1, LuanchBerthList, 13, 3426, 2575, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, RepairBerthList, 13 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, SupplyBerthList, 13 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 13 )
	TriggerAction( 1, SalvageBerthList, 13 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "������, �� � ���������� ���� �������, ����������� � ���� ������. ���� �������� ��������� 1000 ���." )
	Talk( 5, "������, �� ��� �������� ����� ������������� ������� � ����� ������. � ���� 200 �������." )
	Talk( 6, "������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )



	AddNpcMission	(398)	--1
	AddNpcMission	(565)	--2

	AddNpcMission	(5833)	--3
	AddNpcMission	(5834)	--4

end

function b_talk9()


	Talk( 1, "���� ��: ����� ������ �������, ��� �� � ������ ���� �����." )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� (����� 200 ���.)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "������, ������, � ���� �� ������� �����" )
	Talk( 3, "���� ��: ��� ���� �� ��������!" )




	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 2 )



	AddNpcMission	(399)	--1
	AddNpcMission	(510)	--2
	AddNpcMission	(511)	--3
	AddNpcMission	(512)	--4
	AddNpcMission	(513)	--5
	AddNpcMission	(543)	--6
	AddNpcMission	(544)	--7
	AddNpcMission	(570)	--8

	AddNpcMission	(5839)	--9
	AddNpcMission	(5840)	--10
end

function b_talk10()


	Talk( 1, "���: � ��� �������! ����� �� ������� ����?" )

	Talk( 2, "���: ��� ���� �� ��������!" )


	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(5835)	--1
	AddNpcMission	(5836)	--2

end

function b_talk11()

	Talk( 1, "����: ���� ���� ���� ��������� ����? ��� �� ����? �� ������� ��������, � ������ ��� � �����." )

	Talk( 2, "����: ��� ���� �� ��������!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(531)	--1
	AddNpcMission	(532)	--2
	AddNpcMission	(533)	--3
	AddNpcMission	(534)	--4

	AddNpcMission	(5837)	--5
	AddNpcMission	(5838)	--6

end

function b_talk12()

	Talk( 1, "������: �� �������� �����? ��� ��� �������!" )

	Talk( 2, "������: ��� ���� �� ��������!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(533)	--1-������ ����
	AddNpcMission	(563)	--2-���������� ������(����������)

	AddNpcMission	(5841)	--3-����� ���� 13(����������)
	AddNpcMission	(5842)	--4-����� ���� 14

	AddNpcMission	(6320)	--5-������ - ������� ������(����������)
	AddNpcMission	(6321)	--6-������ - �������� ������

end

function b_talk13()

	Talk( 1, "�����: ��, ������ ����, �������� ������. �� ��� ����" )

	Talk( 2, "�����: ��� ���� �� ��������!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(5843)	--1-����� ���� 14(����������)
	AddNpcMission	(5844)	--2-����� ���� 15

	AddNpcMission	(6318)	--3-���� � ���������(����������)
	AddNpcMission	(6319)	--4-������ - ������� ������

end

function b_talk14()

	Talk( 1, "����: ������? �����? � � ������ �������� ����������� ��������! �� �������� ����!" )

	Talk( 2, "����: ��� ���� �� ��������!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(568)	--1

--	AddNpcMission	(6262)	--2
--	AddNpcMission	(6263)	--3

	AddNpcMission	(5847)	--4
	AddNpcMission	(5848)	--5

end

function b_talk15()

	Talk( 1, "���� ����: � �� ���� ������� ������ �������. �� ����������� �� ���..." )

	Talk( 2, "���� ����: ��� ���� �� ��������!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(5845)	--1
	AddNpcMission	(5846)	--2

end

function b_talk16()

	Talk( 1, "�������: ����� �� �� ������ ��� �� ���������?" )

	Talk( 2, "�������: ��� ���� �� ��������!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(5641)	--1
	AddNpcMission	(5642)	--2

	AddNpcMission	(5849)	--3
	AddNpcMission	(5850)	--4

end

function b_talk17()

	Talk( 1, "����������: '����.....'" )

	Text( 1, "� ���� ������� ��������", JumpPage, 2)
	Text( 1, "����������", BuyPage )

	InitTrade()
	--�����
	Weapon(	1808	)	--������� ����� ��������(����)
	Weapon(	1809	)	--������� ����� ��������(������)
	Weapon(	1810	)	--������� ����� ��������(������)
	Weapon(	1811	)	--������� ����� ��������(���)
	Weapon(	0931	)	--������ ����� ��������(����)
	Weapon(	0932	)	--������ ����� ��������(������)
	Weapon(	0933	)	--������ ����� ��������(������)
	Weapon(	0934	)	--������ ����� ��������(���)
	--�����������
	Weapon(	1804	)	--��������� ������
	Weapon(	1805	)	--�������
	Weapon(	1806	)	--���� ��� �����
	Weapon(	1807	)	--��������
	--������
	Defence(	4608	)	--���������� ������ 
	Defence(	4606	)	--������ ������ 
	Defence(		)
	Defence(		)
	Defence(	1793	)	--��������� ������ 
	Defence(	1792	)	--����� ������
	Defence(	1791	)	--������� ������ 
	Defence(	1790	)	--������� ������ 
	Defence(	1789	)	--������ ������ 
	Defence(	1788	)	--��������� ������
	Defence(	1787	)	--������� ������
	--���������
	Other(	4610	)	--��������������� ��������
	Other(	4609	)	--���������� ���������  
	Other(	4607	)	--������ ���������
	Other(		)
	Other(	1803	)	--��������� ��������� 
	Other(	1801	)	--������� ��������� 
	Other(	1800	)	--������� ���������
	Other(	1798	)	--��������� ��������� 
	Other(	1797	)	--������� ���������
	Other(	1802	)	--����� ���������
	Other(	1799	)	--������ ���������

	Talk( 2, "����������: ������! ������ �������� ��������? ������� ��������� �� ���� �������������� ��������!")

	InitTrigger()
	TriggerCondition( 1, HasItem, 1807, 1 )
	TriggerAction( 1, OpenHair )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "��, ����������", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "������, ��� ����� ��� ��������", CloseTalk )

	Talk( 3, "����������: �������, � ���� ��� �������������� ��������. � �� ���� ������� ���� ��������.")

	Talk( 4, "����������: ��� ���� �� ��������!" )


	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(6003)	--1
	AddNpcMission	(6004)	--2
	AddNpcMission	(6005)	--3
	AddNpcMission	(6006)	--4
	AddNpcMission	(6007)	--5
	AddNpcMission	(6008)	--6
	AddNpcMission	(6009)	--7

	AddNpcMission	(5851)	--8
	AddNpcMission	(5852)	--9

end

function b_talk18()

	Talk( 1, "�����: ������" )

	Talk( 2, "�����: ��� ���� �� ��������!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(515)	--1
	AddNpcMission	(518)	--2
	AddNpcMission	(524)	--3
end

function b_talk30()
	Talk( 1, "����: ����������! ������������� �������� � �������� � �������. ������ ����� ���� ����." )

	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "���������� ������������ ���������� ��������" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� �������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 13 )
	TriggerAction( 1, BoatLevelBerthList, 13 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������������� �������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "����: ��! ������ ����������� � ��������? ����� ���� ����� ������� �������! �������� �� ��� ������� - �������� ���� �����-������ �� ���? ����� �������� ������� �������, ��������� �� ��� �����, ����� �������� ���������� ����� � �������� ��� ����������� ������� �������." )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 1, 13 )
	Text( 2, "��������� �����", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 5, 13 )
	Text( 2, "��������� ��������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 6, 13 )
	Text( 2, "��������� ����-���", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 4, 13 )
	Text( 2, "��������� ��������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 14 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 14, 13 )
	Text( 2, "��������� ������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 15 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 15, 13 )
	Text( 2, "��������� ������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 13 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 13, 13 )
	Text( 2, "��������� �������� ����� �����", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 16 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 16, 13 )
	Text( 2, "��������� ���", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "����: ����� �������� ������� ������ �����, ���������� ������������� ��� � ������. ������� ���������� �����, ���� ������� ��� �������. �����������, ����� ������� ���, ����� �������� ���������� ����� � ��������� ��� ��������� � �������� ����������." )


	Talk( 5, "����: ��� ���� �� ��������!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 5 )
	Start( GetMultiTrigger(), 2 )
end
------------------------------------------------------------
-- ���������� ������ �� 1 > �� 2 (��������� �����)
------------------------------------------------------------

function b_talk21()

	InitTrigger()
	TriggerCondition( 1, goto_BDL_time )
	TriggerAction( 1, JumpPage, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Start( GetMultiTrigger(), 1 )

	local CancelSelectTalk = "������. � �������� �����."
	local CancelSelectPage = 5

	local CurMapName = "heilong2"

	local GoTo01X = 767
	local GoTo01Y = 602
	local GoTo01M = CurMapName

	Talk( 1, "������ ���������: \"� ������, ������������ ������.\"" )
	Text( 1, "����� � ������ ������� ������� 2!", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 179,1 )
	TriggerCondition( 1, HasItem, 3084,1 )
	TriggerCondition( 1, HasItem, 3085,1 )
	TriggerCondition( 1, goto_BDL_time )
	TriggerAction( 1, TakeItem, 179,1 )
	TriggerAction( 1, TakeItem, 3084,1 )
	TriggerAction( 1, TakeItem, 3085,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerAction( 1, SystemNotice, "���� � ������ ������� ������� 2.")
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "������ ���������: \"��� ��������� � ������ ������� ������� 2 ����������: 1 ���� �������, 1 ����� ������ ����� � 1 ������ ���������!\"" )
	Text( 2, "�����������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 3, "������ ���������: \"������ ������� ������� 2 ����������� � 19:10 - 19:15!\"" )

	Talk( 4, "������ ���������: \"��������, �� �� ������� ��� 3 ����������� ����!\"" )

	Talk( 5, "������ ���������: \"����� ���� �����, ����� ���� ����������� �����������������.\"" )
end

------------------------------------------------------------
-- ���������� ������ �� 2 > �� 1 (��������� �����)
------------------------------------------------------------

function b_talk22()
	local ReSelectTalk = "� ���������"
	local ReSelectPage = 1

	local CancelSelectTalk = "������, � �������� �����"
	local CancelSelectPage = 4

	local CurMapName = "heilong2"

	local GoTo01X = 847
	local GoTo01Y = 247
	local GoTo01M = CurMapName

	Talk( 1, "������ ���������: \"� ������, ������������ ������.\"" )
	Text( 1, "��������� � ������ ������� ������� 1", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, "������ �� �� �����?" )
	Text( 2, "�����������",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 4, "����� ���� �����, ����� ���� ����������� �����������������.", CloseTalk )
end


------------------------------------------------------------
-- ���������� ������ �� 2 > �� 3 (��������� �����)
------------------------------------------------------------

function b_talk23()
	local CurMapName = "heilong2"

	local GoTo01X = 772
	local GoTo01Y = 722
	local GoTo01M = CurMapName

	InitTrigger()
	TriggerCondition( 1, HasItem, 182,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "������ ���������: \"� ������, ������������ ������.\"" )
	Text( 1, "����� � ������ ������� ������� 3!", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 4, "������ ����������. ��� ����� ���� �������, ����� ������ ������." )
end


------------------------------------------------------------
-- ������ ������� ������� (��������� ����� � ���)
------------------------------------------------------------

function b_talk24()
	InitTrigger()
	TriggerCondition( 1, HasItem, 182, 1 )
	TriggerAction( 1, TakeItem, 182, 1 )
	TriggerAction( 1, AddMoney, 100000000 )
	--TriggerAction(1, GiveItem, 0266, 1, 4 )
	TriggerAction( 1, GiveItem, 8238, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "��� ����������� �������. ��������, ���-����� �� ������." )
	Text( 1, "������ �����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�� ���������� �������. ������ � ��� ��� ������� �����." )
end

function l_talk01()
	Talk(1, "������� ������: ���� ������� � � ���� ����� ����� �����, �� �� ������ ����� �����... � � �� ���� ��� ��� ������� ������. � �������� ��� �����!")

	AddNpcMission	(894)	--1
	AddNpcMission	(487)	--2
	AddNpcMission	(504)	--3
	AddNpcMission	(508)	--4
	AddNpcMission	(509)	--5
	AddNpcMission	(573)	--6
	AddNpcMission	(581)	--7
	AddNpcMission	(582)	--8
	AddNpcMission	(583)	--9

	AddNpcMission	(6359)	--10
	AddNpcMission	(6360)	--11
	AddNpcMission	(6361)	--12

end

function l_talk02()

	Talk(1, "���� �������: ����� ����� ��� ��������� ������� ���� ���� �� �� ���������! ����� ������ �� ���������, � ��� ������� ������ �� ������������. ���� ���������!")

	AddNpcMission	(895)	--1
	AddNpcMission	(896)	--2
	AddNpcMission	(482)	--3
	AddNpcMission	(485)	--4
	AddNpcMission	(486)	--5
	AddNpcMission	(574)	--6
	AddNpcMission	(575)	--7
	AddNpcMission	(584)	--8
	AddNpcMission	(585)	--9
	AddNpcMission	(586)	--10

	AddNpcMission	(5676)	--11

	AddNpcMission	(6357)	--12
	AddNpcMission	(6358)	--13

end

function l_talk03()

	Talk(1, "����������: ��������� ����! ���� �� �� �� ����� ���� ������� �����, �� � �� �� �������� � ���� ������ ������!")

	AddNpcMission	(897)	--1
	AddNpcMission	(898)	--2
	AddNpcMission	(899)	--3
	AddNpcMission	(476)	--4
	AddNpcMission	(479)	--5
	AddNpcMission	(480)	--6
	AddNpcMission	(481)	--7
	AddNpcMission	(576)	--8
	AddNpcMission	(577)	--9
	AddNpcMission	(578)	--10
	AddNpcMission	(589)	--11
	AddNpcMission	(590)	--12

end

function l_talk04()

	Talk( 1, "��������: ��� �? ��� � ��������� �����? �������!! *..������..*")
	Text( 1, "����", BuyPage )

	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission	(505)	--1
	AddNpcMission	(506)	--2
	AddNpcMission	(507)	--3
	AddNpcMission	(579)	--4
	AddNpcMission	(580)	--5
	AddNpcMission	(587)	--6
	AddNpcMission	(588)	--7
	AddNpcMission	(591)	--8

	AddNpcMission	(5573)	--9
	AddNpcMission	(5574)	--10

	AddNpcMission	(5661)	--11
	AddNpcMission	(5662)	--12

	AddNpcMission	(6171)	--13
	AddNpcMission	(6172)	--14
end

function mmm_talk06()

	Talk( 1, "�����: �������? ������������? ��������? �����������?" )

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 650,999, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "�����: ������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "�����: ������, �� � ���������� ���� �������, ����������� � ���� ������. ���� �������� ��������� 1000 ���." )
	Talk( 5, "�����: ������, �� ��� �������� ����� ������������� ������� � ����� ������. � ���� 200 �������." )
	Talk( 6, "�����: ������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )

end

function mmm_talk05()

	Talk( 1, "�����: �������? ���������������? ���������������, ��������� ��� ������������ �������? ��� �� ���." )

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 625,925, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "�����: ������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "�����: ������, �� � ���������� ���� �������, ����������� � ���� ������. ���� �������� ��������� 1000 ���." )
	Talk( 5, "�����: ������, �� ��� �������� ����� ������������� ������� � ����� ������. � ���� 200 �������." )
	Talk( 6, "�����: ������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )

end

function mmm_talk07()

	Talk( 1, "��������� �����: ���������������? �����������? ��������������� ��� ������������ �������? ��� �� ���." )

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 620,628, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "��������� �����: ������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "��������� �����: ������, �� � ���������� ���� �������, ����������� � ���� ������. ���� �������� ��������� 1000 ���." )
	Talk( 5, "��������� �����: ������, �� ��� �������� ����� ������������� ������� � ����� ������. � ���� 200 �������." )
	Talk( 6, "��������� �����: ������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )

end

function mmm_talk08()

	Talk( 1, "������������ �����: �� ������ ����������� � ��������?" )

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 380,161, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "������������ �����: ������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "������������ �����: ������, �� � ���������� ���� �������, ����������� � ���� ������. ���� �������� ��������� 1000 ���." )
	Talk( 5, "������������ �����: ������, �� ��� �������� ����� ������������� ������� � ����� ������. � ���� 200 �������." )
	Talk( 6, "������������ �����: ������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )

end

function mmm_talk09()

	Talk( 1, "��������� �����: ���������������? �����������? ��������������� ��� ������������ �������? ��� �� ���." )

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 1070,212, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "��������� �����: ������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "��������� �����: ������, �� � ���������� ���� �������, ����������� � ���� ������. ���� �������� ��������� 1000 ���." )
	Talk( 5, "��������� �����: ������, �� ��� �������� ����� ������������� ������� � ����� ������. � ���� 200 �������." )
	Talk( 6, "��������� �����: ������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )

end

function mmm_talk10()

	Talk( 1, "����: ������������! � ������� ����������. ���� � ��� �� ������?" )

	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ���������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_MINE, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ���������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "����: �������, �� � ��� ��� ����� � ���� �����!" )

end

function mmm_talk11()

	local CurMapName = "jialebi" 

	local GoTo01X = 190
	local GoTo01Y = 815
	local GoTo01M = CurMapName

	InitTrigger()
	TriggerCondition( 1, HasItem, 2438,20 )
	TriggerCondition( 1, HasItem, 2419,15 )
	TriggerCondition( 1, HasItem, 2386,15 )
	TriggerAction( 1, TakeItem, 2438,20 )
	TriggerAction( 1, TakeItem, 2419,15 )
	TriggerAction( 1, TakeItem, 2386,15 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "���������� ��������: �� ������ ����� � �������? ������ ������ �������� ��� 20 ������� �����, 15 ��������� ������ � 20 ��� ������." )
	Text( 1, "����� � ������� 1", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 4, "����������� ����� ����������� ��� �����������" )

	AddNpcMission	(5593)	--1
	AddNpcMission	(5594)	--2

--	AddNpcMission	(6264)	--3
--	AddNpcMission	(6265)	--4
end

function mmm_talk12()

	local CurMapName = "jialebi" 

	local GoTo01X = 1604
	local GoTo01Y = 906
	local GoTo01M = CurMapName

	Talk( 1, "�������� ����������: � ��������� ������. ����� ������� �� ����, ���� ����� ���������� �� ���. ������, ������ �������� ���� �������������� ����� �����. ��� ������ � ���� �����, ��� ������ ����� ������� ������." )
	Text( 1, "��� ������� �������� ��������������� ������", JumpPage, 3 )
	--Text( 1, "� ������, ��� � ���� ���� ������ �������� ��������", JumpPage, 7 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 0938,1 )
	TriggerAction( 1, TakeItem, 0938,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "�������� ����������: � ���� ���� ��������������� ������? � ������� ����." )
	Text( 3, "� ���� ����� �� ������!", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "� ��������������� ������", JumpPage, 6 )

	Talk( 5, "�� ������ ����� �������� ��������������� ������" )
	Talk( 6, "������� ���� ��������� ��������������� �� �����, ����� ������ ����� ����� �� ������!" )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerCondition( 1, HasItem, 2386, 10 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 2386, 10 )
	TriggerAction( 1, GiveItem, 0271, 1, 4 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 7, "�������� ����������: ���������� ����� - ���������, ����������� �������. ������ �� ������ ������ ���� ��� 10 ��� ������ � 1 ���� ����." )
	Text( 7, "�������� ���������� �����", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "����������� ����� ����������� ��� �����������" )

	AddNpcMission	(5595)	--1
	AddNpcMission	(5596)	--2

	AddNpcMission	(6056)	--3
	AddNpcMission	(6057)	--4
	AddNpcMission	(6058)	--5
	AddNpcMission	(6059)	--6
	AddNpcMission	(6060)	--7

	AddNpcMission	(5726)	--8
	AddNpcMission	(5727)	--9

end

function mmm_talk13()

	Talk( 1, "����������� ������������� A: � ���� ���� ��� ��� ��� ���. ������� ���������?" )
	Text( 1, "�������� ���� �� ������������� ������", JumpPage, 2)

	Talk( 2, "����������� ������������� A: ��� ������������� ���� ��� �� �������� ��� ����� ������!" )
	Text( 2, "�������� ������������ ������ (���� �������)", JumpPage, 3)
	Text( 2, "�������� ������������ �������� (���� �������)", JumpPage, 4)
	Text( 2, "�������� ������������ ������ (���� �������)", JumpPage, 5)
	Text( 2, "�������� ������ (���� �������)", JumpPage, 6)

	Talk(3,"����������� ������������� A: ����� �������� ������������ ������ ����������: 1 ������ ����� ������, 30 �������� �������, 20 ��� ���������, 10 ��������� ����� � 100000 ������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2467, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2467, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0396, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "�������� ������������ ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"����������� ������������� A: ����� �������� ������������ �������� ����������: 1 ���������� ������, 30 �������� �������, 20 ������� ��������, 10 ������ �������� ����� � 50000 ������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2473, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2473, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0588, 1 , 4)
	TriggerFailure( 1, JumpPage, 7)
	Text( 4, "�������� ������������ ��������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"����������� ������������� A: ����� �������� ������������ ������ ����������: 1 ����-������ �������, 30 �������� �������, 20 ������� ����, 10 �������� � 50000 ������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0748, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "�������� ������������ ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"����������� ������������� A: ����� �������� ������ ����������: 1 ������������ ������ ������, 30 ���������� �����, 20 ������������, 10 ��������� ������ � 100000 ������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2463, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2463, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0114, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "�������� ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"����������� ������������� A: ������, �� �� ������ ������ � ���� ��� ����������� ��������� ����� ��������� �����")

end

function mmm_talk14()

	Talk( 1, "����������� ������������� B: � ���� ���� ��� ��� ��� ���. ������� ���������?" )
	Text( 1, "�������� ���� �� ������������ ������", JumpPage, 2)

	Talk( 2, "����������� ������������� �: ��� ������������� ���� ��� �� �������� ��� ����� ������!" )
	Text( 2, "�������� ����������� ������ (������ �������)", JumpPage, 3)
	Text( 2, "�������� �������� ������ (������ �������)", JumpPage, 4)
	Text( 2, "�������� ������ ������ (������ �������)", JumpPage, 5)
	Text( 2, "�������� ������ (������ �������)", JumpPage, 6)

	Talk(3,"����������� ������������� B: ����� �������� ����������� ������ ����������: 1 ���������� �������� ������, 30 ��������� ������, 20 ��� ���������, 10 ��������� ������ � 100000 ������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0398, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "�������� ����������� ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"����������� ������������� B: ����� �������� �������� ������ ����������: 1 �������� ������ ������, 30 ��������� ������, 20 ������� ��������, 10 ������ �������� ����� � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0604, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "�������� �������� ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"����������� ������������� B: ����� �������� ������ ������ ����������: 1 �������� ������ ������, 30 ��������� ������, 20 ������ ����, 10 �������� � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2484, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2484, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0830, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "�������� ������ ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"����������� ������������� B: ����� �������� ������ ����������: 1 ������ �������� ������, 30 ���������� �����, 20 ������������, 10 ��������� ������ � 100000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2464, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2464, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0116, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "�������� ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"����������� ������������� B: ������, �� �� ������ ������ � ���� ��� ����������� ��������� ����� ��������� �����")

end

function mmm_talk15()

	Talk( 1, "����������� ������������� C: � ���� ���� ��� ��� ��� ���. ������� ���������?" )
	Text( 1, "�������� ����� ���������� ��������", JumpPage, 2)
	Text( 1, "�������� ����� ������", JumpPage, 9)

	Talk( 2, "����������� ������������� C: ��� ������������� ���� ��� �� �������� ��� ����� ������!" )
	Text( 2, "�������� ������ ���������� �������� (��� ���������� �����)", JumpPage, 3)
	Text( 2, "�������� �������� ���������� �������� (��� ���������� �����)", JumpPage, 4)
	Text( 2, "�������� ������ ���������� �������� (��� ���������� �����)", JumpPage, 5)
	Text( 2, "�������� ���� ���������� �������� (��� ���������� �����)", JumpPage, 6)
	Text( 2, "�������� ������������ ���� (��� ���������� �����)", JumpPage, 7)

	Talk(3,"����������� ������������� C: ����� �������� ������ ���������� �������� ����������: 1 ������� ������ �����, 30 �������� �������, 20 ��� ���������, 10 ��������� ����� � 100000 ������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0413, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "�������� ������ ���������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"����������� ������������� C: ����� �������� �������� ���������� �������� ����������: 1 ������ ������ �����, 30 �������� �������, 20 ������� ��������, 10 ����� �������� ����� � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2477, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2477, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0602, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "�������� �������� ���������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"����������� ������������� C: ����� �������� ������ ���������� �������� ����������: 1 ������ ������ �������, 30 �������� ��������, 20 ������� ����, 10 �������� � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2483, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2483, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0824, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "�������� ������ ���������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"����������� ������������� C: ����� �������� ���� ���������� �������� ����������: 1 ������������� ������ ������, 30 �������� ��������, 20 ����������� �������, 10 ���������� � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2487, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2487, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2223, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "�������� ���� ���������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"����������� ������������� C: ����� �������� ������������ ���� ����������: 1 ������� ������ ������, 30 ���������� �����, 20 ������������, 10 ��������� ������ � 100000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2466, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2466, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0151, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "�������� ������������ ����", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"����������� ������������� C: ������, �� �� ������ ������ � ���� ��� ����������� ��������� ����� ��������� �����")

	Talk( 9, "����������� ������������� C: ��� ������������� ���� ��� �� �������� ��� ����� ������!" )
	Text( 9, "�������� ������ ������ (����, ������ ���������� �����)", JumpPage, 10)
	Text( 9, "�������� �������� ������ (����, ������ ���������� �����)", JumpPage, 11)
	Text( 9, "�������� ������� ������ (����, ������ ���������� �����)", JumpPage, 12)
	Text( 9, "�������� ������������ ���� (����, ������ ���������� �����)", JumpPage, 7)

	Talk(10,"����������� ������������� C: ����� �������� ������ ������ ����������: 1 ������� ������ �����, 30 ���������� �����, 20 ��� ���������, 10 ����� �������� ����� � 100000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0411, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "�������� ������ ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"����������� ������������� C: ����� �������� �������� ������ ����������: 1 ������ �����, 30 ���������� ������, 20 ������������, 10 ����� �������� ����� � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0600, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "�������� �������� ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"����������� ������������� C: ����� �������� ������� ������ ����������: 1 ����-������ �������, 30 ���������� �����, 20 ����������� �������, 10 ����� �������� ����� � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0760, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "�������� ������� ������", MultiTrigger, GetMultiTrigger(), 1)

end

function mmm_talk26()

	Talk( 1, "����������� ������������� D: � ���� ���� ��� ��� ��� ���. ������� ���������?" )
	Text( 1, "�������� ����� ������ ���", JumpPage, 2)
	Text( 1, "�������� ����� ���", JumpPage, 9)

	Talk( 2, "����������� ������������� D: ��� ������������� ���� ��� �� �������� ��� ����� ������ ���!" )
	Text( 2, "�������� ������ ������ ��� (��� ��������)", JumpPage, 3)
	Text( 2, "�������� �������� ������ ��� (��� ��������)", JumpPage, 4)
	Text( 2, "�������� ������� ������ ��� (��� ��������)", JumpPage, 5)
	Text( 2, "�������� ������� ������ ��� (��� ��������)", JumpPage, 6)
	Text( 2, "�������� ����� �������� (��� ��������)", JumpPage, 7)

	Talk(3,"����������� ������������� D: ����� �������� ������ ������ ��� ����������: 1 ��������� ���-������, 30 �������� ������������ �����, 20 ��� ���������, 10 ��������� ������ � 100000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2471, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2471, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0408, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "�������� ������ ������ ���", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"����������� ������������� D: ����� �������� �������� ������ ��� ����������: 1 ������ ������ ������, 30 �������� ������������ �����, 20 ������� ��������, 10 ����� �������� ����� � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0598, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "�������� �������� ������ ���", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"����������� ������������� D: ����� �������� ������� ������ ��� ����������: 1 ��������� ������ ������, 30 �������� ������������ �����, 20 ������� ����, 10 �������� � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0758, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "�������� ������� ������ ���", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"����������� ������������� D: ����� �������� ������� ������ ��� ����������: 1 ��������� �������� ������, 30 �������� ������������ �����, 20 ����������� �������, 10 ���������� � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2486, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2486, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2221, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "�������� ������� ������ ���", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"����������� ������������� D: ����� �������� ����� �������� ����������: 1 ������������ ��������, 30 ���������� �����, 20 ������������, 10 ��������� ������ � 100000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2461, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2461, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0110, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "�������� ����� ��������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"����������� ������������� D: ������, �� �� ������ ������ � ���� ��� ����������� ��������� ����� ��������� �����")

	Talk( 9, "����������� ������������� D: ��� ������������� ���� ��� �� �������� ��� ����� ���!" )
	Text( 9, "�������� ����� ��� (������ ��������)", JumpPage, 10)
	Text( 9, "�������� ��������� �������� (������ ��������)", JumpPage, 11)
	Text( 9, "�������� �������� ��� (������ ��������)", JumpPage, 12)
	Text( 9, "�������� ����� �������� (������ ��������)", JumpPage, 7)

	Talk(10,"����������� ������������� D: ����� �������� ����� ��� ����������: 1 ���������� �������� ������, 30 �������� ������������ �����, 20 ����������� �������, 10 �������� � 100000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0406, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "�������� �������� ����� ���", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"����������� ������������� D: ����� �������� ��������� �������� ����������: 1 ������ ������ ������, 30 ���������� �����, 20 ��� ���������, 10 ��������� ������ � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0596, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "�������� ��������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"����������� ������������� D: ����� �������� �������� ��� ����������: 1 ������� ������ ������, 30 �������� ������������ �����, 20 ����������� �������, 10 �������� � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0756, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "�������� �������� ���", MultiTrigger, GetMultiTrigger(), 1)

end

function mmm_talk27()

	Talk( 1, "����������� ������������� E: � ���� ���� ��� ��� ��� ���. ������� ���������?" )
	Text( 1, "�������� ����� ���������� �����", JumpPage, 2)
	Text( 1, "�������� ����� �������", JumpPage, 9)

	Talk( 2, "����������� ������������� E: ��� ������������� ���� ��� �� �������� ��� ����� ���������� �����!" )
	Text( 2, "�������� ������ ���������� ����� (��� ��������)", JumpPage, 3)
	Text( 2, "�������� �������� ���������� ����� (��� ��������)", JumpPage, 4)
	Text( 2, "�������� ������� ���������� ����� (��� ��������)", JumpPage, 5)
	Text( 2, "�������� ����������� ������� �����  (��� ��������)", JumpPage, 6)
	Text( 2, "�������� ��������� ����� (��� ��������)", JumpPage, 7)

	Talk(3,"����������� ������������� E: ����� �������� ������ ���������� ����� ����������: 1 ������ ������, 30 ���������� ������, 20 ��� ���������, 10 ��������� ������ � 100000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0404, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "�������� ������ ���������� �����", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"����������� ������������� E: ����� �������� �������� ���������� ����� ����������: 1 ������ ����, 30 ���������� ������, 20 ������� ��������, 10 ����� �������� ����� � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2475, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2475, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0594, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "�������� �������� ���������� �����", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"����������� ������������� E: ����� �������� ������� ���������� ����� ����������: 1 �������� ��������� �����, 30 ���������� ������, 20 ������� ����, 10 �������� � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2481, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2481, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0754, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "�������� ������� ���������� �����", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"����������� ������������� E: ����� �������� ����������� ������� ����� ����������: 1 �������� ����-������, 30 ���������� ������, 20 ����������� �������, 10 ���������� � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2485, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2485, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2219, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "�������� ����������� ������� �����", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"����������� ������������� E: ����� �������� ��������� ����� ����������: 1 �������� ������ ������, 30 ���������� �����, 20 ������������, 10 ��������� ������ � 100000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2462, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2462, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0112, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "�������� ��������� �����", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"����������� ������������� E: ������, �� �� ������ ������ � ���� ��� ����������� ��������� ����� ��������� �����")

	Talk( 9, "����������� ������������� E: ��� ������������� ���� ��� �� �������� ��� ����� �������!" )
	Text( 9, "�������� ���� ������� (������ ��������)", JumpPage, 10)
	Text( 9, "�������� �������� ������� (������ ��������)", JumpPage, 11)
	Text( 9, "�������� ������ ������� (������ ��������)", JumpPage, 12)
	Text( 9, "�������� ��������� ����� (������ ��������)", JumpPage, 7)

	Talk(10,"����������� ������������� E: ����� �������� ���� ������� ����������: 1 ������ ������, 30 ���������� ������, 20 ������� ��������, 10 ��������� ������ � 100000 ������� ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0402, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "�������� ���� �������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"����������� ������������� E: ����� �������� �������� ������� ����������: 1 �������� ������ ������, 30 �������� ������������ �����, 20 ������������, 10 �������� � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0592, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "�������� �������� �������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"����������� ������������� E: ����� �������� ������ ������� ����������: 1 ��������� ������ ������, 30 ���������� �����, 20 ��� ���������, 10 ��������� ������ � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0752, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "�������� ������ �������", MultiTrigger, GetMultiTrigger(), 1)

end

function mmm_talk28()

	Talk( 1, "����������� ������������� F: � ���� ���� ��� ��� ��� ���. ������� ���������?" )
	Text( 1, "�������� ����� ��������", JumpPage, 2)

	Talk( 2, "����������� ������������� F: ��� ������������� ���� ��� �� �������� ��� ����� ��������!" )
	Text( 2, "�������� ������ �������� (����, ������ �������)", JumpPage, 3)
	Text( 2, "�������� �������� �������� (����, ������ �������)", JumpPage, 4)
	Text( 2, "�������� ������ �������� (����, ������ �������)", JumpPage, 5)
	Text( 2, "�������� ������� (����, ������ �������)", JumpPage, 6)

	Talk(3,"����������� ������������� F: ����� �������� ������ �������� ����������: 1 �������� ������ �����, 30 ����������� ���������, 20 ��� ���������, 10 ��������� ������ � 100000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2469, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2469, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0400, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "�������� ������ ��������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"����������� ������������� F: ����� �������� �������� �������� ����������: 1 ������ �����, 30 ����������� ���������, 20 ������� ��������, 10 ����� �������� ����� � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0590, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "�������� �������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"����������� ������������� F: ����� �������� ������ �������� ����������: 1 ������� ������ ������, 30 ����������� ���������, 20 ������� ����, 10 �������� � 50000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0750, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "�������� ������ ��������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"����������� ������������� F: ����� �������� ������� ����������: 1 ��������� ������ ���, 30 ���������� �����, 20 ������������, 10 ��������� ������ � 100000 �������")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2465, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2465, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0118, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "�������� �������", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"����������� ������������� F: ������, �� �� ������ ������ � ���� ��� ����������� ��������� ����� ��������� �����")
end

function mmm_talk16()

	local CurMapName = "jialebi"

	local GoTo01X = 1250
	local GoTo01Y = 1010
	local GoTo01M = CurMapName

	Talk( 1, "���������� �� ����: ������ ������, ��� ��������� �����? ������� ��� 5000 ������� � � ��� ���� ������!" )
	Text( 1, "���! ����� ���� ������.", JumpPage, 2 )
	Text( 1, "� �� ����� ���� �������!", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "���������� �� ����: ������ ����� � ��� ������� ���. ���������� �� �� �����, ����� �����?" )
	Text( 2, "�����������.", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "���������� �� ����: ���� ����� �����!" )
	Talk( 4, "���������� �� ����: � ��� ������������ ������.", CloseTalk)

end

function mmm_talk17()

	local CurMapName = "jialebi"

	local GoTo01X = 968
	local GoTo01Y = 828
	local GoTo01M = CurMapName

	Talk( 1, "��������� ������������ A: ������ ������, ��� ��� ������? ������� ��� 5000 ������� � � ��� ���� ������!" )
	Text( 1, "���! ����� ���� ������.", JumpPage, 2 )
	Text( 1, "������! � �� ����� �������.", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "��������� ������������ A: ������ ����� � ��� ������� ���. ���������� �� �� �����, ����� �����?" )
	Text( 2, "����������� ������� �! ", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "��������� ������������ A: ���� �����!" )
	Talk( 4, "��������� ������������ A: � ��� ������������ ������.", CloseTalk)

end

function mmm_talk18()

	local CurMapName = "jialebi"

	local GoTo01X = 968
	local GoTo01Y = 906
	local GoTo01M = CurMapName

	Talk( 1, "��������� ������������ B: �� ������ �����, ��� ��� ������? ��������� ��� 20 ��� ������ � � ������� ���." )
	Text( 1, "��� ������.", JumpPage, 2 )
	Text( 1, "������ �� ����! � �� ���� ����.", JumpPage, 3 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 2386, 20 )
	TriggerAction( 1, TakeItem, 2386, 20 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "��������� ������������ B: ���� ���� ����� � ��������� ������� ���. �� ��� ��� ������ �����?" )
	Text( 2, "����������� ������� �!", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "��������� ������������ B: ���� ������ ����!" )
	Talk( 4, "��������� ������������ B: � ���� ��� 20 ��� ������.", CloseTalk)

end

function mmm_talk19()

	local CurMapName = "jialebi"

	local GoTo01X = 968
	local GoTo01Y = 993
	local GoTo01M = CurMapName

	Talk( 1, "��������� ������������ C: ������ ������, ��� ��� ������? ��������� ��� 5000 ������� � � ������� ��� ������." )
	Text( 1, "��� ������.", JumpPage, 2 )
	Text( 1, "������ �� ����! � ��������� ����.", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "��������� ������������ C: ���� ���� ����� � ������� �." )
	Text( 2, "����������� ������� �.", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "��������� ������������ C: ���� �����!" )
	Talk( 4, "��������� ������������ C: ��� �� ������� ������.", CloseTalk)

end

function mmm_talk20()

	local CurMapName = "jialebi"

	local GoTo01X = 1076
	local GoTo01Y = 869
	local GoTo01M = CurMapName

	Talk( 1, "��� ������: ������ ������, ��� ��� ������?" )
	Text( 1, "��� ��� ���������?", JumpPage, 2 )
	Text( 1, "�� ���� ����� �����", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasItem , 2408,1)
	TriggerCondition(1,HasItem , 2409,1)
	TriggerCondition(1,HasItem , 2410,1)
	TriggerCondition(1,HasItem , 2411,1)
	TriggerCondition(1,HasItem , 2412,1)
	TriggerAction(1,TakeItem,2408,1)
	TriggerAction(1,TakeItem,2409,1)
	TriggerAction(1,TakeItem,2410,1)
	TriggerAction(1,TakeItem,2411,1)
	TriggerAction(1,TakeItem,2412,1)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "��� ������: ������ ��������� ����������������� ����� ������� ���, ����� ���� ������, �������� ������ �������� �������: AB, BC, CD, DE, EF." )
	Text( 2, "����������� � ����������������� �����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "��� ������: ......����!" )
	Talk( 4, "��� ������: �� �� ����� ������ ������.", CloseTalk)
end

function mmm_talk22()

	local CurMapName = "jialebi"

	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName


	Talk( 1, "�������� 1-�� ��������: ������ ������ � ������� 2? �� 5000 ������� � ������� ���." )
	Text( 1, "����� ���� ������.", JumpPage, 2 )
	--Text( 1, "� ������, ��� � ��� ����� ����� �������� ������� ����.", JumpPage, 5 )
	Text( 1, "������! � ��������� ����.", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "�������� 1-�� ��������: ������ ������������ � ������� 2?" )
	Text( 2, "��! � ���� ������!", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "�������� 1-�� ��������: ���� ����� �����!" )
	Talk( 4, "�������� 1-�� ��������: � ��� ������������ ������." ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0267, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "�������� 1-�� ��������: � ���� �� ������ �������� ���� ���� ��: ���� ����." )
	Text( 5, "�������� ���� ����", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�������� 1-�� ��������: �������������, ����� �������� �� �����������." )

end

function mmm_talk23()

	local CurMapName = "jialebi"

	local GoTo01X = 199
	local GoTo01Y = 824
	local GoTo01M = CurMapName

	local GoTo02X = 70
	local GoTo02Y = 952
	local GoTo02M = CurMapName

	Talk( 1, "�������� 2-�� ��������: ������ ������ � ������� 3? �� 5000 ������� � ������� ���." )
	Text( 1, "���� � ������� 1.", JumpPage, 2 )
	Text( 1, "���� � ������� 3.", JumpPage, 3 )
	--Text( 1, "� ������, ��� � ��� ����� ����� �������� ������� ����.", JumpPage, 5 )
	Text( 1, "������! � ��������� ����.", JumpPage, 7 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "�������� 2-�� ��������: ������� ������������ � ������� 1?" )
	Text( 2, "���� � ������� 1", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "�������� 2-�� ��������: ������� ������������ � ������� 3?" )
	Text( 3, "��! ������� ���� � ������� 3.", MultiTrigger, GetMultiTrigger(),2 )

	Talk( 7, "�������� 2-�� ��������: ���� ����� �����!" )
	Talk( 4, "�������� 2-�� ��������: ���� �� ������� ������. " ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0268, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "�������� 2-�� ��������: � ���� �� ������ �������� ���� ���� ��: ���� �����." )
	Text( 5, "�������� ���� �����", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�������� 2-�� ��������: �������������, ����� �������� �� �����������." )
end

function mmm_talk24()

	local CurMapName = "jialebi"

	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName

	local GoTo02X = 209
	local GoTo02Y = 955
	local GoTo02M = CurMapName


	Talk( 1, "�������� 3-�� ��������: ������ ������ � ������� 4? �� 5000 ������� � ������� ���." )
	Text( 1, "������ � ������� 2", JumpPage, 2 )
	Text( 1, "������ � ������� 4", JumpPage, 3 )
	--Text( 1, "� ������, ��� � ��� ����� ����� �������� ������� ����.", JumpPage, 5 )
	Text( 1, "������! � ��������� ����.", JumpPage, 7 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "�������� 3-�� ��������: ������� ������������ � ������� 2?" )
	Text( 2, "��! ������� ���� � ������� 2. ", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "�������� 3-�� ��������: ������� ������� � ������� 4?" )
	Text( 3, "������� ���� � ������� 4.", MultiTrigger, GetMultiTrigger(), 2 )

	Talk( 7, "�������� 3-�� ��������: ���� ����� �����!" )
	Talk( 4, "�������� 3-�� ��������: � ��� ������������ ������! " ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0269, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "�������� 3-�� ��������: � ���� �� ������ �������� ���� ���� ��: ���� ������." )
	Text( 5, "�������� ���� ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�������� 3-�� ��������: �������������, ����� �������� �� �����������." )
end

function mmm_talk25()

	local CurMapName = "jialebi"

	local GoTo01X = 70
	local GoTo01Y = 952
	local GoTo01M = CurMapName

	local GoTo02X = 690
	local GoTo02Y = 1043
	local GoTo02M = CurMapName

	Talk( 1, "�������� 4-�� ��������: ������ ������ � ������� 3? �� 5000 ������� � ������� ���." )
	Text( 1, "��������� � ������� 3", JumpPage, 2 )
	Text( 1, "� ���� �������� ��� ������ �����!", JumpPage, 3 )
	--Text( 1, "� ������, ��� � ��� ����� ����� �������� ������� ����.", JumpPage, 5 )
	Text( 1, "������! � ��������� ����.", JumpPage, 7 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "�������� 4-�� ��������: ���������� � ������� 3?" )
	Text( 2, "��! ������� ���� � ������� 3.", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "�������� 4-�� ��������: �� ������ ���� ������?" )
	Text( 3, "��! ��� ��� ����!", MultiTrigger, GetMultiTrigger(), 2 )

	Talk( 7, "�������� 4-�� ��������: ���� ����� �����!" )
	Talk( 4, "�������� 4-�� ��������: � ��� ������������ ������. " ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0270, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "�������� 4-�� ��������: � ���� �� ������ �������� ���� ���� ��: ���� ������." )
	Text( 5, "�������� ���� ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�������� 4-�� ��������: �������������, ����� �������� �� �����������." )
end

function mmm_talk30()

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	Talk( 1, "������: �������� ���� ���� ��������� ����. ������ �������� �������? ������ ������ �� ��� �������." )
	Text( 1, "� �����", JumpPage, 2 )
	Text( 1, "� ���� ���� ������ �������", JumpPage, 17 )
	Text( 1, "� �� ���� �������� �� ��� ������� �������", CloseTalk )

	InitTrigger()
	TriggerAction( 1, GoTo, 631, 927, "jialebi" )
	Text( 1, "��������� � ����� ��������", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "������: ������ ����� ������� ������� �� ������. ����������, ����� ���� �������. � �����, ���� ���� �� �����������." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerCondition( 1, LvCheck, ">", 14 )
	TriggerAction ( 1, JumpPage, 4 )
	TriggerFailure( 1, JumpPage, 16 )
	
	Text( 2, "������� 15-40",MultiTrigger, GetMultiTrigger() ,1)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 40 )
	TriggerCondition( 1, LvCheck, "<", 61 )
	TriggerAction ( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 16 )

	Text( 2, "������� 41-60",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 60 )
	TriggerAction ( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 16 )
	Text( 2, "������� 61 � ����",MultiTrigger, GetMultiTrigger(), 1)


	Talk( 4, "������: ������, �� ������ ������. � ���� �������� ���� ���� ����� �� ������ ��� ����. ����� �� ������ �������� ��� ��� ���� ���� ����� �, ��������, �������� ����������� �������" )
	Text( 4, "�������� ���� ����� �� ������", JumpPage, 7 )
	Text( 4, "�������� ���� ����� �� ����", JumpPage, 8 )
	Text( 4, "� ���� �������� ��� ���� ���� ����� ������", JumpPage, 9 )


	Talk( 5, "������: ������, �� ������ ������. � ���� �������� ���� ���� ����� �� ������ ��� ����. ����� �� ������ �������� ��� ��� ���� ���� ����� �, ��������, �������� ����������� �������" )
	Text( 5, "�������� ���� ����� �� ������", JumpPage, 10 )
	Text( 5, "�������� ���� ����� �� ����", JumpPage, 11 )
	Text( 5, "� ���� �������� ��� ���� ���� ����� ������", JumpPage, 12 )

	Talk( 6, "������: ������, �� ������ ������. � ���� �������� ���� ���� ����� �� ������ ��� ����. ����� �� ������ �������� ��� ��� ���� ���� ����� �, ��������, �������� ����������� �������" )
	Text( 6, "�������� ���� ����� �� ������", JumpPage, 13 )
	Text( 6, "�������� ���� ����� �� ����", JumpPage, 14 )
	Text( 6, "� ���� �������� ��� ���� ���� ����� ������", JumpPage, 15 )

--������
	InitFuncList()
	AddFuncList( CreditExchange,0 )
	Talk( 7, "������: �� ������������� ������ �������� ��� ���� ���� ����� �� ������?" )
	Text( 7, "��, � ���� ��������", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 7,"���, � ���������",JumpPage , 4 )

--�����
	InitFuncList()
	AddFuncList( CreditExchange,3 )
	Talk( 8, "������: �� ������������� ������ �������� ��� ���� ���� ����� �� ����?" )
	Text( 8, "��, � ���� ��������", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 8,"���, � ���������",JumpPage , 4 )

--�����
	InitFuncList()
	AddFuncList( CreditExchange, 6 )
	Talk( 9, "������: �� ������������� ������ �������� ��� ��� ���� ���� �����?" )
	Text( 9, "��, � ����", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 9,"���, � ���������",JumpPage , 4 )

--������
	InitFuncList()
	AddFuncList( CreditExchange,1 )
	Talk( 10, "������: �� ������������� ������ �������� ��� ���� ���� ����� �� ������?" )
	Text( 10, "��, � ���� ��������", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 10,"���, � ���������",JumpPage , 5 )

--�����
	InitFuncList()
	AddFuncList( CreditExchange,4 )
	Talk( 11, "������: �� ������������� ������ �������� ��� ���� ���� ����� �� ����?" )
	Text( 11, "��, � ���� ��������", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 11,"���, � ���������",JumpPage , 5 )

--�����
	InitFuncList()
	AddFuncList( CreditExchange, 7 )
	Talk( 12, "������: �� ������������� ������ �������� ��� ��� ���� ���� �����?" )
	Text( 12, "��, � ����", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 12,"���, � ���������",JumpPage , 5 )

--������
	InitFuncList()
	AddFuncList( CreditExchange,2 )
	Talk( 13, "������: �� ������������� ������ �������� ��� ���� ���� ����� �� ������?" )
	Text( 13, "��, � ���� ��������", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 13,"���, � ���������",JumpPage , 6 )

--�����
	InitFuncList()
	AddFuncList( CreditExchange,5 )
	Talk( 14, "������: �� ������������� ������ �������� ��� ���� ���� ����� �� ����?" )
	Text( 14, "��, � ���� ��������", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 14,"���, � ���������",JumpPage , 6 )

--�����
	InitFuncList()
	AddFuncList( CreditExchange, 8 )
	Talk( 15, "������: �� ������������� ������ �������� ��� ��� ���� ���� �����?" )
	Text( 15, "��, � ����", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 15,"���, � ���������",JumpPage , 6 )

	Talk( 16, "������: � ����, ��� ���� ������� ���� ������. �� ������� �������� ����. � ��� ���� ��� ���� ����. �� ������� ����." )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Text( 16, "� ��������� �� ����� �������, � �� ���", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 16,"����������, �������� ��� ����������. ��������� ��� ��������� �������.",JumpPage , 2 )

	
	Talk( 17, "������: ������ � ���� ���� ������������ �����. ��� �������� �� ������, ���� ������������ �� ������� �������. �������, �� ������� �� ����������. ��� ����������, �������� ����� �����, ����� ��� ��������� �������������� ������. ����� ��� �������� �� ���. ���� ���� ����� ����� ��� �����, ��������� �� ���." )
	Text( 17, "�������� ���� ������� (������� )", JumpPage, 18)
	Text( 17, "�������� ���� ������� (�������)", JumpPage, 19)
	Text( 17, "�������� ���� �������� (������� )", JumpPage, 20)
	Text( 17, "�������� ���� ��������� (���������� �����)", JumpPage, 21)
	Text( 17, "�������� ���� ������ (������������ )", JumpPage, 22)
	Text( 17, "�������� ���� ����� (��������)", JumpPage, 23)  
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2530, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 18, "������: ������ ����� �� ���������� 60-�� ������ � ��������� ��� 5 ��� ���� � ����� ���� ���� ������������ ������" )
	Text( 18, "�������� �������� ���� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2533, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 19, "������: ������ ����� �� ���������� 60-�� ������ � ��������� ��� 5 ��� ���� � ����� ���� ���� ������������ ������" )
	Text( 19, "�������� �������� ���� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2536, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 20, "������: ������ ����� �� ���������� 60-�� ������ � ��������� ��� 5 ��� ���� � ����� ���� ���� ������������ ������" )
	Text( 20, "�������� �������� ���� ��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2539, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 21, "������: ������ ����� �� ���������� 60-�� ������ � ��������� ��� 5 ��� ���� � ����� ���� ���� ������������ ������" )
	Text( 21, "�������� �������� ���� ���������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2542, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 22, "������: ������ ����� �� ���������� 60-�� ������ � ��������� ��� 5 ��� ���� � ����� ���� ���� ������������ ������" )
	Text( 22, "�������� �������� ���� ������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2545, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 23, "������: ������ ����� �� ���������� 60-�� ������ � ��������� ��� 5 ��� ���� � ����� ���� ���� ������������ ������" )
	Text( 23, "�������� �������� ���� �����", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 24, "������: ������ ����� �� ���������� 60-�� ������ � ��������� ��� 5 ��� ���� � ����� ���� ���� ������������ ������")

	AddNpcMission	(6000)	--1
	AddNpcMission	(6366)	--2
	AddNpcMission	(6367)	--3
	AddNpcMission	(6380)	--4
	AddNpcMission	(6381)	--5
--	AddNpcMission	(6277)	--6
--	AddNpcMission	(6278)	--7
end

function dydz_talk()

	Talk( 1, "��������� ����� ��������: ���� ��� ������ ���� �����, ������� ������ ����� ������! � ����� ������� ����� ������������, ��� ��!" )

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 40,74, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "��������� ����� ��������: ��� �� �������? � ���� ��� �����, ������� ����� ������������? ������ ��������, ���� �� ������ ���� �����!" )
	Talk( 4, "��������� ����� ��������: �� �����, ��� ���� ����� ����� ��������������� ����� ���������. ���������� ���� ����� � �������� ��������� 1000 �������!" )
	Talk( 5, "��������� ����� ��������: �� �����, ��� �� ������� ��������� ���� ������� ����� ���������. ���������� ���� ������� � �������� ��������� 200 �������!" )
	Talk( 6, "��������� ����� ��������: ������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 �������." )

end


function dysr_talk ()

	Talk( 1, "����� ��������: � ����� �� ������������ ������ ��������� �� ����� ������. � ����� ������� ������ ������� ������ � ����� ���������� �� ������. ����!" )
	Text( 1, "����", BuyPage)
	Text( 1, "������", OpenRepair)

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Other(	637	)
	Other(	819	)
	Other(	869	)
	Other(	874	)

end 

function zsts_talk()

	Talk( 1, "����� ������������: ������ ������ � ������� ������ ����� � ������ �������� ����������� ������������!")
	Text( 1, "������ ������ � ������������", JumpPage, 2)
	Text( 1, "� ���� ������������", JumpPage, 6)

	Talk( 2, "����� ������������: ��� �� ����� �� ������?")
	Text( 2, "������ ����� ������������", JumpPage, 3)
	Text( 2, "��������� � ���� ������� ����� ������������", JumpPage, 4)
	Text( 2, "������� ������������", JumpPage, 5)

	Talk( 3, "����� ������������: ����� ������������ ����� ����� �������� �����: ���� ����� ����� ��������, ����������� ����� ��� ��������. ������ ����� ����� ���������. ������ ����� ����� �������������, ���������, ����������� ����� ��� ��������. ��� ����� ����� �������������, ��������� ��� ����������� �����")
	Text( 3, "�������. � �������", CloseTalk)

	Talk( 4, "����� ������������: ����� ������������ ��� �������������� ����� ������ ������, � ��� �������������� ����, ������������� ��������� ����������� ������ ��� ���������� �����, ���������� ��� �����������������. ����� ����, ������ ����� ������ ��� ������, � ���� ������� ����������������.")
	Text( 4, "�������. � �������", CloseTalk)

	Talk( 5, "����� ������������: ��� ������������ ����������� ��������� ������� ������������ �������, ������� ���� ������. ������ ����, ����� �������� ������ ������������, ��� ���� � ���� �������� ����� ������������.")
	Text( 5, "�������. � �������", CloseTalk)

	Talk( 6, "����� ������������: ��� �� ������ ����� ����� ������������?" )
	Text( 6, "��������, ����� ����� �������������� � ���",  GetChaName1_born, 1)
	Text( 6, "���������, ����� �������� ��������",  GetChaName2_born, 1)
	Text( 6, "����������� �����, ����� ��������� ����",  GetChaName3_born, 1)
	Text( 6, "��������, ����� �������� ���� ������",  GetChaName4_born, 1)
	Text( 6, "�������������, ����� ������� ������� �����", GetChaName5_born, 1)
	Text( 6, "���������, ����� ������ ��� ��� ������", GetChaName6_born, 1)

	AddNpcMission	(6071)	--1

end

function k_talk002()

	Talk (1, "����� ������: ����� ����, ������ ���� �������� ������ ����� ���� ����, �������� ����� ��������� ��� ����� �����! �� ������� �������� ������ ���� ������� �� ������, ���� �� ������� �����, ���������� �����������, ����������? ����� ����� ��� ������� ���� �����.") 
--	Text( 1, "�������� ������ ������", JumpPage, 2)

--	Talk (2, "����� ������: � ����� ������, � ���� ����� ��� ����� ���, � �� ����� ��� ���, ����� ��� �������� �� ����� �����!")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 1097, 1)
--	TriggerCondition(1, HasLeaveBagGrid, 1)
--	TriggerCondition(1, KitbagLock, 0 )
--	TriggerAction(1, TakeItem, 1097, 1)
--	TriggerAction(1, GiveItem, 1104, 1, 4)
--	TriggerFailure(1, JumpPage, 3)
--	Text(2,"��� �����", MultiTrigger, GetMultiTrigger(), 1)

--	Talk (3, "����� ������: �� ������� ���� ����? � �������, � �� �� ������ ��� ����� ������, ����������!") 

--	Text( 1, "�������� �������", JumpPage, 4)

--	Talk (4, "����� ������: � ����� ������, � ���� ����� ��� ����� ���, � �� ����� ��� ���, ����� ��� �����-����!") 
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2989, 1)
--	TriggerCondition(1, HasLeaveBagGrid, 1)
--	TriggerCondition(1, KitbagLock, 0 )
--	TriggerAction(1, TakeItem, 2989, 1)
--	TriggerAction(1, GiveItem, 0992, 10, 4)
--	TriggerFailure(1, JumpPage, 5)
--	Text(4,"��� �����", MultiTrigger, GetMultiTrigger(), 1)

--	Talk (5, "����� ������: �� ������� ���� ����? � �������, � �� �� ������ ��� ����� ������, ����������!") 

	AddNpcMission	(6362)	--1
	AddNpcMission	(6363)	--2
end

--------------------------
--		����			--
--------------------------

function d_talk1()

	Talk (1, "���: � ������� ������. ������ �����������.") 
	Text (1, "����", BuyPage) 
	Text (1, "������", OpenRepair)
	Text( 1, "�����", OpenForge)
	Text( 1, "������", OpenMilling)
	Text( 1, "������������ ������", OpenFusion)
	Text( 1, "���������� ���������", OpenUpgrade) 
	Text (1, "������, � ������ ���������", CloseTalk) 


	InitTrade()
	Weapon(	4197	)
	Weapon(	4199	)
	Weapon(	4201	)
	Weapon(	4207	)
	Weapon(	4211	)
	Weapon(	4213	)
	Weapon(	4214	)
	Weapon(	4215	)
	Weapon(	4218	)

--	AddNpcMission	(6390)	--1


end

function d_talk2()

	Talk (1, "����: ������. ��� ���� ������?") 
	Text (1, "���� ", BuyPage) 
	Text (1, "������, � ������ ������������", CloseTalk) 

	InitTrade()
	Other(	1611	)
	Other(	1682	)
	Other(	1842	)
	Other(	1612	)
	Other(	1710	)
	Other(	1693	)
	Other(	4716	)
	Other(	1716	)
	Other(	1711	)
	Other(	3384	)
	Other(	3932	)
	Other(	1619	)
	Other(	2396	)
	Other(	1729	)
	Other(	4459	)
	Other(	1697	)
	Other(	1730	)
	Other(	1712	)
	Other(	1734	)
	Other(	1621	)
	Other(	1703	)

--	AddNpcMission	(6391)	--1
--	AddNpcMission	(6392)	--2
--	AddNpcMission	(6393)	--3

end 

function d_talk3()

	Talk (1, "������: ������ ������ ���-����� �������? ����� �� �� ������. ����� �� ������ ��, ��� ���� �����.") 
	Text (1, "����", BuyPage) 
	Text (1, "������, � ������ ������������", CloseTalk) 

	InitTrade()
	Other(	6203	)
	Other(	6204	)
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	--Leo
	Other(	1576	)
	Other(	4049	)
	Other(	4050	)
	Other(	1578	)
	Other(	4060	)
	Other(	4055	)
	Other(	4061	)
	Other(	2225	)
	Other(	4057	)
	Other(	1768	)


--	AddNpcMission	(6394)	--1
--	AddNpcMission	(6395)	--2
--	AddNpcMission	(6400)	--3

end

function d_talk4()

	Talk (1, "���: � �������� ����� ������. ��� ���� ������?") 
	Text (1, "����", BuyPage) 
	Text (1, "������, � ������ ������������", CloseTalk) 

	InitTrade()
	Defence(	4147	)
	Defence(	4149	)
	Defence(	4151	)
	Defence(	4153	)
	Defence(	4154	)
	Defence(	4157	)
	Defence(	4158	)
	Defence(	4161	)
	Defence(	4162	)
	Defence(	4165	)
	Defence(	4167	)
	Defence(	4169	)
	Defence(	4170	)
	Defence(	4173	)
	Defence(	4174	)
	Defence(	4177	)
	Defence(	4178	)
	Defence(	4181	)
	Defence(	4183	)
	Defence(	4185	)
	Defence(	4186	)
	Defence(	4189	)
	Defence(	4190	)
	Defence(	4193	)
	Defence(	4194	)


--	AddNpcMission	(6396)	--1
--	AddNpcMission	(6397)	--2
--	AddNpcMission	(6401)	--3

end

function d_talk5()

	Talk (1, "��: ������ ������� ��� ���������? � ��� ���� ���� ������� ��������� �������� ��������.") 
	Text (1, "��, � ����� ��������� ���� �������", JumpPage, 2) 
	Text (1, "������, � ������ ������������", CloseTalk) 

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1908 )
	TriggerCondition( 1, HasItem, 5828, 1 )
	TriggerAction( 1, TakeItem, 5828, 1 )
	TriggerAction( 1, GiveItem, 6294, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk (2, "��: ����� �������� ������, ��� ����� �������� 20 �������� �������� ��������.")
	Text (2, "��� ���?", MultiTrigger, GetMultiTrigger (), 1)

	Talk (3, "��: �� ��, ��� �����, ��� ����� ���������.")

	Talk (4, "��: � ��������� �� �������� �� ��� �������� ��� � ��� ��� �� �������. � �� ���� ��� ���� ������!") 

--	AddNpcMission	(6721)	--1

end

function d_talk6 ()

	Talk( 1, "����: ������! ����� ����������� ����� 2000 �������! ���� ������ �������?" )

	Text( 1, "����������� � ������", JumpPage, 2 )
	Text( 1, "����������� � ������", JumpPage, 3 )
	Text( 1, "����������� � ������", JumpPage, 4 )
	Text( 1, "�������� ����� �����������", JumpPage, 5 )
	Text( 1, "������, � ������ ������������",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, 2187,2776, "garner")
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 2, "����: ������ ����������� � ������? ��� �������!" )
	Text( 2, "�����������",MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "��� ������ ��� ��������" , JumpPage, 8 )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, 918,3562, "magicsea")
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 3, "����: ������ ����������� � ������? ��� �������!" )
	Text( 3, "�����������",MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "��� ������ ��� ��������" , JumpPage, 8 )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, 1323,544, "darkblue")
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 4, "����: ������ ����������� � ������? ��� �������!" )
	Text( 4, "�����������",MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "��� ������ ��� ��������" , JumpPage, 8 )

	Talk( 5, "����: ���������� �� ������ ��������, �� ���������?" )
	Text( 5, "��, ���������� ������", SetSpawnPos, "������ �������" )
	Text( 5, "���, �������",CloseTalk )

	Talk( 6, "����: ������, �� � ���� ��������� ������. " )

	Talk( 8, "����: ���� ���� ����� ����������� ��� ������, �� ������ ��� ���� �����." )


--	AddNpcMission	(6398)	--1

end

function d_talk7()

	Talk (1, "����: ������, � ��������� ����� - ����, �� ������ ����������� � �������� �� ����� �����, �������� ���, ��������� ��� ����������� ���� �������.") 

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 337,965, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �����", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "���������", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "����: ��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������.")
	Talk( 4, "����: ��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������.")
	Talk( 5, "����: ��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������.")
	Talk( 6, "����: ��������, �� �� ������ ������������ ����� ���� � ��� �����, ���� �� ��������� ��� ��������!")

--	AddNpcMission	(6402)	--1

--	AddNpcMission	(6701)	--2

end

function d_talk8()

	Talk (1, "��: � ���� ��������� �� ���� ���� ��� ����... ���, ��� ��� ����� ���������� ��� �������. � ���� �������� ��� ����� ������� �����������") 
	Text (1, "� ���� ����� ������ � ��������� �������", JumpPage, 3) 
	Text (1, "� ���� ����� ������ � ��������� �������", JumpPage, 4) 
	Text (1, "� ���� ����� ������ � ��������� ��������", JumpPage, 5) 
	Text (1, "� ���� ����� ������ � ��������� ���������� �����", JumpPage, 6) 
	Text (1, "� ���� ����� ������ � ��������� ������������", JumpPage, 7) 
	Text (1, "� ���� ����� ������ � ��������� ��������", JumpPage, 8) 

	Talk (2, "��: ���� � ���� ��������� ������������ ����� � ���������, ��� ���� ����� �� �������� ����������� ���������, �� �� ������� ����� ������.") 
--����
	Talk (3, "�� ������ ����� ������ � ��������� ��������� �������� ��� �������") 
	Text (3, "����� ������ ���������� ��������� ��������", JumpPage, 9) 
	Text (3, "����� ������ ������ ��������� ��������", JumpPage, 10) 
	Text (3, "����� ������ �������������� ��������� ��������", JumpPage, 11) 
	Text (3, "����� ������ ��������������� ��������� ��������", JumpPage, 12) 
--����
	Talk (4, "�� ������ ����� ������ � ��������� ����� ��� �������") 
	Text (4, "����� ������ ���������� �����", JumpPage, 13) 
	Text (4, "����� ������ ������ �����", JumpPage, 14) 
	Text (4, "����� ������ �������������� �����", JumpPage, 15) 
	Text (4, "����� ������ ���������� �����", JumpPage, 16) 
--����
	Talk (5, "�� ������ ����� ������ � ��������� ��������� �������� ��� ��������") 
	Text (5, "����� ������ ���������� ������", JumpPage, 17) 
	Text (5, "����� ������ ������ ������", JumpPage, 18) 
	Text (5, "����� ������ �������������� ������", JumpPage, 19) 
	Text (5, "����� ������ ���������� ������", JumpPage, 20) 
--���
	Talk (6, "�� ������ ����� ������ � ��������� ��������� �������� ��� ���������� �����") 
	Text (6, "����� ������ ���������� ����������", JumpPage, 21) 
	Text (6, "����� ������ ������ ����������", JumpPage, 22) 
	Text (6, "����� ������ �������������� ����������", JumpPage, 23) 
	Text (6, "����� ������ ���������� ����������", JumpPage, 24) 
--��
	Talk (7, "�� ������ ����� ������ � ��������� ��������� �������� ��� ������������") 
	Text (7, "����� ������ ���������� ����������", JumpPage, 25) 
	Text (7, "����� ������ ������ ����������", JumpPage, 26) 
	Text (7, "����� ������ �������������� ����������", JumpPage, 27) 
	Text (7, "����� ������ ���������� ����������", JumpPage, 28) 
--��
	Talk (8, "�� ������ ����� ������ � ��������� ��������� �������� ��� ��������") 
	Text (8, "����� ������ ���������� �����������", JumpPage, 29) 
	Text (8, "����� ������ ����� �����������", JumpPage, 30) 
	Text (8, "����� ������ �������������� �����������", JumpPage, 31) 
	Text (8, "����� ������ ���������� �����������", JumpPage, 32) 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 12 )
	TriggerCondition( 1, HasItem, 6173, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6173, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6104, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (9, "��: ������� ��� ���������� ��������� ��������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.") 
	Text (9, "�����������", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 12 )
	TriggerCondition( 1, HasItem, 6174, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6174, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6105, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (10, "��: ������� ��� ������ ��������� ��������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.") 
	Text (10, "�����������", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 12 )
	TriggerCondition( 1, HasItem, 6175, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6175, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6106, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (11, "��: ������� ��� �������������� ��������� ��������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")  
	Text (11, "�����������", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 12 )
	TriggerCondition( 1, HasItem, 6176, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6176, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6107, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (12, "��: ������� ��� ��������������� ��������� ��������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text (12, "�����������", MultiTrigger, GetMultiTrigger (), 1) 


	InitTrigger()
	TriggerCondition( 1, PfEqual, 9 )
	TriggerCondition( 1, HasItem, 6177, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6177, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6108, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (13, "��: ������� ��� ���������� �����, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text (13, "�����������", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 9 )
	TriggerCondition( 1, HasItem, 6178, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6178, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6109, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (14, "��: ������� ��� ����� �����, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text (14, "�����������", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 9 )
	TriggerCondition( 1, HasItem, 6179, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6179, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6110, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (15, "��: ������� ��� �������������� �����, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text (15, "�����������", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 9 )
	TriggerCondition( 1, HasItem, 6180, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6180, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6111, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (16, "��: ������� ��� ���������� �����, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text (16, "�����������", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasItem, 6181, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6181, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6112, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (17, "��: ������� ��� ���������� ������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text( 17, "�����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasItem, 6182, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6182, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6113, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (18, "��: ������� ��� ����� ������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
 	Text( 18, "�����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasItem, 6183, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6183, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6114, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (19, "��: ������� ��� �������������� ������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text( 19, "�����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasItem, 6184, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6184, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6115, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (20, "��: ������� ��� ���������� ������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text( 20, "�����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 16 )
	TriggerCondition( 1, HasItem, 6185, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6185, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6116, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (21, "��: ������� ��� ���������� ����������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text( 21, "�����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 16 )
	TriggerCondition( 1, HasItem, 6186, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6186, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6117, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (22, "��: ������� ��� ����� ����������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text( 22, "�����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 16 )
	TriggerCondition( 1, HasItem, 6187, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6187, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6118, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (23, "��: ������� ��� �������������� ����������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text( 23, "�����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 16 )
	TriggerCondition( 1, HasItem, 6188, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6188, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6119, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (24, "��: ������� ��� ���������� ����������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text( 24, "�����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 13 )
	TriggerCondition( 1, HasItem, 6189, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6189, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6120, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (25, "��: ������� ��� ���������� ����������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text( 25, "�����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 13 )
	TriggerCondition( 1, HasItem, 6190, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6190, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6121, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (26, "��: ������� ��� ����� ����������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text( 26, "�����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 13 )
	TriggerCondition( 1, HasItem, 6191, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6191, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6122, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (27, "��: ������� ��� �������������� ����������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text( 27, "�����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 13 )
	TriggerCondition( 1, HasItem, 6192, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6192, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6123, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (28, "��: ������� ��� ���������� ����������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text( 28, "�����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 14 )
	TriggerCondition( 1, HasItem, 6193, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6193, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6124, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (29, "��: ������� ��� ���������� �����������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text( 29, "�����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 14 )
	TriggerCondition( 1, HasItem, 6194, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6194, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6125, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (30, "��: ������� ��� ����� �����������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text( 30, "�����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 14 )
	TriggerCondition( 1, HasItem, 6195, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6195, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6126, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (31, "��: ������� ��� �������������� �����������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text( 31, "�����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 14 )
	TriggerCondition( 1, HasItem, 6196, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6196, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6127, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (32, "��: ������� ��� ���������� �����������, � � ������ ����� ������. ��� ��� �� ����������� 2 ���� ���������, 2 ���� �����������, 1 ���� ����������� � 1 ���� ���������.")   
	Text( 32, "�����������", MultiTrigger, GetMultiTrigger(), 1)

--	AddNpcMission	(6327)	--1
	AddNpcMission	(6332)	--2
--	AddNpcMission	(6419)	--3

--	AddNpcMission	(6709)	--4
--	AddNpcMission	(6720)	--5

end

function d_talk9()

	Talk (1, "�����:������, ��� ����? � �������� ����� �� ������� ����. ������ ��� ���� ����� ����� ���� �������. ����� � ��������?") 

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 702,720, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �����", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "���������", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "�����: ��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������.")
	Talk( 4, "�����: ��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������.")
	Talk( 5, "�����: ��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������.")
	Talk( 6, "�����: ������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. �������������� ����� ������ 1000 �������!")

--	AddNpcMission	(6403)	--1
--	AddNpcMission	(6404)	--2

end

function d_talk10()

	Talk (1, "�������: � ����� ������ � ��������� �������, �� ������ ��� �� �� �����!") 

	AddNpcMission	(6328)	--1
--	AddNpcMission	(6421)	--2

--	AddNpcMission	(6710)	--3
--	AddNpcMission	(6711)	--4
--	AddNpcMission	(6712)	--5

end

function d_talk11()

	Talk (1, "������� ����� ����: ������������, � ������� ����� ����� �������.") 

	AddNpcMission	(6333)	--1
	AddNpcMission	(6334)	--2
--	AddNpcMission	(6409)	--3

end
function d_talk12()

	Talk (1, "������: ������, � ��������� ����� - ������, �� ������ ����������� � �������� �� ����� �����, �������� ���, ��������� ��� ����������� ���� �������.") 

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 1043, 629, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �����", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "���������", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "������: ��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������.")
	Talk( 4, "������: ��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������.")
	Talk( 5, "������: ��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������.")
	Talk( 6, "������: ��������, �� �� ������ ������������ ����� ���� � ��� �����, ���� �� ��������� ��� ��������!")


--	AddNpcMission	(6405)	--1
--	AddNpcMission	(6406)	--2

end

function d_talk13()

	Talk (1, "����: � ���� ���� ������, �� ����� �� ����? � �� ����� ����� � �������, � �� ����� ����� �����, ����� ���������� � ���, �� ��� � ���� ������� ����� ������.") 

	AddNpcMission	(6329)	--1
--	AddNpcMission	(6414)	--2
--	AddNpcMission	(6417)	--3

--	AddNpcMission	(6713)	--4
--	AddNpcMission	(6714)	--5

end

function d_talk14()

	Talk (1, "����� �������� ����: ������������, � ������� ����� ����� �������.") 

	AddNpcMission	(6335)	--1
	AddNpcMission	(6336)	--2
--	AddNpcMission	(6410)	--3

end

function d_talk15()

	Talk (1, "�������: ������, � ��������� ����� - �������, �� ������ ����������� � �������� �� ����� �����, �������� ���, ��������� ��� ����������� ���� �������.") 

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 246,1185, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �����", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "���������", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �����", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "�������: ��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������.")
	Talk( 4, "�������: ��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������.")
	Talk( 5, "�������: ��������. � ��� ��� ����� � ���� �����. ���� ����� �������, �� ��� ���������� ��� ������������.")
	Talk( 6, "�������: ��������, �� �� ������ ������������ ����� ���� � ��� �����, ���� �� ��������� ��� ��������!")

--	AddNpcMission	(6407)	--1
--	AddNpcMission	(6408)	--2

end

function d_talk16()

	Talk (1, "�����: ������ � ����� � ������. � ������� ������ � ������ �����. �� ������ ���� �� �����������?") 
	Text (1, "����������� �� ���������� ������", JumpPage, 2) 
	Text (1, "����������� � ���� ������", JumpPage, 3) 
	Text (1, "����������� � ���� ����", JumpPage, 4) 
	Text (1, "�������� 95 ����", JumpPage, 5) 
	Text (1, "�������, ��� ������ �� �����", CloseTalk) 

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1648 )
	TriggerAction( 1, GoTo, 1970,950, "winterland" )
	TriggerFailure( 1, JumpPage, 6 )
	Talk (2, "�����: �� ����� ����������� �� ���������� ������?") 
	Text (2, "�� �������", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1664 )
	--TriggerCondition( 1, GM_TEST )
	TriggerCondition( 1, goto_mj1_time )
	TriggerAction( 1, GoTo, 366,395, "mjing1")
	TriggerFailure( 1, JumpPage, 7 )
	Talk (3, "�����: �� ������ ����������� � ���� ������?") 
	Text (3, "�� �������", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1664 )
	TriggerCondition( 1, goto_mj2_time )
	TriggerAction( 1, mj3sjc )
	TriggerFailure( 1, JumpPage, 7 )
	Talk (4, "�����: �� ����� ����������� � ���� ����?") 
	Text (4, "�� �������", MultiTrigger, GetMultiTrigger (), 1) 

	Talk (6, "�����: �� �� ������ ������ �� ���������� ������, �� ������� ������� ��� ����.") 
	Talk (7, "�����: �� �� ������ ������ � ���� ������ � ����, ��� ������� ������ ��� ����.") 
	Talk (8, "�����: � ��������� �� �� �������� ������� ��� ��������� 95 �����.") 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasRecord, 1671 )
	TriggerCondition( 1, NoRecord, 1891 )
	TriggerAction( 1, GiveItem, 6251, 1, 4 )
	TriggerAction( 1, SetRecord, 1891 )
	TriggerCondition( 2, PfEqual, 9 )
	TriggerCondition( 2, HasRecord, 1671 )
	TriggerCondition( 2, NoRecord, 1891 )
	TriggerAction( 2, GiveItem, 6250, 1, 4 )
	TriggerAction( 2, SetRecord, 1891 )
	TriggerCondition( 3, PfEqual, 12 )
	TriggerCondition( 3, HasRecord, 1671 )
	TriggerCondition( 3, NoRecord, 1891 )
	TriggerAction( 3, GiveItem, 6252, 1, 4 )
	TriggerAction( 3, SetRecord, 1891 )
	TriggerCondition( 4, PfEqual, 13 )
	TriggerCondition( 4, HasRecord, 1671 )
	TriggerCondition( 4, NoRecord, 1891 )
	TriggerAction( 4, GiveItem, 6255, 1, 4 )
	TriggerAction( 4, SetRecord, 1891 )
	TriggerCondition( 5, PfEqual, 14 )
	TriggerCondition( 5, HasRecord, 1671 )
	TriggerCondition( 5, NoRecord, 1891 )
	TriggerAction( 5, GiveItem, 6254, 1, 4 )
	TriggerAction( 5, SetRecord, 1891 )
	TriggerCondition( 6, PfEqual, 16 )
	TriggerCondition( 6, HasRecord, 1671 )
	TriggerCondition( 6, NoRecord, 1891 )
	TriggerAction( 6, GiveItem, 6253, 1, 4 )
	TriggerAction( 6, SetRecord, 1891 )
	TriggerFailure( 6, JumpPage, 8 )
	Talk (5, "�����: ���� �� �������� ������� ��� ��������� 95 ������, �� � ���� ��� ���.") 
	Text (5, "�����", MultiTrigger, GetMultiTrigger (), 6) 

	AddNpcMission	(6341)	--1
	AddNpcMission	(6342)	--2
	AddNpcMission	(6348)	--3
	AddNpcMission	(6349)	--4
	AddNpcMission	(6368)	--5
	AddNpcMission	(6369)	--6
--	AddNpcMission	(6379)	--7
--	AddNpcMission	(6420)	--8
--	AddNpcMission	(6622)	--9
end

function d_talk17()

	Talk (1, "����: ����� ��� �����, ����� � ��� ������� ��������, � ������������ � �������� �� ������ ���, ��� ������ ������ ��������� ����, ������� � ���� ��������������.") 

	AddNpcMission	(6330)	--1
--	AddNpcMission	(6418)	--2

--	AddNpcMission	(6718)	--3
--	AddNpcMission	(6719)	--4

end

function d_talk18()

	Talk (1, "�����: ������������, � ��� ������� ���� ��������.") 

	AddNpcMission	(6331)	--1
--	AddNpcMission	(6415)	--2
--	AddNpcMission	(6416)	--3

--	AddNpcMission	(6715)	--4
--	AddNpcMission	(6716)	--5
--	AddNpcMission	(6717)	--6

end

function d_talk19()

	Talk (1, "�������� ������� ����: ������������, � ������� ����� ����� �������.") 

	AddNpcMission	(6337)	--1
	AddNpcMission	(6338)	--2
	AddNpcMission	(6339)	--3
	AddNpcMission	(6340)	--4
--	AddNpcMission	(6411)	--5

end

function d_talk20()

	Talk (1, "�������� ������� ��������: ������������, � �������� ������� �������� ������� �������� �� ���� �������.") 

	AddNpcMission	(6343)	--1
	AddNpcMission	(6344)	--2
	AddNpcMission	(6347)	--3
--	AddNpcMission	(6412)	--4
--	AddNpcMission	(6413)	--5
--	AddNpcMission	(6723)	--6
--	AddNpcMission	(6725)	--7

end

function d_talk21()

	Talk (1, "�������� ������������ ����") 

	AddNpcMission	(6345)	--1
--	AddNpcMission	(6422)	--2
--	AddNpcMission	(6722)	--3

end

function d_talk22()

	Talk (1, "�������� ������������ �����") 

	AddNpcMission	(6346)	--1
--	AddNpcMission	(6423)	--2
--	AddNpcMission	(6724)	--3

end

function d_talk23()

	local GotoX = 249
	local GotoY = 868
	local GotoM = "winterland"

	Talk (1, "�����: �� ������ ����������� �� ������ �������?") 
	Text (1, "����������� �� ������ �������", JumpPage, 2) 

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1636 )
	TriggerCondition( 1, HasAllBoatInBerth, 13 )
	TriggerAction( 1, LuanchBerthList, 13, 2583,3235, 180 )
	--TriggerAction( 1,  GoTo, GotoX, GotoY, GotoM )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (2, "�����: �� ������?") 
	Text (2, "��, �������", MultiTrigger, GetMultiTrigger (), 1) 

	Talk (3, "�����: ��������� ��� �� � ��� ��� ������� ����� (������ �������� ����) � ��� �� ��� ������� ��� � ���� ����������.")

	AddNpcMission	(6325)	--1-�������� ���������(����������)
	AddNpcMission	(6326)	--2-���� �� ������ ����

end

function d_talk24()

	Talk (1, "����� �������� ������: ������������, � ����� �������� ������.") 

--	AddNpcMission	(6370)	--1
--	AddNpcMission	(6371)	--2
--	AddNpcMission	(6619)	--3
end

function d_talk25()

	Talk (1, "�������� ������������ �����") 

--	AddNpcMission	(6372)	--1
--	AddNpcMission	(6373)	--2
--	AddNpcMission	(6620)	--3

end

function d_talk26()

	Talk (1, "����� �������� ����: ������������, � ����� �������� ����.") 

--	AddNpcMission	(6374)	--1
--	AddNpcMission	(6375)	--2
--	AddNpcMission	(6376)	--3
--	AddNpcMission	(6728)	--4

end

function d_talk27()

	Talk (1, "�������� ������������ ����") 

--	AddNpcMission	(6377)	--1
--	AddNpcMission	(6378)	--2
--	AddNpcMission	(6726)	--3
--	AddNpcMission	(6621)	--4

end

function d_talk28 ()

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, HasMoney, 1000 )
	TriggerAction( 2, TakeMoney, 1000 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 1, "������: ����� ������? ��������� ������ ����������� �� ��������� ���� ����� ��������." )
	Text( 1, "������� ���������", MultiTrigger,GetMultiTrigger(),2)
 
	Talk( 2,  "������: ����� ��������, �� ������� ��������� ����� 1000 �������. � ��� ������������ �����!" )

--	AddNpcMission	(6424)	--1
--	AddNpcMission	(6427)	--2
--	AddNpcMission	(6428)	--3
--	AddNpcMission	(6432)	--4

end

function d_talk29()

	Talk (1, "��������: ������ � ������� - ��������, ��� ����� �������? ����� �� �� �������!")

	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "���������� ������������ ���������� ��������. ������ ������ ��������� �������." )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "������ �������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 34 )
	TriggerAction( 1, BoatLevelBerthList, 34 )
	TriggerFailure( 1, JumpPage, 3 )
	Text (1, "������� �������� �������", MultiTrigger, GetMultiTrigger (), 1)

	Talk (2, "��������: ����� ������� ������� ���������?") 
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 1, 34 )
	Text( 2, "��������� �����", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 5, 34 )
	Text( 2, "��������� ��������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 6, 34 )
	Text( 2, "��������� ����-���", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 4, 34 )
	Text( 2, "��������� ��������", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 14 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 14, 34 )
	Text( 2, "��������� �����", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 15 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 15, 34 )
	Text( 2, "��������� ������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk (3, "��������: ����� �������� ����� �� ������ ��������� ��� � ��� ������. ����� ���� � ��� ������ ���� ����������� ���������� ����� �������. ���� ����� ���������� ������ ������� ��������.") 

--	AddNpcMission	(6425)	--1
--	AddNpcMission	(6426)	--2
--	AddNpcMission	(6429)	--3
--	AddNpcMission	(6430)	--4
--	AddNpcMission	(6431)	--5

end

function d_talk30()

	Talk (1, "����� ����: ��� ������ ������, � ������ ��� �������� ���, ������� �� ����!") 

--	AddNpcMission	(6727)	--1

end

function d_talk31()

	Talk (1, "����� ����: ������ ������� �����-�� ���� �������, �� ���� �������� ������� �� ����������� �����. ����� ��� ������� ���� ������, ��� �������� �������. ����� ���������� � ���������� � ����� �� �����. ������ ������� ������ ������ ���� �������, ���� ��� ��������� ���� � ���, � �� ���������� � ������� �����.")  
	Text (1, "�� ������ ���������� 95 ��� ������?", JumpPage, 2) 

	Talk (2, "����� ����: ����� ������ �� ������ �����������?") 
	Text (2, "� ���� ����� ������ ���� �����", JumpPage, 4) 
	Text (2, "� ���� ����� ������ ������� ���� �����������", JumpPage, 5) 
	Text (2, "� ���� ����� ������ ��������� ����", JumpPage, 6) 
	Text (2, "� ���� ����� ������ ������ ����������", JumpPage, 7) 
	Text (2, "� ���� ����� ������ ���������� ������", JumpPage, 8) 
	Text (2, "� ���� ����� ������ ������������ ����", JumpPage, 9) 
	Text (2, "� ���� ����� ������ ������ ������", JumpPage, 10) 
	Text (2, "� ���� ����� ������ ������ �����", JumpPage, 11) 

	Talk (3, "����� ����: ���� � ���� �� ���������� ����� � ��������� ��� ��� ��������� ���������, � �� ����� ����� ������.") 

	InitTrigger()
	TriggerCondition( 1, HasItem, 6165, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6165, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6096, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (4, "����� ����: ��� ��� ��� �����, � � ����� � ���� ������. ��� ��� �� ����������� 1 ���� ���������, 1 ���� �����������, 2 ���� ����������� � 2 ���� ���������.") 
	Text (4, "�����������", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem, 6166, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6166, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6097, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (5, "����� ����: ��� ��� ������ ��� �����������, � � ����� � ���� ������. ��� ��� �� ����������� 1 ���� ���������, 1 ���� �����������, 2 ���� ����������� � 2 ���� ���������.") 
	Text (5, "�����������", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem, 6167, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6167, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6098, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (6, "����� ����: ��� ��� �������� ���, � � ����� � ���� ������. ��� ��� �� ����������� 1 ���� ���������, 1 ���� �����������, 2 ���� ����������� � 2 ���� ���������.") 
	Text (6, "�����������", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem, 6168, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6168, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6099, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (7, "����� ����: ��� ��� ������ ����������, � � ����� � ���� ������. ��� ��� �� ����������� 1 ���� ���������, 1 ���� �����������, 2 ���� ����������� � 2 ���� ���������.") 
	Text (7, "�����������", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem, 6169, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6169, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6100, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (8, "����� ����: ��� ��� ��������� ������, � � ����� � ���� ������. ��� ��� �� ����������� 1 ���� ���������, 1 ���� �����������, 2 ���� ����������� � 2 ���� ���������.") 
	Text (8, "�����������", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem, 6170, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6170, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6101, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (9, "����� ����: ��� ��� ����������� ���, � � ����� � ���� ������. ��� ��� �� ����������� 1 ���� ���������, 1 ���� �����������, 2 ���� ����������� � 2 ���� ���������.") 
	Text (9, "�����������", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem, 6171, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6171, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6102, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (10, "����� ����: ��� ��� ����� ������, � � ����� � ���� ������. ��� ��� �� ����������� 1 ���� ���������, 1 ���� �����������, 2 ���� ����������� � 2 ���� ���������." ) 
	Text (10, "�����������", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem, 6172, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6172, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6103, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (11, "����� ����: ��� ��� ����� �����, � � ����� � ���� ������. ��� ��� �� ����������� 1 ���� ���������, 1 ���� �����������, 2 ���� ����������� � 2 ���� ���������.") 
	Text (11, "�����������", MultiTrigger, GetMultiTrigger (), 1)

--	AddNpcMission	(6399)	--1
end


function d_talk32 ()

	Talk( 1,  "�����: ������! � ������ ������� ����, ���� ����� ��� ������ ���������." )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1,  "��������� (��������� 200 �������) ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2,  "�����: ������, �� � ���� �� ������� ������! " )

end