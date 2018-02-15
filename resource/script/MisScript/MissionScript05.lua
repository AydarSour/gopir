------------------------------------------------------------
--MissionScript05.lua Created by Robin 2005.05.27.
--
--��������
------------------------------------------------------------
print( "loading MissionScript05.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

----------------------------------------------------------
--							--
--							--
--		��������	 				--
--							--
--							--
----------------------------------------------------------
	-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>��������ʼ
function AreaMission001()

-----------------------------------��ȡ�䳲
	DefineMission( 600, "��������� ������� ���", 600 )
	
	MisBeginTalk( "<t>��� ��������� � ���������: ��������� � ���� ������ � �� ��������� �� ���������.<n><t>�������� <y5 ���� ����� ����>, ��� �� ����������� � ���� �������� ���������, � �� ����������� � ���!<n><t>(���� ����� �� �������� � ��������, ����� � ��������� ������ �����, ���, ��� �� ����� ����������� ��� �� ������)." )
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 600)
	MisBeginCondition(NoRecord, 600)
	MisBeginAction(AddMission, 600)
	MisBeginAction(AddTrigger, 6001, TE_GETITEM, 4085, 5 )
	MisCancelAction(ClearMission, 600)

	MisNeed(MIS_NEED_ITEM, 4085, 5, 10, 5)
		
	MisHelpTalk("<t>�������� 5 ���� ����� ���� � ����� (1544.3134) �������� � ��������� �� �������!")
	MisResultTalk("<t>��-��. �� �������, ��� ����� ��� �������� ����� �� ������ �������� �� ����?")
	MisResultCondition(NoRecord, 600)
	MisResultCondition(HasMission, 600)
	MisResultCondition(HasItem, 4085, 5)
	MisResultAction(TakeItem, 4085, 5)
	MisResultAction(ClearMission, 600)
	MisResultAction(SetRecord, 600)
	MisResultAction(AddExp, 800, 800)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4085 )	
	TriggerAction( 1, AddNextFlag, 600, 10, 5 )
	RegCurTrigger( 6001 )

-----------------------------------����Ұ����
	DefineMission( 601, "����������� ����", 601 )
	
	MisBeginTalk( "<t>� ��� ���... ��� <r����� �����> ���������� �� ����������� � �����������. � ������ ����� � �������, ��� ��� �������� ������ � ��� ���� ���� �� ���� ������.<n><t>�� �� ������ �� ���� ������ �� � ��������.<n><t>�� ��������� �� ���� ��? ������ <r10 ����� ����>. ��� ����� ���� ����� � (1623,139)!" )
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(HasRecord, 600)
	MisBeginCondition(NoMission, 601)
	MisBeginCondition(NoRecord, 601)
	MisBeginAction(AddMission, 601)
	MisBeginAction(AddTrigger, 6011, TE_KILL, 139, 10 )
	MisCancelAction(ClearMission, 601)

	MisNeed(MIS_NEED_KILL, 139, 10, 10, 10)
	
	MisHelpTalk("<t>�� ����� ��� ����� ����� ����?")
	MisResultTalk("<t>��-��-��! ������� ���� ������ �������. ������ ��� ����� ����� ����� �� ���� ��������!")
	MisResultCondition(NoRecord, 601)
	MisResultCondition(HasMission, 601)
	MisResultCondition(HasFlag, 601, 19 )
	MisResultAction(ClearMission, 601)
	MisResultAction(SetRecord, 601)
	MisResultAction(AddExp, 800, 800)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 139 )	
	TriggerAction( 1, AddNextFlag, 601, 10, 10 )
	RegCurTrigger( 6011 )

-----------------------------------��������
	DefineMission( 602, "��������� ���", 602 )
	
	MisBeginTalk( "<t>Ah, I am just about to look for you! For the past 2 days, I have been unable to sleep because of the sounds made by <rOwlie>. Every time I lie down on bed I would hear the \"Hoot\" of the Owlie.<n><t>I am old and I needs sleep. This can't go on, please help me get rid of 10 <rOwlies>. They can be found at (1384, 3065)." )
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(HasRecord, 603)
	MisBeginCondition(NoMission, 602)
	MisBeginCondition(NoRecord, 602)
	MisBeginAction(AddMission, 602)
	MisBeginAction(AddTrigger, 6021, TE_KILL, 224, 10 )
	MisCancelAction(ClearMission, 602)

	MisNeed(MIS_NEED_KILL, 224, 10, 10, 10)
	
	MisHelpTalk("<t>�� ����� ��� ����� <r10 ��������>?")
	MisResultTalk("<t>�������! ������ � ���� ����� ��������.")
	MisResultCondition(NoRecord, 602)
	MisResultCondition(HasMission, 602)
	MisResultCondition(HasFlag, 602, 19 )
	MisResultAction(ClearMission, 602)
	MisResultAction(SetRecord, 602)
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney,285,285)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 224 )	
	TriggerAction( 1, AddNextFlag, 602, 10, 10 )
	RegCurTrigger( 6021 )


-----------------------------------ѧ��èͷӥ
	DefineMission( 603, "������ �������", 603 )
	
	MisBeginTalk( "<t>� ����� ���� �������� �� ����, �� ������� ��� �� �������� � ������ ���� �����������, �� � �������� ��� �� ���� �� ��� � �����.<n><t>� ����� ��� ���� ������ �� ������ � ������ �����. ��-�� ������ ����� � ������� ����� � ����� ������. ��������� ��� ��� �����, ����� ��������� ��� ��� � ��� ����� ������� �����." )
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(NoMission, 603)
	MisBeginCondition(NoRecord, 603)
	MisBeginAction(AddMission, 603)
	MisBeginAction(AddTrigger, 6031, TE_GETITEM, 4432, 5 )
	MisCancelAction(ClearMission, 603)

	MisNeed(MIS_NEED_ITEM, 4432, 5, 10, 5)
	
	MisHelpTalk("<t>��������� ��� 5 ������!<n><t>�� ����� �������� ������ <r���������> � �������� � ����� (632,2533).")
	MisResultTalk("<t>��... ��� ����� �� ��� �� ���������� �� ������ ������� ���... ������� � ����� ����?")
	MisResultCondition(NoRecord, 603)
	MisResultCondition(HasMission, 603)
	MisResultCondition(HasItem, 4432, 5)
	MisResultAction(TakeItem, 4432, 5 )
	MisResultAction(ClearMission, 603)
	MisResultAction(SetRecord, 603)
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney,571,571)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4432 )	
	TriggerAction( 1, AddNextFlag, 603, 10, 5 )
	RegCurTrigger( 6031 )

-----------------------------------��թ��èͷӥ
	DefineMission( 604, "������ ����", 604 )
	
	MisBeginTalk( "<t>�� ��� ����� � ����� ����� � ���� �� ����� ����, ��� ����� �������� <r����> � ������� � ���� <y��������>.<n><t>� �� ����� �������� ���� �����, �� ����� �� �� �� ��� �������� ����������� ��������?<n><t>(<y��������� ��������> ����� ����� � <b������� ������> � ��������(1268,3060)." )
	MisBeginCondition(LvCheck, ">", 21 )
	MisBeginCondition(NoMission, 604)
	MisBeginCondition(NoRecord, 604)
	MisBeginAction(AddMission, 604)
	MisBeginAction(AddTrigger, 6041, TE_GETITEM, 4086, 5 )
	MisCancelAction(ClearMission, 604)

	MisNeed(MIS_NEED_ITEM, 4086, 5, 10, 5)
	
	MisHelpTalk("<t>� �� �������� ���� �� ������� ��� �����!")
	MisResultTalk("<t>������� ���! ��������� ��� � ������� ����� � ����� ��� �� ��� �� ����������!")
	MisResultCondition(NoRecord, 604)
	MisResultCondition(HasMission, 604)
	MisResultCondition(HasItem, 4086, 5)
	MisResultAction(TakeItem, 4086, 5 )
	MisResultAction(ClearMission, 604)
	MisResultAction(SetRecord, 604)
	MisResultAction(AddExp, 1100, 1100)
	MisResultAction(AddMoney,300,300)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4086 )	
	TriggerAction( 1, AddNextFlag, 604, 10, 5 )
	RegCurTrigger( 6041 )

-----------------------------------����β���ջ�
	DefineMission( 605, "��������� ������� �������", 605 )
	
	MisBeginTalk( "<t>���������� ���, ��� ��������! ������� ����������, ����� � ��������, ��� � ���� �� ���...<n><t>��� ������ � ������� � �������, � ���� ����� ������... ��� ����� ���������... ��������� ��� <y5 �������� ������� �������>, � � ��� ����� ����� ������� ����������� � ����." )
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 605)
	MisBeginCondition(NoRecord, 605)
	MisBeginAction(AddMission, 605)
	MisBeginAction(AddTrigger, 6051, TE_GETITEM, 4433, 5 )
	MisCancelAction(ClearMission, 605)

	MisNeed(MIS_NEED_ITEM, 4433, 5, 10, 5)
	
	MisHelpTalk("<t>�� �� ������ ��� ��������� <b�������� ������� �����>? ������������� � ������� � ����� (1251,2962).")
	MisResultTalk("<t>��... ������� ��� ��������! �������� ������� �� ����� �����������! ")
	MisResultCondition(NoRecord, 605)
	MisResultCondition(HasMission, 605)
	MisResultCondition(HasItem, 4433, 5)
	MisResultAction(TakeItem, 4433, 5 )
	MisResultAction(ClearMission, 605)
	MisResultAction(SetRecord, 605)
	MisResultAction(AddExp, 1300, 1300)
	MisResultAction(AddMoney,632,632)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4433 )	
	TriggerAction( 1, AddNextFlag, 605, 10, 5 )
	RegCurTrigger( 6051 )

-----------------------------------������ķ���
	DefineMission( 606, "������������ � ��������� �����", 606 )
	
	MisBeginTalk( "<t>� ������� ���� �� ���� �� �����, ����� ������ ���� � ������ � ���� �� ����� ����� ����� <r��������� ������ �������>. ��� ���������� �� � ��� �����.<n><t>� �� ���� �� �������� �������������� ����� �������� ����� �����. ������ <r10 ��������� ������ �������> � ��������� �� ����. ��� ����� ���� � �����(1384,3065)." )
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(HasRecord, 605)
	MisBeginCondition(NoMission, 606)
	MisBeginCondition(NoRecord, 606)
	MisBeginAction(AddMission, 606)
	MisBeginAction(AddTrigger, 6061, TE_KILL, 264, 10 )
	MisCancelAction(ClearMission, 606)

	MisNeed(MIS_NEED_KILL, 264, 10, 10, 10)
	
	MisHelpTalk("<t>� ���� �� ��� � ��� ��� ���������� ����, �� �� ��� �� �� ��������?")
	MisResultTalk("<t>��! �� �������� �� ��� � �� ������. ������ ��� ������ �� ������� � ����� ����!")
	MisResultCondition(NoRecord, 606)
	MisResultCondition(HasMission, 606)
	MisResultCondition(HasFlag, 606, 19 )
	MisResultAction(ClearMission, 606)
	MisResultAction(SetRecord, 606)
	MisCancelAction(ClearMission, 607)
	MisResultAction(AddExp, 1300, 1300)
	MisResultAction(AddMoney,316,316)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 264 )	
	TriggerAction( 1, AddNextFlag, 606, 10, 10 )
	RegCurTrigger( 6061 )

-----------------------------------�����ж�
	DefineMission( 607, "������ ������!", 607 )
	
	MisBeginTalk( "<t>���, ����! �� ����������? ��� ��� ������... ��! ������ ������ ������������...����...����.*��-��-��* ��� ������ ������! � ������ ������?! ���  ��  ������, � ����� (1414,2896), ������ <r����-�����>.<n><t>������ <r10 ������-�������> � ������� ������ ������." )
	MisBeginCondition(HasRecord, 608)
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 607)
	MisBeginCondition(NoRecord, 607)
	MisBeginAction(AddMission, 607)
	MisBeginAction(AddTrigger, 6071, TE_KILL, 295, 10 )
	MisCancelAction(ClearMission, 607)

	MisNeed(MIS_NEED_KILL, 295, 10, 10, 10)
	
	MisHelpTalk("<t>�� ������ �� �� ����� <r�����-������>! � ��������� ���!")
	MisResultTalk("<t>����� ������!")
	MisResultCondition(NoRecord, 607)
	MisResultCondition(HasMission, 607)
	MisResultCondition(HasFlag, 607, 19 )
	MisResultAction(ClearMission, 607)
	MisResultAction(SetRecord, 607)
	MisResultAction(AddExp, 1500, 1500)
	MisResultAction(AddMoney,332,332)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 295 )	
	TriggerAction( 1, AddNextFlag, 607, 10, 10 )
	RegCurTrigger( 6071 )

-----------------------------------��������
	DefineMission( 608, "��������� �����", 608 )
	
	MisBeginTalk( "<t>� �����, ��� �������� � ���� <b�����-������> �� �� ����� ������ ���������������.<n><t>� ���� �������� ����������� �������������� �� ����� ������� � ������, � ��� �� �� ��� ����� ���� �������.<n><t>��������� ��� <y5 ��������� ������> � <r������-�������>, ��� �� � ���� �� ����������. " )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 608)
	MisBeginCondition(NoRecord, 608)
	MisBeginAction(AddMission, 608)
	MisBeginAction(AddTrigger, 6081, TE_GETITEM, 4460, 5 )
	MisCancelAction(ClearMission, 608)

	MisNeed(MIS_NEED_ITEM, 4460, 5, 10, 5)
	
	MisHelpTalk("<t>��� ����� ������������ ���������� ��������� �����. �� �� ��� ��� ��� �� ��������, �� ���!")
	MisResultTalk("<t>� �����! ��� ��������� � ���� ������ ���� ������ �������!")
	MisResultCondition(NoRecord, 608)
	MisResultCondition(HasMission, 608)
	MisResultCondition(HasItem, 4460, 5)
	MisResultAction(TakeItem, 4460, 5 )
	MisResultAction(ClearMission, 608)
	MisResultAction(SetRecord, 608)
	MisResultAction(AddExp, 1500, 1500)
	MisResultAction(AddMoney,664,664)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4460 )	
	TriggerAction( 1, AddNextFlag, 608, 10, 5 )
	RegCurTrigger( 6081 )

-----------------------------------��ʧ�Ľ��
	DefineMission( 609, "��������� ������� ������", 609 )
	
	MisBeginTalk( "<t>���� ���, �� ������ ����� ����! � ����� ������� ��������! �� ��� ���������, ���� �������� <r�������> � ������ �� ������!<n><t>�� �� ����� �� ������� � ������� ��� <y������� � ��������> � ��� � �������?" )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 609)
	MisBeginCondition(NoRecord, 609)
	MisBeginAction(AddMission, 609)
	MisBeginAction(AddTrigger, 6091, TE_GETITEM, 4087, 1 )
	MisCancelAction(ClearMission, 609)

	MisNeed(MIS_NEED_ITEM, 4087, 1, 10, 1)
	
	MisHelpTalk("<t>������� ��� ��������! �� ������� ��� ������ � � ����� ������ ���������� ���� ��������!")
	MisResultTalk("<t>��, �� ����� � ����� ��������. � ������, ��� ������������, �� ���! ��� �� ��� �� ������...")
	MisResultCondition(NoRecord, 609)
	MisResultCondition(HasMission, 609)
	MisResultCondition(HasItem, 4087, 1)
	MisResultAction(TakeItem, 4087, 1 )
	MisResultAction(ClearMission, 609)
	MisResultAction(SetRecord, 609)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,1394,1394)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4087 )	
	TriggerAction( 1, AddNextFlag, 609, 10, 1 )
	RegCurTrigger( 6091 )


-----------------------------------�ɶ��ɽ��
	DefineMission( 610, "������� �������", 610 )
	
	MisBeginTalk( "<t>�� ����! ��� � ��������� ����� ������� ����������� <r�������>. ��� ������ � ������� ���� � ������.<n><t>������ <r10 ��������>. �������� ������� �������." )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 610)
	MisBeginCondition(NoRecord, 610)
	MisBeginAction(AddMission, 610)
	MisBeginAction(AddTrigger, 6101, TE_KILL, 93, 10 )
	MisCancelAction(ClearMission, 610)

	MisNeed(MIS_NEED_KILL, 93, 10, 10, 10)
	
	MisHelpTalk("<t>������ 10 �������� � ��������� ����!")
	MisResultTalk("<t>��� ������ ��� ��� ������!")
	MisResultCondition(NoRecord, 610)
	MisResultCondition(HasMission, 610)
	MisResultCondition(HasFlag, 610, 19 )
	MisResultAction(ClearMission, 610)
	MisResultAction(SetRecord, 610)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,348,348)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 93 )	
	TriggerAction( 1, AddNextFlag, 610, 10, 10 )
	RegCurTrigger( 6101 )


-----------------------------------���������
	DefineMission( 611, "�������� �������", 611 )
	
	MisBeginTalk( "<t>����� �����, ��� ������ ��� ����� ������, ��������� ��������� ��� ������. � �� ���� �� ����� ����� � �� ���� � ��� �������������.<n><t>��������� ��� <y2 ������ ���� �������>, ��� �� � ������������� � �� �������������. ����� �����, ��� ������ ����� ����� � �����(1414,2898)." )
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 611)
	MisBeginCondition(NoRecord, 611)
	MisBeginAction(AddMission, 611)
	MisBeginAction(AddTrigger, 6111, TE_GETITEM, 4088, 2 )
	MisCancelAction(ClearMission, 611)

	MisNeed(MIS_NEED_ITEM, 4088, 2, 10, 2)
	
	MisHelpTalk("<t>��������� ��� �������������� � ������������� �������.")
	MisResultTalk("<t>������� ��� �������! ������ � ����. �� ������������� ����������.")
	MisResultCondition(NoRecord, 611)
	MisResultCondition(HasMission, 611)
	MisResultCondition(HasItem, 4088, 2)
	MisResultAction(TakeItem, 4088, 2 )
	MisResultAction(ClearMission, 611)
	MisResultAction(SetRecord, 611)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,730,730)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4088 )	
	TriggerAction( 1, AddNextFlag, 611, 10, 2 )
	RegCurTrigger( 6111 )

-----------------------------------��������
	DefineMission( 612, "��������� �������", 612 )
	
	MisBeginTalk( "<t>������ ������ ��������� � ����� � ������ �� �������. � ������� ���� �������� ���� � �� ����� ������������� �� �����. ������ <r10 �������>. �������� ��� ���������� �� ���� �������. ����� �����, ��� ��� ����� ����� � ����� (1414,2896)." )
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 612)
	MisBeginCondition(NoRecord, 612)
	MisBeginAction(AddMission, 612)
	MisBeginAction(AddTrigger, 6121, TE_KILL, 85, 20 )
	MisCancelAction(ClearMission, 612)

	MisNeed(MIS_NEED_KILL, 85, 20, 10, 20)
	
	MisHelpTalk("<t>�� ��� �� ����� �������.")
	MisResultTalk("<t>����� ������! ������� ��� �������� �� ������!")
	MisResultCondition(NoRecord, 612)
	MisResultCondition(HasMission, 612)
	MisResultCondition(HasFlag, 612, 29 )
	MisResultAction(ClearMission, 612)
	MisResultAction(SetRecord, 612)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,365,365)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 85 )	
	TriggerAction( 1, AddNextFlag, 612, 10, 20 )
	RegCurTrigger( 6121 )


-----------------------------------�������
	DefineMission( 613, "����������", 613 )
	
	MisBeginTalk( "<t>��, ����! �� ������ �� �����! ����� ������������� ������� �������� �����!<n><t>��� ������� <r�������-��������> ������� ����!<n><t>�� ��������?����� �� ������� �����.��� ���� �� ����� (1117, 2923)." )
	MisBeginCondition(HasRecord, 614 )
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 613)
	MisBeginCondition(NoRecord, 613)
	MisBeginAction(AddMission, 613)
	MisBeginAction(AddTrigger, 6131, TE_KILL, 76, 10 )
	MisCancelAction(ClearMission, 613)

	MisNeed(MIS_NEED_KILL, 76, 10, 10, 10)
	
	MisHelpTalk("<t>� ������ �� �� ������� ������� � ��������? ")
	MisResultTalk("<t>����� ������! ������� �������! ��� ���� �������")
	MisResultCondition(NoRecord, 613)
	MisResultCondition(HasMission, 613)
	MisResultCondition(HasFlag, 613, 19 )
	MisResultAction(ClearMission, 613)
	MisResultAction(SetRecord, 613)
	MisResultAction(AddExp, 2300, 2300)
	MisResultAction(AddMoney,382,382)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 76 )	
	TriggerAction( 1, AddNextFlag, 613, 10, 10 )
	RegCurTrigger( 6131 )

-----------------------------------ȭ������
	DefineMission( 614, "���������� ��������", 614 )
	
	MisBeginTalk( "<t>����, �� ������ ��� ������? � ����� ����� ����� ���� �������� � �� ����� � ������� <y���������� ��������>.<n><t>�� � ��� �� ����� �������� ��, ��� ��� � ����, � �� ����� ���������� ������ ���� <r�������-�������> � ������� � ����� (1117,2923). �������� ���������� ���!" )
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 614)
	MisBeginCondition(NoRecord, 614)
	MisBeginAction(AddMission, 614)
	MisBeginAction(AddTrigger, 6141, TE_GETITEM, 4435, 1 )
	MisCancelAction(ClearMission, 614)

	MisNeed(MIS_NEED_ITEM, 4435, 1, 10, 1)
	
	MisHelpTalk("<t>�� ������ ��������� ����� ������� ���� ��������?!")
	MisResultTalk("<t>������� ���. ��� ������ ����� ����� ���������� ����������� ��������� ���.")
	MisResultCondition(NoRecord, 614)
	MisResultCondition(HasMission, 614)
	MisResultCondition(HasItem, 4435, 1)
	MisResultAction(TakeItem, 4435, 1 )
	MisResultAction(ClearMission, 614)
	MisResultAction(SetRecord, 614)
	MisResultAction(AddExp, 2300, 2300)
	MisResultAction(AddMoney,382,382)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4435 )	
	TriggerAction( 1, AddNextFlag, 614, 10, 1 )
	RegCurTrigger( 6141 )

-----------------------------------��ԭ�������
	DefineMission( 615, "�������� �������� ��������", 615 )
	
	MisBeginTalk( "<t>� �������� <r�������� �������� ��������>! ��� ���� ����������, � �� ���� �������� �� ���� �������. �������� ���� ���������� �� ��� ��� ������������� ����� �������� � ���� �� ��� ���� � �� ������ �� �� ����� �������. ����� ��������� �������� ������ �� ������ ������������ �� ���� �����!<n><t>������ <r10 �������� �������� �������>. ��� ������� ��� ���� ����� � �����(1198,3136), �� ��� ��� ��� ����� �����������, ��� ������ ����� ��� ���!" )
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 615)
	MisBeginCondition(NoRecord, 615)
	MisBeginAction(AddMission, 615)
	MisBeginAction(AddTrigger, 6151, TE_KILL, 135, 10 )
	MisCancelAction(ClearMission, 615)

	MisNeed(MIS_NEED_KILL, 135, 10, 10, 10)
	
	MisHelpTalk("<t>� ����! �� ��� ������������ ��� ���, � �������� ��, ��� ��� ����� ��������!")
	MisResultTalk("<t>�� �� �����?! ������� ���!")
	MisResultCondition(NoRecord, 615)
	MisResultCondition(HasMission, 615)
	MisResultCondition(HasFlag, 615, 19 )
	MisResultAction(ClearMission, 615)
	MisResultAction(SetRecord, 615)
	MisResultAction(AddExp, 2600, 2600)
	MisResultAction(AddMoney,400,400)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 135 )	
	TriggerAction( 1, AddNextFlag, 615, 10, 10 )
	RegCurTrigger( 6151 )

-----------------------------------͵�Թ���
	DefineMission( 616, "���������� ��������� ����", 616 )
	
	MisBeginTalk( "<t>�� ����, ��������� � �������� ��� ������! ���� �� <b��������� ����> ����� ������� � ���� ���!<n><t>��� �� ����� � �� ���� ��� ���������� � �������� ���������.<n><t>����� �� �� ������� � ������� � �����(1198,3136) , ����� �� ���� ������� ��� ���� � �������� ���, � �� ������ ������� ����� ����." )
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 616)
	MisBeginCondition(NoRecord, 616)
	MisBeginAction(AddMission, 616)
	MisBeginAction(AddTrigger, 6161, TE_GETITEM, 4089, 10 )
	MisCancelAction(ClearMission, 616)

	MisNeed(MIS_NEED_ITEM, 4089, 10, 10, 10)
	
	MisHelpTalk("<t>�� ��� �� ����� ���� �������. ����� � ������� ��.")
	MisResultTalk("<t>��-��-��! � ���������! ��� ���� �����!")
	MisResultCondition(NoRecord, 616)
	MisResultCondition(HasMission, 616)
	MisResultCondition(HasItem, 4089, 10)
	MisResultAction(TakeItem, 4089, 10 )
	MisResultAction(ClearMission, 616)
	MisResultAction(SetRecord, 616)
	MisResultAction(AddExp, 2600, 2600)
	MisResultAction(AddMoney,400,400)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4089 )	
	TriggerAction( 1, AddNextFlag, 616, 10, 10 )
	RegCurTrigger( 6161 )

-----------------------------------��˽���
	DefineMission( 617, "����������� ���������� ��������", 617 )
	
	MisBeginTalk( "<t>� ��������� ����� � ���� ���������� ��������� ���������� ��������. ��� ����� ���������� ����, ���� ��� ���������, �� � ���� ����� ��� � ����������.<n><t>��������� ��� <y5 �������� ���������� ��������>, ��� �� � ���� ���������� �� �� �������. ���������� ������ � ������� ������� �� �����.<n><t>� ������� �� ������� � �������� � �����(1198,3116), �� ���� ������ ��� ��������� �� ���." )
	MisBeginCondition(HasRecord, 616)
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 617)
	MisBeginCondition(NoRecord, 617)
	MisBeginAction(AddMission, 617)
	MisBeginAction(AddTrigger, 6171, TE_GETITEM, 4465, 5 )
	MisCancelAction(ClearMission, 617)

	MisNeed(MIS_NEED_ITEM, 4465, 5, 10, 5)
	
	MisHelpTalk("<t>� �������� ��� �� ��� �� ������ �������!")
	MisResultTalk("<t>�� �������� �� ��� �����, ������� ���! ��� ���� ����� �������!")
	MisResultCondition(NoRecord, 617)
	MisResultCondition(HasMission, 617)
	MisResultCondition(HasItem, 4465, 5)
	MisResultAction(TakeItem, 4465, 5 )
	MisResultAction(ClearMission, 617)
	MisResultAction(SetRecord, 617)
	MisResultAction(AddExp, 3000, 3000)
	MisResultAction(AddMoney,835,835)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4465 )	
	TriggerAction( 1, AddNextFlag, 617, 10, 5 )
	RegCurTrigger( 6171 )

-----------------------------------а�������
	DefineMission( 618, "������� ���������", 618 )
	
	MisBeginTalk( "<t>��-��! ��� ����, ��������� ��� ���������� ��� ��� �����. ������� � ����� ����� ���������, � � ���� ������������ ��� �� ��� ����� <b�������>.<n><t>�� ��� �� ������� ������ ����������� ��� ���������� ������. ��������� ��� <y10 ��������� ������ ������>, ��� �� � ���� �������� ���� �����.<n><t>����������� ��� ������� �� ������� �������� ���� <r��������� ������> � ����� �������� (910,2971).")
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 618)
	MisBeginCondition(NoRecord, 618)
	MisBeginAction(AddMission, 618)
	MisBeginAction(AddTrigger, 6181, TE_GETITEM, 4443, 10 )
	MisCancelAction(ClearMission, 618)

	MisNeed(MIS_NEED_ITEM, 4443, 10, 10, 10)
	
	MisHelpTalk("<t>�� ����� �� ���� ����� � ������ ����� � �������� ��� ������ �������!")
	MisResultTalk("<t>�������! �� ������ ������� <b�������>!")
	MisResultCondition(NoRecord, 618)
	MisResultCondition(HasMission, 618)
	MisResultCondition(HasItem, 4443, 10)
	MisResultAction(TakeItem, 4443, 10 )
	MisResultAction(ClearMission, 618)
	MisResultAction(SetRecord, 618)
	MisResultAction(AddExp, 3000, 3000)
	MisResultAction(AddMoney,835,835)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4443 )	
	TriggerAction( 1, AddNextFlag, 618, 10, 10 )
	RegCurTrigger( 6181 )

-----------------------------------Ұ�������
	DefineMission( 619, "���� ������������� ������", 619 )
	
	MisBeginTalk( "<t>��! � ������ �������� ���� <r�������� �������>. ��� ������ �������� ���� ���� �������������!<n><t>��� ����� ������� �� ������, � ������ ������ �������� �� ����� �����.<n><t>������������� � �����(910,2971) �������� � ������ <r10 �������� �������>. ��� ������ ��������� �� ������!")
	MisBeginCondition(HasRecord, 618)
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 619)
	MisBeginCondition(NoMission, 620)
	MisBeginCondition(NoRecord, 619)
	MisBeginAction(AddMission, 619)
	MisBeginAction(AddTrigger, 6191, TE_KILL, 64, 10 )
	MisCancelAction(ClearMission, 619)

	MisNeed(MIS_NEED_KILL, 64, 10, 10, 10)
	
	MisHelpTalk("<t>������ �� ��� ��� ������ �������� �� �����!")
	MisResultTalk("<t>��! �������, �� ��������� ����� � ���� ����� ����� ���� � �����!")
	MisResultCondition(NoRecord, 619)
	MisResultCondition(HasMission, 619)
	MisResultCondition(HasFlag, 619, 19 )
	MisResultAction(ClearMission, 619)
	MisResultAction(SetRecord, 619)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 64 )	
	TriggerAction( 1, AddNextFlag, 619, 10, 10 )
	RegCurTrigger( 6191 )

-----------------------------------��սҰ��
	DefineMission( 620, "����� ������", 620 )
	
	MisBeginTalk( "<t>������! �� ������� �������� � ���? ����� �� �� ������ ������������������ ���� ���� ������� �������?<n><t>������?! �� �������! � ���� ��� ��� ���� ������� ��� �����, ���� ��� ��������� �� � ��������...<n><t>�� ��� ���, ��� �� �������� ���� ���� ��� ���� ����������� � �����(911,2973) � ����� <r5 �������� �������>. ��� ������ �������� ���� �������, �� �������� ��� � ��� ����� ���������� ��� ���, ��� �����.")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 620)
	MisBeginCondition(NoMission, 619)
	MisBeginCondition(NoRecord, 620)
	MisBeginAction(AddMission, 620)
	MisBeginAction(AddTrigger, 6201, TE_KILL, 64, 5 )
	MisCancelAction(ClearMission, 620)

	MisNeed(MIS_NEED_KILL, 64, 5, 10, 5)
	
	MisHelpTalk("<t>���... ��� ��� �� ���������� ���� ��� �����, ���� ������ ��� �������� ��� ��������!")
	MisResultTalk("<t>������, ��� ����!")
	MisResultCondition(NoRecord, 620)
	MisResultCondition(HasMission, 620)
	MisResultCondition(HasFlag, 620, 14 )
	MisResultAction(ClearMission, 620)
	MisResultAction(SetRecord, 620)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 64 )	
	TriggerAction( 1, AddNextFlag, 620, 10, 5 )
	RegCurTrigger( 6201 )

-----------------------------------����ҩ��
	DefineMission( 621, "������� �����", 621 )
	
	MisBeginTalk( "<t>�� ����, � ������� ��������� ������� ���� �� ���� ����.<n><t>��� ����� ����� ����� ���.<n><t>� ����� ���... ��������� ��� � ������ ��������(1360,2683) <b6 ������ ����>.")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 621)
	MisBeginCondition(NoRecord, 621)
	MisBeginAction(AddMission, 621)
	MisBeginAction(AddTrigger, 6211, TE_GETITEM, 4090, 6 )
	MisCancelAction(ClearMission, 621)

	MisNeed(MIS_NEED_ITEM, 4090, 6, 10, 6)
	
	MisHelpTalk("<t>�� ��� �������� ��� ��� � ������? ��� ���� �� �� ����?!")
	MisResultTalk("<t>�������! �� ���� ������!")
	MisResultCondition(NoRecord, 621)
	MisResultCondition(HasMission, 621)
	MisResultCondition(HasItem, 4090, 6)
	MisResultAction(TakeItem, 4090, 6 )
	MisResultAction(ClearMission, 621)
	MisResultAction(SetRecord, 621)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4090 )	
	TriggerAction( 1, AddNextFlag, 621, 10, 6 )
	RegCurTrigger( 6211 )

-----------------------------------��ԭ¹������
	DefineMission( 622, "������ �������� ����", 622 )
	
	MisBeginTalk( "<t>� �� ���� �� ��� ������ ������ <r������� ����> �������� ����� ���������� � ������ � ��� ��� ������ �������� ��������������.<n><t>��������� ��� <y5������� ������� �����>, ��� �� � �� ���� �������� � �������� ������� �����. �������� ��� ������� ����� � ��� ������� � ������ ������ ������� �����.<n><t>��� ������� ���� ������� � �������� � �����(1360,2683).")
	MisBeginCondition(LvCheck, ">", 30 )
	MisBeginCondition(NoMission, 622)
	MisBeginCondition(NoRecord, 622)
	MisBeginAction(AddMission, 622)
	MisBeginAction(AddTrigger, 6221, TE_GETITEM, 4372, 5 )
	MisCancelAction(ClearMission, 622)

	MisNeed(MIS_NEED_ITEM, 4372, 5, 10, 5)
	
	MisHelpTalk("<t>�� ��� �� ������ � ������� �����? �� �� ������� ����������� � ��� �� ����?")
	MisResultTalk("<t>� ��������� �������� ������ ������� �����, ������� �� ��� ��������, � � �� ��������� �� ����� �������. �������� ������ �� � �� �������...")
	MisResultCondition(NoRecord, 622)
	MisResultCondition(HasMission, 622)
	MisResultCondition(HasItem, 4372, 5)
	MisResultAction(TakeItem, 4372, 5 )
	MisResultAction(ClearMission, 622)
	MisResultAction(SetRecord, 622)
	MisResultAction(AddExp, 3800, 3800)
	MisResultAction(AddMoney,863,863)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4372 )	
	TriggerAction( 1, AddNextFlag, 622, 10, 5 )
	RegCurTrigger( 6221 )

