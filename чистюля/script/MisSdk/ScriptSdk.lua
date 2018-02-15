-----------------------------------------------------------
--ScriptSdk.lua Created by knight 2005.1.14.
--
--Simplify the definition of tasks and planning to write a function script npc dialogue interface
print( "‡ £àã§ª  scriptsdk.lua" )
------------------------------------------------------------

--Script system global variable

Page       = {}	
Exchange  = {}
ExchangeX = {}

FuncList  = {}
Trade     = {}				--npc The definition of global variable transaction information
Goods	 = {}				--npc The definition of global variable transaction information
Mission    = {}				--ËùÓÐÈÎÎñÐÅÏ¢±£´æÈ«¾Ö±äÁ¿¶¨Òå
--MissionSid    = {}				--MISSION misid Corresponding MISSION id -- îí?òó?áûëà, èë?êò?òî óäàëèë?
MisLogList = {}			--ËùÓÐÈÎÎñÈÕÖ¾ÐÅÏ¢±£´æÈ«¾Ö±äÁ¿¶¨Òå
TriggerList = {}			--ËùÓÐÈ«¾Ö´¥·¢Æ÷ÐÅÏ¢±£´æÈ«¾Ö±äÁ¿¶¨Òå
NpcMissionList  = {}		--npcÐ¯´øÈÎÎñÐÅÏ¢È«¾Ö±äÁ¿¶¨Òå
Trigger  = {}

NpcInfoList = {}			--ËùÓÐnpc½Å±¾ÐÅÏ¢±£´æÈ«¾Ö±äÁ¿¶¨Òå
NpcInfoList.count = 0	--ËùÓÐnpc½Å±¾ÐÅÏ¢¼ÆÊý

MapList = {}				--µØÍ¼·þÎñÆ÷ËùÓÐµØÍ¼Ãû³ÆÐÅÏ¢ÁÐ±í
MapList.count = 0		--µØÍ¼Ãû³Æ¼ÆÊý

RandParam = {}			--Ëæ»úÈÎÎñµÄÉú³É²ÎÊý±í

NpcList	= {}				--ÊÀ½çÖÐËùÓÐNPCÐÅÏ¢ÁÐ±í

NpcPointer = LUA_NULL	--Npc³õÊ¼»¯Ö¸Õë

Profession = {} 			--½ÇÉ«×ªÖ°Ö°ÒµÑ¡ÔñÏÞÖÆÌõ¼þÐÅÏ¢
Category  = {}			--½ÇÉ«×ªÖ°Ö°ÒµÑ¡ÔñÌåÐÎÏÞÖÆÌõ¼þÐÅÏ¢

BerthPortList = {}		--¸Û¿ÚÐÅÏ¢

ResourceList = {}		--×ÊÔ´ÐÅÏ¢
ResourceList.wood = {}
ResourceList.mine = {}

BoatLevelList = {}		--´¬Ö»Éý¼¶Êý¾ÝÐÅÏ¢

talklist = {}				--Ëæ»úÈÎÎñÇ°ºó×ºÐÅÏ¢ÁÐ±í

--ÈÎÎñ½±ÀøÑ¡ÏîÀàÐÍ
--¶àÑ¡Ò»
PRIZE_SELONE          = 0
--È«¸øÓè
PRIZE_SELALL           = 1

--ÈÎÎñÀàÐÍ
NOMAL_MISSION		  = 0 		--ÆÕÍ¨ÈÎÎñ
RAND_MISSION		  = 1		--Ëæ»úÈÎÎñ
WORLD_MISSION		  = 2 	    --ÊÀ½çÈÎÎñ

--ÈÎÎñÏÔÊ¾ÀàÐÍ
ALLWAYS_SHOW		 	= 0 	--×ÜÊÇÏÔÊ¾ÈÎÎñ×´Ì¬
COMPLETE_SHOW   		= 1 	--Íê³ÉÈÎÎñÌõ¼þÊ±²ÅÏÔÊ¾ÈÎÎñ×´Ì¬£¬£¨Ö»ÓÐ½ÇÉ«Âú×ãÍê³ÉÌõ¼þ£¬½ÇÉ«²Å»á¿´µ½ÈÎÎñ£©
ACCEPT_SHOW			= 2	--¿ÉÒÔ½ÓÊÜÈÎÎñÊ±ÈÎÎñ²ÅÏÔÊ¾³öÀ´

--ÈÎÎñÐèÇóÀàÐÍ
MIS_RAND_KILL		  = 0   	--´Ý»ÙÎï¼þ
MIS_RAND_GET		  = 1		--»ñÈ¡ÎïÆ·
MIS_RAND_SEND		  = 2		--ËÍÎïÆ·
MIS_RAND_CONVOY    = 3		--»¤ËÍNPC
MIS_RAND_EXPLORE	  = 4		--Ì½Ë÷µØÍ¼

--»¤ËÍNPCµ½´ïÄ¿±êÀàÐÍ
MIS_CONVOY_NPC	  = 0		--»¤ËÍ½»¸¶NPC
MIS_CONVOY_MAP	  = 1		--»¤ËÍµ½Ä³¸öÖ¸¶¨µØµã

--´¥·¢Æ÷ÀàÐÍ
MIS_TRIGGER_NOMAL	= 0	 --ÆÕÍ¨
MIS_TRIGGER_RAND		= 1	 --Ëæ»ú(ÓÃÓÚËæ»úÈÎÎñÖÐ£¬Ê¹ÓÃÊ±¸ù¾Ý´«µÝµÄ²ÎÊýÉèÖÃ´¥·¢Æ÷ÐÅÏ¢)

--Ëæ»úÈÎÎñÃ¿¸ö¶Î±ØÐëÍê³ÉµÄÈÎÎñ»ùÊý£¬²Å¿ÉÒÔ²úÉú½±ÀøÎïÆ·
MIS_RAND_MAXCOMPLETE = 1

--Ëæ»úÈÎÎñµÈ¼¶ÀàÐÍ
MIS_LEVEL_CHAR 	= 0	    --½ÇÉ«Ëæ»úÈÎÎñµÈ¼¶ÀàÐÍ
MIS_LEVEL_GANG 	= 1		--¹«»áËæ»úÈÎÎñµÈ¼¶ÀàÐÍ

--Ëæ»úÈÎÎñ½±Àø¾­ÑéÀàÐÍ
MIS_EXP_NOMAL 		= 0		--½±ÀøÆÕÍ¨¾­Ñé
MIS_EXP_SAIL			= 1		--½±Àøº½º£¾­Ñé
MIS_EXP_LIFE			= 2		--½±ÀøÉú»î¾­Ñé

--¸÷ÖÖÊµÌåÀàÐÍÐÅÏ¢
BASE_ENTITY			= 0		--»ù±¾ÊµÌå
RESOURCE_ENTITY	= 1		--×ÊÔ´ÊµÌå
TRANSIT_ENTITY		= 2		--´«ËÍÊµÌå
BERTH_ENTITY		= 3		--Í£²´ÊµÌå

--NPC½»Ò×·½Ê½ÀàÐÍ
TRADE_NOMAL			= 0		--ÆÕÍ¨½»Ò×
TRADE_GOODS		= 2		--»õÎï½»Ò×

--ÈÎÎñ½±ÀøÎïÆ·ÀàÐÍ
MIS_ITEM_INST_BUY	= 0	--ÉÌµêÂòÂô
MIS_ITEM_INST_MONS	= 1	--¹ÖÎïµôÂä
MIS_ITEM_INST_COMP	= 2	--ºÏ³É
MIS_ITEM_INST_TASK	= 3	--ÈÎÎñ»ñµÃ

--×åðíûé ðûíî?
MoliTable ={}
NakaTable ={}
CoinTable1000 ={}
CoinTable600 ={}



MoliTable[1]=0766
MoliTable[2]=0769
MoliTable[3]=0773
MoliTable[4]=0776
MoliTable[5]=0780
MoliTable[6]=0784
MoliTable[7]=0788
MoliTable[8]=0792
MoliTable[9]=0795
MoliTable[10]=0798
MoliTable[11]=0802
MoliTable[12]=0806


CoinTable1000[1]=0764
CoinTable1000[2]=0767
CoinTable1000[3]=0771
CoinTable1000[4]=0774
CoinTable1000[5]=0778
CoinTable1000[6]=0782
CoinTable1000[7]=0786
CoinTable1000[8]=0790
CoinTable1000[9]=0793
CoinTable1000[10]=0796
CoinTable1000[11]=0800
CoinTable1000[12]=0804

CoinTable600[1]=0763
CoinTable600[2]=0770
CoinTable600[3]=0777
CoinTable600[4]=0781
CoinTable600[5]=0785
CoinTable600[6]=0789
CoinTable600[7]=0799
CoinTable600[8]=0803

NakaTable[1]=0765
NakaTable[2]=0768
NakaTable[3]=0772
NakaTable[4]=0775
NakaTable[5]=0779
NakaTable[6]=0783
NakaTable[7]=0787
NakaTable[8]=0791
NakaTable[9]=0794
NakaTable[10]=0797
NakaTable[11]=0801
NakaTable[12]=0805



function InitBoatLevel()
	BoatLevelList = {}
	BoatLevelList.count = 0
end

function AddBoatLevel( level, money, exp )
	BoatLevelList.count = BoatLevelList.count + 1
	BoatLevelList[level] = {}
	BoatLevelList[level].money = money
	BoatLevelList[level].exp = exp	
	LG( "Óðîâåíü êîðàáëÿ", "AddBoatLevel: count, level, money, exp", BoatLevelList.count, level, money, exp )
end

function InitMap()
	MapList = {}
	MapList.idname = {}
	MapList.mapname = {}
	MapList.count = 0
end

function AddMap( idname, str )
	for n = 1, MapList.count, 1 do
		if MapList.mapname[n] == nil or MapList.idname[n] == nil then
			break
		end
		if MapList.mapname[n] == str or MapList.idname[n] == idname then
			return
		end
	end
	MapList.count = MapList.count + 1
	MapList.idname[MapList.count] = idname
	MapList.mapname[MapList.count] = str
	LG( "mission", "Set map ["..MapList.mapname[MapList.count].."], IDNAME = "..MapList.idname[MapList.count].."ID = "..MapList.count )
	PRINT( "Set map ["..MapList.mapname[MapList.count].."], IDNAME = "..MapList.idname[MapList.count].."ID = "..MapList.count )
	local ret = SetMap( MapList.idname[MapList.count], MapList.count )
	if ret == LUA_FALSE then
		LG( "mission", "Set map notice failed ["..MapList.mapname[MapList.count].."], IDNAME = "..MapList.idname[MapList.count].."ID = "..MapList.count )
		PRINT( "Set map notice failed ["..MapList.mapname[MapList.count].."], IDNAME = "..MapList.idname[MapList.count].."ID = "..MapList.count )
	end
end

function GetMap( mapid )
	if mapid > MapList.count or MapList.mapname[mapid] == nil then
		return "§¯§Ö§Ú§Ù§Ó§Ö§ã§ä§ß§à§Ö §¯§Ñ§Ù§Ó§Ñ§ß§Ú§Ö §¬§Ñ§â§ä§í "
	end
	return MapList.mapname[mapid]
end

function InitPage()
	Page = {}
	Page.trade = {}
	for i = 1, 32, 1 do
		Page[i] = {}
		Page[i].count = 0
		for n = 1, 12, 1 do
			Page[i][n] = {}
		end
	end
	Page[1].ismission = 1
end

function InitTrade()
	Trade = {}
	Trade.tp = TRADE_NOMAL
	Trade.berth = -1
	Trade[1] = {}
	Trade[1].itemtype = WEAPON
	Trade[1].count = 0;
	Trade[1].item = {}
	Trade[1].price = {}
	Trade[2] = {}
	Trade[2].itemtype = DEFENCE
	Trade[2].count = 0;
	Trade[2].item = {}
	Trade[2].price = {}
	Trade[3] = {}
	Trade[3].itemtype = OTHER
	Trade[3].count = 0;
	Trade[3].item = {}
	Trade[3].price = {}
	Trade[4] = {}
	Trade[4].itemtype = SYNTHESIS
	Trade[4].count = 0;
	Trade[4].item = {}
	Trade[4].price = {}
end

function InitTradeX( trade )
	trade[1].itemtype = WEAPON
	trade[1].count = 0;
	trade[2].itemtype = DEFENCE
	trade[2].count = 0;
	trade[3].itemtype = OTHER
	trade[3].count = 0;
	trade[4].itemtype = SYNTHESIS
	trade[4].count = 0;
end

function InitGoods( berth )
	Trade = {}
	Trade.tp = TRADE_GOODS
	Trade.berth = berth
	Trade[1] = {}
	Trade[1].itemtype = WEAPON
	Trade[1].count = 0;
	Trade[1].item = {}
	Trade[1].price = {}
	Trade[2] = {}
	Trade[2].itemtype = DEFENCE
	Trade[2].count = 0;
	Trade[2].item = {}
	Trade[2].price = {}
	Trade[3] = {}
	Trade[3].itemtype = OTHER
	Trade[3].count = 0;
	Trade[3].item = {}
	Trade[3].price = {}
	Trade[4] = {}
	Trade[4].itemtype = SYNTHESIS
	Trade[4].count = 0;
	Trade[4].item = {}
	Trade[4].price = {}
end

function InitNpcMission()
	NpcMissionList = {}
	NpcMissionList.count = 0	
end

function ResetNpcInfo( npc, name )
	InitPage()
	InitTrade()
	InitNpcMission()
	NpcPointer = npc
	local str = "§¯§±§³ ["..name.."] §á§Ö§â§Ö§Ù§Ñ§Ô§â§å§Ø§Ö§ß!"
	PRINT( str )
	LG( "Èíèöèàëèçàöèÿ ÍÏÑ", str )
end

function GetNpcInfo( npc, name )
	NpcInfoList.count = NpcInfoList.count + 1
	NpcInfoList[NpcInfoList.count] = {}
	NpcInfoList[NpcInfoList.count].page = Page
	NpcInfoList[NpcInfoList.count].trade = Trade
	NpcInfoList[NpcInfoList.count].eXchange = ExchangeX
	NpcInfoList[NpcInfoList.count].missionlist = NpcMissionList
	SetNpcScriptID( npc, NpcInfoList.count )
	if NpcMissionList.count > 0 then
		LG( "mission", "§µ§ã§ä§Ñ§ß§à§Ó§Ú§ä§î §¯§±§³ §ß§à§Ó§å§ð §Þ§Ö§ä§Ü§å §Õ§Ý§ñ §Ù§Ñ§Õ§Ñ§ß§Ú§ñ!" )
		SetNpcHasMission( npc, 1 )
	end
	NpcPointer = LUA_NULL
	local str = "§±§à§Ý§å§é§Ú§ä§î §å §¯§±§³ ["..name.."] §Ú§ß§æ§à§â§Þ§Ñ§è§Ú§ð §à §ã§è§Ö§ß§Ñ§â§Ú§Ö §Õ§Ñ§ß§ß§í§ç, ID = "..NpcInfoList.count
	PRINT( str )
	LG( "Èíèöèàëèçàöèÿ ÍÏÑ", str )
end

function ModifyNpcInfo( npc, name, id )
	PRINT( "ModifyNpcInfo:npc = , name = , id = ", npc, name, id )
	NpcInfoList[id] = {}
	NpcInfoList[id].page = Page
	NpcInfoList[id].trade = Trade
	NpcInfoList[id].eXchange = ExchangeX
	NpcInfoList[id].missionlist = NpcMissionList
	PRINT( "set npcscript  notice ID = ", id )
	if NpcMissionList.count > 0 then
		PRINT( "mission", "§µ§ã§ä§Ñ§ß§à§Ó§Ú§ä§î §Þ§Ö§ä§Ü§å §Ù§Ñ§Õ§Ñ§ß§Ú§ñ §Õ§Ý§ñ §¯§±§³!" )
		SetNpcHasMission( npc, 1 )
	else
		PRINT( "mission", "§¯§Ö§Ó§à§Ù§Þ§à§Ø§ß§à §á§à§ã§ä§Ñ§Ó§Ú§ä§î §Þ§Ö§ä§Ü§å §Ù§Ñ§Õ§Ñ§ß§Ú§ñ §Õ§Ý§ñ §¯§±§³!" )
		SetNpcHasMission( npc, 0 )
	end
	NpcPointer = LUA_NULL
	local str = "§ª§Ù§Þ§Ö§ß§Ú§ä§î §å §¯§±§³ ["..name.."] §Ú§ß§æ§à§â§Þ§Ñ§è§Ú§ð §à §ã§è§Ö§ß§Ñ§â§Ú§Ö §Õ§Ñ§ß§ß§í§ç, ID = "..id
	PRINT( str )
	LG( "Èíèöèàëèçàöèÿ ÍÏÑ", str )
end

function NpcProc( character, npc, rpk, id )
	PRINT( "NpcProc:character, npc, rpk, id",  character, npc, rpk, id )
	if NpcInfoList[id] == nil then
		PRINT( "§¯§Ö§Ó§à§Ù§Þ§à§Ø§ß§à §á§à§Ý§å§é§Ú§ä§î §æ§å§ß§Ü§è§Ú§ð §¯§±§³! ID = ",  id )
		local npcname = GetCharName( npc )
		local str = npcname..": §±§â§Ú§Ó§Ö§ä. §´§í §Þ§Ö§ß§ñ §Ú§ë§Ö§ê§î? §ª§Ù§Ó§Ú§ß§Ú, §ß§à §ñ §ã§Ö§Û§é§Ñ§ã §ß§Ö §Þ§à§Ô§å §ã §ä§à§Ò§à§Û §á§à§Ô§à§Ó§à§â§Ú§ä§î!"
		SendPage( character, npc, 0, str, nil, 0 )
		return
	end
	MsgProc( character, npc, rpk, NpcInfoList[id].page, NpcInfoList[id].trade, NpcInfoList[id].missionlist, NpcInfoList[id].eXchange )
end

function NpcState( character, npcid, id )
   PRINT( "NpcState:character, npcid, NpcMissionList", character, npcid, id )
	if NpcInfoList[id] == nil or NpcInfoList[id].missionlist == nil then
		PRINT( "§¯§Ö§Ó§à§Ù§Þ§à§Ø§ß§à §á§à§Ý§å§é§Ú§ä§î §æ§å§ß§Ü§è§Ú§ð §¯§±§³! ID = ",  id )
		LG( "npc_error", "§¯§Ö§Ó§à§Ù§Þ§à§Ø§ß§à §á§à§Ý§å§é§Ú§ä§î §æ§å§ß§Ü§è§Ú§ð §¯§±§³! ID = ",  id )
		return LUA_FALSE
	end
   return MissionState( character, npcid, NpcInfoList[id].missionlist )
end

function NpcInfoReload( name,  func )
	PRINT( "NpcInfoReload: name, findnpc ", name, FindNpc )
	local ret, npc, id = FindNpc( name )
	if ret == LUA_FALSE or npc == nil or id == nil then
		print( "§¯§Ö§ß§Ñ§Û§Õ§Ö§ß §æ§å§ß§Ü§è§Ú§ñ ["..name.."] §¯§±§³!" )
		return
	end
	PRINT( "§¥§à§ã§ä§å§á §Ü §æ§å§ß§Ü§è§Ú§Ú §¯§±§³, pointer =, id = ", npc, id )
	print( GetCharName( npc ) )
	ResetNpcInfo( npc, name )
	PRINT( "ResetNpcInfo, npc = , name = ", npc, name )
	func()
	PRINT( "Func = ", func )
	ModifyNpcInfo( npc, name, id )
	PRINT( "ModifyNpcInfo, name = , id = ", name, id )
	print( "§ª§Ù§Þ§Ö§ß§Ú§Ö §æ§å§ß§Ü§è§Ú§Ú §¯§±§³ ["..name.."] §á§â§à§ê§Ý§à §å§ã§á§Ö§ê§ß§à!" )
