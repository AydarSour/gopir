InTeamGetExp_RAID = 1


-- Проверки на создание гильдии --
function AskGuildItem(role,Guild_type)
	local gold = GetChaAttr(role,ATTR_GD)
	local fame = GetChaAttr(role,ATTR_FAME) 
	local attr_guild = HasGuild ( role ) 
	if attr_guild ~= 0 then 
		HelpInfo(role,0,"Вы уже состоите в гильдии")
		return 0 
	end 
	local Lv = Lv ( role )
	if Lv < 40 then
		SystemNotice ( role , "Вы еще не достигли 40-го уровня" )
		return 0
	end

	if Guild_type == 1 then	
		if Guild2_ItemMax > 0 then
			for i = 1 , Guild2_ItemMax , 1 do
				local K = Check_BagItem(role,Guild2_item[i],Guild2_count[i])
				if K == 0 then
					HelpInfo(role,0,"Отсутствуют необходимые предметы")
					return 0
				end
			end
		end

		if gold < Guild2_Gold then
			HelpInfo(role,0,"Недостаточно золота для создания")
			return 0
		end
		if fame < Guild2_fame then
			HelpInfo(role,0,"Недостаточно репутации для создания")
			return 0
		end
	elseif Guild_type == 0 then
		if Guild1_ItemMax > 0 then
			for i = 1 , Guild1_ItemMax , 1 do
				local K = Check_BagItem(role,Guild1_item[i],Guild1_count[i])
				if K == 0 then
					HelpInfo(role,0,"Отсутствуют необходимые предметы")
					return 0
				end
			end
		end
		if gold < Guild1_Gold then
			HelpInfo(role,0,"Недостаточно золота для создания")
			return 0
		end
		if fame < Guild1_fame then
			HelpInfo(role,0,"Недостаточно репутации для создания")
			return 0
		end
	else
	end
	return 1
end 

function Check_BagItem(role,a,b)
	local a = CheckBagItem ( role , a ) 
	if a>= b then 
		return 1 
	else 
		return 0 
	end 
end 

function DeductGuildItem(role,Guild_type)
	local gold = GetChaAttr(role,ATTR_GD)
	local fame = GetChaAttr(role,ATTR_FAME) 
	local attr_guild = HasGuild ( role )  

	if Guild_type == 1 then	
	DelBagItem(role,1780,1)	
		gold = gold - Guild2_Gold
		fame = fame - Guild2_fame
		SetAttrChangeFlag ( role )
		SetChaAttr(role,ATTR_GD,gold)
		SetChaAttr(role,ATTR_FAME,fame)
		SyncChar( role, 4 )
	
	elseif Guild_type == 0	then
		DelBagItem(role,1780,1)	
		gold = gold - Guild1_Gold
		fame = fame - Guild1_fame
		SetAttrChangeFlag ( role )
		SetChaAttr(role,ATTR_GD,gold)
		SetChaAttr(role,ATTR_FAME,fame)
		SyncChar( role, 4 )
	else
	end

end

function AskJoinGuild ( role , guild_type )
	local attr_guild = HasGuild ( role )  
	if attr_guild ~= 0 then 
		HelpInfo(role,0,"Вы уже состоите в гильдии") 
		return 0 
	end
	local antibuy = GetChaStateLv ( role , 5 )
	local statelv = 1
	local statetime = 5
	if antibuy == 0 then
		AddState ( role, role, 5, statelv, statetime )
		return 1
	else
		SystemNotice(role, "Подавать заявку в гильдию можно раз в 5 секунд")
		return 0 
	end
	return 1 
end 

function GetExp_New(dead , atk  ) 
	if ValidCha(atk) == 0  then 
		LG ( "exp_atker=NIL" , "function GetExp_New : atker = nil " ) 
		return 
	end 
	local a = Check_Combat_Mod(dead , atk ) 
	if a==1 then 
		GetExp_PKM( dead , atk ) --[[player kill monster]]--
	elseif a==2 then 
		GetExp_MKP(dead , atk) --[[monster kill player]]--
	elseif a==3 then 
		GetExp_PKP(dead , atk) --[[player kill player]]--
	elseif a==4 then 
		GetExp_Noexp(dead , atk) --[[monster kill monster]]--
	else 
	end 
end 

function Check_Combat_Mod(dead , atk)
	local rolemod_atker = IsPlayer(atk) 
	local rolemod_defer = IsPlayer(dead)
	if (rolemod_atker==0) and (rolemod_defer==0) then
		return 4
	elseif rolemod_atker==0 and rolemod_defer==1 then 
		return 2 
	elseif rolemod_atker==1 and rolemod_defer==0 then 
		return 1 
	elseif rolemod_atker==1 and rolemod_defer==1 then 
		return 3 
	else 
		return 
	end 
end 