-----------------------------------¹Ƥ����
	DefineMission( 623, "������ �� ������� �����", 623 )
	
	MisBeginTalk( "<t>�� �������, � ������ ��� �������, �� ��� �������� ���������� ����� ����� ��������� �� ������� ׸����� �����!<n><t>� ���� ���� ����� �� ����� ����.<n><t>��������� ��� <y5 ������������ ������� ����>. ������� ����� �� ������� ����� � ����� ��������(1360,2683).")
	MisBeginCondition(LvCheck, ">", 30 )
	MisBeginCondition(NoMission, 623)
	MisBeginCondition(NoRecord, 623)
	MisBeginAction(AddMission, 623)
	MisBeginAction(AddTrigger, 6231, TE_GETITEM, 4091, 5 )
	MisCancelAction(ClearMission, 623)

	MisNeed(MIS_NEED_ITEM, 4091, 5, 10, 5)
	
	MisHelpTalk("<t>����� � ��������� ��� ������� 5 ������������ ������� �����!")
	MisResultTalk("<t>��-��! �� ������������� �����, � �� ���������!")
	MisResultCondition(NoRecord, 623)
	MisResultCondition(HasMission, 623)
	MisResultCondition(HasItem, 4091, 5)
	MisResultAction(TakeItem, 4091, 5 )
	MisResultAction(ClearMission, 623)
	MisResultAction(SetRecord, 623)
	MisResultAction(AddExp, 3800, 3800)
	MisResultAction(AddMoney,863,863)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4091 )	
	TriggerAction( 1, AddNextFlag, 623, 10, 5 )
	RegCurTrigger( 6231 )

-----------------------------------ѩ��èͷӥ
	DefineMission( 624, "����� �������", 624 )
	
	MisBeginTalk( "<t>� �������� <r����� ��������>! ��� ���� ���� �����, � �� ����� � ���� ����� ������!<n><t>� ����� � �� ���� ��� ��� � ����� ������������! ���� �� �� ������ ������ ���, �� ������ <r5 ����� ��������> � �����(1360,2683). � ���� ����� ��� ���������� ���� �� ��� ��������.")
	MisBeginCondition(LvCheck, ">", 31 )
	MisBeginCondition(NoMission, 624)
	MisBeginCondition(NoRecord, 624)
	MisBeginAction(AddMission, 624)
	MisBeginAction(AddTrigger, 6241, TE_KILL, 225, 5 )
	MisCancelAction(ClearMission, 624)

	MisNeed(MIS_NEED_KILL, 225, 5, 10, 5)
	
	MisHelpTalk("<t>� ����� ����� � ���.")
	MisResultTalk("<t>������� �������! ������ ����� ������� ���� � ���������.")
	MisResultCondition(NoRecord, 624)
	MisResultCondition(HasMission, 624)
	MisResultCondition(HasFlag, 624, 14 )
	MisResultAction(ClearMission, 624)
	MisResultAction(SetRecord, 624)
	MisResultAction(AddExp, 4300, 4300)
	MisResultAction(AddMoney,438,438)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 225 )	
	TriggerAction( 1, AddNextFlag, 624, 10, 5 )
	RegCurTrigger( 6241 )

-----------------------------------������Ϊ
	DefineMission( 625, "�����", 625 )
	
	MisBeginTalk( "<t>� ����� ��� ������ ���. ��� ������, ��� �� ������ �� ���! � ������� ���� ������ � �������� ��-�� ����... �� �� ��� ��-�� <r����� ��������>. ��� ��������� ��� ������, �������� � ���������� ���, �����, ��� �� � ��� �� ������, ������� � ���� � ������.<n><t>�������� �� � � ���� �������������� ����, ��� �� ���������, ��������� ��� <y5 ������ ������>. �� ������� ����� �� � ������� � �����(1360,2683). ��������, �� ������ ���������, ��� ������. ����� ���.")
	MisBeginCondition(LvCheck, ">", 31 )
	MisBeginCondition(HasRecord, 621)
	MisBeginCondition(NoMission, 625)
	MisBeginCondition(NoRecord, 625)
	MisBeginAction(AddMission, 625)
	MisBeginAction(AddTrigger, 6251, TE_GETITEM, 4451, 5 )
	MisCancelAction(ClearMission, 625)

	MisNeed(MIS_NEED_ITEM, 4451, 5, 10, 5)
	
	MisHelpTalk("<t>������ ����� � ��������� ��� �������������� ���� �����!")
	MisResultTalk("<t>��-��-��! �� ��������� �� ����! ������� ����. ��� ���� �������!")
	MisResultCondition(NoRecord, 625)
	MisResultCondition(HasMission, 625)
	MisResultCondition(HasItem, 4451, 5)
	MisResultAction(TakeItem, 4451, 5 )
	MisResultAction(ClearMission, 625)
	MisResultAction(SetRecord, 625)
	MisResultAction(AddExp, 4300, 4300)
	MisResultAction(AddMoney,877,877)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4451 )	
	TriggerAction( 1, AddNextFlag, 625, 10, 5 )
	RegCurTrigger( 6251 )

-----------------------------------�����ԭ��
	DefineMission( 626, "������ �� ������", 626 )
	
	MisBeginTalk( "<t><r������� ����> ��� �������� ��������, � �� ����� �� ����� ����� �������� � �������� ��������� � ����� �����!<n><t>� �������� ��������� ��� ������ �������� <r�������� �����> �������� �� ����� �������.<n><t>������ � �����(1143,2705) <r5 ������� ������> � ��� ����� �� ������� ���������� ����� �������� �����.<n><t>������ ���������, ��� ��� ����� �������� �����.")
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 626)
	MisBeginCondition(NoRecord, 626)
	MisBeginAction(AddMission, 626)
	MisBeginAction(AddTrigger, 6261, TE_KILL, 136, 5 )
	MisCancelAction(ClearMission, 626)

	MisNeed(MIS_NEED_KILL, 136, 5, 10, 5)
	
	MisHelpTalk("<t>�� ��� �� ������ �� �������� �����? �������� �� ���������� �� ����� �������!")
	MisResultTalk("<t>������� ������������� �� ���� ����� �������!")
	MisResultCondition(NoRecord, 626)
	MisResultCondition(HasMission, 626)
	MisResultCondition(HasFlag, 626, 14 )
	MisResultAction(ClearMission, 626)
	MisResultAction(SetRecord, 626)
	MisResultAction(AddExp, 4800, 4800)
	MisResultAction(AddMoney,446,446)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 136 )	
	TriggerAction( 1, AddNextFlag, 626, 10, 5 )
	RegCurTrigger( 6261 )


-----------------------------------���̵���ɱ
	DefineMission( 627, "�������� �����", 627 )
	
	MisBeginTalk( "<t>� �� ��� ��� �������, ��� ������ ����� ��� ��������� ������?<n><t>� ���� � ������ �����, �� � ����� <r������� ������>. �� ������ ��� ���� ��? � � ������������� � ��� ��� �� ������ ��������������.<n><t>� �������������� ����, ��� �� �� ����� ��������� ��� <b5 ������ �������� �����>. <r������� ������> �� ������ � ������ �� <p��������> � �����(1143,2705).")
	MisBeginCondition(HasRecord, 623)
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 627)
	MisBeginCondition(NoRecord, 627)
	MisBeginAction(AddMission, 627)
	MisBeginAction(AddTrigger, 6271, TE_GETITEM, 4469, 5 )
	MisCancelAction(ClearMission, 627)

	MisNeed(MIS_NEED_ITEM, 4469, 5, 10, 5)
	
	MisHelpTalk("<t>�� �� �������� �� ���� �� �����, ���� � �� ����� �������������!")
	MisResultTalk("<t>���... �� ��������� ����������� �����! ��� ���� �������!")
	MisResultCondition(NoRecord, 627)
	MisResultCondition(HasMission, 627)
	MisResultCondition(HasItem, 4469, 5)
	MisResultAction(TakeItem, 4469, 5 )
	MisResultAction(ClearMission, 627)
	MisResultAction(SetRecord, 627)
	MisResultAction(AddExp, 4800, 4800)
	MisResultAction(AddMoney,892,892)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4469 )	
	TriggerAction( 1, AddNextFlag, 627, 10, 5 )
	RegCurTrigger( 6271 )

-----------------------------------�������ǵĴ���
	DefineMission( 628, "���������� ������������", 628 )
	
	MisBeginTalk( "<t>�� �������! ������ ��� ������? ����� � ����� ��� � ������ �����, ���� ��������� <r�������-�������>!<n><t>��� �������� �� ���� �������� ��� ����� ���� �������! ���������� �������� ����� ���� ���������� ���� <r5 �������-�������>. �� ������ �� � �����(1161,2639).")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 628)
	MisBeginCondition(NoRecord, 628)
	MisBeginAction(AddMission, 628)
	MisBeginAction(AddTrigger, 6281, TE_KILL, 80, 5 )
	MisCancelAction(ClearMission, 628)

	MisNeed(MIS_NEED_KILL, 80, 5, 10, 5)
	
	MisHelpTalk("<t>�� ����� ��� �������� ������-������?")
	MisResultTalk("<t>��! ������� ����! ������ ��� �� ����� �������� �� ���� ��������!")
	MisResultCondition(NoRecord, 628)
	MisResultCondition(HasMission, 628)
	MisResultCondition(HasFlag, 628, 14 )
	MisResultAction(ClearMission, 628)
	MisResultAction(SetRecord, 628)
	MisResultAction(AddExp, 5400, 5400)
	MisResultAction(AddMoney,453,453)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 80 )	
	TriggerAction( 1, AddNextFlag, 628, 10, 5 )
	RegCurTrigger( 6281 )

-----------------------------------����ħ��ʯ
	DefineMission( 629, "���������� ��������� ������", 629 )
	
	MisBeginTalk( "<t>���, ��� ����� ����� ���� � ����, � �� ��� ������ �� ������ ����� �� ����!<n><t>���, ��� ������� <r�������-������> � �����(1161,2639) ���� <p���������� ��������� ������>... ������� �� �������� ����� ���� ��� ��� �����. ������� ��� ��� � � ����� ����������� ����. ������ ��� ��� �����, �� ����� ���� ���� � ������.")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 629)
	MisBeginCondition(NoRecord, 629)
	MisBeginAction(AddMission, 629)
	MisBeginAction(AddTrigger, 6291, TE_GETITEM, 4092, 3 )
	MisCancelAction(ClearMission, 629)

	MisNeed(MIS_NEED_ITEM, 4092, 3, 10, 3)
	
	MisHelpTalk("<t>�� �� �������� ���  <p���������� ��������� ������>, ����� � ����� ������� �� ��������?")
	MisResultTalk("<t>��! ������� ���! ������ � ����� �� ����� ��������!")
	MisResultCondition(NoRecord, 629)
	MisResultCondition(HasMission, 629)
	MisResultCondition(HasItem, 4092, 3)
	MisResultAction(TakeItem, 4092, 3 )
	MisResultAction(ClearMission, 629)
	MisResultAction(SetRecord, 629)
	MisResultAction(AddExp, 5400, 5400)
	MisResultAction(AddMoney,453,453)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4092 )	
	TriggerAction( 1, AddNextFlag, 629, 10, 3 )
	RegCurTrigger( 6291 )

-----------------------------------̽���ٶ���ţ
	DefineMission( 630, "������������� ������ ������", 630 )
	
	MisBeginTalk( "<t>� ������, ��� ������ ���� � ������������, �� ��� ����� �������� ���������!<n><t>��� � ��� ����� �� �������, ��� � ��� ����� ������������ �����. ��������� ��� 5 <b�������� ������ ������>, ��� �� �������� ����� ��������� ������������ ����� �������. ������ �� ������ � �����(1227,2742).")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 630)
	MisBeginCondition(NoRecord, 630)
	MisBeginAction(AddMission, 630)
	MisBeginAction(AddTrigger, 6301, TE_GETITEM, 4473, 5 )
	MisCancelAction(ClearMission, 630)

	MisNeed(MIS_NEED_ITEM, 4473, 5, 10, 5)
	
	MisHelpTalk("<t>����� ��� ����� �� ��������� ������ ��� �������� ���������?!")
	MisResultTalk("<t>� �������� �� � ������ � ������, ��� ����� � ��� �� ��� �� ���������� �� �������!")
	MisResultCondition(NoRecord, 630)
	MisResultCondition(HasMission, 630)
	MisResultCondition(HasItem, 4473, 5)
	MisResultAction(TakeItem, 4473, 5 )
	MisResultAction(ClearMission, 630)
	MisResultAction(SetRecord, 630)
	MisResultAction(AddExp, 6100, 6100)
	MisResultAction(AddMoney,923,923)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4473 )	
	TriggerAction( 1, AddNextFlag, 630, 10, 5 )
	RegCurTrigger( 6301 )

-----------------------------------�����̵ĳٶ���ţ
	DefineMission( 631, "������-������", 631 )
	
	MisBeginTalk( "<t>� �� �������� �� �������� �� ��� ���� <r������ ������>, ��� ����� ������ � ����� ���������, ��� �- �����, ������� ����� ������ ������, �� ���� ��� ��������� �������� �� ���� ��������� ��� ��� ��������.<n><t>������������� � �����(1227,2742) � ������ 10 ���� ���������� <r������ ������>. ��� ����� �� ������ �� �� ������ � ����������� �����!")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 631)
	MisBeginCondition(NoRecord, 631)
	MisBeginAction(AddMission, 631)
	MisBeginAction(AddTrigger, 6311, TE_KILL, 127, 10 )
	MisCancelAction(ClearMission, 631)

	MisNeed(MIS_NEED_KILL, 127, 10, 10, 10)
	
	MisHelpTalk("<t>������ ��! ������! � �� ���� �������� ��� ��� ��������!")
	MisResultTalk("<t>�������! �� ������� ������ ����!")
	MisResultCondition(NoRecord, 631)
	MisResultCondition(HasMission, 631)
	MisResultCondition(HasFlag, 631, 19 )
	MisResultAction(ClearMission, 631)
	MisResultAction(SetRecord, 631)
	MisResultAction(AddExp, 6100, 6100)
	MisResultAction(AddMoney,461,461)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 127 )	
	TriggerAction( 1, AddNextFlag, 631, 10, 10 )
	RegCurTrigger( 6311 )


-----------------------------------����֮��
	DefineMission( 632, "������", 632 )
	
	MisBeginTalk( "<t>���� � ���� ���� ������ ���� ���� ���. ������ ���� ���� ������� ����������� �� ������ � ����� �� ������ ������.<n><t>� ���� �������� ������ ������ ����� �����, �� ��� �� ������� ������! �� ����� �� ��� ������, �������� <p5 ������>. ��� ������ ����� �������� ��������� � �����(934,2747).")
	MisBeginCondition(LvCheck, ">", 35 )
	MisBeginCondition(NoMission, 632)
	MisBeginCondition(NoRecord, 632)
	MisBeginAction(AddMission, 632)
	MisBeginAction(AddTrigger, 6321, TE_GETITEM, 4450, 5 )
	MisCancelAction(ClearMission, 632)

	MisNeed(MIS_NEED_ITEM, 4450, 5, 10, 5)
	
	MisHelpTalk("<t>� �� ����� �������� ����� ��� ������.")
	MisResultTalk("<t>������� �������, ������� ��� �� ������� ����� ������ ����!")
	MisResultCondition(NoRecord, 632)
	MisResultCondition(HasMission, 632)
	MisResultCondition(HasItem, 4450, 5)
	MisResultAction(TakeItem, 4450, 5 )
	MisResultAction(ClearMission, 632)
	MisResultAction(SetRecord, 632)
	MisResultAction(AddExp, 6800, 6800)
	MisResultAction(AddMoney,939,939)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4450 )	
	TriggerAction( 1, AddNextFlag, 632, 10, 5 )
	RegCurTrigger( 6321 )

-----------------------------------���д�������
	DefineMission( 633, "����� �������� �����", 633 )
	
	MisBeginTalk( "<t>�� �������, � ���� ���� ��� ��� ������, �� ��������� ������ ��������! ������ �������� ��, � ��� � ��� ������ �������, � �� �������� �������� ��������������.<n><t>������ <r10 ����������> � �����(935,2687).<n><t>��������� �� �������� �� ���, ����� ��������� � ����� ����������.")
	MisBeginCondition(LvCheck, ">", 36 )
	MisBeginCondition(NoMission, 633)
	MisBeginCondition(NoRecord, 633)
	MisBeginAction(AddMission, 633)
	MisBeginAction(AddTrigger, 6331, TE_KILL, 128, 10 )
	MisCancelAction(ClearMission, 633)

	MisNeed(MIS_NEED_KILL, 128, 10, 10, 10)
	
	MisHelpTalk("<t>������ ������ �� � �� ��������� ������ ��������.")
	MisResultTalk("<t>����� ������! �� �������� ����! �� ��� ������ ������� ������.")
	MisResultCondition(NoRecord, 633)
	MisResultCondition(HasMission, 633)
	MisResultCondition(HasFlag, 633, 19 )
	MisResultAction(ClearMission, 633)
	MisResultAction(SetRecord, 633)
	MisResultAction(AddExp, 7600, 7600)
	MisResultAction(AddMoney,477,477)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 128 )	
	TriggerAction( 1, AddNextFlag, 633, 10, 10 )
	RegCurTrigger( 6331 )

-----------------------------------ͻ������Ķ���
	DefineMission( 634, "������������ ���", 634 )
	
	MisBeginTalk( "<t>� ���� ������� ������ �� ������! ��� �� ����� � ������ �����, ��� ��� �������!<n><t>�� ��� ����� � ��� �������, � ������ ����� ����� *����* ���� ����������, ��� �� ��� �������� ��� �����, �� ������ � � ������ ���������. � �� ����� *����* � ��������� ��� �� ������ ������.<n><t>������������� � ����� (935,2687) � ��������� ��� <p5 �������� ������>. � ����� ��� �����������.")
	MisBeginCondition(LvCheck, ">", 36 )
	MisBeginCondition(NoMission, 634)
	MisBeginCondition(NoRecord, 634)
	MisBeginAction(AddMission, 634)
	MisBeginAction(AddTrigger, 6341, TE_GETITEM, 4472, 5 )
	MisCancelAction(ClearMission, 634)

	MisNeed(MIS_NEED_ITEM, 4472, 5, 10, 5)
	
	MisHelpTalk("<t>��� �� � ��� ������� �� �� � ���� ����� �� ���� ������.")
	MisResultTalk("<t>��� � ������! ��� ���� �������!")
	MisResultCondition(NoRecord, 634)
	MisResultCondition(HasMission, 634)
	MisResultCondition(HasItem, 4472, 5)
	MisResultAction(TakeItem, 4472, 5 )
	MisResultAction(ClearMission, 634)
	MisResultAction(SetRecord, 634)
	MisResultAction(AddExp, 7600, 7600)
	MisResultAction(AddMoney,955,955)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4472 )	
	TriggerAction( 1, AddNextFlag, 634, 10, 5 )
	RegCurTrigger( 6341 )

-----------------------------------�����ٻ�ʯ
	DefineMission( 635, "������� ��������� ����������", 635 )
	
	MisBeginTalk( "<t>�� �������, ����������� ��������� ����� �� ������� ��������, � � ����!<n><t>��� �� ������� ����������� ���� ������, �� � ��������� � �� ���� ����������� �� ���������. ���� ���� �� �� �������� ��� <p���� �������� ��������> � �����(969,2587) �� ������� �� �����. � �� ���������� �� �� � ����� ��, ��� ���� ������. � ����� ����������� ��� �� ��� ��������.")
	MisBeginCondition(LvCheck, ">", 37 )
	MisBeginCondition(NoMission, 635)
	MisBeginCondition(NoRecord, 635)
	MisBeginAction(AddMission, 635)
	MisBeginAction(AddTrigger, 6351, TE_GETITEM, 4093, 3 )
	MisCancelAction(ClearMission, 635)

	MisNeed(MIS_NEED_ITEM, 4093, 3, 10, 3)
	
	MisHelpTalk("<t>�� �� �������� ��� �� � ��� � ��� ��������? ��� ���������!")
	MisResultTalk("<t>��-��! �������, ��� ���� �������.")
	MisResultCondition(NoRecord, 635)
	MisResultCondition(HasMission, 635)
	MisResultCondition(HasItem, 4093, 3)
	MisResultAction(TakeItem, 4093, 3 )
	MisResultAction(ClearMission, 635)
	MisResultAction(SetRecord, 635)
	MisResultAction(AddExp, 8500, 8500)
	MisResultAction(AddMoney,486,486)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4093 )	
	TriggerAction( 1, AddNextFlag, 635, 10, 3 )
	RegCurTrigger( 6351 )

-----------------------------------����̦޺
	DefineMission( 636, "���������� �������", 636 )
	
	MisBeginTalk( "<t>���� ����� ������ ������ ����! � �� ���� ������ ��������� �������� ��-�� ��!<n><t>���������� ��������� ��� <p5 �������� ���>, ��� �� � ���� �������� �� ���� ����. �� ������ ��� � �����(732,2697).")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(NoMission, 636)
	MisBeginCondition(NoRecord, 636)
	MisBeginAction(AddMission, 636)
	MisBeginAction(AddTrigger, 6361, TE_GETITEM, 4094, 5 )
	MisCancelAction(ClearMission, 636)

	MisNeed(MIS_NEED_ITEM, 4094, 5, 10, 5)
	
	MisHelpTalk("<t>�� ��� ����, � �������� ��� ��� �������.")
	MisResultTalk("<t>������� ���, � ������ �� ������ ���� �����.")
	MisResultCondition(NoRecord, 636)
	MisResultCondition(HasMission, 636)
	MisResultCondition(HasItem, 4094, 5)
	MisResultAction(TakeItem, 4094, 5 )
	MisResultAction(ClearMission, 636)
	MisResultAction(SetRecord, 636)
	MisResultAction(AddExp, 9500, 9500)
	MisResultAction(AddMoney,495,495)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4094 )	
	TriggerAction( 1, AddNextFlag, 636, 10, 5 )
	RegCurTrigger( 6361 )


-----------------------------------Ѱ�ҹ⻬��ʯͷ
	DefineMission( 637, "������ ���������� �����", 637 )
	
	MisBeginTalk( "<t>��� ���� <b���> ����� ����� ���� ����� � ������� �� ����� ������� ������ � ���� ������ ������, �� ��� ���������� ���������.<n><t>��������� ��� <y5 ��������� �����> �� <r�������> � �����(682,2592). � ������� �� ��� � �� ����� ������ � ������.")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(NoMission, 637)
	MisBeginCondition(NoRecord, 637)
	MisBeginAction(AddMission, 637)
	MisBeginAction(AddTrigger, 6371, TE_GETITEM, 4455, 5 )
	MisCancelAction(ClearMission, 637)

	MisNeed(MIS_NEED_ITEM, 4455, 5, 10, 5)
	
	MisHelpTalk("<t>����� 5 ��������� ����� � ��� ����� ������ � ������!")
	MisResultTalk("<t>������� ����, � ������� �� �� ���� � �����, ��� ��� �� ������� ���!")
	MisResultCondition(NoRecord, 637)
	MisResultCondition(HasMission, 637)
	MisResultCondition(HasItem, 4455, 5)
	MisResultAction(TakeItem, 4455, 5 )
	MisResultAction(ClearMission, 637)
	MisResultAction(SetRecord, 637)
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4455 )	
	TriggerAction( 1, AddNextFlag, 637, 10, 5 )
	RegCurTrigger( 6371 )



-----------------------------------�Źֵ��ղؼ�
	DefineMission( 638, "�������� �������", 638 )
	
	MisBeginTalk( "<t>���� ��� �������� ������� ������.<n><t>� ���� ���� ��������, ������� ���������� �������������� ��������� ������ ����� ���. � ���� ��� ��� ��� ������������ ��� ����� <b������� ���� �����>. ��������� ���, � �� ������ ��� ����������� ������. <y������� ���� �����> �� ������� ����� � �����(892,3273).")
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 638)
	MisBeginCondition(NoRecord, 638)
	MisBeginAction(AddMission, 638)
	MisBeginAction(AddTrigger, 6381, TE_GETITEM, 4415, 5 )
	MisCancelAction(ClearMission, 638)

	MisNeed(MIS_NEED_ITEM, 4415, 5, 10, 5)
	
	MisHelpTalk("<t>�������� ���, ��� ��� ����������, ��� �� ��� ��������.")
	MisResultTalk("<t>������� ���, ��� ���� �������!")
	MisResultCondition(NoRecord, 638)
	MisResultCondition(HasMission, 638)
	MisResultCondition(HasItem, 4415, 5)
	MisResultAction(TakeItem, 4415, 5 )
	MisResultAction(ClearMission, 638)
	MisResultAction(SetRecord, 638)
	MisResultAction(AddExp, 120, 120)
	MisResultAction(AddMoney,299,299)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4415 )	
	TriggerAction( 1, AddNextFlag, 638, 10, 5 )
	RegCurTrigger( 6381 )

-----------------------------------�����������
	DefineMission( 639, "������� �������", 639 )
	
	MisBeginTalk( "<t>���� ���! � ������ �� ����! ��� ����� ������� �����! ���� ����� ������� �� <r�����-���������>. ������������� � �����(892,3273) � ������ <r10 ������-����������>. ���� �� �������� ������ �� �����.")
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 639)
	MisBeginCondition(NoRecord, 639)
	MisBeginAction(AddMission, 639)
	MisBeginAction(AddTrigger, 6391, TE_KILL, 62, 10 )
	MisCancelAction(ClearMission, 639)

	MisNeed(MIS_NEED_KILL, 62, 10, 10, 10)
	
	MisHelpTalk("<t>� ��������� �� ����� ������.")
	MisResultTalk("<t>�� ����������, ��� ������ ���� ������?!")
	MisResultCondition(NoRecord, 639)
	MisResultCondition(HasMission, 639)
	MisResultCondition(HasFlag, 639, 19 )
	MisResultAction(ClearMission, 639)
	MisResultAction(SetRecord, 639)
	MisResultAction(AddExp, 120, 120)
	MisResultAction(AddMoney,149,149)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 62 )	
	TriggerAction( 1, AddNextFlag, 639, 10, 10 )
	RegCurTrigger( 6391 )


-----------------------------------������ķ�����
	DefineMission( 640, "�������� �����-���������", 640 )
	
	MisBeginTalk( "<t>� �� ���� ������ �� ���� ���� �����! � ���� ���� ����������, ��� �� ������� �� <r�����-���������>. ������������� � �����(892,3273) � ��������� ��� �� ������ <y5 �������� �����-���������>. � ���������� ������� ����������� � ���� ���������.")
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginCondition(NoMission, 640)
	MisBeginCondition(NoRecord, 640)
	MisBeginAction(AddMission, 640)
	MisBeginAction(AddTrigger, 6401, TE_GETITEM, 4095, 5 )
	MisCancelAction(ClearMission, 640)

	MisNeed(MIS_NEED_ITEM, 4095, 5, 10, 5)
	
	MisHelpTalk("<t>�� ��� �� �������� ��� �������� �����-���������?")
	MisResultTalk("<t>��! �� ����! ��� �������� ������� � ������ �� ����� �������, �� ����� �� ��� ��� � ������.")
	MisResultCondition(NoRecord, 640)
	MisResultCondition(HasMission, 640)
	MisResultCondition(HasItem, 4095, 5)
	MisResultAction(TakeItem, 4095, 5 )
	MisResultAction(ClearMission, 640)
	MisResultAction(SetRecord, 640)
	MisResultAction(AddExp, 150, 150)
	MisResultAction(AddMoney,318,318)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4095 )	
	TriggerAction( 1, AddNextFlag, 640, 10, 5 )
	RegCurTrigger( 6401 )


-----------------------------------����С��
	DefineMission( 641, "�������� ������", 641 )
	
	MisBeginTalk( "<t>� ����� <r������>, ��� ����� ���������� � ������� � �������� �����. �������� ���� �� ������ <r10 ������>, ��� ��������� �� ��. �� ������ �� � �����.")
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginCondition(NoMission, 641)
	MisBeginCondition(NoRecord, 641)
	MisBeginAction(AddMission, 641)
	MisBeginAction(AddTrigger, 6411, TE_KILL, 100, 10 )
	MisCancelAction(ClearMission, 641)

	MisNeed(MIS_NEED_KILL, 100, 10, 10, 10)
	
	MisHelpTalk("<t>������ ��!")
	MisResultTalk("<t>�������, ������ ��� �� ��� ������� �������� � �������.")
	MisResultCondition(NoRecord, 641)
	MisResultCondition(HasMission, 641)
	MisResultCondition(HasFlag, 641, 19 )
	MisResultAction(ClearMission, 641)
	MisResultAction(SetRecord, 641)
	MisResultAction(AddExp, 150, 150)
	MisResultAction(AddMoney,159,159)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 100 )	
	TriggerAction( 1, AddNextFlag, 641, 10, 10 )
	RegCurTrigger( 6411 )

-----------------------------------��ɱС��
	DefineMission( 642, "������� ������", 642 )
	
	MisBeginTalk( "<t>� ���� ���� ����, ������� ���������� �������������� ������ �� ������ ������ ���. ��� �� ��� �������� �����������, ��� ���� ��� � �������, ���� � ��� ������� <b5 ������ ��������>. �������� ���, ������������� � �����(687,3093) � ����������� ��� ��� 5 ������ ��������.")
	MisBeginCondition(LvCheck, ">", 11 )
	MisBeginCondition(LvCheck, ">", 11 )
	MisBeginCondition(NoMission, 642)
	MisBeginCondition(NoRecord, 642)
	MisBeginAction(AddMission, 642)
	MisBeginAction(AddTrigger, 6421, TE_GETITEM, 4096, 5 )
	MisCancelAction(ClearMission, 642)

	MisNeed(MIS_NEED_ITEM, 4096, 5, 10, 5)
	
	MisHelpTalk("<t>� �� ���� ����� ��������.")
	MisResultTalk("<t>������� ���! ��� ������� �� ���� ��������.")
	MisResultCondition(NoRecord, 642)
	MisResultCondition(HasMission, 642)
	MisResultCondition(HasItem, 4096, 5)
	MisResultAction(TakeItem, 4096, 5 )
	MisResultAction(ClearMission, 642)
	MisResultAction(SetRecord, 642)
	MisResultAction(AddExp, 190, 190)
	MisResultAction(AddMoney,339,339)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4096 )	
	TriggerAction( 1, AddNextFlag, 642, 10, 5 )
	RegCurTrigger( 6421 )

-----------------------------------����ɱ��������
	DefineMission( 643, "�������� ��������-�����", 643 )
	
	MisBeginTalk( "<t>��������! ���, ����������, ��������!<n><t>� ����� � ����� �����������, �� ����� �������� ����� ������ ���! �� ������ ���� ����������� - �������-������, ������� ������������� �� �����.<n><t>��� ������� �������! ������ 10 ��������, ��� �� ��������������� ���� �� �� �������� � � ��� ����� ������ �������, �� ����� ������� ��������. �� ������ ������� ������ � �����(884,3156).")
	MisBeginCondition(LvCheck, ">", 12 )
	MisBeginCondition(NoMission, 643)
	MisBeginCondition(NoRecord, 643)
	MisBeginAction(AddMission, 643)
	MisBeginAction(AddTrigger, 6431, TE_KILL, 43, 10 )
	MisCancelAction(ClearMission, 643)

	MisNeed(MIS_NEED_KILL, 43, 10, 10, 10)
	
	MisHelpTalk("<t>�� �� ������, ��� �� ������� ��������� � ��� � �����?")
	MisResultTalk("<t>������� ��� �������!")
	MisResultCondition(NoRecord, 643)
	MisResultCondition(HasMission, 643)
	MisResultCondition(HasFlag, 643, 19 )
	MisResultAction(ClearMission, 643)
	MisResultAction(SetRecord, 643)
	MisResultAction(AddExp, 240, 240)
	MisResultAction(AddMoney,180,180)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 43 )	
	TriggerAction( 1, AddNextFlag, 643, 10, 10 )
	RegCurTrigger( 6431 )



-----------------------------------��ҩ���
	DefineMission( 644, "������� ���������", 644 )
	
	MisBeginTalk( "<t>��-�� ������ � ������� �������, ����� � ������� �� ����� �����, �� ���� ����������� ����, � ������� �������, ����� ���������� ������ �������.<n><t>��� �� ������� ����� ����, ���������� <p5 ������� ������� �������>. �� ������� ����� �� � �����(884,3156).")
	MisBeginCondition(LvCheck, ">", 13 )
	MisBeginCondition(NoMission, 644)
	MisBeginCondition(NoRecord, 644)
	MisBeginAction(AddMission, 644)
	MisBeginAction(AddTrigger, 6441, TE_GETITEM, 4421, 5 )
	MisCancelAction(ClearMission, 644)

	MisNeed(MIS_NEED_ITEM, 4421, 5, 10, 5)
	
	MisHelpTalk("<t>��� ���� ���� ����� ������ � �������.")
	MisResultTalk("<t>������� ���, ��� ���� ����!")
	MisResultCondition(NoRecord, 644)
	MisResultCondition(HasMission, 644)
	MisResultCondition(HasItem, 4421, 5)
	MisResultAction(TakeItem, 4421, 5 )
	MisResultAction(ClearMission, 644)
	MisResultAction(SetRecord, 644)
	MisResultAction(AddExp, 290, 290)
	MisResultAction(AddMoney,384,384)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4421 )	
	TriggerAction( 1, AddNextFlag, 644, 10, 5 )
	RegCurTrigger( 6441 )