end

function Talk( pageid, talk )
	Page[pageid].count = Page[pageid].count + 1
	Page[pageid][Page[pageid].count].talk = talk
	LG( "Èíèöèàëèçàöèÿ ÍÏÑ", "Talk:pageid, count, talk", pageid, Page[pageid].count, Page[pageid][Page[pageid].count].talk )
end

function Text( pageid, text, func, p1, p2, p3, p4 )
	Page[pageid].count = Page[pageid].count + 1
	Page[pageid][Page[pageid].count].text = text
	Page[pageid][Page[pageid].count].func = func
	Page[pageid][Page[pageid].count].p1 = p1
	Page[pageid][Page[pageid].count].p2 = p2
	Page[pageid][Page[pageid].count].p3 = p3
	Page[pageid][Page[pageid].count].p4 = p4
	LG( "Èíèöèàëèçàöèÿ ÍÏÑ", "Text:pageid, count, text, func, p1, p2, p3, p4 ", pageid, Page[pageid].count, text, func, p1, p2, p3, p4 )
end

function MisListPage( pageid )
	Page[pageid].ismission = 1
	LG( "Èíèöèàëèçàöèÿ ÍÏÑ", "MisListPage:"..pageid )
end

function Weapon( id )
	Trade[1].count = Trade[1].count + 1;
	Trade[1].item[Trade[1].count] = id
	LG( "Èíèöèàëèçàöèÿ ÍÏÑ", "Weapon:count, id", Trade[1].count, id )
end

function Defence( id )
	Trade[2].count = Trade[2].count + 1;
	Trade[2].item[Trade[2].count] = id
	LG( "Èíèöèàëèçàöèÿ ÍÏÑ", "Defence:count, id", Trade[2].count, id )
end

function Other( id )
	Trade[3].count = Trade[3].count + 1;
	Trade[3].item[Trade[3].count] = id
	LG( "Èíèöèàëèçàöèÿ ÍÏÑ", "Other:count, id", Trade[3].count, id )
end

function OtherX( trade, id )
	trade[3].count = trade[3].count + 1;
	trade[3].item[trade[3].count] = id
end

function Synthesis( id )
	Trade[4].count = Trade[4].count + 1;
	Trade[4].item[Trade[4].count] = id
	LG( "Èíèöèàëèçàöèÿ ÍÏÑ", "Synthesis:count, id", Trade[4].count, id )
end

function SaleGoodsData( level, id, num, price, pricerange )
	if level == nil or id == nil or num == nil or price == nil or pricerange == nil then
		LG( "Îøèáêè ÍÏÑ(ìîðñêàÿ òîðãîâëÿ)", "SaleGoodsData:Function parameter error!level, id, num, price, pricerange", level, id, num, price, pricerange )
		return
	end
	Trade[1].count = Trade[1].count + 1	
	Trade[1].item[Trade[1].count] = {}
	Trade[1].item[Trade[1].count].level = level
	Trade[1].item[Trade[1].count].id = id
	Trade[1].item[Trade[1].count].count = num
	Trade[1].item[Trade[1].count].num = num
	Trade[1].price[Trade[1].count] = {}
	Trade[1].price[Trade[1].count].price = price
	Trade[1].price[Trade[1].count].range = pricerange
	Trade[1].price[Trade[1].count].curprice = price + Rand( pricerange )
	LG( "Èíèöèàëèçàöèÿ ÍÏÑ_trade", "SaleGoodsData, count, level, id, num, price, range, curprice", Trade[1].count, level, id, num, price, pricerange, Trade[1].price[Trade[1].count].curprice )
end


function InitExchangeX()
	ExchangeX = {}
	ExchangeX.count = 0
	ExchangeX.srcid = {}
	ExchangeX.srcnum = {}
	ExchangeX.tarid = {}
	ExchangeX.tarnum = {}
end

