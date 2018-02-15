------------------------------------------------------------
--missionscript05.lua Created by Robin 2005.05.27.
--
--区域任务
------------------------------------------------------------
print( "嚑｀悃獱 missionscript05.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

----------------------------------------------------------
--							--
--							--
--		区域任务	 				--
--							--
--							--
----------------------------------------------------------
	-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>主线任务开始
function AreaMission001()

-----------------------------------盗取蜂巢
	DefineMission( 600, "项蹊龛� 戾漕恹� 耦�", 600 )
	
	MisBeginTalk( "<t>枢� 泐忸痂蝰� � 镱耠钼桷�: 朽耧铍铈� � 皴徨 腓溴疣 � 螓 镱塍鬣屮� 怦� 铖蜞朦眍�.<n><t>念狍潼蝈 <y5 与彘 滂觇� 秣鸽>, 黩� 猁 疣耧铍铈栩� � 皴徨 筲噫屙桢 镱溻桡囔�, � 礤 疣玢钼铕囔� � 龛�!<n><t>(与�� 忮��� 磬 溴疱恻�� � 礼赅痤礤, ��漕� � 溴疱恻�扈 脲蜞 秣鸽�, 蜞�, 黩� 蔓 耩噻� 漕汔溧弪羼� 沅� 桴 桉赅螯)." )
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 600)
	MisBeginCondition(NoRecord, 600)
	MisBeginAction(AddMission, 600)
	MisBeginAction(AddTrigger, 6001, TE_GETITEM, 4085, 5 )
	MisCancelAction(ClearMission, 600)

	MisNeed(MIS_NEED_ITEM, 4085, 5, 10, 5)
		
	MisHelpTalk("<t>念狍潼蝈 5 与彘 滂觇� 秣鸽 � 蝾麝� (1544.3134) 礼赅痤磬 � 镳屙羼栩� 桴 捏痂囗�!")
	MisResultTalk("<t>斟-蹂. 蔓 犷�腓顸, 黩� 秣鸽� 锣� 镱牦襦 觐沅� 蔓 狍溴蝈 疣珙��螯 桴 箅��?")
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

-----------------------------------歼灭野蛮蜂
	DefineMission( 601, "禹梓蝾驽龛� 秣咫", 601 )
	
	MisBeginTalk( "<t>� 祛� 令�... 蒡� <r蔫觇� 削鸽�> 耱囗钼�蝰� 怦� 嚆疱耨桠礤� � 嚆疱耨桠礤�. � 镳铠鸽 ��漕� � 觌箪犷�, 沅� 铐� 耦徼疣腓 礤牝囵 � 铐� 怦屐 痤屐 磬 戾�� 磬镟腓.<n><t>悟 桴 箨篑钼 祛� 腓鲱 蝈镥瘘 怦� � 忸脘��.<n><t>湾 铗铎耱栩� 玎 戾�� 桁? 俞彘蝈 <r10 蔫觇� 秣鸽>. 雾� 祛泱� 猁螯 ��漕� � (1623,139)!" )
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(HasRecord, 600)
	MisBeginCondition(NoMission, 601)
	MisBeginCondition(NoRecord, 601)
	MisBeginAction(AddMission, 601)
	MisBeginAction(AddTrigger, 6011, TE_KILL, 139, 10 )
	MisCancelAction(ClearMission, 601)

	MisNeed(MIS_NEED_KILL, 139, 10, 10, 10)
	
	MisHelpTalk("<t>蔓 疣玮� 箧� 筢桦� 蔫觇� 秣鸽?")
	MisResultTalk("<t>锗-踵-踵! 扬囫栳� 蝈徨 漕狃 麇腩忮�. 义镥瘘 � 削鸽� 狍潴� 珥囹� 磬 觐泐 磬镟溧螯!")
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

-----------------------------------扰人清梦
	DefineMission( 602, "茵邂铈睇� 耦�", 602 )
	
	MisBeginTalk( "<t>Ah, I am just about to look for you! For the past 2 days, I have been unable to sleep because of the sounds made by <rOwlie>. Every time I lie down on bed I would hear the \"Hoot\" of the Owlie.<n><t>I am old and I needs sleep. This can't go on, please help me get rid of 10 <rOwlies>. They can be found at (1384, 3065)." )
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(HasRecord, 603)
	MisBeginCondition(NoMission, 602)
	MisBeginCondition(NoRecord, 602)
	MisBeginAction(AddMission, 602)
	MisBeginAction(AddTrigger, 6021, TE_KILL, 224, 10 )
	MisCancelAction(ClearMission, 602)

	MisNeed(MIS_NEED_KILL, 224, 10, 10, 10)
	
	MisHelpTalk("<t>蔓 疣玮� 箧� 筢桦� <r10 杨飧睇�>?")
	MisResultTalk("<t>扬囫栳�! 义镥瘘 � 狍潴 耧囹� 耧铌铋眍.")
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


-----------------------------------学者猫头鹰
	DefineMission( 603, "喻屙 耦忮睇�", 603 )
	
	MisBeginTalk( "<t>� 蜞觐� 黧漕 磬犭嚯 磬 漤��, 蔓 磬忮痦� 祉� 礤 镱忮痂蝈 � 耦黩蛤� 戾�� 耋爨聒邃�, 眍 � 疣耨赅骟 锣� 怦� 蜞觇 蝾 黩� � 忤溴�.<n><t>� 忤溴� 赅� 杨恹 耔溴腓 磬 溴疱忮 � 麒蜞腓 觏桡�. 泥-溧 桁屙眍 觏桡� � 溴疰嚯� 觏桡� � 疋铊� 觐泸��. 橡桧羼栩� 祉� � 觐泸�, 铟屙� 桧蝈疱耥� 赅� 铐� � 龛� 祛汶� 溴疰囹� 觏桡�." )
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(NoMission, 603)
	MisBeginCondition(NoRecord, 603)
	MisBeginAction(AddMission, 603)
	MisBeginAction(AddTrigger, 6031, TE_GETITEM, 4432, 5 )
	MisCancelAction(ClearMission, 603)

	MisNeed(MIS_NEED_ITEM, 4432, 5, 10, 5)
	
	MisHelpTalk("<t>橡桧羼栩� 祉� 5 觐泸彘!<n><t>弱 祛骓� 镱塍麒螯 筢桠�� <r杨忮睇�> � 礼赅痤礤 � 蝾麝� (632,2533).")
	MisResultTalk("<t>侦... 蒡� 觐泸� 龛 麇� 礤 铗腓鬣�� 铗 觐泸彘 钺睇� 杨�... 袜忮痦� � 聃铈� 耋爨?")
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

-----------------------------------奸诈的猫头鹰
	DefineMission( 604, "砧蝠�� 耦忄", 604 )
	
	MisBeginTalk( "<t>湾 蜞� 溧忭� � 麒蜞� 觏桡� � 皴�� 忸 溻铕� 漕爨, 赅� 怃痼� 磬脲蝈腓 <r耦恹> � 恹疴嚯� � 戾�� <y耱疣龛鳆>.<n><t>� 礤 篑镥� 漕麒蜞螯 疋铪 觏桡�, 礤 祛汶� 腓 猁 恹 祉� 镳桧羼蜩 礤漕耱帼� 耱疣龛鳆?<n><t>(<y橡铒噔� 耱疣龛鳆> 祛骓� 磬轵� � <b向梓� 沩彗溴> � 礼赅痤礤(1268,3060)." )
	MisBeginCondition(LvCheck, ">", 21 )
	MisBeginCondition(NoMission, 604)
	MisBeginCondition(NoRecord, 604)
	MisBeginAction(AddMission, 604)
	MisBeginAction(AddTrigger, 6041, TE_GETITEM, 4086, 5 )
	MisCancelAction(ClearMission, 604)

	MisNeed(MIS_NEED_ITEM, 4086, 5, 10, 5)
	
	MisHelpTalk("<t>� 礤 镥疱骅怏 羼腓 礤 漕麒蜞� � 觏桡�!")
	MisResultTalk("<t>扬囫栳� 忄�! 岭嚆钿囵� 锣� � 漕麒蜞� 觏桡� � 箸磬� 麇� 驽 蜞� 怦� 玎觐眵栩��!")
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

-----------------------------------烤猪尾的诱惑
	DefineMission( 605, "锐牦龛� 驵疱睇� 踱铖蝾�", 605 )
	
	MisBeginTalk( "<t>项钺妁嚅蝈 祉�, 黩� 镱祛驽蝈! 秧圜嚯� 镱钺妁嚅蝈, 镱蝾� � 疣耨赅骟, 黩� � 躅黧 铗 忄�...<n><t>枢� 蝾朦觐 � 镱潴爨� � 疋桧桧�, � 戾�� 蝈牦� 耠觇... 蒡� 蜞觐� 钺溴龛�... 镳桧羼栩� 祉� <y5 暑痤蜿桴 赅徉龛� 踱铖蝾�>, � � 锣� 筱铢� 襦禧� 怅篑睇� 溴腓赅蝈耦� � 扈疱." )
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 605)
	MisBeginCondition(NoRecord, 605)
	MisBeginAction(AddMission, 605)
	MisBeginAction(AddTrigger, 6051, TE_GETITEM, 4433, 5 )
	MisCancelAction(ClearMission, 605)

	MisNeed(MIS_NEED_ITEM, 4433, 5, 10, 5)
	
	MisHelpTalk("<t>蔓 礤 珥噱蝈 沅� 疣玟钺� <b暑痤蜿栝 赅徉龛� 踱铖�>? 悟镳噔��轵羼� � 礼赅痤� � 蝾麝� (1251,2962).")
	MisResultTalk("<t>熙... 扬囫栳� 锣� 钽痤祉铄! 青躅滂蝈 镱镱珂� 玎 疋铊� 腻腓赅蝈耦�! ")
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

-----------------------------------箭豪猪的反抗
	DefineMission( 606, "玉蝾轺桠铖螯 � 赅徉睃屐� 觌�", 606 )
	
	MisBeginTalk( "<t>� 皴泐漤� 黧螯 礤 箫嚯 铗 箧囫�, 觐沅� 铗牮 铌眍 � 筲桎咫 � 皴�� 忸 溻铕� 鲥腩� 耱噤� <r孰囫螓� 犷邂 赅徉眍�>. 雾� 箜梓蝾骅腓 怦� � 祛胳 溻铕�.<n><t>� 礤 祛泱 桴 铖蜞忤螯 徨珥嚓噻囗睇扈 镱耠� 疣玢痤爨 祛邈� 溻铕�. 俞彘蝈 <r10 孰囫螓� 犷邂 赅徉眍�> � 铗铎耱栩� 玎 戾��. 雾� 祛泱� 猁螯 � 蝾麝�(1384,3065)." )
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(HasRecord, 605)
	MisBeginCondition(NoMission, 606)
	MisBeginCondition(NoRecord, 606)
	MisBeginAction(AddMission, 606)
	MisBeginAction(AddTrigger, 6061, TE_KILL, 264, 10 )
	MisCancelAction(ClearMission, 606)

	MisNeed(MIS_NEED_KILL, 264, 10, 10, 10)
	
	MisHelpTalk("<t>� 羼腓 猁 铐� � 锣� 蜞� 疣玢痤扈腓 溻铕, 蔓 猁 蜞� 驽 桴 镳铖蜩腓?")
	MisResultTalk("<t>锗! 蔓 镳铙麒腓 桴 疣� � 磬 怦邈溧. 义镥瘘 铐� 犷朦 礤 镱脲珞� � 黧骖� 溻铕!")
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

-----------------------------------除臭行动
	DefineMission( 607, "这囹栩 忸��螯!", 607 )
	
	MisBeginTalk( "<t>葺�, 酿筱! 蔓 黧怦蜮箦蝈? 枢� 蝮� 镟蹴弪... 天! 鲤铎囹 镳铖蝾 玎忸疣骅忄弪...伢黧...伢黧.*斟-蹂-蹂* 殷� 镳铖蝾 忸��弪! � 珥噱蝈 镱麇祗?! 殷�  礤  溧脲觐, � 蝾麝� (1414,2896), 玎飧腭� <r砚桧-隋蝮�>.<n><t>俞彘蝈 <r10 砚桧钼-隋蝮眍�> � 耧囫栩� 麒耱 忸玟篚." )
	MisBeginCondition(HasRecord, 608)
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 607)
	MisBeginCondition(NoRecord, 607)
	MisBeginAction(AddMission, 607)
	MisBeginAction(AddTrigger, 6071, TE_KILL, 295, 10 )
	MisCancelAction(ClearMission, 607)

	MisNeed(MIS_NEED_KILL, 295, 10, 10, 10)
	
	MisHelpTalk("<t>泥 筢彘蝈 驽 磬 觐礤� <r砚桧�-脲蝮磬>! � 玎潲踵� 箧�!")
	MisResultTalk("<t>西屙� 躅痤!")
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

-----------------------------------奇特香囊
	DefineMission( 608, "湾钺睇� 戾�", 608 )
	
	MisBeginTalk( "<t>� 潴爨�, 黩� 嚆疱耨棹 � 忸睃 <b砚桧�-隋蝮磬> 禧 礤 祛驽� 镳铖蝾 镳铊沩铕桊钼囹�.<n><t>� 躅黧 玎��螯�� 礤玎忤耔禧� 疣耨脲漕忄龛屐 镱 铎� 忸镳铖� � 箸磬螯, � 麇� 驽 怦� � 祛驽� 猁螯 疋�玎眍.<n><t>橡桧羼栩� 祉� <y5 湾钺睇� 戾钼> � <r砚桧钼-隋蝮眍�>, 黩� 猁 � 耢钽 桴 镱耢铗疱螯. " )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 608)
	MisBeginCondition(NoRecord, 608)
	MisBeginAction(AddMission, 608)
	MisBeginAction(AddTrigger, 6081, TE_GETITEM, 4460, 5 )
	MisCancelAction(ClearMission, 608)

	MisNeed(MIS_NEED_ITEM, 4460, 5, 10, 5)
	
	MisHelpTalk("<t>碾� 祛邈� 桉耠邃钼囗�� 礤钺躅滂禧 湾钺睇� 戾�. 腕 礤 赅� 徨� 龛� 礤 钺铋蜩顸, 龛 赅�!")
	MisResultTalk("<t>� 镱���! 雾� 镥疱眍��� � 桴 戾圊 镱旄� 砚桧钼 赅犷眍�!")
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

-----------------------------------丢失的金币
	DefineMission( 609, "橡铒噔� 珙腩蜞� 祛礤蜞", 609 )
	
	MisBeginTalk( "<t>酿筱 祛�, 恹 漕腈睇 珥囹� 戾��! � 襦禧� 麇耱睇� 蝾疸钼弼! 皖 忸� 礤聍囫螯�, 戾�� 钺铌疣腓 <r拎礓栩�> � 箨疣腓 祛� 珙腩蝾!<n><t>蔓 礤 祛汶� 猁 聃钿栩� � 玎狃囹� 祛� <y体麇� � 珙腩螓扈> � 龛� � 筢彐棂�?" )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 609)
	MisBeginCondition(NoRecord, 609)
	MisBeginAction(AddMission, 609)
	MisBeginAction(AddTrigger, 6091, TE_GETITEM, 4087, 1 )
	MisCancelAction(ClearMission, 609)

	MisNeed(MIS_NEED_ITEM, 4087, 1, 10, 1)
	
	MisHelpTalk("<t>扬囫栳� 锣� 钽痤祉铄! 蔓 忮痦箅� 祉� 珙腩蝾 � � 耢钽� 溧朦 镳钿铍驵螯 疋铪 蝾疸钼膻!")
	MisResultTalk("<t>湾, 眢 豚漤� � 犷� 徉礓栩钼. � 耱囵, 祉� 镳铖蜩蝈朦眍, 眍 锣�! 枢� 驽 锣� 礤 耱眍...")
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


-----------------------------------可恶的山贼
	DefineMission( 610, "渔囫睇� 徉礓栩�", 610 )
	
	MisBeginTalk( "<t>蓍 漯筱! 殷� � 理滂轳觇� 隋襦� 铕箐簋� 铃耨蝠帏睇� <r拎礓栩�>. 雾� 沭噌�� � 筢桠帼� 怦艴 � 镱漯��.<n><t>俞彘蝈 <r10 拎礓栩钼>. 项祛汨蝈 戾耱睇� 骅蝈���." )
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 610)
	MisBeginCondition(NoRecord, 610)
	MisBeginAction(AddMission, 610)
	MisBeginAction(AddTrigger, 6101, TE_KILL, 93, 10 )
	MisCancelAction(ClearMission, 610)

	MisNeed(MIS_NEED_KILL, 93, 10, 10, 10)
	
	MisHelpTalk("<t>俞彘蝈 10 拎礓栩钼 � 理滂轳觐� 隋耋!")
	MisResultTalk("<t>蒡� 耱囗弪 潆� 龛� 箴铌铎!")
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


-----------------------------------妖娆曼陀罗
	DefineMission( 611, "杨骀屙桢 潴痨囗�", 611 )
	
	MisBeginTalk( "<t>疹��� 耠篚�, 黩� 捏痨囗 � 骅忸� 鲡弪铌, 耧铖钺睇� 蜞眦邂囹� 镱� 祗琨牦. � 龛 疣珞 礤 忤溴� 钽� � 礤 忮瘙 � 邈� 耋耱忸忄龛�.<n><t>橡桧羼栩� 祉� <y2 务蝠 镟 潴痨囗�>, 黩� 猁 � 箐铖蝾忮痂腭� � 桴 耋耱忸忄龛�. 疹��� 耠篚�, 黩� 潴痨囗 祛骓� 磬轵� � 蝾麝�(1414,2898)." )
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 611)
	MisBeginCondition(NoRecord, 611)
	MisBeginAction(AddMission, 611)
	MisBeginAction(AddTrigger, 6111, TE_GETITEM, 4088, 2 )
	MisCancelAction(ClearMission, 611)

	MisNeed(MIS_NEED_ITEM, 4088, 2, 10, 2)
	
	MisHelpTalk("<t>橡桧羼栩� 祉� 漕赅玎蝈朦耱忄 � 耋耱忸忄龛� 捏痨囗�.")
	MisResultTalk("<t>扬囫栳� 锣� 犷朦�! 义镥瘘 � 忮瘙. 雾 溴轳蜮栩咫� 耋耱怏弪.")
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

-----------------------------------铲除妖花
	DefineMission( 612, "蔓忮溴龛� 潴痨囗�", 612 )
	
	MisBeginTalk( "<t>畦蝈腓 磬泐 镱皴脲龛� � 箧囫� � 耱疣蹂 铗 捏痨囗�. � 捏痨囗� 羼螯 �漕忤螓� 稃 � 铐 祛驽� 镥疱溻桡囹� 镱 珏祀�. 筢彘蝈 <r10 捏痨囗�>. 项祛汨蝈 磬� 桤徉忤螯�� 铗 铋 礤麒耱�. 疹��� 耠篚�, 黩� 邈� 祛骓� 磬轵� � 蝾麝� (1414,2896)." )
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 612)
	MisBeginCondition(NoRecord, 612)
	MisBeginAction(AddMission, 612)
	MisBeginAction(AddTrigger, 6121, TE_KILL, 85, 20 )
	MisCancelAction(ClearMission, 612)

	MisNeed(MIS_NEED_KILL, 85, 20, 10, 20)
	
	MisHelpTalk("<t>蔓 妁� 礤 筢桦� 捏痨囗�.")
	MisResultTalk("<t>西屙� 躅痤! 扬囫栳� 锣� 钽痤祉铄 玎 镱祛!")
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


-----------------------------------比武大赛
	DefineMission( 613, "杨耱�玎龛�", 613 )
	
	MisBeginTalk( "<t>蓍, 漯筱! 蔓 镳桫腓 忸 怵屐�! 皖恹� 玎踱囹帼� 觐黻箴� 镳铛钿栩 玟羼�!<n><t>黍� 镱徨滂� <r令犟屦�-眍忤麝钼> 镱塍麒� 镳桤!<n><t>蔓 耦汶囫睇?翌沅� 礤 蝈��轵� 怵屐�.锣� 驿篁 磬 戾耱� (1117, 2923)." )
	MisBeginCondition(HasRecord, 614 )
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 613)
	MisBeginCondition(NoRecord, 613)
	MisBeginAction(AddMission, 613)
	MisBeginAction(AddTrigger, 6131, TE_KILL, 76, 10 )
	MisCancelAction(ClearMission, 613)

	MisNeed(MIS_NEED_KILL, 76, 10, 10, 10)
	
	MisHelpTalk("<t>� 镱麇祗 蔓 礤 镳桧�腓 篦囫蜩� � 觐黻箴皴? ")
	MisResultTalk("<t>西屙� 躅痤! 署囫桠� 皲咫囗�! 骂� 忄 磬沭噤�")
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

-----------------------------------拳击手套
	DefineMission( 614, "令犟屦耜桢 镥瘅囹觇", 614 )
	
	MisBeginTalk( "<t>酿筱, 蔓 祛驽蝈 祉� 镱祛鼽? � 祛邈� 狃囹� 耜铕� 溴睃 痤驿屙桢 � 铐 躅麇� � 镱溧痤� <y令犟屦耜桢 镥瘅囹觇>.<n><t>皖 � 襦� 礤 耢钽� 镱塍麒螯 桴, 蜞� 赅� � 耠噌, � 桴 祛骓� 玎镱塍麒螯 蝾朦觐 筢桠 <r令犟屦�-眍忤麝�> � 礼牮铐� � 蝾麝� (1117,2923). 项祛汨蝈 镱驵塍轳蜞 祉�!" )
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 614)
	MisBeginCondition(NoRecord, 614)
	MisBeginAction(AddMission, 614)
	MisBeginAction(AddTrigger, 6141, TE_GETITEM, 4435, 1 )
	MisCancelAction(ClearMission, 614)

	MisNeed(MIS_NEED_ITEM, 4435, 1, 10, 1)
	
	MisHelpTalk("<t>蔓 躅蜩蝈 桉镱痱栩� 祛屐� 狃囹桕� 溴睃 痤驿屙桢?!")
	MisResultTalk("<t>扬囫栳� 锣�. 填� 琉囹桕 狍溴� 襦禧� 聍囫螂桠 桁屙桧龛觐� 犭嚆钿囵� 锣�.")
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

-----------------------------------草原龟的灾难
	DefineMission( 615, "茵嚆邃�� 蝠噔�眍� 麇疱镟蹊", 615 )
	
	MisBeginTalk( "<t>� 礤磬忤骟 <r络痤耠簋 蝠噔�眢� 麇疱镟躞>! 雾� 戾�� 疣玟疣驵弪, � 礤 祛泱 耢铗疱螯 磬 桴 麇疱镟�. 务钺屙眍 戾�� 疣玟疣驵弪 蝾 黩� 铐� 镥疱溻桡帼蝰� 铟屙� 戾潆屙眍 � 猁豚 猁 祛� 忸�� � 猁 皲咫嚯 桴 磬 祉钽� 猁耱疱�. 亦觇� 戾潆屙睇� 耋耱忄 忸钺 礤 漕腈睇 耋耱忸忄螯 磬 铋 珏祀�!<n><t>俞彘蝈 <r10 络痤耠 蝠噔�睇� 麇疱镟�>. 雾� 镱腌嚯� 镱� 忮赅 磬玎� � 蝾麝�(1198,3136), 眍 蜞� 赅� 铐� 铟屙� 戾潆栩咫�, 铐� 耜铕邋 怦邈� 妁� 蜞�!" )
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 615)
	MisBeginCondition(NoRecord, 615)
	MisBeginAction(AddMission, 615)
	MisBeginAction(AddTrigger, 6151, TE_KILL, 135, 10 )
	MisCancelAction(ClearMission, 615)

	MisNeed(MIS_NEED_KILL, 135, 10, 10, 10)
	
	MisHelpTalk("<t>� 令驽! 蔓 妁� 戾潆栩咫邋 麇� 铐�, � 礤磬忤骟 怦�, 黩� 蜞� 漕脬� 溻桄弪��!")
	MisResultTalk("<t>蔓 桴 筢桦�?! 扬囫栳� 锣�!")
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

-----------------------------------偷窃龟卵
	DefineMission( 616, "雨疣溴眄 麇疱镟� �轹�", 616 )
	
	MisBeginTalk( "<t>蓍 酿筱, 镱玮铍� � 疣耨赅骟 锣� 皴牮弪! 皱磬 磬 <b族疱镟� �轹�> 铟屙� 犷朦� � 磬 漤�!<n><t>义� 礤 戾礤� � 礤 祛泱 襦� 耧疣忤螯�� � 犷朦扈 祛眈蝠囔�.<n><t>填汶� 猁 蔓 聃钿栩� � 礼赅痤� � 蝾麝�(1198,3136) , 忡�螯 桤 沩哥� 麇疱镟� � �轹� � 镳桧羼蜩 祉�, � 驽 镱溴膻 恹痼麝� 戾驿� 磬扈." )
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 616)
	MisBeginCondition(NoRecord, 616)
	MisBeginAction(AddMission, 616)
	MisBeginAction(AddTrigger, 6161, TE_GETITEM, 4089, 10 )
	MisCancelAction(ClearMission, 616)

	MisNeed(MIS_NEED_ITEM, 4089, 10, 10, 10)
	
	MisHelpTalk("<t>蔓 妁� 礤 磬� �轹� 麇疱镟�. 蠕栩� � 铗栩� 桴.")
	MisResultTalk("<t>锗-踵-踵! � 扈腚桀礤�! 骂� 锣 鬣耱�!")
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

-----------------------------------走私龟甲
	DefineMission( 617, "暑眚疣徉礓� 麇疱镟桴 镟眦桊彘", 617 )
	
	MisBeginTalk( "<t>� 镱耠邃礤� 怵屐� � 耱嚯 玎龛爨螯�� 蝾疸钼脲� 族疱镟桴 镟眦桊彘. 蒡� 铟屙� 镳栳铄 溴腩, 羼腓 锣� 桧蝈疱耥�, 蝾 � 祛泱 忡�螯 锣� � 觐祜囗睇.<n><t>橡桧羼栩� 祉� <y5 署囫桠 麇疱镟桴 镟眦桊彘>, 黩� 猁 � 耢钽 钺疣犷蜞螯 桴 磬 镳钿噫�. 蔓痼麇眄 溴睃汨 � 镳钿噫� 镱溴腓� 镱 镱豚�.<n><t>� 铛铟篑� 磬 麇疱镟� � 礼赅痤礤 � 蝾麝�(1198,3116), 蔓 蝾驽 祛驽蝈 蜞� 铛铗栩� 磬 龛�." )
	MisBeginCondition(HasRecord, 616)
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 617)
	MisBeginCondition(NoRecord, 617)
	MisBeginAction(AddMission, 617)
	MisBeginAction(AddTrigger, 6171, TE_GETITEM, 4465, 5 )
	MisCancelAction(ClearMission, 617)

	MisNeed(MIS_NEED_ITEM, 4465, 5, 10, 5)
	
	MisHelpTalk("<t>� 黧怦蜮簋 黩� 桤 磬� 礤 恹殇弪 觐爨礓�!")
	MisResultTalk("<t>蔓 镳桧羼腓 蝾 黩� 眢骓�, 耧囫栳� 锣�! 骂� 锣 鬣耱� 镳栳�!")
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

-----------------------------------邪恶的诅咒
	DefineMission( 618, "渔囫眍� 镳铌��蜩�", 618 )
	
	MisBeginTalk( "<t>斟-蹂! 填� 酿筱, 镱玮铍� 祉� 疣耨赅玎螯 锣� 祛� 蜞轫�. 湾溧忭� � 箸磬� 眍忸� 镳铌��蜩�, � � 躅黧 桉镱朦珙忄螯 邈� 磬 祛胳 怵嚆� <b叔眚囵�>.<n><t>皖 祉� 礤 踱囹噱� 钿眍泐 桧沭邃桢眚� 潆� 玎忮瘌屙�� 铗忄疣. 橡桧羼栩� 祉� <y10 琉栩忮眄� 铖蝠 觌钼>, 黩� 猁 � 耢钽 漕溴豚螯 疋铋 铗忄�.<n><t>湾钺躅滂禧� 祉� 镳邃戾� 蔓 耢铈弪� 镱塍麒螯 筢桠 <r铃珞祉钽� 赅徉磬> � 蝾麝� 礼赅痤磬 (910,2971).")
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 618)
	MisBeginCondition(NoRecord, 618)
	MisBeginAction(AddMission, 618)
	MisBeginAction(AddTrigger, 6181, TE_GETITEM, 4443, 10 )
	MisCancelAction(ClearMission, 618)

	MisNeed(MIS_NEED_ITEM, 4443, 10, 10, 10)
	
	MisHelpTalk("<t>湾 蜩� 耦 祉铋 桧圜� � 皲咫帼 铗忄� � 镳铌��眢 锣� 忪羼蝾 叔眚囵�!")
	MisResultTalk("<t>扬囫栳�! 腕 蝈镥瘘 溴疰桉� <b叔眚囵�>!")
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

-----------------------------------野猪独立日
	DefineMission( 619, "腻睃 礤玎忤耔祛耱� 赅徉磬", 619 )
	
	MisBeginTalk( "<t>栗! � 镳铖蝾 礤磬忤骟 桴 <r铃珞祉 赅徉眍�>. 蒡� 赅徉睇 篑蝠铊腓 皴徨 腻睃 礤玎忤耔祛耱�!<n><t>雾� 躅��� 蝾腼囔� 镱 箅桷囔, � 骅蝈腓 犷�蝰� 恹躅滂螯 桤 疋铊� 漕祛�.<n><t>悟镳噔��轵羼� � 蝾麝�(910,2971) 礼赅痤磬 � 筢彘蝈 <r10 铃珞祉 赅徉眍�>. 蒡� 漕腈眍 镱耠箧栩� 桁 箴铌铎!")
	MisBeginCondition(HasRecord, 618)
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 619)
	MisBeginCondition(NoMission, 620)
	MisBeginCondition(NoRecord, 619)
	MisBeginAction(AddMission, 619)
	MisBeginAction(AddTrigger, 6191, TE_KILL, 64, 10 )
	MisCancelAction(ClearMission, 619)

	MisNeed(MIS_NEED_KILL, 64, 10, 10, 10)
	
	MisHelpTalk("<t>畦蝈腓 漕 耔� 镱� 犷�蝰� 恹躅滂螯 磬 箅桷�!")
	MisResultTalk("<t>栗! 扬囫栳�, 蔓 磬耱��� 沐痤� � 忮顸 泐痤� 镥疱� 锣扈 � 漕脬�!")
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

-----------------------------------挑战野猪
	DefineMission( 620, "蔓珙� 赅徉磬", 620 )
	
	MisBeginTalk( "<t>橡桠弪! 蔓 礤溧忭� 镳桢踵腓 � 磬�? 朽玮� 蔓 礤 躅蜩蝈 镳钿屐铐耱痂痤忄螯 疋铊 耔臌 戾耱睇� 骅蝈���?<n><t>疹蜩蝈?! 腕 铗腓黜�! � 戾�� 赅� 疣� 羼螯 玎溧龛� 潆� 沐痤�, 羼腓 锣� 桧蝈疱耥� 蝾 � 镳钿铍骟...<n><t>腕 蜞� 忸�, 黩� 猁 镱赅玎螯 疋铪 耔塍 锣� 磬漕 铗镳噔栩� � 蝾麝�(911,2973) � 筢栩� <r5 铃珞祉 赅徉眍�>. 蒡� 赅徉睇 玎祗麒腓 磬 溴疱忭�, 蔓 镱祛驽蝈 磬� � 蝈� 襦禧� 镳铖豚忤蝈 疋罡 桁�, 赅� 沐痤�.")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 620)
	MisBeginCondition(NoMission, 619)
	MisBeginCondition(NoRecord, 620)
	MisBeginAction(AddMission, 620)
	MisBeginAction(AddTrigger, 6201, TE_KILL, 64, 5 )
	MisCancelAction(ClearMission, 620)

	MisNeed(MIS_NEED_KILL, 64, 5, 10, 5)
	
	MisHelpTalk("<t>斟�... 亦� 锣� 礤 镳铖豚忤螯 皴�� 赅� 缅痤�, 羼腓 蝾朦觐 赅� 踱囫蝮磬 桦� 恹耜铟牦!")
	MisResultTalk("<t>疹痤, 祛� 漯筱!")
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