function GetExp_PKM( dead , atk  )
	local Lv_character = Lv ( atk )
	local map_name = GetChaMapName ( atk )
	if map_name == "guildwar2" then
		SystemNotice ( atk , "В Мини Священной Войне опыт не начисляется")
		return
	elseif map_name == "07xmas2" then
		if Lv_character <= 50 then
			return
		end
	end
	local mob_id = GetChaTypeID ( dead )
	if Lv_character >= 79 and Lv_character <= 80 then
		if mob_id == 805 or mob_id == 807 or  mob_id == 963 or mob_id == 967 or mob_id == 959 or mob_id == 776 or mob_id == 786 or mob_id == 788 then
			SystemNotice(atk,"За данного монстра игрокам с 79 до 80 уровня, опыт не начисляется!")
			return
		end
	end
	
	
	
	local EXP_VIP_RAID_NEWBIE = 1
	local EXP_VIP_RAID = 1

	local dead_lv = GetChaAttrI( dead , ATTR_LV ) 
	local dead_exp = GetChaAttrI( dead , ATTR_CEXP ) * EXP_RAID * EXP_VIP_RAID_NEWBIE * EXP_VIP_RAID		-- * AUTO_RAID_EXP
	LG("exp" , "deadlv = " , dead_lv ) 
	LG("exp" , "dead_exp = " , dead_exp ) 
	local k = {} 
	local kdmg = {} 
	local k_exp = {}

	k[0] , kdmg[0] = GetChaHarmByNo ( dead , 0 ) 
	k[1] , kdmg[1] = GetChaHarmByNo ( dead , 1 ) 
	k[2] , kdmg[2] = GetChaHarmByNo ( dead , 2 ) 
	k[3] , kdmg[3] = GetChaHarmByNo ( dead , 3 ) 
	k[4] , kdmg[4] = GetChaHarmByNo ( dead , 4 ) 

	local first_atker = GetFirstAtker ( dead ) 
	
	local Gen_dmg = 0 

	for i = 0 , 4 , 1 do 
		if k[i] ~= 0 then 
			Gen_dmg = Gen_dmg + kdmg[i] 
		end 
	end 

	for i = 0 , 4 , 1 do 
		k_exp[i] = 0 

		if ValidCha( k[i] )== 1 then 
			if kdmg[i] > 0 then 
				if k[i] == first_atker then 
					k_exp[i] = dead_exp * ( 0.7 * kdmg[i] / Gen_dmg + 0.3 )
				else
					k_exp[i] =  dead_exp * 0.7 * kdmg[i] / Gen_dmg 
				end
				ShareTeamExp ( dead , k[i] , k_exp[i] ,atk ) 
			end 
		end 
	end 
	local item_host = 0 
	local exp_max = k_exp[0] 
	for i = 1 , 4 , 1 do 
		if k_exp [i] > exp_max  then 
			exp_max = k_exp[i] 
			item_host = i 
		end 
	end 
	if ChaIsBoat (k[item_host] ) == 1 then 
		local ship_lv = GetChaAttr ( k[item_host] , ATTR_LV ) 
		local shipowner_lv  = GetChaAttr ( TurnToCha ( k[item_host] ) , ATTR_LV )  
		local ship_exp = GetChaAttr ( k[item_host] , ATTR_CEXP ) 
		local ship_expadd = math.floor ( math.min ( 7 , ( dead_lv / 10 + 2 ) ) * EXP_BOAT_RAID)
		local lv_limit = math.min ( ship_lv , shipowner_lv ) - 10 
		if dead_lv >= lv_limit then 
			ship_exp = ship_exp + ship_expadd 
			SetCharaAttr (  ship_exp , k[item_host] ,ATTR_CEXP ) 
		end 
	end 
	SetItemHost ( dead , k[item_host] ) 

end 

function ValidCha(ter)
	if ter==nil or ter==0 then 
		return 0 
	end
	return 1
end

function ShareTeamExp ( dead , team_atker , dead_exp , The_Killer) 
	local cha_name1100 = GetChaDefaultName (team_atker )
	local star111=GetChaAttr (  team_atker , ATTR_CEXP )
	--LG("star_exp" , "Player"..cha_name1100.."Current Experience is "..star111.." Starts ShareTeamExp" ) 
	local atker_role = ChaIsBoat ( team_atker ) 
	local monster_location = IsChaInLand ( dead ) 
	if atker_role == 1 and monster_location == 1 then 
		dead_exp = math.floor ( dead_exp / 5 + 1 ) 
	end 

	local dead_lv = GetChaAttrI( dead , ATTR_LV )
	local t = {} 
	t[0] = team_atker  
	if ValidCha (team_atker) == 0 then 
		--LG ( "luascript_err" , "function ShareTeamExp : party experience source as null" ) 
		return 
	end 
	t[1] = GetTeamCha(team_atker, 0 )  
	t[2] = GetTeamCha(team_atker, 1 )   
	t[3] = GetTeamCha(team_atker, 2 )    
	t[4] = GetTeamCha(team_atker, 3 )
    
	local count = 0 
	local NewPlayer_CanGet = 0
	local NewPlayer_Lv = 0
	local NewPlayer_Lv_dif = -100
	local Check_Killer = 0
	if t[0] == The_Killer then
		Check_Killer = 1
	end
	for i = 0 , 4 , 1 do
		if ValidCha( t[i] )== 1  then
			a = CheckExpShare ( t[i] , team_atker )
			if a == 1 then 
				count = count + 1 
				NewPlayer_Lv = Lv( TurnToCha(t[i]) )
				NewPlayer_Lv_dif = dead_lv - NewPlayer_Lv
				if NewPlayer_Lv <=30 and NewPlayer_Lv >= 10 and NewPlayer_Lv_dif >= -5 then
					NewPlayer_CanGet = NewPlayer_CanGet + 1
				end
			end 
		end 
	end 
	if count == 0 then 
		LG ("luascript_err" , "function ShareTeamExp : Member total count as 0 " )
		return 
	end 
	local TeamExp_Increas = 1 * TeamExp_RAID

	LG("exp" , "deadlv = " , dead_lv ) 
	LG("exp" , "dead_exp = " , dead_exp ) 
	LG("exp" , "teamer_count = " , count ) 