function ExchangeDataX( srcID, srcNum, tarID, tarNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil then
		LG( "Èíèöèàëèçàöèÿ ÍÏÑ_error", "ExchangeDataX: Fuction parameter error??srcID, srcNum, tarID, tarNum", srcID, srcNum, tarID, tarNum )
		return
	end
	ExchangeX.count = ExchangeX.count + 1	
	ExchangeX.srcid[ExchangeX.count] = srcID
	ExchangeX.srcnum[ExchangeX.count] = srcNum
	ExchangeX.tarid[ExchangeX.count] = tarID
	ExchangeX.tarnum[ExchangeX.count] = tarNum
end

--Ñòàðàÿ
function InitExchange()
	Exchange = {}
	Exchange.count = 0
	Exchange.srcid = {}
	Exchange.srcnum = {}
	Exchange.tarid = {}
	Exchange.tarnum = {}
	Exchange.timenum = {}
end

function ExchangeData( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange.count = Exchange.count + 1	
	Exchange.srcid[Exchange.count] = srcID
	Exchange.srcnum[Exchange.count] = srcNum
	Exchange.tarid[Exchange.count] = tarID
	Exchange.tarnum[Exchange.count] = tarNum
	Exchange.timenum[Exchange.count] = timeNum
end

function DoExchange()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 16 ,1 do
		intNum = math.floor(math.random(1,4))
		if intNum == 1 then	
			intMoney = 1028
			intMoneyNum = 2
			intGoods = MoliTable[math.floor(math.random(1,12))]
		elseif intNum ==2 then	
			intMoney = 3457
			intMoneyNum = 1
			intGoods = NakaTable[math.floor(math.random(1,22))]
		elseif intNum ==3 then	
			intMoney = 855
			intMoneyNum = 500
			intGoods = CoinTable1000[math.floor(math.random(1,36))]
		elseif intNum ==4 then	
			intMoney = 855
			intMoneyNum = 300
			intGoods = CoinTable600[math.floor(math.random(1,56))]
		end
		ExchangeData( intMoney, intMoneyNum , intGoods, 1, 1 )
	end
end



function BuyGoodsData( level, id, num, price, pricerange )
	if level == nil or id == nil or num == nil or price == nil or pricerange == nil then
		LG( "Îøèáêè ÍÏÑ(ìîðñêàÿ òîðãîâëÿ)", "BuyGoodsData:Function parameter error!level, id, num, price, pricerange", level, id, num, price, pricerange )
		return
	end
	Trade[2].count = Trade[2].count + 1
	Trade[2].item[Trade[2].count] = {}
	Trade[2].item[Trade[2].count].level = level
	Trade[2].item[Trade[2].count].id = id
	Trade[2].item[Trade[2].count].count = num
	Trade[2].item[Trade[2].count].num = num
	Trade[2].price[Trade[2].count] = {}
	Trade[2].price[Trade[2].count].price = price
	Trade[2].price[Trade[2].count].range = pricerange
	Trade[2].price[Trade[2].count].curprice = price + Rand( pricerange )
	LG( "Èíèöèàëèçàöèÿ ÍÏÑ_trade", "BuyGoodsData, count, level, id, num, price, range, curprice", Trade[2].count, level, id, num, price, pricerange, Trade[2].price[Trade[2].count].curprice )
end

function UpdateGoodsData( tradenpc )
	PRINT( "UpdateGoodsData" )
	if tradenpc == nil then
		PRINT( "UpdateGoodsData:Function parameter error!" )
		LG( "UpdateGoodsData:Function parameter error!" )
		return LUA_ERROR
	end
	local name = GetCharName( tradenpc )
	local ret, id = GetScriptID( tradenpc )
	if ret ~= LUA_TRUE then
		PRINT( "UpdateGoodsData:GetScriptID, obtain npc"..name.."script notice ID failed!" )
		LG( "npctrade_error", "UpdateGoodsData:GetScriptID, obtain npc"..name.."script notice ID failed!" )
		return LUA_FALSE
	end
	if NpcInfoList == nil or NpcInfoList[id] == nil then		
		PRINT( "UpdateGoodsData:GetScriptID, npc"..name.."script notice does not exist! NpcInfoList, ID", NpcInfoList, id )
		LG( "npctrade_error", "UpdateGoodsData:npc"..name.."script notice does not exist! NpcInfoList,  ID", NpcInfoList, id )
		return LUA_FALSE
	end
	PRINT( name..": update trade data notice" )	
	local trade = NpcInfoList[id].trade
	for n = 1, trade[1].count, 1 do
		trade[1].item[n].count = trade[1].item[n].num
		trade[1].price[n].curprice = trade[1].price[n].price + Rand( trade[1].price[n].range )
		PRINT( "Sell item: ID = , Count = , CurPrice = ", trade[1].item[n].id, trade[1].item[n].count, trade[1].price[n].curprice )
	end
	for n = 1, trade[2].count, 1 do
		trade[2].item[n].count = trade[2].item[n].num
		trade[2].price[n].curprice = trade[2].price[n].price + Rand( trade[2].price[n].range )
		PRINT( "Purchase item: ID = , Count = , CurPrice = ", trade[2].item[n].id, trade[2].item[n].count, trade[2].price[n].curprice )
	end
	SendAllGoodsData( tradenpc, trade )
	return LUA_TRUE	
end

function UpdateGoodsKinds( tradenpc )
	PRINT( "UpdateGoodsData" )
	if tradenpc == nil then
		PRINT( "UpdateGoodsData:Function parameter error!" )
		LG( "UpdateGoodsData:Function parameter error!" )
		return LUA_ERROR
	end
	local name = GetCharName( tradenpc )
	local ret, id = GetScriptID( tradenpc )
	if ret ~= LUA_TRUE then
		PRINT( "UpdateGoodsData:GetScriptID, obtain npc"..name.."script notice ID failed!" )
		LG( "npctrade_error", "UpdateGoodsData:GetScriptID, obtain npc"..name.."script notice ID failed!" )
		return LUA_FALSE
	end
	if NpcInfoList == nil or NpcInfoList[id] == nil then		
		PRINT( "UpdateGoodsData:GetScriptID, npc"..name.."script notice does not exist! NpcInfoList, ID", NpcInfoList, id )
		LG( "npctrade_error", "UpdateGoodsData:npc"..name.."script notice does not exist! NpcInfoList,  ID", NpcInfoList, id )
		return LUA_FALSE
	end
	PRINT( name..": update trade data notice" )	
	local trade = NpcInfoList[id].trade
	InitTradeX( trade )
	OtherX( trade, rand() )
	OtherX( trade, rand() )
	OtherX( trade, rand() )
	OtherX( trade, rand() )
	OtherX( trade, rand() )
	OtherX( trade, rand() )
	OtherX( trade, rand() )
	OtherX( trade, rand() )
	SendTradeUpdate( tradenpc, tradenpc, trade, TRADE_BUY, 0 )
	InitExchange()
	DoExchange()
	
	SendExchangeUpdateData( tradenpc, tradenpc )
	--Îáíîâëåíèå òîðãîâëè
	InitExchange2()
	DoExchange2()
	InitExchange3()
	DoExchange3()
	InitExchange4()
	DoExchange4()
	InitExchange5()
	DoExchange5()
	InitExchange6()
	DoExchange6()
	InitExchange7()
	DoExchange7()
	InitExchange8()
	DoExchange8()
	InitExchange9()
	DoExchange9()
	InitExchange10()
	DoExchange10()
	InitExchange11()
	DoExchange11()
	InitExchange12()
	DoExchange12()
	InitExchange13()
	DoExchange13()
	InitExchange14()
	DoExchange14()
	InitExchange15()
	DoExchange15()
	InitExchange16()
	DoExchange16()
	InitExchange17()
	DoExchange17()
	InitExchange18()
	DoExchange18()
	InitExchange19()
	DoExchange19()
	InitExchange20()
	DoExchange20()
	InitExchange21()
	DoExchange21()
	InitExchange22()
	DoExchange22()
	InitExchange23()
	DoExchange23()
	InitExchange24()
	DoExchange24()
	InitExchange25()
	DoExchange25()
	InitExchange26()
	DoExchange26()
	InitExchange27()
	DoExchange27()
	
	SendExchangeUpdateData2( tradenpc, tradenpc )
	SendExchangeUpdateData3( tradenpc, tradenpc )
	SendExchangeUpdateData3( tradenpc, tradenpc )
	SendExchangeUpdateData4( tradenpc, tradenpc )
	SendExchangeUpdateData5( tradenpc, tradenpc )
	SendExchangeUpdateData6( tradenpc, tradenpc )
	SendExchangeUpdateData7( tradenpc, tradenpc )
	SendExchangeUpdateData8( tradenpc, tradenpc )
	SendExchangeUpdateData9( tradenpc, tradenpc )
	SendExchangeUpdateData10( tradenpc, tradenpc )
	SendExchangeUpdateData11( tradenpc, tradenpc )
	SendExchangeUpdateData12( tradenpc, tradenpc )
	SendExchangeUpdateData13( tradenpc, tradenpc )
	SendExchangeUpdateData14( tradenpc, tradenpc )
	SendExchangeUpdateData15( tradenpc, tradenpc )
	SendExchangeUpdateData16( tradenpc, tradenpc )
	SendExchangeUpdateData17( tradenpc, tradenpc )
	SendExchangeUpdateData18( tradenpc, tradenpc )
	SendExchangeUpdateData19( tradenpc, tradenpc )
	SendExchangeUpdateData20( tradenpc, tradenpc )
	SendExchangeUpdateData21( tradenpc, tradenpc )
	SendExchangeUpdateData22( tradenpc, tradenpc )
	SendExchangeUpdateData23( tradenpc, tradenpc )
	SendExchangeUpdateData24( tradenpc, tradenpc )
	SendExchangeUpdateData25( tradenpc, tradenpc )
	SendExchangeUpdateData26( tradenpc, tradenpc )
	SendExchangeUpdateData27( tradenpc, tradenpc )
	return LUA_TRUE
end

function InitFuncList()
	LG( "Èíèöèàëèçàöèÿ ÍÏÑ", "InitFuncList" )
	FuncList = {}
	FuncList.count = 0
end

function AddFuncList( func, p1, p2, p3, p4 )
	FuncList.count = FuncList.count + 1
	FuncList[FuncList.count] = {}
	FuncList[FuncList.count].func = func
	FuncList[FuncList.count].p1 = p1
	FuncList[FuncList.count].p2 = p2
	FuncList[FuncList.count].p3 = p3
	FuncList[FuncList.count].p4 = p4
	LG( "Èíèöèàëèçàöèÿ ÍÏÑ", "AddFuncList, func, p1, p2, p3, p4", func, p1, p2, p3, p4 )
end

function GetFuncList()
	return FuncList
end

function GetNumFunc()
	return FuncList.count
end

function InitTrigger()
	LG( "trigger", "InitTrigger" )
	Trigger = {}	
	for n = 1, 16, 1 do
		Trigger[n] = {}
		Trigger[n].tp = MIS_TRIGGER_NOMAL
		Trigger[n].conditions = {}
		Trigger[n].conditions.count = 0
		Trigger[n].actions = {}
		Trigger[n].actions.count = 0
		Trigger[n].failures = {}
		Trigger[n].failures.count = 0
	end
end

function SetTrigger( id, startup, event )	
	if Trigger[id] == nil then
		return LG( "trigger", "SetTrigger: incorrect trigger search ID = "..id )		
	end
	Trigger[id].startup = startup
	Trigger[id].event   = event 
end

function SetTriggerType( id, tp )
	LG( "trigger", "SetTriggerType: id, tp ", id, tp )
	Trigger[id].tp = tp
end

function TriggerCondition( id, func, p1, p2, p3, p4 )
	LG( "trigger", "TriggerCondition: id, func, p1, p2, p3, p4 ", id, func, p1, p2, p3, p4 )
	Trigger[id].conditions.count = Trigger[id].conditions.count + 1
	Trigger[id].conditions[Trigger[id].conditions.count] = {}
	Trigger[id].conditions[Trigger[id].conditions.count].func = func
	Trigger[id].conditions[Trigger[id].conditions.count].p1 = p1
	Trigger[id].conditions[Trigger[id].conditions.count].p2 = p2
	Trigger[id].conditions[Trigger[id].conditions.count].p3 = p3
	Trigger[id].conditions[Trigger[id].conditions.count].p4 = p4
end

function SetTriggerActionValue( id, index, p1, p2, p3, p4 )
	if id == nil or index == nil or TriggerList[id] == nil then
		PRINT( "SetTriggerActionValue:Function parameter error!triggerid = , index =", id, index )
		LG( "randmission_error", "SetTriggerActionValue:functionparameter error , triggerid = , index", id, index )
		return LUA_FALSE
	end
	if TriggerList[id].actions == nil or TriggerList[id].actions[index] == nil then
		PRINT( "SetTriggerActionValue: Trigger no action notice error!triggerid = , index = ", id, index )
		LG( "randmission_error", "SetTriggerActionValue: Trigger no action notice error!triggerid = , index = ", id, index )
		return LUA_FALSE
	end
	TriggerList[id].actions[index].p1 = p1
	TriggerList[id].actions[index].p2 = p2
	TriggerList[id].actions[index].p3 = p3
	TriggerList[id].actions[index].p4 = p4
end

function TriggerAction( id, func, p1, p2, p3, p4, p5, p6, p7, p8 )
	LG( "trigger", "TriggerAction: id, func, p1, p2, p3, p4 ", id, func, p1, p2, p3, p4 )
	Trigger[id].actions.count = Trigger[id].actions.count + 1
	Trigger[id].actions[Trigger[id].actions.count] = {}
	Trigger[id].actions[Trigger[id].actions.count].func = func
	Trigger[id].actions[Trigger[id].actions.count].p1 = p1
	Trigger[id].actions[Trigger[id].actions.count].p2 = p2
	Trigger[id].actions[Trigger[id].actions.count].p3 = p3
	Trigger[id].actions[Trigger[id].actions.count].p4 = p4
	if p5 ~= nil then
		Trigger[id].actions[Trigger[id].actions.count].p5 = p5
	else
		Trigger[id].actions[Trigger[id].actions.count].p5 = 0
	end
	if p6 ~= nil then
		Trigger[id].actions[Trigger[id].actions.count].p6 = p6
	else
		Trigger[id].actions[Trigger[id].actions.count].p6 = 0
	end
	if p7 ~= nil then
		Trigger[id].actions[Trigger[id].actions.count].p7 = p7
	else
		Trigger[id].actions[Trigger[id].actions.count].p7 = 0
	end
	if p8 ~= nil then
		Trigger[id].actions[Trigger[id].actions.count].p8 = p8
	else
		Trigger[id].actions[Trigger[id].actions.count].p8 = 0
	end	
end

function TriggerFailure( id, func, p1, p2, p3, p4, p5, p6, p7, p8 )
	LG( "trigger", "TriggerFailure: id, func, p1, p2, p3, p4 ", id, func, p1, p2, p3, p4 )
	Trigger[id].failures.count = Trigger[id].failures.count + 1
	Trigger[id].failures[Trigger[id].failures.count] = {}
	Trigger[id].failures[Trigger[id].failures.count].func = func
	Trigger[id].failures[Trigger[id].failures.count].p1 = p1
	Trigger[id].failures[Trigger[id].failures.count].p2 = p2
	Trigger[id].failures[Trigger[id].failures.count].p3 = p3
	Trigger[id].failures[Trigger[id].failures.count].p4 = p4
	if p5 ~= nil then
		Trigger[id].failures[Trigger[id].failures.count].p5 = p5
	else
		Trigger[id].failures[Trigger[id].failures.count].p5 = 0
	end
	if p6 ~= nil then	
		Trigger[id].failures[Trigger[id].failures.count].p6 = p6
	else
		Trigger[id].failures[Trigger[id].failures.count].p6 = 0
	end
	if p7 ~= nil then
		Trigger[id].failures[Trigger[id].failures.count].p7 = p7
	else
		Trigger[id].failures[Trigger[id].failures.count].p7 = 0
	end
	if p8 ~= nil then
		Trigger[id].failures[Trigger[id].failures.count].p8 = p8
	else
		Trigger[id].failures[Trigger[id].failures.count].p8 = 0
	end
end

function GetTrigger( id )
	return Trigger[id]
end

function GetMultiTrigger()
	return Trigger
end

function RegTrigger( id, triggerid )
	if id == nil or triggerid == nil then
		PRINT( "RegTrigger: register triggered cannot be as null!" )
	end
	if Trigger[triggerid] == nil then
		LG( "trigger_error", "RegTrigger: try registrating a null trigger to all classified trigger list,ID = "..triggerid )
		return
	end
	if TriggerList[id] ~= nil then
		LG( "trigger_error", "RegTrigger: register trigger overlayed original trigger notice. ID = "..id )
	end
	TriggerList[id] = Trigger[triggerid]
end

function RegCurTrigger( id )
	RegTrigger( id, 1 )
end

function Start( trigger, count )
	LG( "trigger", "Start:trigger, count", trigger, count )
	Page.start = MultiTrigger
	Page.p1 = trigger
	Page.p2 = count
end

function Popup( trigger, p2 )
	Page.start = PopupWindow
	Page.p1 = trigger
	Page.p2 = p2
end

function SetNpcTrigger( trigger )
	PRINT( "SetNpcTrigger, trigger = , npc = ", trigger, NpcPointer )
	if trigger == nil or trigger.actions == nil then
		LG( "trigger_error", "SetNpcTrigger: trigger = nil or trigger.actions = nil" )
		PRINT( "SetNpcTrigger: trigger = nil or trigger.actions = nil" )
		return
	end
	local ret = ActionsProc( NpcPointer, trigger.actions, NpcPointer, nil, 0, nil )
	if ret ~= LUA_TRUE then
		LG( "trigger_error", "SetNpcTrigger: ActionsProc called error!" )
		PRINT( "SetNpcTrigger: ActionsProc called error!" )
	end
end

function SetNpcActive()
	PRINT( "SetNpcActive" )
	local ret = SetActive( NpcPointer )
	if ret ~= LUA_TRUE then
		PRINT( "SetNpcActive: Set current NPC activate status failed!NPC = "..GetCharName( NpcPointer ) )
		LG( "Èíèöèàëèçàöèÿ ÍÏÑ_error", "SetNpcActive: Set current NPC activate status failed!NPC = "..GetCharName( NpcPointer ) )
	end
end

function DefineMission( id, name, misid, show, mistp )
	LG( "mission", "ID: "..id, " Name:"..name, " MisID:"..misid )
	Mission[id] = {}
	Mission[id].id = misid		
	Mission[id].sid = id 		
	Mission[id].name = name
	if mistp == nil then
		Mission[id].tp = NOMAL_MISSION
	else
		Mission[id].tp = mistp
	end
	if show == nil then
		Mission[id].show = ALWAYS_SHOW
	else
		Mission[id].show = show
	end
	Mission.curmission = Mission[id]
	Mission[id].need = {}
	Mission[id].need.count = 0
	Mission[id].prize = {}
	Mission[id].prize.count = 0
	Mission[id].prize.seltp = PRIZE_SELONE
	Mission[id].begin = {}
	Mission[id].begin.talk = ""
	Mission[id].begin.conditions = {}
	Mission[id].begin.conditions.count = 0
	Mission[id].begin.actions = {}
	Mission[id].begin.actions.count = 0
	Mission[id].begin.baggrid = 0
	Mission[id].result = {}
	Mission[id].result.talk = ""
	Mission[id].result.help = ""
	Mission[id].result.conditions = {}
	Mission[id].result.conditions.count = 0
	Mission[id].result.actions = {}
	Mission[id].result.actions.count = 0
	Mission[id].result.baggrid = 0
	Mission[id].cancel = {}
	Mission[id].cancel.conditions = {}
	Mission[id].cancel.conditions.count = 0
	Mission[id].cancel.actions = {}
	Mission[id].cancel.actions.count = 0
end

function DefineWorldMission( id, name, misid )
	DefineMission( id, name, misid, nil, WORLD_MISSION )
end

function MisBeginTalk( str )
	Mission.curmission.begin.talk = str
	LG( "mission", "MisBeginTalk:talk = "..str )
end

function MisNeed( needtype, p1, p2, p3, p4 )
	Mission.curmission.need.count = Mission.curmission.need.count + 1
	Mission.curmission.need[Mission.curmission.need.count] = {}
	Mission.curmission.need[Mission.curmission.need.count].tp = needtype
	Mission.curmission.need[Mission.curmission.need.count].p1 = p1
	Mission.curmission.need[Mission.curmission.need.count].p2 = p2
	Mission.curmission.need[Mission.curmission.need.count].p3 = p3
	Mission.curmission.need[Mission.curmission.need.count].p4 = p4
	LG( "mission", "MisNeed:count, type, p1, p2, p3, p4", Mission.curmission.need.count, needtype, p1, p2, p3, p4 )
end

function MisPrize( prizetype, p1, p2, p3, p4 )
	Mission.curmission.prize.count = Mission.curmission.prize.count + 1
	Mission.curmission.prize[Mission.curmission.prize.count] = {}
	Mission.curmission.prize[Mission.curmission.prize.count].tp = prizetype
	Mission.curmission.prize[Mission.curmission.prize.count].p1 = p1
	Mission.curmission.prize[Mission.curmission.prize.count].p2 = p2
	Mission.curmission.prize[Mission.curmission.prize.count].p3 = p3
	Mission.curmission.prize[Mission.curmission.prize.count].p4 = p4
	LG( "mission", "MisPrize:count, type, p1, p2, p3, p4", Mission.curmission.prize.count, prizetype, p1, p2, p3, p4 )
end

function MisPrizeType( seltype )
   LG( "mission", "MisPrizeType: prize select type = "..seltype )
   Mission.curmission.prize.seltp = seltype
end

function MisPrizeSelOne()
	MisPrizeType( PRIZE_SELONE )
end

function MisPrizeSelAll()
	MisPrizeType( PRIZE_SELALL )
end

function MisBeginCondition( func, p1, p2, p3, p4 )
	Mission.curmission.begin.conditions.count = Mission.curmission.begin.conditions.count + 1
	Mission.curmission.begin.conditions[Mission.curmission.begin.conditions.count] = {}
	Mission.curmission.begin.conditions[Mission.curmission.begin.conditions.count].func = func
	Mission.curmission.begin.conditions[Mission.curmission.begin.conditions.count].p1 = p1
	Mission.curmission.begin.conditions[Mission.curmission.begin.conditions.count].p2 = p2
	Mission.curmission.begin.conditions[Mission.curmission.begin.conditions.count].p3 = p3	
	Mission.curmission.begin.conditions[Mission.curmission.begin.conditions.count].p4 = p4
	LG( "mission", "MisBeginCondition:count, func, p1, p2, p3, p4", Mission.curmission.begin.conditions.count, func, p1, p2, p3, p4 )
end

function MisBeginAction( func, p1, p2, p3, p4, p5, p6, p7, p8 )
	Mission.curmission.begin.actions.count = Mission.curmission.begin.actions.count + 1
	Mission.curmission.begin.actions[Mission.curmission.begin.actions.count] = {}
	Mission.curmission.begin.actions[Mission.curmission.begin.actions.count].func = func
	Mission.curmission.begin.actions[Mission.curmission.begin.actions.count].p1 = p1
	Mission.curmission.begin.actions[Mission.curmission.begin.actions.count].p2 = p2
	Mission.curmission.begin.actions[Mission.curmission.begin.actions.count].p3 = p3	
	Mission.curmission.begin.actions[Mission.curmission.begin.actions.count].p4 = p4	
	if p5 ~= nil then
		Mission.curmission.begin.actions[Mission.curmission.begin.actions.count].p5 = p5
	else
		Mission.curmission.begin.actions[Mission.curmission.begin.actions.count].p5 = 0
	end
	if p6 ~= nil then
		Mission.curmission.begin.actions[Mission.curmission.begin.actions.count].p6 = p6
	else
		Mission.curmission.begin.actions[Mission.curmission.begin.actions.count].p6 = 0
	end
	if p7 ~= nil then
		Mission.curmission.begin.actions[Mission.curmission.begin.actions.count].p7 = p7
	else
		Mission.curmission.begin.actions[Mission.curmission.begin.actions.count].p7 = 0
	end
	if p8 ~= nil then
		Mission.curmission.begin.actions[Mission.curmission.begin.actions.count].p8 = p8
	else
		Mission.curmission.begin.actions[Mission.curmission.begin.actions.count].p8 = 0
	end
	LG( "mission", "MisBeginAction:count, func, p1, p2, p3, p4, p5, p6, p7, p8", Mission.curmission.begin.actions.count, func, p1, p2, p3, p4, p5, p6, p7, p8 )
end

function MisBeginBagNeed( num )
	Mission.curmission.begin.baggrid = num
end

function MisResultTalk( str )
	Mission.curmission.result.talk = str
	LG( "mission", "MisCompleteTalk:talk = "..str )
end

function MisHelpTalk( str )
	Mission.curmission.result.help = str
	LG( "mission", "MisHelpTalk:help = "..str )
end

function MisResultCondition( func, p1, p2, p3, p4 )
	Mission.curmission.result.conditions.count = Mission.curmission.result.conditions.count + 1
	Mission.curmission.result.conditions[Mission.curmission.result.conditions.count] = {}
	Mission.curmission.result.conditions[Mission.curmission.result.conditions.count].func = func
	Mission.curmission.result.conditions[Mission.curmission.result.conditions.count].p1 = p1
	Mission.curmission.result.conditions[Mission.curmission.result.conditions.count].p2 = p2
	Mission.curmission.result.conditions[Mission.curmission.result.conditions.count].p3 = p3
	Mission.curmission.result.conditions[Mission.curmission.result.conditions.count].p4 = p4
	LG( "mission", "MisResultCondition:count, func, p1, p2, p3, p4", Mission.curmission.result.conditions.count, func, p1, p2, p3, p4 )
end

function MisResultAction( func, p1, p2, p3, p4, p5, p6, p7, p8 )
	Mission.curmission.result.actions.count = Mission.curmission.result.actions.count + 1
	Mission.curmission.result.actions[Mission.curmission.result.actions.count] = {}
	Mission.curmission.result.actions[Mission.curmission.result.actions.count].func = func
	Mission.curmission.result.actions[Mission.curmission.result.actions.count].p1 = p1
	Mission.curmission.result.actions[Mission.curmission.result.actions.count].p2 = p2
	Mission.curmission.result.actions[Mission.curmission.result.actions.count].p3 = p3
	Mission.curmission.result.actions[Mission.curmission.result.actions.count].p4 = p4
	if p5 ~= nil then
		Mission.curmission.result.actions[Mission.curmission.result.actions.count].p5 = p5
	else
		Mission.curmission.result.actions[Mission.curmission.result.actions.count].p5 = 0
	end
	if p6 ~= nil then
		Mission.curmission.result.actions[Mission.curmission.result.actions.count].p6 = p6
	else
		Mission.curmission.result.actions[Mission.curmission.result.actions.count].p6 = 0
	end
	if p7 ~= nil then
		Mission.curmission.result.actions[Mission.curmission.result.actions.count].p7 = p7
	else
		Mission.curmission.result.actions[Mission.curmission.result.actions.count].p7 = 0
	end
	if p8 ~= nil then
		Mission.curmission.result.actions[Mission.curmission.result.actions.count].p8 = p8
	else
		Mission.curmission.result.actions[Mission.curmission.result.actions.count].p8 = 0
	end	
	LG( "mission", "MisResultAction:count, func, p1, p2, p3, p4, p5, p6, p7, p8", Mission.curmission.result.actions.count, func, p1, p2, p3, p4, p5, p6, p7, p8 )
end

function MisResultBagNeed( num )
	Mission.curmission.result.baggrid = num
end

function MisCancelCondition( func, p1, p2, p3, p4 )
	Mission.curmission.cancel.conditions.count = Mission.curmission.cancel.conditions.count + 1
	Mission.curmission.cancel.conditions[Mission.curmission.cancel.conditions.count] = {}
	Mission.curmission.cancel.conditions[Mission.curmission.cancel.conditions.count].func = func
	Mission.curmission.cancel.conditions[Mission.curmission.cancel.conditions.count].p1 = p1
	Mission.curmission.cancel.conditions[Mission.curmission.cancel.conditions.count].p2 = p2
	Mission.curmission.cancel.conditions[Mission.curmission.cancel.conditions.count].p3 = p3
	Mission.curmission.cancel.conditions[Mission.curmission.cancel.conditions.count].p4 = p4
	LG( "mission", "MisCancelCondition:count, func, p1, p2, p3, p4", Mission.curmission.cancel.conditions.count, func, p1, p2, p3, p4 )
end

function MisCancelAction( func, p1, p2, p3, p4, p5, p6, p7, p8 )
	Mission.curmission.cancel.actions.count = Mission.curmission.cancel.actions.count + 1
	Mission.curmission.cancel.actions[Mission.curmission.cancel.actions.count] = {}
	Mission.curmission.cancel.actions[Mission.curmission.cancel.actions.count].func = func
	Mission.curmission.cancel.actions[Mission.curmission.cancel.actions.count].p1 = p1
	Mission.curmission.cancel.actions[Mission.curmission.cancel.actions.count].p2 = p2
	Mission.curmission.cancel.actions[Mission.curmission.cancel.actions.count].p3 = p3
	Mission.curmission.cancel.actions[Mission.curmission.cancel.actions.count].p4 = p4
	if p5 ~= nil then
		Mission.curmission.cancel.actions[Mission.curmission.cancel.actions.count].p5 = p5
	else
		Mission.curmission.cancel.actions[Mission.curmission.cancel.actions.count].p5 = 0
	end
	if p6 ~= nil then
		Mission.curmission.cancel.actions[Mission.curmission.cancel.actions.count].p6 = p6
	else
		Mission.curmission.cancel.actions[Mission.curmission.cancel.actions.count].p6 = 0
	end
	if p7 ~= nil then
		Mission.curmission.cancel.actions[Mission.curmission.cancel.actions.count].p7 = p7
	else
		Mission.curmission.cancel.actions[Mission.curmission.cancel.actions.count].p7 = 0
	end
	if p8 ~= nil then
		Mission.curmission.cancel.actions[Mission.curmission.cancel.actions.count].p8 = p8
	else
		Mission.curmission.cancel.actions[Mission.curmission.cancel.actions.count].p8 = 0
	end	
	LG( "mission", "MisCancelAction:count, func, p1, p2, p3, p4, p5, p6, p7, p8", Mission.curmission.cancel.actions.count, func, p1, p2, p3, p4, p5, p6, p7, p8 )
end

function AddNpcMission( id )
	NpcMissionList.count = NpcMissionList.count + 1
	NpcMissionList[NpcMissionList.count ] = {}
	NpcMissionList[NpcMissionList.count ] = Mission[id]
end

function InitRandParam()
	RandParam = {}
	RandParam.id = 0
	RandParam.sid = 0
	RandParam.tp = 0
	RandParam.bounty = 0
	RandParam.exptp = MIS_EXP_NOMAL
	RandParam.level = 0
	RandParam.numdata = 0
	RandParam.money = 0
	RandParam.exp = 0
	RandParam.prizetp = 0
	RandParam.prizedata = 0
	RandParam.p1 = 0
	RandParam.p2 = 0
	RandParam.npcname = ""
	RandParam.npcarea = ""
	RandParam.data = {}
	for n = 1, 4, 1 do
		RandParam.data[n] = {}
		RandParam.data[n].p1 = 0
		RandParam.data[n].p2 = 0
		RandParam.data[n].p3 = 0
		RandParam.data[n].p4 = 0
	end
end

function DefineRandMission( id, name, misid, bounty, npcname, npcarea, leveltp )
	LG( "randmission_init", "ID: "..id, " Name:"..name, " MisID:"..misid, "Bounty:"..bounty )
	Mission[id] = {}
	Mission[id].id = misid		
	Mission[id].sid = id 		
	Mission[id].name = name
	Mission[id].tp = RAND_MISSION
	Mission[id].bounty = bounty 
	if leveltp == nil then
		Mission[id].leveltp = MIS_LEVEL_CHAR
	else
		Mission[id].leveltp = leveltp
	end
	Mission[id].show = ALWAYS_SHOW
	Mission[id].missionlist = {}
	Mission[id].missionlist.count = 0
	Mission[id].loopinfo = {}
	Mission[id].loopinfo.count = 0
	if npcname ~= nil and npcarea ~= nil then
		Mission[id].npcname = npcname
		Mission[id].npcarea  = npcarea
	else
		Mission[id].npcname = "§¯§Ö§Ú§Ù§Ó§Ö§ã§ä§ß§í§Û §¯§±§³ "
		Mission[id].npcarea  = "§¯§Ö§Ú§Ù§Ó§Ö§ã§ä§ß§í§Û §â§Ö§Ô§Ú§à§ß §ß§Ñ §Ü§Ñ§â§ä§Ö "
	end	
	Mission.curmission = Mission[id]
	Mission[id].begin = {}
	Mission[id].begin.talk = ""
	Mission[id].begin.conditions = {}
	Mission[id].begin.conditions.count = 0
	Mission[id].begin.actions = {}
	Mission[id].begin.actions.count = 0
	Mission[id].begin.baggrid = 0
	Mission[id].result = {}
	Mission[id].result.talk = ""
	Mission[id].result.help = ""
	Mission[id].result.conditions = {}
	Mission[id].result.conditions.count = 0
	Mission[id].result.actions = {}
	Mission[id].result.actions.count = 0
	Mission[id].result.baggrid = 0
	Mission[id].cancel = {}
	Mission[id].cancel.conditions = {}
	Mission[id].cancel.conditions.count = 0
	Mission[id].cancel.actions = {}
	Mission[id].cancel.actions.count = 0
end

function InitTalkList()
	talklist.btalkstart = "§±§â§Ú§ß§ñ§ä§î §à§á§Ú§ã§Ñ§ß§Ú§Ö §ß§Ñ§é§Ñ§Ý§Ñ §Ù§Ñ§Õ§Ñ§ß§Ú§Û "
	talklist.btalkend = "§±§â§Ú§ß§ñ§ä§î §à§á§Ú§ã§Ñ§ß§Ú§Ö §Ü§à§ß§è§Ñ §Ù§Ñ§Õ§Ñ§ß§Ú§Û "
	talklist.rtalkstart = "§¸§Ú§Ü§Ý §à§á§Ú§ã§Ñ§ß§Ú§ñ §ß§Ñ§é§Ñ§Ý§Ñ §Ù§Ñ§Õ§Ñ§ß§Ú§Û "
	talklist.rtalkend = "§¸§Ú§Ü§Ý §à§á§Ú§ã§Ñ§ß§Ú§ñ §Ü§à§ß§è§Ñ §Ù§Ñ§Õ§Ñ§ß§Ú§Û "
	talklist.helpstart = "§±§à§Þ§à§ë§î §à§á§Ú§ã§Ñ§ß§Ú§ñ §ß§Ñ§é§Ñ§Ý§Ñ §Ù§Ñ§Õ§Ñ§ß§Ú§Û "
	talklist.helpend = "§±§à§Þ§à§ë§î §à§á§Ú§ã§Ñ§ß§Ú§ñ §Ü§à§ß§è§Ñ §Ù§Ñ§Õ§Ñ§ß§Ú§Û "
end

function AddRandMissionBeginTalk( talkstart, talkend )
	if talkstart == nil or talkend  == nil then
		LG( "randmission_inittalk_error", "AddRandMissionBeginTalk: misid = , ", Mission.curmission.sid )
		return
	end
	LG( "randmission_init", "AddRandMissionBeginTalk: talkstart = ", talkstart )
	LG( "randmission_init", "AddRandMissionBeginTalk: talkend = ", talkend )
	talklist.btalkstart = talkstart
	talklist.btalkend = talkend
end

function AddRandMissionResultTalk( talkstart, talkend )
	if talkstart == nil or talkend  == nil then
		LG( "randmission_inittalk_error", "AddRandMissionBeginTalk: misid = , ", Mission.curmission.sid )
		return
	end
	LG( "randmission_init", "AddRandMissionResultTalk: talkstart = ", talkstart )
	LG( "randmission_init", "AddRandMissionResultTalk: talkend = ", talkend )	
	talklist.rtalkstart = talkstart
	talklist.rtalkend = talkend
end

function AddRandMissionHelpTalk( talkstart, talkend )
	if talkstart == nil or talkend  == nil then
		LG( "randmission_inittalk_error", "AddRandMissionBeginTalk: misid = , ", Mission.curmission.sid )
		return
	end
	LG( "randmission_init", "AddRandMissionHelpTalk: talkstart = ", talkstart )
	LG( "randmission_init", "AddRandMissionHelpTalk: talkend = ", talkend )	
	talklist.helpstart = talkstart
	talklist.helpend = talkend
end

function GetRandMissionTalk()
	return talklist
end

function AddRandMissionType( tp, tprand, talklist, exptp, randnum, p1, p2, p3, p4, p5, p6 )
	if Mission.curmission == nil or tp == nil or tprand == nil or exptp == nil or randnum == nil then
		PRINT( "AddRandMissionType:Mission[id] = nil or tp = nil, exptp = nil or id = "..Mission.curmission.sid..",tp = "..tp )
		return
	end
	LG( "randmission_init", "AddRandMissionType:Add rand mission id["..Mission.curmission.sid.."], tp = "..tp )
	for n = 1, Mission.curmission.missionlist.count, 1 do
		if Mission.curmission.missionlist[n].tp == tp then
			PRINT( "AddRandMissionType: adding of random quest type duplicate, tp = "..tp )
			return
		end
	end
	Mission.curmission.missionlist.count = Mission.curmission.missionlist.count + 1
	Mission.curmission.missionlist[Mission.curmission.missionlist.count] = {}
	Mission.curmission.missionlist[Mission.curmission.missionlist.count].tp = tp
	Mission.curmission.missionlist[Mission.curmission.missionlist.count].exptp = exptp
	Mission.curmission.missionlist[Mission.curmission.missionlist.count].randnum = randnum
	local begin = {}
	local result = {}
	local cancel = {}
	local need = {}
	local prize = {}
	begin.conditions = {}
	begin.conditions.count = 0
	begin.actions = {}
	begin.actions.count = 0
	begin.baggrid = 0
	result.conditions = {}
	result.conditions.count = 0
	result.actions = {}
	result.actions.count = 0
	result.baggrid = 0
	cancel.conditions = {}
	cancel.conditions.count = 0
	cancel.actions = {}
	cancel.actions.count = 0
	need.count = 0
	prize.count = 0
	prize.seltp = PRIZE_SELALL
	begin.talk = ""
	begin.talkstart = talklist.btalkstart
	begin.talkend = talklist.btalkend
	result.talk = ""
	result.talkstart = talklist.rtalkstart
	result.talkend = talklist.rtalkend
	result.help = ""
	result.helpstart = talklist.helpstart
	result.helpend = talklist.helpend
	if tp == MIS_RAND_KILL then
		need.count = need.count + 1
		need[need.count] = {}
		need[need.count].tp = MIS_NEED_DESP
		need[need.count].p1 = ""
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		need.count = need.count + 1
		need[need.count] = {}
		need[need.count].tp = MIS_NEED_KILL
		need[need.count].p1 = 0
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		need.count = need.count + 1
        need[need.count] = {}
		need[need.count].tp = MIS_NEED_KILL
		need[need.count].p1 = 0
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		need.count = need.count + 1
        need[need.count] = {}
		need[need.count].tp = MIS_NEED_KILL
		need[need.count].p1 = 0
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		need.count = need.count + 1
        need[need.count] = {}
		need[need.count].tp = MIS_NEED_KILL
		need[need.count].p1 = 0
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		prize.count = prize.count + 1
		prize[prize.count] = {}
		prize[prize.count].tp = MIS_PRIZE_MONEY
		prize[prize.count].p1 = 0
		prize[prize.count].p2 = 0
		prize[prize.count].p3 = 0
		prize[prize.count].p4 = 0
		prize.count = prize.count + 1
        prize[prize.count] = {}
		prize[prize.count].tp = MIS_PRIZE_ITEM
		prize[prize.count].p1 = 0
		prize[prize.count].p2 = 0
		prize[prize.count].p3 = 0
		prize[prize.count].p4 = 0
		begin.actions.count = begin.actions.count + 1
		begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = AddTrigger
		begin.actions[begin.actions.count].p1 = p1
		begin.actions[begin.actions.count].p2 = TE_KILL
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 0
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 0
		begin.actions[begin.actions.count].p8 = 0
		begin.actions.count = begin.actions.count + 1
        begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = AddTrigger
		begin.actions[begin.actions.count].p1 = p2
		begin.actions[begin.actions.count].p2 = TE_KILL
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 0
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 0
		begin.actions[begin.actions.count].p8 = 0
		begin.actions.count = begin.actions.count + 1
		begin.actions[begin.actions.count] = {}
        begin.actions[begin.actions.count].func = AddTrigger
		begin.actions[begin.actions.count].p1 = p3
		begin.actions[begin.actions.count].p2 = TE_KILL
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 0
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 0
		begin.actions[begin.actions.count].p8 = 0
		begin.actions.count = begin.actions.count + 1
        begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = AddTrigger
		begin.actions[begin.actions.count].p1 = p4
		begin.actions[begin.actions.count].p2 = TE_KILL
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 0
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 0
		begin.actions[begin.actions.count].p8 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = HasFlag
		result.conditions[result.conditions.count].p1 = Mission.curmission.id
		result.conditions[result.conditions.count].p2 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = HasFlag
		result.conditions[result.conditions.count].p1 = Mission.curmission.id
		result.conditions[result.conditions.count].p2 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = HasFlag
		result.conditions[result.conditions.count].p1 = Mission.curmission.id
		result.conditions[result.conditions.count].p2 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = HasFlag
		result.conditions[result.conditions.count].p1 = Mission.curmission.id
		result.conditions[result.conditions.count].p2 = 0
		result.actions.count = result.actions.count + 1
		result.actions[result.actions.count] = {}
		result.actions[result.actions.count].func = ClearMission
		result.actions[result.actions.count].p1 = Mission.curmission.id
		result.actions.count = result.actions.count + 1
		result.actions[result.actions.count] = {}
		result.actions[result.actions.count].func = AddExpAndType	
		result.actions[result.actions.count].p1 = 0
		result.actions[result.actions.count].p2 = 0
		result.actions[result.actions.count].p3 = 0
		InitTrigger()
		TriggerCondition( 1, HasCancelMissionMoney )
		TriggerAction( 1, TakeCancelMissionMoney )
		TriggerAction( 1, ClearMission, Mission.curmission.id )
		TriggerAction( 1, FailureRandMissionCount, Mission.curmission.id )
		TriggerAction( 2, SystemNotice, "§¯§Ö§Õ§à§ã§ä§Ñ§ä§à§é§ß§à §Ù§à§Ý§à§ä§Ñ. §¯§Ö§Ó§à§Ù§Þ§à§Ø§ß§à §à§ä§Ü§Ñ§Ù§Ñ§ä§î§ã§ñ §à§ä §Ù§Ñ§Õ§Ñ§ß§Ú§ñ!" )
		cancel.actions.count = cancel.actions.count + 1
		cancel.actions[cancel.actions.count] = {}
		cancel.actions[cancel.actions.count].func = MultiTrigger
		cancel.actions[cancel.actions.count].p1 = GetMultiTrigger()
		cancel.actions[cancel.actions.count].p2 = 2
		InitTrigger()
		SetTriggerType( 1, MIS_TRIGGER_RAND )
		TriggerAction( 1, AddRMNextFlag, Mission.curmission.id, 0, 0 )
		TriggerAction( 1, RefreshCompleteFlag, Mission.curmission.sid )
		RegTrigger( p1, 1 )
		SetTriggerType( 2, MIS_TRIGGER_RAND )
		TriggerAction( 2, AddRMNextFlag, Mission.curmission.id, 0, 0 )
		TriggerAction( 2, RefreshCompleteFlag, Mission.curmission.sid )
		RegTrigger( p2, 2 )
		SetTriggerType( 3, MIS_TRIGGER_RAND )
		TriggerAction( 3, AddRMNextFlag, Mission.curmission.id, 0, 0 )
		TriggerAction( 3, RefreshCompleteFlag, Mission.curmission.sid )
		RegTrigger( p3, 3 )
		SetTriggerType( 4, MIS_TRIGGER_RAND )
		TriggerAction( 4, AddRMNextFlag, Mission.curmission.id, 0, 0 )
		TriggerAction( 4, RefreshCompleteFlag, Mission.curmission.sid )
		RegTrigger( p4, 4 )
	elseif tp == MIS_RAND_GET then
		need.count = need.count + 1
		need[need.count] = {}
		need[need.count].tp = MIS_NEED_DESP
		need[need.count].p1 = ""
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		need.count = need.count + 1
		need[need.count] = {}
		need[need.count].tp = MIS_NEED_ITEM
		need[need.count].p1 = 0
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		need.count = need.count + 1
		need[need.count] = {}
        need[need.count].tp = MIS_NEED_ITEM
		need[need.count].p1 = 0
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		need.count = need.count + 1
        need[need.count] = {}
		need[need.count].tp = MIS_NEED_ITEM
		need[need.count].p1 = 0
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		need.count = need.count + 1
        need[need.count] = {}
		need[need.count].tp = MIS_NEED_ITEM
		need[need.count].p1 = 0
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		prize.count = prize.count + 1
		prize[prize.count] = {}
		prize[prize.count].tp = MIS_PRIZE_MONEY
		prize[prize.count].p1 = 0
		prize[prize.count].p2 = 0
		prize[prize.count].p3 = 0
		prize[prize.count].p4 = 0
		prize.count = prize.count + 1
        prize[prize.count] = {}
		prize[prize.count].tp = MIS_PRIZE_ITEM
		prize[prize.count].p1 = 0
		prize[prize.count].p2 = 0
		prize[prize.count].p3 = 0
		prize[prize.count].p4 = 0
		begin.actions.count = begin.actions.count + 1
		begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = AddTrigger
		begin.actions[begin.actions.count].p1 = p1
		begin.actions[begin.actions.count].p2 = TE_GETITEM
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 0
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 0
		begin.actions[begin.actions.count].p8 = 0
		begin.actions.count = begin.actions.count + 1
        begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = AddTrigger
		begin.actions[begin.actions.count].p1 = p2
		begin.actions[begin.actions.count].p2 = TE_GETITEM
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 0
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 0
		begin.actions[begin.actions.count].p8 = 0
		begin.actions.count = begin.actions.count + 1
        begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = AddTrigger
		begin.actions[begin.actions.count].p1 = p3
		begin.actions[begin.actions.count].p2 = TE_GETITEM
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 0
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 0
		begin.actions[begin.actions.count].p8 = 0
		begin.actions.count = begin.actions.count + 1
        begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = AddTrigger
		begin.actions[begin.actions.count].p1 = p4
		begin.actions[begin.actions.count].p2 = TE_GETITEM
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 0
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 0
		begin.actions[begin.actions.count].p8 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = AlwaysTrue
		result.conditions[result.conditions.count].p1 = Mission.curmission.id
		result.conditions[result.conditions.count].p2 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = HasItem
		result.conditions[result.conditions.count].p1 = 0
		result.conditions[result.conditions.count].p2 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = AlwaysTrue
		result.conditions[result.conditions.count].p1 = Mission.curmission.id
		result.conditions[result.conditions.count].p2 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = HasItem
		result.conditions[result.conditions.count].p1 = 0
		result.conditions[result.conditions.count].p2 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = AlwaysTrue
		result.conditions[result.conditions.count].p1 = Mission.curmission.id
		result.conditions[result.conditions.count].p2 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = HasItem
		result.conditions[result.conditions.count].p1 = 0
		result.conditions[result.conditions.count].p2 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = AlwaysTrue
		result.conditions[result.conditions.count].p1 = Mission.curmission.id
		result.conditions[result.conditions.count].p2 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = HasItem
		result.conditions[result.conditions.count].p1 = 0
		result.conditions[result.conditions.count].p2 = 0
		result.actions.count = result.actions.count + 1
		result.actions[result.actions.count] = {}
		result.actions[result.actions.count].func = ClearMission
		result.actions[result.actions.count].p1 = Mission.curmission.id
		result.actions.count = result.actions.count + 1
		result.actions[result.actions.count] = {}
		result.actions[result.actions.count].func = AddExpAndType	
		result.actions[result.actions.count].p1 = 0
		result.actions[result.actions.count].p2 = 0
		result.actions[result.actions.count].p3 = 0
		result.actions.count = result.actions.count + 1
		result.actions[result.actions.count] = {}
		result.actions[result.actions.count].func = TakeItem
		result.actions[result.actions.count].p1 = 0
		result.actions[result.actions.count].p2 = 0
		result.actions.count = result.actions.count + 1
		result.actions[result.actions.count] = {}
		result.actions[result.actions.count].func = TakeItem
		result.actions[result.actions.count].p1 = 0
		result.actions[result.actions.count].p2 = 0
		result.actions.count = result.actions.count + 1
		result.actions[result.actions.count] = {}
		result.actions[result.actions.count].func = TakeItem
		result.actions[result.actions.count].p1 = 0
		result.actions[result.actions.count].p2 = 0
		result.actions.count = result.actions.count + 1
		result.actions[result.actions.count] = {}
		result.actions[result.actions.count].func = TakeItem
		result.actions[result.actions.count].p1 = 0
		result.actions[result.actions.count].p2 = 0
		InitTrigger()
		TriggerCondition( 1, HasCancelMissionMoney )
		TriggerAction( 1, TakeCancelMissionMoney )
		TriggerAction( 1, ClearMission, Mission.curmission.id )
		TriggerAction( 1, FailureRandMissionCount, Mission.curmission.id )
		TriggerAction( 2, SystemNotice, "§¯§Ö§Õ§à§ã§ä§Ñ§ä§à§é§ß§à §Ù§à§Ý§à§ä§Ñ. §¯§Ö§Ó§à§Ù§Þ§à§Ø§ß§à §à§ä§Ü§Ñ§Ù§Ñ§ä§î§ã§ñ §à§ä §Ù§Ñ§Õ§Ñ§ß§Ú§ñ!" )
		cancel.actions.count = cancel.actions.count + 1
		cancel.actions[cancel.actions.count] = {}
		cancel.actions[cancel.actions.count].func = MultiTrigger
		cancel.actions[cancel.actions.count].p1 = GetMultiTrigger()
		cancel.actions[cancel.actions.count].p2 = 2
		InitTrigger()
		SetTriggerType( 1, MIS_TRIGGER_RAND )
		TriggerAction( 1, AddRMNextFlag, Mission.curmission.id, 0, 0 )
		TriggerAction( 1, RefreshCompleteFlag, Mission.curmission.sid )
		RegTrigger( p1, 1 )
		SetTriggerType( 2, MIS_TRIGGER_RAND )
		TriggerAction( 2, AddRMNextFlag, Mission.curmission.id, 0, 0 )
		TriggerAction( 2, RefreshCompleteFlag, Mission.curmission.sid )
		RegTrigger( p2, 2 )
		SetTriggerType( 3, MIS_TRIGGER_RAND )
		TriggerAction( 3, AddRMNextFlag, Mission.curmission.id, 0, 0 )
		TriggerAction( 3, RefreshCompleteFlag, Mission.curmission.sid )
		RegTrigger( p3, 3 )
		SetTriggerType( 4, MIS_TRIGGER_RAND )
		TriggerAction( 4, AddRMNextFlag, Mission.curmission.id, 0, 0 )
		TriggerAction( 4, RefreshCompleteFlag, Mission.curmission.sid )
		RegTrigger( p4, 4 )
	elseif tp == MIS_RAND_SEND then
		need.count = need.count + 1
		need[need.count] = {}
		need[need.count].tp = MIS_NEED_DESP
		need[need.count].p1 = ""
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		need.count = need.count + 1
		need[need.count] = {}
		need[need.count].tp = MIS_NEED_DESP
		need[need.count].p1 = 0
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		need.count = need.count + 1
		need[need.count] = {}
		need[need.count].tp = MIS_NEED_DESP
		need[need.count].p1 = 0
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		need.count = need.count + 1
		need[need.count] = {}
		need[need.count].tp = MIS_NEED_DESP
		need[need.count].p1 = 0
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		need.count = need.count + 1
		need[need.count] = {}
		need[need.count].tp = MIS_NEED_DESP
		need[need.count].p1 = 0
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		prize.count = prize.count + 1
		prize[prize.count] = {}
		prize[prize.count].tp = MIS_PRIZE_MONEY
		prize[prize.count].p1 = 0
		prize[prize.count].p2 = 0
		prize[prize.count].p3 = 0
		prize[prize.count].p4 = 0
		prize.count = prize.count + 1
		prize[prize.count] = {}
		prize[prize.count].tp = MIS_PRIZE_ITEM
		prize[prize.count].p1 = 0
		prize[prize.count].p2 = 0
		prize[prize.count].p3 = 0
		prize[prize.count].p4 = 0
		begin.actions.count = begin.actions.count + 1
		begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = GiveItem
		begin.actions[begin.actions.count].p1 = 0
		begin.actions[begin.actions.count].p2 = 0
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 0
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 0
		begin.actions[begin.actions.count].p8 = 0
		begin.actions.count = begin.actions.count + 1
		begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = GiveItem
		begin.actions[begin.actions.count].p1 = 0
		begin.actions[begin.actions.count].p2 = 0
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 0
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 0
		begin.actions[begin.actions.count].p8 = 0
		begin.actions.count = begin.actions.count + 1
		begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = GiveItem
		begin.actions[begin.actions.count].p1 = 0
		begin.actions[begin.actions.count].p2 = 0
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 0
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 0
		begin.actions[begin.actions.count].p8 = 0
		begin.actions.count = begin.actions.count + 1
		begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = GiveItem
		begin.actions[begin.actions.count].p1 = 0
		begin.actions[begin.actions.count].p2 = 0
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 0
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 0
		begin.actions[begin.actions.count].p8 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = HasRandNpcItemFlag
		result.conditions[result.conditions.count].p1 = Mission.curmission.id
		result.conditions[result.conditions.count].p2 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = HasRandNpcItemFlag
		result.conditions[result.conditions.count].p1 = Mission.curmission.id
		result.conditions[result.conditions.count].p2 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = HasRandNpcItemFlag
		result.conditions[result.conditions.count].p1 = Mission.curmission.id
		result.conditions[result.conditions.count].p2 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = HasRandNpcItemFlag
		result.conditions[result.conditions.count].p1 = Mission.curmission.id
		result.conditions[result.conditions.count].p2 = 0
		result.actions.count = result.actions.count + 1
		result.actions[result.actions.count] = {}
		result.actions[result.actions.count].func = ClearMission
		result.actions[result.actions.count].p1 = Mission.curmission.id
		result.actions.count = result.actions.count + 1
		result.actions[result.actions.count] = {}
		result.actions[result.actions.count].func = AddExpAndType	
		result.actions[result.actions.count].p1 = 0
		result.actions[result.actions.count].p2 = 0
		result.actions[result.actions.count].p3 = 0
		InitTrigger()
		TriggerCondition( 1, HasCancelMissionMoney )
		TriggerAction( 1, TakeCancelMissionMoney )
		TriggerAction( 1, TakeAllRandItem, Mission.curmission.id )
		TriggerAction( 1, ClearMission, Mission.curmission.id )
		TriggerAction( 1, FailureRandMissionCount, Mission.curmission.id )
		TriggerAction( 2, SystemNotice, "§¯§Ö§Õ§à§ã§ä§Ñ§ä§à§é§ß§à §Ù§à§Ý§à§ä§Ñ. §¯§Ö§Ó§à§Ù§Þ§à§Ø§ß§à §à§ä§Ü§Ñ§Ù§Ñ§ä§î§ã§ñ §à§ä §Ù§Ñ§Õ§Ñ§ß§Ú§ñ!" )
		cancel.actions.count = cancel.actions.count + 1
		cancel.actions[cancel.actions.count] = {}
		cancel.actions[cancel.actions.count].func = MultiTrigger
		cancel.actions[cancel.actions.count].p1 = GetMultiTrigger()
		cancel.actions[cancel.actions.count].p2 = 2
	elseif tp == MIS_RAND_CONVOY then
		need.count = need.count + 1
		need[need.count] = {}
		need[need.count].tp = MIS_NEED_DESP
		need[need.count].p1 = ""
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		need.count = need.count + 1
		need[need.count] = {}
		need[need.count].tp = MIS_NEED_DESP
		need[need.count].p1 = 0
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		need.count = need.count + 1
		need[need.count] = {}
        need[need.count].tp = MIS_NEED_DESP
		need[need.count].p1 = 0
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		need.count = need.count + 1
        need[need.count] = {}
		need[need.count].tp = MIS_NEED_DESP
		need[need.count].p1 = 0
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		need.count = need.count + 1
        need[need.count] = {}
		need[need.count].tp = MIS_NEED_DESP
		need[need.count].p1 = 0
		need[need.count].p2 = 0
		need[need.count].p3 = 0
		need[need.count].p4 = 0
		prize.count = prize.count + 1
		prize[prize.count] = {}
		prize[prize.count].tp = MIS_PRIZE_MONEY
		prize[prize.count].p1 = 0
		prize[prize.count].p2 = 0
		prize[prize.count].p3 = 0
		prize[prize.count].p4 = 0
		prize.count = prize.count + 1
        prize[prize.count] = {}
		prize[prize.count].tp = MIS_PRIZE_ITEM
		prize[prize.count].p1 = 0
		prize[prize.count].p2 = 0
		prize[prize.count].p3 = 0
		prize[prize.count].p4 = 0
		begin.actions.count = begin.actions.count + 1
		begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = AddTrigger
		begin.actions[begin.actions.count].p1 = p1
		begin.actions[begin.actions.count].p2 = TE_GAMETIME
		begin.actions[begin.actions.count].p3 = TT_MULTITIME
		begin.actions[begin.actions.count].p4 = 1
		begin.actions[begin.actions.count].p5 = 1
		begin.actions[begin.actions.count].p6 = 1
		begin.actions[begin.actions.count].p7 = 0
		begin.actions[begin.actions.count].p8 = 0
		begin.actions.count = begin.actions.count + 1
		begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = AddTrigger
		begin.actions[begin.actions.count].p1 = p2
		begin.actions[begin.actions.count].p2 = TE_GOTO_MAP
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 0
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 1
		begin.actions[begin.actions.count].p8 = 0
		begin.actions.count = begin.actions.count + 1
		begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = ConvoyNpc
		begin.actions[begin.actions.count].p1 = Mission.curmission.id
		begin.actions[begin.actions.count].p2 = 0
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 8
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 0
		begin.actions[begin.actions.count].p8 = 0
		begin.actions.count = begin.actions.count + 1
        begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = AddTrigger
		begin.actions[begin.actions.count].p1 = p3
		begin.actions[begin.actions.count].p2 = TE_GOTO_MAP
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 0
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 1
		begin.actions[begin.actions.count].p8 = 0
		begin.actions.count = begin.actions.count + 1
		begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = ConvoyNpc
		begin.actions[begin.actions.count].p1 = Mission.curmission.id
		begin.actions[begin.actions.count].p2 = 1
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 8
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 0
		begin.actions[begin.actions.count].p8 = 0
		begin.actions.count = begin.actions.count + 1
        begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = AddTrigger
		begin.actions[begin.actions.count].p1 = p4
		begin.actions[begin.actions.count].p2 = TE_GOTO_MAP
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 0
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 1
		begin.actions[begin.actions.count].p8 = 0
		begin.actions.count = begin.actions.count + 1
		begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = ConvoyNpc
		begin.actions[begin.actions.count].p1 = Mission.curmission.id
		begin.actions[begin.actions.count].p2 = 2
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 8
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 0
		begin.actions[begin.actions.count].p8 = 0
		begin.actions.count = begin.actions.count + 1
        begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = AddTrigger
		begin.actions[begin.actions.count].p1 = p5
		begin.actions[begin.actions.count].p2 = TE_GOTO_MAP
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 0
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0
		begin.actions[begin.actions.count].p7 = 1
		begin.actions[begin.actions.count].p8 = 0
		begin.actions.count = begin.actions.count + 1
		begin.actions[begin.actions.count] = {}
		begin.actions[begin.actions.count].func = ConvoyNpc
		begin.actions[begin.actions.count].p1 = Mission.curmission.id
		begin.actions[begin.actions.count].p2 = 3
		begin.actions[begin.actions.count].p3 = 0
		begin.actions[begin.actions.count].p4 = 8
		begin.actions[begin.actions.count].p5 = 0
		begin.actions[begin.actions.count].p6 = 0		
		begin.actions[begin.actions.count].p7 = 0
		begin.actions[begin.actions.count].p8 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = HasFlag
		result.conditions[result.conditions.count].p1 = Mission.curmission.id
		result.conditions[result.conditions.count].p2 = 0
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = HasFlag
		result.conditions[result.conditions.count].p1 = Mission.curmission.id
		result.conditions[result.conditions.count].p2 = 1
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = HasFlag
		result.conditions[result.conditions.count].p1 = Mission.curmission.id
		result.conditions[result.conditions.count].p2 = 2
		result.conditions.count = result.conditions.count + 1
		result.conditions[result.conditions.count] = {}
		result.conditions[result.conditions.count].func = HasFlag
		result.conditions[result.conditions.count].p1 = Mission.curmission.id
		result.conditions[result.conditions.count].p2 = 3
		result.actions.count = result.actions.count + 1
		result.actions[result.actions.count] = {}
		result.actions[result.actions.count].func = ClearMission
		result.actions[result.actions.count].p1 = Mission.curmission.id
		result.actions.count = result.actions.count + 1
		result.actions[result.actions.count] = {}
		result.actions[result.actions.count].func = AddExpAndType	
		result.actions[result.actions.count].p1 = 0
		result.actions[result.actions.count].p2 = 0
		result.actions[result.actions.count].p3 = 0
		InitTrigger()
		TriggerCondition( 1, HasCancelMissionMoney )
		TriggerAction( 1, TakeCancelMissionMoney )
		TriggerAction( 1, ClearAllConvoyNpc, Mission.curmission.id )
		TriggerAction( 1, ClearMission, Mission.curmission.id )
		TriggerAction( 1, FailureRandMissionCount, Mission.curmission.id )
		TriggerAction( 2, SystemNotice, "§¯§Ö§Õ§à§ã§ä§Ñ§ä§à§é§ß§à §Ù§à§Ý§à§ä§Ñ. §¯§Ö§Ó§à§Ù§Þ§à§Ø§ß§à §à§ä§Ü§Ñ§Ù§Ñ§ä§î§ã§ñ §à§ä §Ù§Ñ§Õ§Ñ§ß§Ú§ñ!" )
		cancel.actions.count = cancel.actions.count + 1
		cancel.actions[cancel.actions.count] = {}
		cancel.actions[cancel.actions.count].func = MultiTrigger
		cancel.actions[cancel.actions.count].p1 = GetMultiTrigger()
		cancel.actions[cancel.actions.count].p2 = 2
		InitTrigger()
		TriggerAction( 1, ClearConvoyNpc, Mission.curmission.id, 0 )
		TriggerAction( 1, SetFlag, Mission.curmission.id, 0 )
		TriggerAction( 1, HelpInfo, MIS_HELP_DESP, "§³§á§Ñ§ã§Ú§Ò§à §Ù§Ñ §Õ§à§ã§ä§Ñ§Ó§Ü§å §Þ§Ö§ß§ñ §ã§ð§Õ§Ñ. §¥§à §ã§Ó§Ú§Õ§Ñ§ß§Ú§ñ!" )
		TriggerAction( 1, RefreshCompleteFlag, Mission.curmission.sid )
		RegTrigger( p2, 1 )
		TriggerAction( 2, ClearConvoyNpc, Mission.curmission.id, 1 )
		TriggerAction( 2, SetFlag, Mission.curmission.id, 1 )
		TriggerAction( 2, HelpInfo, MIS_HELP_DESP, "§³§á§Ñ§ã§Ú§Ò§à §Ù§Ñ §Õ§à§ã§ä§Ñ§Ó§Ü§å §Þ§Ö§ß§ñ §ã§ð§Õ§Ñ. §¥§à §ã§Ó§Ú§Õ§Ñ§ß§Ú§ñ!" )
		TriggerAction( 1, RefreshCompleteFlag, Mission.curmission.sid )
		RegTrigger( p3, 2 )
		TriggerAction( 3, ClearConvoyNpc, Mission.curmission.id, 2 )
		TriggerAction( 3, SetFlag, Mission.curmission.id, 2 )
		TriggerAction( 3, HelpInfo, MIS_HELP_DESP, "§³§á§Ñ§ã§Ú§Ò§à §Ù§Ñ §Õ§à§ã§ä§Ñ§Ó§Ü§å §Þ§Ö§ß§ñ §ã§ð§Õ§Ñ. §¥§à §ã§Ó§Ú§Õ§Ñ§ß§Ú§ñ!" )
		TriggerAction( 1, RefreshCompleteFlag, Mission.curmission.sid )
		RegTrigger( p4, 3 )
		TriggerAction( 4, ClearConvoyNpc, Mission.curmission.id, 3 )
		TriggerAction( 4, SetFlag, Mission.curmission.id, 3 )
		TriggerAction( 4, HelpInfo, MIS_HELP_DESP, "§³§á§Ñ§ã§Ú§Ò§à §Ù§Ñ §Õ§à§ã§ä§Ñ§Ó§Ü§å §Þ§Ö§ß§ñ §ã§ð§Õ§Ñ. §¥§à §ã§Ó§Ú§Õ§Ñ§ß§Ú§ñ!" )
		TriggerAction( 1, RefreshCompleteFlag, Mission.curmission.sid )
		RegTrigger( p5, 4 )
		local help = "§±§â§Ú§ß§ñ§ä§Ú§Ö §Ù§Ñ§Õ§Ñ§ß§Ú§ñ ["
		help = help..Mission.curmission.name.."] §á§â§Ö§Ó§í§ê§Ö§ß§à §Ó§â§Ö§Þ§ñ §ß§Ñ §á§à§Ú§ã§Ü§Ú §Ø§å§â§ß§Ñ§Ý§Ñ."
		TriggerAction( 5, ClearAllConvoyNpc, Mission.curmission.id )
		TriggerAction( 5, HelpInfo, MIS_HELP_DESP, help )
		TriggerAction( 5, FailureRandMissionCount, Mission.curmission.id )
		TriggerAction( 5, SetMissionFailure, Mission.curmission.id )
		RegTrigger( p1, 5 )
	elseif tp == MIS_RAND_EXPLORE then
	end
	Mission.curmission.missionlist[Mission.curmission.missionlist.count].begin = begin
	Mission.curmission.missionlist[Mission.curmission.missionlist.count].result = result
	Mission.curmission.missionlist[Mission.curmission.missionlist.count].cancel = cancel
	Mission.curmission.missionlist[Mission.curmission.missionlist.count].need  = need
	Mission.curmission.missionlist[Mission.curmission.missionlist.count].prize  = prize
	Mission.curmission.missionlist[Mission.curmission.missionlist.count].name = Mission.curmission.name
	Mission.curmission.missionlist[Mission.curmission.missionlist.count].t1 = p1
	Mission.curmission.missionlist[Mission.curmission.missionlist.count].t2 = p2
	Mission.curmission.missionlist[Mission.curmission.missionlist.count].t3 = p3
	Mission.curmission.missionlist[Mission.curmission.missionlist.count].t4 = p4
	Mission.curmission.missionlist[Mission.curmission.missionlist.count].tprand = tprand
end


function AddRandMissionInfo( id, level, tp, p1, p2, p3, p4, p5, p6, p7, p8 )	
	if Mission[id] == nil then
		LG( "randmission_init", "AddRandMissionInfo:Mission[id] = nil, id = "..id )
		PRINT( "AddRandMissionInfo:Mission[id] = nil, id = "..id )
		return LUA_FALSE
	end
	if Mission[id].RandInfo == nil then
		Mission[id].RandInfo = {}
	end
	local flag = 0
	for n = 1, Mission.curmission.missionlist.count, 1 do
		if Mission.curmission.missionlist[n].tp == tp then
			flag = 1
		end
	end
	if flag == 0 then
		PRINT( "AddRandMissionInfo: Add data fail due to target data type switch is not opened. id, level, tp, p1, p2, p3, p4, p5, p6", id, level, tp, p1, p2, p3, p4, p5, p6 )
		LG( "randmission_error", "AddRandMissionInfo: add data failed die to data type switch not opened.", tp )
	end
	if Mission[id].RandInfo[level] == nil then
		Mission[id].RandInfo[level] = {}
		Mission[id].RandInfo[level].KillInfo = {}
		Mission[id].RandInfo[level].KillInfo.count = 0
		Mission[id].RandInfo[level].GetInfo = {}
		Mission[id].RandInfo[level].GetInfo.count = 0
		Mission[id].RandInfo[level].SendInfo = {}
		Mission[id].RandInfo[level].SendInfo.count = 0
		Mission[id].RandInfo[level].SendItem = {}
		Mission[id].RandInfo[level].SendItem.count = 0
		Mission[id].RandInfo[level].ConvoyInfo = {}
		Mission[id].RandInfo[level].ConvoyInfo.count = 0
		Mission[id].RandInfo[level].ExploreInfo = {}
		Mission[id].RandInfo[level].ExploreInfo.count = 0
		Mission[id].RandInfo[level].LoopData = {}
		Mission[id].RandInfo[level].LoopData.count = 0
		Mission[id].RandInfo[level].PrizeItem = {}
		Mission[id].RandInfo[level].PrizeItem.count = 0
		Mission[id].RandInfo[level].PrizeItem.odds = 0
		Mission[id].RandInfo[level].PrizeItem.num = 0
		Mission[id].RandInfo[level].tpinfo = {}
		Mission[id].RandInfo[level].tpinfo.count = 0
	end
	LG( "randmission_init", "mission = , mission.RandInfo = , mission.RandInfo[level] = ", Mission[id], Mission[id].RandInfo, Mission[id].RandInfo[level] )
	if tp == MIS_RAND_KILL then					
		Mission[id].RandInfo[level].KillInfo.count = Mission[id].RandInfo[level].KillInfo.count + 1
		Mission[id].RandInfo[level].KillInfo[Mission[id].RandInfo[level].KillInfo.count] = {}
		Mission[id].RandInfo[level].KillInfo[Mission[id].RandInfo[level].KillInfo.count].p1 = p1
		Mission[id].RandInfo[level].KillInfo[Mission[id].RandInfo[level].KillInfo.count].p2 = p2
		Mission[id].RandInfo[level].KillInfo[Mission[id].RandInfo[level].KillInfo.count].p3 = p3
		Mission[id].RandInfo[level].KillInfo[Mission[id].RandInfo[level].KillInfo.count].p4 = p4
		Mission[id].RandInfo[level].KillInfo[Mission[id].RandInfo[level].KillInfo.count].p5 = p5
		Mission[id].RandInfo[level].KillInfo[Mission[id].RandInfo[level].KillInfo.count].p6 = p6
		Mission[id].RandInfo[level].KillInfo[Mission[id].RandInfo[level].KillInfo.count].p7 = p7
		Mission[id].RandInfo[level].KillInfo[Mission[id].RandInfo[level].KillInfo.count].p8 = p8
	elseif tp == MIS_RAND_GET then			
		Mission[id].RandInfo[level].GetInfo.count = Mission[id].RandInfo[level].GetInfo.count + 1
		Mission[id].RandInfo[level].GetInfo[Mission[id].RandInfo[level].GetInfo.count] = {}
		Mission[id].RandInfo[level].GetInfo[Mission[id].RandInfo[level].GetInfo.count].p1 = p1
		Mission[id].RandInfo[level].GetInfo[Mission[id].RandInfo[level].GetInfo.count].p2 = p2
		Mission[id].RandInfo[level].GetInfo[Mission[id].RandInfo[level].GetInfo.count].p3 = p3
		Mission[id].RandInfo[level].GetInfo[Mission[id].RandInfo[level].GetInfo.count].p4 = p4
		Mission[id].RandInfo[level].GetInfo[Mission[id].RandInfo[level].GetInfo.count].p5 = p5
		Mission[id].RandInfo[level].GetInfo[Mission[id].RandInfo[level].GetInfo.count].p6 = p6
		Mission[id].RandInfo[level].GetInfo[Mission[id].RandInfo[level].GetInfo.count].p7 = p7
		Mission[id].RandInfo[level].GetInfo[Mission[id].RandInfo[level].GetInfo.count].p8 = p8
	elseif tp == MIS_RAND_SEND then			
		Mission[id].RandInfo[level].SendInfo.count = Mission[id].RandInfo[level].SendInfo.count + 1
		Mission[id].RandInfo[level].SendInfo[Mission[id].RandInfo[level].SendInfo.count] = {}
		Mission[id].RandInfo[level].SendInfo[Mission[id].RandInfo[level].SendInfo.count].p1 = p1
		Mission[id].RandInfo[level].SendInfo[Mission[id].RandInfo[level].SendInfo.count].p2 = p2
		Mission[id].RandInfo[level].SendInfo[Mission[id].RandInfo[level].SendInfo.count].p3 = p3
		Mission[id].RandInfo[level].SendInfo[Mission[id].RandInfo[level].SendInfo.count].p4 = p4
		Mission[id].RandInfo[level].SendInfo[Mission[id].RandInfo[level].SendInfo.count].p5 = p5
		Mission[id].RandInfo[level].SendInfo[Mission[id].RandInfo[level].SendInfo.count].p6 = p6
		Mission[id].RandInfo[level].SendInfo[Mission[id].RandInfo[level].SendInfo.count].p7 = p7
		Mission[id].RandInfo[level].SendInfo[Mission[id].RandInfo[level].SendInfo.count].p8 = p8
	elseif tp == MIS_RAND_CONVOY then		
		Mission[id].RandInfo[level].ConvoyInfo.count = Mission[id].RandInfo[level].ConvoyInfo.count + 1
		Mission[id].RandInfo[level].ConvoyInfo[Mission[id].RandInfo[level].ConvoyInfo.count] = {}
		Mission[id].RandInfo[level].ConvoyInfo[Mission[id].RandInfo[level].ConvoyInfo.count].p1 = p1
		Mission[id].RandInfo[level].ConvoyInfo[Mission[id].RandInfo[level].ConvoyInfo.count].p2 = p2
		Mission[id].RandInfo[level].ConvoyInfo[Mission[id].RandInfo[level].ConvoyInfo.count].p3 = p3
		Mission[id].RandInfo[level].ConvoyInfo[Mission[id].RandInfo[level].ConvoyInfo.count].p4 = p4
		Mission[id].RandInfo[level].ConvoyInfo[Mission[id].RandInfo[level].ConvoyInfo.count].p5 = p5
		Mission[id].RandInfo[level].ConvoyInfo[Mission[id].RandInfo[level].ConvoyInfo.count].p6 = p6
		Mission[id].RandInfo[level].ConvoyInfo[Mission[id].RandInfo[level].ConvoyInfo.count].p7 = p7
		Mission[id].RandInfo[level].ConvoyInfo[Mission[id].RandInfo[level].ConvoyInfo.count].p8 = p8
	elseif tp == MIS_RAND_EXPLORE then	
		Mission[id].RandInfo[level].ExploreInfo.count = Mission[id].RandInfo[level].ExploreInfo.count + 1
		Mission[id].RandInfo[level].ExploreInfo[Mission[id].RandInfo[level].ExploreInfo.count] = {}
		Mission[id].RandInfo[level].ExploreInfo[Mission[id].RandInfo[level].ExploreInfo.count].p1 = p1
		Mission[id].RandInfo[level].ExploreInfo[Mission[id].RandInfo[level].ExploreInfo.count].p2 = p2
		Mission[id].RandInfo[level].ExploreInfo[Mission[id].RandInfo[level].ExploreInfo.count].p3 = p3
		Mission[id].RandInfo[level].ExploreInfo[Mission[id].RandInfo[level].ExploreInfo.count].p4 = p4
		Mission[id].RandInfo[level].ExploreInfo[Mission[id].RandInfo[level].ExploreInfo.count].p5 = p5
		Mission[id].RandInfo[level].ExploreInfo[Mission[id].RandInfo[level].ExploreInfo.count].p6 = p6
		Mission[id].RandInfo[level].ExploreInfo[Mission[id].RandInfo[level].ExploreInfo.count].p7 = p7
		Mission[id].RandInfo[level].ExploreInfo[Mission[id].RandInfo[level].ExploreInfo.count].p8 = p8
	else
		PRINT( "AddRandMissionInfo: adds data type error, tp = "..tp )
		LG( "randmission_init",  "AddRandMissionInfo: adds data type error, tp = "..tp )
		return LUA_FALSE
	end
	local count = 0
	for n = 1, Mission[id].RandInfo[level].tpinfo.count, 1 do
		if Mission[id].RandInfo[level].tpinfo[n].tp == tp then
			count = 1
			break
		end
	end
	if count == 0 then
		local tprand = 1
		for n = 1, Mission.curmission.missionlist.count, 1 do
			if Mission.curmission.missionlist[n].tp == tp and Mission.curmission.missionlist[n].tprand ~= nil then
				tprand = Mission.curmission.missionlist[n].tprand
				break
			end
		end
		Mission[id].RandInfo[level].tpinfo.count = Mission[id].RandInfo[level].tpinfo.count + 1
		Mission[id].RandInfo[level].tpinfo[Mission[id].RandInfo[level].tpinfo.count] = {}
		Mission[id].RandInfo[level].tpinfo[Mission[id].RandInfo[level].tpinfo.count].tp = tp
		Mission[id].RandInfo[level].tpinfo[Mission[id].RandInfo[level].tpinfo.count].tprand = tprand
	end
	LG( "randmission_init", "mission = , mission.RandInfo = , mission.RandInfo[level] = ", Mission[id], Mission[id].RandInfo, Mission[id].RandInfo[level] )
	LG( "randmission_init",  "AddRandMissionInfo:id = , level = , tp = , tprand = , p1 =, p2 =, p3 =, p4 =, p5 =, p6 =, p7 =, p8 =", id, level, tp, tprand, p1, p2, p3, p4, p5, p6, p7, p8 )
	return LUA_TRUE
end

function AddRandKillInfo( level, monsterid, randvalue, randscope, exp, money )
	if Mission.curmission == nil or Mission.curmission.sid == nil then
		PRINT( "AddRandKillInfo: register random quest notice, please define a random quest!level, monsterid,  randvalue, randscope, exp, money", level, monsterid, randvalue, randscope, exp, money )
		LG( "randmission_error", "AddRandKillInfo: register random quest notice, please define a random quest!level, monsterid,  randvalue, randscope, exp, money", level, monsterid, randvalue, randscope, exp, money )
		return
	end
	if level>= LV_LIMIT then 
		exp = 0

	end
	local ret = AddRandMissionInfo( Mission.curmission.sid, level, MIS_RAND_KILL, monsterid, randvalue, randscope, exp * Raid_Exp_Ev, money * Raid_Money )
	
	if ret ~= LUA_TRUE then
			PRINT( "AddRandKillInfo:AddRandMissionInfo: register random quest notice error! level, monsterid,  randvalue, randscope, exp, money", level, monsterid, randvalue, randscope, exp, money )
			LG( "randmission_error", "AddRandKillInfo:AddRandMissionInfo: register random quest notice error! level, monsterid,  randvalue, randscope, exp, money", level, monsterid, randvalue, randscope, exp, money )
			return
	end	
	LG( "randmission_init", "AddRandKillInfo:level, monsterid, randvalue, randscope, exp, money", level, monsterid, randvalue, randscope, exp, money )
end

function AddRandGetItem( level, itemid, randvalue, randscope, exp, money )
	if Mission.curmission == nil or Mission.curmission.sid == nil then
		PRINT( "AddRandGetItem: register random quest notice, please define a random quest!level, itemid,  randvalue, randscope, exp, money", level, itemid, randvalue, randscope, exp, money )
		LG( "randmission_error", "AddRandGetItem: register random quest notice, please define a random quest!level, itemid,  randvalue, randscope, exp, money", level, itemid, randvalue, randscope, exp, money )
		return
	end
	if level>= LV_LIMIT then 
		exp = 0

	end
	local ret = AddRandMissionInfo( Mission.curmission.sid, level, MIS_RAND_GET, itemid, randvalue, randscope, exp * Raid_Exp_Ev, money *Raid_Money )
	
	if ret ~= LUA_TRUE then
			PRINT( "AddRandGetItem:AddRandMissionInfo: register random quest notice error! level, monsterid,  randvalue, randscope, exp, money", level, itemid, randvalue, randscope, exp, money )
			LG( "randmission_error", "AddRandGetItem:AddRandMissionInfo: register random quest notice error! level, itemid,  randvalue, randscope, exp, money", level, itemid, randvalue, randscope, exp, money )
			return
	end
	LG( "randmission_init", "AddRandGetItem:level, itemid, randvalue, randscope, exp, money", level, itemid, randvalue, randscope, exp, money )
end

function AddRandSendInfo( level, npcid, exp, money )
	if Mission.curmission == nil or Mission.curmission.sid == nil then
		PRINT( "AddRandSendInfo: register random quest notice, please define a random quest!level, npcid, exp, money", level, npcid, exp, money )
		LG( "randmission_error", "AddRandSendInfo: register random quest notice, please define a random quest!level, npcid, exp, money", level, npcid, exp, money )
		return
	end
	if npcid == nil or NpcList[npcid] == nil or NpcList[npcid].mapid == nil or NpcList[npcid].areaid == nil then
		PRINT( "AddRandSendInfo: Please input correct NPC ID notice. npcid = ", npcid )
		LG( "randmission_error", "AddRandSendInfo: Please input correct NPC ID notice. npcid = ", npcid )
		return
	end
	if level>= LV_LIMIT then 
		exp = 0

	end
	local ret = AddRandMissionInfo( Mission.curmission.sid, level, MIS_RAND_SEND, npcid, NpcList[npcid].areaid, NpcList[npcid].mapid, exp * Raid_Exp_Ev, money*Raid_Money )
	
	if ret ~= LUA_TRUE then
			PRINT( "AddRandSendInfo:AddRandMissionInfo: register random quest notice error! level, npcid, mapid, areaid, mapid, exp, money", level, npcid, NpcList[npcid].areaid, NpcList[npcid].mapid, exp, money )
			LG( "randmission_error", "AddRandSendInfo:AddRandMissionInfo: register random quest notice error! level, npcid, areaid, mapid, exp, money", level, npcid, NpcList[npcid].areaid, NpcList[npcid].mapid, exp, money )
			return
	end
	LG( "randmission_init", "AddRandSendInfo:level, npcid, mapid, areaid, exp, money", level, npcid, NpcList[npcid].areaid, NpcList[npcid].mapid, exp, money )
end

function AddRandSendItem( level, item )
	if Mission.curmission.RandInfo[level] == nil then
		PRINT( "AddRandSendItem: add send letter random quest item, exceeds level.level = ", level )
		LG( "randmission_error", "AddRandSendItem: add send letter random quest item, exceeds level.level = ", level )
		return
	end
	Mission.curmission.RandInfo[level].SendItem.count = Mission.curmission.RandInfo[level].SendItem.count + 1
	Mission.curmission.RandInfo[level].SendItem[Mission.curmission.RandInfo[level].SendItem.count] = item
	LG( "randmission_init", "AddRandSendItem:misid, level, item", Mission.curmission.sid, level, item )
end

function AddRandConvoyInfo( level, charid, mapid, areaid, x, y, scope, exp, money )
	if Mission.curmission == nil or Mission.curmission.sid == nil then
		PRINT( "AddRandConvoyInfo: when registering random quest notice , please define a random quest!level, npcid, areaid, mapid, exp, money", level, areaid, mapid, exp, money )
		LG( "randmission_error", "AddRandConvoyInfo: when registering random quest notice , please define a random quest!level, npcid, areaid, mapid, exp, money", level, areaid, mapid, exp, money )
		return
	end
	if level>= LV_LIMIT then 
		exp = 0

	end
	local ret = AddRandMissionInfo( Mission.curmission.sid, level, MIS_RAND_CONVOY, charid, mapid, areaid, x, y, scope, exp * Raid_Exp_Ev , money * Raid_Money )
	
	if ret ~= LUA_TRUE then
			PRINT( "AddRandConvoyInfo:AddRandMissionInfo: Register random quest notice error! level, charid, mapid, mapid, areaid, x, y, scope, exp, money", level, charid, mapid, areaid, x, y, scope, exp, money )
			LG( "randmission_error", "AddRandConvoyInfo:AddRandMissionInfo: register random quest notice error! level, charid, mapid, areaid, x, y, scope, exp, money", level, charid, mapid, areaid, x, y, scope, exp, money )
			return
	end
	LG( "randmission_init", "AddRandConvoyInfo:level, charid, mapid, areaid, x, y, scope, exp, money", level, charid, mapid, areaid, x, y, scope, exp, money )
end

function AddRandExploreInfo( level, mapid, areaid, x, y, exp, money )
end

function AddRandPriceCess( level, cess, cessrange )
	LG( "randmission_init", "AddRandPrizeItem:misid, level, cess, cessrange", Mission.curmission.sid, level, cess, cessrange )
	if Mission.curmission.RandInfo[level] == nil then
		LG( "randmission_prize_error", "AddRandPriceCess, level data error.", level )
		return
	end
	Mission.curmission.RandInfo[level].LoopData.count = Mission.curmission.RandInfo[level].LoopData.count + 1
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count] = {}
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize = {}
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count = 0
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.tp = MIS_PRIZE_CESS
	local count = Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count + 1
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count = count
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count] = {}
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].tp = MIS_PRIZE_CESS
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].p1 = cess
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].p2 = cessrange
end

