----------------------------------------------
--           Функции Телепортов				--
----------------------------------------------

print( "‡ Јаг§Є  NPCScript02.lua" )

---------------------------------------
-- Телепорт между основными городами --
---------------------------------------
--------------------------------------------------------------------------------------------------------------------
-- Портальщик Аргента - Джовиал, Портальщик Шайтана - Мэй, Портальщик Ледыни - Элен, Портальщик Громограда - Сара --
--------------------------------------------------------------------------------------------------------------------
function GoToWhere()
	local ReSelectTalk = "Я передумал "
	local ReSelectPage = 1

	local CancelSelectTalk = "Забудь, я останусь тут "
	local CancelSelectPage = 2

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"

	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	local GoTo03X = 735
	local GoTo03Y = 1590
	local GoTo03M = CurMapName1

	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	local GoTo05X = 633
	local GoTo05Y = 2100
	local GoTo05M = CurMapName1

	local GoTo06X = 1007
	local GoTo06Y = 2966
	local GoTo06M = CurMapName1

	local GoTo07X = 1507
	local GoTo07Y = 2039
	local GoTo07M = CurMapName1

	local GoTo08X = 1711
	local GoTo08Y = 3448
	local GoTo08M = CurMapName1

	local GoTo09X = 2501
	local GoTo09Y = 2997
	local GoTo09M = CurMapName1

	local GoTo10X = 3197
	local GoTo10Y = 1254
	local GoTo10M = CurMapName1

	Talk( 1, "Джовиал: Привет, я местный портальщик. Могу тебе помочь? " )
	Text( 1, "Отправиться в Ледынь ", JumpPage, 7 )
	Text( 1, "Отправиться в Шайтан ", JumpPage, 5 )