-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
	local exp_add = math.floor( dead_exp * ( 1 + (count -1 )* TeamExp_Increas ) )
	local exp_increase = math.floor ( dead_exp * (count -1 )* TeamExp_Increas )
	--Notice (exp_add)

	LG("exp" , "exp_add = " , exp_add ) 

	if count >= 2 then
		exp_add = exp_add * InTeamGetExp_RAID
		local otr = 0
		otr = count - 1
		exp_add = math.floor ( exp_add * ( 1 + ( otr * 0.15 ) ) )
		--Notice (exp_add)
	end
	local exp_up

	for i = 0 , 4 , 1 do
		if ValidCha(t[i])==1 then
			local a = 1
			local b = 1
			LG("exp" , "loop = " , i ) 

			if i >= 1 then 
				a = CheckExpShare ( t[i] , team_atker )
				LG("exp" , "experience distribution test a =  " , a ) 
				exp_up = math.max (1,  math.floor ( exp_add/count ) )  * a 
				--Notice (exp_up)
				LG("exp" , "exp_up1  =  " , exp_up ) 
			else 
				exp_up = math.max ( 1, math.floor ( exp_add/count ) )  
				LG("exp" , "exp_up1  =  " , exp_up ) 
			end 

			t_lv = GetChaAttrI ( TurnToCha(t[i]) , ATTR_LV ) 

			lv_dis =  t_lv - dead_lv
			LG ( "exp" , " t_lv = " , t_lv , "  dead_lv = " , dead_lv , "  lv_dis = " , lv_dis ) 
			if lv_dis >= 4 then 
				b = math.min ( 10 , 1 + ( math.abs ( lv_dis - 4 ) * 0.4 ) )
			elseif lv_dis <= -1 * 10 then 
				b = math.min ( 4 , 1 + math.abs ( lv_dis - 10)  * 0.1 )
			end 
			LG ( "exp" , "exp_up2 =  " , exp_up , " b = " , b , " a = ", a ) 

			exp_up = math.floor ( math.max ( 1 , exp_up / b ) ) * a 

			LG ( "exp" , "exp_up3 =  " , exp_up) 
			
			if count >=3 and NewPlayer_CanGet <= 0 and Check_Killer == 1 then
				if lv_dis <=3 then
					Add_RYZ_TeamPoint ( TurnToCha(t[i]) , count , 1)
				end
			end
			if t_lv >= 50 and NewPlayer_CanGet > 0 and Check_Killer == 1 then
				Add_RYZ_TeamPoint ( TurnToCha(t[i]) , 6 , NewPlayer_CanGet)
			end

			exp = GetChaAttrI ( TurnToCha(t[i]) , ATTR_CEXP ) 
			LG("exp" , "exp_original = " , exp ) 
			local EXP_RAID_STATE = 1
			local StateLv = GetChaStateLv ( t[i] , STATE_SBJYGZ )

			if StateLv > 0 and StateLv <= 10 then
				if StateLv == 1 then
					EXP_RAID_STATE = StateLv + 1
				end
				if StateLv == 2 then
					EXP_RAID_STATE = 2
				end
				if StateLv == 3 then
					EXP_RAID_STATE = 2.5
				end
				if StateLv == 4 then
					EXP_RAID_STATE = 3
				end
				if StateLv == 5 then
					EXP_RAID_STATE = 3.5
				end
				if StateLv == 6 then
					EXP_RAID_STATE = 4
				end
				if StateLv == 7 then
					EXP_RAID_STATE = 5
				end
				if StateLv == 8 then
					EXP_RAID_STATE = 10
				end
	--Тестовые рейты опыта
				if StateLv == 9 then
					EXP_RAID_STATE = 20
				end
				if StateLv == 10 then
					EXP_RAID_STATE = 50
				end
			end
			
			if StateLv > 1 then
				local CheckLucky = 0
				CheckLucky = CheckLuckyFinish ( StateLv )
				if CheckLucky == 1 then
					EXP_RAID_STATE = EXP_RAID_STATE * 2
					SystemNotice ( TurnToCha(t[i]) , "Счастливый удар! Опыт увеличивается в два раза!" )
				end
				if CheckLucky == 2 then
					EXP_RAID_STATE = 10
					SystemNotice ( TurnToCha(t[i]) , "Супер Счастливый удар! Опыт увеличивается в 10 раз!" )
				end
			end

			if exp_up == 0 then 
				LG ( "exp" , "No experience growth" ) 
				return 
			end
			local fairyexp = 1
			fairyexp = GetChaAttr(TurnToCha(t[i]), ATTR_STATEV_COL) 
			if fairyexp < 100 or fairyexp == nil then 
				fairyexp = 100 
			end
			fairyexp = fairyexp / 100
			--Notice (exp_up)
			--Notice (fairyexp)
			exp_up = math.floor ( exp_up * EXP_RAID_STATE * fairyexp )
			--Notice (exp_up)