function AddRandPriceFrame( level, frame, framerange )
	LG( "randmission_init", "AddRandPrizeItem:misid, level, frame, framerange" )
	if Mission.curmission.RandInfo[level] == nil then
		LG( "randmission_prize_error", "AddRandPriceFrame, level data error.", level )
		return
	end
	Mission.curmission.RandInfo[level].LoopData.count = Mission.curmission.RandInfo[level].LoopData.count + 1
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count] = {}
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize = {}
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count = 0
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.tp = MIS_PRIZE_FAME
	local count = Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count + 1
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count = count
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count] = {}
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].tp = MIS_PRIZE_FAME
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].p1 = frame
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].p2 = framerange
end

function AddRandPricePetExp( level, exp, exprange )
	LG( "randmission_init", "AddRandPricePetExp:misid, level, exp, exprange" )
	if Mission.curmission.RandInfo[level] == nil then
		LG( "randmission_prize_error", "AddRandPricePetExp, level data error.", level )
		return
	end
	Mission.curmission.RandInfo[level].LoopData.count = Mission.curmission.RandInfo[level].LoopData.count + 1
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count] = {}
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize = {}
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count = 0
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.tp = MIS_PRIZE_PETEXP
	local count = Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count + 1
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count = count
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count] = {}
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].tp = MIS_PRIZE_PETEXP
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].p1 = exp
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].p2 = exprange
end

