------------------------------------------------------------------------------------------------------------------
--																												--
--					Снежная война Ctrl.lua																		--
--					Сервер DayLight Online II																	--
--					Версия игры 2.0																				--
--					Перевод выполнили DLDevTeam																	--
--					Проверку выполнили DLDevTeam																--
--																												--
------------------------------------------------------------------------------------------------------------------

print( "Load Snow War! " )
print( "Loading Ctrl.lua " )
 
function config(map)
	MapCanSavePos(map, 0) 					-- Возможность сохранять позицию персонажа на карте (1 - да, 0 - нет)
	MapCanPK(map, 1) 						-- Возможность атаковать других персонажей (1 - да, 0 - нет)
	MapCanTeam( map, 1 )					-- Возможность создавать отряды (1 - да, 0 - нет)
	MapCopyNum(map, 1) 						-- Количество копий карты (если параметр отсутствует, принимается равным 1)
	SingleMapCopyPlyNum(map, 300)  			-- Количество игроков на карте
	MapType (map, 3)						-- Тип карты
	MapCanStall(map, 0)						-- Возможность торговать (1 - да, 0 - нет)
	RepatriateDie(map,0)					-- Возможность возрождаться на карте после смерти
end

function get_map_entry_pos_07xmas2()		-- Расположение точки входа (координаты)
	local POS_X=795
	local POS_Y=3645
	return POS_X , POS_Y
end

function init_entry(map)
	SetMapEntryMapName(map, "magicsea")		-- Карта, на которой установлена точка входа на эту карту
											-- Установка времени работы карты
											-- 2010/01/01/5/0 (год/месяц/день/часы/минуты) - время начала работы карты
											-- 0/1/0  (день/час/минута) - время открытия портала (открываем ежечасно)
											-- 0/0/30 (день/час/минута) - время работы портала (портал работает 30 минут)
											-- 0/0/55 (день/час/минута) - время работы карты (карта работает 55 минут)
    SetMapEntryTime(map, "2010/01/01/5/0", "0/1/0", "0/0/30", "0/0/55") 
end

function after_enter_07xmas2( role , map_copy )
end

function before_leave_07xmas2( role )
end

function map_copy_run_07xmas2 ( map_copy )
	--Notice ("Старт")
end
-- Функция выполняется в течении всего времени работы карты
function map_copy_run_special_07xmas2( map_copy ) 

--Сундуки
	local chest_1             = 1400 --Сундук СНВ нач. ур.
	local chest_2             = 1401 --Стандартный сундук СНВ
	local chest_3             = 1402 --Сундук СНВ выс. ур.
--Мобы СНВ
--Сила = 1
	local mob_1               = 1403 --Ланс - Новичок
	local mob_2               = 1407 --Карциз - Новичок
	local mob_3               = 1410 --Филлис - Новичок
	local mob_4               = 1414 --Ами - Новичок
--Сила = 2
	local mob_5               = 1404 --Ланс - Охотник
	local mob_6               = 1415 --Ами - Знахарка
	local mob_7               = 1411 --Филлис - Мореплаватель
	local mob_8               = 1408 --Карциз - Мечник
--Сила = 3
	local mob_9               = 1405 --Ланс - Воитель
	local mob_10              = 1412 --Филлис - Стрелок
	local mob_11              = 1416 --Ами - Колдунья
	local mob_12              = 1406 --Ланс - Покоритель морей
	local mob_13              = 1409 --Карциз - Чемпион
	local mob_14              = 1413 --Филлис - Целительница
--Сила = 4
	local mob_15              = 1417 --Ланс - Черный Войн
	local mob_16              = 1418 --Карциз - Черный Войн
	local mob_17              = 1419 --Филлис - Черный Войн
	local mob_18              = 1420 --Ами - Черный Войн
--Мобы мини СНВ
--Сила = 1
	local mini_mob_1          = 1421 --Ланс - Новичок
	local mini_mob_2          = 1425 --Карциз - Новичок
	local mini_mob_3          = 1428 --Филлис - Новичок
	local mini_mob_4          = 1432 --Ами - Новичок