-------------------------------------------
--Фрукт опыта отряда
-------------------------------------------
			local Check = {}
				Check[0] = t[i]  
				Check[1] = GetTeamCha( t[i] , 0 )
				Check[2] = GetTeamCha( t[i] , 1 )
				Check[3] = GetTeamCha( t[i] , 2 )
				Check[4] = GetTeamCha( t[i] , 3 )
			for j = 0 , 4 , 1 do
				if ValidCha( Check[j] )== 1  then
					local star = IsTeamLeader( Check[j] )
					if	star==1 then
						local StateLv = GetChaStateLv ( Check[j] , STATE_ZDSBJYGZ )
						local Isshare = CheckExpShare ( t[i] , Check[j])
						if StateLv == 1 and Isshare == 1 then
							exp_up = 1.5*exp_up
						end
					end
				end
			end
----------------------------------------------
----------------------------------------------
	local map_name_atk = GetChaMapName ( The_Killer )
	local map_name_def = GetChaMapName ( dead )
	if map_name_atk == "guildwar" or map_name_def == "guildwar" then
		local normal_monster =  GetChaID(dead)
		if normal_monster == 220 then
			AddState ( The_Killer , The_Killer , STATE_HFZQ , 10 , 10 )
		end
		if normal_monster == 219 then
			AddState ( The_Killer , The_Killer , STATE_QINGZ , 10 , 300 )
		end
		if normal_monster == 217 then
			AddState ( The_Killer , The_Killer , STATE_JRQKL , 10 , 180 )
		end
		if normal_monster == 218 then
			AddState ( The_Killer , The_Killer , STATE_YS , 10 , 300 )
		end
	elseif map_name_atk == "guildwar2" or map_name_def == "guildwar2" then
		local normal_monster =  GetChaID(dead)
		if normal_monster == 220 then
			AddState ( The_Killer , The_Killer , STATE_HFZQ , 10 , 10 )
		end
		if normal_monster == 219 then
			AddState ( The_Killer , The_Killer , STATE_QINGZ , 10 , 300 )
		end
		if normal_monster == 217 then
			AddState ( The_Killer , The_Killer , STATE_JRQKL , 10 , 180 )
		end
		if normal_monster == 218 then
			AddState ( The_Killer , The_Killer , STATE_YS , 10 , 300 )
		end
	end

	if map_name_atk == "MAP" then
	------
		if normal_monster == ID_MONSTER then
			local rnd = math.random(1,100) 
				if rnd < 1 then 
					GiveItem ( role , 0 , ID_ITEM  , 1 , 4 )
				elseif rnd > 1 and rnd < 2 then
					GiveItem ( role , 0 , ID_ITEM  , 1 , 4 )
				end
		end
	-------
	end
	----------------------------------------
	------ Звезда единства
	----------------------------------------
		local expCanGive = 0
		t[i] = TurnToCha ( t[i]  )
		local ptnItem = GetEquipItemP( t[i] , 8)
		local IdItem = GetItemID ( ptnItem )	
		local lvPerson = GetChaAttr(t[i] , ATTR_LV)
		if IdItem==1034 then exp_up = exp_up * STAR_RAID end
		local expGetNow = exp_up
		if IdItem==1034 and lvPerson < 41 then
			local expItemNow = GetItemAttr( ptnItem , ITEMATTR_URE)*10
			local expItemMax = GetItemAttr ( ptnItem , ITEMATTR_MAXURE)*10
			if expItemNow == expItemMax then
			SystemNotice ( role, "Звезда единства заполнилась")
			else
			local retIsInTeam = IsInTeam(t[i] )
			if retIsInTeam ~= LUA_TRUE then
				expItemNow = expItemNow + expGetNow
				if expItemNow >= expItemMax then
					expItemNow = expItemMax
				end
			else
				if HasTeammate(t[i] ,0, 5) == LUA_TRUE then
					local ptnLowLvPlayer = returnLowLVPlayer( t[i], t[0], t[1], t[2], t[3], t[4])
					if ValidCha(ptnLowLvPlayer) == 1 then
						local expCanUse = expItemNow - 1000
							if expGetNow * 2>= expCanUse then
								expCanGive = expCanUse
								expItemNow = 1000
							else
								expItemNow = expItemNow - expGetNow*2
								expCanGive = expGetNow * 2
							end
							if expItemNow <= 1000 then
								expItemNow = 1000
							end
						exp_up = exp_up + expCanGive
					else
						expCanGive = 0
						exp_up = exp_up + expCanGive
					end
					local expCanUse = expItemNow - 1000
				end
			end
			expItemNow= math.floor(expItemNow/10)
			expItemNow= expItemNow*1.2

		
			SetItemAttr ( ptnItem ,ITEMATTR_URE , expItemNow )
			end
		end