function SetRandPrizeItem( level )
	LG( "randmission_init2", "SetRandPrizeItem:misid, level", Mission.curmission.sid, level )
	if Mission.curmission.RandInfo[level] == nil then
		LG( "randmission_prize_error", "SetRandPrizeItem, level data error.", level )
		return
	end
	Mission.curmission.RandInfo[level].LoopData.count = Mission.curmission.RandInfo[level].LoopData.count + 1
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count] = {}
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize = {}
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count = 0
	Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.tp = MIS_PRIZE_ITEM
end

function AddRandPrizeItem( level, item1, itemdata1, item2, itemdata2, item3, itemdata3, item4, itemdata4 )	
	if Mission.curmission.RandInfo[level] == nil then
		LG( "randmission_prize_error", "AddRandPrizeItem, level data error.", level )
		return
	end
	if Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count] == nil or Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize == nil then
		LG( "randmission_error", "AddRandPrizeItem: level data notice has not initialized, misid = , level = ", Mission.curmission.sid, level )
		return
	end
	LG( "randmission_init2", "AddRandPrizeItem:misid, level, item1, itemdata1, item2, itemdata2, item3, itemdata3, item4, itemdata4", Mission.curmission.sid, level, item1, itemdata1, item2, itemdata2, item3, itemdata3, item4, itemdata4 )
	if item1 ~= nil then
		local count = Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count + 1
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count = count
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count] = {}
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].tp = MIS_PRIZE_ITEM
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].p1 = item1
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].p2 = itemdata1
	else
		return
	end
	if item2 ~= nil then
		local count = Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count + 1
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count = count
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count] = {}
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].tp = MIS_PRIZE_ITEM
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].p1 = item2
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].p2 = itemdata2
	else
		return
	end
	if item3 ~= nil then
		local count = Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count + 1
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count = count
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count] = {}
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].tp = MIS_PRIZE_ITEM
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].p1 = item3
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].p2 = itemdata3
	else
		return
	end
	if item4 ~= nil then
		local count = Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count + 1
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize.count = count
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count] = {}
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].tp = MIS_PRIZE_ITEM
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].p1 = item4
		Mission.curmission.RandInfo[level].LoopData[Mission.curmission.RandInfo[level].LoopData.count].Prize[count].p2 = itemdata4
	else
		return
	end
