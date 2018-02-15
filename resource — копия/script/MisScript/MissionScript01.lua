print( "Loading MissionScript01.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

function RobinMission003()

--Приветствие врача
	DefineMission( 707, "Приветствие врача", 703, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Я вижу вы здесь новенький? Добро пожаловать! Возьмите эти <rЯблоки>, я их сам делал! Я думаю они вам прегодятся.<n><t>А сейчас возвращайтесь к Сенне (2223, 2785).<n><t>(Дито дал вам несколько яблок. Перетащите их на кнопки F1 - F8 для быстрого использования.)")
	MisResultCondition(NoRecord, 703)
	MisResultCondition(HasMission, 703)
	MisResultCondition(NoFlag, 703, 10)
	MisResultCondition(HasFlag, 703, 1)
	MisResultCondition(HasItem, 3952, 1)
	MisResultAction(TakeItem, 3952, 1)
	MisResultAction(SetFlag, 703, 10)
	MisResultAction(GiveItem, 1847, 99, 4)
	MisResultBagNeed(1)

--Сбор листьев
	DefineMission( 733, "Сбор листьев", 721 )

	MisBeginTalk( "<t>Привет! Мне понадобится твоя помощь. Помоги мне собрать несколько целебных листьев. Нужны 10 <rПожухлых листьев> и 5 <rЗеленых листьев>, их можно найти у Волшебного куста и Чудоцвета." )
	MisBeginCondition(NoMission, 721)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 721)
	MisBeginAction(SetFlag, 721, 1)
	MisBeginAction(AddTrigger, 7211, TE_GETITEM, 1573, 10 )
	MisBeginAction(AddTrigger, 7212, TE_GETITEM, 1574, 3 )
	MisCancelAction(ClearMission, 721)

	MisNeed(MIS_NEED_ITEM, 1573, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 1574, 3, 20, 3)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Замечательно! Теперь я могу продолжить исследование!")
	MisHelpTalk("<t>Ты еще не собрал все листья?")
	MisResultCondition(HasMission, 721)
	MisResultCondition(HasItem, 1573, 10 )
	MisResultCondition(HasItem, 1574, 3 )
	MisResultAction(TakeItem, 1573, 10 )
	MisResultAction(TakeItem, 1574, 3 )
	MisResultAction(AddExp, 40, 70)
	MisResultAction(ClearMission, 721)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1573)	
	TriggerAction( 1, AddNextFlag, 721, 10, 10 )
	RegCurTrigger( 7211 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1574)	
	TriggerAction( 1, AddNextFlag, 721, 20, 3 )
	RegCurTrigger( 7212 )

--Рецепт отвара
	DefineMission( 738, "Рецепт отвара", 726 )

	MisBeginTalk( "<t>На меня снизошло озарения, и я придумал новое лекарство. Прости за беспокойство, но не мог бы ты принести мне 2 <rСтакана>, 2 <rЦветочных почек> и 5 <rЧернил спрута>. Их можно достать, убивая Лесных духов, Чудоцветы и Кальмарчиков. Я награжу тебя. Вперед!" )
	MisBeginCondition(NoMission, 726)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 726)
	MisBeginAction(SetFlag, 726, 1)
	MisBeginAction(AddTrigger, 7261, TE_GETITEM, 1777, 2 )
	MisBeginAction(AddTrigger, 7262, TE_GETITEM, 1579, 2 )
	MisBeginAction(AddTrigger, 7263, TE_GETITEM, 1705, 5 )
	MisCancelAction(ClearMission, 726)

	MisNeed(MIS_NEED_ITEM, 1777, 2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 1579, 2, 20, 2)
	MisNeed(MIS_NEED_ITEM, 1705, 5, 30, 5)

	MisPrize(MIS_PRIZE_MONEY, 200, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Очень хорошо. Ты принес всё необходимое, и тепер ья могу начать свой эксперимент.")
	MisHelpTalk("<t>Ты еще здесь? Поторопись и принеси мне ингридиенты, пока вдохновение не ушло!")
	MisResultCondition(HasMission, 726)
	MisResultCondition(HasItem, 1777, 2 )
	MisResultCondition(HasItem, 1579, 2 )
	MisResultCondition(HasItem, 1705, 5 )
	MisResultAction(TakeItem, 1777, 2 )
	MisResultAction(TakeItem, 1579, 2 )
	MisResultAction(TakeItem, 1705, 5 )
	MisResultAction(AddExp, 70, 95)
	MisResultAction(ClearMission, 726)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1777)	
	TriggerAction( 1, AddNextFlag, 726, 10, 2 )
	RegCurTrigger( 7261 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1579)	
	TriggerAction( 1, AddNextFlag, 726, 20, 2 )
	RegCurTrigger( 7262 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1705)	
	TriggerAction( 1, AddNextFlag, 726, 30, 5 )
	RegCurTrigger( 7263 )

--Гриб-грибок
	DefineMission( 739, "Гриб-грибок", 727 )

	MisBeginTalk( "<t>Когда-то я вырастил несколько <bГрибов-Жадобцов> на окраинах Аргента. Но потом я настолько увлекся рецептом лекарства, что совсем о них забыл. Пора собрать урожай. Не мог бы ты принести мне 10 <rЯдовитых грибов> и 5 <rГрибов>?<n><t>Кстати говоря, эти Жадобцы довольно агрессивны, так что возьми с собой немного целительных зелий. Самих Жадобцов можно найти в области вокруг точки (2220, 2564). Возможно, сейчас самый удачный момент для сбора урожая, не упусти его!" )
	MisBeginCondition(NoMission, 727)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 727)
	MisBeginAction(SetFlag, 727, 1)
	MisBeginAction(AddTrigger, 7271, TE_GETITEM, 3118, 5 )
	MisBeginAction(AddTrigger, 7272, TE_GETITEM, 1725, 10 )
	MisCancelAction(ClearMission, 727)

	MisNeed(MIS_NEED_ITEM, 3118, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1725, 10, 20, 10)

	MisPrize(MIS_PRIZE_MONEY, 300, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Замечательно! Ты все принес! Спасибо!")
	MisHelpTalk("<t>В чем дело? Ты испугался Жадобцов?")
	MisResultCondition(HasMission, 727)
	MisResultCondition(HasItem, 3118, 5 )
	MisResultCondition(HasItem, 1725, 10 )
	MisResultAction(TakeItem, 3118, 5 )
	MisResultAction(TakeItem, 1725, 10 )
	MisResultAction(AddExp, 95, 125)
	MisResultAction(ClearMission, 727)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 3118)	
	TriggerAction( 1, AddNextFlag, 727, 10, 5 )
	RegCurTrigger( 7271 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1725)	
	TriggerAction( 1, AddNextFlag, 727, 20, 10 )
	RegCurTrigger( 7272 )


end
RobinMission003()

function RobinMission004()

--Компас выживания
	DefineMission( 748, "Компас выживания", 736 )
	
	MisBeginTalk( "<t>Ты пришел, чтобы стать Исследователем? Наш брат часто встречает опасности и должен быть готов к ним. Без нужных знаний из тебя толкового Исследователя не выйдет. Чтоб заслужить <rКомпас выжвиания>, сходи на <pОкраины Аргента>, победи 5 <bБолотных духов> (к северу от Шахт), 10 <bМоллюсков> (на побережье) и собери флаконов 5 <bЧерепашьей крови> (с Травяных черепах).<n><t>Если ты справишься, я выдам тебе <bКомпас выживания>.<n><t>А когда достигнешь уровня 10, приходи чтобы стать полноправным Исследователем." )
	MisBeginCondition(NoMission, 736)
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_RISKER )
	MisBeginAction(AddMission, 736)
	MisBeginAction(SetFlag, 736, 1)
	MisBeginAction(AddTrigger, 7361, TE_KILL, 104, 5 )
	MisBeginAction(AddTrigger, 7362, TE_KILL, 39, 10 )
	MisBeginAction(AddTrigger, 7363, TE_GETITEM, 1844, 5 )
	MisCancelAction(ClearMission, 736)
	
	MisNeed(MIS_NEED_KILL, 104, 5, 10, 5)
	MisNeed(MIS_NEED_KILL, 39, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 1844, 5, 30, 5)

	MisPrize(MIS_PRIZE_ITEM, 3962, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Отличная работа, должен сказать!<n><t>Ты прошел мое испытания. Держи свой собственный <rКомпас выживания>. <n><t>Храни его и возвращайся по достижении <pУр10>.")
	MisHelpTalk("<t>Ты еще не выполнил мое задание. Получить Компас не так-то легко!")
	MisResultCondition(HasMission, 736)
	MisResultCondition(HasFlag, 736, 14 )
	MisResultCondition(HasFlag, 736, 29 )
	MisResultCondition(HasItem, 1844, 5 )
	MisResultAction(TakeItem, 1844, 5)
	MisResultAction(ClearMission, 736)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 104 )	
	TriggerAction( 1, AddNextFlag, 736, 10, 5 )
	RegCurTrigger( 7361 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 39 )	
	TriggerAction( 1, AddNextFlag, 736, 20, 10 )
	RegCurTrigger( 7362 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1844 )	
	TriggerAction( 1, AddNextFlag, 736, 30, 5 )
	RegCurTrigger( 7363 )

-------------------------
-- Получение 2 профессии
-------------------------
--Путешествие Покорителя Морей
	DefineMission( 758, "Путешествие Покорителя Морей", 742 )
	
	MisBeginTalk( "<t>Итак, ты решил стать <bПокорителем морей>, ты должен быть готов к тому, что грядет.<n><t> Я подружился с некоторыми матросами, когда я был молод. Теперь они в разных гаванях мира.<n><t> Возьми мое рекомендательное письмо, передай моему старому другу, он знает, что с ним делать.<n><t>Плыви в <pБухту Сары> к <bУитни>, знай она находится в Аскароне." )
	MisBeginCondition(NoRecord, 742)
	MisBeginCondition(NoMission, 742)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 4 )
	MisBeginCondition(CheckConvertProfession, MIS_VOYAGE )
	MisBeginAction(AddMission, 742)
	MisCancelAction(ClearMission, 742)

	MisNeed(MIS_NEED_DESP, "Навести Уитни (3097, 3530)")

	MisResultTalk("<t>О, ты вернулся! Теперь ты полноценный <bПокоритель морей>.<n><t>Морской парус прославит тебя!")
	MisHelpTalk("<t>Теперь ступай! Разве ты не слышал зов океана?")
	MisResultCondition(HasMission, 742)
	MisResultCondition(HasFlag, 742, 50 )
	MisResultAction(ClearMission, 742)
	MisResultAction(SetRecord, 742)
	MisResultAction(SetProfession, 16)
	MisResultAction(Starteffect , 366)

--Путешествие Покорителя Морей
--	DefineMission( 760, "Путешествие Покорителя Морей", 742, COMPLETE_SHOW)

---	MisBeginCondition( AlwaysFailure )
--	MisResultTalk("<t>Хо-хо! Ты хочешь стать Покорителем Морей? Тогда ты должен работать! Это будет многообещающее будущее для тебя, если ты станешь Моряком!")
--	MisResultCondition(NoRecord, 742)
--	MisResultCondition(HasMission, 742)
--	MisResultCondition(NoFlag, 742, 20)
--	MisResultAction(SetFlag, 742, 20)

--Путешествие Покорителя Морей
--	DefineMission( 761, "Путешествие Покорителя Морей", 742, COMPLETE_SHOW)

--	MisBeginCondition( AlwaysFailure )
--	MisResultTalk("<t>Черт! Малыш Даниэль, только сейчас вспомнил обо мне после стольких лет!")
--	MisResultCondition(NoRecord, 742)
--	MisResultCondition(HasMission, 742)
--	MisResultCondition(NoFlag, 742, 30)
--	MisResultAction(SetFlag, 742, 30)


--Путешествие Покорителя Морей
--	DefineMission( 762, "Путешествие Покорителя Морей", 742, COMPLETE_SHOW)

--	MisBeginCondition( AlwaysFailure )
--	MisResultTalk("<t>О, новый Покоритель Морей, добро пожаловать! Напомни Малышу Даниэлю, что он должен мне 50 000 золотых... Уже 5 лет...")
--	MisResultCondition(NoRecord, 742)
--	MisResultCondition(HasMission, 742)
--	MisResultCondition(NoFlag, 742, 40)
--	MisResultAction(SetFlag, 742, 40)


