print( "+�?���� npcscripts06.lua" )

function unseal()
Talk( 1, "������: ������! � ����� ��������� ���� �� ������! _��� ������ ������� " )

end

function small_bruck()
Talk( 1, "������: ������! � ����� ��������� ���� �� ������! _��� ������ ������� " )

end

function big_bruck()
Talk( 1, "������: ������! � ����� ��������� ���� �� ������! _��� ������ ������� " )

end
--�������� �����������
function r_leter1()
Talk( 1, "������: ������! � ���� ���� ��������� ��������� ����. ������ ��������!" )
Text( 1, "����", BuyPage)
	InitTrade()
	InitTrade()
	--1 �������
	Weapon(	849	)--����� ����� ������
	Weapon(	3097	)--��������� �����
	Weapon(	3096	)-- ��������� �����
	Weapon(	3095	)--��������� ����������
	--2 �������
	Weapon(	3844	)-- ��
	Weapon(	3845	)-- ��
	Weapon(	3846	) -- ����� ����
	Weapon(	3105	)--����� ����������
	--3 �������
	Weapon(	3088	)--������ � 30 ��������
	Weapon(	3090	)--������
	Weapon(	3091	)--������
	Weapon(	3093	)--������
	--4 �������
	--��� ������
	Weapon(	3462	) -- ���������� ������
	Weapon(	3463	) -- ������� ��������
	Weapon(	3300	) -- ������� �����
	Weapon(	3301	) -- ����������� �������������
	--������
	Weapon(	3109	) -- ������ ������
	Weapon(	3110	) -- ������ ������
	Weapon(	3111	) -- ������ ������
	Weapon(	3112	) -- ������ ������
	Weapon(	3113	) -- ������ ������
	
	Weapon(6508) --  
	Weapon(6509) --  
	Weapon(6510) --  
	Weapon(6511) --  
	Weapon(6512) --  
	Weapon(6513) --  







	
	Other(	3090	)
	Other(	3091	)
	Other(	3093	)
	Other(	3844	) -- ��
	Other(	3845	) -- ��
	Other(	3094	) -- Amp of strive
	Other(	3096	) -- amp of luck
	Other(	3095	) -- Hi Amp of strive
	Other(	5694	)
	Other(	5695	)
	Other(	3097	) -- hi amp of luck
	Other(	0849	) -- bananas
	Other(	3846	) -- voodoo doll
	Other(	3462	) -- magical clover
	Other(	3463	) -- Icy Crystal
	Other(	3300	) -- intense magic
	Other(	3301	) -- crystalline blessing
	Other(	3109	) -- str reset
	Other(	3110	) -- con reset
	Other(	3111	) -- agi reset
	Other(	3112	) -- acc reset
	Other(	3113	) -- spr reset
	Other(	3105	)
	Other(	1024	)
	Other(	8292	)
	Other(	8297	)
	Other(	4602	)
	Other(	4604	)
	Other(	4603	)
	Other(	3141	)
	Other(	1139	)	-- ����������� ����������, 1 ��.
	Other(	1140	)	-- ����������� �������� 1 ��.
	Other(	1141	)	-- ����������� ��������� 1 ��.
	Other(	1142	)	-- ����� 1 ��.
	Other(	1143	)	-- ����������� ������� 1 ��.
	Other(	1150	)	-- ������ ������� 1 ��.
	Other(	1151	)	-- �������� ��� 1 ��.
	Other(	1152	)	-- ������� ���� 1 ��.
	Other(	2673	)	-- ��������� ������ 1 ��.
	Other(	2674	)	-- ��������� ������� 1 ��.
	Other(	2675	)	-- ����������, 1 ��.
	Other(	2676	)	-- �����, 1 ��.
	Other(	2677	)	-- ���������� ���� 1 ��.
	Other(	2678	)	-- ������� ����, 1 ��.

end

--��������� ���������
function new_talk09()
Talk( 1, "���������: ������! � ��� ����������. " )
Text( 1, " ������ ��������� ", JumpPage, 2)
Text( 1, " ������ ��������� ", JumpPage, 3)
Text( 1, " ����� ������ ",  BuyPage)
InitTrigger()
	TriggerAction( 1, AddMoney, 10000000 )
	Text( 1, "�������� ����� �����",MultiTrigger, GetMultiTrigger(), 1)
	

Text( 1, " ���� ",  CloseTalk)

Talk( 2, "��� ��������� ��������� 9 ��� � 1� ������! " )
Text( 2, " ������ ", JumpPage, 4 )
Text( 2, " ������� ", JumpPage, 5 )
Text( 2, " �������� ", JumpPage, 6 )
Text( 2, " �������������� ", JumpPage, 7 )
Text( 2, " ����� ", JumpPage, 1 )

Talk( 3, "��� ��������� ��������� 40 ��� � 50� ������! " )
Text( 3, "���� ���� ��������!", JumpPage, 8 )
Text( 3, "���� ���� ���������!", JumpPage, 9 )
Text( 3, "���� ���� ��������!", JumpPage, 10 )
Text( 3, "���� ���� ���������!", JumpPage, 11 )
Text( 3, "���� ���� �������!", JumpPage, 12 )
Text( 3, "���� ���� ����������� �����!", JumpPage, 13 )
Text( 3, "����", JumpPage, 1 )