end

function SetRandPrizeOdds( loopnum, odds, completenum )
	LG( "randmission_init", "SetRandPrizeOdds:loopnum, odds, completenum", loopnum, odds, completenum )
	if Mission.curmission.loopinfo[loopnum] ~= nil then
		PRINT( "SetRandPrizeOdds: data set duplicate.loopnum, odds completenum", loopnum, Mission.curmission.loopinfo[loopnum].odds, Mission.curmission.loopinfo[loopnum].completenum )
		LG( "randmission_error", "SetRandPrizeOdds: data set duplicate.loopnum, odds completenum", loopnum, Mission.curmission.loopinfo[loopnum].odds, Mission.curmission.loopinfo[loopnum].completenum )
	end
	Mission.curmission.loopinfo[loopnum] = {}
	Mission.curmission.loopinfo[loopnum].odds = odds
	Mission.curmission.loopinfo[loopnum].num = completenum
end

function InitNpcList()
	NpcList = {}
	NpcList.count = 0
end

function AddNpcInfo( npcid, name, mapid, areaid )
	PRINT( "Add NPC, ID["..npcid.."], nick ["..name.."] , MapID = "..mapid.."AreaID = "..areaid )
	LG( "Èíôîðìàöèÿ ÍÏÑ", "AddNpcInfo:npcid = "..npcid.." name = "..name.." mapid = "..mapid.." areaid = "..areaid )
	if NpcList[npcid] ~= nil then
		LG( "Èíôîðìàöèÿ ÍÏÑ", "AddNpcInfo: found duplicate ID while adding notice, overlay original NPC notice.ID = "..npcid.." name = "..NpcList[npcid].name )
		PRINT( "AddNpcInfo: found duplicate ID while adding notice, overlay original NPC notice.ID = "..npcid.."name = "..NpcList[npcid].name )
	end
	NpcList[npcid] = {}
	NpcList[npcid].name = name
	NpcList[npcid].mapid = mapid
	NpcList[npcid].areaid = areaid
end

function GetNpcName( npcid )
	if npcid == nil or NpcList[npcid] == nil or NpcList[npcid].name == nil then
		return "§¯§Ö§Ú§Ù§Ó§Ö§ã§ä§ß§í§Û §¯§±§³ "..npcid
	end
	return NpcList[npcid].name
end

function InitResource()
	ResourceList = {}		
	ResourceList.wood = {}
	ResourceList.mine = {}
end

function SetWoodResource( level, itemid, count, pileid )
	if level == nil or itemid == nil or count == nil or pileid == nil then
		PRINT( "SetWoodResource:Function parameter error!level, itemid, count, pileid", level, itemid, count, pileid )
		LG( "Îøèáêè  ìîðñêîé òîðãîâëè", "SetWoodResource:Function parameter error!level, itemid, count, pileid", level, itemid, count, pileid )
		return LUA_FALSE
	end
	if ResourceList == nil or ResourceList.wood == nil then
		PRINT( "SetWoodResource: resource notice list cannot be as null!" )
		LG( "Îøèáêè  ìîðñêîé òîðãîâëè", "SetWoodResource: resource notice list cannot be as null!" )
		return LAU_FALSE
	end
	if ResourceList.wood[level] ~= nil then
		PRINT( "While setting wood resource Loading notice, overlay of notice level is discovered!old data, level, itemid, count, pileid", level, itemid, count, pileid )
		LG( "Îøèáêè  ìîðñêîé òîðãîâëè", "While setting wood resource Loading notice, overlay of notice level is discovered!old data, level, itemid, count, pileid", level, itemid, count, pileid )
	end
	ResourceList.wood[level] = {}
	ResourceList.wood[level].itemid = itemid
	ResourceList.wood[level].count = count
	ResourceList.wood[level].pileid  = pileid
	PRINT( "Set wood resource Loading notice: Level, ItemID, Count, PileID", level, itemid, count, pileid )
	LG( "Èíèöèàëèçàöèÿ ìîðñêîé òîðãîâëè", "Set wood resource Loading notice: Level, ItemID, Count, PileID", level, itemid, count, pileid )
	return LUA_TRUE
end

function SetMineResource( level, itemid, count, pileid )
	if level == nil or itemid == nil or count == nil or pileid == nil then
		PRINT( "SetMineResource:Function parameter error!level, itemid, count, pileid", level, itemid, count, pileid )
		LG( "Îøèáêè  ìîðñêîé òîðãîâëè", "SetMineResource:Function parameter error!level, itemid, count, pileid", level, itemid, count, pileid )
		return LUA_FALSE
	end
	if ResourceList == nil or ResourceList.mine == nil then
		PRINT( "SetMineResource: resource notice list cannot be as null!" )
		LG( "Îøèáêè  ìîðñêîé òîðãîâëè", "SetMineResource: resource notice list cannot be as null!" )
		return LAU_FALSE
	end
	if ResourceList.mine[level] ~= nil then
		PRINT( "While setting ore resource Loading notice, level notice discovered to be overlayed! old data, level, itemid, count, pileid", level, itemid, count, pileid )
		LG( "Îøèáêè  ìîðñêîé òîðãîâëè", "While setting ore resource Loading notice, level notice discovered to be overlayed! old data, level, itemid, count, pileid", level, itemid, count, pileid )
	end
	ResourceList.mine[level] = {}
	ResourceList.mine[level].itemid = itemid
	ResourceList.mine[level].count = count
	ResourceList.mine[level].pileid  = pileid
	PRINT( "set ore resource Loading notice: level, ItemID, Count, PileID", level, itemid, count, pileid )
	LG( "Èíèöèàëèçàöèÿ ìîðñêîé òîðãîâëè", "set ore resource Loading notice: level, ItemID, Count, PileID", level, itemid, count, pileid )
	return LUA_TRUE
