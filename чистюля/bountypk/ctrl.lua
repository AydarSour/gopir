-- Настройка свойств карты Баунти (bountypk)
-- Имя функции должно заканчиваться названием карты

function config(map)
    MapCanSavePos(map, 0) 
    MapCanPK(map, 1) 
    MapCanTeam( map, 0 )
    MapType( map , 3 )
    MapCopyNum(map, 1) 
    SingleMapCopyPlyNum(map, 100)   
    --MapCanTeam(map , 1) 
    MapCanStall(map , 1) 
end


function get_map_entry_pos_bountypk()   

	local POS_X=2237
	local POS_Y=2686
	return POS_X , POS_Y

end

function init_entry(map)
    SetMapEntryMapName(map, "garner")			-- Карта, на которой установлена точка входа на эту карту
									-- Установка времени работы карты
									-- 2006/10/18/14/0 (год/месяц/день/часы/минуты) - время начала работы карты
									-- 0/2/0 (день/час/минута) - время открытия портала
									-- 0/0/30 (день/час/минута) - время закрытия портала
									-- 0/0/45 (день/час/минута) - время работы карты
    SetMapEntryTime(map, "2006/10/18/0/0", "0/1/0", "0/0/30", "0/0/47") 
end

function after_enter_bountypk( role , map_copy )
--AfterEnter(role)
end

function before_leave_bountypk( role )
end

-- Условия, при которых открывается портал
function can_open_entry_bountypk(map) 
	-- Карта открывается в 6.00, 13.00, 19.00 и 22.00
	local now_time = GetNowTime()
	if (now_time == 7 or now_time == 11 or now_time == 19 or now_time == 23) then
		return 1
	end

	return 0
end

function map_copy_run_bountypk()

end
function map_copy_run_special_bountypk( map_copy ) 
	local HowManyNoDead = GetMapActivePlayer(map_copy)
	Notice("В Баунти всё ещё есть выжившие "..HowManyNoDead.." человек(а) ")

	Every_5_minute_bounty = Every_5_minute_bounty+1
	if Every_5_minute_bounty == 2 then
		local Monster30 = CreateChaEx(875, 3698, 3358, 145, 60, map_copy)
		local Monster36 = CreateChaEx(875, 3264, 8732, 145, 60, map_copy)
		local Monster42 = CreateChaEx(875, 9184, 8495,  145, 60, map_copy)
		
		local Monster33 = CreateChaEx(872, 9368, 3515, 145, 60, map_copy)
		local Monster31 = CreateChaEx(872, 4507, 3458, 145, 60, map_copy)
		local Monster35 = CreateChaEx(872, 5008, 6009, 145, 60, map_copy)
		
		local Monster32 = CreateChaEx(868, 7039, 8637, 145, 60, map_copy)
		local Monster37 = CreateChaEx(868, 6638, 3842, 145, 60, map_copy)
		local Monster38 = CreateChaEx(868, 2103, 9344,  145, 60, map_copy)
		local Monster39 = CreateChaEx(868, 8991, 6235,  145, 60, map_copy)
		
		local Monster34 = CreateChaEx(879, 4237, 6010, 145, 60, map_copy)
		local Monster40 = CreateChaEx(879, 7979, 6131,  145, 60, map_copy)
		local Monster41 = CreateChaEx(879, 6646, 9530,  145, 60, map_copy)
		
		SetChaLifeTime(Monster30,298050)
		SetChaLifeTime(Monster31,298100)
		SetChaLifeTime(Monster32,298150)
		SetChaLifeTime(Monster33,298200)
		SetChaLifeTime(Monster34,298250)
		SetChaLifeTime(Monster35,298300)
		SetChaLifeTime(Monster36,298350)
		SetChaLifeTime(Monster37,298400)
		SetChaLifeTime(Monster38,298450)
		SetChaLifeTime(Monster39,298500)
		SetChaLifeTime(Monster40,298550)
		SetChaLifeTime(Monster41,298600)
		SetChaLifeTime(Monster42,298650)