---------------------------------
---------------------------------
			if exp_up > 20000 then
				local cha_name = GetChaDefaultName ( TurnToCha(t[i]) )
				local Monster_name = GetChaDefaultName ( dead )
				LG ( "Big_exp" ,"Character"..cha_name.."Attack"..Monster_name.."Obtained"..exp_up.."EXP" )
			end

			if exp<DEXP[80] and (exp+exp_up)>DEXP[80] then
				exp_up =math.floor((DEXP[80]-exp) +(exp_up-(DEXP[80]-exp))/50)
			end

			if Lv ( TurnToCha(t[i]) ) >= 80 then 
				exp_up = math.floor ( exp_up / 50 ) 
			end

			local retExpState = GetExpState(t[i])
			if exp_up == 0 and retExpState ~= 0 then 
				SystemNotice ( TurnToCha(t[i]) , "Слишком высокий уровень для получения опыта" )
			end 

			exp_up =exp_up *GetExpState(t[i])/100
			local Lv_character = Lv ( TurnToCha(t[i]) )
			local map_name = GetChaMapName ( TurnToCha(t[i]) )
			local item_stop = CheckBagItem ( TurnToCha(t[i]), 1812 )
			if map_name == "abandonedcity" or map_name == "abandonedcity2" or map_name == "abandonedcity3" then
				if Lv_character == 45 then
					exp = exp
				end
			elseif map_name == "darkswamp" then
				if Lv_character == 55 then
					exp = exp
				end
			else
				if Lv_character == 60 then --Изменил лимит
					exp = exp
				else
					if item_stop >= 1 then
						exp = exp
					else
						local EXP_NEW_LVL = 1
						if Lv_character >= 1 and Lv_character <= 10 then--Рейты опыта
							EXP_NEW_LVL = 3
						elseif Lv_character >= 11 and Lv_character <= 20 then
							EXP_NEW_LVL = 2.8
						elseif Lv_character >= 21 and Lv_character <= 30 then
							EXP_NEW_LVL = 2.6
						elseif Lv_character >= 31 and Lv_character <= 40 then
							EXP_NEW_LVL = 2.3
						elseif Lv_character >= 41 and Lv_character <= 60 then
							EXP_NEW_LVL = 2.1
						elseif Lv_character >= 61 and Lv_character <= 70 then
							EXP_NEW_LVL = 1.9
						elseif Lv_character >= 96 and Lv_character <= 98 then
							EXP_NEW_LVL =1.7
						else
							EXP_NEW_LVL = 1
						end
						exp = exp + (exp_up * EXP_NEW_LVL)
					end
				end
			end
			
			if map_name == "leteria" then --Опыт в премиум\Голд
				exp = exp + exp_up * 1,5
				local PrizeMoney = {10,20,30,40,50,60,70,80,90,120,140,160,180,100,200,300,400,500}
				local sc = math.random(1,18)
				local Money = PrizeMoney[sc]
				local ATAKER = TurnToCha(t[i])
				local Nulle = 0
				AddMoney ( ATAKER, Nulle , Money )
			end

			if map_name == "puzzleworld" or map_name == "puzzleworld2" then --Опыт в ДВ опыт\Голд
				exp = exp + exp_up 
				local PrizeMoney = {5,10,15,25,50,75,100}
				local sc = math.random(1,7)
				local Money = PrizeMoney[sc]
				local ATAKER = TurnToCha(t[i])
				local Nulle = 0
				AddMoney ( ATAKER, Nulle , Money )
			end

			if map_name == "abandonedcity" or map_name == "abandonedcity2" or map_name == "abandonedcity3" or map_name == "darkswamp" then --Опыт в премиум\Голд
				exp = exp 
				local PrizeMoney = {10,20,50,70,90}
				local sc = math.random(1,5)
				local Money = PrizeMoney[sc]
				local ATAKER = TurnToCha(t[i])
				local Nulle = 0
				AddMoney ( ATAKER, Nulle , Money )
			end
			
			SetChaAttrI ( TurnToCha(t[i]) , ATTR_CEXP, exp ) 
			LG("exp" , "exp_now = " , exp ) 
		else
		end 
	end 
	local star112=GetChaAttr (  team_atker , ATTR_CEXP )
	LG("star_exp" , "Player"..cha_name1100.."Current Experience is"..star112.."End ShareTeamExp" ) 
	LG("exp" , "end getexp " )
end 

function returnLowLVPlayer(PlayerNow,Player1,Player2,Player3,Player4,Player5)  
	local lvPlayerNow = GetChaAttr(PlayerNow, ATTR_LV)
	PlayerNow = TurnToCha(PlayerNow)
	Player1 = TurnToCha(Player1)
	Player2 = TurnToCha(Player2)
	Player3 = TurnToCha(Player3)
	Player4 = TurnToCha(Player4)
	Player5 = TurnToCha(Player5)
	
	if ValidCha(Player1) == 1 then
		local lvPlayer1 = GetChaAttr(Player1, ATTR_LV)
		if lvPlayerNow > lvPlayer1 + 5 then
			return Player1
		end
	end
	
	if ValidCha(Player2) == 1 then
		local lvPlayer2 = GetChaAttr(Player2, ATTR_LV)
		if lvPlayerNow > lvPlayer2 + 5 then
			return Player2
		end
	end
	
	if ValidCha(Player3) == 1 then
		local lvPlayer3 = GetChaAttr(Player3, ATTR_LV)
		if lvPlayerNow > lvPlayer3 + 5 then
			return Player3
		end
	end
	
	if ValidCha(Player4) == 1 then
		local lvPlayer4 = GetChaAttr(Player4, ATTR_LV)
		if lvPlayerNow > lvPlayer4 + 5 then
			return Player4
		end
	end
	
	if ValidCha(Player5) == 1 then
		local lvPlayer5 = GetChaAttr(Player5, ATTR_LV)
		if lvPlayerNow > lvPlayer5 + 5 then
			return Player5
		end
	end
	
	return 0