end

function AddBerthPort( id, name )
	PRINT( "add harbor notice: ID["..id.."],§¤§í?§¨??"..name.."]" )
	LG( "Èíèöèàëèçàöèÿ ïîðòîâ", "add harbor notice: ID["..id.."],§¤§í?§¨??"..name.."]" )
	if BerthPortList[id] ~= nil then
		LG( "Îøèáêà êîðàáëÿ", "AddBerthPort: adds harbor notice sending duplicate ID found, overlayed date: ID = "..id.."name = "..BerthPortList[id].name )
		PRINT( "AddBerthPort: adds harbor notice sending duplicate ID found, overlayed date: ID = "..id.."name = "..BerthPortList[id].name )
	end
	BerthPortList[id] = {}
	BerthPortList[id].name = name
end

function GetBerthData( id )
	if id == nil or BerthPortList[id] == nil or BerthPortList[id].name == nil then		
		return "§¯§Ö§Ú§Ù§Ó§Ö§ã§ä§ß§à§Ö §¯§Ñ§Ù§Ó§Ñ§ß§Ú§Ö §¢§å§ç§ä§í "..id
	end
	return BerthPortList[id].name
end

function CreateBerthEntity( name, cid, infoid, xpos1, ypos1, dir1, berth, xpos2, ypos2, dir2 )
	PRINT( "Build Dock", name, cid, infoid, xpos1, ypos1, dir1, berth, xpos2, ypos2, dir2 )
	if name == nil or cid == nil or infoid == nil or xpos1 == nil or ypos1 == nil or dir1 == nil or berth == nil or xpos2 == nil or ypos2 == nil or dir2 == nil then
		PRINT( "CreateBerthEntity: Create function parameter notice error!" )
		LG( "entity_error", "CreateBerthEntity: Create function parameter notice error!" )
		return
	end
	LG( "entity_init", "CreateBerthEntity:name, cid, infoid, xpos1, ypos1, dir1, berth, xpos2, ypos2, dir2", name, cid, infoid, xpos1, ypos1, dir1, berth, xpos2, ypos2, dir2 )	
	local ret, submap = GetCurSubmap()
	if ret ~= LUA_TRUE then
		PRINT( "CreateBerthEntity:GetCurSubmapfunctiontransfer failed!" )
		LG( "entity_error", "CreateBerthEntity:GetCurSubmapfunctiontransfer failed!" )
		return
	end
	local ret, e = CreateEventEntity( BERTH_ENTITY, submap, name, cid, infoid, xpos1, ypos1, dir1 )
	if ret ~= LUA_TRUE then
		PRINT( "CreateBerthEntity:CreateEventEntity:functiontransfer failed!tp, submap, name, cid, infoid, xpos1, ypos1, dir1", BERTH_ENTITY, submap, name, cid, infoid, xpos1, ypos1, dir1 )
		LG( "entity_error", "CreateBerthEntity:CreateEventEntity function transfer failed! tp, submap, name, cid, infoid, xpos1, ypos1, dir1", BERTH_ENTITY, submap, name, cid, infoid, xpos1, ypos1, dir1 )
		return
	end
	ret = SetEntityData( e, berth, xpos2, ypos2, dir2 )
	if ret ~= LUA_TRUE then
		PRINT( "CreateBerthEntity:SetEntityDatafunctiontransfer failed!e, berth, xpos2, ypos2, dir2 ", e, berth, xpos2, ypos2, dir2 )
		LG( "entity_error", "CreateBerthEntity:e, berth, xpos2, ypos2, dir2", e, berth, xpos2, ypos2, dir2 )
		return
	end
end

function CreateResourceEntity( name, cid, infoid, xpos, ypos, dir, itemid, count, time )
	PRINT( "create resource entity", name, cid, infoid, xpos, ypos, dir, itemid, count, time )
	if name == nil or cid == nil or infoid == nil or xpos == nil or ypos == nil or dir == nil or itemid == nil or count == nil or time == nil then
		PRINT( "CreateResourceEntity: create function parameter notice error!" )
		LG( "entity_error", "CreateResourceEntity: create function parameter notice error!" )
		return
	end
	LG( "entity_init", "CreateResourceEntity:name, cid, infoid, xpos, ypos, dir, itemid, count, time", name, cid, infoid, xpos, ypos, dir, itemid, count, time )	
	local ret, submap = GetCurSubmap()
	if ret ~= LUA_TRUE then
		PRINT( "CreateResourceEntity:GetCurSubmapfunctiontransfer failed!" )
		LG( "entity_error", "CreateResourceEntity:GetCurSubmapfunctiontransfer failed!" )
		return
	end
	local ret, e = CreateEventEntity( RESOURCE_ENTITY, submap, name, cid, infoid, xpos, ypos, dir )
	if ret ~= LUA_TRUE then
		PRINT( "CreateResourceEntity:CreateEventEntity: function transfer failed!tp, submap, name, cid, infoid, xpos, ypos, dir", RESOURCE_ENTITY, submap, name, cid, infoid, xpos, ypos, dir )
		LG( "entity_error", "CreateResourceEntity:CreateEventEntityfunctiontransfer failed!tp, submap, name, cid, infoid, xpos, ypos, dir", RESOURCE_ENTITY, submap, name, cid, infoid, xpos, ypos, dir )
		return
	end
	ret = SetEntityData( e, itemid, count, time )
	if ret ~= LUA_TRUE then
		PRINT( "CreateResourceEntity:SetEntityDatafunctiontransfer failed!e, itemid, count, time ", e, itemid, count, time )
		LG( "entity_error", "CreateResourceEntity:e, itemid, count, time", e, itemid, count, time )
		return
	end
end

function AddPfTable( curpf, uppf )
	if Profession[curpf] == nil then
		Profession[curpf] = {}
		Profession[curpf].count = 0
	end
	for n = 1, Profession[curpf].count, 1 do
		if Profession[curpf][n] == uppf then
			PRINT( "Set target class advancement list notice already existed, add target notice failed!curpf = , uppf = ", curpf, uppf )
			LG( "PfTable_error", "Set target class advancement list notice already existed, add target notice failed!" )
			return
		end
	end
	Profession[curpf].count = Profession[curpf].count + 1
	Profession[curpf][Profession[curpf].count] = uppf
	LG( "PfTable", "AddPfTable, curpf, uppf, count", curpf, uppf, Profession[curpf].count )
end

function AddCatTable( cat, pf )
	if Category[cat] == nil then
		Category[cat] = {}
		Category[cat].count = 0
	end
	for n = 1, Category[cat].count, 1 do
		if Category[cat][n] == pf then
			PRINT( "Set target size class advancement restriction notice already existed add target notice failed!, cat, pt ", cat, pf )
			LG( "PfTable_error", "Set target size class advancement restriction notice already existed, add target notice failed!" )
			return
		end
	end
	Category[cat].count = Category[cat].count + 1
	Category[cat][Category[cat].count] = pf
	LG( "PfTable", "AddCatTable, cat, pf, count ", cat, pf, Category[cat].count )
end

function TestDefPage()
	Talk( 1, "§¢§Ñ§Ò§å§ê§Ü§Ñ: §±§â§Ú§Ó§Ö§ä, §Õ§Ú§ä§ñ §Þ§à§Ö!" )
	Text( 1, "§©§Ñ§Õ§Ñ§ß§Ú§Ö ", amp, 2 )
	Text( 1, "§´§à§â§Ô§à§Ó§Ý§ñ ", ct, 2 )

	Talk( 2, "§¢§Ñ§Ò§å§ê§Ü§Ñ: §¯§Ú§é§Ö§Ô§à, §Ú§Õ§Ú §Õ§Ö§Ý§Ñ§Û §ã§Ó§à§Ú §Õ§Ö§Ý§Ñ" )

	Talk( 3, "§¢§Ñ§Ò§å§ê§Ü§Ñ: §£§í §Þ§à§Ø§Ö§ä§Ö §Þ§ß§Ö §á§à§Þ§à§é§î §ã§à§Ò§â§Ñ§ä§î §Ý§Ú§ã§ä§à§Ó§í§Ö §á§à§é§Ü§Ú? §®§ß§Ö §ß§å§Ø§ß§à 10 §ê§ä. §±§à§Ý§å§é§Ú§ä§î §Ú§ç §Þ§à§Ø§ß§à §à§ä §´§Ñ§Ú§ß§ã§ä§Ó§Ö§ß§ß§à§Ô§à §Ü§å§ã§ä§Ñ, §Ó§à§Ù§Ý§Ö §³§Ö§â§Ö§Ò§â§ñ§ß§à§Ô§à §¤§à§â§à§Õ§Ñ." )
	Text( 3, "§·§à§â§à§ê§à, §ñ §á§à§ß§ñ§Ý.", ct )

	InitTrigger()
	TriggerCondition( 1, HasMission, 12 )
	TriggerCondition( 1, NoRecord, 145 )
	TriggerAction( 1, GiveItem, 789 )
	TriggerCondition( 2, HasMission, 12 )
	TriggerCondition( 2, NoRecord, 145 )
	TriggerAction( 2, GiveItem, 789 )
	InitFuncList()
	AddFuncList( CreditExchange, 0 ) 
	AddFuncList( CreditExchange, 1 ) 
	Talk( 4, "§¢§Ñ§Ò§å§ê§Ü§Ñ: §¯§Ö §Ù§Ñ§Ò§å§Õ§î§ä§Ö §á§â§Ú§ß§Ö§ã§ä§Ú §Ý§Ö§Ü§Ñ§â§ã§ä§Ó§à §Ó§â§Ñ§é§å. §°§ß §Õ§à§Ý§Ø§Ö§ß §Ò§í§ä§î §â§ñ§Õ§à§Þ §ã §Ò§Ñ§â§à§Þ §Ó §³§Ö§â§Ö§Ò§â§ñ§ß§à§Þ §Ô§à§â§à§Õ§Ö. " )
	Text( 4, "§·§à§â§à§ê§à ", MultiTrigger, GetMultiTrigger(), 2 )
	InitFuncList()
	AddFuncList( CreditExchange, 0 ) 
	Test( 4, "§°§Ò§Þ§Ö§ß§ñ§ä§î §Ù§à§Ý§à§ä§à ", MultiFunc, GetFuncList(), GetNumFunc() )
	InitFuncList()
	AddFuncList( CreditExchange, 1 ) 
	Test( 4, "§°§Ò§Þ§Ö§ß§ñ§ä§î §á§â§Ö§Õ§Þ§Ö§ä ", MultiFunc, GetFuncList(), GetNumFunc() )
	InitTrade()
	Weapon( 1721 )
	Weapon( 1722 )
	Weapon( 1723 )
	Defence( 1001 )
	Other( 1991 )
	InitTrigger()
	TriggerCondition( 1, HasMission, 12 )
	TriggerCondition( 1, NoRecord, 145 )
	TriggerAction( 1, jp, 1 )
	TriggerCondition( 2, HasMission, 13 )
	TriggerCondition( 2, NoRecord, 146 )
	TriggerAction( 2, jp, 2 )
	Start( GetMultiTrigger(), 2 )
end

function TestDefMission( id, name, misid, scriptid, npcid, areaid )
	DefineMission( id, name, misid, COMPLETE_SHOW )
	MisPrize( MIS_PRIZE_MONEY, 300, 1 )
	MisPrizeSelAll() 
	MisBeginTalk( "§³§á§Ñ§ã§Ú§Ò§à §Ù§Ñ §Õ§à§ã§ä§Ñ§Ó§Ü§å §Þ§à§Ö§Û §á§à§ã§í§Ý§Ü§Ú!" )
	MisBeginCondition( AlwaysFailure )
	MisReultTalk( "§³§á§Ñ§ã§Ú§Ò§à §Ù§Ñ §Õ§à§ã§ä§Ñ§Ó§Ü§å §Þ§à§Ö§Û §á§à§ã§í§Ý§Ü§Ú!" )
	MisHelpTalk( "§©§Ñ§Õ§Ñ§ß§Ú§Ö §ß§Ö§Ù§Ñ§Ó§Ö§â§ê§Ö§ß§ß§à! §±§à§Ø§Ñ§Ý§å§Û§ã§ä§Ñ, §á§â§à§Õ§à§Ý§Ø§Ñ§Û§ä§Ö." )
	MisResultCondition( HasRandMissionNpc, misid, npcid, areaid )
	MisResultCondition( NoRandNpcItemFlag, misid, npcid )
	MisResultAction( TakeRandNpcItem, misid, npcid, GetNpcName( npcid ) )
	MisResultAction( AddExp, 100, 1000 )
	MisResultAction( RefreshCompleteFlag, scriptid )
end

function TestRegNpcMission()
	AddNpcMission( 2 )
end

function TestRandMission()
	PRINT( "TestRandMission" )
   DefineRandMission( 10, "§³§Ý§å§é§Ñ§Û§ß§à§Ö §Ù§Ñ§Õ§Ñ§ß§Ú§Ö ", 8 )
   AddRandMissionType( MIS_RAND_CONVOY, 1, 2, 3, 4, 5 )
   PRINT( "AddRandMissionType" )
   AddRandConvoyInfo( 2, 1, 1, 1, 2198, 2780, 10, 60, 120 )
   AddRandPrizeItem( 2, 3 )
   AddRandPrizeItem( 2, 4 )
   AddRandPrizeItem( 2, 5 )
   AddRandPrizeItem( 2, 6 )
   SetRandPrizeOdds( 2, 50, 5 )
end

function TestBorn()
	PRINT( "TestBorn" )
	InitTrigger()
	RegTrigger( 88888, 1 )
	InitTrigger()
	TriggerAction( 1, SystemNotice, "Level up 15! trigger action!" )
	RegTrigger( 24, 1 )
	InitTrigger()
	TriggerAction( 1, SystemNotice, "Goto map, 2197, 2780, 10 m!" )
	TriggerAction( 1, SummonNpc, 1, 1, "Physican - Ditto", 4 )
	RegTrigger( 25, 1 )
	InitTrigger()
	TriggerAction( 1, SystemNotice, "Time single per 1 minute trig" )
	TriggerAction( 1, SystemNotice, "Welcome to the world of Tales of Pirates!" )
	RegTrigger( 26, 1 )
	InitTrigger()
	TriggerAction( 1, SystemNotice, "Time cycle per 1 minute" )
	TriggerAction( 1, HelpInfo, MIS_HELP_DESP, "You are still new. Work hard and train hard!" )
	TriggerAction( 1, HelpInfo, MIS_HELP_IMAGE, "§²§£§¬§¸map §¸§×¦Ì?§¬§¸?§Ò.tga" )
	TriggerAction( 1, HelpInfo, MIS_HELP_SOUNT, 18 )
	RegTrigger( 27, 1 )
	InitTrigger()
	TriggerAction( 1, SystemNotice, "Time multitime per 1 minute 10 count" )
	RegTrigger( 28, 1 )
	InitTrigger()
	TriggerAction( 1, SystemNotice, "kill 69 monster" )
	RegTrigger( 29, 1 )
	InitTrigger()
	TriggerAction( 1, SystemNotice, "Getitem 1721" )
	RegTrigger( 30, 1 )	
end

function TestConvertProfession()
	AddPfTable( 1, 8 )		
	AddPfTable( 1, 9 )		
	AddPfTable( 1, 10 )		
	AddPfTable( 2, 11 )		
	AddPfTable( 2, 12 )		
	AddPfTable( 3, 15 )		
	AddPfTable( 4, 16 ) 	
	AddPfTable( 5, 13 )		
	AddPfTable( 5, 14 )		
	AddPfTable( 6, 18 )		
	AddPfTable( 7, 17 )		
	AddCatTable( 1, 1 )		
	AddCatTable( 1, 2 )		
	AddCatTable( 1, 4 )		
	AddCatTable( 1, 7 )		
	AddCatTable( 1, 9 )		
	AddCatTable( 1, 10 )	
	AddCatTable( 1, 11 )	
	AddCatTable( 1, 12 )	
	AddCatTable( 1, 16 )	
	AddCatTable( 1, 17 )	
	AddCatTable( 2, 1 )		
	AddCatTable( 2, 3 )		
	AddCatTable( 2, 6 )		
	AddCatTable( 2, 7 )		
	AddCatTable( 2, 8 )		
	AddCatTable( 2, 10 )	
	AddCatTable( 2, 17 )	
	AddCatTable( 3, 2 )		
	AddCatTable( 3, 3 )		
	AddCatTable( 3, 5 )		
	AddCatTable( 3, 7 )		
	AddCatTable( 3, 11 )	
	AddCatTable( 3, 12 )	
	AddCatTable( 3, 13 )	
	AddCatTable( 3, 14 )	
	AddCatTable( 3, 15 )	
	AddCatTable( 3, 17 )	
	AddCatTable( 4, 4 )		
	AddCatTable( 4, 5 )		
	AddCatTable( 4, 6 )		
	AddCatTable( 4, 7 )		
	AddCatTable( 4, 13 )	
	AddCatTable( 4, 14 )	
	AddCatTable( 4, 16 )	
	AddCatTable( 4, 17 )	
	AddCatTable( 4, 18 )	
end





--Ìàññèâû òîðãîâëè
Exchange2 ={}
Exchange3 ={}
Exchange4 ={}
Exchange5 ={}
Exchange6 ={}
Exchange7 ={}
Exchange8 ={}
Exchange9 ={}
Exchange10 ={}
Exchange11 ={}
Exchange12 ={}
Exchange13 ={}
Exchange14 ={}
Exchange15 ={}
Exchange16 ={}
Exchange17 ={}
Exchange18 ={}
Exchange19 ={}
Exchange20 ={}
Exchange21 ={}
Exchange22 ={}
Exchange23 ={}
Exchange24 ={}
Exchange25 ={}
Exchange26 ={}
Exchange27 ={}
Exchange28 ={}
Exchange29 ={}

TorgTable = {}
TorgTable[1]=4790
TorgTable[2]=1353
TorgTable[3]=1184
TorgTable[4]=4983
TorgTable[5]=3139
TorgTable[6]=4939
TorgTable[7]=1327
TorgTable[8]=1241
TorgTable[9]=4955
TorgTable[10]=1237
TorgTable[11]=1256
TorgTable[12]=4756
TorgTable[13]=4759
TorgTable[14]=4763
TorgTable[15]=4767
TorgTable[16]=4784
TorgTable[17]=4800
TorgTable[18]=4801
TorgTable[19]=4791
TorgTable[20]=4790
TorgTable[21]=4796
TorgTable[22]=4860
TorgTable[23]=4857
TorgTable[24]=4864
TorgTable[25]=4863
TorgTable[26]=4866
TorgTable[27]=4887
TorgTable[28]=4889
TorgTable[29]=4896
TorgTable[30]=3365
TorgTable[31]=3133
TorgTable[32]=1631
TorgTable[33]=1584
TorgTable[34]=4545
TorgTable[35]=1782
TorgTable[36]=1278
TorgTable[37]=1269
TorgTable[38]=4983
TorgTable[39]=1244
TorgTable[40]=4903
TorgTable[41]=4900
TorgTable[42]=4825
TorgTable[43]=4910
TorgTable[44]=4906
TorgTable[45]=4897
TorgTable[46]=178
TorgTable[47]=3822
TorgTable[48]=4324
TorgTable[49]=4840
TorgTable[50]=4736
TorgTable[51]=4722
TorgTable[52]=2324
TorgTable[53]=4434
TorgTable[54]=1210
TorgTable[55]=1782

--Ôóíêöèè òîðãîâëè
--Òîðãîâëÿ 2
function InitExchange2()
	Exchange2 = {}
	Exchange2.count = 0
	Exchange2.srcid = {}
	Exchange2.srcnum = {}
	Exchange2.tarid = {}
	Exchange2.tarnum = {}
	Exchange2.timenum = {}
end