--Путешествие Покорителя Морей
	DefineMission( 763, "Путешествие Покорителя Морей", 742, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
	MisResultTalk("<t>Под парусом в море опасно. Поговори со мной, если тебе что-то понадобится. Малыш Даниэль помогал мне много в прошлом.")
	MisResultCondition(NoRecord, 742)
	MisResultCondition(HasMission, 742)
	MisResultCondition(NoFlag, 742, 50)
	MisResultAction(SetFlag, 742, 50)

end
RobinMission004()


function RobinMission007()

--Приветствие кузнеца
	DefineMission( 703, "Приветствие кузнеца", 701, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Я смотрю вы здесь новичок? Меня зовут <bГолди>, Я кузнец города <pАргент>. Я кую оружие, вставляю в них самоцветы, придаю им красивый вид, могу делать слота в вещах, а также могу вынимать самоцветы из твоих вещей и т.д... Я действительно занятой в эти дни, но сделаю исключение, чтобы помочь тебе, так как я вижу что у тебя есть Рекомендательное письмо от Наставницы Сенны.<n><t>Не забудь поговорить с <bСенной> по координатам (2223, 2785) я длеаю это все только ради нее, ахаха!<n><t>(Голди дал тебе Нож новичка. Открой инвентарь и двойным щелчком нажми на него.)")
	MisResultCondition(NoRecord, 701)
	MisResultCondition(HasMission, 701)
	MisResultCondition(NoFlag, 701, 10)
	MisResultCondition(HasItem, 3950, 1)
	MisResultAction(TakeItem, 3950, 1)
	MisResultAction(SetFlag, 701, 10)
	MisResultBagNeed(1)
	

end
RobinMission007()


function RobinMission017()

--Патент о благочестии
	DefineMission( 719, "Патент о благочестии", 711 )
	
	MisBeginTalk( "<t>Зачем тебе <rПатент о благочестии>? В наше время многие хотят стать знахарями только из-за выгоды. Докажи, что ты станешь помогать людям, а не наживаться на них.<n><t>И только тогда я выдам тебе <rПатент о благочестии>.<n><t>Пойди и раздобудь 1 стакан <rСока эльфийских фруктов> и 2 пучка <rЦелебной травы>. Эта часть испытания касается умения делать целебные зелья. Ищи <bОйю> в <pШайтане>, если нужна помощь.<n><t>Затем отправляйся в район <r(1184, 3557)> и убей 10 <bБольших скорпионов>." )
	MisBeginCondition(NoMission, 711)
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(CheckConvertProfession, MIS_DOCTOR )
	MisBeginAction(AddMission, 711)
	MisBeginAction(SetFlag, 711, 1)
	MisBeginAction(AddTrigger, 7111, TE_GETITEM, 3122, 1 )
	MisBeginAction(AddTrigger, 7112, TE_GETITEM, 3129, 2 )
	MisBeginAction(AddTrigger, 7113, TE_KILL, 247, 10 )
	MisCancelAction(ClearMission, 711)

	MisNeed(MIS_NEED_ITEM, 3122, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3129, 2, 20, 2)
	MisNeed(MIS_NEED_KILL, 247, 10, 30, 10)

	MisPrize(MIS_PRIZE_ITEM, 3954, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Ты справилась!<n><t>Ты прошла тест, возьми же <rПатент> и стань великим целителем.<n><t>Храни его и возвращайся ко мне по достижении <pУр 10>. ")
	MisHelpTalk("<t>Ты еще не выполнила моего задания. Стать Знахаркой не так уж легко.")
	MisResultCondition(HasMission, 711)
	MisResultCondition(HasItem, 3122, 1 )
	MisResultCondition(HasItem, 3129, 2 )
	MisResultCondition(HasFlag, 711, 39 )
	MisResultAction(TakeItem, 3122, 1 )
	MisResultAction(TakeItem, 3129, 2 )
	MisResultAction(ClearMission, 711)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3122 )	
	TriggerAction( 1, AddNextFlag, 711, 10, 1 )
	RegCurTrigger( 7111 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129 )	
	TriggerAction( 1, AddNextFlag, 711, 20, 2 )
	RegCurTrigger( 7112 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 247 )	
	TriggerAction( 1, AddNextFlag, 711, 30, 10 )
	RegCurTrigger( 7113 )

------------------------
-- Получение 2 профессии
------------------------
--Прогулка Целительницы
	DefineMission( 751, "Прогулка Целительницы", 739 )

	MisBeginTalk( "<t>Для того чтобы стать <bЦелительницей>, у тебя должна быть вера. Я надеюсь, что ты будешь помнить об этом. У меня есть для тебя очень простая задача.<n><t>Собери:<n><t>1 <yЛепесток многоцвета>, 2 <yПанацеи> и 3 кувшина <yСока эльфийских фруктов>.<n><t>И передай это <bБабушке Донг> в Пустоши Ледыни. Она очень будет этому рада." )
	MisBeginCondition(NoRecord, 739)
	MisBeginCondition(NoMission, 740)
	MisBeginCondition(NoMission, 739)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 5 )
	MisBeginCondition(CheckConvertProfession, MIS_CLERGY )
	MisBeginAction(AddMission, 739)
	MisCancelAction(ClearMission, 739)

	MisNeed(MIS_NEED_DESP, "Принесите 3 Эльфийских фруктовых соков, 2 Панацеи и 1 Лепесток Многоцвета <bБабушке Донг> в Пустоши Ледыни (795, 363)")
	--MisNeed(MIS_NEED_DESP, "Принесите 3 Эльфийских фруктовых соков, 2 Панацеи и 1 Лепесток Многоцвета <bДоктору Чиво> в Халдейский оплот (630, 2091)")

	MisResultTalk("<t>Поздравляю!<n><t>Ты стал <bЦелительницой>!<n><t>И пусть Богиня Кара пребудет с тобой.")
	MisHelpTalk("<t>В чем причина, что мешает вам? Помните! Терпение и решимость это ключ к успеху!")
	MisResultCondition(HasMission, 739)
	MisResultCondition(HasFlag, 739, 10 )
	MisResultAction(ClearMission, 739)
	MisResultAction(SetRecord, 739)
	MisResultAction(SetProfession, 13)
	MisResultAction(Starteffect , 366)

--Прогулка Целительницы
	DefineMission( 752, "Прогулка Целительницы", 739, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
	MisResultTalk("Это что подарок мне? Ты так добр. Я скажу Первосвященнику об этом..")
	MisResultCondition(NoRecord, 739)
	MisResultCondition(HasMission, 739)
	MisResultCondition(NoFlag, 739, 10)
	MisResultCondition(HasItem, 3122, 3)
	MisResultCondition(HasItem, 3146, 2)
	MisResultCondition(HasItem, 3130, 1)
	MisResultAction(TakeItem, 3122, 3)
	MisResultAction(TakeItem, 3146, 2)
	MisResultAction(TakeItem, 3130, 1)
	MisResultAction(SetFlag, 739, 10)


--	DefineMission( 753, "Прогулка Целительницы", 739, COMPLETE_SHOW)

--	MisBeginCondition( AlwaysFailure )
--	MisResultTalk("Это первосвященник послал тебя. Мне не хватает некоторых важных трав и ты пришел в нужный момент. Я отчитаюсь перед первосвященником по этому вопросу.")
--	MisResultCondition(NoRecord, 739)
--	MisResultCondition(HasMission, 739)
--	MisResultCondition(NoFlag, 739, 20)
--	MisResultCondition(HasItem, 3122, 3)
--	MisResultCondition(HasItem, 3146, 2)
--	MisResultCondition(HasItem, 3130, 1)
--	MisResultAction(TakeItem, 3122, 3)
--	MisResultAction(TakeItem, 3146, 2)
--	MisResultAction(TakeItem, 3130, 1)
--	MisResultAction(SetFlag, 739, 20)

------------------------
-- Получение 2 профессии
------------------------
--Колдовские пути
	DefineMission( 755, "Колдовские пути", 740 )

	MisBeginTalk( "<t>Для того чтобы стать <bКолдуньей>, у тебя должен быть баланс добра и зла. Я проверю твои способности, принеси моей знакомой следующие предметы:<n><t> 3 <yОвечьих колокольчика> которые можно достать у <rБезумной овцы>.<n><t><rБезумных овц> ты найдешь в <pЛедяном шипе> (2267,590)." )
	MisBeginCondition(NoRecord, 740)
	MisBeginCondition(NoMission, 740)
	MisBeginCondition(NoMission, 739)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 5 )
	MisBeginCondition(CheckConvertProfession, MIS_SEALER )
	MisBeginAction(AddMission, 740)
	MisCancelAction(ClearMission, 740)

	MisNeed(MIS_NEED_DESP, "Принесите 3 <yОвечьих колокольчика> <bБлагочестивой жрице - Аде> в <pСтарый город Шайтана> (862, 3303). Пусть она очистит их от зла.")

	MisResultTalk("<t>Мои поздравления, теперь ты настоящая <bКолдунья>.<n><t>Пусть Богиня благовалит тебе!")
	MisHelpTalk("<t>Теперь ступай! Главное верь в себя!")
	MisResultCondition(HasMission, 740)
	MisResultCondition(HasFlag, 740, 10 )
	MisResultAction(ClearMission, 740)
	MisResultAction(SetRecord, 740)
	MisResultAction(SetProfession, 14)
	MisResultAction(Starteffect , 366)

--Колдовские пути
	DefineMission( 756, "Колдовские пути", 740, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
	MisResultTalk("<t>Слава Богине.<n><t>Итак, принесенные тобою колокольчики, должны быть очищены - очень хорошо. Я буду делать все от меня зависящее для тебя в этом священном храме.<n><t>Возвращайся к Геньону в Шайтан. Я предпочитаю Одиночество.<n><t>Слава Богине.")
	MisResultCondition(NoRecord, 740)
	MisResultCondition(HasMission, 740)
	MisResultCondition(NoFlag, 740, 10)
	MisResultCondition(HasItem, 4471, 3)
	MisResultAction(TakeItem, 4471, 3)
	MisResultAction(SetFlag, 740, 10)
end
RobinMission017()

function RobinMission022()

--Приветствие кузнеца
	DefineMission( 713, "Приветствие кузнеца", 707, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("Ты здесь новенький?<n><t>Меня зовут <bСмити>, Я кузнец города <pШайтан>. Я кую оружие, вставляю в них самоцветы, придаю им красивый вид, могу делать слоты в вещах, а также могу вынимать самоцветы из твоих вещей и т.д... Я был очень занят в эти дни.<n><t>Незабудь вернуться и поговорить с  <bНаставницей Реслин> по координатам (876, 3572), я делю это все ради нее, Ухаха!<n><t>(Смити дал тебе Нож новичка. Открой инвентарь,дважды кликни и он оденется.)")
	MisResultCondition(NoRecord, 707)
	MisResultCondition(HasMission, 707)
	MisResultCondition(NoFlag, 707, 10)
	MisResultCondition(HasItem, 3956, 1)
	MisResultAction(TakeItem, 3956, 1)
	MisResultAction(SetFlag, 707, 10)
	MisResultBagNeed(1)

end
RobinMission022()

function RobinMission024()

--Добро пожаловать!
	DefineMission( 701, "Добро пожаловать!", 1, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk("<t>Ах!<n><t>Еще один новичок! Добро пожаловать! Ты можешь обращаться ко мне по любым вопросам, связанным с профессиями и характеристиками. Как только ты возмешь очередной уровень, ты можешь открыть окно своих характеристик (Alt+A) и распредилить очки Характеристик. Как только ты достигаешь очередного уровня у тебя становится больше очков Характеристик. У тебя есть 5 характеристик по которым ты можешь распределить очки. Сила - увеличивает наносимый урон для всех классов кроме Охотника и Стрелка. Точность - увеличивает шанс попадания у всех классов и наносимый урон для Охотников и Стрелков. Телосложение - увеличивает максимальное количество жизни и защиту от физического урона. Ловкость - увеличивает скорость атаки и шанс уклонения от физических атак. Дух - увеличивает количество Маны и скорость ее восстановления.")
	MisHelpTalk("<t>Привет! Я всего лишь Наставница Новичков в этом городе. Обращайся ко мне, когда почувствуешь необходимость, чтобы понять основные аспекты игры. <n>Тебе будет сложно выжить без посторонней помощи.")
	MisResultCondition(NoRecord, 1)
	MisResultCondition(HasMission, 1)
	--MisResultCondition(HasFlag, 700, 10)
	--MisResultCondition(HasFlag, 700, 20)
	MisResultAction(ClearMission, 1)
	MisResultAction(SetRecord, 1)
	MisResultAction(AddExp, 6, 6)

--Приветствие кузнеца
	DefineMission( 702, "Приветствие кузнеца", 701 )
	
	MisBeginTalk( "<t>Ты не сможешь выжить в нашем жестоком мире без оружия.<n><t>Отнеси это письмо кузнецу <pАргента>, <bГолди> (2193, 2706). Я уверена, что он поможет.<n><t>Используй указатель (Alt + R), чтобы отыскать его." )
	MisBeginCondition(HasRecord, 1)
	MisBeginCondition(NoRecord, 701)
	MisBeginCondition(NoMission, 701)
	MisBeginAction(AddMission, 701)
	MisBeginAction(SetFlag, 701, 1)
	MisBeginAction(GiveItem, 3950, 1, 4)
	MisCancelAction(ClearMission, 701 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо  <bкузнецу - Голди> в <pАргенте> (2193, 2706). Затем снова найдите Синну (2223, 2785)")
		
	MisResultTalk("<t>Ты уже встретился с <bГолди>? Отлично. Всегда обращайся к нему, если тебе нужно хорошее оружие.")
	MisHelpTalk("<t>Запомни: письмо нужно отдать лично Голди! Его кузница находится на северо-западной окраине Аргента  (2193, 2706).<n><t> Используй указатель (Alt + R), чтобы отыскать его.")
	MisResultCondition(NoRecord, 701)
	MisResultCondition(HasMission, 701)
	MisResultCondition(HasFlag, 701, 10)
	MisResultAction(ClearMission, 701)
	MisResultAction(SetRecord, 701)
	MisResultAction(AddExp, 9, 9 )

--Приветствие портного
	DefineMission( 704, "Приветствие портного", 702 )
	
	MisBeginTalk( "<t>Это второе письмо с рекомендациями.Отдай его <pАргентскому> портному - <bБабушке Нилие> (2266, 2705)." )
	MisBeginCondition(HasRecord, 701)
	MisBeginCondition(NoRecord, 702)
	MisBeginCondition(NoMission, 702)
	MisBeginAction(AddMission, 702)
	MisBeginAction(SetFlag, 702, 1)
	MisBeginAction(GiveItem, 3951, 1, 4)
	MisCancelAction(SystemNotice, "Это задание не может быть отменено!" )
	--MisCancelAction(ClearMission, 702 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо <bПортному - Бабушке Нилие> в <pАргенте> (2267, 2704) и вернитесь к Синне (2223, 2785)")
		
	MisResultTalk("<t>Ух ты! <bБабушка Нилия> сделала эти перчатки специально для тебя? Выглядят чудесно! Носи на здоровье.")
	MisHelpTalk("<t>Ты уже сходил к Бабушке Нилии? Она живет на севере Аргента (2267, 2704). Найди ее при помощи указателя.")
	MisResultCondition(NoRecord, 702)
	MisResultCondition(HasMission, 702)
	MisResultCondition(HasFlag, 702, 10)
	MisResultAction(ClearMission, 702)
	MisResultAction(SetRecord, 702)
	MisResultAction(AddExp, 21, 21 )

--Приветствие врача
	DefineMission( 706, "Приветствие врача", 703 )
	
	MisBeginTalk( "<t>Отдай последнее письмо <bВрачу Дитто> (2250, 2770). Я думаю, что он поможет тебе чем-нибудь." )
	MisBeginCondition(HasRecord, 702)
	MisBeginCondition(NoRecord, 703)
	MisBeginCondition(NoMission, 703)
	MisBeginAction(AddMission, 703)
	MisBeginAction(SetFlag, 703, 1)
	MisBeginAction(GiveItem, 3952, 1, 4)
	MisCancelAction(SystemNotice, "Это задание не может быть отменено!" )
	--MisCancelAction(ClearMission, 703 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо <bВрачу - Дитто> в <pАргенте> (2250, 2770). Затем вернитесь к Синне (2223, 2785).")
		
	MisResultTalk("<t>Вижу, <bДитто> дал тебе своих <rЯблок>. Ешь по <rЯблоку> в день - и доктора не нужны! Яблоки восстанавливают немного ОЗ.")
	MisHelpTalk("<t>Дитто находится справа от фонтана Аргента. Его координаты - (2250, 2770). Его можно найти при помощи указателя.")
	MisResultCondition(NoRecord, 703)
	MisResultCondition(HasMission, 703)
	MisResultCondition(HasFlag, 703, 10)
	MisResultAction(ClearMission, 703)
	MisResultAction(SetRecord, 703)
	MisResultAction(AddExp, 66, 66 )


--Боевое распределение
	DefineMission( 708, "Боевое распределение", 704 )
	
	MisBeginTalk( "<t>Отлично, пора подраться! Выйди за окраину города и сразись со своим первым монстром. Только не уходи слишком далеко! Это мое последнее задание для тебя.<n><t>Прямо отсюда поверни налево и иди до городских ворот.<n><t>Победи 5 Лесных духов и принеси пару крыльев.<n><t>Лесные духи обитают сразу за воротами, и у любого из них имеются нужные тебе крылья. Когда ты вернешься ко мне с выполненным заданием, я награжу тебя.<n><t>(Вы можете начать бой простым нажатием ЛКМ на противнике. В городах и прочих мирных зонах драться нельзя. Подбирать предметы можно нажатием ЛКМ по ним. Нажатие Ctrl+A соберет все предметы неподалеку от вас." )
	MisBeginCondition(HasRecord, 703)
	MisBeginCondition(NoRecord, 704)
	MisBeginCondition(NoMission, 704)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 10 )
	MisBeginAction(AddMission, 704)
	MisBeginAction(SetFlag, 704, 1)
	MisBeginAction(AddTrigger, 7041, TE_GETITEM, 1620, 1 )
	MisBeginAction(AddTrigger, 7042, TE_KILL, 103, 5 )
	MisCancelAction(ClearMission, 704)

	MisNeed(MIS_NEED_ITEM, 1620, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 103, 5, 20, 5)
	
	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Похоже, что ты уловил основы битвы и подбора предметов. Очень хорошо.<n><t>Раз уж ты выучился всему, что я могу тебе дать, почему бы не вернуть должок? Моему другу Маркусе пригодился бы хороший боец (2065, 2732). Если же драки тебе не по душе, посети Врача Дитто (2250, 2770). Последнее время он частенько нанимает новичков для сбора ингридиентов.<n><t>Удачи тебе!")
	MisHelpTalk("<t>Не стой столбом! Пойди и убей 5 <bЛесных духов> и принеси 1 пару <rКрыльев>.")
	MisResultCondition(NoRecord, 704)
	MisResultCondition(HasMission, 704)
	MisResultCondition(HasItem, 1620, 1)
	MisResultCondition(HasFlag, 704, 24)
	MisResultAction(TakeItem, 1620, 1)
	MisResultAction(ClearMission, 704)
	MisResultAction(SetRecord, 704)
	MisResultAction(AddExp, 75, 75 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1620 )	
	TriggerAction( 1, AddNextFlag, 704, 10, 1 )
	RegCurTrigger( 7041 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 103 )	
	TriggerAction( 1, AddNextFlag, 704, 20, 5 )
	RegCurTrigger( 7042 )

	
end
RobinMission024()


function RobinMission025()

--Приветствие портного
	DefineMission( 705, "Приветствие портного", 702, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Это было интересно. Я видела тебя, когда ты тут пробегал. Я <bБабушка Нила>, Портная города <pАргент>. С тех пор, как наставница Сенна зарекомендовала тебя, я хочу подарить тебе вот эти <Перчатки новичка> сделанные специально для тебя.<n><t>Теперь вернись к Наставнице - Сенне (2223, 2785).<n><t>(Нила дала тебе Перчатки новичка. Открой инвентарь и дважды кликни на них,чтобы одеть.)")
	MisResultCondition(NoRecord, 702)
	MisResultCondition(HasMission, 702)
	MisResultCondition(NoFlag, 702, 10)
	MisResultCondition(HasFlag, 702, 1)
	MisResultCondition(HasItem, 3951, 1)
	MisResultAction(TakeItem, 3951, 1)
	MisResultAction(SetFlag, 702, 10)
	MisResultAction(GiveItem, 465, 1, 4)
	MisResultBagNeed(1)
	
end
RobinMission025()

function RobinMission026()

-----------------------------------УВЖшЦ¤Кй
	DefineMission( 709, "Свидетельство храбрости", 705 )
	
	MisBeginTalk( "<t>Ты здесь ради Свидетельства храбрости? А ты смелый!<n><t>Но одной смелости будет мало, чтоб получить <rСвидетельство храбрости>, докажи что ты ловок и умен.<n><t>Иди на <pОкраины Аргента> и победи 10 <bМилых овечек> (2057, 2638), 10 <bПузырчатых моллюсков> на северном пляже, а также 10 <bСвинокрылов> и возвращайся ко мне.<n><t>Если сможешь всё это сделать, я посчитаю тебя достойным <bСвидетельства храбрости>." )
	MisBeginCondition(NoMission, 705)
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_FENCER )
	MisBeginAction(AddMission, 705)
	MisBeginAction(SetFlag, 705, 1)
	MisBeginAction(AddTrigger, 7051, TE_KILL, 237, 10 )
	MisBeginAction(AddTrigger, 7052, TE_KILL, 213, 10 )
	MisBeginAction(AddTrigger, 7053, TE_KILL, 125, 10 )
	MisCancelAction(ClearMission, 705)
	
	MisNeed(MIS_NEED_KILL, 237, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 213, 10, 20, 10)
	MisNeed(MIS_NEED_KILL, 125, 10, 30, 10)

	MisPrize(MIS_PRIZE_ITEM, 3953, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Дружище! Ты хорошо постарался! Вот твое <rСвидетельство храбрости>.<n><t>Храни его, а ко мне заглядывай по достижении <pУр 10>, и я сделаю из тебя настоящего Мечника.")
	MisHelpTalk("<t>Ты еще не выполнил моего задания. Оно не такое уж простое, да?")
	MisResultCondition(HasMission, 705)
	MisResultCondition(HasFlag, 705, 19 )
	MisResultCondition(HasFlag, 705, 29 )
	MisResultCondition(HasFlag, 705, 39 )
	MisResultAction(ClearMission, 705)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 237 )	
	TriggerAction( 1, AddNextFlag, 705, 10, 10 )
	RegCurTrigger( 7051 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 213 )	
	TriggerAction( 1, AddNextFlag, 705, 20, 10 )
	RegCurTrigger( 7052 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 125 )	
	TriggerAction( 1, AddNextFlag, 705, 30, 10 )
	RegCurTrigger( 7053 )
------------------------
-- Получение 2 профессии
------------------------
--Кодекс Воителя
	DefineMission( 749, "Кодекс Воителя", 737 )

	MisBeginTalk( "<t>Из тебя вышел умелый Мечник. Но раз ты хочешь стать сильнее, становись <bВоителем>. Пройди соответствующее испытание.<n><t>В лесу, к западу от <pОбители радости>, обитают <rТолстокожие ящеры> (733,2697). Добудь с них 5 <yСкользких шкур ящера> и возвращайся ко мне." )
	MisBeginCondition(NoRecord, 737)
	MisBeginCondition(NoMission, 737)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 1 )
	MisBeginCondition(CheckConvertProfession, MIS_TWO_FENCER )
	MisBeginAction(AddMission, 737)
	MisBeginAction(AddTrigger, 7371, TE_GETITEM, 4474, 5 )
	MisCancelAction(ClearMission, 737)

	MisNeed(MIS_NEED_ITEM, 4474, 5, 20, 5)

	MisResultTalk("<t>Поздравляю!<n><t>Теперь ты полноправный <bВоительr>!<n><t>Новые приключения ждут тебя!")
	MisHelpTalk("<t>Мои требования высоки, но я верю, что ты справишься.")
	MisResultCondition(HasMission, 737)
	MisResultCondition(HasItem, 4474, 5 )
	MisResultAction(TakeItem, 4474, 5)
	MisResultAction(ClearMission, 737)
	MisResultAction(SetRecord, 737)
	MisResultAction(SetProfession, 9)
	MisResultAction(Starteffect , 366)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4474 )
	TriggerAction( 1, AddNextFlag, 737, 20, 5 )
	RegCurTrigger( 7371 )

------------------------
-- Получение 2 профессии
------------------------
--Мужество чемпиона
	DefineMission( 750, "Мужество чемпиона", 738 )

	MisBeginTalk( "<t>Хочешь стать <bЧемпионом>? Хорошо!<n><t>Принеси мне следующие вещи: <n><t>5 <yБольших камней> у <rСкальных големов> обитающих в <pАндийском лесу> (737,1718).<n><t>Таким образом ты докажешь, что сможешь стать великим Чемпионом." )
	MisBeginCondition(NoRecord, 738)
	MisBeginCondition(NoMission, 738)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 1 )
	MisBeginCondition(CheckConvertProfession, MIS_LARGE_FENCER )
	MisBeginAction(AddMission, 738)
	MisBeginAction(AddTrigger, 7381, TE_GETITEM, 4368, 5 )
	MisCancelAction(ClearMission, 738)

	MisNeed(MIS_NEED_ITEM, 4368, 5, 20, 5)

	MisResultTalk("<t>Поздравляю! Ты стал <bЧемпионом>!<n><t>Новые испытания ждут тебя!")
	MisHelpTalk("<t>Какие-то проблемы? У Чемпиона не должно быть проблем!")
	MisResultCondition(HasMission, 738)
	MisResultCondition(HasItem, 4368, 5 )
	MisResultAction(TakeItem, 4368, 5)
	MisResultAction(ClearMission, 738)
	MisResultAction(SetRecord, 738)
	MisResultAction(SetProfession, 8)
	MisResultAction(Starteffect , 366)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4368 )
	TriggerAction( 1, AddNextFlag, 738, 20, 5 )
	RegCurTrigger( 7381 )
end
RobinMission026()

function RobinMission027()

--Добро пожаловать
	DefineMission( 711, "Добро пожаловать!", 2, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

		
	MisResultTalk("<t>Ах!<n><t>Еще один новичок! Добро пожаловать! Ты можешь обращаться ко мне по любым вопросам, связанным с профессиями и характеристиками. Как только ты возмешь очередной уровень, ты можешь открыть окно своих характеристик (Alt+A) и распредилить очки Характеристик. Как только ты достигаешь очередного уровня у тебя становится больше очков Характеристик. У тебя есть 5 характеристик по которым ты можешь распределить очки. Сила - увеличивает наносимый урон для всех классов кроме Охотника и Стрелка. Точность - увеличивает шанс попадания у всех классов и наносимый урон для Охотников и Стрелков. Телосложение - увеличивает максимальное количество жизни и защиту от физического урона. Ловкость - увеличивает скорость атаки и шанс уклонения от физических атак. Дух - увеличивает количество Маны и скорость ее восстановления.")
	MisHelpTalk("<t>Без моей помощи ты можешь столкнуться с проблема в покорении мира")
	MisResultCondition(NoRecord, 2)
	MisResultCondition(HasMission, 2)
	--MisResultCondition(HasFlag, 706, 10)
	--MisResultCondition(HasFlag, 706, 20)
	MisResultAction(ClearMission, 2)
	MisResultAction(SetRecord, 2)
	MisResultAction(AddExp, 6, 6)

--Приветствие кузнеца
	DefineMission( 712, "Приветствие кузнеца", 707 )
	
	MisBeginTalk( "<t>Ты не сможешь выжить в нашем жестоком мире без оружия.<n><t>Отнеси это письмо кузнецу <pШайтана>, <bКовалю> (902, 3495). Я уверена, что он поможет.<n><t>Используй указатель (Alt + R), чтобы отыскать его." )
	MisBeginCondition(HasRecord, 2)
	MisBeginCondition(NoRecord, 707)
	MisBeginCondition(NoMission, 707)
	MisBeginAction(AddMission, 707)
	MisBeginAction(SetFlag, 707, 1)
	MisBeginAction(GiveItem, 3956, 1, 4)
	MisCancelAction(ClearMission, 707 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо  <bкузнецу - Ковалю> в <pШайтане> (902, 3495). Затем снова найдите Рислин (876, 3572)")
		
	MisResultTalk("<t>Ты уже встретился с <bКовалем>? Отлично. Всегда обращайся к нему, если тебе нужно хорошее оружие.")
	MisHelpTalk("<t>Запомни: письмо нужно отдать лично Ковалю! Его кузница находится на северо-восточной окраине Шайтана  (902, 3495).<n><t> Используй указатель (Alt + R), чтобы отыскать его.")
	MisResultCondition(NoRecord, 707)
	MisResultCondition(HasMission, 707)
	MisResultCondition(HasFlag, 707, 10)
	MisResultAction(ClearMission, 707)
	MisResultAction(SetRecord, 707)
	MisResultAction(AddExp, 9, 9 )


--Приветствие портного
	DefineMission( 714, "Приветствие портного", 708 )
	
	MisBeginTalk( "<t>Хорошо, а теперь найди портного. Письмо нужно передать портному <pШайтана> - <bМойе> (894,3602)" )
	MisBeginCondition(HasRecord, 707)
	MisBeginCondition(NoRecord, 708)
	MisBeginCondition(NoMission, 708)
	MisBeginAction(AddMission, 708)
	MisBeginAction(SetFlag, 708, 1)
	MisBeginAction(GiveItem, 3957, 1, 4)
	--MisCancelAction(ClearMission, 708 )
	MisCancelAction(SystemNotice, "Это задание не может быть отменено!" )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо <bПортному-  Мойе> в <pШайтане> (894, 3602) и вернитесь к Наставнице Рислин (876, 3572)")
		
	MisResultTalk("<t>Ох, это перчатки, которые <bМойа> дал тебе? Хорошие. Бережно храни их!")
	MisHelpTalk("<t>Поскорее передай письмо Мойе.<n><t>Он находится в (894, 3602). Отыщи его при помощи указателя.")
	MisResultCondition(NoRecord, 708)
	MisResultCondition(HasMission, 708)
	MisResultCondition(HasFlag, 708, 10)
	MisResultAction(ClearMission, 708)
	MisResultAction(SetRecord, 708)
	MisResultAction(AddExp, 21, 21 )

--Приветствие врача
	DefineMission( 716, "Приветствие врача", 709 )
	
	MisBeginTalk( "<t>Ладно, пора навестить <bврача - Шайлу> (903, 3646). Это - последнее письмо, так что поторопись." )
	MisBeginCondition(HasRecord, 708)
	MisBeginCondition(NoRecord, 709)
	MisBeginCondition(NoMission, 709)
	MisBeginAction(AddMission, 709)
	MisBeginAction(SetFlag, 709, 1)
	MisBeginAction(GiveItem, 3958, 1, 4)
	MisCancelAction(SystemNotice, "Это задание не может быть отменено!" )
	--MisCancelAction(ClearMission, 709 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо <bВрачу - Шайле> в <pШайтане> (903, 3646) и вернитесь к Наставнице - Рислин (876, 3572)")
		
	MisResultTalk("<t><rЯблоки> <bШайлы> не просто полезны для здоровья, они могут даже исцелить небольшое количество ОЗ.")
	MisHelpTalk("<t>Врач по имени Шайла находится недалеко отсюда. Найти ее можно возле фонтана города Шайтан (903, 3646).<n><t>Также для поиска можно использовать указатель.")
	MisResultCondition(NoRecord, 709)
	MisResultCondition(HasMission, 709)
	MisResultCondition(HasFlag, 709, 10)
	MisResultAction(ClearMission, 709)
	MisResultAction(SetRecord, 709)
	MisResultAction(AddExp, 66, 66 )

--Боевое распределение
	DefineMission( 718, "Боевое распределение", 710 )
	
	MisBeginTalk( "Ну что же, совсем неплохо! Теперь у тебя есть снаряжение, и пора выбраться из города на разведку.<n><t>Убей 5 <bСкорпионышей> в пустыне возле города. И пока ты там, пожалуйста, добудь 1 <rПобег Кактуса> с убитых <bЗлободынь>. И конечно же, не забывай о собственной безопасности!<n><t>(Начать бой можно простым нажатием ЛКМ на противника. В городах и прочих мирных зонах сражения запрещены. Для подбора предмета нажмите на него ЛКМ или используйте Ctrl+A для сбора всех ближайших предметов." )
	MisBeginCondition(HasRecord, 709)
	MisBeginCondition(NoRecord, 710)
	MisBeginCondition(NoMission, 710)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 10 )
	MisBeginAction(AddMission, 710)
	MisBeginAction(SetFlag, 710, 1)
	MisBeginAction(AddTrigger, 7101, TE_GETITEM, 1691, 1 )
	MisBeginAction(AddTrigger, 7102, TE_KILL, 188, 5 )
	MisCancelAction(ClearMission, 710)

	MisNeed(MIS_NEED_ITEM, 1691, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 188, 5, 20, 5)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Отлично! Похоже, ты уловил основы боя и подбора предметов.<n><t>Раз уж я научила тебя всему что нужно, почему бы тебе не вернуть должок? Помоги моему другу <bМайклу>. Он сейчас в патруле на окраинах города (2085, 2742). Если хочешь, вместо этого сходи к доктору <bШайле> (2250, 2770). В последнее время она не скупится на найм помощников в сборе лекарственных ингридиентов.")
	MisHelpTalk("<t>Не задумывайся, просто убей 5 <bСкорпионышей> и раздобудь 1 <rПобег Кактуса>.")
	MisResultCondition(NoRecord, 710)
	MisResultCondition(HasMission, 710)
	MisResultCondition(HasItem, 1691, 1)
	MisResultCondition(HasFlag, 710, 24)
	MisResultAction(TakeItem, 1691, 1)
	MisResultAction(ClearMission, 710)
	MisResultAction(SetRecord, 710)
	MisResultAction(AddExp, 75, 75 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1691 )	
	TriggerAction( 1, AddNextFlag, 710, 10, 1 )
	RegCurTrigger( 7101 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 188 )	
	TriggerAction( 1, AddNextFlag, 710, 20, 5 )
	RegCurTrigger( 7102 )


end
RobinMission027()

function RobinMission028()

--Приветствие портного
	DefineMission( 715, "Приветствие портного", 708, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Кеке!<n><t>Это рекомендательное письмо от Реслин. <n><t>Хорошо, эти перчатки для тебя.<n><t>Теперь пойди в магазин и купи себе посох.<n><t>Теперь вернись к Реслин по координатам (876, 3572). Она тебя познакомит с другими<n><t>(Портниха дала тебе перчатки новичка, нажми на инвентарь,для того чтобы одеть их).")
	MisResultCondition(NoRecord, 708)
	MisResultCondition(HasMission, 708)
	MisResultCondition(NoFlag, 708, 10)
	MisResultCondition(HasItem, 3957, 1)
	MisResultAction(TakeItem, 3957, 1)
	MisResultAction(SetFlag, 708, 10)
	MisResultAction(GiveItem, 465, 1, 4)
	MisResultBagNeed(1)
	
end
RobinMission028()


function RobinMission030()

--Добро пожаловать!
	DefineMission( 721, "Добро пожаловать!", 3, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Ах!<n><t>Еще один новичок! Добро пожаловать! Ты можешь обращаться ко мне по любым вопросам, связанным с профессиями и характеристиками. Как только ты возмешь очередной уровень, ты можешь открыть окно своих характеристик (Alt+A) и распредилить очки Характеристик. Как только ты достигаешь очередного уровня у тебя становится больше очков Характеристик. У тебя есть 5 характеристик по которым ты можешь распределить очки. Сила - увеличивает наносимый урон для всех классов кроме Охотника и Стрелка. Точность - увеличивает шанс попадания у всех классов и наносимый урон для Охотников и Стрелков. Телосложение - увеличивает максимальное количество жизни и защиту от физического урона. Ловкость - увеличивает скорость атаки и шанс уклонения от физических атак. Дух - увеличивает количество Маны и скорость ее восстановления.")
	MisHelpTalk("<t>Привет! Я всего лишь Наставница Новичков в этом городе. Обращайся ко мне, когда почувствуешь необходимость, чтобы понять основные аспекты игры. <n>Тебе будет сложно выжить без посторонней помощи.")
	MisResultCondition(NoRecord, 3)
	MisResultCondition(HasMission, 3)
	--MisResultCondition(HasFlag, 712, 10)
	--MisResultCondition(HasFlag, 712, 20)
	MisResultAction(ClearMission, 3)
	MisResultAction(SetRecord, 3)
	MisResultAction(AddExp, 6, 6)


--Приветствие кузнеца
	DefineMission( 722, "Приветствие кузнеца", 713 )
	
	MisBeginTalk( "<t>Ты не сможешь выжить в этом жестоком мире без оружия. Отнеси это письмо кузнецу <pЛедыни> - <bБашу> (1344, 529). Уверена, он поможет.<n><t>Используй указатель (Alt + R), чтобы дойти до него. " )
	MisBeginCondition(HasRecord, 3)
	MisBeginCondition(NoRecord, 713)
	MisBeginCondition(NoMission, 713)
	MisBeginAction(AddMission, 713)
	MisBeginAction(SetFlag, 713, 1)
	MisBeginAction(GiveItem, 3959, 1, 4)
	MisCancelAction(ClearMission, 713 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо <bКузнецу - Башу> в <pЛедыни> (1344, 529). После этого вернитесь к Наставнице Анжеле (1315, 507).")
		
	MisResultTalk("<t>Ты уже виделся с <bБашем>? Он просил тебя найти ему подружку, потому что ему одиноко?")
	MisHelpTalk("<t>Не забудь отдать письмо <bБашу>. Его можно найти на юго-востоке <pЛедыни> (1344, 529).<n><t> Или просто используй мини-карту для его поисков.")
	MisResultCondition(NoRecord, 713)
	MisResultCondition(HasMission, 713)
	MisResultCondition(HasFlag, 713, 10)
	MisResultAction(ClearMission, 713)
	MisResultAction(SetRecord, 713)
	MisResultAction(AddExp, 9, 9 )


--Приветствие портного
	DefineMission( 724, "Приветствие портного", 714 )
	
	MisBeginTalk( "<t>Вот еще одно письмо. Передай его <pХанне> (1349, 539), владелице мастерской пошива в Замке Ледыни. Она с радостью тебе поможет." )
	MisBeginCondition(HasRecord, 713)
	MisBeginCondition(NoRecord, 714)
	MisBeginCondition(NoMission, 714)
	MisBeginAction(AddMission, 714)
	MisBeginAction(SetFlag, 714, 1)
	MisBeginAction(GiveItem, 3960, 1, 4)
	MisCancelAction(SystemNotice, "Это задание не может быть отменено!" )
	--MisCancelAction(ClearMission, 714 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо <bПортному - Ханне> в <pЛедыни> (1349, 539). Затем вернитесь к Анжеле (1315, 507)")
		
	MisResultTalk("<t><bХанна> дала тебе перчатки? Хорошо сидят на тебе. Береги их.")
	MisHelpTalk("<t>Письмо нужно передать <bХанне> сегодня.<n><t>Ее можно найти в юго-восточной оконечности <pЗамка Ледыни> (1349, 530). Найди это место при помощи мини-карты.")
	MisResultCondition(NoRecord, 714)
	MisResultCondition(HasMission, 714)
	MisResultCondition(HasFlag, 714, 10)
	MisResultAction(ClearMission, 714)
	MisResultAction(SetRecord, 714)
	MisResultAction(AddExp, 21, 21 )

--Приветствие врача
	DefineMission( 726, "Приветствие врача", 715 )
	
	MisBeginTalk( "<t>Запомни, наконец! Зелья очень важны в бою! Отнеси письмо врачу <pЛедыни> - <bДайше> (1352, 499)." )
	MisBeginCondition(HasRecord, 714)
	MisBeginCondition(NoRecord, 715)
	MisBeginCondition(NoMission, 715)
	MisBeginAction(AddMission, 715)
	MisBeginAction(SetFlag, 715, 1)
	MisBeginAction(GiveItem, 3961, 1, 4)
	MisCancelAction(SystemNotice, "Это задание не может быть отменено!" )
	--MisCancelAction(ClearMission, 715 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо <bврачу - Дайше> в <pЛедыни> (1352, 499). Затем вернитесь к наставнице Анжеле (1315, 507).")
		
	MisResultTalk("<t>Эй, <bДайша> дал тебе <rЯблоки>.<n><t>Поедание <rЯблок> полезно, это восстановит немного ОЗ.")
	MisHelpTalk("<t>Дайша находится возле фонтана в <pЗамке Ледыни> (1352, 499). Используйте мини-карту, чтоб найти его.")
	MisResultCondition(NoRecord, 715)
	MisResultCondition(HasMission, 715)
	MisResultCondition(HasFlag, 715, 10)
	MisResultAction(ClearMission, 715)
	MisResultAction(SetRecord, 715)
	MisResultAction(AddExp, 66, 66 )


--Боевое распределение
	DefineMission( 728, "Боевое распределение", 716 )
	
	MisBeginTalk( "<t>Хм, неплохо.<n><t>Твоя подготовка завершилась, и пора приступить к делу. Выйди из города и убей 5 <Снежных кальмарчиков>.<n><t>И кстати, найди для меня особое семечко. Снежные кальмарчики обитают к югу от ворот Ледыни, а семечко можно найти, срубая Снежные таинственные цветки. Найди меня, когда всё сделаешь!<n><t>(Вы можете начать бой по клику ЛКМ на противнике. В городах и прочих мирных зонах сражаться запрещено. Предметы подбираются либо кликом ЛКМ на них, либо комбинацией CTRL + A, что подберет все предметы вокруг." )
	MisBeginCondition(HasRecord, 715)
	MisBeginCondition(NoRecord, 716)
	MisBeginCondition(NoMission, 716)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 10 )
	MisBeginAction(AddMission, 716)
	MisBeginAction(AddTrigger, 7161, TE_GETITEM, 1597, 1 )
	MisBeginAction(AddTrigger, 7162, TE_KILL, 234, 5 )
	MisBeginAction(SetFlag, 716, 1)
	MisCancelAction(ClearMission, 716)
	
	MisNeed(MIS_NEED_ITEM, 1597, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 234, 5, 20, 5)


	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Отлично, ты усвоил основы боя и подбирания предметов.")
	MisHelpTalk("<t>Запомни! Победить 5 Снежных кальмарчиков и собрать 1 семечко!")
	MisResultCondition(NoRecord, 716)
	MisResultCondition(HasMission, 716)
	MisResultCondition(HasItem, 1597, 1)
	MisResultCondition(HasFlag, 716, 24)
	MisResultAction(TakeItem, 1597, 1)
	MisResultAction(ClearMission, 716)
	MisResultAction(SetRecord, 716 )
	MisResultAction(AddExp, 75, 75 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1597 )	
	TriggerAction( 1, AddNextFlag, 716, 10, 1 )
	RegCurTrigger( 7161 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 234 )	
	TriggerAction( 1, AddNextFlag, 716, 20, 5 )
	RegCurTrigger( 7162 )


	
end
RobinMission030()


function RobinMission031()

--Приветствие кузнеца
	DefineMission( 723, "Приветствие кузнеца", 713, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Я смотрю ты здесь новенький? Я <bБаш>, кузнец города <pЛедынь>.Я изготовляю хорошее оружие.<n><t>Вернись к Анжеле по координатам (1315, 507). Она тебя представить другому человеку.<n><t>(Баш дал тебе Меч новичка. Открой рюкзак и нажми на него 2 раза, чтобы одеть его.)")
	MisResultCondition(NoRecord, 713)
	MisResultCondition(HasMission, 713)
	MisResultCondition(NoFlag, 713, 10)
	MisResultCondition(HasItem, 3959, 1)
	MisResultAction(TakeItem, 3959, 1)
	MisResultAction(SetFlag, 713, 10)
	MisResultBagNeed(1)

end
RobinMission031()

function RobinMission032()

--Приветствие портного
	DefineMission( 725, "Приветствие портного", 714, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Ты новичек здесь? Добро пожаловать в <pЛедынь>. Я портной, <bХанах>. Спасибо за письмо, Возьми пожалуйста эти перчатки,я сделал их для тебя. Не забудь вернутся к <rНаставнице><bАнжеле> по координатам (1315, 507), и скажи что я получил письмо.<n><t>(Ханах дал тебе  Перчатки новичка. Открой инвентарь и нажми на них 2 раза, чтобы их одеть.)")
	MisResultCondition(NoRecord, 714)
	MisResultCondition(HasMission, 714)
	MisResultCondition(NoFlag, 714, 10)
	MisResultCondition(HasItem, 3960, 1)
	MisResultAction(TakeItem, 3960, 1)
	MisResultAction(SetFlag, 714, 10)
	MisResultAction(GiveItem, 465, 1, 4)
	MisResultBagNeed(1)
	
end
RobinMission032()

function RobinMission033()

--Приветствие врача
	DefineMission( 727, "Приветствие врача", 715, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Ты новичек здесь? Добро пожаловать! Возьми эти <rЯблоки>, я их сам делал! Я думаю они тебе пригодятся.<n><t>А теперь вернись к Анжеле (1315, 507).<n><t>(Дайша дала тебе Яблоки. Помести их на F1 - F8 для быстрого использования.)")
	MisResultCondition(NoRecord, 715)
	MisResultCondition(HasMission, 715)
	MisResultCondition(NoFlag, 715, 10)
	MisResultCondition(HasItem, 3961, 1)
	MisResultAction(TakeItem, 3961, 1)
	MisResultAction(SetFlag, 715, 10)
	MisResultAction(GiveItem, 1847, 99, 4)
	MisResultBagNeed(1)

--Привычка сборщика
	DefineMission( 735, "Привычка сборщика", 723 )

	MisBeginTalk( "<t>Недавно я осматривал свою коллекцию и заметил, что у меня нет <rЩупалец осьминога>.<n><t>Найди мне 5 <rЩупалец осьминога>, они имеются у <bСнегоплюев> за городскими воротами." )
	MisBeginCondition(NoMission, 723)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 723)
	MisBeginAction(SetFlag, 723, 1)
	MisBeginAction(AddTrigger, 7231, TE_GETITEM, 1704, 5 )
	MisCancelAction(ClearMission, 723)

	MisNeed(MIS_NEED_ITEM, 1704, 5, 10, 5)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Отличное пополнение моей коллекции.<n><t>Спасибо!")
	MisHelpTalk("<t>В чем задержа? Заблудился? Всего-то нужно дойти до ворот.")
	MisResultCondition(HasMission, 723)
	MisResultCondition(HasItem, 1704, 5 )
	MisResultAction(TakeItem, 1704, 5 )
	MisResultAction(AddExp, 40, 70)
	MisResultAction(ClearMission, 723)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1704)	
	TriggerAction( 1, AddNextFlag, 723, 10, 5 )
	RegCurTrigger( 7231 )

--Привычка сборщика
	DefineMission( 746, "Привычка сборщика", 734 )

	MisBeginTalk( "<t>Я только что выяснил, что в моей коллекции нет ни одной увядшей веточки! Это ужасно. Сходи, пожалуйста, в (1179, 475) и добудь для меня 5 <yУвядших веток> из <bСнежных кальмарчиков>. И давай-ка побыстрее, я не в духе давать тебе задания, пока моя коллекция несовершенна!" )
	MisBeginCondition(NoMission, 734)
	MisBeginCondition(NoMission, 723)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 734)
	MisBeginAction(SetFlag, 734, 1)
	MisBeginAction(AddTrigger, 7341, TE_GETITEM, 3372, 5 )
	MisCancelAction(ClearMission, 734)

	MisNeed(MIS_NEED_ITEM, 3372, 5, 10, 5)

	MisPrize(MIS_PRIZE_MONEY, 200, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Хохо. Теперь моя коллекция прекрасна.")
	MisHelpTalk("<t>Ну что же ты...<n><t>Всего одна Увядшая ветка! Не можешь даже с этим справиться? Они же в паре шагов отсюда!")
	MisResultCondition(HasMission, 734)
	MisResultCondition(HasItem, 3372, 5 )
	MisResultAction(TakeItem, 3372, 5 )
	MisResultAction(AddExp, 70, 95)
	MisResultAction(ClearMission, 734)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 3372)	
	TriggerAction( 1, AddNextFlag, 734, 10, 5 )
	RegCurTrigger( 7341 )


--Привычка сборщика
	DefineMission( 747, "Привычка сборщика", 735 )

	MisBeginTalk( "<t>Моя коллекция стала значительно больше, и новые экспонаты просто негде хранить! Поможешь с этим? Отправляйся в (1179, 371) добудь 5 <yФлаконов> у <bСнежных свинокрылов>. И не забудь взять с собой целебных зелий, они тебе пригодятся." )
	MisBeginCondition(NoMission, 735)
	MisBeginCondition(NoMission, 734)
	MisBeginCondition(NoMission, 723)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 735)
	MisBeginAction(SetFlag, 735, 1)
	MisBeginAction(AddTrigger, 7351, TE_GETITEM, 1779, 5 )
	MisCancelAction(ClearMission, 735)

	MisNeed(MIS_NEED_ITEM, 1779, 5, 10, 5)

	MisPrize(MIS_PRIZE_MONEY, 300, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Хехе! <n><t>Теперь у меня есть флаконы, в которых можно хранить экспонаты. Хаха, как же я счастлив!")
	MisHelpTalk("<t>Нужна всего пара флаконов, иди же!")
	MisResultCondition(HasMission, 735)
	MisResultCondition(HasItem, 1779, 5 )
	MisResultAction(TakeItem, 1779, 5 )
	MisResultAction(AddExp, 95, 125)
	MisResultAction(ClearMission, 735)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1779)	
	TriggerAction( 1, AddNextFlag, 735, 10, 5 )
	RegCurTrigger( 7351 )



end
RobinMission033()


function RobinMission034()

--Руководство охотника
	DefineMission( 729, "Руководство охотника", 717 )
	
	MisBeginTalk( "<t>Ты здесь ради Руководства охотника? А ты смелый.<n><t>Но одной смелости мало, чтобы заслужить <rРуководство>. Докажи, что ты к тому же ловок и вынослив.<n><t>Отправляйся в <pЛедынь> и поймай 10 <bОленят> (1164, 305) и 10 <bБелых оленят> (1325, 305).<n><t>А также ты должен найти <rСок эльфийского фрукта>.<n><t>Поскольку охотники подолгу находятся вне цивилизации, исцеляющие средства просто необходимы.<n><t>Выполни это поручение, и я буду считать тебя достойным охотником." )
	MisBeginCondition(NoMission, 717)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_HUNTER )
	MisBeginAction(AddMission, 717)
	MisBeginAction(SetFlag, 717, 1)
	MisBeginAction(AddTrigger, 7171, TE_KILL, 240, 10 )
	MisBeginAction(AddTrigger, 7172, TE_GETITEM, 3122, 1 )
	MisBeginAction(AddTrigger, 7173, TE_KILL, 238, 10 )
	MisCancelAction(ClearMission, 717)

	
	MisNeed(MIS_NEED_KILL, 240, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 3122, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 238, 10, 30, 10)

	MisPrize(MIS_PRIZE_ITEM, 3955, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Дружище, ты справился!<n><t>Ты прошел испытание. Вот твое <rРуководство охотника>.<n><t>Храни его. А как достигнешь <pУр 10>, возвращайся ко мне.")
	MisHelpTalk("<t>Ты еще не выполнил задание! Стать охотником не так уж легко.")
	MisResultCondition(HasMission, 717)
	MisResultCondition(HasItem, 3122, 1 )
	MisResultCondition(HasFlag, 717, 19 )
	MisResultCondition(HasFlag, 717, 39 )
	MisResultAction(TakeItem, 3122, 1)
	MisResultAction(ClearMission, 717)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 240 )	
	TriggerAction( 1, AddNextFlag, 717, 10, 10 )
	RegCurTrigger( 7171 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3122 )	
	TriggerAction( 1, AddNextFlag, 717, 20, 1 )
	RegCurTrigger( 7172 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 238 )	
	TriggerAction( 1, AddNextFlag, 717, 30, 10 )
	RegCurTrigger( 7173 )

------------------------
-- Получение 2 профессии
------------------------
--Стрельбище
	DefineMission( 757, "Стрельбище", 741 )

	MisBeginTalk( "<t>Стать <bСтрелком> просто.<n><t>Убей 10 <pСкелетов-лучников> и принеси 5 <yСтарых колчанов>.<n><t>Найти <rСкелетов-лучников> можно в <pЛедяном шипе> (2267,470)" )
	MisBeginCondition(NoRecord, 741)
	MisBeginCondition(NoMission, 741)
	MisBeginCondition(LvCheck, ">", 39 )
	MisBeginCondition(PfEqual, 2 )
	MisBeginCondition(CheckConvertProfession, MIS_GUNMAN )
	MisBeginAction(AddMission, 741)
	MisBeginAction(AddTrigger, 7411, TE_KILL, 269, 10 )
--	MisBeginAction(AddTrigger, 7412, TE_KILL, 243, 10 )
	MisBeginAction(AddTrigger, 7413, TE_GETITEM, 4362, 5 )
--	MisBeginAction(AddTrigger, 7414, TE_GETITEM, 4367, 5 )
	MisCancelAction(ClearMission, 741)
	
	MisNeed(MIS_NEED_KILL, 269, 10, 10, 10)
--	MisNeed(MIS_NEED_KILL, 243, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 4362, 5, 30, 5)
--	MisNeed(MIS_NEED_ITEM, 4367, 5, 40, 5)

	MisResultTalk("<t>Поздравляю! Ты теперь <bСтрелок>!<n><t>Помни! Ключ к победе-это оставаться спокойным при любых обстоятельствах.")
	MisHelpTalk("<t>Почему? Нет уверенности в себе? Слабак!")
	MisResultCondition(HasMission, 741)
	MisResultCondition(HasFlag, 741, 19 )
--	MisResultCondition(HasFlag, 741, 29 )
	MisResultCondition(HasItem, 4362, 5 )
--	MisResultCondition(HasItem, 4367, 5 )
	MisResultAction(TakeItem, 4362, 5)
--	MisResultAction(TakeItem, 4367, 5)
	MisResultAction(ClearMission, 741)
	MisResultAction(SetRecord, 741)
	MisResultAction(SetProfession, 12)
	MisResultAction(Starteffect , 366)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 269 )
	TriggerAction( 1, AddNextFlag, 741, 10, 10 )
	RegCurTrigger( 7411 )

--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 243 )
--	TriggerAction( 1, AddNextFlag, 741, 20, 10 )
--	RegCurTrigger( 7412 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4362 )
	TriggerAction( 1, AddNextFlag, 741, 30, 5 )
	RegCurTrigger( 7413 )

--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4367 )
--	TriggerAction( 1, AddNextFlag, 741, 30, 5 )
--	RegCurTrigger( 7414 )
end
RobinMission034()

function RobinMission035()

--Чрезвычайная ситуация
	DefineMission( 730, "Чрезвычайная ситуация", 718 )

	MisBeginTalk( "<t>Здесь становится опасно! Отсюда поступали сообщения о целом нашествии <bПчелок>. Многих уже ужалили, нам нужна твоя помощь! Будь добр, убей 10 <bПчелок>?<n><t>Не бесплатно, конечно." )
	MisBeginCondition(NoMission, 718)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 718)
	MisBeginAction(SetFlag, 718, 1)
	MisBeginAction(AddTrigger, 7181, TE_KILL, 206, 10 )
	MisCancelAction(ClearMission, 718)
	
	MisNeed(MIS_NEED_KILL, 206, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 50, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Вот здорово! Ты настоящий друг. Благодаря тебе, мне не придется снова драить туалеты за весь батальон!")
	MisHelpTalk("<t>Что не так? Это всего лишь десяток Пчелок! Ты сможешь! Вперед!")
	MisResultCondition(HasMission, 718)
	MisResultCondition(HasFlag, 718, 19 )
	MisResultAction(AddExp, 75, 125)
	MisResultAction(ClearMission, 718)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 206 )	
	TriggerAction( 1, AddNextFlag, 718, 10, 10 )
	RegCurTrigger( 7181 )

--Популяция грибов
	DefineMission( 736, "Популяция грибов", 724 )

	MisBeginTalk( "<t>Я не знаю, из-за чего <bГрибов-Жадобцов> за пределами города стало так много, но они выходят из-под контроля. Несмотря на то, что грибной суп - мой любимый, я не горю желанием рисковать жизнью в бою с ними.<n><t>Здесь у меня мало людей, поэтому я вынужден попросить тебя пойти в (2220, 2564) и истребить 8 <bГрибов-жадобцов>. Пожалуйста, помоги! Я не могу заниматься другими делами, пока не окончено это." )
	MisBeginCondition(NoMission, 724)
	MisBeginCondition(NoMission, 718)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 724)
	MisBeginAction(SetFlag, 724, 1)
	MisBeginAction(AddTrigger, 7241, TE_KILL, 184, 15 )
	MisCancelAction(ClearMission, 724)
	
	MisNeed(MIS_NEED_KILL, 184, 15, 10, 15)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Уже всё?<n><t>Ты отлично поработал! Я перехожу к другим задачам, а тебе спасибо.")
	MisHelpTalk("<t>Это всего лишь 15 Жадобцов!<n><t>Все теперь зависит от тебя!")
	MisResultCondition(HasMission, 724)
	MisResultCondition(HasFlag, 724, 24 )
	MisResultAction(AddExp, 125, 175)
	MisResultAction(ClearMission, 724)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 184 )	
	TriggerAction( 1, AddNextFlag, 724, 10, 15 )
	RegCurTrigger( 7241 )


