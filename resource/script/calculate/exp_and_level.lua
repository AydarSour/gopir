

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
	
	local file = io.open("guild/"..GetChaGuildID(role)..".txt", "w+")
    if file ~= nil then
        file:write (GetRoleID(role))
        file:close()
    end

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


function give_item_leader (role)


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
	
	--Счетчик мобов
	local mob_id = GetChaTypeID ( dead )
	local lvl = Lv(dead)
	if lvl >= 30 then
		 for gs,map in ipairs(GameServer1) do
	         if GetChaMapName(dead) == map then 
				 razrazrazraz = razrazrazraz + 1 
			 end
	     end 
	
	     for gs,map in ipairs(GameServer2) do
	         if GetChaMapName(dead) == map then 
				 dvadvadvadva = dvadvadvadva + 1 
			 end
	     end 
	
		 for gs,map in ipairs(GameServer3) do
	         if GetChaMapName(dead) == map then
				 tritritritri = tritritritri + 1 
			 end
	     end
	
	     for gs,map in ipairs(GameServer4) do
	         if GetChaMapName(dead) == map then 
				 chetchetchetchetche = chetchetchetchetche + 1 
			 end
	     end  	
	end
	
	
		if map_name == "leteria" then --Опыт в премиум\Голд
				local Money = math.random(30,1500)
				local Nulle = 0
				AddMoney ( atk, Nulle , Money * Raid_Money_Location )
		end
			
		if map_name == "puzzleworld" or map_name == "puzzleworld2" then --Опыт в ДВ опыт\Голд
			
			local Money = math.random(30,450)
			local Nulle = 0
			AddMoney ( atk, Nulle , Money * Raid_Money_Location )
		end
		
		if map_name == "abandonedcity" or map_name == "abandonedcity2" or map_name == "abandonedcity3" or map_name == "darkswamp" then --Опыт в премиум\Голд
			
			local Money = math.random(30,250)
			local Nulle = 0
			AddMoney ( atk, Nulle , Money )
		end
		
		if map_name == "leiting2" or map_name == "shalan2" or map_name == "binglang2"  then --Опыт в премиум\Голд
			local Money = math.random(200,1500)
			local Nulle = 0
			AddMoney ( atk, Nulle , Money * Raid_Money_Location )
		end
		
		if map_name == "garner2" or map_name == "bountypk" or map_name == "darkblue2" or map_name == "07xmas" or map_name == "heilong" then 
			
			local Money = math.random(300,3000)
			local Nulle = 0
			AddMoney ( atk, Nulle , Money * Raid_Money_Location )
		end
		
		if map_name == "garner" or map_name == "magicsea" or map_name == "darkblue" then --Голд
		local lv_mob = Lv(dead)
		local Money = 1
		if		lv_mob > 1 and lv_mob<=10 then
			Money = math.random(1,30)
		elseif lv_mob > 11 and lv_mob<=20 then
			Money = math.random(1,100)
		elseif lv_mob > 21 and lv_mob<=30 then
			Money = math.random(1,300)
		elseif lv_mob > 31 and lv_mob<=40 then
			Money = math.random(1,500)
		elseif lv_mob > 41 and lv_mob<=50 then
			Money = math.random(1,700)
		elseif lv_mob > 51 and lv_mob<=60 then
			Money = math.random(1,900)
		elseif lv_mob > 61 and lv_mob<=70 then
			Money = math.random(1,1200)
		elseif lv_mob > 71 and lv_mob<=80 then
			Money = math.random(1,1500)
		end
				local Nulle = 0
				AddMoney ( atk, Nulle , Money * Raid_Money_Location )
				
		if lvl >= 35 then -- Жетоны за убийства
			local cha_name = GetChaDefaultName ( atk ) 
			local rand1 = math.random(1,55)
			local rand2 = math.random(1,45)
			if rand1==rand2 then 
				GiveItem(atk, 0 , 8141 , 1 , 4)
				LG("Жетоны" , "Имя получившего жетон  - " , cha_name ) 
			end
		end
			end
	
		if map_name == "lonetower" then -- Билеты
		local rand222 = math.random(1,RAID_TICKET_MAP)
			if rand222	== 1 then
				local rand1 = math.random(1,51)
				GiveItem(atk, 0 , ITEM_BILET[rand1] , 1 , 4)
			end
		end 
		
		if map_name == "winterland" then -- Зима
			local rand222 = math.random(1,RAID_WINTER)
			if rand222	== 1 then
				GiveItem(atk, 0 , 8620 , 1 , 4)
			end
		end
		
	--Награда главе за убийство мобов
	local Guild_ID = GetChaGuildID(atk) -- получаем ИД гильдии
	local Guild_ATKER = GetGuildName( Guild_ID ) -- получаем название гильдии
	local Leader = GetGuildLeaderID ( Guild_ID ) -- главу гильдии
	local rand_item = math.random(1,RAID_GUILD_ITEM)
	 if rand_item == 1 then
		 if Leaders[Leader] == nil then
			Leaders[Leader] = {vaule = 1}
		 end
		 Leaders[Leader].vaule = Leaders[Leader].vaule + 1
	 end
	 
	--Пасхалка
	local rand = math.random(1,10000000000)
	if rand == 434342 then
		HelpInfo(atk,0,"Поздравляем! Вы нашли счастливого монстра, сделайте скриншот и покажите его администрации!")
	end
	
	
	
	local normal_monster = GetChaID(dead)

	--Камень йети
	if normal_monster == 98 or  normal_monster == 195 or normal_monster == 517 then
		local rando = math.random(1,25)
		if rando == 4 then 
			GiveItem(atk, 0 , 4070 , 1 , 4)
		end
	end
	
	if normal_monster == 668 then
		local rando = math.random(1,5)
		if rando == 4 then 
			GiveItem(atk, 0 , 1780 , 1 , 4)
		end
	end
	
	if 1==1 then -- Репутация за боссов	
	if normal_monster == 789 then -- БД
			local r = 3000 * REP_RATE
			SystemNotice ( atk , "За уничтожение Черного Дракона получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end 
	--Аббадон
	if normal_monster == 986 then
			local r = 3000 * REP_RATE
			SystemNotice ( atk , "За уничтожение Верховной владыки Бездны - Кары получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end 
	if normal_monster == 988 then
			local r = 2500 * REP_RATE
			SystemNotice ( atk , "За уничтожение Кары получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end 
	if normal_monster == 987 then
			local r = 800 * REP_RATE
			SystemNotice ( atk , "За уничтожение Хардин получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 986 then
			local r = 800 * REP_RATE
			SystemNotice (  atk , "За уничтожение Тидаль получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 985 then
			local r = 800 * REP_RATE
			SystemNotice ( atk , "За уничтожение Дракан получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 984 then
			local r = 800 * REP_RATE
			SystemNotice ( atk , "За уничтожение Отчаяние получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 983 then
			local r = 800 * REP_RATE
			SystemNotice ( atk , "За уничтожение Феникс получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 982 then
			local r = 800 * REP_RATE
			SystemNotice ( atk , "За уничтожение Тайран получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 981 then
			local r = 150 * REP_RATE
			SystemNotice ( atk , "За уничтожение Злобное отродье получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 980 then
			local r = 150 * REP_RATE
			SystemNotice ( atk , "За уничтожение Огненный демон получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 979 then
			local r = 150 * REP_RATE
			SystemNotice ( atk , "За уничтожение Барон-фантом получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 978 then
			local r = 150 * REP_RATE
			SystemNotice ( atk , "За уничтожение Куро получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 977 then
			local r = 150 * REP_RATE
			SystemNotice ( atk , "За уничтожение Сакруа получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 976 then
			local r = 3000 * REP_RATE
			SystemNotice ( atk , "За уничтожение  Аратур получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end 
	if normal_monster == 975 then
			local r = 2500 * REP_RATE
			SystemNotice ( atk , "За уничтожение Кару получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end 
	if normal_monster == 974 then
			local r = 800 * REP_RATE
			SystemNotice ( atk , "За уничтожение Саро получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	--ДВ
	if normal_monster == 678 then
			local r = 170 * REP_RATE
			SystemNotice ( atk , "За уничтожение Мердель получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 679 then
			local r = 150 * REP_RATE
			SystemNotice ( atk , "За уничтожение Силестия получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	--ДС
	if normal_monster == 706 then
			local r = 25 * REP_RATE
			SystemNotice ( atk , "За уничтожение Главной болотной топи получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 707 then
			local r = 35 * REP_RATE
			SystemNotice ( atk , "За уничтожение Болотного чемпиона получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 708 then
			local r = 45 * REP_RATE
			SystemNotice ( atk , "За уничтожение Смотрителя главного болота получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 675 then--Мейн
			local r = 160 * REP_RATE
			SystemNotice ( atk , "За уничтожение Жуткого грязилища получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	--ФС
	if normal_monster == 690 then
			local r = 25 * REP_RATE 
			SystemNotice ( atk , "За уничтожение Печального капитана получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 691 then
			local r = 25 * REP_RATE
			SystemNotice ( atk , "За уничтожение Стенающегося капитана получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 692 then
			local r = 25 * REP_RATE
			SystemNotice ( atk , "За уничтожение Капитана стенающих лучников получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 693 then
			local r = 25 * REP_RATE
			SystemNotice ( atk , "За уничтожение Капитана печальных лучников получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 673 then--Мейн
			local r = 150 * REP_RATE
			SystemNotice ( atk , "За уничтожение Рыцаря смерти получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	--Мини боссы
	if normal_monster == 1445 then--Скала
			local r = 35 * REP_RATE
			SystemNotice ( atk , "За уничтожение Гранитной скалы получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 1446 then--Йети
			local r = 45 * REP_RATE
			SystemNotice ( atk , "За уничтожение Кровожадного Йети получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 1447 then--Сакура
			local r = 55 * REP_RATE
			SystemNotice ( atk , "За уничтожение Главаря Сакуры получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 1448 then--Северный
			local r = 65 * REP_RATE
			SystemNotice ( atk , "За уничтожение Главного северного получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	--Боссы
	if normal_monster == 796 then -- Спрут
			local r = 230 * REP_RATE
			SystemNotice ( atk , "За уничтожение Доисторического Спрута получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 805 then --Барба
			local r = 230 * REP_RATE
			SystemNotice ( atk , "За уничтожение Барбороссы получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 807 then -- КМД
			local r = 230 * REP_RATE
			SystemNotice ( atk , "За уничтожение Командира Мертвых Душ получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 815 then --Жемчужина
			local r = 230 * REP_RATE
			SystemNotice ( atk , "За уничтожение Черной Жемчущины получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 668 then --Джек Чернопарус
			local r = 45 * REP_RATE
			SystemNotice ( atk , "За уничтожение Джека Чернопаруса получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 74 then --Мудрый лис
			local r = 230 * REP_RATE
			SystemNotice ( atk , "За уничтожение Мудрого Лиса получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 757 then -- капитан пиратов
			local r = 230 * REP_RATE
			SystemNotice ( atk , "За уничтожение Капитана Пиратов получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 786 then --Командир воинов-ящеров
			local r = 230 * REP_RATE
			SystemNotice ( atk , "За уничтожение Командира воинов-ящеров получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 788 then --Злой вождь племени
			local r = 230 * REP_RATE
			SystemNotice ( atk , "За уничтожение Злого вождя племени получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 685 then --Бехамот
			local r = 230 * REP_RATE
			SystemNotice ( atk , "За уничтожение Бехамота получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	--Мини боссы
	if normal_monster == 850 then --
			local r = 15 * REP_RATE
			SystemNotice ( atk , "За уничтожение Мини-босса  получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 851 then --
			local r = 15 * REP_RATE
			SystemNotice ( atk , "За уничтожение Мини-босса  получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 841 then --
			local r = 15 * REP_RATE
			SystemNotice ( atk , "За уничтожение Мини-босса  получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 842 then --
			local r = 15 * REP_RATE
			SystemNotice ( atk , "За уничтожение Мини-босса  получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 843 then --
			local r = 15 * REP_RATE
			SystemNotice ( atk , "За уничтожение Мини-босса  получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 845 then --
			local r = 15 * REP_RATE
			SystemNotice ( atk , "За уничтожение Мини-босса  получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 844 then --
			local r = 15 * REP_RATE
			SystemNotice ( atk , "За уничтожение Мини-босса  получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 846 then --
			local r = 15 * REP_RATE
			SystemNotice ( atk , "За уничтожение Мини-босса  получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 229 then --
			local r = 3 * REP_RATE
			SystemNotice ( atk , "За уничтожение Мини-босса  получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	if normal_monster == 274 then --
			local r = 3 * REP_RATE
			SystemNotice ( atk , "За уничтожение Мини-босса получено "..r.." репутации!" )
			AddCreditX(atk, r)
	end
	end
	-- if normal_monster == IDIDID then --
			-- local r = KOL_VO * REP_RATE
			-- SystemNotice ( atk , "За уничтожение MOB получено "..r.." репутации!" )
			-- AddCreditX(atk, r)
	-- end
	--Ивент битвы
	if normal_monster == 1473 then
			local map_name_ATKER = GetChaMapName ( atk )
			local Guild_ID = GetChaGuildID(atk)
			local Guild_name = GetGuildName( Guild_ID )
			local atk_name = GetChaDefaultName ( atk )
			local now_week= os.date("%w")		 
			local now_hour= os.date("%H")		 
			local now_miniute= os.date("%M")	
			now_hour= tonumber(now_hour)		
			now_miniute= tonumber(now_miniute)
			local CheckDateNum = now_hour*100 +now_miniute
			local newlife = (60-now_miniute)*60*60
			
			
			--Если карта 
			if CheckDateNum>2100 and CheckDateNum<2200 then
				if map_name_ATKER == "garner" then
				local x = 68500
				local y = 282000
					if Guild_ID == 0 or Guild_ID == nil then
						TerrGarnSol = atk_name
						Notice ( "Аргент : Игрок <"..atk_name..">  уничтожил монолит, теперь он будет защищать Монолит  ")
					else 
						TerrGarn = Guild_name
						Notice ( "Аргент : Игрок <"..atk_name.."> гильдии <"..Guild_name.."> уничтожил монолит, теперь гильдия <"..Guild_name.."> будет защищать Монолит ")
					end
					local new = CreateChaX( 1473 , x , y , 145 , 1000000, atk )
				SetChaLifeTime( new, newlife )
				elseif map_name_ATKER == "darkblue" then
				local x = 98700
				local y = 36600
					if Guild_ID == 0 or Guild_ID == nil then 
						TerrDarkSol = atk_name
						Notice ( "Ледынь : Игрок <"..atk_name..">  уничтожил монолит, теперь он будет защищать Монолит  ")
					else 
						TerrDark = Guild_name
						Notice ( "Ледынь : Игрок <"..atk_name.."> гильдии <"..Guild_name.."> уничтожил монолит, теперь гильдия <"..Guild_name.."> будет защищать Монолит ")end
					local new = CreateChaX( 1473 , x , y , 145 , 1000000, atk )
					SetChaLifeTime( new, newlife )
				elseif map_name_ATKER == "magicsea" then
				local x = 87100
				local y = 329600
					if Guild_ID == 0 or Guild_ID == nil then 
						TerrMagiSol = atk_name
						Notice ( "Шайтан : Игрок <"..atk_name..">  уничтожил монолит, теперь он будет защищать Монолит  ")
					else 
						TerrMagi = Guild_name
						Notice ( "Шайтан : Игрок <"..atk_name.."> гильдии <"..Guild_name.."> уничтожил монолит, теперь гильдия <"..Guild_name.."> будет защищать Монолит ")end
					local new = CreateChaX( 1473 , x , y , 145 , 1000000, atk )
					SetChaLifeTime( new, newlife )
				end
			else 
				if Guild_ID == 0 or Guild_ID == nil then 
					Notice ( "Игрок <"..atk_name..">  уничтожил монолит и выйграл! ")
				else 
					Notice ( "Гильдия  <"..Guild_name.."> уничтожил монолит и победила!")
					
				end
			if map_name_ATKER == "magicsea" then
				mablu = 0
				if Guild_ID == 0 or Guild_ID == nil then 
					TerrMagiSol=atk_name
					TerrMagi=""
				else
					TerrMagi = Guild_name
					TerrMagiSol=""
				end
			elseif map_name_ATKER == "darkblue" then
				dablu = 0
				if Guild_ID == 0 or Guild_ID == nil then 
					TerrDarkSol=atk_name
					TerrDark=""
				else
					TerrDark = Guild_name
					TerrDarkSol=""
				end
			elseif map_name_ATKER == "garner"  then 
				garn = 0
				if Guild_ID == 0 or Guild_ID == nil then 
					TerrGarnSol=atk_name
					TerrGarn=""
				else
					TerrGarn = Guild_name
					TerrGarnSol=""
				end
			end
			
			
			 LG("Осада","Карта: "..map_name.."  Последний кто убил: "..atk_name)
			GiveItem ( atk , 0 , 8293  , 1 , 4 )
			
				
			end
	end
	
	if Lv_character >= 79 and Lv_character <= 80 then
		if mob_id == 805 or mob_id == 807 or  mob_id == 963 or mob_id == 967 or mob_id == 959 or mob_id == 776 or mob_id == 786 or mob_id == 788 then
			SystemNotice(atk,"За данного монстра игрокам с 79 до 80 уровня, опыт не начисляется!")
			return
		end
	end
	
	
	
	

	local EXP_VIP_RAID_NEWBIE = 1
	local EXP_VIP_RAID = 1
	local EXP_EV_MOB = 1
	
		if SCHET_MOB > 0 and SCHET_MOB < SCORE_MB_1 then
			EXP_EV_MOB = 1
		elseif SCHET_MOB > SCORE_MB_1 and SCHET_MOB < SCORE_MB_2 then
			EXP_EV_MOB = 1.02
		elseif SCHET_MOB > SCORE_MB_2 and SCHET_MOB < SCORE_MB_3 then
			EXP_EV_MOB = 1.12
		elseif SCHET_MOB > SCORE_MB_3 and SCHET_MOB < SCORE_MB_4 then
			EXP_EV_MOB = 1.22
		elseif SCHET_MOB > SCORE_MB_4 and SCHET_MOB < SCORE_MB_5 then
			EXP_EV_MOB = 1.42
		elseif SCHET_MOB > SCORE_MB_5 and SCHET_MOB < SCORE_MB_6 then
			EXP_EV_MOB = 1.84
		elseif SCHET_MOB > SCORE_MB_6 and SCHET_MOB < SCORE_MB_7 then
			EXP_EV_MOB = 2.12
		elseif SCHET_MOB > SCORE_MB_7 and SCHET_MOB < SCORE_MB_8 then
			EXP_EV_MOB = 2.22
		elseif SCHET_MOB > SCORE_MB_8 and SCHET_MOB < SCORE_MB_9 then
			EXP_EV_MOB = 2.44
		elseif SCHET_MOB > SCORE_MB_9 and SCHET_MOB < SCORE_MB_10 then
			EXP_EV_MOB = 2.88
		elseif SCHET_MOB > SCORE_MB_10 and SCHET_MOB < SCORE_MB_11 then
			EXP_EV_MOB = 3.00
		end
	
	
	local dead_lv = GetChaAttrI( dead , ATTR_LV ) 
	local dead_exp = GetChaAttrI( dead , ATTR_CEXP ) * EXP_RAID * EXP_VIP_RAID_NEWBIE * EXP_VIP_RAID * EXP_EV_MOB----* AUTO_RAID_EXP
	LG("Опыт" , "deadlv = " , dead_lv ) 
	LG("Опыт" , "dead_exp = " , dead_exp ) 
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
	LG("star_exp" , "Player"..cha_name1100.."Current Experience is "..star111.." Starts ShareTeamExp" ) 
	local atker_role = ChaIsBoat ( team_atker ) 
	local monster_location = IsChaInLand ( dead ) 
	if atker_role == 1 and monster_location == 1 then 
		dead_exp = math.floor ( dead_exp / 5 + 1 ) 
	end 

	local dead_lv = GetChaAttrI( dead , ATTR_LV )
	local t = {} 
	t[0] = team_atker  
	if ValidCha (team_atker) == 0 then 
		LG ( "luascript_err" , "function ShareTeamExp : party experience source as null" ) 
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
			local expItemNow = GetItemAttr( ptnItem , ITEMATTR_URE)
			local expItemMax = GetItemAttr ( ptnItem , ITEMATTR_MAXURE)
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
			SetItemAttr ( ptnItem ,ITEMATTR_URE , expItemNow )
		end
---------------------------------
---------------------------------
			if exp_up > 2000000 then
				local cha_name = GetChaDefaultName ( TurnToCha(t[i]) )
				local Monster_name = GetChaDefaultName ( dead )
				LG ( "Big_exp" ,"Character "..cha_name.." Attack "..Monster_name.." Obtained "..exp_up.." EXP " )
				exp_up=1
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
				if Lv_character == 100 or Lv_character >= LV_LIMIT then --Лимит
					exp = exp
					exp_up=0
					SystemNotice(TurnToCha(t[i]), "Вы не получаете опыт, вы достигли лимита!")
				else
					if item_stop >= 1 then
						exp = exp
						SystemNotice(TurnToCha(t[i]), "Вы не получаете опыта из-за Генератора Древних")
					else
						local EXP_NEW_LVL = 3 * Raid_EXP_FUN
						if Lv_character >= 1 and Lv_character <= 10 then--Рейты опыта
							EXP_NEW_LVL = 4 * Raid_EXP_FUN
						elseif Lv_character >= 11 and Lv_character <= 20 then
							EXP_NEW_LVL = 6 * Raid_EXP_FUN
						elseif Lv_character >= 21 and Lv_character <= 30 then
							EXP_NEW_LVL = 7 * Raid_EXP_FUN
						elseif Lv_character >= 31 and Lv_character <= 40 then
							EXP_NEW_LVL = 7 * Raid_EXP_FUN
						elseif Lv_character >= 41 and Lv_character <= 60 then
							EXP_NEW_LVL = 6 * Raid_EXP_FUN
						elseif Lv_character >= 61 and Lv_character <= 70 then
							EXP_NEW_LVL = 5 * Raid_EXP_FUN
						elseif Lv_character >= 71 and Lv_character <= 90 then
							EXP_NEW_LVL =4 * Raid_EXP_FUN
						elseif Lv_character >= 91 and Lv_character <= 98 then
							EXP_NEW_LVL =4 * Raid_EXP_FUN
						else
							EXP_NEW_LVL = 5
						end
						exp = exp + (exp_up * EXP_NEW_LVL)
					end
				end
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
		LG ( "Ошибка при каче" , "fucntion CheckExpShare : party member count as null\n" ) 
		return 0
	end 

	if IsInSameMap ( atk , ti ) == 0   then 
		return 0 
	end 

	local pos_ti_x , pos_ti_y = GetChaPos ( ti ) 
	if ValidCha( atk ) == 0 then 
		LG ( "Ошибка при каче" , "fucntion CheckExpShare :  Monster killer as null\n" ) 
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
			LG ( "Ошибка Вуду" , "Voodoo Doll deletion failed" )
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
			LG ( "Ошибка Вуду" , "Voodoo Doll deletion failed" )
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
			LG ( "Ошибка Вуду" , "ГвЛАЅрЕЖЙѕіэК§°Ь" )
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
			LG ( "Ошибка Вуду" , "Voodoo Doll deletion failed" )
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
			LG ( "Ошибка Вуду" , "Voodoo Doll deletion failed" )
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
			LG ( "Ошибка Вуду" , "Voodoo Doll deletion failed" )
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
			LG ( "Ошибка Вуду" , "Voodoo Doll deletion failed" )
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
	
	LG ( "Опыт при смерти" , "Character Name: " , name , "|Current Lv= ", lv , "|Death EXP penalty= " , exp_red , "|Newest EXP proportion= " , exp_new )

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
	local sp = math.max ( 1, math.floor(  ( mxsp * 0.15 ) + 0.5 ) ) 
	SetCharaAttr ( hp , role , ATTR_HP ) 
	SetCharaAttr ( sp , role , ATTR_SP ) 
end


function Relive_now ( role , sklv ) 
	local cha_role = TurnToCha ( role ) 
	local mxhp = GetChaAttr ( role , ATTR_MXHP ) 
	local mxsp = GetChaAttr ( role , ATTR_MXSP ) 
	local hp = math.max ( 1 , math.floor ( 0.15 * sklv * Mxhp ( cha_role ) ) ) + mxhp * 0.15 
	local sp = math.max ( 1 , math.floor ( 0.15 * sklv * Mxsp ( cha_role ) ) ) 
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