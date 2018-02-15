--------------------------------------------------------------------------
--									--
--									--
--npcscripts01.lua Created by Robin 2005.1.20.	--
--									--
--									--
--------------------------------------------------------------------------
print( "����㧪� npcscripts01.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


------------------------------------------------------------
-- ����֮��:��װ����������
------------------------------------------------------------

function BT_NpcSale001()


	Talk( 1, "������� �����: ����� ����������! ��� ������ ������ � ��������! � ��� � ��� ���� ������ ����! ��������!" )
	Text( 1, "����", BuyPage )

	InitTrade()
	Defence(	0290	)
	Defence(	0466	)
	Defence(	0642	)
	Defence(	0296	)
	Defence(	0472	)
	Defence(	0648	)
	Defence(	0291	)
	Defence(	0467	)
	Defence(	0643	)
	Defence(	0297	)
	Defence(	0473	)
	Defence(	0649	)
	Defence(	0293	)
	Defence(	0469	)
	Defence(	0645	)
	Defence(	0298	)
	Defence(	0474	)
	Defence(	0650	)
	Defence(	0300	)
	Defence(	0476	)
	Defence(	0652	)
	Defence(	0301	)
	Defence(	0477	)
	Defence(	0653	)
	Defence(	0228	)
	Defence(	0229	)
	Defence(	0230	)
	Defence(	0295	)
	Defence(	0471	)
	Defence(	0647	)
	Defence(	0302	)
	Defence(	0478	)
	Defence(	0654	)
	Defence(	0299	)
	Defence(	0475	)
	Defence(	0651	)
	Defence(	0303	)
	Defence(	0479	)
	Defence(	0655	)
	
	-- AddNpcMission	(220 )
	AddNpcMission	(705 )
	
end

-------------------------------------------------------------------
--								--
--		�������� ����� - ����� [������]		--
--		219533,270323				--
-------------------------------------------------------------------

function r_talk86()

	InitTrigger()
	TriggerCondition( 1, CheckRase, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, CheckRase, 2 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, CheckRase, 3 )
	TriggerAction( 3, JumpPage, 2 )
	TriggerCondition( 4, CheckRase, 4 )
	TriggerAction( 4, JumpPage, 1 )
	Start( GetMultiTrigger(), 4 )

	Talk( 1, "�����: ������, � ����� �����. � ������� ���� ������������� ����� �� ��������. ��� �� � ������� ���������� ���� ��������. � ��������� �� �� ������ � ���� ������ ��������.")
	Text( 1, "���������� ������",BuyPage)

	Talk( 2, "�����: ������, � ����� �����. � ������� ���� ������������� ����� �� ��������. ��� �� � ������� ���������� ���� ��������. ���� ��� �� ����������?")

	Text( 2, "����� ��������" , JumpPage, 3 )
	Text( 2, "����� ��������" , JumpPage, 6 )
	Text( 2, "����� ���������" , JumpPage, 7 )
	Text( 2, "���������� ������",BuyPage)

	InitTrade()
	Other(	3297	)
	Other(	3298	)
	Other(	3164	)
	Other(	3160	)
	Other(	3161	)
	Other(	3165	)
	Other(	3238	)
	Other(	3170	)
	Other(	3293	)
	Other(	3174	)
	Other(	3163	)
	Other(	3176	)
	Other(	3180	)
	Other(	3179	)
	Other(	3177	)
	Other(	3168	)
	Other(	3162	)
	Other(	3166	)
	Other(	3167	)
	Other(	3172	)
	Other(	3173	)



	Talk( 3, "�����: ������, ��� ������� ����! ���� ��� ��������� ����? ����, � ���� ���� ������� ���������� �������, �� ����, ��� ��������� ���������� ���� 1 ��� � ��������. �� ����� ����� ��������� ������?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )--������
	TriggerCondition( 1, TurnToJob, 3 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, SetProfession, 1  )
	TriggerAction( 1, GiveItem, 3164, 1, 4 )
	TriggerAction( 1, GiveItem, 1, 1, 4 )
	TriggerAction( 1, JumpPage, 4 )
	TriggerAction( 1, Starteffect , 366)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "��, � ����� ����� ��������", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "��� ����� ��� ��������", CloseTalk)

	Talk( 4, "�����: ����������! �� ������ ��������, ������ �� ������! ������� ������, ���� ���������� � ����� ����� �����!")

	Talk( 5, "�����: � ��������� ������ �������, ��� �� ����� �������� �� ���������. �������� ����� ����� ���� ��� ������. ���������� ����� 10 �������. ��� �� � ���� �� ������ ���� �� ����� ������ ��������.")

	Talk( 6, "�����: ������, ��� ������� ����! ���� ��� ��������� ����? ����, � ���� ���� ������� ���������� �������, �� ����, ��� ��������� ���������� ���� 1 ��� � ��������. �� ����� ����� ��������� ������?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, TurnToJob, 3 )
	TriggerCondition( 1, PfEqual, 1 )
	--TriggerCondition( 1, CheckConvertProfession, MIS_TWO_FENCER )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, SetProfession, 9 )
	TriggerAction( 1, Starteffect , 366)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "��, � ����� ����� ��������", MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "��� ����� ��� ��������", CloseTalk)

	Talk( 7, "�����: ������, ��� ������� ����! ���� ��� ��������� ����? ����, � ���� ���� ������� ���������� ��������, �� ����, ��� ��������� ���������� ���� 1 ��� � ��������. �� ����� ����� ��������� ������?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, CheckRase, 2 )
	TriggerCondition( 1, PfEqual, 1 )
	TriggerCondition( 1, CheckConvertProfession, MIS_LARGE_FENCER )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, SetProfession, 8 )
	TriggerAction( 1, Starteffect , 366)
	TriggerFailure( 1, JumpPage, 9 )
	Text( 7, "��, � ����� ����� ���������", MultiTrigger, GetMultiTrigger(), 1)
	Text( 7, "��� ����� ��� ��������", CloseTalk)

	Talk( 8, "�����: � ��������� ������ �������, ��� �� ����� �������� �� ���������. �������� ����� ����� ������ ����. ���������� ����� 40 �������. ��� �� � ���� ������ ���� 1 ��������� �������.")

	Talk( 9, "�����: � ��������� ������ �������, ��� �� ����� �������� �� ���������. ��������� ����� ����� ������ ������. ���������� ����� 40 �������. ��� �� � ���� ������ ���� 1 ��������� �������.")

	AddNpcMission	(100)	--����� �������
	AddNpcMission	(204)	--�������� ���������(����������)
	AddNpcMission	(279)	--������� ������(����������)
	AddNpcMission	(281)	--�������� ������
	AddNpcMission	(404)	--������������ ������
	AddNpcMission	(749)	--������ �������
	AddNpcMission	(750)	--�������� ��������
	--AddNpcMission	(66)	--������� �������(���������� ������ �� ����������)
	AddNpcMission	(67)	--������� �������
	AddNpcMission	(68)	--������� �������
	AddNpcMission	(72)	--������� �������(���������� ������)
--	AddNpcMission	(1222)	--���������

	AddNpcMission	(5056)	--�������� ���� ��(����������)
	AddNpcMission	(5060)	--������� ������
	AddNpcMission	(5068)	--������� � �������������

	AddNpcMission	(5167)	--������� � �������������
	AddNpcMission	(5089)	--������(����������)
	AddNpcMission	(5093)	--������ ������� 1
	AddNpcMission	(5094)	--������ ������� 2
	AddNpcMission	(5095)	--������ ������� 3
	AddNpcMission	(5096)	--������ ������� 4
	AddNpcMission	(5109)	--������

	AddNpcMission	(6078)	--�������� � ��������(����������)
	AddNpcMission	(6079)	--������� �����
	AddNpcMission	(6080)	--������ ������ �����
	AddNpcMission	(6097)	--�������� �� ��������� ������
	AddNpcMission	(6100)	--�������� �� ��������� ������(����������)
	AddNpcMission	(6101)	--����� ������

	MisListPage(2)

end


-------------------------------------------------------------------
--								--
--		������ �����		--
--		219533,270323				--
-------------------------------------------------------------------
function r_trade01 ()

	Talk( 1, "�����: ����������! � ������ ������ ������! �������!" )
	Text( 1, "����", BuyPage )
	Text( 1, "������", OpenRepair )
	Text( 1, "�������������", OpenUnite)
	Text( 1, "�����", OpenForge)
	--Text( 1, "������ ������ ������ ", JumpPage, 3 )
	Text( 1, "�������� ��� ", JumpPage, 2 )
	Text( 2, "������", OpenMilling)
	Text( 2, "������ ���������", OpenFusion)
	Text( 2, "������������������ ���������", OpenUpgrade)
	Text( 2, "���������� ���������", OpenGetStone )
	Text( 2, "�������� ���������", SendExchangeXData )
	Text( 2, "����� ", JumpPage, 1 )
	Text( 2, "������...",CloseTalk )
	Text( 1, "������...",CloseTalk )
	
	Talk( 3, "������ ������ ������ ������? ������� ������ ������ �������? ���� ������ ������ 100�, ������ �����?" )
		InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 100000)
	TriggerAction( 1, GiveItem, 453,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "���� ������ �� 100� ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 200000)
	TriggerAction( 1, GiveItem, 453,2, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "��� ������ �� 200� ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 300000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 300000)
	TriggerAction( 1, GiveItem, 453,3, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "��� ������ �� 300� ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 400000)
	TriggerAction( 1, GiveItem, 453,4, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "������ ������ �� 400� ",MultiTrigger, GetMultiTrigger(), 1 )
		InitTrigger()
	TriggerCondition( 1, HasMoney, 500000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 500000)
	TriggerAction( 1, GiveItem, 453,5, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "���� ������� �� 500� ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "����� ", JumpPage, 1 )
	Talk( 5, "�� ��� ������� ��������� " )

		InitExchangeX()
	--���� 
ExchangeDataX	(	8142	,	15	,	5001	,	1	)
ExchangeDataX	(	8142	,	15	,	5008	,	1	)
ExchangeDataX	(	8142	,	20	,	5002	,	1	)
ExchangeDataX	(	8142	,	20	,	5007	,	1	)
--�����
ExchangeDataX	(	8142	,	30	,	5003	,	1	)
ExchangeDataX	(	8142	,	40	,	5009	,	1	)
--���������\����
ExchangeDataX	(	8142	,	30	,	5005	,	1	)
ExchangeDataX	(	8142	,	40	,	5011	,	1	)
ExchangeDataX	(	8142	,	30	,	5448	,	1	)
ExchangeDataX	(	8142	,	40	,	5612	,	1	)
--������
ExchangeDataX	(	8142	,	30	,	5006	,	1	)
ExchangeDataX	(	8142	,	40	,	5012	,	1	)
ExchangeDataX	(	8142	,	30	,	5004	,	1	)
ExchangeDataX	(	8142	,	40	,	5010	,	1	)

--���� ����� �� ����
ExchangeDataX	(	8141	,	20	,	8823	,	1	)
ExchangeDataX	(	8141	,	30	,	8821	,	1	)
ExchangeDataX	(	8141	,	40	,	8822	,	1	)
ExchangeDataX	(	8141	,	50	,	8824	,	1	)
ExchangeDataX	(	8141	,	60	,	8825	,	1	)
ExchangeDataX	(	8141	,	70	,	8826	,	1	)
--���� �������
ExchangeDataX	(	8141	,	20	,	8829	,	1	)
ExchangeDataX	(	8141	,	30	,	8827	,	1	)
ExchangeDataX	(	8141	,	40	,	8828	,	1	)
ExchangeDataX	(	8141	,	50	,	8830	,	1	)
ExchangeDataX	(	8141	,	60	,	8831	,	1	)
ExchangeDataX	(	8141	,	70	,	8832	,	1	)
--���� �����
ExchangeDataX	(	8141	,	20	,	8835	,	1	)
ExchangeDataX	(	8141	,	30	,	8833	,	1	)
ExchangeDataX	(	8141	,	40	,	8834	,	1	)
ExchangeDataX	(	8141	,	50	,	8836	,	1	)
ExchangeDataX	(	8141	,	60	,	8837	,	1	)
ExchangeDataX	(	8141	,	70	,	8838	,	1	)
--���� ���
ExchangeDataX	(	8141	,	20	,	8841	,	1	)
ExchangeDataX	(	8141	,	30	,	8839	,	1	)
ExchangeDataX	(	8141	,	40	,	8840	,	1	)
ExchangeDataX	(	8141	,	50	,	8842	,	1	)
ExchangeDataX	(	8141	,	60	,	8843	,	1	)
--ExchangeDataX	(	8141	,	70	,	8844	,	1	)
	
	
	
	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0001	)
	Weapon(	0010	)
	Weapon(	0002	)
	Weapon(	0011	)
	Weapon(	0003	)
	Weapon(	0012	)
	Weapon(	0013	)
	Weapon(	0014	)
	Weapon(	0022	)
	Weapon(	0005	)
	Weapon(	0023	)
	Weapon(	1388	)
	Weapon(	1389	)
	Weapon(	1390	)
	Weapon(	1391	)
	Weapon(	1392	)
	Weapon(	1395	)
	Weapon(	1396	)
	Weapon(	1397	)
	Weapon(	1398	)
	Weapon(	1399	)
	Weapon(	0121	)
	Weapon(	0122	)
	Weapon(	0123	)
	Weapon(	0124	)
	Weapon(	0125	)
	Weapon(	0126	)
	Weapon(	0015	)
	Weapon(	0020	)
	Weapon(	0016	)
	Weapon(	0021	)
	Weapon(	0004	)
	Weapon(	1370	)
	Weapon(	1371	)
	Weapon(	1372	)
	Weapon(	1373	)
	Weapon(	1377	)
	Weapon(	1378	)
	Weapon(	1379	)
	Weapon(	1380	)
	Weapon(	1381	)
	Weapon(	1382	)
	Weapon(	1386	)
	Weapon(	1387	)
	Weapon(	0073	)
	Weapon(	0080	)
	Weapon(	0074	)
	Weapon(	0081	)
	Weapon(	0075	)
	Weapon(	0082	)
	Weapon(	0076	)
	Weapon(	0083	)
	Weapon(	0077	)
	Weapon(	0084	)
	Weapon(	1415	)
	Weapon(	1416	)
	Weapon(	1417	)
	Weapon(	1418	)
	Weapon(	1419	)
	Weapon(	1422	)
	Weapon(	1423	)
	Weapon(	1424	)
	Weapon(	1425	)
	Weapon(	1426	)
	Weapon(	1443	)
	Weapon(	1444	)
	Weapon(	1445	)
	Weapon(	1446	)
	Weapon(	1447	)
	Weapon(	1450	)
	Weapon(	1451	)
	Weapon(	1452	)
	Weapon(	1460	)
	Weapon(	1461	)
	--Weapon(	3400	)
	--Weapon(	3401	)
	--Weapon(	3402	)
	--Weapon(	3403	)
--	Defence(	0453	)
--	Defence(	0454	)
--	Defence(	6946	)
--	Defence(	1020	)
--	Defence(	0455	)
--	Defence(	0456	)
--	Defence(	0890	)
--	Defence(	0891	)
--	Defence(	0886	)
--	Defence(	3075	)
--	Defence(	3074	)
--	Defence(	454	)--����������� ������
--	Defence(	456	)
--	Defence(	891	)--����������� ����������
--	Defence(	890	)--������������ ����������
	--Other(	6819	)
	--Other(	6822	)
	--Other(	6825	)
	--Other(	6828	)
	--Other(	6831	)
	--Other(		)
	--Other(		)
	--Other(		)
	--Other(	6818	)
	--Other(	6821	)
	--Other(	6824	)
	--Other(	6827	)
	--Other(	6830	)
	Other(		)
	Other(		)
	Other(		)

	AddNpcMission	(703 )
	AddNpcMission	(1044)
	AddNpcMission	(1096)
	AddNpcMission	(1155)
	AddNpcMission	(1207)
	AddNpcMission	(58)
	AddNpcMission	(59)
	AddNpcMission	(60)
	AddNpcMission	(114)
	AddNpcMission	(1221)


end
-----------------------------------------------------------------С�����������----------------------------------------------------------------------------------------------




------------------------------------------------------------------
--								--
--								--
------------------------����������˹����---------------------------
--			221925,274925				--
--								--
------------------------------------------------------------------
function r_talk01 ()

	Talk( 1,  "�������: ������������, �� ������ �� ������� � ���� �����. ���� �� � ��� �� ������? " )
	Text( 1,  "��� ��? ", JumpPage, 2)
	Text( 1,  "��� ��� �� �����? ", JumpPage, 3 )

	Text( 1,  "� ����� ��� �����. �������. ", JumpPage, 4 )

	Talk( 2,  "�������: � ������� �� ������� ������� ����� ������. ���� � ��� ����� �� ���������, �� ����� ����. " )
	Text( 2,  "�����. ", JumpPage, 1)

	Talk( 3,  "�������: ��� ����� ������������� ����� �� ���� ��������. � ��� ��� ������� ������� � ��������� � ��� ��������� ������ ���������������. " )
	Text( 3,  "�����. ", JumpPage, 1)

	Talk( 4,  "�������: ������, ���� ��� ����� ����� ������ - �����������. " )
	Text( 4,  "� ���� ������ ��� �������. ", JumpPage, 5)

	Talk( 5,  "�������: �� �����������, ���������. " )
	Text( 5,  "�������������� � ��������� �������. ", JumpPage, 6)

	Talk( 6,  "�������: ����� �������� ����� ������ ����� ����� �������� � �������� �������. ��� ������� � ������� ������ ��� � ������� �������� ��������� ����� ������ �������. ������ � ��� ��������� ��������� � ������ �������� ����� ����� �� ����� ��� ��������� �������. ���� ����� ������� ����� ����� ��� ��������� ����, �� �� ���� �� ��� ���� �������. " )
	Text( 6,  "�������! � ���. ", JumpPage, 7)

	InitTrigger()

	TriggerCondition( 1, NoRecord, 500 )

	TriggerAction( 1, CloseTalk )
	TriggerAction( 1, AddExp, 50, 50 )
	TriggerAction( 1, SetRecord, 500 )
	TriggerAction( 1, AddMoney, 1000 )

	Talk( 7,  "�������: ��� ���� �� ����� �������� ����� ������ � �������� ���� �������� � ���������� ���������������. ���� ����������� ������� - 1000 ������� � ���������� ������� � ��������� �� 5���." )
	Text( 7,  "�������!",  MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8,  "�������: ����������� ����� ��������� � ����� ����������� ��� ��." )
	Text( 8,  "�������. � ���� ������������.",  CloseTalk )


	InitTrigger()

	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, JumpPage, 8 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )

	AddNpcMission	(203)
	AddNpcMission	(204)
	AddNpcMission	(205)
	AddNpcMission	(206)
	AddNpcMission	(221)
	AddNpcMission	(222)
	AddNpcMission	(1002)
	AddNpcMission	(1057)
	AddNpcMission	(1112)
	AddNpcMission	(1166)
	AddNpcMission	(55)
	AddNpcMission	(56)
	AddNpcMission	(57)
	AddNpcMission	(1220)
	AddNpcMission	(319)
	AddNpcMission	(325)
	AddNpcMission	(326)

	AddNpcMission	(5037)

	
	MisListPage(8)

end 
---------------<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<NPC ��˹���ء�������!
----------------------------------------------------------
--							--
--							--
--		������[������]				--
--							--
--		227725,276925				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk02 ()

	
	Talk( 1, "������� �����: ��� ���������, ������� �������?" )
	--Text( 1, "Seed of Love", JumpPage, 2)
	--Text( 1, "Redeem 10 Seeds of Love", JumpPage, 3)
	--Text( 1, "Redeem 100 Seeds of Love", JumpPage, 4)
	--Text( 1, "Redeem 1000 Seeds of Love", JumpPage, 5)
--	Text( 1, "ʹ��"з��"��"����з�ü���"�һ�з��", JumpPage, 6)
--	Text( 1, "ʹ���;�ֵΪ"0"��з��һ�з��", JumpPage, 7)
	Text( 1, "�������� ����������", JumpPage, 7 )
	Text( 1, "����", CloseTalk)
	
	
	Talk( 2, "Granny: Why wait when you can sow your Seed of Love. Bring me 1 vial of Pure Water, 1 Fancy Petal, 1 Perfect Sapphire and 1 Heart of Naiad to germinate 1 Seed of Love." )
	Text( 2, "Redeem Seed of Love", GetChaName_21, 1 )

	Talk( 3, "Granny: 10 Seeds of Love to exchange for 1 Honey Chocolate")
	Text(3,"����������� to exchange",  GetChaName_22, 1)

	Talk( 4, "Granny: 100 Seeds of Love to exchange for 3 Amplifiers of Strive")
	Text(4,"����������� to exchange",  GetChaName_23, 1)

	Talk( 5, "Granny: 1000 Seeds of Love can be used to exchange for 1 Pass to Abandon 4")
	Text(5,"����������� to exchange",  GetChaName_24, 1)
	
	Talk(6,"�����̣�����ʢ��֮з����ͣ���Ҫ�������1����з�硱���̳��й����1��������з�ü��ء���������������������Ĵ󺣵�����ɭ������Ʒ���˲˶�����������װ������ѣ������ǹ�ͬ�ڴ��漣�Ľ��٣�")	
	InitTrigger()                                                   --------1��з��
	TriggerCondition(1, HasItem, 0058, 1)               ---------з��
	TriggerCondition(1, HasItem, 0060, 1)               ---------з��
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 0058, 1)
	TriggerAction(1, TakeItem, 0060, 1)
	TriggerAction(1, GiveItem, 0059, 1, 4)              ----------з��
	TriggerFailure(1, JumpPage, 8)
	Text(6,"����з�����", MultiTrigger, GetMultiTrigger(), 1) 

InitTrigger() --�Ի�����
	TriggerCondition( 1, HasItem, 3904, 15 )
	TriggerCondition( 1, HasItem, 3911, 15 )
	TriggerCondition( 1, HasItem, 4450, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 3904, 15 )
	TriggerAction( 1, TakeItem, 3911, 15 )
	TriggerAction( 1, TakeItem, 4450, 1 )
 	TriggerAction( 1, GiveItem, 3342, 1 ,4)
	TriggerFailure( 1, JumpPage, 9 ) 
	Talk( 7, "�������: ��� ��� 15 ������ ������� ������, 15 ���������� ������ � 1 ������������ ����� - � ��� ���� ����������.")
	Text( 7, "����������� ������",MultiTrigger, GetMultiTrigger(), 1) 

--[[	Talk(7,"�����̣���֮�Ժ�������ǳɹ��Ĺؼ������������������2��������5���з����Ұɣ���з����;�ֵ����Ϊ0�������������ɴ�½��з�����ȱ��ճ����ˣ�������һ��ȴ���δ֪�ľ�ϲ��")
	InitTrigger()                                                   --------1��з��
	TriggerCondition(1, HasItem, 0058, 1)               ---------з�� 
	TriggerCondition(1, crablife)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 0058, 1)
	TriggerAction(1, GiveItem, 0059, 1, 4)              ----------з��
	TriggerFailure(1, JumpPage, 9)
	Text(7, "����з�����", MultiTrigger, GetMultiTrigger(), 1) ]]--

	Talk(8, "��ȷ����������з����̳��ﹺ��ġ�����з�ü��ء�ร�")

	Talk( 9, "�������: �������, � ���� ������������ ������� ����������, ���������� ������ ��� ������������ ������!")
		

	MisListPage(1)

	AddNpcMission	(282 )
	AddNpcMission	(283 )
	AddNpcMission	(1026)
	AddNpcMission	(1084)
	AddNpcMission	(1137)
	AddNpcMission	(1189)
	AddNpcMission(	1224	)
	AddNpcMission(	373	)
	AddNpcMission(	374	)
	AddNpcMission(	388	)
	AddNpcMission( 906 )

-----------------�����̡�����---------��ţ
	AddNpcMission	(5631)
	AddNpcMission	(5632)

-------------------�����̡�����---------����ʮ�¹���
--	AddNpcMission  (5865)
--	AddNpcMission  (5866)
--	AddNpcMission  (5867)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����̽���




----------------------------------------------------------
--							--
--							--
--		������[ҩ�����ˡ�����ķ]			--
--							--
--		224575,277025				--
----------------------------------------------------------
function r_talk03 ()

	Talk( 1, "����: ������! � ���� ���� ��������� ��������� ����. ������ ��������!" )
	Text( 1, "����", BuyPage)
	--Text( 1, "Sell items!", SalePage)
	Text( 1, "������ ������", JumpPage, 5)


	Talk( 4, "����� ������. �� ��� ������ 9-�� ������. ��� ������ �� ���������� 10-�� ������, �� ������� ������� ���� ������ ���������. ������ ��������� - ������ � ������� (2192, 2767) ���� �� ������ ���� ��������. ����� ���������� ����� ������� � ������� (862, 3500) ���� �� ������ ����� ���������. ����� ����� ���������, ������ ������� ��� �� ������ (1365, 570). �������������� ������� ����� ������� �� ������� (2193, 2730). ��� �������� ����������� ����� �������� �� ������ ��������������� �������� ������������." )
	Text( 4, "����", BuyPage)
	--Text( 4, "Sell items!", SalePage )
	Text( 4, "������ ������", JumpPage, 5)

---------------�����ʲ�ҩˮ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3129, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3129, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3133, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 5, "����: ����� ��������� ���� �� �������. ��� ���� �����?" )
	Text( 5, "������ ������ �������", MultiTrigger, GetMultiTrigger(), 1 )
	--------------�������񻨲�
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3130, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3130, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3134, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "�������� �������������� ���", MultiTrigger, GetMultiTrigger(), 1 )
	-------------------�ϳ����������
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3131, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3131, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3135, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 5, "������ ����������� ����", MultiTrigger, GetMultiTrigger(), 1 )
	-------------------������ѿ��
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3132, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3132, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3136, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "����������� ������� ������ �����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6, "����: ������ � ������ �������. ��� ��, ��� �� ������." )
	Talk( 7, "����: ���� ����������� �������� ����� (10), 1 ������ � 50 �������, ����� ������� 1 ��������� �����" )
	Talk( 8, "����: �, ���� ����������� �������� ���������� (10), 1 ������ � 50 �������, ����� ������� 1 ��� '��������'" )
	Talk( 9, "����: ������, ��� ����� ����-����� (10) � 1 ������, ����� ������� 1 ����-����. �� ����� ������ ��������� ��� 50 �������." )
	Talk( 10, "����: ��, �� ������ ����� ����� ������� ����� (10) � 1 ������, ����� ������� 1 ������ ������� �����. �����, �� ������ ��������� ��� 50 �������." )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)
	--Other(	3911	)
    --Other(	3904	)
	--Other(	3343	)
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



--����д����ļ��


-----------����9��������ҿ���תְ
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	---TriggerAction( 1, JumpPage, 4 )
	--TriggerFailure( 1, JumpPage, 1 )

	--Start( GetMultiTrigger(), 1 )

---------------------ע������
	MisListPage(1)

	AddNpcMission	(707 )
	AddNpcMission	(733 )
	AddNpcMission	(738 )
	AddNpcMission	(739 )
	AddNpcMission	(214 )
	AddNpcMission	(215 )
	AddNpcMission	(217 )
	AddNpcMission	(218 )
	AddNpcMission	(219 )
	AddNpcMission	(220 )
	AddNpcMission	(1046)
	AddNpcMission	(1208)
	AddNpcMission	(73)
	AddNpcMission	(74)
	AddNpcMission	(75)
	AddNpcMission	(913)
	AddNpcMission	(914)
	AddNpcMission	(915)
	AddNpcMission	(916)
-------------eleven
	AddNpcMission	(5027)
	AddNpcMission	(5035)
	AddNpcMission	(5036)

	MisListPage(4)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ҩ�����ˡ�����ĸ����



----------------------------------------------------------
--							--
--							--
--		������[��ʿС�㡪����]			--
--							--
--		224575,277025				--
----------------------------------------------------------

---------------��Ѫ�ָ����ж�


----------------��ͨ�Ի���ʼ
function r_talk04 ()

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 1, "�����: ������, � ��������� �����. ���� ��������� ��� ������ �����, ������ ����." )
	Text( 1, "������� ���������", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 5000 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 15000 )
	TriggerAction( 2, TakeMoney, 15000 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 1, "���������", MultiTrigger,GetMultiTrigger(),2)
	--Text( 1, "Build Ship", JumpPage, 10)

	Talk( 2, "�����: ������� ��������� ����� 20000 �������, ������� � ���� ���" )

	Talk( 3, "�����: ��������� ����� 15000 �������, ������� � ���� ���" )

	Talk( 4, "� ���� ��� �������� ������. �� ���� � ���-�� �������" )

	Talk( 5, "��? ������ �� ����... �������... ������ ��� ������� �� ���� ������." )
		
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 5000 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 6, "�����: ������, � ��������� �����. ���� ��������� ��� ������ �����, ������ ����." )
	Text( 6, "������� ���������", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 5000 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 5000 )
	TriggerAction( 2, TakeMoney, 5000 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 6, "���������", MultiTrigger,GetMultiTrigger(),2)
	

	InitTrigger()
	TriggerCondition( 1, HasMission, 53 )
	TriggerCondition( 1, HasFlag, 53, 1 )
	TriggerCondition( 1, NoRecord, 53 )
	TriggerCondition( 1, NoFlag, 53, 4 )
	TriggerCondition( 1, HasItem, 2304, 1 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )
	AddNpcMission	(1048)
	AddNpcMission	(1210)
	AddNpcMission	(920)-----------------------------------------
	AddNpcMission	(921)

	MisListPage(6)
	
	-----��������
	AddNpcMission	(6117 )
	AddNpcMission	(6118 )
	AddNpcMission	(6119 )
	AddNpcMission	(6120 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ʿС�㡪����         ������



----------------------------------------------------------
----							--
--							--
--		������[�ư�Ů - ����]			--
--							--
--		225325,278875				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk05 ()

	Talk( 1, "������, � ����. �� �����? ���� ������� �������� �� ����������� ������� �����? ���� �� - ��������." )
	Text( 1, "������ ����", BuyPage )
	Text(1, "� �����",JumpPage,4)
	--Text(1, "Royal Pirate Reputation Redemption",JumpPage,7)
	--Text( 1, "����ʤ=�ûر�", JumpPage, 9)

	InitTrade()
	Other(	3916	)

	Talk( 2, "� �������, ��� �� ����� ���� ������ ��������������, � ���� ��� �������� ���������. ���� ������, � ���� ������� �� ���� �� 100 000 �������" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 4072, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "Eight Treasures Wine", MultiTrigger,GetMultiTrigger(),1)

	Talk( 3, "������, � ���� ������������ ������. �����������, ����� ������������." )

	Talk(4,"��������� ����� �����. ���������� ������ ������ �������� ����� ������� ���������! ����� ���� ��������� ����� �������� �� �������")
	Text(4,"� ���� � ����. � �����, ����� �������� �������", JumpPage,5)

	Talk(5,"������ ����� �������� ��������� �������. ��� ������ ������ � ����� � ���� ���� ���������")
	InitTrigger()
	TriggerCondition( 1, HasCredit,20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 20 )
	TriggerAction( 1, GiveItem, 2602,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"������� ���������� ���. ��.: 20 ���������" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,200 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 200 )
	TriggerAction( 1, GiveItem, 2603,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"������� ������� ����������: 200 ���������" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 2000 )
	TriggerAction( 1, GiveItem, 2604,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"������� ���������� ���. ��.: 2000 ���������" ,MultiTrigger,GetMultiTrigger(),1)
	Talk(6,"���������� �������, ��� � ���� ���������� ����� � ��������� � ����� ��������� ��� ������. ������ ������� �����. ������ ������ ������? ������ ���� ����-������ � �������...",CloseTalk)

	Talk(7,"������! �� - ������ �������. �� ��������� ������ ������� � ������� ����������. �� ������ ���-�� �������� �� ���� ���������?")
	InitTrigger()
	TriggerCondition( 1, HasCredit,500 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 500 )
	TriggerAction( 1, GiveItem, 855,5,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"5 ����� ��� - 500 ����� ���������" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,50000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 50000 )
	TriggerAction( 1, GiveItem, 3094,3,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"3 ��������� ���������� - 50 000 ����� ���������" ,MultiTrigger,GetMultiTrigger(),1)


	--InitTrigger()
	--TriggerCondition( 1, HasCredit,20000 )
	--TriggerCondition( 1, HasLeaveBagGrid, 1 )
	--TriggerCondition( 1, KitbagLock, 0 )
	--TriggerAction( 1, DelRoleCredit, 20000 )
	--TriggerAction( 1, GiveItem, 0610,1,4 )
	--TriggerAction( 1, JumpPage,8 )
	--TriggerFailure( 1, JumpPage, 6)
	--Text(7,"�������������� ���. ������ - 20 000 ����� ���������" ,MultiTrigger,GetMultiTrigger(),1)

	
	Talk(8,"����� ���������� � ������� ����� ������� �������! �������, ����� ������� ����� ����.")

--	Talk( 9, "���ã���������ֻ�����������˿��š�ֻ�������㹻�������������������ﻻ����������Ҫ�Ķ���������ͬʱ����Ҳ��۳�����һ���־���Ӳ����Ϊ������Ŷ��")
--	
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,5 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 5)
--	TriggerAction( 1, DelRoleCredit, 5 )
--	TriggerAction( 1, TakeItem, 855, 5)
--	TriggerAction( 1, GiveItem, 1024,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"�߼������: ��Ҫ����5������Ӳ��5��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,10 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 10)
--	TriggerAction( 1, DelRoleCredit, 10 )
--	TriggerAction( 1, TakeItem, 855, 10)
--	TriggerAction( 1, GiveItem, 0456,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"ǿ����ʯ: ��Ҫ����10������Ӳ��10��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,20 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 20)
--	TriggerAction( 1, DelRoleCredit, 20 )
--	TriggerAction( 1, TakeItem, 855, 20)
--	TriggerAction( 1, GiveItem, 0455,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"ǿ������: ��Ҫ����20������Ӳ��20��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,30 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 30)
--	TriggerAction( 1, DelRoleCredit, 30 )
--	TriggerAction( 1, TakeItem, 855, 30)
--	TriggerAction( 1, GiveItem, 0453,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"�ۺϾ���: ��Ҫ����30������Ӳ��30��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,50 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 50)
--	TriggerAction( 1, DelRoleCredit, 50 )
--	TriggerAction( 1, TakeItem, 855, 50)
--	TriggerAction( 1, GiveItem, 0332,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"�����Ʊ: ��Ҫ����50������Ӳ��50��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,80 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 80)
--	TriggerAction( 1, DelRoleCredit, 80 )
--	TriggerAction( 1, TakeItem, 855, 80)
--	TriggerAction( 1, GiveItem, 0583,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"�ﵺ��Ʊ: ��Ҫ����80������Ӳ��80��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,120 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 120)
--	TriggerAction( 1, DelRoleCredit, 120 )
--	TriggerAction( 1, TakeItem, 855, 120)
--	TriggerAction( 1, GiveItem, 3094,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"Ŭ��������: ��Ҫ����120������Ӳ��120��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	Text(9,"Next Page", JumpPage , 12)
--
--	Talk(12, "���ã���������ֻ�����������˿��š�ֻ�������㹻�������������������ﻻ����������Ҫ�Ķ���������ͬʱ����Ҳ��۳�����һ���־���Ӳ����Ϊ������Ŷ��")
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,150 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 150)
--	TriggerAction( 1, DelRoleCredit, 150 )
--	TriggerAction( 1, TakeItem, 855, 150)
--	TriggerAction( 1, GiveItem, 1095,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"99��ը��: ��Ҫ����150������Ӳ��150��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,200 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 200)
--	TriggerAction( 1, DelRoleCredit, 200 )
--	TriggerAction( 1, TakeItem, 855, 200)
--	TriggerAction( 1, GiveItem, 2844,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"����4���Ʊ: ��Ҫ����200������Ӳ��200��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,300 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 300)
--	TriggerAction( 1, DelRoleCredit, 300 )
--	TriggerAction( 1, TakeItem, 855, 300)
--	TriggerAction( 1, GiveItem, 3336,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"�����: ��Ҫ����300������Ӳ��300��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,1000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 1000)
--	TriggerAction( 1, DelRoleCredit, 1000 )
--	TriggerAction( 1, TakeItem, 855, 1000)
--	TriggerAction( 1, GiveItem, 3088,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"28�񱳰�: ��Ҫ����1000������Ӳ��1000��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,4700 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 4700)
--	TriggerAction( 1, DelRoleCredit, 4700 )
--	TriggerAction( 1, TakeItem, 855, 4700)
--	TriggerAction( 1, GiveItem, 1028,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"Ħ����ʯ: ��Ҫ����4700������Ӳ��4700��" ,MultiTrigger,GetMultiTrigger(),1)
--
--	Text(12, "Go back a page", JumpPage , 9 )
--
--	Talk( 10, "лл�ݹˣ���ӭ�ٴι���")
--
--	Talk( 11, "�뱣֤���ı������пո�,ͬʱ����δ������״̬,Ҫ���������������������߾���Ӳ�Ҳ�����Ŷ.....",CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasRecord, 255 )
	TriggerCondition( 1, NoItem, 4072, 1 )
	TriggerCondition( 1, NoRecord, 242 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )


	Start( GetMultiTrigger(), 1 )

	MisListPage(2)

	AddNpcMission	(268 )
	AddNpcMission	(269 )
	AddNpcMission	(288 )
	AddNpcMission	(502 )
	AddNpcMission	(334 )
	AddNpcMission	(6081 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ư�Ů - ���Ƚ���



----------------------------------------------------------
--							--
--							--
--		����� �������[������]				--
--							--
--		219350,273050				--
----------------------------------------------------------
-----------------------------------------------------------
function r_talk06 ()

	InitTrigger()
	TriggerCondition( 1, CheckRase, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, CheckRase, 2 )
	TriggerAction( 2, JumpPage, 1 )
	TriggerCondition( 3, CheckRase, 3 )
	TriggerAction( 3, JumpPage, 2 )
	TriggerCondition( 4, CheckRase, 4 )
	TriggerAction( 4, JumpPage, 2 )
	Start( GetMultiTrigger(), 4 )

	Talk( 1, "����� �������: ���� ������������ ������� ��� ������ ������� ���. �� ���� ��������� ���������� ��������. �� ����� � ������� ��������� �����? � � �������� ����� � ���� ���������� ����? � ������ ������� ���������� ���� ��������������. � ��������� �� �� ������ � ���� ������ ��������." )
	Text( 1, "� ���� �������� ��������� ������� ", JumpPage, 9 )
	Talk( 2, "����� �������: ���� ������������ ������� ��� ������ ������� ���. �� ���� ��������� ���������� ��������. �� ����� � ������� ��������� �����? � � �������� ����� � ���� ���������� ����? � ������ ������� ���������� ���� ��������������." )
	Text( 2, "� ���� ����� ��������������", JumpPage, 3 )
	Text( 2, "� ���� ����� ����������� �����", JumpPage, 6 )
	--Text( 2, "� ���� �������� ��������� ������� ", JumpPage, 9 )
	Text( 2, "���������� ������", BuyPage )
	--Text( 2, "����������� �������", OpenItemEnergy )
	--Text( 2, "����������� �� ����������� ��������", JumpPage, 13)
	Talk( 13, "����� �������: ��������� ��������� ��� ���������� ������� ��������. ����� ������������� ��������� ��������!" )
	
	InitTrade()
	Other(	3227	)
	Other(	3231	)
	Other(	3228	)
	Other(	3229	)
	Other(	3230	)
	Other(	3232	)

	Other(	3233	)
	Other(	3234	)
	Other(	3235	)
	Other(	3236	)
	Other(	3237	)

	Talk(3, "����� �������: ������, ��� ������� ����! ���� ��� ��������� ����? ����, � ���� ���� ������� ���������� �������������, �� ����, ��� ��������� ���������� ���� 1 ��� � ��������. �� ����� ����� ��������� ������� ������?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 4 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, SetProfession, 4  )
	TriggerAction( 1, GiveItem, 3227, 1, 4 )
	TriggerAction( 1, GiveItem, 73, 1, 4 )
	--TriggerAction( 1, GiveItem, 867, 1, 4 )
	TriggerAction( 1, JumpPage, 4 )
	TriggerAction( 1, Starteffect , 366)
	TriggerCondition( 2, LvCheck, ">", 9 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasLeaveBagGrid, 4 )
	TriggerCondition( 2, HasMoney, 5000 )
	TriggerAction( 2, TakeMoney, 5000 )
	TriggerAction( 2, SetProfession, 4  )
	TriggerAction( 2, GiveItem, 3227, 1, 4 )
	TriggerAction( 2, GiveItem, 73, 1, 4 )
	--TriggerAction( 2, GiveItem, 867, 1, 4 )
	TriggerAction( 2, JumpPage, 4 )
	TriggerAction( 2, Starteffect , 366)
	TriggerCondition( 3, LvCheck, ">", 9 )
	TriggerCondition( 3, IsCategory, 4 )
	TriggerCondition( 3, PfEqual, 0 )
	TriggerCondition( 3, HasLeaveBagGrid, 4 )
	TriggerAction( 3, SetProfession, 4  )
	TriggerCondition( 3, HasMoney, 5000 )
	TriggerAction( 3, TakeMoney, 5000 )
	TriggerAction( 3, GiveItem, 3227, 1, 4 )
	TriggerAction( 3, GiveItem, 73, 1, 4 )
	--TriggerAction( 3, GiveItem, 867, 1, 4 )
	TriggerAction( 3, Starteffect , 366)
	TriggerAction( 3, JumpPage, 4 )
	TriggerFailure( 3, JumpPage, 5 )
	Text(3, "��, � ����� ����� ��������������", MultiTrigger, GetMultiTrigger(), 3)
	Text(3, "��, � ��� �������.", CloseTalk)

	Talk(4, "����� �������: ����������! �� ������ ��������, ������ �� �������������! ������� ������ � ������ � ������������!")

	Talk(5, "����� �������: � ��������� ������ �������, ��� �� ����� �������������� �� ���������. �������������� ����� ����� ����, ������ ��� ���. ���������� ����� 10 �������. ��� �� � ���� �� ������ ���� �� ����� ������ ��������.")

	Talk(6, "����� �������: ������, ��� ������� ����! ���� ��� ��������� ����? ����, � ���� ���� ������� ���������� ���������� �����, �� ����, ��� ��������� ���������� ���� 1 ��� � ��������. �� ����� ����� ��������� ������� ������?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 4 )
	TriggerCondition( 1, CheckConvertProfession, MIS_VOYAGE )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, SetProfession, 16 )
	TriggerAction( 1, Starteffect , 366)
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 4 )
	TriggerCondition( 2, CheckConvertProfession, MIS_VOYAGE )
	TriggerCondition( 2, HasLeaveBagGrid, 2 )
	TriggerCondition( 2, HasMoney, 50000 )
	TriggerAction( 2, TakeMoney, 50000 )
	TriggerAction( 2, SetProfession, 16 )
	TriggerAction( 2, Starteffect , 366)
	TriggerCondition( 3, LvCheck, ">", 39 )
	TriggerCondition( 3, IsCategory, 4 )
	TriggerCondition( 3, PfEqual, 4 )
	TriggerCondition( 3, CheckConvertProfession, MIS_VOYAGE )
	TriggerCondition( 3, HasLeaveBagGrid, 2 )
	TriggerCondition( 3, HasMoney, 50000 )
	TriggerAction( 3, TakeMoney, 50000 )
	TriggerAction( 3, SetProfession, 16 )
	TriggerAction( 3, Starteffect , 366)
	TriggerFailure( 3, JumpPage, 7 )
	Text(6, "��, � ����� ����� ����������� �����", MultiTrigger, GetMultiTrigger(), 3)
	Text(6, "��, � ��� �������.", CloseTalk)

	Talk(7, "����� �������: � ��������� ������ �������, ��� �� ����� ����������� ����� �� ���������. ����������� ����� ����� ����� ����, ������ ��� ���. ���������� ����� 40 �������. ��� �� � ���� ������ ���� 1 ��������� �������������.")

	InitTrigger()
	TriggerCondition( 1, HasItem, 3933, 50)
	TriggerCondition( 1, HasMoney, 70000)
	TriggerAction( 1, TakeItem, 3933, 50)
	TriggerAction( 1, TakeMoney, 70000)
	TriggerAction( 1, GiveItem, 1812, 1, 4)
	TriggerAction( 1, JumpPage, 10)
	TriggerFailure( 1, JumpPage, 11)
	Talk( 9, "����� �������: �� �� ������! ������� ��� 50 ������� ������ � 70.000 �������, � � ������ ��� ���� ��������� �������." )
	Text( 9, "��� �����",  MultiTrigger, GetMultiTrigger(), 1)
	Text( 9, "������, � �������", CloseTalk)

	Talk(11, "����� �������: ���, �� � ���� ���� 50 ������� ������ � 70.000 ������� ��� ������������ 1 ���������� �������.")

	Talk(10, "����� �������: ���, �����. � �������, �� ������, ��� � ��� ������? ����� �� ����������.")


--	AddNpcMission	(2999)	--��������� ���������� 
--	AddNpcMission	(1045)	--����� �������
---	AddNpcMission	(1099)	--����� ��������
--	AddNpcMission	(1157)	--����� ��������
	AddNpcMission	(758)	--����������� ���������� �����
	AddNpcMission	(103)	--����� �������������
	AddNpcMission	(191)	--��������� �������������(���������� �� ����������)
	AddNpcMission	(192)	--��������� �������������
	AddNpcMission	(193)	--��������� �������������
	AddNpcMission	(197)	--��������� �������������
--	AddNpcMission	(1225)	--���������
	AddNpcMission	(503)	--�������� ������ ����
	AddNpcMission	(330)	--�����(����������)
	AddNpcMission	(331)	--����������� �����
	AddNpcMission	(332)	--�����
	AddNpcMission	(335)	--���������� ������(����������)
	AddNpcMission	(359)	--��������� ����(����������)
	AddNpcMission	(360)	--��������� ����(����������)
	AddNpcMission	(361)	--��������� ����(����������)
	AddNpcMission	(362)	--���������
	AddNpcMission	(363)	--���������
	AddNpcMission	(364)	--���������
	AddNpcMission	(365)	--���������
	AddNpcMission	(366)	--���������
	AddNpcMission	(367)	--���������
	AddNpcMission	(368)	--���������
	AddNpcMission	(369)	--���������
	AddNpcMission	(370)	--���������
	AddNpcMission	(371)	--���������
	AddNpcMission	(522)	--������ �������

	AddNpcMission	(5058)	--�������� ���� ��(����������)
	AddNpcMission	(5062)	--������� �������

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Сɽ������






----------------------------------------------------------
--							--
--							--
--		������[�ӻ����� - ������]			--
--							--
--		225075,277025				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk07 ()

	Talk( 1, "��������: ������ ����! ��� ���� ������?" )
	Text( 1, "����", BuyPage )
	Text( 1, "������...",CloseTalk )
	Text( 1, "�������� ����� ����������",JumpPage, 2 )

	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3296	)
	Other(	3299	)
	--baby--�������Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--leo
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
	--Other(	3288	)
	--Other(  2440    )
	Other(	854	)
	AddNpcMission	(5501)


	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "����� ���������� ����� 1 ���������� ������, 10 000 ������� � 10 ������ ����� ��������� �������� 3 ��." )
	Text( 2, "�������� ����� �� ����� ����������", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "Exchange Razor Tooth for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "�������� ����������� ����� �� ����� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Teak Wood Log to change a Reality Mask ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "�������� ����-��� �� ����� ����������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "��������: ����������� ��� � ����!" )
	Talk( 4, "��������: ������, ���� �� ������� �����. ��� ���� ������ ������������, ��� ��������� ����� ������� ����." )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ӻ����� - ����������


----------------------------------------------------------
--							--
--							--
--		������[�����������]			--
--							--
--		227459,277722				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk08 ()

	Talk( 1, "���������: �� ����� �����������! �� ���� ���������� ����������, �� � ������ ���� �������� �� ���������� '��������� �����'! � ������ ������������� �������. ��-��." )
	Text( 1, "������ �������", JumpPage, 2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "���������: � ���� ���� ��������, �� �� ����� � �������������, �� � ������ '��������� ������' �� ���������� ������ ����! � ����, ������� � ����� �������� �������, ��-��." )
	Text( 2, "������� ��� ����������� ������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3117, 10 )
	TriggerAction( 1, TakeItem, 3117, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3123, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "����������� ��� �� ������� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3118, 10 )
	TriggerAction( 1, TakeItem, 3118, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3124, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2, "����������� ������� ���", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3119, 10 )
	TriggerAction( 1, TakeItem, 3119, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3125, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 2, "����������� ��� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3120, 10 )
	TriggerAction( 1, TakeItem, 3120, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3126, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "����������� ���������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "���������: ��� ��, ��� �� �����, �� ������, �� ������." )
	Talk( 4, "���������: ������, �� ���� ����������� ��� ���-���. ��� ���� �� ���������� ������� ����� 10 ���������� ������� � 1 ������." )
	Talk( 5, "���������: ������, � ���� ��� ������ ���������. ��� ������������� ��� �� ������� ������� ����� 10 ������� ������� � 1 ������." )
	Talk( 6, "���������: ������, �� ���� ����������� ��� ���-���. ��� ������������� �������� ���� ����� 10 ������ � 1 ������." )
	Talk( 7, "���������: ������, �� ���� ����������� ��� ���-���. �������� �������, ���� ����� 10 ������ ������� � 1 ������." )
	Talk( 8, "���������: ������, �� � ���� ��� ������ �����. ����� ������� ���������, ����� ������ 10 ������� ������� � 1 ������." )
	AddNpcMission	(1023)
	AddNpcMission	(1080)
	AddNpcMission	(1135)
	AddNpcMission	(1186)
	AddNpcMission(	1223	)
	--AddNpcMission(	3024	)
	




end 


function r_talk09 ()
	
	
	Talk( 1, "Marriam: Hi, I am the Innkeeper. Want to stay for a few days? Or maybe a new hairstyle?" )		
	Text( 1, "Decoct Hair Colorant", JumpPage, 2)
	
	--Text(1, "Cook a delicious turkeyt", JumpPage, 10)
	--Text(1, "Cook Christmas meal", JumpPage, 13)
	
	
---------------------�����ζ�Ļ���
	InitTrigger()
	TriggerCondition( 1, HasItem, 2886, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2886,10 )
	TriggerAction( 1, GiveItem, 2895, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 10, "Marriam: Want some extra juicy and delicious turkey meat? Bring me 10 slices of turkey meat and 10000 coins.")
	Text(10, "����������� and Cook",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(11, "Marriam: The delicious turkey meat was cooked by me, come and try some to see how it tastes?" )

	Talk( 13, "Marriam: If you give me some Christmas roses, I can cook a Christmas Meal. Since it is a very demanding job, I will only cook this feast 3 times, and the cooking fee will become more expensive each time!")
	Text(13, "Cook Christmas Meal the First Time",  JumpPage, 15)
	Text(13, "Cook Christmas Meal the Second time",  JumpPage, 16)
	Text(13, "Cook Christmas Meal the Third time", JumpPage, 17)
	---------------------���ʥ�����
	InitTrigger()
	TriggerCondition( 1, NoRecord, 815 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 815 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 14 )
	Talk( 15, "It��s not easy to cook Christmas meal, I need 10 pieces of turkey meat , a Christmas Rose,and 10000 coins. A Christmas Rose can be found in the Item Mall and I will only cook the meal for each person 3 times at most.")
	Text( 15, "����������� and Cook",  MultiTrigger, GetMultiTrigger(), 1)

	

	---------------------���ʥ�����
	InitTrigger()
	TriggerCondition( 1, HasRecord, 815 )
	TriggerCondition( 1, NoRecord, 816 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney,1000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction(1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 816 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 18 )
	Talk(16, "Want me to cook again? I need 10 pieces of turkey meat, a Christmas Rose and 1,000,000 coin.  A Christmas Rose can be found in the Item Mall and I will only cook the meal for each person 3 times at most.")
	Text( 16, "����������� and Cook",  MultiTrigger, GetMultiTrigger(), 1)

	---------------------���ʥ�����
	InitTrigger()
	TriggerCondition( 1, HasRecord, 816 )
	TriggerCondition( 1, NoRecord, 817 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 817 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage,19 )
	Talk(17, "Want me to cook again? I need 10 pieces of turkey meat, a Christmas Rose and 10,000,000 coin.  A Christmas Rose can be found in the Item Mall and I will only cook the meal for each person 3 times at most.")
	Text( 17, "����������� and Cook",  MultiTrigger, GetMultiTrigger(), 1)
	Talk( 14, "Marriam: It seems you don��t have enough items and money. You also need to make sure there is one available slot in your backpack. Is this your first time to let me cook Christmas meal? I will only do it 3 times. ")
	Talk( 18, "Marriam: It seems you don��t have enough items and money. You also need to make sure there is one available slot in your backpack. Is this your second time to let me cook Christmas meal? I will only do it 3 times. ")
	Talk( 19, " It seems you don��t have enough items and money. You also need to make sure there is one available slot in your backpack. Is this your third time to let me cook Christmas meal? I will only do it 3 times. ")
	Talk( 12, " It seems you don��t have enough items and money. You also need to make sure there is one available slot in your backpack.")
------------------�����ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1787, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1787, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1797, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Marriam: Keeping the same color of hairdo will make you a boring person. I can decoct colored hair dyes for you if you wish." )
	Text( 2, "Decoct Red Colorant", MultiTrigger, GetMultiTrigger(), 1)
---------------------�����ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1788, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1788, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1798, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Decoct Orange Colorant", MultiTrigger, GetMultiTrigger(), 1)
---------------------�����ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 4606, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 4606, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 4607, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "Decoct Black Colorant", MultiTrigger, GetMultiTrigger(), 1)
---------------------�����ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 4608, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 4608, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 4609, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 2, "Decoct Brown Colorant", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Marriam: Look! Its done! Take this nice colorant with you." )
	Talk( 4, "Marriam: Red Colorant requires 5 Red Dye, 1 Special Gas, 1 Rainbow Glass and a 200G fee." )
	Talk( 5, "Marriam: Orange Colorant requires 5 Orange Dye, 1 Special Gas, 1 Rainbow Glass and 200G to decoct." )

--- � ���� ��� ���	
--InitTrigger()
--TriggerCondition( 1, LvCheck, "<", 2 )
--TriggerAction( 1, AddExp, 116688305, 116688305 )
--TriggerAction( 1, AddExpAndType,2,370500,370500)
--TriggerAction( 1, AddMoney, 1000000 )
--TriggerFailure( 1, JumpPage, 7 )
--Talk( 6, "Marriam: To test PK, I will make you Lv 65 and add 1 million gold for you." )
--Text( 6, "Ok", MultiTrigger, GetMultiTrigger(), 1)

--Talk( 7, "Marriam: I only give this chance to level 1 new players." )

	Talk( 8, "Marriam: Black Colorant requires 5 Black Dye, 1 Special Gas, 1 Rainbow Glass and 200G to decoct." )
	Talk( 9, "Marriam: Brown Colorant requires 5 Brown Dye, 1 Special Gas, 1 Rainbow Glass and also 200G." )

	AddNpcMission	(1029)
	AddNpcMission	(1192)
	------------����-----------��Ϊ����-----------���֮��------------��������----------����̩
	--AddNpcMission	(5505)   		--7��̩
	--AddNpcMission	(5506)		--��������
	--AddNpcMission	(5508)			--���֮��
	--AddNpcMission	(5509)			--���֮��
	AddNpcMission	(5536)		--���֮��

end 

function r_talk11 ()
	
	
	Talk( 1, "Forbei:� ���� ���� ������� ��� ���, ��� 1 ���� 1? ����, ��� 2! ����� ��� �� ������? ���? �� �����!" )

	--Text( 1, "Ties up Dumpling", JumpPage,2)

	--Talk( 2, "0")
	--Text( 2, "Egg Yolk dumpling",JumpPage,3)
	--Text( 2, "Bean Paste Dumpling", JumpPage,4)
	--Text( 2, "Sticky Rice Dumpling", JumpPage,5)

	InitTrigger() --�һ�������
	TriggerCondition( 1, HasItem, 3037, 1 )
	TriggerCondition( 1, HasItem, 3040, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3037, 1 )
	TriggerAction( 1, TakeItem, 3040, 1 )
	TriggerAction( 1, GiveItem,3043, 1,4 )
	TriggerFailure( 1, JumpPage, 6 ) 
	Talk(3, "Forbei: 1 ������ ������ ������ + 1 ������ �������� =1 ������ ������ ������. ������ ������ ������� ����� ������� ������ �� 60 ������� �� 10 �����.")
	Text( 3, "�����������",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�һ���ɳ��
	TriggerCondition( 1, HasItem, 3037, 1 )
	TriggerCondition( 1, HasItem, 3041, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 3037, 1 )
	TriggerAction( 1, TakeItem, 3041, 1 )
	TriggerAction( 1, GiveItem,3044, 1,4 )
	TriggerFailure( 1, JumpPage, 6 ) 
	Talk(4, "Forbei: 1 ������� ������ ������ ������ + 1 ������ �������=1 ������� ������� ������. ������ � ������� ������� ����� ����������� ��������� �������� ������ �� 15 �����.")
	Text( 4, "�����������",MultiTrigger, GetMultiTrigger(), 1) 
	
	InitTrigger() --�һ�Ŵ����
	TriggerCondition( 1, HasItem, 3037, 1 )
	TriggerCondition( 1, HasItem, 3042, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 3037, 1 )
	TriggerAction( 1, TakeItem, 3042, 1 )
	TriggerAction( 1, GiveItem,3045, 1,4 )
	TriggerFailure( 1, JumpPage, 6 ) 
	Talk(5, "Forbei: 1 Sticky Rice Dumpling String + 1 Warm Dumpling=1 Sticky Rice Dumpling. Sticky Rice Dumpling can recover 35% HP")
	Text( 5, "�����������",MultiTrigger, GetMultiTrigger(), 1) 
	
	Talk( 6, "Forbei: You do have have enough space to make a dumpling! Your bag could also be locked, please ����������� you have one space inside your inventory.")
	AddNpcMission	(1009)
	AddNpcMission	(1173)

	-----��������
	AddNpcMission	(6123 )
	AddNpcMission	(6124 )
end 


function r_talk12 ()
	
	
	Talk( 1, "����: ������, � - ����� ����." )

--	InitTrigger()
--	TriggerCondition( 1, HasMission, 1043 )
--	TriggerCondition( 1, HasRecord, 1042 )
--	TriggerCondition( 1, NoRecord, 1058 )
--	TriggerAction( 1, JumpPage, 2 )
--	TriggerFailure( 1, JumpPage, 3 )
--	Text( 1, "First question",MultiTrigger, GetMultiTrigger(), 1 )
--
--	InitTrigger()
--	TriggerAction( 1, SetRecord, 1044 )
--	TriggerAction( 1, SetRecord, 1058 )
--	TriggerAction( 1, JumpPage, 4 )
--	Talk( 2, "Is killing Mystic Shrubs fun?")
--	Text( 2, "Good",MultiTrigger, GetMultiTrigger(), 1 )
--
--	InitTrigger()
--	TriggerAction( 1, SetRecord, 1045 )
--	TriggerAction( 1, SetRecord, 1058 )
--	TriggerAction( 1, JumpPage, 5 )
--	Text( 2, "Not happy",MultiTrigger, GetMultiTrigger(), 1  )


--	Talk( 3, "Who are you? I do not know you!")
--	Talk( 4, "Good? Let��s continue.")
--	Talk( 5, "No satisfied? Let��s change another for you to kill")

	AddNpcMission	(1039)
	AddNpcMission	(1202)
	AddNpcMission	(80)
	AddNpcMission	(81)
	AddNpcMission	(79)
	----------------����˹-����---01
	AddNpcMission	(5510)
	AddNpcMission	(6061 )
	AddNpcMission	(6062 )
	AddNpcMission	(6063 )
	AddNpcMission	(6064 )
	AddNpcMission	(6065 )
	AddNpcMission	(6066 )
	AddNpcMission	(6067 )
	AddNpcMission	(6068 )

end 


function r_talk13 ()
	
	
	Talk( 1, "������: ������, � ������ ������. �� ���� ����� ������ ����� � �������." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 3000 )
	TriggerAction( 1, TakeMoney, 3000 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� (����� 3000 ���.)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "������, ������, � ���� �� ������� �����" )

	AddNpcMission	(1050)
	AddNpcMission	(1212)
	AddNpcMission	(6091 )
	AddNpcMission	(6092 )
	AddNpcMission (113)

end 


function r_talk14 ()
	
	
	Talk( 1, "������: �����������, � ������� ������. � ����� ����� �������." )
	--Text( 1, "�һ���ñ", JumpPage, 3)
	Text( 1, "������...",CloseTalk )

	Talk( 3, "����˹:����������þ���֤�����÷ǳ�ϡ�еľ�ñŶ." )
	Text( 3, "�һ���У��ñ", JumpPage, 4)
	Text( 3, "�һ���У��ñ", JumpPage, 5)
	Text( 3, "�һ���У��ñ", JumpPage, 6)
	Text( 3, "�һ�������ñ", JumpPage, 7)
	Text( 3, "�һ�Ԫ˧��ñ", JumpPage, 8)
	
	Talk( 4, "����˹:��Ҫ�һ���У֮��,��������1����У����֤������." )
	--------------�һ���У֮��
	InitTrigger()
	TriggerCondition( 1, HasItem, 68, 1 )
	TriggerAction( 1, TakeItem, 68, 1 )
	TriggerAction( 1, GiveItem, 90, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 4, "��Ҫ�һ�", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "��",CloseTalk )

	Talk( 5, "����˹:��Ҫ�һ���У֮��,��������1����У����֤������." )
	--------------�һ���У֮��
	InitTrigger()
	TriggerCondition( 1, HasItem, 69, 1 )
	TriggerAction( 1, TakeItem, 69, 1 )
	TriggerAction( 1, GiveItem, 91, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "��Ҫ�һ�", MultiTrigger, GetMultiTrigger(), 1)
	Text( 5, "��",CloseTalk )

	Talk( 6, "����˹:��Ҫ�һ���У֮��,��������1����У����֤������." )
	--------------�һ���У֮��
	InitTrigger()
	TriggerCondition( 1, HasItem, 70, 1 )
	TriggerAction( 1, TakeItem, 70, 1 )
	TriggerAction( 1, GiveItem, 92, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 6, "��Ҫ�һ�", MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "��",CloseTalk )

	Talk( 7, "����˹:��Ҫ�һ�����֮��,��������1����У����֤������." )
	--------------�һ�����֮��
	InitTrigger()
	TriggerCondition( 1, HasItem, 71, 1 )
	TriggerAction( 1, TakeItem, 71, 1 )
	TriggerAction( 1, GiveItem, 93, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 7, "��Ҫ�һ�", MultiTrigger, GetMultiTrigger(), 1)
	Text( 7, "��",CloseTalk )

	Talk( 8, "����˹:��Ҫ�һ�Ԫ˧֮��,��������1����У����֤������." )
	--------------�һ�Ԫ˧֮��
	InitTrigger()
	TriggerCondition( 1, HasItem, 72, 1 )
	TriggerAction( 1, TakeItem, 72, 1 )
	TriggerAction( 1, GiveItem, 94, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 8, "��Ҫ�һ�", MultiTrigger, GetMultiTrigger(), 1)
	Text( 8, "��",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, GiveItem, 4082, 1, 4)
	Talk( 2, "���? ���! �� ������� ���� �������? ��������� ���� ������ �� ��������� ��� ����! � �������, � ���� ���� ���. ����� ������� ����� 20 000 �������, �� ������ ������ ��� � ����.")
	Text( 2, "��, � ����� �� ������ ������� ����������� ����.", MultiTrigger, GetMultiTrigger(), 1)



	Talk( 10, "����˹:��ȷ���������ж�Ӧ�ľ���֤��." )

	InitTrigger()
	TriggerCondition( 1, HasMission, 248 )
	TriggerCondition( 1, NoItem, 4082, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, HasRecord, 249 )
	TriggerCondition( 2, NoRecord, 250 )
	TriggerCondition( 2, NoItem, 4082, 1 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerFailure( 2, JumpPage, 1 )

	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(207 )
	AddNpcMission	(208 )
	AddNpcMission	(209 )
	AddNpcMission	(212 )
	AddNpcMission	(213 )
	AddNpcMission	(216 )
	AddNpcMission	(274 )
	AddNpcMission	(275 )
	AddNpcMission	(276 )
	AddNpcMission	(1016)
	AddNpcMission	(1179)
	AddNpcMission	(69)
	AddNpcMission	(70)
	AddNpcMission	(71)
	AddNpcMission	(194)
	AddNpcMission	(195)
	AddNpcMission	(196)
	AddNpcMission	(318)
	AddNpcMission	(323)
	AddNpcMission	(324)
----------eleven
	AddNpcMission	(5053)

	MisListPage(2)

end 


function r_talk15 ()
	
	
	Talk( 1, "�����: ���� � � �����, ��� ���� ����� ������ ��������... ����� � ��� �� ������ ������, ����� ������������ ������!" )

	AddNpcMission	(1032)
	AddNpcMission	(1195)
----------------�ﵺ����
	--AddNpcMission	(6177)

end 


function r_talk16 ()
	
	
	Talk( 1, "�������: � �������� �� ���� ��������� � �������. � ���� ���������� ����, ��� ����� ���������� ��������� � ��������." )
	
	AddNpcMission	(271 )
	AddNpcMission	(277 )
	AddNpcMission	(278 )
	AddNpcMission	(280 )
	AddNpcMission	(286 )
------------1.7
	AddNpcMission	(5076 )
	AddNpcMission	(5077 )
	AddNpcMission	(5078 )
	AddNpcMission	(5079 )
	AddNpcMission	(5088 )
	AddNpcMission	(5110 )
	AddNpcMission	(5112 )
	AddNpcMission	(5114 )
	AddNpcMission	(5116 )
	AddNpcMission	(5147 )
end 


function r_talk17 ()
	Talk( 1, "�������: ���������� ��������, ������� ����� �����, - ���������!" )
	--AddNpcMission	(3023)	
	AddNpcMission	(266)	--1
	AddNpcMission	(267)	--2
	AddNpcMission	(270)	--3
	AddNpcMission	(272)	--4
	AddNpcMission	(273)	--5
	AddNpcMission	(337)	--6
	AddNpcMission	(338)	--7
	AddNpcMission	(554)	--8
	AddNpcMission	(555)	--9
	AddNpcMission	(901)	--10

	AddNpcMission	(5557)	--11
	AddNpcMission	(5558)	--12

	AddNpcMission	(6168)	--13
	AddNpcMission	(6169)	--14
	AddNpcMission	(6170)	--15
	AddNpcMission	(6173)	--16
	AddNpcMission	(6350)	--17
	AddNpcMission	(6351)	--18

	--AddNpcMission	(6126)
	AddNpcMission	(6094)
	AddNpcMission	(6167)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���ߡ���Ϳɽ��

----------------------------------------------------------
--							--
--							--
--		������[�᳤��������]			--
--							--
--		224075,275275				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk18 ()
	
	
	Talk( 1, "����: ���... ���������, ����� ������ ������ ��� �������? ��� ����� �������� �� ��� ������..." )
	
	AddNpcMission	(76 )
	AddNpcMission	(77 )
	AddNpcMission	(78 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�᳤��������

----------------------------------------------------------
--							--
--							--
--		������[·�ˡ���]				--
--							--
--		221588,282819				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk19 ()
	
	
	Talk( 1, "�������� - ���: �� ���� ������� �������� ���������� ������� � ����� ��������. ������-������. ������� � ����� ��-�� ������ ������������ � �����. ���� �� ������ XIII �� ���������� � ���� ��������, ��������� ���� �� ������������!" )
	
	AddNpcMission	(6086 )
	AddNpcMission	(6089 )
	AddNpcMission	(6090 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ���

----------------------------------------------------------
--							--
--							--
--		������[�ƹ��ҵ���]			--
--							--
--		236002,281965				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk20 ()

	Talk( 1, "�������: ��� �����? ������ ���-�� �������� � ����? ������, �� ����� � ����� �����. �� ������ ������ �������� ����� ����. �� �������� �������� �������. ����� � ����� ������� '/?�������� �����'" )

	--AddNpcMission	(500)	--1
	AddNpcMission	(501)	--2
	AddNpcMission	(358)	--3
	AddNpcMission	(372)	--4
	AddNpcMission	(6082)	--5
	AddNpcMission	(6301)	--6
	AddNpcMission	(6302)	--7
	AddNpcMission	(6304)	--8

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ƹ��ҵ���

----------------------------------------------------------
--							--
--							--
--		������[���ꡤ�Ƶ�]			--
--							--
--		196225,269425				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk21 ()
	
	
	Talk( 1, "�����: ������, � �����. � ���� ��� �����? � ��������� ����� �������� ������ ������������." )
	
	AddNpcMission	(210 )
	AddNpcMission	(211 )
	AddNpcMission	(1034)
	AddNpcMission	(1197)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���ꡤ�Ƶ�

----------------------------------------------------------
--							--
--							--
--		������[����ʦ��������]			--
--							--
--		173269,278261				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk22 ()
	
	
	Talk( 1, "������: ���� ������� ���� ����� ������. �� ��, ������� ���������, ����� �������� ���." )
	
	AddNpcMission	(1054)
	AddNpcMission	(1216)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����ʦ��������


----------------------------------------------------------
--							--
--							--
--		������[D���̡���˽��]			--
--							--
--		2298,2520				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk23 ()
	
	
	Talk( 1, "������������� �����: ����������� ������? � ���� ���� ��, ��� ���������! ��� ���� �����?" )
	
	AddNpcMission	(1000)
	AddNpcMission	(1164)
			--------���˽�
	--AddNpcMission	(5601)
	--AddNpcMission	(5602)
	--AddNpcMission	(5603)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<D���̡���˽��


----------------------------------------------------------
--							--
--							--
--		������[����˾��١���˹����]		--
--							--
--		71350,141619				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk24 ()
	
	
	Talk( 1, "�������: �����������, � ����������������� � ����������. ������ � ��� ��������������?" )
	InitTrigger()
	--TriggerCondition( 1, HasCredit, 150 )
	--TriggerCondition( 1, HasMoney, 300000 )
	--TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerCondition( 1, NoGuild )
	TriggerAction( 1, CreateGuild, 0 )
	--TriggerAction( 1, TakeMoney, 300000 )
	--TriggerAction( 1, TakeCredit, 150 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "������� �������� �������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "�������: ����� ����� ������ ������������� �������� ����� � �������� ���� �����������, ���� ����� ��������� 300 000 ������� � �������� ������ ������ � ����� 150 ���������" )
        
	AddNpcMission	(566)
	AddNpcMission	(477)
	AddNpcMission	(478)
	AddNpcMission	(6087 )
	AddNpcMission	(6088 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����˾��١���˹����


----------------------------------------------------------
--							--
--							--
--		������[�ưɷ���Ա������]			--
--							--
--		99053,133465				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk25 ()
	
	
	Talk( 1, "����: ������! �� ������ ���������� ������� ������ XIII? ��� ��� �����! ��� �� � ������ ���� �� ����� �������� ����� � ����� �������, ��� ���!" )
	AddNpcMission	(1022)
	AddNpcMission	(1079)
	AddNpcMission	(1134)
	AddNpcMission	(1185)
	AddNpcMission	(378)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ưɷ���Ա������

----------------------------------------------------------
--							--
--							--
--		������[ˮ�֡��ϰ�]			--
--							--
--		108330,128563				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk26 ()
	
	
	Talk( 1, "������! � ����� ���. ���� ��������� �� ����. ��� ����� �������� ��������, �������� �����. ��� ���� ���� �������! ��� � ����! ��� ��� ��������..." )
	AddNpcMission	(1038)
	AddNpcMission	(1092)
	AddNpcMission	(1150)
	AddNpcMission	(1201)
----------------����˹---ˮ�֡��ϰ�--01
	AddNpcMission	(5535 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ˮ�֡��ϰ�






----------------------------------------------------------
--							--
--							--
--		������[��ҽ����ɳ]			--
--							--
--		77300,154900				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk28 ()
	
	
	Talk( 1, "����: � ����� ���-�� �� ���? � ������� ���� ����������. ���� � ���� ����� ���� ��������� �����, ���������� �� ��� ���� �� �����." )
	Text( 1, "����", BuyPage )
	Text( 1, "������...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)
	Other(	3904	)
	Other(	3911	)

	AddNpcMission	(1024)
	AddNpcMission	(1081)
	AddNpcMission	(1136)
	AddNpcMission	(1187)
	----------------1.7
	AddNpcMission	(5130 )
	AddNpcMission	(5131 )
	AddNpcMission	(5132 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ҽ����ɳ

----------------------------------------------------------
--							--
--							--
--		������[���г��ɡ��꿨��]			--
--							--
--		74300,153400				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk29 ()
	
	
	Talk( 1, "�������: ������, ����� ���������� � ���� ����������." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 30000 )
	TriggerAction( 1, TakeMoney, 30000 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� (����� 30000 ���.)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "������, ������, � ���� �� ������� �����" )

	AddNpcMission	(1049)
	AddNpcMission	(1103)
	AddNpcMission	(1159)
	AddNpcMission	(1211)
	AddNpcMission	(320)
	AddNpcMission	(375)
	AddNpcMission	(376)
	AddNpcMission	(377)
	AddNpcMission	(432)
	AddNpcMission	(560)
	AddNpcMission	(561)
	AddNpcMission	(542)
	AddNpcMission	(562)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���г��ɡ��꿨��


----------------------------------------------------------
--							--
--							--
--		������ ���������� [���������]			--
--							--
--		76662,144769				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk30 ()
	
	
	Talk( 1, "����������: �� ���? ��������? ��-��!" )
	Text( 1, "��������", JumpPage, 2)
	Text( 1, "������...",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, HasItem, 1784, 10 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1784, 10 )
	TriggerAction( 1, GiveItem, 1785, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "����������: ������ ���... ������ ��... ������ ��... � ����� ���� ������ ������ � ��������� ...��-�-�-�." )
	Text( 2, "�������� ����� ��������� ���������",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3, "����������: ����� ������� ����� ��������� ��������� ��� ����� 10 ��. ��������� ����� � 200 �������. ������� ����� ����������� ��� �����������." )
	Talk( 4, "����������: � ���� ������������ �������� ����� (10) � ����� ��������� ���������. �� ��� ������ �������� ��������� 200 �������." )
	AddNpcMission	(1042)
	AddNpcMission	(1094)
	AddNpcMission	(1153)
	AddNpcMission	(1205)


	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���������ʸ�
----------------------------------------------------------
--							--
--							--
--		������[��Ů������]			--
--							--
--		74026,145143				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk31 ()
	
	
	Talk( 1, "�����: ������, � ����� ������ ����������� ����. ���� ����� ������� ����������� ����, ������� �� ��� ����!" )
	
	--Text( 1, "������ ����-������� (����� ���������)", JumpPage,6 )
	--Text( 1, "������� � ���������� �������", JumpPage,8 )
	--Text( 1, "������� � ���������� �������", JumpPage,11 )
	--Text( 1, "����������� ������� �� ����������", JumpPage,12 )
	Text( 1, "����������� ��������� ��� �����", JumpPage, 2)

	Talk( 6, "�����: ����������, ������ ��������� � ������� ����� ���������, �� ������ �� ��������. ��� ������� ���������, ��� ������ �������. �� ��� ������ �����? ������, ����� �� �������." )

	InitTrigger()
	TriggerCondition( 1, NoRecord,834 )
	TriggerCondition( 1, NoRecord,835 )
	TriggerAction( 1, SetRecord, 833 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "�����",MultiTrigger_1, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,833 )
	TriggerCondition( 1, NoRecord,835 )
	TriggerAction( 1, SetRecord, 834 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "�����",MultiTrigger_2, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,834 )
	TriggerCondition( 1, NoRecord,833 )
	TriggerAction( 1, SetRecord, 835 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "�������",MultiTrigger_3, GetMultiTrigger(), 1)

	Talk( 7, "�����!" )
  



	InitTrigger()
	TriggerCondition( 1, HasRecord,833 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )
	--TriggerAction( 1, SetLog  , 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 1 , 4)
	TriggerAction( 1, AddMoney, 10000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 8, "�����: ������ 7 ������, ����� �������� �� ������ ���� � ����� � ��������� ������. ����� � ������ �������" )
	Text( 8, "����������� �����",MultiTrigger_0, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasRecord,834 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 3 , 4)
	TriggerAction( 1, AddMoney, 50000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 11, "�����: ������ 7 ������, ����� �������� �� ������ ���� � ����� � ��������� ������. ����� � ������ �������" )
	Text( 11, "����������� �����",MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasRecord,835 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 5 , 4)
	TriggerAction( 1, AddMoney, 80000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 12, "�����: ������ 7 ������, ����� �������� �� ������ ���� � ����� � ��������� ������. ����� � ������ �������" )
	Text( 12, "����������� �����",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 10, "������, � ���� ���� ������. �������, ��� ���� ������ �� ������������ � ��� � ��� �������� �� ����� 3 ��������� �����. ������, ������ ���������� ���������: �� �� ���������?")
	Talk( 9, "�����: ������ ������ - ��� ����� ������� �������!")
	Talk( 13, "�����: ������� ������� ��������� ����� ���� �� ����� ������������ � ������ ����")

	InitTrigger()
	TriggerCondition( 1, HasItem, 1789, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1789, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1799, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "�����: ������ ����� �� ���� �����, ��� � ����? �����, � ������ ���� ������� ������." )
	Text( 2, "����������� ������ ���������",MultiTrigger, GetMultiTrigger(), 1)
---------------������ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1790, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1790, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1800, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "��������� ������� ���������",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "�����: � ��� ������� � ���� ����. ����������, ���� ��������. ��� ���������, ������� �� �����." )
	Talk( 4, "�����: ���� ������� ������ ���������. ������ ������� ��� 5 ������ ������, 1 ������ ���, 1 �������� ������ � 200 �������." )
	Talk( 5, "�����: � ���� ����������� ������� ���������. ��� ����� ������� ��� ������� ������ (5), ������ ��� (1), 1 �������� ������ � 200 �������." )
	AddNpcMission	(1036)
	AddNpcMission	(1090)
	AddNpcMission	(1148)
	AddNpcMission	(1199)
	AddNpcMission	(867)
	AddNpcMission	(863)
	------------------------------------------����
	--AddNpcMission	(5536)
	AddNpcMission	(5537)
	AddNpcMission	(5538)
	AddNpcMission	(5539)
	AddNpcMission	(5540)
	AddNpcMission	(5541)

	--AddNpcMission	(5542)
	AddNpcMission	(5543)
	AddNpcMission	(5544)
	AddNpcMission	(5545)
	AddNpcMission	(5546)
	AddNpcMission	(5547)

	--AddNpcMission	(5548)
	AddNpcMission	(5549)
	AddNpcMission	(5550)
	AddNpcMission	(5551)
	AddNpcMission	(5552)


	--AddNpcMission	(5597)
	AddNpcMission	(5600)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��Ů������


----------------------------------------------------------
--							--
--							--
--		������[ɳ�פ��������ʹ�����¼�]		--
--							--
--		71220,150827				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk32 ()
	
	
	Talk( 1, "�����: ����������, � ����� ������� �����. �� ��� �� �� ��� �� ����? � �� ���� ������." )
	AddNpcMission	(1033)
	AddNpcMission	(1088)
	AddNpcMission	(1145)
	AddNpcMission	(1196)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ɳ�פ��������ʹ�����¼�

----------------------------------------------------------
--										--
--										--
--		����������� - ����� (���������)	--
--										--
--		74100,156300					--
----------------------------------------------------------
----------------------------------------------------------
function r_talk33 ()
	
	
	Talk( 1, "�����: ������! ����������-����������! � ���� ������� � ���� ������. �����, ������� ���� ������." )

	AddNpcMission	(1008)
	AddNpcMission	(1063)
	AddNpcMission	(1118)
	AddNpcMission	(1172)
	AddNpcMission	(850)
	AddNpcMission	(861)
	AddNpcMission	(868)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������ˡ��ݲ���ά˹

----------------------------------------------------------
--							--
--							--
--		������[�ù��ϰ塤��������]		--
--							--
--		69761,154269				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk34 ()
	
	
	Talk( 1, "������� ����: ����������, ��� ��������� ���� ������, ������ ��� ��� ������������." )
	AddNpcMission	(1030)
	AddNpcMission	(1086)
	AddNpcMission	(1139)
	AddNpcMission	(1193)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ù��ϰ塤��������

----------------------------------------------------------
--							--
--							--
--		������� ����� [���������]			--
--							--
--		75450,151200				--
----------------------------------------------------------
-----------------------------------------------------------
function r_talk35 ()
	
	
	Talk( 1, "�����: ������! �� ������ �������, �� ��� ���� ���-��� ��������." )
	Text( 1, "������",CloseTalk )

	AddNpcMission	(1010)
	AddNpcMission	(1066)
	AddNpcMission	(1122)
	AddNpcMission	(1174)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��װ����������

----------------------------------------------------------
--							--
--							--
--		������[������פ��������ʹ��������]		--
--							--
--		74171,155325				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk36 ()
	
	
	Talk( 1, "���: ������ �������� ������ ������ �����! ��-��." )
	AddNpcMission	(1003)
	AddNpcMission	(1058)
	AddNpcMission	(1113)
	AddNpcMission	(1167)
	AddNpcMission	(6025 )
	AddNpcMission	(6026 )
	AddNpcMission	(6027 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<������פ��������ʹ��������

----------------------------------------------------------
--							--
--							--
--		������[�����������Կ�]			--
--							--
--		79600,148800				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk37 ()
	
	
	Talk( 1, "������: ����������! � ����� ����������." )
	Text( 1, "������...",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 1 )
	TriggerCondition( 1, HasItem, 1673, 1 )
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerAction( 1, TakeItem, 1673, 1 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, SetProfession, 10 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 2 )
	TriggerCondition( 2, PfEqual, 1 )
	TriggerCondition( 2, HasItem, 1673, 1 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeItem, 1673, 1 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetProfession, 10  )
	TriggerAction( 2, JumpPage, 3 )
	TriggerFailure( 2, JumpPage, 4 )

--	Talk(2, "Pirates and monsters are rampant nowadays. We are lacking of Swordsman to deal with them. Hmm...You look suitable to become a Swordsman. Want to consider being the one to defend the peace?")
--	Text(2, "Ok, become a White Knight", MultiTrigger, GetMultiTrigger(), 2)
--	Text(2, "No, it is good enough for now.", CloseTalk)

--	Talk(3, "Keeping the peace is the job of a White Knight. Please remember this in your heart.")

--	Talk(4, "Want to become a White Knight? Come back to me when you have reached Lv 40. You must train your swordsmanship well. Remember to bring 1 Strange Metal Fragment and 20000G as a proof of your training too.")
	

	
	
	
		

	----------תְ��Ϊ����ʿ
	--TriggerCondition( 1, LvCheck, ">", 39 )
	--TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 1 )
	--TriggerAction( 1, JumpPage, 2 )

	--TriggerCondition( 2, LvCheck, ">", 39 )
	--TriggerCondition( 2, IsCategory, 2 )
	--TriggerCondition( 2, PfEqual, 1 )
	--TriggerAction( 2, JumpPage, 2 )

-------------------ת�ѻ����ж�

	AddNpcMission	(1019)
	AddNpcMission	(1074)
	AddNpcMission	(1130)
	AddNpcMission	(1182)
	AddNpcMission	(852)
	AddNpcMission	(855)
	AddNpcMission	(865)
	AddNpcMission	(473)

	MisListPage(5)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����������Կ�

----------------------------------------------------------
--							--
--							--
--		���������� ���� [���������]			--
--							--
--		72500,155100				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk38 ()
	
	
	Talk( 1, "����: ������! �� ��� ��� ��-�����! � ��� ����� ��������� �����. ����� ����������� ���� 10 ������, � ����������� ���� ����������� ������ �� ���� ������. �, ��������, � �������������� ����!" )
	Text( 1,"�����", SendExchangeData23 )

	
	Text( 1,"�������� ����������",SendExchangeXData)

	
	InitExchangeX()
	ExchangeDataX	(	8141	,	90	,	8577	,	1	)
	ExchangeDataX	(	8142	,	5	,	3422	,	1	)
	ExchangeDataX	(	8142	,	90	,	3423	,	1	)
	ExchangeDataX	(	8143	,	25	,	4288	,	1	)
	ExchangeDataX	(	8143	,	100	,	2842	,	1	)
	
	InitExchange23()
	DoExchange23()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



	AddNpcMission	(1053)
	AddNpcMission	(1107)
	AddNpcMission	(1163)
	AddNpcMission	(1215)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ӻ����ˡ����

----------------------------------------------------------
--							--
--							--
--		������[��Ů������]			--
--							--
--		101653,128642				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk39 ()
	
	
	Talk( 1, "�����: �� ����� �������. ����� �������� ����� �������? � ��� ���, ��� ��� �������� � ������, � ��� ����� ����� ���������." )
	AddNpcMission	(1035)
	AddNpcMission	(1089)
	AddNpcMission	(1147)
	AddNpcMission	(1198)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��Ů������

----------------------------------------------------------
--							--
--							--
--		������[�����ܲ�ָ�ӹ١���.��˹��׼��]	--
--							--
--		80800,152100				--
---------------------2005-3-8-------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk40 ()
	
	
	Talk( 1, "������� ���: ���� ��� ������, ����� ������ ���� � ������������. ���� � � ������� ��� �������� ������ ����, ������, �� � ��� ������� �����������. ��-�� ���� � ���� ������ ��������..." )
	AddNpcMission	(1017)
	AddNpcMission	(1071)
	AddNpcMission	(1127)
	AddNpcMission	(1180)
---------------����
	AddNpcMission	(5575)
	AddNpcMission	(5576)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����ܲ�ָ�ӹ١���.��˹��׼��

----------------------------------------------------------
--							--
--							--
--		������[�����ܲ���ı������������У]		--
--							--
--		65323,150512				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk41 ()
	
	
	Talk( 1, "��������� �����: ������, � ��������� �����. ������� ��� ������� ��� ���������� ���� ��������. ��-��! ������ ���������� ��� ���� ������ ������������...���-��!" )
	
	AddNpcMission	(849)
	AddNpcMission	(856)
	AddNpcMission	(858)
	AddNpcMission	(860)
	AddNpcMission	(866)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����ܲ���ı������������У

----------------------------------------------------------
--							--
--							--
--		������[Ħ�����˺��ᡤ�ƶ�]		--
--							--
--		65146,158595				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk42 ()
	
	
	Talk( 1, "����: ����� �� �� ������ ��� ��������? �� ���� �� ���, ���������� ���!" )
	
	AddNpcMission	(851)
	AddNpcMission	(853)
	AddNpcMission	(854)
	AddNpcMission	(862)
	AddNpcMission	(864)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Ħ�����˺��ᡤ�ƶ�

----------------------------------------------------------
--							--
--							--
--		������[����������]			--
--							--
--		71187,141438				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk43 ()
	
	
	Talk( 1, "������: � ������� ���� �����, �� ���� �� ������ ���������� �����." )

	AddNpcMission	(859)
	AddNpcMission	(857)
	-------------����������-------˫��
	AddNpcMission	(5690)
	AddNpcMission	(5691)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����������

----------------------------------------------------------
--							--
--							--
--		������[����������]			--
--							--
--		71536,141462				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk44 ()
	
	
	Talk( 1, "�����: ����� ����� ���� ����� ����� ��������?" )

	AddNpcMission	(474)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����������

----------------------------------------------------------
--							--
--							--
--		������[·�ˡ���]				--
--							--
--		66976,155428				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk45 ()
	
	
	Talk( 1, "���: � ���������� ����� ������ ���� ������� �������. �� ��� ���� �� ������� ������." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ���


----------------------------------------------------------
--							--
--							--
--		������[·�ˡ��ͱ�]				--
--							--
--		99475,123473				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk46 ()
	
	
	Talk( 1, "�������: �������! �� ������ �����? ��������� ����� ���������. ������ ���� ���� �� �����!" )
	Text( 1, "��������", JumpPage, 2)

--------------����ؽ�
	InitTrigger()
	TriggerCondition( 1, HasItem, 1782, 10 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 1782, 10 )
	TriggerAction( 1, GiveItem, 1783, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "�������: ��� ������ - ��������� ��� ������� ���� � ������� �����." )
	Text( 2, "�������� ���������� ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "�������: � ��� ���� ���������� ������� ����. �� ������ �� ����� �� ���� � ��������..." )
	Talk( 4, "�������: ���������� �������? ������� ��� 10 ���������� ���������� ������� ���� � 2000 ������� �� �����." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ��ͱ�

----------------------------------------------------------
--							--
--							--
--		��������� ���� - ������			--
--							--
--		86299,350092				--
 
-----------------------------------------------------------
function r_talk47 ()

	

	Talk( 1, "������: ����������, ���� ���! �� �������� � ����� ������ ����! � ��������� ���� ������ ������� ������. � ������ ����� ��������. � ��������� � �� ���� �������� ����� ���������." )
	Text( 1, "���������� ������", BuyPage)
	
	Talk( 2, "������: ����������, ���� ���! �� �������� � ����� ������ ����! � ��������� ���� ������ ������� ������. � ������ ����� ��������. ��� � ���� ���� ������?" )
	Text( 1, "����� ���������", JumpPage, 12 )
	Text( 1, "����� �������������", JumpPage, 15 )
	Text( 1, "����� ���������", JumpPage, 17 )
	Text( 2, "���������� ������", BuyPage)

	InitTrade()
	Other(	3206	)
	Other(	3208	)
	Other(	3205	)
	Other(	3242	)
	Other(	3210	)
	Other(	3207	)
	Other(	3211	)
	Other(	3215	)
	Other(	3212	)
	Other(	3209	)
	Other(	3220	)
	Other(	3222	)
	Other(	3219	)
	Other(	3218	)
	Other(	3216	)
	Other(	3223	)
	Other(	3217	)
	Other(	3224	)


--[[	Talk( 2, "������: � �������� ������� ����. ��������� ����������� ���������� ���, ������� ���� �� �� ���-������ �������." )
	--Text( 2, "���������� �������", JumpPage, 3)
	--Text( 2, "���������� ����������", JumpPage, 4)
	--Text( 2, "���������� ������������", JumpPage, 5)
	Text( 2, "���������� ����������", JumpPage, 6)

	Talk( 3, "������: ���������� ������� - ��� ���������� 30-�� ������ �� ����������� ������. ���� ����������� 10 ��� ��� � 10 ��� ���. �� ����� ��������� ����������?" )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3400, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "�������� ���������� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3401, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "�������� ���������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3402, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "�������� ���������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3403, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "�������� ���������� �������������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "������: ���������� ���������� - ��� ���������� 40-�� ������ �� ����������� ������ � ������ ����. ���� ����������� 10 ��� ��� � 10 ��� ���. �� ����� ��������� ����������?" )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3404, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "�������� ���������� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3405, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "�������� ���������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3406, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "�������� ���������� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3407, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "�������� ���������� ������������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3408, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "�������� ���������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3409, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "�������� ���������� ���������� �����", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 5, "������: ����� ������������ - ��� ���������� 50-�� ������ �� ���� �������. ������� ��� 10 ��� ��� � 10 ��� ���. �� ����� ��������� ����������?" )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3410, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "�������� ���������� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3411, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "�������� ���������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3412, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "�������� ���������� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3413, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "�������� ���������� ������������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3414, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "�������� ���������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3415, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "�������� ���������� ���������� �����", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 6, "������: ����� ���������� - ��� ���������� 60-�� ������ �� ���� �������. ������� ��� 10 ��� ��� � 10 ��� ��. �� ����� ��������� ����������?" )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3416, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "�������� ���������� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3417, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "�������� ���������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3418, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "�������� ���������� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3419, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "�������� ���������� ������������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3420, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "�������� ���������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3421, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "�������� ���������� ���������� �����", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 5 )
	TriggerAction( 1, GiveItem, 1000, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 9, "������: ���? � ���� ���� ������� �������? � ���� �� �������� �� �������. ����� ���� ����������?" )
	Text( 9, "5 �������� �� 1 ������ �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 30 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 30 )
	TriggerAction( 1, GiveItem, 1001, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "30 �������� �� 1 ������������� ������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 100 )
	TriggerAction( 1, GiveItem, 1002, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "100 �������� �� 1 ������������ ������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 500 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 500 )
	TriggerAction( 1, GiveItem, 1003, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "500 �������� �� 1 ������ �������", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4656, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 10, "������: � ���� ���� ������ �������? � ���� ���� ���������� �� ���� ����� �������� ������ �� 60 �������. ����� ����������?" )
	Text( 10, "�������� ����� ������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4657, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "�������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4658, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "�������� ����� ����������� ����", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4659, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "�������� ���������� ����� �� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4660, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "�������� �������� ����", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 11, "������: � ���� ��� �����, ������� ����� ��������. ��������, ���� ������ ������������ ��� � ��� �� ������� ��������� �����." )	]]--

	Talk(12, "������: ������, ��� ������� ����! ���� ��� ��������� �����? ����, � ���� ���� ������� ���������� ���������, �� ����, ��� ��������� ���������� ���� 1 ��� � ��������. ��� ���� ���� ������ ���� �������� ���� ���� ���� ���� 9 ������ � ����� ��� ���� 5000 �������. �� ����� ������� ���� �����?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, IsCategory, 3 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, SetProfession, 5  )
	TriggerAction( 1, GiveItem, 3206, 1, 4 )
	TriggerAction( 1, GiveItem, 97, 1, 4 )
	TriggerAction( 1, JumpPage, 13 )
	TriggerAction( 1, Starteffect , 366)
	TriggerCondition( 2, LvCheck, ">", 9 )
	TriggerCondition( 2, IsCategory, 4 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasLeaveBagGrid, 2 )
	TriggerCondition( 2, HasMoney, 5000 )
	TriggerAction( 2, TakeMoney, 5000 )
	TriggerAction( 2, SetProfession, 5  )
	TriggerAction( 2, GiveItem, 3206, 1, 4 )
	TriggerAction( 2, GiveItem, 97, 1, 4 )
	TriggerAction( 2, JumpPage, 13 )
	TriggerAction( 2, Starteffect , 366)
	TriggerFailure( 2, JumpPage, 14 )
	Text(12, "��, � ����� ����� ���������.",MultiTrigger, GetMultiTrigger(), 2)
	Text(12, "��� ����� ��� ��������", CloseTalk)

	Talk(13, "������: ����������! �� ������ ��������, ������ �� ��������! ����� ���� ���������� ����������� ������ ������� ����� �����!")

	Talk(14, "������: � ��������� ������ �������, ��� �� ����� ��������� �� ���������. ��������� ����� ����� ������ ��� ���. ���������� ����� 10 �������. ��� �� � ���� �� ������ ���� �� ����� ������ ��������.")

	Talk(15, "������: ������, ��� ������� ����! ���� ��� ��������� �����? ����, � ���� ���� ������� ���������� ������������, �� ����, ��� ��������� ���������� ���� 1 ��� � ��������. ��� ���� ���� ����� ������������� ���� ����� ����� ��� ���� 50.000 ������� � ���� ���� 40 ������. �� ����� ������� ���� �����?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 3 )
	TriggerCondition( 1, PfEqual, 5 )
	TriggerCondition( 1, CheckConvertProfession, MIS_CLERGY )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, SetProfession, 13 )
	TriggerAction( 1, Starteffect , 366)
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 4 )
	TriggerCondition( 2, PfEqual, 5 )
	TriggerCondition( 2, CheckConvertProfession, MIS_CLERGY )
	TriggerCondition( 2, HasLeaveBagGrid, 2 )
	TriggerCondition( 2, HasMoney, 50000 )
	TriggerAction( 2, TakeMoney, 50000 )
	TriggerAction( 2, SetProfession, 13 )
	TriggerAction( 2, Starteffect , 366)
	TriggerFailure( 2, JumpPage, 16 )
	Text(15, "��, � ����� ����� �������������.",MultiTrigger, GetMultiTrigger(), 2)
	Text(15, "��� ����� ��� ��������", CloseTalk)

	Talk(16, "������: � ��������� ������ �������, ��� �� ����� ������������� �� ���������. ������������� ����� ����� ������ ��� ���. ���������� ����� 40 �������. ��� �� � ���� ������ ���� 1 ��������� ��������.")

	Talk(17, "������: ������, ��� ������� ����! ���� ��� ��������� �����? ����, � ���� ���� ������� ���������� ��������, �� ����, ��� ��������� ���������� ���� 1 ��� � ��������. �� ����� ������� ���� �����?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 3 )
	TriggerCondition( 1, PfEqual, 5 )
	TriggerCondition( 1, CheckConvertProfession, MIS_SEALER )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, SetProfession, 14 )
	TriggerAction( 1, Starteffect , 366)
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 4 )
	TriggerCondition( 2, PfEqual, 5 )
	TriggerCondition( 2, CheckConvertProfession, MIS_SEALER )
	TriggerCondition( 2, HasLeaveBagGrid, 2 )
	TriggerCondition( 2, HasMoney, 50000 )
	TriggerAction( 2, TakeMoney, 50000 )
	TriggerAction( 2, SetProfession, 14 )
	TriggerAction( 2, Starteffect , 366)
	TriggerFailure( 2, JumpPage, 18 )
	Text(17, "��, � ����� ����� ���������.",MultiTrigger, GetMultiTrigger(), 2)
	Text(17, "��� ����� ��� ��������", CloseTalk)

	Talk(18, "������: � ��������� ������ �������, ��� �� ����� ��������� �� ���������. ��������� ����� ����� ������ ��� ���. ���������� ����� 40 �������. ��� �� � ���� ������ ���� 1 ��������� ��������.")

--	AddNpcMission	(719)	--������ � �����������
	AddNpcMission	(102)	--����� ��������
	AddNpcMission	(416)	--������������� ���
	AddNpcMission	(751)	--�������� ������������
	AddNpcMission	(755)	--���������� ����
	--AddNpcMission	(95)	--������� ��������(���������� �� ����������)
	AddNpcMission	(96)	--������� ��������
	AddNpcMission	(97)	--������� ��������
	AddNpcMission	(151)	--������� ��������(����������)
	AddNpcMission	(1227)	--���������
	AddNpcMission	(342)	--�����(����������)
	AddNpcMission	(343)	--�����(����������)
	AddNpcMission	(344)	--�����(����������)
	AddNpcMission	(345)	--�����(����������)
	AddNpcMission	(346)	--���� ������
	AddNpcMission	(347)	--���� ������
	AddNpcMission	(348)	--���� ������
	AddNpcMission	(349)	--���� ������
	AddNpcMission	(350)	--���� ������
	AddNpcMission	(351)	--���� ������
	AddNpcMission	(352)	--���� ������
	AddNpcMission	(353)	--���� ������
	AddNpcMission	(354)	--���� ������
	AddNpcMission	(355)	--���� ������

	AddNpcMission	(5009)	--��� ������
	AddNpcMission	(5015)	--������ ���������
	AddNpcMission	(5017)	--������� ������
	AddNpcMission	(5024)	--�������� �������
	AddNpcMission	(5028)	--�������� �����
	AddNpcMission	(5031)	--����
	AddNpcMission	(5059)	--�������� ���� ��(����������)
	AddNpcMission	(5064)	--������� �������

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����١��ʵ�ά��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[���峤����������.��]		--
--							--
--		90374,364023				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk48 ()

	Talk( 1, "�������: �����������, � ������������ �����. ��� ���� ������?" )

	InitTrigger()
	TriggerCondition( 1, HasMission, 1014)
	TriggerCondition( 1, HasRecord, 1013)
	TriggerCondition( 1, NoRecord, 1059)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "������ ���� ������������",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1059)
	TriggerCondition( 1, HasNOZSExp )
	TriggerCondition( 1, NoRecord, 1056)
	TriggerAction( 1, JumpPage, 5)
	TriggerFailure( 1, JumpPage, 6)
	Text( 1, "����� ������ ������� ���� ������������",MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "����", CloseTalk)

	InitTrigger()
	TriggerAction( 1, SetRecord, 1015)
	TriggerAction( 1, SetRecord, 1059)
	TriggerAction( 1, JumpPage, 4)
	Talk( 2, "�������: ���������� ��� ���� ����������. ����� �� �������� �� ����������� � ����� �������� �������. ������ ������ ����� ������� ������ �������. ����� �� �����.")
	Text( 2, "������� ����",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerAction( 1, SetRecord, 1016)
	TriggerAction( 1, SetRecord, 1059)
	TriggerAction( 1, JumpPage, 4)
	Text( 2, "������� ����",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 3, "�������: ��� �� ��������� ���� ������������? �� ��� ���?")

	Talk( 4, "�������: �� �������� � ����� ������. ������!")

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1016)
	TriggerCondition( 1, HasMoney, 5000000)
	TriggerAction( 1, ClearRecord, 1016)
	TriggerAction( 1, SetRecord, 1015)
	TriggerAction( 1, TakeMoney, 5000000)
	TriggerAction( 1, JumpPage, 7)
	TriggerFailure( 1, JumpPage, 8)
	Talk( 5, "�������: �������� 5 ��������� ������, �� ������� ������� ������ ����.")
	Text( 5, "������� ����",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1015)
	TriggerCondition( 1, HasMoney, 5000000)
	TriggerAction( 1, ClearRecord, 1015)
	TriggerAction( 1, SetRecord, 1016)
	TriggerAction( 1, TakeMoney, 5000000)
	TriggerAction( 1, JumpPage, 7)
	TriggerFailure( 1, JumpPage, 8)
	Text( 5, "������� ����",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�������: ��� �� ��������� ���� ������������? �� ��� ���?")

	Talk( 7, "�������: ������ �� ������ ��������� �� ������ ����.")

	Talk( 8, "�������: �� �� ������ ���� ������������ ��� �� ��� ��� �����. ��� ��� ���, ��� ������ � ����� ������.")

	AddNpcMission	(231)	--1
	AddNpcMission	(232)	--2
	AddNpcMission	(234)	--3
	AddNpcMission	(1037)	--4
	AddNpcMission	(1091)	--5
	AddNpcMission	(1149)	--6
	AddNpcMission	(1200)	--7
	AddNpcMission	(1228)	--8
	AddNpcMission	(327)	--9
	AddNpcMission	(339)	--10
	AddNpcMission	(340)	--11
	AddNpcMission	(6017)	--12
	AddNpcMission	(6018)	--13
	AddNpcMission	(6352)	--14
	AddNpcMission	(6353)	--15

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���峤����������.��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[���ߵ�����ŷ��]			--
--							--
--		86214,359121				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk49 ()
	
	
	Talk( 1, "���: ������, ��������, ��� � ���� ����. ��� �������� ������� �� ��������� �������� ��������." )
	Text( 1, "����������� ����������������� �����", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3129, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeItem, 3129, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, GiveItem, 3133, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "���: ����� ������������ ��, ���������� �����. � ���� ������� ��� ��� ����." )
	Text( 2, "������� ��������� �����", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2, "������� ��� ����������� ������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3130, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3130, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3134, 1 , 4)
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "������� ��� '��������'", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "���: ������ ������... ��� ���� ��������� �����" )
	Talk( 4, "���: ��... ����� ����������� 1 ��������� �����, ����������� �������� ����� (10) � 1 �������. � ��� ����� ����� ��������� 50 ���." )
	Talk( 5, "���: ������ ������... ��� ���� ��� �� ���������� �������" )
	Talk( 6, "���: ������, � ���� ��� ����������� ���������. ��� ������������� ��� ����������� ������ ����� 10 ���������� ������� � 1 ������." )
	Talk( 7, "���: ������ ������... ��� ���� ��� '��������'" )
	Talk( 8, "���: ��... ����� ����������� ��� '��������' (1), ����������� 10 ��������� ���������� � 1 �������. � ��� ����� ����� ��������� 50 �������." )

	AddNpcMission( 1007 )
	AddNpcMission( 1117 )
	AddNpcMission( 1171 )
	AddNpcMission(	1062	)
	AddNpcMission(	1229	)
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���ߵ�����ŷ��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[��װ������Ī��]			--
--							--
--		89463,360213				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk50 ()
	
	
	Talk( 1, "����: � ���� ����� ��� �������. �������, ��� ���� ��������." )
	Text( 1, "����", BuyPage )
	Text( 1, "������...",CloseTalk )

	InitTrade()
	Defence(	0365	)
	Defence(	0541	)
	Defence(	0717	)
	Defence(	0372	)
	Defence(	0548	)
	Defence(	0724	)
	Defence(	0366	)
	Defence(	0542	)
	Defence(	0718	)
	Defence(	0373	)
	Defence(	0549	)
	Defence(	0725	)
	Defence(	0368	)
	Defence(	0544	)
	Defence(	0720	)
	Defence(	0374	)
	Defence(	0550	)
	Defence(	0726	)
	Defence(	0367	)
	Defence(	0543	)
	Defence(	0719	)
	Defence(	0375	)
	Defence(	0551	)
	Defence(	0727	)
	Defence(	0369	)
	Defence(	0545	)
	Defence(	0721	)
	Defence(	0376	)
	Defence(	0552	)
	Defence(	0728	)
	Defence(	0370	)
	Defence(	0546	)
	Defence(	0722	)
	Defence(	0378	)
	Defence(	0554	)
	Defence(	0730	)
	Defence(	0371	)
	Defence(	0547	)
	Defence(	0723	)
	Defence(	0379	)
	Defence(	0555	)
	Defence(	0731	)
	Defence(	0383	)
	Defence(	0559	)
	Defence(	0735	)
	Defence(	0359	)
	Defence(	0535	)
	Defence(	0711	)
	Defence(	0381	)
	Defence(	0557	)
	Defence(	0733	)
	Defence(	0360	)
	Defence(	0536	)
	Defence(	0712	)
	Defence(	0389	)
	Defence(	0565	)
	Defence(	0741	)
	Defence(	0361	)
	Defence(	0537	)
	Defence(	0713	)
	Defence(	0390	)
	Defence(	0566	)
	Defence(	0742	)
	Defence(	0362	)
	Defence(	0538	)
	Defence(	0714	)
	Defence(	0385	)
	Defence(	0561	)
	Defence(	0737	)
	Defence(	0363	)
	Defence(	0539	)
	Defence(	0715	)
	Defence(	0392	)
	Defence(	0568	)
	Defence(	0744	)
	Defence(	0388	)
	Defence(	0564	)
	Defence(	0740	)
	Defence(	0382	)
	Defence(	0558	)
	Defence(	0734	)
	Defence(	0391	)
	Defence(	0567	)
	Defence(	0743	)


	AddNpcMission	(715 )
	AddNpcMission	(1011)
	AddNpcMission	(1068)
	AddNpcMission	(1123)
	AddNpcMission	(1175)
	AddNpcMission(	1230	)
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��װ������Ī��

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[���г��ɡ����˹]			--
--							--
--		90637,353900				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk51 ()
	
	
	Talk( 1, "����: ����������! ����� ���������� � ���� ������ ������! ��� ���� ������?" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 3000 )
	TriggerAction( 1, TakeMoney, 3000 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� (����� 3000 ���.)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "������, ������, � ���� �� ������� �����" )

	AddNpcMission	(1051)
	AddNpcMission	(1104)
	AddNpcMission	(1160)
	AddNpcMission	(1213)
	AddNpcMission(	1231	)
-------eleven
	AddNpcMission(	5012	)	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���г��ɡ����˹

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�����ӳ�Ա������]		--
--							--
--		86734,366071				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk52 ()
	
	
	Talk( 1, "������: � ����� ��������� �� ����. �� � ���� ������� ���������. ������� � �������� ���� �� ��� ������ 10 ��������� ��������. ������� �� ������ �������, ������� � ����� ��������. ��� ��� ����������� �� ����, ��� ��������� � ������, ��������� ��� �����." )
	Text( 1, "������...",CloseTalk )
	
	
	----------------תְ��Ϊѵ��ʦ
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerCondition( 1, HasItem, 3364, 1 )
	TriggerAction( 1, TakeItem, 3364, 1 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, SetProfession, 11 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerCondition( 2, HasItem, 3364, 1 )
	TriggerAction( 2, TakeItem, 3364, 1 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetProfession, 11  )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )

--	Talk(5, "Sigh��it's a pity that you are not a Beast Tamer. I believed that you have the ability to become one. Let me teach you how!")
--	Text(5, "Ok, I will become a Beast Tamer", MultiTrigger, GetMultiTrigger(), 2)
--	Text(5, "No, it is good enough for now.", CloseTalk)

--	Talk(6, "How is it? I knew you are born to be a Beast Tamer!")

--	Talk(7, "Want to become a Beast Tamer? Come back to me when you have reached Lv 40. Train your hunter skills well as they are important foundation for you to advance further. Remember to bring 1 Clarity Crystal and 20000G too.")


	--TriggerCondition( 2, LvCheck, ">", 39 )
	--TriggerCondition( 2, IsCategory, 1 )
	--TriggerCondition( 2, PfEqual, 2 )
	--TriggerAction( 2, JumpPage, 5 )
	--TriggerCondition( 3, LvCheck, ">", 39 )
	--TriggerCondition( 3, IsCategory, 3 )
	--TriggerCondition( 3, PfEqual, 2 )
	--TriggerAction( 3, JumpPage, 5 )
	

	--Start( GetMultiTrigger(), 1 )
	

	AddNpcMission	(243 )
	AddNpcMission	(244 )
	AddNpcMission	(1012)
	AddNpcMission	(1069)
	AddNpcMission	(1124)
	AddNpcMission	(1176)
	AddNpcMission	(88)
	AddNpcMission	(89)
	AddNpcMission	(90)
	AddNpcMission(	1232	)
	



	
	MisListPage(5)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�����ӳ�Ա������

----------------------------------------------------------
--							--
--							--
--		������ ������			--
--							--
--		90424,349871				--
----------------------------------------------------------
-----------------------------------------------------------
function r_talk53 ()

	Talk( 1, "������: ������! ����� � ���� �������� ����� ������! �� �������� ����� �� ����!" )
	Text( 1, "����", BuyPage )
	Text( 1, "������", OpenRepair )
	Text( 1, "�������������", OpenUnite)
	Text( 1, "�����", OpenForge)
	--Text( 1, "������ ������ ������ ", JumpPage, 3 )
	Text( 1, "�������� ��� ", JumpPage, 2 )
	Text( 2, "������", OpenMilling)
	Text( 2, "������ ���������", OpenFusion)
	Text( 2, "������������������ ���������", OpenUpgrade)
	Text( 2, "���������� ���������", OpenGetStone )
	Text( 2, "�������� ���������", SendExchangeXData )
	Text( 2, "����� ", JumpPage, 1 )
	Text( 2, "������...",CloseTalk )
	Text( 1, "������...",CloseTalk )
	
	Talk( 3, "������ ������ ������ ������? ������� ������ ������ �������? ���� ������ ������ 100�, ������ �����?" )
		InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 100000)
	TriggerAction( 1, GiveItem, 453,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "���� ������ �� 100� ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 200000)
	TriggerAction( 1, GiveItem, 453,2, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "��� ������ �� 200� ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 300000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 300000)
	TriggerAction( 1, GiveItem, 453,3, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "��� ������ �� 300� ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 400000)
	TriggerAction( 1, GiveItem, 453,4, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "������ ������ �� 400� ",MultiTrigger, GetMultiTrigger(), 1 )
		InitTrigger()
	TriggerCondition( 1, HasMoney, 500000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 500000)
	TriggerAction( 1, GiveItem, 453,5, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "���� ������� �� 500� ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "����� ", JumpPage, 1 )
	Talk( 5, "�� ��� ������� ��������� " )
	
		InitExchangeX()
	--���� 
ExchangeDataX	(	8142	,	15	,	5001	,	1	)
ExchangeDataX	(	8142	,	15	,	5008	,	1	)
ExchangeDataX	(	8142	,	20	,	5002	,	1	)
ExchangeDataX	(	8142	,	20	,	5007	,	1	)
--�����
ExchangeDataX	(	8142	,	30	,	5003	,	1	)
ExchangeDataX	(	8142	,	40	,	5009	,	1	)
--���������\����
ExchangeDataX	(	8142	,	30	,	5005	,	1	)
ExchangeDataX	(	8142	,	40	,	5011	,	1	)
ExchangeDataX	(	8142	,	30	,	5448	,	1	)
ExchangeDataX	(	8142	,	40	,	5612	,	1	)
--������
ExchangeDataX	(	8142	,	30	,	5006	,	1	)
ExchangeDataX	(	8142	,	40	,	5012	,	1	)
ExchangeDataX	(	8142	,	30	,	5004	,	1	)
ExchangeDataX	(	8142	,	40	,	5010	,	1	)

--���� ����� �� ����
ExchangeDataX	(	8141	,	20	,	8823	,	1	)
ExchangeDataX	(	8141	,	30	,	8821	,	1	)
ExchangeDataX	(	8141	,	40	,	8822	,	1	)
ExchangeDataX	(	8141	,	50	,	8824	,	1	)
ExchangeDataX	(	8141	,	60	,	8825	,	1	)
ExchangeDataX	(	8141	,	70	,	8826	,	1	)
--���� �������
ExchangeDataX	(	8141	,	20	,	8829	,	1	)
ExchangeDataX	(	8141	,	30	,	8827	,	1	)
ExchangeDataX	(	8141	,	40	,	8828	,	1	)
ExchangeDataX	(	8141	,	50	,	8830	,	1	)
ExchangeDataX	(	8141	,	60	,	8831	,	1	)
ExchangeDataX	(	8141	,	70	,	8832	,	1	)
--���� �����
ExchangeDataX	(	8141	,	20	,	8835	,	1	)
ExchangeDataX	(	8141	,	30	,	8833	,	1	)
ExchangeDataX	(	8141	,	40	,	8834	,	1	)
ExchangeDataX	(	8141	,	50	,	8836	,	1	)
ExchangeDataX	(	8141	,	60	,	8837	,	1	)
ExchangeDataX	(	8141	,	70	,	8838	,	1	)
--���� ���
ExchangeDataX	(	8141	,	20	,	8841	,	1	)
ExchangeDataX	(	8141	,	30	,	8839	,	1	)
ExchangeDataX	(	8141	,	40	,	8840	,	1	)
ExchangeDataX	(	8141	,	50	,	8842	,	1	)
ExchangeDataX	(	8141	,	60	,	8843	,	1	)
--ExchangeDataX	(	8141	,	70	,	8844	,	1	)

	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0097	)
	Weapon(	0104	)
	Weapon(	0098	)
	Weapon(	0105	)
	Weapon(	0099	)
	Weapon(	0106	)
	Weapon(	0101	)
	Weapon(	0107	)
	Weapon(	0102	)
	Weapon(	0108	)
	Weapon(	0100	)
	Weapon(	4301	)
	Weapon(	0103	)
	Weapon(	4302	)
	Weapon(	1427	)
	Weapon(	1428	)
	Weapon(	1429	)
	Weapon(	1430	)
	Weapon(	1431	)
	Weapon(	1432	)
	Weapon(	1433	)
	Weapon(	1434	)
	Weapon(	1435	)
	Weapon(	1436	)
	Weapon(	1437	)
	Weapon(	1438	)
	Weapon(	1440	)
	Weapon(	1441	)
	Weapon(	1462	)
	Weapon(	1463	)
	Weapon(	1464	)
	Weapon(	1465	)
	Weapon(	1466	)
	Weapon(	1467	)
	Weapon(	1468	)
	Weapon(	1469	)
	Weapon(	1470	)
	Weapon(	1471	)
	Weapon(	1472	)
	Weapon(	1473	)
	Weapon(	1475	)
	Weapon(	1476	)

	Other(		)
	Other(		)
	Other(		)
	AddNpcMission	(713 )
	AddNpcMission	(1043)
	AddNpcMission	(1095)
	AddNpcMission	(1154)
	AddNpcMission	(1206)
	AddNpcMission	(91)
	AddNpcMission	(92)
	AddNpcMission	(93)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<������ͭͭ��




--------------------------------------------------------------������ͽ�� 
function mmm_talk04 ()
	Text( 1, "������ � �����", JumpPage, 2 )
	Text( 1, "������ � ��������������", JumpPage, 3 )
	Text( 1, "������ � ������", JumpPage, 7 )
	Text( 1, "������...",CloseTalk )
	
	
	Talk( 2, "������ �������: �� ���������� ���� �������� ������ ���������. ���� ����������� ����������� - ��������� �������� ������ �� ������, ��� � ���� �������. ����� ������ ���������, �������� �������� ���� �������. ������ ������� �������� ������ �������� � ����������� ���� �����������. ��������� ������ ������������ ���� �� ������, ��� � �������. ������ �������� ���?" )
	Text( 2, "�� ��������� ���������", JumpPage, 4)
	Text( 2, "� ����������", JumpPage, 5)
	Text( 2, "������ � ������ �� �������� �����", JumpPage, 6)
	
	Talk( 3, "������ �������: ������ ���-������ ���������? ��������� ��� ��������, ���� ����������� ������ ���������� �� ������� ����������� ���������. ������ ���, ��� ���� �����������, � �������� � ������������ - ������ � �������. ������ �� ������� ���������� ����������." )
	
	Talk( 4, "������ �������: ��� ��������� ���������� ������ �� �������. �������� ������ ��������������� ������ ��������. ��������� ������ ������� ����� ��������, ��������� ������ ��� ������ ��������." )

	Talk( 5, "������ �������: ���������� ��������� ���������� ��� ����� - �������� �������� �����, ������� �������� ������, ��������� �������� ��������... ��������� ������� ������ ����� ��������, ������ �������, ��� ����� ����������." )

	Talk( 6, "������ �������: ��� ���� ������� ������������� ��������, ��� ���� ���� ������� �����. ������������ ������� ������������ �������� - 27. ��� ��������� ����� ������������ � ��� �������� ��������." )
	
	Talk( 7, "������ �������: ��� ������ ��������� ���� ���������� ����������� 1 ������������ � 1 �����������, ����� ������� ����." )

end

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����]				--
--							--
--		88307,352019				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk54 ()
	
	
	Talk( 1, "����: ������! � ���� ������." )
	Text( 1, "����������� ��������� ��� �����", JumpPage, 2)

----------------������ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1791, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1791, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1801, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "����: �����, � ����� ������� ���� ���� ��������. ��� ����������� ���� ������ ��� �����?" )
	Text( 2, "����������� ������� ���������",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "��, ���? ���� ��� ���������, ������� �� �����?" )
	Talk( 4, "����: ����� ����������� ������� ���������, ����� ������� ������ (5), ������ ��� (1), 1 �������� ������ � 200 �������." )
	
	AddNpcMission	(1146)
	AddNpcMission	(155)
	AddNpcMission	(156)
	AddNpcMission	(157)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�ӻ����ˡ���ī]			--
--							--
--		84040,358567				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk55 ()
	
	
	Talk( 1, "����: ������, � ��� ���� ��� �������. � ������ ��������� ���� � �� ����." )
	Text( 1, "����", BuyPage )
	Text( 1, "�������������", OpenUnite)
	Text( 1, "������...",CloseTalk )
	Text( 1, "�������� ����� ����������",JumpPage, 2 )

	InitTrade()
	
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other( 3296 )
	Other( 886 )
	--baby--�������Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--Leo
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
	--Other(	3288	)
	--Other(  2440    )
	Other(	854	)

	AddNpcMission	(1161)
	AddNpcMission	(152)
	AddNpcMission	(153)
	AddNpcMission	(154)
	--AddNpcMission	(5500)

	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "����� ���������� ����� 1 ���������� ������, 10 000 ������� � 10 ������ ����� ��������� �������� 3 ��." )
	Text( 2, "�������� ����� �� ����� ����������", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "Exchange Razor Tooth for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "�������� ����������� ����� �� ����� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "������� ������ �� ����� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "�������� ����-��� �� ����� ����������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "��������: ����������� ��� � ����!" )
	Talk( 4, "����: ���� �� �����, ���� �� ������� �����. � �����, ���� ������ ������������ ��� � ��� ��������� ��������� �����." )

end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ӻ����ˡ���ī

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�õ��ϰ塤����]			--
--							--
--		81035,349813				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk56 ()
	
	
	Talk( 1, "������: ������! ����� ������������? ������� ���� ������� ��� �����." )
	Text( 1, "����������� ���������� ������", JumpPage, 2)


--------------------�����������֭
	InitTrigger()
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasItem, 3121, 4 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3121, 4 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 3127, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "�����: ��� ������� ������� ��� ��������. ���� ��� ����� ����������� �������� �������." )
	Text( 2, "������� ��� �������� �������",MultiTrigger, GetMultiTrigger(), 1)

----------------�����ۺϹ�֭
	InitTrigger()
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasItem, 3122, 1 )
	TriggerCondition( 1, HasItem, 3123, 1 )
	TriggerCondition( 1, HasItem, 3124, 1 )
	TriggerCondition( 1, HasItem, 3125, 1 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3122, 1 )
	TriggerAction( 1, TakeItem, 3123, 1 )
	TriggerAction( 1, TakeItem, 3124, 1 )
	TriggerAction( 1, TakeItem, 3125, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 3128, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "����������� ��������� ��������",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "������� �������, ��� �������, ������� �� ����� �����������. ���� ��������� � ���. ��� ����� ���������� ������� � ������." )
	Talk( 4, "������: ������, � ���� ��� ����������� ���������. ��� ������������� ���� �������� ������� ����� 4 �������� ������, 1 �������� ������ � 50 �������." )
	Talk( 5, "������: ������, � ���� ��� ������ ������������. ��� ������������� ���������� �������� ����� 1 ��� ����������� ������, 1 ��� �� ������� �������, 1 ������� ���, 1 ��� ������ �������, 1 �������� ������ � �������� 50 �������." )
	AddNpcMission	(1138)
	AddNpcMission	(1161)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�õ��ϰ塤����

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[��ʿС�㡤����]			--
--							--
--		87954,356282				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk57 ()
	
	
	Talk( 1, "�����: ������, � ������� �����. � ��� �����, ������� ������� ���� �������������. ������ � �� ����� �������� ����. ���� ���� ���-������ �����, ����� ����� - ����� � (903,3646)." )
	AddNpcMission	(1129)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ʿС�㡤����

--------------------------------------------------
--							--
--							--
--		ɳᰳ�[�������¿�]			--
--							--
--		794,3669				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk58 ()
	
	
	Talk( 1, "����: ��! � ����, ������� ����������-�������! � ������ ������������� ������ ������������ � ������� �������. ������ � ���� �� ���� �����������? ������, ��� � �� ����� �����! ��-��!" )
	

	--Text( 1, "�λ�˫�ӹ�(�ռ�12��ר������)", JumpPage,2 )

	Talk( 2, "�������¿�:��ѡ����Ҫ���ص��Ѷ�,��ˮ�ֵ������Ѷ����μӴ�,��Ȼ���Ѷ�Խ�߽���Խ���.���������?ֻ��ѡ��һ��,�����Ժ��Ŷ" )

	InitTrigger()
	TriggerCondition( 1, NoRecord,1204 )
	TriggerCondition( 1, NoRecord,1161 )
	TriggerCondition( 1, HasItem, 3027, 1 )---------˫����Ʊ
	TriggerAction( 1, TakeItem, 3027, 1 )----------˫����Ʊ
	TriggerAction( 1, SetRecord, 1159 )
	TriggerAction( 1, SetRecord, 1162 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "�����",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1159 )
	TriggerCondition( 1, NoRecord,1161 )
	TriggerCondition( 1, HasItem, 3027, 1 )---------˫����Ʊ
	TriggerAction( 1, TakeItem, 3027, 1 )----------˫����Ʊ
	TriggerAction( 1, SetRecord, 1204 )
	TriggerAction( 1, SetRecord, 1162 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "�����",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1159 )
	TriggerCondition( 1, NoRecord,1204 )
	TriggerCondition( 1, HasItem, 3027, 1 )--------˫����Ʊ
	TriggerAction( 1, TakeItem, 3027, 1 )----------˫����Ʊ
	TriggerAction( 1, SetRecord, 1161 )
	TriggerAction( 1, SetRecord, 1162 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "�������",MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "�������¿�:���������Լ�ѡ��ĵ�·�ϲ���һ���غ�.�۹�����..." )
	Talk( 4, "�������¿�:��ս˫�ӹ���ʱ��,�Ѷ�ֻ��ѡ��һ��.��ȷ�����ı�������˫�ӹ���Ʊ.")
	
	AddNpcMission	(1125)

---------------------�������¿�
	---------------˫��
	AddNpcMission	(5673)
	AddNpcMission	(5674)
	AddNpcMission	(5741)-------(5675)
	AddNpcMission	(5742)
	AddNpcMission	(5677)
	AddNpcMission	(5678)

	AddNpcMission	(5679)
	AddNpcMission	(5680)
	AddNpcMission	(5681)
	AddNpcMission	(5682)
	AddNpcMission	(5683)
	AddNpcMission	(5684)
	AddNpcMission	(5685)
	AddNpcMission	(5686)
	AddNpcMission	(5687)
	AddNpcMission	(5688)
	AddNpcMission	(5689)

	AddNpcMission	(5730)
	AddNpcMission	(5731)
	AddNpcMission	(5733)
	AddNpcMission	(5734)
	AddNpcMission	(5735)
	

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������¿�

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����ָ������˿��]			--
--							--
--		87614,357250				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk59 ()
	Talk( 1, "�������: ������! � �������! � ������ �������� � �������! ��������� ���� � ��� ������!" )
	--Text( 1, '������ ��������', JumpPage, 31 )
	Text( 1, '������ ��������', SendExchangeXData )
	InitExchangeX()
	ExchangeDataX	(		8142	,	5	,	1033	,	1	)
	
	Text( 1, "��� �������� �� ��� � ��� ��������", JumpPage, 4 )
	Text( 1, "� ������� � ���������", JumpPage, 11 )
	Text( 1, "������ ������������ ��������", JumpPage, 30 )

	Talk( 4, "� ������� ���������� � �������� ��������� � ������. ����� ������ ����� ��� ������ ������. �������-�� �� ������ ����������� ������, ����������� � ��� �������." )
	Text( 4, "��������� �����", JumpPage, 5 )
	Text( 4, "������� ��������", JumpPage, 7 )
	Text( 4, "���������� �����", JumpPage, 8 )
	Text( 4, "����������", JumpPage, 9 )
	Text( 4, "������� ���� ��������. ���� � �����", JumpPage, 10 )

	Talk( 5, "� ������� ������� ������ �� ������� ���������� ��� ���� ������������������� ������. �� ��������� � ����� ���������� - � ������ ���� ������." )
	Text( 5, "������ � ������ ���������", JumpPage, 4 )
	Text( 5, "��� ��� ����", CloseTalk )

--	Talk( 6, "Look for me again if there is anything you don't understand", CloseTalk )

	Talk( 7, "����� ������ ���� �������, ��� � �������� ����. ��� ���� ������ �������. ���� �� �������, ����� �� ��������, ������." )
	Text( 7, "������ � ������ ���������", JumpPage, 4 )
	Text( 7, "��� ��� ����", CloseTalk )

	Talk( 8, "������� ���������? ����� �������� ��� � �������� ����� ������." )
	Text( 8, "������ � ������ ���������", JumpPage, 4 )
	Text( 8, "��� ��� ����",  CloseTalk )

	Talk( 9, "����� ��������� � ������ �����, ������ ����������� ������� - ���. ��� ���������� ���� � ����� ������� ����� ����. ��� ����� ����� ���������������� ��� ���� ����� ����� �����������. ��� ��� � ����� � �����." )
	Text( 9, "������ � ������ ���������", JumpPage, 4 )
	Text( 9, "��� ��� ����",  CloseTalk )

	Talk( 10, "���� ������������? ��������� ����� �������. ��� � ��� ����������!" )
	Text( 10, "������ � ������ ���������", JumpPage, 4 )
	Text( 10, "��� ��� ����",  CloseTalk)


	InitTrigger()
	TriggerCondition( 1, NoRecord, 706 )
	TriggerCondition( 1, HasMission, 706 )
	TriggerCondition( 1, NoFlag, 706, 10 )
	TriggerAction( 1, SetFlag, 706, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "�������: ����� ����� ������� �������, ���� ���� ������� �������� ������ � ��������������. ������ ������ ������?" )
	Text( 11, "������", JumpPage, 12)
	Text( 11, "��������������", JumpPage, 13)
	--Text( 11, "������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 706 )
	TriggerCondition( 1, HasMission, 706 )
	TriggerCondition( 1, NoFlag, 706, 20 )
	TriggerAction( 1, SetFlag, 706, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "��������������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�������: � ���� ���� 4 ������� ������. � ������ ���� ����� ����� � ���� ���� � ����. ��� �� �� ����� �����?" )
	Text( 12, "������", JumpPage, 14 )
	Text( 12, "�������", JumpPage, 15 )
--	Text( 12, "Regarding Sailor", JumpPage, 16 )
	Text( 12, "�������������", JumpPage, 17 )
	Text( 12, "��������", JumpPage, 18 )
--	Text( 12, "Regarding Artisan", JumpPage, 19 )
--	Text( 12, "Regarding Merchant", JumpPage, 20 )

	Talk( 13, "�������: � ������� ��������� ���� 5 �������� �������������. ������ ����� �������� �� � �������������� ��������� ���� ������. ������ ����� ������� �������� ������ 1 ����� ��������� � 1 ����� ������. ����������� ������ ������ 5 ������� ��������������." )
	Text( 13, "����", JumpPage, 21 )
	Text( 13, "��������", JumpPage, 22 )
	Text( 13, "������������", JumpPage, 23 )
	Text( 13, "���", JumpPage, 24 )
	--Text( 13, "Regarding Luck", JumpPage, 25 )
	Text( 13, "��������", JumpPage, 26 )

	Talk( 14, "�������: ������� ����� ������� ����� ������� ���������� ������������� � ����. ���� ����� �������� ����������-�������� �� ���������� 10 ������. ����� ����� ��������, ����� ������ � �������." )
	Text( 14, "������ ������", JumpPage, 12)
	Text( 14, "��������������", JumpPage, 13)
	Text( 14, "��� ��� ����", JumpPage, 27)

	Talk( 15, "�������: ������� - ��� ������������ ����� � ����, ������� ���������� ������ �������� ��������. ����� ������� ������ ������������� ����� ��������� ����� ������������ ������������� ������, ��� ������� ������ ����. ���������� ����� ����� ������ ���� � ������. ��� ����� ��������� ������ 10 ������ ���������� � ������� ��� � ����� ������." )
	Text( 15, "������ ������", JumpPage, 12)
	Text( 15, "��������������", JumpPage, 13)
	Text( 15, "��� ��� ����", JumpPage, 27)

	Talk( 16, "Resline: Sailor is the strongest class in the sea. It is still unreleased in current version." )
	Text( 16, "������ ������", JumpPage, 12)
	Text( 16, "��������������", JumpPage, 13)
	Text( 16, "��� ��� ����", JumpPage, 27)
	
	Talk( 17, "�������: ������������� - ����� ������ �������� �� ����� ����������� �� ����. ����� �� ����� ��� ��� ���� ����������, �� ����������� �������. ����� ����� ��������������, � ����� ��������������, ������� 10 ������ � ���� ����� ���������� � ������� �������� � �������." )
	Text( 17, "������ ������", JumpPage, 12)
	Text( 17, "��������������", JumpPage, 13)
	Text( 17, "��� ��� ����", JumpPage, 27)

	Talk( 18, "�������: �������� � ������ ������������� ������ ����. ��� �������� ��������� ����� ���������. ������ ������ � ��� ����� ����� ����������. ��������� 10 ������ ������ �������� ���������� ����� ������� � �������, ����� ����� ����������." )
	Text( 18, "������ ������", JumpPage, 12)
	Text( 18, "��������������", JumpPage, 13)
	Text( 18, "��� ��� ����", JumpPage, 27)

	Talk( 19, "Resline: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version." )
	Text( 19, "������ ������", JumpPage, 12)
	Text( 19, "��������������", JumpPage, 13)
	Text( 19, "��� ��� ����", JumpPage, 27)

	Talk( 20, "Resline: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version." )
	Text( 20, "������ ������", JumpPage, 12)
	Text( 20, "��������������", JumpPage, 13)
	Text( 20, "��� ��� ����", JumpPage, 27)

	Talk( 21, "�������: ���� ����������� �������� ����� � ������� ���" )
	Text( 21, "������ ��������������", JumpPage, 13)
	Text( 21, "������ ������", JumpPage, 12)
	Text( 21, "��� ��� ����", JumpPage, 27)

	Talk( 22, "�������: �������� �������� �������� ����� � ���� ���������" )
	Text( 22, "������ ��������������", JumpPage, 13)
	Text( 22, "������ ������", JumpPage, 12)
	Text( 22, "��� ��� ����", JumpPage, 27)

	Talk( 23, "�������: ������������ �������� ������������ ���������� ����� � ���������� �������������" )
	Text( 23, "������ ��������������", JumpPage, 13)
	Text( 23, "������ ������", JumpPage, 12)
	Text( 23, "��� ��� ����", JumpPage, 27)

	Talk( 24, "�������: ��� �������� ������������ ���������� ���� � �������� �� �������������� ��� ������������� �������" )
	Text( 24, "������ ��������������", JumpPage, 13)
	Text( 24, "������ ������", JumpPage, 12)
	Text( 24, "��� ��� ����", JumpPage, 27)

	Talk( 25, "Resline:  Luck increases Critical Rate and Combining Success Rate" )
	Text( 25, "������ ��������������", JumpPage, 13)
	Text( 25, "������ ������", JumpPage, 12)
	Text( 25, "��� ��� ����", JumpPage, 27)

	Talk( 26, "�������: �������� �������� ���� ������������� ����� � ���� ��������� �����" )
	Text( 26, "������ ��������������", JumpPage, 13)
	Text( 26, "������ ������", JumpPage, 12)
	Text( 26, "��� ��� ����", JumpPage, 27)

	Talk( 27, "�������: ������. ���� ��������� �������, ������ ������ ���� ������!")

	Talk( 28, "�������: �������, ������, ������ � ���� ���� ��������� �������� ������ �������, � ����� ����, ��� ���� � ����� ����� ������� ��������� ������. ������, � ������ ���� ������ �����, ��� ����� ����. �� ������ ������������� � ����� ��������? ���� �� ������ ���������, ����� ��������� ������. ��������� ��� ��� ������ � (958, 3549). �� ����� ������ ��������� ����� (903, 3646) - ����������� ����� �������. � ��������� ����� ��� ������ ����������, ������� ������ �� ������� ����������� ��� ��������." )
	Text( 28, "��� �������� �� ��� � ��� ��������", JumpPage, 4 )
	Text( 28, "� ������� � ���������", JumpPage, 11 )
	Text( 28, "��� ��� ����",  CloseTalk)

	Talk( 29, "����� ������. �� ��� ������ 9-�� ������. ��� ������ �� ���������� 10-�� ������, �� ������� ������� ���� ������ ���������. ������ ��������� - ������ � ������� (2192, 2767) ���� �� ������ ���� ��������. ����� ���������� ����� ������� � ������� (862, 3500) ���� �� ������ ����� ���������. ����� ����� ���������, ������ ������� ��� �� ������ (1365, 570). �������������� ������� ����� ������� �� ������� (2193, 2730). ��� �������� ����������� ����� �������� �� ������ ��������������� �������� ������������." )
	Text( 29, "��� �������� �� ��� � ��� ��������", JumpPage, 4 )
	Text( 29, "� ������� � ���������", JumpPage, 11 )
	Text( 29, "��� ��� ����",  CloseTalk )

	Talk( 30, "�������: ����� ��������, ��� ��������� ��������, ���������� ��������� �������� � ���� ������� (2222, 2889). �� ����� �� ������� ���� ����������." )

	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )

	Talk( 31, "������ �������� - ������������ ������� �� ������� ����. ��� �������� ���� ������������ ���� ��������, � �����... �� ����, ��� �����. ��� ������ � ������� ���� 41 ����� �������� ������ �������� �� ������� ����������. ���� ��� ����������?" )
	Text( 31, "�������� ������ ��������",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "�������� ������ ��������",JumpPage, 32 )

	Talk( 32, "���������� �� ����� ����� �������. ���� � ���� ���� '������ ��������', ������ �������� ������ 50 ��. ��� ����� ���������. ���������, ������?")
	Text( 32, "�������� ������ �� ���� �����", Transfer_TeamStar, 1)

	Talk( 6, "�������: ������, �� �� �� �������������� ������ �����������" )
	
	--InitTrigger()
	---------------------��ҳ���6����ɹ�ɪ����ս��ѵ������
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 9 )
	---TriggerCondition( 1, HasRecord, 710 )
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )


	--Start( GetMultiTrigger(), 2 )

	AddNpcMission	(711 )
	AddNpcMission	(712 )
	AddNpcMission	(714 )
	AddNpcMission	(716 )
	AddNpcMission	(718 )
	AddNpcMission	(202 )
	AddNpcMission	(414)
	AddNpcMission	(83)
	AddNpcMission	(84)
	AddNpcMission	(94)
	AddNpcMission	(161)
	--AddNpcMission	(62)
	--AddNpcMission	(63)
	--AddNpcMission	(64)
	--AddNpcMission	(65)

	MisListPage(28)
	MisListPage(29)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����ָ������˿��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�������´���Ա����΢����У]		--
--							--
--		86507,364804				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk61 ()
	
	
	Talk( 1, "������� ���: ����������! � ���, ������ �������-������ � ������." )
	AddNpcMission	(1126)
	AddNpcMission	(98)
	AddNpcMission	(99)
	AddNpcMission	(150)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������´���Ա����΢����У

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[ɳᰳ��̻�᳤��������]		--
--							--
--		87362,354566				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk62 ()
	
	
	Talk( 1, "�����: � ����� �������� �������� ��������, �������� ��� ������ � ��������� ��������. ����� �������, ��� � ����� ���������� ��������. �� ����� �� ���� ��� ���?" )
	Text( 1, "������...",CloseTalk )
	AddNpcMission	(1144)

-----��������
	AddNpcMission	(6115 )
	AddNpcMission	(6116 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ɳᰳ��̻�᳤��������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[·�ˡ�ɺ����]		--
--							--
--		84634,349945				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk63 ()
	
	
	Talk( 1, "����: ������ ������� ������ ��������. � �������� ����, ����� ���� �� ���� ��������." )
	InitTrigger()
	TriggerCondition( 1, HasItem, 2999, 99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2999, 99 )
	TriggerAction( 1, GiveItem, 3000, 1 , 4)
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 1, "99��������Ƭ�һ�1��������Կ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 1 )
	TriggerAction( 1, GiveItem, 3017, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 1, "1��������Կ�һ�1����ʹ����", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 8 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 8 )
	TriggerAction( 1, GiveItem, 3018, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 1, "8��������Կ�һ�1���ƽ�ʥ��ʿ����", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 18 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 18 )
	TriggerAction( 1, GiveItem, 3019, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 1, "18��������Կ�һ�1����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 88 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 88 )
	TriggerAction( 1, GiveItem, 3020, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 1, "88��������Կ�һ�1�����ٱ���", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 198 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 198 )
	TriggerAction( 1, GiveItem, 3021, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 1, "198��������Կ�һ�1����ħ����", MultiTrigger, GetMultiTrigger(), 1)

	--Text( 1, "Next Page", JumpPage, 5)
	
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1007 )
	TriggerAction( 1, ClearRecord, 1000 )
	TriggerAction( 1, ClearRecord, 1001 )
	TriggerAction( 1, ClearRecord, 1002 )
	TriggerAction( 1, ClearRecord, 1003 )
	TriggerAction( 1, ClearRecord, 1004 )
	TriggerAction( 1, ClearRecord, 1005 )
	TriggerAction( 1, ClearRecord, 1006 )
	TriggerAction( 1, ClearRecord, 1007 )
	TriggerAction( 1, JumpPage, 20)
	TriggerFailure( 1, JumpPage, 21)
	Text( 1, "��������� ��������" ,MultiTrigger, GetMultiTrigger(), 1)	

	Talk( 5, "����: ������ ������� ������ ��������. � �������� ����, ����� ���� �� ���� ��������." )

	Text( 5, "��������� �����", JumpPage, 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 498 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 498 )
	TriggerAction( 1, GiveItem, 3022, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 5, "498��������Կ�һ�1�����񱦲�", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 3888 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 3888 )
	TriggerAction( 1, GiveItem, 3023, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 5, "3888��������Կ�һ�1�����ޱ���", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "����Ǵ�˵���ܴ��������Ƹ���Կ�װ�����ζһ����Ǳ������ˡ�")
	Talk( 3, "��������Ҫ�ı�������ף����˿����ö���Ŷ��")
	Talk( 4, "��û���㹻�Ķһ�����Ҫ�ĵ��ߣ�Ҳ�п������ı����Ѿ��������߱����ռ䲻��." )
	Talk( 20, "You can take the challenge of Hexathlon again now!")
	Talk( 21, "������ ������ �����������. ����������, �� ���� �� ����. � ���� ��� �������.")

	AddNpcMission	(6028 )
	AddNpcMission	(6029 )
	AddNpcMission	(6054 )
	AddNpcMission	(6055 )
	-----��������
	AddNpcMission	(6114 )

end 


-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ�ɺ����

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[С������]			--
--							--
--		89875,368331				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk64 ()
	
	
	Talk( 1, "�����: ������! � ������������ � ���� ��������� �������! ����!" )

	AddNpcMission	(233 )
	---------------����
	AddNpcMission	(5565)
	AddNpcMission	(5566)

		----------------�ﵺ����
	--AddNpcMission	(6184)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<С������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�᳤������˾���]		--
--							--
--		87171,354774				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk65 ()
	
	
	Talk( 1, "������: �� ��� ������� � �������, ������ ����, ����� �����������." )
--	AddNpcMission	(905 )
	----------------�����
--	AddNpcMission	(5604 )
--	AddNpcMission	(5605 )
--	AddNpcMission	(5606 )
--	AddNpcMission	(5607 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�᳤������˾���

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[·�ˡ���]				--
--							--
--		79792,355469				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk66 ()
	
	
	Talk( 1, "Yay: Holy Priestess is at the temple in Shaitan City. She has the blessings of many devotees." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ���

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[ɳ�ˡ�����������]			--
--							--
--		108242,310135				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk67 ()
	
	
	Talk( 1, "��������: � ������� ��������� ���������! ������ ������������������ � ������ ��� �������! (����, ����� �� ������ �����...)" )
	
	AddNpcMission	(237 )
	AddNpcMission	(238 )
	AddNpcMission	(239 )
	AddNpcMission	(240 )
	AddNpcMission	(248 )
	AddNpcMission	(557 )
--------eleven
	AddNpcMission	(5011 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ɳ�ˡ�����������


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[�������ӡ���ɳ��]			--
--							--
--		125471,349171				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk68 ()

	Talk( 1, "������: ���... �� ���� ��� ��� ������ �����. �������� �� ������, ���." )
	Text( 1, "�������������", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1785, 10 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 1785, 10 )
	TriggerAction( 1, GiveItem, 1786, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "������: ����� ��������� ����� ��������. �� ������ ��������� �� � �������� �������� ��������?" )
	Text( 2, "������� �������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "������: �� ����� ���� �������� �������� �� ������? ���� ��� ������ ���� ���." )
	Talk( 4, "������: ������� 10 ������ ��������� � 2000 �������, � �������� �������� ����." )

	AddNpcMission	(5010)	--1
	AddNpcMission	(5014)	--2
	AddNpcMission	(5033)	--3
	AddNpcMission	(5034)	--4
	--AddNpcMission	(5553)	--5
	--AddNpcMission	(5554)	--6
	--AddNpcMission	(6303)	--7
	AddNpcMission	(6354)	--8
	AddNpcMission	(6355)	--9
	AddNpcMission	(6356)	--10

--	AddNpcMission	(6258)	--11
--	AddNpcMission	(6259)	--12

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�������ӡ���ɳ��


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����ר�ҡ�ɳ÷��]			--
--							--
--		66465,609367				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk69 ()
	
	
	Talk( 1, "�������: ������! � ��������, � ���� ������� ����� ������." )
---------------����
	AddNpcMission	(5559)
	AddNpcMission	(5560)
end 

--���: ������������� ����� - ���
--�����: ������
--���������: 862,3303
function r_talk70 ()
	Talk( 1, "���: �����������, ���� ��������. �� �������� � ����� ������. � ������������� ����� ���." )

	AddNpcMission	(756)	--1-���������� ����(����������)
	AddNpcMission	(341)	--2-�����
	AddNpcMission	(356)	--3-���������� �����(����������)
	AddNpcMission	(357)	--4-����� �����
	AddNpcMission	(521)	--5-����� ������
	AddNpcMission	(539)	--6-����� ���� �������(����������)
	AddNpcMission	(540)	--7-������ ����
	AddNpcMission	(541)	--8-�����
	AddNpcMission	(552)	--9-��������
	AddNpcMission	(553)	--10-��������
	AddNpcMission	(556)	--11-������

	--AddNpcMission	(5627)	--12-����� ������� 2(����������)
	--AddNpcMission	(5628)	--13-����� ������� 3(����������)

	AddNpcMission	(6307)	--14-������ ������� ����(����������)
	AddNpcMission	(6308)	--15-���������� ����� � ������
	AddNpcMission	(6310)	--16-��������������� ����� � ������ 1
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ʥŮ������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[·�ˡ�������]			--
--							--
--		93176,352977				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk71 ()
	
	
	Talk( 1, "�����: ������ ���? ������� ���� ������! � ����� ��� ���� ������������!" )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ�������

----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[����᳤������]			--
--							--
--		83171,354853				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk72 ()
	
	Talk( 1, "������: �������� � ��� ����! ������ ������� ����� ������ ���� ��������? ������ ������� ���� �����? ����� ����� ������� ��������� �� ���, � ��� ������. ���� ������� ���� ����� ������� � ������ ����������!" )
	Text( 1, "��� ������ �������", ListChallenge)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����᳤������

----------------------------------------------------------
--							--
--							--
--		������ ���			--
--							--
--		134423,52988				--
----------------------------------------------------------
-----------------------------------------------------------
function r_talk73 ()
	Talk( 1, "���: ����� ����������! � ������ ��� ���� ������! ������������ �������������!" )
	Text( 1, "����", BuyPage )
	Text( 1, "������", OpenRepair )
	Text( 1, "�������������", OpenUnite)
	Text( 1, "�����", OpenForge)
	--Text( 1, "������ ������ ������ ", JumpPage, 3 )
	Text( 1, "�������� ��� ", JumpPage, 2 )
	Text( 2, "������", OpenMilling)
	Text( 2, "������ ���������", OpenFusion)
	Text( 2, "������������������ ���������", OpenUpgrade)
	Text( 2, "���������� ���������", OpenGetStone )
	Text( 2, "�������� ���������", SendExchangeXData )
	Text( 2, "����� ", JumpPage, 1 )
	Text( 2, "������...",CloseTalk )
	Text( 1, "������...",CloseTalk )
	
	Talk( 3, "������ ������ ������ ������? ������� ������ ������ �������? ���� ������ ������ 100�, ������ �����?" )
		InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 100000)
	TriggerAction( 1, GiveItem, 453,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "���� ������ �� 100� ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 200000)
	TriggerAction( 1, GiveItem, 453,2, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "��� ������ �� 200� ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 300000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 300000)
	TriggerAction( 1, GiveItem, 453,3, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "��� ������ �� 300� ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 400000)
	TriggerAction( 1, GiveItem, 453,4, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "������ ������ �� 400� ",MultiTrigger, GetMultiTrigger(), 1 )
		InitTrigger()
	TriggerCondition( 1, HasMoney, 500000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 500000)
	TriggerAction( 1, GiveItem, 453,5, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "���� ������� �� 500� ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "����� ", JumpPage, 1 )
	Talk( 5, "�� ��� ������� ��������� " )
	--
	
		InitExchangeX()
	--���� 
ExchangeDataX	(	8142	,	15	,	5001	,	1	)
ExchangeDataX	(	8142	,	15	,	5008	,	1	)
ExchangeDataX	(	8142	,	20	,	5002	,	1	)
ExchangeDataX	(	8142	,	20	,	5007	,	1	)
--�����
ExchangeDataX	(	8142	,	30	,	5003	,	1	)
ExchangeDataX	(	8142	,	40	,	5009	,	1	)
--���������\����
ExchangeDataX	(	8142	,	30	,	5005	,	1	)
ExchangeDataX	(	8142	,	40	,	5011	,	1	)
ExchangeDataX	(	8142	,	30	,	5448	,	1	)
ExchangeDataX	(	8142	,	40	,	5612	,	1	)
--������
ExchangeDataX	(	8142	,	30	,	5006	,	1	)
ExchangeDataX	(	8142	,	40	,	5012	,	1	)
ExchangeDataX	(	8142	,	30	,	5004	,	1	)
ExchangeDataX	(	8142	,	40	,	5010	,	1	)

--���� ����� �� ����
ExchangeDataX	(	8141	,	20	,	8823	,	1	)
ExchangeDataX	(	8141	,	30	,	8821	,	1	)
ExchangeDataX	(	8141	,	40	,	8822	,	1	)
ExchangeDataX	(	8141	,	50	,	8824	,	1	)
ExchangeDataX	(	8141	,	60	,	8825	,	1	)
ExchangeDataX	(	8141	,	70	,	8826	,	1	)
--���� �������
ExchangeDataX	(	8141	,	20	,	8829	,	1	)
ExchangeDataX	(	8141	,	30	,	8827	,	1	)
ExchangeDataX	(	8141	,	40	,	8828	,	1	)
ExchangeDataX	(	8141	,	50	,	8830	,	1	)
ExchangeDataX	(	8141	,	60	,	8831	,	1	)
ExchangeDataX	(	8141	,	70	,	8832	,	1	)
--���� �����
ExchangeDataX	(	8141	,	20	,	8835	,	1	)
ExchangeDataX	(	8141	,	30	,	8833	,	1	)
ExchangeDataX	(	8141	,	40	,	8834	,	1	)
ExchangeDataX	(	8141	,	50	,	8836	,	1	)
ExchangeDataX	(	8141	,	60	,	8837	,	1	)
ExchangeDataX	(	8141	,	70	,	8838	,	1	)
--���� ���
ExchangeDataX	(	8141	,	20	,	8841	,	1	)
ExchangeDataX	(	8141	,	30	,	8839	,	1	)
ExchangeDataX	(	8141	,	40	,	8840	,	1	)
ExchangeDataX	(	8141	,	50	,	8842	,	1	)
ExchangeDataX	(	8141	,	60	,	8843	,	1	)
--ExchangeDataX	(	8141	,	70	,	8844	,	1	)
	
	
	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0025	)
	Weapon(	0032	)
	Weapon(	0026	)
	Weapon(	0033	)
	Weapon(	0027	)
	Weapon(	0034	)
	Weapon(	1400	)
	Weapon(	1401	)
	Weapon(	1402	)
	Weapon(	1403	)
	Weapon(	1404	)
	Weapon(	1405	)
	Weapon(	0037	)
	Weapon(	0038	)
	Weapon(	0039	)
	Weapon(	0044	)
	Weapon(	0040	)
	Weapon(	0045	)
	Weapon(	1406	)
	Weapon(	1407	)
	Weapon(	1408	)
	Weapon(	1409	)
	Weapon(	1413	)
	Weapon(	1414	)

	Other(		)
	Other(		)
	Other(		)

	AddNpcMission	(723 )
	AddNpcMission	(1041)
	AddNpcMission	(1093)
	AddNpcMission	(1152)
	AddNpcMission	(1204)
	AddNpcMission(	1233	)
	


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����������

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[�ӻ����ˡ���³]			--
--							--
--		135671,48320				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk74 ()
	Talk( 1, "������: ������, � ���������� �� ������. ����� �������� ������ ����. ������� �� 10 ������ - ������ ����, ��� ���� ������� ��������� ���-������. �� ������ ��� ���� � ����� �����. ��� ���� ������?" )
	Text( 1, "����", BuyPage )
	Text( 1, "������...",CloseTalk )
	Text( 1, "�������� ����� ����������",JumpPage, 2 )

	InitTrade()
	
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other( 3296 )
	--baby--�������Lv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--Leo
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
	--Other(	3288	)
	--Other(  2440    )
	Other(	854	)


	AddNpcMission	(1052)
	AddNpcMission	(1106)
	AddNpcMission	(1162)
	AddNpcMission	(1214)
	AddNpcMission	(181)
	AddNpcMission	(182)
	AddNpcMission	(183)
	AddNpcMission	(1234)
	--AddNpcMission	(5502)

	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "����� ���������� ����� 1 ���������� ������, 10000 ������� � 10 ������ ����� ��������� �������� 3 ��." )
	Text( 2, "������� ����� �� ����� ����������", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "Exchange Razor Tooth for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "����������� ����� �� ����� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "������� ������ �� ����� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "������� ����-��� �� ����� ����������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "��������� ��� � ����." )
	Talk( 4, "������: � ����, ������, ������������ �����. �����, ���� ������ ������������ ��� �� ������� ��������� �����." )
end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ӻ����ˡ���³

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[ҩ���ϰ塤���]			--
--							--
--		135298,49926				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk75 ()
	
	
	Talk( 1, "�����: ��� ��������! ��������� ����! � ���� ������ ����� �� ���� ������." )
	Text( 1, "����", BuyPage )
	Text( 1, "������...",CloseTalk )
	
	Talk( 2, "����� ������. �� ��� ������ 9-�� ������. ��� ������ �� ���������� 10-�� ������, �� ������� ������� ���� ������ ���������. ������ ��������� - ������ � ������� (2192, 2767) ���� �� ������ ���� ��������. ����� ���������� ����� ������� � ������� (862, 3500) ���� �� ������ ����� ���������. ����� ����� ���������, ������ ������� ��� �� ������ (1365, 570). �������������� ������� ����� ������� �� ������� (2193, 2730). ��� �������� ����������� ����� �������� �� ������ ��������������� �������� ������������." )
	Text( 2, "����", BuyPage )
	Text( 2, "������...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
		Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)
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

	---------------------��ҳ���9��
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerFailure( 1, JumpPage, 1 )
	--Start( GetMultiTrigger(), 1 )

	AddNpcMission	(727 )
	AddNpcMission	(735 )
	AddNpcMission	(746 )
	AddNpcMission	(747 )
	AddNpcMission	(1047)
	AddNpcMission	(1101)
	AddNpcMission	(1158)
	AddNpcMission	(1209)
	AddNpcMission(	1235	)
---------eleven	
	AddNpcMission(	5067)
	AddNpcMission(	593)
	AddNpcMission(	594	)
	AddNpcMission(	596	)	

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ҩ���ϰ塤���


----------------------------------------------------------
--							--
--							--
--		���Ǳ�[��ʿС�㡤����]			--
--							--
--		131725,50169				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk76 ()
	
	
	Talk( 1, "����: ������! � ��������� ����. � ���� �� ������������� ����� � �� ���� ��� ��������." )
	AddNpcMission	(1018)
	AddNpcMission	(1073)
	AddNpcMission	(1128)
	AddNpcMission	(1181)
	AddNpcMission(	1236	)
	



	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��ʿС�㡤����

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[����ָ��������¶��]		--
--							--
--		131577,50700				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk77 ()
	
	
        Talk( 1, "������: ������, ���� ����� ������. � �������� ���� � ����� � ������. �������, ���� ���������� ���� ����������� ����!" )
	--Text( 1, '������ ��������', JumpPage, 31 )
	--Text( 1, '������ ��������', JumpPage, 31 )
	Text( 1, '������ ��������', SendExchangeXData )
	InitExchangeX()
	ExchangeDataX	(		8142	,	5	,	1033	,	1	)
	Text( 1, "��� �������� �� ��� � ��� ��������", JumpPage, 4 )
	Text( 1, "� ������� � ���������", JumpPage, 11 )
	Text( 1, "������ ������������ ��������", JumpPage, 30 )
	Text( 1, "��� ��� ����", CloseTalk )
--	Text( 1, "��� ��� ����", CloseTalk )


	Talk( 4, "��� �� ��� �����, ����� ������ ������� ������. ����� � ��������� ���������� �����, �� ������ ��������� �������� ����������� ���� � ����������." )
	Text( 4, "��������� �����", JumpPage, 5 )
	Text( 4, "������� ��������", JumpPage, 7 )
	Text( 4, "���������� �����", JumpPage, 8 )
	Text( 4, "����������", JumpPage, 9 )
	Text( 4, "����", JumpPage, 10 )

	Talk( 5, "������ ��� �� �� � ������� ������� �� ����������. ������ ��� ����� ����� �������. �� ������ ����� ������ ������, ��������� �� ������� ����� ���-������ � ��� ����." )
	Text( 5, "������ � ������ ���������", JumpPage, 4 )
	Text( 5, "��� ��� ����", CloseTalk )

--	Talk( 6, "Look for me again if there is anything you don't understand", CloseTalk )

	Talk( 7, "����� ������ �������, �������� � ��������. �� ������ � ������ �������. ����� ��� � ������ ������ ���� ����� ������." )
	Text( 7, "������ � ������ ���������", JumpPage, 4 )
	Text( 7, "��� ��� ����", CloseTalk )

	Talk( 8, "������, ��������? ������� ������ ��������, � �������� ���� ������. ��� �� ������� ��� ����������� ��� �����������." )
	Text( 8, "������ � ������ ���������", JumpPage, 4 )
	Text( 8, "��� ��� ����", CloseTalk )

	Talk( 9, "��� �� ����� � ��������� � ����� ���������� ����. ��� - ���������� � ����� ����������� ���� � ������ ������. ����� ����, � ��� ����� �������� ����� �����������." )
	Text( 9, "������ � ������ ���������", JumpPage, 4 )
	Text( 9, "��� ��� ����", CloseTalk )

	Talk( 10, "������� - ��� �� ���� �� ������ ������� �������. ���� ��������� ��� ������ �����, �� ������ ���������� � ���." )
	Text( 10, "������ � ������ ���������", JumpPage, 4 )
	Text( 10, "��� ��� ����", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 10 )
	TriggerAction( 1, SetFlag, 700, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "������: ��������� �� �������, ���� ������� ������� ����������� � ��������� ������� � ����������. ��� �� ������ �����?" )
	Text( 11, "������", JumpPage, 12)
	Text( 11, "��������������", JumpPage, 13)

	--Text( 11, "������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 20 )
	TriggerAction( 1, SetFlag, 700, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "��������������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "������: � ���� ���� 4 ������� ������. � ������ ���� ����� ����� � ���� ���� � ����. ��� �� �� ����� �����?" )
	Text( 12, "������", JumpPage, 14 )
	Text( 12, "�������", JumpPage, 15 )
--	Text( 12, "Regarding Sailor", JumpPage, 16 )
	Text( 12, "�������������", JumpPage, 17 )
	Text( 12, "��������", JumpPage, 18 )
--	Text( 12, "Regarding Artisan", JumpPage, 19 )
--	Text( 12, "Regarding Merchant", JumpPage, 20 )
	Text( 12, "�������. ������ ��� ���-������...", JumpPage, 11 )

	Talk( 13, "������: � ������� ��������� ���� 5 �������� �������������. ������ ����� �������� �� � �������������� ��������� ���� ������. ������ ����� ������� �������� ������ 1 ����� ��������� � 1 ����� ������. ����������� ������ ������ 5 ������� ��������������." )
	Text( 13, "����", JumpPage, 21 )
	Text( 13, "��������", JumpPage, 22 )
	Text( 13, "������������", JumpPage, 23 )
	Text( 13, "���", JumpPage, 24 )
	--Text( 13, "Regarding Luck", JumpPage, 25 )
	Text( 13, "��������", JumpPage, 26 )
	Text( 13, "�������. ������ ��� ���-������...", JumpPage, 11 )

	Talk( 14, "������: ������� ����� ������� ����� ������� ���������� ������������� � ����. ���� ����� �������� ����������-�������� �� ���������� 10 ������. ����� ����� ��������, ����� ������ � �������." )
	Text( 14, "������ ������", JumpPage, 12)
	Text( 14, "��������������", JumpPage, 13)
	Text( 14, "��� ��� ����", JumpPage, 27)

	Talk( 15, "������: ������� - ��� ������������ ����� � ����, ������� ���������� ������ �������� ��������. ����� ������� ������ ������������� ����� ��������� ����� ������������ ������������� ������, ��� ������� ������ ����. ���������� ����� ����� ������ ���� � ������. ��� ����� ��������� ������ 10 ������ ���������� � ������� ��� � ����� ������." )
	Text( 15, "������ ������", JumpPage, 12)
	Text( 15, "��������������", JumpPage, 13)
	Text( 15, "��� ��� ����", JumpPage, 27)

	Talk( 16, "Angela: Sailor is the strongest class in the sea. It is still unreleased in current version." )
	Text( 16, "������ ������", JumpPage, 12)
	Text( 16, "��������������", JumpPage, 13)
	Text( 16, "��� ��� ����", JumpPage, 27)
	
	Talk( 17, "������: ������������� - ����� ������ �������� �� ����� ����������� �� ����. ����� �� ����� ��� ��� ���� ����������, �� ����������� �������. ����� ����� ��������������, � ����� ��������������, ������� 10 ������ � ���� ����� ���������� � ������� �������� � �������." )
	Text( 17, "������ ������", JumpPage, 12)
	Text( 17, "��������������", JumpPage, 13)
	Text( 17, "��� ��� ����", JumpPage, 27)

	Talk( 18, "������: �������� � ������ ������������� ������ ����. ��� �������� ��������� ����� ���������. ������ ������ � ��� ����� ����� ����������. ��������� 10 ������ ������ �������� ���������� ����� ������� � �������, ����� ����� ����������." )
	Text( 18, "������ ������", JumpPage, 12)
	Text( 18, "��������������", JumpPage, 13)
	Text( 18, "��� ��� ����", JumpPage, 27)

	Talk( 19, "Angela: Angela: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version." )
	Text( 19, "������ ������", JumpPage, 12)
	Text( 19, "��������������", JumpPage, 13)
	Text( 19, "��� ��� ����", JumpPage, 27)

	Talk( 20, "Angela: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version." )
	Text( 20, "������ ������", JumpPage, 12)
	Text( 20, "��������������", JumpPage, 13)
	Text( 20, "��� ��� ����", JumpPage, 27)

	Talk( 21, "������: ���� ����������� �������� ����� � ������� ���" )
	Text( 21, "������ ��������������", JumpPage, 13)
	Text( 21, "������ ������", JumpPage, 12)
	Text( 21, "��� ��� ����", JumpPage, 27)

	Talk( 22, "������: �������� �������� �������� ����� � ���� ���������" )
	Text( 22, "������ ��������������", JumpPage, 13)
	Text( 22, "������ ������", JumpPage, 12)
	Text( 22, "��� ��� ����", JumpPage, 27)

	Talk( 23, "������: ������������ �������� ������������ ���������� ����� � ���������� �������������" )
	Text( 23, "������ ��������������", JumpPage, 13)
	Text( 23, "������ ������", JumpPage, 12)
	Text( 23, "��� ��� ����", JumpPage, 27)

	Talk( 24, "������: ��� �������� ������������ ���������� ���� � �������� �� �������������� ��� ������������� �������" )
	Text( 24, "������ ��������������", JumpPage, 13)
	Text( 24, "������ ������", JumpPage, 12)
	Text( 24, "��� ��� ����", JumpPage, 27)

	Talk( 25, "Angela: Luck increases Critical strike and Combine success rate" )
	Text( 25, "������ ��������������", JumpPage, 13)
	Text( 25, "������ ������", JumpPage, 12)
	Text( 25, "��� ��� ����", JumpPage, 27)

	Talk( 26, "������: �������� �������� ���� ������������� ����� � ���� ��������� �����" )
	Text( 26, "������ ��������������", JumpPage, 13)
	Text( 26, "������ ������", JumpPage, 12)
	Text( 26, "��� ��� ����", JumpPage, 27)

	Talk( 27, "������: ������. ���� ��������� �������, ������ ������ ���� ������!")

	Talk( 28, "������: �������, ������, ������ � ���� ���� ��������� �������� ������ �������, � ����� ����, ��� ���� � ����� ����� ������� ��������� ������. ������, � ������ ���� ������ �����, ��� ����� ����. �� ������ ������������� � ����� ��������? ���� �� ������ ���������, ����� ��������� ������. ��������� ��� ��� ������ � (958, 3549). �� ����� ������ ��������� ����� (903, 3646) - ����������� ����� �������. � ��������� ����� ��� ������ ����������, ������� ������ �� ������� ����������� ��� ��������." )
	Text( 28, "��� �������� �� ��� � ��� ��������", JumpPage, 4 )
	Text( 28, "� ������� � ���������", JumpPage, 11 )
	Text( 28, "��� ��� ����",  CloseTalk )

	Talk( 29, "����� ������. �� ��� ������ 9-�� ������. ��� ������ �� ���������� 10-�� ������, �� ������� ������� ���� ������ ���������. ������ ��������� - ������ � ������� (2192, 2767) ���� �� ������ ���� ��������. ����� ���������� ����� ������� � ������� (862, 3500) ���� �� ������ ����� ���������. ����� ����� ���������, ������ ������� ��� �� ������ (1365, 570). �������������� ������� ����� ������� �� ������� (2193, 2730). ��� �������� ����������� ����� �������� �� ������ ��������������� �������� ������������." )
	Text( 29, "��� �������� �� ��� � ��� ��������", JumpPage, 4 )
	Text( 29, "� ������� � ���������", JumpPage, 11 )
	Text( 29, "��� ��� ����",  CloseTalk)

	Talk( 30, "������: ����� ��������, ��� ��������� ��������, ���������� ��������� �������� � ���� ������� (2222, 2889). �� ����� �� ������� ���� ����������." )

	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )

	Talk( 31, "������: ������ �������� - ������������ ������� �� ������� ����. ��� �������� ���� ������������ ���� ��������, � �����... �� ����, ��� �����. ��� ������ � ������� ���� 41 ����� �������� ������ �������� �� ������� ����������. ���� ��� ����������?" )
	Text( 31, "�������� ������ ��������",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "�������� ������ ��������",JumpPage, 32 )

	Talk( 32, "���������� �� ����� ����� �������. ���� � ���� ���� '������ ��������', ������ �������� ������ 50 ��. ��� ����� ���������. ���������, ������?")
	Text( 32, "�������� ������ �� ���� �����", Transfer_TeamStar, 1)

	Talk( 6, "������: ������, �� �� �� �������������� ������ �����������" )

	--InitTrigger()
	---------------------��ҳ���6����ɹ�ɪ����ս��ѵ������
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 9 )
	--TriggerCondition( 1, HasRecord, 716 )
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )

	
	AddNpcMission	(721 )
	AddNpcMission	(722 )
	AddNpcMission	(724 )
	AddNpcMission	(726 )
	AddNpcMission	(728 )
	AddNpcMission	(201 )
	AddNpcMission	(406)
	--AddNpcMission	(62)
	--AddNpcMission	(63)
	--AddNpcMission	(64)
	--AddNpcMission	(65)
	AddNpcMission	(162)
	AddNpcMission	(163)
	AddNpcMission	(173)
	AddNpcMission	(190)


	MisListPage(28)
	MisListPage(29)

end 

--���: ������ �� ������ - ���
--�����: ������
--���������: 1365,570
function r_talk78 ()

	InitTrigger()
	TriggerCondition( 1, CheckRase, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, CheckRase, 2 )
	TriggerAction( 2, JumpPage, 1 )
	TriggerCondition( 3, CheckRase, 3 )
	TriggerAction( 3, JumpPage, 2 )
	TriggerCondition( 4, CheckRase, 4 )
	TriggerAction( 4, JumpPage, 1 )
	Start( GetMultiTrigger(), 4 )

	Talk( 1, "���: ������ � ������� �������. � ����� ��������� �� ������. ��� �� � ������� ���������� ���� ���������. � ��������� � �� ���� ���� �������." )

	Talk( 2, "���: ������ � ������� �������. � ����� ��������� �� ������. ��� �� � ������� ���������� ���� ���������, ������� �� ��� ����� ���������� 10 ������." )

	Text( 2, "����� ���������", JumpPage, 3 )
	Text( 2, "����� ��������", JumpPage, 6 )
	Text( 2, "���������� ������",BuyPage)

	InitTrade()
	Other(	3187	)
	Other(	3188	)
	Other(	3190	)
	Other(	3239	)
	Other(	3197	)
	Other(	3193	)
	Other(	3241	)
	Other(	3192	)
	Other(	3198	)
	Other(	3202	)
	Other(	3203	)
	Other(	3204	)


	Talk( 3, "���: ������, ��� ������� ����! ���� ��� ��������� ����? ����, � ���� ���� ������� ���������� ��������, �� ����, ��� ��������� ���������� ���� 1 ��� � ��������. �� ����� ����� ��������� ��������?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, SetProfession, 2  )
	TriggerAction( 1, GiveItem, 3187, 1, 4 )
	TriggerAction( 1, GiveItem, 25, 1, 4 )
	TriggerAction( 1, JumpPage, 4 )
	TriggerAction( 1, Starteffect , 366)
	TriggerCondition( 2, LvCheck, ">", 9 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasLeaveBagGrid, 3 )
	TriggerCondition( 2, HasMoney, 5000 )
	TriggerAction( 2, TakeMoney, 5000 )
	TriggerAction( 2, SetProfession, 2  )
	TriggerAction( 2, GiveItem, 3187, 1, 4 )
	TriggerAction( 2, GiveItem, 25, 1, 4 )
	TriggerAction( 2, JumpPage, 4 )
	TriggerAction( 2, Starteffect , 366)
	TriggerFailure( 2, JumpPage, 5 )
	Text( 3, "��, � ����� ����� ���������",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, "��� ����� ��� ��������", CloseTalk)

	Talk( 4, "���: ����������! �� ������ ��������, ������ �� �������! ��� ���� ���, ���� ������ � ������ �� �����!")

	Talk( 5, "���: � ��������� ������ �������, ��� �� ����� ��������� �� ���������. ��������� ����� ����� ���� ��� ������. ���������� ����� 10 �������. ��� �� � ���� �� ������ ���� �� ����� ������ ��������.")

	Talk( 6, "���: ������, ��� ������� ����! ���� ��� ��������� ����? ����, � ���� ���� ������� ���������� ��������, �� ����, ��� ��������� ���������� ���� 1 ��� � ��������. �� ����� ����� ��������� ��������?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, CheckRase, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, CheckConvertProfession, MIS_GUNMAN )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, SetProfession, 12 )
	TriggerAction( 1, Starteffect , 366)
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, CheckRase, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, CheckConvertProfession, MIS_GUNMAN )
	TriggerCondition( 2, HasLeaveBagGrid, 2 )
	TriggerCondition( 2, HasMoney, 50000 )
	TriggerAction( 2, TakeMoney, 50000 )
	TriggerAction( 2, SetProfession, 12 )
	TriggerAction( 2, Starteffect , 366)
	TriggerFailure( 2, JumpPage, 7 )
	Text( 6, "��, � ����� ����� ���������",MultiTrigger, GetMultiTrigger(), 2)
	Text( 6, "��� ����� ��� ��������", CloseTalk)

	Talk( 7, "���: � ��������� ������ �������, ��� �� ����� �������� �� ���������. �������� ����� ����� ���� ��� ������. ���������� ����� 40 �������. ��� �� � ���� ������ ���� 1 ��������� ��������.")
	AddNpcMission	(101)	--����� ��������
	AddNpcMission	(251)	--����������� �� �����(����������)
	AddNpcMission	(252)	--��������� � ������
	AddNpcMission	(260)	--�������� ��������(����������)
	AddNpcMission	(261)	--���������� �������������
--	AddNpcMission	(410)	--�������� ������
	AddNpcMission	(757)	--����������
	AddNpcMission	(167)	--������ ���(����������)
	AddNpcMission	(168)	--������ �� �����
	AddNpcMission	(169)	--������ �����
	--AddNpcMission	(174)	--������� ��������(���������� �� ����������)
	AddNpcMission	(175)	--������� ��������
	AddNpcMission	(176)	--������� ��������
	AddNpcMission	(180)	--������� ��������(����������)
	AddNpcMission	(523)	--����������� ����
--	AddNpcMission	(1237)	--���������

	AddNpcMission	(5057)	--�������� ���� ��(����������)
	AddNpcMission	(5061)	--������� ���
	AddNpcMission	(5069)	--������� � �������������

	AddNpcMission	(5168)	--��� �� ���� �������������?
	AddNpcMission	(5090)	--������(����������)
	AddNpcMission	(5097)	--������ ������� 1
	AddNpcMission	(5098)	--������ ������� 2
	AddNpcMission	(5099)	--������ ������� 3
	AddNpcMission	(5100)	--������ ������� 4
	AddNpcMission	(5111)	--������
    AddNpcMission	(6125)	--The Sixth Task
	MisListPage(2)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���Ǳ���ʿ����ŷ

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[���Ǳ��̻�᳤��������]		--
--							--
--		129486,49842				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk79 ()
	
	
	Talk( 1, "�����: � �����, ��� ����� ���������� �����. ������! � ������������ ������ - �����. ����� ������� ������� � ������." )
	Text( 1, "����������� ����������������� �����", JumpPage, 5)

	--------------------���������
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3138, 2 )
	TriggerCondition( 1, HasItem, 3137, 2 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3138, 2 )
	TriggerAction( 1, TakeItem, 3137, 2 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3139, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 5, "�����: �����, ������� ������� ����� - ����� ������� �����. ���� � ���� ���� ������ ��������������� �����." )
	Text( 5, "������� ����������",MultiTrigger, GetMultiTrigger(), 1)

	----------------�ϳ�ħ��ҩˮ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3133, 1 )
	TriggerCondition( 1, HasItem, 3134, 1 )
	TriggerCondition( 1, HasItem, 3135, 1 )
	TriggerCondition( 1, HasItem, 3136, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3133, 1 )
	TriggerAction( 1, TakeItem, 3134, 1 )
	TriggerAction( 1, TakeItem, 3135, 1 )
	TriggerAction( 1, TakeItem, 3136, 1 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3140, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "����������� ��������� �����",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�� ������ ������� ���������? ������������� ��������� �������." )
	Talk( 7, "�����: � ���� ���� ����������. �� ������ ���� �������� �������� ��� 2 ���������� ������, 2 ���������, 1 ������� � 200 �������." )
	Talk( 8, "�����: � ���� � ����� ���� ��������� �����. ������ ������� ��� 1 ��������� �����, 1 ��� '��������', 1 ����-����, 1 ������ ������� �����, 1 ������� � 200 �������." )

	AddNpcMission	(459)
	AddNpcMission	(465)
	AddNpcMission	(699)
	AddNpcMission	(800)
	AddNpcMission	(1005)
	AddNpcMission	(1060)
	AddNpcMission	(1115)
	AddNpcMission	(1169)
	AddNpcMission(	1238	)
	--------------------1.7
	AddNpcMission	(5084	)
	AddNpcMission	(5085	)
	AddNpcMission	(5086	)
	AddNpcMission	(5087	)
	AddNpcMission	(5143 )
	AddNpcMission	(5144 )
	AddNpcMission	(5145 )
	AddNpcMission	(5146 )
	AddNpcMission	(5151 )



end 

function r_talk80 ()
	
	
	Talk( 1, "���: ������� ���� ����� ��� �� ������, ��� ����� ������. ����� ��� ����� � ������� ����." )
	Text( 1, "� ��������� ��������",JumpPage, 2 )
	Text( 1, "������...",CloseTalk )


	Talk( 2, "���: ��-��-�� ��������� �����? ������ �������� �����? ��� ������� �� ����� ������������." )
	InitTrigger()
	--TriggerCondition( 1, HasCredit, 300 )
	--TriggerCondition( 1, HasMoney, 400000 )
	--TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerCondition( 1, NoGuild )
	TriggerAction( 1, CreateGuild, 1 )
	--TriggerAction( 1, TakeMoney, 400000 )
	--TriggerAction( 1, TakeCredit, 300 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "������� ��������� �������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "���: �� ������� ��� ���� ���� ������� �������. ������� 400 000 ������� � ������ ������ � �� ������ ����� 300 ���������, ����� ��������, ��� �� ������� �����" )

	AddNpcMission	(253)	--1-��������� � ������(����������)
	AddNpcMission	(254)	--2-�����������
	AddNpcMission	(453)	--3-������� ���������(����������)
	AddNpcMission	(698)	--4-���������� �����
	AddNpcMission	(801)	--5-�������� ����
	AddNpcMission	(1004)	--6-������ �������
	AddNpcMission	(1059)	--7-����� ��������
	AddNpcMission	(1114)	--8-����� ��������
	AddNpcMission	(1168)	--9-����� �������������
	AddNpcMission	(317)	--10-����� ������
	AddNpcMission	(321)	--11-���� �������
	AddNpcMission	(322)	--12-� �� �� �����!(����������)
	AddNpcMission	(5045)	--13-������� �������� �����
	AddNpcMission	(5046)	--14-���� �����
	AddNpcMission	(5047)	--15-����� �����
	AddNpcMission	(6316)	--16-������� �������(����������)
	AddNpcMission	(6317)	--17-���� � ���������

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���Ǳ����塤�����˹

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[���г��ɡ�������]		--
--							--
--		136058,51931				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk81 ()
	
	
	Talk( 1, "�������: ����� ���������� � ���� ������. � ���� ��� ���-�� ������?" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 3000 )
	TriggerAction( 1, TakeMoney, 3000 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� (����� 3000 ���.)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "������, ������, � ���� �� ������� �����" )

	AddNpcMission	(1102)
	AddNpcMission	(187)
	AddNpcMission	(188)
	AddNpcMission	(189)
----------eleven
	AddNpcMission	(597)
	AddNpcMission	(598)
	AddNpcMission	(6093 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<���г��ɡ�������

-----------------------------------------------------------
--							--
--							--
--		���Ǳ�[�ưɷ���Ա���Ű���]		--
--							--
--		131083,53031				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk82 ()
	
	
	Talk( 1, "������: ������, ���� ��� ����������?" )

	--Text( 1, "������ ������������� ������ (����� ���������)", JumpPage,9 )
--	Text( 1, "Sailor Completion Reward", JumpPage,11 )
--	Text( 1, "Pirate Completion Reward", JumpPage,12 )
--	Text( 1, "Captain completion reward", JumpPage,13 )
	Text( 1, "����������� ��������� ��� �����", JumpPage, 2)
	Text( 1, "����������� �������", JumpPage, 6)


	Talk( 9, "������: ������, ����������, ������� ��������� �� ������ �� ��������. ��� ���� ����� ������� ���������, ��� ������ ������ ���� �� ������. �� ��� ������ �����? ������ ��� ������, ������, �� �������." )

	InitTrigger()
	TriggerCondition( 1, NoRecord,1112 )
	TriggerCondition( 1, NoRecord,1113 )
	TriggerCondition( 1, HasItem, 2943, 1 )---------��ţ��Ʊ
	TriggerAction( 1, TakeItem, 2943, 1 )----------��ţ��Ʊ
	TriggerAction( 1, SetRecord, 1111 )
	TriggerAction( 1, SetRecord, 1152 )
	TriggerAction( 1, JumpPage, 10 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 9, "�����",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1111 )
	TriggerCondition( 1, NoRecord,1113 )
	TriggerCondition( 1, HasItem, 2943, 1 )---------��ţ��Ʊ
	TriggerAction( 1, TakeItem, 2943, 1 )----------��ţ��Ʊ
	TriggerAction( 1, SetRecord, 1112 )
	TriggerAction( 1, SetRecord, 1152 )
	TriggerAction( 1, JumpPage, 10 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 9, "�����",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1111 )
	TriggerCondition( 1, NoRecord,1112 )
	TriggerCondition( 1, HasItem, 2943, 1 )---------��ţ��Ʊ
	TriggerAction( 1, TakeItem, 2943, 1 )----------��ţ��Ʊ
	TriggerAction( 1, SetRecord, 1113 )
	TriggerAction( 1, SetRecord, 1152 )
	TriggerAction( 1, JumpPage, 10 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 9, "�������",MultiTrigger, GetMultiTrigger(), 1)

	Talk(10, "������: � ������� - �� �������� ���!" )
	Talk( 13, "������: ��� ��������� �� ������ ������ ������� ��������� ����� ������� ������ ���� ���. � �������, ����������, ��� ����� �� ������ ������ � ���� � �����.")

--	InitTrigger()
--	TriggerCondition( 1, HasRecord,1111 )
--	TriggerCondition( 1, HasItem, 3028, 1 )
--	TriggerCondition( 1, HasItem, 3029, 1 )
--	TriggerCondition( 1, HasItem, 3030, 1 )
--	TriggerCondition( 1, HasItem, 3031, 1 )
--	TriggerCondition( 1, HasItem, 3032, 1 )
--	TriggerCondition( 1, HasItem, 3033, 1 )
--	TriggerCondition( 1, HasItem, 3034, 1 )
--	TriggerCondition( 1, HasLeaveBagGrid, 3 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3028, 1 )
--	TriggerAction( 1, TakeItem, 3029, 1 )
--	TriggerAction( 1, TakeItem, 3030, 1 )
--	TriggerAction( 1, TakeItem, 3031, 1 )
--	TriggerAction( 1, TakeItem, 3032, 1 )
--	TriggerAction( 1, TakeItem, 3033, 1 )
--	TriggerAction( 1, TakeItem, 3034, 1 )
--	TriggerAction( 1, SetLog  , 0 )-------------??????
--
--	TriggerAction( 1, GiveItem, 3026, 1 , 4)
--	TriggerAction( 1, GiveItem, 3027, 1 , 4)
--	TriggerAction( 1, GiveItem, 0227, 10 , 4)
--	TriggerAction( 1, AddMoney, 100000 )
--	TriggerAction( 1, JumpPage, 15 )
--	TriggerFailure( 1, JumpPage, 16 )
--	Talk( 11, "Babara: Collect all 7 badges to exchange for Aries Protector Seal and the Ticket for the next Palace. There are also more prizes available." )
--	Text( 11, "����������� to exchange",MultiTrigger_1, GetMultiTrigger(), 1)--------------------?????????
--
--
--
--	InitTrigger()
--	TriggerCondition( 1, HasRecord,1112 )
--	TriggerCondition( 1, HasItem, 3028, 1 )
--	TriggerCondition( 1, HasItem, 3029, 1 )
--	TriggerCondition( 1, HasItem, 3030, 1 )
--	TriggerCondition( 1, HasItem, 3031, 1 )
--	TriggerCondition( 1, HasItem, 3032, 1 )
--	TriggerCondition( 1, HasItem, 3033, 1 )
--	TriggerCondition( 1, HasItem, 3034, 1 )
--	TriggerCondition( 1, HasLeaveBagGrid, 3 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3028, 1 )
--	TriggerAction( 1, TakeItem, 3029, 1 )
--	TriggerAction( 1, TakeItem, 3030, 1 )
--	TriggerAction( 1, TakeItem, 3031, 1 )
--	TriggerAction( 1, TakeItem, 3032, 1 )
--	TriggerAction( 1, TakeItem, 3033, 1 )
--	TriggerAction( 1, TakeItem, 3034, 1 )
--
--	TriggerAction( 1, GiveItem, 3026, 1 , 4)
--	TriggerAction( 1, GiveItem, 3027, 1 , 4)
--	TriggerAction( 1, GiveItem, 0227, 20 , 4)
--	TriggerAction( 1, AddMoney, 200000 )
--	TriggerAction( 1, JumpPage, 15 )
--	TriggerFailure( 1, JumpPage, 16 )
--	Talk( 11, "Babara: Collect all 7 Emblems to exchange for Taurus Protector Seal and Gemini Gate Ticket. There are also other prizes available." )
--	Text( 11, "����������� to exchange",MultiTrigger, GetMultiTrigger(), 1)
--
--
--	InitTrigger()
--	TriggerCondition( 1, HasRecord,1113 )
--	TriggerCondition( 1, HasItem, 3028, 1 )
--	TriggerCondition( 1, HasItem, 3029, 1 )
--	TriggerCondition( 1, HasItem, 3030, 1 )
--	TriggerCondition( 1, HasItem, 3031, 1 )
--	TriggerCondition( 1, HasItem, 3032, 1 )
--	TriggerCondition( 1, HasItem, 3033, 1 )
--	TriggerCondition( 1, HasItem, 3034, 1 )
--	TriggerCondition( 1, HasLeaveBagGrid, 3 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3028, 1 )
--	TriggerAction( 1, TakeItem, 3029, 1 )
--	TriggerAction( 1, TakeItem, 3030, 1 )
--	TriggerAction( 1, TakeItem, 3031, 1 )
--	TriggerAction( 1, TakeItem, 3032, 1 )
--	TriggerAction( 1, TakeItem, 3033, 1 )
--	TriggerAction( 1, TakeItem, 3034, 1 )
--
--	TriggerAction( 1, GiveItem, 3026, 1 , 4)
--	TriggerAction( 1, GiveItem, 3027, 1 , 4)
--	TriggerAction( 1, GiveItem, 0227, 30 , 4)
--	TriggerAction( 1, AddMoney, 300000 )
--	TriggerAction( 1, JumpPage, 15 )
--	TriggerFailure( 1, JumpPage, 16 )
--	Talk( 12, "Babara: Collect all 7 Taurus Emblem to exchange with me for Taurus Protector Seal and Gemini Gate Ticket. There are also more prizes available." )
--	Text( 12, "����������� to exchange",MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk( 16, "Babara: You don't seem to have enough emblems on you! Please check if your bag is locked, and please make sure you have 3 slots in your inventory! Are you sure you want to choose this difficulty?")
--	Talk( 15, "Babara: Next Palace is Gemini Palace, and please continue your effort!")


-----------������ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1792, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1792, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1802, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "������: ������! ����� ���-������ ����������? ����������!" )
	Text( 2, "������� ����� ���������", MultiTrigger, GetMultiTrigger(), 1)
-------------------------������ɫȾ����
	InitTrigger()
	TriggerCondition( 1, HasItem, 1793, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1793, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1803, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "������� ��������� ���������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "������: � ��������� �������� ������ ��� ����. ��������� ���." )
	Talk( 4, "������: ��� ������������� ������ ��������� ����������� ����� ������ (5), ������ ��� (1), 1 �������� ������ � 200 �������." )
	Talk( 5, "������: ��� ������������ ���������� ��������� ����� ��������� ������ (5), ������ ��� (1), 1 �������� ������ � 200 �������." )

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6, "������: � ������������ � ������ ����, ��� ����������� ��� ����������� ������. ������� ���� ���������?" )
	Text( 6, "������� ��� ����������� ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "������: ���� ��� ����������� ������ � ������� ��� ����." )

	Talk( 8, "������: ��������, �� ��� ����, ����� ������� �������, ��� ���������� 10 ���������� ������� � 1 ������." )
	AddNpcMission	(1078)
	AddNpcMission	(389)
---------------------�Ű���
	---------------��ţ
	AddNpcMission	(5608)
	AddNpcMission	(5609)
	AddNpcMission	(5610)
	AddNpcMission	(5611)
	AddNpcMission	(5612)
	AddNpcMission	(5613)

	AddNpcMission	(5614)
	AddNpcMission	(5615)
	AddNpcMission	(5616)
	AddNpcMission	(5617)
	AddNpcMission	(5618)
	AddNpcMission	(5619)
	AddNpcMission	(5620)
	AddNpcMission	(5621)
	AddNpcMission	(5622)
	AddNpcMission	(5623)
	AddNpcMission	(5624)

	AddNpcMission	(5667)
	--AddNpcMission	(5668)

	AddNpcMission	(5670)
	AddNpcMission	(5671)
	AddNpcMission	(5672)
--	AddNpcMission	(5673)
	AddNpcMission	(5675)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ưɷ���Ա���Ű���

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[��װ����������]		--
--							--
--		134926,53992				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk83 ()
	
	
	Talk( 1, "�����: ������� ������ � ������� ������ ������. � ��� ������ ����� ������ ������." )
	Text( 1, "����", BuyPage )
	Text( 1, "������...",CloseTalk )
	
	InitTrade()
	Defence(	0305	)
	Defence(	0481	)
	Defence(	0657	)
	Defence(	0313	)
	Defence(	0487	)
	Defence(	0665	)
	Defence(	0306	)
	Defence(	0482	)
	Defence(	0658	)
	Defence(	0311	)
	Defence(	0489	)
	Defence(	0663	)
	Defence(	0307	)
	Defence(	0483	)
	Defence(	0659	)
	Defence(	0314	)
	Defence(	0490	)
	Defence(	0666	)
	Defence(	0310	)
	Defence(	0486	)
	Defence(	0662	)
	Defence(	0491	)
	Defence(	0315	)
	Defence(	0667	)
	Defence(	0312	)
	Defence(	0488	)
	Defence(	0664	)
	Defence(	0316	)
	Defence(	0492	)
	Defence(	0668	)




	AddNpcMission	(725 )
	AddNpcMission	(1067)
	AddNpcMission	(170)
	AddNpcMission	(171)
	AddNpcMission	(172)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<��װ����������

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[�õ��ϰ塤Լɪ��]		--
--							--
--		129074,54098				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk84 ()
	
	
	Talk( 1, "����: ����� ���������� � ��������� ������. � �� ������ ����." )
	AddNpcMission	(1085)
	AddNpcMission	(184)
	AddNpcMission	(185)
	AddNpcMission	(186)
	---------------�ﵺ����
	--AddNpcMission	(6179)
	--AddNpcMission	(6180)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�õ��ϰ塤Լɪ��

----------------------------------------------------------
--							--
--							--
--		���Ǳ�[·�ˡ���]		--
--							--
--		133550,46900				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function r_talk85 ()
	
	
	Talk( 1, "����: �� �� ����� ���� ���� �������? ��� ����� � �������, ������� � ����������." )
	Text( 1, "��������", JumpPage, 2)
-------------------����ؽ��ʯ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1781, 10 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1781, 10 )
	TriggerAction( 1, GiveItem, 1782, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )	
	Talk( 2, "����: � �� ������� ��������. ��� ���� ���� ������ �� ���� ��! ��-��, ������ ��� �������!" )
	Text( 2, "�������� ���������� ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "����: ��� ������� ���������� ���� ��� ����." )
	Talk( 4, "����: � ���� ������ ������������ ���������� ������� ����. ��� ����� ��� ���������� 10 �������� ����������� �������� � 200 �������." )

	AddNpcMission	(6015 )
	AddNpcMission	(6016 )
	AddNpcMission	(6019 )
	AddNpcMission	(6020 )
	AddNpcMission	(6021 )
	AddNpcMission	(6022 )
	AddNpcMission	(6023 )
	AddNpcMission	(6024 )
	-------------------·�ˡ���  -------------------------��з
	AddNpcMission	(5859 )
	AddNpcMission	(5860 )

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·�ˡ���




------------------------------------------------------------
-- ����֮��:��ʷ����:����ָ������
------------------------------------------------------------

function BT_NewUser001()

	Talk( 1, "�����: ����������, � �������� � �������. � ������� �� ������� ���� ������������� ����������������. ���� ���� ���-�� ������, ������ ����." )
	--Text( 1, '������ ��������', JumpPage, 31 )
	--Text( 1, '������ ��������', JumpPage, 31 )
	Text( 1, '������ ��������', SendExchangeXData )
	InitExchangeX()
	ExchangeDataX	(		8142	,	5	,	1033	,	1	)
	Text( 1, "������ �� �������", JumpPage, 4 )
	Text( 1, "� ������� � ���������", JumpPage, 11 )
	Text( 1, "������ ������������ ��������", JumpPage, 30 )
	Text( 1, "� ��� �����",  CloseTalk)



	Talk( 4, "������ - �����, ��� �������� ������� ���� �����. ���������." )
	Text( 4, "��������� �����", JumpPage, 5 )
	Text( 4, "������� ��������", JumpPage, 7 )
	Text( 4, "���������� �����", JumpPage, 8 )
	Text( 4, "����������", JumpPage, 9 )
	Text( 4, "� ���������", JumpPage, 10 )

	Talk( 5, "�����, ������ �������, ������� �������. ����� � ���� ��������. ��������� ���, ����� ������� ��������� � ����� ������� ���� �������." )
	Text( 5, "������ � ������ ���������", JumpPage, 4 )
	Text( 5, "� ��� �����",  CloseTalk )

--	Talk( 6, "Look for me again if there is anything you don't understand", CloseTalk )

	Talk( 7, "�������, ��������� � �������, ����� �������. ��� ������� � ������� ������ ���� ������." )
	Text( 7, "������ � ������ ���������", JumpPage, 4 )
	Text( 7, "� ��� �����",  CloseTalk )

	Talk( 8, "� ��� ���� ����� �����, ������ ����������� ������. ����� ����������� ����� ������ �� �������." )
	Text( 8, "������ � ������ ���������", JumpPage, 4 )
	Text( 8, "� ��� �����",  CloseTalk )

	Talk( 9, "���������� �������� ���� � ����� ����� �� ���� �����. ��� ���� ����� ����� �������� ����� �����������. �� ������� ����������� � �������� �����." )
	Text( 9, "������ � ������ ���������", JumpPage, 4 )
	Text( 9, "� ��� �����",  CloseTalk )

	Talk( 10, "��������� ����� ����� �������� �� �������. ��� ����� ���������, � � ��� ��� ����� ������ ���������." )
	Text( 10, "������ � ������ ���������", JumpPage, 4 )
	Text( 10, "� ��� �����", CloseTalk)

	
	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 10 )
	TriggerAction( 1, SetFlag, 700, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "�����: �� ������� - ������, ������ ������ ����� ����������� � ���������� � ���������. ��� �� ������ ������?" )
	Text( 11, "������", JumpPage, 12)
	Text( 11, "��������������", JumpPage, 13)
	Text( 11, "� ��� �����", JumpPage, 6 )
	--Text( 11, "������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 20 )
	TriggerAction( 1, SetFlag, 700, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "��������������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�����: � ���� ���� 4 ������� ������. � ������ ���� ����� ����� � ���� ���� � ����. ��� �� �� ����� �����?" )
	Text( 12, "������", JumpPage, 14 )
	Text( 12, "�������", JumpPage, 15 )
--	Text( 12, "Regarding Sailor", JumpPage, 16 )
	Text( 12, "�������������", JumpPage, 17 )
	Text( 12, "��������", JumpPage, 18 )
--	Text( 12, "Regarding Artisan", JumpPage, 19 )
--	Text( 12, "Regarding Merchant", JumpPage, 20 )
	Text( 12, "�������. ������ ��� ���-������...", JumpPage, 11 )

	Talk( 13, "�����: � ������� ��������� ���� 5 �������� �������������. ������ ����� �������� �� � �������������� ��������� ���� ������. ������ ����� ������� �������� ������ 1 ����� ��������� � 1 ����� ������. ����������� ������ ������ 5 ������� ��������������." )
	Text( 13, "����", JumpPage, 21 )
	Text( 13, "��������", JumpPage, 22 )
	Text( 13, "������������", JumpPage, 23 )
	Text( 13, "���", JumpPage, 24 )
	--Text( 13, "Regarding Luck", JumpPage, 25 )
	Text( 13, "��������", JumpPage, 26 )
	Text( 13, "�������. ������ ��� ���-������...", JumpPage, 11 )

	Talk( 14, "�����: ������� ����� ������� ����� ������� ���������� ������������� � ����. ���� ����� �������� ����������-�������� �� ���������� 10 ������. ����� ����� ��������, ����� ������ � �������." )
	Text( 14, "������ ������", JumpPage, 12)
	Text( 14, "��������������", JumpPage, 13)
	Text( 14, "� ��� �����", JumpPage, 27)

	Talk( 15, "�����: ������� - ��� ������������ ����� � ����, ������� ���������� ������ �������� ��������. ����� ������� ������ ������������� ����� ��������� ����� ������������ ������������� ������, ��� ������� ������ ����. ���������� ����� ����� ������ ���� � ������. ��� ����� ��������� ������ 10 ������ ���������� � ������� ��� � ����� ������." )
	Text( 15, "������ ������", JumpPage, 12)
	Text( 15, "��������������", JumpPage, 13)
	Text( 15, "� ��� �����", JumpPage, 27)

	Talk( 16, "Senna: Sailor is the strongest class in the sea. It is still unreleased in current version." )
	Text( 16, "������ ������", JumpPage, 12)
	Text( 16, "��������������", JumpPage, 13)
	Text( 16, "� ��� �����", JumpPage, 27)
	
	Talk( 17, "�����: ������������� - ����� ������ �������� �� ����� ����������� �� ����. ����� �� ����� ��� ��� ���� ����������, �� ����������� �������. ����� ����� ��������������, � ����� ��������������, ������� 10 ������ � ���� ����� ���������� � ������� �������� � �������." )
	Text( 17, "������ ������", JumpPage, 12)
	Text( 17, "��������������", JumpPage, 13)
	Text( 17, "� ��� �����", JumpPage, 27)

	Talk( 18, "�����: �������� � ������ ������������� ������ ����. ��� �������� ��������� ����� ���������. ������ ������ � ��� ����� ����� ����������. ��������� 10 ������ ������ �������� ���������� ����� ������� � �������, ����� ����� ����������." )
	Text( 18, "������ ������", JumpPage, 12)
	Text( 18, "��������������", JumpPage, 13)
	Text( 18, "� ��� �����", JumpPage, 27)

	Talk( 19, "Senna: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version." )
	Text( 19, "������ ������", JumpPage, 12)
	Text( 19, "��������������", JumpPage, 13)
	Text( 19, "� ��� �����", JumpPage, 27)

	Talk( 20, "Senna: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version." )
	Text( 20, "������ ������", JumpPage, 12)
	Text( 20, "��������������", JumpPage, 13)
	Text( 20, "� ��� �����", JumpPage, 27)

	Talk( 21, "�����: ���� ����������� �������� ����� � ������� ���" )
	Text( 21, "������ ��������������", JumpPage, 13)
	Text( 21, "������ ������", JumpPage, 12)
	Text( 21, "� ��� �����", JumpPage, 27)

	Talk( 22, "�����: �������� �������� �������� ����� � ���� ���������" )
	Text( 22, "������ ��������������", JumpPage, 13)
	Text( 22, "������ ������", JumpPage, 12)
	Text( 22, "� ��� �����", JumpPage, 27)

	Talk( 23, "�����: ������������ �������� ������������ ���������� ����� � ���������� �������������" )
	Text( 23, "������ ��������������", JumpPage, 13)
	Text( 23, "������ ������", JumpPage, 12)
	Text( 23, "� ��� �����", JumpPage, 27)

	Talk( 24, "�����: ��� �������� ������������ ���������� ���� � �������� �� �������������� ��� ������������� �������" )
	Text( 24, "������ ��������������", JumpPage, 13)
	Text( 24, "������ ������", JumpPage, 12)
	Text( 24, "� ��� �����", JumpPage, 27)

	Talk( 25, "Senna: Luck increases Critical Rate and Combining Rate" )
	Text( 25, "������ ��������������", JumpPage, 13)
	Text( 25, "������ ������", JumpPage, 12)
	Text( 25, "� ��� �����", JumpPage, 27)

	Talk( 26, "�����: �������� �������� ���� ������������� ����� � ���� ��������� �����" )
	Text( 26, "������ ��������������", JumpPage, 13)
	Text( 26, "������ ������", JumpPage, 12)
	Text( 26, "� ��� �����", JumpPage, 27)

	Talk( 27, "�����: ������. ���� ��������� �������, ������ ������ ���� ������!")
	
	Talk( 28, "�����: �������, ������, ������ � ���� ���� ��������� �������� ������ �������, � ����� ����, ��� ���� � ����� ����� ������� ��������� ������. ������, � ������ ���� ������ �����, ��� ����� ����. �� ������ ������������� � ����� ��������? ���� �� ������ ���������, ����� ��������� ������. ��������� ��� ��� ������ � (958, 3549). �� ����� ������ ��������� ����� (903, 3646) - ����������� ����� �������. � ��������� ����� ��� ������ ����������, ������� ������ �� ������� ����������� ��� ��������." )
	Text( 28, "������ �� �������", JumpPage, 4 )
	Text( 28, "� ������� � ���������", JumpPage, 11 )
	Text( 28, "� ��� �����",  CloseTalk)

	Talk( 29, "����� ������. �� ��� ������ 9-�� ������. ��� ������ �� ���������� 10-�� ������, �� ������� ������� ���� ������ ���������. ������ ��������� - ������ � ������� (2192, 2767) ���� �� ������ ���� ��������. ����� ���������� ����� ������� � ������� (862, 3500) ���� �� ������ ����� ���������. ����� ����� ���������, ������ ������� ��� �� ������ (1365, 570). �������������� ������� ����� ������� �� ������� (2193, 2730). ��� �������� ����������� ����� �������� �� ������ ��������������� �������� ������������." )
	Text( 29, "� ����� �� ��� ���-��� ������", JumpPage, 4 )
	Text( 29, "� ������� � ���������", JumpPage, 11 )
	Text( 29, "� ��� �����",  CloseTalk )

	Talk( 30, "�����: ����� ��������, ��� ��������� ��������, ���������� ��������� �������� � ���� ������� (2222, 2889). �� ����� �� ������� ���� ����������." )
	
	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 31, "������ �������� - ������������ ������� �� ������� ����. ��� �������� ���� ������������ ���� ��������, � �����... �� ����, ��� �����. ��� ������ � ������� ���� 41 ����� �������� ������ �������� �� ������� ����������. ���� ��� ����������?" )
	Text( 31, "�������� ������ ��������",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "�������� ������ ��������",JumpPage, 32 )

	Talk( 32,"���������� �� ����� ����� �������. ���� � ���� ���� '������ ��������', ������ �������� ������ 50 ��. ��� ����� ���������. ���������, ������?")
	Text( 32, "�������� ������ �� ���� �����", Transfer_TeamStar, 1)

	Talk( 6, "�����: ������, �� �� �� �������������� ������ �����������" )

	--InitTrigger()
	---------------------��ҳ���6����ɹ�ɪ����ս��ѵ������
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 8 )
	--TriggerCondition( 1, HasRecord, 704)
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )

	AddNpcMission	(701 )
	AddNpcMission	(702 )
	AddNpcMission	(704 )
	AddNpcMission	(706 )
	AddNpcMission	(708 )
	AddNpcMission	(200 )
	AddNpcMission	(402)
	AddNpcMission	(50)
	AddNpcMission	(51)
	--AddNpcMission	(61)
	--AddNpcMission	(62)
	--AddNpcMission	(63)
	--AddNpcMission	(64)
	--AddNpcMission	(65)
	AddNpcMission	(82)

	MisListPage(28)
	MisListPage(29)
-----------------����-------------ѹ���
	--AddNpcMission	(5507)
end




------------------------------------------------------------
-- ͨ�þ������ű�
------------------------------------------------------------

function r_talk87 ()

	Talk( 1, "����������� �����: ������! � ����������� ������. ������ �������� ���� �����������? ������ ��������� � ������� ��������?" )
	Text( 1, "�������� ������ ������", JumpPage, 2)
	Text( 1, "������������� ����� ����� � ������", JumpPage, 6)
	Text( 1, "����� ������ ������", JumpPage, 3)
	Text( 1, "�������� ����� �����������", SetSpawnPos, "Argent Bar")
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, ReHp,50 )
	TriggerFailure( 1, JumpPage, 1 )
	Text( 1, '������� ���������', MultiTrigger,GetMultiTrigger(), 19 )

	Talk( 2, "����������� �����: ������! ����� �������� ������ ������, ����� ���� ���� 25 ��. � ����� 50000 �������, ����� �������� �������. ����� �� ������� ����������� � ������ � ������� ��������. ������ ������ ������ ����� � ����. �� ������ ���������, ���������� ��� ��������." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 25 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerCondition( 1, NoItem, 3849, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 3849, 1, 97 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "�������� ������ ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "����������� �����: ���� ������ ������ ����� ���������� �� ���� �����. �������� �� �����, ���������� � ����� �������. ���� ���� ����� ����� 10 ����� ����� ������ ������ � 8000 �������." )
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 10 )
	TriggerCondition( 1, HasMoney, 8000 )
	TriggerAction( 1, TakeMoney, 8000 )
	TriggerAction( 1, TakeOffer, 10 )
	TriggerAction( 1, AddCredit, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "�������� 10 ����� ������ ������", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 50 )
	TriggerCondition( 1, HasMoney, 40000 )
	TriggerAction( 1, TakeMoney, 40000 )
	TriggerAction( 1, TakeOffer, 50 )
	TriggerAction( 1, AddCredit, 5 )
	TriggerFailure( 1, JumpPage, 11 )
	Text( 3, "�������� 50 ����� ������ ������", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 100 )
	TriggerCondition( 1, HasMoney, 80000 )
	TriggerAction( 1, TakeMoney, 80000 )
	TriggerAction( 1, TakeOffer, 100 )
	TriggerAction( 1, AddCredit, 10 )
	TriggerFailure( 1, JumpPage, 12 )
	Text( 3, "�������� 100 ����� ������ ������", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 300 )
	TriggerCondition( 1, HasMoney, 15000 )
	TriggerAction( 1, TakeMoney, 15000 )
	TriggerAction( 1, TakeOffer, 300 )
	TriggerAction( 1, AddCredit, 30 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 3, "�������� 300 ����� ������ ������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "����������� �����: �������� ������ ������ ����� ������ �� ���� 25 ������, � ������� ���� ������ ������ � ������� � 50000 �������." )

	Talk( 5, "����������� �����: ������! ����� �������� 10 ����� ������ ������ �� 1 ���� �����, ���� ����������� 10 ����� ������ ������, 8000 ������� � ������������� �����." )

	Talk( 6, "����������� �����: � ���� ���������� ���� ��� �������������� ���� �����" )
	Text( 6, "� ���������� ����", JumpPage, 7)
	--Text( 6, "� ������� �� ��������", JumpPage, 8)
	--Text( 6, "� �������� �����", JumpPage, 9)
	Text( 6, "� ���, ��� �������� ���������", JumpPage, 10)

	Talk( 7, "����������� �����: ������ ����� �������� ������� ���� �� 1" )

	Talk( 8, "����������� �����: ������ �������� �������� ������� �� 1 � ���� ���� 1 ���� �����. �� �����������, ������� �� ������������ ������, ��� �� 10 �������, ����� �� ������. �� �����������, ������������� ���� �� 10 ������� ������ ������������� 1 ���� �����. ��� ����������� ��� ��������." )

	Talk( 9, "����������� �����: ������ ������ ������ ����������� �� ������� ����� �� �������, � ���������� ����� ����� ���������� ��������������� ������� ����� �������� �������� ������." )

	Talk( 10, "����������� �����: ������ ��� ����� ����� ������� �� ��� � ��������� ��������, ������� �������� � ���� ���� ����� � ������������ �� ������� ������� ����� ���������� ��������, ���� �� ��� ���� ����� �� �������. � ���������� ������ �������� �������� ���� �����, ���������� ��� �����������." )

	Talk( 11, "����������� �����: ������! ����� �������� 50 ����� ������ � ����� �� 5 ����� �����, ���� ����� 50 ����� ������ � �����, 2500 ������� � ������������� �������� ����� �����." )

	Talk( 12, "����������� �����: ������! 100 ����� ������ ������ ����� �������� �� 10 ����� �����. ��� ����� ���� ����� 5000 ������� � ������������� �������� ����� �����." )

	Talk( 13, "����������� �����: ������! ����� �������� 300 ����� ������ ������ �� 30 ����� �����, ���������� ��������� 300 ����� ������ ������ � 15000 ������� � ����� ������������� ���� �����" )


end



------------------------------------------------------------
-- �����ǡ���Ѳ�߱������˹
------------------------------------------------------------

function r_talk88 ()

	Talk( 1, "�������: ������, � ����� ���������. ���� ����� �������. ���������, ������ �� ��� ����� ���������� �� ��������. ������� �������� ���� ��������� �������, ������� ��� ������� ������ '���������'... (��������)... ������� ������ �������..." )

	Talk( 2, "����� ������. �� ��� ������ 9-�� ������. ��� ������ �� ���������� 10-�� ������, �� ������� ������� ���� ������ ���������. ������ ��������� - ������ � ������� (2192, 2767) ���� �� ������ ���� ��������. ����� ���������� ����� ������� � ������� (862, 3500) ���� �� ������ ����� ���������. ����� ����� ���������, ������ ������� ��� �� ������ (1365, 570). �������������� ������� ����� ������� �� ������� (2193, 2730). ��� �������� ����������� ����� �������� �� ������ ��������������� �������� ������������." )


	---------------------��ҳ���9��
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission	(730 )
	--AddNpcMission	(736 )
	--AddNpcMission	(737 )
	AddNpcMission	(400 )
	AddNpcMission	(52 )
	AddNpcMission	(53 )
	AddNpcMission	(54 )
	AddNpcMission	(5696)
	AddNpcMission	(5697)
	MisListPage(2)

end

------------------------------------------------------------
-- ɳᰳǡ���Ѳ�߱�������
------------------------------------------------------------

function r_talk89 ()

	Talk( 1, "�����: ����������. � ������ ������������� �����������... ���� ���������, ��������� ����� ����� ������. ��� ��� ������..." )
	
	Talk( 2, "����� ������. �� ��� ������ 9-�� ������. ��� ������ �� ���������� 10-�� ������, �� ������� ������� ���� ������ ���������. ������ ��������� - ������ � ������� (2192, 2767) ���� �� ������ ���� ��������. ����� ���������� ����� ������� � ������� (862, 3500) ���� �� ������ ����� ���������. ����� ����� ���������, ������ ������� ��� �� ������ (1365, 570). �������������� ������� ����� ������� �� ������� (2193, 2730). ��� �������� ����������� ����� �������� �� ������ ��������������� �������� ������������." )

	---------------------��ҳ���9��
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission	(731 )
	--AddNpcMission	(740 )
	--AddNpcMission	(741 )
	AddNpcMission	(235 )
	AddNpcMission	(236 )
	AddNpcMission	(241 )
	AddNpcMission	(242 )
	AddNpcMission	(412)
	AddNpcMission	(85)
	AddNpcMission	(86)
	AddNpcMission	(87)
	AddNpcMission	(922)--------------------------------------------
	AddNpcMission	(923)
	AddNpcMission	(924)------------
----------Ѳ�߱�������-------˫��
	AddNpcMission	(5692)
	AddNpcMission	(5693)

	MisListPage(2)

end

------------------------------------------------------------
-- ���Ǳ�����Ѳ�߱���СĪ
------------------------------------------------------------

function r_talk90 ()

	Talk( 1, "����� ��: ��� ���������� ������������� ����� ���� ��������. ����� ��� ������ � �������. � ���� �� �������� ������ ������? � ������ � ������. � ��� ����� ������� �� �������..." )

	Talk( 2, "����� ������. �� ��� ������ 9-�� ������. ��� ������ �� ���������� 10-�� ������, �� ������� ������� ���� ������ ���������. ������ ��������� - ������ � ������� (2192, 2767) ���� �� ������ ���� ��������. ����� ���������� ����� ������� � ������� (862, 3500) ���� �� ������ ����� ���������. ����� ����� ���������, ������ ������� ��� �� ������ (1365, 570). �������������� ������� ����� ������� �� ������� (2193, 2730). ��� �������� ����������� ����� �������� �� ������ ��������������� �������� ������������." )

	---------------------��ҳ���9��
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission	(732 )
	--AddNpcMission	(742 )
	--AddNpcMission	(743 )
	AddNpcMission	(255 )
	AddNpcMission	(256 )
	AddNpcMission	(408)
	AddNpcMission	(164)
	AddNpcMission	(165)
	AddNpcMission	(166)
	AddNpcMission	(177)
	AddNpcMission	(178)
	AddNpcMission	(179)


	MisListPage(2)

end

------------------------------------------------------------
-- ɳᰳǡ���ҩ�����ˡ�ɳ����
------------------------------------------------------------

function r_talk91 ()

	Talk( 1, "�����: ��, ��... � ������� ����. � ���� ���� ���, ��� ���� �����!" )
	Text( 1, "����", BuyPage )
	Text( 1, "������...",CloseTalk )
	
	Talk( 2, "����� ������. �� ��� ������ 9-�� ������. ��� ������ �� ���������� 10-�� ������, �� ������� ������� ���� ������ ���������. ������ ��������� - ������ � ������� (2192, 2767) ���� �� ������ ���� ��������. ����� ���������� ����� ������� � ������� (862, 3500) ���� �� ������ ����� ���������. ����� ����� ���������, ������ ������� ��� �� ������ (1365, 570). �������������� ������� ����� ������� �� ������� (2193, 2730). ��� �������� ����������� ����� �������� �� ������ ��������������� �������� ������������." )
	Text( 2, "����", BuyPage )
	Text( 2, "������...",CloseTalk )

	InitTrade()
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


	---------------------��ҳ���9��
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerFailure( 1, JumpPage, 1 )
	--Start( GetMultiTrigger(), 1 )

	AddNpcMission	(717 )
	--AddNpcMission	(734 )
	--AddNpcMission	(744 )
	--AddNpcMission	(745 )

	MisListPage(2)

end 


function r_talk92 ()

	Talk( 1, "����: ������, � ����. � ����� ������������ ������ � ������. ���� ����� �����?" )
	Text( 1, "����", BuyPage )
	Text( 1, "������...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Defence(	4651	)
	Defence(	4652	)
	Defence(	4653	)
	Defence(	4654	)
	Defence(	4655	)
	Defence(	4656	)
	Defence(	4657	)
	Defence(	4658	)
	Defence(	4659	)
	Defence(	4660	)

	AddNpcMission	(471)	--����� ���������(����������)
	AddNpcMission	(472)	--���� ����������
	AddNpcMission	(753)	--�������� ������������(����������)
end

------------------------------------------------------------
-- ����ɭ�֡�������ҽ��������ϣ��
------------------------------------------------------------

function r_talk93 ()

	Talk( 1, "��������: ������������, ���� ����� ��������. � ������ �� �� ������� ������ �� ������ �������. ���� ����� �����-������ ���������?" )
	Text( 1, "����", BuyPage )
	Text( 1, "������...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Defence(	4626	)
	Defence(	4627	)
	Defence(	4628	)
	Defence(	4629	)
	Defence(	4630	)
	Defence(	4631	)
	Defence(	4632	)
	Defence(	4633	)
	Defence(	4634	)
	Defence(	4635	)

	AddNpcMission(	1442	)
	AddNpcMission	(	1900	)

	---------------����
	AddNpcMission	(5567)
	AddNpcMission	(5568)
	AddNpcMission	(6052 )
	AddNpcMission	(6053 )
	


	
end

------------------------------------------------------------
-- �¶�άƽԭ-----����
------------------------------------------------------------

function r_talk94 ()

	Talk( 1, "����: ����� ��������, � � ���� ������� �������� ������! �� � ������ ������ ����� ��������� ��������! ������� �����������?" )

end

------------------------------------------------------------
-- ��������վ-----���϶�
------------------------------------------------------------

function r_talk95 ()

	Talk( 1, "�����: ��� ������ ���� ����� ��������� � ������ � ����� ������� ������ ������ ��� ��� ���������� ��� �� ���� �����" )
	Text( 1, "����", BuyPage )
	Text( 1, "������...",CloseTalk )

	InitTrade()
		Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
		
	AddNpcMission	(1065)
	AddNpcMission	(	869	)
	AddNpcMission	(	872	)
	AddNpcMission	(	874	)
	AddNpcMission	(	878	)
	AddNpcMission	(	886	)
	AddNpcMission	(	889	)
	AddNpcMission	(	470	)
	AddNpcMission(	1738	)
	AddNpcMission	(	1927	)
	AddNpcMission	(	1948	)

	------------------����
	--AddNpcMission	(5504	)



end

------------------------------------------------------------
-- �¶�άƽԭ-----ϯ��
------------------------------------------------------------

function r_talk96 ()

	Talk( 1, "�������: ��� �������, ��� � - ���� � ������� �����. ��-��." )

end

------------------------------------------------------------
-- �¶�άƽԭ-----������
------------------------------------------------------------

function r_talk97 ()

	Talk( 1, "�������: ����� �������, ��� ���� ��������, ������� ����, �� ����� ��������� �����." )

	AddNpcMission	(409)
	AddNpcMission	(415)
	AddNpcMission	(424)
	AddNpcMission	(426)
	AddNpcMission	(449)
	AddNpcMission	(809)
	AddNpcMission	(813)
	AddNpcMission(	1431	)
	AddNpcMission	(	1901	)
----------eleven
	AddNpcMission	(	5048	)
	AddNpcMission	(	5049	)
	AddNpcMission	(	5050	)
	AddNpcMission	(	5051	)
	AddNpcMission	(	5052	)
	AddNpcMission	(6030 )
	AddNpcMission	(6031 )

end

------------------------------------------------------------
-- �¶�άƽԭ-----����
------------------------------------------------------------

function r_talk98 ()

	Talk( 1, "����: ��� ���� �����, � � ���� �������� �� ���� � ���� �������!" )

end

------------------------------------------------------------
-- �¶�άƽԭ-----³³
------------------------------------------------------------

function r_talk99999 ()

	Talk( 1, "����: ��-��! �� ������ �� ���!" )

	AddNpcMission(	1736	)
	AddNpcMission	(	1925	)
	AddNpcMission	(	1946	)

	---------------����
	AddNpcMission	(5561)
	AddNpcMission	(5562)
	AddNpcMission	(6040 )
	AddNpcMission	(6041 )



end

------------------------------------------------------------
-- �¶�άƽԭ-----�µ�˹.����
------------------------------------------------------------

function r_talk100()

	Talk( 1, "�������: ����� ���������, ���� ��������� �� ������ �������. ����� ����� ����������� �������� �� ���������� �������. ��� ������ �����������!" )

	AddNpcMission	(	454	)
	AddNpcMission	(	458	)
	AddNpcMission	(654)
	AddNpcMission	(657)
	AddNpcMission	(658)
	AddNpcMission	(663)
	AddNpcMission	(666)
	AddNpcMission	(1110)
	AddNpcMission(	1584	)
	AddNpcMission	(	1914	)

	




end

------------------------------------------------------------
-- �¶�άƽԭ-----÷��
------------------------------------------------------------

function r_talk101()

	Talk( 1, "�������: ����� �������� ����� �����, ����� �����." )

end

------------------------------------------------------------
-- �¶�άƽԭ-----�Ų���
------------------------------------------------------------

function r_talk102()

	Talk( 1, "�����: � ����� ����������� '������� ��������'. ������, ��� ����� ��������� ����� �������." )

	AddNpcMission	(603)
	AddNpcMission	(608)
	AddNpcMission	(613)
	AddNpcMission	(615)
	AddNpcMission	(618)
----------�Ų���-------˫��
	AddNpcMission	(5702)
	AddNpcMission	(5703)

end

------------------------------------------------------------
-- �¶�άƽԭ-----С���ɭ
------------------------------------------------------------

function r_talk103()

	Talk( 1, "����� �����: ���� ��������� ��� ������������� � ������������... ����� ��� ��������?" )

end

------------------------------------------------------------
-- �¶�άƽԭ-----�꼧����
------------------------------------------------------------

function r_talk104()

	Talk( 1, "������� ����: � ������ ������ ���� ����-���� � ������� ����� �������� ������. ����������... � ���� �� ������ �����." )

end

------------------------------------------------------------
-- �¶�άƽԭ-----��������
------------------------------------------------------------

function r_talk105()

	Talk( 1, "�����: ������ ���� ������... � � ��� ������ ������� ��������� ����� ��������� ����. ����� ������ � ���, ����� 4 �������� � 108 ����. �� ��� ������� � ���� �..." )

	AddNpcMission	(451)
	AddNpcMission	(457)
	AddNpcMission	(621)
	AddNpcMission	(625)
	AddNpcMission(	1590	)
	AddNpcMission	(	1902	)
	AddNpcMission	(	1940	)

	----------��������-------˫��
	AddNpcMission	(5708)
	AddNpcMission	(5709)




end

------------------------------------------------------------
-- �¶�άƽԭ-----��������
------------------------------------------------------------

function r_talk106()

	Talk( 1, "����� ������: ������ ������, ������ ������ ��������? ��� ��������� - �? �� �� � ������!" )

	AddNpcMission	(689)
	AddNpcMission	(1109)
	AddNpcMission(	1579	)
	AddNpcMission	(	1918	)





end

------------------------------------------------------------
-- �¶�άƽԭ-----�����˹
------------------------------------------------------------

function r_talk107()

	Talk( 1, "����������: ����� � ��������� �����. ������ �� ��� �� �������� � �� ����������� ������?" )
	AddNpcMission	(425)
	AddNpcMission	(431)
	AddNpcMission	(436)
	AddNpcMission	(442)
	AddNpcMission	(448)
	AddNpcMission	(601)
	AddNpcMission	(607)
	AddNpcMission	(610)
	AddNpcMission	(612)
	AddNpcMission	(1001)
	AddNpcMission	(1165)



end

------------------------------------------------------------
-- �¶�άƽԭ-----�Ͽ��ɭ
------------------------------------------------------------

function r_talk108()

	Talk( 1, "������ �����: ���� ����� ������, ��� ������� �������� �������� �� �����-������ ���������� ��������." )

	AddNpcMission	(475)

end

------------------------------------------------------------
-- �¶�άƽԭ-----�����б�
------------------------------------------------------------

function r_talk109()

	Talk( 1, "����~ ����! ��� ������� �������" )

end

------------------------------------------------------------
-- ���˻�Į-----��������˹
------------------------------------------------------------

function r_talk110()

	Talk( 1, "�������: ��� ��� ������ ���� ����������. � ��������� ����� �� ��� ����� ���������� ��������� �������. ����� �� ��� ���." )

	AddNpcMission	(411)
	AddNpcMission	(669)
	AddNpcMission	(675)
	AddNpcMission	(678)
	AddNpcMission	(680)
	AddNpcMission	(1075)



end

------------------------------------------------------------
-- ���˻�Į-----�׶�����
------------------------------------------------------------

function r_talk111()

	Talk( 1, "�������: ������! ��� ����? ������ ����� ���� ����. �� ��������, ���� � �� ������ ����� ���� ��� ��." )

	AddNpcMission	(456)
	AddNpcMission	(656)
	AddNpcMission	(661)
	AddNpcMission	(665)
	AddNpcMission	(1142)
	AddNpcMission(	1582	)
	AddNpcMission	(	1910	)
---------eleven
	AddNpcMission	(	5025	)
	AddNpcMission	(5026	)
	AddNpcMission	(5029	)
	AddNpcMission	(	5070)
	AddNpcMission	(5072	)
	AddNpcMission	(5073	)
	------------1.7
	AddNpcMission	(5074	)
	AddNpcMission(	5092 )
	AddNpcMission	(5101 )
	AddNpcMission	(5102 )
	AddNpcMission	(5103 )
	AddNpcMission	(5104 )
	AddNpcMission	(5113 )
	AddNpcMission	(6032 )
	AddNpcMission	(6033 )
----------�׶�����-------˫��
	AddNpcMission	(5722)
	AddNpcMission	(5723)
end

------------------------------------------------------------
-- ���˻�Į-----�¸�ɭ
------------------------------------------------------------

function r_talk112()

	Talk( 1, "���������: ��������� ����� � ������ ����, ����� ������� ���������� ��������� ��!" )

	AddNpcMission	(1111)


end

------------------------------------------------------------
-- ���˻�Į-----�����ǡ��Ʒ�
------------------------------------------------------------

function r_talk113()

	Talk( 1, "�������: ������, � �������." )
	AddNpcMission	(1131)

end

------------------------------------------------------------
-- ���˻�Į-----�ϵ�����
------------------------------------------------------------

function r_talk114()

	Talk( 1, "������: ������� ���������������! �������� ������ ���� ���! ������!" )

	AddNpcMission	(640)
	AddNpcMission	(644)
	AddNpcMission	(645)
	AddNpcMission	(646)
	AddNpcMission	(651)
	AddNpcMission	(1119)
	AddNpcMission(	1437	)
	AddNpcMission	(	1911	)
	AddNpcMission	(6038 )
	AddNpcMission	(6039 )

	





end

------------------------------------------------------------
-- ���˻�Į-----�������˹
------------------------------------------------------------

function r_talk115()

	Talk( 1, "����� �����: ��� ������� ���������� ���� ������. ���� � ���� ��� �� ���������, ��� ����� ��������, ������� ����� �������� ���� ���� �������." )
	AddNpcMission	(1120)
----------�������˹-------˫��
	AddNpcMission	(5698)
	AddNpcMission	(5699)

end

------------------------------------------------------------
-- ���˻�Į-----÷�����ǡ�è��
------------------------------------------------------------

function r_talk116()

	Talk( 1, "�������: ���� �� ��� �����������? �� ���, ������� ������ �� ����� �������-������?" )
	
	AddNpcMission	(245 )
	AddNpcMission	(246 )
	AddNpcMission	(247 )
	AddNpcMission	(249 )
	AddNpcMission	(250 )
	AddNpcMission	(1141)

end

------------------------------------------------------------
-- ���˻�Į-----�ŵ����ˡ���ǽ
------------------------------------------------------------

function r_talk117()

	Talk( 1, "�����: � ���� ������� �������? �� ����� ����� �������� � ���� ������� �����! � ������ �� ������ � ������ �������." )

end

------------------------------------------------------------
-- ���˻�Į-----����˹����ɳ
------------------------------------------------------------

function r_talk118()

	Talk( 1, "��������: ������ ���� �� �������..." )
	
	AddNpcMission	(257 )
	AddNpcMission	(258 )
	AddNpcMission	(259 )
	AddNpcMission	(435)
	AddNpcMission	(686)
	AddNpcMission	(691)
	AddNpcMission	(693)
	AddNpcMission	(694)
	AddNpcMission	(1082)



end

------------------------------------------------------------
-- ���˻�Į-----ͨ���ߡ��¹���
------------------------------------------------------------

function r_talk119()

	Talk( 1, "������ ������ ����: � ���� ������ ��, ���� �� ����� ������... ��������, ���� ������ ����..." )

	AddNpcMission	(804)
	AddNpcMission	(808)
	
	AddNpcMission	(	468	)
	AddNpcMission(	1586	)
	AddNpcMission	(	1920	)

	
---------------����
	AddNpcMission	(5585)
	AddNpcMission	(5586)



end

------------------------------------------------------------
-- ���˻�Į-----������˹�����
------------------------------------------------------------

function r_talk120()

	Talk( 1, "��������: � ����� �� ������� ��������� ������� ��� �������� ����������. � ������ ���� ���� ����� �����." )

	AddNpcMission	(407)
	AddNpcMission	(638)
	AddNpcMission	(642)
	AddNpcMission(	1438	)
	AddNpcMission	(	1912	)

	



end

------------------------------------------------------------
-- ���˻�Į-----���ﰬ�ǡ�����
------------------------------------------------------------

function r_talk121()

	Talk( 1, "����: ��, ��� �� ��� ��� ������! � ���-������ �������?" )

	
	AddNpcMission	(	870	)
	AddNpcMission	(	875	)
	AddNpcMission	(	876	)
	AddNpcMission	(	880	)
	AddNpcMission	(	882	)
	AddNpcMission	(	885	)
	AddNpcMission	(	888	)
	AddNpcMission	(	891	)
	AddNpcMission	(	892	)
	AddNpcMission(	1735	)
	AddNpcMission	(	1924	)
	AddNpcMission	(	1945	)

	


end

------------------------------------------------------------
-- ���˻�Į-----��������
------------------------------------------------------------

function r_talk122()

	Talk( 1, "����: ������ - ��������� ������������ ���. ��������� ������ �� ���� ������." )

	AddNpcMission	(428)
	AddNpcMission	(812)
	AddNpcMission	(1025)
	AddNpcMission	(1188)


end

------------------------------------------------------------
-- ���˻�Į-----����
------------------------------------------------------------

function r_talk123()

	Talk( 1, "���: � ���� ���� ���� �� ����� ���. �� � ����������� ���!" )

end

------------------------------------------------------------
-- ���˻�Į-----��ķ
------------------------------------------------------------

function r_talk124()

	Talk( 1, "���: � ���� ���� ���� �� ����� ���. �� �� ���� ���� ��������." )
-----------------��ķ---------��ţ
	AddNpcMission	(5645)
	AddNpcMission	(5646)
end

------------------------------------------------------------
-- ���˻�Į-----����������΢��
------------------------------------------------------------

function r_talk125()

	Talk( 1, "���������� ����: (��������.) ������ ��� ������, � ������-�� ��� ����������... (��������.)" )

end

------------------------------------------------------------
-- ���˻�Į-----ޱ���
------------------------------------------------------------

function r_talk126()

	Talk( 1, "�����: ��-������! ������� �� ���� ��������, ��� � �������! ��-������! ������� �� ������, ��� � ������! �-�������! �� ���� ��������, ��� � ����� �� ������! ������ ������ ������, ��� � ����." )

	AddNpcMission	(685)
	AddNpcMission	(688)
	AddNpcMission	(690)
	AddNpcMission	(1097)
	AddNpcMission	(6034 )
	AddNpcMission	(6035 )


end
------------------------------------------------------------
-- ���˻�Į-----����������
------------------------------------------------------------
function r_talk127()
Talk( 1, "������� ����: ��������... ������������� ���� ������." )
	
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1557 )
	TriggerCondition( 1, NoRecord, 1558 )
	TriggerCondition( 1, NoRecord, 1559 )
	TriggerCondition( 1, NoRecord, 1560 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "������!",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerCondition( 1, HasMission, 1561 )
	TriggerCondition( 1, HasRecord, 1558 )
	TriggerCondition( 1, HasRecord, 1559 )
	TriggerCondition( 1, NoRecord, 1569 )
	TriggerCondition( 1, NoRecord, 1561 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "��� ��� ����������!",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1, "� ������ ������� ����",JumpPage, 3  )
	
	InitTrigger()
	TriggerAction( 1, SetRecord, 1558 )
	TriggerAction( 1, SetRecord, 1559 )
	TriggerAction( 1, JumpPage, 4 )
	Talk( 2, "������� ����: ��� �� �������, ��� ��������� ������, ���� ��� ������?")
	Text(2, "������", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerAction( 1, SetRecord, 1558 )
	TriggerAction( 1, SetRecord, 1560 )
	TriggerAction( 1, JumpPage, 5 )
	Text(2, "����", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3, "������� ����: ��������, � ������ ��� �� ������� ���������. ���� � ��� ������ �������� - ������ ����� �������������.")
	Talk( 10, "������� ����: ��� ���� ����, �� ������� �����������. ������� ��� �������, � ����� ������� �����.")

	Talk( 4, "������� ����: �� �� ����� �������! �������!")

	Talk( 5, "������� ����: ������� ������� �������-������������� �������?")
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1563 )
	TriggerAction( 1, JumpPage, 7 )
	Talk( 6, "������� ����: ���� ������ � �������� ������� �����, ��� �������?")
	Text( 6, "��������",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6, "������",JumpPage, 10  )

	Talk( 7, "���� �����, �������� �������� - ���� ��� ������ ���, ��� �� ���������.")
	Text( 7, "��������� ������",JumpPage, 8  )
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1564 )
	TriggerAction( 1, JumpPage, 9 )
	Talk( 8, "������� ����: ���� ������ � �������� � ��������� ����� ������� �����, ��� �������?")
	Text( 8, "�������� � ��������� �����",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1565 )
	TriggerAction( 1, JumpPage, 9 )
	Text( 8, "������",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 9, "������� ����: ������ ��������. � ��� ������, ��� �������� � ����� �� ������ - ��������� �� ����! ��-��!")
	--Start( GetMultiTrigger(), 1 )

	AddNpcMission	(417)	--������������� ���(����������)
	AddNpcMission	(674)	--������� ������� ����
	AddNpcMission	(676)	--������� �����
	AddNpcMission	(681)	--��������� ������
--	AddNpcMission	(1064)	--����� ��������
	AddNpcMission	(752)	--�������� ������������(����������)

	AddNpcMission	(5153)	--������������ ����(����������)
	AddNpcMission	(5154)	--��������� �������
	AddNpcMission	(5155)	--�������
	AddNpcMission	(5156)	--��������� ������
	AddNpcMission	(5157)	--����� ������
	AddNpcMission	(5159)	--����� ������
end


function r_talk128()

	Talk( 1, "�����: ����� � ��� ���������, ���� ����� ���� � ������� � ������������ �� �����. � ����� ��������� ��� ��..." )

end

------------------------------------------------------------
-- ���˻�Į-----��á�Ƥ��
------------------------------------------------------------

function r_talk129()

	Talk( 1, "��� ����: ��-��! ��� ����? ��� ������� ���� �� ���, ���� �����?" )

	AddNpcMission	(623)
	AddNpcMission	(627)
	AddNpcMission	(634)
	AddNpcMission	(1031)
	AddNpcMission	(1194)
	AddNpcMission(	1591	)
	AddNpcMission	(	1905	)
	AddNpcMission	(	1941	)

	---------------����
	AddNpcMission	(5583)
	AddNpcMission	(5584)



end

------------------------------------------------------------
-- ������˹��ԭ-----���򡤱�Ȫ
------------------------------------------------------------

function r_talk130()

	Talk( 1, "�����: � ���� � ����� ������. �� ����� ���?" )
---------------����
	AddNpcMission	(5581)
	AddNpcMission	(5582)
end

------------------------------------------------------------
-- ������˹��ԭ-----��˹��С��
------------------------------------------------------------

function r_talk131()

	Talk( 1, "�����: ���� ������ ���������� �� ���� ��� � ��������� ������... �� � �� ������ ���� ����� ���������..." )
-----------------��˹��С��---------��ţ
	AddNpcMission	(5653)
	AddNpcMission	(5654)
end

------------------------------------------------------------
-- ������˹��ԭ-----���׶�����
------------------------------------------------------------

function r_talk132()

	Talk( 1, "����: ����, ����, ����..." )
	AddNpcMission	(1061)
	AddNpcMission	(1007)
	AddNpcMission	(1062)
	AddNpcMission	(1117)
	AddNpcMission	(1171)


end

------------------------------------------------------------
-- ������˹��ԭ-----����ķ������
------------------------------------------------------------

function r_talk133()

	Talk( 1, "�����: ���� ����������� ���-������ ������� � ���������� ������ �������? � ��� �� ��� ����� ��������!" )

	AddNpcMission	(421)
	AddNpcMission	(427)
	AddNpcMission	(438)
	AddNpcMission	(444)
	AddNpcMission	(653)
	AddNpcMission	(659)
	AddNpcMission	(660)
	AddNpcMission	(664)
	AddNpcMission	(1151)
	AddNpcMission(	1583	)
	AddNpcMission	(	1913	)


-----------------����ķ������---------��ţ
	AddNpcMission	(5657)
	AddNpcMission	(5658)



end

------------------------------------------------------------
-- ������˹��ԭ-----������ķ
------------------------------------------------------------

function r_talk134()

	Talk( 1, "�����: � ��� ��� ��� ���, � ������ ��� �� �����. ������� � ����� ����������?" )
	AddNpcMission	(1083)

end

------------------------------------------------------------
-- ������˹��ԭ-----������ķ
------------------------------------------------------------

function r_talk135()

	Talk( 1, "�������: ���� �� ��������� ��� ������ �� '������������ ����������� ������', �� ���� � �� �����������!" )
	AddNpcMission	(1098)

end


------------------------------------------------------------
-- ������˹��ԭ-----������
------------------------------------------------------------

function r_talk136()

	Talk( 1, "�����: � ������ ���� �� ���������� ������� ��! ���� �������, ��� ������ �� ����������!" )

	AddNpcMission	(262 )
	AddNpcMission	(263 )
	AddNpcMission	(264 )
	AddNpcMission	(265 )
	AddNpcMission	(1056)


end

------------------------------------------------------------
-- ������˹��ԭ-----�ն����
------------------------------------------------------------

function r_talk137()

	Talk( 1, "������: ������... ��� �� ��� ��� ������..." )
	AddNpcMission	(1072)

end

------------------------------------------------------------
-- ������˹��ԭ-----Լɪ����
------------------------------------------------------------

function r_talk138()

	Talk( 1, "���: �������� ���������! ����� ������� ���� ���������!" )
	AddNpcMission	(1105)

end

------------------------------------------------------------
-- ������˹��ԭ-----��ݮ����
------------------------------------------------------------

function r_talk139()

	Talk( 1, "���������: ������� ������� �����? ��� � ������ ����� �������." )
---------------����
	AddNpcMission	(5555)
	AddNpcMission	(5556)
	----------��ݮ����-------˫��
	AddNpcMission	(5706)
	AddNpcMission	(5707)
end

------------------------------------------------------------
-- ������˹��ԭ-----����
------------------------------------------------------------

function r_talk140()

	Talk( 1, "���: ����������! � ���. ��� �� ����� �������?" )

end

------------------------------------------------------------
-- ������˹��ԭ-----��ɺ��
------------------------------------------------------------

function r_talk141()

	Talk( 1, "�������: � ���� ���! ����� ������ ��� ������!" )

end

------------------------------------------------------------
-- ������˹��ԭ-----��ŵ��
------------------------------------------------------------

function r_talk142()

	Talk( 1, "��������: � ������������, � ������� ���� ��������� ��� ����� ������: ��������� � �������� ��� ��������?" )

end

------------------------------------------------------------
-- ������˹��ԭ-----ղķ˹
------------------------------------------------------------

function r_talk143()

	Talk( 1, "��������: �������, ���-�� ����� ��������� �������..." )

end

------------------------------------------------------------
-- ������˹��ԭ-----¶��������
------------------------------------------------------------

function r_talk144()

	Talk( 1, "����: ����������, �����!" )

end

------------------------------------------------------------
-- ������˹��ԭ-----�������
------------------------------------------------------------

function r_talk145()

	Talk( 1, "�������: � ������ �������� ���������� �������� �����, ������� �� �������. �� � ��������� ����� ����� � ��� ������ ���������." )

end

------------------------------------------------------------
-- ������˹��ԭ-----��������
------------------------------------------------------------

function r_talk146()

	Talk( 1, "��������� ����: ������� � ���� � ����� �������. ����, ����� ��������, ��� ��� ������ ���� ��������������� �������." )

	AddNpcMission	(622)
	AddNpcMission	(624)
	AddNpcMission	(628)
	AddNpcMission	(630)
	AddNpcMission	(636)
	AddNpcMission	(1006)
	AddNpcMission	(1170)
	AddNpcMission(	1592	)
	AddNpcMission	(	1906	)
	AddNpcMission	(	1942	)
	AddNpcMission	(6036 )
	AddNpcMission	(6037 )

	



end

------------------------------------------------------------
-- ������˹��ԭ-----����
------------------------------------------------------------

function r_talk147()

	Talk( 1, "�����: ���� �������, �������. ����� ���� �������. �������. � �� ���� � ���� ������, ������..." )

	AddNpcMission	(401 )
	AddNpcMission	(810)
	AddNpcMission	(1040)
	AddNpcMission	(1203)
	AddNpcMission(	1433	)
	AddNpcMission	(	1909	)

	
---------------����
	AddNpcMission	(5579)
	AddNpcMission	(5580)





end

------------------------------------------------------------
-- ������˹��ԭ-----������
------------------------------------------------------------

function r_talk148()

	Talk( 1, "�����: ������. � ��� ��� ����� - ���� ������ ����? �� ��� ��������?" )

end

------------------------------------------------------------
-- ������˹��ԭ-----��Ъ��÷�ַ�
------------------------------------------------------------

function r_talk149()

	Talk( 1, "������� �����: ..............(��� ������ ���� �������...)" )
-------------�ﵺ����
	--AddNpcMission	(6182)
end

------------------------------------------------------------
-- ���Ǳ�-----ˮ�֡����ϼ�
------------------------------------------------------------

function r_talk156()

	Talk( 1, "����: �������! � ������ ����� ������� ����. ����� ��� ������?" )

end

------------------------------------------------------------
-- ���￩������վ-----����
------------------------------------------------------------

function r_talk157()

	Talk( 1, "������: � ����� ��, �� � ������ �������. �������, ��� �����-�� �������..." )
	
	Text( 1,"�����", SendExchangeData7 )
	InitExchange7()
	DoExchange7()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission	(419)
	AddNpcMission	(460)
	AddNpcMission	(600)
	AddNpcMission	(604)
	AddNpcMission	(606)
	AddNpcMission	(611)
	AddNpcMission	(614)
	AddNpcMission	(619)
	AddNpcMission	(1028)
	AddNpcMission	(1191)
	AddNpcMission(	1434	)
	AddNpcMission	(	1903	)

	---------------����
	AddNpcMission	(5587)
	AddNpcMission	(5588)

	AddNpcMission	(6042 )
	AddNpcMission	(6043 )


end

------------------------------------------------------------
-- ���￩������վ-----������
------------------------------------------------------------

function r_talk158()

	Talk( 1, "�����: ��...��...���..����...����... ������?" )
	Text( 1, "����", BuyPage )


	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission	(450)
	AddNpcMission	(452)
	AddNpcMission	(602)
	AddNpcMission	(605)
	AddNpcMission	(609)
	AddNpcMission	(616)
	AddNpcMission	(617)
	AddNpcMission(	1435	)
	AddNpcMission	(	1904	)

	



	
end

------------------------------------------------------------
-- �߶�ŵ����վ-----����˹
------------------------------------------------------------

function r_talk159()

	Talk( 1, "�������: �������� ���-������ ������ ��� ������� - ������ ����." )
	Text( 1, "����", BuyPage )
	Text( 1, "������",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Defence(	4631	)
	Defence(	4632	)
	Defence(	4633	)
	Defence(	4634	)
	Defence(	4635	)
	Defence(	4636	)
	Defence(	4637	)
	Defence(	4638	)
	Defence(	4639	)
	Defence(	4640	)
	
	AddNpcMission	(463)
	AddNpcMission	(620)
	AddNpcMission	(626)
	AddNpcMission	(629)
	AddNpcMission	(631)
	AddNpcMission	(632)
	AddNpcMission	(633)
	AddNpcMission	(635)
	AddNpcMission	(637)
	AddNpcMission	(1015)
	AddNpcMission	(1178)
	AddNpcMission(	1593	)
	AddNpcMission	(	1907	)
	AddNpcMission	(	1943	)

	


end

------------------------------------------------------------
-- �Ͽ󲹸�վ-----�￨��
------------------------------------------------------------

function r_talk160()

	Talk( 1, "����: ������! � �������� - ����! ����� ������..." )

	AddNpcMission	(223 )
	AddNpcMission	(224 )
	AddNpcMission	(225 )
	AddNpcMission	(226 )
	AddNpcMission	(227 )
	AddNpcMission	(228 )
	AddNpcMission	(229 )
	AddNpcMission	(230 )
	AddNpcMission	(1055)
	AddNpcMission	(1217)
	AddNpcMission(	1432	)
	AddNpcMission	(	1908	)

	



	
end

------------------------------------------------------------
-- �Ͽ󲹸�վ-----�󹤴����
------------------------------------------------------------

function r_talk161()

	Talk( 1, "������: *����* � ��� �������, � ������� ���� ������� � ���������..." )

	AddNpcMission	(284 )
	AddNpcMission	(285 )
	AddNpcMission	(311 )
	-----------------�󹤴����---------��ţ
	AddNpcMission	(5663)
	AddNpcMission	(5664)
end

------------------------------------------------------------
-- �Ͽ󲹸�վ-----���龫
------------------------------------------------------------

function r_talk162()

	Talk( 1, "����: ������! � ����. ����� ������?" )
	Text( 1, "����", BuyPage )

	Text( 1, "������...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Defence(	4611	)
	Defence(	4612	)
	Defence(	4613	)
	Defence(	4614	)
	Defence(	4615	)
	Defence(	4616	)
	Defence(	4617	)
	Defence(	4618	)
	Defence(	4619	)
	Defence(	4620	)

	AddNpcMission	(455)
	AddNpcMission	(461)
	AddNpcMission	(811)
	AddNpcMission	(814)
	AddNpcMission	(1013)
	AddNpcMission	(1014)
	AddNpcMission	(1177)

-----��������
	AddNpcMission	(6121 )
	AddNpcMission	(6122 )

	
end

------------------------------------------------------------
-- ���ò���վ-----�մ�
------------------------------------------------------------

function r_talk163()

	Talk( 1, "�����: � �� ���� �������� �����������! �� ��� ��������� ���������� ���� ������ ��� ������ ����... ����� ��� ������ ������!" )
	
	Text( 1,"�����", SendExchangeData11 )

	InitExchange11()
	DoExchange11()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
	
	AddNpcMission	(1027)
	AddNpcMission	(1190)
----------------1.7
	AddNpcMission	(5139 )
	AddNpcMission	(5140 )
	AddNpcMission	(5141 )
	AddNpcMission	(6044 )
	AddNpcMission	(6045 )

end

------------------------------------------------------------
-- ���ò���վ-----�������
------------------------------------------------------------

function r_talk164()

	Talk( 1, "����: �����������, ����. ��� �� �� ������ � ����� ������� ����� ��� ���������?" )

end

------------------------------------------------------------
-- ���ò���վ-----������
------------------------------------------------------------

function r_talk165()

	Talk( 1, "�����: ������! ��� ���� �����?" )
	Text( 1, "����", BuyPage )
	


	Text( 1, "������...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
		Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)
	---------------����
	AddNpcMission	(5563)
	AddNpcMission	(5564)
end

------------------------------------------------------------
-- �Ͳ�����վ-----ĢĢ
------------------------------------------------------------

function r_talk166()

	Talk( 1, "����: ������! � ����. � ���� �� ������ ������ ���������� �������." )
	Text( 1, "����", BuyPage )
	Text(1, "����������", SendExchangeData22 )
	Text( 1, "������...",CloseTalk )
	InitExchange22()
	DoExchange22()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
	

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)

	AddNpcMission	(433)
	AddNpcMission	(655)
	AddNpcMission	(662)
	AddNpcMission	(667)
	AddNpcMission	(1143)
	AddNpcMission(	1585	)
	AddNpcMission	(	1915	)

	---------------����
	AddNpcMission	(5577)
	AddNpcMission	(5578)
	



end

------------------------------------------------------------
-- ɳȪ����վ-----ά��
------------------------------------------------------------

function r_talk167()

	Talk( 1, "������: � ����� ������ �����! ����, ����� ��� ��������� �� ���� ��� �������!" )

	AddNpcMission	(418)
	AddNpcMission	(641)
	AddNpcMission	(650)
	AddNpcMission	(1156)

	
end


------------------------------------------------------------
-- ɳȪ����վ-----�Ʒ�
------------------------------------------------------------

function r_talk168()

	Talk( 1, "��� ���: ������! ���� ����� ��� ���." )

	AddNpcMission	(422)
	AddNpcMission	(639)
	AddNpcMission	(648)
	AddNpcMission	(1121)
	AddNpcMission(	1439	)
	AddNpcMission	(	1916	)

	---------------����
	--AddNpcMission	(5503	)

---------------����
	AddNpcMission	(5569)
	AddNpcMission	(5572)

	
end

------------------------------------------------------------
-- ɳȪ����վ-----����
------------------------------------------------------------

function r_talk169()

	Talk( 1, "������: � ���� ��������� ���� ������. ������?" )
	Text( 1, "����", BuyPage )
	Text( 1,"�����", SendExchangeData14 )

	InitExchange14()
	DoExchange14()
	
	Text( 1, "������...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)
	
	AddNpcMission	(403)
	AddNpcMission	(413)
	AddNpcMission	(420)
	AddNpcMission	(643)
	AddNpcMission	(647)
	AddNpcMission	(649)
	AddNpcMission	(652)
	AddNpcMission	(1140)
	AddNpcMission(	1440	)
	AddNpcMission	(	1917	)

	----------------1.7
	AddNpcMission	(5124 )
	AddNpcMission	(5125 )
	AddNpcMission	(5126 )
end

------------------------------------------------------------
-- ������˹����վ-----���
------------------------------------------------------------

function r_talk170()

	Talk( 1, "�����: � ������ ����� ��� ����. � ���� ���� ������� �������, ��������� ��������." )

	AddNpcMission	(429)
	AddNpcMission	(464)
	AddNpcMission	(466)
	AddNpcMission	(684)
	AddNpcMission	(696)
	AddNpcMission	(697)
	AddNpcMission	(1108)

----------------1.7
	AddNpcMission	(5136 )
	AddNpcMission	(5137 )
	AddNpcMission	(5138 )
-----------------���---------��ţ
	AddNpcMission	(5647)
	AddNpcMission	(5648)
end

------------------------------------------------------------
-- �����
------------------------------------------------------------

function r_talk171()

	Talk( 1, "�����: ������, ���� ��� �� ������?" )
	Text( 1, "����", BuyPage )
	Text( 1,"�����", SendExchangeData12 )
	Text( 1, "������...",CloseTalk )
	InitExchange12()
	DoExchange12()
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	
	

	InitTrade()
		Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission	(423)
	AddNpcMission	(440)
	AddNpcMission	(446)
	AddNpcMission	(462)
	AddNpcMission	(683)
	AddNpcMission	(687)
	AddNpcMission	(692)
	AddNpcMission	(695)
	AddNpcMission(	1580	)
	AddNpcMission	(	1919	)
	AddNpcMission	(	1955	)

	----------��������-------˫��
	AddNpcMission	(5718)
	AddNpcMission	(5719)




end

------------------------------------------------------------
-- ����Ӫ�ز���վ-----��˾
------------------------------------------------------------

function r_talk172()

	Talk( 1, "����: �������� ����� ������ - �����!" )

	AddNpcMission	(802)
	AddNpcMission	(807)
	AddNpcMission	(1100)
	AddNpcMission(	1587	)
	AddNpcMission	(	1921	)
	AddNpcMission	(	1922	)
----------------1.7
	AddNpcMission	(5127 )
	AddNpcMission	(5128 )
	AddNpcMission	(5129 )
	AddNpcMission	(6046 )
	AddNpcMission	(6047 )

	----------��˾-------˫��
	AddNpcMission	(5694)
	AddNpcMission	(5695)


end

------------------------------------------------------------
--����
------------------------------------------------------------

function r_talk173()

	Talk( 1, "����: ������, � ����� ������� �� �������. ���� ���-������ �����?" )
	Text( 1, "����", BuyPage )
	Text( 1,"�����", SendExchangeData13 )
Text( 1, "������...",CloseTalk )
	InitExchange13()
	DoExchange13()
	
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
	

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission	(467)
	AddNpcMission	(803)
	AddNpcMission(	1588	)
	AddNpcMission	(	1923	)
	AddNpcMission	(	1944	)

	





end

------------------------------------------------------------
-- ��������վ-----�׿��ʷ���
------------------------------------------------------------

function r_talk174()

	Talk( 1, "��������: ��� ���� ���������� ����� ��������� ����������, ������� ������ ���� � ��� �����." )

	
	AddNpcMission	(	871	)
	AddNpcMission	(	873	)
	AddNpcMission	(	879	)
	AddNpcMission	(	887	)
	AddNpcMission	(	890	)
	AddNpcMission	(	893	)
	AddNpcMission(	1737	)
	AddNpcMission	(	1926	)
	AddNpcMission	(	1947	)

	



end

------------------------------------------------------------
-- ��������վ-----����
------------------------------------------------------------

function r_talk175()

	Talk( 1, "����: ��������, � ������... ����� � ���������� � ����� ��������� ����. ���� �� ������ � ���� ��� �������������� ���������..." )

	AddNpcMission	(405)
	AddNpcMission	(432)
	AddNpcMission	(668)
	AddNpcMission	(672)
	AddNpcMission	(673)
	AddNpcMission	(677)
	AddNpcMission	(1087)
	AddNpcMission(	1429	)
	AddNpcMission	(	1928	)
---------------����
	AddNpcMission	(5589)
	AddNpcMission	(5590)
	AddNpcMission	(6050 )
	AddNpcMission	(6051 )
	
----------����-------˫��
	AddNpcMission	(5700)
	AddNpcMission	(5701)



end

------------------------------------------------------------
-- ��������վ-----����үү
------------------------------------------------------------

function r_talk176()

	Talk( 1, "������-�������������: ��, ��� � ���� ������, �� � ������� ��������. ���������� ��� ���� ���������?" )
	Text( 1, "����", BuyPage )
	Text( 1, "������...",CloseTalk )

	InitTrade()
		Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission	(430)
	AddNpcMission	(434)
	AddNpcMission	(670)
	AddNpcMission	(671)
	AddNpcMission	(679)
	AddNpcMission	(682)
	AddNpcMission	(1070)
	AddNpcMission(	1430	)
	AddNpcMission	(	1929	)

	---------------1.7
	AddNpcMission	(5148 )
	AddNpcMission	(5150 )
	AddNpcMission	(5152 )
	AddNpcMission	(5158 )
	AddNpcMission	(5160 )
	AddNpcMission	(5161 )
	AddNpcMission	(5162 )
	AddNpcMission	(5163 )
	AddNpcMission	(5164 )
	AddNpcMission	(5165 )
	AddNpcMission	(5166 )
	AddNpcMission	(5169 )


end


------------------------------------------------------------
-- ����Ӫ�ز���վ-----��̩
------------------------------------------------------------

function r_talk177()

	Talk( 1, "���: � ���� ������������ �������� �� ������� ��������. ������� ����� ����� ������������, � ���������� - ����������. � � ���� ����-����������! ��-��!" )

	AddNpcMission	(805)
	AddNpcMission	(806)
	AddNpcMission(	1589	)
	AddNpcMission	(	1934	)
	AddNpcMission	(	1949	)

	-----------------��̩---------��ţ
	AddNpcMission	(5629)
	AddNpcMission	(5630)




	
end

------------------------------------------------------------
-- �¶�άƽԭ-----�������ˡ���ķ
------------------------------------------------------------

function r_talk221()

	Talk( 1, "�����: � ��� �����, ��� �� ���������?" )
	--Text( 1, "����", BuyPage )
	--Text( 1, "����������� ������� �������", JumpPage, 2 )
	Text( 1, "������",CloseTalk )


	Talk( 2, "�����: ������� ����� ������������, � ���� ���� ����� ���������� ����: ��� ������� ����� - ����� �����, ��� ������� ����� - ������� �����, ��� ������� ������ - �������� �������... �����, ������ ������� ���� �������� ������� (2500, 2850). �������� �������� ��� ���. �����, ���������� ������ ���� ������� ��� ����.")


	InitTrade()
	Weapon(	0817	)
	Weapon(	0818	)
	Weapon(	0867	)
	Weapon(	0868	)
	Weapon(	0872	)
	Weapon(	0873	)
	Weapon(	0635	)
	Weapon(	0636	)
-----------------�������ˡ���ķ---------��ţ
	AddNpcMission	(5637)
	AddNpcMission	(5638)


end




------------------------------------------------------------
-- ������-----��װ�����������
------------------------------------------------------------
function r_talk222()


	Talk( 1, "����: ������! � ����� ������� � ���� ������. � ������ ����� ���������� ��� ��������������!" )
	Text( 1, "����", BuyPage )

	InitTrade()
	Defence(	0335	)
	Defence(	0511	)
	Defence(	0687	)
	Defence(	0336	)
	Defence(	0512	)
	Defence(	0688	)
	Defence(	0338	)
	Defence(	0514	)
	Defence(	0690	)
	Defence(	0337	)
	Defence(	0513	)
	Defence(	0689	)
	Defence(	0340	)
	Defence(	0516	)
	Defence(	0692	)
	Defence(	0339	)
	Defence(	0515	)
	Defence(	0691	)
	Defence(	0341	)
	Defence(	0517	)
	Defence(	0693	)
	Defence(	0342	)
	Defence(	0518	)
	Defence(	0694	)
	Defence(	0345	)
	Defence(	0521	)
	Defence(	0697	)
	Defence(	0343	)
	Defence(	0519	)
	Defence(	0695	)
	Defence(	0380	)
	Defence(	0556	)
	Defence(	0732	)
	Defence(	0351	)
	Defence(	0527	)
	Defence(	0703	)
	Defence(	0386	)
	Defence(	0562	)
	Defence(	0738	)
	Defence(	0352	)
	Defence(	0528	)
	Defence(	0704	)
	Defence(	0350	)
	Defence(	0526	)
	Defence(	0702	)
	Defence(	0354	)
	Defence(	0530	)
	Defence(	0706	)
	Defence(	0353	)
	Defence(	0529	)
	Defence(	0705	)
	Defence(	0356	)
	Defence(	0532	)
	Defence(	0708	)
	Defence(	0355	)
	Defence(	0531	)
	Defence(	0707	)
	Defence(	0357	)
	Defence(	0533	)
	Defence(	0709	)
----------------1.7
	AddNpcMission	(5118 )
	AddNpcMission	(5119 )
	AddNpcMission	(5120 )
	--AddNpcMission	(3021 )
end
------------------------------------------------------------
-- ��֮��-----����
------------------------------------------------------------
function r_talk223()


	Talk( 1, "�����: ������! � ���������� ������� �����. ��� � ���� ���� ������?" )
	Text( 1, "Return to Icicle City", GoTo, 1318, 510, "darkblue" )

end


function r_talk224()

	Talk( 1, "����� �������: ������! � ����� � � ��������!" )
AddNpcMission	(306)
	AddNpcMission	(306)	--1-��� ����� ������?(����������)
	AddNpcMission	(307)	--2-���� �� ��������!
	AddNpcMission	(308)	--3-����� ����
	AddNpcMission	(5651)	--4-����� ���� 14(����������)
	AddNpcMission	(5652)	--5-����� ���� 15
	AddNpcMission	(6313)	--6-��������������� ����� � ������ 2(����������)
	AddNpcMission	(6314)	--7-�������� �������
	AddNpcMission	(6315)	--8-������� �������
	
	AddNpcMission	(102)

end


function r_talk225()

	Talk( 1, "������� ����: ������! � �����, ������ � ��������! ���� ��� ����������!" )

	AddNpcMission	(309)	--1-����� ����(����������)
	AddNpcMission	(310)	--2-� �������!
	AddNpcMission	(312)	--3-�������������
	AddNpcMission	(313)	--4-������� ������
	AddNpcMission	(314)	--5-����� ������(����������)
	AddNpcMission	(315)	--6-���� ����(����������)
	AddNpcMission	(316)	--7-��������� ���(����������)
	AddNpcMission	(328)	--8-��������� ������(����������)
	AddNpcMission	(329)	--9-������ ���������
	AddNpcMission	(333)	--10-�������� ������������
	AddNpcMission	(336)	--11-���� �������
	AddNpcMission	(483)	--12-SOS(����������)
	AddNpcMission	(484)	--13-���� ������ �����
	AddNpcMission	(5639)	--14-����� ���� 8(����������)
	AddNpcMission	(5640)	--15-����� ���� 9
	AddNpcMission	(6311)	--16-��������������� ����� � ������ 1(����������)
	AddNpcMission	(6312)	--17-��������������� ����� � ������ 2
end


------------------------------------------------------------
-- ���Ǳ��³�-----³����
------------------------------------------------------------
function r_talk226()


	Talk( 1, "���: ��� ���� ����� ��������� ���� � ������������... � ������ ����, ��� � ��� ������. ��..." )
	
	Talk( 2, "���: ��� ���� ����� ��������� ���� � ������������... � ������ ����, ��� � ��� ������. ��...")
	Text( 2, "� ������� ������, ������� �� ��� ���", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 4144, 1 , 4)
	TriggerAction( 1, JumpPage, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "���: ������� ��� ������� ������ ��������? ����� �� 50 000 ������� � ���� ���������� ����� ��.")
	Text( 3, "������. ��� 50 000 �������", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "��� �� ������! � ���� ������� ���", CloseTalk )

	Talk( 4, "���: ��� ������ ��� ����, ����� ��� ����������")

	Talk( 5, "���: � ���� ������������ ������... �����-�� 50 000 �������...")

	InitTrigger()
	-----------��������������۽�ָ,���Ƕ��˲�����
	TriggerCondition( 1, HasRecord, 260 )
	TriggerCondition( 1, NoRecord, 262 )
	TriggerCondition( 1, NoItem, 4144, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	
	Start( GetMultiTrigger(), 1 )

	AddNpcMission	(296 )
	AddNpcMission	(297 )
	AddNpcMission	(298 )
	AddNpcMission	(302 )
	AddNpcMission	(303 )

end


------------------------------------------------------------
-- ����Ӫ�ز���վ-----��������ʦ
------------------------------------------------------------
function r_talk227()

	Talk( 1, "����: ���� ������, ��� � ������� ������������������ �������������. ��� ������ �� �������� ��-�� ����, ��� �� ���� �����." )

	AddNpcMission	(299 )
	AddNpcMission	(300 )
	AddNpcMission	(469 )
	AddNpcMission	(391 )
	----------------1.7
	AddNpcMission	(5121 )
	AddNpcMission	(5122 )
	AddNpcMission	(5123 )
end

------------------------------------------------------------
-- �����ӵ²���վ-----���ϡ�������
------------------------------------------------------------
function r_talk228()

	Talk( 1, "Simon Gilter: Sigh��When can I become an officier in the Navy? Am I not charming?" )
	
	AddNpcMission	(837 )
	AddNpcMission	(838 )
	AddNpcMission	(839 )

end

------------------------------------------------------------
-- �����ӵ²���վ-----������΢��
------------------------------------------------------------
function r_talk229()

	Talk( 1, "���� ����: ����������, �� ������ ��������� ���� ����� ������." )

	AddNpcMission	(840 )
---------------����
	AddNpcMission	(5591)
	AddNpcMission	(5592)
	AddNpcMission	(6048 )
	AddNpcMission	(6049 )

end

------------------------------------------------------------
-- �����ӵ²���վ-----ِ��ħ��
------------------------------------------------------------
function r_talk230()

	Talk( 1, "Sa Mori: Hohoho! There isn't any lady as beautiful and gentle as me in this world." )

	AddNpcMission	(844 )
	AddNpcMission	(841 )
	AddNpcMission	(842 )
	AddNpcMission	(843 )
-----------------ِ��ħ��---------��ţ
	AddNpcMission	(5625)
	AddNpcMission	(5626)
end

------------------------------------------------------------
-- �����ӵ²���վ-----���ݡ���ʯ
------------------------------------------------------------
function r_talk231()

	Talk( 1, "����� ����������: ������ ������� �� ���� ��� ������ ��������. �� ��� ��� ����� �������� ���� ������� � ��������. ����� ��������!" )

	AddNpcMission	(845 )
	AddNpcMission	(846 )
	AddNpcMission	(847 )
	AddNpcMission	(848 )
----------���ݡ���ʯ-------˫��
	AddNpcMission	(5714)
	AddNpcMission	(5715)
end

------------------------------------------------------------
-- ��������վ-----��ά�����
------------------------------------------------------------
function r_talk232()

	Talk( 1, "����: ����� ����� ������� �����, ��� ����� �������� ��� ������ ���� � �������� �� ������. � �������� �� ��� � ������� ���������� � ����� �� �������� ����. ������ �����������?" )
	
	AddNpcMission	(877 )
	AddNpcMission	(883 )
	AddNpcMission	(884 )


end

------------------------------------------------------------
-- ��������վ-----���ġ���
------------------------------------------------------------
function r_talk233()

	Talk( 1, "����� �����: � ����, ���������� � ���������� �������..." )

	AddNpcMission	(881 )
end

------------------------------------------------------------
-- ������-----��������ʦ������
------------------------------------------------------------
function r_talk234()

	Talk( 1, "������! ������ �������� ��������? ���� �������� � ������ ����!" )
	Text( 1, "� ���� ������� ��������", JumpPage, 2)
	Text( 1, "����������", BuyPage )

	InitTrade()
	--�����
	Weapon(	1808	)	--������� ����� ��������(����)
	Weapon(	1809	)	--������� ����� ��������(������)
	Weapon(	1810	)	--������� ����� ��������(������)
	Weapon(	1811	)	--������� ����� ��������(���)
	--Weapon(	0931	)	--������ ����� ��������(����)
	--Weapon(	0932	)	--������ ����� ��������(������)
	--Weapon(	0933	)	--������ ����� ��������(������)
	--Weapon(	0934	)	--������ ����� ��������(���)
	-- --�����������
	-- Weapon(	1804	)	--��������� ������
	-- Weapon(	1805	)	--�������
	-- Weapon(	1806	)	--���� ��� �����
	-- Weapon(	1807	)	--��������
	-- --������
	-- Defence(	4608	)	--���������� ������ 
	-- Defence(	4606	)	--������ ������ 
	-- Defence(		)
	-- Defence(		)
	-- Defence(	1793	)	--��������� ������ 
	-- Defence(	1792	)	--����� ������
	-- Defence(	1791	)	--������� ������ 
	-- Defence(	1790	)	--������� ������ 
	-- Defence(	1789	)	--������ ������ 
	-- Defence(	1788	)	--��������� ������
	-- Defence(	1787	)	--������� ������
	-- --���������
	-- Other(	4610	)	--��������������� ��������
	-- Other(	4609	)	--���������� ���������  
	-- Other(	4607	)	--������ ���������
	-- Other(		)
	-- Other(	1803	)	--��������� ��������� 
	-- Other(	1801	)	--������� ��������� 
	-- Other(	1800	)	--������� ���������
	-- Other(	1798	)	--��������� ��������� 
	-- Other(	1797	)	--������� ���������
	-- Other(	1802	)	--����� ���������
	-- Other(	1799	)	--������ ���������

	InitTrigger()
	TriggerCondition( 1, HasItem, 1807, 1 )
	TriggerAction( 1, OpenHair )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "������-��... ��� ����� ������ �������� �� �����. �� ���� ������, ���� ������� ���� �����. ������ ������� ��� ������� �������������� ��������.")
	Text( 2, "��, �����", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "������ �� ����", CloseTalk )

	Talk( 3, "� ���� ��� �������������� ��������. � �� ���� ������� ���� ��������.")

	AddNpcMission	(6085 )

end

------------------------------------------------------------
-- �����
------------------------------------------------------------
function r_talk235()

	Talk( 1, "�����: �� ���� ����� ��� ���� ����������� ����� � ��������. ����� ��� � �����������. � ���� ����� ������ ���� � ������." )
	Text( 1,"�����", SendExchangeData6 )

	InitExchange6()
	DoExchange6()


	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 53, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

end

------------------------------------------------------------
-- �����
------------------------------------------------------------
function r_talk236()

	Talk( 1, "�����: �� ���� ����� ��� ���� ����������� ����� � ��������. ����� ��� � �����������. � ���� ����� ������ ���� � ������.")
	
	Text( 1,"�����", SendExchangeData7 )

	InitExchange7()
	DoExchange7()

	

	-----------------��Ʒ���ˡ����---------��ţ
	AddNpcMission	(5649)
	AddNpcMission	(5650)
end

------------------------------------------------------------
-- �������
------------------------------------------------------------
function r_talk237()

	Talk( 1, "�������: � ���� ����� ������ ������ � ��������, ������� ������ ����� ��������. �� ��������� ������� ���� ���-������ �� ����." )

	Text( 1,"�����", SendExchangeData8 )
	
	
	
	InitExchange8()
	DoExchange8()

	

end

------------------------------------------------------------
-- �������� - ������ [���������]
------------------------------------------------------------
function r_talk238()

	Talk( 1, "������: � ���� ���� ����� ������ � ��������. ��������, ����� ���� ���� ���-������ �����������. ��� ���� ����� ������ � ������." )
	Text( 1, "����", BuyPage )

	InitTrade()
	Defence(	4641	)
	Defence(	4642	)
	Defence(	4643	)
	Defence(	4644	)
	Defence(	4645	)
	Defence(	4646	)
	Defence(	4647	)
	Defence(	4648	)
	Defence(	4649	)
	Defence(	4650	)
	Defence(	4706	)
	Defence(	4707	)
	Defence(	4708	)
	Defence(	4709	)
	Defence(	4711	)
	Defence(	4712	)
	Defence(	4713	)
	Defence(	4714	)
	Defence(	4715	)

end

------------------------------------------------------------
-- ��
------------------------------------------------------------
function r_talk239()

	Talk( 1, "��: � ���� ���� ��������� ������ �����. ��������, �����, ���� ���-������ ��������." )

	Text( 1,"�����", SendExchangeData9 )

	InitExchange9()
	DoExchange9()

	

end

------------------------------------------------------------
-- �����
------------------------------------------------------------
function r_talk240()

	Talk( 1, "�������� - �����: � ���� � ������� ������ ����� ������������ � ������� ������ � ��������. �������! � ���� ����� �������� ����." )
	Text( 1, "����", BuyPage )
	Text( 1,"�����", SendExchangeData10 )

	InitExchange10()
	DoExchange10()

	InitTrade()
	Defence(	4666	)
	Defence(	4667	)
	Defence(	4668	)
	Defence(	4669	)
	Defence(	4671	)
	Defence(	4672	)
	Defence(	4673	)
	Defence(	4674	)
	Defence(	4675	)
	Defence(	4676	)
	Defence(	4677	)
	Defence(	4678	)
	Defence(	4679	)
	Defence(	4681	)
	Defence(	4682	)
	Defence(	4683	)
	Defence(	4684	)
	Defence(	4685	)

end

------------------------------------------------------------
--������
------------------------------------------------------------
function r_talk241()

	Talk( 1, "������: � ���� � ������� ������ ����� ������������ � ������� ����� � ��������. �������! � ���� ����� �������� ����!" )
	Text( 1, "����", BuyPage )
	Text( 1,"�����", SendExchangeData13 )

	InitExchange13()
	DoExchange13()

	InitTrade()
	Defence(	4686	)
	Defence(	4687	)
	Defence(	4688	)
	Defence(	4689	)
	Defence(	4691	)
	Defence(	4692	)
	Defence(	4693	)
	Defence(	4694	)
	Defence(	4695	)
	Defence(	4696	)
	Defence(	4697	)
	Defence(	4698	)
	Defence(	4699	)
	Defence(	4701	)
	Defence(	4702	)
	Defence(	4703	)
	Defence(	4704	)
	Defence(	4705	)
----------��Ʒ���ˡ����-------˫��
	AddNpcMission	(5712)
	AddNpcMission	(5713)
end


------------------------------------------------------------
-- ������-----��ϴ��
------------------------------------------------------------
function r_talk252()
	
InitFuncList()
	AddFuncList( GiveItem,	1630	,	2	,	4)
	AddFuncList( GiveItem,	1631	,	1	,	4)
	AddFuncList( GiveItem,	1632	,	1	,	4)
	AddFuncList( GiveItem,	1633	,	2	,	4)
	AddFuncList( GiveItem,	1634	,	1	,	4)
	AddFuncList( GiveItem,	1635	,	1	,	4)
	AddFuncList( GiveItem,	1636	,	2	,	4)
	AddFuncList( GiveItem,	1637	,	1	,	4)
	AddFuncList( GiveItem,	1638	,	1	,	4)
	AddFuncList( GiveItem,	1639	,	2	,	4)
	AddFuncList( GiveItem,	1640	,	1	,	4)
	AddFuncList( GiveItem,	1641	,	1	,	4)
	AddFuncList( GiveItem,	1642	,	2	,	4)
	AddFuncList( GiveItem,	1643	,	1	,	4)
	AddFuncList( GiveItem,	1644	,	1	,	4)
	AddFuncList( GiveItem,	3360	,	1	,	4)
	AddFuncList( GiveItem,	3361	,	1	,	4)
	AddFuncList( GiveItem,	3362	,	1	,	4)
	AddFuncList( GiveItem,	3363	,	1	,	4)
	AddFuncList( GiveItem,	3364	,	1	,	4)
	AddFuncList( GiveItem,	3365	,	1	,	4)
	AddFuncList( GiveItem,	3366	,	1	,	4)
	AddFuncList( GiveItem,	3367	,	1	,	4)
	AddFuncList( GiveItem,	3425	,	1	,	4)
	AddFuncList( GiveItem,	3426	,	1	,	4)
	AddFuncList( GiveItem,	3427	,	1	,	4)
	AddFuncList( GiveItem,	3428	,	1	,	4)
	AddFuncList( GiveItem,	3429	,	1	,	4)
	AddFuncList( GiveItem,	3430	,	1	,	4)
	AddFuncList( GiveItem,	3431	,	1	,	4)
	AddFuncList( GiveItem,	3432	,	1	,	4)
	AddFuncList( GiveItem,	3433	,	1	,	4)
	AddFuncList( GiveItem,	1804	,	1	,	4)
	AddFuncList( GiveItem,	1805	,	1	,	4)
	AddFuncList( GiveItem,	1806	,	1	,	4)
	AddFuncList( GiveItem,	1807	,	1	,	4)
	AddFuncList( GiveItem,	1808	,	1	,	4)
	AddFuncList( GiveItem,	1809	,	1	,	4)
	AddFuncList( GiveItem,	1810	,	1	,	4)
	AddFuncList( GiveItem,	1811	,	1	,	4)
	AddFuncList( GiveItem,	1787	,	1	,	4)
	AddFuncList( GiveItem,	1788	,	1	,	4)
	AddFuncList( GiveItem,	1789	,	1	,	4)
	AddFuncList( GiveItem,	1790	,	1	,	4)
	AddFuncList( GiveItem,	1791	,	1	,	4)
	AddFuncList( GiveItem,	1792	,	1	,	4)
	AddFuncList( GiveItem,	1793	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3927, 1 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 3927, 1 )
	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "��� ������ ��������, ������� ��������� �������� ���, ��� ������. ��������� ������� - 20000 ������." )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 1)
	--Text( 1, "Clean the Christmas Box", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2892, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2892, 1 )
	TriggerAction( 1, GiveItem, 2893, 1 , 4)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 3, "�� ��! ����� �������! ����� �������� ��� ���� ����������� 10000 �����." )
	Text( 3, "����������� �������", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 4, "�������� ���������� �������" )
	Talk( 2, "������ ����������. ������������ ����� ��� ������ �������." )
end


------------------------------------------------------------
-- ���Ŷӳ�-----����ѧ��
------------------------------------------------------------
function r_talk253()
	
	Talk( 1, "�������������: ����������! � ������ � ����������� ���������������� ��������������. ���� ����� ������� ��������� � ����������. ��� ���� ������ ����?" )
	Text( 1, "������ ����", JumpPage, 3)

	Talk( 3, "�������������: ��� ���� ������� ���� �����, � ����� ���� ������. ��� ������ ������ �� ������� ������. ������� ��� ����������� ����, � � ����� ��������� � ���������." )
	Text( 3, "������ ������� ������", JumpPage, 6)
	Text( 3, "����� �������", JumpPage, 7)
	Text( 3, "����� ������������", JumpPage, 8)
	Text( 3, "������ ������������", JumpPage, 9)
	Text( 3, "���� ������������", JumpPage, 10)
	Text( 3, "���� ������������", JumpPage, 11)
	Text( 3, "������ ������������", JumpPage, 12)
	Text( 3, "��������� ��������", JumpPage, 4)

	Talk( 4, "�������������: ��� ���� ������� ���� �����, � ����� ���� ������. ��� ������ ������ �� ������� ������. ������� ��� ����������� ����, � � ����� ��������� � ���������." )
	Text( 4, "����� ������������", JumpPage, 13)
	Text( 4, "��� ������������", JumpPage, 14)
	Text( 4, "����� ������������", JumpPage, 15)
	Text( 4, "��� ������������", JumpPage, 16)
	Text( 4, "������ �����������", JumpPage, 17)
	Text( 4, "�������� ������������", JumpPage, 18)
	Text( 4, "������ ������������", JumpPage, 19)
	Text( 4, "��������� ��������", JumpPage, 5)

	Talk( 5, "�������������: ��� ���� ������� ���� �����, � ����� ���� ������. ��� ������ ������ �� ������� ������. ������� ��� ����������� ����, � � ����� ��������� � ���������." )
	Text( 5, "�������� ������������", JumpPage, 20)
	Text( 5, "������� ������������", JumpPage, 21)
	Text( 5, "�������� ���������", JumpPage, 22)
	Text( 5, "������ �����������", JumpPage, 23)
	Text( 5, "�������� ������� ������", JumpPage, 24)
	Text( 5, "������ ������� ������", JumpPage, 25)
	Text( 5, "������� �������� ������������", JumpPage, 26)
	Text( 5, "������ ������������", JumpPage, 27)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1912, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1912, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 791, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 6, "����� ��������� � ������ ������� ������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1915, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1915, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 794, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 7, "����� ��������� � ������ �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1908, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1908, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 787, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 8, "����� ��������� � ������ ������������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1926, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1926, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 805, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 9, "����� ��������� � ������� ������������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1900, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1900, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 779, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 10, "����� ��������� � ����� ������������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1886, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1886, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 765, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 11, "����� ��������� � ���� ������������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1889, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1889, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 768, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 12, "����� ��������� � �������� ������������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1904, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1904, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 783, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 13, "����� ��������� � ����� ������������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1893, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1893, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 772, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 14, "����� ��������� � ���� ������������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1896, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1896, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 775, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 15, "����� ��������� � ����� ������������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1922, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1922, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 801, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 16, "����� ��������� � ���� ������������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1918, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1918, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 797, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 17, "����� ��������� � ������ �����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1988, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1988, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0807, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 18, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 18, "����� ��������� � ������� ������������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1989, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1989, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0808, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 19, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 19, "����� ��������� � ������� ������������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1990, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1990, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0809, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 20, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 20, "����� ��������� � �������� ������������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1991, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1991, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0810, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 21, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 21, "����� ��������� � �������� ������������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1992, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1992, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0811, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 22, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 22, "����� ��������� � �������� ���������", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 1994, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1994, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0813, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 23, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 23, "����� ��������� � ������� �����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1993, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1993, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0812, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 24, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 24, "����� ��������� � �������� ������� ������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1995, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1995, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0814, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 25, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 25, "����� ��������� � ������� ������� ������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1996, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1996, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0815, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 26, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 26, "����� ��������� � ������� �������� ������������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1997, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1997, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0877, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 27, "�������������: ����� ����� ��������� ������� ��� ���������� � ������� ����, 5 ��� ���, 10 ��� ���, 10 ��� ��� � 600 000 �������" )
	Text( 27, "����� ��������� � ������� ������������", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 30, "�������������: ������, �� � �� ����� ����� ��������� ��� ������ �����." )


end

------------------------------------------------------------
-- ����֮��-----����ѧ��
------------------------------------------------------------
function r_talk254()
	
	Talk( 1, "�������������: ����������. � ��������������� ��������� ������������� ����������� ������. ���� ���� ���-������ �������?" )
	Text( 1, "� ���������� ������", JumpPage, 2)

	Talk( 2, "�������������: � ��� ����� ��������� ��������� ����������� ������. � ���� ����� ������ ��� ������ ���-����� ���." )
	Text( 2, "����� ���������", JumpPage, 3)
	
	Talk( 3, "�������������: ���������� ����� �������� ����� ���������� � ������� ������. ������ ���� � ������� � �������� ������� � ���� ���������. ������� �������� ���-������ �� ���������?" )
	Text( 3, "��� ��������", JumpPage, 6)
	Text( 3, "������� ����", JumpPage, 7)
	Text( 3, "����� ��������", JumpPage, 8)
	Text( 3, "��� ������", JumpPage, 9)
	Text( 3, "������ ������", JumpPage, 10)
	Text( 3, "������� ������", JumpPage, 11)
	Text( 3, "������ �������� ������", JumpPage, 12)
	Text( 3, "������ �������������", JumpPage, 13)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1920, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1920, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 799, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "�������������: ����� ����� ��������� � ���� ��������, ������� ��� ��� �������� � ������� ������, 5 ��� ��, 5 ��� ���, 10 ��� ���� � 200 000 �������" )
	Text( 6, "����� ��������� � ���� ��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1924, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1924, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 803, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "�������������: ����� ����� ��������� � ������� ����, ������� ��� ������� ���� � ������� ������, 5 ��� ��, 5 ��� ���, 10 ��� ���� � ��� 200 000 �������" )
	Text( 7, "����� ��������� � ������� ����", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1906, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1906, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 785, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "�������������: ����� ����� ��������� � ������ ��������, ��� �����������: ����� �������� � ������� ������, 5 ��� ��, 5 ��� ���, 10 ��� ���� � 200 000 �������" )
	Text( 8, "����� ��������� � ������ ��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1891, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1891, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 770, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "�������������: ����� ����� ��������� � ���� ������, ������� ��� ��� ������ � ������� ������, 5 ��� ��, 5 ��� ���, 10 ��� ���� � ��� 200 000 �������" )
	Text( 9, "����� ��������� � ���� ������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1898, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1898, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 777, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "�������������: ����� ����� ��������� � ������ ������, ��� �����������: ������ ������ � ������� ������, 5 ��� ��, 5 ��� ���, 10 ��� ���� � 200 000 �������" )
	Text( 10, "����� ��������� � ������ ������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1902, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1902, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 781, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "�������������: ����� ����� ��������� � ������� ������, ��� �����������: ������� ������ � ������� ������, 5 ��� ��, 5 ��� ���, 10 ��� ���� � 200 000 �������" )
	Text( 11, "����� ��������� � ������� ������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1910, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1910, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 789, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "�������������: ����� ����� ��������� � ������ �������� ������, ��� �����������: ������ �������� ������ � ������� ������, 5 ��� ��, 5 ��� ���, 10 ��� ���� � 200 000 �������" )
	Text( 12, "����� ��������� � ������ �������� ������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1884, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1884, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 763, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "�������������: ����� ����� ��������� � ������� �������������, ��� �����������: ������ ������������� � ������� ������, 5 ��� ��, 5 ��� ���, 10 ��� ���� � 200 000 �������" )
	Text( 13, "����� ��������� � ������� �������������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "�������������: ������, �� � �� ����� ����� ��������� ��� ������ �����." )

end

------------------------------------------------------------
-- ħ������-----����ѧ��
------------------------------------------------------------
function r_talk255()
	
	Talk( 1, "�������������: ������! � ������ � ����������� ���������������� ��������������. � ������� �� �������� ���� �������. ��� ���� ������?" )
	Text( 1, "� ���� �������", JumpPage, 2)

	Talk( 2, "�������������: � ����� ������ ��� �������. ���� ������ ����� ��������� � ���� ���������, ������� ��� ����." )
	Text( 2, "����� ���������", JumpPage, 3)
	
	Talk( 3, "�������������: � ���� ������� �� ������ ��������� ����� ������ ����. ����� ������ ��� ������������ � �������� ������� � � ������� ������ ������ ������. ���� ����� � ����-������ ����� ������?" )
	Text( 3, "����� ����������", JumpPage, 6)
	Text( 3, "������� �������", JumpPage, 7)
	Text( 3, "���� �������", JumpPage, 8)
	Text( 3, "���������� ����������", JumpPage, 9)
	Text( 3, "������� ����������", JumpPage, 10)
	Text( 3, "������� ����������", JumpPage, 11)
	Text( 3, "������ ����������", JumpPage, 12)
	Text( 3, "��������� ��������", JumpPage, 4)

	Talk( 4, "�������������: � ���� ������� �� ������ ��������� ����� ������ ����. ����� ������ ��� ������������ � �������� ������� � � ������� ������ ������ ������. ���� ����� � ����-������ ����� ������?" )
	Text( 4, "������ ����������", JumpPage, 13)
	Text( 4, "���� ����������", JumpPage, 14)
	Text( 4, "������ ����������", JumpPage, 15)
	Text( 4, "������ �������", JumpPage, 16)
	Text( 4, "����� �������", JumpPage, 17)
	Text( 4, "��� ����������", JumpPage, 18)
	Text( 4, "��� ����������", JumpPage, 19)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1909, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1909, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 788, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "�������������: ����� ����� ��������� � ������ ����������, ������� ���: ����� ���������� � ������� ����, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800 000 �������." )
	Text( 6, "����� ��������� � ������ ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1927, 1 )
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1927, 1 )
	TriggerAction( 1, TakeItem, 3457, 3  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 806, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "�������������: ����� ����� ��������� � ������� ����������, ������� ���: ������� ���������� � ������� ����, 3 ���� ����, 10 ��� ��, 20 ��� ��� � 800 000 �������." )
	Text( 7, "����� ��������� � ������� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1923, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1923, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 802, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "�������������: ����� ����� ��������� � ����� �������, ������� ���: ���� ������� � ������� ����, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800 000 �������." )
	Text( 8, "����� ��������� � ���� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1894, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1894, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 773, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "�������������: ����� ����� ��������� � ���������� ����������, ������� ���: ���������� ���������� � ������� ����, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800 000 �������." )
	Text( 9, "����� ��������� � ���������� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1905, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1905, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 784, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "�������������: ����� ����� ��������� � �������� ����������, ������� ���: ������� ���������� � ������� ����, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800 000 �������." )
	Text( 10, "����� ��������� � �������� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1901, 1 )
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1901, 1 )
	TriggerAction( 1, TakeItem, 3457, 3  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 780, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "�������������: ����� ����� ��������� � ������� ����������, ������� ���: ������� ���������� � ������� ����, 3 ���� ����, 10 ��� ��, 20 ��� ��� � 800 000 �������." )
	Text( 11, "����� ��������� � ������� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1913, 1 )
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1913, 1 )
	TriggerAction( 1, TakeItem, 3457, 3  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 792, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "�������������: ����� ����� ��������� � ������ ����������, ������� ���: ������ ���������� � ������� ����, 3 ���� ����, 10 ��� ��, 20 ��� ��� � 800 000 �������." )
	Text( 12, "����� ��������� � ������ ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1897, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1897, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 776, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "�������������: ����� ����� ��������� � ������ ����������, ������� ���: ������ ���������� � ������� ����, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800 000 �������." )
	Text( 13, "����� ��������� � ������ ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1887, 1 )
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1887, 1 )
	TriggerAction( 1, TakeItem, 3457, 3  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 766, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "�������������: ����� ����� ��������� � ���� ����������, ������� ���: ���� ���������� � ������� ����, 3 ���� ����, 10 ��� ��, 20 ��� ��� � 800 000 �������." )
	Text( 14, "����� ��������� � ���� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1890, 1 )
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1890, 1 )
	TriggerAction( 1, TakeItem, 3457, 3  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 769, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "�������������: ����� ����� ��������� � ������� ����������, ������� ���: ������ ���������� � ������� ����, 3 ���� ����, 10 ��� ��, 20 ��� ��� � 800 000 �������." )
	Text( 15, "����� ��������� � ������� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1919, 1 )
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1919, 1 )
	TriggerAction( 1, TakeItem, 3457, 3  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 798, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "�������������: ����� ����� ��������� � ������ �������, ������� ���: ������ ������� � ������� ����, 3 ���� ����, 10 ��� ��, 20 ��� ��� � 800 000 �������." )
	Text( 16, "����� ��������� � ������ �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1916, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1916, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 795, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "�������������: ����� ����� ��������� � ������ �������, ������� ���: ����� ������� � ������� ����, 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800 000 �������." )
	Text( 17, "����� ��������� � ������ �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2341, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 2341, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 2339, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 18, "�������������: ����� ����� ��������� � ���� ����������, ������� ���: ��� ���������� (������ ����), 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800 000 �������." )
	Text( 18, "����� ��������� � ���� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2342, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 2342, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 2340, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 19, "�������������: ����� ����� ��������� � ���� ����������, ������� ���: ��� ���������� (������ ����), 5 ��� ����, 10 ��� ��, 20 ��� ��� � 800 000 �������." )
	Text( 19, "����� ��������� � ���� ����������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "�������������: ������, �� � �� ����� ����� ��������� ��� ������ �����." )

end


------------------------------------------------------------
-- ��������-----����ѧ�Ҷӳ�
------------------------------------------------------------
function r_talk256()
	
	Talk( 1, "�����������! � ������ � ����������� ���������������� �������������� � ������� �� �������� ����������� ������. ���� � ���� ���-������ ������?" )
	Text( 1, "������ ����", JumpPage, 2)

	Talk( 2, "�������������: � ����� ���������� ������ ����. ����� ����� ��������� � ���� ���������, �� ������ �������� ��� ����. � ���� �� ������� Ҹ���� �����, � ����� ����������� ���� �������� ��������." )
	Text( 2, "����� ���������", JumpPage, 3)
	Text( 2, "�������� ��������", JumpPage, 5)
	
	Talk( 3, "�������������: ������ ���� ������ ��������� ����������, ������������ ������. ����� ����������� ������������ �, �������, ���� �������� ��� ������ � ������� �������������� ���. ��� ����� ����� �����-������ ������?" )
	Text( 3, "���� �������", JumpPage, 6)
	Text( 3, "���� ���������� �����", JumpPage, 7)
	Text( 3, "������� ���������� �������", JumpPage, 8)
	Text( 3, "����� ����������", JumpPage, 9)
	Text( 3, "����� ������", JumpPage, 10)
	Text( 3, "������ ������", JumpPage, 11)
	Text( 3, "������ ����������", JumpPage, 12)
	Text( 3, "��������� ��������", JumpPage, 4)

	Talk( 4, "�������������: ������ ���� ������ ��������� ����������, ������������ ������. ����� ����������� ������������ �, �������, ���� �������� ��� ������ � ������� �������������� ���. ��� ����� ����� �����-������ ������?" )
	Text( 4, "���� ����������", JumpPage, 13)
	Text( 4, "������� ��� ����������", JumpPage, 14)
	Text( 4, "��� ����������", JumpPage, 15)
	Text( 4, "������������ ������ ����������", JumpPage, 16)
	Text( 4, "������� ����������", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3930, 5 )
	TriggerCondition( 1, HasItem, 3931, 1 )
	TriggerCondition( 1, HasItem, 3932, 5 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3930, 5 )
	TriggerAction( 1, TakeItem, 3931, 1 )
	TriggerAction( 1, TakeItem, 3932, 5 )
	TriggerAction( 1, GiveItem, 3934, 1, 4 )
	TriggerFailure( 1, JumpPage, 31 )
	Talk( 5, "�������������: ����� ������� �������� ��������, ���� �����������: 5 Ҹ����� �����, 1 ���������, 5 ������� ����� � 200 �������." )
	Text( 5, "������� �������� ��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1911, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1911, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 790, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "�������������: ����� ����� ���������, ��� ����������� ���������� � ������� �����, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400 000 �������." )
	Text( 6, "����� ��������� � ����� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1885, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1885, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 764, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "�������������: ����� ����� ���������, ��� ����������� ���������� � ������� �����, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400 000 �������." )
	Text( 7, "����� ��������� � ���� ���������� �����", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1925, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1925, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 804, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "�������������: ����� ����� ���������, ��� ����������� ���������� � ������� �����, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400 000 �������." )
	Text( 8, "����� ��������� � ������� ���������� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1907, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1907, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 786, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "�������������: ����� ����� ���������, ��� ����������� ���������� � ������� �����, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400 000 �������." )
	Text( 9, "����� ��������� � ������ ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1914, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1914, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 793, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "�������������: ����� ����� ���������, ��� ����������� ���������� � ������� �����, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400 000 �������." )
	Text( 10, "����� ��������� � ������ ������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1917, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1917, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 796, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "Researcher: To unseal the curse on Robe of Abraxas, you must bring me: Earth Sealed Robe of Abraxas, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 11, "����� ��������� � ������ ������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1895, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1895, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 774, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "�������������: ����� ����� ���������, ��� ����������� ���������� � ������� �����, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400 000 �������." )
	Text( 12, "����� ��������� � ������ ����������.", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1899, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1899, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 778, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "�������������: ����� ����� ���������, ��� ����������� ���������� � ������� �����, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400 000 �������." )
	Text( 13, "����� ��������� � ����� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1892, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1892, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 771, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "�������������: ����� ����� ���������, ��� ����������� ���������� � ������� �����, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400 000 �������." )
	Text( 14, "����� ��������� � �������� ���� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1921, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1921, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 800, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "�������������: ����� ����� ���������, ��� ����������� ���������� � ������� �����, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400 000 �������." )
	Text( 15, "����� ��������� � ���� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1888, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1888, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 767, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "�������������: ����� ����� ���������, ��� ����������� ���������� � ������� �����, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400 000 �������." )
	Text( 16, "����� ��������� � ������������� ������� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1903, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1903, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 782, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "�������������: ����� ����� ���������, ��� ����������� ���������� � ������� �����, 5 ��� ���, 10 ��� ���, 5 ��� ��� � 400 000 �������." )
	Text( 17, "����� ��������� � ������� ����������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "�������������: ������, �� � �� ����� ����� ��������� ��� ������ �����." )

	Talk( 31, "�������������: ������, �� ��� ������������ ��������� �������� ��� ����������� Ҹ���� ����� (5), 1 ���������, 5 ������� ����� � 200 �������." )


end


------------------------------------------------------------
-- ������-----�Ĺ�
------------------------------------------------------------
function r_talk242()
	--Talk( 14, "�����: ��� ��� �������� �� ���������� �������� � � ��� ���� ������ ��������������� ��������" )
	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0860, 3, 101 )
	TriggerFailure( 1, JumpPage, 15 )
	--Text( 14, "�������� ����� 3 ��.",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0861, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
     --   Text( 14, "�������� ����� 3 ��.",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0862, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
     --   Text( 14, "�������� ������� 3 ��.",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0863, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
    --    Text( 14, "�������� ������ 3 ��.",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 1012, 1,101 )
	TriggerFailure( 1, JumpPage, 15 )
      --  Text( 14, "�������� ���� 1 ��.",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 15, "Redemption failed. You do not seem to have any Christmas Gem Voucher or your inventory has been binded. " )
	Talk( 16, "� ����� �����!" )

	Talk( 1, "�����: � ���� ��������� ������� ������� �� ����������� ����������. ������ ���������?")
	--Text( 1, "Pirate Voucher", JumpPage, 17 )
	Text( 1, "�������� �� ���������� ��������", JumpPage, 14 )
	Text( 1, "�������� �� ���������� ��������", JumpPage, 12 )
	Text( 1, "�������� �� ��������� ��������", JumpPage, 2 )
	Text( 1, "�������� �� ��������� �������� 2 ��.", JumpPage, 3 )
	Text( 1, "�������� �� ��������� ��������", JumpPage, 4 )
      --  Text( 1, "�������� �� ��������", JumpPage, 5 )
       -- Text( 1, "��������� ������ �������", JumpPage, 6 )
--	Text( 1, "�±��һ�", JumpPage, 20 )


--	Talk( 20, "�Ĺ�:���гԲ�����±���?����������Զһ����ö���." )
--	InitTrigger() --99������֮��10��
--	TriggerCondition( 1, HasItem,3915, 99 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 99 )
--	TriggerAction( 1, GiveItem, 2440, 10, 4 )
--	TriggerFailure( 1, JumpPage, 21 )
--	Text( 20, "�һ���֮��10��",MultiTrigger, GetMultiTrigger(), 1) 
	
--	InitTrigger() --100�����Ƹ�1��
--	TriggerCondition( 1, HasItem,3915, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 100 )
--	TriggerAction( 1, GiveItem, 3096, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "�һ��Ƹ�������1��",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --200�����ر�ͼ1��
--	TriggerCondition( 1, HasItem,3915, 200 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 200 )
--	TriggerAction( 1, GiveItem, 1092, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "�һ��ر�ͼ1��",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --300����99��1��
--	TriggerCondition( 1, HasItem,3915, 300 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 300 )
--	TriggerAction( 1, GiveItem, 1095, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "�һ�99��1��",MultiTrigger, GetMultiTrigger(), 1) 
	
--	InitTrigger() --2000��������֮�񣨾����5��
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 1012, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "�һ�����֮��1��",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --2000��������������5��
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 863, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "�һ�����1��",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --2000�����������ʼ�5��
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 862, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "�һ�����1��",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --2000����ӥ��ʯ��רע��5��
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 861, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "�һ�ӥ��ʯ1��",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --2000��������ʯ�����ݼ�5��
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 860, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "�һ�����ʯ1��",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --3000����65 BOSS�·�1��
--	TriggerCondition( 1, HasItem,3915,3000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 3000)
--	TriggerAction( 1, GiveItem, 241, 1, 4 )
--	TriggerFailure( 1, JumpPage, 21 )
--      Text( 20, "�һ�65 BOSS�·�1��",MultiTrigger, GetMultiTrigger(), 1) 

--	Talk( 21, "�һ�ʧ��,�����Ϻ���û���㹻���±���,���߱���������û�пո�!" )

	--Text( 1, "Exchange Lantern", JumpPage, 7 )
	--Text( 1, "���"���¾���"", JumpPage, 10 )
      
	
	Talk( 2, "�����: ������� ��� �������� �� ��������� �������� 1 ��., � � ��� ���� ��������� �������� 1 ��. ������������� �� �������� ��������� �������� 1 ��.")
	Text( 2, "����������� �����", TransferDiamond, 1)

	Talk( 3, "�����: ������� ��� �������� �� ��������� �������� 2 ��., � � ��� ���� ��������� �������� 2 ��. ������������� �� �������� ��������� �������� 2 ��.")
	Text( 3, "����������� �����", TransferDiamond, 2)

	Talk( 4, "�����: � ����� �� ��������� �������� 1 ��. ��� ��� �������� �� ��������� ��������")
	Text( 4, "����������� �����", TransferDiamond, 3)

	Talk( 5, "�����: ������� ��� �������� �� �������� � ����� �� �������� 1 ��.")
	Text( 5, "����������� �����", TransferDiamond, 4)



	Talk( 17, "�����: � ���� ���� ��������� ��������?")
	
	InitTrigger()--�һ�"IPOD"�һ�ȯ
	TriggerCondition( 1, HasItem, 2238, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2238, 1 )
 	TriggerAction( 1, GiveItem, 2306, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "� ���� ���� ��������� �������� 8",MultiTrigger, GetMultiTrigger(), 1)


	--InitTrigger()--�һ�Ħ����ʯ
	--TriggerCondition( 1, HasItem, 2240, 1 )
	--TriggerCondition( 1, HasLeaveBagGrid, 1 )
	--TriggerCondition( 1, KitbagLock, 0 )
	--TriggerAction( 1, TakeItem, 2240, 1 )
 	--TriggerAction( 1, GiveItem, 1028, 1 ,4)
	--TriggerAction( 1,JumpPage, 19 )------------------
	--TriggerFailure( 1, JumpPage, 18 )
	--Text( 17, "� ���� ���� ��������� �������� 6",MultiTrigger, GetMultiTrigger(), 1)

	Text( 17, "� ���� ���� ��������� �������� 6",JumpPage, 19)
	Talk(19,"������ �� �� �� ��������?")
	Text( 19, "����������� �����",GetChaName_5, 1)

	InitTrigger()--�һ�����Ӳ��99��
	TriggerCondition( 1, HasItem, 2237, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2237, 1 )
 	TriggerAction( 1, GiveItem, 855, 99 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "� ���� ���� ��������� �������� 9",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()-- �һ�����ͼֽ"Encrypted Blueprint"����
	TriggerCondition( 1, HasItem, 2239, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2239, 1 )
 	TriggerAction( 1, GiveItem, 1001, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "� ���� ���� ��������� �������� 7",MultiTrigger, GetMultiTrigger(), 1)

	-- InitTrigger()--�һ����ٳɳ���1��
	-- TriggerCondition( 1, HasItem, 2241, 1 )
	-- TriggerCondition( 1, HasLeaveBagGrid, 1 )
	-- TriggerCondition( 1, KitbagLock, 0 )
	-- TriggerAction( 1, TakeItem, 2241, 1 )
 	-- TriggerAction( 1, GiveItem, 0578, 1 ,4)
	-- TriggerFailure( 1, JumpPage, 18 )
	-- Text( 17, "� ���� ���� ��������� �������� 5",MultiTrigger, GetMultiTrigger(), 1)
	Text( 17, "����� ���������� ������ ��������� ��������", GetChaName_4, 1)



	Talk( 18, "�����: ������, � ���� ��� ��������� �������� ��� ���������� ����� � ���������. �������� ������ ���� ������.")

 	InitTrigger() --�ϳ���Ըʯ
	TriggerCondition( 1, HasItem, 3905, 5 )
	TriggerCondition( 1, HasItem, 3907, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3905, 5 )
	TriggerAction( 1, TakeItem, 3907, 1 )
 	TriggerAction( 1, GiveItem, 3906, 1 ,4)
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6, "�����: ������� ��� 5 ������ ������ ������� � 1 ����������� �����, � � ������ ���� 1 ���������� ������ �������.")
	Text( 6, "����������� ��������������",MultiTrigger, GetMultiTrigger(), 1)        
 	
--	InitTrigger() --�Ի�����
--	TriggerCondition( 1, HasItem, 3904, 15 )
--	TriggerCondition( 1, HasItem, 3911, 15 )
--	TriggerCondition( 1, HasItem, 4450, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerAction( 1, TakeItem, 3904, 15 )
--	TriggerAction( 1, TakeItem, 3911, 15 )
--	TriggerAction( 1, TakeItem, 4450, 1 )
 --	TriggerAction( 1, GiveItem, 3342, 1 ,4)
--	TriggerFailure( 1, JumpPage, 9 ) 
--	Talk( 7, "Bingo: Give me 15 pieces of Red Paper, 15 sticks of Bamboo Stick and 1 Strange Candle to exchange for a Lantern.")
--	Text( 7, "����������� �����",MultiTrigger, GetMultiTrigger(), 1) 
 --    
	Talk( 8, "�����: ������, � ���� ��� ������ ������ ������� ��� ������������ �����. ����� ���������� ����� � ��������� ������ ���� ��������� ������.")
--	Talk( 9, "Bingo: You do not seem to have enough of Red Paper, Bamboo Stick or Strange Candle!")

	InitTrigger() --�һ����¾���
	TriggerCondition( 1, HasItem, 3342, 2 )
	TriggerCondition( 1, HasItem, 3337, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3342, 2 )
	TriggerAction( 1, TakeItem, 3337, 1 )
	TriggerAction( 1, GiveItem, 3335, 1 ,4)
	TriggerFailure( 1, JumpPage, 11 ) 
	Talk( 10, "�����: ������� ��� 2 ����������� � ���� ��� � � ��� ���� ������ ���������� ���. ���� ��� ����� �������� � ���������� ����� - ��������� �� ������� �����.")
	Text( 10, "����������� �����",MultiTrigger, GetMultiTrigger(), 1) 
   
	Talk( 11, "�����: ��� ��������� ���������� ��� ���������� 2 ����������� � ���� ���, � ����� ���� ��������� ������ � ���������.")
	
	Talk( 12, "�����: ��� ��� 1 �������� �� ���������� ��������, � � ������� ��� �� 3 ��. ��������� ������:")

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0860, 3, 101 )
	TriggerFailure( 1, JumpPage, 13 ) 
	Text( 12, "�������� �����",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3)
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0861, 3,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12, "�������� �����",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid,3 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0862, 3,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12, "�������� �������",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --�߼���ʯ�һ�ȯ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0863, 3,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12, "�������� ������",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 13, "�����: � ���� ��� �������� �� ���������� ��������. ����� �������, ��� � ��������� ���� 3 ��������� ������.")
	Talk( 20, "�����: � ���� ����� ������ �������? �� ������� �� ��������?" )
	InitTrigger() --99������֮��10��
	TriggerCondition( 1, HasItem,3915, 99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 99 )
	TriggerAction( 1, GiveItem, 2440, 10, 4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20, "10 ������������ ������",MultiTrigger, GetMultiTrigger(), 1) 
	
	InitTrigger() --100�����Ƹ�1��
	TriggerCondition( 1, HasItem,3915, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 100 )
	TriggerAction( 1, GiveItem, 3096, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20, "��������� �����",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --200�����ر�ͼ1��
	TriggerCondition( 1, HasItem,3915, 200 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 200 )
	TriggerAction( 1, GiveItem, 1092, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20, "����� ��������",MultiTrigger, GetMultiTrigger(), 1) 

	--[[InitTrigger() --300����99��1��
	TriggerCondition( 1, HasItem,3915, 300 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 300 )
	TriggerAction( 1, GiveItem, 1095, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20, "������� 99",MultiTrigger, GetMultiTrigger(), 1) ]]--
	
	InitTrigger() --2000��������֮�񣨾����5��
	TriggerCondition( 1, HasItem,3915, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 2000 )
	TriggerAction( 1, GiveItem, 1012, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20, "�������� ����",MultiTrigger, GetMultiTrigger(), 1) 

	Text( 20, "��������� ��������", JumpPage, 22 )

	Talk( 22, "�����: � ���� ����� ������ �������? �� ������� �� ��������?" )

	InitTrigger() --2000��������������5��
	TriggerCondition( 1, HasItem,3915, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 2000 )
	TriggerAction( 1, GiveItem, 863, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 22, "�������� ������",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --2000�����������ʼ�5��
	TriggerCondition( 1, HasItem,3915, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 2000 )
	TriggerAction( 1, GiveItem, 862, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 22, "�������� �������",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --2000����ӥ��ʯ��רע��5��
	TriggerCondition( 1, HasItem,3915, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 2000 )
	TriggerAction( 1, GiveItem, 861, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 22, "�������� �����",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --2000��������ʯ�����ݼ�5��
	TriggerCondition( 1, HasItem,3915, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 2000 )
	TriggerAction( 1, GiveItem, 860, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 22, "�������� �����",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --3000����65 BOSS�·�1��
	TriggerCondition( 1, HasItem,3915,3000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 3000)
	TriggerAction( 1, GiveItem, 241, 1, 4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 22, "���������� 65-�� ������",MultiTrigger, GetMultiTrigger(), 1) 

	Text( 22, "��������� ��������", JumpPage, 20 )

	Talk( 21, "����� �� ������. ������, � ���� ���� ������������ ������ �������, ���� ��� ��������� ������ � �������!" )	
	----------------------------------------30���±�
	--InitFuncList()
	--AddFuncList( GiveItem, 374, 1, 7 )
	--AddFuncList( GiveItem, 361, 1, 7 )
	--AddFuncList( GiveItem, 314, 1, 7 )
	--AddFuncList( GiveItem, 298, 1, 7 )
	--AddFuncList( GiveItem, 339, 1, 7 )
	--AddFuncList( GiveItem, 354, 1, 7 )

--	InitTrigger()
--	TriggerCondition( 1, HasItem, 3915, 30 )
--	TriggerAction( 1, TakeItem, 3915, 30 )
--	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
--	TriggerFailure( 1, JumpPage, 11 )
--	Talk( 3, "Bingo: 30 Mooncakes to exchange for a Lv 35 armor of your class. �����������?")
--	Text( 3, "I am sure",MultiTrigger, GetMultiTrigger(), 1)
--	Text( 3, "Forget it then",CloseTalk )

end

--��� ������
function mmm_talk01()
	Talk( 1, "���: ��� ���� �������� �������� � ���� '�������' �� ������ ������ � ����. ������ ������������ ���� ���� �� ������, � ������� ������� �������� �������. �� ����� ��������� ��������� ��������� �� ���� www.tortyga.xyz ")

--[[	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8207, 1 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerFailure( 1, JumpPage, 15 )
	Text( 1, "� ���� ���� �������� �� ���" ,MultiTrigger, GetMultiTrigger(), 1)
--]]
--	Text( 1, "���� ���������� ���������� ������" ,JumpPage, 2)
--	Text( 1, "���� ���������� ���������� ���������" ,JumpPage, 8)
--	Text( 1, "��������� �������", BuyPage)
--	Text( 1, "� ������ ������������ �����, ����" ,CloseTalk)

	InitTrade()
	Other(	3400	)
	Other(	3401	)
	Other(	3402	)
	Other(	3403	)


	Talk( 2, "���: � ������, �� ������ ��� � � ���� ����������. ���� �� ����� � ����������� ������. ������ �� - ������� �������� ������, ������� ������ ����� ������� ������ �����, ����� ������ ������������ �����! ����� ���������� ���� ����������?")
	Text( 2, "���� ���������� ������ 40 ��." ,JumpPage, 3)
	Text( 2, "���� ���������� ������ 50 ��." ,JumpPage, 4)
	Text( 2, "���� ���������� ������ 60 ��." ,JumpPage, 5)

	Talk( 3, "���: ��� ���, �������� ���������� �� 40 �������? ���� ������������: 30 ��� ���, 30 ��� ��� � 3 ���. ������. ���� ������ ��� ��� �����, ������� ������.")

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3427, 30 )
	TriggerCondition( 1, HasItem, 3430, 30 )
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, TakeItem, 3427, 30 )
	TriggerAction( 1, TakeItem, 3430, 30 )
	TriggerAction( 1, GiveItem, 324, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "������ ���� (���� +6, ���. +2)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3427, 30 )
	TriggerCondition( 1, HasItem, 3430, 30 )
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, TakeItem, 3427, 30 )
	TriggerAction( 1, TakeItem, 3430, 30 )
	TriggerAction( 1, GiveItem, 327, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "������ ����������� ����� (����. +6, ���. +2)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3427, 30 )
	TriggerCondition( 1, HasItem, 3430, 30 )
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, TakeItem, 3427, 30 )
	TriggerAction( 1, TakeItem, 3430, 30 )
	TriggerAction( 1, GiveItem, 328, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "������ ����� ������� (����. +6, ���� +2)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3427, 30 )
	TriggerCondition( 1, HasItem, 3430, 30 )
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, TakeItem, 3427, 30 )
	TriggerAction( 1, TakeItem, 3430, 30 )
	TriggerAction( 1, GiveItem, 329, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "������������� ��������� (���. +6, ��� +2)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3427, 30 )
	TriggerCondition( 1, HasItem, 3430, 30 )
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, TakeItem, 3427, 30 )
	TriggerAction( 1, TakeItem, 3430, 30 )
	TriggerAction( 1, GiveItem, 330, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "���� ������ (��� +6, ���. +2)" ,MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "������� � ������, ��� ����� ������" ,JumpPage, 2)
	Text( 3, "� �������, ��� ������ ��� �����������" ,CloseTalk)


	Talk( 4, "���: ��� ���, �������� ���������� �� 50 �������? ���� ������������: 30 ��� ���, 20 ��� ��, 3 ���� ��� � 6 ���. ������. ���� ������ ��� ��� �����, ������� ������.")

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3456, 20 )
	TriggerCondition( 1, HasItem, 3455, 30 )
	TriggerCondition( 1, HasItem, 3433, 3 )
	TriggerCondition( 1, HasMoney, 6000000 )
	TriggerAction( 1, TakeMoney, 6000000 )
	TriggerAction( 1, TakeItem, 3456, 20 )
	TriggerAction( 1, TakeItem, 3455, 30 )
	TriggerAction( 1, TakeItem, 3433, 3 )
	TriggerAction( 1, GiveItem, 334, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "�������� ����� (���� +8, ���. +2)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3456, 20 )
	TriggerCondition( 1, HasItem, 3455, 30 )
	TriggerCondition( 1, HasItem, 3433, 3 )
	TriggerCondition( 1, HasMoney, 6000000 )
	TriggerAction( 1, TakeMoney, 6000000 )
	TriggerAction( 1, TakeItem, 3456, 20 )
	TriggerAction( 1, TakeItem, 3455, 30 )
	TriggerAction( 1, TakeItem, 3433, 3 )
	TriggerAction( 1, GiveItem, 346, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "���� ������ (����. +8, ���. +2)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3456, 20 )
	TriggerCondition( 1, HasItem, 3455, 30 )
	TriggerCondition( 1, HasItem, 3433, 3 )
	TriggerCondition( 1, HasMoney, 6000000 )
	TriggerAction( 1, TakeMoney, 6000000 )
	TriggerAction( 1, TakeItem, 3456, 20 )
	TriggerAction( 1, TakeItem, 3455, 30 )
	TriggerAction( 1, TakeItem, 3433, 3 )
	TriggerAction( 1, GiveItem, 347, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "������ ����� (����. +8, ���� +2)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3456, 20 )
	TriggerCondition( 1, HasItem, 3455, 30 )
	TriggerCondition( 1, HasItem, 3433, 3 )
	TriggerCondition( 1, HasMoney, 6000000 )
	TriggerAction( 1, TakeMoney, 6000000 )
	TriggerAction( 1, TakeItem, 3456, 20 )
	TriggerAction( 1, TakeItem, 3455, 30 )
	TriggerAction( 1, TakeItem, 3433, 3 )
	TriggerAction( 1, GiveItem, 348, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "�������� ����������� (���. +8, ��� +2)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3456, 20 )
	TriggerCondition( 1, HasItem, 3455, 30 )
	TriggerCondition( 1, HasItem, 3433, 3 )
	TriggerCondition( 1, HasMoney, 6000000 )
	TriggerAction( 1, TakeMoney, 6000000 )
	TriggerAction( 1, TakeItem, 3456, 20 )
	TriggerAction( 1, TakeItem, 3455, 30 )
	TriggerAction( 1, TakeItem, 3433, 3 )
	TriggerAction( 1, GiveItem, 349, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "����� ������� (��� +8, ���. +2)" ,MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "������� � ������, ��� ����� ������" ,JumpPage, 2)
	Text( 4, "� �������, ��� ������ ��� �����������" ,CloseTalk)

	Talk( 5, "���: ��� ���, �������� ���������� �� 60 �������? ���� ������������: 5 ���� ����������� ����, 5 ������������ ����� �������, 5 ������ ����, 5 ������� ������ ����� � 10 ���. ������. ���� ������ ��� ��� �����, ������� ������.")

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8203, 1 )
	TriggerAction( 1, TakeItem, 8203, 1 )
	TriggerAction( 1, GiveItem, 387, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, KitbagLock, 0 )
	TriggerCondition( 2, HasLeaveBagGrid, 1 )
	TriggerCondition( 2, HasItem, 0175, 5 )
	TriggerCondition( 2, HasItem, 3067, 5 )
	TriggerCondition( 2, HasItem, 0164, 5 )
	TriggerCondition( 2, HasItem, 0166, 5 )
	TriggerCondition( 2, HasMoney, 10000000 )
	TriggerAction( 2, TakeMoney, 10000000 )
	TriggerAction( 2, TakeItem, 0175, 5 )
	TriggerAction( 2, TakeItem, 3067, 5 )
	TriggerAction( 2, TakeItem, 0164, 5 )
	TriggerAction( 2, TakeItem, 0166, 5 )
	TriggerAction( 2, GiveItem, 387, 1, 4 )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )
	Text( 5, "������ ������ (���� +10, ���. +3)" ,MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8203, 1 )
	TriggerAction( 1, TakeItem, 8203, 1 )
	TriggerAction( 1, GiveItem, 414, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, KitbagLock, 0 )
	TriggerCondition( 2, HasLeaveBagGrid, 1 )
	TriggerCondition( 2, HasItem, 0175, 5 )
	TriggerCondition( 2, HasItem, 3067, 5 )
	TriggerCondition( 2, HasItem, 0164, 5 )
	TriggerCondition( 2, HasItem, 0166, 5 )
	TriggerCondition( 2, HasMoney, 10000000 )
	TriggerAction( 2, TakeMoney, 10000000 )
	TriggerAction( 2, TakeItem, 0175, 5 )
	TriggerAction( 2, TakeItem, 3067, 5 )
	TriggerAction( 2, TakeItem, 0164, 5 )
	TriggerAction( 2, TakeItem, 0166, 5 )
	TriggerAction( 2, GiveItem, 414, 1, 4 )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )
	Text( 5, "������� ���� (����. +10, ���. +3)" ,MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8203, 1 )
	TriggerAction( 1, TakeItem, 8203, 1 )
	TriggerAction( 1, GiveItem, 415, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, KitbagLock, 0 )
	TriggerCondition( 2, HasLeaveBagGrid, 1 )
	TriggerCondition( 2, HasItem, 0175, 5 )
	TriggerCondition( 2, HasItem, 3067, 5 )
	TriggerCondition( 2, HasItem, 0164, 5 )
	TriggerCondition( 2, HasItem, 0166, 5 )
	TriggerCondition( 2, HasMoney, 10000000 )
	TriggerAction( 2, TakeMoney, 10000000 )
	TriggerAction( 2, TakeItem, 0175, 5 )
	TriggerAction( 2, TakeItem, 3067, 5 )
	TriggerAction( 2, TakeItem, 0164, 5 )
	TriggerAction( 2, TakeItem, 0166, 5 )
	TriggerAction( 2, GiveItem, 415, 1, 4 )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )
	Text( 5, "���� ��� (����. +10, ���� +3)" ,MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8203, 1 )
	TriggerAction( 1, TakeItem, 8203, 1 )
	TriggerAction( 1, GiveItem, 416, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, KitbagLock, 0 )
	TriggerCondition( 2, HasLeaveBagGrid, 1 )
	TriggerCondition( 2, HasItem, 0175, 5 )
	TriggerCondition( 2, HasItem, 3067, 5 )
	TriggerCondition( 2, HasItem, 0164, 5 )
	TriggerCondition( 2, HasItem, 0166, 5 )
	TriggerCondition( 2, HasMoney, 10000000 )
	TriggerAction( 2, TakeMoney, 10000000 )
	TriggerAction( 2, TakeItem, 0175, 5 )
	TriggerAction( 2, TakeItem, 3067, 5 )
	TriggerAction( 2, TakeItem, 0164, 5 )
	TriggerAction( 2, TakeItem, 0166, 5 )
	TriggerAction( 2, GiveItem, 416, 1, 4 )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )
	Text( 5, "��������� ������� (���. +10, ��� +3)" ,MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8203, 1 )
	TriggerAction( 1, TakeItem, 8203, 1 )
	TriggerAction( 1, GiveItem, 417, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, KitbagLock, 0 )
	TriggerCondition( 2, HasLeaveBagGrid, 1 )
	TriggerCondition( 2, HasItem, 0175, 5 )
	TriggerCondition( 2, HasItem, 3067, 5 )
	TriggerCondition( 2, HasItem, 0164, 5 )
	TriggerCondition( 2, HasItem, 0166, 5 )
	TriggerCondition( 2, HasMoney, 10000000 )
	TriggerAction( 2, TakeMoney, 10000000 )
	TriggerAction( 2, TakeItem, 0175, 5 )
	TriggerAction( 2, TakeItem, 3067, 5 )
	TriggerAction( 2, TakeItem, 0164, 5 )
	TriggerAction( 2, TakeItem, 0166, 5 )
	TriggerAction( 2, GiveItem, 417, 1, 4 )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )
	Text( 5, "���������� ����� (��� +10, ���. +3)" ,MultiTrigger, GetMultiTrigger(), 2)
	Text( 5, "������� � ������, ��� ����� ������" ,JumpPage, 2)
	Text( 5, "� �������, ��� ������ ��� �����������" ,CloseTalk)

	Talk( 6, "���: ��� ����� ���� ������, ����, ��� ��� ������ ������� ������ ����. ���� ����� ����� ��� ������ ��� ���������.")
	Text( 6, "������, �������" ,CloseTalk)

	Talk( 7, "���: ������� � ���� �� ���������� ������, ��� �� ������� ������ ��������� ��� �����������. ��� �� �������� � ���� ������������ ���������, ��� � ���� �� ������� � ��� �����!")

	Talk( 8, "���: � ������ �� ������ ����������, � ������ ��� � ������� ��������� ���������� ���������. �� ����� ������� ���� ����������?")
	Text( 8, "���� ���������� ��������� �� 40 ��." ,JumpPage, 9)
	Text( 8, "���� ���������� ��������� �� 50 ��." ,JumpPage, 10)
	Text( 8, "���� ���������� ��������� �� 60 ��." ,JumpPage, 11)

	Talk( 9, "���: � ������� �� ��� �� ������ ���������� �� ��� � �� �����? � ���� �� ���� �������� �� ��������� 40 ��.? ���� ����, �� �������.")

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 7707, 1 )
	TriggerAction( 1, TakeItem, 7707, 1 )
	TriggerAction( 1, GiveItem, 461, 1, 4 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 9, "�������� ����� (�������� +60, ���� +40)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 7707, 1 )
	TriggerAction( 1, TakeItem, 7707, 1 )
	TriggerAction( 1, GiveItem, 739, 1, 4 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 9, "������� ����� (�������� +60, ����. +50)" ,MultiTrigger, GetMultiTrigger(), 1)
	Text( 9, "������� � ������, ��� ����� ������" ,JumpPage, 8)
	Text( 9, "� �������, ��� ������ ��� �����������" ,CloseTalk)

	Talk( 10, "���: � ������� �� ��� �� ������ ���������� �� ��� � �� �����? � ���� �� ���� �������� �� ��������� 50 ��.? ���� ����, �� �������.")

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 7708, 1 )
	TriggerAction( 1, TakeItem, 7708, 1 )
	TriggerAction( 1, GiveItem, 463, 1, 4 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 10, "���������� �� ��������� (�������� +80, ���� +50)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 7708, 1 )
	TriggerAction( 1, TakeItem, 7708, 1 )
	TriggerAction( 1, GiveItem, 462, 1, 4 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 10, "������ �������� (�������� +80, ����. +60)" ,MultiTrigger, GetMultiTrigger(), 1)
	Text( 10, "������� � ������, ��� ����� ������" ,JumpPage, 8)
	Text( 10, "� �������, ��� ������ ��� �����������" ,CloseTalk)

	Talk( 11, "���: � ������� �� ��� �� ������ ���������� �� ��� � �� �����? � ���� �� ���� �������� �� ��������� 60 ��.? ���� ����, �� �������.")

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 7709, 1 )
	TriggerAction( 1, TakeItem, 7709, 1 )
	TriggerAction( 1, GiveItem, 497, 1, 4 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 11, "�������������� ����� (�������� +100, ���� +60)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 7709, 1 )
	TriggerAction( 1, TakeItem, 7709, 1 )
	TriggerAction( 1, GiveItem, 495, 1, 4 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 11, "�������� ��������� (�������� +100, ����. +70)" ,MultiTrigger, GetMultiTrigger(), 1)
	Text( 11, "������� � ������, ��� ����� ������" ,JumpPage, 8)
	Text( 11, "� �������, ��� ������ ��� �����������" ,CloseTalk)

	Talk( 12, "���: ��� ����� ���� ��������, ��������� ��� ���������.")
	Text( 12, "������, �������" ,CloseTalk)

	Talk( 13, "���: ������� � ���� ��� �������� ��� ������. ��� �� �������� � ���� ������������ ���������, ��� � ���� �� ������� � ��� �����!")

	Talk( 14, "���: �������� �� ��� ��������? �� ������, � ���� ���� ���� �� ��� �������. ����� ������ ��������?!")

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8207, 1 )
	TriggerAction( 1, TakeItem, 8207, 1 )
	TriggerAction( 1, GiveItem, 8208, 1, 4 )
	TriggerAction( 1, JumpPage, 16 )
	TriggerFailure( 1, JumpPage, 17 )
	Text( 14, "�������� ��� �� ����" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8207, 1 )
	TriggerAction( 1, TakeItem, 8207, 1 )
	TriggerAction( 1, GiveItem, 8209, 1, 4 )
	TriggerAction( 1, JumpPage, 16 )
	TriggerFailure( 1, JumpPage, 17 )
	Text( 14, "�������� ��� �� ������������" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8207, 1 )
	TriggerAction( 1, TakeItem, 8207, 1 )
	TriggerAction( 1, GiveItem, 8211, 1, 4 )
	TriggerAction( 1, JumpPage, 16 )
	TriggerFailure( 1, JumpPage, 17 )
	Text( 14, "�������� ��� �� ��������" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8207, 1 )
	TriggerAction( 1, TakeItem, 8207, 1 )
	TriggerAction( 1, GiveItem, 8212, 1, 4 )
	TriggerAction( 1, JumpPage, 16 )
	TriggerFailure( 1, JumpPage, 17 )
	Text( 14, "�������� ��� �� ���" ,MultiTrigger, GetMultiTrigger(), 1)

	Text( 14, "��� ����� ��� ��������" ,CloseTalk)

	Talk( 15, "���: � ��������� � ���� ���� �������� �� ���. ��� �� � ��� �������������, ����!")

	Talk( 16, "���: ��� �����, ��������� �� ���������! �� �������� � ����� ������ �� ���� ����� ����������!")

	Talk( 17, "���: � �� ���� ���� �� ����, ������ ����� ���� �������� ������������ ��� � ��� �� ������� �����. ��� �� ��������, ��� � ���� ��� �������� �� ���!")

end 
------------------------------------------------------------
-- ������-----��ԭ
------------------------------------------------------------
function mmm_talk02()
	Talk( 1, "Qu Yuan: A long journey home...Sigh...")
	--AddNpcMission	(902 )
	--AddNpcMission	(903 )
	--AddNpcMission	(904 )
end

function e_talk01 ()
	Talk( 1, "�����: ������ ����� ����������, ������ ���� ����� ����� ���, � ��� ��� ����������, ����� �������������� ������� ����� ��� ������������� ������ ��������� ����. ����� �������������� ���-�������� ������ �� 4 ������. ��������� ��� �� ������ �������� � ���� �� 10 ������ ���, � ������ ��� �� 1 �������, ������ ��� � ��������� �� ����.  ������ ������ ���-�� ���?" )
	Text( 1, "����������� ������ ��������� ���" ,JumpPage, 2)
	Text( 1, "������� �������� ���", JumpPage, 3 )
	Text( 1, "������� ���", OpenEidolonMetempsychosis )
	Text( 1, "�������� ��� � ������", SendExchangeXData )
	Text( 1, "�������� ������", JumpPage, 13 )
	
	Talk( 2, "�����: ����� ��������� ��� �������� ��������������� � ���������. ��� ����, ��� ������������, ��� ��������, ��� ���� � ��� �������� ����� �������� ��������������� ��������� ���������. ��� ����� � ��� ��� ����� ��������� ����������� ���������� ������� � �������� ��������� ����� ��������������, � ����� ������� �������� ������������� ��� ��� ���, ��� � ��� �����, ����� ��� � �������� ����������.")	
	Talk( 3, "�����: ������� ������� ��� ������ ������ �� ������������� ���. � ����� ���� � ����. ����������, ���������� ��.")
	Text( 3, "������� ��� ��������� ��� ����", JumpPage, 4  )
	Text( 3, "������� ��� �������� ��� ������������", JumpPage, 5  )
	Text( 3, "������� ��� �������� ��� ��������", JumpPage, 6  )
	Text( 3, "������� ��� �������� ��� ����", JumpPage, 7  )
	Text( 3, "������� ��� �������� ��� ��������", JumpPage, 8  )
	Text( 3, "������� �������� ��� �����", JumpPage, 9 )
	Text( 3, "������� ��� �������� ��� ���", JumpPage, 10 )
	Text( 3, "������� ��� �������� ����� ��������", JumpPage, 11 )	
	Talk(  4, "�����: ����� ��������� ��� ����, ����������� ��� ��� �� ���� 26 ��., 1 ������ ����� ����� ������� ������")
	Talk(  5, "�����: ����� ��������� ��� ������������ ����������� 2 ��� �� ���� 26 ��., 1 ������ ����� ������ � ������� ������")
	Talk(  6, "�����: ��� ��� �����, ����� ��������� ��� ��������: 2 ��� �� ���� 26 ��. � 1 ������ ����� ������� � ������� ������")
	Talk(  7, "�����: ����� �������� ��� ����, ����� ��� ������� ��� 26 ��. ��� ���� � ������� ������")
	Talk(  8, "�����: ����� ������� ��� ��������, ����������� ��� ������� ������ ��� �� ���� 26 ��., 1 '������ ����� ��������' � ������� ������")
	Talk(  9, "�����: ����� �������� ��� �����, ����������: ��� ������� ��� �� ������ 26 ��., 1 ������ ����� �������, � ������� ������")
	Talk(  10, "�����: ����� ������� ��� ��� ���������: ��� ������� ��� ������� 26 ������, 1 ������ ����� ����� � ������� ������")
	Talk(  11, "�����: ���������� ��� ��������� ����� ��������: ��������� ���� ��� ����� ���������� �� ���� ����� �������� � ������������ ������ 100%, ��� ����������� �� ������������� ������� ������. ����������� �������� ����� �������� �� ��������� ��� ����� � ������� ����� ������� �� �� ������.")
	Talk(  12, "�����: ����� �������� ����� ������ ��� ���� ����� �������� ��� �������� ����� � ������ ���, �� ������ � � ���� ������ 30.000 ������� ")

InitTrigger()
TriggerCondition( 1, HasItem, 0276, 1 )
TriggerCondition( 1, HasItem, 1762, 1 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 0276, 1 )
TriggerAction( 1, TakeItem, 1762, 1 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 7008, 1, 4 )
TriggerFailure(  1, JumpPage, 1 )
Text( 12, " �������� ����� ������� ",MultiTrigger, GetMultiTrigger(), 1)
	
InitTrigger()
TriggerCondition( 1, HasItem, 0277, 1 )
TriggerCondition( 1, HasItem, 1762, 1 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 0277, 1 )
TriggerAction( 1, TakeItem, 1762, 1 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 7009, 1, 4 )
TriggerFailure(  1, JumpPage, 1 )
Text( 12, " �������� ������� ����� ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 0278, 1 )
TriggerCondition( 1, HasItem, 1762, 1 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 0278, 1 )
TriggerAction( 1, TakeItem, 1762, 1 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 7010, 1, 4 )
TriggerFailure(  1, JumpPage, 1 )
Text( 12, " �������� ������ ",MultiTrigger, GetMultiTrigger(), 1)
	
InitTrigger()
TriggerCondition( 1, HasItem, 0279, 1 )
TriggerCondition( 1, HasItem, 1762, 1 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 0279, 1 )
TriggerAction( 1, TakeItem, 1762, 1 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 7011, 1, 4 )
TriggerFailure(  1, JumpPage, 1 )
Text( 12, " �������� ����������� ����� ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 0280, 1 )
TriggerCondition( 1, HasItem, 1762, 1 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 31028035, 1 )
TriggerAction( 1, TakeItem, 1762, 1 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 7012, 1, 4 )
TriggerFailure(  1, JumpPage, 1 )
Text( 12, " �������� ���������� ������� ",MultiTrigger, GetMultiTrigger(), 1)
	
	
	
	
	InitExchangeX()
	ExchangeDataX(	1762	,	1	,	262	,	1	)
	ExchangeDataX(	8143	,	1	,	8272	,	1	)
	ExchangeDataX(	855	,	99	,	8141	,	5	)
-----------eleven
	AddNpcMission	(5019 )
	AddNpcMission	(5032 )

	--------------------1.7
	AddNpcMission	(5080	)
	AddNpcMission	(5081	)
	AddNpcMission	(5082	)
	AddNpcMission	(5083	)
	AddNpcMission	(5117 )
	AddNpcMission	(5142 )
	AddNpcMission	(5149 )
end 

------------------------------Ѱ����ʧ�İ���
function el_talk01()
	Talk( 1, "Little Fish: Be back fast! I can't handle it alone��..")	
	AddNpcMission	(907 )
	AddNpcMission	(911 )
	AddNpcMission	(912 )
	AddNpcMission	(917 )
end
function el_talk02()
	Talk( 1, "Butterfly: I am a close friend of Flower...")
	AddNpcMission	(908 )
	AddNpcMission	(909 )
	AddNpcMission	(910 )
end
-----------------------------------------------------------
---����---��������
-----------------------------------------------------------
-------------------------------------��������
function el_talk03()
	Talk( 1, "������������ �������: �� �������, ���� �� ��� ������ ������������� �����?")	
	AddNpcMission	(918 )
--------eleven
	AddNpcMission	(5018 )
	AddNpcMission	(5020 )
	AddNpcMission	(5021)
	AddNpcMission	(5022)
end
-----------------------------------------------------------
---������---���ص�¯��
-----------------------------------------------------------
function star_talk02 ()
	Talk( 1, "���� ����������: ��� ���������? ������� ����� ����� ���������� ������?" )
	Text( 1, "����������� �������", JumpPage, 2 )
	Text( 1, "��������� ����������", OpenItemTiChun )
	--Text( 1, "����������� �������", OpenItemEnergy )
	Text( 1, "���������� ���������", OpenGetStone )
	Text( 1, "������ ������������", OpenItemFix )
	Talk( 2, "���� ����������: ������ � ������ �� �����. ��������� ���!" )
	Text( 2, "����������� �� �������������� �� ��������� ����������", JumpPage, 3)
	Text( 2, "����������� �� ����������� ��������", JumpPage, 4 )
	Text( 2, "����������� �� ���������� ����������", JumpPage, 5 )
	Text( 2, "����������� �� ���������� �����������", JumpPage, 6)
	Talk( 3, "���� ����������: ���� ��������� �������� ������ ������ � ������� �������, � ����� ����-���������� 70 ��. �� ���������� ������ 75 ��. ������� ��� ���������� ���������, �� ��������� �� ����, ��� ���������, �� ��������." )
	Talk( 4, "���� ����������: ��������� ��������� ��� ���������� ������� ��������. �������������� ��������� �������� ������������ �� 50 �� 1000 ����� �������, � �������������� ������������ - �� 1500 ����� �������. ����� ������������� ��������� ��������!" )
	Talk( 5, "���� ����������: ��������� ����������� �������������� �� ��������� � ����������, ������ ����. ��� ������� ���������� ��������� 1 ����� �������.")
	Text( 5, "������ ���������� ���������", JumpPage, 7 )
	Talk( 6, "���� ����������: ����� ����� �������� ����������� ����������� ����, �������� ������ ����, �������� ����������� � ������� ������. ��������� 1 ��������� ����������. ����� ��� ���������!" )
	Talk( 7, "���� ����������: ������, ��������, ��� ������� � 3 �������: � ������ ����� - �������� ������ 3 ��., �� ������ ����� ����������� �������� 2 ��., � � ������� - ���� ׸����� ������� 1 ��. ��� ���������� ����� �������� ������ �������� ������ 3 ��." )
end 
-----------------------------------------------------------
---����---������
-----------------------------------------------------------
function star_talk03 ()
	Talk( 1, "Lucky Chance: Hi, I advised you to leave some empty slots in your inventory before playing. You might win something great!" )
	Text( 1, "Playing Lucky Chance", JumpPage, 2 )
	Text( 1, "Try your luck, play a round!", OpenTiger )
	Talk( 2, "Lucky Chance: Each try requires 5 Fairy Coins. You can try multiple times. The more you try, the higher your chance of winning!" )
end 
--------------------------------------Ѫ�ȵĸ߸�Ь
function el_talk04 ()
	
	Talk( 1, "Skinny Worker: Sigh...Sigh...Oh god, who can take revenge for me��" )-------------(2249,2705)
	AddNpcMission	(919 )
end

-----------------------------------------------------------
---ӡ�ڰ��ɡ���˹
-----------------------------------------------------------
function llleo_talk01()
	Talk( 1, "������� �����: ����� ������ ���������� �� �����������, ���������� �� ��� ������... � ������ ������ ���� �������. ������� ��� �����?" )
	Text( 1, "������ ������", JumpPage, 2)

	Talk( 2, "������� �����: �������, ��� ������� ������� �� ���� ���������, ������, ������������ � ������ �� ��� �� ������ �����������. ������ ��������� � ����� �������� - ��� � ����� ������ ������� ��������� � ����������� ���������� �� ���� �������. ������������� � ��� ��� �� �����. ���� �� ������ ��������������� ���� ��������, ������ ����� ��������" )
	Text( 2, "����� ���������", JumpPage, 3)
	
	Talk( 3, "������� �����: ����� ����� ������ � ����������� ����������, ����������� �������� ����� �������. ������ ��������� ������������� ���������� ������� �� ��������� ���. � ��� ����������� ����� 1 ������ ����. ������� ��� 1 ���������� ����, � � ������ ���� ����� ������ �� ����������." )
	Text( 3, "����� ����������", JumpPage, 6)
	Text( 3, "������� �������", JumpPage, 7)
	Text( 3, "���� �������", JumpPage, 8)
	Text( 3, "���������� ����������", JumpPage, 9)
	Text( 3, "������� ����������", JumpPage, 10)
	Text( 3, "������� ����������", JumpPage, 11)
	Text( 3, "������ ����������", JumpPage, 12)
	Text( 3, "��������� ��������", JumpPage, 4)

	Talk( 4, "������� �����: ����� ����� ������ � ����������� ����������, ����������� �������� ����� �������. ������ ��������� ������������� ���������� ������� �� ��������� ���. � ��� ����������� ����� 1 ������ ����. ������� ��� 1 ���������� ����, � � ������ ���� ����� ������ �� ����������." )
	Text( 4, "������ ����������", JumpPage, 13)
	Text( 4, "���� ����������", JumpPage, 14)
	Text( 4, "������ ����������", JumpPage, 15)
	Text( 4, "������ �������", JumpPage, 16)
	Text( 4, "����� �������", JumpPage, 17)
	Text( 4, "��� ����������", JumpPage, 18)
	Text( 4, "��� ����������", JumpPage, 19)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1909, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1909, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 788, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "������� �����: ����� ����� ��������� � ������ ����������, ��� �����������: ����� ���������� � ������� ����, 1 ���������� ���� � 800 000 �������." )
	Text( 6, "����� ��������� � ������ ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1927, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1927, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 806, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "������� �����: ����� ����� ��������� � ������� �������, ��� �����������: ������� ������� � ������� ����, 1 ���������� ���� � 800 000 �������." )
	Text( 7, "����� ��������� � ������� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1923, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1923, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 802, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "������� �����: ����� ����� ��������� � ����� �������, ��� �����������: ���� ������� � ������� ����, 1 ���������� ���� � 800 000 �������." )
	Text( 8, "����� ��������� � ����� �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1894, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1894, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 773, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "������� �����: ����� ����� ��������� � ���������� ����������, ��� �����������: ���������� ���������� � ������� ����, 1 ���������� ���� � 800 000 �������." )
	Text( 9, "����� ��������� � ���������� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1905, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1905, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 784, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "������� �����: ����� ����� ��������� � �������� ����������, ��� �����������: ������� ���������� � ������� ����, 1 ���������� ���� � 800 000 �������." )
	Text( 10, "����� ��������� � �������� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1901, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1901, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 780, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "������� �����: ����� ����� ��������� � ������� ����������, ��� �����������: ������� ���������� � ������� ����, 1 ���������� ���� � 800 000 �������." )
	Text( 11, "����� ��������� � ������� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1913, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1913, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 792, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "������� �����: ����� ����� ��������� � ������ ����������, ��� �����������: ������ ���������� � ������� ����, 1 ���������� ���� � 800 000 �������." )
	Text( 12, "����� ��������� � ������ ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1897, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1897, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 776, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "������� �����: ����� ����� ��������� � ������ ����������, ��� �����������: ������ ���������� � ������� ����, 1 ���������� ���� � 800 000 �������." )
	Text( 13, "����� ��������� � ������ ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1887, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1887, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 766, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "������� �����: ����� ����� ��������� � ���� ����������, ��� �����������: ���� ���������� � ������� ����, 1 ���������� ���� � 800 000 �������." )
	Text( 14, "����� ��������� � ���� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1890, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1890, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 769, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "������� �����: ����� ����� ��������� � ������� ����������, ��� �����������: ������ ���������� � ������� ����, 1 ���������� ���� � 800 000 �������." )
	Text( 15, "����� ��������� � ������� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1919, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1919, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 798, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "������� �����: ����� ����� ��������� � ������ �������, ��� �����������: ������ ������� � ������� ����, 1 ���������� ���� � 800 000 �������." )
	Text( 16, "����� ��������� � ������ �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1916, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1916, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 795, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "������� �����: ����� ����� ��������� � ������ �������, ��� �����������: ����� ������� � ������� ����, 1 ���������� ���� � 800 000 �������." )
	Text( 17, "����� ��������� � ������ �������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2341, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 2341, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 2339, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 18, "������� �����: ����� ����� ��������� � ���� ����������, ������� ���: ��� ���������� (������ ����), 1 ���������� ���� � 800 000 �������." )
	Text( 18, "����� ��������� � ���� ����������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2342, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 2342, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 2340, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 19, "������� �����: ����� ����� ��������� � ���� ����������, ������� ���: ��� ���������� (������ ����), 1 ���������� ���� � 800 000 �������." )
	Text( 19, "����� ��������� � ���� ����������", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "������� �����: ������, �� � ���� ��� ����������� ���������. � �� ���� ����� ���������." )

end

------
-- ������������� �����
------

function kk_talk01 ()
	
	Talk( 1, "����������� �����: ������ ���������� �������� � ��� � ������ ���������� ����������� ��������." )
	Text( 1, "����� � ����� ���������", JumpPage ,7)
	Text( 1, "�������� ����� �����", Garner2GetWiner)
	Text( 1, "����� � ����������� �������", Garner2RequestReorder)
--	Text( 1, "You received Chaos Manual", Change_FightingBook)
--	Text( 1, "About Chaos manual", JumpPage ,2)
	Text( 1, "� ������ �����", JumpPage ,3)
	Text( 1, "� ���������� �����", JumpPage ,13)
	
	Talk( 2, "����������� �����: ���� � ���� ��� ����� �����, �� � ��� ����� ����� ������������ ���� ���� �����. ���� � ���� ���� ���� �����, �� ��� ����� ������� ��� � ������� � ���� ��� ���� ���� �����. ��� ���� ���� �� �������� � ����� �������� � ��� �����." )
	Text(2,"�����������",Change_FightingBook)

	Talk( 3, "����������� �����: ������ �������� �����������, ����������� ��� � ���������� �����, ������� ��������������� ����. ������ � ������ ������ ���� ������ ������, ��������� ������ ����� ����� �����." )
	Text(3,"�� ����� �����",JumpPage ,4)
	Text(3,"� ���������� �����",JumpPage ,6)


	Talk( 4, "����������� ������: �������� �������, ��������� � ������ ������, � ���������� �����, �� ������ �������� ���� �����. ��� ����� �������� �� ����� ������ ������." )
	Talk( 6, "����������� �����: ���� ����� ����������, ��������� �� ��������� ����� �����, �������� ���� ����� � �������� ���� �����, ���� ������� ����� � ��������������� � �������� ������� �������� �������������. ��� ����������� ������������ � ������������ � ����� ������ � ������." )
	
	Talk( 7, "����������� ������: �������� ���������� �� ���-������ ������ - ������� �� ���." )
	Text(7,"�������� ����������� �������� �����",JumpPage ,8)
	Text(7,"�������� ������ �����",JumpPage ,9)
	Text(7,"�������� ������� ������ �����",JumpPage ,10)
	Text(7,"����� ������������",SendExchangeXData)
	Text(7,"�������� ���� �����",JumpPage ,12)

	-- ����� ������������
	
	InitExchangeX()

	ExchangeDataX(	2608	,	100	,	2682	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2683	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2684	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2692	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2693	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2694	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2702	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2703	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2704	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2712	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2713	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2714	,	1	,	1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1031, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1031, 1 )
	TriggerAction( 1, GiveItem, 2609, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 8, "����������� ������: 1 ������ ������� ����� ����� ����������" )
	Text( 8, "����������� �����", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1032, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1032, 1 )
	TriggerAction( 1, GiveItem, 1134, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 9, "����������� �����: 1 ������� ������ ����� ����� ����������" )
	Text( 9, "����������� �����", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1031, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1031, 5 )
	TriggerAction( 1, GiveItem, 1032, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 10, "����������� ������: ��� ����� 5 ������ ������ �����" )
	Text( 10, "����������� �����", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "Chaos Administrator: Come and find me after assembling the necessary items. Your inventory must have 1 free slot and not binded." )
	
	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Talk( 12, "����������� ������: � �������� ����� ��������� ������ �����, ������ ����� � ������ �����������. ��� �� ��������� ���������� 100, 500 � 1000 ����� �����, ��������������." )
	Text( 12, "�������� ������ ����� �����", Change_shanyao)
	Text( 12, "�������� �������� ������ �����", Change_rongyao)
	Text( 12, "�������� ������ ����������� �����", Change_huihuang)

	Talk( 13, "����������� ������: ���������� ���� ��������� ������� ��������� ����� �����! ��� ����� ������ ������ ���� �� ���� 26 ������ � �������� 20 ������ �����. ����� � ��� ����, ������ ����� �������� ������� ���� �����. ���� ������� � ������� ����������� ������� �� ��������� 15, ����������� ����� �������� 1 ���� �����, � ���������� ������� 1 ���� �����. ���� ����������� ����� �� 15 ������� ���� ������������, �� ������� 2 ����� �����, � ���������� ���������� 2 ���� �����. �� ��������� ����� ���������� ������� � ������� ������. ���� � ����� ������� 5 ��� ����� �������, ������ �� ��� ������� ������ ������� �����. ���� ������� ������ ���� ����, �� ������� �������������� ������ � ������� ������ �����. ��������: ����� �������� � ����� ���������� �������� ���� ��������� ������ � �������." )
	
end 

function b_talk25 ()
	Popup( LifeSkillBegin , 3 )	

end 

function b_talk26 ()
	Popup( LifeSkillBegin , 2 )	

end 

function b_talk27 ()
	Popup( LifeSkillBegin , 0 )
end 

function b_talk28 ()
	Popup( LifeSkillBegin , 1 )	

end 

function leo_talkaa()
	Talk( 1, "����� ��������� ��� ���������! �������� �� ����!" )
	Text( 1, "������ ��� � ���� ����.", SendExchangeXData)


	InitExchangeX()

	ExchangeDataX(	3989	,	99	,	3999	,	20	,	1)
	ExchangeDataX(	3990	,	99	,	4000	,	20	,	1)
	ExchangeDataX(	3991	,	99	,	4001	,	20	,	1)
	ExchangeDataX(	3992	,	99	,	4002	,	20	,	1)
	ExchangeDataX(	3993	,	99	,	4003	,	20	,	1)
	ExchangeDataX(	3994	,	99	,	4004	,	20	,	1)
	ExchangeDataX(	3995	,	99	,	4005	,	20	,	1)
	ExchangeDataX(	3996	,	99	,	4006	,	20	,	1)
	ExchangeDataX(	3997	,	99	,	4007	,	20	,	1)
	ExchangeDataX(	3998	,	99	,	4008	,	20	,	1)
	--AddNpcMission(3026)
end

function leo_talkbb()
	Talk( 1, "�� �������, ���� � ���� ��� �����!" )
	Text( 1, "� ���� ���� ������", SendExchangeXData)

	
	--�һ�������Ʒ ID,����,�һ�������Ʒ����,�����ֵ
	InitExchangeX()

	ExchangeDataX(	4029	,	99	,	4039	,	20	,	1)
	ExchangeDataX(	4030	,	99	,	4040	,	20	,	1)
	ExchangeDataX(	4031	,	99	,	4041	,	20	,	1)
	ExchangeDataX(	4032	,	99	,	4042	,	20	,	1)
	ExchangeDataX(	4033	,	99	,	4043	,	20	,	1)
	ExchangeDataX(	4034	,	99	,	4044	,	20	,	1)
	ExchangeDataX(	4035	,	99	,	4045	,	20	,	1)
	ExchangeDataX(	4036	,	99	,	4046	,	20	,	1)
	ExchangeDataX(	4037	,	99	,	4047	,	20	,	1)
	ExchangeDataX(	4038	,	99	,	4048	,	20	,	1)
	ExchangeDataX(	1670	,	99	,	1671	,	20	,	1)
	ExchangeDataX(	1668	,	99	,	3368	,	20	,	1)
	ExchangeDataX(	1667	,	99	,	3360	,	20	,	1)
	ExchangeDataX(	1642	,	99	,	1643	,	20	,	1)
	ExchangeDataX(	4825	,	99	,	1638	,	20	,	1)
	ExchangeDataX(	1633	,	99	,	1641	,	20	,	1)
	ExchangeDataX(	1782	,	99	,	1769	,	20	,	1)
	ExchangeDataX(	2815	,	99	,	1775	,	20	,	1)
	ExchangeDataX(	1674	,	99	,	1767	,	20	,	1)
	ExchangeDataX(	4832	,	99	,	2901	,	20	,	1)

end


------
-- �������� �����. ����� ������ ������ 99 ����� ��� �� �������� �� ��������
------
function leo_talkcc()
	Talk( 1, "��������: ������� ������ �� ������� � ����� ������ - �� �����. ����� ������� �� ��� ������." )
	Text( 1, "��������� ��� ��������� �� ��� �����", SendExchangeXData)
	Text( 1, "�������� ��������� ����������", JumpPage, 2)

	Talk( 2, "��������: ��������� ����������? ���, ����� � ���� ����� ������. ����� ���� �����? ������ ����, ��� ������ ����������� �������� �����." )

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 2608, 5 )
	TriggerAction( 1, TakeItem, 2608, 5 )
	TriggerAction( 1, GiveItem, 7301, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "��������� ���������� 2 ��.(5 ���.)", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 2608, 20 )
	TriggerAction( 1, TakeItem, 2608, 20 )
	TriggerAction( 1, GiveItem, 7302, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "��������� ���������� 3 ��.(20 ���.)", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 2609, 5 )
	TriggerAction( 1, TakeItem, 2609, 5 )
	TriggerAction( 1, GiveItem, 7303, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "��������� ���������� 4 ��.(5 �����.)", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 2609, 20 )
	TriggerAction( 1, TakeItem, 2609, 20 )
	TriggerAction( 1, GiveItem, 7304, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "��������� ���������� 5 ��.(20 �����.)", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 2610, 5 )
	TriggerAction( 1, TakeItem, 2610, 5 )
	TriggerAction( 1, GiveItem, 7305, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "��������� ���������� 6 ��.(5 ���.)", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 2610, 20 )
	TriggerAction( 1, TakeItem, 2610, 20 )
	TriggerAction( 1, GiveItem, 7306, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "��������� ���������� 7 ��.(20 ���.)", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "��������: ��� �����, ������� �� ������ ��� ��� ���������?" )
	Talk( 4, "��������: ������� � ���� �� ������� ��������� ��� ������. ��� �� �������� � ���� ������������ ����������, ��� ������������ � ��� �����." )

	InitExchangeX()
	ExchangeDataX(	855	,	60	,	2617	,	1	,	1)
	ExchangeDataX(	2588	,	3	,	2619	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2622	,	1	,	1)
	ExchangeDataX(	2589	,	5	,	2624	,	1	,	1)
	ExchangeDataX(	2588	,	3	,	2640	,	1	,	1)
	ExchangeDataX(	855	,	60	,	2641	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2642	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2643	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2644	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2649	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1055	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1056	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1058	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1059	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1061	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1062	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1064	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1065	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2680	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2681	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2682	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2683	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2684	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2685	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2690	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2691	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2692	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2693	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2694	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2695	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2700	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2701	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2702	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2703	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2704	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2705	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2710	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2711	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2712	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2713	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2714	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2715	,	1	,	1)

end

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<�ϳɽ���Ա
-----����Ա-��
function max_talka1()
	Talk( 1, "�������� - �����: ������, � �������� �����. � ������ ���� ����������� � ����������� ��� ������� ����������. ��� ����?" )
	Text( 1, "��� ���� ������ ���������� ����������?", JumpPage ,2)
	Text( 1, "� ���� ������������ ������������ ����������?", JumpPage ,7)
	Text( 1, "��� �������� ���������� ����������?", JumpPage ,3)
	Text( 1, "��� ����� ������������� ���������� ����������?", JumpPage ,4)
	Text( 1, "��� ��� �������� ����. � ������ ���� �������!", JumpPage ,6)

	Talk( 2, "�������� - �����: ���������� ���������� - ������������ ���������� �������. �� ��������� ������������� � ��������������� ������� �� ��������������� ���������." )
	Text( 2, "� ���� ��� �������� �������", JumpPage ,1)
	Text( 2, "����. ������ �������� ���, �������!", CloseTalk)

	Talk( 3, "�������� - �����: ������� ����� ����������� ��� ������� ���, ����������� � �����������. ������� � ����������� � ������ �������� � ��������������� �� ������. �� ����� ������� � ����� ����� ������ �� ������� ����������� �����. ���� ����� � ������ ����� ������ ������ ����� �����, ������ ������ �������." )
	Text( 3, "� ���� � �� �����, ��� ����� ������ ��� �����?", JumpPage ,5)
	Text( 3, "�� ������ ��� �������� ��� ����������?", JumpPage ,9)
	Text( 3, "I have other questions", JumpPage ,1)
	Text( 3, "����. ������ �������� ���, �������!", CloseTalk)

	Talk( 4, "�������� - �����: ���������� ��� ������� ���������� ��������� ��������� ������ ��� ������� �� �������� ���������� - ��� ������� ������������ ������������. ���� ������������ ������ �����������, ������ ����� ���� �����������!" )
	Text( 4, "��� ����� �����������?", JumpPage ,8)
	Text( 4, "� ���� ��� �������� �������", JumpPage ,1)
	Text( 4, "����. ������ �������� ���, �������!", CloseTalk)

	Talk( 5, "�������� - �����: ��-��! �� �����, ���������� ��� ������� ���������� ���������� ��������� � ����� ��� �� ��������. ������, ���� ������� ������� ��������, �������� � ������������ ��������.")
	Text( 5, "I have other questions", JumpPage ,1)
	Text( 5, "����. ������ �������� ���, �������!", CloseTalk)

	Talk( 6, "�������� - �����: �������, ���� ������� �������� ������!")
	Text( 6, "������� ������!", CloseTalk)

	Talk( 7, "�������� - �����: �������, �����. �� ������� ���� � ��������� ���������� �� �������. ����������, ����� � ������� ��������� �� ����.")
	Text( 7, "I have other questions", JumpPage ,1)
	Text( 7, "����. ������ �������� ���, �������!", CloseTalk)

	Talk( 8, "�������� - �����: ����������� ����� ���������� �� �������" )
	Text( 8, "I have other questions", JumpPage ,1)
	Text( 8, "����. ������ �������� ���, �������!", CloseTalk)

	Talk( 9, "�������� - �����: ���������� ����������� ���������� ��������. �����, ��� ������� ������ ������� ������ ���� ����, ��� ������� ���������������� �����������." )
	Text( 9, "I have other questions", JumpPage ,1)
	Text( 9, "����. ������ �������� ���, �������!", CloseTalk)

end

-----��������
function max_talka2()
	Talk( 1, "������� ������: ����������, �����. ���� �������� �������� �������. � ��������� � ���� ���������� �������! ��-��! ��� ���� ������?������� ������: ����������, �����. ���� �������� �������� �������. � ��������� � ���� ���������� �������! ��-��! ��� ���� ������?" )
	Text( 1, "��� � ���� �������� ����", JumpPage ,2)
	Text( 1, "���� � ��������� ��������?", JumpPage ,3)
	Text( 1, "�� ������ ������� ���� ��������?", JumpPage ,4)
	Text( 1, "������� ��� ���� ��������� ���������?", JumpPage ,5)
	Text( 1, "� ������ ���� �������...", JumpPage ,6)

	Talk( 2, "������� ������: ����� ������ ������ ������ ������ ���� - �����. � ��� ������� ����� �������� ������� ���." )
	Text( 2, "������ ��� ��������� ��������", JumpPage ,1)
	Text( 2, "�������, �������. ������ � �������.", CloseTalk)

	Talk( 3, "������� ������: ��-��! ��, �������. �� ������� ���� ����� ������� � ����������� � ������ ���������� �� ���������, ������� � ��������. ����� ������� �������� ����, ������� ������ ��������." )
	Text( 3, "�������� �� ������ ��� ��������� ��������", JumpPage ,1)
	Text( 3, "�������, �������. ������ � �������.", CloseTalk)

	Talk( 4, " Matchstick Granny: Cooking is a great skill. You should be thankful to our God for being able to use such powers. Firstly, you need to have a fairy, cooking recipe, cooking tools and lastly, ingredients for cooking. Next you need to place the things in their respective places. Remember not to place them wrongly. Once everything is ready, you can start cooking. The fire must be controlled nicely, or the things might get burnt. Wastage of food is a sin!" )
	Text( 4, "����� ����� ����� �����, ��� ����?", JumpPage ,7)
	Text( 4, "�������� �� ������ ��� ��������� ��������", JumpPage ,1)
	Text( 4, "�������, �������. ������ � �������.", CloseTalk)

	Talk( 5, "������� ������: ���� ������� ���� �� ������ �����������, �������������� ��� ����� �����������. ���� �� ������ �������� ���� �������, �� � ������ ������ �����������. �������, ���� �� ������ � ��������� ��������� ������ ���������� ����!" )
	Text( 5, "�������� �� ������ ��� ��������� ��������", JumpPage ,1)
	Text( 5, "�������, �������. ������ � �������.", CloseTalk)

	Talk( 6, "������� ������: �������, � ���� ��� ���������! �� ����������� ���� �������!")
	Text( 6, "� ������ ���� �������...", CloseTalk)

	Talk( 7, "������� ������: ������, ����� ���������� 75%. �� ������ ������ �� ������!")
	Text( 7, "�������� �� ������ ��� ��������� ��������", JumpPage ,1)
	Text( 7, "�������, �������. ������ � �������.", CloseTalk)

end

-----��¯��ʦ��÷��
function max_talka3()
	Talk( 1, "���: ������! �� ���������� ����?" )
	Text( 1, "��������, ��� ����� ������ ����", JumpPage ,2)
	Text( 1, "��� ������������ ����?", JumpPage ,3)
	Text( 1, "������ ����� ����", JumpPage ,4)
	Text( 1, "� ������ �������� ����", JumpPage ,5)


	Talk( 2, "���: ���� ������������ ��� ������������ ����������." )
	Text( 2, "� ���� ������ ������ �������", JumpPage ,1)
	Text( 2, "�������! � ��� �����", CloseTalk)

	Talk( 3, "���: ����� ������������ ����, ���� ���������� ������� ����� �������. ����� ������ �� ������ ���������� � �����������." )
	Text( 3, "� ���� ������ ������ �������", JumpPage ,1)
	Text( 3, "�������! � ��� �����", CloseTalk)

	Talk( 4, "���: � ���� ������ ���� ��� � ��������������� �������. ����� ����, ���� ����������� ����������, ������ � ��� ����������� ����������. �� ������ ��������� ���������� � ���������� �������." )
	Text( 4, "��� ������ ������ ����?", JumpPage ,7)
	Text( 4, "�������! � ��� �����", CloseTalk)

	Talk( 7, "���: � �������� ������������ �� ������ �������� �������� � ����������� ����������. ������ ��� ��������� �������� ���������� ���������� � ����� ������� ����� �������." )
	Text( 7, "� ���� ������ ������ �������", JumpPage ,1)
	Text( 7, "�������! � ��� �����", CloseTalk)

	Talk( 5, "���: �� ����? ��� ����� ��� �������?")
	Text( 5, "� ������ �������� ����", CloseTalk)

end

-----�о���
function max_talka4()
	Talk( 1, "Graduate: Hi, is there anything I can do for you?" )
	Text( 1, "What is it above you", JumpPage ,2)
	Text( 1, "Can I use Substance Generator?", JumpPage ,3)
	Text( 1, "How do Substance Generator work?", JumpPage ,4)
	Text( 1, "What item can it generate?", JumpPage ,5)
	Text( 1, "I'm just passing through.", JumpPage ,6)


	Talk( 2, "Graduate: This is our latest invention: Substance Generator. We can now refine metals with it!" )
	Text( 2, "I would like to enquire about other questions", JumpPage ,1)
	Text( 2, "So this is it. I understand now.", CloseTalk)

	Talk( 3, "Graduate: First, go to a Groceror to buy the Novice Manufacturing Guide. After you have read through the basics, you will be able to start trying on your own." )
	Text( 3, "I would like to enquire about other questions", JumpPage ,1)
	Text( 3, "So this is it. I understand now.", CloseTalk)

	Talk( 4, "Graduate: To ensure that the power of Substance Generator comes under control, you will need to have a pet fairy. Place the Manufacturing Blueprint and Material into the Substance Generator accordingly and click the button to process." )
	Text( 4, "Are there different results?", JumpPage ,7)
	Text( 4, "I would like to enquire about other questions", JumpPage ,1)
	Text( 4, "So this is it. I understand now.", CloseTalk)

	Talk( 5, "Graduate: As it is a copy of the original smelting technique, it is not as wondrous. But if you follow strictly to the formulas, you will not be disappointed." )
	Text( 5, "I would like to enquire about other questions", JumpPage ,1)
	Text( 5, "So this is it. I understand now.", CloseTalk)

	Talk( 6, "Graduate: Looks like you are��")
	Text( 6, "I am really only passing by��", CloseTalk)

	Talk( 7, "Graduate: As we are not the Almighty, what we create are not perfect. To distinguish the quality of the product we have seperate it accordingly in ascending order:                  Thank you     Abysmal                            Terrible                           Bad                                  Poor                            Mediocre                          Fair                              Good                                Great                              Superb                            Perfect .")
	Text( 7, "I would like to enquire about other questions", JumpPage ,1)
	Text( 7, "So this is it. I understand now.", CloseTalk)
end

---------------------ʥ�����ʥ����
function el_talk05 ()
	
	Talk( 1, "Christmas Tree: Merry Christmas to you! Each blessing that comes from the heart will hold true" )
	Text( 1, "Select blessing",JumpPage, 2  )
	
	Talk ( 2, "Christmas Tree: Do you want to dedicate your blessing? Every dedication requires a Christmas Card and 1000G." )
	Text( 2, "��һ��ף��",JumpPage, 3  )
	Text( 2, "�ڶ���ף��",JumpPage, 4 )
	Text( 2, "������ף��",JumpPage, 5 )
	Text( 2, "������ף��",JumpPage, 6 )
	Text( 2, "������ף��",JumpPage, 7 )
	Text( 2, "������ף��",JumpPage, 8 )
	Text( 2, "������ף��",JumpPage, 9 )

	
	Talk( 3, "��ѩƮƮ,¹������,���۵�ƽ��ҹ������,С�ְڰ�,��������,���ֵ�ʥ�����ն�����.")
	Text(3,"����������� ������������� ��� ������������������������ ������������� ��� �������������",  GetChaName_0, 1)
	Text( 3, "Return",JumpPage, 2  )

	Talk( 4, "ÿһ��ѩ��Ʈ��,ÿһ���̻�ȼ��,ÿһ��ʱ������,ÿһ��˼���,������������Ҫ�����ÿһ��ף��,ʥ������!")
	Text(4,"����������� ������������� ��� ������������������������ ������������� ��� �������������",  GetChaName_1, 1)
	Text( 4, "Return",JumpPage, 2  )

	Talk( 5, "����һ��������Ը��:��ǰ��ʥ����,������Ϊʥ�����˲��Ὣ��õ����ｵ�ٸ���,�������ʥ���ڲ�ͬ,����ĵ���,������Զ��ס����.")
	Text(5,"����������� ������������� ��� ������������������������ ������������� ��� �������������",  GetChaName_2, 1)
	Text( 5, "Return",JumpPage, 2  )

	Talk( 6, "ʥ���ڵ���,��֧���ҵ����Ѻ�������������˵����л,��л���߽��ҵ�����,�һᾡ������Ŭ���������޵Ŀ���!")
	Text(6,"����������� ������������� ��� ������������������������ ������������� ��� �������������",  GetChaName_3, 1)
	Text( 6, "Return",JumpPage, 2 )

	Talk( 7, "ʥ���ڶ�����,�ܲ������¸�ʥ����֮ǰ�������ҵ��Ҷ�֮��,����ս��Ҫ�δζ�Ӯ,����,������һ��ǿ���Ķ��ְ�,���š���")
	Text(7,"����������� ������������� ��� ������������������������ ������������� ��� �������������",  GetChaName_26, 1)
	Text( 7, "Return",JumpPage, 2 )

	Talk( 8, "����·��,������ѽ,������������һ��椰�")
	Text(8,"����������� ������������� ��� ������������������������ ������������� ��� �������������",  GetChaName_27, 1)
	Text( 8, "Return",JumpPage, 2 )

	Talk( 9, "ʥ���ڵ���,ף���Լ��������콻��������ߣ���Ʊ�����У����ƴδ�Ӯ����ζ�ٶٺã����Ұ�������С�İ����� ")
	Text(9,"����������� ������������� ��� ������������������������ ������������� ��� �������������",  GetChaName_28, 1)
	Text( 9, "Return",JumpPage, 2 )
---------------------------------------------------------------------------------------------------------------	
end



----------------------------------------����˹-------------------------
--------------------------------��į֮��6��(51300,26900)
--------------------------------------eleven------------------------------------------
function el_talk07 ()

	InitTrigger()
	TriggerCondition( 1, HasMission, 1300 )
	TriggerCondition( 1, LvCheck,  "> ", 74 )
	TriggerCondition( 1, HasCredit,9999 )
	TriggerCondition( 1, NoRecord, 1300 )
	TriggerCondition( 1, NoRecord, 1301 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, CloseTalk  )

	Talk( 1, "���������: � ��������� ������������! �� ������������ �� ���� ���� � ���� ������ 75 ������ � 9999 ����� ���������." )
	Text( 1, "������!",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "���������: ����� �������� ��������� �� ������ �������� �� ��������� ��������!��� ������ ���� �� ���?" )
	Text( 2, "�������",JumpPage, 32  )
	Text( 2, "����",JumpPage, 32  )
	Text( 2, "������",JumpPage, 3  )				--���������� �����
	Text( 2, "���������",JumpPage, 32  )

	Talk( 3, "���������: �� ������ ��� �����������! ������...��� �� ����� ����� ������� ���?" )
	Text( 3, "������� ���",JumpPage, 4  )-------------���������� �����
	Text( 3, "������ ���",JumpPage, 32  )
	Text( 3, "�������� ����� �������� �������",JumpPage,5  )-------------���������� �����
	Text( 3, "������",JumpPage, 2  )
	Text( 3, "���������� �������",JumpPage, 4  )				--���������� �����
	Text( 3, "���� ���",JumpPage, 12  )-------------���������� �����

	Talk( 4, "���������: ��� ������� ������� ���������?" )
	Text( 4, "�������� ������� ���",JumpPage, 5  )-------------���������� �����
	Text( 4, "�������� �������",JumpPage, 2  )
	Text( 4, "������� �� ���� �����",JumpPage, 32)
	Text( 4, "������",JumpPage, 6  )-------------���������� �����
	Text( 4, "���������",JumpPage, 19  )				--���������� �����
	Text( 4, "������ ���������",JumpPage, 5  )-------------���������� �����

	Talk( 5, "���������: ��� �� �������������� ������ ������������ ��������?" )
	Text( 5, "��������� ��������",JumpPage, 32  )
	Text( 5, "����� ����� ��������",JumpPage, 6  )-------------���������� �����
	Text( 5, "����",JumpPage, 3  )
	Text( 5, "����� �����",JumpPage, 22  )				--���������� �����
	Text( 5, "������ ������",JumpPage, 7  )-------------���������� �����
	Text( 5, "������ ������",JumpPage, 7  )-------------���������� �����
	Text( 5, "������� ���",JumpPage, 32  )

	Talk( 6, "���������: ����� ����������� ������ � ������� �����?" )
	Text( 6, "�������������",JumpPage, 4  )
	Text( 6, "6:00, 13:00, 22:00",JumpPage, 8  )-------------���������� �����
	Text( 6, "�����, ���� � �������",JumpPage, 7  )-------------���������� �����
	Text( 6, "5:00 � 12:00",JumpPage, 32  )
	Text( 6, "��� ���� ������� �����?",JumpPage, 32  )
	Text( 6, "���� �������� � ��",JumpPage, 32  )
	Text( 6, "���, ���, � ��� � ��� �����",JumpPage, 32  )

	Talk( 7, "���������: ��� ���� ���������� ������������ �����?" )
	Text( 7, "��� ������",JumpPage, 32  )
	Text( 7, "��� ������� ���",JumpPage, 8  )				--���������� �����
	Text( 7, "��� ��������� ��� ���������� ���������",JumpPage, 9  )-------------���������� �����
	Text( 7, "��� ���������� �������� �������",JumpPage, 5  )
	Text( 7, "��� �������",JumpPage, 32  )

	Talk( 8, "���������: ��� ����� ������ ������ �������?" )
	Text( 8, "����",JumpPage, 3  )
	Text( 8, "���� �������",JumpPage, 32  )
	Text( 8, "������ ������",JumpPage, 32  )
	Text( 8, "�������",JumpPage, 9  )				--���������� �����
	Text( 8, "�������������",JumpPage, 7  )
	Text( 8, "������ ���",JumpPage, 9  )-------------���������� �����

	Talk( 9, "���������: ��� ���� �� ��������� � ������� �����?" )
	Text( 9, "������ ������",JumpPage, 4  )
	Text( 9, "������",JumpPage, 10)				--���������� �����
	Text( 9, "���� ����������",JumpPage, 32  )
	Text( 9, "����� � ���������",JumpPage, 23)
	Text( 9, "��� ������",JumpPage, 6  )

	Talk( 10, "���������: ��� �������� ������� ����� �� ����� �� ���� ����?" )
	Text( 10, "���� ����",JumpPage, 5  )
	Text( 10, "���������� ����",JumpPage, 8  )
	Text( 10, "�������� ����",JumpPage, 11  )				--���������� �����
	Text( 10, "������ ���",JumpPage, 32  )
	Text( 10, "������� �������",JumpPage, 11  )--���������� �����


	Talk( 11, "���������: ����� ��� �� �������� ������� ����?" )
	Text( 11, "������ - ����",JumpPage, 32)
	Text( 11, "������� - ��������",JumpPage, 30  )
	Text( 11, "������������� ��������",JumpPage, 13  )-------------���������� �����
	Text( 11, "���������� ���",JumpPage, 2  )
	Text( 11, "���������� ����������",JumpPage, 13  )				--���������� �����
	Text( 11, "������ - ���",JumpPage, 32  )
	Text( 11, "��� ���������� �������.",JumpPage, 28  )

	Talk( 30, "���������: �� ����� ������� �������������!"  )
	Text( 30, "���, � ������!",JumpPage, 32  )

	Talk( 31, "���������: ��� ������� �� �� ����!" )
	Text( 31, "���, � ������!",JumpPage, 32  )

	Talk( 13, "���������: ��� �� ���� ���������� �������?" )
	Text( 13, "����� ������� ���������� ��� ����������",JumpPage, 5)
	Text( 13, "������ �������� ����������� ����������",JumpPage, 3)
	Text( 13, "����� ������ �� ���������� ����� ���������� ���������",JumpPage, 32)
	Text( 13, "��������� ���������� - ������� ��������*1000 ������",JumpPage, 14)-------------���������� �����
	Text( 13, "�� ������ ������ ��������� ������ �� 1 �����",JumpPage, 10)
	Text( 13, "������� ������������ ��������� ���� ��� ������������ � ����",JumpPage, 14)				--���������� �����
	Text( 13, "��� ������������� �������",JumpPage, 8)

	Talk( 14, "���������: ����� ��� ������ ���� �������� ���� �� ��������� ���������?" )
	Text( 14, "����� �������",JumpPage, 4)
	Text( 14, "��� ��������",JumpPage, 32)
	Text( 14, "��� ������������",JumpPage, 7)
	Text( 14, "��� ���",JumpPage, 32)
	Text( 14, "��� ���������",JumpPage, 15)				--���������� �����
	Text( 14, "��� �����",JumpPage, 8)
	Text( 14, "��� ��������",JumpPage, 7)

	Talk( 15, "���������: ����� �������� ����������� ���������� ����� �����?" )
	Text( 15, "�������� ����",JumpPage,13)
	Text( 15, "�������� �����",JumpPage, 32)
	Text( 15, "�������� ������",JumpPage, 16)				--���������� �����
	Text( 15, "�������� �������",JumpPage, 5)
	Text( 15, "����� �������",JumpPage, 4)
	Text( 15, "�������� �����",JumpPage, 16)-------------���������� �����

	Talk( 16, "���������: ��� ���������?" )
	Text( 16, "��������� ����� ����� Pi - 5",JumpPage, 32)
	Text( 16, "��������� ������� - ��������",JumpPage, 17)				--���������� �����
	Text( 16, "��� ��������� � ������",JumpPage, 5)
	Text( 16, "� ����� ������ ����� ���� ������",JumpPage, 10)
	Text( 16, "� ���� �������� ���� �����",JumpPage, 15)

	Talk( 17, "���������: �� ������ ������?" )
	Text( 17, "����� ������ �� Mordo Online",JumpPage, 32)
	Text( 17, "��� �������� ������ �������",JumpPage, 32)
	Text( 17, "� ����� ������ ����� ������ � �������",JumpPage, 32)
	Text( 17, "��� ��-�� ����!",JumpPage, 32)
	Text( 17, "� ����� ������  - International",JumpPage, 18)				--���������� �����
	Text( 17, "����� �� �����!!!" ,JumpPage, 5)
	Text( 17, "���� ��� �����...",JumpPage, 15)

	Talk( 18, "���������: ��� ����� ������� � PvP?" )
	Text( 18, "���������",JumpPage, 5)
	Text( 18, "��������� ����������",JumpPage, 14)
	Text( 18, "������ ������",JumpPage, 2)
	Text( 18, "��������� ����",JumpPage, 12)				--���������� �����
	Text( 18, "������� �������",JumpPage, 10)
	Text( 18, "�����",JumpPage, 4)

	Talk( 19, "���������: �� ������� ������ ������ ������?" )
	Text( 19, "� ������",JumpPage, 21  )
	Text( 19, "� ������ �������",JumpPage, 20  )
	Text( 19, "� ������ ��������",JumpPage, 32  )

	Talk( 20, "���������: ���������� �������� �����" )
	Text( 20, "���������� -->",JumpPage, 3  )

	Talk( 21, "���������: ����������� ��� ������� ��� ������!" )
	Text( 21, "�����������",JumpPage, 5  )

	Talk( 22, "���������: �� ������� ������ ������ ������?" )
	Text( 22, "� ������",JumpPage, 24  )
	Text( 22, "� ������ �������",JumpPage, 20  )
	Text( 22, "� ������ ��������",JumpPage, 32  )


	Talk( 23, "���������: �� ������� ������ ������ ������?" )
	Text( 23, "� ������",JumpPage, 25  )
	Text( 23, "� ������ �������",JumpPage, 8  )
	Text( 23, "� ������ ��������",JumpPage, 32  )

	Talk( 24, "���������: ���� - ��� ������� ����� ����� �������!")
	Text( 24, "� ����!",JumpPage, 6   )

	Talk( 25, "���������: ���������� ����������� ����. �� ������ ��������� ��� �� �����!")
	Text( 25, "������, � �����",JumpPage, 32  )

	Talk( 26, "���������: �� ������� ������ ������ ������?" )
	Text( 26, "� ������",JumpPage, 28  )
	Text( 26, "� ������ �������",JumpPage, 27  )
	Text( 26, "� ������ ��������",JumpPage, 32  )

	Talk( 27, "���������: ��� �������� �������� ��� ���������� �����." )
	Text( 27, "���, ��������� � �����!",JumpPage, 12  )

	Talk( 28, "���������: �� ������� ������������. ��� �� ����������� ������."  )
	Text( 28, "� ���� ����������� ���?",JumpPage, 32  )


	InitTrigger()
	TriggerCondition( 1, HasMission, 1300 )
	TriggerCondition( 1, NoRecord, 1300 )
	TriggerAction( 1, SetRecord, 1301 )
	TriggerAction( 1, JumpPage, 29 )

	Talk( 12, "���������: � ����� ��� ������� ���������. �� ������ �����������?"  )
	Text( 12, "����",MultiTrigger, GetMultiTrigger(), 1  )
	Text( 12, "���",JumpPage, 2  )

	Talk( 29, "���������: ����������! ���� �������� ������ ��� ���������! ����� � �������� ���� ����." )

	Talk( 32, "���������: �� ��� �����?" )
	Text( 32, "���, � ���� ����������� �����!",JumpPage, 2  )
	Text( 32, "� ������, ������� ����� ����...",CloseTalk  )

	AddNpcMission	(6001)	--1
	AddNpcMission	(6002)	--2
	AddNpcMission	(5823)	--3
	AddNpcMission	(5824)	--4
	AddNpcMission	(6364)	--5
	AddNpcMission	(6365)	--6

end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����˹



----------------------------------------����˹��ͼͼ-------------------------
--------------------------------ħ���������(26600,25900)
--------------------------------------eleven------------------------------------------

function el_talk08 ()


	Talk( 1, "����� ����: ��������� �����! 3 ��� � 2 ���� � ������ �������� �������! ������ ����� ������!" )

	InitTrigger()
	TriggerCondition( 1, HasMission, 1424 )
	TriggerCondition( 1, HasMission, 1414 )
	TriggerCondition( 1, NoRecord, 1424 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "�������� �� ������",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Talk( 2, "��� ���������� ��� �����? �������� ������� � � ������������ ���� ������.")
	Text( 2, "��� ������ �������",MultiTrigger, GetMultiTrigger(), 1 )
	
	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 2, "��� ���������� �������",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, JumpPage, 4)
	Text( 2, "������� ����� ������������",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "� �����, �� �������� ����.")

	InitTrigger()
	TriggerAction( 1, JumpPage, 5)
	Talk( 4, "��� ����� ���� �����? �������� ������� � � ������������ ���� ������.")
	Text( 4, "����� ������ ������",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 4, "��� ����� ���� �����? �������� ������� � � ������������ ���� ������.",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 4, "����� ������ ������",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Talk( 5, "������� ������� � ���� �����? �������� ������� � � ������������ ���� ������.")
	Text( 5, "�������� 5231",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1429)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "�������� 5321",MultiTrigger, GetMultiTrigger(), 1 )
	
	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 5, "�������� 5132",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6, "����������! �� ������� ��������� �� ��� �������! �������, �� ���������� ������ ����.")

	AddNpcMission	(6095)	--1-�������� ������� ���� ���� �� ������
	AddNpcMission	(6096)	--2-�������� ������� ���� ���� �� ������
	AddNpcMission	(6010)	--3-����� ������������ �������(����������)
	AddNpcMission	(6011)	--4-����������� ����������� �� �������
	AddNpcMission	(6012)	--5-������ ���� ���������� ����!
	AddNpcMission	(6013)	--6-������ ��������� ��������.
	AddNpcMission	(6014)	--7-��� ����� ���������?

	end

function Leo_talkQ()

	Talk(1, "������������� �������, ������ � ����������! � ������ ��� ��������� � ����.")
	Text(1, "������ �����������",JumpPage,2)
	Text(1, "������ ������" , OpenGMSend)
	Text(1, "��������� ������" , OpenGMRecv)

	Talk(2, "� �������� ����. � ������� �� ������� � ��������� ����� ������ �� ���. ������ �� ������ ����� ������ 256 ������ ��� 128 ����. ������������ �� ������ ������ ���� 1 ������. ���� �� �� �������� �� ���� ������ ������ ������ �� �� �������. ���������� ��������� ������� ������ ���������� ����!")
	Text(2, "� �����" , CloseTalk)

end


function smzh_talk ()

	Talk( 1, "������������ ����������: ������� �������! �� ������������ ��������!" )
	Text( 1, "����", BuyPage)
	Text( 1, "������", OpenRepair)

	InitTrade()
	Other	(1847)
	Other	(1848)
	Other	(1849)
	Other	(3143)
	Other	(637)
	Other	(819)
	Other	(869)
	Other	(874)

end 

function leo_talkzz()

	Talk( 1, "������! � ��� ���������. � ������� ������� ������ ��������� ��������.")
	Text( 1, "�������� ���������� ����� �����",JumpPage,2)
	Text( 1, "�������� � ������ ������������",JumpPage,3)

	Talk( 3, "������! � ��� �������� � ������ ������������? ����� ������ ���������. � ���� �� ������ ������������ ���� �����.")
	Text( 3, "������������",GetChaName_25, 1) 

	Talk( 2, "���� � ��� �������� � ������ �����, �� � ���� �� �������� �� ����.")
	Text( 2, "�������� ���� �����",PKPointToZero)
	Text( 2, "���, � ���� ��� � �������",CloseTalk)

end



------------------------------------------------------------
----							--
----							--
----		ɳᰳ�[������Ů.÷����]			--
----							--
----		82271,353453				--
------------------------------------------------------------
-------------------------------------------------------------���￪ʼP������
--function el_talk09 ()
--	
--	Talk( 1, "÷����:������,������������������ȥʥ��." )
--	Text( 1, "Church bidding", ListAuction)
--	Text( 1, "Buy Church Visit Ticket", JumpPage,2 )
--	Text( 1, "Buy invitiations", JumpPage, 5)
--
--
--	InitTrigger()
--	TriggerCondition( 1, HasMoney,5000 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerAction( 1, TakeMoney, 5000 )
--	TriggerAction(1, GiveItem, 3013, 1 , 4)
--	TriggerAction( 1, JumpPage, 3)
--	TriggerFailure( 1, JumpPage, 4 )
--	Talk(2, "Mulida: Holy and Sacred church is a place of where happiness begins, and where love gets witnessed. You're welcome to take a tour with a ticket, one ticket only costs 5000 gold.")
--	Text( 2, "����������� buying",  MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk(3, "Mulida: Welcome you to take a tour on time anytime")
--	Talk(4, "Mulida: You don't seem to have enough money on you! Or you bag is already locked, please make you have 1 empty space inside your inventory")
--	
--	Talk( 5, "Meridar: Church permit will allow you to purchase invitation cards, each stack of 10 cost 50000G. Invite your friends now!" )
--	Text( 5, "����������� buying", ChangeItem, 1  )
--	
--	
--end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<÷����
	
-----------------------------Թ���
function ync_talk ()
	Talk( 1, "�������� ����: ��� �� �� ���� ��������? ���� �� ������, � ���� �����.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1403 )
	TriggerCondition( 1, HasRecord, 1402 )
	TriggerCondition( 1, NoRecord, 1403 )
	TriggerCondition( 1, NoRecord, 1404 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "�������� �� ������",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1405 )
	Talk( 2, "������... ������ ��� ������ �������? �� ������, ������� ������� �� ������? � ����� �������� ������ ���� � �������� ���, ����� ��������� ���� �������� �������.")
	Text( 2, "11 ����",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1406 )
	Text( 2, "12 ����",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1406 )
	Text( 2, "13 ����",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1407 )
	Text( 2, "��� ��� �����",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 3, "� ������ ���������! ������� �� ���� ��������!")

	AddNpcMission	(6072 )
	AddNpcMission	(6073 )
	AddNpcMission	(6074 )
	AddNpcMission	(6075 )
	AddNpcMission	(6076 )
	AddNpcMission	(6077 )

end

--------------------------------------���˵�����սʿ

function Zs_Soldier ()
	Talk( 1, "������� ����, �� ���� ������� �������.")


	AddNpcMission	(6098 )
	AddNpcMission	(6099 )
end
---------------------------------------------------------
--							--
--							--
--		����7��[����]			--
--							--
--		190, 181				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function el_talk11 ()
	
	Talk( 1, "����: ����� ���������� � ������� 7! � ��������, ��� ���� �������, �� �� ����� �������. ������� ��� ��� ��� �������� ��������� �����������" )
--	Text( 1, "Please click here once", JumpPage,2 )
--	
--	
--	InitTrigger()
--	TriggerCondition( 1, NoRecord, 1154 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerAction(1, GiveItem, 3877, 1 , 4)
--	TriggerAction( 1, SetRecord, 1154 )
--	TriggerAction( 1, JumpPage, 3)
--	TriggerFailure( 1, JumpPage, 4 )
--	Talk( 2, "Lurie: Friend, to honour your bravery into the abaddon, I'll give you a present, but only one chance per person!")
--	Text( 2, "I accept",  MultiTrigger, GetMultiTrigger(), 1)
--	Text( 2,"Thank you, I'm just passing by.",CloseTalk)
--
--	Talk(3, "Lurie: Brave warrior, my friend Anita at the 15th floor of Abaddon have a bigger surprise for you, don't miss it!")
--	Talk(4, "Lurie: Please ����������� your bag is not locked, and make sure you have one space in your inventory. Present can only be claimed once!")
--	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<����

---------------------------------------------------------
--							--
--							--
--		����15��[ϣ����]			--
--							--
--		314, 303				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function el_talk12 ()
	
	Talk( 1, "�� 15 ������ �������� ������ ���������� ��������� �������. �� ������� ���� ����� ��� ������." )
--	Text( 1, "Please click here once", JumpPage,2 )
--	
--	
--	InitTrigger()
--	TriggerCondition( 1, NoRecord, 1155 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerAction(1, GiveItem, 0853, 1 , 4)
--	TriggerAction( 1, SetRecord, 1155 )
--	TriggerAction( 1, JumpPage, 3)
--	TriggerFailure( 1, JumpPage, 4 )
--	Talk( 2, "Anita: Friend, anyone who dares challenge Abaddon level 15 is entited to get a present from me. You only have one chance though!")
--	Text( 2, "I accept",  MultiTrigger, GetMultiTrigger(), 1)
--	Text( 2,"Thank you, I'm just passing by.",CloseTalk)
--
--	Talk(3, "Anita: Friend, when on the road to exploring Abaddon, there's no loser. Going forward is a hero's destiny.")
--	Talk(4, "Anita: Please ����������� your inventory is not locked or you have one free space inside your inventory. You can only claim the present once!")
	
end 


---------------------------------------------------------
--							--
--							--
--		������[����]			--
--							--
--		3228,2508				--
----------------------------------------------------------
function amon_talk1 ()
	Talk( 1, "����: һ������,������Ե.�������˼�����.")


	--AddNpcMission	(5736 )
	--AddNpcMission	(5737 )
end

---------------------------------------------------------
--							--
--							--
--		�ĵ�[ţ��]			--
--							--
--		3670,2636			--
----------------------------------------------------------
function amon_talk2 ()
	Talk( 1, "ţ��: ��۶�,���ӳ�.����ȵ��·,����·,����·.")


	--AddNpcMission	(5738 )
	--AddNpcMission	(5739 )
end

---------------------------------------------------------
--							--
--							--
--		����[֯Ů]			--
--							--
--		1599,909			--
----------------------------------------------------------
function amon_talk3 ()
	Talk( 1, "֯Ů: ��۶�,˼�.����ȵ��·,����·,����·.")


	--AddNpcMission	(5740 )
	
end
---------------------------------------------------------
--							--
--							--
--		����[У����ŵ]			--
--							--
--		2232,2781			--
----------------------------------------------------------

-----------------------------------------------------------
----							--
----							--
----		ɳ�[��������ʦ]			--
----							--
----		871,3581			--
------------------------------------------------------------
function dina_talk02 ()
	Talk( 1, "��������ʦ: ��ѧ�ڣ��¿�ʼ��ѧ��ֹ��~")
	
	InitTrigger()
	TriggerCondition( 1, HasMission, 1458)
	TriggerCondition( 1, NoRecord, 1458)
	TriggerCondition( 1, NoRecord, 1461)
	TriggerCondition( 1, HasItem, 579, 1)
	TriggerAction( 1, JumpPage, 2)
	TriggerAction( 1, SetTestTime )
	TriggerFailure( 1, JumpPage, 20)
	Text( 1, "�μ���ѧ����",MultiTrigger, GetMultiTrigger(), 1  )
	
	Talk( 2, "����һ:���ڻ�����־�Ƿ�ɽ���?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 3)
	Text( 2, "�ɽ���",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 3)
	Text( 2, "���ɽ���",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "�����:NPC��������ʦ���Ǹ�����վ?")

	InitTrigger()
	TriggerAction( 1, JumpPage, 4)
	TriggerAction( 1, RenewTestTime2)
	Text( 3, "Icicle Haven",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 4)
	Text( 3, "Icespire Haven",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 4, "������:�ױ��������ܲ���ͬʱװ��?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 5)
	Text( 4, "����",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 5)
	Text( 4, "������",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 5, "������:��Ӱ����ÿ�쿪�ż���?")
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "2��",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "4��",MultiTrigger, GetMultiTrigger(), 1  )
	
	Talk( 6, "������:ʥ��ʯ������Ƕ��Ь������?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 7)
	Text( 6, "����",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 7)
	Text( 6, "������",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 7, "������:100������ӥ�������ĺ����Ƕ���?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 8)
	Text( 7, "623",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 8)
	Text( 7, "632",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 8, "������:��������ְҵ�������м��ּ�������Ҫ���ĵ��߲���ʩչ��?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 9)
	Text( 8, "3��",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 9)
	Text( 8, "4��",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 9, "�����:���Ǳ�һ���м�ֻ�������?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 12)
	Text( 9, "9ֻ",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 12)
	Text( 9, "10ֻ",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 12, "��ȷ����������ش���Щ������?")

	TriggerAction( 1, SetRecord, 1461)
	TriggerAction( 1, JumpPage, 13)
	Text( 12, "I am sure",MultiTrigger, GetMultiTrigger(), 1  )

	Text( 12, "Let me think again", CloseTalk )
	
	Talk( 13, "�ش����˾Ϳ������һ�������Ŷ,������.")
	Text( 13, "Ok", CloseTalk )

	Talk( 20, "��μ���ѧ������?������ѧ֤����?û�Ļ��Լ�ȥ����ŵУ����һ�Ű�")

	AddNpcMission	(6132 )
	AddNpcMission	(6133 )
	AddNpcMission	(6134 )
	AddNpcMission	(6135 )
	AddNpcMission	(6136 )


end
-----------------------------------------------------------
----							--
----							--
--		����[������˹1]			--
--							--
--		2646,671			--
----------------------------------------------------------
function dina_talk03 ()
	Talk( 1, "������˹:����,�²��Ǹ�������������!�´��˿���Ҫ���Ҹϻذ����ǵ�Ŷ.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "����������",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "ԭ�������������Ŀ�����˹��,������Ϊ���������Ŀ�����˹��?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 1)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "�Ҳ�����������Ŀ�����˹",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "Let me think again", CloseTalk)

	Talk( 3, "����˭?���ֲ���ʶ��.")

	Talk( 4, "��ѽ,����ץס��,�ðɺð�,�Ѱ����ȵ��Ÿ��Ұ�")

	AddNpcMission	(6137 )

end

---------------------------------------------------------
--							--
--							--
--		����[������˹2]			--
--							--
--		2718,586			--
----------------------------------------------------------
function dina_talk04 ()
	Talk( 1, "������˹:����,�²��Ǹ�������������!�´��˿���Ҫ���Ҹϻذ����ǵ�Ŷ.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "����������",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "ԭ�������������Ŀ�����˹��,������Ϊ���������Ŀ�����˹��?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 2)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "�Ҳ�����������Ŀ�����˹",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "Let me think again", CloseTalk)

	Talk( 3, "����˭?���ֲ���ʶ��.")

	Talk( 4, "��ѽ,����ץס��,�ðɺð�,�Ѱ����ȵ��Ÿ��Ұ�")

	AddNpcMission	(6137 )

end

---------------------------------------------------------
--							--
--							--
--		����[������˹3]			--
--							--
--		2714,699			--
----------------------------------------------------------
function dina_talk05 ()
	Talk( 1, "������˹:����,�²��Ǹ�������������!�´��˿���Ҫ���Ҹϻذ����ǵ�Ŷ.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "����������",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "ԭ�������������Ŀ�����˹��,������Ϊ���������Ŀ�����˹��?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 3)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "�Ҳ�����������Ŀ�����˹",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "Let me think again", CloseTalk)

	Talk( 3, "����˭?���ֲ���ʶ��.")

	Talk( 4, "��ѽ,����ץס��,�ðɺð�,�Ѱ����ȵ��Ÿ��Ұ�")

	AddNpcMission	(6137 )
end

---------------------------------------------------------
--							--
--							--
--		����[������˹4]			--
--							--
--		2609,607			--
----------------------------------------------------------
function dina_talk06 ()
	Talk( 1, "������˹:����,�²��Ǹ�������������!�´��˿���Ҫ���Ҹϻذ����ǵ�Ŷ.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "����������",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "ԭ�������������Ŀ�����˹��,������Ϊ���������Ŀ�����˹��?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 0)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "�Ҳ�����������Ŀ�����˹",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "Let me think again", CloseTalk)

	Talk( 3, "����˭?���ֲ���ʶ��.")

	Talk( 4, "��ѽ,����ץס��,�ðɺð�,�Ѱ����ȵ��Ÿ��Ұ�")
	AddNpcMission	(6137 )

end

-----------------------����ϵͳ
function reading_talk01 ()
	Talk( 1 , "Tester: I am the tester in Argent City. I will assist you when taking your tests. Put your Student card in your bag before starting the tests.")
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3279, 1 )
	TriggerCondition( 1, HasItem, 3289, 1 )
	TriggerAction( 1, checkcytime )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Hand in the Report Card.",  MultiTrigger, GetMultiTrigger(), 1)

	Text( 1, "What are requirements for taking tests?" , JumpPage , 5)

	Text( 1, "What are the tests like?", JumpPage , 6)

	Talk( 4, "Tester: There is no Student card and no Report card in your bag")

	Talk( 5, "Tester: The requirements for taking tests are strict. You have to have a Student card in your bag.")

	Talk( 6, "Tester: You have to put your student card in your bag and then start the tests. After the tests are completed, you will be given a Report card. I will reward you based on your grades.")

	AddNpcMission	(112 )
end

function reading_talk02 ()
	Talk( 1, "Promotion Examination Officer: I am the Promotion Examination Officer in Icicle City. I sell test papers for the Promotion Examination.")

	InitTrigger()
	TriggerCondition( 1, CheckXSZCh )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasNoItem, 3280 )
	TriggerCondition( 1, HasNoItem, 3281 )
	TriggerCondition( 1, HasNoItem, 3282 )
	TriggerAction( 1, AddChaItem7)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "I want to take the test papers.",  MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, CheckXSZCh )
	TriggerCondition( 1, CheckKJNum )
	TriggerCondition( 1, HasItem, 3280, 1 )
	TriggerCondition( 1, HasItem, 3282, 1 )
	TriggerAction( 1 , AddChaItem8)
	TriggerAction( 1, TakeItem, 3282, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "I have completed the tests and want my report card.",  MultiTrigger, GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, CheckXSZCh )
	TriggerCondition( 1, HasItem, 3289, 1 )
	TriggerCondition( 1, HasItem, 3281, 1 )
	TriggerAction( 1, checksjtime )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Hand in the report card and find out your test results.",  MultiTrigger, GetMultiTrigger(), 1)

	Text( 1, "What are the requirements for taking the Promotion Examination?" , JumpPage , 5)

	Text( 1, "What is the Promotion Examination like?", JumpPage , 6)
	
	Talk( 2, "Promotion Examination Officer: You failed to meet the requirements and are unable to take the test. Review the requirements before taking the exam.")

	Talk( 3, "Promotion Examination Officer: You must have one test paper and one answer sheet to get your report card.")

	Talk( 4, "Promotion Examination Officer: You don��t have a report card.")

	Talk( 5, "Promotion Examination Officer: Requirements for taking the Promotion Exam are strict. You must have one student card in your bag with full academic credits. Besides, you are not allowed to own any test papers, answer sheets or report cards.")

	Talk( 6, "Promotion Examination Officer: You have to take a test paper before starting the Promotion Examination. After completing the exam, you will be given an answer sheet. Taking your test paper and answer sheet to visit me, you will get your report card. I will reward you according to your grades.")
	
	AddNpcMission	(6138 )

end


----------------------------------------------------------
--							--
--							--
--		ɳᰳ�[������Ů.÷����]			--
--							--
--		82271,353453				--
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function el_talk09 ()
	
	Talk( 1, "÷����:������,������������������ȥʥ��." )
	Text( 1, "���ڽ���", JumpPage, 17)	

	Talk( 17, "÷����:��Ҫ�������𣿽��������д��ۻŶ." )

	Text( 17, "���ý��ü��", JumpPage, 6)
	Text( 17, "Church bidding", ListAuction)
	Text( 17, "Buy Church Visit Ticket", JumpPage,2 )
	Text( 17, "Buy invitiations", JumpPage, 5)




	InitTrigger()
	TriggerCondition( 1, HasMoney,5000 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction(1, GiveItem, 3024, 1 , 4)
	TriggerAction( 1, JumpPage, 3)
	TriggerFailure( 1, JumpPage, 4 )
	Talk(2, "÷����:��ʥ���ŵĽ������Ҹ���ʼ�ĵط�,�ǰ���ׯ�ϵļ�֤.ÿ��һ��17:00~17:10��ӭ��Ʊ�ι�,ÿ�Ųι���Ʊֻ��5000��Ϸ��")
	Text( 2, "����������� buying",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "Mulida: Welcome you to take a tour on time anytime")
	Talk(4, "÷����:�������ƺ�û���㹻�Ľ�Ұ�!�������ı���������,�뱣֤����������һ���ո�")
	
	Talk( 5, "÷����:�ý���ʹ��֤��Ϳ��Թ����Ӧ���õ����,ÿ10ö���Ϊ1��,ÿ��5����Ϸ��.�����������ѲμӾۻ��!" )
	Text( 5, "����������� buying", ChangeItem, 1  )
	
	Talk( 6, "÷����:�����˽���һ����?" )
	Text( 6, "���ڲι�", JumpPage, 7)
	Text( 6, "���ڽ��þ���", JumpPage, 8)
	Text( 6, "���ڽ���ʹ��Ȩ", JumpPage, 9)
	Text( 6, "���ڽ���ʹ��֤��", JumpPage, 10)

	Talk( 7, "÷����:����ι���Ʊ��������ÿ��һ��17:00~17:10�ι۽���.")
	Text( 7, "�����������", CloseTalk)
	Text( 7, "Return", JumpPage, 6)

	Talk( 8, "÷����:����ʱ��:��ÿ��һ����18:00~20:30֮������������н��þ���.��������:Я�����þ��꿨1��.���ĳ���:����ÿ���ڳ�������,�ɳа��ĳ�����.����������,���������.ÿ��2��Сʱ,�����ɾ���ʱ�ξ���.")
	Text( 8, "�����������", CloseTalk)
	Text( 8, "Return", JumpPage, 6)

	Talk( 9, "÷����:����4��ʱ�ξ���,��Ӧʱ���ڳ�����ߵ����ѽ���ý���ʹ��Ȩ,Ϊ����ɹ��߰䷢����ʹ��֤��,��������10ö���.")
	Text( 9, "�����������", CloseTalk)
	Text( 9, "Return", JumpPage, 6)

	Talk( 10, "÷����:֤������:ƾ��֤�鷽�ɹ������;����ʱ����˫����֤��������.�ڽ���ʹ��֤���ϱ�ʾ��ʱ�����Сʱ,�Զ��������ڳ���Ա���ͻ�ɳᰳ�.")
	Text( 10, "�����������", CloseTalk)
	Text( 10, "Return", JumpPage, 6)
end 


function el_talk13 ()

	Talk (1, "������: ������ ��� ����� ��� ��������� ��� ����� ���� ������� ���������, �� ��������� ���� ������������� � ��������.") 

	AddNpcMission	(6309)	--1-�������� ��� �������

end

----------------------------------------------------------
--							--
--							--
--		ħ��2��һ�Ա[��³��]			--
--							--
--		26600,23000			--
----------------------------------------------------------
function el_talk14 ()
	Talk( 1, "��³��:�ٺ�,����̽Ѱ�󺣵�����ɭ�������ص�����֮����,ȴ��֪ħ������������һ�����������!����ľ�����������������Ħ�������˵�ѪҺ,��ЩҰ���ļһ��ڷ�������ʱ,��֪����������˶���ϡ���챦!")
	
	Text( 1, "�һ���������", JumpPage, 2)

	Talk( 2, "��³��:����,����!���͵�ħ������û�����Ż���?ʲô?��˵�������İ���ɱ��?!����������!���������������һ����������,������ͷ�������ϵ�1����������������1���ɿ���ʯ��ԭ��!������ܰ���������������,�ҽ�������:���������ִ����İ�������,�ٺ�,��ߵı����������ñ�����¼�ľ���!!")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3826, 1)             ------------������������
	TriggerCondition( 1, HasItem, 3457, 1)             ------------�ɿ���ʯ
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 3826, 1)
	TriggerAction(1, TakeItem, 3457, 1)
	TriggerAction(1, GiveItem, 0146, 1, 4)              ----------��������
	TriggerFailure(1, JumpPage, 3)
	Text(2,"����������� to redeem", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 3, "��ѽ��ѽ,�㾹Ȼ��û�ռ������������������ɿ���ʯ�����㱳��̫����!�ǸϽ��Ӱ�!!!Ħ��������˷����������ʮ���׺��!")

end


---------------------------------------------------------
--							--
--							--
--		����[ħ��ʦ����]			--
--							--
--		2229,2782			--
----------------------------------------------------------
function el_talk15 ()
	Talk( 1, "ħ��ʦ����: �ҵ��������α�ħ����˲��̵�ɱ���ˡ��¸ҵ�սʿ,������ܹ�Ϊ���һش��������������߸���ĸP-E-I-M-E-N-G���ҽ�������ղض����ħ�����͸��㡣")

	AddNpcMission	(6139 )
	AddNpcMission	(6161 )
	AddNpcMission	(6166 )
		
end


---------------------------------------------------------
--							--
--							--
--		����ʥ��[��˼ҵ�������]			--
--							--
--		271��1775			--
----------------------------------------------------------
function el_talk16 ()
	
	Talk( 1, "��˼ҵ�������: ������˴��˵���ʵ����,��Ȼ���ܲ���,�����Ⲣ�������������������������.")
	Text( 1, "��Ҫȥ��į֮��1�㣡", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasMission,1213 )
	TriggerAction( 1, GoTo, 352, 378, "lonetower")
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "��˼ҵ�������:��į֮��֮���Լ�į����Ϊû�м�������" )
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 1 )


	Talk( 3, "��˼ҵ�������:�����㻹û�� ������͸¶����Ϣ ��������?" )
	AddNpcMission	(6140 )
	
end

---------------------------------------------------------
--							--
--							--
--		��į֮��1��[��˼ҵ���Ӷ]			--
--							--
--		260,257			--
----------------------------------------------------------
function el_talk17 ()
	Talk( 1, " ��˼ҵ���Ӷ: ������֪,һĿ��Ȼ,�ұ����˧,Ϊʲô���������ǲ�������......")
	Text( 1, "��Ҫȥʥ�֣�", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, 275, 1775, "garner")
	Talk( 2, "��˼ҵ���Ӷ:�пճ�����,�¶���ʱ�򡢿��ֵ�ʱ��Ͳ�֪���Ƿ���ֵ�ʱ��..." )
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 1 )

	AddNpcMission	(6141 )
	AddNpcMission	(6142 )
	AddNpcMission	(6143 )
	
end

---------------------------------------------------------
--							--
--							--
--		��į֮��2��[��˼ҵ�ŮӶ]			--
--							--
--		151��134			--
----------------------------------------------------------
function el_talk18 ()
	Talk( 1, "��˼ҵ�ŮӶ: ��Ϊһ��ŮӶ���ܲ���ע�Լ����˵�˽����,�������ӻ��������.")


	AddNpcMission	(6144 )
	AddNpcMission	(6145 )
	AddNpcMission	(6146 )
	
end

---------------------------------------------------------
--							--
--							--
--		��į֮��3��[��˼ҵ�С��]			--
--							--
--		63��311			--
----------------------------------------------------------
function el_talk19 ()
	Talk( 1, " ��˼ҵ�С��: ��֪����Ư��,��Ҫ������.")


	AddNpcMission	(6147 )
	AddNpcMission	(6148 )
	AddNpcMission	(6149 )
	
end

---------------------------------------------------------
--							--
--							--
--		��į֮��4��[��˼ҵ��ػ���]			--
--							--
--		261��70			--
----------------------------------------------------------
function el_talk20 ()
	Talk( 1, "��˼ҵ��ػ���: �ػ����������𾴵�.���ʲôʱ������������������")


	AddNpcMission	(6150 )
	AddNpcMission	(6151 )
	AddNpcMission	(6152 )
	
end

---------------------------------------------------------
--							--
--							--
--		��į֮��5��[��˼ҵĹܼ�]			--
--							--
--		542��54			--
----------------------------------------------------------
function el_talk21 ()
	Talk( 1, "��˼ҵĹܼ�: �ܼҹܼ�,���˲��ܾ����ҵļ�.")


	AddNpcMission	(6153 )
	AddNpcMission	(6154 )
	AddNpcMission	(6155 )
end

---------------------------------------------------------
--							--
--							--
--		��į֮��6��[ħ����˵�����]			--
--							--
--		541��268			--
----------------------------------------------------------
function el_talk22 ()
	Talk( 1, "ħ����˵�����: �ҿ��ܲ���Rock������������,��һ������ĵ�һ��.")


	AddNpcMission	(6156 )
	AddNpcMission	(6157 )
	AddNpcMission	(6158 )
	
end

---------------------------------------------------------
--							--
--							--
--		����4��[��˼ҵ�����]			--
--							--
--		154,912			--
----------------------------------------------------------
function el_talk23 ()
	Talk( 1, "��˼ҵ�����: ��������������...����,����,�����!")


	AddNpcMission	(6159 )
	AddNpcMission	(6160 )

end


function el_talk24 ()

	Talk (1, "��������: ������� ���! ����� ���������� �� ������, ��� ��� ������ �����������, � ������� �� ������ �������� �����. �������!") 

	AddNpcMission	(6322)	--1-������ - �������� ������(����������)
	AddNpcMission	(6323)	--2-������� ���������
	AddNpcMission	(6324)	--3-�������� ���������

--	AddNpcMission	(6162)
--	AddNpcMission	(6163)
--	AddNpcMission	(6164)
--	AddNpcMission	(6165)
end

---------------------------------------------------------
--							--
--							--
--		�������� ��������			--
--							--
--		1307,500			--
----------------------------------------------------------
function pre_talk()
	Talk( 1, "�������� ��������: ������, � ����� �������. �����-�� � ����� ���� �������. �������, ��� ���� �����������.")

	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1872)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1872, 1, 4)
	TriggerFailure( 1, JumpPage, 2)
	Text( 1, "�������� ������ � �������� ���", MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1570)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1570, 1, 4)
	TriggerFailure( 1, JumpPage, 2)
	Text( 1, "�������� ����������� ������ ���", MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1571)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1571, 1, 4)
	TriggerFailure( 1, JumpPage, 2)
	Text( 1, "�������� ������ ���������� ���", MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 2, "�������� ��������: � ���� ��� ���� ����� ������, ��� � ����� ����� ������� ���� ����� ��� ����.")
end

-----------------------------------------------------------------------------
-- ������-----����С�⵶�š�ɺ���š��޾��ţ���ϳ����޸ĵĴ��շǷ��������⣩
-----------------------------------------------------------------------------

function k_talk001()

	Talk( 1, "... ..." )

end


---------------------------------------------------------
--							--
--							--
--		�ĵ�[������]			--
--							--
--		3734��2661			--
----------------------------------------------------------
function el_talk25 ()
	Talk( 1, "������: ��������ʵ�Ǹ�������,��һ������ʲô��?���������,��ϣ������������֮ǰ������.")

---------------------�ﵺ����
	AddNpcMission	(6176 )
	AddNpcMission	(6178 )
	AddNpcMission	(6181 )
	AddNpcMission	(6183 )
	
end

---------------------------------------------------------
--							--
--							--
--		�ĵ�����ʹ������			--
--							--
--		3714��2664			--
----------------------------------------------------------
function el_talk26 ()
	Talk( 1, " �ĵ�����ʹ������: ��Ϊ�Ұ�������,���������˴���ʹ,�ͱ���ȥ����.")
	Text( 1, "��Ҫȥ�ﵺ!", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, 2414,3174, "darkblue")
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "�ĵ�����ʹ������:ʱ����������������..." )
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "�ĵ�����ʹ������:����,��ô�Ҳ��500����Ű�!������˻���Ϊ��û����" )
end

----------------------------------------------------------

	--ʥ����[�л��]		

--		221150,278125				
----------------------------------------------------------
-----------------------------------------------------------���￪ʼP������
function el_talk29 ()
	
	
	Talk( 1, "�л��:ʥ������!������ܰ��ʥ������ô����û����ζ��ʥ������?" )		

	
	Text(1, "Cooking delicious turkey meat", JumpPage, 2)
	Text(1, "Cook Christmas Dinner", JumpPage, 5)
	
	
---------------------�����ζ�Ļ���
	InitTrigger()
	TriggerCondition( 1, HasItem, 2886, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2886,10 )
	TriggerAction( 1, GiveItem, 2895, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4)
	Talk( 2, "�л��:����Ҫԭ����10������,��Ȼ�㻹Ҫ֧������10000�����ҵ������")
	Text(2, "����������� to cook",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "�л��:�����Ҿ����������ζ����,�Ͽ쳢��,ζ����ô��?" )

	Talk( 5, "�л��:��ʥ������,ÿ��ֻ������Ŷ!")
	Text(5, "The first Christmas Cooking Contest",  JumpPage, 6)
	Text(5, "Second Set of Christmas Dinner",  JumpPage, 7)
	Text(5, "Third time making Christmas Dinner", JumpPage, 8)
	---------------------���ʥ�����
	InitTrigger()
	TriggerCondition( 1, NoRecord, 815 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 815 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 9 )
	Talk( 6, "To make a good Christmas Dinner is not simple. I required 10 slices of Tasty Turkey Meat and 1 Christmas Rose. Christmas Rose seems to be found in the Item Mall. Beside paying me 10000G for the troublle, you can only make the Christmas Dinner 3 times.")
	Text( 6, "����������� to cook",  MultiTrigger, GetMultiTrigger(), 1)

	

	---------------------���ʥ�����
	InitTrigger()
	TriggerCondition( 1, HasRecord, 815 )
	TriggerCondition( 1, NoRecord, 816 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney,1000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction(1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 816 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk(7, "Making Christmas Dinner again? I required 10 slices of Tasty Turkey Meat and 1 Christmas Rose. Christmas Rose seems to be found in the Item Mall. Beside paying me 1000000G for the troublle, you can only make the Christmas Dinner 3 times.")
	Text( 7, "����������� to cook",  MultiTrigger, GetMultiTrigger(), 1)

	---------------------���ʥ�����
	InitTrigger()
	TriggerCondition( 1, HasRecord, 816 )
	TriggerCondition( 1, NoRecord, 817 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 817 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage,11 )
	Talk(8, "Making Christmas Dinner again? I required 10 slices of Tasty Turkey Meat and 1 Christmas Rose. Christmas Rose seems to be found in the Item Mall. Besides paying me 10000G for the troublle, you can only make the Christmas Dinner 3 times.")
	Text( 8, "����������� to cook",  MultiTrigger, GetMultiTrigger(), 1)
	Talk( 9, "�л��:�������ƺ�û���㹻�������Ƶ���Ʒ���Ǯ��!���ı�������Ҫ��һ���ո�Ŷ.��ȷ���ǵ�һ����ʥ�������?ֻ����3��.")
	Talk( 10, "�л��:�������ƺ�û���㹻�������Ƶ���Ʒ���Ǯ��!���ı�������Ҫ��һ���ո�Ŷ.��ȷ���ǵڶ�����ʥ�������?ֻ����3��Ŷ.")
	Talk( 11, "�л��:�������ƺ�û���㹻�������Ƶ���Ʒ���Ǯ��!���ı�������Ҫ��һ���ո�Ŷ.��ȷ���ǵ�������ʥ�������?ֻ����3��Ŷ.")
	Talk( 4, "�л��:�������ƺ�û���㹻�������Ƶ���Ʒ���Ǯ��!��ȷ�����ı���δ����,��������Ҫ��һ���ո�Ŷ.")
	Talk(12, "�л��:�����Ҿ��������ʥ�����,�Ͽ쳢��,ζ����ô��?" )
	AddNpcMission	(6191 )
end 

------------------------------------------------------------
-- ʥ����-----ʥ�����˵�ϴ�»�
------------------------------------------------------------
function el_talk30()
	
	InitFuncList()
	AddFuncList( GiveItem,	0817	,	1	,	4)
	AddFuncList( GiveItem,	0818	,	1	,	4)
	AddFuncList( GiveItem,	0819	,	1	,	4)
	AddFuncList( GiveItem,	0867	,	1	,	4)
	AddFuncList( GiveItem,	0868	,	1	,	4)
	AddFuncList( GiveItem,	0869	,	1	,	4)
	AddFuncList( GiveItem,	0872	,	1	,	4)
	AddFuncList( GiveItem,	0873	,	1	,	4)
	AddFuncList( GiveItem,	0874	,	1	,	4)
	AddFuncList( GiveItem,	1630	,	2	,	4)
	AddFuncList( GiveItem,	1631	,	1	,	4)
	AddFuncList( GiveItem,	1632	,	1	,	4)
	AddFuncList( GiveItem,	1633	,	2	,	4)
	AddFuncList( GiveItem,	1634	,	1	,	4)
	AddFuncList( GiveItem,	1635	,	1	,	4)
	AddFuncList( GiveItem,	1636	,	2	,	4)
	AddFuncList( GiveItem,	1637	,	1	,	4)
	AddFuncList( GiveItem,	1638	,	1	,	4)
	AddFuncList( GiveItem,	1639	,	2	,	4)
	AddFuncList( GiveItem,	1640	,	1	,	4)
	AddFuncList( GiveItem,	1641	,	1	,	4)
	AddFuncList( GiveItem,	1642	,	2	,	4)
	AddFuncList( GiveItem,	1643	,	1	,	4)
	AddFuncList( GiveItem,	1644	,	1	,	4)
	AddFuncList( GiveItem,	3360	,	1	,	4)
	AddFuncList( GiveItem,	3361	,	1	,	4)
	AddFuncList( GiveItem,	3362	,	1	,	4)
	AddFuncList( GiveItem,	3363	,	1	,	4)
	AddFuncList( GiveItem,	3364	,	1	,	4)
	AddFuncList( GiveItem,	3365	,	1	,	4)
	AddFuncList( GiveItem,	3366	,	1	,	4)
	AddFuncList( GiveItem,	3367	,	1	,	4)
	AddFuncList( GiveItem,	3425	,	1	,	4)
	AddFuncList( GiveItem,	3426	,	1	,	4)
	AddFuncList( GiveItem,	3427	,	1	,	4)
	AddFuncList( GiveItem,	3428	,	1	,	4)
	AddFuncList( GiveItem,	3429	,	1	,	4)
	AddFuncList( GiveItem,	3430	,	1	,	4)
	AddFuncList( GiveItem,	3431	,	1	,	4)
	AddFuncList( GiveItem,	3432	,	1	,	4)
	AddFuncList( GiveItem,	3433	,	1	,	4)
	AddFuncList( GiveItem,	1804	,	1	,	4)
	AddFuncList( GiveItem,	1805	,	1	,	4)
	AddFuncList( GiveItem,	1806	,	1	,	4)
	AddFuncList( GiveItem,	1807	,	1	,	4)
	AddFuncList( GiveItem,	1808	,	1	,	4)
	AddFuncList( GiveItem,	1809	,	1	,	4)
	AddFuncList( GiveItem,	1810	,	1	,	4)
	AddFuncList( GiveItem,	1811	,	1	,	4)
	AddFuncList( GiveItem,	1787	,	1	,	4)
	AddFuncList( GiveItem,	1788	,	1	,	4)
	AddFuncList( GiveItem,	1789	,	1	,	4)
	AddFuncList( GiveItem,	1790	,	1	,	4)
	AddFuncList( GiveItem,	1791	,	1	,	4)
	AddFuncList( GiveItem,	1792	,	1	,	4)
	AddFuncList( GiveItem,	1793	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3927, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3927, 1 )
	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "ʥ������!����һ̨���ϵ���ϴ��,���������ϴ�����һ��,����Ҫ��ϴô?ÿ��200G." )
	Text( 1, "Cleanse Mud", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "Cleanse Christmas Box", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2892, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2892, 1 )
	TriggerAction( 1, GiveItem, 2893, 1 , 4)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 3, "Woah! What a dirty box! You need to pay 10000G to clean such a dirty box." )
	Text( 3, "����������� to clean", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 4, "What a beautiful chest! Open it for some surprises" )
	Talk( 2, "Failed to clean the item. Insufficient gold or does not possess the required item" )
	AddNpcMission	(6195 )
end


---------------------------------------------------------
--							--
--							--
--		���Ǳ�[ʥ����������]			--
--							--
--		��1216��550��			--
----------------------------------------------------------
function el_talk27 ()
	Talk( 1, "����: ʥ������!Ը��õ���������ֿ���õ�ף��.��Ҫ�õ������˵�ʥ��������?ȥ�̳���һ��ʥ�������ʸ�֤��Ϳ������������ȡ����ʥ�����˵�������.")
	--------------����ʥ������
	--AddNpcMission	(6185)
end


---------------------------------------------------------
--							--
--							--
--		��������վ[ʥ�����˿���˹Ī˹]		--
--							--
--		��2111��557��			--
----------------------------------------------------------
function el_talk28 ()
	Talk( 1, "����˹Ī˹: ʥ������!����˵��ʥ������?����һ���������ֵ�����.")
	--------------����ʥ������
	--AddNpcMission	(6186)

end

---------------------------------ʥ�������л�᳤
function Xmas_talk01 ()
	Talk( 1, "ʥ�������л�᳤:Merry Christmas~��Ϊ���������ʥ����׼���˺ܶ�Ļ���Ŷ,������Ȥ�뿴һ����?")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "���ˣ���û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "Power of Frost", JumpPage , 3)
	Text( 2, "Power of Thunder", JumpPage , 4)
	Text( 2, "Power of Wind", JumpPage , 5)
	Text( 2, "Power of Flame", JumpPage , 6)
	Text( 2, "Potion of Lion", JumpPage , 7)
	Text( 2, "Potion of Eagle", JumpPage , 8)
	Text( 2, "Potion of Monkey", JumpPage , 9)
	Text( 2, "Next Page", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "Go back a page", JumpPage , 2)
	Text( 10, "Potion of Bull", JumpPage, 11)
	Text( 10, "Potion of Soul", JumpPage, 12)
	Text( 10, "28 Slot Inventory", JumpPage, 13)
	Text( 10, "Mordo", JumpPage, 14)
	Text( 10, "Party EXP Fruit", JumpPage, 15)
	Text( 10, "Voodoo Puppet", JumpPage, 16)
	Text( 10, "Next Page", JumpPage , 17)

	Talk( 17, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 17, "Go back a page", JumpPage , 10)
	Text( 17, "Novice Self Destruct", JumpPage, 18)
	Text( 17, "Fruit of Growth", JumpPage, 19)
	Text( 17, "ʥ�����˵�����", JumpPage, 20)

	Talk( 3, "�һ���֮���Ļ��ܹ���Ҫ���250W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 270, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 4, "�һ���֮���Ļ��ܹ���Ҫ���250W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 269, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ���֮���Ļ��ܹ���Ҫ���250W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 268, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ���֮���Ļ��ܹ���Ҫ���250W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 267, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ���ʨҩ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 897, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ�ӥ��ҩ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 894, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ����ҩ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 893, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ���ţҩ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 895, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ�ʥ��ҩ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 896, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ�28�񱳰��Ļ��ܹ���Ҫ���1000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 3088, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ�Ħ��С�ӵĻ��ܹ���Ҫ���1000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 680, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "�һ���Ӿ�����Ļ��ܹ���Ҫ���80W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 80 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 80 )
	TriggerAction( 1, GiveItem, 849, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "�һ��������Ļ��ܹ���Ҫ���55W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 55 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 55 )
	TriggerAction( 1, GiveItem, 3047, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 18, "�һ����������Ա��Ļ��ܹ���Ҫ���500W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 500 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 500 )
	TriggerAction( 1, GiveItem, 610, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 18, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 19, "�һ����ٳɳ����Ļ��ܹ���Ҫ���20W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 578, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 19, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 20, "�һ�ʥ�����˵������Ļ��ܹ���Ҫ���2000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 2877, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 20, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
end

-------------------------------------------------------------------ʥ���ӻ���A
function Xmas_talk02 ()
	Talk( 1, "ʥ���ӻ���:ʥ���ڵ���~��Ϊ�����ܰ��ʥ��׼���˺ܶ����,����Ȥ��һ����?��϶���ϲ����!")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "���ˣ���û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "Gold Axe", JumpPage , 3)
	Text( 2, "Gold Pickaxe", JumpPage , 4)
	Text( 2, "Unique Necklace Voucher", JumpPage , 5)
	Text( 2, "Unique Coral Voucher", JumpPage , 6)
	Text( 2, "Lock of Mystic", JumpPage , 7)
	Text( 2, "Super Rechargeable Battery", JumpPage , 8)
	Text( 2, "������Ϸȯ", JumpPage , 9)
	Text( 2, "Next Page", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "Go back a page", JumpPage , 2)
	Text( 10, "������", JumpPage, 11)
	Text( 10, "������", JumpPage, 12)
	Text( 10, "����", JumpPage, 13)
	Text( 10, "Golden Apple", JumpPage, 14)
	Text( 10, "Intelligence fruit", JumpPage, 15)
	Text( 10, "Mystic Clover", JumpPage, 16)
	Text( 10, "а�����������ٻ�ȯ", JumpPage , 17)

	Talk( 3, "�һ��߼���ľ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 207, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "�һ��߼����Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 208, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ��߼������һ�ȯ�Ļ��ܹ���Ҫ���1000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 581, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ��߼����Ƕһ�ȯ�Ļ��ܹ���Ҫ���1000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 582, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ���֮���Ļ��ܹ���Ҫ���15W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 15 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 15 )
	TriggerAction( 1, GiveItem, 2440, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ��߼�����صĻ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1024, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ�������Ϸȯ�Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3083, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ������񻨵Ļ��ܹ���Ҫ���9W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 9 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 9 )
	TriggerAction( 1, GiveItem, 3082, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ������񻨵Ļ��ܹ���Ҫ���9W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 9 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 9 )
	TriggerAction( 1, GiveItem, 3081, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ�����Ļ��ܹ���Ҫ���15W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 15 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 15 )
	TriggerAction( 1, GiveItem, 3080, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ���ƻ���Ļ��ܹ���Ҫ���50W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 3291, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "�һ��ǻ۹��Ļ��ܹ���Ҫ���20W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 3290, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "�һ�����ݵĻ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3336, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 17, "�һ�а������������ٻ�ȯ�Ļ��ܹ���Ҫ���2000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3013, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 17, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
	AddNpcMission	(6197 )
end

-------------------------------------------------------------------ʥ���ӻ���B
function Xmas_talk03 ()
	Talk( 1, "ʥ����Ʒ��:Merry Christmas~��Ϊ���������ʥ����׼���˺ܶ�Ļ���Ŷ,������Ȥ�뿴һ����?")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "���ˣ���û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "Pirate Captain 008 Summoning Scroll", JumpPage , 3)
	Text( 2, "Lizardman Warrior Commander Summon Scroll", JumpPage , 4)
	Text( 2, "Party EXP Fruit", JumpPage , 5)
	Text( 2, "Voodoo Puppet", JumpPage , 6)
	Text( 2, "Expert Monster Covenant", JumpPage , 7)
	Text( 2, "Standard Monster Covenant", JumpPage , 8)
	Text( 2, "Novice Monster Covenant", JumpPage , 9)
	Text( 2, "Next Page", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "Go back a page", JumpPage , 2)
	Text( 10, "Stone Catalyst", JumpPage, 11)
	Text( 10, "Liquid Catalyst", JumpPage, 12)
	Text( 10, "Food Catalyst", JumpPage, 13)
	Text( 10, "Special Catalyst", JumpPage, 14)
	Text( 10, "Bone Catalyst", JumpPage, 15)
	Text( 10, "Plant Catalyst", JumpPage, 16)
	Text( 10, "Fur Catalyst", JumpPage , 17)

	Talk( 3, "�һ������������㷢�ٻ�ȯ�Ļ��ܹ���Ҫ���2000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3014, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "�һ�����սʿͳ���ٻ�ȯ�Ļ��ܹ���Ҫ���2000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3012, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ���Ӿ�����Ļ��ܹ���Ҫ���80W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 80 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 80 )
	TriggerAction( 1, GiveItem, 849, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ��������Ļ��ܹ���Ҫ���55W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 55 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 55 )
	TriggerAction( 1, GiveItem, 3047, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ��߼�������Լ�Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 2607, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ��м�������Լ�Ļ��ܹ���Ҫ���200W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 200 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 200 )
	TriggerAction( 1, GiveItem, 2606, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ�����������Լ�Ļ��ܹ���Ҫ���60W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 60 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 60 )
	TriggerAction( 1, GiveItem, 2605, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ�ʯ�Ĵ߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2625, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ�Һ��߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2638, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ�ʳ�Ĵ߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2630, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ�����߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2634, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "�һ���ͷ�߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2635, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "�һ�ֲ��߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2636, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 17, "�һ�ëƤ�߻����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2637, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 17, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
end
-------------------------------------------------------------------ʥ�����ˡ������ҿ�
function Xmas_talk04 ()
	Talk( 1, "ʥ�����ˡ������ҿ�:������,�����ҵĶ��������ʥ�����㽫�ޱ��Ҹ�,��Ҫ��ԥ��,�����°�~")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "���ˣ���û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "ʥ�������̻�", JumpPage , 3)
	Text( 2, "ʥ�����̻�", JumpPage , 4)
	Text( 2, "Heart Shape I", JumpPage , 5)
	Text( 2, "Heart Shape LOVE", JumpPage , 6)
	Text( 2, "Heart Shape U", JumpPage , 7)
	Text( 2, "Heart Shape ��", JumpPage , 8)
	Text( 2, "Heart Shape ��", JumpPage , 9)
	Text( 2, "Next Page", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "Go back a page", JumpPage , 2)
	Text( 10, "Heart Shape ��", JumpPage, 11)
	Text( 10, "Rose", JumpPage, 12)
	Text( 10, "Devil Wings", JumpPage, 13)
	Text( 10, "Honey Chocolate", JumpPage, 14)

	Talk( 3, "�һ�ʥ�������̻��Ļ��ܹ���Ҫ���180W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 180 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 180 )
	TriggerAction( 1, GiveItem, 2870, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "�һ�ʥ�����̻��Ļ��ܹ���Ҫ���1000W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 2871, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ�����I�Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3354, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ�����LOVE�Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3355, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ�����U�Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3356, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ������ҵĻ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3359, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ����Ͱ��Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3357, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ�������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3358, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ�õ�廨�Ļ��ܹ���Ҫ���20W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 3343, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ���ħ���Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 906, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ������ɿ����Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3077, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
	AddNpcMission	(6199 )
end

-------------------------------------------------------------------ʥ�����ˡ��ҿ�����
function Xmas_talk05 ()
	Talk( 1, "ʥ�����ˡ��ҿ�����:���ѽ,ʥ������!�Һܿ��ǰ�,�ҵĶ������Ҹ���,�����°�~")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "���ˣ���û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "Vampiric Wings", JumpPage , 3)
	Text( 2, "Elven Wings", JumpPage , 4)
	Text( 2, "Dragon Wings", JumpPage , 5)
	Text( 2, "<�����׳�>������", JumpPage , 6)
	Text( 2, "<��������>������", JumpPage , 7)
	Text( 2, "<�������>������", JumpPage , 8)
	Text( 2, "<������Ǯ��>������", JumpPage , 9)
	Text( 2, "Next Page", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "Go back a page", JumpPage , 2)
	Text( 10, "<�����ڿ�>������", JumpPage, 11)
	Text( 10, "<����ƭ��>������", JumpPage, 12)
	Text( 10, "<����ɵ��>������", JumpPage, 13)
	Text( 10, "<��������>������", JumpPage, 14)

	Talk( 3, "�һ�������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 904, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "�һ�����֮��Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 935, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ��������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 905, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ�<�����׳�>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1130, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ�<��������>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1131, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ�<�������>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1037, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ�<������Ǯ��>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1129, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ�<�����ڿ�>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1038, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ�<����ƭ��>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1132, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ�<����ɵ��>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1133, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ�<��������>������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1039, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
end

-------------------------------------------------------------------ʥ�����ˡ�ѧ��
function Xmas_talk06 ()
	Talk( 1, "ʥ�����ˡ�ѧ��:Merry Christmas~��Ϊ���������ʥ����׼���˺ܶ�Ļ���Ŷ,������Ȥ�뿴һ����?")
	Text( 1, "���ҿ���������ʲô�ö�����." , JumpPage , 2 )
	Text( 1, "���ˣ���û�տ�", CloseTalk )

	Talk( 2, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 2, "Expert Voyager Study Book", JumpPage , 3)
	Text( 2, "Expert SealMaster Study book", JumpPage , 4)
	Text( 2, "Expert Cleric study book", JumpPage , 5)
	Text( 2, "Expert SharpShooter Study Book", JumpPage , 6)
	Text( 2, "Expert Champion Study Book", JumpPage , 7)
	Text( 2, "Crusader expert read", JumpPage , 8)
	Text( 2, "Standard Voyager study book", JumpPage , 9)
	Text( 2, "Next Page", JumpPage , 10)

	Talk( 10, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 10, "Go back a page", JumpPage , 2)
	Text( 10, "Standard SealMaster study book", JumpPage, 11)
	Text( 10, "Standard Cleric study book", JumpPage, 12)
	Text( 10, "Standard SharpShooter study book", JumpPage, 13)
	Text( 10, "Standard Champion study book", JumpPage, 14)
	Text( 10, "Standard Crusader Study Book", JumpPage, 15)
	Text( 10, "Intense Magic", JumpPage, 16)
	Text( 10, "Next Page", JumpPage , 17)

	Talk( 17, "������Ĺ�غͱ�ĵط��ɲ�һ��Ŷ,ֻ����ʹ��ʥ��Ӳ��������.")
	Text( 17, "Go back a page", JumpPage , 10)
	Text( 17, "Sea Weed Killer", JumpPage, 18)
	Text( 17, "Icy Crystal", JumpPage, 19)
	Text( 17, "Power Sail", JumpPage, 20)
	Text( 17, "Crystalline Blessing", JumpPage, 21)
	Text( 17, "Magical Clover", JumpPage, 22)

	Talk( 3, "�һ�����ʿ�߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3272, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "�һ���ӡʦ�߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3271, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "�һ�ʥְ�߸߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3270, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "�һ��ѻ��ָ߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3269, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "�һ��޽�ʿ�߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3268, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "�һ�˫��ʿ�߼�����Ļ��ܹ���Ҫ���120W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3267, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "�һ�����ʿ�м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3266, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "�һ���ӡʦ�м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3265, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "�һ�ʥְ���м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3264, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "�һ��ѻ����м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3263, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "�һ��޽�ʿ�м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3262, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "�һ�˫��ʿ�м�����Ļ��ܹ���Ҫ���100W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3261, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "�һ�ħ���߻��Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3300, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 18, "�һ�����������Ļ��ܹ���Ҫ���25W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 25 )
	TriggerAction( 1, GiveItem, 3114, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 18, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 19, "�һ�����ˮ���Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3463, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 19, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 20, "�һ��������Ļ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3046, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 20, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 21, "�һ����黤�ӵĻ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3301, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 21, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 22, "�һ�ħ���ݵĻ��ܹ���Ҫ���10W��ʥ��Ӳ��Ŷ")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3462, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 22, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "лл��Ĺ��,ף��ʥ�����!")

	Talk( 26, "�㱳���ں���û���㹻��ʥ��Ӳ��Ŷ,Ҳ�п�����ı���û�ո�򱳰�����.")
end

----------------------------------------------------ʥ����ƶ�
function Xmas_talk07 ()
	Talk ( 1, "��������ʥ��ѩ�׵Ķ���.���ѣ�Ϊʲô��������Щ���ĵ���ף���ȥɱ¾һ����?����,���Ǻ�ɳᰳ��������Ļ�,��¹��ѩ��,ȥ�ɵ�����,Ȼ���֤�ݴ��������Ҳ���������.")
--	Text ( 1, "�Ҵ�����һ�ٸ��𼦵���ë", JumpPage, 2)
--	Text ( 1, "�Ҵ�����һ�ٸ���¹�ļ��", JumpPage, 3)
--	Text ( 1, "�Ҵ�����һ�ٸ�ѩ�˵�����", JumpPage, 4)
	Text ( 1, "����ȥʥ��������", JumpPage, 5)
	Text ( 1, "Ϊʲô����Ҫɱ¾��Щ�����Ĺ�����?", JumpPage, 10)

--	Talk ( 2, "��ȷ��Ҫ����һ�ٸ��𼦵���ë���һ�һ��ʥ�������?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2879, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2879, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpHuojiNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 2, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk ( 3, "��ȷ��Ҫ����һ�ٸ���¹�ļ�Ǹ��һ�һ��ʥ�������?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2881, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2881, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpMiluNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 3, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk ( 4, "��ȷ��Ҫ����һ�ٸ�ѩ�˵������һ�һ��ʥ�������?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2880, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2880, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpXuerenNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 4, "����������� to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 5, "����һ����5��������,����ȥ��һ����?")
	Text ( 5, "ʥ��������A", GoTosdBoss, 1 )
	Text ( 5, "ʥ��������B", GoTosdBoss, 2 )
	Text ( 5, "ʥ��������C", GoTosdBoss, 3 )
	Text ( 5, "ʥ��������D", GoTosdBoss, 4 )
	Text ( 5, "ʥ��������E", GoTosdBoss, 5 )

	Talk ( 6, "ף���и����ֵ�ʥ��")

	Talk ( 7, "�㱳���ں���û���㹻�ĵ���Ŷ,Ҳ�п�����ı����������߱�����û�пո�.")

	Talk ( 10, "�����������,����������Ͻ��㹻�����Ĺ�Ʒ����,��ô�Ҿ�����ʥ�����������ٻ�������ǿ��ĺڰ�BOSS,������ô���ܻ������Ǿ������Ǹÿ��ǵ�����!")

	AddNpcMission	(6187 )
	AddNpcMission	(6188 )
	AddNpcMission	(6189 )
	AddNpcMission	(6193 )
	AddNpcMission	(6204 )
end

----------------------------------------------------ʥ����ʥ������
function Xmas_talk08 ()
	Talk ( 1, "ʥ������:�Ǻ�~ʥ������~~���������Ϊ��Ҷһ�ʥ����ר�õĹ���Ӳ��,������������ʥ������Shopping�Ļ��Ǿ����Һ���.")

	Text ( 1, "����һ�ʥ����ԪӲ��", JumpPage, 2)
	Text ( 1, "����һ�ʥ������ԪӲ��", JumpPage, 3)
	Text ( 1, "�����ʥ����ԪӲ�Ҷһ��غ�����", JumpPage, 4)
	Text ( 1, "�����ʥ������ԪӲ�Ҷһ��غ�����", JumpPage, 5)
	Text ( 1, "����ر��Ǳ�", JumpPage, 6)

	Talk ( 2, "�һ�һ��ʥ����ԪӲ����Ҫ10000�ĺ�����,��ȷ��Ҫ�һ���?")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2962, 1, 4 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Text ( 2, "����������� to redeem", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 3, "�һ�һ��ʥ������ԪӲ����Ҫ100W�ĺ�����,��ȷ��Ҫ�һ���?")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, GiveItem, 2963, 1, 4 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Text ( 3, "����������� to redeem", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 4, "��ȷ��Ҫ��ʥ����ԪӲ�һ���10000��������?")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2962, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2962,1 )
	TriggerAction( 1, AddMoney, 10000 )
	TriggerFailure( 1, JumpPage, 11 )
	Text ( 4, "����������� to redeem", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 5, "��ȷ��Ҫ��ʥ������ԪӲ�һ���100W��������?")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2963, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2963,1 )
	TriggerAction( 1, AddMoney, 1000000 )
	TriggerFailure( 1, JumpPage, 11 )
	Text ( 5, "����������� to redeem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerAction( 1, GoTo, 1318,510, "darkblue")
	Talk( 6, "��ȷ��Ҫ�뿪����ص����Ǳ���?")
	Text( 6, "Teleport",MultiTrigger, GetMultiTrigger(), 1 )

	Talk ( 9, "ף���и����ֵ�ʥ����~")
	Talk ( 10, "���Ǯ����Ŷ,Ҳ�п�����ı�������������û���㹻�Ŀո�.")
	Talk ( 11, "��û�д˵���,Ҳ�п�����ı���������.")
	AddNpcMission	(6201 )
	AddNpcMission	(6202 )
end

-----------------------------------------���Ǳ�ʥ���崫��ʹ
function movexmas_talk()
	Talk ( 1, "ʥ���崫��ʹ:Merry Christmas~��ȥʥ��������ȥ���˵��,�㲻˵����ô֪����?������˵�㲻��ȥ��ƫƫ����ȥ,Ҳ����������ȥ��ƫƫ�������!")
	Text ( 1, "����ȥʥ����", JumpPage, 2)
	Text ( 1, "���˺�����,�һ�������", CloseTalk)


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, 144,136, "07xmas" )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, 144,136, "07xmas")
	TriggerFailure( 2, JumpPage, 3 )
	Talk( 2, "������ʥ�����������ڿ����ڼ�,ֻҪ֧������500�������ҾͿ��������ȥ,�������10�����µ����ֵĻ��ҿ������Ϊ�����Ŷ.")
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 2 )

	Talk( 3, "ʥ���崫��ʹ:ûǮ��?�Ǻܱ�Ǹ����Ϊ�������Ŷ.")
	AddNpcMission	(6190 )
	AddNpcMission	(6192 )
	AddNpcMission	(6194 )
	AddNpcMission	(6196 )
	AddNpcMission	(6198 )
	AddNpcMission	(6200 )
end

---------------------------------------ʥ������������ʹ
function movexmas_talk01 ()
	Talk ( 1, "ʥ������~����ص�ʥ������?���ٶ��������?�Ǻ�,������ķ������ȫ��ѵ�Ŷ!")
	Text ( 1, "�����ʥ����", JumpPage, 2)


	InitTrigger()
	TriggerAction( 1, GoTo, 144,136, "07xmas")
	Talk( 2, "׼��������?.")
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 1 )
end

-------------------------------------����Ϊ��������--------bragi
function Xmas_talk09 ()
	Talk ( 1, "ʥ�������ڻ����������~")
	AddNpcMission	(6203 )
end

function Xmas_talk10 ()
	Talk ( 1, "��������:Ϊ�����������ֵĽ���,��������һ��Χ�����������!")
end

function Xmas_talk11 ()
	Talk ( 1, "��������:ѩ��...�赸...����...��...ѩ��...ʥ����...����...���б����������ʥ������?")
end

function Xmas_talk12 ()
	Talk ( 1, "��������:����Χ������Ƚ�ů�Ͱ�!���ѣ�Ҫ��Ҫ��һ�𿾻��,��������?")
end

function Xmas_talk13 ()
	Talk ( 1, "��������:�һ��Ǿ����ҵ����˲�������ģ��㲻������Ϊ��?")
end

function Xmas_talk14 ()
	Talk ( 1, "��������:����������ʲô��?����������Ļ���?��������������հ�.")
end

function Xmas_talk15 ()
	Talk ( 1, "��������:��Ȼ��̫ϲ���⺮�������,����ʥ���ڵķ�Χ��ð�!�ÿ��İ�!")
end

-------------------------------------����ΪС����Ⱥ------bragi
function Xmas_talk16 ()
	Talk ( 1, "С¹�߱�:û����ʥ����ô?��������,�������,ʥ�����м��пúܴ��ʥ����,��˵����ʥ������Ը�Ǻ������.��ȥ���԰�~~~!����,ף��ʥ������!")
end

function Xmas_talk17 ()
	Talk ( 1, "����������:���Ұ�!С���ҷ���������Ŷ!")
end

function Xmas_talk18 ()
	Talk ( 1, "С����:ιι,��ס����,��Ҳ��Ҫһ������!��һ��,������?")
end

function Xmas_talk19 ()
	Talk ( 1, "���ֵ�ѩ����:��������!��Ŀڴ��ﶼװ��Щʲô��?��������ǹ���?��Ư���������?")
end

function Xmas_talk20 ()
	Talk ( 1, "Сè��˿:������,������,����춣��~~~!����.����һ���Ǹ����ֵ�ʥ����,�����������Ŷ.��˵ʥ���ڵ�����ҹ12���ʱ��,���ص���תʥ������ڻ�����ڴ���.������ȥ����Ŷ~~�ǵöഩ��.")
end

function Xmas_talk21 ()
	Talk ( 1, "����è�ɴ�:���ɿ���ζ����������?����һЩ!!")
end

function Xmas_talk22 ()
	Talk ( 1, "С·��˿:ʥ���ڿ�!!���ǿ�,�����������������ĺ���ñ��,��Ư����!")
end

function Xmas_talk23 ()
	Talk ( 1, "��������:�õĺõĺ�����,����׼���˺ܶ�����,ÿ���˶����е�,��Ҫ��Ŷ!")
end

function Xmas_talk24 ()
	Talk ( 1, "С��ķ:��˭Ը�����һ��ȥ��ѩ�̵���?������˵��,��Ҫ������!!!����һ���һᳬ���ƶ���,���Ż���ëȥ����֤���ҵ�ʵ��,������ʥ�������·���Ȫ������Ǹ��һ�.")
	AddNpcMission	(6205 )
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�����Ĵ���]			--
--							--
--		3901, 4301			--
----------------------------------------------------------
function peter_talk01 ()
	Talk( 1, "�����Ĵ���: ���ҽд�������ʵ��һ��Ҳ�������ҵ����̿��Ǹߴ�180Ŷ��")

end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�ο͡�����]			--
--							--
--		10802, 5602             		--
----------------------------------------------------------
function peter_talk02 ()
	Talk( 1, "�ο͡�����:���ڵ�ʱ��,�������еķ���,������ʹ��һ���ʥ��,����һ���������ɵ���,��,��Ҫ���߱�������˭,һ���һ�Ҫȥ���ʥ�����˷���Ʒ��,��ʱ�����ܲ����ϳ�����,��������")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[���ֵİְ�]		--
--							--
--		11803, 6103			        --
----------------------------------------------------------
function peter_talk03 ()
	Talk( 1, "���ֵİְ�:������İְ�,��˵��˵��,ʥ���ڸø��������㻨Ǯ,��Ϊ������ȫ�������ǰ��Ե��ǹ�,��Ȼ,����һ��,�����Լ��ĺ���,��,�ҵ����־͸����ˡ�")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�ο͡���Ŭ]			--
--							--
--		5904, 4704			--
----------------------------------------------------------
function peter_talk04 ()
	Talk( 1, "�ο͡���Ŭ: ��!ʥ������,��һ������һ�����������ʥ���İ�?����,��ȥ��ʥ������,�����кö���ŵĶ�����!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��������]			--
--							--
--		3001 ��11701			--
----------------------------------------------------------
function peter_talk05 ()
	Talk( 1, "��������: ����!����!ʥ���ڰ�������,��һ���ľ�ֻ��`����`��������")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����С��]			--
--							--
--		7031, 4902			--
----------------------------------------------------------
function peter_talk06 ()
	Talk( 1, "����С��: come on!ʥ�������ô��?����ī����װ��?������,���Ҹ�����,��һ��ʥ�����˵��·��ſᡣ")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�����״���]			--
--							--
--		3101, 11901			--
----------------------------------------------------------
function peter_talk07 ()
	Talk( 1, "�����״���: �㻳�ɺ��ϵĺ������ղ���ʥ������?����,ʥ�����˻��ú��Ӷ������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��Ա����]			--
--							--
--		4401, 8401			--
----------------------------------------------------------
function peter_talk08 ()
	Talk( 1, "��Ա����: �������Ǵ󷢴ȱ���,�����ʥ������ֻ��Ư��Ư��,������ڴ���������μ�ʥ���ۻ���!̫�����ˡ�")
end


--------------------------------------------------------
--							--
--							--
--		ʥ����[��ξ����]			--
--							--
--		25801, 23101			--
----------------------------------------------------------
function peter_talk09 ()
	Talk( 1, "��������������: ����� ��������� � �������. ������� ������ ���������.")
	Text( 1, "������ ���������", JumpPage, 2)
	Text( 1, "����������� ����", JumpPage, 5)

	Talk(2, "��������������: ������ �� �� ������� ���� ���� ���������� ����� �����?" )

	InitTrigger()
	TriggerCondition(1, Wedding)
	TriggerAction(1, JumpPage, 3)
	TriggerFailure(1, JumpPage, 4)
	Text(2, "�������� ���������", MultiTrigger, GetMultiTrigger(), 1)
	Text(2, "��� ���� ��������...", CloseTalk)

	Talk(3, "��������������: ����������� ���! ������ �� ��� � ����!")
	Talk(4, "��������������: � �� ���� ������� ���! �� ��� ���������� ���������!")



	Talk(5, "��������������: �� ������ ����������� ����? ��� ����. ��� �������� �� ��� ������ ���������." )

	InitTrigger()
	TriggerCondition(1, WeddingStop)
	TriggerAction(1, JumpPage, 6)
	TriggerFailure(1, JumpPage, 7)
	Text(5, "�����������", MultiTrigger, GetMultiTrigger(), 1)
	Text(5, "��� ���� ��������...", CloseTalk)

	Talk(6, "��������������: �� ��� ��, ��� �������. ������ �� ���������!")
	Talk(7, "��������������: � �� ���� �������� ���! �� ��� ���������� ���������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����ʿ��]			--
--							--
--		19401, 3901			--
----------------------------------------------------------
function peter_talk10 ()
	Talk( 1, "����ʿ��: �Ҹұ�֤,��������ﶼ���Ծ��������ʥ���Ŀ���,���Բ����в����ĵ��·���,����Ϊʲô?û����������ľ���ô!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�ο͡�����˹]			--
--							--
--		7301, 23601			        --
----------------------------------------------------------
function peter_talk11 ()
	Talk( 1, "�ο͡�����˹: ��ϲ��ʥ����,��ϲ����������,�ö�ɰ��Ķ����,������һ��ʥ�������͸���ô?")
end


--------------------------------------------------------
--							--
--							--
--		ʥ����[С̯�����]			--
--							--
--		13901, 6101			--
----------------------------------------------------------
function peter_talk12 ()
	Talk( 1, "С̯�����: ��������ܹ�׬��Ǯ,��Ҳ���ð�̯��,�Ǻ�,�����Ұڿ����˿��򵽳��ĵĶ���ʱ���ĵ�����,�Ҿ;���ֵ��")
end


--------------------------------------------------------
--							--
--							--
--		ʥ����[С̯���ж�]			--
--							--
--		3301, 21601			        --
----------------------------------------------------------
function peter_talk13 ()
	Talk( 1, "С̯���ж�:��ȥ���氮��ô?�����ûȥ��,��һ��Ҫ�����������Ʒ,��˵��ȥ����?�Ǿ͸����������ʥ������Ʒ�˰�!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����С̯������			--
--							--
--		8701, 20401			         --
----------------------------------------------------------
function peter_talk14 ()
	Talk( 1, "ʥ����С̯������: �����ʱ��,ֻ�н�����Ʒ�������˿ϻ�Ǯ�ġ�")
end
 
--------------------------------------------------------
--							--
--							--
--		ʥ����С̯��Ү��			--
--							--
--		25501, 12401    			--
----------------------------------------------------------
function peter_talk15 ()
	Talk( 1, "ʥ����С̯��Ү��: ��!ʥ������!���Ҵ��������·��ÿ�ô?")
end


--------------------------------------------------------
--							--
--							--
--		ʥ����[��������]			--
--							--
--		24801, 9801			        --
----------------------------------------------------------
function peter_talk16 ()
	Talk( 1, "��������: ���Ǻ��Ļ����,����ʥ����ҹ�ս���������,ÿ����ʱ���Ҿ�����������ʱΧ������������龰��Ҫ��ϧ���ڰ���")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�׺���³��]			--
--							--
--		13001,23601			--
----------------------------------------------------------
function peter_talk17 ()
	Talk( 1, "�׺���³��:��������ж��?��ʥ��������ǰ���Ƕ��Ǻ�����,�ҿ����Ǻ���Ŷ,������������ѩ�̡�")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��̫̫����]			--
--							--
--		23901, 22701	         		--
----------------------------------------------------------
function peter_talk18 ()
	Talk( 1, "��̫̫����: ��!��!�û����İ�������ʥ���ڵ����ǰ�!�ҿ��Ǹ����ĳ�,�����·��Ҫ�ǲ�֪��������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[������׶�]			--
--							--
--		24601, 19701			--
----------------------------------------------------------
function peter_talk19 ()
	Talk( 1, "������׶�: ��?��Ҫ����˵��?��,�Һܾ�û���˽�̸��,�ϴκ���˵����ʲôʱ��?������?����˭?��Ҫ����˵��?��������������ʲô���š�")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[С̯���ȿ���]			--
--							--
--		23201, 20001			--
----------------------------------------------------------
function peter_talk20 ()
	Talk( 1, "С̯���ȿ���: HOoooo,ʥ���ڿ���!������ôϲ��ʥ����,Ϊʲô���ø�������?��˵ʥ�������ȸ�������ĺ��ӷ�����Ŷ!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[С��������]			--
--							--
--		22801, 5401			--
----------------------------------------------------------
function peter_talk21 ()
	Talk( 1, "С��������:�ء���Ҫ�ְ֡����쵽��ʥ�����˵ĵ���,����ȴ�Ҳ����ְ��ˡ�")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��β�Ϳ�˹]			--
--							--
--		25601, 4301			--
----------------------------------------------------------
function peter_talk22 ()
	Talk( 1, "��β�Ϳ�˹:��ǰʥ���ھ���������,�����Ҫ�Լ�ȥ������,ʥ�������͵��������ǺͰְ�ǰ����͵͵��ؼҵ�һ��,�Ҷ�֪��,������?")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[СŮ��������]			--
--							--
--		21501, 4101			--
----------------------------------------------------------
function peter_talk23 ()
	Talk( 1, "СŮ��������:Ӵ~~ʥ������!һ���ĵĹ��ڰ�!ʲô?��û�̻�?�ٺ�,������Ŷ,����ȥʥ���������·����г�ȥ����~~~���кܶ�����������Ʒ.�ǵ�ȥ����Ŷ.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[ŷ��]			--
--							--
--		20601, 7601			--
----------------------------------------------------------
function peter_talk24 ()
	Talk( 1, "ŷ��:�ڹ��ϵĶ�����һ������,�������лƽ���,��������������.���ȥѧ�����鼼�����԰�!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��ķ]			--
--							--
--		19401, 23501			--
----------------------------------------------------------
function peter_talk25 ()
	Talk( 1, "��ķ: �����������,��ȥ�Ǳ�,��,һ������ĵط�,�Ǳ��кܶ�ö�������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[���]			--
--							--
--		19401, 20101			--
----------------------------------------------------------
function peter_talk26 ()
	Talk( 1, "���:�����ο��Ҿͻ�����������˵~��~~�������~��")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�ֿ�]			        --
--							--
--		17301, 23501		         	--
----------------------------------------------------------
function peter_talk27 ()
	Talk( 1, "�ֿ�: ����˵�Ҳ��ôӳ������ܳ�������������ʥ�����˵ĵ���,���Ŵ��������ΧЦ�Ķ���ʹ,��ҲЦ��ֱ��������,ʥ������!��ס��,�����ʥ��,�㿴�����������ֿ��ڽ���!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����]			--
--							--
--		15701, 23401			--
----------------------------------------------------------
function peter_talk28 ()
	Talk( 1, "����: �ҳ��İ�ô?����ʥ��������õ�������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[ʥ��ѩ���׸���]			--
--							--
--		15101, 25901			        --
----------------------------------------------------------
function peter_talk29 ()
	Talk( 1, "ʥ��ѩ���׸���: �Ҳ���˵��,����,����ף��ʥ������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[ʥ��ѩ�˿�����]			--
--						 	--
--		6601, 8301			        --
----------------------------------------------------------
function peter_talk30 ()
	Talk( 1, "ʥ��ѩ�˿�����: HELLO!!ʥ������,��֪�������и�������ʯͷ���ٵĹ���ô?����,��û������?�ǽ������Ҫץ��ʥ�����˸��㽲,�������Ц�ѵ�!!")
end




--------------------------------------------------------
--							--
--							--
--		ʥ����[ʥ����ָ��Ա]		--
--						 	--
--		                         	        --
----------------------------------------------------------
function Xmas_talk25 ()
	Talk( 1, "ʥ������!��ӭ����������ʥ����,�ҿ������������ͨ,��ʲô��֪���ľ������Ұ�")
	Text( 1, "ʥ����Ļ",JumpPage, 2  )
	Text( 1, "ʥ���������ʲô",JumpPage, 3  )
	Text( 1, "ʥ��������",JumpPage, 4 )

	Talk( 2, "���ʥ�����������?����ϴ��(83,39)��......����Ի𼦴����?���л��(220,40)��......����㲥ף����?����ʥ����(144,158)��......���˽�����?��㷵�ذ�....")
	Text( 2, "Return",JumpPage, 1  )

	Talk( 3, "����Ե�(132,246)����,������һ���ܴ�ļ���,�����򵽺ܶഫ˵�еĶ���Ŷ����������Ҫ��ʥ������(146,171)�Ѻ����һ���ʥ��Ӳ�ң����ǵ�ӪҵԱ���ǲ���ֱ����Ǯ�ġ�����ȥ������")
	Text( 3, "Return",JumpPage, 1  )

	Talk( 4, "��˵ʥ�����������м���ֲ���BOSS,��������û���㹻�Ĺ�Ʒ���ٻ�����,����Ե�(146,252)�ҿƶ�����!")
	Text( 4, "Return",JumpPage, 1  )
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[С����]			--
--						 	--
--		9801, 23501			        --
----------------------------------------------------------
function peter_talk31 ()
	Talk( 1, "С����:�������������ʥ�������������ʱ�����ץס���ڼ���ô?�Ҿ��Թ�,��ϧʧ����,������������İ취������ץס��,��֪��ʲô�취?����������ܸ�����! ")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����С��]			--
--						 	--
--		14501, 26802			        --
----------------------------------------------------------
function peter_talk32 ()
	Talk( 1, "����С��:Ŷ��~ʥ�����˸��Ҵ�����һ��Ͱ���������,���������Ҷ������Ҹ�����!ʥ��������~")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����Լ��]			--
--						 	--
--		18101, 23903			        --
----------------------------------------------------------
function peter_talk33 ()
	Talk( 1, "����Լ��:��~ʥ������~���˶�����Լ��,�����Ҳ֪���ҵ����,�����Ҳ�����,�Ҷ�֪��С��������а취ץסʥ�����˵�����!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[˵Ц������¹]			--
--						 	--
--		22201, 22804			        --
----------------------------------------------------------
function peter_talk34 ()
	Talk( 1, "˵Ц������¹:����˵����?����һ��ͬ��,��ʮ���ó�����,��һ����Խ��Խ��,����ͱ���˸��ٹ�·!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����������]			--
--						 	--
--		24801, 8105			        --
----------------------------------------------------------
function peter_talk35 ()
	Talk( 1, "����������:ʥ���ڵ�����,���һ��Ҫ�ǵð����ӹ���ʥ������Ŷ,ʥ�����˻�������������.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��³ɭ��ʿ]			--
--						 	--
--		5501, 19506			        --
----------------------------------------------------------
function peter_talk36 ()
	Talk( 1, "��³ɭ��ʿ:��һ���������Ѿ��㹻��,��ʮ������������,��������޵�.Ү�ֱ�����,�ҵ�����.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��³]			--
--						 	--
--		11301, 23907			        --
----------------------------------------------------------
function peter_talk37 ()
	Talk( 1, "��³: ÿ�����ϱ��ŵ�����ĥʱ����~�����㻨��,��������һ��ۻ��!һ���˵�ʥ���������ֲ�����,�Ҿ��ڳ����Ÿı���.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����]			--
--						 	--
--		26301, 17308			        --
----------------------------------------------------------
function peter_talk38 ()
	Talk( 1, "����: ��֪����?��˵��һ�ֽ������ܱ�ʯ�Ķ���,��˵������ʹ���߱�ĸ�ǿ��,��������������ұ��ǵ���������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[���ɶ�]			--
--						 	--
--		17401, 6009			        --
----------------------------------------------------------
function peter_talk39 ()
	Talk( 1, "���ɶ�:�������Ƕ��ڵ㲥ף��,��Ҳ����㲥һ�����ﻰ����Ҫ�ӹ���!��Ҫ��н�ż�!��Ҫ�ý���!������,�����ϰ�֪������˵��.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[������]			--
--						 	--
--		3401, 20011			        --
----------------------------------------------------------
function peter_talk40 ()
	Talk( 1, "������: ������Ȼ����~����ҲҪע�ⰲȫŶ!�ҿɲ���һ�������ҽԺ�￴���в�����! ")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�Ͽ�˹]			--
--						 	--
--		7401, 20511			        --
----------------------------------------------------------
function peter_talk41 ()
	Talk( 1, "�Ͽ�˹:�ö��ѩ��,�ѵ���ô��ĵط���Ҫ����ɨ��?��ϣ�����ʥ�������ܵõ���������һ̨��ѩ��!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����]			--
--						 	--
--		20901, 21912			        --
----------------------------------------------------------
function peter_talk42 ()
	Talk( 1, "����: �Ӻ����޾���Ư��������վ�������ǰ,�Ҷ���������Ҫ��ϧ����,��վ��½���Ϲ�ʥ����,ʵ���Ǽ�ֵ����ף����,�һ��ÿ���˴�����ף��!�������ڵ������!ʥ������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[������]			--
--						 	--
--		26401, 13813			        --
----------------------------------------------------------
function peter_talk43 ()
	Talk( 1, "������: ��һֱ�뵱һ��������!��Ҫ���ҵĴ����ı�ʥ�����˷�������Ҫ��!����ʥ�����˻�Ҫ�����Ұ�������������.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[�ӷ�]			--
--						 	--
--		24801, 8114			        --
----------------------------------------------------------
function peter_talk44 ()
	Talk( 1, "�ӷ�: ֪��ʥ���ڸ���ô����?�Ҿ������������ɳ����,������,�������ǧ������������!")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����С���]			--
--						 	--
--		26101, 8915			        --
----------------------------------------------------------
function peter_talk45 ()
	Talk( 1, "����С���: �Ҵ���������?�����õ�廨��ô����?Сѩ�˺�С��¹��������ô����?��,��Щ�Ҷ�֪��,��ֻ����������֪��֪��.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[��˹��]			--
--						 	--
--		19301, 4016			        --
----------------------------------------------------------
function peter_talk46 ()
	Talk( 1, "��˹��: ʥ���ڵ���,��������Ϊ��ΰ���ð�ռҵ���ҲӦ��ͣ�����ͺ����Ǵ��ѩ��,�ú�����һ����ζ�Ļ��˰�.")
end

--------------------------------------------------------
--							--
--							--
--		ʥ����[����]			--
--						 	--
--		19101, 8417			        --
----------------------------------------------------------
function peter_talk47 ()
	Talk( 1, "����: �����ʥ������?�һ��ǵ�һ�ι����������~�����Ǹ�ʥ�������ֺ�������ɰ�,�����ǿô���ʥ����Ҳ��Ư��Ŷ,��ȥ������?")
end

function med_chaos ()


	Talk( 1, '�����: ������, � ��������� ������������ �����, � ���� �������� ���� ����, � ��� �� �� ������ �������� � ���� ���� ����� �����������.')

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 5000 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 50000 )
	TriggerAction( 2, TakeMoney, 50000 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 3 )
	Text( 1, '������� ���������', MultiTrigger,GetMultiTrigger(), 2 )

	
	
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 5000 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, '���������', MultiTrigger,GetMultiTrigger(), 2 )
	Text( 1, '�������� ����� �����������', JumpPage, 2 )

	Talk( 2, '�����: �������� ����� ����������� ����� � �������� � ����������� ����?')
	Text( 2, '��, ���������� ������.', SetSpawnPos, '������ �����' )
	Text( 2, '���, �������',CloseTalk )

	Talk( 3, '�����: ������� ��������� ����� 50000 �������, ������� � ���� ���' )

	Talk( 4, '�����: ��������� ����� 20000 �������, ������� � ���� ���' )

end

function med_snv ()

	Talk( 1, '����: ������, � ��������� ������� ����, � ���� �������� ���� ����, � ��� �� �� ������ �������� � ���� ���� ����� �����������.')

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 50000 )
	TriggerAction( 2, TakeMoney, 50000 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 3 )
	Text( 1, '������� ���������', MultiTrigger,GetMultiTrigger(), 2 )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, '���������', MultiTrigger,GetMultiTrigger(), 2 )
	Text( 1, '�������� ����� �����������', JumpPage, 2 )

	Talk( 2, '����: �������� ����� ����������� ����� � �������� � ������� �����?')
	Text( 2, '��, ���������� ������.', SetSpawnPos, '������ ���' )
	Text( 2, '���, �������',CloseTalk )

	Talk( 3, '����: ������� ��������� ����� 50000 �������, ������� � ���� ���' )

	Talk( 4, '����: ��������� ����� 20000 �������, ������� � ���� ���' )

end


function test_dialog ()

	Talk( 1, '�����: ������, � ��������� ������������ �����, � ���� �������� ���� ����, � ��� �� �� ������ �������� � ���� ���� ����� �����������.')

	Text( 1, "����������", BuyPage )

	InitTrade()
	--�����
	Weapon(	1808	)	--������� ����� ��������(����)
	Weapon(	1809	)	--������� ����� ��������(������)
	Weapon(	1810	)	--������� ����� ��������(������)
	Weapon(	1811	)	--������� ����� ��������(���)
	--Weapon(	0931	)	--������ ����� ��������(����)
	--Weapon(	0932	)	--������ ����� ��������(������)
	--Weapon(	0933	)	--������ ����� ��������(������)
	--Weapon(	0934	)	--������ ����� ��������(���)
	-- --�����������
	-- Weapon(	1804	)	--��������� ������
	-- Weapon(	1805	)	--�������
	-- Weapon(	1806	)	--���� ��� �����
	-- Weapon(	1807	)	--��������
	-- --������
	-- Defence(	4608	)	--���������� ������ 
	-- Defence(	4606	)	--������ ������ 
	-- Defence(		)
	-- Defence(		)
	-- Defence(	1793	)	--��������� ������ 
	-- Defence(	1792	)	--����� ������
	-- Defence(	1791	)	--������� ������ 
	-- Defence(	1790	)	--������� ������ 
	-- Defence(	1789	)	--������ ������ 
	-- Defence(	1788	)	--��������� ������
	-- Defence(	1787	)	--������� ������
	-- --���������
	-- Other(	4610	)	--��������������� ��������
	-- Other(	4609	)	--���������� ���������  
	-- Other(	4607	)	--������ ���������
	-- Other(		)
	-- Other(	1803	)	--��������� ��������� 
	-- Other(	1801	)	--������� ��������� 
	-- Other(	1800	)	--������� ���������
	-- Other(	1798	)	--��������� ��������� 
	-- Other(	1797	)	--������� ���������
	-- Other(	1802	)	--����� ���������
	-- Other(	1799	)	--������ ���������

end

function roico_talk()

    Talk( 1, "������������� ��������� �����: ��� ����, ����� ����� � ��������� �����, ����������, �������� [���� ����� � ������] �� ����, �� ������������ ���� ��������� � ���! ��� � ���� ���� �����, � ��� �� ����� �� ���� ��������������, �� � ���� ��� ���� ������ ������ �����!" )
    Text( 1, "�������� [70 ��.] ���������� �����",JumpPage, 2 )
	--Text( 1, "�������� �����",JumpPage, 16 )
	Text( 1, "�������� [���� ��������� �������]",JumpPage, 28 )
	Text( 1, "�������� ����� �� [���� ����� � ������]",JumpPage, 29 )

	Talk( 2, "�������� ���� ������ ������� �� ������!" )
        Text( 2, "�������� ���� ������� (�������)", JumpPage, 3)
	Text( 2, "�������� ���� ������� (�������)", JumpPage, 4)
	Text( 2, "�������� ���� �������� (�������)", JumpPage, 5)
	Text( 2, "�������� ���� ��������� (���������� �����)", JumpPage, 6)
	Text( 2, "�������� ���� ������ (��������)", JumpPage, 7)
	Text( 2, "�������� ���� ����� (��������)", JumpPage, 8)
	Text( 2, "������", JumpPage, 9)
	Talk( 9, "�������� ���� ������ ������� �� ������!" )
	Text( 9, "�������� ���� ������� (�������)", JumpPage, 10)
	Text( 9, "�������� ���� ������� (�������)", JumpPage, 11)
	Text( 9, "�������� ���� �������� (�������)", JumpPage, 12)
	Text( 9, "�������� ���� ��������� (���������� �����)", JumpPage, 13)
	Text( 9, "�������� ���� ������ (��������)", JumpPage, 14)
	Text( 9, "�������� ���� ����� (��������)", JumpPage, 15)
	Text( 9, "�����", JumpPage, 2) 


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2532, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 3, "������������� ��������� �����: ���� ��� ������� ���� 65, � �� ��������� ��� 300 �������� ����������, � ���� ���� ��� ���� ������." )
	Text( 3, "��������", MultiTrigger, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2535, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 4, "������������� ��������� �����: ���� ��� ������� ���� 65, � �� ��������� ��� 300 �������� ����������, � ���� ���� ��� ���� ������." )
	Text( 4, "��������", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2538, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 5, "������������� ��������� �����: ���� ��� ������� ���� 65, � �� ��������� ��� 300 �������� ����������, � ���� ���� ��� ���� ������." )
	Text( 5, "��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2541, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 6, "������������� ��������� �����: ���� ��� ������� ���� 65, � �� ��������� ��� 300 �������� ����������, � ���� ���� ��� ���� ������." )
	Text( 6, "��������", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2544, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 7, "������������� ��������� �����: ���� ��� ������� ���� 65, � �� ��������� ��� 300 �������� ����������, � ���� ���� ��� ���� ������." )
	Text( 7, "��������", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2547, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 8, "������������� ��������� �����: ���� ��� ������� ���� 65, � �� ��������� ��� 300 �������� ����������, � ���� ���� ��� ���� ������." )
	Text( 8, "��������", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2531, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 10, "������������� ��������� �����: ���� ��� ������� ���� 65, � �� ��������� ��� 300 �������� ����������, � ���� ���� ��� ���� ������." )
	Text( 10, "��������", MultiTrigger, GetMultiTrigger(), 1)



	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2534, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 11, "������������� ��������� �����: ���� ��� ������� ���� 65, � �� ��������� ��� 300 �������� ����������, � ���� ���� ��� ���� ������." )
	Text( 11, "��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2537, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 12, "������������� ��������� �����: ���� ��� ������� ���� 65, � �� ��������� ��� 300 �������� ����������, � ���� ���� ��� ���� ������." )
	Text( 12, "��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2540, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 13, "������������� ��������� �����: ���� ��� ������� ���� 65, � �� ��������� ��� 300 �������� ����������, � ���� ���� ��� ���� ������." )
	Text( 13, "��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2543, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 14, "������������� ��������� �����: ���� ��� ������� ���� 65, � �� ��������� ��� 300 �������� ����������, � ���� ���� ��� ���� ������." )
	Text( 14, "��������", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2546, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 15, "������������� ��������� �����: ���� ��� ������� ���� 65, � �� ��������� ��� 300 �������� ����������, � ���� ���� ��� ���� ������." )
	Text( 15, "��������", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 16, "������������� ��������� �����: ����������, �������� ������, ������� �� ������!" )
        Text( 16, "������", JumpPage, 17)
	Text( 16, "��������", JumpPage, 18)
	Text( 16, "������", JumpPage, 19)
	Text( 16, "���������", JumpPage, 20)
	Text( 16, "������� 3 �����", JumpPage, 21)
	Text( 16, "������", JumpPage, 30)

	Talk( 30, "������������� ��������� �����: ����������, �������� ������, ������� �� ������!" )
	Text( 30, "������� 2 �����", JumpPage, 22)
	Text( 30, "������� 1 �����", JumpPage, 23)
	Text( 30, "�����-�������", JumpPage, 24)
	Text( 30, "������� �����", JumpPage, 25)
	Text( 30, "�����������������", JumpPage, 26)
	Text( 30, "�����", JumpPage, 16)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2383, 20 )
	TriggerAction( 1, GiveItem, 5331, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 17, "������������� ��������� �����: ���� �� ������ ��� 20 �������� ����������, � ���� ���� ��� ����� ������!" )
	Text( 17, "��������", MultiTrigger, GetMultiTrigger(), 1)



	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 50 )
	TriggerCondition( 1, HasItem, 5331, 1 )
	TriggerAction( 1, TakeItem, 2383, 50 )
	TriggerAction( 1, TakeItem, 5331, 1 )
	TriggerAction( 1, GiveItem, 5332, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 18, "������������� ��������� �����: ���� �� ������ ��� 50 �������� ���������� � ������ ����� 1 ������, � ���� ���� ��� ����� ������!" )
	Text( 18, "��������", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 100 )
	TriggerCondition( 1, HasItem, 5332, 1 )
	TriggerAction( 1, TakeItem, 2383, 100 )
	TriggerAction( 1, TakeItem, 5332, 1 )
	TriggerAction( 1, GiveItem, 5333, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 19, "������������� ��������� �����: ���� �� ������ ��� 100 �������� ���������� � ������ ����� 2 ������, � ���� ���� ��� ����� ������!" )
	Text( 19, "��������", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 250 )
	TriggerCondition( 1, HasItem, 5333, 1 )
	TriggerAction( 1, TakeItem, 2383, 250 )
	TriggerAction( 1, TakeItem, 5333, 1 )
	TriggerAction( 1, GiveItem, 5334, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 20, "������������� ��������� �����: ���� �� ������ ��� 250 �������� ���������� � ������ ����� 3 ������, � ���� ���� ��� ����� ������!" )
	Text( 20, "��������", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 400 )
	TriggerCondition( 1, HasItem, 5334, 1 )
	TriggerAction( 1, TakeItem, 2383, 400 )
	TriggerAction( 1, TakeItem, 5334, 1 )
	TriggerAction( 1, GiveItem, 5335, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 21, "������������� ��������� �����: ���� �� ������ ��� 400 �������� ���������� � ������ ����� 4 ������, � ���� ���� ��� ����� ������!" )
	Text( 21, "��������", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 650 )
	TriggerCondition( 1, HasItem, 5335, 1 )
	TriggerAction( 1, TakeItem, 2383, 650 )
	TriggerAction( 1, TakeItem, 5335, 1 )
	TriggerAction( 1, GiveItem, 5336, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 22, "������������� ��������� �����: ���� �� ������ ��� 650 �������� ���������� � ������ ����� 5 ������, � ���� ���� ��� ����� ������!" )
	Text( 22, "��������", MultiTrigger, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 55 )
	TriggerCondition( 1, HasItem, 5336, 1 )
	TriggerAction( 1, TakeItem, 2865, 55 )
	TriggerAction( 1, TakeItem, 5336, 1 )
	TriggerAction( 1, GiveItem, 5337, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 23, "������������� ��������� �����: ���� �� ������ ��� 55 ������ ��������� ������� � ������ ����� 6 ������, � ���� ���� ��� ����� ������!" )
	Text( 23, "��������", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 80 )
        TriggerCondition( 1, HasItem, 5337, 1)
	TriggerAction( 1, TakeItem, 2865, 80 )
	TriggerAction( 1, TakeItem, 5337, 1 )
	TriggerAction( 1, GiveItem, 5338, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 24, "������������� ��������� �����: ���� �� ������ ��� 80 ������ ��������� ������� � ������ ����� 7 ������, � ���� ���� ��� ����� ������!" )
	Text( 24, "��������", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 110 )
	TriggerCondition( 1, HasItem, 5338, 1)
	TriggerAction( 1, TakeItem, 2865, 110 )
	TriggerAction( 1, TakeItem, 5338, 1 )
	TriggerAction( 1, GiveItem, 5339, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 25, "������������� ��������� �����: ���� �� ������ ��� 110 ������ ��������� ������� � ������ ����� 8 ������, � ���� ���� ��� ����� ������!" )
	Text( 25, "��������", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 155 )
	TriggerCondition( 1, HasItem, 5339, 1)
	TriggerAction( 1, TakeItem, 2865, 155 )
	TriggerAction( 1, TakeItem, 5339, 1 )
	TriggerAction( 1, GiveItem, 5340, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 26, "������������� ��������� �����: ���� �� ������ ��� 155 ������ ��������� ������� � ������ ����� 9 ������, � ���� ���� ��� ����� ������!" )
	Text( 26, "��������", MultiTrigger, GetMultiTrigger(), 1)
        Talk( 27, "������������� ��������� �����: ����������, ���������, ���� ��� ��������� ����� ���������� ����� ��� � ��� ���� ��� ������ �������� ��� ������. � �� ���� ������������ � ����!" )




	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2383, 20 )
	TriggerAction( 1, GiveItem, 2865, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 28, "������������� ��������� �����: 20 �������� ���������� ����� �������� �� 1 ���� ��������� �������" )
	Text( 28, "����������� �����", MultiTrigger, GetMultiTrigger(), 1)


	
	Talk( 29, "������������� ��������� �����: 15 ����� ����� �������� � ����� ���� ����� � ������. ���� ����� � ������ �������� ������ �����, ����� �� ������ ������ ��������� �����!")
	Text( 29, "����������� �����", GetChaName45_guildwar, 1)

end