--Сила = 2
	local mini_mob_5          = 1422 --Ланс - Охотник
	local mini_mob_6          = 1433 --Ами - Знахарка
	local mini_mob_7          = 1429 --Филлис - Мореплаватель
	local mini_mob_8          = 1426 --Карциз - Мечник
--Сила = 3
	local mini_mob_9          = 1423 --Ланс - Воитель
	local mini_mob_10         = 1430 --Филлис - Стрелок
	local mini_mob_11         = 1434 --Ами - Колдунья
	local mini_mob_12         = 1424 --Ланс - Покоритель морей
	local mini_mob_13         = 1427 --Карциз - Чемпион
	local mini_mob_14         = 1431 --Филлис - Целительница
--Сила = 4
	local mini_mob_15         = 1435 --Ланс - Черный Войн
	local mini_mob_16         = 1436 --Карциз - Черный Войн
	local mini_mob_17         = 1437 --Филлис - Черный Войн
	local mini_mob_18         = 1438 --Ами - Черный Войн

--Боссы для бигСНВ
	local bigSNV_BossID_1     = 1439 --Олень Апокалипсиса
	local bigSNV_BossID_2     = 1441 --Курица Судного Дня
	local bigSNV_miniBOSS_ID  = 1440 --Восставший Санта
--Боссы для миниСНВ
	local miniSNV_BossID_1    = 1442 --Олень Апокалипсиса
	local miniSNV_BossID_2    = 1444 --Курица Судного Дня
	local miniSNV_miniBOSS_ID = 1443 --Восставший Санта

--Босс Хардин
	local BossID              = 987--Хардин

	local players_07xmas2 = GetMapActivePlayer(map_copy)
	local now_miniute07xmas2 = os.date("%M")
	local notice_game = ""
	local every_07xmas2 = 0
	--Notice("Сейчас "..now_miniute07xmas2.." минут ")
	Every_Check_07xmas = Every_Check_07xmas + 1
	if Every_Check_07xmas == 1 then
		every_07xmas2 = 0
	end
	if Every_Check_07xmas >= 2 then
		every_07xmas2 = math.floor( now_miniute07xmas2 / 5 )
	end

-- ПЕРВАЯ ВОЛНА (5 мин) 15 честов (5 нач. лвл, 5 ср. лвл и 5 выс. лвл)
	if every_07xmas2 == 1 then
		notice_game = "появилась <<1>> волна - 'Сундуки с сокровищами'!"
		set_monsters_07xmas2('squares', 1, chest_1, map_copy)														-- Сундук СНВ нач. ур. по одному в городах
			SetChaLifeTime(CreateChaEx(chest_1, 14400,  16500, math.random(1,360), 60, map_copy), 298000)			-- Сундук СНВ нач. ур. на миде
		set_monsters_07xmas2('squares', 1, chest_2, map_copy)														-- Стандартный сундук СНВ по одному в городах
			SetChaLifeTime(CreateChaEx(chest_2, 14400,  24300, math.random(1,360), 60, map_copy), 298000)			-- Стандартный сундук СНВ над мидом на 2
		set_monsters_07xmas2('squares', 1, chest_3, map_copy)														-- Сундук СНВ выс. ур. по одному в городах
			SetChaLifeTime(CreateChaEx(chest_3, 14400,  8500, math.random(1,360), 60, map_copy), 298000)			-- Сундук СНВ выс. ур. под мидом на 8
	end