--	Text( 1, "Отправиться в Громоград ", JumpPage, 6 )
	Text( 1, "Записать точку сохранения ", JumpPage, 24 )

	Talk( 2, "Найди меня, если потребуется помощь ", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 4, "Отправиться в Аргент? Нет проблем! Стоимость 500 золотых. Для игроков ниже 10 уровня бесплатно " )
	Text( 4, "Перейти ",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 5, "Отправиться в Шайтан? Нет проблем! Стоимость 500 золотых. Для игроков ниже 10 уровня бесплатно " )
	Text( 5, "Перейти ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 5, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 6, "Отправиться в Громоград? Нет проблем! Стоимость 500 золотых. Для игроков ниже 10 уровня бесплатно " )
	Text( 6, "Перейти ",MultiTrigger, GetMultiTrigger(), 2 )
	Text( 6, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 7, "Отправиться в Ледынь? Нет проблем! Стоимость 500 золотых. Для игроков ниже 10 уровня бесплатно " )
	Text( 7, "Перейти ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 7, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 8, "Отправиться в Халдейский оплот? Нет проблем! Стоимость 500 золотых. Для игроков ниже 10 уровня бесплатно " )
	Text( 8, "Перейти ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 8, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 2, JumpPage, 23 )
	Talk( 9, "Отправиться в Андийский лес? Нет проблем! Стоимость 500 золотых. Для игроков ниже 10 уровня бесплатно " )
	Text( 9, "Перейти ",MultiTrigger, GetMultiTrigger(), 2)
	Text( 9, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 18, "Мэй: Привет! Я местный портальщий. Могу чем то помочь? " )
	Text( 18, "Отправиться в Ледынь ", JumpPage, 7 )
	Text( 18, "Отправиться в Аргент ", JumpPage, 4 )
--	Text( 18, "Отправиться в Громоград ", JumpPage, 6 )
	Text( 18, "Записать точку возвращения ", JumpPage, 25 )

	Talk( 19, "Сара: Привет! Я местный портальщий. Могу чем то помочь? " )
	Text( 19, "Отправиться в Ледынь ", JumpPage, 7 )
	Text( 19, "Отправиться в Аргент ", JumpPage, 4 )
	Text( 19, "Отправиться в Шайтан ", JumpPage, 5 )
	Text( 19, "Записать точку возвращения ", JumpPage, 26 )

	Talk( 20, "Элен: Привет! Я местный портальщий. Могу чем то помочь? " )
	Text( 20, "Отправиться в Аргент ", JumpPage, 4 )
	Text( 20, "Отправиться в Шайтан ", JumpPage, 5 )
--	Text( 20, "Отправится в Громоград ", JumpPage, 6 )
	Text( 20, "Записать точку возвращения ", JumpPage, 27 )

	Talk( 23, "Прости, но у тебя недостаточно денег для перемещения " )

	Talk( 24, "Джовиал: Записаться в этой точке? " )
	Text( 24, "Да, пожалуйста запиши ", SetSpawnPos, "Argent City" )
	Text( 24, "Нет, спасибо ",CloseTalk )

	Talk( 25, "Мэй: Записаться в этой точке? " )
	Text( 25, "Да, пожалуйста запиши ", SetSpawnPos, "Shaitan City" )
	Text( 25, "Нет, спасибо ",CloseTalk )

	Talk( 26, "Сара: Записаться в этой точке? " )
	Text( 26, "Да, пожалуйста запиши ", SetSpawnPos, "Thundoria Castle" )
	Text( 26, "Нет, спасибо ",CloseTalk )

	Talk( 27, "Элен: Записаться в этой точке? " )
	Text( 27, "Да, пожалуйста запиши ", SetSpawnPos, "Icicle Castle" )
	Text( 27, "Нет, спасибо ",CloseTalk )

	Talk( 28, "Администратор Арены: Привет, я Администратор Арены. Куда желаете перейти? " )
	Text( 28, "Вернуться в город ", JumpPage, 29 )
	Text( 28, "Нет, спасибо ",CloseTalk )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerAction( 1, SetPkState, 0 )
	TriggerAction( 1, MoveCity, "" )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 29, "Желаете вернуться в город? В таком случае вам придется оплатить штраф в 2000 золотых за трусость! Вы не передумали? " )
	Text( 29, "Вот золото, я хочу уйти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 29, "Нет, спасибо " )

	Talk( 30, "Хотите убежать, но нет золота? Жаль, в таком случае вам придется драться до конца " )

	Talk( 31, "Мэйбел: Записаться в Халдейском оплоте? " )
	Text( 31, "Да, пожалуйста запиши ", SetSpawnPos, "Chaldea Haven" )
	Text( 31, "Нет, спасибо ",CloseTalk )

	Talk( 32, "Вэнди: Записаться в Андийском лесу? " )
	Text( 32, "Да, пожалуйста запиши ", SetSpawnPos, "Andes Forest Haven" )
	Text( 32, "Нет, спасибо ",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 0 )
	TriggerAction( 1, JumpPage, 1 )

	TriggerCondition( 2, IsMapNpc, "magicsea", 0 )
	TriggerAction( 2, JumpPage, 18 )

	TriggerCondition( 3, IsMapNpc, "garner", 43 )
	TriggerAction( 3, JumpPage, 19 )

	TriggerCondition( 4, IsMapNpc, "darkblue", 12 )
	TriggerAction( 4, JumpPage, 20 )

	TriggerCondition( 5, IsMapNpc, "darkblue", 15 )
	TriggerAction( 5, JumpPage, 28 )

	Start( GetMultiTrigger(), 5 )
end


------------------------------
-- Телепорт между деревнями --
------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Халдейская Портальщица - Мэйбл, Андийский Портальщик - Венди, Портальщица - Фелиция, Портальщица - Элизабет, Портальщик - Мия, Портальщик - Мейла, Телепорт - Берлин, Телепорт - Алина, Портальщик - Софья, Портальщик - Мина, Портальщик - Артемида, Портальщик - Лили --
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function transmittal()
	local CancelSelectTalk = "Забудь, я останусь здесь "
	local CancelSelectPage = 27
	
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"
	
	local GoTo01X = 1903
	local GoTo01Y = 2807
	local GoTo01M = CurMapName1
	
	local GoTo02X = 1517
	local GoTo02Y = 3091
	local GoTo02M = CurMapName1
	
	local GoTo03X = 1120
	local GoTo03Y = 2773
	local GoTo03M = CurMapName1
	
	local GoTo04X = 535
	local GoTo04Y = 2433
	local GoTo04M = CurMapName1
	
	local GoTo05X = 633
	local GoTo05Y = 2100
	local GoTo05M = CurMapName1
	
	local GoTo06X = 1007
	local GoTo06Y = 2966
	local GoTo06M = CurMapName1
	
	local GoTo07X = 787
	local GoTo07Y = 3121
	local GoTo07M = CurMapName2
	
	local GoTo08X = 1214
	local GoTo08Y = 3203
	local GoTo08M = CurMapName2
	
	local GoTo09X = 807
	local GoTo09Y = 360
	local GoTo09M = CurMapName5
	
	local GoTo10X = 1050
	local GoTo10Y = 656
	local GoTo10M = CurMapName5
	
	local GoTo11X = 2146
	local GoTo11Y = 542
	local GoTo11M = CurMapName5
	
	local GoTo12X = 2681
	local GoTo12Y = 647
	local GoTo12M = CurMapName5
	
	Talk( 1, "Мия: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 1, "Перейти в Скалистый удел ", JumpPage, 14 )
	Text( 1, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 2, "Фелиция: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 2, "Перейти в Заброшенную Шахту ", JumpPage, 13 )
	Text( 2, "Перейти в Андийский Лес ", JumpPage, 18 )
	Text( 2, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 3, "Венди: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 3, "Перейти в Валгаллу ", JumpPage, 15 )
	Text( 3, "Перейти в Скалистый Удел ", JumpPage, 14 )
	Text( 3, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 4, "Элизабет: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 4, "Перейти в Обитель Радости ", JumpPage, 16 )
	Text( 4, "Перейти в Андийский Лес ", JumpPage, 18 )
	Text( 4, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 5, "Мейла: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 5, "Перейти в Халдейский Оплот ", JumpPage, 17 )
	Text( 5, "Перейти в Валгаллу ", JumpPage, 15 )
	Text( 5, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 6, "Мэйбел: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 6, "Перейти в Обитель Радости ", JumpPage, 16 )
--	Text( 6, "Перейти в Громоград ", JumpPage, 29 )
	Text( 6, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 7, "Алина: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 7, "Перейти в Рощу Акаций ", JumpPage, 20 )
	Text( 7, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 8, "Берлин: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 8, "Перейти в Гавань Оазиса ", JumpPage, 19 )
	Text( 8, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 9, "Лили: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 9, "Перейти в бухту Атлантис ", JumpPage, 22 )
	Text( 9, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 10, "Софья: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 10, "Перейти на Берег Скелетов ", JumpPage, 23 )
	Text( 10, "Перейти в Пустошь Ледыни ", JumpPage, 21 )
	Text( 10, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 11, "Мина: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 11, "Перейти в Ледяной шип ", JumpPage, 24 )
	Text( 11, "Перейти в бухту Атлантис ", JumpPage, 22 )
	Text( 11, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 12, "Артемида: Привет! Я местный портальщик. Чем могу помочь? " )
	Text( 12, "Перейти на Берег Скелетов ", JumpPage, 23 )
	Text( 12, "Записать точку возвращения ", JumpPage, 25 )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 13, "Перейти в Заброшенную Шахту? Нет проблем! Стоимость 200 золотых " )
	Text( 13, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 13, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 14, "Перейти в Скалистый Удел? Нет проблем! Стоимость 200 золотых " )
	Text( 14, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 15, "Перейти в Валгаллу? Нет проблем! Стоимость 200 золотых " )
	Text( 15, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 16, "Перейти в Обитель Радости? Нет проблем! Стоимость 200 золотых " )
	Text( 16, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 )  
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 17, "Перейти в Халдейский Оплот? Нет проблем! Стоимость 200 золотых " )
	Text( 17, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 18, "Перейти в Андийский Лес? Нет проблем! Стоимость 200 золотых " )
	Text( 18, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 19, "Перейти в Гавань Оазиса? Нет проблем! Стоимость 200 золотых " )
	Text( 19, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 20, "Перейти в Рощу Акаций? Нет проблем! Стоимость 200 золотых " )
	Text( 20, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo09X, GoTo09Y, GoTo09M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 21, "Перейти в Пустошь Ледыни? Нет проблем! Стоимость 200 золотых " )
	Text( 21, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 21, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo10X, GoTo10Y, GoTo10M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 22, "Перейти в бухту Атлантис? Нет проблем! Стоимость 200 золотых " )
	Text( 22, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 22, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 23, "Перейти в Берег Скелетов? Нет проблем! Стоимость 200 золотых " )
	Text( 23, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 )  
	Text( 23, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 24, "Перейти в Ледяной Шип? Нет проблем! Стоимость 200 золотых " )
	Text( 24, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 24, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 96 )
	TriggerAction( 1, SetSpawnPos, "Abandon Mine Haven")
	TriggerCondition( 2, IsMapNpc, "garner", 94 )
	TriggerAction( 2, SetSpawnPos, "Rockery Haven")
	TriggerCondition( 3, IsMapNpc, "garner", 95 )
	TriggerAction( 3, SetSpawnPos, "Valhalla Haven")
	TriggerCondition( 4, IsMapNpc, "garner", 97 )
	TriggerAction( 4, SetSpawnPos, "Solace Haven")
	TriggerCondition( 5, IsMapNpc, "garner", 55 )
	TriggerAction( 5, SetSpawnPos, "Chaldea Haven")
	TriggerCondition( 6, IsMapNpc, "garner", 56 )
	TriggerAction( 6, SetSpawnPos, "Andes Forest Haven")
	TriggerCondition( 7, IsMapNpc, "magicsea", 50 )
	TriggerAction( 7, SetSpawnPos, "Oasis Haven")
	TriggerCondition( 8, IsMapNpc, "magicsea", 46 )
	TriggerAction( 8, SetSpawnPos, "Babul Haven")
	TriggerCondition( 9, IsMapNpc, "darkblue", 56 )
	TriggerAction( 9, SetSpawnPos, "Icicle Haven")
	TriggerCondition( 10, IsMapNpc, "darkblue", 42 )
	TriggerAction( 10, SetSpawnPos, "Atlantis Haven")
	TriggerCondition( 11, IsMapNpc, "darkblue", 46 )
	TriggerAction( 11, SetSpawnPos, "Skeleton Haven")
	TriggerCondition( 12, IsMapNpc, "darkblue", 51 )
	TriggerAction( 12, SetSpawnPos, "Icespire Haven")
	TriggerFailure( 12, JumpPage, 28 )
	Talk( 25, "Записать точку возвращения? " )
	Text( 25, "Да, пожалуйста запиши ", MultiTrigger, GetMultiTrigger(), 12 )
	Text( 25, "Нет, спасибо ",CloseTalk )
	
	Talk( 26, "Простите, у вас недостаточно денег для перемещения! " )
	
	Talk( 27, "Не забудьте найти меня если потребуется помощь ", CloseTalk )
	
    Talk( 28, "Невозможно записать точку сохранения! ", CloseTalk )
	
	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 96 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, IsMapNpc, "garner", 94 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, IsMapNpc, "garner", 95 )
	TriggerAction( 3, JumpPage, 4 )
	TriggerCondition( 4, IsMapNpc, "garner", 97 )
	TriggerAction( 4, JumpPage, 5 )
	TriggerCondition( 5, IsMapNpc, "garner", 55 )
	TriggerAction( 5, JumpPage, 6 )
	TriggerCondition( 6, IsMapNpc, "garner", 56 )
	TriggerAction( 6, JumpPage, 3 )
	TriggerCondition( 7, IsMapNpc, "magicsea", 50 )
	TriggerAction( 7, JumpPage, 7 )
	TriggerCondition( 8, IsMapNpc, "magicsea", 46 )
	TriggerAction( 8, JumpPage, 8 )
	TriggerCondition( 9, IsMapNpc, "darkblue", 56 )
	TriggerAction( 9, JumpPage, 9 )
	TriggerCondition( 10, IsMapNpc, "darkblue", 42 )
	TriggerAction( 10, JumpPage, 10 )
	TriggerCondition( 11, IsMapNpc, "darkblue", 46 )
	TriggerAction( 11, JumpPage, 11 )
	TriggerCondition( 12, IsMapNpc, "darkblue", 51 )
	TriggerAction( 12, JumpPage, 12 )
	Start( GetMultiTrigger(), 12 )
end


------------------------------
-- Телепорт между островами --
------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Островной портальщик - Сильвий, Островной портальщик - Андреа, Островной портальщик - Арсин, Островной портальщик - Шейла, Островной портальщик - Джульета, Островной Телепорщик - Джули, Островной Телепорщик  - Винни, Островной Телепорщик  - Ванда --
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function island()
	local CancelSelectTalk = "Забудь, я останусь здесь "
	local CancelSelectPage = 27
	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"
	
	local GoTo01X = 3260
	local GoTo01Y = 3280
	local GoTo01M = CurMapName1
	
	local GoTo02X = 2273
	local GoTo02Y = 1122
	local GoTo02M = CurMapName1
	
	local GoTo03X = 3590
	local GoTo03Y = 755
	local GoTo03M = CurMapName1
	
	local GoTo04X = 2376
	local GoTo04Y = 725
	local GoTo04M = CurMapName2
	
	local GoTo05X = 1730
	local GoTo05Y = 3775
	local GoTo05M = CurMapName2
	
	local GoTo06X = 2529
	local GoTo06Y = 2406
	local GoTo06M = CurMapName2
	
	local GoTo07X = 1631
	local GoTo07Y = 1974
	local GoTo07M = CurMapName5
	
	local GoTo08X = 2231
	local GoTo08Y = 2788
	local GoTo08M = CurMapName1
	
	Talk( 1, "Сильвий: Привет, я островной портальщик. Стоимость перемещения 2000 золотых. Куда хотите отправиться? " )
	Text( 1, "Перейти на остров Зефира ", JumpPage, 14 )
	Text( 1, "Перейти на Ледниковый остров ", JumpPage, 15 )
	Text( 1, "Перейти на остров Отверженных ", JumpPage, 16 )
	Text( 1, "Перейти на остров Стужи ", JumpPage, 17 )
	Text( 1, "Перейти на остров Канареек ", JumpPage, 18 )
	Text( 1, "Перейти на остров Купидона ", JumpPage, 19 )
	Text( 1, "Перейти на остров Удачи ", JumpPage, 20 )
	Text( 1, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 2, "Андреа: Привет, я островной портальщик. Стоимость перемещения 2000 золотых. Куда хотите отправиться? " )
	Text( 2, "Перейти в Аргент ", JumpPage, 21 )
	Text( 2, "Перейти на Ледниковый остров ", JumpPage, 15 )
	Text( 2, "Перейти на остров Отверженных ", JumpPage, 16 )
	Text( 2, "Перейти на остров Стужи ", JumpPage, 17 )
	Text( 2, "Перейти на остров Канареек ", JumpPage, 18 )
	Text( 2, "Перейти на остров Купидона ", JumpPage, 19 )
	Text( 2, "Перейти на остров Удачи ", JumpPage, 20 )
	Text( 2, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 3, "Арсин: Привет, я островной портальщик. Стоимость перемещения 2000 золотых. Куда хотите отправиться? " )
	Text( 3, "Перейти в Аргент ", JumpPage, 21 )
	Text( 3, "Перейти на остров Зефира ", JumpPage, 14 )
	Text( 3, "Перейти на остров Отверженных ", JumpPage, 16 )
	Text( 3, "Перейти на остров Стужи ", JumpPage, 17 )
	Text( 3, "Перейти на остров Канареек ", JumpPage, 18 )
	Text( 3, "Перейти на остров Купидона ", JumpPage, 19 )
	Text( 3, "Перейти на остров Удачи ", JumpPage, 20 )
	Text( 3, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 4, "Шейла: Привет, я островной портальщик. Стоимость перемещения 2000 золотых. Куда хотите отправиться? " )
	Text( 4, "Перейти в Аргент ", JumpPage, 21 )
	Text( 4, "Перейти на остров Зефира ", JumpPage, 14 )
	Text( 4, "Перейти на Ледниковый остров ", JumpPage, 15 )
	Text( 4, "Перейти на остров Стужи ", JumpPage, 17 )
	Text( 4, "Перейти на остров Канареек ", JumpPage, 18 )
	Text( 4, "Перейти на остров Купидона ", JumpPage, 19 )
	Text( 4, "Перейти на остров Удачи ", JumpPage, 20 )
	Text( 4, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 5, "Джули: Привет, я островной портальщик. Стоимость перемещения 2000 золотых. Куда хотите отправиться? " )
	Text( 5, "Перейти в Аргент ", JumpPage, 21 )
	Text( 5, "Перейти на остров Зефира ", JumpPage, 14 )
	Text( 5, "Перейти на Ледниковый остров ", JumpPage, 15 )
	Text( 5, "Перейти на остров Отверженных ", JumpPage, 16 )
	Text( 5, "Перейти на остров Канареек ", JumpPage, 18 )
	Text( 5, "Перейти на остров Купидона ", JumpPage, 19 )
	Text( 5, "Перейти на остров Удачи ", JumpPage, 20 )
	Text( 5, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 6, "Винни: Привет, я островной портальщик. Стоимость перемещения 2000 золотых. Куда хотите отправиться? " )
	Text( 6, "Перейти в Аргент ", JumpPage, 21 )
	Text( 6, "Перейти на остров Зефира ", JumpPage, 14 )
	Text( 6, "Перейти на Ледниковый остров ", JumpPage, 15 )
	Text( 6, "Перейти на остров Отверженных ", JumpPage, 16 )
	Text( 6, "Перейти на остров Стужи ", JumpPage, 17 )
	Text( 6, "Перейти на остров Купидона ", JumpPage, 19 )
	Text( 6, "Перейти на остров Удачи ", JumpPage, 20 )
	Text( 6, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 7, "Ванда: Привет, я островной портальщик. Стоимость перемещения 2000 золотых. Куда хотите отправиться? " )
	Text( 7, "Перейти в Аргент ", JumpPage, 21 )
	Text( 7, "Перейти на остров Зефира ", JumpPage, 14 )
	Text( 7, "Перейти на Ледниковый остров ", JumpPage, 15 )
	Text( 7, "Перейти на остров Отверженных ", JumpPage, 16 )
	Text( 7, "Перейти на остров Стужи ", JumpPage, 17 )
	Text( 7, "Перейти на остров Канареек ", JumpPage, 18 )
	Text( 7, "Перейти на остров Удачи ", JumpPage, 20 )
	Text( 7, "Записать точку возвращения ", JumpPage, 25 )
	
	Talk( 8, "Джульета: Привет, я островной портальщик. Стоимость перемещения 2000 золотых. Куда хотите отправиться? " )
	Text( 8, "Перейти в Аргент ", JumpPage, 21 )
	Text( 8, "Перейти на остров Зефира ", JumpPage, 14 )
	Text( 8, "Перейти на Ледниковый остров ", JumpPage, 15 )
	Text( 8, "Перейти на остров Отверженных ", JumpPage, 16 )
	Text( 8, "Перейти на остров Стужи ", JumpPage, 17 )
	Text( 8, "Перейти на остров Канареек ", JumpPage, 18 )
	Text( 8, "Перейти на остров Купидона ", JumpPage, 19 )
	Text( 8, "Записать точку возвращения ", JumpPage, 25 )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 14, "Перейти на остров Зефира? Нет проблем! Стоимость 2000 золотых " )
	Text( 14, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 )  
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 15, "Перейти на Ледниковый остров? Нет проблем! Стоимость 2000 золотых " )
	Text( 15, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 16, "Перейти на остров Отверженных? Нет проблем! Стоимость 2000 золотых " )
	Text( 16, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 )   
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 17, "Перейти на остров Стужи? Нет проблем! Стоимость 2000 золотых " )
	Text( 17, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 )  
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 18, "Перейти на остров Канареек? Нет проблем! Стоимость 2000 золотых " )
	Text( 18, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 )  
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 19, "Перейти на остров Купидона? Нет проблем! Стоимость 2000 золотых " )
	Text( 19, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 20, "Перейти на остров Удачи? Нет проблем! Стоимость 2000 золотых " )
	Text( 20, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 21, "Перейти в Аргент? Нет проблем! Стоимость 2000 золотых " )
	Text( 21, "Перейти ",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 21, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 123 )
	TriggerAction( 1, SetSpawnPos, "Argent City")
	TriggerCondition( 2, IsMapNpc, "garner", 124 )
	TriggerAction( 2, SetSpawnPos, "Zephyr Isle")
	TriggerCondition( 3, IsMapNpc, "garner", 125 )
	TriggerAction( 3, SetSpawnPos, "Glacier Isle")
	TriggerCondition( 4, IsMapNpc, "garner", 126 )
	TriggerAction( 4, SetSpawnPos, "Outlaw Isle")
	TriggerCondition( 5, IsMapNpc, "magicsea", 69 )
	TriggerAction( 5, SetSpawnPos, "Isle of Chill")
	TriggerCondition( 6, IsMapNpc, "magicsea", 70)
	TriggerAction( 6, SetSpawnPos, "Canary Isle")
	TriggerCondition( 7, IsMapNpc, "magicsea", 71 )
	TriggerAction( 7, SetSpawnPos, "Cupid Isle")
	TriggerCondition( 8, IsMapNpc, "darkblue", 65 )
	TriggerAction( 8, SetSpawnPos, "Isle of Fortune")
	TriggerFailure( 8, JumpPage, 28 )
	Talk( 25, "Записать точку возвращения? " )
	Text( 25, "Да, пожалуйста запиши ", MultiTrigger, GetMultiTrigger(), 8 )
	Text( 25, "Нет, спасибо ",CloseTalk )
	
	Talk( 26, "Простите, у вас недостаточно денег для перемещения! " )
	
	Talk( 27, "Найди меня если потребуется помощь ", CloseTalk )
	
    Talk( 28, "Невозможно записать точку сохранения! ", CloseTalk )
	
	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 123 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, IsMapNpc, "garner", 124 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, IsMapNpc, "garner", 125 )
	TriggerAction( 3, JumpPage, 3 )
	TriggerCondition( 4, IsMapNpc, "garner", 126 )
	TriggerAction( 4, JumpPage, 4 )
	TriggerCondition( 5, IsMapNpc, "magicsea", 69 )
	TriggerAction( 5, JumpPage, 5)
	TriggerCondition( 6, IsMapNpc, "magicsea", 70)
	TriggerAction( 6, JumpPage, 6 )
	TriggerCondition( 7, IsMapNpc, "magicsea", 71 )
	TriggerAction( 7, JumpPage, 7)
	TriggerCondition( 8, IsMapNpc, "darkblue", 65 )
	TriggerAction( 8, JumpPage, 8 )
	Start( GetMultiTrigger(), 8 )
end