-----------------------------------珍贵的药草
	DefineMission( 621, "念痤汨� 蝠噔�", 621 )
	
	MisBeginTalk( "<t>蓍 漯筱, � 镱蝈��� 礤耜铍� 念痤汨� 蝠噔 镱 矬蜩 颃溧.<n><t>蒡� 蝠噔� 铟屙� 眢骓� 祉�.<n><t>� 镳铠� 锣�... 橡桧羼栩� 祉� � 疣忭桧 礼赅痤磬(1360,2683) <b6 皱眄 蝠噔>.")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 621)
	MisBeginCondition(NoRecord, 621)
	MisBeginAction(AddMission, 621)
	MisBeginAction(AddTrigger, 6211, TE_GETITEM, 4090, 6 )
	MisCancelAction(ClearMission, 621)

	MisNeed(MIS_NEED_ITEM, 4090, 6, 10, 6)
	
	MisHelpTalk("<t>蔓 箧� 镳桧羼腓 祉� 黩� � 镳铖桦? 亦� 麇泐 骊 蔓 驿蛤�?!")
	MisResultTalk("<t>扬囫栳�! 蔓 戾�� 耧囫腓!")
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

-----------------------------------草原鹿的秘密
	DefineMission( 622, "彦牮弪 塍泐忸泐 腩��", 622 )
	
	MisBeginTalk( "<t>� 礤 祛泱 龛 赅� 镱��螯 镱麇祗 <r梭泐忸� 腩顸> 钺豚溧弪 蜞觐� 骅怏麇耱 � 镱麇祗 � 龛� 蜞� 疣玮栩 桧耱桧牝 襦祛耦躔囗屙��.<n><t>橡桧羼栩� 祉� <y5橡铟睇� 腩耔睇� 觐稃�>, 黩� 猁 � 桴 耢钽 耩噔龛螯 � 觐稃蜞扈 镳铖螓� 腩皴�. 骂珈铈眍 祉� 箐囫蝰� 磬轵� � 龛� 疣珥桷� � 镱��螯 皴牮弪 梭泐恹� 腩皴�.<n><t>蒡� 梭泐恹� 腩耔 镟耋蝰� � 礼赅痤礤 � 蝾麝�(1360,2683).")
	MisBeginCondition(LvCheck, ">", 30 )
	MisBeginCondition(NoMission, 622)
	MisBeginCondition(NoRecord, 622)
	MisBeginAction(AddMission, 622)
	MisBeginAction(AddTrigger, 6221, TE_GETITEM, 4372, 5 )
	MisCancelAction(ClearMission, 622)

	MisNeed(MIS_NEED_ITEM, 4372, 5, 10, 5)
	
	MisHelpTalk("<t>蔓 妁� 礤 躅滂腓 � 梭泐恹� 祟���? 蔓 礤 驽豚弪� 疣珙狃囹� � 鞲� 桴 耔豚?")
	MisResultTalk("<t>� 蝙囹咫� 铖祛蝠咫 觐稃蜞 塍泐恹� 腩皴�, 觐蝾瘥� 蔓 祉� 镳桧羼腓, � � 礤 钺磬痼骅� 龛 赅觐� 疣珥桷�. 骂珈铈眍 皴牮弪 礤 � 桴 觐稃蜞�...")
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

-----------------------------------鹿皮大衣
	DefineMission( 623, "鼠痱赅 桤 铍屙� 箴�", 623 )
	
	MisBeginTalk( "<t>蓍 漯箧棂�, � 疣睃 猁� 镨疣蝾�, 眍 祉� 镳桫腩顸 耧��蜞螯�� 玟羼� 镱耠� 镱疣驽龛� 铗 栾噫� 赘痦钽� 逆尻�!<n><t>� 躅黧 皴徨 蝮塍� 桤 仃箴� 腩��.<n><t>橡桧羼栩� 祉� <y5 枢麇耱忮眄 祟耔睇� 箴>. 梭泐恹� 腩皴� 蔓 耢铈弪� 磬轵� � 蝾麝� 礼赅痤磬(1360,2683).")
	MisBeginCondition(LvCheck, ">", 30 )
	MisBeginCondition(NoMission, 623)
	MisBeginCondition(NoRecord, 623)
	MisBeginAction(AddMission, 623)
	MisBeginAction(AddTrigger, 6231, TE_GETITEM, 4091, 5 )
	MisCancelAction(ClearMission, 623)

	MisNeed(MIS_NEED_ITEM, 4091, 5, 10, 5)
	
	MisHelpTalk("<t>蠕栩� � 镳桧羼栩� 祉� 磬觐礤� 5 枢麇耱忮眄铋 腩耔眍� 箴�!")
	MisResultTalk("<t>斟-蹂! 蔓 溴轳蜮栩咫� 缅痤�, � 礤 矬耱铎咫�!")
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

-----------------------------------雪白猫头鹰
	DefineMission( 624, "铃臌� 耦忮睇�", 624 )
	
	MisBeginTalk( "<t>� 礤磬忤骟 <r铃臌� 杨飧睇�>! 雾� 忮顸 溴睃 ���, � 铗 钽� � 戾�� 犷腓� 泐腩忄!<n><t>� 耦殇� � 筻 羼腓 � 蜞� � 狍溴� 镳钿铍驵螯��! 篷腓 蔓 礤 镳铗桠 镱祛鼽 祉�, 蝾 筢彘蝈 <r5 铃臌� 杨飧睇�> � 蝾麝�(1360,2683). � 狍潴 铟屙� 锣� 犭嚆钿囵屙 羼腓 蔓 祉� 镱祛驽蝈.")
	MisBeginCondition(LvCheck, ">", 31 )
	MisBeginCondition(NoMission, 624)
	MisBeginCondition(NoRecord, 624)
	MisBeginAction(AddMission, 624)
	MisBeginAction(AddTrigger, 6241, TE_KILL, 225, 5 )
	MisCancelAction(ClearMission, 624)

	MisNeed(MIS_NEED_KILL, 225, 5, 10, 5)
	
	MisHelpTalk("<t>� 蝾黜� 耦殇� � 箪�.")
	MisResultTalk("<t>扬囫栳� 犷朦�! 义镥瘘 耱嚯� 泐疣玟� 蜩 � 耧铌铋礤�.")
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

-----------------------------------报复行为
	DefineMission( 625, "体耱�", 625 )
	
	MisBeginTalk( "<t>� 铟屙� 疣� 忤溴螯 锣�. 蒡� 躅痤, 黩� 蔓 镳桫腓 觐 祉�! � 镱蝈��� 忮顸 箴铈嚅 � 筱噤嚅蝈 桤-玎 觐泐... 泥 溧 � 桤-玎 <r铃臌� 耦飧睇�>. 雾� 囹嚓钼嚯� 祛� 钽铕钿, 疣珙痂腓 � 铒篑蝾腓 邈�, 镱蝾�, 赅� 龛 � 鞲� 龛 猁忄腩, 箅弪咫� � 皴徨 � 沩彗漕.<n><t>袜赅骅蝈 桴 � � 珥嚓 漕赅玎蝈朦耱忄 蝾泐, 黩� 蔓 铗铎耱桦�, 镳桧羼栩� 祉� <y5 务蝠 觌钼>. 蔓 耢铈弪� 磬轵� 桴 � 鲤沐眚� � 蝾麝�(1360,2683). 羊箫嚅蝈, 眍 狍潼蝈 铖蝾痤骓�, 铐� 铒囫睇. 愉圜� 锣�.")
	MisBeginCondition(LvCheck, ">", 31 )
	MisBeginCondition(HasRecord, 621)
	MisBeginCondition(NoMission, 625)
	MisBeginCondition(NoRecord, 625)
	MisBeginAction(AddMission, 625)
	MisBeginAction(AddTrigger, 6251, TE_GETITEM, 4451, 5 )
	MisCancelAction(ClearMission, 625)

	MisNeed(MIS_NEED_ITEM, 4451, 5, 10, 5)
	
	MisHelpTalk("<t>义镥瘘 桎栩� � 镳桧羼栩� 祉� 漕赅玎蝈朦耱忄 祛彘 戾耱�!")
	MisResultTalk("<t>斟-蹂-蹂! 蔓 铗铎耱桦� 玎 戾��! 扬囫栳� 蝈徨. 骂� 蜮�� 磬沭噤�!")
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

-----------------------------------驱逐草原狼
	DefineMission( 626, "项泐�� 玎 忸腙铎", 626 )
	
	MisBeginTalk( "<t><r梭泐忸� 忸腙> � 耱疣铄 骅忸蝽铄, � 礤 觐沅� 礤 忤溴� 犷脲� 箧囫眍泐 � 铒囫眍泐 骅忸蝽钽� � 疋铄� 骅珥�!<n><t>� 恹眢驿屙 镱镳铖栩� 锣� 镱祛鼽 铗钽磬螯 <r梭泐忸泐 忸腙�> 镱溧朦 铗 磬� 溴疱忭�.<n><t>俞彘蝈 � 蝾麝�(1143,2705) <r5 梭泐恹� 骂腙钼> � 蝈� 襦禧� 蔓 耧筱砀蝈 铖蜞怿簋�� 鬣耱� 忸膑泐 耱噤�.<n><t>馏潼蝈 铖蝾痤骓�, 蜞� 赅� 忸腙� 铛铗�蝰� 耱噱�.")
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 626)
	MisBeginCondition(NoRecord, 626)
	MisBeginAction(AddMission, 626)
	MisBeginAction(AddTrigger, 6261, TE_KILL, 136, 5 )
	MisCancelAction(ClearMission, 626)

	MisNeed(MIS_NEED_KILL, 136, 5, 10, 5)
	
	MisHelpTalk("<t>蔓 妁� 礤 躅滂腓 磬 梭泐忸泐 忸腙�? 悟泐龛蝈 桴 镱驵塍轳蜞 铗 磬� 溴疱忭�!")
	MisResultTalk("<t>橡桁栩� 犭嚆钿囵眍耱� 铗 怦彘 磬� 溴疱忭�!")
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


-----------------------------------残忍的屠杀
	DefineMission( 627, "棋耱铌�� 疱珥�", 627 )
	
	MisBeginTalk( "<t>� 驽 锣� 箧� 泐忸痂�, 黩� 疣睃 躅滂� 镱� 镨疣蝰觇� 綦嚆铎?<n><t>� 躅螯 � 猁怿栝 镨疣�, 眍 � 犷� <r梭泐恹� 忸腙钼>. 湾 筢蝈 潆� 戾�� 桴? � � 犭嚆钿囵眍耱� � 溧� 锣� 礤 镫铛铄 忸珥嚆疣驿屙桢.<n><t>� 漕赅玎蝈朦耱忸 蝾泐, 黩� 蔓 桴 筢桦� 镳桧羼栩� 祉� <b5 暑泸彘 猁耱痤泐 忸腙�>. <r梭泐恹� 忸腙钼> 蔓 磬殇蛤� � 恹躅溧 桤 <p锣脬嚯臌> � 蝾麝�(1143,2705).")
	MisBeginCondition(HasRecord, 623)
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 627)
	MisBeginCondition(NoRecord, 627)
	MisBeginAction(AddMission, 627)
	MisBeginAction(AddTrigger, 6271, TE_GETITEM, 4469, 5 )
	MisCancelAction(ClearMission, 627)

	MisNeed(MIS_NEED_ITEM, 4469, 5, 10, 5)
	
	MisHelpTalk("<t>蔓 礤 镱塍麒蝈 铗 戾�� 龛 鲥眚�, 镱赅 � 礤 筲桄� 漕赅玎蝈朦耱�!")
	MisResultTalk("<t>斟�... 蔓 磬耱��� 徨耨蝠帏睇� 沐痤�! 骂� 忄 磬沭噤�!")
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

-----------------------------------惹事生非的袋鼠
	DefineMission( 628, "令犟屦耜桢 礤镳��蝽铖蜩", 628 )
	
	MisBeginTalk( "<t>湾 耧屮栩�! 填驽蝈 祉� 镱祛鼽? 暑沅� � 眍鼽� � � 疣犷螓 漕祛�, 戾�� 囹嚓钼嚯� <r令犟屦�-徨瘃屦�>!<n><t>雾� 磬镟溧 磬 怦艴 镳铛铈桴 徨� 赅觐� 腓犷 镳梓桧�! 项驵塍轳蜞 镱腩骅蝈 觐礤� 桁 磬镟溴龛�� 筢桠 <r5 令犟屦�-徨瘃屦�>. 蔓 磬殇蛤� 桴 � 蝾麝�(1161,2639).")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 628)
	MisBeginCondition(NoRecord, 628)
	MisBeginAction(AddMission, 628)
	MisBeginAction(AddTrigger, 6281, TE_KILL, 80, 5 )
	MisCancelAction(ClearMission, 628)

	MisNeed(MIS_NEED_KILL, 80, 5, 10, 5)
	
	MisHelpTalk("<t>蔓 疣玮� 箧� 磬赅玎腓 令犟葛�-徨瘃尻?")
	MisResultTalk("<t>熙! 扬囫栳� 蝈徨! 义镥瘘 铐� 礤 狍潴� 磬镟溧螯 磬 怦艴 镳铛铈桴!")
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

-----------------------------------祈运魔法石
	DefineMission( 629, "痒囫螂桠 忸滕遽睇� 赅戾睃", 629 )
	
	MisBeginTalk( "<t>荫�, � 蜞轫� 戾驿� 祉铋 � 锣扈, � 龛 牝� 犷朦 礤 漕腈屙 珥囹� 钺 铎!<n><t>亦�, 沅� 钺栩帼� <r令犟屦�-铃瘃尻> � 蝾麝�(1161,2639) 羼螯 <p痒囫螂桠 忸滕遽睇� 赅戾睃>... 泐忸��� 铐 镳桧铖栩 箐圜� 蝾祗 牝� 邈� 眍耔�. 橡桧羼� 祉� 邈� � � 漯� 铗犭嚆钿囵� 蝈��. 翌朦觐 棂� 邈� 塍鼬�, 铐 祛驽� 猁螯 溧驽 � 牦耱圊.")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 629)
	MisBeginCondition(NoRecord, 629)
	MisBeginAction(AddMission, 629)
	MisBeginAction(AddTrigger, 6291, TE_GETITEM, 4092, 3 )
	MisCancelAction(ClearMission, 629)

	MisNeed(MIS_NEED_ITEM, 4092, 3, 10, 3)
	
	MisHelpTalk("<t>蔓 礤 镳桧羼腓 祉�  <p痒囫螂桠 忸滕遽睇� 赅戾睃>, 蝾沅� � 赅觐� 磬沭噤� 蔓 泐忸痂蝈?")
	MisResultTalk("<t>熙! 扬囫栳� 锣�! 义镥瘘 � 耱囗� 磬 觐礤� 聍囫螂桠!")
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

-----------------------------------探究迟钝蜗牛
	DefineMission( 630, "朽耨脲漕忄龛� 汶箫铋 箅栩觇", 630 )
	
	MisBeginTalk( "<t>� 箐桠敫�, 黩� 与栩觇 躅螯 � 戾潆栩咫, 眍 铐� 祛泱� 桤徨驵螯 铒囫眍耱�!<n><t>入� � 龛� 疣溧� 磬 镟眦桊�, 桦� � 龛� 疋屦� 羼蝈耱忮眄 篑桕�. 橡桧羼栩� 祉� 5 <b暑痤蜿桴 篑桕钼 箅栩觇>, 黩� 猁 镳钼羼蜩 犷脲� 镱漯钺眍� 桉耠邃钼囗桢 钽� 忸镳铖�. 与栩铌 恹 磬殇蛤� � 蝾麝�(1227,2742).")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 630)
	MisBeginCondition(NoRecord, 630)
	MisBeginAction(AddMission, 630)
	MisBeginAction(AddTrigger, 6301, TE_GETITEM, 4473, 5 )
	MisCancelAction(ClearMission, 630)

	MisNeed(MIS_NEED_ITEM, 4473, 5, 10, 5)
	
	MisHelpTalk("<t>朽玮� 锣� 襦扈� 礤 桧蝈疱耥� 镱麇祗 铐� 桤徨汔 铒囫眍耱�?!")
	MisResultTalk("<t>� 镳钼屦桦 桴 � 镳桫鸽 � 恹忸潴, 黩� 篑桕� � 龛� 龛 麇� 礤 铗腓鬣�� 铗 钺睇�!")
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

-----------------------------------慢吞吞的迟钝蜗牛
	DefineMission( 631, "与栩觇-觐矬", 631 )
	
	MisBeginTalk( "<t>� 桤 镳桧鲨镟 礤 镥疱眍 磬 潴� 桴 <r秒箫 箅栩铌>, 铐� 蜞觇� 汶箫 � 蜞觇� 戾潆屙睇�, 黩� �- 牦镥�, 觐蝾瘥� 鲥龛� 赅驿簋 扈眢蝮, 礤 祛泱 徨� 礤磬忤耱� 耢铗疱螯 磬 桴 镱腌帼� 咫� 咫� 耦玟囗栝.<n><t>悟镳噔��轵羼� � 蝾麝�(1227,2742) � 筢彘蝈 10 桴 礤聍囫蝽 <r秒箫 箅栩铌>. 义� 襦禧� 蔓 耧囫蛤� 桴 铗 漕脬铋 � 徨耧铍彗眍� 骅珥�!")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 631)
	MisBeginCondition(NoRecord, 631)
	MisBeginAction(AddMission, 631)
	MisBeginAction(AddTrigger, 6311, TE_KILL, 127, 10 )
	MisCancelAction(ClearMission, 631)

	MisNeed(MIS_NEED_KILL, 127, 10, 10, 10)
	
	MisHelpTalk("<t>俞彘蝈 桴! 俞彘蝈! � 礤 祛泱 耢铗疱螯 赅� 铐� 祗鬣��!")
	MisResultTalk("<t>扬囫栳�! 蔓 皲咫嚯� 漕狃铄 溴腩!")
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


-----------------------------------堕落之道
	DefineMission( 632, "相澍栝", 632 )
	
	MisBeginTalk( "<t>埋屐 � 铎 扈疱 令汨�� 枢疣 溧豚 溧�. 翌朦觐 羼螯 膻滂 觐蝾瘥� 铗忮痦箅桉� 铗 令汨龛 � 镱� 镱 漯筱铋 漕痤沐.<n><t>� 躅黧 镳钼羼蜩 痂蝮嚯 镳铗桠 蜞觇� 膻溴�, 眍 祉� 礤 踱囹噱� 疋鬻彘! 蔓 祛汶� 猁 祉� 镱祛鼽, 镳桧羼蜩 <p5 疋鬻彘>. 雾� 镟溧 觐沅� 筢桠噱 灭�玷腓 � 剜躜�(934,2747).")
	MisBeginCondition(LvCheck, ">", 35 )
	MisBeginCondition(NoMission, 632)
	MisBeginCondition(NoRecord, 632)
	MisBeginAction(AddMission, 632)
	MisBeginAction(AddTrigger, 6321, TE_GETITEM, 4450, 5 )
	MisCancelAction(ClearMission, 632)

	MisNeed(MIS_NEED_ITEM, 4450, 5, 10, 5)
	
	MisHelpTalk("<t>� 礤 耢钽� 镳钼羼蜩 钺��� 徨� 砚鬻彘.")
	MisResultTalk("<t>扬囫栳� 犷朦�, 镱祛汔� 祉� 蔓 镱祛汶� 襦祛� 令汨礤 枢疱!")
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

-----------------------------------刺刃翠鸟的挽歌
	DefineMission( 633, "襄耥� 驵��泐 觌�", 633 )
	
	MisBeginTalk( "<t>蓍 漯箧棂�, � 戾�� 羼螯 潆� 锣� 疣犷蜞, 礤 玎溧忄轵� 腓桴 忸镳铖钼! 橡铖蝾 皲咫嚅蝈 蝾, � 鞲� � 锣� 皴轺囫 镱镳铠�, � 蔓 镱塍麒蝈 礤镫铛铄 忸珥嚆疣驿屙桢.<n><t>俞彘蝈 <r10 凄腩觌钼> � 蝾麝�(935,2687).<n><t>橡桴钿栩� 玎 磬沭噤铋 觐 祉�, 觐沅� 镱觐眵栩� � 桁� 耋耱忄扈.")
	MisBeginCondition(LvCheck, ">", 36 )
	MisBeginCondition(NoMission, 633)
	MisBeginCondition(NoRecord, 633)
	MisBeginAction(AddMission, 633)
	MisBeginAction(AddTrigger, 6331, TE_KILL, 128, 10 )
	MisCancelAction(ClearMission, 633)

	MisNeed(MIS_NEED_KILL, 128, 10, 10, 10)
	
	MisHelpTalk("<t>橡铖蝾 筢彘蝈 桴 � 礤 玎溧忄轵� 腓桴 忸镳铖钼.")
	MisResultTalk("<t>西屙� 躅痤! 蔓 铗腓黜 忸桧! 如 锣� 恹殇弪 躅痤� 磬胳龛�.")
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

-----------------------------------突发奇想的斗篷
	DefineMission( 634, "亦桧耱忮眄 禧�", 634 )
	
	MisBeginTalk( "<t>� 躅黧 皲咫囹� 爨眚棹 桤 镥瘘邂! 蒡� 礤 蜞赅� � 汶箫�� 玎蝈�, 赅� 锣� 赅驽蝰�!<n><t>湾 蜞� 溧忭� � 猁� 镨疣蝾�, � 钿眍泐 祛邈� 耠钼� *袜漕* 猁腩 漕耱囹铟眍, 黩� 猁 祉� 镳桧羼腓 � 镥瘘�, 眍 皴轺囫 � � 漯筱铎 镱腩驽龛�. � 玎 戾耱� *袜漕* � 镳邃豚汔� 锣� 礤 镫铛桢 溴睃汨.<n><t>悟镳噔��轵羼� � 蝾麝� (935,2687) � 镳桧羼栩� 祉� <p5 岭羼�� 镥瘘邂>. � 漯� 锣� 铗犭嚆钿囵�.")
	MisBeginCondition(LvCheck, ">", 36 )
	MisBeginCondition(NoMission, 634)
	MisBeginCondition(NoRecord, 634)
	MisBeginAction(AddMission, 634)
	MisBeginAction(AddTrigger, 6341, TE_GETITEM, 4472, 5 )
	MisCancelAction(ClearMission, 634)

	MisNeed(MIS_NEED_ITEM, 4472, 5, 10, 5)
	
	MisHelpTalk("<t>猁� 猁 � 妁� 镨疣蝾� 蔓 猁 � 戾�� 镱� 磬 觐痨 嚓箅囔.")
	MisResultTalk("<t>骂� � 躅痤! 骂� 锣 磬沭噤�!")
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

-----------------------------------贩卖假化石
	DefineMission( 635, "橡钿噫� 羿朦恹� 襦祛鲡弪钼", 635 )
	
	MisBeginTalk( "<t>项 皴牮弪�, 犷朦眈蜮� 蝾疸钼鲥� 忮潴� 礤 麇耱眢� 蝾疸钼膻, � � 蝾驽!<n><t>黍� 蝾 玎赅玎� 牮桉蜞朦眍� �轹� 枢徉磬, 眍 � 耦驵脲龛� � 礤 桁妣 忸珈铈眍耱� 桴 疣玟钺�. 疹�� 羼腓 猁 蔓 镳桧羼腓 祉� <p�桷� 珉钼妁彘 麇疱镟蹊> � 蝾麝�(969,2587) 蔓 耢铈弪� 桴 磬轵�. � 猁 镥疱牮囫桦 猁 桴 � 铗溧� 猁, 赅� �轹� 赅徉磬. � 漯� 铗犭嚆钿囵� 锣� 玎 � 蹊蝠铖螯.")
	MisBeginCondition(LvCheck, ">", 37 )
	MisBeginCondition(NoMission, 635)
	MisBeginCondition(NoRecord, 635)
	MisBeginAction(AddMission, 635)
	MisBeginAction(AddTrigger, 6351, TE_GETITEM, 4093, 3 )
	MisCancelAction(ClearMission, 635)

	MisNeed(MIS_NEED_ITEM, 4093, 3, 10, 3)
	
	MisHelpTalk("<t>蔓 礤 镳桧羼腓 祉� 蝾 � 鞲� � 锣� 镱镳铖桦? 亦� 镳桧羼栩�!")
	MisResultTalk("<t>斟-蹂! 扬囫栳�, 忸� 锣 磬沭噤�.")
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

-----------------------------------碧绿苔藓
	DefineMission( 636, "如箪痼漤�� ��泱�", 636 )
	
	MisBeginTalk( "<t>体�� 铟屙� 耔朦眍 祗鬣弪 �玮�! � 礤 祛泱 犷朦 眍痨嚯� 镨蜞螯�� 桤-玎 礤�!<n><t>项驵塍轳蜞 镳桧羼栩� 祉� <p5 清脲眍泐 祯�>, 黩� 猁 � 耢钽 恹脲麒螯 桁 疋铪 �玮�. 蔓 磬殇蛤� 邈� � 蝾麝�(732,2697).")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(NoMission, 636)
	MisBeginCondition(NoRecord, 636)
	MisBeginAction(AddMission, 636)
	MisBeginAction(AddTrigger, 6361, TE_GETITEM, 4094, 5 )
	MisCancelAction(ClearMission, 636)

	MisNeed(MIS_NEED_ITEM, 4094, 5, 10, 5)
	
	MisHelpTalk("<t>熙 祛� �玮�, � 黧怦蜮簋 漤� 祛� 耦黩屙�.")
	MisResultTalk("<t>扬囫栳� 锣�, � 皴轺囫 驽 皲咫帼 皴徨 铗忄�.")
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


-----------------------------------寻找光滑的石头
	DefineMission( 637, "项桉觇 徉瘐囹眍泐 赅祉�", 637 )
	
	MisBeginTalk( "<t>填� 漯筱 <b锑�> 铟屙� 膻徼� 疋铋 泐痤� � 礤溧忭� 铐 疱� 皲咫囹� 疱祛眚 � 疋罡� 泐痤溴 隋潲龛, 眍 屐� 礤钺躅滂禧 爨蝈痂嚯�.<n><t>橡桧羼栩� 祉� <y5 殃铍觐� 耜嚯�> 桤 <r绵脲祛�> � 蝾麝�(682,2592). � 镥疱溧� 桴 屐� � 铐 磬黜蛤 疱祛眚 � 泐痤溴.")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(NoMission, 637)
	MisBeginCondition(NoRecord, 637)
	MisBeginAction(AddMission, 637)
	MisBeginAction(AddTrigger, 6371, TE_GETITEM, 4455, 5 )
	MisCancelAction(ClearMission, 637)

	MisNeed(MIS_NEED_ITEM, 4455, 5, 10, 5)
	
	MisHelpTalk("<t>埋邈� 5 耜铍觐� 耜嚯� � 锑� 磬黜蛤 疱祛眚 � 泐痤溴!")
	MisResultTalk("<t>扬囫栳� 蝈徨, � 镥疱溧� 桴 铗 蝈�� � 耜噫�, 黩� � 蔓 镱祛汶� 屐�!")
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



-----------------------------------古怪的收藏家
	DefineMission( 638, "羊疣眄 襻铕�", 638 )
	
	MisBeginTalk( "<t>蒡铗 扈� 磬镱腠屙 疣珥� 膻潼扈.<n><t>� 戾�� 羼螯 珥嚓铎, 觐蝾瘥� 玎龛爨弪�� 镳邃耜噻囗��扈 桉镱朦珞� 疣珥 鬣耱� 蝈�. � 铗 疣� 潆� 邈� 镳邃耜噻囗�� 屐� 眢驽� <b碾桧睇� �琨� �疣>. 橡桧羼栩� 屐�, � 铐 耢铈弪 祉� 镳邃耜噻囹� 耋潼狍. <y碾桧睇� �琨� �疣> 蔓 耢铈弪� 磬轵� � 蝾麝�(892,3273).")
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 638)
	MisBeginCondition(NoRecord, 638)
	MisBeginAction(AddMission, 638)
	MisBeginAction(AddTrigger, 6381, TE_GETITEM, 4415, 5 )
	MisCancelAction(ClearMission, 638)

	MisNeed(MIS_NEED_ITEM, 4415, 5, 10, 5)
	
	MisHelpTalk("<t>项祛汨蝈 祉�, 祉� 蜞� 礤钺躅滂祛, 黩� 猁 祉� 镱汔溧腓.")
	MisResultTalk("<t>扬囫栳� 锣�, 骂� 锣 磬沭噤�!")
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

-----------------------------------捣鬼的跳跳蜥
	DefineMission( 639, "茹痂忄� �痂鲟", 639 )
	
	MisBeginTalk( "<t>酿筱 祛�! � 犷朦 礤 祛泱! 殷� 蜞觐� 箧囫睇� 玎镟�! 蒡铗 玎镟� 桉躅滂� 桤 <r啭屦�-镱镳箜�>. 悟镳噔��轵羼� � 蝾麝�(892,3273) � 筢彘蝈 <r10 啭屦钼-镱镳箜钼>. 蒡桁 蔓 铟桉蜩蝈 忸玟篚 忸 牮筱�.")
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 639)
	MisBeginCondition(NoRecord, 639)
	MisBeginAction(AddMission, 639)
	MisBeginAction(AddTrigger, 6391, TE_KILL, 62, 10 )
	MisCancelAction(ClearMission, 639)

	MisNeed(MIS_NEED_KILL, 62, 10, 10, 10)
	
	MisHelpTalk("<t>� 玎潲踵� 铗 钽� 玎镟踵.")
	MisResultTalk("<t>蔓 黧怦蜮箦蝈, 黩� 忸玟篚 耱嚯 疋彐邋?!")
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


-----------------------------------跳跳蜥的分泌物
	DefineMission( 640, "彦牮弼�� �疣-镱镳箜�", 640 )
	
	MisBeginTalk( "<t>� 礤 祛泱 镱��螯 铗 牦溧 铗 玎镟�! � 戾�� 羼螯 镱漕琊屙��, 黩� 铐 桉躅滂� 铗 <r�疣-镱镳箜�>. 悟镳噔��轵羼� � 蝾麝�(892,3273) � 镳桧羼栩� 祉� 桤 �痤� <y5 彦牮弼栝 �疣-镱镳箜�>. � 镱耱囵帼顸 镱塍鼬� 疣珙狃囹� � 铋 镳钺脲祛�.")
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginCondition(NoMission, 640)
	MisBeginCondition(NoRecord, 640)
	MisBeginAction(AddMission, 640)
	MisBeginAction(AddTrigger, 6401, TE_GETITEM, 4095, 5 )
	MisCancelAction(ClearMission, 640)

	MisNeed(MIS_NEED_ITEM, 4095, 5, 10, 5)
	
	MisHelpTalk("<t>蔓 妁� 礤 镳桧羼腓 祉� 彦牮弼棹 �疣-镱镳箜�?")
	MisResultTalk("<t>熙! 埋� �耥�! 雾� 镨蜞�� 镟溧朦� � 耦怦屐 礤 忮潴� 汨汨屙�, 铗 钽� 铗 龛� 蜞� � 镟蹴弪.")
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


-----------------------------------驱逐小狼
	DefineMission( 641, "如沩囗桢 忸腙钼", 641 )
	
	MisBeginTalk( "<t>� 犷� <r骂膑囹>, 铐� 鬣耱� 镱�怆��� � 矬耱� � 磬镟溧 耱噱�. 骂珈铈眍 羼腓 蔓 筢蝈 <r10 骂膑囹>, � 铗矬沩箅� 猁 桴. 蔓 磬殇蛤� 桴 � 蝾麝�.")
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginCondition(NoMission, 641)
	MisBeginCondition(NoRecord, 641)
	MisBeginAction(AddMission, 641)
	MisBeginAction(AddTrigger, 6411, TE_KILL, 100, 10 )
	MisCancelAction(ClearMission, 641)

	MisNeed(MIS_NEED_KILL, 100, 10, 10, 10)
	
	MisHelpTalk("<t>俞彘蝈 桴!")
	MisResultTalk("<t>扬囫栳�, 蝈镥瘘 祉� 礤 蜞� 耱疣� 恹躅滂螯 � 矬耱�.")
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

-----------------------------------屠杀小狼
	DefineMission( 642, "俞桢龛� 忸腙钼", 642 )
	
	MisBeginTalk( "<t>� 戾�� 羼螯 漯筱, 觐蝾瘥� 玎龛爨弪�� 镳邃耜噻囗��扈 耋潼猁 镱 疣珥 鬣耱�� 蝈�. 骂� 铐 祉� 镱钺妁嚯 镳邃耜噻囹�, 黩� 戾�� 驿蛤 � 狍潴�, 羼腓 � 屐� 镳桧羼� <b5 暑泸彘 骂膑铐赅>. 项祛汨蝈 祉�, 铗镳噔��轵羼� � 蝾麝�(687,3093) � 疣玟钺箐� 祉� 蜞� 5 觐泸彘 骂膑铐赅.")
	MisBeginCondition(LvCheck, ">", 11 )
	MisBeginCondition(LvCheck, ">", 11 )
	MisBeginCondition(NoMission, 642)
	MisBeginCondition(NoRecord, 642)
	MisBeginAction(AddMission, 642)
	MisBeginAction(AddTrigger, 6421, TE_GETITEM, 4096, 5 )
	MisCancelAction(ClearMission, 642)

	MisNeed(MIS_NEED_ITEM, 4096, 5, 10, 5)
	
	MisHelpTalk("<t>� 礤 忤骟 锣� 耱囵囗栝.")
	MisResultTalk("<t>扬囫栳� 锣�! 蒡� 磬沭噤� 玎 锣 耱囵囗��.")
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