-----------------------------------�����Ƶ�ˮ��
	DefineMission( 645, "���������� ������ �����", 645 )
	
	MisBeginTalk( "<t>�� ������ ���������� ����� ������ � �����... ������� �������� ���������� ��� ������� � ������� ����� ����� �������. � ��� ���� <y������ �����>. ���� �� ����������� � �����(884,3516) � �������� ��� ��� ������������ 5 <b���������� ������ ������>, �� � ��� ����� �����������.")
	MisBeginCondition(LvCheck, ">", 13 )
	MisBeginCondition(NoMission, 645)
	MisBeginCondition(HasRecord, 644)
	MisBeginCondition(NoRecord, 645)
	MisBeginAction(AddMission, 645)
	MisBeginAction(AddTrigger, 6451, TE_GETITEM, 4097, 5 )
	MisCancelAction(ClearMission, 645)

	MisNeed(MIS_NEED_ITEM, 4097, 5, 10, 5)
	
	MisHelpTalk("<t>���� �� �� �������� �� � ��� � ��� �������� � �� ��� ��� �������!")
	MisResultTalk("<t>�������, � ����������� ����� �� ������! ��� ���� �������!")
	MisResultCondition(NoRecord, 645)
	MisResultCondition(HasMission, 645)
	MisResultCondition(HasItem, 4097, 5)
	MisResultAction(TakeItem, 4097, 5 )
	MisResultAction(ClearMission, 645)
	MisResultAction(SetRecord, 645)
	MisResultAction(AddExp, 290, 290)
	MisResultAction(AddMoney,384,384)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4097 )	
	TriggerAction( 1, AddNextFlag, 645, 10, 5 )
	RegCurTrigger( 6451 )

----------------------------------������������
	DefineMission( 646, "���������������� ���������", 646 )
	
	MisBeginTalk( "<t>��� ��������� �� ���� ������� �������...<n><t>������ <r10 ���������� ���������> � ����� (687,3093), ��� �� ���� ��� �� ��������� �� �����������.")
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 646)
	MisBeginCondition(NoRecord, 646)
	MisBeginAction(AddMission, 646)
	MisBeginAction(AddTrigger, 6461, TE_KILL, 294, 10 )
	MisCancelAction(ClearMission, 646)

	MisNeed(MIS_NEED_KILL, 294, 10, 10, 10)
	
	MisHelpTalk("<t>�� �� ��������� ��� �������? ����� ����! ����� �� �� �� ������ � �������� ��, � ��� � ��� ��������?")
	MisResultTalk("<t>������� ���, ������ �� ������� ������!")
	MisResultCondition(NoRecord, 646)
	MisResultCondition(HasMission, 646)
	MisResultCondition(HasFlag, 646, 19 )
	MisResultAction(ClearMission, 646)
	MisResultAction(SetRecord, 646)
	MisResultAction(AddExp, 360, 360)
	MisResultAction(AddMoney,204,204)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 294 )	
	TriggerAction( 1, AddNextFlag, 646, 10, 10 )
	RegCurTrigger( 6461 )

-----------------------------------��ζ��֭��
	DefineMission( 647, "������� �����", 647 )
	
	MisBeginTalk( "<t><b������� �����> �� <r���������� ���������> �������, �� ����� ������.<n><t>���������� �������� ���������� <b������� �����> ��� �������.<n><t>� ��� ����� ���������� ���� �������, �� � ���� ����������� ������ <b�������� ������>. ���� �� ��� �������� <b5 ������� �������> � <r���������� ���������> � �����(687,3097), �� � ���� ��� ����� ������ ����������.")
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 647)
	MisBeginCondition(NoRecord, 647)
	MisBeginAction(AddMission, 647)
	MisBeginAction(AddTrigger, 6471, TE_GETITEM, 4475, 5 )
	MisCancelAction(ClearMission, 647)

	MisNeed(MIS_NEED_ITEM, 4475, 5, 10, 5)
	
	MisHelpTalk("<t>���, �� ��� �� �������� ��� ������� �����? ������������!")
	MisResultTalk("<t>������� ���, ������ � ����� ��� ����������!")
	MisResultCondition(NoRecord, 647)
	MisResultCondition(HasMission, 647)
	MisResultCondition(HasItem, 4475, 5)
	MisResultAction(TakeItem, 4475, 5 )
	MisResultAction(ClearMission, 647)
	MisResultAction(SetRecord, 647)
	MisResultAction(AddExp, 360, 360)
	MisResultAction(AddMoney,408,408)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4475 )	
	TriggerAction( 1, AddNextFlag, 647, 10, 5 )
	RegCurTrigger( 6471 )

----------------------------------�������˵
	DefineMission( 648, "������� � ���������� ������", 648 )
	
	MisBeginTalk( "<t>����� �����, ��� <r������������> ������������� ������������.<n><t>��� <r�������������> ��������� ������� ���! ���������� ���������� <r10 ��������������> � �����(885,3027) � �������� ������ ����������� �������.")
	MisBeginCondition(LvCheck, ">", 15 )
	MisBeginCondition(NoMission, 648)
	MisBeginCondition(NoRecord, 648)
	MisBeginAction(AddMission, 648)
	MisBeginAction(AddTrigger, 6481, TE_KILL, 203, 10 )
	MisCancelAction(ClearMission, 648)

	MisNeed(MIS_NEED_KILL, 203, 10, 10, 10)
	
	MisHelpTalk("<t>�� ��� �� ����� 10 ��������������!")
	MisResultTalk("<t>������� ���!")
	MisResultCondition(NoRecord, 648)
	MisResultCondition(HasMission, 648)
	MisResultCondition(HasFlag, 648, 19 )
	MisResultAction(ClearMission, 648)
	MisResultAction(SetRecord, 648)
	MisResultAction(AddExp, 450, 450)
	MisResultAction(AddMoney,216,216)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 203 )	
	TriggerAction( 1, AddNextFlag, 648, 10, 10 )
	RegCurTrigger( 6481 )


-----------------------------------��ľ�괺
	DefineMission( 649, "�������� �����", 649 )
	
	MisBeginTalk( "<t>����� ���� ����, ��� �������� ��� ������� �������, �� ���� �������� ����� ��������� <r�������������>, � ��� ���� �����, �������� ��� ��������� ��� ���� � ������� �� ������� ����. ��������� ��� <y5 ������ �������������>, ��� �� � ���� �����������, ��� �� ������ ��������� ��� ���� � �������.")
	MisBeginCondition(LvCheck, ">", 16 )
	MisBeginCondition(NoMission, 649)
	MisBeginCondition(NoRecord, 649)
	MisBeginAction(AddMission, 649)
	MisBeginAction(AddTrigger, 6491, TE_GETITEM, 4098, 5 )
	MisCancelAction(ClearMission, 649)

	MisNeed(MIS_NEED_ITEM, 4098, 5, 10, 5)
	
	MisHelpTalk("<t>���� ������� ��� �������.")
	MisResultTalk("<t>�������, �������� ������������ � ���� ������ � ����� ���������, ��� ������ ����!")
	MisResultCondition(NoRecord, 649)
	MisResultCondition(HasMission, 649)
	MisResultCondition(HasItem, 4098, 5)
	MisResultAction(TakeItem, 4098, 5 )
	MisResultAction(ClearMission, 649)
	MisResultAction(SetRecord, 649)
	MisResultAction(AddExp, 550, 550)
	MisResultAction(AddMoney,459,459)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4098 )	
	TriggerAction( 1, AddNextFlag, 649, 10, 5 )
	RegCurTrigger( 6491 )

-----------------------------------���׼���
	DefineMission( 650, "��������������� ���", 650 )
	
	MisBeginTalk( "<t>*����* � ����� ���� ������� ���������� �������. ������ ���� ����������� �������� ���� �� ����� �� ���� � �� ��� ������, ��� �������� ���� � ������� ��������� ��� �������� �� ���� ������. ��� ������� <y���������� �������> � ������� ��� � ���� � ������.<n><t>�� �� ����� �� ����������� �� ������ � ���������� ������� � ������� <y���������� �������>. ������ �������� ��������� � �����(716,3290). �������� � ��� ��� <b���������� �������>.")
	MisBeginCondition(LvCheck, ">", 17 )
	MisBeginCondition(NoMission, 650)
	MisBeginCondition(NoRecord, 650)
	MisBeginAction(AddMission, 650)
	MisBeginAction(AddTrigger, 6501, TE_GETITEM, 4099, 1 )
	MisCancelAction(ClearMission, 650)

	MisNeed(MIS_NEED_ITEM, 4099, 1, 10, 1)
	
	MisHelpTalk("<t>*����* ��� ����... � ���� ������ ��� � ���� ������!")
	MisResultTalk("<t>��! ��� ��� ���������� � ����� �������! ������� ���!")
	MisResultCondition(NoRecord, 650)
	MisResultCondition(HasMission, 650)
	MisResultCondition(HasItem, 4099, 1)
	MisResultAction(TakeItem, 4099, 1 )
	MisResultAction(ClearMission, 650)
	MisResultAction(SetRecord, 650)
	MisResultAction(AddExp, 650, 650)
	MisResultAction(AddMoney,242,242)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4099 )	
	TriggerAction( 1, AddNextFlag, 650, 10, 1 )
	RegCurTrigger( 6501 )


----------------------------------Χ������
	DefineMission( 651, "���������� ��������", 651 )
	
	MisBeginTalk( "<t><r�������� ����������> �������� �� �������. ���  ������ �� ������ ���������, �� �  ����������� ������ � �����.<n><t>������ �������� ������ � ��������, ����� ���������� �� ���. �� ������ ������ ���? ��������� 10 <r�������� �����������> � ����� (716,3290).")
	MisBeginCondition(LvCheck, ">", 18 )
	MisBeginCondition(NoMission, 651)
	MisBeginCondition(NoRecord, 651)
	MisBeginAction(AddMission, 651)
	MisBeginAction(AddTrigger, 6511, TE_KILL, 131, 10 )
	MisCancelAction(ClearMission, 651)

	MisNeed(MIS_NEED_KILL, 131, 10, 10, 10)
	
	MisHelpTalk("<t>������ ����������� � �������� �������!")
	MisResultTalk("<t>�����������! ��� ���� �������.")
	MisResultCondition(NoRecord, 651)
	MisResultCondition(HasMission, 651)
	MisResultCondition(HasFlag, 651, 19 )
	MisResultAction(ClearMission, 651)
	MisResultAction(SetRecord, 651)
	MisResultAction(AddExp, 750, 750)
	MisResultAction(AddMoney,256,256)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 131 )	
	TriggerAction( 1, AddNextFlag, 651, 10, 10 )
	RegCurTrigger( 6511 )

----------------------------------�׺ݶ���
	DefineMission( 652, "���� �������� �����", 652 )
	
	MisBeginTalk( "<t>� ������� ������������ �� ������ �  <r��������� �������>.<n><t>��� ���������� ���������������� �������� ���� ����� ��������<n><t>���� �� �������� ����� 10 <r�������� ������> � ����� (718,2938), � ����� ��� ����������.")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 652)
	MisBeginCondition(NoRecord, 652)
	MisBeginAction(AddMission, 652)
	MisBeginAction(AddTrigger, 6521, TE_KILL, 101, 10 )
	MisCancelAction(ClearMission, 652)

	MisNeed(MIS_NEED_KILL, 101, 10, 10, 10)
	
	MisHelpTalk("<t>������ �������� ������ � �� �������� ��������������.")
	MisResultTalk("<t>����� ������! ��� ���� �������.")
	MisResultCondition(NoRecord, 652)
	MisResultCondition(HasMission, 652)
	MisResultCondition(HasFlag, 652, 19 )
	MisResultAction(ClearMission, 652)
	MisResultAction(SetRecord, 652)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 101 )	
	TriggerAction( 1, AddNextFlag, 652, 10, 10 )
	RegCurTrigger( 6521 )

----------------------------------ɳ�ع�֮��
	DefineMission( 653, "���� ��������� ��������", 653 )
	
	MisBeginTalk( "<t>� �� ����, ��� ��������� � <r��������� ����������>, ��� ���������� �� ������� � �������� �� ���� ������!<n><t>������ �� �� ������ ��� ����� 10 <r �������� �������> � ����� (1197,3270)?")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 653)
	MisBeginCondition(NoRecord, 653)
	MisBeginAction(AddMission, 653)
	MisBeginAction(AddTrigger, 6531, TE_KILL, 134, 10 )
	MisCancelAction(ClearMission, 653)

	MisNeed(MIS_NEED_KILL, 134, 10, 10, 10)
	
	MisHelpTalk("<t>����������! ������ ��!")
	MisResultTalk("<t>����� ������!")
	MisResultCondition(NoRecord, 653)
	MisResultCondition(HasMission, 653)
	MisResultCondition(HasFlag, 653, 19 )
	MisResultAction(ClearMission, 653)
	MisResultAction(SetRecord, 653)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 134 )	
	TriggerAction( 1, AddNextFlag, 653, 10, 10 )
	RegCurTrigger( 6531 )

-----------------------------------�ƶ�����
	DefineMission( 654, "���������� ���", 654 )
	
	MisBeginTalk( "<t><r�������� ��������> ���������, �� �������� ��������. ��� ��� ����� �������� ������ ��������� ��������.<n><t>��� ����� ����� ��� ������. ������ �� �� �������� ��� ����  <y5��������� ��������> �� <r�������� �������> � ����� (1197,3270)?")
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(NoMission, 654)
	MisBeginCondition(NoRecord, 654)
	MisBeginAction(AddMission, 654)
	MisBeginAction(AddTrigger, 6541, TE_GETITEM, 4466, 5 )
	MisCancelAction(ClearMission, 654)

	MisNeed(MIS_NEED_ITEM, 4466, 5, 10, 5)
	
	MisHelpTalk("<t>�� ��� ����� �� ��������?")
	MisResultTalk("<t>������� ��� �������!")
	MisResultCondition(NoRecord, 654)
	MisResultCondition(HasMission, 654)
	MisResultCondition(HasItem, 4466, 5)
	MisResultAction(TakeItem, 4466, 5 )
	MisResultAction(ClearMission, 654)
	MisResultAction(SetRecord, 654)
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney,571,571)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4466 )	
	TriggerAction( 1, AddNextFlag, 654, 10, 5 )
	RegCurTrigger( 6541 )

----------------------------------δ�����
	DefineMission( 655, "����������", 655 )
	
	MisBeginTalk( "<t>� ��������� ��������� �������� ������� � <b������>.<n><t>�� ��� �������� ������ ����� ������ <p�������� ��������>. � �����, ��� ��� ������� ����.<n><t>�� ����� �� �� ����� 10 �������� ��������? ��� ���� ����� ����� �����(1339,3300).")
	MisBeginCondition(LvCheck, ">", 21 )
	MisBeginCondition(NoMission, 655)
	MisBeginCondition(NoRecord, 655)
	MisBeginAction(AddMission, 655)
	MisBeginAction(AddTrigger, 6551, TE_KILL, 45, 10 )
	MisCancelAction(ClearMission, 655)

	MisNeed(MIS_NEED_KILL, 45, 10, 10, 10)
	
	MisHelpTalk("<t>� ����������, ��� ���� ���� ����������!")
	MisResultTalk("<t>������� �������! ������ ��� ������ ���������.")
	MisResultCondition(NoRecord, 655)
	MisResultCondition(HasMission, 655)
	MisResultCondition(HasFlag, 655, 19 )
	MisResultAction(ClearMission, 655)
	MisResultAction(SetRecord, 655)
	MisResultAction(AddExp, 1200, 1200)
	MisResultAction(AddMoney,300,300)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 45 )	
	TriggerAction( 1, AddNextFlag, 655, 10, 10 )
	RegCurTrigger( 6551 )

-----------------------------------Ģ��Ũ��
	DefineMission( 656, "������� ���", 656 )
	
	MisBeginTalk( "<t>��... ����� � ������ �� ��� <r�������� �����>, �� � ���� ����� ����� ������� ���������� ����� �������� ����!<n><t>� ��� ���� ����������� ���� ���...<n><t>��������� ��� <y5 ��������� ����a>, ��� �� � ���� ������� ������������� ������� ���. �� ������ <r�������� �����> � �����(1334,3438).")
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 656)
	MisBeginCondition(NoRecord, 656)
	MisBeginAction(AddMission, 656)
	MisBeginAction(AddTrigger, 6561, TE_GETITEM, 4476, 5 )
	MisCancelAction(ClearMission, 656)

	MisNeed(MIS_NEED_ITEM, 4476, 5, 10, 5)
	
	MisHelpTalk("<t>� ��� ���� ������� ���, � �� �� ��� ��� �� �������� ��� 5 ��������� ������.")
	MisResultTalk("<t>������� ���! �������� �� ������� ��� �������.")
	MisResultCondition(NoRecord, 656)
	MisResultCondition(HasMission, 656)
	MisResultCondition(HasItem, 4476, 5)
	MisResultAction(TakeItem, 4476, 5 )
	MisResultAction(ClearMission, 656)
	MisResultAction(SetRecord, 656)
	MisResultAction(AddExp, 1400, 1400)
	MisResultAction(AddMoney,632,632)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4476 )	
	TriggerAction( 1, AddNextFlag, 656, 10, 5 )
	RegCurTrigger( 6561 )

-----------------------------------���ܵ�ɳ�ع�
	DefineMission( 657, "������ ����", 657 )
	
	MisBeginTalk( "<t>� ����� ���������� ������������.<n><t>��� 2 ����� � ������ � ���� ���� � ��������, ��� ���� �� �� �������.<n><t>�������� ���� ��� � ������, ��� ��������� <b������>. �� ��� ��� � �� ���� ������������� ����� ����.<n><t>�� �� ������� �� ��� �������� <y5 ��������� ����>, ��� �� � �� ����� ������ �������� ����� � ���� ����.<n><t>����� �� ������ � �����(1334,3438).")
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 657)
	MisBeginCondition(NoRecord, 657)
	MisBeginAction(AddMission, 657)
	MisBeginAction(AddTrigger, 6571, TE_GETITEM, 4100, 5 )
	MisCancelAction(ClearMission, 657)

	MisNeed(MIS_NEED_ITEM, 4100, 5, 10, 5)
	
	MisHelpTalk("<t>� �� ����� �������� � ���� ���� ����� ��� ����� ������!")
	MisResultTalk("<t>�������, ��� ������ ����� ����������, ��� ��� ����� ����� ������ ����� � ����!")
	MisResultCondition(NoRecord, 657)
	MisResultCondition(HasMission, 657)
	MisResultCondition(HasItem, 4100, 5)
	MisResultAction(TakeItem, 4100, 5 )
	MisResultAction(ClearMission, 657)
	MisResultAction(SetRecord, 657)
	MisResultAction(AddExp, 1400, 1400)
	MisResultAction(AddMoney,316,316)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4100 )	
	TriggerAction( 1, AddNextFlag, 657, 10, 5 )
	RegCurTrigger( 6571 )

-----------------------------------�ཬ������
	DefineMission( 658, "���������� ���������� �����", 658 )
	
	MisBeginTalk( "<t>��! ����! �� ��� ��� �������! � ��� �������� ��������� ������� ����� � ��� � ���� ����� ������ ����� ��� ������� ���������� ���, ������� ������ ������������� �������. �������� ��� ������ <b5 ���������� �����> �� <r�����������> ���������� � �����(1438,3414) � ����� � ������� ���� ���������� ���, � ���� ��� ����� ���������� � ������� ������� ������ �� ���.")
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 658)
	MisBeginCondition(NoRecord, 658)
	MisBeginAction(AddMission, 658)
	MisBeginAction(AddTrigger, 6581, TE_GETITEM, 4436, 5 )
	MisCancelAction(ClearMission, 658)

	MisNeed(MIS_NEED_ITEM, 4436, 5, 10, 5)
	
	MisHelpTalk("<t>� ������� ���� ��� ������ ���� �� ��� ��������!")
	MisResultTalk("<t>������� ���!")
	MisResultCondition(NoRecord, 658)
	MisResultCondition(HasMission, 658)
	MisResultCondition(HasItem, 4436, 5)
	MisResultAction(TakeItem, 4436, 5 )
	MisResultAction(ClearMission, 658)
	MisResultAction(SetRecord, 658)
	MisResultAction(AddExp, 1600, 1600)
	MisResultAction(AddMoney,664,664)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4436 )	
	TriggerAction( 1, AddNextFlag, 658, 10, 5 )
	RegCurTrigger( 6581 )

----------------------------------̰��������
	DefineMission( 659, "������ ������ �����������", 659 )
	
	MisBeginTalk( "<t>����, � �������! ��� �� ��-�� <r�����������>!<n><t>��� <r�����������> ����� ����� ����� � ��������� �����, � ��� ��� �������� � ��� ���������� �� ��������! ���� ������ ����� ����� <r10 ������������> � �������� ��, ��� �������. �� ������ �� � �����(1438,3413).")
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 659)
	MisBeginCondition(NoRecord, 659)
	MisBeginAction(AddMission, 659)
	MisBeginAction(AddTrigger, 6591, TE_KILL, 251, 10 )
	MisCancelAction(ClearMission, 659)

	MisNeed(MIS_NEED_KILL, 251, 10, 10, 10)
	
	MisHelpTalk("<t>������ ��� ��� ��������! � ��� �������?! �� ��� �������? ����� � �������� �� ��������!")
	MisResultTalk("<t>�� ���������� � ����! �� ��������� �����!")
	MisResultCondition(NoRecord, 659)
	MisResultCondition(HasMission, 659)
	MisResultCondition(HasFlag, 659, 19 )
	MisResultAction(ClearMission, 659)
	MisResultAction(SetRecord, 659)
	MisResultAction(AddExp, 1600, 1600)
	MisResultAction(AddMoney,332,332)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 251 )	
	TriggerAction( 1, AddNextFlag, 659, 10, 10 )
	RegCurTrigger( 6591 )

----------------------------------Σ��ɳ��ʿ
	DefineMission( 660, "������� ���������", 660 )
	
	MisBeginTalk( "<t><r�������� �������> ��������� � ������� ������� ������� � ������� <b�������>. ��� �� ������� �������, ��� ������� ���� ���� ����������� � ���� �� ����. �� �������� ������ � �����(13027,3011). ������������� � ��� � ������ � ������ 10 <r�������� ���������>. ���� �� ����������� �� ��� � ��� ������ ������� ������!")
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 660)
	MisBeginCondition(NoRecord, 660)
	MisBeginAction(AddMission, 660)
	MisBeginAction(AddTrigger, 6601, TE_KILL, 49, 10 )
	MisCancelAction(ClearMission, 660)

	MisNeed(MIS_NEED_KILL, 49, 10, 10, 10)
	
	MisHelpTalk("<t>���� �� �� �� �������� ��� ��� � ����� ������������ ������� ������� ����������.")
	MisResultTalk("<t>������� ���, �� ��������� �� ����!")
	MisResultCondition(NoRecord, 660)
	MisResultCondition(HasMission, 660)
	MisResultCondition(HasFlag, 660, 19 )
	MisResultAction(ClearMission, 660)
	MisResultAction(SetRecord, 660)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,348,348)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 49 )	
	TriggerAction( 1, AddNextFlag, 660, 10, 10 )
	RegCurTrigger( 6601 )

----------------------------------����ʳ��֩��
	DefineMission( 661, "������ ���������", 661 )
	
	MisBeginTalk( "<t>� ������ ����� ����� ������  ����� �����, �� ������ ��� ������ ��-�� <r������-����������>. ������ ���������� <r10 ������-����������>, ��� �� ����� ����� ����� ������  ����� ������. �� ������������ �� ��� � �����(1093,2948)!")
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 661)
	MisBeginCondition(NoRecord, 661)
	MisBeginAction(AddMission, 661)
	MisBeginAction(AddTrigger, 6611, TE_KILL, 210, 10 )
	MisCancelAction(ClearMission, 661)

	MisNeed(MIS_NEED_KILL, 210, 10, 10, 10)
	
	MisHelpTalk("<t>�� ����� ��� �� ����������� ��� � ������!")
	MisResultTalk("<t>������� ���, ������ � ���� ��� � ������ ������ �� �����!")
	MisResultCondition(NoRecord, 661)
	MisResultCondition(HasMission, 661)
	MisResultCondition(HasFlag, 661, 19 )
	MisResultAction(ClearMission, 661)
	MisResultAction(SetRecord, 661)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,365,365)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 210 )	
	TriggerAction( 1, AddNextFlag, 661, 10, 10 )
	RegCurTrigger( 6611 )

-----------------------------------ֱ�����ߵ���
	DefineMission( 662, "�������� ����", 662 )
	
	MisBeginTalk( "<t>��� ���������, ������ <r����� �����> ����� ������������ �� ���� ����� ��� �������. ������������� � �����(1473,3295) � ��������� ��� ���� �� <r����� ������> <y5 �������� ������ ������>.<n><t>�������� � ����� ������ �� ������!")
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 662)
	MisBeginCondition(NoRecord, 662)
	MisBeginAction(AddMission, 662)
	MisBeginAction(AddTrigger, 6621, TE_GETITEM, 4439, 5 )
	MisCancelAction(ClearMission, 662)

	MisNeed(MIS_NEED_ITEM, 4439, 5, 10, 5)
	
	MisHelpTalk("<t>��.. �������, �� �� ��� �� ���� �� ��������.")
	MisResultTalk("<t>���! � ��� � �����! ��� �������!")
	MisResultCondition(NoRecord, 662)
	MisResultCondition(HasMission, 662)
	MisResultCondition(HasItem, 4439, 5)
	MisResultAction(TakeItem, 4439, 5 )
	MisResultAction(ClearMission, 662)
	MisResultAction(SetRecord, 662)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,730,730)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4439 )	
	TriggerAction( 1, AddNextFlag, 662, 10, 5 )
	RegCurTrigger( 6621 )

-----------------------------------���֩��
	DefineMission( 663, "������� ����", 663 )
	
	MisBeginTalk( "<t>������� ����! �� ��� ��� �������! ����� ������ � ���� <y����� � �������> � ������ � �����(1093,2948). ������������� ���� � ������� ��� <y������� � �������>, � �� �������� � ����� ����� ����.")
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 663)
	MisBeginCondition(NoRecord, 663)
	MisBeginAction(AddMission, 663)
	MisBeginAction(AddTrigger, 6631, TE_GETITEM, 4101, 1 )
	MisCancelAction(ClearMission, 663)

	MisNeed(MIS_NEED_ITEM, 4101, 1, 10, 1)
	
	MisHelpTalk("<t>� ����� �������������� �� ��������? � �� ���� ������ ����� � �������!")
	MisResultTalk("<t>��� �� ��� ����������! ��� ���� �������! ������� ��� ��������!")
	MisResultCondition(NoRecord, 663)
	MisResultCondition(HasMission, 663)
	MisResultCondition(HasItem, 4101, 1)
	MisResultAction(TakeItem, 4101, 1 )
	MisResultAction(ClearMission, 663)
	MisResultAction(SetRecord, 663)
	MisResultAction(AddExp, 2400, 2400)
	MisResultAction(AddMoney,382,382)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4101 )	
	TriggerAction( 1, AddNextFlag, 663, 10, 1 )
	RegCurTrigger( 6631 )

-----------------------------------����Կ��
	DefineMission( 664, "������� ����", 664 )
	
	MisBeginTalk( "<t>����! ���������� �������� ����!<n><t>��� ������� ���������� ������ �� ����� ������ �� ����, ��� ��� �� ��������� ����������� � ��������. ������ ����!<n><t>� ������������ �� � ���� ���� �� �������. ��� �����, ����� ��� ����� ������� �� �� �������.<n><t>������������� � �����(1255,2974) � ��������� �� <r���������> ��� <y������� �����>. ������ ��� ������� ����� ���������, �� �������� �� ���� � �� ������!")
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 664)
	MisBeginCondition(NoRecord, 664)
	MisBeginAction(AddMission, 664)
	MisBeginAction(AddTrigger, 6641, TE_GETITEM, 4478, 2 )
	MisCancelAction(ClearMission, 664)

	MisNeed(MIS_NEED_ITEM, 4478, 2, 10, 2)
	
	MisHelpTalk("<t>� �� ��� � ������ ��� �����������? �� ��� �� �������� ��� 2 ������� �����!")
	MisResultTalk("<t>��������� ����, ��� ����!")
	MisResultCondition(NoRecord, 664)
	MisResultCondition(HasMission, 664)
	MisResultCondition(HasItem, 4478, 2)
	MisResultAction(TakeItem, 4478, 2 )
	MisResultAction(ClearMission, 664)
	MisResultAction(SetRecord, 664)
	MisResultAction(AddExp, 2400, 2400)
	MisResultAction(AddMoney,765,765)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4478 )	
	TriggerAction( 1, AddNextFlag, 664, 10, 2 )
	RegCurTrigger( 6641 )

----------------------------------��������
	DefineMission( 665, "����� ������", 665 )
	
	MisBeginTalk( "<t>��� ���������� � ����� ������ ���������: ������ �������� �� �����!<n><t>������� ��������� �������� � �������, ��������� �������� � �����������. ������ �� ������ � �����(1170,3026) � ��������� ������ ����������� ������!")
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 665)
	MisBeginCondition(NoRecord, 665)
	MisBeginAction(AddMission, 665)
	MisBeginAction(AddTrigger, 6651, TE_KILL, 106, 1 )
	MisCancelAction(ClearMission, 665)

	MisNeed(MIS_NEED_KILL, 106, 1, 10, 1)
	
	MisHelpTalk("<t>�� ��� �� ����� ������������ �������� �������� - ������!")
	MisResultTalk("<t>��-��! �� �������� ������ ����� ������������!")
	MisResultCondition(NoRecord, 665)
	MisResultCondition(HasMission, 665)
	MisResultCondition(HasFlag, 665, 10 )
	MisResultAction(ClearMission, 665)
	MisResultAction(SetRecord, 665)
	MisResultAction(AddExp, 2700, 2700)
	MisResultAction(AddMoney,400,400)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 106 )	
	TriggerAction( 1, AddNextFlag, 665, 10, 1 )
	RegCurTrigger( 6651 )

----------------------------------��ս����ʿ
	DefineMission( 666, "�������� �������", 666 )
	
	MisBeginTalk( "<t><b��������> � ������� ������� ����� �� ������� �������. �������� �� ��� ��������!<n><t>�������� ���� �������� ���� � �����(1255,2974) <r10 ���������>!")
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 666)
	MisBeginCondition(NoRecord, 666)
	MisBeginAction(AddMission, 666)
	MisBeginAction(AddTrigger, 6661, TE_KILL, 200, 10 )
	MisCancelAction(ClearMission, 666)

	MisNeed(MIS_NEED_KILL, 200, 10, 10, 10)
	
	MisHelpTalk("<t>�� �� �������� ���� ��������.")
	MisResultTalk("<t>������ � ����, ��� �� ��������� ����� �� ��������������!")
	MisResultCondition(NoRecord, 666)
	MisResultCondition(HasMission, 666)
	MisResultCondition(HasFlag, 666, 19 )
	MisResultAction(ClearMission, 666)
	MisResultAction(SetRecord, 666)
	MisResultAction(AddExp, 3000, 3000)
	MisResultAction(AddMoney,417,417)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 200 )	
	TriggerAction( 1, AddNextFlag, 666, 10, 10 )
	RegCurTrigger( 6661 )

-----------------------------------����ʹ�
	DefineMission( 667, "������ �����", 667 )
	
	MisBeginTalk( "<t>�� �� ����� ������ �������� ������ ������ ���� ������! � �����(1507,2970) ������� <r������ ������> � ����� ������! ������� ��� <y10 ����� �����> ��� �� �� ������ �������� ����� ���� ����������������.")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 667)
	MisBeginCondition(NoRecord, 667)
	MisBeginAction(AddMission, 667)
	MisBeginAction(AddTrigger, 6671, TE_GETITEM, 1757, 10 )
	MisCancelAction(ClearMission, 667)

	MisNeed(MIS_NEED_ITEM, 1757, 10, 10, 10)
	
	MisHelpTalk("<t>���? ������ ��� ��� ������ ��� �� ���� ������ ��������?!")
	MisResultTalk("<t>�������! ��� ������ ���������!")
	MisResultCondition(NoRecord, 667)
	MisResultCondition(HasMission, 667)
	MisResultCondition(HasItem, 1757, 10)
	MisResultAction(TakeItem, 1757, 10 )
	MisResultAction(ClearMission, 667)
	MisResultAction(SetRecord, 667)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,849,849)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1757 )	
	TriggerAction( 1, AddNextFlag, 667, 10, 10 )
	RegCurTrigger( 6671 )

-----------------------------------ˮ��ñ
	DefineMission( 668, "���������� �������", 668 )
	
	MisBeginTalk( "<t>��! ��������� �� ������! ������ ��� ������? ����� � ����� ������ <r ��������-�������>. ��� ����� ����������� ��� <y������� ��������-�������>! � ���� � ��������!<n><t>��������� ���, ����������, 2 <y������� ��������-�������> �� <r��������-�������>.�� �� ������� � ����� (995,365)!")
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 668)
	MisBeginCondition(NoRecord, 668)
	MisBeginAction(AddMission, 668)
	MisBeginAction(AddTrigger, 6681, TE_GETITEM, 4102, 2 )
	MisCancelAction(ClearMission, 668)

	MisNeed(MIS_NEED_ITEM, 4102, 2, 10, 2)
	
	MisHelpTalk("<t>� ���� �������� ��� <y������� ��������-�������> ���� �� ��� ��� �� ������.")
	MisResultTalk("<t>��! �������, ��� ����� ��� ��������!")
	MisResultCondition(NoRecord, 668)
	MisResultCondition(HasMission, 668)
	MisResultCondition(HasItem, 4102, 2)
	MisResultAction(TakeItem, 4102, 2 )
	MisResultAction(ClearMission, 668)
	MisResultAction(SetRecord, 668)
	MisResultAction(AddExp, 120, 120)
	MisResultAction(AddMoney,299,299)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4102 )	
	TriggerAction( 1, AddNextFlag, 668, 10, 2 )
	RegCurTrigger( 6681 )