--Сохранение
	DefineMission( 737, "Сохранение", 725 )

	MisBeginTalk( "<t>Ты мог заметить, что количество зеленой травы вокруг Аргента значительно сократилось. Я слышал от капитана, что всему виной неуемный аппетит <bТравяных черепах. Пожалуйста, убей 10 из них в области вокруг точки (2057, 2564).<n><t>Я награжу тебя, конечно же. А теперь послушай моего совета. Эти черепахи может и неспешны, но хорошо защищены. Впрочем, для твоего уровня они не станут большой проблемой." )
	MisBeginCondition(NoMission, 725)
	MisBeginCondition(NoMission, 724)
	MisBeginCondition(NoMission, 718)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 725)
	MisBeginAction(SetFlag, 725, 1)
	MisBeginAction(AddTrigger, 7251, TE_KILL, 119, 10 )
	MisCancelAction(ClearMission, 725)
	
	MisNeed(MIS_NEED_KILL, 119, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 150, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Закончил?<n><t>Отлично! Хоть мне и жаль бедных черепах, но наши жизни важнее...")
	MisHelpTalk("<t>Как дела? Убей поскорее 10 черепах!<n><t>Ты найдешь их в точке (2057, 2564).")
	MisResultCondition(HasMission, 725)
	MisResultCondition(HasFlag, 725, 19 )
	MisResultAction(AddExp, 175, 250)
	MisResultAction(ClearMission, 725)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 119 )	
	TriggerAction( 1, AddNextFlag, 725, 10, 10 )
	RegCurTrigger( 7251 )

	