end

function CheckExpShare ( ti , atk ) 
	if ValidCha(ti)==0 then 
		LG ( "luascript_err" , "fucntion CheckExpShare : party member count as null\n" ) 
		return 0
	end 

	if IsInSameMap ( atk , ti ) == 0   then 
		return 0 
	end 

	local pos_ti_x , pos_ti_y = GetChaPos ( ti ) 
	if ValidCha( atk ) == 0 then 
		LG ( "luascript_err" , "fucntion CheckExpShare :  Monster killer as null\n" ) 
		return 0
	end 

	local pos_atk_x , pos_atk_y = GetChaPos ( atk ) 
	local distance = Dis ( pos_ti_x , pos_ti_y , pos_atk_x , pos_atk_y ) 
	if distance >= 4000 then  
		return 0 
	end 
	if IsChaInRegion ( ti , AREA_SAFE ) == 1 then 
		return 0 
	end 
	return 1 
end 


-- Смерть на карте
function Dead_Punish ( dead , atk )

	local Role_ID = GetRoleID(dead)
	 BBBB[ Role_ID ] = 0

	local map_name = GetChaMapName ( dead )
	if map_name == "leiting2" or map_name == "binglang2" or map_name == "shalan2" or map_name == "guildwar" or map_name == "guildwar2" or map_name =="premium" then
		return
	end
	
	local map_name = GetChaMapName ( dead )
	if map_name == "garner2" or map_name == "07xmas2" then
		SetCharaAttr(0, dead, ATTR_SP)
		return
	end
	dead = TurnToCha ( dead ) 
	local lv = GetChaAttr( dead, ATTR_LV ) 
	local check_pirate=CheckItem_pirate(dead)
	local check_death=CheckItem_Death(dead)
	local Time = os.date("%H")
	local TimeNum = tonumber(Time)

	if lv<=10 then
		return 
	end
	if lv >= 70 and check_pirate ==1 then -- БС-сет
		if TimeNum<=6 or TimeNum >=18 then
			SystemNotice (dead , "Получено благословение Луны. Штраф за смерть отменен" ) 
			return
		end
	end
	if lv >= 75 and check_death ==1 then -- Сет смерти
		if TimeNum<=6 or TimeNum >=18 then
			SystemNotice (dead , "Получено благословение набора Смерти. Штраф за смерть отменен" ) 
			return
		end
	end
	local exp_red 
	local exp = Exp(dead) 
	local nlexp = GetChaAttrI ( dead , ATTR_NLEXP ) 
	local clexp = GetChaAttrI ( dead , ATTR_CLEXP ) 
	if  exp <= clexp then 
		exp_red = 0 
	else 
		exp_red = math.min ( math.floor ( ( nlexp - clexp ) * 0.04 ) , math.max ( exp - clexp , 0 ) ) 
	end 
	SetCharaAttr(0, dead, ATTR_SP) 
	local i1 = CheckBagItem( dead,3846 )
	local i2 = CheckBagItem( dead,3047 )
	local i3 = CheckBagItem( dead,5609 )


	if map_name == "secretgarden" or map_name == "teampk"  then
		SetCharaAttr(0, dead, ATTR_SP)
		return
	end
	
	local i= CheckBagItem( dead, 2954 )

	if i==1 then -- Доказательство смерти (ID=2954)
		local Dead_BK = GetChaItem2 ( dead , 2 , 2954 )
		local DeadPoint=GetItemAttr ( Dead_BK , ITEMATTR_VAL_STR)

		local DeadPoint=DeadPoint+1
		SetItemAttr( Dead_BK , ITEMATTR_VAL_STR , DeadPoint )
		local DeadPoint1=GetItemAttr ( Dead_BK , ITEMATTR_VAL_STR)

		if DeadPoint>=100 then
		end
	end

	if i1 <= 0 and i2 <= 0 and  i3 <= 0then
		exp = Exp(dead) - exp_red 
		if Lv ( dead ) >= 80 then 
			exp_red_80 = exp_red * 50 
			SystemNotice (dead , "Штраф за смерть. Опыта потеряно: "..exp_red_80 ) 
		else 
			SystemNotice (dead , "Штраф за смерть. Опыта потеряно: "..exp_red ) 
		end 
		SetChaAttrI( dead , ATTR_CEXP , exp )
		if lv > 20 then
			Dead_Punish_ItemURE ( dead )
		end
	
	elseif i1~=0 and i2==0 and  i3==0  then -- КУКЛА ВУДУ 3846
		local j1 = TakeItem( dead,0,3846,1)
		if j1 == 0  then
			LG ( "NewItem" , "Voodoo Doll deletion failed" )
			SystemNotice ( dead , "Не удалось удалить куклу Вуду" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
				SystemNotice (dead , "Штраф за смерть. Опыта потеряно: "..exp_red_80 ) 
			else 
				SystemNotice (dead , "Штраф за смерть. Опыта потеряно: "..exp_red ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp )
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "Кукла Вуду приняла на себя штраф за смерть" )
		end
	elseif i2~=0 and  i1==0 and i3==0  then -- КУКЛА ВУДУ 3047
		local j2 = TakeItem( dead,0,3047,1)
		if j2 == 0  then
			LG ( "NewItem" , "Voodoo Doll deletion failed" )
			SystemNotice ( dead , "Не удалось удалить куклу Вуду" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
				SystemNotice (dead , "Штраф за смерть. Опыта потеряно: "..exp_red_80 ) 
			else 
				SystemNotice (dead , "Штраф за смерть. Опыта потеряно: "..exp_red ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp )
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "Кукла Вуду приняла на себя штраф за смерть" )
		end
	elseif i3~=0 and i1==0 and  i2==0  then -- НЕ ВВЕДЕННЫЙ ПРЕДМЕТ
		local j2 = TakeItem( dead,0,5609,1)
		if j2 == 0  then
			LG ( "NewItem" , "ГвЛАЅрЕЖЙѕіэК§°Ь" )
			SystemNotice ( dead , "ГвЛАЅрЕЖЙѕіэК§°Ь" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
				SystemNotice (dead , "УЙУЪЛАНц¶ЄК§ѕ­Сй"..exp_red_80 ) 
			else 
				SystemNotice (dead , "УЙУЪЛАНц¶ЄК§ѕ­Сй"..exp_red ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp )
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "УЙГвЛАЅрЕЖґъМжЛАНц,ГвУиѕ­СйєНДНѕГіН·Ј" )
		end
	elseif i1~=0 and i2~=0 and  i3==0 then -- КУКЛА ВУДУ 3846
		local j1 = TakeItem( dead,0,3846,1)
		if j1 == 0  then
			LG ( "NewItem" , "Voodoo Doll deletion failed" )
			SystemNotice ( dead , "Не удалось удалить куклу Вуду" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
				SystemNotice (dead , "Штраф за смерть. Опыта потеряно: "..exp_red_80 ) 
			else 
				SystemNotice (dead , "Штраф за смерть. Опыта потеряно: "..exp_red ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp )
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "Кукла Вуду приняла на себя штраф за смерть" )
		end
	elseif i2~=0 and  i3~=0 and i1==0  then -- КУКЛА ВУДУ 3047
		local j2 = TakeItem( dead,0,3047,1)
		if j2 == 0  then
			LG ( "NewItem" , "Voodoo Doll deletion failed" )
			SystemNotice ( dead , "Не удалось удалить куклу Вуду" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
				SystemNotice (dead , "Штраф за смерть. Опыта потеряно: "..exp_red_80 ) 
			else 
				SystemNotice (dead , "Штраф за смерть. Опыта потеряно: "..exp_red ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp )
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "Кукла Вуду приняла на себя штраф за смерть" )
		end
	elseif i1~=0 and i3~=0 and  i2==0 then -- КУКЛА ВУДУ 3846
		local j1 = TakeItem( dead,0,3846,1)
		if j1 == 0  then
			LG ( "NewItem" , "Voodoo Doll deletion failed" )
			SystemNotice ( dead , "Не удалось удалить куклу Вуду" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
				SystemNotice (dead , "Штраф за смерть. Опыта потеряно: "..exp_red_80 ) 
			else 
				SystemNotice (dead , "Штраф за смерть. Опыта потеряно: "..exp_red ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp )
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "Кукла Вуду приняла на себя штраф за смерть" )
		end
	elseif i1~=0 and i2~=0 and  i3~=0 then -- КУКЛА ВУДУ 3846
		local j1 = TakeItem( dead,0,3846,1)
		if j1 == 0  then
			LG ( "NewItem" , "Voodoo Doll deletion failed" )
			SystemNotice ( dead , "Не удалось удалить куклу Вуду" )
			exp = Exp(dead) - exp_red 
			if Lv ( dead ) >= 80 then 
				exp_red_80 = exp_red * 50 
				SystemNotice (dead , "Штраф за смерть. Опыта потеряно: "..exp_red_80 ) 
			else 
				SystemNotice (dead , "Штраф за смерть. Опыта потеряно: "..exp_red ) 
			end 
			SetChaAttrI( dead , ATTR_CEXP , exp )
			if lv > 20 then
				Dead_Punish_ItemURE ( dead )
			end
		else
			SystemNotice ( dead , "Кукла Вуду приняла на себя штраф за смерть" )
		end
	end
	
	local name = GetChaDefaultName ( dead )
	local exp_new = ( exp - clexp ) / ( nlexp - clexp )
	
	LG ( "die_exp" , "Character Name" , name , "Current Lv= ", lv , "Death EXP penalty= " , exp_red , "Newest EXP proportion= " , exp_new )

	local mars = 0
	for mars = 0 , 4 , 1 do
		if name == CheckDmgChaNameTest [mars] then
			LG ( "whydie" , name.."Hang" )
		end
	end
