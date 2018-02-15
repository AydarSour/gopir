--------------------------------------------------------------------------
--									--
--									--
--MissionScript02.lua Created by Robin 2005.03.31.			--
--									--
--									--
--------------------------------------------------------------------------
print( "loading MissionScript02.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

----------------------------------------------------------
--							--
--							--
--		历史任务	 				--
--							--
--		227725,276925				--
----------------------------------------------------------
	-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>历史任务开始
function HistoryMission001()

----------------------------首席秘书的口信
	DefineMission( 200, "杨钺龛� 皴牮弪囵�", 200 )
	
	MisBeginTalk( "<t>念狃 溴睃. � 潴爨� 黩� 蝈徨 镱疣 铗礤耱� 镨顸祛 皴牮弪囵� 鲤沐眚�, <b燕朦恻屦�>. 愉圜� � 礤 铒噻潲忄�!" )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 200)
	MisCancelAction(ClearMission, 200)
		
	MisNeed(MIS_NEED_DESP, "彦牮弪囵� 磬躅滂蝰� � 鲤沐眚� 镱 觐铕滂磬蜞�  (2219, 2749)")
	
	MisHelpTalk("<t>项麇祗 恹 礤 怦蝠弪桦桉� � 皴牮弪囵屐 鲤沐眚�? 项驵塍轳蜞 镱蝾痤镨蝈顸.")
	MisResultCondition(AlwaysFailure )

	



----------------------------首席秘书的口信
	DefineMission( 201, "杨钺龛� 皴牮弪囵�", 201 )
	
	MisBeginTalk( "<t>念狃 溴睃. � 潴爨� 黩� 蝈徨 镱疣 铗礤耱� 镨顸祛 皴牮弪囵� 鲤沐眚�, <b燕朦恻屦�>. 愉圜� � 礤 铒噻潲忄�!" )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 201)
	MisCancelAction(ClearMission, 201)
		
	MisNeed(MIS_NEED_DESP, "彦牮弪囵� 磬躅滂蝰� � 鲤沐眚� 镱 觐铕滂磬蜞�  (2219, 2749)")
	
	MisHelpTalk("<t>项麇祗 恹 礤 怦蝠弪桦桉� � 皴牮弪囵屐 鲤沐眚�? 项驵塍轳蜞 镱蝾痤镨蝈顸.")
	MisResultCondition(AlwaysFailure )


----------------------------首席秘书的口信
	DefineMission( 202, "杨钺龛� 皴牮弪囵�", 202 )
	
	MisBeginTalk( "<t>念狃 溴睃. � 潴爨� 黩� 蝈徨 镱疣 铗礤耱� 镨顸祛 皴牮弪囵� 鲤沐眚�, <b燕朦恻屦�>. 愉圜� � 礤 铒噻潲忄�!" )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 202)
	MisCancelAction(ClearMission, 202)
		
	MisNeed(MIS_NEED_DESP, "彦牮弪囵� 磬躅滂蝰� � 鲤沐眚� 镱 觐铕滂磬蜞�  (2219, 2749)")
	
	MisHelpTalk("<t>项麇祗 恹 礤 怦蝠弪桦桉� � 皴牮弪囵屐 鲤沐眚�? 项驵塍轳蜞 镱蝾痤镨蝈顸.")
	MisResultCondition(AlwaysFailure )


-----------------------------------首席秘书的口信
	DefineMission( 203, "杨钺龛� 皴牮弪囵�", 200, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>念狃� 镱驵腩忄螯, � 疣� 怦蝠鬻� � 锣扈. 锣 疱矬蜞鲨� 疣耧痤耱疣龛豚顸 蜞� 溧脲觐 黩� � � 疣漕耱 镳桁� 忄�.")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 200)
	MisResultAction(ClearMission, 200 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)



-----------------------------------首席秘书的口信
	DefineMission( 204, "杨钺龛� 皴牮弪囵�", 201, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>念狃� 镱驵腩忄螯, � 疣� 怦蝠鬻� � 锣扈. 锣 疱矬蜞鲨� 疣耧痤耱疣龛豚顸 蜞� 溧脲觐 黩� � � 疣漕耱 镳桁� 忄�.")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 201)
	MisResultAction(ClearMission, 201 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)


-----------------------------------首席秘书的口信
	DefineMission( 205, "杨钺龛� 皴牮弪囵�", 202, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>念狃� 镱驵腩忄螯, � 疣� 怦蝠鬻� � 锣扈. 锣 疱矬蜞鲨� 疣耧痤耱疣龛豚顸 蜞� 溧脲觐 黩� � � 疣漕耱 镳桁� 忄�.")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 202)
	MisResultAction(ClearMission, 202 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,999,999)
	MisResultAction(AddExpAndType,2,875,875)


----------------------------小小的考验
	DefineMission( 206, "象耱�觐忄� 玎溧鬣", 203 )
	
	MisBeginTalk( "<t>� 躅蝈� 猁 镳铖栩� 忄� 镳钼羼蜩 疣耨脲漕忄龛� 礤觐蝾瘥� 耱疣眄 耦猁蜩� � 相耱篪� 疣忭桧圊. <n> <t> 武磬觐 漕 蝾泐 赅� 溧螯 忄� � 玎溧龛�,� 恹眢驿屙 桉稃蜞螯 忄�<n> <t> 氧钿栩� � <p橡桉蜞礤 鲤沐眚�> 镱 觐铕滂磬蜞� (2277, 2831 ) � 磬殇栩� 蜞� <b缅礤疣豚-逾桦��爨>. 雾 溧耱 忄� 礤犷朦� 玎溧黧." )
	MisBeginCondition(NoRecord, 203)
	MisBeginCondition(NoMission, 203)
	MisBeginCondition(HasRecord, 200)
	MisBeginAction(AddMission, 203)
	MisCancelAction(ClearMission, 203)
		
	MisNeed(MIS_NEED_DESP, "袜轵� <b缅礤疣� - 妈朦��> 磬 <p橡桉蜞龛 囵沐眚�> 镱 觐铕滂磬蜞�  (2277, 2831)")
	
	MisHelpTalk("枢觇� 妁� 忸镳铖�? 篷腓 桴 礤蝮, 蝾 镱驵塍轳蜞, 磬殇栩� <b缅礤疣� 逾桦���> 铐 磬珥圜栩 忄� 玎溧龛�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------小小的考验
	DefineMission( 207, "象耱�觐忄� 玎溧鬣", 203, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("栗, 谚脞屦 铟屙� 耱疣眄 镟疱睃, 镱覃豚弪 磬� 礤桤忮耱眍 觐泐. 念忮��弪 腓 铐 綦铗�? <n> <t> 骂玮疣轳� 觐沅� 狍溴 泐蝾�. � 戾�� 羼螯 玎溧龛� 潆� 忄�")
	MisResultCondition(NoRecord, 203)
	MisResultCondition(HasMission, 203)
	MisResultAction(ClearMission, 203 )
	MisResultAction(SetRecord, 203 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1000,1000)
	MisResultAction(AddExpAndType,2,875,875)



-------------------------------------------------海军的伙食配料
	DefineMission( 208, "橡钼栲眚 潆� 綦铗�", 204 )

	MisBeginTalk( "<t>� 潴爨� 恹 耧铖钺睇 恹镱腠栩� � 玎溧龛�.橡桧羼栩� 祉� 礤觐蝾瘥� 镳邃戾螓. <n> <t> 添� 眢骓� 5 <y��耦 矬琨瘅囹钽� 祛腚赅>, 10 <y��耦 箅栩觇> � 10 <y蓦栝耜栝 麴箨�>" )
	MisBeginCondition(NoRecord, 204)
	MisBeginCondition(HasRecord, 203)
	MisBeginCondition(NoMission, 204)
	MisBeginAction(AddMission, 204)
	MisBeginAction(AddTrigger, 2041, TE_GETITEM, 3963, 5 )		--射水贝肉
	MisBeginAction(AddTrigger, 2042, TE_GETITEM, 3964, 10 )		--海螺肉
	MisBeginAction(AddTrigger, 2043, TE_GETITEM, 3116, 10 )
	MisCancelAction(ClearMission, 204)

	MisNeed(MIS_NEED_ITEM, 3963, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3964, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3116, 10, 30, 10)

	MisResultTalk("<t>泥驽 羼腓 恹 恹镱腠桦� � 玎溧龛�, 漕 磬� 耱囗溧痱钼 忄� 溧脲觐.")
	MisHelpTalk("<t>亦赅� 镳铖蜞� 玎溧鬣, � 恹 礤 祛驽蝈 耧疣忤螯��? <n> <t> 项祉栩�! � 蝠遽簋 铗 忄�  5 <y��襦 矬琨瘅囹钽� 祛腚赅>, 10 <y��襦 祛瘃觐� 箅栩觇> � 10 <y蓦栝耜桢 麴箨蝾�>.")
	MisResultCondition(HasMission, 204)
	MisResultCondition(HasItem, 3963, 5 )
	MisResultCondition(HasItem, 3964, 10 )
	MisResultCondition(HasItem, 3116, 10 )
	MisResultAction(TakeItem, 3963, 5 )
	MisResultAction(TakeItem, 3964, 10 )
	MisResultAction(TakeItem, 3116, 10 )
	MisResultAction(ClearMission, 204)
	MisResultAction(SetRecord, 204 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1000,1000)	
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3963)	
	TriggerAction( 1, AddNextFlag, 204, 10, 5 )
	RegCurTrigger( 2041 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3964)	
	TriggerAction( 1, AddNextFlag, 204, 20, 10 )
	RegCurTrigger( 2042 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 204, 30, 10 )
	RegCurTrigger( 2043 )

----------------------------走失的唐德
	DefineMission( 209, "橡铒噔� 翌祆�", 205 )
	
	MisBeginTalk( "<t>项耜铍� 恹  玟羼�, 镱麇祗 猁 忄� 礤 镱祛� 磬轵� 镳铒噔泐 疱徨黻�. 陪� 珙怏� <b翌祆�>. � 镱耠邃龛� 疣� 邈� 忤滂腓 礤溧脲觐 铗  <p相耱篪� 疣忭桧>. 洛痦栩� 邈� 漕祛� 犭嚆铒铍篦眍!" )
	MisBeginCondition(NoRecord, 205)
	MisBeginCondition(HasRecord, 204)
	MisBeginCondition(NoMission, 205)
	MisBeginAction(AddMission, 205)
	MisCancelAction(ClearMission, 205)
		
	MisNeed(MIS_NEED_DESP, "袜轵� 翌祆� 镱 觐铕滂磬蜞� (1962, 2694)")
	
	MisHelpTalk("<t>湾耜铍� 膻溴� 忤溴腓 <b翌祆�> 礤溧脲觐 铗 <p彦疱狃�睇� 剜躜>. 项棂� 蜞�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------走失的唐德
	DefineMission( 210, "橡铒噔� 翌祆�", 205, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>蔓 桉赅腓  戾��? � 镳桫咫 颃溧, 黩钺� 镱耢铗疱螯 磬 徨睇� 钼弼.")
	MisResultCondition(NoRecord, 205)
	MisResultCondition(HasMission, 205)
	MisResultAction(ClearMission, 205 )
	MisResultAction(SetRecord, 205 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1100,1100)
	MisResultAction(AddExpAndType,2,875,875)


----------------------------向少将回报
	DefineMission( 211, "朽耨赅玎螯 翌祆�", 206 )
	
	MisBeginTalk( "<t>� 箐桠脲� 蝈�, 黩� 沐礤疣� 棂弪 戾��. � 躅蝈� 猁 镱犭嚆钿囵栩� 邈� 玎 玎犷蝮. 橡桧羼� 屐� � 镨顸祛, � 漕赅玎蝈朦耱忸 蝾泐 黩� � � 徨珙镟耦耱�. � 耦徼疣� 铖蜞螯�� 玟羼� 妁� 磬 礤觐蝾痤� 怵屐�." )
	MisBeginCondition(NoRecord, 206)
	MisBeginCondition(HasRecord, 205)
	MisBeginCondition(NoMission, 206)
	MisBeginAction(AddMission, 206)
	MisBeginAction(GiveItem, 3965, 1, 4)		--唐德的信
	MisCancelAction(ClearMission, 206)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "悟礤耔 镨顸祛 沐礤疣塍 予朦�祗 镱 觐铕滂磬蜞� (2277, 2831)")
	
	MisHelpTalk("<t>昨�-龛狍潼 妁�? � 耜铕� 忮痦篑�, 钺妁帼.")
	MisResultCondition(AlwaysFailure )

-----------------------------------向少将回报
	DefineMission( 212, "朽耨赅玎螯 翌祆�", 206, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>晤�, � 翌祆� 怦� 怙铕�潢�? 扬囫栳�.")
	MisResultCondition(NoRecord, 206)
	MisResultCondition(HasMission, 206)
	MisResultCondition(HasItem, 3965, 1)		--唐德的信
	MisResultAction(TakeItem, 3965, 1 ) 
	MisResultAction(ClearMission, 206 )
	MisResultAction(SetRecord, 206 )
	MisResultAction(AddExp,230,230)
	MisResultAction(AddMoney,1100,1100)	
	MisResultAction(AddExpAndType,2,875,875)


-------------------------------------------------全体食物中毒
	DefineMission( 213, "悟疣怆屙桢 邃�", 207 )

	MisBeginTalk( "<t>术�-牾�. 如忮龛 镱躅驽 邃� 猁豚 铗疣怆屙�. 悟礤耔 镱驵塍轳蜞 <y肃眵> 怵圜� � 囵沐眚� <b蔫蝾> � 镱镳铖� 疣珙狃囹�!" )
	MisBeginCondition(NoRecord, 207)
	MisBeginCondition(HasRecord, 206)
	MisBeginCondition(NoMission, 207)
	MisBeginAction(AddMission, 207)
	MisBeginAction(GiveItem, 3966, 1, 4)			--午餐样本
	MisBeginAction(AddTrigger, 2071, TE_GETITEM, 3967, 1 )		--射水贝肉
	MisCancelAction(ClearMission, 207)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_ITEM, 3967, 1, 10, 1)

	MisResultTalk("<t>饮 礤 镫铛铋 麇腩忮�. 扬囫栳�.")
	MisHelpTalk("橡铗桠��滂�, 镳铠� 忄� 镱耧屮栩�. 屿桊帼.")
	MisResultCondition(HasMission, 207)
	MisResultCondition(HasItem, 3967, 1 )
	MisResultAction(TakeItem, 3967, 1 )
	MisResultAction(ClearMission, 207)
	MisResultAction(SetRecord, 207 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,1200,1200)
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3967)	
	TriggerAction( 1, AddNextFlag, 207, 10, 1 )
	RegCurTrigger( 2071 )

-----------------------------------全体食物中毒
	DefineMission( 214, "悟疣怆屙桢 邃�", 207, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>悟疣怆屙桢?! <n> <t> 项玮铍� 祉� 镱耢铗疱螯 磬 邃�? 侦,恹汶�滂� 怅篑眍, 礤 蜞� 腓?")
	MisResultCondition(NoRecord, 207)
	MisResultCondition(NoFlag, 207, 1 )
	MisResultCondition(HasMission, 207)
	MisResultCondition(HasItem, 3966, 1)		--唐德的信
	MisResultAction(TakeItem, 3966, 1 ) 
	MisResultAction(SetFlag, 207, 1 )
	
-------------------------------------------------解药原料
	DefineMission( 215, "项桉� 镳铗桠��滂�", 208 )

	MisBeginTalk( "<t>� 疣耨祛蝠咫 邃�, 镳钺脲爨 � 蝾� 黩� ��耦 矬琨瘅囹钽� 祛腚赅 猁腩 玎疣驽眍. 添� 镱蝠遽箦蝰� 礤耜铍�  桧沭邃桢眚钼 潆� 镳铗桠帼滂�. <n> <t> 3 <y枢扈�>, 3 <y这铖� 疋桧铌瘥豚> � 3 <y��驽臌� 镟眦桊�>. 湾 祛汶� 猁 恹 镱祛鼽 � 桴 镱桉赅�?" )
	MisBeginCondition(NoRecord, 208)
	MisBeginCondition(HasMission, 207)
	MisBeginCondition(NoMission, 208)
	MisBeginCondition(HasFlag, 207, 1)
	MisBeginAction(AddMission, 208)
	MisBeginAction(AddTrigger, 2081, TE_GETITEM, 1678, 3 )		--羊绒
	MisBeginAction(AddTrigger, 2082, TE_GETITEM, 3968, 3 )		--小猪尾巴
	MisBeginAction(AddTrigger, 2083, TE_GETITEM, 1614, 3 )		--坚硬的壳
	MisCancelAction(ClearMission, 208)

	MisNeed(MIS_NEED_ITEM, 1678, 3, 10, 3)
	MisNeed(MIS_NEED_ITEM, 3968, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 1614, 3, 30, 3)

	MisPrize(MIS_PRIZE_ITEM, 3967, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>洛腓觐脲镯�! 项驵塍轳蜞, 溧� 祉� 怵屐� 潆� 镳桡铗钼脲龛�  镳铗桠��滂�. <n> <t> 项塍麒腩顸! 悟礤耔 � 缅礤疣塍.")
	MisHelpTalk("<t>添� 磬漕 3 <y枢扈�>, 3 <y这铖� 疋桧铌瘥豚> � 3 <y��驽臌� 镟眦桊�>. 饮 疣琨耜嚯 怦�?")
	MisResultCondition(HasMission, 208)
	MisResultCondition(HasItem, 1678, 3 )
	MisResultCondition(HasItem, 3968, 3 )
	MisResultCondition(HasItem, 1614, 3 )
	MisResultAction(TakeItem, 1678, 3 )
	MisResultAction(TakeItem, 3968, 3 )
	MisResultAction(TakeItem, 1614, 3 )
	MisResultAction(ClearMission, 208)
	MisResultAction(SetRecord, 208 )
	MisResultAction(AddExp,250,250)
	MisResultAction(AddMoney,1200,1200)
	MisResultAction(AddExpAndType,2,875,875)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 208, 10, 3 )
	RegCurTrigger( 2081 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3968)	
	TriggerAction( 1, AddNextFlag, 208, 20, 3 )
	RegCurTrigger( 2082 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1614)	
	TriggerAction( 1, AddNextFlag, 208, 30, 3 )
	RegCurTrigger( 2083 )

----------------------------唐德的委托
	DefineMission( 216, "橡铖� 翌祆�", 209 )
	
	MisBeginTalk( "<t><bTommy>'s letter has confirmed that the sheeps that he saw were getting crazy and out of control more often than usual. We decided to call these changed creatures 'Feral'.<n><t>This is also happens to be one of the case that Salvier wanted you to investigate. I suggest you to talk to <bPhysician Ditto> at (2250, 2770) for more information." )
	MisBeginCondition(NoRecord, 209)
	MisBeginCondition(HasRecord, 207)
	MisBeginCondition(NoMission, 209)
	MisBeginAction(AddMission, 209)
	MisCancelAction(ClearMission, 209)
		
	MisNeed(MIS_NEED_DESP, "扬痤耔蝈 蔫蝌� 镱 觐铕滂磬蜞�  (2250, 2770) � 央� 徨眄铋 钼鳆.")
	
	MisHelpTalk("<t>饮 镱泐忸痂� �  蔫蝌� � 犷脲珥� 藻疣腚?")
	MisResultCondition(AlwaysFailure )

-----------------------------------唐德的委托
	DefineMission( 217, "橡铖� 翌祆�", 209, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>骂珈铈眍 � 镳铖蝾 钿磬 桤 徼铍钽梓羼觇� 祗蜞鲨�, 觐蝾瘥� 镳铊聃钿�� 忸牮筱 磬�. 填驽� � 铍��? 添� 眢骓� 箐咫栩� 黧螯 犷朦 忭桁囗�� 铋 镳钺脲戾.")
	MisResultCondition(NoRecord, 209)
	MisResultCondition(HasMission, 209)
	MisResultAction(ClearMission, 209 )
	MisResultAction(SetRecord, 209 )
	MisResultAction(AddExp,280,280)
	MisResultAction(AddMoney,1300,1300)
	MisResultAction(AddExpAndType,2,875,875)


-------------------------------------------------疯狂的原因
	DefineMission( 218, "橡梓桧� 耋爨聒羼蜮��", 210 )

	MisBeginTalk( "<t>疹痤, 镱耠� 礤觐蝾瘥� 桉耠邃钼囗栝, 禧 漕腈睇 镳钼屦栩� <央� 钼鳆>. <n> <t> 橡桧羼� 祉� 5 綦嚓铐钼 <央� 徨眍� 钼鳆>. 袜轵� 桴 祛骓� 镱 觐铕滂磬蜞� (1968, 2697)." )
	MisBeginCondition(NoRecord, 210)
	MisBeginCondition(HasRecord, 209)
	MisBeginCondition(NoMission, 210)
	MisBeginAction(AddMission, 210)
	MisBeginAction(AddTrigger, 2101, TE_GETITEM, 3969, 5 )		--残暴山羊的口水
	MisCancelAction(ClearMission, 210)

	MisNeed(MIS_NEED_ITEM, 3969, 5, 10, 5)

	MisResultTalk("<t>央� 镱祛驽� 潆� 恹�耥屙�� 镳梓桧� 祗蜞鲨�. � 镳钼邃� 镱犷朦 桉耠邃钼囗栝 镱 礤�, � 箸磬� 赅� 钺耱铊� 溴腩.")
	MisHelpTalk("<t>昨� 蜞觐�? 项麇祗 蔓 漕 耔� 镱� 礤 镳桧羼腓 5 綦嚓铐钼 <y央�>?")
	MisResultCondition(HasMission, 210)
	MisResultCondition(HasItem, 3969, 5 )
	MisResultAction(TakeItem, 3969, 5 )
	MisResultAction(ClearMission, 210)
	MisResultAction(SetRecord, 210 )
	MisResultAction(AddExp,280,280)
	MisResultAction(AddMoney,1300,1300)
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3969)	
	TriggerAction( 1, AddNextFlag, 210, 10, 5 )
	RegCurTrigger( 2101 )

-------------------------------------------------深入调查
	DefineMission( 219, "淫囹咫铄 桉耠邃钼囗桢", 211 )

	MisBeginTalk( "<t>项耠� ��溧 桉耠邃钼囗栝, 羼螯 耱疣眄铖螯 � 蝾�, 黩� 钼鳆 镨蜞腓顸 蝾朦觐 蝠噔铋. <n> <t> � 礤 狍潴 噌耦膻蝽� 筲屦屙, 镱赅 恹 礤 镳桧羼弪� 祉� <r棋祺箧桧� 觐痤�� 爨腚觐�>. 雾 磬躅滂蝰� 磬 皴忮疱 <p鲤沐眚�> 镱 觐铕滂磬蜞� (2048, 2514). <n> <t> 扬屮栩�!" )
	MisBeginCondition(NoRecord, 211)
	MisBeginCondition(HasRecord, 210)
	MisBeginCondition(NoMission, 211)
	MisBeginAction(AddMission, 211)
	MisBeginAction(AddTrigger, 2111, TE_GETITEM, 3970, 1 )		--残暴山羊的口水
	MisCancelAction(ClearMission, 211)

	MisNeed(MIS_NEED_ITEM, 3970, 1, 10, 1)

	MisResultTalk("<t> 疹痤� 疣犷蜞! 蔓 镱塍麒腓 <y棋祺箧桧� 觐痤�� 祛腚觐�>. 雾� 铒疱溴脲眄� 塍鼬� 漯筱桴 驽祺箧桧, 蝈镥瘘 � 祛泱 犷脲� 蝙囹咫邋 桤篦栩� 镳钺脲祗!")
	MisHelpTalk("<t>娩� 驽祺箧桧�? 令栩羼� <r暑痤�� 祛腚觐�>? 骂琰扈 � 耦犷� 礤耜铍� 漯箸彘.")
	MisResultCondition(HasMission, 211)
	MisResultCondition(HasItem, 3970, 1 )
	MisResultAction(TakeItem, 3970, 1 )
	MisResultAction(ClearMission, 211)
	MisResultAction(SetRecord, 211 )
	MisResultAction(AddExp,1500,1500)
	MisResultAction(AddMoney,6000,6000)	
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3970)	
	TriggerAction( 1, AddNextFlag, 211, 10, 1 )
	RegCurTrigger( 2111 )

----------------------------帝姆的报告书
	DefineMission( 220, "念觌噤 蔫蝾", 212 )
	
	MisBeginTalk( "<t>蒡� 疣耨脲漕忄龛� 镳钿腓蝰� 妁� 礤觐蝾痤� 怵屐�, � 磬镨襦� 镳邃忄痂蝈朦睇� <y悟麇�>. <n> <t> 项驵塍轳蜞 漕耱噔� 邈� <b燕朦恻屦�> 镱 觐铕滂磬蜞� (2219, 2749)" )
	MisBeginCondition(NoRecord, 212)
	MisBeginCondition(HasRecord, 211)
	MisBeginCondition(NoMission, 212)
	MisBeginAction(AddMission, 212)
	MisBeginAction(GiveItem, 3971, 1, 4)
	MisCancelAction(ClearMission, 212)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "念耱噔� 铗麇� 彦牮弪囵� 鲤沐眚� (2219, 2749)")
	
	MisHelpTalk("<t>昨� 礤 蜞�? 羊箫嚅蝈!")
	MisResultCondition(AlwaysFailure )

-----------------------------------帝姆的报告书
	DefineMission( 221, "念觌噤 蔫蝾", 212, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>� 铗麇蝈 怵圜� 蔫蝾 � 镳铟栩嚯 � 锣� 篑镥踵�. � 疣� 玎 锣�.")
	MisResultCondition(NoRecord, 212)
	MisResultCondition(HasMission, 212)
	MisResultCondition(HasItem, 3971, 1)
	MisResultAction(TakeItem, 3971, 1 )
	MisResultAction(ClearMission, 212 )
	MisResultAction(SetRecord, 212 )
	MisResultAction(AddExp,350,350)
	MisResultAction(AddMoney,1500,1500)
	MisResultAction(AddExpAndType,2,3400,3400)


----------------------------新任务
	DefineMission( 222, "皖忸� 玎溧龛�", 213 )
	
	MisBeginTalk( "<t>妙忸���, 黩� 礤溧脲觐 铗 <p彦疱狃�睇� 躜> 镳钺脲禧. 悟礤耔 疱觐戾礓囹咫铄 镨顸祛 <b熙疣眄桕� - 枢殡�> 镱 觐铕滂磬蜞� (1909, 2820). 雾 溧耱 蝈徨 眍忸� 玎溧龛�." )
	MisBeginCondition(NoRecord, 213)
	MisBeginCondition(HasRecord, 212)
	MisBeginCondition(NoMission, 213)
	MisBeginAction(AddMission, 213)
	MisBeginAction(GiveItem, 3972, 1, 4)
	MisCancelAction(ClearMission, 213)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "悟礤耱� 镨顸祛 熙疣眄桕� - 枢殡�  (1909, 2820).")
	
	MisHelpTalk("<t>央邃箝 � <p彦疱狃�睇� 剜躜囔>, 镱蝾疣镫桠嚅��!")
	MisResultCondition(AlwaysFailure )

-----------------------------------新任务
	DefineMission( 223, "皖忸� 玎溧龛�", 213, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>义�� 镳桉豚� 皴牮弪囵� 燕朦恻屦? 朽� 镱珥嚓铎栩�.")
	MisResultCondition(NoRecord, 213)
	MisResultCondition(HasMission, 213)
	MisResultCondition(HasItem , 3972, 1)
	MisResultAction(TakeItem , 3972, 1 )
	MisResultAction(ClearMission, 213 )
	MisResultAction(SetRecord, 213 )
	MisResultAction(AddExp,400,400)
	MisResultAction(AddMoney,1500,1500)	
	MisResultAction(AddExpAndType,2,3401,3401)


-------------------------------------------------寻找丢失的工具
	DefineMission( 224, "橡铒噔� 桧耱痼戾眚", 214 )

	MisBeginTalk( "<t>湾溧忭� 牮铗�-痼漕觐稃 箨疣腓 磬 桧耱痼戾眚�. 湾 祛汶� 猁 恹 铖祛蝠弪� 忸牮筱�, � 磬轵� 桴?" )
	MisBeginCondition(NoRecord, 214)
	MisBeginCondition(HasRecord, 213)
	MisBeginCondition(NoMission, 214)
	MisBeginAction(AddMission, 214)
	MisBeginAction(AddTrigger, 2141, TE_GETITEM, 3973, 5 )		--被盗的铁锹
	MisBeginAction(AddTrigger, 2142, TE_GETITEM, 3974, 3 )		--被盗的安全帽
	MisBeginAction(AddTrigger, 2143, TE_GETITEM, 3975, 5 )		--被盗的矿灯
	MisCancelAction(ClearMission, 214)

	MisNeed(MIS_NEED_ITEM, 3973, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3974, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 3975, 5, 30, 5)

	MisResultTalk("<t>蒡� 忮腓觐脲镯�! 饮 忮痦箅 磬� 磬 桧耱痼戾眚�, 蝈镥瘘 禧 祛驽� 镳桉蝮镨螯 � 疣犷蝈!")
	MisHelpTalk("<t>蔓 礤 磬� 桧耱痼戾眚�? 铃� 龛� 禧 礤 祛驽� 镳钿铍驵螯 疣犷蜞螯. 项驵塍轳蜞, 镱祛汨蝈 磬� 磬轵� 桴.")
	MisResultCondition(HasMission, 214)
	MisResultCondition(HasItem, 3973, 5 )
	MisResultCondition(HasItem, 3974, 3 )
	MisResultCondition(HasItem, 3975, 5 )
	MisResultAction(TakeItem, 3973, 5 )
	MisResultAction(TakeItem, 3974, 3 )
	MisResultAction(TakeItem, 3975, 5 )
	MisResultAction(ClearMission, 214)
	MisResultAction(SetRecord, 214 )
	MisResultAction(AddExp,450,450)
	MisResultAction(AddMoney,1600,1600)	
	MisResultAction(AddExpAndType,2,3402,3402)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3973)	
	TriggerAction( 1, AddNextFlag, 214, 10, 5 )
	RegCurTrigger( 2141 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3974)	
	TriggerAction( 1, AddNextFlag, 214, 20, 3 )
	RegCurTrigger( 2142 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3975)	
	TriggerAction( 1, AddNextFlag, 214, 30, 5 )
	RegCurTrigger( 2143 )

-------------------------------------------------清理利齿菇
	DefineMission( 225, "俞栩� 沭栳铟觇", 215 )

	MisBeginTalk( "<t>填� 汶噔磬� 玎溧鬣 耦耱铊� � 蝾�, 黩钺� 桤徉忤螯�� 铗 徉礓栩钼, 眍 <r俞铋睇� 沭栳铟尻> � � 怵屐� 泐溧 铟屙� 戾. <n> <t> 项驵塍轳蜞, 铗� � 筢彘 怦艴 <r俞铋睇� 沭栳铟觐�> � 犭桤� (1594, 2689)." )
	MisBeginCondition(NoRecord, 215)
	MisBeginCondition(HasRecord, 214)
	MisBeginCondition(NoMission, 215)
	MisBeginAction(AddMission, 215)
	MisBeginAction(AddTrigger, 2151, TE_KILL, 252, 10 )		--利齿菇
	MisCancelAction(ClearMission, 215)

	MisNeed(MIS_NEED_KILL, 252, 10, 10, 10)

	MisResultTalk("<t>疹痤� 疣犷蜞! 铃� 灭栳钼 磬 矬蜩, 禧 耢铈屐 徨� 蝠箐� 镱漕狃囹� � 拎礓栩囔!")
	MisHelpTalk("<t>蔓 漕腈睇 铖蝈疱汔螯�� 桴 <r灭栳铟觐�> 铐� 铟屙� �漕忤螓!")
	MisResultCondition(HasMission, 215)
	MisResultCondition(HasFlag, 215, 19 )
	MisResultAction(ClearMission, 215)
	MisResultAction(SetRecord, 215 )
	MisResultAction(AddExp,500,500)
	MisResultAction(AddMoney,1700,1700)	
	MisResultAction(AddExpAndType,2,3403,3403)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 252)	
	TriggerAction( 1, AddNextFlag, 215, 10, 10 )
	RegCurTrigger( 2151 )

-------------------------------------------------帝姆的委托
	DefineMission( 226, "橡铖� 蔫蝌�", 216 )

	MisBeginTalk( "<t>� 蝾朦觐 黩� 镱塍麒� 镨顸祛 铗 蔫蝾, 赅驽蝰�, 黩� � 礤泐 忸珥桕腓 礤觐蝾瘥� 蝠箐眍耱� � 邈� 桉耠邃钼囗���. 雾 镳铖栩 漕耱囹� 潆� 礤泐 <y棋塍漕黜 枢戾睃 暑痤�� 署噌钼> . <n> <t> � 忤溴�  <r暑痤�� 牮噌钼>, 礤溧脲觐 铗  镫�驵 (1783, 2507)." )
	MisBeginCondition(NoRecord, 216)
	MisBeginCondition(HasRecord, 215)
	MisBeginCondition(NoMission, 216)
	MisBeginAction(AddMission, 216)
	MisBeginAction(AddTrigger, 2161, TE_GETITEM, 3976, 1 )		--蟹王的胃结石
	MisCancelAction(ClearMission, 216)

	MisNeed(MIS_NEED_ITEM, 3976, 1, 10, 1)

	MisResultTalk("<t>洛腓觐脲镯�! 蔓 磬� 邈�! � 礤戾潆屙眍 铗镳噔膻 邈� 蔫蝾!")
	MisHelpTalk("<t>蔓 礤 磬� <r暑痤�� 狃铐尻疣犷�>? � 蝾黜� 忤溴� 邈� 礤溧脲觐 铗 镫�驵...")
	MisResultCondition(HasMission, 216)
	MisResultCondition(HasItem, 3976, 1 )
	MisResultAction(TakeItem, 3976, 1)
	MisResultAction(ClearMission, 216)
	MisResultAction(SetRecord, 216 )
	MisResultAction(AddExp,3000,3000)
	MisResultAction(AddMoney,9000,9000)	
	MisResultAction(AddExpAndType,2,3404,3404)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3976 )	
	TriggerAction( 1, AddNextFlag, 216, 10, 1 )
	RegCurTrigger( 2161 )

-------------------------------------------------山贼势力图
	DefineMission( 227, "想囗 疣玑铋龛鼽邈� 箨瘥蜩�", 217 )

	MisBeginTalk( "<t> 妙忸���, 黩� 玎汔漕黜 麇腩忮� 镳钿噱� 赅痱�, � 钿眍� 桤 龛� 磬忮痦�赅 羼螯 疣耧铍铈屙桢 豚沐�� 拎礓栩钼. 蔓 漕腈睇 磬轵� 蜞牦� 赅痱�. 项镳钺箝蝈 镱桉赅螯 蝾疸钼鲟 镱 觐铕滂磬蜞�  (2217, 2547)." )
	MisBeginCondition(NoRecord, 217)
	MisBeginCondition(HasRecord, 216)
	MisBeginCondition(NoMission, 217)
	MisBeginAction(AddMission, 217)
	MisBeginAction(AddTrigger, 2171, TE_GETITEM, 3977, 1 )		--山贼势力图
	MisCancelAction(ClearMission, 217)

	MisNeed(MIS_NEED_ITEM, 3977, 1, 10, 1)

	MisResultTalk("<t>蔓 耢钽腓 玎镱塍麒螯 赅痱�! 脏眚囫蜩赅!")
	MisHelpTalk("<t>湾 磬�? � 蝾驽! 填驽� 猁螯, 镱镳铖栩� 镱祛 � 膻溴� � 铌痼沐.")
	MisResultCondition(HasMission, 217)
	MisResultCondition(HasItem, 3977, 1 )
	MisResultAction(TakeItem, 3977, 1)
	MisResultAction(ClearMission, 217)
	MisResultAction(SetRecord, 217 )
	MisResultAction(AddExp,750,750)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,11833,11833)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3977 )	
	TriggerAction( 1, AddNextFlag, 217, 10, 1 )
	RegCurTrigger( 2171 )

-------------------------------------------------突袭山贼团
	DefineMission( 228, "朽玑铋龛� 桤 玎襦潲", 218 )

	MisBeginTalk( "<t>袜 赅痱� 忤漤�, 黩� 徉礓栩� 耦徼疣�� 礤溧脲觐 铗 玎镟漤铋 鬣耱� <p殃嚯桉蝾泐 箐咫�>. 添� 眢骓�, 黩钺� 恹  镳铐桕腓 � 桴 豚沐瘘 � 镳桧羼腓 3 <y捂屦咫�� 徉礓栩�>." )
	MisBeginCondition(NoRecord, 218)
	MisBeginCondition(HasRecord, 217)
	MisBeginCondition(NoMission, 218)
	MisBeginAction(AddMission, 218)
	MisBeginAction(AddTrigger, 2181, TE_GETITEM, 1841, 3 )		--山贼的项链
	MisCancelAction(ClearMission, 218)

	MisNeed(MIS_NEED_ITEM, 1841, 3, 10, 3)

	MisResultTalk("<t>羽�! 嘛屦恹� 禧 耢钽腓 镱塍麒螯 � 铈屦咫��!")
	MisHelpTalk("<t>项麇祗 蔓 礤 耦狃嚯� <y捂屦咫�� 徉礓栩钼>?")
	MisResultCondition(HasMission, 218)
	MisResultCondition(HasItem, 1841, 3 )
	MisResultAction(TakeItem, 1841, 3 )
	MisResultAction(ClearMission, 218)
	MisResultAction(SetRecord, 218 )
	MisResultAction(AddExp,1000,1000)
	MisResultAction(AddMoney,2200,2200)	
	MisResultAction(AddExpAndType,2,11833,11833)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1841 )	
	TriggerAction( 1, AddNextFlag, 218, 10, 3 )
	RegCurTrigger( 2181 )

-------------------------------------------------悬赏令
	DefineMission( 229, "袜沭噤� 玎 泐腩怏", 219 )

MisBeginTalk( "<t>添� 桤忮耥� � 秒噔囵� 徉礓栩钼. 雾 铟屙� 驽耱铌栝 � 蹊蝠 麇腩忮�. <n> <t> 袜殇� 邈� 豚沐�� 镱 觐铕滂磬蜞� (1052, 3037) � 箜梓蝾� 钽� 徉眚栩�." )
	MisBeginCondition(NoRecord, 219)
	MisBeginCondition(HasRecord, 218)
	MisBeginCondition(NoMission, 219)
	MisBeginAction(AddMission, 219)
	MisBeginAction(AddTrigger, 2191, TE_KILL, 211, 1 )		--山贼首领·蝰蛇
	MisCancelAction(ClearMission, 219)

	MisNeed(MIS_NEED_KILL, 211, 1, 10, 1)

	MisResultTalk("<t>蔓 筢桦� 绵濑牦? 填腩溴�! 岭嚆钿囵� 忄祗 祗驽耱忮眄铎� 镱耱箫牦, 徉礓栩� 犷朦 礤 镳邃耱噔��弪 筱痤琨.")
	MisHelpTalk("<t>蔓 犷栩羼� 桎蜩 � 钿桧铟牦? 项麇祗 猁 忄� 礤 镱镳铖栩� 镱祛 漯箸彘?")
	MisResultCondition(HasMission, 219)
	MisResultCondition(HasFlag, 219, 10 )
	MisResultAction(ClearMission, 219)
	MisResultAction(SetRecord, 219 )
	MisResultAction(AddExp,5000,5000)
	MisResultAction(AddMoney,10000,10000)	
	MisResultAction(AddExpAndType,2,11833,11833)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 211 )	
	TriggerAction( 1, AddNextFlag, 219, 10, 1 )
	RegCurTrigger( 2191 )

----------------------------去沙漠
	DefineMission( 230, "项躅� � 矬耱�", 220 )
	
	MisBeginTalk( "<t>袜忮耱� 羊囵彘眢 孰囗钼 <b离箐�> 镱 觐铕滂磬蜞� (898, 3640) � 剜轵囗�, 铐 溧耱 蝈徨 礤钺躅滂祗 桧纛痨圉棹." )
	MisBeginCondition(NoRecord, 220)
	MisBeginCondition(HasRecord, 219)
	MisBeginCondition(NoMission, 220)
	MisBeginAction(AddMission, 220)
	MisBeginAction(GiveItem, 3978, 1, 4)
	MisCancelAction(ClearMission, 220)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "袜忮耱� 羊囵彘眢 孰囗钼 <b离箐�>  � 剜轵囗� (898, 3640)")
	
	MisHelpTalk("<t>疹螯 � � 驽豚� 黩� 猁 恹 铖蜞腓顸, 眍 忄� 磬漕 镱祛鼽 � 剜轵囗�!")
	MisResultCondition(AlwaysFailure )

-----------------------------------去沙漠
	DefineMission( 231, "项躅� � 矬耱�", 220, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>念狃� 镱驵腩忄螯. 彦牮弪囵� 鲤沐眚� 耦钺� 祉� � 鲥腓 忄泐 忤玷蜞.  帖 聍栩噱�, 黩� � 箨噻 令汨龛 枢瘥. � 镱祛泱 蝈徨, 磬耜铍� 耢钽�.")
	MisResultCondition(NoRecord, 220)
	MisResultCondition(HasMission, 220)
	MisResultCondition(HasItem, 3978, 1)
	MisResultAction(TakeItem, 3978, 1 )
	MisResultAction(ClearMission, 220 )
	MisResultAction(SetRecord, 220 )
	MisResultAction(AddExp,1100,1100)
	MisResultAction(AddMoney,2300,2300)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------变异的原因
	DefineMission( 232, "襄疱戾睇", 221 )
	
	MisBeginTalk( "<t>袜忮耱栩� 泐忸��� 吴鬻牦 - 骂腚� � 汔忄龛 轵囗� (898, 3683). 填驽� 猁螯, 铐� 镱祛驽� 忄� �  桉耠邃钼囗���. <n> <t> 念腩骅蝈 祉� 镱耠� 蝾泐 赅� 磬殇弪� 邋." )
	MisBeginCondition(NoRecord, 221)
	MisBeginCondition(HasRecord, 220)
	MisBeginCondition(NoMission, 221)
	MisBeginAction(AddMission, 221)
	MisCancelAction(ClearMission, 221)
		
	MisNeed(MIS_NEED_DESP, "袜忮耱� 泐忸��� 吴鬻牦 - 骂腚� (898, 3683) � 玎蝈� 忮痦桉� � 离箐� (898, 3640)")
	
	MisResultTalk("<t>�! 饮 泐忸痂� � 吴鬻觐�? 锗-踵, 铐� 耜铕� 耱囗弪 漕耱铒痂戾鬣蝈朦眍耱 泐痤溧 剜轵囗.")
	MisHelpTalk("<t>饮 妁� 礤 镱泐怵桦 � <b吴鬻觐� - 骂腚�>?")
	MisResultCondition(HasMission, 221 )
	MisResultCondition(NoRecord, 221 )
	MisResultCondition(HasFlag, 221, 1 )
	MisResultAction(ClearMission, 221 )
	MisResultAction(SetRecord, 221 )
	MisResultAction(AddExp,1200,1200)
	MisResultAction(AddMoney,2400,2400)	
	MisResultAction(AddExpAndType,2,5000,5000)

-----------------------------------变异的原因
	DefineMission( 233, "襄疱戾睇", 221, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Baa...I'm Welly the Sheep!<n><t>Wondering how did I start talking?<n><t>Not too long ago, I was taking a nice evening stroll. Baa...Don't you know? Even sheeps need to relax every now and then.<n><t>Anyway, I remember seeing a round egg shaped fruit washed up on shore, it looked good enough to eat.<n><t>Baa...Next thing I knew, I could speak to humans!<n><t>The <bClan Chief> was nice enough to let me stay in town. Baa...tell him I said 'Hello' when you meet him.")
	MisResultCondition(NoRecord, 221)
	MisResultCondition(HasMission, 221)
	MisResultCondition(NoFlag, 221, 1)
	MisResultAction(SetFlag, 221, 1 )
	


----------------------------罗森的笔记本
	DefineMission( 234, "青镨耥�� 觏桄赅 蓄豚礓�", 222 )
	
	MisBeginTalk( "<t>侦� ... 想钿 � 纛痨� �轹�, 觐蝾瘥� 镫噔嚯 � 徨疱汔? � 镱祉�, 黩� 麒蜞� 黩�-蝾 镱漕犴铄, 眍 沅�? 侦�... <n> <t> 腕 觐礤黜�! 湾溧忭� 徼犭桀蝈赍 泐痤溧 剜轵囗� 镱�忤腭� 漤邂龛� 蓄豚漤�... <n> <t> 蒗, 驵朦, 黩� 徼犭桀蝠尻� 猁豚 忡腩爨磬 镳彐溴 麇� 恹 镳桫腓 � 磬�. 添钽� 觏桡 � 赅痱 猁腩 篁屦�眄�. � 潴爨� 恹 箸磬弪� 镱漯钺眍耱� 羼腓 磬忮耱栩� 麇腩忮赅 铗忮鬣邈� 玎 � 溴腩 - 羊疣骓桕� 惕踵� (958, 3549)." )
	MisBeginCondition(NoRecord, 222)
	MisBeginCondition(HasRecord, 221)
	MisBeginCondition(NoMission, 222)
	MisBeginAction(AddMission, 222)
	MisCancelAction(ClearMission, 222)
		
	MisNeed(MIS_NEED_DESP, "袜轵� 羊疣骓桕� (958, 3549).")
	
	MisHelpTalk("<t>羊疣骓桕 磬躅滂蝰� 礤溧脲觐 铗 汶噔睇� 忸痤� 轵囗�!")
	MisResultCondition(AlwaysFailure )

-----------------------------------罗森的笔记本
	DefineMission( 235, "青镨耥�� 觏桄赅 蓄豚礓�", 222, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>橡桠弪! � 羊疣骓桕 惕踵�. <n> <t> 妈眍忭桕� 镳桉蝮镫屙�� � 蜞� � 礤 磬�!<n> <t>昨� �怆�弪�� 犷脲� 礤钺睇�, 忸� 箨疣� 腓 礤耜铍� 觏桡 觐蝾瘥� 噌耦膻蝽� 徨耧铍彗睇.")
	MisResultCondition(NoRecord, 222)
	MisResultCondition(HasMission, 222)
	MisResultAction(ClearMission, 222 )
	MisResultAction(SetRecord, 222 )
	MisResultAction(AddExp,1200,1200)
	MisResultAction(AddMoney,2400,2400)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------线索
	DefineMission( 236, "与桕�", 223 )
	
	MisBeginTalk( "<t>橡钼钿� 疣耨脲漕忄龛� � 磬蜿眢腭� 磬 耠邃� 徉礓栩钼! 添� 赅驽蝰� � 铐� 铗忮蝰蜮屙睇 玎 铗 桧鲨溴眚! <n> <t>雾� 聍栩帼蝰� 钿龛扈 桤 塍鼬桴 镳羼蝮镯桕钼 � 象耱�! <n> <t> � 珥帼 钿眍泐 徉眚桎� 镱 桁屙� <b洋镥痨箜>. � 潴爨� 铐 疣耨赅驽� 蝈徨 赅觇� 龛狍潼 羿牝�. 袜轵� 邈� 祛骓� � <p梧玷皴> 镱 觐铕滂磬蜞�  (1080,3086)." )
	MisBeginCondition(NoRecord, 223)
	MisBeginCondition(HasRecord, 222)
	MisBeginCondition(NoMission, 223)
	MisBeginAction(AddMission, 223)
	MisCancelAction(ClearMission, 223)
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 洋镥痨箜� (1080, 3086)")
	
	MisHelpTalk("<t>湾 忸腠箝蝈顸. 洋镥痨箜 礤 蜞觐� 赅� 怦� 徉礓栩�. 雾 礤 脲珏� � 漯嚓� 镥疴!")
	MisResultCondition(AlwaysFailure )

-----------------------------------线索
	DefineMission( 237, "与桕�", 223, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>枢� 恹 戾�� 磬�? 蔓 躅蜩蝈 箸磬螯 犷朦 � 蝾� 牮噫�? <n> <t> 锗-踵! � 礤 桁妣 龛麇泐 钺泐 � 桁 镳铊耱忤屐! 彦瘘彗眍. � 溧� 忄� 耦忮� - 湾 脲琰蝈 � � 溴腩.<n> <t> 蔓 礤 犷栩羼� 黩� � 祛泱 筢栩� 忄�?")
	MisResultCondition(NoRecord, 223)
	MisResultCondition(HasMission, 223)
	MisResultAction(ClearMission, 223 )
	MisResultAction(SetRecord, 223 )
	MisResultAction(AddExp,600,600)
	MisResultAction(AddMoney,2400,2400)
	MisResultAction(AddExpAndType,2,5000,5000)


-------------------------------------------------内奸
	DefineMission( 238, "橡邃囹咫� 忭篁痂", 224 )

	MisBeginTalk( "<t>疹痤, 躅痤. � 铗牮铪 忄� 礤犷朦� 皴牮弪. 皖 玎 铒疱溴脲眄簋 镫囹�. 骂-镥疴, 禧 漕腈睇 忄� 镱祛鼽 祉� 恹镱腠栩� 镱痼麇龛�. <n> <t> 酿筱桢 襄聍囗 徉礓栩� 躅��� 镳铙麒螯 戾��. <n> <t> 俞彘 10 <r襄聍囗 徉礓栩钼> � 5 <r襄聍囗 埋噤龛觐�>." )
	MisBeginCondition(NoRecord, 224)
	MisBeginCondition(HasRecord, 223)
	MisBeginCondition(NoMission, 224)
	MisBeginAction(AddMission, 224)
	MisBeginAction(AddTrigger, 2241, TE_KILL, 45, 10 )		--沙匪
	MisBeginAction(AddTrigger, 2242, TE_KILL, 49, 5 )		--沙骑士
	MisCancelAction(ClearMission, 224)

	MisNeed(MIS_NEED_KILL, 45, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 49, 5, 20, 5)

	MisResultTalk("<t>锗 � 珥嚯, 黩� � 祛泱 疣耨麒螓忄螯 磬 忄�.")
	MisHelpTalk("<t>项躅驽, 黩� 恹 礤 � 耦耱��龛� 恹镱腠栩� 玎溧黧.")
	MisResultCondition(HasMission, 224)
	MisResultCondition(HasFlag, 224, 19 )
	MisResultCondition(HasFlag, 224, 24 )
	MisResultAction(ClearMission, 224)
	MisResultAction(SetRecord, 224 )
	MisResultAction(AddExp,1400,1400)
	MisResultAction(AddMoney,2550,2550)	
	MisResultAction(AddExpAndType,2,5000,5000)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 45 )	
	TriggerAction( 1, AddNextFlag, 224, 10, 10 )
	RegCurTrigger( 2241 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 49 )	
	TriggerAction( 1, AddNextFlag, 224, 20, 5 )
	RegCurTrigger( 2242 )

-------------------------------------------------战斗的沙漠
	DefineMission( 239, "凌蜮� � 矬耱�", 225 )

	MisBeginTalk( "<t>秒噔囵� 襄聍囗 徉礓栩钼 - <r绵疱蜞> 雾 磬躅滂蝰� 镱 觐铕滂磬蜞� (1180, 3030). 雾 铟屙� 驽耱铌, 眍 漕耱囹铟眍 蝮镱忄�. <n> <t> 雾 膻徼� 桉镱朦珙囹� 疋铪 耔塍, � 礤 箪 <n> <t> 俞彘蝈 邈� 潆� 戾��!<n> <t> � 耜噫� 忄� 怦�, 黩� 磬漕, 镱耠� 蝾泐 赅� 恹 筢� 邈�." )
	MisBeginCondition(NoRecord, 225)
	MisBeginCondition(HasRecord, 224)
	MisBeginCondition(NoMission, 225)
	MisBeginAction(AddMission, 225)
	MisBeginAction(AddTrigger, 2251, TE_GETITEM, 3979, 1 )		--沙漠王者之证
	MisCancelAction(ClearMission, 225)

	MisNeed(MIS_NEED_ITEM, 3979, 1, 10, 1)

	MisResultTalk("<t>有览览�! 岭嚆钿囵� 忄� � 蝈镥瘘 眍恹� 秒噔囵� 襄聍囗 拎礓栩钼!")
	MisHelpTalk("<t>项麇祗 恹 玟羼�?")
	MisResultCondition(HasMission, 225 )
	MisResultCondition(HasItem, 3979, 1 )
	MisResultAction(TakeItem, 3979, 1 )
	MisResultAction(ClearMission, 225 )
	MisResultAction(SetRecord, 225 )
	MisResultAction(AddExp,669,669)
	MisResultAction(AddMoney,1275,1275)	
	MisResultAction(AddExpAndType,2,5000,5000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3979 )	
	TriggerAction( 1, AddNextFlag, 225, 10, 1 )
	RegCurTrigger( 2251 )

----------------------------真相
	DefineMission( 240, "妊胰屠", 226 )
	
	MisBeginTalk( "<t>Since you have helped me to become the new leader of the Sand Bandits, I shall tell you the truth. <n><t>We, the Sand Bandits have an alliance with a group of pirates so I helped them steal the logbook. <n><t>The infamous, 'Jack's Pirates', has been trying to find the lost treasure of the <bPirate King Roland>. The secret is believed to be hidden inside the Pirate King's log. Now go and report back to Michael!" )
	MisBeginCondition(NoRecord, 226)
	MisBeginCondition(HasRecord, 225)
	MisBeginCondition(NoMission, 226)
	MisBeginAction(AddMission, 226)
	MisCancelAction(ClearMission, 226)
		
	MisNeed(MIS_NEED_DESP, "念腩骅螯 <r羊疣骟 - 锑殛塍>")
	
	MisHelpTalk("<t>� 箧� 耜噻嚯 忄� 怦�, 黩� 珥帼.")
	MisResultCondition(AlwaysFailure )

-----------------------------------真相
	DefineMission( 241, "妊胰屠", 226, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>琼圜栩 <b拎礓栩�> 箨疣腓 觏桡�? <n> <t> � 漕腈屙 猁� 漕汔溧螯��, 眍 皴轺囫 铐 �怆�弪�� 秒噔囵屐 襄聍囗 徉礓栩钼, � 礤 潴爨�, 黩� 禧 耢铈屐 邈� 囵羼蝾忄螯. 扬囫栳� 玎 忄 镱祛.")
	MisResultCondition(NoRecord, 226)
	MisResultCondition(HasMission, 226)
	MisResultAction(ClearMission, 226 )
	MisResultAction(SetRecord, 226 )
	MisResultAction(AddExp,1500,1500)
	MisResultAction(AddMoney,2650,2650)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------海盗的消息
	DefineMission( 242, "皖忸耱� 觐瘃囵�", 227 )
	
	MisBeginTalk( "<t>疹�� 禧 礤 祛驽� 囵羼蝾忄螯 <b洋镥痨箜�>, 禧 祛汶� 镳钼羼蜩 疣耨脲漕忄龛�. <n> <t> 骂-镥疴, 祉� 镳桎弪�� 铗麒螓忄螯�� 镥疱� 磬鬣朦龛觐� � 躅溴 疣耨脲漕忄龛�. 侦� ... 湾 祛汶� 猁 蔓, 磬轵� 责囗觐 (867, 3660). 雾 皲咫噱� 礤镫铛簋 眍忸耱� � 镨疣蜞�." )
	MisBeginCondition(NoRecord, 227)
	MisBeginCondition(HasRecord, 226)
	MisBeginCondition(NoMission, 227)
	MisBeginAction(AddMission, 227)
	MisCancelAction(ClearMission, 227)
		
	MisNeed(MIS_NEED_DESP, "袜轵� 责囗觐 (867, 3660)")
	
	MisHelpTalk("<t>篷腓 恹 礤 祛驽蝈 磬轵� 责囗觐, 镱镳钺箝蝈 钺铋蜩 汔忄睃.")
	MisResultCondition(AlwaysFailure )

-----------------------------------海盗的消息
	DefineMission( 243, "皖忸耱� 觐瘃囵�", 227, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>锣� 眢骓� 桧纛痨圉�� � 镨疣蜞�. 蔓 磬� 眢骓钽� 麇腩忮赅! <n> <t> � 麇� 猁 恹 躅蝈腓 珥囹� 犷朦? 隋沐礓� � <b翔疣蝈 蓄豚礓�>? 骂轫�  戾驿� 灭铎钽疣漕�  � <b翔疣蜞扈 燕牦瘥>? 入�, 忸珈铈眍, � <r翔疣蜞� 逆尻�>? 扬痤耔蝈 皴轺囫!")
	MisResultCondition(NoRecord, 227 )
	MisResultCondition(HasMission, 227 )
	MisResultAction(ClearMission, 227 )
	MisResultAction(SetRecord, 227 )
	MisResultAction(AddExp,749,749)
	MisResultAction(AddMoney,1333,1333)	
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------杰克海盗团
	DefineMission( 244, "翔疣螓 逆尻�", 228 )
	
	MisBeginTalk( "<t>腕, 蜞� 黩� 恹 躅蝈腓 珥囹� � <r翔疣蜞� 逆尻�>. � 磬鬣脲 � 沭箫镟 镨疣蝾� 耦徼疣豚顸 � 铌痼沐 泐痤溧. 武磬觐, 镱赅 铐� 礤 耦玟噔嚯� 镳钺脲�, 礤 猁腩 耢豚 桴 徨耧铌铊螯. 皖 � 镱耠邃礤� 怵屐� 铐� 耱嚯� 镱�怆�螯�� � 眍� 鬣耱� 矬耱�. <n> <t> 象耱� 镳桧噤脲骅� 襄聍囗 徉礓栩囔. <n> <t> 填驽� 腓 蜞� 猁螯? 锗-踵 ... <n> <t> � 蜞觇� 忮� 塍鼬� 耧痤耔螯 <b体痧桕襦> 铐� 磬躅滂蝰� � 剜轵囗� (1118, 3611). 项 赅觐�-蝾 镳梓桧�, 铐� 怦邈溧, 怦� 珥噱�. 项耠� 恹躅溧 桤 泐痤溧, 耠邃箝蝈 怃铍� 镱徨疱纥� 磬 忸耱铌, � 恹 磬殇弪� 邋 ��漕� � 玎蝾眢怿桁� 耋溧扈." )
	MisBeginCondition(NoRecord, 228)
	MisBeginCondition(HasRecord, 227)
	MisBeginCondition(NoMission, 228)
	MisBeginAction(AddMission, 228)
	MisCancelAction(ClearMission, 228)
		
	MisNeed(MIS_NEED_DESP, "袜忮耱栩� <b体痧桕�> (1118, 3611)")
	
	MisHelpTalk("袜忮耱栩� <b体痧桕�>  (1118, 3611).")
	MisResultCondition(AlwaysFailure )

-----------------------------------黑杰克海盗团
	DefineMission( 245, "翔疣螓 逆尻�", 228, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>湾钺睇� 钺��潲 <r翔疣蝾� 逆尻�> 镳桠脲赅 祛� 忭桁囗桢. � 黧怦蜮簋, 磬耱箫帼� 蝈祉 怵屐屙�..")
	MisResultCondition(NoRecord, 228 )
	MisResultCondition(HasMission, 228 )
	MisResultAction(ClearMission, 228 )
	MisResultAction(SetRecord, 228 )
	MisResultAction(AddExp,1700,1700)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,5000,5000)


-------------------------------------------------费克船长
	DefineMission( 246, "枢镨蜞� 澡觌", 229 )

	MisBeginTalk( "<t>� 祛泱 镱祛鼽 忄�, 眍 <r枢镨蜞� 澡觌>  � 邈� 镱祛桕� 铟屙� 铒囫睇� 膻滂.  <n> <t> 枢镨蜞� 澡觌 铟屙� 驽耱铌栝 � 邈� 镳桁屦眍� 戾耱铐圊铈溴龛� 忉腓� (1500,3450)  <n> <t> 篷腓 恹 赅觇�-蝾 钺疣珙� 漕耱囗弪� 耋礻� 潆� 戾��, � 祛� 猁 镱祛鼽 忄�. <n> <t> 愉圜�." )
	MisBeginCondition(NoRecord, 229)
	MisBeginCondition(HasRecord, 228)
	MisBeginCondition(NoMission, 229)
	MisBeginAction(AddMission, 229)
	MisBeginAction(AddTrigger, 2291, TE_GETITEM, 3980, 1 )		--费克的小包
	MisCancelAction(ClearMission, 229)

	MisNeed(MIS_NEED_ITEM, 3980, 1, 10, 1)

	MisResultTalk("<t>蔓 漕耱嚯� 耋礻�? <n> <t> 洛腓觐脲镯�! 义镥瘘 � 忤骟, 黩� � 蜞觐�...")
	MisHelpTalk("<t>侦�.. 湾 箐噱蝰� 磬轵� 邈�? 橡钽箅赅 怃铍� 徨疱泐忸� 腓龛� 忄� 礤 镱戾弪...")
	MisResultCondition(HasMission, 229 )
	MisResultCondition(HasItem, 3980, 1 )
	MisResultAction(TakeItem, 3980, 1 )
	MisResultAction(ClearMission, 229 )
	MisResultAction(SetRecord, 229 )
	MisResultAction(AddExp,4680,4680)
	MisResultAction(AddMoney,7075,7075)	
	MisResultAction(AddExpAndType,2,5000,5000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3980 )	
	TriggerAction( 1, AddNextFlag, 229, 10, 1 )
	RegCurTrigger( 2291 )

----------------------------寻找收信人
	DefineMission( 247, "碾� 蝈�, 觐泐 � 赅襦弪��", 230 )
	
	MisBeginTalk( "<t>I have inspected the bag, it seems to contain letters from a mysterious 'J' person. It seems to be that <rJack's Pirates> is just working on direct orders from 'J'. I wonder who this <r'J'> is.<n><t>I have an idea! Let me forge this letter and you take it around town pretending to have 'picked' it up from nowhere, perhaps you may find this mysterious 'J'" )
	MisBeginCondition(NoRecord, 230)
	MisBeginCondition(HasRecord, 229)
	MisBeginCondition(NoMission, 230)
	MisBeginAction(AddMission, 230)
	MisBeginAction(GiveItem, 3981, 1, 4 )
	MisCancelAction(ClearMission, 230)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Look for the guy codenamed 'J'")
	
	MisHelpTalk("<t>� 珥帼, 黩� 桧纛痨圉梃 爨腩, 眍 恹 漕腈睇 漕忮��螯 祉�. � 戾�� 羼螯 镳邃黧怦蜮桢, 黩� 恹 耢铈弪� 邈� 磬轵�...")
	MisResultCondition(AlwaysFailure )

-----------------------------------寻找收信人
	DefineMission( 248, "碾� 蝈�, 觐泐 � 赅襦弪��", 230, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>How did you get this letter? Give it to me!!!<n><t>I'm the 'J' they mentioned. Why am I called 'J'?<n><t>You shall die without ever knowing the answer. Now move along before I ask my Sand Bandits to give you a proper lesson on etiquette.")
	MisResultCondition(NoRecord, 230 )
	MisResultCondition(HasMission, 230 )
	MisResultCondition(HasItem, 3981, 1 )
	MisResultAction(TakeItem, 3981, 1 )
	MisResultAction(ClearMission, 230 )
	MisResultAction(SetRecord, 230 )
	MisResultAction(ObligeAcceptMission, 5 )
	MisResultAction(AddExp,936,936)
	MisResultAction(AddMoney,1415,1415)	
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------汇报收信人
	DefineMission( 249, "碾� 蝈�, 觐泐 � 赅襦弪��", 5, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>I never suspected that <bSupermun> could be the mysterious 'J'. I heard that he is quite reknowned in many ways but he seemed quite harmless. I may have underestimated him I guess.")
	MisResultCondition(HasMission, 5 )
	MisResultCondition(NoRecord, 5 )
	MisResultAction(ClearMission, 5 )
	MisResultAction(SetRecord, 5 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------去北方
	DefineMission( 250, "象蝈耱忤� 磬 皴忮�", 232 )
	
	MisBeginTalk( "<t>橡桠弪耱怏� 忄� � 隋潲龛. � 珥帼 黩� 恹 镳桫腓 镱 镱忸潴 蝈� 镳铊耱忤� � 骅忸蝽� <n> <t> 如忤龛, 礤 潴爨� 黩� 耢钽� 麇� 蝾 镱祛�. 帖 玎��螓 疱觐眈蝠箨鲨彘 泐痤溧." )
	MisBeginCondition(NoRecord, 232)
	MisBeginCondition(HasRecord, 5 )
	MisBeginCondition(NoMission, 232)
	MisBeginAction(AddMission, 232)
	MisCancelAction(ClearMission, 232)
		
	MisNeed(MIS_NEED_DESP, "悟镳噔��轵羼� � 体黜桕� - 绣� (1365, 570)")
	
	MisHelpTalk("扬屮栩�! 湾� 怵屐屙� 驿囹�!")
	MisResultCondition(AlwaysFailure )

-----------------------------------去北方
	DefineMission( 251, "象蝈耱忤� 磬 皴忮�", 232, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("� 耦驽脲龛�, � 礤 祛泱 镱祛鼽 忄�. 亦� 赅� � 隋潲龛 牮桤桉 镱耠� 疣玢痤爨, � 疱觐眈蝠箨鲨� 泐痤溧 �怆�弪�� 汶噔眍� 镳钺脲祛�! 亦� 黩� � 戾�� 礤� 怵屐屙� 钺耋驿囹� 忸镳铖 � 蝾� 黩� 耠篦桦铖� � 黧漕忤扈! � 礤 潴爨�, 黩� 疣耨脲漕忄龛� 溧眄钽� 忸镳铖� 赅�-蝾 耢钽篁 镱祛鼽 磬� 汶噔眍� 镳钺脲戾.")
	MisResultCondition(NoRecord, 232 )
	MisResultCondition(HasMission, 232 )
	MisResultAction(ClearMission, 232 )
	MisResultAction(SetRecord, 232 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2900,2900)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------冰狼堡的危机
	DefineMission( 252, "物囫眍耱� � 隋潲龛", 233 )
	
	MisBeginTalk( "<t>项泐忸痂蝈 �  <b锑耦�>. 雾 漕腈屙 忄� 镱祛鼽. 捏爨� 铐 � 铎 疣轭礤 (1346, 451)." )
	MisBeginCondition(NoRecord, 233)
	MisBeginCondition(HasRecord, 232)
	MisBeginCondition(NoMission, 233)
	MisBeginAction(AddMission, 233)
	MisCancelAction(ClearMission, 233)
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 锑襦 (1346, 451).")
	
	MisHelpTalk("<t>锑襦 礤 蜞� 脲汴� 磬轵�! 皖 � 珥帼 � 忄� 镱塍麒蝰�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------去北方
	DefineMission( 253, "物囫眍耱� � 隋潲龛", 233, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>念狃� 镱驵腩忄螯 矬蝈耱忮眄桕. 隋潲睃 磬 沭囗� 骅珥� � 耢屦蜩, 赅� 禧 泐忸痂�. 帖 猁腓 觐沅�-蝾 犷朦� � 牮囫桠 泐痤漕� <n> <t> 帖 祛驽� 腓 磬溴�螯�� 磬 蝾 黩� 礤骅螯 铗耱箫栩.")
	MisResultCondition(NoRecord, 233 )
	MisResultCondition(HasMission, 233 )
	MisResultAction(ClearMission, 233 )
	MisResultAction(SetRecord, 233 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2900,2900)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------补给
	DefineMission( 254, "骂耧铍礤龛�", 234 )
	
	MisBeginTalk( "<t>湾溧忭� 猁腩 耱铍� 礤镳��蝽铖蝈�, 黩� 镱腩驽龛� 珥圜栩咫� 篚箐腩顸. � 磬� 艴嚯� 镱潢疱镫屙桢 桤 灭铎钽疣溧 � 鲤沐眚�, 眍 礤骅螯 镥疱踱囹桦� 桴 镱 矬蜩. 义镥瘘 怦� 磬 磬溴驿� 磬 忸桧钼 桤 剜轵囗� <n> <t> 屿铍��! 隅磬轵� � 填 � 蝾� 赅� 钺耱铊� 溴腩!" )
	MisBeginCondition(NoRecord, 234)
	MisBeginCondition(HasRecord, 233)
	MisBeginCondition(NoMission, 234)
	MisBeginAction(AddMission, 234)
	MisCancelAction(ClearMission, 234)
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 填 (1237, 613)")
	
	MisHelpTalk("<t>蔓 礤 磬� 填?")
	MisResultCondition(AlwaysFailure )

-----------------------------------补给
	DefineMission( 255, "骂耧铍礤龛�", 234, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>锣� 镳桉豚� 锑�? � 铟屙� 耦驵脲�, 眍 镱潢疱镫屙桢 礤 镳栳�. 袜溴� 铐� 礤 耱铍觏箅桉� � 怵嚆囔�.")
	MisResultCondition(NoRecord, 234 )
	MisResultCondition(HasMission, 234 )
	MisResultAction(ClearMission, 234 )
	MisResultAction(SetRecord, 234 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------寻找补给队
	DefineMission( 256, "项桉� 镳栾囫钼", 235 )
	
	MisBeginTalk( "<t>� 筲屦屙, 黩� 镱潢疱镫屙桢 镱镟腩 � 徨潴, 铐� 漕腈睇 猁腓 镳栳� � <p馏躜� 莉豚眚桉> (1028, 649). <n><t> 湾 祛汶� 猁 恹 镱祛鼽 � 镳钼屦栩�? 篷腓 恹 磬殇弪� 赅镨蜞磬 <b绵襦痄桉�>, 镥疱溧轵� 黩� 禧 驿屐 邈�." )
	MisBeginCondition(NoRecord, 235)
	MisBeginCondition(HasRecord, 234)
	MisBeginCondition(NoMission, 235)
	MisBeginAction(AddMission, 235)
	MisCancelAction(ClearMission, 235)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 绵襦痄桉铎 � 狍躜� 莉豚眚桉� (1028, 649)")
	
	MisHelpTalk("<t> � 筲屦屙 黩� 恹 磬殇弪� <p绵襦痄��>, 镱忮痦栩� 磬 玎镟�, 镱蝾� 礤祉钽� 磬 . 雾 漕腈屙 猁螯 蜞�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------寻找补给队
	DefineMission( 257, "项桉� 镳栾囫钼", 235, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>橡铌��螯�, 磬� 玎耱嚯� 怵囫镫铛! 赘痱... � 镱蝈��� 怦� 镳栾囫�.")
	MisResultCondition(NoRecord, 235 )
	MisResultCondition(HasMission, 235 )
	MisResultAction(ClearMission, 235 )
	MisResultAction(SetRecord, 235 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)	
	MisResultAction(AddExpAndType,2,7000,7000)


-------------------------------------------------补给品夺回
	DefineMission( 258, "骂玮疣龛� 镳铒噔� 镳栾囫钼", 236 )

	MisBeginTalk( "<t>暑沅� 禧 镳栳腓驵腓顸 � 馏躜� 莉豚眚桉. 帖 猁腓 铌痼驽睇 铗��漕� 慑蜩. 帖 徼腓顸 � 龛扈,� 蝈� 怵屐屙屐 礤耜铍� 慑蜩 箨疣腓 磬 镳栾囫� <n> <t> 羊疣眄�, � 怦邈溧 潴爨� 黩� 铐� 汶箫钼囹�! <n> <t> 项祛汨蝈 磬� 磬殇� 磬 镳栾囫�." )
	MisBeginCondition(NoRecord, 236)
	MisBeginCondition(HasRecord, 235)
	MisBeginCondition(NoMission, 236)
	MisBeginAction(AddMission, 236)
	MisBeginAction(AddTrigger, 2361, TE_GETITEM, 3982, 15 )		--被抢的补给品
	MisCancelAction(ClearMission, 236)

	MisNeed(MIS_NEED_ITEM, 3982, 15, 10, 15)

	MisResultTalk("<t>锣� 螓 磬� 怦� 镳栾囫�! 羽�!")
	MisHelpTalk("<t>慑蜩 礤 耠桫觐� 耠铈眍 磬轵�! 捏爨� 铐� 磬躅��蝰� 沅� 蝾 � 铎 疣轭礤 锑蝈痂赅 (860/532 - 1628/954)")
	MisResultCondition(HasMission, 236 )
	MisResultCondition(HasItem, 3982, 15 )
	MisResultAction(TakeItem, 3982, 15 )
	MisResultAction(ClearMission, 236 )
	MisResultAction(SetRecord, 236 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,2800,2800)
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3982 )	
	TriggerAction( 1, AddNextFlag, 236, 10, 15 )
	RegCurTrigger( 2361 )


----------------------------护送补给品
	DefineMission( 259, "杨镳钼铈溴龛� 镳栾囫钼", 237 )
	
	MisBeginTalk( "<t> 亦� 赅� 恹 镱祛汶� 磬� 忮痦篁� 橡栾囫�, 礤 祛汶� 猁 恹  镱祛鼽 漕忮耱� 桴 漕 隋潲龛  � <b体黜桕� 绣�> 镱 觐铕滂磬蜞�  (1365, 570). � � 漕脬� 镥疱� 忄扈." )
	MisBeginCondition(NoRecord, 237)
	MisBeginCondition(HasRecord, 236)
	MisBeginCondition(NoMission, 237)
	MisBeginAction(AddMission, 237)
	MisBeginAction(GiveItem, 3983, 15, 4)
	MisCancelAction(ClearMission, 237)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 绣� � 隋潲龛 (1365, 570)")
	
	MisHelpTalk("<t>聋耱疱�! 塔滂 隋潲龛 箪桊帼� 铗 泐腩溧!")
	MisResultCondition(AlwaysFailure )

-----------------------------------护送补给品
	DefineMission( 260, "杨镳钼铈溴龛� 镳栾囫钼", 237, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>央噔� 犷汔�! 帖 耧囫屙�, 镳栾囫� 镱塍麇睇. <n><t>蒡� 邃桧耱忮眄�� 忮, 觐蝾痼� 禧 � 礤蝈痫屙桢 铈桎嚯� 镱耠邃龛� 礤耜铍� 漤彘. � 礤 珥帼, 赅� 忄� 犭嚆钿囵栩�!")
	MisResultCondition(NoRecord, 237 )
	MisResultCondition(HasMission, 237)
	MisResultCondition(HasItem, 3983, 15 )
	MisResultAction(TakeItem, 3983, 15 )
	MisResultAction(ClearMission, 237 )
	MisResultAction(SetRecord, 237 )
	MisResultAction(AddExp,2300,2300)
	MisResultAction(AddMoney,2900,2900)	
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------事件调查
	DefineMission( 261, "泥朦礤轼邋 桉耠邃钼囗桢", 238 )
	
	MisBeginTalk( "<t>如 镳邃铖蜞怆屙眍� 锣扈 桧纛痨圉梃, 耜豚潲忄弪�� 怙鬻囹脲龛�, 黩� 慑蜩 耱嚯� 犷脲� 耢脲眄�. <n> <t>氧钿栩� � 锐耠邃钼囹咫� 蓦囗� (1141, 575), 觐蝾瘥� 镳钼钿栩 桉耠邃钼囗�� 耋耱� 隋潲龛." )
	MisBeginCondition(NoRecord, 238)
	MisBeginCondition(HasRecord, 237)
	MisBeginCondition(NoMission, 238)
	MisBeginAction(AddMission, 238)
	MisCancelAction(ClearMission, 238)
		
	MisNeed(MIS_NEED_DESP, "袜轵� 蓦囗� (1141, 575)")
	
	MisHelpTalk("蓦囗� 漕腈磬 猁螯 礤溧脲觐 铗 馏躜� 莉豚眚桉!")
	MisResultCondition(AlwaysFailure )

-----------------------------------事件调查
	DefineMission( 262, "泥朦礤轼邋 桉耠邃钼囗桢", 238, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>昨� 赅襦弪�� 耋耱忄 隋潲龛, � 玎戾蜩豚 犷朦� 镳桊铖� 桴 桧蝈腚尻蜞,铐� 耱嚯� 犷脲� 嚆疱耨桠睇. 篷腓 恹 泐蝾恹 镱祛鼽 祉� , 蝾 禧 镱殪屐 黩� 镳铊聃钿栩.")
	MisResultCondition(NoRecord, 238 )
	MisResultCondition(HasMission, 238)
	MisResultAction(ClearMission, 238 )
	MisResultAction(SetRecord, 238 )
	MisResultAction(AddExp,2600,2600)
	MisResultAction(AddMoney,3000,3000)
	MisResultAction(AddExpAndType,2,7000,7000)


-------------------------------------------------雪原生物
	DefineMission( 263, "洋耱忸 耦 耥彐睇� 疣忭桧", 239 )

	MisBeginTalk( "<t>项扈祛 <b慑蜩>(1495,667), 羼螯 妁� 耋耱忄, 觐蝾瘥� 桤戾龛腓顸 漕 礤箸磬忄屐铖蜩, 蜞觇� 赅�: <b茹痂忄� 耥邈箴赅>(1746,530) � <b秧彐磬� 觐痤脲忄>(873,646). 雾� 箧� 礤 蜞觇� 漯箧咫睇�, 赅� 疣睃.<n><t>橡桧羼栩� 祉� 礤耜铍� 爨蝈痂嚯钼 潆� 祛桴 桉耠邃钼囗栝, � 桁屙眍: <y5 枢戾礤� 镟��蜩 耥邈箴觇>, <y5 枢戾礤� 镟��蜩 耥彐眍� 觐痤脲恹> � <y5 枢戾礤� 镟��蜩 殄蜩>.<n><t>如篦桠 桴 � 耢钽� 镱��螯, 黩� 镳铊珙� � 桁� 耋耱忄扈." )
	MisBeginCondition(NoRecord, 239)
	MisBeginCondition(HasRecord, 238)
	MisBeginCondition(NoMission, 239)
	MisBeginAction(AddMission, 239)
	MisBeginAction(AddTrigger, 2391, TE_GETITEM, 3984, 5 )		--雪娃娃的记忆石
	MisBeginAction(AddTrigger, 2392, TE_GETITEM, 4069, 5 )		--雪女的记忆石
	MisBeginAction(AddTrigger, 2393, TE_GETITEM, 4070, 5 )		--雪人的记忆石
	MisCancelAction(ClearMission, 239)

	MisNeed(MIS_NEED_ITEM, 3984, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4069, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 4070, 5, 30, 5)

	MisResultTalk("<t>蒡� 蝾, 黩� 祉� 眢骓�.<n><t>羊疣眄�, 眍 � 赅祉� 镟��蜩 恹汶���� 眍痨嚯�... 侦... 羊疣眄�.")
	MisHelpTalk("<t>橡铖蝾 桎栩� � 镳桧羼栩� 祉� 赅祉� 镟��蜩.")
	MisResultCondition(HasMission, 239 )
	MisResultCondition(HasItem, 3984, 5 )
	MisResultCondition(HasItem, 4069, 5 )
	MisResultCondition(HasItem, 4069, 5 )
	MisResultAction(TakeItem, 3984, 5 )
	MisResultAction(TakeItem, 4069, 5 )
	MisResultAction(TakeItem, 4070, 5 )
	MisResultAction(ClearMission, 239 )
	MisResultAction(SetRecord, 239 )
	MisResultAction(AddExp,3000,3000)
	MisResultAction(AddMoney,3000,3000)	
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3984 )	
	TriggerAction( 1, AddNextFlag, 239, 10, 5 )
	RegCurTrigger( 2391 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4069 )	
	TriggerAction( 1, AddNextFlag, 239, 20, 5 )
	RegCurTrigger( 2392 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4070 )	
	TriggerAction( 1, AddNextFlag, 239, 30, 5 )
	RegCurTrigger( 2393 )

-------------------------------------------------寻找雪人王
	DefineMission( 264, "项桉觇 觐痤�� 殄蜩", 240 )

	MisBeginTalk( "<t>殃铕邋 怦邈� <p慑蜩> 箫疣怆�弪 <b暑痤朦 殄蜩 洛腓觇� � 箧囫睇�>. 雾 礤 镱躅� 磬 漯筱桴 慑蜩, 铐 泐疣玟� 耔朦礤� 桴 � 箧囫礤�. 篷腓 猁 蔓 耢钽腓 镳桧羼蜩 祉� <b枢戾睃 镟��蜩 觐痤�� 殄蜩>, 蝾, 忸珈铈眍, � 祛汶� 猁 桉耠邃钼囹� 邈� � 疣珙狃囹� � 鞲� 蝮� 溴腩." )
	MisBeginCondition(NoRecord, 240)
	MisBeginCondition(HasRecord, 239)
	MisBeginCondition(NoMission, 240)
	MisBeginAction(AddMission, 240)
	MisBeginAction(AddTrigger, 2401, TE_GETITEM, 4071, 1 )		--雪娃娃的记忆石
	MisCancelAction(ClearMission, 240)

	MisNeed(MIS_NEED_ITEM, 4071, 1, 10, 1)

	MisResultTalk("<t><b枢戾睃 镟��蜩 觐痤�� 殄蜩> 溴轳蜮栩咫� 铗腓鬣弪�� 铗 <b枢戾礤� 镟��蜩 殄蜩>. � 皴轺囫 驽 镳桉蝮镫� � 犷脲� 蝾黜铎� 钺耠邃钼囗棹 邈�.")
	MisHelpTalk("<t>� 忮瘙 � 锣�! 蔓 耧疣忤蝈顸 � <r暑痤敫� 殄蜩 洛腓觇� � 箧囫睇�>.")
	MisResultCondition(HasMission, 240 )
	MisResultCondition(HasItem, 4071, 1 )
	MisResultAction(TakeItem, 4071, 1 )
	MisResultAction(ClearMission, 240 )
	MisResultAction(SetRecord, 240 )
	MisResultAction(AddExp,16000,16000)
	MisResultAction(AddMoney,16000,16000)	
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4071 )	
	TriggerAction( 1, AddNextFlag, 240, 10, 1 )
	RegCurTrigger( 2401 )

----------------------------白银城的智者
	DefineMission( 265, "腆漯铖螯 皴疱狃�", 241 )
	
	MisBeginTalk( "<t>� 蝙囹咫� 桤篦桦� <b枢戾睃 镟��蜩 觐痤�� 殄蜩>, � 镳桫豚 � 恹忸潴, 黩� 铐 猁� 钺眍忮眄 <b慑蜩>. 项躅驽, 羼螯 黩�-蝾 蜞觐�, 黩� 桤戾龛腩 邈� 箪 � 耔塍. � 桁屙眍 镱 铎� 铐 耱嚯 桴 觐痤敫�.<n><t>泥忭-溧忭�, 祛� 耱囵 篦栩咫� <b岭痂> 疣耨赅琨忄� 祉� 脲沐礓� � 玎蝾眢怿桴 耦牮钼棂, 觐蝾瘥� 耦溴疰囹 蜞桧耱忮眄 �轹�, 耧铖钺睇� 溧忄螯 怆囫螯 蝈�, 牝� 桴 聱羼�.<n><t>篷腓 蔓 躅蜩蝈 箸磬螯 � 铋 脲沐礓� 犷朦, 蝾 蔓 祛驽蝈 磬轵� 羊囵桕� 岭痂 � 鲤沐眚� � 蝾麝�(2272,2700)." )
	MisBeginCondition(NoRecord, 241 )
	MisBeginCondition(HasRecord, 240 )
	MisBeginCondition(NoMission, 241 )
	MisBeginAction(AddMission, 241 )
	MisCancelAction(ClearMission, 241 )
		
	MisNeed(MIS_NEED_DESP, "腮栩� � 鲤沐礤� � 蝾麝�(2272, 2700) 羊囵桕� 岭痂.")
	
	MisHelpTalk("<t>填� 篦栩咫� 骅飧� � 鲤沐眚�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------白银城的智者
	DefineMission( 266, "腆漯铖螯 皴疱狃�", 241, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�? 羊囵桕 岭痂? � 礤 珥帼 � 觐� 蔓. � 耠嚯, 黩� 铐 铟屙� 镳��蝽 � 漕狃..")
	MisResultCondition(NoRecord, 241 )
	MisResultCondition(HasMission, 241)
	MisResultAction(ClearMission, 241 )
	MisResultAction(SetRecord, 241 )
	MisResultAction(AddExp,3200,3200)
	MisResultAction(AddMoney,3100,3100)	
	MisResultAction(AddExpAndType,2,9035,9035)



-------------------------------------------------糊涂山人
	DefineMission( 267, "相麝箅�", 242 )

	MisBeginTalk( "<t>昨� 蔓 泐忸痂蝈? 蔓 筲屦屙�, 黩� � 泐忸痂� 锣�, 黩� 戾�� 珙怏� 岭痂? 侦... � 礤 镱祉�, 黩� 猁 禧 猁腓 珥嚓铎�.<n><t>疹��, 羼腓 猁 蔓 祉� 镳桧羼腓 <b妈眍 骂顸扈 酿嚆铞屙眍耱彘>, 蝾沅�, 忸珈铈眍, � 猁 怦镱祉桦 黩� 龛狍潼." )
	MisBeginCondition(NoRecord, 242)
	MisBeginCondition(HasRecord, 241)
	MisBeginCondition(NoMission, 242)
	MisBeginAction(AddMission, 242)
	MisBeginAction(AddTrigger, 2421, TE_GETITEM, 4072, 1 )		--雪娃娃的记忆石
	MisCancelAction(ClearMission, 242)

	MisNeed(MIS_NEED_ITEM, 4072, 1, 10, 1)

	MisResultTalk("<t>蒡� 襦祛� 塍鼬邋 忤眍, 觐蝾痤� � 镨� 玎 疋铪 骅珥�!")
	MisHelpTalk("<t>饮 礤 镳桧格 祉� 忤磬! 蠕� � 镳桧羼� 祉� 邈�!")
	MisResultCondition(HasMission, 242 )
	MisResultCondition(HasItem, 4072, 1 )
	MisResultAction(TakeItem, 4072, 1 )
	MisResultAction(ClearMission, 242 )
	MisResultAction(SetRecord, 242 )
	MisResultAction(AddExp,7000,7000)
	MisResultAction(AddMoney,6000,6000)	
	MisResultAction(AddExpAndType,2,9035,9035)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4072 )	
	TriggerAction( 1, AddNextFlag, 242, 10, 1 )
	RegCurTrigger( 2421 )

-----------------------------------糊涂山人
	DefineMission( 268, "相麝箅�", 242, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>蔓 躅蜩蝈 牦镨螯 <b妈眍 骂顸扈 酿嚆铞屙眍耱彘>? � 耦驵脲龛� 铐� 猁耱痤 疣耨蝮镟弪�� 桤-玎 疋铄泐 礤钺眍泐 怅篑�. 皖 � 祛泱 皲咫囹� 潆� 锣� 钿眢 狍螓腙�, 羼腓 蔓 镳桧羼蛤� 祉� 桧沭邃桢眚�.")
	MisResultCondition(NoRecord, 242 )
	MisResultCondition(HasMission, 242)
	MisResultCondition(NoFlag, 242, 1 )
	MisResultAction(SetFlag, 242, 1 )


-------------------------------------------------山珍八宝酒
	DefineMission( 269, "妈眍 骂顸扈 酿嚆铞屙眍耱彘", 243 )

	MisBeginTalk( "<t>昨� 猁 皲咫囹� 钿眢 狍螓腙� 忤磬 忄� 礤钺躅滂祛 耦狃囹� 8 桧沭邃桢眚钼. 橡桧羼栩� 耥圜嚯� 4 觐祜铐屙蜞: <b2 唛鲟 请钼妁彘 麇疱镟蹊> 桤 <r珉钼妁彘 麇疱镟蹊>(969,2587), <b2 洋躅骅腓� 躔�赅> 桤 <r铃珞祉钽� 赅徉磬>(910,2971), <b2 玉桕� 潴痨囗�> 桤 <r捏痨囗�>(1414,2896) � <b2 项痤� 痼漤钽� 牮桉蜞腚�> 桤 <r隋蝮麇� 禧-忄祜桊�>(1900,2643). 橡桧羼栩� 祉� 怦� 黩� � 镳铠�. 蒡� 狍溴� 礤 蜞� � 耠铈眍 潆� 锣�." )
	MisBeginCondition(NoRecord, 243)
	MisBeginCondition(HasMission, 242)
	MisBeginCondition(HasFlag, 242, 1)
	MisBeginCondition(NoMission, 243)
	MisBeginAction(AddMission, 243)
	MisBeginAction(AddTrigger, 2431, TE_GETITEM, 4073, 2 )		--恐龟蛋
	MisBeginAction(AddTrigger, 2432, TE_GETITEM, 4074, 2 )		--野猪的腱子肉
	MisBeginAction(AddTrigger, 2433, TE_GETITEM, 4075, 2 )		--曼陀罗的藤蔓
	MisBeginAction(AddTrigger, 2434, TE_GETITEM, 4076, 2 )		--矿物的结晶粉末
	MisCancelAction(ClearMission, 243)

	MisNeed(MIS_NEED_ITEM, 4073, 2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 4074, 2, 12, 2)
	MisNeed(MIS_NEED_ITEM, 4075, 2, 14, 2)
	MisNeed(MIS_NEED_ITEM, 4076, 2, 16, 2)


	MisResultTalk("<t>蔓 镳桧羼腓 桧沭邃桢眚�.<n><t>� 皴轺囫 驽 镳桉蝮镫� � 镳桡铗钼脲龛� 忤磬.")
	MisHelpTalk("<t>昨� 蔓 泐忸痂蝈? 枢� 蜞� 礤 镳桧羼腓 祉� 桧沭邃桢眚�? 蠕栩� � 耦徨痂蝈 怦� 礤钺躅滂祛�.")
	MisResultCondition(HasMission, 243 )
	MisResultCondition(HasItem, 4073, 2 )
	MisResultCondition(HasItem, 4074, 2 )
	MisResultCondition(HasItem, 4075, 2 )
	MisResultCondition(HasItem, 4076, 2 )
	MisResultAction(TakeItem, 4073, 2 )
	MisResultAction(TakeItem, 4074, 2 )
	MisResultAction(TakeItem, 4075, 2 )
	MisResultAction(TakeItem, 4076, 2 )
	MisResultAction(ClearMission, 243 )
	MisResultAction(SetRecord, 243 )
	MisResultAction(AddExp,3200,3200)
	MisResultAction(AddMoney,3100,3100)
	MisResultAction(AddExpAndType,2,9035,9035)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4073 )	
	TriggerAction( 1, AddNextFlag, 243, 10, 2 )
	RegCurTrigger( 2431 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4074 )	
	TriggerAction( 1, AddNextFlag, 243, 12, 2 )
	RegCurTrigger( 2432 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4075 )	
	TriggerAction( 1, AddNextFlag, 243, 14, 2 )
	RegCurTrigger( 2433 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4076 )	
	TriggerAction( 1, AddNextFlag, 243, 16, 2 )
	RegCurTrigger( 2434 )


----------------------------陈年旧事
	DefineMission( 270, "泥忭-溧忭�", 244 )
	
	MisBeginTalk( "<t>� 黧漕! � 锣� 怦镱祉桦... 亦� 赅� 蔓 漕狃� 耦 祉铋 � 锣� 铗牮铪 蜞轫�.<n><t>� <b橡邃皴溧蝈�� 鲤沐眚� - 蓄眄�> 羼螯 钿眍 �轹� 桤 脲沐礓�, � 觐蝾痤� 蔓 泐忸痂蝈.<n><t>蔓 祉� 礤 忮痂蝈? 项泐忸痂蝈 � 龛� 襦扈, 铐 � 蝾麝� (2241,2748)." )
	MisBeginCondition(NoRecord, 244 )
	MisBeginCondition(HasRecord, 242 )
	MisBeginCondition(NoMission, 244 )
	MisBeginAction(AddMission, 244 )
	MisCancelAction(ClearMission, 244 )
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 蓄眄� � 蝾麝� (2241, 2748).")
	
	MisHelpTalk("<t>疹痤� 忤眍, 铟屙� 躅痤�!")
	MisResultCondition(AlwaysFailure )

-----------------------------------陈年旧事
	DefineMission( 271, "泥忭-溧忭�", 244, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>昨�? 泥 赅� 铐 耢邋� 蜞觐� 泐忸痂螯 钺� 祉�?! 殃噫栩� 屐�, 羼腓 � 礤泐 羼螯 赅觇� 龛 狍潼 觐 祉� 镳弪屙玷�, 矬耱� 镳桎弪  襦� � 耜噫弪  祉� 怦� � 腓鲱!")
	MisResultCondition(NoRecord, 244 )
	MisResultCondition(HasMission, 244)
	MisResultAction(ClearMission, 244 )
	MisResultAction(SetRecord, 244 )
	MisResultAction(ObligeAcceptMission, 6 )
	MisResultAction(SystemNotice, "Obtain quest 'Unripe Fruit'" )
	MisResultAction(AddExp,3500,3500)
	MisResultAction(AddMoney,3150,3150)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------询问未果
	DefineMission( 272, "湾忮痦 忸镳铖", 6 )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("锗 锗 锗... � 镱黩� 玎猁�. 雾 耜铕邋 镱蝈��弪 怦�, 麇� 耱囗弪 泐忸痂螯 钺 铎. � 潴爨�, 禧 祛驽� 疣琊噌铗囹� 镫囗, 黩钺� 玎耱噔栩� 邈� 泐忸痂螯.")
	MisResultCondition(HasMission, 6 )
	MisResultAction(ClearMission, 6 )
	MisResultAction(SetRecord, 6 )
	MisResultAction(AddExp,1768,1768)
	MisResultAction(AddMoney,1565,1565)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------会长的把柄
	DefineMission( 273, "甜圜睇� 皴牮弪 镳邃皴溧蝈��", 246 )
	
	MisBeginTalk( "<t>篷腓 禧 躅蜩� 玎耱噔栩� <b蓄眄�> 耦蝠箐龛鬣螯 � 磬扈, 磬� 镳桎蛤��  邈� 眚噫桊钼囹�.<n><t>袜� 眢骓� 镱祛 <p缅礤疣豚 妈朦�爨>. 项泐忸痂蝈 � 龛�. 陪� 祛骓� 磬轵� 镱 觐铕滂磬蜞�(2277,2831)." )
	MisBeginCondition(NoRecord, 246 )
	MisBeginCondition(HasRecord, 6 )
	MisBeginCondition(NoMission, 246 )
	MisBeginAction(AddMission, 246 )
	MisCancelAction(ClearMission, 246 )
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � <b缅龛疣腩� 妈朦�祛�> � 蝾麝� (2277, 2831).")
	
	MisHelpTalk("<t>蠕栩� 驽! 湾 戾轵� 祉� 磬耠铈溧螯�� 玛篑铎 忤磬.")
	MisResultCondition(AlwaysFailure )

-----------------------------------会长的把柄
	DefineMission( 274, "甜圜睇� 皴牮弪 镳邃皴溧蝈��", 246, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>斟-蹂-蹂! 熙 箧 铗 <b岭痂>! � 犷�, 黩� 箸磬� 蜞轫� 钺� 祉�, 铐 礤 溧耱 � 祉� 镱觐�. 疹痤. 蔓 祉� 镱祛汔腓 � 镱 铎� � 镱祛泱 锣�!")
	MisResultCondition(NoRecord, 246 )
	MisResultCondition(HasMission, 246)
	MisResultAction(ClearMission, 246 )
	MisResultAction(SetRecord, 246 )
	MisResultAction(AddExp,3600,3600)
	MisResultAction(AddMoney,3100,3100)	
	MisResultAction(AddExpAndType,2,9035,9035)


-------------------------------------------------废矿探索
	DefineMission( 275, "朽耨脲漕忄龛� 磬 躜�", 247 )

	MisBeginTalk( "<t>蠕栩� � <p剜躜�> � 磬殇栩� <b羊囵 漕牦戾眚�>.<n><t>骂珈铈眍 铐� 恹镟腓 � <b蓄眄�>, � <r灭�玷腓> 桴 镱漕狃嚯�.<n><t>俞彘蝈 <r灭�玷腓> � 镳桧羼栩� 祉� <b羊囵 念牦戾眚�>. 篷腓 蔓 镳桧羼蛤� � 漕牦戾眚�, 禧 耢铈屐 眚噫桊钼囹� <b蓄眄�>! " )
	MisBeginCondition(NoRecord, 247)
	MisBeginCondition(HasRecord, 246)
	MisBeginCondition(NoMission, 247)
	MisBeginAction(AddMission, 247)
	MisBeginAction(AddTrigger, 2471, TE_GETITEM, 4081, 10 )		--破旧的纸片
	MisCancelAction(ClearMission, 247)

	MisNeed(MIS_NEED_ITEM, 4081, 10, 10, 10)

	MisResultTalk("<t>彦轺囫 镱耢铗痂�, 磬漕 蝾朦觐 镳噔桦� 疣珉铈栩� � 狍爨汨.")
	MisHelpTalk("<t>青镱祉栩�, <r灭�玷腓> 祛汶� 镱汶铗栩� <b羊囵 漕牦戾眚�>.")
	MisResultCondition(HasMission, 247 )
	MisResultCondition(HasItem, 4081, 10 )
	MisResultAction(TakeItem, 4081, 10 )
	MisResultAction(ClearMission, 247 )
	MisResultAction(SetRecord, 247 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,3200,3200)
	MisResultAction(AddExpAndType,2,9035,9035)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4081 )	
	TriggerAction( 1, AddNextFlag, 247, 10, 10 )
	RegCurTrigger( 2471 )

----------------------------纸片的秘密
	DefineMission( 276, "彦牮弪 痤耱赅", 248 )
	
	MisBeginTalk( "<t>项耢铗痂蝈 磬 铗 <b酿邂龛� 镳屐栲朦睇� 珥嚓>, 邈� 镱蝈��腓 箧� 铟屙� 溧忭� � 蜞� � 礤 耢钽腓 磬轵�. 鱼噤嚅蝈 � 觐泐 铐 猁�?! 泥 溧, � 蓄眄�.<n><t>� 躅黧 镱耢铗疱螯 磬 恹疣驽龛� 邈� 腓鲟, 觐沅� 蔓 耜噫栩� 屐�, 黩� 磬� 铗 琼嚓. 锗-踵-踵." )
	MisBeginCondition(NoRecord, 248 )
	MisBeginCondition(HasRecord, 247 )
	MisBeginCondition(NoMission, 248 )
	MisBeginAction(AddMission, 248 )
	MisBeginAction(GiveItem, 4082, 1, 4 )
	MisCancelAction(ClearMission, 248 )
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "项赅骅蝈 <b蓄眄�> <y酿邂龛� 镳屐栲朦睇� 珥嚓> (2241, 2748).")
	
	MisHelpTalk("项赅骅蝈 <b蓄眄�> <y酿邂龛� 镳屐栲朦睇� 珥嚓> (2241, 2748).")
	MisResultCondition(AlwaysFailure )

-----------------------------------纸片的秘密
	DefineMission( 277, "彦牮弪 痤耱赅", 248, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>蠕栩� 驽, 祉� 礤 蝈痫栩�� 筲桎弪� 邈� 箐桠敫眄铄 腓鲱. 锗-踵-踵!")
	MisResultCondition(NoRecord, 248 )
	MisResultCondition(HasMission, 248)
	MisResultCondition(HasItem, 4082, 1)
	MisResultAction(ClearMission, 248 )
	MisResultAction(SetRecord, 248 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,3200,3200)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------逃跑的巨兽
	DefineMission( 278, "项徨� 铃踵祛蜞", 249 )
	
	MisBeginTalk( "<t>湾溧忭� � 镱猁忄� 玎 沭囗桷彘. 亦� � 牦镨� <r铃躅祛蜞>, 黩� 猁 镱蝾� 镥疱镳钿囹� 邈� 镱 恹泐漤铋 鲥礤. � 蜞� 驽 镳桀狃咫 脲沐礓囵睇� 爨汨麇耜桢 唛鲟.<n><t>袜 钺疣蝽铎 矬蜩, � 耧��蜞� �轹� 镱� 觌弪觐�. 捏爨�, 黩� 铐 聱咫 徨聆屙睇� �轹� � 耱嚯 漕耱囹铟眍 耔朦睇�, 黩钺� 耠铎囹� 疋铪 觌弪牦.<n><t>雾 筢彐嚯 � 彦疱狃屙睇� 躜� � 蝈痧铕桤桊簋� 蜞� 躜屦钼 . � 恹眢驿屙 猁� 磬珥圜栩� 磬沭噤� 玎 镱桁牦 玮屦�, 眍, 筲�, 龛觐祗 礤 箐嚯铖� 邈� 镱殪囹�. <b妙痤漶觐� 耱疣� - 翔蝈�> (2192, 2767) 蜞赕� 篦囫蜮钼嚯 � 镱桁赍 铃沐祛蜞, 眍 徨琊彗箅囹眍, 忸珈铈眍, 铐 溧耱 忄� 犷脲� 镱漯钺眢� 桧纛痨圉棹." )
	MisBeginCondition(NoRecord, 249 )
	MisBeginCondition(HasRecord, 248 )
	MisBeginCondition(NoMission, 249 )
	MisBeginAction(AddMission, 249 )
	MisCancelAction(ClearMission, 249 )
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 翔蝈痤� � 蝾麝� (2192, 2767).")
	
	MisHelpTalk("<t><b翔蝈�> 礤窀� 耠箧狍 � 鲤沐眚�, 镱泐忸痂蝈 � 龛�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------逃跑的巨兽
	DefineMission( 279, "项徨� 铃踵祛蜞", 249, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>铃躅祛�? 蒡� 铟屙� 铒囫睇� 玮屦�!<n><t>雾 铟屙� 箪睇� � 耔朦睇�, � 镱耱噔桦 磬 礤泐 襦禧� 塍鼬桢 腩怏�, 眍 龛 � 钿眢 桤 龛� 铐 蜞� � 礤 筱钿桦, � � 疣忭铎 镱邃桧赍, 铐 耔朦礤� 戾��! 义镥瘘 桎栩� � <b蓄眄�>, 忮潼 � 铐 锣� 镱耠嚯 觐 祉�?")
	MisResultCondition(NoRecord, 249 )
	MisResultCondition(HasMission, 249)
	MisResultAction(ClearMission, 249 )
	MisResultAction(SetRecord, 249 )
	MisResultAction(AddExp,5000,5000)
	MisResultAction(AddMoney,1700,1700)	
	MisResultAction(AddExpAndType,2,9035,9035)




-------------------------------------------------古老的悬赏令
	DefineMission( 280, "酿邂龛� 镳屐栲朦睇� 珥嚓", 250 )

	MisBeginTalk( "<t>蒡� 猁腩 溧忭�, 蝾沅� 膻犷� 噔囗蟒痂耱钼 镳桧桁嚯 铛铗� 磬 <r铃躅祛蜞> 镳桕膻麇龛屐. � 镱黩� 玎猁� � 礤�. 骂珥嚆疣驿屙桢 铖蜞弪�� � 耔脲. 埋� 黩� 忄� 眢骓� 皲咫囹�, � 筢栩� <r铃躅祛蜞> � 忡�螯 � 礤泐 <y 棋脲珥 磬痼黜桕�>  .. 骂珈铈眍 箐圜� 箅礤蝰� 锣�." )
	MisBeginCondition(NoRecord, 250)
	MisBeginCondition(HasRecord, 248)
	MisBeginCondition(NoMission, 250)
	MisBeginCondition(HasItem, 4082, 1)
	MisBeginAction(AddMission, 250)
	MisBeginAction(AddTrigger, 2501, TE_GETITEM, 4083, 1 )		--镣铐x1
	MisCancelAction(ClearMission, 250)

	MisNeed(MIS_NEED_ITEM, 4083, 1, 10, 1)

	MisPrize(MIS_PRIZE_MONEY, 34464, 1)
	MisPrizeSelAll()

	MisResultTalk("<t>蔓 溴轳蜮栩咫� 筢桦� 邈�! 骂� 锣 磬沭噤�.")
	MisHelpTalk("<t>蔓 桉矬汔腓顸 邈�? 桦� 铐 铌噻嚯�� 耔朦礤� 锣�? 蠕栩� � 镱镳钺箝蝈 妁� 疣�!")
	MisResultCondition(HasMission, 250 )
	MisResultCondition(HasItem, 4083, 1 )
	MisResultCondition(HasItem, 4082, 1 )
	MisResultAction(TakeItem, 4083, 1 )
	MisResultAction(TakeItem, 4082, 1 )
	MisResultAction(ClearMission, 250 )
	MisResultAction(SetRecord, 250 )
	MisResultAction(AddExp,13245,13245)
	MisResultAction(AddExpAndType,2,9035,9035)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4083 )	
	TriggerAction( 1, AddNextFlag, 250, 10, 1 )
	RegCurTrigger( 2501 )

----------------------------可怕的怪物
	DefineMission( 281, "象汔桢 黧漕忤", 251 )
	
	MisBeginTalk( "<t>枢� 龛 耱疣眄�, 铗 祛眈蝠 膻徼� 镱羼螯 <b清祀�龛黜铄 镨痤骓铄>. � 蝾 怵屐�, 觐沅� 禧 镨腓 鬣�, 铐 忭彗囡眍 磬镟� 磬 磬�. 袜� 镱忮珉�, 禧 铗溴豚腓顸 脲汴桁 桉矬泐�, � 忸� 镨痤骓 铐 镳桴忄蜩� � 耦犷�." )
	MisBeginCondition(NoRecord, 251 )
	MisBeginCondition(HasRecord, 249 )
	MisBeginCondition(NoMission, 251 )
	MisBeginAction(AddMission, 251 )
	MisCancelAction(ClearMission, 251 )
		
	MisNeed(MIS_NEED_DESP, "袜轵� 徉狍� 铃脘�(2277,2769).")
	
	MisHelpTalk("<t>枢驿 疣� 觐沅� � 怦镱扈磬� � 恹镥麝� 拎狍� 铃脘�, � 戾�� 蝈牦� 耠�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------可怕的怪物
	DefineMission( 282, "象汔桢 黧漕忤", 251, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>� 膻犭� 镥鼽, � � 玎戾鬣蝈朦眍 羼腓 溧驽 填眈蝠� 镱眇噔桦囫� 祛� 恹镥麝�. 蔓 蜞� 礤 潴爨弪�?")
	MisResultCondition(NoRecord, 251 )
	MisResultCondition(HasMission, 251)
	MisResultAction(ClearMission, 251 )
	MisResultAction(SetRecord, 251 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,2000,2000)	
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------老奶奶的糕点
	DefineMission( 283, "拎狍桧� 恹镥麝�", 252 )
	
	MisBeginTalk( "<t><b剜躜葛 酿箜觇> 膻徼� 祛� 恹镥麝� 蜞� 耔朦眍, 黩� 泐蝾� 蝾朦觐 妣 镨蜞螯��, 铐 玎躅滂� 篁痤� 觐 祉� � 玎狃嚯 怦�, 黩� � 桉镥觌�. 雾 疣犷蜞弪 � 剜躜圊, 忸珈铈眍 � 礤泐 妁� 铖蜞豚顸 祛� 恹镥麝�. 氧钿栩� � 礤祗 � 羼腓 � 礤泐 羼螯 妁� 狍腩麝�, 蝾 铐 钺�玎蝈朦眍 � 锣扈 镱溴腓螯��." )
	MisBeginCondition(NoRecord, 252 )
	MisBeginCondition(HasRecord, 251 )
	MisBeginCondition(NoMission, 252 )
	MisBeginAction(AddMission, 252 )
	MisCancelAction(ClearMission, 252 )
		
	MisNeed(MIS_NEED_DESP, "腮栩� 剜躜葛� 酿箜觇 � 剜躜圊(296, 57).")
	
	MisHelpTalk("<t>伍! 项耧屮栩�, � 蝾 铐 怦� 耠铒噱�. 雾 蜞� 膻徼� 祛� 耱疱镯�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------老奶奶的糕点
	DefineMission( 284, "拎狍桧� 恹镥麝�", 252, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>饮 躅麇 馏腩麝�? � 蝾驽 躅黧! � 磬 扈眢蜿� 铗忮痦箅��, 赅� � 戾�� 箨疣腓 怦� 狍腩麝�.")
	MisResultCondition(NoRecord, 252 )
	MisResultCondition(HasMission, 252)
	MisResultAction(ClearMission, 252 )
	MisResultAction(SetRecord, 252 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,9035,9035)


-------------------------------------------------被夺走的便当
	DefineMission( 285, "雨疣溴眄�� 觐痤彡� 潆� 玎怛疣赅", 253 )

	MisBeginTalk( "<t>�  篑镥� 疣玢��溴螯 蝾泐 牝� 箨疣� 恹镥麝�, � 猁� <r署铗 丸礴�>. 悟徨痂蝈 � 礤泐 祛� 钺邃, 黩� 猁 � 耢钽 镱疣犷蜞螯 皴泐漤�. � 礤 祛泱 疣犷蜞螯 磬 泐腩漤 驽塍漕�. " )
	MisBeginCondition(HasRecord, 252)
	MisBeginCondition(NoMission, 253)
	MisBeginCondition(NoRecord, 250)
	MisBeginCondition(NoRecord, 253)  --暂时不许重复接
	MisBeginCondition(NoMission, 4)
	MisBeginAction(AddMission, 253)
	MisBeginAction(AddTrigger, 2531, TE_GETITEM, 4084, 1 )		--便当x1
	MisCancelAction(ClearMission, 253)

	MisNeed(MIS_NEED_ITEM, 4084, 1, 10, 1)

	MisPrize(MIS_PRIZE_ITEM, 3917, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>羽�!!! 蔓 忮痦箅� 祛� 钺邃! 袜觐礤鲵� � 耢钽� 镱钺邃囹�, � 镱蝾�, 磬忮痦�, 镱疣犷蜞�. 锗-踵-踵. 蔓 磬耱��� 耧囫栩咫�, 忸� 忸琰扈蝈 铗 <b务钺 觌筢龛黜 徼耜忤�>.")
	MisHelpTalk("<t>枢� 驽 躅麇蝰� 牦螯!")
	MisResultCondition(HasMission, 253 )
	MisResultCondition(HasItem, 4084, 1 )
	MisResultAction(TakeItem, 4084, 1 )
	MisResultAction(ClearMission, 253 )
	MisResultAction(SetRecord, 253 )
	MisResultAction(ObligeAcceptMission, 4 )
	MisResultAction(AddTrigger, 109, TE_KILL, 99, 1 )
	MisResultAction(AddTrigger, 108, TE_GAMETIME, TT_MULTITIME, 60, 1 )
	MisResultAction(AddExp,4500,4500)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4084 )	
	TriggerAction( 1, AddNextFlag, 253, 10, 1 )
	RegCurTrigger( 2531 )
	InitTrigger()
	TriggerCondition( 1, NoMisssionFailure, 4 )
	TriggerCondition( 1, IsMonster, 99 )
	TriggerAction( 1, AddNextFlag, 4, 10, 1 )
	RegCurTrigger( 109 )
	InitTrigger()
	TriggerCondition( 1, NoFlag, 4, 10 )
	TriggerAction( 1, SystemNotice, "Quest countdown is over. Lure Behemoth failed!" )
	TriggerAction( 1, SetMissionFailure, 4 )
	RegCurTrigger( 108 )

-------------------------------------------------海上补给站
	DefineMission( 286, "填瘃赅� 汔忄睃", 254 )

	MisBeginTalk( "<t>暑沅� � 玎龛爨腭� 镱耱噔觐� 沭箸钼, � 铟屙� 祉钽� 矬蝈耱忸忄� 镱 祛���. 填� 矬蝈耱忤� 镳桠咫� 戾�� � 务屙龛� 铖蝠钼囔. 铃躅祛蜞 禧 忡�腓 铗 蝮溧.<n><t>项 忸玮疣龛� 禧 铖蜞眍忤腓顸 � <b腻��蝾� 绵忄礤>. 亦� � 怦蝠弪桦�� � 理漯邋� � 铐 祉� 镳钿嚯 隋沐礓囵睇� �轹�, 耜噻噔, 黩� 铐� �怆��� 鬣耱 玎蝾眢怿邈� 耦牮钼棂�. 雾 蜞� 驽 耜噻嚯, 黩� � �轹� 钺豚溧 爨汨麇耜铋 耔腩�, � 屐� 礤 镱忮痂�, 眍 蜞� 赅� � 戾�� 猁腓 � 耦犷� 腓桢 100 螓���, � 牦镨� 桴 � 赅麇耱忮 耋忮龛疣. 朽玢噤嚅蝈 蜞轫� � 滂觇� 耋耱忄� � � �轹圊, � 镱祛� 觐蝾瘥�, 耋耱忄 耱囗钼�蝰� 箪礤� � 耔朦礤�.<n><t>悟镳噔��轵羼� � 罔痣�, � 汔忄睃 鲤沐眚� � 蝾麝�(2243,2826)." )
	MisBeginCondition(NoRecord, 254)
	MisBeginCondition(HasRecord, 250)
	MisBeginCondition(NoMission, 254)
	MisBeginAction(AddMission, 254)
	MisCancelAction(ClearMission, 254)

	MisNeed(MIS_NEED_DESP, "隅磬轵� � <b物屦囹铕� 绵忄龛 罔痣�>(2243,2826) 赅� 镱镟耱� � <y腻��蝮� 绵忄睃>.")

	MisHelpTalk("t>蔓 漕腈睇 镱泐忸痂螯 � 罔痣�.")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------山珍八宝酒
	DefineMission( 288, "妈眍 骂顸扈 酿嚆铞屙眍耱彘", 255 )

	MisBeginTalk( "<t>昨� 猁 皲咫囹� 狍螓腙� 忤磬, 4 桧沭邃桢眚钼 狍溴� 礤 漕耱囹铟眍! 橡桧羼栩� 祉�: 2 拎灬箨钼铋 痤覃(礤徨耥�� 镟礓� 1655,2583), 2 翔蜞蝈朦眍� 驽祺箧眍� 矬漯�(玉蝠桷� 1817,2472), 2 暑眚疣徉礓睇� 镳�眍耱�(暑眚疣徉礓桉� 1624,3017) � 2 锣疱忸 赍磴箴�(令犟屦�-徨瘃屦� 1161,2639)." )
	MisBeginCondition(NoRecord, 255)
	MisBeginCondition(HasRecord, 243)
	MisBeginCondition(HasMission, 242)
	MisBeginCondition(NoMission, 255)
	MisBeginAction(AddMission, 255)
	MisBeginAction(AddTrigger, 2551, TE_GETITEM, 4077, 2 )		--竹叶上的露珠
	MisBeginAction(AddTrigger, 2552, TE_GETITEM, 4078, 2 )		--养颜的珍珠粉
	MisBeginAction(AddTrigger, 2553, TE_GETITEM, 4079, 2 )		--走私香料
	MisBeginAction(AddTrigger, 2554, TE_GETITEM, 4080, 3 )		--袋鼠的私酿
	MisCancelAction(ClearMission, 255)

	MisNeed(MIS_NEED_ITEM, 4077, 2, 18, 2)
	MisNeed(MIS_NEED_ITEM, 4078, 2, 20, 2)
	MisNeed(MIS_NEED_ITEM, 4079, 2, 22, 2)
	MisNeed(MIS_NEED_ITEM, 4080, 3, 24, 3)

	MisPrize(MIS_PRIZE_ITEM, 4072, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>�! 蔓 渔� 镳桧羼腓 祉� 桧沭邃桢眚�, � 镳钿铍骟 泐蝾忤螯 忤眍 礤玎戾潆栩咫�.")
	MisHelpTalk("<t>昨�? 湾 镳桧羼腓? � 礤 耢钽� 锣� 镱祛鼽 � 忤眍�, 羼腓 蔓 礤 镳桧羼蛤� 祉� 桧沭邃桢眚�!")
	MisResultCondition(HasMission, 255 )
	MisResultCondition(HasItem, 4077, 2 )
	MisResultCondition(HasItem, 4078, 2 )
	MisResultCondition(HasItem, 4079, 2 )
	MisResultCondition(HasItem, 4080, 3 )
	MisResultAction(TakeItem, 4077, 2 )
	MisResultAction(TakeItem, 4078, 2 )
	MisResultAction(TakeItem, 4079, 2 )
	MisResultAction(TakeItem, 4080, 3 )
	MisResultAction(ClearMission, 255 )
	MisResultAction(SetRecord, 255 )
	MisResultAction(AddExp,1595,1595)
	MisResultAction(AddMoney,1538,1538)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4077 )	
	TriggerAction( 1, AddNextFlag, 255, 18, 2 )
	RegCurTrigger( 2551 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4078 )	
	TriggerAction( 1, AddNextFlag, 255, 20, 2 )
	RegCurTrigger( 2552 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4079 )	
	TriggerAction( 1, AddNextFlag, 255, 22, 2 )
	RegCurTrigger( 2553 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4080 )	
	TriggerAction( 1, AddNextFlag, 255, 24, 3 )
	RegCurTrigger( 2554 )

-----------------------------------海上补给站
	DefineMission( 289, "填瘃赅� 汔忄睃", 254, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>腻��蜞� 绵忄睃? 羊疣眄�, � 镱� 骅珥� 躅骟 镱� 镱痼襦扈 � 镱猁忄豚 忮玟�, 眍 � 蜞觐� 戾耱� � 礤 耠嚯� 溧驽.")
	MisResultCondition(NoRecord, 254 )
	MisResultCondition(HasMission, 254)
	MisResultAction(ClearMission, 254 )
	MisResultAction(SetRecord, 254 )
	MisResultAction(AddExp,5000,5000)	
	MisResultAction(AddMoney,2000,2000)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------航线活地图
	DefineMission( 290, "袜忤汔鲨铐磬� 赅痱�", 256 )

	MisBeginTalk( "<t>Although I have no knowledge of it, there are others that may know.<n><t>The Haven in the sea was attacked several times by pirates until it was destroyed. Usually during the reconstruction of the Haven, there will be a change in its name.<n><t>I remember when I was studying at Argent City Maritime school, I once heard my teacher mentioned a place called <pWoody Heaven> where a harbor operator who was called the '<rLiving Map of the sea>'. His name is.....<bBaros>!  Maybe you can try to look for him and question him. However, there are great dangers in the open sea so be prepared.<n><t>Oh right, the location of the Haven is at (2024, 2752), other than this I can't help you anymore. Good luck!" )
	MisBeginCondition(NoRecord, 256)
	MisBeginCondition(HasRecord, 254)
	MisBeginCondition(NoMission, 256)
	MisBeginAction(AddMission, 256)
	MisCancelAction(ClearMission, 256)

	MisNeed(MIS_NEED_DESP, "悟镳噔��轵羼� � 物屦囹铕� 绵忄龛 <p拎痤耋> � 蝾麝�(2024,2752) � 箸磬轵� � 礤泐 镳� 腻��蝮� 绵忄睃.<n><t>镟朦祛恹� 铃疱� 蔓 磬殇蛤� � 锑汨麇耜铎 侮遴礤. 愉圜�")

	MisHelpTalk("<t>添� 铟屙� 驵朦, 眍 犷朦 龛 麇� 礤 祛泱 锣� 镱祛鼽. � 疣耨赅玎豚 怦� 黩� 珥嚯� � 腻��蝾� 绵忄礤.")
	MisResultCondition(AlwaysFailure )

-----------------------------------航线活地图
	DefineMission( 291, "袜忤汔鲨铐磬� 赅痱�", 256, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>�? 黍� 蔓 � 铗 牦溧 锣� 桤忮耱眍 � 腻��蝾� 绵忄龛? � 礤 蝾� 牝� 玎 蜞� 铗牮铄� 皴牮弪. *枢朦*.")
	MisResultCondition(NoRecord, 256 )
	MisResultCondition(HasMission, 256)
	MisResultAction(ClearMission, 256 )
	MisResultAction(SetRecord, 256 )
	MisResultAction(AddExp,2649,2649)
	MisResultAction(AddMoney,1680,1680)
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------挑战水母
	DefineMission( 292, "杨耱�玎龛� 祛瘃觐� 戾潴琨", 257 )

	MisBeginTalk( "<t>*Cough* If you want to know so badly, you have to help me run an errand.<n><t>Back in my younger days I was termed the one and only 'Walking Map', I travelled and traded between many places.<n><t>In my greed, I did not take care of my health and contracted this persistent cough.<n><t>*Cough* The only thing to sooth it is to drink a soup brewed by <yTempest Sea Jelly Crystal>. I will need 15 to last me for some time.<n><t>*Cough* Those Sea Jellies are nearby. Come back to me when you have 15 and I may give you some information." )
	MisBeginCondition(NoRecord, 257)
	MisBeginCondition(HasRecord, 256)
	MisBeginCondition(NoMission, 257)
	MisBeginAction(AddMission, 257)
	MisBeginAction(AddTrigger, 2571, TE_GETITEM, 4140, 15 )		--竹叶上的露珠
	MisCancelAction(ClearMission, 257)

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� <y拎痤耋>(2024,2757) <b15 署桉蜞腚钼 牮钼铈噤眍� 戾潴琨>.")
	MisNeed(MIS_NEED_ITEM, 4140, 15, 10, 15)

	MisResultTalk("<t>*枢朦* 湾 镫铛�! 项玮铍� 祉� 铗忄痂螯 脲赅瘃蜮�.")
	MisHelpTalk("<t>*枢�* *杨镥龛�* *枢�*!")
	MisResultCondition(HasMission, 257 )
	MisResultCondition(HasItem, 4140, 15 )
	MisResultAction(TakeItem, 4140, 15 )
	MisResultAction(ClearMission, 257 )
	MisResultAction(SetRecord, 257 )
	MisResultAction(AddExp,5848,5848)
	MisResultAction(AddMoney,3422,3422)	
	MisResultAction(AddExpAndType,2,26625,26625)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4140 )	
	TriggerAction( 1, AddNextFlag, 257, 10, 15 )
	RegCurTrigger( 2571 )

-------------------------------------------------跑船
	DefineMission( 293, "疹驿屙桢 镱� 镟痼耦�", 258 )

	MisBeginTalk( "<t>锣� 驽 礤 耦耱噔桦� 蝠箐� 祉� 镱祛鼽, 礤 蜞� 腓? � 躅黧 锣� 镱镳铖栩� 妁� � 钿眍� 篑塍沐.<n><t>念耱噔� � 镱覃腙� � 隋潲睃 � 祛屐� 耱囵铎� 漯筱�." )
	MisBeginCondition(NoRecord, 258)
	MisBeginCondition(HasRecord, 257)
	MisBeginCondition(NoMission, 258)
	MisBeginAction(AddMission, 258)
	MisBeginAction(GiveItem, 4141, 1, 4)
	MisCancelAction(ClearMission, 258)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "悟镳噔��轵羼� � 隋潲睃 � 蝾麝� (1214, 681) � 镥疱溧轵� 项覃腙� 拎痤襦.")

	MisHelpTalk("<t>蓍! 项麇祗 蔓 妁� 蝮�?")
	MisResultCondition(AlwaysFailure )

-----------------------------------跑船
	DefineMission( 294, "疹驿屙桢 镱� 镟痼耦�", 258, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>锣� 镱耠嚯 拎痤襦? � 耦驵脲龛� 锣� 铒屦邃桦�! 蔓 铟屙� 戾潆屙眍 漕徼疣腓顸, 鼠瘘屦� 邈� 镳栳� 磬 祉钽� 疣睃 锣�.")
	MisResultCondition(NoRecord, 258 )
	MisResultCondition(HasMission, 258)
	MisResultCondition(HasItem, 4141, 1)
	MisResultAction(TakeItem, 4141, 1 )
	MisResultAction(ClearMission, 258 )
	MisResultAction(SetRecord, 258 )
	MisResultAction(AddExp,2924,2924)	
	MisResultAction(AddMoney,1711,1711)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------孪生兄弟
	DefineMission( 295, "琉囹�� 髓", 259 )

	MisBeginTalk( "<t>*Muak*<n><t>When you get this letter, I know that you have succesfully delivered the goods. Before you read on…. Take a deep breath…. <n><t>I am really sorry for lying to you, I am actually not the 'Walking Map' that you are looking for, but do not get angry. <n><t>I do know who the 'Walking Map' is as he is my twin brother. As you are so sincere, for your information, he lives in <bIcicle Castle>. His name is <bLuke>, bring my letter along and show it to him at (1320, 585). <n><t>P.S He is my twin brother so he will look like me!" )
	MisBeginCondition(NoRecord, 259)
	MisBeginCondition(HasRecord, 258)
	MisBeginCondition(NoMission, 259)
	MisBeginAction(AddMission, 259)
	MisBeginAction(GiveItem, 4142, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(ClearMission, 259)

	MisNeed(MIS_NEED_DESP, "腮栩� <b梭觇> 镱 觐铕滂磬蜞�(1320, 585).")

	MisHelpTalk("<t>蔓 箧� 漕耱噔桦� 镱覃腙�, � 溧� 锣� 镨顸祛... 昨� 龛狍潼 妁�?")
	MisResultCondition(AlwaysFailure )

-----------------------------------孪生兄弟
	DefineMission( 296, "琉囹�� 髓", 259, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>侦... 泥, � 镨顸祛 铗 祛邈� 狃囹�. 蔓 耱嚯� 邈� 铟屦邃眍� 驽痱忸�.<n><t>湾 皴痄栩羼� 磬 礤泐, 铐 镱耱��眄� 蜩�. � 蜞� 铐 铟屙� 躅痤� 麇腩忮�.")
	MisResultCondition(NoRecord, 259 )
	MisResultCondition(HasMission, 259)
	MisResultCondition(HasItem, 4142, 1)
	MisResultAction(TakeItem, 4142, 1 )
	MisResultAction(ClearMission, 259 )
	MisResultAction(SetRecord, 259 )
	MisResultAction(AddExp,3225,3225)	
	MisResultAction(AddMoney,1742,1742)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------准备活动
	DefineMission( 297, "项溷铗钼赅 � 溴�蝈朦眍耱�", 260 )

	MisBeginTalk( "<t>Although I do know where 'Nine Haven' is, I must warn you in advance.<n><t>The place is fraught with danger and peril. I do hope you are strong enough to face the trials ahead.<n><t>I do not wish to send a person to their death so I propose a trial.<n><t>Head east by ship from Icicle Harbor till you reach an area full of Feral Skeleton Fish. Bring back 12 <ySkeleton Fish Scales> and I will present you with a reward.")
	MisBeginCondition(NoRecord, 260)
	MisBeginCondition(HasRecord, 259)
	MisBeginCondition(NoMission, 260)
	MisBeginAction(AddMission, 260)
	MisBeginAction(AddTrigger, 2601, TE_GETITEM, 4143, 12)		
	MisCancelAction(ClearMission, 260)

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� <p梭觇> � 蝾麝� (1320, 585) <b12 族� 瘥猁-耜咫弪�>.")
	MisNeed(MIS_NEED_ITEM, 4143, 12, 10, 12)

	MisResultTalk("<t>项躅驽 锣� � 箐嚯铖�! � 溧� 锣� 觐朦鲱. 雾� 镱祛驽� 锣� � 狍潴屐 � � 龛� 蔓 耱囗栩� 耔朦礤�.")
	MisHelpTalk("<t>襄疱� 犷朦� 镫噔囗桢�, 锣� 礤钺躅滂祛 镱溷铗钼栩�.")
	MisResultCondition(HasMission, 260 )
	MisResultCondition(HasItem, 4143, 12 )
	MisResultAction(TakeItem, 4143, 12 )
	MisResultAction(GiveItem, 4144, 1, 4 )
	MisResultAction(ClearMission, 260 )
	MisResultAction(SetRecord, 260 )
	MisResultAction(AddExp,7110,7110)	
	MisResultAction(AddMoney,3548,3548)	
	MisResultAction(AddExpAndType,2,26625,26625)
	MisResultBagNeed(1)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4143 )	
	TriggerAction( 1, AddNextFlag, 260, 10, 12 )
	RegCurTrigger( 2601 )

-------------------------------------------------祝福之手
	DefineMission( 298, "岭嚆铖腩怆��� 痼赅", 261 )

	MisBeginTalk( "<t>蒡� 觐朦鲱 钺豚溧弪 犷朦� 耔腩�, 眍 蔓 礤 祛驽蝈 镱赅 邈� 钿弪�. 锣� 礤钺躅滂祛 邈� 犭嚆铖腩忤螯.<n><t>锑耱屦 叔疣(2664, 654) � 隋��眍� 罔镥 耢铈弪 溧螯 犭嚆铖腩忮龛� 锣祗 觐朦鲶, 耱箫嚅蝈 � 礤�." )
	MisBeginCondition(NoRecord, 261)
	MisBeginCondition(NoMission, 261)
	MisBeginCondition(HasRecord, 260)
	MisBeginAction(AddMission, 261)
	MisCancelAction(ClearMission, 261)

	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 锑耱屦 -叔痤� � 脲��眍� 罔镥 (2664, 654).")

	MisHelpTalk("<t>项塍麒蝈 犭嚆铖腩忮龛� 铗 锑耱屦 - 叔瘥!")
	MisResultCondition(AlwaysFailure )

-----------------------------------祝福之手
	DefineMission( 299, "岭嚆铖腩怆��� 痼赅", 261, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>填腩漕� 麇腩忮�, 蔓 镳桫腓 觐 祉� 玎 岭嚆铖腩忮龛屐?")
	MisResultCondition(NoRecord, 261)
	MisResultCondition(HasMission, 261)
	MisResultAction(ClearMission, 261 )
	MisResultAction(SetRecord, 261 )
	MisResultAction(AddExp,3916,3916)
	MisResultAction(AddMoney,1807,1807)
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------心灵力量
	DefineMission( 300, "捏躅忭�� 耔豚", 262 )

	MisBeginTalk( "<t> Countless people have requested my blessings. In fact, only a selected few has their wish granted, that is because I am only a guide. I have a strong mental power thus I can guide them successfully. Only those pure of heart can obtain the blessings. I do not wish to give you false hopes. Prove to me by heading eastwards towards the Icespire Haven, from there head north. You will find a group of Undead Archers at (2746, 450). Among them hides a Master Archer, he was resurrected by an unknown force. Kill him and bring his 'Radiant Soul' so I can put him to rest.")
	MisBeginCondition(NoRecord, 262)
	MisBeginCondition(HasRecord, 261)
	MisBeginCondition(NoMission, 262)
	MisBeginAction(AddMission, 262)
	MisBeginAction(AddTrigger, 2621, TE_GETITEM, 4145, 1)		
	MisCancelAction(ClearMission, 262)

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� <p叔疱> � (2664,654) <b梭麒耱簋 潴>.")
	MisNeed(MIS_NEED_ITEM, 4145, 1, 10, 1)

	MisResultTalk("<t>蔓 恹镱腠桦� 祛� 镱痼麇龛� � 蝈镥瘘 � 忤骟, 黩� 蔓 漕耱铋睇 祛邈� 岭嚆铖腩忮龛�.<n><t>� 犭嚆铖腩怆�� 锣�, � 蝈镥瘘 蔓 耢铈弪� 眍耔螯 � 觐朦鲱.")
	MisHelpTalk("<t>篷腓 恹 蜞� 礤 筲屦屙睇 � 皴徨, 蝾 � 赅觐� 犭嚆铖腩忮龛� 祛驽� 桎蜩 疱鼽?")
	MisResultCondition(HasMission, 262 )
	MisResultCondition(HasItem, 4144, 1 )
	MisResultCondition(HasItem, 4145, 1 )
	MisResultAction(TakeItem, 4145, 1 )
	MisResultAction(TakeItem, 4144, 1 )
	MisResultAction(GiveItem, 4146, 1 , 4)
	MisResultAction(ClearMission, 262 )
	MisResultAction(SetRecord, 262 )
	MisResultAction(SystemNotice, "Obtained quest: 'Return to Icicle'" )
	MisResultAction(ObligeAcceptMission, 7 )
	MisResultAction(AddExp,8620,8620)	
	MisResultAction(AddMoney,3682,3682)	
	MisResultAction(AddExpAndType,2,26625,26625)
	MisResultBagNeed(1)

		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4145 )	
	TriggerAction( 1, AddNextFlag, 262, 10, 1 )
	RegCurTrigger( 2621 )

-----------------------------------返回冰狼
	DefineMission( 302, "洛痦篁� � 隋潲睃", 7, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>念痤泐� 漯筱, � 忤骟, 黩� 螓 忮顸爨 篑镥� 耧疣怆�屮� � 玎溧龛�扈.<n><t>皖 狍潴邋 蝠遽箦� 犷脲� 皴瘘彗眍� 镱溷铗钼觇.")
	MisResultCondition(NoRecord, 7 )
	MisResultCondition(HasMission, 7)
	MisResultAction(ClearMission, 7 )
	MisResultAction(SetRecord, 7 )
	MisResultAction(AddExp,5211,5211)	
	MisResultAction(AddMoney,1910,1910)	
	MisResultAction(AddExpAndType,2,26625,26625)



-------------------------------------------------前往t9
	DefineMission( 303, "想栩� 漕 溴��蝾� 汔忄龛", 264 )

	MisBeginTalk( "<t>The Nine Haven you are talking about, existed 10 years ago.<n><t>Back then it was a mercantile trading port protected by the royal navy. They were raided by pirates and razed to ruins.<n><t>When it was rebuilt it was renamed <y Aerase Haven>. Due to the victory the pirates had over the navy, it is considered pirate domain.<n><t>Not many people remember the area 'Nine Haven' as new about it's sacking were surpressed.The coordinates are (2042, 635) in the Magical Ocean. Look for <b Harbor Operator - Burni>, he will help you." )
	MisBeginCondition(NoRecord, 264)
	MisBeginCondition(HasRecord, 7)
	MisBeginCondition(NoMission, 264)
	MisBeginAction(AddMission, 264)
	MisCancelAction(ClearMission, 264)

	MisNeed(MIS_NEED_DESP, "悟镳噔��轵羼� � 天嚆梓羼觇� 铌遴� � 蝾麝� (2042,635).")

	MisHelpTalk("<t>� 祛泱 妁� 麇� 龛 狍潼 锣� 镱祛鼽?")
	MisResultCondition(AlwaysFailure )

-----------------------------------前往t9
	DefineMission( 304, "想栩� 漕 溴��蝾� 汔忄龛", 264, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>昨�? 蔓 棂栩� 腻��蝮� 绵忄睃? 锗-踵-踵... 蔓 耱铊蝈 � 铋 绵忄龛.")
	MisResultCondition(NoRecord, 264 )
	MisResultCondition(HasMission, 264)
	MisResultAction(ClearMission, 264 )
	MisResultAction(SetRecord, 264 )
	MisResultAction(AddExp,12572,12572)
	MisResultAction(AddMoney,3966,3966)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------前往t9
	DefineMission( 305, "黍� 蜞觐� 理漯彘?", 265 )

	MisBeginTalk( "<t>朽睃 � 戾耱� 磬琨忄腩顸 <b腻��蝾� 绵忄睃�>. 义镥瘘 � 戾耱� 眍耔� 磬玮囗桢 <p馏躜� 篱痂�>. � 镳桢踵� 颃溧 镱耠� 疱觐眈蝠箨鲨�, 蜞�, 黩� � 龛 祉钽� 珥帼 铪 铎 戾耱�.<n><t><b翔疣� 逆屦桁�> 珥噱� 钺 铎 戾耱� 泐疣玟� 犷朦 戾��, 镱泐忸痂蝈 � 龛�. 陪� 祛骓� 磬轵� 磬 务蝠钼� 羊箧�(2362,657). 悟镳噔��轵羼� � 礤祗." )
	MisBeginCondition(NoRecord, 265)
	MisBeginCondition(HasRecord, 264)
	MisBeginCondition(NoMission, 265)
	MisBeginAction(AddMission, 265)
	MisCancelAction(ClearMission, 265)

	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � <b翔疣蝾� 逆屦桁�> � 蝾麝�(2362, 657).")

	MisHelpTalk("<t>� 犷朦 龛 麇� 礤 祛泱 锣� 镱祛鼽.")
	MisResultCondition(AlwaysFailure )

-----------------------------------前往t9
	DefineMission( 306, "黍� 蜞觐� 理漯彘?", 265, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>枢觐� 妁� 理漯彘? 枢觇� 脲沐礓囵睇� �轹�? � 鞲� 蔓 泐忸痂蝈? � 锣� 礤 镱龛爨�!!!")
	MisResultCondition(NoRecord, 265 )
	MisResultCondition(HasMission, 265)
	MisResultAction(ClearMission, 265 )
	MisResultAction(SetRecord, 265 )
	MisResultAction(AddExp,8292,8292)	
	MisResultAction(AddMoney,2097,2097)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------海军别动队
	DefineMission( 307, "噪铗 礤 溻桄弪��!", 266 )

	MisBeginTalk( "<t>泥 牝� 螓 蜞觐�, 黩� 猁 戾�� 徨耧铌铊螯? 疹麇 黩� 猁 � 蝈徨 镱祛�, 镱祛汨 祉�!<n><t>悟铎耱� 玎 戾�� 桁 <r填瘃觇� 耱疱腙囔>. 饮 磬殇给� 桴 � 忮瘐礤� 鬣耱� 钽� 泐痤溧. 雾� 徨耧铢噤睇� 筢栝鳆! 帖, 镨疣螓, 躅螯 � 沭噌桁 � 筢桠噱�, 眍 礤 怦艴, � 蝾朦觐 蝈� 牝� 祛驽� 磬� 筢栩�, 铐� 驽 礤 驵脲 龛 觐泐! 雾� 筢桠帼� 怦艴, � 耱囵桕钼 � 溴蝈�! � 牝� 驽 镱耠� 钽� 筢栝鳆? 帖? 翔疣螓?")
	MisBeginCondition(NoRecord, 266)
	MisBeginCondition(HasRecord, 265)
	MisBeginCondition(NoMission, 262)
	MisBeginAction(AddMission, 266)
	MisBeginAction(AddTrigger, 2661, TE_KILL, 667, 5)		
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 <r5 填瘃觇� 耱疱腙钼> � 忮痦栩羼� � <b逆屦屐�> � 蝾麝�(2362, 657).")
	MisNeed(MIS_NEED_KILL, 667, 5, 10, 5)

	MisResultTalk("<t>� 锣� 礤 漕铞屙桠嚯. 蔓 礤 蝠篑 � 礤 耧��蜞腓顸 铗 耱疣踵 � 牦耱�! � 镱祛泱 锣�!")
	MisHelpTalk("<t>昨�? 蔓 犷栩羼�? 蔓 玎犭箐桦桉�? � 泐疱! 蠕栩� � 汶噻 祛桴!")
	MisResultCondition(HasMission, 266 )
	MisResultCondition(HasFlag, 266 , 14)
	MisResultAction(ClearMission, 266 )
	MisResultAction(SetRecord, 266 )
	MisResultAction(AddExp,21776,21776)	
	MisResultAction(AddMoney,4436,4436)	
	MisResultAction(AddExpAndType,2,26625,26625)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 266, 10, 5 )
	RegCurTrigger( 2661 )

-------------------------------------------------又见杰克
	DefineMission( 308, "秧钼� 逆尻", 267 )

	MisBeginTalk( "<t>锑臌�, � 膻犭� 躔噌瘥� � 铗忄骓 膻溴�. 理漯彘 耢屙桦 疋罡 桁� 磬 <b泥疴桧> � 骅� 磬 铎 铖蝠钼� 漕 蝈� 镱�, 镱赅 翔疣螓 礤 箸磬腓 钺 铎. � 耢篁眍 镱祉�, 眍 镱 祛屐� � 猁腓 膻滂 <p暑镨蜞磬 逆尻�>. 雾� 筱钼铕桦� 邈� 镱轵� � 龛扈, � 蝈� 镱� � 礤 忤溴� <b理漯��>... 锣� 塍鼬� 耧痤耔螯 � 理漯邋 � 襦祛泐 逆尻�. 悟镳噔��轵羼� 磬 铖蝠钼 枢磬疱尻 � 镱泐忸痂蝈 � 龛� 腓黜�. 愉圜� � 耧囫栳� 蝈徨 妁� 疣�." )
	MisBeginCondition(NoRecord, 267)
	MisBeginCondition(HasRecord, 266)
	MisBeginCondition(NoMission, 267)
	MisBeginAction(AddMission, 267)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "腮栩� <p逆尻�> 磬 <b铖蝠钼� 枢磬疱尻> 镱 觐铕滂磬蜞� (1672,3777).")

	MisHelpTalk("<t>篷腓 蔓 耱囗弪� 翔疣蝾�, 蝾 禧 � 锣扈 镱豚滂�. � 皴轺囫 耱箫嚅蝈 镳铟�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------又见杰克
	DefineMission( 309, "秧钼� 逆尻", 267, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>亦� 蜞�... 骂� 禧 � 怦蝠弪桦桉�... 蔓 箧� 漕汔溧腓顸 黩� � � 羼螯 蝾� 襦禧� 逆尻?<n><t>� 磬溴� � 铖蜞礤蝰� 戾驿� 磬扈...")
	MisResultCondition(NoRecord, 267 )
	MisResultCondition(HasMission, 267)
	MisResultAction(ClearMission, 267 )
	MisResultAction(SetRecord, 267 )
	MisResultAction(AddExp,13026,13026)
	MisResultAction(AddMoney,2303,2303)
	MisResultAction(AddExpAndType,2,26625,26625)



-------------------------------------------------稍后再来
	DefineMission( 310, "� 洛痦篑�!", 268 )

	MisBeginTalk( "侦... �... 湾 眢 � 鞲?... 蔓 礤 忸怵屐�!" )
	MisBeginCondition(NoRecord, 268)
	MisBeginCondition(HasRecord, 267)
	MisBeginCondition(NoMission, 268)
	MisBeginAction(AddMission, 268)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 逆尻铎 (1672, 3777).")

	MisHelpTalk("侦.. 镱躅驽 祉� 礤钺躅滂祛 玎赅眵桠囹� 耦 疋铊扈 疣耨脲漕忄龛�扈.")
	MisResultCondition(AlwaysFailure )


-----------------------------------引诱巨兽
	DefineMission( 311, "青爨龛螯 黧漕忤", 4, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("� 礤 祛泱 � � 镱忮痂螯! 锣� 箐嚯铖� 筢栩� 铃踵祛蜞! � 蜞� 聍囫螂桠�! 义镥瘘 � 祛泱 耧铌铋眍 磬耠噫溧螯�� 怅篑铎 镥麇睃� 拎狍� 铃脘�! 扬囫栳�!")
	MisResultCondition(HasMission, 4 )
	MisResultCondition(NoRecord, 4 )
	MisResultCondition(NoMisssionFailure, 4 )
	MisResultCondition(HasFlag, 4, 10 )
	MisResultAction(ClearMission, 4 )
	MisResultAction(SetRecord, 4 )
	MisResultAction(AddExp,2649,2649)
	MisResultAction(AddMoney,1680,1680)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultAction(ClearTrigger, 108)


-------------------------------------------------“调查”
	DefineMission( 312, "Investigation", 269 )

	MisBeginTalk( "<t>黍� 锣� 镱耠嚯? 腻忤? 逆铐�? 骂痤徨�?<n><t>湾 忄骓�...袜 聍蛤 理漯��! � 礤 珥帼 镱 桁屙囔 疋铊� 翔疣蝾�! � 戾�� 8 螓��� 麟屙钼 栾噫�! 蔓 潴爨弪� � 桴 怦艴 镱祉� 镱 桁屙囔? 项殇栩� � 磬殇栩� 邈� 襦扈.")
	MisBeginCondition(NoRecord, 269)
	MisBeginCondition(HasRecord, 267)
	MisBeginCondition(NoMission, 269)
	MisBeginCondition(HasMission, 268)
	MisBeginAction(AddMission, 269)
	MisBeginAction(ClearMission, 268 )
	MisBeginAction(SetRecord, 268 )
	MisBeginAction(AddTrigger, 2691, TE_GETITEM, 3790, 1)
	MisBeginAction(AddTrigger, 2692, TE_GETITEM, 3791, 1)
	MisBeginAction(AddTrigger, 2693, TE_GETITEM, 3792, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_ITEM, 3790, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3791, 1, 11, 1)
	MisNeed(MIS_NEED_ITEM, 3792, 1, 12, 1)
	MisNeed(MIS_NEED_DESP, "Obtain some <rEmblem> from Jack's henchmen to prove that you are carrying out an 'Investigation'.")


	MisResultTalk("<t>悟 牦溧 � 锣� � <b蒽犭屐�>? � 镱 麇祗 磬 龛� 牮钼�? 湾 祛驽� 猁螯... 这囹栩 铖蜞眍忤蝈顸, � 怦� 疣耨赅骟. 蒡铗 理漯彘 � 镱耠� 疋铄� 耢屦蜩 镳桧铖栩 钿龛 蝾朦觐 礤镳��蝽铖蜩. � 驿� 锣� 礤祉钽� 镱珂�, 黩� 猁 疣耨赅玎螯 怦� 桉蝾痂�, 疋�玎眄簋 � 理漯邋�.")
	MisHelpTalk("<t>腕 黩� 锣� 磬漕 铗 戾��? � 礤 狍潴 泐忸痂螯 龛 � 赅觐� 耠篦噱 � 黩� 猁 蔓 礤 溴豚腓.")
	MisResultCondition(HasMission, 269 )
	MisResultCondition(HasItem, 3790 , 1)
	MisResultCondition(HasItem, 3791 , 1)
	MisResultCondition(HasItem, 3792 , 1)
	MisResultAction(TakeItem, 3790, 1 )
	MisResultAction(TakeItem, 3791, 1 )
	MisResultAction(TakeItem, 3792, 1 )
	MisResultAction(ClearMission, 269 )
	MisResultAction(SetRecord, 269 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3790 )
	TriggerAction( 1, AddNextFlag, 269, 10, 1 )
	RegCurTrigger( 2691 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3791 )
	TriggerAction( 1, AddNextFlag, 269, 11, 1 )
	RegCurTrigger( 2692 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3792)
	TriggerAction( 1, AddNextFlag, 269, 12, 1 )
	RegCurTrigger( 2693 )

-------------------------------------------------鲁德安的遗物
	DefineMission( 313, "青镨耜� 理漯��", 270 )

	MisBeginTalk( "<t>枢� 恹 箧� 磬忮痦� 珥噱蝈, 理漯彘 桤戾龛� 疋铄 桁� 磬 泥疴屙. 皖 铐 礤 耢钽 钺爨眢螯 戾�� 蜞觇� 钺疣珙�. 陪� 疣琨耜桠嚯 綦铗 甯 忮腓麇耱忄 暑痤脲恹! 暑沅� � 邈� 磬�, � 镳邃腩骅� 屐� 恹犷�: 桦� � 邈� 皲帼 綦铗�, 桦� 铐 镱殇蛤 觐 祉� � 觐爨礓�. 理漯彘 恹狃嚯 怛铕铄. 项� 泐溧 磬玎� 铐 玎犷脲� 耱疣眄铋 犷脲珥. � 磬� 礤 铖蜞忄腩顸 漯筱钽� 恹犷疣, 赅� 镱腩骅螯 邈� 磬 镫铗 � 铗镳噔栩� � 祛疱. � 镨疣蝾� 羼螯 蝠噤桷��: 暑沅� 钿桧 桤 磬� 箪桊噱�, 怦� 邈� 犷汔蝰蜮� 溴腓蝰� 磬 怦艴 麟屙钼 栾噫�. 亦� 赅� � 桴 暑爨礓桊, � 襦� 腓黜� 溴腓� 耦牮钼棂�.")
	MisBeginCondition(NoRecord, 270)
	MisBeginCondition(HasRecord, 269)
	MisBeginCondition(NoMission, 270)
	MisBeginAction(AddMission, 270)
	MisBeginAction(AddTrigger, 2701, TE_GETITEM, 4219, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞桠嚅蝈 麟屙钼 栾噫� 逆尻� � 镱桉赅� <b青镨耜� 理漯��>.")
	MisNeed(MIS_NEED_ITEM, 4219, 1, 10, 1)

	MisResultTalk("<t>泥! 蒡� 镳屙噤脲驵腩 理漯妣.")
	MisHelpTalk("<t>腮栩� � 祛彘 觐爨礓� 忮 理漯��!")
	MisResultCondition(HasMission, 270 )
	MisResultCondition(HasItem, 4219 , 1)
	MisResultAction(TakeItem, 4219, 1 )
	MisResultAction(GiveItem, 4220, 1, 4 )
	MisResultAction(ClearMission, 270 )
	MisResultAction(SetRecord, 270 )
	MisResultAction(AddExp,30000,30000)
	MisResultAction(AddMoney,5000,5000)
	MisResultAction(AddExpAndType,2,20000,20000)
	--MisResultAction(GiveItem,1815,1,4)
	MisResultAction(GiveItem,679,1,4) -- 唛鲱 填痄�
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4219 )
	TriggerAction( 1, AddNextFlag, 270, 10, 1 )
	RegCurTrigger( 2701 )


-----------------------------------海盗之血1
	DefineMission( 314, "署钼� 翔疣蜞", 8, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>熙. 蒡� 鬣耱� 磬琨忄 彦痄鲥� 填��赅. 雾� 铗疣驵弪 忭篁疱眄栝 扈� 膻犷泐. 篷腓 蜮铊 镱禧耠� 麒耱�, 螓 祛驽 镱塍麒螯 漕耱箫 觐 怦屐�, 黩� 耜瘥蝾 � 铎 皴痄鲥. 武磬觐, � 珥囗桢 狍溴� 镱蝈��眍 潆� 耠邃簋� 镱觐脲龛�. � 蝈�� 羼螯 青忮龛� 理漯��?<n><t>项躅驽, 蝈徨 镱蝠遽箦蝰� 镱祛. 袜殇� <r填磬瘐� 隋潲龛 - 锑襦> (1346,451), 铐 铗忮蜩� 磬 蜮铊 忸镳铖�.")
	MisResultCondition(NoRecord, 8 )
	MisResultCondition(HasMission, 8)
	MisResultAction(ClearMission, 8 )
	MisResultAction(SetRecord, 8 )
	MisResultAction(ObligeAcceptMission, 11 )

-----------------------------------海军之魂1
	DefineMission( 315, "捏 填��", 9, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>熙. 蒡� 鬣耱� 磬琨忄 彦痄鲥� 填��赅. 雾� 铗疣驵弪 忭篁疱眄栝 扈� 膻犷泐. 篷腓 蜮铊 镱禧耠� 麒耱�, 螓 祛驽 镱塍麒螯 漕耱箫 觐 怦屐�, 黩� 耜瘥蝾 � 铎 皴痄鲥. 武磬觐, � 珥囗桢 狍溴� 镱蝈��眍 潆� 耠邃簋� 镱觐脲龛�. � 蝈�� 羼螯 青忮龛� 理漯��?<n><t>项躅驽, 蝈徨 镱蝠遽箦蝰� 镱祛. 袜殇� <r缅礤疣豚 - 妈朦�爨> (2277, 2831), 铐 铗忮蜩� 磬 蜮铊 忸镳铖�.")
	MisResultCondition(NoRecord, 9 )
	MisResultCondition(HasMission, 9)
	MisResultAction(ClearMission, 9)
	MisResultAction(SetRecord, 9 )
	MisResultAction(ObligeAcceptMission, 12 )

-----------------------------------无名之人1
	DefineMission( 316, "砚钺钿睇� 捏�", 10, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>熙. 蒡� 鬣耱� 磬琨忄 彦痄鲥� 填��赅. 雾� 铗疣驵弪 忭篁疱眄栝 扈� 膻犷泐. 篷腓 蜮铊 镱禧耠� 麒耱�, 螓 祛驽 镱塍麒螯 漕耱箫 觐 怦屐�, 黩� 耜瘥蝾 � 铎 皴痄鲥. 武磬觐, � 珥囗桢 狍溴� 镱蝈��眍 潆� 耠邃簋� 镱觐脲龛�. � 蝈�� 羼螯 青忮龛� 理漯��?<n><t>项躅驽, 蝈徨 镱蝠遽箦蝰� 镱祛. 袜殇� <r彦牮弪囵� 鲤沐眚� - 燕朦恻屦�> (2219, 2749), 铐 铗忮蜩� 磬 蜮铊 忸镳铖�.")
	MisResultCondition(NoRecord, 10 )
	MisResultCondition(HasMission, 10)
	MisResultAction(ClearMission, 10)
	MisResultAction(SetRecord, 10 )
	MisResultAction(ObligeAcceptMission, 13 )

-------------------------------------------------海盗之血2
	DefineMission( 317, "署钼� 镨疣蜞", 271 )

	MisBeginTalk( "<t>署钼� 镨疣蝾�? 项躅驽 蔓 疱腓 皴瘘哥眍 疣珙狃囹� � 桁 溴腩�! 昨� 猁 镱黧怦蜮钼囹� 皴�� 磬耱��� 镨疣蝾�, 锣� 礤钺躅滂祛 皲咫囹� 镨疣蝰觇� 镱耱箫铌.<n><t>俞彘蝈 <r30 填瘃觇� 耱疱腙钼>.")
	MisBeginCondition(NoRecord, 271)
	MisBeginCondition(NoMission, 271)
	MisBeginCondition(HasMission, 11)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 11)
	MisBeginAction(SetRecord, 11)
	MisBeginAction(AddMission, 271)
	MisBeginAction(AddTrigger, 2711, TE_KILL, 667, 30)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 <r30 填瘃觇� 耱疱腙钼> � 忮痦栩羼� � <b填磬瘐� 隋潲龛 - 锑耋> � 蝾麝�(1346, 451).")
	MisNeed(MIS_NEED_KILL, 667, 30, 10, 30)

	MisResultTalk("<t>饮 筢桦 漕耱囹铟眍 <r填瘃觇� 耱疱腙钼>? 意罡 皴痄鲥 蝈镥瘘 镳桧噤脲骅� 翔疣蜞�. 蒡铗 觌 铗 蜞轫 镨疣蝰觐� 骅珥�.")
	MisHelpTalk("<t>螓 疣玮� 箧� 皲咫嚯 镥疣蝰觇� 镱耱箫铌?")
	MisResultCondition(HasMission, 271 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultCondition(HasFlag, 271, 39)
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 271 )
	MisResultAction(SetRecord, 271 )
	MisResultAction(AddExp,50000,50000)
	MisResultAction(AddMoney,5000,5000)
	MisResultAction(AddExpAndType,2,20000,20000)
	MisResultAction(GiveItem,1814,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 271, 10, 30 )
	RegCurTrigger( 2711 )

-------------------------------------------------海军之魂2
	DefineMission( 318, "捏 綦铗�", 272 )

	MisBeginTalk( "<t>捏 噪铗�? �! 蒡� 猁腩 30 脲� 磬玎�, � 蝾 � 犷朦. 义镥瘘 蝾朦觐 � 祗珏� 祛骓� 耱铍觏篁�� � 镳邃戾蜞扈 蝈� 脲�.<n><t>篷腓 蔓 躅蜩蝈 忮痦篁� 猁臌� 怵屐屙� � 镱珥囹� 骅珥� 祛��赅, 蝾 皲咫嚅蝈 怅豚� � 疣玮栩桢 填瘃觐泐 噪铗�. <b2 惕雓桀磬>, � 潴爨�, 狍溴� 漕耱囹铟眍.")
	MisBeginCondition(NoRecord, 272)
	MisBeginCondition(NoMission, 272)
	MisBeginCondition(HasMission, 12)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 12)
	MisBeginAction(SetRecord, 12)
	MisBeginAction(AddMission, 272)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "痂礤耔蝈 <p2 扈腚桀磬> 珙腩蜞 <b缅龛疣塍 妈朦�祗>(2277, 2831).")

	MisResultTalk("<t>蔓 镱腩骅腓 镥疴 觇痫梓桕 � 忸耨蜞眍怆屙梃 骂屙眍 填瘃觐泐 噪铗� 鸥 洛腓麇耱忄 暑痤脲恹.")
	MisHelpTalk("<t>蔓 礤 皲咫嚯� 忡眍� 疣珈屦铎 <p2.000.000> 珙腩蜞.")
	MisResultCondition(HasMission, 272 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultCondition(HasMoney, 2000000 )
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 272 )
	MisResultAction(SetRecord, 272 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,8000,8000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem,1814,1,4)
	MisResultBagNeed(2)

-------------------------------------------------无名之人3
	DefineMission( 319, "铃琨��眄", 273 )

	MisBeginTalk( "<t>蔓 镱滗屦骅忄弪� 礤轵疣朦眢� 耱铕铐�? � 锣� 羼螯 皴痄鲥 爨蝠铖�? 项玮铍� 祉� 忡汶�眢螯! 枢赅� 牮囫铗�.<n><t>昨� 猁 漕赅玎螯, 黩� 蔓 礤 蝠篑 镫栩� � 鲤沐眚 <p(77,3971)> � 蜞� 磬 戾耱�, 镳铒篑蜩蝈 疋罡 皴痄鲥 麇疱� 项耠囗桢 理漯��!")
	MisBeginCondition(NoRecord, 273)
	MisBeginCondition(NoMission, 273)
	MisBeginCondition(HasMission, 13)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 13)
	MisBeginAction(SetRecord, 13)
	MisBeginAction(AddMission, 273)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "想栩� � 礼赅痤� � 蝾麝�<p(77, 3971)> � 觌桕龛蝈 2 疣玎 镱 <b青镨耜� 理漯��>. 项塍麒� 玎溧龛� 忮痦栩羼� � 燕朦忮痼 � 蝾麝� (2219, 2749).")

	MisResultTalk("<t>项躅驽 蔓 钺疱腓 祗漯铖螯 理漯�� � 镱塍麒腓 觌.")
	MisHelpTalk("<t>悟镳噔��轵羼� � 礼赅痤� � 蝾麝�(77, 3971) � 镳铒篑蜩蝈 麇疱� 皴�� 理漯邋忸 镱耠囗桢.")
	MisResultCondition(HasMission, 273 )
	MisResultCondition(HasMission, 14 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 273 )
	MisResultAction(SetRecord, 14 )
	MisResultAction(ClearMission, 14 )
	MisResultAction(SetRecord, 273 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,8000,8000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultBagNeed(1)

-------------------------------------------------鲁德安的遗物
	DefineMission( 320, "拎黻 灭铎钽疣溧", 274 )

	MisBeginTalk( "<t>亦�, 扈眢蜿�... 鱼�... 埋� �耥�...<n><t>� 犷朦祗 祛屐� 耦驵脲龛�, 禧 礤 祛驽� 锣� 铗溧螯 玎忮龛� 理漯�� 礤 桁�� 镱滹桉彘, 疣琊屮帼� 磬� � 皲咫囹�. 杨徨痂蝈 怦� 镱滹桉� � 忸玮疣轵羼� 玎 玎忮龛屐.")
	MisBeginCondition(NoRecord, 274)
	MisBeginCondition(NoMission, 274)
	MisBeginCondition(HasMission, 15)
	MisBeginCondition(HasItem, 4222, 1)
	MisBeginAction(AddMission, 274)
	MisBeginAction(ClearMission, 15)
	MisBeginAction(SetRecord, 15)
	MisBeginAction(AddTrigger, 2741, TE_GETITEM, 4223, 1)
	MisBeginAction(AddTrigger, 2742, TE_GETITEM, 4224, 1)
	MisBeginAction(AddTrigger, 2743, TE_GETITEM, 4225, 1)
	MisBeginAction(AddTrigger, 2744, TE_GETITEM, 4226, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "杨徨痂蝈 怦� 镱滹桉� � 忸玮疣轵羼� � 拎黻桊� 灭铎铕噤� (743,1534).")
	MisNeed(MIS_NEED_ITEM, 4223, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4224, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 4225, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 4226, 1, 40, 1)

	MisResultTalk("<t>蔓 牦镨腓 镱滹桉�? 皖 赅�, 赅� 铐� 锣� 镱滹桉嚯�, 铖钺屙眍 蝾� 耱囵 潴疣�... 肃漤�, 豚漤�... 蒡� 戾�� 礤 赅襦弪��. 秒噔眍� 镱滹桉� 溴轳蜮栩咫� 桴, � 礤 镱滗咫赅.")
	MisHelpTalk("<t>蔓 耦狃嚯� 礤 怦� 镱滹桉�.")
	MisResultCondition(HasMission, 274 )
	MisResultCondition(HasItem, 4223 , 1)
	MisResultCondition(HasItem, 4224 , 1)
	MisResultCondition(HasItem, 4225 , 1)
	MisResultCondition(HasItem, 4226 , 1)
	MisResultCondition(HasItem, 4222 , 1)
	MisResultAction(TakeItem, 4222, 1 )
	MisResultAction(TakeItem, 4223, 1 )
	MisResultAction(TakeItem, 4224, 1 )
	MisResultAction(TakeItem, 4225, 1 )
	MisResultAction(TakeItem, 4226, 1 )
	MisResultAction(GiveItem, 4227, 1, 4 )
	MisResultAction(ClearMission, 274 )
	MisResultAction(SetRecord, 274 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4223 )
	TriggerAction( 1, AddNextFlag, 274, 10, 1 )
	RegCurTrigger( 2741 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4224 )
	TriggerAction( 1, AddNextFlag, 274, 20, 1 )
	RegCurTrigger( 2742 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4225 )
	TriggerAction( 1, AddNextFlag, 274, 30, 1 )
	RegCurTrigger( 2743 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4226 )
	TriggerAction( 1, AddNextFlag, 274, 40, 1 )
	RegCurTrigger( 2744 )

-------------------------------------------------海盗的朋友
	DefineMission( 321, "酿筱 镨疣蝾�", 275 )

	MisBeginTalk( "<t>念痤泐� 漯筱! � 锣� 磬 脶� 磬镨襦眍, 黩� 蔓 桤 噪铗�! 枢�... 斟-蹂-蹂 � 礤 镱滹屮� 锣� 龛 麇泐!<n><t>亦� 蔓 泐忸痂蝈, 黩� 漯筱 镨疣蝾�?! 疹痤, 漕赅骅蝈 祉� �! 俞彘蝈 <r30 填瘃觇� 羊疱腙钼> � � 锣� 镱忮瘙.")
	MisBeginCondition(NoRecord, 275)
	--MisBeginCondition(NoRecord, 276)
	MisBeginCondition(NoMission, 275)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(HasNavyGuild)
	MisBeginAction(AddMission, 275)
	MisBeginAction(AddTrigger, 2751, TE_KILL, 667, 30)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 <r30 祛瘃觇� 耱疱腙钼> � 忮痦栩羼� � <b锑耋> 玎 镱滹桉 � 蝾麝�(1346,451).")
	MisNeed(MIS_NEED_KILL, 667, 30, 10, 30)

	MisResultTalk("<t>蔓 镳铍桦� 牮钼� 磬祗 怵嚆� � 桁 漕赅玎腓 疋铪 镳邃囗眍耱�. � 钽� 爨戾眚� 蔓 磬� 漯筱. 泥忄轵� 颃溧 疋铪 狍爨泱, � 甯 镱滹屮� 锣� � 疣漕耱.")
	MisHelpTalk("<t>� 蔓 镱耠� 钽� 泐忸痂蝈, 黩� 磬� 漯筱, 筢桊嚅蝈顸 铗 颃溧!")
	MisResultCondition(HasMission, 275 )
	MisResultCondition(HasFlag, 275, 39)
	MisResultAction(GiveItem, 4223, 1, 4 )
	MisResultAction(ClearMission, 275 )
	MisResultAction(SetRecord, 275 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 275, 10, 30 )
	RegCurTrigger( 2751 )

-----------------------------------我不是海军
	DefineMission( 322, "� 礤 桤 綦铗�!", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>蔓 躅蜩蝈 祛� 镱滹桉�? � 镱滹桫� 锣� 镳� 蝾� 篑腩忤�, 黩� 蔓 礤 桤 噪铗�.")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 275 )
	MisResultCondition(NoFlag, 274, 1 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(NoNavyGuild)
	MisResultAction(GiveItem, 4223, 1, 4)
	MisResultAction(SetFlag, 274, 1 )
	MisResultBagNeed(1)

-------------------------------------------------脱离关系
	DefineMission( 323, "朽珙疴囹� 疋�琰", 277 )

	MisBeginTalk( "t>蔓 黩� 拎蝈睃赅, 耦怦屐 耱疣� 镱蝈��腓, 玎�忤腓顸 觐 祉� � 镳铖栩� 镱滹桉�? � 龛 麇泐 礤 狍潴 镱滹桉囹� 镨疣蜞�!<n><t>疹�� 羼腓 蔓 铖蜞忤蝈 镨疣蝾� � 镥疱殇蛤� 磬 磬 耱铕铐� 蝾 � 耢钽� 锣� 镱滹桉囹� 锣� 漕牦戾眚.")
	MisBeginCondition(NoRecord, 277)
	MisBeginCondition(NoRecord, 278 )
	MisBeginCondition(NoMission, 277)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(HasPirateGuild)
	MisBeginAction(AddMission, 277)
	MisBeginAction(AddTrigger, 2771, TE_KILL, 145, 10)
	MisBeginAction(AddTrigger, 2772, TE_KILL, 146, 10)
	MisBeginAction(AddTrigger, 2773, TE_KILL, 291, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 镨疣蝾� 逆尻�, 黩� 猁 漕赅玎螯 疋铪 镳邃囗眍耱� 綦铗�.")
	MisNeed(MIS_NEED_KILL, 145, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 146, 10, 20, 10)
	MisNeed(MIS_NEED_KILL, 291, 10, 30, 10)

	MisResultTalk("t>蔓 皲咫嚯� 躅痤� 溴腩 � 蝈镥瘘 � 忤骟 � 锣� 狍潴邋. 琉铖嚅蝈 蔓 桴 礤箐圜龛觐� � 桎栩� 耠箧栩� � 磬�. 亦觇� 膻滂 赅� 蔓 礤 漕腈睇 庙栩� 翔疣蝾�.")
	MisHelpTalk("<t>�! 袜踵�, 螓 妁� 蝮�? 熙疣磬.. 络�螯 袜汶弼� � 磬 忤皴朦龛鲶 邈�.")
	MisResultCondition(HasMission, 277 )
	MisResultCondition(HasFlag, 277, 19)
	MisResultCondition(HasFlag, 277, 29)
	MisResultCondition(HasFlag, 277, 39)
	MisResultAction(GiveItem, 4224, 1, 4 )
	MisResultAction(ClearMission, 277 )
	MisResultAction(SetRecord, 277 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 145 )
	TriggerAction( 1, AddNextFlag, 277, 10, 10 )
	RegCurTrigger( 2771 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 146 )
	TriggerAction( 1, AddNextFlag, 277, 20, 10 )
	RegCurTrigger( 2772 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 291 )
	TriggerAction( 1, AddNextFlag, 277, 30, 10 )
	RegCurTrigger( 2773 )

-----------------------------------我不是海盗
	DefineMission( 324, "� 礤 镨疣�!", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>橡桠弪 锑蝠铖, 泥忄� � 蝈徨 镱滹桫�.")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 277 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(NoFlag, 274, 2 )
	MisResultCondition(NoPirateGuild)
	MisResultAction(GiveItem, 4224, 1, 4)
	MisResultAction(SetFlag, 274, 2 )
	MisResultBagNeed(1)

-------------------------------------------------孤独的战士
	DefineMission( 325, "武桧铌栝 忸桧", 279 )

	MisBeginTalk( "<t>篷腓 蔓 恹狃嚯� 礤轵疣朦眢� 耱铕铐�, 珥圜栩 蔓 桦� 汶箫弼 玎珥嚅赅 桦� 溴轳蜮栩咫� 忸桧 钿桧铟赅.<n><t>蒡� 祛骓� 恹�耥栩� 钿龛� 耧铖钺铎. 念赅骅蝈 疋铪 礤玎忤耔祛耱� � 蝾沅� � 镱滹桫� 锣� 怦�, 黩� 蔓 耜噫弪�.")
	MisBeginCondition(NoRecord, 279)
	MisBeginCondition(NoRecord, 280 )
	MisBeginCondition(NoMission, 279)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(NoGuild)
	MisBeginAction(AddMission, 279)
	MisBeginAction(AddTrigger, 2791, TE_KILL, 145, 5)
	MisBeginAction(AddTrigger, 2792, TE_KILL, 146, 5)
	MisBeginAction(AddTrigger, 2793, TE_KILL, 291, 5)
	MisBeginAction(AddTrigger, 2794, TE_KILL, 667, 5)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 蝠遽箦禧� 祛眈蝠钼 � 忮痦栩羼� � 彦牮弪囵� 鲤沐眚� - 燕朦屦� 玎 镱滹羼!")
	MisNeed(MIS_NEED_KILL, 145, 5, 10, 5)
	MisNeed(MIS_NEED_KILL, 146, 5, 20, 5)
	MisNeed(MIS_NEED_KILL, 291, 5, 30, 5)
	MisNeed(MIS_NEED_KILL, 667, 5, 40, 5)

	MisResultTalk("<t>蔓 漕耱铋睇 祛邈� 筲噫屙�� 忸桧. 泥忄轵� � 锣� 镱滹桫� 漕牦戾眚.")
	MisHelpTalk("<t>蔓 龛黩铈睇! 义镥瘘 镱��蝽� 镱麇祗 蔓 钿桧, 锣� 礤忡�腓 龛 翔疣螓 龛 噪铗. 俞桊嚅蝈顸 � 汶噻 祛桴 � 礤 忸玮疣轵羼� 觐 祉� 镱赅 礤 筢蝈 祛眈蝠钼.")
	MisResultCondition(HasMission, 279 )
	MisResultCondition(HasFlag, 279, 14)
	MisResultCondition(HasFlag, 279, 24)
	MisResultCondition(HasFlag, 279, 34)
	MisResultCondition(HasFlag, 279, 44)
	MisResultAction(GiveItem, 4225, 1, 4 )
	MisResultAction(ClearMission, 279 )
	MisResultAction(SetRecord, 279 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 145 )
	TriggerAction( 1, AddNextFlag, 279, 10, 5 )
	RegCurTrigger( 2791 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 146 )
	TriggerAction( 1, AddNextFlag, 279, 20, 5 )
	RegCurTrigger( 2792 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 291 )
	TriggerAction( 1, AddNextFlag, 279, 30, 5 )
	RegCurTrigger( 2793 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 279, 40, 5 )
	RegCurTrigger( 2794 )

-----------------------------------强大的后盾
	DefineMission( 326, "梭鼬栝 徉黻", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>亦� 赅� � 锣� 镱滗屦骊� 皴瘘哥眍� 描朦滂� � 镱耱噔膻 镱滹桉�.")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 279 )
	MisResultCondition(NoFlag, 274, 3 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(HasGuild)
	MisResultAction(GiveItem, 4225, 1, 4)
	MisResultAction(SetFlag, 274, 3 )
	MisResultBagNeed(1)

-------------------------------------------------洗刷罪恶
	DefineMission( 327, "枢栝�� 沭屮龛�", 281 )

	MisBeginTalk( "<t>襄疱� 令泐� 怦� 疣忭�, 滂�� 祛�. � 礤 桁邋� 珥圜屙桢 翔疣� 螓 桦� 锑蝠铖 噪铗�. � 镱滹桫� 蝈徨 漕牦戾眚, 眍 � 磬鬣豚 镱镳铠� 蝈�� 钺 钿眍� 篑塍沐: 俞彘 桉鬣滂� 噤� - <r30 畜襦腩�-镳桤疣觐�>.")
	MisBeginCondition(NoRecord, 281)
	MisBeginCondition(NoMission, 281)
	MisBeginCondition(HasMission, 274)
	MisBeginAction(AddMission, 281)
	MisBeginAction(AddTrigger, 2811, TE_KILL, 620, 30)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "Use blood of the <yShadow Mermaid> to cleanse away your sins and report back to 'Clan Chief - Albuda' at (898, 3640).")
	MisNeed(MIS_NEED_KILL, 620, 30, 10, 30)

	MisResultTalk("<t>泥 犭嚆铖腩��� 锣� 令汨. 泥忄轵� 疋铋 念牦戾眚. � � 箐钼铍蜮桢� 邈� 锣� 镱滹桫�.")
	MisHelpTalk("<t>项赅 桉鬣滂� 噤� 躅滂� 镱 铋 珏祀� � 礤 祛泱 潴爨螯 龛 � 赅觇� 狍爨骊圊!")
	MisResultCondition(HasMission, 281 )
	MisResultCondition(HasFlag, 281, 39)
	MisResultAction(GiveItem, 4226, 1, 4 )
	MisResultAction(ClearMission, 281 )
	MisResultAction(SetRecord, 281 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem,3885,1,4)
	MisResultBagNeed(2)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 620 )
	TriggerAction( 1, AddNextFlag, 281, 10, 30 )
	RegCurTrigger( 2811 )

-----------------------------------鲁德安的遗书
	DefineMission( 328, "青忮龛� 理漯��", 16, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>青麇� 螓 忮痦箅��? 填� 疱��蜞 犷朦 礤 蝠铐篁 蝈�� � 螓 铖蜞恻 桴 � 镱觐�!<n><t>昨�? 饮 镱塍麒� 玎忮龛� 理漯��? 翌朦觐 � 镱玮铍屙�� 洛腓觐� 族蜮屦觇 螓 祛� 皲咫囹� �! 泥� 祉� 邈� 镳钼屦栩�!")
	MisResultCondition(NoRecord, 16 )
	MisResultCondition(HasMission, 16)
	MisResultCondition(HasItem, 4227, 1)
	MisResultAction(ClearMission, 16)
	MisResultAction(SetRecord, 16 )

----------------------------遗书的秘密
	DefineMission( 329, "彦牮弪 玎忮龛�", 282 )
	
	MisBeginTalk( "<t>锗-踵. 理漯彘... 腕 觐礤黜� 驽 铐 礤 祛� 蜞� 镳铖蝾 铖蜞忤螯 疋罡 玎忮龛�... 湾 耢铗痂蝈 蜞� 磬 戾��, � 礤 珥帼 赅� 镳铟栩囹� 玎忮龛�. 觐蝾痤泐 礤 忤漤�.<n><t>骂珈铈眍 锑臌� 腻龛咫� 耢铈弪 锣� 镱祛鼽. 栗 箧 铗 耱囵� 细�... 理漯彘, 理漯彘. 埋邈溧 膻徼� 玎汔潢�." )
	MisBeginCondition(NoRecord, 282)
	MisBeginCondition(HasRecord, 16)
	MisBeginCondition(NoMission, 282)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 282)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 玎忮龛� � 锑臌� 腻龛咫屐(2193, 2730).")
	
	MisHelpTalk("<t>悟镳噔��轵羼� � 锑臌 腻龛咫�, 眍 镱祉栩�, 龛 镱� 赅觇扈 稃蜿囔� 礤 泐忸痂蝈 龛 觐祗, 黩� � � 锣� � 礤祗 镱耠嚯.")
	MisResultCondition(AlwaysFailure )

-----------------------------------遗书的秘密
	DefineMission( 330, "彦牮弪 玎忮龛�", 282, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>泥轵� 赅 � 镱耢铗瘙... 侦, 镟蹴弪 礤忤滂禧扈 麇痦桦囔�. � 箐桠敫�, 黩� 羼螯 膻滂, 觐蝾瘥� 珥帼�, 赅� 皲咫囹� 礤忤滂禧� 麇痦桦�. � 祛泱 锣� 镱祛鼽 � 镳��忤蝈脲 礤忤滂禧� 麇痦桦, 眍 蔓 漕腈睇 祉� 耜噻囹�, 牝� 驽 祛� 锣� 疣耨赅玎螯 � 蝾�, 黩� � 箪妣 溴豚螯 镳��忤蝈朦.")
	MisResultCondition(NoRecord, 282 )
	MisResultCondition(HasMission, 282)
	MisResultCondition(HasItem, 4227, 1)
	MisResultAction(ClearMission, 282)
	MisResultAction(SetRecord, 282 )

----------------------------杰克介绍
	DefineMission( 331, "埋蝮镫屙桢 逆尻�", 283 )
	
	MisBeginTalk( "t>昨�?! 蔓 钺弪羼� � 桁 沩篑睇� 镨疣蝾�?! 襄疱溧轵� 屐�, 黩� 邈� 漤� 耦黩屙�! 俞桊嚅蝈顸 � 汶噻 祛桴 � 黩� 猁 � 锣� 犷朦 礤 忤溴�." )
	MisBeginCondition(NoRecord, 283)
	MisBeginCondition(HasRecord, 282)
	MisBeginCondition(NoMission, 283)
	MisBeginCondition(NoRecord, 284)
	MisBeginCondition(NoMission, 284)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 283)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "悟镳噔��轵羼� � (1672, 3777) � 镱耢铗痂蝈, 黩� 镳铊珙� � 逆尻铎, 镱耠� 蝾泐 赅� 蔓 邈� 镳邃嚯�.")
	
	MisHelpTalk("<t>饮 妁� 蝮�? � 眢 筢桊嚅�� 铗 颃溧 镱赅 � 礤 镳铍桦 磬 蝈�� 觇耠铗�!")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------酒馆传闻
	DefineMission( 332, "拎痦 耠篚�", 284 )

	MisBeginTalk( "<t>琼圜栩 � 蔓 箸磬腓 � 蜞忮痦�? � 磬忮痦� 猁� 耔朦眍 稂�� 疣� 襦� 疣耧篑蜩� �琨�.<n><t>肃漤�, 徨� 钺桎 蝾沅�. 篷腓 蔓 耢铈弪� 祉� 镳桧羼蜩 礤钺躅滂禧� 桧沭邃桢眚�, 蝾 � 耢钽� 锣� 镱祛鼽 � 镳��忤蝈脲�. 央篪嚅蝈 忭桁囹咫�, 黩� 锣� 磬漕 镳桧羼蜩: <b3 这铖蜞 牮钼铖铖簌邈� 恹镱腌��>, <b5 彦痄弼 牮钼铈噤眍� 戾潴琨>, <b7 琼嚓钼 漯邂龛� 痼襦腩�> � <b9 扬桧睇� 镫噔龛觐� 蝾镟�.溴溴朦翳眍�>. 项耧屮栩� 镳桧羼蜩 祉� � 怦�, 镱赅 � 礤 镥疱潴爨�.")
	MisBeginCondition(NoRecord, 284)
	MisBeginCondition(NoMission, 284)
	MisBeginCondition(NoMission, 283)
	MisBeginCondition(NoRecord, 283)
	MisBeginCondition(HasRecord, 282)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 284)
	MisBeginAction(AddTrigger, 2841, TE_GETITEM, 1255, 3)
	MisBeginAction(AddTrigger, 2842, TE_GETITEM, 1291, 5)
	MisBeginAction(AddTrigger, 2843, TE_GETITEM, 1365, 7)
	MisBeginAction(AddTrigger, 2844, TE_GETITEM, 1292, 9)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� 怦� � 锑臌 腻龛咫� � 鲤沐眚 � 蝾麝�(2193, 2730).")
	MisNeed(MIS_NEED_ITEM, 1255, 3, 10, 3)
	MisNeed(MIS_NEED_ITEM, 1291, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 1365, 7, 30, 7)
	MisNeed(MIS_NEED_ITEM, 1292, 9, 40, 9)

	MisResultTalk("<t>疹痤! 蔓 镳桧羼腓 怦� 蝾, � 鞲� � 锣� 镳铖桦. � 溧忭� 礤 玎龛爨腭� 桤泐蝾怆屙桢� 镳��忤蝈脲� 蜞� 黩� 羼腓, 黩� 蝾 礤 镱塍麒螯��, 礤 忤龛蝈 戾��.")
	MisHelpTalk("<t>蔓 礤 躅蜩蝈 祉� 礤耱� 桧沭邃桢眚�, 耢铗痂蝈, 忮潼 � 祛泱 � 镥疱潴爨螯 溴豚螯 镳��忤蝈朦 潆� 锣�!")
	MisResultCondition(HasMission, 284 )
	MisResultCondition(HasItem, 1255, 3)
	MisResultCondition(HasItem, 1291, 5)
	MisResultCondition(HasItem, 1365, 7)
	MisResultCondition(HasItem, 1292, 9)
	MisResultAction(TakeItem, 1255, 3)
	MisResultAction(TakeItem, 1291, 5)
	MisResultAction(TakeItem, 1365, 7)
	MisResultAction(TakeItem, 1292, 9)
	MisResultAction(GiveItem, 4228, 1, 4)
	MisResultAction(SetRecord, 284 )
	MisResultAction(ClearMission, 284 )
	MisResultBagNeed(1)
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 1255 )
	TriggerAction( 1, AddNextFlag, 284, 10, 3 )
	RegCurTrigger( 2841 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1291 )
	TriggerAction( 1, AddNextFlag, 284, 20, 5 )
	RegCurTrigger( 2842 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1365 )
	TriggerAction( 1, AddNextFlag, 284, 30, 7 )
	RegCurTrigger( 2843 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1292 )
	TriggerAction( 1, AddNextFlag, 284, 40, 9 )
	RegCurTrigger( 2844 )

----------------------------感情纠纷
	DefineMission( 333, "塔犷忭铄 镥疱镫弪屙桢", 285 )
	
	MisBeginTalk( "<t>令驽 祛�! 蔓 镳铊沩铕桊钼嚯� 祛� 镳邃箫疱驿屙桢! 朽玮� � 礤 镳铖桦 锣� 礤 泐忸痂螯 锑臌 腻龛咫� � 犷 祉�?<n><t>肃漤�. 青狍溴� � 锣� 铠栳赍. <b锑臌 腻龛�> 耢铈弪 篑镱觐栩� 蝾朦觐 <b蔫磬>(2224,2887). 翌朦觐 蝈镥瘘 潴爨轵� 疋铄� 泐腩忸�, 镳彐溴 麇� 黩� 龛 狍潼 ��镯篁� 腓邋." )
	MisBeginCondition(NoRecord, 285)
	MisBeginCondition(HasMission, 283)
	MisBeginCondition(NoMission, 285)
	MisBeginAction(AddMission, 285)
	MisBeginAction(SetRecord, 283)
	MisBeginAction(ClearMission, 283)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 拎痨屙� 蔫眍� � 蝾麝�(2224,2887).")
	
	MisHelpTalk("<t>腕 黩� 驽 蔓 铒�螯 蝾痨铉栩�? 蠕栩� 箧� � 拎� 鲤沐眚� � 镱泐忸痂蝈 � 徉痨屙� 念眄铋.")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------感情纠纷
	DefineMission( 334, "塔犷忭铄 镥疱镫弪屙桢", 286 )

	MisBeginTalk( "<t>昨�? 橡铠腩 箧� 耱铍� 脲�, � 锑臌� 腻龛咫� 漕 耔� 镱� 礤 祛驽� 镳铖蜩螯 逆尻� 邈� 镳邃囹咫蜮�?<n><t>� 镱镳钺簋 镱祛鼽 锣� 镱扈痂螯�� � 锑臌� 腻龛咫屐.<n><t>� 耠嚯�, 黩� 锑臌� 腻龛咫� 玎龛爨弪�� 桉耠邃钼囗桢� 饮赈. 橡桧羼栩� 祉� 钿眢 <b渔囫眢� 螓赈屙眢� 泐腩怏>. 蔓 耢铈弪� 镱塍麒螯 甯 筢桠 <r渔囫眍泐 瘥鲟�� 螓赈>.")
	MisBeginCondition(NoRecord, 286)
	MisBeginCondition(NoMission, 286)
	MisBeginCondition(HasRecord, 283)
	MisBeginCondition(HasMission, 285)
	MisBeginAction(AddMission, 286)
	MisBeginAction(AddTrigger, 2861, TE_GETITEM, 4735, 1)
	MisBeginAction(SetRecord, 285)
	MisBeginAction(ClearMission, 285)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� <b蔫礤> (2224, 2887) 钿眢 <p渔囫眢� 螓赈屙眢� 泐腩怏>.")
	MisNeed(MIS_NEED_ITEM, 4735, 1, 10, 1)

	MisResultTalk("<t>砧-蹊. 蒡� 牮囫桠�� 饮赈�. � 筲屦屙�, 黩� 筲桎邂 祛� 镱滹桉� 磬 礤� 铐 礤 铗赅驽� 锣� � 镳��忤蝈脲.")
	MisHelpTalk("<t>� 礤 耢钽� 锣� 镱祛鼽 镱赅 蔓 礤 耦彗忸腓蝈 镱耱囵囹�. 橡桧羼栩� 祉� <p渔囫眢� 螓赈屙眢� 泐腩怏>.")
	MisResultCondition(HasMission, 286 )
	MisResultCondition(HasItem, 4735, 1)
	MisResultAction(TakeItem, 4735, 1)
	MisResultAction(GiveItem, 4229, 1, 4)
	MisResultAction(SetRecord, 286 )
	MisResultAction(ClearMission, 286 )
	MisResultAction(ObligeAcceptMission, 17 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4735 )
	TriggerAction( 1, AddNextFlag, 286, 10, 1 )
	RegCurTrigger( 2861 )

-----------------------------------感情纠纷
	DefineMission( 335, "隅� 塔徕�", 17, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>朽玮� � 礤 镳铖桦 蝈�� 溴疰囹� 铗 戾�� 镱溧朦? 项耱铋! 昨� � � 蝈�� � 痼赅�? 饮赈� � 镱滹桉 蔫睇? 填驽 腓 螓 溧螯 祉� 邋? 项镳钺箝 桉镱朦珙忄螯 橡��忤蝈朦 礤忤滂禧� 麇痦桦.")
	MisResultCondition(NoRecord, 17 )
	MisResultCondition(HasMission, 17 )
	MisResultCondition(HasItem, 4229, 1)
	MisResultAction(TakeItem, 4229, 1 )
	MisResultAction(SetRecord, 17 )
	MisResultAction(ClearMission, 17 )
	MisResultAction(GiveItem, 4228, 1, 4 )
	MisResultBagNeed(1)

-------------------------------------------------海盗语言
	DefineMission( 336, "哏 镨疣蝾�", 287 )

	MisBeginTalk( "<t>�! 饮 耢钽 镳铟栩囹� 礤忤滂祛� 镱耠囗桢 理漯��! 丸牝� 礤 忮痂� 犷朦 � � 脲沐礓�, 眍 羼腓 恹 磬耱噼忄弪� � 疣耨赅骟 � 礤�. � 脲沐礓�, 牮囫桠�� 痼襦腙� 钺屦邈噱� 耜瘥蝾� 耦牮钼棂� 铗 镱耱铕铐龛� 汶噻. 杨汶囫眍 脲沐礓�, 羼腓 玎祛麒螯 疋彐簋 牮钼� 磬 耜咫弪, 蝾 铐 镳桠邃弪 � 觌噤�. 武磬觐 龛觐祗 � 疣睃 礤 箐噔嚯铖� 皲咫囹�. 妙蝾恹 腓 恹 镱镳钺钼囹�?<n><t>(畜襦腙�? 弱 蜞� 祉钽� , 赅� 祉� 磬轵� 眢骓簋? 填驽� 猁螯 <y暑痤脲忄 痼襦腩�>? � 礤 潴爨�, 黩� � 怦� 蜞� 镳铖蝾!).")
	MisBeginCondition(NoRecord, 287)
	MisBeginCondition(NoRecord, 18)
	MisBeginCondition(HasMission, 18)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(TakeItem, 4227, 1)
	MisBeginAction(AddMission, 287)
	MisBeginAction(AddTrigger, 2871, TE_GETITEM, 4230, 1)
	MisBeginAction(SetRecord, 18)
	MisBeginAction(ClearMission, 18)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "悟镳噔��轵羼� � 锑汨麇耜栝 铌遴� � 筢彘蝈 <r暑痤脲怏 痼襦腩�> � 蝾麝�(3385,1985). � 镳桧羼栩� <p畜襦腩鼽� 蝈腩> <b逆尻�>.")
	MisNeed(MIS_NEED_ITEM, 4230, 1, 10, 1)

	MisResultTalk("<t>� 恹 磬� 铗 耜咫弪! � 蔓 礤 蜞觐� 箧 � 镳铖蜞黝�, 赅觇� 镱赅玎腩顸 祉� 镳� 磬� 镥疴铋 怦蝠鬻�. 义镥瘘 镫栩� � 锑汨麇耜栝 侮遴�  � 蝾麝� <p(1843,1717)> � 镳铍彘蝈 牮钼� 磬 <b畜襦腩鼽� 蝈腩>.")
	MisHelpTalk("<t>蔓 礤 耢钽腓 甯 磬轵�, � 蜞� � 潴爨�. 蒡� 埋邈� 腓 脲沐礓�. 皖 怦� 疣忭� 蔓 祛驽蝈 镳��忤螯 � 镱 犷朦 驽豚龛� � 镱桉赅�.")
	MisResultCondition(HasMission, 287 )
	MisResultCondition(HasItem, 4230, 1)
	MisResultAction(SetRecord, 287 )
	MisResultAction(ClearMission, 287 )
	MisResultAction(ObligeAcceptMission, 19 )
	MisResultAction(AddExp,300000,300000)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem,3463,10,4)
	MisResultAction(GiveItem,1092,5,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4230 )
	TriggerAction( 1, AddNextFlag, 287, 10, 1 )
	RegCurTrigger( 2871 )

-----------------------------------迷的日记
	DefineMission( 337, "亦桧耱忮眄 漤邂龛�", 20, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>� 溧忭� 箧� 礤 忤溴� 镱漕犴 镨襦龛�. 青麇� 螓 玟羼�? � 潴爨�, 黩� 祉� 龛觐沅� 礤 镱镟潴蝰� � 痼觇 蜞觇� 忮. � 耦驵脲龛�, � 镱觌�腭� 龛觐沅� � 龛 潆� 觐泐 犷朦 礤 镥疱忸滂螯 � 钽� �琨赅. 项驵塍轳蜞, 铖蜞恻 疋铪 玎蝈�, � - 镳铌��螓� �琨� � 膻犷泐, 牝� 铌噫弪�� � 礤祗 镳梓囫蝈�, 驿弪 礤玎忤漤�� 耋潼徉.<n><t>项驵塍�, 蝾朦觐 蜞� 磬琨忄屐, 项耠邃钼囹咫� 令汨龛 祛泱� 忡�螯 磬 皴�� 蜞觐� 痂耜.")
	MisResultCondition(NoRecord, 20 )
	MisResultCondition(HasMission, 20 )
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetRecord, 20 )
	MisResultAction(ClearMission, 20 )
	
----------------------------女神的追随者
	DefineMission( 338, "项耠邃钼囹咫� 犷汨龛", 288 )
	
	MisBeginTalk( "<t>悟镳噔��轵羼� � 橡邃忸滂蝈膻 觌囗� 离箐� � 剜轵囗!" )
	MisBeginCondition(NoRecord, 288)
	MisBeginCondition(HasRecord, 20)
	MisBeginCondition(NoMission, 288)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 288)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂螯 � 离箐铋 � 蝾麝�(898, 3640).")
	
	MisHelpTalk("<t>� 犷朦 龛 麇� 礤 祛泱 锣� 镱祛鼽.")
	MisResultCondition(AlwaysFailure )

-----------------------------------女神的追随者
	DefineMission( 339, "项耠邃钼囹咫� 犷汨龛", 288, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>俞屦栩� 礤戾潆屙眍 � 潼�忸朦耜铄 镨顸祛 � 汶噻 祛桴 �, 黩� 猁 � 犷朦 礤 忤溴� � 镳铌��蝾� 镨顸祛! <p起桷� - 冷�> 桤篦噱� 铗 潼�忸朦耜栝 �琨�, � 忸珈铈眍 铐� 锣� 镱祛驽�, 眍 � 礤 钺妁帼 锣�, 黩� � 铐� 狍溴� 镥疱忸滂螯 � 屦羼�.")
	MisResultCondition(NoRecord, 288)
	MisResultCondition(HasMission, 288 )
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetRecord, 288 )
	MisResultAction(ClearMission, 288 )

----------------------------圣女
	DefineMission( 340, "岭嚆铟羼蜩忄� 骛桷�", 289 )
	
	MisBeginTalk( "<t>皖 � 漕腈屙 锣� 镳邃箫疱滂螯, 礤 耱铊� 疋�琨忄螯�� � 蜞觇扈 膻潼扈 赅� <b冷�>, 桧圜� � 锣� 镱殇蛤 镱 扈痼 潴痦�� 耠噔�.<n><t>(昨� 蜞觐泐 耱疣钽� � 铎 镱耠囗梃? 项麇祗 � 耱囵桕�, 怦� 赅� 钿桧, 牮梓囹 磬 戾�� � 铗忸疣麒忄�� 铗 钽� 镨顸爨? 骂珈铈眍 铐� 蝠篑�? 入� � � 汶箫弼 � 礤 耠篪帼 镳邃箫疱驿屙栝 耱囵彘�? 骂 怦�觐� 耠篦噱 祉� 耱铊� 镱稃蜞螯 聍囫螯� � 铗镳噔栩� � <p起桷� 冷�>, 镱祉栩�� <b离箐�> 泐忸痂�, 黩� 铐� 礤 镱 溧敫牦 铗 <p剜轵囗� � 蝾麝�(862,3303)>. � 蜞� � 皲咫帼, 铗镳噔膻顸 � 礤�, � 蜞� 狍潼 黩� 狍溴�!)" )
	MisBeginCondition(NoRecord, 289)
	MisBeginCondition(HasRecord, 288)
	MisBeginCondition(NoMission, 289)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 289)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "腮栩� 起桷� 冷� 镱 觐铕滂磬蜞�(862, 3303).")
	
	MisHelpTalk("<t>� 妁� 疣� 镱怛铕��, 礤 脲琰蝈 礤 � 疋罡 溴腩 � 铖蜞恻蝈 � 汶箫簋 玎蝈�!")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------虔诚的证明
	DefineMission( 341, "念赅玎蝈朦耱忸 磬犷骓铖蜩", 290 )

	MisBeginTalk( "<t>泥忭 溧忭� 镳铊珙� 桧鲨溴眚 � 橡邃忸滂蝈朦 觌囗� 离箐� 玎镳弪桦 怦� 桉耠邃钼囗�� 腻祛龛麇耜钽� �琨赅, 磬玮噔 邈� 硼羼, � 蝈� 牝� 钺弪�� 磬 砀� 硼弪桕囔�!<n><t>枢� 蔓 箧� 镱��腓, � 耢钽� 锣� 镱祛鼽, 眍 钺 铎 镳桎弪�� 祛膑囹�. 蔓 漕腈睇 镳铋蜩 桉稃蜞龛� 磬 麒耱铗� 镱禧耠钼 � 潴, 蜞� 赅� 蝾朦觐 疋�螓� 膻滂 � � 麒耱 皴痄鲥� 耢钽篁 怆彗螯 � 腻祛龛麇耜栝 �琨� 礤 耱噔 邈� 镱耠邃钼囹咫屐! 篷腓 捏 锣 铌噫弪�� 镱� 耦祉屙桢� 磬 麒耱铗� � 锣 镱禧耠� 狍潴� 沭屮睇扈, 蝾 禧 恹矬耱桁 磬 忸膻 腻祛磬, 觐蝾瘥� 镳桠邃蛤 扈� � 锗铖 � 疣琊篪屙��!<n><t>篷螯 膻滂 觐蝾瘥� 耢钽篁 磬� � 忄扈 镱祛鼽, 铗镳噔��轵羼� � <p洛瘐钼眍祗 骛弼� - 缅睃铐�> � 蝾麝�(862,3500). 雾 耜噫弪 锣�, 赅� 铟桉蜩螯 潴, � 耱囹� 镱耠篪龛觐� 令汨龛.")
	MisBeginCondition(NoRecord, 290)
	MisBeginCondition(HasMission, 289)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 290)
	MisBeginAction(AddTrigger, 2901, TE_GETITEM, 3954, 1)
	MisBeginAction(SetRecord, 289)
	MisBeginAction(ClearMission, 289)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "西桉蜩蝈 疋铪 潴 � 镱塍麒蝈 岭嚆铖腩怆屙桢 � 洛瘐钼眍泐 骛弼� - 缅睃铐�(862, 3500).")
	MisNeed(MIS_NEED_ITEM, 3954, 1, 15, 1)

	MisResultTalk("<t>� 磬溴� 蔓 磬殇蛤� 桉蜩眢 � 疣玑屦蛤羼�, 黩� 镳铊珲钿栩. 骂� 锣� 企痦嚯, � 镥疱忮豚 邈�, � 溧 躔囗栩 锣� 令� 滂�� 祛�.")
	MisHelpTalk("<t>锣 潴 妁� 礤 麒耱�, � 锣� 疣珞� 妁� 礤 泐蝾� 镳桧�螯 珉钼妁邋 耜噻囗��, 镳桴钿栩� 觐 祉� 觐沅� 锣� 岭嚆铖豚忤� 起弼 缅睃铐.")
	MisResultCondition(HasMission, 290 )
	MisResultCondition(HasItem, 3954, 1)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(TakeItem, 4231, 1)
	MisResultAction(TakeItem, 3954, 1)
	MisResultAction(GiveItem, 4232, 1, 4)
	MisResultAction(SetRecord, 290 )
	MisResultAction(ClearMission, 290 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3954 )
	TriggerAction( 1, AddNextFlag, 290, 15, 1 )
	RegCurTrigger( 2901 )


-----------------------------------虔诚的证明
	DefineMission( 342, "念赅玎蝈朦耱忸 磬犷骓铖蜩", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>锑臌�, � 蝈� 镱� 赅� 蔓 耱嚯� 镱祛汔螯 膻��� � 脲麒螯 桴 铗 犷脲珥彘, 蔓 漕赅玎腓, 黩� 锣 皴痄鲥 � 锣 潴 麒耱�. 骂琰扈蝈 铗 <p相蝈眚 � 犭嚆铟羼蜩�>, � 耱箫嚅蝈 � 犷泐�!")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 5)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------虔诚的证明
	DefineMission( 343, "念赅玎蝈朦耱忸 磬犷骓铖蜩", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>锑臌�, � 蝈� 镱� 赅� 蔓 耱嚯� 镱祛汔螯 膻��� � 脲麒螯 桴 铗 犷脲珥彘, 蔓 漕赅玎腓, 黩� 锣 皴痄鲥 � 锣 潴 麒耱�. 骂琰扈蝈 铗 <p相蝈眚 � 犭嚆铟羼蜩�>, � 耱箫嚅蝈 � 犷泐�!")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 13)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------虔诚的证明
	DefineMission( 344, "念赅玎蝈朦耱忸 磬犷骓铖蜩", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>锑臌�, � 蝈� 镱� 赅� 蔓 耱嚯� 镱祛汔螯 膻��� � 脲麒螯 桴 铗 犷脲珥彘, 蔓 漕赅玎腓, 黩� 锣 皴痄鲥 � 锣 潴 麒耱�. 骂琰扈蝈 铗 <p相蝈眚 � 犭嚆铟羼蜩�>, � 耱箫嚅蝈 � 犷泐�!")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 14)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------虔诚的证明
	DefineMission( 345, "念赅玎蝈朦耱忸 磬犷骓铖蜩", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>锑臌�, � 蝈� 镱� 赅� 蔓 耱嚯� 镱祛汔螯 膻��� � 脲麒螯 桴 铗 犷脲珥彘, 蔓 漕赅玎腓, 黩� 锣 皴痄鲥 � 锣 潴 麒耱�. 骂琰扈蝈 铗 <p相蝈眚 � 犭嚆铟羼蜩�>, � 耱箫嚅蝈 � 犷泐�!")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoFlag, 290, 1)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetFlag, 290, 1 )

-------------------------------------------------女神的考验
	DefineMission( 346, "锐稃蜞龛� 犷汨龛", 291 )

	MisBeginTalk( "<t>.蔓 泐蝾恹? 翌沅� 镳桉蝮镨�.<n><t>襄疴铄 黩� 蔓 漕腈睇 皲咫囹� � 筢栩� <r10 羊嚯 祗扈�>. 蔓 桴 磬殇蛤� � 礼赅痤礤(440,1440). ")
	MisBeginCondition(NoRecord, 291)
	MisBeginCondition(HasMission, 290)
	MisBeginCondition(HasFlag, 290, 1)
	MisBeginAction(AddMission, 291)
	MisBeginAction(AddTrigger, 2911, TE_KILL, 42, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "襄疴铄 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 42, 10, 10, 10)

	MisResultTalk("<t>项玟疣怆��, 蔓 镳铠腓 镥疴铄 桉稃蜞龛�.")
	MisHelpTalk("<t>羊囵嚅蝈顸 滂�� 祛� � � 锣� 怦� 镱塍麒螯��. � 溧 镱祛泱� 锣� 令汨.")
	MisResultCondition(HasMission, 291 )
	MisResultCondition(HasFlag, 291, 19)
	MisResultAction(SetRecord, 291 )
	MisResultAction(ClearMission, 291 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 42 )
	TriggerAction( 1, AddNextFlag, 291, 10, 10 )
	RegCurTrigger( 2911 )

-------------------------------------------------女神的考验
	DefineMission( 347, "锐稃蜞龛� 犷汨龛", 292 )

	MisBeginTalk( "<t>蔓 耢铈弪� 镳铋蜩 � 桉稃蜞龛�, � 忮瘙 � 锣�.<n><t>义镥瘘 铗镳噔��轵羼� � (511,1721) 礼赅痤� � 筢彘蝈 <r10 湾箫铌铄眄 忸桧钼>.")
	MisBeginCondition(NoRecord, 292)
	MisBeginCondition(HasRecord, 291)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 292)
	MisBeginAction(AddTrigger, 2921, TE_KILL, 267, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "买铕铄 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 267, 10, 10, 10)

	MisResultTalk("<t>项玟疣怆��, 令汨 磬 锣� 耱铕铐�.")
	MisHelpTalk("<t>羊囵嚅蝈顸 滂�� 祛� � 怦� 镱塍麒螯��.")
	MisResultCondition(HasMission, 292 )
	MisResultCondition(HasFlag, 292, 19)
	MisResultAction(SetRecord, 292 )
	MisResultAction(ClearMission, 292 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 267 )
	TriggerAction( 1, AddNextFlag, 292, 10, 10 )
	RegCurTrigger( 2921 )

-------------------------------------------------女神的考验
	DefineMission( 348, "锐稃蜞龛� 犷汨龛", 293 )

	MisBeginTalk( "<t>昨� 猁 镳铋蜩 蝠弪 桉稃蜞龛� 锣� 磬漕 筢栩� <r10 鸯屦蝾眍耥 耜咫弪钼-塍黜桕钼>(919,1581). 务蝈疱汔轵羼� 耱疱�.")
	MisBeginCondition(NoRecord, 293)
	MisBeginCondition(HasRecord, 292)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 293)
	MisBeginAction(AddTrigger, 2931, TE_KILL, 541, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "茵弪 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 541, 10, 10, 10)

	MisResultTalk("<t>项玟疣怆��, 令汨 磬 锣� 耱铕铐�.")
	MisHelpTalk("<t>羊囵嚅蝈顸 滂�� 祛� � 怦� 镱塍麒螯��.")
	MisResultCondition(HasMission, 293 )
	MisResultCondition(HasFlag, 293, 19)
	MisResultAction(SetRecord, 293 )
	MisResultAction(ClearMission, 293 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 541 )
	TriggerAction( 1, AddNextFlag, 293, 10, 10 )
	RegCurTrigger( 2931 )

-------------------------------------------------女神的考验
	DefineMission( 349, "锐稃蜞龛� 犷汨龛", 294 )

	MisBeginTalk( "t>族蜮葛蝾� 桉稃蜞龛� 狍溴� 礤 镳铖螓�.<n><t>锣� 礤钺躅滂祛 筢栩� <r10 橡邃忸滂蝈脲� 耜咫弪钼-忸桧钼>. 蔓 桴 磬殇蛤� 镱 觐铕滂磬蜞� � 礼赅痤礤(360,1440). � 锣� 箪铍��, 狍潼蝈 铖蝾痤骓�. 黍� 箪鸶� 铗 桴 戾麇�, 蝾� 钺疱鞲� 磬 忮黜簋 耢屦螯 � 冷�!")
	MisBeginCondition(NoRecord, 294)
	MisBeginCondition(HasRecord, 293)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 294)
	MisBeginAction(AddTrigger, 2941, TE_KILL, 565, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "族蜮葛蝾� 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 565, 10, 10, 10)

	MisResultTalk("<t>项玟疣怆��, 令汨 磬 锣� 耱铕铐�.")
	MisHelpTalk("<t>羊囵嚅蝈顸 滂�� 祛� � 怦� 镱塍麒螯��.")
	MisResultCondition(HasMission, 294 )
	MisResultCondition(HasFlag, 294, 19)
	MisResultAction(SetRecord, 294 )
	MisResultAction(ClearMission, 294 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 565 )
	TriggerAction( 1, AddNextFlag, 294, 10, 10 )
	RegCurTrigger( 2941 )

-------------------------------------------------女神的考验
	DefineMission( 350, "锐稃蜞龛� 犷汨龛", 295 )

	MisBeginTalk( "<t>��螓� 桉稃蜞龛屐 潆� 锣� 狍溴� - � 铗镳噔栩� 磬 蝾� 疋弪 <r10 橡铌��螓� 蝈�>. 腮栩� 桴 � 礼赅痤礤 �(360,1440).")
	MisBeginCondition(NoRecord, 295)
	MisBeginCondition(HasRecord, 294)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 295)
	MisBeginAction(AddTrigger, 2951, TE_KILL, 52, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "��蝾� 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 52, 10, 10, 10)

	MisResultTalk("<t>项玟疣怆��, 令汨 磬 锣� 耱铕铐�.")
	MisHelpTalk("<t>羊囵嚅蝈顸 滂�� 祛� � 怦� 镱塍麒螯��.")
	MisResultCondition(HasMission, 295 )
	MisResultCondition(HasFlag, 295, 19)
	MisResultAction(SetRecord, 295 )
	MisResultAction(ClearMission, 295 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 52 )
	TriggerAction( 1, AddNextFlag, 295, 10, 10 )
	RegCurTrigger( 2951 )

-------------------------------------------------女神的考验
	DefineMission( 351, "锐稃蜞龛� 犷汨龛", 296 )

	MisBeginTalk( "<t>义镥瘘 铗镳噔��轵羼� � 礼赅痤� � 蝾麝�(445,1571) � 镱觐眵栩� � <r署钼铈噤睇扈 铛铗龛赅扈>.")
	MisBeginCondition(NoRecord, 296)
	MisBeginCondition(HasRecord, 295)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 296)
	MisBeginAction(AddTrigger, 2961, TE_KILL, 666, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "劐耱铄 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 666, 10, 10, 10)

	MisResultTalk("<t>项玟疣怆��, 令汨 磬 锣� 耱铕铐�.")
	MisHelpTalk("<t>羊囵嚅蝈顸 滂�� 祛� � 怦� 镱塍麒螯��.")
	MisResultCondition(HasMission, 296 )
	MisResultCondition(HasFlag, 296, 19)
	MisResultAction(SetRecord, 296 )
	MisResultAction(ClearMission, 296 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 666 )
	TriggerAction( 1, AddNextFlag, 296, 10, 10 )
	RegCurTrigger( 2961 )

-------------------------------------------------女神的考验
	DefineMission( 352, "锐稃蜞龛� 犷汨龛", 297 )

	MisBeginTalk( "<t>俞彘蝈 <r10 暑囵睇� 镳铌��螓� 蝠箫钼>(360, 1340). 湾 镥疱矬蜞轵� 桴 � 橡铌��螓� 蝈腩�. 雾� 镱躅骅 � 忤潴, 眍 � 泐疣玟� 铒囫礤�.")
	MisBeginCondition(NoRecord, 297)
	MisBeginCondition(HasRecord, 296)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 297)
	MisBeginAction(AddTrigger, 2971, TE_KILL, 508, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "彦潼祛� 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 508, 10, 10, 10)

	MisResultTalk("<t>项玟疣怆��, 令汨 磬 锣� 耱铕铐�.")
	MisHelpTalk("<t>羊囵嚅蝈顸 滂�� 祛� � 怦� 镱塍麒螯��.")
	MisResultCondition(HasMission, 297 )
	MisResultCondition(HasFlag, 297, 19)
	MisResultAction(SetRecord, 297 )
	MisResultAction(ClearMission, 297 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 508 )
	TriggerAction( 1, AddNextFlag, 297, 10, 10 )
	RegCurTrigger( 2971 )

-------------------------------------------------女神的考验
	DefineMission( 353, "锐稃蜞龛� 犷汨龛", 298 )

	MisBeginTalk( "<t>悟镳噔��轵羼� 磬 镱桉觇 <r渔囫睇� 瘥鲟疱� 螓赈�> � 筢彘蝈 <r10> 桴 瘥鲟疱�.")
	MisBeginCondition(NoRecord, 298)
	MisBeginCondition(HasRecord, 297)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 298)
	MisBeginAction(AddTrigger, 2981, TE_KILL, 518, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "骂顸祛� 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 518, 10, 10, 10)

	MisResultTalk("<t>项玟疣怆��, 令汨 磬 锣� 耱铕铐�.")
	MisHelpTalk("<t>羊囵嚅蝈顸 滂�� 祛� � 怦� 镱塍麒螯��.")
	MisResultCondition(HasMission, 298 )
	MisResultCondition(HasFlag, 298, 19)
	MisResultAction(SetRecord, 298 )
	MisResultAction(ClearMission, 298 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 518 )
	TriggerAction( 1, AddNextFlag, 298, 10, 10 )
	RegCurTrigger( 2981 )

-------------------------------------------------女神的考验
	DefineMission( 354, "锐稃蜞龛� 犷汨龛", 299 )

	MisBeginTalk( "<t><r请钼妁栝 �>(662, 2460) 铟屙� 铒囫屙. 雾 筢桠噱� 怦艴 礤 玎潴禧忄�顸. 馏潼蝈 � 龛� 铖蝾痤骓邋. 俞彘蝈 <r10 请钼妁桴 蝾�>.")
	MisBeginCondition(NoRecord, 299)
	MisBeginCondition(HasRecord, 298)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 299)
	MisBeginAction(AddTrigger, 2991, TE_KILL, 547, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "腻��蝾� 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 547, 10, 10, 10)

	MisResultTalk("<t>项玟疣怆��, 令汨 磬 锣� 耱铕铐�.")
	MisHelpTalk("<t>羊囵嚅蝈顸 滂�� 祛� � 怦� 镱塍麒螯��.")
	MisResultCondition(HasMission, 299 )
	MisResultCondition(HasFlag, 299, 19)
	MisResultAction(SetRecord, 299 )
	MisResultAction(ClearMission, 299 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 547 )
	TriggerAction( 1, AddNextFlag, 299, 10, 10 )
	RegCurTrigger( 2991 )

-------------------------------------------------女神的考验
	DefineMission( 355, "锐稃蜞龛� 犷汨龛", 300 )

	MisBeginTalk( "<t>项耠邃龛� 桉稃蜞龛屐 潆� 锣� 狍溴� 俞栩�, 铗 桁屙� 令汨龛, <r理栳篑�>. 蔓 邈� 磬殇蛤� 磬 铖蝠钼� 隋蜞 � 襄疱 酿嚓铐�. 岭嚆铖腩忤� 锣� 令汨��. 丸 赅驿铎� 溧眍 邈� 镱徨滂螯!")
	MisBeginCondition(NoRecord, 300)
	MisBeginCondition(HasRecord, 299)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 300)
	MisBeginAction(AddTrigger, 3001, TE_KILL, 190, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "项耠邃礤� 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 190, 1, 10, 1)

	MisResultTalk("<t>西屙� 躅痤! 蔓 麒耱� 皴痄鲥� � 潴�. 骂琰扈蝈 铗 <b相蝈眚 � 犭嚆铟羼蜩�> � 耱箫嚅蝈 � 令泐� � <p砚�蝾� 起桷� - 冷�>!")
	MisHelpTalk("<t>羊囵嚅蝈顸 滂�� 祛� � 怦� 镱塍麒螯��.")
	MisResultCondition(HasMission, 300 )
	MisResultCondition(HasFlag, 300, 10)
	MisResultAction(SetRecord, 300 )
	MisResultAction(ClearMission, 300 )
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultAction(AddExp,350000,350000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem,3844,15,4)
	MisResultBagNeed(2)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 190 )
	TriggerAction( 1, AddNextFlag, 300, 10, 1 )
	RegCurTrigger( 3001 )


-----------------------------------神秘小镇
	DefineMission( 356, "亦桧耱忮眄 泐痤�", 21, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>蔓 棂弪� 蝾黜铄 戾耱铒铍铈屙桢?<n><t>� 桉躅漤铎 蝈犟蝈 龛麇泐 钺 � 礤 箫铎桧噱蝰�. 泥驽 磬玮囗桢 洛耥钽疣溧. 篷腓 猁 稂�眵箧赅 理蝾龛� � 蝾麝� (2222, 2889) 礤 箫铎�眢� 猁 � 礤�, � 猁 蜞� 龛觐沅� � 礤 疣珙狃嚯�� 忸 怦彘 铋 桉蝾痂�.")
	MisResultCondition(NoRecord, 21)
	MisResultCondition(HasMission, 21 )
	MisResultAction(SetRecord, 21 )
	MisResultAction(ClearMission, 21 )

----------------------------春风小镇
	DefineMission( 357, "洛耥钽疣�", 301 )
	
	MisBeginTalk( "<t>宵�睇�, 赅� 镳噔桦� 礤耋� 狃邃, 眍 溧驽 � 桴 狃邃� 桧钽溧 镳铖赅朦琨忄 腩汨麇耜桢 禧耠�. 蔓犷� 玎 锣扈, 桦� 镱忮痂螯 狃邃� 宵�龛鳆 桦� 桉赅螯 漯筱桢 矬蜩, 潆� 疱龛� 锣� 镳钺脲禧. 绣轵� 襦扈. � 耜噻嚯� 怦�, 黩� 珥嚯�(填驽� � 桊铐�� 耋潼猁, 铗 牦溧 铎� 嚯觐泐腓牦 珥囹� � 洛耥�? 雾 牮铎� 瘙礻� 疋铄� � 龛 麇泐 礤 忤溴� � 疋铄� 骅珥�. 疹�� 漯筱钽� 恹躅溧 � 戾�� 礤�, 镳桎弪�� 漕忮痂螯 疋铪 耋潼狍 铎� 稂�龛鲥). " )
	MisBeginCondition(NoRecord, 301)
	MisBeginCondition(HasRecord, 21)
	MisBeginCondition(NoMission, 301)
	MisBeginAction(AddMission, 301)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 稂�龛鲥� � 拎疱 鲤沐眚�(2222,2889) � 洛耥钽疣溴.")
	
	MisHelpTalk("<t>蠕栩� � 拎� 鲤沐眚�.")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------冒险精神
	DefineMission( 358, "捏� 桉耠邃钼囹咫�", 302 )

	MisBeginTalk( "<t>洛耥钽疣�! 悟 牦溧 锣� 桤忮耱眍 � 铎 戾耱�? 锣� 龛 觐沅� 礤 镱镟耱� 蝮溧! � 礤 忸琰祗 沭艴 磬 潴 礤 筢邃桠顸 � 锣� 耧铖钺眍耱��! 锣� 筢� � 祛疱, � 祉� 镱蝾� � 桁 沭艴铎 骅螯!<n><t>蔓 妁� 祛腩潲 � 忄� 疣眍 箪桊囹�. 蝈� 犷脲� 蜞觐� 汶箫铋 耢屦螯�!")
	MisBeginCondition(NoRecord, 302)
	MisBeginCondition(HasMission, 301)
	MisBeginCondition(HasItem, 4232, 1)
	MisBeginAction(AddMission, 302)
	MisBeginAction(SetRecord, 301)
	MisBeginAction(ClearMission, 301)
	MisBeginAction(AddTrigger, 3021, TE_GETITEM, 3962, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � <b锑臌� 泥龛屐>(2193, 2730) � 桉稃蜞龛��, 镱耠� 镳铛铈溴龛� 桉稃蜞龛� 忮痦栩羼� � 理蝾龛� � 蝾麝� (2222, 2889).")
	MisNeed(MIS_NEED_ITEM, 3962, 1, 10, 1)

	MisResultTalk("<t>蔓 漕赅玎腓 祉�, 黩� 泐蝾恹 铗镳噔栩� � 耱铍� 铒囫眍� 矬蝈耱忤�. *术�-牾�* 族耱眍 泐忸�� � 襦� 礤猁� 蜞�, 眍 玎蝾 � 耠嚯 祉钽� 桉蝾痂� � 铎 戾耱� 铗 <b拎狍� 铃脘�>!<n><t>项麇祗 恹 蜞� 磬 戾�� 珉钺眍 耢铗痂蝈? *汝* � 驽 怦邈� 腓 稂�龛鲟 钽� 徉疣. 斟�... 项泐忸痂蝈 � 拎狍铋 铃脘�, 铐� 箧 蝾黜� 珥噱� � <p洛耥钽疣溴> 怦�.")
	MisHelpTalk("<t>� 妁� 疣� 镱怛铕�� *汝* 填腩� 螓 妁� 箪桊囹�, .. 祛腩�!")
	MisResultCondition(HasMission, 302 )
	MisResultCondition(HasItem, 3962, 1 )
	MisResultCondition(HasItem, 4232, 1 )
	MisResultAction(TakeItem, 4232, 1 )
	MisResultAction(TakeItem, 3962, 1 )
	MisResultAction(SetRecord, 302 )
	MisResultAction(SetRecord, 312 )
	MisResultAction(ClearMission, 302 )
			
	InitTrigger()
	TriggerCondition( 1, IsItem, 3962 )
	TriggerAction( 1, AddNextFlag, 302, 10, 1 )
	RegCurTrigger( 3021 )

-----------------------------------冒险精神
	DefineMission( 359, "捏� 桉耠邃钼囹咫�", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>泥忭� 礤 忤溴腓顸 祛�  漯筱! 枢� 锣 骅珥�? �! 蔓 躅蜩蝈 镳铋蜩 桉稃蜞龛�, 黩� 猁 漕赅玎螯 疋铪 耔塍 � 镱溷铗钼脲眄铖螯 � 祛瘃觇� 矬蝈耱忤��? 疹痤! � 镱祛泱 锣�!")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(PfEqual, 4)
	MisResultAction(GiveItem, 3962, 1, 4 )
	MisResultBagNeed(1)

-----------------------------------冒险精神
	DefineMission( 360, "捏� 桉耠邃钼囹咫�", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>泥忭� 礤 忤溴腓顸 祛�  漯筱! 枢� 锣 骅珥�? �! 蔓 躅蜩蝈 镳铋蜩 桉稃蜞龛�, 黩� 猁 漕赅玎螯 疋铪 耔塍 � 镱溷铗钼脲眄铖螯 � 祛瘃觇� 矬蝈耱忤��? 疹痤! � 镱祛泱 锣�!")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(PfEqual, 16)
	MisResultAction(GiveItem, 3962, 1, 4 )
	MisResultBagNeed(1)

-----------------------------------冒险精神
	DefineMission( 361, "捏� 桉耠邃钼囹咫�", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>昨�? 锣� 眢骓� 漕赅玎蝈朦耱忸? 悟腓黜�! 橡铋�� ��� 祛桴 桉稃蜞龛� � 溧� 锣� <b暑祜囫 恹骅忄龛�>, 赅� 珥嚓 漕赅琨忄栝 锣 镱溷铗钼牦 � 祛瘃觇� 矬蝈耱忤��.")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoFlag, 302, 5)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(SetFlag, 302, 5 )

-------------------------------------------------冒险考验
	DefineMission( 362, "锐稃蜞龛� 潆� 桉耠邃钼囹咫�", 303 )

	MisBeginTalk( "<t>项玮铍� 祉� 箸磬螯 玎麇� 锣� � 怦�?... � 镱��蝽�! � 溧� 锣� 蜞觇� 桉稃蜞龛�, 黩� 猁 蔓 耢钽腓 漕赅玎螯 宵�龛鲥 <b蓓蝾龛>, 黩� 蔓 漕耱铋睇, 黩� 猁 铗镳噔栩� � <b洛耥钽疣�>.<n><t>骂� 锣� 镥疴�� 玎溧鬣! 悟镳噔��轵羼� � 侮遴� 礼赅痤磬 � 筢彘蝈 <r10 责邈囹钼 燕牦瘥 XIII>(1950,1286)...<n><t>� 玎镱祉栩�: <p鼠溧 猁 � 磬 觐泐 猁 � 锣� 礤 镱耠嚯, 蔓 漕腈睇 狍滂蝈 筢桠囹� 镱 10 祛眈蝠钼!> 疹痤? 青镱祉桦�? 腕 蝈镥瘘 铗镳噔��轵羼� 祛�  漯筱.")
	MisBeginCondition(NoRecord, 303)
	MisBeginCondition(HasFlag, 302, 5)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 303)
	MisBeginAction(AddTrigger, 3031, TE_KILL, 574, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "襄疴铄 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 574, 10, 10, 10)

	MisResultTalk("<t>悟腓黜�! 义镥瘘 蔓 祛驽蝈 镳桉蝮镨螯 � 耠邃簋祗 桉稃蜞龛�.")
	MisHelpTalk("<t>蔓 礤 筢桦� 祛眈蝠� � 觐蝾痤祗 � 锣� 镱耠嚯! 蔓 筲屦屙�, 黩� 躅蜩蝈 漕赅玎螯 宵�眍祗 蓓蝾龛, 黩� 蔓 泐蝾恹 � 矬蝈耱忤� � 洛耥钽疣�?")
	MisResultCondition(HasMission, 303 )
	MisResultCondition(HasFlag, 303, 19)
	MisResultAction(SetRecord, 303 )
	MisResultAction(ClearMission, 303 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 574 )
	TriggerAction( 1, AddNextFlag, 303, 10, 10 )
	RegCurTrigger( 3031 )

-------------------------------------------------冒险考验
	DefineMission( 363, "锐稃蜞龛� 潆� 桉耠邃钼囹咫�", 304 )

	MisBeginTalk( "<t>义镥瘘 筢彘蝈 蔓镱腌屙�-忄祜桊� � (370, 2317). 蒡� 犷朦� 泐腩忄 磬 忸溴, 玎溧龛� � 礤 镱赅驽蝰� 锣� 耠铈睇�.")
	MisBeginCondition(NoRecord, 304)
	MisBeginCondition(HasRecord, 303)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 304)
	MisBeginAction(AddTrigger, 3041, TE_KILL, 638, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "买铕铄 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 638, 10, 10, 10)

	MisResultTalk("<t>悟腓黜�! 义镥瘘 蔓 祛驽蝈 镳桉蝮镨螯 � 耠邃簋祗 桉稃蜞龛�.")
	MisHelpTalk("<t>蔓 礤 筢桦� 祛眈蝠� � 觐蝾痤祗 � 锣� 镱耠嚯! 蔓 筲屦屙�, 黩� 躅蜩蝈 漕赅玎螯 宵�眍祗 蓓蝾龛, 黩� 蔓 泐蝾恹 � 矬蝈耱忤� � 洛耥钽疣�?")
	MisResultCondition(HasMission, 304 )
	MisResultCondition(HasFlag, 304, 19)
	MisResultAction(SetRecord, 304 )
	MisResultAction(ClearMission, 304 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 638 )
	TriggerAction( 1, AddNextFlag, 304, 10, 10 )
	RegCurTrigger( 3041 )



-------------------------------------------------冒险考验
	DefineMission( 364, "锐稃蜞龛� 潆� 桉耠邃钼囹咫�", 305 )

	MisBeginTalk( "<t>央邃簋� 祛眈蝠 觐蝾痤泐 蔓 漕腈睇 筢栩� � 署钼铈噤磬� 戾潴玎.")
	MisBeginCondition(NoRecord, 305)
	MisBeginCondition(HasRecord, 304)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 305)
	MisBeginAction(AddTrigger, 3051, TE_KILL, 583, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "茵弪 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 583, 10, 10, 10)

	MisResultTalk("<t>悟腓黜�! 义镥瘘 蔓 祛驽蝈 镳桉蝮镨螯 � 耠邃簋祗 桉稃蜞龛�.")
	MisHelpTalk("<t>蔓 礤 筢桦� 祛眈蝠� � 觐蝾痤祗 � 锣� 镱耠嚯! 蔓 筲屦屙�, 黩� 躅蜩蝈 漕赅玎螯 宵�眍祗 蓓蝾龛, 黩� 蔓 泐蝾恹 � 矬蝈耱忤� � 洛耥钽疣�?")
	MisResultCondition(HasMission, 305 )
	MisResultCondition(HasFlag, 305, 19)
	MisResultAction(SetRecord, 305 )
	MisResultAction(ClearMission, 305 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 583 )
	TriggerAction( 1, AddNextFlag, 305, 10, 10 )
	RegCurTrigger( 3051 )

-------------------------------------------------冒险考验
	DefineMission( 365, "锐稃蜞龛� 潆� 桉耠邃钼囹咫�", 306 )

	MisBeginTalk( "<t>族蜮葛螓� 桉稃蜞龛屐 狍溴� 潆� 锣� 筢栝耱忸 劐腙钼桉蝾� 嚓箅� (3149,3836). 软蝈疱耥�, 牝� 彘 溧� 蜞觐� 磬玮囗桢, 龛 赅觐泐 聃钿耱忸 � 腙铎!")
	MisBeginCondition(NoRecord, 306)
	MisBeginCondition(HasRecord, 305)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 306)
	MisBeginAction(AddTrigger, 3061, TE_KILL, 660, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "族蜮葛蝾� 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 660, 10, 10, 10)

	MisResultTalk("<t>悟腓黜�! 义镥瘘 蔓 祛驽蝈 镳桉蝮镨螯 � 耠邃簋祗 桉稃蜞龛�.")
	MisHelpTalk("<t>蔓 礤 筢桦� 祛眈蝠� � 觐蝾痤祗 � 锣� 镱耠嚯! 蔓 筲屦屙�, 黩� 躅蜩蝈 漕赅玎螯 宵�眍祗 蓓蝾龛, 黩� 蔓 泐蝾恹 � 矬蝈耱忤� � 洛耥钽疣�?")
	MisResultCondition(HasMission, 306 )
	MisResultCondition(HasFlag, 306, 19)
	MisResultAction(SetRecord, 306 )
	MisResultAction(ClearMission, 306 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 660 )
	TriggerAction( 1, AddNextFlag, 306, 10, 10 )
	RegCurTrigger( 3061 )




-------------------------------------------------冒险考验
	DefineMission( 366, "锐稃蜞龛� 潆� 桉耠邃钼囹咫�", 307 )

	MisBeginTalk( "<t>想栩� � 洛腓觇� 谚龛� 侮遴� � 蝾麝� (986,1787) � 筢彘蝈 蜞� 翌镟珙忸泐 溴朦翳磬.")
	MisBeginCondition(NoRecord, 307)
	MisBeginCondition(HasRecord, 306)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 307)
	MisBeginAction(AddTrigger, 3071, TE_KILL, 584, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "��蝾� 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 584, 10, 10, 10)

	MisResultTalk("<t>悟腓黜�! 义镥瘘 蔓 祛驽蝈 镳桉蝮镨螯 � 耠邃簋祗 桉稃蜞龛�.")
	MisHelpTalk("<t>蔓 礤 筢桦� 祛眈蝠� � 觐蝾痤祗 � 锣� 镱耠嚯! 蔓 筲屦屙�, 黩� 躅蜩蝈 漕赅玎螯 宵�眍祗 蓓蝾龛, 黩� 蔓 泐蝾恹 � 矬蝈耱忤� � 洛耥钽疣�?")
	MisResultCondition(HasMission, 307 )
	MisResultCondition(HasFlag, 307, 19)
	MisResultAction(SetRecord, 307 )
	MisResultAction(ClearMission, 307 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 584 )
	TriggerAction( 1, AddNextFlag, 307, 10, 10 )
	RegCurTrigger( 3071 )

-------------------------------------------------冒险考验
	DefineMission( 367, "锐稃蜞龛� 潆� 桉耠邃钼囹咫�", 308 )

	MisBeginTalk( "<t>义镥瘘 筢彘蝈 <r馏轫簋 戾潴珞> � (1275, 3634)!")
	MisBeginCondition(NoRecord, 308)
	MisBeginCondition(HasRecord, 307)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 308)
	MisBeginAction(AddTrigger, 3081, TE_KILL, 603, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "劐耱铄 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 603, 10, 10, 10)

	MisResultTalk("<t>悟腓黜�! 义镥瘘 蔓 祛驽蝈 镳桉蝮镨螯 � 耠邃簋祗 桉稃蜞龛�.")
	MisHelpTalk("<t>蔓 礤 筢桦� 祛眈蝠� � 觐蝾痤祗 � 锣� 镱耠嚯! 蔓 筲屦屙�, 黩� 躅蜩蝈 漕赅玎螯 宵�眍祗 蓓蝾龛, 黩� 蔓 泐蝾恹 � 矬蝈耱忤� � 洛耥钽疣�?")
	MisResultCondition(HasMission, 308 )
	MisResultCondition(HasFlag, 308, 19)
	MisResultAction(SetRecord, 308 )
	MisResultAction(ClearMission, 308 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 603 )
	TriggerAction( 1, AddNextFlag, 308, 10, 10 )
	RegCurTrigger( 3081 )


-------------------------------------------------冒险考验
	DefineMission( 368, "锐稃蜞龛� 潆� 桉耠邃钼囹咫�", 309 )

	MisBeginTalk( "<t>� 洛腓觐� 谚礤� 侮遴礤 羼螯 <r锑蝈瘥� 痼徼眍恹� 溴朦翳�>(3785,1975). 俞彘蝈 邈�, 黩� 猁 镳铋蜩 皴潼祛� 桉稃蜞龛�.")
	MisBeginCondition(NoRecord, 309)
	MisBeginCondition(HasRecord, 308)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 309)
	MisBeginAction(AddTrigger, 3091, TE_KILL, 622, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "彦潼祛� 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 622, 10, 10, 10)

	MisResultTalk("<t>悟腓黜�! 义镥瘘 蔓 祛驽蝈 镳桉蝮镨螯 � 耠邃簋祗 桉稃蜞龛�.")
	MisHelpTalk("<t>蔓 礤 筢桦� 祛眈蝠� � 觐蝾痤祗 � 锣� 镱耠嚯! 蔓 筲屦屙�, 黩� 躅蜩蝈 漕赅玎螯 宵�眍祗 蓓蝾龛, 黩� 蔓 泐蝾恹 � 矬蝈耱忤� � 洛耥钽疣�?")
	MisResultCondition(HasMission, 309 )
	MisResultCondition(HasFlag, 309, 19)
	MisResultAction(SetRecord, 309 )
	MisResultAction(ClearMission, 309 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 622 )
	TriggerAction( 1, AddNextFlag, 309, 10, 10 )
	RegCurTrigger( 3091 )




-------------------------------------------------冒险考验
	DefineMission( 369, "锐稃蜞龛� 潆� 桉耠邃钼囹咫�", 310 )

	MisBeginTalk( "<t>� 侮遴礤 礼赅痤磬 � 蝾麝�(2790, 1286) 蔓 耱铍觏蛤羼� � <r暑爨礓睇� 觐疣犭胳 燕牦瘥 XIII>. 蔓 珥噱蝈 赅� 镱耱箫栩� � 铎 耠篦噱!")
	MisBeginCondition(NoRecord, 310)
	MisBeginCondition(HasRecord, 309)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 310)
	MisBeginAction(AddTrigger, 3101, TE_KILL, 650, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "骂顸祛� 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 650, 10, 10, 10)

	MisResultTalk("<t>悟腓黜�! 义镥瘘 蔓 祛驽蝈 镳桉蝮镨螯 � 耠邃簋祗 桉稃蜞龛�.")
	MisHelpTalk("<t>蔓 礤 筢桦� 祛眈蝠� � 觐蝾痤祗 � 锣� 镱耠嚯! 蔓 筲屦屙�, 黩� 躅蜩蝈 漕赅玎螯 宵�眍祗 蓓蝾龛, 黩� 蔓 泐蝾恹 � 矬蝈耱忤� � 洛耥钽疣�?")
	MisResultCondition(HasMission, 310 )
	MisResultCondition(HasFlag, 310, 19)
	MisResultAction(SetRecord, 310 )
	MisResultAction(ClearMission, 310 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 650 )
	TriggerAction( 1, AddNextFlag, 310, 10, 10 )
	RegCurTrigger( 3101 )


-------------------------------------------------冒险考验
	DefineMission( 370, "锐稃蜞龛� 潆� 桉耠邃钼囹咫�", 311 )

	MisBeginTalk( "<t>央邃簋� 忄 玎溧鬣, <y暑膻鬣� 瘥徉-觐耱�> (370, 2317)! 雾� 溴轳蜮栩咫� 赅� 徨朦祛 磬 汶噻�, 箜梓蝾骝� 桴 磬 犭嚆� 铖蜞朦眍泐 扈疣!")
	MisBeginCondition(NoRecord, 311)
	MisBeginCondition(HasRecord, 310)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 311)
	MisBeginAction(AddTrigger, 3111, TE_KILL, 585, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "腻��蝾� 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 585, 10, 10, 10)

	MisResultTalk("<t>蔓 玎觐眵桦� 溴��螓� 疣箜�, 羼腓 恹 泐蝾恹, 溧忄轵� 镥疱躅滂螯 � 耠邃簋祗.")
	MisHelpTalk("<t>亦赅� 镳铖蜞� 玎溧鬣, � 怦� 驽 恹 礤 耢钽腓 耧疣忤螯�� � 礤�? 蔓 筲屦屙�, 黩� 躅蜩蝈 忡�螯 磬 皴�� 痂耜 漕赅玎螯 疋铪 泐蝾忭铖螯?")
	MisResultCondition(HasMission, 311 )
	MisResultCondition(HasFlag, 311, 19)
	MisResultAction(SetRecord, 311 )
	MisResultAction(ClearMission, 311 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 585 )
	TriggerAction( 1, AddNextFlag, 311, 10, 10 )
	RegCurTrigger( 3111 )

-------------------------------------------------冒险考验
	DefineMission( 371, "锐稃蜞龛� 潆� 桉耠邃钼囹咫�", 312 )

	MisBeginTalk( "<t>锣 镱耠邃礤� 玎溧龛� 赅襦弪�� 镳噔栩咫蜮�. 腕骓�  箜梓蝾骅螯 <y暑疣犭� 镱滗屦骊� 皴忮���>! 袜溴� 怦觐疱 筲桎弪� 桴 疣玟弪� 蹂-蹂")
	MisBeginCondition(NoRecord, 312)
	MisBeginCondition(HasRecord, 311)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 312)
	MisBeginAction(AddTrigger, 3121, TE_KILL, 611, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "腻��蝾� 桉稃蜞龛�")
	MisNeed(MIS_NEED_KILL, 611, 10, 10, 10)

	MisResultTalk("<t>蔓 镳孱漕脲腓 怦� 桉稃蜞龛�! 湾 潴爨�, 黩� � 忄� 镱塍麒蝰�. 侮噻噱蝰�, 恹 犷脲� 磬躅澉桠�, 麇� 漯筱桢. 骂�, 溴疰栩� 铗 觐祜囫, 恹 玎耠箧桦� 邈�.")
	MisHelpTalk("<t>蔓 礤 耢钽腓 耧疣忤螯�� � 祛桁 玎溧龛屐 � 镱蝾镨螯 怵噫羼觇� 觐疣犭�! 蔓 筲屦屙�, 黩� 玎耠箧桠噱蝈 磬沭噤�?")
	MisResultCondition(HasMission, 312 )
	MisResultCondition(HasFlag, 312, 19)
	MisResultAction(SetRecord, 312 )
	MisResultAction(ClearMission, 312 )
        MisResultAction(GiveItem, 3962, 1, 4 )	
	MisResultAction(AddExp,250000,250000)
	MisResultAction(AddMoney,50000,50000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem,3845,6,4)
	MisResultBagNeed(2)

			
	InitTrigger()
	TriggerCondition( 1, IsMonster, 611 )
	TriggerAction( 1, AddNextFlag, 312, 10, 10 )
	RegCurTrigger( 3121 )

----------------------------贝蒂
	DefineMission( 372, "铃脘�", 313 )
	
	MisBeginTalk( "<t>项镳钺箝蝈 疣耨镳铖栩� <b羊囵篪牦 铃脘�>. 骂珈铈眍 铐� 镱祛驽� 忄�." )
	MisBeginCondition(NoRecord, 313)
	MisBeginCondition(HasRecord, 302)
	MisBeginCondition(NoMission, 313)
	MisBeginAction(AddMission, 313)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "蔓 祛驽蝈 磬轵� 邋 � 鲤沐眚� � 蝾麝� (2277, 2769)")
	
	MisHelpTalk("<t>隅磬轵� � 洛耥钽疣溴 � <b羊囵篪觇 铃脘�>")
	MisResultCondition(AlwaysFailure )


----------------------------贝蒂
	DefineMission( 373, "铃脘�", 313, COMPLETE_SHOW )

	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>昨�? 洛耥钽疣�? 栗, 赅觐� 镳尻疣耥铄 磬玮囗桢! 泥忭屙� � 礤 耠嚯�, 黩� 猁 牝�-龛狍潼 箫铎桧嚯 铗 泐痤�. 暑沅�-蝾 � 祛腩漕耱� � 稃蜞豚顸 疣耨赅琨忄螯 膻��� � 镳尻疣耥铎 洛耥钽疣溴, 眍 祉� 龛牝� 礤 忮痂�. 义镥瘘 驽 蝮� 恹 � 耧疣忄弪� 戾�� 镳� 桉蝾痂� 洛耥钽疣溧! 洋潼徉 腓 �?")
	MisResultCondition(NoRecord, 313)
	MisResultCondition(HasMission, 313)
	MisResultAction(SetRecord, 313 )
	MisResultAction(ClearMission, 313 )

-----------------------------------家乡
	DefineMission( 374, "蓄漤铋 泐痤�", 315 )

	MisBeginTalk( "<t>疹蜩蝈 忮瘘蝈, 躅蜩蝈 礤�, 眍 � 痤滂豚顸 � 骅豚 � 洛耥钽疣溴! 蒡� 猁腩 襦祛� 塍鼬邋 怵屐� � 祛彘 骅珥�! 武桧 疣� 禧 疱腓 铗镳噔栩� � 祛疱, 黩钺� 桉牦镟螯��, 眍 磬鬣腭�  铕� � 磬� 觐疣犭� 磬牮� 忸腠铋. 湾 珥帼, 祛驽� 猁螯 怦� 镱汨犭� � � 钿磬 铖蜞豚顸 � 骅恹�, 祛驽� 猁螯 牝� 蝾 妁� 恹骅�, � 蝾沅� 猁豚 妁� 耦怦屐 疱岣黻铎. 体�� 镱漕狃嚯 扈祛 镳铛钿�� 蝾疸钼 觐疣犭�, 觐蝾瘥� � � 鲤沐眚. 亦� � 镱镟豚 � 镳棹�, 沅� 镳铈桦� 漕 耦忮瘌屙眍脲蜩�. 填彘 戾黩铋 猁腩 忮痦篁� � 皴徨 磬 痤滂眢, 眍 龛牝� 祉� 礤 忮痂�, 黩� 羼螯 蜞觐� 泐痤�. 泥... 洛耥钽疣�, 铐 镳尻疣皴�! 橡铠腩 怵屐�. 义镥瘘 � 铟屙� 耱囵�� 潆� 矬蝈耱忤� 镱 侮遴磬� � 祛� 玟铕钼 礤 镱玮铍栩 祉� 铗镳噔栩� � � 铒囫眍� 矬蝈耱忤�. 皖 忸 耥� � 鬣耱� 猁忄� 蜞�. 篷腓 蔓 铗忄骓 沐痤� � 礤 犷栩羼� 铒囫眍耱彘, 蝾 蔓 耢铈弪� 镳孱漕脲螯 怦� 镳屣�蝰蜮�� � 镱镟耱� � 洛耥钽疣�!<n><t>念耱噔� 铗 戾�� 钿眢 忮 磬 铖蝠钼 洛耥�. 蔓 耢铈弪� 甯 忡�螯 � 徉黻� 隋潲龛.")
	MisBeginCondition(NoRecord, 315)
	MisBeginCondition(HasRecord, 313)
	MisBeginCondition(NoMission, 315)
	MisBeginAction(AddMission, 315)
	MisBeginAction(AddTrigger, 3151, TE_GETITEM, 4235, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "洛痦栩� 忮 <b铃脘�>, 躔囗�羼� � 徉黻� 隋潲龛")
	MisNeed(MIS_NEED_ITEM, 4235, 1, 1, 1)

	MisResultTalk("<t>�! 蒡� 驽 箨疣龛� 祛邈� 溴蝰蜮�! � 珥嚯�, 黩� 恹 镱祛驽蝈 祉�. 蒡� 皴瘘汔 铟屙� 忄骓� 潆� 戾��. 雾� 怦邈溧 玎豚 戾��, 觐沅� � 镱镟溧豚 � 礤镳��蝽铖蜩. � 祛彘 皴耱瘥 羼螯 蜞赅� 驽, 镱铎�, 觐沅� � 耢铗瘙 磬 皴瘘泱, 蝾 怦镱扈磬� � 礤�. 项驵塍轳蜞, 忸琰扈蝈 甯 � 铗溧轵� 祛彘 皴耱疱, 羼腓 铐� 怦� 妁� 骅忄!<n><t> 篷腓 恹 怃痼� 玎犭箐栩羼�, 忸耧铍箝蝈顸 忸� 桁 忸��睇� 觐脲耦�, 铐� 箨噫弪 忄� 忮痦 矬螯.<n><t>篷腓 祉� 礤 桤戾��弪 镟��螯, 蝾 洛耥钽疣� 漕腈屙 磬躅滂螯�� � 洛腓觐� 耔礤� 铌遴礤, 磬 �-忸耱铌�. 岭桄嚅� � 礤祗 铖蝠钼�: 务屙� �  隋蝾. 枢� 蝾朦觐 恹 玎戾蜩蝈 铖蝠钼 � 纛痨� �觐��, 珥嚅蝈, 黩� 洛耥钽疣� 箧� 犭桤觐!")
	MisHelpTalk("<t>悟镳噔��轵羼� 玎 忮扈 � 徉黻 灭铎钽疣溧.")
	MisResultCondition(HasMission, 315 )
	MisResultCondition(HasItem, 4235, 1)
	MisResultAction(GiveItem, 4237, 1 , 4)
	MisResultAction(SetRecord, 315 )
	MisResultAction(ClearMission, 315 )
	MisResultBagNeed(1)
	
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4235 )
	TriggerAction( 1, AddNextFlag, 315, 1, 1 )
	RegCurTrigger( 3151 )


-----------------------------------贝蒂的耳环
	DefineMission( 375, "彦瘘汔 铃朦滂", 316 )

	MisBeginTalk( "<t>卿疣怦蜮箝蝈! 铃脘� 祉� 怦� 疣耨赅玎豚. 蒡� 溴轳蜮栩咫� 邋 镱耠邃��� 磬溴驿�... 橡噔溧 � 礤 珥帼, 赅� 牝�-蝾 磬耱铍� 耠噌, 赅� 恹, 祛驽� 钺妁囹� 漕耱噔栩� � 徨珙镟耥铖蜩 磬耱铍� 忄骓簋 潆� 礤� 忮? <t>熙, 眢 礤忄骓�. � 膻犷� 耠篦噱 恹 漕腈睇 镱徼螯 疱觐痄 旋� � 筢栝耱忮 100 <y项��痦 戾溻邃彘>, 黩� 猁 漕赅玎螯 磬耜铍� 恹 耔朦睇. 翌朦觐 蝾沅� � � 筲屦屙眍耱 耢钽� 铗溧螯 忄� 忮 铃脘�.<n><t>蒡� 牮箫睇� 骅忸蝽 � 铖眍忭铎 钺栩帼� � 蝾麝� (3101, 666).")
	MisBeginCondition(NoRecord, 316)
	MisBeginCondition(HasMission, 315)
	MisBeginCondition(NoMission, 316)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginAction(AddMission, 316)
	MisBeginAction(AddTrigger, 3161, TE_KILL, 504, 100)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>项徼� 疱觐痄 篑蜞眍怆屙睇� 旋屐")
	MisNeed(MIS_NEED_KILL, 504, 100, 1, 100)

	MisResultTalk("<t>天�.. 湾 铈桎嚯�, 黩� 恹 忮痦弪羼� 礤 蝾朦觐 骅恹�, 眍 妁� � � 躅痤� 疱珞朦蜞蝾�!. 骂�, 溴疰栩�, � 忮 耱囵篪觇 铃脘�. 吾屦邈嚅蝈 桴 蜞� 驽, 赅� 疋铪 骅珥�. � 礤 镳铢� 忄�, 羼腓 恹 桴 镱蝈��弪�!<n><t>By the way, there's a girl by the name of Mona over at the Bar, she seems to have a similar flower brooch. If you have the time, please drop by and speak to her.")
	MisHelpTalk("<t>侦.. 筢栝耱忸 100 <y项��痦 戾溻邃彘> 赅驽蝰� 耠桫觐� 脲汴桁 玎溧龛屐 潆� 忄�. 捏爨�, 祉� 耱铊� 镥疱耢铗疱螯 耠铈眍耱� 玎溧龛�.")
	MisResultCondition(HasMission, 316 )
	MisResultCondition(HasFlag, 316, 100)
	MisResultAction(SetRecord, 316 )
	MisResultAction(ClearMission, 316 )
        MisResultAction(GiveItem, 4235, 1, 4 )	
	MisResultBagNeed(1)
 		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 504 )
	TriggerAction( 1, AddNextFlag, 316, 1, 100 )
	RegCurTrigger( 3161 )


-------------------------------------------------家乡
	DefineMission( 376, "蓄漤铋 泐痤�", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>羊囵篪赅 铃脘� 疣耨赅玎豚 祉�, 麇疱� 黩� 恹 镳铠腓. 项耠� 耱铍桴 脲� 磬觐礤�-蝾 镱�忤腭� 躔噌疱�, 觐蝾瘥� 泐蝾� 镱祛鼽 彘! 骂�, 忸琰扈蝈 邈�, � 甯 镱耠邃��� 磬溴驿�. � 镳铠� 忄�, 桉镱腠栩� 驽豚龛� 耱囵篪觇 铃脘�!<n><t>枢驽蝰� � 填睇, 铘桷栲眚觇 桤 锗脘彖, 羼螯 镱躅驵� 忮鲟. 篷腓 恹 疋钺钿睇, 蝾,  镱驵塍�, 忄� 耱铊� 甯 磬忮耱栩�.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 10)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 1)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 10 )
	MisResultBagNeed(1)

-------------------------------------------------家乡
	DefineMission( 377, "蓄漤铋 泐痤�", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>羊囵篪赅 铃脘� 疣耨赅玎豚 祉�, 麇疱� 黩� 恹 镳铠腓. 项耠� 耱铍桴 脲� 磬觐礤�-蝾 镱�忤腭� 躔噌疱�, 觐蝾瘥� 泐蝾� 镱祛鼽 彘! 骂�, 忸琰扈蝈 邈�, � 甯 镱耠邃��� 磬溴驿�. � 镳铠� 忄�, 桉镱腠栩� 驽豚龛� 耱囵篪觇 铃脘�!<n><t>枢驽蝰� � 填睇, 铘桷栲眚觇 桤 锗脘彖, 羼螯 镱躅驵� 忮鲟. 篷腓 恹 疋钺钿睇, 蝾,  镱驵塍�, 忄� 耱铊� 甯 磬忮耱栩�.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 20)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 8)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 20 )
	MisResultBagNeed(1)

-------------------------------------------------家乡
	DefineMission( 560, "蓄漤铋 泐痤�", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>羊囵篪赅 铃脘� 疣耨赅玎豚 祉�, 麇疱� 黩� 恹 镳铠腓. 项耠� 耱铍桴 脲� 磬觐礤�-蝾 镱�忤腭� 躔噌疱�, 觐蝾瘥� 泐蝾� 镱祛鼽 彘! 骂�, 忸琰扈蝈 邈�, � 甯 镱耠邃��� 磬溴驿�. � 镳铠� 忄�, 桉镱腠栩� 驽豚龛� 耱囵篪觇 铃脘�!<n><t>枢驽蝰� � 填睇, 铘桷栲眚觇 桤 锗脘彖, 羼螯 镱躅驵� 忮鲟. 篷腓 恹 疋钺钿睇, 蝾,  镱驵塍�, 忄� 耱铊� 甯 磬忮耱栩�.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 30)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 9)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 30 )
	MisResultBagNeed(1)

-------------------------------------------------家乡
	DefineMission( 561, "蓄漤铋 泐痤�", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>羊囵篪赅 铃脘� 疣耨赅玎豚 祉�, 麇疱� 黩� 恹 镳铠腓. 项耠� 耱铍桴 脲� 磬觐礤�-蝾 镱�忤腭� 躔噌疱�, 觐蝾瘥� 泐蝾� 镱祛鼽 彘! 骂�, 忸琰扈蝈 邈�, � 甯 镱耠邃��� 磬溴驿�. � 镳铠� 忄�, 桉镱腠栩� 驽豚龛� 耱囵篪觇 铃脘�!<n><t>枢驽蝰� � 填睇, 铘桷栲眚觇 桤 锗脘彖, 羼螯 镱躅驵� 忮鲟. 篷腓 恹 疋钺钿睇, 蝾,  镱驵塍�, 忄� 耱铊� 甯 磬忮耱栩�.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 40)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 2)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 40 )
	MisResultBagNeed(1)

-------------------------------------------------家乡
	DefineMission( 562, "蓄漤铋 泐痤�", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>羊囵篪赅 铃脘� 疣耨赅玎豚 祉�, 麇疱� 黩� 恹 镳铠腓. 项耠� 耱铍桴 脲� 磬觐礤�-蝾 镱�忤腭� 躔噌疱�, 觐蝾瘥� 泐蝾� 镱祛鼽 彘! 骂�, 忸琰扈蝈 邈�, � 甯 镱耠邃��� 磬溴驿�. � 镳铠� 忄�, 桉镱腠栩� 驽豚龛� 耱囵篪觇 铃脘�!<n><t>枢驽蝰� � 填睇, 铘桷栲眚觇 桤 锗脘彖, 羼螯 镱躅驵� 忮鲟. 篷腓 恹 疋钺钿睇, 蝾,  镱驵塍�, 忄� 耱铊� 甯 磬忮耱栩�.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 50)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 12)
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 50 )
	MisResultBagNeed(1)



-----------------------------------古老的胸针
	DefineMission( 378, "酿邂��� 狃铠�", 317 )

	MisBeginTalk( "<t> 酿邂��� 狃铠�? 泥, � 戾�� 桁邋蝰� 镱漕犴 鲡弪铟睇� 铕磬戾眚! 帖 赅� 蝾 � 漯筱铎 泱��腓 镱 镫�骟, 蜞� 蝾 甯 � 磬�.<n><t>昨�? 蔓 躅蜩蝈 玎狃囹� 甯? 丸觐沅�! 添� 铟屙� 眇噔栩�� � 狃铠�! 聋腓 漯筱桢, 觐蝾瘥� 镳邃豚汔腓 祉� 5000 珙腩螓�, � 怦� 驽 � 礤 镳钿嚯� 甯. 昨�-黩�? 蔓 镳邃豚汔弪� 10000 珙腩蜞? 湾�, � 耔焘铍 膻徕� 戾驿� 祉铋 � 祛桁 漯筱铎, � 礤玎忤耔祛 铗 蝾泐, 耜铍� 恹 祉� 镳邃腩骅蝈, � 礤 耱囗� 甯 忄� 镳钿噔囹�. 50000? 侦� 溧轵�-赅 镱潴爨螯... 疹痤, � 镳钿囔 忄� 甯, 眍 礤 戾睃, 麇� 玎 100000 珙腩螓�. 杨汶囫睇?")
	MisBeginCondition(NoRecord, 317)
	MisBeginCondition(HasRecord, 316)
	MisBeginCondition(HasItem, 4235, 1)
	MisBeginCondition(NoMission, 317)
	MisBeginAction(AddMission, 317)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "青镫囹栩� 100 000 珙腩螓� 玎 狃铠� <b昔桷栲眚赍 填礤> � 蝾麝� (990, 1263)")
	
	MisResultTalk("<t>锗�, 100 000 珙腩螓� 玎 狃铠�, 磬忮痦� 怦�-蜞觇 耠桫觐� 龛珀�� 鲥磬, 眍 疣� 箧 � 耦汶囫桦囫�, 蝾 蜞� 蝾祗 � 猁螯. 锣� 耱铊� 铗忮蝰蜮屙礤� 铗眍耔螯�� � 忮� � 礤 蝈��螯 桴!")
	MisHelpTalk("<t>� 忄� 礤漕耱囹铟眍 溴礤�? 西屙� 镫铛�, 忮潼 � 耦汶囫桦囫� 镳钿囹� 忄� 甯.")
	MisResultCondition(HasMoney, 100000 )
	MisResultCondition(HasMission, 317 )
	MisResultAction(TakeMoney, 100000 )
	MisResultAction(GiveItem, 4236, 1, 4 )
	MisResultAction(SetRecord, 317 )
	MisResultAction(ClearMission, 317 )
	MisResultAction(AddExp,180000,180000)
	MisResultAction(AddMoney,15000,15000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem,3848,30,4)
	MisResultBagNeed(2)
	

-----------------------------------命运之轮
	DefineMission( 379, "暑脲耦 耋潼猁", 318 )

	MisBeginTalk( "<t>如-玎 蝾泐, 黩� 铗 铖蝠钼 蜞� 溧脲觐, 蜩磬 鲟痂豚 蝮� 漕耱囹铟眍 漕脬铄 怵屐�. 枢� 恹 耜噻嚯�? 央篚� 镳桠咫� 忄� 颃溧? 翌沅� 聍栩嚅蝈, 黩� 忄� 铟屙� 镱忮珉� 漕狃囹� 觐 祉� 骅恹�.<n><t>添铈羼蜮� 铒囫睇� 耋耱� 镱�怆�弪�� 礤镱溧敫牦, 眍 镨疣螓 燕牦瘥 13 襦禧� 沭铉睇�. 雾� 鬣耱� 疣琨沭帼� 疋罡 觐疣犭尻痼龛�, 溧猁 镳桠脲鼽 忭桁囗桢 镳铒臌忄桴 ��漕� 耋漕�. 枢� 蝾朦觐 蝈 稃蜞�� 桁 镱祛鼽, 铐� 蝮� 驽 篑蝠噼忄 玎襦潴 磬 桴 觐疣犭��. 添� 赅驽蝰�, � 恹 觐沅�-蝾 镱镟溧腓顸 磬 桴 箅钼牦. 袜� 蝠囗耧铕蝽 觐疣犭� 镱镟� � 玎襦潴 礤耜铍� 漤彘 磬玎�! 项耜铍� 恹 玟羼�, 镱麇祗 猁 忄� 礤 镱祛鼽 忸耨蜞眍忤螯 磬 <r项耱噔觇>? 帖 漕腈睇� 钺疣珙� 忸珥嚆疣滂� 忄�!")
	MisBeginCondition(NoRecord, 318)
	MisBeginCondition(HasMission, 22)
	MisBeginCondition(NoMission, 318)
	MisBeginAction(SetRecord, 22)
	MisBeginAction(ClearMission, 22)
	MisBeginAction(AddMission, 318)
	MisBeginAction(AddTrigger, 3181, TE_GETITEM, 4238, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "橡桠彗栩� <r项耱噔觇> 钺疣蝽� 磬 铖蝠钼.")
	MisNeed(MIS_NEED_ITEM, 4238, 1, 1, 1)

	MisResultTalk("<t>湾忮痤�蝽�! 蔓 忮痦箅� 镳栾囫�! 疹螯 铐� � 礤 � 镱腠铎 钺戾, 眍 钽� 狍溴� 漕耱囹铟眍, 黩� 猁 漕耱桡眢螯 耠邃簋� 铖蜞眍怅�. 扬囫栳�! 骂� 忄 磬沭噤�.")
	MisHelpTalk("<t>扬囫栩� 戾��! 铃� 桴 镱耱噔铌 � 蝮� � 泐腩潴 箪痼! � 忮潼 � 戾�� 妁� 皴禳�, 10 溴蝈� 觐痨栩�! � 忄� 皴痄鲥 羼螯? 湾 溧轵� 祉� 箪屦弪�!")
	MisResultCondition(HasMission, 318 )
	MisResultCondition(HasItem, 4238, 1 )
	MisResultAction(TakeItem, 4238, 1 )
	MisResultAction(SetRecord, 318 )
	MisResultAction(ClearMission, 318 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4238 )
	TriggerAction( 1, AddNextFlag, 318, 1, 1 )
	RegCurTrigger( 3181 )


----------------------------命运之轮
	DefineMission( 380, "暑脲耦 耋潼猁", 319 )
	
	MisBeginTalk( "<t>� 镱龛爨�, 恹 镳铠腓 麇疱� 祉钽桢 蝠箐眍耱�, 黩� 猁 镱祛鼽 磬� 忸耨蜞眍忤螯 磬 玎镟覃. 暑礤黜�, 禧 犷朦 礤 漕腈睇 忄� 徨耧铌铊螯, 眍 恹 驽 珥噱蝈 磬 耔蝮圉棹? 髓龛� 镨蜞龛� 猁腓 玎耱桡眢螓 镨疣蜞扈 � 蝈镥瘘 禧 礤 珥噱� 觐沅� 漕腈磬 狍溴� 镳栳� 耠邃簋� 镱耱噔赅. 项驵塍轳蜞, 耦钺蝈 磬� 蝾忄痂�, 黩� 猁 蝈 镱溷铗钼桦桉�." )
	MisBeginCondition(NoRecord, 319)
	MisBeginCondition(HasRecord, 318)
	MisBeginCondition(NoMission, 319)
	MisBeginAction(AddMission, 319)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 滂耧弪麇痤� 镱痱� � 蝾麝� (2041, 1355)")
	
	MisHelpTalk("<t>朽耨赅骅蝈 钺 桧鲨溴眚� 项蹊眄 镱耱噔铌 <b蔫耧弪麇痼 镱痱�> � 蝾麝� (2041, 1355)")
	MisResultCondition(AlwaysFailure )



-----------------------------------命运之轮
	DefineMission( 381, "暑脲耦 耋潼猁", 320 )

	MisBeginTalk( "<t>昨�? 昨� 恹 泐忸痂蝈? 秧钼� 徨� 邃�? 泥 � 塍鼬� 铗 蜞徉赅 铗赅骟顸, 麇� 徨� 邃� 铖蜞眢顸! 锑腩 蝾泐, 黩� 镫囹�� 爨腩, 蜞� 妁� � 镨疣螓 镱耱��眄� 磬镟溧! � 箧� 赅� 蝠� 漤� 龛麇泐 礤 咫! 朽玮� � 耱铊� 蜞觇� 耱疣溧龛�?<n><t>�, 漕狃 麇腩忮�, 恹 箧� 赅� 蝾 镱祛汶� 磬�, 镱麇祗 猁 忄� 礤 皲咫囹� � � 镱耠邃龛� 疣�?<n><t>卿羼� 礤镱溧敫牦 羼螯 瘥犴 觐��觇, 眍 桴 铛疣�� 疋桊屣 耋耱忄... 湾 祛汶� 猁 恹 漕猁螯 潆� 戾�� 礤祉钽� 瘥猁?")
	MisBeginCondition(NoRecord, 320)
	MisBeginCondition(HasMission, 319)
	MisBeginCondition(NoMission, 320)
	MisBeginAction(ClearMission, 319)
	MisBeginAction(SetRecord, 319)
	MisBeginAction(AddMission, 320)
	MisBeginAction(AddTrigger, 3201, TE_GETITEM, 1478, 20)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>橡桧羼栩� 20 <r燕扈> � 蝾麝� (2041, 1355)")
	MisNeed(MIS_NEED_ITEM, 1478, 20, 1, 20)

	MisResultTalk("<t>熙, 耧囫栳� 玎 镱龛爨龛�! � 珥嚯, 黩� 磬 忄� 祛骓� 镱腩骅螯��! � 戾�� 礤� 龛麇泐, 黩� � 祛� 猁 溧螯 忄� 忡囔屙, 疣玮� 黩� 礤觐蝾瘥� 眍忸耱�, 觐蝾瘥� 祛泱� 忄� 玎桧蝈疱耦忄螯.")
	MisHelpTalk("<t>昨�? 蔓 礤 箪邋蝈 腩忤螯 瘥狍?")
	MisResultCondition(HasMission, 320)
	MisResultCondition(HasItem, 1478, 20 )
        MisResultAction(TakeItem, 1478, 20 )
	MisResultAction(SetRecord, 320 )
	MisResultAction(ClearMission, 320 )
  	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1478 )
	TriggerAction( 1, AddNextFlag, 320, 1, 20 )
	RegCurTrigger( 3201 )



-----------------------------------命运之轮
	DefineMission( 382, "暑脲耦 耋潼猁", 321 )
	MisBeginCondition(NoMission, 321)
	MisBeginCondition(HasRecord, 320)
	MisBeginCondition(NoMission, 321)
	MisBeginAction(AddMission, 321)	

	MisBeginTalk("<t>央嚯� 腓 恹 � 镱漕犴铎? 填骓� 疋囵栩� 耧弼栲朦眍� 珏朦�, � 桉镱朦珙忄龛屐 爨耠� 桤 疣珉梓睇�  祛瘃觇� 耋耱�! 翌�, 牝� 恹稂弪 邈� - 耢铈弪 疣玢钼囵桠囹� 磬 疣珥 �琨赅� � 溧驽 镱龛爨螯 祛眈蝠钼.<n><t>悟镳噔��轵羼� � 蝾麝� (3153,674) � 镱泐忸痂蝈 钺 铎 珏朦� � <p物屦囹铕铎 汔忄龛 脏痄咫腩�>.")
	
	MisNeed(MIS_NEED_DESP, "<t>悟镳噔��轵羼� � <b物屦囹铕� 汔忄龛 - 脏痄咫塍> � 蝾麝� (3153, 674)")
	
	MisResultCondition(AlwaysFailure )


-----------------------------------命运之轮
	DefineMission( 383, "暑脲耦 耋潼猁", 321, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>族痱! 秧钼� 铐 礤窀� 狃邃! 篷腓 猁 蝾朦觐 铐 礤 耧囫 戾�� 蝾沅�, � � 镟朦鲥� 礤 镱忮腓� 猁, 黩钺� 镱祛鼽 忄�.<n><t>袜聍蛤 珏朦�... 泥, � 珥帼, 赅� 镳桡铗钼栩� 邈�, 眍 漕猁螯 桧沭邃桢眚� 铟屙� 礤镳铖蝾. 篷腓 恹 镳桧羼弪� 祉� 桴, � 疋囵� 忄� � 珏朦�!")
	MisResultCondition(NoRecord, 321)
	MisResultCondition(HasMission, 321)
	MisResultAction(ClearMission, 321)
	MisResultAction(SetRecord, 321)

-----------------------------------命运之轮
	DefineMission( 384, "暑脲耦 耋潼猁", 323 )

	MisBeginTalk( "<t>碾� 珏朦� 镱蝠遽簋蝰� 镨膻腓, � 耦耱噔 觐蝾瘥� 怩钿栩 镱腩襦蜞� 瘥狳� 觐耱�, 蝾腭蜞� 瘥狳� 觐耱� � 沩桦�� 瘥狳� 觐耱�. 昨� � 忄� 腓鲱�? 湾箧咫� 恹 潴爨弪�, 黩� � 耦徼疣� 忄� 铗疣忤螯? 锗-踵! 湾 忸腠箝蝈顸, � 桧沭邃桢眚� 礤 �漕忤螓! 丸麇泐 潴痦钽� � 忄扈 礤 耠篦栩��.")
	MisBeginCondition(NoRecord, 323)
	MisBeginCondition(HasRecord, 321)
	MisBeginCondition(NoMission, 323)
	MisBeginAction(AddMission, 323)
	MisBeginAction(AddTrigger, 3231, TE_GETITEM, 4938, 30)
	MisBeginAction(AddTrigger, 3232, TE_GETITEM, 4957, 30)
	MisBeginAction(AddTrigger, 3233, TE_GETITEM, 4976, 30)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>橡桧羼栩� 眢骓 桧沭桎桢眚� 物屦囹铕� 汔忄龛 - 脏痄咫塍 � 蝾麝� (3153, 674)")
	MisNeed(MIS_NEED_ITEM, 4938, 30, 1, 30)
	MisNeed(MIS_NEED_ITEM, 4957, 30, 31, 30)
	MisNeed(MIS_NEED_ITEM, 4976, 30, 61, 30)

	MisResultTalk("<t>悟腓黜�! 蒡� 怦� 桧沭邃桢眚�, 觐蝾瘥� 祉� 镱蝠遽簋蝰�. 项驵塍轳蜞, 镱漕驿栩� 礤祉钽�, 镱赅 � 疋囵� 忄� 珏朦�. (义镥瘘 恹 耧铖钺睇 篑臌螯, � 麇� 泐忸��� 痼襦腙�).")
	MisHelpTalk("<t>滓�?! 蔓 礤 珥噱蝈, 桤 赅觇� 祛眈蝠钼 祛骓� 漕猁螯 � 桧沭邃桢眚�? 昨� �, � 镱漶赅骟, 牝� 忄� 镱蝠遽箦蝰�: 暑膻鬣� 瘥徉-觐耱�, 橡铈铕腓忄� 瘥徉-觐耱� � 殃咫弪 瘥猁 麒耱桦桕�. 类? 蔓 躅蜩蝈, 黩� 猁 � 耜噻嚯 忄� 桴 觐铕滂磬螓? 袜篦栩羼� 恹, 磬觐礤�, 镱朦珙忄螯�� 忮�-襦轵铎 徉琨 溧眄 铋 桡瘥!")
	MisResultCondition(HasMission, 323 )
	MisResultCondition(HasItem, 4938, 30)
	MisResultCondition(HasItem, 4957, 30)
	MisResultCondition(HasItem, 4976, 30)
	MisResultAction(TakeItem, 4938, 30 )
	MisResultAction(TakeItem, 4957, 30 )
	MisResultAction(TakeItem, 4976, 30 )
	MisResultAction(SetRecord, 323 )
	MisResultAction(ClearMission, 323 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4938 )
	TriggerAction( 1, AddNextFlag, 323, 1, 30 )
	RegCurTrigger( 3231 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4957 )
	TriggerAction( 1, AddNextFlag, 323, 31, 30 )
	RegCurTrigger( 3232 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4976 )
	TriggerAction( 1, AddNextFlag, 323, 61, 30 )
	RegCurTrigger( 3233 )



-----------------------------------命运之轮
	DefineMission( 385, "暑脲耦 耋潼猁", 324 )

	MisBeginTalk( "<t>... 钽� 礤 漕腈眍 猁腩 耠篦栩�.. 镱躅驽, � 疣耧豚蜞... � 礤 漕腈屙 猁� 牮囫螯 忄 镨膻腓. 项祛汨蝈 祉�, 祛膻 忄�! 泥轵� 祉� 箪屦弪�.... <t>蔟, 镱耱铋蝈! 蔓 镳噔溧 疱腓 铖蜞忤螯 戾�� 箪桊囹�? 橡铠� 忄�, 礤 篚钿栩�! 扬囫栩� 戾��! 蒡� 纛痨箅� 箨疣溴磬 祉铪 � <b滂耧弪麇疣 镱痱� 馏龛> � 蝾麝� (2042, 635). 义镥瘘 恹 珥噱蝈 怦�. 项驵塍轳蜞, 耧囫栩� 戾��!")
	MisBeginCondition(NoRecord, 324)
	MisBeginCondition(HasRecord, 323)
	MisBeginCondition(NoMission, 324)
	MisBeginAction(AddMission, 324)
	MisBeginAction(AddTrigger, 3241, TE_GETITEM, 4254, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>项塍麒蝈 <r镳铗桠��滂�> � <b物屦囹铕� 镱痱� 馏龛> � 蝾麝� (2042, 635).")
	MisNeed(MIS_NEED_ITEM, 4254, 1, 1, 1)

	MisResultTalk("<t>栗! 体滂鲨磬 蜮铕栩 黧溴襦! 湾 耢铗痂蝈 磬 戾�� 蜞�, � 蝾朦觐 黩� 桤徨驵� 耢屦蜩. 枢觇� 溴睃汨? � 玎��� 皴轺囫, 筲桎桁�� 镱珂�. 橡铢嚅蝈!")
	MisHelpTalk("<t>...祛� 耔臌 磬 桉躅溴... 镱驵塍轳蜞, 镱祛汨蝈 祉�!")
	MisResultCondition(HasMission, 324 )
	MisResultCondition(HasMission, 325 )
	MisResultCondition(HasItem, 4254, 1)
	MisResultAction(TakeItem, 4254, 1)
	MisResultAction(SetRecord, 324 )
	MisResultAction(ClearMission, 324 )

		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4254 )
	TriggerAction( 1, AddNextFlag, 324, 1, 1 )
	RegCurTrigger( 3241 )

-----------------------------------命运之轮
	DefineMission( 386, "暑脲耦 耋潼猁", 325 )

	MisBeginTalk( "<t>� 麇� 恹? 湾箧咫� 脏痄桦� 珥嚯, 赅� 皲咫囹� 珏朦� � 箨疣� 蝾, 黩� 皲咫囗� 耧弼栲朦眍 潆� 忄�?<n><t>蒡铗 戾痃噔弼 玎耠箧桦 耢屦螯! 雾 镱耱��眄� 镳桴钿桦 � 蜞殛铎 牮嚯 纛痨箅�, 礤 铖蜞忤� 龛 觐镥殛�! � 蝾祗 驽 铐 怦� 妁� 漕腈屙 祉� 100 000 珙腩螓�! 橡彐溴, 麇� 铐 箪疱�, 恹忮溧轵� � 礤泐 镟痤朦 铗 �麇殛� � 徉黻�!<n><t>肃漤�, 豚漤�! 袜 襦祛�-蝾 溴脲 � 漕忸朦眍 ��汴铖屦溴麇�. 骂�, 溴疰栩� 镳铗桠��滂�. 象耜嚅 铐 恹稂弪 邈� 赅� 祛骓� 猁耱疱�, � 磬镱祉栩� 屐�, 黩� � 怦� 妁� 驿�, 觐沅� 铐 忮痦弪 祉� 溴睃汨! 泥, � 羼腓 忄� 漕痤汔 忄 骅珥�, 怙疱潼 耱铊� 镥疱耱囹� 漕忮��螯 屐�. � 磬 聍弪 珏朦�� � 镱漕驿�, 镱赅 恹 忮痦弪羼�.")
	MisBeginCondition(NoRecord, 325)
	MisBeginCondition(HasMission, 324)
	MisBeginCondition(NoMission, 325)
	MisBeginAction(AddMission, 325)
	MisBeginAction(GiveItem, 4254, 1, 4 )	
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>吾戾��轵� 镳铗桠��滂� 磬 100 000 珙腩螓� � 脏痄桦豚, � 蝾麝� (3153, 674).")

	MisResultTalk("<t>昨�? 蒡铗 镟疱睃 镳栩忸痂腭�, 黩� 礤 镱龛爨弪 � 赅觇� 溴睃汔� 桎弪 疱鼽? 栗 铐... � 耠邃簋� 疣� � 铗疣怆� 邈� � 磬腩骟 磬 礤泐 礤祛蝮!<n><t>肃漤�, 玎狍溴� � 砀�. 蔓 躅蝈腓 箸磬螯 � 珏朦�...")
	MisHelpTalk("<t>腕 驽, 桎栩�, 镱赅 � 礤 镥疱潴爨�!")
	MisResultCondition(HasMission, 325)
	MisResultCondition(HasRecord, 324)
	MisResultAction(SetRecord, 325 )
	MisResultAction(ClearMission, 325 )	

-----------------------------------命运之轮
	DefineMission( 387, "暑脲耦 耋潼猁", 326 )

	MisBeginTalk( "<t>� 磬� � 纛痨箅� � 铌遴礤. 项磬鬣塍 祉� 礤 铖钺� 忮痂腩顸 � 蝾, 黩� 铐� 狍溴� 疣犷蜞螯. 唁咫噔 1 镱瘀棹 珏朦�, � 桉稃蜞� 邈� 磬 玟屮龛� 钼鲟�. 枢玎腩顸, 黩� 镱耠� 镳桁屙屙�� 铋 忄牿桧� 铐� 磬鬣腓 镱龛爨螯 磬� �琨�. 武磬 桤 钼弼 漕汔溧豚顸, 黩� � 耦徼疣� 筢栩� 桴 眍鼽� � 襻彐嚯�. � 礤聍囫螯�, 纛痨箅� 蜞� 驽 猁豚 桉镱瘅屙� 妣. 遇咫咫� 腓 爨豚� 鬣耱�. 骂� 镱麇祗 脏痄桦 铗疣忤腭� 珏朦屐 - 纛痨箅�, 镱 觐蝾痤� 铐 疋囵桦 邈�, 猁豚 礤镱腠铋.<n><t>篷腓 恹 耢铈弪� 铗赅螯 镳铒噔� 鬣耱� 纛痨箅�, 忸珈铈眍, � 耢钽� 皲咫囹� � 珏朦�.")
	MisBeginCondition(NoRecord, 326)
	MisBeginCondition(HasRecord, 325)
	MisBeginCondition(NoMission, 326)
	MisBeginAction(AddMission, 326)
	MisBeginAction(AddTrigger, 3261, TE_GETITEM, 4255, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>袜殇栩� 篁屦�眄 麴嚆戾眚 纛痨箅�.")
	MisNeed(MIS_NEED_ITEM, 4255, 10, 1, 10)

	MisResultTalk("<t>泥-溧! 蒡� 桁屙眍 蝾, 黩� 祉� 眢骓�! 义镥瘘 镱漕驿栩� 礤祉钽�...<n><t>腕 忸� � 怦�! 义镥瘘 恹 祛驽蝈 镱龛爨螯 膻猁� 耋耱�.")
	MisHelpTalk("<t>蔓 怦� 妁� 龛麇泐 礤 磬�? 袜忮痦� � 耠桫觐� 耠铈眍 潆� 忄�.<n><t>骂珈铈眍, 铖蜞怿簋�� 鬣耱� 纛痨箅� 恹 磬殇弪� � 橡桤疣黜铋 耔疱睇.")
	MisResultCondition(HasMission, 326 )
	MisResultCondition(HasItem, 4255, 10)
	MisResultAction(TakeItem, 4255, 10 )
	MisResultAction(SetRecord, 326 )
	MisResultAction(SetRecord, 330 )
	MisResultAction(ClearMission, 326 )
	MisResultAction(AddExp,320000,320000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem,3846,1,4)
	MisResultBagNeed(1)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4255 )
	TriggerAction( 1, AddNextFlag, 326, 1, 10)
	RegCurTrigger( 3261 )

----------------------------语言问题
	DefineMission( 559, "哏钼铋 徉瘘屦", 387 )
	
	MisBeginTalk( "<t>昨� 泐忸��� � 膻滂? 丸 耠钼� 礤 镱龛爨�...<n><t>捏爨�, 眢骓� 镱镳铖栩� 镱祛 � <b拎狍� 铃脘�> (2277, 2769)." )
	MisBeginCondition(NoRecord, 387)
	MisBeginCondition(NoMission, 387)
	MisBeginCondition(NoRecord, 327)
	MisBeginCondition(NoRecord, 330)
	MisBeginAction( AddMission, 387 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned" )
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � <b拎狍铋 铃脘�> (2277, 2769)")
	
	MisHelpTalk( "袜轵� <b拎狍� 铃脘�> � 镱泐忸痂螯 � 礤�." )
	MisResultCondition( AlwaysFailure )

----------------------------语言问题
	DefineMission( 388, "哏钼铋 徉瘘屦", 327)
	
	MisBeginTalk( "<t>栗, 礤珥嚓铎弼, 恹 猁忄腓 � 洛耥钽疣溴 疣礤�?<n><t>昨�?? 蔓 礤 镱龛爨弪� �琨赅, 磬 觐蝾痤� 泐忸��� 骅怏� � 洛耥钽疣溴? 朽玮� 恹 礤 恹镨腓 珏朦�?<n><t>枢� 驵朦, 黩� 祛腩漕� 镱觐脲龛� 耦怦屐 礤 镳桉塍忄弪�� � 耱囵�... 昨� �, 镱驵塍� � 妁� 疣� 钺��耥� 忄�, 蝾朦觐 � 铗 疣� 耠篪嚅蝈 戾�� 忭桁囹咫�! 妈滂蝈 蝮 耔祜囹梓眢� 铘桷栲眚牦 � 徉疱? (1310,530) 鸥 珙怏� 拎徉疣, 铐� 耢铈弪 镱祛鼽 忄�. 泥忭-溧忭�, 觐沅� � 猁豚 祛腩漕� � 牮囫桠铋, 赅觐�-蝾 礤珥嚓铎弼 镱溧痂� 祉� 珏朦� 悟牮钼屙��. 天�.. 赅� 恹 潴爨弪�, � 忮潼 镱-镳彐礤祗 牮囫桠��, 溧?" )
	MisBeginCondition(NoRecord, 327)
	MisBeginCondition(HasMission, 387)
	MisBeginCondition(NoMission, 327)
	MisBeginAction(SetRecord, 387)
	MisBeginAction(ClearMission, 387)
	MisBeginAction(AddMission, 327)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "<t>扬痤耔蝈 <b昔桷栲眚牦 拎徉痼> � 珏朦� � 蝾麝� (1310,530)")
	
	MisHelpTalk("<t>项泐忸痂蝈 � <b昔桷栲眚觐� 拎徉痤�>")
	MisResultCondition(AlwaysFailure )



-----------------------------------语言问题
	DefineMission( 389, "哏钼铋 徉瘘屦", 328 )

	MisBeginTalk( "<t>蔓 躅蜩蝈 箸磬螯 � 清朦� 悟牮钼屙��? 昨� �, 恹 磬� 镳噔桦钽� 麇腩忮赅! � 祛泱 镳钿囹� 忄� 纛痨箅� 潆� 桤泐蝾怆屙�� 钽� 珏朦�! 雾� 镱漉钿栩 噌耦膻蝽� 怦屐! 鼠镨蝈, 礤 镱驵脲弪�!<n><t>填驽蝈 镳桀狃羼蜩 镱 疣珞祉铋 鲥礤, � 蝾祗 驽 � 祉钽铘箜牿桀磬朦眍� 珏朦� 镥疱忸溧! 蔓 礤 蝾朦觐 磬黜弪� 镱龛爨螯 骅忸蝽, 眍 蜞� 驽 耢铈弪� 镥疱忸滂螯 觐滂痤忄眄 耦钺龛�! 碾� 忸镫铢屙�� 怦邈� 钽� 忄� 镱蝠遽箦蝰� 怦邈� 腓 钿磬 蜞犭弪赅! 昨�? 蔓 祉� 礤 漕忮��弪� 祉�? 朽玮� � 礤 恹汶�骟 耠桫觐� 礤忤眄铋, 黩� 猁 脬囹� 忄�?<n><t>昨�? 蔓 稃蜞弪羼� 溧螯 祉� 100 000 珙腩螓�, 黩钺� � 玎祛膑嚯� � 铗溧豚 忄� 纛痨箅�? 疹痤, 溴睃汨 怙屦邃!")
	MisBeginCondition(NoRecord, 328)
	MisBeginCondition(HasMission, 327)
	MisBeginCondition(NoMission, 328)
	MisBeginAction(SetRecord, 327)
	MisBeginAction(ClearMission, 327)
	MisBeginAction(AddMission, 328)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "埋邈� 100 000 珙腩螓�")
	
	MisResultTalk("<t>斟�, � 恹 溴轳蜮栩咫� 疣玑桊噱蝈顸 � 鲥眄铖蜩 忮�!")
	MisHelpTalk("<t>� 忄� 礤� 100 000 珙腩螓�? 锗�! 枢觐� 驽 恹 蝾沅� 镨疣�?")
	MisResultCondition(HasMoney, 100000 )
	MisResultCondition(HasMission, 328 )
	MisResultAction(TakeMoney, 100000 )
	MisResultAction(SetRecord, 328 )
	MisResultAction(ClearMission, 328 )
        MisResultAction(GiveItem, 4256, 1, 4 )
	MisResultBagNeed(1)


-----------------------------------语言问题
	DefineMission( 391, "哏钼铋 徉瘘屦", 330 )

	MisBeginTalk( "<t>熙, 篱 慢睃, 螓 腓 �? 殃铍� 脲� 镳铠腩... 泥 � 礤 � 忄� 钺疣�, � � 疱鲥矧铎 悟牮钼屙�� 疣玢钼囵桠帼. 腻腩 � 蝾�, 黩� � 铗 疱鲥矧 500 脲� 磬玎� 玎镥鬣蜞腓 潴 麇腩忮赅, 觐蝾痤泐 玮嚯� 篱 慢睃 昼�徉�, � 蝈镥瘘 铐 忭篁痂 铋 纛痨箅� � � 祛泱 邈� 耠囹�!<n><t>骂 怦�觐� 耠篦噱 � 祛泱 镳邃铖蜞忤螯 忄� 耜桎牦. 锣� 怦邈� 腓 眢骓� 玎镫囹栩� 祉� <r50000 珙腩螓�>. 潆� 蝾泐, 黩� 猁 � 玎忮瘌桦� 忄 珏朦�.")
	MisBeginCondition(NoRecord, 30)
	MisBeginCondition(NoRecord, 330)
	MisBeginCondition(HasMission, 30)
	MisBeginAction(AddMission, 330)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>杨徨痂蝈 怦� 桧沭邃桢眚� � 玎镫囹栩� 50 000 珙腩螓�")

	MisResultTalk("<t>� 麇祗 蜞赅� 耧屮赅? � 镱赅 妁� 礤 玎觐眵桦�! 添� 眢骓� 妁� 50000. 项麇祗?.. 蒽�.. 疹痤-疹痤! � 镳铖蝾 镱蜩豚! 俞屦栩� 疋罡 铕箧桢! 骂�, 玎徼疣轵� 邈�.<n><t>(蔓 礤 玎潴禧忄�顸 恹镨腓 珏朦�...)")
	MisHelpTalk("<t>湾� 溴礤� - 礤� 珏朦�. 埋邈� 腓 5000 珙腩螓�!")
	MisResultCondition(HasMission, 330 )
	MisResultCondition(HasItem, 4938, 30)
	MisResultCondition(HasItem, 4957, 30)
	MisResultCondition(HasItem, 4976, 30)
	MisResultCondition(HasItem, 4974, 10)
	MisResultCondition(HasMoney, 50000 )
	MisResultAction(SetRecord, 30)
	MisResultAction(ClearMission, 30)
	MisResultAction(TakeItem, 4938, 30)
	MisResultAction(TakeItem, 4957, 30)
	MisResultAction(TakeItem, 4976, 30)
	MisResultAction(TakeItem, 4974, 10)
	MisResultAction(TakeMoney, 50000 )
	MisResultAction(SetRecord, 330 )
	MisResultAction(ClearMission, 330 )
      	MisResultAction(AddExp,550000,550000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem,3908,1,4)	
	MisResultAction(GiveItem,4708,1,4)
	MisResultBagNeed(3)

----------------------------远来是客
	DefineMission( 392, "锐觌栩咫 泐耱� 桤溧脲赅", 331)
	
	MisBeginTalk( "<t>橡桠弪! 枢� 镱骅忄弪�? 蔓 蝮� 怙屦恹�? 朽耨豚狳蝈顸! 帖 铗眍耔祚� 觐 怦屐 矬蝽桕囔 桤 漯筱桴 耱疣�, 赅� � 漯箸���.<n><t>橡铋滂蝈顸 镱 磬祗 耠噔眍祗 泐痤潴 <b洛耥钽疣潴> � 镱珥嚓铎羼� 镱犭桄� � 戾耱睇扈 骅蝈��扈 � 耦徨痂蝈 <y7 橡铒篑觐� 镱皴蜩蝈��>!" )
	MisBeginCondition(NoRecord, 331)
	MisBeginCondition(HasRecord, 315)
	MisBeginCondition(NoMission, 331)
	MisBeginAction(AddTrigger, 3311, TE_GETITEM, 4242, 7 )
	MisBeginAction(AddMission, 331)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "<t>午磬觐祢羼� � 戾耱眍耱 � 镱钺轵羼� � 骅朦鲟扈 钽� 泐痤溧.")
	MisNeed(MIS_NEED_ITEM, 4242, 7, 10, 7)	

	MisResultTalk("<t>令驽 祛�! � 锣� 羼螯 桧纛痨圉�� � 祛胳 覃礤? 蔓 蜞� 磬 戾�� 镱耢铗疱腓, 黩� � 镱潴爨豚 � <b羊疣� - 祖铙> 锣� 觐 祉� 镱耠嚯.")
	MisHelpTalk("<t>蔓 镱忤溧腓顸 耦 怦屐� 骅蝈��扈 泐痤溧? 霹� 礤�? 翌沅� 桎栩�! 添钽桢 膻滂 躅��� 筲桎弪� � 忄扈.")
	MisResultCondition(HasMission, 331)
	MisResultCondition(HasItem, 4242, 7)
	MisResultAction(TakeItem, 4242, 7 )
	MisResultAction(SetRecord, 331 )
	MisResultAction(ClearMission, 331 )
	MisResultAction(AddExp,100000,100000)
	MisResultAction(AddMoney,30000,30000)
	MisResultAction(AddExpAndType,2,50000,50000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4242 )
	TriggerAction( 1, AddNextFlag, 331, 10, 7)
	RegCurTrigger( 3311 )

----------------------------远来是客
	DefineMission( 393, "锐觌栩咫 泐耱� 桤溧脲赅", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>�, 恹 漕忸朦眍 蜞觇 躅痤� 麇腩忮�! 念狃噔顸 颃溧, 恹 漕赅玎腓, 黩� 耧铖钺睇 磬 祉钽铄! 篷腓 � 忄� 铕箧桢� 黩�-龛狍潼 耠篦栩��, 钺疣轵羼� 觐 祉�. � 耢钽� 忄� 镱祛鼽.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 1)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 1)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

----------------------------远来是客
	DefineMission( 394, "锐觌栩咫 泐耱� 桤溧脲赅", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>正�! 锣 钿彐溧 镳铖蝾 箧囫磬! 腕-赅 溧轵� 祉� 磬 礤� 忡汶�眢螯. 侦�.. 篷腓 怃痼� 铗镳噔栩羼� 磬 铒囫眍� 玎溧龛�, 钺�玎蝈朦眍 镥疱� 桁 玎汶�龛蝈 觐 祉�, 忸珈铈眍, � 耢钽� 聒栩� 黩�-龛狍潼 躅痤� 潆� 忄�. 逾屦屙�, 黩� 忄� 镱眇噔栩��!")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 2)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 2)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
----------------------------远来是客
	DefineMission( 395, "锐觌栩咫 泐耱� 桤溧脲赅", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>橡桠弪耱怏� 忄�, 矬蝽桕! 体�� 珙怏� 梭磬. � 玎龛爨� 蝠噔囔�. 篷腓 忄� 镱蝠遽箦蝰� 祛� 镱祛 - 礤 耱羼��轵羼�, 钺疣轵羼� 觐 祉�. 亦� 赅� 恹 镳桫腓 � 磬� 桤溧脲赅, � 镳邃铖蜞怆� 忄� 耜桎牦 � 20%")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 3)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 3)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
---------------------------远来是客
	DefineMission( 396, "锐觌栩咫 泐耱� 桤溧脲赅", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>卿疣怦蜮箝, 漯箧棂�! 锣� 耠篦嚅眍 礤 眢骓� 嚓箅 镫噔龛觇 桦� 矧梓 沩哥溧? � 溧� 忄� 20-镳铞屙蝽簋 耜桎牦! 枢� 蝾朦觐 忄� 黩�-龛狍潼 镱磬漕徼蝰�, 溧轵� 祉� 珥囹�.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 4)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 4)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
----------------------------远来是客
	DefineMission( 397, "锐觌栩咫 泐耱� 桤溧脲赅", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>篷腓 蔓 疱蝈 镱觇眢螯 磬� 泐痤�, 蝾 � 镱祛泱 锣�. 湾 耱羼��轵羼� � 镱朦珞轵羼� 祛彘 篑塍泐�.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 5)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 5)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	

----------------------------远来是客
	DefineMission( 398, "锐觌栩咫 泐耱� 桤溧脲赅", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>腕 忸� 禧 � 怦蝠弪桦桉�. 鼠溧 躅蜩蝈 铗镳噔栩�?")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 6)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 6)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

----------------------------远来是客
	DefineMission( 399, "锐觌栩咫 泐耱� 桤溧脲赅", 331, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk("<t>IC? IP? IQ? 相痤朦? 皖戾� 赅痱�? 髓黜铖蝽 觐�? 腕 驽, 耜噫栩� 祉� 疋铋 镟痤朦! 昨� 恹, � 礤 钽疣犭屙桢, 眍 羼腓 忄� 眢骓� 玎狃囹� 疋铊 忮, 蝾 恹 钺�玎睇 耥圜嚯� 镳邃铖蜞忤螯 祉� 疋铋 皴牮弪睇� 觐�.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 7)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 7)
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

-----------------------------------画龙点睛
	DefineMission( 510, "项耱噔栩� 蝾麝� 翳龛", 339 )

	MisBeginTalk( "<t>体�� 桧蝈疱耋弪 钿磬 铟屙� 牮囫桠�� 漯邂��� 狃铠�! 篷腓 恹 耦汶囫睇 漕耱囹� 邋 潆� 戾��, � 铗牮铪 忄� 皴牮弪.")
	MisBeginCondition(NoRecord, 339)
	MisBeginCondition(HasRecord, 338)
	MisBeginCondition(NoMission, 339)
        MisBeginCondition(HasItem, 4236,1)
	MisBeginAction(AddMission, 339)
	MisBeginAction(AddTrigger, 3391, TE_GETITEM, 4236, 1 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>悟溧轵� <b酿邂睨� 狃铠�> <b拎黻桊� 锣� 填> � 蝾麝� (3290, 2512)")
	MisNeed(MIS_NEED_ITEM, 4236, 1, 1, 1)

	MisResultTalk("<t>项耜铍� 恹 泐蝾恹 铗溧螯 祉� 蜞牦� 鲥眄簋 忮, � 疣耨赅骟 忄� 疋铋 皴牮弪.")
	MisHelpTalk("<t>昨�? � 忄� 礤� 甯? 皖 � 驽 忤溴� 甯 礤耜铍� 扈眢� 磬玎�! 侦... 磬忮痦� 祉� 镱赅玎腩顸.")
	MisResultCondition(HasMission, 339 )
	MisResultCondition(HasItem, 4236, 1 )
	MisResultAction(TakeItem, 4236, 1 )	
	MisResultAction(SetRecord, 339 )
	MisResultAction(ClearMission, 339 )
    


-----------------------------------画龙点睛
	DefineMission( 511, "项耱噔栩� 蝾麝� 翳龛", 340 )

	MisBeginTalk( "<t>亦�, � 蝈镥瘘 � 皴牮弪�... 锗-踵! � 钺爨眢� 忄�. 添� 眢骓� 猁豚 蝾朦觐 狃铠�. 雾� 祛驽� 耠箧栩� 汶噻铎 潆� 祛彘 骅忸镨耔 '酿嚓铐�'! 填驽� 猁螯, 恹 镱祛驽蝈? 添� 眢骓� 牮囫觇 疣珥 鲡弪钼, 驽豚蝈朦眍 5 赅驿铋, 潆� 蝾泐, 黩� 猁 � 耢钽 玎觐眵栩� 疋铋 痂耋眍�. 篷腓 � 忄� 镱塍麒蝰� 漕耱囹� 桴 潆� 戾��, � 躅痤 忸珥嚆疣骟 忄�!")
	MisBeginCondition(NoRecord, 340)
	MisBeginCondition(HasRecord, 339)
	MisBeginCondition(NoMission, 340)
	MisBeginAction(AddMission, 340)
	MisBeginAction(AddTrigger, 3401, TE_GETITEM, 1787, 5)
	MisBeginAction(AddTrigger, 3402, TE_GETITEM, 1788, 5)
	MisBeginAction(AddTrigger, 3403, TE_GETITEM, 1789, 5)
	MisBeginAction(AddTrigger, 3404, TE_GETITEM, 1790, 5)
	MisBeginAction(AddTrigger, 3405, TE_GETITEM, 1791, 5)
	MisBeginAction(AddTrigger, 3406, TE_GETITEM, 1792, 5)
	MisBeginAction(AddTrigger, 3407, TE_GETITEM, 1793, 5)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>杨狃囹�: <r署囫磬� 牮囫赅> 5 箨, <r勿囗驽忄� 牮囫赅> 5 箨, <r棋腧�� 牮囫赅> 5 箨, <r清脲磬� 牮囫赅> 5 箨, <r妙塍徉� 牮囫赅> 5 箨, <r谚��� 牮囫赅> 5 箨, <r象痫箴磬� 牮囫赅> 5")
	MisNeed(MIS_NEED_ITEM, 1787, 5, 1, 5)
	MisNeed(MIS_NEED_ITEM, 1788, 5, 6, 5)
	MisNeed(MIS_NEED_ITEM, 1789, 5, 11, 5)
	MisNeed(MIS_NEED_ITEM, 1790, 5, 16, 5)
	MisNeed(MIS_NEED_ITEM, 1791, 5, 21, 5)
	MisNeed(MIS_NEED_ITEM, 1792, 5, 26, 5)
	MisNeed(MIS_NEED_ITEM, 1793, 5, 31, 5)

	MisResultTalk("<t>腕 黩� 驽 恹 蜞� 漕脬�? 填� 觇耱� 耦怦屐 玎蜮屦溴豚! 湾脲汴� 蝈镥瘘 狍溴� 痂耦忄螯 祉�.")
	MisHelpTalk("<t>洛痦栩羼� � 漕耱囗� 祉� 牮囫觇! 项耧屮栩�, 桧圜� 祛� 觇耱� 耦怦屐 铗忮痄邋� � 桉镱痱栩��!")
	MisResultCondition(HasMission, 340)
	MisResultCondition(HasItem, 1787, 5)
	MisResultCondition(HasItem, 1787, 5)
	MisResultCondition(HasItem, 1788, 5)
	MisResultCondition(HasItem, 1789, 5)
	MisResultCondition(HasItem, 1790, 5)
	MisResultCondition(HasItem, 1791, 5)
	MisResultCondition(HasItem, 1792, 5)
	MisResultCondition(HasItem, 1793, 5)
	MisResultAction(TakeItem, 1787, 5 )	
	MisResultAction(TakeItem, 1788, 5 )	
	MisResultAction(TakeItem, 1789, 5 )	
	MisResultAction(TakeItem, 1790, 5 )	
	MisResultAction(TakeItem, 1791, 5 )	
	MisResultAction(TakeItem, 1792, 5 )	
	MisResultAction(TakeItem, 1793, 5 )	
	MisResultAction(SetRecord, 340 )
	MisResultAction(ClearMission, 340 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1787 )
	TriggerAction( 1, AddNextFlag, 340, 1, 5 )
	RegCurTrigger( 3401 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1788 )
	TriggerAction( 1, AddNextFlag, 340, 6, 5 )
	RegCurTrigger( 3402 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1789 )
	TriggerAction( 1, AddNextFlag, 340, 11, 5 )
	RegCurTrigger( 3403 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1790 )
	TriggerAction( 1, AddNextFlag, 340, 16, 5 )
	RegCurTrigger( 3404 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1791 )
	TriggerAction( 1, AddNextFlag, 340, 21, 5 )
	RegCurTrigger( 3405 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1792 )
	TriggerAction( 1, AddNextFlag, 340, 26, 5 )
	RegCurTrigger( 3406 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1793 )
	TriggerAction( 1, AddNextFlag, 340, 31, 5 )
	RegCurTrigger( 3407 )

-----------------------------------画龙点睛
	DefineMission( 512, "项耱噔栩� 蝾麝� 翳龛", 341 )

	MisBeginTalk( "<t>蔓 珥噱蝈, 黩� 襦爨� 忄骓�� 鬣耱� 漯嚓铐泐 汶噻� - � 邈� 汶噻眍� �犭铌�? 如-玎 蝾泐, 黩� 祛� 觇耱� 桉镱痱桦囫�, � 礤 祛泱 磬痂耦忄螯 邈� 汶噻 疱嚯桉蜩黜! 添� 礤钺躅滂祛 耢�泖栩� 觇耱�. 碾� 钽� 漕狍潼蝈 祉� 麒耱铋 忸潲. � 潴爨�, 黩� 30蜩 狍螓腩� 狍溴� 漕耱囹铟眍. 扬屮栩�, 桧圜� � 礤 耢钽� 玎忮瘌栩� 疋铋 痂耋眍�!")
	MisBeginCondition(NoRecord, 341)
	MisBeginCondition(HasRecord, 340)
	MisBeginCondition(NoMission, 341)
	MisBeginAction(AddMission, 341)
	MisBeginAction(AddTrigger, 3411, TE_GETITEM, 1649, 30)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>念狍潼蝈 30 狍螓腩� <r阻耱铋 忸潲> 潆� <b拎黻桊� 锣� 填> � 蝾麝� (3290, 2512)")
	MisNeed(MIS_NEED_ITEM, 1649, 30, 1, 30)

	MisResultTalk("<t>腕 镱麇祗 恹 蜞觐� 戾潆栩咫? 疏耱� 玎 � 怵屐� 耦怦屐 桉镱痱桦囫�! 添� 眢驽� 妁� 钿桧 綦嚓铐!")
	MisHelpTalk("<t>蔓 龛麇泐 礤 镳桧羼腓? 洛痦栩羼� � 漕狍潼蝈 麒耱铋 忸潲, 镳彐溴 麇� � 桤爨骟 忄 腓鲱 麇痦铋 牮囫觐�!")
	MisResultCondition(HasMission, 341)
	MisResultCondition(HasItem, 1649, 30)
	MisResultAction(TakeItem, 1649, 30 )
	MisResultAction(SetRecord, 341 )
	MisResultAction(ClearMission, 341 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1649 )
	TriggerAction( 1, AddNextFlag, 341, 1, 30 )
	RegCurTrigger( 3411 )
	

-----------------------------------画龙点睛
	DefineMission( 513, "项耱噔栩� 蝾麝� 翳龛", 342 )

	MisBeginTalk( "<t>疏耱铟牦, 觐蝾痼� 蔓 桉镱痱桦�, 溴豚腓 祉� 镱 玎赅珞! 碾� 蝾泐, 黩� 猁 甯 皲咫囹� 磬漕, 赅� 扈龛祗� <y10 髓顸桴 踱铖蝾�>. � 镱耱囵帼顸 襦爨 皲咫囹� 觇耱铟牦, 铗 锣� 驽 蝠遽箦蝰� 镳桧羼蜩 蝾朦觐 髓耔� 踱铖�. 篷腓 蔓 礤 镳桧羼蛤� 祉� 髓耔� 踱铖�, 蝾 祉� 镳桎弪�� 皲咫囹� 甯 桤 锣� 忸腩�!")
	MisBeginCondition(NoMission, 342)
	MisBeginCondition(NoRecord, 342)
	MisBeginCondition(HasRecord, 341)
	MisBeginAction(AddMission, 342)
	MisBeginAction(AddTrigger, 3421, TE_GETITEM, 165, 10)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� 铋 礤眍痨嚯铋 躞漕骓桷�, <b拎黻桊� 锣磴 填> <y10 髓顸桴 踱铖蝾�>")
	MisNeed(MIS_NEED_ITEM, 165, 10, 1, 10)

	MisResultTalk("<t>枢赅� 镳尻疣耥�� 觇耱� � 戾�� 镱塍麒豚顸!<n><t>如忤龛蝈! � 礤 躅黧 锣� 钺爨睇忄螯 犷朦, 蔓 铟屙� 躅痤� 麇腩忮� � 蔓 镱祛汶� 祉�, 礤 耢铗�� 磬 蝾, 黩� � 蜞� 嚆疱耨桠眍 � 锣扈 疣玢钼囵桠嚯�. 填� 觇耱铟赅 猁豚 桉镱瘅屙� 妁� 漕 锣泐 镱�怆屙�� � 洛耥钽疣溴. 青 蝾, 黩� 蔓 祉� 镱祛汶�, � 漯� 锣� 铗犭嚆钿囵�. 骂� 溴疰栩�, 磬溴� � 锣� 镳桡钿栩��.")
	MisHelpTalk("<t>如忤龛蝈, 眍 蔓 - 团幽雷腿�! 橡桧羼栩� 祉� 腓耔� 踱铖� 镱赅 � 礤 恹疴嚯� � 锣� 忸腩覃 � 泐腩恹 � 礤 皲咫嚯� 桤 龛� 觇耱铟牦!")
	MisResultCondition(HasMission, 342)
	MisResultCondition(HasItem, 165, 10)
	MisResultAction(TakeItem, 165, 10 )
	MisResultAction(SetRecord, 342 )
	MisResultAction(ClearMission, 342 )
	MisResultAction(AddExp,700000,700000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(GiveItem,3885,1,4)	
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 165 )
	TriggerAction( 1, AddNextFlag, 342, 1, 10 )
	RegCurTrigger( 3421 )


-----------------------------------失踪
	DefineMission( 514, "项蝈��眄", 343 )

	MisBeginTalk( "<t>项祛汨蝈 祉� � 祛彘 镳钺脲祛�! � 妈骟, 黩� 蔓 漕狃 麇腩忮�!<n><t>添钽� 脲� 磬玎� 项溻钿睇� 蝮眄咫� 桉镱朦珙忄腓 � 鲥��� 镥疱戾龛� 戾驿� 铖蝠钼囔� � 潆� 漕猁麒 祛瘃觇� 忸漕痤耠彘, 眍 桤-玎 耔朦睇� 铕祛� � 桤-玎 镱耱��眄 珏祀弪��皴龛� 蝮眄咫� 镳桫鸽 � 礤泐漤铄 耦耱��龛�. 塔滂 镥疱耱嚯� 桁 镱朦珙忄螯�� � 邈� 玎皴腓腓 祛眈蝠� � 珙灬�.<n><t>填� 覃� <b锗扈> 铗镳噔桦�� � 镱溻钿睇� 蝮眄咫� � 沭箫镱� 漯箸彘, � 镱桉赅� 耦牮钼棂, � 蝈� 镱� � 邈� 蜞� � 礤 忤溴�. 扬篑蜩蝈顸 � 蝮眄咫� � 箸磬轵� 黩� 耠篦桦铖� � 祛桁 覃眍�.<n><t>迈钿 � 蝮眄咫� 磬躅滂蝰� 礤 镱溧敫牦 铗 颃溧 � 蝾麝�(3224,2444)!")
	MisBeginCondition(NoRecord, 343)
	MisBeginCondition(NoMission, 343)
	MisBeginCondition(HasRecord, 331)
   	MisBeginAction(AddMission, 343)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "扬篑蜩蝈顸 � 蝮眄咫� � 箸磬轵�, 黩� 镳铊珙� � 覃眍� 燕磴 蔫.")

	MisResultTalk("<t>蔓 筲屦屙�, 黩� 牮铎� 珙灬�, � 蝮眄咫� 龛觐泐 礤 猁腩? � 犷驽, 祛� 覃眍� 耱嚯 珙灬�. 枢觐� 箧囫.")
	MisHelpTalk("<t>蔓 祛� 邃桧耱忮眄�� 磬溴驿� 磬轵� 镳铒噔泐 覃磬, 镱驵塍轳蜞, 耧篑蜩蝈顸 � 蝮眄咫� � 磬殇栩� 邈�.")
	MisResultCondition(HasMission, 343 )
	MisResultCondition(HasFlag, 343, 2 )
	MisResultAction(SetRecord, 343 )
	MisResultAction(ClearMission, 343 )

-----------------------------------失踪
	DefineMission( 515, "项蝈��眄", 343 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>项耱铋蝈! 项漕驿栩� 镱驵塍轳蜞! 湾 犷轵羼�, � 礤 玎疣珥 � 礤 镳邃耱噔��� 潆� 锣� 筱痤珞. � 礤 篁疣蜩� 麇腩忮麇耜桴 黧怦蜮.<n><t>� 洛耥钽疣溴 骅飧� 铟屙� 犭桤觇� 祉� 麇腩忮�, 蔓 邈� 磬殇蛤� 镱 觐铕滂磬蜞� (3287,2501). 襄疱溧轵� 铎� 麇腩忮牦, 黩� � 邈� 铟屙� 耔朦眍 膻犭�, 眍 祛� 驽耱铌�� 耋潼徉 玎觐忄豚 戾�� 磬忮觇 蝮�, � 铎 镳铌��蝾� 蝮眄咫�.")
	MisResultCondition(NoRecord, 343)
	MisResultCondition(HasMission, 343)
	MisResultCondition(NoFlag, 343, 2)
	MisResultAction(SetFlag, 343, 2)
	
-----------------------------------失踪
	DefineMission( 516, "项蝈��", 345 )

	MisBeginTalk( "<t>袜耜铍� 祉� 桤忮耱眍, � <r梭睇> (3279,2501), 羼螯 <y亦腓耢囗>, 耧铖钺睇� 玎觌囹� � 皴徨 潴 戾痱恹�. 篷腓 螓 礤 玎���, 狍潼 漕狃, 镱徨皴潴� � 礤�.<n><t>项耜铍� � 忤眍忭� � 桴 疣琊�, 祉� 耠桫觐� 耱眍 镳铖栩� 邋 钺 铎! 皖 蝾朦觐 铐� 祛驽� 镱祛鼽, � 筲屦屙�!")
	MisBeginCondition(NoRecord, 345)
	MisBeginCondition(NoRecord, 347)
	MisBeginCondition(HasRecord, 343)
	MisBeginCondition(NoMission, 345)
  	MisBeginAction(AddMission, 345)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "袜殇栩� <b梭眢> (3279,2501), 黩钺� 玎狃囹� <r亦腓耢囗>.")

	MisHelpTalk("<t>梭磬 耦汶囫桦囫� 镱祛鼽? � 磬溴�, 妁� 礤 镱玟眍!")
	MisResultCondition(AlwaysFailure )

-----------------------------------灵符
	DefineMission( 517, "亦腓耢囗", 346 )

	MisBeginTalk( "<t>昨�? 锗扈 磬躅滂蝰� � 镱溻钿眍� 蝮眄咫�? 令驽 祛�! 殷� 钺睇� 亦腓耢囗 屐� 礤 镱祛驽�! 昨� 猁 耧囫蜩 邈� 潴 眢驽� 耧弼栲朦睇� 亦腓耢囗. 碾� 蝾泐, 黩� 猁 邈� 桤泐蝾忤螯 磬漕 耦麇蜞螯  <y亦腓耢囗� 镳桠桎屙��>.<n><t>蔓 耢铈弪� 镱塍麒螯 � 蜞腓耢囗� � 珙灬� � 镱溻钿眍� 蝮眄咫�, 眍 狍潼蝈 铖蝾痤骓�, 铐� 铟屙� 铒囫睇 � 祛泱� 锣� 玎疣玷螯. 橡桧羼栩� <y20 亦腓耢囗钼 镳桠桎屙��> � � 皲咫帼 潆� 锣� 亦腓耢囗, 觐蝾瘥� 镱祛驽� 徨漤铎� 爨朦麒牦 锗扈!")
	MisBeginCondition(NoRecord, 346)
	MisBeginCondition(HasMission, 345)
	MisBeginCondition(NoMission, 346)
  	MisBeginAction(AddMission, 346)
	MisBeginAction(AddTrigger, 3461, TE_GETITEM, 4262, 20)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� <r20 亦腓耢囗钼 镳桠桎屙��> <b梭礤> � 蝾麝� (3279,2501).")
	MisNeed(MIS_NEED_ITEM, 4262, 20, 1, 20)

	MisResultTalk("<t>扬屮栩�! 悟礤耔蝈 铗 亦腓耢囗 锗扈 � 镱镳铖栩� 邈�, 黩� 猁 铐 钿咫 亦腓耢囗 磬 泐腩怏.<n><t>袜溴� 亦腓耢囗 镱祛驽� 锗扈.")
	MisHelpTalk("<t>湾 蝈��轵� 琊� 怵屐�, 爨朦麒牦 眢骓� 镱祛鼽.")
	MisResultCondition(HasMission, 346 )
	MisResultCondition(HasItem, 4262, 20)
	MisResultAction(TakeItem, 4262,20 )
	MisResultAction(GiveItem, 4244, 1, 4)
	MisResultAction(SetRecord, 346 )
	MisResultAction(ClearMission, 346 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4262 )
	TriggerAction( 1, AddNextFlag, 346, 1, 20 )
	RegCurTrigger( 3461 )

-----------------------------------灵符
	DefineMission( 518, "亦腓耢囗", 347 )

	MisBeginTalk( "<t>昨� 耠篦桦铖�? 黍� 蔓? � 镱祉�, 黩� 猁� 漕脬铄 怵屐� 徨� 耦珥囗��. 蒡� 祉� 镱祛� 蜞腓耢囗 <b梭睇>?<n><t>� 怦邈溧 珥嚯, 戾�� 镱祉�� � 膻���. 皖 � 礤 耢钽� 忮痦篁� � 祛桁 漯箸��� � 犭桤觇�, 祛� 潴 耧囫屙�, 眍 蝈腩... 体�� 筢� 镥疴 塍� 疋弪�! 项犭嚆钿囵栩� <b梭眢> 玎 蜞腓耢囗 � 玎犷蝮, 眍 耜噫栩�, 黩钺� 铐� 玎猁腓 戾��.")
	MisBeginCondition(NoRecord, 347)
	MisBeginCondition(NoMission, 347)
	MisBeginCondition(HasRecord, 346)
	MisBeginCondition(HasItem, 4244, 1)
	MisBeginAction(TakeItem, 4244, 1)
  	MisBeginAction(AddMission, 347)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "悟镳噔��轵羼� � <b梭礤> � 耦钺蝈 彘, 黩� 斟扈 犷朦 龛觐沅� 礤 忮痦蛤�� � 礤� � 狍溴� 骅螯 � 镱溻钿眍� 蝮眄咫�.")
	
	MisResultCondition(AlwaysFailure )

-----------------------------------灵符
	DefineMission( 519, "亦腓耢囗", 347 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>翌 黩� 蔓 疣耨赅玎腓 祉� 镳噔溧? 翌沅� � 皴泐漤� 驽 铗镳噔��� � 礤祗 � 镱溻钿睇� 蝮眄咫�. � 礤 祛泱 骅螯 徨� 礤泐!")
	MisResultCondition(NoRecord, 347)
	MisResultCondition(HasMission, 347)
	MisResultAction(SetRecord, 347)
	MisResultAction(ClearMission, 347)
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(GiveItem, 3883, 5, 4)
	MisResultAction(GiveItem, 3884, 5, 4)
	MisResultBagNeed(2)

-----------------------------------爱的奇迹
	DefineMission( 520, "左漕 膻徕�", 349 )

	MisBeginTalk( "<t>填腩漕� 麇腩忮�, � 忤骟 犷朦 � 锣� 汶噻圊.<n><t>锣� 汶筢铌� 玎蝠铐箅� 桉蝾痂� 膻徕� 戾驿� 梭眍� � 锗扈? 塔犷恻 耧铖钺磬 蜮铕栩� 黧溴襦.<n><t>篷腓 恹 怦� 妁� 躅蜩蝈 镱祛鼽 桁, 恹 漕腈睇 磬轵� <b阻耱 玮屙�� 镥耦�>, <b暑痤眢 觐痤脲恹> � <b署桉蜞朦眍� 镥痤>. � 镱祛� 桴 3 忸滕遽睇� 忮�, 禧 祛汶� 猁 镱祛鼽 桁.")
	MisBeginCondition(NoRecord, 349)
	MisBeginCondition(NoRecord, 356)
	MisBeginCondition(HasRecord, 347)
	MisBeginCondition(NoMission, 349)
	MisBeginCondition(NoMission, 356)
	MisBeginAction(AddMission, 349)
	MisBeginAction(AddTrigger, 3491, TE_GETITEM, 4245, 1 )
	MisBeginAction(AddTrigger, 3492, TE_GETITEM, 4246, 1 )
	MisBeginAction(AddTrigger, 3493, TE_GETITEM, 4247, 1 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� 3 耧弼栲朦睇� 镳邃戾蜞 <p灶牦耋-项牦耋>.")
	MisNeed(MIS_NEED_ITEM, 4245, 1, 5, 1)
	MisNeed(MIS_NEED_ITEM, 4246, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4247, 1, 15, 1)

	MisResultTalk("<t>蔓 镳桧羼腓 � 忸滕遽睇� 镳邃戾螓, 铐� 蜮铕�� 黧溴襦 镱 铗溴朦眍耱�, 眍 觐沅� 桴 钺滂龛螯, 蝾 镳铊聃钿栩 襦祛� 犷朦� 黧漕. 项 脲沐礓� � 镳邃戾螓 镳邂疣��蝰� � 琉铠� � 羼腓 溧螯 � 琉铠� 锗扈, 蝾 铐 铒�螯 耱囗弪 麇腩忮觐� � 耢铈弪 骅螯 眍痨嚯铋 骅珥.")
	MisHelpTalk("<t>蔓 妁� 礤 镳桧羼腓 � 忸滕遽睇� 忮. 铃� 龛� 禧 礤 耢铈屐 镱祛鼽 怆敫眄.")
	MisResultCondition(HasMission, 349 )
	MisResultCondition(HasItem, 4245, 1 )	
	MisResultCondition(HasItem, 4246, 1 )	
	MisResultCondition(HasItem, 4247, 1 )
	MisResultAction(TakeItem, 4245, 1 )	
	MisResultAction(TakeItem, 4246, 1 )	
	MisResultAction(TakeItem, 4247, 1 )
        MisResultAction(GiveItem, 4248, 1 ,4)	
	MisResultAction(SetRecord, 349 )
	MisResultAction(ClearMission, 349 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4245)	
	TriggerAction( 1, AddNextFlag, 349, 5, 1 )
	RegCurTrigger( 3491 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4246)	
	TriggerAction( 1, AddNextFlag, 349, 10, 1 )
	RegCurTrigger( 3492 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4247)	
	TriggerAction( 1, AddNextFlag, 349, 15, 1 )
	RegCurTrigger( 3493 )

-----------------------------------女神的眼泪
	DefineMission( 521, "央彗� 令汨龛", 350 )

	MisBeginTalk( "<t> 项耠� 耱铍桴 脲� 脲沐礓� 妁� 礤 玎猁蜞? 央彗� 令汨龛 - 怦邈� 腓 桤��� 戾蜞纛疣, 磬 襦祛� 溴脲 � -  <r阻耱 玮屙�� 镥耦�>, 觐蝾瘥� 祛骓� 磬轵� 蝾朦觐 � 象耱铋 镥疱. 翌朦觐 麒耱 潴� � 漕狃 皴痄鲥� 耢钽篁 漕猁螯 邈�. 念 耔� 镱� 龛 钿桧 忸� 桦� 徉礓栩 礤 恹� 桤 镥瘥 骅恹�.  务戾腓�� 腓 螓 漕猁螯 镥耦�?")
	MisBeginCondition(NoRecord, 350)
	MisBeginCondition(NoMission, 350)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 350)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "青殇栩� � 汶筢桧� <p象耱铋 镥瘥> � 镳桧羼栩� 铗蝮溧 <r阻耱 氢屙�� 襄耦�>.")

	MisResultTalk("<t>翌朦觐 麒耱彘� 潴 耢铈弪 漕猁螯 铗 麒耱彘� 镥耦�. 翌, 黩� 螓 耧疣忤腭�, 泐忸痂� 襦祛 玎 皴��.")
	MisHelpTalk("<t>青镱祉�, 阻耱 玮屙�� 镥耦� 螓 磬殇屮� � 象耱铋 镥疱.")
	MisResultCondition(HasMission, 350)
	MisResultCondition(HasItem, 4245, 1)
 	MisResultAction(SetRecord, 350 )
	MisResultAction(ClearMission, 350 )



-----------------------------------人鱼的心脏
	DefineMission( 522, "彦痄鲥 痼襦腙�", 351 )

	MisBeginTalk( "t> 彦痄鲥 体痨囗� 磬 襦祛� 溴脲 铗眍耔蝰� � <r暑痤脲怦觐� 觐痤礤>. � 礤 潴爨�, 黩� 蜞觐� 祛腩漕� 麇腩忮�, 赅� 恹, 祛驽蝈 � 镱��螯. <n><t>彦痄鲥 <n> � 体痨囗� � 嚯爨�, 觐蝾瘥� 予朦�� 镱溧痂� 疋铄� 驽礤. 亦� 桦� 桧圜�, 镱珂� 铐� 猁腓 桧牮篑蜩痤忄眄 � 觐痤眢 觐痤脲恹, 觐蝾疣� 镱镟豚 � 痼觇 怵嚆� 忪羼蝈 � 觐痤脲怦觇� 溻铕鲱�. 埋� 蝠铒�, 忮潴� � 礤祗, � 蝈� 镱� 镱蝈��腓顸, 躅滂腓 耠篚�, 黩� � 镳铌��蜩� 体痨囗� �. 埋� 徉礓栩� � 忸瘥, 觐蝾瘥� 桉赅腓 邈� � 痼桧� 觐痤脲怦觐泐 溻铕鲟 猁腓 玎踱圜屙� � 筢栩�. 蔓 镱耢邋蝈 桉赅螯 邈� 襦祛耱��蝈朦眍?")
	MisBeginCondition(NoRecord, 351)
	MisBeginCondition(NoMission, 351)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 351)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "蠕栩� � <p畜桧� 拟铕鲟> � 忮痦栩� <r暑痤眢 暑痤脲恹>")

	MisResultTalk("t> 蔓 溴轳蜮栩咫� 磬� 觐痤眢 觐痤脲恹? 骂珈铈眍, 恹 狍溴蝈 镥疴 麇腩忮觐�, 觐蝾瘥� 皲咫嚯 脲沐礓� 疱嚯铖螯�.")
	MisHelpTalk("t> � 筲屦屙�, 黩� 觐痤眢 觐痤脲恹 祛骓� 磬轵� � 疣玮嚯桧圊, 眍 龛牝� 礤 珥噱� 邋 蝾黜铄 戾耱铐圊铈溴龛�.")
	MisResultCondition(HasMission, 351)
	MisResultCondition(HasItem, 4246, 1)
 	MisResultAction(SetRecord, 351 )
	MisResultAction(ClearMission, 351 )

	-----------------------------------飞鸟的羽毛
	DefineMission( 523, "襄痤 矧桷�", 352 )

	MisBeginTalk( "<t>襄痤 朽轳觐� 向桷� - 磬沭噤�, 恹溧忄屐�� 躔噌疱轼桁 桤 忸桧钼. 佩 漕耱铋睇 腓 蝈, 牝� 耧铖钺屙 漕猁螯 <r署桉蜞朦眍� 镥痤> � 惕疱 腻祛眍�. 添钽桢 镱汨犭�, 稃蜞�顸, 铖戾腓�� 腓 螓??")
	MisBeginCondition(NoRecord, 352)
	MisBeginCondition(NoMission, 352)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 352)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "悟镳噔��轵羼� � <p惕� 腻祛眍�> � 漕狍潼蝈 <r署桉蜞朦眍� 镥痤>")

	MisResultTalk("<t>饮 - 蝠弪栝 麇腩忮�, 漕猁怿栝 署桉蜞朦眍� 镥痤. � 礤 祛泱 磬玮囹� 桁屙 溻篚 漯筱桴 沐痤邂, 眍 耜铕� 螓 � 襦� 桴 箸磬屮�.")
	MisHelpTalk("<t>项祉� - 惕� 腻祛眍� 铟屙� 铒囫屙, 腓 礤祉钽桢 恹骅腓 蜞�.")
	MisResultCondition(HasMission, 352)
	MisResultCondition(HasItem, 4247, 1)
 	MisResultAction(SetRecord, 352 )
	MisResultAction(ClearMission, 352 )

-----------------------------------爱的奇迹
	DefineMission( 524, "左漕 膻徕�", 353 )

	MisBeginTalk( "t> 蔓 躅蜩蝈 耜噻囹�, 黩� 镱赅 � 狃铠� 耦 祉铋 � 祛泱 忮痦篁� � 扈�? <n><t> 扬囫栳�! 义镥瘘 � 祛泱 筲桎弪� Luna 耥钼�. 项耧屮栩� 耜噻囹� 彘, 黩� � 戾�� 羼螯躅痤� 眍忸耱� 潆� 礤�.")
	MisBeginCondition(NoRecord, 353)
	MisBeginCondition(NoMission, 353)
	MisBeginCondition(HasRecord, 349)
	MisBeginCondition(HasItem, 4248,1)
	MisBeginAction(TakeItem, 4248, 1)
  	MisBeginAction(AddMission, 353)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "襄疱溧轵� 漕狃簋 忮耱� <b拎赅脲轾桷� Luna>(3279, 2501)")

	MisHelpTalk("t>毋痤祉铄 耧囫栳�, � 镳噔溧 礤 珥帼, 赅� 铗犭嚆钿囵栩� 蝈��, 驽豚� 蝈徨 箐圜� � 狍潴�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------爱的奇迹
	DefineMission( 525, "左漕 膻徕�", 353 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("t>昨�? 蔓 恹镱腠桦� 漯邂龛� 脲沐礓�? 义镥瘘 祛� 锗扈 耢铈弪 忮痦篁� 觐 祉�? 枢� � 耢钽� 铗犭嚆钿囵栩� 蝈��? 骂琰扈 铗 蜞腓耢囗, 铐 溧耱 忄� 耦镳铗桠脲龛� 铗 �溧 躅��麒� 蝠箫钼 � 镱溻钿眍� 蝮眄咫�. 蒡� 礤祉钽�, 眍 � 塍鼬邋, 麇� � 祛泱 磬沭噤栩� 蝈��.")
	MisResultCondition(NoRecord, 353)
	MisResultCondition(HasMission, 353)
	MisResultAction(SetRecord, 353)
	MisResultAction(ClearMission, 353)	
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem,3348,10,4)
	MisResultAction(GiveItem,3349,10,4)
	MisResultAction(GiveItem,3350,10,4)
	MisResultBagNeed(3)

-----------------------------------尸毒
	DefineMission( 526, "茵箫睇� ��", 355 )

	MisBeginTalk( "<t>湾镳��蝽铖蜩 � �漕�? 泥忭屙� � 礤 溴豚� 钺屦邈钼 铗 礤泐.<n><t>橡桧羼� 祉� 20 <r亦腓耢囗钼 镳桠桎屙��> � 5000 珙腩螓�, 蝾沅� � 皲咫帼 潆� 蝈�� 囔箅弪. 亦腓耢囗� 镳桠桎屙�� 螓 磬殇屮� � 项溻钿眍� 殷眄咫�.")
	MisBeginCondition(NoRecord, 355)
	MisBeginCondition(NoMission, 355)
	MisBeginCondition(HasRecord, 353)
 	MisBeginAction(AddMission, 355)
	MisBeginAction(AddTrigger, 3551, TE_GETITEM, 4262, 20)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "袜殇栩� <r20 亦腓耢囗钼 镳桠桎屙��> 潆� 耦玟囗�� �漕耱铋觐泐 <r漓箅弪�>")
	MisNeed(MIS_NEED_ITEM, 4262, 20, 1, 20)

	MisResultTalk("<t>饮 磬觐礤� 耦狃嚯 怦� 亦腓耢囗� � 镳桧羼 � 耦犷� 5000 珙腩蜞, 镱铎� � 镳桉蝮镟�. 吁钿�, � 玎鬣痼� 囔箅弪. 篷腓 狍溴 镱溷��潲忄螯 - 皲咫赅 铗戾��弪��! <n><t>骂�, 溴疰� 疋铋 囔箅弪. 项磬漕徼蝰� 妁� 钿桧 - 镳桧羼� 妁� 20 亦腓耢囗钼 镳桠桎屙�� � 5000 珙腩螓�.")
	MisHelpTalk("<t>埋邈�-蝾 眢骓� 20 亦腓耢囗钼 镳桠桎屙栝! 泥驽 祉� � 镱 耔豚�. 饮 耦怦屐 龛麇泐 礤 祛驽, 耠噌嚓.")
	MisResultCondition(HasMission, 355)
	MisResultCondition(HasItem, 4262, 20)
	MisResultAction(TakeItem, 4262, 20)
        MisResultAction(GiveItem, 4249, 12 ,4)	
 	MisResultAction(SetRecord, 355 )
	MisResultAction(ClearMission, 355 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4262 )
	TriggerAction( 1, AddNextFlag, 355, 1, 20 )
	RegCurTrigger( 3551 )

-----------------------------------失踪
	DefineMission( 527, "项蝈��", 345, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>昨�? 填� 覃� 礤 忮痦弪�� 漕祛�? 袜忮痦铄, 蝾朦觐 耢屦螯 箫铌铊� 邈�. 添� 猁腩 蜞� 礤腩怅� 镳铖栩� 蝈�� � 镱祛, 眍 祉� 蜞� 驵朦 邈� � 梭眢. <n><t>皖 螓 镱祛� 祉�, � 骅蝈腓 洛耥钽疣溧 玎镱祉�� 蜮铪 漕狃铗�, 羼腓 蝈徨 镱磬漕徼蝰� 镱祛, 钺疣轳�!")
	MisResultCondition(HasRecord, 347)
	MisResultCondition(NoRecord, 353)
	MisResultCondition(NoRecord, 345)
	MisResultCondition(NoRecord, 349)
	MisResultCondition(HasMission, 345)
	MisResultCondition(NoMission, 353)
	MisResultCondition(NoMission, 349)
	MisResultAction(ClearMission, 345 )
	MisResultAction(SetRecord, 345 )
	
-----------------------------------失踪
	DefineMission( 528, "项蝈��", 345 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>昨�? 砚屦腩顸 黧漕? 填� 覃� 耧囫屙?!<n><t>扬囫栳�! 畦蝈腓 洛耥钽疣溧 怦邈溧 狍潴� 疣潲 蝈徨! 意铄 漕狃铄 溴腩 玎耠箧桦� 钿钺疱龛� 戾耱睇�, � 蝈镥瘘 螓 - 磬� 镱麇蝽 泐耱�. 篷腓 蝈徨 镱磬漕徼蝰� 镱祛, 镳铖蝾 溧� 祉� 珥囹�.")
	MisResultCondition(HasRecord, 353)
	MisResultCondition(NoRecord, 345)
	MisResultCondition(HasMission, 345)
	MisResultAction(ClearMission, 345 )
	MisResultAction(SetRecord, 345 )
	MisResultAction(SetRecord, 354 )

-----------------------------------神奇果实
	DefineMission( 529, "左溴耥 麴箨�", 358 )

	MisBeginTalk( "<t>义徨 觐沅�-龛狍潼 疣礤� 怦蝠鬻嚯�� 玎汔漕黜 麴箨�?<n><t>� 溧驽 礤 耠嚯� � 蜞觐� 龛 疣珞! <b摒�> (3196, 2509), 漕腈眍 猁螯, 铒�螯 怦� 恹潴爨�! � 蜞� � 珥嚯�! 雾 钺铈噱� 怵囹�.")
	MisBeginCondition(NoRecord, 358)
	MisBeginCondition(HasRecord, 345)
	MisBeginCondition(NoMission, 358)
  	MisBeginAction(AddMission, 358)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "朽耨镳铖栩� <b摒�> (3195, 2506) � 玎汔漕黜铎 麴箨蝈.")

	MisHelpTalk("<t>泥 礤 珥帼 �! 青麇� 猁 � 怵嚯� 蝈徨?")
	MisResultCondition(AlwaysFailure )
-----------------------------------神奇果实
	DefineMission( 530, "左溴耥 麴箨�", 359 )

	MisBeginTalk( "<t>I'm really irritated by that old hag calling me a big liar. Lets drop the topic! I've seen Pirate King Roland before.<n><t>If you don't believe me, take a look at these scars on my chest. These were the result of our duels a long time ago. You say you want to take a look at the mysterious fruits? The truth is...I haven't seen anything like that for over a year. The last time, Guard Zhou gave one to me to pass sell it to a stranger named 'Lu'.<n><t>Why don't you go ask <bGuard Zhou> at (3298, 2534) about it?")
	MisBeginCondition(NoRecord, 359)
	MisBeginCondition(NoMission, 359)
	MisBeginCondition(HasMission, 358)
	MisBeginAction(SetRecord, 358 )
	MisBeginAction(ClearMission, 358 )
  	MisBeginAction(AddMission, 359)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "朽耨镳铖栩� <b羊疣骓桕� 企> (3298, 2534) � 玎汔漕黜铎 麴箨蝈")

	MisHelpTalk("<t>篷腓 蝈徨 镱磬漕徼蝰� 桧纛痨圉�� � 珙腩螓� �犭铌圊 桦� 麴箨蜞� 邃桧铕钽�, 玎躅滂 觐 祉�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------神奇果实
	DefineMission( 531, "骂滕遽睇� 麴箨�", 360 )

	MisBeginTalk( "<t> 惕耱梓羼觇� 麴箨�? � 麇� 桎弪 疱鼽, � 礤 珥帼 礤 � 赅觐� 麴箨蝈. 湾 蝠钽嚅 戾��, � 镳栳 颃溧 铗漕蹴篁�! � 磬觐礤� 蝾 恹狃嚯�� 桤 钽� 汔潢钽� <p项溻钿眍泐 蝮眄咫�> � 钺疣蝽� 礤 忮痦篑�. 填驽 蜞� 镱桉赅螯, 蝾朦觐 镳邃箫疱驿帼... 悟 蝮溧 龛 牝� 骅恹� 礤 忸玮疣弪��! � 聍囫螂桠麒�.")
	MisBeginCondition(NoRecord, 360)
	MisBeginCondition(NoMission, 360)
	MisBeginCondition(HasMission, 359)
	MisBeginAction(ClearMission, 359 )
  	MisBeginAction(AddMission, 360)
	MisBeginAction(AddTrigger, 3601, TE_GETITEM, 4263, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "锐耠邃钼囹� � <p项溻钿眍� 蝮眄咫�>")
	MisNeed(MIS_NEED_ITEM, 4263, 1, 1, 1)

	MisHelpTalk("<t>棋豚� 忄� 箐圜�...")
	MisResultCondition(AlwaysFailure )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4263 )
	TriggerAction( 1, AddNextFlag, 360, 1, 1 )
	RegCurTrigger( 3601 )

-----------------------------------恶魔的果实
	DefineMission( 532, "骂滕遽睇� 麴箨�", 361 )

	MisBeginTalk( "<t> 昨� 蜞� � 忄� � 痼赅�? 项躅驽 � � 觐沅�-蝾 忤溴�. 伍 筢屦� � 戾痃铖螯, 筢屦� 耜铕邋... � 礤 驽豚� 耱嚯觇忄螯�� � 礤� 耥钼�! <n><t>蒡� 镳铌��蜞� 忮, 筢屦� 邋 镱赅 礤 耠篦桦铖� 徨潲!")
	MisBeginCondition(NoRecord, 361)
	MisBeginCondition(HasMission, 360)
	MisBeginCondition(NoMission, 361)
	MisBeginCondition(HasItem, 4263, 1)
	MisBeginAction(ClearMission, 360 )
 	MisBeginAction(AddMission, 361)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "禹梓蝾骅蝈 麴箨� � 镱泐忸痂蝈 � 祖铙. (3298, 2534)")

	MisResultTalk("<t>� 黧怦蜮簋 皴�� 磬祉钽� 塍鼬�, 磬溴� � 忄� 礤 桉矬汔�? 篷腓 猁 犷汨�� 赅疣 镱耠嚯� 磬 忄� 蜞觇� 桉稃蜞龛� 黩� 镥疱礤� �, � 猁豚 猁 蜞 驽 疱嚓鲨�!")
	MisHelpTalk("<t> 昨� 蜞� � 忄� � 痼赅�? 项躅驽 � � 觐沅�-蝾 忤溴�. 伍 筢屦� � 戾痃铖螯, 筢屦� 耜铕邋... � 礤 驽豚� 耱嚯觇忄螯�� � 礤� 耥钼�! <n><t>蒡� 镳铌��蜞� 忮, 筢屦� 邋 镱赅 礤 耠篦桦铖� 徨潲!")
	MisResultCondition(HasMission, 361)
	MisResultCondition(NoItem, 4263, 1)
   	MisResultAction(SetRecord, 361 )
	MisResultAction(ClearMission, 361 )

-----------------------------------周吴郑的信
	DefineMission( 533, "翔顸祛 祖铙", 362 )

	MisBeginTalk( "<t>侦, 恹 耜噻嚯� � 镱溻钿眍� 蝮眄咫� 犷朦 礤蝮 桴 麴箨蝾�? <n> <T> 蒡� 蝾黜�? 腕 躅痤. 襄疱溧轵� � 镨顸祛 <b拎黻桊� 锣磴 填> 镱 觐铕滂磬蜞� (3290, 2512)")
	MisBeginCondition(NoRecord, 362)
	MisBeginCondition(NoMission, 362)
	MisBeginCondition(HasRecord, 361)
 	MisBeginAction(AddMission, 362)
 	MisBeginAction(GiveItem, 4250,1,4)
	MisBeginBagNeed(1)

	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "悟溧轵� <r蓄珙忸� 镨顸祛> 拎黻桊� 锣磴 填 (3290, 2512)")

	MisResultTalk("<t>翔顸祛 铗 祖铙? 栗 *赅朦* � 潴爨� � 赅襦邋�� 磬泐 徼珥羼�.")
	MisHelpTalk("<t>扬屮栩�  漕耱噔栩� 镨顸祛. � 耠桫觐� 忡忸腠钼囗, 礤 祛泱 龛麇泐 怦镱祉栩�.")
	MisResultCondition(HasMission, 362)
	MisResultCondition(HasFlag, 362, 10)
   	MisResultAction(SetRecord, 362 )
	MisResultAction(ClearMission, 362 )

-----------------------------------恶魔的果实
	DefineMission( 534, "冷耜栝 麴箨�", 363 )

	MisBeginTalk( "<t>蔓 忤溴腓 隋��睇� 漯嚓铐钼? 吁貂�. 皖 � 礤 忄骓� <n> <T>昨� 赅襦弪�� 麴箨蝾�, 蝾 邈� 磬琨忄 冷耜桁 麴箨蝾�. 妙忸���, 黩� 蝈 牝� 邈� 聱邃�� 镱塍鬣螯 耔臌. 妙忸��� 钿桧 桤 漯嚓铐钼 聱咫 蜞觐� 麴箨�! 捏爨� 燕磴 蔫 忄� 镱祛驽�.")
	MisBeginCondition(NoRecord, 363)
	MisBeginCondition(NoMission, 363)
	MisBeginCondition(HasRecord, 362)
  	MisBeginAction(AddMission, 363)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "朽耨镳铖栩� <p燕磴 蔫> � 冷耜桴 麴箨蜞� (3287, 2501)")

	MisHelpTalk("<t>� 怦� 耜噻嚯, 犷朦 � 龛麇泐 礤 珥帼. 湾 疋钿栩� 戾�� � 箪� � 铋 桉蝾痂彘 妁� 疣�.")
	MisResultCondition(AlwaysFailure )
	

-----------------------------------防腐剂
	DefineMission( 535, "青蝽铄 耩邃耱忸", 364 )

	MisBeginTalk( "<t>疹蜩蝈 皲咫囹� 亦腓耢囗 玎螓? 雾 祛驽� 猁螯 镱脲珏� 镳� 桤篦屙梃 项溻钿眍泐 蝮眄咫�. <n> <T> 橡桧羼栩� 祉� 庙桦铄 溴疱忸 3 , 橡铌��蜞� 觐耱� 3 , 务螯 3 .")
	MisBeginCondition(NoMission, 364)
 	MisBeginAction(AddMission, 364)
	MisBeginAction(AddTrigger, 3641, TE_GETITEM, 4259, 3)
	MisBeginAction(AddTrigger, 3642, TE_GETITEM, 4260, 3)
	MisBeginAction(AddTrigger, 3643, TE_GETITEM, 4261, 3)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� 梭礤 桧沭邃桢眚�")
	MisNeed(MIS_NEED_ITEM, 4259, 3, 1, 3)
	MisNeed(MIS_NEED_ITEM, 4260, 3, 5, 3)
	MisNeed(MIS_NEED_ITEM, 4261, 3, 10, 3)

	MisResultTalk("<t>.泥 , � 蝾 黩� 眢骓�.")
	MisHelpTalk("<t> 饮 汶箫? � 驽 麇蜿� 耜噻嚯� 3� <r庙桦铄 腻疱忸>, 3� <r橡铌��蜞� 觐耱�>, 3� <r务螯>.")
	MisResultCondition(HasMission, 364)
	MisResultCondition(HasItem, 4259, 3)
	MisResultCondition(HasItem, 4260, 3)
	MisResultCondition(HasItem, 4261, 3)
	MisResultAction(TakeItem, 4259, 3)
	MisResultAction(TakeItem, 4260, 3)
	MisResultAction(TakeItem, 4261, 3)
	MisResultAction(GiveItem, 4251, 1 ,4)	
 	MisResultAction(SetRecord, 364 )
 	MisResultAction(ClearMission, 364 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4259 )
	TriggerAction( 1, AddNextFlag, 364, 1, 3 )
	RegCurTrigger( 3641 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4260 )
	TriggerAction( 1, AddNextFlag, 364, 5, 3 )
	RegCurTrigger( 3642 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4261 )
	TriggerAction( 1, AddNextFlag, 364, 10, 3 )
	RegCurTrigger( 3643)

-----------------------------------龙之泪
	DefineMission( 536, "央彗� 漯嚓铐�", 24 , COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>央彗� 酿嚓铐�? � 溧忭� 龛麇泐 钺 铎 礤 耠嚯! 如-玎 蝾泐, 黩� 螓 箫铎�眢� � 疣珈屦� 铋 忮麝�, � 耩噻� 疱�, 黩� 螓 怦蝠弪桦�� � 蝈� 疱徨黻铎. 青狍潼, 黩钺� 禧 龛 溴豚腓 - 怦� 徨耧铍彗眍, 镳铠腩� � 镳铠腩�.<n><t>饮 猁 躅蝈� 箸磬螯 镱漯钺礤� � 耠彗� 漯嚓铐�? � 戾�� 2 忄痂囗蜞. 襄疴, 螓 镳钿噱 祉� 邋 玎 襦祛鲡弪 � 玎猁忄屮� � 磬� 疣玢钼铕�. 买铕铋, � 疣耨赅骟 蝈徨 怦� 黩� � 珥帼 钺 铎 赅祉�, 眍 螓 漕腈屙 镱钺妁囹�, 黩� 疣耨赅驽 祉�, 羼腓 疣耜痤屮� � 蜞轫�.")
	MisResultCondition(NoRecord, 24)
	MisResultCondition(HasMission, 24)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 24)
	MisResultAction(ClearMission, 24)

-----------------------------------变卖龙之泪
	DefineMission( 537, "橡钿噫� 耠彗 漯嚓铐�", 366 )

	MisBeginTalk( "<t>� 牦镫� 铗 赅戾睃 玎 <r200000 珙腩螓�>")
	MisBeginCondition(NoRecord, 366)
	MisBeginCondition(NoMission, 366)
	MisBeginCondition(NoMission, 367)
	MisBeginCondition(NoRecord, 367)
	MisBeginCondition(HasRecord, 24)	
	MisBeginCondition(HasItem, 4252,1)	
 	MisBeginAction(AddMission, 366)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "袜殇栩� <r央彗� 酿嚓铐�>")

	MisResultTalk("<t>蔓 磬� 邋? 项塍鬣轵� 疋铄 忸珥嚆疣驿屙桢!")
	MisHelpTalk("<t>娩� 耠彗�?")
	MisResultCondition(HasMission, 366)
	MisResultCondition(HasItem, 4252,1)
        MisResultAction(TakeItem, 4252, 1)	
        MisResultAction(AddMoney, 200000, 200000)	
 	MisResultAction(SetRecord, 366 )
 	MisResultAction(ClearMission, 366 )

-----------------------------------龙之泪的传说
	DefineMission( 538, "隋沐礓� � 耠彗� 漯嚓铐�", 367 )

	MisBeginTalk( "<t>亦� 恹 溴轳蜮栩咫� 躅蜩蝈 箸磬螯 � 央彗� 酿嚓铐�? � 珥帼 蝾朦觐 钿眢 脲沐礓� <n> <T> 皖 祉� 眢骓� 犷朦 怵屐屙�. 洛痦栩羼� 黧螯 镱珂�.")
	MisBeginCondition(NoRecord, 366)
	MisBeginCondition(HasRecord, 24)
	MisBeginCondition(NoMission, 366)
	MisBeginCondition(NoMission, 367)
	MisBeginCondition(NoRecord, 367)
	MisBeginCondition(HasItem, 4252,1)
	MisBeginAction(AddMission, 367)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 祟磴 硼")

	MisResultTalk("<t> 隋沐礓� 汶囫栩,黩� 央彗� 漯嚓铐� 铗牮帼� 矬螯 � 族痦铎� 漯嚓铐�!")
	MisHelpTalk("<t>� 忄� 羼螯 耠彗� 酿嚓铐�?")
	MisResultCondition(HasMission, 367)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 367 )
 	MisResultAction(ClearMission, 367 )
	MisResultAction(ObligeAcceptMission, 25 )




-----------------------------------龙之泪的秘密
	DefineMission( 539, "亦轫� 耠彗� 漯嚓铐�", 25, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>枢� 驽 螓 漕耱嚯 耠彗� 酿嚓铐� 羊箧�? 疹痤, 黩� 螓 彘 礤 忸耧铍钼嚯��.<n><t>琼圜栩 脲沐礓� 汶囫栩 镳噔潴. 义� 礤 戾礤�, 羼螯 妁� 钿磬 忮, 觐蝾痼� 禧 铖蜞忤腓 � 耱铕铐�. 署钼� � 耠彗� 漕腈睇 猁螯 潆� 漯筱桴!")
	MisResultCondition(NoRecord, 25)
	MisResultCondition(HasMission, 25)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 25)
	MisResultAction(ClearMission, 25)

-----------------------------------圣水
	DefineMission( 540, "砚�蜞� 忸溧", 369 )

	MisBeginTalk( "<t>隋漕恹� 漯嚓铐 猁� 耦玟囗 令汔扈 � 磬溴驿� 镱犷痤螯 泐疱 � 耠噌铖螯. 皖 膻滂 玎戾蜩腓 � 龛� 腓 漕痤汨� 觐耱� � 鲥眄 囵蝈羿牝�. <n> <T> 袜殇栩� � 锑汨麇耜铎 铌遴礤 <p馏螓朦 � 忸漕�> 镱 觐铕滂磬蜞� <p(3800, 550)> , � � 疣耨赅骟 忄� 赅� 彘 镱朦珙忄螯��.")
	MisBeginCondition(NoRecord, 369)
	MisBeginCondition(NoMission, 369)
	MisBeginCondition(HasRecord, 25 )
	MisBeginAction(GiveItem, 4239,1,4)
 	MisBeginAction(AddMission, 369)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "洛腓觇� 耔龛� 铌遴� (3800, 550) 袜殇栩� 狍螓朦 � 忸漕�.")

	MisResultTalk("<t>锣�! 桤忸朦蝈 忡汶�眢螯 磬 忸潴.")
	MisHelpTalk("<t>� 忄� 镳钺脲禧? <p(3800, 550)> 忄� 磬漕 � 锑汨麇耜栝 铌遴�! ")
	MisResultCondition(HasMission, 369 )
	MisResultCondition(HasItem, 4257,1)
        MisResultAction(TakeItem, 4257, 1)
	MisResultAction(GiveItem, 4240, 1, 4)
	MisResultAction(SetRecord, 369 )
 	MisResultAction(ClearMission, 369 )
	MisResultBagNeed(1)
 
 -----------------------------------圣水
	DefineMission( 541, "蔓牦�", 370 )

	MisBeginTalk( "<t>锣� 珥嚓铎 狍溴� 铖钺铈溴�!")
	MisBeginCondition(HasRecord, 369)
	MisBeginCondition(NoRecord, 370)
	MisBeginCondition(NoMission, 370)
	MisBeginAction(AddMission, 370)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "橡铍彘蝈 砚�蝮� 忸潴 磬 央彗� 漯嚓铐�, 黩� 猁 铖忸犷滂螯 潴.")

	MisHelpTalk("<t>橡铍彘蝈 砚�蝮� 忸潴 磬 央彗� 漯嚓铐�, 黩� 猁 铖忸犷滂螯 潴.")
	MisResultCondition(AlwaysFailure )
	
 
 -----------------------------------海砂的存款
	DefineMission( 542, "体耱铕铈溴龛� 锗耨腓", 26 , COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t> This deposit has not been touched for a long time. You say the owner is transferring it to you? Okay, we will go by the normal rules and procedures, if you can tell us the safety box's password, the money is yours. <n><t>(I pondered for awhile, and entered the password, 'All that you see is not what it seems. Your own eyes are often the cause of deception.')")
	MisResultCondition(NoRecord, 26)
	MisResultCondition(HasMission, 26)
	MisResultAction(ClearMission, 26)
	MisResultAction(SetRecord, 26)
        MisResultAction(AddMoney, 200000)	
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,250000,250000)
	MisResultAction(AddExpAndType,2,60000,60000)

-----------------------------------周吴郑的情书
	DefineMission( 543, "塔犷忭铄 镨顸祛 祖铙", 372 )

	MisBeginTalk( "<t>项漕驿栩�! 湾 篚钿栩�! � 磬溴� 恹 礤 麒蜞腓 镨耢�? <n> <t> 篷腓 麒蜞腓, 蝾 镳铠�, 躔囗栩� 祛膑囗桢! 蜀蜞蝈 镱耢铗痂蝈 眍恹� 蝾忄瘥 � 摒� (3195,2506)")
	MisBeginCondition(NoRecord, 372)
	MisBeginCondition(NoMission, 372)
	MisBeginCondition(HasMission, 27)
 	MisBeginAction(AddMission, 372)
	MisBeginAction(SetRecord, 27)
	MisBeginAction(ClearMission, 27)
	MisBeginAction(AddTrigger, 3721, TE_GETITEM, 4241, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "项祛汨蝈 <b拎黻桊� - 锣磴 填> 忮痦篁� 觐祜脲牝 <r填漤�� 钿彐溧> 牦镨螯 觐蝾瘥� 祛骓� � <b鼠镥� - 摒栝> 镱 觐铕滂磬蜞� (3196, 2509).")
	MisNeed(MIS_NEED_ITEM, 4241, 1, 1, 1)

	MisResultTalk("<t>泥! 蒡� 蝾 黩� � 躅蝈豚.")
	MisHelpTalk("<t> 娩� 祛� 钿彐溧? � 眢 徨泐� 玎 礤� 桦� � 筢 蝈�� 镳�祛 皴轺囫!")
	MisResultCondition(HasMission, 372)
	MisResultCondition(HasItem, 4241, 1)
	MisResultAction(TakeItem, 4241, 1 )
 	MisResultAction(SetRecord, 372 )
	MisResultAction(ClearMission, 372 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4241 )
	TriggerAction( 1, AddNextFlag, 372, 1, 1 )
	RegCurTrigger( 3721 )
 


 -----------------------------------周吴郑的信
	DefineMission( 544, "翔顸祛 祖铙", 362 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>秧钼�? 蒡铗 镟疱睃... � 溴轳蜮栩咫� 礤 珥帼 黩� 耜噻囹� 屐�. � 镳噔溧 耦驵脲�!  橡铠� 蝈�� 忮痦桉� � 铗溧� 邈� 钺疣蝽�, 铐 镱殪弪.")
	MisResultCondition(NoRecord, 362)
	MisResultCondition(NoFlag, 362, 10)
	MisResultCondition(HasMission, 362)
	MisResultCondition(HasItem, 4250, 1)
	MisResultAction(TakeItem, 4250, 1)
	MisResultAction(SetFlag, 362, 10)
	
-----------------------------------新货
	DefineMission( 545, "皖恹� 忮", 372 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>枢� 螓 � 泐忸痂豚 疣礤�, � 戾�� 眍恹� 镱耱噔觇 蝾忄疣, 眍 麇痱钼 觐疣犭� 妁� 礤 镳桫咫! � � 耠桫觐� 忡忸腠钼囗� 黩� 猁 猁螯 聍囫螂桠铋... 篷腓 螓 泐蝾� 镱祛鼽 祉�, 蝾 � 祛泱 溧螯 蝈徨 痼徉�.")
	MisResultCondition(NoRecord, 372)
	MisResultCondition(NoFlag, 372, 10)
	MisResultCondition(HasMission, 372)
	MisResultAction(SetFlag, 372, 10)
	
-----------------------------------出海打探
	DefineMission( 546, "锐耠邃钼囗桢 祛��", 375 )

	MisBeginTalk( "<t>误, 蜞� 恹 耦汶囫睇 磬轵� 祛� 觐疣犭�? 橡尻疣耥�! 悟镳噔��轵羼� 镱 觐铕滂磬蜞� <p2500, 2260>. 栗 溧, 忸琰扈蝈 � 耦犷� 凌眍觌�, 黩� 猁 躅痤 忤溴螯 觐疣犭�.")
	MisBeginCondition(NoRecord, 375)
	MisBeginCondition(NoMission, 376)
	MisBeginCondition(NoMission, 375)
	MisBeginCondition(NoRecord, 376)
	MisBeginCondition(HasMission, 372)
	MisBeginCondition(HasFlag, 372, 10)
	MisBeginAction(AddMission, 375)
	MisBeginAction(GiveItem, 4258,1,4)
	MisBeginBagNeed(1)

	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "悟镳噔��轵羼� 镱 觐铕滂磬蜞� <p2500, 2260> ��漕� � 洛耥钽疣漕�. <r凌眍觌�> 潆� 磬犭屙��.")

	MisResultTalk("<t> 蔓 磬� 祛� 觐疣犭�? 骂聃栩栩咫�! 蒡铗 镳彗屙� 忄�. 栗 黧螯 礤 玎猁豚, 忮痦栩� 祛� 徼眍觌�, 铐 耱铊� 鲥腩� 耦耱��龛�!")
	MisHelpTalk("<t> 蔓 玎猁腓 觐铕滂磬螓? <p2500, 2260>. 悟镳噔��轵羼� 礤戾潆屙眍! � 狍潴 驿囹� 铗 忄� 躅痤� 眍忸耱彘.")
       	MisResultCondition(HasMission, 28)
	MisResultCondition(HasItem, 4258, 1)
	MisResultAction(TakeItem, 4258, 1)
	MisResultAction(GiveItem, 4241, 1,4)	
 	MisResultAction(SetRecord, 375 )
 	MisResultAction(ClearMission, 375 )
 	MisResultAction(ClearMission, 28 )
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

 -----------------------------------购买新衣
	DefineMission( 547, "项牦镪� 眍忸� 钿彐潲", 376 )

	MisBeginTalk( "<t> 蔓 礤 躅蜩蝈 桉耠邃钼囹咫� 祛疱? 疹痤.")
	MisBeginCondition(NoRecord, 375)
	MisBeginCondition(NoMission, 376)
	MisBeginCondition(NoMission, 375)
	MisBeginCondition(NoRecord, 376)
	MisBeginCondition(HasMission, 372)	
	MisBeginAction(AddMission, 376)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisResultTalk("<t>� 磬溴�腭� 磬 蝾 , 黩� 恹 桉耠邃箦蝈 祛疱.皖 羼腓 恹 泐蝾恹 疣耨蜞螯�� � 100000 螓��鬣扈 珙腩螓�...")
	MisHelpTalk("<t>橡桧羼蜩 100000 螓��� 珙腩螓�")
	MisResultCondition(HasMission, 376)
	MisResultCondition(HasMoney, 100000)
        MisResultAction(TakeMoney, 100000)	
        MisResultAction(GiveItem, 4241, 1,4)	
 	MisResultAction(SetRecord, 376 )
 	MisResultAction(ClearMission, 376 )
	MisResultBagNeed(1)

-----------------------------------恶魔的果实
	DefineMission( 548, "冷耜栝 麴箨�", 363 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t> 枢觐� 妁� 溴祛龛麇耜栝 麴箨�? � 驽 钺��耥桦 蝈徨, 汶箫. 添� 镳铖蝾, 磬镳铖蝾 100 脲�, � 妁� 礤 耱囵. <n><t> 篷腓 猁 恹 礤 耱疱扈腓顸 镱祛鼽 锗扈, � 溧忭� 猁 恹溻铕桦 忄� � 麇痱钼铋 爨蝈痂. 项怛铕�� � 镱耠邃龛� 疣� 祉� 100 脲�!")
	MisResultCondition(NoRecord, 363)
	MisResultCondition(NoFlag, 363, 22)
	MisResultCondition(HasMission, 363)
	MisResultAction(SetFlag, 363, 22)
	MisResultAction(AddExp,2500000,2500000)
	MisResultAction(AddExpAndType,2,50000,50000)

-----------------------------------恶魔的果实
	DefineMission( 550, "冷耜栝 麴箨�", 363, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t> 琉痧... 篷腓 螓 耧痤耔 妁� 疣� � 铎 冷耜铎 麴箨蝈, 磬 戾�� 礤 钺桄嚅��. <n><t>昨� 玎 皴瘘汔 � 蝈�� � 赅痨囗�? 雾� 镱躅驽 磬 皴瘘泱 祛彘 忭篦觇! 皖 铐� 驽 猁豚 镱蝈��磬 � 祛疱. 昨�? 蔓 礤 怵弪� 铐� 骅忄? � 彘 箧� 150 脲�?!  肃漤�, � 镳桤磬� � 聱咫 冷耜栝 麴箨�, 眍 祛� 忸琊囫� 礤 漕耱桡 螓��麒 脲�! 蒡� 麴箨螓 镱�忤腓顸 觐沅� 蓄豚礓 暑痤朦 镨疣蝾� 钺栩嚯 磬 桴 铖蝠钼圊, 镱耠� 蝾泐 赅� 铐 桉麇�, 桉麇珉� � 麴箨螓. 皖 漕 耔� 镱� 龛牝� 礤 珥噱�, 铗牦溧 铐� 忡�腓顸 � 牦溧 铐� 溴腓顸.")
	MisResultCondition(NoRecord, 363)
	MisResultCondition(HasFlag, 363, 22)
	MisResultCondition(HasMission, 363)
	MisResultCondition(HasItem, 4235, 1)
	MisResultAction(TakeItem, 4235, 1)
	MisResultAction(SetRecord, 363)
	MisResultAction(ClearMission, 363)
	MisResultAction(AddMoney,50000,50000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultAction(GiveItem,3351,15,4)
	MisResultAction(GiveItem,3352,15,4)
	MisResultAction(GiveItem,3353,15,4)
	MisResultBagNeed(3)


 -----------------------------------罗森
	DefineMission( 551, "蓄豚礓", 380 )

	MisBeginTalk( "<t>蔓 耧疣忄弪� � 蓄豚礓�? �-铑 铐 沐痤� 祉钽桴 脲沐礓!")
	MisBeginCondition(HasRecord, 363)
	MisBeginCondition(NoRecord, 380)
	MisBeginCondition(NoMission, 380)
	MisBeginAction(AddMission, 380)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "袜忮耱栩� 燕磴 蔫 (3287, 2501).")

	MisResultTalk("<t>埋� 聍弪� 猁腓 箴邈箅桊钼囗�")
	MisHelpTalk("<t>湾 怦� 聍弪� 猁腓 箴邈箅桊钼囗�")
	MisResultCondition(HasRecord, 386)
	MisResultCondition(HasMission, 380)
  	MisResultAction(SetRecord, 380 )
 	MisResultAction(ClearMission, 380 )
	


-----------------------------------悲剧
	DefineMission( 552, "茵嚆邃��", 381 )

	MisBeginTalk( "<t>�...� 箧囫磬� 桉蝾痂� � 忭箨铎 相麝箅� 镱耠邃龛� 耠篚 � 礤� 猁� �  锑汨麇耜铎 铌遴礤 (3757, 1248), 镱耠� 麇泐 铐 镳铒嚯 徨� 忮耱�.捏爨� 祛� 镱溻钿睇� 桉赅蝈朦 镱祛驽� 忄�.")
	MisBeginCondition(NoRecord, 381)
	MisBeginCondition(NoMission, 381)
	MisBeginCondition(HasRecord, 290)
	MisBeginAction(AddMission, 381)
  	MisBeginAction(GiveItem,4253,1,4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	
	MisNeed(MIS_NEED_DESP, "锑汨麇耜栝 铌遴� (3757, 1248)")
	MisResultCondition(AlwaysFailure )


-----------------------------------悲剧
	DefineMission( 553, "茵嚆邃��", 382 )

	MisBeginTalk( "<t>泥,� 犷朦� 蝠嚆邃��.捏爨� 忄� 耱铊� 疣耨赅玎螯 钺 铎 相麝箅�")
	MisBeginCondition(NoMission, 382)
	MisBeginCondition(HasMission, 29)
	MisBeginCondition(HasItem, 4233,1)
	MisBeginAction(ClearMission, 29)
	MisBeginAction(SetRecord, 29)
	MisBeginAction(AddMission, 382)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "悟礤耱� 镨顸祛 相麝箅� 镱 觐铕滂磬蜞� (2272, 2700)")
	
	MisResultCondition(AlwaysFailure )
-----------------------------------悲剧
	DefineMission( 554, "茵嚆邃��", 382, COMPLETE_SHOW )


	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>� 珥嚯,� 珥嚯 黩� 耠篦栩�� 徨溧...扬囫栳�! 义镥瘘 � 躅�� 猁 狍潴 珥囹� 黩� � 龛� 耠篦桦铖�.")
	MisResultCondition(HasMission, 382)
	MisResultCondition(HasItem, 4233, 1)
	MisResultAction(TakeItem, 4233, 1)
	MisResultAction(ClearMission, 382)
	MisResultAction(SetRecord, 382)

-----------------------------------悲剧
	DefineMission( 555, "茵嚆邃��", 383 )

	MisBeginTalk( "<t>疹�� � � 忄� 忸琊囫蝈 � 镫噔嚯 蜞� 溧脲觐,忄� 镳桎弪�� 镳铙麒螯 桴 镨疣蝾�!")
	MisBeginCondition(NoRecord, 383)
 	MisBeginCondition(HasRecord, 382)
 	MisBeginCondition(NoMission, 383)
	MisBeginAction(AddMission, 383)
	MisBeginAction(AddTrigger, 3831, TE_KILL, 594, 10)
	MisBeginAction(AddTrigger, 3832, TE_KILL, 593, 5)
	MisBeginAction(AddTrigger, 3833, TE_KILL, 656, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "禹梓蝾骝� 责邈囹 逆尻�-镨疣蜞 x10 (1950, 3515); 暑疣犭� 镱滗屦骊� 逆尻�-镨疣蜞 磬 �5 (2210, 3769); 暑爨礓睇� 觐疣犭� 逆尻�-镨疣蜞 �1 (1966, 3769)")
	MisNeed(MIS_NEED_KILL, 594, 10, 1, 10)
	MisNeed(MIS_NEED_KILL, 593, 5, 11, 5)
	MisNeed(MIS_NEED_KILL, 656, 1, 16, 1)

	MisResultTalk("<t>扬囫栳�! 扬囫栳�! � 忄� 铟屙� 犭嚆钿囵屙!")
	MisHelpTalk("<t>篷腓 潆� 忄� � 耠铈眍....玎狍潼蝈 钺 铎. � 箪痼 � 桁� 膻漕邃囔�")
	MisResultCondition(HasMission, 383 )
	MisResultCondition(HasFlag, 383, 10)
	MisResultCondition(HasFlag, 383, 15)
	MisResultCondition(HasFlag, 383, 16)
 	MisResultAction(SetRecord, 383 )
 	MisResultAction(ClearMission, 383 )
	MisResultAction(AddMoney,100000,100000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultAction(GiveItem,3878,1,4)
	MisResultAction(GiveItem,4715,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 594 )
	TriggerAction( 1, AddNextFlag, 383, 1, 10 )
	RegCurTrigger( 3831 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 593 )
	TriggerAction( 1, AddNextFlag, 383, 11, 5 )
	RegCurTrigger( 3832 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 656 )
	TriggerAction( 1, AddNextFlag, 383, 16, 1 )
	RegCurTrigger( 3833 )

-----------------------------------过去
	DefineMission( 556, "橡铠腩�", 384 )

	MisBeginTalk( "<t>琼噱蝈 腓 恹 镱麇祗 离箐� � 蜞觐� �痤耱�? 络汶�龛蝈 磬 祗耦� � 铌痼沐. <n> <T> 帖 桤篦嚯� 漯邂龛� 镨顸戾磬 , � 磬鬣豚顸 狍��! 帖 潴爨屐 � 镳铊耜� 令汨龛. <n> <T> 软蝈疱耥� � 痼觐镨耔 耦躔囗桦桉�? 篷腓 恹 磬殇弪� 桴,� 镱溴膻顸 � 忄扈 礤觐蝾瘥扈 疣痂蝈蜞扈.")
	MisBeginCondition(NoRecord, 384)
	MisBeginCondition(NoMission, 384)
	MisBeginCondition(HasRecord, 290)
 	MisBeginAction(AddMission, 384)
	MisBeginAction(AddTrigger, 3841, TE_GETITEM, 4234, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "袜殇栩� <r酿邂龛� 痼觐镨耔> 潆� 起桷� 冷� (862,3303)")
	MisNeed(MIS_NEED_ITEM, 4234, 1, 1, 1)

	MisResultTalk("<t>� 礤 潴爨� 黩� 螓 磬殇屮� 桴 蜞� 猁耱痤.")
	MisHelpTalk("<t>橡铠腩 犷朦 戾��鲟...忸珈铈眍 镨顸戾磬 箧� 镳铒嚯�.")
	MisResultCondition(HasMission, 384)
	MisResultCondition(HasItem,4234,1)
	MisResultAction(TakeItem, 4234,1 )
 	MisResultAction(SetRecord, 384 )
	MisResultAction(ClearMission, 384 )
	MisResultAction(AddExpAndType,2,60000,60000)
	
	MisResultAction(GiveItem,3878,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4234 )
	TriggerAction( 1, AddNextFlag, 384, 1, 1 )
	RegCurTrigger( 3841 )

-----------------------------------过去
	DefineMission( 557, "橡铠腩�", 384, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>酿邂龛� 骟痦嚯? 侦, 沅� 蝾 � 箧� � 礤� 耠嚯! ")
	MisResultCondition(NoRecord, 384)
	MisResultCondition(HasMission, 384)
	MisResultCondition(NoItem, 4234, 1)
	MisResultCondition(NoFlag, 384, 10)
	MisResultAction(SetFlag, 384, 10)

	
-----------------------------------------讨债
      DefineMission(558,"茵遽钼囗桢 铒豚螓",386)

      MisBeginCondition(HasMission,380)
      MisBeginCondition(NoRecord,386)
      MisBeginCondition(NoMission,386)
 
      MisBeginTalk("<t>昨�? 蔓 躅蜩蝈 镱祛鼽 祉� 耦狃囹� 漕脬�? 蒡� 玎戾鬣蝈朦眍! 骂� 玎镨耥�� 觏桄赅.� 礤� 怦� 磬镨襦眍.")
      MisBeginAction(AddMission,386)
      MisBeginAction(GiveItem,0948,1,4)
      MisBeginBagNeed(1)
      MisCancelAction(SystemNotice, "This quest cannot be abandoned") 

      MisNeed(MIS_NEED_DESP, "杨徨痂蝈 念脬� � 鼠珥弼�, 茵嚓蜩瘗桕� , 梭睇, 摒�� , 揄铠� - 吾豚觐 , 蔫耧弪麇疣 镱痱�") 
      
      MisHelpTalk("饮 礤 恹汶�滂 篑蜞怿桁. � 怦邈� 腓 钿桧铌�� 耱囵�� 驽睐桧�, � 礤 麇� 礤 祛泱 镱祛鼽 祛屐� 覃眢, 蝾朦觐 恹 祛驽蝈  邈� 耧囫蜩. 青镫囹桠 恹牦� 2 扈腚桀磬.")
      
      MisResultTalk("<t>扬囫栳�!蔓 祉� 铟屙� 镱祛汶�.")
    
      MisResultCondition(NoRecord,386)
      MisResultCondition(HasFlag,386, 100)
      MisResultCondition(HasFlag ,386, 101)
      MisResultCondition(HasFlag,386, 102)
      MisResultCondition(HasRecord,389)
      MisResultCondition(HasRecord,391)
      MisResultCondition(HasRecord,400)
      MisResultCondition(HasRecord,393)
	  MisResultCondition(HasItem,0948,1)
      MisResultCondition(HasMoney,2000000)
      MisResultAction(TakeMoney,2000000)
      MisResultAction(TakeItem,0948,1)
      MisResultAction(GiveItem,0189,1,4)
      MisResultBagNeed(1)
      MisResultAction(ClearMission,380)
      MisResultAction(ClearMission, 386 )
      MisResultAction(SetRecord, 380 )
      MisResultAction(SetRecord,386)

      ----------------------------------讨债      （武鑫）
      DefineMission(567,"茵遽钼囗桢 铒豚螓",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>O�...铗 耱囵 漕脬 燕磴 蔫.项塍麒蝈 邋 珙腩蝾.")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag, 386, 100)
      MisResultAction(AddMoney,200000)
      MisResultAction(SetFlag, 386, 100)
     


      ------------------------------------讨债
       DefineMission(568,"茵遽钼囗桢 铒豚螓",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>O�...铗 耱囵 漕脬 燕磴 蔫.项塍麒蝈 邋 珙腩蝾.")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag,386,101)
      MisResultAction(AddMoney,100000)
      MisResultAction(SetFlag,386,101)
    


      ----------------------------------------龙女的债务
      DefineMission(569,"念脬 碾桧眍泐 蒺�",389)

      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,389 )
      MisBeginCondition(NoMission,389 )
      MisBeginAction(AddMission,389)
      MisCancelAction(SystemNotice, "This quest cannot be abandoned")

      MisBeginTalk("<t>熙 麇痱, 祛� 镟��螯 磬忮痦铄 镱溻钿栩 戾��. � 蜞� 玎��� 疋铄� 疣犷蝾�. 饮 礤 耢铈屮� 皲咫囹� 祉� 钿铍驽龛�, 礤 铗镳噔桫� � 徉黻? � 镳邃箫疱骟 锣磴 填 � 义徨? 篷腓 � 镳噔桦� 镱祉�,  疱鼽 桎弪 � 200000G.")
      
      MisNeed(MIS_NEED_DESP, "悟镳噔栩� � 拎黻桊� 锣磴 填 镱 觐铕滂磬蜞� (3290, 2512) � 玎狃囹� 200000G")

      MisHelpTalk("<t>� 箧� 镱泐忸痂� � 锣磴 填. 义徨 礤钺躅滂祛 蝾朦觐 聃钿栩� � 玎狃囹� 祛� 溴睃汨")
       
     MisResultCondition(AlwaysFailure)

-------------------------------------------龙女的债务
     DefineMission(570,"念脬 碾桧眍泐 蒺�",389, COMPLETE_SHOW)

     MisBeginCondition(AlwaysFailure)

     MisResultTalk("<t>饮 玟羼�, 黩钺� 玎狃囹� 溴睃汨 碾桧眍泐 蒺�? 悄叛�! � 钺� 耠铈眍耱� 200000G 羼腓 猁螯 蝾黜. 义� 礤 戾礤�, 祉� 眢骓�, 黩钺� 恹 玎镫囹桦� 200G 赅� 噤扈龛耱疣蜩忭 襻铕.")

     MisResultCondition(HasMission,389)
     MisResultCondition(NoRecord,389)
     MisResultCondition(HasMoney,200)
     MisResultAction(TakeMoney,200)
     MisResultAction(AddMoney,200000)
     MisResultAction(ClearMission, 389 )
     MisResultAction(SetRecord, 389 )
     


---------------------------------------------讨债
     DefineMission(563,"茵遽钼囗桢 铒豚螓",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>昨�? 蔓 躅蜩蝈 皴轺囫? 朽玮� 禧 礤 桁邋� 3-戾��黜钽� 耦汶帏屙�� 镱 铎� 忸镳铖�? � 漕腈屙 猁� 镱蝠囹栩� � 溴睃汨 潆� 疋铄� 疋噤�.")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag, 386, 102)
      MisResultAction(AddMoney,200000)
      MisResultAction(SetFlag, 386, 102)



     ---------------------------------------------杂货商人的债务
      DefineMission(564,"念脬 徉赅脲轾桕�",391)

      MisBeginTalk("<t>� 忮痦� 忄� 漕脬 , 眍 祉� 眢骓� 礤觐蝾瘥� 桧沭邃桢眚� 潆� 徼脲蝾�.")
      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,391)
      MisBeginCondition(NoMission,391)
      MisBeginAction(AddMission,391)
   
      MisBeginAction(AddTrigger, 3911, TE_GETITEM, 0176, 3 )		--残缺的裹尸布
      MisBeginAction(AddTrigger, 3912, TE_GETITEM, 0177, 3 )		--破损的裹尸布
      MisBeginAction(AddTrigger, 3913, TE_GETITEM, 0178, 3 )		--完整的裹尸布
      MisCancelAction(SystemNotice, "This quest cannot be abandoned")
      
      MisNeed(MIS_NEED_DESP, "蠕栩� � 镱溻钿睇� 蝮眄咫� � 漕耱囗� :朽珙疴囗磬� 蜿囗� 潆� 钺铕圜桠囗�� 蝈豚  3 , 项怵彐溴眄�� 蜿囗� 潆� 钺铕圜桠囗�� 蝈豚  3 ,皱豚� 蜿囗� 潆� 钺铕圜桠囗�� 蝈豚  3 .")
      MisNeed(MIS_NEED_ITEM, 0176, 3, 10, 3)
      MisNeed(MIS_NEED_ITEM, 0177, 3, 20, 3)
      MisNeed(MIS_NEED_ITEM, 0178, 3, 30, 3)
      
      MisHelpTalk("<t>骂� 祛� 漕脬.")  
      MisResultTalk("<t>锗-踵! 义镥瘘 � 皲咫帼 祉钽� 徼脲蝾�!")
      MisResultCondition(HasMission, 391 )
      MisResultCondition(HasItem, 0176, 3 )
      MisResultCondition(HasItem, 0177, 3 )
      MisResultCondition(HasItem, 0178, 3 )
      MisResultAction(TakeItem, 0176, 3 )
      MisResultAction(TakeItem, 0177, 3 )
      MisResultAction(TakeItem, 0178, 3 )
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission, 391 )
      MisResultAction(SetRecord, 391 )
      
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0176 )	
   TriggerAction( 1, AddNextFlag, 391, 10, 3 )
    RegCurTrigger(3911)
    
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0177 )	
   TriggerAction( 1, AddNextFlag, 391, 20, 3 )
    RegCurTrigger(3912) 
     
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0178 )	
   TriggerAction( 1, AddNextFlag, 391, 30, 3 )
    RegCurTrigger(3913)

--------------------------------------------------------港口指挥·霜奇的债务
     DefineMission(565,"念脬 伢囗汔",392)

      MisBeginTalk("<t>栗,铗 漕脬! 蔓 祛驽蝈 镱漕驿囹� 礤耜铍� 漤彘? 入� 驽 镱祛汨蝈.添� 眢骓� 漕耱噔栩� 沭箸 � 灭铎钽疣�.")
      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,392)
      MisBeginCondition(NoMission,392)
      MisBeginAction(AddMission,392)
      MisBeginAction(GiveItem,0949,1,4)
      MisCancelAction(SystemNotice, "This quest cannot be abandoned")
      MisBeginBagNeed(1)

      MisNeed(MIS_NEED_DESP, "念耱噔� 镱覃腙� � 灭铎钽疣� 填瘃觐祗 暑爨礓簋祗 - 腻耨囵� (713, 1416)")
      MisHelpTalk("<t>昨� 蜞觐�?")
       
      MisResultTalk("<t>蔓 漕耱噔桦� 沭箸? 悟腓黜�, 忸� 祛� 漕脬" )
      MisResultCondition(HasRecord,392) 
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission,392 )
      MisResultAction(SetRecord,400)

  -------------------------------------------------------港口指挥·霜奇的债务

  DefineMission(566,"念脬 伢囗汔",392, COMPLETE_SHOW )

      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>侦, � 忄� 疣睃 礤 忤溴�! 皖 怦� 疣忭�,耧囫栳� 玎 漕耱噔脲眄 镳栾囫�.")
      MisResultCondition(HasMission,392)
      MisResultCondition(NoRecord,392)
      MisResultCondition(HasItem,0949,1)
      MisResultAction(TakeItem,0949,1)
      MisResultAction(SetRecord,392)
      
       

   -----------------------------------------------------贸易商人·油李的债务

      DefineMission(572,"念脬 摒��",393)

      MisBeginTalk("<t> � 忮痦箅 猁 忄� 漕脬,眍 疏鲶礤 箨疣腓 祛� 震篑蜞朦睇� 瘥 桤 腓黜钽� 玎镟襦,� 蝈镥瘘 � 礤 祛泱 钺戾��螯 桴 磬 珙腩蝾...")

      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,393)
      MisBeginCondition(NoMission,393)
      MisBeginAction(AddMission,393)
   
      MisBeginAction(AddTrigger, 3931, TE_GETITEM, 1864, 5 )		 
      MisCancelAction(SystemNotice, "This quest cannot be abandoned")
      
      MisNeed(MIS_NEED_DESP, "念耱囗� 5 震篑蜞朦睇� 痤�")
      MisNeed(MIS_NEED_ITEM, 1864, 5, 10, 5)
      
      
      MisHelpTalk("<t>俞彘蝈 疏鲶礤")  
      MisResultTalk("<t>�! 扬囫栳� !蔓 祛� 耧囫栩咫�. 骂� 忄� 漕脬.")
      MisResultCondition(HasMission, 393 )
      MisResultCondition(HasItem, 1864, 5 )
      MisResultAction(TakeItem, 1864, 5 )
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission, 393 )
      MisResultAction(SetRecord, 393)

	  InitTrigger() 
   TriggerCondition( 1, IsItem, 1864 )	
   TriggerAction( 1, AddNextFlag, 393, 10, 5 )
    RegCurTrigger(3931)

--------------------------------------------罗森
     DefineMission(571,"蓄豚礓",394)
     MisBeginTalk("<t>扬囫栳� 玎 耦狃囗睇� 漕脬�. <n> <T>  左螯 镱珂� � 镥疱泐忸瘙 � 忄扈.")
     MisBeginCondition(HasRecord,386)
      MisBeginCondition(NoMission, 394)
     MisBeginCondition(NoRecord, 394)
     MisBeginAction(AddMission, 394)
     MisCancelAction(SystemNotice, "This quest cannot be abandoned")

     MisNeed(MIS_NEED_DESP, "唁嚅蝈 燕磴 蔫 珙腩蝾. (3287, 2501)")
     MisHelpTalk("<t>馏潼蝈 蝈痫咫桠�!")
      MisResultTalk("<t>埋� 礤 蜞� 镳铖蝾 赅� 忄� 赅驽蝰�...")
     MisResultCondition(NoRecord, 394)
     MisResultCondition(HasMission, 394)
     MisResultAction(SetRecord, 394 )
     MisResultAction(ClearMission, 394 )

----------------------------------------追忆
	 DefineMission(592,"� 镳铠腩�",395)
	
	MisBeginTalk( "<t>蓄豚礓 猁� 忮腓鬣轼栝 镨疣� � 疋铄 怵屐�, 邈� 铟囵钼囹咫�� 箅赅... 栗�! � 戾�� 磬麒磬弪 犷脲螯 泐腩忄,觐沅� � 怦镱扈磬� 钺 铎!. 骂琰扈蝈 � 铈屦咫 � 镳钿铍驵轵� 疋铊 镱桉觇. � 潴爨� 镱耱屣屙眍 恹 疣玢噤噱蝈 蜞轫�. � 皴轺囫 忄� 塍鼬� 怦邈� 磬忮溧螯�� � 隋潲睃 � 鲥腓蝈膻 泥轼�." )
	MisBeginCondition(NoRecord, 395)
	MisBeginCondition(NoMission, 395)
	MisBeginCondition(HasRecord,394)
	MisBeginAction(AddMission,395)
	MisBeginAction(GiveItem, 1051, 1, 4)	----------------莫邪项链	
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 泥轼�")
	
	MisHelpTalk("<t>扬屮栩� 磬轵� 邋!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------追忆
	DefineMission(593, "� 镳铠腩�", 395, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>� 犷驽,� 徨耨铐龛鲟 疋钿栩 戾�� � 箪�...!")
	MisResultCondition(NoRecord, 395)
	MisResultCondition(HasMission,395)
	MisResultAction(ClearMission,395)
	MisResultAction(SetRecord, 395)
       -----------------------------------------------------达赫的恶梦
	DefineMission(594,"暑囵 泥轼�",396)
	
	MisBeginTalk( "<t>� 礤 耧嚯� 箧� 礤溴膻! 湾溧忭� � 戾�� 磬鬣腓顸 觐囵�,眍 � 礤 祛汶� 镱��螯 桴 耢豚. � 潴爨� 灶牦�-项牦� 耢铈弪 恹�耥栩� 黩� � 玎 耥�. 蔓 忮潼 镱祛驽蝈 祉�?" )
	MisBeginCondition(NoRecord, 396)
	MisBeginCondition(NoMission, 396)
	MisBeginCondition(HasRecord,395)
	MisBeginAction(AddMission,396)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 灶牦�-项牦襦")
	
	MisHelpTalk("<t>袜殇栩� 邈� 镱耜铕邋!")
	MisResultCondition(AlwaysFailure)
----------------------------------------------------达赫的恶梦
	DefineMission(5065,"暑囵 泥轼�",396)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>� 泥轼� 磬鬣腓顸 觐囵�? � 钽� � � 铒囫嚯�� 犷朦 怦邈�...")
	MisResultCondition(NoRecord, 396)
	MisResultCondition(HasMission,396)
	MisResultAction(ClearMission,396)
	MisResultAction(SetRecord, 396)
	

---------------------------------------------------------------狐道士作怪
	DefineMission(595,"暑珥� 髓顸桴 溧铖桉蝾�",397)

      MisBeginTalk("<t>吾眍 � 礤 镱祛汔� 漯筱桁 � 镱疋�龛屐, 眍 � 蝈�� 铗 戾溧朦铐, 溧 � 襦� 螓 恹汶�滂 麇耱睇�. 亦� � 猁螯, 皲咫帼 桉觌屙桢. 袜 铗 疣�.<n><t>�*�! 蒡� 驽 <y髓耔� 溧铖桉�>. 橡铙麒 10 桤 桴 珉钿邋� (3322, 2460)!")

      MisBeginCondition(HasRecord,396)
      MisBeginCondition(NoRecord,397)
      MisBeginCondition(NoMission,397)
      MisBeginCondition(HasItem,1051,1)----------莫邪项链
      MisBeginAction(TakeItem,1051,1)
      MisBeginAction(AddMission,397)
      MisBeginAction(AddTrigger, 3971, TE_KILL, 748, 10)
   
      MisCancelAction(SystemNotice, "This quest cannot be abandoned")
      MisNeed(MIS_NEED_DESP, "俞彘蝈 10 髓顸桴 溧铖桉蝾�.")
      MisNeed(MIS_NEED_KILL, 748, 10, 10, 10)

      MisHelpTalk("<t>俞彘 10 髓顸桴 溧铖桉蝾� 磬 铖蝠钼� 洛耥�.")  
      MisResultTalk("<t>饮 铟屙� 桉镱腠栩咫屙. � 镱黩� 躅黧 皲咫囹� 蝈�� 疋铊� 篦屙桕铎.")
      MisResultCondition(HasMission, 397 )
      MisResultCondition(HasFlag, 397, 19)
      MisResultAction(AddMoney,100000)
      MisResultAction(ClearMission, 397 )
      MisResultAction(SetRecord, 397)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 748 )
      TriggerAction( 1, AddNextFlag, 397, 10, 10 )
      RegCurTrigger( 3971 )
-------------------------------------------------------为达赫解梦
	DefineMission(5066,"朽玢噤嚅 耦� 泥轼�",992)
	
	MisBeginTalk( "<t>湾 耱铊� 犭嚆钿囵眍耱�. � 怦邈溧 疣� 镱祛鼽 眢驿帼祚�. 悟镳噔��轳� � 隋潲睃 � 磬殇� <b泥轼�>  (1352, 499)." )
	
	MisBeginCondition(HasRecord,397)
	MisBeginCondition(NoRecord, 992)
	MisBeginCondition(NoMission, 992)
	MisBeginAction(AddMission,992)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 泥轼�, 黩钺� 镱祛鼽 疣玢噤囹� 邈� 耥�")
	
	MisHelpTalk("<t>� 龛觐沅� 礤 疣耜瘥忄� 疋铄 桁�, 觐沅� 蜮铕� 躅痤� 溴豚, 镱蝾祗 黩� � 灶牦� 项牦�!")
	MisResultCondition(AlwaysFailure)
----------------------------------------------------为达赫解梦
	DefineMission(5067,"朽玢噤嚅 耦� 泥轼�",992)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>彦瘘彗眍? � 磬觐礤�-蝾 耢钽� 镱耧囹� 皴泐漤�! 骂琰扈 � 溴睃汨 � 磬沭噤�.")

	MisResultCondition(HasMission,992)
	MisResultCondition(NoRecord, 992)
	MisResultAction(ClearMission,992)
	MisResultAction(SetRecord, 992)
	MisResultAction(AddMoney,20000)

	------------------------------------------------------------布丽娜的恶梦
       DefineMission(596,"暑囵 铃腓礓�",398)
	
	MisBeginTalk( "<t>湾 祛汶� 猁 恹 祉� 镱祛鼽? 填� 镱漯筱� 铃脲滂磬...忸钺� � 礤� 蝾驽 镳钺脲禧 耦 耥铎." )
	MisBeginCondition(NoRecord, 398)
	MisBeginCondition(NoMission, 398)
	MisBeginCondition(HasRecord,992)
	MisBeginAction(AddMission,398)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 铃腓滂眢 (1360, 519)")
	
	MisHelpTalk("<t>蔓 磬� 邋?")
	MisResultCondition(AlwaysFailure)
	----------------------------------------------布丽娜的恶梦
	 DefineMission(597,"暑囵 铃腓礓�",398)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>泥轼� 镱镳铖桦� 忄� 疣珙狃囹�? � � 铟屙� 蝠铐篁�.")
	MisResultCondition(NoRecord, 398)
	MisResultCondition(HasMission,398)
	MisResultAction(ClearMission,398)
	MisResultAction(SetRecord, 398)	
	------------------------------------------------解救布丽娜
	 DefineMission(598,"扬囫� 铃腓礓�",399)
	
	MisBeginTalk( "<t>湾耜铍� 漤彘 磬玎� 祉� 镳桉龛腭� 觐囵. � 礤 镱祉�! 族� 眍 礤 镱祉� 黩� 蜞� 猁腩...疣耨镳铖栩� 镱驵塍轳蜞 灶牦�-项牦襦,忸珈铈眍 铐 耢铈弪 镱祛鼽." )
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoMission, 399)
	MisBeginCondition(HasRecord,398)
	MisBeginAction(AddMission,399)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 灶牦�-项牦襦")
	
	MisHelpTalk("<t>蔓 妁� 礤 磬� 邈�?")

	MisResultTalk("<t>扬囫栳�. 蔓 铟屙� 漕狃�. 项漕驿栩� !湾耜铍� 扈眢� 磬玎� � 耠嚯� 黩� 灶牦�-项牦� 棂弪 忄�.")
	MisResultCondition(NoRecord, 399)
	MisResultCondition(HasMission,399)
	MisResultCondition(HasRecord,950)
	MisResultAction(ClearMission,399)
	MisResultAction(SetRecord, 399)

	--------------------------------------------------------灵异水晶球
	DefineMission( 599, "惕翳麇耜栝 躔篑蜞朦睇� �", 996 )

	MisBeginTalk( "<t>� 汔溧� 蝾朦觐 觐沅� 怦� 祛� 篑腩忤� 恹镱腠屙�. � 耦玟帼 襦禧� 祛泱耱忮眄 震篑蜞朦睇� 剜�, � 觐蝾痤� 狍潴� 耠嚆囹� 脲沐礓�, 眍 祉� 漕 耔� 镱� 礤 踱囹噱� 2 <y肃珞痦 牮桉蜞腚�>, 觐蝾瘥� 祛骓� 磬轵� � <b棋耱铌钽� 牮钼噔钽� 恹镱腌��> � 礼赅痤礤  (2550, 400) � 3 <y杨忮瘌屙睇� 署桉蜞腚�> � <b暑囵眍泐 镳铌��蝾泐 蝠箫�> � 礼赅痤礤 (360, 1340) 饮 驽 祉� 礤 铗赅驽?" )------------++++++
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoRecord, 996)
	MisBeginCondition(NoMission, 996)
	MisBeginCondition(HasMission,399)
	MisBeginAction(AddMission, 996)
	MisBeginAction(AddTrigger, 9961, TE_GETITEM, 3366,2 )		--蓝色水晶
	MisBeginAction(AddTrigger, 9962, TE_GETITEM, 1635, 3 )		--水晶纯石
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

        MisNeed(MIS_NEED_DESP, "青镱祉�! 橡桧羼� 2 <y肃珞痦 牮桉蜞腚�> � 3 <y杨忮瘌屙睇� 牮桉蜞腚�>!")
	MisNeed(MIS_NEED_ITEM, 3366,2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 1635, 3, 20, 3)


	MisResultTalk("<t>� 珥嚯, 黩� 螓 忮痦屮�, 眍 礤 珥嚯, 黩� 蜞� 猁耱痤.")
	MisHelpTalk("<t>昨� 蜞觐�? 青溧龛� 磬耱铍� 镳铖蝾� 黩� 螓 礤 祛驽 邈� 玎忮瘌栩�?")
	MisResultCondition(HasMission, 996)
	MisResultCondition(HasItem, 3366, 2 )
	MisResultCondition(HasItem, 1635, 3 )
	
	MisResultAction(TakeItem, 3366, 2 )
	MisResultAction(TakeItem, 1635, 3 )
	
	MisResultAction(ClearMission, 996)
	MisResultAction(SetRecord, 996 )---------------------set996
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	


	InitTrigger()
	TriggerCondition( 1, IsItem,3366)	
	TriggerAction( 1, AddNextFlag, 996, 10, 2 )
	RegCurTrigger( 9961 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1635)	
	TriggerAction( 1, AddNextFlag, 996, 20, 3 )
	RegCurTrigger(9962 )

	----------------------------------------------------------------------------狐妖作怪
	DefineMission( 5000, "橡铌噻� 疏鲶礤", 950 )

	MisBeginTalk( "<t>###...**##%! 袜 铗 疣� <y疏鲶礤> (3306, 2444) � 洛耥钽疣溴 恹琨忄弪 镳钺脲禧. 湾 溧� 桁 箝蜩, 筢彘 5 箨!" )
	MisBeginCondition(NoRecord, 950 )
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoMission, 950 )
	MisBeginCondition(HasRecord,996)-----------------
	MisBeginAction(AddMission,  950 )
	MisBeginAction(AddTrigger,  9501, TE_KILL,761, 5 )	----------狐妖
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "俞彘蝈 5 疏鲶礤 � 忮痦栩羼�!")
	MisNeed(MIS_NEED_KILL,761,5, 10, 5)

	MisResultTalk("<t>朽耨赅骅 耜铕邋 铃腓礓� (1360, 519) � 躅痤� 眍忸耱��.")
	MisHelpTalk("<t>侦�... 义徨 耱疣�? 湾箧咫� 筢栝耱忸 5 觇鲶睃 蜞觐� ��驽腩� 玎��蜩�?")
	MisResultCondition(HasMission,  950 )
	MisResultCondition(NoRecord,  950)
	MisResultCondition(HasFlag,  950, 14 )
	MisResultAction(ClearMission, 950 )
	MisResultAction(SetRecord,  950  )
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 761)	
	TriggerAction( 1, AddNextFlag,   950 , 10,5)
	RegCurTrigger(   9501 )

---------------------------------------------------------------------狐仙作怪

	DefineMission( 5001, "橡铌噻� 祗漯钽� 腓襦", 951 )

	MisBeginTalk( "<t>蒡� 礤 耠篦嚅眍耱�, 黩� 铐� 钺滂龛腓顸 黩钺� 疣琊篪囹� 怦� 磬 疋铄� 矬蜩. 青 桁 蝾黜� 牝�-蝾 耱铊�. � 疱�, 黩� � <y腆漯 髓�>  (3135, 2469). 俞彘 邈�, � 螓 狍溴 礤镫铛� 忸珥嚆疣驿屙. 义徨 眢骓� 筢栩� 怦邈� 1." )--------++++++0
	MisBeginCondition(NoRecord, 951 )
	MisBeginCondition(HasRecord, 399)
	MisBeginCondition(NoMission, 951 )
	MisBeginAction(AddMission,  951)
	MisBeginAction(AddTrigger,  9511, TE_KILL, 776, 1 )----------------狐仙
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 腆漯钽� 髓襦")
	MisNeed(MIS_NEED_KILL,776,1, 10, 1)

	MisResultTalk("<t>疹螯, 腆漯 髓� � 礤 痤忭� 蝈徨, 螓 猁� 忮腓觐脲镥�. � 磬沭噫� 蝈�� 铗 腓鲟 怦艴 蝈�, 觐泐 祗鬣 觐囵�.")
	MisHelpTalk("<t>务蝾痤骓�! 腆漯 髓� 桤 洛耥钽疣溧 狍溴� 蝈�� 耦犭噻��螯!")
	MisResultCondition(HasMission,  951)
	MisResultCondition(NoRecord,  951)
	MisResultCondition(HasFlag,  951, 10 )
	MisResultAction(ClearMission,  951 )
	MisResultAction(SetRecord,  951  )
	MisResultAction(AddExp,2500000,2500000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 776)	
	TriggerAction( 1, AddNextFlag,  951 , 10,1)
	RegCurTrigger(   9511 )

-----------------------------------------------------------------------重大秘密

	DefineMission( 5002, "令朦� 皴牮弪",952 )

	MisBeginTalk( "填腩漕� 麇腩忮�, � 忤骟, 黩� � 蝈徨 牮铄蝰� 礤赅� 蜞轫�. � 躅黧 蝈徨 镱祛鼽, 眍 祉� 觐�-黩� 戾弪. 项祛汨 祉� 桤徉忤螯�� 铗 镱戾蹊 - <y骤觌铐梓羼觐� 体潴琨> (3750, 1275), 觐蝾痼� 祛骓� 磬轵� � 锑汨麇耜铎 侮遴礤." )
	MisBeginCondition(NoRecord,952 )
	MisBeginCondition(HasRecord, 951)
	MisBeginCondition(NoMission,952 )
	MisBeginAction(AddMission, 952)
	MisBeginAction(AddTrigger,9521, TE_KILL, 621, 1 )		----迅捷的暴风水母
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	 MisNeed(MIS_NEED_DESP, "俞彘蝈 1 骤觌铐梓羼牦� 体潴珞 � 锑汨麇耜铎 侮遴礤!")----------++++1
	MisNeed(MIS_NEED_KILL,621,1, 10, 1)

	MisResultTalk("<t>项泐滂, � 镱汔溧� 蝈徨.")
	MisHelpTalk("<t>扬铌铋睇� 疣轭� (3750, 1275) 猁� 玎踱圜屙 体潴玎扈.")
	MisResultCondition(HasMission,952 )
	MisResultCondition(HasFlag, 952, 10 )
	MisResultAction(ClearMission, 952 )
	MisResultAction(SetRecord,952 )
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 621)	
	TriggerAction( 1, AddNextFlag,  952 , 10,1)
	RegCurTrigger( 9521 )
------------------------------------------------------------------罗森精神

	DefineMission( 5003, "捏� 蓄豚礓�", 953)
	
	MisBeginTalk( "<t>� 忸聃棂帼顸 漕狃� � 耢咫� 膻潼扈, 蜞觇扈 赅� 螓. 青汶�眢� 蝈徨 � 潴, � 筲桎咫, 黩� 螓 耦耱��蝈朦睇� 麇腩忮�. 饮 眍耔 � 皴徨 玎忮龛� 蓄豚礓�. 篷腓 躅麇 箸磬螯 镱犷朦, 塍鼬� 怦邈� 耧痤耔螯 <b燕磴 蔫> � 洛耥钽疣溴 (3287, 2501).")
	MisBeginCondition(NoRecord, 953 )
	MisBeginCondition(HasRecord, 952)
	MisBeginCondition(NoMission, 953 )
	MisBeginAction(AddMission, 953 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 燕磴 蔫, 黩钺� 箸磬螯 � 捏蹂 蓄豚礓�")
	MisHelpTalk("<t>雾� 蝈徨 镱祛驽�.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------罗森精神

	DefineMission(5004,"捏� 蓄豚礓�",953,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>项麇祗 牝�-龛狍潼 钺�玎蝈朦眍 箫铎�礤� � 蓄豚礓� 镳� 祉�? 蒡� 祛� 泐腩忭�� 犷朦!")
	MisResultCondition(HasMission, 953)
	MisResultCondition(NoRecord, 953)
	MisResultAction(ClearMission, 953)
	MisResultAction(SetRecord, 953)

-----------------------------------------------------治疗裴蒂

	DefineMission( 5005, "锐鲥腓 燕磴 蔫", 954 )

	MisBeginTalk( "<t>项躅驽, � 玎犷脲豚. 填� 耔臌 镱镳铖蝮 镱觇溧 戾��. 填驽� 螓 镱驵脲屮� 戾�� � 镱祛驽 磬轵� <y锐鲥��簋 磬觇潢�>, 蜞� 赅� 膻犷� 镥疱溻桄屙桢 恹琨忄弪 � 戾�� 犷朦. � 耠嚯, 黩� 羼腓 � 磬溴眢 邋, 蝾 耩噻� 恹脲黧顸. 篷腓 礤�, 蝾 � 龛麇� 礤 耢钽� 蝈徨 镱祛鼽." )
	MisBeginCondition(NoRecord, 954)
	MisBeginCondition(HasRecord,  953)
	MisBeginCondition(NoMission, 954)
	MisBeginAction(AddMission,  954)
	MisBeginAction(AddTrigger,  9541, TE_GETITEM,  0376,1 )		
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	 MisNeed(MIS_NEED_DESP, "橡桧羼栩� 1 锐鲥��簋 磬觇潢� 铗 义痧囗耜钽� 赅镨蜞磬")
	MisNeed(MIS_NEED_ITEM,  0376,1, 10, 1)
	
	MisResultTalk("<t>扬囫栳�, 黩� 镱祛� 耱囵篪赍!")
	MisHelpTalk("<t>义痧囗耜钽� 赅镨蜞磬 祛骓� 磬轵� � 礼赅痤礤 (546,  2726).")-------------------+++++2
	MisResultCondition(HasMission,  954)
	MisResultCondition(NoRecord, 954)
	MisResultCondition(HasItem, 0376, 1 )
	MisResultAction(TakeItem,  0376, 1 )
	MisResultAction(ClearMission,  954)
	MisResultAction(SetRecord,  954 )
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,800000,800000)	
	

	InitTrigger()
	TriggerCondition( 1, IsItem,0376)	
	TriggerAction( 1, AddNextFlag,954, 10, 1 )
	RegCurTrigger( 9541 )

------------------------------------------------------------------魔力骨头粉

	DefineMission( 5006, "暑耱睇� 镱痤� 暑脘箜�.", 955 )

	MisBeginTalk( "<t>蒡� 磬觇潢� 祉� 耦怦屐 礤 镱祛汶�. 填驽� 铐� 犷朦 礤翦牝桠磬, 镱蝾祗 黩� 螓 蜞� 漕脬� 躅滂�? 饮 礤箪咫. 义镥瘘 蝈徨 眢骓� 镱麒龛螯 邋. 橡桧羼� 祉� 3 <y锑汨麇耜桴 暑耱�> 铗 <b鸯屦蝾眍耥钽� 殃咫弪�-梭黜桕�>  (919, 1581). � 疣珙蝠� 桴 � 镱痤� � 镱覃镫� 磬 磬觇潢�." )
	MisBeginCondition(NoRecord,  955)
	MisBeginCondition(HasRecord,  954)
	MisBeginCondition(NoMission, 955)
	MisBeginAction(AddMission,  955)
	MisBeginAction(AddTrigger,  9551, TE_GETITEM,  1626,3 )		
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	 MisNeed(MIS_NEED_DESP, "俞彘蝈 鸯屦蝾眍耥 耜咫弪钼-塍黜桕钼 � 镳桧羼栩� 3 忸滕遽睇� 觐耱�")
	MisNeed(MIS_NEED_ITEM,  1626,3, 10, 3)
	
	MisResultTalk("<t>饮 磬祉钽� 猁耱疱�!")
	MisHelpTalk("<t>骂滕遽眢� 觐耱� 祛骓� 磬轵� � 鸯屦蝾眍耥 耜咫弪钼-塍黜桕钼 � 礼赅痤礤 (919,  1581).")--------------------++++++3
	MisResultCondition(HasMission,  955)
	MisResultCondition(NoRecord, 955)
	MisResultCondition(HasItem, 1626, 3 )
	MisResultAction(TakeItem,  1626, 3 )
	MisResultAction(ClearMission,  955)
	MisResultAction(SetRecord,  955 )
	MisResultAction(AddExp,200000,200000)
	MisResultAction(AddMoney,700000,700000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,1626)	
	TriggerAction( 1, AddNextFlag, 955, 10, 3 )
	RegCurTrigger( 9551 )
------------------------------------------------------------------------高级营养品

	DefineMission( 5007, "西屙� 镨蜞蝈朦睇� 镳钿箨�", 956)

	MisBeginTalk( "<t>� 恹汶�骟 塍鼬�? 篷腓 猁 祉� 牝�-龛狍潼 镱祛� 耧桦栩� <y蓄� 砧戾瘥> � 砧戾瘥 � 礼赅痤礤 (662, 2460), � 猁 镱潆鬻桦囫� � 怦镱祉桦� 礤觐蝾瘥� 忮... 蒡铗 牝�-蝾 耠篦嚅眍 礤 螓...?" )
	MisBeginCondition(NoRecord,  956)
	MisBeginCondition(HasRecord,  955)
	MisBeginCondition(NoMission, 956)
	MisBeginAction(AddMission,  956)
	MisBeginAction(AddTrigger,  9561, TE_GETITEM,  4783,1 )		
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 砧戾� � 镳桧羼栩� 1 蓄� 蹊戾瘥")
	MisNeed(MIS_NEED_ITEM,  4783,1, 10, 1)
	
	MisResultTalk("<t>悟腓黜�, 蜞� 溴疰囹�!")
	MisHelpTalk("<t>丸赅觇� 镱溧痍钼 铗 戾�� 镱赅 礤 磬殇屮� 痤� 蹊戾瘥.")
	MisResultCondition(HasMission,  956)
	MisResultCondition(NoRecord, 956)
	MisResultCondition(HasItem, 4783, 1)
	MisResultAction(TakeItem,  4783, 1 )
	MisResultAction(ClearMission,  956)
	MisResultAction(SetRecord,  956)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	

	InitTrigger()
	TriggerCondition( 1, IsItem,4783)	
	TriggerAction( 1, AddNextFlag, 956, 10, 1 )
	RegCurTrigger( 9561 )
---------------------------------------------------------------------------遗忘的过去
	 DefineMission(5008,"青猁蝾� 镳铠腩�",957)
	
	MisBeginTalk( "<t>袜忮痦�, 祉� 眢骓� 疣耨赅玎螯 蝈徨 蝾, � 麇� � 稃蜞豚顸 玎猁螯, 镱蝾祗 黩� 蝈�� 镱耠嚯 镳邃耜噻囹咫� 箐圜�. 埋� 玎猁忄 疋铄 镳铠腩� 疣眍 桦� 镱玟眍, � 螓 礤 桉觌屙桢. 湾 耢铗痂 蜞� 磬 戾��. � 礤 祛泱 忮痦篁� 蜮铊 忸耧铎桧囗��. 蒡� 蝾, 黩� 螓 漕腈屙 铗赅螯 襦�. 洛瘐钼睇� 起弼 缅睃� � 剜轵囗� (862, 3500) 祛驽� 蝈徨 镱漶赅玎螯. <b朽琨 戾��, 觐沅� 螓 漕耱桡礤 疱珞朦蜞蝾�>!" )
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(NoMission, 957)
	MisBeginCondition(HasRecord,956)
	MisBeginAction(AddMission,957)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� � 剜轵囗� 洛瘐钼眍泐 起弼� 缅睃铐� (862, 3500) 潆� 溧朦礤轼桴 桧耱痼牿栝.")
	
	MisHelpTalk("<t>� 缅睃铐� (862, 3500) 羼螯 潆� 蝈�� 耦忮�. ")
		
	MisResultTalk("<t>项桉� 忸耧铎桧囗栝 礤 钺�玎蝈朦眍 皲咫噱� 蝈�� 聍囫螂桠. � 忤骟, 黩� 螓 镱蝈���. 袜 襦祛� 溴脲 怦� 漕忸朦眍 镳铖蝾, 眍 镥疱� 桁 螓 漕腈屙 祉� 镱祛鼽 觐� � 麇�.")
	MisResultCondition(NoRecord, 957)
	MisResultCondition(HasMission, 957)
	MisResultCondition(HasRecord, 999)---
	MisResultAction(ClearMission, 957)
	MisResultAction(SetRecord,  957 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)


------------------------------------------------------------------------克隆之回魂汤（1）

	DefineMission(5009,"洋� 镟��蜩",958)
	
	MisBeginTalk( "<t>亦� 螓 躅麇 怦镱祉栩� 镳铠腩�? 意铄 镳铠腩� 耧栩 沅�-蝾 � 蜮铄� 祛玢�. 义徨 眢骓� 恹镨螯 <b洋� 相��蜩>, 黩钺� 疣玑箐栩� 镟��螯.  绣鲥矧 耋镟 镟��蜩 铟屙� 耱疣眄. 昨� 箐桠栩咫�, 蝾朦觐 <b橡桧�-茵栩铐>  (1254, 3491) 珥噱� 疱鲥矧. <b洛痦桉� 觐 祉� 赅� 镱塍麒 疱鲥矧>." )
	MisBeginCondition(NoRecord, 958)
	MisBeginCondition(NoMission, 958)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord,957)
	MisBeginCondition(IsChaType,1)
	MisBeginAction(AddMission,958)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 橡桧鲟-茵栩铐�, 黩钺� 箸磬螯 疱鲥矧 耋镟 镟��蜩.")
	
	MisHelpTalk("<t>橡桧鲟-茵栩铐� 祛骓� 磬轵� 磬 徨疱泱 (1254, 3491)")
	MisResultTalk("<t>青牮铋 汶噻� � 恹镥� 漕 漤�.<n><t>饮 猁� 耦玟囗 镱 镱漕徼� 令汔 疹徼 磬 铖蝠钼� 腻祛眍�. 缅礤疣蝾� 骅珥� No.1 耦玟嚯 蝈�� 桤 钿桧铟羼蜮�. 铃� 襦祛耦躔囗屙��, 螓 猁� 筢栩 觌囗铎 溴祛眍�, 觐蝾痤 蝈�� 镳桠咫�. � 铗 祛戾眚 蜮铊 耔臌 镳钺箐桦桉�. 意铊 眍恹� 耧铖钺眍耱� 磬镳噔桦� 蝈�� 忸 忭篁瘘 铖蝠钼�, � 龛黩� 礤 祛汶� 蝈�� 铖蜞眍忤螯. 袜觐礤�, 螓 漕狃嚯�� 漕 骂痤� 橡噔潲. 亦�, 螓 箸磬� 橡噔潴 . 项耠� 汶筢铌钽� 耥� 螓 镳钺箐桦�� 麇疱� 100 脲� � 镱�怆屙桢� 暑脘箜� 髓祛磬. 蚂羼蝈 恹 铗镳噔桦桉� � 矬蝈耱忤� 桉赅螯 耦牮钼棂�. 族疱� 2 泐溧 恹 疣珙桉�; 铐� 镳钿铍驵豚 桉赅螯 耦牮钼棂�, � 螓 铗镳噔桦�� 玎 疋铄� 戾黩铋.<n><t>洛痦桉� � 疣琨 邋 <b燕磴 蔫>  (3287, 2501) � 洛耥钽疣溴. 泥 犭嚆铖豚忤� 蝈�� 妙耧钿�.")
	
	MisResultCondition(NoRecord, 958)
	MisResultCondition(HasRecord, 962)
	MisResultCondition(HasMission, 958)
	MisResultCondition(HasItem, 1043, 1 )--------回魂汤
	MisResultAction(TakeItem,  1043, 1 )
	MisResultAction(ClearMission, 958)
	MisResultAction(SetRecord,  958 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,600000,600000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	
---------------------------------------------------------------------------血石（1）

	DefineMission(5010,"署钼噔 赅戾睃",959)
	
	MisBeginTalk( "<t>绣鲥矧 洋镟 相��蜩 � 羿扈朦睇� 皴牮弪. 亦� 黩� 邈� 礤朦�� 镥疱溧螯 觐祗-蝾 蜞� 镳铖蝾. 篷腓 蝾朦觐 螓 礤 镱祛驽 祉� 磬轵� 蝾, 黩� � 蜞� 漕脬� 棂�, 署钼噔 赅戾睃. 湾耜铍� 漤彘 磬玎� � 箸磬� 黩� 赅戾睃 �  <b洋镥痨箜�>  (1080, 3086). <b朽琨 戾�� 赅� 蝾朦觐 � 蝈�� 镱�忤蝰� 署钼噔 赅戾睃>!" )
	MisBeginCondition(NoRecord, 959)
	MisBeginCondition(NoMission, 959)
	MisBeginCondition(HasMission, 958)
	MisBeginCondition(NoRecord,958)
	MisBeginAction(AddMission,959)

	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 洋镥痨箜�")
	
	MisHelpTalk("<t>洋镥痨箜 � 桤忮耱睇� 徉礓栩 � 锑汨麇耜铎 侮遴礤")
	

	MisResultTalk("<t>洋镥痨箜 - 桎桀�. 雾 礤 镱龛爨弪 黩� � 玎 赅戾睃, � 赅� 铐 � 礤泐 蝾朦觐 铌噻嚯��? � 钽� 赅祉� 恹耦赅� 鲥磬. � 铐 钿桧 桤 塍鼬桴 耩邃� 怦艴 牮钼噔 赅祉彘... 青狍潼, 徨耧铍彗眍 蝈徨 黩�-腓犷 钺��耥�螯.")
	MisResultCondition(NoRecord, 959)
	MisResultCondition(HasMission, 959)
	MisResultCondition(HasRecord, 960)
	MisResultCondition(HasItem, 1040, 1)
	MisResultAction(TakeItem, 1040, 1 )
	MisResultAction(ClearMission, 959)
	MisResultAction(SetRecord,  959 )

	
---------------------------------------------------------------------------邀请函（1）

	DefineMission( 5011, "橡桡豚龛�", 960 )
	
	MisBeginTalk( "<t>� 漕腈屙 镱赅玎螯 疋铄 筲噫屙桢 镳桧鲶-茵栩铐�, 眍 祉� 耦怦屐 礤 猁� 桧蝈疱皴� 赅戾睃 � � 铗溧� 邈� 掬桉� (906, 3539). 项 聍囫螂桠铋 耠篦嚅眍耱�, � 邈� 镳桡豚耔� 磬 恹耱噔牦 赅祉彘. 襄疱溧� 屐� 镳桡豚龛�. � � 箫铎�眢 钺 铎 � 镳桡豚龛�. 逾屦屙, 铐 蝈徨 镱祛驽�... 羼腓 螓 屐� 镱眇噔桫�." )
	MisBeginCondition(NoRecord, 960)
	MisBeginCondition(HasMission, 959)
	MisBeginCondition(NoMission,960)
	MisBeginCondition(NoRecord,959)
	MisBeginAction(AddMission, 960)
	MisBeginAction(GiveItem, 1041, 1, 4)	----------邀请函	
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "悟镳噔� 镨顸祛 拎黻桊� 掬桉�.")
	
	MisHelpTalk("<t>湾 皲忤眢腭� � 戾耱�?")
	MisResultCondition(AlwaysFailure)
	
-----------------------------------------------------------------------邀请函（1）

	DefineMission(5012,"橡桡豚龛�",960,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>枢� 祛骓� 黩�-蝾 玎狃囹�, 黩� 箧� 镱溧痂�? 湾忸钺疣玷祛! 皖 镱耜铍� 螓 礤 磬耱铍� 牮囫桠, 赅� �, � 蝈徨 镱祛泱")
	MisResultCondition(NoRecord, 960)
	MisResultCondition(HasMission, 960)
	MisResultCondition(HasItem, 1041, 1)
	MisResultAction(TakeItem, 1041, 1 )
	MisResultAction(GiveItem, 1040, 1,4)--------------血石
	MisResultAction(ClearMission, 960 )
	MisResultAction(SetRecord,  960 )
	MisResultBagNeed(1)

	-----------------------------------------------------------------回魂汤药方(1) 
	DefineMission(5014, "绣鲥矧 洋镟 镟��蜩", 961 )

	MisBeginTalk( "<t>软沭桎桢眚� 潆� 耋镟 镟��蜩 襦禧� 镳铖螓�: 10 <y奏耱彘 鲤噌耜铋 族痦铋 棋祺箧桧�> 项塍眍黜铋 蜞眦钼鳆 桤 洛腓觐泐 谚礤泐 (3289, 1746), 1 <y翌腭螓� 踱铖� 镳铉疣黜钽� 恹镱腌��> 殃瘥蝽钽� 令朦泐 蔓镱腌�� � 锑汨麇耜铎 侮遴礤 (900, 1308). 项蝾� 眢骓� � 怦� 镳桡铗钼栩� 镱 耧弼栲朦眍� 蝈蹴铍钽梃. 杨徨痂 桧沭桎桢眚� � � 怦� 镳桡铗钼膻. " )
	MisBeginCondition(NoRecord, 961)
	MisBeginCondition(HasRecord, 959)
	MisBeginCondition(NoMission, 961)
	MisBeginAction(AddMission, 961)
	MisBeginAction(AddTrigger, 9611, TE_GETITEM, 1234,10)		
	MisBeginAction(AddTrigger, 9612, TE_GETITEM, 1260, 1 )
	
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	 MisNeed(MIS_NEED_DESP, "袜殇栩� 1 蝾腭螓� 踱铖� 镳铉疣黜钽� 恹镱腌�� � 10 鬣耱彘 麇痦铋 囵噌耜铋 驽祺箧桧�")
	MisNeed(MIS_NEED_ITEM, 1234,10, 10,10)
	MisNeed(MIS_NEED_ITEM, 1260, 1, 20, 1)
	
	MisResultTalk("<t>绣鲥矧 礤朦�� 龛觐祗 镥疱溧忄螯, 桦� 螓 镱镫囹桫� 疋铄� 骅珥! � 蝈镥瘘 忮痦桉� � 骛弼� � 镥疱溧� 屐� �.")
	MisHelpTalk("<t>蒡� 牦耦� 赍犟�, 蝈镥瘘 螓 蜞觐� 耔朦睇�!")
	MisResultCondition(HasMission,961)
	MisResultCondition(NoRecord, 961)
	MisResultCondition(HasItem, 1234, 10 )
	MisResultCondition(HasItem, 1260, 1 )
	
	MisResultAction(TakeItem, 1234, 10 )
	MisResultAction(TakeItem, 1260, 1 )
	
	MisResultAction(ClearMission, 961)
	MisResultAction(SetRecord, 961 )
	MisResultAction(GiveItem, 1043, 1, 4)-------回魂汤
	MisResultAction(AddExp,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1234)	
	TriggerAction( 1, AddNextFlag, 961, 10, 10 )
	RegCurTrigger(9611 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1260)	
	TriggerAction( 1, AddNextFlag, 961, 20, 1 )
	RegCurTrigger(9612 )
	
	
------------------------------------------------------降温黑珍珠(1) 

	DefineMission( 5015, "橡铛豚漤�� 麇痦�� 驽祺箧桧�", 962 )

	MisBeginTalk( "<t>丸觐沅� 猁 礤 镱潴爨�, 黩� 橡桧�-茵栩铐 蜞� 镳铖蝾 镱溴腓蝰� � 蝾犷� 疱鲥矧铎. O! � 黧螯 礤 玎猁� 襦祛� 汶噔眍�. 洋� 相��蜩 铟屙� 泐��麒�. 陪� 祛骓� 恹镨螯 蝾朦觐 羼腓 邈� 铛豚滂螯. 义徨 眢骓� 漕耱囹� 1 <y族痦簋 棋祺箧桧�>, 觐蝾疣� 镱祛驽� 铛豚滂螯 耋�." )
	MisBeginCondition(NoRecord,  962)
	MisBeginCondition(HasRecord,  961)
	MisBeginCondition(NoMission,962)
	MisBeginAction(AddMission,  962)
	MisBeginAction(AddTrigger,  9621, TE_GETITEM,  3362,1)--------黑珍珠		
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "项塍麒蝈 1 族痦簋 棋祺箧桧�")
	MisNeed(MIS_NEED_ITEM,  3362,1, 10, 1)
	
	MisResultTalk("<t>锐镱朦珙忄龛� 麇痦铋 驽祺箧桧� 铟屙� 忄骓�!")
	MisHelpTalk("<t>项躅驽, 黩� 忮, 觐蝾瘥� 螓 棂妁� 祛骓� 磬轵� � 疏鲶礤 � 髓顸邈� 泥铖桉蜞 (3322, 2460).")-------------------++++++++4
	MisResultCondition(HasMission,  962)
	MisResultCondition(NoRecord,962)
	MisResultCondition(HasItem, 3362, 1 )
	MisResultAction(TakeItem,  3362, 1 )
	MisResultAction(ClearMission,  962)
	MisResultAction(SetRecord,  962)
	MisResultAction(AddExp,500000,500000)
	MisResultAction(AddMoney,200000,200000)

	InitTrigger()
	TriggerCondition( 1, IsItem,3362)	
	TriggerAction( 1, AddNextFlag, 962, 10, 1 )
	RegCurTrigger( 9621 )



------------------------------------------------------------------女神的基因之健忆胶囊（2）
	DefineMission(5017,"枢锺箅� 镟��蜩",963)
	
	MisBeginTalk( "<t>饮 躅麇 忸耜疱耔螯 镳铠腩�? 意铄 镳铠腩� 耧栩 � 蜮铄� 泐腩忮. 义徨 眢骓� 恹镨螯  <b洋� 相��蜩> 黩钺� 镳钺箐栩� 镟��螯. 绣鲥矧 洋镟 镟��蜩 耱疣眄. 昨� 箐桠栩咫�, 蝾朦觐 <b橡桧�-茵栩铐>  (1254, 3491) 珥噱� 疱鲥矧. <b骂玮疣轳� 觐 祉�, 赅� 蝾朦觐 疣玟钺箐屮� 疱鲥矧>." )
	MisBeginCondition(NoRecord, 963)
	MisBeginCondition(NoMission, 963)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(IsChaType,3)----菲利尔
	MisBeginAction(AddMission,963)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 亦桧耱忮眄簋 拎狍�, 黩钺� 镱塍麒螯 赅锺箅� 镟��蜩.")
	
	MisHelpTalk("<t>亦桧耱忮眄�� 拎狍� � 鲤沐眚� (2159, 2792).")
	MisResultTalk("<t>埋�! 饮 猁耱痤 耧疣忤腭�. � 箧� 镱祛腓豚顸 玎 蝈��. 青牮铋 汶噻� � 恹镥� 漕 觐眦�. <n><t>饮 猁� 蜞豚眚腓恹� 祛��觐� 觐痤脲怦觇� 牮钼彘. 饮 镱塍麒� 塍鼬邋 祛瘃觐� 钺疣珙忄龛� � 镫 螓 钺豚溧屮� 镳邂铖躅漤铋 沐龛铍钽桢�, 饮 恹桡疣� 耦疱忭钼囗桢 祛��觐� � 灭铎钽疣溴, 觐沅� 蝈徨 猁腩 10 脲�. 皖 桉镱朦珙忄龛� 玎镳妁屙睇� 铕箐栝 疱珞朦蜩痤忄腩 滂耜忄腓翳赅鲨彘. 埋� 蜮铄 蝾怦蜮�, 脲睃, � 蝾, 黩� 螓 龛觐沅� 礤 玎潴禧忄屮� � 镱耠邃耱忤��, 疱珞朦蜞� 蝾泐, 黩� 螓 祛驽 骅螯 蝾朦觐 漕 30 脲�. 皖, 磬 铖蝠钼� 腻祛眍� 玎忮蝰睇� 耠钼� 镳钺箐桦� 蝈��: 蜞� 赅� 蝈徨 镳邃耱铊� 爨腩 骅螯, 螓 漕腈屙 镱蝠囹栩� � 怵屐� 磬 蝾, 黩� 蝈徨 溴轳蜮栩咫� 躅麇蝰� 溴豚螯. � � 蝾, 黩� 蝾腙噱� 蝈�� 怙屦邃.<n><t>朽琨 <b燕磴 蔫> � 洛耥钽疣溴 (3287, 2501). 泥 犭嚆铖豚忤� 蝈�� 妙耧钿�.") 
	MisResultCondition(NoRecord, 963)
	MisResultCondition(HasMission, 963)
	MisResultCondition(HasRecord, 967)
	MisResultCondition(HasItem,  1050, 1 )-------健忆胶囊
	MisResultAction(TakeItem,  1050,1 )
	MisResultAction(ClearMission, 963)
	MisResultAction(SetRecord,  963 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,600000,600000)	
	MisResultAction(AddExpAndType,2,60000,60000)

--------------------------------------------------------------------泪之琥珀（2）
	DefineMission(5018,"唔蜞痦�� 耠彗�",964)
	
	MisBeginTalk( "<t>填腩漕� 麇腩忮�, 赅锺箅� 镟��蜩 礤皴� � 皴徨 铟屙� 忄骓铄 镱耠囗桢. � 邈� 箸磬 蝾朦觐 蝈, 牝� 溴轳蜮栩咫� 漕狃 � 麒耱 皴痄鲥�.<n><t>疹螯 � 皴轺囫 � 耱囵��, � 猁豚 铟屙� 溧驽 龛麇泐 � 祛腩漕耱�. 泥驽 镳桧� 玎 祉铋 篚噫桠嚯. 皖 � 祛屐 皴痄鲥 蝾朦觐 <b肃磴�> 桤 剜轵囗�. 项潴爨螯 蝾朦觐, � 礤 忤溴豚 邈� 蜞� 溧忭�. 填驽 镥疱溧螯 屐� �眚囵眢� 耠彗�?" )
	MisBeginCondition(NoRecord, 964)
	MisBeginCondition(NoMission, 964)
	MisBeginCondition(HasMission, 963)
	MisBeginCondition(NoRecord,963)
	MisBeginAction(AddMission,964)
	MisBeginAction(GiveItem, 2303, 1, 4)---------+++++????
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)	
	MisNeed(MIS_NEED_DESP, "项祛汨蝈 蜞桧耱忮眄铋 拎狍� 镥疱溧螯 �眚囵眢� 耠彗� 肃磴� � 剜轵囗� (852, 3549).")
	
	MisHelpTalk("<t>青麇� 桉赅螯 镳铠腩�, 羼腓 祛骓� 猁螯 聍囫螂桠 � 磬耱���.")
	
	MisResultCondition(AlwaysFailure)
	----------------------------------------------------------------------泪之琥珀（2）
	DefineMission(5019,"唔蜞痦�� 耠彗�",964,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>扬囫栳�, � 珥帼 赅觐泐 彘, 眍 怦� 礤怦邈溧 耠篦噱蝰� 赅� 蝾泐 躅麇� 皴痄鲥. 泥驽 羼腓 铐� 狍溴� 镳钿铍驵螯 戾�� 驿囹�, � 礤 耢钽� 猁螯 � 礤�. 襄疱溧� 彘 <b填� 央钼�>, 黩钺� 忮 铖蜞腓顸 磬 疋铊� 戾耱圊.")
	MisResultCondition(NoRecord, 964)
	MisResultCondition(HasMission, 964)
	MisResultCondition(HasItem,2303, 1)-------------++++++???
	MisResultAction(TakeItem, 2303, 1 )-------------++++++????
	MisResultAction(ClearMission,964)
	MisResultAction(SetRecord,  964)
	MisResultAction(AddMoney,80000,80000)	
		
	

---------------------------------------------------------------补钙（２）


	DefineMission( 5020, "骂耨蜞眍怆屙桢 赅朦鲨�", 965)

	MisBeginTalk( "<t>疹痤, 黩� 铐 蜞� 耜噻嚯, 礤觐蝾瘥� 耱铊� 驿囹�. 填驽�, � 镱蝾祗 黩� � 镫铛� 皴�� 黧怦蜮簋. 祉� 蜞� 礤 踱囹噱� 赅朦鲨�, � � 龛赅� 礤 祛泱 箨疱镨螯 疋铪 耧桧�. 篷腓 螓 漕狍溴 潆� 戾�� 1 <y扬桧眍� 镫噔龛� 漓弪桉蝾忸泐 腻朦翳磬> � 锑汨麇耜铎 侮遴礤 (900, 2000), � 耢钽� 蝈徨 镱祛鼽." )--------------+++++5
	MisBeginCondition(NoRecord,  965)
	MisBeginCondition(HasRecord,  964)
	MisBeginCondition(NoMission,965)
	MisBeginAction(AddMission,  965)
	MisBeginAction(AddTrigger,  9651, TE_GETITEM,  1296,1)	
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "念耱囗� 扬桧眍� 镫噔龛� 漓弪桉蝾忸泐 腻朦翳磬 潆� 亦桧耱忮眄铋 拎狍腓, 黩钺� 忸耨蜞眍忤螯 疣鲨铐 赅朦鲨�")
	MisNeed(MIS_NEED_ITEM,  1296,1, 10, 1)
	
	MisResultTalk("<t>饮 蜞觐� 祗驽耱忮眄!")
	MisHelpTalk("<t>� 戾�� 蜞� 犷腓� 耧桧� � 眍汨. 蒗...")
	MisResultCondition(HasMission,965)
	MisResultCondition(NoRecord, 965)
	MisResultCondition(HasItem, 1296, 1 )
	MisResultAction(TakeItem,  1296, 1)
	MisResultAction(ClearMission,  965)
	MisResultAction(SetRecord,  965)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,1296)	
	TriggerAction( 1, AddNextFlag,965, 10, 1 )
	RegCurTrigger( 9651 )

--------------------------------------------------复活叶（２）
	DefineMission(5021, "捂桠��栝 觌邂屦", 966 )

	MisBeginTalk( "<t>疹螯 螓 祉� � 镱祛�, 眍 � 礤 躅黧 黩钺� 牝�-蝾 珥嚯 � 祛桴 忮麝圊, � 蝾朦觐 戾痱恹� 礤 恹溧 皴牮弪�!<n><t>湾 犷轳�, 镱耜铍� 螓 祉� 镱祛�, � 溧� 蝈徨 妁� 钿桧 眈. 橡桧羼� 祉� 1 <y捂桠��栝 孰邂屦>. 雾 漕腈屙 猁螯 � 义痧囗耜钽� 羊囵彘睇 � (1381, 3134). 篷腓 螓 恹骅忮, � 礤 蝾朦觐 蝈�� 龛 筢, 眍 � 疣耨赅骟 怦�-怦� 镳� 赅锺箅� 镟��蜩."  )
	MisBeginCondition(NoRecord,  966 )
	MisBeginCondition(HasRecord,  965)
	MisBeginCondition(NoMission, 966 )
	MisBeginAction(AddMission,  966 )
	MisBeginAction(AddTrigger,  9661, TE_GETITEM,  3143,1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

        MisNeed(MIS_NEED_DESP, "橡桧羼栩� 铈桠��栝 觌邂屦, 黩钺� 耧囫蜩 疋铪 骅珥�!")
	MisNeed(MIS_NEED_ITEM,  3143,1, 10, 1)
	
	MisResultTalk("<t>项躅驽, 蜮铄 怵屐� 妁� 礤 镳桫腩!")
	MisHelpTalk("<t>念耱囗� 1 铈桠��栝 觌邂屦 � 义痧囗耜钽� 羊囵彘睇 � 锑汨麇耜铎 侮遴礤 (1381, 3134).")-----------------------++++++++6
	MisResultCondition(HasMission,  966 )
	MisResultCondition(NoRecord, 966 )
	MisResultCondition(HasItem, 3143, 1 )
	MisResultAction(TakeItem,  3143,1 )
	MisResultAction(ClearMission,  966 )
	MisResultAction(SetRecord, 966 )
	MisResultAction(AddExp,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,3143)	
	TriggerAction( 1, AddNextFlag, 966 , 10, 1 )
	RegCurTrigger( 9661 )

--------------------------------------------------------------------------------------副作用(2)
	DefineMission( 5022, "项犷黜 翦牝", 967 )

	MisBeginTalk( "<t>项耜铍� 螓 忸耧铍钼嚯�� 忸珈铈眍耱, � 疣耨赅骟 蝈徨 镳噔潴. � 戾�� 羼螯 赅锺箅� 镟��蜩. 篷腓 螓 邋 聱屮�, 蝾 怦镱祉桫� 镳铠腩�, 眍 赅� 镱犷黜 翦牝, 螓 玎狍溴 磬耱���. 昨钺� 钽� 礤 耠篦桦铖�, 磬殇� 1 <y义祉簋 牮钼� 蔓镱腌��> � <b殃瘥蝽钽� 令朦泐 蔓镱腌��> � 锑汨麇耜铎 铌遴礤 (900, 1308)." )------------------++++++++7
	MisBeginCondition(NoRecord,  967)
	MisBeginCondition(HasRecord,  966 )
	MisBeginCondition(NoMission, 967)
	MisBeginAction(AddMission,  967)
	MisBeginAction(AddTrigger,  9671, TE_GETITEM,  1351,1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "锐镱朦珞轵� 义祉簋 牮钼� 蔓镱珥�")
	MisNeed(MIS_NEED_ITEM,  1351,1, 10, 1)
	
	MisResultTalk("<t>妙蝾忸, 橡桧羼� � 起弼�. � 铟屙� 耜瘥蝽 麇腩忮�, 龛觐祗 钺� 祉� 礤 泐忸痂!")
	MisHelpTalk("<t>项棂� 1 狍螓朦 蝈祉铋 牮钼� 恹镱腌��")
	MisResultCondition(HasMission, 967)
	MisResultCondition(NoRecord, 967)
	MisResultCondition(HasItem, 1351, 1 )
	MisResultAction(TakeItem,  1351,1 )
	MisResultAction(ClearMission, 967)
	MisResultAction(SetRecord,  967)
	MisResultAction(GiveItem, 1050, 1, 4)-------健忆胶囊
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1351)	
	TriggerAction( 1, AddNextFlag, 967, 10, 1 )
	RegCurTrigger( 9671 )


		
	
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------混血儿之美丽过往(3) 
	DefineMission(5024,"橡尻疣耥铄 镳铠腩�",968)
	
	MisBeginTalk( "<t>饮 躅麇 箸磬螯 疋铄 玎猁蝾� 镳铠腩�? 意铄 镳铠腩� 耧栩 � 蜮铄� 泐腩忮. 昨钺� 疣玑箐栩� 疋铄 镳铠腩�, 螓 漕腈屙 磬鬣螯 膻徼螯. 饮 妁� 镱祉桫� <惕礤腚�>  (1244, 3186)? � 礤� 羼螯 礤耜铍� 忸耧铎桧囗栝, 觐蝾瘥� 螓 棂屮�. <b洛痦桉� 磬玎�, 觐沅� 螓 磬殇屮� 黩�-龛狍潼 潆� 忸耨蜞眍怆屙�� 蜮铄� 镟��蜩>." )
	MisBeginCondition(NoRecord, 968)
	MisBeginCondition(NoMission, 968)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord,957)
	MisBeginCondition(IsChaType,2)
	MisBeginAction(AddMission,968)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 惕礤腓�")
	
	MisHelpTalk("<t>惕礤腚� 祛骓� 磬轵� � 锑汨麇耜铎 侮遴礤")
	MisResultTalk("<t>袜溴� 惕礤腚� 恹脲麒豚 疋铊 犷腓 � 皴痄鲥. 悟镥� 镱腩忤眢 钽� � 玎牮铋 汶噻�.<n><t>饮 猁� 痤驿屙 铗 麇腩忮赅 � 溴祛磬. 意铋 铗弼 猁� 钿龛� 桤 镫屐屙� 腻祛眍�, � 蝾 怵屐� 赅� 蜮�� 爨螯 猁豚 溴怊铐觐� 桤 瘥徉鲫钽� 泐痤潢�. 暑沅� 蝈徨 猁腩 12, 骅蝈腓 溴疱忭� 箸磬腓 赍� �怆弪�� 蜮铋 铗弼 � 耦驺腓 邈� 漕 螂�. 意�� 爨螯 镳桉铄滂龛豚顸 � 礤祗 镱珂�. 饮 磬鬣� 疋铄 矬蝈耱忤� � 镨顸祛� � 痼赍 铗 蜮铄泐 铗鲟 � 镳铖铋 礤 礤磬忤溴螯 麇腩忮麇耱忸. 皖 赅� 蝾朦觐 膻滂 箸磬忄腓 牝� 螓 磬 襦祛� 溴脲, 龛牝� 礤 狃嚯�� 蝈�� 磬龛爨螯 磬 觐疣犭�. 埋�, 黩� � 蝈�� 猁腩 - � 耱疣耱� � 祛瘙 � 潴, 耱疣驿簌�� 镳桕膻麇龛�. 项耠� 耢屦蜩 蜮铄泐 铗鲟, 螓 镱觌�腭� 膻徼螯 惕礤腚� 忮黜�. 饮 玎猁� 钺 铎... 湾箐桠栩咫�, 黩� � 礤邋 疣玑栩� 皴痄鲥.<n><t>朽琨 <b燕磴 蔫> � 洛耥钽疣溴 (3287, 2501). 泥 犭嚆铖豚忤� 蝈�� 妙耧钿�") 
	MisResultCondition(NoRecord, 968)
	MisResultCondition(HasMission, 968)
	MisResultCondition(HasRecord, 972)
	MisResultCondition(HasItem, 1042, 1 )
	MisResultAction(TakeItem, 1042, 1 )
	MisResultAction(ClearMission, 968)
	MisResultAction(SetRecord,  968 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
---------------------------------------------------烧过的蜡烛(3)
	DefineMission(5025, "锐镱朦珙忄眄�� 疋鬻�", 969 )

	MisBeginTalk( "<t>饮 躅麇 箸磬螯 � 疋铄� 镳铠腩�? 橡铖蜩, 祛� 镟��螯 箅弪篦桦囫� 忪羼蝈 � <y锐镱朦珙忄眄铋 砚鬻铋>. 篷腓 螓 漕耱囹铟眍 耔脲�, 黩钺� 漕耱囹� 邋 � <b义祉钽� 灭�玷腓> , 蝾 � 耢钽� 镱祛鼽." )------------------++++++8
	MisBeginCondition(NoRecord,  969)
	MisBeginCondition(HasMission, 968)
	MisBeginCondition(NoRecord,  968)
	MisBeginCondition(NoMission, 969)
	MisBeginAction(AddMission,  969)
	MisBeginAction(AddTrigger,  9691, TE_GETITEM,  4823,1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "项塍麒蝈 1 桉镱朦珙忄眄簋 疋鬻� 潆� 惕礤腚�")
	MisNeed(MIS_NEED_ITEM,  4823,1, 10, 1)
	
	MisResultTalk("<t>项骖驽, � 蝈�� 蜞豚眚!")
	MisHelpTalk("<t>袜殇栩� 1 桉镱朦珙忄眄簋 疋鬻�")
	MisResultCondition(HasMission, 969)
	MisResultCondition(NoRecord, 969)
	MisResultCondition(HasItem, 4823, 1 )
	MisResultAction(TakeItem,  4823,1)
	MisResultAction(ClearMission,  969)
	MisResultAction(SetRecord,  969)
	MisResultAction(AddExp,80000,80000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,4823)	
	TriggerAction( 1, AddNextFlag, 969, 10, 1 )
	RegCurTrigger( 9691 )

---------------------------------------------------------复原往事(3)
	DefineMission(5026,"骂耨蜞眍忤螯 镳铠腩�",970)
	
	MisBeginTalk( "<t>� 耦驵脲龛�, 镳铠腩� 篪腩. 疹螯 疋鬻� � 磬殇屙�, 邋 铟囵钼囗桢 镳铒嚯�. 篷腓 螓 溴轳蜮栩咫� 躅麇 箸磬螯 镳铠腩�, 耧痤耔 �  <y清朦� 骂耨蜞眍怆屙��> � <b蔫蝌�>. <b洛痦桉� 觐 祉�, 觐沅� 磬殇屮� 珏朦� 忸耨蜞眍怆屙��>" )
	MisBeginCondition(NoRecord, 970)
	MisBeginCondition(NoMission, 970)
	MisBeginCondition(HasRecord, 969)
	MisBeginAction(AddMission,970)
	MisBeginAction(AddTrigger,  9701, TE_GETITEM,  1042,1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "项塍麒 清朦� 骂耨蜞眍怆屙�� � 蔫蝌�")
	
	MisHelpTalk("<t>蔫蝌�, 羼蝈耱忮眄�, � 鲤沐眚� (2250, 2770).")
	MisResultTalk("<t>� 恹腓豚 镱腩忤眢 磬 疋鬻�, 磬镥忄�: 祛驽� 腓 膻犷恻 猁螯 忮黜铋.<n><t>� 蝈�� 羼螯 躅螯 赅觐�-蝾 镳邃耱噔脲龛�? 饮 觐沅�-蝾 膻徼� 戾��... 埋� � 镳铠腩�. 湾 躅黧 犷朦 龛麇泐 泐忸痂螯. 悟礤耔 铖蜞怿邋�� <b缅睃铐�>.")
	MisResultCondition(HasMission,970)
	MisResultCondition(NoRecord, 970)
	MisResultCondition(HasRecord, 971)
	MisResultCondition(HasItem,1042, 1 )----------复原剂
	MisResultAction(TakeItem, 1042, 1 )
	MisResultAction(ClearMission, 970)
	MisResultAction(SetRecord, 970)
	MisResultAction(GiveItem, 1042, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1042)	
	TriggerAction( 1, AddNextFlag, 970, 10, 1 )
	RegCurTrigger(9701 )

	--------------------------------------------------复原剂原料(3)

	DefineMission( 5027, "软沭邃桢眚 潆� 珏朦� 忸耨蜞眍怆屙��", 971 )

	MisBeginTalk( "<t>� 戾�� 犷朦 礤� 清朦� 骂耨蜞眍怆屙��. � 蝾祗 驽, � 猁� 耠桫觐� 玎���, 黩钺� 耦狃囹� 桧沭桎桢眚�... 篷腓 螓 漕狍溴 3 <y羊桁箅�蝾疣> � 梭泐忸泐 铍屙� � 礼赅痤礤 (1503, 2698), 3 <y奏� 令漯�麝�> � 湾箫铌铄眄 骂桧钼 � 礼赅痤礤 (511, 1721) � 1 <y义祉簋 牮钼� 蔓镱腌��> � 殃瘥蝽钽� 令朦泐 蔓镱腌�� � 锑汨麇耜铎 侮遴礤 (900, 1308)." )-------------++++++9
	MisBeginCondition(NoRecord, 971 )
	MisBeginCondition(HasMission, 970)
	MisBeginCondition(NoRecord, 970)
	MisBeginCondition(NoMission, 971)
	MisBeginAction(AddMission, 971 )
	MisBeginAction(AddTrigger, 9711, TE_GETITEM, 1351,1)		
	MisBeginAction(AddTrigger, 9712, TE_GETITEM, 3134, 3 )
	MisBeginAction(AddTrigger, 9713, TE_GETITEM, 3147, 3 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "袜殇栩� 1 义祉簋 署钼� 蔓镱腌��, 3 羊桁箅�蝾疣 � 3 奏� 令漯�麝� 潆� 蔫蝌�")
	MisNeed(MIS_NEED_ITEM, 1351,1, 10,1)
	MisNeed(MIS_NEED_ITEM, 3134, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM,  3147,3, 30, 3)

	MisResultTalk("<t>饮 怦� 耦狃嚯 蜞� 猁耱痤. 妈滂祛, 螓 蝾痤镨��. � 镱蝠圜� 漕镱腠栩咫铄 怵屐�, 黩钺� 皲咫囹� 清朦� 骂耨蜞眍怆屙��. 蒡� 玎殪弪 耦怦屐 礤祉钽� 怵屐屙�!")
	MisHelpTalk("<t>篷腓 螓 镱蝠囹桫� 犷朦 怵屐屙� - � 礤 珥圜栩, 黩� 螓 镱塍麒 犷朦 镳栳�")
	MisResultCondition(HasMission, 971)
	MisResultCondition(NoRecord, 971)
	MisResultCondition(HasItem, 1351, 1 )
	MisResultCondition(HasItem, 3134, 3 )
	MisResultCondition(HasItem,  3147, 3)
	
	MisResultAction(TakeItem, 1351, 1 )
	MisResultAction(TakeItem, 3134, 3 )
	MisResultAction(TakeItem,  3147, 3 )
	
	MisResultAction(GiveItem, 1042, 1, 4)
	MisResultAction(ClearMission, 971)
	MisResultAction(SetRecord, 971 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1351)	
	TriggerAction( 1, AddNextFlag, 971, 10, 1 )
	RegCurTrigger(9711 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3134)	
	TriggerAction( 1, AddNextFlag, 971, 20, 3 )
	RegCurTrigger(9712 )
	InitTrigger()
	TriggerCondition( 1, IsItem,  3147)	
	TriggerAction( 1, AddNextFlag, 971, 30, 3 )
	RegCurTrigger(9713 )
	--------------------------------------------------------------释放爱情(3)
	DefineMission( 5028, "湾 鲥镫�轳� 玎 膻犷恻", 972)
	
	MisBeginTalk( "<t><b惕礤腚�>, 忤滂祛, 铟屙� 沭篑蝽�. 饮 铟屙� 驽耱铌. 篷腓 螓 镱塍鬣屮� 箐钼铍蜮桢 铗 邋 犷腓, � 礤 狍潴 蝈徨 镱祛汔螯. 篷腓 驽 � 礤 蜞�, 蝾 潆� 礤� 狍溴� 塍鼬� 怦� 玎猁螯... 蒡� 祟蝮耥 孰邂屦." )
	MisBeginCondition(NoRecord, 972)
	MisBeginCondition(HasRecord, 971)
	MisBeginCondition(NoMission, 972)
	MisBeginCondition(HasItem, 1042, 1 )
	MisBeginAction(AddMission, 972)
	MisBeginAction(GiveItem, 1054, 1, 4)		
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "悟溧� 祟蝮耥 孰邂屦 惕礤腚�")
	
	MisHelpTalk("<t>惕礤腚� � 锑汨麇耜铎 侮遴礤(1244, 3186)")
	MisResultCondition(AlwaysFailure)
------------------------------------------------------------------释放爱情(3)
	DefineMission(5029, "湾 鲥镫�轳� 玎 膻犷恻", 972 ,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>� 耦汶帏篑�, 羼腓 螓 戾�� 铗矬耜噱 潆� 耧囫屙��.") 
	MisResultCondition(NoRecord, 972)
	MisResultCondition(HasMission, 972)
	MisResultCondition(HasItem, 1054, 1 )
	MisResultAction(TakeItem, 1054, 1 )
	MisResultAction(ClearMission, 972)
	MisResultAction(SetRecord,  972)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------诞生之太极石(4)

	DefineMission(5031,"彦疣",973)
	
	MisBeginTalk( "<t>饮 躅麇 怦镱祉栩� 镳铠腩�? 橡铠腩� 耧栩 � 蜮铄� 泐腩忮. 饮 漕腈屙 磬轵� <y2 彦瘥>. 篷腓 耠铈栩� 2 皴瘥 忪羼蝈, 铐� 祛泱� 恹玮囹� 麇腩忮麇耜铄 爨沩栩眍� 镱脲, 耱桁箅桊簋� 泐腩忭铋 祛玢 镳钺箐栩� 忸耧铎桧囗��. 扬痤耔 钺 铎 <b肃磴�> 桤 剜轵囗�, 黩钺� 箸磬螯 镳� 皴痼. 妙忸���, 黩� 铐 怦蝠鬻嚯 邋 疣睃. <b洛痦桉� 觐 祉�, 觐沅� 疣琨 皴痼>." )----------------++++++10
	MisBeginCondition(NoRecord, 973)
	MisBeginCondition(NoMission, 973)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(IsChaType,4)
	MisBeginAction(AddMission,973)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 肃磴� � 剜轵囗� � 箸磬轵� � 皴疱.")
	
	MisHelpTalk("<t>肃磴� � 蝾麝� (852, 3549)")
	MisResultTalk("<t>饮 铗镳� 填瘃觐泐 暑痤��. 饮 镱躅� 磬 疱徨黻� � 龛觐沅� 礤 恹疣耱屮�. 项耜铍� � 蝈徨 镳桉篁耱怏 铖钺 沐睇, 螓 祛驽 钺螯�� � 镳桊钿铋, 疣玢钼囵桠囹� � 骅忸蝽� � 祛眈蝠囔�. 饮 祛驽 脲麒螯  � 耦玟噔囹� 忮, 礤忮漕禧� 觐祗-腓犷 妁�. 褥屙眍 桤-玎 桴 沐眍�, 蝈�� 镳羼脲潴 膻滂. 暑沅� 蝈徨 猁腩 12, 蝈徨 磬漕咫� 耜瘥忄螯�� � 螓 镳桤忄� 鲶磬扈, 箜梓蝾驵邋 怦�, 黩� 镳羼脲漕忄腩 蝈��. � 蝈� 镱� 龛牝� 礤 耢邋� 恹耠彐桠囹� 蝈�� � 腩忤螯, � 螓 耱嚯 钿龛� 桤 襦禧� 桤忮耱 牮桁桧嚯 噔蝾痂蝈蝾�. 项珂� 螓 镳桉铄滂龛腭� � 翔疣蝰觐� 暑爨礓� 澡腚桉 � 耱嚯 矬蝈耱忸忄螯 忪羼蝈 � 龛扈.<n><t>朽琨 <b燕磴 蔫> � 洛耥钽疣溴 (3287, 2501). 泥 犭嚆铖豚忤� 蝈�� 妙耧钿�.") 
	MisResultCondition(NoRecord, 973)
	MisResultCondition(HasMission, 973)
	MisResultCondition(HasRecord,  977)
	MisResultCondition(HasItem, 1045, 1)----------阴石
	MisResultCondition(HasItem, 1048, 1)-----------阳石
	MisResultAction(TakeItem,  1045, 1 )
	MisResultAction(TakeItem,  1048, 1 )
	MisResultAction(ClearMission, 973)
	MisResultAction(SetRecord,  973 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
------------------------------------------------------诚信藏宝图
	DefineMission(5032,"枢痱� 耦牮钼棂 磬犷骓铖蜩",974)
	
	MisBeginTalk( "<t>饮 镳桫咫 箸磬螯 � 彦疱? 蒡� 猁腩 溧忭�. 埋� 溴疰嚯铖� � 皴牮弪� 桤-玎 蝾泐, 黩� 铐� 祛驽� 恹玮囹� 赅蜞耱痤趔. 项铎� 蝈徨 狍溴� 礤脲汴� 箸磬螯 � 皴疱... 念耱噔� � <y枢痱� 杨牮钼棂>  <b橡桧鲶-茵栩铐�> � 锑汨麇耜铎 侮遴礤 (1254, 3491)." )
	MisBeginCondition(NoRecord, 974)
	MisBeginCondition(NoMission,974)
	MisBeginCondition(HasMission, 973)
	MisBeginCondition(NoRecord,973)
	MisBeginAction(GiveItem, 1053, 1, 4)------诚信藏宝图
	MisBeginAction(AddMission,974)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	--MisBeginAction(AddTrigger, 9741, TE_GETITEM, 1044,1)
	MisBeginBagNeed(1)	
		
	MisNeed(MIS_NEED_DESP, "襄疱溧轵� 赅痱� 耦牮钼棂 橡桧鲶-茵栩铐�")
	
	MisHelpTalk("<t>疹��� 耠篚�, 黩� 橡桧�-茵栩铐 猁� ��泱铋!")
	
	MisResultCondition(AlwaysFailure)

	------------------------------------------诚信藏宝图

	DefineMission(5033,"枢痱� 耦牮钼棂 磬犷骓铖蜩",974,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>袜 襦祛� 溴脲, 蝾 黩� 铐 蝈徨 溧� � 牦耦� 狍爨骊�, 礤 赅痱� 耦牮钼棂. 饮 礤 稃蜞腭� 铗牮� 邋, 珥圜栩, 蝈徨 祛骓� 漕忮��螯. � 铗牮铪 皴牮弪: 彦疣 耦耱铊� 桤 <y梭眄钽� 赅祉�> � <y杨腠鬻眍泐 赅祉�>. 埋邈� 3 麇腩忮赅 珥帼� 铗 皴牮弪. � 戾�� 羼螯 牦耦麇�  <y梭眄钽� 赅祉�>. 骂琰扈.")
	MisResultCondition(NoRecord, 974)
	MisResultCondition(HasMission,974)
	MisResultCondition(HasItem,1053, 1)
	MisResultAction(TakeItem, 1053, 1 )
	MisResultAction(ClearMission, 974)
	MisResultAction(SetRecord, 974)
	MisResultAction(GiveItem, 1045, 1, 4)--------阴石
	MisResultBagNeed(1)
	--------------------------------------------------阳石的下落
	DefineMission(5034,"项桉觇 杨腠鬻眍泐 赅祉�",975)
	
	MisBeginTalk( "<t>湾 漕腈屙 腓 螓 猁螯 � 矬蜩? 腕 躅痤, � 溧� 蝈徨 镱漶赅珀�.. 饮 祛驽 箸磬螯 � 杨腠鬻眍� 赅祉� � <b蔫蝌�>. 骂琰扈 � <y绣觐戾礓囹咫铄 翔顸祛> 赅� 漕赅玎蝈朦耱忸." )
	MisBeginCondition(NoRecord, 975)
	MisBeginCondition(NoMission, 975)
	MisBeginCondition(HasRecord, 974)
	MisBeginAction(GiveItem, 1046, 1, 4)-------推荐信
	MisBeginAction(AddMission,975)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "隅磬轵� 镱漯钺眍耱� � 蔫蝌�.")
	
	MisHelpTalk("<t>袜殇栩� 蔫蝌� � 鲤沐眚�(2250, 2770)")
	MisResultCondition(AlwaysFailure)

--------------------------------------------------阳石的下落
	DefineMission(5035,"项桉觇 杨腠鬻眍泐 赅祉�",975,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>杨怦屐 爨腩 膻溴� 珥帼� � 皴牮弪� 皴瘥. 拟铄 桤 龛� 龛觐祗 礤 漕忮��. 项玟疣怆��, 螓 镳铠咫 桴 蝈耱.")
	MisResultCondition(NoRecord, 975)
	MisResultCondition(HasMission,975)
	MisResultCondition(HasItem,1046, 1)
	MisResultAction(TakeItem, 1046, 1 )
	MisResultAction(ClearMission, 975 )
	MisResultAction(SetRecord, 975)
	----------------------------------------------养眼水

	DefineMission( 5036, "央彗�", 976 )

	MisBeginTalk( "<t>篷腓 铐� 怦� � 蝈�� 忮���, � 礤 狍潴 犷朦 蜞� 耱痤� � 蝾犷�. <r雾� 耧��蜞眍 � 鲤沐眚�, � 蜞轫铋 觐祉囹� 燕朦恻屦�>. 皖 耦腠鬻睇� 赅戾睃 铟屙� �痍栝 � 铟屙� 怵邃眍 耢铗疱螯 磬 礤泐 徨� 玎蝽 镳桉镱耦犭屙栝. � 皲咫帼 潆� 蝈�� 玎蝽簋 骅潢铖螯, 觐蝾疣� 磬琨忄弪�� 央彗铋. 义徨 眢骓� 镳桧羼蜩  3 <y奏� 令漯�麝�> 铗 湾箫铌铄眄 骂桧钼 � 礼赅痤礤 (511, 1721) , 1 <y谚朦睇� 耧桧眍� 镫噔龛�> 铗 砚桊屣钽� 离爨珥钽� 腻朦翳磬 (2140, 3787) � 令朦� 谚礤� 侮遴礤 � 10 矬琨瘘觐�  <y阻耱铋 忸潲> 铗 象耱睇� 族疱镟� 锑汨麇耜钽� 侮遴磬 (1197, 3270)." )
	MisBeginCondition(NoRecord, 976 )
	MisBeginCondition(HasRecord, 975)
	MisBeginCondition(NoMission, 976)
	MisBeginAction(AddMission, 976 )
	MisBeginAction(AddTrigger, 9761, TE_GETITEM, 1362,1)		
	MisBeginAction(AddTrigger, 9762, TE_GETITEM, 3134, 3 )
	MisBeginAction(AddTrigger, 9763, TE_GETITEM, 1649, 10 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "袜殇栩� 3 鬣� 鬣� 令漯�麝�, 1 耔朦睇� 耧桧眍� 镫噔龛� � 10 矬琨瘘觐� 麒耱铋 忸潲 潆� 镳桡铗钼脲龛� 耠彗�")
	MisNeed(MIS_NEED_ITEM, 1362,1, 10,1)
	MisNeed(MIS_NEED_ITEM, 3134, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 1649,10, 30, 10)

	MisResultTalk("<t>清朦� 泐蝾忸. 填驽 铗镳噔栩� � 鲤沐眚 � 磬轵� <r彦牮弪囵� 燕恻屦�>. 雾 蝈徨 镱祛驿弪 磬礤耱� 珏朦� 磬 汶噻�")
	MisHelpTalk("<t>项驵塍轳蜞, 磬殇� 桧沭桎桢眚� 潆� 央彗�. 青 �, � 溧� 蝈徨 徼脲� 漕 鲤沐眚�.")
	MisResultCondition(HasMission, 976 )
	MisResultCondition(NoRecord, 976)
	MisResultCondition(HasItem, 1362, 1 )
	MisResultCondition(HasItem, 3134, 3 )
	MisResultCondition(HasItem,1649, 10)
	
	MisResultAction(TakeItem, 1362, 1 )
	MisResultAction(TakeItem, 3134, 3 )
	MisResultAction(TakeItem,1649, 10 )
	
	MisResultAction(GiveItem, 1047, 1, 4)------------- 养眼水
	MisResultAction(ClearMission, 976 )
	MisResultAction(SetRecord, 976  )
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1362)	
	TriggerAction( 1, AddNextFlag, 976, 10, 1 )
	RegCurTrigger(9761 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3134)	
	TriggerAction( 1, AddNextFlag, 976 , 20, 3 )
	RegCurTrigger(9762 )
	InitTrigger()
	TriggerCondition( 1, IsItem,1649)	
	TriggerAction( 1, AddNextFlag, 976 , 30, 10 )
	RegCurTrigger(9763 )

--------------------------------------------------------------------------岁月之尘
	DefineMission(5037, "消朦 耱铍弪��", 977)

	MisBeginTalk( "<t>念脬铄 怵屐� 龛牝� 礤 镳桴钿桦 玎 杨腠鬻睇� 赅祉屐. 雾 镱牮 稃朦� 耱铍弪��, 铖钺铋 蹊扈麇耜铋 耋狁蜞眦桢�, 觐蝾疣� 镱汶铢噱� 邈� 疋铋耱忄. 添� 礤钺躅滂� <y燕忄�> 铗  <b冷耜铋 腆扈� B 桤 泪徉漕磬  2>, 黩钺� 箐嚯栩� 蹊扈麇耜栝 磬脲�." )
	MisBeginCondition(NoRecord,  977)
	MisBeginCondition(HasRecord,  976)
	MisBeginCondition(NoMission, 977)
	MisBeginCondition(HasItem, 1047, 1 )
	MisBeginAction(TakeItem, 1047, 1 )
	MisBeginAction(AddMission,  977)
	MisBeginAction(AddTrigger,  9771, TE_GETITEM,  4782,1 )		
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "袜殇栩� 燕忄� � 冷耜铋 腆扈� B � 泪噤漕礤 2")
	MisNeed(MIS_NEED_ITEM,  4782,1, 10, 1)
	
	MisResultTalk("<t>杨腠鬻睇� 赅戾睃 礤忮痤�蝽� 牮囫桠 镱耠� 豚觇痤怅�. � 溧驽 礤 躅黧 邈� 铗溧忄螯. 湾 眢骓� 猁腩 耦汶帏囹�. 骂�, 铗礤耔 <b缅睃铐�>.")
	MisHelpTalk("<t>饮 祛驽 磬轵� 邈� 磬 冷耜铋 祗扈� B � 泪噤漕礤 2.")
	MisResultCondition(HasMission,  977)
	MisResultCondition(HasItem, 4782, 1)
	MisResultAction(TakeItem,  4782, 1 )
	MisResultAction(GiveItem, 1048, 1, 4)------------- 阳石
	MisResultAction(ClearMission,  977)
	MisResultAction(SetRecord,  977 )
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,4782)	
	TriggerAction( 1, AddNextFlag, 977, 10, 1 )
	RegCurTrigger( 9771 )


	--------------------------------------------------魔咒

	DefineMission( 5043, "骂滕遽眍� 镳铌��螯�", 978)

	MisBeginTalk( "<t>� 戾�� 羼螯 徨耧铎铢睇� 狃囹, 觐蝾瘥� 镱镟� 镱� 溴轳蜮桢 礤忮漕禧� 鬣�. 埋�. 黩� 铐 稃蜞弪�� 皲咫囹�, 恹躅滂� 磬钺铕铗. 雾 牦弪 眍汔扈 � 躅滂� 磬 痼赅�. � 耠嚯, 黩� <b锑�> 桤 隋潲龛 (1346, 451) 耱疣溧� 镱漕犴铋 犷脲珥. 湾 祛� 螓 镱祛鼽 祉� 箸磬螯 � 脲赅瘃蜮� 铗 礤泐? <b洛痦桉� 觐 祉�, 觐沅� 镱塍麒 脲赅瘃蜮�>" )
	MisBeginCondition(NoRecord,  978)
	MisBeginCondition(HasRecord, 957)
	MisBeginCondition(NoMission, 978)
	MisBeginAction(AddMission, 978)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 锑耦�")

	MisResultTalk("<t>悟腓黜�! 义镥瘘 祛邈� 狃囹� 祛骓� 耧囫蜩. 扬囫栳�!")
	MisHelpTalk("<t>霹� 礤 泐蝾忸?")
	MisResultCondition(HasMission, 978)
	MisResultCondition(NoRecord,  978)
	MisResultCondition(HasItem, 1052, 1 )--------圣灵护符
	MisResultAction(TakeItem, 1052, 1 )
	MisResultAction(ClearMission, 978)
	MisResultAction(SetRecord, 978 )
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)	
	

-------------------------------------------------土著长矛
	DefineMission( 5045, "碾桧眍� 蝮珏祉铄 觐稂�", 979 )

	MisBeginTalk( "<t>� 镱祉� 赅� 钿桧 祛� 珥嚓铎 疋�眄桕 镱镟� 镱� 镳铌��螯�. 蚂羼蝾 祛腓蜮 铐 耱嚯 镳铌腓磬螯 令汔. 项耠� 蝾泐, 赅� 邈� 桉鲥腓腓, 屐� 猁腩 磬耱铍� 耱眍, 黩� 铐 耢屙桦 忮痼. 锗踵 忸� 镳桕铍... 隋赅瘃蜮� 驽 铟屙� 耱疣眄铄, � � 镱钺妁嚯 叔眚囵�, 黩� 龛觐祗 礤 疣耨赅骟 � 蝾�, 黩� 铐 桉鲥��弪...<n><t>O�! 枢驽蝰�, � 镳钺铍蜞腭�...<n><t>添� 眢骓� 镥疱泐忸痂螯 � 叔眚囵�. � 镱赅 磬殇� 祉� 1 <y碾桧眍� 青蝾麇眄铄 殷珏祉铄 暑稂�> � 铃珞祉钽� 琼圊囵�, 觐蝾瘥� 镳�麇蝰� � 武桧铌铋 徉� 1." )
	MisBeginCondition(NoRecord, 979 )
	MisBeginCondition(HasMission, 978)
	MisBeginCondition(NoRecord, 978 )
	MisBeginCondition(NoMission, 979 )
	MisBeginAction(AddMission, 979)

	MisBeginAction(AddTrigger, 9791, TE_GETITEM, 4739, 1 )		--长矛
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "项塍麒蝈 碾桧眍� 青蝾麇眄铄 殷珏祉铄 暑稂� � 铃珞祉钽� 琼圊囵�")
	MisNeed(MIS_NEED_ITEM, 4739,1, 10, 1)
	
	MisResultTalk("<t>叔眚囵� 戾�� 箧囫眍 磬痼汔�, � 镱腠 镳屙遽疱驽龛屐 � 麇耱� 觌囗�.")
	MisHelpTalk("<t>项塍麒蝈 碾桧眍� 青蝾麇眄铄 殷珏祉铄 暑稂� � 铃珞祉钽� 琼圊囵�")
	MisResultCondition(HasMission, 979)
	MisResultCondition(NoRecord, 979 )
	MisResultCondition(HasItem, 4739, 1 )
	MisResultAction(TakeItem, 4739, 1 )

	MisResultAction(ClearMission, 979)
	MisResultAction(SetRecord, 979)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4739)	
	TriggerAction( 1, AddNextFlag, 979, 10, 1)
	RegCurTrigger( 9791 )
----------------------------------------------------讨伐恐怖的诅咒古尸

	DefineMission(5046, "俞彘 祗扈�", 980 )

	MisBeginTalk( "<t>叔眚囵� 躅麇�, 黩钺� 螓 筢桦 1 <y暑囵眍泐 橡铌��蝾泐 茵箫�>. 袜殇� 戾��, 赅� 蝾朦觐 耧疣忤��.")
	MisBeginCondition(NoRecord,   980)
	MisBeginCondition(HasRecord,  979)
	MisBeginCondition(NoMission,  980)
	MisBeginAction(AddMission,   980)
	MisBeginAction(AddTrigger,   9801, TE_KILL, 508,1 )		
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_KILL,  508,1, 10, 1)
	
	MisResultTalk("<t>念狃� 镱驵腩忄螯 磬玎�, 耢咫 忸桧!")
	MisHelpTalk("<t>暑囵睇� 橡铌��螓� 茵箫 磬躅滂蝰� � 礼赅痤礤 (360, 1340).")----------------+++++11
	MisResultCondition(HasMission,  980)
	MisResultCondition(HasFlag, 980, 10 )
	MisResultAction(ClearMission,   980)
	MisResultAction(SetRecord,   980 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	

	InitTrigger()
	TriggerCondition( 1, IsMonster,508)	
	TriggerAction( 1, AddNextFlag,  980, 10, 1 )
	RegCurTrigger(  9801 )

----------------------------------------------------佐罗面具

	DefineMission(5047,"锑耜� 穷痧�",981)
	
	MisBeginTalk( "<t><b叔眚囵�> 耜噻嚯, 黩钺� 螓 邈� 磬� � (1894, 2798) 羼腓 螓 筢桦 暑囵睇� 镳铌��螓� 蝠箫. 骂� 爨耜� 穷痧� � 镱潋忮疰溴龛� 蝾泐, 黩� 螓 耧疣忤腭�. 雾� 蝈徨 镳桡钿栩�� � 狍潴�." )
	MisBeginCondition(NoRecord, 981)
	MisBeginCondition(NoMission, 981)
	MisBeginCondition(HasRecord, 980)
	MisBeginAction(GiveItem, 1025, 1, 4)----------佐罗面具
	MisBeginAction(AddMission,981)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "项棂栩� 叔眚囵�")
	
	MisHelpTalk("<t>叔眚囵� � 礼赅痤礤")-----------------------++++++12
	MisResultCondition(AlwaysFailure)
	------------------------------------------------佐罗面具
	DefineMission(5048,"锑耜� 穷痧�",981,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>袜 怦蝠鬻� 麒耱�� 耠篦嚅眍耱� 桤-玎 钿眍泐 桎桀蜞... 袜溴�, 螓 戾�� 礤 疣珙鬣痼屮�.")
	MisResultCondition(NoRecord, 981)
	MisResultCondition(HasMission,981)
	MisResultCondition(HasItem,1025, 1)
	MisResultAction(TakeItem, 1025, 1 )
	MisResultAction(ClearMission, 981 )
	MisResultAction(SetRecord, 981 )
-----------------------------------------------------终极密码
	DefineMission( 5049, "澡磬朦睇� 镟痤朦", 982 )

	MisBeginTalk( "<t>项耠� 耢屦蜩 穷痧�, 邈� 爨耜� 猁豚 篁屦�磬. 隋沐礓� 汶囫栩, 黩� 螓 祛驽 镱塍麒螯 疋屦躐镱耦犴铖蜩, 羼腓 镱殪屮� 赅� 彘 镱朦珙忄螯��. 义镥瘘 祉钽� 珉 镨疣蝾� 棂篁 爨耜�. 碾� 耦躔囗眍耱� 祛�� 禧 漕腈睇 磬轵� 爨耜� 镥疴�. 马圜嚯� 磬� 眢驽� 皴牮弪睇� 觐�, 黩钺� 磬鬣螯 耠邃簋� 囡. 痒栩噱蝰�, 黩� 觐� 磬镨襦� 磬 <y务蜩>." )
	MisBeginCondition(NoRecord, 982  )
	MisBeginCondition(HasRecord,981)
	MisBeginCondition(NoMission, 982  )
	MisBeginAction(AddMission, 982 )
	MisBeginAction(AddTrigger, 9821, TE_GETITEM, 4261, 1 )		--水芒
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "项塍麒蝈 务螯 镳铌��蝾� 忸��眍� 翦�.")
	MisNeed(MIS_NEED_ITEM,4261,1, 10, 1)
	
	MisResultTalk("<t>饮 泐痄铖螯 镨疣蝾�!")
	MisHelpTalk("<t>橡铌��蜞� 忸��磬� 翦� 钺栩噱� � 镱溻钿眍� 蝮眄咫� (486, 327).")
	MisResultCondition(HasMission, 982 )
	MisResultCondition(NoRecord,982 )
	MisResultCondition(HasItem, 4261,1 )
	MisResultAction(TakeItem, 4261,1 )
	
	MisResultAction(ClearMission, 982 )
	MisResultAction(SetRecord, 982 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4261)	
	TriggerAction( 1, AddNextFlag,  982 , 10,1)
	RegCurTrigger( 9821 )
-------------------------------------------------宿命之石

	DefineMission( 5050, "枢戾睃 耋潼猁", 983 )

	MisBeginTalk( "<t>袜 爨耜� 镱�忤腓顸 耠钼�: 蚂羼蝈 � 铗蜞腙桠帼� 赅祉屐 玮屦彘 镳桫豚 祛� 耋潼徉. 昨� � 珥圜栩? 泥忄� 镱镳钺箦� 磬轵� <y悟蜞腙桠帼� 赅戾睃 玮屦彘> 耥圜嚯�." )
	MisBeginCondition(NoRecord, 983)
	MisBeginCondition(HasRecord,  982 )
	MisBeginCondition(NoMission, 983 )
	MisBeginAction(AddMission, 983)
	MisBeginAction(AddTrigger, 9831, TE_GETITEM, 2487, 1 )		--兽丹石
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "袜殇栩� 悟蜞腙桠帼� 赅戾睃 玮屦彘 潆� 蝾泐, 黩钺� 镱��螯 黩� 磬镨襦眍 磬 爨耜�")
	MisNeed(MIS_NEED_ITEM,2487,1, 10, 1)
	
	MisResultTalk("<t>悟 蝈�� 忮弪 耢屦螯� 镱耠� 镱躅溧 � 泪噤漕�!")
	MisHelpTalk("<t>饮 祛驽 磬轵� 邈� 磬 冷耜铋 祗扈� A � 泪噤漕礤 2.")
	MisResultCondition(HasMission, 983)
	MisResultCondition(NoRecord, 983)
	MisResultCondition(HasItem, 2487,1 )
	MisResultAction(TakeItem, 2487,1 )
	MisResultAction(ClearMission,983)
	MisResultAction(SetRecord, 983)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2487)	
	TriggerAction( 1, AddNextFlag,  983, 10,1)
	RegCurTrigger(  9831 )

----------------------------------------------------------销毁面具

	DefineMission( 5051, "禹梓蝾纥 爨耜�", 984 )

	MisBeginTalk( "<t>念 钽� 爨耜� 猁豚 � 痼赅� 蝈祉钽� 爨汔, � 蝈镥瘘 铐� 镳铌��蜞... 禹梓蝾驵螯! 塔犷� 牝� 钿屙弪 爨耜� 镳桀狃弪弪 耔臌 � 磬黜弪 箜梓蝾驵螯 扈�. 蒡� 耠桫觐� 铒囫眍, 磬� 磬漕 箜梓蝾骅螯 爨耜�. 妙忸���, 黩�  <y央铎囗睇� 丸灬>  <b相澍邈� 理沐豚 震囗栩咫�>  (335, 2121) 祛驽� 箜梓蝾驵螯 珉�." )
	MisBeginCondition(NoRecord,  984)
	MisBeginCondition(HasRecord,  983)
	MisBeginCondition(NoMission,  984 )
	MisBeginAction(AddMission,  984)
	MisBeginAction(AddTrigger,  9841, TE_GETITEM,4738, 1 )		--破碎的天使光环
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "悟徨痂蝈 央铎囗睇� 龛灬 � 镟澍邈� 囗沐豚-躔囗栩咫�")
	MisNeed(MIS_NEED_ITEM,4738,1, 10, 1)
	
	MisResultTalk("<t>� 潴爨豚, 黩� 镱塍黧 耧铖钺眍耱� 铗 爨耜�. 皖 � 猁豚 怦邈� 腓 戾黩�.")
	MisHelpTalk("<t>相澍栝 囗沐�-躔囗栩咫� � 礼赅痤礤 (335, 2121).")
	MisResultCondition(HasMission, 984)
	MisResultCondition(NoRecord,  984)
	MisResultCondition(HasItem, 4738,1 )
	MisResultAction(TakeItem, 4738,1 )
	
	MisResultAction(ClearMission,  984)
	MisResultAction(SetRecord,  984)
	MisResultAction(AddMoney,300000,300000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4738)	
	TriggerAction( 1, AddNextFlag,   984, 10,1)
	RegCurTrigger(   9841 )

-------------------------------------------------------魔布口袋
	DefineMission( 5052, "青觐脘钼囗磬� 耋礻�", 985 )

	MisBeginTalk( "<t>疹螯 禧 � 桤沩嚯� 怦� 珉� 桤 爨耜�, 彘 镱 镳彐礤祗 礤 耱铊� 漕忮��螯. 佩 蝈祉 耔臌 礤 漕腈睇 镳钺箐栩�. 配桧耱忮眄 耧铖钺 - 桉镱朦珙忄螯 <y青觐脘钼囗眢� 耋礻�>. 缅礤疣� 妈朦�� (2277, 2831) 镱祛驽�. � 箧� 铗镳噔桦 屐� 镨顸祛. 悟礤耔 屐� 爨耜�" )
	MisBeginCondition(NoRecord,   985)
	MisBeginCondition(HasRecord, 984)
	MisBeginCondition(NoMission,  985)
	MisBeginAction(AddMission,  985)
	MisBeginAction(GiveItem, 1025, 1, 4)----------佐罗面具
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "袜殇栩� 缅礤疣豚 妈朦�爨 � 镥疱溧轵� 爨耜�")----------------++++13
	MisHelpTalk("<t>青忤耔祛耱�, 玉蜞腩耱�, 离黜铖螯, 悟鬣�龛�... 杨耱噔��桢 磬� 骅珥�. 添� 眢骓� 玎��螯�� 襦祛疱綦尻耔彘.")
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------魔布口袋
	DefineMission( 5053, "青觐脘钼囗磬� 耋礻�", 985, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>妈滂祛, 螓 礤 蜞觐� 箧 � 嚯黜, 蜞� 赅� 礤 玎躅蝈� 铖蜞忤螯 爨耜� 皴徨. 疹痤! 蒡铗 <y砚�眄 漓箅弪> 叔眚囵� 蝈徨 躅麇� 怵篦栩�, 黩钺� 桉鲥腓螯 镳铌��螯�. 悟礤耔 邈� <b燕磴 蔫 > � 洛耥钽疣� (3287, 2501), 黩钺� 玎觐眵栩� 玎溧龛�.")
	MisResultCondition(NoRecord,  985)
	MisResultCondition(HasMission,  985)
	MisResultCondition(HasItem,1025, 1)
	MisResultAction(TakeItem, 1025, 1 )
	MisResultAction(ClearMission,  985)
	MisResultAction(SetRecord,  985)
	MisResultAction(GiveItem, 1052, 1,4)
	MisResultAction(AddMoney,80000,80000)
	MisResultBagNeed(1)
	
------------------------------------------------------灵符上的金粉

	DefineMission( 5054, "穷腩蜞� 稃朦鲟 磬 砚�眄铎 囔箅弪�", 986 )

	MisBeginTalk( "<t>项珙腩麇眄�� 磬滹桉� 磬 疋�眄铎 囔箅弪� 镱黩� 耱屦豚顸! 填驽�, � 桤-玎 蝾泐, 黩� 桁 礤 镱朦珙忄腓顸 铟屙� 溧忭�? 添� 眢骓� 10 <y穷腩螓� 祛礤�> 黩钺� 耱屦弪� 桴 � 镱痤�, � 囔箅弪 忮痦箅 疋铊 疋铋耱忄. 项祛驽 祉�? 丸麇泐, 羼腓 铗赅驽��... 眍 � 玎狍潴 � 蝾�, 黩� 螓 桉赅�." )
	MisBeginCondition(NoRecord, 986)
	MisBeginCondition(HasRecord, 978)
	MisBeginCondition(NoMission,986 )
	MisBeginAction(AddMission, 986)
	MisBeginAction(AddTrigger, 9861, TE_GETITEM, 2438, 10 )		--金币
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "项棂栩� 珙腩螓� 祛礤螓 潆� 燕磴 蔫 � 暑疣犭彘 耜咫弪钼-镨疣蝾�")
	MisNeed(MIS_NEED_ITEM,2438,10, 10, 10)
	
	MisResultTalk("<t>袜 蝈�� 溴轳蜮栩咫� 祛骓� 镱腩骅螯��!")
	MisHelpTalk("<t>穷腩螓� 祛礤螓 祛骓� 磬轵� 磬 觐疣犭�� 耜咫弪钼-镨疣蝾� � 玎腓忮 耦牮钼棂.")
	MisResultCondition(HasMission, 986)
	MisResultCondition(NoRecord,986)
	MisResultCondition(HasItem,2438,10 )
	MisResultAction(TakeItem, 2438,10 )
	MisResultAction(ClearMission, 986)
	MisResultAction(SetRecord,986)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2438)	
	TriggerAction( 1, AddNextFlag,  986, 10,10)
	RegCurTrigger( 9861 )
-------------------------------------------------------裴蒂的指点
	DefineMission(5055,"雨噻囗�� 燕磴 蔫",987)
	
	MisBeginTalk( "<t>橡噔溧 � 蝾�, 黩� 螓 棂屮� 皴��. � 祛泱 耦钺螯 忄骓簋 眍忸耱�: 袜殇� <b蝾泐, 牝� 祛驽� 镱赅玎螯 矬螯 蜮铄祗 觌囫耋>." )
	MisBeginCondition(NoRecord, 987)
	MisBeginCondition(NoMission,987)
	MisBeginCondition(HasRecord,986)
	MisBeginAction(AddMission,987)	
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 赍�-龛狍潼 牝� 祛驽� 疣耨赅玎螯 � 疣珥 觌囫襦�.")
	
	MisHelpTalk("<t>项麇祗 螓 妁� 玟羼�? 项耧屮�!")
	MisResultCondition(AlwaysFailure)
-----------------------------------------------------裴蒂的指点（比特）
	DefineMission(5056, "雨噻囗�� 燕磴 蔫", 987, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> 燕磴 蔫 忮黜� 漕耱噔��弪 镳钺脲禧!")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

-----------------------------------------------------裴蒂的指点（雷欧）
	DefineMission(5057, "雨噻囗�� 燕磴 蔫", 987, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> 燕磴 蔫 忮黜� 漕耱噔��弪 镳钺脲禧!")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

	-----------------------------------------------------裴蒂的指点（小山车）
	DefineMission(5058, "雨噻囗�� 燕磴 蔫", 987 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> 燕磴 蔫 忮黜� 漕耱噔��弪 镳钺脲禧!")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

	-----------------------------------------------------裴蒂的指点(甘地维拉)
	DefineMission(5059, "雨噻囗�� 燕磴 蔫", 987 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> 燕磴 蔫 忮黜� 漕耱噔��弪 镳钺脲禧!")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual,1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)


-----------------------------------------------------职业介绍人的建议（if剑士）
	DefineMission( 5060, "橡邃腩驽龛� 翔蝈疣",988 )

	MisBeginTalk( "<t>痒囫螯� 怦邈溧 玎蜢邂噱� 钿桧铟羼蜮�. 泥驽 � � 怵屐� 麇腩忮麇耱忸 礤 怦邈溧 珥噱�, 黩� 镳邃镳桧�螯.<n><t>� 蜞觐� 怵屐�, � 猁 蝠屙桊钼嚯��. 项麇祗 猁 � 蝈徨 礤 镱镳钺钼囹�?<n><t>俞彘 徨珞祉钽� 琼圊囵� � 武桧铌铋 徉� 1." )
	MisBeginCondition(NoRecord, 988)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 988 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 988 )
	MisBeginAction(AddTrigger, 9881, TE_KILL, 524, 1 )		--暴怒的蜥蜴人
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_KILL,524,1, 10, 1)
	
	MisResultTalk("<t>饮 恹溧栝�� 麇腩忮�. 左怦蜮箦 皴�� 耔朦礤�? 项玟疣怆��!")
	MisHelpTalk("<t>蒡� 珥圊囵� 铟屙� 疋桊屣. 义徨 磬漕 猁螯 铖蝾痤骓.")
	MisResultCondition(HasMission, 988 )
	MisResultCondition(HasFlag, 988, 10 )
	MisResultAction(ClearMission, 988 )
	MisResultAction(SetRecord, 988 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 524)	
	TriggerAction( 1, AddNextFlag,  988 , 10,1)
	RegCurTrigger(  9881 )

-----------------------------------------------------雷欧的建议（if猎人）
	DefineMission( 5061, "橡邃腩驽龛� 旋�", 989 )

	MisBeginTalk( "<t>帖耠� 怦邈溧 玎蜢邂帼� 耢艴. 泥驽 羼腓 � 蝈�� 狍潴� 怦� 犷汔蝰蜮� 扈疣, 磬耱囗弪 怵屐�, 觐沅� 蝈徨 礤麇泐 狍溴� 溴豚螯. � 蜞觐� 祛戾眚, � 猁 铗镳噔桦�� � 矬蝈耱忤�. 湾 躅麇 镱镳钺钼囹�?<n><t>悟徨痂 1 <y暑痤脲怦牦� 蒽犭屐�> � 拟铕鲱忸泐 羊疣驵 � 礼赅痤礤  (435, 1690)  � 1 <y畦忸� 彦痄鲥 镳桊钿�>  � 羊疱扈蝈朦眍泐 隋耥钽� 铛铗龛赅 � 武桧铌铋 拎� 1." )
	MisBeginCondition(NoRecord, 989)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 989 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 989 )
	MisBeginAction(AddTrigger, 9891, TE_GETITEM, 4789, 1 )		
	MisBeginAction(AddTrigger, 9892, TE_GETITEM, 4741, 1 )	
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "袜殇栩� 暑痤脲怦牦� 蒽犭屐� � 畦忸� 皴痄鲥 镳桊钿�")
	MisNeed(MIS_NEED_ITEM, 4789,1, 10, 1)
	MisNeed(MIS_NEED_ITEM,4741,1, 20, 1)
	
	MisResultTalk("<t>饮 铗腓黜 忸桧. 左怦蜮箦 皴�� 塍鼬� 镱耠� 矬蝈耱忤�?")
	MisHelpTalk("<t>义徨 眢骓� 铗梏钼囹� 疋铊 禧耠�.")
	MisResultCondition(HasMission,989 )
	MisResultCondition(HasItem, 4789,1 )
	MisResultCondition(HasItem,4741,1 )
	MisResultAction(TakeItem,  4789,1 )
	MisResultAction(TakeItem, 4741,1 )
	MisResultAction(ClearMission, 989 )
	MisResultAction(SetRecord, 989 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster,  4789)	
	TriggerAction( 1, AddNextFlag,  989 , 10,1)
	RegCurTrigger(  9891 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,4741)	
	TriggerAction( 1, AddNextFlag,  989 , 20,1)
	RegCurTrigger(  9892 )

---------------------------------------------------------------小山车的建议（if冒险者）
	DefineMission( 5062, "橡邃腩驽龛� 泥龛�", 990 )

	MisBeginTalk( "<t>痒囫螯� 怦邈溧 镳铒噤噱�. 泥驽 羼腓 螓 桉稃蜞� 祉钽铄 � 骅珥�, 磬耱箫噱� 怵屐�, 觐沅� 螓 礤 珥噱 麇� 玎��螯��. � 蜞觐� 祛戾眚, � 猁 铗镳噔桦�� � 祛瘃觐� 矬蝈耱忤�. 项麇祗 猁 蝈徨 礤 镱镳钺钼囹�? <n><t>悟镳噔��轳� � 矬螯 � 耱铕铐� 洛腓觐泐 谚礤泐 侮遴磬 (194, 1718) � 镱泐忸痂 � 铒屦囹铕铎 镱痱� 灭邈铕�." )
	MisBeginCondition(NoRecord, 990)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 990 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginAction(AddMission, 990 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisHelpTalk("<t>悟镳噔��轵羼� � 洛腓觇� 谚龛� (194, 1718) � 镱泐忸痂蝈 � 铒屦囹铕铎 镱痱� 灭邈铕�.")
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 铒屦囹铕铎 镱痱� 灭邈铕�")

	MisResultCondition(AlwaysFailure)
---------------------------------------------------------------职业介绍人的建议
	DefineMission( 5063, "橡邃腩驽龛� 泥龛�", 990,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>饮 蜞豚眚腓恹� 桉赅蝈朦 镳桕膻麇龛�. 畦珥�- � 潆桧眍� 镳桕膻麇龛�, 赅� � 忸��. 袜溴�, � 矬蝈耱忤� 黩�-蝾 潆� 蝈�� 珥圜栩.")
	MisHelpTalk("<t>聋螯 项觐痂蝈脲� 填疱� 祛泱� 蝾朦觐 徨耨蝠帏睇�.")
	MisResultCondition(NoRecord, 990)
	MisResultCondition(HasMission,990)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission, 990 )
	MisResultAction(SetRecord, 990 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	-------------------------------------------------------甘地维拉的建议（if药师）
	DefineMission( 5064, "杨忮� 缅睃铐�", 991 )

	MisBeginTalk( "<t>袜溴驿� 脲汴� 耠铎栩�.<n><t>惕礤腚� (1244, 3186) 疣耨赅驽�, 黩� 眢骓� 溴豚螯." )
	MisBeginCondition(NoRecord, 991)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 991 )
	MisBeginCondition(NoPfEqual,1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 991 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 惕礤腚�")
	MisHelpTalk("<t>惕礤腚� � 锑汨麇耜铎 侮遴礤 (1244, 3186)")
	MisResultCondition(AlwaysFailure)

-------------------------------甘地维拉的建议
	DefineMission( 5072, "杨忮� 缅睃铐�", 991,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>殃铕� � 耱囗� 皴牮弪囵屐 洛瘐钼眍泐 起弼�.")
	MisHelpTalk("<t>饮 耢咫.")
	MisResultCondition(NoRecord, 991)
	MisResultCondition(HasMission,991)
	MisResultAction(ClearMission, 991 )
	MisResultAction(SetRecord, 991 )

	
	-------------------------------------------------------石化的意志
	DefineMission( 5073, "青赅腓螯 忸膻", 998 )

	MisBeginTalk( "<t>项镳钺箝 桉镱朦珙忄螯 忸膻 磬 襦祛� 皴徨." )
	MisBeginCondition(NoRecord, 998)
	MisBeginCondition(HasRecord, 991)
	MisBeginCondition(NoMission, 998 )
	MisBeginAction(AddMission, 998 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "锐镱朦珞轵� 磬恹� 磬 皴��.")
	MisHelpTalk("<t>谚朦磬� 忸�� - 汶噔眍� 赅麇耱忸 镨疣蜞")
	MisResultTalk("<t>枢驿 襦� 皴徨 沐痤�, 黧怦蜮箦, 赅� 耱嚯 耔朦礤�!")

	MisResultCondition(HasMission, 998 )
	MisResultCondition(HasState, 92 )
	MisResultAction(ClearMission, 998 )
	MisResultAction(SetRecord, 998 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
		
	----------------------------------------智者的事
     DefineMission(5068,"锐蝾痂� � 橡铖忮螂屙眍�",993)
     MisBeginTalk("<t>饮 漕赅玎�, 黩� 泐滂��.<n><t>� 皴轺囫 耦玟帼 耱囹桉蜩麇耜簋 蜞犭桷�. � 疣耨赅骟 蝈徨 桉蝾痂� � 橡铖��眄铎 镱珂�.")
     MisBeginCondition(HasRecord,988)
     MisBeginCondition(NoMission, 993)
     MisBeginCondition(NoRecord, 993)
     MisBeginAction(AddMission, 993)
     MisCancelAction(SystemNotice, "This quest cannot be abandoned")

     MisNeed(MIS_NEED_DESP, "项漕驿栩� 镱赅 翔蝈� 玎觐眵栩 羊囹桉蜩麇耜簋 蜞犭桷�")
     MisHelpTalk("<t>亦犭桷� 妁� 礤 玎觐眵屙�. 湾 铗怆尻嚅.")
     MisResultTalk("<t>羊囹桉蜩麇耜簋 蜞犭桷� 礤 蜞�-蝾 脲汴� 皲咫囹�.")
     MisResultCondition(NoRecord, 993)---------应改为NoRecord
     MisResultCondition(HasMission, 993)
     MisResultAction(SetRecord, 993 )
     MisResultAction(ClearMission, 993 )
----------------------------------------智者的事
      DefineMission(5069,"锐蝾痂� � 橡铖忮螂屙眍�",994)
     MisBeginTalk("<t>饮 漕赅玎�, 黩� 漕耱铊�.<n><t>彦轺囫 � 耦玟帼 耱囹桉蜩麇耜簋 蜞犭桷�. � 疣耨赅骟 蝈徨 桉蝾痂� � 橡铖��眄铎 镱镱珂�.")
     MisBeginCondition(HasRecord,989)
      MisBeginCondition(NoMission, 994)
     MisBeginCondition(NoRecord, 994)
     MisBeginAction(AddMission, 994)
     MisCancelAction(SystemNotice, "This quest cannot be abandoned")

     MisNeed(MIS_NEED_DESP, "项漕驿栩� 镱赅 旋� 玎忮瘌栩 蜞犭桷�")
     MisHelpTalk("<t>羊囹桉蜩麇耜�� 蜞犭桷� 妁� 礤 玎觐眵屙�. 湾 戾�.")
      MisResultTalk("<t>羊囹桉蜩麇耜簋 蜞犭桷� 礤 蜞� 脲汴o 耦玟囹�.")
     MisResultCondition(NoRecord, 994)---------应改为NoRecord
     MisResultCondition(HasMission, 994)
     MisResultAction(SetRecord, 994 )
     MisResultAction(ClearMission, 994 )

     ----------------------------------------智者的事
      DefineMission(5070,"锐蝾痂� � 橡铖忮螂屙眍�",995)
     MisBeginTalk("<t>意铊 耧铖钺眍耱� 猁腓 漕赅玎睇.<n><t>� 溴豚� 铟屙� 忄骓簋 耱囹桉蜩麇耜簋 蜞犭桷�, 镱珂� � 疣耨赅骟 蝈徨 � 橡铖��眄铎.")
     MisBeginCondition(HasRecord,998)
      MisBeginCondition(NoMission, 995)
     MisBeginCondition(NoRecord, 995)
     MisBeginAction(AddMission, 995)
     MisCancelAction(SystemNotice, "This quest cannot be abandoned")

     MisNeed(MIS_NEED_DESP, "项漕驿栩� 镱赅 惕礤腚� 玎忮瘌栩 蜞犭桷�.")
     MisHelpTalk("<t>羊囹桉蜩麇耜�� 蜞犭桷� 妁� 礤 泐蝾忄.")
      MisResultTalk("<t>湾 蜞� 箧 � 脲汴� 皲咫囹� 耱囹桉蜩麇耜簋 蜞犭桷�.")
     MisResultCondition(NoRecord, 995)---------应改为NoRecord
     MisResultCondition(HasMission, 995)
     MisResultAction(SetRecord, 995 )
     MisResultAction(ClearMission, 995 )
	----------------------------------------智者的事
      DefineMission(5071,"锐蝾痂� � 橡铖忮螂屙眍�",997)
     MisBeginTalk("<t>意铊 耧铖钺眍耱� 玎戾蝽� 箅篦腓顸.<n><t>� 溴豚� 忄骓簋 羊囹桉蜩麇耜簋 蜞犭桷�, 镱珂� � 疣耨赅骟 蝈徨 � 镳铖��眄铎.")
     MisBeginCondition(HasRecord,990)
      MisBeginCondition(NoMission, 997)
     MisBeginCondition(NoRecord, 997)
     MisBeginAction(AddMission, 997)
     MisCancelAction(SystemNotice, "This quest cannot be abandoned")

     MisNeed(MIS_NEED_DESP, "项漕驿栩� 镱赅 铒屦囹铕 镱痱� 玎觐眵栩 蜞犭桷�")
     MisHelpTalk("<t>亦犭桷� 妁� 礤 玎觐眵屙�. 湾 戾�.")
      MisResultTalk("<t>羊囹桉蜩麇耜�� 蜞犭桷� - � 礤 蜞�-蝾 镳铖蝾.")
     MisResultCondition(NoRecord, 997)---------应改为NoRecord
     MisResultCondition(HasMission, 997)
     MisResultAction(SetRecord, 997 )
     MisResultAction(ClearMission, 997 )

-------------------------------------------------------谁是智者-------------白银城商会会长·劳伦迪马斯
	DefineMission( 5167, "黍� 驽 铗 橡铖忮螂屙睇�?", 1500 )

	MisBeginTalk( "<t>橡铖忮螂屙磬� 腓黜铖螯 镱牮� 蜞轫铋. 皖 � 潴爨� <b肃磴�> 耢铈弪 忄� 镱祛鼽" )
	MisBeginCondition(NoRecord,1500)
	MisBeginCondition(HasRecord, 993)
	MisBeginCondition(NoMission, 1500 )
	MisBeginAction(AddMission, 1500 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 肃磴铋")
	MisHelpTalk("<t>项泐忸痂蝈 � 肃磴铋 (853, 3549)")
	MisResultCondition(AlwaysFailure)




-------------------------------------------------------谁是智者---------雷欧
	DefineMission( 5168, "黍� 驽 铗 橡铖忮螂屙睇�?", 1501 )

	MisBeginTalk( "<t>橡铖忮螂屙磬� 腓黜铖螯 镱牮� 蜞轫铋.皖 � 潴爨� <b肃磴�> 耢铈弪 忄� 镱祛鼽" )
	MisBeginCondition(NoRecord,1501)
	MisBeginCondition(HasRecord, 994)
	MisBeginCondition(NoMission, 1501 )
	MisBeginAction(AddMission, 1501 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 肃磴铋")
	MisHelpTalk("<t>项泐忸痂蝈 � 肃磴铋 (853, 3549)")
	MisResultCondition(AlwaysFailure)



	-------------------------------------------------------谁是智者------------米尔米莉
	DefineMission( 5074, "黍� 驽 铗 橡铖忮螂屙睇�?", 1502 )

	MisBeginTalk( "<t>橡铖忮螂屙磬� 腓黜铖螯 镱牮� 蜞轫铋.皖 � 潴爨� <b肃磴�> 耢铈弪 忄� 镱祛鼽" )
	MisBeginCondition(NoRecord,1502)
	MisBeginCondition(HasRecord, 995)
	MisBeginCondition(NoMission, 1502 )
	MisBeginAction(AddMission, 1502 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 肃磴铋")
	MisHelpTalk("<t>项泐忸痂蝈 � 肃磴铋 (853, 3549)")
	MisResultCondition(AlwaysFailure)

	


-------------------------------------------------------谁是智者------------乔尔乔尼
	DefineMission( 5075, "黍� 驽 铗 橡铖忮螂屙睇�?", 1503 )

	MisBeginTalk( "<t>橡铖忮螂屙磬� 腓黜铖螯 镱牮� 蜞轫铋. 皖 � 潴爨� <b肃沩�> 耢铈弪 忄� 镱祛鼽" )
	MisBeginCondition(NoRecord,1503)
	MisBeginCondition(HasRecord, 997)
	MisBeginCondition(NoMission, 1503 )
	MisBeginAction(AddMission, 1503 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 肃磴铋")
	MisHelpTalk("<t>项泐忸痂蝈 � 肃磴铋 (853, 3549)")
	MisResultCondition(AlwaysFailure)

	


	
-------------------------------谁是智者
	DefineMission( 5076, "黍� 驽 铗 橡铖忮螂屙睇�?", 1500,COMPLETE_SHOW )----------白银城商会会长·劳伦迪马斯
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>枢驿 祛腩漕� 麇腩忮� 棂弪 镳铖忮螂屙��. � � 蝾驽 礤 桉觌屙桢, 眍 狍潼 泐蝾�! 象耱� 狍溴� ��驽� � 驽耱铌.")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------谁是智者
	DefineMission( 5077, "黍� 驽 铗 橡铖忮螂屙睇�?", 1501,COMPLETE_SHOW )----------白银城商会会长·劳伦迪马斯
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>枢驿 祛腩漕� 麇腩忮� 棂弪 镳铖忮螂屙��. � � 蝾驽 礤 桉觌屙桢, 眍 狍潼 泐蝾�! 象耱� 狍溴� ��驽� � 驽耱铌.")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------谁是智者
	DefineMission( 5078, "黍� 驽 铗 橡铖忮螂屙睇�?", 1502,COMPLETE_SHOW )----------白银城商会会长·劳伦迪马斯
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>枢驿 祛腩漕� 麇腩忮� 棂弪 镳铖忮螂屙��. � � 蝾驽 礤 桉觌屙桢, 眍 狍潼 泐蝾�! 象耱� 狍溴� ��驽� � 驽耱铌.")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------谁是智者
	DefineMission( 5079, "黍� 驽 铗 橡铖忮螂屙睇�?", 1503,COMPLETE_SHOW )----------白银城商会会长·劳伦迪马斯
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>枢驿 祛腩漕� 麇腩忮� 棂弪 镳铖忮螂屙��. � � 蝾驽 礤 桉觌屙桢, 眍 狍潼 泐蝾�! 象耱� 狍溴� ��驽� � 驽耱铌.")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1504 )
-------------------------------谁是智者
	DefineMission( 5080, "黍� 驽 铗 橡铖忮螂屙睇�?", 1500,COMPLETE_SHOW )----------郎拿督
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>蔓 棂栩� 镳铖忮螂屙眍泐?翌朦觐 箪睇� 膻滂 祛泱� 箸磬螯 � 礤�.")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1505 )


-------------------------------谁是智者
	DefineMission( 5081, "黍� 驽 铗 橡铖忮螂屙睇�?", 1501,COMPLETE_SHOW )-----------郎拿督
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>蔓 棂栩� 镳铖忮螂屙眍泐? 翌朦觐 箪睇� 膻滂 祛泱� 箸磬螯 � 礤�.")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1505 )

-------------------------------谁是智者
	DefineMission( 5082, "黍� 驽 铗 橡铖忮螂屙睇�?", 1502,COMPLETE_SHOW )-----------郎拿督
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>蔓 棂栩� 镳铖忮螂屙眍泐? 翌朦觐 箪睇� 膻滂 祛泱� 箸磬螯 � 礤�.")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1505 )

-------------------------------谁是智者
	DefineMission( 5083, "黍� 驽 铗 橡铖忮螂屙睇�?", 1503,COMPLETE_SHOW )-----------郎拿督
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>蔓 棂栩� 镳铖忮螂屙眍泐? 翌朦觐 箪睇� 膻滂 祛泱� 箸磬螯 � 礤�.")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1505 )


	-------------------------------谁是智者
	DefineMission( 5084, "黍� 驽 铗 橡铖忮螂屙睇�?", 1500,COMPLETE_SHOW )----------艾立克
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>酿筱 祛�...恹 漕耱囹铟眍 箪睇...?!")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1506 )


-------------------------------谁是智者
	DefineMission( 5085, "黍� 驽 铗 橡铖忮螂屙睇�?", 1501,COMPLETE_SHOW )-----------艾立克
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>酿筱 祛�...恹 漕耱囹铟眍 箪睇...?!")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1506 )

-------------------------------谁是智者
	DefineMission( 5086, "黍� 驽 铗 橡铖忮螂屙睇�?", 1502,COMPLETE_SHOW )-----------艾立克
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>酿筱 祛�...恹 漕耱囹铟眍 箪睇...?!")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1506 )

-------------------------------谁是智者
	DefineMission( 5087, "黍� 驽 铗 橡铖忮螂屙睇�?", 1503,COMPLETE_SHOW )-----------艾立克
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>酿筱 祛�...恹 漕耱囹铟眍 箪睇...?!")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1506 )

-------------------------------------------------------金牌门徒-------------白银城商会会长·劳伦迪马斯
	DefineMission( 5088, "梭鼬栝 篦屙桕", 1507 )

	MisBeginTalk( "<t>橡邃皴溧蝈朦 蓄龛 泐忸痂� 黩� 恹 礤 耠桫觐� 躅痤 珥嚓铎� 耦 疋铊� 觌囫耦�?" )
	MisBeginCondition(NoRecord,1507)
	MisBeginCondition(HasRecord, 1504)
	MisBeginCondition(NoMission, 1507 )
	MisBeginAction(AddMission, 1507 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 灭邈铕�, 惕礤腚�, 旋轭� 桦� 翔蝈痤�.")
	MisHelpTalk("<t>惕礤腓 祛骓� 磬轵� 蝮� (1244, 3186).")
	MisResultCondition(AlwaysFailure)
--------------------------------------------------------金牌门徒
	DefineMission( 5089, "梭鼬栝 篦屙桕", 1507,COMPLETE_SHOW )--------比特
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>橡邃皴溧蝈朦 蓄龛 泐忸痂� 黩� 恹 礤 耠桫觐� 躅痤 珥嚓铎� 耦 疋铊� 觌囫耦�?")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1514)

	


	--------------------------------------------------------金牌门徒
	DefineMission( 5090, "梭鼬栝 篦屙桕", 1507,COMPLETE_SHOW )---------雷欧
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>橡邃皴溧蝈朦 蓄龛 泐忸痂� 黩� 恹 礤 耠桫觐� 躅痤 珥嚓铎� 耦 疋铊� 觌囫耦�?")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1515)

--------------------------------------------------------金牌门徒
	DefineMission( 5091, "梭鼬栝 篦屙桕", 1507,COMPLETE_SHOW )---------乔尔乔尼
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>锑臌 泥龛咫� 铟屙� 玎���,铐 镳铖桦 黩� 猁 � 锣� 镳钼屦桦.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1516)

	--------------------------------------------------------金牌门徒
	DefineMission( 5092, "梭鼬栝 篦屙桕", 1507,COMPLETE_SHOW )---------米尔米莉
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>砚�眄桕 皴轺囫 玎���, 铐 镳铖桦 黩� 猁 � 忄� 镳钼屦桦.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual,1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1517)

---------------------------------------------------------------------比特初级门徒

	DefineMission( 5093, "袜麒磬栝 篦屙桕", 1508 )

	MisBeginTalk( "<t>锣� 礤钺躅滂祛 镳铋蜩 桉稃蜞龛�.俞彘蝈 5  义痧囗耜桴 赅镨蜞眍�" )
	MisBeginCondition(NoRecord, 1508 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1514 )
	MisBeginCondition(NoMission, 1508 )
	MisBeginAction(AddMission,  1508)
	MisBeginAction(AddTrigger,  15081, TE_KILL, 67, 5 )----------------地精战士
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 5  义痧囗耜桴 赅镨蜞眍�")
	MisNeed(MIS_NEED_KILL,67,5, 10, 5)

	MisResultTalk("<t>悟腓黜�! 蔓 镳铠腓 1 桉稃蜞龛�")
	MisHelpTalk("<t>橡� 耱赍 � 枢镨蜞眍�, 狍潋� 耧铌铋睇�")
	MisResultCondition(HasMission,  1508)
	MisResultCondition(NoRecord,  1508)
	MisResultCondition(HasFlag,  1508, 14 )
	MisResultAction(ClearMission,  1508 )
	MisResultAction(SetRecord,  1508  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 67)	
	TriggerAction( 1, AddNextFlag,  1508 , 10,5)
	RegCurTrigger(   15081 )

	---------------------------------------------------------------------比特二级门徒

	DefineMission( 5094, "喻屙桕 2 箴.", 1509 )

	MisBeginTalk( "<t>锣 怛铕铄 玎溧龛�.俞彘蝈 5 请钼妁栝 礤箫铌铄眄 忸桧" )
	MisBeginCondition(NoRecord, 1509 )
	MisBeginCondition(HasRecord, 1508 )
	MisBeginCondition(NoMission, 1509 )
	MisBeginAction(AddMission,  1509)
	MisBeginAction(AddTrigger,  15091, TE_KILL, 549, 5 )----------------邪恶的不灭武
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 5 请钼妁栝 礤箫铌铄眄 忸桧")
	MisNeed(MIS_NEED_KILL,549,5, 10, 5)

	MisResultTalk("<t>蔓 铗腓黜� 耧疣忤腓顸 � 玎溧龛屐!")
	MisHelpTalk("<t>馏潼蝈 铖蝾痤骓�!")
	MisResultCondition(HasMission,  1509)
	MisResultCondition(NoRecord,  1509)
	MisResultCondition(HasFlag,  1509, 14 )
	MisResultAction(ClearMission,  1509 )
	MisResultAction(SetRecord,  1509  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 549)	
	TriggerAction( 1, AddNextFlag,  1509 , 10,5)
	RegCurTrigger(   15091 )

	---------------------------------------------------------------------比特三级门徒

	DefineMission( 5095, "喻屙桕 蝠弪� 耱箫屙�", 1510 )

	MisBeginTalk( "<t>锣 耠邃簋� 玎溧龛�.俞彘蝈 请钼妁栝 瘥鲟瘘 螓赈� 6 " )
	MisBeginCondition(NoRecord, 1510 )
	MisBeginCondition(HasRecord, 1509 )
	MisBeginCondition(NoMission, 1510 )
	MisBeginAction(AddMission,  1510)
	MisBeginAction(AddTrigger,  15101, TE_KILL, 546, 6 )----------------邪恶的南瓜骑士
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 请钼妁栝 瘥鲟瘘 螓赈� 6 .")
	MisNeed(MIS_NEED_KILL,546,6, 10, 6)

	MisResultTalk("<t>蔓 怦� 犭桄� � 犭桄�....")
	MisHelpTalk("<t>馏潼蝈 犷脲� 磬耱铋麒恹�")
	MisResultCondition(HasMission,  1510)
	MisResultCondition(NoRecord,  1510)
	MisResultCondition(HasFlag,  1510, 15 )
	MisResultAction(ClearMission,  1510 )
	MisResultAction(SetRecord,  1510  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 546)	
	TriggerAction( 1, AddNextFlag,  1510 , 10,6)
	RegCurTrigger(   15101 )



---------------------------------------------------------------------比特高级门徒

	DefineMission( 5096, "玉镥忄栝 篦屙桕", 1511 )

	MisBeginTalk( "<t>锣 眍忸� 玎溧龛� - 筢彘蝈 8 橡桤疣黜 铛铗龛觐�" )
	MisBeginCondition(NoRecord, 1511 )
	MisBeginCondition(HasRecord, 1510 )
	MisBeginCondition(NoMission, 1511 )
	MisBeginAction(AddMission,  1511)
	MisBeginAction(AddTrigger,  15111, TE_KILL, 201, 8 )----------------暗影猎手
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 8 橡桤疣黜 铛铗龛觐�")
	MisNeed(MIS_NEED_KILL,201,8, 10, 8)

	MisResultTalk("<t>蔓 恹镱腠桦� 怦� 玎溧龛�!")
	MisHelpTalk("<t> 蒡� 镱耠邃龛� 蝈耱! 湾 皲噔嚅蝈顸")
	MisResultCondition(HasMission,  1511)
	MisResultCondition(NoRecord,  1511)
	MisResultCondition(HasFlag,  1511, 17 )
	MisResultAction(ClearMission,  1511 )
	MisResultAction(SetRecord,  1511  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 201)	
	TriggerAction( 1, AddNextFlag,  1511 , 10,8)
	RegCurTrigger(   15111 )


	
	---------------------------------------------------------------------雷欧初级门徒

	DefineMission( 5097, "袜麒磬栝 篦屙桕", 1512 )

	MisBeginTalk( "<t>侦..忄 镥疴铄 玎溧龛�. 俞彘蝈 5 腻蝈睇� 脲��眍泐 漯嚓铐�" )
	MisBeginCondition(NoRecord, 1512 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1515 )
	MisBeginCondition(NoMission, 1512 )
	MisBeginAction(AddMission,  1512)
	MisBeginAction(AddTrigger,  15121, TE_KILL, 187, 5 )----------------小冰龙
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 5 腻蝈睇� 脲��眍泐 漯嚓铐�")
	MisNeed(MIS_NEED_KILL,187,5, 10, 5)

	MisResultTalk("<t>悟腓黜�.蔓 恹镱腠桦� 镥疴铄 玎溧龛�.")
	MisHelpTalk("<t> 务蝾痤骓邋.")
	MisResultCondition(HasMission,  1512)
	MisResultCondition(NoRecord,  1512)
	MisResultCondition(HasFlag,  1512, 14 )
	MisResultAction(ClearMission,  1512 )
	MisResultAction(SetRecord,  1512  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 187)	
	TriggerAction( 1, AddNextFlag,  1512 , 10,5)
	RegCurTrigger(   15121 )


	---------------------------------------------------------------------雷欧二级门徒

	DefineMission( 5098, "喻屙桕 2 箴.", 1513 )

	MisBeginTalk( "<t>锣 怛铕铄 玎溧龛�. 俞彘蝈 5 铃珞祉 蝮珏祧邂" )
	MisBeginCondition(NoRecord, 1513 )
	MisBeginCondition(HasRecord, 1512 )
	MisBeginCondition(NoMission, 1513 )
	MisBeginAction(AddMission,  1513)
	MisBeginAction(AddTrigger,  15131, TE_KILL, 543, 5 )----------------疯狂的土著人
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 5 铃珞祉 蝮珏祧邂")
	MisNeed(MIS_NEED_KILL,543,5, 10, 5)

	MisResultTalk("<t>悟腓黜�. 蔓 耧疣忤腓顸 耦 怛铕 玎溧龛屐.")
	MisHelpTalk("<t>馏潼蝈 铖祛蝠栩咫邋!")
	MisResultCondition(HasMission,  1513)
	MisResultCondition(NoRecord,  1513)
	MisResultCondition(HasFlag,  1513, 14 )
	MisResultAction(ClearMission,  1513 )
	MisResultAction(SetRecord,  1513  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 543)	
	TriggerAction( 1, AddNextFlag,  1513 , 10,5)
	RegCurTrigger(   15131 )


	---------------------------------------------------------------------雷欧三级门徒

	DefineMission( 5099, "喻屙桕 蝠弪� 耱箫屙�", 1518 )

	MisBeginTalk( "<t>锣 蝠弪 玎溧龛�. 俞彘蝈 6 秒噔囵彘 洛疴铍钼-忸桧钼" )
	MisBeginCondition(NoRecord, 1518 )
	MisBeginCondition(HasRecord, 1513 )
	MisBeginCondition(NoMission, 1518 )
	MisBeginAction(AddMission,  1518)
	MisBeginAction(AddTrigger,  15181, TE_KILL, 566, 6 )----------------狼人战士队长
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 6 秒噔囵彘 洛疴铍钼-忸桧钼")
	MisNeed(MIS_NEED_KILL,566,6, 10, 6)

	MisResultTalk("<t>洛腓觐脲镯�! 蔓 耧疣忤腓顸 � 蝠弪� 玎溧龛屐.")
	MisHelpTalk("<t>馏潼蝈 铖蝾痤骓邋")
	MisResultCondition(HasMission,  1518)
	MisResultCondition(NoRecord,  1518)
	MisResultCondition(HasFlag,  1518, 15 )
	MisResultAction(ClearMission,  1518 )
	MisResultAction(SetRecord,  1518  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 566)	
	TriggerAction( 1, AddNextFlag,  1518 , 10,6)
	RegCurTrigger(   15181 )


	---------------------------------------------------------------------雷欧高级门徒

	DefineMission( 5100, "玉镥忄栝 篦屙桕", 1519 )

	MisBeginTalk( "<t>锣 镱耠邃礤� 玎溧龛�.俞彘蝈 8 饮��麇脲蝽桴 蝾�" )
	MisBeginCondition(NoRecord, 1519 )
	MisBeginCondition(HasRecord, 1518 )
	MisBeginCondition(NoMission, 1519 )
	MisBeginAction(AddMission,  1519)
	MisBeginAction(AddTrigger,  15191, TE_KILL, 511, 8)----------------巨型树人
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 8 饮��麇脲蝽桴 蝾�")
	MisNeed(MIS_NEED_KILL,511,8, 10, 8)

	MisResultTalk("<t>洛腓觐脲镯�! 蔓 恹镱腠桦� 怦� 玎溧龛�")
	MisHelpTalk("<t>湾祉钽� 蝈痫屙��.")
	MisResultCondition(HasMission,  1519)
	MisResultCondition(NoRecord,  1519)
	MisResultCondition(HasFlag,  1519, 17 )
	MisResultAction(ClearMission,  1519 )
	MisResultAction(SetRecord,  1519  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 511)	
	TriggerAction( 1, AddNextFlag,  1519 , 10,8)
	RegCurTrigger(   15191 )

	---------------------------------------------------------------------米尔初级门徒

	DefineMission( 5101, "袜麒磬栝 篦屙桕", 1520 )

	MisBeginTalk( "<t>侦...恹 漕腈睇 恹镱腠栩� 礤耜铍� 玎溧龛�.锣 镥疴铄 玎溧龛�.俞彘蝈 5 请钼妁栝 礤箫铌铄眄 忸桧" )
	MisBeginCondition(NoRecord, 1520 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1517)
	MisBeginCondition(NoMission, 1520 )
	MisBeginAction(AddMission,  1520)
	MisBeginAction(AddTrigger,  15201, TE_KILL, 549, 5 )----------------邪恶的不灭武士
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 5 请钼妁栝 礤箫铌铄眄 忸桧")
	MisNeed(MIS_NEED_KILL,549,5, 10, 5)

	MisResultTalk("<t>悟腓黜�. 蔓 耧疣忤腓顸")
	MisHelpTalk("<t>橡��忤蝈 蝈痫屙�� 漯筱 祛�...")
	MisResultCondition(HasMission,  1520)
	MisResultCondition(NoRecord,  1520)
	MisResultCondition(HasFlag,  1520, 14 )
	MisResultAction(ClearMission,  1520 )
	MisResultAction(SetRecord,  1520  )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 549)	
	TriggerAction( 1, AddNextFlag,  1520 , 10,5)
	RegCurTrigger(   15201 )



---------------------------------------------------------------------米尔二级门徒

	DefineMission( 5102, "喻屙桕 2 箴.", 1521 )

	MisBeginTalk( "<t>锣 怛铕铄 玎溧龛�. 俞彘蝈 2 谚疱睇." )
	MisBeginCondition(NoRecord, 1521 )
	MisBeginCondition(HasRecord, 1520 )
	MisBeginCondition(NoMission, 1521 )
	MisBeginAction(AddMission,  1521)
	MisBeginAction(AddTrigger,  15211, TE_KILL, 587, 2 )----------------
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 2 谚疱睇")
	MisNeed(MIS_NEED_KILL,587,2, 10, 2)

	MisResultTalk("<t>悟腓黜�. 蔓 耧疣忤腓顸")
	MisHelpTalk("<t>橡��忤蝈 蝈痫屙�� 漯筱 祛�...")
	MisResultCondition(HasMission,  1521)
	MisResultCondition(NoRecord,  1521)
	MisResultCondition(HasFlag,  1521, 11 )
	MisResultAction(ClearMission,  1521 )
	MisResultAction(SetRecord,  1521  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 587)	
	TriggerAction( 1, AddNextFlag,  1521 , 10,2)
	RegCurTrigger(   15211 )



	---------------------------------------------------------------------米尔三级门徒

	DefineMission( 5103, "喻屙桕 蝠弪� 耱箫屙�", 1522 )

	MisBeginTalk( "<t>锣 蝠弪 玎溧龛�. 俞彘蝈 3 秒筢铌钼钿磬� 耔疱磬 " )
	MisBeginCondition(NoRecord, 1522 )
	MisBeginCondition(HasRecord, 1521 )
	MisBeginCondition(NoMission, 1522 )
	MisBeginAction(AddMission,  1522)
	MisBeginAction(AddTrigger,  15221, TE_KILL, 606, 3 )----------------
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 3 秒筢铌钼钿磬� 耔疱磬")
	MisNeed(MIS_NEED_KILL,606,3, 10, 3)

	MisResultTalk("<t>悟腓黜�. 蔓 耧疣忤腓顸")
	MisHelpTalk("<t>橡��忤蝈 蝈痫屙�� 漯筱 祛�...")
	MisResultCondition(HasMission,  1522)
	MisResultCondition(NoRecord,  1522)
	MisResultCondition(HasFlag,  1522, 12 )
	MisResultAction(ClearMission,  1522 )
	MisResultAction(SetRecord,  1522  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 606)	
	TriggerAction( 1, AddNextFlag,  1522 , 10,3)
	RegCurTrigger(   15221 )

---------------------------------------------------------------------米尔高级门徒

	DefineMission( 5104, "玉镥忄栝 篦屙桕", 1523 )

	MisBeginTalk( "<t>锣 镱耠邃礤� 玎溧龛� 筢栩� 8 翔疣蝾� 007" )
	MisBeginCondition(NoRecord, 1523 )
	MisBeginCondition(HasRecord, 1522 )
	MisBeginCondition(NoMission, 1523 )
	MisBeginAction(AddMission,  1523)
	MisBeginAction(AddTrigger,  15231, TE_KILL, 735, 8 )----------------
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞栩� 8 翔疣蝾� 007 ")
	MisNeed(MIS_NEED_KILL,735,8, 10,8)

	MisResultTalk("<t>悟腓黜�.蔓 耧疣忤腓顸 � 镱耠邃龛� 玎溧龛屐!")
	MisHelpTalk("<t>橡��忤蝈 蝈痫屙�� 漯筱 祛�...")
	MisResultCondition(HasMission,  1523)
	MisResultCondition(NoRecord,  1523)
	MisResultCondition(HasFlag,  1523, 17 )
	MisResultAction(ClearMission,  1523 )
	MisResultAction(SetRecord,  1523  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 735)	
	TriggerAction( 1, AddNextFlag,  1523 , 10,8)
	RegCurTrigger(   15231 )


---------------------------------------------------------------------乔尔初级门徒

	DefineMission( 5105, "袜麒磬栝 篦屙桕", 1524 )

	MisBeginTalk( "<t>� 躅黧 镱耱痤栩� 皴徨 漕�.项祛汨蝈 祉� 漕耱囹� 眢骓 觐祜铐屙螓.襄疴铄 玎溧龛�  - 镳桧羼栩� 砚弪�轳� 躔遽弪 瘥猁-觐耱� 2 " )
	MisBeginCondition(NoRecord, 1524 )
	MisBeginCondition(HasRecord, 1516 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(NoMission, 1524 )
	MisBeginAction(AddMission,  1524)
	MisBeginAction(AddTrigger,  15241, TE_GETITEM, 1350, 2 )----------------
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� 砚弪�轳� 躔遽弪 瘥猁-觐耱� 2  ")
	MisNeed(MIS_NEED_ITEM,1350,2, 10, 2)

	MisResultTalk("<t>扬囫栳�!")
	MisHelpTalk("<t>馏潼蝈 铖蝾痤骓�... ")
	MisResultCondition(HasMission,  1524)
	MisResultCondition(NoRecord,  1524)
	MisResultCondition(HasItem, 1350, 2)
	MisResultAction(TakeItem,  1350, 2 )
	MisResultAction(ClearMission,  1524 )
	MisResultAction(SetRecord,  1524  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,1350)	
	TriggerAction( 1, AddNextFlag, 1524, 10, 2 )
	RegCurTrigger( 15241 )

	---------------------------------------------------------------------乔尔二级门徒

	DefineMission( 5106, "喻屙桕 2 箴.", 1525 )

	MisBeginTalk( "<t>锣 怛铕铄 玎溧龛�. 橡桧羼栩� 祉� 2 署桉蜞腚� 耔疱睇" )
	MisBeginCondition(NoRecord, 1525 )
	MisBeginCondition(HasRecord, 1524 )
	MisBeginCondition(NoMission, 1525 )
	MisBeginAction(AddMission,  1525)
	MisBeginAction(AddTrigger,  15251, TE_GETITEM, 1295, 2 )----------------
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� 2 署桉蜞腚� 耔疱睇")
	MisNeed(MIS_NEED_ITEM,1295,2, 10, 2)

	MisResultTalk("<t>扬囫栳�!")
	MisHelpTalk("<t>馏潼蝈 铖蝾痤骓�... ")
	MisResultCondition(HasMission,  1525)
	MisResultCondition(NoRecord,  1525)
	MisResultCondition(HasItem, 1295, 2)
	MisResultAction(TakeItem,  1295, 2 )
	MisResultAction(ClearMission,  1525 )
	MisResultAction(SetRecord,  1525  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,1295)	
	TriggerAction( 1, AddNextFlag, 1525, 10, 2 )
	RegCurTrigger( 15251 )



---------------------------------------------------------------------乔尔三级门徒

	DefineMission( 5107, "喻屙桕 蝠弪� 耱箫屙�", 1526 )

	MisBeginTalk( "<t>锣 蝠弪 玎溧龛�. 橡桧羼栩� 祉� 99 栝耜桴 麴箨蝾� " )
	MisBeginCondition(NoRecord, 1526 )
	MisBeginCondition(HasRecord, 1525 )
	MisBeginCondition(NoMission, 1526 )
	MisBeginAction(AddMission,  1526)
	MisBeginAction(AddTrigger,  15261, TE_GETITEM, 3116, 99 )----------------
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� 99 栝耜桴 麴箨蝾�")
	MisNeed(MIS_NEED_ITEM,3116,99, 10, 99)

	MisResultTalk("<t>扬囫栳�!")
	MisHelpTalk("<t>馏潼蝈 铖蝾痤骓�...")
	MisResultCondition(HasMission,  1526)
	MisResultCondition(NoRecord,  1526)
	MisResultCondition(HasItem, 3116, 99)
	MisResultAction(TakeItem,  3116, 99 )
	MisResultAction(ClearMission,  1526 )
	MisResultAction(SetRecord,  1526  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,3116)	
	TriggerAction( 1, AddNextFlag, 1526, 10, 99 )
	RegCurTrigger( 15261 )


	---------------------------------------------------------------------乔尔高级门徒

	DefineMission( 5108, "玉镥忄栝 篦屙桕", 1527 )

	MisBeginTalk( "<t>锣 镱耠邃礤� 玎溧龛�.橡桧羼栩� 祉� 15 蒽犭屐 ��漕忸泐 犷痤溧鬣." )
	MisBeginCondition(NoRecord, 1527 )
	MisBeginCondition(HasRecord, 1526 )
	MisBeginCondition(NoMission, 1527 )
	MisBeginAction(AddMission,  1527)
	MisBeginAction(AddTrigger,  15271, TE_GETITEM, 4802, 1 )----------------
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� 15 蒽犭屐 ��漕忸泐 犷痤溧鬣")
	MisNeed(MIS_NEED_ITEM,4802,1, 10, 1)

	MisResultTalk("<t>洛腓觐脲镯�! 蔓 恹镱腠桦� 怦� 玎溧龛�")
	MisHelpTalk("<t>馏潼蝈 铖蝾痤骓�...")
	MisResultCondition(HasMission,  1527)
	MisResultCondition(NoRecord,  1527)
	MisResultCondition(HasItem, 4802, 1)
	MisResultAction(TakeItem,  4802, 1 )
	MisResultAction(ClearMission,  1527 )
	MisResultAction(SetRecord,  1527  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,4802)	
	TriggerAction( 1, AddNextFlag, 1527, 10, 1 )
	RegCurTrigger( 15271 )

-------------------------------------------------------合格的门徒--------比特
	DefineMission( 5109, "扬铖钺睇� 篦屙桕", 1528 )

	MisBeginTalk( "<t>蔓 漕耱桡腓 4 箴钼�� 篦屙桕�.义镥瘘 忄� 镱疣 镱泐忸痂螯 � 蓄龛" )
	MisBeginCondition(NoRecord,1528)
	MisBeginCondition(HasRecord, 1511)
	MisBeginCondition(NoMission, 1528 )
	MisBeginAction(AddMission, 1528 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>项泐忸痂蝈 � 蓄龛")
	MisHelpTalk("<t>蓄龛 磬躅滂螯�� � 鲤沐眚� (2242, 2748)")
	MisResultCondition(AlwaysFailure)



--------------------------------------------------------合格的门徒
	DefineMission( 5110, "扬铖钺睇� 篦屙桕", 1528,COMPLETE_SHOW )----------白银城商会会长·劳伦迪马斯
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>悟腓黜�! 蔓 铟屙� 猁耱痤 耧疣忤腓顸 忸 怦屐� 玎溧龛�扈.")
	MisResultCondition(NoRecord, 1528)
	MisResultCondition(HasMission, 1528)
	MisResultAction(ClearMission,1528)
	MisResultAction(SetRecord, 1528)
	MisResultAction(SetRecord, 1577)-------------
	

-------------------------------------------------------合格的门徒--------雷欧
	DefineMission( 5111, "扬铖钺睇� 篦屙桕", 1529 )

	MisBeginTalk( "<t>蔓 漕耱桡腓 4 箴钼�� 篦屙桕�. 义镥瘘 忄� 镱疣 镱泐忸痂螯 � 蓄龛" )
	MisBeginCondition(NoRecord,1529)
	MisBeginCondition(HasRecord, 1519)
	MisBeginCondition(NoMission, 1529 )
	MisBeginAction(AddMission, 1529 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>项泐忸痂蝈 � 蓄龛")
	MisHelpTalk("<t>蓄龛 磬躅滂螯�� � 鲤沐眚� (2242, 2748)")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------合格的门徒
	DefineMission( 5112, "扬铖钺睇� 篦屙桕", 1529,COMPLETE_SHOW )------白银城商会会长·劳伦迪马斯(2242,2748)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>悟腓黜�! 蔓 铟屙� 猁耱痤 耧疣忤腓顸 忸 怦屐� 玎溧龛�扈.")
	MisResultCondition(NoRecord, 1529)
	MisResultCondition(HasMission, 1529)
	MisResultAction(ClearMission,1529)
	MisResultAction(SetRecord, 1529)
	MisResultAction(SetRecord, 1577)-------------


	-------------------------------------------------------合格的门徒--------米尔
	DefineMission( 5113, "扬铖钺睇� 篦屙桕", 1530 )

	MisBeginTalk( "<t>悟腓黜�! 蔓 铟屙� 猁耱痤 耧疣忤腓顸 忸 怦屐� 玎溧龛�扈." )
	MisBeginCondition(NoRecord,1530)
	MisBeginCondition(HasRecord, 1523)
	MisBeginCondition(NoMission, 1530 )
	MisBeginAction(AddMission, 1530 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>项泐忸痂蝈 � 蓄龛")
	MisHelpTalk("<t>蓄龛 磬躅滂螯�� � 鲤沐眚� (2242, 2748)")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------合格的门徒
	DefineMission( 5114, "扬铖钺睇� 篦屙桕", 1530,COMPLETE_SHOW )------劳伦迪马斯
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>悟腓黜�! 蔓 铟屙� 猁耱痤 耧疣忤腓顸 忸 怦屐� 玎溧龛�扈.")
	MisResultCondition(NoRecord, 1530)
	MisResultCondition(HasMission, 1530)
	MisResultAction(ClearMission,1530)
	MisResultAction(SetRecord, 1530)
	MisResultAction(SetRecord, 1577)-------------

	-------------------------------------------------------合格的门徒--------乔尔
	DefineMission( 5115, "扬铖钺睇� 篦屙桕", 1531 )

	MisBeginTalk( "<t>悟腓黜�! 蔓 铟屙� 猁耱痤 耧疣忤腓顸 忸 怦屐� 玎溧龛�扈." )
	MisBeginCondition(NoRecord,1531)
	MisBeginCondition(HasRecord, 1527)
	MisBeginCondition(NoMission, 1531 )
	MisBeginAction(AddMission, 1531 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>项泐忸痂蝈 � 橡噔栩咫屐 鲤沐眚�")
	MisHelpTalk("<t>橡噔栩咫� 鲤沐眚� 祛骓� 磬轵� � (2242, 2748)")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------合格的门徒
	DefineMission( 5116, "扬铖钺睇� 篦屙桕", 1531,COMPLETE_SHOW )------劳伦迪马斯
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>悟腓黜�! 蔓 铟屙� 猁耱痤 耧疣忤腓顸 忸 怦屐� 玎溧龛�扈.")
	MisResultCondition(NoRecord, 1531)
	MisResultCondition(HasMission, 1531)
	MisResultAction(ClearMission,1531)
	MisResultAction(SetRecord, 1531)
	MisResultAction(SetRecord, 1577)-------------

-------------------------------------------------------伟大的神谕----------朗拿度
	DefineMission( 5117, "勿嚓箅 洛腓麒�", 1532 )

	MisBeginTalk( "<t>袜殇栩� 8 项耠囗龛觐� 令泐� � 忸玮疣轵羼� 觐 祉�." )
	MisBeginCondition(NoRecord,1532)
	MisBeginCondition(HasRecord, 1505)
	MisBeginCondition(NoMission, 1532 )
	MisBeginAction(AddMission, 1532 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>项泐忸痂蝈 � 镱痱龛躅� 凌徼")
	MisHelpTalk("<t>项泐忸痂蝈 � 镱痱龛躅� 凌徼 ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------伟大的神谕
	DefineMission( 5118, "勿嚓箅 洛腓麒�", 1532,COMPLETE_SHOW )-------------服装店助理·蓓蓓
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>� �怆�� 令驽耱忸� 忸潲")
	MisResultCondition(NoRecord, 1532)
	MisResultCondition(HasMission, 1532)
	MisResultAction(ClearMission,1532)
	MisResultAction(SetRecord, 1532)



---------------------------------------------------------------------一重门

	DefineMission( 5119, "襄疴 怵囹�", 1533 )

	MisBeginTalk( "<t>� 耠筱� 令驽耱忄 忸潲." )------服装店助理·蓓蓓
	MisBeginCondition(NoRecord, 1533 )
	MisBeginCondition(HasRecord, 1532 )
	MisBeginCondition(NoMission, 1533 )
	MisBeginAction(AddMission,  1533)
	MisBeginAction(AddTrigger,  15331, TE_KILL, 642, 2 )----------------凶猛的骨鱼
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "禹梓蝾骝� 2 署钼铈噤磬� 瘥徉-觐耱�")
	MisNeed(MIS_NEED_KILL,642,2, 10, 2)

	MisResultTalk("<t>蔓 祛驽蝈 镱塍麒螯 祛� 犭嚆铖腩忮龛�")
	MisHelpTalk("<t>震囗栩� 祛� 蜞轫�")
	MisResultCondition(HasMission,  1533)
	MisResultCondition(NoRecord,  1533)
	MisResultCondition(HasFlag,  1533, 11 )
	MisResultAction(ClearMission,  1533 )
	MisResultAction(SetRecord,  1533  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 642)	
	TriggerAction( 1, AddNextFlag,  1533 , 10,2)
	RegCurTrigger(   15331 )


-------------------------------------------------------告别一重门------------服装店助理·蓓蓓
	DefineMission( 5120, "橡铢囗桢 � 镥疴� 怵囹囔�", 1534 )

	MisBeginTalk( "<t>项泐忸痂蝈 � <b锑耱屦铎 叔痧铋>" )
	MisBeginCondition(NoRecord,1534)
	MisBeginCondition(HasRecord, 1533)
	MisBeginCondition(NoMission, 1534 )
	MisBeginAction(AddMission, 1534 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>项泐忸痂蝈 � <b锑耱屦铎 叔痧铋>")
	MisHelpTalk("<t>央邃簋� 桉稃蜞龛� 狍溴� 礤 蜞觐� 脲汴铄")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------告别一重门
	DefineMission( 5121, "橡铢囗桢 � 镥疴� 怵囹囔�", 1534,COMPLETE_SHOW )-------------克拉拉大师
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>袜溴� 恹 珥噱蝈, 黩� 溴豚弪�.")
	MisResultCondition(NoRecord, 1534)
	MisResultCondition(HasMission, 1534)
	MisResultAction(ClearMission,1534)
	MisResultAction(SetRecord, 1534)

---------------------------------------------------------------------二重门

	DefineMission( 5122, "买铕 怵囹�", 1535 )

	MisBeginTalk( "<t>� 耠筱� 令驽耱忄 钽��" )------克拉拉大师
	MisBeginCondition(NoRecord, 1535 )
	MisBeginCondition(HasRecord, 1534 )
	MisBeginCondition(NoMission, 1535 )
	MisBeginAction(AddMission,  1535)
	MisBeginAction(AddTrigger,  15351, TE_KILL, 652, 2 )----------------凶猛的宝石海豚
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 2 砚桊屣 痼徼眍恹� 溴朦翳�")
	MisNeed(MIS_NEED_KILL,652,2, 10, 2)

	MisResultTalk("<t>蔓 祛驽蝈 镱塍麒螯 祛� 犭嚆铖腩忮龛�.")
	MisHelpTalk("<t>震囗栩� 祛� 蜞轫�")
	MisResultCondition(HasMission,  1535)
	MisResultCondition(NoRecord,  1535)
	MisResultCondition(HasFlag,  1535, 11 )
	MisResultAction(ClearMission,  1535 )
	MisResultAction(SetRecord,  1535  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 652)	
	TriggerAction( 1, AddNextFlag,  1535 , 10,2)
	RegCurTrigger(   15351 )


-------------------------------------------------------告别二重门------------克拉拉大师
	DefineMission( 5123, "橡铢囗桢 � 买铕� 怵囹囔�", 1536 )

	MisBeginTalk( "<t>项泐忸痂蝈 � <b锑痍篑铎>" )
	MisBeginCondition(NoRecord,1536)
	MisBeginCondition(HasRecord, 1535)
	MisBeginCondition(NoMission, 1536 )
	MisBeginAction(AddMission, 1536 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>项泐忸痂蝈 � <b锑痍篑铎>")
	MisHelpTalk("<t>棋豚� 忄� 箐圜�!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------告别二重门
	DefineMission( 5124, "橡铢囗桢 � 买铕� 怵囹囔�", 1536,COMPLETE_SHOW )-------------马洛
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>蔓 漕 耔� 镱� � 眍痨嚯铎 耦耱��龛�?")
	MisResultCondition(NoRecord, 1536)
	MisResultCondition(HasMission, 1536)
	MisResultAction(ClearMission,1536)
	MisResultAction(SetRecord, 1536)

---------------------------------------------------------------------三重门

	DefineMission( 5125, "茵弪 怵囹�", 1537 )

	MisBeginTalk( "<t>� 耠筱� 令驽耱忄 忮蝠�." )------马洛
	MisBeginCondition(NoRecord, 1537 )
	MisBeginCondition(HasRecord, 1536 )
	MisBeginCondition(NoMission, 1537 )
	MisBeginAction(AddMission,  1537)
	MisBeginAction(AddTrigger,  15371, TE_KILL, 587, 2 )----------------凶猛的宝石海豚
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 3 谚疱磬")
	MisNeed(MIS_NEED_KILL,587,2, 10, 2)

	MisResultTalk("<t>蔓 祛驽蝈 镱塍麒螯 祛� 犭嚆铖腩忮龛�.")
	MisHelpTalk("<t>震囗栩� 祛� 蜞轫�")
	MisResultCondition(HasMission,  1537)
	MisResultCondition(NoRecord,  1537)
	MisResultCondition(HasFlag,  1537, 11 )
	MisResultAction(ClearMission,  1537 )
	MisResultAction(SetRecord,  1537  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 587)	
	TriggerAction( 1, AddNextFlag,  1537 , 10,2)
	RegCurTrigger(   15371 )


-------------------------------------------------------告别三重门------------马洛
	DefineMission( 5126, "橡铢囗桢 � 蝠弪扈 怵囹囔�", 1538 )

	MisBeginTalk( "<t>项泐忸痂蝈 � 清怦铎" )
	MisBeginCondition(NoRecord,1538)
	MisBeginCondition(HasRecord, 1537)
	MisBeginCondition(NoMission, 1538 )
	MisBeginAction(AddMission, 1538 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>项泐忸痂蝈 � 清怦铎")
	MisHelpTalk("<t>棋豚� 忄� 箐圜�!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------告别三重门
	DefineMission( 5127, "橡铢囗桢 � 蝠弪扈 怵囹囔�", 1538,COMPLETE_SHOW )-------------修司
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>蔓 漕 耔� 镱� � 眍痨嚯铎 耦耱��龛�?")
	MisResultCondition(NoRecord, 1538)
	MisResultCondition(HasMission, 1538)
	MisResultAction(ClearMission,1538)
	MisResultAction(SetRecord, 1538)



---------------------------------------------------------------------四重门

	DefineMission( 5128, "族蜮屦螓� 怵囹�", 1539 )

	MisBeginTalk( "<t>� 耠筱� 令驽耱忄 珏祀�" )------修司
	MisBeginCondition(NoRecord, 1539 )
	MisBeginCondition(HasRecord, 1538 )
	MisBeginCondition(NoMission, 1539 )
	MisBeginAction(AddMission,  1539)
	MisBeginAction(AddTrigger,  15391, TE_KILL, 570, 5 )----------------红胡子海盗团战斗员
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 4 泪铕溧骓桕 犷痤溧麇�")
	MisNeed(MIS_NEED_KILL,570,5, 10, 5)

	MisResultTalk("<t>蔓 祛驽蝈 镱塍麒螯 祛� 犭嚆铖腩忮龛�.")
	MisHelpTalk("<t>震囗栩� 祛� 蜞轫�")
	MisResultCondition(HasMission,  1539)
	MisResultCondition(NoRecord,  1539)
	MisResultCondition(HasFlag,  1539, 14 )
	MisResultAction(ClearMission,  1539 )
	MisResultAction(SetRecord,  1539  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 570)	
	TriggerAction( 1, AddNextFlag,  1539 , 10,5)
	RegCurTrigger(   15391 )


-------------------------------------------------------告别四重门------------修司
	DefineMission( 5129, "橡铢囗桢 � 麇蜮屦螓扈 怵囹囔�", 1540 )

	MisBeginTalk( "<t>项泐忸痂蝈 � 念牝铕铎 锑襦" )
	MisBeginCondition(NoRecord,1540)
	MisBeginCondition(HasRecord, 1539)
	MisBeginCondition(NoMission, 1540 )
	MisBeginAction(AddMission, 1540 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>项泐忸痂蝈 � 念牝铕铎 锑襦")
	MisHelpTalk("<t>棋豚� 忄� 箐圜�!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------告别四重门
	DefineMission( 5130, "橡铢囗桢 � 麇蜮屦螓扈 怵囹囔�", 1540,COMPLETE_SHOW )-------------军医·玛沙
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>蔓 漕 耔� 镱� � 眍痨嚯铎 耦耱��龛�?")
	MisResultCondition(NoRecord, 1540)
	MisResultCondition(HasMission, 1540)
	MisResultAction(ClearMission,1540)
	MisResultAction(SetRecord, 1540)


---------------------------------------------------------------------五重门

	DefineMission( 5131, "��螓� 怵囹�", 1541 )

	MisBeginTalk( "<t>� 耠筱� 令驽耱忄 耥邈�" )------军医·玛沙
	MisBeginCondition(NoRecord, 1541 )
	MisBeginCondition(HasRecord, 1540 )
	MisBeginCondition(NoMission, 1541 )
	MisBeginAction(AddMission,  1541)
	MisBeginAction(AddTrigger,  15411, TE_KILL, 589, 2 )----------------海妖弓手
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 5 谚疱磬-耱疱腩�")
	MisNeed(MIS_NEED_KILL,589,2, 10, 2)

	MisResultTalk("<t>蔓 祛驽蝈 镱塍麒螯 祛� 犭嚆铖腩忮龛�.")
	MisHelpTalk("<t>震囗栩� 祛� 蜞轫�")
	MisResultCondition(HasMission,  1541)
	MisResultCondition(NoRecord,  1541)
	MisResultCondition(HasFlag,  1541, 11 )
	MisResultAction(ClearMission,  1541 )
	MisResultAction(SetRecord,  1541  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 589)	
	TriggerAction( 1, AddNextFlag,  1541 , 10,2)
	RegCurTrigger(   15411 )


-------------------------------------------------------告别五重门------------军医·玛沙
	DefineMission( 5132, "橡铢囗桢 � ��螓扈 怵囹囔�", 1542 )

	MisBeginTalk( "<t>项泐忸痂蝈 � 蔫耧弪麇� 镱痱� 泥眄栝" )
	MisBeginCondition(NoRecord,1542)
	MisBeginCondition(HasRecord, 1541)
	MisBeginCondition(NoMission, 1542 )
	MisBeginAction(AddMission, 1542 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>项泐忸痂蝈 � 蔫耧弪麇� 镱痱� 泥眄栝")
	MisHelpTalk("<t>棋豚� 忄� 箐圜�!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------告别五重门
	DefineMission( 5133, "橡铢囗桢 � ��螓扈 怵囹囔�", 1542,COMPLETE_SHOW )-------------丹尼斯
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>蔓 漕 耔� 镱� � 眍痨嚯铎 耦耱��龛�?")
	MisResultCondition(NoRecord, 1542)
	MisResultCondition(HasMission, 1542)
	MisResultAction(ClearMission,1542)
	MisResultAction(SetRecord, 1542)

---------------------------------------------------------------------六重门

	DefineMission( 5134, "劐耱 怵囹�", 1543 )

	MisBeginTalk( "<t>� 耠筱� 令驽耱忄 沭铎�" )------丹尼斯
	MisBeginCondition(NoRecord, 1543 )
	MisBeginCondition(HasRecord, 1542 )
	MisBeginCondition(NoMission, 1543 )
	MisBeginAction(AddMission,  1543)
	MisBeginAction(AddTrigger,  15431, TE_KILL, 36, 6 )----------------白灵猫
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 6 砚桊屣�� 徨豚� 瘥顸")
	MisNeed(MIS_NEED_KILL,36,6, 10, 6)

	MisResultTalk("<t>蔓 祛驽蝈 镱塍麒螯 祛� 犭嚆铖腩忮龛�..")
	MisHelpTalk("<t>震囗栩� 祛� 蜞轫�")
	MisResultCondition(HasMission,  1543)
	MisResultCondition(NoRecord,  1543)
	MisResultCondition(HasFlag,  1543, 15 )
	MisResultAction(ClearMission,  1543 )
	MisResultAction(SetRecord,  1543  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 36)	
	TriggerAction( 1, AddNextFlag,  1543 , 10,6)
	RegCurTrigger(   15431 )

-------------------------------------------------------告别六重门------------丹尼斯
	DefineMission( 5135, "橡铢囗桢 � 耱� 怵囹囔�", 1544 )

	MisBeginTalk( "<t>项泐忸痂蝈 � 求疳�" )
	MisBeginCondition(NoRecord,1544)
	MisBeginCondition(HasRecord, 1543)
	MisBeginCondition(NoMission, 1544 )
	MisBeginAction(AddMission, 1544 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>项泐忸痂蝈 � 求疳�")
	MisHelpTalk("<t>棋豚� 忄� 箐圜�!!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------告别六重门
	DefineMission( 5136, "橡铢囗桢 � 耱� 怵囹囔�", 1544,COMPLETE_SHOW )-------------朱比
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>蔓 漕 耔� 镱� � 眍痨嚯铎 耦耱��龛�?")
	MisResultCondition(NoRecord, 1544)
	MisResultCondition(HasMission, 1544)
	MisResultAction(ClearMission,1544)
	MisResultAction(SetRecord, 1544)

---------------------------------------------------------------------七重门

	DefineMission( 5137, "彦潼禧� 怵囹�", 1545 )

	MisBeginTalk( "<t>� 耠筱� 令驽耱忄 祛腠栝" )------朱比
	MisBeginCondition(NoRecord, 1545 )
	MisBeginCondition(HasRecord, 1544 )
	MisBeginCondition(NoMission, 1545 )
	MisBeginAction(AddMission,  1545)
	MisBeginAction(AddTrigger,  15451, TE_KILL, 263, 7 )----------------地精战士长
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 7 义痧囗耜桴 赅镨蜞眍�")
	MisNeed(MIS_NEED_KILL,263,7, 10, 7)

	MisResultTalk("<t>蔓 祛驽蝈 镱塍麒螯 祛� 犭嚆铖腩忮龛�.")
	MisHelpTalk("<t>震囗栩� 祛� 蜞轫�")
	MisResultCondition(HasMission,  1545)
	MisResultCondition(NoRecord,  1545)
	MisResultCondition(HasFlag,  1545, 16 )
	MisResultAction(ClearMission,  1545 )
	MisResultAction(SetRecord,  1545  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 263)	
	TriggerAction( 1, AddNextFlag,  1545 , 10,7)
	RegCurTrigger(   15451 )

-------------------------------------------------------告别七重门------------朱比
	DefineMission( 5138, "橡铢囗桢 � 皴潼禧扈 怵囹囔�", 1546 )

	MisBeginTalk( "<t>项泐忸痂蝈 � 髓礓铋" )
	MisBeginCondition(NoRecord,1546)
	MisBeginCondition(HasRecord, 1545)
	MisBeginCondition(NoMission, 1546 )
	MisBeginAction(AddMission, 1546 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>项泐忸痂蝈 � 髓礓铋")
	MisHelpTalk("<t>棋豚� 忄� 箐圜�!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------告别七重门
	DefineMission( 5139, "橡铢囗桢 � 皴潼禧扈 怵囹囔�", 1546,COMPLETE_SHOW )-------------琳达
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>蔓 漕 耔� 镱� � 眍痨嚯铎 耦耱��龛�?")
	MisResultCondition(NoRecord, 1546)
	MisResultCondition(HasMission, 1546)
	MisResultAction(ClearMission,1546)
	MisResultAction(SetRecord, 1546)

---------------------------------------------------------------------八重门

	DefineMission( 5140, "骂顸禧� 怵囹�", 1547 )

	MisBeginTalk( "<t>� 耠筱� 令驽耱忄 膻徕�" )------琳达
	MisBeginCondition(NoRecord, 1547 )
	MisBeginCondition(HasRecord, 1546 )
	MisBeginCondition(NoMission, 1547 )
	MisBeginAction(AddMission,  1547)
	MisBeginAction(AddTrigger,  15471, TE_KILL, 808, 8 )----------------亡灵士兵
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 8 杨脘囹 戾痱恹� 潴�")
	MisNeed(MIS_NEED_KILL,808,8, 10,8)

	MisResultTalk("<t>蔓 祛驽蝈 镱塍麒螯 祛� 犭嚆铖腩忮龛�.")
	MisHelpTalk("<t>震囗栩� 祛� 蜞轫�")
	MisResultCondition(HasMission,  1547)
	MisResultCondition(NoRecord,  1547)
	MisResultCondition(HasFlag,  1547, 17 )
	MisResultAction(ClearMission,  1547 )
	MisResultAction(SetRecord,  1547  )
	MisResultAction(AddExp,3000000,3000000)
	MisResultAction(AddMoney,1000000,1000000)	
	MisResultAction(AddExpAndType,2,120000,120000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 808)	
	TriggerAction( 1, AddNextFlag,  1547 , 10,8)
	RegCurTrigger(   15471 )

-------------------------------------------------------终结门的指示------------琳达
	DefineMission( 5141, "软耱痼牿�� � 镱耠邃龛� 忸痤蜞�", 1548 )

	MisBeginTalk( "<t>骂� <r勿嚓箅>. � 蝈镥瘘 耱箫嚅蝈 � 镱泐忸痂蝈 � 肃磴铋" )
	MisBeginCondition(NoRecord,1548)
	MisBeginCondition(HasRecord, 1547)
	MisBeginCondition(NoMission, 1548 )
	MisBeginAction(AddMission, 1548 )
	MisBeginAction(GiveItem, 2917,1,4)----------------------------------------------------神谕
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>项泐忸痂蝈 � 肃磴铋")
	MisHelpTalk("<t>令汨�� � 锣扈")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------终结门的指示
	DefineMission( 5142, "软耱痼牿�� � 镱耠邃龛� 忸痤蜞�", 1548,COMPLETE_SHOW )-------------郎拿度
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>昨� 猁 镱塍麒螯 勿嚓箅, 眢骓� 镳钿咫囹� 礤脲汴栝 矬螯...")
	MisResultCondition(NoRecord, 1548)
	MisResultCondition(HasMission, 1548)
	MisResultCondition(HasItem,2917,1)--------------神谕
	MisResultAction(TakeItem, 2917,1)-------------神谕
	MisResultAction(ClearMission,1548)
	MisResultAction(SetRecord, 1548)

	---------------------------------------------------------------------完美海盗任务

	DefineMission( 5143, "蠕遴朦眍� 镨疣蝰觐� 玎溧龛�", 1549 )

	MisBeginTalk( "<t>� 漕赅玎蝈朦耱忸 蝾泐 黩� 恹 桎遴朦睇� 镨疣�, 镳铋滂蝈 礤耜铍� 玎溧龛�" )------艾立克
	MisBeginCondition(NoRecord, 1549 )
	MisBeginCondition(HasRecord, 1506 )
	MisBeginCondition(NoMission, 1549 )
	MisBeginAction(AddMission,  1549)
	MisBeginAction(AddTrigger,  15491, TE_KILL, 546, 10 )----------------邪恶的南瓜骑士
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 10 请钼妁栝 瘥鲟瘘 螓赈�")
	MisNeed(MIS_NEED_KILL,546,10, 10,10)

	MisResultTalk("<t>悟腓黜�")
	MisHelpTalk("<t>蔓 礤 筢桦� 螓赈?")
	MisResultCondition(HasMission,  1549)
	MisResultCondition(NoRecord,  1549)
	MisResultCondition(HasFlag,  1549, 19 )
	MisResultAction(ClearMission,  1549 )
	MisResultAction(SetRecord,  1549  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 546)	
	TriggerAction( 1, AddNextFlag,  1549 , 10,10)
	RegCurTrigger(   15491 )



---------------------------------------------------------------------完美海盗任务

	DefineMission( 5144, "蠕遴朦眍� 镨疣蝰觐� 玎溧龛�", 1550 )

	MisBeginTalk( "<t>锣 怛铕铄 玎溧龛�.念耱囹� 潆� 戾�� 2 暑痤脲怦觇� 戾鬣" )------艾立克
	MisBeginCondition(NoRecord, 1550 )
	MisBeginCondition(HasRecord, 1549 )
	MisBeginCondition(NoMission, 1550 )
	MisBeginAction(AddMission,  1550)
	MisBeginAction(AddTrigger,  15501, TE_GETITEM, 4893, 2 )----------------王室佩剑
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� 2 暑痤脲怦觇� 戾鬣")
	MisNeed(MIS_NEED_ITEM, 4893, 2, 10, 2)

	MisResultTalk("<t>悟腓黜�.")
	MisHelpTalk("<t>扬囫栳�. � 棂� 铗 戾� � 蝈麇龛� 铟屙� 漕脬桴 脲�")
	MisResultCondition(HasMission,  1550)
	MisResultCondition(NoRecord,  1550)
	MisResultCondition(HasItem, 4893, 2)
	MisResultAction(TakeItem, 4893, 2 )
	MisResultAction(ClearMission,  1550 )
	MisResultAction(SetRecord,  1550  )
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 4893)	
	TriggerAction( 1, AddNextFlag,  1550 , 10,2)
	RegCurTrigger(   15501 )


---------------------------------------------------------------------完美海盗任务

	DefineMission( 5145, "蠕遴朦眍� 镨疣蝰觐� 玎溧龛�", 1551 )

	MisBeginTalk( "<t>晤� 谚疱睇 磬镟腓 磬 祛� 觐疣犭�! 悟铎耱� 桁!" )------艾立克
	MisBeginCondition(NoRecord, 1551 )
	MisBeginCondition(HasRecord, 1550 )
	MisBeginCondition(NoMission, 1551 )
	MisBeginAction(AddMission,  1551)
	MisBeginAction(AddTrigger,  15511, TE_KILL, 606, 3 )----------------深蓝海妖
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 3 秒筢铌钼钿睇� 耔疱�")
	MisNeed(MIS_NEED_KILL,606,3, 10,3)

	MisResultTalk("<t>丸觐沅� 祉� 礤 脬栩�...")
	MisHelpTalk("<t>丸觐沅� 祉� 礤 脬栩�...")
	MisResultCondition(HasMission,  1551)
	MisResultCondition(NoRecord,  1551)
	MisResultCondition(HasFlag,  1551, 12 )
	MisResultAction(ClearMission,  1551 )
	MisResultAction(SetRecord,  1551  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 606)	
	TriggerAction( 1, AddNextFlag,  1551 , 10,3)
	RegCurTrigger(   15511 )

---------------------------------------------------------------------完美海盗任务

	DefineMission( 5146, "蠕遴朦眍� 镨疣蝰觐� 玎溧龛�", 1552 )

	MisBeginTalk( "<t>湾溧忭� � 泱��� 镱 镫�骟 , � 筲桎咫 牮囫桠 牮桉蜞腚�. � 箨疣� 桴...琼噱蝈 祉� 蜞� 礤腩怅�.皖 潴爨� 羼腓 禧 箜梓蝾骅� 疋桎弪咫彘..." )------艾立克
	MisBeginCondition(NoRecord, 1552 )
	MisBeginCondition(HasRecord, 1551 )
	MisBeginCondition(NoMission, 1552 )
	MisBeginAction(AddMission,  1552)
	MisBeginAction(AddTrigger,  15521, TE_KILL, 589, 3 )----------------海妖弓手
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "俞彘蝈 3 谚疱磬-耱疱腩�")
	MisNeed(MIS_NEED_KILL,589,3, 10,3)

	MisResultTalk("<t>岭嚆钿囵� 忄� 玎 镳钿咫囗眢� 玎犷蝮")
	MisHelpTalk("<t>族泐 恹 耱铊蝈?")
	MisResultCondition(HasMission,  1552)
	MisResultCondition(NoRecord,  1552)
	MisResultCondition(HasFlag,  1552, 12 )
	MisResultAction(ClearMission,  1552 )
	MisResultAction(SetRecord,  1552  )
	MisResultAction(AddExp1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 589)	
	TriggerAction( 1, AddNextFlag,  1552 , 10,3)
	RegCurTrigger(   15521 )

-------------------------------------------------------谜底揭晓------------劳伦迪马斯
	DefineMission( 5147, "亦轫� 疣玢噤囗�", 1553 )

	MisBeginTalk( "<t>悟腓黜�! 蔓 恹镱腠桦� 怦� 蝠遽钼囗�� 潆� 蝾泐 黩� 猁 镱泐忸痂螯 � 橡铖忮螂屙睇�.骂� 忄� 枢戾睃 体磴� , 铗溧轵� 邈� 橡铖忮螂屙眍祗." )
	MisBeginCondition(NoRecord,1553)
	MisBeginCondition(HasRecord, 1577)
	MisBeginCondition(NoMission, 1553 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------蒙德石
	MisBeginAction(AddMission, 1553 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>悟礤耔蝈 枢戾睃 体磴� 羊囵桕�-镳邃耜噻囹咫�")
	MisHelpTalk("<t>馏潋� 铖蝾痤骓邋")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------谜底揭晓
	DefineMission( 5148, "亦轫� 疣玢噤囗�", 1553,COMPLETE_SHOW )-------------怪叟爷爷
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>湾 徨耧铌铋蝈 戾��!")
	MisResultCondition(NoRecord, 1553)
	MisResultCondition(HasMission, 1553)
	MisResultCondition(HasItem, 2918, 1)------------蒙德石
	MisResultAction(TakeItem, 2918, 1 )-----蒙德石
	MisResultAction(ClearMission,1553)
	MisResultAction(SetRecord, 1553)
	MisResultAction(SetRecord, 1556)

-------------------------------------------------------谜底揭晓------------郎拿度
	DefineMission( 5149, "亦轫� 疣玢噤囗�", 1554 )

	MisBeginTalk( "<t>悟腓黜�! 蔓 恹镱腠桦� 怦� 蝠遽钼囗�� 潆� 蝾泐 黩� 猁 镱泐忸痂螯 � 橡铖忮螂屙睇�.骂� 忄� 枢戾睃 体磴�, 铗溧轵� 邈� 橡铖忮螂屙眍祗." )
	MisBeginCondition(NoRecord,1554)
	MisBeginCondition(HasRecord, 1548)
	MisBeginCondition(NoMission, 1554 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------蒙德石
	MisBeginAction(AddMission, 1554 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>悟礤耔蝈 枢戾睃 体磴� 羊囵桕�-镳邃耜噻囹咫�")
	MisHelpTalk("<t>馏潋� 铖蝾痤骓邋")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------谜底揭晓
	DefineMission( 5150, "亦轫� 疣玢噤囗�", 1554,COMPLETE_SHOW )-------------怪叟爷爷
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>湾 徨耧铌铋蝈 戾��!")
	MisResultCondition(NoRecord, 1554)
	MisResultCondition(HasMission, 1554)
	MisResultCondition(HasItem, 2918, 1)------------蒙德石
	MisResultAction(TakeItem, 2918, 1 )-----蒙德石
	MisResultAction(ClearMission,1554)
	MisResultAction(SetRecord, 1554)
	MisResultAction(SetRecord, 1556)

-------------------------------------------------------谜底揭晓------------艾立克
	DefineMission( 5151, "亦轫� 疣玢噤囗�", 1555 )

	MisBeginTalk( "<t>悟腓黜�! 蔓 恹镱腠桦� 怦� 蝠遽钼囗�� 潆� 蝾泐 黩� 猁 镱泐忸痂螯 � 橡铖忮螂屙睇�. 骂� 忄� 枢戾睃 体磴�, 铗溧轵� 邈� 橡铖忮螂屙眍祗." )
	MisBeginCondition(NoRecord,1555)
	MisBeginCondition(HasRecord, 1552)
	MisBeginCondition(NoMission, 1555 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------蒙德石
	MisBeginAction(AddMission, 1555 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>悟礤耔蝈 枢戾睃 体磴� 羊囵桕�-镳邃耜噻囹咫�")
	MisHelpTalk("<t>馏潋� 铖蝾痤骓邋")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------谜底揭晓
	DefineMission( 5152, "亦轫� 疣玢噤囗�", 1555,COMPLETE_SHOW )-------------怪叟爷爷
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>湾 徨耧铌铋蝈 戾��!")
	MisResultCondition(NoRecord, 1555)
	MisResultCondition(HasMission, 1555)
	MisResultCondition(HasItem, 2918, 1)------------蒙德石
	MisResultAction(TakeItem, 2918, 1 )-----蒙德石
	MisResultAction(ClearMission,1555)
	MisResultAction(SetRecord, 1555)
	MisResultAction(SetRecord, 1556)

------------------------------------------------------老朽们的纠纷------------怪叟爷爷
	DefineMission( 5169, "羊囵桕钼耜栝 耧铕", 1557 )

	MisBeginTalk( "<t>侦...镱泐忸痂蝈 � 拎狍铋 念磴 (795, 363)" )
	MisBeginCondition(NoRecord,1557)
	MisBeginCondition(HasRecord, 1556)
	MisBeginCondition(NoMission, 1557 )
	MisBeginAction(AddMission, 1557 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>项泐忸痂蝈 � 拎狍铋 念磴 (795, 363)")
	MisHelpTalk("<t>项泐忸痂蝈 � 拎狍铋 念磴 (795, 363)")
	MisResultCondition(AlwaysFailure)


	--------------------------------------------------------老朽们的纠纷
	DefineMission( 5153, "羊囵桕钼耜栝 耧铕", 1557,COMPLETE_SHOW )-------------冬达米婆婆
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>黍� 耧铕栩? � 耧铕�? 锗-踵. 殃噫栩� 祉� <r橡桠弪> � 铗忮螯蝈 磬 忸镳铖.")
	MisResultCondition(NoRecord, 1557)
	MisResultCondition(HasMission, 1557)
	MisResultAction(ClearMission,1557)
	MisResultAction(SetRecord, 1557)
	
---------------------------------------------------------------------老太婆的智慧

	DefineMission( 5154, "软蝈腚尻� 徉狍�", 1561 )

	MisBeginTalk( "<t>蔓 漕耱囹铟眍 箪屙.悟忮蝈 妁� 磬 钿桧 忸镳铖!" )------冬达米婆婆
	MisBeginCondition(NoRecord,1561)
	MisBeginCondition(HasRecord, 1558)
	MisBeginCondition(HasRecord, 1559)
	MisBeginCondition(NoMission, 1561 )
	MisBeginAction(AddMission, 1561 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "袜骒栩� 磬 <r霹� 疣� 玟疣怦蜮箝> � 铗忮螯蝈 磬 忸镳铖.")
	
	MisResultTalk("<t>项疣玷蝈朦眍!")
	MisHelpTalk("<t>帖屙桢 � 镳桤磬� 祗漯铖蜩.")
	MisResultCondition(NoRecord, 1561)
	MisResultCondition(HasMission, 1561)
	MisResultCondition(HasRecord, 1562)
	MisResultCondition(HasRecord, 1564)
	MisResultAction(ClearMission,1561)
	MisResultAction(SetRecord, 1561)
	

---------------------------------------------------------------------治疗传染病

	DefineMission( 5155, "蔓脲麒 玎疣珥簋 犷脲珥�", 1566 )-----冬达米婆婆

	MisBeginTalk( "<t>添� 眢骓� 砚弪钼�� 犷灬� 3 箴." )------冬达米婆婆
	MisBeginCondition(NoRecord,1566)
	MisBeginCondition(HasRecord, 1558)
	MisBeginCondition(HasRecord, 1560)
	MisBeginCondition(NoMission, 1566 )
	MisBeginAction(AddMission, 1566 )
	MisBeginAction(AddTrigger,  15661, TE_GETITEM, 2743, 1 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "泥轵� 徉狍� 砚弪钼簋 沭囗囹� 3 箴")
	MisNeed(MIS_NEED_ITEM,2743,1, 10, 1)

	MisResultTalk("<t>扬囫栳�.")
	MisHelpTalk("<t>蒡� 磬赅�!")
	MisResultCondition(NoRecord, 1566)
	MisResultCondition(HasMission, 1566)
	MisResultCondition(HasItem, 2743, 1)
	MisResultAction(TakeItem,  2743, 1 )
	MisResultAction(ClearMission,1566)
	MisResultAction(SetRecord, 1566)
	MisResultAction(SetRecord, 1559)


	InitTrigger()
	TriggerCondition( 1, IsItem,2743)	
	TriggerAction( 1, AddNextFlag, 1566, 10, 1 )
	RegCurTrigger( 15661 )
---------------------------------------------------------------------手动治疗法

	DefineMission( 5156, "锐鲥脲龛� 痼赅扈", 1567 )-----冬达米婆婆

	
	MisBeginTalk( "<t>锗-踵. 添� 眢骓� 沭囗囹�!" )------冬达米婆婆
	MisBeginCondition(NoRecord,1567)
	MisBeginCondition(HasRecord, 1562)
	MisBeginCondition(HasRecord, 1565)
	MisBeginCondition(HasRecord, 1561)
	MisBeginCondition(NoMission, 1567 )
	MisBeginAction(AddMission, 1567 )
	MisBeginAction(AddTrigger,  15671, TE_GETITEM, 2744, 1 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� 徉狍� 1 沭囗囹� 3 箴钼��")
	MisNeed(MIS_NEED_ITEM,2744,1, 10, 1)

	MisResultTalk("<t>扬囫栳�.")
	MisHelpTalk("<t>蒡� 磬赅�!")
	MisResultCondition(NoRecord, 1567)
	MisResultCondition(HasMission, 1567)
	MisResultCondition(HasItem, 2744, 1)
	MisResultAction(TakeItem,  2744, 1 )
	MisResultAction(ClearMission,1567)
	MisResultAction(SetRecord, 1567)
	


	InitTrigger()
	TriggerCondition( 1, IsItem,2744)	
	TriggerAction( 1, AddNextFlag, 1567, 10, 1 )
	RegCurTrigger( 15671 )



-------------------------------------------------------真理守护者-----------------冬达米婆婆
	DefineMission( 5157, "羊疣� 镳噔潲", 1568 )

	MisBeginTalk( "<t>捏爨� 忄� 镱疣 镱泐忸痂螯 耦 羊囵桕铎-镳邃耜噻囹咫屐." )
	MisBeginCondition(NoRecord,1568)
	MisBeginCondition(HasRecord, 1561)
	MisBeginCondition(HasRecord, 1564)
	MisBeginCondition(NoMission, 1568 )
	MisBeginAction(AddMission, 1568 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "<t>项泐忸痂蝈 耦 羊囵桕铎-镳邃耜噻囹咫屐.")
	MisHelpTalk("<t>腕 驽! 蠕栩�")
	
	MisResultCondition(AlwaysFailure)

	-------------------------------------------------------真理守护者
	DefineMission( 5158, "羊疣� 镳噔潲", 1568,COMPLETE_SHOW )-------------怪叟
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>蔓 篁忮疰溧弪� 黩� 拎狍� - 念磴 镳桤磬豚 镱疣驽龛�? 蔓 礤 蜩蝈? � � 镳噔潴 蜞赅� 耔豚 漕腈磬 镳桧噤脲驵螯, 蜞赅� 耔豚!")
	MisResultCondition(NoRecord, 1568)
	MisResultCondition(HasMission, 1568)
	MisResultAction(ClearMission,1568)
	MisResultAction(SetRecord, 1568)
	MisResultAction(SetRecord, 1571)


	-------------------------------------------------------真理守护者-----------------冬达米婆婆
	DefineMission( 5159, "羊疣� 镳噔潲", 1569 )

	MisBeginTalk( "<t>捏爨� 忄� 镱疣 镱泐忸痂螯 耦 羊囵桕铎-镳邃耜噻囹咫屐." )
	MisBeginCondition(NoRecord,1569)
	MisBeginCondition(HasRecord, 1567)
	MisBeginCondition(NoMission, 1569 )
	MisBeginAction(AddMission, 1569 )
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	
	MisNeed(MIS_NEED_DESP, "<t>项泐忸痂蝈 耦 羊囵桕铎-镳邃耜噻囹咫屐.")
	MisHelpTalk("<t>腕 驽! 蠕栩�")
	
	MisResultCondition(AlwaysFailure)


--------------------------------------------------------真理守护者

	DefineMission( 5160, "羊疣� 镳噔潲", 1569,COMPLETE_SHOW )-------------怪叟
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> 蔓 篁忮疰溧弪� 黩� 拎狍� - 念磴 镳桤磬豚 疋铄 镱疣驽龛�?  蔓 礤 怵弪�? � 怙疣怃� � 耔豚 漕腈磬 镳桧噤脲驵螯 忄�!")
	MisResultCondition(NoRecord, 1569)
	MisResultCondition(HasMission, 1569)
	MisResultAction(ClearMission,1569)
	MisResultAction(SetRecord, 1569)
	MisResultAction(SetRecord, 1571)

	MisResultAction(AddExp,300000,300000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,20000,20000)
-----------------------------------------------------神秘的咒语

	DefineMission( 5161, "亦桧耱忮眄铄 镳铌��蜩�",1570 )

	MisBeginTalk( "<t>橡桧羼栩� 镟痤朦 BC" )
	MisBeginCondition(NoRecord, 1570)
	MisBeginCondition(HasRecord, 1571)
	MisBeginCondition(NoMission,1570 )
	MisBeginAction(AddMission, 1570)
	MisBeginAction(AddTrigger, 15701, TE_GETITEM, 2408, 1 )		--口令AB
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "<t>橡桧羼栩� 镟痤朦 BC")
	MisNeed(MIS_NEED_ITEM,2408,1, 10, 1)
	
	MisResultTalk("<t>扬屮栩�!")
	MisHelpTalk("<t>妙忸��� 耦脘囹� � 镟痤��扈 鬣耱� 镱�怆��� � 徉琨 噪铗�")
	MisResultCondition(HasMission, 1570)
	MisResultCondition(NoRecord,1570)
	MisResultCondition(HasItem,2408,1 )
	MisResultAction(TakeItem, 2408,1 )
	MisResultAction(ClearMission, 1570)
	MisResultAction(SetRecord,1570)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2408)	
	TriggerAction( 1, AddNextFlag,  1570, 10,1)
	RegCurTrigger( 15701 )

----------------------------------------------------神秘的咒语

	DefineMission( 5162, "亦桧耱忮眄铄 镳铌��蜩�",1572 )

	MisBeginTalk( "<t>橡桧羼栩� 镟痤朦 CD" )
	MisBeginCondition(NoRecord, 1572)
	MisBeginCondition(HasRecord, 1570)
	MisBeginCondition(NoMission,1572 )
	MisBeginAction(AddMission, 1572)
	MisBeginAction(AddTrigger, 15721, TE_GETITEM, 2409, 1 )		--口令BC
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� 镟痤朦 CD")
	MisNeed(MIS_NEED_ITEM,2409,1, 10, 1)
	
	MisResultTalk("<t>扬屮栩�!")
	MisHelpTalk("<t>妙忸��� 耦脘囹� � 镟痤��扈 鬣耱� 镱�怆��� � 徉琨 噪铗�")
	MisResultCondition(HasMission, 1572)
	MisResultCondition(NoRecord,1572)
	MisResultCondition(HasItem,2409,1 )
	MisResultAction(TakeItem, 2409,1 )
	MisResultAction(ClearMission, 1572)
	MisResultAction(SetRecord,1572)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2409)	
	TriggerAction( 1, AddNextFlag,  1572, 10,1)
	RegCurTrigger( 15721 )


	----------------------------------------------------神秘的咒语

	DefineMission( 5163, "亦桧耱忮眄铄 镳铌��蜩�",1573 )

	MisBeginTalk( "<t>橡桧羼栩� 镟痤朦 CD" )
	MisBeginCondition(NoRecord, 1573)
	MisBeginCondition(HasRecord, 1572)
	MisBeginCondition(NoMission,1573 )
	MisBeginAction(AddMission, 1573)
	MisBeginAction(AddTrigger, 15731, TE_GETITEM, 2410, 1 )		--口令CD
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� 镟痤朦 CD")
	MisNeed(MIS_NEED_ITEM,2410,1, 10, 1)
	
	MisResultTalk("<t>扬屮栩�!")
	MisHelpTalk("<t>妙忸��� 耦脘囹� � 镟痤��扈 鬣耱� 镱�怆��� � 徉琨 噪铗�")
	MisResultCondition(HasMission, 1573)
	MisResultCondition(NoRecord,1573)
	MisResultCondition(HasItem,2410,1 )
	MisResultAction(TakeItem, 2410,1 )
	MisResultAction(ClearMission, 1573)
	MisResultAction(SetRecord,1573)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2410)	
	TriggerAction( 1, AddNextFlag,  1573, 10,1)
	RegCurTrigger( 15731 )


----------------------------------------------------神秘的咒语

	DefineMission( 5164, "亦桧耱忮眄铄 镳铌��蜩�",1574 )

	MisBeginTalk( "<t>妙忸��� 耦脘囹� � 镟痤��扈 鬣耱� 镱�怆��� � 徉琨 噪铗�" )
	MisBeginCondition(NoRecord, 1574)
	MisBeginCondition(HasRecord, 1573)
	MisBeginCondition(NoMission,1574 )
	MisBeginAction(AddMission, 1574)
	MisBeginAction(AddTrigger, 15741, TE_GETITEM, 2411, 1 )		--口令DE
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� 镟痤朦 DE")
	MisNeed(MIS_NEED_ITEM,2411,1, 10, 1)
	
	MisResultTalk("<t>扬屮栩�!")
	MisHelpTalk("<t>妙忸��� 耦脘囹� � 镟痤��扈 鬣耱� 镱�怆��� � 徉琨 噪铗�")
	MisResultCondition(HasMission, 1574)
	MisResultCondition(NoRecord,1574)
	MisResultCondition(HasItem,2411,1 )
	MisResultAction(TakeItem, 2411,1 )
	MisResultAction(ClearMission, 1574)
	MisResultAction(SetRecord,1574)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2411)	
	TriggerAction( 1, AddNextFlag,  1574, 10,1)
	RegCurTrigger( 15741 )


----------------------------------------------------神秘的咒语

	DefineMission( 5165, "亦桧耱忮眄铄 镳铌��蜩�",1575 )

	MisBeginTalk( "<t>橡桧羼栩� 镟痤朦 EF" )
	MisBeginCondition(NoRecord, 1575)
	MisBeginCondition(HasRecord, 1574)
	MisBeginCondition(NoMission,1575 )
	MisBeginAction(AddMission, 1575)
	MisBeginAction(AddTrigger, 15751, TE_GETITEM, 2412, 1 )		--口令EF
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "橡桧羼栩� 镟痤朦 EF")
	MisNeed(MIS_NEED_ITEM,2412,1, 10, 1)
	
	MisResultTalk("<t>悟腓黜�! � 耦钺 忄� � 疱珞朦蜞蜞�")
	MisHelpTalk("<t>妙忸��� 耦脘囹� � 镟痤��扈 鬣耱� 镱�怆��� � 徉琨 噪铗� ")
	MisResultCondition(HasMission, 1575)
	MisResultCondition(NoRecord,1575)
	MisResultCondition(HasItem,2412,1 )
	MisResultAction(TakeItem, 2412,1 )
	MisResultAction(ClearMission, 1575)
	MisResultAction(SetRecord,1575)
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,400000,400000)	
	MisResultAction(AddExpAndType,2,80000,80000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2412)	
	TriggerAction( 1, AddNextFlag,  1575, 10,1)
	RegCurTrigger( 15751 )


----------------------------------------咒语的研究结果
	DefineMission(5166,"绣珞朦蜞� 疣琊噌铗觇 镥鬣蜩",1576)
	MisBeginTalk("<t>� 耦钺 忄� � 疱珞朦蜞蜞�")
	MisBeginCondition(NoRecord,1576)
	MisBeginCondition(NoMission, 1576)
	MisBeginCondition(HasRecord, 1575)
	MisBeginAction(AddMission, 1576)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_DESP, "项漕驿栩� 镱赅 羊囵桕 疣耨赅驽� 忄� 钺 疱珞朦蜞蜞�")
	MisHelpTalk("<t>项驵塍轳蜞, 狍潋� 蝈痫咫桠�")
	MisResultTalk("<t>蒡� 镟痤腓 磬 襦祛� 溴脲 礤 桁妣� 龛麇泐 钺泐 � 镳铌��蜩屐. � 猁� 钺爨眢�....")
	MisResultCondition(HasRecord, 1576)
	MisResultCondition(HasMission, 1576)
	MisResultAction(ClearMission, 1576 )
	MisResultAction(SetRecord, 1576 )

--彦牮弪 钽礤眄钽� 疣
	DefineMission(6300, "彦牮弪 钽礤眄钽� 疣",1620)
	MisBeginTalk("<t>相痼 脲� 磬玎�, 禧 怦� 忤溴腓 钽痤祉 钽礤睇� �, 觐蝾瘥� 痼蹴箅 磬 皴忮痤-忸耱铌� 铌遴磬. 雾 恹玮嚯 鲶磬扈, 镱蝠�聒邋 忮顸 扈�!<n><t>添� 赅驽蝰� - � 赅觐�-蝾 珥嚓...<n><t>疹蝈腩顸 猁 恹�耥栩�, 黩� � 珥圜栩, 眍 � 箧� 礤 蜞� 祛腩�, � � 漕忸朦眍 ��骊�... 泥, 忸� 妁� 黩�. � 耠嚯, 黩� 礤觇� - <r宵�眵箧赅 - 理蝾龛�> (2222,2889) 珥噱� 黩�-蝾 钺 铎, 蜞� 黩� 塍鼬� 耧痤耔 � 礤泐. 袜轵� 邈� 祛骓� � <b拎疱 鲤沐眚�>...<n><t>栗 溧, 铐 蜞 妁� 稂�睃. 昨钺� � 龛� 眍痨嚯� 镱泐忸痂螯, 磬漕 猁 屐� 镳铗疱玮栩�.")
	MisBeginCondition(NoRecord, 1636)
	MisBeginCondition(NoRecord, 1620)
	MisBeginCondition(NoMission,1620)
	MisBeginCondition(LvCheck, ">",84)
	MisBeginAction(AddMission, 1620)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>悟� <r宵�眵箧牦 - 理蝾龛�> (2222,2889) � <b拎疱 鲤沐眚�>")

	MisHelpTalk("<t>蒡� 稂�睃 珥噱� 忮顸 泐痤�, 眍 礤 潴爨�, 黩� 铐 溴轳蜮栩咫� 黩�-蝾 珥噱� - 忮顸 溴睃 镳钼钿栩 � 徉疱. 谚���...")
	MisResultCondition(AlwaysFailure)

--彦牮弪 钽礤眄钽� 疣
	DefineMission(6301, "彦牮弪 钽礤眄钽� 疣",1620, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>震痧... 戾耱�... 锺桴�... 螓 忄 牝�? 体耱�... 殃铗�? 煮磬扈? 篷螯 溴忤鼽� 羿扈腓�? 蔟�...麇 � 忄 耜噻囹�-蝾 蝈徨 躅蝈�?")
	MisResultCondition(NoRecord, 1620)
	MisResultCondition(HasMission, 1620)
	MisResultAction(ClearMission, 1620)
	MisResultAction(SetRecord, 1620)
	MisResultAction(AddExpAndType,2,200,200)
	MisResultAction(GiveNpcMission, 6302, "宵�眵箧赅 - 理蝾龛�", 7)

--� 镱桉赅� 爨��� 桉牮
	DefineMission(6302, "� 镱桉赅� 爨��� 桉牮",1621)

	MisBeginTalk("<t>饮 戾�� 篁铎��屮�... 肃�, 玎狍潼, 羼腓 镱祛驽 祉� - 铟屙� 玎��蝾祗 麇腩忮牦, � 疣耨赅骟 蝈徨 怦�, 黩� 珥帼. � 蝮� 耠嚯, 黩� 橡桧�-蝠栩铐 - 锗耨囗 稃蜞腭� 疋囵栩� 眍恹�... 牾�... 青麇� � � 疣耨赅琨忄�? 蒡� 礤 蜮铄 溴腩? 枢痤麇, 玎蜿龛顸 � 耠篪嚅! 枢驽蝰� � 铗腓黜�� 箨� � 螓 漕腈屙 漕耱囹� 祉� 甯. � 赅麇耱忮 磬沭噤�, � 疣耨赅骟 蝈徨 怦� 黩� 珥帼 � 蜞桧耱忮眄铎 钽礤眍� 疱. 袜轵� <r橡桧鲟-蝠栩铐� - 锗耨囗�> (1254,3491) 祛骓� � 矬耱� 耧疣忄 铗 <b剜轵囗�>")
	MisBeginCondition(NoRecord, 1621)
	MisBeginCondition(NoMission,1621)
	MisBeginCondition(NoRecord, 1622)
	MisBeginCondition(HasRecord, 1620)
	MisBeginAction(AddMission, 1621)
	MisBeginAction(AddTrigger,16211, TE_GETITEM, 6206, 1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisBeginAction(SetFlag, 1621, 1)

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t><r宵�眵箧赅 - 理蝾龛�> (2222,2889) 镳铖栩 铗赅螯 <r橡桧鲟-蝠栩铐� - 锗耨囗�> (1254,3491) � 镳桧羼蜩 屐� <p锑��� 桉牮>.")
	MisNeed(MIS_NEED_ITEM, 6206, 1, 10, 1)

	MisHelpTalk("<t>饮 礤 躅麇 桎蜩... 饮 礤 躅麇 镱珥囹� 蜞轫�?")
	MisResultTalk("<t>� 泥 泥, 镳邂铖躅漤�. 蒽�, 躅痤, � 蝮� 耠嚯 觐�-黩� 钿磬驿� 眍鼽� � 10 耠噤觇� 忸聃栩栩咫 磬镨蜿圊...")
	MisResultCondition(HasMission, 1621)
	MisResultCondition(NoRecord,1621)
	MisResultCondition(HasItem, 6206, 1)
	MisResultAction(TakeItem, 6206, 1)
	MisResultAction(ClearMission, 1621)
	MisResultAction(SetRecord, 1621)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,250,250)
	MisResultAction(GiveNpcMission, 6304, "宵�眵箧赅 - 理蝾龛�", 8) 

	InitTrigger()
	TriggerCondition(1, IsItem, 6206)
	TriggerAction(1, AddNextFlag, 1621, 10, 1)
	RegCurTrigger(16211)

--如泐蝾怆屙桢 爨��� 桉牮
	DefineMission(6303, "如泐蝾怆屙桢 爨��� 桉牮",1622)
	MisBeginTalk("<t>锑��� 桉牮? 栗圊�, 螓 蜩? � 戾�� 钽� 礤�!<n><t>侦... 螓 恹汶�滂 漕忸朦眍 忡忸腠钼囗睇�, � 镱祛泱 蝈徨. 项 耋耱怏, � 戾�� 镳嚓蜩麇耜� 怦� 泐蝾忸, 眍 礤 踱囹噱� 礤耜铍桴 忄骓 桧沭桎桢眚钼. � 礤 祛泱 磬躅滂蝰� 漕脬铄 怵屐� 磬 耋, 镱铎� 礤� 忸珈铈眍耱� 筱塍犭�螯�� 忭篁瘘 爨蝈痂赅, 赅� 钺睇� 膻滂...<n><t>亦�, 螓 祉� 镱祛汔屮� � 桧沭桎桢眚囔�, � � 镱祛汔� 蝈徨 � 蜮铊� 磬镨蜿铎. 青镨覃忄�: 1 <b��耦 镥聍囗钽� 牮噌�>; 10 <b族痦铋 牮囫觇>; 20 <b项徨泐� 赅牝篑�>; 5 <b綦嚓铐钼>.<n><t><b��耦 镥聍囗钽� 牮噌�> 祛骓� 漕耱囹� � <r署噌�> (1269,3250), <b族痦簋 牮囫牦> � <r砚桊屣钽� 痼徼眍忸泐 溴朦翳磬> (973,2358), <b项徨汨 赅牝篑�> � <r请钺钿�> (1027,3551),� <b噪嚓铐�> � <r最觏篁铋 钼鳆> (1968,2697).")

	MisBeginCondition(NoRecord, 1622)
	MisBeginCondition(NoMission,1622)
	MisBeginCondition(HasMission, 1621)
	MisBeginCondition(NoRecord, 1621)
	MisBeginAction(AddMission, 1622)
	MisBeginAction(SetFlag, 1622, 1)

	MisBeginAction(AddTrigger, 16221, TE_GETITEM, 4890, 1)
	MisBeginAction(AddTrigger, 16222, TE_GETITEM, 4606, 10)
	MisBeginAction(AddTrigger, 16223, TE_GETITEM, 1691, 20)
	MisBeginAction(AddTrigger, 16224, TE_GETITEM, 1779, 5)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>项祛汨 <r橡桧鲶-蝠栩铐� - 锗耨囗�> (1254,3491) 耦狃囹� 礤钺躅滂禧� 桧沭桎桢眚�.")

	MisNeed(MIS_NEED_ITEM, 4890, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4606, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 1691, 20, 40, 20)
	MisNeed(MIS_NEED_ITEM, 1779, 5, 70, 5)

	MisHelpTalk("<t>霹� 礤 怦�? 央桫觐� 箧 戾潆屙眍, 眍 � 蝾 龛牦溧 礤 蝾痤镫� - 痼襦腙� 骅怏� �-�-铟屙� 漕脬�, 镫, � 漕忸朦眍 蝈痫咫桠, 麇泐 礤 耜噫屮� � 蝈徨!?")
	MisResultTalk("<t>>毋�, 蝮� 怦�! 枢驽蝰�, 溴轳蜮栩咫� 怦�! 悟腓黜�, 忸� 蝾 黩� 眢骓�... C钼屦眈蜮�... 泥驽 恹殇弪 2 漕琨. 袜溴�, 黩� 蔓 漕礤皴蝈 疋铪 � 鲥腩耱� � 耦躔囗眍耱�! � 龛觐沅� 礤 玎狍潴 蝾 黩� 蔓 皲咫嚯� 潆� 戾��.")
	MisBeginCondition(NoRecord, 1622)
	MisResultCondition(HasMission, 1622)
	MisResultCondition(HasItem, 4890, 1)
	MisResultCondition(HasItem, 4606, 10)
	MisResultCondition(HasItem, 1691, 20)
	MisResultCondition(HasItem, 1779, 5)

	MisResultAction(TakeItem, 4890, 1)
	MisResultAction(TakeItem, 4606, 10)
	MisResultAction(TakeItem, 1691, 20)
	MisResultAction(TakeItem, 1779, 5)

	MisResultAction(GiveItem, 6206, 1, 4)
	MisResultAction(ClearMission, 1622)
	MisResultAction(SetRecord, 1622)
	MisResultAction(AddMoney,20000,20000)

	InitTrigger()
	TriggerCondition(1, IsItem, 4890)
	TriggerAction(1, AddNextFlag, 1622, 10, 1)
	RegCurTrigger(16221)

	InitTrigger()
	TriggerCondition(1, IsItem, 4606)
	TriggerAction(1, AddNextFlag, 1622, 20, 10)
	RegCurTrigger(16222)

	InitTrigger()
	TriggerCondition(1, IsItem, 1691)
	TriggerAction(1, AddNextFlag, 1622, 40, 20)
	RegCurTrigger(16223)

	InitTrigger()
	TriggerCondition(1, IsItem, 1779)
	TriggerAction(1, AddNextFlag, 1622, 70, 5)
	RegCurTrigger(16224)


--悟镳噔��轳� � 泐痤� 剜轵囗 � 磬忮滂 耧疣怅�
	DefineMission(6304, "悟镳噔��轳� � 泐痤� 剜轵囗 � 磬忮滂 耧疣怅�",1623)

	MisBeginTalk ( "<t>*磬镥忄弪 镥耥� <p'Do not worry, be happy'>*<n><t>� 蝈镥瘘 � 怦� 蝈徨 疣耨赅骟! � 钺� 蜞�, 赅驿 珥噱�, 黩� 钽礤睇� � � 脲沐礓囵睇� 铖蝠钼 氰禧... 昨�? 饮 礤 珥噱 脲沐潴 �. 氰禧? 饮, 螓, 螓... 圊 螓 礤泐���!<n><t>饮 恹忸滂 戾�� 桤 皴��.. 鲤痧..!<n><t>亦�... 玎狍潼! 悟镳噔��轳� � <b剜轵囗>, 铗� <r灭箸麒赅 - 离� 鼠> (832,3707) - 铐 蝈徨 怦� 疣耨赅驽�.")
	MisBeginCondition(NoRecord, 1623)
	MisBeginCondition(NoMission,1623)
	MisBeginCondition(HasRecord, 1621)
	MisBeginAction(AddMission, 1623)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>悟镳噔栩� � <b剜轵囗>, 磬轵� <r灭箸麒赅 - 离� 鼠> (832,3707) � 疣耨镳铖栩� � <r务蝠钼� 氰禧>")

	MisHelpTalk ( "<t>霹� 礤 躅滂� 蝮溧? � 麇 怦蜞� 蝮� 蝾沅�?! 填驽� 恹稂屐?")
	MisResultCondition(AlwaysFailure)

--悟镳噔��轳� � 泐痤� 剜轵囗 � 磬忮滂 耧疣怅�
	DefineMission(6305, "悟镳噔��轳� � 泐痤� 剜轵囗 � 磬忮滂 耧疣怅�",1623, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>义�� 镳桉豚豚 � 稂�睃? 皖 � 珥帼 礤 蜞� 箧 � 祉钽�...")
	MisResultCondition(NoRecord, 1623)
	MisResultCondition(HasMission, 1623)
	MisResultAction(ClearMission, 1623)
	MisResultAction(SetRecord, 1623)
	MisResultAction(AddExpAndType,2,300,300)
	MisResultAction(GiveNpcMission, 6306, "灭箸麒� - 离� 鼠", 2)

--彦牮弪 铖蝠钼� 氰禧
	DefineMission(6306, "彦牮弪 铖蝠钼� 氰禧",1624)
	MisBeginTalk("<t>腻轳蜮栩咫� 羼螯 疋�琰 戾驿� 镱�怆屙桢� 钽礤眄钽� 疣 � 玷禧 磬 蝾� 铖蝠钼�. 皖 � 膻犷� 耠篦噱, 疋�琰 � 礤 磬耱铍� 耔朦磬, 栳� 怦� 镱� 怆囫螯� 磬� 令汨龛.<n><t>� 潴爨�, 黩� 蝈徨 蜞赕� 耱铊� 珥囹�, 黩� � 忮痼栝, 眍 祉钽桢 漕牦戾眚� 铖蜞腓顸 � 耱囵铎 躔囔�. 篷腓 磬黜屮� 镱桉� 蜞�, 蝾 忸珈铈眍 镱塍麒 铗忮�. 扬痤耔 <r岭嚆铟羼蜩怏� 骛桷� - 冷�> (862,3303), 铐� 珥噱� 镱犷朦 戾��.")
	MisBeginCondition(NoRecord, 1624)
	MisBeginCondition(NoMission,1624)
	MisBeginCondition(HasRecord, 1623)
	MisBeginAction(AddMission, 1624)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>悟镳噔��轳� 磬 皴忮� � <b耱囵 泐痤�> � 磬殇� <r岭嚆铟羼蜩怏� 骛桷� - 冷�> (862,3303), 铐� 蝈徨 怦� 疣耨赅驽�.")

	MisHelpTalk("<t>蔓 磬戾疱忄弪羼� 耧痤耔螯 � 镳铠腩�? 莉彖珈 龛觐沅� 礤 恹眢驿嚯 膻溴� 桤戾龛螯 疋铊 耦牮钼屙睇� 禧耠�.")
	MisResultCondition(AlwaysFailure)

--彦牮弪 铖蝠钼� 氰禧
	DefineMission(6307, "彦牮弪 铖蝠钼� 氰禧",1624, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>务蝠钼 氰禧??? 项漕驿栩� 礤祉钽�. � 玎觐眵� 耦 疋铊扈 溴豚扈 � 镳桁篑� 玎 忄�.")
	MisResultCondition(NoRecord, 1624)
	MisResultCondition(HasMission, 1624)
	MisResultAction(ClearMission, 1624)
	MisResultAction(SetRecord, 1624)
	MisResultAction(AddExpAndType,2,350,350)
	MisResultAction(GiveNpcMission, 6308, "岭嚆铟羼蜩忄� 骛桷� - 冷�",15)

--青汔漕黜 妈腚� � 彦忮疣
	DefineMission(6308, "青汔漕黜 妈腚� � 彦忮疣",1625)
	MisBeginTalk("<t>蔓 耠嚯� � 妈腚�? 雾 耋镳筱 枢瘥, 铐 磬� 扈�, 令�-悟弼.<n><t>腻��螯 螓��� 脲� 磬玎�, 徨� 赅觐� 腓犷 镳梓桧� 铐 镱觇眢� 磬� 扈� � 忮痦箅�� � 疋铋 痤漤铋 漕�, 镱耠� 钽� 怦� 桤戾龛腩顸. 令汨�� 桤戾龛豚顸... 栗... 橡铖蜩蝈, 玎猁豚...<n><t>骂� 黩�, 羼螯 祗漯弼, 觐蝾瘥� 钺豚溧弪 忮�, 黩� 祛驽� 镱祛鼽 祉� 怦镱祉栩�. � 耠嚯�, 黩� 铐 磬躅滂蝰� � <b惕疱 腻祛眍�> � 玮囹� 邈� <r蒌忄痄> (266,230).")
	MisBeginCondition(NoRecord, 1625)
	MisBeginCondition(NoMission,1625)
	MisBeginCondition(NoRecord, 1626)
	MisBeginCondition(HasRecord, 1624)
	MisBeginAction(AddMission, 1625)
	MisBeginAction(AddTrigger,16251, TE_GETITEM,4301, 1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>袜殇� <r蒌忄痄�> (266,230) � <b惕疱 腻祛眍�> � 镳桧羼栩� 铗 礤泐 <p项耦� 疣珞爨> 潆� <r岭嚆铟羼蜩忸� 骛桷� - 冷�> (862,3303).")
	MisNeed(MIS_NEED_ITEM, 4301, 1, 10, 1)

	MisHelpTalk("<t>惕� 腻祛眍� - 镳尻疣耥铄 戾耱�.")
	MisResultTalk("<t>橡桧羼腓? 西屙� 躅痤, 蝈镥瘘 � 祛泱 镳钿铍骅螯..")
	MisResultCondition(HasMission, 1625)
	MisResultCondition(NoRecord,1625)
	MisResultCondition(HasItem, 4301, 1)
	MisResultAction(TakeItem, 4301, 1)
	MisResultAction(ClearMission, 1625)
	MisResultAction(SetRecord, 1625)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultAction(GiveNpcMission, 6310, "岭嚆铟羼蜩忄� 骛桷� - 冷�",16)

	InitTrigger()
	TriggerCondition(1, IsItem, 4301)
	TriggerAction(1, AddNextFlag, 1625, 10, 1)
	RegCurTrigger(16251)

--��蝈骓 扈� 溴祛眍�
	DefineMission(6309, "��蝈骓 扈� 溴祛眍�",1626)
	MisBeginTalk("<t>泥忭� 礤 忤溴腓顸? 饮 镳桫咫 玎 镱耦躅�? 泥, 铐 羼螯 � 戾��, 眍 � 耦驵脲龛�, 镳铖蝾 蜞� � 邈� 蝈徨 礤 铗溧�.<n><t>惕� 溴祛眍� 觇� 祛眈蝠囔�, 觐蝾瘥� � 镱耠邃礤� 怵屐� 耱嚯� 戾�� 徨耧铌铊螯. 项祛驽 祉� 筢栩� 50 <b橡铌��螓� 麇痦 瘥皴�> � � 镱祛泱 蝈徨?!")
	MisBeginCondition(NoRecord, 1626)
	MisBeginCondition(NoMission,1626)
	MisBeginCondition(HasMission, 1625)
	MisBeginCondition(NoRecord, 1625)
	MisBeginAction(AddMission, 1626)

	MisBeginAction(AddTrigger, 16261, TE_KILL, 559, 50)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>俞彘 50 <b橡铌��螓� 麇痦 瘥皴�> 潆� <r蒌忄痄�> (266,230)")

	MisNeed(MIS_NEED_KILL, 559, 50, 10, 50)

	MisHelpTalk("<t>悟 祛眈蝠钼 镳钺脲� 犷朦, 麇� 铗...铗 镳桊钿睇� 赅蜞觌桤祛�?!")
	MisResultTalk("<t>扬囫栳� 蝈徨 玎 镱祛. 骂� 蝈徨 祛� 镱溧痤�... 左怦蜮簋 皴�� 腻漕� 填痤珙�!")

	MisBeginCondition(NoRecord, 1626)
	MisResultCondition(HasMission, 1626)
	MisResultCondition(HasFlag, 1626, 59)
	MisResultAction(GiveItem, 4301, 1, 4)
	MisResultAction(ClearMission, 1626)
	MisResultAction(SetRecord, 1626)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,450,450)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 559 )
	TriggerAction( 1, AddNextFlag, 1626, 10, 50 )
	RegCurTrigger( 16261 )

--体耱铐圊铈溴龛� 妈腚� � 彦忮疣 1
	DefineMission(6310, "体耱铐圊铈溴龛� 妈腚� � 彦忮疣 1",1627)
	MisBeginTalk("<t>闰嚓...<n><t>令汨�� 疣玢礤忄豚顸, � 疱珞朦蜞蝈 麇泐 珏祀� 剜轵囗� 铗觐腩腭� 铗 爨蝈痂赅 绵睇, 耱囵 泐痤� 玎礤耠� 镥耜铎; 吾疣珙忄腓顸 枢痂狁觇� 铖蝠钼�, 铖蝠钼� 麇螓疱� 皴珙眍�, 扈� 溴祛眍�. 如-玎 忸玮疣龛� 妈腚� � 悟鲶-杨玟囹咫� 镱�忤腭� 钽礤睇� �, 赅� 铞桀磬朦磬� 耋狁蜞眦�� 镥疱骅忄龛� 令汨龛...<n><t>� 戾耱铐圊铈溴龛� 妈腚� 耧痤耔 � <r枢镨蜞磬 逆尻�> (1672,3777), 铐 磬 <b铖蝠钼� 枢磬疱尻>.")
	MisBeginCondition(NoRecord, 1627)
	MisBeginCondition(NoMission,1627)
	MisBeginCondition(HasRecord, 1625)
	MisBeginAction(AddMission, 1627)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>悟镳噔��轳� 磬 <b铖蝠钼 枢磬疱尻>, 磬殇� <r枢镨蜞磬 逆尻�> (1672,3777) � 恹�耥� 怦� � 戾耱铒铍铈屙桢 妈腚�.")

	MisHelpTalk("<t>妈腚� - 悟弼-务眍忄蝈朦... 雾 耩邃� 膻溴�?")
	MisResultCondition(AlwaysFailure)

--体耱铐圊铈溴龛� 妈腚� � 彦忮疣 1
	DefineMission(6311, "体耱铐圊铈溴龛� 妈腚� � 彦忮疣 1",1627, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>饮 铗 骛桷�? 殷� 礤� 妈腚�? 义镥瘘 � � 铎 筢彐溴�.")
	MisResultCondition(NoRecord, 1627)
	MisResultCondition(HasMission, 1627)
	MisResultAction(ClearMission, 1627)
	MisResultAction(SetRecord, 1627)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6312, "枢镨蜞� 逆尻", 17)

--体耱铐圊铈溴龛� 妈腚� � 彦忮疣 2
	DefineMission(6312, "体耱铐圊铈溴龛� 妈腚� � 彦忮疣 2",1628)

	MisBeginTalk("<t>� 怊屦� 忮痦箅�� � 氰祉桴 铖蝠钼钼... 昨� � 祛泱 耜噻囹�... 雾� 铖钺屙睇�... 枢驿 镱-疋铄祗. � 耔朦眍 耦祉邂帼顸, 黩� 沅�-蝾 羼螯 戾耱�, 镱躅驽� 磬 �...<n><t>妈腚� 漕腈屙 猁螯 沅�-蝾 磬 疋铄� 铖蝠钼� 铌铍� 铉屦� � 铖眍忭铋 泐痦铋 鲥镨. 皖 铖蝠钼 铟屙� 铒囫屙.<n><t>捏爨� <r翔疣� 逆屦屐�> (2362,657) 耢铈弪 蝈徨 麇�-龛狍潼 镱祛鼽. 羊箫嚅 � 礤祗.")
	MisBeginCondition(NoRecord, 1628)
	MisBeginCondition(NoMission,1628)
	MisBeginCondition(HasRecord, 1627)
	MisBeginAction(AddMission, 1628)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>� 祛疱, 磬 铖蝠钼�, 镱牮铎 耥邈铎 � 朦漕�, 铗� <r翔疣蜞 逆屦屐�> (2362,657)")

	MisHelpTalk("<t>务蝠钼 氰禧 铖钺屙睇�... 斟�... � 礤� 躅滂� 钽痤祉铄 觐腓麇耱忸 脲沐礓.")
	MisResultCondition(AlwaysFailure)

--体耱铐圊铈溴龛� 妈腚� � 彦忮疣 2
	DefineMission(6313, "体耱铐圊铈溴龛� 妈腚� � 彦忮疣 2",1628, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>锗踵, 镱漕琊邂帼, 黩� 蝈�� 镳桉豚� 觐 祉� 爨臌� 逆尻!")
	MisResultCondition(NoRecord, 1628)
	MisResultCondition(HasMission, 1628)
	MisResultAction(ClearMission, 1628)
	MisResultAction(SetRecord, 1628)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6314, "翔疣� 逆屦屐�", 7)

--橡钺脲爨 逆屦屐�
	DefineMission(6314, "橡钺脲爨 逆屦屐�",1629)
	MisBeginTalk("<t>渔囫眍� 磬耱痤屙桢, 觐耱铟觇 箧� 礤 蝈, � 妁� 镱腠� 驽豚桴 磬麒耱栩� 蝈徨 瘥腩... 斟-蹂, � 螓 恹汶�滂 耠邈赅 磬矬汔眄, 爨脲睃觇� 耦镫��.<n><t>填泱 镱祛鼽 蝈徨, 羼腓 镳桧羼屮� 祉� 20 <b蓦栝耜桴 麴箨蝾�>. � 疣耨赅骟 蝈徨 赅� 镱镟耱� 磬 氰祉栝 铖蝠钼!")
	MisBeginCondition(NoRecord, 1629)
	MisBeginCondition(NoMission,1629)
	MisBeginCondition(HasRecord, 1628)
	MisBeginAction(AddMission, 1629)
	MisBeginAction(AddTrigger,16291, TE_GETITEM,3116, 20)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>橡桧羼� <r翔疣蝮 逆屦屐�> (2362,657) 20 <b蓦栝耜桴 麴箨蝾�> � 铐 疣耨赅驽� 蝈徨 赅� 镱镟耱� 磬 铖蝠钼 氰禧.")
	MisNeed(MIS_NEED_ITEM, 3116, 20, 10, 20)

	MisHelpTalk("<t>妙忸���, 黩� 氰祉桢 铖蝠钼� 爨��� � 爨���...")
	MisResultTalk("<t>疹痤, 躅痤... 西屙� 躅痤! 毋痤祉铄 蝈徨 耧囫栳�!")
	MisResultCondition(HasMission, 1629)
	MisResultCondition(NoRecord,1629)
	MisResultCondition(HasItem, 3116, 20)
	MisResultAction(TakeItem, 3116, 20)
	MisResultAction(ClearMission, 1629)
	MisResultAction(SetRecord, 1629)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(GiveNpcMission, 6315, "翔疣� 逆屦屐�", 8)

	InitTrigger()
	TriggerCondition(1, IsItem, 3116)
	TriggerAction(1, AddNextFlag, 1629, 10, 20)
	RegCurTrigger(16291)

--项覃腙� 逆屦屐�
	DefineMission(6315, "项覃腙� 逆屦屐�",1630)
	MisBeginTalk("<t>腻疰� 镱覃腩麝�. 悟礤皴 甯 <r填磬瘐� 隋潲龛 - 锑耋> (1346,451). 雾 蝈徨 疣耨赅驽�, 黩� 溴豚螯 溧朦.")
	MisBeginCondition(NoRecord, 1630)
	MisBeginCondition(NoMission,1630)
	MisBeginCondition(HasRecord, 1629)
	MisBeginAction(AddMission, 1630)
	MisBeginAction(GiveItem, 6207, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>念耱噔� <b项覃腙� 逆屦屐�> <r填磬瘐� 隋潲龛 - 锑耋> (1346,451).")

	MisHelpTalk("<t>蝻疣怆�轳� 耜铕邋, 镱蝾痤镨顸!")
	MisResultCondition(AlwaysFailure)

--项覃腙� 逆屦屐�
	DefineMission(6316, "项覃腙� 逆屦屐�",1630, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t><b项覃腙� 逆屦屐�>?<n><t>亦�, 镱��蝽�... 侦... 玎戾鬣蝈朦眍.")
	MisResultCondition(NoRecord, 1630)
	MisResultCondition(HasMission, 1630)
	MisResultCondition(HasItem, 6207, 1)
	MisResultAction(TakeItem, 6207, 1)
	MisResultAction(ClearMission, 1630)
	MisResultAction(SetRecord, 1630)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6317, "填磬瘐 隋潲龛 - 锑�", 17)

--象螯 � 洛耥钽疣�
	DefineMission(6317, "象螯 � 洛耥钽疣�",1631)
	MisBeginTalk("<t>篷螯 妁� 驽豚栝 铗镳噔栩�� 磬 铖蝠钼 氰禧... 侦... 雾 铟屙� 铒囫屙...<n><t>羼腓 螓 疱� 箪屦弪�, � 礤 耱囗� 蝈�� 铖蜞磬怆桠囹�, 躅��... 饮 � 膻犷� 耠篦噱 箪疱... 暑沅�-龛狍潼<n><t>饮 筲屦屙, 黩� 泐蝾�? 疹痤... 悟镳噔��轳� � <b洛耥钽疣�> � 忸琰扈 � 耦犷� � 箨疣龛�! <r腻怏� - 殷爨�> (3241,2533) 祛� 镱漯筱�. 悟溧� 彘 � 箨疣龛�!")
	MisBeginCondition(NoRecord, 1631)
	MisBeginCondition(NoMission,1631)
	MisBeginCondition(HasRecord, 1630)
	MisBeginAction(AddMission, 1631)
	MisBeginAction(GiveItem, 6208, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>埋蝠弪� � <b洛耥钽疣溴> c <r腻怏铋 - 殷爨�> (3241,2533)")

	MisHelpTalk("<t>劐忮腓顸!!!")
	MisResultCondition(AlwaysFailure)

--象螯 � 洛耥钽疣�
	DefineMission(6318, "象螯 � 洛耥钽疣�",1631, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>令驽, 黩� �?!")
	MisResultCondition(NoRecord, 1631)
	MisResultCondition(HasMission, 1631)
	MisResultCondition(HasItem, 6208, 1)
	MisResultAction(TakeItem, 6208, 1)
	MisResultAction(ClearMission, 1631)
	MisResultAction(SetRecord, 1631) 
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6319, "腻怏� - 殷爨�", 4)

--揄铖螯 - 青忤耱� 殷爨磬
	DefineMission(6319, "揄铖螯 - 青忤耱� 殷爨磬",1632)
	MisResultTalk("<t>疹痤, 铗 <r揄铠� - 吾豚觐>(3275,2467)... 橡铖蝾 礤恹眍耔�!<n><t>项耠邃黹� 疣� 禧 矬蝈耱忸忄腓 � 蝮痦� 镱 务屙�! � 玎溧忄豚 屐� 牦黧 忸镳铖钼, � 铐 桡眍痂痤忄�! 项潆弼! 橡铖蝾 礤泐���!<n><t>皖 怦� 驽, 羼腓 磬殇屮� 邈�, 镱镳铖� 邈� 镱祛鼽 祉� 躅�� 猁 皴轺囫!")
	MisBeginCondition(NoRecord, 1632)
	MisBeginCondition(NoMission,1632)
	MisBeginCondition(HasRecord, 1631)
	MisBeginAction(AddMission, 1632)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>悟� <r揄铠� - 吾豚觐>(3275,2467) 镱 镳铖� <r腻怏� - 殷爨�>(3241,2533).")

	MisHelpTalk("<t>枢� 螓 祛�?! 饮 ���!!!")
	MisResultCondition(AlwaysFailure)

--揄铖螯 - 青忤耱� 殷爨磬
	DefineMission(6320, "揄铖螯 - 青忤耱� 殷爨磬",1632, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>� 戾�� 羼螯 潆� 礤� 怦邈� 礤耜铍� 耠钼...")
	MisResultCondition(NoRecord, 1632)
	MisResultCondition(HasMission, 1632)
	MisResultAction(ClearMission, 1632)
	MisResultAction(SetRecord, 1632)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6321, "揄铠� - 吾豚觐", 6)

--揄铖螯 - 橡钺脲爨 吾豚赅
	DefineMission(6321, "揄铖螯 - 橡钺脲爨 吾豚赅",1633)

	MisBeginTalk("<t>帖 镳钽箅桠嚯桉� 镱 铖蝠钼� 铖屙�, 赅� 怃痼� 礤铈桎囗眍 镱�忤豚顸 羊疣眄桷�. � 镱稃蜞腭� 箸磬螯, 黩� 镳铊聃钿栩, 眍 礤 祛� 疋�玎螯 � 溻篚 耠钼, � 铢簌屙桢 猁腩, 赅� 狍潋� � 痤� 忸潲 磬狃嚯. � 礤 祛� 耱��螯, � 礤 祛� 镱��螯, 黩� 镳铊珙�.<n><t>昨�? 饮 棂屮� <r羊疣眄桷�> (2423,3186)? � 礤 躅黧 镱溻屦汔螯 皴�� 铒囫眍耱�! � 疣耨赅骟 沅� 邋 磬轵�, 眍 溧脲� - � 箧� 蜮铊 镳钺脲禧.<n><t>腮� 甯 磬 <b铖蝠钼� 务屙�> ��漕� � 蜞桧耱忮眄 爨汨麇耜桁 牮筱铎.")
	MisBeginCondition(NoRecord, 1633)
	MisBeginCondition(NoMission,1633)
	MisBeginCondition(HasRecord, 1632)
	MisBeginAction(AddMission, 1633)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>悟� <r羊疣眄桷�>(2423,3186) 磬 <b铖蝠钼� 务屙�>.")

	MisHelpTalk("<t>蒡铗 溴睃 龛觐沅� 礤 觐眵栩��.")
	MisResultCondition(AlwaysFailure)

--揄铖螯 - 橡钺脲爨 吾豚赅
	DefineMission(6322, "揄铖螯 - 橡钺脲爨 吾豚赅",1633, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>填驽� 镱泐忸痂�?")
	MisResultCondition(NoRecord, 1633)
	MisResultCondition(HasMission, 1633)
	MisResultAction(ClearMission, 1633)
	MisResultAction(SetRecord, 1633)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6323, "羊疣眄桷�", 2)

--橡铖� 耱疣眄桷�
	DefineMission(6323, "橡铖� 耱疣眄桷�",1634)

	MisBeginTalk("<t>青汔漕黜铄 戾耱�... 西屙� 驵朦, � 赅� 狍潋� � 囫蝠嚯�... 饮 镳桫咫 觐 祉� 礤 镳铖蝾 蜞�... 昨� 耠篦桦铖�? 棱蝾狍耥 蝮� �75 镱 务屙� 箧� 耱囵蝾忄�..<n><t>侦...<n><t>湾 眢骓� 耜箴耔�? 疹麇 磬轵� 觐�-觐泐? 洋�� 镱 蜮铄� 桉蝾痂�, 螓 镳钿咫嚯 漕脬栝 矬螯... 皖, � 疣耨赅骟 蝈徨 怦�, 蝾朦觐 羼腓 镱祛驽 祉�!")
	MisBeginCondition(NoRecord, 1634)
	MisBeginCondition(NoMission,1634)
	MisBeginCondition(HasRecord, 1633)
	MisBeginAction(AddMission, 1634)

	MisBeginAction(AddTrigger, 16341, TE_KILL, 734, 25)
	MisBeginAction(AddTrigger, 16342, TE_KILL, 735, 30)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>俞彘 潆� <r羊疣眄桷�>(2423,3186) 25 <p翔疣蝾� 006>(2736,3042) � 30 <p翔疣蝾� 007>(2736,3042)")

	MisNeed(MIS_NEED_KILL, 734, 25, 10, 25)
	MisNeed(MIS_NEED_KILL, 735, 30, 40, 30)

	MisHelpTalk("<t>羊疣眄 膻滂, 耱疣眄� 耢铗��� 磬 戾��...")
	MisResultTalk("<t>羽�... 袜觐礤� 扈� � 耧铌铋耱忤�...")

	MisBeginCondition(NoRecord, 1634)
	MisResultCondition(HasMission, 1634)
	MisResultCondition(HasFlag, 1634, 34)

	MisResultCondition(HasFlag, 1634, 69)
	MisResultAction(ClearMission, 1634)
	MisResultAction(SetRecord, 1634)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(GiveNpcMission, 6324, "羊疣眄桷�", 3)

	InitTrigger()
	TriggerCondition(1, IsMonster, 734)
	TriggerAction(1, AddNextFlag, 1634, 10, 25)
	RegCurTrigger(16341)

	InitTrigger()
	TriggerCondition(1, IsMonster, 735)
	TriggerAction(1, AddNextFlag, 1634, 40, 30)
	RegCurTrigger(16342)


--吾铈囗桢 耱疣眄桷�
	DefineMission(6324, "吾铈囗桢 耱疣眄桷�",1635)

	MisBeginTalk("<t>暑沅� � 怙屦恹� 邈� 筲桎咫�, � 怆桦囫� 镱 篪�...<n><t>晤...雾 蜞觐� 牮囫桠, 蜞觐� 箪睇�... � 赅觐� 踵疣牝屦! � 赅觇� � 礤泐 汶噻�!! 雾 蜞� 钿桧... 羊铊� 蜩躅, 耧铌铋眍! 雾 耜噻嚯, 黩� 邈� 珙怏� <r妈腚�> (2582,3245). 亦觐� 铢簌屙桢, 黩� � 耠嚯� � 桁� 镳彐溴.<n><t>襄疱溧� 屐� 镳桠弪 铗 戾��!")
	MisBeginCondition(NoRecord, 1635)
	MisBeginCondition(NoMission,1635)
	MisBeginCondition(HasRecord, 1634)
	MisBeginAction(AddMission, 1635)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>悟� <r妈腚�> (2582,3245) � 镥疱溧� 屐� 镳桠弪 铗 羊疣眄桷�.")

	MisHelpTalk("<t>枢� � 蜞�?! 项麇祗 怦� 桁屙眍 蜞�???")
	MisResultCondition(AlwaysFailure)

--吾铈囗桢 耱疣眄桷�
	DefineMission(6325, "吾铈囗桢 耱疣眄桷�",1635, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>...� 怦邈� 腓 麇腩忮�, 觐蝾瘥� 礤 祛驽� 皴徨 龛麇泐 镱玮铍栩�...")
	MisResultCondition(NoRecord, 1635)
	MisResultCondition(HasMission, 1635)
	MisResultAction(ClearMission, 1635)
	MisResultAction(SetRecord, 1635)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6326, "妈腚�", 2)

--象螯 磬 铖蝠钼 氰禧
	DefineMission(6326, "象螯 磬 铖蝠钼 氰禧",1636)
	MisBeginTalk("<t>体�� 珙怏� 妈腚�. � 铟屙� 忸珈簌屙, 黩� 铐 铒鬻嚯屙 � � 礤泐 蜞觇� 禧耠�...<n><t>篷腓 躅麇 铗赅螯 邈� - 铗镳噔��轳� 磬 氰祉桢 铖蝠钼�, 眍 镳铖蝾祗 耢屦蝽铎� � 礤 溧眍. 碾� 磬鬣豚 螓 漕腈屙 漕赅玎螯, 黩� 螓 钽� 漕耱铊�!<n><t>添� 眢骓� 10 <b族痦 驽祺箧桧> � <r吾栩嚯彘 �. 洛耥�> (3194,2433), 10 <b��驽臌� 镟豚� �疣> � <r吾栩嚯彘 �. 隋蜞> (3650,2967) � 10 <b肃珞痦 牮桉蜞腚钼> � <r吾栩嚯彘 �. 务屙�> (2736,3042).")
	MisBeginCondition(NoRecord, 1636)
	MisBeginCondition(NoMission,1636)
	MisBeginCondition(HasRecord, 1635)
	MisBeginAction(AddMission, 1636)
	MisBeginAction(AddTrigger,16361, TE_GETITEM,3362, 10)
	MisBeginAction(AddTrigger,16362, TE_GETITEM,4848, 10)
	MisBeginAction(AddTrigger,16363, TE_GETITEM,3366, 10)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>橡桧羼� <r妈腚�> (2582,3245) 10 <b族痦 驽祺箧桧>, 10 <b��驽臌� 镟豚� �疣> � 10 <b肃珞痦 牮桉蜞腚钼>, 潆� 蝾泐 黩钺� 镱镟耱� 磬 <p�. 氰禧>.")
	MisNeed(MIS_NEED_ITEM, 3362, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 4848, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3366, 10, 30, 10)

	MisHelpTalk("<t>央铈眍, 羼腓 怵嚆 � 黧怦蜮箦�! 唁嚅�� � 礤 溴豚� 龛麇泐!")
	MisResultTalk("<t>蒡� 铉磬鬣弪, 黩� 螓 溴轳蜮栩咫� 躅麇 磬 铖蝠钼 氰禧. 西屙� 躅痤!<n><t>枢� � � 钺妁嚯... 义镥瘘, 螓 祛驽 铗镳噔��螯��... 袜 , 麇疱� 祛�� - 忸痤黻� 驿弪!")
	MisResultCondition(HasMission, 1636)
	MisResultCondition(NoRecord,1636)
	MisResultCondition(HasItem, 3362, 10)
	MisResultCondition(HasItem, 4848, 10)
	MisResultCondition(HasItem, 3366, 10)
	MisResultAction(TakeItem, 3362, 10)
	MisResultAction(TakeItem, 4848, 10)
	MisResultAction(TakeItem, 3366, 10)
	MisResultAction(ClearMission, 1636)
	MisResultAction(SetRecord, 1636)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,500,500)

	InitTrigger()
	TriggerCondition(1, IsItem, 3362)
	TriggerAction(1, AddNextFlag, 1636, 10, 10)
	RegCurTrigger(16361)

	InitTrigger()
	TriggerCondition(1, IsItem, 4848)
	TriggerAction(1, AddNextFlag, 1636, 20, 10)
	RegCurTrigger(16362)

	InitTrigger()
	TriggerCondition(1, IsItem, 3366)
	TriggerAction(1, AddNextFlag, 1636, 30, 10)
	RegCurTrigger(16363)

--务祛蝠 铖蝠钼� 氰禧
	DefineMission(6327, "务祛蝠 铖蝠钼� 氰禧",1637)

	MisBeginTalk("<t>� 蜞� 漕 耔� 镱� � 礤 恹�耥桦, 黩� 耦狁蜮屙眍 镳铊珙�. 枢觐� 镱珙�!<n><t>袜黜� 耥圜嚯�... � 囵蹂铍钽... � 铗镳噔桦 麇螓疱� 耱箐屙蝾�, 镱 铖蝠钼囔. 骂珈铈眍 铐� 耢钽篁 镳邃铖蜞忤螯 祉� 礤祉钽� 桧纛痨圉梃. 项耱囵嚅�� 磬轵� 桴 � 忡�螯 桴 <b企痦嚯� 橡桕膻麇龛�> 潆� 戾��. 袜殇�: <r锐耠邃钼囹咫� -  予眈蝾磬> (472,531) 磬 <b秧彐眍� 铖蝠钼� 枢瘥>; <r锐耠邃钼囹咫� - 署桉�> (1147,403) 磬 <b秧彐眍� 铖蝠钼� 妈腚�>; <r锐耠邃钼囹咫� - 髓铐�> (365,1526) � <r锐耠邃钼囹咫� - 逆桦塍> (958,1159) 磬 <b铖蝠钼� 隋��睇� 铉屦>.")
	MisBeginCondition(NoRecord, 1637)
	MisBeginCondition(NoMission,1637)
	MisBeginCondition(HasRecord, 1636)
	MisBeginCondition(NoRecord, 1638)
	MisBeginCondition(NoRecord, 1639)
	MisBeginCondition(NoRecord, 1640)
	MisBeginCondition(NoRecord, 1641)
	MisBeginAction(AddMission, 1637)
	MisBeginAction(AddTrigger,16371, TE_GETITEM,6209, 1)
	MisBeginAction(AddTrigger,16372, TE_GETITEM,6210, 1)
	MisBeginAction(AddTrigger,16373, TE_GETITEM,6211, 1)
	MisBeginAction(AddTrigger,16374, TE_GETITEM,6212, 1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>橡桧羼� <p企痦嚯� 橡桕膻麇龛�> <r喻屙铎� - 慑> (297,901)")
	MisNeed(MIS_NEED_ITEM, 6209, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 6210, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 6211, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 6212, 1, 40, 1)

	MisHelpTalk("<t>添� 眢骓� 怵屐� 镱潴爨螯... 项麇祗 怦� 镳铊珙� 桁屙眍 蜞�?")
	MisResultTalk("<t>扬囫栳� 玎 镱祛! 项躅驽 篦屙桕� 镱蝠箐桦桉� 磬 耠噔� � 耦狃嚯� 怦� 礤钺躅滂祗� 桧纛痨圉棹.")
	MisResultCondition(HasMission, 1637)
	MisResultCondition(NoRecord,1637)
	MisResultCondition(HasItem, 6209, 1)
	MisResultCondition(HasItem, 6210, 1)
	MisResultCondition(HasItem, 6211, 1)
	MisResultCondition(HasItem, 6212, 1)
	MisResultAction(TakeItem, 6209, 1)
	MisResultAction(TakeItem, 6210, 1)
	MisResultAction(TakeItem, 6211, 1)
	MisResultAction(TakeItem, 6212, 1)
	MisResultAction(ClearMission, 1637)
	MisResultAction(SetRecord, 1637)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6332, "喻屙 - 慑",2)

	InitTrigger()
	TriggerCondition(1, IsItem, 6209)
	TriggerAction(1, AddNextFlag, 1637, 10, 1)
	RegCurTrigger(16371)

	InitTrigger()
	TriggerCondition(1, IsItem, 6210)
	TriggerAction(1, AddNextFlag, 1637, 20, 1)
	RegCurTrigger(16372)

	InitTrigger()
	TriggerCondition(1, IsItem, 6211)
	TriggerAction(1, AddNextFlag, 1637, 30, 1)
	RegCurTrigger(16373)

	InitTrigger()
	TriggerCondition(1, IsItem, 6212)
	TriggerAction(1, AddNextFlag, 1637, 40, 1)
	RegCurTrigger(16374)

--橡铖� 予眈蝾磬
	DefineMission(6328, "橡铖� 予眈蝾磬",1638)

	MisBeginTalk("<t>秧彐睇� 铖蝠钼 枢瘥! � 蜞� 磬琨忄� 铗 铖蝠钼... 湾 珥帼 铗牦溧 � 礤泐 蜞觐� 磬玮囗桢. 吾 铖蝠钼� 珥帼 腓, 黩� 蝮� 躔囗栩�� 赅赅�-蝾 疱腓赈��.<n><t>� 妁�, 祛眈蝠� 忸牮筱 戾�� - 漕耱嚯�! 唁咫嚅 蜞�, 黩� 猁 铐� 筢疣腓顸 镱溧朦 铗 戾��!")
	MisBeginCondition(NoRecord, 1638)
	MisBeginCondition(NoMission,1638)
	MisBeginCondition(HasMission, 1637)
	MisBeginCondition(NoRecord, 1637)
	MisBeginAction(AddMission, 1638)

	MisBeginAction(AddTrigger, 16381, TE_KILL, 1090, 20)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>项祛汨 <r锐耠邃钼囹咫� -  予眈蝾眢> (472,531) 筢栩� 20 <p秧彐睇� 隋铒囵漕�> (549,528).")

	MisNeed(MIS_NEED_KILL, 1090, 20, 10, 20)

	MisHelpTalk("<t>湾箧咫� � 蜞� 蝠箐眍? 鲤痧... 枢� 铐� 戾�� 漕耱嚯�...")
	MisResultTalk("<t>扬囫栳�, 蝈镥瘘 � 祛泱 耧铌铋眍 镳钿铍骅螯 疣犷蝮. 悟礤耔 铗麇� <r喻屙铎� - 慑> (297,901).")

	MisBeginCondition(NoRecord, 1638)
	MisResultCondition(HasMission, 1638)
	MisResultCondition(HasFlag, 1638, 29)
	MisResultAction(GiveItem, 6209, 1, 4)
	MisResultAction(ClearMission, 1638)
	MisResultAction(SetRecord, 1638)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1090)
	TriggerAction(1, AddNextFlag, 1638, 10, 20)
	RegCurTrigger(16381)

--橡铖� 署桉�
	DefineMission(6329, "橡铖� 署桉�",1639)

	MisBeginTalk("<t>类�... 义�� 镳桉豚� 镳铘羼耦�? 悟腓黜�... 泥 妁� � �... 族痱钼� 缅礤疣臌! 项祛汨 疣珙狃囹� � 龛扈.")
	MisBeginCondition(NoRecord, 1639)
	MisBeginCondition(NoMission,1639)
	MisBeginCondition(HasMission, 1637)
	MisBeginCondition(NoRecord, 1637)
	MisBeginAction(AddMission, 1639)

	MisBeginAction(AddTrigger, 16391, TE_KILL, 1091, 20)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>项祛汨 <r锐耠邃钼囹咫� - 署桉�> (1147,403) 筢栩� 20 <p缅礤疣腩� 螓赈�> (966,272).")

	MisNeed(MIS_NEED_KILL, 1091, 20, 10, 20)

	MisHelpTalk("<t>湾箧咫� � 蜞� 蝠箐眍? 鲤痧... 枢� 铐� 戾�� 漕耱嚯�...")
	MisResultTalk("<t>扬囫栳�, 蝈镥瘘 � 祛泱 耧铌铋眍 镳钿铍骅螯 疣犷蝮. 悟礤耔 铗麇� <r喻屙铎� - 慑> (297,901).")

	MisBeginCondition(NoRecord, 1639)
	MisResultCondition(HasMission, 1639)
	MisResultCondition(HasFlag, 1639, 29)
	MisResultAction(GiveItem, 6210, 1, 4)
	MisResultAction(ClearMission, 1639)
	MisResultAction(SetRecord, 1639)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1091)
	TriggerAction(1, AddNextFlag, 1639, 10, 20)
	RegCurTrigger(16391)

--悟忮� 逆桦�
	DefineMission(6330, "悟忮� 逆桦�",1640)

	MisBeginTalk("<t>类�... 义�� 镳桉豚� 镳铘羼耦�? 悟腓黜�... 皖 � 驿嚯 眍忸耱彘 铗 逆桦�... 泥 妁� � �... 赘痱钼 黧漕忤! 项祛汨 疣珙狃囹� � 龛扈.")
	MisBeginCondition(NoRecord, 1640)
	MisBeginCondition(NoMission,1640)
	MisBeginCondition(HasMission, 1637)
	MisBeginCondition(NoRecord, 1637)
	MisBeginAction(AddMission, 1640)

	MisBeginAction(AddTrigger, 16401, TE_KILL, 1085, 20)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>项祛汨 <r锐耠邃钼囹咫� - 髓铐�> (365,1526) 筢栩� 20 <p唣 体溻邃彘> (661,1230)")

	MisNeed(MIS_NEED_KILL, 1085, 20, 10, 29)

	MisHelpTalk("<t>湾箧咫� � 蜞� 蝠箐眍? 鲤痧... 枢� 铐� 戾�� 漕耱嚯�...")
	MisResultTalk("<t>扬囫栳�, 蝈镥瘘 � 祛泱 耧铌铋眍 镳钿铍骅螯 疣犷蝮. 悟礤耔 铗麇� <r喻屙铎� - 慑> (297,901).")

	MisBeginCondition(NoRecord, 1640)
	MisResultCondition(HasMission, 1640)
	MisResultCondition(HasFlag, 1640, 29)
	MisResultAction(GiveItem, 6211, 1, 4)
	MisResultAction(ClearMission, 1640)
	MisResultAction(SetRecord, 1640)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1085)
	TriggerAction(1, AddNextFlag, 1640, 10, 20)
	RegCurTrigger(16401)

--骂镳铖 囵蹂铍钽�
	DefineMission(6331, "骂镳铖 囵蹂铍钽�",1641)

	MisBeginTalk("<t>橡桠弪, � 沅� 镳铘羼耦�? � 耦徼疣豚顸 怦蝠弪栩� � 髓铐铎, 眍 玎犭箐桦囫�, � 镱蝾� 妁� � 黧漕忤... 项祛汨 祉� 镱驵塍轳蜞!")
	MisBeginCondition(NoRecord, 1641)
	MisBeginCondition(NoMission,1641)
	MisBeginCondition(HasMission, 1637)
	MisBeginCondition(NoRecord, 1637)
	MisBeginAction(AddMission, 1641)

	MisBeginAction(AddTrigger, 16411, TE_KILL, 1086, 20)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>项祛汨 <r锐耠邃钼囹咫� - 逆桦�> (958,1159) 筢栩� 20 <p俞栝� 捏�> (839,1160).")

	MisNeed(MIS_NEED_KILL, 1086, 20, 10, 20)

	MisHelpTalk("<t>湾箧咫� � 蜞� 蝠箐眍? 鲤痧... 枢� 铐� 戾�� 漕耱嚯�...")
	MisResultTalk("<t>扬囫栳�, 蝈镥瘘 � 祛泱 耧铌铋眍 镳钿铍骅螯 疣犷蝮. 悟礤耔 铗麇� <r喻屙铎� - 慑> (297,901).")

	MisBeginCondition(NoRecord, 1641)
	MisResultCondition(HasMission, 1641)
	MisResultCondition(HasFlag, 1641, 29)
	MisResultAction(GiveItem, 6212, 1, 4)
	MisResultAction(ClearMission, 1641)
	MisResultAction(SetRecord, 1641)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1086)
	TriggerAction(1, AddNextFlag, 1641, 10, 20)
	RegCurTrigger(16411)

--骂镳铖 囵蹂铍钽�
	DefineMission(6332, "骂镳铖 囵蹂铍钽�",1642)

	MisBeginTalk("<t>�, 耧囫栳� 玎 镱祛!<n><t>义镥瘘 � 桁妣 犷朦 镳邃耱噔脲龛� 钺 桉蝾痂� 铖蝠钼�. � 玎镨��� 篦屙桕钼 泐忸痂蝰� � 蝾�, 黩� 疣睃 � 铖蝠钼� 猁腓 邃桧 鲥臌�; 蜞赕� 镨� � 蝾�, 黩� 磬 赅驿铎 铖蝠钼� 羼螯 耱疣骅 漯邂龛� 疱腓赈栝. 骂珈铈眍 箐囫蝰� 箸磬螯 � 龛� 蜞轫� 铖蝠钼�. 武桧 桤 龛� 羼螯 礤溧脲觐 铗颃溧. 悟镳噔��轳� � 礤祗 � 镱泐忸痂. 填驽� 猁螯 箸磬屮� 黩�-龛狍潼 鲥眄铄.<n><t>� � 铖蜞� 蝮�. � 礤蝈痫屙桢� 驿� 桧纛痨圉梃 铗 蝈��... 腕 � 疋铊� 篦屙桕钼.")
	MisBeginCondition(NoRecord, 1642)
	MisBeginCondition(NoMission,1642)
	MisBeginCondition(HasRecord, 1637)
	MisBeginAction(AddMission, 1642)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>悟� <r秧彐眍泐 羊疣驵 枢瘥> (557,300).")

	MisHelpTalk("<t>疹麇蝰� 箸磬螯 皴牮弪� 镳铊珙澍邈�? 腻轳蜮箝!")
	MisResultCondition(AlwaysFailure)

--骂镳铖 囵蹂铍钽�
	DefineMission(6333, "骂镳铖 囵蹂铍钽�",1642, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>饮 泐蝾� 镱珥囹� 皴牮弪� 玷祉邈� 磬痤溧?")
	MisResultCondition(NoRecord, 1642)
	MisResultCondition(HasMission, 1642)
	MisResultAction(ClearMission, 1642)
	MisResultAction(SetRecord, 1642)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6334, "秧彐睇� 羊疣� 枢瘥", 2)

--袜耱噔脲龛� 耱疣驵 1
	DefineMission(6334, "袜耱噔脲龛� 耱疣驵 1",1643)

	MisBeginTalk("<t>杨蝽� 膻溴� 镳铖桦� 戾�� 疣耜瘥螯 桁 蜞轫� 铖蝠钼� 氰禧, 眍 � 龛麇泐 桁 礤 耜噻嚯. 皖, 赅驽蝰�, 螓 铖钺屙睇�... � 蝈�� 牮屣觇� 踵疣牝屦... 湾 珥帼 镱麇祗, 眍 � 镱耠邃礤� 怵屐� 铢簌帼 赅觐�-蝾 徨耧铌铋耱忸.<n><t>湾 蜞� 溧脲觐 羼螯 妁� 钿桧 耱疣�. 悟栩� <r秧彐眍泐 羊疣驵 妈腚�> (1044,182).")
	MisBeginCondition(NoRecord, 1643)
	MisBeginCondition(NoMission,1643)
	MisBeginCondition(HasRecord, 1642)
	MisBeginAction(AddMission, 1643)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>悟� <r秧彐眍泐 羊疣驵 妈腚�> (1044,182).")

	MisHelpTalk("<t>骂珈铈眍 � 镳铖蝾 玎矬汔�...")
	MisResultCondition(AlwaysFailure)

--袜耱噔脲龛� 耱疣驵 1
	DefineMission(6335, "袜耱噔脲龛� 耱疣驵 1",1643, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>义�� 溴轳蜮栩咫� 镳桉豚� 羊疣� 耥彐眍泐 铖蝠钼� 枢瘥? 疹痤... 央篪嚅...")
	MisResultCondition(NoRecord, 1643)
	MisResultCondition(HasMission, 1643)
	MisResultAction(ClearMission, 1643)
	MisResultAction(SetRecord, 1643)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6336, "秧彐睇� 羊疣� 妈腚�", 2)

--袜耱噔脲龛� 耱疣驵 2
	DefineMission(6336, "袜耱噔脲龛� 耱疣驵 2",1644)

	MisBeginTalk("<t>务蝠钼 疣耜铍铍��... 令汨�� 枢疣 铗忮疸豚 妈腚�... 湾 镱龛爨�, 镱麇祗 枢疣, 蜞赅� 犷朦� 溴忸麝� - 蜞赅� 珉��. 朽琊篪桦� 怦� 牮囫铗� 桴 铖蝠钼钼, � 祛汶� 猁 骅螯 蝮� 忪羼蝈.<n><t>悟镳噔��轳� 磬 铖蝠钼 隋��睇� 铉屦... 青麇�? 袜 戾耱� 疣玑屦屮�...")
	MisBeginCondition(NoRecord, 1644)
	MisBeginCondition(NoMission,1644)
	MisBeginCondition(HasRecord, 1643)
	MisBeginAction(AddMission, 1644)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "袜殇� <r青蝽桕� 务蝠钼� 氰禧> (655,1471).")

	MisHelpTalk("<t>� 疱珞朦蜞蝈 禧 镱塍麒腓 蝾, 黩� 镱塍麒腓...")
	MisResultCondition(AlwaysFailure)

--袜耱噔脲龛� 耱疣驵 2
	DefineMission(6337, "袜耱噔脲龛� 耱疣驵 2",1644, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>悟牦溧 螓? 羊疣眄�, 礤 怦邈溧 膻滂 疋�琨忄�� 耦 耱疣驵扈? 西屙� 耱疣眄�.")
	MisResultCondition(NoRecord, 1644)
	MisResultCondition(HasMission, 1644)
	MisResultAction(ClearMission, 1644)
	MisResultAction(SetRecord, 1644)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6338, "秧彐睇� 羊疣� 氰祉邈� 铉屦�", 2)

--锐稃蜞龛� 耱疣驵 1
	DefineMission(6338, "锐稃蜞龛� 耱疣驵 1",1645)

	MisBeginTalk("<t>疹麇 珥囹� 玎麇�?<n><t>饮 礤 赅驽�� 祉� 漕耱囹铟眍 泐蝾恹�, 黩钺� 镱珥囹� � 蜞轫�. 项赅骅 祉� 疋铪 耔塍 - 疣玑屦桉� � 狍眚簋扈 黧漕忤扈. 俞彘: 30 <r枢戾眄 酿嚓铐钼> (404,1340), 35 <r署囫睇� 赅戾睨觐�> (451,1288), 25 <r俞栝� 捏�> (839,1160).")
	MisBeginCondition(NoRecord, 1645)
	MisBeginCondition(NoMission,1645)
	MisBeginCondition(HasRecord, 1644)
	MisBeginAction(AddMission, 1645)

	MisBeginAction(AddTrigger, 16451, TE_KILL, 1083, 30)
	MisBeginAction(AddTrigger, 16452, TE_KILL, 1084, 35)
	MisBeginAction(AddTrigger, 16453, TE_KILL, 1086, 25)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>项祛汨 <r青蝽桕� 务蝠钼� 氰禧> (655,1471) 筢栩� 黧漕忤�.")

	MisNeed(MIS_NEED_KILL, 1083, 30, 10, 30)
	MisNeed(MIS_NEED_KILL, 1084, 35, 50, 35)
	MisNeed(MIS_NEED_KILL, 1086, 25, 90, 25)

	MisHelpTalk("<t>唁噱��? 意铄 溴腩.")
	MisResultTalk("<t>枢驽蝰�, 螓 泐蝾� 镱珥囹� 汶噔睇� 皴牮弪. 悟腓黜�! 项玟疣怆��!")

	MisBeginCondition(NoRecord, 1645)
	MisResultCondition(HasMission, 1645)
	MisResultCondition(HasFlag, 1645, 39)
	MisResultCondition(HasFlag, 1645, 84)
	MisResultCondition(HasFlag, 1645, 114)
	MisResultAction(ClearMission, 1645)
	MisResultAction(SetRecord, 1645)
	MisResultAction(AddMoney,30000,30000)
	MisResultAction(AddExpAndType,2,550,550)
	MisResultAction(GiveNpcMission, 6339, "秧彐睇� 羊疣� 氰祉邈� 铉屦�", 3)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1083)
	TriggerAction(1, AddNextFlag, 1645, 10, 30)
	RegCurTrigger(16451)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1084)
	TriggerAction(1, AddNextFlag, 1645, 50, 35)
	RegCurTrigger(16452)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1086)
	TriggerAction(1, AddNextFlag, 1645, 90, 25)
	RegCurTrigger(16453)

--锐稃蜞龛� 耱疣驵 2
	DefineMission(6339, "锐稃蜞龛� 耱疣驵 2",1646)

	MisBeginTalk("<t>� 忤骟, 黩� 螓 耔脲�... 镱耢铗痂�, 踱囹栩 腓 蝈徨 蝈痫屙��. 杨徨痂: 10 <b左溴耥 枢戾睃> � <r枢戾眄 酿嚓铐钼> (404,1340), 10 <b亦桧耱忮眄 蝾镟珙恹� 铖觐腙钼> � <r署囫睇� 赅戾睨觐�> (451,1288), 10 <b署桉蜞朦睇� 绣徨�> � <r俞栝� 捏�> (839,1160). � 驿�.")
	MisBeginCondition(NoRecord, 1646)
	MisBeginCondition(NoMission,1646)
	MisBeginCondition(HasRecord, 1645)
	MisBeginAction(AddMission, 1646)
	MisBeginAction(AddTrigger,16461, TE_GETITEM,6237, 10)
	MisBeginAction(AddTrigger,16462, TE_GETITEM,1201, 10)
	MisBeginAction(AddTrigger,16463, TE_GETITEM,6240, 10)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>青忮瘌� 玎溧龛� <r青蝽桕� 务蝠钼� 氰禧> (655,1471) 耦徨痂 礤钺躅滂禧� 镳邃戾螓.")
	MisNeed(MIS_NEED_ITEM, 6237, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 1201, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 6240, 10, 30, 10)

	MisHelpTalk("<t>疹麇 皲囹�? 意铄 溴腩.")
	MisResultTalk("<t>悟腓黜�� 疣犷蜞. 袜溴�, 黩� 螓 耢铈屮� 忸 怦屐 疣珙狃囹�...")
	MisResultCondition(HasMission, 1646)
	MisResultCondition(NoRecord,1646)
	MisResultCondition(HasItem, 6237, 10)
	MisResultCondition(HasItem, 1201, 10)
	MisResultCondition(HasItem, 6240, 10)
	MisResultAction(TakeItem, 6237, 10)
	MisResultAction(TakeItem, 1201, 10)
	MisResultAction(TakeItem, 6240, 10)
	MisResultAction(ClearMission, 1646)
	MisResultAction(SetRecord, 1646)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,550,550)
	MisResultAction(GiveNpcMission, 6340, "秧彐睇� 羊疣� 氰祉邈� 铉屦�", 4)

	InitTrigger()
	TriggerCondition(1, IsItem, 6237)
	TriggerAction(1, AddNextFlag, 1646, 10, 10)
	RegCurTrigger(16461)

	InitTrigger()
	TriggerCondition(1, IsItem, 1201)
	TriggerAction(1, AddNextFlag, 1646, 20, 10)
	RegCurTrigger(16462)

	InitTrigger()
	TriggerCondition(1, IsItem, 6240)
	TriggerAction(1, AddNextFlag, 1646, 30, 10)
	RegCurTrigger(16463)


--铃耧铌铋耱忸 耱疣驵
	DefineMission(6340, "铃耧铌铋耱忸 耱疣驵",1647)

	MisBeginTalk("<t>妈腚� 镳钼铞桊钼嚯 枢痼, � 疱珞朦蜞蝈 铐� 耱嚯� 铟屙� 礤疴眍�.<n><t>骂珈铈眍 螓 珥噱, 黩� 镥耜� 剜轵囗� 耢羼蜩腓顸 镱� 泐痤�, � 疱珞朦蜞蝈 铐 镱漤�腭� 磬� 忸漕� - � 疱珞朦蜞� 沩邂� 枢瘥. 霹� � 忮黜�� 玷爨 玟羼�, 磬 铖蝠钼圊... 朽轳觐� 戾耱鬻觐. 洛耥�, 隋蝾, 务屙� - 蝠� 铖蝠钼� - 鬣耱� 爨蝈痂赅 剜轵囗�. 蒗... 添钽� 忸潲 篁尻腩...<n><t>皖, � 疱珞朦蜞蝈 妈腚� 忮痦箅��. 饮 耢铈屮� 耢咫� 镱徨皴漕忄螯 � 龛� 腓黜�. 雾 镱漶赅驽� 蝈徨 疱龛�.")
	MisBeginCondition(NoRecord, 1647)
	MisBeginCondition(NoMission,1647)
	MisBeginCondition(HasRecord, 1646)
	MisBeginAction(AddMission, 1647)
	MisBeginAction(GiveItem, 6213, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>悟� <r妈腚� � 彦忮疣> (715,1135), 黩钺� 恹�耥栩� 怦� 蜞轫� 桉蝾痂�.")

	MisHelpTalk("<t>霹� 礤 桉赅� 邈�? 雾 礤溧脲觐.. 皴忮痦邋...")
	MisResultCondition(AlwaysFailure)

--铃耧铌铋耱忸 耱疣驵
	DefineMission(6341, "铃耧铌铋耱忸 耱疣驵",1647, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>体� 耱疣驵? 蒡� 忮 怦� 妁� 耋耱怏弪? 枢疣, 枢疣, 玎麇�...")
	MisResultCondition(NoRecord, 1647)
	MisResultCondition(HasMission, 1647)
	MisResultCondition(HasItem, 6213, 1)
	MisResultAction(TakeItem, 6213, 1)
	MisResultAction(ClearMission, 1647)
	MisResultAction(SetRecord, 1647)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6342, "妈朦 � 彦忮疣", 2)

--杨驵脲龛� 妈腚� � 彦忮疣
	DefineMission(6342, "杨驵脲龛� 妈腚� � 彦忮疣",1648)

	MisBeginTalk("<t>腻��螯 螓��鼽 脲� 磬玎�, � 镳桕噻嚯 枢疱 磬忮耱� 镱��漕� � 扈疱. 昨钺� 怦� 猁腩 赅� 镳彐溴. 皖 � 礤 铈桎嚯, 黩� 觐�-黩� 戾�� 蜞� 玎��礤�, 黩� 漕 耔� 镱� � 礤 祛� 忮痦篁�...<n><t>暑�-黩� - � 蝾� 羿牝, 黩� 枢疣, 觐蝾痼� � 膻徼�, 皲咫嚯�... � 礤 珥帼, 黩� 溴豚螯 � 剜轵囗铎, 枢痂徉扈, 务蝠钼囔�, � 蜞赕� 膻潼扈, 觐蝾瘥� 恹骅腓 腓 镱蝾祗, 黩� 礤 怦蜞腓 磬 矬蜩 枢瘥.<n><t>腕 黩� 耜噻囹�... 昨� � 祛泱 耜噻囹�? 骂珈铈眍 礤 耱铊� 忸玮疣螯��, 桦�... 义徨 礤麇泐 镱耦忮蝾忄螯. � 珥帼, 黩� � 蝈�� 襦祛泐 觐 祉� 忸镳铖�, 眍 螓 漕腈屙 镱塍麒螯 <b彦痄鲥 耋蝠�>.<n><t>蒡� 忮 螓 祛驽 疣玟钺� � <p项忮腓蝈�� 赅戾眄 漯嚓铐钼>. 项耠� 邈� 桉镱朦珙忄龛� � 箨噫� 蝈徨 镱耠邃睨� 蝾麝� 磬 铖蝠钼�, 沅� 螓 耢铈屮� 箸磬螯 怦�.")
	MisBeginCondition(NoRecord, 1648)
	MisBeginCondition(NoMission,1648)
	MisBeginCondition(HasRecord, 1647)
	MisBeginAction(AddMission, 1648)

	MisBeginAction(AddTrigger, 16481, TE_GETITEM, 6200, 1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>项祛汨 <r妈腚� � 彦忮疣> (715,1135) 铗赅螯 <b彦痄鲥 洋蝠�>.")

	MisNeed(MIS_NEED_ITEM, 6200, 1, 10, 1)

	MisHelpTalk("<t>骂珈铈眍 祉� 溴轳蜮栩咫� 礤 耱铊� 忸玮疣螯��, 礤 躅黧, 黩钺� � 扈痤� 黩�-龛螯 镳铊珙�.")
	MisResultTalk("<t>洛痦箅��? 疹痤... 埋� 赅� � � 铈桎嚯. � 蝾犷� 戾�. � 铗牮铪 潆� 蝈�� 镱痱嚯 � 螓 耢铈屮� 镱镟耱� 磬 吾脲溴礤臌� 铖蝠钼 � 磬轵� <r青蝽桕� 酿邂龛� 绣腓赈栝> (2010,783).")
	MisBeginCondition(NoRecord, 1648)
	MisResultCondition(HasMission, 1648)
	MisResultCondition(HasItem, 6200, 1)
	MisResultAction(TakeItem, 6200, 1)
	MisResultAction(GiveItem, 6213, 1, 4)
	MisResultAction(ClearMission, 1648)
	MisResultAction(SetRecord, 1648)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,600,600)
	MisResultBagNeed(1)
	--MisResultAction(GiveNpcMission, 6343, "秧彐睇� 羊疣� 酿邂龛� 绣腓赈栝", 1)

	InitTrigger()
	TriggerCondition(1, IsItem, 6200)
	TriggerAction(1, AddNextFlag, 1648, 10, 1)
	RegCurTrigger(16481)

--秧彐睇� 铖蝠钼
	DefineMission(6343, "秧彐睇� 铖蝠钼",1649)
	MisBeginTalk("<t>体� 羊疣驵... 斟�... 玎蝈� 妈腚�,...<n><t>枢疣 镳噔�� 骅珥�扈 戾黝� 膻徕�. 枢疣 恹戾耱桦� 怦� 珉铖螯 磬 铖蝠钼� 氰禧. 蒡� 猁� 镥疱犷�... � 忤溴� 镳邃铖蜞蝾黜�, 眍 怦邈溧 潴爨� 钺 铎 � 礤 祛� 磬轵� 铗忮蜞 - 忮痦� 腓 铐� 镱耱箫桦�. 秧圜嚯� 怦� 猁腩 躅痤, 眍 镱耠� 蝾泐, 赅� 妈腚� 篪咫, 磬 铖蝠钼� 镱�忤腓顸 牦麒 黧漕忤�!<n><t>篷腓 礤 铟屙� 玎���, 镱祛汨 桤徉忤蝰� 铗 龛�. � 狍潴 蝈徨 铟屙� 犭嚆钿囵屙. 俞彘: 30 <r腻祛眍� 体鬣> (1761,609), 35 <r腻祛龛麇耜桴 捏�> (1676,800) � 25 <r暑囵钼> (1640,1083)")
	MisBeginCondition(NoRecord, 1649)
	MisBeginCondition(NoMission,1649)
	MisBeginCondition(HasRecord, 1648)
	MisBeginCondition(HasItem, 6213, 1, 4)
	MisBeginAction(AddMission, 1649)

	MisBeginAction(AddTrigger, 16491, TE_KILL, 1095, 30)
	MisBeginAction(AddTrigger, 16492, TE_KILL, 1097, 35)
	MisBeginAction(AddTrigger, 16493, TE_KILL, 1098, 25)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>项祛汨 <r青蝽桕� 酿邂龛� 绣腓赈栝> (2010,783) 筢栩� 黧漕忤�.")

	MisNeed(MIS_NEED_KILL, 1095, 30, 10, 30)
	MisNeed(MIS_NEED_KILL, 1097, 35, 50, 35)
	MisNeed(MIS_NEED_KILL, 1098, 25, 90, 25)

	MisHelpTalk("<t>湾 祛驽 桴 磬轵�? 腕 � 豚漤�, 怦� 铗 蝈�� 玎忤耔�, � 蝾 龛牦溧 礤 耧屮�.")
	MisResultTalk("<t>湾 祛泱 镱忮痂螯, 黩� 螓 蜞� 猁耱痤 耦 怦屐 耧疣忤腭�. 饮 钿桧 桤 襦禧� 耔朦睇� 犷轹钼 � 扈疱! 捏爨�, 黩� 螓 耢铈屮� 耦 怦屐 耧疣忤蝰�...")

	MisBeginCondition(NoRecord, 1649)
	MisResultCondition(HasMission, 1649)
	MisResultCondition(HasFlag, 1649, 39)
	MisResultCondition(HasFlag, 1649, 74)
	MisResultCondition(HasFlag, 1649, 99)
	MisResultCondition (HasItem, 6213, 1)
	MisResultAction (TakeItem, 6213, 1)
	MisResultAction(ClearMission, 1649)
	MisResultAction(SetRecord, 1649)
	MisResultAction(AddMoney,30000,30000)
	MisResultAction(AddExpAndType,2,650,650)
	MisResultAction(GiveNpcMission, 6344, "秧彐睇� 羊疣� 酿邂龛� 绣腓赈栝", 2)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1095)
	TriggerAction(1, AddNextFlag, 1649, 10, 30)
	RegCurTrigger(16491)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1097)
	TriggerAction(1, AddNextFlag, 1649, 50, 35)
	RegCurTrigger(16492)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1098)
	TriggerAction(1, AddNextFlag, 1649, 90, 25)
	RegCurTrigger(16493)


--洛黜�� 膻犷恻
	DefineMission(6344, "洛黜�� 膻犷恻",1650)

	MisBeginTalk("<t>袜忮痦铄 忤溴�, 黩� 磬 铖蝠钼� 羼螯 溻� 脲��睇� 耱囹箬.<n><t>骂珈铈眍 礤 钺疣� 忭桁囗桢, 礤 蜞� 腓? 蒡� 耱囹箬 妈腚� � 枢瘥... 雾� 铟屙� 漯邂龛�. 枢驽蝰�, 黩� 铐� 骅恹�... � 蝈 漤�, 觐沅� 铐� 镱�忤腓顸 � 铎 扈疱, 铐� 忭羼腓 � 礤泐 祉钽� 耔�. 消蜞腓顸 狃铖栩� � 溴腩...<n><t>皖 皴轺囫, 桴 忮疣 � 膻犷恻 漯筱 � 漯筱�... � 忮瘙 � 礤�.. 馏溴� 耠铈眍 怦� 忸耨蜞眍忤螯, 眍 � 躅黧 镱镳钺钼囹�.<n><t>悟镳噔��轳� � 耱囹��� � 镳桧羼� 祉� 桴 耠彗�.")
	MisBeginCondition(NoRecord, 1650)
	MisBeginCondition(NoMission,1650)
	MisBeginCondition(HasRecord, 1649)
	MisBeginCondition(NoRecord, 1651)
	MisBeginCondition(NoRecord, 1652)
	MisBeginAction(AddMission, 1650)
	MisBeginAction(AddTrigger,16501, TE_GETITEM, 6214, 1)
	MisBeginAction(AddTrigger,16502, TE_GETITEM, 6216, 1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>杨徨痂 镱 钿眍� 耠彗� 耦 <r羊囹箬 枢瘥> (1440,1268) � <r羊囹箬 妈腚�> (1464,464) � 忸玮疣轳� � <p青蝽桕� 酿邂龛� 绣腓赈栝> (2010,783).")
	MisNeed(MIS_NEED_ITEM, 6214, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 6216, 1, 20, 1)

	MisHelpTalk("<t>聋耱疱�, 妁� 猁耱疱�, � 犷朦 礤 恹礤耋 桴 耱疣溧龛�...")
	MisResultTalk("<t>疹痤, 磬溴� 篑桦�� 礤 猁腓 磬镳囫睇扈!")
	MisResultCondition(HasMission, 1650)
	MisResultCondition(NoRecord,1650)
	MisResultCondition(HasItem, 6214, 1)
	MisResultCondition(HasItem, 6216, 1)
	MisResultAction(TakeItem, 6214, 1)
	MisResultAction(TakeItem, 6216, 1)
	MisResultAction(ClearMission, 1650)
	MisResultAction(SetRecord, 1650)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,600,600)
	MisResultAction(GiveNpcMission, 6347, "秧彐睇� 羊疣� 酿邂龛� 绣腓赈栝", 3)

	InitTrigger()
	TriggerCondition(1, IsItem, 6214)
	TriggerAction(1, AddNextFlag, 1650, 10, 1)
	RegCurTrigger(16501)

	InitTrigger()
	TriggerCondition(1, IsItem, 6216)
	TriggerAction(1, AddNextFlag, 1650, 20, 1)
	RegCurTrigger(16502) 

--脏眚噻��
	DefineMission(6345, "脏眚噻��",1651)

	MisBeginTalk("<t>枢驿簋 眍鼽, 觐沅� � 耢铗瘙 磬 玮彗潲, � 耜篦帼 镱 膻���, 觐蝾瘥�, 磬溴�, 忮痦篁�. � � 筲桄�, 赅� 铐� 箅帼蝰� 漯筱 漯筱�, 桴 皴痄鲟 礤钺嚅眍 聍囫螂桠�, 眍 镱赅 怦� 礤 蜞�...<n><t>彦轺囫, 汶��� 磬 玮彗潲, � 忤骟 蝾朦觐 镳铒囫螯 � 祛屐 耦珥囗梃. 篷腓 螓 溴轳蜮栩咫� 躅麇 磬� 镱祛鼽, 镳桧羼� 祉� <b亦桧耱忸 赅祉�>.")
	MisBeginCondition(NoRecord, 1651)
	MisBeginCondition(NoMission,1651)
	MisBeginCondition(HasMission, 1650)
	MisBeginCondition(NoRecord, 1650)
	MisBeginAction(AddMission, 1651)

	MisBeginAction(AddTrigger, 16511, TE_GETITEM, 6215, 1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t><r羊囹�� 枢瘥> (1440,1268) 镳铖栩 筢栩� <p腻祛眍� 体鬣> (1761,609), 黩� 猁 漕耱囹� � 龛� <b亦桧耱忸 枢祉�>.")

	MisNeed(MIS_NEED_ITEM, 6215, 1, 10, 1)

	MisHelpTalk("<t>霹� 礤 怦�? 聋耱疱�, 镳铠� 猁耱疱�...")
	MisResultTalk("<t>亦桧耱忸 赅祉�... 氢彗溧... 橡铟睇�, 赅� 耜嚯�... 疹痤... 西屙� 躅痤... 骂琰扈 � 耠彗�, 铐� 镱祛驽� 蝈徨, 耧囫栳�.")
	MisBeginCondition(NoRecord, 1651)
	MisResultCondition(HasMission, 1651)
	MisResultCondition(HasItem, 6215, 1)
	MisResultAction(TakeItem, 6215, 1)
	MisResultAction(GiveItem, 6214, 1, 4)
	MisResultAction(ClearMission, 1651)
	MisResultAction(SetRecord, 1651)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition(1, IsItem, 6215)
	TriggerAction(1, AddNextFlag, 1651, 10, 1)
	RegCurTrigger(16511)

--入膻玷�
	DefineMission(6346, "入膻玷�",1652)

	MisBeginTalk("<t>� 玎猁�, � 磬鬣� � 蝾泐, 黩� 觐沅� 铗 牦耦麇� 珏祀�... 腕 觐沅� 清祀� 玎痤滂豚顸... 令朦� 忡瘥� � �.�. 亦� 忸�, 礤 猁腩 麒耱钽� 礤徉, 蝾朦觐 躅腩漤�� 螯爨... � 镱�忤腭� 赅戾睃... 湾钺睇�... � 珏脲睇� 麴嚆戾眚铎 磬 镱忮瘐眍耱�, 眍 � 蜞� � 礤 珥帼, 沅� 邈� 桉赅螯... 袜溴� 螓 镱祛驽 祉� 邈� 磬轵�.")
	MisBeginCondition(NoRecord, 1652)
	MisBeginCondition(NoMission,1652)
	MisBeginCondition(HasMission, 1650)
	MisBeginCondition(NoRecord, 1650)
	MisBeginAction(AddMission, 1652)

	MisBeginAction(AddTrigger, 16521, TE_GETITEM, 6217, 1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t><r羊囹�� 妈腚�(1464,464)> 镳铖栩 筢栩� <p腻祛龛麇耜桴 捏�> (1676,800), 黩� 猁 漕耱囹� � 龛� <b枢戾睃 埋屦囫牮��>.")

	MisNeed(MIS_NEED_ITEM, 6217, 1, 10, 1)

	MisHelpTalk("<t>骂珈铈眍 邈� � 礤 耋耱怏弪...")
	MisResultTalk("<t>枢戾睃 怦屦囫牮��, 麒耱 赅� 礤犷... 扬囫栳�, 耧囫栳� 蝈徨, 镳桁� � 耠彗� � 珥嚓 犭嚆钿囵眍耱�!")
	MisBeginCondition(NoRecord, 1652)
	MisResultCondition(HasMission, 1652)
	MisResultCondition(HasItem, 6217, 1)
	MisResultAction(TakeItem, 6217, 1)
	MisResultAction(GiveItem, 6216, 1, 4)
	MisResultAction(ClearMission, 1652)
	MisResultAction(SetRecord, 1652)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition(1, IsItem, 6217)
	TriggerAction(1, AddNextFlag, 1652, 10, 1)
	RegCurTrigger(16521)

--彦痄鲥 祛��
	DefineMission(6347, "彦痄鲥 祛��",1653)
	MisBeginTalk("<t>绣珞朦蜞蝾� 蜮铊� 镱溻桡钼 耱嚯 耔焘铍 膻徕�. � 怦爨蝠桠帼顸 � 铗 蝈祉� 耔龛� 襦祛鲡弪 � 礤 祛泱 铗铕忄螯 汶噻. 蒡� <b彦痄鲥 祛��>. 袜濑顸, 黩� 桴 膻犷恻 狍溴� 蜞觐� 驽 徨耜疣轫彘.<n><t>悟礤耔 邈� <r妈腚� � 彦忮疣(715,1135)>.")
	MisBeginCondition(NoRecord, 1653)
	MisBeginCondition(NoMission,1653)
	MisBeginCondition(HasRecord, 1650)
	MisBeginAction(AddMission, 1653)
	MisBeginAction(GiveItem, 6218, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>悟礤耔 <b彦痄鲥 祛��> <r妈腚� � 彦忮疣> (715,1135).")

	MisHelpTalk("<t>袜溴�, 黩� 怦� 耠铈栩�� 躅痤.")
	MisResultCondition(AlwaysFailure)

--彦痄鲥 祛��
	DefineMission(6348, "彦痄鲥 祛��",1653, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>彦痄鲥! 饮... 饮 蜞� 祉钽� 潆� 戾�� 皲咫嚯. 枢� 祉� 蝈�� 铗犭嚆钿囵栩�? � 猁� 蜞觇� 铊耱铎...")
	MisResultCondition(NoRecord, 1653)
	MisResultCondition(HasMission, 1653)
	MisResultCondition(HasItem, 6218, 1)
	MisResultAction(TakeItem, 6218, 1)
	MisResultAction(ClearMission, 1653)
	MisResultAction(SetRecord, 1653)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultAction(GiveNpcMission, 6349, "妈朦 � 彦忮疣", 4)

--彦痄鲥 耱疣驵
	DefineMission(6349, "彦痄鲥 耱疣驵",1654)

	MisBeginTalk("<t>昨�? 捏忭 镳钺脲禧 耱疣驵? 泥� 镱潴爨螯...<n><t>泥忭-溧忭�, 觐沅� 铐 镳桫咫 觐 祉�, � 筲桎咫, 黩� 铐 铞桀磬朦眍 礤箴噔眍忮�, 耱疣溧弪...赅� 狍潋� 镱腩� 镳钺脲�. 皖 铐 铗赅玎腭� 黩� 腓犷 磬� 疣耨赅琨忄螯 � 蝾沅� 禧 镳钼咫� 耦狁蜮屙眍� 疣耨脲漕忄龛�. � 耠嚯, <r羊囵桕 - 相麝箅�> (2272,2700) 珥噱� 祉钽� - � 礤泐 猁腓 疋铊 溴豚 耦 耱疣驽�.<n><t>项泐忸痂 � 龛�.")
	MisBeginCondition(NoRecord, 1654)
	MisBeginCondition(NoMission,1654)
	MisBeginCondition(HasRecord, 1653)
	MisBeginAction(AddMission, 1654)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>悟镳噔��轳� � <b鲤沐眚> � 镱泐忸痂 耦 <r羊囵桕铎 - 相麝箅彘> (2272,2700) � <p青蝽桕� 酿邂龛� 绣腓赈栝> � 邈� 镳钺脲爨�.")

	MisHelpTalk("<t>湾 珥帼, 黩� 耠篦桦铖�, 眍 祉� 礤 躅麇蝰� 珥囹� � 邈� 镳钺脲爨� � 黩� 镳铊珙�.")
	MisResultCondition(AlwaysFailure)

--彦痄鲥 耱疣驵
	DefineMission(6350, "彦痄鲥 耱疣驵",1654, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>误? 妈腚� 镳铖桦 疣珙狃囹� � 镳钺脲爨扈 耱疣驵? 雾 溴轳蜮栩咫� 玎桧蝈疱耦忄�, � 羿牝!")
	MisResultCondition(NoRecord, 1654)
	MisResultCondition(HasMission, 1654)
	MisResultAction(ClearMission, 1654)
	MisResultAction(SetRecord, 1654)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultAction(GiveNpcMission, 6351, "羊囵桕 - 相麝箅�", 18)

--义祉�� 忸腠�
	DefineMission(6351, "义祉�� 忸腠�",1655)

	MisBeginTalk("<t>羊疣� 猁� 玎� 镥鬣��扈 令汔 � 忤滂祛 蜞觇� 铌噻嚯铖� 桴 忸玟彘耱忤�... 帖 怦邈溧 耱囵嚯桉� 礤 铖蜞怆�螯 邈� 钿眍泐. 武磬觐, 蝈 牝� 漕脬� 磬躅滂腓顸 ��漕� � 龛�, 镱镟溧腓 � 疣珥 镥疱漯�汨...<n><t>篷腓 躅麇 箸磬螯 钺 铎 镱犷朦, 铗镳噔��轳� � <b剜轵囗> � 镱泐忸痂 � <r橡邃忸滂蝈脲� 觌囗� - 离箐铋> (898,3640).")
	MisBeginCondition(NoRecord, 1655)
	MisBeginCondition(NoMission,1655)
	MisBeginCondition(HasRecord, 1654)
	MisBeginAction(AddMission, 1655)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>悟镳噔栩� � <b剜轵囗> � 镱泐忸痂螯 � <r橡邃忸滂蝈脲� 觌囗� - 离箐铋> (898,3640).")

	MisHelpTalk("<t>铃溧 磬耱桡嚯� 祉钽桴 膻溴�. 捏爨�, 黩� 镳钺脲爨 � 耱疣驽.")
	MisResultCondition(AlwaysFailure)

--义祉�� 忸腠�
	DefineMission(6352, "义祉�� 忸腠�",1655, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>蒽铞桀磬朦睇� 镥疱骅忄龛� 耱疣驵? 萧趑... � 戾�� 踱囹栩... 扬腩 � 龛� 祗麇龛�.")
	MisResultCondition(NoRecord, 1655)
	MisResultCondition(HasMission, 1655)
	MisResultAction(ClearMission, 1655)
	MisResultAction(SetRecord, 1655)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultAction(GiveNpcMission, 6353, "橡邃忸滂蝈朦 觌囗� - 离箐�", 15)

--锑耨� 镥疱骅忄龛�
	DefineMission(6353, "锑耨� 镥疱骅忄龛�",1656)

	MisBeginTalk("<t>湾 蜞� 溧忭�, � 镥疱皴赅腭� 耦 耱疣驵扈, � 怦� 玎觐眵桦铖� 徼蜮铋. 帖 礤 躅蝈腓 觐眙腓牝钼, 眍 铐� 恹汶�滂腓 漕忸朦眍 耔朦睇扈 � 铟屙� 珉�!<n><t>填� 漯筱 - <r橡桧�-蝠栩铐 - 锗耨囗> (1254,3491) � � 玎沩嚯� 桴 � 珏祀�. 皖 铐 疣耨赅驽� 钺 铎 塍鼬� 戾��.")
	MisBeginCondition(NoRecord, 1656)
	MisBeginCondition(NoMission,1656)
	MisBeginCondition(HasRecord, 1655)
	MisBeginAction(AddMission, 1656)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>袜殇� <r橡桧鲟-蝠栩铐� - 锗耨囗�> (1254,3491) 礤溧脲觐 铗 <b剜轵囗�> � 箸磬�, 黩� 镳铊珙�.")

	MisHelpTalk("<t>袜溴�, 黩� 黧怦蜮� 戾�� 钺爨睇忄 - 礤 躅黧 忤溴螯 桴 耱疣驽�! 雾� 铗怵囹栩咫� � 铗 龛� 牦鬣 镳钺脲�!")
	MisResultCondition(AlwaysFailure)

--锑耨� 镥疱骅忄龛�
	DefineMission(6354, "锑耨� 镥疱骅忄龛�",1656, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>锑耨� 镥疱骅忄龛�... 骂珈铈眍 镳梓桧� 脲骅� 镳�祛 磬 镱忮瘐眍耱�...")
	MisResultCondition(NoRecord, 1656)
	MisResultCondition(HasMission, 1656)
	MisResultAction(ClearMission, 1656)
	MisResultAction(SetRecord, 1656)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultAction(GiveNpcMission, 6355, "橡桧�-蝠栩铐 - 锗耨囗", 9)

--皖忄� 钿彐溧 橡桧鲟 
	DefineMission(6355, "皖忄� 钿彐溧 橡桧鲟 ",1657)

	MisBeginTalk("<t>饮 驽 � 牦瘃�, 黩� � 桤 觐痤脲怦觐� 痼襦腩麇泐 痤溧, 眍 � 怦邈溧 镳邃镱麒蜞� 眍耔螯 麇腩忮麇耜簋 钿彐潴. 蒡� 镱赅玎蝈朦 痤耜铠�. 疹麇 铗 戾�� 桉蝾痂� - 镳桧羼� 祉� 镨滏嚓.<n><t>泥 � 妁� 疣� 耧囫栳� 玎 蝾� 磬镨蝾�. 埋屐 镱眇噔桦铖�.")
	MisBeginCondition(NoRecord, 1657)
	MisBeginCondition(NoMission,1657)
	MisBeginCondition(HasRecord, 1656)
	MisBeginAction(AddMission, 1657)

	MisBeginAction(AddTrigger, 16571, TE_GETITEM, 0400, 1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>橡桧羼� <r橡桧鲶-蝠栩铐� - 锗耨囗�> (1254,3491) <b枢扃铍 里铍腩磬>.")

	MisNeed(MIS_NEED_ITEM, 0400, 1, 10, 1)

	MisHelpTalk("<t>仂铗觇, 铗觇... 腕 � 沅�? 橡桧� 疣珙鬣痤忄�.")
	MisResultTalk("<t>扬囫栳� 玎 钿彐潴, 蝈镥瘘 � 祛泱 铗镳噔栩�� � 泐痤�... 枢觐� � 祛漤�恹�...")
	MisBeginCondition(NoRecord, 1657)
	MisResultCondition(HasMission, 1657)
	MisResultCondition(HasItem, 0400, 1)
	MisResultAction(TakeItem, 0400, 1)
	MisResultAction(ClearMission, 1657)
	MisResultAction(SetRecord, 1657)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6356, "橡桧�-蝠栩铐 - 锗耨囗", 10)

	InitTrigger()
	TriggerCondition(1, IsItem, 0400)
	TriggerAction(1, AddNextFlag, 1657, 10, 1)
	RegCurTrigger(16571)

--铃溧 蝠栩铐�
	DefineMission(6356, "铃溧 蝠栩铐�",1658)

	MisBeginTalk("<t>湾祉铈觐 铗铠咫 铗 蝾泐 忸滕遽眍泐 磬镨蜿� � 皴轺囫 稃蜞� 恹�耥栩� 镳梓桧� 牮桤桉� 耩邃� 痼襦腩�. 羊疣骅 疣睃 耠箧桦� 磬祗 痤潴, 眍 忭彗囡眍 铌噻嚯桉� � 赅觐�-蝾 囗铎嚯铋 珙礤 � 磬鬣腓 磬镟溧螯 磬 祛� 磬痤�. � 铗镳噔桦�� 玎 镱祛�, 礤 铈桎��, 黩� 耦 祉铋 耠篦栩�� 蜞 驽 徨溧...<n><t>霹� 耠铈礤� 溴豚 钺耱��� � 枢痂徉扈. 昨钺� 箸磬螯 镱犷朦, 耧痤耔 <r逆尻� 骂痤狳�> (230,579) 磬 <b铖蝠钼� 殃咫弪钼>.")
	MisBeginCondition(NoRecord, 1658)
	MisBeginCondition(NoMission,1658)
	MisBeginCondition(HasRecord, 1657)
	MisBeginAction(AddMission, 1658)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>袜殇� <r逆尻� 骂痤狳�> (230,579) 磬 <b�. 殃咫弪钼>.")

	MisHelpTalk("<t>袜 赅痂徉� 徨溧, 眍 � 礤 邃桧耱忮眄铄 镳钺脲祉铄 戾耱�")
	MisResultCondition(AlwaysFailure)

--铃溧 蝠栩铐�
	DefineMission(6357, "铃溧 蝠栩铐�",1658, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>羊疣�? 枢驽蝰� 黩�-蝾 镳栾铎桧帼... 侦... 骂珈铈眍... 亦�, 磬溧 磬轵� 腩潢�.")
	MisResultCondition(NoRecord, 1658)
	MisResultCondition(HasMission, 1658)
	MisResultAction(ClearMission, 1658)
	MisResultAction(SetRecord, 1658)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6358, "逆尻 羊疱豚", 13)

--羊疣眄铄 溴腩
	DefineMission(6358, "羊疣眄铄 溴腩",1659)

	MisBeginTalk("<t>袜耜铍� � 镱祉�, 枢痂猁 - 桤箪栩咫� 戾耱�: 耦腠鲥, 镟朦禧, 溴忸麝�... 皖 镱扈祛 怦邈� 镳铟邈� - 戾耱� 镳铌��螓� 潴�. 埋邈溧 躅蝈腩顸 箨疣耱� 觐疣犭� 拎疳铕铖� - 礤 铈桎嚯 铐 钽�, 眍 溧朦 妁� 躞驽 - 署嚓屙!!...<n><t>亦�, � 麇� � �... 暑沅� � 蜞� 猁� 镱耠邃龛� 疣�, 钿桧 牦珥弼 疣耨赅玎� 钺 桤戾礤龛�� 耱疣驽�... 侦, � 忸� 黩�, 耧痤耔 � 礤泐 襦�. 陪� 珙怏� <r妈朦�� 义痦屦> (516,407).<n><t>隅磬� � 蜞轫� 祗珏�, 铐 镳铖蝾 镱戾腭� 磬 礤�.")
	MisBeginCondition(NoRecord, 1659)
	MisBeginCondition(NoMission,1659)
	MisBeginCondition(HasRecord, 1658)
	MisBeginAction(AddMission, 1659)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "袜殇栩� <r妈朦�爨 义痦屦�> (516,407) 磬 <b�.殃咫弪钼> � 镱泐忸痂蝈 � 龛� � 镳钺脲戾 枢痂狁觇� 铖蝠钼钼.")

	MisHelpTalk("<t>蓦桤噌弪... �-溧... 枢� 躅痤... 伍... 术�... 扬嚯桦��.... 袜溴� 螓 聍囫螂桠?")
	MisResultCondition(AlwaysFailure)

--羊疣眄铄 溴腩
	DefineMission(6359, "羊疣眄铄 溴腩",1659, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>义�� 镳桉豚� 逆尻? 羊� 脲� 邈� 礤 忤溴�... 枢� 铐 镱骅忄弪?")
	MisResultCondition(NoRecord, 1659)
	MisResultCondition(HasMission, 1659)
	MisResultAction(ClearMission, 1659)
	MisResultAction(SetRecord, 1659)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6360, "锑痍 义痦屦", 11)

--橡铖� 牦珥弼�
	DefineMission(6360, "橡铖� 牦珥弼�",1660)

	MisBeginTalk("<t>湾耢铗�� 磬 蝾, 黩� 螓 镱镟� 磬 �.氰禧, 潆� 戾�� � 礤 镱赅玎蝈朦. � 漕腈屙 筢邃栩��, 黩� 螓 溴轳蜮栩咫� 耔脲�.<n><t>添� 眢骓� 玎觐眵栩� 疣犷蝮, � 螓 祉� � 铎 镱祛驽.")
	MisBeginCondition(NoRecord, 1660)
	MisBeginCondition(NoMission,1660)
	MisBeginCondition(HasRecord, 1659)
	MisBeginAction(AddMission, 1660)

	MisBeginAction(AddTrigger, 16601, TE_GETITEM, 2463, 1)
	MisBeginAction(AddTrigger, 16602, TE_GETITEM, 2468, 1)
	MisBeginAction(AddTrigger, 16603, TE_GETITEM, 2469, 1)
	MisBeginAction(AddTrigger, 16604, TE_GETITEM, 2470, 1)
	MisBeginAction(AddTrigger, 16605, TE_GETITEM, 2474, 1)
	MisBeginAction(AddTrigger, 16606, TE_GETITEM, 2478, 1)
	MisBeginAction(AddTrigger, 16607, TE_GETITEM, 2484, 1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>项祛汨 <r妈朦�祗 义痦屦�> (516,407) 耦狃囹� 桧沭桎桢眚�, 黩钺� 铐 耢钽 玎觐眵栩� 疋铪 疣犷蝮.")

	MisNeed(MIS_NEED_ITEM, 2463, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2468, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 2469, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 2470, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 2474, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2478, 1, 60, 1)
	MisNeed(MIS_NEED_ITEM, 2484, 1, 70, 1)

	MisHelpTalk("<t>� 磬溴� 磬 蝈��, � 驽 礤 耠铈眍?")
	MisResultTalk("<t>青戾鬣蝈朦眍, 蝈镥瘘 � 耢钽� 玎觐眵栩� 礤钺躅滂禧� 桧耱痼戾眚�, 黩钺� 镱耱桡眢螯 蜞轫� 腆珏�.")
	MisBeginCondition(NoRecord, 1660)
	MisResultCondition(HasMission, 1660)
	MisResultCondition(HasItem, 2463, 1)
	MisResultCondition(HasItem, 2468, 1)
	MisResultCondition(HasItem, 2469, 1)
	MisResultCondition(HasItem, 2470, 1)
	MisResultCondition(HasItem, 2474, 1)
	MisResultCondition(HasItem, 2478, 1)
	MisResultCondition(HasItem, 2484, 1)
	MisResultAction(TakeItem, 2463, 1)
	MisResultAction(TakeItem, 2468, 1)
	MisResultAction(TakeItem, 2469, 1)
	MisResultAction(TakeItem, 2470, 1)
	MisResultAction(TakeItem, 2474, 1)
	MisResultAction(TakeItem, 2478, 1)
	MisResultAction(TakeItem, 2484, 1)
	MisResultAction(ClearMission, 1660)
	MisResultAction(SetRecord, 1660)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,600,600)
	MisResultAction(GiveNpcMission, 6361, "锑痍 义痦屦", 12)

	InitTrigger()
	TriggerCondition(1, IsItem, 2463)
	TriggerAction(1, AddNextFlag, 1660, 10, 1)
	RegCurTrigger(16601)

	InitTrigger()
	TriggerCondition(1, IsItem, 2468)
	TriggerAction(1, AddNextFlag, 1660, 20, 1)
	RegCurTrigger(16602)

	InitTrigger()
	TriggerCondition(1, IsItem, 2469)
	TriggerAction(1, AddNextFlag, 1660, 30, 1)
	RegCurTrigger(16603)

	InitTrigger()
	TriggerCondition(1, IsItem, 2470)
	TriggerAction(1, AddNextFlag, 1660, 40, 1)
	RegCurTrigger(16604)

	InitTrigger()
	TriggerCondition(1, IsItem, 2474)
	TriggerAction(1, AddNextFlag, 1660, 50, 1)
	RegCurTrigger(16605)

	InitTrigger()
	TriggerCondition(1, IsItem, 2478)
	TriggerAction(1, AddNextFlag, 1660, 60, 1)
	RegCurTrigger(16606)

	InitTrigger()
	TriggerCondition(1, IsItem, 2484)
	TriggerAction(1, AddNextFlag, 1660, 70, 1)
	RegCurTrigger(16607)


--亦桧耱忮眄 铃痨箐�
	DefineMission(6361, "亦桧耱忮眄 铃痨箐�",1661)

	MisBeginTalk("<t>篷腓 桧蝈疱耥�, 蝾 桤戾礤龛� 枢痂犷� 磬鬣腓顸 � 铃痨箐. <r羊疣� 铃痨箐> (669,1064) 礤 �怆�弪�� 玎蝽桕铎 漯邂龛� 疱腓赈栝. 雾 桤 镳铖螓� 耢屦蝽 � 洛耥�. 雾 蝈徨 怦� 疣耨赅驽�.")
	MisBeginCondition(NoRecord, 1661)
	MisBeginCondition(NoMission,1661)
	MisBeginCondition(HasRecord, 1660)
	MisBeginAction(AddMission, 1661)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>悟栩� <r羊疣驵 铃痨箐> (669,1064) � <b青腓忮 杨牮钼棂> � 疣耧痤耔蝈 邈� 钺 桤戾礤龛��.")

	MisHelpTalk("<t>铃痨箐� - 铟屙� 玎汔漕黜铄 戾耱�. 泥驽 祛� 躅痤� 漯筱 逆尻 铒囫噱蝰� 磬忮潲忄螯�� 蝮溧.")
	MisResultCondition(AlwaysFailure)

--亦桧耱忮眄 铃痨箐�
	DefineMission(6362, "亦桧耱忮眄 铃痨箐�",1661, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>橡桠弪, 溧, 耦狁蜮屙眍 � 枢痂犷� � 磬鬣腓顸 怦� 镥疱戾睇.")
	MisResultCondition(NoRecord, 1661)
	MisResultCondition(HasMission, 1661)
	MisResultAction(ClearMission, 1661)
	MisResultAction(SetRecord, 1661)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6363, "羊疣� 铃痨箐", 2)

--青汔漕黜 耱疣骅
	DefineMission(6363, "青汔漕黜 耱疣骅",1662)

	MisBeginTalk("<t>蒡� 戾耱� 忮溴� � 桉麇珥筲� 漯邂龛� 痼桧囔. 湾 蜞� 溧忭�, 玟羼� 镱�忤腓顸 礤耜铍� 耱疣驽�, � 镥疱戾睇 � 龛� 耜噻嚯桉� 磬 桤戾礤龛�� 怦邈� 枢痂狁觐泐 囵蹊镥豚汔. 皖 � 麇腩忮�, 镱铎� 耦 祉铋 龛麇泐 � 礤 镳铊珙�.<n><t>饮 躔噌瘥� 忸桧 � 耢铈屮� � 钿桧铟牦 漕狃囹� � 徉�, 沅� 骅忮� <r锗觇眈铐> (513,269). 雾 镱祛驽� 蝈徨 疣珙狃囹� � 铎 忸镳铖�.")
	MisBeginCondition(NoRecord, 1662)
	MisBeginCondition(NoMission,1662)
	MisBeginCondition(HasRecord, 1661)
	MisBeginAction(AddMission, 1662)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>朽耧痤耔 <r锗觇眈铐�> (513,269) � 镳梓桧圊 桤戾礤龛�.")

	MisHelpTalk("<t>悟镳噔��轳� 磬 6 噫 <b武桧铌铋 徉�> � 铗� 蜞� <r锗觇眈铐> (513,269). 雾 镱祛驽 疣珙狃囹� � 镥疱戾磬扈 耱疣驽�.")
	MisResultCondition(AlwaysFailure)

--青汔漕黜 耱疣骅
	DefineMission(6364, "青汔漕黜 耱疣骅",1662, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>念 蝈�� 镳桴钿桦� 祉铈羼蜮� 膻溴�, 眍 龛牝� 桤 龛� 礤 疱腭� 痂耜眢螯. 饮 泐蝾�?")
	MisResultCondition(NoRecord, 1662)
	MisResultCondition(HasMission, 1662)
	MisResultAction(ClearMission, 1662)
	MisResultAction(SetRecord, 1662)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6365, "锗觇眈铐", 6)

--袜耱噔脲龛� 锗觇眈铐�
	DefineMission(6365, "袜耱噔脲龛� 锗觇眈铐�",1663)

	MisBeginTalk("<t>埋� 磬鬣腩顸 � 令汨龛 枢瘥. 项耠� 疣琊� � 妈腚屐 � 礤� 磬鬣豚顸 桉蝈痂赅, �, 疱� 磬镟觐耱栩�, 桤戾龛豚 耦珥囗桢 耱疣驽�.<n><t>悟镳噔��轳� 磬 <b湾徨襦> � <r令汨礤> (1755,908), 铐� 疣耨赅驽� 蝈徨 赅� 疱螯 � 镳钺脲祗.")
	MisBeginCondition(NoRecord, 1663)
	MisBeginCondition(NoMission,1663)
	MisBeginCondition(HasRecord, 1662)
	MisBeginAction(AddMission, 1663)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>悟镳噔��轳� 磬 <b湾徨襦> � <r令汨礤> (1755,908) � 疣玑屦桉� � 镳钺脲祛� 耱疣驽�.")

	MisHelpTalk("<t>令汨��, 螓 礤 躅麇, 黩钺� 膻滂 忤溴腓, 赅� 螓 耱疣溧屮�?")
	MisResultCondition(AlwaysFailure)

--袜耱噔脲龛� 锗觇眈铐�
	DefineMission(6366, "袜耱噔脲龛� 锗觇眈铐�",1663, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>填� 膻滂... 栗, 螓 溴轳蜮栩咫� 疱�, 黩� 耢铈屮� 疣琊屮栩� � 镳钺脲祗?")
	MisResultCondition(NoRecord, 1663)
	MisResultCondition(HasMission, 1663)
	MisResultAction(ClearMission, 1663)
	MisResultAction(SetRecord, 1663)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6367, "令汨��", 3)

--橡铖� 犷汨龛
	DefineMission(6367, "橡铖� 犷汨龛",1664)

	MisBeginTalk("<t>� 珥帼, 黩� 螓��麇脲蜩�扈 � 镱耱箫嚯� 礤镳噔桦�. � 礤 珥帼 赅� 疱噌桦栩桊钼囹� 皴�� � 妈腚�. � 玟羼�, 镱蝾祗 黩� 磬溴�, 黩� 膻滂 耢钽篁 镱镟耱� 颃溧 � 镥疱痤滂螯��. � 耦忮瘌桦� 箧囫眢� 铠栳牦. 如戾礤龛� � 皴痄鲟� 耱疣骓桕钼 - 祛� 忤磬. 义祉�� 耱铕铐� 耔臌 镳铐桕豚 � 龛�, 眍 忮痦篁� 怦� 磬 戾耱� �, 筲�, 礤 祛泱.<n><t>扬囫蜩 桴 潴 祛驽� 蝾朦觐 妈腚�. � 磬溴�, 黩� 妁� 筲桄� 邈�... 皖 镱赅 � 钽� 皲咫囹� 礤 祛泱. 埋蝠弪� � 龛� 忪羼蝾 戾�� - 铐 怦� 镱殪弪.")
	MisBeginCondition(NoRecord, 1664)
	MisBeginCondition(NoMission,1664)
	MisBeginCondition(HasRecord, 1663)
	MisBeginAction(AddMission, 1664)
	MisBeginAction(GiveItem, 6219, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>悟� <r妈�� � 彦忮疣> (715,1135), 黩钺� 铐 镱祛� 疣珙狃囹� 耦 耱疣驵扈.")

	MisHelpTalk("<t>妈腚�, 妈腚�, � 躅黧 蝈��, 镳噔溧, � 铟屙� 躅黧 蝈�� 筲桎弪�...")
	MisResultCondition(AlwaysFailure)

--橡铖� 犷汨龛
	DefineMission(6368, "橡铖� 犷汨龛",1664, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>枢疣! 饮 礤 疣琊篪桦� 扈�, 膻滂 礤 铗疱觌桉� 铗 蝈��..! � 忤眍忄�, � 镱祛泱 蝈徨 疱螯 � 镳钺脲禧!")
	MisResultCondition(NoRecord, 1664)
	MisResultCondition(HasMission, 1664)
	MisResultCondition(HasItem, 6219, 1)
	MisResultAction(TakeItem, 6219, 1)
	MisResultAction(ClearMission, 1664)
	MisResultAction(SetRecord, 1664)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6369, "妈朦 � 彦忮疣", 6)

--玉桦桢 犷汔
	DefineMission(6369, "玉桦桢 犷汔",1665)

	MisBeginTalk("<t>枢疱 铟屙� 犷朦眍, � 镱龛爨�; 耱疣骅 耱疣溧, � � � 镱龛爨�. 塔滂 珙怏� 戾�� 令泐�, 眍 羼螯 忮, 觐蝾瘥� 祉� 礤 镱溻豚耱睇. � 礤 祛泱 怆彗螯 � 潴 耱疣驵� � 蝮� 祉� 镱磬漕徼蝰� 蜮�� 镱祛.<n><t>饮 漕腈屙 铗镳噔栩�� � <r羊疣骟 疱腓赈梃 棱痤瘥> (376,376). 雾 耜噫弪, 黩� 溴豚螯 溧朦!")
	MisBeginCondition(NoRecord, 1665)
	MisBeginCondition(NoMission,1665)
	MisBeginCondition(HasRecord, 1664)
	MisBeginAction(AddMission, 1665)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>项皴蜩蝈 <r羊疣� 疱腓赈梃 棱痤瘥> (376,376).")

	MisHelpTalk("<t>� 筲屦屙, 黩� 怦� 狍溴� 躅痤 � 蝾沅� � 耢钽� 筲桎弪� 枢痼...")
	MisResultCondition(AlwaysFailure)

--玉桦桢 犷汔
	DefineMission(6370, "玉桦桢 犷汔",1665, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>袜觐礤�-蝾, 螓 疣珙狃嚯�� � 桁? 疹痤, � 礤 耧屮�...")
	MisResultCondition(NoRecord, 1665)
	MisResultCondition(HasMission, 1665)
	MisResultAction(ClearMission, 1665)
	MisResultAction(SetRecord, 1665)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6371, "羊疣� 疱腓赈梃 棱痤瘥", 2)

--锐稃蜞龛� 棱痤瘥
	DefineMission(6371, "锐稃蜞龛� 棱痤瘥",1666)

	MisBeginTalk("<t>署嚅 棱痤瘥 疣玟咫屙 磬 溻� 珙睇. 袜 怛铕铎 箴钼礤 襦禧� 祛 黧漕忤, 觐蝾瘥� 疋桊屣妣�, 觐沅� 觌铐 枢瘥 镱�怆�弪�� 蜞�.<n><t>篷腓 铐 镱殇弪 � 署嚅 尹禧, 蝾 镱耠邃耱忤� 狍潴� 礤忸钺疣玷禧; 汶筢铌� � 脲襦 钽� 戾耱� 羼螯 耱疣�... 朽玑屦桉� � 枢痤�, 眍 潆� 磬鬣豚 螓 漕腈屙 镳铋蜩 桉稃蜞眄�� <r羊疣驵 疱腓赈梃 棱痤瘥> (376,376), � 玎蝈� 镳桧羼蜩 屐� <b畜眢 篦蜩忸耱�>.")
	MisBeginCondition(NoRecord, 1666)
	MisBeginCondition(NoMission,1666)
	MisBeginCondition(HasRecord, 1665)
	MisBeginAction(AddMission, 1666)
	MisBeginAction(AddTrigger,16661, TE_GETITEM,6231, 1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>� 汶筢桧圊 牮�� 羼螯 耱疣�, 觐蝾瘥� 驿弪, 黩钺� 屐� 镳桧羼腓 <b畜眢 喻蜩忸耱�>.")
	MisNeed(MIS_NEED_ITEM, 6231, 1, 10, 1)

	MisHelpTalk("<t>湾朦�� 腓 镱猁耱疱�? � 礤 驽豚� 驿囹� 蝈�� 耠桫觐� 漕脬�.")
	MisResultTalk("<t>橡咫羼蝽�! 饮 襦禧� 漕耱铐 桤 怦艴 膻溴�, 恹狃囗睇� 妈腚屐 � 枢痤�!")
	MisResultCondition(HasMission, 1666)
	MisResultCondition(NoRecord,1666)
	MisResultCondition(HasItem, 6231, 1)
	MisResultAction(TakeItem, 6231, 1)
	MisResultAction(ClearMission, 1666)
	MisResultAction(SetRecord, 1666)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,700,700)
	MisResultAction(GiveNpcMission, 6619, "羊疣� 疱腓赈梃 棱痤瘥", 3)

	InitTrigger()
	TriggerCondition(1, IsItem, 6231)
	TriggerAction(1, AddNextFlag, 1666, 10, 1)
	RegCurTrigger(16661)

--杨钺龛� 躔囗栩咫� 疱腓赈梃 棱痤瘥
	DefineMission(6619 , "杨钺龛� 躔囗栩咫� 疱腓赈梃 棱痤瘥",1857)

	MisBeginTalk("<t>饮 镱潋忮痄桦 疋铊 耧铖钺眍耱� � 蝈镥瘘 耠邃箝 箨噻囗��� <r羊囹箬 妈腚�> (377,417).")
	MisBeginCondition(NoRecord, 1857)
	MisBeginCondition(NoMission,1857)
	MisBeginCondition(HasRecord, 1666)
	MisBeginAction(AddMission, 1857)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "袜轵� <r羊囹簋 妈腚�> (377,417).")

	MisHelpTalk("<t>聋耱疱�, 铗忄骓邋, 耢咫邋.")
	MisResultCondition(AlwaysFailure)

--念脬栝 矬螯
	DefineMission(6372, "念脬栝 矬螯",1667)

	MisBeginTalk("<t>饮 恹镱腠桦 玎溧龛� 棱痤瘥, 蝈镥瘘 螓 耢铈屮� 耧疣忤蝰� � � 镳桤疣觐� 令汨龛. 蒡� 铟屙� 耠铈眍, 眍 � 磬溴�, 黩� 螓 耧疣忤��! 埋� � 蜮铊� 痼赅�! 愉圜�!<n><t>枢� 蝾朦觐 螓 甯 筢 磬殇� 戾�� � 镱塍麒 疋铪 磬沭噤�.")
	MisBeginCondition(NoRecord, 1667)
	MisBeginCondition(NoMission,1667)
	MisBeginCondition(HasRecord, 1857)
	MisBeginAction(AddMission, 1667)

	MisBeginAction(AddTrigger, 16671, TE_KILL, 1109, 1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>禹梓蝾纥 <b唣铖蝽簋 枢瘥> � 铖忸犷滂 牮嚅 棱痤瘥. 项耠� 铗麒蜞轳� 镥疱� <r羊囹箦� 妈腚�> (377,417).")

	MisNeed(MIS_NEED_KILL, 1109, 1, 10, 1)

	MisHelpTalk("<t>聋耱疱�, 妁� 猁耱疱�, � 耦怦屐 猁耱痤! � 铟屙� 忸腠簋顸!")
	MisResultTalk("<t>扬囫栳�, 黩� 铖忸犷滂� 牮嚅 棱痤瘥. 义镥瘘 铐 � 磬溴骓 痼赅� � 尹爨 镱觇礤� 磬�.")

	MisBeginCondition(NoRecord, 1667)
	MisResultCondition(HasMission, 1667)
	MisResultCondition(HasFlag, 1667, 10)
	MisResultAction(ClearMission, 1667)
	MisResultAction(SetRecord, 1667)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,700,700)
	MisResultAction(GiveNpcMission, 6373, "羊囹�� 妈腚�",2)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1109)
	TriggerAction(1, AddNextFlag, 1667, 10, 1)
	RegCurTrigger(16671)

--佯噫屙桢 � 牮帼 尹禧
	DefineMission(6373, "佯噫屙桢 � 牮帼 尹禧",1668)

	MisBeginTalk("<t>饮 箧� 疱� 镳钺脲祗 牮�� 棱痤瘥, 蝈镥瘘 磬耱嚯� 铟屦邃� 牮�� 尹禧. 悟� <r羊疣驵 疱腓赈梃 尹禧> (360,117), 铐 忖邃弪 蝈�� � 牦瘃 溴豚. 意�� 镱祛 礤 铖蜞礤蝰� 礤玎戾麇眍�.")
	MisBeginCondition(NoRecord, 1668)
	MisBeginCondition(NoMission,1668)
	MisBeginCondition(HasRecord, 1667)
	MisBeginAction(AddMission, 1668)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t>悟� <r羊疣驵 疱腓赈梃 尹禧> (360,117) � 疣耧痤耔 邈� � 镳铊珙澍屐.")

	MisHelpTalk("<t>暑沅� 耦 怦屐 疣玑屦屮�, 礤 玎溴疰桠嚅�� � 耱疣驵.")
	MisResultCondition(AlwaysFailure)

--佯噫屙桢 � 牮帼 尹禧
	DefineMission(6374, "佯噫屙桢 � 牮帼 尹禧",1668, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>饮 疣珙狃嚯�� � 镳钺脲爨扈 � 牮帼 棱痤瘥? 念脬� 驽 � 驿嚯 蝈��.")
	MisResultCondition(NoRecord, 1668)
	MisResultCondition(HasMission, 1668)
	MisResultAction(ClearMission, 1668)
	MisResultAction(SetRecord, 1668)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6375, "羊疣� 疱腓赈梃 尹禧", 2)

--橡铌��蜩�
	DefineMission(6375, "橡铌��蜩�",1669)

	MisBeginTalk("<t>署嚅 尹禧 镱沭�� � 疣玮疣蝈 � 磬躅滂蝰� 皴轺囫 � 箫噤铟眍� 耦耱��龛�. 添� 邃忄 箐噱蝰� 恹骅忄螯, � 忸� 祛� 狃囹 镥疱� 磬 蝈祉簋 耱铕铐�...<n><t>雾 沅�-蝾 磬 � � 疣玮嚯桧 � � 磬溴�, 黩� 螓 耢铈屮� 邈� 磬轵� � 筢栩�.")
	MisBeginCondition(NoRecord, 1669)
	MisBeginCondition(NoMission,1669)
	MisBeginCondition(HasRecord, 1668)
	MisBeginAction(AddMission, 1669)

	MisBeginAction(AddTrigger, 16691, TE_KILL, 1113, 1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "俞彘 <b腻翦牝眍泐 玎蝽桕� 疱腓赈栝> � 镱耠� 磬殇� <r羊疣驵 疱腓赈梃 尹禧> (360,117).")

	MisNeed(MIS_NEED_KILL, 1113, 1, 10, 1)

	MisHelpTalk("<t>铃漤 狃囹, 螓 礤漕耱囹铟眍 耔脲�, 黩钺� 恹镱腠栩� 玎溧龛�?")
	MisResultTalk("<t>扬囫栳�, 黩� 桤徉忤腭� 铗 礤泐, 眍 � 耦驵脲�. 殃铕� 怦� 漕腈眍 玎觐眵栩�.")

	MisBeginCondition(NoRecord, 1669)
	MisResultCondition(HasMission, 1669)
	MisResultCondition(HasFlag, 1669, 10)
	MisResultAction(ClearMission, 1669)
	MisResultAction(SetRecord, 1669)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,700,700)
	MisResultAction(GiveNpcMission, 6376, "羊疣� 疱腓赈梃 尹禧", 3)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1113)
	TriggerAction(1, AddNextFlag, 1669, 10, 1)
	RegCurTrigger(16691)

--湾忤眄 忡漕�
	DefineMission(6376, "湾忤眄 忡漕�",1670)

	MisBeginTalk("<t>�, 潆� 麇泐 � 怦�? 枢疣, 螓 漕腈磬 桤徉忤蝰� 铗 �痤耱�. 蒡� 镳桠钿栩 � 踵铖�. 橡桁屦� 桉赅螯 礤 磬漕: 爨蝈痂� 剜轵囗�, 枢痂猁 桦� 徨耧铕�潢� � 署��� 棱痤瘥 � 尹禧. 令� 桦� 麇腩忮�, 桦� 耱疣� 桦� 铐� 怦�...<n><t>砚弪 漕腈屙 镳铐桕眢螯 忸 尹祗! 悟� <r如钺疣驽龛� 枢瘥> (360,117), 忸珈铈眍 铐� 疣耨赅驽� 蝈徨 疋铪 蜞轫�.")
	MisBeginCondition(NoRecord, 1670)
	MisBeginCondition(NoMission,1670)
	MisBeginCondition(HasRecord, 1669)
	MisBeginAction(AddMission, 1670)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "<t><b羊疣� 疱腓赈梃 尹禧> 镳铖栩 铗赅螯 <r如钺疣驽龛� 枢瘥> (360,117).")

	MisHelpTalk("<t>羊囹�� 令汨龛 枢瘥 磬躅滂蝰� 磬 怛铕铎 箴钼礤. 饮 耩噻� 驽 邋 筲桎桫�,赅� 蝾朦觐 镱镟溴 蝮溧.")
	MisResultCondition(AlwaysFailure)

--湾忤眄 忡漕�
	DefineMission(6377, "湾忤眄 忡漕�",1670, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>� 膻犷� 耠篦噱, 忤眍忮� 桦� 礤� - 耱疣� � 龛� � 泐腩忮.")
	MisResultCondition(NoRecord, 1670)
	MisResultCondition(HasMission, 1670)
	MisResultAction(ClearMission, 1670)
	MisResultAction(SetRecord, 1670)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6378, "如钺疣驽龛� 枢瘥", 2)

--吾疣� 疱腓赈梃
	DefineMission(6378, "吾疣� 疱腓赈梃",1671)

	MisBeginTalk("<t>袜 怛铕铎 箴钼礤 骅忮� 黧漕忤 - <b填痿彘>. 陪� 痤� 猁� 耦耠囗, 镱蝾祗 黩�, 羼腓 � 礤磬忤骟 扈� - 礤� 龛赅觐泐 眈 桴 耧囫蜩! 义镥瘘 铐� 镥疱镱腠屙� 珉钺铋 � 泐蝾恹 恹镫羼眢螯 邋 � 怦� � 铗疣玷蝰� 磬 耱疣驵�.<n><t>骂珈铈眍, 镱赅 礤 镱珥�, 眢骓� 桤徉忤蝰� 铗 龛�. 捏爨� 膻��� 眢骓� 珥囹� � 邈� 耋耱忸忄龛�.")
	MisBeginCondition(NoRecord, 1671)
	MisBeginCondition(NoMission,1671)
	MisBeginCondition(HasRecord, 1670)
	MisBeginAction(AddMission, 1671)

	MisBeginAction(AddTrigger, 16711, TE_KILL, 1117, 1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>袜 怛铕铎 箴钼礤 牮�� 尹禧 箜梓蝾纥 <b填痿��> � 忸玮疣轳� � <r如钺疣驽龛� 枢瘥> (360,117).")

	MisNeed(MIS_NEED_KILL, 1117, 1, 10, 1)

	MisHelpTalk("<t>娩� 耧囫栩咫�, 沅� 痤漕磬鬣朦龛�, 礤箧桦� 磬耱嚯 觐礤�?")
	MisResultTalk("<t>岭嚆钿囵� 玎 镱祛. 羊疣� 耥钼� 忮痦弪�� � 疋铄 眍痨嚯铄 耦耱��龛� � 犷朦 礤 镳梓桧栩 膻��� 怵邃�.")

	MisBeginCondition(NoRecord, 1671)
	MisResultCondition(HasMission, 1671)
	MisResultCondition(HasFlag, 1671, 10)
	MisResultAction(ClearMission, 1671)
	MisResultAction(SetRecord, 1671)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,700,700)
	MisResultAction(GiveNpcMission, 6621, "如钺疣驽龛� 枢瘥", 4)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1117)
	TriggerAction(1, AddNextFlag, 1671, 10, 1)
	RegCurTrigger(16711)

--念觌噤 妈腚�
	DefineMission(6621 , "念觌噤 妈腚�",1858)

	MisBeginTalk("<t>饮 疣珙狃嚯�� 耦 珉铎. 佯铟眍 漕腩骅 钺 铎 <r妈腚� � 彦忮疣> (715,1135).")
	MisBeginCondition(NoRecord, 1858)
	MisBeginCondition(NoMission,1858)
	MisBeginCondition(HasRecord, 1671)
	MisBeginAction(AddMission, 1858)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )
	MisNeed(MIS_NEED_DESP, "念耱噔� 躅痤� 眍忸耱� <r妈腚� � 彦忮疣> (715,1135).")

	MisHelpTalk("<t>聋耱疱�, 耢咫嚓!")
	MisResultCondition(AlwaysFailure)

--襄疱溧螯 耦钺龛� 妈腚�
	DefineMission(6379, "襄疱溧螯 耦钺龛� 妈腚�",1672)

	MisBeginTalk("<t>橡钺脲禧 耱疣驽� 疱睇. � 蜞赕� 狍潴 蝈徨 镳桤磬蝈脲�, 祛� 脲汨铐屦, 羼腓 螓 赅� 祛骓� 耜铕邋 疣耨赅驽 躅痤� 眍忸耱� <r令汨礤> (1755,908) � 铗溧 彘 祛� <b署桉蜞腚 塔徕�>.")
	MisBeginCondition(NoRecord, 1672)
	MisBeginCondition(NoMission,1672)
	MisBeginCondition(HasRecord, 1858)
	MisBeginAction(AddMission, 1672)
	MisBeginAction(GiveItem, 6220, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "念腩骅 躅痤� 眍忸耱� <r令汨礤> (1755,908) � 镥疱溧� <b署桉蜞腚 塔徕� 妈腚�>.")

	MisHelpTalk("<t>� 黧怦蜮簋 皴�� 泐疣玟� 塍鼬� � 磬溴� 扈� 桤戾龛蝰� � 塍鼬簋 耱铕铐�.")
	MisResultCondition(AlwaysFailure)

--襄疱溧螯 耦钺龛� 妈腚�
	DefineMission(6380, "襄疱溧螯 耦钺龛� 妈腚�",1672, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>扬囫栳� 玎 镱祛! 妈腚� � �, 蜞赕� 赅� � 耱疣骅 磬怦邈溧 玎镱祉桁 蜮铋 镱溻桡! 饮 耧囫栩咫� 扈疣!")
	MisResultCondition(NoRecord, 1672)
	MisResultCondition(HasMission, 1672)
	MisResultCondition(HasItem, 6220, 1)
	MisResultAction(TakeItem, 6220, 1)
	MisResultAction(ClearMission, 1672)
	MisResultAction(SetRecord, 1672)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6381, "令汨��", 7)

--唣铖螯 填痿��
	DefineMission(6381, "唣铖螯 填痿��",1673)

	MisBeginTalk("<t>丸麇泐 礤 祛泱 镱溴豚螯... 埋� 镳钺脲爨 � 蝾�, 黩� � 礤 祛泱 桴 耧囫蜩. 皖 蝈镥瘘 铐� 磬躅��蝰� � 襦祛� 鲥眚疱 铖蝠钼� - � 桴 扈�...<n><t>隋��磬� 牮屣铖螯 珙忮蝰� <b隋潲睃�>. 悟镳噔��轳� 蝮溧 � 磬殇� <r袜耱噔龛赅 熙铗龛觐� - 旋�> (1365,570).")
	MisBeginCondition(NoRecord, 1673)
	MisBeginCondition(NoMission,1673)
	MisBeginCondition(HasRecord, 1672)
	MisBeginAction(AddMission, 1673)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "袜殇� <r袜耱噔龛赅 熙铗龛觐� - 旋�> (1365,570) � <b隋潲礤>.")

	MisHelpTalk("<t>湾 珥帼 赅� � 铖蜞眍忤螯. 袜漕 猁 镳邃囹� 忸耧铎桧囗���.")
	MisResultCondition(AlwaysFailure)

--唣铖螯 填痿��
	DefineMission(6382, "唣铖螯 填痿��",1673, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>袜耱��� 令汨睨 枢痼 恹 镳邃耱噔��弪�... 侦�... 腕 � 赅� 猃 礤 耦怦屐 蝾 桁咫 忖桎�, � 麇� 恹 镱潴爨腓.")
	MisResultCondition(NoRecord, 1673)
	MisResultCondition(HasMission, 1673)
	MisResultAction(ClearMission, 1673)
	MisResultAction(SetRecord, 1673)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6383, "袜耱噔龛� 熙铗龛觐� - 旋�", 26)

--填痿彘赅
	DefineMission(6383, "填痿彘赅",1674)

	MisBeginTalk("<t>腻忸麝�, � 觐蝾痤� � 耦忮蝮� 怵屐� 铗 怵屐屙�, 磬躅滂蝰� 铌铍� 灭铎钽疣溧. � 礤� 钺睇� 麇腩忮麇耜桢 觐痦�, 眍 铐� 恹痤耠� � 箸磬豚, 黩� 铗眍耔蝰� � 脲沐礓囵眍祗 痤潴.<n><t>� 襦� 镱蝾祛� 绵眈觐� 桁镥痂�, 礤觐沅� 祛� 镳邃觇 铗镳噔桦桉� 玎 祛�� � 钺铖眍忄腓顸 蝮�. � 耧囫 � 溴忸麝�, � � 铗腓麒� 铗 戾��, 铐� 猁豚 铟屙� 犭嚆钿囵磬.<n><t>篷腓 � 蝈�� 羼螯 赅觇-蝾 忸镳铖�, 铗� <r填痿彘牦 - 责妣> (651,1585) 铌铍� <b灭铎钽疣溧>.")
	MisBeginCondition(NoRecord, 1674)
	MisBeginCondition(NoMission,1674)
	MisBeginCondition(HasRecord, 1673)
	MisBeginAction(AddMission, 1674)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisNeed(MIS_NEED_DESP, "项泐忸痂 � <r填痿彘觐� - 责邋�> (651,1585) 铌铍� <b灭铎钽疣溧>.")

	MisHelpTalk("<t>妙忸���, 黩� 怦�-蜞觇 铐� 镫铛�.")
	MisResultCondition(AlwaysFailure)

--填痿彘赅
	DefineMission(6384, "填痿彘赅",1674, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>... ... ... ... ... ... ... ...")
	MisResultCondition(NoRecord, 1674)
	MisResultCondition(HasMission, 1674)
	MisResultAction(ClearMission, 1674)
	MisResultAction(SetRecord, 1674)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6385, "填痿彘赅 - 责��", 7)

--族腩忮� 磬 玎溧龛�
	DefineMission(6385, "族腩忮� 磬 玎溧龛�",1675)

	MisBeginTalk("<t>帏咫, 黩� 桉赅�? 篷腓 膻滂 耧疣忄 � 祛桴 溴豚�, 祉� 礤 麇泐 铖钺� 耜噻囹�, 眍, 羼腓 螓 镱祛驽 祉� 桤徉忤蝰� 铗 <r祟痄� 捏� 羊箧�> (1595,687) � <b氰祉桴 铖蝠钼钼>, 蝾沅� � 疣耨赅骟 蝈徨 礤黩� 铖钺屙眍�.")
	MisBeginCondition(NoRecord, 1675)
	MisBeginCondition(NoMission,1675)
	MisBeginCondition(HasRecord, 1674)
	MisBeginAction(AddMission, 1675)

	MisBeginAction(AddTrigger, 16751, TE_KILL, 1101, 1)
	MisCancelAction(SystemNotice, "蒡铗 赈羼� 礤 祛驽� 猁螯 铗戾砀�" )

	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "项祛汨 <r填痿彘赍 - 责邋> (651,1585) � 筢彘 <r祟痄� 捏� 羊箧�> (1595,687) � <b氰祉桴 铖蝠钼钼>.")

	MisNeed(MIS_NEED_KILL, 1101, 1, 10, 1)

	MisHelpTalk("<t>霹� 礤 怦�? 饮 镳铖蝾 徨耧铍彗屙!")
	MisResultTalk("<t>饮 铟屙� 耔朦眍 祉� 镱祛�! � 疣耨赅骟 蝈徨. � 桤 镫屐屙� 绵睇 � 禧 镫囗桊箦� 怛铕沩篁�� 磬 汶噔睇� 爨蝈痂�. 蒡� 耠篦栩�� � 蝾� 溴睃, 觐沅� 磬 耔臌 狍潴� 泐蝾恹 礤耱� 忸珈邃桢!")
	MisBeginCondition(NoRecord, 1675)
	MisResultCondition(HasMission, 1675)
	MisResultCondition(HasFlag, 1675, 10)
	MisResultAction(ClearMission, 1675)
	MisResultAction(SetRecord, 1675)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,50000,50000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1101)
	TriggerAction(1, AddNextFlag, 1675, 10, 1)
	RegCurTrigger(16751)

--杨钺龛� 躔囗栩咫� 疱腓赈梃 棱痤瘥
	DefineMission(6620, "杨钺龛� 躔囗栩咫� 疱腓赈梃 棱痤瘥",1857, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>鸯咫嚓, 螓 镳铠咫 桉稃蜞龛� 棱痤瘥. 饮 耧铖钺屙 镱祛鼽 祉� 磬忮耱� 镱��漕� � 扈疱.")
	MisResultCondition(NoRecord, 1857)
	MisResultCondition(HasMission, 1857)
	MisResultAction(ClearMission, 1857)
	MisResultAction(SetRecord, 1857)
	MisResultAction(GiveNpcMission, 6372, "羊囹�� 妈腚�", 1)

	--念觌噤 妈腚�
	DefineMission(6622, "念觌噤 妈腚�",1858, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>鸯咫嚓, 螓 疣珙狃嚯�� 耦 珉铎 � 牮帼 尹禧, 耧囫栳� 蝈徨.")
	MisResultCondition(NoRecord, 1858)
	MisResultCondition(HasMission, 1858)
	MisResultAction(ClearMission, 1858)
	MisResultAction(SetRecord, 1858)
	MisResultAction(GiveNpcMission, 6379, "妈朦 � 彦忮疣", 7)

end
HistoryMission001()