end
RobinMission035()


function RobinMission036()

--Приветствие врача
	DefineMission( 717, "Приветствие врача", 709, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Я вижу ты здесь новенький? Небойся я всё расскажу тебе про Шайтан! Я доктор Шала. Возьми <rЯблоки>, кстате ты их всегда можешь купить в любое время.<n><t>Теперь вернись к Реслин она находиться (876, 3572).<n><t>(Шала дала тебе немного Яблок. Перенеси их на горячие клавиши,чтобы быстро использовать на F1-F8.)")
	MisResultCondition(NoRecord, 709)
	MisResultCondition(HasMission, 709)
	MisResultCondition(NoFlag, 709, 10)
	MisResultCondition(HasItem, 3958, 1)
	MisResultAction(TakeItem, 3958, 1)
	MisResultAction(SetFlag, 709, 10)
	MisResultAction(GiveItem, 1847, 99, 4)
	MisResultBagNeed(1)

--Эксперимент по прививке	
	DefineMission( 734, "Эксперимент по прививке", 722 )

	MisBeginTalk( "<t>Хочешь увидеть, как цветет кактус? Я хочу заставить его цвести, поэтому мне нужны 5 <rПобегов кактуса> и 5 <rСемян>.<n><t>Их можно найти у Злободынь и Волшебных кустов." )
	MisBeginCondition(NoMission, 722)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 722)
	MisBeginAction(SetFlag, 722, 1)
	MisBeginAction(AddTrigger, 7221, TE_GETITEM, 1691, 5 )
	MisBeginAction(AddTrigger, 7222, TE_GETITEM, 1597, 5 )
	MisCancelAction(ClearMission, 722)

	MisNeed(MIS_NEED_ITEM, 1691, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1597, 5, 20, 5)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Отлично! Теперь я начну свой эксперимент. Возвращайся через год, посмотришь на результат!")
	MisHelpTalk("<t>Ты все еще не достал нужные предметы? Нужны 5 <rПобегов кактуса> и 5 <rСемян>.")
	MisResultCondition(HasMission, 722)
	MisResultCondition(HasItem, 1691, 5 )
	MisResultCondition(HasItem, 1597, 5 )
	MisResultAction(TakeItem, 1691, 5 )
	MisResultAction(TakeItem, 1597, 5 )
	MisResultAction(AddExp, 40, 70)
	MisResultAction(ClearMission, 722)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1691)	
	TriggerAction( 1, AddNextFlag, 722, 10, 5 )
	RegCurTrigger( 7221 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1597)	
	TriggerAction( 1, AddNextFlag, 722, 20, 5 )
	RegCurTrigger( 7222 )


--Розыгрыш	
	DefineMission( 744, "Розыгрыш", 732 )

	MisBeginTalk( "<t>Слушай, тут такое дело: последнее время врач Ледыни собирает пот животных. Я хочу подшутить над ним и мне нужны материалы для этого.<n><t>Помоги мне раздобыть 5 склянок <rГрязной воды> и 5 <rСтаканов>. Их можно найти у <bСкорпионышей>  (1184, 3557). Считай это моей особой просьбой, хаха!" )
	MisBeginCondition(NoMission, 732)
	MisBeginCondition(NoMission, 722)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 732)
	MisBeginAction(SetFlag, 732, 1)
	MisBeginAction(AddTrigger, 7321, TE_GETITEM, 1648, 5 )
	MisBeginAction(AddTrigger, 7322, TE_GETITEM, 1777, 2 )
	MisCancelAction(ClearMission, 732)

	MisNeed(MIS_NEED_ITEM, 1648, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1777, 2, 20, 2)

	MisPrize(MIS_PRIZE_MONEY, 200, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Хаха! Отлично! Теперь я точно его одурачу.")
	MisHelpTalk("<t>Не может быть! Всё еще не нашел! Поторопись, будь добр!")
	MisResultCondition(HasMission, 732)
	MisResultCondition(HasItem, 1648, 5 )
	MisResultCondition(HasItem, 1777, 2 )
	MisResultAction(TakeItem, 1648, 5 )
	MisResultAction(TakeItem, 1777, 2 )
	MisResultAction(AddExp, 70, 95)
	MisResultAction(ClearMission, 732)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1648)	
	TriggerAction( 1, AddNextFlag, 732, 10, 5 )
	RegCurTrigger( 7321 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1777)	
	TriggerAction( 1, AddNextFlag, 732, 20, 2 )
	RegCurTrigger( 7322 )


--Сбор трав	
	DefineMission( 745, "Сбор трав", 733 )

	MisBeginTalk( "<t>На этот раз мне нужны несколько целебных трав, два очень редких вида. Пожалуйста, найди 5 <rЦветков кактуса> и 2 <rКрасных финика>. Они совершенно точно растут на <bКактусах>, обитающих в районе (1031, 3556). Ты должен справиться с ними без особых проблем.<n><t>И да! Врач Ледыни легко поддался моему розыгрышу, было очень забавно наблюдать за ним!" )
	MisBeginCondition(NoMission, 733)
	MisBeginCondition(NoMission, 732)
	MisBeginCondition(NoMission, 722)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 733)
	MisBeginAction(SetFlag, 733, 1)
	MisBeginAction(AddTrigger, 7331, TE_GETITEM, 1692, 5 )
	MisBeginAction(AddTrigger, 7332, TE_GETITEM, 3117, 2 )
	MisCancelAction(ClearMission, 733)

	MisNeed(MIS_NEED_ITEM, 1692, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3117, 2, 20, 2)

	MisPrize(MIS_PRIZE_MONEY, 300, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Я должна сказать 'спасибо'. Теперь можно начать смешивание.")
	MisHelpTalk("<t>Мне всего-то нужна парочка ингридиентов! Не подведи меня!")
	MisResultCondition(HasMission, 733)
	MisResultCondition(HasItem, 1692, 5 )
	MisResultCondition(HasItem, 3117, 2 )
	MisResultAction(TakeItem, 1692, 5 )
	MisResultAction(TakeItem, 3117, 2 )
	MisResultAction(AddExp, 95, 125)
	MisResultAction(ClearMission, 733)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1692)	
	TriggerAction( 1, AddNextFlag, 733, 10, 5 )
	RegCurTrigger( 7331 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3117)	
	TriggerAction( 1, AddNextFlag, 733, 20, 2 )
	RegCurTrigger( 7332 )


end
RobinMission036()


function RobinMission037()

--Вторжение кактусов
	DefineMission( 731, "Вторжение кактусов", 719 )

	MisBeginTalk( "<t>Ах! Окрестные барханы просто кишат Кактусами. В моем районе их просто огромное количество. Сделай одолжение, убей 15 <bКактусов> (1031, 3556), у тебя должно получиться." )
	MisBeginCondition(NoMission, 719)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 719)
	MisBeginAction(SetFlag, 719, 1)
	MisBeginAction(AddTrigger, 7191, TE_KILL, 95, 15 )
	MisCancelAction(ClearMission, 719)
	
	MisNeed(MIS_NEED_KILL, 95, 15, 10, 15)

	MisPrize(MIS_PRIZE_MONEY, 50, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Слава Богине! Ты сильно помог.")
	MisHelpTalk("<t>Что такое? 15 Кактусов не должны были стать проблемой для тебя.")
	MisResultCondition(HasMission, 719)
	MisResultCondition(HasFlag, 719, 24 )
	MisResultAction(AddExp, 75, 125)
	MisResultAction(ClearMission, 719)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 95 )	
	TriggerAction( 1, AddNextFlag, 719, 10, 15 )
	RegCurTrigger( 7191 )


--Лягающееся чудище
	DefineMission( 740, "Лягающееся чудище", 728 )

	MisBeginTalk( "<t>Многие жалуются, что их лягало какое-то чудище. Не обошлось и без травм! Я выяснил, что этим чудищем был <bГорбатый верблюд>. Не мог бы ты усмирить зверей? Убей 10 <bГорбатых верблюдов>, пожалуйста." )
	MisBeginCondition(NoMission, 728)
	MisBeginCondition(NoMission, 719)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 728)
	MisBeginAction(SetFlag, 728, 1)
	MisBeginAction(AddTrigger, 7281, TE_KILL, 48, 10 )
	MisCancelAction(ClearMission, 728)
	
	MisNeed(MIS_NEED_KILL, 48, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Замечательно. Жалоб больше быть не должно.<n><t>Эти верблюды совсем отбились от рук.")
	MisHelpTalk("<t>Что? Ты не смог преподать им урок? Пробуй еще.")
	MisResultCondition(HasMission, 728)
	MisResultCondition(HasFlag, 728, 19 )
	MisResultAction(AddExp, 125, 175)
	MisResultAction(ClearMission, 728)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 48)	
	TriggerAction( 1, AddNextFlag, 728, 10, 10 )
	RegCurTrigger( 7281 )
	
--Нашествие скорпионов
	DefineMission( 741, "Нашествие скорпионов", 729 )

	MisBeginTalk( "<t>Ох! Ты так вырос!<n><t>Теперь я могу дать тебе задание под стать возможностям.<n><t>Горбатые верблюды теперь почти не вредят людям, но теперь им угрожает другая напасть. Большие ядовитые скорпионы заполнили пустыню. Их жала могут быть смертельны, жуть!<n><t>Помоги мне убить 10 <Больших скорпионов>! Ты найдешь их в районе (1184, 3557). Опасайся их резких выпадов!" )
	MisBeginCondition(NoMission, 729)
	MisBeginCondition(NoMission, 728)
	MisBeginCondition(NoMission, 719)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 729)
	MisBeginAction(SetFlag, 729, 1)
	MisBeginAction(AddTrigger, 7291, TE_KILL, 247, 10 )
	MisCancelAction(ClearMission, 729)
	
	MisNeed(MIS_NEED_KILL, 247, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 150, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Хохо! Я не зря дал это задание именно тебе!")
	MisHelpTalk("<t>Что такое? Тебе не по силам эти скорпионы? Запасись зельями.")
	MisResultCondition(HasMission, 729)
	MisResultCondition(HasFlag, 729, 19 )
	MisResultAction(AddExp, 175, 250)
	MisResultAction(ClearMission, 729)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 247)	
	TriggerAction( 1, AddNextFlag, 729, 10, 10 )
	RegCurTrigger( 7291 )

end
RobinMission037()


function RobinMission038()

--Шаловливый кальмарчик
	DefineMission( 732, "Шаловливый кальмарчик", 720 )

	MisBeginTalk( "<t>В последнее время эти Снежные Кальмарчики совсем отбились от рук. Однажды они подстерегли меня за воротами Ледыни шутки ради!<n><t>Преподай им урок, убив 15 <bСнежных кальмарчиков>.<n><t>Тебе это будет несложно." )
	MisBeginCondition(NoMission, 720)
	MisBeginCondition(LvCheck, ">", 4 )
	MisBeginCondition(LvCheck, "<", 7 )
	MisBeginAction(AddMission, 720)
	MisBeginAction(SetFlag, 720, 1)
	MisBeginAction(AddTrigger, 7201, TE_KILL, 235, 15 )
	MisCancelAction(ClearMission, 720)
	
	MisNeed(MIS_NEED_KILL, 235, 15, 10, 15)

	MisPrize(MIS_PRIZE_MONEY, 50, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Спасибо. Теперь я могу расслабиться.")
	MisHelpTalk("<t>Что? Ты еще не закончил? Это не должно было стать проблемой.")
	MisResultCondition(HasMission, 720)
	MisResultCondition(HasFlag, 720, 24 )
	MisResultAction(AddExp, 75, 125)
	MisResultAction(ClearMission, 720)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 235 )	
	TriggerAction( 1, AddNextFlag, 720, 10, 15 )
	RegCurTrigger( 7201 )
	
--Лишним не будет
	DefineMission( 742, "Лишним не будет", 730 )

	MisBeginTalk( "<t>У жителей Ледыни настали тяжелые времена, и вот почему: <bСнежные свинокрылы> пожирают все наши запасы. Пожалуйста, отправляйся в район (1179, 371) и убей 10 <bСнежных свинокрылов>." )
	MisBeginCondition(NoMission, 730)
	MisBeginCondition(NoMission, 720)
	MisBeginCondition(LvCheck, ">", 6 )
	MisBeginCondition(LvCheck, "<", 8 )
	MisBeginAction(AddMission, 730)
	MisBeginAction(SetFlag, 730, 1)
	MisBeginAction(AddTrigger, 7301, TE_KILL, 239, 10 )
	MisCancelAction(ClearMission, 730)

	MisNeed(MIS_NEED_KILL, 239, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 100, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Все? Спасибо! У этих свинокрылов огромный аппетит. Может, и мне стоит почаще жарить свининку?")
	MisHelpTalk("<t>Что? Еще не все?")
	MisResultCondition(HasMission, 730)
	MisResultCondition(HasFlag, 730, 19 )
	MisResultAction(AddExp, 125, 175)
	MisResultAction(ClearMission, 730)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 239 )	
	TriggerAction( 1, AddNextFlag, 730, 10, 10 )
	RegCurTrigger( 7301 )

--Неудачная миграция
	DefineMission( 743, "Неудачная миграция", 731 )

	MisBeginTalk( "<t>Хохо, у меня хорошие новости! Похоже, что стая Оленят по ошибке мигрировала в Ледынь. В нашей сложной ситуации эта стая - просто дар Богини! Я прошу тебя поспешить в район (1164 ,305) и изловить 12 <bОленят>, чтобы запастись мясом." )
	MisBeginCondition(NoMission, 731)
	MisBeginCondition(NoMission, 720)
	MisBeginCondition(NoMission, 730)
	MisBeginCondition(LvCheck, ">", 7 )
	MisBeginCondition(LvCheck, "<", 9 )
	MisBeginAction(AddMission, 731)
	MisBeginAction(SetFlag, 731, 1)
	MisBeginAction(AddTrigger, 7311, TE_KILL, 238, 10 )
	MisCancelAction(ClearMission, 731)
	
	MisNeed(MIS_NEED_KILL, 238, 10, 10, 10)

	MisPrize(MIS_PRIZE_MONEY, 150, 1)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Хорошо! Ты справился!<n><t>Я отложу все дела ради этой оленины! Хехе...")
	MisHelpTalk("<t>Что такое? Даже эти малыши тебе не по зубам? Быстрее!<n><t>Я уже приготовил посуду!")
	MisResultCondition(HasMission, 731)
	MisResultCondition(HasFlag, 731, 19 )
	MisResultAction(AddExp, 175, 250)
	MisResultAction(ClearMission, 731)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 238 )	
	TriggerAction( 1, AddNextFlag, 731, 10, 10 )
	RegCurTrigger( 7311 )

end
RobinMission038()


function RobinMission039()