Talk( 4, "� ���� ��� ���� 9 ��� � 1� ������? ����� �������. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 8 )
TriggerCondition( 1, IsCategory, 1 )
TriggerCondition( 1, PfEqual, 0 )
TriggerCondition( 1, HasMoney, 1000,1000 )
TriggerAction( 1, TakeMoney, 1000,1000 )
TriggerAction( 1, SetProfession, 1 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 8 )
TriggerCondition( 2, IsCategory, 2 )
TriggerCondition( 2, PfEqual, 0 )
TriggerCondition( 2, HasMoney, 1000,1000 )
TriggerAction( 2, TakeMoney, 1000,1000 )
TriggerAction( 2, SetProfession, 1 )
TriggerAction( 2, JumpPage, 14 )
TriggerCondition( 3, LvCheck, ">", 8 )
TriggerCondition( 3, IsCategory, 3 )
TriggerCondition( 3, PfEqual, 0 )
TriggerCondition( 3, HasMoney, 1000,1000 )
TriggerAction( 3, TakeMoney, 1000,1000 )
TriggerAction( 3, SetProfession, 1 )
TriggerAction( 3, JumpPage, 14 )
TriggerFailure( 3, JumpPage, 15 )
Text( 4, "����� ���� ", MultiTrigger, GetMultiTrigger(), 3)
Text( 4, "������� � ������ ��������� ", JumpPage, 2 )

Talk( 5, "� ���� ��� ���� 9 ��� � 1� ������? ����� �������. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 8 )
TriggerCondition( 1, IsCategory, 1 )
TriggerCondition( 1, PfEqual, 0 )
TriggerCondition( 1, HasMoney, 1000,1000 )
TriggerAction( 1, TakeMoney, 1000,1000 )
TriggerAction( 1, SetProfession, 2 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 8 )
TriggerCondition( 2, IsCategory, 3 )
TriggerCondition( 2, PfEqual, 0 )
TriggerCondition( 2, HasMoney, 1000,1000 )
TriggerAction( 2, TakeMoney, 1000,1000 )
TriggerAction( 2, SetProfession, 2 )
TriggerAction( 2, JumpPage, 14 )
TriggerFailure( 2, JumpPage, 15 )
Text( 5, "����� ���� ", MultiTrigger, GetMultiTrigger(), 2)
Text( 5, "������� � ������ ��������� ", JumpPage, 2 )

Talk( 6, "� ���� ��� ���� 9 ��� � 1� ������? ����� �������. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 8 )
TriggerCondition( 1, IsCategory, 3 )
TriggerCondition( 1, PfEqual, 0 )
TriggerCondition( 1, HasMoney, 1000,1000 )
TriggerAction( 1, TakeMoney, 1000,1000 )
TriggerAction( 1, SetProfession, 5 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 8 )
TriggerCondition( 2, IsCategory, 4 )
TriggerCondition( 2, PfEqual, 0 )
TriggerCondition( 2, HasMoney, 1000,1000 )
TriggerAction( 2, TakeMoney, 1000,1000 )
TriggerAction( 2, SetProfession, 5 )
TriggerAction( 2, JumpPage, 14 )
TriggerFailure( 2, JumpPage, 15 )
Text( 6, "����� ���� ", MultiTrigger, GetMultiTrigger(), 2)
Text( 6, "������� � ������ ��������� ", JumpPage, 2 )

Talk( 7, "� ���� ��� ���� 9 ��� � 1� ������? ����� �������. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 8 )
TriggerCondition( 1, IsCategory, 1 )
TriggerCondition( 1, PfEqual, 0 )
TriggerCondition( 1, HasMoney, 1000,1000 )
TriggerAction( 1, TakeMoney, 1000,1000 )
TriggerAction( 1, SetProfession, 4 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 8 )
TriggerCondition( 2, IsCategory, 3 )
TriggerCondition( 2, PfEqual, 0 )
TriggerCondition( 2, HasMoney, 1000,1000 )
TriggerAction( 2, TakeMoney, 1000,1000 )
TriggerAction( 2, SetProfession, 4 )
TriggerAction( 2, JumpPage, 14 )
TriggerCondition( 3, LvCheck, ">", 8 )
TriggerCondition( 3, IsCategory, 4 )
TriggerCondition( 3, PfEqual, 0 )
TriggerCondition( 3, HasMoney, 1000,1000 )
TriggerAction( 3, TakeMoney, 1000,1000 )
TriggerAction( 3, SetProfession, 4 )
TriggerAction( 3, JumpPage, 14 )
TriggerFailure( 3, JumpPage, 15 )
Text( 7, "����� ���� ", MultiTrigger, GetMultiTrigger(), 3)
Text( 7, "������� � ������ ��������� ", JumpPage, 2 )

Talk( 8, "� ���� ��� ���� 40 ��� � 50� ������? ����� �������. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 39 )
TriggerCondition( 1, IsCategory, 1 )
TriggerCondition( 1, PfEqual, 1 )
TriggerCondition( 1, HasMoney, 50000,50000 )
TriggerAction( 1, TakeMoney, 50000,50000 )
TriggerAction( 1, SetProfession, 9 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 39 )
TriggerCondition( 2, IsCategory, 3 )
TriggerCondition( 2, PfEqual, 1 )
TriggerCondition( 2, HasMoney, 50000,50000 )
TriggerAction( 2, TakeMoney, 50000,50000 )
TriggerAction( 2, SetProfession, 9 )
TriggerAction( 2, JumpPage, 14 )
TriggerFailure( 2, JumpPage, 15 )
Text( 8, "����� ���� ", MultiTrigger, GetMultiTrigger(), 2)
Text( 8, "������� � ������ ���������", JumpPage, 2 )

Talk( 9, "� ���� ��� ���� 40 ��� � 50� ������? ����� �������. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 39 )
TriggerCondition( 1, IsCategory, 2 )
TriggerCondition( 1, PfEqual, 1 )
TriggerCondition( 1, HasMoney, 50000, 50000)
TriggerAction( 1, SetProfession, 8 )
TriggerAction( 1, TakeMoney, 50000, 50000 )
TriggerAction( 1, JumpPage, 14 )
TriggerFailure( 1, JumpPage, 15 )
Text( 9, "����� ���� ", MultiTrigger, GetMultiTrigger(), 1)
Text( 9, "������� � ������ ��������� ", JumpPage, 2 )

Talk( 10, "� ���� ��� ���� 40 ��� � 50� ������? ����� �������. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 39 )
TriggerCondition( 1, IsCategory, 1 )
TriggerCondition( 1, PfEqual, 2 )
TriggerCondition( 1, HasMoney, 50000,50000 )
TriggerAction( 1, TakeMoney, 50000,50000 )
TriggerAction( 1, SetProfession, 12 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 39 )
TriggerCondition( 2, IsCategory, 3 )
TriggerCondition( 2, PfEqual, 2 )
TriggerCondition( 2, HasMoney, 50000,50000 )
TriggerAction( 2, TakeMoney, 50000,50000 )
TriggerAction( 2, SetProfession, 12 )
TriggerAction( 2, JumpPage, 14 )
TriggerFailure( 2, JumpPage, 15 )
Text( 10, "����� ���� ", MultiTrigger, GetMultiTrigger(), 2)
Text( 10, "������� � ������ ��������� ", JumpPage, 2 )

Talk( 11, "� ���� ��� ���� 40 ��� � 50� ������? ����� �������. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 39 )
TriggerCondition( 1, IsCategory, 3 )
TriggerCondition( 1, PfEqual, 5 )
TriggerCondition( 1, HasMoney, 50000,50000 )
TriggerAction( 1, TakeMoney, 50000,50000 )
TriggerAction( 1, SetProfession, 13 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 39 )
TriggerCondition( 2, IsCategory, 4 )
TriggerCondition( 2, PfEqual, 5 )
TriggerCondition( 2, HasMoney, 50000,50000 )
TriggerAction( 2, TakeMoney, 50000,50000 )
TriggerAction( 2, SetProfession, 13 )
TriggerAction( 2, JumpPage, 14 )
TriggerFailure( 2, JumpPage, 15 )
Text( 11, "����� ���� ", MultiTrigger, GetMultiTrigger(), 2)
Text( 11, "������� � ������ ��������� ", JumpPage, 2 )

Talk( 12, "� ���� ��� ���� 40 ��� � 50� ������? ����� �������. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 39 )
TriggerCondition( 1, IsCategory, 3 )
TriggerCondition( 1, PfEqual, 5 )
TriggerCondition( 1, HasMoney, 50000,50000 )
TriggerAction( 1, TakeMoney, 50000,50000 )
TriggerAction( 1, SetProfession, 14 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 39 )
TriggerCondition( 2, IsCategory, 4 )
TriggerCondition( 2, PfEqual, 5 )
TriggerCondition( 2, HasMoney, 50000,50000 )
TriggerAction( 2, TakeMoney, 50000,50000 )
TriggerAction( 2, SetProfession, 14 )
TriggerAction( 2, JumpPage, 14 )
TriggerFailure( 2, JumpPage, 15 )
Text( 12, "����� ���� ", MultiTrigger, GetMultiTrigger(), 2)
Text( 12, "������� � ������ ��������� ", JumpPage, 2 )

Talk( 13, "� ���� ��� ���� 40 ��� � 50� ������? ����� �������. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 39 )
TriggerCondition( 1, IsCategory, 1 )
TriggerCondition( 1, PfEqual, 4 )
TriggerCondition( 1, HasMoney, 50000,50000 )
TriggerAction( 1, TakeMoney, 50000,50000 )
TriggerAction( 1, SetProfession, 16 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 39 )
TriggerCondition( 2, IsCategory, 3 )
TriggerCondition( 2, PfEqual, 4 )
TriggerCondition( 2, HasMoney, 50000,50000 )
TriggerAction( 2, TakeMoney, 50000,50000 )
TriggerAction( 2, SetProfession, 16 )
TriggerAction( 2, JumpPage, 14 )
TriggerCondition( 3, LvCheck, ">", 39 )
TriggerCondition( 3, IsCategory, 4 )
TriggerCondition( 3, PfEqual, 4 )
TriggerCondition( 3, HasMoney, 50000,50000 )
TriggerAction( 3, TakeMoney, 50000,50000 )
TriggerAction( 3, SetProfession, 16 )
TriggerAction( 3, JumpPage, 14 )
TriggerFailure( 3, JumpPage, 15 )
Text( 13, "����� ���� ", MultiTrigger, GetMultiTrigger(), 3)
Text( 13, "������� � ������ ��������� ", JumpPage, 2 )

Talk( 14, "���������: ���������� ���� � ���������� ��������� ")
Text( 14, "������� ",  CloseTalk)

Talk( 15, "���������: �� �� ��������� ��� ����������!")
Text( 15, "� ����� ",  CloseTalk) 
	
	
	
	
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

end

--���
function talk_fei()
	Talk( 1, "�����: ������, � ���, ������ ��������� ���� �������? � ���� ���� � ���� ������." )
	Text( 1, "����������", BuyPage )
InitTrade()

	Weapon(	262	)--��������� ���
	Weapon(	262	)--��������� ���
	Weapon(	262	)--��������� ���
	Weapon(	262	)--��������� ���
	Weapon(	262	)--��������� ���
	Weapon(	262	)--��������� ���
	--1 �������
	Weapon(	0222	)--����� �������� �������
	--Weapon(	276	)--�������� ����� �������� �������
	
	--Weapon(	0260	)--����������� ���������
	--2 �������
	Weapon(	0223	)--������� �����
	--Weapon(	277	)--�������� ������� �����
	
	--Weapon(	0247	)--����������� �������
	--3 �������
	Weapon(	0224	)--������� � ������
	--Weapon(	278	)--�������� ������� � ������
	
	--Weapon(	0253	)--����������� ��������������
	--4 �������
	Weapon(	0225	)--���������� �����
	--Weapon(	279	)--�������� ���������� �����
	
	--Weapon(	0244	)--����������� ������
	--5 �������
	Weapon(	0226	)--���������� �������
	--Weapon(	280	)--������� ���������� �������
	
	--Weapon(	0250	)--����������� �����
	--6 �������
--	Weapon(	2312	)--����������� ����
	Weapon(	0227	)--������� ���
	Weapon(	0246	)--��������� �������
	Weapon(	0252	)--��������� ��������������
	Weapon(	0243	)--��������� ������
	Weapon(	0249	)--��������� �����
	Weapon(	0259	)--��������� ���������
	--Weapon(	5644	)--������� ������� ���
--	Weapon(		)
	--����� �������
	Defence(	3918	)--������ ����� �������
	Defence(	3919	)--������ ����� ������
	Defence(	3920	)--������ ����� ����
	Defence(	3921	)--������ ����� ����������
	Defence(	3922	)--������ ����� �������
	Defence(	3924	)--������ ����� ��������
	Defence(	3925	)--������ ����� �����


end

--������
function new_talk07 ()
	Talk( 1, "��������: ������, � ������ ������ �� ��� ����� �����. ���� ������ �����������?" )
	Text( 1, "����������", BuyPage )
--[[	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasMoney, 25000000 )--25��
	TriggerAction( 1, TakeMoney, 25000000 )
	TriggerAction( 1, GiveItem, 6205, 1, 4 )--����� �� ������ ����
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "����� �� ���� �� 25�� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "��������� ", JumpPage, 1 )
	Talk( 2, "��������: ����� �����, ���� ������������, ������ ������� ����� ������� �����." )
	Talk( 3, "��������: �� ��������� ���� ��������, ��� �����, � �� ���� � ����� ������ �������������!" )--]]
	InitTrade()
<<<<<<< HEAD
	Weapon(	4604	)--����� �� ������
	Weapon(	4603	)--����� �� �������
	Weapon(	4602	)--����� �� �����������
	Weapon(	3141	)--�������� �����
	Weapon(	3076	)--������� � ���������
	Weapon(	3048	)--������� � ���������
	Weapon(	0563	)--������� �� ������ ����
	Weapon(	0583	)--������� �� ������ �����
	Weapon(	3049	)--������ � ���� ����������
	Weapon(	3050	)--������� � ��������� ������� ����
	Weapon(	3051	)--������� � ��������� ���
	Weapon(	3052	)--������� � �����
	Weapon(	3053	)--������� � �������� ����
	Weapon(	2445	)--����� � ��������� �����������
	Weapon(	3054	)--������� � �������� �����
	Weapon(	3059	)--����� � �������� ����� 2
	Weapon(	3060	)--������� � �������� ����� 3
	Weapon(	3070	)--������� � �������� ����� 4
	Weapon(	3071	)--������� � �������� ����� 5
	Weapon(	3072	)--������� � �������� ����� 6
	--�������
	Weapon(	8605	)--������� � �������� ����� 6
	Weapon(	8606	)--������� � �������� ����� 6
	Weapon(	8607	)--������� � �������� ����� 6
	Weapon(	8608	)--������� � �������� ����� 6
	Weapon(	8609	)--������� � �������� ����� 6
	Weapon(	8610	)--������� � �������� ����� 6
	Weapon(	8611	)--������� � �������� ����� 6
=======
	Weapon(	4604	)--Билет до Ледыни
	Weapon(	4603	)--Билет до Шайтана
	Weapon(	4602	)--Билет до Серебряного
	Weapon(	3141	)--Обратный билет
	Weapon(	3076	)--Пропуск в Весноград
	Weapon(	3048	)--Пропуск в Громоград
	Weapon(	0563	)--Пропуск на остров Лета
	Weapon(	0583	)--Пропуск на остров Осени
	Weapon(	3049	)--Следуй в порт Громограда
	Weapon(	3050	)--Пропуск к Священной Снежной горе
	Weapon(	3051	)--Пропуск в Андийский лес
	Weapon(	3052	)--Пропуск в Оазис
	Weapon(	3053	)--Пропуск к Ледяному шипу
	Weapon(	2445	)--Билет в карибское путешествие
	Weapon(	3054	)--Пропуск в Одинокую башню
	Weapon(	3059	)--Билет в Одинокую башню 2
	Weapon(	3060	)--Пропуск в Одинокую башню 3
	Weapon(	3070	)--Пропуск в Одинокую башню 4
	Weapon(	3071	)--Пропуск в Одинокую башню 5
	Weapon(	3072	)--Пропуск в Одинокую башню 6
	--Острова
	Weapon(	6514	)--Пропуск в Одинокую башню 6
	Weapon(	6515	)--Пропуск в Одинокую башню 6
	Weapon(	6516	)--Пропуск в Одинокую башню 6
	Weapon(	6517	)--Пропуск в Одинокую башню 6
	Weapon(	6518	)--Пропуск в Одинокую башню 6
	Weapon(	6519	)--Пропуск в Одинокую башню 6
	Weapon(	6520	)--Пропуск в Одинокую башню 6
<<<<<<< HEAD
>>>>>>> 3053475ed5c9687db06bfa4210c49f26bebdfaf0
=======
>>>>>>> 3053475ed5c9687db06bfa4210c49f26bebdfaf0
end



--�������� ����
function new_talk02 ()
	Talk( 1, "��������: ������, � ������ ��������� �������, �� ������ ��������� ������� � �����? ��� � ���� �� ����� �����?" )
	Text( 1, "����������", BuyPage )

	InitTrade()
	--����
	--[[
--����������� ������
	Weapon(		)
	Weapon(	5041	)
	Weapon(	5045	)
	Weapon(	5049	)
--�������� �������
	Weapon(		)
	Weapon(	5057	)
	Weapon(	5061	)
	Weapon(	5065	)
--����������� ������ ������
	Weapon(	5205	)
	Weapon(	5206	)
	Weapon(	5207	)
	Weapon(	5220	)
--������� ������2
	Weapon(		)
	Weapon(	5075	)
	Weapon(	5076	)
	Weapon(	5077	)
--������ �������3 Netu texturi
	--Weapon(		)
	--Weapon(	5081	)
	--Weapon(	5082	)
	--Weapon(	5083	)
--������ �����4
	Weapon(		)
	Weapon(	5078	)
	Weapon(	5079	)
	Weapon(	5080	)
--���������� ������5
	Weapon(	5118	)
	Weapon(	5119	)
	Weapon(	5120	)
	Weapon(	5121	)
--������������� ������6
	Weapon(	5122	)
	Weapon(	5123	)
	Weapon(	5124	)
	Weapon(	5125	)
--���������� ������7
	Weapon(		)
	Weapon(	5127	)
	Weapon(	5128	)
	Weapon(	5129	)
--�������� ������8
	Weapon(		)
	Weapon(	5154	)
	Weapon(	5155	)
	Weapon(	5156	)
--��������� ������ ������9
	Weapon(		)
	Weapon(	5160	)
	Weapon(	5161	)
	Weapon(	5162	)
--������ ����������� ������10
	Weapon(		)
	Weapon(	5221	)
	Weapon(	5222	)
	Weapon(	5223	)
--������ �����11
	Weapon(		)
	Weapon(	5224	)
	Weapon(	5225	)
	Weapon(	5226	)
--������ �����12
	Weapon(		)
	Weapon(	5227	)
	Weapon(	5228	)
	Weapon(	5229	)
--������ ����13
	Weapon(		)
	Weapon(	5341	)
	Weapon(	5342	)
	Weapon(	5343	)
--���������� ������14
	Weapon(		)
	Weapon(	5157	)
	Weapon(	5158	)
	Weapon(	5159	)
--������ ����������17
	Weapon(	5521	)
	Weapon(	5522	)
	Weapon(	5523	)
	Weapon(	5524	)
--��������� �������18
	Weapon(	5593	)
	Weapon(	5594	)
	Weapon(	5595	)
	Weapon(	5596	)
--������ �����19 NO_TARGET
	--Weapon(	6463	)
	--Weapon(	6464	)
	--Weapon(	6465	)
	--Weapon(	6466	)
--������ �������� �����20
	Weapon(	5456	)
	Weapon(	5457	)
	Weapon(	5458	)
	Weapon(	5459	)
--������ ������� ���������21
	Weapon(		)
	Weapon(	5488	)
	Weapon(	5489	)
	Weapon(	5490	)
--������ ������22
	Weapon(	5537	)
	Weapon(	5538	)
	Weapon(	5539	)
	Weapon(	5540	)
--������ �������23
	Weapon(	5553	)
	Weapon(	5554	)
	Weapon(	5555	)
	Weapon(	5556	)
--������ �������������24
	Weapon(	5569	)
	Weapon(	5570	)
	Weapon(	5571	)
	Weapon(	5572	)
--������ �������� ����25
	Weapon(	5577	)
	Weapon(	5578	)
	Weapon(	5579	)
	Weapon(	5580	)
--������ ������26
	Weapon(	5356	)
	Weapon(	5357	)
	Weapon(	5358	)
	Weapon(	5359	)
--������ ���������27
	Weapon(	5372	)
	Weapon(	5373	)
	Weapon(	5374	)
	Weapon(	5375	)
--����������� ������28
	Weapon(	5388	)
	Weapon(	5389	)
	Weapon(	5390	)
	Weapon(	5391	)
--������ ������� ��������29
	Weapon(		)
	Weapon(	5432	)
	Weapon(	5433	)
	Weapon(	5444	)
--������ ������������� ������30
	Weapon(		)
	Weapon(	5422	)
	Weapon(	5423	)
	Weapon(	5440	)
	--]]
--��������� ��������1
	Defence(	5287	)
	Defence(	5288	)
	Defence(	5289	)
	Defence(	5290	)
	--[[
--������������� ��������2
	Defence(		)
	Defence(	5303	)
	Defence(	5304	)
	Defence(	5305	)
--������ ������3
	Defence(	5315	)
	Defence(	5316	)
	Defence(	5317	)
	Defence(	5318	)
--��������� ������4
	Defence(	5593	)
	Defence(	5594	)
	Defence(	5595	)
	Defence(	5596	)
--������ ���������5
	Defence(	5632	)
	Defence(	5633	)
	Defence(	5634	)
	Defence(	5635	)
--���������� ������6
	Defence(	5651	)
	Defence(	5652	)
	Defence(	5653	)
	Defence(	5654	)
--������ �������� ����7
	Defence(	5661	)
	Defence(	5662	)
	Defence(	5663	)
	Defence(	5664	)
--���������� ������8
	Defence(	5677	)
	Defence(	5678	)
	Defence(	5679	)
	Defence(	5680	)
--������ ���������9
	Defence(	5726	)
	Defence(	5727	)
	Defence(	5728	)
	Defence(	5729	)
--������ ������ ����10
	Defence(	5742	)
	Defence(	5743	)
	Defence(	5744	)
	Defence(	5745	)
--����������� ������11
	Defence(	5898	)
	Defence(	5899	)
	Defence(	5900	)
	Defence(	5901	)
--������ ���������� ����12
	Defence(	6503	)
	Defence(	6504	)
	Defence(	6505	)
	Defence(	6506	)
--����������� ������ ����������13
	Defence(	5905	)
	Defence(	5906	)
	Defence(	5907	)
	Defence(	5908	)
--������ ����������14
	Defence(	5918	)
	Defence(	5919	)
	Defence(	5920	)
	Defence(	5921	)
--������� ������ ����������15
	Defence(	5922	)
	Defence(	5923	)
	Defence(	5924	)
	Defence(	5925	)
--������ ��������-�����16
	Defence(	5926	)
	Defence(	5927	)
	Defence(	5928	)
	Defence(	5929	)
--������ ������17
	Defence(	5934	)
	Defence(	5935	)
	Defence(	5936	)
	Defence(	5937	)
--������������� ������ ������18
	Defence(	5945	)
	Defence(	5946	)
	Defence(	5947	)
	Defence(	5948	)
--������ ���������� ����19
	Defence(	5965	)
	Defence(	5966	)
	Defence(	5967	)
	Defence(	5968	)
--������ ������ ������20
	Defence(	5970	)
	Defence(	5971	)
	Defence(	5972	)
	Defence(	5973	)
--������ ����������21
	Defence(		)
	Defence(	5992	)
	Defence(	5993	)
	Defence(	5994	)
--������ �������22
	Defence(	6350	)
	Defence(	6351	)
	Defence(	6352	)
	Defence(	6353	)
--������ ��������23
	Defence(	6386	)
	Defence(	6387	)
	Defence(	6388	)
	Defence(	6389	)
--������ �����24
	Defence(	6362	)
	Defence(	6363	)
	Defence(	6364	)
	Defence(	6365	)
--������ ������25
	Defence(		)
	Defence(	6395	)
	Defence(	6396	)
	Defence(	6397	)
--������ ����26
	Defence(	6398	)
	Defence(	6399	)
	Defence(	6400	)
	Defence(	6401	)
--������ �����27
	Defence(	6403	)
	Defence(	6404	)
	Defence(	6405	)
	Defence(	6406	)
--������ ���������28
	Defence(	6408	)
	Defence(	6409	)
	Defence(	6410	)
	Defence(	6487	)
--������ ��������29
	Defence(	6412	)
	Defence(	6413	)
	Defence(	6414	)
	Defence(	6415	)
--������ ��������30
	Defence(	6417	)
	Defence(	6418	)
	Defence(	6419	)
	Defence(	6420	)
--������ ���������1
	Other(	5404	)
	Other(	5405	)
	Other(	5406	)
	Other(	5436	)
--������ ���������2
	Other(		) 
 Other(		)
	Other(	5501	)
	Other(	5502	)
	Other(	5503	)
--������ ��������3
	Other(	5945	)
	Other(	5946	)
	Other(	5947	)
	Other(	5948	)
--������ �������4
	Other(	6422	)
	Other(	6423	)
	Other(	6424	)
	Other(	6425	)
--������ ���5
	Other(	6427	)
	Other(	6428	)
	Other(	6429	)
	Other(	6430	)
--������ ����6
	Other(	6432	)
	Other(	6433	)
	Other(	6434	)
	Other(	6435	)
--������ ��������� ��������7
	Other(	6437	)
	Other(	6438	)
	Other(	6439	)
	Other(	6440	)
--����������� ������8
	Other(	6442	)
	Other(	6443	)
	Other(	6444	)
	Other(	6445	)
--������ ������9
	Other(	6447	)
	Other(	6448	)
	Other(	6449	)
	Other(	6450	)
--������ �����������10
	Other(	6451	)
	Other(	6452	)
	Other(	6453	)
	Other(	6454	)
--������ �������11
	Other(	6475	)
	Other(	6476	)
	Other(	6477	)
	Other(	6478	)
--������ �������12
	Other(	6499	)
	Other(	6500	)
	Other(	6501	)
	Other(		) 
 Other(		)
--������ ������������ ������
	Other(	5013	)
	Other(	5021	)
	Other(	5029	)
	Other(		) 
 Other(		)
--������ ������������� ������
	Other(	5017	)
	Other(	5025	)
	Other(	5033	)
	Other(		) 
 Other(		)
--����� ���������
	Other(	6488	)
--]]
end

--�������� ������
function new_talk03 ()
	Talk( 1, "��������: ������, � ������ ��������� �������, �� ������ ��������� ������� � �����? ��� � ���� �� ����� �����?" )
	Text( 1, "����������", BuyPage )

	InitTrade()
	--������
	--[[
--����������� ������
	Weapon(		)
	Weapon(	5042	)
	Weapon(	5046	)
	Weapon(	5050	)
--�������� �������
	Weapon(		)
	Weapon(	5058	)
	Weapon(	5062	)
	Weapon(	5066	)
--����������� ������ ������
	Weapon(	5195	)
	Weapon(	5196	)
	Weapon(	5197	)
	Weapon(	5218	)
--������ ����������
	Weapon(	5525	)
	Weapon(	5526	)
	Weapon(	5527	)
	Weapon(	5528	)
--��������� �������
	Weapon(	5597	)
	Weapon(	5598	)
	Weapon(	5599	)
	Weapon(	5600	)
--������ �����
	Weapon(	6467	)
	Weapon(	6468	)
	Weapon(	6469	)
	Weapon(	6470	)
--�������������� ������
	Weapon(		)
	Weapon(	5267	)
	Weapon(	5268	)
	Weapon(	5269	)
--������ ����
	Weapon(		)
	Weapon(	5345	)
	Weapon(	5346	)
	Weapon(	5347	)
--������ ������
	Weapon(	5360	)
	Weapon(	5361	)
	Weapon(	5362	)
	Weapon(	5363	)
--������ ���������
	Weapon(	5376	)
	Weapon(	5377	)
	Weapon(	5378	)
	Weapon(	5379	)
--������ ������������� ������
	Weapon(		)
	Weapon(	5424	)
	Weapon(	5425	)
	Weapon(	5441	)
--������ ������� ��������
	Weapon(	5434	)
	Weapon(	5435	)
	Weapon(	5445	)
	Weapon(		)
--������ �������� �����
	Weapon(	5463	)
	Weapon(	5460	)
	Weapon(	5461	)
	Weapon(	5462	)
--������ ������� ���������
	Weapon(		)
	Weapon(	5491	)
	Weapon(	5492	)
	Weapon(	5493	)
--������ ������
	Weapon(	5541	)
	Weapon(	5542	)
	Weapon(	5543	)
	Weapon(	5544	)
--������ �������
	Weapon(	5557	)
	Weapon(	5558	)
	Weapon(	5559	)
	Weapon(	5560	)
--������ �������������
	Weapon(	5573	)
	Weapon(	5574	)
	Weapon(	5575	)
	Weapon(	5576	)
--������ �������� ���� NO_TARGET
	--Weapon(	5581	)
	--Weapon(	5582	)
	--Weapon(	5583	)
	--Weapon(	5584	)
--������ ���������
	Weapon(	5628	)
	Weapon(	5629	)
	Weapon(	5630	)
	Weapon(	5631	)
--���������� ������
	Weapon(	5655	)
	Weapon(	5656	)
	Weapon(	5657	)
	Weapon(	5658	)
--������ �������� ����
	Weapon(	5665	)
	Weapon(	5666	)
	Weapon(	5667	)
	Weapon(	5668	)
--���������� ������
	Weapon(	5681	)
	Weapon(	5682	)
	Weapon(	5683	)
	Weapon(	5684	)
--������ ���������
	Weapon(	5730	)
	Weapon(	5731	)
	Weapon(	5732	)
	Weapon(	5733	)
--������ ������ ����
	Weapon(	5746	)
	Weapon(	5747	)
	Weapon(	5748	)
	Weapon(	5749	)
--������ ���������� ����
	Weapon(	6503	)
	Weapon(	6507	)
	Weapon(	6505	)
	Weapon(	6506	)
--���������� ������ ����������
	Weapon(	5905	)
	Weapon(	5902	)
	Weapon(	5907	)
	Weapon(	5908	)
--������ ����������
	Weapon(	5918	)
	Weapon(	5903	)
	Weapon(	5920	)
	Weapon(	5921	)
--������� ������ ����������
	Weapon(	5922	)
	Weapon(	5904	)
	Weapon(	5924	)
	Weapon(	5925	)
--������ ��������-�����
	Weapon(	5930	)
	Weapon(	5931	)
	Weapon(	5932	)
	Weapon(	5933	)
--������ ������
	Weapon(		)
	Weapon(	5938	)
	Weapon(	5939	)
	Weapon(	5940	)
	--]]
--��������� ��������
	Defence(	5291	)
	Defence(	5292	)
	Defence(	5293	)
	Defence(	5294	)
	--[[
--������������� ��������
	Defence(		)
	Defence(	5306	)
	Defence(	5307	)
	Defence(	5308	)
--������ ������
	Defence(	5319	)
	Defence(	5320	)
	Defence(	5321	)
	Defence(	5322	)
--������������� ������ ������
	Defence(	5949	)
	Defence(	5950	)
	Defence(	5951	)
	Defence(	5952	)
--������ ���������� ����
	Defence(	5965	)
	Defence(	5969	)
	Defence(	5967	)
	Defence(	5968	)
--������ �������
	Defence(	6354	)
	Defence(	6355	)
	Defence(	6356	)
	Defence(	6357	)
--������ �����
	Defence(		)
	Defence(	6366	)
	Defence(	6364	)
	Defence(	6365	)
-- ������ ����
	Defence(	6398	)
	Defence(	6400	)
	Defence(	6401	)
	Defence(	6402	)
--������ �����
	Defence(	6403	)
	Defence(	6407	)
	Defence(	6405	)
	Defence(	6406	)
--������ ��������
	Defence(	6412	)
	Defence(	6416	)
	Defence(	6414	)
	Defence(	6415	)
--������ ���������
	Defence(	6411	)
	Defence(	6409	)
	Defence(	6410	)
	Defence(	6487	)
--������ ��������
	Defence(	6417	)
	Defence(	6421	)
	Defence(	6419	)
	Defence(	6420	)
--������ �������
	Defence(	6422	)
	Defence(	6426	)
	Defence(	6424	)
	Defence(	6425	)
--������ ���
	Defence(	6427	)
	Defence(	6431	)
	Defence(	6429	)
	Defence(	6430	)
--������ ����
	Defence(	6432	)
	Defence(	6436	)
	Defence(	6434	)
	Defence(	6435	)
--������ ��������� ��������
	Defence(	6437	)
	Defence(	6441	)
	Defence(	6439	)
	Defence(	6440	)
--����������� ������
	Defence(	6442	)
	Defence(	6446	)
	Defence(	6444	)
	Defence(	6445	)
--������ �������
	Defence(		)
	Defence(	5514	)
	Defence(	5515	)
	Defence(	5516	)
--������ ������� ������
	Defence(	5974	)
	Defence(	5975	)
	Defence(	5976	)
	Defence(	5977	)
--������ ������������ ���������
	Defence(		)
	Defence(	5014	)
	Defence(	5022	)
	Defence(	5030	)
--������ ������ ���������
	Defence(		)
	Defence(	5018	)
	Defence(	5026	)
	Defence(	5032	)
--������ ��������� ��������
	Defence(		)
	Defence(	5107	)
	Defence(	5108	)
	Defence(	5109	)
--������������ ������ ������
	Defence(	5110	)
	Defence(	5111	)
	Defence(	5112	)
	Defence(	5113	)
--�������� ������ ����������
	Defence(		)
	Defence(	5115	)
	Defence(	5116	)
	Defence(	5117	)
--����� ������
--	Defence(		)
--	Defence(	5163	)
--	Defence(	5164	)
--	Defence(	5165	)
--������ ��������
	Defence(	5230	)
	Defence(	5231	)
	Defence(	5232	)
	Defence(	5233	)
--������ ���������
	Defence(	5234	)
	Defence(	5235	)
	Defence(	5236	)
	Defence(	5237	)
--������ ������
	Defence(		)
	Defence(	5238	)
	Defence(	5239	)
	Defence(	5240	)
--������ �������
	Defence(	5392	)
	Defence(	5393	)
	Defence(	5394	)
	Defence(	5395	)
--������ ���������
	Other(	5407	)
	Other(	5408	)
	Other(	5409	)
	Other(	5437	)
--������ ���������
	Other(	5504	)
	Other(	5505	)
	Other(	5506	)
	Other(		) 
 Other(		)
--������ ��������
	Other(	5949	)
	Other(	5950	)
	Other(	5951	)
	Other(	5952	)
--������ ����������� NO_TARGET
	--Other(	6390	)
	--Other(	6391	)
	--Other(	6392	)
	--Other(	6393	)
--���������� ������ NO_TARGET
	--Other(	6459	)
	--Other(	6460	)
	--Other(	6461	)
	--Other(	6462	)
--������ ��������
	Other(	6479	)
	Other(	6480	)
	Other(	6481	)
	Other(	6482	)
--������ ��������
	Other(	6491	)
	Other(	6492	)
	Other(	6493	)
	Other(	6494	)
--������ ���������
	Other(		) 
 Other(		)
	Other(	6509	)
	Other(	6510	)
	Other(	6511	)
--����� ���������
	Other(	6488	)
	--]]
end

--�������� ������
function new_talk04 ()
	Talk( 1, "��������: ������, � ������ ��������� �������, �� ������ ��������� ������� � �����? ��� � ���� �� ����� �����?" )
	Text( 1, "����������", BuyPage )

	InitTrade()
	--�����
	--[[
--����������� ������ ������16
	Weapon(	5202	)
	Weapon(	5203	)
	Weapon(	5204	)
	Weapon(	5219	)
--����������� ������1
	Weapon(		)
	Weapon(	5043	)
	Weapon(	5047	)
	Weapon(	5051	)
--�������� �������15
	Weapon(		)
	Weapon(	5059	)
	Weapon(	5063	)
	Weapon(	5067	)
--������ ����������
	Weapon(	5529	)
	Weapon(	5530	)
	Weapon(	5531	)
	Weapon(	5532	)
--��������� �������
	Weapon(	5601	)
	Weapon(	5602	)
	Weapon(	5603	)
	Weapon(	5604	)
--������ ����� NO_TARGET
	--Weapon(	6471	)
	--Weapon(	6472	)
	--Weapon(	6473	)
	--Weapon(	6474	)
--�������� ������
	Weapon(		)
	Weapon(	5075	)
	Weapon(	5076	)
	Weapon(	5077	)
--������ �������
	Weapon(		)
	Weapon(	5081	)
	Weapon(	5082	)
	Weapon(	5083	)
--������ �����
	Weapon(		)
	Weapon(	5078	)
	Weapon(	5079	)
	Weapon(	5080	)
--�������� ������
	Weapon(		)
	Weapon(	5166	)
	Weapon(	5167	)
	Weapon(	5168	)
--���������� ������
	Weapon(		)
	Weapon(	5169	)
	Weapon(	5170	)
	Weapon(	5171	)
--������ �����
	Weapon(		)
	Weapon(	5241	)
	Weapon(	5242	)
	Weapon(	5243	)
--������ ����
	Weapon(		)
	Weapon(	5349	)
	Weapon(	5350	)
	Weapon(	5351	)
--������ ������
	Weapon(	5364	)
	Weapon(	5365	)
	Weapon(	5366	)
	Weapon(	5367	)
--������ ���������
	Weapon(	5380	)
	Weapon(	5381	)
	Weapon(	5382	)
	Weapon(	5383	)
--������ �������� �����
	Weapon(	5464	)
	Weapon(	5465	)
	Weapon(	5466	)
	Weapon(	5467	)
--������ ������� ���������
	Weapon(		)
	Weapon(	5494	)
	Weapon(	5495	)
	Weapon(	5496	)
--������ ������
	Weapon(	5545	)
	Weapon(	5546	)
	Weapon(	5547	)
	Weapon(	5548	)
--������ �������
	Weapon(	5561	)
	Weapon(	5562	)
	Weapon(	5563	)
	Weapon(	5564	)
--������ �������� ����
	Weapon(	5585	)
	Weapon(	5586	)
	Weapon(	5587	)
	Weapon(	5588	)
--������ ���������
	Weapon(	5636	)
	Weapon(	5637	)
	Weapon(	5638	)
	Weapon(	5639	)
--���������� ������
	Weapon(		)
	Weapon(		)
	Weapon(	5659	)
	Weapon(	5660	)
--������ �������� ����
	Weapon(	5669	)
	Weapon(	5670	)
	Weapon(	5671	)
	Weapon(	5672	)
--���������� ������
	Weapon(	5685	)
	Weapon(	5686	)
	Weapon(	5687	)
	Weapon(	5688	)
-- ������ ���������
	Weapon(	5734	)
	Weapon(	5735	)
	Weapon(	5736	)
	Weapon(	5737	)
--������ ������ ����
	Weapon(	5850	)
	Weapon(	5851	)
	Weapon(	5852	)
	Weapon(	5853	)
--������ ���������� ����
	Weapon(	6503	)
	Weapon(	6504	)
	Weapon(	6505	)
	Weapon(	6506	)
--���������� ������ ����������
	Weapon(	5905	)
	Weapon(	5906	)
	Weapon(	5907	)
	Weapon(	5908	)
--������ ����������
	Weapon(	5918	)
	Weapon(	5919	)
	Weapon(	5920	)
	Weapon(	5921	)
--������� ������ ����������
	Weapon(	5922	)
	Weapon(	5923	)
	Weapon(	5924	)
	Weapon(	5925	)
	--]]
--��������� ��������
	Defence(	5295	)
	Defence(	5296	)
	Defence(	5297	)
	Defence(	5298	)
--[[
	--������������� ��������
	Defence(		)
	Defence(	5309	)
	Defence(	5310	)
	Defence(	5311	)
--������ ������
	Defence(	5323	)
	Defence(	5324	)
	Defence(	5325	)
	Defence(	5326	)
--������ ������
	Defence(		)
	Defence(	5941	)
	Defence(	5942	)
	Defence(	5943	)
--������������� ������ ������
	Defence(	5953	)
	Defence(	5954	)
	Defence(	5955	)
	Defence(	5956	)
--������ ���������� ����
	Defence(	5965	)
	Defence(	5966	)
	Defence(	5967	)
	Defence(	5968	)
--������ ������ ������
	Defence(	5978	)
	Defence(	5979	)
	Defence(	5980	)
	Defence(	5981	)
--������ �����
	Defence(		)
	Defence(	6363	)
	Defence(	6364	)
	Defence(	6365	)
--������ ����
	Defence(	6398	)
	Defence(	6399	)
	Defence(	6400	)
	Defence(	6401	)
--������ �����
	Defence(	6403	)
	Defence(	6404	)
	Defence(	6405	)
	Defence(	6406	)
--������ ���������
	Defence(	6408	)
	Defence(	6409	)
	Defence(	6410	)
	Defence(	6487	)
--������ ��������
	Defence(	6412	)
	Defence(	6413	)
	Defence(	6414	)
	Defence(	6415	)
--������ ��������
	Defence(	6417	)
	Defence(	6418	)
	Defence(	6419	)
	Defence(	6420	)
--������ �������
	Defence(	6422	)
	Defence(	6423	)
	Defence(	6424	)
	Defence(	6425	)
--������ ���
	Defence(	6427	)
	Defence(	6428	)
	Defence(	6429	)
	Defence(	6430	)
--������ ����
	Defence(	6432	)
	Defence(	6433	)
	Defence(	6434	)
	Defence(	6435	)
--������ ��������� ��������
	Defence(	6437	)
	Defence(	6438	)
	Defence(	6439	)
	Defence(	6440	)
--����������� ������
	Defence(	6442	)
	Defence(	6443	)
	Defence(	6444	)
	Defence(	6445	)
--������ �����������
	Defence(	6451	)
	Defence(	6452	)
	Defence(	6453	)
	Defence(	6454	)
--���������� ������
	Defence(	5248	)
	Defence(	5249	)
	Defence(	5250	)
	Defence(	5251	)
--��������� ������
	Defence(	5244	)
	Defence(	5245	)
	Defence(	5246	)
	Defence(	5247	)
--������ ��������
	Defence(		)
	Defence(	5416	)
	Defence(	5417	)
	Defence(	5418	)
--������ ������
	Defence(	5986	)
	Defence(	5987	)
	Defence(	5988	)
	Defence(	5989	)
--������ ������� ��������
	Defence(	6378	)
	Defence(	6379	)
	Defence(	6380	)
	Defence(	6381	)
--������ ������
	Defence(	6455	)
	Defence(	6456	)
	Defence(	6457	)
	Defence(	6458	)
--������ �����������������
	Defence(		)
	Defence(	5015	)
	Defence(	5023	)
	Defence(	5031	)
--������� ������ ����
	Defence(		)
	Defence(	5019	)
	Defence(	5027	)
	Defence(	5035	)
--������ �������
	Defence(		)
	Defence(	5084	)
	Defence(	5085	)
	Defence(	5086	)
--������ �� ���� �����
	Defence(		)
	Defence(	5087	)
	Defence(	5088	)
	Defence(	5089	)
--������ �������
	Defence(		)
	Defence(	5090	)
	Defence(	5091	)
	Defence(	5092	)
--�������� ������
	Defence(		)
	Defence(	5093	)
	Defence(	5094	)
	Defence(	5095	)
--������ ���������
	Other(	5410	)
	Other(	5411	)
	Other(	5412	)
	Other(	5438	)
--������ ���������
	Other(		) 
 Other(		)
	Other(	5507	)
	Other(	5508	)
	Other(	5509	)
--������ ��������
	Other(	5953	)
	Other(	5954	)
	Other(	5955	)
	Other(	5956	)
--����������� ������
	Other(		) 
 Other(		)
	Other(	5096	)
	Other(	5097	)
	Other(	5098	)
--������� ������
	Other(	5142	)
	Other(	5143	)
	Other(	5144	)
	Other(	5145	)
--������ ���������� ���������
	Other(	5146	)
	Other(	5147	)
	Other(	5148	)
	Other(	5149	)
--����������� ������
	Other(	5150	)
	Other(	5151	)
	Other(	5152	)
	Other(	5153	)
--�����-����� ������ ������
	Other(		) 
 Other(		)
	Other(	5172	)
	Other(	5173	)
	Other(	5174	)
--����������� ������
	Other(	5396	)
	Other(	5397	)
	Other(	5398	)
	Other(	5399	)
--�������� ������� ������
	Other(		) 
 Other(		)
	Other(	5426	)
	Other(	5427	)
	Other(	5438	)
--������� ������ �����
	Other(	5909	)
	Other(	5910	)
	Other(	5911	)
	Other(	5912	)
--������ ������ ��������
	Other(	6358	)
	Other(	6359	)
	Other(	6360	)
	Other(	6361	)
--������ ������
	Other(		) 
 Other(		)
	Other(	6367	)
	Other(	6368	)
	Other(	6369	)
--����������� ������
	Other(	6370	)
	Other(	6371	)
	Other(	6372	)
	Other(	6373	)
--����������� ������
	Other(	6374	)
	Other(	6375	)
	Other(	6376	)
	Other(	6377	)
--����� ������
	Other(	6483	)
	Other(	6484	)
	Other(	6485	)
	Other(	6486	)
--�������������� ������
	Other(	6495	)
	Other(	6496	)
	Other(	6497	)
	Other(	6498	)
--����� ���������
	Other(	6488	)
--]]
end

--�������� ���
function new_talk05 ()
	Talk( 1, "��������: ������, � ������ ��������� �������, �� ������ ��������� ������� � �����? ��� � ���� �� ����� �����?" )
	Text( 1, "����������", BuyPage )

	InitTrade()
--���
--[[
--����������� ������
	Weapon(	5044	)
	Weapon(	5048	)
	Weapon(	5052	)
	Weapon(	5056	)
--�������� �������
	Weapon(	5060	)
	Weapon(	5064	)
	Weapon(	5068	)
	Weapon(	5069	)
--����������� ������ ������
	Weapon(	5198	)
	Weapon(	5199	)
	Weapon(	5200	)
	Weapon(	5201	)
--������ ����������
	Weapon(	5533	)
	Weapon(	5534	)
	Weapon(	5535	)
	Weapon(	5536	)
--��������� �������
	Weapon(	5605	)
	Weapon(	5606	)
	Weapon(	5607	)
	Weapon(	5608	)
--������ �����
	Weapon(	5616	)
	Weapon(	5617	)
	Weapon(	5618	)
	Weapon(	5619	)
--������ ����
	Weapon(	5352	)
	Weapon(	5353	)
	Weapon(	5354	)
	Weapon(	5355	)
--������ ������
	Weapon(	5368	)
	Weapon(	5369	)
	Weapon(	5370	)
	Weapon(	5371	)
--������ ���������
	Weapon(	5384	)
	Weapon(	5385	)
	Weapon(	5386	)
	Weapon(	5387	)
--������ ������� ���������
	Weapon(	5497	)
	Weapon(	5498	)
	Weapon(	5499	)
	Weapon(	5500	)
--������ �������� �����
	Weapon(	5468	)
	Weapon(	5469	)
	Weapon(	5470	)
	Weapon(	5471	)
--������ ������
	Weapon(	5549	)
	Weapon(	5550	)
	Weapon(	5551	)
	Weapon(	5552	)
--������ �������
	Weapon(	5565	)
	Weapon(	5566	)
	Weapon(	5567	)
	Weapon(	5568	)
--������ �������� ����
	Weapon(	5589	)
	Weapon(	5590	)
	Weapon(	5591	)
	Weapon(	5592	)
--������ ���������
	Weapon(	5640	)
	Weapon(	5641	)
	Weapon(	5642	)
	Weapon(	5643	)
--������ �������� ����
	Weapon(	5673	)
	Weapon(	5674	)
	Weapon(	5675	)
	Weapon(	5676	)
--���������� ������
	Weapon(	5689	)
	Weapon(	5690	)
	Weapon(	5691	)
	Weapon(	5692	)
--������ ���������
	Weapon(	5738	)
	Weapon(	5739	)
	Weapon(	5740	)
	Weapon(	5741	)
--������ ������ ����
	Weapon(	5854	)
	Weapon(	5855	)
	Weapon(	5856	)
	Weapon(	5857	)
--������ ���������� ����
	Weapon(	6503	)
	Weapon(	6504	)
	Weapon(	6505	)
	Weapon(	6506	)
--���������� ������ ����������
	Weapon(	5905	)
	Weapon(	5906	)
	Weapon(	5907	)
	Weapon(	5908	)
--������ ����������
	Weapon(	5918	)
	Weapon(	5919	)
	Weapon(	5920	)
	Weapon(	5921	)
--������� ������ ����������
	Weapon(	5922	)
	Weapon(	5923	)
	Weapon(	5924	)
	Weapon(	5925	)
--������ ������
	Weapon(	5944	)
	Weapon(	5962	)
	Weapon(	5963	)
	Weapon(	5964	)
--������������� ������ ������
	Weapon(	5957	)
	Weapon(	5958	)
	Weapon(	5959)
	Weapon(	5960	)
--������ ���������� ����
	Weapon(	5965	)
	Weapon(	5966	)
	Weapon(	5967	)
	Weapon(	5968	)
--������ �����
	Weapon(		)
	Weapon(	6363	)
	Weapon(	6364	)
	Weapon(	6365	)
--������ ����
	Weapon(	6398	)
	Weapon(	6399	)
	Weapon(	6400	)
	Weapon(	6401	)
--������ �����
	Weapon(	6403	)
	Weapon(	6404	)
	Weapon(	6405	)
	Weapon(	6406	)
--������ ���������
	Weapon(	6408	)
	Weapon(	6409	)
	Weapon(	6410	)
	Weapon(	6487	)
	--]]
--��������� ��������
	Defence(	5299	)
	Defence(	5300	)
	Defence(	5301	)
	Defence(	5302	)
--[[
	--������������� ��������
	Defence(		)
	Defence(	5312	)
	Defence(	5313	)
	Defence(	5314	)
--������ ������
	Defence(	5327	)
	Defence(	5328	)
	Defence(	5329	)
	Defence(	5330	)
--������ ��������
	Defence(	6417	)
	Defence(	6418	)
	Defence(	6419	)
	Defence(	6420	)
--������ �������
	Defence(	6422	)
	Defence(	6423	)
	Defence(	6424	)
	Defence(	6425	)
--������ ���
	Defence(	6427	)
	Defence(	6428	)
	Defence(	6429	)
	Defence(	6430	)
--������ ����
	Defence(	6432	)
	Defence(	6433	)
	Defence(	6434	)
	Defence(	6435	)
--������ ��������� ��������
	Defence(	6437	)
	Defence(	6438	)
	Defence(	6439	)
	Defence(	6440	)
--����������� ������
	Defence(	6442	)
	Defence(	6443	)
	Defence(	6444	)
	Defence(	6445	)
--������ �����������
	Defence(	6451	)
	Defence(	6452	)
	Defence(	6453	)
	Defence(	6454	)
--������ ��������� �����
	Defence(	5138	)
	Defence(	5139	)
	Defence(	5140	)
	Defence(	5141	)
--������ �����
	Defence(	5134	)
	Defence(	5135	)
	Defence(	5136	)
	Defence(	5137	)
--������� ������ ������
	Defence(	5130	)
	Defence(	5131	)
	Defence(	5132	)
	Defence(	5133	)
--����������� ������
	Defence(	5020	)
	Defence(	5024	)
	Defence(	5032	)
	Defence(	5037	)
--������ �����
	Defence(		)
	Defence(	5016	)
	Defence(	5028	)
	Defence(	5036	)
--������ ���
	Defence(	5260	)
	Defence(	5261	)
	Defence(	5262	)
	Defence(	5263	)
--���������� ������
	Defence(	5256	)
	Defence(	5257	)
	Defence(	5258	)
	Defence(	5259	)
--��������� ������
	Defence(	5252	)
	Defence(	5253	)
	Defence(	5254	)
	Defence(	5255	)
--�������� ������ �������
	Defence(	5191	)
	Defence(	5192	)
	Defence(	5193	)
	Defence(	5194	)
--������ ������������ ����
	Defence(	5187	)
	Defence(	5188	)
	Defence(	5189	)
	Defence(	5190	)
--�������� ������ ���
	Defence(	5183	)
	Defence(	5184	)
	Defence(	5185	)
	Defence(	5186	)
--������ ��������
	Defence(		)
	Defence(	5179	)
	Defence(	5180	)
	Defence(	5181	)
--������ ����
	Defence(		)
	Defence(	5175	)
	Defence(	5177	)
	Defence(	5178	)
--������ �������� ������
	Defence(	5428	)
	Defence(	5429	)
	Defence(	5430	)
	Defence(	5431	)
--������ ��������
	Defence(		)
	Defence(	5419	)
	Defence(	5420	)
	Defence(	5421	)
--������ ��������
	Defence(	5400	)
	Defence(	5401	)
	Defence(	5402	)
	Defence(	5403	)
--������ �������
	Defence(		)
	Defence(	5517	)
	Defence(	5518	)
	Defence(	5519	)
--������ ������
	Defence(	5646	)
	Defence(	5647	)
	Defence(	5648	)
	Defence(	5649	)
--������ ������
	Defence(	5986	)
	Defence(	5987	)
	Defence(	5988	)
	Defence(	5989	)
--������ ������� ������
	Defence(	5982	)
	Defence(	5983	)
	Defence(	5984	)
	Defence(	5985	)
--������ ��� NO_TARGET
	--Other(	5913	)
	--Other(	5914	)
	--Other(	5915	)
	--Other(	5916	)
--������ ������� ��������
	Other(	6382	)
	Other(	6383	)
	Other(	6384	)
	Other(	6385	)
--������ ������ ������
	Other(	6455	)
	Other(	6456	)
	Other(	6457	)
	Other(	6458	)
--������ ���������
	Other(	5413	)
	Other(	5414	)
	Other(	5415	)
	Other(	5439	)
--������ ���������
	Other(	5510	)
	Other(	5511	)
	Other(	5512	)
	Other(	5513	)
--������ ��������
	Other(	5957	)
	Other(	5958	)
	Other(	5959	)
	Other(	5960	)
--����� ���������
	Other(	6488	)--]]
end

--�������� ������
function new_talk06 ()
	Talk( 1, "��������: ������, �� ������ ��������� ������� � �����? ��� � ���� �� ����� �����?" )
	Text( 1, "����������", BuyPage )

--	Weapon(	5615	)	--��������������� �����
	Weapon(	5001	)	--��� ��������� �������
--	Weapon(	5002	)	--��� ���������� �����
	Weapon(	5007	)	--��� ���������� �������
--	Weapon(	5008	)	--��� ��������� �����
--	Weapon(	5070	)	--��� �������
--	Weapon(	5276	)	--�������� ����
--	Weapon(	5278	)	--����� ��������
--	Weapon(	5283	)	--��� ���������
--	Weapon(	5284	)	--����� ���������
--	Weapon(	5285	)	--��������� ������� ������
--	Weapon(	5449	)	--����� �������
--	Weapon(	5610	)	--����-���
--	Weapon(	5871	)	--�������� ���
--	Weapon(	5876	)	--������
--	Weapon(	5877	)	--����������� ����
--	Weapon(	5990	)	--��� ������
--	Weapon(	5991	)	--��� ��������
--	Weapon(	6531	)	--�����
	Weapon(	5004	)	--������ ��������� ����������
--	Weapon(	5010	)	--������ ��������� ����������
--	Weapon(	5074	)	--������ ��������
--	Weapon(	5282	)	--��������� ��������� �������
--	Weapon(	5453	)	--���������� �������
--	Weapon(	5614	)	--������� ������ (������)
--	Weapon(	5870	)	--���� ������
--	Weapon(	5872	)	--�������� �����
--	Weapon(	5873	)	--������
--	Weapon(	5874	)	--�����
--	Weapon(	5875	)	--�������� �������
--	Weapon(	5454	)	--������� �������
	Weapon(	5003	)	--�������� ����� �����
--	Weapon(	5009	)	--������� ����� ����
--	Weapon(	5071	)	--������� ��� �������
--	Weapon(	5277	)	--�������� ����� �����
--	Weapon(	5450	)	--������� ��������� ������������
--	Weapon(	5609	)	--������� �����
--	Weapon(	5878	)	--���������
--	Weapon(	5879	)	--����
--	Weapon(	5880	)	--�������� �����
--	Weapon(	5881	)	--��������
--	Weapon(	5882	)	--����� ����
--	Weapon(	6508	)	--��� ������
--	Weapon(	6512	)	--����� ������
--	Weapon(	5448	)	--����������� �������
--	Weapon(	5612	)	--��� �����
--	Weapon(	6522	)	--����������� ���
--	Weapon(	6523	)	--��������� ���
--	Weapon(	6524	)	--������ ���
--	Weapon(	6525	)	--������ ���
--	Weapon(	6526	)	--���������� ���
--	Weapon(	6527	)	--������ ���
--	Weapon(	6528	)	--������
--	Weapon(	6529	)	--�����
--	Weapon(	6530	)	--��� ����
	Weapon(	5005	)	--������
--	Weapon(	5011	)	--��������� ��������
--	Weapon(	5072	)	--������ �������
--[[	Weapon(	5279	)	--������ ������
	Weapon(	5281	)	--��������� �����������
	Weapon(	5286	)	--�������� �������
	Weapon(	5613	)	--������ ����� (������)
	Weapon(	5883	)	--�����
	Weapon(	5884	)	--����� ������� ��������
	Weapon(	5885	)	--������� ��������
	Weapon(	5886	)	--������
	Weapon(	5887	)	--������� ����-���
	Weapon(	5888	)	--���������
	Weapon(	5889	)	--��������
	Weapon(	5890	)	--�������� �����
	Weapon(	5897	)	--������� ��������
	--]]
	Weapon(	5006	)	--����. �������� ������. ����������
--[[	Weapon(	5012	)	--����. �������� �����. ����������
	Weapon(	5280	)	--������� �����
	Weapon(	5451	)	--������� ��������� �����
	Weapon(	5452	)	--������ �������
	Weapon(	5611	)	--����� �����������
	Weapon(	5891	)	--������
	Weapon(	5892	)	--������� �������
	Weapon(	5893	)	--����
	Weapon(	5894	)	--�������� �����
	Weapon(	5895	)	--����--]]
end



--��������� ������� - ����
function new_talk03 ()
	Talk( 1, "���������: ������, � ������ �� ���� ��������." )


	
end

--��� �������
function xmas_0705 ()
	Talk( 1, "Mao: ������, � ������ ��������� �������, �� ������ ��������� ������� � �����? ��� � ���� �� ����� �����? __������ ����: 99 ��  _������ ����: 150 ��  _������ �����: 200 ��  _������ ���������: 250 ��  _������ ��������: 3000 ��������� � 250 �� _������ �������: 3000 ��������� � 250 �� _������ ���: 5000 ��������� � 250 �� " )
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1, 4 ) --������ ������
    TriggerCondition( 1, HasLeaveBagGrid, 1 )--��������� ������
    TriggerCondition( 1, HasHonorPoint,99 )     --�������� ����� �� ������
    TriggerAction( 1, TakeHonorPoint, 99 )     --������� ����� � ������
    TriggerAction( 1, GiveItem, 7563, 1 , 4 )    --������ ������
    TriggerFailure( 1, JumpPage, 9)
    Text( 1, "�������� ������ ���� ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1, 4 ) --������ ������
    TriggerCondition( 1, HasLeaveBagGrid, 1 )--��������� ������
    TriggerCondition( 1, HasHonorPoint,150 )     --�������� ����� �� ������
    TriggerAction( 1, TakeHonorPoint, 150 )     --������� ����� � ������
    TriggerAction( 1, GiveItem, 7556, 1 , 4 )    --������ ������
    TriggerFailure( 1, JumpPage, 9)
    Text( 1, "�������� ������ ���� ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1, 4 ) --������ ������
    TriggerCondition( 1, HasLeaveBagGrid, 1 )--��������� ������
    TriggerCondition( 1, HasHonorPoint,200 )     --�������� ����� �� ������
    TriggerAction( 1, TakeHonorPoint, 200 )     --������� ����� � ������
    TriggerAction( 1, GiveItem, 7557, 1 , 4 )    --������ ������
    TriggerFailure( 1, JumpPage, 9)
    Text( 1, "�������� ������ �����", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1, 4 ) --������ ������
    TriggerCondition( 1, HasLeaveBagGrid, 1 )--��������� ������
    TriggerCondition( 1, HasHonorPoint,250 )     --�������� ����� �� ������
    TriggerAction( 1, TakeHonorPoint, 250 )     --������� ����� � ������
    TriggerAction( 1, GiveItem, 7558, 1 , 4 )    --������ ������
    TriggerFailure( 1, JumpPage, 9)
    Text( 1, "�������� ������ ���������", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1, 4 ) --������ ������
    TriggerCondition( 1, HasLeaveBagGrid, 1 )--��������� ������
    TriggerCondition( 1, HasHonorPoint,250 )     --�������� ����� �� ������
	TriggerCondition( 1, HasCredit, 3000 )
	TriggerAction( 1, DelRoleCredit, 3000 )     --������� ����� � ������
    TriggerAction( 1, TakeHonorPoint, 250 )     --������� ����� � ������
    TriggerAction( 1, GiveItem, 7559, 1 , 4 )    --������ ������
    TriggerFailure( 1, JumpPage, 9)
    Text( 1, "�������� ������ ��������", MultiTrigger, GetMultiTrigger(), 1)
	
		InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1, 4 ) --������ ������
    TriggerCondition( 1, HasLeaveBagGrid, 1 )--��������� ������
    TriggerCondition( 1, HasHonorPoint,250 )     --�������� ����� �� ������
	TriggerCondition( 1, HasCredit, 3000 )
	TriggerAction( 1, DelRoleCredit, 3000 )     --������� ����� � ������
    TriggerAction( 1, TakeHonorPoint, 250 )     --������� ����� � ������
    TriggerAction( 1, GiveItem, 7561, 1 , 4 )    --������ ������
    TriggerFailure( 1, JumpPage, 9)
    Text( 1, "�������� ������ �������", MultiTrigger, GetMultiTrigger(), 1)
	
		InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1, 4 ) --������ ������
    TriggerCondition( 1, HasLeaveBagGrid, 1 )--��������� ������
    TriggerCondition( 1, HasHonorPoint,250 )     --�������� ����� �� ������
	TriggerCondition( 1, HasCredit, 5000 )
	TriggerAction( 1, DelRoleCredit, 5000 )     --������� ����� � ������
    TriggerAction( 1, TakeHonorPoint, 250 )     --������� ����� � ������
    TriggerAction( 1, GiveItem, 7562, 1 , 4 )    --������ ������
    TriggerFailure( 1, JumpPage, 9)
    Text( 1, "�������� ������ ���", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "Mao:  ������, � ���� ����-�� �� �������" )
	
end


--������� ������� - �����
function new_talk002 ()
	Talk( 1, "������� �������: ����� ������? �� �� ������, � ��� ���� ������ ��� ���� � ����� �������, ��� ��� ���� ���� ����� ������ " )

	Text( 1, "�������� ������ �� ������� ", SendExchangeXData)
	InitExchangeX()
	--ExchangeDataX	(	8288	,	2	,	8548	,	1	)--����������� ������
	ExchangeDataX	(	8288	,	5	,	8142	,	3	)--�����
	ExchangeDataX	(	8288	,	2	,	7792	,	1	)--����� ������
	ExchangeDataX	(	8288	,	25	,	7793	,	1	)--����� ���������
	
	--AddNpcMission	(112 )
    --AddNpcMission	(3102 )
    --AddNpcMission	(3103 )
	--AddNpcMission	(3104 )
	--AddNpcMission	(3105 )
end
--������ �� �� ��� ��
function talk_fs ()
	Talk( 1, "������������� : ������! � ������������� ������������ ������! � ���� �������� ���� �� ���� ����� _����������� ����� - PvP ������� ��� ��������, � ������� �� ������� �������� ��������� ��������� � ����������� ���� � ������ ���������. ������� ����� ������� �� 3� �������. _1 ������� - �������� � ������� ���� �����, ��� �������, � ������ ������. _2 ������� - �������� ����� �������, �� ��� ������������ ��� ������� ��������. _3 ������� - ����� ������� �������� � ������� ���� ������ ������!. _�� ������ ������ ��������� ���� ����� � ������� � ������� �������� ����� ������ ��������. _����� ������ ������� - 1 ���. _����� ������ ������� - 2 ���� � ������� �������� �������. _ " )

end
function talk_snv ()
	Talk( 1, "������������� : ������! � ������������� ������� �����! � ���� �������� ���� �� ���� �����. _������� �����  - PvP ������� ��� ������� �� 45 ������ � ����, � ������� �� ������� �������� ������ �������� � ������ ����._������ 5 ����� �� ����� ���������� ��������, � ������ ������ �������� ���������� ������� � ������. _������� ����� ������������ 6,13,19,22 ���� �� ����������� �������. _����� ������ ����� - 1 ��� _����� ������ ������� 30 ����� _ " )
end
function talk_dw ()
	Talk( 1, "������������� : ������! � ������������� ���� �������! � ���� �������� ���� �� ���� �����. _��� �������  - PvP ������� ��� ������� 55 ������ � ����, � ������� �� ������� ������ ���������� �� 55-65 ������ � ������� ������ ����. _��� ������� ������� �� ���� �������: _�� ������ ������ ��������� ������ ��������, ���� - �������� � ������ �� ������ �������, ������ �� ������ ������� ���������� �������� � ����� �� 4 ����� �� �����. _�� ������ ������ ������� �������� � ���� ������� � ������ ����������, ������ ������� ������� �� 3� ��������, ��� ����������� ����� ��������, ���������� �������. _ ����� ������ ������� - 40 �����. _����� ������ �������� - 2 ����. _ ������ ����������� ������ 3 ���� _" )
end
function talk_ds ()
	Talk( 1, "������������� : ������! � ������������� ������ ����! � ���� �������� ���� �� ���� ����� _������ ���� - PvP ������� ��� ������� �������, � ������� �� ������� �������� ��������� ��������� � ����������� ���� � ������ ���������. ������ ���� ������� �� 3� �������. _1 ������� - ������ �������� � ���������� ������������. _2 ������� - �������� ����� �������, �� ��� ������������ ��� ������� ��������. _3 ������� - ����� ������� �������� � ������� ���� ����������!. _�� ������ ������ ��������� ���� ����� � ������� � ������� �������� ����� ������ ��������. _����� ������ ������� - 1 ���. _����� ������ ������� -2 ���� � ������� �������� �������. _ " )

end

--���������
function r_talk99()
Talk( 1, "���������: ������! _� ��� ������������ ��������, � ������ ����� ���� � ���� ������ ������� ����������, ���� ����� ������? __������ �������� �������������� �� ��������? - ��� ��� 500.000 �����. _������ �������� �����-�������������� - _��� ��� 1.000.000 ����� " )

Text( 1, " � �������� �������� ", JumpPage, 2)
Text( 1, " �������� ������� ", JumpPage, 5)
Text( 1, " �������� ����� ", JumpPage, 3)

InitTrigger()
TriggerAction( 1, TakeMoney, 50000 )
TriggerAction( 1, SystemNotice, "�� �������� �������������� �� 5 �����" )
TriggerFailure(  1, JumpPage, 1 )
Text( 1, "�������� �����",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerAction( 1, TakeMoney, 1000000 )
TriggerAction( 1, SystemNotice, "�� �������� �����-�������������� �� 2 ������" )
TriggerFailure(  1, JumpPage, 1 )
Text( 1, "�������� �����-�����",MultiTrigger, GetMultiTrigger(), 1)


Talk( 2, "���������: ������ �������� ��� �������� ������� ����� ������� �������������� ������ ����������, ������ ����� �� ������ ��������, �� � �������� ��������������, ��� ��� ���� ���������. ������ ������ 4 �����: �������,���������,��������������� � ������������. ������ ����� �������� ������ 5 ������������� �������� : ������,���������,���� ���������,���������� ������,�������������� �������� � �����. ��� ���� ���� ������� ���� ����� �������� �� ������ � ������� �� ������� ������� ������ �������. " )
Talk( 3, "���������: � �������� ������� ����� ������� �������� ��������, ��� ����� ��� ����� ����� 2 ����-����, 5 ����� ������� �� ������ ������� � 30.000 ������� " )



InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 1859, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 1859, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8715, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " �������� ����� �������� ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 1858, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 1858, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8714, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " �������� ����������� ����� ",MultiTrigger, GetMultiTrigger(), 1)


InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 1857, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 1857, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8713, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " �������� ����������� ",MultiTrigger, GetMultiTrigger(), 1)



InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 1856, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 1856, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8712, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " �������� ����� �������� ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 1855, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 1855, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8711, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " �������� ������ ����� ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 1854, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 1854, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8710, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " �������� ����� ����� ",MultiTrigger, GetMultiTrigger(), 1)


InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 3339, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 3339, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8707, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " �������� ����� ��������� ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 0851, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 0851, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8708, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " �������� ������ ����� ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 0852, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 0852, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8709, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " �������� ������ ������ ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 3105, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 3105, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8706, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " �������� ����� ���������� ",MultiTrigger, GetMultiTrigger(), 1)


Talk( 5, "���������: � ���� ������� ���� ������, ��� ����� ��� ����������� 5 �������� � ���������� ������ � 30.000 �������" )


InitTrigger()
TriggerCondition( 1, HasItem, 3389, 1 )
TriggerCondition( 1, HasItem, 8536, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3389, 1 )
TriggerAction( 1, TakeItem, 8536, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8717, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 5, " �������� ������ ������ ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3389, 1 )
TriggerCondition( 1, HasItem, 8587, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3389, 1 )
TriggerAction( 1, TakeItem, 8587, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8718, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 5, " �������� ������ ��������� ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3389, 1 )
TriggerCondition( 1, HasItem, 8583, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3389, 1 )
TriggerAction( 1, TakeItem, 8583, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8719, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 5, " �������� ������ ��������� ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3389, 1 )
TriggerCondition( 1, HasItem, 8584, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3389, 1 )
TriggerAction( 1, TakeItem, 8584, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8720, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 5, " �������� ������ ���. ������ ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3389, 1 )
TriggerCondition( 1, HasItem, 8581, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3389, 1 )
TriggerAction( 1, TakeItem, 8581, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8721, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 5, " �������� ������ ����� ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3389, 1 )
TriggerCondition( 1, HasItem, 8537, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3389, 1 )
TriggerAction( 1, TakeItem, 8537, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8722, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 5, " �������� ������ ��������� ",MultiTrigger, GetMultiTrigger(), 1)


Talk( 6, "���������: � �� ���� ������� �������, ���� �� �� �������!" )

end

--������� �������
function new_talk11 ()
	--Talk( 1, "������� �������: ������� ���� �����! ��� ���� ������, ��� ������ �������." )
	--Text( 1, "������", OpenTiger )
	
	Talk( 1, "�������� �� ������ �����: ��-��, ��� ��� �� ���� �����? ��-��, ��� ���� �����?")
	Text( 1, "��������� ���� ", JumpPage, 2 )
	Text( 1, "���������� ����������� ", BuyPage)

	Talk( 2, " �������� ������� �����: �� �� ����� ���� �����������...")
	Text( 2, " ������� ��� ������� ��������� �� ���� ����� ", SendExchangeData )

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
	TriggerAction( 1, AddNpcTrigger, 53, TE_GAMETIME, TT_CYCLETIME, 240, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
end


--���������
function r_talkmedal ()
Talk( 1, "�������, ����, ������� �� ������ �� ��� ����� �������� ���� ������? " )
Text( 1, '�������� ������', JumpPage, 2 )
Talk( 2, "��� ������ _�������� ���� ����� 1 �� 500 ��������� _��.������� ���� ����� 5 �� 750 ��������� _������� ���� ����� 15 �� 1250 ��������� _��.������� ���� ����� 25 �� 1250�������� _��������� ���� ����� 75 �� 2000 ��������" )

Talk( 3, "��� ������ _��.��������� ���� ����� 95 �� 2250 ���. _���������� ���� ����� 125 �� 3250 ���. _��.���������� ���� ����� 145 �� 3500 ���. _������� ���� ����� 165 �� 4000 ��������� _����� ���� ����� 185 �� 4250 ��������� " )
Talk( 4, "��� ������ _������������ ���� ����� 205 �� 4500 ���. _��������� ���� ����� 250 �� 5000 ���. _�������-����� ���� ����� 275 �� 6000 ���. _�������-��������� ���� ����� 300 �� 7000 ��������� _�������-��������� ���� ����� 500 �� 9000 ��������� " )
InitTrigger() 
TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5331, 1 , 4 )
TriggerCondition( 1, HasCredit, 500 )
TriggerCondition( 1, HasHonorPoint,1 )     --�������� ����� �� ������
TriggerAction( 1, TakeHonorPoint, 1 )     --������� ����� � ������
TriggerAction( 1, DelRoleCredit, 500 )
TriggerAction( 1, TakeItem, 5331, 1 )
TriggerAction( 1, GiveItem, 5332, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 2, "���������� �� ���������", MultiTrigger, GetMultiTrigger(), 1)
	
InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5332, 1 , 4 )
TriggerCondition( 1, HasCredit, 750 )
TriggerCondition( 1, HasHonorPoint,5 )     --�������� ����� �� ������
TriggerAction( 1, TakeHonorPoint, 5 )     --������� ����� � ������
TriggerAction( 1, DelRoleCredit, 750 )
TriggerAction( 1, TakeItem, 5332, 1 )
TriggerAction( 1, GiveItem, 5333, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 2, "���������� �� ��.��������", MultiTrigger, GetMultiTrigger(), 1)
	
InitTrigger() 
TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5333, 1 , 4 )
TriggerCondition( 1, HasCredit, 1250 )
TriggerCondition( 1, HasHonorPoint,15 )     --�������� ����� �� ������
TriggerAction( 1, TakeHonorPoint, 15)     --������� ����� � ������
TriggerAction( 1, DelRoleCredit, 1250 )
TriggerAction( 1, TakeItem, 5333, 1 )
TriggerAction( 1, GiveItem, 5334, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 2, "���������� �� ��������", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5334, 1 , 4 )
TriggerCondition( 1, HasCredit, 1250 )
TriggerCondition( 1, HasHonorPoint,25 )     --�������� ����� �� ������
TriggerAction( 1, TakeHonorPoint, 25 )     --������� ����� � ������
TriggerAction( 1, DelRoleCredit, 1250 )
TriggerAction( 1, TakeItem, 5334, 1 )
TriggerAction( 1, GiveItem, 5335, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 2, "���������� �� ��.��������", MultiTrigger, GetMultiTrigger(), 1)
		
	
InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5335, 1 , 4 )
TriggerCondition( 1, HasCredit, 1500 )
TriggerCondition( 1, HasHonorPoint,55 )     --�������� ����� �� ������
TriggerAction( 1, TakeHonorPoint, 55 )     --������� ����� � ������
TriggerAction( 1, DelRoleCredit, 1500 )
TriggerAction( 1, TakeItem, 5335, 1 )
TriggerAction( 1, GiveItem, 5336, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 2, "���������� �� ��������", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5336, 1 , 4 )
TriggerCondition( 1, HasCredit, 2000 )
TriggerCondition( 1, HasHonorPoint,75 )     --�������� ����� �� ������
TriggerAction( 1, TakeHonorPoint, 75 )     --������� ����� � ������
TriggerAction( 1, DelRoleCredit, 2000 )
TriggerAction( 1, TakeItem, 5336, 1 )
TriggerAction( 1, GiveItem, 5337, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 2, "���������� �� ����������", MultiTrigger, GetMultiTrigger(), 1)

Text(2, "������",JumpPage, 3 )



InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5337, 1 , 4 )
TriggerCondition( 1, HasCredit, 2250 )
TriggerCondition( 1, HasHonorPoint,95 )     --�������� ����� �� ������
TriggerAction( 1, TakeHonorPoint, 95 )     --������� ����� � ������
TriggerAction( 1, DelRoleCredit, 2250 )
TriggerAction( 1, TakeItem, 5337, 1 )
TriggerAction( 1, GiveItem, 5338, 1 , 4 ) 
TriggerFailure( 1, JumpPage, 14 )
Text( 3, "���������� �� ��.����������", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5338, 1 , 4 )
TriggerCondition( 1, HasCredit, 3250)
TriggerCondition( 1, HasHonorPoint,125 )     --�������� ����� �� ������
TriggerAction( 1, TakeHonorPoint, 125 )     --������� ����� � ������
TriggerAction( 1, DelRoleCredit, 3250 )
TriggerAction( 1, TakeItem, 5338, 1 )
TriggerAction( 1, GiveItem, 5339, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 3, "���������� �� ����������", MultiTrigger, GetMultiTrigger(), 1)


InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5339, 1 , 4 )
TriggerCondition( 1, HasCredit, 3500 )
TriggerCondition( 1, HasHonorPoint,145 )     --�������� ����� �� ������
TriggerAction( 1, TakeHonorPoint, 145 )     --������� ����� � ������
TriggerAction( 1, DelRoleCredit, 3500 )
TriggerAction( 1, TakeItem, 5339, 1 )
TriggerAction( 1, GiveItem, 5340, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 3, "���������� �� ��.����������", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5340, 1 , 4 )
TriggerCondition( 1, HasCredit, 4000 )
TriggerCondition( 1, HasHonorPoint,165 )     --�������� ����� �� ������
TriggerAction( 1, TakeHonorPoint, 165 )     --������� ����� � ������
TriggerAction( 1, DelRoleCredit, 4000 )
TriggerAction( 1, TakeItem, 5340, 1 )
TriggerAction( 1, GiveItem, 3936, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 3, "���������� �� ��������", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 3936, 1 , 4 )
TriggerCondition( 1, HasCredit, 4250 )
TriggerCondition( 1, HasHonorPoint,185 )     --�������� ����� �� ������
TriggerAction( 1, TakeHonorPoint, 185 )     --������� ����� � ������
TriggerAction( 1, DelRoleCredit, 4250 )
TriggerAction( 1, TakeItem, 3936, 1 )
TriggerAction( 1, GiveItem, 3937, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 3, "���������� �� ������", MultiTrigger, GetMultiTrigger(), 1)

Text( 3, "������", JumpPage, 4)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 3937, 1 , 4 )
TriggerCondition( 1, HasCredit, 4500 )
TriggerCondition( 1, HasHonorPoint,205 )     --�������� ����� �� ������
TriggerAction( 1, TakeHonorPoint, 205 )     --������� ����� � ������
TriggerAction( 1, DelRoleCredit, 4500 )
TriggerAction( 1, TakeItem, 3937, 1 )
TriggerAction( 1, GiveItem, 3938, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 4, "���������� �� �������������", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 3938, 1 , 4 )
TriggerCondition( 1, HasCredit, 5000 )
TriggerCondition( 1, HasHonorPoint,250 )     --�������� ����� �� ������
TriggerAction( 1, TakeHonorPoint, 250 )     --������� ����� � ������
TriggerAction( 1, DelRoleCredit, 5000 )
TriggerAction( 1, TakeItem, 3938, 1 )
TriggerAction( 1, GiveItem, 3939, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 4, "���������� �� ����������", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 3939, 1 , 4 )
TriggerCondition( 1, HasCredit, 6000 )
TriggerCondition( 1, HasHonorPoint,275 )     --�������� ����� �� ������
TriggerAction( 1, TakeHonorPoint, 275 )     --������� ����� � ������
TriggerAction( 1, DelRoleCredit, 6000 )
TriggerAction( 1, TakeItem, 3939, 1 )
TriggerAction( 1, GiveItem, 3940, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 4, "���������� �� �������-������", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 3940, 1 , 4 )
TriggerCondition( 1, HasCredit, 7000 )
TriggerCondition( 1, HasHonorPoint,300 )     --�������� ����� �� ������
TriggerAction( 1, TakeHonorPoint, 300 )     --������� ����� � ������
TriggerAction( 1, DelRoleCredit, 7000 )
TriggerAction( 1, TakeItem, 3940, 1 )
TriggerAction( 1, GiveItem, 3941, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 4, "���������� �� �������-����������", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 3941, 1 , 4 )
TriggerCondition( 1, HasCredit, 9000 )
TriggerCondition( 1, HasHonorPoint,500 )     --�������� ����� �� ������
TriggerAction( 1, TakeHonorPoint, 500 )     --������� ����� � ������
TriggerAction( 1, DelRoleCredit, 9000 )
TriggerAction( 1, TakeItem, 3941, 1 )
TriggerAction( 1, GiveItem, 3942, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 4, "���������� �� �������-����������", MultiTrigger, GetMultiTrigger(), 1)





Talk( 14, "� ���� ������������ ��������� ��� ����� ��� �� ��� �� ������� ����� ������." )	
end

--�����
function r_tuman()
	Talk( 1,  "�������� ��������: ������! � �������� � ������� ��������������. � ����� ������ ������� ���������, �� ����� ��� ����������� ������... " )
	Text( 1, "����� �������� ������", JumpPage, 2 )
	--Text( 1, "� ���������", JumpPage, 17 )
	
	Talk( 2, "�������� ��������: � ������� 5 �������� ������ �� ��������; 5 �������� �� ������; 10 �������� �� ������; 10 �������� �� ����, �������� ���������!")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 10 )
	TriggerAction( 1, GiveItem, 7791, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 2, "���� ��������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "�������", JumpPage, 11 )
	Text( 2, "���������� �����", JumpPage, 12 )
	Text( 2, "�������", JumpPage, 13 )
	Text( 2, "�������", JumpPage, 14 )
	Text( 2, "������", JumpPage, 15 )
	Text( 2, "������������", JumpPage, 16 )
	Text( 2, "�����", JumpPage, 1 )
	
	Talk( 11, "�������� ��������: �������� ������ ���������� ��������� ����� ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 10 )
	TriggerAction( 1, GiveItem, 7739, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 11, "������ ������� ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7738, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 11, "�������� ������� ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7740, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 11, "����� ������� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 11, "�����", JumpPage, 2 )	
	--
	Talk( 12, "�������� ��������: �������� ������ ���������� ��������� ����� ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 10 )
	TriggerAction( 1, GiveItem, 7751, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 12, "������ ���������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7750, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 12, "�������� ���������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7752, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 12, "����� ���������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 12, "�����", JumpPage, 10 )	
	--
	Talk( 13, "�������� ��������: �������� ������ ���������� ��������� ����� ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 10 )
	TriggerAction( 1, GiveItem, 7736, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 13, "������ �������� ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7735, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 13, "�������� �������� ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7737, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 13, "����� �������� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 13, "�����", JumpPage, 10 )	
	--
	Talk( 14, "�������� ��������: �������� ������ ���������� ��������� ����� ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 10 )
	TriggerAction( 1, GiveItem, 7742, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 14, "������ ������� ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7741, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 14, "�������� ������� ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7743, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 14, "����� ������� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 14, "�����", JumpPage, 10 )
		--
	Talk( 15, "�������� ��������: �������� ������ ���������� ��������� ����� ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 10 )
	TriggerAction( 1, GiveItem, 7748, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 15, "������ ������ ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7747, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 15, "�������� ������ ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7749, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 15, "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 15, "�����", JumpPage, 10 )	
			--
	Talk( 16, "�������� ��������: �������� ������ ���������� ��������� ����� ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 10 )
	TriggerAction( 1, GiveItem, 7745, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 16, "������ ������������ ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7744, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 16, "�������� ������������ ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7746, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 16, "����� ������������ ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 16, "�����", JumpPage, 10 )
	
	--Talk( 17,  "�������� ��������: � ������ ���� �� ����������� �������� ����������� ���������: �� ������� �� 30; �� ���� ������ �� 50; �� ������ ��������� (����) 150 " ) 
	Text( 17,  "����� ", JumpPage ,1)
end
--����������

--��������
function r_volnolom()

Talk( 1, "��������: � ������� 5 �������� ��������� �� ��������; 5 �������� �� ������; 10 �������� �� ������; 10 �������� �� ����, �������� ���������!")
		InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 10 )
	TriggerAction( 1, GiveItem, 7765, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 1, "���� ��������� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "�������", JumpPage, 11 )
	Text( 1, "���������� �����", JumpPage, 12 )
	Text( 1, "�������", JumpPage, 13 )
	Text( 1, "�������", JumpPage, 14 )
	Text( 1, "������", JumpPage, 15 )
	Text( 1, "������������", JumpPage, 16 )
	--Text( 10, "�����", JumpPage, 1 )
	
	Talk( 9, "��������: � ��� ��� ������ ��������� ��� ��������� ��������! ")
	
	Talk( 11, "��������: �������� ������ ���������� ��������� ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 10 )
	TriggerAction( 1, GiveItem, 7757, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 11, "������ ������� ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7756, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 11, "�������� ������� ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7758, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 11, "����� ������� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 11, "�����", JumpPage, 10 )	
	--
	Talk( 12, "��������: �������� ������ ���������� ��������� ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 10 )
	TriggerAction( 1, GiveItem, 7770, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 12, "������ ���������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7769, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 12, "�������� ���������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7771, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 12, "����� ���������� ����� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 12, "�����", JumpPage, 10 )	
	--
	Talk( 13, "��������: �������� ������ ���������� ��������� ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 10 )
	TriggerAction( 1, GiveItem, 7754, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 13, "������ �������� ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7753, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 13, "�������� �������� ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7755, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 13, "����� �������� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 13, "�����", JumpPage, 10 )	
	--
	Talk( 14, "��������: �������� ������ ���������� ��������� ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 10 )
	TriggerAction( 1, GiveItem, 7760, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 14, "������ ������� ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7759, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 14, "�������� ������� ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7761, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 14, "����� ������� ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 14, "�����", JumpPage, 10 )
		--
	Talk( 15, "��������: �������� ������ ���������� ��������� ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 10 )
	TriggerAction( 1, GiveItem, 7767, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 15, "������ ������ ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7766, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 15, "�������� ������ ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7768, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 15, "����� ������ ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 15, "�����", JumpPage, 10 )	
			--
	Talk( 16, "��������: �������� ������ ���������� ��������� ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 10 )
	TriggerAction( 1, GiveItem, 7763, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 16, "������ ������������ ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7762, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 16, "�������� ������������ ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7764, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 16, "����� ������������ ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 16, "�����", JumpPage, 10 )
	

end

--���������
function wedding_npc01()
 
    Talk( 1, "��������������: ����� ���������� � �������. ��� ���������� ��������� �� ������ �������� � ������ �� ����� ����������, ����� 10.000.000 � ������ ��������� � ���� � ��������� �������..")
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

--�������� ���������� + ���������
function Npc_Mentor_01()

	Talk( 1, "� ��� ����� ���������, ���� ������� �� ������ ������, �� ������� ����������?")
	Text( 1, "������ ��� ���������! ", SendExchangeXData)
	
	--�������������
	Text( 1, "������������� ���������! ", JumpPage, 2 )
	
	Talk( 2, "������ �������� ��� ��������������! ����� ������������� ���� ����� ������� ������ � ������� ����� � ��������� - ��� 2 �� 2��. ��� 3 �� 4 ��. ��� 4 �� 8��. ��� 5 �� 16��. ")
	Text( 2, "��������� ��������! ", JumpPage, 3 )
	Text( 2, "��������� �������� ����! ", JumpPage, 4 )
	Text( 2, "��������� �������� ��������! ", JumpPage, 5 )
	Text( 2, "��������� �������� ������������! ", JumpPage, 6 )
	Text( 2, "��������� �������� ����! ", JumpPage, 7 )
	Text( 2, "��������� �������� ��������! ", JumpPage, 8 )
	Text( 2, "��� ", JumpPage, 9 )
	
	Talk( 9, "������ �������� ��� ��������������! ����� ������������� ���� ����� ������� ������ � ������� ����� � ��������� - ��� 2 �� 2��. ��� 3 �� 4 ��. ��� 4 �� 8��. ��� 5 �� 16��.")
	--Text( 9, "��������� ��������! ", JumpPage, 3 )
	Text( 9, "��������� �������� ����! ", JumpPage, 11 )
	Text( 9, "��������� �������� ��������! ", JumpPage, 12 )
	Text( 9, "��������� �������� ������������! ", JumpPage, 13 )
	Text( 9, "��������� �������� ����! ", JumpPage, 13 )
	Text( 9, "��������� �������� ��������! ", JumpPage, 14 )
	Text( 9, "��� ", JumpPage, 15 )
	
	Talk( 15, "������ �������� ��� ��������������! ����� ������������� ���� ����� ������� ������ � ������� ����� � ��������� - ��� 2 �� 2��. ��� 3 �� 4 ��. ��� 4 �� 8��. ��� 5 �� 16��.")
	--Text( 15, "��������� ��������! ", JumpPage, 3 )
	Text( 15, "������������ �������� ����! ", JumpPage, 17 )
	Text( 15, "������������ �������� ��������! ", JumpPage, 18 )
	Text( 15, "������������ �������� ������������! ", JumpPage, 19 )
	Text( 15, "������������ �������� ����! ", JumpPage, 20 )
	Text( 15, "������������ �������� ��������! ", JumpPage, 21 )
	Text( 15, "��� ", JumpPage, 22 )
	
	Talk( 22, "������ �������� ��� ��������������! ����� ������������� ���� ����� ������� ������ � ������� ����� � ��������� - ��� 2 �� 2��. ��� 3 �� 4 ��. ��� 4 �� 8��. ��� 5 �� 16��.")
--Text( 22, "��������� ��������! ", JumpPage, 3 )
	Text( 22, "�������� ����! ", JumpPage, 23 )
	Text( 22, "�������� ��������! ", JumpPage, 24 )
	Text( 22, "�������� ������������! ", JumpPage, 25 )
	Text( 22, "�������� ����! ", JumpPage, 26 )
	Text( 22, "�������� ��������! ", JumpPage, 27 )
	Text( 22, "��� ", JumpPage, 28 )
	
	Talk( 28, "������ �������� ��� ��������������! ����� ������������� ���� ����� ������� ������ � ������� ����� � ��������� - ��� 2 �� 2��. ��� 3 �� 4 ��. ��� 4 �� 8��. ��� 5 �� 16��.")
	--Text( 28, "��������� ��������! ", JumpPage, 3 )
	Text( 28, "������� �������� ����! ", JumpPage, 29 )
	Text( 28, "������� �������� ��������! ", JumpPage, 30 )
	Text( 28, "������� �������� ������������! ", JumpPage, 31 )
	Text( 28, "������� �������� ����! ", JumpPage, 32 )
	Text( 28, "������� �������� ��������! ", JumpPage, 33 )
	
	
	--���������
	Text( 3, "2 �������",FastCombiner,885,2)	-- Gem item id, level to combine
	Text( 3, "3 �������",FastCombiner,885,3)	-- Gem item id, level to combine
	Text( 3, "4 �������",FastCombiner,885,4)	-- Gem item id, level to combine
	Text( 3, "5 �������",FastCombiner,885,5)	-- Gem item id, level to combine

	Text( 4, "2 �������",FastCombiner,6826,2)	-- Gem item id, level to combine
	Text( 4, "3 �������",FastCombiner,6826,3)	-- Gem item id, level to combine
	Text( 4, "4 �������",FastCombiner,6826,4)	-- Gem item id, level to combine
	Text( 4, "5 �������",FastCombiner,6826,5)	-- Gem item id, level to combine
	
	Text( 5, "2 �������",FastCombiner,6817,2)	-- Gem item id, level to combine
	Text( 5, "3 �������",FastCombiner,6817,3)	-- Gem item id, level to combine
	Text( 5, "4 �������",FastCombiner,6817,4)	-- Gem item id, level to combine
	Text( 5, "5 �������",FastCombiner,6817,5)	-- Gem item id, level to combine
	
	Text( 6, "2 �������",FastCombiner,6823,2)	-- Gem item id, level to combine
	Text( 6, "3 �������",FastCombiner,6823,3)	-- Gem item id, level to combine
	Text( 6, "4 �������",FastCombiner,6823,4)	-- Gem item id, level to combine
	Text( 6, "5 �������",FastCombiner,6823,5)	-- Gem item id, level to combine
	
	Text( 7, "2 �������",FastCombiner,6829,2)	-- Gem item id, level to combine
	Text( 7, "3 �������",FastCombiner,6829,3)	-- Gem item id, level to combine
	Text( 7, "4 �������",FastCombiner,6829,4)	-- Gem item id, level to combine
	Text( 7, "5 �������",FastCombiner,6829,5)	-- Gem item id, level to combine
	
	Text( 8, "2 �������",FastCombiner,6820,2)	-- Gem item id, level to combine
	Text( 8, "3 �������",FastCombiner,6820,3)	-- Gem item id, level to combine
	Text( 8, "4 �������",FastCombiner,6820,4)	-- Gem item id, level to combine
	Text( 8, "5 �������",FastCombiner,6820,5)	-- Gem item id, level to combine
	
	--���������
	Text( 10, "2 �������",FastCombiner,6827,2)	-- Gem item id, level to combine
	Text( 10, "3 �������",FastCombiner,6827,3)	-- Gem item id, level to combine
	Text( 10, "4 �������",FastCombiner,6827,4)	-- Gem item id, level to combine
	Text( 10, "5 �������",FastCombiner,6827,5)	-- Gem item id, level to combine
	
	Text( 11, "2 �������",FastCombiner,6818,2)	-- Gem item id, level to combine
	Text( 11, "3 �������",FastCombiner,6818,3)	-- Gem item id, level to combine
	Text( 11, "4 �������",FastCombiner,6818,4)	-- Gem item id, level to combine
	Text( 11, "5 �������",FastCombiner,6818,5)	-- Gem item id, level to combine
	
	Text( 12, "2 �������",FastCombiner,6824,2)	-- Gem item id, level to combine
	Text( 12, "3 �������",FastCombiner,6824,3)	-- Gem item id, level to combine
	Text( 12, "4 �������",FastCombiner,6824,4)	-- Gem item id, level to combine
	Text( 12, "5 �������",FastCombiner,6824,5)	-- Gem item id, level to combine
	
	Text( 13, "2 �������",FastCombiner,6830,2)	-- Gem item id, level to combine
	Text( 13, "3 �������",FastCombiner,6830,3)	-- Gem item id, level to combine
	Text( 13, "4 �������",FastCombiner,6830,4)	-- Gem item id, level to combine
	Text( 13, "5 �������",FastCombiner,6830,5)	-- Gem item id, level to combine
	
	Text( 14, "2 �������",FastCombiner,6821,2)	-- Gem item id, level to combine
	Text( 14, "3 �������",FastCombiner,6821,3)	-- Gem item id, level to combine
	Text( 14, "4 �������",FastCombiner,6821,4)	-- Gem item id, level to combine
	Text( 14, "5 �������",FastCombiner,6821,5)	-- Gem item id, level to combine
	
	--������������
	Text( 16, "2 �������",FastCombiner,6828,2)	-- Gem item id, level to combine
	Text( 16, "3 �������",FastCombiner,6828,3)	-- Gem item id, level to combine
	Text( 16, "4 �������",FastCombiner,6828,4)	-- Gem item id, level to combine
	Text( 16, "5 �������",FastCombiner,6828,5)	-- Gem item id, level to combine
	
	Text( 17, "2 �������",FastCombiner,6819,2)	-- Gem item id, level to combine
	Text( 17, "3 �������",FastCombiner,6819,3)	-- Gem item id, level to combine
	Text( 17, "4 �������",FastCombiner,6819,4)	-- Gem item id, level to combine
	Text( 17, "5 �������",FastCombiner,6819,5)	-- Gem item id, level to combine
	
	Text( 18, "2 �������",FastCombiner,6825,2)	-- Gem item id, level to combine
	Text( 18, "3 �������",FastCombiner,6825,3)	-- Gem item id, level to combine
	Text( 18, "4 �������",FastCombiner,6825,4)	-- Gem item id, level to combine
	Text( 18, "5 �������",FastCombiner,6825,5)	-- Gem item id, level to combine
	
	Text( 19, "2 �������",FastCombiner,6831,2)	-- Gem item id, level to combine
	Text( 19, "3 �������",FastCombiner,6831,3)	-- Gem item id, level to combine
	Text( 19, "4 �������",FastCombiner,6831,4)	-- Gem item id, level to combine
	Text( 19, "5 �������",FastCombiner,6831,5)	-- Gem item id, level to combine
	
	Text( 20, "2 �������",FastCombiner,6822,2)	-- Gem item id, level to combine
	Text( 20, "3 �������",FastCombiner,6822,3)	-- Gem item id, level to combine
	Text( 20, "4 �������",FastCombiner,6822,4)	-- Gem item id, level to combine
	Text( 20, "5 �������",FastCombiner,6822,5)	-- Gem item id, level to combine
	
	--+5
		--������������
	Text( 23, "2 �������",FastCombiner,0863,2)	-- Gem item id, level to combine
	Text( 23, "3 �������",FastCombiner,0863,3)	-- Gem item id, level to combine
	Text( 23, "4 �������",FastCombiner,0863,4)	-- Gem item id, level to combine
	Text( 23, "5 �������",FastCombiner,0863,5)	-- Gem item id, level to combine
	
	Text( 24, "2 �������",FastCombiner,0860,2)	-- Gem item id, level to combine
	Text( 24, "3 �������",FastCombiner,0860,3)	-- Gem item id, level to combine
	Text( 24, "4 �������",FastCombiner,0860,4)	-- Gem item id, level to combine
	Text( 24, "5 �������",FastCombiner,0860,5)	-- Gem item id, level to combine
	
	Text( 25, "2 �������",FastCombiner,0862,2)	-- Gem item id, level to combine
	Text( 25, "3 �������",FastCombiner,0862,3)	-- Gem item id, level to combine
	Text( 25, "4 �������",FastCombiner,0862,4)	-- Gem item id, level to combine
	Text( 25, "5 �������",FastCombiner,0862,5)	-- Gem item id, level to combine
	
	Text( 26, "2 �������",FastCombiner,1012,2)	-- Gem item id, level to combine
	Text( 26, "3 �������",FastCombiner,1012,3)	-- Gem item id, level to combine
	Text( 26, "4 �������",FastCombiner,1012,4)	-- Gem item id, level to combine
	Text( 26, "5 �������",FastCombiner,1012,5)	-- Gem item id, level to combine
	
	Text( 27, "2 �������",FastCombiner,0861,2)	-- Gem item id, level to combine
	Text( 27, "3 �������",FastCombiner,0861,3)	-- Gem item id, level to combine
	Text( 27, "4 �������",FastCombiner,0861,4)	-- Gem item id, level to combine
	Text( 27, "5 �������",FastCombiner,0861,5)	-- Gem item id, level to combine
	
	
	InitExchangeX()
	ExchangeDataX(	8141	,	90	,	885	,	1	)
	ExchangeDataX(	8141	,	90	,	8613	,	1	)
	ExchangeDataX(	8142	,	2	,	8614	,	1	)
	ExchangeDataX(	8142	,	4	,	8615	,	1	)
	ExchangeDataX(	8142	,	6	,	8616	,	1	)
	ExchangeDataX(	8142	,	20	,	8617	,	1	)--+5
	ExchangeDataX	(	8141	,	99	,	8142	,	1	)--�����->�������
	ExchangeDataX	(	8142	,	1	,	8141	,	99	)--�������->����
	ExchangeDataX	(	8142	,	99	,	8143	,	1	)--�������->������
	ExchangeDataX	(	8143	,	1	,	8142	,	99	)--������->�������
	
	
	
end
--�������
function Npc_Mentor_02()

	Talk( 1, "� ������ ����������� ������ � ���� ���������� ���-��� ���������� ��� ����!")
	Text( 1, "������ ��� � ���� ����. ", SendExchangeXData)
	InitExchangeX()
--����� �������
ExchangeDataX	(	8142	,	10	,	3910	,	1	)--����
ExchangeDataX	(	8142	,	5	,	3094	,	1	)--��
ExchangeDataX	(	8142	,	5	,	3096	,	1	)--��
ExchangeDataX	(	8142	,	3	,	3879	,	1	)--��
ExchangeDataX	(	8142	,	7	,	3883	,	1	)--���
ExchangeDataX	(	8142	,	7	,	3884	,	1	)--���
ExchangeDataX	(	8142	,	7	,	8551	,	1	)--
ExchangeDataX	(	8142	,	1	,	227	,	10	)--������� ���
ExchangeDataX	(	8142	,	5	,	3075	,	1	)--���� �����������
ExchangeDataX	(	8142	,	3	,	3462	,	20	)--������
ExchangeDataX	(	8142	,	3	,	3463	,	20	)--��������
ExchangeDataX	(	8142	,	5	,	3074	,	1	)--���� ��������
ExchangeDataX	(	8142	,	1	,	8141	,	99	)--�������->����
ExchangeDataX	(	8142	,	99	,	8143	,	1	)--�������->������
ExchangeDataX	(	8143	,	1	,	8142	,	99	)--������->�������
ExchangeDataX	(	8142	,	2	,	854	,	1	)--����� �� �������
	

	
end
--������
function Npc_Mentor_03()

	Talk( 1, "������� ������: ������, � ������� � ��������� ������� ������ �� ������ ���������� ����!")
	Text( 1, "�������� ������� ������ ", SendExchangeXData)

	InitExchangeX()
	ExchangeDataX	(	8143	,	8	,	3088	,	1	)
	ExchangeDataX	(	8143	,	8	,	3090	,	1	)
	ExchangeDataX	(	8143	,	8	,	3091	,	1	)
	ExchangeDataX	(	8143	,	8	,	3093	,	1	)
	ExchangeDataX	(	8143	,	35	,	3000	,	1	)
	ExchangeDataX	(	8143	,	5	,	8620	,	1	)
	ExchangeDataX	(	8143	,	75	,	136	,	1	)
	ExchangeDataX	(	8143	,	75	,	137	,	1	)
	ExchangeDataX	(	8143	,	75	,	138	,	1	)
	ExchangeDataX	(	8143	,	75	,	139	,	1	)
	ExchangeDataX	(	8143	,	75	,	140	,	1	)
	ExchangeDataX	(	8143	,	75	,	141	,	1	)

end
--�������
function Npc_Mentor_04()

	Talk( 1, "���������� ���������: ������? ������ � ���������!")
--	Text( 1, "�������� ���������� ������ ", SendExchangeXData)

	InitExchangeX()
	ExchangeDataX(	8144	,	1	,	5708	,	1	,	1) --�� ���(��������)
	--ExchangeDataX(	8144	,	2	,	2835	,	1	,	1) --��� �����
	ExchangeDataX(	8144	,	2	,	8145	,	1	,	1) --����� � ���������� �������(��������)

end
--����
function Npc_Danji()

	Talk( 1, "������, � ��������� ������ ������ �� �������� ����.������� ���� ����������!")
	Text( 1, "������ ��� � ���� ����. ", SendExchangeXData)

	InitExchangeX()
--ExchangeDataX	(	8141	,	25	,	8548	,	1	)--������
ExchangeDataX	(	8141	,	25	,	8549	,	1	)--������
ExchangeDataX	(	8141	,	170	,	8574	,	1	)--���������
ExchangeDataX	(	8141	,	10	,	578	,	1	)	 --����� ����� ���
ExchangeDataX	(	8141	,	25	,	3152	,	10	)--���� ���
ExchangeDataX	(	8141	,	10	,	453	,	1	)--������ ������
ExchangeDataX	(	8141	,	10	,	455	,	1	)--������ ��������
ExchangeDataX	(	8141	,	70	,	454	,	1	)--�����������
ExchangeDataX	(	8141	,	70	,	456	,	1	)--��������
ExchangeDataX	(	8141	,	70	,	890	,	1	)--������������
ExchangeDataX	(	8141	,	70	,	891	,	1	)--�����������
ExchangeDataX	(	8141	,	70	,	1001	,	10	)--�������
ExchangeDataX	(	8141	,	60	,	1002	,	5	)
ExchangeDataX	(	8141	,	90	,	1003	,	1	)
ExchangeDataX	(	8141	,	120	,	1807	,	1	)--������ ����
ExchangeDataX	(	8141	,	10	,	3389	,	1	)--���������� ������
ExchangeDataX	(	8141	,	10	,	3135	,	1	)--��������
ExchangeDataX	(	8141	,	99	,	8142	,	1	)--�����->�������
ExchangeDataX	(	8142	,	1	,	8141	,	99	)--�������->����
	
end

--����� ������(������� � ������) + ����
function r_leter2()
Talk( 1, "������: � ��� �������, ���� ����� �����-�� ������� - ���������. � ��� ��������� ����� �� ��� �� � ����� ������, ���������� ��� � �������" )

Text( 1, "�������� �� ���� �����", JumpPage, 3)

Talk( 3, "������: ��� ��������� ���� ������ �� �������, �� ������������ ������������ ������, ������ �� �������� ������ ������ �������, � �� ������ ������ ���������, ��� ��� ����� ���������. �� ��� ��������� �������� ��� ������ ������� ������� � ������� ����� ���������� � ��������� ������� ��������.. ������ ������ �� ������� ����� ������ �����, � ������ � ��� �������� �� ���� �������������� � �����������. " )


InitTrigger()
TriggerCondition( 1, HasMoney, 1 )
TriggerAction( 1, TakeMoney, 1 )
TriggerAction( 1, OpenBank )
TriggerFailure( 1, JumpPage, 2 )
Text( 1, "��������� (����� 1 ���.)", MultiTrigger, GetMultiTrigger(), 1)
Text( 1, "������ �����", BuyPage)
	
	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
Talk( 2, "������, ������, � ���� �� ������� �����" )


end
--������ 
function r_leter3()
	local ReSelectTalk = "� ��������� "
	local ReSelectPage = 1

	local CancelSelectTalk = "������, � �������� ��� "
	local CancelSelectPage = 2

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "darkblue"
	
	local GoTo01X = 2232
	local GoTo01Y = 2787
	local GoTo01M = CurMapName1
	
	local GoTo04X = 898
	local GoTo04Y = 3650
	local GoTo04M = CurMapName2
	
	local GoTo07X = 1316
	local GoTo07Y = 536
	local GoTo07M = CurMapName3

	
	
	Talk( 1, "��������� ���� - ���: ������ ���� ����������� ���� ��������, � ���� ���� ������? " )
	Text( 1, "��� �? ", JumpPage, 4 )
	Text( 1, "��� �? ", JumpPage, 5 )
	Text( 1, "����������� � ������� �������� ", JumpPage, 3 )
	--Text( 1, "����������� � ������ ", JumpPage, 6 )
	--Text( 1, "����������� � ������ ", JumpPage, 7 )
	Text( 1, "���� ", CloseTalk)
	
	Talk( 2, "����� ����, ���� ����������� ������ ", CloseTalk )
	
	Talk( 3, "������������� � ������? ��������� ����������� 20000 �������. ��� ������� ���� 10 ������ ���������. " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, SetSpawnPos, "������")
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetSpawnPos, "������")
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 6)
	Text( 3, "������� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 6, "������������� � ������? ��������� ����������� 20000 �������. ��� ������� ���� 10 ������ ���������. " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, SetSpawnPos, "������")
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetSpawnPos, "������")
	TriggerAction( 2,  GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 2, JumpPage, 6)
	Text( 6, "������� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 6, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 7, "������������� � ������? ��������� ����������� 20000 �������. ��� ������� ���� 10 ������ ���������. " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, SetSpawnPos, "������")
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetSpawnPos, "������")
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 6)
	Text( 7, "������� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 7, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk(4, "��������� ���� - ���: ���-�� ��� ����������? �� �� �������-�������������� ��������� ����������� �� ���������� ������� �� ������� ������������� � ��������� �������� �������. ������ �� ���������� �� ������ Chaos � ��� ��� �������� ��� �������  - ������, ������, ������ ")
	Text(4, "������, � �����. ", CloseTalk)
	
	Talk(5, "��������� ���� - ���: �� �������, � ��-�������� ������. ����� ����������� � �������� ������� ���������� �������� ���������� ��������, ��� ������ ��������� � ������������ ������� ������. ")
	Text(5, "������, � �����. ", CloseTalk)
	
	Talk( 6, "������, �� � ���� ������������ ����� ��� ����������� " )
	Text( 6, "� ����� ", CloseTalk )
end

--�������� ���
function torg_talk02()
	Talk(1, "��������: ��� ������ ���������� ��������� ��������, ����� � ���� �������� ��� ������ ��� ��� ������������")
	Text(1, "����������", SendExchangeData2 )

	InitExchange2()
	DoExchange2()

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()


end

--�������� ����
function torg_talk03()
	Talk(1, "��������: ��� ������ ���������� ��������� ��������, ����� � ���� �������� ��� ������, ��� ��� ������������")
	Text(1, "����������", SendExchangeData4 )

	InitExchange4()
	DoExchange4()
InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	

end

--�������� �������
function torg_talk04()
	Talk(1, "�������: � ������ �������� ��� ��� ����, � ���� ���� ��� ������ ����������?")
	Text( 1, "�����", SendExchangeData3)


	InitExchange3()
	DoExchange3()
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	
end

--����� ��������
function new_talk08 ()
	Talk(1, "�����: � ��� ����� ���� �� ��� ���� ������������? ������ ������")

	Text( 1, "�����", SendExchangeData5)

	InitExchange5()
	DoExchange5()
InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

end



--���������� ���� ����
function Cr_talk011 ()
	local ReSelectTalk = "� ��������� "
	local ReSelectPage = 1

	local CancelSelectTalk = "������, � �������� ��� "
	local CancelSelectPage = 2

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "darkblue"
	
	local GoTo01X = 2232
	local GoTo01Y = 2787
	local GoTo01M = CurMapName1
	
	local GoTo04X = 898
	local GoTo04Y = 3650
	local GoTo04M = CurMapName2
	
	local GoTo07X = 1316
	local GoTo07Y = 536
	local GoTo07M = CurMapName3

	
	
	Talk( 1, "��������� ���� - ���: ������ ���� ����������� ���� ��������, � ���� ���� ������? " )
	Text( 1, "��� �? ", JumpPage, 4 )
	Text( 1, "��� �? ", JumpPage, 5 )
	Text( 1, "����������� � ������� �������� ", JumpPage, 3 )
	--Text( 1, "����������� � ������ ", JumpPage, 6 )
	--Text( 1, "����������� � ������ ", JumpPage, 7 )
	Text( 1, "���� ", CloseTalk)
	
	Talk( 2, "����� ����, ���� ����������� ������ ", CloseTalk )
	
	Talk( 3, "������������� � ������? ��������� ����������� 2000 �������. ��� ������� ���� 10 ������ ���������. " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, SetSpawnPos, "������")
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetSpawnPos, "������")
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 6)
	Text( 3, "������� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 6, "������������� � ������? ��������� ����������� 2000 �������. ��� ������� ���� 10 ������ ���������. " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, SetSpawnPos, "������")
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetSpawnPos, "������")
	TriggerAction( 2,  GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 2, JumpPage, 6)
	Text( 6, "������� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 6, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 7, "������������� � ������? ��������� ����������� 20000 �������. ��� ������� ���� 10 ������ ���������. " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, SetSpawnPos, "������")
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetSpawnPos, "������")
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 6)
	Text( 7, "������� ", MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 7, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk(4, "��������� ���� - ���: ���-�� ��� ����������? �� �� �������-�������������� ��������� ����������� �� ���������� ������� �� ������� ������������� � ��������� �������� �������. ������ �� ���������� �� ������ Chaos � ��� ��� �������� ��� �������  - ������, ������, ������ ")
	Text(4, "������, � �����. ", CloseTalk)
	
	Talk(5, "��������� ���� - ���: �� �������, � ��-�������� ������. ����� ����������� � �������� ������� ���������� �������� ���������� ��������, ��� ������ ��������� � ������������ ������� ������. ")
	Text(5, "������, � �����. ", CloseTalk)
	
	Talk( 6, "������, �� � ���� ������������ ����� ��� ����������� " )
	Text( 6, "� ����� ", CloseTalk )
end



function r_tower()
	Talk( 1, "��������� ������: � ���� �� ������ ��������� ����� ��� ������� ����� ����, ��������� - 10 [������ ����] " )
	Text( 1, "��������� ����� ", JumpPage, 3 )
	Text( 1, "���� ", CloseTalk )

	Talk( 3, "��������� ������: ������� � ����� ������� ������� �����!")

	InitTrigger()
	TriggerCondition( 1, HasItem, 7195, 10 )
	TriggerAction( 1, TakeItem, 7195, 10 )
	TriggerAction( 1, attack_tower, 1, 1 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 3, "����� ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 7195, 10 )
	TriggerAction( 1, TakeItem, 7195, 10 )
	TriggerAction( 1, attack_tower, 1, 2 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 3, "������ ", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 4, "� ���� ���� ����������� ����� ��� ������, ��� ���� ��������� ������������ " )
	Text( 4, "����� ", JumpPage, 1) 
end

function r_songwar()
	Talk( 1, "���� ����� �����: ����������� ������� ����, ��� ��������� ������ � ������ ����� ����� ����� ������ ���� ���� �� ��������, ������������� � ������ ���. [�� ����� BETA ������� �� �����������!!!]" )
	Text( 1, "������ � ������� ", enter_songwar )
	Text( 1, "���� ", CloseTalk )
end

function r_revive_song()
	Talk( 1, "����� ���������: ���� ��������� ������? ��� ������ ����� ����� �������, ����� 300.000 � � �������� ���� � ���� �����. " )
	Text( 1, "����������� ", revive_songwar )
	Text( 1, "���� ", CloseTalk )
end


--������������� ��������
function new_talk10 ()
	Talk( 1, "������������� ��������: ������, �� ����� �� ������ ��� � �? ����� � ���� ���� ��� ��� ����������. �������� ����� ������ � ���� ����." )
--	Text( 1, "����������", BuyPage )


	InitTrade()
	Other(	1139	)	-- ����������� ����������, 1 ��.
	Other(	1140	)	-- ����������� �������� 1 ��.
	Other(	1141	)	-- ����������� ��������� 1 ��.
	Other(	1142	)	-- ����� 1 ��.
	Other(	1143	)	-- ����������� ������� 1 ��.
	Other(	1150	)	-- ������ ������� 1 ��.
	Other(	1151	)	-- �������� ��� 1 ��.
	Other(	1152	)	-- ������� ���� 1 ��.
	Other(	2673	)	-- ��������� ������ 1 ��.
	Other(	2674	)	-- ��������� ������� 1 ��.
	Other(	2675	)	-- ����������, 1 ��.
	Other(	2676	)	-- �����, 1 ��.
	Other(	2677	)	-- ���������� ���� 1 ��.
	Other(	2678	)	-- ������� ����, 1 ��.



	Talk( 2, "������������� ��������: ��� ���� �� ��������!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

end


--��������
function qqqwe()
	Talk( 1, "������: ������, ������ ����������?." )	
	Text( 1, "����������", BuyPage )
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, AddMoney, 10000000 )
	Text( 1, "�������� ����� ����� �� ���������� �����",MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 8141, 99, 4 )
	TriggerAction( 1, GiveItem, 8142, 99, 4 )
	TriggerAction( 1, GiveItem, 8143, 99, 4 )
	Text( 1, "�������� ������ �� ���������� �����",MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 2941, 1, 4 )
	Text( 1, "�������� ������������ �� ���������� �����",MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 2729, 5, 4 )
	Text( 1, "�������� ����� � ������ �� ���������� �����",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 3422, 5, 4 )
	Text( 1, "�������� ��� 45 �� ���������� �����",MultiTrigger, GetMultiTrigger(), 1)
	
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 3423, 5, 4 )
	Text( 1, "�������� ��� 55 �� ���������� �����",MultiTrigger, GetMultiTrigger(), 1)
	
	Text( 1, "������ ���", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 3424, 5, 4 )
	Text( 1, "�������� ��� 65 �� ���������� �����",MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 1134, 5, 4 )
	Text( 2, "�������� �� ��� ���������� �����",MultiTrigger, GetMultiTrigger(), 1)
		InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 8597, 5, 4 )
	Text( 2, "�������� ����� ��� 53 ���������� �����",MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 8598, 5, 4 )
	Text( 2, "�������� ����� ��� 57 ���������� �����",MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 8599, 5, 4 )
	Text( 2, "�������� ����� ��� 63 ���������� �����",MultiTrigger, GetMultiTrigger(), 1)
	
		

	
	InitTrade()
	--1 �������
	Weapon(	8562	)
	Weapon(	8529	)
	Weapon(	1020	)
	Weapon(	890	)
	Weapon(	891	)
	Weapon(	849	)--����� ����� ������
	Weapon(	3097	)--��������� �����
	Weapon(	3096	)-- ��������� �����
	Weapon(	3095	)--��������� ����������
	--2 �������
	Weapon(	3844	)-- ��
	Weapon(	3845	)-- ��
	Weapon(	3846	) -- ����� ����
	Weapon(	3105	)--����� ����������
	--3 �������
	Weapon(	3088	)--������ � 30 ��������
	Weapon(	3090	)--������
	Weapon(	3091	)--������
	Weapon(	3093	)--������
	--4 �������
	--��� ������
	Weapon(	3462	) -- ���������� ������
	Weapon(	3463	) -- ������� ��������
	Weapon(	3300	) -- ������� �����
	Weapon(	3301	) -- ����������� �������������
	--������
	Weapon(	3109	) -- ������ ������
	Weapon(	3110	) -- ������ ������
	Weapon(	3111	) -- ������ ������
	Weapon(	3112	) -- ������ ������
	Weapon(	3113	) -- ������ ������
	Weapon(	1024	)--�������������� ������������
	
	Other(	1139	)	-- ����������� ����������, 1 ��.
	Other(	1140	)	-- ����������� �������� 1 ��.
	Other(	1141	)	-- ����������� ��������� 1 ��.
	Other(	1142	)	-- ����� 1 ��.
	Other(	1143	)	-- ����������� ������� 1 ��.
	Other(	1150	)	-- ������ ������� 1 ��.
	Other(	1151	)	-- �������� ��� 1 ��.
	Other(	1152	)	-- ������� ���� 1 ��.
	Other(	2673	)	-- ��������� ������ 1 ��.
	Other(	2674	)	-- ��������� ������� 1 ��.
	Other(	2675	)	-- ����������, 1 ��.
	Other(	2676	)	-- �����, 1 ��.
	Other(	2677	)	-- ���������� ���� 1 ��.
	Other(	2678	)	-- ������� ����, 1 ��.
	
	Weapon(	4604	)--����� �� ������
	Weapon(	4603	)--����� �� �������
	Weapon(	4602	)--����� �� �������
	Weapon(	3141	)--�������� �����
	Weapon(	3076	)--������� � ���������
	Weapon(	3048	)--������� � ���������
	Weapon(	0563	)--������� �� ������ ����
	Weapon(	0583	)--������� �� ������ �����
	Weapon(	3049	)--������ � ���� ����������
	Weapon(	3050	)--������� � ��������� ������� ����
	Weapon(	3051	)--������� � ��������� ���
	Weapon(	3052	)--������� � �����
	Weapon(	3053	)--������� � �������� ����
	Weapon(	2445	)--����� � ��������� �����������	
	Weapon(	3054	)--������� � �������� �����
	Weapon(	3059	)--����� � �������� ����� 2
    Weapon(	3060	)--������� � �������� ����� 3
	Weapon(	3070	)--
	Weapon(	3071	)--
	Weapon(	3072	)--
	Weapon(	8605	)--
	Weapon(	8606	)--
	Weapon(	8607	)--
	Weapon(	8608	)--
	Weapon(	8609	)--
	Weapon(	8610	)--
	Weapon(	8611	)--
	
	Defence(	8535	)
	Defence(	8574	)
	Defence(	8562	)
	Defence(	8548	)
	Defence(	8549	)
	Defence(	8551	)
	Defence(	8300	)
	Defence(	0262	)
	Defence(	1016	)
	
	Defence(	8546	)
	Defence(	7753	)
	Defence(	7754	)
	Defence(	7755	)
	Defence(	7756	)
	Defence(	7757	)
	Defence(	8577	)
	Defence(	453	)
	Defence(	455	)
	
end

function xmas_0706()
	Talk( 1, "��������: ������� �����, ���� ������ ���!")
	Text( 1, "����������", BuyPage )

	InitTrade()
	Weapon(	6417	)
	Weapon(	6418	)
	Weapon(	6419	)
	Weapon(	6420	)
	Weapon(	6421	)
	Weapon(		)
	Weapon(		)
	Weapon(		)
	Weapon(	6422	)
	Weapon(	6423	)
	Weapon(	6424	)
	Weapon(	6425	)
	Weapon(	6426	)
	Weapon(		)
	Weapon(		)
	Weapon(		)
	Weapon(	6427	)
	Weapon(	6428	)
	Weapon(	6429	)
	Weapon(	6430	)
	Weapon(	6431	)
	Weapon(		)
	Weapon(		)
	Weapon(		)
	Weapon(	6432	)
	Weapon(	6433	)
	Weapon(	6434	)
	Weapon(	6435	)
	Weapon(	6436	)
	Weapon(		)
	Weapon(		)
	Weapon(		)
	Weapon(	6437	)
	Weapon(	6438	)
	Weapon(	6439	)
	Weapon(	6440	)
	Weapon(	6441	)
	Weapon(		)
	Weapon(		)
	Weapon(		)
	Weapon(	6442	)
	Weapon(	6443	)
	Weapon(	6444	)
	Weapon(	6445	)
	Weapon(	6446	)
	Weapon(		)
	Weapon(		)
	Weapon(		)
	Weapon(	6447	)
	Weapon(	6448	)
	Weapon(	6449	)
	Weapon(	6450	)
	Weapon(	6451	)
	Weapon(	6452	)
	Weapon(	6453	)
	Weapon(	6454	)
	Weapon(	6463	)
	Weapon(	6464	)
	Weapon(	6465	)
	Weapon(	6466	)
	Weapon(	6471	)
	Weapon(	6472	)
	Weapon(	6473	)
	Weapon(	6474	)
	Weapon(	5616	)
	Weapon(	5617	)
	Weapon(	5618	)
	Weapon(	5619	)
	Weapon(	6475	)
	Weapon(	6476	)
	Weapon(	6477	)
	Weapon(	6478	)
	Weapon(	6499	)
	Weapon(	6500	)
	Weapon(	6501	)
	Weapon(	6502	)
	Weapon(	5138	)
	Weapon(	5139	)
	Weapon(	5140	)
	Weapon(	5414	)
	Weapon(	5134	)
	Weapon(	5135	)
	Weapon(	5136	)
	Weapon(	5137	)
	Weapon(	5130	)
	Weapon(	5131	)
	Weapon(	5132	)
	Weapon(	5133	)
	Weapon(	5020	)
	Weapon(	5024	)
	Weapon(	5032	)
	Weapon(	5037	)
	Weapon(	5016	)
	Weapon(	5028	)
	Weapon(	5036	)
	Weapon(		)
	Defence(	5260	)
	Defence(	5261	)
	Defence(	5262	)
	Defence(	5263	)
	Defence(	5248	)
	Defence(	5249	)
	Defence(	5250	)
	Defence(	5251	)
	Defence(	5256	)
	Defence(	5257	)
	Defence(	5258	)
	Defence(	5259	)
	Defence(	5244	)
	Defence(	5245	)
	Defence(	5246	)
	Defence(	5247	)
	Defence(	5252	)
	Defence(	5253	)
	Defence(	5254	)
	Defence(	5255	)
	Defence(	5191	)
	Defence(	5192	)
	Defence(	5193	)
	Defence(	5194	)
	Defence(	5187	)
	Defence(	5188	)
	Defence(	5189	)
	Defence(	5190	)
	Defence(	5183	)
	Defence(	5184	)
	Defence(	5185	)
	Defence(	5186	)
	Defence(	5179	)
	Defence(	5180	)
	Defence(	5181	)
	Defence(		)
	Defence(	5175	)
	Defence(	5177	)
	Defence(	5178	)
	Defence(		)
	Defence(	5428	)
	Defence(	5429	)
	Defence(	5430	)
	Defence(	5431	)
	Defence(	5416	)
	Defence(	5418	)
	Defence(	5417	)
	Defence(		)
	Defence(	5419	)
	Defence(	5420	)
	Defence(	5421	)
	Defence(		)
	Defence(	5400	)
	Defence(	5401	)
	Defence(	5402	)
	Defence(	5403	)
	Defence(	5514	)
	Defence(	5515	)
	Defence(	5516	)
	Defence(		)
	Defence(	5517	)
	Defence(	5518	)
	Defence(	5519	)
	Defence(		)
	Defence(	5646	)
	Defence(	5647	)
	Defence(	5648	)
	Defence(	5649	)
	Defence(	5986	)
	Defence(	5987	)
	Defence(	5988	)
	Defence(	5989	)
	Defence(	5974	)
	Defence(	5975	)
	Defence(	5976	)
	Defence(	5977	)
	Defence(	5982	)
	Defence(	5983	)
	Defence(	5984	)
	Defence(	5985	)
	Defence(	5913	)
	Defence(	5914	)
	Defence(	5915	)
	Defence(	5916	)
	Defence(	6378	)
	Defence(	6379	)
	Defence(	6380	)
	Defence(	6381	)
	Defence(	6382	)
	Defence(	6383	)
	Defence(	6384	)
	Defence(	6385	)
	Defence(	6455	)
	Defence(	6456	)
	Defence(	6457	)
	Defence(	6458	)
	Defence(	5015	)
	Defence(	5023	)
	Defence(	5031	)
	Defence(		)
	Other(	5019	)
	Other(	5027	)
	Other(	5035	)
	Other(		) 
 Other(		)
	Other(	5084	)
	Other(	5085	)
	Other(	5086	)
	Other(		) 
 Other(		)
	Other(	5087	)
	Other(	5088	)
	Other(	5089	)
	Other(		) 
 Other(		)
	Other(	5090	)
	Other(	5091	)
	Other(	5092	)
	Other(		) 
 Other(		)
	Other(	5093	)
	Other(	5094	)
	Other(	5095	)
	Other(		) 
 Other(		)
	Other(	5096	)
	Other(	5097	)
	Other(	5098	)
	Other(		) 
 Other(		)
	Other(	5142	)
	Other(	5143	)
	Other(	5144	)
	Other(	5145	)
	Other(	5146	)
	Other(	5147	)
	Other(	5148	)
	Other(	5149	)
	Other(	5150	)
	Other(	5151	)
	Other(	5152	)
	Other(	5153	)
	Other(	5172	)
	Other(	5173	)
	Other(	5474	)
	Other(		) 
 Other(		)
	Other(	5396	)
	Other(	5397	)
	Other(	5398	)
	Other(	5399	)
	Other(	5426	)
	Other(	5427	)
	Other(	5438	)
	Other(		) 
 Other(		)
	Other(	5909	)
	Other(	5910	)
	Other(	5911	)
	Other(	5912	)
	Other(	6358	)
	Other(	6359	)
	Other(	6360	)
	Other(	6361	)
	Other(	6367	)
	Other(	6368	)
	Other(	6369	)
	Other(		) 
 Other(		)
	Other(	6370	)
	Other(	6371	)
	Other(	6372	)
	Other(	6373	)
	Other(	6374	)
	Other(	6375	)
	Other(	6376	)
	Other(	6377	)
	Other(	6483	)
	Other(	6484	)
	Other(	6485	)
	Other(	6486	)
	Other(	6495	)
	Other(	6496	)
	Other(	6497	)
	Other(	6498	)
	Other(	5014	)
	Other(	5022	)
	Other(	5030	)
	Other(		) 
 Other(		)
	Other(	5018	)
	Other(	5026	)
	Other(	5034	)
	Other(		) 
 Other(		)
	Other(	5107	)
	Other(	5108	)
	Other(	5109	)
	Other(		) 
 Other(		)
	Other(	5110	)
	Other(	5111	)
	Other(	5112	)
	Other(	5113	)
	Other(	5115	)
	Other(	5116	)
	Other(	5117	)
	Other(		) 
 Other(		)
	Other(	5163	)
	Other(	5164	)
	Other(	5165	)
	Other(		) 
 Other(		)
end

function xmas_0707()
    Talk( 1, "��������: ������� �����, ���� ������ ���!")
	Text( 1, "����������", BuyPage )

	InitTrade()
	Weapon(	5521	)
	Weapon(	5522	)
	Weapon(	5523	)
	Weapon(	5524	)
	Weapon(	5529	)
	Weapon(	5530	)
	Weapon(	5531	)
	Weapon(	5532	)
	Weapon(	5533	)
	Weapon(	5534	)
	Weapon(	5535	)
	Weapon(	5536	)
	Weapon(	5537	)
	Weapon(	5538	)
	Weapon(	5539	)
	Weapon(	5540	)
	Weapon(	5541	)
	Weapon(	5542	)
	Weapon(	5543	)
	Weapon(	5544	)
	Weapon(	5545	)
	Weapon(	5546	)
	Weapon(	5547	)
	Weapon(	5548	)
	Weapon(	5549	)
	Weapon(	5550	)
	Weapon(	5551	)
	Weapon(	5552	)
	Weapon(	5553	)
	Weapon(	5554	)
	Weapon(	5555	)
	Weapon(	5556	)
	Weapon(	5557	)
	Weapon(	5558	)
	Weapon(	5559	)
	Weapon(	5560	)
	Weapon(	5561	)
	Weapon(	5562	)
	Weapon(	5563	)
	Weapon(	5564	)
	Weapon(	5565	)
	Weapon(	5566	)
	Weapon(	5567	)
	Weapon(	5568	)
	Weapon(	5569	)
	Weapon(	5570	)
	Weapon(	5571	)
	Weapon(	5572	)
	Weapon(	5573	)
	Weapon(	5574	)
	Weapon(	5575	)
	Weapon(	5576	)
	Weapon(	5577	)
	Weapon(	5578	)
	Weapon(	5579	)
	Weapon(	5580	)
	Weapon(	5581	)
	Weapon(	5582	)
	Weapon(	5583	)
	Weapon(	5584	)
	Weapon(	5585	)
	Weapon(	5586	)
	Weapon(	5587	)
	Weapon(	5588	)
	Weapon(	5589	)
	Weapon(	5590	)
	Weapon(	5591	)
	Weapon(	5592	)
	Weapon(	5593	)
	Weapon(	5594	)
	Weapon(	5595	)
	Weapon(	5596	)
	Weapon(	5601	)
	Weapon(	5602	)
	Weapon(	5603	)
	Weapon(	5604	)
	Weapon(	5605	)
	Weapon(	5606	)
	Weapon(	5607	)
	Weapon(	5608	)
	Weapon(	5632	)
	Weapon(	5633	)
	Weapon(	5634	)
	Weapon(	5635	)
	Weapon(	5628	)
	Weapon(	5629	)
	Weapon(	5630	)
	Weapon(	5631	)
	Weapon(	5636	)
	Weapon(	5637	)
	Weapon(	5638	)
	Weapon(	5639	)
	Defence(	5640	)
	Defence(	5641	)
	Defence(	5642	)
	Defence(	5643	)
	Defence(	5651	)
	Defence(	5652	)
	Defence(	5653	)
	Defence(	5634	)
	Defence(	5655	)
	Defence(	5656	)
	Defence(	5657	)
	Defence(	5658	)
	Defence(	5659	)
	Defence(	5660	)
	Defence(		)
	Defence(		)
	Defence(	5661	)
	Defence(	5662	)
	Defence(	5663	)
	Defence(	5664	)
	Defence(	5665	)
	Defence(	5666	)
	Defence(	5667	)
	Defence(	5668	)
	Defence(	5669	)
	Defence(	5670	)
	Defence(	5671	)
	Defence(	5672	)
	Defence(	5673	)
	Defence(	5674	)
	Defence(	5675	)
	Defence(	5676	)
	Defence(	5677	)
	Defence(	5678	)
	Defence(	5679	)
	Defence(	5680	)
	Defence(	5681	)
	Defence(	5682	)
	Defence(	5683	)
	Defence(	5684	)
	Defence(	5685	)
	Defence(	5686	)
	Defence(	5687	)
	Defence(	5688	)
	Defence(	5689	)
	Defence(	5690	)
	Defence(	5691	)
	Defence(	5692	)
	Defence(	5726	)
	Defence(	5727	)
	Defence(	5728	)
	Defence(	5729	)
	Defence(	5730	)
	Defence(	5731	)
	Defence(	5732	)
	Defence(	5733	)
	Defence(	5734	)
	Defence(	5735	)
	Defence(	5736	)
	Defence(	5737	)
	Defence(	5738	)
	Defence(	5739	)
	Defence(	5740	)
	Defence(	5741	)
	Defence(	5742	)
	Defence(	5743	)
	Defence(	5744	)
	Defence(	5745	)
	Defence(	5746	)
	Defence(	5747	)
	Defence(	5748	)
	Defence(	5749	)
	Defence(	5850	)
	Defence(	5851	)
	Defence(	5852	)
	Defence(	5853	)
	Defence(	5854	)
	Defence(	5855	)
	Defence(	5856	)
	Defence(	5857	)
	Defence(	5898	)
	Defence(	5899	)
	Defence(	5900	)
	Defence(	5901	)
	Defence(	6503	)
	Defence(	6504	)
	Defence(	6505	)
	Defence(	6506	)
	Defence(	5905	)
	Defence(	5906	)
	Defence(	5907	)
	Defence(	5908	)
	Defence(	5918	)
	Defence(	5919	)
	Defence(	5920	)
	Defence(	5921	)
	Defence(	5922	)
	Defence(	5923	)
	Defence(	5924	)
	Defence(	5925	)
	Other(	5926	)
	Other(	5927	)
	Other(	5928	)
	Other(	5929	)
	Other(	5930	)
	Other(	5931	)
	Other(	5932	)
	Other(	5933	)
	Other(	5934	)
	Other(	5935	)
	Other(	5936	)
	Other(	5937	)
	Other(	5938	)
	Other(	5939	)
	Other(	5940	)
	Other(		) 
 Other(		)
	Other(	5941	)
	Other(	5942	)
	Other(	5943	)
	Other(		) 
 Other(		)
	Other(	5944	)
	Other(	5962	)
	Other(	5963	)
	Other(	5964	)
	Other(	5945	)
	Other(	5946	)
	Other(	5947	)
	Other(	5948	)
	Other(	5953	)
	Other(	5954	)
	Other(	5955	)
	Other(	5956	)
	Other(	5957	)
	Other(	5958	)
	Other(	5959	)
	Other(	5960	)
	Other(	5965	)
	Other(	5966	)
	Other(	5967	)
	Other(	5968	)
	Other(	5970	)
	Other(	5971	)
	Other(	5972	)
	Other(	5973	)
	Other(	5978	)
	Other(	5979	)
	Other(	5980	)
	Other(	5981	)
	Other(	5992	)
	Other(	5993	)
	Other(	5994	)
	Other(		) 
 Other(		)
	Other(	6350	)
	Other(	6351	)
	Other(	5352	)
	Other(	6353	)
	Other(	6354	)
	Other(	6355	)
	Other(	6356	)
	Other(	6357	)
	Other(	6362	)
	Other(	6363	)
	Other(	6364	)
	Other(	6365	)
	Other(	6366	)
	Other(		) 
 Other(		)
	Other(		) 
 Other(		)
	Other(		) 
 Other(		)
	Other(	6386	)
	Other(	6387	)
	Other(	6388	)
	Other(	6389	)
	Other(	6395	)
	Other(	6396	)
	Other(	6397	)
	Other(		) 
 Other(		)
	Other(	6398	)
	Other(	6399	)
	Other(	6400	)
	Other(	6401	)
	Other(	6403	)
	Other(	6404	)
	Other(	6405	)
	Other(	6406	)
	Other(	6408	)
	Other(	6409	)
	Other(	6410	)
	Other(		) 
 Other(		)
	Other(	6411	)
	Other(		) 
 Other(		)
	Other(	6412	)
	Other(	6413	)
	Other(	6414	)
	Other(	6415	)
	Other(	6416	)
end

function xmas_0708()
	Talk( 1, "��������: ������� �����, ���� ������ ���!")
	Text( 1, "����������", BuyPage )

	InitTrade()
	Weapon(	5041	)
	Weapon(	5045	)
	Weapon(	5049	)
	Weapon(		)
	Weapon(	5042	)
	Weapon(	5046	)
	Weapon(	5050	)
	Weapon(		)
	Weapon(	5043	)
	Weapon(	5047	)
	Weapon(	5051	)
	Weapon(		)
	Weapon(	5044	)
	Weapon(	5048	)
	Weapon(	5052	)
	Weapon(	5056	)
	Weapon(	5057	)
	Weapon(	5061	)
	Weapon(	5065	)
	Weapon(		)
	Weapon(	5058	)
	Weapon(	5062	)
	Weapon(	5066	)
	Weapon(		)
	Weapon(	5059	)
	Weapon(	5069	)
	Weapon(	5067	)
	Weapon(		)
	Weapon(	5060	)
	Weapon(	5064	)
	Weapon(	5068	)
	Weapon(	5069	)
	Weapon(		)
	Weapon(	5075	)
	Weapon(	5076	)
	Weapon(	5077	)
	Weapon(		)
	Weapon(	5081	)
	Weapon(	5082	)
	Weapon(	5083	)
	Weapon(	5118	)
	Weapon(	5119	)
	Weapon(	5120	)
	Weapon(	5121	)
	Weapon(	5127	)
	Weapon(	5128	)
	Weapon(	5129	)
	Weapon(		)
	Weapon(	5154	)
	Weapon(	5155	)
	Weapon(	5156	)
	Weapon(		)
	Weapon(	5166	)
	Weapon(	5167	)
	Weapon(	5168	)
	Weapon(		)
	Weapon(	5157	)
	Weapon(	5158	)
	Weapon(	5159	)
	Weapon(		)
	Weapon(	5169	)
	Weapon(	5170	)
	Weapon(	5171	)
	Weapon(		)
	Weapon(	5160	)
	Weapon(	5161	)
	Weapon(	5162	)
	Weapon(		)
	Weapon(	5205	)
	Weapon(	5206	)
	Weapon(	5207	)
	Weapon(	5220	)
	Weapon(	5202	)
	Weapon(	5203	)
	Weapon(	5204	)
	Weapon(	5219	)
	Weapon(	5198	)
	Weapon(	5199	)
	Weapon(	5200	)
	Weapon(	5201	)
	Weapon(	5221	)
	Weapon(	5222	)
	Weapon(	5223	)
	Weapon(		)
	Weapon(	5224	)
	Weapon(	5225	)
	Weapon(	5226	)
	Weapon(		)
	Weapon(	5227	)
	Weapon(	5228	)
	Weapon(	5229	)
	Weapon(		)
	Weapon(	5241	)
	Weapon(	5242	)
	Weapon(	5243	)
	Weapon(		)
	Defence(	5241	)
	Defence(	5242	)
	Defence(	5243	)
	Defence(		)
	Defence(	5264	)
	Defence(	5265	)
	Defence(	5266	)
	Defence(		)
	Defence(	5267	)
	Defence(	5268	)
	Defence(	5269	)
	Defence(		)
	Defence(	5270	)
	Defence(	5271	)
	Defence(	5272	)
	Defence(		)
	Defence(	5273	)
	Defence(	5274	)
	Defence(	5275	)
	Defence(		)
	Defence(	5287	)
	Defence(	5288	)
	Defence(	5289	)
	Defence(	5290	)
	Defence(	5295	)
	Defence(	5296	)
	Defence(	5297	)
	Defence(	5298	)
	Defence(	5299	)
	Defence(	5300	)
	Defence(	5301	)
	Defence(	5302	)
	Defence(	5303	)
	Defence(	5304	)
	Defence(	5305	)
	Defence(		)
	Defence(	5309	)
	Defence(	5310	)
	Defence(	5311	)
	Defence(		)
	Defence(	5312	)
	Defence(	5313	)
	Defence(	5314	)
	Defence(		)
	Defence(	5315	)
	Defence(	5316	)
	Defence(	5317	)
	Defence(	5318	)
	Defence(	5323	)
	Defence(	5324	)
	Defence(	5325	)
	Defence(	5326	)
	Defence(	5327	)
	Defence(	5328	)
	Defence(	5329	)
	Defence(	5330	)
	Defence(	5341	)
	Defence(	5342	)
	Defence(	5343	)
	Defence(		)
	Defence(	5345	)
	Defence(	5346	)
	Defence(	5347	)
	Defence(		)
	Defence(	5349	)
	Defence(	5350	)
	Defence(	5351	)
	Defence(		)
	Defence(	5352	)
	Defence(	5353	)
	Defence(	5354	)
	Defence(	5355	)
	Defence(	5356	)
	Defence(	5357	)
	Defence(	5358	)
	Defence(	5359	)
	Defence(	5360	)
	Defence(	5361	)
	Defence(	5362	)
	Defence(	5363	)
	Defence(	5364	)
	Defence(	5365	)
	Defence(	5366	)
	Defence(	5367	)
	Defence(	5368	)
	Defence(	5369	)
	Defence(	5370	)
	Defence(	5371	)
	Other(	5372	)
	Other(	5373	)
	Other(	5374	)
	Other(	5375	)
	Other(	5376	)
	Other(	5377	)
	Other(	5378	)
	Other(	5379	)
	Other(	5380	)
	Other(	5381	)
	Other(	5382	)
	Other(	5383	)
	Other(	5384	)
	Other(	5385	)
	Other(	5386	)
	Other(	5387	)
	Other(	5388	)
	Other(	5389	)
	Other(	5390	)
	Other(	5391	)
	Other(	5404	)
	Other(	5405	)
	Other(	5406	)
	Other(	5436	)
	Other(	5410	)
	Other(	5411	)
	Other(	5412	)
	Other(	5438	)
	Other(	5413	)
	Other(	5414	)
	Other(	5415	)
	Other(	5439	)
	Other(	5422	)
	Other(	5423	)
	Other(	5440	)
	Other(		) 
 Other(		)
	Other(	5424	)
	Other(	5425	)
	Other(	5441	)
	Other(		) 
 Other(		)
	Other(	5432	)
	Other(	5433	)
	Other(	5444	)
	Other(		) 
 Other(		)
	Other(	5434	)
	Other(	5435	)
	Other(	5445	)
	Other(		) 
 Other(		)
	Other(	5456	)
	Other(	5457	)
	Other(	5458	)
	Other(	5459	)
	Other(	5460	)
	Other(	5461	)
	Other(	5462	)
	Other(	5463	)
	Other(	5464	)
	Other(	5465	)
	Other(	5466	)
	Other(	5467	)
	Other(	5468	)
	Other(	5469	)
	Other(	5470	)
	Other(	5471	)
	Other(	5488	)
	Other(	5489	)
	Other(	5490	)
	Other(		) 
 Other(		)
	Other(	5491	)
	Other(	5492	)
	Other(	5493	)
	Other(		) 
 Other(		)
	Other(	5494	)
	Other(	5495	)
	Other(	5496	)
	Other(		) 
 Other(		)
	Other(	5497	)
	Other(	5498	)
	Other(	5499	)
	Other(	5500	)
	Other(		) 
 Other(		)
	Other(	5501	)
	Other(	5502	)
	Other(	5503	)
	Other(		) 
 Other(		)
	Other(	5507	)
	Other(	5508	)
	Other(	5509	)
	Other(	5510	)
	Other(	5511	)
	Other(	5512	)
	Other(	5513	)
end

function xmas_0701()
	Talk( 1, "�����: ����������! � ������ ������ ������! �������!" )
	Text( 1, "����", BuyPage )
	Text( 1, "������", OpenRepair )
	Text( 1, "�������������", OpenUnite)
	Text( 1, "�����", OpenForge)
	Text( 1, "������", OpenMilling)
	Text( 1, "������ ���������", OpenFusion)
	Text( 1, "������������������ ���������", OpenUpgrade)
	Text( 1, "���������� ���������", OpenGetStone )
	Text( 1, "�������� ������", SendExchangeXData )
	Text( 1, "������...",CloseTalk )

	

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
--	Defence(	0453	)
--	Defence(	0454	)
--	Defence(	6946	)
	Defence(	1020	)
--	Defence(	0455	)
--	Defence(	0456	)
--	Defence(	0890	)
--	Defence(	0891	)
	Defence(	0886	)
	Defence(	3075	)
	Defence(	3074	)
	--Other(	6819	)
	--Other(	6822	)
	--Other(	6825	)
	--Other(	6828	)
	--Other(	6831	)
	--Other(		) 
 Other(		)
	--Other(		) 
 Other(		)
	--Other(		) 
 Other(		)
	--Other(	6818	)
	--Other(	6821	)
	--Other(	6824	)
	--Other(	6827	)
	--Other(	6830	)
	Other(		) 
 Other(		)
	Other(		) 
 Other(		)
	Other(		) 
 Other(		)
--[[	InitTrigger()
	TriggerCondition( 1, NoItem, 4286, 1 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, PfEqual, 8 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, PfEqual, 9 )
	TriggerAction( 3, JumpPage, 2 )
	TriggerCondition( 4, PfEqual, 12 )
	TriggerAction( 4, JumpPage, 2 )
	TriggerCondition( 5, PfEqual, 13 )
	TriggerAction( 5, JumpPage, 2 )
	TriggerCondition( 6, PfEqual, 14 )
	TriggerAction( 6, JumpPage, 2 )
	TriggerCondition( 7, PfEqual, 16 )
	TriggerAction( 7, JumpPage, 2 )
	Start( GetMultiTrigger(), 7 )

	Talk( 1, "�������: ���." )

	Talk( 2, "�������: ����� �� ����" )
	Text( 2, "65 ����", JumpPage, 3 )
	Text( 2, "���� �����", JumpPage, 4 )
	Text( 2, "������ �����", JumpPage, 5 )
	
	Talk( 6, "�������: �� �����." )
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 4286, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 4286, 1 )
	TriggerAction( 1, GiveItem, 4288, 1 , 4)
	TriggerFailure( 1, JumpPage, 6 )
	Text( 3, "�������� ������ 65 �����", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 4286, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 4286, 1 )
	TriggerAction( 1, GiveItem, 4287, 1 , 4)
	TriggerFailure( 1, JumpPage, 6 )
	Text( 4, "�������� ������ ���� �������", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 4286, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 4286, 1 )
	TriggerAction( 1, GiveItem, 4288, 1 , 4)
	TriggerFailure( 1, JumpPage, 6 )
	
	

	AddNpcMission	(1700)	--���� ������
	AddNpcMission	(1701)	--���� ������
	AddNpcMission	(1702)	--���� ������
	AddNpcMission	(1703)	--���� ������
	AddNpcMission	(1704)	--���� ������
	AddNpcMission	(1705)	--���� ������

]]--
end

function xmas_0702()
	Talk( 1, "��������: ")

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, GiveItem, 6206, 1 , 4)
	TriggerFailure( 1, JumpPage, 1 )
	Text( 1, "������", MultiTrigger, GetMultiTrigger(), 1)


	
end

function xmas_0703()
	Talk( 1, "��������: ������� �����, ���� ������ ���!")
	Text( 1, "����������", BuyPage )


	
end