end
	if Every_5_minute_bounty == 3 then
		local Monster2  = CreateChaEx(859, 4223,  4810,  145, 60, map_copy)
		local Monster3  = CreateChaEx(859, 4212,  7402, 145, 60, map_copy)
		local Monster4  = CreateChaEx(859, 7420, 9069, 145, 60, map_copy)
		local Monster5  = CreateChaEx(859, 9173, 4963, 145, 60, map_copy)
		local Monster6  = CreateChaEx(859, 6511, 6438, 145, 60, map_copy)
		
		SetChaLifeTime(Monster2,299050)
		SetChaLifeTime(Monster3,299100)
		SetChaLifeTime(Monster4,299150)
		SetChaLifeTime(Monster5,299200)
		SetChaLifeTime(Monster6,299250)
	end

	if Every_5_minute_bounty == 4 then
		local Monster52 = CreateChaEx(869, 4278, 4923,  130, 60, map_copy)
		local Monster56 = CreateChaEx(869, 9067,  4755,  280, 60, map_copy)
		local Monster57 = CreateChaEx(869, 6653,  7437, 280, 60, map_copy)
		local Monster61 = CreateChaEx(869, 7647, 6145, 310, 60, map_copy)
		
		local Monster53 = CreateChaEx(880, 4267,  3422,  310, 60, map_copy)
		local Monster58 = CreateChaEx(880, 9029,  6163, 55,  60, map_copy)
		local Monster59 = CreateChaEx(880, 5317,  6019, 145, 60, map_copy)
		
		local Monster54 = CreateChaEx(876, 4488,  7449,  85,  60, map_copy)
		local Monster55 = CreateChaEx(876, 7092,  4947,  70,  60, map_copy)
		local Monster60 = CreateChaEx(876, 7939,  6744, 175, 60, map_copy)
		
		SetChaLifeTime(Monster52,297050)
		SetChaLifeTime(Monster53,297100)
		SetChaLifeTime(Monster54,297150)
		SetChaLifeTime(Monster55,297200)
		SetChaLifeTime(Monster56,297250)
		SetChaLifeTime(Monster57,297300)
		SetChaLifeTime(Monster58,297350)
		SetChaLifeTime(Monster59,297400)
		SetChaLifeTime(Monster60,297450)
		SetChaLifeTime(Monster61,297500)
	end
	
	if Every_5_minute_bounty == 5 then
		local Monster16 = CreateChaEx(860, 5593, 4867, 145, 60, map_copy)
		local Monster17 = CreateChaEx(860, 7771, 4763, 145, 60, map_copy)
		local Monster18 = CreateChaEx(860, 7878, 7301,  145, 60, map_copy)
		local Monster19 = CreateChaEx(860, 5839, 7363, 145, 60, map_copy)
		local Monster20 = CreateChaEx(860, 7479, 6120, 145, 60, map_copy)
		local Monster21 = CreateChaEx(860, 5502, 6141, 145, 60, map_copy)
		
		SetChaLifeTime(Monster16, 299050)
		SetChaLifeTime(Monster17, 299100)
		SetChaLifeTime(Monster18, 299150)
		SetChaLifeTime(Monster19, 299200)
		SetChaLifeTime(Monster20, 299250)
		SetChaLifeTime(Monster21, 299300)
	end
	
	if Every_5_minute_bounty == 6 then
		local Monster94  = CreateChaEx(870, 5503,  5358, 145, 60, map_copy)
		local Monster95  = CreateChaEx(871, 6666,  5072, 145, 60, map_copy)
		local Monster96  = CreateChaEx(877, 5118,  5921, 145, 60, map_copy)
		local Monster97  = CreateChaEx(878, 7862,  5905, 145, 60, map_copy)
		local Monster98  = CreateChaEx(874, 6586, 7689,  145, 60, map_copy)
		local Monster99  = CreateChaEx(881, 4212, 7413,  145, 60, map_copy)
		local Monster100 = CreateChaEx(871, 9035, 7495,  145, 60, map_copy)
		local Monster101 = CreateChaEx(874, 9074, 4901,  145, 60, map_copy)
		local Monster102 = CreateChaEx(870, 4278, 4809,  145, 60, map_copy)
		local Monster103 = CreateChaEx(871, 4128, 6141,  145, 60, map_copy)
		local Monster104 = CreateChaEx(881, 9131,  5027,  145, 60, map_copy)
		local Monster105 = CreateChaEx(874, 6734,  4908,  145, 60, map_copy)
		local Monster106 = CreateChaEx(877, 7743,  6864,  145, 60, map_copy)
		SetChaLifeTime(Monster94,296050)
		SetChaLifeTime(Monster95,296100)
		SetChaLifeTime(Monster96,296150)
		SetChaLifeTime(Monster97,296200)
		SetChaLifeTime(Monster98,296250)
		SetChaLifeTime(Monster99,296300)
		SetChaLifeTime(Monster100,296350)
		SetChaLifeTime(Monster101,296400)
		SetChaLifeTime(Monster102,296450)
		SetChaLifeTime(Monster103,296500)
		SetChaLifeTime(Monster104,296550)
		SetChaLifeTime(Monster105,296600)
		SetChaLifeTime(Monster106,296650)
	end
	
	if Every_5_minute_bounty == 7 then
		local Monster23 = CreateChaEx(861, 6567, 4965, 145, 60, map_copy)
		local Monster24 = CreateChaEx(861, 6564, 7448, 145, 60, map_copy)
		local Monster25 = CreateChaEx(861, 9074, 7329, 145, 60, map_copy)
		local Monster26 = CreateChaEx(861, 4367, 4878,  145, 60, map_copy)
		local Monster27 = CreateChaEx(861, 9015, 4852, 145, 60, map_copy)
		local Monster28 = CreateChaEx(861, 4381, 7418,  145, 60, map_copy)
		local Monster29 = CreateChaEx(861, 6654, 6740, 145, 60, map_copy)
		local Monster30 = CreateChaEx(1474, 5564, 6040, 145, 60, map_copy)
		local Monster31 = CreateChaEx(1474, 7664, 6060, 145, 60, map_copy)
		local Monster32 = CreateChaEx(717, 5764, 5940, 145, 60, map_copy)
		local Monster33 = CreateChaEx(717, 7264, 6140, 145, 60, map_copy)
		SetChaLifeTime(Monster23, 299050)
		SetChaLifeTime(Monster24, 299100)
		SetChaLifeTime(Monster25, 299150)
		SetChaLifeTime(Monster26, 299200)
		SetChaLifeTime(Monster27, 299250)
		SetChaLifeTime(Monster28, 299300)
		SetChaLifeTime(Monster29, 299350)
		SetChaLifeTime(Monster30, 598700)
		SetChaLifeTime(Monster31, 598700)
		SetChaLifeTime(Monster32, 598700)
		SetChaLifeTime(Monster33, 598700)
	end