--Отправить письмо Маркусу
	DefineMission( 50, "Отправить письмо Маркусу", 50 )
	
	MisBeginTalk( "<t>Я больше ничем не смогу помочь.<n><t>Отнеси это письмо <bМаркусу>, может быть, у него найдется задние. Его можно найти за пределами Аргента в точке (2065, 2732)." )
	MisBeginCondition(HasRecord, 704)
	MisBeginCondition(NoRecord, 50)
	MisBeginCondition(NoMission, 50)
	MisBeginAction(AddMission, 50)
	MisBeginAction(GiveItem, 4111, 1, 4)
	MisCancelAction(ClearMission, 50 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо патрульному - Маркусу")

	MisHelpTalk("<t>Маркус находится около  (2065, 2732).")
	MisResultCondition(AlwaysFailure )

--Письмо Дитто
	DefineMission( 51, "Письмо Дитто", 51 )
	
	MisBeginTalk( "<t>Если тебе больше по душе собирать предметы, чем сражаться, отнеси это письмо <bЦелителю Дито> (2250, 2770). У него есть для тебя задание." )
	MisBeginCondition(HasRecord, 704)
	MisBeginCondition(NoRecord, 51)
	MisBeginCondition(NoMission, 51)
	MisBeginAction(AddMission, 51)
	MisBeginAction(GiveItem, 4112, 1, 4)
	MisCancelAction(ClearMission, 51  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправьте письмо Целителю Дито")

	MisHelpTalk("<t>Почему ты не передал письмо Дито? Он находится в точке (2250, 2770).")
	MisResultCondition(AlwaysFailure )

--Отправить письмо Маркусу
	DefineMission( 52, "Отправить письмо Маркусу", 50, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>It's good that you are here, I could use a helping hand.<n><t>Also, take note of your HP bar while in battle. That's right, the red bar shows your HP level. You will die when it reaches 0. Beware!<n><t>Beside eating \"Apples\", \"Cakes\" or other recovery potion, you can press the \"Insert\" key to increase HP/SP recovery rate.")
	MisResultCondition(NoRecord, 50)
	MisResultCondition(HasMission, 50)
	MisResultCondition(HasItem, 4111, 1)
	MisResultAction(TakeItem, 4111, 1)
	MisResultAction(ClearMission, 50)
	MisResultAction(SetRecord, 50)
	MisResultAction(AddExp, 50, 50)

--Чрезвычайная ситуация
	DefineMission( 53, "Чрезвычайная ситуация", 52 )

	MisBeginTalk( "<t>Здесь становится опасно. Было уже несколько сообщений о рое <rМаленьких пчел>. Многих ужалили, не мог бы ты убить 6 <rПчелок>? Я тебя вознагражу." )
	MisBeginCondition(HasRecord, 50)
	MisBeginCondition(NoMission, 52)
	MisBeginCondition(NoRecord, 52)
	MisBeginAction(AddMission, 52)
	MisBeginAction(AddTrigger, 521, TE_KILL, 206, 6 )
	MisCancelAction(ClearMission, 52)
	

	MisNeed(MIS_NEED_DESP, "Убей 6 <rПчелок> и найди Маркуса")
	MisNeed(MIS_NEED_KILL, 206, 6, 10, 6)
	
	MisResultTalk("<t>Отлично! Ты настоящий друг. Благодаря тебе я больше не понесу наказания и не буду стирать носки всему батальону.")
	MisHelpTalk("<t>Что такое? Это же всего 6 диких пчел. Это не проблема для тебя. Пожалуйста, поспеши и избавься от них.")
	MisResultCondition(HasMission, 52)
	MisResultCondition(HasFlag, 52, 15 )
	MisResultAction(AddExp, 150, 150)
	MisResultAction(ClearMission, 52)
	MisResultAction(SetRecord, 52)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 206 )	
	TriggerAction( 1, AddNextFlag, 52, 10, 6 )
	RegCurTrigger( 521 )

--Письмо Сальвьеру
	DefineMission( 54, "Письмо Сальвьеру", 53 )
	
	MisBeginTalk( "<t>Ситуация с дикими пчелами заметно улучшилась. У меня здесь доклад об этом инциденте.<n><t>Могу я доверить тебе доставить этот доклад секретарю Сальвьеру в точку (2219, 2749)?" )
	MisBeginCondition(HasRecord, 52)
	MisBeginCondition(NoRecord, 53)
	MisBeginCondition(NoMission, 53)
	MisBeginAction(AddMission, 53)
	MisBeginAction(GiveItem, 4113, 1, 4)
	MisCancelAction(ClearMission, 53  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо Сальвьеру в Аргенте")

	MisHelpTalk("<t>Почему ты не отправился к секретарю?<n><t>Оффис Сальвьера можно найти в точке (2219, 2749).")
	MisResultCondition(AlwaysFailure )

--Письмо Сальвьеру
	DefineMission( 55, "Письмо Сальвьеру", 53, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Согласно докладу Маркуса, благодаря тебе пчелы нам больше не угрожают. Молодчина!")
	MisResultCondition(NoRecord, 53)
	MisResultCondition(HasMission, 53)
	MisResultCondition(HasItem, 4113, 1)
	MisResultAction(TakeItem, 4113, 1)
	MisResultAction(ClearMission, 53)
	MisResultAction(SetRecord, 53)
	MisResultAction(AddExp, 80, 80)

--Популяция грибов
	DefineMission( 56, "Популяция грибов", 54 )

	MisBeginTalk( "<t>Я не знаю почему окрестности города кишат <bGreedy Shrooms> .  Без должного контроля они неимоверно размножились. Хоть я и люблю грибной супчик, никто не хочет быть покусаным <bГрибом-жадобцем>.<n><t>Поскольку мне не хватает людей, необходимо, чтобы ты отправился в (2220, 2564) и уничтожил 8 <bГрибов-жадобцев>. Пожалуйста, помоги нам, иначе мы не сможем выполнять другие задания." )
	MisBeginCondition(HasRecord, 53)
	MisBeginCondition(NoMission, 54)
	MisBeginCondition(NoRecord, 54)
	MisBeginAction(AddMission, 54)
	MisBeginAction(AddTrigger, 541, TE_KILL, 184, 8 )
	MisCancelAction(ClearMission, 54)
	

	MisNeed(MIS_NEED_DESP, "Убейте 8 <rГрибов-жадобцев> и сообщите Сальвьеру в Аргенте")
	MisNeed(MIS_NEED_KILL, 184, 8, 10, 8)

	MisPrize(MIS_PRIZE_ITEM, 9, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Все сделано? Ты молодчина!<n><t>Отлично. Благодаря тебе нам намного проще работать.")
	MisHelpTalk("<t>Ну как там дела? Всего лишь 8 грибов!<n><t>Давай-давай!")
	MisResultCondition(HasMission, 54)
	MisResultCondition(HasFlag, 54, 17 )
	MisResultAction(AddExp, 250, 250)
	MisResultAction(ClearMission, 54)
	MisResultAction(SetRecord, 54)
	MisResultBagNeed(1)	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 184 )	
	TriggerAction( 1, AddNextFlag, 54, 10, 8 )
	RegCurTrigger( 541 )

--Письмо для Голди
	DefineMission( 57, "Письмо для Голди", 55 )
	
	MisBeginTalk( "<t>Мне нужно доставить оффициальное письмо кузнецу Аргента <bГолди>.<n><t>Ты должен его знать. Отправляйся в (2193, 2706) и найди его." )
	MisBeginCondition(HasRecord, 54)
	MisBeginCondition(NoRecord, 55)
	MisBeginCondition(NoMission, 55)
	MisBeginAction(AddMission, 55)
	MisBeginAction(GiveItem, 4114, 1, 4)
	MisCancelAction(ClearMission, 55  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Пердай письмо кузнецу Голди")

	MisHelpTalk("<t>Почему ты не передал письмо Голди? Он в точке (2193, 2706).")
	MisResultCondition(AlwaysFailure )


--Письмо для Голди
	DefineMission( 58, "Письмо для Голди", 55, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ого, это письмо от Сальвьера.<n><t>Я не ожидал, что он отправит кого-то вроде тебя.")
	MisResultCondition(NoRecord, 55)
	MisResultCondition(HasMission, 55)
	MisResultCondition(HasItem, 4114, 1)
	MisResultAction(TakeItem, 4114, 1)
	MisResultAction(ClearMission, 55)
	MisResultAction(SetRecord, 55)
	MisResultAction(AddExp, 120, 120)

--Сохранение
	DefineMission( 59, "Сохранение", 56 )

	MisBeginTalk( "<t>А ты заметил, что зеленые окрестности Аргента значительно потускнели? Я слышал от одного капитана, что это из-за сумашедшего аппетита <bТравяных Черепах>, собирающихся возле города. Пожалуйста, помоги мне убить 12 <bТравяных Черепах> (2057, 2564).<n><t>Я награжу тебя, как только ты справишься с заданием, кстати, позволь мне предостеречь тебя. Эти Травяные Черепахи медлительны, но обладают высокой защитой, поэтому это задание тяжелее предыдущего. Как бы то ни было. оно подходит для твоего уровня." )
	MisBeginCondition(HasRecord, 55)
	MisBeginCondition(NoMission, 56)
	MisBeginCondition(NoRecord, 56)
	MisBeginAction(AddMission, 56)
	MisBeginAction(AddTrigger, 561, TE_KILL, 119, 12 )
	MisCancelAction(ClearMission, 56)
	

	MisNeed(MIS_NEED_DESP, "Убейте 12 <rТравяных Черепах> и вернитесь в Аргент к Голлди")
	MisNeed(MIS_NEED_KILL, 119, 12, 10, 12)

	MisPrize(MIS_PRIZE_ITEM, 4309, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Все? Отлично! Хоть черепашек и жалко, но их нужно уничтожить для нашего спасения")
	MisHelpTalk("<t>Эй! Всего 12 Травяных Черепах!<n><t>Ты должен уже искать их в точке (2057, 2564).")
	MisResultCondition(HasMission, 56)
	MisResultCondition(HasFlag, 56, 21 )
	MisResultAction(ClearMission, 56)
	MisResultAction(AddExp, 400, 400)
	MisResultAction(SetRecord, 56)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 119 )	
	TriggerAction( 1, AddNextFlag, 56, 10, 12 )
	RegCurTrigger( 561 )


--Письмо Синне
	DefineMission( 60, "Письмо Синне", 57 )
	
	MisBeginTalk( "<t>Хоть мы часто и просили тебя о помощи, ты заметно вырос.<n><t>Пожалуйста, отнеси это письмо  <bСинне>, Наставнице новичков в точку  (2223, 2785).<n><t>Когда ты ее найдешь, она даст новые инструкции." )
	MisBeginCondition(HasRecord, 56)
	MisBeginCondition(NoRecord, 57)
	MisBeginCondition(NoMission, 57)
	MisBeginAction(AddMission, 57)
	MisBeginAction(GiveItem, 4115, 1, 4)
	MisCancelAction(ClearMission, 57  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отнесите письмо Наставнице Новичков - Синне")

	MisHelpTalk("<t>Синна в точке (2223, 2785). Иди уже.")
	MisResultCondition(AlwaysFailure )

--Письмо Синне
	DefineMission( 61, "Письмо Синне", 57, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Спасибо за письмо.Похоже, тебе нравится в Аргенте.")
	MisResultCondition(NoRecord, 57)
	MisResultCondition(HasMission, 57)
	MisResultCondition(HasItem, 4115, 1)
	MisResultAction(TakeItem, 4115, 1)
	MisResultAction(ClearMission, 57)
	MisResultAction(SetRecord, 57)
	MisResultAction(AddExp, 200, 200)


--Карьера мечника
	DefineMission( 62, "Карьера мечника", 58 )
	
	MisBeginTalk( "<t>Пришло время выбрать, кем же ты хочешь стать. Если ты хочешь стать мечником, отправляйся в Аргент и разыщи замкового стража <bПитера>. Его можно найти в точке (2192, 2767). У него есть задания для тебя.<n><t>Мечник - это самый сильный класс ближнего боя. Они могут развиться в ловкого Воителя или Чемпиона.")
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_FENCER )
	MisBeginCondition(NoRecord, 58)
	MisBeginCondition(NoRecord, 59)
	MisBeginCondition(NoRecord, 60)
	MisBeginCondition(NoRecord, 61)
	MisBeginCondition(NoMission, 58)
	MisBeginCondition(NoMission, 59)
	MisBeginCondition(NoMission, 60)
	MisBeginCondition(NoMission, 61)
	MisBeginAction(AddMission, 58)
	MisBeginAction(GiveItem, 4116, 1, 4)
	MisCancelAction(ClearMission, 58  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправьте письмо Питеру в Аргент")

	MisHelpTalk("<t>Если ты хочешь быть мечником, поговори с Питером")
	MisResultCondition(AlwaysFailure )

--Карьера охотника
	DefineMission( 63, "Карьера охотника", 59 )
	
	MisBeginTalk( "<t>Вот и пришло время сделать выбор. Если ты хочешь быть охотником, передай это письмо Рэю в Ледыни (1365,70). У него есть задания, чтобы проверить твои способности.<n><t>Охотник - это класс, который использует лук или пушку для дальней атаки, им может стать Ланс или Филлис." )
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_HUNTER )
	MisBeginCondition(NoRecord, 58)
	MisBeginCondition(NoRecord, 59)
	MisBeginCondition(NoRecord, 60)
	MisBeginCondition(NoRecord, 61)
	MisBeginCondition(NoMission, 58)
	MisBeginCondition(NoMission, 59)
	MisBeginCondition(NoMission, 60)
	MisBeginCondition(NoMission, 61)
	MisBeginAction(AddMission, 59)
	MisBeginAction(GiveItem, 4117, 1, 4)
	MisCancelAction(ClearMission, 59 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправьте письмо Рэю в Ледынь")

	MisHelpTalk("<t>Если хотите стать охотником, поговорите с Рэем в Ледыни")
	MisResultCondition(AlwaysFailure )

--Карьера знахарки
	DefineMission( 64, "Карьера знахарки", 60 )
	
	MisBeginTalk( "<t>Вот и настало время, когда ты должен решить, кем ты хочешь стать.  Если ты хочешь быть знахаркой, пожалуйста, отправляйся в Шайтан и разыщи <bВерховного Жреца Геньона> (862, 3500). Он тебя испытает.<n><t>Знахарка помогает членам отряда в бою и может стать либо Целителем, либо Ведьмой." )
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_DOCTOR )
	MisBeginCondition(NoRecord, 58)
	MisBeginCondition(NoRecord, 59)
	MisBeginCondition(NoRecord, 60)
	MisBeginCondition(NoRecord, 61)
	MisBeginCondition(NoMission, 58)
	MisBeginCondition(NoMission, 59)
	MisBeginCondition(NoMission, 60)
	MisBeginCondition(NoMission, 61)
	MisBeginAction(AddMission, 60)
	MisBeginAction(GiveItem, 4118, 1, 4)
	MisCancelAction(ClearMission, 60 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Принеси это письмо Геньону в Шайтан")

	MisHelpTalk("<t>Если хочешь стать знахаркой, найди Геньона.")
	MisResultCondition(AlwaysFailure )

--Карьера Мореплавателя
	DefineMission( 65, "Карьера Мореплавателя", 61 )
	
	MisBeginTalk( "<t>Пришло время выбрать, кем ты хочешь стать. Если ты хочешь быть Исследователем, пожалуйста, направляйся в Аргент и найди <bМалыша Даниэля>  (2193, 2730). Передай ему это письмо.<n><t>Исследователь использует кораллы для своих умений и в дальнейшем может развиться в Покорителя Морей. Это незаменимый класс на море." )
	MisBeginCondition(LvCheck, ">", 8 )
	MisBeginCondition(PfEqual, 0 )
	MisBeginCondition(CheckConvertProfession, MIS_RISKER )
	MisBeginCondition(NoRecord, 58)
	MisBeginCondition(NoRecord, 59)
	MisBeginCondition(NoRecord, 60)
	MisBeginCondition(NoRecord, 61)
	MisBeginCondition(NoMission, 58)
	MisBeginCondition(NoMission, 59)
	MisBeginCondition(NoMission, 60)
	MisBeginCondition(NoMission, 61)
	MisBeginAction(AddMission, 61)
	MisBeginAction(GiveItem, 4119, 1, 4)
	MisCancelAction(ClearMission, 61 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо Малышу Даниэлю")

	MisHelpTalk("<t>Чтобы стать Исследователем, найдите Малыша Даниэля (2193, 2730).")
	MisResultCondition(AlwaysFailure )


--Карьера мечника
	DefineMission( 66, "Карьера мечника", 58, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Раз уж наставница новичков порекомендовала тебя, ты показал весь свой потенциал. Если ты хочешь стать мечником, тебе придется выполнить задания, которые я тебе поручу.")
	MisResultCondition(NoRecord, 58)
	MisResultCondition(HasMission, 58)
	MisResultCondition(HasItem, 4116, 1)
	MisResultAction(TakeItem, 4116, 1)
	MisResultAction(ClearMission, 58)
	MisResultAction(SetRecord, 58)

--Карьера мечника
	DefineMission( 67, "Карьера мечника", 62 )

	MisBeginTalk( "<t>Так ты хочешь стать Мечником? У тебя есть мужество.<n><t>Но этого недостаточно. Чтобы стать Мечником, ты должен доказать что тебе присущи требуемые способности и интеллект.<n><t>Иди на <pОкраины Аргента> и победи 12 <bСвинокрылов>  (1950, 2563) и возвращайся ко мне.<n><t>На этом первый этап будет пройден." )
	MisBeginCondition(HasRecord, 58)
	MisBeginCondition(NoMission, 62)
	MisBeginCondition(NoRecord, 62)
	MisBeginAction(AddMission, 62)
	MisBeginAction(AddTrigger, 621, TE_KILL, 237, 12 )
	MisCancelAction(ClearMission, 62)
	

	MisNeed(MIS_NEED_DESP, "Истребите 12 <bСвинокрылов> и поговорите с Питером в Аргенте")
	MisNeed(MIS_NEED_KILL, 237, 12, 10, 12)
	
	MisResultTalk("<t>Ты справился.<n><t>Ты прошел первый тест для того, чтобы стать Мечником.")
	MisHelpTalk("<t>Ты не выполнил условия. Не так-то просто стать Мечником.")
	MisResultCondition(HasMission, 62)
	MisResultCondition(HasFlag, 62, 21 )
	MisResultAction(ClearMission, 62)
	MisResultAction(SetRecord, 62)
	MisResultAction(AddExp, 300, 300)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 237 )	
	TriggerAction( 1, AddNextFlag, 62, 10, 12 )
	RegCurTrigger( 621 )


--Карьера мечника
	DefineMission( 68, "Карьера мечника", 63 )
	
	MisBeginTalk( "<t>Теперь, отнеси <bГенералу Вильяму> (2277, 2831) это письмо, как доказательство того, что ты прошел первый этап испытания, и он поручит тебе второе задание для получения профессии Мечника.")
	MisBeginCondition(HasRecord, 62)
	MisBeginCondition(NoRecord, 63)
	MisBeginCondition(NoMission, 63)
	MisBeginAction(AddMission, 63)
	MisBeginAction(GiveItem, 4120, 1, 4)
	MisCancelAction(ClearMission, 63  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отнесите письмо Генералу Вильяму")

	MisHelpTalk("<t>Давай быстрее, у тебя все получится!")
	MisResultCondition(AlwaysFailure )

--Карьера мечника
	DefineMission( 69, "Карьера мечника", 63, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Боженьки. Еще один хочет стать Мечником.")
	MisResultCondition(NoRecord, 63)
	MisResultCondition(HasMission, 63)
	MisResultCondition(HasItem, 4120, 1)
	MisResultAction(TakeItem, 4120, 1)
	MisResultAction(ClearMission, 63)
	MisResultAction(SetRecord, 63)
	MisResultAction(AddExp, 100, 100)

--Карьера мечника
	DefineMission( 70, "Карьера мечника", 64 )

	MisBeginTalk( "<t>Ты хочешь пройти заключительный этап испытания?<n><t>Тогда иди на <pОкраины Аргента> , собери 3 <rКашемира> и принеси его мне.<n><t>Если ты выполнишь задание, я признаю, что ты отменный Мечник.<n><t>Кстати, Кашемир можно отобрать у Милой Овечки (2057, 2638).")
	MisBeginCondition(HasRecord, 63)
	MisBeginCondition(NoMission, 64)
	MisBeginCondition(NoRecord, 64)
	MisBeginAction(AddMission, 64)
	MisBeginAction(AddTrigger, 641, TE_GETITEM, 1678, 3 )
	MisCancelAction(ClearMission, 64)

	MisNeed(MIS_NEED_DESP, "Cобери 3 <rКашемира> и поговори с Вильямом")
	MisNeed(MIS_NEED_ITEM, 1678, 3, 10, 3)
	
	MisResultTalk("<t>Тебе удалось! Я так за тебя рад!")
	MisHelpTalk("<t>3 Кашемира. Ни больше, ни меньше.")
	MisResultCondition(HasMission, 64)
	MisResultCondition(HasItem, 1678, 3 )
	MisResultAction(TakeItem, 1678, 3)
	MisResultAction(ClearMission, 64)
	MisResultAction(SetRecord, 64)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678 )	
	TriggerAction( 1, AddNextFlag, 64, 10, 3 )
	RegCurTrigger( 641 )

--Карьера мечника
	DefineMission( 71, "Карьера мечника", 65 )
	
	MisBeginTalk( "<t>Ты уже доказал, что ты достоин. Возвращайся к Питеру и передай ему, что я разрешаю тебе стать Мечником. Этот <rСертификат Мужества> послужит доказательством.")
	MisBeginCondition(HasRecord, 64)
	MisBeginCondition(NoRecord, 65)
	MisBeginCondition(NoMission, 65)
	MisBeginAction(AddMission, 65)
	MisBeginAction(GiveItem, 3953, 1, 4)
	MisCancelAction(ClearMission, 65 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо Питеру в Аргенте (2192, 2767)")

	MisHelpTalk("<t>Почему ты тормозишь? Иди и разыщи Питера.")
	MisResultCondition(AlwaysFailure )


--Карьера мечника
	DefineMission( 72, "Карьера мечника", 65, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Поздравляю, ты получил Сертификат Мужества. Теперь ты оффициально Мечник!<n><t>(Можно активировать задания для своего класса у Питера.<n><t>Также Вы можете купить оружие у кузнеца Голди, снаряжение у портнихи Нилы и книги навыков у бакалейщика Джимбери)")
	MisResultCondition(NoRecord, 65)
	MisResultCondition(HasMission, 65)
	MisResultCondition(HasItem, 3953, 1)
	MisResultAction(TakeItem, 3953, 1)
	MisResultAction(ClearMission, 65)
	MisResultAction(SetRecord, 65)
	MisResultAction(AddExp, 100, 100)
	MisResultAction(SetProfession, 1)
	MisResultAction(GiveItem, 1, 1, 4)
	MisResultAction(GiveItem, 3164, 1, 4)
	MisResultBagNeed(2)

--Письмо Дитто
	DefineMission( 73, "Письмо Дитто", 51, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Хорошо, что ты здесь. Мне как раз нужна помощь.")
	MisResultCondition(NoRecord, 51)
	MisResultCondition(HasMission, 51)
	MisResultCondition(HasItem, 4112, 1)
	MisResultAction(TakeItem, 4112, 1)
	MisResultAction(ClearMission, 51)
	MisResultAction(SetRecord, 51)
	MisResultAction(AddExp, 50, 50)


--Рецепт отвара
	DefineMission( 74, "Рецепт отвара", 66 )

	MisBeginTalk( "<t>Меня неожиданно посетило вдохновение и я решил приготовить новый отвар. Прости, за беспокойство но не мог бы ты собрать  3 <rЧернила спрута>? Их можно приобрести, сражаясь с  <rМаленькими Кальмарчиками> около моря. Мое новое лекарство в твоих руках!")
	MisBeginCondition(HasRecord, 51)
	MisBeginCondition(NoMission, 66)
	MisBeginCondition(NoRecord, 66)
	MisBeginAction(AddMission, 66)
	MisBeginAction(AddTrigger, 661, TE_GETITEM, 1705, 3 )
	MisCancelAction(ClearMission, 66)
	
	MisNeed(MIS_NEED_DESP, "Соберите 3 <rЧернила Спрута> и доложите Доктору Дитто (2250, 2770)")
	MisNeed(MIS_NEED_ITEM, 1705, 3, 10, 3)
	
	MisResultTalk("<t>Очень хорошо. Поскольку ты принес все необходимое, я могу начать исследования для моего отвара.")
	MisHelpTalk("<t>Что? Поторопись пока меня не покинуло мое вдохновение")
	MisResultCondition(HasMission, 66)
	MisResultCondition(HasItem, 1705, 3 )
	MisResultAction(TakeItem, 1705, 3)
	MisResultAction(ClearMission, 66)
	MisResultAction(SetRecord, 66)
	MisResultAction(AddExp, 150, 150)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1705 )	
	TriggerAction( 1, AddNextFlag, 66, 10, 3 )
	RegCurTrigger( 661 )

--Письмо для Рори
	DefineMission( 75, "Письмо для Рори", 67 )
	
	MisBeginTalk( "<t>Я все еще не достиг нужных результатов.<n><t>Похоже, я тут бессилен. Передай это письмо помощнику Рори (2240, 2752), может, ему нужна помощь.")
	MisBeginCondition(HasRecord, 66)
	MisBeginCondition(NoRecord, 67)
	MisBeginCondition(NoMission, 67)
	MisBeginAction(AddMission, 67)
	MisBeginAction(GiveItem, 4121, 1, 4)
	MisCancelAction(ClearMission, 67 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо Рори")

	MisHelpTalk("<t>Помощник Рори находится в Аргенте (2240, 2752).")
	MisResultCondition(AlwaysFailure )

--Письмо для Рори
	DefineMission( 76, "Письмо для Рори", 67, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Так-так, так это Дитто попросил тебя сюда придти.")
	MisResultCondition(NoRecord, 67)
	MisResultCondition(HasMission, 67)
	MisResultCondition(HasItem, 4121, 1)
	MisResultAction(TakeItem, 4121, 1)
	MisResultAction(ClearMission, 67)
	MisResultAction(SetRecord, 67)
	MisResultAction(AddExp, 80, 80)

--Гриб-грибок
	DefineMission( 77, "Гриб-грибок", 68 )

	MisBeginTalk( "<t>Кстати, в прошлом я выращивал несколько <bГрибов-жадобцов> на окраинах Аргента. В последнее время я был поглощен новым рецептом и совсем забыл про них, думаю, сейчас они как раз пригодятся. Можешь достать 6 <rЯдовитых Грибов>?<n><t>Эррр...Кстати, эти Грибы - Жадобцы очень агрессивные, так что захвати с собой что-нибудь для восполнения здоровья. Кроме того, их можно найти около (2220, 2564). Осмотрись, сейчас, может, лучшее время, чтобы собрать урожай, теперь все в твоих руках!")
	MisBeginCondition(HasRecord, 67)
	MisBeginCondition(NoMission, 68)
	MisBeginCondition(NoRecord, 68)
	MisBeginAction(AddMission, 68)
	MisBeginAction(AddTrigger, 681, TE_GETITEM, 1725, 6 )
	MisCancelAction(ClearMission, 68)
	
	MisNeed(MIS_NEED_DESP, "Соберите 6 <rЯдовитых грибов> и доложите Рори (2240, 2752)")
	MisNeed(MIS_NEED_ITEM, 1725, 6, 10, 6)

	MisPrize(MIS_PRIZE_ITEM, 4308, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Круто! Ты все собрал! Спасибо!")
	MisHelpTalk("<t>Что такое? Неужели Грибы - Жадобцы тебя запугали?")
	MisResultCondition(HasMission, 68)
	MisResultCondition(HasItem, 1725, 6 )
	MisResultAction(TakeItem, 1725, 6)
	MisResultAction(ClearMission, 68)
	MisResultAction(SetRecord, 68)
	MisResultAction(AddExp, 250, 250)
	MisResultBagNeed(1)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1725 )	
	TriggerAction( 1, AddNextFlag, 68, 10, 6 )
	RegCurTrigger( 681 )

--Письмо для Кодди
	DefineMission( 78, "Письмо для Кодди", 69 )
	
	MisBeginTalk( "<t>Похоже, ты совсем неплох.<n><t>Передай это письмо <bМоряку - Коди> в порту Аргента (2219, 2911).")
	MisBeginCondition(HasRecord, 68)
	MisBeginCondition(NoRecord, 69)
	MisBeginCondition(NoMission, 69)
	MisBeginAction(AddMission, 69)
	MisBeginAction(GiveItem, 4122, 1, 4)
	MisCancelAction(ClearMission, 69 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо Моряку Коди")

	MisHelpTalk("<t>Что такое? Я занят. Найди Моряка Коди.")
	MisResultCondition(AlwaysFailure )

--Письмо для Кодди
	DefineMission( 79, "Письмо для Кодди", 69, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Так-так.Значит Дитто попросил тебя придти.")
	MisResultCondition(NoRecord, 69)
	MisResultCondition(HasMission, 69)
	MisResultCondition(HasItem, 4122, 1)
	MisResultAction(TakeItem, 4122, 1)
	MisResultAction(ClearMission, 69)
	MisResultAction(SetRecord, 69)
	MisResultAction(AddExp, 120, 120)

--Потерянные вещи
	DefineMission( 80, "Потерянные вещи", 70 )

	MisBeginTalk( "<t>Раньше я был ответственнен за партии продуктов в порту Аргента. К несчастью, я потерял 2 пузырька <rЧерепашьей Крови>. У меня могут возникнуть неприятности из-за этого!<n><t>Не мог бы ты раздобыть для меня Черепашьей Крови? Это вопрос жизни и смерти!<n><t>Помню, что Черепашью кровь можно спустить у <rТравяных Черепах>  (2057, 2564).")
	MisBeginCondition(HasRecord, 69)
	MisBeginCondition(NoMission, 70)
	MisBeginCondition(NoRecord, 70)
	MisBeginAction(AddMission, 70)
	MisBeginAction(AddTrigger, 701, TE_GETITEM, 1844, 2 )
	MisCancelAction(ClearMission, 70)
	
	MisNeed(MIS_NEED_DESP, "Соберите 2 пузырька <rЧерепашьей Крови> и принесите Коди в Аргент (2219, 2911)")
	MisNeed(MIS_NEED_ITEM, 1844, 2, 10, 2)
	
	MisPrize(MIS_PRIZE_ITEM, 4310, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Отлично!<n><t>Ты меня спас! Огромное спасибо!")
	MisHelpTalk("<t>Поторопись, пока меня не уволили!")
	MisResultCondition(HasMission, 70)
	MisResultCondition(HasItem, 1844, 2 )
	MisResultAction(TakeItem, 1844, 2)
	MisResultAction(ClearMission, 70)
	MisResultAction(SetRecord, 70)
	MisResultAction(AddExp, 400, 400)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1844 )	
	TriggerAction( 1, AddNextFlag, 70, 10, 2 )
	RegCurTrigger( 701 )

--Письмо Синне
	DefineMission( 81, "Письмо Синне", 71 )
	
	MisBeginTalk( "<t>Хоть мы постоянно и просили тебя о помощи, ты значительно подрос. Пожалуйста, отнеси это письмо <bСинне>, Наставнице (2223, 2785). После того, как ты ее найдешь, она даст тебе все нужные инструкции.")
	MisBeginCondition(HasRecord, 70)
	MisBeginCondition(NoRecord, 71)
	MisBeginCondition(NoMission, 71)
	MisBeginAction(AddMission, 71)
	MisBeginAction(GiveItem, 4115, 1, 4)
	MisCancelAction(ClearMission, 71 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отдайте письмо Наставнице Новичков в Аргенте")

	MisHelpTalk("<t>Иди к Синне (2223, 2785).")
	MisResultCondition(AlwaysFailure )

--Письмо Синне
	DefineMission( 82, "Письмо Синне", 71, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("Спасибо за письмо, похоже, тебя здесь полюбили.")
	MisResultCondition(NoRecord, 71)
	MisResultCondition(HasMission, 71)
	MisResultCondition(HasItem, 4115, 1)
	MisResultAction(TakeItem, 4115, 1)
	MisResultAction(ClearMission, 71)
	MisResultAction(SetRecord, 71)
	MisResultAction(AddExp, 200, 200)

--Письмо Майклу
	DefineMission( 83, "Письмо Майклу", 72 )
	
	MisBeginTalk( "<t>Больше я тебе ничем не могу помочь.<n><t>Отнеси это письмо <bМайклу>, может, у него есть что-нибудь для тебя. Его можно найти около Шайтана (958, 3549).")
	MisBeginCondition(HasRecord, 710)
	MisBeginCondition(NoRecord, 72)
	MisBeginCondition(NoMission, 72)
	MisBeginAction(AddMission, 72)
	MisBeginAction(GiveItem, 4123, 1, 4)
	MisCancelAction(ClearMission, 72 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправьте письмо Стражу - Майклу")

	MisHelpTalk("<t>Майкла можно найти в точке (2065, 2732). Поторопись.")
	MisResultCondition(AlwaysFailure )

--Письмо Амосу
	DefineMission( 84, "Письмо Амосу", 73 )
	
	MisBeginTalk( "<t>Если тебе больше по душе собирать предметы, чем сражаться, передай это письмо  <bАмосу>  (840, 3585). У него есть задание.")
	MisBeginCondition(HasRecord, 710)
	MisBeginCondition(NoRecord, 73)
	MisBeginCondition(NoMission, 73)
	MisBeginAction(AddMission, 73)
	MisBeginAction(GiveItem, 4124, 1, 4)
	MisCancelAction(ClearMission, 73  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправьте письмо Амосу")

	MisHelpTalk("<t>Почему ты не передал письмо Амосуs? Он в (840, 3585).")
	MisResultCondition(AlwaysFailure )


--Письмо Майклу
	DefineMission( 85, "Письмо Майклу", 72, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>It's good that you are here, I could use a helping hand.<n><t>Also, take note of your HP bar while in battle. That's right, the red bar shows your HP level. You will die when it reaches 0. Beware!<n><t>Beside eating \"Apples\", \"Cakes\" or other recovery potion, you can press the \"Insert\" key to increase HP/SP recovery rate.")
	MisResultCondition(NoRecord, 72)
	MisResultCondition(HasMission, 72)
	MisResultCondition(HasItem, 4123, 1)
	MisResultAction(TakeItem, 4123, 1)
	MisResultAction(ClearMission, 72)
	MisResultAction(SetRecord, 72)
	MisResultAction(AddExp, 50, 50)

--Вторжение кактусов
	DefineMission( 86, "Вторжение кактусов", 74 )

	MisBeginTalk( "<t>О! Окраины Шайтана заполонили Кактусы. В моей области их особенно много. Как насчет услуги? Уничтожь 15 <bКактусов> (1031, 3556), мне кажется, что ты больше всех подходишь для этого задания.")
	MisBeginCondition(HasRecord, 72)
	MisBeginCondition(NoMission, 74)
	MisBeginCondition(NoRecord, 74)
	MisBeginAction(AddMission, 74)
	MisBeginAction(AddTrigger, 741, TE_KILL, 95, 6 )
	MisCancelAction(ClearMission, 74)
	
	MisNeed(MIS_NEED_DESP, "Убейте 6 <rКактусов> и вернитесь к Майклу")
	MisNeed(MIS_NEED_KILL, 95, 6, 10, 6)
	
	MisResultTalk("<t>Слава Богу! Ты уничтожил их.")
	MisHelpTalk("<t>Всего лишь несколько кактусов, страшно чтоли?")
	MisResultCondition(HasMission, 74)
	MisResultCondition(HasFlag, 74, 15 )
	MisResultAction(AddExp, 150, 150)
	MisResultAction(ClearMission, 74)
	MisResultAction(SetRecord, 74)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 95 )	
	TriggerAction( 1, AddNextFlag, 74, 10, 6 )
	RegCurTrigger( 741 )

--Письмо для Франко
	DefineMission( 87, "Письмо для Франко", 75 )
	
	MisBeginTalk( "<t>Пожалуйста, передай это письмо моему другу <bФранко>  (867, 3660) в Шайтане.<n><t>Он очень интересный человек и, наверно, тебе поможет.")
	MisBeginCondition(HasRecord, 74)
	MisBeginCondition(NoRecord, 75)
	MisBeginCondition(NoMission, 75)
	MisBeginAction(AddMission, 75)
	MisBeginAction(GiveItem, 4125, 1, 4)
	MisCancelAction(ClearMission, 75  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо Франко")

	MisHelpTalk("<t>Поторопись, мне нужно идти на службу.")
	MisResultCondition(AlwaysFailure )

--Письмо для Франко
	DefineMission( 88, "Письмо для Франко", 75, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>О, ты друг Майкла? Спасибо за письмо.")
	MisResultCondition(NoRecord, 75)
	MisResultCondition(HasMission, 75)
	MisResultCondition(HasItem, 4125, 1)
	MisResultAction(TakeItem, 4125, 1)
	MisResultAction(ClearMission, 75)
	MisResultAction(SetRecord, 75)
	MisResultAction(AddExp, 80, 80)

--Бьет чудовище
	DefineMission( 89, "Бьет чудовище", 76 )

	MisBeginTalk( "<t>Ты уже слышал о существе в пустыне, которое нападает на путешественников? По дороге в город на меня напал <bГорбатый Верблюд> , и я был травмирован. Поможешь преподать им урок? Истребление 8 <bГорбатых Верблюдов> не должно быть для тебя проблемой.")
	MisBeginCondition(HasRecord, 75)
	MisBeginCondition(NoMission, 76)
	MisBeginCondition(NoRecord, 76)
	MisBeginAction(AddMission, 76)
	MisBeginAction(AddTrigger, 761, TE_KILL, 48, 8 )
	MisCancelAction(ClearMission, 76)

	MisNeed(MIS_NEED_DESP, "Убейте 8  <rГорбатых Верблюдов> и сообщите Франко в Шайтане")
	MisNeed(MIS_NEED_KILL, 48, 8, 10, 8)

	MisPrize(MIS_PRIZE_ITEM, 9, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Отлично. Думаю, больше не будет пострадавших.<n><t>Эти верблюды совсем отбились от рук.")
	MisHelpTalk("<t>Что? Ты еще не преподал им урок? Попытайся еще раз.")
	MisResultCondition(HasMission, 76)
	MisResultCondition(HasFlag, 76, 17 )
	MisResultAction(AddExp, 250, 250)
	MisResultAction(ClearMission, 76)
	MisResultAction(SetRecord, 76)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 48 )	
	TriggerAction( 1, AddNextFlag, 76, 10, 8 )
	RegCurTrigger( 761 )

--Письмо Ковалю
	DefineMission( 90, "Письмо Ковалю", 77 )
	
	MisBeginTalk( "<t>Ты бы не мог передать это письмо <bКузнецу Смиту> (902, 3495). Он очень интересный человек и обязательно тебе поможет." )
	MisBeginCondition(HasRecord, 76)
	MisBeginCondition(NoRecord, 77)
	MisBeginCondition(NoMission, 77)
	MisBeginAction(AddMission, 77)
	MisBeginAction(GiveItem, 4126, 1, 4)
	MisCancelAction(ClearMission, 77  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо Смиту")

	MisHelpTalk("<t>Поспеши к Смиту. Не забудь сказать, что ты мой друг.")
	MisResultCondition(AlwaysFailure )


--Письмо Ковалю
	DefineMission( 91, "Письмо Ковалю", 77, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>O, Франко отправил тебя? Отлично! Мне как раз не хватает людей!")
	MisResultCondition(NoRecord, 77)
	MisResultCondition(HasMission, 77)
	MisResultCondition(HasItem, 4126, 1)
	MisResultAction(TakeItem, 4126, 1)
	MisResultAction(ClearMission, 77)
	MisResultAction(SetRecord, 77)
	MisResultAction(AddExp, 120, 120)

--Скорпионофобия
	DefineMission( 92, "Скорпионофобия", 78 )

	MisBeginTalk( "<t>Сказать по правде, я ничего не боюсь, кроме скорпионов!<n><t>Тем не менее, моя работа заключается в том, чтобы путешествовать вокруг города и собирать зверей!<n><t>Похоже, гигантские скорпионы появились из ниоткуда, да еще они гораздо сильнее маленьких. Если они тебя ужалят, ты может погибнуть! Жуть!<n><t>Пожалуйста, помоги убить 12  <Больших Скорпионов>! Они обитают в (1184, 3557), осторожнее, они очень быстрые, удачи!")
	MisBeginCondition(HasRecord, 77)
	MisBeginCondition(NoMission, 78)
	MisBeginCondition(NoRecord, 78)
	MisBeginAction(AddMission, 78)
	MisBeginAction(AddTrigger, 781, TE_KILL, 247, 12 )
	MisCancelAction(ClearMission, 56)
	

	MisNeed(MIS_NEED_DESP, "Убейте 12 <rБольших Скорпионов> и вернитесь к Смиту в Шайтан")
	MisNeed(MIS_NEED_KILL, 247, 12, 10, 12)

	MisPrize(MIS_PRIZE_ITEM, 4309, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Хорошо! Ты как раз тот, кого мы искали для этой работы. Ты так быстро вернулся. Ты настоящий храбрец.")
	MisHelpTalk("<t>Что такое? Ты не можешь победить тех скорпионов? Тогда возьми с собой зельев.")
	MisResultCondition(HasMission, 78)
	MisResultCondition(HasFlag, 78, 21 )
	MisResultAction(ClearMission, 78)
	MisResultAction(AddExp, 400, 400)
	MisResultAction(SetRecord, 78)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 247 )	
	TriggerAction( 1, AddNextFlag, 78, 10, 12 )
	RegCurTrigger( 781 )


--Письмо
	DefineMission( 93, "Письмо", 79 )
	
	MisBeginTalk( "<t>Хоть жители Шайтана и часто просят тебя о помощи, но ты уже подрос для новых приключений. <n><t>Доставь это письмо <bНаставнице - Реслине>  (876, 3572), она скажет, что дальше делать." )
	MisBeginCondition(HasRecord, 78)
	MisBeginCondition(NoRecord, 79)
	MisBeginCondition(NoMission, 79)
	MisBeginAction(AddMission, 79)
	MisBeginAction(GiveItem, 4127, 1, 4)
	MisCancelAction(ClearMission, 79  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо Наставнице Новичков в Шайтане")

	MisHelpTalk("<t>Реслина в (876, 3572). Поторопись.")
	MisResultCondition(AlwaysFailure )

--Письмо
	DefineMission( 94, "Письмо", 79, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Спасибо за письмо, похоже тебя полюбили в Шайтане.")
	MisResultCondition(NoRecord, 79)
	MisResultCondition(HasMission, 79)
	MisResultCondition(HasItem, 4127, 1)
	MisResultAction(TakeItem, 4127, 1)
	MisResultAction(ClearMission, 79)
	MisResultAction(SetRecord, 79)
	MisResultAction(AddExp, 200, 200)

--Карьера знахарки
	DefineMission( 95, "Карьера знахарки", 60, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("Раз уж Наставница Новичков тебя порекомендовала, ты должен обладать неким потенциалом. Если ты хочешь стать знахаркой, тебе придется выполнить задания, которые я тебе приготовил.")
	MisResultCondition(NoRecord, 60)
	MisResultCondition(HasMission, 60)
	MisResultCondition(HasItem, 4118, 1)
	MisResultAction(TakeItem, 4118, 1)
	MisResultAction(ClearMission, 60)
	MisResultAction(SetRecord, 60)

--Карьера знахарки
	DefineMission( 96, "Карьера знахарки", 80 )

	MisBeginTalk( "<t>Почему ты хочешь стать Знахаркой? В последнее время многие пытались стать знахарками только для того, чтобы заработать денег. Ты должна доказать мне, что ты достойна стать одной из Знахарок.<n><t>Я испытаю твою выносливость, отправляйся в (884, 3156) и убей 2  <bКактусов Убийц>. Если ты справишься с этим заданием, считай, что ты прошла этот тест." )
	MisBeginCondition(HasRecord, 60)
	MisBeginCondition(NoMission, 80)
	MisBeginCondition(NoRecord, 80)
	MisBeginAction(AddMission, 80)
	MisBeginAction(AddTrigger, 801, TE_KILL, 43, 2 )
	MisCancelAction(ClearMission, 80)
	

	MisNeed(MIS_NEED_DESP, "Убейте 2  <bКактусов Убийц> и сообщите Верховному Жрецу Геньону (862, 3500)")
	MisNeed(MIS_NEED_KILL, 43, 2, 10, 2)
	
	MisResultTalk("<t>Похоже, тебе удалось. Молодчина.")
	MisHelpTalk("<t>Проблемы?")
	MisResultCondition(HasMission, 80)
	MisResultCondition(HasFlag, 80, 11 )
	MisResultAction(ClearMission, 80)
	MisResultAction(SetRecord, 80)
	MisResultAction(AddExp, 300, 300)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 43 )	
	TriggerAction( 1, AddNextFlag, 80, 10, 2 )
	RegCurTrigger( 801 )


--Карьера знахарки
	DefineMission( 97, "Карьера знахарки", 81 )
	
	MisBeginTalk( "<t>Пожалуйста, передай это письмо в Штаб флота - Адмиралу Нику (865, 3648). Она знает, что делать.")
	MisBeginCondition(HasRecord, 80)
	MisBeginCondition(NoRecord, 81)
	MisBeginCondition(NoMission, 81)
	MisBeginAction(AddMission, 81)
	MisBeginAction(GiveItem, 4128, 1, 4)
	MisCancelAction(ClearMission, 81  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо Адмиралу Нику")

	MisHelpTalk("<t>Поторопись, ты справишься!")
	MisResultCondition(AlwaysFailure )

--Карьера знахарки
	DefineMission( 98, "Карьера знахарки", 81, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ты справилась с первым испытанием. Неплохо!")
	MisResultCondition(NoRecord, 81)
	MisResultCondition(HasMission, 81)
	MisResultCondition(HasItem, 4128, 1)
	MisResultAction(TakeItem, 4128, 1)
	MisResultAction(ClearMission, 81)
	MisResultAction(SetRecord, 81)
	MisResultAction(AddExp, 100, 100)

--Карьера знахарки
	DefineMission( 99, "Карьера знахарки", 82 )

	MisBeginTalk( "<t>Здесь тебя ждет второе испытание для того, чтобы стать Знахаркой. Если у тебя все получится, то ты станешь Знахаркой.<n><t>Вот задание: Собери для меня 3 <bЦелебных Травы>. Все просто.<n><t>Их можно отобрать у <rЯщера-Попрыгуна> за пределами города (892, 3273).")
	MisBeginCondition(HasRecord, 81)
	MisBeginCondition(NoMission, 82)
	MisBeginCondition(NoRecord, 82)
	MisBeginAction(AddMission, 82)
	MisBeginAction(AddTrigger, 821, TE_GETITEM, 3129, 3 )
	MisCancelAction(ClearMission, 82)

	MisNeed(MIS_NEED_DESP, "Собери 3 <bЦелебных Травы> и доставь Адмиралу Нику (865, 3648)")
	MisNeed(MIS_NEED_ITEM, 3129, 3, 10, 3)
	
	MisResultTalk("<t>Хорошо. Ты справилась!")
	MisHelpTalk("<t>Я знаю, что это опасно. Но ты должна завершить задание.")
	MisResultCondition(HasMission, 82)
	MisResultCondition(HasItem, 3129, 3 )
	MisResultAction(TakeItem, 3129, 3)
	MisResultAction(ClearMission, 82)
	MisResultAction(SetRecord, 82)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129 )	
	TriggerAction( 1, AddNextFlag, 82, 10, 3 )
	RegCurTrigger( 821 )

--Карьера знахарки
	DefineMission( 150, "Карьера знахарки", 83 )
	
	MisBeginTalk( "<t>Ты доказала, что достойна. Передай это письмо Геньону, я разрешаю тебе стать Знахаркой. Этот <rПраведный Документ> доказательство твоего успеха.")
	MisBeginCondition(HasRecord, 82)
	MisBeginCondition(NoRecord, 83)
	MisBeginCondition(NoMission, 83)
	MisBeginAction(AddMission, 83)
	MisBeginAction(GiveItem, 3954, 1, 4)
	MisCancelAction(ClearMission, 83 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Найдите Верховного Жреца Геньона (862, 3500)")

	MisHelpTalk("<t>Что ты делаешь? Все еще раздумываешь?")
	MisResultCondition(AlwaysFailure )


--Карьера знахарки
	DefineMission( 151, "Карьера знахарки", 83, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Поздравляю тебя, дитя мое! Теперь ты Знахарка! Да прибудет с тобой Богиня!<n><t>(Теперь ты можешь брать классовые квесты у Геньона.<n><t>Также, купи оружие у кузнеца Смити, доспехи у портнихи Мойи и книги навыков у бакалейщика Амоса)")
	MisResultCondition(NoRecord, 83)
	MisResultCondition(HasMission, 83)
	MisResultCondition(HasItem, 3954, 1)
	MisResultAction(TakeItem, 3954, 1)
	MisResultAction(ClearMission, 83)
	MisResultAction(SetRecord, 83)
	MisResultAction(AddExp, 100, 100)
	MisResultAction(SetProfession, 5)
	MisResultAction(GiveItem, 3206, 1, 4)
	MisResultAction(GiveItem, 97, 1, 4)
	MisResultBagNeed(2)


--Письмо Амосу
	DefineMission( 152, "Письмо Амосу", 73, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Хорошо, что ты здесь, Мне нужна помощь.")
	MisResultCondition(NoRecord, 73)
	MisResultCondition(HasMission, 73)
	MisResultCondition(HasItem, 4124, 1)
	MisResultAction(TakeItem, 4124, 1)
	MisResultAction(ClearMission, 73)
	MisResultAction(SetRecord, 73)
	MisResultAction(AddExp, 50, 50)


--Анализ прививки
	DefineMission( 153, "Анализ прививки", 84 )

	MisBeginTalk( "<t>Хочешь увидеть цветущий кактус? Я провожу эксперимент, можешь принести 6 <rКлубней Кактуса>?<n><t>Ты найдешь их у  <bКактусов>  за чертой города. Мне надо совсем чуть-чуть сейчас, но может понадобиться и больше.")
	MisBeginCondition(HasRecord, 73)
	MisBeginCondition(NoMission, 84)
	MisBeginCondition(NoRecord, 84)
	MisBeginAction(AddMission, 84)
	MisBeginAction(AddTrigger, 841, TE_GETITEM, 1691, 6 )
	MisCancelAction(ClearMission, 84)
	
	MisNeed(MIS_NEED_DESP, "Принесите 6 <rКлубней Кактуса> Амосу (840, 3585)")
	MisNeed(MIS_NEED_ITEM, 1691, 6, 10, 6)
	
	MisResultTalk("<t>Хорошо! Начнем эксперимент. Приходи через год за результатами!")
	MisHelpTalk("<t>Хмм, так и не достал, что я просил?")
	MisResultCondition(HasMission, 84)
	MisResultCondition(HasItem, 1691, 6 )
	MisResultAction(TakeItem, 1691, 6)
	MisResultAction(ClearMission, 84)
	MisResultAction(SetRecord, 84)
	MisResultAction(AddExp, 150, 150)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1691 )	
	TriggerAction( 1, AddNextFlag, 84, 10, 6 )
	RegCurTrigger( 841 )

--Письмо Лене
	DefineMission( 154, "Письмо Лене", 85 )
	
	MisBeginTalk( "<t>Я все еще не могу добиться нужных результатов.<n><t>Почему бы тебе не передать это письмо Лене (883, 3520), может, ей нужна помощь?")
	MisBeginCondition(HasRecord, 84)
	MisBeginCondition(NoRecord, 85)
	MisBeginCondition(NoMission, 85)
	MisBeginAction(AddMission, 85)
	MisBeginAction(GiveItem, 4129, 1, 4)
	MisCancelAction(ClearMission, 85 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо Лене в Шайтан")

	MisHelpTalk("<t>Иди. Я больше ничем не смогу тебе помочь.")
	MisResultCondition(AlwaysFailure )

--Письмо Лене
	DefineMission( 155, "Письмо Лене", 85, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ты друг Амоса? Привет!")
	MisResultCondition(NoRecord, 85)
	MisResultCondition(HasMission, 85)
	MisResultCondition(HasItem, 4129, 1)
	MisResultAction(TakeItem, 4129, 1)
	MisResultAction(ClearMission, 85)
	MisResultAction(SetRecord, 85)
	MisResultAction(AddExp, 80, 80)

--Фальшивка
	DefineMission( 156, "Фальшивка", 86 )

	MisBeginTalk( "<t>Вот мое предложение: В посленее время врач из Ледыни собирал пот животных. И я хочу подшутить, мне нужны материалы для подмены.<n><t>Помоги мне собрать 3 пузырька <rТемной Воды> у  <bСкорпионышей> at (1184, 3557). Считай. Что это специальный заказ, хаха!")
	MisBeginCondition(HasRecord, 85)
	MisBeginCondition(NoMission, 86)
	MisBeginCondition(NoRecord, 86)
	MisBeginAction(AddMission, 86)
	MisBeginAction(AddTrigger, 861, TE_GETITEM, 1648, 3 )
	MisCancelAction(ClearMission, 86)
	
	MisNeed(MIS_NEED_DESP, "Собери 3 пузырька <rТемной Воды> и принесите Лене в Шайтан (883, 3520)")
	MisNeed(MIS_NEED_ITEM, 1648, 3, 10, 3)

	MisPrize(MIS_PRIZE_ITEM, 4308, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>Хаха! Отлично! Я точно его обдурю.")
	MisHelpTalk("<t>Ты так ничего и не принес? Поторопись!")
	MisResultCondition(HasMission, 86)
	MisResultCondition(HasItem, 1648, 3 )
	MisResultAction(TakeItem, 1648, 3)
	MisResultAction(ClearMission, 86)
	MisResultAction(SetRecord, 86)
	MisResultAction(AddExp, 250, 250)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1648 )	
	TriggerAction( 1, AddNextFlag, 86, 10, 3 )
	RegCurTrigger( 861 )

--Письмо Франклину
	DefineMission( 157, "Письмо Франклину", 87 )
	
	MisBeginTalk( "<t>У меня есть письмо, которое нужно доставить.<n><t>Можешь передать его строителю <bФранклину> ? Он очень дружелюбен и обязательно тебе поможет.<n><t>Его можно найти в Шайтане (901, 3668).")
	MisBeginCondition(HasRecord, 86)
	MisBeginCondition(NoRecord, 87)
	MisBeginCondition(NoMission, 87)
	MisBeginAction(AddMission, 87)
	MisBeginAction(GiveItem, 4130, 1, 4)
	MisCancelAction(ClearMission, 87 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправьте письмо строителю Франклину")

	MisHelpTalk("<t>Иди быстрее. Парнишка тебе обязательно поможет")
	MisResultCondition(AlwaysFailure )

--Письмо Франклину
	DefineMission( 158, "Письмо Франклину", 87, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>O, письмо от Лены! Спасибо!")
	MisResultCondition(NoRecord, 87)
	MisResultCondition(HasMission, 87)
	MisResultCondition(HasItem, 4130, 1)
	MisResultAction(TakeItem, 4130, 1)
	MisResultAction(ClearMission, 87)
	MisResultAction(SetRecord, 87)
	MisResultAction(AddExp, 120, 120)

--Лекарство от тошноты
	DefineMission( 159, "Лекарство от тошноты", 88 )

	MisBeginTalk( "<t>Мне нужно найти лекарство, чтобы вылечить недомогание, например <rЦветок Кактуса>, которого мне так не хватает. Отправляйся в (1031, 3556) и собери 3 <rЦветка Кактуса>, котороые падают с  <bКактуса>. Учитывая твой уровень, тебе не составит труда с ними справиться.<n><t>Кстати, никому не рассказывай про лекарство от тошноты.")
	MisBeginCondition(HasRecord, 87)
	MisBeginCondition(NoMission, 88)
	MisBeginCondition(NoRecord, 88)
	MisBeginAction(AddMission, 88)
	MisBeginAction(AddTrigger, 881, TE_GETITEM, 1692, 3 )
	MisCancelAction(ClearMission, 88)
	
	MisNeed(MIS_NEED_DESP, "Соберите 3 <rЦветок Кактуса> и поговорите с Франклином")
	MisNeed(MIS_NEED_ITEM, 1692, 3, 10, 3)

	MisPrize(MIS_PRIZE_ITEM, 4310, 1, 4)
	MisPrizeSelAll()	

	MisResultTalk("<t>Хочу сказать тебе спасибо.")
	MisHelpTalk("<t>Мне нужен всего один ингридиент! Не подведи!")
	MisResultCondition(HasMission, 88)
	MisResultCondition(HasItem, 1692, 3 )
	MisResultAction(TakeItem, 1692, 3)
	MisResultAction(ClearMission, 88)
	MisResultAction(SetRecord, 88)
	MisResultAction(AddExp, 400, 400)
	MisResultBagNeed(1)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1692 )	
	TriggerAction( 1, AddNextFlag, 88, 10, 3 )
	RegCurTrigger( 881 )

--Письмо
	DefineMission( 160, "Письмо", 89 )
	
	MisBeginTalk( "<t>Хоть мы и просили постоянно о помощи, ты значительно подрос.<n><t>Пожалуйста, отнеси это письмо  <bРеслине>, Наставнице Новичков (876, 3572).<n><t>Как только ты ее найдешь, она ознакомит тебя с инструкциями.")
	MisBeginCondition(HasRecord, 88)
	MisBeginCondition(NoRecord, 89)
	MisBeginCondition(NoMission, 89)
	MisBeginAction(AddMission, 89)
	MisBeginAction(GiveItem, 4127, 1, 4)
	MisCancelAction(ClearMission, 89 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо Наставнице в Шайтане")

	MisHelpTalk("<t>Поторопись к Реслине (876, 3572).")
	MisResultCondition(AlwaysFailure )

--Письмо
	DefineMission( 161, "Письмо", 89, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Спасибо за письмо. Похоже, ты завел много друзей.")
	MisResultCondition(NoRecord, 89)
	MisResultCondition(HasMission, 89)
	MisResultCondition(HasItem, 4127, 1)
	MisResultAction(TakeItem, 4127, 1)
	MisResultAction(ClearMission, 89)
	MisResultAction(SetRecord, 89)
	MisResultAction(AddExp, 200, 200)


--Письмо Малышу Мо
	DefineMission( 162, "Письмо Малышу Мо", 90 )
	
	MisBeginTalk( "<t>Я уже ничем не смогу тебе помочь.<n><t>Передай это письмо  <bМалышу Мо>, вдруг у него есть что-то для тебя. Его можно найти в Ледыни (1237, 613).")
	MisBeginCondition(HasRecord, 716)
	MisBeginCondition(NoRecord, 90)
	MisBeginCondition(NoMission, 90)
	MisBeginAction(AddMission, 90)
	MisBeginAction(GiveItem, 4131, 1, 4)
	MisCancelAction(ClearMission, 90 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправьте письмо Малышу Мо")

	MisHelpTalk("<t>Малыш Мо находится в точке (1237, 613).")
	MisResultCondition(AlwaysFailure )

--Письмо Палпину
	DefineMission( 163, "Письмо Палпину", 91 )
	
	MisBeginTalk( "<t>Если тебе больше нравится собирать предметы, чем сражаться, передай это письмо <bПалпину>  (1356, 483). У него есть для тебя задание.")
	MisBeginCondition(HasRecord, 716)
	MisBeginCondition(NoRecord, 91)
	MisBeginCondition(NoMission, 91)
	MisBeginAction(AddMission, 91)
	MisBeginAction(GiveItem, 4132, 1, 4)
	MisCancelAction(ClearMission, 91  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передай письмо бакалейщику Палпину")

	MisHelpTalk("<t>Почему ты не передал письмо Палпину? Он где-то здесь (1356, 483).")
	MisResultCondition(AlwaysFailure )


--Письмо Малышу Мо
	DefineMission( 164, "Письмо Малышу Мо", 90, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>It's good that you are here, I could use a helping hand.<n><t>Also, take note of your HP bar while in battle. That's right, the red bar shows your HP level. You will die when it reaches 0. Beware!<n><t>Beside eating \"Apples\", \"Cakes\" or other recovery potion, you can press the \"Insert\" key to increase HP/SP recovery rate.")
	MisResultCondition(NoRecord, 90)
	MisResultCondition(HasMission, 90)
	MisResultCondition(HasItem, 4131, 1)
	MisResultAction(TakeItem, 4131, 1)
	MisResultAction(ClearMission, 90)
	MisResultAction(SetRecord, 90)
	MisResultAction(AddExp, 50, 50)

--Забавный кальмарчик
	DefineMission( 165, "Забавный кальмарчик", 92 )

	MisBeginTalk( "<t>Последнее время Снежные кальмарчики совсем разыгрались. Они атаковали меня, когда у меня был перерыв. Помоги мне преподать им урок, вернись, когда убьешь 6  <bСнежных Кальмарчиков>.<n><t>Отнесись к этому серьезно!<n><t>Я достаточно хорошо знаю твои способности!")
	MisBeginCondition(HasRecord, 90)
	MisBeginCondition(NoMission, 92)
	MisBeginCondition(NoRecord, 92)
	MisBeginAction(AddMission, 92)
	MisBeginAction(AddTrigger, 921, TE_KILL, 235, 6 )
	MisCancelAction(ClearMission, 92)
	
	MisNeed(MIS_NEED_DESP, "Убейте 6 <bСнежных Кальмарчиков> и сообщите Малышу Мо")
	MisNeed(MIS_NEED_KILL, 235, 6, 10, 6)
	
	MisResultTalk("<t>Хорошо. Теперь я могу отдохнуть.")
	MisHelpTalk("<t>Ты так ничего и не сделал? Это не должно быть проблемой.")
	MisResultCondition(HasMission, 92)
	MisResultCondition(HasFlag, 92, 15 )
	MisResultAction(AddExp, 150, 150)
	MisResultAction(ClearMission, 92)
	MisResultAction(SetRecord, 92)
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 235 )	
	TriggerAction( 1, AddNextFlag, 92, 10, 6 )
	RegCurTrigger( 921 )

--Письмо Рэю
	DefineMission( 166, "Письмо Рэю", 93 )
	
	MisBeginTalk( "<t>Я уже ничем не смогу тебе помочь. Передай это письмо  <bРэю>  (1365, 570). Он должен тебе помочь.")
	MisBeginCondition(HasRecord, 92)
	MisBeginCondition(NoRecord, 93)
	MisBeginCondition(NoMission, 93)
	MisBeginAction(AddMission, 93)
	MisBeginAction(GiveItem, 4133, 1, 4)
	MisCancelAction(ClearMission, 93  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передай письмо Рэю в Ледыни")

	MisHelpTalk("<t>Рэй в точке (1365, 570). Иди уже!")
	MisResultCondition(AlwaysFailure )

--Письмо Рэю
	DefineMission( 167, "Письмо Рэю", 93, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>O! Тебя послал Малыш Мо? Великолепно!")
	MisResultCondition(NoRecord, 93)
	MisResultCondition(HasMission, 93)
	MisResultCondition(HasItem, 4133, 1)
	MisResultAction(TakeItem, 4133, 1)
	MisResultAction(ClearMission, 93)
	MisResultAction(SetRecord, 93)
	MisResultAction(AddExp, 80, 80)

--Лишним не будет
	DefineMission( 168, "Лишним не будет", 94 )

	MisBeginTalk( "<t>Тяжелое время настало для жителей Ледыни, так что задание следующее: <bСнежные Свинокрылы> потребляют слишком много пищи и совсем отбились от рук, отправляйся в (1179, 371) и уничтожь 8  <bСнежных Свинокрылов>.")
	MisBeginCondition(HasRecord, 93)
	MisBeginCondition(NoMission, 94)
	MisBeginCondition(NoRecord, 94)
	MisBeginAction(AddMission, 94)
	MisBeginAction(AddTrigger, 941, TE_KILL, 239, 8 )
	MisCancelAction(ClearMission, 94)

	MisNeed(MIS_NEED_DESP, "Убейте 8  <bСнежных Свинокрылов> и вернитесь к Рэю в Ледынь (1365, 570)")
	MisNeed(MIS_NEED_KILL, 239, 8, 10, 8)

	MisPrize(MIS_PRIZE_ITEM, 9, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>Все? Спасибо! У этих свинокрылов отменный аппетит­Похоже, мне нужно готовить шашлык из свинины почаще.")
	MisHelpTalk("<t>Все еще ничего?")
	MisResultCondition(HasMission, 94)
	MisResultCondition(HasFlag, 94, 17 )
	MisResultAction(AddExp, 250, 250)
	MisResultAction(ClearMission, 94)
	MisResultAction(SetRecord, 94)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 239 )	
	TriggerAction( 1, AddNextFlag, 94, 10, 8 )
	RegCurTrigger( 941 )

--Письмо Ханне
	DefineMission( 169, "Письмо Ханне", 95 )
	
	MisBeginTalk( "<t>Пока я тут раздаю еду всем желающим, отнеси это письмо портнихе Ханне (1349, 539). По-моему, у нее есть для тебя задание." )
	MisBeginCondition(HasRecord, 94)
	MisBeginCondition(NoRecord, 95)
	MisBeginCondition(NoMission, 95)
	MisBeginAction(AddMission, 95)
	MisBeginAction(GiveItem, 4134, 1, 4)
	MisCancelAction(ClearMission, 95  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо портнихе - Ханне")

	MisHelpTalk("<t>Чего же ты ждешь? Поспеши!")
	MisResultCondition(AlwaysFailure )

--Письмо Ханне
	DefineMission( 170, "Письмо Ханне", 95, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ох, дорогуша! Мне так нужна твоя помощь!")
	MisResultCondition(NoRecord, 95)
	MisResultCondition(HasMission, 95)
	MisResultCondition(HasItem, 4134, 1)
	MisResultAction(TakeItem, 4134, 1)
	MisResultAction(ClearMission, 95)
	MisResultAction(SetRecord, 95)
	MisResultAction(AddExp, 120, 120)

--Ошибочная передача
	DefineMission( 171, "Ошибочная передача", 96 )

	MisBeginTalk( "<t>Хохо, у меня хорошие новости! Похоже, недалеко от Ледыни появилась стая Оленят. Учитывая нынешние обстоятельства, эта стая оленей - просто деликатес, посланный Богами. Я хочу, чтобы ты отправился в (1164, 305) и поймал 12  <bОленят> , чтобы мы сегодня подкрепились.")
	MisBeginCondition(HasRecord, 95)
	MisBeginCondition(NoMission, 96)
	MisBeginCondition(NoRecord, 96)
	MisBeginAction(AddMission, 96)
	MisBeginAction(AddTrigger, 961, TE_KILL, 238, 12 )
	MisCancelAction(ClearMission, 56)
	

	MisNeed(MIS_NEED_DESP, "Поймайте 12 <bОленят> и передайте их Ханне (1349, 539)")
	MisNeed(MIS_NEED_KILL, 238, 12, 10, 12)

	MisPrize(MIS_PRIZE_ITEM, 4309, 1, 4)
	MisPrizeSelAll()
	
	MisResultTalk("<t>Хорошо! У тебя получилось! Я брошу все дела и сразу приступлю к разделыванию этого деликатеса!")
	MisHelpTalk("<t>Ты еще не отправился на охоту? Поторопись, пожалуйста!")
	MisResultCondition(HasMission, 96)
	MisResultCondition(HasFlag, 96, 21 )
	MisResultAction(ClearMission, 96)
	MisResultAction(AddExp, 400, 400)
	MisResultAction(SetRecord, 96)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 238 )	
	TriggerAction( 1, AddNextFlag, 96, 10, 12 )
	RegCurTrigger( 961 )


--Письмо Анжеле
	DefineMission( 172, "Письмо Анжеле", 97 )
	
	MisBeginTalk( "<t>Хоть мы и просили помощи, ты действительно подрос.<n><t>Пожалуйста, передай это письмо Наставнице <bАнжеле> (1315, 507).<n><t>Когда ты ее найдешь, она даст тебе необходимые инструкции.")
	MisBeginCondition(HasRecord, 96)
	MisBeginCondition(NoRecord, 97)
	MisBeginCondition(NoMission, 97)
	MisBeginAction(AddMission, 97)
	MisBeginAction(GiveItem, 4135, 1, 4)
	MisCancelAction(ClearMission, 97  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Передайте письмо Наставнице Новичков в Ледыни")

	MisHelpTalk("<t>Анжела в точке (1315, 507). Поторопись, пожалуйста.")
	MisResultCondition(AlwaysFailure )


--Письмо Анжеле
	DefineMission( 173, "Письмо Анжеле", 97, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Спасибо за письмо, похоже ты завел много друзей в Ледыни.")
	MisResultCondition(NoRecord, 97)
	MisResultCondition(HasMission, 97)
	MisResultCondition(HasItem, 4135, 1)
	MisResultAction(TakeItem, 4135, 1)
	MisResultAction(ClearMission, 97)
	MisResultAction(SetRecord, 97)
	MisResultAction(AddExp, 200, 200)

--Карьера охотника
	DefineMission( 174, "Карьера охотника", 59, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("Отлично! Раз уж наставница новичков тебя послала, ты, должно быть, талантливый. Выполни мои задания для того, чтобы стать <rОхотником>.")
	MisResultCondition(NoRecord, 59)
	MisResultCondition(HasMission, 59)
	MisResultCondition(HasItem, 4117, 1)
	MisResultAction(TakeItem, 4117, 1)
	MisResultAction(ClearMission, 59)
	MisResultAction(SetRecord, 59)

--Карьера охотника
	DefineMission( 175, "Карьера охотника", 98 )

	MisBeginTalk( "<t>Ты здесь, чтобы получить Наставления Охотнику? Как отважно.<n><t>Но только мужества недостаточно. Чтобы заработать <rНаставления Охотнику> тебе нужно доказать, что у тебя достаточно ловкости и точности.<n><t>Отправляйся в <pЛедынь> и убей 12  <bБелых Оленят> (1325, 305).<n><t>Если ты справишься с заданием, считай, что ты справился с первым испытанием.")
	MisBeginCondition(HasRecord, 59)
	MisBeginCondition(NoMission, 98)
	MisBeginCondition(NoRecord, 98)
	MisBeginAction(AddMission, 98)
	MisBeginAction(AddTrigger, 981, TE_KILL, 240, 12 )
	MisCancelAction(ClearMission, 98)
	

	MisNeed(MIS_NEED_DESP, "Убейте 12  <bБелых Оленят> и сообщите обратно Рэю в Ледынь (1365, 570)")
	MisNeed(MIS_NEED_KILL, 240, 12, 10, 12)
	
	MisResultTalk("<t>Ты меня не подвел. Ты завершил первое испытание.")
	MisHelpTalk("<t>Что такое? Решил сдаться?")
	MisResultCondition(HasMission, 98)
	MisResultCondition(HasFlag, 98, 21 )
	MisResultAction(ClearMission, 98)
	MisResultAction(SetRecord, 98)
	MisResultAction(AddExp, 300, 300)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 240 )	
	TriggerAction( 1, AddNextFlag, 98, 10, 12 )
	RegCurTrigger( 981 )


--Карьера охотника
	DefineMission( 176, "Карьера охотника", 99 )
	
	MisBeginTalk( "<t>Вторая часть испытания очень легкая. Передай это письмо Малышу Мо (1237, 613) и он тебе все расскажет.")
	MisBeginCondition(HasRecord, 98)
	MisBeginCondition(NoRecord, 99)
	MisBeginCondition(NoMission, 99)
	MisBeginAction(AddMission, 99)
	MisBeginAction(GiveItem, 4136, 1, 4)
	MisCancelAction(ClearMission, 99  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправьте письмо Малышу Мо")

	MisHelpTalk("<t>Малыш Мо находится в точке (1237, 613).")
	MisResultCondition(AlwaysFailure )

--Карьера охотника
	DefineMission( 177, "Карьера охотника", 99, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ух ты, ты закончил первое задание. Поздравляю.")
	MisResultCondition(NoRecord, 99)
	MisResultCondition(HasMission, 99)
	MisResultCondition(HasItem, 4136, 1)
	MisResultAction(TakeItem, 4136, 1)
	MisResultAction(ClearMission, 99)
	MisResultAction(SetRecord, 99)
	MisResultAction(AddExp, 100, 100)

--Карьера охотника
	DefineMission( 178, "Карьера охотника", 150 )

	MisBeginTalk( "<t>Итак, скажу тебе вторую часть испытаний. Ты должен собрать 3 <bФлакона> и вернутся ко мне. Эти флаконы падают со <rСнежных свинокрылов> по координатам (1179, 371).")
	MisBeginCondition(HasRecord, 99)
	MisBeginCondition(NoMission, 150)
	MisBeginCondition(NoRecord, 150)
	MisBeginAction(AddMission, 150)
	MisBeginAction(AddTrigger, 1501, TE_GETITEM, 1779, 3 )
	MisCancelAction(ClearMission, 150)

	MisNeed(MIS_NEED_DESP, "Собери 3 <bФлакона> и вернись к Малышу Мо")
	MisNeed(MIS_NEED_ITEM, 1779, 3, 10, 3)
	
	MisResultTalk("Ты все сделал! Я действительно горжусь тобой!")
	MisHelpTalk("Не выходит? Убей этих хрюшек, если хочешь действительно стать охотником!")
	MisResultCondition(HasMission, 150)
	MisResultCondition(HasItem, 1779, 3 )
	MisResultAction(TakeItem, 1779, 3)
	MisResultAction(ClearMission, 150)
	MisResultAction(SetRecord, 150)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1779 )	
	TriggerAction( 1, AddNextFlag, 150, 10, 3 )
	RegCurTrigger( 1501 )

--Карьера охотника
	DefineMission( 179, "Карьера охотника", 151 )
	
	MisBeginTalk( "Я думаю,что ты готов стать Охотником. Вот возьми <rРуководство охотника> и отнеси его Рею,чтобы он сделал тебя охотником.")
	MisBeginCondition(HasRecord, 150)
	MisBeginCondition(NoRecord, 151)
	MisBeginCondition(NoMission, 151)
	MisBeginAction(AddMission, 151)
	MisBeginAction(GiveItem, 3955, 1, 4)
	MisCancelAction(ClearMission, 151 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Поговори с Реем в Ледыни")

	MisHelpTalk("Что ты делаешь? Что-то не получается?")
	MisResultCondition(AlwaysFailure )


--Карьера охотника
	DefineMission( 180, "Карьера охотника", 151, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Поздравляю, теперь ты стал Охотником. Будь осторожен, так как тебе будут встречатся многочисленные опасности.<n><t>(Ты активировал свой класс у Рея.<n><t>Обязательно купи оружие у кузнеца Баша, доспехи, перчатки и ботинки у портной Ханнах и навыки у бакалейщика Паплин)")
	MisResultCondition(NoRecord, 151)
	MisResultCondition(HasMission, 151)
	MisResultCondition(HasItem, 3955, 1)
	MisResultCondition(PfEqual, 0 )
	MisResultAction(TakeItem, 3955, 1)
	MisResultAction(ClearMission, 151)
	MisResultAction(SetRecord, 151)
	MisResultAction(AddExp, 100, 100)
	MisResultAction(SetProfession, 2)
	MisResultAction(GiveItem, 3187, 1, 4)
	MisResultAction(GiveItem, 25, 1, 4)
	MisResultBagNeed(2)


--Письмо Палпину
	DefineMission( 181, "Письмо Палпину", 91, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Хорошо, что ты здесь. Мне нужна помощь.")
	MisResultCondition(NoRecord, 91)
	MisResultCondition(HasMission, 91)
	MisResultCondition(HasItem, 4132, 1)
	MisResultAction(TakeItem, 4132, 1)
	MisResultAction(ClearMission, 91)
	MisResultAction(SetRecord, 91)
	MisResultAction(AddExp, 50, 50)


--Коллекция браслетов
	DefineMission( 182, "Коллекция браслетов", 152 )

	MisBeginTalk( "<t>Как видишь я коллекционер, но недавно я заметил, что в моей коллекции не хватает <rЦупальца осьминога>. Можешь пожалуйста принести мне 3 <rЩупальца осьминога>?<n><t>Выбить их можно со <bСнегоплюя>, который находится по координатам (1465, 402). Они часто бегают недалеко от выхода из города.<n><t>Я думаю это задание тебе вполне по силам!")
	MisBeginCondition(HasRecord, 91)
	MisBeginCondition(NoMission, 152)
	MisBeginCondition(NoRecord, 152)
	MisBeginAction(AddMission, 152)
	MisBeginAction(AddTrigger, 1521, TE_GETITEM, 1704, 3 )
	MisCancelAction(ClearMission, 152)
	
	MisNeed(MIS_NEED_DESP, "Собери 3 <rЩупальца осьминога> и вернись к Палпину (1356, 483)")
	MisNeed(MIS_NEED_ITEM, 1704, 3, 10, 3)
	
	MisResultTalk("Прекрасно! Наконецто я собрал полную коллекцию.<n><t>Спасибо тебе! Ты меня выручил, и я у тебя теперь в долгу.")
	MisHelpTalk("<t>Что? Возникли проблемы? Слишком тяжело для тебя? Они находятся недалеко от главного выхода, поищи.")
	MisResultCondition(HasMission, 152)
	MisResultCondition(HasItem, 1704, 3 )
	MisResultAction(TakeItem, 1704, 3)
	MisResultAction(ClearMission, 152)
	MisResultAction(SetRecord, 152)
	MisResultAction(AddExp, 150, 150)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 1704 )	
	TriggerAction( 1, AddNextFlag, 152, 10, 3 )
	RegCurTrigger( 1521 )

--Письмо для Яски
	DefineMission( 183, "Письмо для Яски", 153 )
	
	MisBeginTalk( "<t>И снова я нуждаюсь в твоей помощи. Пожалуйста отнеси это письмо <bЯски>, который находится по координатам (1290, 540). Он тебе все расскажет и даже поможет чем сможет.")
	MisBeginCondition(HasRecord, 152)
	MisBeginCondition(NoRecord, 153)
	MisBeginCondition(NoMission, 153)
	MisBeginAction(AddMission, 153)
	MisBeginAction(GiveItem, 4137, 1, 4)
	MisCancelAction(ClearMission, 153 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Яски в Ледыни в точку (1290, 540).")

	MisHelpTalk("Пока мой друг, больше я ничем не могу помочь, помочь тебе может только Яски.")
	MisResultCondition(AlwaysFailure )

--Письмо для Яски
	DefineMission( 184, "Письмо для Яски", 153, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ох, Ты пришел от Палпина? Отлично!")
	MisResultCondition(NoRecord, 153)
	MisResultCondition(HasMission, 153)
	MisResultCondition(HasItem, 4137, 1)
	MisResultAction(TakeItem, 4137, 1)
	MisResultAction(ClearMission, 153)
	MisResultAction(SetRecord, 153)
	MisResultAction(AddExp, 80, 80)

--Приготовление
	DefineMission( 185, "Приготовление", 154 )

	MisBeginTalk( "<t>Совсем недавно, всвязи с моими эксперементами, я потерял очень много флаконов...<n><t>Помоги мне пожалуйста! Отправляйся в точку (1118, 343) и выбей 2 <rФлакона> со <bСнежных свинокрылов>. Таким образом, ты меня реально спасешь от отчаяния.")
	MisBeginCondition(HasRecord, 153)
	MisBeginCondition(NoMission, 154)
	MisBeginCondition(NoRecord, 154)
	MisBeginAction(AddMission, 154)
	MisBeginAction(AddTrigger, 1541, TE_GETITEM, 1779, 2 )
	MisCancelAction(ClearMission, 154)
	
	MisNeed(MIS_NEED_DESP, "Собери 2 <rФлакона> и вернимсь к Яски в Ледынь в точку (964, 422)")
	MisNeed(MIS_NEED_ITEM, 1779, 2, 10, 2)

	MisPrize(MIS_PRIZE_ITEM, 4308, 1, 4)
	MisPrizeSelAll()	

	MisResultTalk("<t>Хохо! Ты принес их, благодарю тебя!")
	MisHelpTalk("<t>Это всего лишь 2 флакона! Вперед!")
	MisResultCondition(HasMission, 154)
	MisResultCondition(HasItem, 1779, 2 )
	MisResultAction(TakeItem, 1779, 2)
	MisResultAction(ClearMission, 154)
	MisResultAction(SetRecord, 154)
	MisResultAction(AddExp, 250, 250)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1779 )	
	TriggerAction( 1, AddNextFlag, 154, 10, 2 )
	RegCurTrigger( 1541 )

--Письмо Белинде
	DefineMission( 186, "Письмо Белинде", 155 )
	
	MisBeginTalk( "<t>Пожалуйста передай это письмо <bБелинде>, Она находится по координатам (1360, 519) В Ледыни.")
	MisBeginCondition(HasRecord, 154)
	MisBeginCondition(NoRecord, 155)
	MisBeginCondition(NoMission, 155)
	MisBeginAction(AddMission, 155)
	MisBeginAction(GiveItem, 4138, 1, 4)
	MisCancelAction(ClearMission, 155 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Белинде в Ледыни")

	MisHelpTalk("<t>Хотя я тебя хорошо знаю, но тебе все еще нужно заплатить арендную плату. Однако я могу сделать тебе отличную скидку.")
	MisResultCondition(AlwaysFailure )

--Письмо Белинде
	DefineMission( 187, "Письмо Белинде", 155, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Я смотрю хозяин гостиницы порекомендовал мне тебя. Если ты освободился, то мне нужна твоя помощь.")
	MisResultCondition(NoRecord, 155)
	MisResultCondition(HasMission, 155)
	MisResultCondition(HasItem, 4138, 1)
	MisResultAction(TakeItem, 4138, 1)
	MisResultAction(ClearMission, 155)
	MisResultAction(SetRecord, 155)
	MisResultAction(AddExp, 120, 120)

--Слеза
	DefineMission( 188, "Слеза", 156 )

	MisBeginTalk( "<t>Мне очень нужны слёзы <bОленят> находятся в точке (1164, 305) и <bБелых оленят> находятся в точке (1325, 305) которые  плавят в драгоценности, чтобы те приносили удачу!<n><t>Можешь пожалуйста найти 1 для меня такую?")
	MisBeginCondition(HasRecord, 155)
	MisBeginCondition(NoMission, 156)
	MisBeginCondition(NoRecord, 156)
	MisBeginAction(AddMission, 156)
	MisBeginAction(AddTrigger, 1561, TE_GETITEM, 1681, 1 )
	MisCancelAction(ClearMission, 156)
	
	MisNeed(MIS_NEED_DESP, "Собери 1 <bСлезу> и вернись к Белинде в Ледынь по координатам (1360, 519)")
	MisNeed(MIS_NEED_ITEM, 1681, 1, 10, 1)

	MisPrize(MIS_PRIZE_ITEM, 4310, 1, 4)
	MisPrizeSelAll()	

	MisResultTalk("<t>Это прекрасно! Теперь я могу сделать ожирелье!")
	MisHelpTalk("<t>Ты не можешь выбить слезу? Постарайся пожалуйста.")
	MisResultCondition(HasMission, 156)
	MisResultCondition(HasItem, 1681, 1 )
	MisResultAction(TakeItem, 1681, 1)
	MisResultAction(ClearMission, 156)
	MisResultAction(SetRecord, 156)
	MisResultAction(AddExp, 400, 400)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1681 )	
	TriggerAction( 1, AddNextFlag, 156, 10, 1 )
	RegCurTrigger( 1561 )

--Письмо Анжеле
	DefineMission( 189, "Письмо Анжеле", 157 )
	
	MisBeginTalk( "<t>Мне снова нужна твоя помощь в одном очень важном деле.<n><t>Пожалуйста отнеси письмо <bАнжеле>, Наставнице новичков в точку (1315, 507).<n><t>Дальше она даст тебе дальнейшие указания.")
	MisBeginCondition(HasRecord, 156)
	MisBeginCondition(NoRecord, 157)
	MisBeginCondition(NoMission, 157)
	MisBeginAction(AddMission, 157)
	MisBeginAction(GiveItem, 4135, 1, 4)
	MisCancelAction(ClearMission, 157 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Наставнице - Анжеле в Ледыни")

	MisHelpTalk("<t>Анжела находится в точке (1315, 507). Пожалуйста поспеши.")
	MisResultCondition(AlwaysFailure )

--Письмо Анжеле
	DefineMission( 190, "Письмо Анжеле", 157, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Спасибо тебе за письмо,я крайне благодарна тебе.")
	MisResultCondition(NoRecord, 157)
	MisResultCondition(HasMission, 157)
	MisResultCondition(HasItem, 4135, 1)
	MisResultAction(TakeItem, 4135, 1)
	MisResultAction(ClearMission, 157)
	MisResultAction(SetRecord, 157)
	MisResultAction(AddExp, 200, 200)


--Карьера Мореплавателя
	DefineMission( 191, "Карьера Мореплавателя", 61, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("Хорошо. Поскольку тебя порекомендовала наставница новичков, ты должен соответствовать уровню. Выполни задания, которые я для тебя приготовил чтобы стать <rИсследователем>.")
	MisResultCondition(NoRecord, 61)
	MisResultCondition(HasMission, 61)
	MisResultCondition(HasItem, 4119, 1)
	MisResultAction(TakeItem, 4119, 1)
	MisResultAction(ClearMission, 61)
	MisResultAction(SetRecord, 61)

--Карьера Мореплавателя
	DefineMission( 192, "Карьера Мореплавателя", 158 )

	MisBeginTalk( "<t>Ты здесь, для того чтобы стать Исследователем? Исследователи - грозы морей, скажу тебе одно. Для того, чтобы им стать, тебе нужны базовые навыки выживания. Ты должен заработать <rСертификат выживания>, для этого сходи <На побережье Аргента> и убей 12 <bСвинокрылов> в точке (1950, 2563). Когда завершишь это испытание, я дам тебе новое.")
	MisBeginCondition(HasRecord, 61)
	MisBeginCondition(NoMission, 158)
	MisBeginCondition(NoRecord, 158)
	MisBeginAction(AddMission, 158)
	MisBeginAction(AddTrigger, 1581, TE_KILL, 237, 12 )
	MisCancelAction(ClearMission, 158)
	
	MisNeed(MIS_NEED_DESP, "Убей 12 <bСвинокрылов> и вернись в Малышу Даниэлю в точку (2193, 2730)")
	MisNeed(MIS_NEED_KILL, 237, 12, 10, 12)
	
	MisResultTalk("<t>Ты все прекрасно сделал!<n><t>Первая часть твоих испытаний завершена, тебя ждет вторая!")
	MisHelpTalk("<t>Ты не выполнил моего требования. Пока ты их не убьешь, я не дам тебе Сертификат выживания.")
	MisResultCondition(HasMission, 158)
	MisResultCondition(HasFlag, 158, 21 )
	MisResultAction(ClearMission, 158)
	MisResultAction(SetRecord, 158)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 237 )	
	TriggerAction( 1, AddNextFlag, 158, 10, 12 )
	RegCurTrigger( 1581 )


--Карьера Мореплавателя
	DefineMission( 193, "Карьера Мореплавателя", 159 )
	
	MisBeginTalk( "<t>Теперь иди к <bГенералу Вильяму>, он находиться по координатам (2277, 2831) с этим письмом, чтобы он дал тебе дальнейшие указания. Он даст тебе последнее испытание, для приобретения профессии.")
	MisBeginCondition(HasRecord, 158)
	MisBeginCondition(NoRecord, 159)
	MisBeginCondition(NoMission, 159)
	MisBeginAction(AddMission, 159)
	MisBeginAction(GiveItem, 4139, 1, 4)
	MisCancelAction(ClearMission, 159  )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправь письмо Генералу - Вильяму")

	MisHelpTalk("<t>Посппеши! Тебе осталось совсем чуть-чуть!!")
	MisResultCondition(AlwaysFailure )

--Карьера Мореплавателя
	DefineMission( 194, "Карьера Мореплавателя", 159, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ох, новый путешественник. Я надеюсь, что ты готов к последнему испытанию.")
	MisResultCondition(NoRecord, 159)
	MisResultCondition(HasMission, 159)
	MisResultCondition(HasItem, 4139, 1)
	MisResultAction(TakeItem, 4139, 1)
	MisResultAction(ClearMission, 159)
	MisResultAction(SetRecord, 159)
	MisResultAction(AddExp, 100, 100)

--Карьера Мореплавателя
	DefineMission( 195, "Карьера Мореплавателя", 160 )

	MisBeginTalk( "<t>На северо-востоке от <pСеребрянных шахт> есть болотные духи. Ты должен принести мне 2 <bОтравленных фрукта> ,которые можно выбих с них, и вернись ко мне.")
	MisBeginCondition(HasRecord, 159)
	MisBeginCondition(NoMission, 160)
	MisBeginCondition(NoRecord, 160)
	MisBeginAction(AddMission, 160)
	MisBeginAction(AddTrigger, 1601, TE_GETITEM, 1595, 2 )
	MisCancelAction(ClearMission, 160)

	MisNeed(MIS_NEED_DESP, "Собери 2 <bОтравленных фрукта> и вернись к Вильяму в точку (2277, 2831)")
	MisNeed(MIS_NEED_ITEM, 1595, 2, 10, 2)
	
	MisResultTalk("<t>Неплохо, ты все сделал!<n><t>Поздравляю! Тебя ждет опасная и загадочная жизнь, но одновременно очень интересная и захватывающая...")
	MisHelpTalk("<t>Сделай то,что я просил,или ты никогда не станешь Исследователем.")
	MisResultCondition(HasMission, 160)
	MisResultCondition(HasItem, 1595, 2 )
	MisResultAction(TakeItem, 1595, 2)
	MisResultAction(ClearMission, 160)
	MisResultAction(SetRecord, 160)
	MisResultAction(AddExp, 300, 300)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1595 )	
	TriggerAction( 1, AddNextFlag, 160, 10, 2 )
	RegCurTrigger( 1601 )

--Карьера Мореплавателя
	DefineMission( 196, "Карьера Мореплавателя", 161 )
	
	MisBeginTalk( "<t>Вот возьми <rКомпас выживания> и передай его Малышу Даниэлю, который находится по координатам (2193, 2730). Это будет твоим доказательством для того, чтобы наконец стать Исследователем.")
	MisBeginCondition(HasRecord, 160)
	MisBeginCondition(NoRecord, 161)
	MisBeginCondition(NoMission, 161)
	MisBeginAction(AddMission, 161)
	MisBeginAction(GiveItem, 3962, 1, 4)
	MisCancelAction(ClearMission, 161 )
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отнеси Компас выживания Малышу Даниэлю в Аргенте в точку (2193, 2730)")

	MisHelpTalk("<t>Поспеши. Или ты не хочешь стать Исследователем?")
	MisResultCondition(AlwaysFailure )

--Карьера Мореплавателя
	DefineMission( 197, "Карьера Мореплавателя", 161, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Поздравляю! Теперь ты Исследователь! Тебе предстоят очень интересные и захватывающие путешествия по миру!<n><t>(Вперед, иди к Малышу Даниэлю, чтобы стать Исследователем<n><t>А также купи оружие у кузнеца Голди, доспехи,ботинки и перчатки у портной бабушки Нилы и навыки у бакалейщика Джимберли. Только не забудь!)")
	MisResultCondition(NoRecord, 161)
	MisResultCondition(HasMission, 161)
	MisResultCondition(HasItem, 3962, 1)
	MisResultAction(TakeItem, 3962, 1)
	MisResultAction(ClearMission, 161)
	MisResultAction(SetRecord, 161)
	MisResultAction(AddExp, 100, 100)
	MisResultAction(SetProfession, 4)
	MisResultAction(GiveItem, 867, 1, 4)
	MisResultAction(GiveItem, 3227, 1, 4)
	MisResultBagNeed(2)


--Низ. ур. торговля
	DefineMission( 198, "Низ. ур. торговля", 162 )

	MisBeginTalk( "<t> Если хочешь получить низ. ур. торговли, то тебе нужно принести мне 40 бревен.<n><t>(Получить дерево можно от игроков, либо набить его самому, но для этого нужно иметь навык Рубка Леса,который продаётся у Бакалейщиков.Для него ты должен пройти несколько Исторических заданий. Одень топор и иди руби дерево. Как я уже говорил,книга навыков продаётся у любого бакалейщика<n><t>Также очки мирные навыки даются за исторический квест, запомни это. Взять который ты можешь у наставницы в Аргенте, но только с 10 уровня.)")
	MisBeginCondition(NoMission, 162)
	MisBeginCondition(NoItem, 4605, 1)
	MisBeginCondition(LvCheck, ">", 19 )
	MisBeginAction(AddMission, 162)
	MisBeginAction(AddTrigger, 1621, TE_GETITEM, 4543, 40 )
	MisCancelAction(ClearMission, 162)

	MisNeed(MIS_NEED_DESP, "Помоги торговцу Сидорфу, который находиться в точке (799, 3659) нарубить 40 дерева")
	MisNeed(MIS_NEED_ITEM, 4543, 40, 10, 40)
	
	MisResultTalk("<t>Хорошо! Ты выполнил мою просьбу. Я крайне благодарен тебе.")
	MisHelpTalk("<t>Почему ты ещё даже не начал? Или ты не хочешь получить торговое разрешение?")
	MisResultCondition(HasMission, 162)
	MisResultCondition(HasItem, 4543, 40 )
	MisResultAction(TakeItem, 4543, 40 )
	MisResultAction(ClearMission, 162)
	MisResultAction(SetRecord, 162)
	MisResultAction(GiveItem, 4605, 1, 4)
	MisResultAction(SetTradeItemLevel, 1 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4543 )	
	TriggerAction( 1, AddNextFlag, 162, 10, 40 )
	RegCurTrigger( 1621 )

--Ср. ур. торговля
	DefineMission( 199, "Ср. ур. торговля", 163 )

	MisBeginTalk( "<t>Если хочешь получить сред. ур. торговли то тебе нужно принести мне 40 шт. Кристаллической руды.<n><t>(Руду ты можешь приобрести у игроков либо добыть самому. Одень кирку,для того чтобы добывать руду. Навыки добычи руды ты можешь купить у любого бакалейщика<n><t>Чтобы у тебя были навыки добычи руды,или иначе любые мирные навыки,ты должен проходить Исторические задания. Возьми этот квест у наставницы ,но только с 10ур.)<n><t>Также купи себе кирку у кузнеца.")
	MisBeginCondition(NoMission, 163)
	MisBeginCondition(HasItem, 4605, 1)
	MisBeginCondition(TradeItemDataCheck, ">", 99 )
	MisBeginCondition(LvCheck, ">", 39)
	MisBeginCondition(TradeItemLevelCheck, "=", 1)
	MisBeginAction(AddMission, 163)
	MisBeginAction(AddTrigger, 1631, TE_GETITEM, 4546, 40 )
	MisCancelAction(ClearMission, 163)

	MisNeed(MIS_NEED_DESP, "Помоги торговцу Сидорфу в Шайтане в точке (799, 3659) добыть 40 Кристалличкой руды")
	MisNeed(MIS_NEED_ITEM, 4546, 40, 10, 40)
	
	MisResultTalk("<t>Благодарю,теперь это Комерческое соглашение твоё!")
	MisHelpTalk("<t>Почему ты даже не начинал? Не хочешь получить торговое разрешение?")
	MisResultCondition(HasMission, 163)
	MisResultCondition(HasItem, 4546, 40 )
	MisResultCondition(HasItem, 4605, 1 )
	MisResultAction(TakeItem, 4546, 40)
	MisResultAction(ClearMission, 163)
	MisResultAction(SetRecord, 163)
	MisResultAction(SetTradeItemLevel, 2 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4546 )	
	TriggerAction( 1, AddNextFlag, 163, 10, 40 )
	RegCurTrigger( 1631 )


--Высокоуровневое торговое разрешение
	DefineMission( 149, "Высокоуровневое торговое разрешение", 164 )

	MisBeginTalk( "<t>У меня есть комерческое соглашение высшего уровня. Если хочешь, чтобы я его тебе дал, ты должен мне помочь. Принеси мне 40 Енергоруды, и я отдам тебе его с гордостью.")
	MisBeginCondition(NoMission, 164)
	MisBeginCondition(HasItem, 4605, 1)
	MisBeginCondition(TradeItemDataCheck, ">", 399 )
	MisBeginCondition(LvCheck, ">", 59)
	MisBeginCondition(TradeItemLevelCheck, "=", 2)
	MisBeginAction(AddMission, 164)
	MisBeginAction(AddTrigger, 1641, TE_GETITEM, 4544, 40 )
	MisCancelAction(ClearMission, 164)

	MisNeed(MIS_NEED_DESP, "Помоги добыть 40 Енергоруды торговцу Сидорфу в Шайтане в точке (799, 3659)")
	MisNeed(MIS_NEED_ITEM, 4544, 40, 10, 40)
	
	MisResultTalk("<t>Отлично! Теперь торговое разрешение высшего уровня твоё!")
	MisHelpTalk("<t>Почему ты даже не начал? Не хочешь получить <t>Почему ты даже не начал? Не хочешь получить комерческое соглашение высшего уровня?")
	MisResultCondition(HasMission, 164)
	MisResultCondition(HasItem, 4544, 40 )
	MisResultCondition(HasItem, 4605, 1 )
	MisResultAction(TakeItem, 4544, 40)
	MisResultAction(ClearMission, 164)
	MisResultAction(SetRecord, 164)
	MisResultAction(SetTradeItemLevel, 3 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4544 )
	TriggerAction( 1, AddNextFlag, 164, 10, 40 )
	RegCurTrigger( 1641 )

end
RobinMission039()