-- ВТОРАЯ ВОЛНА (10 мин)
	if every_07xmas2 == 2 then			-- 20 честов (12 нач. лвл, 4 ср. лвл и 4 выс. лвл) и простые монстры
		notice_game = "появилась <<2>> волна - 'Сундуки с сокровищами'!"
		set_monsters_07xmas2('squares', 3, chest_1, map_copy)
		set_monsters_07xmas2('squares', 1, chest_2, map_copy)
		set_monsters_07xmas2('squares', 1, chest_3, map_copy)
		if type_07xmas2 == "small" then
		--Ланс - Новичок (ID mini_mob_1)
			set_monsters_07xmas2('squares', 7, mini_mob_1, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_1, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_1, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_1, map_copy)
		--Карциз - Новичок (ID mini_mob_2)
			set_monsters_07xmas2('squares', 7, mini_mob_2, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_2, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_2, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_2, map_copy)
		--Филлис - Новичок (ID mini_mob_3)
			set_monsters_07xmas2('squares', 7, mini_mob_3, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_3, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_3, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_3, map_copy)
		--Ами - Новичок (ID mini_mob_4)
			set_monsters_07xmas2('squares', 7, mini_mob_4, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_4, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_4, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_4, map_copy)
		else
		--Ланс - Новичок (ID mob_1)
			set_monsters_07xmas2('squares', 7, mob_1, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_1, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_1, map_copy)
			set_monsters_07xmas2('centers', 1, mob_1, map_copy)
		--Карциз - Новичок (ID mob_2)
			set_monsters_07xmas2('squares', 7, mob_2, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_2, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_2, map_copy)
			set_monsters_07xmas2('centers', 1, mob_2, map_copy)
		--Филлис - Новичок (ID mob_3)
			set_monsters_07xmas2('squares', 7, mob_3, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_3, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_3, map_copy)
			set_monsters_07xmas2('centers', 1, mob_3, map_copy)
		--Ами - Новичок (ID mob_4)
			set_monsters_07xmas2('squares', 7, mob_4, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_4, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_4, map_copy)
			set_monsters_07xmas2('centers', 1, mob_4, map_copy)
		end
	end
-- ТРЕТЬЯ ВОЛНА (15 мин)
	if every_07xmas2 == 3 then			-- 20 честов (12 нач. лвл, 4 ср. лвл и 4 выс. лвл) и простые монстры
		notice_game = "появилась <<3>> волна - 'Сундуки с сокровищами'!"
		set_monsters_07xmas2('squares', 3, chest_1, map_copy)
		set_monsters_07xmas2('squares', 1, chest_2, map_copy)
		set_monsters_07xmas2('squares', 1, chest_3, map_copy)
		if type_07xmas2 == "small" then
		--Ланс - Новичок (ID mini_mob_1)
			set_monsters_07xmas2('squares', 7, mini_mob_1, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_1, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_1, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_1, map_copy)
		--Карциз - Новичок (ID mini_mob_2)
			set_monsters_07xmas2('squares', 7, mini_mob_2, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_2, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_2, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_2, map_copy)
		--Филлис - Новичок (ID mini_mob_3)
			set_monsters_07xmas2('squares', 7, mini_mob_3, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_3, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_3, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_3, map_copy)
		--Ами - Новичок (ID mini_mob_4)
			set_monsters_07xmas2('squares', 7, mini_mob_4, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_4, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_4, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_4, map_copy)
		else
		--Ланс - Охотник (ID mob_5)
			set_monsters_07xmas2('squares', 7, mob_5, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_5, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_5, map_copy)
			set_monsters_07xmas2('centers', 1, mob_5, map_copy)
		--Карциз - Мечник (ID mob_6)
			set_monsters_07xmas2('squares', 7, mob_6, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_6, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_6, map_copy)
			set_monsters_07xmas2('centers', 1, mob_6, map_copy)
		--Филлис - Мореплаватель (ID mob_7)
			set_monsters_07xmas2('squares', 7, mob_7, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_7, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_7, map_copy)
			set_monsters_07xmas2('centers', 1, mob_7, map_copy)
		--Ами - Знахарка (ID mob_8)
			set_monsters_07xmas2('squares', 7, mob_8, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_8, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_8, map_copy)
			set_monsters_07xmas2('centers', 1, mob_8, map_copy)
		end
	end