-----------------------------------����֮��
	DefineMission( 669, "������ �����", 669 )
	
	MisBeginTalk( "<t><b�����> �������� ������ � ����� ��������� ���������. ����� �������, ��� ���������� <y������ �����> ���������� ����������� �����. ��������� ��� ��� <y������ �����>, ��� �� � �������� ��� �������.")
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 669)
	MisBeginCondition(NoRecord, 669)
	MisBeginAction(AddMission, 669)
	MisBeginAction(AddTrigger, 6691, TE_GETITEM, 4418, 2 )
	MisCancelAction(ClearMission, 669)

	MisNeed(MIS_NEED_ITEM, 4418, 2, 10, 2)
	
	MisHelpTalk("<t>��� �� ��������� ��� ������� ��� ���������� 2 <y������ �����>.")
	MisResultTalk("<t>�������! � ��� �� ����� ��������� ���� ��������.")
	MisResultCondition(NoRecord, 669)
	MisResultCondition(HasMission, 669)
	MisResultCondition(HasItem, 4418, 2)
	MisResultAction(TakeItem, 4418, 2 )
	MisResultAction(ClearMission, 669)
	MisResultAction(SetRecord, 669)
	MisResultAction(AddExp, 120, 120)
	MisResultAction(AddMoney,299,299)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4418 )	
	TriggerAction( 1, AddNextFlag, 669, 10, 2 )
	RegCurTrigger( 6691 )

-----------------------------------����ˮ��
	DefineMission( 670, "��������� ��������", 670 )
	
	MisBeginTalk( "<t>��� ��������� ����� �������. ������, <r�����> �������� ������� � ���������� ������� � ���� ����� ����� �������� <y��������� ��������>. �� ������ �� �������� ��� 5 <y��������� ����������>, � �� ��� ������������ �� �� ���!<n><t>����� �� ������ � �����(1079,518).")
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginCondition(NoMission, 670)
	MisBeginCondition(NoRecord, 670)
	MisBeginAction(AddMission, 670)
	MisBeginAction(AddTrigger, 6701, TE_GETITEM, 4103, 5 )
	MisCancelAction(ClearMission, 670)

	MisNeed(MIS_NEED_ITEM, 4103, 5, 10, 5)
	
	MisHelpTalk("<t>����� ���� � ����������� �������� � � ����� �������, �� ��� ����� ��� ��������� ���������!")
	MisResultTalk("<t>������� ���! ��� ���� �������!")
	MisResultCondition(NoRecord, 670)
	MisResultCondition(HasMission, 670)
	MisResultCondition(HasItem, 4103, 5)
	MisResultAction(TakeItem, 4103, 5 )
	MisResultAction(ClearMission, 670)
	MisResultAction(SetRecord, 670)
	MisResultAction(AddExp, 150, 150)
	MisResultAction(AddMoney,318,318)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4103 )	
	TriggerAction( 1, AddNextFlag, 670, 10, 5 )
	RegCurTrigger( 6701 )

----------------------------------��¹����
	DefineMission( 671, "��������� ����", 671 )
	
	MisBeginTalk( "<t>�� ��������� �� ���� �������, �� � ���� ����� �������� ��������... � ����� ������� ����� ���������� �����! ��� �������� � ������� ����� ����� �����, ��� ���������� � ���� ���� �����������!<n><t>� ����������� ���� ���� �� ��� ��������� ��� ������������ � ������ � �����(885,333) <r10 �����>.")
	MisBeginCondition(LvCheck, ">", 11 )
	MisBeginCondition(NoMission, 671)
	MisBeginCondition(NoRecord, 671)
	MisBeginAction(AddMission, 671)
	MisBeginAction(AddTrigger, 6711, TE_KILL, 266, 10 )
	MisCancelAction(ClearMission, 671)

	MisNeed(MIS_NEED_KILL, 266, 10, 10, 10)
	
	MisHelpTalk("<t>� ��� ���������, �������� ��� ���� ����� �������, ������ 10 ����� � �����(885,333).")
	MisResultTalk("<t>�! ��� �������������! ��� ���� �������.")
	MisResultCondition(NoRecord, 671)
	MisResultCondition(HasMission, 671)
	MisResultCondition(HasFlag, 671, 19 )
	MisResultAction(ClearMission, 671)
	MisResultAction(SetRecord, 671)
	MisResultAction(AddExp, 190, 190)
	MisResultAction(AddMoney,169,169)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 266 )	
	TriggerAction( 1, AddNextFlag, 671, 10, 10 )
	RegCurTrigger( 6711 )

----------------------------------���ֵ�С����
	DefineMission( 672, "���������", 672 )
	
	MisBeginTalk( "<t>� �� �� ���� �� ���� ������ <r������� ���������>, ���� �� ��� �� �������!<n><t>��� ��������� � �������� � ������ ��� ����.<n><t>���������� ������ <r10 ������� ���������> � �����(885,333).")
	MisBeginCondition(LvCheck, ">", 12 )
	MisBeginCondition(NoMission, 672)
	MisBeginCondition(NoRecord, 672)
	MisBeginAction(AddMission, 672)
	MisBeginAction(AddTrigger, 6721, TE_KILL, 34, 10 )
	MisCancelAction(ClearMission, 672)

	MisNeed(MIS_NEED_KILL, 34, 10, 10, 10)
	
	MisHelpTalk("<t>��� ���� �� ������� ��������� �� ���� � ���������, �� ������� �������� ���� �� ��� �����������.")
	MisResultTalk("<t>������� ���, ������� ��� ��������� ��� ��� ������.")
	MisResultCondition(NoRecord, 672)
	MisResultCondition(HasMission, 672)
	MisResultCondition(HasFlag, 672, 19 )
	MisResultAction(ClearMission, 672)
	MisResultAction(SetRecord, 672)
	MisResultAction(AddExp, 240, 240)
	MisResultAction(AddMoney,180,180)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 34 )	
	TriggerAction( 1, AddNextFlag, 672, 10, 10 )
	RegCurTrigger( 6721 )

-----------------------------------��˼����
	DefineMission( 673, "������� ����� ������", 673 )
	
	MisBeginTalk( "<t>� ����� ����� ����� �������, ���� ��������� �� ������� <y2 ����������� ��������>, �� ������� ����� � ��� ������� �������.<n><t>��-�� ����� ���������� ����������, � ���� ��� ������ �����, ����� ���� ��� ��� ������� ����� ���� ���������...<n><t>��������� ��� <r2 ����������� ��������>. �� �� ������� ����� � <r��������-�������> � �����(738,426).")
	MisBeginCondition(LvCheck, ">", 13 )
	MisBeginCondition(NoMission, 673)
	MisBeginCondition(NoRecord, 673)
	MisBeginAction(AddMission, 673)
	MisBeginAction(AddTrigger, 6731, TE_GETITEM, 1839, 2 )
	MisCancelAction(ClearMission, 673)

	MisNeed(MIS_NEED_ITEM, 1839, 2, 10, 2)
	
	MisHelpTalk("<t>����� ��� �� ������� ����� ���� ������ ���������? � ��� �� � ��� ��������� �����?!")
	MisResultTalk("<t>�������, � ������� ��� ��� �������!")
	MisResultCondition(NoRecord, 673)
	MisResultCondition(HasMission, 673)
	MisResultCondition(HasItem, 1839, 2)
	MisResultAction(TakeItem, 1839, 2 )
	MisResultAction(ClearMission, 673)
	MisResultAction(SetRecord, 673)
	MisResultAction(AddExp, 290, 290)
	MisResultAction(AddMoney,384,384)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1839 )	
	TriggerAction( 1, AddNextFlag, 673, 10, 2 )
	RegCurTrigger( 6731 )


----------------------------------�鷳��ѩ����
	DefineMission( 674, "����������� ������� ����", 674 )
	
	MisBeginTalk( "<t>�� ������� ������� ����� ������� ��������������� ����! ��-�� ���� ����� ������� �������! ������ <r10 ������� ������� �����> � ��, �� ����� ������ ������� �� ���������� ���.")
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 674)
	MisBeginCondition(NoRecord, 674)
	MisBeginAction(AddMission, 674)
	MisBeginAction(AddTrigger, 6741, TE_KILL, 46, 10 )
	MisCancelAction(ClearMission, 674)

	MisNeed(MIS_NEED_KILL, 46, 10, 10, 10)
	
	MisHelpTalk("<t>�� ��� �� ���� �� ������� ��������� ��� ���.")
	MisResultTalk("<t>�� ����� �������: ������� ��� ��� �������.")
	MisResultCondition(NoRecord, 674)
	MisResultCondition(HasMission, 674)
	MisResultCondition(HasFlag, 674, 19 )
	MisResultAction(ClearMission, 674)
	MisResultAction(SetRecord, 674)
	MisResultAction(AddExp, 360, 360)
	MisResultAction(AddMoney,204,204)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 46 )	
	TriggerAction( 1, AddNextFlag, 674, 10, 10 )
	RegCurTrigger( 6741 )

-----------------------------------��������
	DefineMission( 675, "���������� ����������", 675 )
	
	MisBeginTalk( "<t>� ���� ������ ������� � � ���� ���� ���� ����������, �� � ���� ���� ������������ �����������.<n><t>��������� ��� ���������� <y5 ������ ������� ����> (743,358) � � ��� ����� �����������.")
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 675)
	MisBeginCondition(NoRecord, 675)
	MisBeginAction(AddMission, 675)
	MisBeginAction(AddTrigger, 6751, TE_GETITEM, 4427, 5 )
	MisCancelAction(ClearMission, 675)

	MisNeed(MIS_NEED_ITEM, 4427, 5, 10, 5)
	
	MisHelpTalk("<t>�� �� �������� ��� �� � ��� � ��� ������?")
	MisResultTalk("<t>���. ������� ���, ������ � ���� ������ �������.")
	MisResultCondition(NoRecord, 675)
	MisResultCondition(HasMission, 675)
	MisResultCondition(HasItem, 4427, 5)
	MisResultAction(TakeItem, 4427, 5 )
	MisResultAction(ClearMission, 675)
	MisResultAction(SetRecord, 675)
	MisResultAction(AddExp, 360, 360)
	MisResultAction(AddMoney,408,408)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4427 )	
	TriggerAction( 1, AddNextFlag, 675, 10, 5 )
	RegCurTrigger( 6751 )


----------------------------------��������Ⱦ
	DefineMission( 676, "����������� ������", 676 )
	
	MisBeginTalk( "<t>�� ��� ��� �������... �������������, ���������� ����� �� ������� ������ ���������, ��� �� ����� ����� �������� ��� ��������� <r�����������-������>. ��� ����� � ����� ������ ��������� � ������� � ��� �� ������. ������������� � �����(657,411) � ���������� �� ���� ���� <r10 ������������-�������>. �� � ������ ���������, ��� ������� ���, ��� ����� ������ �����������!")
	MisBeginCondition(LvCheck, ">", 15 )
	MisBeginCondition(NoMission, 676)
	MisBeginCondition(NoRecord, 676)
	MisBeginAction(AddMission, 676)
	MisBeginAction(AddTrigger, 6761, TE_KILL, 233, 10 )
	MisCancelAction(ClearMission, 676)

	MisNeed(MIS_NEED_KILL, 233, 10, 10, 10)
	
	MisHelpTalk("<t>���� �� ����� ��� ��� ���� ���������, � �� ��� ��� � ��������?")
	MisResultTalk("<t>������� ��� �������� �� ������. ������� ���!")
	MisResultCondition(NoRecord, 676)
	MisResultCondition(HasMission, 676)
	MisResultCondition(HasFlag, 676, 19 )
	MisResultAction(ClearMission, 676)
	MisResultAction(SetRecord, 676)
	MisResultAction(AddExp, 450, 450)
	MisResultAction(AddMoney,216,216)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 233 )	
	TriggerAction( 1, AddNextFlag, 676, 10, 10 )
	RegCurTrigger( 6761 )

-----------------------------------����ñ��
	DefineMission( 677, "������� ��������", 677 )
	
	MisBeginTalk( "<t>�� ������ �� ��������� �� ���� �������, �� ��� ����� ����� ���� ������... ��������� ��� <y2 ������� ��������>... ��� ������ ����� ��������, ��� � �� ���� ����� ���� �������. �� �� ������ � <r������������> � �����(657,411).")
	MisBeginCondition(LvCheck, ">", 15 )
	MisBeginCondition(NoMission, 677)
	MisBeginCondition(NoRecord, 677)
	MisBeginCondition(HasRecord, 668)
	MisBeginAction(AddMission, 677)
	MisBeginAction(AddTrigger, 6771, TE_GETITEM, 1840, 2 )
	MisCancelAction(ClearMission, 677)

	MisNeed(MIS_NEED_ITEM, 1840, 2, 10, 2)
	
	MisHelpTalk("<t>�� ����� ��� �� ��������?")
	MisResultTalk("<t>��! ��� ������ �����������. ������� ���!")
	MisResultCondition(NoRecord, 677)
	MisResultCondition(HasMission, 677)
	MisResultCondition(HasItem, 1840, 2)
	MisResultAction(TakeItem, 1840, 2 )
	MisResultAction(ClearMission, 677)
	MisResultAction(SetRecord, 677)
	MisResultAction(AddExp, 450, 450)
	MisResultAction(AddMoney,433,433)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1840 )	
	TriggerAction( 1, AddNextFlag, 677, 10, 2 )
	RegCurTrigger( 6771 )

----------------------------------����ѩ�ع�
	DefineMission( 678, "������� ������", 678 )
	
	MisBeginTalk( "<t>� �������� �����! ��� ��� ����� �������� ��� ������� � �����, � �������� � ��������� ������� �����!<n><t>������������� � �����(952,550) � ���������� <r10 ������� �������a>. ������� ������� ������� ������� � ���� �������� � ������ ����� ������ ����� �������� �������.")
	MisBeginCondition(LvCheck, ">", 16 )
	MisBeginCondition(NoMission, 678)
	MisBeginCondition(NoRecord, 678)
	MisBeginAction(AddMission, 678)
	MisBeginAction(AddTrigger, 6781, TE_KILL, 130, 10 )
	MisCancelAction(ClearMission, 678)

	MisNeed(MIS_NEED_KILL, 130, 10, 10, 10)
	
	MisHelpTalk("<t>�� ��� �� ������� ��, � ��� � ��� ��������.")
	MisResultTalk("<t>������� ���, �� ����� ��� �������.")
	MisResultCondition(NoRecord, 678)
	MisResultCondition(HasMission, 678)
	MisResultCondition(HasFlag, 678, 19 )
	MisResultAction(ClearMission, 678)
	MisResultAction(SetRecord, 678)
	MisResultAction(AddExp, 550, 550)
	MisResultAction(AddMoney,229,229)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 130 )	
	TriggerAction( 1, AddNextFlag, 678, 10, 10 )
	RegCurTrigger( 6781 )

-----------------------------------ѩ��Ģ��
	DefineMission( 679, "������� ����", 679 )
	
	MisBeginTalk( "<t>��� ���� ��� �� ��������� ��� ������������ �������, ������ � ������ ����������� �����, �� � ���� ��������� ���� ������� ������� �� ������.<n><t>��������� ��� <5 ������� ������> �� <r������� ���������>(952,550), ��� �� � ������� � ����� ����� ������ ����� ����������� ������ �����-������������ ���������.")
	MisBeginCondition(LvCheck, ">", 16 )
	MisBeginCondition(NoMission, 679)
	MisBeginCondition(NoRecord, 679)
	MisBeginAction(AddMission, 679)
	MisBeginAction(AddTrigger, 6791, TE_GETITEM, 4104, 5 )
	MisCancelAction(ClearMission, 679)

	MisNeed(MIS_NEED_ITEM, 4104, 5, 10, 5)
	
	MisHelpTalk("<t>�� ��� �� �������� ��� ������� ����!?")
	MisResultTalk("<t>��! ��� ���������. � ������ �� ����� �������� �����!")
	MisResultCondition(NoRecord, 679)
	MisResultCondition(HasMission, 679)
	MisResultCondition(HasItem, 4104, 5)
	MisResultAction(TakeItem, 4104, 5 )
	MisResultAction(ClearMission, 679)
	MisResultAction(SetRecord, 679)
	MisResultAction(AddExp, 550, 550)
	MisResultAction(AddMoney,459,459)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4104 )	
	TriggerAction( 1, AddNextFlag, 679, 10, 5 )
	RegCurTrigger( 6791 )


----------------------------------�ٶ۵�ѩ����ţ
	DefineMission( 680, "���������-��������� ������!", 680 )
	
	MisBeginTalk( "<t><r������� ������> ���� � �����������, �� �� ���� ����� ����������, � ����� �� ��� ��� ������.<n><t>� ���� ����� ����������� �� ��� � �����(657,334). ������ ��� <r10 ������� ������> ��� ����.")
	MisBeginCondition(LvCheck, ">", 17 )
	MisBeginCondition(NoMission, 680)
	MisBeginCondition(NoRecord, 680)
	MisBeginAction(AddMission, 680)
	MisBeginAction(AddTrigger, 6801, TE_KILL, 228, 10 )
	MisCancelAction(ClearMission, 680)

	MisNeed(MIS_NEED_KILL, 228, 10, 10, 10)
	
	MisHelpTalk("<t>��� ������� �������. ��� ���� �� ������! ����� � ������ 10 ������� ������ � �����(657,334)!")
	MisResultTalk("<t>�������� ��� �������, ������ � �� ���� �� ��� �����������!")
	MisResultCondition(NoRecord, 680)
	MisResultCondition(HasMission, 680)
	MisResultCondition(HasFlag, 680, 19 )
	MisResultAction(ClearMission, 680)
	MisResultAction(SetRecord, 680)
	MisResultAction(AddExp, 650, 650)
	MisResultAction(AddMoney,242,242)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 228 )	
	TriggerAction( 1, AddNextFlag, 680, 10, 10 )
	RegCurTrigger( 6801 )

-----------------------------------����ʯ
	DefineMission( 681, "��������� ������", 681 )
	
	MisBeginTalk( "<t>��� �������� <r������� ������> ��������� ������ <y��������� ������>.<n><t>���� ������ ��������� ���� ������ ����, ��� �� ������ ���� ������.<n><t>��������� ��� ��� ������ <y5 ��������� �������> �� ������� ������. ��� ���������� � �����(657,334).")
	MisBeginCondition(LvCheck, ">", 18 )
	MisBeginCondition(NoMission, 681)
	MisBeginCondition(NoRecord, 681)
	MisBeginAction(AddMission, 681)
	MisBeginAction(AddTrigger, 6811, TE_GETITEM, 4105, 5 )
	MisCancelAction(ClearMission, 681)

	MisNeed(MIS_NEED_ITEM, 4105, 5, 10, 5)
	
	MisHelpTalk("<t>� �� ���� � ���� ������������� ���� �� �� ���������� ��������� �� ���������!")
	MisResultTalk("<t>������� ��� ��������. ��� ���� �������!")
	MisResultCondition(NoRecord, 681)
	MisResultCondition(HasMission, 681)
	MisResultCondition(HasItem, 4105, 5)
	MisResultAction(TakeItem, 4105, 5 )
	MisResultAction(ClearMission, 681)
	MisResultAction(SetRecord, 681)
	MisResultAction(AddExp, 750, 750)
	MisResultAction(AddMoney,513,513)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4105 )	
	TriggerAction( 1, AddNextFlag, 681, 10, 5 )
	RegCurTrigger( 6811 )

-----------------------------------��ţ����
	DefineMission( 682, "���� ������", 682 )
	
	MisBeginTalk( "<t>� ������ ����������� �� ���������������� <r������� ������> ��������� � �����(657,334).<n><t>��� ���������� ������... ������ ��� ��� ������ ��������� �� ����������� �������� � �������� ����������.<n><t>��������� ��� <y5 ������������ ����� ������>, ��� �� � ���� ����������� � ���� �������.")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 682)
	MisBeginCondition(NoRecord, 682)
	MisBeginAction(AddMission, 682)
	MisBeginAction(AddTrigger, 6821, TE_GETITEM, 4428, 5 )
	MisCancelAction(ClearMission, 682)

	MisNeed(MIS_NEED_ITEM, 4428, 5, 10, 5)
	
	MisHelpTalk("<t>�� ��� ��������� ����� 5 ������������ ������ ������.")
	MisResultTalk("<t>����� ������! �� ������� ��� � ���� ������!")
	MisResultCondition(NoRecord, 682)
	MisResultCondition(HasMission, 682)
	MisResultCondition(HasItem, 4428, 5)
	MisResultAction(TakeItem, 4428, 5 )
	MisResultAction(ClearMission, 682)
	MisResultAction(SetRecord, 682)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,541,541)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4428 )	
	TriggerAction( 1, AddNextFlag, 682, 10, 5 )
	RegCurTrigger( 6821 )

-----------------------------------Ѱ�ұ�ѩ֮��
	DefineMission( 683, "������ �������� ������", 683 )
	
	MisBeginTalk( "<t>��������! �������� ���! ��� ��������� ��������� �������� ������� � �������! ������ <y��������� ������> �� <r������� ��������> � �����(1055,738) ������ �������� ���.<n><t>��������� ��� <y5 ��������� ������>!")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 683)
	MisBeginCondition(NoRecord, 683)
	MisBeginAction(AddMission, 683)
	MisBeginAction(AddTrigger, 6831, TE_GETITEM, 4431, 5 )
	MisCancelAction(ClearMission, 683)

	MisNeed(MIS_NEED_ITEM, 4431, 5, 10, 5)
	
	MisHelpTalk("<t>���������, ��� ��������� ��� ������!")
	MisResultTalk("<t>��� ����� �������, ��� � ������� ��� �� ������� ������ ������ ���!")
	MisResultCondition(NoRecord, 683)
	MisResultCondition(HasMission, 683)
	MisResultCondition(HasItem, 4431, 5)
	MisResultAction(TakeItem, 4431, 5 )
	MisResultAction(ClearMission, 683)
	MisResultAction(SetRecord, 683)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,541,541)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4431 )	
	TriggerAction( 1, AddNextFlag, 683, 10, 5 )
	RegCurTrigger( 6831 )


----------------------------------����ѩ����
	DefineMission( 684, "������� ��������", 684 )
	
	MisBeginTalk( "<t>����� �����, ��� <r������� ��������> �������� ������������ ������� ��������� ���!<n><t>���� ��� � �����, �� �� ���� ������� ��� ���� ����������������.<n><t>������������� � �����(1055,738) � ������ <r10 ������� ��������>, ���� ������������� ���!")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 684)
	MisBeginCondition(NoRecord, 684)
	MisBeginAction(AddMission, 684)
	MisBeginAction(AddTrigger, 6841, TE_KILL, 255, 10 )
	MisCancelAction(ClearMission, 684)

	MisNeed(MIS_NEED_KILL, 255, 10, 10, 10)
	
	MisHelpTalk("<t>�� ��� ����� 10 ������� ��������? ���? ��� ���� �� ����?")
	MisResultTalk("<t>������� ���! �� ������������� ���.")
	MisResultCondition(NoRecord, 684)
	MisResultCondition(HasMission, 684)
	MisResultCondition(HasFlag, 684, 19 )
	MisResultAction(ClearMission, 684)
	MisResultAction(SetRecord, 684)
	MisResultAction(AddExp, 880, 880)
	MisResultAction(AddMoney,270,270)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 255 )	
	TriggerAction( 1, AddNextFlag, 684, 10, 10 )
	RegCurTrigger( 6841 )

----------------------------------���ܳ���
	DefineMission( 685, "������ ��������", 685 )
	
	MisBeginTalk( "<t>����� �������� ��� ������� � ������ ����� ������! ����� �� �������� ����� ��� ����� � �������� �� ���� ��� �� �� �� ������� �� ����, �� �� ����� � �������� \"��������\". ��� ����� �������� � ��������� � �����(958,661), ������ ��� �� ���� ����� �� ����, ������� �� �� �����. ������������� ���� � ������ <r10 ������� ��������>. ��� ������ �� ������� ���������!")
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(NoMission, 685)
	MisBeginCondition(NoRecord, 685)
	MisBeginAction(AddMission, 685)
	MisBeginAction(AddTrigger, 6851, TE_KILL, 142, 10 )
	MisCancelAction(ClearMission, 685)

	MisNeed(MIS_NEED_KILL, 142, 10, 10, 10)
	
	MisHelpTalk("<t>������� �� ��� ��� ����� � �������� �� ��������!")
	MisResultTalk("<t>������� ���, ������ ��� ������ �� ����� ���������!")
	MisResultCondition(NoRecord, 685)
	MisResultCondition(HasMission, 685)
	MisResultCondition(HasFlag, 685, 19 )
	MisResultAction(ClearMission, 685)
	MisResultAction(SetRecord, 685)
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney,285,285)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 142 )	
	TriggerAction( 1, AddNextFlag, 685, 10, 10 )
	RegCurTrigger( 6851 )

-----------------------------------ѩ֮��
	DefineMission( 686, "������� �����", 686 )
	
	MisBeginTalk( "<t>� ������ ���� � ������� � ������� <r������� ��������>. ������� ��� ������� ������ ������ ����. � ����� ����� �� � ��� �����������, �� ��� ������ �� ��� ��� �� �������� ����������� � � ��� ������� ������, ��� �� ��� ������� ��� � ������ ����� �� ����.<n><t>�� ����� �� �� �������� ��� <y5 ����������� ��������>, ��� �� �������������� � �� �������������.<n><t>����� �����, ��� ��� ������� � �����(873,646).")
	MisBeginCondition(LvCheck, ">", 21 )
	MisBeginCondition(NoMission, 686)
	MisBeginCondition(NoRecord, 686)
	MisBeginAction(AddMission, 686)
	MisBeginAction(AddTrigger, 6861, TE_GETITEM, 4438, 5 )
	MisCancelAction(ClearMission, 686)

	MisNeed(MIS_NEED_ITEM, 4438, 5, 10, 5)
	
	MisHelpTalk("<t>�������� ��� ����� �������������� ������������� ������� ��������!")
	MisResultTalk("<t>�������! � ������ ����, ��� ��� ����������!")
	MisResultCondition(NoRecord, 686)
	MisResultCondition(HasMission, 686)
	MisResultCondition(HasItem, 4438, 5)
	MisResultAction(TakeItem, 4438, 5 )
	MisResultAction(ClearMission, 686)
	MisResultAction(SetRecord, 686)
	MisResultAction(AddExp, 1200, 1200)
	MisResultAction(AddMoney,601,601)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4438 )	
	TriggerAction( 1, AddNextFlag, 686, 10, 5 )
	RegCurTrigger( 6861 )


-----------------------------------��ѩ��ʯ
	DefineMission( 687, "������� ��������", 687 )
	
	MisBeginTalk( "<t>�� ����, �� ������� ��������� �������? ������ ����� ������ ����� �� ׸���� ����� ��� <y������� ��������> �� <r������� ��������> ��������� � �����(873,646). ��� ��� ����������, ��� �� ������������ ����� � �������� ���������� � �����!<n><t>��������� ��� <y5 ������� ����������>, ��� �� � ���� ������� ����������� ��� ��� � ������� ��� ����� �������� ���������� � ������� ������.")
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 687)
	MisBeginCondition(NoRecord, 687)
	MisBeginAction(AddMission, 687)
	MisBeginAction(AddTrigger, 6871, TE_GETITEM, 4106, 5 )
	MisCancelAction(ClearMission, 687)

	MisNeed(MIS_NEED_ITEM, 4106, 5, 10, 5)
	
	MisHelpTalk("<t>�� �� �� �������, ������ ������ � �� ����� � �� � ��� ����������.")
	MisResultTalk("<t>� ���� �� �������� ��� ��, ��� � ��������, ��� ���� ��������������!")
	MisResultCondition(NoRecord, 687)
	MisResultCondition(HasMission, 687)
	MisResultCondition(HasItem, 4106, 5)
	MisResultAction(TakeItem, 4106, 5 )
	MisResultAction(ClearMission, 687)
	MisResultAction(SetRecord, 687)
	MisResultAction(AddExp, 1400, 1400)
	MisResultAction(AddMoney,316,316)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4106 )	
	TriggerAction( 1, AddNextFlag, 687, 10, 5 )
	RegCurTrigger( 6871 )

----------------------------------��ԹѩŮ
	DefineMission( 688, "�������� ������� ��������", 688 )
	
	MisBeginTalk( "<t>����� ������, ��� �� ���! ��� �� ���������� �� ���� <r������� ��������>? ��� ����� ������!<n><t>���� �� ��������� ��� ����� ������� ������� ����!<n><t>�� ��� �� ������? ���������� ��������� ��� ����... ������������� � �����(873,646) � ������ <r10 ������� �������>.")
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 688)
	MisBeginCondition(NoRecord, 688)
	MisBeginAction(AddMission, 688)
	MisBeginAction(AddTrigger, 6881, TE_KILL, 281, 10 )
	MisCancelAction(ClearMission, 688)

	MisNeed(MIS_NEED_KILL, 281, 10, 10, 10)
	
	MisHelpTalk("<t>� �� ��� ������� ��� ��� ������, ���������� ��� ���.")
	MisResultTalk("<t>�� ���������� � ���� �������. � � ��� ��������!")
	MisResultCondition(NoRecord, 688)
	MisResultCondition(HasMission, 688)
	MisResultCondition(HasFlag, 688, 19 )
	MisResultAction(ClearMission, 688)
	MisResultAction(SetRecord, 688)
	MisResultAction(AddExp, 1400, 1400)
	MisResultAction(AddMoney,316,316)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 281 )	
	TriggerAction( 1, AddNextFlag, 688, 10, 10 )
	RegCurTrigger( 6881 )

----------------------------------����ѩ����
	DefineMission( 689, "��������� ������", 689 )
	
	MisBeginTalk( "<t>��������! ��������! �� ���� ������� ���� <r������� ������>! ��� ��� �������!<n><t>���������� ������ <r10 ������� ������> � �����(965,775).")
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 689)
	MisBeginCondition(NoRecord, 689)
	MisBeginAction(AddMission, 689)
	MisBeginAction(AddTrigger, 6891, TE_KILL, 137, 10 )
	MisCancelAction(ClearMission, 689)

	MisNeed(MIS_NEED_KILL, 137, 10, 10, 10)
	
	MisHelpTalk("<t>��������!")
	MisResultTalk("<t>��! ������� ���!")
	MisResultCondition(NoRecord, 689)
	MisResultCondition(HasMission, 689)
	MisResultCondition(HasFlag, 689, 19 )
	MisResultAction(ClearMission, 689)
	MisResultAction(SetRecord, 689)
	MisResultAction(AddExp, 1600, 1600)
	MisResultAction(AddMoney,332,332)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 137 )	
	TriggerAction( 1, AddNextFlag, 689, 10, 10 )
	RegCurTrigger( 6891 )

-----------------------------------Ӫ�����߸�
	DefineMission( 690, "����������� ��������", 690 )
	
	MisBeginTalk( "<t>�� ��� ��� ������� �������!<n><t>� ��� ���� ����������� <y������� ����>, �� ��� ����� �������� ������ �� <r������� �������> ��������� � �����(891,750).<n><t>���������� �������� ���, � ��� ���� �������� <y�������� ����>.")
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 690)
	MisBeginCondition(NoRecord, 690)
	MisBeginAction(AddMission, 690)
	MisBeginAction(AddTrigger, 6901, TE_GETITEM, 4442, 5 )
	MisCancelAction(ClearMission, 690)

	MisNeed(MIS_NEED_ITEM, 4442, 5, 10, 5)
	
	MisHelpTalk("<t>�� ��� �� ������?")
	MisResultTalk("<t>��� ���... ��� ��������� ���������.")
	MisResultCondition(NoRecord, 690)
	MisResultCondition(HasMission, 690)
	MisResultCondition(HasItem, 4442, 5)
	MisResultAction(TakeItem, 4442, 5 )
	MisResultAction(ClearMission, 690)
	MisResultAction(SetRecord, 690)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,697,697)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4442 )	
	TriggerAction( 1, AddNextFlag, 690, 10, 5 )
	RegCurTrigger( 6901 )

----------------------------------�������ڹ�
	DefineMission( 691, "���������� ��������", 691 )
	
	MisBeginTalk( "<t>���� ���! � ������ ��� ����� �������� ������� ����� �������.<n><t>��� ��� ������� ��������, �� � �������� �� ����� �������. � ������, ��� �� �������� <r�������� ����������>.<n><t>�� ����� �� �� ����� <r10 ������� �������> � ����� (930,792), ����� �������� ��� ������ � ���?")
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 691)
	MisBeginCondition(NoRecord, 691)
	MisBeginAction(AddMission, 691)
	MisBeginAction(AddTrigger, 6911, TE_KILL, 265, 10 )
	MisCancelAction(ClearMission, 691)

	MisNeed(MIS_NEED_KILL, 265, 10, 10, 10)
	
	MisHelpTalk("<t>� ��� ����� ��!")
	MisResultTalk("<t>������� ���, ��� ������ �� ��� �������!")
	MisResultCondition(NoRecord, 691)
	MisResultCondition(HasMission, 691)
	MisResultCondition(HasFlag, 691, 19 )
	MisResultAction(ClearMission, 691)
	MisResultAction(SetRecord, 691)
	MisResultAction(AddExp, 1800, 1800)
	MisResultAction(AddMoney,348,348)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 265 )	
	TriggerAction( 1, AddNextFlag, 691, 10, 10 )
	RegCurTrigger( 6911 )