end

function map_run_bountypk( map )
	
end

function map_copy_before_close_bountypk( map_copy )
	How_Many_Active = GetMapActivePlayer(map_copy)
	if How_Many_Active > 0 then
		DealAllActivePlayerInMap(map_copy,"GiveSpecItem2")
	end
	How_Many_Active = 0
	Money_all = 3000000
	Every_5_minute_bounty = 0
end

function map_copy_close_bountypk( map_copy )
	ClearAllSubMapCha(map_copy)
end



function GiveSpecItem2( role )
	if How_Many_Active == 0 then
		return
	end
	
	local Money_bountypk = Money_all/How_Many_Active


	if How_Many_Active > 5 then
		AddMoney ( role , 0 , Money_bountypk )

		return
	end

	if How_Many_Active <  6 and How_Many_Active > 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 1031  , 1 , 4 )
		else
			GiveItem ( role , 0 , 1031  , 1 , 4 )
		end
			 
		AddMoney ( role , 0 , Money_bountypk )

		return
	end
	
	if How_Many_Active == 1 then
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			GiveItemX ( role , 0 , 1031  , 1 , 4 )
		else
			GiveItem ( role , 0 , 1031  , 1 , 4 )
		end
		AddMoney ( role , 0 , Money_bountypk )
		local cha_name = GetChaDefaultName ( role )
		local message = "\207\238\231\228\240\224\226\235\255\229\236 "..cha_name.." \238\237(\224) \239\238\235\243\247\232\235(\224) ".. Money_bountypk .." \231\238\235\238\242\224 \232 1 \221\236\225\235\229\236\243 \202\238\240\238\235\255 \208\232\237\227\224 "
		--local message = "Поздравляем "..cha_name.." он(а) получил(а) ".. Money_bountypk .." золота и 1 Эмблему Короля Ринга "

		SystemNotice(role,message)
		return
	end
end 