-- ЧЕТВЕРТАЯ ВОЛНА (20 мин)
	if every_07xmas2 == 4 then			-- средние монстры
		notice_game = "появилась <<4>> волна - 'Стандартные монстры'!"
		if type_07xmas2 == "small" then
		--Ланс - Охотник (ID mini_mob_5)
			set_monsters_07xmas2('squares', 7, mini_mob_5, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_5, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_5, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_5, map_copy)
		--Карциз - Мечник  (ID mini_mob_6)
			set_monsters_07xmas2('squares', 7, mini_mob_6, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_6, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_6, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_6, map_copy)
		--Филлис - Мореплаватель (ID mini_mob_7)
			set_monsters_07xmas2('squares', 7, mini_mob_7, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_7, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_7, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_7, map_copy)
		--Ами - Знахарка (ID mini_mob_8)
			set_monsters_07xmas2('squares', 7, mini_mob_8, map_copy)
			set_monsters_07xmas2('bridges', 3, mini_mob_8, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_8, map_copy)
			set_monsters_07xmas2('centers', 1, mini_mob_8, map_copy)
		else
		--Ланс - Охотник (ID mob_5)
			set_monsters_07xmas2('squares', 7, mob_5, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_5, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_5, map_copy)
			set_monsters_07xmas2('centers', 1, mob_5, map_copy)
		--Карциз - Мечник (ID mob_6)
			set_monsters_07xmas2('squares', 7, mob_6, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_6, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_6, map_copy)
			set_monsters_07xmas2('centers', 1, mob_6, map_copy)
		--Филлис - Мореплаватель (ID mob_7)
			set_monsters_07xmas2('squares', 7, mob_7, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_7, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_7, map_copy)
			set_monsters_07xmas2('centers', 1, mob_7, map_copy)
		--Ами - Знахарка (ID mob_8)
			set_monsters_07xmas2('squares', 7, mob_8, map_copy)
			set_monsters_07xmas2('bridges', 3, mob_8, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_8, map_copy)
			set_monsters_07xmas2('centers', 1, mob_8, map_copy)
		end
	end
-- ПЯТАЯ ВОЛНА (25 мин) + ШЕСТАЯ ВОЛНА (30 мин)
	if every_07xmas2 == 5 or every_07xmas2 == 6 then			-- сильные монстры
		notice_game = "появилась <<"..every_07xmas2..">> волна - 'Сильные монстры'!"
		if type_07xmas2 == "small" then
		--Ланс - Воитель (ID mini_mob_9)
			set_monsters_07xmas2('squares', 5, mini_mob_9, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_9, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_9, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_9, map_copy)
		--Филлис - Стрелок (ID mini_mob_10)
			set_monsters_07xmas2('squares', 5, mini_mob_10, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_10, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_10, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_10, map_copy)
		--Ами - Колдунья (ID mini_mob_11)
			set_monsters_07xmas2('squares', 5, mini_mob_11, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_11, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_11, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_11, map_copy)
		--Ланс - Покоритель морей (ID mini_mob_12)
			set_monsters_07xmas2('squares', 5, mini_mob_12, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_12, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_12, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_12, map_copy)
		--Карциз - Чемпион (ID mini_mob_13)
			set_monsters_07xmas2('squares', 5, mini_mob_13, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_13, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_13, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_13, map_copy)
		--Филлис - Целительница (ID mini_mob_14)
			set_monsters_07xmas2('squares', 5, mini_mob_14, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_14, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_14, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_14, map_copy)
		else
		--Ланс - Воитель (ID mob_9)
			set_monsters_07xmas2('squares', 5, mob_9, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_9, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_9, map_copy)
			set_monsters_07xmas2('centers', 2, mob_9, map_copy)
		--Филлис - Стрелок (ID mob_10)
			set_monsters_07xmas2('squares', 5, mob_10, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_10, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_10, map_copy)
			set_monsters_07xmas2('centers', 2, mob_10, map_copy)
		--Ами - Колдунья (ID mob_11)
			set_monsters_07xmas2('squares', 5, mob_11, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_11, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_11, map_copy)
			set_monsters_07xmas2('centers', 2, mob_11, map_copy)
		--Ланс - Покоритель морей (ID mob_12)
			set_monsters_07xmas2('squares', 5, mob_12, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_12, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_12, map_copy)
			set_monsters_07xmas2('centers', 2, mob_12, map_copy)
		--Карциз - Чемпион (ID mob_13)
			set_monsters_07xmas2('squares', 5, mob_13, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_13, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_13, map_copy)
			set_monsters_07xmas2('centers', 2, mob_13, map_copy)
		--Филлис - Целительница (ID mob_14)
			set_monsters_07xmas2('squares', 5, mob_14, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_14, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_14, map_copy)
			set_monsters_07xmas2('centers', 2, mob_14, map_copy)
		end
	end