----------------------------------Ұ��Ӳ��з
	DefineMission( 692, "�������� ������", 692 )
	
	MisBeginTalk( "<t>���� ���! ����� ����� <r�����������> ������ ���� ����� ������! �� ��� ��� �������?! �� �������� �� �� ��� ��������� �� ����? ������������� � �����(994,857) � ������ <r10 �����������>, ��� �� ������ ���� �� �������!")
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 692)
	MisBeginCondition(NoRecord, 692)
	MisBeginAction(AddMission, 692)
	MisBeginAction(AddTrigger, 6921, TE_KILL, 143, 10 )
	MisCancelAction(ClearMission, 692)

	MisNeed(MIS_NEED_KILL, 143, 10, 10, 10)
	
	MisHelpTalk("<t>���������� ������ 10 ����������� � �����(994,857).")
	MisResultTalk("<t>��-��! ������ �� ����� ��������� �������� �� ������� ������� ������.")
	MisResultCondition(NoRecord, 692)
	MisResultCondition(HasMission, 692)
	MisResultCondition(HasFlag, 692, 19 )
	MisResultAction(ClearMission, 692)
	MisResultAction(SetRecord, 692)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,365,365)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 143 )	
	TriggerAction( 1, AddNextFlag, 692, 10, 10 )
	RegCurTrigger( 6921 )

-----------------------------------����з�ѽ�
	DefineMission( 693, "���� �� �������� ���", 693 )
	
	MisBeginTalk( "<t>����� � ������ ���� �������� ����, � ���� ��������� ����� ����������� ������� �� <y��� ����������>. �������� ��� � �����������, ��� ����� ��� ���� <y5 ��� ����������> ��������� � �����(994,857).")
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 693)
	MisBeginCondition(NoRecord, 693)
	MisBeginAction(AddMission, 693)
	MisBeginAction(AddTrigger, 6931, TE_GETITEM, 4107, 5 )
	MisCancelAction(ClearMission, 693)

	MisNeed(MIS_NEED_ITEM, 4107, 5, 10, 5)
	
	MisHelpTalk("<t>�� �������� � �� ���� ������� ���� ������... ����� � ��������� ��� <y���� ����������>, ���� � �� ����������!")
	MisResultTalk("<t>�������! � �� ����� ��� �� �� ����� ������� �������!")
	MisResultCondition(NoRecord, 693)
	MisResultCondition(HasMission, 693)
	MisResultCondition(HasItem, 4107, 5)
	MisResultAction(TakeItem, 4107, 5 )
	MisResultAction(ClearMission, 693)
	MisResultAction(SetRecord, 693)
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney,730,730)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4107 )	
	TriggerAction( 1, AddNextFlag, 693, 10, 5 )
	RegCurTrigger( 6931 )

-----------------------------------��ʳר��
	DefineMission( 694, "����������� ������", 694 )
	
	MisBeginTalk( "<t>�� ��������� ����� �� ���� <y������������ ���� ������>? ���? �! �� ������ ��������, � ����� ����� <y������������ ���� ������>.<n><t>��������� ��� �� � ������� 5 ���� � � ��� ����� �����������! ����� �� �� ������� � �����(802,750). ����� ��� � �������!")
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 694)
	MisBeginCondition(NoRecord, 694)
	MisBeginAction(AddMission, 694)
	MisBeginAction(AddTrigger, 6941, TE_GETITEM, 4464, 5 )
	MisCancelAction(ClearMission, 694)

	MisNeed(MIS_NEED_ITEM, 4464, 5, 10, 5)
	
	MisHelpTalk("<t>�� ��� �� �������� ��� ������������ ���� ������? ��� ����! �� � ��� ��� � ���!")
	MisResultTalk("<t>����... ��� ���������!")
	MisResultCondition(NoRecord, 694)
	MisResultCondition(HasMission, 694)
	MisResultCondition(HasItem, 4464, 5)
	MisResultAction(TakeItem, 4464, 5 )
	MisResultAction(ClearMission, 694)
	MisResultAction(SetRecord, 694)
	MisResultAction(AddExp, 2400, 2400)
	MisResultAction(AddMoney,765,765)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4464 )	
	TriggerAction( 1, AddNextFlag, 694, 10, 5 )
	RegCurTrigger( 6941 )

-----------------------------------�ɼ�����֮��
	DefineMission( 695, "������� ���������� ������", 695 )
	
	MisBeginTalk( "<t>��������! � ��� �� ������� ��� ���� �������? �������! ��� ���� ���������� ������ � ��� ���������� <r5 ���������� ������> �� <r�������� ����>. �� ������ <r������� ���> � �����(1060,805). ������������, ��� ���� ��������� ������� �������������� ���� ��� ������� ������ <y5 ���������� ������>.")
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 695)
	MisBeginCondition(NoRecord, 695)
	MisBeginAction(AddMission, 695)
	MisBeginAction(AddTrigger, 6951, TE_GETITEM, 4481, 5 )
	MisCancelAction(ClearMission, 695)

	MisNeed(MIS_NEED_ITEM, 4481, 5, 10, 5)
	
	MisHelpTalk("<t>������������, � ������� ����� ����!")
	MisResultTalk("<t>������� ��� �� ������, ��� ���� �������.")
	MisResultCondition(NoRecord, 695)
	MisResultCondition(HasMission, 695)
	MisResultCondition(HasItem, 4481, 5)
	MisResultAction(TakeItem, 4481, 5 )
	MisResultAction(ClearMission, 695)
	MisResultAction(SetRecord, 695)
	MisResultAction(AddExp, 2700, 2700)
	MisResultAction(AddMoney,800,800)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4481 )	
	TriggerAction( 1, AddNextFlag, 695, 10, 5 )
	RegCurTrigger( 6951 )

----------------------------------���˵�ѩ����
	DefineMission( 696, "������� ��������", 696 )
	
	MisBeginTalk( "<t><r������� ��������> ��������� ������ ������ ������� �������! �� ������� �� �� �� ������� ����� <r10 ������� ��������> � �����(908,842).")
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 696)
	MisBeginCondition(NoRecord, 696)
	MisBeginAction(AddMission, 696)
	MisBeginAction(AddTrigger, 6961, TE_KILL, 256, 10 )
	MisCancelAction(ClearMission, 696)

	MisNeed(MIS_NEED_KILL, 256, 10, 10, 10)
	
	MisHelpTalk("<t>����, ����������, 10 ������� ��������")
	MisResultTalk("<t>�� ��������� �����!")
	MisResultCondition(NoRecord, 696)
	MisResultCondition(HasMission, 696)
	MisResultCondition(HasFlag, 696, 19 )
	MisResultAction(ClearMission, 696)
	MisResultAction(SetRecord, 696)
	MisResultAction(AddExp, 3000, 3000)
	MisResultAction(AddMoney,417,417)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 256 )	
	TriggerAction( 1, AddNextFlag, 696, 10, 10 )
	RegCurTrigger( 6961 )

----------------------------------ԭʼѩ��
	DefineMission( 697, "����������� ������� �������", 697 )
	
	MisBeginTalk( "<t>������! �� ������ ��������, ��� �� ��������� ������ � �������� �����? �������! � ��� ���������� ���� ��� �������!<n><t>������ <r10 ����> � �����(1495,667) � �� ���� ��������, ��� �� �����!")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 697)
	MisBeginCondition(NoRecord, 697)
	MisBeginAction(AddMission, 697)
	MisBeginAction(AddTrigger, 6971, TE_KILL, 98, 10 )
	MisCancelAction(ClearMission, 697)

	MisNeed(MIS_NEED_KILL, 98, 10, 10, 10)
	
	MisHelpTalk("<t>��... ����� ������ ��� �� ����.....")
	MisResultTalk("<t>� ��� � � �� ���������� � ��� �� �� ������.")
	MisResultCondition(NoRecord, 697)
	MisResultCondition(HasMission, 697)
	MisResultCondition(HasFlag, 697, 19 )
	MisResultAction(ClearMission, 697)
	MisResultAction(SetRecord, 697)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 98 )	
	TriggerAction( 1, AddNextFlag, 697, 10, 10 )
	RegCurTrigger( 6971 )

-----------------------------------ʧ���¼�
	DefineMission( 698, "���������� �����", 698 )
	
	MisBeginTalk( "<t>� ������ ����� ��������� ���� � ��� ������� ��� ����� ����� ���� ��������� � �����(1495,667). ������ �� � ��������� � �������������� ������ ��� ���� <y5 ������ ����>.")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 698)
	MisBeginCondition(NoRecord, 698)
	MisBeginAction(AddMission, 698)
	MisBeginAction(AddTrigger, 6981, TE_GETITEM, 4446, 5 )
	MisCancelAction(ClearMission, 698)

	MisNeed(MIS_NEED_ITEM, 4446, 5, 10, 5)
	
	MisHelpTalk("<t>�� �� �����? ��-��-��! �� �������! � �� ���� ������������� �� ������!")
	MisResultTalk("<t>�� ��������� �������!")
	MisResultCondition(NoRecord, 698)
	MisResultCondition(HasMission, 698)
	MisResultCondition(HasItem, 4446, 5)
	MisResultAction(TakeItem, 4446, 5 )
	MisResultAction(ClearMission, 698)
	MisResultAction(SetRecord, 698)
	MisResultAction(AddExp, 3400, 3400)
	MisResultAction(AddMoney,849,849)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4446 )	
	TriggerAction( 1, AddNextFlag, 698, 10, 5 )
	RegCurTrigger( 6981 )

----------------------------------��ǿ��ʤ����
	DefineMission( 699, "������ ��� ��������!", 699 )
	
	MisBeginTalk( "<t>��,��! ��� �������! � ����� �������� �� ������� ������! ��� �������� ���������� ���� ������! ������ <r10 ������ �����������> � �����(1453,560), ����� � ��� �������� ��� �������� �� ������� ��������� ����!")
	MisBeginCondition(LvCheck, ">", 30 )
	MisBeginCondition(NoMission, 699)
	MisBeginCondition(NoRecord, 699)
	MisBeginAction(AddMission, 699)
	MisBeginAction(AddTrigger, 6991, TE_KILL, 296, 10 )
	MisCancelAction(ClearMission, 699)

	MisNeed(MIS_NEED_KILL, 296, 10, 10, 10)
	
	MisHelpTalk("<t>����� �� ����� � ��������� � ������� ������������!")
	MisResultTalk("<t>��! � ���� �� ���� ��� ��� � �����������!")
	MisResultCondition(NoRecord, 699)
	MisResultCondition(HasMission, 699)
	MisResultCondition(HasFlag, 699, 19 )
	MisResultAction(ClearMission, 699)
	MisResultAction(SetRecord, 699)
	MisResultAction(AddExp, 3900, 3900)
	MisResultAction(AddMoney,431,431)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 296 )	
	TriggerAction( 1, AddNextFlag, 699, 10, 10 )
	RegCurTrigger( 6991 )

----------------------------------�����ѩ����
	DefineMission( 800, "������� ��������", 800 )
	
	MisBeginTalk( "<t>� ��� ������� �� ������������ �������� � �����������! �� ���� � �� � ����� ���������� �������������� � ��������� <r������� ��������>. ��� ��� �����������, ��� �������� �� ����, ����� ��� ��� ����� ���� ����, �� ��� ����� ����� ����� ������ � �������� ��-�� �� �����������! ������������� � �����(1746,530) � �������� <r10 ������� ��������>!")
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 800)
	MisBeginCondition(NoRecord, 800)
	MisBeginAction(AddMission, 800)
	MisBeginAction(AddTrigger, 8001, TE_KILL, 257, 10 )
	MisCancelAction(ClearMission, 800)

	MisNeed(MIS_NEED_KILL, 257, 10, 10, 10)
	
	MisHelpTalk("<t> ������ 10 <r������� ��������>")
	MisResultTalk("<t> ������ ������� � ������������, ������� ���.")
	MisResultCondition(NoRecord, 800)
	MisResultCondition(HasMission, 800)
	MisResultCondition(HasFlag, 800, 19 )
	MisResultAction(ClearMission, 800)
	MisResultAction(SetRecord, 800)
	MisResultAction(AddExp, 4900, 4900)
	MisResultAction(AddMoney,446,446)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 257 )	
	TriggerAction( 1, AddNextFlag, 800, 10, 10 )
	RegCurTrigger( 8001 )

-----------------------------------��걦ʯ
	DefineMission( 801, "�������� ����", 801 )
	
	MisBeginTalk( "<t>�� ������ � ������ ���������� ������� ���������� � ����. � ���� ���� ���-�� ������! ���� ����� ��������� � �����(1746,530). � ��� ������ ������� <r������� ��������> � �������� ������ ��� ����� � ����� ���������������� ���������.<n><t>������������� � �����(1746,530) � ��������� ��� � <r������� ��������> <y5 ���������� ����>, ��� �� �������� ��������� ��� � ������������� ����� ��� ���.")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 801)
	MisBeginCondition(NoRecord, 801)
	MisBeginAction(AddMission, 801)
	MisBeginAction(AddTrigger, 8011, TE_GETITEM, 4108, 5 )
	MisCancelAction(ClearMission, 801)

	MisNeed(MIS_NEED_ITEM, 4108, 5, 10, 5)
	
	MisHelpTalk("<t> �� ��������� 5 <y���������� ����>?")
	MisResultTalk("<t>��! ������� ���!<n><t>� ������ �� �������� ��������� ���� � ����� ��� ����� ����������� �������������!")
	MisResultCondition(NoRecord, 801)
	MisResultCondition(HasMission, 801)
	MisResultCondition(HasItem, 4108, 5)
	MisResultAction(TakeItem, 4108, 5 )
	MisResultAction(ClearMission, 801)
	MisResultAction(SetRecord, 801)
	MisResultAction(AddExp, 5500, 5500)
	MisResultAction(AddMoney,907,907)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4108 )	
	TriggerAction( 1, AddNextFlag, 801, 10, 5 )
	RegCurTrigger( 8011 )

----------------------------------��ɱ�޹�
	DefineMission( 802, "�������� ���������", 802 )
	
	MisBeginTalk( "<t>� ����, ����� �� ����� <r10 ������ �������> ��� ����! ������ ������ ���, ������ ��� ��� �� ��������.<n><t>� ��� �����������.")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 802)
	MisBeginCondition(NoRecord, 802)
	MisBeginAction(AddMission, 802)
	MisBeginAction(AddTrigger, 8021, TE_KILL, 141, 10 )
	MisCancelAction(ClearMission, 802)

	MisNeed(MIS_NEED_KILL, 141, 10, 10, 10)
	
	MisHelpTalk("<t>��� �������, ��� �� ������� ��� ������. � �� ���� ����� ������.")
	MisResultTalk("<t>�������! ��� ���� �������.")
	MisResultCondition(NoRecord, 802)
	MisResultCondition(HasMission, 802)
	MisResultCondition(HasFlag, 802, 19 )
	MisResultAction(ClearMission, 802)
	MisResultAction(SetRecord, 802)
	MisResultAction(AddExp, 6200, 6200)
	MisResultAction(AddMoney,461,461)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 141 )	
	TriggerAction( 1, AddNextFlag, 802, 10, 10 )
	RegCurTrigger( 8021 )

-----------------------------------�������ϵ��˿�
	DefineMission( 803, "����������� ����", 803 )
	
	MisBeginTalk( "<t>�� ��� ����� � ��� ����� <r�������� ������>. � ���� �� �� ������ � ��� �� � ������� ������, �� ������� ������ �� ��������� ������ ������������� ����� � ���� ������ ��������.<n><t>��! � ���� �������� �������� � � ������, ��� <y����������� ��������� �������> �� <r������� ��������> ��������� � �����(2165,462)�������� �������� ���� �� �������.<n><t>��������� ��� <y5 ����������� ���������� ��������>!")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 803)
	MisBeginCondition(NoRecord, 803)
	MisBeginAction(AddMission, 803)
	MisBeginAction(AddTrigger, 8031, TE_GETITEM, 4468, 5 )
	MisCancelAction(ClearMission, 803)

	MisNeed(MIS_NEED_ITEM, 4468, 5, 10, 5)
	
	MisHelpTalk("<t>���� �� ��� �� ��������� 5 ����������� ���������� ��������, �� � ���� �� ��������!")
	MisResultTalk("������� ���, �� ������ ��� �����.")
	MisResultCondition(NoRecord, 803)
	MisResultCondition(HasMission, 803)
	MisResultCondition(HasItem, 4468, 5)
	MisResultAction(TakeItem, 4468, 5 )
	MisResultAction(ClearMission, 803)
	MisResultAction(SetRecord, 803)
	MisResultAction(AddExp, 6900, 6900)
	MisResultAction(AddMoney,939,939)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4468 )	
	TriggerAction( 1, AddNextFlag, 803, 10, 5 )
	RegCurTrigger( 8031 )

----------------------------------����֮��
	DefineMission( 804, "�������� ����", 804 )
	
	MisBeginTalk( "<t>��, �� ������ ��� <r�������� ����> � �����(226,590)? � ������, ��� ��� ���� �������� ������, �� ��-�� ����� ������ ���� ���������� � ���� ������� ��������!<n><t>��� ���� ���������� ��� � ��������� ����� �� �����.<n><t>���� ���, ������ ��� � ������ �� ����� ��������� ��� ������! ���� <r10 �������� ����>. ���� �� ������� ����� �����! ��� �� ���������?!")
	MisBeginCondition(LvCheck, ">", 36 )
	MisBeginCondition(NoMission, 804)
	MisBeginCondition(NoRecord, 804)
	MisBeginAction(AddMission, 804)
	MisBeginAction(AddTrigger, 8041, TE_KILL, 297, 10 )
	MisCancelAction(ClearMission, 804)

	MisNeed(MIS_NEED_KILL, 297, 10, 10, 10)
	
	MisHelpTalk("<t>�� ��� �� ����� 10 �������� ����?")
	MisResultTalk("<t>������� �� ������! �� ������� ����� �����!")
	MisResultCondition(NoRecord, 804)
	MisResultCondition(HasMission, 804)
	MisResultCondition(HasFlag, 804, 19 )
	MisResultAction(ClearMission, 804)
	MisResultAction(SetRecord, 804)
	MisResultAction(AddExp, 7700, 7700)
	MisResultAction(AddMoney,477,477)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 297 )	
	TriggerAction( 1, AddNextFlag, 804, 10, 10 )
	RegCurTrigger( 8041 )

-----------------------------------��Ы֮��
	DefineMission( 805, "�� ���������", 805 )
	
	MisBeginTalk( "<t>������! �� ��� ��� �������! ��� ������� <b����> ���� ������� ���������� � ������ ����� � ����. ��� �� ������ � ��� ����� <y5 ����� ���������> �� <r�������� ����������> � �����(2370,548). � �� � ��� ������ �� �� ���� �������� ���� ����. �� ��� ��������?")
	MisBeginCondition(LvCheck, ">", 37 )
	MisBeginCondition(NoMission, 805)
	MisBeginCondition(NoRecord, 805)
	MisBeginAction(AddMission, 805)
	MisBeginAction(AddTrigger, 8051, TE_GETITEM, 4482, 5 )
	MisCancelAction(ClearMission, 805)

	MisNeed(MIS_NEED_ITEM, 4482, 5, 10, 5)
	
	MisHelpTalk("<t>���� ������� ������� ������ <y����� ���������> ������ � ����!")
	MisResultTalk("<t>�������! �� ������ �!")
	MisResultCondition(NoRecord, 805)
	MisResultCondition(HasMission, 805)
	MisResultCondition(HasItem, 4482, 5)
	MisResultAction(TakeItem, 4482, 5 )
	MisResultAction(ClearMission, 805)
	MisResultAction(SetRecord, 805)
	MisResultAction(AddExp, 8600, 8600)
	MisResultAction(AddMoney,972,972)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4482 )	
	TriggerAction( 1, AddNextFlag, 805, 10, 5 )
	RegCurTrigger( 8051 )

----------------------------------��·�ȷ�
	DefineMission( 806, "������", 806 )
	
	MisBeginTalk( "<t>������! �� �������!<n><t>�� ����� ����������� � ����� � ����������� � ������������ ������, �� �� ����� ���� ��������� ��������� �����������!<n><t>� �����(1981,530) ������� <r�������� �������>. ��� ����� ������� � ����� ����� ��������. ���������� ������ <r10 �������� ��������> � ���������� ��� ������. �� ����� ��� ������������.")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(NoMission, 806)
	MisBeginCondition(NoRecord, 806)
	MisBeginAction(AddMission, 806)
	MisBeginAction(AddTrigger, 8061, TE_KILL, 259, 10 )
	MisCancelAction(ClearMission, 806)

	MisNeed(MIS_NEED_KILL, 259, 10, 10, 10)
	
	MisHelpTalk("<t>� ��� �������� �������� ��� ������ �� �������� ��������.")
	MisResultTalk("<t>������� ���! ������ �� ����� ������������ � �����������!")
	MisResultCondition(NoRecord, 806)
	MisResultCondition(HasMission, 806)
	MisResultCondition(HasFlag, 806, 19 )
	MisResultAction(ClearMission, 806)
	MisResultAction(SetRecord, 806)
	MisResultAction(AddExp, 9600, 9600)
	MisResultAction(AddMoney,495,495)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 259 )	
	TriggerAction( 1, AddNextFlag, 806, 10, 10 )
	RegCurTrigger( 8061 )

-----------------------------------ѩӰ��
	DefineMission( 807, "���������� ���", 807 )
	
	MisBeginTalk( "<t>������! �� ������ ������ ����� � (2269,590) ������ ���������� �������? ��� �������� <y���������� ���>. ��� ����� ����� ������� ���������� �� ����. ��������� ��� ��� �� ��������������.")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(NoMission, 807)
	MisBeginCondition(NoRecord, 807)
	MisBeginAction(AddMission, 807)
	MisBeginAction(AddTrigger, 8071, TE_GETITEM, 4109, 1 )
	MisCancelAction(ClearMission, 807)

	MisNeed(MIS_NEED_ITEM, 4109, 1, 10, 1)
	
	MisHelpTalk("<t>� ��� �� ���� ���������� ��� � ���� �����!")
	MisResultTalk("<t>���! �� ���������!")
	MisResultCondition(NoRecord, 807)
	MisResultCondition(HasMission, 807)
	MisResultCondition(HasItem, 4109, 1)
	MisResultAction(TakeItem, 4109, 1 )
	MisResultAction(ClearMission, 807)
	MisResultAction(SetRecord, 807)
	MisResultAction(AddExp, 9600, 9600)
	MisResultAction(AddMoney,495,495)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4109 )	
	TriggerAction( 1, AddNextFlag, 807, 10, 1 )
	RegCurTrigger( 8071 )

----------------------------------��ʿ����
	DefineMission( 808, "���� �����", 808 )
	
	MisBeginTalk( "<t>����� � ����������, ��� ��� � ����� ����� �������� ������. ��� ����� �� ���� ��� �����! � �����(2269,470) ��� �������� �������.<n><t>� ����� ��� ����� ������ <r�������-�����>. ���������� ������������� � �����(2269,470) � ������ 10 ��������-������, ��� �� ��������� �� � ��� ���� � ��� �� ��� �� �������� �� ���� �����.")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(NoMission, 808)
	MisBeginCondition(NoRecord, 808)
	MisBeginAction(AddMission, 808)
	MisBeginAction(AddTrigger, 8081, TE_KILL, 268, 10 )
	MisCancelAction(ClearMission, 808)

	MisNeed(MIS_NEED_KILL, 268, 10, 10, 10)
	
	MisHelpTalk("<t>� �� ��� ����� �����!")
	MisResultTalk("<t>�� ����� �����! ������� ���.")
	MisResultCondition(NoRecord, 808)
	MisResultCondition(HasMission, 808)
	MisResultCondition(HasFlag, 808, 19 )
	MisResultAction(ClearMission, 808)
	MisResultAction(SetRecord, 808)
	MisResultAction(AddExp, 10600, 10600)
	MisResultAction(AddMoney,504,504)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 268 )	
	TriggerAction( 1, AddNextFlag, 808, 10, 10 )
	RegCurTrigger( 8081 )

----------------------------------��Ѫ�Ĺ���
	DefineMission( 809, "��������-������", 809 )
	
	MisBeginTalk( "t>� <p����������� ������> ������� ��������, ������� �������� ������������ ������.<n><t>������ ������ ��� ��������! �������� ��� ����� <r10 ������� �����-��������>!")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 809)
	MisBeginCondition(NoRecord, 809)
	MisBeginAction(AddMission, 809)
	MisBeginAction(AddTrigger, 8091, TE_KILL, 82, 10 )
	MisCancelAction(ClearMission, 809)

	MisNeed(MIS_NEED_KILL, 82, 10, 10, 10)
	
	MisHelpTalk("<t>�� ��� �� ����� ��, ������ � ���������.")
	MisResultTalk("<t>������� ��� �� ������!")
	MisResultCondition(NoRecord, 809)
	MisResultCondition(HasMission, 809)
	MisResultCondition(HasFlag, 809, 19 )
	MisResultAction(ClearMission, 809)
	MisResultAction(SetRecord, 809)
	MisResultAction(AddExp, 3500, 3500)
	MisResultAction(AddMoney,424,424)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 82 )	
	TriggerAction( 1, AddNextFlag, 809, 10, 10 )
	RegCurTrigger( 8091 )

-----------------------------------����İ�ȫñ
	DefineMission( 810, "����� �����-��������", 810 )
	
	MisBeginTalk( "<t>� ���� ����� � ���� � ����� ��������, �� ��� �� ������� ������ ��-�� ����, ��� �� ��� ��� �����! �� ������� �� �� ���? ��������� <y2 ����� �����-��������>, ��� �� ��� ���������� � �����. �� ��� ������������.<n><t>��� ����� �� ������� �������� ���� ����� ��������!")
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 810)
	MisBeginCondition(NoRecord, 810)
	MisBeginAction(AddMission, 810)
	MisBeginAction(AddTrigger, 8101, TE_GETITEM, 4448, 2 )
	MisCancelAction(ClearMission, 810)

	MisNeed(MIS_NEED_ITEM, 4448, 2, 10, 2)
	
	MisHelpTalk("<t>��� �� �� �� �������, ��� ��� ����� ��� �� ������ � �����!?")
	MisResultTalk("<t>������� ���!")
	MisResultCondition(NoRecord, 810)
	MisResultCondition(HasMission, 810)
	MisResultCondition(HasItem, 4448, 2)
	MisResultAction(TakeItem, 4448, 2 )
	MisResultAction(ClearMission, 810)
	MisResultAction(SetRecord, 810)
	MisResultAction(AddExp, 4900, 4900)
	MisResultAction(AddMoney,892,892)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4448 )	
	TriggerAction( 1, AddNextFlag, 810, 10, 2 )
	RegCurTrigger( 8101 )


-----------------------------------������ཬ
	DefineMission( 811, "������ �����", 811 )
	
	MisBeginTalk( "<t>� � ����! ���� ��������� �����-�� ������� ���� �����! Ÿ ������ �������� <r����������>. � ���� �� ����� �����������, ��� ����� ����� ����� ����, � ��� ����� �������� �� �����! ��������� ��� � <r���������> <y5 ������� ������ ������>, ��� �� ����� �������� ������� ���� �������.")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 811)
	MisBeginCondition(NoRecord, 811)
	MisBeginAction(AddMission, 811)
	MisBeginAction(AddTrigger, 8111, TE_GETITEM, 4363, 5 )
	MisCancelAction(ClearMission, 811)

	MisNeed(MIS_NEED_ITEM, 4363, 5, 10, 5)
	
	MisHelpTalk("<t>������������� � <p�����> � ��������� ��� �� ���� <y5 ������� ������ ������>!")
	MisResultTalk("<t>�� ������� ���! � ���������� ����� ������� ����� � ���� ������!")
	MisResultCondition(NoRecord, 811)
	MisResultCondition(HasMission, 811)
	MisResultCondition(HasItem, 4363, 5)
	MisResultAction(TakeItem, 4363, 5 )
	MisResultAction(ClearMission, 811)
	MisResultAction(SetRecord, 811)
	MisResultAction(AddExp, 5500, 5500)
	MisResultAction(AddMoney,907,907)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4363 )	
	TriggerAction( 1, AddNextFlag, 811, 10, 5 )
	RegCurTrigger( 8111 )

----------------------------------�����ཬ��
	DefineMission( 812, "����� �����", 812 )
	
	MisBeginTalk( "<t>� ����� � <p����������� ������> ������� �� �������� ����, �� �� ���� ������ <r���������>. �� �� ����� �� ����� 10 ��������� � �����(934,2747), ��� �� ����� ���� ��� ������ ��������� �������� ����?")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 812)
	MisBeginCondition(NoRecord, 812)
	MisBeginAction(AddMission, 812)
	MisBeginAction(AddTrigger, 8121, TE_KILL, 253, 10 )
	MisCancelAction(ClearMission, 812)

	MisNeed(MIS_NEED_KILL, 253, 10, 10, 10)
	
	MisHelpTalk("<t>��� �� ��� ��� �������!")
	MisResultTalk("<t>�������, ������� ���!")
	MisResultCondition(NoRecord, 812)
	MisResultCondition(HasMission, 812)
	MisResultCondition(HasFlag, 812, 19 )
	MisResultAction(ClearMission, 812)
	MisResultAction(SetRecord, 812)
	MisResultAction(AddExp, 6200, 6200)
	MisResultAction(AddMoney,461,461)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 253 )	
	TriggerAction( 1, AddNextFlag, 812, 10, 10 )
	RegCurTrigger( 8121 )


----------------------------------��צ����
	DefineMission( 813, "����-�������", 813 )
	
	MisBeginTalk( "<t>�, ��� ��� ���������� ���� ������������ � <p����������� ������>, ��� �� ���� ������ <r�����-��������>. �� ������� �� �� ��� � ����������� ���� ������������? ������ <r10 ������ ���������> �������� ���� �������������!")
	MisBeginCondition(LvCheck, ">", 35 )
	MisBeginCondition(NoMission, 813)
	MisBeginCondition(NoRecord, 813)
	MisBeginAction(AddMission, 813)
	MisBeginAction(AddTrigger, 8131, TE_KILL, 88, 10 )
	MisCancelAction(ClearMission, 813)

	MisNeed(MIS_NEED_KILL, 88, 10, 10, 10)
	
	MisHelpTalk("<t>�� �� ����� ��� 10 ������ ���������!")
	MisResultTalk("<t>�������! �� ��� ����� �������!")
	MisResultCondition(NoRecord, 813)
	MisResultCondition(HasMission, 813)
	MisResultCondition(HasFlag, 813, 19 )
	MisResultAction(ClearMission, 813)
	MisResultAction(SetRecord, 813)
	MisResultAction(AddExp, 6900, 6900)
	MisResultAction(AddMoney,469,469)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 88 )	
	TriggerAction( 1, AddNextFlag, 813, 10, 10 )
	RegCurTrigger( 8131 )

-----------------------------------�������｣
	DefineMission( 814, "��� ������", 814 )
	
	MisBeginTalk( "<t><r����-�����> ���������� ���������� ������. ��� ������ ����� �������� <y��� ������>. ��� ����� ������� ������, ��� ������� �, � �� �� �����, ����� ������.<n><t>��������� ��� <y10 ����� ������>. ������ ����� �� ��������� � <p����������� ������ 2>. � ���� ����� ��� ���!")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 814)
	MisBeginCondition(NoRecord, 814)
	MisBeginAction(AddMission, 814)
	MisBeginAction(AddTrigger, 8141, TE_GETITEM, 3935, 10 )
	MisCancelAction(ClearMission, 814)

	MisNeed(MIS_NEED_ITEM, 3935, 10, 10, 10)
	
	MisHelpTalk("<t>�� ��� �� ������� ��� ��� ������?")
	MisResultTalk("<t>� ����� ��� ����������!")
	MisResultCondition(NoRecord, 814)
	MisResultCondition(HasMission, 814)
	MisResultCondition(HasItem, 3935, 10)
	MisResultAction(TakeItem, 3935, 10 )
	MisResultAction(ClearMission, 814)
	MisResultAction(SetRecord, 814)
	MisResultAction(AddExp, 8600, 8600)
	MisResultAction(AddMoney,972,972)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3935 )	
	TriggerAction( 1, AddNextFlag, 814, 10, 10 )
	RegCurTrigger( 8141 )

-----------------------------------����
	DefineMission( 837, "����", 837 )
	
	MisBeginTalk( "<t>�� � ������ � <p���������� ������>? � ������, ��� �� ����� ����������� � ������.<n><t>������ �� ��� �� ������ �� ��������� � ���� � ��� ��������� � ��� ��� ��� ������!.<n><t>������ <r5 ������� �������� ������> � ������������� �� ���.")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(NoMission, 837)
	MisBeginCondition(NoRecord, 837)
	MisBeginAction(AddMission, 837)
	MisBeginAction(AddTrigger, 8371, TE_KILL, 248, 5 )
	MisCancelAction(ClearMission, 837)

	MisNeed(MIS_NEED_DESP, "������ <r5 ������� �������� ������> � ������������� �� ���.")
	MisNeed(MIS_NEED_KILL, 248, 5, 10, 5)

	MisHelpTalk("�� �� ������ �� ���������! ���������� ��� ��� ������� � ����� 5 ������� �������� ������!")
	MisResultTalk("������! �� ��������� �� �������.")
	MisResultCondition(NoRecord, 837)
	MisResultCondition(HasMission, 837)
	MisResultCondition(HasFlag, 837, 14)
	MisResultAction(ClearMission, 837)
	MisResultAction(SetRecord, 837)
	MisResultAction(AddExp,15692,15692)
	MisResultAction(AddMoney,1026,1026)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 248 )	
	TriggerAction( 1, AddNextFlag, 837, 10, 5 )
	RegCurTrigger( 8371 )