-----------------------------------铲除杀手仙人掌
	DefineMission( 643, "青麒耱赅 赅牝篑钼-筢栝�", 643 )
	
	MisBeginTalk( "<t>体痃铖螯! 蒡�, 徨珞耠钼眍, 戾痃铖螯!<n><t>� 牦镥� � 祉钽� 矬蝈耱怏�, 眍 蜞牦� 戾痃铖螯 忤溴� 蝾朦觐 蝮�! 蔓 蝾朦觐 皴徨 镳邃耱噔� - 枢牝篑�-俞栝鳆, 觐蝾瘥� 镥疱溻桡帼蝰� 镱 珏祀�.<n><t>蒡� 箧囫眍� 琊咫棂�! 俞彘蝈 10 枢牝篑钼, 黩� 猁 矬蝈耱忮眄桕� 忤�� 桴 礤 矬汔腓顸 � � 磬� 泐痤� 彗滂腓 蝮痂耱�, 礤 犷�顸 箧囫睇� 祛眈蝠钼. 蔓 磬殇蛤� 枢牝篑� 俞栝鳆 � 蝾麝�(884,3156).")
	MisBeginCondition(LvCheck, ">", 12 )
	MisBeginCondition(NoMission, 643)
	MisBeginCondition(NoRecord, 643)
	MisBeginAction(AddMission, 643)
	MisBeginAction(AddTrigger, 6431, TE_KILL, 43, 10 )
	MisCancelAction(ClearMission, 643)

	MisNeed(MIS_NEED_KILL, 43, 10, 10, 10)
	
	MisHelpTalk("<t>蔓 礤 躅蜩蝈, 黩� 猁 蝮痂耱� 镳桢珂嚯� � 磬� � 泐痤�?")
	MisResultTalk("<t>扬囫栳� 锣� 漯箧棂�!")
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



-----------------------------------良药苦口
	DefineMission( 644, "妙瘘觐� 脲赅瘃蜮�", 644 )
	
	MisBeginTalk( "<t>如-玎 耋躅泐 � 驵痍钽� 觌桁囹�, 膻��� � 矬耱� 礤 铟屙� 簋蝽�, 眍 羼螯 耧弼栲朦磬� 爨琰, � 镱祛� 觐蝾痤�, 脲泖� 镥疱眍耔螯 觌桁囹 矬耱�.<n><t>昨� 猁 皲咫囹� 蜞牦� 爨琰, 礤钺躅滂祛 <p5 令朦� 觌筢礤� 赅牝篑�>. 蔓 耢铈弪� 磬轵� 桴 � 蝾麝�(884,3156).")
	MisBeginCondition(LvCheck, ">", 13 )
	MisBeginCondition(NoMission, 644)
	MisBeginCondition(NoRecord, 644)
	MisBeginAction(AddMission, 644)
	MisBeginAction(AddTrigger, 6441, TE_GETITEM, 4421, 5 )
	MisCancelAction(ClearMission, 644)

	MisNeed(MIS_NEED_ITEM, 4421, 5, 10, 5)
	
	MisHelpTalk("<t>铃� 铋 爨玷 铟屙� 蝠箐眍 � 矬耱�.")
	MisResultTalk("<t>扬囫栳� 锣�, 骂� 锣 爨琰!")
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


-----------------------------------仙人掌的水囊
	DefineMission( 645, "枢牝篑钼 忸漤 戾�", 645 )
	
	MisBeginTalk( "<t>蔓 蝾朦觐 镱耠篪嚅蝈 赅觐� 皴牮弪 � 箸磬�... 枢牝篑� 耧铖钺睇 磬躅滂螯�� 镱� 耦腠鲥� � 矬耱� 铟屙� 漕脬� 怵屐屙�. � 龛� 羼螯 <y忸漤 戾�>. 篷腓 蔓 铗镳噔栩羼� � 蝾麝�(884,3516) � 镳桧羼蛤� 祉� 潆� 耧屦桁屙蜞 5 <b枢牝篑钼 忸漤 戾钼>, 蝾 � 锣� 漯� 铗犭嚆钿囵�.")
	MisBeginCondition(LvCheck, ">", 13 )
	MisBeginCondition(NoMission, 645)
	MisBeginCondition(HasRecord, 644)
	MisBeginCondition(NoRecord, 645)
	MisBeginAction(AddMission, 645)
	MisBeginAction(AddTrigger, 6451, TE_GETITEM, 4097, 5 )
	MisCancelAction(ClearMission, 645)

	MisNeed(MIS_NEED_ITEM, 4097, 5, 10, 5)
	
	MisHelpTalk("<t>项赅 蔓 礤 镳桧羼蛤� 蝾 � 鞲� � 忄� 镱镳铖桦 � 礤 溧� 锣� 磬沭噤�!")
	MisResultTalk("<t>扬囫栳�, � 钺�玎蝈朦眍 箸磬� 桴 皴牮弪! 骂� 锣 磬沭噤�!")
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

----------------------------------翻滚大仙人球
	DefineMission( 646, "襄疱赅螓忄桢�� 珉钺钿�", 646 )
	
	MisBeginTalk( "<t>添� 桧蝈疱耥� 铗 牦溧 耱铍� 请钺�...<n><t>俞彘蝈 <r10 描汔眚耜桴 珉钺钿�> � 蝾麝� (687,3093), 黩� 猁 躅螯 赅� 蝾 箪屙栩� 桴 麒耠屙眍耱�.")
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 646)
	MisBeginCondition(NoRecord, 646)
	MisBeginAction(AddMission, 646)
	MisBeginAction(AddTrigger, 6461, TE_KILL, 294, 10 )
	MisCancelAction(ClearMission, 646)

	MisNeed(MIS_NEED_KILL, 294, 10, 10, 10)
	
	MisHelpTalk("<t>蔓 礤 恹镱腠桦� 祛� 镳铖�? 西屙� 驵朦! 填驽� 蔓 怦� 驽 镱殇蛤� � 皲咫噱蝈 蝾, � 鞲� � 锣� 镱镳铖桦?")
	MisResultTalk("<t>扬囫栳� 锣�, 蝈镥瘘 桴 泐疣玟� 戾睃!")
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

-----------------------------------苦味多汁果
	DefineMission( 647, "妙瘘觇� 麴箨�", 647 )
	
	MisBeginTalk( "<t><b妙瘘觇� 麴箨�> 铗 <r描汔眚耜铋 珉钺钿�> 泐瘘觇�, 眍 铟屙� 耦黜.<n><t>义镥疱�� 祛腩溴纥 桉镱朦珞弪 <b妙瘘觇� 麴箨�> 潆� 磬镨蜿�.<n><t>� 襦� 腓黜� 桤泐蝾怆�� 铗 磬镨蝾�, 眍 � 戾�� 玎觐眵桦桉� 玎镟覃 <b妙瘘觐泐 责箨蜞>. 篷腓 蔓 祉� 镳桧羼蛤� <b5 妙瘘觇� 责箨蝾�> � <r描汔眚耜铋 珉钺钿�> � 蝾麝�(687,3097), 蝾 � 狍潴 锣� 铟屙� 耔朦眍 犭嚆钿囵屙.")
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 647)
	MisBeginCondition(NoRecord, 647)
	MisBeginAction(AddMission, 647)
	MisBeginAction(AddTrigger, 6471, TE_GETITEM, 4475, 5 )
	MisCancelAction(ClearMission, 647)

	MisNeed(MIS_NEED_ITEM, 4475, 5, 10, 5)
	
	MisHelpTalk("<t>枢�, 蔓 妁� 礤 镳桧羼腓 祉� 妙瘘觇� 责箨�? 项蝾痤镨蝈顸!")
	MisResultTalk("<t>扬囫栳� 锣�, 蝈镥瘘 � 铟屙� 锣� 犭嚆钿囵屙!")
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

----------------------------------鬼怪树传说
	DefineMission( 648, "隋沐礓� � 镳桤疣黜铎 溴疱忮", 648 )
	
	MisBeginTalk( "<t>疹��� 耠篚�, 黩� <r酿邂铒痂琊嚓> 耔焘铍桤桊箦� 钺疱鞲眄铖螯.<n><t>蒡� <r酿邂铒痂琊嚓�> 磬耱��� 桉鬣滂� 珉�! 项驵塍轳蜞 箜梓蝾纥蝈 <r10 酿邂铒痂琊嚓钼> � 蝾麝�(885,3027) � 镱腩骅蝈 磬鬣腩 箜梓蝾驽龛� 礤麇耱�.")
	MisBeginCondition(LvCheck, ">", 15 )
	MisBeginCondition(NoMission, 648)
	MisBeginCondition(NoRecord, 648)
	MisBeginAction(AddMission, 648)
	MisBeginAction(AddTrigger, 6481, TE_KILL, 203, 10 )
	MisCancelAction(ClearMission, 648)

	MisNeed(MIS_NEED_KILL, 203, 10, 10, 10)
	
	MisHelpTalk("<t>蔓 妁� 礤 筢桦� 10 酿邂铒痂琊嚓钼!")
	MisResultTalk("<t>扬囫栳� 锣�!")
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


-----------------------------------枯木逢春
	DefineMission( 649, "橡噻漤桕 蝾�", 649 )
	
	MisBeginTalk( "<t>暑沅� 羼螯 忸溧, � 镳噻漤桕 潆� 骅蝈脲� 矬耱�, 眍 铗 镳噻漤桕 祛泱� 桉镱痱栩� <r酿邂铒痂琊嚓�>, � 龛� 羼螯 觐痦�, 觐蝾瘥扈 铐� 镱汶铢帼� 怦� 忸潴 � 骅蝈��� 礤 踱囹噱� 忸潲. 橡桧羼栩� 祉� <y5 暑痦彘 漯邂铒痂琊嚓�>, 黩� 猁 � 耢钽 疣珙狃囹�, 赅� 桁 箐喔蝰� 镱汶铢囹� 怦� 忸潴 � 矬耱�.")
	MisBeginCondition(LvCheck, ">", 16 )
	MisBeginCondition(NoMission, 649)
	MisBeginCondition(NoRecord, 649)
	MisBeginAction(AddMission, 649)
	MisBeginAction(AddTrigger, 6491, TE_GETITEM, 4098, 5 )
	MisCancelAction(ClearMission, 649)

	MisNeed(MIS_NEED_ITEM, 4098, 5, 10, 5)
	
	MisHelpTalk("<t>骂溧 矬耱� 镱� 筱痤珙�.")
	MisResultTalk("<t>扬囫栳�, 忸珈铈眍 疣珙狃噔顸 � 桴 觐痦�� � 耢钽� 镳桎箪囹�, 赅� 耧囫蜩 忸潴!")
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

-----------------------------------穷凶极恶
	DefineMission( 650, "铃耧疱鲥溴眚眍� 珉�", 650 )
	
	MisBeginTalk( "<t>*枕* � 怦邈� 腓 镳铖蜞� 礤聍囫蝽�� 驽睐桧�. 武磬觐 桁 徨耧铢噤睇� 拎礓栩囔 猁腩 怦� 疣忭� 磬 戾�� � 磬 祛� 耋潼狍, 铐� 钽疣徼腓 戾�� � 玎狃嚯� 镱耠邃礤� 黩� 铖蜞腩顸 铗 祛彘 爨蝈痂. 雾� 玎狃嚯� <y湾麴栩钼 狃囫脲�> � 铗礤耠� 邈� � 皴徨 � 豚沐瘘.<n><t>蔓 礤 祛汶� 猁 玎耱箫栩� 玎 徨漤簋 � 礤聍囫蝽簋 驽睐桧� � 忮痦篁� <y湾麴栩钼 狃囫脲�>. 肃沐瘘 徉礓栩钼 磬躅滂蝰� � 蝾麝�(716,3290). 青徨痂蝈 � 龛� 祛� <b湾麴栩钼 狃囫脲�>.")
	MisBeginCondition(LvCheck, ">", 17 )
	MisBeginCondition(NoMission, 650)
	MisBeginCondition(NoRecord, 650)
	MisBeginAction(AddMission, 650)
	MisBeginAction(AddTrigger, 6501, TE_GETITEM, 4099, 1 )
	MisCancelAction(ClearMission, 650)

	MisNeed(MIS_NEED_ITEM, 4099, 1, 10, 1)
	
	MisHelpTalk("<t>*枕* 填� 锑爨... � 戾�� 犷朦 礤� � 蝈徨 镟��蜩!")
	MisResultTalk("<t>栗! 赅� � 犭嚆铕钿眍 � 锣� 耱铕铐�! 扬囫栳� 锣�!")
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


----------------------------------围剿窃贼
	DefineMission( 651, "禹梓蝾骅螯 徉礓栩钼", 651 )
	
	MisBeginTalk( "<t><r襄聍囗 疣玑铋龛觇> 镳桴钿�� 桤 矬耱�. 雾�  沭噌�� 礤 蝾朦觐 蝾疸钼鲥�, 眍 �  徨耧铎铢睇� 驽睐桧 � 溴蝈�.<n><t>畦蝈腓 溴疱忮睃 镳桫腓 � 磬沭噤铋, 黩钺� 桤徉忤螯�� 铗 龛�. 蔓 祛驽蝈 镱祛鼽 磬�? 蔓耠邃栩� 10 <r襄聍囗 疣玑铋龛觐�> � 蝾麝� (716,3290).")
	MisBeginCondition(LvCheck, ">", 18 )
	MisBeginCondition(NoMission, 651)
	MisBeginCondition(NoRecord, 651)
	MisBeginAction(AddMission, 651)
	MisBeginAction(AddTrigger, 6511, TE_KILL, 131, 10 )
	MisCancelAction(ClearMission, 651)

	MisNeed(MIS_NEED_KILL, 131, 10, 10, 10)
	
	MisHelpTalk("<t>俞彘蝈 朽玑铋龛觐� � 镱塍麒蝈 磬沭噤�!")
	MisResultTalk("<t>橡邂铖躅漤�! 骂� 锣 磬沭噤�.")
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

----------------------------------凶狠饿狼
	DefineMission( 652, "请 泐腩漤 忸腙�", 652 )
	
	MisBeginTalk( "<t>� 磬徼疣� 漕狃钼铍邂 磬 犷瘘狍 �  <r妙腩漤囔� 忸腙囔�>.<n><t>雾� 玎耱噔�� 矬蝈耱忮眄桕钼 钺躅滂螯 磬 珏祀� 耱铕铐铋<n><t>篷腓 蔓 镱祛驽蝈 筢栩� 10 <r妙腩漤 忸腙钼> � 蝾麝� (718,2938), � 漯� 锣� 忸珥嚆疣骟.")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 652)
	MisBeginCondition(NoRecord, 652)
	MisBeginAction(AddMission, 652)
	MisBeginAction(AddTrigger, 6521, TE_KILL, 101, 10 )
	MisCancelAction(ClearMission, 652)

	MisNeed(MIS_NEED_KILL, 101, 10, 10, 10)
	
	MisHelpTalk("<t>俞彘蝈 妙腩漤 骂腙钼 � 蔓 镱塍麒蝈 忸珥嚆疣驿屙桢.")
	MisResultTalk("<t>西屙� 躅痤! 骂� 锣 磬沭噤�.")
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

----------------------------------沙地龟之乱
	DefineMission( 653, "馏眚 矬耱眍� 麇疱镟蹊", 653 )
	
	MisBeginTalk( "<t>� 礤 珥帼, 黩� 耠篦桦铖� � <r襄聍囗� 麇疱镟踵扈>, 铐� 疣玑疱腓顸 镱 矬耱� � 磬镟溧 磬 怦艴 镱漯��!<n><t>填驽蝈 腓 恹 镱祛鼽 祉� 筢栩� 10 <r 襄聍囗 麇疱镟�> � 蝾麝� (1197,3270)?")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 653)
	MisBeginCondition(NoRecord, 653)
	MisBeginAction(AddMission, 653)
	MisBeginAction(AddTrigger, 6531, TE_KILL, 134, 10 )
	MisCancelAction(ClearMission, 653)

	MisNeed(MIS_NEED_KILL, 134, 10, 10, 10)
	
	MisHelpTalk("<t>项驵塍轳蜞! 俞彘蝈 桴!")
	MisResultTalk("<t>西屙� 躅痤!")
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

-----------------------------------移动花圃
	DefineMission( 654, "拟桄簌栝�� 襦�", 654 )
	
	MisBeginTalk( "<t><r襄聍囗 麇疱镟蹊> 戾潆屙睇�, 眍 钽痤祉 耋耱忄. 雾� 镱� 疋铊� 镟眦桊屐 镳�黧� 矬耱眍� 珏痦觐.<n><t>添� 铟屙� 眢骓� � 皴戾磬. 填驽蝈 腓 蔓 耦徼疣螯 潆� 戾��  <y5象耱睇� 珏痦尻> 桤 <r襄聍囗 麇疱镟�> � 蝾麝� (1197,3270)?")
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(NoMission, 654)
	MisBeginCondition(NoRecord, 654)
	MisBeginAction(AddMission, 654)
	MisBeginAction(AddTrigger, 6541, TE_GETITEM, 4466, 5 )
	MisCancelAction(ClearMission, 654)

	MisNeed(MIS_NEED_ITEM, 4466, 5, 10, 5)
	
	MisHelpTalk("<t>蔓 祉� 疣玮� 礤 镱祛驽蝈?")
	MisResultTalk("<t>令朦� 锣� 耧囫栳�!")
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

----------------------------------未雨绸缪
	DefineMission( 655, "项溷铗钼赅", 655 )
	
	MisBeginTalk( "<t>� 泐蝾怆� 铗镳噔栩� 蝾疸钼 赅疣忄� � <b鲤沐眚>.<n><t>皖 祉� 镳桎弪�� 镳铋蜩 麇疱� 豚沐瘘 <p襄聍囗 拎礓栩钼>. � 犷�, 黩� 铐� 钽疣��� 戾��.<n><t>湾 祛汶� 猁 蔓 筢栩� 10 襄聍囗 拎礓栩钼? 填� 矬螯 脲骅� 麇疱� 蝾麝�(1339,3300).")
	MisBeginCondition(LvCheck, ">", 21 )
	MisBeginCondition(NoMission, 655)
	MisBeginCondition(NoRecord, 655)
	MisBeginAction(AddMission, 655)
	MisBeginAction(AddTrigger, 6551, TE_KILL, 45, 10 )
	MisCancelAction(ClearMission, 655)

	MisNeed(MIS_NEED_KILL, 45, 10, 10, 10)
	
	MisHelpTalk("<t>� 耦祉邂帼顸, 黩� 矬螯 耱嚯 徨珙镟耥邋!")
	MisResultTalk("<t>扬囫栳� 犷朦�! 义镥瘘 祉� 礤麇泐 铒囫囹�.")
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

-----------------------------------蘑菇浓汤
	DefineMission( 656, "灭栳眍� 耋�", 656 )
	
	MisBeginTalk( "<t>栗... 暑沅� � 耢铗瘙 磬 � <r襄聍囗 沭栳�>, 蝾 � 戾�� 耩噻� 镥疱� 汶噻囔� 耱囗钼栩�� 钺疣� 灭栳眍泐 耋镟!<n><t>� 蜞� 躅黧 镱镳钺钼囹� 铗 耋�...<n><t>橡桧羼栩� 祉� <y5 穷眚梓睇� 沭栳a>, 黩� 猁 � 耢钽 疋囵栩� 玎戾鬣蝈朦睇� 灭栳眍� 耋�. 蔓 磬殇蛤� <r襄聍囗 沭栳�> � 蝾麝�(1334,3438).")
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 656)
	MisBeginCondition(NoRecord, 656)
	MisBeginAction(AddMission, 656)
	MisBeginAction(AddTrigger, 6561, TE_GETITEM, 4476, 5 )
	MisCancelAction(ClearMission, 656)

	MisNeed(MIS_NEED_ITEM, 4476, 5, 10, 5)
	
	MisHelpTalk("<t>� 蜞� 躅黧 沭栳眍� 耋�, � 蔓 漕 耔� 镱� 礤 镳桧羼腓 祉� 5 穷眚梓睇� 灭栳钼.")
	MisResultTalk("<t>扬囫栳� 锣�! 青躅滂蝈 磬 灭栳眍� 耋� 镱镱珂�.")
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

-----------------------------------逃跑的沙地菇
	DefineMission( 657, "铃汶 沭栳", 657 )
	
	MisBeginTalk( "<t>� 膻犭� 玎龛爨螯�� 襦漕忸漶蜮铎.<n><t>捻� 2 磬玎� � 泱��豚 � 疋罡� 襦潴 � 玎戾蜩豚, 黩� 麇泐 蝾 礤 踱囹噱�.<n><t>务祛蝠邂 疋铋 襦� � 镱��豚, 黩� 礤踱囹噱� <b灭栳钼>. 皖 徨� 龛� � 礤 忤骟 镱腠铞屙眍耱� 祛邈� 襦溧.<n><t>蔓 礤 镱祛汶� 猁 祉� 镳桧羼蜩 <y5 象耱睇� 耧铕>, 黩� 猁 � 镱 眍忸� 耢钽豚 疣玮羼蜩 灭栳� � 疋罡� 襦潴.<n><t>灭栳� 蔓 磬殇蛤� � 蝾麝�(1334,3438).")
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 657)
	MisBeginCondition(NoRecord, 657)
	MisBeginAction(AddMission, 657)
	MisBeginAction(AddTrigger, 6571, TE_GETITEM, 4100, 5 )
	MisCancelAction(ClearMission, 657)

	MisNeed(MIS_NEED_ITEM, 4100, 5, 10, 5)
	
	MisHelpTalk("<t>� 礤 耢钽� 疣玮羼蜩 � 疋罡� 襦潴 灭栳� 徨� 锣� 镱祛!")
	MisResultTalk("<t>扬囫栳�, 赅� 蝾朦觐 灭栳� 镳桄桠篁��, 祛� 襦� 狍溴� 襦禧� 塍鼬桁 襦漕� � 扈疱!")
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

-----------------------------------泥浆的妙用
	DefineMission( 658, "锑汨麇耜铄 镳桁屙屙桢 沭�玷", 658 )
	
	MisBeginTalk( "<t>蓍! 酿筱! 蔓 赅� 疣� 忸怵屐�! � 磬� 镳钼钿�� 彐邈钿睇� 觐黻箴� 沭�玷 � 蝾� � 觐泐 狍溴� 犷朦 沭�玷 蝾� 镱塍麒� 爨汨麇耜栝 剜�, 觐蝾瘥� 耢铈弪 镳邃耜噻囹� 狍潴�. 项祛汨蝈 祉� 漕猁螯 <b5 青疣驽眄铋 沭�玷> 桤 <r灭�珏溴祛磬> 钺栩帼泐 � 蝾麝�(1438,3414) � 蝾沅� � 恹桡疣� 铗 爨汨麇耜栝 剜�, � 狍潴 锣� 铟屙� 犭嚆钿囵屙 � 玎镫圜� 躅痤� 溴睃汨 玎 �.")
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 658)
	MisBeginCondition(NoRecord, 658)
	MisBeginAction(AddMission, 658)
	MisBeginAction(AddTrigger, 6581, TE_GETITEM, 4436, 5 )
	MisCancelAction(ClearMission, 658)

	MisNeed(MIS_NEED_ITEM, 4436, 5, 10, 5)
	
	MisHelpTalk("<t>� 恹桡疣� 铗 剜� 蝾朦觐 羼腓 恹 祉� 镱祛驽蝈!")
	MisResultTalk("<t>扬囫栳� 锣�!")
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

----------------------------------贪婪的泥人
	DefineMission( 659, "杨眄�� 泐腩忄 沭�珏溴祛磬", 659 )
	
	MisBeginTalk( "<t>琉痧, � 沭�珥! 蒡� 怦� 桤-玎 <r灭�珏溴祛磬>!<n><t>蒡� <r灭�珏溴祛睇> 耱嚯� 铟屙� 珉� � 镱耠邃礤� 怵屐�, � 怦� 牝� 镱漉钿栩 � 龛� 耱囗钼�蝰� 桴 驽痱忄扈! 锣 玎溧鬣 狍溴� 筢栩� <r10 灭�珏溴祛眍�> � 镱赅玎螯 桁, 牝� 汶噔礤�. 蔓 磬殇蛤� 桴 � 蝾麝�(1438,3413).")
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 659)
	MisBeginCondition(NoRecord, 659)
	MisBeginAction(AddMission, 659)
	MisBeginAction(AddTrigger, 6591, TE_KILL, 251, 10 )
	MisCancelAction(ClearMission, 659)

	MisNeed(MIS_NEED_KILL, 251, 10, 10, 10)
	
	MisHelpTalk("<t>项躅驽 铐� 锣� 镱徨滂腓! � 铐� 汶噔礤�?! 蔓 蜞� 潴爨弪�? 蠕栩� � 漕赅骅蝈 桁 钺疣蝽铄!")
	MisResultTalk("<t>蔓 耧疣忤腓顸 � 桁! 蔓 磬耱��� 沐痤�!")
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

----------------------------------危险沙骑士
	DefineMission( 660, "物囫睇� 磬脲蝼桕�", 660 )
	
	MisBeginTalk( "<t><r襄聍囗 拎礓栩�> 怆囫蜮簋� � 蝈麇龛� 漕脬钽� 怵屐屙� � 矬耱� <b剜轵囗�>. 雾� 磬 耱铍� 驽耱铌�, 黩� 筢桠帼� 怦艴 觐泐 镱怦蝠鬻帼� � 皴�� 磬 矬蜩. 弱 铖眍忭铋 豚沐瘘 � 蝾麝�(13027,3011). 悟镳噔��轵羼� � 龛� � 豚沐瘘 � 筢彘蝈 10 <r襄聍囗 怦噤龛觐�>. 蒡桁 蔓 篁桴铎桊栩� 桴 稃� � 铐� 磬黜篁 筲噫囹� 玎觐睇!")
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 660)
	MisBeginCondition(NoRecord, 660)
	MisBeginAction(AddMission, 660)
	MisBeginAction(AddTrigger, 6601, TE_KILL, 49, 10 )
	MisCancelAction(ClearMission, 660)

	MisNeed(MIS_NEED_KILL, 49, 10, 10, 10)
	
	MisHelpTalk("<t>项赅 恹 桴 礤 磬赅驽蝈 铐� 蜞� � 狍潴� 徨珥嚓噻囗眍 筢桠囹� 赅驿钽� 怦蝠鬻眍泐.")
	MisResultTalk("<t>扬囫栳� 锣�, 蔓 镳屣钿嚯� 桁 箴铌!")
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

----------------------------------铲除食人蜘蛛
	DefineMission( 661, "相篦�� 疣聍桉蜿�", 661 )
	
	MisBeginTalk( "<t>� 疣睃 铟屙� 膻徼� 泱��螯  怃铍� 镫�驵, 眍 皴轺囫 蜞� 铒囫眍 桤-玎 <r相箨钼-赅眄栳嚯钼>. 俞彘蝈 镱驵塍轳蜞 <r10 相箨钼-赅眄栳嚯钼>, 黩� 猁 祛骓� 耱嚯� 铒�螯 泱��螯  怃铍� 徨疱汔. 蔓 磬蝾腙礤蝈顸 磬 龛� � 蝾麝�(1093,2948)!")
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 661)
	MisBeginCondition(NoRecord, 661)
	MisBeginAction(AddMission, 661)
	MisBeginAction(AddTrigger, 6611, TE_KILL, 210, 10 )
	MisCancelAction(ClearMission, 661)

	MisNeed(MIS_NEED_KILL, 210, 10, 10, 10)
	
	MisHelpTalk("<t>袜 镫�驽 蜞� 驽 礤徨珙镟耥� 赅� � 疣睃!")
	MisResultTalk("<t>扬囫栳� 锣�, 蝈镥瘘 � 祛泱 赅� � 镳彐溴 泱��螯 镱 镫�骟!")
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

-----------------------------------直立行走的狼
	DefineMission( 662, "琉钿�麒� 忸腙", 662 )
	
	MisBeginTalk( "<t>添� 桧蝈疱耥�, 镱麇祗 <r蔫觇� 忸腙�> 祛泱� 镥疱戾螯�� 磬 溻篚 眍汔� 赅� 麇腩忮�. 悟镳噔��轵羼� � 蝾麝�(1473,3295) � 漕耱囗� 潆� 戾�� 桤 <r蔫觇� 忸腙钼> <y5 毋痤祉 忸膑桴 觐泸彘>.<n><t>骂珈铈眍 � 耢钽� 镱��螯 桴 皴牮弪!")
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 662)
	MisBeginCondition(NoRecord, 662)
	MisBeginAction(AddMission, 662)
	MisBeginAction(AddTrigger, 6621, TE_GETITEM, 4439, 5 )
	MisCancelAction(ClearMission, 662)

	MisNeed(MIS_NEED_ITEM, 4439, 5, 10, 5)
	
	MisHelpTalk("<t>侦.. 羊疣眄�, 眍 蔓 祉� 龛 麇泐 礤 镳桧羼腓.")
	MisResultTalk("<t>楞�! � 蜞� � 潴爨�! 雾� 腆蜞眚�!")
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

-----------------------------------金币蜘蛛
	DefineMission( 663, "穷腩蝾� 镟箨", 663 )
	
	MisBeginTalk( "<t>念痤泐� 漯筱! 蔓 赅� 疣� 忸怵屐�! 相箨� 箨疣腓 � 戾�� <y体� � 穷腩蝾�> � 箜羼腓 � 蝾麝�(1093,2948). 悟镳噔��轵羼� 蝮溧 � 忮痦栩� 祛� <y体麇� � 珙腩蝾�>, � 礤 铖蜞眢顸 � 漕脬� 镥疱� 锣扈.")
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 663)
	MisBeginCondition(NoRecord, 663)
	MisBeginAction(AddMission, 663)
	MisBeginAction(AddTrigger, 6631, TE_GETITEM, 4101, 1 )
	MisCancelAction(ClearMission, 663)

	MisNeed(MIS_NEED_ITEM, 4101, 1, 10, 1)
	
	MisHelpTalk("<t>� 赅觐� 忸珥嚆疣驿屙梃 蔓 泐忸痂蝈? � 礤 忤骟 疋铄泐 体� � 珙腩蝾�!")
	MisResultTalk("<t>骂� 铐 祛� 痤漤屙栝! 骂� 锣 磬沭噤�! 扬囫栳� 锣� 钽痤祉铄!")
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

-----------------------------------万能钥匙
	DefineMission( 664, "秒噔睇� 觌", 664 )
	
	MisBeginTalk( "<t>荫耨! 镱驵塍轳蜞 泐忸痂蝈 蜩!<n><t>填� 镱漯筱� 耦徼疣弪�� 徨驵螯 耦 疋铊� 镟痦屐 桤 漕祗, 蜞� 赅� 桁 玎镳妁帼� 怦蝠鬻囹� 甯 痤滂蝈腓. 翌朦觐 蝰耨!<n><t>� 犭嚆铖腩怆�� 桴 � 躅黧 溧螯 桁 镱溧痤�. 蒡� 觌�, 矬耱� 铐� 狍潴� 觌囔� 铗 桴 聍囫螯�.<n><t>悟镳噔��轵羼� � 蝾麝�(1255,2974) � 镳桧羼栩� 桤 <r埋噤龛觐�> 拟� <y秒噔睇� 觌�>. 翌朦觐 � 犷朦� 蜞轫� 怆敫眄, 礤 泐忸痂蝈 龛 觐祗 � 桴 镱徨沐!")
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 664)
	MisBeginCondition(NoRecord, 664)
	MisBeginAction(AddMission, 664)
	MisBeginAction(AddTrigger, 6641, TE_GETITEM, 4478, 2 )
	MisCancelAction(ClearMission, 664)

	MisNeed(MIS_NEED_ITEM, 4478, 2, 10, 2)
	
	MisHelpTalk("<t>� 玎 黩� � 漕腈屙 锣� 犭嚆钿囵栩�? 蔓 妁� 礤 镳桧羼腓 祉� 2 秒噔睇� 觌�!")
	MisResultTalk("<t>岭嚆钿囵� 蝈��, 祛� 漯筱!")
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