--СЕДЬМАЯ ВОЛНА (35 мин)
	if every_07xmas2 == 7 then			-- сильные монстры
		notice_game = "появилась <<"..every_07xmas2..">> волна - 'Элитные монстры'!"
		if type_07xmas2 == "small" then
		--Ланс - Черный Войн (ID mini_mob_15)
			set_monsters_07xmas2('squares', 5, mini_mob_15, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_15, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_15, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_15, map_copy)
		--Карциз - Черный Войн (ID mini_mob_16)
			set_monsters_07xmas2('squares', 5, mini_mob_16, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_16, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_16, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_16, map_copy)
		--Филлис - Черный Войн (ID mini_mob_17)
			set_monsters_07xmas2('squares', 5, mini_mob_17, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_17, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_17, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_17, map_copy)
		--Ами - Черный Войн (ID mini_mob_18)
			set_monsters_07xmas2('squares', 5, mini_mob_18, map_copy)
			set_monsters_07xmas2('bridges', 2, mini_mob_18, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mini_mob_18, map_copy)
			set_monsters_07xmas2('centers', 2, mini_mob_18, map_copy)
		else
		--Ланс - Черный Войн (ID mob_15)
			set_monsters_07xmas2('squares', 5, mob_15, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_15, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_15, map_copy)
			set_monsters_07xmas2('centers', 2, mob_15, map_copy)
		--Карциз - Черный Войн (ID mob_16)
			set_monsters_07xmas2('squares', 5, mob_16, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_16, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_16, map_copy)
			set_monsters_07xmas2('centers', 2, mob_16, map_copy)
		--Филлис - Черный Войн (ID mob_17)
			set_monsters_07xmas2('squares', 5, mob_17, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_17, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_17, map_copy)
			set_monsters_07xmas2('centers', 2, mob_17, map_copy)
		--Ами - Черный Войн (ID mob_18)
			set_monsters_07xmas2('squares', 5, mob_18, map_copy)
			set_monsters_07xmas2('bridges', 2, mob_18, map_copy)
			set_monsters_07xmas2('cbrdges', 1, mob_18, map_copy)
			set_monsters_07xmas2('centers', 2, mob_18, map_copy)
		end
	end
