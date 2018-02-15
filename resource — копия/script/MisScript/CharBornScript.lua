print( "Loading CharBornScript.lua" )

function PCBorn ()

	InitTrigger()
	TriggerCondition( 1, IsSpawnPos, "������" )
	TriggerAction( 1, ObligeAcceptMission, 1 )
	TriggerCondition( 2, IsSpawnPos, "������" )
	TriggerAction( 2, ObligeAcceptMission, 2 )
	TriggerCondition( 3, IsSpawnPos, "������" )
	TriggerAction( 3, ObligeAcceptMission, 3 )
	local triggerlist = GetMultiTrigger()
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"����� ���������� �� ������ �������!_� ���� ����������� ������� ������ ����������. ������� '����� ������ ����' ��� ������������ � ��������� �������� �����. ��� ������ ������� '����� ������ ����', ������ ������ �� �������, ��� �����. ����������� '����� ������ ����' ��� �������� � ����������� �������. �� ����� ��������� � ��� ��������� '����� ������ ����' ��� ������ ��������� �������. ������� '������ ������ ����' �� ������ ������� ������ ��������� �������� - '���������� � �����, �������� � ������ ������, ���������, ��' � ��. ����������� '������ ������ ����' ��� �������� ������� ������. ����������� '�������� ����' ��� ����������� � �������� ������� ������, ������ ������� '������ ������ ����' ��� ����������� ������ � �������� ���������._" )
	TriggerAction( 1, AddTrigger, 60000, TE_LEVELUP, 2, 1 )
	TriggerAction( 1, AddTrigger, 60001, TE_LEVELUP, 5, 1 )
	TriggerAction( 1, AddTrigger, 60002, TE_LEVELUP, 9, 1 )
	TriggerAction( 1, AddTrigger, 60003, TE_LEVELUP, 10, 1 )
	--TriggerAction( 1, AddTrigger, 60004, TE_LEVELUP, 45, 1 )
	TriggerAction( 1, MultiTrigger, triggerlist, 3 )
	TriggerAction( 1, SaveMissionData )

	RegTrigger( 88888, 1 )
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    �������! ���� ������ ���-��� �� ������� �����. _����� ������� ��, �������� �� ������� ����� ����-�����, ������������� � ������ ������� ���� ������. _��������� ���� ������� �����. _�������� �������, �� ������� ������ ���������, � ������� ���������� �� ���� X � Y. _����� ����� ���������� �������� �������, ����������� _����������� � ������ �������." )
	RegTrigger( 60000, 1 )
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    ����� �� ������� ������ ���� �����������, �� ����� ���� ������������ � �������� ���������: _������� ������� 'Insert', ���� ��� �������� ������ ���������. ����� ����������� ����������� �������� �������������� ����� � ����; _������ ������ �� ������ ��������� ��������, �������� � ������ ���� ��������, � ������� 30 ������ ����� ��������; _������� 'Ctrl+A', ����� ��������� ��� �������� ����������; _������� 'Alt+���' �� ������, ���� ��������� _�� ���." )
	RegTrigger( 60001, 1 )
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    ������ �� ������� � �������� ������ �������. ������ ����� ������� ��������� ��� ���������. ����������� ������� ������ ��� ���� � ������ ����������. �������� ����������� � �������� �������� ���������. ��� �������� ��������� ��������� ��������� ����������. ����� ��� ���������� � ���������� 10 ������ �� ������� �������� ���������._" )
	RegTrigger( 60002, 1 )
	
	InitTrigger()
	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    ������������! �� �������� ������ 10 � �������� ���� ������ ���� �������. � ������ ����� ������� �� ������ �������� �� ������ ���� �������. ����� ��������� �������� ��������� �� ������� ������� �� �� �������� �������. ����� ������� ��������� ������������� � ����� �� ������� �������. �����!_" )
	RegTrigger( 60003, 1 )

--	InitTrigger()
--	TriggerAction( 1, HelpInfo,MIS_HELP_DESP,"    ������������! �� �������� ������ 45-�� ������" )
--	RegTrigger( 60004, 1 )

end
PCBorn()