function ExchangeData2( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange2.count = Exchange2.count + 1	
	Exchange2.srcid[Exchange2.count] = srcID
	Exchange2.srcnum[Exchange2.count] = srcNum
	Exchange2.tarid[Exchange2.count] = tarID
	Exchange2.tarnum[Exchange2.count] = tarNum
	Exchange2.timenum[Exchange2.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange2()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData2( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 3
function InitExchange3()
	Exchange3 = {}
	Exchange3.count = 0
	Exchange3.srcid = {}
	Exchange3.srcnum = {}
	Exchange3.tarid = {}
	Exchange3.tarnum = {}
	Exchange3.timenum = {}
end

function ExchangeData3( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange3.count = Exchange3.count + 1	
	Exchange3.srcid[Exchange3.count] = srcID
	Exchange3.srcnum[Exchange3.count] = srcNum
	Exchange3.tarid[Exchange3.count] = tarID
	Exchange3.tarnum[Exchange3.count] = tarNum
	Exchange3.timenum[Exchange3.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange3()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData3( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 4
function InitExchange4()
	Exchange4 = {}
	Exchange4.count = 0
	Exchange4.srcid = {}
	Exchange4.srcnum = {}
	Exchange4.tarid = {}
	Exchange4.tarnum = {}
	Exchange4.timenum = {}
end

function ExchangeData4( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange4.count = Exchange4.count + 1	
	Exchange4.srcid[Exchange4.count] = srcID
	Exchange4.srcnum[Exchange4.count] = srcNum
	Exchange4.tarid[Exchange4.count] = tarID
	Exchange4.tarnum[Exchange4.count] = tarNum
	Exchange4.timenum[Exchange4.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange4()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData4( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 5
function InitExchange5()
	Exchange5 = {}
	Exchange5.count = 0
	Exchange5.srcid = {}
	Exchange5.srcnum = {}
	Exchange5.tarid = {}
	Exchange5.tarnum = {}
	Exchange5.timenum = {}
end

function ExchangeData5( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange5.count = Exchange5.count + 1	
	Exchange5.srcid[Exchange5.count] = srcID
	Exchange5.srcnum[Exchange5.count] = srcNum
	Exchange5.tarid[Exchange5.count] = tarID
	Exchange5.tarnum[Exchange5.count] = tarNum
	Exchange5.timenum[Exchange5.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange5()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData5( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 6
function InitExchange6()
	Exchange6 = {}
	Exchange6.count = 0
	Exchange6.srcid = {}
	Exchange6.srcnum = {}
	Exchange6.tarid = {}
	Exchange6.tarnum = {}
	Exchange6.timenum = {}
end

function ExchangeData6( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange6.count = Exchange6.count + 1	
	Exchange6.srcid[Exchange6.count] = srcID
	Exchange6.srcnum[Exchange6.count] = srcNum
	Exchange6.tarid[Exchange6.count] = tarID
	Exchange6.tarnum[Exchange6.count] = tarNum
	Exchange6.timenum[Exchange6.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange6()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData6( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 7
function InitExchange7()
	Exchange7 = {}
	Exchange7.count = 0
	Exchange7.srcid = {}
	Exchange7.srcnum = {}
	Exchange7.tarid = {}
	Exchange7.tarnum = {}
	Exchange7.timenum = {}
end

function ExchangeData7( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange7.count = Exchange7.count + 1	
	Exchange7.srcid[Exchange7.count] = srcID
	Exchange7.srcnum[Exchange7.count] = srcNum
	Exchange7.tarid[Exchange7.count] = tarID
	Exchange7.tarnum[Exchange7.count] = tarNum
	Exchange7.timenum[Exchange7.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange7()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData7( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 8
function InitExchange8()
	Exchange8 = {}
	Exchange8.count = 0
	Exchange8.srcid = {}
	Exchange8.srcnum = {}
	Exchange8.tarid = {}
	Exchange8.tarnum = {}
	Exchange8.timenum = {}
end

function ExchangeData8( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange8.count = Exchange8.count + 1	
	Exchange8.srcid[Exchange8.count] = srcID
	Exchange8.srcnum[Exchange8.count] = srcNum
	Exchange8.tarid[Exchange8.count] = tarID
	Exchange8.tarnum[Exchange8.count] = tarNum
	Exchange8.timenum[Exchange8.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange8()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData8( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 9
function InitExchange9()
	Exchange9 = {}
	Exchange9.count = 0
	Exchange9.srcid = {}
	Exchange9.srcnum = {}
	Exchange9.tarid = {}
	Exchange9.tarnum = {}
	Exchange9.timenum = {}
end

function ExchangeData9( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange9.count = Exchange9.count + 1	
	Exchange9.srcid[Exchange9.count] = srcID
	Exchange9.srcnum[Exchange9.count] = srcNum
	Exchange9.tarid[Exchange9.count] = tarID
	Exchange9.tarnum[Exchange9.count] = tarNum
	Exchange9.timenum[Exchange9.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange9()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData9( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 10
function InitExchange10()
	Exchange10 = {}
	Exchange10.count = 0
	Exchange10.srcid = {}
	Exchange10.srcnum = {}
	Exchange10.tarid = {}
	Exchange10.tarnum = {}
	Exchange10.timenum = {}
end

function ExchangeData10( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange10.count = Exchange10.count + 1	
	Exchange10.srcid[Exchange10.count] = srcID
	Exchange10.srcnum[Exchange10.count] = srcNum
	Exchange10.tarid[Exchange10.count] = tarID
	Exchange10.tarnum[Exchange10.count] = tarNum
	Exchange10.timenum[Exchange10.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange10()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData10( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 11
function InitExchange11()
	Exchange11 = {}
	Exchange11.count = 0
	Exchange11.srcid = {}
	Exchange11.srcnum = {}
	Exchange11.tarid = {}
	Exchange11.tarnum = {}
	Exchange11.timenum = {}
end

function ExchangeData11( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange11.count = Exchange11.count + 1	
	Exchange11.srcid[Exchange11.count] = srcID
	Exchange11.srcnum[Exchange11.count] = srcNum
	Exchange11.tarid[Exchange11.count] = tarID
	Exchange11.tarnum[Exchange11.count] = tarNum
	Exchange11.timenum[Exchange11.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange11()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData11( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 12
function InitExchange12()
	Exchange12 = {}
	Exchange12.count = 0
	Exchange12.srcid = {}
	Exchange12.srcnum = {}
	Exchange12.tarid = {}
	Exchange12.tarnum = {}
	Exchange12.timenum = {}
end

function ExchangeData12( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange12.count = Exchange12.count + 1	
	Exchange12.srcid[Exchange12.count] = srcID
	Exchange12.srcnum[Exchange12.count] = srcNum
	Exchange12.tarid[Exchange12.count] = tarID
	Exchange12.tarnum[Exchange12.count] = tarNum
	Exchange12.timenum[Exchange12.count] = timeNum
	LG( "Èíèöèàëèçàöèÿ ÍÏÑ_error", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange12()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData12( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 13
function InitExchange13()
	Exchange13 = {}
	Exchange13.count = 0
	Exchange13.srcid = {}
	Exchange13.srcnum = {}
	Exchange13.tarid = {}
	Exchange13.tarnum = {}
	Exchange13.timenum = {}
end

function ExchangeData13( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange13.count = Exchange13.count + 1	
	Exchange13.srcid[Exchange13.count] = srcID
	Exchange13.srcnum[Exchange13.count] = srcNum
	Exchange13.tarid[Exchange13.count] = tarID
	Exchange13.tarnum[Exchange13.count] = tarNum
	Exchange13.timenum[Exchange13.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange13()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData13( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 14
function InitExchange14()
	Exchange14 = {}
	Exchange14.count = 0
	Exchange14.srcid = {}
	Exchange14.srcnum = {}
	Exchange14.tarid = {}
	Exchange14.tarnum = {}
	Exchange14.timenum = {}
end

function ExchangeData14( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange14.count = Exchange14.count + 1	
	Exchange14.srcid[Exchange14.count] = srcID
	Exchange14.srcnum[Exchange14.count] = srcNum
	Exchange14.tarid[Exchange14.count] = tarID
	Exchange14.tarnum[Exchange14.count] = tarNum
	Exchange14.timenum[Exchange14.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange14()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData14( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 15
function InitExchange15()
	Exchange15 = {}
	Exchange15.count = 0
	Exchange15.srcid = {}
	Exchange15.srcnum = {}
	Exchange15.tarid = {}
	Exchange15.tarnum = {}
	Exchange15.timenum = {}
end

function ExchangeData15( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange15.count = Exchange15.count + 1	
	Exchange15.srcid[Exchange15.count] = srcID
	Exchange15.srcnum[Exchange15.count] = srcNum
	Exchange15.tarid[Exchange15.count] = tarID
	Exchange15.tarnum[Exchange15.count] = tarNum
	Exchange15.timenum[Exchange15.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange15()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData15( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 16
function InitExchange16()
	Exchange16 = {}
	Exchange16.count = 0
	Exchange16.srcid = {}
	Exchange16.srcnum = {}
	Exchange16.tarid = {}
	Exchange16.tarnum = {}
	Exchange16.timenum = {}
end

function ExchangeData16( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange16.count = Exchange16.count + 1	
	Exchange16.srcid[Exchange16.count] = srcID
	Exchange16.srcnum[Exchange16.count] = srcNum
	Exchange16.tarid[Exchange16.count] = tarID
	Exchange16.tarnum[Exchange16.count] = tarNum
	Exchange16.timenum[Exchange16.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange16()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData16( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 17
function InitExchange17()
	Exchange17 = {}
	Exchange17.count = 0
	Exchange17.srcid = {}
	Exchange17.srcnum = {}
	Exchange17.tarid = {}
	Exchange17.tarnum = {}
	Exchange17.timenum = {}
end

function ExchangeData17( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange17.count = Exchange17.count + 1	
	Exchange17.srcid[Exchange17.count] = srcID
	Exchange17.srcnum[Exchange17.count] = srcNum
	Exchange17.tarid[Exchange17.count] = tarID
	Exchange17.tarnum[Exchange17.count] = tarNum
	Exchange17.timenum[Exchange17.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange17()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData17( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end


--Òîðãîâëÿ 18
function InitExchange18()
	Exchange18 = {}
	Exchange18.count = 0
	Exchange18.srcid = {}
	Exchange18.srcnum = {}
	Exchange18.tarid = {}
	Exchange18.tarnum = {}
	Exchange18.timenum = {}
end

function ExchangeData18( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange18.count = Exchange18.count + 1	
	Exchange18.srcid[Exchange18.count] = srcID
	Exchange18.srcnum[Exchange18.count] = srcNum
	Exchange18.tarid[Exchange18.count] = tarID
	Exchange18.tarnum[Exchange18.count] = tarNum
	Exchange18.timenum[Exchange18.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange18()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData18( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 19
function InitExchange19()
	Exchange19 = {}
	Exchange19.count = 0
	Exchange19.srcid = {}
	Exchange19.srcnum = {}
	Exchange19.tarid = {}
	Exchange19.tarnum = {}
	Exchange19.timenum = {}
end

function ExchangeData19( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange19.count = Exchange19.count + 1	
	Exchange19.srcid[Exchange19.count] = srcID
	Exchange19.srcnum[Exchange19.count] = srcNum
	Exchange19.tarid[Exchange19.count] = tarID
	Exchange19.tarnum[Exchange19.count] = tarNum
	Exchange19.timenum[Exchange19.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange19()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData19( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 20
function InitExchange20()
	Exchange20 = {}
	Exchange20.count = 0
	Exchange20.srcid = {}
	Exchange20.srcnum = {}
	Exchange20.tarid = {}
	Exchange20.tarnum = {}
	Exchange20.timenum = {}
end

function ExchangeData20( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange20.count = Exchange20.count + 1	
	Exchange20.srcid[Exchange20.count] = srcID
	Exchange20.srcnum[Exchange20.count] = srcNum
	Exchange20.tarid[Exchange20.count] = tarID
	Exchange20.tarnum[Exchange20.count] = tarNum
	Exchange20.timenum[Exchange20.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange20()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData20( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 21
function InitExchange21()
	Exchange21 = {}
	Exchange21.count = 0
	Exchange21.srcid = {}
	Exchange21.srcnum = {}
	Exchange21.tarid = {}
	Exchange21.tarnum = {}
	Exchange21.timenum = {}
end

function ExchangeData21( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange21.count = Exchange21.count + 1	
	Exchange21.srcid[Exchange21.count] = srcID
	Exchange21.srcnum[Exchange21.count] = srcNum
	Exchange21.tarid[Exchange21.count] = tarID
	Exchange21.tarnum[Exchange21.count] = tarNum
	Exchange21.timenum[Exchange21.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange21()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData21( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 22
function InitExchange22()
	Exchange22 = {}
	Exchange22.count = 0
	Exchange22.srcid = {}
	Exchange22.srcnum = {}
	Exchange22.tarid = {}
	Exchange22.tarnum = {}
	Exchange22.timenum = {}
end

function ExchangeData22( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange22.count = Exchange22.count + 1	
	Exchange22.srcid[Exchange22.count] = srcID
	Exchange22.srcnum[Exchange22.count] = srcNum
	Exchange22.tarid[Exchange22.count] = tarID
	Exchange22.tarnum[Exchange22.count] = tarNum
	Exchange22.timenum[Exchange22.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange22()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData22( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 23
function InitExchange23()
	Exchange23 = {}
	Exchange23.count = 0
	Exchange23.srcid = {}
	Exchange23.srcnum = {}
	Exchange23.tarid = {}
	Exchange23.tarnum = {}
	Exchange23.timenum = {}
end

function ExchangeData23( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange23.count = Exchange23.count + 1	
	Exchange23.srcid[Exchange23.count] = srcID
	Exchange23.srcnum[Exchange23.count] = srcNum
	Exchange23.tarid[Exchange23.count] = tarID
	Exchange23.tarnum[Exchange23.count] = tarNum
	Exchange23.timenum[Exchange23.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange23()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData23( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 24
function InitExchange24()
	Exchange24 = {}
	Exchange24.count = 0
	Exchange24.srcid = {}
	Exchange24.srcnum = {}
	Exchange24.tarid = {}
	Exchange24.tarnum = {}
	Exchange24.timenum = {}
end

function ExchangeData24( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange24.count = Exchange24.count + 1	
	Exchange24.srcid[Exchange24.count] = srcID
	Exchange24.srcnum[Exchange24.count] = srcNum
	Exchange24.tarid[Exchange24.count] = tarID
	Exchange24.tarnum[Exchange24.count] = tarNum
	Exchange24.timenum[Exchange24.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange24()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
	local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData24( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 25
function InitExchange25()
	Exchange25 = {}
	Exchange25.count = 0
	Exchange25.srcid = {}
	Exchange25.srcnum = {}
	Exchange25.tarid = {}
	Exchange25.tarnum = {}
	Exchange25.timenum = {}
end

function ExchangeData25( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange25.count = Exchange25.count + 1	
	Exchange25.srcid[Exchange25.count] = srcID
	Exchange25.srcnum[Exchange25.count] = srcNum
	Exchange25.tarid[Exchange25.count] = tarID
	Exchange25.tarnum[Exchange25.count] = tarNum
	Exchange25.timenum[Exchange25.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange25()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData25( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 26
function InitExchange26()
	Exchange26 = {}
	Exchange26.count = 0
	Exchange26.srcid = {}
	Exchange26.srcnum = {}
	Exchange26.tarid = {}
	Exchange26.tarnum = {}
	Exchange26.timenum = {}
end

function ExchangeData26( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange26.count = Exchange26.count + 1	
	Exchange26.srcid[Exchange26.count] = srcID
	Exchange26.srcnum[Exchange26.count] = srcNum
	Exchange26.tarid[Exchange26.count] = tarID
	Exchange26.tarnum[Exchange26.count] = tarNum
	Exchange26.timenum[Exchange26.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange26()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData26( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 27
function InitExchange27()
	Exchange27 = {}
	Exchange27.count = 0
	Exchange27.srcid = {}
	Exchange27.srcnum = {}
	Exchange27.tarid = {}
	Exchange27.tarnum = {}
	Exchange27.timenum = {}
end

function ExchangeData27( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange27.count = Exchange27.count + 1	
	Exchange27.srcid[Exchange27.count] = srcID
	Exchange27.srcnum[Exchange27.count] = srcNum
	Exchange27.tarid[Exchange27.count] = tarID
	Exchange27.tarnum[Exchange27.count] = tarNum
	Exchange27.timenum[Exchange27.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange27()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData27( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 28
function InitExchange28()
	Exchange28 = {}
	Exchange28.count = 0
	Exchange28.srcid = {}
	Exchange28.srcnum = {}
	Exchange28.tarid = {}
	Exchange28.tarnum = {}
	Exchange28.timenum = {}
end

function ExchangeData28( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange28.count = Exchange28.count + 1	
	Exchange28.srcid[Exchange28.count] = srcID
	Exchange28.srcnum[Exchange28.count] = srcNum
	Exchange28.tarid[Exchange28.count] = tarID
	Exchange28.tarnum[Exchange28.count] = tarNum
	Exchange28.timenum[Exchange28.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange28()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData28( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 29
function InitExchange29()
	Exchange29 = {}
	Exchange29.count = 0
	Exchange29.srcid = {}
	Exchange29.srcnum = {}
	Exchange29.tarid = {}
	Exchange29.tarnum = {}
	Exchange29.timenum = {}
end

function ExchangeData29( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange29.count = Exchange29.count + 1	
	Exchange29.srcid[Exchange29.count] = srcID
	Exchange29.srcnum[Exchange29.count] = srcNum
	Exchange29.tarid[Exchange29.count] = tarID
	Exchange29.tarnum[Exchange29.count] = tarNum
	Exchange29.timenum[Exchange29.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange29()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		local sum = 0
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif  intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51  then 
			sum = 80
		end
		ExchangeData29( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end

--Òîðãîâëÿ 30
function InitExchange30()
	Exchange30 = {}
	Exchange30.count = 0
	Exchange30.srcid = {}
	Exchange30.srcnum = {}
	Exchange30.tarid = {}
	Exchange30.tarnum = {}
	Exchange30.timenum = {}
end

function ExchangeData30( srcID, srcNum, tarID, tarNum, timeNum )
	if srcID == nil or srcNum == nil or tarID == nil or tarNum == nil or timeNum == nil then
		LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
		return
	end
	Exchange30.count = Exchange30.count + 1	
	Exchange30.srcid[Exchange30.count] = srcID
	Exchange30.srcnum[Exchange30.count] = srcNum
	Exchange30.tarid[Exchange30.count] = tarID
	Exchange30.tarnum[Exchange30.count] = tarNum
	Exchange30.timenum[Exchange30.count] = timeNum
	LG( "Îøèáêè ÍÏÑ(Îáìåí)", "ExchangeData: Function parameter error!srcID, srcNum, tarID, tarNum, timeNum", srcID, srcNum, tarID, tarNum, timeNum )
end

function DoExchange30()
	local intMoney =0
	local intGoods =0
	local intMoneyNum =0
	local intNum=0
	local intCount=0
	local sum =  1
	for intCount=1 , 8 ,1 do
		intNum = math.random(1,4)
		if intNum == 1 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum == 2 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==3 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		elseif intNum ==4 then	
			intMoney = TorgTable[math.random(1,55)]
			intMoneyNum =   math.random(25,65)
			intGoods = 8141
		
		end
		if intMoneyNum>=25 and intMoneyNum<=35 then
			sum = 25
		elseif intMoneyNum>=36 and intMoneyNum <=50 then
			sum = 40
		elseif intMoneyNum>=51 then 
			sum = 80
		end
		ExchangeData30( intMoney, intMoneyNum , intGoods, sum, 1 )
		intNum = intNum +1 
	end
end


