-----------------------------------����
	DefineMission( 838, "����", 838 )
	
	MisBeginTalk( "<t>����... ����� <r5 ������� �������� ������> � ��� � ������ �� <r30 ������� �������� ������> ���������� �� ������! ������ ��� �� �� ���� � ���� <r30 ������� �������� ������>.")
	--MisBeginCondition(LvCheck, ">", 40 )
	MisBeginCondition(HasRecord, 837)
	MisBeginCondition(NoMission, 838)
	MisBeginCondition(NoRecord, 838)
	MisBeginAction(AddMission, 838)
	MisBeginAction(AddTrigger, 8381, TE_KILL, 248, 30 )
	MisCancelAction(ClearMission, 838)
	
	MisNeed(MIS_NEED_DESP, "������ ��� �� �� ���� � ���� <r30 ������� �������� ������>.")
	MisNeed(MIS_NEED_KILL, 248, 30, 10, 30)
	
	MisHelpTalk("�� ��� �� �������� ��� ��� �� �� ������� ����������!")
	MisResultTalk("�� ��������� ��������� ������!")
	MisResultCondition(NoRecord, 838)
	MisResultCondition(HasMission, 838)
	MisResultCondition(HasFlag, 838, 39)
	MisResultAction(ClearMission, 838)
	MisResultAction(SetRecord, 838)
	MisResultAction(AddExp,15692,15692)
	MisResultAction(AddMoney,1026,1026)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 248 )	
	TriggerAction( 1, AddNextFlag, 838, 10, 30 )
	RegCurTrigger( 8381 )


-----------------------------------������Ŀ��
	DefineMission( 839, "������ �������", 839 )
	
	MisBeginTalk( "<t>�������! � ����, ��� �� ������ � ����, ��� �� � ��� ��� ��� ������! ���������� �� ���� ������������ � ���!<n><t>� ������� ������������� ��������, � � ���� ��������� �� ������� <y��������� ����>. ��������� ��� <y12 �������� �����>, ��� �� � ���� ������� ����� ������� �� ���.")
	--MisBeginCondition(LvCheck, ">", 40 )
	MisBeginCondition(HasRecord, 838)
	MisBeginCondition(NoMission, 839)
	MisBeginCondition(NoRecord, 839)
	MisBeginAction(AddMission, 839)
	MisBeginAction(AddTrigger, 8391, TE_GETITEM, 4914, 12 )
	MisCancelAction(ClearMission, 839)
	
	MisNeed(MIS_NEED_DESP, "�������� <b������ �������> � �����(646,2088) <12 �������� �����>.")
	MisNeed(MIS_NEED_ITEM, 4914, 12, 10, 12)
	
	MisHelpTalk("�� ��� �� �������� ��� 12 �������� �����.")
	MisResultTalk("<t>� ����! ��� 12 ����� ����� ����������, ��� � ������� � ������! ������� ��� �������.")
	MisResultCondition(NoRecord, 839)
	MisResultCondition(HasMission, 839)
	MisResultCondition(HasItem, 4914, 12)
	MisResultAction(TakeItem, 4914, 12)
	MisResultAction(ClearMission, 839)
	MisResultAction(SetRecord, 839)
	MisResultAction(AddExp,15692,15692)
	MisResultAction(AddMoney,1026,1026)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4914 )	
	TriggerAction( 1, AddNextFlag, 839, 10, 12 )
	RegCurTrigger( 8391 )



-----------------------------------���񰮺���
	DefineMission( 840, "���������", 840 )
	
	MisBeginTalk( "<t>������! � ��������� �������� �����. � ������� �� ������ �������� �������� �������, ����� ���: ����, ������� � ��� ����� ����.<n><t>� ���� ����������� �����, �� ����� �� �� �������� ��� <y5 �������� ������> �� <r����>?")
	MisBeginCondition(LvCheck, ">", 42 )
	--MisBeginCondition(HasRecord, 838)
	MisBeginCondition(NoMission, 840)
	MisBeginCondition(NoRecord, 840)
	MisBeginAction(AddMission, 840)
	MisBeginAction(AddTrigger, 8401, TE_GETITEM, 4915, 5 )
	MisCancelAction(ClearMission, 840)
	
	MisNeed(MIS_NEED_DESP, "�������� <y5 �������� ������> <b���� ����> � ����� (622,2106)")
	MisNeed(MIS_NEED_ITEM, 4915, 5, 10, 5)
	
	MisHelpTalk("������� ��� ������ ��� ������! ��������� ��� 5 �������� ������.")
	MisResultTalk("�������! ��������� ���� ������� � ������ ��� ����� ���� ������!")
	MisResultCondition(NoRecord, 840)
	MisResultCondition(HasMission, 840)
	MisResultCondition(HasItem, 4915, 5)
	MisResultAction(TakeItem, 4915, 5)
	MisResultAction(ClearMission, 840)
	MisResultAction(SetRecord, 840)
	MisResultAction(AddExp,19294,19294)	
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4915 )	
	TriggerAction( 1, AddNextFlag, 840, 10, 5 )
	RegCurTrigger( 8401 )

-----------------------------------����
	DefineMission( 841, "����� ��������", 841 )
	
	MisBeginTalk( "<t>�� ������ ��� ������� ���, ��� �� ����� ������ ������? ��� ������� �� ����������� ������, ������� ����� ����� � ������� �� ����. ������, �� ���� ����� ����� ����� �������� ��������.")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 844)
	MisBeginCondition(NoMission, 841)
	MisBeginCondition(NoRecord, 841)
	MisBeginAction(AddMission, 841)
	MisBeginAction(AddTrigger, 8411, TE_GETITEM, 4915, 1 )
	MisBeginAction(AddTrigger, 8412, TE_KILL, 107, 5 )
	MisCancelAction(ClearMission, 841)
	
	MisNeed(MIS_NEED_DESP, "����� <r5 �����> � �������� ���� <y�������� ������> <b�� ����> � �����(628,2095).")
	MisNeed(MIS_NEED_ITEM, 4915, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 107, 5, 10, 5)
	
	MisHelpTalk("��������� ��� �� �����������, ��� �� � ������� ������, ������� ����� ������ �� �����!")
	MisResultTalk("������� ���! �������� � ������� �� �� �������!")
	MisResultCondition(NoRecord, 841)
	MisResultCondition(HasMission, 841)
	MisResultCondition(HasItem, 4915, 1)
	MisResultCondition(HasFlag, 841, 14)
	MisResultAction(TakeItem, 4915, 1)
	MisResultAction(ClearMission, 841)
	MisResultAction(SetRecord, 841)
	MisResultAction(AddExp,19294,19294)
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4915 )	
	TriggerAction( 1, AddNextFlag, 841, 20, 1 )
	RegCurTrigger( 8411 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,	107 )	
	TriggerAction( 1, AddNextFlag, 841, 10, 5 )
	RegCurTrigger( 8412 )

-----------------------------------���������
	DefineMission( 842, "��������� �����", 842 )
	
	MisBeginTalk( "<t>� ������ ��� ��������� ������� ����� ������������ �����-������� ������. � ���� ����������� ����������� ������� ������ ������, ��� ����� ��� ���� <y15 �������� ������>.")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 841)
	MisBeginCondition(NoMission, 842)
	MisBeginCondition(NoRecord, 842)
	MisBeginAction(AddMission, 842)
	MisBeginAction(AddTrigger, 8421, TE_GETITEM, 4915, 15 )
	MisCancelAction(ClearMission, 842)
	
	MisNeed(MIS_NEED_DESP, "�������� <y15 �������� ������> <b�� ����> � �����(628,2095).")
	MisNeed(MIS_NEED_ITEM, 4915, 15, 10, 15)
	
	MisHelpTalk("��������� ��� ����������� ��� ������������ ������ � � �������� � ���� ������� � �� ������!")
	MisResultTalk("�������! ��� ���� ����!")
	MisResultCondition(NoRecord, 842)
	MisResultCondition(HasMission, 842)
	MisResultCondition(HasItem, 4915, 15)
	MisResultAction(TakeItem, 4915, 15)
	MisResultAction(ClearMission, 842)
	MisResultAction(SetRecord, 842)
	MisResultAction(AddExp,19294,19294)	
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4915 )	
	TriggerAction( 1, AddNextFlag, 842, 10, 15 )
	RegCurTrigger( 8421 )

-----------------------------------��ɫ����
	DefineMission( 843, "������ ��������", 843 )
	
	MisBeginTalk( "<t>�� ��� ����� � ����� � ������� ����� ׸���� �������� �� ������� �� �������. ������ �� ����� � �������������� ����.<n><t>��������� ��� 1 <y�������������� �����> � ������ <r5 ������ ��������>. ����� ���� ������������� �� ��� �� ��������!")
	MisBeginCondition(LvCheck, ">", 42 )
	--MisBeginCondition(HasRecord, 844)
	MisBeginCondition(NoMission, 843)
	MisBeginCondition(NoRecord, 843)
	MisBeginAction(AddMission, 843)
	MisBeginAction(AddTrigger, 8431, TE_GETITEM, 4823, 1 )
	MisBeginAction(AddTrigger, 8432, TE_KILL, 503, 5 )
	MisCancelAction(ClearMission, 843)
	
	MisNeed(MIS_NEED_DESP, "������ <r5 Ҹ���� ��������> � ��������� 1 <y�������������� �����> � ����� (628,2095)")
	MisNeed(MIS_NEED_ITEM, 4823, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 503, 5, 10, 5)
	
	MisHelpTalk("��� �������� ������� � ������� �����.")
	MisResultTalk("������� ��� �������!")
	MisResultCondition(NoRecord, 843)
	MisResultCondition(HasMission, 843)
	MisResultCondition(HasItem, 4823, 1)
	MisResultCondition(HasFlag, 843, 14)
	MisResultAction(TakeItem, 4823, 1)
	MisResultAction(ClearMission, 843)
	MisResultAction(SetRecord, 843)
	MisResultAction(AddExp,19294,19294)
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4823 )	
	TriggerAction( 1, AddNextFlag, 843, 20, 1 )
	RegCurTrigger( 8431 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,	503 )	
	TriggerAction( 1, AddNextFlag, 843, 10, 5 )
	RegCurTrigger( 8432 )

-----------------------------------�����о�
	DefineMission( 844, "������������ �����", 844 )
	
	MisBeginTalk( "<t>� ������ ������ ������� �� ��� �������� � ������ � ������, ��� ��� ����� �������� ���������� �����. �� ����� ������ ��� ���� ��� ������� ������, �� ����� ��������� ��� ������ ������!")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 843)
	MisBeginCondition(NoMission, 844)
	MisBeginCondition(NoRecord, 844)
	MisBeginAction(AddMission, 844)
	MisBeginAction(AddTrigger, 8441, TE_GETITEM, 4823, 10 )
	MisCancelAction(ClearMission, 844)
	
	MisNeed(MIS_NEED_DESP, "<t>�������� � ����� (628,2095) 10 �������������� ������!")
	MisNeed(MIS_NEED_ITEM, 4823, 10, 10, 10)
	
	MisHelpTalk("� ��� ����� �� ��� ��������� 10 �������������� ������!")
	MisResultTalk("�������! � ���������� ��������� � �������������!")
	MisResultCondition(NoRecord, 844)
	MisResultCondition(HasMission, 844)
	MisResultCondition(HasItem, 4823, 10)
	MisResultAction(TakeItem, 4823, 10)
	MisResultAction(ClearMission, 844)
	MisResultAction(SetRecord, 844)
	MisResultAction(AddExp,19294,19294)
	MisResultAction(AddMoney,1064,1064)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4823 )	
	TriggerAction( 1, AddNextFlag, 844, 10, 10 )
	RegCurTrigger( 8441 )


-----------------------------------��ʯ��
	DefineMission( 845, "�������� �����", 845 )
	
	MisBeginTalk( "<t>� ������� ������ ���������� ��������� �� ����� �� <r��������� �������>.<n><t>����� � ������ <r5 ��������� ������> � ��������� � ���� �������������� <y1 ����� ���������� �����>!")
	MisBeginCondition(LvCheck, ">", 45 )
	--MisBeginCondition(HasRecord, 844)
	MisBeginCondition(NoMission, 845)
	MisBeginCondition(NoRecord, 845)
	MisBeginAction(AddMission, 845)
	MisBeginAction(AddTrigger, 8451, TE_GETITEM, 4825, 1 )
	MisBeginAction(AddTrigger, 8452, TE_KILL, 505, 5 )
	MisCancelAction(ClearMission, 845)
	
	MisNeed(MIS_NEED_DESP, "������ <r5 ��������� �������> � ��������� 1 <y����� ���������� �����> � �����(626,2100).")
	MisNeed(MIS_NEED_ITEM, 4825, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 505, 5, 10, 5)
	
	MisHelpTalk("�� ��� �� ������� �� � ��� � ��� ��������.")
	MisResultTalk("������� �� ��� �������!")
	MisResultCondition(NoRecord, 845)
	MisResultCondition(HasMission, 845)
	MisResultCondition(HasItem, 4825, 1)
	MisResultCondition(HasFlag, 845, 14)
	MisResultAction(TakeItem, 4825, 1)
	MisResultAction(ClearMission, 845)
	MisResultAction(SetRecord, 845)
	MisResultAction(AddExp,26112,26112)	
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4825 )	
	TriggerAction( 1, AddNextFlag, 845, 20, 1 )
	RegCurTrigger( 8451 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,	505 )	
	TriggerAction( 1, AddNextFlag, 845, 10, 5 )
	RegCurTrigger( 8452 )

-----------------------------------΢��ʯͷ���о�
	DefineMission( 846, "������������ ���������� �����", 846 )
	
	MisBeginTalk( "<t>��� ������, ������� �� ��� �������� �������� ��������� ����������, �� ����������� ������ ����� � �������� ��. �� �������� ��� ��� <y6 ������� ���������� �����> ��� ������������?")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 845)
	MisBeginCondition(NoMission, 846)
	MisBeginCondition(NoRecord, 846)
	MisBeginAction(AddMission, 846)
	MisBeginAction(AddTrigger, 8461, TE_GETITEM, 4825, 6 )
	MisCancelAction(ClearMission, 846)
	
	MisNeed(MIS_NEED_DESP, "�������� <y6 ������� ���������� �����> � �����(626,2100)")
	MisNeed(MIS_NEED_ITEM, 4825, 6, 10, 6)
	
	MisHelpTalk("�� ��� �� ��������� ������� �� ������ ���������� �����?")
	MisResultTalk("�� ������� ������� ���� � ���� ������������.")
	MisResultCondition(NoRecord, 846)
	MisResultCondition(HasMission, 846)
	MisResultCondition(HasItem, 4825, 6)
	MisResultAction(TakeItem, 4825, 6)
	MisResultAction(ClearMission, 846)
	MisResultAction(SetRecord, 846)
	MisResultAction(AddExp,26112,26112)	
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4825 )	
	TriggerAction( 1, AddNextFlag, 846, 10, 6 )
	RegCurTrigger( 8461 )


-----------------------------------��֤
	DefineMission( 847, "�������������", 847 )
	
	MisBeginTalk( "<t>� �� ��� ����� �������� ����������� ������������� � �������� ���� ����� � ��� ����� ��� ����� ���� ������!")
	--MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 846)
	MisBeginCondition(NoMission, 847)
	MisBeginCondition(NoRecord, 847)
	MisBeginAction(AddMission, 847)
	MisBeginAction(AddTrigger, 8471, TE_GETITEM, 4917, 1 )
	MisBeginAction(AddTrigger, 8472, TE_KILL, 267, 5 )
	MisCancelAction(ClearMission, 847)
	
	MisNeed(MIS_NEED_DESP, "������ <r5 ������������ ������> � ��������� 1 <y������������� ����> <b������ �����������> � �����(626,2100).")
	MisNeed(MIS_NEED_ITEM, 4917, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 267, 5, 10, 5)
	
	MisHelpTalk("���������� �������� �� � ��� � ��� ��������.")
	MisResultTalk("�������! �� ��� ����� �������.")
	MisResultCondition(NoRecord, 847)
	MisResultCondition(HasMission, 847)
	MisResultCondition(HasItem, 4917, 1)
	MisResultCondition(HasFlag, 847, 14)
	MisResultAction(TakeItem, 4917, 1)
	MisResultAction(ClearMission, 847)
	MisResultAction(SetRecord, 847)
	MisResultAction(AddExp,28832,28832)
	MisResultAction(AddMoney,1146,1146)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4917 )	
	TriggerAction( 1, AddNextFlag, 847, 20, 1 )
	RegCurTrigger( 8471 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,	267 )	
	TriggerAction( 1, AddNextFlag, 847, 10, 5 )
	RegCurTrigger( 8472 )


-----------------------------------����ͷ��
	DefineMission( 848, "������������� ����", 848 )
	
	MisBeginTalk( "<t>���� �� � ���� ������ �� ���� ��� �����, �� �������� � �� ���� ����������� �� ���!")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 847)
	MisBeginCondition(NoMission, 848)
	MisBeginCondition(NoRecord, 848)
	MisBeginAction(AddMission, 848)
	MisBeginAction(AddTrigger, 8481, TE_GETITEM, 4917, 10 )
	MisCancelAction(ClearMission, 848)
	
	MisNeed(MIS_NEED_DESP, "�������� <y10 ������������� ������> <b������ �����������> � �����(626,2100)")
	MisNeed(MIS_NEED_ITEM, 4917, 10, 10, 10)
	
	MisHelpTalk("��� �� ��� �������� ��� ������ ������ ������� �� �����?!")
	MisResultTalk("� ����� ����� ���������� �� ������������ ����� ������. ��� ���� �������.")
	MisResultCondition(NoRecord, 848)
	MisResultCondition(HasMission, 848)
	MisResultCondition(HasItem, 4917, 10)
	MisResultAction(TakeItem, 4917, 10)
	MisResultAction(ClearMission, 848)
	MisResultAction(SetRecord, 848)
	MisResultAction(AddExp,28832,28832)
	MisResultAction(AddMoney,1146,1146)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4917 )	
	TriggerAction( 1, AddNextFlag, 848, 10, 10 )
	RegCurTrigger( 8481 )

-----------------------------------�߽�
	DefineMission( 849, "�������������", 849 )
	
	MisBeginTalk( "<t>���� �� ��� �� ��������� �� �� ����� ����� �� ���������� �����! ��� ����� ��������� � ��������� ������� ��������!<n><t>���� �� �� ������ ������ ������ ������ � ��� �� ��� ����� �����������.<n><t>�������� ���� ���������� ���� <r20 ����������� ��������-������>.")
	MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(NoMission, 849)
	MisBeginCondition(NoRecord, 849)
	MisBeginAction(AddMission, 849)
	MisBeginAction(AddTrigger, 8491, TE_KILL, 513, 20 )
	MisCancelAction(ClearMission, 849)

	MisNeed(MIS_NEED_DESP, "����� <r20 ����������� ��������-������> � �������� � ���������� ������ <b���������� �����> � �����(653,1505)")
	MisNeed(MIS_NEED_KILL, 513, 20, 10, 20)

	MisHelpTalk("� ��� ��� ��������! ��� ��� �� ��������� � ���� �� ������ ��� ������ �� ���������! ���... ��� �� ��������� ��� ������!")
	MisResultTalk("�������! �� ������� ������ ����!")
	MisResultCondition(NoRecord, 849)
	MisResultCondition(HasMission, 849)
	MisResultCondition(HasFlag, 849, 29)
	MisResultAction(ClearMission, 849)
	MisResultAction(SetRecord, 849)
	MisResultAction(AddExp,31809,31809)
	MisResultAction(AddMoney,1167,1167)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 513 )	
	TriggerAction( 1, AddNextFlag, 849, 10, 20 )
	RegCurTrigger( 8491 )

-----------------------------------Ѫ�ȵĴ���
	DefineMission( 850, "����������� �����", 850 )
	
	MisBeginTalk( "<t>� ������������! � � ������� ������ ������ ������. �� ��� ����� � ������� �������� �� <y����������� �����> � <r������������ ��������-�����>, �� �����������! ��������� ��� <y10 ����������� �������>, ��� �� � ��� ������� �� ��� ����� ������!")
	MisBeginCondition(LvCheck, ">", 48 )
	--MisBeginCondition(HasRecord, 847)
	MisBeginCondition(NoMission, 850)
	MisBeginCondition(NoRecord, 850)
	MisBeginAction(AddMission, 850)
	MisBeginAction(AddTrigger, 8501, TE_GETITEM, 4833, 10 )
	MisCancelAction(ClearMission, 850)
	
	MisNeed(MIS_NEED_DESP, "�������� <b�����> � �����(741,1563) <y10 ����������� �������>.")
	MisNeed(MIS_NEED_ITEM, 4833, 10, 10, 10)
	
	MisHelpTalk("� �� ��� ��� ��� ���������!")
	MisResultTalk("��� �����������! �� ������� ���� ����� ���������� ��������������.")
	MisResultCondition(NoRecord, 850)
	MisResultCondition(HasMission, 850)
	MisResultCondition(HasItem, 4833, 10)
	MisResultAction(TakeItem, 4833, 10)
	MisResultAction(ClearMission, 850)
	MisResultAction(SetRecord, 850)
	MisResultAction(AddExp,35066,35066)	
	MisResultAction(AddMoney,1189,1189)



	InitTrigger()
	TriggerCondition( 1, IsItem, 4833 )	
	TriggerAction( 1, AddNextFlag, 850, 10, 10 )
	RegCurTrigger( 8501 )


-----------------------------------��һ��ԭ��
	DefineMission( 851, "������ ����������", 851 )
	
	MisBeginTalk( "<t>���� �� ������ ��� � ��� ���� ������� ���� �� ���� ������, �� ����� �� ������� �� �����! ���� �� �� �� �� �����, �� � ������ ��� � ���� ��������� � ������� ��� �� ���� ������!<n><t>������, ��� ��� ����������, ��� ������� ������ ����������� ��� ������!")
	MisBeginCondition(LvCheck, ">", 47 )
	--MisBeginCondition(HasRecord, 847)
	MisBeginCondition(NoMission, 851)
	MisBeginCondition(NoRecord, 851)
	MisBeginAction(AddMission, 851)
	MisBeginAction(AddTrigger, 8511, TE_GETITEM, 4883, 8 )
	MisCancelAction(ClearMission, 851)
	
	MisNeed(MIS_NEED_DESP, "�������� <b����> � ����� (651,1585) <y8 ������ �����>.")
	MisNeed(MIS_NEED_ITEM, 4883, 8, 10, 8)
	
	MisHelpTalk("�������, �� ��� ��� � �� �������� ��� <y8 ������ �����>.")
	MisResultTalk("�������, ��������� �� ��� ��-�����. � ���� ��� ����� ��� ��� ���������.")
	MisResultCondition(NoRecord, 851)
	MisResultCondition(HasMission, 851)
	MisResultCondition(HasItem, 4883, 8)
	MisResultAction(TakeItem, 4883, 8)
	MisResultAction(ClearMission, 851)
	MisResultAction(SetRecord, 851)
	MisResultAction(AddExp,31809,31809)	
	MisResultAction(AddMoney,1167,1167)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4883 )	
	TriggerAction( 1, AddNextFlag, 851, 10, 8 )
	RegCurTrigger( 8511 )

-----------------------------------����
	DefineMission( 852, "������", 852 )
	
	MisBeginTalk( "���� �� ������ ���� <r�������� �����>! ��� ����� ��� ���� � ��������� �� � ���� ��������! � ����� ����� ���� ����, � �� ��� ��� �����, � �� ���� ������� �� ���, ��� �� ���� ������ � ���, ��� ������ �� ���� ����. �� ����� �� ����� � ������� ��� �� ����?!")
	MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(NoMission, 852)
	MisBeginCondition(NoRecord, 852)
	MisBeginAction(AddMission, 852)
	MisBeginAction(AddTrigger, 8521, TE_KILL, 41, 15 )
	MisCancelAction(ClearMission, 852)

	MisNeed(MIS_NEED_DESP, "����� <r15 �������� �����> � ��������� � <b�������� ������ �����> � �����(706,1465).")
	MisNeed(MIS_NEED_KILL, 41, 15, 10, 15)

	MisHelpTalk("�� �� �������� ��� ���������?")
	MisResultTalk("������� ���, ���� �� �� �� ��� ������ �������� �� ��� �������, �� � ����� �� ���� �� ���� �������� � ��� �� � ������, ��� ���� ���� ����.")
	MisResultCondition(NoRecord, 852)
	MisResultCondition(HasMission, 852)
	MisResultCondition(HasFlag, 852, 24)
	MisResultAction(ClearMission, 852)
	MisResultAction(SetRecord, 852)
	MisResultAction(AddExp,31809,31809)	
	MisResultAction(AddMoney,1167,1167)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 41 )	
	TriggerAction( 1, AddNextFlag, 852, 10, 15 )
	RegCurTrigger( 8521 )

-----------------------------------������ԭ��
	DefineMission( 853, "������ ����������", 853 )
	
	MisBeginTalk( "<t>� ������� ����� ��������� �� ���������� ��� ������ �����! ��� ��� �� ������ ���������: ��������� ��� <y10 ��������� ����� �������>.")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 854)
	MisBeginCondition(NoMission, 853)
	MisBeginCondition(NoRecord, 853)
	MisBeginAction(AddMission, 853)
	MisBeginAction(AddTrigger, 8531, TE_GETITEM, 4834, 10 )
	MisCancelAction(ClearMission, 853)
	
	MisNeed(MIS_NEED_DESP, "�������� 10 ��������� ����� ������� � �����(651,1585).")
	MisNeed(MIS_NEED_ITEM, 4834, 10, 10, 10)
	
	MisHelpTalk("�� ������������� ����!")
	MisResultTalk("������! ��� �� ��� ����� ������, �� �����.")
	MisResultCondition(NoRecord, 853)
	MisResultCondition(HasMission, 853)
	MisResultCondition(HasItem, 4834, 10)
	MisResultAction(TakeItem, 4834, 10)
	MisResultAction(ClearMission, 853)
	MisResultAction(SetRecord, 853)
	MisResultAction(AddExp,35066,35066)	
	MisResultAction(AddMoney,1189,1189)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4834 )	
	TriggerAction( 1, AddNextFlag, 853, 10, 10 )
	RegCurTrigger( 8531 )

-----------------------------------�ڶ���ԭ��
	DefineMission( 854, "������ ����������", 854 )
	
	MisBeginTalk( "<t>� �� ���� �����������! �� ��� ������, ��� � ������ ������������ � ��� ����� �����������.<n><t>��������� ��� <y10 ����� �����>.")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 851)
	MisBeginCondition(NoMission, 854)
	MisBeginCondition(NoRecord, 854)
	MisBeginAction(AddMission, 854)
	MisBeginAction(AddTrigger, 8541, TE_GETITEM, 4884, 10 )
	MisCancelAction(ClearMission, 854)
	
	MisNeed(MIS_NEED_DESP, "�������� <b�������� ����> � �����(651,1585) <y10 ����� �����>.")
	MisNeed(MIS_NEED_ITEM, 4884, 10, 10, 10)
	
	MisHelpTalk("����� ������ ��� ����! ���������!")
	MisResultTalk("�������! �� ������� ������!")
	MisResultCondition(NoRecord, 854)
	MisResultCondition(HasMission, 854)
	MisResultCondition(HasItem, 4884, 10)
	MisResultAction(TakeItem, 4884, 10)
	MisResultAction(ClearMission, 854)
	MisResultAction(SetRecord, 854)
	MisResultAction(AddExp,35066,35066)
	MisResultAction(AddMoney,1189,1189)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4884 )	
	TriggerAction( 1, AddNextFlag, 854, 10, 10 )
	RegCurTrigger( 8541 )

-----------------------------------��������
	DefineMission( 855, "�������� ����", 855 )
	
	MisBeginTalk( "<t>� � �����! ���� � ��� �� �������� �� ���� ����, �� � �������� �� ������� ������ ������. ��� ����� ��� ����� �� �����!<n><t>������ <r15 �������� �����> � ���������� ����� �� ������!")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 852)
	MisBeginCondition(NoMission, 855)
	MisBeginCondition(NoRecord, 855)
	MisBeginAction(AddMission, 855)
	MisBeginAction(AddTrigger, 8551, TE_KILL, 42, 15 )
	MisCancelAction(ClearMission, 855)

	MisNeed(MIS_NEED_DESP, "����� <r15 �������� �����> � ��������� � <b�������� ������ �������> � �����(706,1465).")
	MisNeed(MIS_NEED_KILL, 42, 15, 10, 15)

	MisHelpTalk("�� ����� ������ � ��� � ��� ��������?")
	MisResultTalk("������� ��� ��� ���! �� ������� ����� ������ ��������.")
	MisResultCondition(NoRecord, 855)
	MisResultCondition(HasMission, 855)
	MisResultCondition(HasFlag, 855, 24)
	MisResultAction(ClearMission, 855)
	MisResultAction(SetRecord, 855)
	MisResultAction(AddExp,35066,35066)	
	MisResultAction(AddMoney,1189,1189)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 42 )	
	TriggerAction( 1, AddNextFlag, 855, 10, 15 )
	RegCurTrigger( 8551 )

-----------------------------------����Χ��
	DefineMission( 856, "��������� �������", 856 )
	
	MisBeginTalk( "<t>����������� ��������-���� ������ �� �������� ������ ������. ��� �� ����� ��� ����� ������� ������� ����� ���������! ����-���� ������� ������� �������� � ���� �� ����������� �� ����� �������� ��� ��������� ��� �����!<n><t>���������� ��������� �� ���� � ���������� �� �������������.")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 849)
	MisBeginCondition(NoMission, 856)
	MisBeginCondition(NoRecord, 856)
	MisBeginAction(AddMission, 856)
	MisBeginAction(AddTrigger, 8561, TE_KILL, 515, 15 )
	MisBeginAction(AddTrigger, 8562, TE_KILL, 38, 5 )
	MisCancelAction(ClearMission, 856)

	MisNeed(MIS_NEED_DESP, "����� <r15 ���������� ��������> � <r5 �������� �������>.<n><t>�������� � ���������� ��������� <b���������� �����> � ����� (653,1505).")
	MisNeed(MIS_NEED_KILL, 515, 15, 10, 15)
	MisNeed(MIS_NEED_KILL, 38, 5, 30, 5)

	MisHelpTalk("���������� �������� ��� �����!")
	MisResultTalk("��-��! ������ ��� ��� �� ����� ��������� ����� ����� �����!")
	MisResultCondition(NoRecord, 856)
	MisResultCondition(HasMission, 856)
	MisResultCondition(HasFlag, 856, 24)
	MisResultCondition(HasFlag, 856, 34)
	MisResultAction(ClearMission, 856)
	MisResultAction(SetRecord, 856)
	MisResultAction(AddExp,38628,38628)
	MisResultAction(AddMoney,1212,1212)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 515 )	
	TriggerAction( 1, AddNextFlag, 856, 10, 15 )
	RegCurTrigger( 8561 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 38 )	
	TriggerAction( 1, AddNextFlag, 856, 30, 5 )
	RegCurTrigger( 8562 )

-----------------------------------ս���Ľ���
	DefineMission( 857, "������ �������", 857 )
	
	MisBeginTalk( "<t>�� ������� ����? �������� ��� ���, �� ��������� ���� ������ ���������� ������!")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 856)
	MisBeginCondition(NoMission, 857)
	MisBeginCondition(NoRecord, 857)
	MisBeginAction(AddMission, 857)
	MisBeginAction(AddTrigger, 8571, TE_GETITEM, 4919, 5 )
	MisBeginAction(AddTrigger, 8572, TE_GETITEM, 4835, 5 )
	MisCancelAction(ClearMission, 857)
	
	MisNeed(MIS_NEED_DESP, "<t> �������� <b������ ������> � ����� (711,1414) <y5 �������� �����> � <y5 ������������ ������>.")
	MisNeed(MIS_NEED_ITEM, 4919, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4835, 5, 20, 5)
	
	MisHelpTalk("��� ������� �� �� ���� � ��������!")
	MisResultTalk("� ���� ���� ����� �������! �� ����� � ��������� ����!")
	MisResultCondition(NoRecord, 857)
	MisResultCondition(HasMission, 857)
	MisResultCondition(HasItem, 4919, 5)
	MisResultCondition(HasItem, 4835, 5)
	MisResultAction(TakeItem, 4835, 5)
	MisResultAction(TakeItem, 4919, 5)
	MisResultAction(ClearMission, 857)
	MisResultAction(SetRecord, 857)
	MisResultAction(AddExp,42522,42522)	
	MisResultAction(AddMoney,1235,1235)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4919 )	
	TriggerAction( 1, AddNextFlag, 857, 10, 5 )
	RegCurTrigger( 8571 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4835 )	
	TriggerAction( 1, AddNextFlag, 857, 20, 5 )
	RegCurTrigger( 8572 )

-----------------------------------�µ�����
	DefineMission( 858, "����� ������", 858 )
	
	MisBeginTalk( "<t>��� ���������� ��������� ����� ����������� ������ ������ ��������. ��� ������������ ������ ������ ��� ���������� ��������� ���������: ����� <y��������� ���������� �������> � ���� <y����������� ��������� ���>. ��������� ��� ���.")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 856)
	MisBeginCondition(NoMission, 858)
	MisBeginCondition(NoRecord, 858)
	MisBeginAction(AddMission, 858)
	MisBeginAction(AddTrigger, 8581, TE_GETITEM, 4918, 1 )
	MisBeginAction(AddTrigger, 8582, TE_GETITEM, 4921, 1 )
	MisCancelAction(ClearMission, 858)
	
	MisNeed(MIS_NEED_DESP, "�������� <b���������� �����> ���� <y��������� ���������� �������> � ���� <y����������� ��������� ���>.")
	MisNeed(MIS_NEED_ITEM, 4918, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4921, 1, 20, 1)
	
	MisHelpTalk("��� ���� ���������� ��� �� ������� ������ ������.")
	MisResultTalk("� ����� ������� � ��� ������ ������ �� ������.")
	MisResultCondition(NoRecord, 858)
	MisResultCondition(HasMission, 858)
	MisResultCondition(HasItem, 4918, 1)
	MisResultCondition(HasItem, 4921, 1)
	MisResultAction(TakeItem, 4921, 1)
	MisResultAction(TakeItem, 4918, 1)
	MisResultAction(ClearMission, 858)
	MisResultAction(SetRecord, 858)
	MisResultAction(AddExp,42522,42522)	
	MisResultAction(AddMoney,1235,1235)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4918 )	
	TriggerAction( 1, AddNextFlag, 858, 10, 1 )
	RegCurTrigger( 8581 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4921 )	
	TriggerAction( 1, AddNextFlag, 858, 20, 1 )
	RegCurTrigger( 8582 )