end 

function GetExp_MKP(dead , atk) 
	Dead_Punish( dead , atk) 
end 

function GetExp_PKP(dead , atk) 
	--LuaPrint("Enter function GetExp_MKP() --[[player kill monster ѕ­СйЦµёД±д№«КЅ]]--") 
--	Dead_Punish( dead , atk) 
end 

function GetExp_Noexp(dead , atk) 

end 

function Relive ( role )
	local mxhp = GetChaAttr ( role , ATTR_MXHP ) 
	local mxsp = GetChaAttr ( role , ATTR_MXSP ) 
	local hp = math.max ( 1, math.floor(  ( mxhp * 0.15 ) + 0.5 ) ) + mxhp * 0.15 
	local sp = math.max ( 1, math.floor(  ( mxsp * 0.15 ) + 0.5 ) ) +  mxsp * 0.15
	SetCharaAttr ( hp , role , ATTR_HP ) 
	SetCharaAttr ( sp , role , ATTR_SP ) 
end 

function Relive_now ( role , sklv ) 
	local cha_role = TurnToCha ( role ) 
	local mxhp = GetChaAttr ( role , ATTR_MXHP ) 
	local mxsp = GetChaAttr ( role , ATTR_MXSP ) 
	local hp = math.max ( 1 , math.floor ( 0.15 * sklv * Mxhp ( cha_role ) ) ) + mxhp * 0.15 
	local sp = math.max ( 1 , math.floor ( 0.15 * sklv * Mxsp ( cha_role ) ) ) +  mxsp * 0.15
	SetCharaAttr ( hp , cha_role , ATTR_HP ) 
	SetCharaAttr ( sp , cha_role , ATTR_SP ) 
