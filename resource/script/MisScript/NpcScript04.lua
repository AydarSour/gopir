print( "Loading NPCScript04.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


function b_talk1()


	Talk( 1, "Ву Син: Слева у меня Изумрудный клинок, справа Мечь храбрости, а на голове - Драконья корона. Ничто меня не остановит!" )
	Text( 1, "Торговля", BuyPage )
	Text( 1, "Ремонт", OpenRepair)
	Text( 1, "О Ковке", JumpPage, 2)
	Text( 1, "О Комбинировании", JumpPage, 3)

	Talk( 2, "Ву Син: Ковка? Её секрет знает только кузнец из Шайтана" )

	Talk( 3, "Ву Ксин: Хочешь что-то скомбинировать? Насколько я знаю, тебе нужен свиток комбинирования, в котором перечислены необходимые предметы. Собери их и обратись к Бакалейщику - Амосу в Шайтане. Он единственный знает секрет комбинирования." )

	Talk( 4, "Ву Ксин: Мая твая не панимать!" )


	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )


	InitTrade()
	Weapon(	0023	)
	Weapon(	1399	)
	Weapon(	0021	)
	Weapon(	1378	)
	Weapon(	1387	)
	Weapon(	0084	)
	Weapon(	1426	)
	Weapon(	1461	)
	Weapon(	0108	)
	Weapon(	4302	)
	Weapon(	1438	)
	Weapon(	1441	)
	Weapon(	1473	)
	Weapon(	1476	)
	Weapon(	0045	)
	Weapon(	1414	)


	AddNpcMission	(393)	--1
	AddNpcMission	(567)	--2

	AddNpcMission	(5817)	--3
	AddNpcMission	(5818)	--4

end



function b_talk2()

	Talk( 1, "Длинный Эр: Добро пожаловать! У нас есть блюда всех кухонь мира. Желаете чего нибудь?")

	Talk( 2, "Длинный Эр: Мая твая не панимать!" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(394)	--1
	AddNpcMission	(536)	--2
	AddNpcMission	(537)	--3
	AddNpcMission	(538)	--4
	AddNpcMission	(569)	--5

	AddNpcMission	(5819)
	AddNpcMission	(5820)

	--AddNpcMission	(6174)
	--AddNpcMission	(6175)

end

function b_talk3()

	Talk( 1, "Луна: Хм...Похоже, у кого-то такое же имя, как и у меня. Я могу засудить его за нарушение авторских прав!" )
	Text( 1, "Торг", BuyPage )
	Talk( 2, "Луна: Мая твая не панимать!" )


	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )


	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission	(395)	--1
	AddNpcMission	(517)	--2
	AddNpcMission	(519)	--3
	AddNpcMission	(525)	--4
	AddNpcMission	(526)	--5
	AddNpcMission	(564)	--6

	AddNpcMission	(5821)	--7
	AddNpcMission	(5822)	--8
	--AddNpcMission	(535)	--9

end


function b_talk4()

	Talk( 1, "Юрий: Ты не слышал о Фонтане Жизни? О Дьявольском отродье? Что? Не слышал? А о Маджонге? Боже мой...Какой же ты искатель приключений?" )

	Talk( 8, "Юрий: Мая твая не панимать!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )
	AddNpcMission	(396)	--1
	AddNpcMission	(530)	--2
	AddNpcMission	(545)	--3
	AddNpcMission	(546)	--4
	AddNpcMission	(547)	--5
	AddNpcMission	(572)	--6

	AddNpcMission	(5825)	--7
	AddNpcMission	(5826)	--8

end


function b_talk5()
	local ReSelectTalk = "Я должен подумать..."
	local ReSelectPage = 1

	local CancelSelectTalk = "Забудь... Я останусь здесь"
	local CancelSelectPage = 7

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	local GoTo02X = 890
	local GoTo02Y = 3575
	local GoTo02M = CurMapName2

	local GoTo04X = 1318
	local GoTo04Y = 510
	local GoTo04M = CurMapName5

	Talk( 1, "Чун Ли: Я горда тем, что хорошо делаю своё дело. Любое перемещение стоит 500 золотых, для новичков ниже 40 уровня это бесплатно. Ах да, деньги вперёд!" )
	Text( 1, "Отправиться в Аргент!", JumpPage, 2 )
	Text( 1, "Отправиться в Шайтан!", JumpPage, 3 )
	Text( 1, "Отправиться в Ледынь!", JumpPage, 4 )
	Text( 1, "Записать точку возрождения", JumpPage, 5 )
	
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 2, "Переместиться в Аргент? Без проблем! Заплати, пожалуйста, 500 золотых. Для персонажей 40 уровня и ниже – бесплатно!" )
	Text( 2, "Перемещение",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 39 )
	TriggerAction( 1, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2,  GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 3, "Чун Ли: Обожаю Шайтан! Пожалуйста, заплати 500 золотых! Для игроков 40 и ниже уровней бесплатно!" )
	Text( 3, "Перемещение",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 6 )
	Talk( 4, "Чун Ли: Переместиться в Ледынь? Без проблем! Заплати, пожалуйста 500 золотых! Для игроков 40 уровня и ниже перемещение бесплатно!" )
	Text( 4, "Перемещение",MultiTrigger, GetMultiTrigger(), 2)
	Text( 4, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 5, "Чунь Ли: Хочешь записаться в Весноград? Все правильно?" )
	Text( 5, "Да, пожалуйста запишите.", SetSpawnPos, "Весноград" )
	Text( 5, "Нет, спасибо.",CloseTalk )

	Talk( 6, "Чун Ли: Извини! У тебя нет денег на телепортацию" )

	Talk( 7, "Чун Ли: Обращайся ко мне если тебе понадобится куда-нибудь переместиться", CloseTalk )
	Talk( 8, "Чун Ли: Мая твая не панимать!" )



	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 8 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(397)	--1
	AddNpcMission	(559)	--2
	MisListPage(8)

	AddNpcMission	(5827)	--3
	AddNpcMission	(5828)	--4

end

function b_talk6()


	Talk( 1, "Фокус-Покус: Приветствую! Вижу, боги тебя благословили, и Фортуна улабывается. Раз у тебя такой счастливый день, я продам тебе Справочник пирата всего за 500 золотых. Идет?" )
	Text( 1, "Мне нужен 1 жребий удачи", JumpPage, 2 )
	Text( 1, "Мне нужно 10 жребиев удачи", JumpPage, 24 )
	Text( 1, "Мне нужен 1 жребий фортуны", JumpPage, 3 )
	Text( 1, "Мне нужно 10 жребиев фортуны", JumpPage, 25 )
	Text( 1, "Сделка со смертью", JumpPage, 6 )
	Text( 1, "Улучшение снаряжения", OpenItemTiChun )

	Talk( 6, "Фокус Покус: Тьма - маска смерти. Что ты хочешь получить?")
	Text( 6, "Сердце смерти", JumpPage , 7 )
	Text( 6, "Меланхолии смерти", JumpPage , 8 )
	Text( 6, "Проклятые души", JumpPage , 10 )
	Text( 6, "Души для улучшения", JumpPage , 11 )

	Talk( 7, "Фокус Покус: 1 Волос смерти, 1 Зуб смерти, 1 Глаз смерти в обмен на 1 Сердце смерти.")
	Text( 7, "Подтвердить обмен", ChangeHeartDeath, 1 )

	Talk( 8, "Фокус Покус: Мелахолия смерти, очень редкий предмет! Понадобиться: 3 Запечатанные души Силестии и 3 Запечатанные души Мерделя, какую хочешь обменять?")
	Text( 8, "Меланхолия Воителя", MelancholyCrus, 1 )
	Text( 8, "Меланхолия Стрелка", MelancholySharp, 1 )
	Text( 8, "Меланхолия Чемпиона", MelancholyChamp, 1 )
	Text( 8, "Меланхолия Лучника", MelancholyBow, 1 )
	Text( 8, "Меланхолия Цилительницы", MelancholyCler, 1 )
	Text( 8, "Следующая страница --->>", JumpPage, 9 )

	Talk( 9, "Фокус Покус: Мелахолия смерти, очень редкий предмет! Понадобиться: 3 Запечатанные души Силестии и 3 Запечатанные души Мерделя, какую хочешь обменять?")
	Text( 9, "Меланхолия Колдуньи", MelancholySeal, 1 )
	Text( 9, "Меланхолия Покорителя морей", MelancholyVoy, 1 )
	Text( 9, "Меланхолия Защитника", MelancholyShield, 1 )
	Text( 9, "Меланхолия Брони Смерти", MelancholyArmor, 1 )
	Text( 9, "<<--- Предыдущая страница", JumpPage, 8 )

	Talk( 10, "Фокус Покус: Проклятые души, к ним лучше не прикасаться, работайте строго в перчатках! Понадобиться: 10 Рун Кэль, какую хочешь получить?")
	Text( 10, "Проклятая душа Хардина", CursedSoulHardin, 1 )
	Text( 10, "Проклятая душа Cмерти", CursedSoulDeath, 1 )
	Text( 10, "Проклятая душа Абаддона", CursedSoulAbaddon, 1 )
	Text( 10, "Проклятая душа Асура", CursedSoulAsura, 1 )
	Text( 10, "Проклятая душа Бездны", CursedSoulBezdna, 1 )
	Text( 10, "Проклятая душа Стикса", CursedSoulStiks, 1 )

	Talk( 11, "Фокус Покус: Ты ишешь Душу что бы улучшить свою экиперовку? Я могу их синтезировать, но мне понадобиться: Меланхолия смерти нужного типа, Проклятая душа для твоего класса и Сердце смерти.")
	Text( 11, "Душа Хардина", SoulHardin, 1 )
	Text( 11, "Душа Смерти", SoulDeath, 1 )
	Text( 11, "Душа Абаддона", SoulAbaddon, 1 )
	Text( 11, "Душа Асуры", SoulAsura, 1 )
	Text( 11, "Душа Бездны", SoulBezdna, 1 )
	Text( 11, "Душа Стикса", SoulStiks, 1 )
	Text( 11, "Следующая страница --->>", JumpPage, 12 )

	Talk( 12, "Фокус Покус: Ты ишешь Душу что бы улучшить свою экиперовку? Я могу их синтезировать, но мне понадобиться: Меланхолия смерти нужного типа, Проклятая душа для твоего класса и Сердце смерти.")
	Text( 12, "<<--- Предыдущая страница", JumpPage, 11 )
	Text( 12, "Душа главного Чемпиона", SoulChamp, 1 )
	Text( 12, "Душа главного Воителя", SoulCrus, 1 )
	Text( 12, "Душа главного Стрелка", SoulSharp, 1 )
	Text( 12, "Душа главного Лучника", SoulBow, 1 )
	Text( 12, "Следующая страница --->>", JumpPage, 13 )

	Talk( 13, "Фокус Покус: Ты ишешь Душу что бы улучшить свою экиперовку? Я могу их синтезировать, но мне понадобиться: Меланхолия смерти нужного типа, Проклятая душа для твоего класса и Сердце смерти.")
	Text( 13, "Душа главного Покорителя морей", SoulVoy, 1 )
	Text( 13, "Душа главной Целительницы", SoulCler, 1 )
	Text( 13, "Душа главной Колдуньи", SoulSeal, 1 )
	Text( 13, "Душа главного Защитника", SoulShield, 1 )
	Text( 13, "<<--- Предыдущая страница", JumpPage, 12 )


	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3086,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 2, "Фокус Покус: Счастливый жребий? Пожалуйста, 5000 золотых!" )
	Text( 2, "Хорошо, я дам тебе 5000 золотых...",MultiTrigger, GetMultiTrigger(), 1 ) 

	InitTrigger()
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 50000)
	TriggerAction( 1, GiveItem, 3086,10, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 24, "Фокус Покус: 10 Счастливых жребиев? Заплатите 50 000 золотых! " )
	Text( 24, "Хорошо, я заплачу 50 000 золотых",MultiTrigger, GetMultiTrigger(), 1 ) 

	InitTrigger()
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 5000)
	TriggerAction( 1, GiveItem, 3087,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "Фокус Покус: Хочешь купить Жребий фортуны? 5000 золотых!" )
	Text( 3, "Хорошо, я дам тебе 5000 золотых...",MultiTrigger, GetMultiTrigger(), 1 ) 
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 50000)
	TriggerAction( 1, GiveItem, 3087,10, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 25, "Фокус Покус: 10 Жребиев фортуны? Заплатите 50 000 золотых! " )
	Text( 25, "Хорошо, я заплачу 50 000 золотых",MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 4, "Фокус Покус: Мая твая не панимать!" )

	Talk( 5, "Фокус Покус: У тебя нет всех необходимых компонентов для обмена, или недостаточно мест в инвентаре. Возможно также, что твой инвентарь заблокирован." )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 4 )

	AddNpcMission	(520)	--1
	AddNpcMission	(900)	--2

	AddNpcMission	(5065)	--3
	AddNpcMission	(595)	--4
	AddNpcMission	(599)	--5
	AddNpcMission	(5000)	--6
	AddNpcMission	(5001)	--7
	AddNpcMission	(5002)	--8
	AddNpcMission	(5003)	--9
	AddNpcMission	(5066)	--10

	AddNpcMission	(5829)	--11
	AddNpcMission	(5830)	--12	

end

