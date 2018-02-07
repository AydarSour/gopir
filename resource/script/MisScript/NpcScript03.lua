--------����������, ����������������,��������� �����
--									--
--									--
--npcscripts03.lua Created by Robin 2005.6.1.				--
--									--
--									--
--------------------------------------------------------------------------
print( "����㧪� npcscripts03.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

function r_talk10 ()
	
	
	 Talk( 1, "������ : ������! � ��������-������. ��� � ���� ������ ���?" )
	


	AddNpcMission 	(443)
	AddNpcMission 	(445)
	AddNpcMission 	(447)
	AddNpcMission	(1020)
	AddNpcMission	(1076)
	AddNpcMission	(1132)
	AddNpcMission	(1183)
	AddNpcMission(	1226	)
	
end 


function r_talk27 ()
	
	
	Talk( 1, " Sanjay:������, �����! � ��������� ��������� � ���������!." )


	AddNpcMission	(1021)
	AddNpcMission	(1077)
	AddNpcMission	(1133)
	AddNpcMission	(1184)

	AddNpcMission	(5728)
	AddNpcMission	(5729)
end 


function r_talk60 ()
	
	Talk( 1, "��������: ����������! ������������� �������� � �������� � �������. ������ ����� ���� ��������." )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "���������� ������������ ���������� ��������" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� �������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerAction( 1, BoatLevelBerthList, 3 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������������� �������", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "��������: ��! ������ ����������� � ��������? ����� ���� ����� ������� �������! �������� �� ��� ������� - �������� ���� �����-������ �� ���? ����� �������� ������� �������, ��������� �� ��� �����, ����� �������� ���������� ����� � �������� ��� ����������� ������� �������." )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 1, 3 )
	Text( 2, "��������� �����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 5, 3 )
	Text( 2, "��������� ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 6, 3 )
	Text( 2, "��������� ����-���", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 4, 3 )
	Text( 2, "��������� ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 14 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 14, 3 )
	Text( 2, "��������� ������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 15 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 15, 3 )
	Text( 2, "��������� ������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 13 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 13, 3 )
	Text( 2, "��������� �������� ����� �����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 16 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 16, 3 )
	Text( 2, "��������� ���", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "��������: ����� �������� ������� ������ �����, ���������� ������������� ��� � ������. ������� ���������� �����, ���� ������� ��� �������. �����������, ����� ������� ���, ����� �������� ���������� ����� � ��������� ��� ��������� � �������� ����������." )

	
	Text( 1, "������ ����������� ������ ", SendExchangeXData)
	InitExchangeX()
	ExchangeDataX	(	8142	,	5	,	8865	,	1	)
	ExchangeDataX	(	8142	,	5	,	8866	,	1	)
	ExchangeDataX	(	8142	,	5	,	8867	,	1	)
	ExchangeDataX	(	8142	,	5	,	8868	,	1	)
	ExchangeDataX	(	8142	,	5	,	8869	,	1	)

	
	AddNpcMission	(1116)
	AddNpcMission	(158)
	AddNpcMission	(159)
	AddNpcMission	(160)
	
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<船厂工人·弗兰克

------------------------------------------------------------
-- 白银城-----海事所助理·罗拉娜
--           2247,2857
------------------------------------------------------------

function r_talk150()

	Talk( 1, "�����: ������! � ������� ��������. ��� � ���� ���� ������?" )

	--Text( 1, "温情巨蟹宫(终极12宫专用任务)", JumpPage,2 )

	Talk( 2, "海事所助理·罗拉娜:请选择你要闯关的难度,从水手到船长难度依次加大,当然了难度越�?奖励越丰厚.你想好了吗?只能选择一次,不可以后悔哦" )

	InitTrigger()
	TriggerCondition( 1, NoRecord,1467 )
	TriggerCondition( 1, NoRecord,1468 )
	TriggerCondition( 1, HasItem, 1866, 1 )---------巨蟹门票
	TriggerAction( 1, TakeItem, 1866, 1 )----------巨蟹门票
	TriggerAction( 1, SetRecord, 1466 )
	TriggerAction( 1, SetRecord, 1469 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 2, "�����",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1466 )
	TriggerCondition( 1, NoRecord,1468 )
	TriggerCondition( 1, HasItem, 1866, 1 )---------巨蟹门票
	TriggerAction( 1, TakeItem, 1866, 1 )----------巨蟹门票
	TriggerAction( 1, SetRecord, 1467 )
	TriggerAction( 1, SetRecord, 1469 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 2, "�����",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1466 )
	TriggerCondition( 1, NoRecord,1467 )
	TriggerCondition( 1, HasItem, 1866, 1 )--------巨蟹门票
	TriggerAction( 1, TakeItem, 1866, 1 )----------巨蟹门票
	TriggerAction( 1, SetRecord, 1468 )
	TriggerAction( 1, SetRecord, 1469 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 2, "�������",MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "海事所助理·罗拉娜:希望您能够坚定自己的选择，不要放弃哦！我在这里祝福您..." )
	Talk( 4, "海事所助理·罗拉娜:挑�?巨蟹宫的时候,难度只能选择一次.并确保您的背包里有巨蟹宫门票.")
	
	AddNpcMission 	(437)
	AddNpcMission 	(439)
	AddNpcMission 	(441)

------------罗拉娜
-----------------------巨蟹座
	--AddNpcMission 	(5800)
	--AddNpcMission 	(5801)
	--AddNpcMission 	(5802)
	--AddNpcMission 	(5803)
	--AddNpcMission 	(5804)
	--AddNpcMission 	(5805)
	--AddNpcMission 	(5806)
	--AddNpcMission 	(5807)
	--AddNpcMission 	(5808)
	--AddNpcMission 	(5809)
	--AddNpcMission 	(5810)
	--AddNpcMission 	(5811)
	--AddNpcMission 	(5812)
	--AddNpcMission 	(5813)
	--AddNpcMission 	(5814)
	--AddNpcMission 	(5815)
	--AddNpcMission 	(5816)
	AddNpcMission 	(5857)
	AddNpcMission 	(5858)
	AddNpcMission 	(5862)
	AddNpcMission 	(5863)
	AddNpcMission 	(5864)

end

------------------------------------------------------------
-- 白银城-----船工·斯巴克
------------------------------------------------------------
function r_talk151 ()
		
	Talk( 1, "������: ��! ������ ����� � ����? ��� �������� ������� � ���� ������ �� ������. � ���� ����� ������ ������� � ������. ������ �������!" )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "���������� ������������ ���������� ��������" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� �������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1 )
	TriggerAction( 1, BoatLevelBerthList, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������������� �������", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "������: ����� ������� �� ������� ���������? � ���� ���� ��������� �������. ���� ���� ��� ����������, � ���� ������� ���� ������." )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 1, 1 )
	Text( 2, "��������� �����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 2 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 2, 1 )
	Text( 2, "��������� ���������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 3, 1 )
	Text( 2, "��������� ������� �����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 6, 1 )
	Text( 2, "��������� ����-���", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 13 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 13, 1 )
	Text( 2, "��������� �������� ����� �����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 16 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 16, 1 )
	Text( 2, "��������� ���", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "������: ������, ���� ������� ����� �� ������������. � ��� ����������, ����� �������� ��� �������. �����������, ����� �������� ���������� ����� � ��������� ��� ��������� � �������� ��������." )

	
	Text( 1, "������ ����������� ������ ", SendExchangeXData)
	InitExchangeX()
	ExchangeDataX	(	8142	,	5	,	8865	,	1	)
	ExchangeDataX	(	8142	,	5	,	8866	,	1	)
	ExchangeDataX	(	8142	,	5	,	8867	,	1	)
	ExchangeDataX	(	8142	,	5	,	8868	,	1	)
	ExchangeDataX	(	8142	,	5	,	8869	,	1	)

	end 

------------------------------------------------------------
-- 白银城-----海港指挥·雪莉
------------------------------------------------------------

function r_talk152()

	Talk( 1, " �����: ������! � ��������� �����. ���� �������� ������� - ��������� �� ���" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 1 )
	--TriggerAction( 1, RemoveYS )
	TriggerAction( 1, LuanchBerthList, 1, 2260,2829, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 1 )
	TriggerAction( 2, RepairBerthList, 1 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 1 )
	TriggerAction( 2, SupplyBerthList, 1 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 1 )
	TriggerAction( 1, SalvageBerthList, 1 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "������, �� � ���������� ���� �������, ����������� � ���� ������. ���� �������� ��������� 1000 ���." )
	Talk( 5, "������, �� ��� �������� ����� ������������� ������� � ����� ������. � ���� 200 �������." )
	Talk( 6, "������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )

	AddNpcMission ( 289 )
	AddNpcMission ( 290 )


end

------------------------------------------------------------
-- 沙岚城-----海港指挥·马克
------------------------------------------------------------

function r_talk153()

	Talk( 1, "����: ������! � ��������� ����� � �������. ���� �������� ������� - ��������� �� ���." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 832, 3698, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, RepairBerthList, 3 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, SupplyBerthList, 3 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 3 )
	TriggerAction( 1, SalvageBerthList, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "������, �� � ���������� ���� �������, ����������� � ���� ������. ���� �������� ��������� 1000 ���." )
	Talk( 5, "������, �� ��� �������� ����� ������������� ������� � ����� ������. � ���� 200 �������." )
	Talk( 6, "������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )

	


end

------------------------------------------------------------
--冰狼堡-----船工·乔治
------------------------------------------------------------
function r_talk155 ()
		
	Talk( 1, "������: ��, ��! ������ ����� � ����? �� ��� ��� ������� ��� �������! ������� �����!" )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "���������� ������������ ���������� ��������" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� �������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4 )
	TriggerAction( 1, BoatLevelBerthList, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������������� �������", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "������: ����� ������� �� ������� ���������? � ���� ���� ��������� �������. ���� ���� ��� ����������, � ���� ������� ���� ������." )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 2 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 2, 4 )
	Text( 2, "��������� ���������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 5, 4 )
	Text( 2, "��������� ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 3, 4 )
	Text( 2, "��������� ������� �����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 4, 4 )
	Text( 2, "��������� ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 13 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 13, 4 )
	Text( 2, "��������� �������� ����� �����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 16 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 16, 4 )
	Text( 2, "��������� ���", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "������: ����� �������� ������� �����, ���������� ������������� ��� � ������. ������� ���������� �����, ���� ������� ��� �������. �����������, ����� �������� ���������� ����� � ��������� ��� ��������� � �������� ����������." )
		
	Text( 1, "������ ����������� ������ ", SendExchangeXData)
	InitExchangeX()
	ExchangeDataX	(	8142	,	5	,	8865	,	1	)
	ExchangeDataX	(	8142	,	5	,	8866	,	1	)
	ExchangeDataX	(	8142	,	5	,	8867	,	1	)
	ExchangeDataX	(	8142	,	5	,	8868	,	1	)
	ExchangeDataX	(	8142	,	5	,	8869	,	1	)
end 

------------------------------------------------------------
-- 冰狼堡-----海港指挥·席林
------------------------------------------------------------

function r_talk154()

	Talk( 1, "������: ������! � ��������� ����� � ������. � ������ ���� � ����� ���� ���. ��� ���� ������?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 4 )
	TriggerAction( 1, LuanchBerthList, 4, 1196,673, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 4 )
	TriggerAction( 2, RepairBerthList, 4 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 4 )
	TriggerAction( 2, SupplyBerthList, 4 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 4 )
	TriggerAction( 1, SalvageBerthList, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 


	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ����� ������ �������!" )
	Talk( 4, "������, �� � ���������� ���� �������, ����������� � ���� ������." )
	Talk( 5, "������, �� ��� �������� ����� ������������� ������� � ����� ������. � ��� 200 �������." )
	Talk( 6, "������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )

	AddNpcMission ( 294 )
	AddNpcMission ( 295 )

end


------------------------------------------------------------
-- 海风岛-----海港指挥·路凡
------------------------------------------------------------

function r_talk178()

	Talk( 1, "������: ������! � ��������� �����. ��� ���� ������?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 5 )
	TriggerAction( 1, LuanchBerthList, 5, 3240, 3314, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 5 )
	TriggerAction( 2, RepairBerthList, 5 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 5 )
	TriggerAction( 2, SupplyBerthList, 5 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 5 )
	TriggerAction( 1, SalvageBerthList, 5 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ����� ������ �������!" )
	Talk( 4, "������, �� � ���������� ���� �������, ����������� � ���� ������. ���� �������� ��������� 1000 ���." )
	Talk( 5, "������, �� ��� �������� ����� ������������� ������� � ����� ������. � ���� 200 �������." )
	Talk( 6, "������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )
	--AddNpcMission	(3001 )
end

------------------------------------------------------------
-- 碎冰岛-----海港指挥·诺尔罗德
------------------------------------------------------------

function r_talk179()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 6 )
	TriggerAction( 1, LuanchBerthList, 6, 2301, 1144, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 6 )
	TriggerAction( 2, RepairBerthList, 6 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 6 )
	TriggerAction( 2, SupplyBerthList, 6 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 6 )
	TriggerAction( 1, SalvageBerthList, 6 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "������, �� � ���������� ���� �������, ����������� � ���� ������. ���� �������� ��������� 1000 ���." )
	Talk( 5, "������, �� ��� �������� ����� ������������� ������� � ����� ������. � ���� 200 �������." )
	Talk( 6, "������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )

	
	
end

------------------------------------------------------------
-- 雪贼岛-----海港指挥·鲁兹鲁伊
------------------------------------------------------------

function r_talk180()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 7 )
	TriggerAction( 1, LuanchBerthList, 7, 3628, 770, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 7 )
	TriggerAction( 2, RepairBerthList, 7 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 7 )
	TriggerAction( 2, SupplyBerthList, 7 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 7 )
	TriggerAction( 1, SalvageBerthList, 7 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "������, �� � ���������� ���� �������, ����������� � ���� ������. ���� �������� ��������� 1000 ���." )
	Talk( 5, "������, �� ��� �������� ����� ������������� ������� � ����� ������. � ���� 200 �������." )
	Talk( 6, "������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )
	--AddNpcMission	(3002 )
end

------------------------------------------------------------
-- 萨拉补给站-----海港指挥·温亚塔
------------------------------------------------------------

function r_talk181()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 4, "������! ������ ����� 1000 ���." )
	Talk( 5, "������! �������� ����� 200 ���." )

	
	
	AddNpcMission	(763)
	AddNpcMission(	1742	)
	AddNpcMission (	1938	)
	AddNpcMission (	1953	)
----------------吉尼斯---海港指挥·温亚塔--03
	AddNpcMission	(5511)
	AddNpcMission	(5512)
	--AddNpcMission	(3003 )

end

------------------------------------------------------------
-- �?�尔补给站-----海港指挥·达耶达
------------------------------------------------------------

function r_talk182()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 1 ) 


	Talk( 4, "������! ������ ����� 1000 ���." )
	Talk( 5, "������! �������� ����� 200 ���." )

	AddNpcMission	(379)
	AddNpcMission	(380)
----------------吉尼斯---海港指挥·达耶达--03
	AddNpcMission (5533 )
	AddNpcMission (5534 )
	
	
end

------------------------------------------------------------
-- 哈尔补给站-----海港指挥·瓦雷米
------------------------------------------------------------

function r_talk183()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 1 ) 
--Text( 1, "Obtained Fairy Soul", JumpPage, 6 ) 
	
	Talk( 4, "������! ������ ����� 1000 ���." )
	Talk( 5, "������! �������� ����� 200 ���." )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 50 )
	TriggerAction( 1, TakeItem, 3116, 50 )
	TriggerAction( 1, GiveItem, 3337, 1, 4 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 6, "���������: ������! �� ������ ���������� ���� ���? ����� ������� ��� 50 ��������� �������." )
	Text( 6, "� ���� ���� ��������� ���������� �������.", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 7, "���������: ��! � �� ������� ��� - �� ������ �������� ��� 50 ���������� �������." )


	AddNpcMission(	1740	)
	AddNpcMission (	1936	)
	AddNpcMission (	1951	)
	AddNpcMission (	381	)
	AddNpcMission (	382	)
----------------吉尼斯---海港指挥·瓦雷米--03
	AddNpcMission (5531 )
	AddNpcMission (5532 )
	-----------------海港指挥·瓦雷米---------金牛
	AddNpcMission	(5655)
	AddNpcMission	(5656)

	-----------------海港指挥·瓦雷米---------巨蟹
	AddNpcMission	(5861)

end

------------------------------------------------------------
-- 弗里敦补给站-----海港指挥·法第尔
------------------------------------------------------------

function r_talk184()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "������! ������ ����� 1000 ���." )
	Talk( 5, "������! �������� ����� 200 ���." )


	AddNpcMission(	1739	)
	AddNpcMission (	1935	)
	AddNpcMission (	1950	)
	AddNpcMission (	383	)
	AddNpcMission (	384	)
	AddNpcMission (	385	)

	----------------吉尼斯---海港指挥·法第尔--03
	AddNpcMission (5529 )
	AddNpcMission (5530 )



end

------------------------------------------------------------
-- 海风岛-----交�?��?·布尔兹
------------------------------------------------------------

function r_talk185()

	Talk( 1, "������: ������! ��� ���� ������?" )
	Text( 1,"�����", SendExchangeData19 )

	InitExchange19()
	DoExchange19()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
	


--	AddNpcMission	(760)	--����������� ���������� �����

end

------------------------------------------------------------
-- 碎冰岛-----交�?��?·赛瑟尼
------------------------------------------------------------

function r_talk186()

	Talk( 1, "�������: ������! ��� ���� ������?" )
Text( 1,"�����", SendExchangeData20 )

	InitExchange20()
	DoExchange20()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
--	AddNpcMission	(761)	--����������� ���������� �����

	-----------------交�?��?·赛瑟尼---------金牛
	AddNpcMission	(5643)
	AddNpcMission	(5644)
end

------------------------------------------------------------
-- 雪贼岛-----交�?��?·肥鲸德拉德
------------------------------------------------------------

function r_talk187()

	Talk( 1, "������: ������! ��� ���� ������?" )
Text( 1,"�����", SendExchangeData21 )

	InitExchange21()
	DoExchange21()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

--	AddNpcMission	(762)	--����������� ���������� �����
end

------------------------------------------------------------
-- 冰雪岛-----海港指挥·波尔
------------------------------------------------------------

function r_talk188()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 8 )
	TriggerAction( 1, LuanchBerthList, 8, 2351, 767, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 8 )
	TriggerAction( 2, RepairBerthList, 8 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 8 )
	TriggerAction( 2, SupplyBerthList, 8 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 8 )
	TriggerAction( 1, SalvageBerthList, 8 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "������, �� � ���������� ���� �������, ����������� � ���� ������. ���� �������� ��������� 1000 ���." )
	Talk( 5, "������, �� ��� �������� ����� ������������� ������� � ����� ������. � ���� 200 �������." )
	Talk( 6, "������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )
	----------海港指挥·波尔-------双子--------03
	--AddNpcMission	(101)
	AddNpcMission	(5704)
	AddNpcMission	(5705)
	--AddNpcMission (3013 )
	
end

------------------------------------------------------------
-- 鸣沙岛-----海港指挥·�?玛
------------------------------------------------------------

function r_talk189()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 9 )
	TriggerAction( 1, LuanchBerthList, 9, 1769, 3788, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 9 )
	TriggerAction( 2, RepairBerthList, 9 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 9 )
	TriggerAction( 2, SupplyBerthList, 9 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 9 )
	TriggerAction( 1, SalvageBerthList, 9 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "������, �� � ���������� ���� �������, ����������� � ���� ������. ���� �������� ��������� 1000 ���." )
	Talk( 5, "������, �� ��� �������� ����� ������������� ������� � ����� ������. � ���� 200 �������." )
	Talk( 6, "������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )
	
end

------------------------------------------------------------
-- 真爱岛-----海港指挥·夏德利
------------------------------------------------------------
function r_talk190()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 10 )
	TriggerAction( 1, LuanchBerthList, 10, 2527, 2358, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 10 )
	TriggerAction( 2, RepairBerthList, 10 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 10 )
	TriggerAction( 2, SupplyBerthList, 10 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 10 )
	TriggerAction( 1, SalvageBerthList, 10 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "������, �� � ���������� ���� �������, ����������� � ���� ������. ���� �������� ��������� 1000 ���." )
	Talk( 5, "������, �� ��� �������� ����� ������������� ������� � ����� ������. � ���� 200 �������." )
	Talk( 6, "������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )
	--AddNpcMission (3005 )
end

------------------------------------------------------------
-- 苏港补给站-----海港指挥·鲁西
------------------------------------------------------------
function r_talk191()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "������! ������ ����� 1000 ���." )
	Talk( 5, "������! �������� ����� 200 ���." )
	 -------------吉尼斯--苏港补给站,海港指挥·鲁西(464,468)--03
	AddNpcMission (5527 )
	AddNpcMission (5528 )
	--AddNpcMission (3011 )


end

------------------------------------------------------------
-- 埃弗里补给站-----海港指挥·布纽
------------------------------------------------------------
function r_talk192()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "������! ������ ����� 1000 ���." )
	Talk( 5, "������! �������� ����� 200 ���." )

	AddNpcMission ( 304 )
	AddNpcMission ( 305 )
	AddNpcMission(	1743	)
	AddNpcMission (	1939	)
	AddNpcMission (	1954	)
	AddNpcMission (	386	)
	AddNpcMission (	387	)
	--AddNpcMission (3012 )

	----------------吉尼斯---海港指挥·布纽--03
	AddNpcMission (5525 )
	AddNpcMission (5526 )
	
	
end


------------------------------------------------------------
-- 拉古补给站-----海港指挥·多廉达
------------------------------------------------------------
function r_talk193()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "������! ������ ����� 1000 ���." )
	Talk( 5, "������! �������� ����� 200 ���." )

	AddNpcMission(	1441	)
	AddNpcMission (	1931	)

	----------------吉尼斯---海港指挥·多廉达--03
	AddNpcMission (5523 )
	AddNpcMission (5524 )
	--AddNpcMission (3010 )

end

------------------------------------------------------------
-- 其索单补给站-----海港指挥·特巴齐尔
------------------------------------------------------------
function r_talk194()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "������! ������ ����� 1000 ���." )
	Talk( 5, "������! �������� ����� 200 ���." )
	
	--AddNpcMission (3007 )
end

------------------------------------------------------------
-- 穆穆尔补给站-----海港指挥·巴奥
------------------------------------------------------------
function r_talk195()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "������! ������ ����� 1000 ���." )
	Talk( 5, "������! �������� ����� 200 ���." )

	AddNpcMission ( 291 )
	AddNpcMission ( 292 )
	AddNpcMission ( 293 )
	AddNpcMission(	1443	)
	AddNpcMission (	1932	)
	--AddNpcMission (3008 )
	


end

------------------------------------------------------------
-- 小肯补给站-----海港指挥·迪迪萨
------------------------------------------------------------
function r_talk196()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "������! ������ ����� 1000 ���." )
	Talk( 5, "������! �������� ����� 200 ���." )
	----------------吉尼斯---海港指挥·迪迪萨--03
	AddNpcMission (5515 )
	AddNpcMission (5516 )
	--AddNpcMission (3006 )
end

------------------------------------------------------------
-- 肖沸补给站-----海港指挥·丹尼斯
------------------------------------------------------------
function r_talk197()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "������! ������ ����� 1000 ���." )
	Talk( 5, "������! �������� ����� 200 ���." )

	----------------1.7
	AddNpcMission (5133 )
	AddNpcMission (5134 )
	AddNpcMission (5135 )

	----------------吉尼斯---海港指挥·丹尼斯--03
	AddNpcMission (5513 )
	AddNpcMission (5514 )
	--AddNpcMission (3004 )
end

------------------------------------------------------------
-- 埃皮杜补给站-----海港指挥·索尔
------------------------------------------------------------
function r_talk198()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "������! ������ ����� 1000 ���." )
	Talk( 5, "������! �������� ����� 200 ���." )
	AddNpcMission (5517 )
	AddNpcMission (5518 )
	--AddNpcMission (3009 )
end


function r_talk199()
Talk( 1, "�����: ������! ��� ���� ������?" )

Text( 1,"�����", SendExchangeData17 )

	InitExchange17()
	DoExchange17()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	
end



function r_talk200()

	Talk( 1, "�����: ������! ��� ���� ������?" )	
	Text( 1,"�����", SendExchangeData15 )

	InitExchange15()
	DoExchange15()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

----------交�?��?·米索亚斯-------双子---03
	AddNpcMission	(5710)
	AddNpcMission	(5711)
end



function r_talk201()

	Talk( 1, "���: ������! ��� ���� ������?" )
	Text( 1,"�����", SendExchangeData16 )
	

	InitExchange16()
	DoExchange16()
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
	

-----------------交�?��?·尤卡---------金牛
	AddNpcMission	(5633)
	AddNpcMission	(5634)
----------交�?��?·尤卡-------双子---------------------03
	AddNpcMission	(5716)
	AddNpcMission	(5717)
end


function r_talk202()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 11 )
	TriggerAction( 1, LuanchBerthList, 11, 1642, 2005, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 11 )
	TriggerAction( 2, RepairBerthList, 11 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 11 )
	TriggerAction( 2, SupplyBerthList, 11 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 11 )
	TriggerAction( 1, SalvageBerthList, 11 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "������, �� � ���������� ���� �������, ����������� � ���� ������. ���� �������� ��������� 1000 ���." )
	Talk( 5, "������, �� ��� �������� ����� ������������� ������� � ����� ������. � ���� 200 �������." )
	Talk( 6, "������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )
end


function r_talk203()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "������! ������ ����� 1000 ���." )
	Talk( 5, "������! �������� ����� 200 ���." )

	AddNpcMission(	1741	)
	AddNpcMission (	1937	)
	AddNpcMission (	1952	)
	------------------eleven
	AddNpcMission (	5063 )
	AddNpcMission (	5071 )
--------------------1.7
	AddNpcMission ( 5075	)
	AddNpcMission(	5091 )
	AddNpcMission (5105 )
	AddNpcMission (5106 )
	AddNpcMission (5107 )
	AddNpcMission (5108 )
	AddNpcMission (5115 )
	----------------吉尼斯---海港指挥·乔尔乔尼--03
	AddNpcMission (5521 )
	AddNpcMission (5522 )
end


function r_talk204()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "������! ������ ����� 1000 ���." )
	Talk( 5, "������! �������� ����� 200 ���." )
	AddNpcMission (5519 )
	AddNpcMission (5520 )
	AddNpcMission	(5635)
	AddNpcMission	(5636)
end

------------------------------------------------------------

function r_talk205()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "������! ������ ����� 1000 ���." )
	Talk( 5, "������! �������� ����� 200 ���." )

	-----------------海港指挥·拉米修---------金牛
	AddNpcMission	(5659)
	AddNpcMission	(5660)
	----------海港指挥·拉米修-------双子--------------03
	AddNpcMission	(5724)
	AddNpcMission	(5725)
end

------------------------------------------------------------
-- 好运岛-----交�?��?·帕德琉斯
------------------------------------------------------------

function r_talk206()

	Talk( 1, "����: ������! ��� ���� ������?" )
	Text( 1,"�����", SendExchangeData18 )

	InitExchange18()
	DoExchange18()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
	

end

------------------------------------------------------------
-- 雷霆堡军港-----海港指挥·查可夫中尉
------------------------------------------------------------
function r_talk207()

	Talk( 1, "��������� �����: � ��������� � ���������� �������. ���� � ���� ���-������ ������?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 2 )
	TriggerAction( 1, LuanchBerthList, 2, 1064, 1324, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 2 )
	TriggerAction( 2, RepairBerthList, 2 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 2 )
	TriggerAction( 2, SupplyBerthList, 2 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 2 )
	TriggerAction( 1, SalvageBerthList, 2 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "������, �� � ���������� ���� �������, ����������� � ���� ������. ���� �������� ��������� 1000 ���." )
	Talk( 5, "������, �� ��� �������� ����� ������������� ������� � ����� ������. � ���� 200 �������." )
	Talk( 6, "������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )


	end

------------------------------------------------------------
-- 沙岚新城-----交�?��?·西多夫
------------------------------------------------------------

function r_talk208()

	 Talk( 1, "������: ������! ����� � ������� �� ��������. ��� ���� ������?" )


	AddNpcMission(	104	)
	--AddNpcMission 	(198)
	AddNpcMission 	(199)
	AddNpcMission 	(149)
	AddNpcMission(	105	)
	AddNpcMission(	106	)

end

------------------------------------------------------------
-- 冰狼堡-----交�?��?·佩鲁诺
------------------------------------------------------------

function r_talk209()

	 Talk( 1, "������: ������! � ������� �� ��������. ��� ���� ������?" )


end

------------------------------------------------------------
-- 雷霆堡军港-----船工·�?�憨
------------------------------------------------------------
function r_talk210 ()
		
	Talk( 1, "�����: ��! ������ ����������� � ��������? ����� ���� ����� ������� �������! ������� �� ��� ������� - �����, �����-������ �������� ���� �� ����." )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "���������� ������������ ���������� ��������" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� �������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2 )
	TriggerAction( 1, BoatLevelBerthList, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������������� �������", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "�����: ����� ������� ���� �����? � ���� ���� �� ���� �������. �� �� �� ������� ��������� ��������, ���� �� �� ����� ��������������� ������ ������ ���������." )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 3, 2 )
	Text( 2, "��������� ������� �����", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 4, 2 )
	Text( 2, "��������� ������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 6, 2 )
	Text( 2, "��������� ����-���", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 11 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 11, 2 )
	Text( 2, "��������� ������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 12 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 12, 2 )
	Text( 2, "��������� ����������� ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 13 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 13, 2 )
	Text( 2, "��������� �������� ����� �����", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "�����: ������, ������ ������� ��� � ����� �������. ����� �������� ������� �����, ������ ���������� ����� � ��������� � ��������� � ���������� � ���������� ������� �����." )

	Text( 1, "������ ����������� ������ ", SendExchangeXData)
	InitExchangeX()
	ExchangeDataX	(	8142	,	5	,	8865	,	1	)
	ExchangeDataX	(	8142	,	5	,	8866	,	1	)
	ExchangeDataX	(	8142	,	5	,	8867	,	1	)
	ExchangeDataX	(	8142	,	5	,	8868	,	1	)
	ExchangeDataX	(	8142	,	5	,	8869	,	1	)

	
	end 




function r_talk211()

	Talk( 1, "�����: ��! ������ ������������� � ������ ������������ ��������? ������ �������������� � ��� � ����� �� ���������?" )
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 1 )
	TriggerAction( 1, ListAllGuild, 1 )
	TriggerCondition( 2, IsGuildType, 0 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, NoGuild )
	TriggerAction( 3, ListAllGuild, 1 )
	TriggerFailure( 3, JumpPage, 3 )
	Text( 1, "��������� ��������� �����", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "����", CloseTalk)
	
	Talk( 2, "��! �� �� �� �����! �� ������ �� ��������� ������ �� �����." )

	Talk( 3, "��! ������ ������, ��� ����� ��������� �����. ����! �� ������!" )

		
end



function r_talk212()

	Talk( 1, "��������: ������, � ������� ������ ����������� � �����. ������ ���������� � ���� ������ ����� �������� �������������. � ����� ��������� ���� �������� � ���� ����!" )
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 0 )
	TriggerAction( 1, ListAllGuild, 0 )
	TriggerCondition( 2, IsGuildType, 1 )
	TriggerAction( 2, JumpPage, 3 )
	TriggerCondition( 3, NoGuild )
	TriggerCondition( 3, HasItem, 4110, 1 )
	TriggerAction( 3, TakeItem, 4110, 1 )
	TriggerAction( 3, ListAllGuild, 0 )
	TriggerFailure( 3, JumpPage, 2 )
	Text( 1, "������ � ��������� �������������", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "����", CloseTalk)
	
	Talk( 2, "��������: �� �� ������ ������ � ����� ���� � ���� �� ����� ����������������� ������." )

	Talk( 3, "��������: �� �� �� �����. � �� ��������� ���������� ���� �������� �������!" )

		
end


function r_talk213()

	Talk( 1, "������: �����������! ���� ���� ����! ���� ��������, ��� ������ ���������� �����, ������ ��� ���������������� ������ � ���������� ����� �������� � ������ �������!" )
	InitTrigger()
	TriggerCondition( 1, HasItem, 4110, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, IsGuildType, 0 )
	TriggerAction( 2, JumpPage, 4 )
	TriggerCondition( 3, IsGuildType, 1 )
	TriggerAction( 3, JumpPage, 5 )
	TriggerCondition( 4, HasLeaveBagGrid, 1 )
	TriggerCondition( 4, NoGuild )
	TriggerCondition( 4, ChekTimeHook )
	TriggerAction( 4, GiveItem, 4110, 1, 4 )
	TriggerFailure( 4, JumpPage, 3 )
	Text( 1, "������. ������, ����������.",MultiTrigger, GetMultiTrigger(), 4 )
	Text( 1, "��������, �� ������. ����!", CloseTalk)

	Talk( 2, "� ���� ��� ���� ���������������� ������" )

	Talk( 3, "������: �� ��� �������� � �����-�� �������? ������� ����� � ����� ���������. ��� ������ ���� ��������� ������, ����� � ����� ���� ���� ���������������� ������." )

	Talk( 4, "������: �� ��� �������� � �������� �������. ����� ���� ���������������� ������? �������� � ������������� �����, ����� ������ ������ ����� �������." )

	Talk( 5, "������: � ����, �� ����������� �������. ������ � ���� �� �����. �� ��� ����� �����!" )

		
end


function r_talk214()

	Talk( 1, "������! � ����������, ������� ����� �� ���������. ���� ��� ������� ������������ � ����� �������, � ������ ��� � ���������." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_MINE, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����㧪� Crystal", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "� ���� ��� ������� � ����� �������" )
	AddNpcMission	(5720)
	AddNpcMission	(5721)	
end


function r_talk215()

	Talk( 1, "������! � ����������, ������� ����� �� ���������. ���� ��� ������� ������������ � ����� ����������, � ������ ��� � ���������." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2)
	TriggerAction( 1, PackBagList, 2, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ���������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "� ���� ��� ������� � ����� ����������" )
		
end

------------------------------------------------------------
-- 白银林区-----打包人·摩根
------------------------------------------------------------

function r_talk216()

	Talk( 1, "������! � ����������, ������� ����� �� ���������. ���� ��� ������� ������������ � ����� �������, � ������ ��� � ���������." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ���������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "� ���� ��� ������� � ����� �������" )

	AddNpcMission(	1436	)
	AddNpcMission (	1930	)
		
end

------------------------------------------------------------
-- 冰雪岛-----打包人·�?�里西斯
------------------------------------------------------------

function r_talk217()

	Talk( 1, "�����: ������! � ����������, ������� ����� �� ���������. ���� ��� ������� ������������ � ������ �����, � ������ ��� � ���������." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 8)
	TriggerAction( 1, PackBagList, 8, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ���������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�����: ������! � ���� ��� �������� � ����� ������" )
		
end

------------------------------------------------------------
-- 鸣沙岛-----打包人·伊加卡班
------------------------------------------------------------

function r_talk218()

	Talk( 1, "������! � ����������, ������� ����� �� ���������. ���� ��� ������� ������������ � ������ �����, � ������ ��� � ���������." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 9)
	TriggerAction( 1, PackBagList, 9, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ���������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "� ���� �� �������� � ����� ������� ��������" )
		
end

------------------------------------------------------------
-- 沙岚新城-----打包人·安巴瓦而
------------------------------------------------------------

function r_talk219()

	Talk( 1, "�����: ������! � ����������, ��������� ��������� �� �������. ���� ������ ����, ���� ���� ������� ����� � ������� � ����� �������." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_MINE, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ����������", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "�����: ����������� ����! � ������� � ����� ������� ��� ����� ��������." )
		
end

------------------------------------------------------------
-- �?�兰比斯补给站-----打包人·�?�加恩布赖得
------------------------------------------------------------

function r_talk220()

	Talk( 1, "������! � ����������, ������� ����� �� ���������. ���� ��� ������� ������������ � ����� ������, � ������ ��� � ���������." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_MINE, 2 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����㧪� Iron Ore", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ���������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "� ���� ��� ������� � ����� ������" )

	AddNpcMission(	1581	)
	AddNpcMission (	1933	)

	
end


------------------------------------------------------------
-- 卡尔加德雪原-----打包人·坎贝尔
------------------------------------------------------------

function r_talk243()

	Talk( 1, "������! � ����������, ������� ����� �� ���������. ���� ��� ������� ������������ � ����� ����������, � ������ ��� � ���������." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2)
	TriggerAction( 1, PackBagList, 2, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ���������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "� ���� ��� ������� � ����� ����������" )
		
end

------------------------------------------------------------
-- 德尔维平原-----打包人·索拉斯
------------------------------------------------------------

function r_talk244()

	Talk( 1, "������! � ����������, ������� ����� �� ���������. ���� ��� ������� ������������ � ����� �������, � ������ ��� � ���������." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ���������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "� ���� ��� ������� � ����� �������" )

end



------------------------------------------------------------
-- 帕克荒漠-----打包人·安塞拉
------------------------------------------------------------

function r_talk245()

	Talk( 1, "�����: ������! � ����������, ������� �� ��������. ���� � ����� ������� ����� ��� �������, � ������ ��� ��������� ���." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ���������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "�����: ��! � ������ ������� � ���� �� ������������� �� ������ �������" )
		
end


------------------------------------------------------------
-- 冰极-----打包人·�?�加西
------------------------------------------------------------

function r_talk246()

	Talk( 1, "����: �-���! � �������. ���������� ���� ����� � ����� ������, � � ����� ��������� ������ ���� �� �������." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ���������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "����: ������, ����! � ����� ������ ��� ����� ��������" )
	
end

------------------------------------------------------------
-- 迷之港口-----港口指挥◎迷
------------------------------------------------------------
function r_talk247()

	Talk( 1, "Mist: Hi, I can help you salvage any sunken ships in this mysterious land. Do you need any help?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 1341, 3257, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry I only repair ships docked at Mystery Harbor. Please pay 1000G" )
	Talk( 5, "Sorry! I only refuel ships docked at Maze Harbor. Please pay 200G as repair fee." )
	Talk( 6, "Sorry, I only salvage sunken ship docked in Maze Harbor. Please pay 1000G" )

end

------------------------------------------------------------
-- 迷之港口-----小花园北部商店海港指挥
------------------------------------------------------------
function r_talk248()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 116, 51, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	
	

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	

end

------------------------------------------------------------
-- 迷之港口-----小花园北部中央海港指挥
------------------------------------------------------------
function r_talk249()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 235, 123, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	

end


------------------------------------------------------------
-- 迷之港口-----小花园东部海港指挥
------------------------------------------------------------
function r_talk250()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 248, 352, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	

end

------------------------------------------------------------
-- 迷之港口-----小花园南部商店海港指挥
------------------------------------------------------------
function r_talk251()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 353, 428, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )


end

------------------------------------------------------------
-- 迷之港口-----小花园北部下海海港指挥
------------------------------------------------------------
function r_talk257()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 231,211, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )


end

------------------------------------------------------------
-- 迷之港口-----小花园南部下海海港指挥
------------------------------------------------------------
function r_talk258()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 231,256, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )


end


------------------------------------------------------------
-- 迷之港口-----�?�暗沼泽海港指挥
------------------------------------------------------------
function r_talk261()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 295, 352, 0 )
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

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "������, �� ��������������� ���� �� �������, ������� ������������� � ������������ �����. ���� �������� ��������� 1000 ���." )
	Talk( 5, "Please pay 200G" )
	Talk( 6, "������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )

end

------------------------------------------------------------
-- 迷之港口-----废灵之都海港指挥
------------------------------------------------------------
function r_talk262()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 299, 321, 0 )
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

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "������, �� ��������������� ���� �� �������, ������� ������������� � ������������ �����. ���� �������� ��������� 1000 ���." )
	Talk( 5, "Please pay 200G" )
	Talk( 6, "������, �� ��������������� ���� �� �������, ������� ������������� � ����� ������. ���� �������� ��������� 1000 ���." )

end

----------------------------------------------------------
--							--
--							--
--		竞技花园[神�?商人]			--
--							--
--		225538,280188				--
----------------------------------------------------------
-----------------------------------------------------------这里开始P话聊天
function r_talk259 ()
	
	
	Talk( 1, "Mystery Merchant: Hi! I have some great stuff here! Want to have a look?" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12 )
	TriggerAction( 1, TradeBerthList, 12 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����", MultiTrigger, GetMultiTrigger(), 1 )

	
	Talk( 2, "Mystery Merchant: Sorry, you do not have any ships docked in Mystery Harbor. Unable to trade." )
	
	InitGoods(12)
	SaleGoodsData(	0	,	1861	,	500	,	5000	,	5000	)


	AddNpcMission 	(443)
	AddNpcMission 	(445)
	AddNpcMission 	(447)
	AddNpcMission	(1020)
	AddNpcMission	(1076)
	AddNpcMission	(1132)
	AddNpcMission	(1183)
	AddNpcMission(	1226	)
	
end 



------------------------------------------------------------
-- 小花园-----药草商人
------------------------------------------------------------

function r_talk260()

	Talk( 1, "����: ������, � ���� ���� ��������� ������ ����, ���� ���-�� �� ��� �����?" )
	Text( 1, "����", BuyPage )
	Text( 1, "������, � ������ ������������",CloseTalk )

	InitTrade()
	Other(	3460	)
	Other(	3461	)

end

------------------------------------------------------------
-- 沙岚新城-----神�?海港指挥
------------------------------------------------------------
function r_talk263()

	Talk( 1, "����������� ��������� �����: ������! � ���� ��������������� ����, ��������������� � ������������ �����. � ����� ���� �������, ��� �� �� �� ���, � ��������� ��������� ��� ���� �����. ����� ��� ������?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 832, 3698, 0 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 3 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 3, "������, �� � ���������� ������ �������, ��������������� � ������������ �����. ��� ����� 1000 �������." )
	Talk( 4, "������, �� � ��������� ������ �������, ��������������� � ������������ �����. ��� ����� 200 �������." )
	Talk( 5, "������, �� � �������������� ������ �������, ��������������� � ������������ �����. ��� ����� 1000 �������." )

end

----------------------------------------------------
--擂主公会特殊贸�?�品
----------------------------------------------------
--军火商


function r_talk264()
	Talk( 1, "�������� �������: ������, � �������� �������, � ��������� ������� ����� �������� ����������." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 1 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "�������� �������: �������� ��� ������ ����� ���� ����� �������, ���������� ������ �����, � ��� �������, ��� ������� ������������ � ����� �������." )

	InitGoods(3)
	SaleGoodsData(	0	,	3914	,	150	,	990	,	220	)
	




end

--精密仪器供应商	

function r_talk265()

	InitGoods(3)
	SaleGoodsData(	0	,	3912	,	200	,	855	,	190	)
	


	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end


--稀有金属供应商

function r_talk266()
	Talk( 1, "��������� ������ ��������: ������! � ��������� ������ ��������, ������� ����� ������������ � ���������� ��� �������������. � ���� ��� ��� ��������� ����� ������ ������� ��� �������� � ��������� - ��� �������� �� ��� ������� ����. �� � ���� �������� �������� ������ ������ �������, ���������� ������ �����." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 3 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "������� ��������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "��������� ������ ��������: ��������� ������� ����� ������ ����� �������, ���������� ������ �����, ���� �� ������� ������������ � ����� �������." )


	InitGoods(3)
	SaleGoodsData(	0	,	3913	,	250	,	765	,	170	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end


function m_talk001()

	Talk( 1, "��� ��: ������! � ����������, ������� �� ���������. ���� � ����� ������� ����� ��� �������, � ������ ��� � ���������." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "��������� ���������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "��� ��: ������! � ���� ��� �������� � ����� �������." )

	AddNpcMission	(6305)	--1
	AddNpcMission	(6306)	--2
end


------------------------------------------------------------
-- 夏岛北港-----海港指挥·夏青
------------------------------------------------------------
function b_talk19()

	Talk( 1, "���������: ������! ������ ����� � ����? �����, � ����� ������." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 14 )
	TriggerAction( 1, LuanchBerthList, 14, 3662, 2645, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 14 )
	TriggerAction( 2, RepairBerthList, 14 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 14 )
	TriggerAction( 2, SupplyBerthList, 14 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 14 )
	TriggerAction( 1, SalvageBerthList, 14 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "������, �� � ���� ������ ����, ����������� � ������� ����. ����������, ������� �� ������ 1000 ���." )
	Talk( 5, "������, �� � ��������� ������ ����, ����������� � ������� ����. ����������, ������� 200 �������." )
	Talk( 6, "������, �� � ������ ������ ����, ����������� � ������� ����." )


	------------- 海港指挥·夏青-------巨蟹
	AddNpcMission	(5853)
	AddNpcMission	(5854)


end


------------------------------------------------------------
-- 夏岛南港-----海港指挥·夏云
------------------------------------------------------------
function b_talk20()

	Talk( 1, "��������� �����: ������! ������ ����� � ����? �����, � ����� ������." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 15 )
	TriggerAction( 1, LuanchBerthList, 15, 3324, 3541, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 15 )
	TriggerAction( 2, RepairBerthList, 15 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "�������� �������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 15 )
	TriggerAction( 2, SupplyBerthList, 15 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "��������", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 15 )
	TriggerAction( 1, SalvageBerthList, 15 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "������������ �������", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "������, �� � ���� ��� ������� ��� �� ��� ��������. ����� ��������� � ���� ���� ����� ������ �������!" )
	Talk( 4, "������, �� � ���������� ���� �������, ����������� ������ ������� ����. ���� �������� ��������� 1000 ���." )
	Talk( 5, "������, �� ��� �������� ����� ������������� ������� � ������ ������� ����. � ���� 200 �������." )
	Talk( 6, "������, �� ��������������� ���� �� �������, ������� ������������� � ������ ������� ����. ���� �������� ��������� 1000 ���." )

	------------- 海港指挥·夏云-------巨蟹
	AddNpcMission	(5855)
	AddNpcMission	(5856)


end

-----------黑市商人
function leo_talk10()	

	Talk(1, "�������� ������� �����: �-��-��, � �� ������� �����������... ���� ��������?")
	Text( 1, "���������", JumpPage, 2 )
	Text( 1, "������", BuyPage)
	

	Talk(2,"�������� ������� �����: �-��-��, � �� ������� �����������... ���� ��������?")
	Text(2,"�����-�� ������� ��������� �� ���� ����", SendExchangeData )

	InitExchange()
	DoExchange()

	InitTrade()
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 53, TE_GAMETIME, TT_CYCLETIME, 60, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
end


function rand()	
	local tabunknow = {}
	tabunknow[	1	] =	0088
	tabunknow[	2	] =	0088
	tabunknow[	3	] =	3302
	tabunknow[	4	] =	3303
	tabunknow[	5	] =	3304
	tabunknow[	6	] =	3305
	tabunknow[	7	] =	3306
	tabunknow[	8	] =	3307
	tabunknow[	9	] =	3308
	tabunknow[	10	] =	3309
	tabunknow[	11	] =	3310
	tabunknow[	12	] =	3311
	tabunknow[	13	] =	3312
	tabunknow[	14	] =	3313
	tabunknow[	15	] =	3314
	tabunknow[	16	] =	3315
	tabunknow[	17	] =	3316
	tabunknow[	18	] =	3317
	tabunknow[	19	] =	3318
	tabunknow[	20	] =	3319
	tabunknow[	21	] =	3320
	tabunknow[	22	] =	3321
	tabunknow[	23	] =	3322
	tabunknow[	24	] =	3323
	tabunknow[	25	] =	3324
	tabunknow[	26	] =	3325
	tabunknow[	27	] =	3326
	tabunknow[	28	] =	3327
	tabunknow[	29	] =	3328
	tabunknow[	30	] =	3329
	tabunknow[	31	] =	3330
	tabunknow[	32	] =	3331
	tabunknow[	33	] =	3332
	tabunknow[	34	] =	3333
	tabunknow[	35	] =	3334

	return tabunknow[math.floor(math.random(1,35))]
end
------------------------------------------------------------
--��������� �����
------------------------------------------------------------
function star_talk001()
	Talk( 1, "������! � ��������� ����� ��������� �����. � ��������� ������ �� �������, ������� ������������� � ������ �������. �������, ��� ���� ������� �������� � ����� �����." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 148 , 154, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������, �� � ���� ��� ������� � �������" )
end

function star_talk002()
	Talk( 1, "������! � ��������� ����� ��������� �����. � ��������� ������ �� �������, ������� ������������� � ������ �������. �������, ��� ���� ������� �������� � ����� �����." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 169 , 176, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������, �� � ���� ��� ������� � �������" )
end

function star_talk003()
	Talk( 1, "������! � ��������� ����� ��������� �����. � ��������� ������ �� �������, ������� ������������� � ������ �������. �������, ��� ���� ������� �������� � ����� �����." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 168 , 111, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������, �� � ���� ��� ������� � �������" )
end

function star_talk004()
	Talk( 1, "������! � ��������� ����� ��������� �����. � ��������� ������ �� �������, ������� ������������� � ������ �������. �������, ��� ���� ������� �������� � ����� �����." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 452 , 135, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������, �� � ���� ��� ������� � �������" )
end

function star_talk005()
	Talk( 1, "������! � ��������� ����� ��������� �����. � ��������� ������ �� �������, ������� ������������� � ������ �������. �������, ��� ���� ������� �������� � ����� �����." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 496 , 164, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������, �� � ���� ��� ������� � �������" )
end

function star_talk006()
	Talk( 1, "������! � ��������� ����� ��������� �����. � ��������� ������ �� �������, ������� ������������� � ������ �������. �������, ��� ���� ������� �������� � ����� �����." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 453 , 175, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������, �� � ���� ��� ������� � �������" )
end

function star_talk007()
	Talk( 1, "������! � ��������� ����� ��������� �����. � ��������� ������ �� �������, ������� ������������� � ������ �������. �������, ��� ���� ������� �������� � ����� �����." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3 , 262 , 181, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������, �� � ���� ��� ������� � �������" )
end

function star_talk008()
	Talk( 1, "������! � ��������� ����� ��������� �����. � ��������� ������ �� �������, ������� ������������� � ������ �������. �������, ��� ���� ������� �������� � ����� �����." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 348 , 175, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������, �� � ���� ��� ������� � �������" )
end

function star_talk009()
	Talk( 1, "������! � ��������� ����� ��������� �����. � ��������� ������ �� �������, ������� ������������� � ������ �������. �������, ��� ���� ������� �������� � ����� �����." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 110 , 460, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������, �� � ���� ��� ������� � �������" )
end

function star_talk010()
	Talk( 1, "������! � ��������� ����� ��������� �����. � ��������� ������ �� �������, ������� ������������� � ������ �������. �������, ��� ���� ������� �������� � ����� �����." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 169 , 493, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������, �� � ���� ��� ������� � �������" )
end

function star_talk011()
	Talk( 1, "������! � ��������� ����� ��������� �����. � ��������� ������ �� �������, ������� ������������� � ������ �������. �������, ��� ���� ������� �������� � ����� �����." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 82 , 456, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������, �� � ���� ��� ������� � �������" )
end

function star_talk012()
	Talk( 1, "������! � ��������� ����� ��������� �����. � ��������� ������ �� �������, ������� ������������� � ������ �������. �������, ��� ���� ������� �������� � ����� �����." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 463 , 453, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������, �� � ���� ��� ������� � �������" )
end

function star_talk013()
	Talk( 1, "������! � ��������� ����� ��������� �����. � ��������� ������ �� �������, ������� ������������� � ������ �������. �������, ��� ���� ������� �������� � ����� �����." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 492 , 460, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������, �� � ���� ��� ������� � �������" )
end

function star_talk014()
	Talk( 1, "������! � ��������� ����� ��������� �����. � ��������� ������ �� �������, ������� ������������� � ������ �������. �������, ��� ���� ������� �������� � ����� �����." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 453 , 506, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������, �� � ���� ��� ������� � �������" )
end

function star_talk015()
	Talk( 1, "������! � ��������� ����� ��������� �����. � ��������� ������ �� �������, ������� ������������� � ������ �������. �������, ��� ���� ������� �������� � ����� �����." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 357 , 450, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������, �� � ���� ��� ������� � �������" )
end

function star_talk016()
	Talk( 1, "������! � ��������� ����� ��������� �����. � ��������� ������ �� �������, ������� ������������� � ������ �������. �������, ��� ���� ������� �������� � ����� �����." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 256 , 450, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "����������� � ��������", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "������, �� � ���� ��� ������� � �������" )
end

function roico_talk001()
  Talk( 1, "Navy Frontline Commander: The battle has begun, everyone is a hero, remember what you strive for and work in teams to defeat the enemies! This is the only way to victory!" )
  Text( 1, "Battle Instructor" ,JumpPage, 2)
  --Text( 1, "set Sacred war revival point", SetSpawnPos, "Sacred War")
  Text( 1, "Exchange battle resources", JumpPage, 3)
  Text( 1, "Donate building resources", JumpPage, 4)
  Text( 1, "Use Navy Token", JumpPage, 13)
  --Text( 1, "continue battling", JumpPage, 5)
  Talk( 2, "Target: Destroy enemy base Statue. If you destroy their Ammo warehouse or Granary first, it'll sharply decrease their power. Gathering resources will raise own base defense or exchange for battle materials. Please use the Navy Token wisely to ambush on enemies.")
  Talk( 3, "Navy Frontline Commander: You can salvage useful things from enemies!")
  Text( 3, "Guardian statue boost" ,JumpPage, 6)
  Text( 3, "Random stats boost" ,JumpPage, 7)
  Talk( 4, "Navy Frontline Commander: Donate battle materials can raise statue and defense tower stats, enabling our side to have more power.")
  Text( 4, "Add 20 def and 1 phy resist to Statue" ,JumpPage, 8)
  Text( 4, "Add 25 dmg to Expert Guard Tower" ,JumpPage, 9)
  Text( 4, "SAdd invincibility to Statue for 3 minutes" ,JumpPage, 10)





 InitTrigger()
	TriggerCondition( 1, HasItem, 2859, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2859,25 )
	TriggerAction( 1, GiveItem, 2986, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 6, "Navy Frontline Commander: Give me 25 Eye Patch and I'll give you a ticket that teleports directly back to the Statue!")
	Text( 6, "����������� �����",  MultiTrigger, GetMultiTrigger(), 1)
        Talk(11, "Navy Frontline Commander: When the statue is in danger, you can use the ticket to come back!" )
	Talk( 12, "Navy Frontline Commander: You don't seem to have the item on you, and you need at least one inventory space.")

-- InitTrigger()
--	TriggerCondition( 1, HasItem, 3117, 20 )
--	TriggerAction( 1, TakeItem, 3117,20 )
--	TriggerAction( 1, GetChaName1_guildwar, 1 )
--	TriggerAction( 1, JumpPage, 13 )
--	TriggerFailure( 1, JumpPage, 14)
	Talk( 7, "Navy Frontline Commander: Give me 20 Eye Patch and I'll randomly give you power of a specific stat!")
	Text( 7, "����������� �����", GetChaName1_guildwar, 1)
	Talk( 8, "Navy Frontline Commander: 30 Crystal Ore is needed to raise the statue defense, you can find very rich resource areas on the 2 sides of the island!")
	Text( 8, "I have 30 Crystal Ore", GetChaName2_guildwar, 1)
	Talk( 9, "Pirate Frontline Commander: Statue has no attack of its own and relays on Arrow Tower's protection. You can search the surrounding sea areas and find me 12 Squirting Fish and 12 Fish Bone to raise the Arrow Tower attack by 25 points. ")
	Text( 9, "I have enough materials", GetChaName4_guildwar, 1)
	Talk( 10, "Navy Frontline Commander: I only need 4 Hard Tortoise Shell and 9 Moon Tail Eel (Try looking for the resources around the enemy base) and I can make the Statue invincible for 3 minutes!")
	Text( 10, "I have enough materials", GetChaName3_guildwar, 1)
	Talk( 13, " Pirate Frontline Commander: When you have collected enough [Navy Token], you'll be able to summon monsters to ambush your enemy once, use it wisely!")
	Text( 13, "Use 15 tokens", JumpPage, 14)
	Text( 13, "Use 30 tokens", JumpPage, 15)
	Text( 13, "Use 45 tokens", JumpPage, 16)
	Talk( 14, "Navy Frontline Commander: Use 15 <<Navy Token>>, arrange 3 Navy Ambush members, please select Ambush area!")
	Text( 14, "Enemy Statue surrounding", GetChaName5_guildwar, 1)
	Text( 14, "Enemy armoury surroundings", GetChaName6_guildwar, 1)
	Text( 14, "Enemy Granary surroundings", GetChaName7_guildwar, 1)
	Text( 14, "Own fraction statue surrounding", GetChaName8_guildwar, 1)
	Text( 14, "Own side Ammo Warehouse surroundings", GetChaName9_guildwar, 1)
	Text( 14, "Own side Granary surroundings", GetChaName10_guildwar, 1)
	--Text( 14, "Middle section of the battle field", GetChaName11_guildwar, 1)
	Talk( 15, "Navy Frontline Commander: Use 30 <<Navy Token>>, arrange 7 Navy Ambush members, please select Ambush area! ")
	Text( 15, "Enemy Statue surrounding", GetChaName11_guildwar, 1)
	Text( 15, "Enemy armoury surroundings", GetChaName12_guildwar, 1)
	Text( 15, "Enemy Granary surroundings", GetChaName13_guildwar, 1)
	Text( 15, "Own fraction statue surrounding", GetChaName14_guildwar, 1)
	Text( 15, "Own side Ammo Warehouse surroundings", GetChaName15_guildwar, 1)
	Text( 15, "Own side Granary surroundings", GetChaName16_guildwar, 1)
	--Text( 15, "Middle section of the battle field", GetChaName18_guildwar, 1)
	Talk( 16, "Navy Frontline Commander: Use 45 <<Navy Token>>, arrange 11 Navy Ambush members, please select ambush area!")
	Text( 16, "Enemy Statue surrounding", GetChaName17_guildwar, 1)
	Text( 16, "Enemy armoury surroundings", GetChaName18_guildwar, 1)
	Text( 16, "Enemy Granary surroundings", GetChaName19_guildwar, 1)
	Text( 16, "Own fraction statue surrounding", GetChaName20_guildwar, 1)
	Text( 16, "Own side Ammo Warehouse surroundings", GetChaName21_guildwar, 1)
	Text( 16, "Own side Granary surroundings", GetChaName22_guildwar, 1)

end

function roico_talk002()
Talk( 1, "Pirate Frontline Commander: Destroy, plunder, kill, nothing can stop us, show the enemy what real fear is!" )
  Text( 1, "Battle Instructor" ,JumpPage, 2)
  --Text( 1, "set Sacred war revival point", SetSpawnPos, "Sacred War")
  Text( 1, "Exchange battle resources", JumpPage, 3)
  Text( 1, "Donate building resources", JumpPage, 4)
  Text( 1, "Use Pirate Token", JumpPage, 13)
  --Text( 1, "continue battling", JumpPage, 5)
  Talk( 2, "Target: Destroy the Statue in the enemy's base. If you destroy their armoury and granary first, it will greatly decrease their strength. Minerals obtained from mining can increase the defence attributes of your facilities or exchange for combat items. Using the Pirate Token at the right timing can let the enemy suffer a surprise attack.")
  Talk( 3, "Pirate Frontline Commander: You can search for useful things from your enemies!")
  Text( 3, "Guardian statue boost" ,JumpPage, 6)
  Text( 3, "Random stats boost" ,JumpPage, 7)
  Talk( 4, "Pirate Frontline commander: Donating battle materials can raise the statue and Defense Tower stats, enabling our side to have more power.")
  Text( 4, "Add 20 def and 1 phy resist to Statue" ,JumpPage, 8)
  Text( 4, "Add 25 dmg to Expert Guard Tower" ,JumpPage, 9)
  Text( 4, "Add invincibility to Statue for 3 minutes" ,JumpPage, 10)





 InitTrigger()
	TriggerCondition( 1, HasItem, 2858, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2858,25 )
	TriggerAction( 1, GiveItem, 2986, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 6, "Pirate Frontline Commander: Give me 25 snuff and I'll give you a ticket that teleports you directly back to the statue!")
	Text( 6, "Confirm to exchange",  MultiTrigger, GetMultiTrigger(), 1)
        Talk(11, "Pirate Frontline Commander: When the statue is in danger, you can come back using this ticket!" )
	Talk( 12, "Pirate Frontline Commander: You don't seem to have the item on you. You also need to have at least one space inside your inventory!")

-- InitTrigger()
--	TriggerCondition( 1, HasItem, 3117, 20 )
--	TriggerAction( 1, TakeItem, 3117,20 )
--	TriggerAction( 1, GetChaName1_guildwar, 1 )
--	TriggerAction( 1, JumpPage, 13 )
--	TriggerFailure( 1, JumpPage, 14)
	Talk( 7, "Pirate Frontline Commander: Give me 20 snuff and I will randomly grant you a specific stat power!")
	Text( 7, "Confirm to exchange", GetChaName23_guildwar, 1)
	Talk( 8, "Pirate Frontline Commander: To raise the Statue defense I need 30 Crystal ore. You can find rich resources at both sides of the island!")
	Text( 8, "I have 30 Crystal Ore", GetChaName24_guildwar, 1)
	Talk( 9, "Pirate Frontline Commander: Statue has no attack and relays on Arrow Tower's protection. If you can find 12 Squirting Fish and 12 Fish Bone for me, I can raise the Arrow Tower attack by 25 points!")
	Text( 9, "I have enough materials", GetChaName26_guildwar, 1)
	Talk( 10, "Pirate Frontline Commander: I only need 4 Diving Clam and 9 Tortoise Shell Fragment (Try finding it near the enemy base) to make the Statue invincible for 3 minutes!")
	Text( 10, "I have enough materials", GetChaName25_guildwar, 1)
	Talk( 13, "Pirate Frontline Commander: When you have collected enough [Pirate Tokens], you'll be able to summon monsters to ambush your enemy once, use it wisely!")
	Text( 13, "Use 15 tokens", JumpPage, 14)
	Text( 13, "Use 30 tokens", JumpPage, 15)
	Text( 13, "Use 45 tokens", JumpPage, 16)
	Talk( 14, "Pirate Frontline Commander: Use 15 <<Pirate Token>>, arrange 3 Pirate Ambush members, please select ambush area!")
	Text( 14, "Enemy Statue surrounding", GetChaName27_guildwar, 1)
	Text( 14, "Enemy armoury surroundings", GetChaName28_guildwar, 1)
	Text( 14, "Enemy Granary surroundings", GetChaName29_guildwar, 1)
	Text( 14, "Own fraction statue surrounding", GetChaName30_guildwar, 1)
	Text( 14, "Own side Ammo Warehouse surroundings", GetChaName31_guildwar, 1)
	Text( 14, "Own side Granary surroundings", GetChaName32_guildwar, 1)
	--Text( 14, "Middle section of the battle field", GetChaName11_guildwar, 1)
	Talk( 15, "Pirate Frontline Commander: Use 30 <<Pirate Token>>, arrange 7 Pirate Ambush Members, please select ambush area!")
	Text( 15, "Enemy Statue surrounding", GetChaName33_guildwar, 1)
	Text( 15, "Enemy armoury surroundings", GetChaName34_guildwar, 1)
	Text( 15, "Enemy Granary surroundings", GetChaName35_guildwar, 1)
	Text( 15, "Own fraction statue surrounding", GetChaName36_guildwar, 1)
	Text( 15, "Own side Ammo Warehouse surroundings", GetChaName37_guildwar, 1)
	Text( 15, "Own side Granary surroundings", GetChaName38_guildwar, 1)
	--Text( 15, "Middle section of the battle field", GetChaName18_guildwar, 1)
	Talk( 16, "Pirate Frontline Commander: Use 45 <<Pirate Token>>, arrange 11 Pirate Ambush Members, please select ambush area!")
	Text( 16, "Enemy Statue surrounding", GetChaName39_guildwar, 1)
	Text( 16, "Enemy armoury surroundings", GetChaName40_guildwar, 1)
	Text( 16, "Enemy Granary surroundings", GetChaName41_guildwar, 1)
	Text( 16, "Own fraction statue surrounding", GetChaName42_guildwar, 1)
	Text( 16, "Own side Ammo Warehouse surroundings", GetChaName43_guildwar, 1)
	Text( 16, "Own side Granary surroundings", GetChaName44_guildwar, 1)
end