----------------------------------擒贼擒王
	DefineMission( 665, "络�螯 骅恻屐", 665 )
	
	MisBeginTalk( "<t>枢� 泐忸痂螯�� � 铟屙� 祗漯铋 镱耠钼桷�: 畜徼蝈 镳钺脲祗 磬 觐痦�!<n><t>令朦� 镳钺脲祛� �怆�弪�� � 象耱�, 磬镟溴龛� 拎礓栩钼 � 疣玑铋龛觐�. 俞彘蝈 桴 骂驵赅 � 蝾麝�(1170,3026) � 磬镟溴龛� 耱囗弪 珥圜栩咫� 戾睃!")
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 665)
	MisBeginCondition(NoRecord, 665)
	MisBeginAction(AddMission, 665)
	MisBeginAction(AddTrigger, 6651, TE_KILL, 106, 1 )
	MisCancelAction(ClearMission, 665)

	MisNeed(MIS_NEED_KILL, 106, 1, 10, 1)
	
	MisHelpTalk("<t>蔓 妁� 礤 筢桦� 橡邃忸滂蝈�� 镥聍囗 徉礓栩钼 - 绵疱蜞!")
	MisResultTalk("<t>斟-蹂! 蔓 镱腩骅腓 磬鬣腩 觐眦� 镳羼蝮镯铖蜩!")
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

----------------------------------挑战盾骑士
	DefineMission( 666, "捏 怦噤龛�", 666 )
	
	MisBeginTalk( "<t><b埋噤龛觇> � 矬耱� 磬忸��� 耱疣� 磬 骅蝈脲� 剜轵囗�. 砚桊屣邋 桴 礤� 徉礓栩钼!<n><t>念赅骅蝈 疋铪 漕犭羼螯 筢桠 � 蝾麝�(1255,2974) <r10 埋噤龛觐�>!")
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 666)
	MisBeginCondition(NoRecord, 666)
	MisBeginAction(AddMission, 666)
	MisBeginAction(AddTrigger, 6661, TE_KILL, 200, 10 )
	MisCancelAction(ClearMission, 666)

	MisNeed(MIS_NEED_KILL, 200, 10, 10, 10)
	
	MisHelpTalk("<t>蔓 礤 漕赅玎腓 疋铪 漕犭羼螯.")
	MisResultTalk("<t>义镥瘘 � 忤骟, 黩� 蔓 磬耱��� 犷疱� 玎 耧疣忮潆桠铖螯!")
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

-----------------------------------蜥蜴皇冠
	DefineMission( 667, "暑痤磬 �疣", 667 )
	
	MisBeginTalk( "<t>腕 礤 祛驽� 眍耔螯 骅忸蝽铄 觐痤眢 聍弪�� 皴�� 觐痤敫�! � 蝾麝�(1507,2970) 钺栩帼� <r暑痤腓 �痤�> � 眍��� 觐痤睇! 橡桧羼� 祉� <y10 觐痤� �疣> 黩� 猁 禧 耢钽腓 镱腩骅螯 觐礤� 铋 礤耧疣忮潆桠铖蜩.")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 667)
	MisBeginCondition(NoRecord, 667)
	MisBeginAction(AddMission, 667)
	MisBeginAction(AddTrigger, 6671, TE_GETITEM, 1757, 10 )
	MisCancelAction(ClearMission, 667)

	MisNeed(MIS_NEED_ITEM, 1757, 10, 10, 10)
	
	MisHelpTalk("<t>昨�? 湾耔蝈 祉� � 觐痤睇 桦� 蔓 蝾驽 镳铗桠 暑痤脲恹?!")
	MisResultTalk("<t>扬囫栳�! 蒡� 磬鬣腩 疱忸膻鲨�!")
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

-----------------------------------水兵帽
	DefineMission( 668, "锑蝠铖耜�� 镱麝�", 668 )
	
	MisBeginTalk( "<t>蓍! 青溴疰桉� 磬 扈眢蝮! 填驽蝈 祉� 镱祛鼽? 瞒屦� � 忤溴� 扈腩泐 <r 翔磴忤磬-祛��麝�>. 添� 铟屙� 镱眇噔桦囫� 邈� <y剜镱麝� 镨磴忤磬-祛��麝�>! � 躅黧 甯 镱塍麒螯!<n><t>橡桧羼栩� 祉�, 镱驵塍轳蜞, 2 <y剜镱麝� 镨磴忤磬-祛��麝�> 铗 <r翔磴忤磬-祛��麝�>.饮 桴 磬殇屮� � 蝾麝� (995,365)!")
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 668)
	MisBeginCondition(NoRecord, 668)
	MisBeginAction(AddMission, 668)
	MisBeginAction(AddTrigger, 6681, TE_GETITEM, 4102, 2 )
	MisCancelAction(ClearMission, 668)

	MisNeed(MIS_NEED_ITEM, 4102, 2, 10, 2)
	
	MisHelpTalk("<t>� 躅黧 镱塍麒螯 � <y剜镱麝� 镨磴忤磬-祛��麝�> 麇泐 猁 � 祉� 龛 耱��腩.")
	MisResultTalk("<t>熙! 扬囫栳�, 铐� 铟屙� 祉� 眇噔栩��!")
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

-----------------------------------精灵之心
	DefineMission( 669, "彦痄鲥 磬�潲", 669 )
	
	MisBeginTalk( "<t><b袜�溧> �怆�弪�� 扈痦 � 襦禧� 耧铌铋睇� 耋耱忸�. 疹滂� 脲沐礓�, 黩� 钺豚溧蝈朦 <y皴痄鲟 磬�潲> 镳桀狃弪弪 耧铌铋耱忤� 袜�潲. 橡桧羼栩� 祉� 溻� <y皴痄鲟 袜�潲>, 黩� 猁 � 镳钼屦桦 � 脲沐礓�.")
	MisBeginCondition(LvCheck, ">", 9 )
	MisBeginCondition(NoMission, 669)
	MisBeginCondition(NoRecord, 669)
	MisBeginAction(AddMission, 669)
	MisBeginAction(AddTrigger, 6691, TE_GETITEM, 4418, 2 )
	MisCancelAction(ClearMission, 669)

	MisNeed(MIS_NEED_ITEM, 4418, 2, 10, 2)
	
	MisHelpTalk("<t>昨� 猁 镳钼屦栩� � 脲沐礓� 祉� 礤钺躅滂祛 2 <y皴痄鲟 磬�潲>.")
	MisResultTalk("<t>扬囫栳�! � 蝮� 驽 磬黜� 镳钼屦�螯 疋铊 礤疴桫觇.")
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

-----------------------------------完美水晶
	DefineMission( 670, "蠕遴朦睇� 牮桉蜞腚", 670 )
	
	MisBeginTalk( "<t>埋� 牮桉蜞腚� 桁妣� 溴翦牝�. 武磬觐, <r袜�溧> 耧铖钺磬 筢桊囹� � 牮桉蜞腚钼 溴翦牝� � 筢桠 磬�潴 祛骓� 镱塍麒螯 <y蠕遴朦睇� 牮桉蜞腚>. 蔓 耢钽腓 猁 镳桧羼蜩 祉� 5 <y蠕遴朦睇� 牮桉蜞腚钼>, � 猁 锣� 铗犭嚆钿囵桦 猁 玎 �!<n><t>袜�潴 蔓 磬殇蛤� � 蝾麝�(1079,518).")
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginCondition(NoMission, 670)
	MisBeginCondition(NoRecord, 670)
	MisBeginAction(AddMission, 670)
	MisBeginAction(AddTrigger, 6701, TE_GETITEM, 4103, 5 )
	MisCancelAction(ClearMission, 670)

	MisNeed(MIS_NEED_ITEM, 4103, 5, 10, 5)
	
	MisHelpTalk("<t>袜�溧 躅螯 � 扈痤膻徼忸� 耋耱忸 � 甯 驵腙� 筢桠囹�, 眍 祉� 眢骓� � 蠕遴朦睇� 牮桉蜞腚�!")
	MisResultTalk("<t>扬囫栳� 锣�! 骂� 锣 磬沭噤�!")
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

----------------------------------麋鹿哀鸣
	DefineMission( 671, "羊疣溧龛� 腩��", 671 )
	
	MisBeginTalk( "<t>湾 镱潴爨轵� 龛 麇泐 镫铛钽�, 眍 � 戾�� 铟屙� 耱疣眄�� 镳桠赅... � 膻犭� 耠篪囹� 耱铐� 耱疣溧桴 腩皴�! 族� 驵腩犴邋 � 耔朦礤� 狍潴� 耱铐� 腩皴�, 蝈� 聍囫螂桠邋 � 狍潴 皴�� 黧怦蜮钼囹�!<n><t>� 铗犭嚆钿囵� 蝈�� 羼腓 螓 祉� 漕耱噔桫� � 箐钼铍蜮桢 � 筢 � 蝾麝�(885,333) <r10 祟皴�>.")
	MisBeginCondition(LvCheck, ">", 11 )
	MisBeginCondition(NoMission, 671)
	MisBeginCondition(NoRecord, 671)
	MisBeginAction(AddMission, 671)
	MisBeginAction(AddTrigger, 6711, TE_KILL, 266, 10 )
	MisCancelAction(ClearMission, 671)

	MisNeed(MIS_NEED_KILL, 266, 10, 10, 10)
	
	MisHelpTalk("<t>� 蜞� 礤聍囫蝈�, 镱溧痂蝈 祉� 躅螯 赅镫� 聍囫螯�, 筢彘蝈 10 祟皴� � 蝾麝�(885,333).")
	MisResultTalk("<t>�! 蒡� 忸聃栩栩咫�! 骂� 锣 磬沭噤�.")
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

----------------------------------肥胖的小东西
	DefineMission( 672, "袜赅玎龛�", 672 )
	
	MisBeginTalk( "<t>� 猁 龛 麇泐 礤 桁咫 镳铗桠 <r蓄汔螓� 镨磴忤眍�>, 羼腓 猁 铐� 礤 怵邃桦�!<n><t>雾� 镳铐桕帼� � 耱铍钼 � 镱痱�� 蜞� 镨.<n><t>项驵塍轳蜞 筢彘蝈 <r10 蓄汔螓� 翔磴忤眍�> � 蝾麝�(885,333).")
	MisBeginCondition(LvCheck, ">", 12 )
	MisBeginCondition(NoMission, 672)
	MisBeginCondition(NoRecord, 672)
	MisBeginAction(AddMission, 672)
	MisBeginAction(AddTrigger, 6721, TE_KILL, 34, 10 )
	MisCancelAction(ClearMission, 672)

	MisNeed(MIS_NEED_KILL, 34, 10, 10, 10)
	
	MisHelpTalk("<t>添� 蝾驽 礤 躅麇蝰� 镳桧铖栩� 桁 犷朦 � 耱疣溧龛�, 眍 蓄汔螓� 镨磴忤睇 襦扈 磬 � 磬镳铖桦桉�.")
	MisResultTalk("<t>扬囫栳� 锣�, 磬溴� � 镱耠箧桦� 潆� 龛� 箴铌铎.")
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

-----------------------------------相思成灾
	DefineMission( 673, "央桫觐� 祉钽� 潴爨螯", 673 )
	
	MisBeginTalk( "<t>� 磬� 牮��� 躅滂� 脲沐礓�, 羼腓 镱溻羼栩� 磬 赅痦桤� <y2 署邂弪铟睇� 镫囹铟赅>, 蝾 忮痦蛤�� 箐圜� � 怦� 箐圜睇� 祛戾眚�.<n><t>如-玎 疋铄� 镱耱��眄铋 玎��蝽铖蜩, � 戾�� 妁� 礤猁腩 膻徕�, 祛驽� 猁螯 � 祉� 镱祛驽� 磬轵� 疋铪 镱腩忤黻�...<n><t>橡桧羼栩� 祉� <r2 署邂弪铟睇� 镫囹铟赅>. 蔓 桴 耢铈弪� 磬轵� � <r署邂弪觇-爨蝠铖�> � 蝾麝�(738,426).")
	MisBeginCondition(LvCheck, ">", 13 )
	MisBeginCondition(NoMission, 673)
	MisBeginCondition(NoRecord, 673)
	MisBeginAction(AddMission, 673)
	MisBeginAction(AddTrigger, 6731, TE_GETITEM, 1839, 2 )
	MisCancelAction(ClearMission, 673)

	MisNeed(MIS_NEED_ITEM, 1839, 2, 10, 2)
	
	MisHelpTalk("<t>朽玮� 锣� 礤 躅麇蝰� 磬轵� 疋铪 怛铕簋 镱腩忤黻�? � 黩� 猁 � 锣� 忮痦箅囫� 箐圜�?!")
	MisResultTalk("<t>扬囫栳�, � 磬溴� � 祉� 镱祛驽�!")
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


----------------------------------麻烦的雪蝙蝠
	DefineMission( 674, "铃耧铌铋磬� 脲蝮鬣� 禧", 674 )
	
	MisBeginTalk( "<t>悟 秧彐睇� 脲蝮麒� 禧� 桉躅滂� 疣玟疣骅蝈朦睇� 镨耜! 如-玎 礤泐 祉钽� 耜铗桧� 镱戾痣�! 俞彘蝈 <r10 秧彐睇� 脲蝮麒� 禧�> � 禧, 铗 怦邈� 磬泐 觐膈铉� 铗 犭嚆钿囵桁 锣�.")
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 674)
	MisBeginCondition(NoRecord, 674)
	MisBeginAction(AddMission, 674)
	MisBeginAction(AddTrigger, 6741, TE_KILL, 46, 10 )
	MisCancelAction(ClearMission, 674)

	MisNeed(MIS_NEED_KILL, 46, 10, 10, 10)
	
	MisHelpTalk("<t>蔓 妁� 龛 麇泐 礤 皲咫嚯� 镱脲珥钽� 潆� 磬�.")
	MisResultTalk("<t>悟 怦邈� 觐膈铉�: 扬囫栳� 锣� 扈� 麇腩忮�.")
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

-----------------------------------幻术材料
	DefineMission( 675, "暑脘钼耜铋 桧沭桎桢眚", 675 )
	
	MisBeginTalk( "<t>� 躅黧 忤溴螯 狍潴� � � 戾�� 羼螯 溧驽 玎觌桧囗桢, 眍 � 戾�� 礤蝮 礤钺躅滂祛泐 桧沭邃桢眚�.<n><t>橡桧羼栩� 祉� 镱驵塍轳蜞 <y5 孰钼 脲蝮麇� 禧> (743,358) � � 锣� 漯� 铗犭嚆钿囵�.")
	MisBeginCondition(LvCheck, ">", 14 )
	MisBeginCondition(NoMission, 675)
	MisBeginCondition(NoRecord, 675)
	MisBeginAction(AddMission, 675)
	MisBeginAction(AddTrigger, 6751, TE_GETITEM, 4427, 5 )
	MisCancelAction(ClearMission, 675)

	MisNeed(MIS_NEED_ITEM, 4427, 5, 10, 5)
	
	MisHelpTalk("<t>蔓 礤 镳桧羼腓 祉� 蝾 � 鞲� � 锣� 镳铖桦?")
	MisResultTalk("<t>斟�. 扬囫栳� 锣�, 蝈镥瘘 � 狍潴 忤溴螯 狍潴�.")
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


----------------------------------帕帕的污染
	DefineMission( 676, "青沭�珥屙桢 祗耦疣", 676 )
	
	MisBeginTalk( "<t>腕 � 箧� 耠桫觐�... 橡邃耱噔��弪�, 礤忸珈铈眍 恹轵� 玎 镳邃咫� 磬泐 镱皴脲龛�, 赅� 磬 膻溴� 耩噻� 磬镟溧 � 镳铗桠睇� <r枢朦爨瘅桕�-祛��觇>. 雾� 镫� � 膻溴� 疋铊扈 麇痦桦囔� � 镟麝帼� � 眍� 漕 泐腩恹. 悟镳噔��弪羼� � 蝾麝�(657,411) � 镳屣钿嚅蝈 桁 箴铌 筢桠 <r10 枢朦爨瘅桕钼-祛��觐�>. 泥 � 狍潼蝈 铖蝾痤骓�, 铐� 镟麝帼� 蜞�, 黩� 镱蝾� 蝠箐眍 铗耱桊囹�!")
	MisBeginCondition(LvCheck, ">", 15 )
	MisBeginCondition(NoMission, 676)
	MisBeginCondition(NoRecord, 676)
	MisBeginAction(AddMission, 676)
	MisBeginAction(AddTrigger, 6761, TE_KILL, 233, 10 )
	MisCancelAction(ClearMission, 676)

	MisNeed(MIS_NEED_KILL, 233, 10, 10, 10)
	
	MisHelpTalk("<t>洋�� 镱 怦屐� 锣� 铐� 蝾驽 玎镟麝嚯�, � 蔓 � 蜞� � 铖蜞忤蝈?")
	MisResultTalk("<t>袜溴� � 镱耠箧栩 桁 箴铌铎. 扬囫栳� 锣�!")
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

-----------------------------------帕帕帽子
	DefineMission( 677, "剜镱麝� 赅朦爨疣", 677 )
	
	MisBeginTalk( "<t>蔓 蝾朦觐 礤 镱潴爨轵� 龛 麇泐 镫铛钽�, 眍 祉� 铒�螯 眢骓� 锣 镱祛... 橡桧羼栩� 祉� <y2 剜镱麝� 赅朦爨疣>... 雾� 镳铖蝾 蜞觇� 牮囫桠, 黩� � 礤 祛泱 镥疱� 龛扈 篑蝾�螯. 蔓 桴 磬殇蛤� � <r枢朦爨瘅桕钼> � 蝾麝�(657,411).")
	MisBeginCondition(LvCheck, ">", 15 )
	MisBeginCondition(NoMission, 677)
	MisBeginCondition(NoRecord, 677)
	MisBeginCondition(HasRecord, 668)
	MisBeginAction(AddMission, 677)
	MisBeginAction(AddTrigger, 6771, TE_GETITEM, 1840, 2 )
	MisCancelAction(ClearMission, 677)

	MisNeed(MIS_NEED_ITEM, 1840, 2, 10, 2)
	
	MisHelpTalk("<t>蔓 疣玮� 祉� 礤 镱祛驽蝈?")
	MisResultTalk("<t>熙! 雾� 镳铖蝾 忮腓觐脲镯�. 扬囫栳� 锣�!")
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

----------------------------------铲除雪地菇
	DefineMission( 678, "灭栳磬� 镱��磬", 678 )
	
	MisBeginTalk( "<t>� 礤磬忤骟 灭栳�! 雾� 赅� 泱彡� 耦徼疣 怦� 汔漕耱� � 珏祀�, � 玎疣驵 � 铗疣怆� 磬桠睇� 膻溴�!<n><t>悟镳噔��轵羼� � 蝾麝�(952,550) � 箜梓蝾纥蝈 <r10 秧彐睇� 沭栳铟阛>. 扬囫栩� 磬桠睇� 徉狍� 觐蝾瘥� � 襦扈 蝠噔�蝰� � 蝠噔�� 疋铊� 泐耱彘 桁� 戾痃觇扈 灭栳囔�.")
	MisBeginCondition(LvCheck, ">", 16 )
	MisBeginCondition(NoMission, 678)
	MisBeginCondition(NoRecord, 678)
	MisBeginAction(AddMission, 678)
	MisBeginAction(AddTrigger, 6781, TE_KILL, 130, 10 )
	MisCancelAction(ClearMission, 678)

	MisNeed(MIS_NEED_KILL, 130, 10, 10, 10)
	
	MisHelpTalk("<t>蔓 妁� 礤 皲咫嚯� 蝾, � 鞲� � 锣� 镱镳铖桦.")
	MisResultTalk("<t>扬囫栳� 锣�, 蔓 铒�螯 祉� 镱祛汶�.")
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

-----------------------------------雪地蘑菇
	DefineMission( 679, "秧彐睇� 沭栳", 679 )
	
	MisBeginTalk( "<t>填� 泐溧 箧� 礤 镱玮铍� 祉� 磬耠噫溧螯�� 怅篑眍�, 骅痦铋 � 躅痤 镱滏囵屙眍� 镨�, 眍 � 祛泱 镱潆鬻栩� 疋铋 驽塍漕� 悟忄痤� 桤 灭栳钼.<n><t>橡桧羼栩� 祉� <5 秧彐睇� 沭栳钼> 桤 <r秧彐睇� 沭栳铟觐�>(952,550), 黩� 猁 � 铗忄痂� � 恹镨� 珏朦� 耢钽豚 铒�螯 磬耠噤栩� 怅篑铎 疋彐�-镳铈囵屙眍泐 赅徉眵桕�.")
	MisBeginCondition(LvCheck, ">", 16 )
	MisBeginCondition(NoMission, 679)
	MisBeginCondition(NoRecord, 679)
	MisBeginAction(AddMission, 679)
	MisBeginAction(AddTrigger, 6791, TE_GETITEM, 4104, 5 )
	MisCancelAction(ClearMission, 679)

	MisNeed(MIS_NEED_ITEM, 4104, 5, 10, 5)
	
	MisHelpTalk("<t>蔓 妁� 礤 镳桧羼腓 祉� 秧彐睇� 灭栳!?")
	MisResultTalk("<t>熙! � 镳尻疣耥�. � 皴轺囫 驽 磬黜� 泐蝾忤螯 铗忄�!")
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


----------------------------------迟钝的雪地蜗牛
	DefineMission( 680, "体潆屙磬�-戾潆屙磬� 箅栩赅!", 680 )
	
	MisBeginTalk( "<t><r秧彐睇� 箅栩觇> 躅螯 � 戾潆栩咫�, 眍 怦� 蜞觇 铟屙� 磬珙殡桠, � 铟屙� 箧 铐� 祉� 戾.<n><t>� 耱嚯 鬣耱� 耧铗囹� 钺 龛� � 蝾麝�(657,334). 俞彘蝈 蜞� <r10 秧彐睇� 箅栩铌> 潆� 戾��.")
	MisBeginCondition(LvCheck, ">", 17 )
	MisBeginCondition(NoMission, 680)
	MisBeginCondition(NoRecord, 680)
	MisBeginAction(AddMission, 680)
	MisBeginAction(AddTrigger, 6801, TE_KILL, 228, 10 )
	MisCancelAction(ClearMission, 680)

	MisNeed(MIS_NEED_KILL, 228, 10, 10, 10)
	
	MisHelpTalk("<t>湾� 祛腩漕� 麇腩忮�. 亦� 溴豚 礤 溴豚! 蠕栩� � 筢彘蝈 10 秧彐睇� 箅栩铌 � 蝾麝�(657,334)!")
	MisResultTalk("<t>毋痤祉铄 锣� 耧囫栳�, 蝈镥瘘 � 礤 狍潴 钺 龛� 耧铗囹�!")
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

-----------------------------------花语石
	DefineMission( 681, "肘弪铟睇� 赅戾睃", 681 )
	
	MisBeginTalk( "<t>项� 疣牦铋 <r秧彐眍� 箅栩觇> 磬躅滂蝰� 疱潢栝 <y肘弪铟睇� 赅戾睃>.<n><t>蒡铗 赅戾睃 耦蜮铕桦� 襦爨 犷汨�� 枢疣, 黩� 猁 镱��螯 �琨� 鲡弪钼.<n><t>橡桧羼栩� 祉� 潆� 铒钼 <y5 肘弪铟睇� 赅戾礤�> 桤 秧彐睇� 与栩铌. 雾� 镱�怆��� � 蝾麝�(657,334).")
	MisBeginCondition(LvCheck, ">", 18 )
	MisBeginCondition(NoMission, 681)
	MisBeginCondition(NoRecord, 681)
	MisBeginAction(AddMission, 681)
	MisBeginAction(AddTrigger, 6811, TE_GETITEM, 4105, 5 )
	MisCancelAction(ClearMission, 681)

	MisNeed(MIS_NEED_ITEM, 4105, 5, 10, 5)
	
	MisHelpTalk("<t>� 礤 狍潴 � 锣扈 疣玢钼囵桠囹� 镱赅 蔓 礤 耦桤忸腓蝈 恹镱腠栩� 祛� 镱痼麇龛�!")
	MisResultTalk("<t>扬囫栳� 锣� 钽痤祉铄. 骂� 锣 磬沭噤�!")
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

-----------------------------------蜗牛触角
	DefineMission( 682, "玉桕 箅栩觇", 682 )
	
	MisBeginTalk( "<t>� 耱噔膻 耧屦桁屙� 磬 黧怦蜮栩咫铖蜩 <r秧彐睇� 与栩铌> 钺栩帼� � 蝾麝�(657,334).<n><t>添� 礤钺躅滂祛 镱��螯... 项麇祗 铐� 蜞� 躅痤 疱嚆桊簋� 磬 镳栳腓驽龛� 麇腩忮赅 � 篑镥忄 耧��蜞螯��.<n><t>橡桧羼栩� 祉� <y5 玎祛痤驽眄 篑桕� 箅栩觇>, 黩� 猁 � 耢钽 疣珙狃囹� � 铎 忸镳铖�.")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 682)
	MisBeginCondition(NoRecord, 682)
	MisBeginAction(AddMission, 682)
	MisBeginAction(AddTrigger, 6821, TE_GETITEM, 4428, 5 )
	MisCancelAction(ClearMission, 682)

	MisNeed(MIS_NEED_ITEM, 4428, 5, 10, 5)
	
	MisHelpTalk("<t>悟 锣� 蝠遽箦蝰� 怦邈� 5 青祛痤驽眄 篑桕钼 箅栩觇.")
	MisResultTalk("<t>西屙� 躅痤! 蔓 镱祛汶� 祉� � 祛桴 铒圊!")
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

-----------------------------------寻找冰雪之心
	DefineMission( 683, "项桉觇 秧彐眍泐 皴痄鲟", 683 )
	
	MisBeginTalk( "<t>项耱铋蝈! 项祛汨蝈 祉�! 填� 镫屐�眄桕 玎疣玷腭� 耱疣眄 忤痼耦� � 箪桊噱�! 翌朦觐 <y青戾痃� 皴痄鲥> 桤 <r袜桠眍� 耥邈箴觇> � 蝾麝�(1055,738) 耢铈弪 恹脲麒螯 邈�.<n><t>橡桧羼栩� 祉� <y5 青戾痃� 皴痄弼>!")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 683)
	MisBeginCondition(NoRecord, 683)
	MisBeginAction(AddMission, 683)
	MisBeginAction(AddTrigger, 6831, TE_GETITEM, 4431, 5 )
	MisCancelAction(ClearMission, 683)

	MisNeed(MIS_NEED_ITEM, 4431, 5, 10, 5)
	
	MisHelpTalk("<t>项耧屮栩�, 祛� 镫屐�眄桕 镳� 耢屦蜩!")
	MisResultTalk("<t>添� 铟屙� 镱忮珉�, 黩� � 漕忮痂� � 礤 镳铖蝮� 玎溧黧 桁屙眍 锣�!")
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


----------------------------------纯情雪娃娃
	DefineMission( 684, "袜桠磬� 耥邈箴赅", 684 )
	
	MisBeginTalk( "<t>疹��� 耠篚�, 黩� <r袜桠磬� 耥邈箴赅> 钺豚溧弪 耧铖钺眍耱 蜮铕栩� 磬耱��� 珉�!<n><t>疹螯 � � 耠篚�, 怦� 驽 磬漕 镳桧�螯 怦� 戾瘥 镳邃铖蝾痤骓铖蜩.<n><t>悟镳噔��轵羼� � 蝾麝�(1055,738) � 筢彘蝈 <r10 袜桠睇� 耥邈箴铌>, 溧猁 镳邃铗怵囹栩� 珉�!")
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginCondition(NoMission, 684)
	MisBeginCondition(NoRecord, 684)
	MisBeginAction(AddMission, 684)
	MisBeginAction(AddTrigger, 6841, TE_KILL, 255, 10 )
	MisCancelAction(ClearMission, 684)

	MisNeed(MIS_NEED_KILL, 255, 10, 10, 10)
	
	MisHelpTalk("<t>蔓 箧� 筢桦� 10 袜桠睇� 耥邈箴铌? 湾�? 亦� 麇泐 蔓 驿蛤�?")
	MisResultTalk("<t>扬囫栳� 锣�! 蔓 镳邃铗怵囹桦� 珉�.")
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

----------------------------------幼熊出洞
	DefineMission( 685, "襄疣 戾溻彐囹", 685 )
	
	MisBeginTalk( "<t>亦觇� 骅忸蝽 赅� 戾溻邃� � 祛痤琨 铟屙� 铒囫睇! 暑沅� 桴 疣玑箐�� 玷祛� 铐� 躅��� � 磬镟溧 磬 怦艴 牝� 猁 桁 礤 镱镟腭� 磬 矬蜩, 桴 镱 铎� � 磬琨忄 \"剜蝮磬扈\". 骂� 蜞觇� 戾溻邃彘 � 疣玑箐桦� � 蝾麝�(958,661), 蝈镥瘘 铐� 礤 溧 镱觐� 龛 觐祗, 磬镟溧� 磬 怦� 骅忸�. 悟镳噔��轵羼� 蝮溧 � 筢彘蝈 <r10 秧彐睇� 戾溻彐囹>. 蒡� 漕腈眍 桴 礤祉钽� 篑镱觐栩�!")
	MisBeginCondition(LvCheck, ">", 20 )
	MisBeginCondition(NoMission, 685)
	MisBeginCondition(NoRecord, 685)
	MisBeginAction(AddMission, 685)
	MisBeginAction(AddTrigger, 6851, TE_KILL, 142, 10 )
	MisCancelAction(ClearMission, 685)

	MisNeed(MIS_NEED_KILL, 142, 10, 10, 10)
	
	MisHelpTalk("<t>体溻邃� 漕 耔� 镱� 躅��� � 磬镟溧 磬 镳铛铈桴!")
	MisResultTalk("<t>扬囫栳� 锣�, 蝈镥瘘 铐� 耱囗篁 磬 祉钽� 耧铌铋礤�!")
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

-----------------------------------雪之泪
	DefineMission( 686, "秧彐睇� 耠彗�", 686 )
	
	MisBeginTalk( "<t>� 镳桫鸽 颃溧 � 矬耱� � 镱桉赅� <r秧彐眍� 觐痤脲恹>. 妙忸��� 铐� 祀噤� 皴耱疣 令汨龛 枢瘥. � 铟屙� 躅蝈� 猁 � 礤� 怦蝠弪栩�, 眍 祛� 镱桉觇 漕 耔� 镱� 礤 镳桧羼腓 疱珞朦蜞蝾� � � 箧� 磬麒磬� 潴爨螯, 黩� 怦� � 犷朦� 扈� � 耜噻赅 溴��� 磬 眍鼽.<n><t>湾 祛汶� 猁 恹 镳桧羼蜩 祉� <y5 杨忮瘌屙睇� 耥彐桧铌>, 黩� 猁 箐铖蝾忮痂螯�� � 桴 耋耱忸忄龛�.<n><t>疹��� 耠篚�, 黩� 铐� 钺栩帼� � 蝾麝�(873,646).")
	MisBeginCondition(LvCheck, ">", 21 )
	MisBeginCondition(NoMission, 686)
	MisBeginCondition(NoRecord, 686)
	MisBeginAction(AddMission, 686)
	MisBeginAction(AddTrigger, 6861, TE_GETITEM, 4438, 5 )
	MisCancelAction(ClearMission, 686)

	MisNeed(MIS_NEED_ITEM, 4438, 5, 10, 5)
	
	MisHelpTalk("<t>项祛汨蝈 祉� 磬轵� 漕赅玎蝈朦耱忸 耋耱忸忄龛� 秧彐眍� 觐痤脲恹!")
	MisResultTalk("<t>扬囫栳�! � 蝈镥瘘 忤骟, 黩� 铐� 耋耱怏!")
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


-----------------------------------冰雪晶石
	DefineMission( 687, "秧彐睇� 牮桉蜞腚", 687 )
	
	MisBeginTalk( "<t>蓍 漯筱, 恹 耠嚯� 镱耠邃龛� 眍忸耱�? 义镥瘘 襦禧� 鲥眄 蝾忄� 磬 赘痦铎 瘥黻� � <y秧彐睇� 牮桉蜞腚> 桤 <r秧彐眍� 觐痤脲恹> 钺栩帼� � 蝾麝�(873,646). 雾� 邈� 桉镱朦珞弪, 黩� 猁 玎祛疣骅忄螯 膻溴� � 骅忸蝽 磬痼怿桴 甯 镱觐�!<n><t>橡桧羼栩� 祉� <y5 秧彐睇� 牮桉蜞腚钼>, 黩� 猁 � 耢钽 镱塍鼬� 疣珙狃囹� 赅� 铐� � 镱祛� 邈� 骅忸� 耋耱忸 镳邂疣弪 � 隋��眢� 耱囹簋.")
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 687)
	MisBeginCondition(NoRecord, 687)
	MisBeginAction(AddMission, 687)
	MisBeginAction(AddTrigger, 6871, TE_GETITEM, 4106, 5 )
	MisCancelAction(ClearMission, 687)

	MisNeed(MIS_NEED_ITEM, 4106, 5, 10, 5)
	
	MisHelpTalk("<t>泥 恹 礤 犷轵羼�, 镳铖蝾 耔朦眍 甯 礤 珉栩� � 怦� � 锣� 镱塍麒螯��.")
	MisResultTalk("<t>� 忤骟 蔓 镳桧羼腓 祉� 蝾, 黩� � 镱镳铖桦, 忸� 锣 忸珥嚆疣驿屙桢!")
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

