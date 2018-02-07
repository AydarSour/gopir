--Функции при использовании скиллов

print("‡ Јаг§Є  skilleffect.lua")


dofile(GetResPath("script\\calculate\\exp_and_level.lua"))
dofile(GetResPath("script\\calculate\\exp_and_level.lua"))
dofile(GetResPath("script\\calculate\\JobType.lua"))
dofile(GetResPath("script\\calculate\\AttrType.lua"))
dofile(GetResPath("script\\calculate\\Init_Attr.lua"))
dofile(GetResPath("script\\calculate\\ItemAttrType.lua")) 
dofile(GetResPath("script\\calculate\\functions.lua"))
dofile(GetResPath("script\\calculate\\AttrCalculate.lua")) 
dofile(GetResPath("script\\calculate\\ItemEffect.lua")) 
dofile(GetResPath("script\\calculate\\variable.lua"))
dofile(GetResPath("script\\calculate\\Look.lua"))
dofile(GetResPath("script\\calculate\\forge.lua"))
dofile(GetResPath("script\\calculate\\ItemGetMission.lua"))

CheckDmgChaNameTest = {}
CheckDmgChaNameTest [0] = "Re©YЁKОЙ©зАБ"
CheckDmgChaNameTest [1] = "Carsise"      
CheckDmgChaNameTest [2] = "I am rubbish"    
CheckDmgChaNameTest [3] = "CG mao mao"      
CheckDmgChaNameTest [4] = "Chief mate against"

--
BOSSWOD = {}
BOSSWOD[978] = 12
BOSSWOD[796] = 12
BOSSWOD[685] = 12
BOSSWOD[815] = 12


-- 0086    Теневой удар по боссам Абаддона
BOSSXYSJ = {}
BOSSXYSJ[979] = RAID_Skill_for_boss * 3    -- Барон-фантом
BOSSXYSJ[980] = RAID_Skill_for_boss * 12    -- Огненный демон
BOSSXYSJ[981] = RAID_Skill_for_boss * 6    -- Злобное отродье
BOSSXYSJ[982] = RAID_Skill_for_boss * 4    -- Тайран
BOSSXYSJ[983] = RAID_Skill_for_boss * 12    -- Феникс
BOSSXYSJ[984] = RAID_Skill_for_boss * 16    -- Отчаяние
BOSSXYSJ[985] = RAID_Skill_for_boss * 16    -- Дракан
BOSSXYSJ[986] = RAID_Skill_for_boss * 12    -- Тидаль
BOSSXYSJ[987] = RAID_Skill_for_boss * 4    -- Хардин
BOSSXYSJ[988] = RAID_Skill_for_boss * 4    -- Кара
BOSSXYSJ[789] = RAID_Skill_for_boss * 5    -- БД
BOSSXYSJ[807] = RAID_Skill_for_boss * 5    --Барба
BOSSXYSJ[805] = RAID_Skill_for_boss * 5    --КМД
--BOSSXYSJ[] = RAID_Skill_for_boss * 

-- 0095    Ослабление по боссам 
BOSSSJSJ = {}
BOSSSJSJ[979] = RAID_Skill_for_boss * 8
BOSSSJSJ[980] = RAID_Skill_for_boss * 1
BOSSSJSJ[981] = RAID_Skill_for_boss * 6
BOSSSJSJ[982] = RAID_Skill_for_boss * 4
BOSSSJSJ[983] = RAID_Skill_for_boss * 6
BOSSSJSJ[984] = RAID_Skill_for_boss * 8
BOSSSJSJ[985] = RAID_Skill_for_boss * 8
BOSSSJSJ[986] = RAID_Skill_for_boss * 6
BOSSSJSJ[987] = RAID_Skill_for_boss * 4
BOSSSJSJ[988] = RAID_Skill_for_boss * 4
BOSSSJSJ[789] = RAID_Skill_for_boss * 3
BOSSSJSJ[807] = RAID_Skill_for_boss * 5
BOSSSJSJ[805] = RAID_Skill_for_boss * 5
--BOSSSJSJ[] = RAID_Skill_for_boss * 

-- 0094    Калечащий выстрел по боссам 
BOSSTJSJ = {}
BOSSTJSJ[979] = RAID_Skill_for_boss * 8
BOSSTJSJ[980] = RAID_Skill_for_boss * 1
BOSSTJSJ[981] = RAID_Skill_for_boss * 6
BOSSTJSJ[982] = RAID_Skill_for_boss * 4
BOSSTJSJ[983] = RAID_Skill_for_boss * 6
BOSSTJSJ[984] = RAID_Skill_for_boss * 8
BOSSTJSJ[985] = RAID_Skill_for_boss * 6
BOSSTJSJ[986] = RAID_Skill_for_boss * 6
BOSSTJSJ[987] = RAID_Skill_for_boss * 4
BOSSTJSJ[988] = RAID_Skill_for_boss * 4
BOSSTJSJ[789] = RAID_Skill_for_boss * 3
BOSSTJSJ[807] = RAID_Skill_for_boss * 3
BOSSTJSJ[805] = RAID_Skill_for_boss * 5
--BOSSTJSJ[] = RAID_Skill_for_boss * 

-- 0104    Печать старейшины по боссам 
BOSSXZSJ = {}
BOSSXZSJ[979] = RAID_Skill_for_boss * 6
BOSSXZSJ[980] = RAID_Skill_for_boss * 6
BOSSXZSJ[981] = RAID_Skill_for_boss * 8
BOSSXZSJ[982] = RAID_Skill_for_boss * 8
BOSSXZSJ[983] = RAID_Skill_for_boss * 6
BOSSXZSJ[984] = RAID_Skill_for_boss * 4
BOSSXZSJ[985] = RAID_Skill_for_boss * 1
BOSSXZSJ[986] = RAID_Skill_for_boss * 6
BOSSXZSJ[987] = RAID_Skill_for_boss * 4
BOSSXZSJ[988] = RAID_Skill_for_boss * 4
BOSSXZSJ[789] = RAID_Skill_for_boss * 3
BOSSXZSJ[807] = RAID_Skill_for_boss * 9
BOSSXZSJ[805] = RAID_Skill_for_boss * 9
--BOSSXZSJ[] = RAID_Skill_for_boss * 

-- 0105    Росчерк тени по боссам 
BOSSAYSJ = {}
BOSSAYSJ[979] = RAID_Skill_for_boss * 6
BOSSAYSJ[980] = RAID_Skill_for_boss * 7
BOSSAYSJ[981] = RAID_Skill_for_boss * 6
BOSSAYSJ[982] = RAID_Skill_for_boss * 7
BOSSAYSJ[983] = RAID_Skill_for_boss * 6
BOSSAYSJ[984] = RAID_Skill_for_boss * 4
BOSSAYSJ[985] = RAID_Skill_for_boss * 1
BOSSAYSJ[986] = RAID_Skill_for_boss * 6
BOSSAYSJ[987] = RAID_Skill_for_boss * 4
BOSSAYSJ[988] = RAID_Skill_for_boss * 4 
BOSSAYSJ[789] = RAID_Skill_for_boss * 3
BOSSAYSJ[807] = RAID_Skill_for_boss * 3
BOSSAYSJ[805] = RAID_Skill_for_boss * 3  
--BOSSAYSJ[] =  

--Расчет дропа
function Check_Baoliao(ATKER, DEFER, ... ) 
    local diaoliao_count = arg.n 
	local map_name_ATKER = GetChaMapName ( ATKER )
	local RAID_MAP = 1
	local RAID_Mor = 1
	local RAID_EV_PL = 1
	local RAID_EVENT_TERR=1
	--LuaPrint("Enter function Check_Baoliao(Atker,Defer,mf_atker,mf_defer) --[[determine if it is drop item]]--".."\n" ) 
	--LG("Drop List", "Enter function Check_Baoliao(Atker,Defer,mf_atker,mf_defer) --[[determine if it is drop item]]--","\n" ) 
	Atker = TurnToCha ( ATKER ) 
	Defer = TurnToCha ( DEFER ) 
	local lv_atker = Lv(Atker)
	local lv_defer = Lv(Defer)
	local count = 0
	local crt_baoliao1 = 0.1 
	local crt_baoliao2 = 0.01 
	local crt_baoliao3 = 0.00001
	local AUTO_RAID_MF = 1
	local MF_RAID_STATE = 1
	local LVL_DROP = 1
	local MF_VIP_RAID_NEWBIE = 1
	local MF_VIP_RAID = 1
	local StateLv = GetChaStateLv ( ATKER , STATE_SBBLGZ )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( ATKER )
	item = {} 
	local bsmf = 1
	bsmf = GetChaAttr(ATKER, ATTR_STATEV_MF) 
	
	if SCHET >= 0 and SCHET < SCORE_PL_1 then
			RAID_EV_PL = 1
		elseif SCHET > SCORE_PL_1 and SCHET < SCORE_PL_2 then
			RAID_EV_PL = 2.02
		elseif SCHET > SCORE_PL_2 and SCHET < SCORE_PL_3 then
			RAID_EV_PL = 2.12
		elseif SCHET > SCORE_PL_3 and SCHET < SCORE_PL_4 then
			RAID_EV_PL = 2.22
		elseif SCHET > SCORE_PL_4 and SCHET < SCORE_PL_5 then
			RAID_EV_PL = 2.42
		elseif SCHET > SCORE_PL_5 and SCHET < SCORE_PL_6 then
			RAID_EV_PL = 2.84
		elseif SCHET > SCORE_PL_6 and SCHET < SCORE_PL_7 then
			RAID_EV_PL = 3.12
		elseif SCHET > SCORE_PL_7 and SCHET < SCORE_PL_8 then
			RAID_EV_PL = 4.22
		elseif SCHET > SCORE_PL_8 and SCHET < SCORE_PL_9 then
			RAID_EV_PL = 4.44
		elseif SCHET > SCORE_PL_9 and SCHET < SCORE_PL_10 then
			RAID_EV_PL = 5.88
		elseif SCHET > SCORE_PL_10 and SCHET < SCORE_PL_11 then
			RAID_EV_PL = 6.00
		end
	
	if bsmf < 100 or bsmf == nil then 
		bsmf = 100 
	end

	if IsPlayer(Defer) == 1 then
		if IsInGymkhana(Defer) == 1 then 
				count = 1 
			if lv_defer - lv_atker >= 5 then
				item[count] = 1
			elseif lv_defer - lv_atker <= (- 5)  then
				item[count] = 3
			else
				item[count] = 2
			end
			SetItemFall ( count , item[1] , item[2] , item[3] , item[4] , item[5] , item[6], item[7] ,item[8],item[9],item[10] )
		end 
	else

		--LG("Drop List", "drop list rate= ", bsmf ,"\n") 
		if diaoliao_count <= 0 or diaoliao_count > 10 then 
			--LG("baoliao_err", "function Check_Baoliao : " , " drop list exceeded 10: diaoliao_count = " , diaoliao_count ) 
			return 
		end 
	--Рейты на карте
	if map_name_ATKER =="abandonedcity" or map_name_ATKER=="abandonedcity2" or map_name_ATKER=="abandonedcity3" then 
		RAID_MAP=0.5 -- Шанс в ФС
	elseif map_name_ATKER == "darkswamp" then
		RAID_MAP=0.5 -- Шанс в ДС
	elseif map_name_ATKER == "garner2" then
		RAID_MAP=0.5 -- Шанс в ХС
	elseif map_name_ATKER == "07xmas" then
		RAID_MAP=0.5 -- Шанс в СНВ
	elseif map_name_ATKER == "puzzleworld" or map_name_ATKER == "puzzleworld2"  then
		RAID_MAP=0.9 -- Шанс в ДВ
	elseif map_name_ATKER == "garner" or map_name_ATKER == "darkblue" or map_name_ATKER == "magicsea" then
		RAID_MAP=0.7 -- Шанс в Лоаках
	elseif map_name_ATKER == "bountypk"  then
		RAID_MAP=0.5 -- Шанс в Лоаках
	else 
		RAID_MAP=0.4 -- Не данж 
	end
	
	if Cha_Boat ~= nil then 
		RAID_Mor = 0.08
	end 
	--Повышение дропа от зя бу буу
	if StateLv >= 0 and StateLv <= 10 then
			
			if StateLv <= 1  or StateLv==nil then 
				MF_RAID_STATE = 1
			elseif  StateLv > 1 then
				MF_RAID_STATE = StateLv
			end
			
		--Доп дроп для владельца карты
	  local Map = GetChaMapName(ATKER) -- получаем карту
	  local name = GetChaDefaultName(ATKER)
	  local Guild_ID = GetChaGuildID(ATKER)
	  local Guild_name = GetGuildName( Guild_ID )
		 if (Guild_name ==TerrDark) or  (Guild_name ==TerrGarn) or  (Guild_name ==TerrMagi) or (name==TerrDarkSol) or (name==TerrGarnSol) or (name==TerrMagiSol)  then
			 if Map == "garner" then 
				 if Guild_name==TerrGarn or TerrGarnSol == name then
					 RAID_MAP = RAID_MAP + 1.5
				 end
			 end
			 if Map == "magicsea" then 
				 if Guild_name==TerrMagi or TerrMagiSol == name then
					 RAID_MAP = RAID_MAP + 1.5
				 end
			end
			 if Map == "darkblue" then 
				 if Guild_name==TerrDark or TerrDarkSol == name then
					 RAID_MAP = RAID_MAP + 1.5
				 end
			 end
			end
			

--Рейты для новых игроков до 80 уровня Дроп выше
	if lv_atker >= 1 and lv_atker <= 10 then
		LVL_DROP = 3* Raid_EXP_FUN
	elseif lv_atker >= 11 and lv_atker <= 20 then
		LVL_DROP = 2.5* Raid_EXP_FUN
	elseif lv_atker >= 21 and lv_atker <= 30 then
		LVL_DROP = 2.4* Raid_EXP_FUN
	elseif lv_atker >= 31 and lv_atker <= 40 then
		LVL_DROP = 2.3* Raid_EXP_FUN
	elseif lv_atker >= 41 and lv_atker <= 50 then
		LVL_DROP = 1.3* Raid_EXP_FUN
	elseif lv_atker >= 51 and lv_atker <= 60 then
		LVL_DROP = 1.2* Raid_EXP_FUN
	elseif lv_atker >= 61 and lv_atker <= 70 then
		LVL_DROP = 1.1* Raid_EXP_FUN
	elseif lv_atker >= 71 and lv_atker <= 80 then
		LVL_DROP = 1.0* Raid_EXP_FUN
	else
		LVL_DROP = 1* Raid_EXP_FUN
	end

--Авто рейты на выходные
	if AUTO_RAID_MF_START == 1 then
		local now_week= os.date("%w")
		local now_hour= os.date("%H")
		local now_miniute= os.date("%M")
		now_week= tonumber(now_week)   
		now_hour= tonumber(now_hour)
		now_miniute= tonumber(now_miniute)
		local CheckDateNum = now_hour*100 +now_miniute
		--начало в пятницу с 19.00
		if now_week == 5 then
			if CheckDateNum >= 1900 then
				AUTO_RAID_MF = 1.3
			else
				AUTO_RAID_MF = 1
			end
		elseif now_week == 6 or now_week == 7 then
			AUTO_RAID_MF = 1.3
		--конец в понедельник в 12.00
		elseif now_week == 1 then
			if CheckDateNum <= 1200 then
				AUTO_RAID_MF = 1.3
			else
				AUTO_RAID_MF = 1
			end
		else
			AUTO_RAID_MF = 1
		end
	else
		AUTO_RAID_MF = 1
	end
		for i = 1 , diaoliao_count , 1 do 
			if arg[i] >= 100 then 
				mf = math.min ( 1, 100 / arg[i] * ( bsmf / 100 ) ) * MF_RAID * MF_RAID_STATE * LVL_DROP * AUTO_RAID_MF * MF_VIP_RAID_NEWBIE * MF_VIP_RAID * RAID_MAP  * RAID_Mor * RAID_EVENT_TERR * RAID_EV_PL
				a = Percentage_Random(mf) 
				if a == 1 then 
					count = count + 1 
					item[count] = i 
				end 
							else 
				--LG("baoliao_err", "function Check_Baoliao : " , " drop item rate error ", "Round", i , "kind of drop list rate= " , arg[i] )  
							end 
		end 
		--LG("Drop List" , "function Check_Baoliao : " , "count = " , count , "item[1] =" ,item[1] , "item[2] = " , item[2], "item[3] = " , item[3] ,  "item[4] = " ,item[4] , "item[5] = " , item[5] , "item[6] = " ,item[6] , "item[7] = " ,item[7], "item[8] = " ,item[8], "item[9] = " ,item[9], "item[10] = " ,item[10]) 
		SetItemFall ( count , item[1] , item[2] , item[3] , item[4] , item[5] , item[6], item[7] ,item[8],item[9],item[10] )  
	end

	end 
end
--генерация дропа с моба
function Check_SpawnResource ( ATKER, DEFER , lv_skill , diaoliao_count , ...) 
	item = {} 
	local count = 0 
	local bsmf=1  
	if diaoliao_count <= 0 or diaoliao_count > 10 then 
		
		return 
	end 
	local ResourceGet_RAID = 1
	local ResourceItemUse_Check = 0
	ResourceItemUse_Check = CheckCha_ResourceItemUse ( ATKER )
	
	if ResourceItemUse_Check == 1 then
		ResourceGet_RAID = 4
	end

	local UnNormal_ResourceID_Num = 1
	local UnNormal_ResourceID = {}
	UnNormal_ResourceID[0] = 777
	UnNormal_ResourceID[1] = 778

	local Resource_ID = GetChaTypeID( DEFER )

	local Un_C = 0
	
	for Un_C = 0 , UnNormal_ResourceID_Num , 1 do
		if Resource_ID == UnNormal_ResourceID[Un_C] then
			ResourceGet_RAID = 1
		end
	end
	local Tree_ID = GetChaTypeID( DEFER )
	local Tree_hp = Hp( DEFER )
	local i = 0
	
	for Un_C = 0 , UnNormal_ResourceID_Num , 1 do	
		if Tree_ID == UnNormal_ResourceID[Un_C] then
lv_skill = 0
		end
	end

	for i = 1 , diaoliao_count , 1 do
		if arg[i] >= 100 then 
			mf = math.min ( 1, 100 / arg[i] * bsmf * (1 + lv_skill * 0.1 ) ) * ResourceGet_RAID * Resource_RAID_ADJUST
			a = Percentage_Random(mf) 
			if a == 1 then 
count = count + 1 
item[count] = i 
			end 
		else 
			--LG("mine burst_err", "function Check_SpawnResource : " , " drop item rate error ", "Round", i , "kind of drop list rate= " , arg[i] )  
		end 
	end 

	if count >= 1 then 
		item[1] = item[count]  
		count = 1 
	end 
	SetItemFall ( count , item[1] , item[2] , item[3] , item[4] , item[5] , item[6], item[7] ,item[8],item[9],item[10] )  
end 

function CheckCha_ResourceItemUse ( role )
	local Item_Use = GetChaItem ( role , 1 , 9 )
	local ItemID_Use = GetItemID ( Item_Use )
	
	if ItemID_Use == 207 or ItemID_Use == 208 then
		return 1
	end
	return 0
end

function SetSus( role , sus ) 
	if sus == 0 then 
		SkillMiss( role )  
	elseif sus==2 then 
		SkillCrt( role )  
	end 
end 

-- МИЛИ-АТАКА
function Skill_Melee_Begin ( role , sklv ) 
end 

function Skill_Melee_End ( ATKER , DEFER , sklv )
		if ValidCha(ATKER) == 0 then 
			LG ( "luascript_err" , "function Skill_Melee_End : ATKER as null" ) 
			return 
		end 
		if ValidCha(DEFER) == 0 then 
			LG ( "luascript_err" , "function Skill_Melee_End : DEFER as null" ) 
			return 
		end 
		local ChaName_ATKER = GetChaDefaultName ( ATKER )
		local ChaName_DEFER = GetChaDefaultName ( DEFER )

		dmg = Atk_Dmg( ATKER, DEFER )
		sus,dmgsa = Check_MisorCrt( ATKER , DEFER )
		SetSus( DEFER , sus )

		if dmgsa == 1 then
			local Elf_Item = CheckHaveElf ( ATKER )
			if Elf_Item ~= 0 then
local Num = GetItemForgeParam ( Elf_Item , 1 )
local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 2 )
local ElfCrt = 0
if CheckElfSkill == 2 then
	ElfCrt = ElfSKill_ElfCrt ( ATKER , Elf_Item , Num )
	if ElfCrt == 1 then
		SystemNotice ( ATKER , "Ваша фея использовала Берсерк. Бонус к атаке!" )
		SystemNotice ( DEFER , "Вражеская фея использовала Берсерк. Бонус к атаке!" )
		dmgsa = 2
		SetSus( DEFER , sus )
	end
end
			end
		end
		hpdmg = math.floor( dmg*dmgsa )	
		Hp_Endure_Dmg( DEFER , hpdmg )
		Take_Atk_ItemURE ( ATKER )
		Take_Def_ItemURE ( DEFER )

		local Check_Nianshou = CheckItem_Nianshou ( ATKER )
		
		if Check_Nianshou == 1 then
			local P_R = 0.1
			local job = GetChaAttr( ATKER , ATTR_JOB )
			if job == 5 then
P_R = 0.03
			end
			local Percentage = Percentage_Random ( P_R )
			if Percentage == 1 then
				AddState ( ATKER , DEFER , STATE_XY , 1 , 1 )
SystemNotice ( ATKER , "Получено благословение Богини. Противник оглушен на 1 сек.")
			end
		end
		
		Check_Ys_Rem ( ATKER , DEFER)
 end 

-- РЕЙНДЖ-АТАКА
function Skill_Range_Begin ( role , sklv ) 
end 

function Skill_Range_End ( ATKER , DEFER , sklv )
	if ValidCha(ATKER) == 0 then 
		LG ( "luascript_err" , "function Skill_Range_End : ATKER as null" ) 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		LG ( "luascript_err" , "function Skill_Range_End : DEFER as null" ) 
		return 
	end 
		local ChaName_ATKER = GetChaDefaultName ( ATKER )
		local ChaName_DEFER = GetChaDefaultName ( DEFER )

		dmg = Atk_Dmg( ATKER , DEFER )
		sus,dmgsa = Check_MisorCrt( ATKER, DEFER )
		SetSus(DEFER , sus)
		if dmgsa == 1 then
			local Elf_Item = CheckHaveElf ( ATKER )
			if Elf_Item ~= 0 then
local Num = GetItemForgeParam ( Elf_Item , 1 )
local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 2 )
local ElfCrt = 0
if CheckElfSkill == 2 then
	ElfCrt = ElfSKill_ElfCrt ( ATKER , Elf_Item , Num )
	if ElfCrt == 1 then
		SystemNotice ( ATKER , "Ваша фея использовала Берсерк. Бонус к атаке!" )
		SystemNotice ( DEFER , "Вражеская фея использовала Берсерк. Бонус к атаке!" )
		dmgsa = 2
		SetSus( DEFER , sus )
	end
end
			end
		end
		
		hpdmg = math.floor( dmg*dmgsa )
		Hp_Endure_Dmg( DEFER , hpdmg )
		Take_Atk_ItemURE ( ATKER )
		Take_Def_ItemURE ( DEFER )

		local Check_Nianshou = CheckItem_Nianshou ( ATKER )
		
		if Check_Nianshou == 1 then
			local Percentage = Percentage_Random ( 0.1 )
			if Percentage == 1 then
AddState ( ATKER , DEFER , STATE_XY , 1 , 1 )
SystemNotice ( ATKER , "Получено благословение Богини. Противник оглушен на 1 сек.")
			end
		end

		Check_Ys_Rem ( ATKER , DEFER )
end 

function Mis_or_Crt(a,b)			
	local m=Percentage_Random(a)	
	local n=Percentage_Random(b)	
	local rom,dmgsa=1,1  
	if m==1 then 
		rom=0 dmgsa=0 
	elseif n==1 then 
		rom=2 dmgsa=2 
	end	
	return rom,dmgsa 
end 

function Phy_Dmg (atk, def, resist )
	local phy_atk = atk 
	local phy_def = def 
	local phy_resist = resist 
	
	dmg = math.floor( phy_atk  * (1 - math.min (0.85 , phy_resist/80 )  ) - phy_def*1.06 ) 
	
	
	return dmg 
end 

function Phy_Dmg_A (a,b,atk, def, resist )
	local phy_atk = atk 
	local phy_def = def 
	local phy_resist = resist 
	local map_name_ATKER = GetChaMapName ( a )
	local map_name_DEFER = GetChaMapName ( b )
	local Can_Pk_Garner2 = Is_NormalMonster (b)
		
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			if Can_Pk_Garner2 == 0 then
			dmg = math.floor( phy_atk  - phy_def ) * (1 - math.min (0.85 , phy_resist/100 )  ) 
			return dmg 
			end
		end
	dmg = math.floor( phy_atk  * (1 - math.min (0.85 , phy_resist/100 )  ) - phy_def ) 
	
	return dmg 
end 

function Pow_Dmg (atk, def, resist ) 
	local pow_atk = atk 
	local pow_def = def 
	local pow_resist = resist 
	dmg = math.floor( pow_atk * (1 - math.min(0.85 ,  pow_resist/100 )  ) - pow_def ) 
	return dmg 
end 


function Atk_Dmg(a,b) 
	local atk_mnatk = Mnatk(a) 
	local atk_mxatk = Mxatk(a) 
	local defer_def = Def(b)  
	local defer_resist = Resist(b)  
	local atker_lv = Lv ( TurnToCha(a) ) 
	local defer_lv = Lv ( TurnToCha(b) ) 
	local lv_dis = atker_lv - defer_lv 
	local lv_eff = 1 
	if math.abs (lv_dis) >= 1 then 
		lv_eff =math.min (  math.max ( 0.8 , 1 + 0.025 * lv_dis ) , 1.2 )  
	end 
	local atk = 0
	
	if atk_mnatk > atk_mxatk then
		 atk = math.random( atk_mxatk , atk_mnatk ) 
	else
		 atk = math.random( atk_mnatk , atk_mxatk ) 
	end
	local dmg = Phy_Dmg ( atk, defer_def , defer_resist )  
	local map_name_ATKER = GetChaMapName ( a )
	local map_name_DEFER = GetChaMapName ( b )
	local Can_Pk_Garner2 = Is_NormalMonster (b)
		
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			if Can_Pk_Garner2 == 0 then
			dmg = Phy_Dmg_A ( a,b,atk, defer_def , defer_resist )
			end
		end
	local mndmg = math.floor(  Lv( TurnToCha(a) ) * 0.25 + Mnatk(a) * 0 ) + 1
	dmg =math.max(  lv_eff * dmg, mndmg ) 
	return dmg 
end 

function Fire_Dmg(a,b) 
	local defer_def = Def(b)  
	local defer_resist = Resist(b)  
	local atker_lv = Lv ( TurnToCha(a) ) 
	local defer_lv = Lv ( TurnToCha(b) ) 
	local lv_dis = atker_lv - defer_lv 
	local lv_eff = 1 
	if math.abs (lv_dis) >= 5 then 
		lv_eff =math.min (  math.max ( 0.8 , 1 + 0.025 * lv_dis ) , 1.2 )  
	end 
	
	local atk = 0
	
	if ( Mnatk(a) > Mxatk(a) ) then
		atk =  math.random( Mxatk(a), Mnatk(a) ) 
	else
		atk =  math.random( Mnatk(a), Mxatk(a) )
	end	
	
	local dmg = Pow_Dmg ( atk, defer_def , defer_resist ) 
	local mndmg = math.floor(  Lv(TurnToCha(a) ) * 0.25 + Mnatk(a) * 0 ) + 1
	dmg = math.max( dmg, mndmg ) 
	return dmg 
end 

function Check_MisorCrt(a,b) 
	local def_flee = Flee(b) 
	local atk_hit = Hit(a) 
	local def_lv = Lv( TurnToCha(b) ) 
	local atk_lv = Lv( TurnToCha(a) ) 
	local lv_dis = atk_lv - def_lv 
	local lv_eff = 0 
	if math.abs (lv_dis) >= 1 then 
		lv_eff =math.min (  math.max ( 0 ,  0.03 * lv_dis ) , 0.15 )  
	end 
	local dif_hit_flee = Flee(b) - Hit(a) 
	local bsmiss = math.max( ((def_flee - atk_hit) + 10)/100 , 0) 
	local miss = math.min( 0.9, bsmiss ) 
	local crt = math.min ( lv_eff + Crt( a ) , 1 ) 
	local sus,dmgsa=Mis_or_Crt( miss, crt ) 
	return sus,dmgsa 
end 

--function MAGIC_Atk_Dmg(a,b) --[[јЖЛгЖХНЁ№Ґ»чµД»щ±ѕХэіЈЙЛє¦]]--
--	Check_State ( a , b ) 
--	--LuaPrint("Enter function Atk_Dmg(a,b) --[[calculate normal attack base normal damage]]--".."\n") 
--	--LG("Atk_Dmg","Enter function Atk_Dmg(a,b) --[[calculate normal attack base normal damage]]--", "\n" ) 
--	local atk_mnatk = Mnatk(a) 
--	local atk_mxatk = Mxatk(a) 
--	if atk_statecheck[STATE_SMYB] >= 1 then 
--		atk_mnatk,atk_mxatk = Check_Smyb ( a ) 
--	end 
--	local defer_def = Def(b)  
--	local defer_resist = Resist(b)  
--	local atker_lv = Lv( a ) 
--	local defer_lv = Lv( b ) 
--	local lv_dis = atker_lv - defer_lv 
--	local lv_eff = 1 
--	if math.abs (lv_dis) >= 1 then 
--		lv_eff =math.min (  math.max ( 0.5 , 1 + 0.025 * lv_dis ) , 1.5 )  
--	end 
--		
--	
--	--LG("Atk_Dmg", "atk_mnatk = ", atk_mnatk, "atk_mxatk =", atk_mxatk, "defer_def = ", defer_def,  "atker_lv = ", atker_lv, "\n" ) 
--	local atk = math.random( atk_mnatk , atk_mxatk ) 
--	local dmg = Phy_Dmg ( atk, defer_def , defer_resist )  --[[јЖЛгХэіЈЙЛє¦Цµ]]--
--	local mndmg = math.floor(  Lv(a) * 0.25 + Mnatk(a) * 0 ) + 1 --[[јЖЛгЧоРЎЙЛє¦Цµ]]--
--	dmg =math.max(  lv_eff * dmg , mndmg ) 
--	--LG("Atk_Dmg", "Normal Damage= ", dmg, "Min Damage mndmg = ", mndmg, "\n" ) 
--	--LG("Atk_Dmg","End function Atk_Dmg(a,b) --[[calculate normal attack base normal damage]]--".."\n" ) 
--	--LuaPrint("Out function Atk_Dmg(a,b) --[[calculate normal attack base normal damage]]--") 
--	return dmg 
--end 
--Артобстрел
function SkillArea_Circle_Paodan( sklv )	
		local side = 400 
		SetSkillRange ( 4 , side )  
end 

function Skill_Paodan_Begin ( role , sklv ) 
end 

function Skill_Paodan_End ( ATKER , DEFER , sklv )
		skr_posx, skr_posy = GetSkillPos ( ATKER ) 
		if ValidCha( DEFER ) == 0 then 
			LG ( "luascript_err" , "fucntion Skill_Paodan_End : Cannon attack, send target index as nil\n" ) 
			return 
		end 
		role_posx, role_posy = GetChaPos( DEFER ) 
		local dmg = Fire_Dmg( ATKER , DEFER )
		local dis = Dis ( skr_posx, skr_posy, role_posx, role_posy  )	
		local dis_eff = dis/100 * 0.1  
		dmg = math.floor ( dmg * (1 - math.min ( dis_eff, 1 ) ) ) 
		Hp_Endure_Dmg ( DEFER, dmg )			
end 

--function SkillArea_Circle_Huoqiang ( sklv )			
--		local side = 0 
--end 

function Skill_Huoqiang_Begin ( role , sklv ) 
end 

function Skill_Huoqiang_End ( ATKER , DEFER , sklv )
		local js_dmg = 1 
		dmg = Fire_Dmg( ATKER, DEFER )	 * js_dmg			
		sus,dmgsa = Check_MisorCrt( ATKER, DEFER )			
		SetSus(DEFER , sus)
		hpdmg = math.floor( dmg*dmgsa )
		Hp_Endure_Dmg( DEFER , hpdmg )		
end 

--Рык тигра
function SkillArea_Circle_Hx ( sklv )
	local side = 200 
	SetSkillRange ( 4 , side  )  
end 

function SkillCooldown_Hx( sklv )
	local Cooldown = 20000
	return Cooldown
end

function SkillSp_Hx ( sklv )	
	local sp_reduce = 20 
	return sp_reduce 
end 

function Skill_Hx_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Hx ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Hx_End ( ATKER , DEFER , sklv ) 
	local hp = Hp( DEFER ) 
	local statelv = sklv 
	local statetime = 15
	AddState( ATKER , DEFER , STATE_HX, statelv , statetime ) 
end 

function State_Hx_Add ( role , statelv ) 
	local mxatksb_dif = 3 * statelv
	local mnatksb_dif = 3 * statelv
	local mspdsa_dif = 0.015 * statelv 
	local mxatksb = ( MxatkSb(role) - mxatksb_dif ) 
	local mnatksb = ( MnatkSb(role) - mxatksb_dif ) 
	local mspdsa = (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK )
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK )
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

function State_Hx_Rem ( role , statelv ) 
	local mxatksb_dif = 3 * statelv
	local mnatksb_dif = 3 * statelv
	local mspdsa_dif = 0.015 * statelv 
	local mxatksb = ( MxatkSb(role) + mxatksb_dif ) 
	local mnatksb = ( MnatkSb(role) + mxatksb_dif ) 
	local mspdsa = (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK )
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK )
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role) 
end 

--Ангельское благословение
function SkillSp_Tsqy ( sklv )	
	local sp_reduce = sklv * 1 
	return sp_reduce 
end

function SkillCooldown_Tsqy( sklv )
	local Cooldown = 2000
	return Cooldown
end

function Skill_Tsqy_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Tsqy(sklv) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Tsqy_End ( ATKER , DEFER , sklv )  
	local statelv = sklv 
	local statetime = 5 + sklv * 2
   AddState( ATKER , DEFER , STATE_TSQY, statelv , statetime )


end 

function State_Tsqy_Add ( role , statelv ) 
	local hrecsa_dif =0.03 * statelv 
	local hrecsa = (HrecSa(role) + hrecsa_dif ) * ATTR_RADIX
	SetCharaAttr( hrecsa , role , ATTR_STATEC_HREC ) 
	ALLExAttrSet(role)  
end 

function State_Tsqy_Rem ( role , statelv )  
	local hrecsa_dif = 0.03 * statelv 
	local hrecsa = (HrecSa(role) - hrecsa_dif ) * ATTR_RADIX
	if hrecsa < 0 then 
		return 
	end 
	SetCharaAttr( hrecsa , role , ATTR_STATEC_HREC )
	ALLExAttrSet(role)  
end 

--Лечение
function SkillSp_Jd ( sklv )	
	local sp_reduce = sklv * 1 
	return sp_reduce 
end

function SkillCooldown_Jd( sklv )
	local Cooldown = 2000
	return Cooldown
end

function Skill_Jd_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Jd ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Jd_End ( ATKER , DEFER , sklv ) 
	local jd_statelv = sklv 
	local zd_statelv = GetChaStateLv ( DEFER , STATE_ZD ) 
	RemoveState ( DEFER , STATE_ZD ) 
	Check_Ys_Rem (ATKER , DEFER ) 

end 

--Не используется
function SkillSp_Zjcm ( sklv )	
	local sp_reduce = sklv * 1 
	return sp_reduce 
end

function SkillCooldown_Zjcm( sklv )
	local Cooldown = 2000
	return Cooldown
end

function Skill_Zjcm_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Zjcm ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Zjcm_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime = 5 + sklv * 2 
	local zjcm_rad = 0.3 + sklv * 0.05  
	local atk_dire = GetObjDire ( ATKER ) 
	local def_dire = GetObjDire ( DEFER ) 		
	dif_dire = atk_dire - def_dire 
	if math.abs(dif_dire) < 90 or math.abs(dif_dire) > 180 then 
		zjcm_rad = xy_rad * 1.25 
	end 
	a = Percentage_Random ( zjcm_rad ) 
	if a == 1 then 
		AddState ( ATKER , DEFER , STATE_SM , statelv , statetime ) 
	end  
	Check_Ys_Rem ( ATKER , DEFER ) 

end 

function State_Sm_Add ( role , statelv ) 

end 

function State_Sm_Rem ( role , statelv ) 

end 

--Щит мороза
function SkillSp_Bshd ( sklv )	
	local sp_reduce = sklv * 1 
	return sp_reduce 
end

function SkillCooldown_Bshd( sklv )
	local Cooldown = 2000
	return Cooldown
end

function Skill_Bshd_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Bshd ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Bshd_End ( ATKER , DEFER , sklv ) 
	--LG( "skill_bshd", "enter function Skill_Def_Bshd : " , "\n" ) 
	local statelv = sklv 
	local statetime = 5 + sklv * 2 
	AddState ( ATKER , DEFER , STATE_BSHD , statelv , statetime ) 
	--LG("skill_bshd", "function Skill_Def_Bshd : " , "role = " , role , "sklv =  " , sklv , "\n" ) 
end 

function State_Bshd_Add ( role , statelv ) 
	--LG("state_Bshd" , "function State_Bshd_Add : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local defsb_dif = 5 + statelv * 2 
	local defsb = DefSb(role) + defsb_dif 
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF ) 
	ALLExAttrSet(role)  
end 

function State_Bshd_Rem ( role , statelv ) 
	--LG("state_Bshd" , "function State_Bshd_Rem : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local defsb_dif = 5 + statelv * 2 
	local defsb = DefSb(role) - defsb_dif 
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF ) 
	ALLExAttrSet(role)  
end 

--Адские крылья
function SkillSp_Lyzy ( sklv )
	local sp_reduce = sklv * 1 
	return sp_reduce 
end 

function SkillCooldown_Lyzy( sklv )
	local Cooldown = 2000
	return Cooldown
end

function Skill_Lyzy_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Lyzy ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Lyzy_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime = 10 + sklv * 2
	AddState( ATKER , DEFER , STATE_LYZY , statelv , statetime ) 
	--LG( "Lyzy", "Inferno Wings Skill Level=" , sklv , "Skill Damage= " , dmg , '\n" ) 

end 

--Священный луч
function SkillSp_Shzg ( sklv )	
	local sp_reduce = sklv * 1 
	return sp_reduce 
end 

function SkillCooldown_Shzg( sklv )
	local Cooldown = 2000
	return Cooldown
end

function Skill_Shzg_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Shzg ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Shzg_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime = 10 + sklv * 2
	AddState( ATKER , DEFER , STATE_SHZG , statelv , statetime ) 
	--LG( "Shzg", "Holy Beam Skill Level= " , sklv , "Skill Damage= " , dmg , '\n" ) 
end 

--Пересечение
function SkillSp_Clcy ( sklv )
	local sp_reduce = sklv * 1 
	return sp_reduce 
end 

function SkillCooldown_Clcy( sklv )
	local Cooldown = 2000
	return Cooldown
end

function Skill_Clcy_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Clcy ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Clcy_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime = 3 + sklv * 2
	AddState( ATKER , DEFER , STATE_CLCY, statelv , statetime ) 
	--LG( "Clcy", "Traversing Skill Level= " , sklv , "Skill Damage= " , dmg , '\n" ) 
end 

function State_Clcy_Add ( role , statelv ) 
	local mspdsb_dif = 100 + statelv * 10 
	local mspdsb = MspdSb(role) + mspdsb_dif 
	SetCharaAttr( mspdsb , role , ATTR_STATEV_MSPD ) 
	ALLExAttrSet(role)  
end 

function State_Clcy_Rem ( role , statelv ) 
	local mspdsb_dif = 100 + statelv * 10 
	local mspdsb = MspdSb(role) - mspdsb_dif 
	SetCharaAttr( mspdsb , role , ATTR_STATEV_MSPD ) 
	ALLExAttrSet(role)  
end 


--Не используется
function SkillPre_Hyps ( sklv )			
end 

function SkillCooldown_Hyps( sklv )
	local Cooldown = 2000
	return Cooldown
end

function SkillArea_Square_Hyps ( sklv )	
	local side = 250 
	local angle = 90 
	SetSkillRange ( 2 , side , angle )   
end 

function SkillArea_State_Hyps ( sklv )	
	local statetime = 10 + sklv * 5 
	local statelv = sklv 
	--LG("SkillPre_Hyps" , " fucntion SkillPre_Hyps :" ,  
	SetRangeState ( STATE_RS , statelv  , statetime ) --МнјУµШГжЎ°»рСжЕзЙдЎ±ЧґМ¬
end 

function SkillSp_Hyps ( sklv )	
	local sp_reduce = sklv * 1 
	return sp_reduce 
end 

function Skill_Hyps_Begin ( role , sklv )			
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Hyps ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Hyps_End ( ATKER , DEFER , sklv ) 
	local hpdmg = sklv * 100 
	local hp = GetChaAttr(DEFER) 
	Hp_Endure_Dmg( DEFER , hpdmg ) 
end 

function State_Hyps_Add ( role , statelv ) 
	--LG("state_rs" , "function State_Hyps_Add : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local arealv = GetAreaStateLevel ( role , STATE_HYPS ) 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hpdmg = statelv * 10  
		if arealv >= 1 then 
			hpdmg = statelv * 50 
		end 
	Hp_Endure_Dmg ( role , hpdmg ) 
end 

function State_Hyps_Rem ( role , statelv ) 
end 

function State_Hyps_Tran ( statelv ) 
	return 2   
end 

-- РУБКА ЛЕСА
function SkillSp_Ks ( sklv ) 
	return 0 
end 

function SkillCooldown_Ks( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_Ks_Begin  ( role , sklv ) 
end 

function Skill_Ks_End ( ATKER , DEFER , sklv ) 
	SystemNotice ( ATKER , "Хрусть Хрусть Хрусть..." ) 
	local defer_lv = GetChaAttr ( DEFER , ATTR_LV ) 
	if sklv < defer_lv then 
		SystemNotice ( ATKER , "Уровень навыка слишком низкий" ) 
		return 
	end 
	local hpdmg = 1
	
	local UnNormal_Tree_ID = 778

	local Tree_ID = GetChaTypeID( DEFER )
	local Tree_hp = Hp( DEFER )
	local i = 0
	--SystemNotice( ATKER , 'Tree_hp = '..Tree_hp)
	--[[if Tree_ID == UnNormal_Tree_ID then
		if Tree_hp <= 800 then
			hpdmg = 0
			SystemNotice( ATKER , "Ты не видишь в этом ничего хорошего? Пройдет время и ты почувствуешь пользу от работы" )
		end
	end]]--

	local hp = Hp(DEFER) - hpdmg 
	SetCharaAttr(hp , DEFER , ATTR_HP ) 
 
end 

-- ДОБЫЧА РУДЫ
function SkillSp_Wk( sklv ) 
	return 0 
end 

function SkillCooldown_Wk( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_Wk_Begin  ( role , sklv ) 
end 

function Skill_Wk_End ( ATKER , DEFER , sklv ) 
	local defer_lv = Lv ( DEFER ) 

	if sklv < defer_lv then 
		SystemNotice ( ATKER , "Уровень навыка слишком низкий" ) 
		return 
	end 
	
	local hpdmg = 1 

	local UnNormal_KS_ID = 777

	local KS_ID = GetChaTypeID( DEFER )
	local KS_hp = Hp( DEFER )
	local i = 0
	
	if KS_ID == UnNormal_KS_ID then

		local Item_Use = GetChaItem ( ATKER , 1 , 9 )
		local ItemID_Use = GetItemID ( Item_Use )
		
		if ItemID_Use ~= 3908 and ItemID_Use ~= 3108 then
			SystemNotice( ATKER , "Для этого действия нужна Легированная кирка" )
			return
		end

		local Item_URE = GetItemAttr ( Item_Use , ITEMATTR_URE )
		
		local Take_Num = 0

		local URE_Ran = Percentage_Random ( 0.35 )
		
		if URE_Ran == 1 then
			Take_Num = 1
		end
		
		if Item_URE < 50 then
			Take_Num = 0
			hpdmg = 0
			SystemNotice( ATKER , "Кирка повреждена! Невозможно продолжить добычу" )
		end

		Item_URE = Item_URE - Take_Num

		local i = SetItemAttr ( Item_Use , ITEMATTR_URE , Item_URE )
		if i == 0 then
			LG("Item_URE","Weapon imbue failed")
		end
		if Item_URE < 50 and Take_Num ~= 0 then
			SetChaEquipValid ( role , 9 , 0 )
		end

		if KS_hp <= 800 then
			hpdmg = 0
			SystemNotice( ATKER , "Похоже, что метеорит уже выработан! Увы." )
		end

	end

	local hp = Hp(DEFER) - hpdmg 
	SetCharaAttr(hp , DEFER , ATTR_HP ) 

end 

-- РЫБОЛОВСТВО
function SkillSp_By ( sklv ) 
	return 0 
end 

function SkillCooldown_By( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_By_Begin  ( role , sklv ) 
end 

function Skill_By_End ( ATKER , DEFER , sklv )  
	local defer_lv = Lv ( DEFER ) 
	if sklv < defer_lv then 
		SystemNotice ( ATKER , "Уровень навыка слишком низкий" ) 
		return 
	end 
	SystemNotice ( ATKER , "Идет рыбалка..." ) 
	local hpdmg = 1 
	local hp = Hp(DEFER) - hpdmg 
	SetCharaAttr(hp , DEFER , ATTR_HP ) 
end 

-- ТРАЛЕНИЕ
function SkillSp_Dl ( sklv ) 
	return 0 
end 

function SkillCooldown_Dl( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_Dl_Begin  ( role , sklv ) 
end 

function Skill_Dl_End ( ATKER , DEFER , sklv ) 
	local defer_lv = Lv ( DEFER ) 
	if sklv < defer_lv then 
		SystemNotice ( ATKER , "Уровень навыка слишком низкий" ) 
		return 
	end 
		SystemNotice ( ATKER , "Идет траление..." ) 
	local hpdmg = 1 
	local hp = Hp(DEFER) - hpdmg 
	SetCharaAttr(hp , DEFER , ATTR_HP ) 
end 

-- ВОРОНКА ТОРНАДО
function SkillSp_Jsfb ( sklv )	
	local sp_reduce = 20
	return sp_reduce 
end

function SkillCooldown_Jsfb( sklv )
	local Cooldown = 5000
	return Cooldown
end

function Skill_Jsfb_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Jxwb (sklv) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Jsfb_End ( ATKER , DEFER , sklv )  
	local statelv = sklv 
	local statetime = 30 + sklv * 3 
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local str_atker = Str(ATKER)
	local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			if Can_Pk_Garner2 == 0 then
			 statetime =math.max(30,math.floor(str_atker/5))+sklv*3
			end
		end
    AddState( ATKER , DEFER , STATE_JSFB, statelv , statetime ) 
end 

function State_Jsfb_Add ( role , statelv ) 
	--LG("state_Jxwb" , "function State_Jxwb_Add : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local crtsb_dif =5 + 1 * statelv 
	local crtsb = math.floor ( (CrtSb(role) + crtsb_dif ) ) 
	SetCharaAttr( crtsb , role , ATTR_STATEV_CRT ) 
	ALLExAttrSet(role)  
end 

function State_Jsfb_Rem ( role , statelv ) 
	local crtsb_dif =5 + 1 * statelv 
	local crtsb = math.floor ( (CrtSb(role) - crtsb_dif ) ) 
	SetCharaAttr( crtsb , role , ATTR_STATEV_CRT ) 
	ALLExAttrSet(role)  
end 

-- ПЕЧАТЬ СТАРЕЙШИНЫ
function SkillSp_Xzfy ( sklv )
	local sklv = sklv * 2
	local sp_reduce = 30 + sklv * 2 
	return sp_reduce 
end 

function SkillCooldown_Xzfy( sklv )
	local Cooldown = 20000
	return Cooldown
end

function Skill_Xzfy_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Xzfy ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Xzfy_End ( ATKER , DEFER , sklv ) 
	local sklv = sklv * 2
	local statelv = sklv 
	local statetime = 10 + math.floor ( sklv * 0.5 )
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local con_atker = Con(ATKER)
	local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			if Can_Pk_Garner2 == 0 then
			 statetime =math.max(10,math.floor(con_atker/15))+sklv* 0.5
			end
		end
	local CheckItem_Death = CheckItem_Death ( ATKER )
	if CheckItem_Death == 1 then
		local Percentage_Death = Percentage_Random ( 0.7 )
			if Percentage_Death == 1 then
statetime = math.floor (statetime * 1.5)
SystemNotice ( ATKER , "Получена сила набора Сета Смерти. Эффект навыка усилен!")
			end
	end
	local Check_Heilong = CheckItem_Heilong ( ATKER )
	if Check_Heilong == 1 then
		local Percentage = Percentage_Random ( 0.7)
			if Percentage == 1 then
statetime = statetime * 1.5
SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Эффект навыка усилен!")
			end
	end
	local Check_Heilong_app = CheckItem_Heilong_app ( ATKER )
	if Check_Heilong_app == 1 then
		local Percentage_app = Percentage_Random ( 0.7)
			if Percentage_app == 1 then
statetime = statetime * 1.5
SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Эффект навыка усилен!")
			end
	end
	local hp_defer = Hp ( DEFER ) 
	if hp_defer >= 100000 then 
		local a = Percentage_Random (0.8)
		if a == 1 then
			statetime = 5 + math.floor ( sklv * 0.3 ) 
		else
			SetSus( DEFER , 0 ) 
			SystemNotice ( ATKER , "Не удалось наложить Печать Старейшины!") 
			return
		end
	end 

	if GetChaTypeID( ATKER ) == 985 then
		statetime = 15
		statelv = 10
	end
	if GetChaAIType( DEFER ) >= 21 then
		if BOSSXZSJ[GetChaTypeID( DEFER )] == 0 then
			SystemNotice ("Неужели ты думаешь, что меня можно победить единственным навыком? Попробуй что-нибудь другое")
			return
		else
			BOSSXZSJ[GetChaTypeID( DEFER )] = BOSSXZSJ[GetChaTypeID( DEFER )] -1
		end
	end

	AddState ( ATKER , DEFER ,STATE_JNJZ , statelv , statetime ) 
	AddState ( ATKER , DEFER ,STATE_XY , statelv , 3 )

end 

-- РОСЧЕРК ТЕНИ
function SkillSp_Ayzz ( sklv )
	local sklv = sklv * 2
	local sp_reduce = 30 + sklv * 3  
	return sp_reduce 
end 

function SkillCooldown_Ayzz( sklv )
	local Cooldown = 30000
	return Cooldown
end

function Skill_Ayzz_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Ayzz ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Ayzz_End ( ATKER , DEFER , sklv )
	local sklv = sklv * 2
	local statelv = sklv 
	local statetime = 5 + sklv * 1
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local con_atker = Con(ATKER)
	local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			if Can_Pk_Garner2 == 0 then
			 statetime =math.max(5,math.floor(con_atker/30))+sklv
			end
		end
	local CheckItem_Death = CheckItem_Death ( ATKER )
	if CheckItem_Death == 1 then
		local Percentage_Death = Percentage_Random ( 0.7)
			if Percentage_Death == 1 then
statetime = math.floor (statetime * 1.5)
SystemNotice ( ATKER , "Получена сила набора Сета Смерти. Эффект навыка усилен!")
			end
	end
	local Check_Heilong = CheckItem_Heilong ( ATKER )
	if Check_Heilong == 1 then
		local Percentage = Percentage_Random ( 0.7)
			if Percentage == 1 then
	statetime =  statetime * 1.5
SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Эффект навыка усилен!")
			end
	end
	local Check_Heilong_app = CheckItem_Heilong_app ( ATKER )
	if Check_Heilong_app == 1 then
		local Percentage_app = Percentage_Random ( 0.7)
			if Percentage_app == 1 then
  statetime =  statetime * 1.5
SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Эффект навыка усилен!")
			end
	end
	local hp_defer = Mxhp ( DEFER )
	if hp_defer >= 100000 and hp_defer < 1000000 then 
		local a = Percentage_Random (0.7)
		if a == 1 then
			statetime = 9
		else
			SetSus( DEFER , 0 )
			return
		end
	elseif hp_defer >= 1000000 then 
		local a = Percentage_Random (0.7)
		if a == 1 then
			statetime = 4
		else
			SetSus( DEFER , 0 )
			return
		end
	end 

	if GetChaTypeID( ATKER ) == 985 then
		statetime = 15
		statelv = 10
	end
	if GetChaAIType( DEFER ) >= 21 then
		if BOSSAYSJ[GetChaTypeID( DEFER )] == 0 then
			SystemNotice ("Неужели ты думаешь, что меня можно победить единственным навыком? Попробуй что-нибудь другое")
			return
		else
			BOSSAYSJ[GetChaTypeID( DEFER )] = BOSSAYSJ[GetChaTypeID( DEFER )] -1
		end
	end
	local statelv1 = New_Xlcz ( ATKER , DEFER )
	AddState( ATKER , DEFER , STATE_GJJZ, statelv , statetime ) 

end 

function New_Xlcz ( ATKER , DEFER) 
	local lv_atker = Lv ( TurnToCha ( ATKER ) ) 
	local lv_defer = Lv ( TurnToCha ( DEFER ) ) 
	local sta_atker = Sta(ATKER) 
	local sta_defer = Sta(DEFER) 
	local lv_dif = math.max(1,lv_atker-lv_defer)
	local sta_dif = math.max(1,math.floor ((sta_atker-sta_defer)/5))
	local dif = math.min (lv_dif+sta_dif,20)
	return dif
end 

function State_TK_Add (role , statelv) 
	hpdmg = math.floor (statelv *100/50 )
	--Hp_Endure_Dmg ( role, hpdmg )  
end 

-- ГЛАЗ ОРЛА
function SkillSp_Yy ( sklv )
	local sp_reduce = 10  
	return sp_reduce 
end 

function SkillCooldown_Yy( sklv )
	local Cooldown = 2000
	return Cooldown
end

function Skill_Yy_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Yy ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Yy_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime = 20 + sklv * 10   
	AddState( ATKER , DEFER , STATE_YY, statelv , statetime ) 
end 

function State_Yy_Add ( role , statelv ) 
	local hitsb_dif = statelv * 3 
	local hitsb = HitSb(role) + hitsb_dif 
	SetCharaAttr ( hitsb , role , ATTR_STATEV_HIT ) 
	ALLExAttrSet(role)  
end 

function State_Yy_Rem ( role , statelv ) 
	local hitsb_dif = statelv * 3 
	local hitsb = HitSb(role) - hitsb_dif 
	SetCharaAttr ( hitsb , role , ATTR_STATEV_HIT ) 
	ALLExAttrSet(role)  
end 

-- ДВОЙНОЙ ВЫСТРЕЛ
function SkillSp_Lzj ( sklv )
	local sp_reduce = 20  
	return sp_reduce 
end 

function SkillCooldown_Lzj( sklv )
	local Cooldown = 5000
	return Cooldown
end

function Skill_Lzj_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Lzj ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Lzj_End ( ATKER , DEFER , sklv ) 
	if ValidCha(ATKER) == 0 then 
		LG ( "luascript_err" , "function Skill_Lzj_End : ATKER as null" ) 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		LG ( "luascript_err" , "function Skill_Lzj_End : DEFER as null" ) 
		return 
	end 
		hpdmg = ( 1.5+sklv * 0.15 ) * Atk_Dmg ( ATKER , DEFER )  * 0.65
		Hp_Endure_Dmg ( DEFER , hpdmg )  

end 

-- ЗВЕЗДНЫЙ УДА
function SkillSp_Hxqj ( sklv )
   local sp_reduce = 20 + sklv * 2 
	return sp_reduce 
end 

function SkillCooldown_Hxqj( sklv )
	local Cooldown = 10000
	return Cooldown
end

function Skill_Hxqj_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Hxqj ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Hxqj_End ( ATKER , DEFER , sklv ) 
	local back_dis = 300 + sklv * 30 
	atk = ( 1.5 + sklv * 0.1 ) * math.random ( Mnatk( ATKER ) , Mxatk ( ATKER ) ) * 0.85
	defer_def = Def ( DEFER ) 
	defer_resist = Resist ( DEFER ) 
	dmg = Phy_Dmg ( atk, defer_def , defer_resist ) 
	Hp_Endure_Dmg ( DEFER , dmg )  
	BeatBack ( ATKER , DEFER , back_dis )
	--LG( "Hxqj", "Astro Strike Skill Level=" , sklv , "Skill Damage= " , dmg , '\n" ) 

end 

-- ИЛЛЮЗОРНЫЙ УДАР
function SkillSp_Hyz ( sklv )
   local sp_reduce = 20 
	return sp_reduce 
end 

function SkillCooldown_Hyz( sklv )
	local Cooldown = 8000
	return Cooldown
end

function Skill_Hyz_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Hyz ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Hyz_End ( ATKER , DEFER , sklv ) 
	if ValidCha(ATKER) == 0 then 
		LG ( "luascript_err" , "function Skill_Hyz_End : ATKER as null" ) 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		LG ( "luascript_err" , "function Skill_Hyz_End : DEFER as null" ) 
		return 
	end 
	local aspd = Aspd ( ATKER )
	dmg = ( ( 1 + 0.1 * sklv ) ) * (math.min(3,( math.max ( 1, math.floor( aspd / 70  ) )  ))) * Atk_Dmg ( ATKER , DEFER )
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local agi_atker = Agi(ATKER)
	local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			if Can_Pk_Garner2 == 0 then
			dmg = ( ( 1 + 0.1 * sklv ) ) * (math.min(3,( math.max ( 1, math.floor( aspd / 70  ) )  ))) * Atk_Dmg ( ATKER , DEFER )
	
			end
		end
	Hp_Endure_Dmg ( DEFER , dmg )  

	Check_Ys_Rem ( ATKER , DEFER )
end 

-- МОГУЧИЙ УДАР
function SkillSp_Zj ( sklv )
   local sp_reduce = 8 + sklv * 1  
	return sp_reduce 
end 

function SkillCooldown_Zj( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_Zj_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Zj ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Zj_End ( ATKER , DEFER , sklv ) 
	atk_rad = 1.2 + sklv * 0.05 
	hpdmg = Atk_Raise ( atk_rad , ATKER , DEFER )	
	Hp_Endure_Dmg ( DEFER , hpdmg )  
	Check_Ys_Rem ( ATKER ,DEFER )
end 

-- Воодушевление
function SkillSp_Fnq ( sklv )
	local sp_reduce = 35 
	return sp_reduce 
end 

function SkillCooldown_Fnq( sklv )
	local Cooldown = 30000
	return Cooldown
end

function Skill_Fnq_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Fnq ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Fnq_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime = 20

	if GetChaTypeID( ATKER ) == 983 then
		statetime = 120
		statelv = 10
	end
SystemNotice(DEFER, "Получено усиление <Воодушевление> "..statelv.."ур. на "..statetime.. " секунд" )

	AddState( ATKER , DEFER , STATE_FNQ, statelv , statetime ) 
	
end 

function State_Fnq_Add ( role , statelv )
	local aspdsa_dif = statelv * 0.02
	--SystemNotice(role,"aspdsa_dif = "..aspdsa_dif)
	local aspdsa = math.floor ( ( AspdSa(role) + aspdsa_dif) * ATTR_RADIX )
	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD ) 
	ALLExAttrSet(role) 
end 

function State_Fnq_Rem ( role , statelv ) 
	local aspdsa_dif =  statelv * 0.02
	local aspdsa = math.floor ( ( AspdSa(role) - aspdsa_dif) * ATTR_RADIX )
	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD ) 
	ALLExAttrSet(role) 
end

-- Берсерк
function SkillSp_Kb ( sklv )
	local sp_reduce = 15 
	return sp_reduce 
end 

function SkillCooldown_Kb( sklv )
	local Cooldown = 40000
	return Cooldown
end

function Skill_Kb_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Kb ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Kb_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime = 25  
	SystemNotice(DEFER, "Получено усиление <Берсерк> "..statelv.."ур. на "..statetime.. " секунд" )

	AddState( ATKER , DEFER , STATE_KB, statelv , statetime ) 
end 

function State_Kb_Add ( role , statelv ) 
	local aspdsa_dif = 0.18 + statelv * 0.015
	--SystemNotice(role,"aspdsa_dif = "..aspdsa_dif)
	local aspdsa = math.floor ( ( AspdSa(role) + aspdsa_dif) * ATTR_RADIX )
	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD ) 
	ALLExAttrSet(role)  
end 

function State_Kb_Rem ( role , statelv ) 
	local aspdsa_dif = 0.18 + statelv * 0.015
	local aspdsa = math.floor ( ( AspdSa(role) - aspdsa_dif) * ATTR_RADIX )
	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD ) 
	ALLExAttrSet(role)  
end 

-- ПЕРВОБЫТНАЯ ЯРОСТЬ
function SkillSp_Swzq ( sklv )
   local sp_reduce = 50+sklv*3  
	return sp_reduce 
end 

function SkillCooldown_Swzq( sklv )
	local Cooldown = 60000
	return Cooldown
end

function Skill_Swzq_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Swzq ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Swzq_End ( ATKER , DEFER , sklv ) 
	if ValidCha(ATKER) == 0 then 
		LG ( "luascript_err" , "function Skill_Swzq_End : ATKER as null" ) 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		LG ( "luascript_err" , "function Skill_Swzq_End : DEFER as null" ) 
		return 
	end 
	
	dmg = ( 3 +  sklv * 0.3 ) * Atk_Dmg ( ATKER ,DEFER ) 
	local Check_Heilong = CheckItem_Heilong ( ATKER )
	if Check_Heilong == 1 then
			local Percentage = Percentage_Random ( 0.3 )
			if Percentage == 1 then
dmg = dmg * 3
SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Атака усилена!")
			end
	end
	local Check_Heilong_app = CheckItem_Heilong_app ( ATKER )
	if Check_Heilong_app == 1 then
			local Percentage_app = Percentage_Random ( 0.3 )
			if Percentage_app == 1 then
dmg = dmg * 3
SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Атака усилена!")
			end
	end
	if IsPlayer ( DEFER ) == 1 and IsPlayer ( ATKER ) == 1 then
			local Lv_Check = ReCheck_PK_Lv ( ATKER ,DEFER )
			local Ran = math.min ( 90 , math.max ( 1 ,( 30 + Lv_Check * 2 )))
			local map_name_ATKER = GetChaMapName ( ATKER )
			local map_name_DEFER = GetChaMapName ( DEFER )
			local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
			local SwordLv = GetSkillLv (ATKER,67)
if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
	Ran = Ran*(1+SwordLv*0.1)
end
			local Check_Heilong = CheckItem_Heilong ( ATKER )
			if Check_Heilong == 1 then
local Percentage = Percentage_Random ( 0.5 )
if Percentage == 1 then
	Ran = Ran * 1.5
	SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Увеличен шанс урона!")
end
			end
			local Check_Heilong_app = CheckItem_Heilong_app ( ATKER )
			if Check_Heilong_app == 1 then
local Percentage_app = Percentage_Random ( 0.5 )
if Percentage_app == 1 then
	Ran = Ran * 1.5
	SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Увеличен шанс урона!")
end
			end
			local Dmg_Max = math.floor( dmg * (2/3) )
			local Dmg_Min = math.floor( dmg / 8 )
			dmg = ReCheck_Skill_Dmg ( Dmg_Max , Dmg_Min , Ran )
			if dmg == Dmg_Min then
SystemNotice ( ATKER , "Первобытная Ярость не попала по противнику" )
			end
	end
	Hp_Endure_Dmg ( DEFER , dmg )  

	local statelv = sklv 
	local statetime = 1
	local Check_Heilong = CheckItem_Heilong ( ATKER )
	if Check_Heilong == 1 then
			local Percentage = Percentage_Random ( 0.5 )
			if Percentage == 1 then
statetime = statetime * 3
SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Увеличена продолжительность оглушения!")
			end
	end
	local Check_Heilong_app = CheckItem_Heilong_app ( ATKER )
	if Check_Heilong_app == 1 then
			local Percentage_app = Percentage_Random ( 0.5 )
			if Percentage_app == 1 then
statetime = statetime * 3
SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Увеличена продолжительность оглушения!")
			end
	end
	local hp_defer = Hp ( DEFER ) 
	AddState ( ATKER , DEFER , STATE_XY , statelv , statetime )
end 

function State_Xy_Add ( role , statelv )
end

function State_Xy_Rem ( role , statelv )
end

-- ВОСКРЕШЕНИЕ
function SkillSp_Fh ( sklv )
   local sp_reduce = 50   
	return sp_reduce 
end 

function SkillCooldown_Fh( sklv )
	local sklv = sklv * 5
	local Cooldown = 60000 - sklv * 1500
	return Cooldown
end

function Skill_Fh_Begin ( role , sklv ) 
	local map_name_ATKER = GetChaMapName ( role )
	if map_name_ATKER == "garner2" or map_name_ATKER == "07xmas2" then
		SystemNotice ( role , "Невозможно использовать навык Воскрешения" )
		SkillUnable(role)   
	end
	
	local item_count = CheckBagItem ( role , ITEM_RELIFE ) 
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет необходимого предмета для воскрешения" ) 
	end 
	local a = DelBagItem ( role , ITEM_RELIFE , 1 ) 
end 

function Skill_Fh_End ( ATKER , DEFER , sklv )
	local sklv = sklv * 5
	local ChaHp = GetChaAttr( DEFER , ATTR_HP )
	if ChaHp <= 0 then
		local ChaName = GetChaDefaultName ( ATKER )
		SetRelive ( ATKER , DEFER ,  sklv , "Игрок "..ChaName.."\n\n пытается вас воскресить. Вы согласны?" ) 
	end
end 

-- КРИСТАЛЬНОЕ БЛАГОСЛОВЕНИЕ
function SkillSp_BingX ( sklv )
   local sp_reduce = 40 + sklv * 4 
	return sp_reduce 
end 

function SkillCooldown_BingX( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_BingX_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_BingX ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_BingX_End ( ATKER , DEFER , sklv ) 
	local i = CheckBagItem( ATKER , 3463 )
	if i <= 0 then
		SystemNotice ( ATKER , "Для каждого использования навыка нужен 1 Ледяной кристалл")
		return
	end
	local j = DelBagItem(ATKER,3463,1)
	if j == 1 then
		local statelv = sklv 
		local statetime =  8 + sklv * 1.5
		local map_name_ATKER = GetChaMapName ( ATKER )
		local map_name_DEFER = GetChaMapName ( DEFER )
		local sta_atker = Sta(ATKER)
		local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
			if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
	if Can_Pk_Garner2 == 0 then
		statetime = math.max(8,math.floor(sta_atker/15))+sklv*2
	end
			end
		AddState ( ATKER , DEFER , STATE_BIW , statelv , statetime )	
	else
		LG("Skill_Item","Delete Icy Crystal failed")
	end
SystemNotice(DEFER, "Получено усиление <Кристальное благославление> "..statelv.."ур. на "..statetime.. " секунд" )


	 
end

-- ЗАКАЛКА
function SkillSp_Shpf ( sklv )
   local sp_reduce = 40 + sklv * 4 
	return sp_reduce 
end 

function SkillCooldown_Shpf( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_Shpf_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Shpf ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Shpf_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime =  200 + statelv * 20
	AddState ( ATKER , DEFER , STATE_SHPF , statelv , statetime ) 
	SystemNotice(DEFER, "Получено усиление <Закалка> "..statelv.."ур. на "..statetime.. " секунд" )
end

function State_Shpf_Add ( role , statelv ) 
	local def_dif = 7 + statelv * 4  
	local def = DefSb(role) + def_dif 
	SetCharaAttr( def , role , ATTR_STATEV_DEF )
	
	ALLExAttrSet(role)
end 

function State_Shpf_Rem ( role , statelv ) 
	local def_dif = 7 + statelv * 4 
	local def = DefSb(role) - def_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )
	ALLExAttrSet(role)
	
end 

-- СИЛЬНАЯ МАГИЯ
function SkillSp_Mlch ( sklv )	
   local sp_reduce = 40 + sklv * 4 
	return sp_reduce 
end 

function SkillCooldown_Mlch( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_Mlch_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Mlch ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Mlch_End ( ATKER , DEFER , sklv ) 
	local i = CheckBagItem( ATKER , 3462 )
	if i <= 0 then
		SystemNotice ( ATKER , "Требуется 1 Магический клевер")
		return
	end
	local b = ( sklv - 1 ) * 0.05
	local a = Percentage_Random ( b )
	local j = 0
	if a == 0 then
		j = DelBagItem(ATKER,3462,1)
	elseif a == 1 then
		j = 1
		SystemNotice ( ATKER , "Усиленная магия не забрала Магический Клевер" )
	end
	if j == 1 then
		local statelv = sklv 
		local statetime =  90 + 90 * sklv   
		AddState ( ATKER , DEFER , STATE_MLCH , statelv/2 , statetime ) 
		SystemNotice(DEFER, "Получено усиление <Сильная магия> "..statelv.."ур. на "..statetime.. " секунд" )		
	else
		LG("Skill_Item","Delete Magical Clover failed")
	end
end

function State_Mlch_Add ( role , statelv ) 
end 

function State_Mlch_Rem ( role , statelv ) 
end

function Cuihua_Mofa ( dmg , statelv ) 
	local dmg_fin = math.floor ( dmg * ( 1.4 + statelv * 0.02 ) + statelv * 30 ) 
	return dmg_fin
end 
 

--Стальная воля
function SkillSp_Gtyz ( sklv )	
   local sp_reduce = 15  
	return sp_reduce 
end 

function SkillCooldown_Gtyz( sklv )
	local Cooldown = 15000
	return Cooldown
end

function Skill_Gtyz_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Gtyz ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Gtyz_End ( ATKER , DEFER , sklv ) 
 
	local statelv = sklv 
	local statetime =  15    
	AddState ( ATKER , DEFER , STATE_GTYZ , statelv , statetime ) 
	--LG("skill_Gtyz", "function Skill_Def_Gtyz : " , "role = " , role , "sklv =  " , sklv , "\n" ) 
	Check_Ys_Rem ( ATKER , DEFER )
SystemNotice(DEFER, "Получено усиление <Стальная воля> "..statelv.."ур. на "..statetime.. " секунд" )		
		
end 

function State_Gtyz_Add ( role , statelv ) 
	--LG("state", "function State_GTYZ_Add : " , " role = ", role, "statelv = " , statelv , "\n" ) 
	local def_dif = statelv * 3
	local def = DefSb(role) + def_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )	
	ALLExAttrSet(role)

end 

function State_Gtyz_Rem ( role , statelv ) 
--	LG("state", "function State_Gtyz_Rem : " ,"statelv = " , statelv , " role = ", role, "\n" ) 
	local def_dif = statelv * 3
	local def = DefSb(role) - def_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )
	ALLExAttrSet(role)
end 

-- Бронелом
function SkillSp_Pj ( sklv )
   local sp_reduce = 25  
	return sp_reduce 
end 

function SkillCooldown_Pj( sklv )
	local Cooldown = 25000
	return Cooldown
end

function Skill_Pj_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Pj ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Pj_End ( ATKER , DEFER , sklv ) 
		local statelv = sklv 
		local statetime =  15    
		local map_name_ATKER = GetChaMapName ( ATKER )
		local map_name_DEFER = GetChaMapName ( DEFER )
		local agi_atker = Agi(ATKER)
		local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			if Can_Pk_Garner2 == 0  then
			statetime = agi_atker/10
				if statetime<1 then
					statetime =1
				end
			end
		end
		AddState ( ATKER , DEFER , STATE_PJ , statelv , statetime ) 
		SystemNotice(DEFER, "На вас действует эффект   <Бронелом> "..statelv.."ур. на "..statetime.. " секунд" )		
	
		Check_Ys_Rem ( ATKER , DEFER )
end 

function State_Pj_Add ( role , statelv ) 
	local def_dif = statelv * 5
	local def = DefSb(role) - def_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )	
	ALLExAttrSet(role)
end 

function State_Pj_Rem ( role , statelv ) 
	local def_dif = statelv * 5
	local def = DefSb(role) + def_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )
	ALLExAttrSet(role)
end 

--Не используется
function State_JLPj_Add ( role , statelv ) 
	local def_dif = statelv * 60
	local def = DefSb(role) - def_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )	
	ALLExAttrSet(role)
end 

function State_JLPj_Rem ( role , statelv ) 
	local def_dif = statelv * 60
	local def = DefSb(role) + def_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )
	ALLExAttrSet(role)
end 


-- Удар в спину
function SkillSp_Bc ( sklv )
	local sp_reduce = 15 + sklv * 2  
	return sp_reduce 
end 

function SkillCooldown_Bc( sklv )
	local Cooldown = 60000
	return Cooldown
end

function Skill_Bc_Begin ( role , sklv )
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Bc ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Bc_End ( ATKER , DEFER , sklv )
	local atk_rad = 1+ sklv * 0.05
	local atk_dire = GetObjDire ( ATKER ) 
	local def_dire = GetObjDire ( DEFER ) 
	dif_dire = atk_dire - def_dire 
	if math.abs(dif_dire) < 90 or math.abs(dif_dire) > 180 then 
		hpdmg = MxatkIb(role) * sklv * 0.27 
	else
		hpdmg = Atk_Raise ( atk_rad , ATKER , DEFER ) 
	end
	Hp_Endure_Dmg ( DEFER , hpdmg ) 
	Check_Ys_Rem ( ATKER , DEFER )
	

end 

-- Теневой удар
function SkillSp_Guz ( sklv )
	local sp_reduce = 20 + sklv * 3  
	return sp_reduce 
end 

function SkillCooldown_Guz( sklv )
	local Cooldown = 40000
	return Cooldown
end

function Skill_Guz_Begin ( role , sklv )
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Guz ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 

end 


function Skill_Guz_End ( ATKER , DEFER , sklv )
	if ValidCha(ATKER) == 0 then 
		LG ( "luascript_err" , "function Skill_Guz_End : ATKER as null" ) 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		LG ( "luascript_err" , "function Skill_Guz_End : DEFER as null" ) 
		return 
	end 
	local a = 1 
	local hpdmg = ( 1 +  sklv * 0.1 ) * Atk_Dmg( ATKER , DEFER )  
	local statelv = sklv 
	local statetime = 3 + math.floor ( sklv * 0.5 ) 
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local agi_atker = Agi(ATKER)
	local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
	--	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_ATKER == "07xmas2" or map_name_DEFER == "07xmas2" then
	--		if Can_Pk_Garner2 == 0 then
	--			statetime = statetime*agi_atker/200
	--			Notice ( "statetime="..statetime)
	--		end
	--	end
	local atk_dire = GetObjDire ( ATKER ) 
	local def_dire = GetObjDire ( DEFER ) 
	dif_dire = atk_dire - def_dire 
	if math.abs(dif_dire) < 90 or math.abs(dif_dire) > 180 then 
		statetime = statetime * 2  
	end 
	local hp_defer =Mxhp ( DEFER ) 
	if hp_defer >= 100000 then 
		a = Percentage_Random ( 0.8 ) 
		statetime = math.floor ( statetime / 2 ) + 1 
	end 
	local Check_Heilong = CheckItem_Heilong ( ATKER )
	if Check_Heilong == 1 then
			local Percentage = Percentage_Random ( 0.5 )
			if Percentage == 1 then
				statetime = statetime * 2
				SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Эффект навыка усилен!")
			end
	end
	local Check_Heilong_app = CheckItem_Heilong_app ( ATKER )
	if Check_Heilong_app == 1 then
			local Percentage_app = Percentage_Random ( 0.5 )
			if Percentage_app == 1 then
				statetime = statetime * 2
				SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Эффект навыка усилен!")
			end
	end
	if  a == 1 then
		if GetChaTypeID( ATKER ) == 979 then
			statetime = 8
		end

	if GetChaAIType( DEFER ) >= 21 then
		if BOSSXYSJ[GetChaTypeID( DEFER )] == 0 then
			SystemNotice ("Неужели ты думаешь, что меня можно победить единственным навыком? Попробуй что-нибудь другое")
			return
		else
			BOSSXYSJ[GetChaTypeID( DEFER )] = BOSSXYSJ[GetChaTypeID( DEFER )] -1
		end
	end
		Hp_Endure_Dmg ( DEFER , hpdmg ) 
		AddState( ATKER , DEFER , STATE_XY, statelv , statetime ) 
	else 
		SetSus( DEFER , 0 ) 
	end 
	Check_Ys_Rem ( ATKER ,DEFER )

end 
-- Отравленная стрела
function SkillSp_Dj ( sklv )	
	local sp_reduce = 20 
	return sp_reduce 
end

function SkillCooldown_Dj( sklv )
	local Cooldown = 25000
	return Cooldown
end

function Skill_Dj_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Dj ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Dj_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime =  9 + sklv * 1    
	AddState ( ATKER , DEFER , STATE_DJ , statelv , statetime ) 
	SystemNotice(DEFER, "На вас действует эффект  <Отравление> "..statelv.."ур. на "..statetime.. " секунд" )		
	
	Check_Ys_Rem ( ATKER , DEFER )
end 

function State_Dj_Add ( role , statelv ) 
	local hpdmg = 16 + statelv * 2   
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role)  
end 

function State_Dj_Rem ( role , statelv ) 
end 

-- Ядовитый дротик
function SkillSp_Db ( sklv )	
	local sp_reduce = 20 
	return sp_reduce 
end

function SkillCooldown_Db( sklv )
	local Cooldown = 20000
	return Cooldown
end

function Skill_Db_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Db ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Db_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime =  7 + sklv * 4    
	AddState ( ATKER , DEFER , STATE_ZD , statelv , statetime ) 
	SystemNotice(DEFER, "На вас действует эффект <Отравление> "..statelv.."ур. на "..statetime.. " секунд" )		
	
	Check_Ys_Rem ( ATKER , DEFER )
end 

function State_Zd_Add ( role , statelv ) 
	local hpdmg = 25 + statelv * 2  
	local map_name_ATKER = GetChaMapName ( role )
	local agi_atker = Agi(role)
	local Can_Pk_Garner2 = Is_NormalMonster (role)
	if map_name_ATKER == "garner2" or map_name_ATKER == "07xmas2"  then 
		if Can_Pk_Garner2 == 0 then
			hpdmg = math.max(5,320)
		end
	end
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role)  
end 

function State_Zd_Rem ( role , statelv ) 
end 


-- Оцепенение
function SkillSp_Mb ( sklv )	
--	local sp_reduce = 10 
--	return sp_reduce 
end

function Skill_Mb_Begin ( role , sklv ) 
--	local sp = Sp(role) 
--	local sp_reduce = SkillSp_Mb ( sklv ) 
--  	if sp - sp_reduce < 0 then 
--		SkillUnable(role)   
--		return 
--end 
--	Sp_Red (role , sp_reduce ) 

--
--  function Skill_Mb_End ( ATKER , DEFER , sklv ) 
--	local statelv = sklv 
--	local statetime = 5  
--	AddState ( ATKER , DEFER , STATE_MB , statelv , statetime ) 
--	Check_Ys_Rem ( ATKER , DEFER )
end 

function SkillCooldown_Mb( sklv )
	local Cooldown = 20000
	return Cooldown
end

function State_Mb_Add ( role , statelv ) 
	local aspdsa_dif = (-1) * (  0.1 + statelv * 0.03   ) 
	local mspdsa_dif = (-1) * (  0.2 +statelv * 0.03 ) 
	local aspdsa = math.floor ( ( AspdSa( role ) + aspdsa_dif ) * ATTR_RADIX )  
	local mspdsa = math.floor ( ( MspdSa( role ) + mspdsa_dif ) * ATTR_RADIX  ) 
  	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD ) 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

function State_Mb_Rem ( role , statelv ) 
	local aspdsa_dif = (-1) * (  0.1 + statelv * 0.03   ) 
	local mspdsa_dif = (-1) * (  0.2 +statelv * 0.03 ) 
	local aspdsa = math.floor ( ( AspdSa( role ) - aspdsa_dif ) * ATTR_RADIX )  
	local mspdsa = math.floor ( ( MspdSa( role ) - mspdsa_dif ) * ATTR_RADIX  ) 
	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD ) 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 


-- Торнадо
function SkillSp_Jf ( sklv )	
	local sp_reduce = 25 + sklv * 2   
	return sp_reduce 
end 

function SkillCooldown_Jf( sklv )
	local Cooldown = 16000
	return Cooldown
end

function SkillEnergy_Jf ( sklv )	
	local energy_reduce = math.floor ( 1 + sklv * 0.25 )    
	return 0 
end 

function Skill_Jf_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce  = SkillSp_Jf ( sklv )  
	if sp - sp_reduce < 0 then 
		SkillUnable(role) 
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Jf_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime = math.floor ( 3 + sklv * 0.5 ) 
	local a = 1 
	local hp_defer = Hp ( DEFER ) 
	local MxHp_defer = Mxhp ( DEFER )
	
	if MxHp_defer >= 100000 then
		SetSus( DEFER , 0 )
		return
	end

	if hp_defer >= 50000 then 
		a = Percentage_Random ( 0.2 ) 
		statetime = math.floor ( statetime / 2 ) + 1 
	end 
	if  a == 1 then
		if GetChaTypeID( ATKER ) == 986 then
			statetime = 12
			statelv = 10
		end
		AddState ( ATKER , DEFER , STATE_JF , statelv , statetime ) 
		SystemNotice(DEFER, "На вас действует эффект <Торнадо> "..statelv.."ур. на "..statetime.. " секунд" )		
	
	else 
		SetSus( DEFER , 0 ) 
	end 
end 

function State_Jf_Add ( role , statelv ) 
end 

function State_jf_Rem ( role , statelv ) 
end 

-- Молния
function SkillSp_Lj ( sklv )	
	local sp_reduce = 25 + sklv * 2   
	return sp_reduce 
end

function SkillCooldown_Lj( sklv )
	local Cooldown = 8800 - sklv * 400
	return Cooldown
end

function SkillEnergy_Lj ( sklv )	
	local energy_reduce = math.floor ( 3 + sklv * 0.5 )    
	return 0 
end 

function Skill_Lj_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce  = SkillSp_Lj ( sklv )  
	if sp - sp_reduce < 0 then 
		SkillUnable(role) 
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Lj_End ( ATKER , DEFER , sklv ) 
	local statelv = 2  
	local statetime = 3 
	local atk_role = TurnToCha ( ATKER ) 
	local def_role = TurnToCha ( DEFER ) 
	local sta_atk= Sta ( ATKER ) 
	local sta_def = Sta ( DEFER )
	local Lv = Lv( ATKER )
	local AddStateLv = 0
	AddStateLv = GetChaStateLv ( ATKER , STATE_MLCH )
	
	local dmg = math.floor ( 80 + sklv*10 +sta_atk * 6 ) + 3 * Lv
	local map_name_DEFER = GetChaMapName ( DEFER )
	local agi_atker = Agi(ATKER)
	local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
		if Can_Pk_Garner2 == 0 then
			dmg = math.floor(MAGIC_Atk_Dmg(ATKER,DEFER)*math.pow(sklv,1/2))
		end
	end
	local CheckItem_Death = CheckItem_Death ( ATKER )
	if CheckItem_Death == 1 then
		local Percentage_Death = Percentage_Random ( 0.6 )
			if Percentage_Death == 1 then
				dmg = math.floor(dmg * 1.5)
				SystemNotice ( ATKER , "Получена сила набора Сета Смерти. Эффект навыка усилен!")
			end
	end
	local Check_Heilong = CheckItem_Heilong ( ATKER )
	if Check_Heilong == 1 then
		local Percentage = Percentage_Random ( 0.8 )
		if Percentage == 1 then
			dmg = dmg*1.5 
			SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Урон увеличен!")
		end
	end
	local Check_Heilong_app = CheckItem_Heilong_app ( ATKER )
	if Check_Heilong_app == 1 then
		local Percentage_app = Percentage_Random ( 0.8 )
		if Percentage_app == 1 then
			dmg = dmg*1.5 
			SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Урон увеличен!")
		end
	end
	local dmg_fin = Cuihua_Mofa ( dmg , AddStateLv )
	local dmg_ElfSkill = ElfSkill_MagicAtk ( dmg , ATKER )
	dmg_fin = dmg_fin + dmg_ElfSkill * 0.90
	AddState ( ATKER , DEFER , STATE_MB , statelv , statetime ) 
	Hp_Endure_Dmg ( DEFER , dmg_fin ) 
end 

--Охотничий удар
function SkillSp_Ldc ( sklv )
	local sp_reduce = 10  
	return sp_reduce 
end 

function SkillCooldown_Ldc( sklv )
	local Cooldown = 30000
	return Cooldown
end

function Skill_Ldc_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Ldc ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Ldc_End ( ATKER , DEFER , sklv ) 
	if ValidCha(ATKER) == 0 then 
		LG ( "luascript_err" , "function Skill_Ldc_End : ATKER as null" ) 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		LG ( "luascript_err" , "function Skill_Ldc_End : DEFER as null" ) 
		return 
	end 
		dmg = ( 2 +  sklv * 0.2 ) * Atk_Dmg ( ATKER ,DEFER ) 
		Hp_Endure_Dmg ( DEFER , dmg )  

end 

--Исцеление
function SkillSp_Xzy ( sklv )			
	local sp_reduce = 30 + sklv * 5   
	return sp_reduce 
end

function SkillCooldown_Xzy( sklv ) 
	local Cooldown = 8000 - sklv * 300 
	return Cooldown 
end

function Skill_Xzy_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce  = SkillSp_Xzy ( sklv )  
	if sp - sp_reduce < 0 then 
		SkillUnable(role) 
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Xzy_End ( ATKER , DEFER , sklv ) 
	local sta = Sta( ATKER ) 
	local exp = Exp( ATKER ) 
	local hpdmg = ( -1 ) * math.floor ( 50 + 15 * sklv + sta * 8 ) 
	local mxhp_def = Mxhp( DEFER ) 
	local hp_def = Hp( DEFER ) 
	local hp_recover = math.max( math.min ( ( mxhp_def - hp_def ) , (-1) * hpdmg ) , 0 )
	local exp_add = hp_recover / 8 
	local Lv = Lv( ATKER )
		if Lv >= 80 then
			exp_add = exp_add / 50
		end
	local rolemode_defer = IsPlayer ( DEFER ) 
	local ChaList = {}
	local i = 0
	local Hate = 0
	local role = ATKER
	local HateNum = 3
	local HateAddNum = 0
	if rolemode_defer == 1 and DEFER ~= ATKER then 
		exp = exp + exp_add 
		SetCharaAttr ( exp , ATKER , ATTR_CEXP )  
	end 
	if job == 14 then
		hpdmg = math.floor(hpdmg * 1.4) * 4.1
	else
		hpdmg = hpdmg * 4.1
	end
	Hp_Endure_Dmg ( DEFER , hpdmg ) 
	ChaList[1] , ChaList[2] , ChaList[3] , ChaList[4] , ChaList[5] , ChaList[6] , ChaList[7] , ChaList[8] , ChaList[9] , ChaList[10] , ChaList[11] , ChaList[12] = GetChaSetByRange ( DEFER , 0 ,0 ,800 , 0)
	Hate = math.floor ( hpdmg / -2 )
	for i = 1 , 12 , 1 do
		if ChaList[i] ~= nil then
			role = GetChaTarget ( ChaList[i] )
			if role == DEFER then
if HateAddNum < HateNum then
	AddHate ( ChaList[i] , ATKER , Hate )
	HateAddNum = HateAddNum + 1
end

			end
		end
	end

end 

--Восстановление
function SkillSp_Hfs ( sklv )	
	local sp_reduce = 20    
	return sp_reduce 
end 

function SkillCooldown_Hfs( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_Hfs_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Hfs ( sklv ) 
	local hp_recover = sklv * 50 + 100 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	local hp = Hp ( role ) + hp_recover 
	SetCharaAttr ( hp , role , ATTR_HP ) 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Hfs_End ( ATKER , DEFER , sklv ) 
		Rem_State_Unnormal ( DEFER ) 
		--LG( "Hfs", "Recover Skill Level=" , sklv , "Skill Damage= " , dmg , '\n" ) 
end 

--Призрачный удар
function SkillSp_Xlcz ( sklv )
	local sp_reduce = 30 + sklv * 2   
	return sp_reduce 
end 

function SkillCooldown_Xlcz( sklv ) 
	local Cooldown = 6000 - sklv * 300
	return Cooldown
end

function Skill_Xlcz_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Xlcz ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Xlcz_End ( ATKER , DEFER , sklv ) 
	if ValidCha(ATKER) == 0 then 
		LG ( "luascript_err" , "function Skill_Xlcz_End : ATKER as null" ) 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		LG ( "luascript_err" , "function Skill_Xlcz_End : DEFER as null" ) 
		return 
	end 
	local lv_atker = Lv ( TurnToCha ( ATKER ) ) 
	local lv_defer = Lv ( TurnToCha ( DEFER ) ) 
	local sta_atker = Sta(ATKER) 
	local sta_defer = Sta(DEFER) 
	local lv_dif = math.max ( ( - 1 ) * 10 , math.min ( 10 , lv_atker - lv_defer ) ) 
	local AddStateLv = 0
	AddStateLv = GetChaStateLv ( ATKER , STATE_MLCH )

	hpdmg = math.floor (( 10 + sta_atker * 2 ) * ( 1 + sklv * 0.7 ) * ( 1 +  lv_dif * 0.025 ))
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local agi_atker = Agi(ATKER)
	local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_ATKER == "07xmas2" or map_name_DEFER == "07xmas2" or map_name_ATKER == "07xmas" or map_name_DEFER == "07xmas" then
			if Can_Pk_Garner2 == 0 then
				local dmg = MAGIC_Atk_Dmg(ATKER,DEFER)
					hpdmg = math.floor (( 10 + sta_atker * 2 ) * ( 1 + sklv * 0.7 ) * ( 1 +  lv_dif * 0.025 ))
				end
		end
	local dmg_fin = Cuihua_Mofa ( hpdmg ,AddStateLv )
	local dmg_ElfSkill = ElfSkill_MagicAtk ( hpdmg , ATKER )
	dmg_fin = dmg_fin + dmg_ElfSkill
	local job = GetChaAttr(role, ATTR_JOB)
	if job == 14 then
		dmg_fin = math.floor (dmg_fin * 0.98)
	else
		dmg_fin = math.floor (dmg_fin * 0.90)
	end
	dmg_fin = dmg_fin 
	local CheckItem_Death = CheckItem_Death(ATKER)
	if CheckItem_Death == 1 then
		dmg_fin = math.floor (dmg_fin * 1.05)
	end
	-- if map_name_ATKER == 'garner2' or map_name_DEFER == 'garner2' or map_name_ATKER == 'puzzleworld' or map_name_DEFER == 'puzzleworld' or map_name_ATKER == 'puzzleworld2' or map_name_DEFER == 'puzzleworld2' or map_name_ATKER == '07xmas2' or map_name_DEFER == '07xmas2' then
		-- local monster = Is_NormalMonster (DEFER)
		-- if monster == 1 then
			-- local rolldmg = math.random(1,3)
			-- local test_rand = math.random(1,100)
	-- if test_rand >= 1 and test_rand <= 5 then
		-- rolldmg = 4
	-- else
		-- rolldmg = rolldmg
	-- end	
			-- dmg_fin = math.floor ( dmg_fin * rolldmg )
		-- end
	-- end
	Hp_Endure_Dmg ( DEFER, dmg_fin )  
--	LG( "xlcz", "Spiritual Bolt Skill Level=" , sklv ,"Attacker sta=", sta ,"Normal attack damage=", atkdmg , "Skill Damage= " , dmg , "\n" ) 
end 

--Магическая атака
function MAGIC_Atk_Dmg(a,b) 

	local job = GetChaAttr(a, ATTR_JOB) --І»Н¬Ц°ТµІЙУГІ»Н¬µДКфРФіЙі¤ВК
	local sta_atker = Sta(a) 
	local sta_defer = Sta(b) 
	local atk_mnatk = math.floor (MnatkIb(a) + sta_atker*Magic_rate1[job] +  Magic_rate2[job] * math.pow(math.floor( sta_atker*4/15), 2 ))
	local atk_mxatk = math.floor (MxatkIb(a)  + sta_atker*Magic_rate1[job] + Magic_rate2[job] * math.pow(math.floor( sta_atker*4/15), 2 ))
	local defer_mgic_def = sta_defer * 1.7  
	local defer_resist = Resist(b)  
	local atker_lv = Lv( a ) 
	local defer_lv = Lv( b ) 
	local lv_dis = atker_lv - defer_lv 
	local lv_eff = 1 
	if math.abs (lv_dis) >= 1 then 
		lv_eff =math.min (  math.max ( 0.5 , 1 + 0.025 * lv_dis ) , 1.5 )  
	end 
		
	local atk = math.random( atk_mnatk , atk_mxatk ) 
	local dmg = Magic_Dmg ( atk, defer_mgic_def , defer_resist )  --[[јЖЛгХэіЈЙЛє¦Цµ]]--
	local mndmg = math.floor(  Lv(a) * 0.25 + Mnatk(a) * 0 ) + 1 --[[јЖЛгЧоРЎЙЛє¦Цµ]]--
	dmg =math.max(  lv_eff * dmg , mndmg ) 

	return dmg 
end 

function Magic_Dmg (atk, def, resist )
	local magic_atk = atk 
	local magic_def = def 
	local magic_resist = resist 
--	LuaPrint ( " Physical Attack= "..phy_atk.." Physical Defense= "..phy_def.."Physical Resist= "..phy_resist ) 
--	LuaPrint (\n) 
--	LG ( " Damage" , "Physical attack= ", phy_atk, "Physical Resist= " , phy_def, " Physical Resist= " , phy_resist, "\n" ) 
	dmg = math.floor( (magic_atk   - magic_def ) * (1 - math.min (0.85 , magic_resist/100 )  ))
	return dmg 
end 


	Magic_rate1 = {} 
	Magic_rate2 = {} 

Magic_rate1[	JOB_TYPE_XINSHOU	]=	1
Magic_rate1[	JOB_TYPE_JIANSHI	]=	1
Magic_rate1[	JOB_TYPE_LIEREN	]=	1
Magic_rate1[	JOB_TYPE_SHUISHOU	]=	1
Magic_rate1[	JOB_TYPE_MAOXIANZHE	]=	1.5
Magic_rate1[	JOB_TYPE_QIYUANSHI	]=	1.5
Magic_rate1[	JOB_TYPE_JISHI	]=	1
Magic_rate1[	JOB_TYPE_SHANGREN	]=	1
Magic_rate1[	JOB_TYPE_JUJS	]=	1
Magic_rate1[	JOB_TYPE_SHUANGJS	]=	1
Magic_rate1[	JOB_TYPE_JIANDUNSHI	]=	1
Magic_rate1[	JOB_TYPE_XUNSHOUSHI	]=	1
Magic_rate1[	JOB_TYPE_JUJISHOU	]=	1
Magic_rate1[	JOB_TYPE_SHENGZHIZHE	]=	2
Magic_rate1[	JOB_TYPE_FENGYINSHI	]=	3
Magic_rate1[	JOB_TYPE_CHUANZHANG	]=	1
Magic_rate1[	JOB_TYPE_HANGHAISHI	]=	2
Magic_rate1[	JOB_TYPE_BAOFAHU	]=	1
Magic_rate1[	JOB_TYPE_GONGCHENGSHI	]=	1

Magic_rate2[	JOB_TYPE_XINSHOU	]=	0.4
Magic_rate2[	JOB_TYPE_JIANSHI	]=	0.4
Magic_rate2[	JOB_TYPE_LIEREN	]=	0.4
Magic_rate2[	JOB_TYPE_SHUISHOU	]=	0.4
Magic_rate2[	JOB_TYPE_MAOXIANZHE	]=	0.3
Magic_rate2[	JOB_TYPE_QIYUANSHI	]=	0.3
Magic_rate2[	JOB_TYPE_JISHI	]=	0.4
Magic_rate2[	JOB_TYPE_SHANGREN	]=	0.4
Magic_rate2[	JOB_TYPE_JUJS	]=	0.4
Magic_rate2[	JOB_TYPE_SHUANGJS	]=	0.4
Magic_rate2[	JOB_TYPE_JIANDUNSHI	]=	0.4
Magic_rate2[	JOB_TYPE_XUNSHOUSHI	]=	0.4
Magic_rate2[	JOB_TYPE_JUJISHOU	]=	0.4
Magic_rate2[	JOB_TYPE_SHENGZHIZHE	]=	0.35
Magic_rate2[	JOB_TYPE_FENGYINSHI	]=	0.45
Magic_rate2[	JOB_TYPE_CHUANZHANG	]=	0.4
Magic_rate2[	JOB_TYPE_HANGHAISHI	]=	0.35
Magic_rate2[	JOB_TYPE_BAOFAHU	]=	0.4
Magic_rate2[	JOB_TYPE_GONGCHENGSHI	]=	0.4

--Призрачный огоньь
function SkillSp_Xlzh ( sklv )	
	local sp_reduce = 45  + math.floor ( sklv * 3 )  
	return sp_reduce 
end

function SkillCooldown_Xlzh( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_Xlzh_Begin ( role , sklv ) 
	local sp = Sp( role ) 
	local sp_reduce = SkillSp_Xlzh ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Xlzh_End ( ATKER , DEFER , sklv )  
	local statelv = sklv 
	local statetime = 200 + sklv * 40 
	--LG( "Xlzh", "Spiritual Fire Skill Level=" , sklv , "\n" ) 
	AddState( ATKER , DEFER , STATE_XLZH, statelv , statetime )
	SystemNotice(DEFER, "Получено усиление <Призрачный огонь> "..statelv.."ур. на "..statetime.. " секунд" )

	--LG("skill_Xlzh", "function Skill_Oper_Xlzh: " , "add state Xlzh " , "\n" ) 
end 

function State_Xlzh_Add ( role , statelv ) 
	--LG("state_xlzh" , "function State_xlzh_Add : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local mnatksa_dif =0.1 + 0.01 * statelv 
	local mxatksa_dif =0.1 + 0.01 * statelv
	local mnatksa = math.floor ( (MnatkSa(role) + mnatksa_dif ) * ATTR_RADIX) 
	local mxatksa = math.floor ( (MxatkSa(role) + mxatksa_dif ) * ATTR_RADIX) 
	SetCharaAttr( mnatksa , role , ATTR_STATEC_MNATK ) 
	SetCharaAttr( mxatksa , role , ATTR_STATEC_MXATK ) 
	ALLExAttrSet(role)  
end 

function State_Xlzh_Rem ( role , statelv ) 
	--LG("state_xlzh" , "function State_xlzh_Rem : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local mnatksa_dif =0.1 + 0.01 * statelv 
	local mxatksa_dif =0.1 + 0.01 * statelv
	local mnatksa = math.floor ( (MnatkSa(role) - mnatksa_dif ) * ATTR_RADIX) 
	local mxatksa = math.floor ( (MxatkSa(role) - mxatksa_dif ) * ATTR_RADIX) 
	SetCharaAttr( mnatksa , role , ATTR_STATEC_MNATK ) 
	SetCharaAttr( mxatksa , role , ATTR_STATEC_MXATK ) 
	ALLExAttrSet(role)  
end 

--Мощь бури
function SkillSp_Fzlz ( sklv )	
	local sp_reduce = 40  + sklv * 4
	return sp_reduce 
end

function SkillCooldown_Fzlz( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_Fzlz_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Fzlz(sklv)  
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Fzlz_End ( ATKER , DEFER , sklv )  
	local statelv = sklv 
	local statetime = 200 + sklv * 40

	if GetChaTypeID( ATKER ) == 984 then
		statetime = 360
		statelv = 10
	end
	SystemNotice(DEFER, "Получено усиление <Мощь бури> "..statelv.."ур. на "..statetime.. " секунд" )

	AddState( ATKER , DEFER , STATE_FZLZ, statelv , statetime ) 
end 

function State_Fzlz_Add ( role , statelv ) 
	--LG("state_Fzlz" , "function State_Fzlz_Add : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local mspdsa_dif = 0.05 + 0.01 * statelv 
	local aspdsa_dif = 0.05 + 0.01 * statelv 
	local mspdsa = math.floor ( (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX) 
	local aspdsa = math.floor ( (AspdSa(role) + aspdsa_dif ) * ATTR_RADIX)
	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD )
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )
	ALLExAttrSet(role)  
end 

function State_Fzlz_Rem ( role , statelv ) 
	--LG("state_fzlz" , "function State_fzlz_Rem : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local mspdsa_dif =0.05 + 0.01 * statelv 
	local aspdsa_dif = 0.05 + 0.01 * statelv 
	local mspdsa = math.floor ( (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX) 
	local aspdsa = math.floor ( (AspdSa(role) - aspdsa_dif ) * ATTR_RADIX)
	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD )
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )
	ALLExAttrSet(role)  
end 

--Ледяная стрела
function SkillSp_Bdj ( sklv )	
   local sp_reduce = 15   
	return sp_reduce 
end 

function SkillCooldown_Bdj( sklv )
	local Cooldown = 15000
	return Cooldown
end

function Skill_Bdj_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Bdj ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Bdj_End ( ATKER , DEFER , sklv ) 
	if ValidCha(ATKER) == 0 then 
		LG ( "luascript_err" , "function Skill_Bdj_End : ATKER as null" ) 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		LG ( "luascript_err" , "function Skill_Bdj_End : DEFER as null" ) 
		return 
	end 
	local hpdmg =1.2 * Atk_Dmg ( ATKER , DEFER ) * 0.85
	Hp_Endure_Dmg ( DEFER , hpdmg )  
	local statelv = sklv 
	local statetime = 5 
	if GetChaTypeID( ATKER ) == 983 then
		statelv = 10
	end

	local CheckItem_Death = CheckItem_Death ( ATKER )
	if CheckItem_Death == 1 then
		local Percentage_Death = Percentage_Random ( 0.7 )
			if Percentage_Death == 1 then
statetime = math.floor (statetime * 1.3)
SystemNotice ( ATKER , "Получена сила набора Сета Смерти. Эффект навыка усилен!")
			end
	end
SystemNotice(DEFER, "На вас действует эффект <Замедление> "..statelv.."ур. на "..statetime.. " секунд" )		
	
	AddState ( ATKER , DEFER , STATE_BDJ , statelv , statetime ) 
end 

function State_Bdj_Add ( role , statelv ) 
	--LG("state_Bdj" , "function State_Bdj_Add : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local mspdsa_dif = 0.2 + statelv * 0.03
	local mspdsa = ( MspdSa(role) - mspdsa_dif ) * ATTR_RADIX  
	SetCharaAttr ( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

function State_Bdj_Rem ( role , statelv ) 
	--LG("state_Bdj" , "function State_Bdj_Rem : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local mspdsa_dif = 0.2 + statelv * 0.03
	local mspdsa =( MspdSa(role) + mspdsa_dif ) * ATTR_RADIX  
	SetCharaAttr ( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 


--Калечащий выстрел
function SkillSp_Tj ( sklv )	
	local sp_reduce = 10 + sklv * 0.5  
	return sp_reduce 
end

function SkillCooldown_Tj( sklv )
	local Cooldown = 13000 - sklv * 200  
	return Cooldown 
end 

function Skill_Tj_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Tj ( sklv )
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Tj_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime = 5 + sklv * 0.5 
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local agi_atker = Agi(ATKER)
	local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			if Can_Pk_Garner2 == 0 then
			 statetime =math.max(3,math.floor(agi_atker/20))+sklv*0.6
				--Notice ( "statetime="..statetime)
			end
		end
	local hp_defer = Mxhp ( DEFER ) 
	if hp_defer >= 100000 then 
		statetime = math.floor ( statetime / 3 ) 
	end 
 	dmg = ( 1 + sklv * 0.05 ) * Atk_Dmg ( ATKER , DEFER )   
	Hp_Endure_Dmg ( DEFER , dmg )  

	if GetChaTypeID( ATKER ) == 980 then
		statetime = 5
	end
	if GetChaAIType( DEFER ) >= 21 then   
		if BOSSTJSJ[GetChaTypeID( DEFER )] == 0 then
			SystemNotice ("Неужели ты думаешь, что меня можно победить единственным навыком? Попробуй что-нибудь другое")
			return
		else
			BOSSTJSJ[GetChaTypeID( DEFER )] = BOSSTJSJ[GetChaTypeID( DEFER )] -1
		end
	end

	local CheckItem_Death = CheckItem_Death ( ATKER )
	if CheckItem_Death == 1 then
		local Percentage_Death = Percentage_Random ( 0.7 )
			if Percentage_Death == 1 then
statetime = math.floor (statetime * 1.3)
SystemNotice ( ATKER , "Получена сила набора Сета Смерти. Эффект навыка усилен!")
			end
	end
SystemNotice(DEFER, "На вас действует эффект <Замедление> "..statelv.."ур. на "..statetime.. " секунд" )		

	AddState( ATKER , DEFER , STATE_TJ, statelv , statetime ) 

end 

function State_Tj_Add ( role , statelv ) 
	--LG("state_Tj" , "function State_Tj_Add : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local fleesa_dif = (-1) * 0.2 
	local mspdsa_dif = (-1) * ( 0.5 + 0.025 * statelv ) 
	local fleesa = (FleeSa(role) + fleesa_dif ) * ATTR_RADIX
	local mspdsa = (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( fleesa , role , ATTR_STATEC_FLEE ) 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

function State_Tj_Rem ( role , statelv ) 
	--LG("state_tj" , "function State_Tj_Rem : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local fleesa_dif = (-1) * 0.2 
	local mspdsa_dif = (-1) * ( 0.5 + 0.025 * statelv ) 
	local fleesa = (FleeSa(role) - fleesa_dif ) * ATTR_RADIX
	local mspdsa = (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( fleesa , role , ATTR_STATEC_FLEE ) 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 


--Ослабление
function SkillSp_Sj ( sklv )	
	local sp_reduce = 25 + sklv * 1   
	return sp_reduce 
end

function SkillCooldown_Sj( sklv )
	local Cooldown = 25000
	return Cooldown
end

function Skill_Sj_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Sj ( sklv )
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Sj_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime = 5 + math.floor ( sklv * 0.5  ) 
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local agi_atker = Agi(ATKER)
	local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			if Can_Pk_Garner2 == 0 then
			 statetime =math.max(5,math.floor(agi_atker/20))+sklv/3
	--			Notice ( "statetime="..statetime)
			end
		end
	local a = 1 
 	local dmg = math.floor( 100 + sklv * 10  )  
	Hp_Endure_Dmg ( DEFER , dmg )  

	local hp_defer = Mxhp ( DEFER ) 
	if hp_defer >= 100000 then 
		local a = Percentage_Random (1)
		if a == 1 then
			statetime = math.floor ( 3 + sklv * 0.3 ) * 0.8
		else
			SetSus( DEFER , 0 )
			--SystemNotice ( ATKER , "Enfeeble has been evaded completely" ) 
			return
		end
	end 
	if GetChaTypeID( ATKER ) == 980 then
		statetime = 5
	end
	if GetChaAIType( DEFER ) >= 21 then   
		if BOSSSJSJ[GetChaTypeID( DEFER )] == 0 then
			SystemNotice ("Неужели ты думаешь, что меня можно победить единственным навыком? Попробуй что-нибудь другое")
			return
		else
			BOSSSJSJ[GetChaTypeID( DEFER )] = BOSSSJSJ[GetChaTypeID( DEFER )] -1
		end
	end

	local CheckItem_Death = CheckItem_Death ( ATKER )
	if CheckItem_Death == 1 then
		local Percentage_Death = Percentage_Random ( 0.7 )
			if Percentage_Death == 1 then
					statetime = math.floor (statetime * 1.3)
					SystemNotice ( ATKER , "Получена сила набора Сета Смерти. Эффект навыка усилен!")
			end
	end
	SystemNotice(DEFER, "На вас действует эффект <Безмолвие> "..statelv.."ур. на "..statetime.. " секунд" )		

	AddState( ATKER , DEFER , STATE_SJ, statelv , statetime ) 
	AddState( ATKER , DEFER , STATE_JNJZ, statelv , statetime ) 
	--LG( "Sj", "Enfeeble Skill Level=" , sklv , "Skill Damage= " , dmg , '\n" ) 

end 

function State_Sj_Add ( role , statelv ) 
	--LG("state_sj" , "function State_Sj_Add : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local mnatksa_dif = (-1) * 0.2 
	local mxatksa_dif = (-1) * 0.2  
	local mnatksa = (MnatkSa(role) + mnatksa_dif ) * ATTR_RADIX
	local mxatksa = (MxatkSa(role) + mxatksa_dif ) * ATTR_RADIX 
	SetCharaAttr( mnatksa , role , ATTR_STATEC_MNATK ) 
	SetCharaAttr( mxatksa , role , ATTR_STATEC_MXATK ) 
	ALLExAttrSet(role)  
end 

function State_Sj_Rem ( role , statelv ) 
	--LG("state_sj" , "function State_Sj_Rem : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local mnatksa_dif = (-1) * 0.2 
	local mxatksa_dif = (-1) * 0.2  
	local mnatksa = (MnatkSa(role) - mnatksa_dif ) * ATTR_RADIX 
	local mxatksa = (MxatkSa(role) - mxatksa_dif ) * ATTR_RADIX 
	SetCharaAttr( mnatksa , role , ATTR_STATEC_MNATK ) 
	SetCharaAttr( mxatksa , role , ATTR_STATEC_MXATK ) 
	ALLExAttrSet(role)  
end 


--Выстрел в голову
function SkillSp_Bt ( sklv )	
	local sp_reduce = sklv * 2 + 30  
	return sp_reduce 
end 

function SkillCooldown_Bt( sklv )
	local Cooldown = 25000
	return Cooldown
end

function Skill_Bt_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Bt ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Bt_End ( ATKER , DEFER , sklv ) 
	local 	hp = GetChaAttr ( DEFER , ATTR_HP ) 
	local 	dmg = math.floor ( 320 + 30 * sklv +hp * ( 0.05 +0.005 * sklv) ) 
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local dex_atker = Dex(ATKER)
	local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			if Can_Pk_Garner2 == 0 then
				dmg = math.floor ( dex_atker*2 + 23 * sklv +hp * ( 0.04 +0.004 * sklv) ) 
			end
		end
	if dmg > 2500 then
		dmg = 2500
	end
	local Check_Heilong = CheckItem_Heilong ( ATKER )
	if Check_Heilong == 1 then
			local Percentage = Percentage_Random ( 0.1 )
			if Percentage == 1 then
				dmg = dmg * 10 
				SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Урон увеличен!")
			end
	end
	local Check_Heilong_app = CheckItem_Heilong_app ( ATKER )
	if Check_Heilong_app == 1 then
			local Percentage_app = Percentage_Random ( 0.1 )
			if Percentage_app == 1 then
				dmg = dmg * 10 
				SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Урон увеличен!")
			end
	end
	
	hp = hp - dmg 
	SetCharaAttr ( hp , DEFER , ATTR_HP ) 
end 

--Ангельский щит
function SkillSp_Tshd ( sklv )	
	local sp_reduce = 20 
	return sp_reduce 
end

function SkillCooldown_Tshd( sklv )
	local Cooldown = 5000
	return Cooldown
end

function Skill_Tshd_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Tshd ( sklv )	
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Tshd_End ( ATKER , DEFER , sklv )  
	local statelv = sklv 
	local statetime = 60 + sklv * 6 
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local sta_atker = Sta(ATKER)
	local Can_Pk_Garner2 = Is_NormalMonster (ATKER)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			if Can_Pk_Garner2 == 0 then
			 statetime =math.max(30,math.floor(sta_atker/5))+sklv*2
		--		Notice ( "statetime="..statetime)
			end
		end
	
	if GetChaTypeID( ATKER ) == 984 then
		statetime = 360
		statelv = 10
	end
        AddState( ATKER , DEFER , STATE_TSHD, statelv , statetime )
		SystemNotice(DEFER, "На вас действует эффект <Ангельский щит> "..statelv.."ур. на "..statetime.. " секунд" )		

end 

function State_Tshd_Add ( role , statelv ) 
	--LG("state_tshd" , "function State_Tshd_Add : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local defsa_dif = 0.03 * statelv 
	local defsa = math.floor ( ( DefSa(role) + defsa_dif ) * ATTR_RADIX ) 
	SetCharaAttr( defsa , role , ATTR_STATEC_DEF ) 
	ALLExAttrSet(role)  
end 

function State_Tshd_Rem ( role , statelv ) 
	--LG("state_xlzh" , "function State_Tshd_Rem : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local defsa_dif = 0.03 * statelv 
	local defsa = math.floor ( ( DefSa(role) - defsa_dif ) * ATTR_RADIX ) 
	SetCharaAttr( defsa , role , ATTR_STATEC_DEF ) 
	ALLExAttrSet(role)  
end 

--	Магический щит
function SkillSp_Xlpz ( sklv )	
	local sp_reduce = 0  
	return sp_reduce 
end

function SkillCooldown_Xlpz( sklv )
	local Cooldown = 1000
	return Cooldown
end

function Skill_Xlpz_Begin ( role , sklv ) 
	local sp = Sp( role ) 
	local sp_reduce = SkillSp_Xlpz ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Xlpz_End ( ATKER , DEFER , sklv )
	--local pok = sklv
	local sklv = sklv 
	
	local statelv = sklv 
	local statetime = -1  
	
	if GetChaTypeID( ATKER ) == 984 then
		statelv = 10
	end
	AddState( ATKER , DEFER , STATE_MFD, statelv , statetime )
	
	SystemNotice(DEFER, "На вас действует эффект <Магический щит> "..sklv.."ур.")		
end 

--Утаивание
function SkillSp_Ys ( sklv ) 
	local sp_reduce = 10  
	return sp_reduce 
end 

function SkillCooldown_Ys( sklv ) 
	local Cooldown = 30000 
	return Cooldown 
end 

function Skill_Ys_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Ys ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Ys_End ( ATKER , DEFER , sklv ) 

	local statelv = sklv 
	local statetime = 20 + sklv * 10
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local agi_atker = Agi(ATKER)
	local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
		if Can_Pk_Garner2 == 0 then
			statetime = 20 + agi_atker/4 + sklv*4
		end
	end
	AddState ( ATKER , DEFER , STATE_YS , statelv , statetime ) 

	SystemNotice(DEFER, "На вас действует эффект <Невидимость> "..statelv.."ур. на "..statetime.." секунд" )		

end 

function State_Ys_Add ( role , statelv ) 
	local sp = Sp(role) 
	local sp_reduce = 10 - math.floor ( statelv * 0.5  ) 
	local map_name_DEFER = GetChaMapName ( role )
	local agi_atker = Agi(role)
	local Can_Pk_Garner2 = Is_NormalMonster (role)
--	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
--		if Can_Pk_Garner2 == 0 then
--			local mspdsa_dif = 0.02 + 0.005 * statelv 
--			local aspdsa_dif = 0.02 + 0.005 * statelv 
--			local mspdsa = math.floor ( (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX) 
--	--		local aspdsa = math.floor ( (AspdSa(role) + aspdsa_dif ) * ATTR_RADIX)
--			SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD )
--			SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )
--			ALLExAttrSet(role) 
--			local sp_reduce = 12 - agi_atker/60 
--		end
--	end
	sp = sp - sp_reduce 
	if sp <= 0 then			
		RemoveState ( role , STATE_YS ) 
		return 
	end 
	SetCharaAttr ( sp , role , ATTR_SP ) 
end 

function State_Ys_Rem ( role , statelv ) 
	local map_name_DEFER = GetChaMapName ( role )
	local agi_atker = Agi(role)
	local Can_Pk_Garner2 = Is_NormalMonster (role)
--	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
--		if Can_Pk_Garner2 == 0 then
--			local mspdsa_dif = 0.02 + 0.005 * statelv 
--			Notic("State_Ys_Rem")
--			local aspdsa_dif = 0.02 + 0.005 * statelv 
--			local mspdsa = math.floor ( (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX) 
--	--		local aspdsa = math.floor ( (AspdSa(role) - aspdsa_dif ) * ATTR_RADIX)
--			SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD )
--			SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )
--			ALLExAttrSet(role) 
--		end
--	end
end 

--Переплетение
function SkillSp_Hzcr ( sklv )
	local sp_reduce = 20 + sklv * 1  
	return sp_reduce 
end

function SkillCooldown_Hzcr( sklv )
	local Cooldown = 12000
	return Cooldown
end

function Skill_Hzcr_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Hzcr ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Hzcr_End ( ATKER , DEFER , sklv ) 

	local statelv = sklv 
	local statetime =math.floor ( 6 + sklv * 0.5 ) 
	local role1 = TurnToCha ( ATKER )
	local Check_Heilong = CheckItem_Heilong ( role1)
		if Check_Heilong == 1 then
			local Percentage = Percentage_Random ( 0.8 )
			if Percentage == 1 then
statetime = statetime * 2
SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Действие навыка увеличено!")
			end
	end
	local Check_Heilong_app = CheckItem_Heilong_app ( role1)
		if Check_Heilong_app == 1 then
			local Percentage_app = Percentage_Random ( 0.8 )
			if Percentage_app == 1 then
statetime = statetime * 2
SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Действие навыка увеличено!")
			end
	end
	local hp_defer = Mxhp ( DEFER ) 
	if hp_defer >= 1000000 then 
		local a = Percentage_Random (0.5)
		if a == 1 then
			statetime = math.floor ( 6 + sklv * 0.5 ) 
		else
			SetSus( DEFER , 0 )
			SystemNotice ( ATKER , "Alga Entanglement failed" ) 
			return
		end
	end 
	if GetChaAIType( DEFER ) >= 21 then
		if BOSSWOD[GetChaTypeID( DEFER )] == 0 then
			SystemNotice ("Неужели ты думаешь, что меня можно победить единственным навыком? Попробуй что-нибудь другое")
			return
		else
			BOSSWOD[GetChaTypeID( DEFER )] = BOSSWOD[GetChaTypeID( DEFER )] -1
		end
	end
	AddState ( ATKER , DEFER , STATE_HZCR , statelv , statetime ) 
	SystemNotice(DEFER, "На вас действует эффект <Переплетение> "..statelv.."ур. на "..statetime.. " секунд" )		

end 

function State_Hzcr_Add ( role , statelv ) 
	local dmg = 9 + statelv * 2 
	Endure_Dmg ( role , dmg ) 
end 

function State_Hzcr_Rem ( role , statelv ) 
end

--Насмешка
function SkillSp_CHF ( sklv )	
	local sp_reduce = 10  
	return sp_reduce 
end 

function SkillCooldown_CHF( sklv )
	local Cooldown = 5000
	return Cooldown
end

function Skill_CHF_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_CHF ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_CHF_End ( ATKER , DEFER , sklv )

	local statelv = sklv 
	local statetime = 10 + sklv  
        local mxhp = Mxhp ( DEFER )
	local hate = mxhp
	
	if ValidCha ( ATKER ) == 0 then
		LG("Skill_CHF" , "Attacker as null")
		SkillUnable( ATKER )   
		return
	end
	
	if ValidCha ( DEFER ) == 0 then
		LG("Skill_CHF" , "Attacked target as nil")
		SkillUnable( ATKER )   
		return
	end
	
	if IsPlayer( DEFER ) == 1 then
		LG("Skill_CHF" , "Victim as")
		SkillUnable( ATKER )   
		return
	end
	AddState( ATKER , DEFER , STATE_CHF, statelv , statetime )
	AddHate ( DEFER , ATKER , hate )


	Check_Ys_Rem ( ATKER , DEFER)
end 

function State_Chf_Add ( role , statelv )
		local map_name_DEFER = GetChaMapName ( role )
		local Can_Pk_Garner2 = Is_NormalMonster (role)
		
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
		local sklv =math.floor(statelv)-1
		local CfLv = (statelv - sklv)*10
if CfLv ~= 0 then 
	local defsa_dif = 0.02 * CfLv 
	local defsa = math.floor ( (DefSa(role) - defsa_dif ) * ATTR_RADIX )
	SetCharaAttr( defsa , role , ATTR_STATEC_DEF ) 
	ALLExAttrSet(role)
end	
		end

end

function State_Chf_Rem ( role , statelv )
	local HateList = {}
	local Hate = {}
	local i = 0
	local HateMax = 0
	local ATKER = role
	local mxhp = Mxhp ( role )
	local hate = mxhp * -1
		local map_name_DEFER = GetChaMapName ( role )
		local Can_Pk_Garner2 = Is_NormalMonster (role)
		
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
		local sklv =math.floor(statelv)-1
		local CfLv = (statelv - sklv)*10

if CfLv ~= 0 then  
	local defsa_dif = 0.02 * CfLv 
	local defsa = math.floor ( (DefSa(role) + defsa_dif ) * ATTR_RADIX )
	SetCharaAttr( defsa , role , ATTR_STATEC_DEF ) 
	ALLExAttrSet(role)
end	
		end
	for i = 1 , 5 , 1 do
		HateList[i] , Hate[i] = GetChaHateByNo ( role , i-1 )
			
	end
	for i = 1 , 5 , 1 do
		if Hate[i] > HateMax then
			HateMax = Hate[i]
		end
	end
	for i = 1 , 5 , 1 do
		if Hate[i] == HateMax then
			ATKER = HateList[i]
		end
	end
	
	if ValidCha ( role ) == 0 then
		LG("Skill_CHF" , "Target as null")
		SkillUnable( role )   
		return
	end

	if ValidCha ( ATKER ) == 0 then
		LG("Skill_CHF" , "Target vengeance list as null")   
		return
	end
	AddHate ( role  , ATKER , hate )
end 

--Рык
function SkillArea_Circle_Pax ( sklv )	
	local side = 200 + 20 * sklv 
	SetSkillRange ( 4 , side )   
end 

function SkillCooldown_Pax( sklv )
	local Cooldown = 4000 - sklv * 200
	return Cooldown
end

function SkillPre_Pax ( sklv )
end 

function SkillSp_Pax ( sklv )	
	local sp_reduce = 20
	return sp_reduce 
end 

function Skill_Pax_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Pax ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Pax_End ( ATKER , DEFER , sklv ) 
	
	local HateList = {}
	local Hate = {}
	local i = 0
	local HateMax = 0
	local Hate_dif = 0
	local Hate_fin = 0
	local statelv = sklv
	local statetime = 3
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
	local CfLv = GetSkillLv (ATKER,242)
	local PxLv = GetSkillLv (ATKER,243)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			statelv = sklv + CfLv/10
		end
	if ValidCha ( ATKER ) == 0 then
			LG("Skill_PAX" , "Attacker as null")
			SkillUnable( ATKER )   
			return
	end
	
	if ValidCha ( DEFER ) == 0 then
			LG("Skill_PAX" , "Attacked target as nil")
			SkillUnable( ATKER )   
			return
	end
	
	if  IsPlayer( DEFER ) == 0 then
		for i = 1 , 5 , 1 do
			HateList[i] , Hate[i] = GetChaHateByNo ( DEFER , i-1 )
		end
		for i = 1 , 5 , 1 do
			if Hate[i] > HateMax then
HateMax = Hate[i]
			end
		end
		for i = 1 , 5 , 1 do
			if HateList[i] == ATKER then
Hate_dif = Hate[i]
			end
		end
		local mxhp = Mxhp ( DEFER )
		local hate = mxhp
		AddState( ATKER , DEFER , STATE_CHF, statelv , statetime )
		AddHate( DEFER , ATKER , hate )
		Check_Ys_Rem ( ATKER , DEFER)
	end
end 

--Владение щитом	
function Skill_Dpsl_Use( role , sklv ) 
	local statelv = sklv  
	local defsb_dif = 3 * statelv 
	local resistsb_dif = 1 * statelv 
	local mspdsa_dif = (-1) * 0.02 * statelv 
	local defsb = DefSb(role) + defsb_dif  
	local resistsb = ResistSb(role) + resistsb_dif 
	local mspdsa = MspdSa(role) + mspdsa_dif 
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF ) 
	SetCharaAttr( resistsb , role , ATTR_STATEV_PDEF ) 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )
	ALLExAttrSet(role)  
end 

function Skill_Dpsl_Unuse( role , sklv ) 
	local statelv = sklv 
	local defsb_dif = 3 * statelv 
	local resistsb_dif = 1 * statelv 
	local mspdsa_dif = (-1) *  0.02 * statelv 
	local defsb = DefSb(role) - defsb_dif  
	local resistsb = ResistSb(role) - resistsb_dif 
	local mspdsa = MspdSa(role) - mspdsa_dif 
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF ) 
	SetCharaAttr( resistsb , role , ATTR_STATEV_PDEF ) 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

function State_Dpsl_Add ( role , statelv ) 

end 

function State_Dpsl_Rem ( role , statelv ) 

end 

--Мастер большого меча
function Skill_Jjsl_Use( role , sklv ) 
	local statelv = sklv  
	local atksb_dif = 7 * statelv 
	local mnatkdeath = 1
	local mxatkdeath = 1
	local CheckItem_Death = CheckItem_Death ( role )
	if CheckItem_Death == 1 then
		mnatkdeath = 150
		mxatkdeath = 150
	end
	local mnatksb = MnatkSb(role) + atksb_dif + mnatkdeath
	local mxatksb = MxatkSb(role ) + atksb_dif + mxatkdeath
	local map_name_ATKER = GetChaMapName ( role )
	local JianLv = GetSkillLv (role,62)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			local hitsa_dif = (1) * (  0.02 * JianLv ) 
			local hitsa = math.floor (  (HitSa(role) + hitsa_dif ) * ATTR_RADIX ) 
			SetCharaAttr( hitsa , role , ATTR_STATEC_HIT ) 
		end
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)  
	--LG("skill_jjsl", "function Skill_Oper_Jjsl: " , "add state jjsl " , "\n" ) 
end 

function Skill_Jjsl_Unuse( role , sklv ) 
	local statelv = sklv 
	local atksb_dif = 7 * statelv
	local mnatkdeath = 1
	local mxatkdeath = 1
	local CheckItem_Death = CheckItem_Death ( role )
	if CheckItem_Death == 1 then
		mnatkdeath = 150
		mxatkdeath = 150
	end
	local mnatksb = MnatkSb(role) - atksb_dif - mnatkdeath
	local mxatksb = MxatkSb(role ) - atksb_dif - mxatkdeath
		local map_name_ATKER = GetChaMapName ( role )
	local JianLv = GetSkillLv (role,62)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			local hitsa_dif = (1) * (  0.02 * JianLv ) 
			local hitsa = math.floor (  (HitSa(role) - hitsa_dif ) * ATTR_RADIX ) 
			SetCharaAttr( hitsa , role , ATTR_STATEC_HIT ) 
		end
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)  
end 

function State_Jjsl_Add ( role , statelv ) 

end 

function State_Jjsl_Rem ( role , statelv ) 

end 

--Искусство владеть мечом	
function Skill_Jssl_Use( role , sklv ) 
	local statelv = sklv  
	local atksb_dif = 4 * statelv 
	local mnatkdeath = 1
	local mxatkdeath = 1
	local CheckItem_Death = CheckItem_Death ( role )
	if CheckItem_Death == 1 then
		mnatkdeath = 150
		mxatkdeath = 150
	end
	local mnatksb = MnatkSb(role) + atksb_dif + mnatkdeath
	local mxatksb = MxatkSb(role ) + atksb_dif + mxatkdeath
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK )
	local rybka = GetSkillLv( role , 109 )
	if rybka >= 1 then
		SetCharaAttr ( 0 , role , ATTR_LHAND_ITEMV )
	end
	ALLExAttrSet(role)
end 

function Skill_Jssl_Unuse( role , sklv ) 
	local statelv = sklv 
	local atksb_dif = 4 * statelv 
	local mnatkdeath = 1
	local mxatkdeath = 1
	local CheckItem_Death = CheckItem_Death ( role )
	if CheckItem_Death == 1 then
		mnatkdeath = 150
		mxatkdeath = 150
	end
	local mnatksb = MnatkSb(role) - atksb_dif - mnatkdeath
	local mxatksb = MxatkSb(role ) - atksb_dif - mxatkdeath
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK )
	local rybka = GetSkillLv( role , 109 )
	if rybka >= 1 then
		SetCharaAttr ( 0 , role , ATTR_LHAND_ITEMV )
	end
	ALLExAttrSet(role)  
end 

function State_Jssl_Add ( role , statelv ) 
end 

function State_Jssl_Rem ( role , statelv ) 
end 


--Звериная сила
function Skill_Shtz_Use( role , sklv ) 
	local statelv = sklv  
	local mxhpsb_dif = 50 * statelv 
	local mxhpsb = MxhpSb(role) + mxhpsb_dif  
	SetCharaAttr( mxhpsb , role , ATTR_STATEV_MXHP ) 
	ALLExAttrSet(role)  
end 

function Skill_Shtz_Unuse( role , sklv ) 
	local statelv = sklv 
	local mxhpsb_dif = 50 * statelv 
	local mxhpsb = MxhpSb(role) - mxhpsb_dif  
	SetCharaAttr( mxhpsb , role , ATTR_STATEV_MXHP ) 
	ALLExAttrSet(role)  
end 

function State_Shtz_Add ( role , statelv ) 

end 

function State_Shtz_Rem ( role , statelv ) 

end 

--Усиление
function Skill_Qhtz_Use( role , sklv ) 
	local statelv = sklv  
	local mxhpsb_dif = 20 * statelv + Con(role) * 3 
	local mxhpsb = MxhpSb(role) + mxhpsb_dif  
	local map_name_ATKER = GetChaMapName ( role )
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			local GTYZ_Lv = GetSkillLv(role,63)
			local  resistsb_dif = 1 * GTYZ_Lv
			local resistsb = ResistSb(role) + resistsb_dif
			SetCharaAttr( resistsb , role , ATTR_STATEV_PDEF )
		end
	
	SetCharaAttr( mxhpsb , role , ATTR_STATEV_MXHP ) 
	ALLExAttrSet(role)  
end 

function Skill_Qhtz_Unuse( role , sklv ) 
	local statelv = sklv 
	local mxhpsb_dif = 20 * statelv + Con(role) * 3 
	local mxhpsb = MxhpSb(role) - mxhpsb_dif  
	local map_name_ATKER = GetChaMapName ( role )
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			local GTYZ_Lv = GetSkillLv(role,63)
			local  resistsb_dif = 1 * GTYZ_Lv
			local resistsb = ResistSb(role) - resistsb_dif
			SetCharaAttr( resistsb , role , ATTR_STATEV_PDEF )
		end
		
	SetCharaAttr( mxhpsb , role , ATTR_STATEV_MXHP ) 
	ALLExAttrSet(role)  
end 

function State_Qhtz_Add ( role , statelv ) 
end 

function State_Qhtz_Rem ( role , statelv ) 
end 

--Сноровка
function Skill_Lqhb_Use( role , sklv ) 
	local statelv = sklv  
	local fleesb_dif = 3 * statelv 
	local fleesb = FleeSb(role) + fleesb_dif  
	SetCharaAttr( fleesb , role , ATTR_STATEV_FLEE ) 
	ALLExAttrSet(role)  
end 

function Skill_Lqhb_Unuse( role , sklv ) 
	local statelv = sklv 
	local fleesb_dif = 3 * statelv 
	local fleesb = FleeSb(role) - fleesb_dif  
	SetCharaAttr( fleesb , role , ATTR_STATEV_FLEE ) 
	ALLExAttrSet(role)  
end 

function State_Lqhb_Add ( role , statelv )

end 

function State_Lqhb_Rem ( role , statelv ) 

end 


--Концентрация
function Skill_Jdzz_Use( role , sklv ) 
	local statelv = sklv  
	local hitsb_dif = 1 * statelv 
	local hitsb = HitSb(role) + hitsb_dif  
	SetCharaAttr( hitsb , role , ATTR_STATEV_HIT ) 
	ALLExAttrSet(role)  
end 

function Skill_Jdzz_Unuse( role , sklv ) 
	local statelv = sklv 
	local hitsb_dif = 1 * statelv 
	local hitsb = HitSb(role) - hitsb_dif  
	SetCharaAttr( hitsb , role , ATTR_STATEV_HIT ) 
	ALLExAttrSet(role)  
end 

function State_Jdzz_Add ( role , statelv ) 
end 

function State_Jdzz_Rem ( role , statelv ) 
end 

--Кровавый бык
function Skill_Mnrx_Use( role , sklv ) 
	local statelv = sklv  
	local mxhpsa_dif = 0.1 + 0.02 * statelv 
	local defsa_dif = 0.1 + 0.02 * statelv 
	local mxhpsa = math.floor ( (MxhpSa(role) + mxhpsa_dif ) * ATTR_RADIX )
	local defsa = math.floor ( (DefSa(role) + defsa_dif ) * ATTR_RADIX )	
	local map_name_ATKER = GetChaMapName ( role )
	local GangTieLv = GetSkillLv (role,63)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			local hrecsb_dif =  10 * GangTieLv  
			local hrecsb = math.floor ( ( HrecSb ( role ) + hrecsb_dif )  ) 
			SetCharaAttr( hrecsb , role , ATTR_STATEV_HREC ) 
		end
	SetCharaAttr( mxhpsa , role , ATTR_STATEC_MXHP ) 
	SetCharaAttr( defsa , role , ATTR_STATEC_DEF ) 

	ALLExAttrSet(role)  
end 
 
function Skill_Mnrx_Unuse( role , sklv ) 
	local statelv = sklv 
	local mxhpsa_dif = 0.1 + 0.02 * statelv 
	local defsa_dif = 0.1 + 0.02 * statelv 
	local mxhpsa = math.floor ( (MxhpSa(role) - mxhpsa_dif ) * ATTR_RADIX )
	local defsa = math.floor ( (DefSa(role) - defsa_dif ) * ATTR_RADIX )
		local map_name_ATKER = GetChaMapName ( role )
	local GangTieLv = GetSkillLv (role,63)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			local hrecsb_dif =  10 * GangTieLv  
			local hrecsb = math.floor ( ( HrecSb ( role ) + hrecsb_dif )  ) 
			SetCharaAttr( hrecsb , role , ATTR_STATEV_HREC ) 
		end
	SetCharaAttr( mxhpsa , role , ATTR_STATEC_MXHP ) 
	SetCharaAttr( defsa , role , ATTR_STATEC_DEF ) 
	ALLExAttrSet(role)  
end 

function State_Mnrx_Add ( role , statelv ) 
end 

function State_Mnrx_Rem ( role , statelv ) 
end 

--Отклонение
function Skill_Hys_Use( role , sklv )  
	local statelv = sklv  
	local fleesb_dif =4 * statelv 
	local fleesb = math.floor ( ( FleeSb(role) + fleesb_dif  )    )  
	SetCharaAttr( fleesb , role , ATTR_STATEV_FLEE ) 
	ALLExAttrSet(role)  
end 

function Skill_Hys_Unuse( role , sklv ) 
	local statelv = sklv 
	local fleesb_dif = 4 * statelv 
	local fleesb = math.floor ( ( FleeSb(role) - fleesb_dif  )  )  
	SetCharaAttr( fleesb , role , ATTR_STATEV_FLEE ) 
	ALLExAttrSet(role)  
end 

function State_Hys_Add ( role , statelv ) 
end 

function State_Hys_Rem ( role , statelv ) 
end 

--Кровавое безумие
function Skill_Pxkg_Use( role , sklv ) 
	local statelv = sklv 
	local aspdsa_dif =  ( 0.1 + 0.01 * statelv ) 
	local map_name_ATKER = GetChaMapName ( role )
--	local map_name_DEFER = GetChaMapName ( DEFER )
	local str_atker = Str(role)
	--local Can_Pk_Garner2 = Is_NormalMonster (role)
	--	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
	--		if Can_Pk_Garner2 == 0 then
	--			aspdsa_dif = ( 0.1 + str_atker/20000 * statelv ) 
		--		Notice ( "statetime="..statetime)
	--		end
	--	end
	local aspdsa = math.floor ( ( AspdSa(role) + aspdsa_dif  ) * ATTR_RADIX   )  
	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD ) 
	ALLExAttrSet(role)  
end 

function Skill_Pxkg_Unuse( role , sklv ) 
	local statelv = sklv 
	local aspdsa_dif =  ( 0.1 + 0.01 * statelv ) 
	local aspdsa = math.floor ( ( AspdSa(role) - aspdsa_dif  ) * ATTR_RADIX   )  
	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD ) 
	ALLExAttrSet(role)  
end 

function State_Pxkg_Add ( role , statelv ) 
end 

function State_Pxkg_Rem ( role , statelv ) 
end 

--Восстанавливать
function Skill_Tzhf_Use( role , sklv ) 
	local statelv = sklv  
	local hrecsb_dif =  statelv  
	local hrecsb = math.floor ( ( HrecSb(role) + hrecsb_dif  ) * ATTR_RADIX   )  
	SetCharaAttr( hrecsb , role , ATTR_STATEV_HREC ) 
	ALLExAttrSet(role)  
end 

function Skill_Tzhf_Unuse( role , sklv ) 
	local statelv = sklv 
	local hrecsb_dif =  statelv  
	local hrecsb = math.floor ( ( HrecSb(role) - hrecsb_dif  ) * ATTR_RADIX   )  
	SetCharaAttr( hrecsb , role , ATTR_STATEV_HREC ) 
	ALLExAttrSet(role)  
end 

function State_Tzhf_Add ( role , statelv ) 
end 

function State_Tzhf_Rem ( role , statelv ) 
end 

--Шипастый щит
function Skill_Zjft_Use( role , sklv ) 
	local statelv = sklv  
	AddState ( role , role , STATE_ZJFT , statelv , -1 ) 
end 

function Skill_Zjft_Unuse( role , sklv ) 
	local statelv = sklv 
	RemoveState ( role , STATE_ZJFT )  
end 

--Мастер стрелкового оружия
function Skill_Gjsl_Use( role , sklv ) 
	local statelv = sklv  
	local mnatksb_dif = 2 * statelv 
	local mxatksb_dif = 2 * statelv
	local mnatkdeath = 1
	local mxatkdeath = 1
	local CheckItem_Death = CheckItem_Death ( role )
	if CheckItem_Death == 1 then
		mnatkdeath = 150
		mxatkdeath = 150
	end
	local mnatksb = MnatkSb(role) + mnatksb_dif + mnatkdeath
	local mxatksb = MxatkSb(role) + mxatksb_dif + mxatkdeath
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)  
end 

function Skill_Gjsl_Unuse( role , sklv ) 
	local statelv = sklv 
	local mnatksb_dif = 2 * statelv 
	local mxatksb_dif = 2 * statelv 
	local mnatkdeath = 1
	local mxatkdeath = 1
	local CheckItem_Death = CheckItem_Death ( role )
	if CheckItem_Death == 1 then
		mnatkdeath = 150
		mxatkdeath = 150
	end
	local mnatksb = MnatkSb(role) - mnatksb_dif - mnatkdeath
	local mxatksb = MxatkSb(role) - mxatksb_dif - mxatkdeath
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)  
	--LG( " Luaerror" , " Skill - Archery transfer mode error" ,  "transfer mode tranxwer_type = " , tranxwer_type , "\n" ) 
end 

function State_Gjsl_Add ( role , statelv ) 
end 

function State_Gjsl_Rem ( role , statelv ) 
end 


-- Путь ветра (id=75)
function Skill_Jfb_Use( role , sklv )
	-- Профессия шарп,  мастер стрелкового 2 (74)
	--local job = GetChaAttr( role, ATTR_JOB)
	--local slv = GetSkillLv( role , 74 ) 
	--if job ~= 12 or slv < 2 or sklv > 10 then
		--SkillUnable(role)
		--SystemNotice(role, "Невозможно применить эффект")
		--return 0 
	--end
	local statelv = sklv  
	local mspdsa_dif =  statelv * 0.02   
	local mspdsa = (MspdSa(role) + mspdsa_dif) * ATTR_RADIX  
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)   
end 

function Skill_Jfb_Unuse( role , sklv ) 
	local statelv = sklv 
	local mspdsa_dif =  statelv * 0.02 
	local mspdsa = (MspdSa(role) - mspdsa_dif) *  ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

function State_Jfb_Add ( role , statelv ) 
end 

function State_Jfb_Rem ( role , statelv ) 
end

--Сила
function Skill_Jsjc_Use( role , sklv ) 
	--LG("skill_jsjc", "enter function Skill_Oper_jsjc:", "sklv = ", sklv ,"role = ", role , "\n") 
	local statelv = sklv  
	local mxspsb_dif =  statelv * 40    
	local mxspsb = math.floor ( MxspSb(role) + mxspsb_dif  )  
	SetCharaAttr( mxspsb , role , ATTR_STATEV_MXSP ) 
	ALLExAttrSet(role)  
	--LG("skill_jsjc", "function Skill_Oper_jsjc: " , "add state jsjc " , "\n" ) 
end 

function Skill_Jsjc_Unuse( role , sklv ) 
	local statelv = sklv 
	local mxspsb_dif =  statelv * 40    
	local mxspsb = math.floor ( MxspSb(role) - mxspsb_dif  )  
	SetCharaAttr( mxspsb , role , ATTR_STATEV_MXSP ) 
	ALLExAttrSet(role)  
end 

function State_Jsjc_Add ( role , statelv ) 
end 

function State_Jsjc_Rem ( role , statelv ) 
end 

--Благодать господня
function Skill_Sy_Use( role , sklv ) 
	local statelv = sklv  
	local srecsb_dif = 1+statelv*1   
	local srecsb = SrecSb(role) + srecsb_dif
	SetCharaAttr( srecsb , role , ATTR_STATEV_SREC ) 
	ALLExAttrSet(role)  
end 

function Skill_Sy_Unuse( role , sklv ) 
	local statelv = sklv 
	local srecsb_dif = 2+statelv*1  
	local srecsb = SrecSb(role) - srecsb_dif
	SetCharaAttr( srecsb , role , ATTR_STATEV_SREC ) 
	ALLExAttrSet(role)  
end 

function State_Sy_Add ( role , statelv ) 
end 

function State_Sy_Rem ( role , statelv ) 
end 

--Усердие
function Skill_Jr_Use( role , sklv ) 
	local statelv = sklv  
	local srecsb_dif = 1+statelv*1   
	local srecsb = SrecSb(role) + srecsb_dif
	SetCharaAttr( srecsb , role , ATTR_STATEV_SREC ) 
	ALLExAttrSet(role)  
end 

function Skill_Jr_Unuse( role , sklv ) 
	local statelv = sklv 
	local srecsb_dif = 1+statelv*1  
	local srecsb = SrecSb(role) - srecsb_dif
	SetCharaAttr( srecsb , role , ATTR_STATEV_SREC ) 
	ALLExAttrSet(role)  
end 

--Водоток
function Skill_Sl_Use( role , sklv ) 
	local statelv = sklv  
	local ship_mspdsa_dif = 0.05 + statelv * 0.01    
	local ship_mspdsa = ( Ship_MspdSa ( role ) + ship_mspdsa_dif )  * ATTR_RADIX
	SetCharaAttr( ship_mspdsa , role , ATTR_BOAT_SKILLC_MSPD ) 
	ALLExAttrSet(role)  
end 

function Skill_Sl_Unuse( role , sklv ) 
--	LG("skill_sl", "enter function Skill_Sl_Unuse:", "sklv = ", sklv ,"role = ", role , "\n") 
	local statelv = sklv  
	local ship_mspdsa_dif = 0.05 + statelv * 0.01    
	local ship_mspdsa = ( Ship_MspdSa ( role ) - ship_mspdsa_dif )  * ATTR_RADIX
	SetCharaAttr( ship_mspdsa , role , ATTR_BOAT_SKILLC_MSPD ) 
	ALLExAttrSet(role)  
end 

--Броня из раковин
function Skill_Bkzj_Use( role , sklv ) 
--	LG("skill_Bkzj", "enter function Skill_Oper_Bkzj:", "sklv = ", sklv ,"role = ", role , "\n") 
	local statelv = sklv  
	local ship_defsb_dif = statelv * 8    
	local ship_defsb = ( Ship_DefSb ( role ) + ship_defsb_dif )
	SetCharaAttr( ship_defsb , role , ATTR_BOAT_SKILLV_DEF ) 
	ALLExAttrSet(role)  
end 

function Skill_Bkzj_Unuse( role , sklv ) 
--	LG("skill_Bkzj", "enter function Skill_Oper_Bkzj:", "sklv = ", sklv ,"role = ", role , "\n") 
	local statelv = sklv  
	local ship_defsb_dif = statelv * 8    
	local ship_defsb = ( Ship_DefSb ( role ) - ship_defsb_dif )
	SetCharaAttr( ship_defsb , role , ATTR_BOAT_SKILLV_DEF ) 
	ALLExAttrSet(role)  
end 

--Мастерство канонира +
function Skill_Hpsl_Use( role , sklv ) 
--	LG("skill_Hpsl", "enter function Skill_Oper_Hpsl:", "sklv = ", sklv ,"role = ", role , "\n") 
	local statelv = sklv  
	local ship_mxatk_dif = statelv * 5
	local ship_mnatk_dif = statelv * 5
	local ship_mxatk = ( Ship_Mxatk ( role ) + ship_mxatk_dif ) 
	local ship_mnatk = ( Ship_Mnatk ( role ) + ship_mnatk_dif )
	SetCharaAttr( ship_mxatk , role , ATTR_BOAT_SKILLV_MXATK ) 
	SetCharaAttr( ship_mnatk , role , ATTR_BOAT_SKILLV_MNATK ) 
	ALLExAttrSet(role)  
end 

function Skill_Hpsl_Unuse( role , sklv ) 
--	LG("skill_Bkzj", "enter function Skill_Oper_Bkzj:", "sklv = ", sklv ,"role = ", role , "\n") 
	local statelv = sklv  
	local ship_mxatk_dif = statelv * 5
	local ship_mnatk_dif = statelv * 5
	local ship_mxatk = ( Ship_Mxatk ( role ) - ship_mxatk_dif ) 
	local ship_mnatk = ( Ship_Mnatk ( role ) - ship_mnatk_dif )
	SetCharaAttr( ship_mxatk , role , ATTR_BOAT_SKILLV_MXATK ) 
	SetCharaAttr( ship_mnatk , role , ATTR_BOAT_SKILLV_MNATK ) 
	ALLExAttrSet(role)  
end 

--Усилен. дерев. конструкции +
function Skill_Jbjg_Use( role , sklv ) 
	LG("skill_Jbjg", "enter function Skill_Oper_Jbjg:", "sklv = ", sklv ,"role = ", role , "\n") 
	local statelv = sklv  
	local ship_def_dif = statelv * 15    
	local ship_def = ( Ship_Def ( role ) + ship_def_dif )  
	SetCharaAttr( ship_def , role , ATTR_BOAT_SKILLV_DEF ) 
	ALLExAttrSet(role)  
end 

function Skill_Jbjg_Unuse( role , sklv ) 
	LG("skill_Jbjg", "enter function Skill_Oper_Jbjg:", "sklv = ", sklv ,"role = ", role , "\n") 
	local statelv = sklv  
	local ship_def_dif = statelv * 15   
	local ship_def = ( Ship_Def ( role ) - ship_def_dif )  
	SetCharaAttr( ship_def , role , ATTR_BOAT_SKILLV_DEF ) 
	ALLExAttrSet(role)  
end 

--Мореходство
function Skill_Cfs_Use( role , sklv ) 
	LG("skill_Cfs", "enter function Skill_Oper_Cfs:", "sklv = ", sklv ,"role = ", role , "\n") 
	local statelv = sklv  
	local ship_aspdsa_dif = 0.1 + statelv * 0.03     
	local ship_aspdsa = ( Ship_AspdSa ( role ) + ship_aspdsa_dif )  * ATTR_RADIX
	SetCharaAttr( ship_aspdsa , role , ATTR_BOAT_SKILLC_MSPD ) 
	ALLExAttrSet(role)  
end 

function Skill_Cfs_Unuse( role , sklv ) 
	LG("skill_Cfs", "enter function Skill_Oper_Cfs:", "sklv = ", sklv ,"role = ", role , "\n") 
	local statelv = sklv  
	local ship_aspdsa_dif = 0.1 + statelv  * 0.03    
	local ship_aspdsa = ( Ship_AspdSa ( role ) - ship_aspdsa_dif )  * ATTR_RADIX
	SetCharaAttr( ship_aspdsa , role , ATTR_BOAT_SKILLC_MSPD ) 
	ALLExAttrSet(role)  
end 

--Усиление корпуса
function Skill_Ctqh_Use( role , sklv ) 
	LG("skill_Ctqh", "enter function Skill_Oper_Ctqh:", "sklv = ", sklv ,"role = ", role , "\n") 
	local statelv = sklv  
	local ship_hp_dif = statelv * 550    
	local ship_hp = ( Ship_Mxhp ( role ) + ship_hp_dif ) 
	SetCharaAttr( ship_hp , role , ATTR_BOAT_SKILLV_MXUSE ) 
	ALLExAttrSet(role)  
end 

function Skill_Ctqh_Unuse( role , sklv ) 
	LG("skill_Ctqh", "enter function Skill_Oper_Ctqh:", "sklv = ", sklv ,"role = ", role , "\n") 
	local statelv = sklv  
	local ship_hp_dif = statelv * 550    
	local ship_hp = ( Ship_Mxhp ( role ) - ship_hp_dif ) 
	SetCharaAttr( ship_hp , role , ATTR_BOAT_SKILLV_MXUSE ) 
	ALLExAttrSet(role)  
end 

--Топливо
function Skill_Bjkr_Use( role , sklv ) 
	LG("skill_Bjcr", "enter function Skill_Oper_Bjcr:", "sklv = ", sklv ,"role = ", role , "\n") 
	local statelv = sklv  
	local ship_sp_dif = statelv * 120    
	local ship_sp = ( Ship_Mxsp ( role ) + ship_sp_dif ) 
	SetCharaAttr( ship_sp , role , ATTR_BOAT_SKILLV_MXSPLY ) 
	ALLExAttrSet(role)  
end 

function Skill_Bjkr_Unuse( role , sklv ) 
	LG("skill_Bjcr", "enter function Skill_Oper_Bjcr:", "sklv = ", sklv ,"role = ", role , "\n") 
	local statelv = sklv  
	local ship_sp_dif = statelv * 120    
	local ship_sp = ( Ship_Mxsp ( role ) - ship_sp_dif ) 
	SetCharaAttr( ship_sp , role , ATTR_BOAT_SKILLV_MXSPLY ) 
	ALLExAttrSet(role)  
end 


--Переплетение водорослей
function Skill_Clxz_Use( role , sklv )
	local statelv = sklv  
	local fleesb_dif = 3 * statelv 
	local fleesb =  FleeSb(role) + fleesb_dif  
	SetCharaAttr( fleesb , role , ATTR_STATEV_FLEE ) 
	ALLExAttrSet(role)  
end 

function Skill_Clxz_Unuse( role , sklv )
	local statelv = sklv 
	local fleesb_dif = 3 * statelv 
	local fleesb =  FleeSb(role) - fleesb_dif  
	SetCharaAttr( fleesb , role , ATTR_STATEV_FLEE ) 
	ALLExAttrSet(role)  
	
	if GetChaAIType( DEFER ) >= 21 then
		if BOSSWOD[GetChaTypeID( DEFER )] == 0 then
			SystemNotice ("Неужели ты думаешь, что меня можно победить единственным навыком? Попробуй что-нибудь другое")
			return
		else
			BOSSWOD[GetChaTypeID( DEFER )] = BOSSWOD[GetChaTypeID( DEFER )] -1
		end
	end
end 

function State_Clxz_Add ( role , statelv )
end 

function State_Clxz_Rem ( role , statelv )
end 

--Охотничий камуфляж
function Skill_Lrwz_Use( role , sklv ) 
	local statelv = sklv  
	local fleesb_dif = 2 * statelv 
	local fleesb = FleeSb(role) + fleesb_dif  
	SetCharaAttr( fleesb , role , ATTR_STATEV_FLEE ) 
	ALLExAttrSet(role)  
end 

function Skill_Lrwz_Unuse( role , sklv ) 
	local statelv = sklv 
	local fleesb_dif = 2 * statelv 
	local fleesb = FleeSb(role) - fleesb_dif  
	SetCharaAttr( fleesb , role , ATTR_STATEV_FLEE ) 
	ALLExAttrSet(role)  
end 

function State_Lrwz_Add ( role , statelv ) 
end 

function State_Lrwz_Rem ( role , statelv ) 
end 

--Мастер огнестрельного оружия
function Skill_Hqsl_Use( role , sklv ) 
	local statelv = sklv  
	local mnatksb_dif = 6 * statelv 
	local mxatksb_dif = 10 * statelv 
	local mnatkdeath = 1
	local mxatkdeath = 1
	local CheckItem_Death = CheckItem_Death ( role )
	if CheckItem_Death == 1 then
		mnatkdeath = 150
		mxatkdeath = 150
	end
	local mnatksb = MnatkSb(role) + mnatksb_dif + mnatkdeath
	local mxatksb = MxatkSb(role) + mxatksb_dif + mxatkdeath
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)  
end 

function Skill_Hqsl_Unuse( role , sklv ) 
	local statelv = sklv  
	local mnatksb_dif = 6 * statelv 
	local mxatksb_dif = 10 * statelv 
	local mnatkdeath = 1
	local mxatkdeath = 1
	local CheckItem_Death = CheckItem_Death ( role )
	if CheckItem_Death == 1 then
		mnatkdeath = 150
		mxatkdeath = 150
	end
	local mnatksb = MnatkSb(role) - mnatksb_dif - mnatkdeath
	local mxatksb = MxatkSb(role) - mxatksb_dif - mxatkdeath
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)   
end 

function State_Hqsl_Add ( role , statelv ) 
end 

function State_Hqsl_Rem ( role , statelv ) 
end 

--Рубка двумя мечами
function Skill_Fsz_Use( role , sklv ) 
	local statelv = sklv
	local vilka_barb = vilka_barb(role)
	local name = GetChaDefaultName(role)
	local cha_id = GetRoleID(role)
	if statelv <= 9 then
		if VilkaBarb[name] == nil then
			if vilka_barb == 1 then
statelv = 10
VilkaBarb[name] = { id = cha_id }
			else
statelv = sklv
			end
		elseif VilkaBarb[name] ~= nil then
			statelv = 10
		end
	end
	local lefthand_weapon = GetChaItem ( role , 1 , 6 )
	local weapon_MNATK = GetItemAttr ( lefthand_weapon , ITEMATTR_VAL_MNATK )
	local weapon_MXATK = GetItemAttr ( lefthand_weapon , ITEMATTR_VAL_MXATK )
	weapon_MNATK = math.floor ( ( ( weapon_MNATK / 100 ) * 20 ) + ( ( weapon_MNATK / 100 ) * ( 8 * statelv) ) )
	weapon_MXATK = math.floor ( ( ( weapon_MXATK / 100 ) * 20 ) + ( ( weapon_MXATK / 100 ) * ( 8 * statelv) ) )
	if RybkaDouble[name] == nil then
		RybkaDouble[name] = { MNATK = weapon_MNATK , MXATK = weapon_MXATK }
	end
	local mnatksb = MnatkSb(role) + weapon_MNATK
	local mxatksb = MxatkSb(role) + weapon_MXATK
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK )
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK )
	ALLExAttrSet(role)
end 

function Skill_Fsz_Unuse( role , sklv )
	local statelv = sklv
	local name = GetChaDefaultName(role)
	local cha_id = GetRoleID(role)
	local vilka_barb = vilka_barb(role)
	local mnatksb = 0
	local mxatksb = 0
	local weapon_MNATK = 0
	local weapon_MXATK = 0
	if statelv <= 9 then
		if VilkaBarb[name] ~= nil then
			if VilkaBarb[name].id == cha_id then
statelv = 10
VilkaBarb[name] = nil
			end
		else
			statelv = statelv
		end
	end
	if RybkaDouble[name] == nil then
		mnatksb = mnatksb
		mxatksb = mxatksb
	else
		weapon_MNATK = RybkaDouble[name].MNATK
		weapon_MXATK = RybkaDouble[name].MXATK
		mnatksb = MnatkSb(role) - weapon_MNATK
		mxatksb = MxatkSb(role) - weapon_MXATK
		RybkaDouble[name] = nil
	end
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK )
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK )
	ALLExAttrSet(role)
end 

function State_Fsz_Add ( role , statelv ) 
end 

function State_Fsz_Rem ( role , statelv ) 
end 

--Место
function Skill_Zx_Use( role , sklv ) 
	local ys_statelv = GetChaStateLv ( role , STATE_YS ) 
	if ys_statelv >= 1 then  
		RemoveState( role , STATE_YS ) 
	end 
	local hrecsb_dif = 15  
	local hrecsa_dif = 5    
	local hrecsa = math.floor ( (HrecSa(role) + hrecsa_dif )  * ATTR_RADIX) 
	local hrecsb = math.floor ( ( HrecSb ( role ) + hrecsb_dif )  ) 
	SetCharaAttr( hrecsa , role , ATTR_STATEC_HREC ) 
	SetCharaAttr ( hrecsb , role , ATTR_STATEV_HREC ) 

	local srecsb_dif = 5 
	local srecsa_dif = 5    
	local srecsa = math.floor ( (SrecSa(role) + srecsa_dif ) * ATTR_RADIX ) 
	local srecsb = math.floor ( (SrecSb(role) + srecsb_dif )  ) 
	SetCharaAttr( srecsa , role , ATTR_STATEC_SREC ) 
	SetCharaAttr ( srecsb , role , ATTR_STATEV_SREC ) 
	Check_Ys_Rem ( role , role)
	ALLExAttrSet(role)
end 

function Skill_Zx_Unuse( role , sklv ) 
	--LG("skill_zx", "enter function Skill_Oper_Zx:", "sklv = ", sklv ,"role = ", role , "\n") 

	local hrecsb_dif = 15 
	local hrecsa_dif = 5    
	local hrecsa = math.floor ( (HrecSa(role) - hrecsa_dif )  * ATTR_RADIX) 
	local hrecsb = math.floor ( ( HrecSb ( role ) - hrecsb_dif ) ) 
	--LG("skill_zx" , " form_hrecsa = " , HrecSa(role) , "\n" ) 
	--LG("skill_zx", "hrecsa = ", hrecsa, "\n") 
	--LG("skill_hrecsa" , " form_hrecsa = " , HrecSa(role) , "\n" ) 
	--LG("skill_hrecsa", "hrecsa = ", hrecsa, "\n") 
	SetCharaAttr( hrecsa , role , ATTR_STATEC_HREC ) 
	SetCharaAttr ( hrecsb , role , ATTR_STATEV_HREC ) 

	local srecsb_dif = 5  
	local srecsa_dif = 5    
	local srecsa = math.floor ( (SrecSa(role) - srecsa_dif ) * ATTR_RADIX ) 
	local srecsb = math.floor ( (SrecSb(role) - srecsb_dif )  ) 

	--LG("skill_zx" , " form_srecsa = " , SrecSa(role) , "\n" ) 
	--LG("skill_zx", "srecsa = ", srecsa, "\n") 
	--LG("skill_srecsa" , " form_srecsa = " , SrecSa(role) , "\n" ) 
	--LG("skill_srecsa", "srecsa = ", srecsa, "\n") 
	SetCharaAttr( srecsa , role , ATTR_STATEC_SREC ) 
	SetCharaAttr ( srecsb , role , ATTR_STATEV_SREC ) 

	ALLExAttrSet(role)
end 

--Метеоритный дождь
function SkillArea_Square_Lxjy ( sklv )	
	local side = 400 
	SetSkillRange ( 4 , side )  	
end 

function SkillPre_Lxjy ( sklv )	
end 

function SkillCooldown_Lxjy( sklv )
	local Cooldown = 25000
	return Cooldown
end

function SkillSp_Lxjy ( sklv )	
	local sp_reduce = 26 + sklv * 2     
	return sp_reduce 
end 

function Skill_Lxjy_Begin ( role , sklv ) 
	local AntiBotSystem = AntiBotSystem(role)
	if AntiBotSystem == 0 then SkillUnable(role) return end 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Lxjy ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	--Sp_Red (role , sp_reduce ) 
end 

function Skill_Lxjy_End ( ATKER , DEFER , sklv ) 
	--LG( "skill_lxjy", "enter function Skill_Def_Lxjy : " , "\n" ) 
	--LG("skill_lxjy", "function Skill_Def_Lxjy : " , "role = " , role , "sklv =  " , sklv , "\n" ) 
	local hp = Hp( DEFER ) 
	if ValidCha(ATKER) == 0 then 
		LG ( "luascript_err" , "function Skill_Lxjy_End : ATKER as null" ) 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		LG ( "luascript_err" , "function Skill_Lxjy_End : DEFER as null" ) 
		return 
	end
	local dmg = ( 0.5 +sklv * 0.1 ) * Atk_Dmg ( ATKER , DEFER )  
	Hp_Endure_Dmg ( DEFER , dmg )  
	--LG( "Lxjy", "Meteor Shower Skill Level=" , sklv , "Skill Damage= " , dmg , '\n" ) 
end 

--Вой
function SkillArea_Circle_Lh ( sklv )
	--LG( "skarea_lh", " enter function SkillArea_Circle_Lh : " , "sklv = " ,sklv ) 
	local side = 300 + math.floor ( sklv * 20 ) 
	--LG( "skarea_lh" , " side = " , side ) 
	SetSkillRange ( 4 , side )   
end 

function SkillCooldown_Lh( sklv )
	local Cooldown = 5000
	return Cooldown
end

function SkillPre_Lh ( sklv )	
end 

function SkillSp_Lh ( sklv )	
	local sp_reduce = 20 - math.floor ( sklv * 0.5 ) 
	return sp_reduce 
end 

function Skill_Lh_Begin ( role , sklv )
	local AntiBotSystem = AntiBotSystem(role)
	if AntiBotSystem == 0 then SkillUnable(role) return end
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Lh ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	--Sp_Red (role , sp_reduce ) 
end 

function Skill_Lh_End ( ATKER , DEFER , sklv ) 
	local hp = Hp( DEFER ) 
	if ValidCha(ATKER) == 0 then 
		LG ( "luascript_err" , "function Skill_Lh_End : ATKER as null" ) 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		LG ( "luascript_err" , "function Skill_Lh_End : DEFER as null" ) 
		return 
	end 
	dmg = ( 1+sklv*0.05 ) * Atk_Dmg ( ATKER , DEFER ) 
	Hp_Endure_Dmg ( DEFER , dmg )  
	Check_Ys_Rem ( ATKER , DEFER)		
end 


--Парирование
function SkillArea_Sector_Hxdj ( sklv )	
	local radius = 400 + math.floor ( sklv * 10 ) 
	local angle = 100 + math.floor ( sklv / 5 ) * 20 
	SetSkillRange ( 2 , radius , angle  )  
end 

function SkillCooldown_Hxdj( sklv )
	local Cooldown = 5000
	return Cooldown
end

function SkillPre_Hxdj ( sklv )	
end 

function SkillSp_Hxdj ( sklv )	
	local sp_reduce = 20 + sklv * 2  
	return sp_reduce 
end 

function Skill_Hxdj_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Hxdj ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Hxdj_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime = 5  
	local back_dis = 500 
	dmg = math.floor(150 + sklv * 20 )  
	Hp_Endure_Dmg ( DEFER , dmg )  
	AddState ( ATKER , DEFER , STATE_XY , statelv , statetime ) 
	BeatBack(ATKER , DEFER , back_dis) 
	--LG( "Hxdj", "Parry Skill Level= " , sklv , "Skill Damage= " , dmg , '\n" ) 
end 

--Варварское дробление
function SkillArea_Circle_Ymsl ( sklv )
	--LG( "skarea_ymsl", " enter function SkillArea_Circle_Ymsl : " , "sklv = " ,sklv ) 
	local side = 200 + math.floor ( sklv * 10 ) 
	--LG( "skarea_ymsl" , " side = " , side ) 
	SetSkillRange ( 4 , side )   
end 

function SkillCooldown_Ymsl( sklv )
	local Cooldown = 5000
	return Cooldown
end

function SkillPre_Ymsl ( sklv )	
end 

function SkillSp_Ymsl ( sklv )
	local sp_reduce = 10 + sklv * 1  
	return sp_reduce 
end 

function Skill_Ymsl_Begin ( role , sklv ) 
	local sp = Sp( role ) 
	local sp_reduce = SkillSp_Ymsl ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		--LG("skill_ymsl", "function Skill_Atk_Ymsl : ", "SP insufficient to cast Barbaric Crush" , "\n" ) 
		return 
	end 
end 

function Skill_Ymsl_End ( ATKER , DEFER , sklv ) 
	local hp = Hp( DEFER ) 
	--LG("ymsl" , "enter defer_mod " ) 
	atk_rad = 1.5+sklv*0.1 
	hpdmg = Atk_Raise ( atk_rad , ATKER , DEFER )
	Hp_Endure_Dmg ( DEFER , hpdmg )  
	--LG( "Ymsl", "Barbaric Crush Skill Level=" , sklv , "Skill Damage= " , dmg , '\n" ) 
 end


--Великое исцеление
function SkillArea_Circle_Dzy ( sklv )
	local side = 300 + math.floor ( sklv * 30 ) 
	SetSkillRange ( 4 , side )   
end 

function SkillPre_Dzy ( sklv )	
end 

function SkillCooldown_Dzy( sklv )
	local Cooldown = 10000
	return Cooldown
end

function SkillSp_Dzy ( sklv )
	local sp_reduce = 30 + sklv * 1 
	return sp_reduce 
end 

function Skill_Dzy_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Dzy (sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Dzy_End ( ATKER , DEFER , sklv ) 
	local dmg = ( -1 ) * math.floor(10 + 15 * sklv + math.floor ( Sta(ATKER)*0.5     )  )
	Hp_Endure_Dmg ( DEFER , dmg )  
	--LG( "Dzy", "Greater Heal Skill Level=" , sklv , "Skill Damage= " , dmg , '\n" ) 
end 


--Мощное Восстановление
function SkillArea_Circle_Dhfs ( sklv )
	local side = 300 + math.floor ( sklv * 30 ) 
	SetSkillRange ( 4 , side )   
end 

function SkillCooldown_Dhfs( sklv )
	local Cooldown = 5000
	return Cooldown
end

function SkillPre_Dhfs ( sklv )	
end 

function SkillSp_Dhfs ( sklv )
	local sp_reduce = 15 + math.floor ( sklv*0.5 ) 
	return sp_reduce 
end 

function Skill_Dhfs_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Dhfs (sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Dhfs_End ( ATKER , DEFER , sklv ) 
		dmg = ( -1 ) * ( 5 + sklv * 3  ) 
		Hp_Endure_Dmg ( DEFER , dmg )  
		Rem_State_Unnormal ( DEFER ) 
		--LG( "Hfs", "Greater Recover Skill Level= " , sklv , "Skill Damage= " , dmg , '\n" ) 
end 


-- Коралловый луч
function SkillArea_Line_Bkcj ( sklv )
	local lenth = 500 + sklv * 30  
	local width = 100 + sklv * 10 
	SetSkillRange ( 1 , lenth , width  )  
end

function SkillCooldown_Bkcj( sklv )
	local Cooldown = 8400 - sklv * 500
	return Cooldown
end

function SkillSp_Bkcj ( sklv )	
	local sp_reduce = 20+ sklv * 3   
	return sp_reduce 
end

function SkillEnergy_Bkcj ( sklv )	
	local energy_reduce = math.floor ( 3 + sklv * 0.5 )    
	return 0 
end 

function Skill_Bkcj_Begin ( role , sklv )
	--SystemNotice(role,"1111")
	local AntiBotSystemLine = AntiBotSystemLine(role)
	if AntiBotSystemLine == 0 then SkillUnable(role) return end
	local sp = Sp(role) 
	local sp_reduce  = SkillSp_Bkcj ( sklv )  
	if sp - sp_reduce < 0 then 
		SkillUnable(role) 
		return 
	end 
	--Sp_Red (role , sp_reduce ) 
end 

function Skill_Bkcj_End ( ATKER , DEFER , sklv ) 
	local sta_atk= Sta ( ATKER ) 
	local sta_def = Sta ( DEFER ) 
	local AddStateLv = 0
	AddStateLv = GetChaStateLv ( ATKER , STATE_MLCH ) 
	local dmg = math.floor( 200 + sklv*25 +sta_atk*4.3 ) 
	local map_name_DEFER = GetChaMapName ( DEFER )
	local agi_atker = Agi(ATKER)
	local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			if Can_Pk_Garner2 == 0 then
				dmg = math.floor(MAGIC_Atk_Dmg(ATKER,DEFER)+sklv*200)
			if Can_Pk_Garner2 == 1 then
				dmg = math.floor(MAGIC_Atk_Dmg(ATKER,DEFER)+sklv*200)
			end
			
				local rate = math.random(1,200)
		if rate >= Con(DEFER) then
			local statetime = math.ceil(sklv/80)
			local statelv = sklv
		AddState ( ATKER , DEFER , STATE_XY , statelv , statetime ) 
end
			end
		end
	local CheckItem_Death = CheckItem_Death ( ATKER )
	if CheckItem_Death == 1 then
		local Percentage_Death = Percentage_Random ( 0.7 )
			if Percentage_Death == 1 then
				dmg = math.floor(dmg*1.5)
				SystemNotice ( ATKER , "Получена сила набора Сета Смерти. Эффект навыка усилен!")
			end
	end
	local dmg_fin = Cuihua_Mofa ( dmg , AddStateLv ) 
	local dmg_ElfSkill = ElfSkill_MagicAtk ( dmg , ATKER ) 
	dmg_fin = dmg_fin + dmg_ElfSkill * 0.90
	Hp_Endure_Dmg ( DEFER , dmg_fin ) 
end 

--Попутный ветер
function SkillArea_Circle_Sf ( sklv )	
	local side = 1000  
	SetSkillRange ( 3 , side  )  
end

function SkillCooldown_Sf( sklv )
	local Cooldown = 10000
	return Cooldown
end

function SkillSp_Sf ( sklv )	
	local sp_reduce = 20+ sklv * 3   
	return sp_reduce 
end

function SkillEnergy_Sf ( sklv )	
	local energy_reduce = math.floor ( 3 + sklv * 0.5 )    
	return 0 
end 

function Skill_Sf_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce  = SkillSp_Sf ( sklv )  
	if sp - sp_reduce < 0 then 
		SkillUnable(role) 
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Sf_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime = 150 + sklv * 10 
	AddState ( ATKER , DEFER , STATE_SF , statelv , statetime ) 
end 

function State_Sf_Add ( role , statelv ) 
	local mspdsa_dif = 0.05 + statelv * 0.01    
	local mspdsa = ( MspdSa ( role ) + mspdsa_dif )  * ATTR_RADIX
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

function State_Sf_Rem ( role , statelv ) 
	local mspdsa_dif = 0.05 + statelv * 0.01    
	local mspdsa = ( MspdSa ( role ) - mspdsa_dif )  * ATTR_RADIX
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role) 
end 

--Зажигательная пуля
function SkillPre_Rsd ( sklv )	
end 

function SkillArea_Square_Rsd ( sklv )
	local side = 300 
	SetSkillRange ( 4 , side )   
end 

function SkillCooldown_Rsd( sklv )
	local Cooldown = 15000
	return Cooldown
end

function SkillArea_State_Rsd ( sklv )
	local statetime = 10 + sklv 
	local statelv = sklv 
	SetRangeState ( STATE_RS , statelv  , statetime ) 
end 

function SkillSp_Rsd ( sklv )
	local sp_reduce = sklv * 2 + 15
	return sp_reduce 
end 

function Skill_Rsd_Begin ( role , sklv )
	local AntiBotSystem = AntiBotSystem(role)
	if AntiBotSystem == 0 then SkillUnable(role) return end
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Rsd ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end  
end 

function Skill_Rsd_End ( ATKER , DEFER , sklv )
	local map_name = GetChaMapName (DEFER)
	local hpdmg = sklv * 10 
	local hp = GetChaAttr(DEFER) 
	-- if map_name="garner" or map_name="darckblue" or map_name="magicsea" then
		-- hpdmg = 1 
	-- end
	if role == DEFER then 
		Hp_Endure_Dmg( DEFER , hpdmg ) 
	end 
end 


function State_Rs_Add ( role , statelv ) 

	local arealv = GetAreaStateLevel ( role , STATE_RS ) 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hpdmg = 10 
	if arealv >= 1 then 
		hpdmg = arealv * 3 + 30  
	end
	local statedttime = 10 + statelv * 5
	Hp_Endure_Dmg ( role , hpdmg ) 
	SystemNotice(role, "На вас действует эффект <Огонь> "..statelv.."ур. на "..statedttime.. " секунд" )
			

end 

function State_Rs_Rem ( role , statelv ) 
end 

function State_Rs_Tran ( statelv ) 
	return 10   
end 

--Проклятый огонь
function SkillSp_Zzzh ( sklv )	
	local sp_reduce = 20   
	return sp_reduce 
end

function SkillCooldown_Zzzh( sklv )
	local Cooldown = 30000
	return Cooldown
end

function SkillArea_Square_Zzzh ( sklv )	
	local side = 300 
	SetSkillRange ( 3 , side ) 	
end 

function SkillArea_State_Zzzh ( sklv )
	local sklv = sklv * 2
	local statetime = 5 + sklv  * 1  
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local sta_atker = Sta(ATKER)
	local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			if Can_Pk_Garner2 == 0 then
			 statetime =math.max(5,math.floor(sta_atker/30))+sklv
		--		Notice ( "statetime="..statetime)
			end
		end
	local statelv = sklv 
	SetRangeState ( STATE_ZZZH , statelv  , statetime ) 
end 

function Skill_Zzzh_Begin ( role , sklv ) 
	--LG( "skill_Zzzh", "enter function Skill_Atk_Zzzh : " , "\n" ) 
	--LG("skill_Zzzh", "function Skill_Atk_Zzzh : " , "role = " , role , "sklv =  " , sklv , "\n" ) 
	local sp = Sp(role) 
	local sp_reduce 
	sp_reduce = SkillSp_Zzzh ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		--LG("skill_zzzh", "function Skill_Atk_zzzh : ", "Insufficient SP to cast Cursed Fire" , "\n" ) 
		return 
	end 
	
	Sp_Red (role , sp_reduce ) 
	--LG( "Zzzh", "Cursed Fire Skill Level=" , sklv , "Skill SP Consumption= " , sp_reduce , '\n" ) 
end 

function Skill_Zzzh_End ( ATKER , DEFER , sklv ) 
	--LG( "skill_zzzh", "enter function Skill_Def_Zzzh : " , "\n" ) 
	--LG("skill_zzzh", "function Skill_Def_Zzzh : " , "role = " , role , "sklv =  " , sklv , "\n" ) 
end 

function State_Zzzh_Add ( role , statelv ) 
	--LG("state_Zzzh" , "function State_Zzzh_Add : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local defsa_dif = (-1) * ( 0.1 + 0.02 * statelv ) 
	local defsa = math.floor (  (DefSa(role) + defsa_dif ) * ATTR_RADIX ) 
	SetCharaAttr( defsa , role , ATTR_STATEC_DEF ) 
	ALLExAttrSet(role)  
end 

function State_Zzzh_Rem ( role , statelv ) 
	--LG("state_zzzh" , "function State_Zzzh_Rem : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local defsa_dif = (-1) * ( 0.1 + 0.02 * statelv ) 
	local defsa = math.floor (  (DefSa(role) - defsa_dif ) * ATTR_RADIX ) 
	SetCharaAttr( defsa , role , ATTR_STATEC_DEF ) 
	ALLExAttrSet(role)  
end 

function  State_Zzzh_Tran ( statelv ) 
	local statetime = 20 + sklv * 2    
	return statetime 
end 

--Контргард
function SkillSp_Sdbz ( sklv )	
	local sp_reduce = 20   
	return sp_reduce 
end

function SkillCooldown_Sdbz( sklv )
	local Cooldown = 20000
	return Cooldown
end

function SkillArea_Square_Sdbz ( sklv )	
	local side = 300 
	SetSkillRange ( 3 , side ) 	
end 

function SkillArea_State_Sdbz ( sklv )	
	local statetime = 5    
	local statelv = sklv 
	SetRangeState ( STATE_SDBZ , statelv  , statetime ) 
end 

function Skill_Sdbz_Begin ( role , sklv ) 
	--LG( "skill_Sdbz", "enter function Skill_Atk_Sdbz : " , "\n" ) 
	--LG("skill_Sdbz", "function Skill_Atk_Sdbz : " , "role = " , role , "sklv =  " , sklv , "\n" ) 
	local sp = Sp(role) 
	local sp_reduce 
	sp_reduce = SkillSp_Sdbz ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		--LG("skill_sdbz", "function Skill_Atk_sdbz : ", "SP insufficient to cast Counterguard" , "\n" ) 
		return 
	end 
	
	Sp_Red (role , sp_reduce ) 
	--LG( "Sdbz", "Counterguard Skill Level= " , sklv , "Skill SP Consumption= " , sp_reduce , '\n" ) 
end 

function Skill_Sdbz_End ( ATKER , DEFER , sklv ) 
	--LG( "skill_sdbz", "enter function Skill_Def_Sdbz : " , "\n" ) 
	--LG("skill_sdbz", "function Skill_Def_Sdbz : " , "role = " , role , "sklv =  " , sklv , "\n" ) 
end 

function State_Sdbz_Add ( role , statelv ) 
	--LG("state_Sdbz" , "function State_Sdbz_Add : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local hitsa_dif = (-1) * (  0.02 * statelv ) 
	local hitsa = math.floor (  (HitSa(role) + hitsa_dif ) * ATTR_RADIX ) 
	SetCharaAttr( hitsa , role , ATTR_STATEC_HIT ) 
	ALLExAttrSet(role)  
end 

function State_Sdbz_Rem ( role , statelv ) 
	--LG("state_sdbz" , "function State_Sdbz_Rem : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local hitsa_dif = (-1) * (  0.02 * statelv ) 
	local hitsa = math.floor (  (HitSa(role) - hitsa_dif ) * ATTR_RADIX ) 
	SetCharaAttr( hitsa , role , ATTR_STATEC_HIT ) 
	ALLExAttrSet(role)  
end 

function  State_Sdbz_Tran ( statelv ) 
	local statetime = 30 + sklv * 3    
	return statetime 
end 

--Бездонное болото
function SkillSp_Synz ( sklv )
	local sklv = sklv * 2
	local sp_reduce = sklv * 5 + 50  
	return sp_reduce 
end

function SkillCooldown_Synz( sklv )
	local Cooldown = 30000
	return Cooldown
end

function SkillArea_Square_Synz ( sklv )
	local side = 500 
	SetSkillRange ( 3 , side ) 	
end 

function SkillArea_State_Synz ( sklv )
	local sklv = sklv 
	local statetime = 20 + sklv * 2
	local statelv = sklv 
	if GetChaTypeID( ATKER ) == 985 then
		statetime = 40
		statelv = 10
	end
	SetRangeState ( STATE_SYNZ , statelv  , 20 ) 
end 

function Skill_Synz_Begin ( role , sklv ) 
	--LG( "skill_Synz", "enter function Skill_Atk_Synz : " , "\n" ) 
	--LG("skill_Synz", "function Skill_Atk_Synz : " , "role = " , role , "sklv =  " , sklv , "\n" ) 
	local sp = Sp(role) 
	local sp_reduce 
	sp_reduce = SkillSp_Synz ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		--LG("skill_synz", "function Skill_Atk_synz : ", "SP insufficient to cast Counterguard" , "\n" ) 
		return 
	end 
	
	Sp_Red (role , sp_reduce ) 
	--LG( "Synz", "Abyss Mire Skill Level= " , sklv , "Skill SP Consumption= " , sp_reduce , '\n" ) 
end 

function Skill_Synz_End ( ATKER , DEFER , sklv ) 
	--LG( "skill_synz", "enter function Skill_Def_Synz : " , "\n" ) 
	--LG("skill_synz", "function Skill_Def_Synz : " , "role = " , role , "sklv =  " , sklv , "\n" ) 
end 

function State_Synz_Add ( role , statelv ) 
	--LG("state_Synz" , "function State_Synz_Add : " , "role =  " , role , "statelv = " , statelv, "\n" ) 

	local mspdsa_dif = (-1) * ( 0.20 + 0.015 * statelv ) 
	local mspdsa = math.floor (  (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX ) 
	SystemNotice(role, "На вас действует эффект <Бездонное болото> "..statelv.."ур." )		

	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

function State_Synz_Rem ( role , statelv ) 
	--LG("state_synz" , "function State_Synz_Rem : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
	local mspdsa_dif = (-1) * ( 0.20 + 0.015 * statelv )
	local mspdsa = math.floor (  (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX ) 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	--SystemNotice(role, "На вас НЕ действует эффект <Бездонное болото> "..statelv.."ур. на  " )	
	ALLExAttrSet(role)  
end 

function  State_Synz_Tran ( statelv ) 
	local statetime = 3   
	return statetime 
end 


--­Исцеляющий источник
function SkillSp_Hfwq ( sklv )	
	local sp_reduce = sklv * 2 + 30  
	return sp_reduce 
end

function SkillCooldown_Hfwq( sklv )
	local Cooldown = 30000
	return Cooldown
end

function SkillArea_Square_Hfwq ( sklv )
	local side = 400 + sklv * 40 
	SetSkillRange ( 3 , side )
end 

function SkillArea_State_Hfwq ( sklv )
	local statetime = 5 + sklv * 2 
	local statelv = sklv   
	SetRangeState ( STATE_HFWQ , statelv  , statetime )
end 

function Skill_Hfwq_Begin ( role , sklv ) 
	--LG( "skill_Hfwq", "enter function Skill_Atk_Hfwq : " , "\n" ) 
	--LG("skill_Hfwq", "function Skill_Atk_Hfwq : " , "role = " , role , "sklv =  " , sklv , "\n" ) 
	local sp = Sp(role) 
	local sp_reduce 
	sp_reduce = SkillSp_Hfwq ( sklv )
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		--LG("skill_Hfwq", "function Skill_Atk_Hfwq : ", "SP insufficient to cast Healing Spring" , "\n" ) 
		return 
	end 
	Sp_Red (role , sp_reduce ) 
	--LG( "Hfwq", "Healing Spring Skill Level= " , sklv , "Skill SP Consumption= " , sp_reduce , "\n" ) 
end 

function Skill_Hfwq_End ( ATKER , DEFER , sklv ) 
end 

function State_Hfwq_Add ( role , statelv )
	local dmg = -1 * (statelv * 100)
	Hp_Endure_Dmg ( role , dmg ) 
end 

function State_Hfwq_Rem ( role , statelv ) 

end 

function State_Hfwq_Tran ( statelv ) 
	return 3
end 


--Истинное зрение
function SkillSp_Syzy ( sklv )	
	local sp_reduce = 10 + sklv * 3    
	return sp_reduce 
end

function SkillCooldown_Syzy( sklv )
	local Cooldown = 5000
	return Cooldown
end

function SkillArea_Square_Syzy ( sklv )	
	local side = 600 + sklv * 20 
	SetSkillRange ( 3 , side ) 	
end 

function SkillArea_State_Syzy ( sklv )	
	local statetime = 90 + sklv *9   
	local statelv = sklv  
	SetRangeState ( STATE_SYZY , statelv  , statetime )
end 

function Skill_Syzy_Begin ( role , sklv ) 
	--LG( "skill_Syzy", "enter function Skill_Atk_Syzy : " , "\n" ) 
	--LG("skill_Syzy", "function Skill_Atk_Syzy : " , "role = " , role , "sklv =  " , sklv , "\n" ) 
	local sp = Sp(role) 
	local sp_reduce  = SkillSp_Syzy ( sklv )	
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
	--LG( "Syzy", "True Sight Skill Level=" , sklv , "Skill SP Consumption= " , sp_reduce , '\n" ) 
end 

function Skill_Syzy_End ( ATKER , DEFER , sklv ) 
end 

function State_Syzy_Add ( role , statelv ) 

end 

function State_Syzy_Rem ( role , statelv ) 

end 

function State_Syzy_Tran ( statelv ) 
	return 1     
end 


--Вихрь
function SkillArea_Circle_Xw ( sklv )	
	local side = 300  
	SetSkillRange ( 3 , side  )  
end

function SkillCooldown_Xw( sklv )
	local Cooldown = 10000
	return Cooldown
end

function SkillSp_Xw ( sklv )	
	local sp_reduce = 20+ sklv * 1    
	return sp_reduce 
end

function SkillArea_State_Xw ( sklv )	
	local statetime = 20 + sklv * 1    
	local statelv = sklv 
	SetRangeState ( STATE_XW , statelv  , statetime )
end 

function Skill_Xw_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce  = SkillSp_Xw ( sklv )  
	if sp - sp_reduce < 0 then 
		SkillUnable(role) 
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Xw_End ( ATKER , DEFER , sklv ) 
end 

function State_Xw_Add ( role , statelv ) 
	local mspdsa_dif = 0.1 + statelv * 0.02 
	local aspdsa_dif = 0.05 + statelv * 0.01 
	local mspdsa = ( MspdSa ( cha_role ) - mspdsa_dif )  * ATTR_RADIX
	local aspdsa = ( AspdSa ( cha_role ) - aspdsa_dif )  * ATTR_RADIX
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD ) 
	ALLExAttrSet( role )  
end 

function State_Xw_Rem ( role , statelv ) 
	local mspdsa_dif = 0.1 + statelv * 0.02 
	local aspdsa_dif = 0.05 + statelv * 0.01 
	local mspdsa = ( MspdSa ( cha_role ) + mspdsa_dif )  * ATTR_RADIX
	local aspdsa = ( AspdSa ( cha_role ) + aspdsa_dif )  * ATTR_RADIX
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD ) 
	ALLExAttrSet( role ) 
end 

function State_Xw_Tran ( statelv ) 
	return 1     
end


--Туман
function SkillArea_Circle_Mw ( sklv )	
	local side = 300 + sklv * 50  
	SetSkillRange ( 3 , side  )  
end

function SkillCooldown_Mw( sklv )
	local Cooldown = 10000
	return Cooldown
end

function SkillSp_Mw ( sklv )	
	local sp_reduce = 20+ sklv * 1    
	return sp_reduce 
end

function SkillArea_State_Mw ( sklv )	
	local statetime = 20    
	local statelv = sklv 
	SetRangeState ( STATE_MW , statelv  , statetime )
end 

function SkillEnergy_Mw ( sklv )	
	local energy_reduce = math.floor ( 3 + sklv * 0.5 )    
	return 0 
end

function Skill_Mw_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce  = SkillSp_Mw ( sklv )  
	if sp - sp_reduce < 0 then 
		SkillUnable(role) 
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Mw_End ( ATKER , DEFER , sklv ) 
end 

function State_Mw_Add ( role , statelv ) 
	local mnatksa_dif = 0.05 + statelv * 0.01 
	local mxatksa_dif = 0.05 + statelv * 0.01 
	local mnatksa = ( MnatkSa ( role ) - mnatksa_dif )  * ATTR_RADIX 
	local mxatksa = ( MxatkSa ( role ) - mxatksa_dif )  * ATTR_RADIX 
	SetCharaAttr( mnatksa , role , ATTR_STATEC_MNATK ) 
	SetCharaAttr( mxatksa , role , ATTR_STATEC_MXATK ) 
	ALLExAttrSet( role )  
end 

function State_Mw_Rem ( role , statelv ) 
	local mnatksa_dif = 0.05 + statelv * 0.01 
	local mxatksa_dif = 0.05 + statelv * 0.01 
	local mnatksa = ( MnatkSa ( role ) + mnatksa_dif )  * ATTR_RADIX 
	local mxatksa = ( MxatkSa ( role ) + mxatksa_dif )  * ATTR_RADIX 
	SetCharaAttr( mnatksa , role , ATTR_STATEC_MNATK ) 
	SetCharaAttr( mxatksa , role , ATTR_STATEC_MXATK ) 
	ALLExAttrSet( role )  
end 

function State_Mw_Tran ( statelv ) 
	return 1     
end

--Грозовая завеса
function SkillArea_Circle_Lm ( sklv )	
	local side = 270  
	SetSkillRange ( 3 , side  )  
end

function SkillCooldown_Lm( sklv )
	local Cooldown = 3000
	return Cooldown
end

function SkillCooldown_Lm_Zem( sklv )
	local Cooldown = 3000
	return Cooldown
end

function SkillSp_Lm ( sklv )	
	local sp_reduce = 200+ sklv * 2.5    
	return sp_reduce 
end

function SkillEnergy_Lm ( sklv )	
	local energy_reduce = math.floor ( 3 + sklv * 0.5 )    
	return 0 
end

function SkillArea_State_Lm ( sklv )	
	local statetime = 10 + sklv * 1    
	local statelv = sklv 
	SetRangeState ( STATE_LM , statelv  , statetime )
end 

function Skill_Lm_Begin ( role , sklv ) 
local AntiBotSystemLine = AntiBotSystemLine(role)
	if AntiBotSystemLine == 0 then SkillUnable(role) return end
	local sp = Sp(role) 
	local sp_reduce  = SkillSp_Lm ( sklv )  
	
	if sp - sp_reduce < 0 then 
		SkillUnable(role) 
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Lm_End ( ATKER , DEFER , sklv ) 
end 



function State_Lm_Rem ( role , statelv ) 

end 

function State_Lm_Tran ( statelv ) 
	return 1     
end


--Проникающая пуля
function SkillArea_Line_Ctd ( sklv )
	local lenth = 1500 + sklv * 50  
	local width = 50 
	SetSkillRange ( 1 , lenth , width  )  
end

function SkillCooldown_Ctd( sklv )
	local Cooldown = 5000
	return Cooldown
end

function SkillPre_Ctd ( sklv )
end 

function SkillSp_Ctd ( sklv )
	local sp_reduce = 10 + sklv * 1 
	return sp_reduce 
end 

function Skill_Ctd_Begin ( role , sklv ) 
	--LG("line", "step 1 : skill_atk_ctd")
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Ctd ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Ctd_End ( ATKER , DEFER , sklv ) 
	--LG("line", "step 3 : skill_atk_ctd")
	local hp = Hp( DEFER ) 
	if ValidCha(ATKER) == 0 then 
		LG ( "luascript_err" , "function Skill_Ctd_End : ATKER as null" ) 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		LG ( "luascript_err" , "function Skill_Ctd_End : DEFER as null" ) 
		return 
	end 
	dmg = ( 1+sklv * 0.2  ) * Atk_Dmg ( ATKER , DEFER ) 
	Hp_Endure_Dmg ( DEFER , dmg )  
end 

--Дробь
function SkillArea_Sector_Ssd ( sklv )	
	local radius = 600 + math.floor ( sklv * 20 ) 
	local angle = 90 + math.floor ( sklv / 5 ) * 15 
	SetSkillRange ( 2 , radius , angle  )  
end 

function SkillCooldown_Ssd( sklv )
	local Cooldown = 15000
	return Cooldown
end

function SkillPre_Ssd ( sklv )
end 

function SkillSp_Ssd ( sklv )
	local sp_reduce = sklv * 1 + 15 
	return sp_reduce 
end 

function Skill_Ssd_Begin ( role , sklv ) 
	local sp = Sp( role ) 
	local sp_reduce = SkillSp_Ssd ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role) 
		--LG("skill_Ssd", "function Skill_Atk_Ssd : ", "SP insufficient. Unable to cast Dispersion Bullet" , "\n" ) 
		return 
	end 
	Sp_Red ( role , sp_reduce ) 
	--LG( "Ssd", "Dispersion Bullet Skill Level= " , sklv , "Skill SP Consumption= " , sp_reduce , '\n" ) 
end 

function Skill_Ssd_End ( ATKER , DEFER , sklv ) 

		atk_rad = 1.2 + sklv * 0.15 
		dmg = Atk_Raise ( atk_rad , ATKER , DEFER ) 
		Hp_Endure_Dmg ( DEFER, dmg )  
		--LG( "Ssd", "Dispersion Bullet Skill Level= " , sklv , "Skill Damage= " , dmg , '\n" ) 
		--LG( "Ssd" , "disperse bullet skill does not damage to attacker" , "\n" ) 
end 


--Не используется
function State_Larea_Tran ( statelv ) 
	return 1 
end 

function State_Larea_Add ( role , statelv ) 
	LG ( "LeiQu" , " role = " , role , " statelv = " , statelv ) 
	local role_type = IsPlayer ( role ) 
	if role_type == 0 then 
		return 
	end 
	local hp = Hp ( role ) 
	dmg = 5 + statelv * 1  
	Hp_Endure_Dmg ( role , dmg ) 
	local cha_role = TurnToCha ( role ) 
	local a = AddEquipEnergy ( cha_role , enumEQUIP_HAND1 , 29 , 50 ) 
end  

function State_Larea_Rem ( role , statelv ) 
end 

--Не используется
function State_Warea_Tran ( statelv ) 
	return 1 
end 

function State_Warea_Add ( role , statelv ) 
	local cha_role = TurnToCha ( role ) 
	local a = AddEquipEnergy ( cha_role , enumEQUIP_HAND2 , 29 , 50 ) 

--	LG ( "WuiQu" , " role = " , role , " statelv = " , statelv ) 
--	local ship_mnatksa_dif = -1 * ( 0.05+0.02 * statelv ) 
--	local ship_mnatksa = math.floor ( ( Ship_MnatkSa ( role ) + ship_mnatksa_dif ) * ATTR_RADIX ) 
--	SetCharaAttr( hrecsa , role , ATTR_BOAT_SKILLC_MNATK ) 
--	ALLExAttrSet(role)  
end 

function State_Warea_Rem ( role , statelv ) 
--	LG ( "WuiQu" , " role = " , role , " statelv = " , statelv ) 
--	local ship_mnatksa_dif = -1 * ( 0.05+0.02 * statelv ) 
--	local ship_mnatksa = math.floor ( ( Ship_MnatkSa ( role ) + ship_mnatksa_dif ) * ATTR_RADIX ) 
--	SetCharaAttr( hrecsa , role , ATTR_BOAT_SKILLC_MNATK ) 
--	ALLExAttrSet(role)  
end 

--Не используется
function State_Farea_Tran ( statelv ) 
	return 1 
end 

function State_Farea_Add ( role , statelv ) 
	local cha_role = TurnToCha ( role ) 
	local a = AddEquipEnergy ( cha_role , enumEQUIP_NECK , 29 , 50 ) 

--	LG ( "WuiQu" , " role = " , role , " statelv = " , statelv ) 
--	local ship_mnatksa_dif = -1 * ( 0.05+0.02 * statelv ) 
--	local ship_mnatksa = math.floor ( ( Ship_MnatkSa ( role ) + ship_mnatksa_dif ) * ATTR_RADIX ) 
--	SetCharaAttr( hrecsa , role , ATTR_BOAT_SKILLC_MNATK ) 
--	ALLExAttrSet(role)  
end 

function State_Farea_Rem ( role , statelv ) 
--	LG ( "WuiQu" , " role = " , role , " statelv = " , statelv ) 
--	local ship_mnatksa_dif = -1 * ( 0.05+0.02 * statelv ) 
--	local ship_mnatksa = math.floor ( ( Ship_MnatkSa ( role ) + ship_mnatksa_dif ) * ATTR_RADIX ) 
--	SetCharaAttr( hrecsa , role , ATTR_BOAT_SKILLC_MNATK ) 
--	ALLExAttrSet(role)  
end 

-- Различные виды дистанционной атаки у мобов
function SkillCooldown_Gwptjn( sklv )
	local Cooldown = 2500
	return Cooldown
end

function SkillCooldown_Zcmtl( sklv )
	local Cooldown = 2000
	return Cooldown
end

--Крик смерти
function SkillSp_Swcx ( sklv )	
   local sp_reduce = 50  
	return sp_reduce 
end 

function SkillCooldown_Swcx( sklv )
	local Cooldown = 6000
	return Cooldown
end

function Skill_Swzq_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Swcx ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Swcx_End ( ATKER , DEFER , sklv ) 
	
	Hp_Endure_Dmg ( DEFER , dmg )  
	local statelv = sklv 
	local statetime = 30    
	AddState ( ATKER , DEFER , STATE_SWCX , statelv , statetime )
	SystemNotice(DEFER, "На вас действует эффект <Крик смерти> "..statelv.."ур. на "..statetime.. " секунд" )

end 

function State_Swcx_Add ( role , statelv )

end

function State_Swcx_Rem ( role , statelv )

end


--Кровавая ярость
function SkillSp_Xn ( sklv )	
	local sp_reduce = 20 
	return sp_reduce 
end

function SkillCooldown_Xn( sklv )
	local Cooldown = 2000
	return Cooldown
end

function Skill_Xn_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Xn ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Xn_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime =  60    
	AddState ( ATKER , DEFER , STATE_XN , statelv , statetime )
	SystemNotice(DEFER, "На вас действует эффект <Кровавая ярость> "..statelv.."ур. на "..statetime.. " секунд" )

	Check_Ys_Rem ( ATKER , DEFER )		
end 

function State_Xn_Add ( role , statelv ) 
	local hpdmg = 300   
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role)  
end 

function State_Xn_Rem ( role , statelv )
			
end 


--Логово
function SkillSp_Nt ( sklv )	
	local sp_reduce = 40
	return sp_reduce 
end

function SkillCooldown_Nt( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_Nt_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Nt(sklv)  
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Nt_End ( ATKER , DEFER , sklv )  
	local statelv = sklv 
	local statetime = 60 
	local hpdmg = 3 * Atk_Dmg ( ATKER , DEFER ) 
	Hp_Endure_Dmg ( DEFER , hpdmg )  
	AddState( ATKER , DEFER , STATE_NT, statelv , statetime )
end 

function State_Nt_Add ( role , statelv ) 
	local mspdsa_dif = 0.5
	local hitsa_dif = 0.5 
	local mspdsa = math.floor ( (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX) 
	local hitsa = math.floor ( (HitSa(role) - hitsa_dif ) * ATTR_RADIX) 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )
	SetCharaAttr( hitsa , role , ATTR_STATEC_HIT )
	ALLExAttrSet(role)  
end 

function State_Nt_Rem ( role , statelv ) 
	local mspdsa_dif = 0.5
	local hitsa_dif = 0.5 
	local mspdsa = math.floor ( (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX) 
	local hitsa = math.floor ( (HitSa(role) + hitsa_dif ) * ATTR_RADIX) 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )
	SetCharaAttr( hitsa , role , ATTR_STATEC_HIT )
	ALLExAttrSet(role)  
	ALLExAttrSet(role)  
end 

-- Землетрясение (глава снежного люда)
function SkillSp_DiZ ( sklv )	
	local sp_reduce = sklv * 5 + 50  
	return sp_reduce 
end

function SkillCooldown_DiZ( sklv )
	local Cooldown = 3000
	return Cooldown
end

function SkillArea_Square_DiZ ( sklv )	
	local side = 1000 
	SetSkillRange ( 4 , side ) 	
end 

function SkillArea_State_DiZ ( sklv )	
	local statetime = 20   
	local statelv = sklv 
	SetRangeState ( STATE_DIZ , statelv  , statetime ) 
end 

function Skill_DiZ_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce 
	sp_reduce = SkillSp_DiZ ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_DiZ_End ( ATKER , DEFER , sklv )
	local statetime = 20
	local statelv = 10
	SystemNotice(DEFER, "На вас действует эффект <Земле трясение> "..statelv.."ур. на "..statetime.. " секунд" )

	AddState ( ATKER , DEFER , STATE_DIZ , statelv , statetime )
	AddState ( ATKER , DEFER , STATE_XY , statelv , 10 )
end 

function State_DiZ_Add ( role , statelv ) 
	local mspdsa_dif = (-1) * 0.30 
	local mspdsa = math.floor (  (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX ) 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end

function State_DiZ_Rem ( role , statelv ) 
	local mspdsa_dif = (-1) * 0.30
	local mspdsa = math.floor (  (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX ) 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

function  State_DiZ_Tran ( statelv ) 
	local statetime = 10   
	return statetime 
end 

-- Удар колосса (глава снежного люда)
function SkillSp_XiK ( sklv )	
   local sp_reduce = 20 
	return sp_reduce 
end 

function SkillCooldown_Xik( sklv )
	local Cooldown = 2000
	return Cooldown
end

function Skill_Xik_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Xik ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Xik_End ( ATKER , DEFER , sklv ) 
	local aspd = Aspd ( ATKER )
	local dmg = 20 * Atk_Dmg ( ATKER , DEFER )   
	Hp_Endure_Dmg ( DEFER , dmg )  
	Check_Ys_Rem ( ATKER , DEFER )
end 

-- Поцелуй мороза
function SkillSp_Biw ( sklv )	
   local sp_reduce = 50  
	return sp_reduce 
end 

function SkillCooldown_Biw( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_Biw_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Swcx ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Biw_End ( ATKER , DEFER , sklv )
	local statelv = sklv 
	local statetime =  45  
	SystemNotice(DEFER, "На вас действует эффект <Поцелуй мороза> "..statelv.."ур. на "..statetime.. " секунд" )

	AddState ( ATKER , DEFER , STATE_BIW , statelv , statetime )
end 

function State_Biw_Add ( role , statelv )
end

function State_Biw_Rem ( role , statelv )
end

-- Лезвие Демона, Кровожадный клинок
function SkillArea_Circle_Fer ( sklv )	
	local side = 1000
	SetSkillRange ( 4 , side )   
end 

function SkillCooldown_Fer( sklv )
	local Cooldown = 5000
	return Cooldown
end

function SkillPre_Fer ( sklv )	
end 

function SkillSp_Fer ( sklv )	
	local sp_reduce = 20 
	return sp_reduce 
end 

function Skill_Fer_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Fer ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Fer_End ( ATKER , DEFER , sklv ) 
	local hp = Hp( DEFER ) 
	dmg = 2 * Atk_Dmg ( ATKER , DEFER ) 
	Hp_Endure_Dmg ( DEFER , dmg )  
	Check_Ys_Rem ( ATKER , DEFER)		
end 

--Копия
function SkillSp_Fuz ( sklv )	
	local sp_reduce = 10  
	return sp_reduce 
end

function SkillCooldown_Fuz( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_Fuz_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Fuz ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Fuz_End ( ATKER , DEFER , sklv ) 

end 

--Ловушка морской водоросли
function SkillArea_Circle_Hztx ( sklv )
	local side = 300 
	SetSkillRange ( 4 , side  )  
end 

function SkillCooldown_Hztx( sklv )
	local Cooldown = 2000
	return Cooldown
end

function SkillSp_Hztx ( sklv )	
	local sp_reduce = 20 
	return sp_reduce 
end 

function Skill_Hx_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Hztx ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Hztx_End ( ATKER , DEFER , sklv ) 
	local statelv = 10 
	local statetime = 30
	AddState( ATKER , DEFER , STATE_HZCR, statelv , statetime ) 
end 

--Электрический разряд медузы
function SkillArea_Circle_Smdj ( sklv )	
	local side = 400  
	SetSkillRange ( 3 , side  )  
end

function SkillCooldown_Smdj( sklv )
	local Cooldown = 1000
	return Cooldown
end

function SkillSp_Smdj ( sklv )	
	local sp_reduce = 20    
	return sp_reduce 
end

function SkillArea_State_Smdj ( sklv )	
	local statetime = 25   
	local statelv = 10 
	SetRangeState ( STATE_LM , statelv  , statetime ) 
end 

function Skill_Smdj_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce  = SkillSp_Smdj ( sklv )  
	if sp - sp_reduce < 0 then 
		SkillUnable(role) 
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Smdj_End ( ATKER , DEFER , sklv ) 
end 


--Водоворотный удар кальмара
function SkillArea_Circle_Wzxf ( sklv )	
	local side = 400
	SetSkillRange ( 4 , side )   
end 

function SkillCooldown_Wzxf( sklv )
	local Cooldown = 1000
	return Cooldown
end

function SkillPre_Wzxf ( sklv )	
end 

function SkillSp_Wzxf ( sklv )	
	local sp_reduce = 20 - math.floor ( sklv * 0.5 ) 
	return sp_reduce 
end 

function Skill_Wzxf_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Wzxf ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Wzxf_End ( ATKER , DEFER , sklv ) 
	local hp = Hp( DEFER ) 
	dmg = 3 * Atk_Dmg ( ATKER , DEFER ) 
	Hp_Endure_Dmg ( DEFER , dmg )  
end 


--Атака акулы
function SkillSp_Syzm ( sklv )
	local sp_reduce = sklv * 2 + 30  
	return sp_reduce 
end 

function SkillCooldown_Syzm( sklv )
	local Cooldown = 2000
	return Cooldown
end

function Skill_Syzm_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Syzm ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Syzm_End ( ATKER , DEFER , sklv ) 
	local Mxhp = Mxhp ( DEFER )
	local dmg = math.floor ( Mxhp / 2 )
	Hp_Endure_Dmg ( DEFER , dmg ) 

end

--Самоуничтожение выползня
function SkillArea_Circle_Kdzb ( sklv )	
	local side = 400
	SetSkillRange ( 4 , side )   
end 

function SkillCooldown_Kdzb( sklv )
	local Cooldown = 1000
	return Cooldown
end

function SkillPre_Kdzb ( sklv )	
end 

function SkillSp_Kdzb ( sklv )	
	local sp_reduce = 20 - math.floor ( sklv * 0.5 ) 
	return sp_reduce 
end 

function Skill_Kdzb_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Wzxf ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Kdzb_End ( ATKER , DEFER , sklv ) 
	local hp = Hp( DEFER ) 
	dmg = 3 * Atk_Dmg ( ATKER , DEFER ) 
	Hp_Endure_Dmg ( DEFER , dmg )  
end 

--Примитивное умение
function SkillCooldown_Sgjn1( sklv )
	local Cooldown = 6000
	return Cooldown
end

function SkillCooldown_Sgjn2( sklv )
	local Cooldown = 2500
	return Cooldown
end

--Не используется
function State_Slzb_Add ( role , statelv ) 
--	LG ( "bomb" , "Check Water Mine going to explode?" ) 
--	Notice ( "Check Water Mine going to explode?") 
	local hp = Hp ( role ) 
	if hp <= 0 then 
		RemoveState ( role , STATE_BOMB ) 
	end 
end 

function State_Slzb_Rem ( role , statelv ) 
--	LG ( "bomb" , "Water Mine is going to explode?" ) 
--	Notice ( "Water Mine is going to explode") 
	local x , y = GetChaPos ( role  ) 
	ChaUseSkill2 ( role , SK_BOMB , 1 , x, y ) 
	Notice ( "after use skill" ) 
	DelCha ( role ) 
	Notice ( "after delcha" ) 
end 

function SkillArea_Circle_Slzb ( sklv )	
	--LG( "skarea_lh", " enter function SkillArea_Circle_Lh : " , "sklv = " ,sklv ) 
	local side = 1200 + math.floor ( sklv * 20 ) 
	--LG( "skarea_lh" , " side = " , side ) 
	SetSkillRange ( 4 , side )   
end 

function SkillCooldown_Slzb( sklv )
	local Cooldown = 1000
	return Cooldown
end

function SkillPre_Slzb ( sklv )	
end 

function SkillSp_Slzb ( sklv )	
	local sp_reduce = 0 
	return sp_reduce 
end 

function Skill_Slzb_Begin ( role , sklv ) 

end 

function Skill_Slzb_End ( ATKER , DEFER , sklv ) 
	local atker_type = GetChaTypeID ( ATKER ) 
	local defer_type = GetChaTypeID ( DEFER ) 
--	LG ( "bomb" , "Water Mine has really exploded" ) 

--	Notice ( "Water Mine has really exploded") 
--	Notice ( "atker_type = "..atker_type) 
--	Notice ( "defer_type = "..defer_type) 
	local hp = Hp( DEFER ) 
	Notice ( "defer_hp = "..hp )
	if ValidCha(ATKER) == 0 then 
		LG ( "luascript_err" , "function Skill_Slzb_End : ATKER as null" ) 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		LG ( "luascript_err" , "function Skill_Slzb_End : DEFER as null" ) 
		return 
	end 
	dmg = 1500 
	Hp_Endure_Dmg ( DEFER , dmg )  
	SetCharaAttr ( -1 , ATKER , ATTR_HP ) 
--	Notice ( "Water Mine finished bombing") 
end 


--Не используется
function State_PKDYK_Add ( role , statelv ) 
	local mnatksa_dif = -0.8 
	local mxatksa_dif = -0.8
	local mnatksa = math.floor ( (MnatkSa(role) + mnatksa_dif ) * ATTR_RADIX) 
	local mxatksa = math.floor ( (MxatkSa(role) + mxatksa_dif ) * ATTR_RADIX) 
	SetCharaAttr( mnatksa , role , ATTR_STATEC_MNATK ) 
	SetCharaAttr( mxatksa , role , ATTR_STATEC_MXATK ) 
	ALLExAttrSet(role)  
end 

function State_PKDYK_Rem ( role , statelv ) 
	local mnatksa_dif = -0.8
	local mxatksa_dif = -0.8
	local mnatksa = math.floor ( (MnatkSa(role) - mnatksa_dif ) * ATTR_RADIX) 
	local mxatksa = math.floor ( (MxatkSa(role) - mxatksa_dif ) * ATTR_RADIX) 
	SetCharaAttr( mnatksa , role , ATTR_STATEC_MNATK ) 
	SetCharaAttr( mxatksa , role , ATTR_STATEC_MXATK ) 
	ALLExAttrSet(role)  
end

--НАсмешка
function State_PKLC_Add ( role , statelv ) 
	local def_dif = -200  
	local def = DefSb(role) + def_dif
	local Res_sa = ResistSa(role)
	local Res_sa_dif = -0.5
	local Res = Res_sa + Res_sa_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )
	SetCharaAttr( Res , role , ATTR_STATEC_PDEF )
	ALLExAttrSet(role)

end 

function State_PKLC_Rem ( role , statelv ) 
	local def_dif = -200  
	local def = DefSb(role) - def_dif
	local Res_sa = ResistSa(role)
	local Res_sa_dif = -0.5
	local Res = Res_sa - Res_sa_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )
	SetCharaAttr( Res , role , ATTR_STATEC_PDEF )
	ALLExAttrSet(role)
	ALLExAttrSet(role)
end 

--Ремонт
function SkillSp_PKXL ( sklv ) 
	return 0 
end 

function SkillCooldown_PKXL( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_PKXL_Begin  ( role , sklv ) 
end 

function Skill_PKXL_End ( ATKER , DEFER , sklv ) 
	local i = CheckBagItem( ATKER , 4661 )
	if i <= 0 then
		SystemNotice ( ATKER , "Does not have wood to repairЎ­what do you use?")
		return
	end
	local j = DelBagItem(ATKER,4661,1)
	if j == 1 then
		SystemNotice ( ATKER , "RepairingЎ­" ) 
		local hpdmg = 200 + sklv * 20 
		local hp = Hp(DEFER) + hpdmg 
		SetCharaAttr(hp , DEFER , ATTR_HP )
	else
		LG("PK_repair","Delete Wood failed")
	end
	
end 

--Бычье
function State_PKMNYS_Add ( role ,statelv )
	local MxhpSb_dif = 1000 * statelv/10
	local MxhpSb = MxhpSb( role ) + MxhpSb_dif
	SetCharaAttr( MxhpSb , role , ATTR_STATEV_MXHP )
	ALLExAttrSet(role)
end

function State_PKMNYS_Rem ( role , statelv )
	local MxhpSb_dif = 1000 * statelv/10
	local MxhpSb = MxhpSb( role ) - MxhpSb_dif
	SetCharaAttr( MxhpSb , role , ATTR_STATEV_MXHP )
	ALLExAttrSet(role)
end

--Боевоей
function State_PKZDYS_Add ( role , statelv )
	local atksb_dif = 150 * statelv/10
	if statelv == 1 then
		atksb_dif = 30
	end
	local mnatksb = MnatkSb(role) + atksb_dif  
	local mxatksb = MxatkSb(role ) + atksb_dif
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)
end

function State_PKZDYS_Rem ( role , statelv )
	local atksb_dif = 150 * statelv/10
	if statelv == 1 then
		atksb_dif = 30
	end
	local mnatksb = MnatkSb(role) - atksb_dif   
	local mxatksb = MxatkSb(role ) - atksb_dif  
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)
end

--Не используется
function State_KUANGZ_Add ( role , statelv )
	local atksb_dif = 50	* statelv/5
	local def_dif = 30 * statelv/5
	local mnatksb = MnatkSb(role) + atksb_dif   
	local mxatksb = MxatkSb(role ) + atksb_dif 
	local defsb = DefSb( role ) - def_dif
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF )
	ALLExAttrSet(role)
end

function State_KUANGZ_Rem ( role , statelv )
	local atksb_dif = 50	* statelv/5
	local def_dif = 30 * statelv/5
	local mnatksb = MnatkSb(role) - atksb_dif  
	local mxatksb = MxatkSb(role ) - atksb_dif 
	local defsb = DefSb( role ) + def_dif
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF )
	ALLExAttrSet(role)
end

--Берсерк
function State_PKKBYS_Add ( role , statelv )
	local aspd_dif = 140 * statelv/10
	local aspdsb = ( AspdSb(role) + aspd_dif ) 
	SetCharaAttr( aspdsb , role , ATTR_STATEV_ASPD ) 
	ALLExAttrSet(role)
end

function State_PKKBYS_Rem ( role , statelv )
	local aspd_dif = 140 * statelv/10
	local aspdsb = ( AspdSb(role) - aspd_dif ) 
	SetCharaAttr( aspdsb , role , ATTR_STATEV_ASPD ) 
	ALLExAttrSet(role)
end

--Не используется
function State_PKJSYS_Add ( role , statelv )
	local sta_dif = 30 * statelv/10
	local stasb = StaSb( role ) + sta_dif 
	SetCharaAttr( stasb , role , ATTR_STATEV_STA )
	ALLExAttrSet(role)
end

function State_PKJSYS_Rem ( role , statelv )
	local sta_dif = 30 * statelv/10
	local stasb = StaSb( role ) - sta_dif 
	SetCharaAttr( stasb , role , ATTR_STATEV_STA )
	ALLExAttrSet(role)
end

--Не используется
function State_PKSFYS_Add ( role , statelv )
	local def_dif = 150 * statelv/10
	if statelv == 1 then
		def_dif = 30
	end
	local defsb = DefSb(role) + def_dif 
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF )
	ALLExAttrSet(role)
end

function State_PKSFYS_Rem ( role , statelv )
	local def_dif = 150 * statelv/10
	if statelv == 1 then
		def_dif = 30
	end
	local defsb = DefSb(role) - def_dif
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF )
	ALLExAttrSet(role)
end

--Полный доспех
function State_QUANS_Add ( role , statelv )
	local def_dif = 70 * statelv/10
	local atksb_dif = 30 * statelv/10
	local defsb = DefSb( role ) + def_dif 
	local mnatksb = MnatkSb(role) - atksb_dif  
	local mxatksb = MxatkSb(role ) - atksb_dif 
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF )
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)
end

function State_QUANS_Rem ( role , statelv )
	local def_dif = 70 * statelv/10
	local atksb_dif = 30 * statelv/10
	local defsb = DefSb( role ) - def_dif  
	local mnatksb = MnatkSb(role) + atksb_dif 
	local mxatksb = MxatkSb(role ) + atksb_dif  
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF )
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)
end

--Не используется
function State_PKJZYS_Add ( role , statelv )
	local hit_dif = 30 * statelv/10
	local hitsb  = HitSb( role ) + hit_dif 
	SetCharaAttr( hitsb , role , ATTR_STATEV_HIT )
	ALLExAttrSet(role)
end

function State_PKJZYS_Rem ( role , statelv )
	local hit_dif = 30 * statelv/10
	local hitsb  = HitSb( role ) - hit_dif 
	SetCharaAttr( hitsb , role , ATTR_STATEV_HIT )
	ALLExAttrSet(role)
end

--Удар колосса
function State_PKSBYS_Add ( role ,statelv )
	local Flee_dif = 10 * statelv/10
	if statelv == 1 then
		Flee_dif = 10
	end
	local Flee = FleeSb( role ) + Flee_dif 
	SetCharaAttr( Flee , role , ATTR_STATEV_FLEE )
	ALLExAttrSet(role)
end

function State_PKSBYS_Rem ( role , statelv )
	local Flee_dif = 10 * statelv/10
	if statelv == 1 then
		Flee_dif = 10 
	end
	local Flee = FleeSb( role ) - Flee_dif 
	SetCharaAttr( Flee , role , ATTR_STATEV_FLEE )
	ALLExAttrSet(role)
end

-- Благословляющее зелье
function SkillCooldown_Wudiyaoshui( sklv )
	local Cooldown = 20000 
	return Cooldown
end

function Skill_Wudiyaoshui_Begin ( role , sklv ) 
	local atk_role = TurnToCha ( role ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local item_count = CheckBagItem ( atk_role , 1860 )
	if item_count <= 0 then  
		SkillUnable(atk_role)   
		SystemNotice ( atk_role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( atk_role , 1860 , 1 ) 
end 

function Skill_Wudiyaoshui_End( ATKER , DEFER , sklv )
	local NocLock =	KitbagLock( ATKER, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( ATKER , "Ваш инвентарь заблокирован")
		return 0
	end
	local statelv = 10
	local statetime = 5
	AddState( ATKER , DEFER , STATE_PKWD , statelv , statetime )
	local cha_name = GetChaDefaultName ( ATKER ) 
	local message = cha_name.." входит в режим неуязвимости на 5 сек."  
	Notice ( message )
end 

function State_PKWd_Add ( role , statelv )
end

function State_PKWd_Rem ( role , statelv )
end


--Не используется
function State_YSLLQH_Add ( role , statelv )
	local str_dif = 5 
	local strsb = StrSb( role ) + str_dif 
	SetCharaAttr( strsb , role , ATTR_STATEV_STR )
	ALLExAttrSet(role)
end

function State_YSLLQH_Rem ( role , statelv )
	local str_dif = 5 
	local strsb = StrSb( role ) - str_dif 
	SetCharaAttr( strsb , role , ATTR_STATEV_STR )
	ALLExAttrSet(role)
end

--Не используется
function State_YSMJQH_Add ( role , statelv )
	local agi_dif = 5 
	local agisb = AgiSb( role ) + agi_dif 
	SetCharaAttr( agisb , role , ATTR_STATEV_AGI )
	ALLExAttrSet(role)
end

function State_YSMJQH_Rem ( role , statelv )
	local agi_dif = 5
	local agisb = AgiSb( role ) - agi_dif 
	SetCharaAttr( agisb , role , ATTR_STATEV_AGI )
	ALLExAttrSet(role)
end

--Не используется
function State_YSLQQH_Add ( role , statelv )
	local dex_dif = 5 
	local dexsb = DexSb( role ) + dex_dif 
	SetCharaAttr( dexsb , role , ATTR_STATEV_DEX )
	ALLExAttrSet(role)
end

function State_YSLQQH_Rem ( role , statelv )
	local dex_dif = 5 
	local dexsb = DexSb( role ) - dex_dif 
	SetCharaAttr( dexsb , role , ATTR_STATEV_DEX )
	ALLExAttrSet(role)
end

--Не используется
function State_YSTZQH_Add ( role , statelv )
	local con_dif = 5 
	local consb = ConSb( role ) + con_dif 
	SetCharaAttr( consb , role , ATTR_STATEV_CON )
	ALLExAttrSet(role)
end

function State_YSTZQH_Rem ( role , statelv )
	local con_dif = 5
	local consb = ConSb( role ) - con_dif
	SetCharaAttr( consb , role , ATTR_STATEV_CON )
	ALLExAttrSet(role)
end

--Не используется
function State_YSJSQH_Add ( role , statelv )
	local sta_dif = 5
	local stasb = StaSb( role ) + sta_dif
	SetCharaAttr( stasb , role , ATTR_STATEV_STA )
	ALLExAttrSet(role)
end

function State_YSJSQH_Rem ( role , statelv )
	local sta_dif = 5 
	local stasb = StaSb( role ) - sta_dif 
	SetCharaAttr( stasb , role , ATTR_STATEV_STA )
	ALLExAttrSet(role)
end

--Скользилка
function State_YSMspd_Add ( role , statelv )
	local mspdsa_dif = 0
	if statelv == 1 then
		mspdsa_dif = 0.15 * statelv/10
	end
	local mspdsa = MspdSa ( role )
	local mspdsa_fin = ( mspdsa + mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa_fin , role , ATTR_STATEC_MSPD )
	ALLExAttrSet(role)
end

function State_YSMspd_Rem ( role , statelv )
	local mspdsa_dif = 0
	if statelv == 1 then
		mspdsa_dif = 0.15 * statelv/10
	end
	local mspdsa = MspdSa ( role )
	local mspdsa_fin = ( mspdsa - mspdsa_dif ) * ATTR_RADIX
	SetCharaAttr( mspdsa_fin , role , ATTR_STATEC_MSPD )
	ALLExAttrSet(role)
end

--Ускорилка
function State_QINGZ_Add ( role , statelv )
	local mspdsa_dif = 0.28
	local def_dif = 50 * statelv/10
	local mspdsa = MspdSa ( role )
	local mspdsa_fin = ( mspdsa + mspdsa_dif ) * ATTR_RADIX 
	local defsb = DefSb( role ) - def_dif
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF )
	SetCharaAttr( mspdsa_fin , role , ATTR_STATEC_MSPD )
	ALLExAttrSet(role)
end

function State_QINGZ_Rem ( role , statelv )
	local mspdsa_dif = 0.28
	local def_dif = 50 * statelv/10
	local mspdsa = MspdSa ( role )
	local mspdsa_fin = ( mspdsa - mspdsa_dif ) * ATTR_RADIX 
	local defsb = DefSb( role ) + def_dif
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF )
	SetCharaAttr( mspdsa_fin , role , ATTR_STATEC_MSPD )
	ALLExAttrSet(role)
end

--Не используется
function State_YSBoatMspd_Add ( role , statelv )
	local mspdsa_dif = 0
	if statelv == 1 then
		mspdsa_dif = 0.15  * statelv/10
	end
	local mspdsa = ( MspdSa ( role ) + mspdsa_dif )  * ATTR_RADIX
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)
end

function State_YSBoatMspd_Rem ( role , statelv )
	local mspdsa_dif = 0    
	if statelv == 1 then
		mspdsa_dif = 0.15  * statelv/10
	end
	local mspdsa = ( MspdSa ( role ) - mspdsa_dif )  * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)
end

--Зелье изменения защиты корабля
function State_YSBoatDEF_Add ( role , statelv )
	local defsb_dif = 0
	if statelv == 1 then
		defsb_dif = 200
	end
	local defsb = ( DefSb ( role ) + defsb_dif )
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF ) 
	ALLExAttrSet(role)
end

function State_YSBoatDEF_Rem ( role , statelv )
	local defsb_dif = 0
	if statelv == 1 then
		defsb_dif = 200
	end
	local defsb = ( DefSb ( role ) - defsb_dif )
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF ) 
	ALLExAttrSet(role)
end

--Светильник
function State_DengLong_Add ( role , statelv )
	local def_dif = 50
	local defsb = DefSb( role ) + def_dif
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF )
	ALLExAttrSet(role)
end

function State_DengLong_Rem ( role , statelv )
	local def_dif = 50
	local defsb = DefSb( role ) - def_dif
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF )
	ALLExAttrSet(role)
end

--Трупная атака
function SkillSp_JSDD ( sklv )	
	local sp_reduce = 5 
	return sp_reduce 
end

function SkillCooldown_JSDD( sklv )
	local Cooldown = 2000
	return Cooldown
end

function Skill_JSDD_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_JSDD ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_JSDD_End ( ATKER , DEFER , sklv ) 
	local statelv = 1 
	local statetime =  30    
	dmg = Atk_Dmg( ATKER , DEFER )	
	sus,dmgsa = Check_MisorCrt( ATKER, DEFER )		
	SetSus(DEFER , sus)			
	hpdmg = math.floor( dmg*dmgsa ) 			
	Hp_Endure_Dmg( DEFER , hpdmg )	
	local StateLv = GetChaStateLv ( DEFER , STATE_TTISW )
	if StateLv ~= 4 then	
		AddState ( ATKER , DEFER , STATE_JSDD , statelv , statetime )
	end
	Check_Ys_Rem ( ATKER , DEFER )	
end 

function State_JSDD_Add ( role , statelv )
	if statelv == 3 then
		--К¬¶ѕ
	end
	if statelv == 4 then
		--Зхі¤ЦР¶ѕ
	end
	local hpdmg = 100 * statelv   
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role)  
end 

function State_JSDD_Rem ( role , statelv ) 
	--LG("state_JSDD" , "function State_JSDD_Rem : " , "role =  " , role , "statelv = " , statelv, "\n" ) 
end 

--Дистанционная атака трупа
function SkillSp_JSMF ( sklv )	
	local sp_reduce = 3 + sklv * 2   
	return sp_reduce 
end 

function SkillArea_Line_JSMF ( sklv )
	local lenth = 800   
	local width = 200 + sklv * 10 
	SetSkillRange ( 1 , lenth , width  )  
end

function SkillCooldown_JSMF( sklv ) 
	local Cooldown = 2000
	return Cooldown
end

function Skill_JSMF_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_JSMF ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_JSMF_End ( ATKER , DEFER , sklv ) 
	local Sta_role = Sta ( DEFER ) 

	hpdmg =  math.max ( 1 ,math.max ( 30 , math.floor ( ( 150 - Sta_role ) ) * 2.8 ) ) 
	
	Hp_Endure_Dmg ( DEFER, hpdmg )  

end 

--Волшебство лисьего даоса
function SkillSp_HDSMF ( sklv )	
	local sp_reduce = 30 + sklv * 2   
	return sp_reduce 
end 

function SkillCooldown_HDSMF( sklv ) 
	local Cooldown = 3000 
	return Cooldown
end

function Skill_HDSMF_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_HDSMF ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_HDSMF_End ( ATKER , DEFER , sklv )
	local Sta_role = Sta ( DEFER ) 
	hpdmg =  math.max ( 1 , math.max ( 30 , ( 150 - Sta_role ) ) * 4 ) 
	Hp_Endure_Dmg ( DEFER, hpdmg )
end 

--Волшебство кицуне
function SkillSp_HYMF ( sklv )	
	local sp_reduce = 10 + sklv * 2   
	return sp_reduce 
end

function SkillCooldown_HYMF( sklv ) 
	local Cooldown = 3000 
	return Cooldown
end

function Skill_HYMF_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_HYMF ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_HYMF_End ( ATKER , DEFER , sklv )
	local Sta_role = Sta ( DEFER ) 
	hpdmg = math.max ( 1 ,  math.floor (  math.max ( 50 , ( 150 - Sta_role ) ) * 3.5 ) ) 
	Hp_Endure_Dmg ( DEFER, hpdmg )
end 

function SkillSp_HYMH ( sklv )
	local sp_reduce = 50 + sklv * 2   
	return sp_reduce 
end 

function SkillCooldown_HYMH( sklv ) 
	local Cooldown = 2000
	return Cooldown
end

function Skill_HYMH_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_HYMH ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_HYMH_End ( ATKER , DEFER , sklv ) 
        local cha_type = GetChaTypeID ( DEFER )
	local statelv = sklv 
	local statetime =  6 + sklv * 1  

	if cha_type == 1 or cha_type == 2 then
		AddState ( ATKER , DEFER , STATE_HYMH , statelv , statetime ) 
		Check_Ys_Rem ( ATKER , DEFER )
	end
end 

function State_HYMH_Add ( role , statelv ) 

end 

function State_HYMH_Rem ( role , statelv ) 

end 

--Волшебство бессмертной лисы	
function SkillSp_FoxMagic ( sklv )	
	local sp_reduce = 10 + sklv * 2   
	return sp_reduce 
end

function SkillCooldown_FoxMagic( sklv ) 
	local Cooldown = 3000 
	return Cooldown
end

function Skill_FoxMagic_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_FoxMagic ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_FoxMagic_End ( ATKER , DEFER , sklv )
	local Sta_role = Sta ( DEFER ) 
	hpdmg =   math.max ( 50 , ( 150 - Sta_role ) )  * 10
	Hp_Endure_Dmg ( DEFER, hpdmg )
end 

function SkillArea_Circle_FoxSquareMagic ( sklv )	
	local side = 100 
	SetSkillRange ( 4 , side ) 	
end

function SkillCooldown_FoxSquareMagic( sklv )
	local Cooldown = 7000 - sklv * 500
	return Cooldown
end

function SkillSp_FoxSquareMagic ( sklv )	
	local sp_reduce = 20+ sklv * 3   
	return sp_reduce 
end

function Skill_FoxSquareMagic_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce  = SkillSp_FoxSquareMagic ( sklv )  
	if sp - sp_reduce < 0 then 
		SkillUnable(role) 
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_FoxSquareMagic_End ( ATKER , DEFER , sklv ) 
	
	local Sta_role = Sta ( DEFER ) 
	hpdmg =  math.max( 30 , ( 150 - math.floor ( Sta_role / 2  ) ) ) * 5 + 300 
	Hp_Endure_Dmg ( DEFER, hpdmg )

end

--Ритуал
function SkillSp_TZJSMagic ( sklv )	
	local sp_reduce = 10 + sklv * 2   
	return sp_reduce 
end

function SkillCooldown_TZJSMagic( sklv ) 
	local Cooldown = 3000 
	return Cooldown
end

function Skill_TZJSMagic_Begin ( role , sklv ) 
	local sp = Sp( role ) 
	local sp_reduce = SkillSp_TZJSMagic ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable( role )   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_TZJSMagic_End ( ATKER , DEFER , sklv )
	local Sta_role = Sta ( DEFER ) 
	hpdmg =  math.max ( 50 , ( 150 - Sta_role ) ) * 5
	Hp_Endure_Dmg ( DEFER, hpdmg )
end 

--Колдовство сахема
function SkillArea_Circle_TZQZMagic ( sklv )	
	local side = 100 
	SetSkillRange ( 4 , side ) 	
end

function SkillSp_TZQZMagic ( sklv )	
	local sp_reduce = 10 + sklv * 2   
	return sp_reduce 
end

function SkillCooldown_TZQZMagic( sklv ) 
	local Cooldown = 3000 
	return Cooldown
end

function Skill_TZQZMagic_Begin ( role , sklv ) 
	local sp = Sp( role ) 
	local sp_reduce = SkillSp_TZQZMagic ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable( role )   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_TZQZMagic_End ( ATKER , DEFER , sklv )
	local Sta_role = Sta ( DEFER ) 
	local statelv = 4
	local statetime = 15
	hpdmg =   math.max ( 50 , ( 150 - Sta_role ) )  * 5
	Hp_Endure_Dmg ( DEFER, hpdmg )
	AddState ( ATKER , DEFER , STATE_JSDD , statelv , statetime ) 

end

--Собачий вой
function SkillSp_QuanX ( sklv )	
	local sp_reduce = sklv * 5 + 50  
	return sp_reduce 
end

function SkillCooldown_QuanX( sklv )
	local Cooldown = 3000
	return Cooldown
end

function SkillArea_Circle_QuanX ( sklv )	
	local side = 1000 
	SetSkillRange ( 4 , side ) 	
end 

function Skill_QuanX_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce 
	sp_reduce = SkillSp_QuanX ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	
	Sp_Red (role , sp_reduce ) 
end 

function Skill_QuanX_End ( ATKER , DEFER , sklv )
	local statetime = 5
	local statelv = 10
	AddState ( ATKER , DEFER , STATE_XY , statelv , statetime )
	local hpdmg =   200 
	Hp_Endure_Dmg ( DEFER, hpdmg )

end 

--Трупный яд
function SkillSp_SD ( sklv )	
	local sp_reduce = 20 
	return sp_reduce 
end

function SkillCooldown_SD( sklv )
	local Cooldown = 20000
	return Cooldown
end

function Skill_SD_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_SD ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_SD_End ( ATKER , DEFER , sklv ) 
	local statelv = 3
	local statetime =  60   
	local hpdmg =   300
	Hp_Endure_Dmg ( DEFER, hpdmg )
	AddState ( ATKER , DEFER , STATE_JSDD , statelv , statetime ) 
	Check_Ys_Rem ( ATKER , DEFER )		
end 

--Блокада киборга
function SkillArea_Line_JXJBFW ( sklv )	
	local lenth = 500
	local width = 200
	SetSkillRange ( 1 , lenth , width  )  
end

function SkillCooldown_JXJBFW( sklv )
	local Cooldown = 2000
	return Cooldown
end

function SkillSp_JXJBFW ( sklv )	
	local sp_reduce = 20+ sklv * 3   
	return sp_reduce 
end

function Skill_JXJBFW_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce  = SkillSp_JXJBFW ( sklv )  
	if sp - sp_reduce < 0 then 
		SkillUnable(role) 
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_JXJBFW_End ( ATKER , DEFER , sklv ) 

	local dmg = 150
	Hp_Endure_Dmg ( DEFER , dmg ) 
end 

--Закрученный крюк	
function SkillArea_Circle_JBXZSB ( sklv )	
	
	local side = 300  
	SetSkillRange ( 4 , side )   
end 

function SkillCooldown_JBXZSB( sklv )
	local Cooldown = 5000
	return Cooldown
end

function SkillPre_JBXZSB ( sklv )	
end 

function SkillSp_JBXZSB ( sklv )	
	local sp_reduce = 20 - math.floor ( sklv * 0.5 ) 
	return sp_reduce 
end 

function Skill_JBXZSB_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_JBXZSB ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_JBXZSB_End ( ATKER , DEFER , sklv ) 
	local hp = Hp( DEFER ) 

	dmg =  Atk_Dmg ( ATKER , DEFER ) 
	Hp_Endure_Dmg ( DEFER , dmg )
	Check_Ys_Rem ( ATKER , DEFER)	
end 


--Крабовая оплетка
function SkillSp_CRXSF ( sklv )	
	local sp_reduce = 50 + sklv * 2   
	return sp_reduce 
end 

function SkillCooldown_CRXSF( sklv ) 
	local Cooldown = 2000
	return Cooldown
end

function Skill_CRXSF_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_CRXSF ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_CRXSF_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime = 15 
	local StateLv = GetChaStateLv ( DEFER , STATE_TTISW )
	if StateLv ~= 3 then
		AddState ( ATKER , DEFER , STATE_CRXSF , statelv , statetime ) 
	end

	Check_Ys_Rem ( ATKER , DEFER )	
end 

function State_CRXSF_Add ( role , statelv ) 

end 

function State_CRXSF_Rem ( role , statelv ) 

end

--Проклятие келпи	
function SkillSp_SXZZZ ( sklv )	
	local sp_reduce = 50 + sklv * 2   
	return sp_reduce 
end 

function SkillCooldown_SXZZZ( sklv ) 
	local Cooldown = 2000
	return Cooldown
end

function Skill_SXZZZ_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_SXZZZ ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_SXZZZ_End ( ATKER , DEFER , sklv ) 
	local statelv = 10
	local statetime = 180
	local StateLv = GetChaStateLv ( DEFER , STATE_TTISW )
	if StateLv ~= 2 then
		AddState ( ATKER , DEFER , STATE_ZZZH , statelv , statetime )
	end
	Check_Ys_Rem ( ATKER , DEFER )	
end 


--Морозное дыхание
function SkillSp_XBLBD ( sklv )
	local sp_reduce = 50 + sklv * 2   
	return sp_reduce 
end 

function SkillCooldown_XBLBD( sklv ) 
	local Cooldown = 2000
	return Cooldown
end

function Skill_XBLBD_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_XBLBD ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_XBLBD_End ( ATKER , DEFER , sklv ) 
	local statelv = 5
	local statetime = 180 
	local StateLv = GetChaStateLv ( DEFER , STATE_TTISW )
	if StateLv ~= 1 then
		AddState ( ATKER , DEFER , STATE_BDJ , statelv , statetime )
	end
	Check_Ys_Rem ( ATKER , DEFER )	
end 

--Удар ледяного дракона
function SkillSp_BLGJ ( sklv )	
   local sp_reduce = 15   
	return sp_reduce 
end 

function SkillArea_Sector_BLGJ ( sklv )	
	local angle = 120  
	local radius = 800 
	SetSkillRange ( 2 , radius , angle  )  
end

function SkillCooldown_BLGJ( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_BLGJ_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_BLGJ ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_BLGJ_End ( ATKER , DEFER , sklv ) 
	
	local hpdmg = 1.5 * Atk_Dmg ( ATKER , DEFER ) 
	Hp_Endure_Dmg ( DEFER , hpdmg )
	
end 

--Танец Ледяного дракона
function SkillArea_Circle_BHSD ( sklv )	
	
	local side = 300
	SetSkillRange ( 4 , side )   
end

function SkillSp_BHSD ( sklv )	
	local sp_reduce = 20   
	return sp_reduce 
end 

function SkillCooldown_BHSD( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_BHSD_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_BHSD ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_BHSD_End ( ATKER , DEFER , sklv ) 
	local statelv = 10 
	local statetime = 15 
	AddState ( ATKER , DEFER , STATE_BDJ , statelv , statetime )
	local hpdmg = 500 
	Hp_Endure_Dmg ( DEFER , hpdmg )
	
end

-- Ужас черного дракона
function SkillSp_HLKJ ( sklv )	
	local sp_reduce = 200
	return sp_reduce 
end 

function SkillCooldown_HLKJ( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_HLKJ_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_HLKJ ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_HLKJ_End ( ATKER , DEFER , sklv )
	local statelv = sklv 
	local statetime = 40 
	AddState ( ATKER , DEFER , STATE_HLKJ , statelv , statetime ) 
	
end 

function State_HLKJ_Add ( role , statelv ) 
end

function State_HLKJ_Rem ( role , statelv ) 
end 

-- Дыхание черного дракона
function SkillSp_BlackDrgDeadHit ( sklv )
	local sp_reduce = 15   
	return sp_reduce 
end 

function SkillArea_Sector_BlackDrgDeadHit ( sklv )
	local angle = 320  
	local radius = 800
	SetSkillRange ( 2 , radius , angle  )  
end

function SkillCooldown_BlackDrgDeadHit( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_BlackDrgDeadHit_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_BlackDrgDeadHit ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_BlackDrgDeadHit_End ( ATKER , DEFER , sklv )
	local hpdmg = 1.8 * Atk_Dmg ( ATKER , DEFER ) 
	Hp_Endure_Dmg ( DEFER , hpdmg )
	
end 

--Рык Черного дракона	
function SkillArea_Circle_HLLM ( sklv )	
	local side = 500
	SetSkillRange ( 4 , side )   
end 

function SkillCooldown_HLLM( sklv )
	local Cooldown = 1000
	return Cooldown
end

function SkillPre_HLLM ( sklv )	
end 

function SkillSp_HLLM ( sklv )	
	local sp_reduce = 20 - math.floor ( sklv * 0.5 ) 
	return sp_reduce 
end 

function Skill_HLLM_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_HLLM ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_HLLM_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime = 120 
	AddState ( ATKER , DEFER , STATE_HLLM , statelv , statetime ) 
	
end 

function State_HLLM_Add ( role , statelv )
	local debaf = (-1) * ( 0.98 )
	local mnatksa  = math.floor ( (MnatkSa (role) + debaf ) * ATTR_RADIX ) 
	local mxatksa  = math.floor ( (MxatkSa (role) + debaf ) * ATTR_RADIX )
	SetCharaAttr( mnatksa  , role , ATTR_STATEC_MNATK )
	SetCharaAttr( mxatksa  , role , ATTR_STATEC_MXATK )
	ALLExAttrSet(role)
end

function State_HLLM_Rem ( role , statelv )
	local debaf = (-1) * ( 0.98 )
	local mnatksa  = math.floor ( (MnatkSa (role) - debaf ) * ATTR_RADIX ) 
	local mxatksa  = math.floor ( (MxatkSa (role) - debaf ) * ATTR_RADIX )
	SetCharaAttr( mnatksa  , role , ATTR_STATEC_MNATK )
	SetCharaAttr( mxatksa  , role , ATTR_STATEC_MXATK )
	ALLExAttrSet(role)
end

-- Полет черного дракона
function SkillArea_Circle_BlackDrgWing ( sklv )	
	local side = 3000
	SetSkillRange ( 4 , side )   
end 

function SkillCooldown_BlackDrgWing( sklv )
	local Cooldown = 1000
	return Cooldown
end

function SkillPre_BlackDrgWing ( sklv )	
end 

function SkillSp_BlackDrgWing ( sklv )	
	local sp_reduce = 20 - math.floor ( sklv * 0.5 ) 
	return sp_reduce 
end

function Skill_BlackDrgWing_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_BlackDrgWing ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_BlackDrgWing_End ( ATKER , DEFER , sklv ) 
	local Sta_role = Sta ( DEFER ) 
	hpdmg =  math.max ( 100 , ( 150 - Sta_role ) ) * 25
	Hp_Endure_Dmg ( DEFER, hpdmg )
end 


-- Воскресить (скилл БД)
function SkillSp_BlackHeal ( sklv )			
	local sp_reduce = 30 + sklv * 4    
	return sp_reduce 
end

function SkillCooldown_BlackHeal( sklv ) 
	local Cooldown = 6000 - sklv * 300 
	return Cooldown 
end

function Skill_BlackHeal_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce  = SkillSp_BlackHeal ( sklv )  
	if sp - sp_reduce < 0 then 
		SkillUnable(role) 
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_BlackHeal_End ( ATKER , DEFER , sklv )
	local hpdmg = -60000 
	Hp_Endure_Dmg ( DEFER , hpdmg ) 
end 

--
function State_MarchElf_Add ( role , statelv )
	local def_dif = 50
	local srecsb_dif = 20  
	local defsb = DefSb( role ) + def_dif
 	local srecsb = SrecSb(role) + srecsb_dif
	SetCharaAttr( srecsb , role , ATTR_STATEV_SREC ) 
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF )
	ALLExAttrSet(role)
end

function State_MarchElf_Rem ( role , statelv )
	local def_dif = 50
	local srecsb_dif = 20  
	local defsb = DefSb( role ) - def_dif
 	local srecsb = SrecSb(role) - srecsb_dif
	SetCharaAttr( srecsb , role , ATTR_STATEV_SREC ) 
	SetCharaAttr( defsb , role , ATTR_STATEV_DEF )
	ALLExAttrSet(role)
end

-- Рык Черного дракона
function SkillArea_Circle_BlackHx( sklv )
	local side = 5000 
	SetSkillRange ( 4 , side  )  
end 

function SkillCooldown_BlackHx( sklv )
	local Cooldown = 10000
	return Cooldown
end

function Skill_BlackHx_End ( ATKER , DEFER , sklv )
	local hp = Hp( DEFER )
	local statelv = sklv 
	local statetime = 10
	AddState( ATKER , DEFER , STATE_BlackHX, statelv , statetime ) 
	dmg = 0.8 * math.random ( Mnatk( ATKER ) , Mxatk ( ATKER ) ) 
	Hp_Endure_Dmg ( DEFER , dmg) 
end

function State_BlackHx_Add ( role , statelv )
	local mspdsa_dif = 1
	local mspdsa = (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX 
	local aspda_dif =0.3
	local aspdsa =(AspdSa(role)-aspda_dif) * ATTR_RADIX 
	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD )
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )
	ALLExAttrSet(role)  
end

function State_BlackHx_Rem ( role , statelv )
	local mspdsa_dif = 1
	local mspdsa = (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX
	local aspda_dif =0.3
	local aspdsa =(AspdSa(role) + aspda_dif) * ATTR_RADIX
	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD )
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )
	ALLExAttrSet(role)  
end 

-- Черный дракон Молния
function SkillCooldown_BlackLj( sklv )
	local Cooldown = 10000
	return Cooldown
end

function Skill_BlackLj_End( ATKER , DEFER , sklv )
	local statelv = sklv 
	local statetime = 3 
	local Sta_role = Sta ( DEFER ) 
	local statelv = 4
	hpdmg =2300 +  math.max ( 50 , ( 150 - Sta_role ) )  * 15
	Hp_Endure_Dmg ( DEFER, hpdmg )
	AddState ( ATKER , DEFER , STATE_HLKJ , statelv , statetime ) 
end 

function State_BlackLj_Add ( role , statelv ) 
end

function State_BlackLj_Rem ( role , statelv ) 
end 

-- Ускользающий удар черного дракона
function SkillCooldown_BlackHyz( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_BlackHyz_End ( ATKER , DEFER , sklv )
	atk = 3 * math.random ( Mnatk( ATKER ) , Mxatk ( ATKER ) ) 
	defer_def = Def ( DEFER ) 
	defer_resist = Resist ( DEFER ) 
	dmg = Phy_Dmg ( atk, defer_def , defer_resist )
	dmg1 = math.max (20,dmg)
	Hp_Endure_Dmg ( DEFER , dmg1 )
	Check_Ys_Rem ( ATKER , DEFER )
end 

-- Огненный шар черного дракона
function SkillCooldown_BlackYq( sklv ) 
	local Cooldown = 10000 
	return Cooldown
end

function Skill_BlackYq_End ( ATKER , DEFER , sklv )
	local Sta_role = Sta ( DEFER ) 
	hpdmg = 3500 +  math.max ( 50 , ( 150 - Sta_role ) )  * 25
	Hp_Endure_Dmg ( DEFER, hpdmg )
end 

-- Призыв черного дракона
function SkillCooldown_BlackZh( sklv )
	local Cooldown = 1200000
	return Cooldown
end

function SkillArea_Circle_BlackZh( sklv )
	local side = 1000 
	SetSkillRange ( 4 , side  )  
end

function Skill_BlackZh_End( ATKER , DEFER , sklv )
	local x, y = GetChaPos(ATKER)
	local x1 = x
	local x2 = x +700
	local x3 = x -700
	local x4 = x -900
	local x5 = x +900
	local x6 = x +400

	local y1 = y +700
	local y2 = y -700
	local y3 = y -700
	local y4 = y -900
	local y5 = y +900
	local y6 = y +400
	local new1 = CreateCha(791, x1, y1, 145, 50)
	local new2 = CreateCha(793, x2, y2, 145, 50)
	local new3 = CreateCha(794, x3, y3, 145, 50)

	local new4 = CreateCha(791, x4, y4, 145, 50)
	local new5 = CreateCha(793, x5, y5, 145, 50)
	local new5 = CreateCha(794, x6, y6, 145, 50)
	SetChaLifeTime(new1, 900000)
	SetChaLifeTime(new2, 900000)
	SetChaLifeTime(new3, 900000)
	--SetChaLifeTime(new4, 900000)
	--SetChaLifeTime(new5, 900000)
	--SetChaLifeTime(new6, 900000)
end

--Не используется
function State_JLDS_Add ( role , statelv )
	local hpdmg = 30 * statelv   
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role)  
end 

function State_JLDS_Rem ( role , statelv ) 
 
end 

--Не используется
function State_CJBBT_Add ( role , statelv )
	local str = GetChaAttr( role , ATTR_STR )
	SetCharaAttr(str ,role , ATTR_STATEV_STR)
	ALLExAttrSet(role)
end

function State_CJBBT_Rem ( role , statelv )
	SetCharaAttr(0 ,role , ATTR_STATEV_STR)
	ALLExAttrSet(role)
end

--Не используется
function State_JRQKL_Add ( role , statelv )
	local con = GetChaAttr( role , ATTR_CON ) 
	SetCharaAttr( con , role , ATTR_STATEV_CON )
	ALLExAttrSet(role)
end

function State_JRQKL_Rem ( role , statelv )
	SetCharaAttr(0 ,role , ATTR_STATEV_CON)
	ALLExAttrSet(role)
end

--Ускользающий удар черного дракона
function SkillCooldown_wlrsd( sklv ) 
	local Cooldown = 2000 
	return Cooldown
end

function Skill_wlrsd_End( ATKER , DEFER , sklv )
	local hp = Hp( DEFER ) 
	local statelv = sklv 
	local statetime = 6
	AddState( ATKER , DEFER , STATE_WLRSD, statelv , statetime ) 
	dmg = 2 * math.random ( Mnatk( ATKER ) , Mxatk ( ATKER ) ) 
	Hp_Endure_Dmg ( DEFER , dmg) 
end 

function State_wlrsd_Add ( role , statelv ) 
	local hpdmg = 60   
		Hp_Endure_Dmg ( role , hpdmg ) 
		ALLExAttrSet(role)  
end 

function State_wlrsd_Rem ( role , statelv ) 
end

--Ускорение Мертвой души
function SkillCooldown_wljs( sklv )
	local Cooldown = 2000 
	return Cooldown
end

function Skill_wljs_End ( ATKER , DEFER , sklv )
	local statelv = sklv 
	local statetime = 6
	local statelv = 4
	AddState( ATKER , DEFER , STATE_WLJS, statelv , statetime ) 
 end

function  State_wljs_Add ( role , statelv )
	local mspdsa_dif = 1
	local mspdsa = (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )  
	 
	ALLExAttrSet(role)  
end 

function State_wljs_Rem  ( role , statelv )
	local mspdsa_dif = 1
	local mspdsa = (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )  
	 
	ALLExAttrSet(role)  
end 

--Атака Мушкета
function SkillCooldown_hqgj( sklv )
	local Cooldown = 3000 
	return Cooldown
end

function Skill_hqgj_End ( ATKER , DEFER , sklv ) 
	local	 atk = 1.5 * math.random ( Mnatk( ATKER ) , Mxatk ( ATKER ) ) 
	local	defer_def = Def ( DEFER ) 
	local	defer_resist = Resist ( DEFER ) 
	dmg = Phy_Dmg ( atk, defer_def , defer_resist )
	dmg1 = math.max (20,dmg)
	Hp_Endure_Dmg ( DEFER , dmg1 )  
end 

--Ракета Мертвой души
function SkillCooldown_wljy( sklv )
	local Cooldown = 2000 
	return Cooldown
end

function Skill_wljy_End ( ATKER , DEFER , sklv )
	local statelv = sklv 
	local statetime = 3 
	local statelv = 4
	local Sta_role = Sta ( DEFER ) 
	hpdmg =400 +  math.max ( 50 , ( 150 - Sta_role ) )  * 8
	Hp_Endure_Dmg ( DEFER, hpdmg )
	AddState ( ATKER , DEFER , STATE_WLJY , statelv , statetime ) 
 end
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
function State_wljy_Add ( role , statelv )

 end 

function State_wljy_Rem ( role , statelv )
 end 

--Лазерный лук
function SkillCooldown_jgs( sklv )
	local Cooldown = 5000 
	return Cooldown
end

function Skill_jgs_End ( ATKER , DEFER , sklv )
	local 	hp = GetChaAttr ( DEFER , ATTR_HP ) 
	local 	dmg = math.floor ( 500 +hp *0.05) 
	if dmg > 2000 then
		dmg = 2000
	end
	hp = hp - dmg 
	SetCharaAttr ( hp , DEFER , ATTR_HP ) 
end 

--Отравленный дротик мертвых душ
function SkillCooldown_wldb ( sklv )
	local Cooldown = 2000
	return Cooldown
end

function Skill_wldb_End ( ATKER , DEFER , sklv )
	local statelv = sklv 
	local statetime =  10  
	local	defer_def = Def ( DEFER )
	Hp_Endure_Dmg ( DEFER, hpdmg )
	AddState ( ATKER , DEFER , STATE_WLDB , statelv , statetime ) 
	Check_Ys_Rem ( ATKER , DEFER )		
end 

function State_wldb_Add ( role , statelv ) 
	local hpdmg = 160 
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role)  
end 

function State_wldb_Rem ( role , statelv ) 
end 


-- Удаленный взрыв (кмд)
function SkillCooldown_ycbp ( ATKER , DEFER , sklv )
	local Cooldown = 2000 
	return Cooldown
end

function Skill_ycbp_End ( ATKER , DEFER , sklv )
	local Sta_role = Sta ( DEFER ) 
	hpdmg = 2500 +  math.max ( 50 , ( 150 - Sta_role ) )  * 25
	Hp_Endure_Dmg ( DEFER, hpdmg )
end 

--Атака Облака
function SkillArea_Circle_ywgj ( sklv )
	local side = 300    
	SetSkillRange ( 3 , side  )  
end

function SkillCooldown_ywgj( sklv )
	local Cooldown = 2000
	return Cooldown
end

function SkillArea_State_ywgj ( sklv )	
	local statetime = 20    
	local statelv = sklv 
	SetRangeState ( STATE_MW , statelv  , statetime ) 
end 

function Skill_ywgj_End ( ATKER , DEFER , sklv ) 
end 

function State_ywgj_Add ( role , statelv ) 
	local  agisb =  AgiSb( role ) 
	local hitsb_dif = 10 + math.floor (math.max(5, agisb/20) )
	local hitsb = HitSb(role) - hitsb_dif 
	SetCharaAttr ( hitsb , role , ATTR_STATEV_HIT ) 
	ALLExAttrSet(role)  
end 

function State_ywgj_Rem ( role , statelv ) 
	local  agisb =  AgiSb( role ) 
	local hitsb_dif = 10 + math.floor (math.max(5, agisb/20) )
	local hitsb = HitSb(role) + hitsb_dif 
	SetCharaAttr ( hitsb , role , ATTR_STATEV_HIT ) 
	ALLExAttrSet(role)  
end 

function State_ywgj_Tran ( statelv ) 
	return 1     
end

--Отягощенный скелет
function SkillCooldown_klcs ( ATKER , DEFER , sklv )
	local Cooldown = 2000 
	return Cooldown
end 

function Skill_klcs_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime =6
	AddState ( ATKER , DEFER , STATE_KLCS , statelv , statetime ) 
end 

function State_klcs_Add ( role , statelv ) 
	local dmg = math.random (60,100) 
	Endure_Dmg ( role , dmg ) 
end 

function State_klcs_Rem ( role , statelv ) 
end

--Мифическое перемещение
function SkillCooldown_lyyd ( ATKER , DEFER , sklv )
	local Cooldown = 2000 
	return Cooldown
end 

function Skill_lyyd_End ( ATKER , DEFER , sklv ) 
	local x, y = GetChaPos(DEFER)
	local map_name = GetChaMapName (DEFER)
	local x = math.floor (x/100)
	local y = math.floor (y/100)
	GoTo(ATKER, x,y, map_name)
 end

--Skeletar Shielding
function SkillCooldown_klhd ( ATKER , DEFER , sklv )
	local Cooldown = 5000 
	return Cooldown
end 

function  Skill_klhd_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime =10
	AddState ( ATKER , DEFER , STATE_KLHD , statelv , statetime ) 
end 

function State_klhd_Add ( role , statelv ) 
	local defsa_dif = 0.8 
	local defsa = math.floor ( ( DefSa(role) + defsa_dif ) * ATTR_RADIX ) 
	SetCharaAttr( defsa , role , ATTR_STATEC_DEF ) 
	ALLExAttrSet(role)  
end 

function State_klhd_Rem ( role , statelv ) 
	local defsa_dif = 0.8 
	local defsa = math.floor ( ( DefSa(role) - defsa_dif ) * ATTR_RADIX ) 
	SetCharaAttr( defsa , role , ATTR_STATEC_DEF ) 
	ALLExAttrSet(role)  
end 

-- Злая атака
function SkillCooldown_xegj ( ATKER , DEFER , sklv )
	local Cooldown = 2000 
	return Cooldown
end 

function Skill_xegj_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local Sta_role = Sta ( DEFER ) 
	hpdmg =400 +  math.max ( 50 , ( 150 - Sta_role ) )  * 5
	Hp_Endure_Dmg ( DEFER, hpdmg )
 end


--Мертвая душа
function SkillCooldown_wllk ( ATKER , DEFER , sklv )
	local Cooldown = 2000 
	return Cooldown
end 

function Skill_wllk_End ( ATKER , DEFER , sklv )
	 atk =  math.random ( Mnatk( ATKER ) , Mxatk ( ATKER ) ) 
	defer_def = Def ( DEFER ) 
	defer_resist = Resist ( DEFER ) 
	dmg = Phy_Dmg ( atk, defer_def , defer_resist )
	dmg1 = math.max (20,dmg)
	Hp_Endure_Dmg ( DEFER , dmg1 ) 
end 

--Бомбометание
function SkillCooldown_zdtz ( ATKER , DEFER , sklv )
	local Cooldown = 4000 
	return Cooldown
end 

function Skill_zdtz_End ( ATKER , DEFER , sklv )
	local Sta_role = Sta ( DEFER ) 
	hpdmg =500 +  math.max ( 50 , ( 100 - Sta_role ) )  * 8
		Hp_Endure_Dmg ( DEFER, hpdmg )
end 

--Стенания мертвой души
function SkillCooldown_wlnh ( ATKER , DEFER , sklv )
	local Cooldown = 2000 
	return Cooldown
end 

function  Skill_wlnh_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime =10
	AddState ( ATKER , DEFER , STATE_WLNH , statelv , statetime ) 
end 

function State_wlnh_Add ( role , statelv )  
	local atksb_dif = 800	
	local mnatksb = MnatkSb(role) + atksb_dif  
	local mxatksb = MxatkSb(role ) + atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)
end

function State_wlnh_Rem ( role , statelv ) 
		local atksb_dif = 800	
	local mnatksb = MnatkSb(role) - atksb_dif  
	local mxatksb = MxatkSb(role ) - atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)
end

--Насмешка мертвых душ
function SkillCooldown_wlcx ( ATKER , DEFER , sklv )
	local Cooldown = 2000 
	return Cooldown
end 

 function SkillArea_Circle_wlcx( sklv ) 
	local side = 2000 
	SetSkillRange ( 4 , side  )  
end 

function Skill_wlcx_End ( ATKER , DEFER , sklv )
	local statelv = sklv 
	local statetime =10
	AddState ( ATKER , DEFER , STATE_WLCX , statelv , statetime ) 
end 

function State_wlcx_Add ( role , statelv ) 
	local hitsb_dif = 30
	local hitsb = HitSb(role) - hitsb_dif  
	local flee_dif = 10
	local fleesb = FleeSb( role ) -  flee_dif
	SetCharaAttr( hitsb , role , ATTR_STATEV_HIT ) 
	SetCharaAttr( fleesb , role , ATTR_STATEV_FLEE )  
	
	ALLExAttrSet(role)  
end 

function State_wlcx_Rem ( role , statelv ) 
	local hitsb_dif = 30
	local hitsb = HitSb(role) + hitsb_dif  
	local flee_dif = 10
	local fleesb = FleeSb( role ) +  flee_dif
	SetCharaAttr( hitsb , role , ATTR_STATEV_HIT ) 
	SetCharaAttr( fleesb , role , ATTR_STATEV_FLEE )  
	
	ALLExAttrSet(role)  
end 

-- Проклятая кровь (Барби)
function SkillCooldown_zzzx ( ATKER , DEFER , sklv )
	local Cooldown = 2000 
	return Cooldown
end 

function SkillArea_Circle_zzzx( sklv ) 
	local side = 2000 
	SetSkillRange ( 4 , side  )  
end

function  Skill_zzzx_End ( ATKER , DEFER , sklv )
	local statelv = sklv 
	local statetime =10
	AddState ( ATKER , DEFER , STATE_ZZZX , statelv , statetime ) 
end 

function State_wlcx_Add  ( role , sklv ) 
	local hpdmg = 1000
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role)  
end 

function State_wlcx_Rem  ( role , sklv ) 
	ALLExAttrSet(role)  
end 

-- Восстанавливающий лунный свет (Барби)
function SkillCooldown_yghf ( ATKER , DEFER , sklv )
	local Cooldown = 2000 
	return Cooldown
end 

function Skill_yghf_End ( ATKER , DEFER , sklv )
	local hp = Hp( ATKER ) 
	local mxhp = Mxhp (ATKER)
	local hp_dif = mxhp - hp
	local hp_rec = hp_dif * 0.4
	local hp_now = hp + hp_rec
	if hp_now < 100000 then
		local	hp_rec = 100000
	end
	SetCharaAttr( hp_now , ATKER , ATTR_HP )  
end

function SkillCooldown_yghf ( ATKER , DEFER , sklv )
	local Cooldown = 2000 
	return Cooldown
end 

function Skill_wlsj_End ( ATKER , DEFER , sklv )
	 atk = 800 +  math.random ( Mnatk( ATKER ) , Mxatk ( ATKER ) ) 
	defer_def = Def ( DEFER ) 
	defer_resist = Resist ( DEFER ) 
	dmg = Phy_Dmg ( atk, defer_def , defer_resist )
	dmg1 = math.max (20,dmg)
	Hp_Endure_Dmg ( DEFER , dmg1 )  
end 

--Вихрь Мертвой души
function SkillCooldown_wlxw ( ATKER , DEFER , sklv )
	local Cooldown = 2000 
	return Cooldown
end 

function SkillArea_Circle_wlxw ( sklv )	
	local side = 1000  
	SetSkillRange ( 3 , side  )  
end

function SkillArea_State_wlxw ( sklv )	
	local statetime = 10    
	local statelv = sklv 
	SetRangeState ( STATE_XW , statelv  , statetime ) 

end 

function Skill_wlxw_End ( ATKER , DEFER , sklv ) 
	
end 

function State_wlxw_Add ( role , statelv ) 
	local mspdsa_dif = 0.5 
	local aspdsa_dif = 0.3
	local mspdsa = ( MspdSa ( cha_role ) - mspdsa_dif )  * ATTR_RADIX
	local aspdsa = ( AspdSa ( cha_role ) - aspdsa_dif )  * ATTR_RADIX
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD ) 
	ALLExAttrSet( role )  
end 

function State_wlxw_Rem ( role , statelv ) 
	local mspdsa_dif = 0.5 
	local aspdsa_dif = 0.3 
	local mspdsa = ( MspdSa ( cha_role ) + mspdsa_dif )  * ATTR_RADIX
	local aspdsa = ( AspdSa ( cha_role ) + aspdsa_dif )  * ATTR_RADIX
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD ) 
	ALLExAttrSet( role )  
end 

function State_wlxw_Tran ( statelv ) 
	return 1     
end 

--Мертвая душа Грозовой завесы
function SkillArea_Circle_wllm ( sklv )	
	local side = 500  
	SetSkillRange ( 3 , side  )  
end

function SkillCooldown_wllm( sklv )
	local Cooldown = 2000
	return Cooldown
end

function SkillArea_State_wllm ( sklv )	
	local statetime = 15      
	local statelv = 7 
	SetRangeState ( STATE_LM , statelv  , statetime ) 
end 

function Skill_wllm_End ( ATKER , DEFER , sklv ) 
end 

function State_Lm_Add ( role , statelv ) 
	local Cha_Boat = 0
	local dmg = 1
	local Can_Pk_Garner2 = Is_NormalMonster (role)
	Cha_Boat = GetCtrlBoat ( role )
	
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local sta_atker = Sta(ATKER)
	local Can_Pk_Garner2 = Is_NormalMonster (DEFER)
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_ATKER == "darkswamp" or map_name_DEFER == "darkswamp"  or map_name_ATKER == "puzzleworld"  or map_name_ATKER =="puzzleworld2" or map_name_ATKER == "abandonedcity" or map_name_ATKER =="abandonedcity2" or map_name_ATKER =="abandonedcity3" or map_name_DEFER == "abandonedcity" or map_name_DEFER =="abandonedcity2" or map_name_DEFER =="abandonedcity3" or map_name_DEFER == "puzzleworld"  or map_name_DEFER =="puzzleworld2"  or map_name_ATKER == "hell" or map_name_ATKER =="hell2" or map_name_ATKER =="hell3" or map_name_ATKER =="hell4" or map_name_ATKER =="hell5" or map_name_DEFER == "hell" or map_name_DEFER =="hell2" or map_name_DEFER =="hell3" or map_name_DEFER =="hell4" or map_name_DEFER =="hell5" or map_name_ATKER == "garner" or  map_name_DEFER == "garner"  or map_name_ATKER == "magicsea" or  map_name_DEFER == "magicsea"  or map_name_ATKER == "darkblue" or  map_name_DEFER == "darkblue" or map_name_ATKER == "lonetower" or  map_name_DEFER == "lonetower" or map_name_ATKER == "shalan2" or  map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or  map_name_DEFER == "leiting2" or map_name_ATKER == "binglang2" or  map_name_DEFER == "binglang2" or map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "teampk" or map_name_DEFER == "teampk" or map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
			if Can_Pk_Garner2 == 0 then
				dmg = dmg*1.1
			end
			
		end
	if Cha_Boat == nil then
		dmg = 160 + statelv * 20 * 1.2
	else
		dmg = 160 + statelv * 20 * 2
	end
	if Can_Pk_Garner2 == 1 then 
		dmg = dmg* 1.5
	end
	Hp_Endure_Dmg ( role , dmg ) 
end 

function State_Lm_Rem ( role , statelv ) 
end 

function State_Lm_Tran ( statelv ) 
	return 1     
end

-- Призыв мертвой души (кмд, сакруа)
function SkillCooldown_wlzh ( sklv )
	local Cooldown = 500000
	return Cooldown
end

function SkillArea_Circle_wlzh( sklv )
	local side = 1000 
	SetSkillRange ( 4 , side  )  
end

function Skill_wlzh_End( ATKER , DEFER , sklv )
	local x, y = GetChaPos(ATKER)
		local x1 = x + 200
		local x2 = x + 200
		local x3 = x - 200
		local x4 = x - 200
		local y1 = y + 200
		local y2 = y - 200
		local y3 = y + 200
		local y4 = y - 200
		local new1 = CreateCha(799, x1, y1, 145, 50)
		local new2 = CreateCha(799, x2, y2, 145, 50)
		local new3 = CreateCha(799, x3, y3, 145, 50)
		local new4 = CreateCha(799, x4, y4, 145, 50)
		SetChaLifeTime(new1, 900000)
		SetChaLifeTime(new2, 900000)
		SetChaLifeTime(new3, 900000)
		SetChaLifeTime(new4, 900000)
end

-- Физический дротик (Барби)
function SkillCooldown_wlfd( sklv )
	local Cooldown = 1000 
	return Cooldown
end

function Skill_wlfd_End ( ATKER , DEFER , sklv ) 
	local	 atk = math.random ( Mnatk( ATKER ) , Mxatk ( ATKER ) ) 
	local	defer_def = Def ( DEFER ) 
	local	defer_resist = Resist ( DEFER ) 
	dmg = Phy_Dmg ( atk, defer_def , defer_resist )
	dmg1 = 15 * math.max (20,dmg)
	Hp_Endure_Dmg ( DEFER , dmg1 )  
end 

-- Духовный дротик (Барби)
function SkillCooldown_jsfd ( ATKER , DEFER , sklv )
	local Cooldown = 1000 
	return Cooldown
end 

function Skill_jsfd_End ( ATKER , DEFER , sklv )
	local Sta_role = Sta ( DEFER ) 
	hpdmg = 1000 +  math.max ( 50 , ( 100 - Sta_role ) )  * 8
	Hp_Endure_Dmg ( DEFER, hpdmg )
end 

--Тело феи
function SkillCooldown_JLFT( sklv )
	local Cooldown = 10000
	return Cooldown
end

function SkillSp_JLFT ( sklv )
	local sp_reduce = 20 
	return sp_reduce 
end

function CheckState_JLFT ( role, sklv )
	local i = 0
	local state_num = 8
	local state = {}
	state[1] = GetChaStateLv ( role , STATE_JLFT1 )
	state[2] = GetChaStateLv ( role , STATE_JLFT2 )
	state[3] = GetChaStateLv ( role , STATE_JLFT3 )
	state[4] = GetChaStateLv ( role , STATE_JLFT4 )
	state[5] = GetChaStateLv ( role , STATE_JLFT5 )
	state[6] = GetChaStateLv ( role , STATE_JLFT6 )
	state[7] = GetChaStateLv ( role , STATE_JLFT7 )
	state[8] = GetChaStateLv ( role , STATE_JLFT8 )
	for i = 1 , state_num , 1 do
		if state[i] == sklv then
			SystemNotice ( role , 'Невозможно применить Владение феей, умение уже используется!' )
			return 0
		end
	end
	return 1
end

function Skill_JLFT_BEGIN( role , sklv )
	if CheckState_JLFT ( role, sklv ) == 0 then
		SkillUnable ( role )
		return
	end
	local item_elf = GetChaItem(role , 2, 1) -- Слот, где должен находиться питомец
	local item_elf_type = GetItemType ( item_elf ) -- Тип питомца
	local item_elf_maxhp = GetItemAttr(item_elf,ITEMATTR_MAXURE) -- Максимальная стамина
	local item_elf_hp = GetItemAttr(item_elf,ITEMATTR_URE) -- Текущая стамина
	local role_mxhp = GetChaAttr(role, ATTR_MXHP)
	local Num_JL = GetItemForgeParam ( item_elf , 1 )

	if item_elf_type ~= 59 then
		SkillUnable(role) 
		SystemNotice ( role , "В слоте для феи нет феи" ) 
	return 
	end

	local str = GetItemAttr( item_elf ,ITEMATTR_VAL_STR ) 	-- Сила
	local con = GetItemAttr( item_elf ,ITEMATTR_VAL_CON ) 	-- Телосложение
	local agi = GetItemAttr( item_elf ,ITEMATTR_VAL_AGI ) 	-- Ловкость
	local dex = GetItemAttr( item_elf ,ITEMATTR_VAL_DEX ) 	-- Дух
	local sta = GetItemAttr( item_elf ,ITEMATTR_VAL_STA ) 	-- Точность
	local lv_JL = str + con + agi + dex + sta-- итого уровень феи

	if item_elf_hp < 5000 then			-- если ЖЗ феи < 5000 то
		SkillUnable ( role ) 			-- послать игрока нахер и выводить системку:
		SystemNotice ( role , "Чтобы использовать этот навык, у феи должно быть 100+ стамины!" ) -- и вывести системку
	return 
	end
	item_elf_hp = item_elf_hp - (2 * lv_JL / sklv) * 50 -- item_elf_hp = 4500 т.е. 95 хп < 100 => пройдёт
	SetItemAttr ( item_elf , ITEMATTR_URE , item_elf_hp ) -- убиваем фее ХП за использование пасехи
end

function Skill_JLFT_End( ATKER , DEFER , sklv )
	local statelv = sklv 			-- узнаём уровень пасехи
	local statetime = 170 + sklv * 5 -- время использования - 190 в секундах.
	local item_elf = GetChaItem(ATKER , 2, 1) 		-- проверяем одета фея или нет
	local item_elf_type = GetItemType ( item_elf ) 	-- тип феи
	local Item_ID = GetItemID ( item_elf ) 			-- ИД феи

--Феи 2 поколения
	if Item_ID == 0231 or Item_ID == 0232 or Item_ID == 0233 or Item_ID == 0234 or Item_ID == 0235 or Item_ID == 0236 or Item_ID == 0237 or Item_ID == 0681 then
		AddState( ATKER , ATKER , STATE_JLFT1, statelv , statetime )
--Феи 3 поколения
	elseif Item_ID == 0129
	then
		AddState( ATKER , ATKER , STATE_JLFT2, statelv , statetime )
--Феи 4 поколения
	elseif Item_ID == 0130
	then
		AddState( ATKER , ATKER , STATE_JLFT3, statelv , statetime )
	elseif Item_ID == 0131
	then
		AddState( ATKER , ATKER , STATE_JLFT4, statelv , statetime )
	elseif Item_ID == 0132
	then
		AddState( ATKER , ATKER , STATE_JLFT5, statelv , statetime )
	elseif Item_ID == 0133
	then
		AddState( ATKER , ATKER , STATE_JLFT6, statelv , statetime )
--Феи 5 поколения
	elseif Item_ID == 0134
	then
		AddState( ATKER , ATKER , STATE_JLFT7, statelv , statetime ) 
	end
end

function State_JLFT_Add ( role , sklv )

	local Item_bg = GetChaItem ( role , 2 , 1 ) 
	local Get_Item_Type = GetItemType ( Item_bg ) 

	if Get_Item_Type == 59 then 
		local Item_ID = GetItemID ( Item_bg ) 
		local str = GetItemAttr( Item_bg ,ITEMATTR_VAL_STR )
		local con = GetItemAttr( Item_bg ,ITEMATTR_VAL_CON )
		local agi = GetItemAttr( Item_bg ,ITEMATTR_VAL_AGI )
		local dex = GetItemAttr( Item_bg ,ITEMATTR_VAL_DEX )
		local sta = GetItemAttr( Item_bg ,ITEMATTR_VAL_STA )
		local URE = GetItemAttr( Item_bg ,ITEMATTR_URE )
		local MAXURE = GetItemAttr( Item_bg ,ITEMATTR_MAXURE )

		local lv_JL = str + con + agi + dex + sta
		local Num_JL = GetItemForgeParam ( Item_bg , 1 )

-- No idea Wtf these are for
		local Part1 = 1 --GetNum_Part1 ( Num_JL )
		local Part2 = GetNum_Part2 ( Num_JL ) 
		local Part3 = GetNum_Part3 ( Num_JL )
		local Part4 = GetNum_Part4 ( Num_JL )
		local Part5 = GetNum_Part5 ( Num_JL )
		local Part6 = GetNum_Part6 ( Num_JL )
		local Part7 = GetNum_Part7 ( Num_JL)
 
		if Part1 == 1 then 
			local star = 0
--Феи 2 поколения
			if Item_ID == 0231
			or Item_ID == 0232
			or Item_ID == 0233
			or Item_ID == 0234
			or Item_ID == 0235
			or Item_ID == 0236
			or Item_ID == 0237
			or Item_ID == 0681
			then
local star = 1 + lv_JL/1000 
SetCharaAttr(star ,role , ATTR_STATEV_MF)
SetCharaAttr(star ,role , ATTR_STATEV_COL)
if str~=nil and str~=0 then
	local star = str
	SetCharaAttr(star ,role , ATTR_STATEV_STR)
end
if con~=nil and con~=0 then
	local star = con
	SetCharaAttr(star ,role , ATTR_STATEV_CON)
end
if sta~=nil and sta~=0 then
	local star = sta
	SetCharaAttr(star ,role , ATTR_STATEV_STA)
end
if dex~=nil and dex~=0 then
	local star = dex
	SetCharaAttr(star ,role , ATTR_STATEV_DEX)
end
if agi~=nil and agi~=0 then
	local star = agi
	SetCharaAttr(star ,role , ATTR_STATEV_AGI)
end
			end
--Феи 3 поколения
			if Item_ID == 0129
			then
local star = 1 + lv_JL/750 
SetCharaAttr(star ,role , ATTR_STATEV_MF)
SetCharaAttr(star ,role , ATTR_STATEV_COL)
if str~=nil and str~=0 then
	local star = str * 1.2
	SetCharaAttr(star ,role , ATTR_STATEV_STR)
end
if con~=nil and con~=0 then
	local star = con * 1.2
	SetCharaAttr(star ,role , ATTR_STATEV_CON)
end
if sta~=nil and sta~=0 then
	local star = sta * 1.2
	SetCharaAttr(star ,role , ATTR_STATEV_STA)
end
if dex~=nil and dex~=0 then
	local star = dex * 1.2
	SetCharaAttr(star ,role , ATTR_STATEV_DEX)
end
if agi~=nil and agi~=0 then
	local star = agi * 1.2
	SetCharaAttr(star ,role , ATTR_STATEV_AGI)
end
			end
--Феи 4 поколения
			if Item_ID == 0130
			or Item_ID == 0131
			or Item_ID == 0132
			or Item_ID == 0133
			then
local star =1 + lv_JL/500
SetCharaAttr(star ,role , ATTR_STATEV_MF)
SetCharaAttr(star ,role , ATTR_STATEV_COL)
if str~=nil and str~=0 then
	local star = str * 1.6
	SetCharaAttr(star ,role , ATTR_STATEV_STR)
end
if con~=nil and con~=0 then
	local star = con * 1.6
	SetCharaAttr(star ,role , ATTR_STATEV_CON)
end
if sta~=nil and sta~=0 then
	local star = sta * 1.6
	SetCharaAttr(star ,role , ATTR_STATEV_STA)
end
if dex~=nil and dex~=0 then
	local star = dex * 1.6
	SetCharaAttr(star ,role , ATTR_STATEV_DEX)
end
if agi~=nil and agi~=0 then
	local star = agi * 1.6
	SetCharaAttr(star ,role , ATTR_STATEV_AGI)
end
			end
--Феи 5 поколения
			if Item_ID == 0134
			then
local star = 1 + lv_JL/400
local pdef = GetChaAttr( role, ATTR_STATEV_PDEF ) + 5
SetCharaAttr(star ,role , ATTR_STATEV_MF)
SetCharaAttr(star ,role , ATTR_STATEV_COL)
SetCharaAttr(pdef ,role , ATTR_STATEV_PDEF)
if str~=nil and str~=0 then
	local star = str * 1.6
	SetCharaAttr(star ,role , ATTR_STATEV_STR)
end
if con~=nil and con~=0 then
	local star = con * 1.6
	SetCharaAttr(star ,role , ATTR_STATEV_CON)
end
if sta~=nil and sta~=0 then
	local star = sta * 1.6
	SetCharaAttr(star ,role , ATTR_STATEV_STA)
end
if dex~=nil and dex~=0 then
	local star = dex * 1.6
	SetCharaAttr(star ,role , ATTR_STATEV_DEX)
end
if agi~=nil and agi~=0 then
	local star = agi * 1.6
	SetCharaAttr(star ,role , ATTR_STATEV_AGI)
end
			end
		end
	end
	ALLExAttrSet(role)
end

function State_JLFT_Rem ( role , sklv )
	SetCharaAttr(0 ,role , ATTR_STATEV_STR)
	SetCharaAttr(0 ,role , ATTR_STATEV_CON)
	SetCharaAttr(0 ,role , ATTR_STATEV_STA)
	SetCharaAttr(0 ,role , ATTR_STATEV_DEX)
	SetCharaAttr(0 ,role , ATTR_STATEV_AGI)
	SetCharaAttr(100 ,role , ATTR_STATEV_MF)
	SetCharaAttr(100 ,role , ATTR_STATEV_COL)
	ALLExAttrSet(role)
end


--Самоуничтожение
function SkillCooldown_jlzb ( sklv )
	local Cooldown = 180000
	return Cooldown
end

function SkillArea_Circle_jlzb( sklv )
	local side = 1500 
	SetSkillRange ( 4 , side  )  
end

function Skill_jlzb_Begin( role , sklv )	
	local item_elf = GetChaItem(role , 2, 1)			
	local item_elf_type = GetItemType ( item_elf )			
	local elf_str =  GetItemAttr( item_elf ,ITEMATTR_VAL_STR )		
	local elf_con =  GetItemAttr( item_elf ,ITEMATTR_VAL_CON )		
	local elf_agi =  GetItemAttr( item_elf ,ITEMATTR_VAL_AGI )		
	local elf_dex =  GetItemAttr( item_elf ,ITEMATTR_VAL_DEX )		
	local elf_sta =  GetItemAttr( item_elf ,ITEMATTR_VAL_STA )		
	local elf_lv = elf_str + elf_con + elf_agi + elf_dex + elf_sta		
	local item_elf_hp = GetItemAttr(item_elf,ITEMATTR_URE)		
	local Num_JL = GetItemForgeParam ( item_elf , 1 )
	local Part1 = GetNum_Part1 ( Num_JL )	
	if item_elf_type ~= 59 or Part1~=1 then
		SkillUnable(role) 
		SystemNotice ( role , "Current skill is only available if the new generation of pet is equipped!" ) 
		return 
	end

	if item_elf_hp<50 then
		SkillUnable(role) 
		SystemNotice ( role , "Fairy's HP must be more than 0 to use this skill" ) 
		return 
	end
	item_elf_hp = item_elf_hp - (9 *elf_lv/sklv)*50
	SetItemAttr(item_elf,ITEMATTR_URE,item_elf_hp)	
end 

function Skill_jlzb_End( ATKER , DEFER , sklv )
	local dmg_fin = 1
	local item_elf = GetChaItem(ATKER , 2, 1)
	local item_elf_type = GetItemType ( item_elf )
	local ptnRoleType = GetChaAttr(DEFER, ATTR_CHATYPE)
	if ptnRoleType == 1 or ptnRoleType ==5 or ptnRoleType == 17 then   --
		if item_elf_type == 59 then
			local elf_str =  GetItemAttr( item_elf ,ITEMATTR_VAL_STR )		
			local elf_con =  GetItemAttr( item_elf ,ITEMATTR_VAL_CON )		
			local elf_agi =  GetItemAttr( item_elf ,ITEMATTR_VAL_AGI  )		
			local elf_dex =  GetItemAttr( item_elf ,ITEMATTR_VAL_DEX )		
			local elf_sta =  GetItemAttr( item_elf ,ITEMATTR_VAL_STA )		
			local elf_lv = elf_str + elf_con + elf_agi + elf_dex + elf_sta		
			local elf_ure=GetItemAttr(item_elf,ITEMATTR_URE )*-1			 
			local elf_maxure=GetItemAttr(item_elf,ITEMATTR_MAXURE )			 
			
			local str = GetChaAttr( DEFER , ATTR_STR )
			local con = GetChaAttr( DEFER , ATTR_CON ) 
			local sta = GetChaAttr( DEFER , ATTR_STA )
			local agi = GetChaAttr( DEFER , ATTR_AGI)
			local dex = GetChaAttr( DEFER , ATTR_DEX )
			local Defer_Sum =  str+con+sta+agi+dex

			 dmg_fin = elf_lv * 200 - (Defer_Sum * Defer_Sum * Defer_Sum/10000)		--ЙЛє¦јЖЛг
			 if dmg_fin < 0 then
dmg_fin = 0
			 end

			if is_friend(ATKER,DEFER) ~= 1 then
Hp_Endure_Dmg ( DEFER , dmg_fin )
			end
			
			local statetime = 20      
			local statelv = 10 	
			local atker_hp = GetChaAttr( ATKER , ATTR_HP ) 
	
			if dmg_fin>=atker_hp then
AddState ( ATKER , ATKER , STATE_XY , statelv , statetime )
			else
			
			local star_hp_differ=atker_hp-dmg_fin
			SetCharaAttr(star_hp_differ,ATKER, ATTR_HP) 
			end
		end
	end
end

--Не используется
function State_5MBS_Add(role , sklv)
	local role_mxhp = GetChaAttr(role, ATTR_MXHP)
	Hp_Endure_Dmg ( role , role_mxhp*0.95 )
	SystemNotice (role,"The Almighty is angry with your actions! Prepare to be punished!")
end

function State_5MBS_Rem(role , sklv)

end

--Не использутеся
function JLTX_usu(role)
	local item_elf = GetChaItem(role , 2, 1)
	local item_elf_type = GetItemType (item_elf )	
	if item_elf_type ~= 59 then
		SkillUnable(role)
		SystemNotice ( role , "You need to equip a pet Fairy" )  
		return 0
	end
	local item_elf_hp = GetItemAttr(item_elf,ITEMATTR_URE)		
	local item_elf_endure = item_elf_hp - 100			
	if item_elf_hp<50 then
		SkillUnable(role) 
		SystemNotice ( role , "Fairy's HP must be more than 0 to use this skill" ) 
		return 
	end
	local item_count = CheckBagItem ( role , 855 )		
	if item_count <= 0 then
		SkillUnable(role)
		SystemNotice ( role , "You do not have the required Fairy Coin to use the skill" ) 
		return 0
	end 
	local a = DelBagItem ( role , 855 , 1 ) 
	SetItemAttr(item_elf,ITEMATTR_URE,item_elf_endure)
	return 1
end

--Навык - Вонючка
function SkillCooldown_Jltx1( sklv )
	local Cooldown = 10000
	return Cooldown
end

function Skill_Jltx1_Begin ( role , sklv ) 
	local ret= JLTX_usu(role)
end 

function Skill_Jltx1_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime =  60    
	AddState ( ATKER , DEFER , STATE_JLTX1 , statelv , statetime ) 
end 

function State_jltx1_Add(role , sklv)

end

function State_jltx1_Rem(role , sklv)

end

--Навык - Белье
function SkillCooldown_Jltx2( sklv )
	local Cooldown = 10000
	return Cooldown
end

function Skill_Jltx2_Begin ( role , sklv ) 
	local ret= JLTX_usu(role)
end 

function Skill_Jltx2_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime =  60    
	AddState ( ATKER , DEFER , STATE_JLTX2 , statelv , statetime ) 
end 

function State_jltx2_Add(role , sklv)

end

function State_jltx2_Rem(role , sklv)

end

--Навык - Лифчик
function SkillCooldown_Jltx3( sklv )
	local Cooldown = 10000
	return Cooldown
end

function Skill_Jltx3_Begin ( role , sklv ) 
	local ret= JLTX_usu(role)
end 

function Skill_Jltx3_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime =  60   
	AddState ( ATKER , DEFER , STATE_JLTX3 , statelv , statetime ) 
end 

function State_jltx3_Add(role , sklv)

end

function State_jltx3_Rem(role , sklv)

end

--Навык - Денежный дождь
function SkillCooldown_Jltx4( sklv )
	local Cooldown = 10000
	return Cooldown
end

function Skill_Jltx4_Begin ( role , sklv ) 
	local ret= JLTX_usu(role)
end 

function Skill_Jltx4_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime =  60    
	AddState ( ATKER , DEFER , STATE_JLTX4 , statelv , statetime ) 
end 

function State_jltx4_Add(role , sklv)

end

function State_jltx4_Rem(role , sklv)

end

--Навык - Дурак
function SkillCooldown_Jltx5( sklv )
	local Cooldown = 10000
	return Cooldown
end

function Skill_Jltx5_Begin ( role , sklv ) 
	local ret= JLTX_usu(role)
end 

function Skill_Jltx5_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime =  60    
	AddState ( ATKER , DEFER , STATE_JLTX5 , statelv , statetime ) 
end 

function State_jltx5_Add(role , sklv)

end

function State_jltx5_Rem(role , sklv)

end

--Навык - Сноб
function SkillCooldown_Jltx6( sklv )
	local Cooldown = 10000
	return Cooldown
end

function Skill_Jltx6_Begin ( role , sklv ) 
	local ret= JLTX_usu(role)
end 

function Skill_Jltx6_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime =  60    
	AddState ( ATKER , DEFER , STATE_JLTX6 , statelv , statetime ) 
end

function State_jltx6_Add(role , sklv)

end

function State_jltx6_Rem(role , sklv)

end

--Навык - Трюкач
function SkillCooldown_Jltx7( sklv )
	local Cooldown = 10000
	return Cooldown
end

function Skill_Jltx7_Begin ( role , sklv ) 
	local ret= JLTX_usu(role)
end 

function Skill_Jltx7_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime =  60    
	AddState ( ATKER , DEFER , STATE_JLTX7 , statelv , statetime ) 
end 

function State_jltx7_Add(role , sklv)

end

function State_jltx7_Rem(role , sklv)

end

--Навык - Тупица
function SkillCooldown_Jltx8( sklv )
	local Cooldown = 10000
	return Cooldown
end

function Skill_Jltx8_Begin ( role , sklv ) 
	local ret= JLTX_usu(role)
end 

function Skill_Jltx8_End ( ATKER , DEFER , sklv ) 
	local statelv = sklv 
	local statetime =  60    
	AddState ( ATKER , DEFER , STATE_JLTX8 , statelv , statetime ) 
end

function State_jltx8_Add(role , sklv)

end

function State_jltx8_Rem(role , sklv)

end

--Не используется
function State_CZZX_Add ( role , statelv )
	local str = GetChaAttr( role , ATTR_STR )
	local con = GetChaAttr( role , ATTR_CON ) 
	local sta = GetChaAttr( role , ATTR_STA )
	local agi = GetChaAttr( role , ATTR_AGI)
	local dex = GetChaAttr( role , ATTR_DEX )
	str=math.floor(str*0.3)
	con=math.floor(con*0.3)
	sta=math.floor(sta*0.3)
	agi=math.floor(agi*0.3)
	dex=math.floor(dex*0.3)
	SetCharaAttr(str ,role , ATTR_STATEV_STR)
	SetCharaAttr(con ,role , ATTR_STATEV_CON)
	SetCharaAttr(sta ,role , ATTR_STATEV_STA)
	SetCharaAttr(agi ,role , ATTR_STATEV_AGI)
	SetCharaAttr(dex ,role , ATTR_STATEV_DEX)
	ALLExAttrSet(role)
end

function State_CZZX_Rem ( role , statelv )
	SetCharaAttr(0 ,role , ATTR_STATEV_STR)
	SetCharaAttr(0 ,role , ATTR_STATEV_CON)
	SetCharaAttr(0 ,role , ATTR_STATEV_STA)
	SetCharaAttr(0 ,role , ATTR_STATEV_AGI)
	SetCharaAttr(0 ,role , ATTR_STATEV_DEX)
	ALLExAttrSet(role)
end

--Не используется
function State_KALA_Add ( role , statelv )
	local sta = GetChaAttr( role , ATTR_STA )
	SetCharaAttr(sta ,role , ATTR_STATEV_STA)
	ALLExAttrSet(role)
end

function State_KALA_Rem ( role , statelv )
	SetCharaAttr(0 ,role , ATTR_STATEV_STA)
	ALLExAttrSet(role)
end

--Не используется
function State_XUEYU_Add ( role , statelv )
	local star=statelv*statelv*100
	local eleven=1
	if statelv==2 or statelv==3 then
		eleven=2
	elseif statelv==4 or statelv==5 then
		eleven=3
	elseif statelv==6  then
		eleven=4
	elseif statelv==7  then
		eleven=5
	elseif statelv==8 or statelv==9 then
		eleven=6
	elseif statelv==10 then
		eleven=8
	end
	SetCharaAttr(eleven ,role , ATTR_STATEV_PDEF)
	SetCharaAttr(star ,role , ATTR_STATEV_MXHP)
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	mxhp=mxhp+star
	--SystemNotice (role, "mxhp=="..mxhp)
	SetCharaAttr(mxhp, role, ATTR_HP) 
	ALLExAttrSet(role)
end

function State_XUEYU_Rem ( role , statelv )
	SetCharaAttr(0 ,role , ATTR_STATEV_PDEF)
	SetCharaAttr(0 ,role , ATTR_STATEV_MXHP)
	ALLExAttrSet(role)
end

--Не используется
function State_MANTOU_Add ( role , statelv )
	local atksb_dif = 50+(statelv-1)*100	
	local mnatksb = MnatkSb(role) + atksb_dif  
	local mxatksb = MxatkSb(role ) + atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)
end

function State_MANTOU_Rem ( role , statelv )
	local atksb_dif = 50+(statelv-1)*100	
	local mnatksb = MnatkSb(role) - atksb_dif  
	local mxatksb = MxatkSb(role ) - atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)
end

--Не используется
function State_NVER_Add ( role , statelv )
	local sta = statelv*5
	SetCharaAttr(sta ,role , ATTR_STATEV_STA)
	ALLExAttrSet(role)
end

function State_NVER_Rem ( role , statelv )
	SetCharaAttr(0 ,role , ATTR_STATEV_STA)
	ALLExAttrSet(role)
end

--Ботинок заграждения
function Skill_xzlw_End( ATKER , DEFER , sklv )
	local dmg =math.random(15,35)
	Hp_Endure_Dmg ( DEFER , dmg )  
end 

--Кулинария
function Skill_Cooking_End( ATKER , DEFER , sklv )
end

--Производство
function Skill_Making_End( ATKER , DEFER , sklv )
end

--
function Skill_Founding_End( ATKER , DEFER , sklv )
end

--Ремесло
function Skill_Dismissing_End( ATKER , DEFER , sklv )
end

--Иллюзия ускользающего удара
function SkillCooldown_HyzHX( sklv )
	local Cooldown = 1000
	return Cooldown
end

function Skill_HyzHX_End ( ATKER , DEFER , sklv ) 
	if ValidCha(ATKER) == 0 then 
		LG ( "luascript_err" , "function Skill_Hyz_End : ATKER as null" ) 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		LG ( "luascript_err" , "function Skill_Hyz_End : DEFER as null" ) 
		return 
	end 
	local aspd = Aspd ( ATKER )
	local  sklv = 10
	local dmg = ( ( 1.5 + 0.1 * sklv ) ) * (math.min(3,( math.max ( 1, math.floor( aspd / 70  ) )  ))) * Atk_Dmg ( ATKER , DEFER ) *0.8
	local CheckItem_Death = CheckItem_Death ( ATKER )
	
	if CheckItem_Death == 1 then
		dmg = math.floor(dmg*1.1)
	end
	Hp_Endure_Dmg ( DEFER , dmg )  

	Check_Ys_Rem ( ATKER , DEFER )		
end 

--Иллюзия кораллового луча
function SkillArea_Line_BkcjHX ( sklv )	
	local sklv = 8
	local lenth = 500 + sklv * 30  
	local width = 100 + sklv * 10 
	SetSkillRange ( 1 , lenth , width  )  
end

function SkillCooldown_BkcjHX( sklv )
	local Cooldown = 2000
	return Cooldown
end

function Skill_BkcjHX_End ( ATKER , DEFER , sklv ) 
	local sklv = 8
	local sta_atk= Sta ( ATKER ) 
	local sta_def = Sta ( DEFER ) 
	local AddStateLv = 0
	AddStateLv = GetChaStateLv ( ATKER , STATE_MLCH ) 

	local dmg = math.floor( 200 + sklv*30 +sta_atk*6 ) 
	local dmg_fin = Cuihua_Mofa ( dmg , AddStateLv ) 
	local dmg_ElfSkill = ElfSkill_MagicAtk ( dmg , ATKER ) 
	dmg_fin = dmg_fin + dmg_ElfSkill
	Hp_Endure_Dmg ( DEFER , dmg_fin ) 
end 

--Иллюзия выстрела в голову
function SkillCooldown_BtHX( sklv )
	local Cooldown = 5000
	return Cooldown
end

function Skill_BtHX_End ( ATKER , DEFER , sklv ) 
	local sklv = 10
	local hp = GetChaAttr ( DEFER , ATTR_HP ) 
	local dmg = math.floor ( 320 + 30 * sklv +hp * ( 0.05 +0.005 * sklv) ) 
	if dmg > 2500 then
		dmg = 2500
	end
	local Check_Heilong = CheckItem_Heilong ( ATKER )
	if Check_Heilong == 1 then
			local Percentage = Percentage_Random ( 0.1 )
			if Percentage == 1 then
dmg = dmg*10 
SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Урон увеличен!")
			end
	end
	local Check_Heilong_app = CheckItem_Heilong_app ( ATKER )
	if Check_Heilong_app == 1 then
			local Percentage_app = Percentage_Random ( 0.1 )
			if Percentage_app == 1 then
dmg = dmg*10 
SystemNotice ( ATKER , "Получена сила набора Черного Дракона. Урон увеличен!")
			end
	end
	hp = hp - dmg 
	SetCharaAttr ( hp , DEFER , ATTR_HP ) 
end 

--Иллюзия Призрачной стрелы
function SkillCooldown_XlczHX( sklv ) 
	local Cooldown = 2000
	return Cooldown
end

function Skill_XlczHX_End ( ATKER , DEFER , sklv ) 
	if ValidCha(ATKER) == 0 then 
		LG ( "luascript_err" , "function Skill_Xlcz_End : ATKER as null" ) 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		LG ( "luascript_err" , "function Skill_Xlcz_End : DEFER as null" ) 
		return 
	end 
--	local atkdmg = Atk_Dmg ( ATKER , DEFER )
	local lv_atker = Lv ( TurnToCha ( ATKER ) ) 
	local lv_defer = Lv ( TurnToCha ( DEFER ) ) 
	local sta_atker = Sta(ATKER) 
	local sklv = 10
	local sta_defer = Sta(DEFER) 
	local lv_dif = math.max ( ( - 1 ) * 10 , math.min ( 10 , lv_atker - lv_defer ) ) 
	local AddStateLv = 0
	AddStateLv = GetChaStateLv ( ATKER , STATE_MLCH )

	hpdmg = math.floor (( 10 + sta_atker * 2 ) * ( 1 + sklv * 0.7 ) * ( 1 +  lv_dif * 0.025 ))
	local dmg_fin = Cuihua_Mofa ( hpdmg ,AddStateLv )
	local dmg_ElfSkill = ElfSkill_MagicAtk ( hpdmg , ATKER )
	dmg_fin = dmg_fin + dmg_ElfSkill
	Hp_Endure_Dmg ( DEFER, dmg_fin )  
--	LG( "xlcz", "Spiritual Bolt Skill Level=" , sklv ,"Attacker sta=", sta ,"Normal attack damage=", atkdmg , "Skill Damage= " , dmg , "\n" ) 
end 

-- Граната 1 ур.
function SkillCooldown_Shoulei1( sklv )
	local Cooldown = 1000
	return Cooldown
end

function Skill_Shoulei1_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local item_count = CheckBagItem ( role , 1135 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 1135 , 1 ) 
end 

function Skill_Shoulei1_End ( ATKER , DEFER , sklv ) 
	local NocLock =	KitbagLock( ATKER, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( ATKER , "Ваш инвентарь заблокирован")
		return 0
	end
	local  sklv = 1
	local 	hp = GetChaAttr ( DEFER , ATTR_HP ) 
	dmg = 4*math.floor ( 320 + 30 * sklv +hp * ( 0.05 +0.008 * sklv) )-1200
	if dmg > 1000 then
		dmg = 500
	end
	Hp_Endure_Dmg ( DEFER , dmg )
end

-- Фотобомба 1 ур.
function SkillArea_Circle_ShanGD1( sklv )
	local side = 600 
	SetSkillRange ( 4 , side  )  
end 

function SkillCooldown_ShanGD1( sklv )
	local Cooldown = 1200
	return Cooldown
end

function Skill_ShanGD1_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local item_count = CheckBagItem ( role , 1136 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 1136 , 1 ) 
end 

function Skill_ShanGD1_End ( ATKER , DEFER , sklv ) 
	local NocLock =	KitbagLock( ATKER, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( ATKER , "Ваш инвентарь заблокирован")
		return 0
	end
	local  sklv = 1
	local statelv = sklv 
	local statetime = sklv + 0.6
	local hp_defer = Mxhp ( DEFER ) 
	if hp_defer >= 1000000 then 
		SystemNotice ( ATKER , "Flash Bomb loses effect" ) 
		return
	end 
	if GetChaTypeID( ATKER ) == 979 then
		statetime = 8
	end

	if GetChaAIType( DEFER ) >= 21 then
		if BOSSXYSJ[GetChaTypeID( DEFER )] == 0 then
			SystemNotice ("Неужели ты думаешь, что меня можно победить единственным навыком? Попробуй что-нибудь другое")
			return
		else
			BOSSXYSJ[GetChaTypeID( DEFER )] = BOSSXYSJ[GetChaTypeID( DEFER )] -1
		end
	end
SystemNotice(DEFER, "На вас действует эффект <Оглушение> "..statelv.."ур. на "..statetime.. " секунд" )

	AddState( ATKER , DEFER , STATE_ShanGD, statelv , statetime ) 
end 

function State_ShanGD_Add ( role , statelv )
end 

function State_ShanGD_Rem ( role , statelv )
end 

-- Излучатель 1 ур.
function SkillArea_Circle_FuShe1( sklv )
	local  sklv = 1
	local side = 800 + sklv*100
	SetSkillRange ( 4 , side  )  
end 

function SkillCooldown_FuShe1( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_FuShe1_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local item_count = CheckBagItem ( role , 1137 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 1137 , 1 ) 
end 

function Skill_FuShe1_End( ATKER , DEFER , sklv ) 
	local NocLock =	KitbagLock( ATKER, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( ATKER , "Ваш инвентарь заблокирован")
		return 0
	end
	local  sklv = 1
	local hp = Hp( DEFER ) 
	local statelv = sklv 
	local statetime = 15+sklv*2
	AddState( ATKER , DEFER , STATE_ZD, statelv , statetime ) 
	local 	hp = GetChaAttr ( DEFER , ATTR_HP ) 
	local 	dmg = 2*math.floor ( 320 + 30 * sklv +hp * ( 0.05 +0.008 * sklv) )-600
	if dmg > 500 then
		dmg = 500
	end
	Hp_Endure_Dmg ( DEFER , dmg) 
end 

function State_FuShe_Add ( role , statelv ) 
	local hpdmg = 20
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role)  
end 

function State_FuShe_Rem ( role , statelv ) 
end 

-- Детектор 1 ур.
function SkillCooldown_YouL1( sklv )
	local Cooldown = 1500
	return Cooldown
end

function SkillArea_Square_YouL1 ( sklv )
	local  sklv = 1
	local side = 500 + sklv * 20 
	SetSkillRange ( 3 , side ) 	
end 

function SkillArea_State_YouL1 ( sklv )	
	local  sklv = 1
	local statetime = 40 + sklv *9   
	local statelv = sklv 
	SetRangeState ( STATE_SYZY , statelv  , statetime )
end 

function Skill_YouL1_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		SkillUnable(role)   
		return 0
	end
	local item_count = CheckBagItem ( role , 1138 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 1138 , 1 ) 
end 

function Skill_YouL1_End ( ATKER , DEFER , sklv ) 
end 

function State_Syzy_Add ( role , statelv ) 
end 

function State_Syzy_Rem ( role , statelv ) 
end 

function State_Syzy_Tran ( statelv ) 
	return 1     
end 

-- Ускоритель кораблей 1 ур.
function SkillCooldown_JiaSuQi( sklv )
	local Cooldown = 1500 
	return Cooldown
end

function Skill_JiaSuQi1_Begin ( role , sklv ) 
end 

function Skill_JiaSuQi1_End ( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(1139,ATKER) == 0 then return 0 end
	local sklv = 1
	local statelv = sklv
	local statetime = 25+sklv*20
	AddState( ATKER , DEFER , STATE_WLJS, statelv , statetime ) 
end

function  State_wljs_Add ( role , statelv )
	local mspdsa_dif = 1
	local mspdsa = (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

function State_wljs_Rem  ( role , statelv )
	local mspdsa_dif = 1
	local mspdsa = (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )  
	ALLExAttrSet(role)  
end 

-- Распылитель 1 ур.
function SkillCooldown_PengSheQi1( sklv )
	local Cooldown = 1500 
	return Cooldown
end

function Skill_PengSheQi1_Begin ( role , sklv ) 
end 

function Skill_PengSheQi1_End ( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(1140,ATKER) == 0 then return 0 end
	local  sklv = 1
	local statetime = 3+sklv*2
	local statelv = sklv
	AddState( ATKER , DEFER , STATE_PSQ, statelv , statetime ) 
end

function  State_PengSheQi_Add ( role , statelv )
	local mspdsa_dif = 3
	local mspdsa = (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )
	ALLExAttrSet(role)  
end 

function State_PengSheQi_Rem  ( role , statelv )
	local mspdsa_dif = 3
	local mspdsa = (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )
	ALLExAttrSet(role)  
end 

-- Пробойник 1 ур.
function SkillCooldown_PoJiaDan( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_PoJiaDan1_Begin ( role , sklv ) 
end 

function Skill_PoJiaDan1_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(1141,ATKER) == 0 then return 0 end
	local statelv = sklv 
	local statetime = 10 + sklv  
	dmg = math.random ( 400 , 500 )*( 1 + sklv * 0.5 )
	Hp_Endure_Dmg ( DEFER , dmg) 
	AddState ( ATKER , DEFER , STATE_PJ , statelv , statetime ) 
	Check_Ys_Rem ( ATKER , DEFER )
end 

function State_Pj_Add ( role , statelv ) 
	local def_dif = 30
	local def = DefSb(role) - def_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )	
	ALLExAttrSet(role)
end 

function State_Pj_Rem ( role , statelv )
	local def_dif = 30
	local def = DefSb(role) + def_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )
	ALLExAttrSet(role)
end 

-- Корабельный таран 1 ур.
function SkillCooldown_PoRenDan1( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_PoRenDan1_Begin ( role , sklv ) 
end 

function Skill_PoRenDan1_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(1142,ATKER) == 0 then return 0 end
	local  sklv = 1
	local statelv = sklv 
	local statetime = 10 + sklv  
	dmg = math.random ( 400 , 500 )*( 1 + sklv * 0.5 )
	Hp_Endure_Dmg ( DEFER , dmg) 
	AddState ( ATKER , DEFER , STATE_PRD , statelv , statetime ) 
	Check_Ys_Rem ( ATKER , DEFER )

end 

function State_PoRenDan_Add( role , sklv ) 
	local statelv = sklv  
	local atksb_dif = 50*sklv
	local mnatksb = MnatkSb(role) - atksb_dif  
	local mxatksb = MxatkSb(role ) - atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)  
end 

function State_PoRenDan_Rem( role , sklv ) 
	local statelv = sklv 
	local atksb_dif = 50*sklv
	local mnatksb = MnatkSb(role) + atksb_dif  
	local mxatksb = MxatkSb(role ) + atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)  
end 

-- Корабельный огнемет 1 ур.
function SkillCooldown_RanShaoDan1( sklv ) 
	local Cooldown = 1500 
	return Cooldown
end

function Skill_RanShaoDan1_Begin ( role , sklv ) 
end 

function Skill_RanShaoDan1_End( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(1143,ATKER) == 0 then return 0 end
	local  sklv = 1
	local statelv = sklv 
	local statetime = 4 + sklv*2
	AddState( ATKER , DEFER , STATE_CZRSD, statelv , statetime ) 
	dmg =  math.random ( 100 , 200 )*(1+sklv*0.5)
	Hp_Endure_Dmg ( DEFER , dmg) 
end 

function State_RanShaoDan_Add ( role , statelv ) 
	local hpdmg = 150  
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role)  
end 

function State_RanShaoDan_Rem ( role , statelv ) 
end

-- Граната 2 ур.
function SkillCooldown_Shoulei2( sklv )
	local Cooldown = 1200
	return Cooldown
end

function Skill_Shoulei2_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local item_count = CheckBagItem ( role , 2719 ) --КЦАЧ
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2719 , 1 ) 
end 

function Skill_Shoulei2_End ( ATKER , DEFER , sklv ) 
	local NocLock =	KitbagLock( ATKER, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( ATKER , "Ваш инвентарь заблокирован")
		return 0
	end
	local  sklv = 2
	local 	hp = GetChaAttr ( DEFER , ATTR_HP ) 
	dmg = 4*math.floor ( 320 + 30 * sklv +hp * ( 0.05 +0.008 * sklv) )-1200
	if dmg > 2000 then
		dmg = 1000
	end
	Hp_Endure_Dmg ( DEFER , dmg )
end

-- Фотобомба 2 ур.
function SkillArea_Circle_ShanGD2( sklv )
	local side = 620 
	SetSkillRange ( 4 , side  )  
end 

function SkillCooldown_ShanGD2( sklv )
	local Cooldown = 1400
	return Cooldown
end

function Skill_ShanGD2_Begin ( role , sklv )
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local item_count = CheckBagItem ( role , 2720 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2720 , 1 ) 
end 

function Skill_ShanGD2_End ( ATKER , DEFER , sklv ) 
	local NocLock =	KitbagLock( ATKER, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( ATKER , "Ваш инвентарь заблокирован")
		return 0
	end
	local  sklv = 2
	local statelv = sklv 
	local statetime = sklv +0.3
	local hp_defer = Mxhp ( DEFER ) 
	if hp_defer >= 1000000 then 
		SystemNotice ( ATKER , "Flash Bomb loses effect" ) 
		return
	end

	if GetChaTypeID( ATKER ) == 979 then
		statetime = 8
	end

	if GetChaAIType( DEFER ) >= 21 then
		if BOSSXYSJ[GetChaTypeID( DEFER )] == 0 then
			SystemNotice ("Неужели ты думаешь, что меня можно победить единственным навыком? Попробуй что-нибудь другое")
			return
		else
			BOSSXYSJ[GetChaTypeID( DEFER )] = BOSSXYSJ[GetChaTypeID( DEFER )] -1
		end
	end
SystemNotice(DEFER, "На вас действует эффект <Оглушение> "..statelv.."ур. на "..statetime.. " секунд" )

	AddState( ATKER , DEFER , STATE_ShanGD, statelv , statetime )
end 

function State_ShanGD_Add ( role , statelv )
end 

function State_ShanGD_Rem ( role , statelv )
end 

-- Излучатель 2 ур
function SkillArea_Circle_FuShe2( sklv )
	local  sklv = 2
	local side = 700 + sklv*100
	SetSkillRange ( 4 , side  )  
end 

function SkillCooldown_FuShe2( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_FuShe2_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local item_count = CheckBagItem ( role , 2721 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2721 , 1 ) 
end 

function Skill_FuShe2_End( ATKER , DEFER , sklv ) 
	local NocLock =	KitbagLock( ATKER, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( ATKER , "Ваш инвентарь заблокирован")
		return 0
	end
	local  sklv = 2
	local hp = Hp( DEFER ) 
	local statelv = sklv 
	local statetime = 15+sklv*2
	AddState( ATKER , DEFER , STATE_ZD, statelv , statetime ) 
	local 	hp = GetChaAttr ( DEFER , ATTR_HP ) 
	local 	dmg = 2*math.floor ( 320 + 30 * sklv +hp * ( 0.05 +0.008 * sklv) )-600
	if dmg > 1000 then
		dmg = 1000
	end
	Hp_Endure_Dmg ( DEFER , dmg) 
end 

-- Детектор 2 ур.
function SkillCooldown_YouL2( sklv )
	local Cooldown = 1500
	return Cooldown
end

function SkillArea_Square_YouL2 ( sklv )
	local  sklv = 2
	local side = 600 + sklv * 30 
	SetSkillRange ( 3 , side ) 	
end 

function SkillArea_State_YouL2 ( sklv )	
	local  sklv = 2
	local statetime = 40 + sklv *9   
	local statelv = sklv 
	SetRangeState ( STATE_SYZY , statelv  , statetime )
end 

function Skill_YouL2_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		SkillUnable(role)   
		return 0
	end
	local item_count = CheckBagItem ( role , 2722 ) --УДБйМЅІвЖч2
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2722 , 1 ) 
end 

function Skill_YouL2_End ( ATKER , DEFER , sklv ) 
end 

function State_Syzy_Add ( role , statelv ) 
end 

function State_Syzy_Rem ( role , statelv ) 
end 

function State_Syzy_Tran ( statelv ) 
	return 1     
end 

-- Ускоритель кораблей 2 ур
function SkillCooldown_JiaSuQi2( sklv )
	local Cooldown = 1500 
	return Cooldown
end

function Skill_JiaSuQi2_Begin ( role , sklv ) 
end 

function Skill_JiaSuQi2_End ( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(2723,ATKER) == 0 then return 0 end
	local  sklv = 2
	local statelv = sklv
	local statetime = 30+sklv*20
	AddState( ATKER , DEFER , STATE_WLJS, statelv , statetime ) 
 end

function  State_wljs_Add ( role , statelv )
	local mspdsa_dif = 1
	local mspdsa = (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )  
	ALLExAttrSet(role)  
end 

function State_wljs_Rem  ( role , statelv )
	local mspdsa_dif = 1
	local mspdsa = (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )  
	ALLExAttrSet(role)  
end 

-- Распылитель 2 ур.
function SkillCooldown_PengSheQi2( sklv )
	local Cooldown = 1500 
	return Cooldown
end

function Skill_PengSheQi2_Begin ( role , sklv ) 
end 

function Skill_PengSheQi2_End ( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(2724,ATKER) == 0 then return 0 end
	local  sklv = 2
	local statetime = 3+sklv*2
	local statelv = sklv
	AddState( ATKER , DEFER , STATE_PSQ, statelv , statetime ) 
end

function  State_PengSheQi_Add ( role , statelv )
	local mspdsa_dif = 3
	local mspdsa = (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )  
	ALLExAttrSet(role)  
end 

function State_PengSheQi_Rem  ( role , statelv )
	local mspdsa_dif = 3
	local mspdsa = (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )  
	ALLExAttrSet(role)  
end 

-- Пробойник 2 ур.
function SkillCooldown_PoJiaDan2( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_PoJiaDan2_Begin ( role , sklv ) 
end 

function Skill_PoJiaDan2_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2725,ATKER) == 0 then return 0 end
	local  sklv = 2
	local statelv = sklv 
	local statetime = 10 + sklv  
	dmg = math.random ( 400 , 500 )*( 1 + sklv * 0.5 )
	Hp_Endure_Dmg ( DEFER , dmg) 
	AddState ( ATKER , DEFER , STATE_PJ , statelv , statetime ) 
	Check_Ys_Rem ( ATKER , DEFER )
end 

function State_Pj_Add ( role , statelv ) 
	local def_dif = 30
	local def = DefSb(role) - def_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )	
	ALLExAttrSet(role)

end 

function State_Pj_Rem ( role , statelv ) 
	local def_dif = 30
	local def = DefSb(role) + def_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )
	ALLExAttrSet(role)
end 

-- Корабельный таран 2 ур.
function SkillCooldown_PoRenDan2( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_PoRenDan2_Begin ( role , sklv ) 
end 

function Skill_PoRenDan2_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2726,ATKER) == 0 then return 0 end
	local  sklv = 2
	local statelv = sklv 
	local statetime = 10 + sklv  
	dmg = math.random ( 400 , 500 )*( 1 + sklv * 0.5 )
	Hp_Endure_Dmg ( DEFER , dmg) 
	AddState ( ATKER , DEFER , STATE_PRD , statelv , statetime ) 
	Check_Ys_Rem ( ATKER , DEFER )
end 

function State_PoRenDan_Add( role , sklv ) 
	local statelv = sklv  
	local atksb_dif = 50*sklv
	local mnatksb = MnatkSb(role) - atksb_dif  
	local mxatksb = MxatkSb(role ) - atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)  
end 

function State_PoRenDan_Rem( role , sklv ) 
	local statelv = sklv 
	local atksb_dif = 50*sklv
	local mnatksb = MnatkSb(role) + atksb_dif  
	local mxatksb = MxatkSb(role ) + atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)  
end 

-- Корабельный огнемет 2 ур.
function SkillCooldown_RanShaoDan1( sklv ) 
	local Cooldown = 1500 
	return Cooldown
end

function Skill_RanShaoDan2_Begin ( role , sklv ) 
end 

function Skill_RanShaoDan2_End( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(2727,ATKER) == 0 then return 0 end
	local  sklv = 2
	local statelv = sklv 
	local statetime = 4 + sklv*2
	AddState( ATKER , DEFER , STATE_CZRSD, statelv , statetime ) 
	dmg =  math.random ( 100 , 200 )*(1+sklv*0.5)
	Hp_Endure_Dmg ( DEFER , dmg) 
end 

function State_RanShaoDan_Add ( role , statelv ) 
	local hpdmg = 150  
		Hp_Endure_Dmg ( role , hpdmg ) 
		ALLExAttrSet(role)  
end 

function State_RanShaoDan_Rem ( role , statelv ) 
end

-- Граната 3 ур.
function SkillCooldown_Shoulei3( sklv )
	local Cooldown = 1400
	return Cooldown
end

function Skill_Shoulei3_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local item_count = CheckBagItem ( role , 2743 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2743 , 1 ) 
end 

function Skill_Shoulei3_End ( ATKER , DEFER , sklv ) 
	local NocLock =	KitbagLock( ATKER, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( ATKER , "Ваш инвентарь заблокирован")
		return 0
	end
	local  sklv = 3
	local 	hp = GetChaAttr ( DEFER , ATTR_HP ) 
	dmg = 4*math.floor ( 320 + 30 * sklv +hp * ( 0.05 +0.008 * sklv) )-1200
	if dmg > 3000 then
		dmg = 1500
	end
	Hp_Endure_Dmg ( DEFER , dmg )
end

-- Фотобомба 3 ур.
function SkillArea_Circle_ShanGD3( sklv )
	local side = 640 
	SetSkillRange ( 4 , side  )  
end 

function SkillCooldown_ShanGD3( sklv )
	local Cooldown = 1600
	return Cooldown
end

function Skill_ShanGD3_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local item_count = CheckBagItem ( role , 2744 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2744 , 1 ) 
end 

function Skill_ShanGD3_End ( ATKER , DEFER , sklv ) 
	local NocLock =	KitbagLock( ATKER, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( ATKER , "Ваш инвентарь заблокирован")
		return 0
	end
	local  sklv = 2
	local statelv = sklv 
	local statetime = sklv + 0.6
	local hp_defer = Mxhp ( DEFER ) 
	if hp_defer >= 1000000 then 
		SystemNotice ( ATKER , "Flash Bomb loses effect" ) 
		return
	end 

	if GetChaTypeID( ATKER ) == 979 then
		statetime = 8
	end

	if GetChaAIType( DEFER ) >= 21 then
		if BOSSXYSJ[GetChaTypeID( DEFER )] == 0 then
			SystemNotice ("Неужели ты думаешь, что меня можно победить единственным навыком? Попробуй что-нибудь другое")
			return
		else
			BOSSXYSJ[GetChaTypeID( DEFER )] = BOSSXYSJ[GetChaTypeID( DEFER )] -1
		end
	end
SystemNotice(DEFER, "На вас действует эффект <Оглушение> "..statelv.."ур. на "..statetime.. " секунд" )

	AddState( ATKER , DEFER , STATE_ShanGD, statelv , statetime ) 
end 

function State_ShanGD_Add ( role , statelv )
end 

function State_ShanGD_Rem ( role , statelv )
end 

-- Излучатель 3 ур.
function SkillArea_Circle_FuShe3( sklv )
	local  sklv = 3
	local side = 800 + sklv*100
	SetSkillRange ( 4 , side  )  
end 

function SkillCooldown_FuShe3( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_FuShe3_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local item_count = CheckBagItem ( role , 2745 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2745 , 1 ) 
end 

function Skill_FuShe3_End( ATKER , DEFER , sklv )
	local NocLock =	KitbagLock( ATKER, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( ATKER , "Ваш инвентарь заблокирован")
		return 0
	end
	local  sklv = 3
	local hp = Hp( DEFER ) 
	local statelv = sklv 
	local statetime = 15+sklv*2
	AddState( ATKER , DEFER , STATE_ZD, statelv , statetime ) 
	local 	hp = GetChaAttr ( DEFER , ATTR_HP ) 
	local 	dmg = 2*math.floor ( 320 + 30 * sklv +hp * ( 0.05 +0.008 * sklv) )-600
	if dmg > 1500 then
		dmg = 1500
	end
	Hp_Endure_Dmg ( DEFER , dmg) 
end 


-- Детектор 3 ур.
function SkillCooldown_YouL3( sklv )
	local Cooldown = 1500
	return Cooldown
end

function SkillArea_Square_YouL3 ( sklv )
	local  sklv = 3
	local side = 700 + sklv * 20 
	SetSkillRange ( 3 , side ) 	
end 

function SkillArea_State_YouL3 ( sklv )	
	local  sklv = 3
	local statetime = 40 + sklv *9   
	local statelv = sklv 
	SetRangeState ( STATE_SYZY , statelv  , statetime )
end 

function Skill_YouL3_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		SkillUnable(role)   
		return 0
	end
	local item_count = CheckBagItem ( role , 2746 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2746 , 1 ) 
end 

function Skill_YouL3_End ( ATKER , DEFER , sklv ) 
end 

function State_Syzy_Add ( role , statelv ) 
end 

function State_Syzy_Rem ( role , statelv ) 
end 

function State_Syzy_Tran ( statelv ) 
	return 1     
end 

-- Ускоритель кораблей 3 ур.
function SkillCooldown_JiaSuQi3( sklv )
	local Cooldown = 1500 
	return Cooldown
end

function Skill_JiaSuQi3_Begin ( role , sklv ) 
end 

function Skill_JiaSuQi3_End ( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(2747,ATKER) == 0 then return 0 end
	local  sklv = 3
	local statelv = sklv
	local statetime = 30+sklv*20
	AddState( ATKER , DEFER , STATE_WLJS, statelv , statetime ) 
end

function  State_wljs_Add ( role , statelv )
	local mspdsa_dif = 1
	local mspdsa = (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )
	ALLExAttrSet(role)  
end 

function State_wljs_Rem  ( role , statelv )
	local mspdsa_dif = 1
	local mspdsa = (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )
	ALLExAttrSet(role)  
end 

-- Распылитель 3 ур.
function SkillCooldown_PengSheQi3( sklv )
	local Cooldown = 1500 
	return Cooldown
end

function Skill_PengSheQi3_Begin ( role , sklv ) 
end 

function Skill_PengSheQi3_End ( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(2748,ATKER) == 0 then return 0 end
	local  sklv = 3
	local statetime = 3+sklv*2
	local statelv = sklv
	AddState( ATKER , DEFER , STATE_PSQ, statelv , statetime ) 
end

function  State_PengSheQi_Add ( role , statelv )
	local mspdsa_dif = 3
	local mspdsa = (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

function State_PengSheQi_Rem  ( role , statelv )
	local mspdsa_dif = 3
	local mspdsa = (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

-- Пробойник 3 ур.
function SkillCooldown_PoJiaDan3( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_PoJiaDan3_Begin ( role , sklv ) 
end 

function Skill_PoJiaDan3_End ( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(2749,ATKER) == 0 then return 0 end
	local  sklv = 3
	local statelv = sklv 
	local statetime = 10 + sklv  
	dmg = math.random ( 400 , 500 )*( 1 + sklv * 0.5 )
	Hp_Endure_Dmg ( DEFER , dmg) 
	AddState ( ATKER , DEFER , STATE_PJ , statelv , statetime ) 
	Check_Ys_Rem ( ATKER , DEFER )
end 

function State_Pj_Add ( role , statelv ) 
	local def_dif = 30
	local def = DefSb(role) - def_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )	
	ALLExAttrSet(role)

end 

function State_Pj_Rem ( role , statelv ) 
	local def_dif = 30
	local def = DefSb(role) + def_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )
	ALLExAttrSet(role)
end 

-- Корабельный таран 3 ур.
function SkillCooldown_PoRenDan3( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_PoRenDan3_Begin ( role , sklv ) 
end 

function Skill_PoRenDan3_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2750,ATKER) == 0 then return 0 end
	local  sklv = 3
	local statelv = sklv 
	local statetime = 10 + sklv  
	dmg = math.random ( 400 , 500 )*( 1 + sklv * 0.5 )
	Hp_Endure_Dmg ( DEFER , dmg) 
	AddState ( ATKER , DEFER , STATE_PRD , statelv , statetime ) 
	Check_Ys_Rem ( ATKER , DEFER )
end 

function State_PoRenDan_Add( role , sklv ) 
	local statelv = sklv  
	local atksb_dif = 50*sklv
	local mnatksb = MnatkSb(role) - atksb_dif  
	local mxatksb = MxatkSb(role ) - atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)  
end 

function State_PoRenDan_Rem( role , sklv ) 
	local statelv = sklv 
	local atksb_dif = 50*sklv
	local mnatksb = MnatkSb(role) + atksb_dif  
	local mxatksb = MxatkSb(role ) + atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)  
end 

-- Корабельный огнемет 3 ур.
function SkillCooldown_RanShaoDan3( sklv ) 
	local Cooldown = 1500 
	return Cooldown
end

function Skill_RanShaoDan3_Begin ( role , sklv ) 
end 

function Skill_RanShaoDan3_End( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(2751,ATKER) == 0 then return 0 end
	local  sklv = 3
	local statelv = sklv 
	local statetime = 4 + sklv*2
	AddState( ATKER , DEFER , STATE_CZRSD, statelv , statetime ) 
	dmg =  math.random ( 100 , 200 )*(1+sklv*0.5)
	Hp_Endure_Dmg ( DEFER , dmg) 
end 

function State_RanShaoDan_Add ( role , statelv ) 
	local hpdmg = 150  
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role)  
end 

function State_RanShaoDan_Rem ( role , statelv ) 
end

-- Граната 4 ур.
function SkillCooldown_Shoulei4( sklv )
	local Cooldown = 1600
	return Cooldown
end

function Skill_Shoulei4_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local item_count = CheckBagItem ( role , 2767 ) --КЦАЧ4
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2767 , 1 ) 
end 

function Skill_Shoulei4_End ( ATKER , DEFER , sklv ) 
	local NocLock =	KitbagLock( ATKER, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( ATKER , "Ваш инвентарь заблокирован")
		return 0
	end
	local  sklv = 4
	local 	hp = GetChaAttr ( DEFER , ATTR_HP ) 
	dmg = 4*math.floor ( 320 + 30 * sklv +hp * ( 0.05 +0.008 * sklv) )-1200
	if dmg > 4000 then
		dmg = 2000
	end
	Hp_Endure_Dmg ( DEFER , dmg )
end

-- Фотобомба 4 ур.
function SkillArea_Circle_ShanGD4( sklv )
	local side = 660 
	SetSkillRange ( 4 , side  )  
end 

function SkillCooldown_ShanGD4( sklv )
	local Cooldown = 1800
	return Cooldown
end

function Skill_ShanGD4_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local item_count = CheckBagItem ( role , 2768 ) --ЙБ№вµЇ4
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2768 , 1 ) 
end 

function Skill_ShanGD4_End ( ATKER , DEFER , sklv ) 
	local NocLock =	KitbagLock( ATKER, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( ATKER , "Ваш инвентарь заблокирован")
		return 0
	end
	local  sklv = 2
	local statelv = sklv 
	local statetime = sklv +0.8
	local hp_defer = Mxhp ( DEFER ) 
	if hp_defer >= 1000000 then 
		SystemNotice ( ATKER , "Flash Bomb loses effect" ) 
		return
	end 

	if GetChaTypeID( ATKER ) == 979 then
		statetime = 8
	end

	if GetChaAIType( DEFER ) >= 21 then
		if BOSSXYSJ[GetChaTypeID( DEFER )] == 0 then
			SystemNotice ("Неужели ты думаешь, что меня можно победить единственным навыком? Попробуй что-нибудь другое")
			return
		else
			BOSSXYSJ[GetChaTypeID( DEFER )] = BOSSXYSJ[GetChaTypeID( DEFER )] -1
		end
	end
SystemNotice(DEFER, "На вас действует эффект <Оглушение> "..statelv.."ур. на "..statetime.. " секунд" )

	AddState( ATKER , DEFER , STATE_ShanGD, statelv , statetime ) 
end 
 
function State_ShanGD_Add ( role , statelv )
end 

function State_ShanGD_Rem ( role , statelv )
end 

-- Излучатель 4 ур.
function SkillArea_Circle_FuShe4( sklv )
	local  sklv = 4
	local side = 800 + sklv*100
	SetSkillRange ( 4 , side  )  
end 

function SkillCooldown_FuShe4( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_FuShe4_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local item_count = CheckBagItem ( role , 2769 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2769 , 1 ) 
end 

function Skill_FuShe4_End( ATKER , DEFER , sklv ) 
	local NocLock =	KitbagLock( ATKER, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( ATKER , "Ваш инвентарь заблокирован")
		return 0
	end
	local  sklv = 4
	local hp = Hp( DEFER ) 
	local statelv = sklv 
	local statetime = 15+sklv*2
	AddState( ATKER , DEFER , STATE_ZD, statelv , statetime ) 
	local 	hp = GetChaAttr ( DEFER , ATTR_HP ) 
	local 	dmg = 2*math.floor ( 320 + 30 * sklv +hp * ( 0.05 +0.008 * sklv) )-600
	if dmg > 2000 then
		dmg = 2000
	end
	Hp_Endure_Dmg ( DEFER , dmg) 
end 

-- Детектор 4 ур.
function SkillCooldown_YouL4( sklv )
	local Cooldown = 1500
	return Cooldown
end

function SkillArea_Square_YouL4 ( sklv )
	local  sklv = 4
	local side = 600 + sklv * 20 
	SetSkillRange ( 3 , side ) 	
end 

function SkillArea_State_YouL4 ( sklv )	
	local  sklv = 4
	local statetime = 40 + sklv *9   
	local statelv = sklv 
	SetRangeState ( STATE_SYZY , statelv  , statetime )
end 

function Skill_YouL4_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		SkillUnable(role)   
		return 0
	end
	local item_count = CheckBagItem ( role , 2770 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2770 , 1 ) 
end 

function Skill_YouL4_End ( ATKER , DEFER , sklv ) 
end 

function State_Syzy_Add ( role , statelv ) 
end 

function State_Syzy_Rem ( role , statelv ) 
end 

function State_Syzy_Tran ( statelv ) 
	return 1     
end 


-- Ускоритель кораблей 4 ур.
function SkillCooldown_JiaSuQi4( sklv )
	local Cooldown = 1500 
	return Cooldown
end

function Skill_JiaSuQi4_Begin ( role , sklv ) 
end 

function Skill_JiaSuQi4_End ( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(2771,ATKER) == 0 then return 0 end
	local  sklv = 4
	local statelv = sklv
	local statetime = 30+sklv*20
	AddState( ATKER , DEFER , STATE_WLJS, statelv , statetime ) 
 end

function  State_wljs_Add ( role , statelv )
	local mspdsa_dif = 1
	local mspdsa = (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )  
	ALLExAttrSet(role)  
end 

function State_wljs_Rem  ( role , statelv )
	local mspdsa_dif = 1
	local mspdsa = (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

-- Распылитель 4 ур.
function SkillCooldown_PengSheQi4( sklv )
	local Cooldown = 1500 
	return Cooldown
end

function Skill_PengSheQi4_Begin ( role , sklv ) 
end 

function Skill_PengSheQi4_End ( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(2772,ATKER) == 0 then return 0 end
	local  sklv = 4
	local statetime = 3+sklv*2
	local statelv = sklv
	AddState( ATKER , DEFER , STATE_PSQ, statelv , statetime ) 
end

function  State_PengSheQi_Add ( role , statelv )
	local mspdsa_dif = 3
	local mspdsa = (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )  
	ALLExAttrSet(role)  
end 

function State_PengSheQi_Rem  ( role , statelv )
	local mspdsa_dif = 3
	local mspdsa = (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )  
	ALLExAttrSet(role)  
end 

-- Пробойник 4 ур.
function SkillCooldown_PoJiaDan4( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_PoJiaDan4_Begin ( role , sklv ) 
end 

function Skill_PoJiaDan4_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2773,ATKER) == 0 then return 0 end
	local  sklv = 4
	local statelv = sklv 
	local statetime = 10 + sklv  
	dmg = math.random ( 400 , 500 )*( 1 + sklv * 0.5 )
	Hp_Endure_Dmg ( DEFER , dmg) 
	AddState ( ATKER , DEFER , STATE_PJ , statelv , statetime ) 
	Check_Ys_Rem ( ATKER , DEFER )
end 

function State_Pj_Add ( role , statelv ) 
	local def_dif = 30
	local def = DefSb(role) - def_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )	
	ALLExAttrSet(role)

end 

function State_Pj_Rem ( role , statelv ) 
	local def_dif = 30
	local def = DefSb(role) + def_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )
	ALLExAttrSet(role)
end 

-- Корабельный таран 4 ур.
function SkillCooldown_PoRenDan4( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_PoRenDan4_Begin ( role , sklv ) 
end 

function Skill_PoRenDan4_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2774,ATKER) == 0 then return 0 end
	local  sklv = 4
	local statelv = sklv 
	local statetime = 10 + sklv  
	dmg = math.random ( 400 , 500 )*( 1 + sklv * 0.5 )
	Hp_Endure_Dmg ( DEFER , dmg) 
	AddState ( ATKER , DEFER , STATE_PRD , statelv , statetime ) 
	Check_Ys_Rem ( ATKER , DEFER )

end 

function State_PoRenDan_Add( role , sklv ) 
	local statelv = sklv  
	local atksb_dif = 50*sklv
	local mnatksb = MnatkSb(role) - atksb_dif  
	local mxatksb = MxatkSb(role ) - atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)  
end 

function State_PoRenDan_Rem( role , sklv ) 
	local statelv = sklv 
	local atksb_dif = 50*sklv
	local mnatksb = MnatkSb(role) + atksb_dif  
	local mxatksb = MxatkSb(role ) + atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)  
end 

-- Корабельный огнемет 4 ур.
function SkillCooldown_RanShaoDan4( sklv ) 
	local Cooldown = 1500 
	return Cooldown
end

function Skill_RanShaoDan4_Begin ( role , sklv ) 
end 

function Skill_RanShaoDan4_End( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(2775,ATKER) == 0 then return 0 end
	local  sklv = 4
	local statelv = sklv 
	local statetime = 4 + sklv*2
	AddState( ATKER , DEFER , STATE_CZRSD, statelv , statetime ) 
	dmg =  math.random ( 100 , 200 )*(1+sklv*0.5)
	Hp_Endure_Dmg ( DEFER , dmg) 
end 

function State_RanShaoDan_Add ( role , statelv ) 
	local hpdmg = 150  
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role)  
end 

function State_RanShaoDan_Rem ( role , statelv ) 
end

-- Граната 5 ур.
function SkillCooldown_Shoulei5( sklv )
	local Cooldown = 2000
	return Cooldown
end

function Skill_Shoulei5_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local item_count = CheckBagItem ( role , 2791 ) --КЦАЧ5
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2791 , 1 ) 
end 

function Skill_Shoulei5_End ( ATKER , DEFER , sklv ) 
	local NocLock =	KitbagLock( ATKER, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( ATKER , "Ваш инвентарь заблокирован")
		return 0
	end
	local  sklv = 5
	local 	hp = GetChaAttr ( DEFER , ATTR_HP ) 
	dmg = 4*math.floor ( 320 + 30 * sklv +hp * ( 0.05 +0.008 * sklv) )-1200
	if dmg > 5000 then
		dmg = 2500
	end
	Hp_Endure_Dmg ( DEFER , dmg )
end

-- Фотобомба 5 ур.
 function SkillArea_Circle_ShanGD5( sklv )
	local side = 700 
	SetSkillRange ( 4 , side  )  
end 

function SkillCooldown_ShanGD5( sklv )
	local Cooldown = 2000
	return Cooldown
end

function Skill_ShanGD5_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local item_count = CheckBagItem ( role , 2792 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2792 , 1 ) 
end 

function Skill_ShanGD5_End ( ATKER , DEFER , sklv ) 
	local NocLock =	KitbagLock( ATKER, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( ATKER , "Ваш инвентарь заблокирован")
		return 0
	end
	local  sklv = 2
	local statelv = sklv 
	local statetime = sklv +1
	local hp_defer = Mxhp ( DEFER ) 
	if hp_defer >= 1000000 then 
		SystemNotice ( ATKER , "Flash Bomb loses effect" ) 
		return
	end 
	AddState( ATKER , DEFER , STATE_ShanGD, statelv , statetime ) 
	SystemNotice(DEFER, "На вас действует эффект <Оглушение> "..statelv.."ур. на "..statetime.. " секунд" )

end

function State_ShanGD_Add ( role , statelv )
end 

function State_ShanGD_Rem ( role , statelv )
end 

-- Излучатель 5 ур.
function SkillArea_Circle_FuShe5( sklv )
	local  sklv = 5
	local side = 800 + sklv*100
	SetSkillRange ( 4 , side  )  
end 

function SkillCooldown_FuShe5( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_FuShe5_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local item_count = CheckBagItem ( role , 2793 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2793 , 1 ) 
end 

function Skill_FuShe5_End( ATKER , DEFER , sklv ) 
	local NocLock =	KitbagLock( ATKER, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( ATKER , "Ваш инвентарь заблокирован")
		return 0
	end
	local  sklv = 5
	local hp = Hp( DEFER ) 
	local statelv = sklv 
	local statetime = 15+sklv*2
	AddState( ATKER , DEFER , STATE_ZD, statelv , statetime ) 
	local 	hp = GetChaAttr ( DEFER , ATTR_HP ) 
	local 	dmg = 2*math.floor ( 320 + 30 * sklv +hp * ( 0.05 +0.008 * sklv) )-600
	if dmg > 2500 then
		dmg = 2500
	end
	Hp_Endure_Dmg ( DEFER , dmg) 
end 
 
-- Детектор 5 ур.
function SkillCooldown_YouL5( sklv )
	local Cooldown = 1500
	return Cooldown
end

function SkillArea_Square_YouL5 ( sklv )
	local  sklv = 5
	local side = 600 + sklv * 20 
	SetSkillRange ( 3 , side ) 	
end 

function SkillArea_State_YouL5 ( sklv )	
	local  sklv = 5
	local statetime = 40 + sklv *9   
	local statelv = sklv 
	SetRangeState ( STATE_SYZY , statelv  , statetime )
end 

function Skill_YouL5_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		SkillUnable(role)   
		return 0
	end
	local item_count = CheckBagItem ( role , 2794 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2794 , 1 ) 
end 

function Skill_YouL5_End ( ATKER , DEFER , sklv ) 
end 

function State_Syzy_Add ( role , statelv ) 
end 

function State_Syzy_Rem ( role , statelv ) 
end 

function State_Syzy_Tran ( statelv ) 
	return 1     
end 

-- Ускоритель кораблей 5 ур.
function SkillCooldown_JiaSuQi5( sklv )
	local Cooldown = 1500 
	return Cooldown
end

function Skill_JiaSuQi5_Begin ( role , sklv ) 
end 

function Skill_JiaSuQi5_End ( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(2795,ATKER) == 0 then return 0 end
	local  sklv = 5
	local statelv = sklv
	local statetime = 30+sklv*20
	AddState( ATKER , DEFER , STATE_WLJS, statelv , statetime ) 
 end

function  State_wljs_Add ( role , statelv )
	local mspdsa_dif = 1
	local mspdsa = (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

function State_wljs_Rem  ( role , statelv )
	local mspdsa_dif = 1
	local mspdsa = (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD )
	ALLExAttrSet(role)  
end 

-- Распылитель 5 ур.
function SkillCooldown_PengSheQi5( sklv )
	local Cooldown = 1500 
	return Cooldown
end

function Skill_PengSheQi5_Begin ( role , sklv ) 
end 

function Skill_PengSheQi5_End ( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(2796,ATKER) == 0 then return 0 end
	local  sklv = 5
	local statetime = 3+sklv*2
	local statelv = sklv
	AddState( ATKER , DEFER , STATE_PSQ, statelv , statetime ) 
end

function  State_PengSheQi_Add ( role , statelv )
	local mspdsa_dif = 3
	local mspdsa = (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

function State_PengSheQi_Rem  ( role , statelv )
	local mspdsa_dif = 3
	local mspdsa = (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

-- Пробойник 5 ур.
function SkillCooldown_PoJiaDan5( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_PoJiaDan5_Begin ( role , sklv ) 
end 

function Skill_PoJiaDan5_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2797,ATKER) == 0 then return 0 end
	local  sklv = 5
	local statelv = sklv 
	local statetime = 10 + sklv  
	dmg = math.random ( 400 , 500 )*( 1 + sklv * 0.5 )
	Hp_Endure_Dmg ( DEFER , dmg) 
	AddState ( ATKER , DEFER , STATE_PJ , statelv , statetime ) 
	Check_Ys_Rem ( ATKER , DEFER )
end 

function State_Pj_Add ( role , statelv ) 
	local def_dif = 30
	local def = DefSb(role) - def_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )	
	ALLExAttrSet(role)

end 

function State_Pj_Rem ( role , statelv ) 
	local def_dif = 30
	local def = DefSb(role) + def_dif
	SetCharaAttr( def , role , ATTR_STATEV_DEF )
	ALLExAttrSet(role)
end 

-- Корабельный таран 5 ур.
function SkillCooldown_PoRenDan5( sklv )
	local Cooldown = 1500
	return Cooldown
end

function Skill_PoRenDan5_Begin ( role , sklv ) 
end 

function Skill_PoRenDan5_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2798,ATKER) == 0 then return 0 end
	local  sklv = 5
	local statelv = sklv 
	local statetime = 10 + sklv  
	dmg = math.random ( 400 , 500 )*( 1 + sklv * 0.5 )
	Hp_Endure_Dmg ( DEFER , dmg) 
	AddState ( ATKER , DEFER , STATE_PRD , statelv , statetime ) 
	Check_Ys_Rem ( ATKER , DEFER )

end 

function State_PoRenDan_Add( role , sklv ) 
	local statelv = sklv  
	local atksb_dif = 50*sklv
	local mnatksb = MnatkSb(role) - atksb_dif  
	local mxatksb = MxatkSb(role ) - atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)  
end 

function State_PoRenDan_Rem( role , sklv ) 
	local statelv = sklv 
	local atksb_dif = 50*sklv
	local mnatksb = MnatkSb(role) + atksb_dif  
	local mxatksb = MxatkSb(role ) + atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)  
end 

-- Корабельный огнемет 5 ур.
function SkillCooldown_RanShaoDan5( sklv ) 
	local Cooldown = 1500 
	return Cooldown
end

function Skill_RanShaoDan5_Begin ( role , sklv ) 
end 

function Skill_RanShaoDan5_End( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(2799,ATKER) == 0 then return 0 end
	local  sklv = 5
	local statelv = sklv 
	local statetime = 4 + sklv*2
	AddState( ATKER , DEFER , STATE_CZRSD, statelv , statetime ) 
	dmg =  math.random ( 100 , 200 )*(1+sklv*0.5)
	Hp_Endure_Dmg ( DEFER , dmg) 
end 

function State_RanShaoDan_Add ( role , statelv ) 
	local hpdmg = 150  
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role)  
end 

function State_RanShaoDan_Rem ( role , statelv ) 
end

-- Снежок
function SkillCooldown_Xiaoxueqiu ( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_Xiaoxueqiu_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local item_count = CheckBagItem ( role , 2896 ) 
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2896 , 1 ) 

end 

function Skill_Xiaoxueqiu_End ( ATKER , DEFER , sklv ) 
	local NocLock =	KitbagLock( ATKER, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( ATKER , "Ваш инвентарь заблокирован")
		return 0
	end
	local statetime = 1 
	local statelv = 10 
	local rad_star = math.random ( 1, 20 )
	if rad_star==1 then
		AddState ( ATKER , DEFER , STATE_XY , statelv , statetime )
	end
end

-- Трупное ядро 1 ур.
function SkillCooldown_FuShiZhiQiu1( sklv )
	local Cooldown = 5000
	return Cooldown
end

function Skill_FuShiZhiQiu1_Begin ( role , sklv ) 
	local atk_role = TurnToCha ( role ) 
	local NocLock =	KitbagLock( role, 0 )
		if NocLock == LUA_FALSE then
			SystemNotice( role , "Ваш инвентарь заблокирован")
			SkillUnable(atk_role)
			return 0
		end
	local item_count = CheckBagItem ( atk_role , 1146 )
	if item_count <= 0 then  
		SkillUnable(atk_role)   
		SystemNotice ( atk_role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( atk_role , 1146 , 1 ) 
end 

function Skill_FuShiZhiQiu1_End ( ATKER , DEFER , sklv ) 
	local sklv = 1 
	local statelv=sklv
	local statetime = 5 + 4 *  sklv
	AddState ( ATKER , DEFER , STATE_FSZQ , statelv , statetime )  
end 

function State_FuShiZhiQiu_Add ( role , statelv )
	local bd=GetChaAttr(role, ATTR_BPDEF)
	local defsa_dif = (-1) * ( 0.03 * statelv ) 
	local defsa = math.floor (  (DefSa(role) + defsa_dif ) * ATTR_RADIX ) 
	local bd_dif = (-1) * ( 0.02 * statelv )
	local bd_fin = math.floor (  (ResistSa(role) + bd_dif ) * ATTR_RADIX ) 
	SetCharaAttr( defsa , role , ATTR_STATEC_DEF ) 
	SetCharaAttr( bd_fin , role , ATTR_STATEC_PDEF ) 
	ALLExAttrSet(role)  
end 

function State_FuShiZhiQiu_Rem ( role , statelv )  
	local bd=GetChaAttr(role, ATTR_BPDEF)
	local defsa_dif = (-1) * ( 0.03 * statelv ) 
	local defsa = math.floor (  (DefSa(role) - defsa_dif ) * ATTR_RADIX ) 
	local bd_dif = (-1) * ( 0.02 * statelv )
	local bd_fin = math.floor (  (ResistSa(role) - bd_dif ) * ATTR_RADIX ) 
	SetCharaAttr( defsa , role , ATTR_STATEC_DEF ) 
	SetCharaAttr( bd_fin , role , ATTR_STATEC_PDEF ) 
	ALLExAttrSet(role)  
end 

-- Трупное ядро 2 ур.
function SkillCooldown_FuShiZhiQiu2( sklv )
	local Cooldown = 5000
	return Cooldown
end

function Skill_FuShiZhiQiu2_Begin ( role , sklv ) 
	local atk_role = TurnToCha ( role ) 
	local NocLock =	KitbagLock( role, 0 )
		if NocLock == LUA_FALSE then
			SystemNotice( role , "Ваш инвентарь заблокирован")
			SkillUnable(atk_role)
			return 0
		end
	local item_count = CheckBagItem ( atk_role , 2730 )
	if item_count <= 0 then  
		SkillUnable(atk_role)   
		SystemNotice ( atk_role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( atk_role , 2730 , 1 ) 
end 

function Skill_FuShiZhiQiu2_End ( ATKER , DEFER , sklv ) 
	local sklv = 2 
	local statelv=sklv
	local statetime = 5 + 4 *  sklv
	AddState ( ATKER , DEFER , STATE_FSZQ , statelv , statetime )  
end 

-- Трупное ядро 3 ур.
function SkillCooldown_FuShiZhiQiu3( sklv )
	local Cooldown = 5000
	return Cooldown
end

function Skill_FuShiZhiQiu3_Begin ( role , sklv ) 
	local atk_role = TurnToCha ( role ) 
	local NocLock =	KitbagLock( role, 0 )
		if NocLock == LUA_FALSE then
			SystemNotice( role , "Ваш инвентарь заблокирован")
			SkillUnable(atk_role)
			return 0
		end
	local item_count = CheckBagItem ( atk_role , 2754 )
	if item_count <= 0 then  
		SkillUnable(atk_role)   
		SystemNotice ( atk_role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( atk_role , 2754 , 1 ) 
end 

function Skill_FuShiZhiQiu3_End ( ATKER , DEFER , sklv ) 
	local sklv = 3
	local statelv=sklv
	local statetime = 5 + 4 *  sklv
	AddState ( ATKER , DEFER , STATE_FSZQ , statelv , statetime )  
end 

-- Трупное ядро 4 ур.
function SkillCooldown_FuShiZhiQiu4( sklv )
	local Cooldown = 5000
	return Cooldown
end

function Skill_FuShiZhiQiu4_Begin ( role , sklv ) 
	local atk_role = TurnToCha ( role ) 
	local NocLock =	KitbagLock( role, 0 )
		if NocLock == LUA_FALSE then
			SystemNotice( role , "Ваш инвентарь заблокирован")
			SkillUnable(atk_role)
			return 0
		end
	local item_count = CheckBagItem ( atk_role , 2778 )
	if item_count <= 0 then  
		SkillUnable(atk_role)   
		SystemNotice ( atk_role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( atk_role , 2778 , 1 ) 
end 

function Skill_FuShiZhiQiu4_End ( ATKER , DEFER , sklv ) 
	local sklv =  4
	local statelv=sklv
	local statetime = 5 + 4 *  sklv
	AddState ( ATKER , DEFER , STATE_FSZQ , statelv , statetime )  
end 

-- Трупное ядро 5 ур.
function SkillCooldown_FuShiZhiQiu5( sklv )
	local Cooldown = 5000
	return Cooldown
end

function Skill_FuShiZhiQiu5_Begin ( role , sklv ) 
	local atk_role = TurnToCha ( role ) 
	local NocLock =	KitbagLock( role, 0 )
		if NocLock == LUA_FALSE then
			SystemNotice( role , "Ваш инвентарь заблокирован")
			SkillUnable(atk_role)
			return 0
		end
	local item_count = CheckBagItem ( atk_role , 2802 )
	if item_count <= 0 then  
		SkillUnable(atk_role)   
		SystemNotice ( atk_role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( atk_role , 2802 , 1 ) 
end 

function Skill_FuShiZhiQiu5_End ( ATKER , DEFER , sklv ) 
	local sklv =  5
	local statelv=sklv
	local statetime = 5 + 4 *  statelv
	AddState ( ATKER , DEFER , STATE_FSZQ , statelv , statetime )  
end 


-- Источник шума 1 ур.
function SkillCooldown_ZaoYinZhiZao1( sklv )
	local Cooldown = 1500
	return Cooldown
end

function SkillArea_Square_ZaoYinZhiZao1( sklv )
    local sklv = 1
	local side = 550 + sklv * 40
    SetSkillRange ( 4 , side  )  
end 

function SkillArea_State_ZaoYinZhiZao1 ( sklv )
    local sklv = 1
	local statetime = 15 + sklv * 2 
	local statelv = sklv 
	SetRangeState ( STATE_ZYZZ , statelv  , statetime )
end 

function Skill_ZaoYinZhiZao1_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
		if NocLock == LUA_FALSE then
			SystemNotice( role , "Ваш инвентарь заблокирован")
			SkillUnable(role)
			return 0
		end
	local item_count = CheckBagItem ( role , 1147 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 1147 , 1 ) 
end 

function Skill_ZaoYinZhiZao1_End ( ATKER , DEFER , sklv )
end
 
function State_ZaoYinZhiZao_Add ( role , statelv )
	local sp_sum = -15*statelv
        local sp = GetChaAttr(role, ATTR_SP) 
	sp=sp+sp_sum
	if sp < 0 then sp = 0 end 
	SetCharaAttr ( sp , role , ATTR_SP ) 
	ALLExAttrSet(role)
end 

function State_ZaoYinZhiZao_Rem ( role , statelv )
end  

function State_ZaoYinZhiZao_Tran ( statelv ) 
	return 1
end

-- Источник шума 2 ур.
function SkillCooldown_ZaoYinZhiZao2( sklv )
	local Cooldown = 1500
	return Cooldown
end

function SkillArea_Square_ZaoYinZhiZao2( sklv )
    local sklv = 2
	local side = 550 + sklv * 40
    SetSkillRange ( 4 , side  )  
end 

function SkillArea_State_ZaoYinZhiZao2 ( sklv )
    local sklv = 2
	local statetime = 15 + sklv * 2 
	local statelv = sklv 
	SetRangeState ( STATE_ZYZZ , statelv  , statetime )
end 

function Skill_ZaoYinZhiZao2_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
		if NocLock == LUA_FALSE then
			SystemNotice( role , "Ваш инвентарь заблокирован")
			SkillUnable(role)
			return 0
		end
	local item_count = CheckBagItem ( role , 2731 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2731 , 1 ) 
end 

function Skill_ZaoYinZhiZao2_End ( ATKER , DEFER , sklv )
end
 
-- Источник шума 3 ур.
function SkillCooldown_ZaoYinZhiZao3( sklv )
	local Cooldown = 1500
	return Cooldown
end

function SkillArea_Square_ZaoYinZhiZao3( sklv )
    local sklv = 1
	local side = 550 + sklv * 40
    SetSkillRange ( 4 , side  )  
end 

function SkillArea_State_ZaoYinZhiZao3 ( sklv )
    local sklv = 3
	local statetime = 15 + sklv * 2 
	local statelv = sklv 
	SetRangeState ( STATE_ZYZZ , statelv  , statetime )
end 

function Skill_ZaoYinZhiZao3_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
		if NocLock == LUA_FALSE then
			SystemNotice( role , "Ваш инвентарь заблокирован")
			SkillUnable(role)
			return 0
		end
	local item_count = CheckBagItem ( role , 2755 ) --ФлТфЦЖФмЖчLv3
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2755 , 1 ) 
end 

function Skill_ZaoYinZhiZao3_End ( ATKER , DEFER , sklv )
end
 
-- Источник шума 4 ур.
function SkillCooldown_ZaoYinZhiZao4( sklv )
	local Cooldown = 1500
	return Cooldown
end

function SkillArea_Square_ZaoYinZhiZao4( sklv )
    local sklv = 1
	local side = 550 + sklv * 40
    SetSkillRange ( 4 , side  )  
end 

function SkillArea_State_ZaoYinZhiZao4 ( sklv )
    local sklv = 4
	local statetime = 15 + sklv * 2 
	local statelv = sklv 
	SetRangeState ( STATE_ZYZZ , statelv  , statetime )
end 

function Skill_ZaoYinZhiZao4_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
		if NocLock == LUA_FALSE then
			SystemNotice( role , "Ваш инвентарь заблокирован")
			SkillUnable(role)
			return 0
		end
	local item_count = CheckBagItem ( role , 2779 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2779 , 1 ) 
end 

function Skill_ZaoYinZhiZao4_End ( ATKER , DEFER , sklv )
end
 
-- Источник шума 5 ур.
function SkillCooldown_ZaoYinZhiZao5( sklv )
	local Cooldown = 1500
	return Cooldown
end

function SkillArea_Square_ZaoYinZhiZao5( sklv )
    local sklv = 5
	local side = 550 + sklv * 40
    SetSkillRange ( 4 , side  )  
end 

function SkillArea_State_ZaoYinZhiZao5 ( sklv )
    local sklv = 5
	local statetime = 15 + sklv * 2 
	local statelv = sklv 
	SetRangeState ( STATE_ZYZZ , statelv  , statetime )
end 

function Skill_ZaoYinZhiZao5_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
		if NocLock == LUA_FALSE then
			SystemNotice( role , "Ваш инвентарь заблокирован")
			SkillUnable(role)
			return 0
		end
	local item_count = CheckBagItem ( role , 2803 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2803 , 1 ) 
end 

function Skill_ZaoYinZhiZao5_End ( ATKER , DEFER , sklv )
end
 
-- Генератор землетрясений 1 ур.
function SkillCooldown_DiZhenFaSheng1( sklv )
	local Cooldown = 3000
	return Cooldown
end

function SkillArea_Circle_DiZhenFaSheng1 ( sklv )
    local sklv = 1
	local side = 550 + sklv * 40 
	SetSkillRange ( 4 , side ) 	
end 

function SkillArea_State_DiZhenFaSheng1 ( sklv )
    local sklv = 1
	local statetime = 10 + sklv * 2     
	local statelv = sklv  
	SetRangeState ( STATE_DZFS , statelv  , statetime ) 
end 

function Skill_DiZhenFaSheng1_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
		if NocLock == LUA_FALSE 
		    then
			SystemNotice( role , "Ваш инвентарь заблокирован")
			SkillUnable(role)
			return 0
		end
	local item_count = CheckBagItem ( role , 1148 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 1148 , 1 ) 
end 

function Skill_DiZhenFaSheng1_End ( ATKER , DEFER , sklv ) 
end 

function State_DiZhenFaSheng_Add ( role , statelv )
	local mspdsa_dif = (-1) * ( 0.2 * statelv + 0.1 ) 
	local mspdsa = math.floor (  (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX ) 
    SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

function State_DiZhenFaSheng_Rem ( role , statelv ) 
	local mspdsa_dif = (-1) * ( 0.2 * statelv + 0.1 )  
	local mspdsa = math.floor (  (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX ) 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

function State_DiZhenFaSheng_Tran ( statelv ) 
     return 1
end
 
-- Генератор землетрясений 2 ур.
function SkillCooldown_DiZhenFaSheng2( sklv )
	local Cooldown = 3000
	return Cooldown
end

function SkillArea_Circle_DiZhenFaSheng2 ( sklv )
    local sklv = 2
	local side = 550 + sklv * 40 
	SetSkillRange ( 4 , side ) 	
end 

function SkillArea_State_DiZhenFaSheng2 ( sklv )
    local sklv = 2
	local statetime = 10 + sklv * 2     
	local statelv = sklv  
	SetRangeState ( STATE_DZFS , statelv  , statetime ) 
end 

function Skill_DiZhenFaSheng2_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
		if NocLock == LUA_FALSE 
		    then
			SystemNotice( role , "Ваш инвентарь заблокирован")
			SkillUnable(role)
			return 0
		end
	local item_count = CheckBagItem ( role , 2732 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2732 , 1 ) 
end 

function Skill_DiZhenFaSheng2_End ( ATKER , DEFER , sklv ) 
end 

-- Генератор землетрясений 3 ур.
function SkillCooldown_DiZhenFaSheng3( sklv )
	local Cooldown = 3000
	return Cooldown
end

function SkillArea_Circle_DiZhenFaSheng3 ( sklv )
    local sklv = 3
	local side = 550 + sklv * 40 
	SetSkillRange ( 4 , side ) 	
end 

function SkillArea_State_DiZhenFaSheng3 ( sklv )
    local sklv = 3
	local statetime = 10 + sklv * 2     
	local statelv = sklv  
	SetRangeState ( STATE_DZFS , statelv  , statetime ) 
end 

function Skill_DiZhenFaSheng3_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
		if NocLock == LUA_FALSE 
		    then
			SystemNotice( role , "Ваш инвентарь заблокирован")
			SkillUnable(role)
			return 0
		end
	local item_count = CheckBagItem ( role , 2756 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2756 , 1 ) 
end 

function Skill_DiZhenFaSheng3_End ( ATKER , DEFER , sklv ) 
end 

-- Генератор землетрясений 4 ур.
function SkillCooldown_DiZhenFaSheng4( sklv )
	local Cooldown = 3000
	return Cooldown
end

function SkillArea_Circle_DiZhenFaSheng4 ( sklv )
    local sklv = 4
	local side = 550 + sklv * 40 
	SetSkillRange ( 4 , side ) 	
end 

function SkillArea_State_DiZhenFaSheng4 ( sklv )
    local sklv = 4
	local statetime = 10 + sklv * 2     
	local statelv = sklv  
	SetRangeState ( STATE_DZFS , statelv  , statetime ) 
end 

function Skill_DiZhenFaSheng4_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
		if NocLock == LUA_FALSE 
		    then
			SystemNotice( role , "Ваш инвентарь заблокирован")
			SkillUnable(role)
			return 0
		end
	local item_count = CheckBagItem ( role , 2780 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2780 , 1 ) 
end

function Skill_DiZhenFaSheng4_End ( ATKER , DEFER , sklv ) 
end 

-- Генератор землетрясений 5 ур.
function SkillCooldown_DiZhenFaSheng5( sklv )
	local Cooldown = 3000
	return Cooldown
end

function SkillArea_Circle_DiZhenFaSheng5 ( sklv )
        local sklv = 5
	local side = 550 + sklv * 40 
	SetSkillRange ( 4 , side ) 	
end 

function SkillArea_State_DiZhenFaSheng5 ( sklv )
        local sklv = 5
	local statetime = 10 + sklv * 2     
	local statelv = sklv  
	SetRangeState ( STATE_DZFS , statelv  , statetime ) 
end 

function Skill_DiZhenFaSheng5_Begin ( role , sklv ) 
	local NocLock =	KitbagLock( role, 0 )
		if NocLock == LUA_FALSE 
		    then
			SystemNotice( role , "Ваш инвентарь заблокирован")
			SkillUnable(role)
			return 0
		end
	local item_count = CheckBagItem ( role , 2804 )
	if item_count <= 0 then  
		SkillUnable(role)   
		SystemNotice ( role , "У вас нет нужных предметов для применения навыка" ) 
	end 
	local a = DelBagItem ( role , 2804 , 1 ) 
end

function Skill_DiZhenFaSheng5_End ( ATKER , DEFER , sklv ) 
end 

-- Сцепленные пули 1 ур.
function SkillCooldown_LianDan1( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_LianDan1_Begin ( role , sklv ) 
end 

function Skill_LianDan1_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2677,ATKER) == 0 then return 0 end
	local  sklv = 1
	local statelv = sklv
	local statetime = 30+sklv*20  
	AddState ( ATKER , DEFER , STATE_LD , statelv , statetime ) 
end 

function State_LianDan_Add( role , statelv ) 
	local mspdsa_dif =  0.3 + 0.09 * statelv 
	local mspdsa = math.floor (  (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX ) 
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end 

function State_LianDan_Rem( role , statelv ) 
	local mspdsa_dif =  0.3 + 0.09 * statelv 
	local mspdsa = math.floor (  (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX ) 
        SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end

-- Сцепленные пули 2 ур.
function SkillCooldown_LianDan2( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_LianDan2_Begin ( role , sklv ) 
end 

function Skill_LianDan2_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2741,ATKER) == 0 then return 0 end
	local  sklv = 2
	local statelv = sklv
	local statetime = 30+sklv*20   
	AddState ( ATKER , DEFER , STATE_LD , statelv , statetime ) 
end 

-- Сцепленные пули 3 ур.
function SkillCooldown_LianDan3( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_LianDan3_Begin ( role , sklv ) 
end 

function Skill_LianDan3_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2765,ATKER) == 0 then return 0 end
	local  sklv = 3
	local statelv = sklv
	local statetime = 30+sklv*20  
	AddState ( ATKER , DEFER , STATE_LD , statelv , statetime ) 
end 

-- Сцепленные пули 4 ур.
function SkillCooldown_LianDan4( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_LianDan4_Begin ( role , sklv ) 
end 

function Skill_LianDan4_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2789,ATKER) == 0 then return 0 end
	local  sklv = 4
	local statelv = sklv
	local statetime = 30+sklv*20  
	AddState ( ATKER , DEFER , STATE_LD , statelv , statetime ) 
end 

-- Сцепленные пули 5 ур.
function SkillCooldown_LianDan5( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_LianDan5_Begin ( role , sklv ) 
end 

function Skill_LianDan5_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2813,ATKER) == 0 then return 0 end
	local  sklv = 5
	local statelv = sklv
	local statetime = 30+sklv*20   
	AddState ( ATKER , DEFER , STATE_LD , statelv , statetime ) 
end 

-- Генератор миража 1 ур.
function SkillCooldown_HuanYinFaSheng1( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_HuanYinFaSheng1_Begin ( role , sklv ) 
end 

function Skill_HuanYinFaSheng1_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2673,ATKER) == 0 then return 0 end
	local sklv = 1 
	local statelv = sklv
	local statetime =  2 + sklv*3    
	AddState ( ATKER , DEFER , STATE_HYFS , statelv , statetime )  
end 

function State_HuanYinFaSheng_Add( role , statelv )  
end 

function State_HuanYinFaSheng_Add( role , statelv ) 
end 

-- Генератор миража 2 ур.
function SkillCooldown_HuanYinFaSheng2( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_HuanYinFaSheng2_Begin ( role , sklv ) 
end 

function Skill_HuanYinFaSheng2_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2737,ATKER) == 0 then return 0 end
	local sklv = 2 
	local statelv = sklv
	local statetime =  2 + sklv*3    
	AddState ( ATKER , DEFER , STATE_HYFS , statelv , statetime )  
end 

-- Генератор миража 3 ур.
function SkillCooldown_HuanYinFaSheng3( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_HuanYinFaSheng3_Begin ( role , sklv ) 
end 

function Skill_HuanYinFaSheng3_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2761,ATKER) == 0 then return 0 end
	local sklv = 3 
	local statelv = sklv
	local statetime =  2 + sklv*3    
	AddState ( ATKER , DEFER , STATE_HYFS , statelv , statetime )  
end 

-- Генератор миража 4 ур.
function SkillCooldown_HuanYinFaSheng4( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_HuanYinFaSheng4_Begin ( role , sklv ) 
end 

function Skill_HuanYinFaSheng4_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2785,ATKER) == 0 then return 0 end
	local sklv = 4 
	local statelv = sklv
	local statetime =  2 + sklv*3    
	AddState ( ATKER , DEFER , STATE_HYFS , statelv , statetime )  
end 

-- Генератор миража 5 ур.
function SkillCooldown_HuanYinFaSheng5( sklv )
	local Cooldown = 3000
	return Cooldown
end

function Skill_HuanYinFaSheng5_Begin ( role , sklv ) 
end 

function Skill_HuanYinFaSheng5_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2809,ATKER) == 0 then return 0 end
	local sklv = 5 
	local statelv = sklv
	local statetime =  2 + sklv*3    
	AddState ( ATKER , DEFER , STATE_HYFS , statelv , statetime )  
end 

-- Скрытный корабль 1 ур
function SkillCooldown_ChuanZhiQianXing1( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_ChuanZhiQianXing1_Begin ( role , sklv )   
end

function Skill_ChuanZhiQianXing1_End ( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(2675,ATKER) == 0 then return 0 end
    local sklv = 1
	local statelv = sklv 
	local statetime = 5 + sklv * 15  
	AddState ( ATKER , DEFER , STATE_CZQX , statelv , statetime )  
end

function State_ChuanZhiQianXing_Add ( role , statelv ) 
end

function State_ChuanZhiQianXing_Rem  ( role , statelv ) 
end

-- Скрытный корабль 2 ур.
function SkillCooldown_ChuanZhiQianXing2( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_ChuanZhiQianXing2_Begin ( role , sklv ) 
end

function Skill_ChuanZhiQianXing2_End ( ATKER , DEFER , sklv )
	if fixipko_Skill_Compose(2739,ATKER) == 0 then return 0 end 
    local sklv = 2
	local statelv = sklv 
	local statetime = 5 + sklv * 15  
	AddState ( ATKER , DEFER , STATE_CZQX , statelv , statetime )  
end

-- Скрытный корабль 3 ур.
function SkillCooldown_ChuanZhiQianXing3( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_ChuanZhiQianXing3_Begin ( role , sklv ) 
end

function Skill_ChuanZhiQianXing3_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2763,ATKER) == 0 then return 0 end
    local sklv = 3
	local statelv = sklv 
	local statetime = 5 + sklv * 15  
	AddState ( ATKER , DEFER , STATE_CZQX , statelv , statetime )  
end

-- Скрытный корабль 4 ур
function SkillCooldown_ChuanZhiQianXing4( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_ChuanZhiQianXing4_Begin ( role , sklv ) 
end

function Skill_ChuanZhiQianXing4_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2787,ATKER) == 0 then return 0 end
    local sklv = 4
	local statelv = sklv 
	local statetime = 5 + sklv * 15  
	AddState ( ATKER , DEFER , STATE_CZQX , statelv , statetime )  
end

-- Скрытный корабль 5 ур.
function SkillCooldown_ChuanZhiQianXing5( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_ChuanZhiQianXing5_Begin ( role , sklv ) 
end

function Skill_ChuanZhiQianXing5_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2811,ATKER) == 0 then return 0 end
    local sklv = 5
	local statelv = sklv 
	local statetime = 5 + sklv * 15  
	AddState ( ATKER , DEFER , STATE_CZQX , statelv , statetime )  
end

-- Радар 1 ур.
function SkillCooldown_LeiDa1( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function SkillArea_Square_LeiDa1( sklv )
	local sklv = 1
	local side = 50 + sklv * 300
	SetSkillRange ( 3 , side ) 	
end 

function SkillArea_State_LeiDa1 ( sklv )
	local sklv = 1
	local statetime = 15 + sklv *55   
	local statelv = sklv 
	SetRangeState ( STATE_LEIDA , statelv  , statetime ) 		
end 

function Skill_LeiDa1_Begin ( role , sklv ) 
end

function Skill_LeiDa1_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2676,ATKER) == 0 then return 0 end
end 

function State_LeiDa_Add ( role , statelv ) 
end 

function State_LeiDa_Rem ( role , statelv ) 
end 

function State_LeiDa_Tran ( statelv ) 
	return 1     
end

-- Радар 2 ур.
function SkillCooldown_LeiDa2( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function SkillArea_Square_LeiDa2( sklv )
    local sklv = 2
	local side = 50 + sklv * 300 
	SetSkillRange ( 3 , side ) 	
end 

function SkillArea_State_LeiDa2 ( sklv )
    local sklv = 2
	local statetime = 15 + sklv *55   
	local statelv = sklv 
	SetRangeState ( STATE_LEIDA , statelv  , statetime ) 		
end 

function Skill_LeiDa2_Begin ( role , sklv ) 
end

function Skill_LeiDa2_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2740,ATKER) == 0 then return 0 end
end 

-- Радар 3 ур.
function SkillCooldown_LeiDa3( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function SkillArea_Square_LeiDa3( sklv )
    local sklv = 3
	local side = 50 + sklv * 300 
	SetSkillRange ( 3 , side ) 	
end 

function SkillArea_State_LeiDa3 ( sklv )
    local sklv = 3
	local statetime = 15 + sklv *55   
	local statelv = sklv 
	SetRangeState ( STATE_LEIDA , statelv  , statetime ) 		
end 

function Skill_LeiDa3_Begin ( role , sklv ) 
end

function Skill_LeiDa3_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2764,ATKER) == 0 then return 0 end
end 

-- Радар 4 ур.
function SkillCooldown_LeiDa4( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function SkillArea_Square_LeiDa4( sklv )
    local sklv = 4
	local side = 50 + sklv * 300 
	SetSkillRange ( 3 , side ) 	
end 

function SkillArea_State_LeiDa4 ( sklv )
    local sklv = 4
	local statetime = 15 + sklv *55   
	local statelv = sklv 
	SetRangeState ( STATE_LEIDA , statelv  , statetime ) 		
end 

function Skill_LeiDa4_Begin ( role , sklv ) 
end

function Skill_LeiDa4_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2788,ATKER) == 0 then return 0 end
end 

-- Радар 5 ур.
function SkillCooldown_LeiDa5( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function SkillArea_Square_LeiDa5( sklv )
    local sklv = 5
	local side = 50 + sklv * 300 
	SetSkillRange ( 3 , side ) 	
end 

function SkillArea_State_LeiDa5 ( sklv )
    local sklv = 5
	local statetime = 15 + sklv *55   
	local statelv = sklv 
	SetRangeState ( STATE_LEIDA , statelv  , statetime ) 		
end 

function Skill_LeiDa5_Begin ( role , sklv ) 
end

function Skill_LeiDa5_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2812,ATKER) == 0 then return 0 end
end 

-- Ремонт корпуса 1 ур.
function SkillCooldown_ChuanTiXiuFu1( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_ChuanTiXiuFu1_Begin ( role , Item ) 
end

function Skill_ChuanTiXiuFu1_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(1150,ATKER) == 0 then return 0 end
    local sklv = 1
	local hpdmg = -math.random ( 450 , 650 )*( sklv * 1.5 )   
	Hp_Endure_Dmg ( DEFER , hpdmg ) 
	ALLExAttrSet(role)
end

function State_ChuanTiXiuFu_Add ( role , statelv )
end 

function State_ChuanTiXiuFu_Rem ( role , statelv ) 
end

-- Ремонт корпуса 2 ур.
function SkillCooldown_ChuanTiXiuFu2( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_ChuanTiXiuFu2_Begin ( role , Item ) 
end

function Skill_ChuanTiXiuFu2_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2734,ATKER) == 0 then return 0 end
    local sklv = 2
	local hpdmg = -math.random ( 450 , 650 )*( sklv * 1.5 )   
	Hp_Endure_Dmg ( DEFER , hpdmg ) 
	ALLExAttrSet(role)
end

-- Ремонт корпуса 3 ур.
function SkillCooldown_ChuanTiXiuFu3( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_ChuanTiXiuFu3_Begin ( role , Item ) 
end

function Skill_ChuanTiXiuFu3_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2758,ATKER) == 0 then return 0 end
    local sklv = 3
	local hpdmg = -math.random ( 450 , 650 )*( sklv * 1.5 )   
	Hp_Endure_Dmg ( DEFER , hpdmg ) 
	ALLExAttrSet(role)
end

-- Ремонт корпуса 4 ур.
function SkillCooldown_ChuanTiXiuFu4( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_ChuanTiXiuFu4_Begin ( role , Item ) 
end

function Skill_ChuanTiXiuFu4_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2782,ATKER) == 0 then return 0 end
    local sklv = 4
	local hpdmg = -math.random ( 450 , 650 )*( sklv * 1.5 )  
	Hp_Endure_Dmg ( DEFER , hpdmg ) 
	ALLExAttrSet(role)
end

-- Ремонт корпуса 5 ур.
function SkillCooldown_ChuanTiXiuFu5( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_ChuanTiXiuFu5_Begin ( role , Item ) 
end

function Skill_ChuanTiXiuFu5_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2806,ATKER) == 0 then return 0 end
    local sklv = 5
	local hpdmg = -math.random ( 450 , 650 )*( sklv * 1.5 )   
	Hp_Endure_Dmg ( DEFER , hpdmg ) 
	ALLExAttrSet(role)
end

-- Создание еды 1 ур.
function SkillCooldown_ShiWuZaiSheng1( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_ShiWuZaiSheng1_Begin ( role , Item ) 
end

function Skill_ShiWuZaiSheng1_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(1151,ATKER) == 0 then return 0 end
    local sklv = 1
	local sp_sum = 650 * sklv
    local sp = GetChaAttr(DEFER, ATTR_SP) 
	sp=sp+sp_sum
	mxsp = GetChaAttr(DEFER,ATTR_MXSP) 
	if sp > mxsp 
	then    
	   sp = mxsp
    end 
	SetCharaAttr ( sp , DEFER , ATTR_SP ) 
end
	
function State_ShiWuZaiSheng_Add ( role , statelv ) 
end 

function State_ShiWuZaiSheng_Rem ( role , statelv ) 
end

-- Создание еды 2 ур.
function SkillCooldown_ShiWuZaiSheng2( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_ShiWuZaiSheng2_Begin ( role , Item ) 
end

function Skill_ShiWuZaiSheng2_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2735,ATKER) == 0 then return 0 end
    local sklv = 2
	local sp_sum = 650 * sklv
    local sp = GetChaAttr(DEFER, ATTR_SP) 
	sp=sp+sp_sum
	mxsp = GetChaAttr(DEFER,ATTR_MXSP) 
	if sp > mxsp 
	then    
	   sp = mxsp
    end 
	SetCharaAttr ( sp , DEFER , ATTR_SP ) 
end
	
-- Создание еды 3 ур.
function SkillCooldown_ShiWuZaiSheng3( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_ShiWuZaiSheng3_Begin ( role , Item )  
end

function Skill_ShiWuZaiSheng3_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2759,ATKER) == 0 then return 0 end
    local sklv = 3
	local sp_sum = 650 * sklv
    local sp = GetChaAttr(DEFER, ATTR_SP) 
	sp=sp+sp_sum
	mxsp = GetChaAttr(DEFER,ATTR_MXSP) 
	if sp > mxsp 
	then    
	   sp = mxsp
    end 
	SetCharaAttr ( sp , DEFER , ATTR_SP ) 
end
	
-- Создание еды 4 ур.
function SkillCooldown_ShiWuZaiSheng4( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_ShiWuZaiSheng4_Begin ( role , Item ) 
end

function Skill_ShiWuZaiSheng4_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2783,ATKER) == 0 then return 0 end
    local sklv = 4
	local sp_sum = 650 * sklv
    local sp = GetChaAttr(DEFER, ATTR_SP) 
	sp=sp+sp_sum
	mxsp = GetChaAttr(DEFER,ATTR_MXSP) 
	if sp > mxsp 
	then    
	   sp = mxsp
    end 
	SetCharaAttr ( sp , DEFER , ATTR_SP ) 
end
	
-- Создание еды 5 ур.
function SkillCooldown_ShiWuZaiSheng5( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_ShiWuZaiSheng5_Begin ( role , Item ) 
end

function Skill_ShiWuZaiSheng5_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2807,ATKER) == 0 then return 0 end
    local sklv = 5
	local sp_sum = 650 * sklv
    local sp = GetChaAttr(DEFER, ATTR_SP) 
	sp=sp+sp_sum
	mxsp = GetChaAttr(DEFER,ATTR_MXSP) 
	if sp > mxsp 
	then    
	   sp = mxsp
    end 
	SetCharaAttr ( sp , DEFER , ATTR_SP ) 
end
	
-- Трупная пуля 1 ур.
function SkillCooldown_FuShiDan1( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_FuShiDan1_Begin ( role , Item ) 
end

function Skill_FuShiDan1_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(1152,ATKER) == 0 then return 0 end
    local sklv = 1    
	local statelv = sklv
	local statetime = 2 + sklv*8
    AddState ( ATKER , DEFER , STATE_FSD , statelv , statetime )
end
	
function State_FuShiDan_Add ( role , statelv )  
	local sp_sum = -80
    local sp = GetChaAttr(role, ATTR_SP) 
	sp=sp+sp_sum
	if sp < 0 
	then    
	   sp = 0                       
    end 
	SetCharaAttr ( sp , role , ATTR_SP ) 
	ALLExAttrSet(role)
end 

function State_FuShiDan_Rem ( role , statelv ) 
end

-- Трупная пуля 2 ур.
function SkillCooldown_FuShiDan2( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_FuShiDan2_Begin ( role , Item ) 
end

function Skill_FuShiDan2_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2736,ATKER) == 0 then return 0 end
    local sklv = 2    
	local statelv = sklv
	local statetime = 2 + sklv*8
    AddState ( ATKER , DEFER , STATE_FSD , statelv , statetime )
end
	
-- Трупная пуля 3 ур.
function SkillCooldown_FuShiDan3( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_FuShiDan3_Begin ( role , Item ) 
end

function Skill_FuShiDan3_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2760,ATKER) == 0 then return 0 end
    local sklv = 3    
	local statelv = sklv
	local statetime = 2 + sklv*8
    AddState ( ATKER , DEFER , STATE_FSD , statelv , statetime )
end
	
-- Трупная пуля 4 ур
function SkillCooldown_FuShiDan4( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_FuShiDan4_Begin ( role , Item ) 
end

function Skill_FuShiDan4_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2784,ATKER) == 0 then return 0 end
    local sklv = 4    
	local statelv = sklv
	local statetime = 2 + sklv*8
    AddState ( ATKER , DEFER , STATE_FSD , statelv , statetime )
end

-- Трупная пуля 5 ур.
function SkillCooldown_FuShiDan5( sklv ) 
	local Cooldown = 3000 
	return Cooldown 
end 

function Skill_FuShiDan5_Begin ( role , Item ) 
end

function Skill_FuShiDan5_End ( ATKER , DEFER , sklv ) 
	if fixipko_Skill_Compose(2808,ATKER) == 0 then return 0 end
    local sklv = 5    
	local statelv = sklv
	local statetime = 2 + sklv*8
    AddState ( ATKER , DEFER , STATE_FSD , statelv , statetime )
end

-- Водяная мина, 1 ур.
function SkillArea_Circle_Czsl1 ( sklv )
    local sklv=1
	local side = 650 + math.floor ( sklv * 50 ) 
	SetSkillRange ( 4 , side )   
end 

function SkillCooldown_Czsl1( sklv )
	local Cooldown = 6000
	return Cooldown
end
 
function Skill_Czsl1_Begin ( role , sklv ) 
end 

function Skill_Czsl1_End ( ATKER , DEFER , sklv ) 
    local sklv=1
	local statetime = sklv + 3
	local statelv = sklv
	if ValidCha(ATKER) == 0 then 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		return 
	end 
	local dmg = 20 
	Hp_Endure_Dmg ( DEFER , dmg ) 
	SetCharaAttr ( 4 , ATKER , ATTR_HP ) 
	AddState ( ATKER , ATKER , STATE_Slrs , statelv , statetime ) 
	AddState ( ATKER , DEFER , STATE_Slrs , statelv , statetime )
end 

function State_Slrs_Add ( role , statelv )    
	local hpdmg =  statelv * 2 
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role) 
end 

function State_Slrs_Rem ( role , statelv ) 
end 

function State_Slrs_Tran ( statelv ) 
	return 1
end

-- Водяная мина 2 ур.
function SkillArea_Circle_Czsl2 ( sklv )
    local sklv=2
	local side = 650 + math.floor ( sklv * 50 ) 
	SetSkillRange ( 4 , side )   
end 

function SkillCooldown_Czsl2( sklv )
	local Cooldown = 6000
	return Cooldown
end 

function Skill_Czsl2_Begin ( role , sklv ) 
end 

function Skill_Czsl2_End ( ATKER , DEFER , sklv ) 
    local sklv=2
	local statetime = sklv + 3
	local statelv = sklv
	if ValidCha(ATKER) == 0 then 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		return 
	end 
	local dmg = 40
	Hp_Endure_Dmg ( DEFER , dmg ) 
	SetCharaAttr ( 8 , ATKER , ATTR_HP ) 
	AddState ( ATKER , ATKER , STATE_Slrs , statelv , statetime ) 
	AddState ( ATKER , DEFER , STATE_Slrs , statelv , statetime ) 
end 

-- Водяная мина 3 ур.
function SkillArea_Circle_Czsl3 ( sklv )
    local sklv=3
	local side = 650 + math.floor ( sklv * 50 ) 
	SetSkillRange ( 4 , side )   
end 

function SkillCooldown_Czsl3( sklv )
	local Cooldown = 6000
	return Cooldown
end

function Skill_Czsl3_Begin ( role , sklv ) 
end 

function Skill_Czsl3_End ( ATKER , DEFER , sklv ) 
	local sklv=3
	local statetime = sklv + 3
	local statelv = sklv
	if ValidCha(ATKER) == 0 then 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		return 
	end 
	local dmg = 60 
	Hp_Endure_Dmg ( DEFER , dmg ) 
	SetCharaAttr ( 12 , ATKER , ATTR_HP ) 
	AddState ( ATKER , ATKER , STATE_Slrs , statelv , statetime ) 
	AddState ( ATKER , DEFER , STATE_Slrs , statelv , statetime ) 
end 

-- Водяная мина 4 ур.
function SkillArea_Circle_Czsl4 ( sklv )
    local sklv=4
	local side = 650 + math.floor ( sklv * 50 ) 
	SetSkillRange ( 4 , side )   
end 

function SkillCooldown_Czsl4( sklv )
	local Cooldown = 6000
	return Cooldown
end 

function Skill_Czsl4_Begin ( role , sklv )
end 

function Skill_Czsl4_End ( ATKER , DEFER , sklv ) 
	local sklv=4
	local statetime = sklv + 3
	local statelv = sklv
	if ValidCha(ATKER) == 0 then 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		return 
	end 
	local dmg = 80
	Hp_Endure_Dmg ( DEFER , dmg ) 
	SetCharaAttr ( 16 , ATKER , ATTR_HP ) 
	AddState ( ATKER , ATKER , STATE_Slrs , statelv , statetime ) 
	AddState ( ATKER , DEFER , STATE_Slrs , statelv , statetime )
end 

-- Водяная мина 5 ур.
function SkillArea_Circle_Czsl5 ( sklv )
    local sklv=5
	local side = 650 + math.floor ( sklv * 50 ) 
	SetSkillRange ( 4 , side )   
end 

function SkillCooldown_Czsl5( sklv )
	local Cooldown = 6000
	return Cooldown
end

function Skill_Czsl5_Begin ( role , sklv ) 
end 

function Skill_Czsl5_End ( ATKER , DEFER , sklv ) 
	local sklv=5
	local statetime = sklv + 3
	local statelv = sklv

	if ValidCha(ATKER) == 0 then 
		return 
	end 
	if ValidCha(DEFER) == 0 then 
		return 
	end 
	local dmg = 100
	Hp_Endure_Dmg ( DEFER , dmg ) 
	SetCharaAttr ( 20 , ATKER , ATTR_HP ) 
	AddState ( ATKER , ATKER , STATE_Slrs , statelv , statetime ) 
	AddState ( ATKER , DEFER , STATE_Slrs , statelv , statetime ) 
end

-- Взрываюшаяся овечка ур. 1
function SkillSp_Myzb1 ( sklv )	
	local sp_reduce = 20 
	return sp_reduce 
end 

function SkillArea_Circle_Myzb1 ( sklv )  
	local sklv=1
	local side = 550 + math.floor ( sklv * 50 ) 
	SetSkillRange ( 4 , side )  
end

function SkillCooldown_Myzb1( sklv )
	local Cooldown = 6000
	return Cooldown
end

function Skill_Myzb1_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Myzb1 ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 	

function Skill_Myzb1_End ( ATKER , DEFER , sklv )
	local sklv = 1
	local statetime = sklv + 3
	local statelv = sklv  
	local dmg = 20 
	Hp_Endure_Dmg ( DEFER , dmg )
    SetCharaAttr ( 2 , ATKER , ATTR_HP ) 
	AddState ( ATKER , ATKER , STATE_Myrs , statelv , statetime )
	AddState ( ATKER , DEFER , STATE_Myrs , statelv , statetime )
end 

function State_Myrs_Add ( role , statelv ) 
	local hpdmg = statelv * 2  
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role) 
end 

function State_Myrs_Rem ( role , statelv ) 
end 

function State_Myrs_Tran ( statelv ) 
	return 1   
end 

-- Взрывающаяся овечка 2 ур.
function SkillSp_Myzb2 ( sklv )	
	local sp_reduce = 20 
	return sp_reduce 
end 

function SkillArea_Circle_Myzb2 ( sklv )
	local sklv=2
	local side = 550 + math.floor ( sklv * 50 ) 
	SetSkillRange ( 4 , side )  
end

function SkillCooldown_Myzb2( sklv )
	local Cooldown = 6000
	return Cooldown
end

function Skill_Myzb2_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Myzb1 ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Myzb2_End ( ATKER , DEFER , sklv )
	local sklv = 2
	local statetime = sklv + 3
	local statelv = sklv  
	local dmg = 40 
	Hp_Endure_Dmg ( DEFER , dmg )
    SetCharaAttr ( 8 , ATKER , ATTR_HP ) 
	AddState ( ATKER , ATKER , STATE_Myrs , statelv , statetime )
	AddState ( ATKER , DEFER , STATE_Myrs , statelv , statetime )
end 


-- Взрывающаяся овечка 3 ур.
function SkillSp_Myzb3 ( sklv )	
	local sp_reduce = 20 
	return sp_reduce 
end 

function SkillArea_Circle_Myzb3 ( sklv )
	local sklv=3
	local side = 550 + math.floor ( sklv * 50 ) 
	SetSkillRange ( 4 , side )  
end

function SkillCooldown_Myzb3( sklv )
	local Cooldown = 6000
	return Cooldown
end

function Skill_Myzb3_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Myzb1 ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_Myzb3_End ( ATKER , DEFER , sklv )
	local sklv = 3
	local statetime = sklv + 3
	local statelv = sklv  
	local dmg = 60
	Hp_Endure_Dmg ( DEFER , dmg )
    SetCharaAttr ( 12 , ATKER , ATTR_HP ) 
	AddState ( ATKER , ATKER , STATE_Myrs , statelv , statetime )
	AddState ( ATKER , DEFER , STATE_Myrs , statelv , statetime )
end 
 
-- Взрывающаяся овечка 4 ур.
function SkillSp_Myzb4 ( sklv )	
	local sp_reduce = 20 
	return sp_reduce 
end 

function SkillArea_Circle_Myzb4 ( sklv )
	local sklv=4
	local side = 550 + math.floor ( sklv * 50 ) 
	SetSkillRange ( 4 , side )  
end 

function SkillCooldown_Myzb4( sklv )
	local Cooldown = 6000
	return Cooldown
end

function Skill_Myzb4_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Myzb1 ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 	

function Skill_Myzb4_End ( ATKER , DEFER , sklv )
	local sklv = 4
	local statetime = sklv + 3
	local statelv = sklv  
	local dmg = 80
	Hp_Endure_Dmg ( DEFER , dmg )
    SetCharaAttr ( 16 , ATKER , ATTR_HP ) 
	AddState ( ATKER , ATKER , STATE_Myrs , statelv , statetime )
	AddState ( ATKER , DEFER , STATE_Myrs , statelv , statetime )
end

-- Взрывающаяся овечка 5 ур.
function SkillSp_Myzb5 ( sklv )	
	local sp_reduce = 20 
	return sp_reduce 
end 

function SkillArea_Circle_Myzb5 ( sklv )
	local sklv=5
	local side = 400 + math.floor ( sklv * 50 ) 
	SetSkillRange ( 4 , side )  
end

function SkillCooldown_Myzb5( sklv )
	local Cooldown = 6000
	return Cooldown
end

function Skill_Myzb5_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_Myzb1 ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 	

function Skill_Myzb5_End ( ATKER , DEFER , sklv )
	local sklv = 5
	local statetime = sklv + 3
	local statelv = sklv  
	local dmg = 100
	Hp_Endure_Dmg ( DEFER , dmg )
    SetCharaAttr ( 20 , ATKER , ATTR_HP ) 
	AddState ( ATKER , ATKER , STATE_Myrs , statelv , statetime )
	AddState ( ATKER , DEFER , STATE_Myrs , statelv , statetime )
end 


-- Замедление
--
--function Skill_JST_End ( ATKER , DEFER , sklv ) 
--
--		local  sklv = 1
--	        local statelv = sklv
--	        local statetime = 3 
--		AddState ( ATKER , DEFER , STATE_LST , statelv , statetime ) 
--end 
--
--function State_JST_Add( role , statelv ) 
--        
--        local statelv = 1
--	local mspdsa_dif =  0.5 * statelv
--	--local mspdsa_dif = 1 
--	local mspdsa = math.floor (  (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX ) 
--	
--	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
--	ALLExAttrSet(role)  
--end 
--
--function State_JST_Rem( role , statelv ) 
--        local statelv = 1
--	local mspdsa_dif =  0.5 * statelv
--	--local mspdsa_dif = 1
--	local mspdsa = math.floor (  (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX ) 
--        SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
--	ALLExAttrSet(role)  
--end
--


-- Дьявольская башня


--
function Skill_XMT_End ( ATKER , DEFER , sklv ) 
--         
--	--local statelv = 1
--	--local statetime = 1
--	local sklv = 1
--	local sp_sum = -50
--        local sp = GetChaAttr(DEFER, ATTR_SP) 
--	sp=sp+sp_sum
--	if sp < 0 
--	then    
--	   sp = 0                       
--        end 
--	SetCharaAttr ( sp , DEFER , ATTR_SP ) 
--	ALLExAttrSet(DEFER)
--        --AddState ( ATKER , DEFER , STATE_FSD , statelv , statetime )
end
--


-- Атака змеи


--function Skill_FeiShe_End ( ATKER , DEFER , sklv ) 
--	
--	
--	local dmg = 2000
--	Hp_Endure_Dmg ( DEFER , dmg )  
--
--end 


-- Удар Духа
function Skill_JSBT_End ( ATKER , DEFER , sklv )
	local Sta_role = Sta ( DEFER ) 
	hpdmg =300 +  math.max ( 50 , ( 150 - Sta_role ) )  * 10
	Hp_Endure_Dmg ( DEFER, hpdmg )
end 
 
-- Дьявольское проклятие
function SkillSp_EmoYuYan ( sklv )
	local sp_reduce = 155
	return sp_reduce
end 

function SkillArea_Circle_EmoYuYan ( sklv )
	--local sklv=1
	local side = 550 + math.floor ( sklv * 50 ) 
	SetSkillRange ( 4 , side )  
end

function SkillCooldown_EmoYuYan( sklv )
	local Cooldown = 30000
	return Cooldown
end

function Skill_EmoYuYan_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_EmoYuYan ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end

function Skill_EmoYuYan_End ( ATKER , DEFER , sklv )
	--local sklv = 1
	local statetime = 15
	local statelv = sklv 
	local dmg = 300
	Hp_Endure_Dmg ( DEFER , dmg )
	AddState ( ATKER , DEFER , STATE_EMYY , statelv , statetime )
end 

function State_EmoYuYan_Add ( role , statelv ) 
	local hpdmg = math.floor ( 45 + ( statelv * 35 ) )
	Hp_Endure_Dmg ( role , hpdmg ) 
	ALLExAttrSet(role) 
end 

function State_EmoYuYan_Rem ( role , statelv ) 
end

-- Священный суд
function SkillArea_Circle_SSSP( sklv )
	local side = 1000 
	SetSkillRange ( 4 , side  )  
end 

function SkillCooldown_SSSP( sklv )
	local Cooldown = 30000
	return Cooldown
end

function SkillSp_SSSP ( sklv )
	local sp_reduce = 120 + sklv * 20
	return sp_reduce 
end 

function Skill_SSSP_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_SSSP ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_SSSP_End ( ATKER , DEFER , sklv )
	local dmg_1 = 500 + sklv * 500
	local dmg_2 = -500 - sklv * 500
	local reg1 = 0
	reg1 = IsChaInRegion( ATKER, 2 )
	if reg1 == 1 then
		dmg_1 = 0
	end
	local reg2 = 0
	reg2 = IsChaInRegion( DEFER, 2 )
	if reg2 == 1 then
		dmg_1 = 0
	end
	if is_friend(ATKER, DEFER) == 0 then
	   Hp_Endure_Dmg ( DEFER , dmg_1 ) 
	else
	   Hp_Endure_Dmg ( DEFER , dmg_2 )
	end 
end 

-- Удар легиона
function SkillSp_ShouWangS ( sklv )
	local sp_reduce = 125  
	return sp_reduce 
end

function SkillCooldown_ShouWangS( sklv )
	local Cooldown = 30000
	return Cooldown
end

function SkillArea_Circle_ShouWangS ( sklv )
	local side = 800
	SetSkillRange ( 4 , side  )
end 

function Skill_ShouWangS_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce 
	sp_reduce = SkillSp_ShouWangS ( sklv )
	if sp - sp_reduce < 0 then 
		SkillUnable(role) 
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_ShouWangS_End ( ATKER , DEFER , sklv )
	local statelv = sklv
	local statetime = 5
	local dmg = math.floor ( ( 500 * statelv ) + 500 )
	Hp_Endure_Dmg ( DEFER , dmg )
	statelv = statelv * 2
	AddState ( ATKER, DEFER , STATE_DZFS , statelv , statetime )
end 

-- Пушка грома
function SkillArea_Line_ArfGX ( sklv )
	local lenth = 900 + sklv * 30  
	local width = 250 + sklv * 10 
	SetSkillRange ( 1 , lenth , width  )  
end

function SkillCooldown_ArfGX( sklv )
	local Cooldown = 30000
	return Cooldown
end

function SkillSp_ArfGX ( sklv )
	local sp_reduce = 105   
	return sp_reduce 
end

function Skill_ArfGX_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce  = SkillSp_ArfGX ( sklv )  
	if sp - sp_reduce < 0 then 
		SkillUnable(role) 
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_ArfGX_End ( ATKER , DEFER , sklv )
	local statelv = sklv 
	local dmg = math.floor ( ( 500 * statelv ) + 500 )
	Hp_Endure_Dmg ( DEFER , dmg ) 
end 

-- Духовный удар
function SkillArea_Circle_WuYin( sklv )
	local side = 800 
	SetSkillRange ( 4 , side  )  
end 

function SkillCooldown_WuYin( sklv )
	local Cooldown = 30000
	return Cooldown
end

function SkillSp_WuYin ( sklv )
	local sp_reduce = 125  
	return sp_reduce 
end 

function Skill_WuYin_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce = SkillSp_WuYin ( sklv ) 
	if sp - sp_reduce < 0 then 
		SkillUnable(role)   
		return 
	end 
	Sp_Red (role , sp_reduce ) 
end 

function Skill_WuYin_End ( ATKER , DEFER , sklv )
	local statelv = sklv
	local dmg = math.floor ( ( 500 * statelv )  + 500 )
	Hp_Endure_Dmg ( DEFER , dmg ) 
end 

-- Сверхсознание
function SkillSp_XYSYF ( sklv )
	local sp_reduce = 160  
	return sp_reduce 
end

function SkillCooldown_XYSYF( sklv )
	local Cooldown = 30000
	return Cooldown
end

function SkillArea_Circle_XYSYF ( sklv )
	local side = 800 
	SetSkillRange ( 4 , side  )
end 

function SkillArea_State_XYSYF ( sklv )
	local statetime = 15 
	local statelv = sklv 
	SetRangeState ( STATE_YNZL , statelv  , statetime )
end 

function Skill_XYSYF_Begin ( role , sklv ) 
	local sp = Sp(role) 
	local sp_reduce 
	sp_reduce = SkillSp_XYSYF ( sklv )
	if sp - sp_reduce < 0 then 
		SkillUnable(role)  
		return 
	end 
	Sp_Red (role , sp_reduce )
end 

function Skill_XYSYF_End ( ATKER , DEFER , sklv ) 
end 

function State_XYSYF_Add ( role , statelv ) 
	local dmg = math.floor ( 200 + ( statelv * 100 ) )
	Hp_Endure_Dmg ( role , dmg ) 
end 

function State_XYSYF_Rem ( role , statelv ) 
end 

function State_XYSYF_Tran ( statelv )
	return 3
end

-- Короткий посох (Дистанционная атака у клеров и смов)
function Skill_lackart_Begin ( role , sklv )  
end

--Дистанционка БК И СМ
function Skill_lackart_End ( ATKER , DEFER , sklv )  
		if ValidCha(ATKER) == 0 then 
			LG ( "luascript_err" , "function Skill_lackart_End : ATKER as null" ) 
			return 
		end 
		if ValidCha(DEFER) == 0 then 
			LG ( "luascript_err" , "function Skill_lackart_End : DEFER as null" ) 
			return 
		end 
		local ChaName_ATKER = GetChaDefaultName ( ATKER )
		local ChaName_DEFER = GetChaDefaultName ( DEFER )
		dmg = Atk_Dmg( ATKER, DEFER )
		Hp_Endure_Dmg( DEFER , dmg, ATKER )
		Take_Atk_ItemURE ( ATKER )
		Take_Def_ItemURE ( DEFER )

		local Check_Nianshou = CheckItem_Nianshou ( ATKER )

		if Check_Nianshou == 1 then
			local P_R = 0.1
			local job = GetChaAttr( ATKER , ATTR_JOB )
			if job == 5 then
P_R = 0.03
			end
			local Percentage = Percentage_Random ( P_R )
			if Percentage == 1 then
AddState ( ATKER , DEFER , STATE_XY , 1 , 1 )
SystemNotice ( ATKER , "Вы получили благословение от Богини. Стан цели в течении 1 секунды. ")
			end
		end

		Check_Ys_Rem ( ATKER , DEFER)
end

-- Фикс мануфака из трюма @see http://forum.maindev.ru/showpost.php?p=83348&postcount=8
function fixipko_Skill_Compose(itemid,role)
	local NocLock =	KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Ваш инвентарь заблокирован")
		return 0
	end
	local atk_role = TurnToCha(role)
	local item_count = CheckBagItem(atk_role, itemid)
	if item_count <= 0 then
		SkillUnable(atk_role)
		SystemNotice(atk_role, "У вас нет нужных предметов для применения навыка")
		return 0
	end
	DelBagItem(atk_role, itemid, 1)
	return 1
end

-- Пассивный скилл перерождения - Сила перерождения ID=459
function Skill_Rbmp_Use( role , sklv ) 
	local statelv  = sklv  
	local rb_bonus = (-1) * ( 0.050 + 0.005 ) * sklv -- Increases by 5.5%
	local mnatksa  = math.floor (  (MnatkSa (role) - rb_bonus ) * ATTR_RADIX )
	local mxatksa  = math.floor (  (MxatkSa (role) - rb_bonus ) * ATTR_RADIX )
	local defsa    = math.floor (  (DefSa   (role) - rb_bonus ) * ATTR_RADIX )
	local ResistSa = math.floor (  (ResistSa(role) - rb_bonus ) * ATTR_RADIX )
	SetCharaAttr( mnatksa  , role , ATTR_STATEC_MNATK )
	SetCharaAttr( mxatksa  , role , ATTR_STATEC_MXATK )
	SetCharaAttr( defsa    , role , ATTR_STATEC_DEF   ) 
	SetCharaAttr( ResistSa , role , ATTR_STATEC_PDEF  )
	ALLExAttrSet(role)
end 

function Skill_Rbmp_Unuse( role , sklv ) 
	local statelv  = sklv  
	local rb_bonus = (-1) * ( 0.050 + 0.005 ) * sklv -- Increases by 5.5%
	local mnatksa  = math.floor (  (MnatkSa (role) + rb_bonus ) * ATTR_RADIX ) 
	local mxatksa  = math.floor (  (MxatkSa (role) + rb_bonus ) * ATTR_RADIX )
	local defsa    = math.floor (  (DefSa   (role) + rb_bonus ) * ATTR_RADIX ) 
	local ResistSa = math.floor (  (ResistSa(role) + rb_bonus ) * ATTR_RADIX )
	SetCharaAttr( mnatksa  , role , ATTR_STATEC_MNATK )
	SetCharaAttr( mxatksa  , role , ATTR_STATEC_MXATK )
	SetCharaAttr( defsa    , role , ATTR_STATEC_DEF   ) 
	SetCharaAttr( ResistSa , role , ATTR_STATEC_PDEF  )
	ALLExAttrSet(role)			 
end 

-- Георгиевская лента
function STATE_GEORGATK_Add ( role , sklv )
	SystemNotice( role , "Георгиевская лента увеличивает мощь твоей атаки")
	local bonus = (-1) * 0.1
	local mnatksa  = math.floor ( (MnatkSa (role) - bonus ) * ATTR_RADIX ) 
	local mxatksa  = math.floor ( (MxatkSa (role) - bonus ) * ATTR_RADIX )
	SetCharaAttr( mnatksa , role , ATTR_STATEC_MNATK )
	SetCharaAttr( mxatksa , role , ATTR_STATEC_MXATK )
	ALLExAttrSet(role)
end 

function STATE_GEORGATK_Rem ( role , sklv )
	local bonus = (-1) * 0.1
	local mnatksa  = math.floor ( (MnatkSa (role) + bonus ) * ATTR_RADIX ) 
	local mxatksa  = math.floor ( (MxatkSa (role) + bonus ) * ATTR_RADIX )
	SetCharaAttr( mnatksa , role , ATTR_STATEC_MNATK )
	SetCharaAttr( mxatksa , role , ATTR_STATEC_MXATK )
	ALLExAttrSet(role)
end

function STATE_GEORGDEF_Add ( role , sklv )
	SystemNotice( role , "Георгиевская лента увеличивает твою защиту") 
	local bonus = (-1) * 0.1
	local defsa = math.floor ( (DefSa   (role) - bonus ) * ATTR_RADIX )
	SetCharaAttr( defsa , role , ATTR_STATEC_DEF   )
	ALLExAttrSet(role)
end 

function STATE_GEORGDEF_Rem ( role , sklv ) 
	local bonus = (-1) * 0.1
	local defsa = math.floor ( (DefSa   (role) + bonus ) * ATTR_RADIX )
	SetCharaAttr( defsa , role , ATTR_STATEC_DEF   )
	ALLExAttrSet(role)
end

--Узы любви
function Skill_Qlzx_Begin ( role , sklv ) 
	local NocLock = KitbagLock( role, 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( role , "Инвентарь заблокирован")
		return
	end

	local item_count = CheckBagItem ( role , 2520 )

	if item_count <= 0 then  
		SystemNotice( role , "У Вас нет Кольца Влюбленных")
		return
	else
		local ring = GetChaItem2 ( role , 2 , 2520 )
		local Num_ATK_JZ = GetItemForgeParam ( ring , 1 )
		Num_ATK_JZ = TansferNum ( Num_ATK_JZ )
		local ID_ATK_Num = GetRoleID(role)
		local t = {} 
		t[0] = role 
		t[1] = GetTeamCha(role, 0 )
		t[2] = GetTeamCha(role, 1 )
		t[3] = GetTeamCha(role, 2 )
		t[4] = GetTeamCha(role, 3 )
		local i = 1
		for i = 1 , 4 , 1 do
			if t[i] ~= nil then
local item_count = CheckBagItem ( t[i] , 2520 )
if item_count == 1 then  
	local Item = GetChaItem2 ( t[i] , 2 , 2520 )
	local Num_JZ = GetItemForgeParam ( Item , 1 )
	Num_JZ = TansferNum ( Num_JZ )
	if Num_JZ == ID_ATK_Num  then
		local ID_Num = GetRoleID(t[i])
		if Num_ATK_JZ == ID_Num then
			local x, y = GetChaPos(t[i])
			local map_name = GetChaMapName (t[i])
			local map_name_pre = GetChaMapName (role)
			x = math.floor (x/100)
			y = math.floor (y/100)
			if (map_name_pre == map_name) and ( map_name == "prisonisland" or map_name == "guildwar" or map_name == "guildwar2" or map_name == "teampk" ) then
				SystemNotice ( role , "Нельзя использовать умение на данной карте" )
				SkillUnable(role)
				return
			end
			if (map_name_pre == map_name)
			or (map_name_pre == "mjing1" and map_name == "mjing2") or (map_name_pre == "mjing2" and map_name == "mjing1")
			or (map_name_pre == "mjing3" and map_name == "mjing4") or (map_name_pre == "mjing4" and map_name == "mjing3")
			or (map_name_pre == "abandonedcity" and map_name == "abandonedcity2") or (map_name_pre == "abandonedcity2" and map_name == "abandonedcity")
			or (map_name_pre == "abandonedcity" and map_name == "abandonedcity3") or (map_name_pre == "abandonedcity3" and map_name == "abandonedcity")
			or (map_name_pre == "abandonedcity3" and map_name == "abandonedcity2") or (map_name_pre == "abandonedcity2" and map_name == "abandonedcity3")
			or (map_name_pre == "puzzleworld" and map_name == "puzzleworld2") or (map_name_pre == "puzzleworld2" and map_name == "puzzleworld")
			or (map_name_pre == "garner" and map_name == "eastgoaf") or (map_name_pre == "eastgoaf" and map_name == "garner")
			or (map_name_pre == "garner" and map_name == "lonetower") or (map_name_pre == "lonetower" and map_name == "garner")
			or (map_name_pre == "eastgoaf" and map_name == "lonetower") or (map_name_pre == "lonetower" and map_name == "eastgoaf")
			or (map_name_pre == "magicsea" and map_name == "jialebi") or (map_name_pre == "jialebi" and map_name == "magicsea")
			or (map_name_pre == "hell" and map_name == "hell2") or (map_name_pre == "hell2" and map_name == "hell")
			or (map_name_pre == "hell" and map_name == "hell3") or (map_name_pre == "hell3" and map_name == "hell")
			or (map_name_pre == "hell2" and map_name == "hell3") or (map_name_pre == "hell3" and map_name == "hell2")
			or (map_name_pre == "magicsea" and map_name == "hell") or (map_name_pre == "hell" and map_name == "magicsea")
			or (map_name_pre == "magicsea" and map_name == "hell2") or (map_name_pre == "hell2" and map_name == "magicsea")
			or (map_name_pre == "magicsea" and map_name == "hell3") or (map_name_pre == "hell3" and map_name == "magicsea")
			or (map_name_pre == "magicsea" and map_name == "hell4") or (map_name_pre == "hell4" and map_name == "magicsea")
			or (map_name_pre == "magicsea" and map_name == "hell5") or (map_name_pre == "hell5" and map_name == "magicsea")
			or (map_name_pre == "heilong" and map_name == "heilong2") or (map_name_pre == "heilong2" and map_name == "heilong")
			then
	SystemNotice ( role , "Приятного путешествия!" )
	local effect = 370          -- ID эффекта из sceneffectinfo.txt
    PlayEffect (t[i], effect )      -- Заставляем проигрывать эффект при открытии сундука 	

			else
SystemNotice ( role , "Нельзя использовать умение на данной карте" )
SkillUnable(role)
return
			end
			GoTo(role, x, y, map_name)
			return
		end
	end
end
			end
			if i == 4 then
SystemNotice( role , "В Вашем отряде нет Вашей половинки")
			end
		end
	end
	
end 

--Кольцо холода
function SkillArea_Circle_BDH ( sklv )
	local side = 500 
	SetSkillRange ( 4 , side  ) 
end

function Skill_BDH_Begin ( role , sklv ) 
end

function Skill_BDH_End( ATKER , DEFER , sklv )
	local sklv = 1
	local statelv = sklv 
	local statetime = 5
	AddState ( ATKER , DEFER , STATE_BDH , statelv , statetime )
end

function State_BDH_Add ( role , statelv )
	local statelv = 1
	local mspdsa_dif =  0.5 * statelv
	local aspdsa_dif = 0.6
	local mspdsa = math.floor (  (MspdSa(role) - mspdsa_dif ) * ATTR_RADIX ) 
	local aspdsa = ( AspdSa(role) - aspdsa_dif) * ATTR_RADIX
	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD )
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end

function State_BDH_Rem ( role , statelv ) 
	local statelv = 1
	local mspdsa_dif =  0.5 * statelv
	local aspdsa_dif = 0.6
	local mspdsa = math.floor (  (MspdSa(role) + mspdsa_dif ) * ATTR_RADIX ) 
	local aspdsa = ( AspdSa(role) + aspdsa_dif) * ATTR_RADIX
	SetCharaAttr( aspdsa , role , ATTR_STATEC_ASPD )
	SetCharaAttr( mspdsa , role , ATTR_STATEC_MSPD ) 
	ALLExAttrSet(role)  
end

function Skill_DLJ_End( ATKER , DEFER , sklv ) 
	local statelv = 10 
	AddState ( ATKER , DEFER , STATE_BDJ , statelv , statetime )
	local hpdmg = 1150 
	Hp_Endure_Dmg ( DEFER , hpdmg )
end

function Skill_Shzzh_End( ATKER , DEFER , sklv )
	local x, y = GetChaPos( ATKER )
		local x1 = x
		local x2 = x +600
		local x3 = x -600
		local x4 = x +400
		local y1 = y +600
		local y2 = y -600
		local y3 = y -600
		local y4 = y -400
		local new1 = CreateCha(1122, x1, y1, 145, 50)
		local new2 = CreateCha(1123, x2, y2, 145, 50)
		local new3 = CreateCha(1124, x3, y3, 145, 50)
		local new4 = CreateCha(1125, x4, y4, 145, 50)
		SetChaLifeTime(new1, 900000)
		SetChaLifeTime(new2, 900000)
		SetChaLifeTime(new3, 900000)
		SetChaLifeTime(new4, 900000)
end

function SkillCooldown_TTzh1( sklv )
	local Cooldown = 3600000
	return Cooldown
end

function SkillArea_Circle_TTZh1( sklv )
	local side = 1000 
	SetSkillRange ( 4 , side  )  
end

function Skill_DBQ_End( ATKER , DEFER , sklv ) 
	local statelv = 10 
	AddState ( ATKER , DEFER , STATE_BDJ , statelv , statetime )
	local hpdmg = 1300 
	Hp_Endure_Dmg ( DEFER , hpdmg )
end

function Skill_EMFR_End( ATKER , DEFER , sklv ) 
	local statelv = 10 
	AddState ( ATKER , DEFER , STATE_BDJ , statelv , statetime )
	local hpdmg = 1860 
	Hp_Endure_Dmg ( DEFER , hpdmg )
end

function Skill_XLJ_End( ATKER , DEFER , sklv ) 
	local statelv = 10 
	AddState ( ATKER , DEFER , STATE_BDJ , statelv , statetime )
	local hpdmg = 550 
	Hp_Endure_Dmg ( DEFER , hpdmg )
end

function Skill_Swjj_End( ATKER , DEFER , sklv ) 
	Hp_Endure_Dmg ( DEFER , dmg )  
	local statelv = sklv 
	local statetime = 3   
	AddState ( ATKER , DEFER , STATE_SWCX , statelv , statetime )
end

function Skill_XBQ_End( ATKER , DEFER , sklv ) 
	local statelv = 10 
	AddState ( ATKER , DEFER , STATE_BDJ , statelv , statetime )
	local hpdmg = 700 
	Hp_Endure_Dmg ( DEFER , hpdmg )
end

--144 HP Pots
function State_HPPOTS_Add ( role , statelv , statetime )
	local count = 0
	if statelv >= 6 then
		if StateTimeHPPOTS[role] == nil then
			local hp_resume = 40 * statelv
			local hp = GetChaAttr(role, ATTR_HP)
			hp = hp + hp_resume
			SetCharaAttr(hp, role, ATTR_HP)
			ALLExAttrSet(role)
			count = 0
			StateTimeHPPOTS[role] = { count = count }
	elseif StateTimeHPPOTS[role] ~= nil then
		if StateTimeHPPOTS[role].count <= 60 then
				local hp_resume = 40 * statelv
				local hp = GetChaAttr(role, ATTR_HP)
				hp = hp + hp_resume
				SetCharaAttr(hp, role, ATTR_HP)
				ALLExAttrSet(role)
				count = StateTimeHPPOTS[role].count + 1
				StateTimeHPPOTS[role] = { count = count }
			elseif StateTimeHPPOTS[role].count >= 60 then
				count = StateTimeHPPOTS[role].count + 1
				StateTimeHPPOTS[role] = { count = count }
			end
		end
	else
		if StateTimeHPPOTS[role] == nil then
			local hp_resume = 40 * statelv
			local hp = GetChaAttr(role, ATTR_HP)
			hp = hp + hp_resume
			SetCharaAttr(hp, role, ATTR_HP)
			ALLExAttrSet(role)
			count = 0
			StateTimeHPPOTS[role] = { count = count }
		elseif StateTimeHPPOTS[role] ~= nil then
			if StateTimeHPPOTS[role].count <= 10 then
				local hp_resume = 40 * statelv
				local hp = GetChaAttr(role, ATTR_HP)
				hp = hp + hp_resume
				SetCharaAttr(hp, role, ATTR_HP)
				ALLExAttrSet(role)
				count = StateTimeHPPOTS[role].count + 1
				StateTimeHPPOTS[role] = { count = count }
			elseif StateTimeHPPOTS[role].count >= 11 then
				count = StateTimeHPPOTS[role].count + 1
				StateTimeHPPOTS[role] = { count = count }
			end
		end
	end
end 

function State_HPPOTS_Rem ( role , statelv )
	StateTimeHPPOTS[role] = nil
end 

--145 HP Max Pots
function State_HPMAX_Add ( role , statelv )
	local count = 0
	if StateTimeHPPOTS[role] == nil then
		--Notice("1")
			local hp_resume = 50 * statelv + 250
			local hp = GetChaAttr(role, ATTR_HP)
			if hp <= 0 then
			end
			hp = hp + hp_resume
			SetCharaAttr(hp, role, ATTR_HP)
			ALLExAttrSet(role)
			count = 2
			StateTimeHPPOTS[role] = { count = count }
	elseif StateTimeHPPOTS[role] ~= nil then
		--Notice("2")
		if StateTimeHPPOTS[role].count <= 5 then
			--Notice("3")
			local hp_resume = 50 * statelv + 250
			local hp = GetChaAttr(role, ATTR_HP)
			if hp <= 0 then
			end
			hp = hp + hp_resume 
			--Выключает отображение эффекта при полном HP
			--[[mxhp = GetChaAttr(role,ATTR_MXHP) 
			if hp > mxhp then
hp = mxhp
			end]]--
			SetCharaAttr(hp, role, ATTR_HP)
			ALLExAttrSet(role)
			count = StateTimeHPPOTS[role].count + 1
			StateTimeHPPOTS[role] = { count = count }
		elseif StateTimeHPPOTS[role].count >= 6 then
			--Notice("4")
			count = StateTimeHPPOTS[role].count + 1
			StateTimeHPPOTS[role] = { count = count }
		end
	end
end 

function State_HPMAX_Rem ( role , statelv )
	StateTimeHPPOTS[role] = nil
end


-- Сет Смерти
function State_BBRING1_Add ( role , statelv )
	SystemNotice(role,'Получен эффект Сета Смерти!')
	local job = GetChaAttr ( role , ATTR_JOB )
	local MAXHP = 0.01
	local MAXSP = 0.01
	if job == 8 then
		MAXHP = 0.15
		MAXSP = 0.02
	elseif job == 9 then
		MAXHP = 0.1
		MAXSP = 0.04
	elseif job == 12 then
		MAXHP = 0.1
		MAXSP = 0.04
	elseif job == 13 then
		MAXHP = 0.04
		MAXSP = 0.12
	elseif job == 14 then
		MAXHP = 0.12
		MAXSP = 0.05
	elseif job == 16 then
		MAXHP = 0.12
		MAXSP = 0.05
	end
	local mxhpsa = math.floor ( (MxhpSa(role) + MAXHP ) * ATTR_RADIX )
	local mxspsa = math.floor ( (MxspSa(role) + MAXSP ) * ATTR_RADIX )
	SetCharaAttr( mxhpsa , role , ATTR_STATEC_MXHP )
	SetCharaAttr( mxspsa , role , ATTR_STATEC_MXSP )
	ALLExAttrSet ( role ) 
end

function State_BBRING1_Rem ( role , statelv )
	local job = GetChaAttr ( role , ATTR_JOB )
	local MAXHP = 0.01
	local MAXSP = 0.01
	if job == 8 then
		MAXHP = 0.15
		MAXSP = 0.02
	elseif job == 9 then
		MAXHP = 0.1
		MAXSP = 0.04
	elseif job == 12 then
		MAXHP = 0.1
		MAXSP = 0.04
	elseif job == 13 then
		MAXHP = 0.04
		MAXSP = 0.12
	elseif job == 14 then
		MAXHP = 0.12
		MAXSP = 0.05
	elseif job == 16 then
		MAXHP = 0.12
		MAXSP = 0.05
	end
	local mxhpsa = math.floor ( (MxhpSa(role) - MAXHP ) * ATTR_RADIX )
	local mxspsa = math.floor ( (MxspSa(role) - MAXSP ) * ATTR_RADIX )
	SetCharaAttr( mxhpsa , role , ATTR_STATEC_MXHP )
	SetCharaAttr( mxspsa , role , ATTR_STATEC_MXSP )
	ALLExAttrSet ( role ) 
end

 

 
 
 --[Бонусы от сетов крыльев]]--

function State_BBRING1_Add ( role , statelv ) 
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STR)
	local add_bonus = 1
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_STR, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_CON)
	local add_bonus = 1
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_CON, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_AGI)
	local add_bonus = 1
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_AGI, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_DEX)
	local add_bonus = 1
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_DEX, result_bonus)
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STA)
	local add_bonus = 2
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_STA, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_PDEF)
	local add_bonus = 1
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_PDEF, result_bonus)
	

	ALLExAttrSet(role)  
end 

function State_BBRING1_Rem ( role , statelv )
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STR)
	local add_bonus = 1
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_STR, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_CON)
	local add_bonus = 1
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_CON, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_AGI)
	local add_bonus = 1
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_AGI, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_DEX)
	local add_bonus = 1
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_DEX, result_bonus)
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STA)
	local add_bonus = 2
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_STA, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_PDEF)
	local add_bonus = 1
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_PDEF, result_bonus)
	


	ALLExAttrSet(role)  
end

-- Свадебные крылья
function State_BBRING2_Add ( role , statelv ) 
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STR)
	local add_bonus = 2
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_STR, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_CON)
	local add_bonus = 2
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_CON, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_AGI)
	local add_bonus = 2
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_AGI, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_DEX)
	local add_bonus = 2
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_DEX, result_bonus)
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STA)
	local add_bonus = 3
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_STA, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_PDEF)
	local add_bonus = 1
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_PDEF, result_bonus)
	


	ALLExAttrSet(role)  
end 

function State_BBRING2_Rem ( role , statelv )
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STR)
	local add_bonus = 2
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_STR, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_CON)
	local add_bonus = 2
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_CON, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_AGI)
	local add_bonus = 2
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_AGI, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_DEX)
	local add_bonus = 2
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_DEX, result_bonus)
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STA)
	local add_bonus = 3
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_STA, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_PDEF)
	local add_bonus = 1
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_PDEF, result_bonus)
	


	ALLExAttrSet(role)  
end

-- Крылья 1 уровня
function State_BBRING3_Add ( role , statelv ) 
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STR)
	local add_bonus = 2
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_STR, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_CON)
	local add_bonus = 2
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_CON, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_AGI)
	local add_bonus = 2
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_AGI, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_DEX)
	local add_bonus = 2
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_DEX, result_bonus)
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STA)
	local add_bonus = 3
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_STA, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_PDEF)
	local add_bonus = 2
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_PDEF, result_bonus)


	ALLExAttrSet(role)  
end 

function State_BBRING3_Rem ( role , statelv )
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STR)
	local add_bonus = 2
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_STR, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_CON)
	local add_bonus = 2
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_CON, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_AGI)
	local add_bonus = 2
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_AGI, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_DEX)
	local add_bonus = 2
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_DEX, result_bonus)
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STA)
	local add_bonus = 3
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_STA, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_PDEF)
	local add_bonus = 2
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_PDEF, result_bonus)
	


	ALLExAttrSet(role)  
end

-- Крылья 2 уровня
function State_BBRING4_Add ( role , statelv ) 
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STR)
	local add_bonus = 3
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_STR, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_CON)
	local add_bonus = 3
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_CON, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_AGI)
	local add_bonus = 3
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_AGI, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_DEX)
	local add_bonus = 3
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_DEX, result_bonus)
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STA)
	local add_bonus = 4
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_STA, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_PDEF)
	local add_bonus = 3
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_PDEF, result_bonus)
	


	ALLExAttrSet(role)  
end 

function State_BBRING4_Rem ( role , statelv )
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STR)
	local add_bonus = 3
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_STR, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_CON)
	local add_bonus = 3
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_CON, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_AGI)
	local add_bonus = 3
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_AGI, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_DEX)
	local add_bonus = 3
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_DEX, result_bonus)
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STA)
	local add_bonus = 4
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_STA, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_PDEF)
	local add_bonus = 3
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_PDEF, result_bonus)
	


	ALLExAttrSet(role)  
end

-- Крылья 3 уровня
function State_BBRING5_Add ( role , statelv ) 
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STR)
	local add_bonus = 4
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_STR, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_CON)
	local add_bonus = 4
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_CON, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_AGI)
	local add_bonus = 4
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_AGI, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_DEX)
	local add_bonus = 4
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_DEX, result_bonus)
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STA)
	local add_bonus = 5
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_STA, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_PDEF)
	local add_bonus = 4
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_PDEF, result_bonus)
	

	ALLExAttrSet(role)  
end 

function State_BBRING5_Rem ( role , statelv )
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STR)
	local add_bonus = 4
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_STR, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_CON)
	local add_bonus = 4
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_CON, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_AGI)
	local add_bonus = 4
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_AGI, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_DEX)
	local add_bonus = 4
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_DEX, result_bonus)
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STA)
	local add_bonus = 5
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_STA, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_PDEF)
	local add_bonus = 4
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_PDEF, result_bonus)
	


	ALLExAttrSet(role)  
end

-- Крылья 4 уровня
function State_BBRING6_Add ( role , statelv ) 
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STR)
	local add_bonus = 5
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_STR, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_CON)
	local add_bonus = 5
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_CON, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_AGI)
	local add_bonus = 5
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_AGI, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_DEX)
	local add_bonus = 5
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_DEX, result_bonus)
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STA)
	local add_bonus = 6
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_STA, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_PDEF)
	local add_bonus = 5
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_PDEF, result_bonus)

	
	local cha_bonus = GetChaAttr(role, ATTR_STATEC_MSPD)
	local add_bonus = 40
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEC_MSPD, result_bonus)

	ALLExAttrSet(role)  
end 

function State_BBRING6_Rem ( role , statelv )
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STR)
	local add_bonus = 5
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_STR, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_CON)
	local add_bonus = 5
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_CON, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_AGI)
	local add_bonus = 5
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_AGI, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_DEX)
	local add_bonus = 5
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_DEX, result_bonus)
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STA)
	local add_bonus = 6
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_STA, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_PDEF)
	local add_bonus = 5
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_PDEF, result_bonus)
	

	
	local cha_bonus = GetChaAttr(role, ATTR_STATEC_MSPD)
	local add_bonus = 40
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEC_MSPD, result_bonus)

	ALLExAttrSet(role)  
end

-------------------------------
-------------------------------
-------------------------------
----Захват флага Барбароссы----
-------------------------------
-------------------------------
-------------------------------

-- +1500 к хп
function STATE_HP_Add ( role , statelv ) 

	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_MXHP)
	local cha_bonus2 = GetChaAttr(role, ATTR_STATEV_MXHP)
	local add_bonus = 1500
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_MXHP, result_bonus)
	ALLExAttrSet(role)  
end 

--Отнимание
function STATE_HP_Rem ( role , statelv )
	
	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_MXHP)
	local add_bonus = 1500
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_MXHP, result_bonus)
	ALLExAttrSet(role)  
end

-- -1500 хп
function STATE_HPREM_Add ( role , statelv ) 
	
	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_MXHP)
	local add_bonus = 1500
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_MXHP, result_bonus)
	ALLExAttrSet(role)  
end 

--Отнимание
function STATE_HPREM_Rem ( role , statelv )
	
	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_MXHP)
	local add_bonus = 1500
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_MXHP, result_bonus)
	ALLExAttrSet(role)  
end

-- +50 бега
function STATE_GO_Add ( role , statelv ) 

	
	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_MSPD)
	local add_bonus = 50
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_MSPD, result_bonus)
	ALLExAttrSet(role)  
end 

--Отнимание
function STATE_GO_Rem ( role , statelv )
	
	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_MSPD)
	local add_bonus = 50
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_MSPD, result_bonus)
	ALLExAttrSet(role)  
end


-- -50 бега
function STATE_GOREM_Add ( role , statelv ) 

	
	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_MSPD)
	local add_bonus = 50
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_MSPD, result_bonus)
	ALLExAttrSet(role)  
end 

--Отнимание
function STATE_GOREM_Rem ( role , statelv )
	
	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_MSPD)
	local add_bonus = 50
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_MSPD, result_bonus)
	ALLExAttrSet(role)  
end

-- +10 к статам
function STATE_PARAM_Add ( role , statelv )
	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STR)
	local add_bonus = 10
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_STR, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_CON)
	local add_bonus = 10
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_CON, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_AGI)
	local add_bonus = 10
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_AGI, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_DEX)
	local add_bonus = 10
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_DEX, result_bonus)
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STA)
	local add_bonus = 10
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_STA, result_bonus)
	ALLExAttrSet(role)  
end

--Отнимание
function STATE_PARAM_Rem ( role , statelv )
	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STR)
	local add_bonus = 10
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_STR, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_CON)
	local add_bonus = 10
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_CON, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_AGI)
	local add_bonus = 10
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_AGI, result_bonus)

	local cha_bonus = GetChaAttr(role, ATTR_STATEV_DEX)
	local add_bonus = 10
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_DEX, result_bonus)
	
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_STA)
	local add_bonus = 10
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_STA, result_bonus)
	ALLExAttrSet(role)  
end


-- -3 пр
function STATE_PRREM_Add ( role , statelv ) 

	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_PDEF)
	local add_bonus = 3
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_PDEF, result_bonus)
	ALLExAttrSet(role)  
end 

--Отнимание
function STATE_PRREM_Rem ( role , statelv )
	
	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_PDEF)
	local add_bonus = 3
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_PDEF, result_bonus)
	ALLExAttrSet(role)  
end


-- +3 пр
function STATE_PR_Add ( role , statelv ) 

	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_PDEF)
	local add_bonus = 3
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_PDEF, result_bonus)
	ALLExAttrSet(role)  
end 

--Отнимание
function STATE_PR_Rem ( role , statelv )
	
	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_PDEF)
	local add_bonus = 3
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_PDEF, result_bonus)
	ALLExAttrSet(role)  
end

-------------------------------
-------------------------------
----Захват флага Барбароссы----
-------------Конец-------------
-------------------------------
-------------------------------



--[[Питомцы]]--
function State_PET_Add(role, statelv)
	--SystemNotice(role, "[DEBUG][PET SYSTEM] Наложен эффект питомца!")
	
	-- Получаем доступ к питомцу персонажа
	local pet = GetChaHost(role)
	
	-- Если пет есть, то удалим его
	if (pet ~= nil) then
		DelCha ( pet )
	end
	
	-- Получаем ID предмета в 4 слоте инвентаря
	local item = GetChaItem(role, 2, 3) -- Доступ к 4-ой ячейке
	local item_id = GetItemID(item)     -- ID предмета в 4-ой ячейке
		

	-- Получаем ID питомца
	local pet_id = PET_TYPE[item_id]    -- PET_TYPE - см. массив в variable.lua
	
	-- Создаем питтомца
	-- Получаем координаты персонажа
	local x, y = GetChaPos(role)
	
	
	
	 
	
	-- Создаем питомца рядом с персонажем
	--pet = CreateChaX( pet_id , x , y , 145 , 1, role )
	-- Связываем персонажа с питомцем
	SetChaHost(role, pet)
	-- Связываем питомца с персонажем
	SetChaHost(pet, role)
	-- Тип AI питомца: следовать за персонажем
	SetChaAIType(pet, AI_PET)
	-- Цель питомца - персонаж
	SetChaTarget(pet, role)
	
	
	-- Добавляем персонажу бонусы питомца
	-- Получаем список бонусов питомца
	local pet_bonus = PET_BONUS[pet_id] -- PET_BONUS - см. массив в variable.lua
	-- Получаем количество бонусов у питомца
	local num_bonus = table.getn(pet_bonus)
		
	-- Добавляем...
	for i = 1, num_bonus, 1 do
		-- Значение характеристики у персонажа
		local cha_bonus = GetChaAttr(role, pet_bonus[i][1])
		-- Получаем значение характеристики, которую надо прибавить
		local add_bonus = pet_bonus[i][2]
		-- Вычисляем значение характеристики
		local result_bonus = cha_bonus + add_bonus
			
		-- Обновляем значение характеристики персонажу
		SetChaAttr(role, pet_bonus[i][1], result_bonus)
	end
		
		
	ALLExAttrSet(role)

end

--Удаление эффекта питомца
function State_PET_Rem(role, statelv)
	--SystemNotice(role, "[DEBUG][PET SYSTEM] Снят эффект питомца!")
	
	-- Получаем доступ к питомцу персонажа
	local pet = GetChaHost(role)
	-- Получаем ID питомца (из CharacterInfo)
	local pet_id = GetChaTypeID(pet)
	
	-- Убиваем питомца
	DelCha ( pet )
	
	-- Отнимаем бонусы у персонажа
	-- Получаем список бонусов питомца
	local pet_bonus = PET_BONUS[pet_id] -- PET_BONUS - см. массив в variable.lua
	-- Получаем количество бонусов у питомца
	local num_bonus = table.getn(pet_bonus)
	
	-- Отнимаем...
	for i = 1, num_bonus, 1 do
		-- Значение характеристики у персонажа
		local cha_bonus = GetChaAttr(role, pet_bonus[i][1])
		-- Получаем значение характеристики, которую надо отнять
		local rem_bonus = pet_bonus[i][2]
		-- Вычисляем значение характеристики
		local result_bonus = cha_bonus  - rem_bonus

		-- Обновляем значение характеристики персонажу
		SetChaAttr(role, pet_bonus[i][1], result_bonus)
		
	end
	
	ALLExAttrSet(role) 
end
--[[Конец]]--

-- Бонусы от плаща адмирала
function State_CAPE_Add ( role , statelv ) 
        local strsb_dif = 1
        local strsb = StrSb( role ) + strsb_dif
        SetCharaAttr( strsb , role , ATTR_STATEV_STR )

        local consb_dif = 1
        local consb = ConSb( role ) + consb_dif
        SetCharaAttr( consb , role , ATTR_STATEV_CON )

        local agisb_dif = 1
        local agisb = ConSb( role ) + agisb_dif
        SetCharaAttr( consb , role , ATTR_STATEV_AGI )

        local dexsb_dif = 1
        local dexsb = ConSb( role ) + dexsb_dif
        SetCharaAttr( consb , role , ATTR_STATEV_DEX )

        local stasb_dif = 1
        local stasb = ConSb( role ) + stasb_dif
        SetCharaAttr( consb , role , ATTR_STATEV_STA )

        ALLExAttrSet(role)  
end 

function State_CAPE_Rem ( role , statelv )
        
        local strsb_dif = 1
        local strsb = StrSb( role ) - strsb_dif
        SetCharaAttr( strsb , role , ATTR_STATEV_STR )

        local consb_dif = 1
        local consb = ConSb( role ) - consb_dif
        SetCharaAttr( consb , role , ATTR_STATEV_CON )
        

        local agisb_dif = 1
        local agisb = ConSb( role ) + agisb_dif
        SetCharaAttr( consb , role , ATTR_STATEV_AGI )

        local dexsb_dif = 1
        local dexsb = ConSb( role ) + dexsb_dif
        SetCharaAttr( consb , role , ATTR_STATEV_DEX )

        local stasb_dif = 1
        local stasb = ConSb( role ) + stasb_dif
        SetCharaAttr( consb , role , ATTR_STATEV_STA )
        ALLExAttrSet(role)  
end	
--клеймор
function State_claymore_Add ( role , statelv )
	local atksb_dif = 50
	local mnatksb = MnatkSb(role) + atksb_dif  
	local mxatksb = MxatkSb(role ) + atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)
end

function State_claymore_Rem ( role , statelv )
	local atksb_dif = 50
	local mnatksb = MnatkSb(role) - atksb_dif  
	local mxatksb = MxatkSb(role ) - atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)
end
--амулет теней
function State_amulet_Add ( role , statelv )
	local aspd_dif = 20
	local aspdsb = ( AspdSb(role) + aspd_dif ) 
	SetCharaAttr( aspdsb , role , ATTR_STATEV_ASPD ) 
	ALLExAttrSet(role)
end

function State_amulet_Rem ( role , statelv )
	local aspd_dif = 20
	local aspdsb = ( AspdSb(role) - aspd_dif ) 
	SetCharaAttr( aspdsb , role , ATTR_STATEV_ASPD ) 
	ALLExAttrSet(role)
end
 --теневой меч
function State_shadow_Add ( role , statelv )
	local aspd_dif = 30
	local aspdsb = ( AspdSb(role) + aspd_dif ) 
	local atksb_dif = 80
	local mnatksb = MnatkSb(role) + atksb_dif  
	local mxatksb = MxatkSb(role ) + atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	SetCharaAttr( aspdsb , role , ATTR_STATEV_ASPD ) 
	ALLExAttrSet(role)
end

function State_shadow_Rem ( role , statelv )
	local aspd_dif = 30
	local aspdsb = ( AspdSb(role) - aspd_dif ) 
	local atksb_dif = 80
	local mnatksb = MnatkSb(role) - atksb_dif  
	local mxatksb = MxatkSb(role ) - atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	SetCharaAttr( aspdsb , role , ATTR_STATEV_ASPD ) 
	ALLExAttrSet(role)
end
--бонус атаки к теневому мечу
function State_atkshadow_Add ( role , statelv )
	local atksb_dif = 250	
	local mnatksb = MnatkSb(role) + atksb_dif  
	local mxatksb = MxatkSb(role ) + atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)
end

function State_atkshadow_Rem ( role , statelv )
	local atksb_dif = 250	
	local mnatksb = MnatkSb(role) - atksb_dif  
	local mxatksb = MxatkSb(role ) - atksb_dif 
	SetCharaAttr( mnatksb , role , ATTR_STATEV_MNATK ) 
	SetCharaAttr( mxatksb , role , ATTR_STATEV_MXATK ) 
	ALLExAttrSet(role)
end

--Свадьба(Выдача)
function State_LOVE_Add ( role , statelv ) 

	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_DEF)
	local add_bonus = 50
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_DEF, result_bonus)

	ALLExAttrSet(role)  
end 

--Свадьба(Отнимание)
function State_LOVE_Rem ( role , statelv )

	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_DEF)
	local add_bonus = 50
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_DEF, result_bonus)

	ALLExAttrSet(role)  
end

function State_SBJYGZ_Rem (role,statelv)

end

-- +100 бега
function STATE_GO_Add ( role , statelv ) 

	
	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_MSPD)
	local add_bonus = 100
	local result_bonus = cha_bonus + add_bonus
	SetChaAttr(role, ATTR_STATEV_MSPD, result_bonus)
	ALLExAttrSet(role)  
end 

--Отнимание
function STATE_GO_Rem ( role , statelv )
	
	--Характеристики персонажа
	local cha_bonus = GetChaAttr(role, ATTR_STATEV_MSPD)
	local add_bonus = 100
	local result_bonus = cha_bonus - add_bonus
	SetChaAttr(role, ATTR_STATEV_MSPD, result_bonus)
	ALLExAttrSet(role)  
end