-- ВОСЬМАЯ ВОЛНА (40 мин) + ДЕВЯТАЯ ВОЛНА (45 мин) + ДЕСЯТАЯ ВОЛНА (50 мин)
	if every_07xmas2 == 8 or every_07xmas2 == 9 or every_07xmas2 == 10 then			-- боссы
		-- Если игроков меньше 10, вызывается уникальный босс
		if players_07xmas2 <= 10 then
			local lifeTime = 298000*(11-every_07xmas2)
			if boss_07xmas2 == 0 then -- Проверяем существование босса
				local boss = math.random(1,100)
				-- 70% Олень Апокалипсиса
				if boss <= 70 then
					if type_07xmas2 == "small" then
						Notice("Внимание: В Снежных Войнах появился предвестник Апокалипсиса!")
						SetChaLifeTime(CreateChaEx(miniSNV_BossID_1, 14300,  15900,  145, 60, map_copy),lifeTime)
					else
						Notice("Внимание: В Снежных Войнах появился предвестник Апокалипсиса!")
						SetChaLifeTime(CreateChaEx(bigSNV_BossID_1, 14300,  15900,  145, 60, map_copy),lifeTime)
					end
				-- 25% Курица Судного Дня
				elseif boss <= 95 then
					if type_07xmas2 == "small" then
						Notice("Внимание: В Снежных Войнах появился предвестник Судного дня!")
						local BOSS = SetChaLifeTime(CreateChaEx(miniSNV_BossID_2, 14300,  15900,  145, 60, map_copy),lifeTime)
					else
						Notice("Внимание: В Снежных Войнах появился предвестник Судного дня!")
						local BOSS = SetChaLifeTime(CreateChaEx(bigSNV_BossID_2, 14300,  15900,  145, 60, map_copy),lifeTime)
					end
				-- 5% Лорд Бездны – Хардин
				else
					Notice("Внимание: В Снежных Войнах наступил Армагеддон!")
					SetChaLifeTime(CreateChaEx(BossID, 14300,  15900,  145, 60, map_copy),lifeTime)
				end
				boss_07xmas2 = 1
			end
		-- Иначе вызываем 4 мини-боссов и сильных монстров в центре
		-- На 8й и 9й волнах также вызываются мобы по всей локации
		else
			notice_game = "появилась <<"..every_07xmas2..">> волна - 'Элитные монстры'!"
			if type_07xmas2 == "small" then
				set_monsters_07xmas2('squares', 1, bigSNV_miniBOSS_ID, map_copy)
				--Ланс - Черный Войн (ID mini_mob_15)
					set_monsters_07xmas2('squares', 5, mini_mob_15, map_copy)
					set_monsters_07xmas2('bridges', 2, mini_mob_15, map_copy)
					set_monsters_07xmas2('cbrdges', 1, mini_mob_15, map_copy)
					set_monsters_07xmas2('centers', 2, mini_mob_15, map_copy)
				--Карциз - Черный Войн (ID mini_mob_16)
					set_monsters_07xmas2('squares', 5, mini_mob_16, map_copy)
					set_monsters_07xmas2('bridges', 2, mini_mob_16, map_copy)
					set_monsters_07xmas2('cbrdges', 1, mini_mob_16, map_copy)
					set_monsters_07xmas2('centers', 2, mini_mob_16, map_copy)
				--Филлис - Черный Войн (ID mini_mob_17)
					set_monsters_07xmas2('squares', 5, mini_mob_17, map_copy)
					set_monsters_07xmas2('bridges', 2, mini_mob_17, map_copy)
					set_monsters_07xmas2('cbrdges', 1, mini_mob_17, map_copy)
					set_monsters_07xmas2('centers', 2, mini_mob_17, map_copy)
				--Ами - Черный Войн (ID mini_mob_18)
					set_monsters_07xmas2('squares', 5, mini_mob_18, map_copy)
					set_monsters_07xmas2('bridges', 2, mini_mob_18, map_copy)
					set_monsters_07xmas2('cbrdges', 1, mini_mob_18, map_copy)
					set_monsters_07xmas2('centers', 2, mini_mob_18, map_copy)
			else
				set_monsters_07xmas2('squares', 1, bigSNV_miniBOSS_ID, map_copy)
				--Ланс - Черный Войн (ID mob_15)
					set_monsters_07xmas2('squares', 5, mob_15, map_copy)
					set_monsters_07xmas2('bridges', 2, mob_15, map_copy)
					set_monsters_07xmas2('cbrdges', 1, mob_15, map_copy)
					set_monsters_07xmas2('centers', 2, mob_15, map_copy)
				--Карциз - Черный Войн (ID mob_16)
					set_monsters_07xmas2('squares', 5, mob_16, map_copy)
					set_monsters_07xmas2('bridges', 2, mob_16, map_copy)
					set_monsters_07xmas2('cbrdges', 1, mob_16, map_copy)
					set_monsters_07xmas2('centers', 2, mob_16, map_copy)
				--Филлис - Черный Войн (ID mob_17)
					set_monsters_07xmas2('squares', 5, mob_17, map_copy)
					set_monsters_07xmas2('bridges', 2, mob_17, map_copy)
					set_monsters_07xmas2('cbrdges', 1, mob_17, map_copy)
					set_monsters_07xmas2('centers', 2, mob_17, map_copy)
				--Ами - Черный Войн (ID mob_18)
					set_monsters_07xmas2('squares', 5, mob_18, map_copy)
					set_monsters_07xmas2('bridges', 2, mob_18, map_copy)
					set_monsters_07xmas2('cbrdges', 1, mob_18, map_copy)
					set_monsters_07xmas2('centers', 2, mob_18, map_copy)
			end
		end
	end

	if every_07xmas2 >= 11 then
		notice_game = "начался заключительный бой!"
	end

	if players_07xmas2 == 1 then
		Notice("В Снежных Войнах "..notice_game)
		Notice("В Снежных Войнах все ещё есть выживший: "..players_07xmas2.." игрок!")
	elseif players_07xmas2 >= 2 then
		Notice("В Снежных Войнах "..notice_game)
		Notice("В Снежных Войнах все ещё есть выжившие: "..players_07xmas2.." игроков, кому же достанется главный приз?!")
	elseif players_07xmas2 == 0 then
		Notice("В Снежных Войнах "..notice_game)
		Notice("В Снежных Войнах нет выживших, на этот раз Монстры одержат победу!")
	end