----------------------------------幽怨雪女
	DefineMission( 688, "想圜簌�� 耥彐磬� 觐痤脲忄", 688 )
	
	MisBeginTalk( "<t>西屙� 躅痤, 黩� 蔓 蝮�! 锣� 礤 镱镟溧豚顸 磬 矬蜩 <r秧彐磬� 暑痤脲忄>? 雾� 铟屙� 铒囫睇!<n><t>篷腓 桴 疣珙珉栩� 铐� 祛泱� 恹玮囹� 耥彐眢� 狍瘙!<n><t>蔓 祉� 礤 忮痂蝈? 项镳钺箝蝈 镳钼屦栩� � 襦扈... 悟镳噔��轵羼� � 蝾麝�(873,646) � 筢彘蝈 <r10 秧彐睇� 觐痤脲�>.")
	MisBeginCondition(LvCheck, ">", 22 )
	MisBeginCondition(NoMission, 688)
	MisBeginCondition(NoRecord, 688)
	MisBeginAction(AddMission, 688)
	MisBeginAction(AddTrigger, 6881, TE_KILL, 281, 10 )
	MisCancelAction(ClearMission, 688)

	MisNeed(MIS_NEED_KILL, 281, 10, 10, 10)
	
	MisHelpTalk("<t>� 驽 忄� 泐忸痂� 黩� 铐� 铒囫睇, 镱镳钺箝蝈 妁� 疣�.")
	MisResultTalk("<t>蔓 耧疣忤腓顸 � 铋 耱桴桢�. � � 锣� 铠栳嚯��!")
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

----------------------------------惩治雪地狼
	DefineMission( 689, "袜赅玎龛� 忸腙钼", 689 )
	
	MisBeginTalk( "<t>项祛汨蝈! 项祛汨蝈! 青 祉铋 沩嚯囫� 耱�� <r秧彐睇� 骂腙钼>! 添� 蜞� 耱疣�!<n><t>项驵塍轳蜞 筢彘蝈 <r10 秧彐睇� 忸腙钼> � 蝾麝�(965,775).")
	MisBeginCondition(LvCheck, ">", 23 )
	MisBeginCondition(NoMission, 689)
	MisBeginCondition(NoRecord, 689)
	MisBeginAction(AddMission, 689)
	MisBeginAction(AddTrigger, 6891, TE_KILL, 137, 10 )
	MisCancelAction(ClearMission, 689)

	MisNeed(MIS_NEED_KILL, 137, 10, 10, 10)
	
	MisHelpTalk("<t>项祛汨蝈!")
	MisResultTalk("<t>熙! 扬囫栳� 锣�!")
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

-----------------------------------营养龟苓膏
	DefineMission( 690, "翔蜞蝈朦磬� 麇疱镟踵", 690 )
	
	MisBeginTalk( "<t>蔓 赅� 疣� 忸怵屐� 漯箧棂�!<n><t>� 蜞� 躅黧 镱镳钺钼囹� <y茵噔眍� 驽脲>, 眍 邈� 祛骓� 镱塍麒螯 蝾朦觐 桤 <r骂屙睇� 麇疱镟�> 钺栩帼� � 蝾麝�(891,750).<n><t>项驵塍轳蜞 镱祛汨蝈 祉�, � 蜞� 躅黧 铗忮溧螯 <y茵噔�眍� 驽脲>.")
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 690)
	MisBeginCondition(NoRecord, 690)
	MisBeginAction(AddMission, 690)
	MisBeginAction(AddTrigger, 6901, TE_GETITEM, 4442, 5 )
	MisCancelAction(ClearMission, 690)

	MisNeed(MIS_NEED_ITEM, 4442, 5, 10, 5)
	
	MisHelpTalk("<t>蔓 妁� 礤 躅滂腓?")
	MisResultTalk("<t>��� ���... 蒡� 磬耱��� 豚觐祚蜮�.")
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

----------------------------------长鼻子乌龟
	DefineMission( 691, "念脬铐铖�� 麇疱镟踵", 691 )
	
	MisBeginTalk( "<t>酿筱 祛�! � 蝾朦觐 黩� 忤溴� 耱疣 耋耱� 铌铍� 溴疱忭�.<n><t>雾� 赅� 钺睇� 麇疱镟蹊, 眍 � 馏豚忄扈 镱 犷赅� 镟眦桊�. � 耠嚯, 黩� 桴 磬琨忄 <r骂屙睇扈 麇疱镟踵扈>.<n><t>湾 祛汶� 猁 蔓 筢栩� <r10 骂屙睇� 麇疱镟�> � 蝾麝� (930,792), 黩钺� 钺箸溧螯 祛� 耱疣蹊 � 龛�?")
	MisBeginCondition(LvCheck, ">", 24 )
	MisBeginCondition(NoMission, 691)
	MisBeginCondition(NoRecord, 691)
	MisBeginAction(AddMission, 691)
	MisBeginAction(AddTrigger, 6911, TE_KILL, 265, 10 )
	MisCancelAction(ClearMission, 691)

	MisNeed(MIS_NEED_KILL, 265, 10, 10, 10)
	
	MisHelpTalk("<t>� 妁� 犷� 桴!")
	MisResultTalk("<t>扬囫栳� 锣�, 祉� 蝈镥瘘 礤 蜞� 耱疣�!")
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

----------------------------------野蛮硬甲蟹
	DefineMission( 692, "棋耱铌栝 牮噌桕", 692 )
	
	MisBeginTalk( "<t>令驽 祛�! 皱豚� 囵扈� <r琉铐桕疣犷�> 腓豚 戾�� 祛邈� 蝾忄疣! 泥 赅� 铐� 镱耢咫�?! 湾 镱祛驽蝈 腓 蔓 祉� 镳屣钿囹� 桁 箴铌? 悟镳噔��轵羼� � 蝾麝�(994,857) � 筢彘蝈 <r10 琉铐尻疣犷�>, 黩� 猁 漯筱桁 猁腩 礤 镱忄漤�!")
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 692)
	MisBeginCondition(NoRecord, 692)
	MisBeginAction(AddMission, 692)
	MisBeginAction(AddTrigger, 6921, TE_KILL, 143, 10 )
	MisCancelAction(ClearMission, 692)

	MisNeed(MIS_NEED_KILL, 143, 10, 10, 10)
	
	MisHelpTalk("<t>项驵塍轳蜞 筢彘蝈 10 琉铐尻疣犷� � 蝾麝�(994,857).")
	MisResultTalk("<t>斟-蹂! 义镥瘘 桁 狍溴� 礤镱忄漤� 磬镟溧螯 磬 镳铖螓� 骅蝈脲� 隋潲龛.")
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

-----------------------------------自制蟹卵酱
	DefineMission( 693, "杨篑 桤 牮噌钼 �桷", 693 )
	
	MisBeginTalk( "<t>暑沅� � 蝾朦觐 颃溧 镥疱艴嚯 骅螯, � 戾�� 镱�忤豚顸 戾黩� 镱镳钺钼囹� �梓龛鲶 桤 <y�桷 狃铐尻疣徉>. 项祛汨蝈 祉� 甯 镳桡铗钼栩�, 潆� 钽� 祉� 磬漕 <y5 哞� 琉铐尻疣徉> 钺栩帼� � 蝾麝�(994,857).")
	MisBeginCondition(LvCheck, ">", 25 )
	MisBeginCondition(NoMission, 693)
	MisBeginCondition(NoRecord, 693)
	MisBeginAction(AddMission, 693)
	MisBeginAction(AddTrigger, 6931, TE_GETITEM, 4107, 5 )
	MisCancelAction(ClearMission, 693)

	MisNeed(MIS_NEED_ITEM, 4107, 5, 10, 5)
	
	MisHelpTalk("<t>项 忤滂祛祗 � 礤 蝾祗 漕忮痂� 疋铋 皴牮弪... 蠕栩� � 镳桧羼栩� 祉� <y�轹� 琉铐桕疣徉>, 镱赅 � 礤 疣珙珉桦��!")
	MisResultTalk("<t>扬囫栳�! � 龛 觐沅� 妁� 礤 咫 蜞觐� 怅篑眍� �梓龛鳆!")
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

-----------------------------------美食专家
	DefineMission( 694, "绣耱铕囗睇� 牮栩桕", 694 )
	
	MisBeginTalk( "<t>蔓 镳钺钼嚯� 觐沅� 龛 狍潼 <y青祛痤驽眄铄 ��耦 箅栩觇>? 湾�? �! 恹 祉钽铄 镱蝈��腓, � 铟屙� 膻犭� <y青祛痤驽眄铄 ��耦 箅栩觇>.<n><t>橡桧羼栩� 祉� 桴 � 疣珈屦� 5 箨 � � 锣� 漯� 铗犭嚆钿囵�! 袜轵� 蔓 桴 耢铈弪� � 蝾麝�(802,750). 愉圜� 锣� � 镱桉赅�!")
	MisBeginCondition(LvCheck, ">", 26 )
	MisBeginCondition(NoMission, 694)
	MisBeginCondition(NoRecord, 694)
	MisBeginAction(AddMission, 694)
	MisBeginAction(AddTrigger, 6941, TE_GETITEM, 4464, 5 )
	MisCancelAction(ClearMission, 694)

	MisNeed(MIS_NEED_ITEM, 4464, 5, 10, 5)
	
	MisHelpTalk("<t>蔓 妁� 礤 镳桧羼腓 祉� 青祛痤驽眄铄 ��耦 箅栩觇? 枢� 驵朦! 皖 � 驿� 锣� � 龛�!")
	MisResultTalk("<t>天祆... 蒡� 钺溴龛�!")
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

-----------------------------------采集纯净之灵
	DefineMission( 695, "杨狃囹� 湾镱痤黜铄 皴痄鲥", 695 )
	
	MisBeginTalk( "<t>项耱铋蝈! � 锣� 礤 磬殇蛤�� 潆� 戾�� 扈眢蜿�? 悟腓黜�! 填� 漯筱 玎龛爨弪�� 爨汨彘 � 屐� 礤钺躅滂祛 <r5 湾镱痤黜 彦痄弼> 桤 <r秧彐眍泐 潴踵>. 蔓 磬殇蛤� <r秧彐睇� 潴�> � 蝾麝�(1060,805). 项蝾痤镨蝈顸, 祛� 漯筱 镳邃腩骅� 躅痤� 忸珥嚆疣驿屙桢 蝾祗 牝� 镳桧羼蛤 镥疴 <y5 湾镱痤黜 皴痄弼>.")
	MisBeginCondition(LvCheck, ">", 27 )
	MisBeginCondition(NoMission, 695)
	MisBeginCondition(NoRecord, 695)
	MisBeginAction(AddMission, 695)
	MisBeginAction(AddTrigger, 6951, TE_GETITEM, 4481, 5 )
	MisCancelAction(ClearMission, 695)

	MisNeed(MIS_NEED_ITEM, 4481, 5, 10, 5)
	
	MisHelpTalk("<t>项蝾痤镨蝈顸, � 磬沭噤� 狍溴� 锣!")
	MisResultTalk("<t>扬囫栳� 锣� 玎 镱祛, 忸� 锣 磬沭噤�.")
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

----------------------------------恼人的雪娃娃
	DefineMission( 696, "震箫赅� 耥邈箴赅", 696 )
	
	MisBeginTalk( "<t><r震箫赅� 耥邈箴赅> 镱耱��眄� 耦玟喔� 筱痤珞 骅蝈��� 溴疱忭�! 湾 镱祛汶� 腓 猁 蔓 骅蝈��� 筢栩� <r10 震箫觇� 耥邈箴铌> � 蝾麝�(908,842).")
	MisBeginCondition(LvCheck, ">", 28 )
	MisBeginCondition(NoMission, 696)
	MisBeginCondition(NoRecord, 696)
	MisBeginAction(AddMission, 696)
	MisBeginAction(AddTrigger, 6961, TE_KILL, 256, 10 )
	MisCancelAction(ClearMission, 696)

	MisNeed(MIS_NEED_KILL, 256, 10, 10, 10)
	
	MisHelpTalk("<t>俞彘, 镱驵塍轳蜞, 10 震箫觇� 耥邈箴铌")
	MisResultTalk("<t>蔓 磬耱��� 沐痤�!")
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

----------------------------------原始雪人
	DefineMission( 697, "橡桁栩桠睇� 耥彐睇� 麇腩忮�", 697 )
	
	MisBeginTalk( "<t>橡桠弪! 蔓 躅蜩蝈 漕赅玎螯, 黩� 恹 磬耱��� 耢咫 � 铗忄骓 沐痤�? 悟腓黜�! � 锣� 镳尻疣耥 眈 � 皲咫囹�!<n><t>俞彘蝈 <r10 慑蜩> � 蝾麝�(1495,667) � 蔓 桁 漕赅驽蝈, 黩� 蔓 沐痤�!")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 697)
	MisBeginCondition(NoRecord, 697)
	MisBeginAction(AddMission, 697)
	MisBeginAction(AddTrigger, 6971, TE_KILL, 98, 10 )
	MisCancelAction(ClearMission, 697)

	MisNeed(MIS_NEED_KILL, 98, 10, 10, 10)
	
	MisHelpTalk("<t>湾... 依觇� 沐痤邂 磬� 礤 磬漕.....")
	MisResultTalk("<t>� 忸� � � 礤 耦祉邂嚯�� � 锣� 龛 磬 扈眢蝮.")
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

-----------------------------------失踪事件
	DefineMission( 698, "项蝈��眄�� 蜞轫�", 698 )
	
	MisBeginTalk( "<t>� 隋潲礤 鬣耱� 镳铒噤帼� 膻滂 � 祉� 赅驽蝰� 黩� 忤眍� 铎� 慑蜩 钺栩帼� � 蝾麝�(1495,667). 俞彘蝈 桴 � 镳桧羼栩� � 漕赅玎蝈朦耱忸 镱徨潲 磬� 龛扈 <y5 暑泸彘 慑蜩>.")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 698)
	MisBeginCondition(NoRecord, 698)
	MisBeginAction(AddMission, 698)
	MisBeginAction(AddTrigger, 6981, TE_GETITEM, 4446, 5 )
	MisCancelAction(ClearMission, 698)

	MisNeed(MIS_NEED_ITEM, 4446, 5, 10, 5)
	
	MisHelpTalk("<t>蔓 桴 筢桦�? 锗-踵-踵! 湾 耢屮栩�! � 礤 忤骟 漕赅玎蝈朦耱� 桴 耢屦蜩!")
	MisResultTalk("<t>蔓 玎耠箧桦� 磬沭噤�!")
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

----------------------------------争强好胜的猪
	DefineMission( 699, "项徨溧 磬� 疋桧��扈!", 699 )
	
	MisBeginTalk( "<t>伍,伍! 添� 耱疣�! � 犷� 蔓躅滂螯 玎 镳邃咫� 隋潲龛! 蒡� 隋蜞桢 砚桧铌瘥臌 戾�� 矬汔! 俞彘蝈 <r10 令邂 疋桧铌瘥腩�> � 蝾麝�(1453,560), 黩钺� � 祛� 耧铌铋眍 襦� 恹躅滂螯 玎 镳邃咫� 泐痤漶觇� 耱屙!")
	MisBeginCondition(LvCheck, ">", 30 )
	MisBeginCondition(NoMission, 699)
	MisBeginCondition(NoRecord, 699)
	MisBeginAction(AddMission, 699)
	MisBeginAction(AddTrigger, 6991, TE_KILL, 296, 10 )
	MisCancelAction(ClearMission, 699)

	MisNeed(MIS_NEED_KILL, 296, 10, 10, 10)
	
	MisHelpTalk("<t>蠕栩� 磬 觐礤� � 镱觐眵栩� � 令邂� 砚桧铌瘥豚扈!")
	MisResultTalk("<t>伍! � 溧驽 礤 珥帼 赅� 锣� � 犭嚆钿囵栩�!")
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

----------------------------------捣鬼的雪娃娃
	DefineMission( 800, "茹痂忄� 耥邈箴赅", 800 )
	
	MisBeginTalk( "<t>� 蝮� 铗忮鬣� 玎 徨珙镟耥铖螯 蝮痂耱钼 � 桧铖蝠囗鲥�! 皖 溧驽 � 礤 � 耔豚� 耧疣忤螯�� 襦祛耱��蝈朦眍 � 镳钺脲祛� <r茹痂忸� 耥邈箴觇>. 雾� 蜞� 疣琨沭嚯桉�, 黩� 磬镟溧 磬 怦艴, 潴爨� 黩� � 怦邈� 腓 桡疣, 眍 箧� 铟屙� 祉钽� 膻溴� 镱镟腩 � 犷朦龛鳆 桤-玎 桴 疣玮脲麇龛�! 悟镳噔��轵羼� � 蝾麝�(1746,530) � 磬赅骅蝈 <r10 茹痂恹� 秧邈箴铌>!")
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 800)
	MisBeginCondition(NoRecord, 800)
	MisBeginAction(AddMission, 800)
	MisBeginAction(AddTrigger, 8001, TE_KILL, 257, 10 )
	MisCancelAction(ClearMission, 800)

	MisNeed(MIS_NEED_KILL, 257, 10, 10, 10)
	
	MisHelpTalk("<t> 俞彘蝈 10 <r茹痂忄� 耥邈箴赅>")
	MisResultTalk("<t> 义镥瘘 蝮痂耱� � 徨珙镟耥铖蜩, 耧囫栳� 忄�.")
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

-----------------------------------灵魂宝石
	DefineMission( 801, "燕祛鲡弪 潴踵", 801 )
	
	MisBeginTalk( "<t>埋� 犷朦 � 犷朦 礤聍囫蝽 耠篦噱� 镳铊聃钿栩 � 扈疱. � 桁 磬漕 黩�-蝾 溴豚螯! 塔滂 耱嚯� 镳铒噤囹� � 蝾麝�(1746,530). � 蝈� 戾耱圊 钺栩帼� <r茹痂恹� 耥邈箴觇> � 忸珈铈眍 桁屙眍 铐� 桁妣� � 铎� 礤镱耩邃耱忮眄铄 铗眍龛�.<n><t>悟镳噔��轵羼� � 蝾麝�(1746,530) � 镳桧羼栩� 祉� � <r茹痂恹� 耥邈箴铌> <y5 燕祛鲡弪钼 潴踵>, 黩� 猁 恹�耥栩� 镳梓囫蝽� 铐� � 桉麇珥钼屙��� 膻溴� 桦� 礤�.")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 801)
	MisBeginCondition(NoRecord, 801)
	MisBeginAction(AddMission, 801)
	MisBeginAction(AddTrigger, 8011, TE_GETITEM, 4108, 5 )
	MisCancelAction(ClearMission, 801)

	MisNeed(MIS_NEED_ITEM, 4108, 5, 10, 5)
	
	MisHelpTalk("<t> 蔓 疣玟钺� 5 <y燕祛鲡弪钼 潴踵>?")
	MisResultTalk("<t>熙! 扬囫栳� 锣�!<n><t>� 皴轺囫 驽 铗镳噔膻 燕祛鲡弪� 捏踵 � 泐痤� 潆� 犷脲� 蝙囹咫钽� 疣耨脲漕忄龛�!")
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

----------------------------------滥杀无辜
	DefineMission( 802, "如徼屙桢 祀噤屙鲥�", 802 )
	
	MisBeginTalk( "<t>� 躅黧, 黩钺� 蔓 筢桦� <r10 令邂 麇疱镟�> 潆� 戾��! 务钺 镳梓桧 礤�, 镳铖蝾 铐� 祉� 礤 眇噔�蝰�.<n><t>� 锣� 铗犭嚆钿囵�.")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 802)
	MisBeginCondition(NoRecord, 802)
	MisBeginAction(AddMission, 802)
	MisBeginAction(AddTrigger, 8021, TE_KILL, 141, 10 )
	MisCancelAction(ClearMission, 802)

	MisNeed(MIS_NEED_KILL, 141, 10, 10, 10)
	
	MisHelpTalk("<t>添� 赅驽蝰�, 黩� 蔓 忡�腓顸 祉� 镱祛鼽. � 礤 忤骟 锣� 镱祛.")
	MisResultTalk("<t>悟腓黜�! 骂� 锣 磬沭噤�.")
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

-----------------------------------难以愈合的伤口
	DefineMission( 803, "湾桉鲥腓爨� 疣磬", 803 )
	
	MisBeginTalk( "<t>湾 蜞� 溧忭� � 猁� 疣礤� <r殃咫弪铎 忸桧铎>. � 羼腓 猁 礤 祛痤琨 � 蜞� 猁 � 桉蝈赅� 牮钼, 眍 玟屮龛� 觌桁囹 礤 镱玮铍�弪 猁耱痤 鲨痍箅桊钼囹� 牮钼� � 疣磬 磬鬣豚 玎骅忄螯.<n><t>皖! � 戾�� 磬鬣豚顸 汔磴疱磬 � � 耠嚯, 黩� <y项滏囵屙睇� 麇疱镟� 镟眦桊�> 桤 <r秧彐眍� 麇疱镟蹊> 钺栩帼� � 蝾麝�(2165,462)耧铖钺屙 桤徉忤螯 戾�� 铗 沩桢龛�.<n><t>橡桧羼栩� 祉� <y5 项滏囵屙睇� 麇疱镟桴 镟眦桊彘>!")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 803)
	MisBeginCondition(NoRecord, 803)
	MisBeginAction(AddMission, 803)
	MisBeginAction(AddTrigger, 8031, TE_GETITEM, 4468, 5 )
	MisCancelAction(ClearMission, 803)

	MisNeed(MIS_NEED_ITEM, 4468, 5, 10, 5)
	
	MisHelpTalk("<t>篷腓 蔓 祉� 礤 镳桧羼弪� 5 项滏囵屙睇� 麇疱镟桴 镟眦桊彘, 蝾 � 箪痼 铗 汔磴疱睇!")
	MisResultTalk("扬囫栳� 锣�, 蔓 耧囫腓 祉� 骅珥�.")
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

----------------------------------堕落之羊
	DefineMission( 804, "铃珞祉�� 吴鲟", 804 )
	
	MisBeginTalk( "<t>蓍, 恹 忤溴腓 � <r铃珞祉 钼弼> � 蝾麝�(226,590)? � 耠嚯, 黩� 铐� 猁腓 镳铖螓扈 钼鲟扈, 眍 桤-玎 沩邂� 令汨龛 枢瘥 祗蜩痤忄腓 � 桴 箧囫睇� 祛眈蝠钼!<n><t>蒡� 襦祛 忸镫铢屙桢 珉� � 磬赅玎龛� 膻��� 玎 沭艴�.<n><t>酿筱 祛�, 镱祛汨 磬� � 桤徉恻 铗 钽� 镳铌��蜩� 磬� 镱窀腩�! 俞彘 <r10 铃珞祉 钼弼>. 蒡桁 禧 皲咫噱� 恹珙� 令汔�! 锣� 礤 桧蝈疱耥�?!")
	MisBeginCondition(LvCheck, ">", 36 )
	MisBeginCondition(NoMission, 804)
	MisBeginCondition(NoRecord, 804)
	MisBeginAction(AddMission, 804)
	MisBeginAction(AddTrigger, 8041, TE_KILL, 297, 10 )
	MisCancelAction(ClearMission, 804)

	MisNeed(MIS_NEED_KILL, 297, 10, 10, 10)
	
	MisHelpTalk("<t>蔓 妁� 礤 筢桦� 10 铃珞祉 钼弼?")
	MisResultTalk("<t>扬囫栳� 玎 镱祛! 湾 犷轵羼� 沩邂� 令泐�!")
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

-----------------------------------猛蝎之毒
	DefineMission( 805, "咪 耜铕镨铐�", 805 )
	
	MisBeginTalk( "<t>橡桠弪! 蔓 赅� 疣� 忸怵屐�! 填� 镱漯筱� <b袜磬> 猁豚 箧嚯屙� 耜铕镨铐铎 � 皴轺囫 脲骅� � 觐戾. 昨� 猁 耧囫蜩 甯 祉� 眢骓� <y5 署钼� 耜铕镨铐�> 桤 <r砚桊屣 耜铕镨铐钼> � 蝾麝�(2370,548). � 猁 � 襦� 聃钿桦 眍 礤 祛泱 铖蜞忤螯 袜眢 钿眢. 蔓 祉� 镱祛驽蝈?")
	MisBeginCondition(LvCheck, ">", 37 )
	MisBeginCondition(NoMission, 805)
	MisBeginCondition(NoRecord, 805)
	MisBeginAction(AddMission, 805)
	MisBeginAction(AddTrigger, 8051, TE_GETITEM, 4482, 5 )
	MisCancelAction(ClearMission, 805)

	MisNeed(MIS_NEED_ITEM, 4482, 5, 10, 5)
	
	MisHelpTalk("<t>填彘 镱漯筱� 镱祛驽� 蝾朦觐 <y署钼� 耜铕镨铐�> 镳栝蜩 � 皴��!")
	MisResultTalk("<t>扬囫栳�! 蔓 耧囫腓 甯!")
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

----------------------------------开路先锋
	DefineMission( 806, "翔铐屦", 806 )
	
	MisBeginTalk( "<t>橡桠弪! 蔓 忸怵屐�!<n><t>帖 躅蜩� 铗镳噔栩� � 袜眍� � 矬蝈耱忤� � 礤桤忮溧眄 耱疣睇, 眍 磬 磬� 矬蜩 镱�忤腩顸 皴瘘哥眍� 镳屣�蝰蜮桢!<n><t>� 蝾麝�(1981,530) 钺栩帼� <r项��痦 戾溻邃�>. 雾� 铟屙� 铒囫睇� � 祛泱� 筢栩� 麇腩忮赅. 项驵塍轳蜞 筢彘蝈 <r10 项��痦 戾溻邃彘> � 铖忸犷滂蝈 磬� 漕痤泱. 帖 漯� 锣� 铗犭嚆钿囵桁.")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(NoMission, 806)
	MisBeginCondition(NoRecord, 806)
	MisBeginAction(AddMission, 806)
	MisBeginAction(AddTrigger, 8061, TE_KILL, 259, 10 )
	MisCancelAction(ClearMission, 806)

	MisNeed(MIS_NEED_KILL, 259, 10, 10, 10)
	
	MisHelpTalk("<t>� 锣� 镱镳铖桦 铟桉蜩螯 磬� 漕痤泱 铗 镱��痦 戾溻邃彘.")
	MisResultTalk("<t>扬囫栳� 锣�! 义镥瘘 禧 祛驽� 铗镳噔��螯�� � 矬蝈耱忤�!")
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

-----------------------------------雪影剑
	DefineMission( 807, "橡桤疣黜 戾�", 807 )
	
	MisBeginTalk( "<t>橡桠弪! 蔓 珥噱蝈 镱麇祗 ��漕� � (2269,590) 狃钿�� 橡桤疣黜 戾黜桕�? 雾� 铛疣�� <y橡桤疣黜 戾�>. 添� 铟屙� 铟屙� 躅麇蝰� 镱耢铗疱螯 磬 礤泐. 橡桧羼栩� 祉� 邈� 玎 忸珥嚆疣驿屙桢.")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(NoMission, 807)
	MisBeginCondition(NoRecord, 807)
	MisBeginAction(AddMission, 807)
	MisBeginAction(AddTrigger, 8071, TE_GETITEM, 4109, 1 )
	MisCancelAction(ClearMission, 807)

	MisNeed(MIS_NEED_ITEM, 4109, 1, 10, 1)
	
	MisHelpTalk("<t>� 妁� 礤 忤骟 镳桤疣黜 戾� � 祛桴 痼赅�!")
	MisResultTalk("<t>锣�! 雾 镳尻疣皴�!")
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

----------------------------------武士亡魂
	DefineMission( 808, "捏 忸桧�", 808 )
	
	MisBeginTalk( "<t>填驽� � 耱疣皴眈, 蜞� 赅� � 耠� 耱铐� 镱汨狲桴 忸桧钼. 蒡� 耱铐� 礤 溧 祉� 镱觐�! � 蝾麝�(2269,470) 铐� 铖钺屙眍 耔朦睇�.<n><t>� 潴爨� � 耱铐� 桤溧 <r殃咫弪�-忸桧�>. 项驵塍轳蜞 铗镳噔��轵羼� � 蝾麝�(2269,470) � 筢彘蝈 10 殃咫弪钼-忸桧钼, 黩� 猁 铗镳噔栩� 桴 � 扈� 桧铋 � 黩� 猁 铐� 礤 祗麒腓顸 磬 铋 珏祀�.")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(NoMission, 808)
	MisBeginCondition(NoRecord, 808)
	MisBeginAction(AddMission, 808)
	MisBeginAction(AddTrigger, 8081, TE_KILL, 268, 10 )
	MisCancelAction(ClearMission, 808)

	MisNeed(MIS_NEED_KILL, 268, 10, 10, 10)
	
	MisHelpTalk("<t>� 怦� 妁� 耠� 耱铐�!")
	MisResultTalk("<t>蔓 铟屙� 漕狃�! 扬囫栳� 忄�.")
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

----------------------------------吸血的怪物
	DefineMission( 809, "左漕忤-忄祜桊", 809 )
	
	MisBeginTalk( "t>� <p彦疱狃屙睇� 躜圊> 钺栩噱� 耋耱忸, 觐蝾痤� 镨蜞弪�� 麇腩忮麇耜铋 牮钼.<n><t>剜躜葛� 犷�蝰� 蜞� 疣犷蜞螯! 项祛汨蝈 磬� 筢栩� <r10 隋蝮麒� 禧�-忄祜桊钼>!")
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 809)
	MisBeginCondition(NoRecord, 809)
	MisBeginAction(AddMission, 809)
	MisBeginAction(AddTrigger, 8091, TE_KILL, 82, 10 )
	MisCancelAction(ClearMission, 809)

	MisNeed(MIS_NEED_KILL, 82, 10, 10, 10)
	
	MisHelpTalk("<t>蔓 妁� 礤 筢桦� 桴, 躜葛� � 铒囫眍耱�.")
	MisResultTalk("<t>扬囫栳� 锣� 玎 镱祛!")
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

-----------------------------------鼹鼠的安全帽
	DefineMission( 810, "枢耜� 牮铗�-痼漕觐镟", 810 )
	
	MisBeginTalk( "<t>� 躅黧 镱轵� � 梭塍 � 剜躜� 镱桡疣螯, 眍 磬� 礤 矬耜帼� 剜躜葛� 桤-玎 蝾泐, 黩� 磬 磬� 礤� 枢耦�! 湾 镱祛汶� 猁 蔓 磬�? 橡桧羼栩� <y2 枢耜� 牮铗�-痼漕觐镟>, 黩� 猁 磬� 镳铒篑蜩腓 � 躜�. 帖 锣� 铗犭嚆钿囵桁.<n><t>蒡� 赅耜� 蔓 耢铈弪� 镱塍麒螯 筢桠 署铗� 痼漕觐镟!")
	MisBeginCondition(LvCheck, ">", 32 )
	MisBeginCondition(NoMission, 810)
	MisBeginCondition(NoRecord, 810)
	MisBeginAction(AddMission, 810)
	MisBeginAction(AddTrigger, 8101, TE_GETITEM, 4448, 2 )
	MisCancelAction(ClearMission, 810)

	MisNeed(MIS_NEED_ITEM, 4448, 2, 10, 2)
	
	MisHelpTalk("<t>枢� 驽 蔓 礤 镱殪弪�, 黩� 徨� 赅耦� 磬� 礤 矬耱�� � 剜躜�!?")
	MisResultTalk("<t>扬囫栳� 锣�!")
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


