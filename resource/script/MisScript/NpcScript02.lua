print( "Loading NPCScript02.lua" )

function GoToWhere()

	local ReSelectTalk = "Я должен подумать..."
	local ReSelectPage = 1

	local CancelSelectTalk = "Забудь... Я останусь здесь"
	local CancelSelectPage = 3

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"
	local CurMapName6 = "winterland"

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

	local GoTo11X = 1903
	local GoTo11Y = 2807
	local GoTo11M = CurMapName1

	local GoTo12X = 1517
	local GoTo12Y = 3091
	local GoTo12M = CurMapName1

	local GoTo13X = 1120
	local GoTo13Y = 2773
	local GoTo13M = CurMapName1

	local GoTo14X = 535
	local GoTo14Y = 2433
	local GoTo14M = CurMapName1

	local GoTo15X = 787
	local GoTo15Y = 3121
	local GoTo15M = CurMapName2

	local GoTo16X = 1214
	local GoTo16Y = 3203
	local GoTo16M = CurMapName2

	local GoTo17X = 807
	local GoTo17Y = 360
	local GoTo17M = CurMapName5

	local GoTo18X = 1050
	local GoTo18Y = 656
	local GoTo18M = CurMapName5

	local GoTo19X = 2146
	local GoTo19Y = 542
	local GoTo19M = CurMapName5

	local GoTo20X = 2681
	local GoTo20Y = 647
	local GoTo20M = CurMapName5

	local GoTo21X = 249
	local GoTo21Y = 868
	local GoTo21M = CurMapName6

	Talk( 1, "Джовиал: Привет! Я портальный агент! Чем могу тебе помочь?" )
	--Text( 1, "Ты хочешь отправиться в Dream City", JumpPage, 2)
	Text( 1, "Отправиться в Шайтан!", JumpPage, 5 )
	Text( 1, "Отправиться в Ледынь!", JumpPage, 7 )
	Text( 1, "Отправиться в Громоград", JumpPage, 6 )