end 

function   Ship_ShipDieAttr ( role ) 
	local bmxhp = GetChaAttr ( role , ATTR_BMXHP ) 
	local dead_count = GetChaAttr ( role , ATTR_BOAT_DIECOUNT ) 
	LG ( "shipmxhp" , "___a new dead ship_____________________________________________________" ) 
	LG ( "shipmxhp" , "role = " , role ,  "dead_count = " , dead_count , "form_mxhp = " , bmxhp ) 
	bmxhp = bmxhp * math.max ( 0 , ( 1 - 0.02 - dead_count * 0.01 )  ) 
	LG ( "shipmxhp" , "role = " , role ,   "now_mxhp = " , bmxhp ) 
	SetCharaAttr ( bmxhp , role , ATTR_BMXHP ) 
end  

function BoatLevelUpProc ( cha, boat, levelup, exp, money ) 
	if ValidCha( cha ) == 0 then 
		LG ( "luascript_err" , "function BoatLevelUpProc : cha as null" ) 
		return 0 
	end 
	if ValidCha( boat ) == 0 then 
		LG ( "luascript_err" , "function BoatLevelUpProc : boat as null" ) 
		return 0 
	end 
	PRINT( "BoatLevelUpProc: levelup = , exp = , money = ", levelup, exp, money )
	local lv_up	= levelup 
	local req_exp	= exp 
	local req_gold	= money 
	local boat_lv = GetChaAttr ( boat , ATTR_LV ) 
	if boat_lv ~= lv_up - 1 then 
		PRINT( "BoatLevelUpProc:function BoatLevelUpProc :ship current level and upgrade level does not match" )
		LG ( "luascript_err" , "function BoatLevelUpProc :ship current level and level to upgrade does not match" )
		return 0 
	end 

	local boat_exp = GetChaAttr ( boat , ATTR_CEXP ) 
	if boat_exp < req_exp then 
		SystemNotice ( cha , "Недостаточно опыта для увеличения уровня корабля") 
		return 0 
	end 

	local cha_money = GetChaAttr ( cha , ATTR_GD ) 
	if cha_money < req_gold then 
		SystemNotice ( cha , "Недостаточно опыта для увеличения уровня корабля") 
		return 0 
	end 
	PRINT( "BoatLevelUpProc: boat_exp, req_exp, cha_money, req_gold", boat_exp, req_exp, cha_money, req_gold )
	SetAttrChangeFlag( boat)	
	SetAttrChangeFlag( cha)	

	boat_exp = boat_exp - req_exp 
	SetCharaAttr ( boat_exp , boat , ATTR_CEXP ) 
	cha_money = cha_money - req_gold 	
	SetCharaAttr ( cha_money , cha , ATTR_GD ) 
	SetCharaAttr ( lv_up , boat , ATTR_LV ) 
	ALLExAttrSet ( boat ) 
	SystemNotice ( cha , "Уровень корабля повышен") 
	SystemNotice ( cha , "Удержано "..req_gold.." золотых") 
	SystemNotice ( cha , "Использовано опыта: "..req_exp) 
	SyncBoat ( boat, 4 )
	SyncChar ( cha, 4 )
	PRINT( "BoarLevelUpProc: return 1" )
	return 1 

end 

function Ship_Tran (  buyer , boat ) 
	local ship_lv = GetChaAttr ( boat , ATTR_LV ) 
	local ship_exp = GetChaAttr ( boat , ATTR_CEXP ) 

	SetAttrChangeFlag( boat)	

	ship_lv = math.max ( 1 , math.max (math.floor ( ship_lv /2 ), ship_lv - 10 ) )  
	ship_exp = 0 
	SetCharaAttr ( ship_exp , boat , ATTR_CEXP ) 
	SetCharaAttr ( ship_lv , boat , ATTR_LV ) 
	SystemNotice ( buyer , "После торговли уровень корабля повышен до "..ship_lv )	
	SystemNotice ( buyer , "После торговли опыт корабля снижен на "..ship_exp )	 

	SyncBoat ( boat, 4 )
end 

function CheckLuckyFinish ( StateLv )
	if StateLv == 3 then
		local Huge_Lucky = Percentage_Random ( 0.01 )
		if Huge_Lucky == 1 then
			return 2
		end
	end
	
	local a = 0.1
	local b = Percentage_Random ( a )
	return b
end