-----------------------------------奇异的泥浆
	DefineMission( 811, "企蜿�� 沭�琰", 811 )
	
	MisBeginTalk( "<t>� � 赍! 体�� 囹嚓钼嚯� 赅赅�-蝾 戾痃赅� 牦鬣 沭�玷! 鸥 躜葛� 磬琨忄 <r灭�玷腓�>. � 溧驽 礤 祛汶� 镳邃耱噔栩�, 黩� 觐祛� 沭�玷 祛驽� 骅螯, � 蝈� 犷脲� 磬镟溧螯 磬 膻溴�! 橡桧羼栩� 祉� � <r灭�玷腓> <y5 灭�珥 腓镪桴 赍犟钼>, 黩� 猁 犷脲� 镱漯钺眍 桤篦栩� 铗 翦眍戾�.")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 811)
	MisBeginCondition(NoRecord, 811)
	MisBeginAction(AddMission, 811)
	MisBeginAction(AddTrigger, 8111, TE_GETITEM, 4363, 5 )
	MisCancelAction(ClearMission, 811)

	MisNeed(MIS_NEED_ITEM, 4363, 5, 10, 5)
	
	MisHelpTalk("<t>悟镳噔��轵羼� � <p剜躜�> � 镳桧羼栩� 祉� 铗 蝮溧 <y5 灭�珥 腓镪桴 赍犟钼>!")
	MisResultTalk("<t>熙 耧囫栳� 锣�! � 礤戾潆屙眍 磬黜� 耱噔栩� 铒� � 铋 沭�琰�!")
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

----------------------------------报复泥浆怪
	DefineMission( 812, "体耱� 沭�玷", 812 )
	
	MisBeginTalk( "<t>� 躅蝈� � <p彦疱狃屙睇� 剜躜圊> 礤祉钽� 镱 漕猁忄螯 畜潲, 眍 磬 戾�� 磬镟腓 <r灭�玷腓>. 蔓 礤 祛汶� 猁 筢栩� 10 灭�玷腓 � 蝾麝�(934,2747), 黩� 猁 祛骓� 猁腩 徨� 犷�珥� 灭�玷腓 漕猁忄螯 痼潴?")
	MisBeginCondition(LvCheck, ">", 34 )
	MisBeginCondition(NoMission, 812)
	MisBeginCondition(NoRecord, 812)
	MisBeginAction(AddMission, 812)
	MisBeginAction(AddTrigger, 8121, TE_KILL, 253, 10 )
	MisCancelAction(ClearMission, 812)

	MisNeed(MIS_NEED_KILL, 253, 10, 10, 10)
	
	MisHelpTalk("<t>添� 漕 耔� 镱� 耱疣�!")
	MisResultTalk("<t>扬囫栳�, 耧囫栳� 忄�!")
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


----------------------------------铁爪鼹鼠
	DefineMission( 813, "署铗-痼漕觐�", 813 )
	
	MisBeginTalk( "<t>�, 赅� 疣� 玎赅眵桠嚯 疋铊 桉耠邃钼囗�� � <p彦疱狃屙睇� 躜圊>, 赅� 磬 戾�� 磬镟腓 <r署铗�-痼漕觐稃>. 湾 镱祛汶� 猁 蔓 祉� � 玎忮瘌屙桢� 祛桴 桉耠邃钼囗栝? 俞彘蝈 <r10 署铗钼 畜漕觐镱�> 戾桴 祛桁 桉耠邃钼囗���!")
	MisBeginCondition(LvCheck, ">", 35 )
	MisBeginCondition(NoMission, 813)
	MisBeginCondition(NoRecord, 813)
	MisBeginAction(AddMission, 813)
	MisBeginAction(AddTrigger, 8131, TE_KILL, 88, 10 )
	MisCancelAction(ClearMission, 813)

	MisNeed(MIS_NEED_KILL, 88, 10, 10, 10)
	
	MisHelpTalk("<t>蔓 礤 筢桦� 妁� 10 署铗钼 畜漕觐镱�!")
	MisResultTalk("<t>扬囫栳�! 蔓 祉� 铟屙� 镱祛汶�!")
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

-----------------------------------忍者手里剑
	DefineMission( 814, "体� 龛礓��", 814 )
	
	MisBeginTalk( "<t><r署铗-龛礴�> 桉镱朦珞弪 箜桕嚯铄 铕箧桢. 蒡� 铕箧桢 眍耔� 磬玮囗桢 <y体� 龛礓��>. 蒡� 铟屙� 躅痤� 铕箧桢, 铐� 铒囫眍� �, � 蝾 驽 怵屐�, 蝾黜� 狳邋.<n><t>橡桧羼栩� 祉� <y10 戾麇� 龛礓��>. 署铗钼 龛礴� 蔓 怦蝠弪栩� � <p彦疱狃屙睇� 躜圊 2>. � 狍潴 驿囹� 锣� 蝮�!")
	MisBeginCondition(LvCheck, ">", 33 )
	MisBeginCondition(NoMission, 814)
	MisBeginCondition(NoRecord, 814)
	MisBeginAction(AddMission, 814)
	MisBeginAction(AddTrigger, 8141, TE_GETITEM, 3935, 10 )
	MisCancelAction(ClearMission, 814)

	MisNeed(MIS_NEED_ITEM, 3935, 10, 10, 10)
	
	MisHelpTalk("<t>蔓 妁� 礤 镳桧羼� 祉� 体� 丸礓��?")
	MisResultTalk("<t>� 铟屙� 锣� 犭嚆钿囵屙!")
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

-----------------------------------考验
	DefineMission( 837, "义耱", 837 )
	
	MisBeginTalk( "<t>蔓 � 镥疴 � <p疹脘彘耜铎 铒腩蝈>? � 筲屦屙, 黩� 蔓 棂栩� 镳桕膻麇龛� � 疣犷蝮.<n><t>项麇祗 猁 锣� 礤 镳铋蜩 祛� 桉稃蜞龛� � 羼腓 � 忄� 镱塍麒蝰� � 溧� 潆� 锣� 疣犷蝮!.<n><t>俞彘蝈 <r5 物睇� 蝮珏祉 忸桧钼> � 忸玮疣轵羼� 觐 祉�.")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(NoMission, 837)
	MisBeginCondition(NoRecord, 837)
	MisBeginAction(AddMission, 837)
	MisBeginAction(AddTrigger, 8371, TE_KILL, 248, 5 )
	MisCancelAction(ClearMission, 837)

	MisNeed(MIS_NEED_DESP, "俞彘蝈 <r5 物睇� 蝮珏祉 忸桧钼> � 忸玮疣轵羼� 觐 祉�.")
	MisNeed(MIS_NEED_KILL, 248, 5, 10, 5)

	MisHelpTalk("蔓 礤 镳铠腓 祛� 桉稃蜞龛�! 项镳钺箝蝈 妁� 疣� 聃钿栩� � 筢栩� 5 物睇� 蝮珏祉 忸桧钼!")
	MisResultTalk("疹痤! 蔓 玎耠箧桦� 祛� 漕忮痂�.")
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


-----------------------------------考验
	DefineMission( 838, "义耱", 838 )
	
	MisBeginTalk( "<t>疹��... 俞栩� <r5 物睇� 蝮珏祉 忸桧钼> � 忸� � 囵扈彘 桤 <r30 物睇� 蝮珏祉 忸桧钼> 耧疣忤螯�� 龛 赅驿! 念赅骅 黩� 螓 礤 蝠篑 � 筢彘 <r30 物睇� 蝮珏祉 忸桧钼>.")
	--MisBeginCondition(LvCheck, ">", 40 )
	MisBeginCondition(HasRecord, 837)
	MisBeginCondition(NoMission, 838)
	MisBeginCondition(NoRecord, 838)
	MisBeginAction(AddMission, 838)
	MisBeginAction(AddTrigger, 8381, TE_KILL, 248, 30 )
	MisCancelAction(ClearMission, 838)
	
	MisNeed(MIS_NEED_DESP, "念赅骅 黩� 螓 礤 蝠篑 � 筢彘 <r30 物睇� 蝮珏祉 忸桧钼>.")
	MisNeed(MIS_NEED_KILL, 248, 30, 10, 30)
	
	MisHelpTalk("蔓 妁� 礤 漕赅玎腓 祉� 黩� 蔓 礤 镳铖蝾� 镳铛钿桁弼!")
	MisResultTalk("蔓 铌噻嚯桉� 漕耱铋睇� 忸桧铎!")
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


-----------------------------------真正的目的
	DefineMission( 839, "亦轫�� 镳梓桧�", 839 )
	
	MisBeginTalk( "<t>悟腓黜�! � 忤骟, 黩� 恹 泐蝾恹 � 蝾祗, 黩� 猁 � 溧� 潆� 锣� 疣犷蝮! 悟礤耔蝈顸 耦 怦彘 皴瘘哥眍耱 � 礤�!<n><t>� 耦徼疣� 觐腚尻鲨铐睇� 镳邃戾螓, � � 祛彘 觐腚尻鲨� 礤 踱囹噱� <y殷珏祉钽� 蜞>. 橡桧羼栩� 祉� <y12 殷珏祉 蝾�>, 黩� 猁 � 耢钽 恹狃囹� 襦禧� 躅痤� 桤 龛�.")
	--MisBeginCondition(LvCheck, ">", 40 )
	MisBeginCondition(HasRecord, 838)
	MisBeginCondition(NoMission, 839)
	MisBeginCondition(NoRecord, 839)
	MisBeginAction(AddMission, 839)
	MisBeginAction(AddTrigger, 8391, TE_GETITEM, 4914, 12 )
	MisCancelAction(ClearMission, 839)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <b谚祛眢 描腧屦�> � 蝾麝�(646,2088) <12 殷珏祉 蝾�>.")
	MisNeed(MIS_NEED_ITEM, 4914, 12, 10, 12)
	
	MisHelpTalk("蔓 妁� 礤 镳桧羼腓 祉� 12 殷珏祉 勹蝾�.")
	MisResultTalk("<t>� 令驽! 埋� 12 勹蝾� 蜞觇� 镳尻疣耥, 黩� � 蝈��� � 恹犷疱! 扬囫栳� 锣� 犷朦�.")
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



-----------------------------------根雕爱好者
	DefineMission( 840, "蓓蝮玷囫�", 840 )
	
	MisBeginTalk( "<t>橡桠弪! � 玎龛爨� 桉牦耥 溴腩�. � 恹疱玎� 桤 觐痦彘 溴疱恻邂 牮囫桠 镱溴腙�, 蜞觇� 赅�: 忄琨, 忮腙� � 妁� 祉钽� 麇泐.<n><t>� 戾�� 玎觐眵桦桉� 觐痦�, 礤 祛汶� 猁 蔓 镳桧羼蜩 祉� <y5 蔓耦貘桴 觐痦彘> 桤 <r蓓蜞>?")
	MisBeginCondition(LvCheck, ">", 42 )
	--MisBeginCondition(HasRecord, 838)
	MisBeginCondition(NoMission, 840)
	MisBeginCondition(NoRecord, 840)
	MisBeginAction(AddMission, 840)
	MisBeginAction(AddTrigger, 8401, TE_GETITEM, 4915, 5 )
	MisCancelAction(ClearMission, 840)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <y5 蔓耦貘桴 觐痦彘> <b犁箴 琉桤> � 蝾麝� (622,2106)")
	MisNeed(MIS_NEED_ITEM, 4915, 5, 10, 5)
	
	MisHelpTalk("扬囫栳� 黩� 疱腓 祉� 镱祛鼽! 橡桧羼栩� 祉� 5 蔓耦貘桴 觐痦彘.")
	MisResultTalk("扬囫栳�! 央邃簋� 忮 觐蝾痼� � 皲咫帼 � 狍溴� 锣 耱囹��!")
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

-----------------------------------采样
	DefineMission( 841, "悟犷� 钺疣琏钼", 841 )
	
	MisBeginTalk( "<t>蔓 珥噱蝈 赅� 皲咫囹� 蜞�, 黩� 猁 疋鬻� 泐疱腓 怦邈溧? 雾� 皲咫囗� 桤 耧弼栲朦睇� 觐痦彘, 觐蝾瘥� 祛骓� 磬轵� � 忸耱铌� 铗 颃溧. 武磬觐, 磬 矬蜩 狍溴� 铟屙� 祉钽� 耱疣 祛眈蝠钼.")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 844)
	MisBeginCondition(NoMission, 841)
	MisBeginCondition(NoRecord, 841)
	MisBeginAction(AddMission, 841)
	MisBeginAction(AddTrigger, 8411, TE_GETITEM, 4915, 1 )
	MisBeginAction(AddTrigger, 8412, TE_KILL, 107, 5 )
	MisCancelAction(ClearMission, 841)
	
	MisNeed(MIS_NEED_DESP, "俞栩� <r5 蓓蝾�> � 镳桧羼蜩 钿桧 <y蔓耦貘栝 觐疱睃> <b燕 填痂> � 蝾麝�(628,2095).")
	MisNeed(MIS_NEED_ITEM, 4915, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 107, 5, 10, 5)
	
	MisHelpTalk("橡桧羼栩� 祉� 怦� 礤钺躅滂祛�, 黩� 猁 � 皲咫嚯� 疋鬻觇, 觐蝾瘥� 狍潴� 泐疱螯 怦� 忮黜�!")
	MisResultTalk("扬囫栳� 锣�! 骂珈铈眍 � 狍潴� 蔓 桴 筲桎栩�!")
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

-----------------------------------不灭的蜡烛
	DefineMission( 842, "湾汔耔爨� 疋鬻�", 842 )
	
	MisBeginTalk( "<t>� 蝾朦觐 黩� 玎觐眵桦� 桤篦囹� 戾蝾� 桤泐蝾怆屙�� 忮黜�-泐��� 疋鬻彘. � 躅黧 镱镳钺钼囹� 镳桡铗钼栩� 犷朦� 镟痱棹 疋鬻彘, 潆� 钽� 祉� 磬漕 <y15 蔓耦貘桴 觐痦彘>.")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 841)
	MisBeginCondition(NoMission, 842)
	MisBeginCondition(NoRecord, 842)
	MisBeginAction(AddMission, 842)
	MisBeginAction(AddTrigger, 8421, TE_GETITEM, 4915, 15 )
	MisCancelAction(ClearMission, 842)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <y15 恹耦貘桴 觐痦彘> <b燕 填痂> � 蝾麝�(628,2095).")
	MisNeed(MIS_NEED_ITEM, 4915, 15, 10, 15)
	
	MisHelpTalk("橡桧羼栩� 祉� 桧沭邃桢眚� 潆� 桤泐蝾怆屙�� 疋鬻彘 � � 镱溴膻顸 � 锣扈 漕躅漕� � 桴 镳钿噫!")
	MisResultTalk("扬囫栳�! 骂� 锣 漕��!")
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

-----------------------------------黑色怪兽
	DefineMission( 843, "族痦铄 黧漕忤", 843 )
	
	MisBeginTalk( "<t>湾 蜞� 溧忭� � 忤溴� � 玟屮龛� 脲襦� 赘痦 祛眈蝠钼 耦 疋鬻囔� 磬 泐腩忄�. 褥屙眍 桴 疋鬻� � 玎桧蝈疱耦忄腓 戾��.<n><t>橡桧羼栩� 祉� 1 <y锐镱朦珙忄眄簋 疋鬻�> � 筢彘蝈 <r5 义祉 沭�玷腓�>. 项耠� 麇泐 忸玮疣轵羼� 觐 祉� 玎 磬沭噤铋!")
	MisBeginCondition(LvCheck, ">", 42 )
	--MisBeginCondition(HasRecord, 844)
	MisBeginCondition(NoMission, 843)
	MisBeginCondition(NoRecord, 843)
	MisBeginAction(AddMission, 843)
	MisBeginAction(AddTrigger, 8431, TE_GETITEM, 4823, 1 )
	MisBeginAction(AddTrigger, 8432, TE_KILL, 503, 5 )
	MisCancelAction(ClearMission, 843)
	
	MisNeed(MIS_NEED_DESP, "俞彘蝈 <r5 腋祉 灭�玷腓�> � 镳桧羼栩� 1 <y锐镱朦珙忄眄簋 砚鬻�> � 蝾麝� (628,2095)")
	MisNeed(MIS_NEED_ITEM, 4823, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 503, 5, 10, 5)
	
	MisHelpTalk("蒡� 耋耱忄 钺栩帼� � 玟屮龛� 脲襦�.")
	MisResultTalk("扬囫栳� 锣� 犷朦�!")
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

-----------------------------------蜡烛研究
	DefineMission( 844, "锐耠邃钼囗桢 疋鬻�", 844 )
	
	MisBeginTalk( "<t>� 桤篦桦 砚鬻牦 觐蝾痼� 蔓 祉� 镳桧羼腓 � 镳桫鸽 � 恹忸潴, 黩� � 疋鬻� 钺豚溧 爨汨麇耜铋 耔腩�. 皖 钿眍� 疋鬻觇 祉� 爨腩 潆� 蝾黜钽� 恹忸溧, 镱 铎� 镳桧羼栩� 祉� 犷朦 疋鬻彘!")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 843)
	MisBeginCondition(NoMission, 844)
	MisBeginCondition(NoRecord, 844)
	MisBeginAction(AddMission, 844)
	MisBeginAction(AddTrigger, 8441, TE_GETITEM, 4823, 10 )
	MisCancelAction(ClearMission, 844)
	
	MisNeed(MIS_NEED_DESP, "<t>橡桧羼蜩 � 蝾麝� (628,2095) 10 锐镱朦珙忄眄 疋鬻彘!")
	MisNeed(MIS_NEED_ITEM, 4823, 10, 10, 10)
	
	MisHelpTalk("� 驿� 觐沅� 蔓 祉� 镳桧羼弪� 10 锐镱朦珙忄眄 疋鬻彘!")
	MisResultTalk("扬囫栳�! � 礤戾潆屙眍 镳桉蝮镟� � 耧屦桁屙蜞�!")
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


-----------------------------------岩石怪
	DefineMission( 845, "殃嚯 泐脲�", 845 )
	
	MisBeginTalk( "<t>� 玟屮龛� 戾耱圊 篦囫蜩腓顸 磬镟溴龛� 磬 膻溴� 铗 <r灭囗栩睇� 妙脲祛�>.<n><t>蠕栩� � 筢彘蝈 <r5 灭囗栩睇� 妙脲爨> � 镳桧羼栩� � 珥嚓 漕赅玎蝈朦耱忄 <y1 牦耦� 戾瘀帼泐 赅祉�>!")
	MisBeginCondition(LvCheck, ">", 45 )
	--MisBeginCondition(HasRecord, 844)
	MisBeginCondition(NoMission, 845)
	MisBeginCondition(NoRecord, 845)
	MisBeginAction(AddMission, 845)
	MisBeginAction(AddTrigger, 8451, TE_GETITEM, 4825, 1 )
	MisBeginAction(AddTrigger, 8452, TE_KILL, 505, 5 )
	MisCancelAction(ClearMission, 845)
	
	MisNeed(MIS_NEED_DESP, "俞彘蝈 <r5 灭囗栩睇� 妙脲祛�> � 镳桧羼栩� 1 <y鼠耦� 戾瘀帼泐 赅祉�> � 蝾麝�(626,2100).")
	MisNeed(MIS_NEED_ITEM, 4825, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 505, 5, 10, 5)
	
	MisHelpTalk("蔓 妁� 礤 皲咫嚯� 蝾 � 鞲� � 锣� 镱镳铖桦.")
	MisResultTalk("扬囫栳� 蔓 祉� 镱祛汶�!")
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

-----------------------------------微光石头的研究
	DefineMission( 846, "锐耠邃钼囗桢 徉瘐囹眍泐 赅祉�", 846 )
	
	MisBeginTalk( "<t>翌� 赅戾睃, 觐蝾瘥� 蔓 祉� 镳桧羼腓 钺豚溧弪 耱疣眄� 疋铋耱忄扈, 铐 镳栩�汨忄弪 漯筱桢 赅祉� � 铈桠��弪 桴. 湾 镳桧羼蛤� 祉� 妁� <y6 鼠耦觐� 戾瘀帼泐 赅祉�> 潆� 桉耠邃钼囗��?")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 845)
	MisBeginCondition(NoMission, 846)
	MisBeginCondition(NoRecord, 846)
	MisBeginAction(AddMission, 846)
	MisBeginAction(AddTrigger, 8461, TE_GETITEM, 4825, 6 )
	MisCancelAction(ClearMission, 846)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <y6 鼠耦觐� 戾瘀帼泐 赅祉�> � 蝾麝�(626,2100)")
	MisNeed(MIS_NEED_ITEM, 4825, 6, 10, 6)
	
	MisHelpTalk("蔓 妁� 礤 镳钺钼嚯� 聃钿栩� 玎 鼠耜铎 戾瘀帼泐 赅祉�?")
	MisResultTalk("蔓 覃沭嚯� 犷朦� 痤朦 � 铎 桉耠邃钼囗桢.")
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


-----------------------------------验证
	DefineMission( 847, "腻轳蜮屙眍耱�", 847 )
	
	MisBeginTalk( "<t>� 猁 妁� 躅蝈� 镳钼羼蜩 礤玎忤耔祛� 疣耨脲漕忄龛� � 祛眈蝠圊 桴 脲耦� � 潆� 钽� 祉� 眢骓� 锣 镱祛!")
	--MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 846)
	MisBeginCondition(NoMission, 847)
	MisBeginCondition(NoRecord, 847)
	MisBeginAction(AddMission, 847)
	MisBeginAction(AddTrigger, 8471, TE_GETITEM, 4917, 1 )
	MisBeginAction(AddTrigger, 8472, TE_KILL, 267, 5 )
	MisCancelAction(ClearMission, 847)
	
	MisNeed(MIS_NEED_DESP, "俞彘蝈 <r5 湾箫铌铄眄 忸桧钼> � 镳桧羼栩� 1 <y礤镳钺桠噱禧� 屐> <b枢痂眢 髓忤磴耱铐�> � 蝾麝�(626,2100).")
	MisNeed(MIS_NEED_ITEM, 4917, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 267, 5, 10, 5)
	
	MisHelpTalk("项驵塍轳蜞 皲咫嚅蝈 蝾 � 鞲� � 锣� 镱镳铖桦.")
	MisResultTalk("扬囫栳�! 蔓 祉� 铟屙� 镱祛汶�.")
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


-----------------------------------不灭头盔
	DefineMission( 848, "湾镳钺桠噱禧� 屐", 848 )
	
	MisBeginTalk( "<t>篷腓 猁 � 耢钽 镱��螯 桤 麇泐 � 屐�, 蝾 忸珈铈眍 � 猁 耢钽 桤泐蝾怆�螯 桴 襦�!")
	--MisBeginCondition(LvCheck, ">", 42 )
	MisBeginCondition(HasRecord, 847)
	MisBeginCondition(NoMission, 848)
	MisBeginCondition(NoRecord, 848)
	MisBeginAction(AddMission, 848)
	MisBeginAction(AddTrigger, 8481, TE_GETITEM, 4917, 10 )
	MisCancelAction(ClearMission, 848)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <y10 湾镳钺桠噱禧� 屐钼> <b枢痂眢 髓忤磴耱铐�> � 蝾麝�(626,2100)")
	MisNeed(MIS_NEED_ITEM, 4917, 10, 10, 10)
	
	MisHelpTalk("亦� 蔓 祉� 镱祛驽蝈 桦� 镳铖蝾 狍溴蝈 蝠囹栩� 祛� 怵屐�?!")
	MisResultTalk("� 耢钽� 祉钽� 玎疣犷蜞螯 磬 桤泐蝾怆屙梃 蜞觇� 屐钼. 骂� 锣 磬沭噤�.")
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

-----------------------------------瓦解
	DefineMission( 849, "腻玷眚邈疣鲨�", 849 )
	
	MisBeginTalk( "<t>篷腓 蔓 蝮� 磬 耜箴耔� 蝾 蔓 磬� 襦祛� 礤 镱漉钿�� 怵屐�! 袜� 妙痤� 磬躅滂蝰� � 铞屣脲龛� 箧囫睇� 祛眈蝠钼!<n><t>篷腓 猁 蔓 耢钽腓 镱祛鼽 磬祗 妙痤潴 � 猁� 猁 锣� 铟屙� 镳桤磬蝈脲�.<n><t>务豚狳蝈 耔臌 镳铗桠龛赅 筢桠 <r20 湾镱徨滂禧� 洛疴铍-忸桧钼>.")
	MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(NoMission, 849)
	MisBeginCondition(NoRecord, 849)
	MisBeginAction(AddMission, 849)
	MisBeginAction(AddTrigger, 8491, TE_KILL, 513, 20 )
	MisCancelAction(ClearMission, 849)

	MisNeed(MIS_NEED_DESP, "俞栩� <r20 湾镱徨滂禧� 洛疴铍-忸桧钼> � 漕腩骅螯 � 恹镱腠屙梃 玎溧麒 <b项腙钼龛牦 锑犟�> � 蝾麝�(653,1505)")
	MisNeed(MIS_NEED_KILL, 513, 20, 10, 20)

	MisHelpTalk("� 妁� 疣� 镱怛铕��! 蒡� 锣� 礤 耜箴耔� � 羼腓 蔓 疱腓 磬� 镱祛鼽 蝾 镱祛汔轵�! 湾�... 亦� 礤 牮篁栩羼� 镱� 眍汔扈!")
	MisResultTalk("扬囫栳�! 蔓 皲咫嚯� 漕狃铄 溴腩!")
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

-----------------------------------血腥的锤子
	DefineMission( 850, "署钼铈噤睇� 祛腩�", 850 )
	
	MisBeginTalk( "<t>� 觐腚尻鲨铐屦! � � 耦徼疣� 蝾朦觐 塍鼬邋 铕箧桢. 湾 蜞� 溧忭� � 钺疣蜩� 忭桁囗桢 磬 <y署钼铈噤睇� 祛腩�> � <r湾镱徨滂祛泐 洛疴铍-忸桧�>, 铐 忮腓觐脲镥�! 橡桧羼栩� 祉� <y10 署钼铈噤睇� 祛腩蝾�>, 黩� 猁 � 祛� 恹狃囹� 桤 龛� 襦禧� 塍鼬栝!")
	MisBeginCondition(LvCheck, ">", 48 )
	--MisBeginCondition(HasRecord, 847)
	MisBeginCondition(NoMission, 850)
	MisBeginCondition(NoRecord, 850)
	MisBeginAction(AddMission, 850)
	MisBeginAction(AddTrigger, 8501, TE_GETITEM, 4833, 10 )
	MisCancelAction(ClearMission, 850)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <b育耠�> � 蝾麝�(741,1563) <y10 署钼铈噤睇� 祛腩蝾�>.")
	MisNeed(MIS_NEED_ITEM, 4833, 10, 10, 10)
	
	MisHelpTalk("� 驽 箧� 溧� 锣� 镱痼麇龛�!")
	MisResultTalk("雾� 忮腓觐脲镯�! 蔓 皲咫嚯� 戾�� 襦禧� 聍囫螂桠 觐腚尻鲨铐屦铎.")
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


-----------------------------------第一种原料
	DefineMission( 851, "襄疴 桧沭邃桢眚", 851 )
	
	MisBeginTalk( "<t>篷腓 蔓 脲眚�� 桦� � 锣� 礤蝮 驽豚龛� 麇泐 龛 狍潼 溴豚螯, 蝾 塍鼬� 礤 蝠囹� 祛� 怵屐�! 篷腓 怦� 驽 蔓 礤 蜞觐�, 蝾 � 忸琰祗 锣� � 疋铊 镱祛桕� � 玎镫圜� 锣� 玎 锣 疣犷蝮!<n><t>襄疴铄, 黩� 祉� 礤钺躅滂祛, � 耦狃囹� 铖钺 桧沭邃桢眚� 潆� 铒钼!")
	MisBeginCondition(LvCheck, ">", 47 )
	--MisBeginCondition(HasRecord, 847)
	MisBeginCondition(NoMission, 851)
	MisBeginCondition(NoRecord, 851)
	MisBeginAction(AddMission, 851)
	MisBeginAction(AddTrigger, 8511, TE_GETITEM, 4883, 8 )
	MisCancelAction(ClearMission, 851)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <b责妣> � 蝾麝� (651,1585) <y8 皖泸彘 祗扈�>.")
	MisNeed(MIS_NEED_ITEM, 4883, 8, 10, 8)
	
	MisHelpTalk("暑腚邈�, 蔓 蜞� 妁� � 礤 镳桧羼腓 祉� <y8 眍泸彘 祗扈�>.")
	MisResultTalk("扬囫栳�, 镱漕殇栩� 觐 祉� 镱-镱珂�. � 戾�� 妁� 狍潴� 潆� 锣� 镱痼麇龛�.")
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

-----------------------------------复仇
	DefineMission( 852, "贴屙桢", 852 )
	
	MisBeginTalk( "族痱 猁 镱狃嚯 桴 <r棋脲珥 祗扈�>! 雾� 筢桦� 祛� 驽眢 � 镳邂疣蜩� 邋 � 皴徨 镱漕犴簋! � 铟屙� 膻徼� 疋铪 驽眢, � 漕 耔� 镱� 膻犭�, � 礤 祛泱 筢桠囹� 桴 蜞�, 赅� 礤 狍潴 筲屦屙 � 蝾�, 黩� 筢桠帼 礤 疋铪 驽眢. 蔓 祛汶� 猁 镱轵� � 皲咫囹� � 玎 戾��?!")
	MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(NoMission, 852)
	MisBeginCondition(NoRecord, 852)
	MisBeginAction(AddMission, 852)
	MisBeginAction(AddTrigger, 8521, TE_KILL, 41, 15 )
	MisCancelAction(ClearMission, 852)

	MisNeed(MIS_NEED_DESP, "俞栩� <r15 棋脲珥 腆扈�> � 忮痦篁� � <b枢镨蜞眢 耱疣骅 锑腙�> � 蝾麝�(706,1465).")
	MisNeed(MIS_NEED_KILL, 41, 15, 10, 15)

	MisHelpTalk("蔓 礤 镱祛驽蝈 祉� 铗铎耱栩�?")
	MisResultTalk("扬囫栳� 锣�, 羼腓 猁 礤 蔓 祉� 襦祛祗 镳桫腩顸 猁 � 皲咫囹�, 眍 � 镱蝾� 礤 耢钽 猁 皴徨 镳铖蜩螯 � 骅� 猁 � 禧耠, 黩� 筢桦 疋铪 驽眢.")
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

-----------------------------------第三种原料
	DefineMission( 853, "茵弪栝 桧沭桎桢眚", 853 )
	
	MisBeginTalk( "<t>� 镥疴� 祛桁� 镳铖囔� 蔓 耧疣忤腓顸 赅� 礤朦�� 塍鼬�! 骂� 锣� 祛� 蝠弪邋 镱痼麇龛�: 橡桧羼栩� 祉� <y10 灭铎噤睇� 镱� 潴痨囗�>.")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 854)
	MisBeginCondition(NoMission, 853)
	MisBeginCondition(NoRecord, 853)
	MisBeginAction(AddMission, 853)
	MisBeginAction(AddTrigger, 8531, TE_GETITEM, 4834, 10 )
	MisCancelAction(ClearMission, 853)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 10 灭铎噤睇� 镱� 潴痨囗� � 蝾麝�(651,1585).")
	MisNeed(MIS_NEED_ITEM, 4834, 10, 10, 10)
	
	MisHelpTalk("湾 疣耨蝠噼忄轵� 戾��!")
	MisResultTalk("疹痤! 添� 蔓 妁� 眢骓� 狍溴蝈, 眍 镱珂�.")
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

-----------------------------------第二种原料
	DefineMission( 854, "买铕铋 桧沭邃桢眚", 854 )
	
	MisBeginTalk( "<t>� 礤 狍潴 镱怛铕�螯��! 蔓 箧� 镱��腓, 黩� � 耱噔膻 耧屦桁屙螓 � 祉� 眢骓� 桧沭邃桢眚�.<n><t>橡桧羼栩� 祉� <y10 骂腩� 腆扈�>.")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 851)
	MisBeginCondition(NoMission, 854)
	MisBeginCondition(NoRecord, 854)
	MisBeginAction(AddMission, 854)
	MisBeginAction(AddTrigger, 8541, TE_GETITEM, 4884, 10 )
	MisCancelAction(ClearMission, 854)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <b填痿弩耋 责妣> � 蝾麝�(651,1585) <y10 骂腩� 祗扈�>.")
	MisNeed(MIS_NEED_ITEM, 4884, 10, 10, 10)
	
	MisHelpTalk("吗屐� 溴睃汨 祛� 漯筱! 项耧屮栩�!")
	MisResultTalk("悟腓黜�! 湾 篚钿栩� 溧脲觐!")
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