-----------------------------------������ʹ
	DefineMission( 859, "������ �����", 859 )
	
	MisBeginTalk( "<t>�� ������ �������-���������� �� ��������� ������ ������?<n><t>�� ������� ��� ����������� ������ ����� ������ ��� ��� \"�����\"? ��������� ���� ������� �� ���� �� ��������������.")
	MisBeginCondition(LvCheck, ">", 50 )
	--MisBeginCondition(HasRecord, 849)
	MisBeginCondition(NoMission, 859)
	MisBeginCondition(NoRecord, 859)
	MisBeginAction(AddMission, 859)
	MisBeginAction(AddTrigger, 8591, TE_KILL, 284, 12 )
	MisCancelAction(ClearMission, 859)

	MisNeed(MIS_NEED_DESP, "����� <r12 �����-����������> � �������� � ���������� ��������� <b������ �������> � �����(711,1414).")
	MisNeed(MIS_NEED_KILL, 284, 12, 10, 12)

	MisHelpTalk("�� ��� �� ������ � �������-����������? ��� ���� �� ����?")
	MisResultTalk("������� ���, ������� ��� ��� ��������� ������� �������.")
	MisResultCondition(NoRecord, 859)
	MisResultCondition(HasMission, 859)
	MisResultCondition(HasFlag, 859, 21)
	MisResultAction(ClearMission, 859)
	MisResultAction(SetRecord, 859)
	MisResultAction(AddExp,42522,42522)
	MisResultAction(AddMoney,1235,1235)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 284 )	
	TriggerAction( 1, AddNextFlag, 859, 10, 12 )
	RegCurTrigger( 8591 )

-----------------------------------Զ��
	DefineMission( 860, "����������", 860 )
	
	MisBeginTalk( "<t>���� �� ���������� ������� ��� ��������! ������ ��� ����� ����� �������� �� ������� ������� ����.<n><t>���� ����: ����������� � ������� ���� � ����� ������������ ����������.")
	MisBeginCondition(LvCheck, ">", 51 )
	MisBeginCondition(HasRecord, 858)
	MisBeginCondition(NoMission, 860)
	MisBeginCondition(NoRecord, 860)
	MisBeginAction(AddMission, 860)
	MisBeginAction(AddTrigger, 8601, TE_KILL, 521, 8 )
	MisBeginAction(AddTrigger, 8602, TE_KILL, 541, 8 )
	MisCancelAction(ClearMission, 860)

	MisNeed(MIS_NEED_DESP, "����� <r8 ������������ ��������-��������> � <r8 ������ ������������ ������> � ��������� � <b�����> � ����� (653, 1505).")
	MisNeed(MIS_NEED_KILL, 521, 8, 10, 8)
	MisNeed(MIS_NEED_KILL, 541, 8, 30, 8)

	MisHelpTalk("���������, ������� ��� �� ��������!")
	MisResultTalk("�! �� ��� ������ ��������� �� ���������, ��� � � ������ �� ����� ��������!")
	MisResultCondition(NoRecord, 860)
	MisResultCondition(HasMission, 860)
	MisResultCondition(HasFlag, 860, 17)
	MisResultCondition(HasFlag, 860, 37)
	MisResultAction(ClearMission, 860)
	MisResultAction(SetRecord, 860)
	MisResultAction(AddExp,46776,46776)
	MisResultAction(AddMoney,1258,1258)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 521 )	
	TriggerAction( 1, AddNextFlag, 860, 10, 8 )
	RegCurTrigger( 8601 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 541 )	
	TriggerAction( 1, AddNextFlag, 860, 30, 8 )
	RegCurTrigger( 8602 )

-----------------------------------�����ͷ��
	DefineMission( 861, "���� �������", 861 )
	
	MisBeginTalk( "<t>�� ��������� ������� � ������� ���������?<n><t>� �� �������� �� ��������� ��� ���� ��������� ���� �������?<n><t>��������� ���������� 5 ������, ��� �� � ���� ������� ����� ������.")
	MisBeginCondition(LvCheck, ">", 51 )
	MisBeginCondition(HasRecord, 850)
	MisBeginCondition(NoMission, 861)
	MisBeginCondition(NoRecord, 861)
	MisBeginAction(AddMission, 861)
	MisBeginAction(AddTrigger, 8611, TE_GETITEM, 4837, 5 )
	MisCancelAction(ClearMission, 861)
	
	MisNeed(MIS_NEED_DESP, "�������� <b�����> � �����(741,1563) <y5 ������ �������>.")
	MisNeed(MIS_NEED_ITEM, 4837, 5, 10, 5)
	
	MisHelpTalk("�� ����� �� ������ ���������� �����?")
	MisResultTalk("������� ���! ��� ���������! ��� ���� �������!")
	MisResultCondition(NoRecord, 861)
	MisResultCondition(HasMission, 861)
	MisResultCondition(HasItem, 4837, 5)
	MisResultAction(TakeItem, 4837, 5)
	MisResultAction(ClearMission, 861)
	MisResultAction(SetRecord, 861)
	MisResultAction(AddExp,46776,46776)
	MisResultAction(AddMoney,1258,1258)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4837 )	
	TriggerAction( 1, AddNextFlag, 861, 10, 5 )
	RegCurTrigger( 8611 )


-----------------------------------������ԭ��
	DefineMission( 862, "��������� ����������", 862 )
	
	MisBeginTalk( "<t>�������� ������������, ������� �� ��� ��������, ����� <y������� �����>, ��� ����� �������� ������ ���� <r������������� �������-�������>, �� ������������ ���, ��� �� ���� �� ��������� �� ����� � ��������� �����!")
	MisBeginCondition(LvCheck, ">", 52 )
	MisBeginCondition(HasRecord, 853)
	MisBeginCondition(NoMission, 862)
	MisBeginCondition(NoRecord, 862)
	MisBeginAction(AddMission, 862)
	MisBeginAction(AddTrigger, 8621, TE_GETITEM, 4858, 8 )
	MisCancelAction(ClearMission, 862)
	
	MisNeed(MIS_NEED_DESP, "�������� �������� 8 ������� �����...")
	MisNeed(MIS_NEED_ITEM, 4858, 8, 10, 8)
	
	MisHelpTalk("�� ��� �� �������� ��� 8 ������� �����!")
	MisResultTalk("� ��������� ������, ����� ���� ��� � ���� �������. �������!")
	MisResultCondition(NoRecord, 862)
	MisResultCondition(HasMission, 862)
	MisResultCondition(HasItem, 4858, 8)
	MisResultAction(TakeItem, 4858, 8)
	MisResultAction(ClearMission, 862)
	MisResultAction(SetRecord, 862)
	MisResultAction(AddExp,51423,51423)
	MisResultAction(AddMoney,1282,1282)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4858 )	
	TriggerAction( 1, AddNextFlag, 862, 10, 8 )
	RegCurTrigger( 8621 )

-----------------------------------ʥ�ֿ���
	DefineMission( 863, "��������� ���������� ����", 863 )
	
	MisBeginTalk( "<t>����� ������ ��������� ��� ���. ���������� �� �� ������, ��� �� ������� �� ��� ���������? � ���� �������� �� ���!")
	MisBeginCondition(LvCheck, ">", 52 )
	--MisBeginCondition(HasRecord, 863)
	MisBeginCondition(NoMission, 863)
	MisBeginCondition(NoRecord, 863)
	MisBeginAction(AddMission, 863)
	MisBeginAction(AddTrigger, 8631, TE_KILL, 261, 10 )
	MisCancelAction(ClearMission, 863)

	MisNeed(MIS_NEED_DESP, "����� <r10 ������ ���������> � ��������� � <b������� �����> � �����(740,1451).")
	MisNeed(MIS_NEED_KILL, 261, 10, 10, 10)

	MisHelpTalk("�� ������� �� �������� �����, ���� ��� ��������!")
	MisResultTalk("�����������! �� ������ �� ���������!")
	MisResultCondition(NoRecord, 863)
	MisResultCondition(HasMission, 863)
	MisResultCondition(HasFlag, 863, 19)
	MisResultAction(ClearMission, 863)
	MisResultAction(SetRecord, 863)
	MisResultAction(AddExp,51423,51423)
	MisResultAction(AddMoney,1282,1282)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 261 )	
	TriggerAction( 1, AddNextFlag, 863, 10, 10 )
	RegCurTrigger( 8631 )


-----------------------------------���һ��ԭ��
	DefineMission( 864, "��������� ����������", 864 )
	
	MisBeginTalk( "<t>�� ����� ���������! �� �� ����� ��������, � �������� ����� ����������� � ������...<n><t>� ���������� ������� ����������... � ���� ��� ��� �����������! �� ���� �� ���������� ��� ������ � ��������� ������������, ��� �������� ��� �����!<n><t>��������� ��� <y10 �������� ����� �������>, ��� �� ��������� �������.")
	MisBeginCondition(LvCheck, ">", 53 )
	MisBeginCondition(HasRecord, 862)
	MisBeginCondition(NoMission, 864)
	MisBeginCondition(NoRecord, 864)
	MisBeginAction(AddMission, 864)
	MisBeginAction(AddTrigger, 8641, TE_GETITEM, 4886, 10 )
	MisCancelAction(ClearMission, 864)
	
	MisNeed(MIS_NEED_DESP, "�������� <y10 �������� ����� �������> <p����> � �����(651,1585).")
	MisNeed(MIS_NEED_ITEM, 4886, 10, 10, 10)
	
	MisHelpTalk("� �� ��� ������, �������, �������� ��� 10 �������� ����� �������! ��� ���?!")
	MisResultTalk("������� ��� ��������, �� ������ �������� �������!")
	MisResultCondition(NoRecord, 864)
	MisResultCondition(HasMission, 864)
	MisResultCondition(HasItem, 4886, 10)
	MisResultAction(TakeItem, 4886, 10)
	MisResultAction(ClearMission, 864)
	MisResultAction(SetRecord, 864)
	MisResultAction(AddExp,56496,56496)	
	MisResultAction(AddMoney,1306,1306)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4886 )	
	TriggerAction( 1, AddNextFlag, 864, 10, 10 )
	RegCurTrigger( 8641 )

-----------------------------------Ļ�����Ӱ
	DefineMission( 865, "������ ����", 865 )
	
	MisBeginTalk( "<t>� ��������������� ���������� � ������ � ������ ��� �� ��� �������� ��������� ����.<n><t>�������� ����� ����� ��� �� ����� � ������ ��������� ����!")
	MisBeginCondition(LvCheck, ">", 53 )
	MisBeginCondition(HasRecord, 855)
	MisBeginCondition(NoMission, 865)
	MisBeginCondition(NoRecord, 865)
	MisBeginAction(AddMission, 865)
	MisBeginAction(AddTrigger, 8651, TE_KILL, 52, 10 )
	MisCancelAction(ClearMission, 865)

	MisNeed(MIS_NEED_DESP, "����� <r10 ��������� ���> � ��������� � <b�������> � �����(706,1465).")
	MisNeed(MIS_NEED_KILL, 52, 10, 10, 10)

	MisHelpTalk("����� ��� ������ ���������� ����. �������� ����� ����������� � ���� �� ������ ������ ����������� ��� ���������!")
	MisResultTalk("�� ������� ���������, ��� ���������� ����������� � �������� ����� ���������� � �������!")
	MisResultCondition(NoRecord, 865)
	MisResultCondition(HasMission, 865)
	MisResultCondition(HasFlag, 865, 19)
	MisResultAction(ClearMission, 865)
	MisResultAction(SetRecord, 865)
	MisResultAction(AddExp,56496,56496)	
	MisResultAction(AddMoney,1306,1306)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 52 )	
	TriggerAction( 1, AddNextFlag, 865, 10, 10 )
	RegCurTrigger( 8651 )

-----------------------------------���ĵ���
	DefineMission( 866, "��������� ����", 866 )
	
	MisBeginTalk( "<t>������� ��������� ����! �� ������ ���! ���������� ��� � ��������� �� ��� �� ��������!")
	MisBeginCondition(LvCheck, ">", 53 )
	MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 866)
	MisBeginCondition(NoRecord, 866)
	MisBeginAction(AddMission, 866)
	MisBeginAction(AddTrigger, 8661, TE_KILL, 565, 10 )
	MisBeginAction(AddTrigger, 8662, TE_GETITEM, 4879, 1 )
	MisCancelAction(ClearMission, 866)

	MisNeed(MIS_NEED_DESP, "����� <r10 ������������� ��������-������> � ���������� 1 <y������ ����� ������>.<n><t>�������� <b���������� �����> � ����� (653,1505) � ���������� ������ �� ������������ ������.")
	MisNeed(MIS_NEED_KILL, 565, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 4879, 1, 20, 1)

	MisHelpTalk("� ��� ������� ������ ���� ����, �� ����� ��� � ��� ��� ���� ������ ����� � ������ � �����-�����. ")
	MisResultTalk("��������� ���� ���������! �� ����� ���� �����!")
	MisResultCondition(NoRecord, 866)
	MisResultCondition(HasMission, 866)
	MisResultCondition(HasFlag, 866, 19)
	MisResultCondition(HasItem, 4879, 1)
	MisResultAction(TakeItem, 4879, 1)
	MisResultAction(ClearMission, 866)
	MisResultAction(SetRecord, 866)
	MisResultAction(AddExp,56496,56496)
	MisResultAction(AddMoney,1306,1306)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 565 )	
	TriggerAction( 1, AddNextFlag, 866, 10, 10 )
	RegCurTrigger( 8661 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4879 )	
	TriggerAction( 1, AddNextFlag, 866, 20, 1 )
	RegCurTrigger( 8662 )

-----------------------------------��Ѫ����
	DefineMission( 867, "��������� ����� �������", 867 )
	
	MisBeginTalk( "<t>������ ����������� �� ������ ���� �� ������� ��������� �������! ������ <r15 ����������� ���������> � �������� ���� ���� �� ������� � ������!")
	MisBeginCondition(LvCheck, ">", 54 )
	--MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 867)
	MisBeginCondition(NoRecord, 867)
	MisBeginAction(AddMission, 867)
	MisBeginAction(AddTrigger, 8671, TE_KILL, 666, 15 )
	MisCancelAction(ClearMission, 867)

	MisNeed(MIS_NEED_DESP, "����� <r15 ����������� ���������> � ��������� � <b������� �����> � �����(740,1451).")
	MisNeed(MIS_NEED_KILL, 666, 15, 10, 15 )

	MisHelpTalk("�� ��� �� ������� ����� ������������, ����� �������� ���� ����.")
	MisResultTalk("������ ��� ������������� � ����� ��� �������! �� ���������?")
	MisResultCondition(NoRecord, 867)
	MisResultCondition(HasMission, 867)
	MisResultCondition(HasFlag, 867, 24)
	MisResultAction(ClearMission, 867)
	MisResultAction(SetRecord, 867)
	MisResultAction(AddExp,62032,62032)
	MisResultAction(AddMoney,1331,1331)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 666 )	
	TriggerAction( 1, AddNextFlag, 867, 10, 15 )
	RegCurTrigger( 8671 )

-----------------------------------��֮��
	DefineMission( 868, "������ ���", 868 )
	
	MisBeginTalk( "<t>��... ��� �� � ��� ��������� ��� �� Ҹ���� ���...<n><t>��������� ��� 5 �����, � ������ ����� ������!")
	MisBeginCondition(LvCheck, ">", 54 )
	MisBeginCondition(HasRecord, 861)
	MisBeginCondition(NoMission, 868)
	MisBeginCondition(NoRecord, 868)
	MisBeginAction(AddMission, 868)
	MisBeginAction(AddTrigger, 8681, TE_GETITEM, 4922, 5 )
	MisCancelAction(ClearMission, 868)
	
	MisNeed(MIS_NEED_DESP, "�������� ����� 5 Ҹ���� �����.")
	MisNeed(MIS_NEED_ITEM, 4922, 5, 10, 5)
	
	MisHelpTalk("��� Ҹ����� ���� ��������� ��� �� ������... ������� ����, ��� � ��� �����������, ���� ��� ��������� ����� ������!")
	MisResultTalk("������� ���! ��� ������ ��� ��������� ������!")
	MisResultCondition(NoRecord, 868)
	MisResultCondition(HasMission, 868)
	MisResultCondition(HasItem, 4922, 5)
	MisResultAction(TakeItem, 4922, 5)
	MisResultAction(ClearMission, 868)
	MisResultAction(SetRecord, 868)
	MisResultAction(AddExp,62032,62032)	
	MisResultAction(AddMoney,1331,1331)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4922 )	
	TriggerAction( 1, AddNextFlag, 868, 10, 5 )
	RegCurTrigger( 8681 )


-----------------------------------�ֿ�ѩ����
	DefineMission( 869, "���������������� ������� �������", 869 )
	
	MisBeginTalk( "<t>� ���� ���� ��� ��� ������!<n><t>� �����(2471,502) ������� <r������� ����������>. ������ <r15 ������� ���������> � ��������� �� ��� �� ��������!")
	MisBeginCondition(LvCheck, ">", 35 )
	--MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 869)
	MisBeginCondition(NoRecord, 869)
	MisBeginAction(AddMission, 869)
	MisBeginAction(AddTrigger, 8691, TE_KILL, 516, 15 )
	MisCancelAction(ClearMission, 869)

	MisNeed(MIS_NEED_DESP, "����� <r15 ������� ���������> � ��������� � �����(2680,657) �� ��������.")
	MisNeed(MIS_NEED_KILL, 516, 15, 10, 15 )

	MisHelpTalk("���� � �� ����� ����������� ����� ������, � �� ���� ��� �������!")
	MisResultTalk("�� ������� ���������� �� ����� �������!")
	MisResultCondition(NoRecord, 869)
	MisResultCondition(HasMission, 869)
	MisResultCondition(HasFlag, 869, 24)
	MisResultAction(ClearMission, 869)
	MisResultAction(SetRecord, 869)
	MisResultAction(AddExp,9170,9170)	
	MisResultAction(AddMoney,939,939)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 516 )	
	TriggerAction( 1, AddNextFlag, 869, 10, 15 )
	RegCurTrigger( 8691 )

-----------------------------------��������
	DefineMission( 870, "��������� ����������", 870 )
	
	MisBeginTalk( "<t>����� ������ ��� ��������� ��������! ��� ����������� � ������ ��� �� ������� � ������� ����������! ������ � �����(2580,553) ��������-������ � �������� ����� ���������.")
	MisBeginCondition(LvCheck, ">", 36 )
	--MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 870)
	MisBeginCondition(NoRecord, 870)
	MisBeginAction(AddMission, 870)
	MisBeginAction(AddTrigger, 8701, TE_KILL, 271, 15 )
	MisCancelAction(ClearMission, 870)

	MisNeed(MIS_NEED_DESP, "������ <b�����> ����� <r15 ��������-������>.")
	MisNeed(MIS_NEED_KILL, 271, 15, 10, 15 )

	MisHelpTalk("������������� ����� ��������� ��� �������!")
	MisResultTalk("������� ���!")
	MisResultCondition(NoRecord, 870)
	MisResultCondition(HasMission, 870)
	MisResultCondition(HasFlag, 870, 24)
	MisResultAction(ClearMission, 870)
	MisResultAction(SetRecord, 870)
	MisResultAction(AddExp,10238,10238)
	MisResultAction(AddMoney,955,955)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 271 )	
	TriggerAction( 1, AddNextFlag, 870, 10, 15 )
	RegCurTrigger( 8701 )

-----------------------------------������
	DefineMission( 871, "��������� ������ ������", 871 )
	
	MisBeginTalk( "<t>������ �� ����������� ����� ��� ��� ��! ������ ���������: 5 ������ �������, 5 ��������� ������� � 5 ����������� �����.<n><t>�� ��� ������ ��� ������� � ������(2580,553), (2811,565), (2471,502).")
	MisBeginCondition(LvCheck, ">", 36 )
	--MisBeginCondition(HasRecord, 861)
	MisBeginCondition(NoMission, 871)
	MisBeginCondition(NoRecord, 871)
	MisBeginAction(AddMission, 871)
	MisBeginAction(AddTrigger, 8711, TE_GETITEM, 4836, 5 )
	MisBeginAction(AddTrigger, 8712, TE_GETITEM, 4907, 5 )
	MisBeginAction(AddTrigger, 8713, TE_GETITEM, 4838, 5 )
	MisCancelAction(ClearMission, 871)
	
	MisNeed(MIS_NEED_DESP, "�������� <b���������> � �����(2662,648): <r5 ������ �������, 5 ��������� ������� � 5 ���������� �����>.")
	MisNeed(MIS_NEED_ITEM, 4836, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4907, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4838, 5, 10, 5)
	
	MisHelpTalk("� ��� ���� ��� �������.")
	MisResultTalk("��-��! � ������������ ������������ ������!")
	MisResultCondition(NoRecord, 871)
	MisResultCondition(HasMission, 871)
	MisResultCondition(HasItem, 4836, 5)
	MisResultCondition(HasItem, 4907, 5)
	MisResultCondition(HasItem, 4838, 5)
	MisResultAction(TakeItem, 4836, 5)
	MisResultAction(TakeItem, 4907, 5)
	MisResultAction(TakeItem, 4838, 5)
	MisResultAction(ClearMission, 871)
	MisResultAction(SetRecord, 871)
	MisResultAction(AddExp,10238,10238)	
	MisResultAction(AddMoney,955,955)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4836 )	
	TriggerAction( 1, AddNextFlag, 871, 10, 5 )
	RegCurTrigger( 8711 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4907 )	
	TriggerAction( 1, AddNextFlag, 871, 20, 5 )
	RegCurTrigger( 8712 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4838 )	
	TriggerAction( 1, AddNextFlag, 871, 30, 5 )
	RegCurTrigger( 8713 )


-----------------------------------������ս��
	DefineMission( 872, "������������������ �����", 872 )
	
	MisBeginTalk( "<t>����� ������� �� ����� �������! ������ �� ��� �������� <r������� �������>.<n><t>����� � �����(2587,455) � �������� ����� ���� ����������.")
	MisBeginCondition(LvCheck, ">", 37 )
	MisBeginCondition(HasRecord, 869)
	MisBeginCondition(NoMission, 872)
	MisBeginCondition(NoRecord, 872)
	MisBeginAction(AddMission, 872)
	MisBeginAction(AddTrigger, 8721, TE_KILL, 194, 15 )
	MisCancelAction(ClearMission, 872)

	MisNeed(MIS_NEED_DESP, "������ � �����(2680,657) �������� ��� ����� 15 ������� �����. ")
	MisNeed(MIS_NEED_KILL, 194, 15, 10, 15 )

	MisHelpTalk("�� ����� ��� ������� �� ����������.")
	MisResultTalk("������� ��� �� �������� � �� ������!")
	MisResultCondition(NoRecord, 872)
	MisResultCondition(HasMission, 872)
	MisResultCondition(HasFlag, 872, 24)
	MisResultAction(ClearMission, 872)
	MisResultAction(SetRecord, 872)
	MisResultAction(AddExp,11413,11413)	
	MisResultAction(AddMoney,972,972)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 194 )	
	TriggerAction( 1, AddNextFlag, 872, 10, 15 )
	RegCurTrigger( 8721 )

-----------------------------------���˴�
	DefineMission( 873, "���������� �����", 873 )
	
	MisBeginTalk( "<t>�� ���� �� ������? ������ ��� ���� <y5 ���������� �������>. �� ������� �� �������� �� <r�������� ��������> � �����(2587,455).")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(HasRecord, 871)
	MisBeginCondition(NoMission, 873)
	MisBeginCondition(NoRecord, 873)
	MisBeginAction(AddMission, 873)
	MisBeginAction(AddTrigger, 8731, TE_GETITEM, 4861, 5 )
	MisCancelAction(ClearMission, 873)
	
	MisNeed(MIS_NEED_DESP, "�������� ��������� � �����(2662,648) 5 ��������� �������.")
	MisNeed(MIS_NEED_ITEM, 4861, 5, 10, 5)
	
	MisHelpTalk("� ���� ��� ��� �����.")
	MisResultTalk("������� ���!")
	MisResultCondition(NoRecord, 873)
	MisResultCondition(HasMission, 873)
	MisResultCondition(HasItem, 4861, 5)
	MisResultAction(TakeItem, 4861, 5)
	MisResultAction(ClearMission, 873)
	MisResultAction(SetRecord, 873)
	MisResultAction(AddExp,11413,11413)
	MisResultAction(AddMoney,972,972)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4861 )	
	TriggerAction( 1, AddNextFlag, 873, 10, 5 )
	RegCurTrigger(8731)

-----------------------------------�ֿ�ѩħ��
	DefineMission( 874, "��������� ����", 874 )
	
	MisBeginTalk( "<t><r���������� ����> ������� ������� <r�������� ��������>. ������ ��� ����������, ��� �� ����� ��� ���� 12 ���������� ����. �� ������� �� � �����(2811,565).")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(HasRecord, 872)
	MisBeginCondition(NoMission, 874)
	MisBeginCondition(NoRecord, 874)
	MisBeginAction(AddMission, 874)
	MisBeginAction(AddTrigger, 8741, TE_KILL, 517, 12 )
	MisCancelAction(ClearMission, 874)

	MisNeed(MIS_NEED_DESP, "����� 12 ��������� ���� ��� ������(2680,657).")
	MisNeed(MIS_NEED_KILL, 517, 12, 10, 12 )

	MisHelpTalk("�� ����������! � � ��� ����!")
	MisResultTalk("�������! ��� ���� �������!")
	MisResultCondition(NoRecord, 874)
	MisResultCondition(HasMission, 874)
	MisResultCondition(HasFlag, 874, 21)
	MisResultAction(ClearMission, 874)
	MisResultAction(SetRecord, 874)
	MisResultAction(AddExp,12706,12706)
	MisResultAction(AddMoney,990,990)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 517 )	
	TriggerAction( 1, AddNextFlag, 874, 10, 12 )
	RegCurTrigger( 8741 )

-----------------------------------������ţ
	DefineMission( 875, "����� �� ������", 875 )
	
	MisBeginTalk( "<t>�� ���������� ������ �� ������! �� ������� ��� ��� ������! ���� �� ������ ���������� ����. � �����(2733,651) ����� ������ ����� ��� �����.")
	MisBeginCondition(LvCheck, ">", 38 )
	--MisBeginCondition(HasRecord, 872)
	MisBeginCondition(NoMission, 875)
	MisBeginCondition(NoRecord, 875)
	MisBeginAction(AddMission, 875)
	MisBeginAction(AddTrigger, 8751, TE_KILL, 501, 20 )
	MisBeginAction(AddTrigger, 8752, TE_GETITEM, 4821, 6 )
	MisCancelAction(ClearMission, 875)

	MisNeed(MIS_NEED_DESP, "����� ��� <b����> <r20 ������ �� �������� ��������> � �������� <y6 �������� ������>. ")
	MisNeed(MIS_NEED_KILL, 501, 20, 10, 20 )
	MisNeed(MIS_NEED_ITEM, 4821, 6, 40, 6 )

	MisHelpTalk("�� � ������ ��� ������ ������! ���������� ���.")
	MisResultTalk("�������! �� ����������� �������.")
	MisResultCondition(NoRecord, 875)
	MisResultCondition(HasMission, 875)
	MisResultCondition(HasFlag, 875, 29)
	MisResultCondition(HasItem, 4821, 6)
	MisResultAction(TakeItem, 4821, 6)
	MisResultAction(ClearMission, 875)
	MisResultAction(SetRecord, 875)
	MisResultAction(AddExp,12706,12706)
	MisResultAction(AddMoney,990,990)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 501 )	
	TriggerAction( 1, AddNextFlag, 875, 10, 20 )
	RegCurTrigger( 8751 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4821 )	
	TriggerAction( 1, AddNextFlag, 875, 40, 6 )
	RegCurTrigger( 8752 )

-----------------------------------�µ�������
	DefineMission( 876, "����� ���������", 876 )
	
	MisBeginTalk( "<t>����� ���� ��� �� ���������� �� ����������-����� �� ���� ��������� ����� �������� <r������������ �������>. ��� ������� ������� ������� ��������! ������������� � �����(2746,451) � �������� ����� ���� �������� ���� <r12 ������������ ��������>!")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(HasRecord, 870)
	MisBeginCondition(NoMission, 876)
	MisBeginCondition(NoRecord, 876)
	MisBeginAction(AddMission, 876)
	MisBeginAction(AddTrigger, 8761, TE_KILL, 270, 12 )
	MisCancelAction(ClearMission, 876)

	MisNeed(MIS_NEED_DESP, "������ <r12 ������������ ��������> � ��������� � <b�����> � ����� (2675,631).")
	MisNeed(MIS_NEED_KILL, 270, 12, 10, 12 )

	MisHelpTalk("�� ��� �� �������� ���� ������� �� ����� �����������!")
	MisResultTalk("�� ��� ������ ��� �������� ���� �������! ������� ��� �� ������!")
	MisResultCondition(NoRecord, 876)
	MisResultCondition(HasMission, 876)
	MisResultCondition(HasFlag, 876, 21)
	MisResultAction(ClearMission, 876)
	MisResultAction(SetRecord, 876)
	MisResultAction(AddExp,14128,14128)	
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 270 )	
	TriggerAction( 1, AddNextFlag, 876, 10, 12 )
	RegCurTrigger( 8761 )

-----------------------------------����װ��Ʒ
	DefineMission( 877, "���������� �������", 877 )
	
	MisBeginTalk( "<t>��� ����� ��������� <y������ ������> �� <r������������ ��������> ��������� � �����(2746,451). ���� �� �� ��� �������� �� � ���������� 10 ����, �� � �� ������ �� �� ��� ����� �������� ���������...")
	MisBeginCondition(LvCheck, ">", 39 )
	--MisBeginCondition(HasRecord, 871)
	MisBeginCondition(NoMission, 877)
	MisBeginCondition(NoRecord, 877)
	MisBeginAction(AddMission, 877)
	MisBeginAction(AddTrigger, 8771, TE_GETITEM, 4911, 10 )
	MisCancelAction(ClearMission, 877)
	
	MisNeed(MIS_NEED_DESP, "�������� <y10 ����� ������> <b����> � �����(2678,631).")
	MisNeed(MIS_NEED_ITEM, 4911, 10, 10, 10)
	
	MisHelpTalk("�� ��� �� �������� ��� 10 ����� ������.")
	MisResultTalk("������� ���, � �� ������ ���� �������!")
	MisResultCondition(NoRecord, 877)
	MisResultCondition(HasMission, 877)
	MisResultCondition(HasItem, 4911, 10)
	MisResultAction(TakeItem, 4911, 10)
	MisResultAction(ClearMission, 877)
	MisResultAction(SetRecord, 877)
	MisResultAction(AddExp,14128,14128)	
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4911 )	
	TriggerAction( 1, AddNextFlag, 877, 10, 10 )
	RegCurTrigger(8771)

-----------------------------------��������
	DefineMission( 878, "������� ����", 878 )
	
	MisBeginTalk( "<t>������� ����� ������� ������� �� ����������� ������ � ���� �����!<n><t>��� ������� � ������� ���! ������������� � �����(2855,451) � ���������� �� <r���������� ����>.")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(HasRecord, 874)
	MisBeginCondition(NoMission, 878)
	MisBeginCondition(NoRecord, 878)
	MisBeginAction(AddMission, 878)
	MisBeginAction(AddTrigger, 8781, TE_KILL, 195, 12 )
	MisCancelAction(ClearMission, 878)

	MisNeed(MIS_NEED_DESP, "������ ��� ������ <r12 ���������� ����>.")
	MisNeed(MIS_NEED_KILL, 195, 12, 10, 12 )

	MisHelpTalk("���� �� ������ - ���������, �� �� �������� � ���� �������.")
	MisResultTalk("��� ���� �������.")
	MisResultCondition(NoRecord, 878)
	MisResultCondition(HasMission, 878)
	MisResultCondition(HasFlag, 878, 21)
	MisResultAction(ClearMission, 878)
	MisResultAction(SetRecord, 878)
	MisResultAction(AddExp,14128,14128)
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 195 )	
	TriggerAction( 1, AddNextFlag, 878, 10, 12 )
	RegCurTrigger( 8781 )

-----------------------------------����ľ��
	DefineMission( 879, "���������� �������", 879 )
	
	MisBeginTalk( "<t>�� ���� ����� �����, ��� �� ���������� ��� �� ������� �������.<n><t>��������� ��� ����� �� �������������� <y10 ��������� ������>. �� �� �������� ���� � �����(2855,451) ����������� ����.")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(HasRecord, 873)
	MisBeginCondition(NoMission, 879)
	MisBeginCondition(NoRecord, 879)
	MisBeginAction(AddMission, 879)
	MisBeginAction(AddTrigger, 8791, TE_GETITEM, 4862, 10 )
	MisCancelAction(ClearMission, 879)
	
	MisNeed(MIS_NEED_DESP, "�������� <b���������> <y10 ��������� ������>.")
	MisNeed(MIS_NEED_ITEM, 4862, 10, 10, 10)
	
	MisHelpTalk("���? �� �� �������� ��� ��� 10 ��������� ������? �� �� �� ��������? � �� ��� ��� �������...")
	MisResultTalk("� ����� �� ������� ����������!")
	MisResultCondition(NoRecord, 879)
	MisResultCondition(HasMission, 879)
	MisResultCondition(HasItem, 4862, 10)
	MisResultAction(TakeItem, 4862, 10)
	MisResultAction(ClearMission, 879)
	MisResultAction(SetRecord, 879)
	MisResultAction(AddExp,14128,14128)
	MisResultAction(AddMoney,1008,1008)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4862 )	
	TriggerAction( 1, AddNextFlag, 879, 10, 10 )
	RegCurTrigger(8791)