--	Text( 1, "Отправиться на остров Зимы", JumpPage, 2 )
--	Text( 1, "Я хочу посетить другое место" , JumpPage, 10 )
	Text( 1, "Записать точку возрождения", JumpPage, 29 )
	Text( 1, "Ничем, я просто осматриваюсь",CloseTalk )

	Talk( 3, "Если надумаешь воспользоваться моими услугами, обращайся.", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1636 )
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo21X, GoTo21Y, GoTo21M )
	TriggerCondition( 2, HasRecord, 1636 )
	TriggerCondition( 2, HasMoney, 25000 )
	TriggerAction( 2, TakeMoney, 25000 )
	TriggerAction( 2, GoTo, GoTo21X, GoTo21Y, GoTo21M )
	TriggerFailure( 2, JumpPage, 28)
	Talk(2, "Ты хочешь отправиться на остров Зимы? Нет проблем, стоимость перемещения стоит 25000 золотых. Для новичков, уровень которых ниже 40, это бесплатно.")
	Text(2, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 )
	Text(2, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 4, "Ты хочешь отправиться в Аргент? Нет проблем, стоимость перемещения стоит 500 золотых. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 4, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 5, "Я обожаю Шайтан. Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 5, "Переместиться",MultiTrigger, GetMultiTrigger(), 2)
	Text( 5, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 6, "Ты хочешь отправиться в Громоград? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 6, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 )
	Text( 6, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 7, "Ты хочешь отправиться в Ледынь? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 7, "Переместиться",MultiTrigger, GetMultiTrigger(), 2)
	Text( 7, CancelSelectTalk, JumpPage , CancelSelectPage )

--	InitTrigger()
--	TriggerCondition( 1, LvCheck, "<", 40 )
--	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
--	TriggerCondition( 2, HasMoney, 500 )
--	TriggerAction( 2, TakeMoney, 500 )
--	TriggerAction( 2, GoTo, GoTo05X, GoTo05Y, GoTo05M )
--	TriggerFailure( 2, JumpPage, 28 )
--	Talk( 8, "Ты хочешь отправиться в Халдейский Оплот? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
--	Text( 8, "Переместиться",MultiTrigger, GetMultiTrigger(), 2)
--	Text( 8, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 10, "Джовиал: В какое место Аскароны ты хочешь попасть?" )
	Text( 10, "Отправиться в Заброшенные шахты", JumpPage,11 )
	Text( 10, "Отправиться в Андийский лес", JumpPage, 16 )
	Text( 10, "Отправиться в Скалистый удел", JumpPage, 12 )
	Text( 10, "Отправиться в Валхаллу", JumpPage, 13 )
	Text( 10, "Отправиться в Халдейский оплот", JumpPage, 15 )
	Text( 10, "Отправиться в Обитель радости", JumpPage,14 )
	Text( 10, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 11, "Ты хочешь отправиться в Заброшенные шахты? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 11, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 11, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 12, "Ты хочешь отправиться в Скалистый удел? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 12, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 12, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo13X, GoTo13Y, GoTo13M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo13X, GoTo13Y, GoTo13M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 13, "Ты хочешь отправиться в Валхаллу? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 13, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 13, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo14X, GoTo14Y, GoTo14M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo14X, GoTo14Y, GoTo14M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 14, "Ты хочешь отправиться в Обитель радости? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 14, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 15, "Ты хочешь отправиться в Халдейский оплот? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 15, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 16, "Ты хочешь отправиться в Андийский лес? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 16, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )
--
--
	Talk( 18, "Мэй: Привет! Я портальный агент! Чем могу тебе помочь?" )
	--Text ( 18, "Ты хочешь отправиться в Dream City", JumpPage, 2)
	Text( 18, "Отправиться в Аргент", JumpPage, 4 )
	Text( 18, "Отправиться в Ледынь", JumpPage, 7 )
	Text( 18, "Отправиться в Громоград", JumpPage, 6 )
--	Text( 18, "Отправиться на остров Зимы", JumpPage, 2 )
--	Text( 18, "Я хочу отправиться в другое место",JumpPage, 19)
	Text( 18, "Записать точку возрождения", JumpPage, 30 )

	Talk( 19,"Мэй: В какое место Пустыни ты хочешь попасть?" )
	Text( 19,"Отправиться в Гавань Оазиса", JumpPage,20 )
	Text( 19,"Отправиться в Рощу акаций", JumpPage, 21 )
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo15X, GoTo15Y, GoTo15M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo15X, GoTo15Y, GoTo15M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 20, "Ты хочешь отправиться в Гавань Оазиса? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 20, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo16X, GoTo16Y, GoTo16M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo16X, GoTo16Y, GoTo16M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 21, "Ты хочешь отправиться в Рощу акаций? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 21, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 21, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 22, "Сара: Привет! Я портальный агент! Чем могу тебе помочь?" )
	--Text( 22, "Ты хочешь отправиться в Dream City", JumpPage, 2)
	Text( 22, "Отправиться в Аргент", JumpPage, 4 )
	Text( 22, "Отправиться в Шайтан", JumpPage, 5 )
	Text( 22, "Отправиться в Ледынь", JumpPage, 7 )
--	Text( 22, "Отправиться на остров Зимы", JumpPage, 2 )
	Text( 22, "Записать точку возрождения", JumpPage, 31 )

	Talk( 23, "Элен: Привет! Я портальный агент! Чем могу тебе помочь?" )
	--Text( 23, "Ты хочешь отправиться в Dream City", JumpPage, 2)
	Text( 23, "Отправиться в Аргент", JumpPage, 4 )
	Text( 23, "Отправиться в Шайтан", JumpPage, 5 )
	Text( 23, "Отправиться в Громоград", JumpPage, 6 )
--	Text( 23, "Отправиться на остров Зимы", JumpPage, 2 )
--	Text( 23, "Я хочу переместиться в другое место", JumpPage, 24 )
	Text( 23, "Записать точку возрождения", JumpPage, 32 )

	Talk( 24, "Элен: В какое место Ледяной пустоши ты хочешь попасть?")
	Text( 24, "Отправиться в Пустошь Ледыни", JumpPage, 25 )
	Text( 24, "Отправиться в Бухту Атлантис", JumpPage, 26 )
	Text( 24, "Отправиться на Берег Скелетов", JumpPage, 27 )
	Text( 24, "Отправиться в Ледяной Шип", JumpPage, 9 )
	Text( 24, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo17X, GoTo17Y, GoTo17M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo17X, GoTo17Y, GoTo17M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 25, "Ты хочешь отправиться в Пустошь Ледыни? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 25, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 25, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo18X, GoTo18Y, GoTo18M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo18X, GoTo18Y, GoTo18M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 26, "Ты хочешь отправиться в Бухту Атлантис? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 26, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 26, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo19X, GoTo19Y, GoTo19M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo19X, GoTo19Y, GoTo19M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 27, "Ты хочешь отправиться в Берег Скелетов? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 27, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 27, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo20X, GoTo20Y, GoTo20M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo20X, GoTo20Y, GoTo20M )
	TriggerFailure( 2, JumpPage, 28 )
	Talk( 9, "Ты хочешь отправиться в Ледяной шип? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 9, "Переместиться",MultiTrigger, GetMultiTrigger(), 2)
	Text( 9, CancelSelectTalk, JumpPage , CancelSelectPage )


	Talk( 28, "Извини! Но у тебя не достаточно золота для перемещения." )

	Talk( 29, "Джовиал: Записать точку возрождения в Аргенте?" )
	Text( 29, "Да, пожалуйста запиши.", SetSpawnPos, "Аргент" )
	Text( 29, "Нет, спасибо",CloseTalk )

	Talk( 30, "Мэй: Записать точку возрождения в Шайтане?" )
	Text( 30, "Да, пожалуйста запиши.", SetSpawnPos, "Шайтан" )
	Text( 30, "Нет, спасибо",CloseTalk )

	Talk( 31, "Сара: Записать точку возрождения в Громограде?" )
	Text( 31, "Да, пожалуйста запиши.", SetSpawnPos, "Громоград" )
	Text( 31, "Нет, спасибо",CloseTalk )

	Talk( 32, "Элен: Записать точку возрождения в Ледыни?" )
	Text( 32, "Да, пожалуйста запиши.", SetSpawnPos, "Ледынь" )
	Text( 32, "Нет, спасибо",CloseTalk )

	InitTrigger()

	TriggerCondition( 1, IsMapNpc, "garner", 0 )
	TriggerAction( 1, JumpPage, 1 )

	TriggerCondition( 2, IsMapNpc, "magicsea", 0 )
	TriggerAction( 2, JumpPage, 18 )

	TriggerCondition( 3, IsMapNpc, "garner", 43 )
	TriggerAction( 3, JumpPage, 22 )

	TriggerCondition( 4, IsMapNpc, "darkblue", 12 )
	TriggerAction( 4, JumpPage, 23 )

	Start( GetMultiTrigger(), 4 )
end


function transmittal()

	local CancelSelectTalk = "Забудь... Я останусь здесь"
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

	local GoTo13X = 2231
	local GoTo13Y = 2788
	local GoTo13M = CurMapName1

	local GoTo14X = 890
	local GoTo14Y = 3575
	local GoTo14M = CurMapName2

	local GoTo15X = 1318
	local GoTo15Y = 510
	local GoTo15M = CurMapName5

	Talk( 1, "Мия: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 1, "Отправиться в Скалистый удел", JumpPage, 14 )
	Text( 1, "Отправиться в Аргент", JumpPage , 29 )
	Text( 1, "Записать точку возрождения", JumpPage, 25 )

	Talk( 2, "Фелиция: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 2, "Отправиться в Заброшенные шахты", JumpPage, 13 )
	Text( 2, "Отправиться в Андийский лес", JumpPage, 18 )
	Text( 2, "Отправиться в Аргент", JumpPage , 29 )
	Text( 2, "Записать точку возрождения", JumpPage, 25 )

	Talk( 3, "Венди: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 3, "Отправиться в Валхаллу", JumpPage, 15 )
	Text( 3, "Отправиться в Скалистый удел", JumpPage, 14 )
	Text( 3, "Отправиться в Аргент", JumpPage , 29 )
	Text( 3, "Записать точку возрождения", JumpPage, 25 )

	Talk( 4, "Элизабет: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 4, "Отправиться в Обитель радости", JumpPage, 16 )
	Text( 4, "Отправиться в Андийский лес", JumpPage, 18 )
	Text( 4, "Отправиться в Аргент", JumpPage , 29 )
	Text( 4, "Записать точку возрождения", JumpPage, 25 )

	Talk( 5, "Мейла: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 5, "Отправиться в Халдейский оплот", JumpPage, 17 )
	Text( 5, "Отправиться в Валхаллу", JumpPage, 15 )
	Text( 5, "Отправиться в Аргент", JumpPage , 29 )
	Text( 5, "Записать точку возрождения", JumpPage, 25 )

	Talk( 6, "Мэйбл: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 6, "Отправиться в Обитель радости", JumpPage, 16 )
	Text( 6, "Отправиться в Аргент", JumpPage , 29 )
	Text( 6, "Записать точку возрождения", JumpPage, 25 )

	Talk( 7, "Айна: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 7, "Отправиться в Роща акаций", JumpPage, 20 )
	Text( 7, "Отправиться в Шайтан", JumpPage , 30 )
	Text( 7, "Записать точку возрождения", JumpPage, 25 )

	Talk( 8, "Берин: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 8, "Отправиться в Гавань Оазиса", JumpPage, 19 )
	Text( 8, "Отправиться в Шайтан!", JumpPage , 30 )
	Text( 8, "Записать точку возрождения", JumpPage, 25 )

	Talk( 9, "Лили: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 9, "Отправиться в Бухта Атлантис", JumpPage, 22 )
	Text( 9, "Отправиться в Ледынь", JumpPage , 31 )
	Text( 9, "Записать точку возрождения", JumpPage, 25 )

	Talk( 10, "Софья: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 10, "Отправиться в Берег Скелетов", JumpPage, 23 )
	Text( 10, "Отправиться в Пустошь Ледыни", JumpPage, 21 )
	Text( 10, "Отправиться в Ледынь", JumpPage , 31 )
	Text( 10, "Записать точку возрождения", JumpPage, 25 )

	Talk( 11, "Мина: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 11, "Отправиться в Ледяной шип!", JumpPage, 24 )
	Text( 11, "Отправиться в Бухта Атлантис!", JumpPage, 22 )
	Text( 11, "Отправиться в Ледынь", JumpPage , 31 )
	Text( 11, "Записать точку возрождения", JumpPage, 25 )

	Talk( 12, "Артемида: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 12, "Отправиться в Берег Скелетов", JumpPage, 23 )
	Text( 12, "Отправиться в Ледынь", JumpPage , 31 )
	Text( 12, "Записать точку возрождения", JumpPage, 25 )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 13, "Ты хочешь отправиться в Заброшенные шахты? Заплати мне 200 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 13, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 13, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 14, "Ты хочешь отправиться в Скалистый удел? Заплати мне 200 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 14, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 15, "Ты хочешь отправиться в Валхаллу? Заплати мне 200 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 15, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 16, "Ты хочешь отправиться в Обитель радости? Заплати мне 200 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 16, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 17, "Ты хочешь отправиться в Халдейский оплот? Заплати мне 200 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 17, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo06X, GoTo06Y, GoTo06M  )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 18, "Ты хочешь отправиться в Андийский лес? Заплати мне 200 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 18, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo07X, GoTo07Y, GoTo07M )	
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 19, "Ты хочешь отправиться в Гавань Оазиса? Заплати мне 200 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 19, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, 
	GoTo08X, GoTo08Y, GoTo08M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 20, "Ты хочешь отправиться в Рощу акаций? Заплати мне 200 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 20, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo09X, GoTo09Y, GoTo09M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo09X, GoTo09Y, GoTo09M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 21, "Ты хочешь отправиться в Пустошь Ледыни? Заплати мне 200 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 21, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 21, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo10X, GoTo10Y, GoTo10M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo10X, GoTo10Y, GoTo10M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 22, "Ты хочешь отправиться в Бухту Атлантис? Заплати мне 200 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 22, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 22, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo11X, GoTo11Y, GoTo11M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 23, "Ты хочешь отправиться на Берег Скелетов? Заплати мне 200 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 23, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 23, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	TriggerCondition( 2, LvCheck, "<", 40 )
	TriggerAction( 2, GoTo, GoTo12X, GoTo12Y, GoTo12M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 24, "Ты хочешь отправиться в Ледяной шип? Заплати мне 200 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 24, "Переместиться",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 24, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 96 )
	TriggerAction( 1, SetSpawnPos, "Заброшенная шахта")
	TriggerCondition( 2, IsMapNpc, "garner", 94 )
	TriggerAction( 2, SetSpawnPos, "Скалистый удел")
	TriggerCondition( 3, IsMapNpc, "garner", 95 )
	TriggerAction( 3, SetSpawnPos, "Валхалла")
	TriggerCondition( 4, IsMapNpc, "garner", 97 )
	TriggerAction( 4, SetSpawnPos, "Обитель радости")
	TriggerCondition( 5, IsMapNpc, "garner", 55 )
	TriggerAction( 5, SetSpawnPos, "Халдейский оплот")
	TriggerCondition( 6, IsMapNpc, "garner", 56 )
	TriggerAction( 6, SetSpawnPos, "Андийский лес")
	TriggerCondition( 7, IsMapNpc, "magicsea", 50 )
	TriggerAction( 7, SetSpawnPos, "Гавань Оазиса")
	TriggerCondition( 8, IsMapNpc, "magicsea", 46 )
	TriggerAction( 8, SetSpawnPos, "Роща акаций")
	TriggerCondition( 9, IsMapNpc, "darkblue", 56 )
	TriggerAction( 9, SetSpawnPos, "Пустошь Ледыни")
	TriggerCondition( 10, IsMapNpc, "darkblue", 42 )
	TriggerAction( 10, SetSpawnPos, "Бухта Атлантис")
	TriggerCondition( 11, IsMapNpc, "darkblue", 46 )
	TriggerAction( 11, SetSpawnPos, "Берег Скелетов")
	TriggerCondition( 12, IsMapNpc, "darkblue", 51 )
	TriggerAction( 12, SetSpawnPos, "Ледяной шип")
	TriggerFailure( 12, JumpPage, 28 )
	Talk( 25, "Записать точку возрождения?" )
	Text( 25, "Да, пожалуйста запиши.", MultiTrigger, GetMultiTrigger(), 12 )
	Text( 25, "Нет, спасибо",CloseTalk )

	Talk( 26, "Извини! Но у тебя недостаточно золота для перемещения." )

	Talk( 27, "Если надумаешь воспользоваться моими услугами, обращайся.", CloseTalk )

	Talk( 28, "Ошибка записи, обратитесь в Техническую поддержку", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo13X, GoTo13Y, GoTo13M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo13X, GoTo13Y, GoTo13M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 29, "Ты хочешь отправиться в Аргент? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 29, "Переместиться",MultiTrigger, GetMultiTrigger(), 2)
	Text( 29, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo14X, GoTo14Y, GoTo14M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo14X, GoTo14Y, GoTo14M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 30, "Ты хочешь отправиться в Шайтан? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно.." )
	Text( 30, "Переместиться",MultiTrigger, GetMultiTrigger(), 2)
	Text( 30, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo15X, GoTo15Y, GoTo15M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo15X, GoTo15Y, GoTo15M )
	TriggerFailure( 2, JumpPage, 26 )
	Talk( 31, "Ты хочешь отправиться в Ледынь? Заплати мне 500 золотых и я отправлю тебя туда. Для новичков, уровень которых ниже 40, это бесплатно." )
	Text( 31, "Переместиться",MultiTrigger, GetMultiTrigger(), 2)
	Text( 31, CancelSelectTalk, JumpPage , CancelSelectPage )

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

function island()

	local CancelSelectTalk = "Забудь... Я останусь здесь"
	local CancelSelectPage = 27

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "eastgoaf"
	local CurMapName4 = "lonetower"
	local CurMapName5 = "darkblue"
--	local CurMapName6 = "PKmap"

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

--	local GoTo09X = 64
--	local GoTo09Y = 43
--	local GoTo09M = CurMapName6	

	Talk( 1, "Сильвий: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 1, "Отправиться на Остров Зефира", JumpPage, 14 )
	Text( 1, "Отправиться на Ледниковый остров", JumpPage, 15 )
	Text( 1, "Отправиться на Остров Отверженных", JumpPage, 16 )
	Text( 1, "Отправиться на Остров Стужи", JumpPage, 17 )
	Text( 1, "Отправиться на Остров Канареек", JumpPage, 18 )
	Text( 1, "Отправиться на Остров Купидона", JumpPage, 19 )
	Text( 1, "Отправиться на Остров Удачи", JumpPage, 20 )
--	Text( 1, "Отправиться в PKMap", JumpPage, 29 )
	Text( 1, "Записать точку возрождения", JumpPage, 25 )
	
	Talk( 2, "Андреа: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 2, "Отправиться в Аргент", JumpPage, 21 )
	Text( 2, "Отправиться на Ледниковый остров", JumpPage, 15 )
	Text( 2, "Отправиться на Остров Отверженных", JumpPage, 16 )
	Text( 2, "Отправиться на Остров Стужи", JumpPage, 17 )
	Text( 2, "Отправиться на Остров Канареек", JumpPage, 18 )
	Text( 2, "Отправиться на Остров Купидона", JumpPage, 19 )
	Text( 2, "Отправиться на Остров Удачи", JumpPage, 20 )
	Text( 2, "Записать точку возрождения", JumpPage, 25 )

	Talk( 3, "Арсин: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 3, "Отправиться в Аргент", JumpPage, 21 )
	Text( 3, "Отправиться на Остров Зефира", JumpPage, 14 )
	Text( 3, "Отправиться на Остров Отверженных", JumpPage, 16 )
	Text( 3, "Отправиться на Остров Стужи", JumpPage, 17 )
	Text( 3, "Отправиться на Остров Канареек", JumpPage, 18 )
	Text( 3, "Отправиться на Остров Купидона", JumpPage, 19 )
	Text( 3, "Отправиться на Остров Удачи", JumpPage, 20 )
	Text( 3, "Записать точку возрождения", JumpPage, 25 )

	Talk( 4, "Шаяла: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 4, "Отправиться в Аргент", JumpPage, 21 )
	Text( 4, "Отправиться на Остров Зефира", JumpPage, 14 )
	Text( 4, "Отправиться на Ледниковый остров", JumpPage, 15 )
	Text( 4, "Отправиться на Остров Стужи", JumpPage, 17 )
	Text( 4, "Отправиться на Остров Канареек", JumpPage, 18 )
	Text( 4, "Отправиться на Остров Купидона", JumpPage, 19 )
	Text( 4, "Отправиться на Остров Удачи", JumpPage, 20 )
	Text( 4, "Записать точку возрождения", JumpPage, 25 )

	Talk( 5, "Джулия: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 5, "Отправиться в Аргент", JumpPage, 21 )
	Text( 5, "Отправиться на Остров Зефира", JumpPage, 14 )
	Text( 5, "Отправиться на Ледниковый остров", JumpPage, 15 )
	Text( 5, "Отправиться на Остров Отверженных", JumpPage, 16 )
	Text( 5, "Отправиться на Остров Канареек", JumpPage, 18 )
	Text( 5, "Отправиться на Остров Купидона", JumpPage, 19 )
	Text( 5, "Отправиться на Остров Удачи", JumpPage, 20 )
	Text( 5, "Записать точку возрождения", JumpPage, 25 )

	Talk( 6, "Винни: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 6, "Отправиться в Аргент", JumpPage, 21 )
	Text( 6, "Отправиться на Остров Зефира", JumpPage, 14 )
	Text( 6, "Отправиться на Ледниковый остров", JumpPage, 15 )
	Text( 6, "Отправиться на Остров Отверженных", JumpPage, 16 )
	Text( 6, "Отправиться на Остров Стужи", JumpPage, 17 )
	Text( 6, "Отправиться на Остров Купидона", JumpPage, 19 )
	Text( 6, "Отправиться на Остров Удачи", JumpPage, 20 )
	Text( 6, "Записать точку возрождения", JumpPage, 25 )

	Talk( 7, "Ванда: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 7, "Отправиться в Аргент", JumpPage, 21 )
	Text( 7, "Отправиться на Остров Зефира", JumpPage, 14 )
	Text( 7, "Отправиться на Ледниковый остров", JumpPage, 15 )
	Text( 7, "Отправиться на Остров Отверженных", JumpPage, 16 )
	Text( 7, "Отправиться на Остров Стужи", JumpPage, 17 )
	Text( 7, "Отправиться на Остров Канареек", JumpPage, 18 )
	Text( 7, "Отправиться на Остров Удачи", JumpPage, 20 )
	Text( 7, "Записать точку возрождения", JumpPage, 25 )

	Talk( 8, "Джульет: Привет! Я портальный агент! Чем могу тебе помочь?" )
	Text( 8, "Отправиться в Аргент", JumpPage, 21 )
	Text( 8, "Отправиться на Остров Зефира", JumpPage, 14 )
	Text( 8, "Отправиться на Ледниковый остров", JumpPage, 15 )
	Text( 8, "Отправиться на Остров Отверженных", JumpPage, 16 )
	Text( 8, "Отправиться на Остров Стужи", JumpPage, 17 )
	Text( 8, "Отправиться на Остров Канареек", JumpPage, 18 )
	Text( 8, "Отправиться на Остров Купидона", JumpPage, 19 )
	Text( 8, "Записать точку возрождения", JumpPage, 25 )

--	Talk( 9, "Niecy: Привет! Я портальный агент! Чем могу тебе помочь?" )
--	Text( 9, "Отправиться в Аргент", JumpPage, 21 )
--	Text( 9, "Отправиться на Ледниковый остров", JumpPage, 15 )
--	Text( 9, "Отправиться на Остров Отверженных", JumpPage, 16 )
--	Text( 9, "Отправиться на Остров Стужи", JumpPage, 17 )
--	Text( 9, "Отправиться на Остров Канареек", JumpPage, 18 )
--	Text( 9, "Отправиться на Остров Купидона", JumpPage, 19 )
--	Text( 9, "Отправиться на Остров Удачи", JumpPage, 20 )
--	Text( 9, "Записать точку возрождения", JumpPage, 25 )


	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 14, "Ты хочешь отправиться на Остров Зефира? Нет проблем! Заплати мне 2000 золотых!" )
	Text( 14, "Переместиться",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 14, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 15, "Ты хочешь отправиться на Ледниковый остров? Нет проблем! Заплати мне 2000 золотых!" )
	Text( 15, "Переместиться",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 15, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo03X, GoTo03Y, GoTo03M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 16, "Ты хочешь отправиться на Остров Отверженных? Нет проблем! Заплати мне 2000 золотых!" )
	Text( 16, "Переместиться",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 16, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 17, "Ты хочешь отправиться на Остров Стужи? Нет проблем! Заплати мне 2000 золотых!" )
	Text( 17, "Переместиться",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 17, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo05X, GoTo05Y, GoTo05M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 18, "Ты хочешь отправиться на Остров Канареек? Нет проблем! Заплати мне 2000 золотых!" )
	Text( 18, "Переместиться",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 18, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo06X, GoTo06Y, GoTo06M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 19, "Ты хочешь отправиться на Остров Купидона? Нет проблем! Заплати мне 2000 золотых!" )
	Text( 19, "Переместиться",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 19, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 20, "Ты хочешь отправиться на Остров Удачи? Нет проблем! Заплати мне 2000 золотых!" )
	Text( 20, "Переместиться",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 20, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, GoTo08X, GoTo08Y, GoTo08M )
	TriggerFailure( 1, JumpPage, 26 )
	Talk( 21, "Ты хочешь отправиться в Аргент? Нет проблем! Заплати мне 2000 золотых!" )
	Text( 21, "Переместиться",MultiTrigger, GetMultiTrigger(), 1 ) 
	Text( 21, CancelSelectTalk, JumpPage , CancelSelectPage )

--	InitTrigger()
--	TriggerCondition( 1, HasMoney, 5000 )
--	TriggerAction( 1, TakeMoney, 5000 )
--	TriggerAction( 1, GoTo, GoTo09X, GoTo09Y, GoTo09M )
--	TriggerFailure( 1, JumpPage, 26 )
--	Talk( 29, "PKMap? No problem, just give me 5000 Gold, thank you!" )
--	Text( 29, "Переместиться",MultiTrigger, GetMultiTrigger(), 1 ) 
--	Text( 29, CancelSelectTalk, JumpPage , CancelSelectPage )

	InitTrigger()
	TriggerCondition( 1, IsMapNpc, "garner", 123 )
	TriggerAction( 1, SetSpawnPos, "Argent City")
	TriggerCondition( 2, IsMapNpc, "garner", 124 )
	TriggerAction( 2, SetSpawnPos, "Остров Зефира")
	TriggerCondition( 3, IsMapNpc, "garner", 125 )
	TriggerAction( 3, SetSpawnPos, "Ледниковый остров")
	TriggerCondition( 4, IsMapNpc, "garner", 126 )
	TriggerAction( 4, SetSpawnPos, "Остров Отверженных")
	TriggerCondition( 5, IsMapNpc, "magicsea", 69 )
	TriggerAction( 5, SetSpawnPos, "Остров Стужи")
	TriggerCondition( 6, IsMapNpc, "magicsea", 70)
	TriggerAction( 6, SetSpawnPos, "Остров Канареек")
	TriggerCondition( 7, IsMapNpc, "magicsea", 71 )
	TriggerAction( 7, SetSpawnPos, "Остров Купидона")
	TriggerCondition( 8, IsMapNpc, "darkblue", 65 )
	TriggerAction( 8, SetSpawnPos, "Остров Удачи")
--	TriggerCondition( 9, IsMapNpc, "PKmap", 0 )
--	TriggerAction( 9, SetSpawnPos, "PKmap")
	TriggerFailure( 9, JumpPage, 28 )

	Talk( 25, "Записать точку возрождения?" )
	Text( 25, "Да, пожалуйста запиши.", MultiTrigger, GetMultiTrigger(), 8 )
	Text( 25, "Нет, спасибо",CloseTalk )

	Talk( 26, "Извини! Но у тебя недостаточно золота, что бы переместиться." )

	Talk( 27, "Если надумаешь воспользоваться моими услугами, обращайся.", CloseTalk )

	Talk( 28, "Ошибка записи, обратитесь в Техническую поддержку", CloseTalk )

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
--	TriggerCondition( 9, IsMapNpc, "PKmap", 0 )
--	TriggerAction( 9, JumpPage, 9)
	Start( GetMultiTrigger(), 8 )
end