end

------
-- Функция выполняется один раз в 5 секунд
------

function map_run_07xmas2( map )
end

------
-- Функция выполняется перед закрытием карты
------

function map_copy_before_close_07xmas2( map_copy )

	players_07xmas2 = GetMapActivePlayer(map_copy)
	if players_07xmas2 > 0 then
		DealAllActivePlayerInMap(map_copy,"prize_07xmas2")
	end
	ClearAllSubMapMonster(map_copy)
	players_07xmas2 = 0				-- Активных персонажей на карте
	Every_Check_07xmas = 0
	every_07xmas2 = 0
	boss_07xmas2 = 0					-- Обнуляем параметр boss_07xmas2 (0 - босс не вызывался, 1 - босс вызывался)
	
end

-- Функция закрытия карты
function map_copy_close_07xmas2( map_copy )
	ClearAllSubMapCha(map_copy)
end

------
-- Функция выдачи денег, используется внутри функции  map_copy_before_close_07xmas2()
------

function prize_07xmas2( role )
	local money = 1000000;
	if players_07xmas2 == 1 then
		AddMoney (role , 0 , money)
	elseif players_07xmas2 <= 5 then
		AddMoney (role , 0 , math.floor (money/players_07xmas2))
	end
	return
end

------
-- Устанавливаем тип карты (big или small) и возвращаем возможность создания карты
-- @param object map Объект карты
------

function can_open_entry_07xmas2(map)
	--type_07xmas2 = "big"
	--return 1
	local Hour = GetNowTime()
	if Hour == 5 or Hour == 12 or Hour == 21 then
	--if Hour == 1 or Hour == 3 or Hour == 5 or Hour == 7 or Hour == 9 or Hour == 11 or Hour == 13 or Hour == 15 or Hour == 17 or Hour == 19 or Hour == 21 or Hour == 23 then
		type_07xmas2 = "small"
		return 1
	elseif Hour == 6 or Hour == 13 or Hour == 22 then
	--elseif Hour == 0 or Hour == 2 or Hour == 4 or Hour == 6 or Hour == 8 or Hour == 10 or Hour == 12 or Hour == 14 or Hour == 16 or Hour == 18 or Hour == 20 or Hour == 22 then 
		type_07xmas2 = "big"
		return 1
	else
		type_07xmas2 = "small"
		return 0
	end
	
end

------
-- Генерит мобов на участках карты
-- @param string zone Зона (squares, bridges, centers, cbrdges)
-- @param int amount Количество мобов в каждой из зон
-- @param int charid Id моба
-- @param object map Объект карты
------

function set_monsters_07xmas2(zone, amount, charid, map_copy)

	local CurZone = zones_07xmas2[zone];
	
	if CurZone ~= nil and amount > 0 then 
	
		for i = 1 , table.getn(CurZone) , 1 do
			for d = 1 , amount , 1 do
				local x = math.random(CurZone[i][1]*100,CurZone[i][3]*100)
				local y = math.random(CurZone[i][2]*100,CurZone[i][4]*100)
				local lifeTime = 298000+i*50
				SetChaLifeTime(CreateChaEx(charid, x, y, math.random(1,360), 60, map_copy), lifeTime)
			end
		end
		
	end
	
end


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------DLDevTeam---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------2010 - 2011-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