-----------------------------------�к�
	DefineMission( 880, "��� �����", 880 )
	
	MisBeginTalk( "<t>��� ������ ����� ������� ���������, ������� �� �� ����� 12 ������ ��������-�������� ��� ���! ���� ���, � �� �� ��� �� �������!")
	MisBeginCondition(LvCheck, ">", 41 )
	MisBeginCondition(HasRecord, 876)
	MisBeginCondition(NoMission, 880)
	MisBeginCondition(NoRecord, 880)
	MisBeginAction(AddMission, 880)
	MisBeginAction(AddTrigger, 8801, TE_KILL, 502, 12 )
	MisCancelAction(ClearMission, 880)

	MisNeed(MIS_NEED_DESP, "����� ��� <b�����> <r12 ������ ��������-��������>.")
	MisNeed(MIS_NEED_KILL, 502, 12, 10, 12 )

	MisHelpTalk("���? �� ����� ��� �� ��������� � ������� ���������-���������?")
	MisResultTalk("������� ���! �� �������� ��...")
	MisResultCondition(NoRecord, 880)
	MisResultCondition(HasMission, 880)
	MisResultCondition(HasFlag, 880, 21)
	MisResultAction(ClearMission, 880)
	MisResultAction(SetRecord, 880)
	MisResultAction(AddExp,17409,17409)
	MisResultAction(AddMoney,1045,1045)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 502 )	
	TriggerAction( 1, AddNextFlag, 880, 10, 12 )
	RegCurTrigger( 8801 )

-----------------------------------���ջԻ�
	DefineMission( 881, "����� ��������", 881 )
	
	MisBeginTalk( "<t>�� �� ����������� ��� � <r������ ��������-��������>?<n><t>����� � ��� �����, ��� ��, ��� �� ����� �� ���� ������, �� ���� ����� ���...<n><t>�� � ����� ��������� �� ���... �� �������� �� �� ��� �� ������ <y��������� �����> �� ������? � ��� �� ��� �����������?")
	MisBeginCondition(LvCheck, ">", 41 )
	--MisBeginCondition(HasRecord, 873)
	MisBeginCondition(NoMission, 881)
	MisBeginCondition(NoRecord, 881)
	MisBeginAction(AddMission, 881)
	MisBeginAction(AddTrigger, 8811, TE_GETITEM, 4822, 8 )
	MisCancelAction(ClearMission, 881)
	
	MisNeed(MIS_NEED_DESP, "�������� <b������ �����> � �����(2688,628) <y8 �������� ����>.")
	MisNeed(MIS_NEED_ITEM, 4822, 8, 10, 8)
	
	MisHelpTalk("�� ��� �� ������ ��������� ��� �������?")
	MisResultTalk("��, ��, ��� �� ����� ��������� ����! ��, ������� �� ������� � ��� ��� ������...")
	MisResultCondition(NoRecord, 881)
	MisResultCondition(HasMission, 881)
	MisResultCondition(HasItem, 4822, 8)
	MisResultAction(TakeItem, 4822, 8)
	MisResultAction(ClearMission, 881)
	MisResultAction(SetRecord, 881)
	MisResultAction(AddExp,17409,17409)
	MisResultAction(AddMoney,1045,1045)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4822 )	
	TriggerAction( 1, AddNextFlag, 881, 10, 8 )
	RegCurTrigger(8811)

----------------------------------���Ա�������
	DefineMission( 882, "����� �� �������� �������", 882 )
	
	MisBeginTalk( "<t>� ������ �� ����� �� �����...<n><t>��������� �� ����� �� <r������� �����������>.<n><t>������ ��� ���� <r10 ������� �����������>, �� ��������� ��������������.")
	MisBeginCondition(LvCheck, ">", 41 )
	MisBeginCondition(HasRecord, 875)
	MisBeginCondition(NoMission, 882)
	MisBeginCondition(NoRecord, 882)
	MisBeginAction(AddMission, 882)
	MisBeginAction(AddTrigger, 8821, TE_KILL, 530, 10 )
	MisBeginAction(AddTrigger, 8822, TE_GETITEM, 4850, 1 )
	MisCancelAction(ClearMission, 882)

	MisNeed(MIS_NEED_DESP, "����� ��� ����� <r10 ������� �����������> � �������� <y������� ������ �� ���. ���������>. ")
	MisNeed(MIS_NEED_KILL, 530, 10, 10, 10 )
	MisNeed(MIS_NEED_ITEM, 4850, 1, 20, 1 )

	MisHelpTalk("�� ��� �� ������ �� �����?")
	MisResultTalk("������ � �� ��� � ���� ���������� �����!")
	MisResultCondition(NoRecord, 882)
	MisResultCondition(HasMission, 882)
	MisResultCondition(HasFlag, 882, 19)
	MisResultCondition(HasItem, 4850, 1)
	MisResultAction(TakeItem, 4850, 1)
	MisResultAction(ClearMission, 882)
	MisResultAction(SetRecord, 882)
	MisResultAction(AddExp,17409,17409)
	MisResultAction(AddMoney,1045,1045)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 530 )	
	TriggerAction( 1, AddNextFlag, 882, 10, 10 )
	RegCurTrigger( 8821 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4850 )	
	TriggerAction( 1, AddNextFlag, 882, 20, 1 )
	RegCurTrigger( 8822 )

-----------------------------------����֮��
	DefineMission( 883, "����������� �����������", 883 )
	
	MisBeginTalk( "<t>�� ���� ����� �����, ��� �� ��������� �� <r�������� ����������>. ��������� ��� ���������� � ���� <y5 �������� ������ �� ���. ���������>.")
	MisBeginCondition(LvCheck, ">", 41 )
	MisBeginCondition(HasRecord, 882)
	MisBeginCondition(NoMission, 883)
	MisBeginCondition(NoRecord, 883)
	MisBeginAction(AddMission, 883)
	MisBeginAction(AddTrigger, 8831, TE_GETITEM, 4850, 5 )
	MisCancelAction(ClearMission, 883)
	
	MisNeed(MIS_NEED_DESP, "�������� <b����> � �����(2678,631) <y5 �������� ������ �� ���. ���������>.")
	MisNeed(MIS_NEED_ITEM, 4850, 5, 10, 5)
	
	MisHelpTalk("�� ��� ���������? � ���������? �� �� ���� ���������, � �������!")
	MisResultTalk("�! ������� ���. �������!")
	MisResultCondition(NoRecord, 883)
	MisResultCondition(HasMission, 883)
	MisResultCondition(HasItem, 4850, 5)
	MisResultAction(TakeItem, 4850, 5)
	MisResultAction(ClearMission, 883)
	MisResultAction(SetRecord, 883)
	MisResultAction(AddExp,17409,17409)	
	MisResultAction(AddMoney,1045,1045)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4850 )	
	TriggerAction( 1, AddNextFlag, 883, 10, 5 )
	RegCurTrigger(8831)


-----------------------------------ˮ����
	DefineMission( 884, "����������� ������", 884 )
	
	MisBeginTalk( "<t>���� �������, ��� <y�������� �������> ����� ������������� � <y����������� ������> � ���� �����! ������� �������� ���?! ��������� ��� <y5 ���������� �������>.")
	MisBeginCondition(LvCheck, ">", 43 )
	MisBeginCondition(HasRecord, 883)
	MisBeginCondition(NoMission, 884)
	MisBeginCondition(NoRecord, 884)
	MisBeginAction(AddMission, 884)
	MisBeginAction(AddTrigger, 8841, TE_GETITEM, 4895, 5 )
	MisCancelAction(ClearMission, 884)
	
	MisNeed(MIS_NEED_DESP, "�������� <b����> <y5 ���������� �������>.")
	MisNeed(MIS_NEED_ITEM, 4895, 5, 10, 5)
	
	MisHelpTalk("����� ��� �� ��������� ��������� �������.")
	MisResultTalk("�������! � ���������, ��� ����� ���� �������� �������.")
	MisResultCondition(NoRecord, 884)
	MisResultCondition(HasMission, 884)
	MisResultCondition(HasItem, 4895, 5)
	MisResultAction(TakeItem, 4895, 5)
	MisResultAction(ClearMission, 884)
	MisResultAction(SetRecord, 884)
	MisResultAction(AddExp,21361,21361)	
	MisResultAction(AddMoney,1084,1084)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4895 )	
	TriggerAction( 1, AddNextFlag, 884, 10, 5 )
	RegCurTrigger(8841)

-----------------------------------���Լ�����
	DefineMission( 885, "����� �� ������ �������", 885 )
	
	MisBeginTalk( "<t>� ��������� ����� �� �����! � ��������� � ��������� �� �������� �������� ��������!")
	MisBeginCondition(LvCheck, ">", 43 )
	MisBeginCondition(HasRecord, 882)
	MisBeginCondition(NoMission, 885)
	MisBeginCondition(NoRecord, 885)
	MisBeginAction(AddMission, 885)
	MisBeginAction(AddTrigger, 8851, TE_KILL, 504, 8 )
	MisBeginAction(AddTrigger, 8852, TE_GETITEM, 4824, 3 )
	MisCancelAction(ClearMission, 885)

	MisNeed(MIS_NEED_DESP, "������ ��� <b�����> <y8 �������� �������� ��������> � ��������� <y3 ��������� ����� �������>. ")
	MisNeed(MIS_NEED_KILL, 504, 8, 10, 8 )
	MisNeed(MIS_NEED_ITEM, 4824, 3, 20, 3 )

	MisHelpTalk("�� �� ������ �����?")
	MisResultTalk("��� ����������� �����?")
	MisResultCondition(NoRecord, 885)
	MisResultCondition(HasMission, 885)
	MisResultCondition(HasFlag, 885, 17)
	MisResultCondition(HasItem, 4824, 3)
	MisResultAction(TakeItem, 4824, 3)
	MisResultAction(ClearMission, 885)
	MisResultAction(SetRecord, 885)
	MisResultAction(AddExp,21361,21361)	
	MisResultAction(AddMoney,1084,1084)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 504 )	
	TriggerAction( 1, AddNextFlag, 885, 10, 8 )
	RegCurTrigger( 8851 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4824 )	
	TriggerAction( 1, AddNextFlag, 885, 20, 3 )
	RegCurTrigger( 8852 )

-----------------------------------��������
	DefineMission( 886, "����� �������� ����", 886 )
	
	MisBeginTalk( "<t>������� ������� �� ����� �������� ��������� � ����� ������! ������ <r16 ������� �������>!")
	MisBeginCondition(LvCheck, ">", 44 )
	MisBeginCondition(HasRecord, 872)
	MisBeginCondition(NoMission, 886)
	MisBeginCondition(NoRecord, 886)
	MisBeginAction(AddMission, 886)
	MisBeginAction(AddTrigger, 8861, TE_KILL, 194, 16 )
	MisCancelAction(ClearMission, 886)

	MisNeed(MIS_NEED_DESP, "����� ��� <b������> <r16 ������� �������>. ")
	MisNeed(MIS_NEED_KILL, 194, 16, 10, 16 )

	MisHelpTalk(" �� ������������� �� ��� ���� �� �������� ��, � ��� � ��� ��������!")
	MisResultTalk("�� ������ ������ �������� ������� � ����� �� �� ��������!")
	MisResultCondition(NoRecord, 886)
	MisResultCondition(HasMission, 886)
	MisResultCondition(HasFlag, 886, 25)
	MisResultAction(ClearMission, 886)
	MisResultAction(SetRecord, 886)
	MisResultAction(AddExp,23628,23628)	
	MisResultAction(AddMoney,1104,1104)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 194 )	
	TriggerAction( 1, AddNextFlag, 886, 10, 16 )
	RegCurTrigger( 8861 )

-----------------------------------�ֲ����˴�
	DefineMission( 887, "��������� ��� �������", 887 )
	
	MisBeginTalk( "<t>���, ��� ������ ��� ����� � ����������!<n><t>���, ��� �� ��� ������� � <r������� ������>, �� ����� �� �� ��� �������� <y5 ��������� ����� �������>?")
	MisBeginCondition(LvCheck, ">", 43 )
	MisBeginCondition(HasRecord, 883)
	MisBeginCondition(NoMission, 887)
	MisBeginCondition(NoRecord, 887)
	MisBeginAction(AddMission, 887)
	MisBeginAction(AddTrigger, 8871, TE_GETITEM, 4910, 5 )
	MisCancelAction(ClearMission, 887)
	
	MisNeed(MIS_NEED_DESP, "�������� <b���������> � �����(2662,648) <y��������� ��� �������>.")
	MisNeed(MIS_NEED_ITEM, 4910, 5, 10, 5)
	
	MisHelpTalk("�� ���������� ����� ����������� � ������� ������?")
	MisResultTalk("��! �� ��������� ������ ������ ����!")
	MisResultCondition(NoRecord, 887)
	MisResultCondition(HasMission, 887)
	MisResultCondition(HasItem, 4910, 5)
	MisResultAction(TakeItem, 4910, 5)
	MisResultAction(ClearMission, 887)
	MisResultAction(SetRecord, 887)
	MisResultAction(AddExp,23628,23628)	
	MisResultAction(AddMoney,1104,1104)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4910 )	
	TriggerAction( 1, AddNextFlag, 887, 10, 5 )
	RegCurTrigger(8871)

-----------------------------------���˹�����
	DefineMission( 888, "�������� ������", 888 )
	
	MisBeginTalk( "<t>��� �� ��� ������, �� ��� �� �����! ����� ������� ����� <r�������� ������>! �������, ��� ����� �� ����� ��� �������!")
	MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 880)
	MisBeginCondition(NoMission, 888)
	MisBeginCondition(NoRecord, 888)
	MisBeginAction(AddMission, 888)
	MisBeginAction(AddTrigger, 8881, TE_KILL, 272, 20 )
	MisBeginAction(AddTrigger, 8882, TE_GETITEM, 4916, 5 )
	MisCancelAction(ClearMission, 888)

	MisNeed(MIS_NEED_DESP, "����� <r20 �������� ��������> � �������� <y5 ��������� ����� ���������> <b�����>.")
	MisNeed(MIS_NEED_KILL, 272, 20, 10, 20 )
	MisNeed(MIS_NEED_ITEM, 4916, 5, 40, 5 )

	MisHelpTalk("�� ������ �� �����? ���������!")
	MisResultTalk("����������!")
	MisResultCondition(NoRecord, 888)
	MisResultCondition(HasMission, 888)
	MisResultCondition(HasFlag, 888, 29)
	MisResultCondition(HasItem, 4916, 5)
	MisResultAction(TakeItem, 4916, 5)
	MisResultAction(ClearMission, 888)
	MisResultAction(SetRecord, 888)
	MisResultAction(AddExp,26112,26112)
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 272 )	
	TriggerAction( 1, AddNextFlag, 888, 10, 20 )
	RegCurTrigger( 8881 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4916 )	
	TriggerAction( 1, AddNextFlag, 888, 40, 5 )
	RegCurTrigger( 8882 )

-----------------------------------����ħ��
	DefineMission( 889, "��������� ����", 889 )
	
	MisBeginTalk( "<t>��� ����� �������� ������ ������ �������� � ����� � ����� �����, ������ � ��� ����� ���������!")
	MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 878)
	MisBeginCondition(NoMission, 889)
	MisBeginCondition(NoRecord, 889)
	MisBeginAction(AddMission, 889)
	MisBeginAction(AddTrigger, 8891, TE_KILL, 545, 15 )
	MisCancelAction(ClearMission, 889)

	MisNeed(MIS_NEED_DESP, "������ ��� <b������> <r15 ����������� ����>.")
	MisNeed(MIS_NEED_KILL, 545, 15, 10, 15 )

	MisHelpTalk("����� - ������, ��� ����!")
	MisResultTalk("�������! ��� ���� �������.")
	MisResultCondition(NoRecord, 889)
	MisResultCondition(HasMission, 889)
	MisResultCondition(HasFlag, 889, 24)
	MisResultAction(ClearMission, 889)
	MisResultAction(SetRecord, 889)
	MisResultAction(AddExp,26112,26112)
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 545 )	
	TriggerAction( 1, AddNextFlag, 889, 10, 15 )
	RegCurTrigger( 8891 )

-----------------------------------�ֲ�����ľ��
	DefineMission( 890, "��������� ����� �������", 890 )
	
	MisBeginTalk( "<t>� ���� ��� ��� ����� ������������� ���������! ��������� ��� <�5 ��������� ������� �������>, �� �� ���� �� ��������, ��� �� �� ����� ��� ����.")
	MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 887)
	MisBeginCondition(NoMission, 890)
	MisBeginCondition(NoRecord, 890)
	MisBeginAction(AddMission, 890)
	MisBeginAction(AddTrigger, 8901, TE_GETITEM, 4912, 5 )
	MisCancelAction(ClearMission, 890)
	
	MisNeed(MIS_NEED_DESP, "�������� <b����������> ����� (2662,648) <y5 ��������� ������� �������>.")
	MisNeed(MIS_NEED_ITEM, 4912, 5, 10, 5)
	
	MisHelpTalk("� �� ��� ���, ��� �� ��� ��������� ��, ��� � ��� �������!")
	MisResultTalk("������� ���!")
	MisResultCondition(NoRecord, 890)
	MisResultCondition(HasMission, 890)
	MisResultCondition(HasItem, 4912, 5)
	MisResultAction(TakeItem, 4912, 5)
	MisResultAction(ClearMission, 890)
	MisResultAction(SetRecord, 890)
	MisResultAction(AddExp,26112,26112)
	MisResultAction(AddMoney,1125,1125)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4912 )	
	TriggerAction( 1, AddNextFlag, 890, 10, 5 )
	RegCurTrigger(8901)

-----------------------------------Ϊ��������ս
	DefineMission( 891, "�� �����!", 891 )
	
	MisBeginTalk( "<t>��������� ���� ���� �� ����� ���� ������������ ����, ������ ���� ����������� �����. ���� �� ������ ��������, ��� �� ��������� ����, ��������� �� ���������.<n><t>�� ���� ����, � ���� ����� � �����!")
	MisBeginCondition(LvCheck, ">", 46 )
	MisBeginCondition(HasRecord, 888)
	MisBeginCondition(NoMission, 891)
	MisBeginCondition(NoRecord, 891)
	MisBeginAction(AddMission, 891)
	MisBeginAction(AddTrigger, 8911, TE_KILL, 506, 10 )
	MisBeginAction(AddTrigger, 8912, TE_GETITEM, 4826, 1 )
	MisCancelAction(ClearMission, 891)

	MisNeed(MIS_NEED_DESP, "����� ��� <b�����>, ��������� � �����(2675,631), <r10 ��������-��������> � �������� ���� <y���� �������� �����>. ")
	MisNeed(MIS_NEED_KILL, 506, 10, 10, 10 )
	MisNeed(MIS_NEED_ITEM, 4826, 1, 20, 1 )

	MisHelpTalk("�� �� ������ ���� ���� ��������, ��� �� ��������� ����?")
	MisResultTalk("����� ������! �� ���������� � ���� �� ������� �������!")
	MisResultCondition(NoRecord, 891)
	MisResultCondition(HasMission, 891)
	MisResultCondition(HasFlag, 891, 19)
	MisResultCondition(HasItem, 4826, 1)
	MisResultAction(TakeItem, 4826, 1)
	MisResultAction(ClearMission, 891)
	MisResultAction(SetRecord, 891)
	MisResultAction(AddExp,28832,28832)
	MisResultAction(AddMoney,1146,1146)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 506 )	
	TriggerAction( 1, AddNextFlag, 891, 10, 10 )
	RegCurTrigger( 8911 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4826 )	
	TriggerAction( 1, AddNextFlag, 891, 20, 1 )
	RegCurTrigger( 8912 )


-----------------------------------����������
	DefineMission( 892, "����� �� �����", 892 )
	
	MisBeginTalk( "<t>���, �� ���� �� ������ ���������, �� ��������� � ������ ������ ���������! ���� - ��� ��������� ������ �����!")
	MisBeginCondition(LvCheck, ">", 49 )
	MisBeginCondition(HasRecord, 885)
	MisBeginCondition(NoMission, 892)
	MisBeginCondition(NoRecord, 892)
	MisBeginAction(AddMission, 892)
	MisBeginAction(AddTrigger, 8921, TE_KILL, 196, 15 )
	MisCancelAction(ClearMission, 892)

	MisNeed(MIS_NEED_DESP, "����� <r15 ������> ��� <b�����>(2675,631). ")
	MisNeed(MIS_NEED_KILL, 196, 15, 10, 15 )

	MisHelpTalk("��� ����� 15 ������? ����� ����� � ������.")
	MisResultTalk("����� ���� ��������� �� ��������� �������� ������ ��������� � ��������� ���������.")
	MisResultCondition(NoRecord, 892)
	MisResultCondition(HasMission, 892)
	MisResultCondition(HasFlag, 892, 24)
	MisResultAction(ClearMission, 892)
	MisResultAction(SetRecord, 892)
	MisResultAction(AddExp,38628,38628)
	MisResultAction(AddMoney,1212,1212)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 196 )	
	TriggerAction( 1, AddNextFlag, 892, 10, 15 )
	RegCurTrigger( 8921 )

-----------------------------------������ս��
	DefineMission( 893, "����� �����", 893 )
	
	MisBeginTalk( "<t>��! ��� �� � ����� ����� ��������� �� <y������� �����>...")
	MisBeginCondition(LvCheck, ">", 49 )
	MisBeginCondition(HasRecord, 890)
	MisBeginCondition(NoMission, 893)
	MisBeginCondition(NoRecord, 893)
	MisBeginAction(AddMission, 893)
	MisBeginAction(AddTrigger, 8931, TE_GETITEM, 4920, 5 )
	MisCancelAction(ClearMission, 893)
	
	MisNeed(MIS_NEED_DESP, "�������� � �����(2662,648) <b���������> <y5 ������� �����>.")
	MisNeed(MIS_NEED_ITEM, 4920, 5, 10, 5)
	
	MisHelpTalk("� �� �����! �� �� �������� ��� �������� <y������ �����>?")
	MisResultTalk("������� ���! �� ��� ����� �������.")
	MisResultCondition(NoRecord, 893)
	MisResultCondition(HasMission, 893)
	MisResultCondition(HasItem, 4920, 5)
	MisResultAction(TakeItem, 4920, 5)
	MisResultAction(ClearMission, 893)
	MisResultAction(SetRecord, 893)
	MisResultAction(AddExp,38628,38628)
	MisResultAction(AddMoney,1212,1212)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4920 )	
	TriggerAction( 1, AddNextFlag, 893, 10, 5 )
	RegCurTrigger(8931)


	---------------------------------------------------------------
	--							     --
	--			���ձȺ����汾			     --
	--							     --
	---------------------------------------------------------------


----------------------------------------
--                                    --
--              ��������              --
--                                    --
----------------------------------------

--���� >> �����
	DefineMission(894, "�����-��������", 894)
	MisBeginTalk("<t>��, ��! � �� �� ������! ��! �� �����! �� ��� �������?<n><t>���� �� �����, �� ������ ��� ���! �������� <r4 ������ ������� ���> � <p������� ����>. ��� ������, �� ������� ���� ����������� � �������.")
	
	MisBeginCondition(NoRecord, 894)
	MisBeginCondition(NoMission, 894)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 894)
	MisBeginAction(AddTrigger, 8941, TE_KILL, 801, 4)

	MisCancelAction(ClearMission, 894)

	MisNeed(MIS_NEED_KILL, 801, 4, 10, 4)
	

	MisHelpTalk("<t>���? �� ��� �� �������� �� ���������? ������ ����������!")
	MisResultTalk("<t>�� ��������� �����! �, ��� � ������ ��� ����������� � ����! � ��������� � ���� ����������� ������� <b������ �����>, �� ��������������� � ����!<n><t>����������� � <b������ �����> � �������� � ���!")

	MisResultCondition(HasMission , 894)
	MisResultCondition(NoRecord, 894)
	MisResultCondition(HasFlag, 894, 13)
	MisResultCondition(HasPirateGuild)

	MisResultAction(ClearMission, 894)
	MisResultAction(SetRecord, 894)

	MisResultAction(AddExp, 80000,80000)
	MisResultAction(AddMoney, 40000,40000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 801)
	TriggerAction(1, AddNextFlag, 894, 10, 4)
	RegCurTrigger(8941)
		

--�ܿ�ʷ���� >> ��ǿ�ĺ���

	DefineMission(895, "����������� �����", 895)
	MisBeginTalk("<t>���, � ���� ��������� <pҸ����>! � �������� ����� ���������� � ���������! �� ��������� ��� ����� ������� ���������!<n><t>�� ������ ����� � �������� ����������! ��� ����� <p���������>! �� ��� �����, ��� �� �������� ������! �� ��� ������ �� ������ �������� ����� ���������� ���� <r30 ������ ������ ���> � <r15 ̸����� ���>. � ���� � ����!")
	
	MisBeginCondition(HasRecord, 894)
	MisBeginCondition(NoRecord, 895)
	MisBeginCondition(NoMission, 895)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 895)
	MisBeginAction(AddTrigger, 8951, TE_KILL, 808, 30)
	MisBeginAction(AddTrigger, 8952, TE_KILL, 817, 15)

	MisCancelAction(ClearMission, 895)

	MisNeed(MIS_NEED_KILL, 808, 30, 30, 30)
	MisNeed(MIS_NEED_KILL, 817, 15, 70, 15)
	

	MisHelpTalk("<t>��� �� ������� ���������! �� ����� ������� ������ �������.")
	MisResultTalk("<t>�� ������������� <p������� �����>! ���� ���������� ������� ��������� ����� ������� ����!")

	MisResultCondition(HasMission ,895)
	MisResultCondition(NoRecord , 895)
	MisResultCondition(HasFlag, 895, 59)
	MisResultCondition(HasFlag, 895, 84)
	MisResultCondition(HasPirateGuild)

	MisResultAction(ClearMission, 895)
	MisResultAction(SetRecord, 895)

	MisResultAction(AddExp, 200000,200000)
	MisResultAction(AddMoney, 150000,150000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 808)
	TriggerAction(1, AddNextFlag, 895, 30, 30)
	RegCurTrigger(8951)
		
	InitTrigger()
	TriggerCondition(1, IsMonster, 817)
	TriggerAction(1, AddNextFlag, 895, 70, 15)
	RegCurTrigger(8952)
	
	
-- �ܿ�ʷ���� >> �������׼�

	DefineMission(896, "����� ������������", 896)
	MisBeginTalk("t>�� ������ ��������? �������! ��� ������ ������ ���������, �� ��� ������ �� ������ ������ ��� �������� �� �� ������.<n><t>���� <r��������� ������ ���> � ������� ��� <y������>. ��� ������� ����������� ���� �������.")
	
	MisBeginCondition(HasRecord, 895)
	MisBeginCondition(NoRecord, 896)
	MisBeginCondition(NoMission, 896)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 896)
	MisBeginAction(AddTrigger, 8961, TE_KILL, 807, 1)
	MisBeginAction(AddTrigger, 8962, TE_GETITEM, 2387, 1)

	MisCancelAction(ClearMission, 896)

	MisNeed(MIS_NEED_KILL, 807, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2387, 1, 20, 1)
	

	MisHelpTalk("<t>�� ������ �� ��������! ��� ����� ������� �������!")
	MisResultTalk("<t>��-��-��! �� �� �������� ��� ������! ��-��-��... �� � ������ �������!")

	MisResultCondition(HasMission, 896)
	MisResultCondition(NoRecord, 896)
	MisResultCondition(HasFlag, 896, 10)
	MisResultCondition(HasItem, 2387, 1)
	MisResultBagNeed(1)
	MisResultCondition(HasPirateGuild)

	MisResultAction(TakeItem, 2387, 1)
	MisResultAction(ClearMission, 896)
	MisResultAction(SetRecord, 896)

	MisResultAction(AddExp, 500000,500000)
	MisResultAction(AddMoney, 1000000,1000000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 807)
	TriggerAction(1, AddNextFlag, 896, 10, 1)
	RegCurTrigger(8961)
		
	InitTrigger()
	TriggerCondition(1, IsItem, 2387)
	TriggerAction(1, AddNextFlag, 896, 20, 1)
	RegCurTrigger(8962)




----------------------------------------
--                                    --
--              ��������              --
--                                    --
----------------------------------------

-- ��ٽ��� >> ������ʳ��
	DefineMission(897, "��� �������", 897)

	MisBeginTalk("<t>���������! ������! �������� �� ����! ����! �� ���������� ��� �� ������������! ���� ������ ������ ���: �������� <y5 ���� �������> � <y5 ������� �������>! ������� ���������� ������, � ��� ����� �������!")
	MisBeginCondition(NoRecord, 897)
	MisBeginCondition(NoMission,897)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 897)
	MisBeginAction(AddTrigger, 8971,TE_GETITEM, 2413, 5)
	MisBeginAction(AddTrigger, 8972,TE_GETITEM, 2414, 5)
	
	MisCancelAction(ClearMission, 897)

	MisNeed(MIS_NEED_ITEM, 2413, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 2414, 5, 20, 5)

	MisHelpTalk("<t>�� ��� �� ������� �������� ���� ������� �������! ��� ���������� ������ ������ ��� ����� �������. � ����� �������, ��� ��� �������� �� ������ ����!")

	MisResultTalk("���, ���! ���! ��� �� �����! ����� �� � ��������... ��...<n><t>��� �������� �� ��� �� ���������� �� ������� ���! �� �������� ��� ����� ���� �������!")
	
	MisResultCondition(HasMission, 897)
	MisResultCondition(NoRecord, 897)
	MisResultCondition(HasItem, 2413, 5)
	MisResultCondition(HasItem, 2414, 5)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem , 2413, 5)
	MisResultAction(TakeItem , 2414, 5)
	MisResultAction(ClearMission, 897)
	MisResultAction(SetRecord, 897)

	MisResultAction(AddExp ,200000, 200000)
	MisResultAction(AddMoney ,100000, 100000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2413)
	TriggerAction(1,AddNextFlag, 897, 10, 5)
	RegCurTrigger(8971)

	InitTrigger()
	TriggerCondition(1, IsItem, 2414)
	TriggerAction(1,AddNextFlag, 897, 20, 5)
	RegCurTrigger(8972)
	
-- ��ٽ��� >>  ���𺣵�
	DefineMission(898, "������ ����������� �������", 898)

	MisBeginTalk("<t>��, ����! � ���� ���� ����� ������ ��� ����!<n><t>��������� ��� <y15 ��������� ������>! �� ������� ������ ��������! ������ ������� ��� ��!")
	MisBeginCondition(HasRecord, 897)
	MisBeginCondition(NoRecord, 898)
	MisBeginCondition(NoMission,898)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 898)
	MisBeginAction(AddTrigger, 8981, TE_GETITEM, 2419, 15)
	
	MisCancelAction(ClearMission, 898)

	MisNeed(MIS_NEED_ITEM, 2419, 15, 30, 15)

	MisHelpTalk("<t>�� ������������� ��������� ������� ������������ �������? �� ��� � ���� ��� ��������...")

	MisResultTalk("<t>��! � ��� � �����! ������� �������� ��������� �� ������� ������� ׸���� ���������! ��������� ����� ������ �������.")
	
	MisResultCondition(HasMission, 898)
	MisResultCondition(NoRecord, 898)
	MisResultCondition(HasItem, 2419, 15)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem , 2419, 15)
	MisResultAction(ClearMission, 898)
	MisResultAction(SetRecord, 898)

	MisResultAction(AddExp ,250000, 250000)
	MisResultAction(AddMoney ,150000, 150000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2419)
	TriggerAction(1,AddNextFlag, 898, 30, 15)
	RegCurTrigger(8981)


-- ��ٽ��� >> ������ĺ������
	DefineMission(899, "��������� ������ ���������", 899)

	MisBeginTalk("<t>Are you prepared? Listen in details regarding the next task!<n><t>We have found out that those Deathsouls come under direct command from the \"Black Jewel\". It should be destroyed as soon as possible.<n><t>At the same time, bring back their Captain's Token. This way they will have no proper leadership and will fall into disarray.<n><t>Remember, it is not as simple as it seems, take extra precaution!")
	MisBeginCondition(HasRecord, 898)
	MisBeginCondition(NoRecord, 899)
	MisBeginCondition(NoMission,899)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 899)
	MisBeginAction(AddTrigger, 8991,TE_KILL, 815, 1)
	MisBeginAction(AddTrigger, 8992,TE_GETITEM, 2429, 1 )
	
	MisCancelAction(ClearMission, 899)

	MisNeed(MIS_NEED_KILL, 815, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2429, 1, 20, 1)

	MisHelpTalk("<t>��� ������ �� ��������� <y���� ��������> � ����� <r׸���� ���������>, ��� ����� ��������� �������!")

	MisResultTalk("<t>�������! �� �������� ��� �������! ��� ���� �������, �� ����������� ������!")
	
	MisResultCondition(HasMission, 899)
	MisResultCondition(NoRecord, 899)
	MisResultCondition(HasFlag, 899, 10)
	MisResultCondition(HasItem, 2429, 1)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem , 2429, 1)
	MisResultAction(ClearMission, 899)
	MisResultAction(SetRecord, 899)

	MisResultAction(AddExp ,500000, 500000)
	MisResultAction(AddMoney ,1000000, 1000000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 815, 1)
	TriggerAction(1,AddNextFlag, 899, 10,1)
	RegCurTrigger(8991)

	InitTrigger()
	TriggerCondition(1, IsItem, 2429, 1)
	TriggerAction(1,AddNextFlag, 899, 20,1)
	RegCurTrigger(8992)


end
AreaMission001()