-----------------------------------抵御亡灵
	DefineMission( 855, "悟钽磬螯 潴踵", 855 )
	
	MisBeginTalk( "<t>� � 沩邂�! 疹螯 � 箧� 礤 忸腠簋顸 玎 疋铪 驽眢, 眍 � 忸腠簋顸 玎 骅蝈脲� 疋铄泐 泐痤溧. 蒡� 祗扈� 妁� 躅��� 镱 珏祀�!<n><t>俞彘蝈 <r15 耱嚯 祗扈�> � 铖忸犷滂蝈 珏祀� 铗 礤骅蜩!")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 852)
	MisBeginCondition(NoMission, 855)
	MisBeginCondition(NoRecord, 855)
	MisBeginAction(AddMission, 855)
	MisBeginAction(AddTrigger, 8551, TE_KILL, 42, 15 )
	MisCancelAction(ClearMission, 855)

	MisNeed(MIS_NEED_DESP, "俞栩� <r15 羊嚯 腆扈�> � 忮痦篁� � <b枢镨蜞眢 耱疣骅 锑腚嚓�> � 蝾麝�(706,1465).")
	MisNeed(MIS_NEED_KILL, 42, 15, 10, 15)

	MisHelpTalk("蔓 疣玮� 玎猁腓 � 鞲� � 锣� 镱镳铖桦?")
	MisResultTalk("扬囫栳� 锣� 妁� 疣�! 蔓 皲咫嚯� 铟屙� 漕狃 镱耱箫铌.")
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

-----------------------------------土著围城
	DefineMission( 856, "买铕驽龛� 镫屐屙�", 856 )
	
	MisBeginTalk( "<t>湾镱徨滂禧� 洛疴铍-忸桧 犷朦 礤 筱痤驵弪 磬祗 泐痤潴. 义� 礤 戾礤� 磬� 磬� 泐痤漕� 镱忤耠� 眍忄� 铒囫眍耱�! 灭铎-灭噤 囹嚓簋� 镫屐屙� 蝮珏祧邂 � 羼腓 礤 镳邃镳桧�螯 龛 赅觇� 溴轳蜮栝 铐� 疣玢痤��� 磬� 妙痤�!<n><t>湾钺躅滂祛 镳屣钿囹� 桁 箴铌 � 箜梓蝾骅螯 桴 镳邃忸滂蝈脲�.")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 849)
	MisBeginCondition(NoMission, 856)
	MisBeginCondition(NoRecord, 856)
	MisBeginAction(AddMission, 856)
	MisBeginAction(AddTrigger, 8561, TE_KILL, 515, 15 )
	MisBeginAction(AddTrigger, 8562, TE_KILL, 38, 5 )
	MisCancelAction(ClearMission, 856)

	MisNeed(MIS_NEED_DESP, "俞栩� <r15 礤箅钼桁 蝮珏祧邂> � <r5 殷珏祉 剜爨眍�>.<n><t>念腩骅螯 � 恹镱腠屙梃 镱痼麇龛� <b项腙钼龛牦 锑犟�> � 蝾麝� (653,1505).")
	MisNeed(MIS_NEED_KILL, 515, 15, 10, 15)
	MisNeed(MIS_NEED_KILL, 38, 5, 30, 5)

	MisHelpTalk("湾钺躅滂祛 玎蜩螯 磬� 妙痤�!")
	MisResultTalk("锗-踵! 义镥瘘 铐� 妁� 礤 耜铕� 铒疣��蝰� 镱耠� 锣� 囹嚓�!")
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

-----------------------------------战争的奖励
	DefineMission( 857, "令邂�� 磬沭噤�", 857 )
	
	MisBeginTalk( "<t>蔓 忮腓觇� 忸桧? 骂珈铈眍 � 蜞�, 眍 磬耱��� 忸桧 耢铈弪 玎镱塍麒螯 蝠铘彖!")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 856)
	MisBeginCondition(NoMission, 857)
	MisBeginCondition(NoRecord, 857)
	MisBeginAction(AddMission, 857)
	MisBeginAction(AddTrigger, 8571, TE_GETITEM, 4919, 5 )
	MisBeginAction(AddTrigger, 8572, TE_GETITEM, 4835, 5 )
	MisCancelAction(ClearMission, 857)
	
	MisNeed(MIS_NEED_DESP, "<t> 橡桧羼蜩 <b羊疣骟 丸耨铐> � 蝾麝� (711,1414) <y5 殷珏祉 锑耦�> � <y5 亦桧耱忮眄 觐耱彘>.")
	MisNeed(MIS_NEED_ITEM, 4919, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4835, 5, 20, 5)
	
	MisHelpTalk("铃� 蝠铘邋� 蔓 礤 忸桧 � 玎珥嚅赅!")
	MisResultTalk("� 徨痼 疋铊 耠钼� 钺疣蝽�! 蔓 缅痤� � 磬耱��� 忸桧!")
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

-----------------------------------新的武器
	DefineMission( 858, "皖忸� 铕箧桢", 858 )
	
	MisBeginTalk( "<t>袜� 礤钺躅滂祛 镳桎箪囹� 犷脲� 翦牝桠眍� 铕箧桢 镳铗桠 祛眈蝠钼. 碾� 桤泐蝾怆屙�� 眍忸泐 铕箧�� 磬� 礤钺躅滂禧 耠邃簋� 爨蝈痂嚯�: 钿桧� <y央铎囗磬� 囗沐朦耜�� 镟腩麝�> � 钿桧 <y青珞狃屙睇� 疋�眄 塍�>. 橡桧羼栩� 祉� �.")
	--MisBeginCondition(LvCheck, ">", 47 )
	MisBeginCondition(HasRecord, 856)
	MisBeginCondition(NoMission, 858)
	MisBeginCondition(NoRecord, 858)
	MisBeginAction(AddMission, 858)
	MisBeginAction(AddTrigger, 8581, TE_GETITEM, 4918, 1 )
	MisBeginAction(AddTrigger, 8582, TE_GETITEM, 4921, 1 )
	MisCancelAction(ClearMission, 858)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <b项腙钼龛牦 锑犟�> 钿眢 <y耠铎囗眢� 囗沐朦耜簋 镟腩麝�> � 钿桧 <y青珞狃屙睇� 疋�眄 塍�>.")
	MisNeed(MIS_NEED_ITEM, 4918, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4921, 1, 20, 1)
	
	MisHelpTalk("铃� 桴 爨蝈痂嚯钼 磬� 礤 皲咫囹� 眍忸泐 铕箧��.")
	MisResultTalk("� 蜞觇� 铕箧桢� � 磬� 犷朦 眈钼 磬 镱徨潴.")
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

-----------------------------------堕落天使
	DefineMission( 859, "相澍栝 囗沐�", 859 )
	
	MisBeginTalk( "<t>蔓 忤溴腓 囗沐腩�-躔囗栩咫彘 玎 镳邃咫囔� 磬泐 泐痤溧?<n><t>蔓 潴爨弪� 铐� 玎耠箧桠帼� 眍耔螯 蜞觐� 疋�蝾� 桁� 赅� \"理沐隲"? 悟镳噔� 桴 囗沐腩� 磬 礤犷 磬 镥疱忸耧栩囗桢.")
	MisBeginCondition(LvCheck, ">", 50 )
	--MisBeginCondition(HasRecord, 849)
	MisBeginCondition(NoMission, 859)
	MisBeginCondition(NoRecord, 859)
	MisBeginAction(AddMission, 859)
	MisBeginAction(AddTrigger, 8591, TE_KILL, 284, 12 )
	MisCancelAction(ClearMission, 859)

	MisNeed(MIS_NEED_DESP, "俞栩� <r12 理沐�-躔囗栩咫彘> � 漕腩骅螯 � 玎忮瘌屙梃 镱痼麇龛� <b羊疣骟 丸耨铐�> � 蝾麝�(711,1414).")
	MisNeed(MIS_NEED_KILL, 284, 12, 10, 12)

	MisHelpTalk("蔓 妁� 礤 躅滂腓 � 理沐豚�-震囗栩咫��? 亦� 麇泐 蔓 驿蛤�?")
	MisResultTalk("扬囫栳� 锣�, 磬溴� 铐� 蜞� 磬篦囹� 躅痤� 爨礤疣�.")
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

-----------------------------------远征
	DefineMission( 860, "蓐耧邃桷��", 860 )
	
	MisBeginTalk( "<t>吗嚆 玎 泐痤漶觇扈 耱屙囔� 猁� 镱忮疰屙! 武磬觐 桎蛤 眍忄� 囵扈� 祛眈蝠钼 耦 耱铕铐� 耥彐眍� 泐瘥.<n><t>袜 鲥朦: 悟镳噔栩� � 耥彐眍� 泐疱 � 筢栩� 磬耱箫帼泐 镳铗桠龛赅.")
	MisBeginCondition(LvCheck, ">", 51 )
	MisBeginCondition(HasRecord, 858)
	MisBeginCondition(NoMission, 860)
	MisBeginCondition(NoRecord, 860)
	MisBeginAction(AddMission, 860)
	MisBeginAction(AddTrigger, 8601, TE_KILL, 521, 8 )
	MisBeginAction(AddTrigger, 8602, TE_KILL, 541, 8 )
	MisCancelAction(ClearMission, 860)

	MisNeed(MIS_NEED_DESP, "俞栩� <r8 鸯屦蝾眍耥 耜咫弪钼-塍黜桕钼> � <r8 冷耜桴 礤箫铌铄眄 忸桧钼> � 忮痦篁� � <b锑犟�> � 蝾麝� (653, 1505).")
	MisNeed(MIS_NEED_KILL, 521, 8, 10, 8)
	MisNeed(MIS_NEED_KILL, 541, 8, 30, 8)

	MisHelpTalk("项耧屮栩�, 吗屐屙� 礤� 磬 犷腧钼睨!")
	MisResultTalk("�! 蔓 蜞� 猁耱痤 恹镱腠桦� 祛� 镱痼麇龛�, 黩� � � 汶噻铎 礤 篑镥� 祛疸眢螯!")
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

-----------------------------------堕落的头盔
	DefineMission( 861, "仉屐 镟澍邈�", 861 )
	
	MisBeginTalk( "<t>蔓 镳桧桁嚯� 篦囫蜩� � 忸屙睇� 溴轳蜮���?<n><t>� 蔓 耠篦嚅眍 礤 玎踱囹桦� 潆� 祛彘 觐腚尻鲨� 仉屐 相澍邈�?<n><t>橡桧羼栩� 镱驵塍轳蜞 5 仉屐钼, 黩� 猁 � 耢钽 恹狃囹� 襦禧� 塍鼬栝.")
	MisBeginCondition(LvCheck, ">", 51 )
	MisBeginCondition(HasRecord, 850)
	MisBeginCondition(NoMission, 861)
	MisBeginCondition(NoRecord, 861)
	MisBeginAction(AddMission, 861)
	MisBeginAction(AddTrigger, 8611, TE_GETITEM, 4837, 5 )
	MisCancelAction(ClearMission, 861)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <b育耠�> � 蝾麝�(741,1563) <y5 仉屐钼 镟澍邈�>.")
	MisNeed(MIS_NEED_ITEM, 4837, 5, 10, 5)
	
	MisHelpTalk("蔓 疣玮� 礤 躅蜩蝈 玎疣犷蜞螯 溴礤�?")
	MisResultTalk("扬囫栳� 锣�! 雾� 镳尻疣耥�! 骂� 锣 磬沭噤�!")
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


-----------------------------------第四种原料
	DefineMission( 862, "族蜮屦螓� 桧沭邃桢眚", 862 )
	
	MisBeginTalk( "<t>族蜮葛螓� 桧沭邃桢眚铎, 觐蝾瘥� 蔓 祉� 镳桧羼蛤�, 狍溴� <y皱朦眍� 疱狃�>, 邈� 祛骓� 镱塍麒螯 蝾朦觐 筢桠 <r鸯屦蝾眍耥钽� 耜咫弪�-塍黜桕�>, 眍 镳邃箫疱驿帼 锣�, 妁� 龛 觐祗 礤 箐噔嚯铖� 桴 筢栩� � 忮痦篁� 骅恹�!")
	MisBeginCondition(LvCheck, ">", 52 )
	MisBeginCondition(HasRecord, 853)
	MisBeginCondition(NoMission, 862)
	MisBeginCondition(NoRecord, 862)
	MisBeginAction(AddMission, 862)
	MisBeginAction(AddTrigger, 8621, TE_GETITEM, 4858, 8 )
	MisCancelAction(ClearMission, 862)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 填痿弩耋 8 皱朦睇� 疱徨�...")
	MisNeed(MIS_NEED_ITEM, 4858, 8, 10, 8)
	
	MisHelpTalk("蔓 妁� 礤 镳桧羼腓 祉� 8 皱朦睇� 疱徨�!")
	MisResultTalk("� 镳噔桦� 皲咫嚯, 觐沅� 忡�� 锣� � 疋铊 觐腚邈�. 悟腓黜�!")
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

-----------------------------------圣林考验
	DefineMission( 863, "锐稃蜞龛� 砚�眄钽� 脲襦", 863 )
	
	MisBeginTalk( "<t>西屙� ��娓腩� 桉稃蜞龛� 锣� 驿蛤. 念耱囹铟眍 腓 蔓 耢咫, 黩� 猁 忡�螯�� 玎 � 桉稃蜞龛�? � 狍潴 祛腓螯�� 玎 锣�!")
	MisBeginCondition(LvCheck, ">", 52 )
	--MisBeginCondition(HasRecord, 863)
	MisBeginCondition(NoMission, 863)
	MisBeginCondition(NoRecord, 863)
	MisBeginAction(AddMission, 863)
	MisBeginAction(AddTrigger, 8631, TE_KILL, 261, 10 )
	MisCancelAction(ClearMission, 863)

	MisNeed(MIS_NEED_DESP, "俞栩� <r10 隋耥 铛铗龛觐�> � 忮痦篁� � <b腻忸麝� 谚礓�> � 蝾麝�(740,1451).")
	MisNeed(MIS_NEED_KILL, 261, 10, 10, 10)

	MisHelpTalk("湾 蝈��轵� 镱 磬镳囫眍 怵屐�, 忮潼 铐� 徨聆屙眍!")
	MisResultTalk("橡邂铖躅漤�! 蔓 镳铠腓 祛� 桉稃蜞龛�!")
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


-----------------------------------最后一种原料
	DefineMission( 864, "项耠邃龛� 桧沭邃桢眚", 864 )
	
	MisBeginTalk( "<t>湾 怵屐� 铗耱箫囹�! 帖 磬 沭囗� 铗牮��, � 疣耨赅骟 赅觐� 耧屦桁屙� � 耱噔桦...<n><t>� 桤泐蝾怆�� 桕耔� 徨耨戾痱��... � 溧驽 溧� 邈� 镱镳钺钼囹�! 皖 羼腓 蔓 铗赅驽蝈顸 祉� 镱祛鼽 � 镱耠邃龛� 桧沭邃桢眚铎, 祉� 镳桎弪�� 锣� 筢栩�!<n><t>橡桧羼栩� 祉� <y10 务觐腙钼 觐耱� 耜咫弪�>, 黩� 猁 玎觐眵栩� 桕耔�.")
	MisBeginCondition(LvCheck, ">", 53 )
	MisBeginCondition(HasRecord, 862)
	MisBeginCondition(NoMission, 864)
	MisBeginCondition(NoRecord, 864)
	MisBeginAction(AddMission, 864)
	MisBeginAction(AddTrigger, 8641, TE_GETITEM, 4886, 10 )
	MisCancelAction(ClearMission, 864)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <y10 务觐腙钼 觐耱� 耜咫弪�> <p责妣> � 蝾麝�(651,1585).")
	MisNeed(MIS_NEED_ITEM, 4886, 10, 10, 10)
	
	MisHelpTalk("� 驽 锣� 镳铖桦, 赅驽蝰�, 镳桧羼蜩 祉� 10 务觐腙钼 觐耱� 耜咫弪�! 娩� 铐�?!")
	MisResultTalk("扬囫栳� 锣� 钽痤祉铄, 蔓 祛驽蝈 桉稃蜞螯 蓦桕耔�!")
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

-----------------------------------幕后的阴影
	DefineMission( 865, "亦轫�� 蝈睃", 865 )
	
	MisBeginTalk( "<t>� 镳钹磬腓玷痤忄� 疱珞朦蜞螓 � 镳桫鸽 � 祉屙棹 黩� 忸 怦胳 忤眍忄蝾 橡铌��蝾� 蝈腩.<n><t>项腩骅蝈 觐礤� 铎� 噤� 磬 珏祀� � 筢彘蝈 橡铌��蝾� 蝈腩!")
	MisBeginCondition(LvCheck, ">", 53 )
	MisBeginCondition(HasRecord, 855)
	MisBeginCondition(NoMission, 865)
	MisBeginCondition(NoRecord, 865)
	MisBeginAction(AddMission, 865)
	MisBeginAction(AddTrigger, 8651, TE_KILL, 52, 10 )
	MisCancelAction(ClearMission, 865)

	MisNeed(MIS_NEED_DESP, "俞栩� <r10 橡铌��螓� 蝈�> � 忮痦篁� � <b锑腚嚓�> � 蝾麝�(706,1465).")
	MisNeed(MIS_NEED_KILL, 52, 10, 10, 10)

	MisHelpTalk("腆扈� � 溴蜩 橡铌��蝾泐 蝈豚. 项腩骅蝈 觐礤� 镳囵钿栩咫� � 溴蜩 礤 耢钽篁 溧朦 疣玮桠囹� 徨� 痤滂蝈脲�!")
	MisResultTalk("蔓 皲咫嚯� 镳噔桦�, 黩� 礤戾潆屙眍 铗镳噔桦桉� � 镱腩骅腓 觐礤� 耱疣溧龛�� � 耢屦���!")
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

-----------------------------------最后的敌人
	DefineMission( 866, "项耠邃龛� 怵嚆", 866 )
	
	MisBeginTalk( "<t>务蜞腭� 镱耠邃龛� 怵嚆! 湾 滂蝈 邈�! 禹梓蝾纥蝈 邈� � 忮痦栩羼� 觐 祉� 玎 磬沭噤铋!")
	MisBeginCondition(LvCheck, ">", 53 )
	MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 866)
	MisBeginCondition(NoRecord, 866)
	MisBeginAction(AddMission, 866)
	MisBeginAction(AddTrigger, 8661, TE_KILL, 565, 10 )
	MisBeginAction(AddTrigger, 8662, TE_GETITEM, 4879, 1 )
	MisCancelAction(ClearMission, 866)

	MisNeed(MIS_NEED_DESP, "俞栩� <r10 橡邃忸滂蝈脲� 耜咫弪钼-忸桧钼> � 玎镱塍麒螯 1 <y谚焘铍 汶噔� 忸桧钼>.<n><t>念腩骅螯 <b项腙钼龛牦 锑犟�> � 蝾麝� (653,1505) � 玎忮瘌屙梃 扈耨梃 镱 铖忸犷驿屙棹 妙痤溧.")
	MisNeed(MIS_NEED_KILL, 565, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 4879, 1, 20, 1)

	MisHelpTalk("� 磬� 铖蜞腭� 蝾朦觐 钿桧 怵嚆, 礤 潴爨� 黩� � 龛� 磬� 磬漕 ��眢螯 怵屐� � 桡疣螯 � 觐�-禧�. ")
	MisResultTalk("项耠邃龛� 吗嚆 箜梓蝾驽�! 蔓 沐痤� 铋 忸轫�!")
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

-----------------------------------暗血考验
	DefineMission( 867, "锐稃蜞龛� 牮钼� 羿眚铎�", 867 )
	
	MisBeginTalk( "<t>翌朦觐 桤徉忤怿桉� 铗 鞲痦铋 囿瘥 蔓 钺疱蚋蝈 磬耱��� 聍囫螯�! 俞彘蝈 <r15 署钼铈噤睇� 铛铗龛觐�> � 铟桉蜩蝈 疋铪 潴 铗 镱痤觐� � 沭艴钼!")
	MisBeginCondition(LvCheck, ">", 54 )
	--MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 867)
	MisBeginCondition(NoRecord, 867)
	MisBeginAction(AddMission, 867)
	MisBeginAction(AddTrigger, 8671, TE_KILL, 666, 15 )
	MisCancelAction(ClearMission, 867)

	MisNeed(MIS_NEED_DESP, "俞栩� <r15 署钼铈噤睇� 铛铗龛觐�> � 忮痦篁� � <b腻忸麝� 谚礓�> � 蝾麝�(740,1451).")
	MisNeed(MIS_NEED_KILL, 666, 15, 10, 15 )

	MisHelpTalk("蔓 妁� 礤 皲咫嚯� 怦邈� 礤钺躅滂祛泐, 黩钺� 铟桉蜩螯 疋铪 潴.")
	MisResultTalk("令汨�� 锣� 犭嚆铖腩怆�弪 � 溧痂� 锣� 痒囫螯�! 蔓 聍囫螂桠�?")
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

-----------------------------------暗之弓
	DefineMission( 868, "义祉 塍�", 868 )
	
	MisBeginTalk( "<t>蒗... 添� 猁 � 祛� 觐腚尻鲨� 妁� 猁 腋祉 塍�...<n><t>橡桧羼栩� 祉� 5 梭觐�, � 蔓徨痼 襦禧� 塍鼬栝!")
	MisBeginCondition(LvCheck, ">", 54 )
	MisBeginCondition(HasRecord, 861)
	MisBeginCondition(NoMission, 868)
	MisBeginCondition(NoRecord, 868)
	MisBeginAction(AddMission, 868)
	MisBeginAction(AddTrigger, 8681, TE_GETITEM, 4922, 5 )
	MisCancelAction(ClearMission, 868)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 育耠� 5 腋祉 梭觐�.")
	MisNeed(MIS_NEED_ITEM, 4922, 5, 10, 5)
	
	MisHelpTalk("铃� 腋祉钽� 梭赅 觐腚尻鲨� 祛� 礤 镱腠��... 捏爨轵� 襦扈, 赅� � 锣� 铗犭嚆钿囵�, 羼腓 祛� 觐腚尻鲨� 狍溴� 镱腠��!")
	MisResultTalk("扬囫栳� 锣�! 骂� 蝈镥瘘 祛� 觐腚尻鲨� 镱腠��!")
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


-----------------------------------抵抗雪巨人
	DefineMission( 869, "杨镳铗桠��栝�� 耥彐睇� 麇腩忮�", 869 )
	
	MisBeginTalk( "<t>� 戾�� 羼螯 潆� 锣� 疣犷蜞!<n><t>� 蝾麝�(2471,502) 钺栩噱� <r秧彐睇� 麇腩忮麒>. 俞彘蝈 <r15 秧彐睇� 族腩忮麒�> � 忮痦栩羼� 觐 祉� 玎 磬沭噤铋!")
	MisBeginCondition(LvCheck, ">", 35 )
	--MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 869)
	MisBeginCondition(NoRecord, 869)
	MisBeginAction(AddMission, 869)
	MisBeginAction(AddTrigger, 8691, TE_KILL, 516, 15 )
	MisCancelAction(ClearMission, 869)

	MisNeed(MIS_NEED_DESP, "俞栩� <r15 秧彐睇� 族腩忮麒�> � 忮痦篁� � 蝾麝�(2680,657) 玎 磬沭噤铋.")
	MisNeed(MIS_NEED_KILL, 516, 15, 10, 15 )

	MisHelpTalk("项赅 � 礤 筲桄� 疱珞朦蜞蝾� 忄� 疣犷螓, � 礤 狍潴 锣� 镫囹栩�!")
	MisResultTalk("蔓 铗腓黜� 耧疣忤腓顸 耦 疋铄� 疣犷蝾�!")
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

-----------------------------------狼人入侵
	DefineMission( 870, "买铕驽龛� 忮疴箅钼", 870 )
	
	MisBeginTalk( "<t>物�螯 镳桫腓 � 镳铌��螓� 吾铕铗龛! 殷� 耱囗钼栩� � 赅驿 漤胳 怦� 铒囫礤� � 铒囫礤� 磬躅滂螯��! 俞彘蝈 � 蝾麝�(2580,553) 洛疴铍-忸桧钼 � 镱腩骅蝈 觐礤� 筢栝耱忄�.")
	MisBeginCondition(LvCheck, ">", 36 )
	--MisBeginCondition(HasRecord, 860)
	MisBeginCondition(NoMission, 870)
	MisBeginCondition(NoRecord, 870)
	MisBeginAction(AddMission, 870)
	MisBeginAction(AddTrigger, 8701, TE_KILL, 271, 15 )
	MisCancelAction(ClearMission, 870)

	MisNeed(MIS_NEED_DESP, "项祛鼽 <b湾殡�> 筢栩� <r15 洛疴铍-忸桧钼>.")
	MisNeed(MIS_NEED_KILL, 271, 15, 10, 15 )

	MisHelpTalk("骂玮疣轵羼� 觐沅� 恹镱腠栩� 祛� 镳铖�!")
	MisResultTalk("扬囫栳� 锣�!")
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

-----------------------------------收破烂
	DefineMission( 871, "暑腚尻鲨� 怦�觐� 屦箜潲", 871 )
	
	MisBeginTalk( "<t>翌朦觐 礤 耧疣忄轵� 玎麇� 祉� � 怦�! 橡铖蝾 镳桧羼栩�: 5 墟噔 镟豚�, 5 央铎囗睇� 祛腩蝾� � 5 湾铗羼囗睇� 潴徼�.<n><t>蔓 � 磬殇蛤� 徨� 镳钺脲� � 蝾麝圊(2580,553), (2811,565), (2471,502).")
	MisBeginCondition(LvCheck, ">", 36 )
	--MisBeginCondition(HasRecord, 861)
	MisBeginCondition(NoMission, 871)
	MisBeginCondition(NoRecord, 871)
	MisBeginAction(AddMission, 871)
	MisBeginAction(AddTrigger, 8711, TE_GETITEM, 4836, 5 )
	MisBeginAction(AddTrigger, 8712, TE_GETITEM, 4907, 5 )
	MisBeginAction(AddTrigger, 8713, TE_GETITEM, 4838, 5 )
	MisCancelAction(ClearMission, 871)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <b体觇腚铐�> � 蝾麝�(2662,648): <r5 墟噔 镟豚�, 5 央铎囗睇� 祛腩蝾� � 5 湾铗格襦睇� 潴徼�>.")
	MisNeed(MIS_NEED_ITEM, 4836, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4907, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4838, 5, 10, 5)
	
	MisHelpTalk("� 锣� 蝾驽 溧� 镱溧痤�.")
	MisResultTalk("锗-踵! � 邃桧耱忮眄 觐腚尻鲨铐屦 腆襦疣!")
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


-----------------------------------升级的战争
	DefineMission( 872, "玉钼屦眈蜮钼囗桢 徼蜮�", 872 )
	
	MisBeginTalk( "<t>骂轫� 镥疱� 磬 眍恹� 箴钼屙�! 彦轺囫 磬 磬� 磬镟溧弪 <r秧彐睇� 麇腩忮�>.<n><t>蠕栩� � 蝾麝�(2587,455) � 镱腩骅蝈 觐礤� 桁 磬镟溴龛��.")
	MisBeginCondition(LvCheck, ">", 37 )
	MisBeginCondition(HasRecord, 869)
	MisBeginCondition(NoMission, 872)
	MisBeginCondition(NoRecord, 872)
	MisBeginAction(AddMission, 872)
	MisBeginAction(AddTrigger, 8721, TE_KILL, 194, 15 )
	MisCancelAction(ClearMission, 872)

	MisNeed(MIS_NEED_DESP, "藻痄彘 � 蝾麝�(2680,657) 镱镳铖桦 锣� 筢栩� 15 秧彐睇� 膻溴�. ")
	MisNeed(MIS_NEED_KILL, 194, 15, 10, 15 )

	MisHelpTalk("袜 忸轫� 礤� 怵屐屙� 磬 钺耋驿屙��.")
	MisResultTalk("扬囫栳� 锣� 玎 忮痦铖螯 � 玎 镱祛!")
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

-----------------------------------巨人大刀
	DefineMission( 873, "描汔眚耜栝 镟豚�", 873 )
	
	MisBeginTalk( "<t>蔓 戾�� 礤 玎猁腓? 义镥瘘 祉� 磬漕 <y5 描汔眚耜桴 镟豚�>. 蔓 耢铈弪� 桴 镱塍麒螯 桤 <r秧彐眍泐 麇腩忮赅> � 蝾麝�(2587,455).")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(HasRecord, 871)
	MisBeginCondition(NoMission, 873)
	MisBeginCondition(NoRecord, 873)
	MisBeginAction(AddMission, 873)
	MisBeginAction(AddTrigger, 8731, TE_GETITEM, 4861, 5 )
	MisCancelAction(ClearMission, 873)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 体觌腓铐� � 蝾麝�(2662,648) 5 描汔眈觇� 镟豚�.")
	MisNeed(MIS_NEED_ITEM, 4861, 5, 10, 5)
	
	MisHelpTalk("� 狍潴 锣� 蝮� 驿囹�.")
	MisResultTalk("扬囫栳� 锣�!")
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

-----------------------------------抵抗雪魔人
	DefineMission( 874, "悟矬沩篁� 殄蜩", 874 )
	
	MisBeginTalk( "<t><r描汔眚耜栝 殄蜩> 磬祉钽� 铒囫礤� <r秧彐眍泐 麇腩忮赅>. 武磬觐 祉� 礤钺躅滂祛, 黩� 猁 筢桦� 潆� 戾�� 12 描汔眚耜桴 殄蜩. 蔓 磬殇弪� 桴 � 蝾麝�(2811,565).")
	MisBeginCondition(LvCheck, ">", 38 )
	MisBeginCondition(HasRecord, 872)
	MisBeginCondition(NoMission, 874)
	MisBeginCondition(NoRecord, 874)
	MisBeginAction(AddMission, 874)
	MisBeginAction(AddTrigger, 8741, TE_KILL, 517, 12 )
	MisCancelAction(ClearMission, 874)

	MisNeed(MIS_NEED_DESP, "俞栩� 12 描汔眈觇� 殄蜩 潆� 藻痄彘(2680,657).")
	MisNeed(MIS_NEED_KILL, 517, 12, 10, 12 )

	MisHelpTalk("蔓 耧疣忤蝈顸! � � 锣� 忮瘙!")
	MisResultTalk("悟腓黜�! 骂� 锣 磬沭噤�!")
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

-----------------------------------捕猎蜗牛
	DefineMission( 875, "熙铗� 磬 箅栩铌", 875 )
	
	MisBeginTalk( "<t>帖 玎龛爨屐�� 铛铗铋 磬 箅栩铌! 湾 潴爨轵� 黩� � 镳铖蝾! 篷腓 礤 忮痂蝈 镱镳钺箝蝈 襦扈. � 蝾麝�(2733,651) 襦祛� 塍鼬邋 戾耱� 潆� 铛铗�.")
	MisBeginCondition(LvCheck, ">", 38 )
	--MisBeginCondition(HasRecord, 872)
	MisBeginCondition(NoMission, 875)
	MisBeginCondition(NoRecord, 875)
	MisBeginAction(AddMission, 875)
	MisBeginAction(AddTrigger, 8751, TE_KILL, 501, 20 )
	MisBeginAction(AddTrigger, 8752, TE_GETITEM, 4821, 6 )
	MisCancelAction(ClearMission, 875)

	MisNeed(MIS_NEED_DESP, "俞栩� 潆� <b袜睇> <r20 与栩铌 耦 耱嚯 镟眦桊屐> � 镳桧羼蜩 <y6 耱嚯 篑桕钼>. ")
	MisNeed(MIS_NEED_KILL, 501, 20, 10, 20 )
	MisNeed(MIS_NEED_ITEM, 4821, 6, 40, 6 )

	MisHelpTalk("腕 � 镥疴 疣� 怦邈溧 耠铈眍! 项镳钺箝蝈 妁�.")
	MisResultTalk("悟腓黜�! 蔓 镳桊铈涓眄 铛铗龛�.")
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

-----------------------------------新的侵略者
	DefineMission( 876, "皖恹� 玎踱囹麒�", 876 )
	
	MisBeginTalk( "<t>项耠� 蝾泐 赅� 禧 桤徉忤腓顸 铗 洛痱忸朦羿-骂桧� 磬 磬 镱皴脲龛� 耱嚯� 磬镟溧螯 <r湾箫铌铄眄 塍黜桕�>. 雾� 泐疣玟� 铒囫礤� 镳彐龛� 祛眈蝠钼! 悟镳噔��轵羼� � 蝾麝�(2746,451) � 镱腩骅蝈 觐礤� 桁 祗麇龛�� 筢桠 <r12 湾箫铌铄眄 塍黜桕钼>!")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(HasRecord, 870)
	MisBeginCondition(NoMission, 876)
	MisBeginCondition(NoRecord, 876)
	MisBeginAction(AddMission, 876)
	MisBeginAction(AddTrigger, 8761, TE_KILL, 270, 12 )
	MisCancelAction(ClearMission, 876)

	MisNeed(MIS_NEED_DESP, "俞彘蝈 <r12 湾箫铌铄眄 塍黜桕钼> � 忮痦栩羼� � <b湾殡�> � 蝾麝� (2675,631).")
	MisNeed(MIS_NEED_KILL, 270, 12, 10, 12 )

	MisHelpTalk("蔓 妁� 礤 桤徉忤腓 磬 溴疱忭� 铗 眍恹� 玎踱囹麒觐�!")
	MisResultTalk("蔓 箧� 怛铕铋 疣� 耧囫噱蝈 磬 溴疱忭�! 耧囫栳� 锣� 玎 镱祛!")
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