function b_talk7()

	Talk( 1, "Санг Ди: Парни! Приготовтесь принимать гостей!" )

	Talk( 2, "Санг Ди: Мая твая не панимать!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )


	AddNpcMission	(392)	--1
	AddNpcMission	(514)	--2
	AddNpcMission	(516)	--3
	AddNpcMission	(527)	--4
	AddNpcMission	(528)	--5
	AddNpcMission	(529)	--6
	AddNpcMission	(548)	--7
	AddNpcMission	(550)	--8
	AddNpcMission	(551)	--9
	AddNpcMission	(558)	--10
	AddNpcMission	(571)	--11

	AddNpcMission	(592)	--12
	AddNpcMission	(5004)	--13
	AddNpcMission	(5005)	--14
	AddNpcMission	(5006)	--15
	AddNpcMission	(5007)	--16
	AddNpcMission	(5008)	--17
	AddNpcMission	(5043)	--18
	AddNpcMission	(5054)	--19
	AddNpcMission	(5055)	--20

	AddNpcMission	(5831)	--21
	AddNpcMission	(5832)	--22

end

function b_talk8()


	Talk( 1, "Шуанг: Починка корабля? Заправка? Что вам угодно?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 13 )
	TriggerAction( 1, LuanchBerthList, 13, 3426, 2575, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, RepairBerthList, 13 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 13 )
	TriggerAction( 2, SupplyBerthList, 13 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 13 )
	TriggerAction( 1, SalvageBerthList, 13 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Извини, но я ремонтирую лишь корабли, приписанные к этой гавани. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Прости, но для заправки нужно пришвартовать корабль в нашей гавани. С тебя 200 золотых." )
	Talk( 6, "Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )



	AddNpcMission	(398)	--1
	AddNpcMission	(565)	--2

	AddNpcMission	(5833)	--3
	AddNpcMission	(5834)	--4

end

function b_talk9()


	Talk( 1, "Ванг Мо: Какая погода хорошая, как же я обожаю этот город." )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Хранилище (плата 200 зол.)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Извини, похоже, у тебя не хватает денег" )
	Talk( 3, "Ванг Мо: Мая твая не панимать!" )




	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 3 )
	Start( GetMultiTrigger(), 2 )



	AddNpcMission	(399)	--1
	AddNpcMission	(510)	--2
	AddNpcMission	(511)	--3
	AddNpcMission	(512)	--4
	AddNpcMission	(513)	--5
	AddNpcMission	(543)	--6
	AddNpcMission	(544)	--7
	AddNpcMission	(570)	--8

	AddNpcMission	(5839)	--9
	AddNpcMission	(5840)	--10
end

function b_talk10()


	Talk( 1, "Цяо: Я так голоден! Когда же наконец обед?" )

	Talk( 2, "Цяо: Мая твая не панимать!" )


	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(5835)	--1
	AddNpcMission	(5836)	--2

end

function b_talk11()

	Talk( 1, "Чжоу: Один плюс один равняется двум? Или не двум? Не обращай внимание, я говорю сам с собой." )

	Talk( 2, "Чжоу: Мая твая не панимать!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(531)	--1
	AddNpcMission	(532)	--2
	AddNpcMission	(533)	--3
	AddNpcMission	(534)	--4

	AddNpcMission	(5837)	--5
	AddNpcMission	(5838)	--6

end

function b_talk12()

	Talk( 1, "Облако: Ты встречал Туман? Она моя девушка!" )

	Talk( 2, "Облако: Мая твая не панимать!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(533)	--1-Письмо Чжоу
	AddNpcMission	(563)	--2-Требование оплаты(Завершение)

	AddNpcMission	(5841)	--3-Посол мира 13(Завершение)
	AddNpcMission	(5842)	--4-Посол мира 14

	AddNpcMission	(6320)	--5-Юность - Зависть Тумана(Заверщение)
	AddNpcMission	(6321)	--6-Юность - Проблема Облака

end

function b_talk13()

	Talk( 1, "Туман: Ты, должно быть, встречал Облако. Он мой друг" )

	Talk( 2, "Туман: Мая твая не панимать!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(5843)	--1-Посол мира 14(Завершение)
	AddNpcMission	(5844)	--2-Посол мира 15

	AddNpcMission	(6318)	--3-Путь в Весноград(Завершение)
	AddNpcMission	(6319)	--4-Юность - Зависть Тумана

end

function b_talk14()

	Talk( 1, "Билл: Хорошо? Плохо? Я с каждой секундой зарабатываю миллионы! Не отвлекай меня!" )

	Talk( 2, "Билл: Мая твая не панимать!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(568)	--1

--	AddNpcMission	(6262)	--2
--	AddNpcMission	(6263)	--3

	AddNpcMission	(5847)	--4
	AddNpcMission	(5848)	--5

end

function b_talk15()

	Talk( 1, "Ванг Ронг: Я не знаю никаких боевых искуств. Не приставайте ко мне..." )

	Talk( 2, "Ванг Ронг: Мая твая не панимать!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(5845)	--1
	AddNpcMission	(5846)	--2

end

function b_talk16()

	Talk( 1, "Якомото: Разве вы не видете что мы грабители?" )

	Talk( 2, "Якомото: Мая твая не панимать!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(5641)	--1
	AddNpcMission	(5642)	--2

	AddNpcMission	(5849)	--3
	AddNpcMission	(5850)	--4

end

function b_talk17()

	Talk( 1, "Парикмахер: 'Коса.....'" )

	Text( 1, "Я хочу сменить прическу", JumpPage, 2)
	Text( 1, "Приобрести", BuyPage )

	InitTrade()
	--Книги
	Weapon(	1808	)	--Обычная книга причесок(Ланс)
	Weapon(	1809	)	--Обычная книга причесок(Карциз)
	Weapon(	1810	)	--Обычная книга причесок(Филлис)
	Weapon(	1811	)	--Обычная книга причесок(Ами)
	Weapon(	0931	)	--Модная книга причесок(Ланс)
	Weapon(	0932	)	--Модная книга причесок(Карциз)
	Weapon(	0933	)	--Модная книга причесок(Филлис)
	Weapon(	0934	)	--Модная книга причесок(Ами)
	--Ингридиенты
	Weapon(	1804	)	--Половинка ножниц
	Weapon(	1805	)	--Гребень
	Weapon(	1806	)	--Гель для волос
	Weapon(	1807	)	--Расписка
	--Краска
	Defence(	4608	)	--Коричневая краска 
	Defence(	4606	)	--Черная краска 
	Defence(		)
	Defence(		)
	Defence(	1793	)	--Пурпурная краска 
	Defence(	1792	)	--Синяя краска
	Defence(	1791	)	--Голубая краска 
	Defence(	1790	)	--Зеленая краска 
	Defence(	1789	)	--Желтая краска 
	Defence(	1788	)	--Оранжевая краска
	Defence(	1787	)	--Красная краска
	--Красители
	Other(	4610	)	--Обесцвечивающее средство
	Other(	4609	)	--Коричневый краситель  
	Other(	4607	)	--Черный краситель
	Other(		)
	Other(	1803	)	--Пурпурный краситель 
	Other(	1801	)	--Голубой краситель 
	Other(	1800	)	--Зеленый краситель
	Other(	1798	)	--Оранжевый краситель 
	Other(	1797	)	--Красный краситель
	Other(	1802	)	--Синий краситель
	Other(	1799	)	--Желтый краситель

	Talk( 2, "Парикмахер: Привет! Хочешь поменять прическу? Позволь взглянуть на твою Парикмахерскую расписку!")

	InitTrigger()
	TriggerCondition( 1, HasItem, 1807, 1 )
	TriggerAction( 1, OpenHair )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "Да, разумеется", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "Забудь, мне нужно еще подумать", CloseTalk )

	Talk( 3, "Парикмахер: Кажется, у тебя нет Парикмахерской расписки. Я не могу сделать тебе прическу.")

	Talk( 4, "Парикмахер: Мая твая не панимать!" )


	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 4 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(6003)	--1
	AddNpcMission	(6004)	--2
	AddNpcMission	(6005)	--3
	AddNpcMission	(6006)	--4
	AddNpcMission	(6007)	--5
	AddNpcMission	(6008)	--6
	AddNpcMission	(6009)	--7

	AddNpcMission	(5851)	--8
	AddNpcMission	(5852)	--9

end

function b_talk18()

	Talk( 1, "Хамми: Уууууу" )

	Talk( 2, "Хамми: Мая твая не панимать!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(515)	--1
	AddNpcMission	(518)	--2
	AddNpcMission	(524)	--3
end

function b_talk30()
	Talk( 1, "Чинь: Здравствуй! Строительству кораблей я научился в Аргенте. Можешь звать меня Чинь." )

	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "Достигнуто максимальное количество кораблей" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Построить корабль", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 13 )
	TriggerAction( 1, BoatLevelBerthList, 13 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Усовершенствовать корабль", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Чинь: Эй! Хочешь отправиться в плавание? Тогда тебе нужен хороший корабль! Посмотри на мои корабли - нравится тебе какой-нибудь из них? Чтобы повысить уровень корабля, обращайся ко мне тогда, когда наберешь достаточно опыта в плавании или истреблении морских чудовищ." )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 1, 13 )
	Text( 2, "Построить Гуппи", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 5, 13 )
	Text( 2, "Построить Ветролов", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 6, 13 )
	Text( 2, "Построить Рыбу-меч", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 4, 13 )
	Text( 2, "Построить Черепаху", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 14 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 14, 13 )
	Text( 2, "Построить Ливень", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 15 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 15, 13 )
	Text( 2, "Построить Богиню", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 13 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 13, 13 )
	Text( 2, "Построить Огромную Белую акулу", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 16 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 16, 13 )
	Text( 2, "Построить Орёл", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Чинь: Чтобы повысить уровень своего судна, необходимо пришвартовать его в гавани. Корабль становится лучше, если поднять его уровень. Возвращайся, чтобы сделать это, когда накопишь достаточно опыта в плаваниях или сражениях с морскими чудовищами." )


	Talk( 5, "Чинь: Мая твая не панимать!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 5 )
	Start( GetMultiTrigger(), 2 )
end
------------------------------------------------------------
-- Сторожевая статуя БД 1 > БД 2 (Восточный завал)
------------------------------------------------------------

function b_talk21()

	InitTrigger()
	TriggerCondition( 1, goto_BDL_time )
	TriggerAction( 1, JumpPage, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Start( GetMultiTrigger(), 1 )

	local CancelSelectTalk = "Забудь. Я останусь здесь."
	local CancelSelectPage = 5

	local CurMapName = "heilong2"

	local GoTo01X = 767
	local GoTo01Y = 602
	local GoTo01M = CurMapName

	Talk( 1, "Статуя Защитника: \"Я Богиня, запечатавшая смерть.\"" )
	Text( 1, "Войти в Логово Черного Дракона 2!", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 179,1 )
	TriggerCondition( 1, HasItem, 3084,1 )
	TriggerCondition( 1, HasItem, 3085,1 )
	TriggerCondition( 1, goto_BDL_time )
	TriggerAction( 1, TakeItem, 179,1 )
	TriggerAction( 1, TakeItem, 3084,1 )
	TriggerAction( 1, TakeItem, 3085,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerAction( 1, SystemNotice, "Вход в Логово Черного Дракона 2.")
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Статуя Защитника: \"Для телепорта в Логово Черного Дракона 2 необходимо: 1 Знак Анубиса, 1 Маску Короля Мумий и 1 Вечный двигатель!\"" )
	Text( 2, "Перемещение",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 3, "Статуя Защитника: \"Логово Черного Дракона 2 открывается с 19:10 - 19:15!\"" )

	Talk( 4, "Статуя Защитника: \"Извините, Вы не собрали все 3 необходимые вещи!\"" )

	Talk( 5, "Статуя Защитника: \"Найди меня снова, когда тебе понадобится телепортироваться.\"" )
end

------------------------------------------------------------
-- Сторожевая статуя БД 2 > БД 1 (Восточный завал)
------------------------------------------------------------

function b_talk22()
	local ReSelectTalk = "Я передумал"
	local ReSelectPage = 1

	local CancelSelectTalk = "Забудь, я останусь здесь"
	local CancelSelectPage = 4

	local CurMapName = "heilong2"

	local GoTo01X = 847
	local GoTo01Y = 247
	local GoTo01M = CurMapName

	Talk( 1, "Статуя Защитника: \"Я Богиня, запечатавшая смерть.\"" )
	Text( 1, "Вернуться в Логово Черного Дракона 1", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Talk( 2, "Хочешь ли ты выйти?" )
	Text( 2, "Перемешение",MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 2, CancelSelectTalk, JumpPage , CancelSelectPage )

	Talk( 4, "Найди меня снова, когда тебе понадобится телепортироваться.", CloseTalk )
end


------------------------------------------------------------
-- Сторожевая статуя БД 2 > БД 3 (Восточный завал)
------------------------------------------------------------

function b_talk23()
	local CurMapName = "heilong2"

	local GoTo01X = 772
	local GoTo01Y = 722
	local GoTo01M = CurMapName

	InitTrigger()
	TriggerCondition( 1, HasItem, 182,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "Статуя Защитника: \"Я Богиня, запечатавшая смерть.\"" )
	Text( 1, "Войти в Логово Черного Дракона 3!", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 4, "Статуя запечатана. Вам нужен Ключ Дракона, чтобы пройти дальше." )
end


------------------------------------------------------------
-- Сундук Черного Дракона (Восточный завал и ПВП)
------------------------------------------------------------

function b_talk24()
	InitTrigger()
	TriggerCondition( 1, HasItem, 182, 1 )
	TriggerAction( 1, TakeItem, 182, 1 )
	TriggerAction( 1, AddMoney, 100000000 )
	--TriggerAction(1, GiveItem, 0266, 1, 4 )
	TriggerAction( 1, GiveItem, 8238, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "Это таинственый судндук. Выглядит, как-будто он закрыт." )
	Text( 1, "Тайные слова", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Не получилось открыть. Похоже у вас нет нужного ключа." )
end

function l_talk01()
	Talk(1, "Вилльям Тернер: Джек Воробей и я были здесь почти месяц, но не сумели найти выход... И я не знаю где мой любимый теперь. Я ненавижу это место!")

	AddNpcMission	(894)	--1
	AddNpcMission	(487)	--2
	AddNpcMission	(504)	--3
	AddNpcMission	(508)	--4
	AddNpcMission	(509)	--5
	AddNpcMission	(573)	--6
	AddNpcMission	(581)	--7
	AddNpcMission	(582)	--8
	AddNpcMission	(583)	--9

	AddNpcMission	(6359)	--10
	AddNpcMission	(6360)	--11
	AddNpcMission	(6361)	--12

end

function l_talk02()

	Talk(1, "Джек Воробей: Ходят слухи что Барбароса получил свою силу из за проклятья! Здесь больше не безопасно, и эти монстры далеко не вегетарианцы. Будь осторожен!")

	AddNpcMission	(895)	--1
	AddNpcMission	(896)	--2
	AddNpcMission	(482)	--3
	AddNpcMission	(485)	--4
	AddNpcMission	(486)	--5
	AddNpcMission	(574)	--6
	AddNpcMission	(575)	--7
	AddNpcMission	(584)	--8
	AddNpcMission	(585)	--9
	AddNpcMission	(586)	--10

	AddNpcMission	(5676)	--11

	AddNpcMission	(6357)	--12
	AddNpcMission	(6358)	--13

end

function l_talk03()

	Talk(1, "Веллингтон: Проклятый Джек! Если бы он не украл наше военное судно, то я бы не оказался в этой адской бездне!")

	AddNpcMission	(897)	--1
	AddNpcMission	(898)	--2
	AddNpcMission	(899)	--3
	AddNpcMission	(476)	--4
	AddNpcMission	(479)	--5
	AddNpcMission	(480)	--6
	AddNpcMission	(481)	--7
	AddNpcMission	(576)	--8
	AddNpcMission	(577)	--9
	AddNpcMission	(578)	--10
	AddNpcMission	(589)	--11
	AddNpcMission	(590)	--12

end

function l_talk04()

	Talk( 1, "Элизабет: Где я? Как я оказалась здесь? Вилльям!! *..Рыдает..*")
	Text( 1, "Торг", BuyPage )

	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)

	AddNpcMission	(505)	--1
	AddNpcMission	(506)	--2
	AddNpcMission	(507)	--3
	AddNpcMission	(579)	--4
	AddNpcMission	(580)	--5
	AddNpcMission	(587)	--6
	AddNpcMission	(588)	--7
	AddNpcMission	(591)	--8

	AddNpcMission	(5573)	--9
	AddNpcMission	(5574)	--10

	AddNpcMission	(5661)	--11
	AddNpcMission	(5662)	--12

	AddNpcMission	(6171)	--13
	AddNpcMission	(6172)	--14
end

function mmm_talk06()

	Talk( 1, "Пенни: Отплыть? Восстановить? Починить? Дозаправить?" )

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 650,999, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Пенни: Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Пенни: Извини, но я ремонтирую лишь корабли, приписанные к этой гавани. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Пенни: Прости, но для заправки нужно пришвартовать корабль в нашей гавани. С тебя 200 золотых." )
	Talk( 6, "Пенни: Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )

end

function mmm_talk05()

	Talk( 1, "Гэтчи: Отплыть? Пришвартоваться? Отремонтировать, заправить или восстановить корабль? Это ко мне." )

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 625,925, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Гэтчи: Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Гэтчи: Извини, но я ремонтирую лишь корабли, приписанные к этой гавани. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Гэтчи: Прости, но для заправки нужно пришвартовать корабль в нашей гавани. С тебя 200 золотых." )
	Talk( 6, "Гэтчи: Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )

end

function mmm_talk07()

	Talk( 1, "Диспетчер порта: Пришвартоваться? Заправиться? Отремонтировать или восстановить корабль? Это ко мне." )

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 620,628, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Диспетчер порта: Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Диспетчер порта: Извини, но я ремонтирую лишь корабли, приписанные к этой гавани. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Диспетчер порта: Прости, но для заправки нужно пришвартовать корабль в нашей гавани. С тебя 200 золотых." )
	Talk( 6, "Диспетчер порта: Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )

end

function mmm_talk08()

	Talk( 1, "Таинственный моряк: Вы хотите отправиться в плавание?" )

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 380,161, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Таинственный моряк: Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Таинственный моряк: Извини, но я ремонтирую лишь корабли, приписанные к этой гавани. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Таинственный моряк: Прости, но для заправки нужно пришвартовать корабль в нашей гавани. С тебя 200 золотых." )
	Talk( 6, "Таинственный моряк: Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )

end

function mmm_talk09()

	Talk( 1, "Диспетчер порта: Пришвартоваться? Заправиться? Отремонтировать или восстановить корабль? Это ко мне." )

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 1070,212, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Диспетчер порта: Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Диспетчер порта: Извини, но я ремонтирую лишь корабли, приписанные к этой гавани. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Диспетчер порта: Прости, но для заправки нужно пришвартовать корабль в нашей гавани. С тебя 200 золотых." )
	Talk( 6, "Диспетчер порта: Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )

end

function mmm_talk10()

	Talk( 1, "Забу: Здравствуйте! Я местный фрахтовщик. Могу я чем то помочь?" )

	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12)
	TriggerAction( 1, PackBagList, 12, RES_MINE, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить кристаллы", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Забу: Протите, но у вас нет судна в этом порту!" )

end

function mmm_talk11()

	local CurMapName = "jialebi" 

	local GoTo01X = 190
	local GoTo01Y = 815
	local GoTo01M = CurMapName

	InitTrigger()
	TriggerCondition( 1, HasItem, 2438,20 )
	TriggerCondition( 1, HasItem, 2419,15 )
	TriggerCondition( 1, HasItem, 2386,15 )
	TriggerAction( 1, TakeItem, 2438,20 )
	TriggerAction( 1, TakeItem, 2419,15 )
	TriggerAction( 1, TakeItem, 2386,15 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 1, "Портальщик Абаддона: Вы хотите войти в Абаддон? Будьте готовы принести мне 20 Золотых монет, 15 Пиратских костей и 20 Душ нежити." )
	Text( 1, "Войти в Абаддон 1", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 4, "Возвращайся когда раздобудешь все необходимое" )

	AddNpcMission	(5593)	--1
	AddNpcMission	(5594)	--2

--	AddNpcMission	(6264)	--3
--	AddNpcMission	(6265)	--4
end

function mmm_talk12()

	local CurMapName = "jialebi" 

	local GoTo01X = 1604
	local GoTo01Y = 906
	local GoTo01M = CurMapName

	Talk( 1, "Небесный Портальщик: Я посланник Богини. Чтобы попасть на Небо, тебе нужно обращаться ко мне. Кстати, Богиня наградит тебя соответственно твоей Чести. Чем больше у тебя Честь, тем больше будет награда Богини." )
	Text( 1, "Мне удалось получить Покровительство Богини", JumpPage, 3 )
	--Text( 1, "Я слышал, что у тебя есть разные полезные предметы", JumpPage, 7 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 0938,1 )
	TriggerAction( 1, TakeItem, 0938,1 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "Небесный Портальщик: У тебя есть Покровительство Богини? Я пропущу тебя." )
	Text( 3, "Я хочу войти на Небеса!", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "О покровительстве богини", JumpPage, 6 )

	Talk( 5, "Не каждый может получить Покровительство Богини" )
	Talk( 6, "Богиней было оставлено покровительство на земле, чтобы игроки могли войти на Небеса!" )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerCondition( 1, HasItem, 2386, 10 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 2386, 10 )
	TriggerAction( 1, GiveItem, 0271, 1, 4 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 7, "Небесный Портальщик: Ангельские кости - сокровище, оставленное Богиней. Взамен ты должен будешь дать мне 10 душ нежити и 1 руну Кэль." )
	Text( 7, "Получить Ангельские кости", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "Возвращайся когда раздобудешь все необходимое" )

	AddNpcMission	(5595)	--1
	AddNpcMission	(5596)	--2

	AddNpcMission	(6056)	--3
	AddNpcMission	(6057)	--4
	AddNpcMission	(6058)	--5
	AddNpcMission	(6059)	--6
	AddNpcMission	(6060)	--7

	AddNpcMission	(5726)	--8
	AddNpcMission	(5727)	--9

end

function mmm_talk13()

	Talk( 1, "Растерянный исследователь A: У меня есть кое что для вас. Желаете взглянуть?" )
	Text( 1, "Получить вещи из таинственного набора", JumpPage, 2)

	Talk( 2, "Растерянный исследователь A: Эти замечательные вещи так же известны как Набор Цунами!" )
	Text( 2, "Выкупить Таинственный доспех (Ланс Воитель)", JumpPage, 3)
	Text( 2, "Выкупить Таинственные перчатки (Ланс Воитель)", JumpPage, 4)
	Text( 2, "Выкупить Таинственные сапоги (Ланс Воитель)", JumpPage, 5)
	Text( 2, "Выкупить Дракан (Ланс Воитель)", JumpPage, 6)

	Talk(3,"Растерянный исследователь A: Чтобы получить Таинственный Доспех необходимо: 1 Личина камня пелены, 30 Радужных Фруктов, 20 Кож животного, 10 Блестящей ткани и 100000 золота")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2467, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2467, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0396, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Получить Таинственный Доспех", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"Растерянный исследователь A: Чтобы получить Таинственные Перчатки необходимо: 1 Чернильный камень, 30 Радужных Фруктов, 20 Тяжелых панцирей, 10 Частей элемента земли и 50000 золота")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2473, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2473, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0588, 1 , 4)
	TriggerFailure( 1, JumpPage, 7)
	Text( 4, "Получить Таинственные Перчатки", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"Растерянный исследователь A: Чтобы получить Таинственные Сапоги необходимо: 1 Тень-камень миражей, 30 Радужных фруктов, 20 Особого газа, 10 Жемчужин и 50000 золота")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3121, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3121, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0748, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "Получить Таинственные Сапоги", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"Растерянный исследователь A: Чтобы получить Дракан необходимо: 1 Демонический рудный камень, 30 Кристаллов агата, 20 Расширителей, 10 Волшебных костей и 100000 золота")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2463, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2463, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0114, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "Получить Дракан", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Растерянный исследователь A: Извини, но на данный момент у тебя нет необходимых предметов чтобы совершить обмен")

end

function mmm_talk14()

	Talk( 1, "Растерянный исследователь B: У меня есть кое что для вас. Желаете взглянуть?" )
	Text( 1, "Получить вещи из Олимпийского набора", JumpPage, 2)

	Talk( 2, "Растерянный исследователь В: Эти замечательные вещи так же известны как Набор Олимпа!" )
	Text( 2, "Выкупить Олимпийский доспех (Карциз Чемпион)", JumpPage, 3)
	Text( 2, "Выкупить Рукавицы Олимпа (Карциз Чемпион)", JumpPage, 4)
	Text( 2, "Выкупить Поножи Олимпа (Карциз Чемпион)", JumpPage, 5)
	Text( 2, "Выкупить Колосс (Карциз Чемпион)", JumpPage, 6)

	Talk(3,"Растерянный исследователь B: Чтобы получить Олимпийский доспех необходимо: 1 Мифический огненный камень, 30 Волшебных ветвей, 20 Кож животного, 10 Блестящих тканей и 100000 золота")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0398, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Получить Олимпийский доспех", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"Растерянный исследователь B: Чтобы получить Рукавицы Олимпа необходимо: 1 Радужный камень истины, 30 Волшебных ветвей, 20 Тяжелых панцирей, 10 Частей элемента земли и 50000 золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0604, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "Получить Рукавицы Олимпа", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"Растерянный исследователь B: Чтобы получить Поножи Олимпа необходимо: 1 Духовный рудный камень, 30 Волшебных ветвей, 20 Особых газа, 10 Жемчужин и 50000 золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2484, 1 )
	TriggerCondition( 1, HasItem, 1593, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2484, 1 )
	TriggerAction( 1, TakeItem, 1593, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0830, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "Получить Поножи Олимпа", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"Растерянный исследователь B: Чтобы получить Колосс необходимо: 1 Тающий огненный камень, 30 Кристаллов агата, 20 Расширителей, 10 Волшебных костей и 100000 золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2464, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2464, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0116, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "Получить Колосс", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Растерянный исследователь B: Извини, но на данный момент у тебя нет необходимых предметов чтобы совершить обмен")

end

function mmm_talk15()

	Talk( 1, "Растерянный исследователь C: У меня есть кое что для вас. Желаете взглянуть?" )
	Text( 1, "Выкупить набор Повелителя Драконов", JumpPage, 2)
	Text( 1, "Выкупить набор Цунами", JumpPage, 9)

	Talk( 2, "Растерянный исследователь C: Эти замечательные вещи так же известны как Набор Олимпа!" )
	Text( 2, "Выкупить Костюм повелителя драконов (Ами Покоритель Морей)", JumpPage, 3)
	Text( 2, "Выкупить Перчатки повелителя драконов (Ами Покоритель Морей)", JumpPage, 4)
	Text( 2, "Выкупить Сапоги повелителя драконов (Ами Покоритель Морей)", JumpPage, 5)
	Text( 2, "Выкупить Шлем повелителя драконов (Ами Покоритель Морей)", JumpPage, 6)
	Text( 2, "Выкупить Расщепленная душа (Ами Покоритель Морей)", JumpPage, 7)

	Talk(3,"Растерянный исследователь C: Чтобы получить Костюм повелителя драконов необходимо: 1 Изящный камень зверя, 30 Радужных стакана, 20 Кож животного, 10 Блестящей ткани и 100000 золота")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0413, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "Получить Костюм повелителя драконов", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"Растерянный исследователь C: Чтобы получить Перчатки повелителя драконов необходимо: 1 Зубной камень зверя, 30 Радужных стакана, 20 Тяжелых панцирей, 10 Части элемента земли и 50000 золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2477, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2477, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0602, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "Получить Перчатки повелителя драконов", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"Растерянный исследователь C: Чтобы получить Сапоги повелителя драконов необходимо: 1 Рудный камень кадавра, 30 Радужных стаканов, 20 Особого газа, 10 Жемчужин и 50000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2483, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2483, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0824, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Получить Сапоги повелителя драконов", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"Растерянный исследователь C: Чтобы получить Шлем повелителя драконов необходимо: 1 Отталкивающий камень зверей, 30 Радужных стаканов, 20 Животворных каменей, 10 Метеоритов и 50000 золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2487, 1 )
	TriggerCondition( 1, HasItem, 1778, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2487, 1 )
	TriggerAction( 1, TakeItem, 1778, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2223, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Получить Шлем повелителя драконов", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Растерянный исследователь C: Чтобы получить Расщепленная душа необходимо: 1 Слезный камень истины, 30 Кристаллов агата, 20 Расширителей, 10 Волшебных костей и 100000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2466, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2466, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0151, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Получить Расщепленная душа", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"Растерянный исследователь C: Извини, но на данный момент у тебя нет необходимых предметов чтобы совершить обмен")

	Talk( 9, "Растерянный исследователь C: Эти замечательные вещи так же известны как Набор Цунами!" )
	Text( 9, "Выкупить Мантия цунами (Ланс, Филлис Покоритель Морей)", JumpPage, 10)
	Text( 9, "Выкупить Перчатки цунами (Ланс, Филлис Покоритель Морей)", JumpPage, 11)
	Text( 9, "Выкупить Башмаки цунами (Ланс, Филлис Покоритель Морей)", JumpPage, 12)
	Text( 9, "Выкупить Расщепленная душа (Ланс, Филлис Покоритель Морей)", JumpPage, 7)

	Talk(10,"Растерянный исследователь C: Чтобы получить Мантию цунами необходимо: 1 Изящный камень зверя, 30 Кристаллов агата, 20 Кож животного, 10 Части элемента земли и 100000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2472, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2472, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0411, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Получить Мантию цунами", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"Растерянный исследователь C: Чтобы получить Перчатки цунами необходимо: 1 Нефрит Зеста, 30 Кристаллов кварца, 20 Расширителей, 10 Части элемента земли и 50000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0600, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "Получить Перчатки цунами", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"Растерянный исследователь C: Чтобы получить Башмаки цунами необходимо: 1 Тень-камень миражей, 30 Кристаллов агата, 20 Животворных каменей, 10 Части элемента земли и 50000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2479, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2479, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0760, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Получить Башмаки цунами", MultiTrigger, GetMultiTrigger(), 1)

end

function mmm_talk26()

	Talk( 1, "Растерянный исследователь D: У меня есть кое что для вас. Желаете взглянуть?" )
	Text( 1, "Выкупить набор Рыбной Феи", JumpPage, 2)
	Text( 1, "Выкупить набор феи", JumpPage, 9)

	Talk( 2, "Растерянный исследователь D: Эти замечательные вещи так же известны как Набор Рыбной Феи!" )
	Text( 2, "Выкупить Костюм рыбной феи (Ами Целитель)", JumpPage, 3)
	Text( 2, "Выкупить Перчатки рыбной феи (Ами Целитель)", JumpPage, 4)
	Text( 2, "Выкупить Башмаки рыбной феи (Ами Целитель)", JumpPage, 5)
	Text( 2, "Выкупить Шапочка рыбной феи (Ами Целитель)", JumpPage, 6)
	Text( 2, "Выкупить Посох уважения (Ами Целитель)", JumpPage, 7)

	Talk(3,"Растерянный исследователь D: Чтобы получить Костюм рыбной феи необходимо: 1 Ссохшийся деб-камень, 30 Осколков животворного камня, 20 Кож животного, 10 Блестящих тканей и 100000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2471, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2471, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0408, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "Получить Костюм рыбной феи", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"Растерянный исследователь D: Чтобы получить Перчатки рыбной феи необходимо: 1 Темный камень истины, 30 Осколков животворного камня, 20 Тяжелых панцирей, 10 Части элемента земли и 50000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0598, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "Получить Перчатки рыбной феи", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"Растерянный исследователь D: Чтобы получить Башмаки рыбной феи необходимо: 1 Жемчужный камень истины, 30 Осколков животворного камня, 20 Особого газа, 10 Жемчужин и 50000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0758, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Получить Башмаки рыбной феи", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"Растерянный исследователь D: Чтобы получить Шапочка рыбной феи необходимо: 1 Океанский струнный камень, 30 Осколков животворного камня, 20 Животворных каменей, 10 Метеоритов и 50000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2486, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2486, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2221, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Получить Шапочка рыбной феи", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Растерянный исследователь D: Чтобы получить Посох уважения необходимо: 1 Божественный аргиллит, 30 Кристаллов агата, 20 Расширителей, 10 Волшебных костей и 100000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2461, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2461, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0110, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Получить Посох уважения", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"Растерянный исследователь D: Извини, но на данный момент у тебя нет необходимых предметов чтобы совершить обмен")

	Talk( 9, "Растерянный исследователь D: Эти замечательные вещи так же известны как набор Феи!" )
	Text( 9, "Выкупить Халат феи (Филлис Целитель)", JumpPage, 10)
	Text( 9, "Выкупить Сказочные перчатки (Филлис Целитель)", JumpPage, 11)
	Text( 9, "Выкупить Башмачки феи (Филлис Целитель)", JumpPage, 12)
	Text( 9, "Выкупить Посох уважения (Филлис Целитель)", JumpPage, 7)

	Talk(10,"Растерянный исследователь D: Чтобы получить Халат феи необходимо: 1 Мифический огненный камень, 30 Осколков животворного камня, 20 Животворных каменей, 10 Жемчужин и 100000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2468, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2468, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0406, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Получить Выкупить Халат феи", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"Растерянный исследователь D: Чтобы получить Сказочные перчатки необходимо: 1 Темный камень истины, 30 Кристаллов агата, 20 Кож животного, 10 Блестящих тканей и 50000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2476, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2476, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0596, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "Получить Сказочные перчатки", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"Растерянный исследователь D: Чтобы получить Башмачки феи необходимо: 1 Слезный камень богини, 30 Осколков животворного камня, 20 Животворных каменей, 10 Жемчужин и 50000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0756, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Получить Башмачки феи", MultiTrigger, GetMultiTrigger(), 1)

end

function mmm_talk27()

	Talk( 1, "Растерянный исследователь E: У меня есть кое что для вас. Желаете взглянуть?" )
	Text( 1, "Выкупить набор Загадочной Панды", JumpPage, 2)
	Text( 1, "Выкупить набор Мудреца", JumpPage, 9)

	Talk( 2, "Растерянный исследователь E: Эти замечательные вещи так же известны как набор Загадочной Панды!" )
	Text( 2, "Выкупить Костюм загадочной панды (Ами Колдунья)", JumpPage, 3)
	Text( 2, "Выкупить Перчатки загадочной панды (Ами Колдунья)", JumpPage, 4)
	Text( 2, "Выкупить Башмаки загадочной панды (Ами Колдунья)", JumpPage, 5)
	Text( 2, "Выкупить Мистическая шапочка панды  (Ами Колдунья)", JumpPage, 6)
	Text( 2, "Выкупить Малиновая ветвь (Ами Колдунья)", JumpPage, 7)

	Talk(3,"Растерянный исследователь E: Чтобы получить Костюм загадочной панды необходимо: 1 Мутный Нефрит, 30 Кристаллов кварца, 20 Кож животного, 10 Блестящих тканей и 100000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0404, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 3, "Получить Костюм загадочной панды", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"Растерянный исследователь E: Чтобы получить Перчатки загадочной панды необходимо: 1 Камень мира, 30 Кристаллов кварца, 20 Тяжелых панцирей, 10 Части элемента земли и 50000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2475, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2475, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0594, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 4, "Получить Перчатки загадочной панды", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"Растерянный исследователь E: Чтобы получить Башмаки загадочной панды необходимо: 1 Кристалл сионского камня, 30 Кристаллов кварца, 20 Особого газа, 10 Жемчужин и 50000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2481, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2481, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0754, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Получить Башмаки загадочной панды", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"Растерянный исследователь E: Чтобы получить Мистическую шапочку панды необходимо: 1 Небесный тень-камень, 30 Кристаллов кварца, 20 Животворных каменей, 10 Метеоритов и 50000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2485, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1631, 20 )
	TriggerCondition( 1, HasItem, 3391, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2485, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1631, 20 )
	TriggerAction( 1, TakeItem, 3391, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 2219, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Получить Мистическую шапочку панды", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Растерянный исследователь E: Чтобы получить Малиновую ветвь необходимо: 1 Потертый рудный камень, 30 Кристаллов агата, 20 Расширителей, 10 Волшебных костей и 100000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2462, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2462, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0112, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 7, "Получить Малиновую ветвь", MultiTrigger, GetMultiTrigger(), 1)

	Talk(8,"Растерянный исследователь E: Извини, но на данный момент у тебя нет необходимых предметов чтобы совершить обмен")

	Talk( 9, "Растерянный исследователь E: Эти замечательные вещи так же известны как набор Мудреца!" )
	Text( 9, "Выкупить Плащ мудреца (Филлис Колдунья)", JumpPage, 10)
	Text( 9, "Выкупить Перчатки мудреца (Филлис Колдунья)", JumpPage, 11)
	Text( 9, "Выкупить Сапоги мудреца (Филлис Колдунья)", JumpPage, 12)
	Text( 9, "Выкупить Малиновую ветвь (Филлис Колдунья)", JumpPage, 7)

	Talk(10,"Растерянный исследователь E: Чтобы получить Плащ мудреца необходимо: 1 Мутный Нефрит, 30 Кристаллов кварца, 20 Тяжелых панцирей, 10 Блестящих тканей и 100000 Золотых ")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2470, 1 )
	TriggerCondition( 1, HasItem, 1699, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2470, 1 )
	TriggerAction( 1, TakeItem, 1699, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0402, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 10, "Получить Плащ мудреца", MultiTrigger, GetMultiTrigger(), 1)

	Talk(11,"Растерянный исследователь E: Чтобы получить Перчатки мудреца необходимо: 1 Радужный камень истины, 30 Осколков животворного камня, 20 Расширителей, 10 Жемчужин и 50000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2478, 1 )
	TriggerCondition( 1, HasItem, 1630, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2478, 1 )
	TriggerAction( 1, TakeItem, 1630, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0592, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 11, "Получить Перчатки мудреца", MultiTrigger, GetMultiTrigger(), 1)

	Talk(12,"Растерянный исследователь E: Чтобы получить Сапоги мудреца необходимо: 1 Жемчужный камень истины, 30 Кристаллов агата, 20 Кож животного, 10 Волшебных костей и 50000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2482, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2482, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0752, 1 , 4)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 12, "Получить Сапоги мудреца", MultiTrigger, GetMultiTrigger(), 1)

end

function mmm_talk28()

	Talk( 1, "Растерянный исследователь F: У меня есть кое что для вас. Желаете взглянуть?" )
	Text( 1, "Выкупить набор Аполлона", JumpPage, 2)

	Talk( 2, "Растерянный исследователь F: Эти замечательные вещи так же известны как набор Аполлона!" )
	Text( 2, "Выкупить Камзол Аполлона (Ланс, Филлис Стрелок)", JumpPage, 3)
	Text( 2, "Выкупить Перчатки Аполлона (Ланс, Филлис Стрелок)", JumpPage, 4)
	Text( 2, "Выкупить Сапоги Аполлона (Ланс, Филлис Стрелок)", JumpPage, 5)
	Text( 2, "Выкупить Сумерки (Ланс, Филлис Стрелок)", JumpPage, 6)

	Talk(3,"Растерянный исследователь F: Чтобы получить Камзол Аполлона необходимо: 1 Кровавый камень Хирво, 30 Проясняющих кристалла, 20 Кож животного, 10 Блестящих тканей и 100000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2469, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1608, 20 )
	TriggerCondition( 1, HasItem, 3385, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2469, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1608, 20 )
	TriggerAction( 1, TakeItem, 3385, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0400, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Получить Камзол Аполлона", MultiTrigger, GetMultiTrigger(), 1)

	Talk(4,"Растерянный исследователь F: Чтобы получить Перчатки Аполлона необходимо: 1 Нефрит Зеста, 30 Проясняющих кристалла, 20 Тяжелых панцирей, 10 Части элемента земли и 50000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2474, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1614, 20 )
	TriggerCondition( 1, HasItem, 1658, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2474, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1614, 20 )
	TriggerAction( 1, TakeItem, 1658, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0590, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "Получить Перчатки Аполлона", MultiTrigger, GetMultiTrigger(), 1)

	Talk(5,"Растерянный исследователь F: Чтобы получить Сапоги Аполлона необходимо: 1 Слезный камень богини, 30 Проясняющих кристалла, 20 Особого газа, 10 Жемчужин и 50000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2480, 1 )
	TriggerCondition( 1, HasItem, 3364, 30 )
	TriggerCondition( 1, HasItem, 1657, 20 )
	TriggerCondition( 1, HasItem, 3361, 10 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeItem, 2480, 1 )
	TriggerAction( 1, TakeItem, 3364, 30 )
	TriggerAction( 1, TakeItem, 1657, 20 )
	TriggerAction( 1, TakeItem, 3361, 10 )
	TriggerAction( 1, TakeMoney, 50000 )

	TriggerAction( 1, GiveItem, 0750, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 5, "Получить Сапоги Аполлона", MultiTrigger, GetMultiTrigger(), 1)

	Talk(6,"Растерянный исследователь F: Чтобы получить Сумерки необходимо: 1 Океанский Камень душ, 30 Кристаллов агата, 20 Расширителей, 10 Волшебных костей и 100000 Золотых")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2465, 1 )
	TriggerCondition( 1, HasItem, 3380, 30 )
	TriggerCondition( 1, HasItem, 1652, 20 )
	TriggerCondition( 1, HasItem, 1626, 10 )
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeItem, 2465, 1 )
	TriggerAction( 1, TakeItem, 3380, 30 )
	TriggerAction( 1, TakeItem, 1652, 20 )
	TriggerAction( 1, TakeItem, 1626, 10 )
	TriggerAction( 1, TakeMoney, 100000 )

	TriggerAction( 1, GiveItem, 0118, 1 , 4)
	TriggerFailure( 1, JumpPage, 7 )
	Text( 6, "Получить Сумерки", MultiTrigger, GetMultiTrigger(), 1)

	Talk(7,"Растерянный исследователь F: Извини, но на данный момент у тебя нет необходимых предметов чтобы совершить обмен")
end

function mmm_talk16()

	local CurMapName = "jialebi"

	local GoTo01X = 1250
	local GoTo01Y = 1010
	local GoTo01M = CurMapName

	Talk( 1, "Портальщик на суше: Хочешь узнать, что находится внизу? Заплати мне 5000 Золотых и я дам тебе пройти!" )
	Text( 1, "Вот! Держи свои деньги.", JumpPage, 2 )
	Text( 1, "Я не стану тебе платить!", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Портальщик на суше: Проход ведет в док Мертвых Душ. Достаточно ли ты храбр, чтобы войти?" )
	Text( 2, "Подтвердить.", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "Портальщик на суше: Пшел прочь нищий!" )
	Talk( 4, "Портальщик на суше: У Вас недостаточно золота.", CloseTalk)

end

function mmm_talk17()

	local CurMapName = "jialebi"

	local GoTo01X = 968
	local GoTo01Y = 828
	local GoTo01M = CurMapName

	Talk( 1, "Хранитель исследований A: Хотите узнать, что там внутри? Заплати мне 5000 Золотых и я дам тебе пройти!" )
	Text( 1, "Вот! Держи свои деньги.", JumpPage, 2 )
	Text( 1, "Забудь! Я не стану платить.", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "Хранитель исследований A: Проход ведет в док Мертвых Душ. Достаточно ли ты храбр, чтобы войти?" )
	Text( 2, "Исследовать комнату А! ", MultiTrigger,GetMultiTrigger(), 1)

	Talk( 3, "Хранитель исследований A: Уйди нищий!" )
	Talk( 4, "Хранитель исследований A: У Вас недостаточно золота.", CloseTalk)

end

function mmm_talk18()

	local CurMapName = "jialebi"

	local GoTo01X = 968
	local GoTo01Y = 906
	local GoTo01M = CurMapName

	Talk( 1, "Хранитель исследований B: Вы хотите знать, что там внутри? Принесите мне 20 Душ Нежити и я пропущу вас." )
	Text( 1, "Дай пройти.", JumpPage, 2 )
	Text( 1, "Забудь об этом! Я не хочу идти.", JumpPage, 3 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 2386, 20 )
	TriggerAction( 1, TakeItem, 2386, 20 )
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "Хранитель исследований B: Этот путь ведет к Командиру Мертвых Душ. Вы все еще хотите войти?" )
	Text( 2, "Исследовать комнату В!", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Хранитель исследований B: Уйди отсюда трус!" )
	Talk( 4, "Хранитель исследований B: У тебя нет 20 Душ Нежити.", CloseTalk)

end

function mmm_talk19()

	local CurMapName = "jialebi"

	local GoTo01X = 968
	local GoTo01Y = 993
	local GoTo01M = CurMapName

	Talk( 1, "Хранитель исследований C: Хотите узнать, что там внутри? Заплатите мне 5000 Золотых и я позволю вам пройти." )
	Text( 1, "Дай пройти.", JumpPage, 2 )
	Text( 1, "Забудь об этом! Я передумал идти.", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "Хранитель исследований C: Этот путь ведет в Комнату С." )
	Text( 2, "Исследовать Комнату С.", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Хранитель исследований C: Уйди нищий!" )
	Talk( 4, "Хранитель исследований C: Вам не хватает золота.", CloseTalk)

end

function mmm_talk20()

	local CurMapName = "jialebi"

	local GoTo01X = 1076
	local GoTo01Y = 869
	local GoTo01M = CurMapName

	Talk( 1, "Док Стюарт: Хочешь узнать, что там внутри?" )
	Text( 1, "Что там находится?", JumpPage, 2 )
	Text( 1, "Не хочу этого знать", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasItem , 2408,1)
	TriggerCondition(1,HasItem , 2409,1)
	TriggerCondition(1,HasItem , 2410,1)
	TriggerCondition(1,HasItem , 2411,1)
	TriggerCondition(1,HasItem , 2412,1)
	TriggerAction(1,TakeItem,2408,1)
	TriggerAction(1,TakeItem,2409,1)
	TriggerAction(1,TakeItem,2410,1)
	TriggerAction(1,TakeItem,2411,1)
	TriggerAction(1,TakeItem,2412,1)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Док Стюарт: Внутри находится Исследовательский центр Мертвых Душ, чтобы туда пройти, соберите полный комплект паролей: AB, BC, CD, DE, EF." )
	Text( 2, "Отправиться в Исследовательский центр", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Док Стюарт: ......Пока!" )
	Talk( 4, "Док Стюарт: Ты не добыл нужные пароли.", CloseTalk)
end

function mmm_talk22()

	local CurMapName = "jialebi"

	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName


	Talk( 1, "Стражник 1-го Абаддона: Хотите пройти в Абаддон 2? За 5000 Золотых я пропущу вас." )
	Text( 1, "Держи свои деньги.", JumpPage, 2 )
	--Text( 1, "Я слышал, что у вас здесь можно получить хорошие вещи.", JumpPage, 5 )
	Text( 1, "Забудь! Я передумал идти.", JumpPage, 3 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )

	Talk( 2, "Стражник 1-го Абаддона: Хотите проследовать в Абаддон 2?" )
	Text( 2, "Да! Я хочу пройти!", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Стражник 1-го Абаддона: Пшел прочь нищий!" )
	Talk( 4, "Стражник 1-го Абаддона: У вас недостаточно золота." ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0267, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Стражник 1-го Абаддона: У меня вы можете обменять Руну Кэль на: Силу Огня." )
	Text( 5, "Получить Силу Огня", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Стражник 1-го Абаддона: Возвращайтесь, когда соберете всё необходимое." )

end

function mmm_talk23()

	local CurMapName = "jialebi"

	local GoTo01X = 199
	local GoTo01Y = 824
	local GoTo01M = CurMapName

	local GoTo02X = 70
	local GoTo02Y = 952
	local GoTo02M = CurMapName

	Talk( 1, "Стражник 2-го Абаддона: Хотите пройти в Абаддон 3? За 5000 Золотых я пропущу вас." )
	Text( 1, "Идти в Абаддон 1.", JumpPage, 2 )
	Text( 1, "Идти в Абаддон 3.", JumpPage, 3 )
	--Text( 1, "Я слышал, что у вас здесь можно получить хорошие вещи.", JumpPage, 5 )
	Text( 1, "Забудь! Я передумал идти.", JumpPage, 7 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Стражник 2-го Абаддона: Желаешь проследовать в Абаддон 1?" )
	Text( 2, "Идти в Абаддон 1", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "Стражник 2-го Абаддона: Желаешь проследовать в Абаддон 3?" )
	Text( 3, "Да! Отправь меня в Абаддон 3.", MultiTrigger, GetMultiTrigger(),2 )

	Talk( 7, "Стражник 2-го Абаддона: Пшел прочь нищий!" )
	Talk( 4, "Стражник 2-го Абаддона: Тебе не хватает золота. " ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0268, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Стражник 2-го Абаддона: У меня вы можете обменять Руну Кэль на: Силу Ветра." )
	Text( 5, "Получить Силу Ветра", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Стражник 2-го Абаддона: Возвращайтесь, когда соберете всё необходимое." )
end

function mmm_talk24()

	local CurMapName = "jialebi"

	local GoTo01X = 79
	local GoTo01Y = 823
	local GoTo01M = CurMapName

	local GoTo02X = 209
	local GoTo02Y = 955
	local GoTo02M = CurMapName


	Talk( 1, "Стражник 3-го Абаддона: Хотите пройти в Абаддон 4? За 5000 Золотых я пропущу вас." )
	Text( 1, "Пройти в Абаддон 2", JumpPage, 2 )
	Text( 1, "Пройти в Абаддон 4", JumpPage, 3 )
	--Text( 1, "Я слышал, что у вас здесь можно получить хорошие вещи.", JumpPage, 5 )
	Text( 1, "Забудь! Я передумал идти.", JumpPage, 7 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Стражник 3-го Абаддона: Желаешь проследовать в Абаддон 2?" )
	Text( 2, "Да! Отправь меня в Абаддон 2. ", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "Стражник 3-го Абаддона: Желаешь попасть в Абаддон 4?" )
	Text( 3, "Отправь меня в Абаддон 4.", MultiTrigger, GetMultiTrigger(), 2 )

	Talk( 7, "Стражник 3-го Абаддона: Пшел прочь нищий!" )
	Talk( 4, "Стражник 3-го Абаддона: У вас недостаточно золота! " ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0269, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Стражник 3-го Абаддона: У меня вы можете обменять Руну Кэль на: Силу Мороза." )
	Text( 5, "Получить Силу Мороза", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Стражник 3-го Абаддона: Возвращайтесь, когда соберете всё необходимое." )
end

function mmm_talk25()

	local CurMapName = "jialebi"

	local GoTo01X = 70
	local GoTo01Y = 952
	local GoTo01M = CurMapName

	local GoTo02X = 690
	local GoTo02Y = 1043
	local GoTo02M = CurMapName

	Talk( 1, "Стражник 4-го Абаддона: Хотите пройти в Абаддон 3? За 5000 Золотых я пропущу вас." )
	Text( 1, "Вернуться в Абаддон 3", JumpPage, 2 )
	Text( 1, "Я хочу покинуть это жуткое место!", JumpPage, 3 )
	--Text( 1, "Я слышал, что у вас здесь можно получить хорошие вещи.", JumpPage, 5 )
	Text( 1, "Забудь! Я передумал идти.", JumpPage, 7 )

	InitTrigger()
	TriggerCondition(1,HasMoney,5000)
	TriggerAction(1,TakeMoney,5000)
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Стражник 4-го Абаддона: тправиться в Абаддон 3?" )
	Text( 2, "Да! Отправь меня в Абаддон 3.", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition(2,HasMoney,5000)
	TriggerAction(2,TakeMoney,5000)
	TriggerAction( 2, GoTo, GoTo02X, GoTo02Y, GoTo02M )
	TriggerFailure( 2, JumpPage, 4 )
	Talk( 3, "Стражник 4-го Абаддона: Вы хотите уйти отсюда?" )
	Text( 3, "Да! Дай мне уйти!", MultiTrigger, GetMultiTrigger(), 2 )

	Talk( 7, "Стражник 4-го Абаддона: Пшел прочь нищий!" )
	Talk( 4, "Стражник 4-го Абаддона: У вас недостаточно золота. " ,CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 1 )
	TriggerAction( 1, TakeItem, 3457, 1 )
	TriggerAction( 1, GiveItem, 0270, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 5, "Стражник 4-го Абаддона: У меня вы можете обменять Руну Кэль на: Силу Мороза." )
	Text( 5, "Получить Силу Мороза", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Стражник 4-го Абаддона: Возвращайтесь, когда соберете всё необходимое." )
end

function mmm_talk30()

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName5 = "darkblue"

	local GoTo01X = 2231
	local GoTo01Y = 2788
	local GoTo01M = CurMapName1

	Talk( 1, "Богиня: Непросто тебе было добраться сюда. Хочешь получить награду? Ответь честно на мои вопросы." )
	Text( 1, "Я готов", JumpPage, 2 )
	Text( 1, "У меня есть особая просьба", JumpPage, 17 )
	Text( 1, "Я не хочу отвечать на эти скучные вопросы", CloseTalk )

	InitTrigger()
	TriggerAction( 1, GoTo, 631, 927, "jialebi" )
	Text( 1, "Вернуться в Залив Сокровищ", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Богиня: Каждый может выбрать награду по уровню. Пожалуйста, укажи свой уровень. И помни, ложь себя не оправдывает." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerCondition( 1, LvCheck, ">", 14 )
	TriggerAction ( 1, JumpPage, 4 )
	TriggerFailure( 1, JumpPage, 16 )
	
	Text( 2, "Уровень 15-40",MultiTrigger, GetMultiTrigger() ,1)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 40 )
	TriggerCondition( 1, LvCheck, "<", 61 )
	TriggerAction ( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 16 )

	Text( 2, "Уровень 41-60",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 60 )
	TriggerAction ( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 16 )
	Text( 2, "Уровень 61 и выше",MultiTrigger, GetMultiTrigger(), 1)


	Talk( 4, "Богиня: Похоже, ты вполне честен. Я могу обменять твои Очки Чести на Золото или Опыт. Также ты можешь подарить мне все свои Очки Чести и, возможно, получишь неожиданную награду" )
	Text( 4, "Обменять Очки Чести на Золото", JumpPage, 7 )
	Text( 4, "Обменять Очки Чести на Опыт", JumpPage, 8 )
	Text( 4, "Я хочу подарить все свои Очки Чести Богине", JumpPage, 9 )


	Talk( 5, "Богиня: Похоже, ты вполне честен. Я могу обменять твои Очки Чести на Золото или Опыт. Также ты можешь подарить мне все свои Очки Чести и, возможно, получишь неожиданную награду" )
	Text( 5, "Обменять Очки Чести на Золото", JumpPage, 10 )
	Text( 5, "Обменять Очки Чести на Опыт", JumpPage, 11 )
	Text( 5, "Я хочу подарить все свои Очки Чести Богине", JumpPage, 12 )

	Talk( 6, "Богиня: Похоже, ты вполне честен. Я могу обменять твои Очки Чести на Золото или Опыт. Также ты можешь подарить мне все свои Очки Чести и, возможно, получишь неожиданную награду" )
	Text( 6, "Обменять Очки Чести на Золото", JumpPage, 13 )
	Text( 6, "Обменять Очки Чести на Опыт", JumpPage, 14 )
	Text( 6, "Я хочу подарить все свои Очки Чести Богине", JumpPage, 15 )

--Золото
	InitFuncList()
	AddFuncList( CreditExchange,0 )
	Talk( 7, "Богиня: Ты действительно хочешь обменять все свои Очки Чести на Золото?" )
	Text( 7, "Да, я хочу обменять", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 7,"Нет, я передумал",JumpPage , 4 )

--Честь
	InitFuncList()
	AddFuncList( CreditExchange,3 )
	Talk( 8, "Богиня: Ты действительно хочешь обменять все свои Очки Чести на Опыт?" )
	Text( 8, "Да, я хочу обменять", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 8,"Нет, я передумал",JumpPage , 4 )

--Бонус
	InitFuncList()
	AddFuncList( CreditExchange, 6 )
	Talk( 9, "Богиня: Ты действительно хочешь подарить мне все свои Очки Чести?" )
	Text( 9, "Да, я хочу", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 9,"Нет, я передумал",JumpPage , 4 )

--Золото
	InitFuncList()
	AddFuncList( CreditExchange,1 )
	Talk( 10, "Богиня: Ты действительно хочешь обменять все свои Очки Чести на Золото?" )
	Text( 10, "Да, я хочу обменять", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 10,"Нет, я передумал",JumpPage , 5 )

--Честь
	InitFuncList()
	AddFuncList( CreditExchange,4 )
	Talk( 11, "Богиня: Ты действительно хочешь обменять все свои Очки Чести на Опыт?" )
	Text( 11, "Да, я хочу обменять", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 11,"Нет, я передумал",JumpPage , 5 )

--Бонус
	InitFuncList()
	AddFuncList( CreditExchange, 7 )
	Talk( 12, "Богиня: Ты действительно хочешь подарить мне все свои Очки Чести?" )
	Text( 12, "Да, я хочу", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 12,"Нет, я передумал",JumpPage , 5 )

--Золото
	InitFuncList()
	AddFuncList( CreditExchange,2 )
	Talk( 13, "Богиня: Ты действительно хочешь обменять все свои Очки Чести на Золото?" )
	Text( 13, "Да, я хочу обменять", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 13,"Нет, я передумал",JumpPage , 6 )

--Честь
	InitFuncList()
	AddFuncList( CreditExchange,5 )
	Talk( 14, "Богиня: Ты действительно хочешь обменять все свои Очки Чести на Опыт?" )
	Text( 14, "Да, я хочу обменять", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 14,"Нет, я передумал",JumpPage , 6 )

--Бонус
	InitFuncList()
	AddFuncList( CreditExchange, 8 )
	Talk( 15, "Богиня: Ты действительно хочешь подарить мне все свои Очки Чести?" )
	Text( 15, "Да, я хочу", MultiFunc, GetFuncList(), GetNumFunc() ) 
	Text( 15,"Нет, я передумал",JumpPage , 6 )

	Talk( 16, "Богиня: Я знаю, что тебе говорит твое сердце. Не пытайся обмануть меня. Я дам тебе еще один шанс. Не подведи меня." )

	InitTrigger()
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	Text( 16, "Я настаиваю на своем решении, я не лгу", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 16,"Пожалуйста, простите мое невежество. Позвольте мне повторить попытку.",JumpPage , 2 )

	
	Talk( 17, "Богиня: Сейчас у меня есть таинственные камни. Они способны на многое, если использовать их должным образом. Надеюсь, ты найдешь им применение. Моя посланница, находясь среди людей, нашла еще несколько восхитительных камней. Скоро она доставит их мне. Если тебе будут нужны еще камни, обращайся ко мне." )
	Text( 17, "Каменный торс Гефеста (Чемпион )", JumpPage, 18)
	Text( 17, "Каменный торс Гермеса (Воитель)", JumpPage, 19)
	Text( 17, "Каменный торс Аполлона (Стрелок )", JumpPage, 20)
	Text( 17, "Каменный торс Посейдона (Покоритель морей)", JumpPage, 21)
	Text( 17, "Каменный торс Гестии (Целительница )", JumpPage, 22)
	Text( 17, "Каменный торс Афины (Колдунья)", JumpPage, 23)  
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2530, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 18, "Богиня: Только когда ты достигнешь 60-го уровня и принесешь мне 5 Рун Кэль я смогу дать тебе таинственный камень" )
	Text( 18, "Получить Каменный торс Гефеста", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2533, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 19, "Богиня: Только когда ты достигнешь 60-го уровня и принесешь мне 5 Рун Кэль я смогу дать тебе таинственный камень" )
	Text( 19, "Получить Каменный торс Гермеса", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2536, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 20, "Богиня: Только когда ты достигнешь 60-го уровня и принесешь мне 5 Рун Кэль я смогу дать тебе таинственный камень" )
	Text( 20, "Получить Каменный торс Аполлона", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2539, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 21, "Богиня: Только когда ты достигнешь 60-го уровня и принесешь мне 5 Рун Кэль я смогу дать тебе таинственный камень" )
	Text( 21, "Получить Каменный торс Посейдона", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2542, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 22, "Богиня: Только когда ты достигнешь 60-го уровня и принесешь мне 5 Рун Кэль я смогу дать тебе таинственный камень" )
	Text( 22, "Получить Каменный торс Гестии", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, LvCheck, ">", 59 )
	TriggerAction( 1, TakeItem, 3457, 5 )
	TriggerAction( 1, GiveItem, 2545, 1, 4 )
	TriggerFailure( 1, JumpPage, 24 )
	Talk( 23, "Богиня: Только когда ты достигнешь 60-го уровня и принесешь мне 5 Рун Кэль я смогу дать тебе таинственный камень" )
	Text( 23, "Получить Каменный торс Афины", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 24, "Богиня: Только когда ты достигнешь 60-го уровня и принесешь мне 5 Рун Кэль я смогу дать тебе таинственный камень")

	AddNpcMission	(6000)	--1
	AddNpcMission	(6366)	--2
	AddNpcMission	(6367)	--3
	AddNpcMission	(6380)	--4
	AddNpcMission	(6381)	--5
--	AddNpcMission	(6277)	--6
--	AddNpcMission	(6278)	--7
end

function dydz_talk()

	Talk( 1, "Диспетчер порта абаддона: Если вам дорога ваша жизнь, уходите отсюда прямо сейчас! Я видел слишком много авантюристов, как Вы!" )

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 40,74, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Диспетчер порта абаддона: Что ты думаешь? У тебя нет лодки, которую можно использовать? Теперь убирайся, если ты ценишь свою жизнь!" )
	Talk( 4, "Диспетчер порта абаддона: Не думаю, что твоя лодка будет отремонтирована здесь бесплатно. Пришвартуй свою лодку и готовься заплатить 1000 золотых!" )
	Talk( 5, "Диспетчер порта абаддона: Не думаю, что ты сможешь заправить свой корабль здесь бесплатно. Пришвартуй свой корабль и готовься заплатить 200 золотых!" )
	Talk( 6, "Диспетчер порта абаддона: Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 золотых." )

end


function dysr_talk ()

	Talk( 1, "Купец Абаддона: Я здесь по распоряжению своего господина по имени Смерть. Я готов оказать помощь храбрым воинам и стать свидетелем их смерти. Хаха!" )
	Text( 1, "Торг", BuyPage)
	Text( 1, "Ремонт", OpenRepair)

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Other(	637	)
	Other(	819	)
	Other(	869	)
	Other(	874	)

end 

function zsts_talk()

	Talk( 1, "Ангел перерождения: Только лучшие и элитные моряки Флота и Пираты получают возможность переродиться!")
	Text( 1, "Узнать больше о перерождении", JumpPage, 2)
	Text( 1, "Я хочу Переродиться", JumpPage, 6)

	Talk( 2, "Ангел перерождения: Что ты хотел бы узнать?")
	Text( 2, "Классы после перерождения", JumpPage, 3)
	Text( 2, "Параметры и очки навыков после перерождения", JumpPage, 4)
	Text( 2, "Условия перерождения", JumpPage, 5)

	Talk( 3, "Ангел перерождения: После перерождения игрок может изменить класс: Ланс может стать Воителем, Покорителем морей или Стрелком. Карциз может стать Чемпионом. Филлис может стать Целительницей, Колдуньей, Покорителем морей или Стрелком. Ами может стать Целительницей, Колдуньей или Покорителем морей")
	Text( 3, "Спасибо. Я понимаю", CloseTalk)

	Talk( 4, "Ангел перерождения: После перерождения все характеристики будут заданы заново, а все дополнительные очки, приобретенные благодаря счастливому жребию или именинному торту, сохранятся для перераспределения. Кроме того, заново будут заданы все навыки, а очки навыков перераспределены.")
	Text( 4, "Спасибо. Я понимаю", CloseTalk)

	Talk( 5, "Ангел перерождения: Для перерождения потребуется завершить задание Перерождение Феникса, которое дает Богиня. Разыщи меня, когда получишь Камень перерождения, или если у тебя появится Карта перерождения.")
	Text( 5, "Спасибо. Я понимаю", CloseTalk)

	Talk( 6, "Ангел перерождения: Кем ты хочешь стать после перерождения?" )
	Text( 6, "Воителем, чтобы нести справедливость и мир",  GetChaName1_born, 1)
	Text( 6, "Чемпионом, чтобы защишать невинных",  GetChaName2_born, 1)
	Text( 6, "Покорителем морей, чтобы бороздить моря",  GetChaName3_born, 1)
	Text( 6, "Стрелком, чтобы победить всех врагов",  GetChaName4_born, 1)
	Text( 6, "Целительницей, чтобы спасать людские жизни", GetChaName5_born, 1)
	Text( 6, "Колдуньей, чтобы делать все что угодно", GetChaName6_born, 1)

	AddNpcMission	(6071)	--1

end

function k_talk002()

	Talk (1, "Страж Бермуд: Везде море, вокруг этой гористой зелёной земли одно море, находясь здесь забываешь как течёт время! Вы сможете передать Привет моим друзьям из далека, если вы найдете место, называемое Весноградом, пожалуйста? Может тогда они заберут меня домой.") 
--	Text( 1, "Обменять Сундук Бермуд", JumpPage, 2)

--	Talk (2, "Страж Бермуд: Я Страж Бермуд, Я живу здесь уже много лет, и всё время без еды, дайте мне расписку на кусок Кекса!")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 1097, 1)
--	TriggerCondition(1, HasLeaveBagGrid, 1)
--	TriggerCondition(1, KitbagLock, 0 )
--	TriggerAction(1, TakeItem, 1097, 1)
--	TriggerAction(1, GiveItem, 1104, 1, 4)
--	TriggerFailure(1, JumpPage, 3)
--	Text(2,"Вот держи", MultiTrigger, GetMultiTrigger(), 1)

--	Talk (3, "Страж Бермуд: Вы смеётесь надо мной? Я голоден, и вы не можете мне ничем помочь, досвидания!") 

--	Text( 1, "Получить ФастФуд", JumpPage, 4)

--	Talk (4, "Страж Бермуд: Я Страж Бермуд, Я живу здесь уже много лет, и всё время без еды, дайте мне Супер-Суши!") 
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2989, 1)
--	TriggerCondition(1, HasLeaveBagGrid, 1)
--	TriggerCondition(1, KitbagLock, 0 )
--	TriggerAction(1, TakeItem, 2989, 1)
--	TriggerAction(1, GiveItem, 0992, 10, 4)
--	TriggerFailure(1, JumpPage, 5)
--	Text(4,"Вот держи", MultiTrigger, GetMultiTrigger(), 1)

--	Talk (5, "Страж Бермуд: Вы смеётесь надо мной? Я голоден, и вы не можете мне ничем помочь, досвидания!") 

	AddNpcMission	(6362)	--1
	AddNpcMission	(6363)	--2
end

--------------------------
--		Зима			--
--------------------------

function d_talk1()

	Talk (1, "Бэн: Я местный кузнец. Можешь осмотреться.") 
	Text (1, "Торг", BuyPage) 
	Text (1, "Ремонт", OpenRepair)
	Text( 1, "Ковка", OpenForge)
	Text( 1, "Плавка", OpenMilling)
	Text( 1, "Декоративная плавка", OpenFusion)
	Text( 1, "Укращающее улучшение", OpenUpgrade) 
	Text (1, "Ничего, я просто осмотрюсь", CloseTalk) 


	InitTrade()
	Weapon(	4197	)
	Weapon(	4199	)
	Weapon(	4201	)
	Weapon(	4207	)
	Weapon(	4211	)
	Weapon(	4213	)
	Weapon(	4214	)
	Weapon(	4215	)
	Weapon(	4218	)

--	AddNpcMission	(6390)	--1


end

function d_talk2()

	Talk (1, "Эдди: Привет. Чем могу помочь?") 
	Text (1, "Торг ", BuyPage) 
	Text (1, "Ничего, я просто осматриваюсь", CloseTalk) 

	InitTrade()
	Other(	1611	)
	Other(	1682	)
	Other(	1842	)
	Other(	1612	)
	Other(	1710	)
	Other(	1693	)
	Other(	4716	)
	Other(	1716	)
	Other(	1711	)
	Other(	3384	)
	Other(	3932	)
	Other(	1619	)
	Other(	2396	)
	Other(	1729	)
	Other(	4459	)
	Other(	1697	)
	Other(	1730	)
	Other(	1712	)
	Other(	1734	)
	Other(	1621	)
	Other(	1703	)

--	AddNpcMission	(6391)	--1
--	AddNpcMission	(6392)	--2
--	AddNpcMission	(6393)	--3

end 

function d_talk3()

	Talk (1, "Вегито: Хочешь купить кое-какие коренья? Тогда ты по адресу. Здесь ты найдёшь всё, что тебе нужно.") 
	Text (1, "Торг", BuyPage) 
	Text (1, "Ничего, я просто осматриваюсь", CloseTalk) 

	InitTrade()
	Other(	6203	)
	Other(	6204	)
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	--Leo
	Other(	1576	)
	Other(	4049	)
	Other(	4050	)
	Other(	1578	)
	Other(	4060	)
	Other(	4055	)
	Other(	4061	)
	Other(	2225	)
	Other(	4057	)
	Other(	1768	)


--	AddNpcMission	(6394)	--1
--	AddNpcMission	(6395)	--2
--	AddNpcMission	(6400)	--3

end

function d_talk4()

	Talk (1, "Дар: Я владелец этого ателье. Чем могу помочь?") 
	Text (1, "Торг", BuyPage) 
	Text (1, "Ничего, я просто осматриваюсь", CloseTalk) 

	InitTrade()
	Defence(	4147	)
	Defence(	4149	)
	Defence(	4151	)
	Defence(	4153	)
	Defence(	4154	)
	Defence(	4157	)
	Defence(	4158	)
	Defence(	4161	)
	Defence(	4162	)
	Defence(	4165	)
	Defence(	4167	)
	Defence(	4169	)
	Defence(	4170	)
	Defence(	4173	)
	Defence(	4174	)
	Defence(	4177	)
	Defence(	4178	)
	Defence(	4181	)
	Defence(	4183	)
	Defence(	4185	)
	Defence(	4186	)
	Defence(	4189	)
	Defence(	4190	)
	Defence(	4193	)
	Defence(	4194	)


--	AddNpcMission	(6396)	--1
--	AddNpcMission	(6397)	--2
--	AddNpcMission	(6401)	--3

end

function d_talk5()

	Talk (1, "Ли: Можешь сделать мне одолжение? Я дам тебе ящик умеющий призывать чудесных созданий.") 
	Text (1, "Да, я готов выполнить твою просьбу", JumpPage, 2) 
	Text (1, "Ничего, я просто осматриваюсь", CloseTalk) 

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1908 )
	TriggerCondition( 1, HasItem, 5828, 1 )
	TriggerAction( 1, TakeItem, 5828, 1 )
	TriggerAction( 1, GiveItem, 6294, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk (2, "Ли: Чтобы получить сундук, вам нужно принести 20 Огромных панцирей черепахи.")
	Text (2, "Это они?", MultiTrigger, GetMultiTrigger (), 1)

	Talk (3, "Ли: Да да, они самые, вот держи подарочек.")

	Talk (4, "Ли: К сожеление вы принесли не тот материал или у вас его не хватает. Я не могу вам дать сундук!") 

--	AddNpcMission	(6721)	--1

end

function d_talk6 ()

	Talk( 1, "Мэри: Привет! Любое перемещение стоит 2000 золотых! Куда хочешь попасть?" )

	Text( 1, "Отправиться в Аргент", JumpPage, 2 )
	Text( 1, "Отправиться в Шайтан", JumpPage, 3 )
	Text( 1, "Отправиться в Ледынь", JumpPage, 4 )
	Text( 1, "Записать точку возрождения", JumpPage, 5 )
	Text( 1, "Ничего, я просто осматриваюсь",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, 2187,2776, "garner")
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 2, "Мэри: Хочешь отправиться в Аргент? Без проблем!" )
	Text( 2, "Перемещение",MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "Мне нужено ещё подумать" , JumpPage, 8 )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, 918,3562, "magicsea")
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 3, "Мэри: Хочешь отправиться в Шайтан? Без проблем!" )
	Text( 3, "Перемещение",MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "Мне нужено ещё подумать" , JumpPage, 8 )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, GoTo, 1323,544, "darkblue")
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 4, "Мэри: Хочешь отправиться в Ледынь? Без проблем!" )
	Text( 4, "Перемещение",MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "Мне нужено ещё подумать" , JumpPage, 8 )

	Talk( 5, "Мэри: Записаться на Зимних островах, всё правильно?" )
	Text( 5, "Да, пожалуйста запиши", SetSpawnPos, "Зимние острова" )
	Text( 5, "Нет, спасибо",CloseTalk )

	Talk( 6, "Мэри: Извини, но у тебя нехватает золота. " )

	Talk( 8, "Мэри: Если тебе вдруг понадобятся мои услуги, ты знаешь где меня найти." )


--	AddNpcMission	(6398)	--1

end

function d_talk7()

	Talk (1, "Луна: Привет, я Диспетчер порта - Луна, вы можете отправиться в плавание на своем судне, починить его, заправить или востановить если утонули.") 

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 337,965, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Луна: Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить.")
	Talk( 4, "Луна: Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить.")
	Talk( 5, "Луна: Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить.")
	Talk( 6, "Луна: Простите, но вы можете восстановить судно лишь в том порту, куда вы последний раз заходили!")

--	AddNpcMission	(6402)	--1

--	AddNpcMission	(6701)	--2

end

function d_talk8()

	Talk (1, "Йе: Я хочу оказаться на краю неба или моря... Там, где мои самые прекрасные сны оживают. Я хочу раскрыть все тайны древних цивилизаций") 
	Text (1, "Я хочу снять печать с комплекта Стрелка", JumpPage, 3) 
	Text (1, "Я хочу снять печать с комплекта Воителя", JumpPage, 4) 
	Text (1, "Я хочу снять печать с комплекта Чемпиона", JumpPage, 5) 
	Text (1, "Я хочу снять печать с комплекта Покорителя морей", JumpPage, 6) 
	Text (1, "Я хочу снять печать с комплекта Цилительници", JumpPage, 7) 
	Text (1, "Я хочу снять печать с комплекта Колудньи", JumpPage, 8) 

	Talk (2, "Йе: Если в твоём инвентаре недостаточно ячеек и предметов, или твой класс не отвечает требованиям комплекта, ты не сможешь снять печать.") 
--шарп
	Talk (3, "Ты можешь снять печать с комплекта Эпической Доблести для Стрелка") 
	Text (3, "Снять печать Искупления Эпической Доблести", JumpPage, 9) 
	Text (3, "Снять печать Стража Эпической Доблести", JumpPage, 10) 
	Text (3, "Снять печать Благославления Эпической Доблести", JumpPage, 11) 
	Text (3, "Снять печать Покровительства Эпической Доблести", JumpPage, 12) 
--круз
	Talk (4, "Ты можешь снять печать с комплекта Чести для Воителя") 
	Text (4, "Снять печать Искупления Чести", JumpPage, 13) 
	Text (4, "Снять печать Стража Чести", JumpPage, 14) 
	Text (4, "Снять печать Благославления Чести", JumpPage, 15) 
	Text (4, "Снять печать Милосердия Чести", JumpPage, 16) 
--чамп
	Talk (5, "Ты можешь снять печать с комплекта Эпической Доблести для Чемпиона") 
	Text (5, "Снять печать Искупления Жертвы", JumpPage, 17) 
	Text (5, "Снять печать Стража Жертвы", JumpPage, 18) 
	Text (5, "Снять печать Благославления Жертвы", JumpPage, 19) 
	Text (5, "Снять печать Милосердия Жертвы", JumpPage, 20) 
--вой
	Talk (6, "Ты можешь снять печать с комплекта Эпической Доблести для Покорителя морей") 
	Text (6, "Снять печать Искупления Правосудия", JumpPage, 21) 
	Text (6, "Снять печать Стража Правосудия", JumpPage, 22) 
	Text (6, "Снять печать Благославления Правосудия", JumpPage, 23) 
	Text (6, "Снять печать Милосердия Правосудия", JumpPage, 24) 
--бк
	Talk (7, "Ты можешь снять печать с комплекта Эпической Доблести для Целительницы") 
	Text (7, "Снять печать Искупления Сочувствия", JumpPage, 25) 
	Text (7, "Снять печать Стража Сочувствия", JumpPage, 26) 
	Text (7, "Снять печать Благославления Сочувствия", JumpPage, 27) 
	Text (7, "Снять печать Милосердия Сочувствия", JumpPage, 28) 
--см
	Talk (8, "Ты можешь снять печать с комплекта Эпической Доблести для Колдуньи") 
	Text (8, "Снять печать Искупление Вдохновения", JumpPage, 29) 
	Text (8, "Снять печать Страж Вдохновения", JumpPage, 30) 
	Text (8, "Снять печать Благословление Вдохновения", JumpPage, 31) 
	Text (8, "Снять печать Милосердие Вдохновения", JumpPage, 32) 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 12 )
	TriggerCondition( 1, HasItem, 6173, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6173, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6104, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (9, "Йе: Отдайте мне Искупление Эпической Доблести, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.") 
	Text (9, "Подтвердить", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 12 )
	TriggerCondition( 1, HasItem, 6174, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6174, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6105, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (10, "Йе: Отдайте мне Стража Эпической Доблести, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.") 
	Text (10, "Подтвердить", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 12 )
	TriggerCondition( 1, HasItem, 6175, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6175, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6106, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (11, "Йе: Отдайте мне Благославление Эпической Доблести, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")  
	Text (11, "Подтвердить", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 12 )
	TriggerCondition( 1, HasItem, 6176, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6176, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6107, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (12, "Йе: Отдайте мне Покровительство Эпической Доблести, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text (12, "Подтвердить", MultiTrigger, GetMultiTrigger (), 1) 


	InitTrigger()
	TriggerCondition( 1, PfEqual, 9 )
	TriggerCondition( 1, HasItem, 6177, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6177, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6108, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (13, "Йе: Отдайте мне Искупление Чести, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text (13, "Подтвердить", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 9 )
	TriggerCondition( 1, HasItem, 6178, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6178, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6109, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (14, "Йе: Отдайте мне Страж Чести, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text (14, "Подтвердить", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 9 )
	TriggerCondition( 1, HasItem, 6179, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6179, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6110, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (15, "Йе: Отдайте мне Благославление Чести, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text (15, "Подтвердить", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 9 )
	TriggerCondition( 1, HasItem, 6180, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6180, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6111, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (16, "Йе: Отдайте мне Милосердие Чести, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text (16, "Подтвердить", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasItem, 6181, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6181, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6112, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (17, "Йе: Отдайте мне Искупление Жертвы, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text( 17, "Подтвердить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasItem, 6182, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6182, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6113, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (18, "Йе: Отдайте мне Страж Жертвы, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
 	Text( 18, "Подтвердить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasItem, 6183, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6183, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6114, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (19, "Йе: Отдайте мне Благославление Жертвы, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text( 19, "Подтвердить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasItem, 6184, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6184, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6115, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (20, "Йе: Отдайте мне Милосердие Жертвы, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text( 20, "Подтвердить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 16 )
	TriggerCondition( 1, HasItem, 6185, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6185, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6116, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (21, "Йе: Отдайте мне Искупление Правосудия, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text( 21, "Подтвердить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 16 )
	TriggerCondition( 1, HasItem, 6186, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6186, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6117, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (22, "Йе: Отдайте мне Страж Правосудия, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text( 22, "Подтвердить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 16 )
	TriggerCondition( 1, HasItem, 6187, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6187, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6118, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (23, "Йе: Отдайте мне Благославление Правосудия, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text( 23, "Подтвердить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 16 )
	TriggerCondition( 1, HasItem, 6188, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6188, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6119, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (24, "Йе: Отдайте мне Милосердие Правосудия, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text( 24, "Подтвердить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 13 )
	TriggerCondition( 1, HasItem, 6189, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6189, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6120, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (25, "Йе: Отдайте мне Искупление Сочувствия, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text( 25, "Подтвердить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 13 )
	TriggerCondition( 1, HasItem, 6190, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6190, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6121, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (26, "Йе: Отдайте мне Страж Сочувствия, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text( 26, "Подтвердить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 13 )
	TriggerCondition( 1, HasItem, 6191, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6191, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6122, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (27, "Йе: Отдайте мне Благославление Сочувствия, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text( 27, "Подтвердить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 13 )
	TriggerCondition( 1, HasItem, 6192, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6192, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6123, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (28, "Йе: Отдайте мне Милосердие Сочувствия, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text( 28, "Подтвердить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 14 )
	TriggerCondition( 1, HasItem, 6193, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6193, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6124, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (29, "Йе: Отдайте мне Искупление Вдохновения, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text( 29, "Подтвердить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 14 )
	TriggerCondition( 1, HasItem, 6194, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6194, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6125, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (30, "Йе: Отдайте мне Страж Вдохновения, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text( 30, "Подтвердить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 14 )
	TriggerCondition( 1, HasItem, 6195, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6195, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6126, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (31, "Йе: Отдайте мне Благословление Вдохновения, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text( 31, "Подтвердить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, PfEqual, 14 )
	TriggerCondition( 1, HasItem, 6196, 1 )
	TriggerCondition( 1, HasItem, 6231, 2 )
	TriggerCondition( 1, HasItem, 6232, 2 )
	TriggerCondition( 1, HasItem, 6233, 1 )
	TriggerCondition( 1, HasItem, 6234, 1 )
	TriggerAction( 1, TakeItem, 6196, 1 )
	TriggerAction( 1, TakeItem, 6231, 2 )
	TriggerAction( 1, TakeItem, 6232, 2 )
	TriggerAction( 1, TakeItem, 6233, 1 )
	TriggerAction( 1, TakeItem, 6234, 1 )
	TriggerAction( 1, GiveItem, 6127, 1, 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Talk (32, "Йе: Отдайте мне Милосердие Вдохновения, и я помогу снять печать. Мне так же понадобятся 2 руны Учтивости, 2 руны Благочестия, 1 руна Сострадания и 1 руна Храбрости.")   
	Text( 32, "Подтвердить", MultiTrigger, GetMultiTrigger(), 1)

--	AddNpcMission	(6327)	--1
	AddNpcMission	(6332)	--2
--	AddNpcMission	(6419)	--3

--	AddNpcMission	(6709)	--4
--	AddNpcMission	(6720)	--5

end

function d_talk9()

	Talk (1, "Санни:Привет, как дела? Я командир флота на Острове Зимы. Только три моих брата знают этот маршрут. Готов к отплытию?") 

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 702,720, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Санни: Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить.")
	Talk( 4, "Санни: Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить.")
	Talk( 5, "Санни: Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить.")
	Talk( 6, "Санни: Прости, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Восстановление будет стоить 1000 золотых!")

--	AddNpcMission	(6403)	--1
--	AddNpcMission	(6404)	--2

end

function d_talk10()

	Talk (1, "Уинстон: Я любил учится и позновать секреты, но сейчас уже не то время!") 

	AddNpcMission	(6328)	--1
--	AddNpcMission	(6421)	--2

--	AddNpcMission	(6710)	--3
--	AddNpcMission	(6711)	--4
--	AddNpcMission	(6712)	--5

end

function d_talk11()

	Talk (1, "Снежный Страж Кары: Здравствуйте, я Снежный Страж этого острова.") 

	AddNpcMission	(6333)	--1
	AddNpcMission	(6334)	--2
--	AddNpcMission	(6409)	--3

end
function d_talk12()

	Talk (1, "Селтик: Привет, я Диспетчер порта - Селтик, вы можете отправиться в плавание на своем судне, починить его, заправить или востановить если утонули.") 

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 1043, 629, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Селтик: Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить.")
	Talk( 4, "Селтик: Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить.")
	Talk( 5, "Селтик: Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить.")
	Talk( 6, "Селтик: Простите, но вы можете восстановить судно лишь в том порту, куда вы последний раз заходили!")


--	AddNpcMission	(6405)	--1
--	AddNpcMission	(6406)	--2

end

function d_talk13()

	Talk (1, "Крис: У меня есть сестра, вы знали об этом? Я бы очень хотел её увидеть, я бы хотел найти время, чтобы встретится с ней, но увы у меня слишком много работы.") 

	AddNpcMission	(6329)	--1
--	AddNpcMission	(6414)	--2
--	AddNpcMission	(6417)	--3

--	AddNpcMission	(6713)	--4
--	AddNpcMission	(6714)	--5

end

function d_talk14()

	Talk (1, "Страж Снежного Виля: Здравствуйте, я Снежный Страж этого острова.") 

	AddNpcMission	(6335)	--1
	AddNpcMission	(6336)	--2
--	AddNpcMission	(6410)	--3

end

function d_talk15()

	Talk (1, "Рупперт: Привет, я Диспетчер порта - Рупперт, вы можете отправиться в плавание на своем судне, починить его, заправить или востановить если утонули.") 

	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 34 )
	TriggerAction( 1, LuanchBerthList, 34, 246,1185, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, RepairBerthList, 34 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить судно", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 34 )
	TriggerAction( 2, SupplyBerthList, 34 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправить", MultiTrigger, GetMultiTrigger(), 2 ) 

	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 34 )
	TriggerAction( 1, SalvageBerthList, 34 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить судно", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Рупперт: Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить.")
	Talk( 4, "Рупперт: Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить.")
	Talk( 5, "Рупперт: Простите. У вас нет судна в этом порту. Если судно утонуло, то вам необходимо его восстановить.")
	Talk( 6, "Рупперт: Простите, но вы можете восстановить судно лишь в том порту, куда вы последний раз заходили!")

--	AddNpcMission	(6407)	--1
--	AddNpcMission	(6408)	--2

end

function d_talk16()

	Talk (1, "Вилль: Привет я Вилль с Севера. Я охраняю проход в другие земли. Ты хочешь куда то отправиться?") 
	Text (1, "Отправиться на ледниковый остров", JumpPage, 2) 
	Text (1, "Отправиться в Край Авроры", JumpPage, 3) 
	Text (1, "Отправиться в Край Тьмы", JumpPage, 4) 
	Text (1, "Получить 95 вещи", JumpPage, 5) 
	Text (1, "Спасибо, мне ничего не нужно", CloseTalk) 

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1648 )
	TriggerAction( 1, GoTo, 1970,950, "winterland" )
	TriggerFailure( 1, JumpPage, 6 )
	Talk (2, "Вилль: Ты готов отправиться на ледниковый остров?") 
	Text (2, "Да поехали", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1664 )
	--TriggerCondition( 1, GM_TEST )
	TriggerCondition( 1, goto_mj1_time )
	TriggerAction( 1, GoTo, 366,395, "mjing1")
	TriggerFailure( 1, JumpPage, 7 )
	Talk (3, "Вилль: Ты готовы отправиться в Край Авроры?") 
	Text (3, "Да поехали", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1664 )
	TriggerCondition( 1, goto_mj2_time )
	TriggerAction( 1, mj3sjc )
	TriggerFailure( 1, JumpPage, 7 )
	Talk (4, "Вилль: Ты готов отправиться в Край Тьмы?") 
	Text (4, "Да поехали", MultiTrigger, GetMultiTrigger (), 1) 

	Talk (6, "Вилль: Ты не можешь пройти на Ледниковый остров, он слишком опасный для тебя.") 
	Talk (7, "Вилль: Ты не можешь пройти в Края Авроры и Тьмы, там слишком опасно для тебя.") 
	Talk (8, "Вилль: К сожелению ты не выполнил условия для получения 95 вещей.") 

	InitTrigger()
	TriggerCondition( 1, PfEqual, 8 )
	TriggerCondition( 1, HasRecord, 1671 )
	TriggerCondition( 1, NoRecord, 1891 )
	TriggerAction( 1, GiveItem, 6251, 1, 4 )
	TriggerAction( 1, SetRecord, 1891 )
	TriggerCondition( 2, PfEqual, 9 )
	TriggerCondition( 2, HasRecord, 1671 )
	TriggerCondition( 2, NoRecord, 1891 )
	TriggerAction( 2, GiveItem, 6250, 1, 4 )
	TriggerAction( 2, SetRecord, 1891 )
	TriggerCondition( 3, PfEqual, 12 )
	TriggerCondition( 3, HasRecord, 1671 )
	TriggerCondition( 3, NoRecord, 1891 )
	TriggerAction( 3, GiveItem, 6252, 1, 4 )
	TriggerAction( 3, SetRecord, 1891 )
	TriggerCondition( 4, PfEqual, 13 )
	TriggerCondition( 4, HasRecord, 1671 )
	TriggerCondition( 4, NoRecord, 1891 )
	TriggerAction( 4, GiveItem, 6255, 1, 4 )
	TriggerAction( 4, SetRecord, 1891 )
	TriggerCondition( 5, PfEqual, 14 )
	TriggerCondition( 5, HasRecord, 1671 )
	TriggerCondition( 5, NoRecord, 1891 )
	TriggerAction( 5, GiveItem, 6254, 1, 4 )
	TriggerAction( 5, SetRecord, 1891 )
	TriggerCondition( 6, PfEqual, 16 )
	TriggerCondition( 6, HasRecord, 1671 )
	TriggerCondition( 6, NoRecord, 1891 )
	TriggerAction( 6, GiveItem, 6253, 1, 4 )
	TriggerAction( 6, SetRecord, 1891 )
	TriggerFailure( 6, JumpPage, 8 )
	Talk (5, "Вилль: Если ты выполнил условия для получение 95 оружия, то я тебе его дам.") 
	Text (5, "Давай", MultiTrigger, GetMultiTrigger (), 6) 

	AddNpcMission	(6341)	--1
	AddNpcMission	(6342)	--2
	AddNpcMission	(6348)	--3
	AddNpcMission	(6349)	--4
	AddNpcMission	(6368)	--5
	AddNpcMission	(6369)	--6
--	AddNpcMission	(6379)	--7
--	AddNpcMission	(6420)	--8
--	AddNpcMission	(6622)	--9
end

function d_talk17()

	Talk (1, "Лион: много лет назад, когда я был рядовым солдатом, я познакомился с девушкой по имение Ада, она любила сильно старинные вещи, поэтому я стал Исследователем.") 

	AddNpcMission	(6330)	--1
--	AddNpcMission	(6418)	--2

--	AddNpcMission	(6718)	--3
--	AddNpcMission	(6719)	--4

end

function d_talk18()

	Talk (1, "Джилл: Здравствуйте, я тут провожу свои раскопки.") 

	AddNpcMission	(6331)	--1
--	AddNpcMission	(6415)	--2
--	AddNpcMission	(6416)	--3

--	AddNpcMission	(6715)	--4
--	AddNpcMission	(6716)	--5
--	AddNpcMission	(6717)	--6

end

function d_talk19()

	Talk (1, "Защитник Острова Зимы: Здравствуйте, я Снежный Страж этого острова.") 

	AddNpcMission	(6337)	--1
	AddNpcMission	(6338)	--2
	AddNpcMission	(6339)	--3
	AddNpcMission	(6340)	--4
--	AddNpcMission	(6411)	--5

end

function d_talk20()

	Talk (1, "Защитник древней реликвии: Здравствуйте, я Защитник древней реликвии которая спрятана на этом острове.") 

	AddNpcMission	(6343)	--1
	AddNpcMission	(6344)	--2
	AddNpcMission	(6347)	--3
--	AddNpcMission	(6412)	--4
--	AddNpcMission	(6413)	--5
--	AddNpcMission	(6723)	--6
--	AddNpcMission	(6725)	--7

end

function d_talk21()

	Talk (1, "Монумент поставленный Каре") 

	AddNpcMission	(6345)	--1
--	AddNpcMission	(6422)	--2
--	AddNpcMission	(6722)	--3

end

function d_talk22()

	Talk (1, "Монумент поставленный Виллю") 

	AddNpcMission	(6346)	--1
--	AddNpcMission	(6423)	--2
--	AddNpcMission	(6724)	--3

end

function d_talk23()

	local GotoX = 249
	local GotoY = 868
	local GotoM = "winterland"

	Talk (1, "Вилль: Вы хотите отправиться на Зимние острова?") 
	Text (1, "Отправиться на Зимние острова", JumpPage, 2) 

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1636 )
	TriggerCondition( 1, HasAllBoatInBerth, 13 )
	TriggerAction( 1, LuanchBerthList, 13, 2583,3235, 180 )
	--TriggerAction( 1,  GoTo, GotoX, GotoY, GotoM )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (2, "Вилль: Вы готовы?") 
	Text (2, "Да, поехали", MultiTrigger, GetMultiTrigger (), 1) 

	Talk (3, "Вилль: Проверьте что бы у вас был пройден квест (Секрет Огненого шара) и что бы ваш корабль был в доке Веснограда.")

	AddNpcMission	(6325)	--1-Обожание странницы(Завершение)
	AddNpcMission	(6326)	--2-Путь на остров Зимы

end

function d_talk24()

	Talk (1, "Страж реликвии Авроры: Здравствуйте, я Страж реликвии Авроры.") 

--	AddNpcMission	(6370)	--1
--	AddNpcMission	(6371)	--2
--	AddNpcMission	(6619)	--3
end

function d_talk25()

	Talk (1, "Монумент поставленный Виллю") 

--	AddNpcMission	(6372)	--1
--	AddNpcMission	(6373)	--2
--	AddNpcMission	(6620)	--3

end

function d_talk26()

	Talk (1, "Страж реликвии Тьмы: Здравствуйте, я Страж реликвии Тьмы.") 

--	AddNpcMission	(6374)	--1
--	AddNpcMission	(6375)	--2
--	AddNpcMission	(6376)	--3
--	AddNpcMission	(6728)	--4

end

function d_talk27()

	Talk (1, "Монумент поставленный Каре") 

--	AddNpcMission	(6377)	--1
--	AddNpcMission	(6378)	--2
--	AddNpcMission	(6726)	--3
--	AddNpcMission	(6621)	--4

end

function d_talk28 ()

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 40 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, HasMoney, 1000 )
	TriggerAction( 2, TakeMoney, 1000 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 1, "Цукино: Нужны услуги? Принцесса Цукино позаботится об излечении всех твоих болезней." )
	Text( 1, "Великое исцеление", MultiTrigger,GetMultiTrigger(),2)
 
	Talk( 2,  "Цукино: Прошу прощения, но Великое исцеление стоит 1000 золотых. У вас недостаточно денег!" )

--	AddNpcMission	(6424)	--1
--	AddNpcMission	(6427)	--2
--	AddNpcMission	(6428)	--3
--	AddNpcMission	(6432)	--4

end

function d_talk29()

	Talk (1, "Эндимион: Привет я Корабел - Эндимион, вам нужен корабль? Тогда вы по адрессу!")

	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "Достигнуто максимальное количество кораблей. Нельзя больше построить корабль." )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Купить корабль", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 34 )
	TriggerAction( 1, BoatLevelBerthList, 34 )
	TriggerFailure( 1, JumpPage, 3 )
	Text (1, "Сделать апргрейд кораблю", MultiTrigger, GetMultiTrigger (), 1)

	Talk (2, "Эндимион: Какой корабль желаете построить?") 
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 1, 34 )
	Text( 2, "Построить Гуппи", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 5, 34 )
	Text( 2, "Построить Ветролов", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 6, 34 )
	Text( 2, "Построить Рыбу-меч", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 4, 34 )
	Text( 2, "Построить Черепаху", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 14 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 14, 34 )
	Text( 2, "Построить Поток", MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 15 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 15, 34 )
	Text( 2, "Построить Богиню", MultiTrigger, GetMultiTrigger(), 1 )

	Talk (3, "Эндимион: Чтобы улучшить судно вы должны поставить его в эту гавань. Кроме того у вас должно быть необходимое количество опыта корабля. Опыт можно заработать убивая морских монстров.") 

--	AddNpcMission	(6425)	--1
--	AddNpcMission	(6426)	--2
--	AddNpcMission	(6429)	--3
--	AddNpcMission	(6430)	--4
--	AddNpcMission	(6431)	--5

end

function d_talk30()

	Talk (1, "Малыш Донг: Мне нечего делать, я незнаю чем заняться тут, поиграй со мной!") 

--	AddNpcMission	(6727)	--1

end

function d_talk31()

	Talk (1, "Малыш Белл: Каждая девушка когда-то была ангелом, по щеке которого никогда не скатывалась слеза. Когда она находит свою любовь, она начинает плакать. Слезы заставляют её спуститься с небес на землю. Каждый мужчина должен беречь свою любимую, ведь она предпочла быть с ним, а не оставаться в райских садах.")  
	Text (1, "Вы хотите распечтать 95 сил оружие?", JumpPage, 2) 

	Talk (2, "Малыш Белл: Какое именно вы хотите распечатать?") 
	Text (2, "Я хочу снять печать Меча Небес", JumpPage, 4) 
	Text (2, "Я хочу снять печать Святого Щита Кавалериста", JumpPage, 5) 
	Text (2, "Я хочу снять печать Карающего Лука", JumpPage, 6) 
	Text (2, "Я хочу снять печать Оружия Правосудия", JumpPage, 7) 
	Text (2, "Я хочу снять печать Бесшумного Лезвия", JumpPage, 8) 
	Text (2, "Я хочу снять печать Нержавеющего Меча", JumpPage, 9) 
	Text (2, "Я хочу снять печать Посоха Жертвы", JumpPage, 10) 
	Text (2, "Я хочу снять печать Посоха Жизни", JumpPage, 11) 

	Talk (3, "Малыш Белл: Если у тебя не достаточно места в инвентаре или нет требуемых предметов, я не смогу снять печати.") 

	InitTrigger()
	TriggerCondition( 1, HasItem, 6165, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6165, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6096, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (4, "Малыш Белл: Дай мне Меч Небес, и я снему с него печать. Мне так же понадобится 1 руна Учтивости, 1 руна Благочестия, 2 руны Сострадания и 2 руны Храбрости.") 
	Text (4, "Подтвердить", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem, 6166, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6166, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6097, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (5, "Малыш Белл: Дай мне Святой Щит Ковалериста, и я снему с него печать. Мне так же понадобится 1 руна Учтивости, 1 руна Благочестия, 2 руны Сострадания и 2 руны Храбрости.") 
	Text (5, "Подтвердить", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem, 6167, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6167, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6098, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (6, "Малыш Белл: Дай мне Корающий Лук, и я снему с него печать. Мне так же понадобится 1 руна Учтивости, 1 руна Благочестия, 2 руны Сострадания и 2 руны Храбрости.") 
	Text (6, "Подтвердить", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem, 6168, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6168, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6099, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (7, "Малыш Белл: Дай мне Оружие Правосудия, и я снему с него печать. Мне так же понадобится 1 руна Учтивости, 1 руна Благочестия, 2 руны Сострадания и 2 руны Храбрости.") 
	Text (7, "Подтвердить", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem, 6169, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6169, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6100, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (8, "Малыш Белл: Дай мне Бесшумное Лезвие, и я снему с него печать. Мне так же понадобится 1 руна Учтивости, 1 руна Благочестия, 2 руны Сострадания и 2 руны Храбрости.") 
	Text (8, "Подтвердить", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem, 6170, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6170, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6101, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (9, "Малыш Белл: Дай мне Нержавеющий Меч, и я снему с него печать. Мне так же понадобится 1 руна Учтивости, 1 руна Благочестия, 2 руны Сострадания и 2 руны Храбрости.") 
	Text (9, "Подтвердить", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem, 6171, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6171, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6102, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (10, "Малыш Белл: Дай мне Посох Жертвы, и я снему с него печать. Мне так же понадобится 1 руна Учтивости, 1 руна Благочестия, 2 руны Сострадания и 2 руны Храбрости." ) 
	Text (10, "Подтвердить", MultiTrigger, GetMultiTrigger (), 1) 

	InitTrigger()
	TriggerCondition( 1, HasItem, 6172, 1 )
	TriggerCondition( 1, HasItem, 6231, 1 )
	TriggerCondition( 1, HasItem, 6232, 1 )
	TriggerCondition( 1, HasItem, 6233, 2 )
	TriggerCondition( 1, HasItem, 6234, 2 )
	TriggerAction( 1, TakeItem, 6172, 1 )
	TriggerAction( 1, TakeItem, 6231, 1 )
	TriggerAction( 1, TakeItem, 6232, 1 )
	TriggerAction( 1, TakeItem, 6233, 2 )
	TriggerAction( 1, TakeItem, 6234, 2 )
	TriggerAction( 1, GiveItem, 6103, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Talk (11, "Малыш Белл: Дай мне Посох Жизни, и я снему с него печать. Мне так же понадобится 1 руна Учтивости, 1 руна Благочестия, 2 руны Сострадания и 2 руны Храбрости.") 
	Text (11, "Подтвердить", MultiTrigger, GetMultiTrigger (), 1)

--	AddNpcMission	(6399)	--1
end


function d_talk32 ()

	Talk( 1,  "Хрюша: Привет! Я банкир острова Зимы, если нужны мои услуги обращайся." )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1,  "Хранилище (стоимость 200 золотых) ", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2,  "Хрюша: Прости, но у тебя не хватает золота! " )

end