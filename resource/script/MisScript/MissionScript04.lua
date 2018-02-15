------------------------------------------------------------
--MissionScript04.lua Created by Robin 2005.05.27.
--
--主线任务
------------------------------------------------------------
print( "loading MissionScript04.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck






----------------------------------------------------------
--							--
--							--
--		主线任务	 				--
--							--
--							--
----------------------------------------------------------
	-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>主线任务开始
function CenterMission001()

----------------------------野兽出没的森林
	DefineMission( 400, "岭箧溧桢 耋耱忄", 400 )
	
	MisBeginTalk( "<t>皿耱铋 脲� - � 铒囫眍� 戾耱�, 沅� 瘥耜帼� 疋桊屣 戾溻邃�.<n><t>义� 礤 戾礤�, 祛� 镫屐�眄桕, <bBerry>, 骅忮� � <p青狃铠屙睇� 剜躜圊>, 觐蝾瘥� 磬躅��蝰� 磬 牮帼 脲襦. 鸯咫 耱疣眄桕, 礤 祛� 猁 螓 磬忮耱栩� 邈� 铗 祛邈� 桁屙� � 筢邃栩� � 蝾�, 黩� � 龛� 怦� � 镱��潢�?" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 400)
	MisBeginCondition(NoMission, 400)
	MisBeginAction(AddMission, 400)
	MisCancelAction(ClearMission, 400)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 铃痧� � (1893, 2812)")
	
	MisHelpTalk("铃痧� 怦邈溧 桡疣弪 � 铌疱耱眍耱� 青狃铠屙睇� 剜躜. 袜溴�, 黩� � 礤泐 怦� 躅痤.")
	MisResultCondition(AlwaysFailure )

-----------------------------------野兽出没的森林
	DefineMission( 401, "岭箧溧桢 耋耱忄", 400, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>杨 祉铋 怦� � 镱��潢�. 体溻彐囹� 礤 蜞觇� 箧 � 铒囫睇�, 赅� 潴爨弪 祛� ����. 袜 襦祛� 溴脲, � 膻犭� � 龛扈 桡疣螯.")
	MisResultCondition(NoRecord, 400)
	MisResultCondition(HasMission, 400)
	MisResultAction(ClearMission, 400 )
	MisResultAction(SetRecord, 400 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)



----------------------------迟到的沙漠商旅
	DefineMission( 402, "项玟礤� 镳栳桢", 401 )
	
	MisBeginTalk( "<t>鼠! 饮 赅� 疣� 忸怵屐�! 体驿� 祉铋 � 牦秭囔� 桤 矬耱� 耠铈桦桉� 漕忸朦眍 犭桤觇� 铗眍龛�. 枢驿 泐� 铐� 镳桢珂帼� 颃溧 潆� 蝾疸钼腓. 义� 礤 戾礤�, � 铎 泐潴 铐� 铟屙� 耔朦眍 玎溴疰桠帼蝰�, � 铗 龛� 礤� 龛赅觇� 忮耱彘.<n><t>湾 祛� 猁 螓 铗赅螯 <b锑痍篑�> � <p梧玷皴> � 疣珞珥囹�, 黩� 驽 桴 玎溴疰嚯�?" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 401)
	MisBeginCondition(NoMission, 401)
	MisBeginAction(AddMission, 401)
	MisCancelAction(ClearMission, 401)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 锑痍篑铎 (789, 3112)")
	
	MisHelpTalk("蓍! 项麇祗 螓 漕 耔� 镱� 玟羼�? 义徨 箐嚯铖� 疣琨耜囹� 锑痍篑�?")
	MisResultCondition(AlwaysFailure )

-----------------------------------迟到的沙漠商旅
	DefineMission( 403, "项玟礤� 镳栳桢", 401, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�, 禧 礤 祛驽� 矬蝈耱忸忄螯 桤-玎 篦囫蜩怿桴�� 镥聍囗 狍瘘, 镱铎� 禧 漕腈睇 铗腩骅螯 怦蝠鬻�. 湾 镥疱骅忄�, 禧 钺�玎蝈朦眍 玎汶�礤� � 鲤沐眚. 袜� � 恹泐漤�!")
	MisResultCondition(NoRecord, 401)
	MisResultCondition(HasMission, 401)
	MisResultAction(ClearMission, 401 )
	MisResultAction(SetRecord, 401 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)



----------------------------冰原探险
	DefineMission( 404, "锐耠邃钼囗桢 蝮礓瘥", 402 )
	
	MisBeginTalk( "<t>卿疣耱怏� 漯箧铌, 螓 猁耱痤 疣耱屮�. 蒡� 骅忸蝽 蝈徨 犷朦 礤 痤忭�.<n><t>� 耠嚯, 黩� � <p象耱铠圊 隋潲龛> 耦徼疣�� 磬��螯 眍恹� 桉赅蝈脲� 镳桕膻麇龛�. 项麇祗 猁 蝈徨 礤 镱镳钺钼囹�? � 磬镨 疱觐戾礓囹咫铄 镨顸祛 潆� <b袜睇>." )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 402)
	MisBeginCondition(NoMission, 402)
	MisBeginAction(AddMission, 402)
	MisCancelAction(ClearMission, 402)
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 袜眢 (798, 369) 潆� 溧朦礤轼桴 玎溧龛�")
	
	MisHelpTalk("项驵塍轳蜞, 磬殇� 袜眢 赅� 祛骓� 猁耱疱�. 雾� 蝈�� 驿弪.")
	MisResultCondition(AlwaysFailure )

-----------------------------------冰原探险
	DefineMission( 405, "锐耠邃钼囗桢 蝮礓瘥", 402, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>� 忮瘙 � 蜮铊 耧铖钺眍耱� 镱耜铍� <b翔蝈�> 镱疱觐戾礓钼嚯 蝈��.<n><t>义徨 猁 耱铊腩 邈� 铗犭嚆钿囵栩�.")
	MisResultCondition(NoRecord, 402)
	MisResultCondition(HasMission, 402)
	MisResultAction(ClearMission, 402 )
	MisResultAction(SetRecord, 402 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------向着沙漠
	DefineMission( 406, "� 矬耱�!", 403 )
	
	MisBeginTalk( "<t>令驽 祛�! 丸觐沅� 礤 忤溴� 觐泐-蝾, 牝� 猁 疣玮桠嚯�� 蜞赕� 猁耱痤 , 赅� � 螓.<n><t>� 耦驵脲龛�, 戾耱睇� 祛眈蝠� 磬 铌疣桧� 隋潲龛 犷朦 礤 镱戾踵 蝈徨. 篷腓 桧蝈疱耥�, � 祛泱 镱疱觐戾礓钼囹� 蝈徨 <b枢忸轳觇> 桤 <p梧玷襦>, 屐� 眢骓� 镱祛." )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 403)
	MisBeginCondition(NoMission, 403)
	MisBeginAction(AddMission, 403)
	MisCancelAction(ClearMission, 403)
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 枢忸轳觇 (779, 3098)")
	
	MisHelpTalk("枢忸轳觇 铟屙� 漕狃. 湾 耱铊� 耱羼��螯�� 邈�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------向着沙漠
	DefineMission( 407, "� 矬耱�!", 403, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>添� 眢骓� 蜮�� 镱祛. 项驵塍轳蜞, 狍潼 礤镱溧脲牦 � 镱祛汨 祉�. 扬囫栳�!")
	MisResultCondition(NoRecord, 403)
	MisResultCondition(HasMission, 403)
	MisResultAction(ClearMission, 403 )
	MisResultAction(SetRecord, 403 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------来自白银的邀请
	DefineMission( 408, "橡桡豚龛� � 鲤沐眚", 404 )
	
	MisBeginTalk( "<t>项耠篪嚅, 漯筱 祛�. 隋潲睃- 铟屙� 躅腩漤 泐痤�, � 礤镳桠觇 祛骓� 溧驽 玎犷脲螯.<n><t>塔滂 桤 <p青狃铠屙睇� 躜> 耦怦屐 礤溧忭� 镳铖桦� � 戾�� 镱祛.<n><t>篷腓 礤 镳铗桠, 礤 祛� 猁 螓 铗镳噔栩� 蝮溧 � 疣琨耜囹� <b叔眚囵�>? " )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 404)
	MisBeginCondition(NoMission, 404)
	MisBeginAction(AddMission, 404)
	MisCancelAction(ClearMission, 404)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 叔眚囵� (1894, 2798)")
	
	MisHelpTalk("饮 妁� 玟羼�? 叔眚囵� 耩铟眍 眢骓� 蜮�� 镱祛!")
	MisResultCondition(AlwaysFailure )

-----------------------------------来自白银的邀请
	DefineMission( 409, "橡桡豚龛� � 鲤沐眚", 404, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>� 忮瘙 � 蜮铊 耔臌, 镱耜铍� <b翔蝈�> 痼鬣腭� 玎 蝈��.<n><t>义徨 耱铊腩 猁 邈� 镱犭嚆钿囵栩� 玎 疱觐戾礓圉梃.")
	MisResultCondition(NoRecord, 404)
	MisResultCondition(HasMission, 404)
	MisResultAction(ClearMission, 404 )
	MisResultAction(SetRecord, 404 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------骚动的冰原
	DefineMission( 410, "拟桄屙桢 蝮礓瘥", 405 )
	
	MisBeginTalk( "<t>蓍! 饮 赅� 疣� 忸怵屐�.<n><t><b逆屦龛�> � 徨溴 � <p象耱铠圊 隋潲龛> � 屐� 眢骓� 镱祛.<n><t>项耜铍� 玟羼� 镱黩� 礤麇泐 溴豚螯, 镱麇祗 猁 蝈徨 蝮溧 礤 胥铐�螯?" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 405)
	MisBeginCondition(NoMission, 405)
	MisBeginAction(AddMission, 405)
	MisCancelAction(ClearMission, 405)
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 逆屦龛� (803, 352)")
	
	MisHelpTalk("项麇祗 螓 漕 耔� 镱� 玟羼� 蝮耋屮�? 悟� 逆屦龛�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------骚动的冰原
	DefineMission( 411, "拟桄屙桢 蝮礓瘥", 405, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>项耜铍� 蝈�� 镱疱觐戾礓钼嚯 武羼耔�, � 忮瘙, 黩� 螓 耧疣忤��.<n><t>填驽 镱耠铐�螯�� 镱犭桤铖蜩, � � 蝈� 怵屐屙屐 镳桁� 礤钺躅滂禧� 戾瘥.")
	MisResultCondition(NoRecord, 405)
	MisResultCondition(HasMission, 405 )
	MisResultAction(ClearMission, 405 )
	MisResultAction(SetRecord, 405 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------受阻的物资
	DefineMission( 412, "翌疸钼铄 徉疸�", 406 )
	
	MisBeginTalk( "<t>橡桠弪, 祉� 眢骓� 镱祛. 填彘 玎溧麇� �怆弪�� 漕耱噔赅 疱耋瘃钼 � <p梧玷�>. 枢� 猁 蝾 龛 猁腩, 磬 矬蝈耱忮眄桕钼 � 镱耠邃礤� 怵屐� 耱嚯� 磬镟溧螯 忸腙�. 饮 礤 祛� 猁 漕耱噔栩� 镨顸祛 <b锑痍篑�> � 梧玷� � ,忸珈铈眍, 铐 镳桎箪噱� 赅� 祉� 漕狃囹� 漕 礤泐 � 鲥腩耱� � 耦躔囗眍耱�?" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 406)
	MisBeginCondition(NoMission, 406)
	MisBeginAction(AddMission, 406)
	MisCancelAction(ClearMission, 406)
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 锑痍篑� (789, 3112)")
	
	MisHelpTalk("湾 祛� 猁 螓 镱耧屮栩�? 蒡� 疱耋瘃� 铟屙� 忄骓� � 梧玷皴.")
	MisResultCondition(AlwaysFailure )

-----------------------------------受阻的物资
	DefineMission( 413, "翌疸钼铄 徉疸�", 406, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>扬囫栳� 犷朦�! 铃� 桴 疱耋瘃钼 禧 猁 礤 镳铈桦� 溧驽 漕 耠邃簋泐 戾��鲟.")
	MisResultCondition(NoRecord, 406)
	MisResultCondition(HasMission, 406 )
	MisResultAction(ClearMission, 406 )
	MisResultAction(SetRecord, 406 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------勇者招募
	DefineMission( 414, "洛疳钼赅 忸栩咫彘", 407 )
	
	MisBeginTalk( "<t>项耠篪嚅 戾��, 漯箧铌. 剜轵囗 - 铟屙� 稃朦睇� � 铒囫睇� 潆� 骅珥� 泐痤�.<n><t><p青狃铠屙睇� 躜�> 镳铖桦� � 镱祛 耦怦屐 礤溧忭�.<n><t>饮 礤 祛� 猁 铗镳噔栩� 蝮溧 � 磬轵� <b叔眚囵�>?" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 407)
	MisBeginCondition(NoMission, 407)
	MisBeginAction(AddMission, 407)
	MisCancelAction(ClearMission, 407)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 叔眚囵� (1894, 2798)")
	
	MisHelpTalk("枢�? 饮 妁� 玟羼�? 叔眚囵� 眢骓� 蜮�� 镱祛!")
	MisResultCondition(AlwaysFailure )

-----------------------------------勇者招募
	DefineMission( 415, "洛疳钼赅 忸栩咫彘", 407, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>�, 蜞� <b绣耠桧�> 镱镳铖桦� 蝈�� 镳桎蜩. 骂钺-蝾, � 礤 铟屙� 蝾 彘 漕忮���.<n><t>腕 疣� 箧 螓 玟羼�...腕, 溧 豚漤�...")
	MisResultCondition(NoRecord, 407)
	MisResultCondition(HasMission, 407 )
	MisResultAction(ClearMission, 407 )
	MisResultAction(SetRecord, 407 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------冰城的女神信徒
	DefineMission( 416, "项耠邃钼囹咫� 励�", 408 )
	
	MisBeginTalk( "<t>饮 赅� 疣� 忸怵屐�!<n><t>填� 躅痤� 漯筱, <b拎狍� 念磴>, 镥疱艴嚯� � <p象耱铠� 隋潲龛> 10 脲� 磬玎�, 黩钺� 疣耧痤耱疣龛螯 疋铊 珥囗�� � 戾滂鲨礤. 皖 躅腩� 礤汔蜩忭� 耜噻噱蝰� 磬 邋 玟铕钼.<n><t>添� 眢驽� 铗忄骓 漕狃钼铍弼, 觐蝾瘥� 镥疱溧� 猁 彘 祛� 犭嚆铖腩忮龛�." )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 408)
	MisBeginCondition(NoMission, 408)
	MisBeginAction(AddMission, 408)
	MisCancelAction(ClearMission, 408)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 拎狍铋 念磴 (795, 363)")
	
	MisHelpTalk("� 犷�, 赅� 猁 拎狍� 念磴 礤 铗觇眢豚 觐睃觇.<n><t>项蝾痤镨顸!")
	MisResultCondition(AlwaysFailure )

-----------------------------------冰城的女神信徒
	DefineMission( 417, "项耠邃钼囹咫� 励�", 408, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>扬囫栳�, 黩� 镥疱溧� 犭嚆铖腩忮龛� 砚�蝾泐 悟鲟. 添� 箧� 塍鼬�!")
	MisResultCondition(NoRecord, 408)
	MisResultCondition(HasMission, 408 )
	MisResultAction(ClearMission, 408 )
	MisResultAction(SetRecord, 408 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------密林探险
	DefineMission( 418, "锐耠邃钼囗桢 滏箜汶彘", 409 )
	
	MisBeginTalk( "<t>橡桠弪, 忤骟 蜮铪 耱疣耱� � 桉耠邃钼囗���.<n><t>皖 � 戾耱� 礤 耦怦屐 潆� 蝈��. 项棂� <p捏痂囗�> � <p殃嚯桉蝾� 箐咫�>. � 礤泐 羼螯 玎溧龛� 潆� 蝈��." )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 409)
	MisBeginCondition(NoMission, 409)
	MisBeginAction(AddMission, 409)
	MisCancelAction(ClearMission, 409)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 捏痂囗铎 (1535, 3071)")
	
	MisHelpTalk("饮 蜞� � 礤 皲忤眢腭� � 戾耱�?<n><t>聋耱疱�, 怵屐� 龛觐泐 礤 驿弪!")
	MisResultCondition(AlwaysFailure )

-----------------------------------密林探险
	DefineMission( 419, "锐耠邃钼囗桢 滏箜汶彘", 409, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>疹螯 <b洛眍磬> � 镱疱觐戾礓钼嚯� 蝈��, 羼腓 螓 祉� 礤 镱漕殇屮�, � 礤 漕忮瘙 蝈徨 龛 钿眍泐 玎溧龛�.")
	MisResultCondition(NoRecord, 409)
	MisResultCondition(HasMission, 409 )
	MisResultAction(ClearMission, 409 )
	MisResultAction(SetRecord, 409 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)



----------------------------出行东方
	DefineMission( 420, "象蝈耱忤� 磬 骂耱铌", 410 )
	
	MisBeginTalk( "<t>�, � 蝈�� 珥帼.<n><t>意�� 疱矬蜞鲨� 疣耧痤耱疣龛豚顸 溧脲觐 镱 矬耱�. 蒡� 汔忄睃 耠桫觐� 爨豚 潆� 蜞觐泐 麇腩忮赅, 赅� 螓.<n><t>填驽� 螓 铗镳噔桫� � <p蓄 狸圉栝> � 蜞� 磬殇屮� 镳桁屙屙桢 疋铊� 耧铖钺眍耱��? <b杨豚痼> 皴轺囫 眢驽� 牝�-蝾 � 蜮铊扈 箪屙��扈." )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 410)
	MisBeginCondition(NoMission, 410)
	MisBeginAction(AddMission, 410)
	MisCancelAction(ClearMission, 410)
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 杨豚痼 (1202, 3179)")
	
	MisHelpTalk("湾 玎溴疰桠嚅�� 蝮� 磬漕脬�. 铃汨 � 蓄 狸圉栝!")
	MisResultCondition(AlwaysFailure )

-----------------------------------出行东方
	DefineMission( 421, "象蝈耱忤� 磬 骂耱铌", 410, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>毋�, � 祉钽� � 蝈徨 耠嚯. � <b锑痍篑�> 镳�祛 蜞觇 黧螯� 磬 蜞豚眚�.<n><t>项驵塍轳蜞, 铖蜞睃�� 玟羼� � � 蝈�� 镳铊眙铕扈痼� � 玎溧龛��, 觐蝾瘥� 眢骓� 恹镱腠栩�.")
	MisResultCondition(NoRecord, 410)
	MisResultCondition(HasMission, 410 )
	MisResultAction(ClearMission, 410 )
	MisResultAction(SetRecord, 410 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------寻找保镖
	DefineMission( 422, "� 镱桉赅� 蝈腩躔囗栩咫�", 411 )
	
	MisBeginTalk( "<t>鼠, 螓 恹汶�滂 箜�. 蒡� 镱蝾祗 黩� 螓 礤 祛驽 磬轵� 漕耱铋眍泐 镳铗桠龛赅 蝮�? 篷腓 蜞�, 蝾 镱玮铍� 祉� 镱珥嚓铎栩� 蝈�� � 蝾疸钼鲥� <b离赅痤�> � <p馏躜� 莉豚眚桉>.<n><t>陪� 蝾疸钼 矬螯 镳铖蜩疣弪�� 麇疱� 铒囫睇� 脲�, � � 玎溧鬣 狍溴� 桧蝈疱耥� 蜞觇�, 赅� 螓!" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 411)
	MisBeginCondition(NoMission, 411)
	MisBeginAction(AddMission, 411)
	MisCancelAction(ClearMission, 411)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 离赅痤� (1059, 661)")
	
	MisHelpTalk("项麇祗 蝈徨 礤 铗镳噔栩� 磬 痤琨耜� 离赅疣 � 馏躜� 莉豚眚桉?")
	MisResultCondition(AlwaysFailure )

-----------------------------------寻找保镖
	DefineMission( 423, "� 镱桉赅� 蝈腩躔囗栩咫�", 411, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>项耜铍� 螓 铗 <b藻� 藻�>, � 镳桁� 怦� 忸珈铈睇� 戾瘥, 黩钺� 禧 铗镳噔桦桉� � 矬螯.")
	MisResultCondition(NoRecord, 411)
	MisResultCondition(HasMission, 411 )
	MisResultAction(ClearMission, 411 )
	MisResultAction(SetRecord, 411 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------森林探险
	DefineMission( 424, "锐耠邃钼囗桢 脲襦", 412 )
	
	MisBeginTalk( "<t>添� 赅驽蝰�, 黩� 螓 膻徼 痂耜.<n><t>凄朦, 黩� 蝮� 礤� 龛麇泐 桧蝈疱耥钽�.<n><t>� 祛泱 镱疱觐戾礓钼囹� 戾耱鬻觐 镱� 磬玮囗桢� <p殃嚯桉螓� 愉咫>. � 戾�� 蜞� 漯筱 <b离尻襦礓桉>, 铐 蝾黜� 溧耱 蝈徨 镟痼 桧蝈疱耥 镱痼麇龛�." )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 412)
	MisBeginCondition(NoMission, 412)
	MisBeginAction(AddMission, 412)
	MisCancelAction(ClearMission, 412)
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 离尻襦礓桉� (1526, 3089)")
	
	MisHelpTalk("泥忄� 猁耱疱�! 离尻襦礓桉 驿弪 蝈�� � 殃嚯桉蝾� 愉咫�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------森林探险
	DefineMission( 425, "锐耠邃钼囗桢 脲襦", 412, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t><b叔眚囵�> 疱潢� 觐泐-蝾 踱嚯栩.<n><t>项耜铍� 铐 蝈徨 漕忮��弪, � 磬殇� 镱漉钿�� 玎溧龛� 潆� 蝈��.")
	MisResultCondition(NoRecord, 412)
	MisResultCondition(HasMission, 412 )
	MisResultAction(ClearMission, 412 )
	MisResultAction(SetRecord, 412 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------险境重重
	DefineMission( 426, "物囫睇� 怵屐屙�", 413 )
	
	MisBeginTalk( "<t>�, � � 躅蝈� 镱轵� 蝈�� 桉赅螯. 填� 漯筱, <b杨豚�>, 镱耱疣溧� 铗 痼� 镥聍囗睇� 徉礓栩钼 礤耜铍� 漤彘 磬玎�, 觐沅� 桉赅� 耦牮钼棂�. 彦轺囫 铐 镱镳噔��弪�� � <p蓄 狸圉栝>.<n><t>念痤汔 蝮溧 铟屙� 铒囫磬 潆� 戾��. 湾 祛� 猁 螓 镥疱溧螯 屐� 镳桠弪 铗 戾��?" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 413)
	MisBeginCondition(NoMission, 413)
	MisBeginAction(AddMission, 413)
	MisCancelAction(ClearMission, 413)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 杨豚痤� � (1202, 3179)")
	
	MisHelpTalk("饮 怦蝠弪桦�� � 杨豚痤�? � 徨耧铌铪顸!")
	MisResultCondition(AlwaysFailure )

-----------------------------------险境重重
	DefineMission( 427, "物囫睇� 怵屐屙�", 413, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>埋� 躅痤. 橡铖蝾 � 箧� 礤 祛泱 蜞� 猁耱痤 溻桡囹�, 赅� 疣睃. 湾 镥疱骅忄�, � 铟屙� 耜铕� 镱镳噔膻顸.<n><t>扬囫栳� 玎 徨耧铌铋耱忸!")
	MisResultCondition(NoRecord, 413)
	MisResultCondition(HasMission, 413 )
	MisResultAction(ClearMission, 413 )
	MisResultAction(SetRecord, 413 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------支援阿兰比斯
	DefineMission( 428, "项潢疱镫屙桢 潆� 莉豚眚桎�", 414 )
	
	MisBeginTalk( "<t>橡桠弪. 项躅驽 玟屮龛� 祛眈蝠� 箧� 礤 镳铗桠龛觇 蝈徨. 饮 猁� 铗腓黜 玎蝽桕铎 铋 爨脲睃觐� 铌疣桧� 怦� � 怵屐�.<n><t>武桧 祛� 漯筱 � <p馏躜� 莉豚眚桉> 铟屙� 眢驿噱蝰� � 蜮铄� 镱祛. <n><t>填驽 疣琨耜囹� <b求疳�> � 镱耱囵囹� 镱祛鼽 屐�?" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 414)
	MisBeginCondition(NoMission, 414)
	MisBeginAction(AddMission, 414)
	MisCancelAction(ClearMission, 414)
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 求疳� � (1037, 671)")
	
	MisHelpTalk("馏躜� 莉豚眚桉 眢驿噱蝰� � 蜮铄� 镱祛.<n><t>湾 耱铋 蝮�, 徨汨 猁耱疱� 蝮溧.")
	MisResultCondition(AlwaysFailure )

-----------------------------------支援阿兰比斯
	DefineMission( 429, "项潢疱镫屙桢 潆� 莉豚眚桎�", 414, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>署篁�! 袜� 赅� 疣� 眢骓� 镱祛.<n><t>项驵塍轳蜞, 礤 篚钿�!")
	MisResultCondition(NoRecord, 414)
	MisResultCondition(HasMission, 414 )
	MisResultAction(ClearMission, 414 )
	MisResultAction(SetRecord, 414 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------大开眼界
	DefineMission( 430, "橡钺箧溴龛�", 415 )
	
	MisBeginTalk( "<t>马篦铌, 羼腓 螓 玟羼� 铖蜞礤�� , 蝾 蝾朦觐 镱蝈��屮� 怵屐�.<n><t>项麇祗 猁 蝈徨 礤 镱轵� � 桤篦栩� 扈� 镱赅 螓 妁� 祛腩�? 填� 篦屙桕, <b离尻襦礓桉>, 皴轺囫 镳铈桠噱� � <p殃嚯桉蝾� 愉咫�>.<n><t>篷腓 螓 耜噫屮�, 黩� 螓 铗 戾��, 铐 � 疣漕耱 蝈�� 镳桁弪." )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 415)
	MisBeginCondition(NoMission, 415)
	MisBeginAction(AddMission, 415)
	MisCancelAction(ClearMission, 415)
		
	MisNeed(MIS_NEED_DESP, "袜殇栩� 离尻襦礓桉� � (1526, 3089)")
	
	MisHelpTalk("离尻襦礓桉 蝈�� 驿弪 � 殃嚯桉蝾� 愉咫�. 项驵塍轳蜞 桎�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------大开眼界
	DefineMission( 431, "橡钺箧溴龛�", 415, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>义�� 铗镳噔桦 颃溧 <b羊囵桕-镳邃耜噻囹咫�>? 项驵塍轳蜞, 黧怦蜮箝 皴�� 赅� 漕爨.")
	MisResultCondition(NoRecord, 415)
	MisResultCondition(HasMission, 415 )
	MisResultAction(ClearMission, 415 )
	MisResultAction(SetRecord, 415 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)



----------------------------沙漠探险
	DefineMission( 432, "锐耠邃钼囗桢 矬耱�", 416 )
	
	MisBeginTalk( "<t>橡桠弪, � 蝈�� 镱躅驽 耱疣耱� � 桉耠邃钼囗���. 皖 � 耦怦屐 礤 蝾 戾耱�. 袜殇� <b填祛> � <t蓄 狸圉栝>.<n><t>� 礤� 磬殇弪�� 镟痼 玎溧龛�." )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 416)
	MisBeginCondition(NoMission, 416)
	MisBeginAction(AddMission, 416)
	MisCancelAction(ClearMission, 416)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 填祛 (1209, 3196)")
	
	MisHelpTalk("族泐 螓 驿屮�? 蠕� � 蓄 狸圉栝 � 磬殇� 填祛!")
	MisResultCondition(AlwaysFailure )


-----------------------------------沙漠探险
	DefineMission( 433, "锐耠邃钼囗桢 矬耱�", 416, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>疹螯 蝈�� � 镱疱觐戾礓钼嚯� <b袜磬>, 羼腓 螓 祉� 礤 镱漉钿桫�, � 狍潴 恹眢驿屙 铗赅玎螯�� 铗 蜮铊� 篑塍�.")
	MisResultCondition(NoRecord, 416)
	MisResultCondition(HasMission, 416 )
	MisResultAction(ClearMission, 416 )
	MisResultAction(SetRecord, 416 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------向南方
	DefineMission( 434, "象蝈耱忤� 磬 ", 417 )
	
	MisBeginTalk( "<t>马篦铌, 羼腓 螓 玟羼� 铖蜞礤��, 蝾 蝾朦觐 镱蝈��屮� 怵屐�. 项麇祗 猁 蝈徨 礤 镱轵� � 桤篦栩� 扈� 镱赅 螓 妁� 祛腩�? 填� 篦屙桕, <b绵襦痄栝>, 皴轺囫 镳铈桠噱� � <p馏躜� 莉豚眚桉>.<n><t>篷腓 螓 耜噫屮�, 黩� 螓 铗 戾��, 铐 � 疣漕耱 蝈�� 镳桁弪." )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 417)
	MisBeginCondition(NoMission, 417)
	MisBeginAction(AddMission, 417)
	MisCancelAction(ClearMission, 417)
		
	MisNeed(MIS_NEED_DESP, "袜轵� 绵襦痄�� � (1028, 649)")
	
	MisHelpTalk("绵襦痄栝 � 馏躜� 莉豚眚桉. 蠕� 箧�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------向南方
	DefineMission( 435, "象蝈耱忤� 磬 ", 417, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>蒗, 铗 耱囵梓铌 怦� 龛赅� 铗 戾�� 礤 铗耱囗弪...<n><t>肃漤�, 玎狍潼, 疣� 箧 螓 玟羼�, 蝈徨 耱铊� 铖蜞螯��.<n><t>添� 怦� 疣忭� 礤 踱囹噱� 玟羼� 痼�.")
	MisResultCondition(NoRecord, 417)
	MisResultCondition(HasMission, 417 )
	MisResultAction(ClearMission, 417 )
	MisResultAction(SetRecord, 417 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------梦想海洋
	DefineMission( 436, "填疱 体黩�", 418 )
	
	MisBeginTalk( "<t>O泐, 蝾朦觐 礤 泐忸痂, 黩� 螓 妁� 礤 桉耠邃钼嚯 祛疱!?<n><t>项玮铍� 祉� 镳邃耱噔栩� 蝈徨 <b填瘃觐泐 耦忮蝽桕� - 离屙�> 桤 <p鲤沐眚�>. 雾� 磬篦栩 蝈�� 怦屐�, 黩� 礤钺躅滂祛." )
	MisBeginCondition( LvCheck, ">", 24 )
	MisBeginCondition(NoRecord, 418)
	MisBeginCondition(NoRecord, 419)
	MisBeginCondition(NoRecord, 420)
	MisBeginCondition(NoMission, 418)
	MisBeginCondition(NoMission, 419)
	MisBeginCondition(NoMission, 420)
	MisBeginAction(AddMission, 418)
	MisCancelAction(ClearMission, 418)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 离屙铋 (2247, 2858)")
	
	MisHelpTalk("离屙� � 镱痱� 鲤沐眚�. 悟镳噔��轳� � 礤�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------梦想海洋
	DefineMission( 437, "填疱 体黩�", 418, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>湾 忸腠箝��, � 祛彘 镱祛� 螓 蝾蝼囫 驽 铗镳噔桫� � 镫噔囗桢!")
	MisResultCondition(NoRecord, 418)
	MisResultCondition(HasMission, 418 )
	MisResultAction(ClearMission, 418 )
	MisResultAction(SetRecord, 418 )
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney, 700, 700)



----------------------------海军事务所报到！
	DefineMission( 438, "悟牮� 玎镨顸 忸 綦铗!", 419 )
	
	MisBeginTalk( "<t>饮 妁� 礤 猁� � 祛疱, 漯箧铌? � 聍栩帼, 螓 赅� 疣� 忸怵屐�.<n><t>项玮铍� 镳邃耱噔栩� 蝈徨 <b填瘃觐泐 耦忮蝽桕� - 离屙�> 桤 <p鲤沐眚�>. 雾� 磬篦栩 蝈�� 怦屐�, 黩� 磬漕 珥囹� � 镫噔囗梃." )
	MisBeginCondition( LvCheck, ">", 24 )
	MisBeginCondition(NoRecord, 418)
	MisBeginCondition(NoRecord, 419)
	MisBeginCondition(NoRecord, 420)
	MisBeginCondition(NoMission, 418)
	MisBeginCondition(NoMission, 419)
	MisBeginCondition(NoMission, 420)
	MisBeginAction(AddMission, 419)
	MisCancelAction(ClearMission, 419)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 离屙铋 � (2247, 2858)")
	
	MisHelpTalk("离屙� � 镱痱� 鲤沐眚�. 项驵塍轳蜞, 桎� � 礤�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------海军事务所报到！
	DefineMission( 439, "悟牮� 玎镨顸 忸 綦铗!", 419, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>湾 忸腠箝��, � 祛彘 镱祛� 螓 耔� 驽 皴牦礓� 铗镳噔桫� � 镫噔囗桢!")
	MisResultCondition(NoRecord, 419)
	MisResultCondition(HasMission, 419 )
	MisResultAction(ClearMission, 419 )
	MisResultAction(SetRecord, 419 )
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney, 700, 700)



----------------------------海军事务所
	DefineMission( 440, "仳噌 綦铗�", 420 )
	
	MisBeginTalk( "<t>�, 蝾朦觐 礤 泐忸痂, 黩� 螓 妁� 礤 恹躅滂� � 铗牮铄 祛疱!?<n><t>� 镳邃耱噔膻 蝈�� <b填瘃觐祗 耦忮蝽桕� - 离屙�> 桤 <p鲤沐眚�>. 雾� 磬篦栩 蝈�� 怦屐�, 黩� 眢骓� 珥囹�." )
	MisBeginCondition( LvCheck, ">", 24 )
	MisBeginCondition(NoRecord, 418)
	MisBeginCondition(NoRecord, 419)
	MisBeginCondition(NoRecord, 420)
	MisBeginCondition(NoMission, 418)
	MisBeginCondition(NoMission, 419)
	MisBeginCondition(NoMission, 420)
	MisBeginAction(AddMission, 420)
	MisCancelAction(ClearMission, 420)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 离屙铋 � (2247, 2858)")
	
	MisHelpTalk("离屙� � 镱痱� 鲤沐眚�. 蠕� � 礤�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------海军事务所
	DefineMission( 441, "仳噌 綦铗�", 420, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>湾 忸腠箝��, � 祛彘 镱祛� 螓 耔� 驽 皴牦礓� 铗镳噔桫� � 镫噔囗桢!")
	MisResultCondition(NoRecord, 420)
	MisResultCondition(HasMission, 420 )
	MisResultAction(ClearMission, 420 )
	MisResultAction(SetRecord, 420 )
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney, 700, 700)



----------------------------天下第一商人
	DefineMission( 442, "梭鼬栝 牦镥� � 扈疱", 421 )
	
	MisBeginTalk( "<t>袜觐礤�-蝾 螓 玟羼�! � 戾�� 耠铈桦桉� 躅痤� 铗眍龛� � <b砧痤痤>, 蝾疸钼鲥� 桤 <p鲤沐眚�>. � 镱耠邃眄� 怵屐�, 铐 玎戾眢弪 耱箐屙蝾� 磬 珥囗桢 祛瘃觐� 蝾疸钼腓.<n><t>篷腓 蝈徨 桧蝈疱耥� 箸磬螯 镱犷朦 � 祛瘃觐� 蝾疸钼脲, 怦蝠弪� � <b砧痤痤>." )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 421)
	MisBeginCondition(NoRecord, 422)
	MisBeginCondition(NoRecord, 423)
	MisBeginCondition(NoMission, 421)
	MisBeginCondition(NoMission, 422)
	MisBeginCondition(NoMission, 423)
	MisBeginAction(AddMission, 421)
	MisCancelAction(ClearMission, 421)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 蝾疸钼鲥� 砧痤痤 � (2331, 2821)")
	
	MisHelpTalk("翁�! 项麇祗 螓 妁� 玟羼�! 湾箧咫� 蝈徨 礤 桧蝈疱耥�? 砧痤痤 皴轺囫 � 鲤沐眚�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------天下第一商人
	DefineMission( 443, "梭鼬栝 牦镥� � 扈疱", 421, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>饮 躅麇 猁螯 塍鼬桁 蝾疸钼鲥�?<n><t>疹痤! � 蜞� � 珥嚯.")
	MisResultCondition(NoRecord, 421)
	MisResultCondition(HasMission, 421 )
	MisResultAction(ClearMission, 421 )
	MisResultAction(SetRecord, 421 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------白银交易所
	DefineMission( 444, "皱眚� 蝾疸钼腓 鲤沐眚�", 422 )
	
	MisBeginTalk( "<t>袜觐礤�-蝾 螓 玟羼�! � 戾�� 耠铈桦桉� 躅痤� 铗眍龛� � <b砧痤痤>, 蝾疸钼鲥� 桤 <p鲤沐眚�>. � 镱耠邃眄� 怵屐�, 铐 玎戾眢弪 耱箐屙蝾� 磬 珥囗桢 祛瘃觐� 蝾疸钼腓.<n><t>篷腓 蝈徨 桧蝈疱耥� 箸磬螯 镱犷朦 � 祛瘃觐� 蝾疸钼脲, 怦蝠弪� � <b砧痤痤>." )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 421)
	MisBeginCondition(NoRecord, 422)
	MisBeginCondition(NoRecord, 423)
	MisBeginCondition(NoMission, 421)
	MisBeginCondition(NoMission, 422)
	MisBeginCondition(NoMission, 423)
	MisBeginAction(AddMission, 422)
	MisCancelAction(ClearMission, 422)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 蝾疸钼鲥� 砧痤痤 � (2331, 2821)")
	
	MisHelpTalk("翁�! 项麇祗 螓 妁� 玟羼�! 湾箧咫� 蝈徨 礤 桧蝈疱耥�? 砧痤痤 皴轺囫 � 鲤沐眚�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------白银交易所
	DefineMission( 445, "皱眚� 蝾疸钼腓 鲤沐眚�", 422, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>饮 躅麇 猁螯 塍鼬桁 蝾疸钼鲥�?<n><t>疹痤! � 蜞� � 珥嚯.")
	MisResultCondition(NoRecord, 422)
	MisResultCondition(HasMission, 422 )
	MisResultAction(ClearMission, 422 )
	MisResultAction(SetRecord, 422 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)



----------------------------出海交易
	DefineMission( 446, "填瘃赅� 蝾疸钼��", 423 )
	
	MisBeginTalk( "<t>袜觐礤�-蝾 螓 玟羼�! � 戾�� 耠铈桦桉� 躅痤� 铗眍龛� � <b砧痤痤>, 蝾疸钼鲥� 桤 <p鲤沐眚�>. � 镱耠邃眄� 怵屐�, 铐 玎戾眢弪 耱箐屙蝾� 磬 珥囗桢 祛瘃觐� 蝾疸钼腓.<n><t>篷腓 蝈徨 桧蝈疱耥� 箸磬螯 镱犷朦 � 祛瘃觐� 蝾疸钼脲, 怦蝠弪� � <b砧痤痤>." )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 421)
	MisBeginCondition(NoRecord, 422)
	MisBeginCondition(NoRecord, 423)
	MisBeginCondition(NoMission, 421)
	MisBeginCondition(NoMission, 422)
	MisBeginCondition(NoMission, 423)
	MisBeginAction(AddMission, 423)
	MisCancelAction(ClearMission, 423)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 蝾疸钼鲥� 砧痤痤 � (2331, 2821)")
	
	MisHelpTalk("翁�! 项麇祗 螓 妁� 玟羼�! 湾箧咫� 蝈徨 礤 桧蝈疱耥�? 砧痤痤 皴轺囫 � 鲤沐眚�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------出海交易
	DefineMission( 447, "填瘃赅� 蝾疸钼��", 423, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>饮 躅麇 猁螯 塍鼬桁 蝾疸钼鲥�?<n><t>疹痤! � 蜞� � 珥嚯.")
	MisResultCondition(NoRecord, 423)
	MisResultCondition(HasMission, 423 )
	MisResultAction(ClearMission, 423 )
	MisResultAction(SetRecord, 423 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------被袭的剑士
	DefineMission( 448, "体黜桕, 镱镟怿栝 � 玎襦潴", 424)
	
	MisBeginTalk( "<t>� 犷驽!<n><t>泥驽 <b叔眚囵�> 猁� 蝠噔扈痤忄� 祛眈蝠铎 桤 <p青狃铠屙睇� 剜躜>.<n><t>体�� 钺羼镱觐桦� 耔蝮圉�� � 躜圊. 湾 祛� 猁 螓 铗镳噔栩� � <p青狃铠屙睇� 剜躜�> � 镳钼屦栩� 钺耱囗钼牦?" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 424)
	MisBeginCondition(NoMission, 424)
	MisBeginAction(AddMission, 424)
	MisCancelAction(ClearMission, 424)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 叔眚囵� � (1894, 2798)")
	
	MisHelpTalk("朽� 箧 镱钺妁嚯, 桎� 蝈镥瘘.")
	MisResultCondition(AlwaysFailure )

-----------------------------------被袭的剑士
	DefineMission( 449, "体黜桕, 镱镟怿栝 � 玎襦潴", 424, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>� 耠篦嚅眍 疣珙珉桦 祗� � 躜圊 � 镱塍麒� 蝠噔祗.<n><t>义镥瘘 祛� 疣磬 玎骅豚.")
	MisResultCondition(NoRecord, 424)
	MisResultCondition(HasMission, 424 )
	MisResultAction(ClearMission, 424 )
	MisResultAction(SetRecord, 424 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------穿越赖安森林
	DefineMission( 450, "襄疱皴麇龛�", 425)
	
	MisBeginTalk( "<t>物囫睇� 耋耱忄 玎蜞桦桉� 铌铍� 镥疱躅溧 麇疱� <p理滂轳觇� 隋�> � <p锣脬嚯塍>. 添钽桢 膻滂 礤 痂耜簋� 桎蜩 蝮溧.<n><t>皖 祛� 覃� 镳钼钿栩 蜞� 桉耠邃钼囗��. 项驵脲� 戾��, 耱囵簋 驽睐桧�, � 镥疱溧� 镱耠囗桢 祛屐� 覃眢 <b锣嚯�>.<n><t>骂� 猁 铐 忮痦箅�� � 磬忮耱桦 戾��." )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 425)
	MisBeginCondition(NoMission, 425)
	MisBeginAction(AddMission, 425)
	MisCancelAction(ClearMission, 425)
		
	MisNeed(MIS_NEED_DESP, "襄疱溧轵� 镱耠囗桢 锣嚯� � (1136, 2778)")
	
	MisHelpTalk("湾 躅蝈腩顸 猁 蝈�� 蝾痤镨螯, 眍 塍鼬� 猁 锣嚯� 镱塍麒� 祛� 镱耠囗桢 赅� 祛骓� 猁耱疱�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------穿越赖安森林
	DefineMission( 451, "襄疱皴麇龛�", 425, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>填� 爨爨 蜞� 耜噻嚯�? 毋�, 镱躅驽 � 耠桫觐� 玎疣犷蜞腭�.")
	MisResultCondition(NoRecord, 425)
	MisResultCondition(HasMission, 425 )
	MisResultAction(ClearMission, 425 )
	MisResultAction(SetRecord, 425 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------迷宫悬案
	DefineMission( 452, "青汔潢� 豚徼痂眚�", 426)
	
	MisBeginTalk( "<t><p隋潲睃> 觐沅�-蝾 猁豚 忸聃栩栩咫�, 眍 赅戾眄 耱痼牝箴� 耦 怵屐屙屐 耱嚯� 疣琊篪囹�.<n><t> 泥 妁� � 祛眈蝠� 玎忮腓顸 镱� 徉彘, � 溧驽 耱嚯� 镳铒噤囹� 膻滂. <b锑耋>, 祛磬瘐� 隋潲龛 眢驽� 祛� 覃�, 锣嚯�, 黩钺� 疣耨脲漕忄螯 � 溴腩. 皖 祛� 覃� 玎��� 桉耠邃漕忄龛�扈.<n><t>饮 祛驽 镥疱溧螯 <b锑耋>, 黩钺� 铐 镱桉赅� 觐泐-蝾 漯筱钽�?" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 426)
	MisBeginCondition(NoMission, 426)
	MisBeginAction(AddMission, 426)
	MisCancelAction(ClearMission, 426)
		
	MisNeed(MIS_NEED_DESP, "襄疱溧轵� 镨顸祛 锑耋 � (1346, 451)")
	
	MisHelpTalk("填磬瘐 隋潲龛 - 锑�, 怦� 妁� 驿弪 祛� 铗忮�. 项驵塍轳蜞, 礤 玎耱噔��� 邈� 驿囹� 耠桫觐� 漕脬�.")
	MisResultCondition(AlwaysFailure )

-----------------------------------迷宫悬案
	DefineMission( 453, "青汔潢� 豚徼痂眚�", 426, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>朽� 箧 锣嚯� 礤 耢铈弪, 祉� 镳桎弪�� 磬轵� 觐泐-蝾 漯筱钽�.<n><t>扬囫栳�, 黩� 镥疱溧� 镨顸祛.")
	MisResultCondition(NoRecord, 426)
	MisResultCondition(HasMission, 426 )
	MisResultAction(ClearMission, 426 )
	MisResultAction(SetRecord, 426 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------废矿探究
	DefineMission( 454, "锐耠邃钼囗桢 躜", 427)
	
	MisBeginTalk( "<t>青狃铠屙睇� 剜躜� 忸珉� 鲤沐眚� 镱躅骅 磬 镱溏屐睇� 豚徼痂眚.<n><t>� 蝈麇龛� 漕脬桴 脲� 蜞� 疣玮桦桉� 眍恹� 纛痨� 骅珥�.<n><t>填驽� 猁螯, 螓 磬殇屮� 蜞� 镳铗桠龛觐� 镱 潴. 蠕� � 磬殇� <b灭邈�> � <p青狃铠屙睇� 躜圊>, 铐 疣耨赅驽� 磬祉钽� 犷朦 钺 铎 戾耱�." )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 427)
	MisBeginCondition(NoMission, 427)
	MisBeginAction(AddMission, 427)
	MisCancelAction(ClearMission, 427)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 灭邈铎 (1883, 2805)")
	
	MisHelpTalk("� 潴爨� 蝈徨 镱眇噔栩� 桉耠邃钼囹� 豚徼痂眚� 青狃铠屙睇� 剜躜. 项蝾痤镨顸!")
	MisResultCondition(AlwaysFailure )

-----------------------------------废矿探究
	DefineMission( 455, "锐耠邃钼囗桢 躜", 427, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>朽� <b翔蝈�> 蝈�� 磬镳噔桦, � 礤 耦祉邂帼顸, 黩� 螓 耧疣忤��.<n><t>项犭嚆钿囵� 邈�.")
	MisResultCondition(NoRecord, 427)
	MisResultCondition(HasMission, 427 )
	MisResultAction(ClearMission, 427 )
	MisResultAction(SetRecord, 427 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------瓦萨法尔的危机
	DefineMission( 456, "署桤桉 锣嚯�", 428)
	
	MisBeginTalk( "<t>项麇祗 蜞� 漕脬�?!<n><t>填� 漕痤泐� <b锣嚯�> 玎龛爨弪�� 桉耠邃钼囗��扈 � <p锣脬嚯脲>. 皖 铐 镱蝈��� 怦� 疋铊 桧耱痼戾眚� 镱 漕痤沐.<n><t>项祛驽 祉� 镥疱溧螯 � 忮 屐� � 玎钿眍 镳钼屦栩�, 赅� � 礤泐 溴豚?" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 428)
	MisBeginCondition(NoMission, 428)
	MisBeginAction(AddMission, 428)
	MisCancelAction(ClearMission, 428)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 锣嚯铋 � (1136, 2778)")
	
	MisHelpTalk("项耧屮�, 镱驵塍轳蜞! 蒡� 忸镳铖 骅珥� � 耢屦蜩.")
	MisResultCondition(AlwaysFailure )

-----------------------------------瓦萨法尔的危机
	DefineMission( 457, "署桤桉 锣嚯�", 428, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>骂溧...骂溧...栗...义镥瘘 祉� 塍鼬�.<n><t>扬囫栳�!添� 耱囗弪 妁� 塍鼬� 镱耠� 蝾泐, 赅� � 铗漕蹴�.")
	MisResultCondition(NoRecord, 428)
	MisResultCondition(HasMission, 428 )
	MisResultAction(ClearMission, 428 )
	MisResultAction(SetRecord, 428 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------神秘发现
	DefineMission( 458, "青汔漕黜铄 铗牮桢", 429)
	
	MisBeginTalk( "<t>蓍, � 耠篦嚅眍 磬� 赅痱� 青礻� 隋潲龛 镱赅 桤篦嚯 � 觏桡�.<n><t>秒噔� 隋潲龛, <b绣轫�> 狍溴� 疣� 忡汶�眢螯 磬 礤�. 饮 祛驽 屐� 镥疱溧螯?" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 429)
	MisBeginCondition(NoMission, 429)
	MisBeginAction(AddMission, 429)
	MisCancelAction(ClearMission, 429)
		
	MisNeed(MIS_NEED_DESP, "襄疱溧轵� 镱耠囗桢 汶噔� 隋潲龛 绣轫� � (1294, 498)")
	
	MisHelpTalk("项驵塍轳蜞, 铗礤耔 � 秒噔� 隋潲龛 - 绣轫�. 蒡� 铟屙� 忄骓�!")
	MisResultCondition(AlwaysFailure )

-----------------------------------神秘发现
	DefineMission( 459, "青汔漕黜铄 铗牮桢", 429, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>蒡� 箐桠栩咫铄 铗牮桢! 扬囫栳� 玎 镱祛!")
	MisResultCondition(NoRecord, 429)
	MisResultCondition(HasMission, 429 )
	MisResultAction(ClearMission, 429 )
	MisResultAction(SetRecord, 429 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------废矿迷宫
	DefineMission( 460, "肃徼痂眚� 躜", 430)
	
	MisBeginTalk( "<t>青狃铠屙睇� 剜躜� 忸珉� 鲤沐眚� 镱躅骅 磬 镱溏屐睇� 豚徼痂眚.<n><t>� 蝈麇龛� 漕脬桴 脲� 蜞� 疣玮桦桉� 眍恹� 纛痨� 骅珥�.<n><t>填驽� 猁螯, 螓 磬殇屮� 蜞� 镳铗桠龛觐� 镱 潴. 蠕� � 磬殇� <b灭邈�> � <p青狃铠屙睇� 剜躜圊>, 铐 疣耨赅驽� 磬祉钽� 犷朦 钺 铎 戾耱�." )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 430)
	MisBeginCondition(NoMission, 430)
	MisBeginAction(AddMission, 430)
	MisCancelAction(ClearMission, 430)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 灭邈铎 � (1883, 2805)")
	
	MisHelpTalk("� 潴爨� 蝈徨 镱眇噔栩�� 桉耠邃钼囹� 豚徼痂眚� 青狃铠屙睇� 剜躜. 项蝾痤镨顸!")
	MisResultCondition(AlwaysFailure )

-----------------------------------废矿迷宫
	DefineMission( 461, "肃徼痂眚� 躜", 430, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>泥, <b捏痂囗> 疱觐戾礓钼嚯 蝈��. � 祛泱 镱潲耜囹� 潆� 蝈�� 疣犷蝮.")
	MisResultCondition(NoRecord, 430)
	MisResultCondition(HasMission, 430 )
	MisResultAction(ClearMission, 430 )
	MisResultAction(SetRecord, 430 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------寻觅人才
	DefineMission( 462, "项桉觇 蜞豚眚�", 431)
	
	MisBeginTalk( "<t>橡桠弪. 填� 漯筱 <b描溴痂�> 棂弪 铗忮蝰蜮屙眍泐 麇腩忮赅 潆� 疣犷螓 � <p锣脬嚯脲>. 项耜铍� 铐 漕忮痂� 祉� � 玎溧龛�, � 邈� 礤 镱溻邃�.<n><t>湾耢铗�� 磬 �, � 镱疱觐戾礓簋 蝈��. 亦� 狍溴� 祉钽� 耔朦睇� 祛犷�. 饮 泐蝾�?" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 431)
	MisBeginCondition(NoMission, 431)
	MisBeginAction(AddMission, 431)
	MisCancelAction(ClearMission, 431)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 描溴痂屐 � (1123, 2766)")
	
	MisHelpTalk("描溴痂� 箧� 驿弪, 镱驵塍轳蜞, 镱耧屮�!")
	MisResultCondition(AlwaysFailure )

-----------------------------------寻觅人才
	DefineMission( 463, "项桉觇 蜞豚眚�", 431, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>� 猁� 筲屦屙, 黩� 螓 耧疣忤��, 镱耜铍� 离赅� 镱疱觐戾礓钼嚯 蝈��.<n><t>� 溧� 蝈徨 襦禧 忄骓 玎溧龛�, 觐蝾瘥� 蝾朦觐 忸珥桕眢�.")
	MisResultCondition(NoRecord, 431)
	MisResultCondition(HasMission, 431 )
	MisResultAction(ClearMission, 431 )
	MisResultAction(SetRecord, 431 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------迷宫探究
	DefineMission( 464, "锐耠邃钼囗桢 豚徼痂眚�", 432)
	
	MisBeginTalk( "<t>填� 漯筱, � 忤骟, 黩� 玟屮龛� 祛眈蝠� 犷朦 礤 镳铗桠龛觇 蝈徨. 项麇祗 猁 蝈徨 礤 铗镳噔栩� � <p隋潲睃>?<n><t>填磬瘐 隋潲龛 <b绣轫�> 皴轺囫 磬徼疣弪 犷轹钼 潆� 蝾泐, 黩钺� 疣珙狃囹� � 筱痤珙� 祛眈蝠钼, 觐蝾瘥� 玎镱腩龛腓 泐痤�.<n><t>篷腓 躅麇, � 磬镨 疱觐戾礓囹咫铄 镨顸祛." )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 432)
	MisBeginCondition(NoMission, 432)
	MisBeginAction(AddMission, 432)
	MisCancelAction(ClearMission, 432)
		
	MisNeed(MIS_NEED_DESP, "项泐忸痂蝈 � 汶噔铋 隋潲龛 绣轫� � (1294, 498)")
	
	MisHelpTalk("� 潴爨�, 黩� 螓 漕耱囹铟眍 耔脲� 黩钺� 耩噫囹� � 祛眈蝠囔� � <p隋潲龛>! 蠕� 驽 怙屦邃 � 镳铖豚恻��!")
	MisResultCondition(AlwaysFailure )

-----------------------------------迷宫探究
	DefineMission( 465, "锐耠邃钼囗桢 豚徼痂眚�", 432, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>湾耢铗�� 磬 蝾, 黩� 蝈�� 疱觐戾礓钼嚯 襦� <b求疳�>, 羼腓 螓 礤 镱漉钿桫�, � 戾�� 礤� 漯筱钽� 忄痂囗蜞, 赅� 铗镳噔栩� 蝈�� 钺疣蝽�.")
	MisResultCondition(NoRecord, 432)
	MisResultCondition(HasMission, 432 )
	MisResultAction(ClearMission, 432 )
	MisResultAction(SetRecord, 432 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------绝地逢生
	DefineMission( 466, "项赅 禧 礤 怦蝠弪桁��", 433)
	
	MisBeginTalk( "<t>央噔� 令汔�! 填� 漯筱 <b疹躅> 耋戾� 桤徨驵螯 耢屦蜩 镱耠� 蝾泐 赅� <r骂桧 殃咫弪钼> 镳铐玷� 邈� 疋铄� 赅蜞眍�. <n><t>� 猁 磬忮耱桦 邈�, 眍 箧囫睇� 祛眈蝠� � <p铃疱汔 殃咫弪钼> 铖蜞磬怆桠帼� 戾��.<n><t>愉痼骅 祉� � 磬忮耱� <b疹躅> 铗 祛邈� 桁屙�." )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 433)
	MisBeginCondition(NoMission, 433)
	MisBeginAction(AddMission, 433)
	MisCancelAction(ClearMission, 433)
		
	MisNeed(MIS_NEED_DESP, "襄疱溧轵� 镱耠囗桢 潆� 疹躅 � (2142, 556)")
	
	MisHelpTalk("项驵塍轳蜞, 狍潼 铖蝾痤驽�, 蜞� 祉钽� 耜咫弪钼!")
	MisResultCondition(AlwaysFailure )

-----------------------------------绝地逢生
	DefineMission( 467, "项赅 禧 礤 怦蝠弪桁��", 433, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>令朦� 耧囫栳�! 添钽桢 祛� 漯箸�� 猁腓 耠桫觐� 磬矬汔睇, 黩钺� 磬忮耱栩� 戾��, 镱耠� 蝾泐, 赅� � 颃溧 镥疱狃嚯��.")
	MisResultCondition(NoRecord, 433)
	MisResultCondition(HasMission, 433 )
	MisResultAction(ClearMission, 433 )
	MisResultAction(SetRecord, 433 )
	MisResultAction(AddExp, 3500, 3500)
	MisResultAction(AddMoney, 1000, 1000)

----------------------------东方导师
	DefineMission( 468, "骂耱铟睇� 篦栩咫�", 434)
	
	MisBeginTalk( "<t>Dear adventurer! I have been looking for my teacher, <bMaster Kerra>, for many years around Skeleton Haven but to no avail. Recently, I heard that she has moved to <pIcespire Haven>.<n><t>If you are going there, can you tell her that I have already acquired the \"Heart of Will\"?" )
	MisBeginCondition( LvCheck, ">", 39 )
	MisBeginCondition(NoRecord, 434)
	MisBeginCondition(NoMission, 434)
	MisBeginAction(AddMission, 434)
	MisCancelAction(ClearMission, 434)
		
	MisNeed(MIS_NEED_DESP, "项棂栩� 锑耱屦� 叔痼 � (2664, 654)")
	
	MisHelpTalk("蠕� 磬 骂耱铌 � 螓 磬殇屮� 隋��眍� 罔�. 蒡� 狍溴� 铒囫睇� 矬螯, 眍 � 忮瘙, 黩� 蜮�� 疱祛耱� 镳孱漕脲弪 怦� 镳邈疣潲.")
	MisResultCondition(AlwaysFailure )

-----------------------------------东方导师
	DefineMission( 469, "骂耱铟睇� 篦栩咫�", 434, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>扬囫栳�, 黩� 磬忮耱桦. 项躅驽, 祛� 膻徼禧� 篦屙桕 磬觐礤�-蝾 镳铠咫 钺篦屙桢!")
	MisResultCondition(NoRecord, 434)
	MisResultCondition(HasMission, 434 )
	MisResultAction(ClearMission, 434 )
	MisResultAction(SetRecord, 434 )
	MisResultAction(AddExp, 6000, 6000)	
	MisResultAction(AddMoney, 1000, 1000)


----------------------------医生改行
	DefineMission( 470, "如戾礤龛� 戾耱铒铍铈屙��", 435)
	
	MisBeginTalk( "<t>�, 犷驽! 填驽 祉� 镱祛鼽? 填� 皴耱疣, <b念牝铕 - 阻忸>, 觐沅�-蝾 骅豚 � 剜轵囗�. 湾溧忭�, 铐� 镥疱艴嚯� � <p锗脘彘耜栝 物腩�>, 眍 � 戾耱� 赅觐�-蝾 桤铍桊钼囗眍�, 蜞� 溧驽 礤� 忸潲!<n><t>湾 祛� 猁 螓 磬忮耱栩� 邋 铗 祛邈� 桁屙�?" )
	MisBeginCondition( LvCheck, ">", 44 )
	MisBeginCondition(NoRecord, 435)
	MisBeginCondition(NoMission, 435)
	MisBeginAction(AddMission, 435)
	MisCancelAction(ClearMission, 435)
		
	MisNeed(MIS_NEED_DESP, "袜忮耱栩� 念牝铕� 阻忸 � (630, 2091)")
	
	MisHelpTalk("锗脘彘耜栝 物腩� 黧螯 礤� 灭铎钽疣溧.")
	MisResultCondition(AlwaysFailure )

-----------------------------------医生改行
	DefineMission( 471, "如戾礤龛� 戾耱铒铍铈屙��", 435, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>锗踵! 填� 狃囹 膻徼� 耦忄螯 眍� � 黧骅� 溴豚. 族耱眍 泐忸��, 祉� 玟羼� 眇噔栩��.")
	MisResultCondition(NoRecord, 435)
	MisResultCondition(HasMission, 435 )
	MisResultAction(ClearMission, 435 )
	MisResultAction(SetRecord, 435 )
	MisResultAction(AddExp, 10000, 10000)	
	MisResultAction(AddMoney, 1100, 1100)


----------------------------雷霆海军
	DefineMission( 472, "噪铗 灭铎钽疣溧", 436)
	
	MisBeginTalk( "<t>� 耠嚯, 黩� � <p灭铎钽疣溴> 磬龛爨 桉赅蝈脲� 镳桕膻麇龛�. 亦�, 磬忮痦铄, 祉钽� 桧蝈疱耥 玎溧龛� 潆� 蝈��.<n><t>� 祛泱 镱疱觐戾礓钼囹� 蝈�� 枢镨蜞眢 羊疣骅 <b锑腚嚓�>, 羼腓 躅麇." )
	MisBeginCondition( LvCheck, ">", 49 )
	MisBeginCondition(NoRecord, 436)
	MisBeginCondition(NoMission, 436)
	MisBeginAction(AddMission, 436)
	MisCancelAction(ClearMission, 436)
		
	MisNeed(MIS_NEED_DESP, "埋蝠弪羼� � 锑腚嚓铎 � 灭铎钽疣溴 � (706, 1465)")
	
	MisHelpTalk("项忮瘘 祉�. 篷腓 螓 镱殇屮� � 灭铎钽疣� 镳�祛 皴轺囫, 螓 祛驽 耱囹� 铘桷屦铎.")
	MisResultCondition(AlwaysFailure )

-----------------------------------雷霆海军
	DefineMission( 473, "噪铗 灭铎钽疣溧", 436, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>橡桠弪, 螓 躅麇 玟羼� 玎牮屣栩�?<n><t>铃� 镳钺脲�! 翌朦觐 玎镱祉�, 礤 磬痼� 镳噔桦�.")
	MisResultCondition(NoRecord, 436)
	MisResultCondition(HasMission, 436 )
	MisResultAction(ClearMission, 436 )
	MisResultAction(SetRecord, 436 )
	MisResultAction(AddExp, 16000, 16000)
	MisResultAction(AddMoney, 1200, 1200)


----------------------------森林深处
	DefineMission( 474, "酿屐篦栝-镳邃疱祗麒� 脲�", 437)
	
	MisBeginTalk( "<t>� 漯屐篦屐 脲耋 礼赅痤磬 祉钽� 疣珥 镫屐屙. 武桧 祛� 镳��蝈朦 - 羊囵桕 暑忮�, 铖蜞眍忤腭� 礤镱溧脲牦 铗 <p吾栩咫� 朽漕耱�>. 雾 鬣耱� 弪 祉� 镨顸爨, 镳铖栩, 黩钺� � 邈� 磬忮耱桦.<n><t>皖 � 礤 祛泱 铖蜞忤螯 疋铪 疣犷蝮. 饮 礤 祛� 猁 磬忮耱栩� 邈� 铗 祛邈� 桁屙�?" )
	MisBeginCondition( LvCheck, ">", 54 )
	MisBeginCondition(NoRecord, 437)
	MisBeginCondition(NoMission, 437)
	MisBeginAction(AddMission, 437)
	MisCancelAction(ClearMission, 437)
		
	MisNeed(MIS_NEED_DESP, "袜忮耱栩� 羊囵桕� 暑忮磬 � (529, 2458)")
	
	MisHelpTalk("扬囫栳� 蝈徨, 漯筱. 填驽 铗镳噔栩� � <p吾栩咫� 朽漕耱�> 觐沅� 狍溴 疋钺钿屙.")
	MisResultCondition(AlwaysFailure )

-----------------------------------森林深处
	DefineMission( 475, "酿屐篦栝-镳邃疱祗麒� 脲�", 437, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>扬囫栳� 玎 忤玷�. 湾 祛泱 镱忮痂螯, 黩� 杨眄� 漕 耔� 镱� 戾�� 镱祉栩.")
	MisResultCondition(NoRecord, 437)
	MisResultCondition(HasMission, 437 )
	MisResultAction(ClearMission, 437 )
	MisResultAction(SetRecord, 437 )
	MisResultAction(AddExp, 25000, 25000)
	MisResultAction(AddMoney, 1300, 1300)




----------------------------------------
--                                    --
--        加勒比海盗普通任务          --
--                                    --
----------------------------------------

-- 灵顿将军 >> 司令的牢骚

	DefineMission(476, "湾漕忸朦耱忸 暑爨礓桊�", 438)

	MisBeginTalk("<t>暑爨礓簋� 綦铗铎 灭铎钽疣溧 蝾朦觐 黩� 镳桕噻嚯 祉� 忮痦篁� 钺疣蝽�.<n><t>皖, 忖桎� 钺耱��蝈朦耱�, � 礤 耢钽� 襦� 漕狃囹� 蝮溧. 饮 猁 礤 祛� � 皲咫囹� 玎 戾��?<n><t>泥, 忮痦桉� � 镳钼屦� 耱囵桕� � 耦钺 祉� � 疱珞朦蜞蜞�.")
	MisBeginCondition(NoRecord, 438)
	MisBeginCondition(NoMission,438)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 438)
	MisCancelAction(ClearMission, 438)
	MisHelpTalk("<t>饮 怦� 妁� 玟羼�? 畦忮�!")

	MisNeed(MIS_NEED_DESP, "念觌噤 潆� 暑爨礓簋泐 噪铗铎 灭铎钽疣溧 铗 桁屙� 洛腓磴蝾磬")

	MisResultCondition(AlwaysFailure)

-- 雷霆堡海军司令 >> 司令的牢骚
	DefineMission(477,"湾漕忸朦耱忸 暑爨礓桊�",438,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>熙, 珥圜栩 洛腓磴蝾� 礤 耢铈弪 襦� 镳桎蜩. 青狍潼.")

	MisResultCondition(HasMission, 438)
	MisResultCondition(NoRecord, 438)
	MisResultCondition(HasNavyGuild)

	MisResultAction(ClearMission, 438)
	MisResultAction(SetRecord, 438)

	
-- 雷霆堡海军司令 >> 司令的秘密
	DefineMission(478, "彦牮弪 觐爨礓簋泐", 439)

	MisBeginTalk("<t>如-玎 蝾泐, 黩� 洛腓磴蝾� 礤 耢钽 镳桎蜩 襦�, 镱驵塍轳蜞, 漕耱噔� 屐� � 镨顸祛.<n><t>青镱祉�, 镨顸祛 漕腈眍 猁螯 � 耦躔囗眍耱�, 蜞� 赅� 铐� 铖钺铋 忄骓铖蜩!")
	MisBeginCondition(HasRecord, 438)
	MisBeginCondition(NoRecord, 439)
	MisBeginCondition(NoMission,439)
	MisBeginCondition(HasNavyGuild)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 439)
	MisBeginAction(GiveItem, 2430, 1, 4)
	MisCancelAction(ClearMission, 439)
	MisHelpTalk("<t>饮 怦� 妁� 玟羼�? 畦忮�!")
	MisNeed(MIS_NEED_DESP, "念耱噔� 镨顸祛 洛腓磴蝾眢 铗 暑爨礓簋泐 綦铗铎")

	MisResultCondition(AlwaysFailure)

-- 灵顿将军 >> 司令的秘密

	DefineMission(479,"彦牮弪 觐爨礓簋泐",439,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>亦� 珥圜栩 � 镳桕噻 铗 觐爨礓簋泐? 项躅驽, 磬� 镳桎弪�� 黩�-蝾 镳桎箪囹�.<n><t>杨脘囹, 铗漕蹴� 耧屦忄. 西屙� 耜铕� � 磬� 狍溴� 祉钽� 溴�.")

	MisResultCondition(HasMission, 439)
	MisResultCondition(NoRecord, 439)

	MisResultCondition(HasItem, 2430,1 )
	MisResultCondition(HasNavyGuild)

	MisResultAction(ClearMission, 439)
	MisResultAction(TakeItem, 2430,1 )
	MisResultAction(SetRecord, 439)
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 25000, 25000)


-- 灵顿将军 >> 海军的武器

	DefineMission(480, "骂铕箧屙桢 噪铗�", 440)

	MisBeginTalk("<t>饮 泐蝾�? 翌沅� 忭桁囹咫� 耠篪嚅.<n><t>悟 腓鲟 觐爨礓簋泐 � 镳桕噻帼 蝈徨 镳铐桕眢螯 磬 徉珞 礤镳��蝈�� � 筢栩� 礤耜铍� 体痱恹� 捏�. 橡桧羼� 祉� 5 捏�, 赅� 漕赅玎蝈朦耱忸.")

	MisBeginCondition(HasRecord, 439)
	MisBeginCondition(NoMission, 440)
	MisBeginCondition(NoRecord, 440)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 440)
	MisBeginAction(AddTrigger, 4401, TE_GETITEM, 2386, 5)

	MisNeed(MIS_NEED_ITEM, 2386, 5, 10, 5)

	MisCancelAction(ClearMission, 440)
	
	MisHelpTalk("<t>饮 妁� 礤 耦狃嚯 5 潴�? 项徨溧 犭桤赅!")
	
	MisResultTalk("<t>湾镫铛�, 玟羼� 怦�, 黩� 眢骓�. 填驽� 蝈徨 镳桉铄滂龛螯�� � 磬� 踵踵! 亦� � 耠钼�, 礤 忸腠箝��.")

	MisResultCondition(HasMission, 440)
	MisResultCondition(NoRecord, 440)
	MisResultCondition(HasItem, 2386, 5)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem, 2386, 5)
	MisResultAction(ClearMission, 440)
	MisResultAction(SetRecord, 440)
	MisResultAction(AddExp, 250000, 250000)
	MisResultAction(AddMoney, 150000, 150000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2386)
	TriggerAction(1, AddNextFlag, 440, 10, 5)
	RegCurTrigger(4401)

-- 灵顿将军 >> 海军秘籍
	
	DefineMission(481,"玉蜞� 噪铗�",441)

	MisBeginTalk("<t>项耠� 镱耠邃龛� 铒屦圉栝, 忸屙磬� 祛 体痱恹� 捏� 耔朦眍 耥桤桦囫�.<n><t>� 蝾驽 襦祛� 怵屐�, 禧 疣琊噌铗嚯� 礤耜铍� 耱疣蝈汨� 镳铗桠 龛� � 玎镨襦腓 桴 � 耧弼栲朦眢� 觏桡�. 皖 礤溧忭� 铐� 猁豚 箨疣溴磬 桀磬扈 囵扈� 体痱恹� 捏�. 蒡� ��驽臌� 箐囵 潆� 磬�!<n><t>� 躅黧, 黩钺� 螓 镳铐桕 磬 桴 祛瘃牦� 徉珞 � 耱帙桦 怦� 8 耱疣龛� 翌爨. 泥 � 妁�, 漕耱囗� 祉� 耋镥痍脲� 铗 暑爨礓桊� 体痱恹� 捏�.<n><t>� 礤 忸玮疣轳�, 羼腓 � 蝈�� 麇泐-蝾 狍溴� 礤 踱囹囹�!")


	MisBeginCondition(HasRecord, 440)
	MisBeginCondition(NoRecord, 441)
	MisBeginCondition(NoMission, 441)

	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 441)

	MisBeginAction(AddTrigger, 4411, TE_GETITEM, 2388, 1)
	MisBeginAction(AddTrigger, 4412, TE_GETITEM, 2389, 1)
	MisBeginAction(AddTrigger, 4413, TE_GETITEM, 2390, 1)
	MisBeginAction(AddTrigger, 4414, TE_GETITEM, 2391, 1)
	MisBeginAction(AddTrigger, 4415, TE_GETITEM, 2392, 1)
	MisBeginAction(AddTrigger, 4416, TE_GETITEM, 2393, 1)
	MisBeginAction(AddTrigger, 4417, TE_GETITEM, 2394, 1)
	MisBeginAction(AddTrigger, 4418, TE_GETITEM, 2395, 1)
	MisBeginAction(AddTrigger, 4419, TE_GETITEM, 2441, 1)

	MisNeed(MIS_NEED_ITEM, 2388, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2389, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 2390, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 2391, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 2392, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2393, 1, 60, 1)
	MisNeed(MIS_NEED_ITEM, 2394, 1, 70, 1)
	MisNeed(MIS_NEED_ITEM, 2395, 1, 80, 1)
	MisNeed(MIS_NEED_ITEM, 2441, 1, 90, 1)

	MisCancelAction(ClearMission, 441)

	MisHelpTalk("<t>帖 礤 祛驽� 镱玮铍栩� 磬� 怵嚆囔 箸磬螯 磬 耱疣蝈汨� 桤 翌爨!")
	
	MisResultTalk("<t>蒡�...蒡� 怦�...饮 溴轳蜮栩咫� 磬� 沐痤�!<n><t>湾忮痤�蝽�! 泥驽 耠钼 礤 踱囹噱�, 黩钺� 镥疱溧螯 祛� 疣漕耱�, 添� 眢骓� 篑镱觐栩�...疹痤...蒡� 蜮�� 磬沭噤�, 玎徼疣�.")

	MisResultCondition(HasMission, 441)
	MisResultCondition(NoRecord, 441)
	MisResultCondition(HasItem, 2388, 1)
	MisResultCondition(HasItem, 2389, 1)
	MisResultCondition(HasItem, 2390, 1)
	MisResultCondition(HasItem, 2391, 1)
	MisResultCondition(HasItem, 2392, 1)
	MisResultCondition(HasItem, 2393, 1)
	MisResultCondition(HasItem, 2394, 1)
	MisResultCondition(HasItem, 2395, 1)
	MisResultCondition(HasItem, 2441, 1)
	MisResultBagNeed(1)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem, 2388, 1)
	MisResultAction(TakeItem, 2389, 1)
	MisResultAction(TakeItem, 2390, 1)
	MisResultAction(TakeItem, 2391, 1)
	MisResultAction(TakeItem, 2392, 1)
	MisResultAction(TakeItem, 2393, 1)
	MisResultAction(TakeItem, 2394, 1)
	MisResultAction(TakeItem, 2395, 1)
	MisResultAction(TakeItem, 2441, 1)

	MisResultAction(ClearMission, 441)
	MisResultAction(SetRecord, 441)
	MisResultAction(AddExp, 500000, 500000)
	MisResultAction(AddMoney, 500000, 500000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2388)
	TriggerAction(1, AddNextFlag, 441, 10, 1)
	RegCurTrigger(4411)

	InitTrigger()
	TriggerCondition(1, IsItem, 2389)
	TriggerAction(1, AddNextFlag, 441, 20, 1)
	RegCurTrigger(4412)

	InitTrigger()
	TriggerCondition(1, IsItem, 2390)
	TriggerAction(1, AddNextFlag, 441, 30, 1)
	RegCurTrigger(4413)

	InitTrigger()
	TriggerCondition(1, IsItem, 2391)
	TriggerAction(1, AddNextFlag, 441, 40, 1)
	RegCurTrigger(4414)

	InitTrigger()
	TriggerCondition(1, IsItem, 2392)
	TriggerAction(1, AddNextFlag, 441, 50, 1)
	RegCurTrigger(4415)

	InitTrigger()
	TriggerCondition(1, IsItem, 2393)
	TriggerAction(1, AddNextFlag, 441, 60, 1)
	RegCurTrigger(4416)

	InitTrigger()
	TriggerCondition(1, IsItem, 2394)
	TriggerAction(1, AddNextFlag, 441, 70, 1)
	RegCurTrigger(4417)

	InitTrigger()
	TriggerCondition(1, IsItem, 2395)
	TriggerAction(1, AddNextFlag, 441, 80, 1)
	RegCurTrigger(4418)

	InitTrigger()
	TriggerCondition(1, IsItem, 2441)
	TriggerAction(1, AddNextFlag, 441, 90, 1)
	RegCurTrigger(4419)



-- 杰克史派罗 >> 求援
	DefineMission(482, "SOS", 442)

	MisBeginTalk("<t>� 漕腈屙 镳桤磬螯��, 黩� 囵扈� 体痱恹� 捏� 镳邂珙� 怦� 磬 铈桎囗��, 蜞� 黩� � 疱� 镱玮囹� 祛邈� 耱囵钽� 怵嚆�, 枢镨蜞磬 逆尻�, 磬 镱祛.<n><t>雾 皴轺囫 镳铈桠噱� 沅�-蝾 � 疣轭礤 锑汨麇耜钽� 铌遴磬. 填驽 蝮溧 胥铐�螯 铗 祛邈� 桁屙�? 剜眈� 礤忮腓觇, 眍 蝈� 礤 戾礤�.")
	MisBeginCondition(NoRecord, 442)
	MisBeginCondition(NoMission,442)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 442)
	MisCancelAction(ClearMission, 442)
	MisHelpTalk("<t>饮 蜞� � 礤 皲忤眢腭� � 戾耱�? 疹痤� 耧囹�!")

	MisNeed(MIS_NEED_DESP, "襄疱溧� 镳铖� � 镱祛 枢镨蜞眢 逆尻� � 锑汨麇耜铎 铌遴礤")

	MisResultCondition(AlwaysFailure)


-- 杰克船长 >> 求援

	DefineMission(483,"SOS",442,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>昨�! � 铐 铖戾腓腭� 镳铖栩� � 戾�� 镱祛? 伢蜩 黩铍�.<n><t>洛痦桉� � 镥疱溧� 屐�: 羼腓 屐� 眢骓� 祛� 镱祛, 矬耱� 耧屦忄 镱徨滂� 戾�� � 潴�!")

	MisResultCondition(HasMission, 442)
	MisResultCondition(NoRecord, 442)
	MisBeginCondition(HasPirateGuild)

	MisResultAction(ClearMission, 442)
	MisResultAction(SetRecord, 442)

-- 杰克船长 >> 杰克又见杰克
	DefineMission(484, "逆尻 镳铗桠 逆尻�", 443)

	MisBeginTalk("<t>蒡� 镨顸祛 � 玎溧龛屐, 觐蝾痤� 磬镨襦� � 襦�. 橡桧羼� 邈� 逆尻� 羊疱脲.<n><t>殃噫� 屐�, 黩� � 狍潴 邈� 驿囹� � 镟忤朦铐� � 镱腠铟� � 镱腠铍箜桢 忸顸祛泐 戾��鲟. ")
	MisBeginCondition(HasRecord, 442)
	MisBeginCondition(NoRecord, 443)
	MisBeginCondition(NoMission,443)
	MisBeginCondition(HasPirateGuild)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 443)

	MisCancelAction(ClearMission, 443)
	MisBeginAction(GiveItem, 2431, 1, 4)
	MisHelpTalk("<t>饮 蜞� � 礤 皲忤眢腭� � 戾耱�? 疹痤� 耧囹�!")

	MisNeed(MIS_NEED_DESP, "襄疱溧� 镨顸祛 枢镨蜞磬 逆尻� 逆尻� 羊疱脲")

	MisResultCondition(AlwaysFailure)


-- 杰克史派罗 >> 杰克又见杰克

	DefineMission(485,"逆尻 镳铗桠 逆尻�",443,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>蒗...项躅驽, 铐 磬� 礤 镱祛驽�. 帖 襦扈 黩�-龛狍潼 镳桎箪噱�.<n><t>义徨 镳桫腩顸 礤脲汴�. 悟漕蹴�.")

	MisResultCondition(HasItem,2431,1)
	MisResultCondition(HasMission, 443)
	MisResultCondition(NoRecord, 443)
	MisResultCondition(HasPirateGuild)

	MisResultAction(ClearMission, 443)
	MisResultAction(TakeItem,2431,1)
	MisResultAction(SetRecord, 443)
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 50000, 50000)

-- 杰克史派罗 >> 加勒比宝藏

	DefineMission(486, "枢痂狁觇� 耦牮钼棂�", 444)

	MisBeginTalk("<t>袜 务蝠钼� 殃咫弪钼 祉钽� 沭钺钼, 耦徼疣桴 潴 � 彦痄鲥 腻殁� 逆铙眈� 漕 耔� 镱� 铖蜞弪�� 耧��蜞眄 � 钿眍� 桤 龛�.<n><t>帖 祛汶� 猁 忸耧铍钼囹� 桁, 羼腓 猁 蝾朦觐 磬�. 饮 镱祛驽 磬� 铗赅螯 彦痄鲥 腻殁� 逆铙眈�?<n><t>蒡� 猁 溧腩 磬� 漕耱囹铟眍 耔�, 黩钺� 皲屦骅忄螯 磬蜩耜 囵扈� 体痱恹� 捏�.")

	MisBeginCondition(HasRecord, 443)
	MisBeginCondition(NoRecord, 444)
	MisBeginCondition(NoMission, 444)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 444)
	MisBeginAction(AddTrigger, 4441, TE_GETITEM, 2444, 1)

	MisNeed(MIS_NEED_ITEM, 2444, 1, 10, 1)
	MisCancelAction(ClearMission, 444)

	MisHelpTalk("<t>饮 妁� 礤 玎觐眵桦 耦徼疣螯? 项蝾痤镨顸!")

	MisResultTalk("<t>署篁�, 蝈镥瘘 � 戾�� 漕耱囹铟眍 溴礤�, 黩钺� 耦狃囹� 祛� 耦狁蜮屙眢� 镨疣蝰牦� 觐爨礓�.")

	MisResultCondition(NoRecord, 444)
	MisResultCondition(HasMission, 444)
	MisResultCondition(HasPirateGuild)
	MisResultCondition(HasItem,2444,1)

	MisResultAction(TakeItem, 2444, 1)
	MisResultAction(ClearMission, 444)
	MisResultAction(SetRecord, 444)

	MisResultAction(AddExp, 250000, 250000)
	MisResultAction(AddMoney, 150000, 150000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2444)
	TriggerAction(1, AddNextFlag, 444, 10, 1)
	RegCurTrigger(4441)

--铁匠 >> 圣柜
	
	DefineMission(487, "杨狃囗桢", 445)

	MisBeginTalk("<t>� 耠嚯 � 蜮铄� 祗驽耱忮眄铎 镱耱箫赍. 皖 礤 珥噱 腓 螓 镱麇祗 囹嚓� 囵扈� 体痱恹� 捏� 磬耱铍� 祛�?<n><t>� 蝈徨 耜噫�, � 镱蝾祗 黩� 铐� 耦徼疣 镳铌��螓� 祛礤螓. �, 觐礤黜�, 蝾黜� 礤 珥帼, 眍 � 蝾黜� 黩�-蝾 礤躅痤�.<n><t>篷腓 蝈徨 桧蝈疱耥�, 恹徨� 40 祛礤� � 1 玎镟麝囗眢� 牮钼 祛礤蝮. �, 祛驽�, 耢钽� 疣琊篪栩� 玎觌�蜩�.")

	MisBeginCondition(HasRecord, 444)
	MisBeginCondition(NoRecord, 445)
	MisBeginCondition(NoMission, 445)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 445)
	MisBeginAction(AddTrigger, 4451, TE_GETITEM, 2427, 1)
	MisBeginAction(AddTrigger, 4452, TE_GETITEM, 2438, 40)
	

	MisNeed(MIS_NEED_ITEM, 2427, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2438, 40, 20, 40)
	

	MisCancelAction(ClearMission, 445)
	MisHelpTalk("<t>腕 赅� 溴豚? 殃铍� 箧� 耦狃嚯?")

	MisResultTalk("<t>泥! 疹��� 耠篚� 黩�: !^($......%*#oa2......1&s?~*#^%!...... (鼠珥弼 磬麒磬弪 狍犴栩� 磬 礤镱��蝽铎 �琨赍). Ok! 项��蝽�!<n><t>蒡� 珙腩螓� 祛礤螓 犷朦 礤 镳铌��螓. 蒡桁 体痱恹� 捏� 蝈镥瘘 镳桎弪�� 礤耠噤觐 镳� 耠邃簋� 囹嚓�.")

	MisResultCondition(NoRecord, 445)
	MisResultCondition(HasMission, 445)
	MisResultCondition(HasItem, 2438, 40)
	MisResultCondition(HasItem, 2427, 1)
	MisResultCondition(HasPirateGuild)

	MisResultAction(TakeItem, 2438, 40)
	MisResultAction(TakeItem, 2427, 1)
	MisResultAction(ClearMission ,445)
	MisResultAction(SetRecord, 445)

	MisResultAction(AddExp, 500000,500000)
	MisResultAction(AddMoney, 800000, 800000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2427)
	TriggerAction(1, AddNextFlag, 445, 10, 1)
	RegCurTrigger(4451)

	InitTrigger()
	TriggerCondition(1, IsItem, 2438)
	TriggerAction(1, AddNextFlag, 445, 20, 40)
	RegCurTrigger(4452)

end
CenterMission001()


	DefineMission( 1700, "隋蝽栝 葩屙�", 1700 )

	MisBeginTalk( "<t>袜鬣腩 脲蜞? 渔� 耱嚯� 驵痍�? 疹麇蝰� 镳铛豚潲? 殃铕邋 磬 氰祗? 皖 忮潼 邋 磬皴�� 箧囫睇� 祛眈蝠� � 镳铟桢 黧漕忤. 枢驽蝰� 蝈徨 镱磬漕徼蝰� 眍忄� 栾桊钼赅. � 戾�� 羼螯 礤祉钽�, 眍 蝈徨 镳桎弪�� 镱蝠箐栩�, 黩钺� 镱塍麒螯 邋. 袜溴� 螓 泐蝾�.")
	MisBeginCondition(PfEqual, 8)--champ
	MisBeginCondition(NoMission, 1700)
	MisBeginCondition(NoRecord, 1700)
	MisBeginCondition(LvCheck, ">", 69 )
	MisBeginAction(AddMission, 1700)
	MisBeginAction(SetFlag, 1700, 1)
	MisBeginAction(AddTrigger, 8151, TE_GETITEM, 4283, 100)--蜩觐忸� 狃邂眍
	MisBeginAction(AddTrigger, 1702, TE_GETITEM, 4284, 100)--脏朦恹� 綦铗耜桢 漕牦戾眚�
	MisBeginAction(AddTrigger, 1703, TE_GETITEM, 4285, 100)--琉囫脲� �疣
	MisCancelAction(ClearMission, 1700)

	MisNeed(MIS_NEED_DESP, "杨徨痂蝈 怦�, 黩钺� 镱塍麒螯 镱溧痤�.")
	MisNeed(MIS_NEED_ITEM, 4283, 100, 10, 100)
	MisNeed(MIS_NEED_ITEM, 4284, 100, 20, 100)
	MisNeed(MIS_NEED_ITEM, 4285, 100, 30, 100)

	MisResultTalk("<t>填腩溴�, 螓 皲咫嚯 �! 饮 溴轳蜮栩咫� 漕耱铄� 磬沭噤�!")
	MisHelpTalk("<t>蔓 妁� 礤 耦狃嚯� 怦�, 黩� 眢骓�.")
	MisResultCondition(HasMission, 1700 )
	MisResultCondition(NoRecord, 1700)
	MisResultCondition(HasItem, 4283, 100)
	MisResultCondition(HasItem, 4284, 100)
	MisResultCondition(HasItem, 4285, 100)
	MisResultAction(TakeItem, 4283, 100)
	MisResultAction(TakeItem, 4284, 100)
	MisResultAction(TakeItem, 4285, 100)
	MisResultAction(GiveItem, 4286, 1, 4)
	MisResultAction(ClearMission, 1700 )
	MisResultAction(SetRecord, 1700)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4283 )
	TriggerAction( 1, AddNextFlag, 1700, 10, 100 )
	RegCurTrigger( 8151 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4284 )
	TriggerAction( 1, AddNextFlag, 1700, 20, 100 )
	RegCurTrigger( 1702 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4285 )
	TriggerAction( 1, AddNextFlag, 1700, 30, 100 )
	RegCurTrigger( 1703 )
	
	
	DefineMission( 1701, "隋蝽栝 葩屙�", 1701 )

	MisBeginTalk( "<t>袜鬣腩 脲蜞? 渔� 耱嚯� 驵痍�? 疹麇蝰� 镳铛豚潲? 殃铕邋 磬 氰祗? 皖 忮潼 邋 磬皴�� 箧囫睇� 祛眈蝠� � 镳铟桢 黧漕忤. 枢驽蝰� 蝈徨 镱磬漕徼蝰� 眍忄� 栾桊钼赅. � 戾�� 羼螯 礤祉钽�, 眍 蝈徨 镳桎弪�� 镱蝠箐栩�, 黩钺� 镱塍麒螯 邋. 袜溴� 螓 泐蝾�.")
	MisBeginCondition(LvCheck, ">", 69 )
	MisBeginCondition(PfEqual, 9)--牮箸
	MisBeginCondition(NoRecord, 1701)
	MisBeginCondition(NoMission, 1701)
	MisBeginAction(AddMission, 1701)
	MisBeginAction(SetFlag, 1701, 1)
	MisBeginAction(AddTrigger, 8161, TE_GETITEM, 4283, 100)--蜩觐忸� 狃邂眍
	MisBeginAction(AddTrigger, 8012, TE_GETITEM, 4284, 100)--脏朦恹� 綦铗耜桢 漕牦戾眚�
	MisBeginAction(AddTrigger, 8013, TE_GETITEM, 4285, 100)--琉囫脲� �疣
	MisCancelAction(ClearMission, 1701)

	MisNeed(MIS_NEED_DESP, "杨徨痂蝈 怦�, 黩钺� 镱塍麒螯 镱溧痤�.")
	MisNeed(MIS_NEED_ITEM, 4283, 100, 10, 100)
	MisNeed(MIS_NEED_ITEM, 4284, 100, 20, 100)
	MisNeed(MIS_NEED_ITEM, 4285, 100, 30, 100)

	MisResultTalk("<t>填腩溴�, 螓 皲咫嚯 �! 饮 溴轳蜮栩咫� 漕耱铄� 磬沭噤�!")
	MisHelpTalk("<t>蔓 妁� 礤 耦狃嚯� 怦�, 黩� 眢骓�.")
	MisResultCondition(HasMission, 1701 )
	MisResultCondition(HasItem, 4283, 100)
	MisResultCondition(HasItem, 4284, 100)
	MisResultCondition(HasItem, 4285, 100)
	MisResultCondition(NoRecord, 1701)
	MisResultAction(SetRecord, 1701)
	MisResultAction(TakeItem, 4283, 100)
	MisResultAction(TakeItem, 4284, 100)
	MisResultAction(TakeItem, 4285, 100)
	MisResultAction(GiveItem, 4286, 1, 4)
	MisResultAction(ClearMission, 1701 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4283 )
	TriggerAction( 1, AddNextFlag, 1701, 10, 100 )
	RegCurTrigger( 8161 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4284 )
	TriggerAction( 1, AddNextFlag, 1701, 20, 100 )
	RegCurTrigger( 8012 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4285 )
	TriggerAction( 1, AddNextFlag, 1701, 30, 100 )
	RegCurTrigger( 8013 )
	
	
	
	DefineMission( 1702, "隋蝽栝 葩屙�", 1702 )

	MisBeginTalk( "<t>袜鬣腩 脲蜞? 渔� 耱嚯� 驵痍�? 疹麇蝰� 镳铛豚潲? 殃铕邋 磬 氰祗? 皖 忮潼 邋 磬皴�� 箧囫睇� 祛眈蝠� � 镳铟桢 黧漕忤. 枢驽蝰� 蝈徨 镱磬漕徼蝰� 眍忄� 栾桊钼赅. � 戾�� 羼螯 礤祉钽�, 眍 蝈徨 镳桎弪�� 镱蝠箐栩�, 黩钺� 镱塍麒螯 邋. 袜溴� 螓 泐蝾�.")
	MisBeginCondition(LvCheck, ">", 69 )
	MisBeginCondition(PfEqual, 12)--剜痫
	MisBeginCondition(NoRecord, 1702)
	MisBeginCondition(NoMission, 1702)
	MisBeginAction(AddMission, 1702)
	MisBeginAction(SetFlag, 1702, 1)
	MisBeginAction(AddTrigger, 8171, TE_GETITEM, 4283, 100)--蜩觐忸� 狃邂眍
	MisBeginAction(AddTrigger, 8022, TE_GETITEM, 4284, 100)--脏朦恹� 綦铗耜桢 漕牦戾眚�
	MisBeginAction(AddTrigger, 8023, TE_GETITEM, 4285, 100)--琉囫脲� �疣
	MisCancelAction(ClearMission, 1702)

	MisNeed(MIS_NEED_DESP, "杨徨痂蝈 怦�, 黩钺� 镱塍麒螯 镱溧痤�.")
	MisNeed(MIS_NEED_ITEM, 4283, 100, 10, 100)
	MisNeed(MIS_NEED_ITEM, 4284, 100, 20, 100)
	MisNeed(MIS_NEED_ITEM, 4285, 100, 30, 100)

	MisResultTalk("<t>填腩溴�, 螓 皲咫嚯 �! 饮 溴轳蜮栩咫� 漕耱铄� 磬沭噤�!")
	MisHelpTalk("<t>蔓 妁� 礤 耦狃嚯� 怦�, 黩� 眢骓�.")
	MisResultCondition(HasMission, 1702 )
	MisResultCondition(HasItem, 4283, 100)
	MisResultCondition(HasItem, 4284, 100)
	MisResultCondition(HasItem, 4285, 100)
	MisResultCondition(NoRecord, 1702)
	MisResultAction(SetRecord, 1702)
	MisResultAction(TakeItem, 4283, 100)
	MisResultAction(TakeItem, 4284, 100)
	MisResultAction(TakeItem, 4285, 100)
	MisResultAction(GiveItem, 4286, 1, 4)
	MisResultAction(ClearMission, 1702 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4283 )
	TriggerAction( 1, AddNextFlag, 1702, 10, 100 )
	RegCurTrigger( 8171 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4284 )
	TriggerAction( 1, AddNextFlag, 8000, 20, 100 )
	RegCurTrigger( 8022 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4285 )
	TriggerAction( 1, AddNextFlag, 8000, 30, 100 )
	RegCurTrigger( 8023 )
	
	
	
	DefineMission( 1703, "隋蝽栝 葩屙�", 1703 )

	MisBeginTalk( "<t>袜鬣腩 脲蜞? 渔� 耱嚯� 驵痍�? 疹麇蝰� 镳铛豚潲? 殃铕邋 磬 氰祗? 皖 忮潼 邋 磬皴�� 箧囫睇� 祛眈蝠� � 镳铟桢 黧漕忤. 枢驽蝰� 蝈徨 镱磬漕徼蝰� 眍忄� 栾桊钼赅. � 戾�� 羼螯 礤祉钽�, 眍 蝈徨 镳桎弪�� 镱蝠箐栩�, 黩钺� 镱塍麒螯 邋. 袜溴� 螓 泐蝾�.")
	MisBeginCondition(LvCheck, ">", 69 )
	MisBeginCondition(PfEqual, 13)--孰屦
	MisBeginCondition(NoRecord, 1703)
	MisBeginCondition(NoMission, 1703)
	MisBeginAction(AddMission, 1703)
	MisBeginAction(SetFlag, 1703, 1)
	MisBeginAction(AddTrigger, 8211, TE_GETITEM, 4283, 100)--蜩觐忸� 狃邂眍
	MisBeginAction(AddTrigger, 8032, TE_GETITEM, 4284, 100)--脏朦恹� 綦铗耜桢 漕牦戾眚�
	MisBeginAction(AddTrigger, 8033, TE_GETITEM, 4285, 100)--琉囫脲� �疣
	MisCancelAction(ClearMission, 1703)

	MisNeed(MIS_NEED_DESP, "杨徨痂蝈 怦�, 黩钺� 镱塍麒螯 镱溧痤�.")
	MisNeed(MIS_NEED_ITEM, 4283, 100, 10, 100)
	MisNeed(MIS_NEED_ITEM, 4284, 100, 20, 100)
	MisNeed(MIS_NEED_ITEM, 4285, 100, 30, 100)

	MisResultTalk("<t>填腩溴�, 螓 皲咫嚯 �! 饮 溴轳蜮栩咫� 漕耱铄� 磬沭噤�!")
	MisHelpTalk("<t>蔓 妁� 礤 耦狃嚯� 怦�, 黩� 眢骓�.")
	MisResultCondition(HasMission, 1703 )
	MisResultCondition(HasItem, 4283, 100)
	MisResultCondition(HasItem, 4284, 100)
	MisResultCondition(HasItem, 4285, 100)
	MisResultCondition(NoRecord, 1703)
	MisResultAction(SetRecord, 1703)
	MisResultAction(TakeItem, 4283, 100)
	MisResultAction(TakeItem, 4284, 100)
	MisResultAction(TakeItem, 4285, 100)
	MisResultAction(GiveItem, 4286, 1, 4)
	MisResultAction(ClearMission, 1703 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4283 )
	TriggerAction( 1, AddNextFlag, 1703, 10, 100 )
	RegCurTrigger( 8211 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4284 )
	TriggerAction( 1, AddNextFlag, 1703, 20, 100 )
	RegCurTrigger( 8032 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4285 )
	TriggerAction( 1, AddNextFlag, 1703, 30, 100 )
	RegCurTrigger( 8033 )
	
	
	DefineMission( 1704, "隋蝽栝 葩屙�", 1704 )

	MisBeginTalk( "<t>袜鬣腩 脲蜞? 渔� 耱嚯� 驵痍�? 疹麇蝰� 镳铛豚潲? 殃铕邋 磬 氰祗? 皖 忮潼 邋 磬皴�� 箧囫睇� 祛眈蝠� � 镳铟桢 黧漕忤. 枢驽蝰� 蝈徨 镱磬漕徼蝰� 眍忄� 栾桊钼赅. � 戾�� 羼螯 礤祉钽�, 眍 蝈徨 镳桎弪�� 镱蝠箐栩�, 黩钺� 镱塍麒螯 邋. 袜溴� 螓 泐蝾�.")
	MisBeginCondition(LvCheck, ">", 69 )
	MisBeginCondition(PfEqual, 14)--烟
	MisBeginCondition(NoRecord, 1704)
	MisBeginCondition(NoMission, 1704)
	MisBeginAction(AddMission, 1704)
	MisBeginAction(SetFlag, 1704, 1)
	MisBeginAction(AddTrigger, 8222, TE_GETITEM, 4283, 100)--蜩觐忸� 狃邂眍
	MisBeginAction(AddTrigger, 8042, TE_GETITEM, 4284, 100)--脏朦恹� 綦铗耜桢 漕牦戾眚�
	MisBeginAction(AddTrigger, 8043, TE_GETITEM, 4285, 100)--琉囫脲� �疣
	MisCancelAction(ClearMission, 1704)

	MisNeed(MIS_NEED_DESP, "杨徨痂蝈 怦�, 黩钺� 镱塍麒螯 镱溧痤�.")
	MisNeed(MIS_NEED_ITEM, 4283, 100, 10, 100)
	MisNeed(MIS_NEED_ITEM, 4284, 100, 20, 100)
	MisNeed(MIS_NEED_ITEM, 4285, 100, 30, 100)

	MisResultTalk("<t>填腩溴�, 螓 皲咫嚯 �! 饮 溴轳蜮栩咫� 漕耱铄� 磬沭噤�!")
	MisHelpTalk("<t>蔓 妁� 礤 耦狃嚯� 怦�, 黩� 眢骓�.")
	MisResultCondition(HasMission, 1704 )
	MisResultCondition(HasItem, 4283, 100)
	MisResultCondition(HasItem, 4284, 100)
	MisResultCondition(HasItem, 4285, 100)
	MisResultCondition(NoRecord, 1704)
	MisResultAction(SetRecord, 1704)
	MisResultAction(TakeItem, 4283, 100)
	MisResultAction(TakeItem, 4284, 100)
	MisResultAction(TakeItem, 4285, 100)
	MisResultAction(GiveItem, 4286, 1, 4)
	MisResultAction(ClearMission, 1704 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4283 )
	TriggerAction( 1, AddNextFlag, 1704, 10, 100 )
	RegCurTrigger( 8222 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4284 )
	TriggerAction( 1, AddNextFlag, 1704, 20, 100 )
	RegCurTrigger( 8042 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4285 )
	TriggerAction( 1, AddNextFlag, 1704, 30, 100 )
	RegCurTrigger( 8043 )
	
	
	DefineMission( 1705, "隋蝽栝 葩屙�", 1705 )

	MisBeginTalk( "<t>袜鬣腩 脲蜞? 渔� 耱嚯� 驵痍�? 疹麇蝰� 镳铛豚潲? 殃铕邋 磬 氰祗? 皖 忮潼 邋 磬皴�� 箧囫睇� 祛眈蝠� � 镳铟桢 黧漕忤. 枢驽蝰� 蝈徨 镱磬漕徼蝰� 眍忄� 栾桊钼赅. � 戾�� 羼螯 礤祉钽�, 眍 蝈徨 镳桎弪�� 镱蝠箐栩�, 黩钺� 镱塍麒螯 邋. 袜溴� 螓 泐蝾�.")
	MisBeginCondition(LvCheck, ">", 69 )
	MisBeginCondition(PfEqual, 16)--忸�
	MisBeginCondition(NoRecord, 1705)
	MisBeginCondition(NoMission, 1705)
	MisBeginAction(AddMission, 1705)
	MisBeginAction(SetFlag, 1705, 1)
	MisBeginAction(AddTrigger, 8223, TE_GETITEM, 4283, 100)--蜩觐忸� 狃邂眍 4283
	MisBeginAction(AddTrigger, 8052, TE_GETITEM, 4284, 100)--脏朦恹� 綦铗耜桢 漕牦戾眚� 4284
	MisBeginAction(AddTrigger, 8053, TE_GETITEM, 4285, 100)--琉囫脲� �疣 4285
	MisCancelAction(ClearMission, 1705)

	MisNeed(MIS_NEED_DESP, "杨徨痂蝈 怦�, 黩钺� 镱塍麒螯 镱溧痤�.")
	MisNeed(MIS_NEED_ITEM, 4283, 100, 10, 100)
	MisNeed(MIS_NEED_ITEM, 4284, 100, 20, 100)
	MisNeed(MIS_NEED_ITEM, 4285, 100, 30, 100)

	MisResultTalk("<t>填腩溴�, 螓 皲咫嚯 �! 饮 溴轳蜮栩咫� 漕耱铄� 磬沭噤�!")
	MisHelpTalk("<t>蔓 妁� 礤 耦狃嚯� 怦�, 黩� 眢骓�.")
	MisResultCondition(HasMission, 1705 )
	MisResultCondition(HasItem, 4283, 100)
	MisResultCondition(HasItem, 4284, 100)
	MisResultCondition(HasItem, 4285, 100)
	MisResultCondition(NoRecord, 1705)
	MisResultAction(SetRecord, 1705)
	MisResultAction(TakeItem, 4283, 100)
	MisResultAction(TakeItem, 4284, 100)
	MisResultAction(TakeItem, 4285, 100)
	MisResultAction(GiveItem, 4286, 1, 4)
	MisResultAction(ClearMission, 1705 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4283 )
	TriggerAction( 1, AddNextFlag, 1705, 10, 100 )
	RegCurTrigger( 8223 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4284 )
	TriggerAction( 1, AddNextFlag, 1705, 20, 100 )
	RegCurTrigger( 8052 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4285 )
	TriggerAction( 1, AddNextFlag, 1705, 30, 100 )
	RegCurTrigger( 8053 )
	
	