-----------------------------------骷髅装饰品
	DefineMission( 877, "狸皴耨筻瘥 耜咫弪�", 877 )
	
	MisBeginTalk( "<t>添� 铟屙� 眇噔栩� <y羊疱臌 耢屦蜩> 桤 <r湾箫铌铄眄 塍黜桕钼> 钺栩帼� � 蝾麝�(2746,451). 篷腓 猁 蔓 祉� 镳桧羼腓 桴 � 觐腓麇耱忮 10 箨, 蝾 � 猁 皲咫嚯 猁 桤 龛� 铟屙� 牮囫桠铄 箨疣龛�...")
	MisBeginCondition(LvCheck, ">", 39 )
	--MisBeginCondition(HasRecord, 871)
	MisBeginCondition(NoMission, 877)
	MisBeginCondition(NoRecord, 877)
	MisBeginAction(AddMission, 877)
	MisBeginAction(AddTrigger, 8771, TE_GETITEM, 4911, 10 )
	MisCancelAction(ClearMission, 877)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <y10 羊疱� 耢屦蜩> <b燕> � 蝾麝�(2678,631).")
	MisNeed(MIS_NEED_ITEM, 4911, 10, 10, 10)
	
	MisHelpTalk("蔓 妁� 礤 镳桧羼腓 祉� 10 耱疱� 耢屦蜩.")
	MisResultTalk("扬囫栳� 锣�, � 礤 玎狍潴 忄 漕狃铗�!")
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

-----------------------------------继续深入
	DefineMission( 878, "令朦� 痂耜", 878 )
	
	MisBeginTalk( "<t>袜耱嚯� 怵屐� 怦屦� 忡�螯�� 玎 箜梓蝾驽龛� 礤骅蜩 � 桴 脲襦�!<n><t>蒡� 玎溧龛� � 镱痼鬣� 锣�! 悟镳噔��轵羼� � 蝾麝�(2855,451) � 桤徉恻蝈顸 铗 <r描汔眚耜桴 殄蜩>.")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(HasRecord, 874)
	MisBeginCondition(NoMission, 878)
	MisBeginCondition(NoRecord, 878)
	MisBeginAction(AddMission, 878)
	MisBeginAction(AddTrigger, 8781, TE_KILL, 195, 12 )
	MisCancelAction(ClearMission, 878)

	MisNeed(MIS_NEED_DESP, "俞彘蝈 潆� 脏痄�� <r12 描汔眚耜桴 殄蜩>.")
	MisNeed(MIS_NEED_KILL, 195, 12, 10, 12 )

	MisHelpTalk("篷腓 蔓 篑蜞腓 - 铗漕蹴栩�, 眍 礤 玎狍潼蝈 � 祛彘 镳铖�.")
	MisResultTalk("骂� 锣 磬沭噤�.")
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

-----------------------------------巨人木棒
	DefineMission( 879, "描汔眚耜�� 铕�耔磬", 879 )
	
	MisBeginTalk( "<t>念 戾�� 漕� 耠篚�, 黩� 蔓 桤徉怆�弪� 脲� 铗 箧囫睇� 洋耱�.<n><t>青踱囹栩� 祉� 蝾沅� 玎 忸珥嚆疣驿屙桢 <y10 描汔眈觇� 铕�耔�>. 蔓 桴 镱塍麒蝈 筢桠 � 蝾麝�(2855,451) 描汔眚耜钽� 殄蜩.")
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(HasRecord, 873)
	MisBeginCondition(NoMission, 879)
	MisBeginCondition(NoRecord, 879)
	MisBeginAction(AddMission, 879)
	MisBeginAction(AddTrigger, 8791, TE_GETITEM, 4862, 10 )
	MisCancelAction(ClearMission, 879)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <b体觋桦铐�> <y10 描汔眈觇� 铕�耔�>.")
	MisNeed(MIS_NEED_ITEM, 4862, 10, 10, 10)
	
	MisHelpTalk("枢�? 蔓 礤 镳桧羼腓 祉� 妁� 10 描汔眈觇� 铕�耔�? 腕 蔓 驽 镳桧羼蛤�? � 磬 锣� 蜞� 磬溴�...")
	MisResultTalk("� 磬殇� 桁 躅痤� 镳桁屙屙桢!")
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

-----------------------------------敌后
	DefineMission( 880, "宣� 怵嚆�", 880 )
	
	MisBeginTalk( "<t>埋� 骅蝈腓 磬� 溴疱忭� 镱耧铕桦�, 耢铈弪� 腓 蔓 筢栩� 12 体蜿桴 耜咫弪钼-耱疱腙钼 桦� 礤�! 篷腓 黩�, � 玎 蝾 黩� 蔓 耢铈弪�!")
	MisBeginCondition(LvCheck, ">", 41 )
	MisBeginCondition(HasRecord, 876)
	MisBeginCondition(NoMission, 880)
	MisBeginCondition(NoRecord, 880)
	MisBeginAction(AddMission, 880)
	MisBeginAction(AddTrigger, 8801, TE_KILL, 502, 12 )
	MisCancelAction(ClearMission, 880)

	MisNeed(MIS_NEED_DESP, "俞栩� 潆� <b湾殡�> <r12 体蜿桴 耜咫弪钼-塍黜桕钼>.")
	MisNeed(MIS_NEED_KILL, 502, 12, 10, 12 )

	MisHelpTalk("枢�? 蔓 疣玮� 妁� 礤 镱觐眵桦� � 体蜿桁� 耜咫弪囔�-塍黜桕囔�?")
	MisResultTalk("扬囫栳� 锣�! 项 玎耠筱囔 桁...")
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

-----------------------------------昔日辉煌
	DefineMission( 881, "央噔� 镳铠腩泐", 881 )
	
	MisBeginTalk( "<t>蔓 礤 怦蝠鬻嚯桉� 妁� � <r体蜿桁 耜咫弪铎-塍黜桕铎>?<n><t>暑沅� � 猁� 祛腩�, 赅� 蔓, 铐� 礤 珥嚯� 铗 戾�� 镱潲, 眍 泐潲 徨痼� 疋罡...<n><t>皖 � 鬣耱� 怦镱扈磬� 蝈 漤�... 湾 镳桧羼腓 猁 蔓 祉� 桴 蝠铘彘 <y央铎囗眍� 疱狃�> 磬 镟��螯? � 猁� 猁 锣� 镳桤磬蝈脲�?")
	MisBeginCondition(LvCheck, ">", 41 )
	--MisBeginCondition(HasRecord, 873)
	MisBeginCondition(NoMission, 881)
	MisBeginCondition(NoRecord, 881)
	MisBeginAction(AddMission, 881)
	MisBeginAction(AddTrigger, 8811, TE_GETITEM, 4822, 8 )
	MisCancelAction(ClearMission, 881)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <b叔忤眢 宇媵�> � 蝾麝�(2688,628) <y8 央铎囗 鸶徨�>.")
	MisNeed(MIS_NEED_ITEM, 4822, 8, 10, 8)
	
	MisHelpTalk("蔓 妁� 礤 躅滂腓 恹镱腠�螯 祛� 镳铖�?")
	MisResultTalk("泥, 溧, � 蝈 襦禧� 央铎囗睇� 鸶狃�! 蒗, 耜铍� 驽 怵屐屙� � 蝈� 镱� 镳铠腩...")
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

----------------------------------捕猎冰龙幼崽
	DefineMission( 882, "熙铗� 磬 溴蝈睇 漯嚓铐�", 882 )
	
	MisBeginTalk( "<t>� 蝈镥瘘 禧 镱殇胳 磬 铛铗�...<n><t>熙铗栩� 禧 狍溴� 磬 <r隋��睇� 漯嚓铐麒觐�>.<n><t>俞彘蝈 潆� 戾�� <r10 隋��睇� 漯嚓铐麒觐�>, 玎 礤犷朦� 忸珥嚆疣驿屙桢.")
	MisBeginCondition(LvCheck, ">", 41 )
	MisBeginCondition(HasRecord, 875)
	MisBeginCondition(NoMission, 882)
	MisBeginCondition(NoRecord, 882)
	MisBeginAction(AddMission, 882)
	MisBeginAction(AddTrigger, 8821, TE_KILL, 530, 10 )
	MisBeginAction(AddTrigger, 8822, TE_GETITEM, 4850, 1 )
	MisCancelAction(ClearMission, 882)

	MisNeed(MIS_NEED_DESP, "俞栩� 潆� 湾殡� <r10 隋��睇� 漯嚓铐麒觐�> � 镳桧羼蜩 <y鼠耦麇� 皴痄鲟 桤 脲�. 牮桉蜞腚�>. ")
	MisNeed(MIS_NEED_KILL, 530, 10, 10, 10 )
	MisNeed(MIS_NEED_ITEM, 4850, 1, 20, 1 )

	MisHelpTalk("蔓 妁� 礤 躅滂腓 磬 铛铗�?")
	MisResultTalk("鸯铗瘙 � 磬 锣� � 忤骟 磬耱��泐 邈屦�!")
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

-----------------------------------冰晶之谜
	DefineMission( 883, "署桉蜞朦磬� 泐腩忸腩礻�", 883 )
	
	MisBeginTalk( "<t>念 戾�� 漕� 耠篚�, 黩� 蔓 铛铗栩羼� 磬 <r隋��眍泐 漯嚓铐麒赅>. 青踱囹栩� 祉� 镱驵塍轳蜞 � 礤泐 <y5 鼠耦麝钼 皴痄鲟 桤 脲�. 牮桉蜞腚�>.")
	MisBeginCondition(LvCheck, ">", 41 )
	MisBeginCondition(HasRecord, 882)
	MisBeginCondition(NoMission, 883)
	MisBeginCondition(NoRecord, 883)
	MisBeginAction(AddMission, 883)
	MisBeginAction(AddTrigger, 8831, TE_GETITEM, 4850, 5 )
	MisCancelAction(ClearMission, 883)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <b燕> � 蝾麝�(2678,631) <y5 鼠耦麝钼 皴痄鲟 桤 脲�. 牮桉蜞腚�>.")
	MisNeed(MIS_NEED_ITEM, 4850, 5, 10, 5)
	
	MisHelpTalk("蔓 箧� 忮痦箅桉�? � 牮桉蜞腚�? 腕 礤 麇泐 耱疣钽�, � 镱漕驿�!")
	MisResultTalk("�! 扬囫栳� 锣�. 扬囫栳�!")
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


-----------------------------------水晶心
	DefineMission( 884, "署桉蜞朦眍� 皴痄鲥", 884 )
	
	MisBeginTalk( "<t>篷螯 脲沐礓�, 黩� <y署桉蜞腚 麒耱铗�> 祛骓� 镳孱狃噻钼囹� � <y牮桉蜞朦眍� 皴痄鲥> � 骅螯 忮黜�! 泥忄轵� 镳钼屦桁 �?! 橡桧羼栩� 祉� <y5 署桉蜞腚钼 麒耱铗�>.")
	MisBeginCondition(LvCheck, ">", 43 )
	MisBeginCondition(HasRecord, 883)
	MisBeginCondition(NoMission, 884)
	MisBeginCondition(NoRecord, 884)
	MisBeginAction(AddMission, 884)
	MisBeginAction(AddTrigger, 8841, TE_GETITEM, 4895, 5 )
	MisCancelAction(ClearMission, 884)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <b燕> <y5 署桉蜞腚钼 麒耱铗�>.")
	MisNeed(MIS_NEED_ITEM, 4895, 5, 10, 5)
	
	MisHelpTalk("朽玮� 锣� 礤 桧蝈疱耥� 镳钼屦栩� 脲沐礓�.")
	MisResultTalk("扬囫栳�! � 耦驵脲龛�, � 怦邈� 腓 牮囫桠�� 脲沐礓�.")
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

-----------------------------------捕猎极地熊
	DefineMission( 885, "熙铗� 磬 徨腩泐 戾溻邃�", 885 )
	
	MisBeginTalk( "<t>� 镳邃豚汔� 镱轵� 磬 铛铗�! � 铛铗栩� � 镳邃豚汔� 磬 毋痤祉 镱��痦 戾溻邃彘!")
	MisBeginCondition(LvCheck, ">", 43 )
	MisBeginCondition(HasRecord, 882)
	MisBeginCondition(NoMission, 885)
	MisBeginCondition(NoRecord, 885)
	MisBeginAction(AddMission, 885)
	MisBeginAction(AddTrigger, 8851, TE_KILL, 504, 8 )
	MisBeginAction(AddTrigger, 8852, TE_GETITEM, 4824, 3 )
	MisCancelAction(ClearMission, 885)

	MisNeed(MIS_NEED_DESP, "俞彘蝈 潆� <b湾殡�> <y8 毋痤祉 镱��痦 戾溻邃彘> � 镳桧羼栩� <y3 铖蝠彘� 觌� 戾溻邃�>. ")
	MisNeed(MIS_NEED_KILL, 504, 8, 10, 8 )
	MisNeed(MIS_NEED_ITEM, 4824, 3, 20, 3 )

	MisHelpTalk("蔓 礤 膻徼蝈 铛铗�?")
	MisResultTalk("锣� 镱眇噔桦囫� 铛铗�?")
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

-----------------------------------巨人首领
	DefineMission( 886, "秒噔� 耥彐眍泐 膻溧", 886 )
	
	MisBeginTalk( "<t>泥忄轵� 镱腩骅� 磬 觐礤� 祛眈蝠囔 钺栩帼� � 脲襦� 隋潲龛! 俞彘蝈 <r16 秧彐睇� 族腩忮�>!")
	MisBeginCondition(LvCheck, ">", 44 )
	MisBeginCondition(HasRecord, 872)
	MisBeginCondition(NoMission, 886)
	MisBeginCondition(NoRecord, 886)
	MisBeginAction(AddMission, 886)
	MisBeginAction(AddTrigger, 8861, TE_KILL, 194, 16 )
	MisCancelAction(ClearMission, 886)

	MisNeed(MIS_NEED_DESP, "俞栩� 潆� <b脏痄��> <r16 秧彐睇� 麇腩忮�>. ")
	MisNeed(MIS_NEED_KILL, 194, 16, 10, 16 )

	MisHelpTalk(" 湾 忸玮疣轵羼� 觐 祉� 镱赅 礤 皲咫噱蝈 蝾, � 鞲� � 锣� 镱镳铖桦!")
	MisResultTalk("蔓 塍鼬栝 筢栝鲟 祛眈蝠钼 觐蝾瘥� � 觐沅� 腓 犷 怦蝠鬻嚯!")
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

-----------------------------------恐怖巨人大刀
	DefineMission( 887, "渔囫帼� 戾� 汨汔眚�", 887 )
	
	MisBeginTalk( "<t>斟�, 疣� 忤溴螯 锣� 骅恹� � 礤怵邃桁!<n><t>亦�, 赅� 恹 箧� 珥嚓铎� � <r秧彐睇� 箧囫铎>, 礤 祛汶� 猁 蔓 祉� 镳桧羼蜩 <y5 渔囫帼� 戾麇� 汨汔眚�>?")
	MisBeginCondition(LvCheck, ">", 43 )
	MisBeginCondition(HasRecord, 883)
	MisBeginCondition(NoMission, 887)
	MisBeginCondition(NoRecord, 887)
	MisBeginAction(AddMission, 887)
	MisBeginAction(AddTrigger, 8871, TE_GETITEM, 4910, 5 )
	MisCancelAction(ClearMission, 887)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <b体觋桦铐�> � 蝾麝�(2662,648) <y渔囫帼� 戾� 汨汔眚�>.")
	MisNeed(MIS_NEED_ITEM, 4910, 5, 10, 5)
	
	MisHelpTalk("蔓 桉矬汔腓顸 铒�螯 耱铍觏篁� � 秧彐睇� 箧囫铎?")
	MisResultTalk("锣! 蔓 磬耱��� 爨耱屦 疋铄泐 溴豚!")
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

-----------------------------------狼人弓箭手
	DefineMission( 888, "洛疴铍 塍黜桕", 888 )
	
	MisBeginTalk( "<t>枢� 蔓 箧� 镱��腓, 禧 桎胳 磬 铛铗�! 袜� 驽痱忸� 狍溴� <r洛疴铍 塍黜桕>! 秒噔眍�, 磬� 襦扈� 礤 耱囹� 邈� 驽痱忸�!")
	MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 880)
	MisBeginCondition(NoMission, 888)
	MisBeginCondition(NoRecord, 888)
	MisBeginAction(AddMission, 888)
	MisBeginAction(AddTrigger, 8881, TE_KILL, 272, 20 )
	MisBeginAction(AddTrigger, 8882, TE_GETITEM, 4916, 5 )
	MisCancelAction(ClearMission, 888)

	MisNeed(MIS_NEED_DESP, "俞栩� <r20 洛疴铍 塍黜桕钼> � 镳桧羼蜩 <y5 央铎囗睇� 塍觐� 洛疴铍�> <b湾殡�>.")
	MisNeed(MIS_NEED_KILL, 272, 20, 10, 20 )
	MisNeed(MIS_NEED_ITEM, 4916, 5, 40, 5 )

	MisHelpTalk("蔓 篑蜞腓 铗 铛铗�? 悟漕蹴栩�!")
	MisResultTalk("项蝠�襦�!")
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

-----------------------------------最终魔人
	DefineMission( 889, "项耠邃龛� 殄蜩", 889 )
	
	MisBeginTalk( "<t>蒡� 襦禧� 耱疣 隋耥铋 祛眈蝠 觐蝾痤泐 � 忤溴� � 疋铄� 骅珥�, 狍潼蝈 � 龛� 铟屙� 铖蝾痤骓�!")
	MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 878)
	MisBeginCondition(NoMission, 889)
	MisBeginCondition(NoRecord, 889)
	MisBeginAction(AddMission, 889)
	MisBeginAction(AddTrigger, 8891, TE_KILL, 545, 15 )
	MisCancelAction(ClearMission, 889)

	MisNeed(MIS_NEED_DESP, "俞彘蝈 潆� <b脏痄彘> <r15 署钼铈噤睇� 殄蜩>.")
	MisNeed(MIS_NEED_KILL, 545, 15, 10, 15 )

	MisHelpTalk("吗屐� - 溴睃汨, 祛� 漯筱!")
	MisResultTalk("悟腓黜�! 骂� 锣 磬沭噤�.")
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

-----------------------------------恐怖巨人木棒
	DefineMission( 890, "渔囫帼� 镱耦� 汨汔眚�", 890 )
	
	MisBeginTalk( "<t>� 戾�� 潆� 锣� 铟屙� 铗忮蝰蜮屙眍� 镱痼麇龛�! 念耱噔� 祉� <�5 渔囫帼� 镱耦躅� 汨汔眚�>, 眍 龛 觐祗 礤 泐忸痂蝈, 黩� 蔓 桴 棂栩� 潆� 戾��.")
	MisBeginCondition(LvCheck, ">", 45 )
	MisBeginCondition(HasRecord, 887)
	MisBeginCondition(NoMission, 890)
	MisBeginCondition(NoRecord, 890)
	MisBeginAction(AddMission, 890)
	MisBeginAction(AddTrigger, 8901, TE_GETITEM, 4912, 5 )
	MisCancelAction(ClearMission, 890)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 <b体觋桦铐筲> 蝾麝� (2662,648) <y5 渔囫帼� 镱耦躅� 描汔眚�>.")
	MisNeed(MIS_NEED_ITEM, 4912, 5, 10, 5)
	
	MisHelpTalk("� 怦� 妁� 驿�, 黩� 蔓 祉� 镳桧羼栩� 蝾, 黩� � 锣� 玎赅玎�!")
	MisResultTalk("扬囫栳� 忄�!")
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

-----------------------------------为了荣誉而战
	DefineMission( 891, "青 麇耱�!", 891 )
	
	MisBeginTalk( "<t>湾觐蝾瘥� 膻滂 桎篁 磬 忸轫� 疣滂 篑蜞眍怆屙�� 扈疣, 漯筱桢 疣滂 耦狁蜮屙眍� 麇耱�. 篷腓 蔓 躅蜩蝈 漕赅玎螯, 黩� 蔓 漕耱铋睇� 忸桧, 恹镱腠栩� 祛� 镱痼麇龛�.<n><t>湾 疣滂 扈疣, � 疣滂 麇耱� � 耠噔�!")
	MisBeginCondition(LvCheck, ">", 46 )
	MisBeginCondition(HasRecord, 888)
	MisBeginCondition(NoMission, 891)
	MisBeginCondition(NoRecord, 891)
	MisBeginAction(AddMission, 891)
	MisBeginAction(AddTrigger, 8911, TE_KILL, 506, 10 )
	MisBeginAction(AddTrigger, 8912, TE_GETITEM, 4826, 1 )
	MisCancelAction(ClearMission, 891)

	MisNeed(MIS_NEED_DESP, "俞栩� 潆� <b湾殡�>, 磬躅��� � 蝾麝�(2675,631), <r10 耜咫弪钼-忸栩咫彘> � 镳桧羼蜩 钿桧 <y珥嚓 忸桧耜铋 麇耱�>. ")
	MisNeed(MIS_NEED_KILL, 506, 10, 10, 10 )
	MisNeed(MIS_NEED_ITEM, 4826, 1, 20, 1 )

	MisHelpTalk("蔓 礤 躅蜩蝈 襦扈 皴徨 漕赅玎螯, 黩� 蔓 磬耱��� 忸桧?")
	MisResultTalk("西屙� 躅痤! 蔓 耧疣忤腓顸 � 祛彘 礤 镳铖蝾� 玎溧麇�!")
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


-----------------------------------捕猎蜥蜴人
	DefineMission( 892, "熙铗� 磬 �疣", 892 )
	
	MisBeginTalk( "<t>埋�, 磬 觐泐 禧 躅滂腓 铛铗栩�, 镱 耩噔礤龛� � 啭屦铎 镳铖蝾 徉腩怦蜮�! 啭屦 - 忸� 磬耱��� 耱桁箅 铛铗�!")
	MisBeginCondition(LvCheck, ">", 49 )
	MisBeginCondition(HasRecord, 885)
	MisBeginCondition(NoMission, 892)
	MisBeginCondition(NoRecord, 892)
	MisBeginAction(AddMission, 892)
	MisBeginAction(AddTrigger, 8921, TE_KILL, 196, 15 )
	MisCancelAction(ClearMission, 892)

	MisNeed(MIS_NEED_DESP, "俞栩� <r15 啭屦钼> 潆� <b湾殡�>(2675,631). ")
	MisNeed(MIS_NEED_KILL, 196, 15, 10, 15 )

	MisHelpTalk("渔� 筢桦� 15 啭屦钼? 翌沅� 桎栩� � 筢彘蝈.")
	MisResultTalk("项耠� 祛桴 桉稃蜞龛� 蔓 磬篦桦桉� 钺豚溧螯 疋铊扈 驽豚龛�扈 � 磬篦桦桉� 铛铗栩�.")
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

-----------------------------------蜥蜴人战斧
	DefineMission( 893, "翌镱� �疣", 893 )
	
	MisBeginTalk( "<t>栗! 枢� 猁 � 躅蝈� 桁弪� 觐腚尻鲨� 桤 <y蝾镱痤� �疣>...")
	MisBeginCondition(LvCheck, ">", 49 )
	MisBeginCondition(HasRecord, 890)
	MisBeginCondition(NoMission, 893)
	MisBeginCondition(NoRecord, 893)
	MisBeginAction(AddMission, 893)
	MisBeginAction(AddTrigger, 8931, TE_GETITEM, 4920, 5 )
	MisCancelAction(ClearMission, 893)
	
	MisNeed(MIS_NEED_DESP, "橡桧羼蜩 � 蝾麝�(2662,648) <b体觋桦铐�> <y5 蝾镱痤� �疣>.")
	MisNeed(MIS_NEED_ITEM, 4920, 5, 10, 5)
	
	MisHelpTalk("� 礤 耧屮�! 皖 蔓 钺妁噱蝈 祉� 镳桧羼蜩 <y蝾镱瘥 �疣>?")
	MisResultTalk("扬囫栳� 锣�! 蔓 祉� 铟屙� 镱祛汶�.")
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
	--			加勒比海盗版本			     --
	--							     --
	---------------------------------------------------------------


----------------------------------------
--                                    --
--              海盗任务              --
--                                    --
----------------------------------------

--铁匠 >> 反侦查
	DefineMission(894, "暑眚�-镳钼屦赅", 894)
	MisBeginTalk("<t>蓍, 螓! � 眢 赅 耱��螯! 锗! 饮 镨疣�! 饮 蝮� 礤溧忭�?<n><t>篷腓 饮 镨疣�, 蝾 漕赅骅 祉� �! 禹梓蝾纥 <r4 殷疱朦 戾痱恹� 潴�> � <p骂屙眍� 拎珏>. 蒡� 铒囫眍, 眍 漕赅驽� 蜮铪 镳邃囗眍耱� � 镨疣蜞�.")
	
	MisBeginCondition(NoRecord, 894)
	MisBeginCondition(NoMission, 894)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 894)
	MisBeginAction(AddTrigger, 8941, TE_KILL, 801, 4)

	MisCancelAction(ClearMission, 894)

	MisNeed(MIS_NEED_KILL, 801, 4, 10, 4)
	

	MisHelpTalk("<t>昨�? 饮 妁� 礤 恹镱腠桦 祛� 镱痼麇龛�? 羊箫嚅 礤戾潆屙眍!")
	MisResultTalk("<t>饮 磬耱��� 镨疣�! �, 赅� � 蝾朦觐 祛� 耦祉邂囹� � 铎! � 疣耨赅玎� � 蜮罡� 沐痤梓羼觐� 镱溻桡� <b翔疣蝮 逆尻�>, 铐 玎桧蝈疱耦忄腭� � 蝈徨!<n><t>悟镳噔��轳� � <b翔疣蝮 逆尻�> � 镱泐忸痂 � 龛�!")

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
		

--杰克史派罗 >> 最强的海盗

	DefineMission(895, "铃耧钿钺睇� 镨疣�", 895)
	MisBeginTalk("<t>添�, � 蝈徨 疣耨赅玎� <p腋痦屦>! � 忸聃棂疙 蜮铄� 疱祛耱 � 耢咫铖螯�! 饮 镱漉钿桫� 潆� 祛邈� 铖钺钽� 镱痼麇龛�!<n><t>帖 皴轺囫 忸� � 镨疣蜞扈 镳桤疣赅扈! 蒡� 囵扈� <p拎疳囵铖�>! 饮 磬� 眢驽�, 黩� 猁 钿屦驵螯 镱徨潴! 皖 潆� 磬鬣豚 螓 漕腈屙 铖豚徼螯 囵扈� 镳铗桠龛赅 筢桠 <r30 杨脘囹 旄痱恹� 潴�> � <r15 谈痱恹� 潴�>. � 忮瘙 � 蝈��!")
	
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
	

	MisHelpTalk("<t>蒡� 礤 镳铖蝾� 镱痼麇龛�! 悟 钽� 玎忤耔� 耋潼徉 镨疣蝾�.")
	MisResultTalk("<t>饮 溴轳蜮栩咫� <p忮腓觇� 镨疣�>! 义徨 礤钺躅滂祛 礤祉钽� 铗漕蹴篁� 镥疱� 忮腓觇� 犷屐!")

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
	
	
-- 杰克史派罗 >> 将军的首级

	DefineMission(896, "秒噔� 觐爨礓钼囗��", 896)
	MisBeginTalk("t>饮 躅痤 铗漕蹴箅? 悟腓黜�! 填� 镨疣螓 泐蝾恹 恹耱箫栩�, 眍 潆� 磬鬣豚 螓 漕腈屙 镱祛鼽 祉� 桤徉忤螯 桴 铗 耱疣踵.<n><t>俞彘 <r暑爨礓桊� 旄痱恹� 潴�> � 镳桧羼� 邈� <y泐腩怏>. 蒡� 镳桎囫� 筲屦屙眍耱� 祛桁 镨疣蜞�.")
	
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
	

	MisHelpTalk("<t>湾 痂耜箝 镱 磬镳囫眍! 蒡� 铟屙� 铒囫眍� 玎溧龛�!")
	MisResultTalk("<t>锗-踵-踵! 泥 螓 怦牮箧桦 屐� 泐腩怏! 锗-踵-踵... 铐 甯 镳铖蝾 镱蝈���!")

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
--              海军任务              --
--                                    --
----------------------------------------

-- 灵顿将军 >> 海盗的食物
	DefineMission(897, "配� 镨疣蝾�", 897)

	MisBeginTalk("<t>羊囗钼桉�! 鸯桊眍! 朽忭屙桢 磬 戾��! 令弼! 饮 镥疱躅滂 镱� 祛� 觐爨礓钼囗桢! 意�� 镥疴�� 玎溧鬣 �: 镳桧羼蜩 <y5 翔忸 翔疣蝾�> � <y5 拎疳尻� 镨疣蝾�>! 秧圜嚯� 恹镱腠屙桢 玎溧麒, � 箧� 镱蝾� 忸镳铖�!")
	MisBeginCondition(NoRecord, 897)
	MisBeginCondition(NoMission,897)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 897)
	MisBeginAction(AddTrigger, 8971,TE_GETITEM, 2413, 5)
	MisBeginAction(AddTrigger, 8972,TE_GETITEM, 2414, 5)
	
	MisCancelAction(ClearMission, 897)

	MisNeed(MIS_NEED_ITEM, 2413, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 2414, 5, 20, 5)

	MisHelpTalk("<t>饮 � 怦� 耢铈屮� 镱塍麒螯 筢桠 觐疣犭� 镳桤疣�! 袜� 礤钺躅滂祛 镱��螯 镱麇祗 铐� 蜞觇� 耔朦睇�. � 躅��� 脲沐礓�, 黩� � 镳钼桤�� 桁 镳桎喔� 耔塍!")

	MisResultTalk("亦�, 蜞�! 楞�! 蒡� 蝾 襦祛�! 泥轵� 赅 � 镱耢铗瘙... 侦...<n><t>蒡� 镳钼桤�� 龛 麇� 礤 铗腓鬣弪�� 铗 镳铖蝾� 邃�! 项 忤滂祛祗 � 怦邈� 腓 脲沐礓�!")
	
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
	
-- 灵顿将军 >>  剿灭海盗
	DefineMission(898, "项腠铄 箜梓蝾驽龛� 镨疣蝾�", 898)

	MisBeginTalk("<t>蓍, 犷弼! � 戾�� 羼螯 眍忄� 玎溧鬣 潆� 蝈��!<n><t>橡桧羼栩� 祉� <y15 翔疣蝰觇� 觐耱彘>! 湾 玎溧忄� 腓桴 忸镳铖钼! 橡铖蝾 镳桧羼� 祉� 桴!")
	MisBeginCondition(HasRecord, 897)
	MisBeginCondition(NoRecord, 898)
	MisBeginCondition(NoMission,898)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 898)
	MisBeginAction(AddTrigger, 8981, TE_GETITEM, 2419, 15)
	
	MisCancelAction(ClearMission, 898)

	MisNeed(MIS_NEED_ITEM, 2419, 15, 30, 15)

	MisHelpTalk("<t>饮 铗赅琨忄屮� 恹镱腠�螯 镳桕噻� 恹耱��泐 铘桷屦�? 青 � � 蝈�� 镱� 蝠栳箜嚯...")

	MisResultTalk("<t>泥! � 蜞� � 潴爨�! 暑疣犭� 镳桤疣觇 溴轳蜮簋� 镱 镳�祛祗 镳桕噻� 赘痦铋 驽祺箧桧�! 悟漕蹴栩� 镥疱� 忄骓铋 扈耨桢�.")
	
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


-- 灵顿将军 >> 被诅咒的黑珍珠号
	DefineMission(899, "橡铌��螓� 麇痦 狃桦腓囗�", 899)

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

	MisHelpTalk("<t>枢� 蝾朦觐 禧 玎镱塍麒� <y琼嚓 赅镨蜞磬> � 筢� <r赘痦簋 驽祺箧桧�>, 祛� 囵扈� 疣玢痤扈� 镨疣蝾�!")

	MisResultTalk("<t>悟腓黜�! 饮 铒疣怃嚯 祛� 磬溴驿�! 骂� 蜮�� 磬沭噤�, 玎 镳钿咫囗眢� 疣犷蝮!")
	
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