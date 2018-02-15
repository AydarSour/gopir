-------------------------------------------------------------------
--									--
--									--
--npcscripts07.lua Created by knight.gong 2005.7.12.				--
--									--
--									--
--------------------------------------------------------------------------
print( "‡ Јаг§Є  npcscripts07.lua")

 ---------------------------------------------іиіиЧЬ¶ЇФ±(1)

	DefineMission( 900, "Событие для питомцев", 900)

	MisBeginTalk( "<t>Хочешь красивого питомца? Тогда выполни мое задание.<n><t>Беги за пределы города и убей 10 Лис Даосистов и принеси Колокольчик для Экзорцизма.<n><t>Я дам тебе шанс получить красивого питомца.")
	MisBeginCondition(LvCheck, ">", 59 )
	MisBeginCondition(HasItem, 0844, 1)
	MisBeginCondition(NoMission, 900)
	MisBeginAction(AddMission, 900)
	MisBeginAction(AddTrigger, 9001, TE_KILL, 748, 10 )
	MisCancelAction(ClearMission, 900)

	MisNeed(MIS_NEED_DESP, "Убейте 10 Лис Даосистов для Предсказателя Удачи")	
	MisNeed(MIS_NEED_KILL, 748, 10, 10, 10)
	 
	MisHelpTalk("<t>Иди! Ради нового питомца!")	
	MisResultTalk("<t>Ты очень быстрый!<n><t>Если тебе повезет, в сундуке окажется тот питомец, которого ты так хотел.")
	MisResultCondition(HasMission, 900)
	MisResultCondition(HasFlag, 900, 19 )
	MisResultCondition(HasItem,0844,1)
	MisResultAction(TakeItem, 0844,1)
	MisResultAction(ClearMission,900)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1852, 1, 4)
	MisResultBagNeed(1)
		
	InitTrigger() 
	TriggerCondition( 1, IsMonster, 748 )	
	TriggerAction( 1, AddNextFlag, 900, 10, 10 )
	RegCurTrigger(9001)



	-------------------------------------------------іиіиЧЬ¶ЇФ±(2)
	DefineMission(901,"???????????? ???",901)

	MisBeginTalk("<t>??????? ??????? ???????? ?????? ??? ???? ? ? ??? ???? ???? ??????? ????????? ???????.")

	MisBeginCondition(LvCheck, "<", 60 )
	MisBeginCondition(HasItem, 0844, 1)
	MisBeginCondition(NoMission,901)
	MisBeginAction(AddMission, 901) 
	MisBeginAction(AddTrigger, 9011, TE_KILL, 103, 20)
	MisBeginAction(AddTrigger, 9012, TE_KILL, 70, 20)
	MisBeginAction(AddTrigger, 9013, TE_KILL, 253, 10)
	MisBeginAction(AddTrigger, 9014, TE_KILL, 85, 10)
	MisBeginAction(AddTrigger, 9015, TE_KILL, 76, 10)
	MisCancelAction(ClearMission, 901)

	MisNeed(MIS_NEED_DESP, "?????? ??????? ??????? (2272, 2700) ????? <r20 ?????? ?????>, <r20 ????????? ????????????>, <r10 ????????>, <r10 ????????>, <r10 ????????-????????>.")
	MisNeed(MIS_NEED_KILL, 103, 20, 10, 20)
	MisNeed(MIS_NEED_KILL, 70, 20, 30, 20)
	MisNeed(MIS_NEED_KILL, 253, 10, 50, 10)
	MisNeed(MIS_NEED_KILL, 85, 10, 60, 10)
	MisNeed(MIS_NEED_KILL, 76, 10, 70, 10)

	MisHelpTalk("<t>??????????, ???? ??????? ??? ???????? ????")
	MisResultTalk("<t>?? ?????? ???????!<n><t>?????? ?????????, ????? ???????? ???????!")
	MisResultCondition(HasMission, 901)
	MisResultCondition(HasFlag, 901, 29)
	MisResultCondition(HasFlag, 901, 49)
	MisResultCondition(HasFlag, 901, 59)
	MisResultCondition(HasFlag, 901, 69)
	MisResultCondition(HasFlag, 901, 79)
	MisResultCondition(HasItem, 0844, 1)
	MisResultAction(TakeItem, 0844, 1)
	MisResultAction(ClearMission, 901)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1852, 1, 4)
	MisResultBagNeed(1) 

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 103 )	
	TriggerAction( 1, AddNextFlag, 901, 10, 20 )
	RegCurTrigger(9011)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 70 )	
	TriggerAction( 1, AddNextFlag, 901, 30, 20 )
	RegCurTrigger(9012)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 253 )	
	TriggerAction( 1, AddNextFlag, 901, 50, 10 )
	RegCurTrigger(9013)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 85 )	
	TriggerAction( 1, AddNextFlag, 901, 60, 10 )
	RegCurTrigger(9014)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 76 )	
	TriggerAction( 1, AddNextFlag, 901, 70, 10 )
	RegCurTrigger(9015)


	-------------------------------------------------¶ЛОзјСЅЪіФфХЧУ РЫ»Ж°¬ІЭ±Щ°ЩР°
	DefineMission( 902, "Сражайся со злом, кушай пельмени!", 902)

	MisBeginTalk("<t>Друг мой! У нас беда, на нас надвигаются монстры со стороны моря, мне нужно собрать необходимые предметы, чтобы противостоять им. Ты мне поможешь?")

	MisBeginCondition(LvCheck, ">",15  )
	MisBeginCondition(NoMission,902)
	MisBeginCondition(NoRecord,902)
	MisBeginAction(AddMission,902)
	MisBeginAction(AddTrigger, 9021, TE_GETITEM, 3116, 10 )		--ѕ«Бй№ы
	MisBeginAction(AddTrigger, 9022, TE_GETITEM, 3131, 10 )		--ЖжТм№ыКµ
	MisBeginAction(AddTrigger, 9023, TE_GETITEM, 4419, 5 )		--»µµфµД·дГЫ
	MisCancelAction(ClearMission, 902)

	MisNeed(MIS_NEED_DESP, "Помоги Юаню Ку собрать 10 Эльфийских Фруктов, 10 Чудо Фруктов, 5 Перебродившего Мёда")
	MisNeed(MIS_NEED_ITEM, 3116, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 3131, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 4419, 5, 30, 5)

	MisHelpTalk("Поспеши! Я все еще жду от тебя 10 Эльфийских Фруктов, 10 Чудо Фруктов, 5 Перебродившего Мёда")
	MisResultTalk("<t>Надеюсь, это поможет на время умерить их аппетит и они не нанесут нам больше вреда.")
	MisResultCondition(HasMission, 902)
	MisResultCondition(NoRecord,902)
	MisResultCondition(HasItem, 3116, 10)
	MisResultCondition(HasItem, 3131, 10 )
	MisResultCondition(HasItem, 4419, 5 )
	MisResultAction(TakeItem, 3116, 10 )
	MisResultAction(TakeItem, 3131, 10 )
	MisResultAction(TakeItem, 4419, 5 )
	MisResultAction(ClearMission, 902)
	MisResultAction(SetRecord, 902 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 902, 10, 10 )
	RegCurTrigger( 9021 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3131)	
	TriggerAction( 1, AddNextFlag, 902, 20, 10 )
	RegCurTrigger( 9022 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4419)	
	TriggerAction( 1, AddNextFlag, 902, 30, 5 )
	RegCurTrigger( 9023 )

	-------------------------------------------------- ¶ЛОзјСЅЪіФфХЧУ РЫ»Ж°¬ІЭ±Щ°ЩР°
	DefineMission( 903, "Сражайся со злом, кушай пельмени!", 903)
	
	MisBeginTalk("<t>Ох, мой друг! Этого оказалось недостаточно, ты не мог бы сделать для меня еще кое-что?")
	MisBeginCondition(NoMission,902)
	MisBeginCondition(NoMission,903)
	MisBeginCondition(HasRecord,902)
	MisBeginCondition(NoRecord,903)
	MisBeginAction(AddMission,903)
	MisBeginAction(AddTrigger, 9031, TE_GETITEM, 1779, 10 )		--Т©Жї 
	MisBeginAction(AddTrigger, 9032, TE_GETITEM, 1584, 20 )		--УР¶ѕµДґМ 
	MisBeginAction(AddTrigger, 9033, TE_GETITEM, 1650, 10 )		--УРБЖР§µДЛ®
	MisCancelAction(ClearMission, 903)

	MisNeed(MIS_NEED_DESP, "Принеси Юаню Ку 10 Флаконов, 20 Отравленных шипов и 10 Живой воды")
	MisNeed(MIS_NEED_ITEM, 1779, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 1584, 20, 20, 20)
	MisNeed(MIS_NEED_ITEM, 1650, 10, 40, 10)

	MisHelpTalk("<t>Торопись! Мы можем не успеть.")
	MisResultTalk("<t>Надеюсь, они больше не осмелятся на нас напасть.")
	MisResultCondition(HasMission, 903)
	MisResultCondition(NoRecord,903)
	MisResultCondition(HasItem, 1779, 10)
	MisResultCondition(HasItem, 1584, 20 )
	MisResultCondition(HasItem, 1650, 10 )
	MisResultAction(TakeItem, 1779, 10 )
	MisResultAction(TakeItem, 1584, 20 )
	MisResultAction(TakeItem, 1650, 10 )
	MisResultAction(ClearMission, 903)
	MisResultAction(SetRecord, 903 )


	InitTrigger()
	TriggerCondition( 1, IsItem, 1779)	
	TriggerAction( 1, AddNextFlag, 903, 10, 10 )
	RegCurTrigger( 9031 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1584)	
	TriggerAction( 1, AddNextFlag, 903, 20, 20 )
	RegCurTrigger( 9032 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1650)	
	TriggerAction( 1, AddNextFlag, 903, 40, 10 )
	RegCurTrigger( 9033 )


-------------------------------------------------- ¶ЛОзјСЅЪіФфХЧУ РЫ»Ж°¬ІЭ±Щ°ЩР°
	DefineMission( 904, "Сражайся со злом, ешь пельмени!", 904)

	MisBeginTalk("<t>Ах, чтобы усмирить тех речных монстров, я потратил так много сил, что в итоге заболел. Но я знаю, что мне может помочь, хоть и не могу сам достать их. Ты бы не мог принести мне несколько вещей, чтобы вылечить меня?")

	MisBeginCondition(NoMission,904)
	MisBeginCondition(NoRecord,904)
	MisBeginCondition(HasRecord,903)
	MisBeginAction(AddMission,904)
	MisBeginAction(AddTrigger, 9041, TE_GETITEM, 3129, 5 )		--Т©УГІЭТ¶
	MisBeginAction(AddTrigger, 9042, TE_GETITEM, 1681, 5 )		--СЫАб
	MisCancelAction(ClearMission, 904)

	MisNeed(MIS_NEED_DESP, "Помогите Ку Яну собрать 5 Лекарственных Трав и 5 Слез")
	MisNeed(MIS_NEED_ITEM, 3129, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 1681, 5, 20, 5)

	MisHelpTalk("<t>Ах, я так болен...")
	MisResultTalk("<t>Спасибо за помощь. Прими это как награду.")
	MisResultCondition(HasMission, 904)
	MisResultCondition(NoRecord,904)
	MisResultCondition(HasItem, 3129, 5)
	MisResultCondition(HasItem, 1681, 5 )
	MisResultAction(TakeItem, 3129, 5 )
	MisResultAction(TakeItem, 1681, 5 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 263, 3, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 264, 3, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 265, 3 ,4)
	MisResultAction(ClearMission, 904)
	MisResultAction(SetRecord,  904 )
	MisResultBagNeed(3)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 904, 10, 5 )
	RegCurTrigger( 9041 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1681)	
	TriggerAction( 1, AddNextFlag, 904, 20, 5 )
	 RegCurTrigger( 9042 )
	 
  -------------------------------------------------- єЈµБНхµДЙъИХ
	DefineMission( 905, "Юбилей пиратского короля", 905)
	MisBeginTalk("<t>Ты знал, что не только пьянчужкам нравятся торты, испеченные Бабушкой Белди, Король Пиратов Роланд тоже их любит! Ходят слухи, что после того как человек съест торт, у него появятся дополнительные очки характеристик! Неудивительно что Король Пиратов непобедим.<n><t>Не хочешь тоже попробовать? Хоть не у всех это и получается. Тебе нужно взять 'Расписку на Кусок Кекса' и пойти к 'Бабушке Белди', чтобы поменять расписку на кусочек кекса.")
	MisBeginCondition(NoMission,905)
	MisBeginCondition(HasItem, 1097, 1 )
	MisBeginCondition(NoRecord,905)
	MisBeginAction(AddMission,905)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "Найдите Бабушку Белди")
	MisHelpTalk("<t>Если ты не поторопишься, кто-нибудь съест весь торт!")
	
	MisResultCondition(AlwaysFailure )


	 -------------------------------------------------- єЈµБНхµДЙъИХ
	DefineMission ( 906, "Юбилей пиратского короля", 905,COMPLETE_SHOW)
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Это Тинтин тебя послал? Хмммм... Он любит мои булочки. Хаха. Я возьму 'Расписку на Кусок Кекса'. Вот твой кекс.")
	MisResultCondition(HasMission,905)
	MisResultCondition(HasItem, 1097, 1 )
	MisResultAction(ClearMission, 905 )
	MisResultAction(TakeItem, 1097, 1 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3338, 1, 4 )
	MisResultAction(SetRecord, 905 )
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")
	MisBeginBagNeed(1)	

	-------------------------------С°ХТТЕК§µД°®ЗйЦ®Уг¶щС°ХТ»Ё°к
	DefineMission( 907, "Поиск Цветочка", 906)
	
	MisBeginTalk( "<t>Я очень по ней скучаю! Умоляю, помоги мне найти ее. Я не могу без нее. Я знаю, в последний раз ее видели в Великом Синем Океане(1333,558). Ты бы не мог там посмотреть?")
	MisBeginCondition(NoRecord, 913 )
	MisBeginCondition(NoMission, 906 )
	MisBeginAction(AddMission, 906 )
	MisCancelAction(ClearMission, 906)
		
	MisNeed(MIS_NEED_DESP, "Найдите Цветочек в точке (1333, 558)")
	MisHelpTalk("<t>Последний раз ее видели в точке (1333, 558).")
	MisResultCondition(AlwaysFailure )

	---------------------------------------С°ХТТЕК§µД°®ЗйЦ®Уг¶щС°ХТ»Ё°к

	DefineMission(908,"Поиск Цветочка",906,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Ты друг Маленькой Рыбки? Ты как раз меня ищешь!")
	MisResultCondition(HasMission, 906)
	MisBeginCondition(NoRecord, 913)
	MisResultAction(ClearMission, 906)
	MisResultAction(SetRecord, 913)

	----------------------------------С°ХТТЕК§µД°®ЗйЦ®ОиµыПІ»¶іФФВ±э
	DefineMission ( 909, "Любовь к лунным пирогам", 907)

	MisBeginTalk("<t>Как я могу поверить, что тебя послала Маленькая Рыбка? Так, я очень люблю лунные пироги. Помоги мне достать 10 лунных пирогов.")
	MisBeginCondition(HasRecord,913)
	MisBeginCondition(NoMission,907)
	MisBeginCondition(NoRecord,907)
	MisBeginAction(AddMission,907)
	MisBeginAction(AddTrigger, 9071, TE_GETITEM, 3915, 10)
	MisCancelAction(ClearMission, 907)
	

	MisNeed(MIS_NEED_DESP, "Помоги Бабочке собрать 10 лунных пирогов")
	MisNeed(MIS_NEED_ITEM, 3915, 10, 10, 10)

	MisHelpTalk("<t>Мне нужно 10 лунных пирогов!")
	MisResultTalk("<t>Похоже ты неплохой человеек. Я люблю лунные пироги, спасибо!") 
	
	MisResultCondition(HasMission, 907)
	MisResultCondition(NoRecord,907)
	MisResultCondition(HasItem, 3915, 10)
	MisResultAction(TakeItem, 3915, 10 )
	MisResultAction(ClearMission, 907)
	MisResultAction(SetRecord, 907 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3915)	
	TriggerAction( 1, AddNextFlag, 907, 10, 10 )
	RegCurTrigger( 9071 )
	
-------------------------------------------------------	С°ХТТЕК§µД°®ЗйЦ®»Ё°кµДТЕРЕ
	DefineMission(910,"Письмо Цветочка",908)
	
	MisBeginTalk("<t>Неплохо, думаю, теперь я могу доверить тебе передать письмо, Цветочек - моя подруга, она умерла 2 дня назад из-за неправильного лечения лейкимии. Но перед тем как умереть, Цветочек написала письмо. Пожалуйста. Передай ему письмо, чтобы он был спокоен.")

	MisBeginCondition(HasRecord, 907)
	MisBeginCondition(NoRecord, 908)
	MisBeginCondition(NoMission, 908)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 908)
	MisBeginAction(GiveItem, 1005,1,4)

	MisHelpTalk("<t>Пусть Богиня благословит скорбящих. Маленькая Рыбка в Шайтане (917, 3572).")
	MisNeed(MIS_NEED_DESP, "Помоги Бабочке передать письмо Цветочка Маленькой Рыбке")

	MisCancelAction(ClearMission, 908)

	MisResultCondition(AlwaysFailure)




-----------------------------------С°ХТТЕК§µД°®ЗйЦ®»Ё°кµДТЕРЕ
	DefineMission( 911, "Письмо Цветочка", 908, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Это действительно письмо от нее?.<n><t>Тут написано: Моя маленькая Рыбка, к тому времени как ты прочтешь это письмо, я буду наблюдать за тобой с неба. Я не хочу, чтобы ты видел мое бледное лицо, и также я не хочу причинить тебе боль. Поэтому я решила тебя бросить, чтобы ты забыл меня. Единственное, что ты можешь для меня теперь сделать - оставить меня в своем сердце.<n><t>Маленькая Рыбка, я тебя благославляю. Хоть время и проходит, любовь вечна.")
	MisResultCondition(HasMission, 908)
	MisResultCondition(NoRecord,908)
	MisResultCondition(HasItem, 1005, 1)
	MisResultAction(TakeItem, 1005, 1)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1006, 1, 4)
	MisResultAction(ClearMission, 908)
	MisResultAction(SetRecord, 908)

	
	-------------------------------------------------------------С°ХТТЕК§µД°®ЗйЦ®Уг¶щПлНьЗй
	DefineMission ( 912, "Отворотное зелье", 909)
	
	MisBeginTalk("<t>Я слышал о существовании Отворотного елья, и только Дитто (2250, 2770) из Аргента знает как его приготовить. Как бы я хотел глотнуть его, чтобы перестать переживать..")
	
	MisBeginCondition(HasRecord,908)
	MisBeginCondition(NoRecord,909)
	MisBeginCondition(NoMission,909)
	MisBeginAction(AddMission,909)
	MisCancelAction(ClearMission, 909)
	
	MisHelpTalk("<t>Ах.... Как же пережить это горе? Только с помощью отворотного зелья")
	MisNeed(MIS_NEED_DESP, "Помогите Маленькой Рыбке найти Отворотное Зелье")


	MisResultCondition(AlwaysFailure)


------------------------------------------------------------------------С°ХТТЕК§µД°®ЗйЦ®Уг¶щПлНьЗй



	DefineMission(913,"Отворотное зелье", 909,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)
	MisResultTalk("<t>Ты друг Маленькой Рыбки?<n><t>Я слышал об их истории...несомненно, печально. Ты полезный человек.")
	MisResultCondition(HasMission, 909)
	MisResultCondition(NoRecord, 909)
	MisResultAction(ClearMission, 909)
	MisResultAction(SetRecord, 909)



	
	
	-------------------------------------------------------------С°ХТТЕК§µД°®ЗйЦ®ЦЖФмНьЗйЛ®
	DefineMission ( 914, "Приготовить Отворотное зелье", 910)
	
	MisBeginTalk("<t>Ты пришел за Отворотным Зельем? Это очень сложный рецепт. Пожалуйста найди 1 чистую воду, 1 Сердце Наяды, 2 Лекарственных Травы и 3 пузырька Живой воды и принеси мне их.")
	
	MisBeginCondition(NoMission,910)
	MisBeginCondition(HasRecord,909)
	MisBeginCondition(NoRecord,910)
	MisBeginAction(AddMission,910)
	MisBeginAction(AddTrigger, 9101, TE_GETITEM, 1649, 1)
	MisBeginAction(AddTrigger, 9102, TE_GETITEM, 4418, 1)
	MisBeginAction(AddTrigger, 9103, TE_GETITEM, 3129, 2)
	MisBeginAction(AddTrigger, 9104, TE_GETITEM, 1650, 3)	
	MisCancelAction(ClearMission, 910)

	MisNeed(MIS_NEED_DESP, "Вам понадобится 1 Чистая Вода, 1 Сердце Наяды, 2 Лекарственных Травы и 3 Живых Воды.")
	MisNeed(MIS_NEED_ITEM, 1649, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4418, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 3129, 2, 30, 2)
	MisNeed(MIS_NEED_ITEM, 1650, 3, 40, 3)

	MisHelpTalk("<t>Пожалуйста найди 1 чистую воду, 1 Сердце Наяды, 2 Лекарственных Травы и 3 пузырька Живой воды")
	MisResultTalk("<t>Отлично, это как раз то, что нужно для приготовления Отворотного зелья.")
	MisResultCondition(HasMission, 910)
	MisResultCondition(NoRecord,910)
	MisResultCondition(HasItem, 1649, 1)
	MisResultCondition(HasItem, 4418, 1)
	MisResultCondition(HasItem, 3129, 2)
	MisResultCondition(HasItem, 1650, 3)
	MisResultAction(TakeItem, 1649, 1 )
	MisResultAction(TakeItem, 4418, 1)
	MisResultAction(TakeItem, 3129, 2 )
	MisResultAction(TakeItem,1650, 3 )
	MisResultAction(ClearMission, 910)
	MisResultAction(SetRecord, 910 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1649)	
	TriggerAction( 1, AddNextFlag, 910, 10, 1 )
	RegCurTrigger( 9101 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 910, 20, 1 )
	RegCurTrigger( 9102 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 910, 30, 2 )
	RegCurTrigger( 9103 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1650)	
	TriggerAction( 1, AddNextFlag, 910, 40, 3 )
	RegCurTrigger( 9104 )
	
	
	-----------------------------------------------------------------С°ХТТЕК§µД°®ЗйЦ®№єВтУсЅрЖї
	DefineMission ( 915, "Купить Нефритовый пузырек", 911)
	
	MisBeginTalk("<t>Отворотное Зелье это особый тип жидкости. В какой бы флакон его не налить, оно тут же испарится. Только Нефритовый Пузырек не даст зелью испариться.")

	MisBeginCondition(NoMission,911)
	MisBeginCondition(HasRecord,910)
	MisBeginCondition(NoRecord,911)
	MisBeginAction(AddMission,911)
	MisBeginAction(AddTrigger, 9111, TE_GETITEM, 1007, 1)
	MisCancelAction(ClearMission, 911)
	MisNeed(MIS_NEED_DESP, "Нужен нефритовый Пузырек")
	MisNeed(MIS_NEED_ITEM, 1007, 1, 80, 1)

	MisHelpTalk("<t>Раздобыть нефритовый пузырек.")
	MisResultTalk("<t>Я бы сделал Отворотное Зелье, если бы у меня был Нефритовый пузырек.")


	MisResultCondition(HasMission, 911)
	MisResultCondition(NoRecord,911)
	MisResultCondition(HasItem, 1007, 1)
	MisResultAction(TakeItem, 1007, 1 )
	MisResultAction(ClearMission, 911)
	MisResultAction(SetRecord,  911 )

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1007)	
	TriggerAction( 1, AddNextFlag, 911, 80, 1 )
	RegCurTrigger( 9111 )


-------------------------------------------------------------------С°ХТТЕК§µД°®ЗйЦ®НьЗйЛ®

DefineMission(916,"Любовь в Прошлом",912)
	
	MisBeginTalk("<t>Возьми, Отворотное зелье готово. Надеюсь, оно поможет Маленькой Рыбке (917, 3572).")

	MisBeginCondition(HasRecord, 911)
	MisBeginCondition(NoRecord, 912)
	MisBeginCondition(NoMission, 912)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 912)
	MisBeginAction(GiveItem, 1008,1,4)

	MisHelpTalk("<t>Поспеши и помоги человечку с разбитым сердцем!")
	MisNeed(MIS_NEED_DESP, "Принесите Отворотное Зелье Маленькой Рыбке, чтобы излечить его от горя")

	MisCancelAction(ClearMission, 912)
	MisResultCondition(AlwaysFailure)




-------------------------------------------------------------------С°ХТТЕК§µД°®ЗйЦ®НьЗйЛ®
	DefineMission( 917, "Любовь в Прошлом", 912, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	
	MisResultTalk("<t>Значит это и есть Отворотное Зелье! Прими это сердце невинности в подарок, оно олицетворяет настоящую любовь.<n><t>Эх... Забуду ли я ее после принятия этого зелья?")
	MisResultCondition(HasMission, 912)
	MisResultCondition(NoRecord,912)
	MisResultCondition(HasItem, 1008, 1)
	MisResultAction(TakeItem, 1008, 1 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1009, 1 ,4)
	MisResultAction(ClearMission, 912)
	MisResultAction(SetRecord, 912 )
	MisResultAction(ClearRecord, 909)
	MisResultAction(ClearRecord, 910)
	MisResultAction(ClearRecord, 911)
	MisResultAction(ClearRecord, 912)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1008)	
	TriggerAction( 1, AddNextFlag, 912, 10, 1 )
	RegCurTrigger( 9121 ) 


	--------------------------------------------------------------------°®ЗйЦШЙъ

	DefineMission( 918, "Воскрешение любви", 914 )
	MisBeginTalk("<t>Дитя, если твое сердце пустое, найди Отворотное зелье. Я восстановлю твое сердце!")
	MisBeginCondition(NoMission, 914)
	MisBeginCondition(HasItem,1010,1)------------УРґїХжЦ®РДК№УГєуµДїЭЅЯЦ®РД
	MisBeginCondition(NoRecord,914)
	MisBeginAction(AddMission,914)
	MisBeginAction(AddTrigger, 9141, TE_GETITEM, 1008, 1)
	MisCancelAction(ClearMission, 914)

	MisNeed(MIS_NEED_DESP, "Для Высушенного Сердца требуется Отворотное Зелье")
	MisNeed(MIS_NEED_ITEM, 1008, 1, 10, 1)

	MisHelpTalk("<t>Найдено Отворотное Зелье, принеси его Таинственной Бабушке вместе с Высушенным Сердцем.")
	MisResultTalk("<t>Отлично, вот Отворотное зелье. Выпей и переродись.")

	MisResultCondition(HasMission, 914)
	MisResultCondition(NoRecord,914)
	MisResultCondition(HasItem, 1008, 1)
	MisResultCondition(HasItem, 1010, 1)------------УРїЭЅЯЦ®РД
	MisResultAction(TakeItem, 1008, 1 )
	MisResultAction(TakeItem, 1010, 1 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1013,1,4)------------ёшЦШЙъЦ®РД
	MisResultAction(ClearMission, 914)
	MisResultAction(SetRecord, 914)
	MisResultAction(ClearRecord, 914)---------------їЙТФ·ґёґЅУ

	InitTrigger()
	TriggerCondition( 1, IsItem, 1008)	
	TriggerAction( 1, AddNextFlag, 914, 10, 1 )
	RegCurTrigger( 9141 )
	
	
	-----------------------------------------------------------------------СЄРИµДёЯёъР¬
	DefineMission( 919, "Окровавленные туфли на высоком каблуке", 915)
	
	MisBeginTalk( "<t>Ох, я пострадал от каблука, когда моя начальница кинула в меня своей туфлей... посмотри какая рана. Что?! Ты не веришь мне? Все равно у меня есть справка от <bМедсестры - Джины> из Аргента (2244, 2770). Это она перевязала. Смотри. Oй...Oй...")
	MisBeginCondition(NoRecord, 915 )
	MisBeginCondition(NoMission, 915 )
	MisBeginAction(AddMission, 915 )
	MisBeginAction(GiveItem, 1026,1,4)------°ЧТшТЅФєСйЙЛµҐ
	MisCancelAction(ClearMission, 915)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "Найдите медсестру Джину в Аргенте")
	MisHelpTalk("<t>Медсестра в точке (2244, 2770)")
	MisResultCondition(AlwaysFailure )

------------------------------------------------------------------------------СЄРИµДёЯёъР¬
	DefineMission( 920, "Окровавленные туфли на высоком каблуке", 915, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Почему в последнее время кто-то обязательно страдает!")
	MisResultCondition(HasMission, 915)
	MisResultCondition(NoRecord,915)
	MisResultCondition(HasItem, 1026, 1)
	MisResultAction(TakeItem, 1026, 1 )
	MisResultAction(ClearMission, 915)
	MisResultAction(SetRecord, 915 )
	 
-------------------------------------------------------------------------------ПтСІВЯ±шЗуЦ¤

	DefineMission( 921, "Расследование Патрульного", 916 )

	MisBeginTalk("<t>Да, эта справка от меня. Травма образовалась от удара каблуком, а жертвой является худой мужчина. Хотя я не знаю как так могло получиться. Думаю, что  <bСтраж - Майкл> в Шайтане (959, 3549) расследует это дело.")
	MisBeginCondition(NoMission, 916)
	MisBeginCondition(HasRecord,915)
	MisBeginCondition(NoRecord,916)
	MisBeginAction(AddMission, 916 )
	MisCancelAction(ClearMission, 916)
	MisResultCondition(AlwaysFailure )
	-------------------------------------------------------------------ПтСІВЯ±шЗуЦ¤
	DefineMission( 922, "Расследование Патрульного", 916, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Нелегко быть сторожевым, всегда что-то случается, а зарплата малюсенькая!")
	MisResultCondition(HasMission, 916)
	MisResultCondition(NoRecord,916)
	MisResultAction(ClearMission, 916)
	MisResultAction(SetRecord, 916 )

	 
	---------------------------------------------------------------ёЯёъР¬°ёјюµчІй
	DefineMission( 923, "Расследование дела, связанного с высокими каблуками", 917)
	
	MisBeginTalk( "<t>Хммм... Я уже некоторое время расследую это дело, как я понял завязалась драка. Проблематичное дело! Смотри, это объяснительная от твоей начальницы, хоть детали достаточно размыты, все равно это можно использовать как подсказку.")
	MisBeginCondition(NoRecord, 917 )
	MisBeginCondition(NoMission, 917)
	MisBeginCondition(HasRecord, 916 )
	MisBeginAction(AddMission, 917 )
	MisBeginAction(GiveItem, 1027,1,4)------Е®АП°еµДСйЙЛµҐ
	MisBeginAction(AddTrigger, 9171, TE_GETITEM, 1030, 1)
	MisBeginBagNeed(1)

	MisCancelAction(ClearMission, 917)
	MisNeed(MIS_NEED_ITEM, 1030, 1, 10, 1)

	MisResultTalk("<t>Только самые смелые отставивают правду!")
	MisHelpTalk("<t>Используйте справку, чтобы вызвать монстра и победите его")
	MisResultCondition(HasMission,  917)
	MisResultCondition(NoRecord , 917)
	MisResultCondition(HasItem,1030,1 )
	MisResultAction(TakeItem, 1030, 1 )-------
	MisResultAction(ClearMission,   917)
	MisResultAction(SetRecord,  917 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1030)	
	TriggerAction( 1, AddNextFlag, 917, 10, 1 )
	RegCurTrigger( 9171 )
-------------------------------------------------------------------------ёЯёъР¬°ёјюРЧЖч--------------
	DefineMission( 924, "Оружие в деле со шпильками", 918)------------

	MisBeginTalk( "<t>Удивительно, но оружие - это эти высокие каблуки. Я буду их хранить, чтобы кто-нибудь еще не пострадал. Спасибо!")---------------
	MisBeginCondition(NoRecord, 918 )
	--MisBeginCondition(NoMission, 918 )
	MisBeginCondition(HasRecord, 917 )
	--MisBeginAction(AddMission, 918 )
	MisBeginAction(GiveItem, 1029,1,4)----------
	MisBeginAction(AddExp,500,500)
	--MisBeginAction(ClearMission, 918 )
	MisBeginAction(SetRecord, 918 )
	MisCancelAction(ClearMission, 918)
	MisBeginBagNeed(1)---------------

	MisHelpTalk("<t>Есть справедливость в этом мире.")----------

	MisResultCondition(AlwaysFailure )---------


	--------------------------------------------------------------------јиДСИООс1

	DefineMission( 6000, "Перерождение Феникса", 1300 )
	MisBeginTalk("<t>Как ты посмел Смертный явиться ко мне?! Ты хочешь навлечь на себя Гнев Богов?! Хотя постой, я чувствую твоё чистое сердце, тебе даже не страшно. Это знак того, что ты настоящий Герой и достоин великой участи стать моим верным Ангелом.")
	MisBeginCondition(NoMission, 1300)
	MisBeginCondition(NoRecord,1300)
	MisBeginCondition(HasCredit,9999)
	MisBeginAction(AddMission,1300)
	MisBeginAction(AddTrigger, 13001, TE_GETITEM, 2226, 1)
	MisBeginAction(AddTrigger, 13002, TE_GETITEM, 2227, 1)
	MisBeginAction(AddTrigger, 13003, TE_GETITEM, 2228, 1)
	MisBeginAction(AddTrigger, 13004, TE_GETITEM, 2229, 1)
	MisBeginAction(AddTrigger, 13005, TE_GETITEM, 2230, 1)
	MisBeginAction(AddTrigger, 13006, TE_GETITEM, 2231, 1)
	MisBeginAction(AddTrigger, 13007, TE_GETITEM, 2232, 1)
	MisBeginAction(AddTrigger, 13008, TE_GETITEM, 2233, 1)
	
	
	MisCancelAction(ClearMission, 1300)

	MisNeed(MIS_NEED_DESP, "Что бы стать ближе к богине и получить её благословение, Вам необходимо найти все части руны перерождения, куски которой были разбросаны по всему миру пиратии.")
	MisNeed(MIS_NEED_ITEM, 2226, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2227, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 2228, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 2229, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 2230, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2231, 1, 60, 1)
	MisNeed(MIS_NEED_ITEM, 2232, 1, 70, 1)
	MisNeed(MIS_NEED_ITEM, 2233, 1, 80, 1)
	
	

	MisHelpTalk("<t>Эти руны разбросало по всему миру, Вам нужно будет постараться, если Вы хотите собрать все 8 рун.")
	MisResultTalk("<t>Вы собрали все части руны перерождения, Вы настоящий Герой.")

	MisResultCondition(HasMission, 1300)
	MisResultCondition(NoRecord,1300)
	MisResultCondition(HasItem, 2226, 1)
	MisResultCondition(HasItem, 2227, 1)
	MisResultCondition(HasItem, 2228, 1)
	MisResultCondition(HasItem, 2229, 1)
	MisResultCondition(HasItem, 2230, 1)
	MisResultCondition(HasItem, 2231, 1)
	MisResultCondition(HasItem, 2232, 1)
	MisResultCondition(HasItem, 2233, 1)
	
	
	MisResultAction(TakeItem, 2226, 1 )
	MisResultAction(TakeItem, 2227, 1 )
	MisResultAction(TakeItem, 2228, 1 )
	MisResultAction(TakeItem, 2229, 1 )
	MisResultAction(TakeItem, 2230, 1 )
	MisResultAction(TakeItem, 2231, 1 )
	MisResultAction(TakeItem, 2232, 1 )
	MisResultAction(TakeItem, 2233, 1 )
	
	
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2235,1,4)------------ёшФЩЙъЦ®КЇ
	MisResultAction(ClearMission, 1300)
	MisResultAction(SetRecord, 1300)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 2226)	
	TriggerAction( 1, AddNextFlag, 1300, 10, 1 )
	RegCurTrigger( 13001 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2227)	
	TriggerAction( 1, AddNextFlag, 1300, 20, 1 )
	RegCurTrigger( 13002 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2228)	
	TriggerAction( 1, AddNextFlag, 1300, 30, 1 )
	RegCurTrigger( 13003 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2229)	
	TriggerAction( 1, AddNextFlag, 1300, 40, 1 )
	RegCurTrigger( 13004 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2230)	
	TriggerAction( 1, AddNextFlag, 1300, 50, 1 )
	RegCurTrigger( 13005 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2231)	
	TriggerAction( 1, AddNextFlag, 1300, 60, 1 )
	RegCurTrigger( 13006 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2232)	
	TriggerAction( 1, AddNextFlag, 1300, 70, 1 )
	RegCurTrigger( 13007 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2233)	
	TriggerAction( 1, AddNextFlag, 1300, 80, 1 )
	RegCurTrigger( 13008 )
	
-------------------------------------------------ґтС©ХМ	
	DefineMission (5500, "Снежки", 818)
	
	MisBeginTalk("<t>Рождество - это праздник веселья и счастья! Не слишком ли холодно для игры в снежки? Нет?! Убейте <r20 Засохших волшебных кустов> и я Вам дам <bСнежки>!")

	MisBeginCondition(NoMission,818)
	MisBeginCondition(NoRecord,818)
	MisBeginAction(AddMission,818)
	MisBeginAction(AddTrigger, 8181, TE_KILL, 218, 20 )
	MisCancelAction(ClearMission, 818)
	
	MisNeed(MIS_NEED_DESP, "убейте 20 <bЗасохший волшебный куст>")
	MisNeed(MIS_NEED_KILL, 218, 20, 10, 20)

	MisHelpTalk("<t>Рождество не за горами")
	MisResultTalk("<t>Не плохо! Вы видимо очень сильно хотите поиграть в снежки. Вот Ваши <bСнежки>. Счастливого Рождества!")


	MisResultCondition(HasMission, 818)
	MisResultCondition(NoRecord,818)
	MisResultCondition(HasFlag, 818, 29 )
	MisResultAction(ClearMission, 818)
	MisResultAction(SetRecord,  818 )
	MisResultAction(ClearRecord, 818)---------------їЙТФ·ґёґЅУ
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 218)	
	TriggerAction( 1, AddNextFlag, 818, 10, 20 )
	RegCurTrigger( 8181 )

	-------------------------------------------------ґтС©ХМ	
	DefineMission (5501, "Снежки", 819)
	
	MisBeginTalk("<t>Рождество - это праздник веселья и счастья! Не слишком ли холодно для игры в снежки? Нет?! Убейте <r20 Волшебных кустов> и я Вам дам <bСнежки>!")

	MisBeginCondition(NoMission,819)
	MisBeginCondition(NoRecord,819)
	MisBeginAction(AddMission,819)
	MisBeginAction(AddTrigger, 8191, TE_KILL, 75, 20 )
	MisCancelAction(ClearMission, 819)
	
	MisNeed(MIS_NEED_DESP, "Убейте <r20 Волшебных кустов>")
	MisNeed(MIS_NEED_KILL, 75, 20, 10, 20)

	MisHelpTalk("<t>Рождество не за горами")
	MisResultTalk("<t>Не плохо! Вы видимо очень сильно хотите поиграть в снежки. Вот Ваши <bСнежки>. Счастливого Рождества!")


	MisResultCondition(HasMission, 819)
	MisResultCondition(NoRecord,819)
	MisResultCondition(HasFlag, 819, 29 )
	MisResultAction(ClearMission, 819)
	MisResultAction(SetRecord,  819 )
	MisResultAction(ClearRecord, 819)---------------їЙТФ·ґёґЅУ
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 75)	
	TriggerAction( 1, AddNextFlag, 819, 10, 20 )
	RegCurTrigger( 8191 )

-------------------------------------------------ґтС©ХМ	
	DefineMission (5502, "Снежки", 820)
	
	MisBeginTalk("<t>Рождество - это праздник веселья и счастья! Не слишком ли холодно для игры в снежки? Нет?! Убейте <r20 Заснеженных волшебных кустов> и я Вам дам <bСнежки>!")

	MisBeginCondition(NoMission,820)
	MisBeginCondition(NoRecord,820)
	MisBeginAction(AddMission,820)
	MisBeginAction(AddTrigger, 8201, TE_KILL, 216, 20 )
	MisCancelAction(ClearMission, 820)
	
	MisNeed(MIS_NEED_DESP, "Убейте <r20 Заснеженных волшебных кустов>")
	MisNeed(MIS_NEED_KILL, 216, 20, 10, 20)

	MisHelpTalk("<t>Рождество не за горами")
	MisResultTalk("t>Не плохо! Вы видимо очень сильно хотите поиграть в снежки. Вот Ваши <bСнежки>. Счастливого Рождества!")


	MisResultCondition(HasMission, 820)
	MisResultCondition(NoRecord,820)
	MisResultCondition(HasFlag, 820, 29 )
	MisResultAction(ClearMission, 820)
	MisResultAction(SetRecord,  820 )
	MisResultAction(ClearRecord, 820)---------------їЙТФ·ґёґЅУ
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2896, 10, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 216)	
	TriggerAction( 1, AddNextFlag, 820, 10, 20 )
	RegCurTrigger( 8201 )

-----------------------------------------------УВКїµДЦ¤Гч
	DefineMission(6001,"Знак воина",1302)

      MisBeginTalk("<t>В мире нашем очень много стало зла, помоги мне избавить мир от нечисти<n><t>Убейте по 15 монстров:<rСтремительный лесной охотник>, <rСтремительный призрачный охотник>, <rЗловещий луговой старейшина>, <rЗловещий ангел-хранитель>, <rБеспощадный призрачный охотник>, <rБеспощадный лесной охотник>.")

      MisBeginCondition(HasRecord,1301)
      MisBeginCondition(NoRecord,1302)
      MisBeginCondition(NoMission,1302)
      MisBeginCondition(HasCredit,9999 )
     -- MisBeginAction(TakeCredit, 9999 )
	  --MisBeginAction(DelRoleCredit, 9999 )  
      MisBeginAction(AddMission,1302)
      MisBeginAction(AddTrigger, 13021, TE_KILL,525, 15)
      MisBeginAction(AddTrigger, 13022, TE_KILL,526, 15)
      MisBeginAction(AddTrigger, 13023, TE_KILL, 532, 15)
      MisBeginAction(AddTrigger, 13024, TE_KILL, 550, 15)
      MisBeginAction(AddTrigger, 13025, TE_KILL, 554, 15)
      MisBeginAction(AddTrigger, 13026, TE_KILL, 553, 15)
      MisCancelAction(ClearMission, 1302)

      MisNeed(MIS_NEED_DESP, "Убейте по 15 монстров:<rСтремительный лесной охотник>, <rСтремительный призрачный охотник>, <rЗловещий луговой старейшина>, <rЗловещий ангел-хранитель>, <rБеспощадный призрачный охотник>, <rБеспощадный лесной охотник>!")
      MisNeed(MIS_NEED_KILL, 525, 15, 10, 15)
      MisNeed(MIS_NEED_KILL, 526, 15, 30, 15)
      MisNeed(MIS_NEED_KILL, 532, 15, 50, 15)
      MisNeed(MIS_NEED_KILL, 550, 15, 70, 15)
      MisNeed(MIS_NEED_KILL, 554, 15, 90, 15)
      MisNeed(MIS_NEED_KILL, 553, 15, 110, 15)

      MisHelpTalk("<t>Убейте же в конце-концов этих монстров.")  
      MisResultTalk("<t>Вы избавили мир от нечисти, не от всей, но начало положено, возьмите эту часть руны в награду за Вашу смелость!")
      MisResultCondition(HasMission,1302 )
      MisResultCondition(NoRecord,1302)
      MisResultCondition(HasFlag, 1302, 24)
      MisResultCondition(HasFlag, 1302, 44)
      MisResultCondition(HasFlag, 1302, 64)
      MisResultCondition(HasFlag, 1302, 84)
      MisResultCondition(HasFlag, 1302, 104)
      MisResultCondition(HasFlag, 1302, 124)
      MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2228, 1, 4 )
      MisResultAction(ClearMission, 1302 )
      MisResultAction(SetRecord, 1302)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 525 )
      TriggerAction( 1, AddNextFlag, 1302, 10, 15 )
      RegCurTrigger( 13021 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 526 )
      TriggerAction( 1, AddNextFlag, 1302, 30, 15 )
      RegCurTrigger( 13022 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,532  )
      TriggerAction( 1, AddNextFlag, 1302, 50, 15 )
      RegCurTrigger( 13023 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 550 )
      TriggerAction( 1, AddNextFlag, 1302, 70, 15 )
      RegCurTrigger( 13024 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 554 )
      TriggerAction( 1, AddNextFlag, 1302, 90, 15 )
      RegCurTrigger( 13025 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,553)
      TriggerAction( 1, AddNextFlag, 1302, 110, 15 )
      RegCurTrigger( 13026 )




------------------------------------------------------РЎХтЙсГШИЛ
	DefineMission( 6002, "Загадочный человечек", 1303 )

	MisBeginTalk( "<t>Судя по Вашей репутации, мне кажется что Малыш не станет сильно упорствовать в помощи Вам.")------------
	MisBeginCondition(NoRecord,   1303)
	MisBeginCondition(HasRecord, 1302)
	MisBeginCondition(NoMission,  1303)
	MisBeginAction(AddMission,  1303)
	MisCancelAction(ClearMission, 1303)
	MisNeed(MIS_NEED_DESP, "Поиск опекуна Малыша на Востоке")
	MisHelpTalk("<t>Могу только сказать что это Важно!")
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------РЎХтЙсГШИЛ
	DefineMission( 6003, "Загадочный человечек", 1303, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Я уже ожирел, но Всё ещё хочу попробовать эту вкуснятину?!")
	MisResultCondition(NoRecord,  1303)
	MisResultCondition(HasMission,  1303)
	MisResultAction(SetRecord,  1303)
	MisResultAction(ClearMission,  1303)

------------------------------------------------------------јтµҐИООс
	DefineMission( 6004, "Простая задача", 1304 )

	MisBeginTalk( "<t>Я не хочу Вас утруждать, но не смогли бы Вы, за небольшое вознаграждение, принести пару предметов...")
	MisBeginCondition(NoRecord, 1304)
	MisBeginCondition(HasRecord, 1303)
	MisBeginCondition(NoMission, 1304)
	MisBeginAction(AddMission, 1304)
	MisBeginAction(AddTrigger, 13041, TE_GETITEM, 4730, 30 )
	MisBeginAction(AddTrigger, 13042, TE_GETITEM, 1358, 30 )
	MisBeginAction(AddTrigger, 13043, TE_GETITEM, 2619, 30 )
	MisCancelAction(ClearMission, 1304)
	
	MisNeed(MIS_NEED_ITEM, 4730, 30, 10, 30)
	MisNeed(MIS_NEED_ITEM, 1358, 30, 50, 30)
	MisNeed(MIS_NEED_ITEM, 2619, 30, 90, 30)

	MisResultTalk("<t>Это всё что мне нужно для приготовления Вина Мао, спасибо Вам огромное.")
	MisHelpTalk("<t>Стоя на месте, ни когда, ни чего не добьешься...")
	MisResultCondition(HasMission, 1304)
	MisResultCondition(HasItem, 4730, 30 )
	MisResultCondition(HasItem, 1358, 30 )
	MisResultCondition(HasItem, 2619, 30 )
	MisResultAction(TakeItem, 4730, 30 )
	MisResultAction(TakeItem, 1358, 30 )
	MisResultAction(TakeItem, 2619, 30 )
	MisResultAction(ClearMission, 1304)
	MisResultAction(SetRecord, 1304 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4730)	
	TriggerAction( 1, AddNextFlag, 1304, 10, 30 )
	RegCurTrigger( 13041 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1358)	
	TriggerAction( 1, AddNextFlag, 1304, 50, 30 )
	RegCurTrigger( 13042 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2619)	
	TriggerAction( 1, AddNextFlag, 1304, 90, 30 )
	RegCurTrigger( 13043 )




------------------------------------------------------------ЅдѕЖјЗ
	DefineMission( 6005, "Постный день", 1305)

	MisBeginTalk( "<t>Это - действительно хорошее вино... Но... того маловато будет мне, приносите ещё Вина.")
	MisBeginCondition(NoRecord, 1305)
	MisBeginCondition(HasRecord, 1304)
	MisBeginCondition(NoMission, 1305)
	MisBeginAction(AddMission, 1305)
	MisBeginAction(AddTrigger, 13051, TE_GETITEM, 1087, 30 )		
	MisCancelAction(ClearMission, 1305)
	
	MisNeed(MIS_NEED_ITEM, 1087, 30, 10, 30)

	MisResultTalk("<t>Очень хорошо, спасибо Вам!")
	MisHelpTalk("<t>Поторопитесь, мне очень нужно это вино!")
	MisResultCondition(HasMission, 1305)
	MisResultCondition(HasItem, 1087, 30 )
	MisResultAction(TakeItem, 1087, 30 )
	MisResultAction(ClearMission, 1305)
	MisResultAction(SetRecord, 1305 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1087)	
	TriggerAction( 1, AddNextFlag, 1305, 10, 30 )
	RegCurTrigger( 13051 )

------------------------------------------------------------ЅдѕЖјЗ
	DefineMission( 6006, "Постный день", 1306)

	MisBeginTalk( "<t>Не помню... кто то мне сказал, что Дукановое Вино лучше Вина Мао, не могли ли Вы мне помочь разобраться с этим вопросом?")
	MisBeginCondition(NoRecord, 1306)
	MisBeginCondition(HasRecord, 1305)
	MisBeginCondition(NoMission, 1306)
	MisBeginAction(AddMission, 1306)
	MisBeginAction(AddTrigger, 13061, TE_GETITEM, 1088, 20 )		--
	MisCancelAction(ClearMission, 1306)
	
	MisNeed(MIS_NEED_ITEM, 1088, 20, 10, 20)

	MisResultTalk("<t>Дукановое Вино всё же лучше!")
	MisHelpTalk("<t>Не теряйте зря время, принесите мне Дукановое Вино на сравнение!")
	MisResultCondition(HasMission, 1306)
	MisResultCondition(HasItem, 1088, 20 )
	MisResultAction(TakeItem, 1088, 20 )
	MisResultAction(ClearMission, 1306)
	MisResultAction(SetRecord, 1306 )
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 1088)	
	TriggerAction( 1, AddNextFlag, 1306, 10, 20 )
	RegCurTrigger( 13061 )



------------------------------------------------------------ЅдѕЖјЗ
	DefineMission( 6007, "Постный день", 1307)

	MisBeginTalk( "<t>Нет! Всё таки Вино Мао Лучше, мне необходимо 20 бутылок Вина Мао, принесите мне его?")
	MisBeginCondition(NoRecord, 1307)
	MisBeginCondition(HasRecord, 1306)
	MisBeginCondition(NoMission, 1307)
	MisBeginAction(AddMission, 1307)
	MisBeginAction(AddTrigger, 13071, TE_GETITEM, 1087, 20 )		--
	MisCancelAction(ClearMission, 1307)
	
	MisNeed(MIS_NEED_ITEM, 1087, 20, 10, 20)

	MisResultTalk("<t>Вино требует выдержки...")
	MisHelpTalk("<t>Не хамите пьяному.")
	MisResultCondition(HasMission, 1307)
	MisResultCondition(HasItem, 1087, 20 )
	MisResultAction(TakeItem, 1087, 20 )
	MisResultAction(ClearMission, 1307)
	MisResultAction(SetRecord, 1307 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1087)	
	TriggerAction( 1, AddNextFlag, 1307, 10, 20 )
	RegCurTrigger( 13071 )

------------------------------------------------------------ЅдѕЖјЗ
	DefineMission( 6008, "Постный день", 1008)

	MisBeginTalk( "<t> Я хочу бросить пить. Я думаю, что пил слишком много в последнее время. У меня открылась язва. Никто не в силах мне помочь! Правда, я слышал, что Вино из Женьшеня - хорошее средство от внутреннего кровотечения. Хмммм, ну ты меня понимаешь?")
	MisBeginCondition(NoRecord, 1008)
	MisBeginCondition(HasRecord, 1307)
	MisBeginCondition(NoMission, 1008)
	MisBeginAction(AddMission, 1008)
	MisBeginAction(AddTrigger, 10081, TE_GETITEM, 1089, 15 )		--
	MisCancelAction(ClearMission, 1008)
	
	MisNeed(MIS_NEED_ITEM, 1089, 15, 10, 15)

	MisResultTalk("<t> Прошло уже много времени, а я все ещё не искусил вина из женьшеня!")
	MisHelpTalk("<t> Молодой человек, пить не в меру - это плохо, это может помешать вам в жизни.")
	MisResultCondition(HasMission, 1008)
	MisResultCondition(HasItem, 1089, 15 )
	MisResultAction(TakeItem, 1089, 15 )
	MisResultAction(ClearMission, 1008)
	MisResultAction(SetRecord, 1008 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1089)	
	TriggerAction( 1, AddNextFlag, 1008, 10, 15 )
	RegCurTrigger( 10081 )


------------------------------------------------------С°·ГД§·ЅµјУО
	DefineMission( 6009, "Найди демонический трактат", 1009 )

	MisBeginTalk( "<t>Я - Гид в Мире Демонов, но я не провожу экскурсии, я могу только рассказать теорию о местности Мира Демонов так, как сам тут блуждаю...")
	MisBeginCondition(NoRecord,   1009)
	MisBeginCondition(HasRecord, 1008)
	MisBeginCondition(NoMission,  1009)
	MisBeginAction(AddMission,  1009)
	MisBeginAction(GiveItem, 2227, 1, 4 )
	MisCancelAction(ClearMission, 1009)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Ищи Таинственного Хранителя в Мире Демонов.")
	MisHelpTalk("<t>Я действительно не могу вспомнить")
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------С°·ГД§·ЅµјУО
	DefineMission( 6010, "Найди демонический трактат", 1009, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Я могу рассказать о Мире Демонов, но  я не провожу экскурсии. Я могу лишь давать указания…")
	MisResultCondition(NoRecord,  1009)
	MisResultCondition(HasMission,  1009)
	MisResultAction(SetRecord,  1009)
	MisResultAction(ClearMission,  1009)
----------------------------------------------------------јУАХ±И№Ы№вУО
	DefineMission( 6011, "Однодневное путешествие по Карибам", 1010 )
	MisBeginTalk("<y>Давным-давно произошел один случай. Этот фрагмент 'подарил' мне бесконечные кошмары. Я хочу возвратить его прежде, чем я умру, однако, у меня нет средств добраться до небес. Вы были в Карибском море? Если Вы можете победить Командующего мертвыми душами, я подумаю, дать ли вам этот фрагмент.")
				
	MisBeginCondition(NoMission, 1010)
	MisBeginCondition(HasRecord, 1009)
	MisBeginCondition(NoRecord,1010)	
	MisBeginAction(AddMission,1010)
	MisBeginAction(AddTrigger, 10101, TE_KILL, 807, 1)--НцБйЛѕБо(807)  
	MisCancelAction(ClearMission, 1010)

	MisNeed(MIS_NEED_DESP, "Убей Командира Мёртвых душ.")
	MisNeed(MIS_NEED_KILL, 807,1, 10, 1)
	
	
	MisResultTalk("<t>Карибы прекрасны! Но монстры страшнее...")
	MisHelpTalk("<t>Это задание не должно быть сложным для тебя")
	MisResultCondition(HasMission,  1010)
	MisResultCondition(HasFlag, 1010, 10)
	MisResultCondition(NoRecord , 1010)
	MisResultAction(ClearMission,  1010)
	MisResultAction(SetRecord,  1010 )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 807)	
	TriggerAction( 1, AddNextFlag, 1010, 10, 1 )
	RegCurTrigger( 10101 )

	


----------------------------------------------------------јУАХ±И№Ы№вУО
	DefineMission( 6012, "Второй день карибского тура!", 1011 )
	MisBeginTalk("Интересно, почему я ненавижу всех на карибах? Моя ненависть была бы подкреплена делом, если бы все карибские обитатели умерли, особенно Барбаросса!")
				
	MisBeginCondition(NoMission, 1011)
	MisBeginCondition(NoRecord,1011)
	MisBeginCondition(HasRecord, 1010)
	MisBeginAction(AddMission,1011)
	MisBeginAction(AddTrigger, 10111, TE_KILL, 805, 1)--°НІ®Иш(805)
	MisCancelAction(ClearMission, 1011)

	MisNeed(MIS_NEED_DESP, "Убей Барбароссу!")
	MisNeed(MIS_NEED_KILL, 805,1, 10, 1)
	

	MisResultTalk("<t>Я догадывался, что вы хотите растопить на карибах 'кровавую баню'!!!")
	MisHelpTalk("Задай им жару, не оставляй в живых ни души!")
	MisResultCondition(HasMission,  1011)
	MisResultCondition(HasFlag, 1011, 10)
	MisResultCondition(NoRecord , 1011)
	MisResultAction(ClearMission,  1011)
	MisResultAction(SetRecord,  1011 )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 805)	
	TriggerAction( 1, AddNextFlag, 1011, 10, 1 )
	RegCurTrigger( 10111 )
	
	----------------------------------------------------------јУАХ±И№Ы№вУО
	DefineMission( 6013, "Вторая карибская кампания.", 1012 )
	MisBeginTalk("<t>Я смотрю ты все еще не удовлетворен двухдневным туром по карибам?! Не стоит благодарить. Я уже организовал для тебя другой поход. ХэХэ! Тебе предстоит свежевать поганого кракена!")
				
	MisBeginCondition(NoMission, 1012)
	MisBeginCondition(NoRecord,1012)
	MisBeginCondition(HasRecord, 1011)
	MisBeginAction(AddMission,1012)
	MisBeginAction(AddTrigger, 10121, TE_KILL, 796, 1)---К·З°ґуХВУг
	
	MisCancelAction(ClearMission, 1012)

	MisNeed(MIS_NEED_DESP, "Убей чудовище бушующих вод, мерзкого кракена!")
	MisNeed(MIS_NEED_KILL, 796,1, 10, 1)
	

	MisResultTalk("<t>Мир никогда не был таким красивым. Ваши способности убедили меня. Возьми этот черепок любви! Я надеюсь, что Вы найдете свою самую чистую любовь.")
	MisHelpTalk("<t>Сделайте так что бы тот Осьминог исчез с лица Земли!")
	MisResultCondition(HasMission,  1012)
	MisResultCondition(HasFlag, 1012, 10)
	MisResultCondition(NoRecord , 1012)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2226, 1, 4 )
	MisResultAction(ClearMission,  1012)
	MisResultAction(SetRecord,  1012 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 796)	
	TriggerAction( 1, AddNextFlag, 1012, 10, 1 )
	RegCurTrigger( 10121 )
	
	------------------------------------------------------Л­КЗКШ»¤ХЯ
	DefineMission( 6014, "Кто такой хранитель?", 1013 )

	MisBeginTalk( "<t>Мой друг, ищите его быстро, возрождение позволит Вам взлетать выше остальных! Я смутно припоминаю, что в Ледыни действительно есть страж.")
	MisBeginCondition(NoRecord,   1013)
	MisBeginCondition(HasRecord, 1012)
	MisBeginCondition(NoMission,  1013)
	MisBeginAction(AddMission,  1013)
	MisCancelAction(ClearMission, 1013)
	

	MisNeed(MIS_NEED_DESP, "Ищите следующего стража")
	MisHelpTalk("<t> Оххх! Ты всё ещё не сбежал?! Ты хочешь отправиться в трехдневный тур?")
	
	MisResultCondition(AlwaysFailure)

	-------------------------------------------------ЗйИЛЅЪµДАсОп----------ЙіИЄІ№ёшХѕХТNPC·Ж·Ж¶Ф»°ЈєЈЁДРРФЅЗЙ«Ј©	
	DefineMission (5503, "Подарок на день Валентина", 825)
	
	MisBeginTalk("<t>Хотите оставить приятные воспоминания о любви? Принесите мне 10 Сердец Наяды и Вам будет, что вспомнить.")

	MisBeginCondition(NoMission,825)
	MisBeginCondition(NoRecord,825)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoChaType,3)
	MisBeginCondition(NoChaType,4)
	MisBeginAction(AddMission,825)
	MisBeginAction(AddTrigger, 8251, TE_GETITEM, 3343, 11)
	MisBeginAction(AddTrigger, 8252, TE_GETITEM, 4418, 10)
	MisCancelAction(ClearMission, 825)
	
	MisNeed(MIS_NEED_DESP, "Принесите <b1 Розу> и <b10 сердец Наяды>.")
	MisNeed(MIS_NEED_ITEM, 3343, 11, 10, 11)
	MisNeed(MIS_NEED_ITEM, 4418, 10, 30, 10 )

	MisHelpTalk("<t>Ну не стойте как истукан, или Вам безразлично, как пройдёт День Святого Валентина?")
	MisResultTalk("<t>Очень хорошо, подарите этот <bПодарок Красоты> своей второй половинке.")


	MisResultCondition(HasMission, 825)
	MisResultCondition(NoRecord,825)
	MisResultCondition(HasItem, 3343, 11)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 3343, 11 )
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 825)
	MisResultAction(SetRecord,  825 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2904, 1, 4)
	MisResultBagNeed(1)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3343)	
	TriggerAction( 1, AddNextFlag, 825, 10, 11 )
	RegCurTrigger( 8251 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 825, 30, 10 )
	RegCurTrigger( 8252 )

-------------------------------------------------ЗйИЛЅЪµДАсОп----------±щј«І№ёшХѕХТNPC·ЁµП¶ы¶Ф»°ЈєЈЁЕ®РФЅЗЙ«Ј©	
	DefineMission (5504, "Подарок на день Валентина", 826)
	
	MisBeginTalk("<t>Хотите оставить приятные воспоминания о любви? Принесите мне 10 Сердец Наяды и Вам будет, что вспомнить.")

	MisBeginCondition(NoMission,826)
	MisBeginCondition(NoRecord,826)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoChaType,1)
	MisBeginCondition(NoChaType,2)
	MisBeginAction(AddMission,826)
	MisBeginAction(AddTrigger, 8261, TE_GETITEM, 3343, 11)
	MisBeginAction(AddTrigger, 8262, TE_GETITEM, 4418, 10)
	MisCancelAction(ClearMission, 826)
	
	MisNeed(MIS_NEED_DESP, "Принесите <b1 Розу> и <b10 сердец Наяды>.")
	MisNeed(MIS_NEED_ITEM, 3343, 11, 10, 11)
	MisNeed(MIS_NEED_ITEM, 4418, 10, 30, 10 )

	MisHelpTalk("<t>Не упускайте прекрасную возможность осчастливить Вашу вторую половинку!")
	MisResultTalk("<t>Очень хорошо, подарите этот <bПодарок Ломтя> своей второй половинке!")


	MisResultCondition(HasMission, 826)
	MisResultCondition(NoRecord,826)
	MisResultCondition(HasItem, 3343, 11)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 3343, 11 )
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 826)
	MisResultAction(SetRecord,  826 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2905, 1, 4)
	MisResultBagNeed(1)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3343)	
	TriggerAction( 1, AddNextFlag, 826, 10, 11 )
	RegCurTrigger( 8261 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 826, 30, 10 )
	RegCurTrigger( 8262 )


-----------------------------------------------ЖЯЦнїЄМ©---------ВкА­ТААј
	DefineMission(5505,"Сокровище Семи Свинок",827)

      MisBeginTalk("<t>Хотите получить подарок от самого Бога Свиней? тогда убейте: Снежного Свинокрыла, Свинокрыла, Клыкастого боевого кабана, Свина-летуна, Безумного кабана, Боевого свинокрыла и Снежную свинью.")

      MisBeginCondition(NoRecord,827)
      MisBeginCondition(NoMission,827)
      MisBeginAction(AddMission,827)
      MisBeginAction(AddTrigger, 8271, TE_KILL,239, 1)
      MisBeginAction(AddTrigger, 8272, TE_KILL,237, 1)
      MisBeginAction(AddTrigger, 8273, TE_KILL, 264, 1)
      MisBeginAction(AddTrigger, 8274, TE_KILL, 295, 1)
      MisBeginAction(AddTrigger, 8275, TE_KILL, 64, 1)
      MisBeginAction(AddTrigger, 8276, TE_KILL, 296, 1)
      MisBeginAction(AddTrigger, 8277, TE_KILL, 144, 1)
      MisCancelAction(ClearMission, 827)

      MisNeed(MIS_NEED_DESP, "Убейте: <rСнежного Свинокрыла>, <rСвинокрыла>, <rКлыкастого боевого кабана>, <rСвина-летуна>, <rБезумного кабана>, <rБоевого свинокрыла> и <rСнежную свинью>.")
      MisNeed(MIS_NEED_KILL, 239, 1, 10, 1)
      MisNeed(MIS_NEED_KILL, 237, 1, 20, 1)
      MisNeed(MIS_NEED_KILL, 264, 1, 30, 1)
      MisNeed(MIS_NEED_KILL, 295, 1, 40, 1)
      MisNeed(MIS_NEED_KILL, 64, 1, 50, 1)
      MisNeed(MIS_NEED_KILL, 296, 1, 60, 1)
      MisNeed(MIS_NEED_KILL, 144, 1, 70, 1)


      MisHelpTalk("<t>С новым Годом. ")  
      MisResultTalk("<t>Молодец,!")
      MisResultCondition(HasMission,827 )
      MisResultCondition(NoRecord,827)
      MisResultCondition(HasFlag, 827, 10)
      MisResultCondition(HasFlag, 827, 20)
      MisResultCondition(HasFlag, 827, 30)
      MisResultCondition(HasFlag, 827, 40)
      MisResultCondition(HasFlag, 827, 50)
      MisResultCondition(HasFlag, 827, 60)
      MisResultCondition(HasFlag, 827, 70)
      MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 855, 10, 4 )
      MisResultAction(ClearMission, 827 )
      MisResultAction(SetRecord, 827)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 239 )
      TriggerAction( 1, AddNextFlag, 827, 10, 1 )
      RegCurTrigger( 8271 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 237 )
      TriggerAction( 1, AddNextFlag, 827, 20, 1 )
      RegCurTrigger( 8272 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,264  )
      TriggerAction( 1, AddNextFlag, 827, 30, 1 )
      RegCurTrigger( 8273 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 295 )
      TriggerAction( 1, AddNextFlag, 827, 40, 1 )
      RegCurTrigger( 8274 )
       InitTrigger()
      TriggerCondition( 1, IsMonster, 64 )
      TriggerAction( 1, AddNextFlag, 827, 50, 1 )
      RegCurTrigger( 8275 )
       InitTrigger()
      TriggerCondition( 1, IsMonster,296)
      TriggerAction( 1, AddNextFlag, 827, 60, 1 )
      RegCurTrigger( 8276 )

      InitTrigger()
      TriggerCondition( 1, IsMonster,144)
      TriggerAction( 1, AddNextFlag, 827, 70, 1 )
      RegCurTrigger( 8277 )

-------------------------------------------------РТФЛЦнЦн----------ВкА­ТААј	
	DefineMission (5506, "Счастливая хрюшка", 828)
	
	MisBeginTalk("<t>Без удачливого клевера поросёнка Вам будет сложно чего ни будь добиться, так что принесите мне этот клевер и у Вас появится шанс выиграть хороший подарок, от самоцвета колоса в плоть до мешка Богини. Каждая попытка Вам будет стоить <30.000 золотом>.")

	MisBeginCondition(NoMission,828)
	MisBeginCondition(HasRecord,827)
	MisBeginCondition(NoRecord,828)
	MisBeginAction(AddMission,828)
	MisBeginAction(AddTrigger, 8281, TE_GETITEM, 2908, 1)
	MisCancelAction(ClearMission, 828)
	
	MisNeed(MIS_NEED_ITEM, 2908, 1, 10, 1)
	

	MisHelpTalk("<t>Поспешите!")
	MisResultTalk("<t>Очень хорошо! Бог Свиньи награждает Вас Сундуком счастливой хрюшки!")

	MisResultCondition(HasMission, 828)
	MisResultCondition(NoRecord,828)
	MisResultCondition(HasItem, 2908, 1)
	MisResultCondition(HasMoney, 30000)
	MisResultAction(TakeItem, 2908, 1 )
	MisResultAction(TakeMoney,30000 )
	MisResultAction(ClearMission, 828)
	MisResultAction(SetRecord,  828 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2909, 1, 4)
	MisResultAction(ClearRecord, 828)---------------їЙТФ·ґёґЅУ
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2908)	
	TriggerAction( 1, AddNextFlag, 828, 10, 1 )
	RegCurTrigger( 8281 )

	
-----------------------------------------------єЈµБНхС№ЛкґуАс---------°ЧТшЙМіЗРВКЦЦёµј
	DefineMission(5507,"Благоприятный подарок",829)

      MisBeginTalk("<t>У Вас счастливый день. Вы можете получить подарок от хрюшки, если конечно сможите убить <r20 Свинокрылов>.")

      MisBeginCondition(NoRecord,829)
      MisBeginCondition(NoMission,829)
      MisBeginCondition(LvCheck, ">",45)
      MisBeginAction(AddMission,829)
      MisBeginAction(AddTrigger, 8291, TE_KILL,237, 20)
      MisCancelAction(ClearMission, 829)

      MisNeed(MIS_NEED_DESP, "Поймайте 20 Поросят.")
      MisNeed(MIS_NEED_KILL, 237, 20, 10, 20)
     
      MisHelpTalk("<t>Время не ждет никого.")  
      MisResultTalk("<t>Не плохо! Вот Вам подарок от Хрюшки! Если Вы открываете это в канун 17-ого февраля с 23:00 до 01:00, 18-ого февраля, Вы можете выиграть не плохой подарок.")
      MisResultCondition(HasMission,829 )
      MisResultCondition(NoRecord,829)
      MisResultCondition(HasFlag, 829, 29)
      MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2910, 1, 4 )
      MisResultAction(ClearMission, 829 )
      MisResultAction(SetRecord, 829)
      MisResultBagNeed(1)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 237 )
      TriggerAction( 1, AddNextFlag, 829, 10, 20 )
      RegCurTrigger( 8291 )
       
-------------------------------------------------ЗйОЄєООп----------ВкА­ТААј	
	DefineMission (5508, "Что такое любовь", 830)
	
	MisBeginTalk("t>В Вас есть потенциал, я не могу удержаться, что бы не отдать Вам подарки за просто так, но всё таки Вам придётся выполнить мои маленькие капризы. Хрю..Хрю.")

	MisBeginCondition(NoMission,830)
	MisBeginCondition(LvCheck, ">",30)
	MisBeginCondition(NoRecord,830)
	MisBeginAction(AddMission,830)
	MisBeginAction(AddTrigger, 8301, TE_GETITEM, 4418, 10 )
	MisCancelAction(ClearMission, 830)
	
	MisNeed(MIS_NEED_ITEM, 4418, 10, 10, 10 )
	

	MisHelpTalk("t>Не заставляйте свою любовь ждать!")
	MisResultTalk("<t>О! Ну что же, Вы Молодец,, откройте этот Сундук судьбы и Вы не будите больше одиноки!")

	MisResultCondition(HasMission, 830)
	MisResultCondition(NoRecord,830)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 830)
	MisResultAction(SetRecord,  830 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2916, 1, 4)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 830, 10, 10 )
	RegCurTrigger( 8301 )


	-------------------------------------------------ЗгіЗЦ®Бµ----------ВкА­ТААј	
	DefineMission (5509, "Прекрасная любовь", 831)
	
	MisBeginTalk("<t>Молодой человек, Вам бы найти себе подругу, спутника по жизни. Вам всего то для этого надо <bЛюбовный амулет принца>, <bКрасная веревка> и желание найти свою любовь. Я буду с ни терпением ждать Вас и Вашу любимую, приходите ко мне со своей избранницей.")

	MisBeginCondition(NoMission,831)
	MisBeginCondition(NoMission,832)
	MisBeginCondition(HasRecord,830)
	MisBeginCondition(NoRecord,831)
	MisBeginCondition(NoRecord,832)
	MisBeginCondition(NoChaType,1)
	MisBeginCondition(NoChaType,2)
	MisBeginCondition(HasItem, 2902, 1)
	MisBeginAction(AddTrigger, 8311, TE_GETITEM, 2903, 1 )
	MisBeginAction(AddTrigger, 8312, TE_GETITEM, 2845, 1 )
	MisBeginAction(AddMission,831)
	MisCancelAction(ClearMission, 831)
	

	MisNeed(MIS_NEED_ITEM, 2903, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2845, 1, 20, 1 )


	MisHelpTalk("<t>Найти: <pИзбранницу>, <bКрасную Верёвку> и <bЛюбовный амулет принца>.")
	MisResultTalk("<t>Вы такая прекрасная пара, Вы так подходите друг к другу. Примите мои поздравления, и возьмите в подарок эти свадебные наборы, но помните - Вы выбрали друг друга, и после свадьбы Вы будите обручены на вечную, взаимную любовь, берегите друг друга, цените свою любовь и не дайте ни чему помешать Вам быть счастливыми вместе!")

	MisResultCondition(HasMission, 831)
	MisResultCondition(NoRecord,831)
	MisResultCondition(HasItem, 2902, 1)
	MisResultCondition(HasItem, 2903, 1)
	MisResultCondition(HasItem, 2845, 1)
	MisResultCondition(CheckItem,2902,2903)
	MisResultAction(TakeItem, 2902, 1 )
	MisResultAction(TakeItem, 2903, 1 )
	MisResultAction(TakeItem, 2845, 1 )
	MisResultAction(ClearMission, 831)
	MisResultAction(SetRecord,  831 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2915, 2, 4)
	MisResultAction(Starteffect,  370 )
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2903)	
	TriggerAction( 1, AddNextFlag, 831, 10, 1 )
	RegCurTrigger( 8311 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2845)	
	TriggerAction( 1, AddNextFlag, 831, 20, 1 )
	RegCurTrigger( 8312 )
		-------------------------------------------------ЗгіЗЦ®Бµ----------ВкА­ТААј	
	DefineMission (5536, "Прекрасная любовь", 832)
	
	MisBeginTalk("<t>Солнышко, Вам бы найти себе друга, спутника по жизни. Вам всего то для этого надо <bЛюбовный амулет принцессы>, <bКрасная веревка> и желание найти свою любовь. Я буду с ни терпением ждать Вас и Вашего любимого, приходите ко мне со своим избранником.")

	MisBeginCondition(NoMission,832)
	MisBeginCondition(NoMission,831)
	MisBeginCondition(HasRecord,830)
	MisBeginCondition(NoRecord,831)
	MisBeginCondition(NoRecord,832)
	MisBeginCondition(NoChaType,3)
	MisBeginCondition(NoChaType,4)
	MisBeginCondition(HasItem, 2903, 1)
	MisBeginAction(AddTrigger, 8321, TE_GETITEM, 2902, 1 )
	MisBeginAction(AddTrigger, 8322, TE_GETITEM, 2845, 1 )
	MisBeginAction(AddMission,832)
	MisCancelAction(ClearMission, 832)
	

	MisNeed(MIS_NEED_ITEM, 2902, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2845, 1, 20, 1 )


	MisHelpTalk("<t>Найти: <pИзбранника>, <bКрасную Верёвку> и <bЛюбовный амулет принца>.")
	MisResultTalk("<t>Вы такая прекрасная пара, Вы так подходите друг к другу. Примите мои поздравления, и возьмите в подарок эти свадебные наборы, но помните - Вы выбрали друг друга, и после свадьбы Вы будите обручены на вечную, взаимную любовь, берегите друг друга, цените свою любовь и не дайте ни чему помешать Вам быть счастливыми вместе!")

	MisResultCondition(HasMission, 832)
	MisResultCondition(NoRecord,832)
	MisResultCondition(HasItem, 2902, 1)
	MisResultCondition(HasItem, 2903, 1)
	MisResultCondition(HasItem, 2845, 1)
	MisResultCondition(CheckItem,2902,2903)
	MisResultAction(TakeItem, 2902, 1 )
	MisResultAction(TakeItem, 2903, 1 )
	MisResultAction(TakeItem, 2845, 1 )
	MisResultAction(ClearMission, 832)
	MisResultAction(SetRecord,  832 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2915, 2, 4)
	MisResultAction(Starteffect,  370 )
	MisResultBagNeed(2)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2902)	
	TriggerAction( 1, AddNextFlag, 832, 10, 1 )
	RegCurTrigger( 8321 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2845)	
	TriggerAction( 1, AddNextFlag, 832, 20, 1 )
	RegCurTrigger( 8322 )



	-------------------------------------------------МфХЅјЄДбЛ№1	
	DefineMission (5510, "Начало испытания", 743)
	
	MisBeginTalk("<t>Хотите быть Пиратом номер 1? Хотите узнать чего Вы стоите? Тогда пройдите испытания! Начало для Ваших мучений Вы найдёте в Аргенте. Дальнейшие указания Вы получите на месте. <rВозьмите это письмо и поместите его у себя в инвентаре в первую ячейку, и ни при каких обстоятельствах не убирайте его от туда, иначе Вам ни когда не узнать какой Вы пират>. Берите письмо и отправляйтесь в большое путешествие.<t>Хотите быть Пиратом номер 1? Хотите узнать чего Вы стоите? Тогда пройдите испытания! Начало для Ваших мучений Вы найдёте в Аргенте. Дальнейшие указания Вы получите на месте. <rВозьмите это письмо и поместите его у себя в инвентаре в первую ячейку, и ни при каких обстоятельствах не убирайте его от туда, иначе Вам ни когда не узнать какой Вы пират>. Берите письмо и отправляйтесь в большое путешествие.")

	MisBeginCondition(NoMission,743)
	MisBeginCondition(NoRecord,743)
	MisBeginCondition(CheckBagEmp,0)
	MisBeginAction(AddMission,743)
	MisBeginAction(AddChaItem1, 2911)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "Начинайте испытания с Оператора гавани Витнейя.")
	
	MisHelpTalk("<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками!")
	MisResultCondition(AlwaysFailure )

	---------------------------------------МфХЅјЄДбЛ№1

	DefineMission(5511,"Начало испытания",743,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Спасибо ты решил мою проблему!")
	MisResultCondition(HasMission, 743)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultCondition(NoRecord,743)
	MisResultAction(ClearMission, 743)
	MisResultAction(SetRecord,743 )
	


	-------------------------------------------------МфХЅјЄДбЛ№2	
	DefineMission (5512, "Начало испытания 2", 744)
	
	MisBeginTalk("<t>Вы идёте по следам кого то, поторопитесь, иначе Вас опередят, отправляйтесь к Оператору Даннису, он ждёт Вас!")

	MisBeginCondition(NoMission,744)
	MisBeginCondition(HasRecord, 743)
	MisBeginCondition(NoRecord,744)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,744)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")
	
	MisNeed(MIS_NEED_DESP, "Ищите Оператора Гавани в (136, 3432)")
	
	MisHelpTalk("<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------МфХЅјЄДбЛ№2

	DefineMission(5513,"Начало испытания 2",744,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Я Вас уже заждался. Долго... Долго Вы добираетесь.")
	MisResultCondition(HasMission, 744)
	MisResultCondition(NoRecord,744)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 744)
	MisResultAction(SetRecord,  744 )

	

	-------------------------------------------------МфХЅјЄДбЛ№3	
	DefineMission (5514, "Начало испытания", 745)
	
	MisBeginTalk("t>Это - письмо доставьте Оператору Дедане в (1544, 3712). Только поторопитесь, Вы не первый кто заинтересован в этом задании!")

	MisBeginCondition(NoMission,745)
	MisBeginCondition(HasRecord, 744)
	MisBeginCondition(NoRecord,745)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,745)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")
	
	MisNeed(MIS_NEED_DESP, "Отправляйтесь в (1544, 3712)")
	
	MisHelpTalk("<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------МфХЅјЄДбЛ№3

	DefineMission(5515,"Начало испытания",745,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Вы кто?")
	MisResultCondition(HasMission, 745)
	MisResultCondition(NoRecord,745)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 745)
	MisResultAction(SetRecord,  745 )



	-------------------------------------------------МфХЅјЄДбЛ№4	
	DefineMission (5516, "Начало испытания 4", 746)
	
	MisBeginTalk("<t>У меня очень мало времени, и я не встретившийся с Оператором Сок в (3194, 3507).")

	MisBeginCondition(NoMission,746)
	MisBeginCondition(HasRecord, 745)
	MisBeginCondition(NoRecord,746)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,746)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")
	
	MisNeed(MIS_NEED_DESP, "Ищите Оператора Сок в (3194, 3507)")
	
	MisHelpTalk("<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками!")
	MisResultCondition(AlwaysFailure )

	---------------------------------------МфХЅјЄДбЛ№4

	DefineMission(5517,"Начало испытания 4",746,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>У Вас должна была остаться одна вещь... Вы близки к завершению... Надеюсь Вы не передвигали эту вещь? Я говорю о письме в вашем инвентаре.")
	MisResultCondition(HasMission, 746)
	MisResultCondition(NoRecord,746)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 746)
	MisResultAction(SetRecord,  746 )
	


	-------------------------------------------------МфХЅјЄДбЛ№5	
	DefineMission (5518, "Начало испытания 5", 747)
	
	MisBeginTalk("<t>Хоть море и большое, и преодолевать в нём расстояния не так и просто, Вам всё же стоит поторопиться, если конечно Вы ещё не передумали получить набор Чёрного Дракона.")

	MisBeginCondition(NoMission,747)
	MisBeginCondition(HasRecord,746)
	MisBeginCondition(NoRecord,747)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,747)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")
	
	MisNeed(MIS_NEED_DESP, "Ищите Оператора Гавани Одия в точке(738, 3803)")
	
	MisHelpTalk("<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------МфХЅјЄДбЛ№5

	DefineMission(5519,"Начало испытания 5",747,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Вы такой же быстрый как Черепаха Тартила!")
	MisResultCondition(HasMission, 747)
	MisResultCondition(NoRecord,747)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 747)
	MisResultAction(SetRecord,  747 )
	


	-------------------------------------------------МфХЅјЄДбЛ№6	
	DefineMission (5520, "Начало испытания 6", 748)
	
	MisBeginTalk("<t>Путь, через который Вы сейчас поплывёте, очень опасен, на пути Вы можете встретить Сирен. Убедитесь что Ваши уши закрыты... Закройте уши себе... Да отпустите на конец мышку, дело серьёзное!")

	MisBeginCondition(NoMission,748)
	MisBeginCondition(HasRecord,747)
	MisBeginCondition(NoRecord,748)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,748)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")
	
	MisNeed(MIS_NEED_DESP, "Ищите Оператора Гавани Григория в точке(194, 1715).")
	
	MisHelpTalk("<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------МфХЅјЄДбЛ№6

	DefineMission(5521,"Начало испытания 6",748,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Паруса полные ветра и сердце полное смелости - это всё что нужно для отважного Пирата!")
	MisResultCondition(HasMission, 748)
	MisResultCondition(NoRecord,748)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 748)
	MisResultAction(SetRecord,  748 )
	


	-------------------------------------------------МфХЅјЄДбЛ№7	
	DefineMission (5522, "Начало испытания 7", 749)
	
	MisBeginTalk("<t>Вы уже приближаетесь к завершению этих не простых испытаний, но помните... Кто то идёт на один шаг в переди Вас.")

	MisBeginCondition(NoMission,749)
	MisBeginCondition(HasRecord,748)
	MisBeginCondition(NoRecord,749)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,749)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")
	
	MisNeed(MIS_NEED_DESP, "Отправляйтесь не медленно в Бухту Лаху и отыщите Оператора Гавани Домору в точке (3498, 923).")
	
	MisHelpTalk("<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------МфХЅјЄДбЛ№7

	DefineMission(5523,"Начало испытания 7",749,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Я слышал, что много людей гоняются за набором Чёрного Дракона...")
	MisResultCondition(HasMission, 749)
	MisResultCondition(NoRecord,749)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 749)
	MisResultAction(SetRecord,  749 )
	


	-------------------------------------------------МфХЅјЄДбЛ№8	
	DefineMission (5524, "Начало испытания 8", 750)
	
	MisBeginTalk("<t>Вы ещё тут?! А Вы гонитесь за набором Чёрного Дракона?! Так чего Вы тут стоите и слушаете бред пьяного Оператора?! Не теряйте время зря и ищите Оператора Бани!")

	MisBeginCondition(NoMission,750)
	MisBeginCondition(HasRecord,749)
	MisBeginCondition(NoRecord,750)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,750)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")
	
	MisNeed(MIS_NEED_DESP, "Ищите в Магическом Океане Оператора Гавани Бани в точке (2042, 635)")
	
	MisHelpTalk("<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками!")
	MisResultCondition(AlwaysFailure )

	---------------------------------------МфХЅјЄДбЛ№8

	DefineMission(5525,"Начало испытания 8",750,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Я смотрю Вы счастливчик, если ещё не стали жертвой в море!")
	MisResultCondition(HasMission, 750)
	MisResultCondition(NoRecord,750)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 750)
	MisResultAction(SetRecord,  750 )
	
	

	-------------------------------------------------МфХЅјЄДбЛ№9	
	DefineMission (5526, "Начало соревнования 9", 751)
	
	MisBeginTalk("<t>(12 часов рассказов старого Опиратора)... И вот тогда меня наградила сама Богиня Кара... Ой Вы спешите наверное, а чего молчите, плывите конечно же дальше, а то прозиваете свой Набор Чёрного Дракона.")

	MisBeginCondition(NoMission,751)
	MisBeginCondition(HasRecord,750)
	MisBeginCondition(NoRecord,751)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,751)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")
	
	MisNeed(MIS_NEED_DESP, "Плывите в точку(464, 468) и поговорите с местным оператором.")
	
	MisHelpTalk("<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками!")
	MisResultCondition(AlwaysFailure )

	---------------------------------------МфХЅјЄДбЛ№9

	DefineMission(5527,"Начало соревнования 9",751,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Бани любит поболтать! Он этим меня раздражает. Надеюсь Вы не заразились у него его балобольством...")
	MisResultCondition(HasMission, 751)
	MisResultCondition(NoRecord,751)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 751)
	MisResultAction(SetRecord,  751 )
	



	-------------------------------------------------МфХЅјЄДбЛ№10	
	DefineMission (5528, "Начало испытания 10", 752)
	
	MisBeginTalk("<t>Держите путь на север, не промохнётесь.")

	MisBeginCondition(NoMission,752)
	MisBeginCondition(HasRecord,751)
	MisBeginCondition(NoRecord,752)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,752)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")
	
	MisNeed(MIS_NEED_DESP, "Ищите Оператора Фардела в точке (3153, 674).")
	
	MisHelpTalk("<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками!")
	MisResultCondition(AlwaysFailure )

	---------------------------------------МфХЅјЄДбЛ№10

	DefineMission(5529,"Начало испытания 10",752,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Не хотелось бы Вас обидеть... Но... Шевелитесь!")
	MisResultCondition(HasMission, 752)
	MisResultCondition(NoRecord,752)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 752)
	MisResultAction(SetRecord,  752 )
	


	-------------------------------------------------МфХЅјЄДбЛ№11	
	DefineMission (5530, "Начало испытания 11", 753)
	
	MisBeginTalk("<t>Возможно Вы опоздали и Вас опередили!")

	MisBeginCondition(NoMission,753)
	MisBeginCondition(HasRecord,752)
	MisBeginCondition(NoRecord,753)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,753)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")
	
	MisNeed(MIS_NEED_DESP, "Поторопитесь и отыщите оператора гавани - Виткома в точке(2041, 1355).")
	
	MisHelpTalk("<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками!")
	MisResultCondition(AlwaysFailure )

	---------------------------------------МфХЅјЄДбЛ№11

	DefineMission(5531,"Начало испытания 11",753,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Добро пожаловать в Бухту Хавта!")
	MisResultCondition(HasMission, 753)
	MisResultCondition(NoRecord,753)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 753)
	MisResultAction(SetRecord,  753 )
	
	


	-------------------------------------------------МфХЅјЄДбЛ№12	
	DefineMission (5532, "Начало испытания 12", 754)
	
	MisBeginTalk("<t>Признаюсь... Вы очень всё долго делаете!")

	MisBeginCondition(NoMission,754)
	MisBeginCondition(HasRecord,753)
	MisBeginCondition(NoRecord,754)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,754)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")
	
	MisNeed(MIS_NEED_DESP, "Ищите Оператора Гавани Дарука в точке(1497, 1707).")
	
	MisHelpTalk("<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------МфХЅјЄДбЛ№12

	DefineMission(5533,"Начало испытания 12",754,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Да...Уж... Не ну а чё? Нет, я верю что Вы старались из-за всех сил... Верю. Но как Вы думаете сам... Вы долго бороздили по морям?")
	MisResultCondition(HasMission, 754)
	MisResultCondition(NoRecord,754)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(ClearMission, 754)
	MisResultAction(SetRecord,  754 )
	
	


	
	-------------------------------------------------МфХЅјЄДбЛ№13	
	DefineMission (5534, "Начало соревнования 13", 755)
	
	MisBeginTalk("<t>Не прошло и 20 лет... О чудо Герой... Вы всё таки доплыли до меня...!")

	MisBeginCondition(NoMission,755)
	MisBeginCondition(HasRecord,754)
	MisBeginCondition(NoRecord,755)
	MisBeginCondition(CheckBag, 2911,0,1)
	MisBeginAction(AddMission,755)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")
	
	MisNeed(MIS_NEED_DESP, "Отправляйтесь в Громоград и поговорите с Дио в точке(1083, 1285).")
	
	MisHelpTalk("<t>Все кто хочет себе набор Чёрного Дракона истязают себя этими проверками!")
	MisResultCondition(AlwaysFailure )

	---------------------------------------МфХЅјЄДбЛ№13

	DefineMission(5535,"Начало соревнования 13",755,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Вы очень медлительны, это письмо вело учёт затраченного Вам времени на прохождение этого испытания... И как Вы сами видите... Ну не расстраивайтесь, может быть в другом испытании Вам повезёт больше.")
	MisResultCondition(HasMission, 755)
	MisResultCondition(NoRecord,755)
	MisResultCondition(HasItem,2911,1)
	MisResultCondition(CheckBag, 2911,0,1)
	MisResultAction(AddChaItem2, 2912)
	MisResultAction(ClearMission, 755)
	MisResultAction(SetRecord,  755 )
	MisResultBagNeed(2)
	MisResultAction(ClearRecord, 743)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 744)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 745)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 746)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 747)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 748)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 749)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 750)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 751)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 752)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 753)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 754)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 755)---------------їЙТФ·ґёґЅУ

	-------------------------------------------------ВТ¶·УўРЫ----------ЙЩЕ®Э·µЩ	
	DefineMission (5536, "Герой Сражений Овна-Вампира", 1060)
	
	MisBeginTalk("<t>Настоящий Герой должен быть знаком с Хаосом, у Вас должно быть 10 очков Хаоса. ")

	MisBeginCondition(NoMission,1060)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1060)
	MisBeginAction(AddMission,1060)
	MisCancelAction(ClearMission, 1060)
	
	MisHelpTalk("<t> Постарайтесь набрать 10 очков Хаоса!")
	MisResultTalk("<t>Я знал что набрать 10 очков Хаоса не составит для Вас проблем.")

	MisResultCondition(HasMission, 1060)
	MisResultCondition(NoRecord,1060)
	MisResultCondition(HasFightingPoint,10 )
	MisResultAction(TakeFightingPoint, 10 )
	MisResultAction(ClearMission, 1060)
	MisResultAction(SetRecord,  1060 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ГыЙщУўРЫ----------ЙЩЕ®Э·µЩ	
	DefineMission (5537, "Славный герой овна-вампира", 1061)
	
	MisBeginTalk("<t>Вам необходимо иметь 500 очков репутации. Репутацию можно получить за обучение учеников. ")

	MisBeginCondition(NoMission,1061)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1061)
	MisBeginAction(AddMission,1061)
	MisCancelAction(ClearMission, 1061)
	
	MisHelpTalk("<t>Идите уже, обучайте учеников, не надо возле меня крутиться, я Вам всё равно не засчитаю миссию пока Вы не поучите учеников!")
	MisResultTalk("<t>А знаете, я даже не сомневалась в Ваших способностях.")

	MisResultCondition(HasMission, 1061)
	MisResultCondition(NoRecord,1061)
	MisResultCondition(HasCredit,500 )
	MisResultAction(DelRoleCredit, 500 )
	MisResultAction(ClearMission, 1061)
	MisResultAction(SetRecord,  1061 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------µИј¶УўРЫ----------ЙЩЕ®Э·µЩ	
	DefineMission (5538, "Герой овна-вампира", 1062)
	
	MisBeginTalk("<t>Ваш уровень должен быть не меньше 40 уровня! ")

	MisBeginCondition(NoMission,1062)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1062)
	MisBeginAction(AddMission,1062)
	MisCancelAction(ClearMission, 1062)
	
	MisHelpTalk("<t>Не вертитесь у меня под носом, идите и поднимайте свой уровень!")
	MisResultTalk("<t>Вот и хорошо.")

	MisResultCondition(HasMission, 1062)
	MisResultCondition(NoRecord,1062)
	MisResultCondition(LvCheck, ">", 39 )
	MisResultAction(ClearMission, 1062)
	MisResultAction(SetRecord,  1062 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------ИЩУюУўРЫ----------ЙЩЕ®Э·µЩ	
	DefineMission (5539, "Благородный герой овна-вампира", 1063)
	
	MisBeginTalk("<t>Без чести в наше время ни куда... У Вас должно быть как минимум 100 пунктов чести. ")

	MisBeginCondition(NoMission,1063)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1063)
	MisBeginAction(AddMission,1063)
	MisCancelAction(ClearMission, 1063)
	
	MisHelpTalk("<t>Заработайте себе честь!")
	MisResultTalk("<t>Вы Молодец,, Так бы и расцеловала бы Вас!")

	MisResultCondition(HasMission, 1063)
	MisResultCondition(NoRecord,1063)
	MisResultCondition(HasHonorPoint,100 )
	MisResultAction(TakeHonorPoint, 100 )
	MisResultAction(ClearMission, 1063)
	MisResultAction(SetRecord,  1063 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ІЙјЇґуК№----------ЙЩЕ®Э·µЩ	
	DefineMission (5540, "Посланник собирателей Овнов-вампиров", 1064)
	
	MisBeginTalk("<t>Давайте соберем пару вещей для меня. ")

	MisBeginCondition(NoMission,1064)
	MisBeginCondition(HasRecord,833)
	MisBeginCondition(NoRecord,1064)
	MisBeginAction(AddMission,1064)
	MisBeginAction(AddTrigger, 10641, TE_GETITEM, 3116, 15 )---------------ѕ«Бй№ы15
	MisBeginAction(AddTrigger, 10642, TE_GETITEM, 1678, 15 )---------------СтИЮ15
	MisBeginAction(AddTrigger, 10643, TE_GETITEM, 4809, 15 )-------------ДП№ПН·15
	MisBeginAction(AddTrigger, 10644, TE_GETITEM, 0855, 20 )---------------ѕ«БйУІ±Т20
	MisBeginAction(AddTrigger, 10645, TE_GETITEM, 4503, 1 )---------------»К№Ъ1ёц
	MisBeginAction(AddTrigger, 10646, TE_GETITEM, 1848, 50 )-------------Гж°ь50
	MisCancelAction(ClearMission, 1064)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 50, 67, 50 )

	MisHelpTalk("<t>Собрать эти предметы не составит труда, не теряйте зря времени!")
	MisResultTalk("<t>Ну у меня вообще нет слов, Вы настоящий профессионал своего дела!")

	MisResultCondition(HasMission, 1064)
	MisResultCondition(NoRecord,1064)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 50 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 50 )
	MisResultAction(ClearMission, 1064)
	MisResultAction(SetRecord,  1064 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1064, 1, 15 )
	RegCurTrigger( 10641 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1064, 16, 15 )
	RegCurTrigger( 10642 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1064, 31, 15 )
	RegCurTrigger( 10643 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1064, 46, 20 )
	RegCurTrigger( 10644 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1064, 66, 1 )
	RegCurTrigger( 10645 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1064, 67, 50 )
	RegCurTrigger( 10646 )

	----------------------------------------------------------іБЛЇµД°ЧСт----------ЙЩЕ®Э·µЩ
	DefineMission( 5541, "Овен-вампир и спящий овен", 1065 )
	MisBeginTalk("<t>Есть нгодяй, мерзавец, очень плохой человек в броне из золота. Пожалуйста помогите сельским жителям Острова Купидона избавляться от него.")
				
	MisBeginCondition(NoMission, 1065)
	MisBeginCondition(HasRecord,836)
	MisBeginCondition(NoRecord,1065)
	MisBeginAction(AddMission,1065)
	MisBeginAction(AddTrigger, 10651, TE_KILL, 1009, 1)---°ЧСтКШ»¤ХЯ
	
	MisCancelAction(ClearMission, 1065)

	MisNeed(MIS_NEED_DESP, "Убейте <rОвна> на о.Купидона в точке (2566, 2454)!")
	MisNeed(MIS_NEED_KILL, 1009,1, 10, 1)
	

	MisResultTalk("<t>И чего вы опять ждёте? Овен появляется не так уж и часто.")
	MisHelpTalk("<t>Вы мне кажитесь не победимым, я с каждой минутой всё больше и больше в Вас влюбляюсь.")
	MisResultCondition(HasMission,  1065)
	MisResultCondition(HasFlag, 1065, 10)
	MisResultCondition(NoRecord , 1065)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2950, 1, 4 )
	MisResultAction(ClearMission,  1065)
	MisResultAction(SetRecord,  1065 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1009)	
	TriggerAction( 1, AddNextFlag, 1065, 10, 1 )
	RegCurTrigger( 10651 )






-------------------------------------------------ВТ¶·УўРЫ----------ЙЩЕ®Э·µЩ	
	DefineMission (5542, "Герой Сражений Овна-Вампира", 1066)
	
	MisBeginTalk("<t>Настоящий Герой должен быть знаком с Хаосом, у Вас должно быть 20 очков Хаоса.")

	MisBeginCondition(NoMission,1066)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1066)
	MisBeginAction(AddMission,1066)
	MisCancelAction(ClearMission, 1066)
	
	MisHelpTalk("<t> Постарайтесь и у Вас получится!")
	MisResultTalk("<t>А я и не сомневалась что Вы сможете набить себе 20 очков Хаоса.")

	MisResultCondition(HasMission, 1066)
	MisResultCondition(NoRecord,1066)
	MisResultCondition(HasFightingPoint,20 )
	MisResultAction(TakeFightingPoint, 20 )
	MisResultAction(ClearMission, 1066)
	MisResultAction(SetRecord,  1066 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ГыЙщУўРЫ----------ЙЩЕ®Э·µЩ	
	DefineMission (5543, "Славный герой овна-вампира", 1067)
	
	MisBeginTalk("<t>Вам необходимо иметь 1000 очков репутации. Репутацию можно получить за обучение учеников. ")

	MisBeginCondition(NoMission,1067)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1067)
	MisBeginAction(AddMission,1067)
	MisCancelAction(ClearMission, 1067)
	
	MisHelpTalk("<t>Идите и обучайте учеников, зарабатывайте себе репутацию!")
	MisResultTalk("<t>Нет слов, одни восхищения!")

	MisResultCondition(HasMission, 1067)
	MisResultCondition(NoRecord,1067)
	MisResultCondition(HasCredit,1000 )
	MisResultAction(DelRoleCredit, 1000 )
	MisResultAction(ClearMission, 1067)
	MisResultAction(SetRecord,  1067 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------µИј¶УўРЫ----------ЙЩЕ®Э·µЩ	
	DefineMission (5544, "Герой овна-вампира", 1068)
	
	MisBeginTalk("<t>Ваш уровень должен быть не меньше 65 уровня. ")

	MisBeginCondition(NoMission,1068)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1068)
	MisBeginAction(AddMission,1068)
	MisCancelAction(ClearMission, 1068)
	
	MisHelpTalk("<t>Идите и повышайте свой уровень до 65 уровня.")
	MisResultTalk("<t>Очень хорошо!")

	MisResultCondition(HasMission, 1068)
	MisResultCondition(NoRecord,1068)
	MisResultCondition(LvCheck, ">", 44 )
	MisResultAction(ClearMission, 1068)
	MisResultAction(SetRecord,  1068 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------ИЩУюУўРЫ----------ЙЩЕ®Э·µЩ	
	DefineMission (5545, "Благородный герой овна-вампира", 1069)
	
	MisBeginTalk("<t>Без чести в наше время ни куда... У Вас должно быть как минимум 200 пунктов чести. ")

	MisBeginCondition(NoMission,1069)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1069)
	MisBeginAction(AddMission,1069)
	MisCancelAction(ClearMission, 1069)
	
	MisHelpTalk("<t>Возвращайтесь ко мне с честью.")
	MisResultTalk("<t>Можно Вас поцеловать мой герой?")

	MisResultCondition(HasMission, 1069)
	MisResultCondition(NoRecord,1069)
	MisResultCondition(HasHonorPoint,200 )
	MisResultAction(TakeHonorPoint, 200 )
	MisResultAction(ClearMission, 1069)
	MisResultAction(SetRecord,  1069 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ІЙјЇґуК№----------ЙЩЕ®Э·µЩ	
	DefineMission (5546, "Посланник собирателей Овнов-вампиров", 1070)
	
	MisBeginTalk("<t>Помогите собрать мне эти вещи. ")

	MisBeginCondition(NoMission,1070)
	MisBeginCondition(HasRecord,834)
	MisBeginCondition(NoRecord,1070)
	MisBeginAction(AddMission,1070)
	MisBeginAction(AddTrigger, 10701, TE_GETITEM, 3116, 15 )---------------ѕ«Бй№ы15
	MisBeginAction(AddTrigger, 10702, TE_GETITEM, 1678, 15 )---------------СтИЮ15
	MisBeginAction(AddTrigger, 10703, TE_GETITEM, 4809, 15 )-------------ДП№ПН·15
	MisBeginAction(AddTrigger, 10704, TE_GETITEM, 0855, 20 )---------------ѕ«БйУІ±Т20
	MisBeginAction(AddTrigger, 10705, TE_GETITEM, 4503, 1 )---------------»К№Ъ1ёц
	MisBeginAction(AddTrigger, 10706, TE_GETITEM, 1848, 40 )-------------µ°ёв40
	MisBeginAction(AddTrigger, 10707, TE_GETITEM, 2673, 10 )-------------»ГУ°·ўЙъЖчLV1  10
	MisCancelAction(ClearMission, 1070)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 40, 67, 40 )
	MisNeed(MIS_NEED_ITEM, 2673, 10, 107, 10 )

	MisHelpTalk("<t>Вы сможете это собрать, только не теряйте дух!")
	MisResultTalk("<t>А я и говорила, что это не составит труда.")

	MisResultCondition(HasMission, 1070)
	MisResultCondition(NoRecord,1070)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 40 )
	MisResultCondition(HasItem, 2673, 10 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 40 )
	MisResultAction(TakeItem, 2673, 10 )
	MisResultAction(ClearMission, 1070)
	MisResultAction(SetRecord,  1070 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1070, 1, 15 )
	RegCurTrigger( 10701 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1070, 16, 15 )
	RegCurTrigger( 10702 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1070, 31, 15 )
	RegCurTrigger( 10703 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1070, 46, 20 )
	RegCurTrigger( 10704 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1070, 66, 1 )
	RegCurTrigger( 10705 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1070, 67, 40 )
	RegCurTrigger( 10706 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2673)	
	TriggerAction( 1, AddNextFlag, 1070, 107, 10 )
	RegCurTrigger( 10707 )

	



-------------------------------------------------ВТ¶·УўРЫ----------ЙЩЕ®Э·µЩ	
	DefineMission (5547, "Герой Сражений Овна-Вампира", 1071)
	
	MisBeginTalk("<t>Настоящий Герой должен быть знаком с Хаосом, у Вас должно быть 100 очков Хаоса. ")

	MisBeginCondition(NoMission,1071)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1071)
	MisBeginAction(AddMission,1071)
	MisCancelAction(ClearMission, 1071)
	
	MisHelpTalk("<t>Для Вас не должно составить труда набить 100 очков Хаоса!")
	MisResultTalk("<t>Для Вас не должно составить труда набить 100 очков Хаоса.")

	MisResultCondition(HasMission, 1071)
	MisResultCondition(NoRecord,1071)
	MisResultCondition(HasFightingPoint,50 )
	MisResultAction(TakeFightingPoint, 50 )
	MisResultAction(ClearMission, 1071)
	MisResultAction(SetRecord,  1071 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2944, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ГыЙщУўРЫ----------ЙЩЕ®Э·µЩ	
	DefineMission (5548, "Славный герой овна-вампира", 1072)
	
	MisBeginTalk("<t>Вам необходимо иметь 3000 очков репутации. Репутацию можно получить за обучение учеников. ")

	MisBeginCondition(NoMission,1072)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1072)
	MisBeginAction(AddMission,1072)
	MisCancelAction(ClearMission, 1072)
	
	MisHelpTalk("<t>Ну идите же уже учите малышей, зарабатывайте репутацию!")
	MisResultTalk("<t>Вы хороший учитель")

	MisResultCondition(HasMission, 1072)
	MisResultCondition(NoRecord,1072)
	MisResultCondition(HasCredit,3000 )
	MisResultAction(DelRoleCredit, 3000 )
	MisResultAction(ClearMission, 1072)
	MisResultAction(SetRecord,  1072 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2945, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------µИј¶УўРЫ----------ЙЩЕ®Э·µЩ	
	DefineMission (5549, "Герой овна-вампира", 1073)
	
	MisBeginTalk("<t>У Вас должен быть как минимум 75 уровень. ")

	MisBeginCondition(NoMission,1073)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1073)
	MisBeginAction(AddMission,1073)
	MisCancelAction(ClearMission, 1073)
	
	MisHelpTalk("<t>Не теряйте зря время, повышайте свой уровень до 75 уровня.")
	MisResultTalk("<t>Очень хорошо, Вы мой Герой")

	MisResultCondition(HasMission, 1073)
	MisResultCondition(NoRecord,1073)
	MisResultCondition(LvCheck, ">", 49 )
	MisResultAction(ClearMission, 1073)
	MisResultAction(SetRecord,  1073 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2946, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------ИЩУюУўРЫ----------ЙЩЕ®Э·µЩ	
	DefineMission (5550, "Благородный герой овна-вампира", 1074)
	
	MisBeginTalk("<t>Без чести в наше время ни куда... У Вас должно быть как минимум 500 пунктов чести")

	MisBeginCondition(NoMission,1074)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1074)
	MisBeginAction(AddMission,1074)
	MisCancelAction(ClearMission, 1074)
	
	MisHelpTalk("<t>Не крутитесь у меня под носом, идите и зарабатывайте честь.")
	MisResultTalk("<t>Я Вас поцелую в щёчку, можно мой Герой?")

	MisResultCondition(HasMission, 1074)
	MisResultCondition(NoRecord,1074)
	MisResultCondition(HasHonorPoint,500 )
	MisResultAction(TakeHonorPoint, 500 )
	MisResultAction(ClearMission, 1074)
	MisResultAction(SetRecord,  1074 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2947, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ІЙјЇґуК№----------ЙЩЕ®Э·µЩ	
	DefineMission (5551, "Посланник собирателей Овнов-вампиров", 1075)
	
	MisBeginTalk("<t>Давайте соберём для меня пару предметов. ")

	MisBeginCondition(NoMission,1075)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(NoRecord,1075)
	MisBeginAction(AddMission,1075)
	MisBeginAction(AddTrigger, 10751, TE_GETITEM, 3116, 15 )---------------ѕ«Бй№ы15
	MisBeginAction(AddTrigger, 10752, TE_GETITEM, 1678, 15 )---------------СтИЮ15
	MisBeginAction(AddTrigger, 10753, TE_GETITEM, 4809, 15 )-------------ДП№ПН·15
	MisBeginAction(AddTrigger, 10754, TE_GETITEM, 0855, 20 )---------------ѕ«БйУІ±Т20
	MisBeginAction(AddTrigger, 10755, TE_GETITEM, 4503, 1 )---------------»К№Ъ1ёц
	MisBeginAction(AddTrigger, 10756, TE_GETITEM, 1848, 40 )-------------µ°ёв40
	MisBeginAction(AddTrigger, 10757, TE_GETITEM, 2673, 10 )-------------»ГУ°·ўЙъЖчLV1  10
	MisBeginAction(AddTrigger, 10758, TE_GETITEM, 0227, 4 )-------------КШ»¤ѕ«БйЛЗБП  4
	MisCancelAction(ClearMission, 1075)
	

	MisNeed(MIS_NEED_ITEM, 3116, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 1678, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 4809, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 0855, 20, 46, 20 )
	MisNeed(MIS_NEED_ITEM, 4503, 1, 66, 1 )
	MisNeed(MIS_NEED_ITEM, 1848, 40, 67, 40 )
	MisNeed(MIS_NEED_ITEM, 2673, 10, 107, 10 )
	MisNeed(MIS_NEED_ITEM, 0227, 4, 117, 4 )

	MisHelpTalk("<t>Не теряйте время зря, идите и соберите мне эти предметы!")
	MisResultTalk("<t>Ну вот видите, это не так уж и сложно!")

	MisResultCondition(HasMission, 1075)
	MisResultCondition(NoRecord,1075)
	MisResultCondition(HasItem, 3116, 15 )
	MisResultCondition(HasItem, 1678, 15 )
	MisResultCondition(HasItem, 4809, 15 )
	MisResultCondition(HasItem, 0855, 20 )
	MisResultCondition(HasItem, 4503, 1 )
	MisResultCondition(HasItem, 1848, 40 )
	MisResultCondition(HasItem, 2673, 10 )
	MisResultCondition(HasItem, 0227, 4 )

	MisResultAction(TakeItem, 3116, 15 )
	MisResultAction(TakeItem, 1678, 15 )
	MisResultAction(TakeItem, 4809, 15 )
	MisResultAction(TakeItem, 0855, 20 )
	MisResultAction(TakeItem, 4503, 1 )
	MisResultAction(TakeItem, 1848, 40 )
	MisResultAction(TakeItem, 2673, 10 )
	MisResultAction(TakeItem, 0227, 4 )
	MisResultAction(ClearMission, 1075)
	MisResultAction(SetRecord,  1075 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2948, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2990, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1075, 1, 15 )
	RegCurTrigger( 10751 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 1075, 16, 15 )
	RegCurTrigger( 10752 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4809)	
	TriggerAction( 1, AddNextFlag, 1075, 31, 15 )
	RegCurTrigger( 10753 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0855)	
	TriggerAction( 1, AddNextFlag, 1075, 46, 20 )
	RegCurTrigger( 10754 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4503)	
	TriggerAction( 1, AddNextFlag, 1075, 66, 1 )
	RegCurTrigger( 10755 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1848)	
	TriggerAction( 1, AddNextFlag, 1075, 67, 40 )
	RegCurTrigger( 10756 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2673)	
	TriggerAction( 1, AddNextFlag, 1075, 107, 10 )
	RegCurTrigger( 10757 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1075, 117, 4 )
	RegCurTrigger( 10758 )


	

	----------------------------------------------------------ЙзЅ»ґуК№----------ЙЩЕ®Э·µЩ
	DefineMission( 5552, "Посланник собирателей Овнов-вампиров", 1076 )
	MisBeginTalk("<t>Вам придётся выполнить не простую задачу. Отказаться от всего, что бы достичь желаемой цели.")
				
	MisBeginCondition(NoMission, 1076)
	MisBeginCondition(NoRecord,1076)
	MisBeginCondition(HasRecord, 836)
	MisBeginAction(AddMission,1076)
	MisCancelAction(ClearMission, 1076)

	MisNeed(MIS_NEED_DESP, "Поговорите с Принцом-тритоном Хассаном в Шайтане в точке(1254, 3491)")
	
	MisHelpTalk("<t>Вам необходимо идти по координатам!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№-----------------ИЛУгНхЧУЎ¤№юЙіМШ
	DefineMission(5553, "Посол мира", 1076, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы знаете, что я самый красивый тут и самый быстрый плавец!")
	MisResultCondition(NoRecord, 1076)
	MisResultCondition(HasMission,1076)
	MisResultAction(ClearMission,1076)
	MisResultAction(SetRecord, 1076)

	----------------------------------------------------------ЙзЅ»ґуК№1----------ИЛУгНхЧУЎ¤№юЙіМШ
	DefineMission( 5554, "Посол мира 2", 1077 )
	MisBeginTalk("<t>Я молил Богов, что бы меня превратили в дерево в тени которого 'Она' нежится, но по иронии судьбы Боги превратили меня в Рыбу.")
				
	MisBeginCondition(NoMission, 1077)
	MisBeginCondition(NoRecord,1077)
	MisBeginCondition(HasRecord, 1076)
	MisBeginAction(AddMission,1077)
	MisCancelAction(ClearMission, 1077)

	MisNeed(MIS_NEED_DESP, "Отправляйтесь в Ледынь в точку (1010, 350)")
	
	MisHelpTalk("<t>Я живу теперь в воде")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№1-------------ІЭЭ®УЕУЕ
	DefineMission(5555, "Посол мира 2", 1077, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Привет! Мой посол!")
	MisResultCondition(NoRecord, 1077)
	MisResultCondition(HasMission,1077)
	MisResultAction(ClearMission,1077)
	MisResultAction(SetRecord, 1077)

	----------------------------------------------------------ЙзЅ»ґуК№2----------ІЭЭ®УЕУЕ
	DefineMission( 5556, "Посол мира 3", 1078 )
	MisBeginTalk("<t>Вы не пугаетесь моей внешности? Благослови Вас Господь.")
				
	MisBeginCondition(NoMission, 1078)
	MisBeginCondition(NoRecord,1078)
	MisBeginCondition(HasRecord, 1077)
	MisBeginAction(AddMission,1078)
	MisCancelAction(ClearMission, 1078)

	MisNeed(MIS_NEED_DESP, "Ищите Пачкуля в Аргенте в точке(2272, 2700)")
	
	MisHelpTalk("<t>Идите к старцу Пачкулю")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№2--------АПХЯЎ¤єэНїЙЅИЛ
	DefineMission(5557, "Посол мира 3", 1078, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Все имеют право на счастье")
	MisResultCondition(NoRecord, 1078)
	MisResultCondition(HasMission,1078)
	MisResultAction(ClearMission,1078)
	MisResultAction(SetRecord, 1078)



	----------------------------------------------------------ЙзЅ»ґуК№3----------АПХЯЎ¤єэНїЙЅИЛ
	DefineMission( 5558, "Посол мира 4", 1079 )
	MisBeginTalk("<t>О.. Я могу ещё вызвать чувство ревности... Это для меня очень приятно. Но всё таки ищите - Шамеля. Он мудрее меня.")
				
	MisBeginCondition(NoMission, 1079)
	MisBeginCondition(NoRecord,1079)
	MisBeginCondition(HasRecord, 1078)
	MisBeginAction(AddMission,1079)
	MisCancelAction(ClearMission, 1079)

	MisNeed(MIS_NEED_DESP, "Отправляйтесь в Шайтан на поиски Шанеля в точку(664, 3093)")
	
	MisHelpTalk("<t>Музыка творит чудеса, не забывайте это!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№3--------АЦЖчЧЁјТЎ¤ЙіГ·¶э
	DefineMission(5559, "Посол мира 4", 1079, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы от Пачкуля?!")
	MisResultCondition(NoRecord, 1079)
	MisResultCondition(HasMission,1079)
	MisResultAction(ClearMission,1079)
	MisResultAction(SetRecord, 1079)


	----------------------------------------------------------ЙзЅ»ґуК№4----------АЦЖчЧЁјТЎ¤ЙіГ·¶э
	DefineMission( 5560, "Посол мира 5", 1080 )
	MisBeginTalk("<t>Моя мечта - это сделать музыкой рай на замле!")
				
	MisBeginCondition(NoMission, 1080)
	MisBeginCondition(NoRecord,1080)
	MisBeginCondition(HasRecord, 1079)
	MisBeginAction(AddMission,1080)
	MisCancelAction(ClearMission, 1080)

	MisNeed(MIS_NEED_DESP, "Поговорите с Лулу в Ледыне в точке(2668, 634)")
	
	MisHelpTalk("<t>Мечта - тень реальности")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№4--------ВіВі
	DefineMission(5561, "Посол мира 5", 1080, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Я хочу лакомиться Леденцами каждый день!")
	MisResultCondition(NoRecord, 1080)
	MisResultCondition(HasMission,1080)
	MisResultAction(ClearMission,1080)
	MisResultAction(SetRecord, 1080)


	----------------------------------------------------------ЙзЅ»ґуК№5----------ВіВі
	DefineMission( 5562, "Посол мира 6", 1081 )
	MisBeginTalk("<t>Люблю леденцы, и свою сестру, которая отводит меня в Аргент к другу, которого я так ни разу и не увидела")
				
	MisBeginCondition(NoMission, 1081)
	MisBeginCondition(NoRecord,1081)
	MisBeginCondition(HasRecord, 1080)
	MisBeginAction(AddMission,1081)
	MisCancelAction(ClearMission, 1081)

	MisNeed(MIS_NEED_DESP, "Поговорите в Аргенте с Грегом в точке(526, 2432)")
	
	MisHelpTalk("<t>Пожалуйста поговорите с Грегом.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№5--------№ЕБ¦№ы
	DefineMission(5563, "Посол мира 6", 1081, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы - друг Лалу? А что с ней?")
	MisResultCondition(NoRecord, 1081)
	MisResultCondition(HasMission,1081)
	MisResultAction(ClearMission,1081)
	MisResultAction(SetRecord, 1081)



	----------------------------------------------------------ЙзЅ»ґуК№6----------№ЕБ¦№ы
	DefineMission( 5564, "Посол мира 7", 1082 )
	MisBeginTalk("<t>Я люблю разглядывать незнакомцев из далека и и ставить предположения кем бы мог быть этот незнакомец, но вот Велли... я до сих пор не могу понять кто же он, Вы мне не поможете?")
				
	MisBeginCondition(NoMission, 1082)
	MisBeginCondition(NoRecord,1082)
	MisBeginCondition(HasRecord, 1081)
	MisBeginAction(AddMission,1082)
	MisCancelAction(ClearMission, 1082)

	MisNeed(MIS_NEED_DESP, "Поговорить с Велли в Шайтане(898, 3683)")
	
	MisHelpTalk("<t>Как я хочу что бы Велли оказался Рыцарем")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№6--------РЎСтЎ¤НюАы
	DefineMission(5565, "Посол мира 7", 1082, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Я был нормальным ягнёнком, но не так давно я стал разговаривать на человеческом языке")
	MisResultCondition(NoRecord, 1082)
	MisResultCondition(HasMission,1082)
	MisResultAction(ClearMission,1082)
	MisResultAction(SetRecord, 1082)


	----------------------------------------------------------ЙзЅ»ґуК№7----------РЎСтЎ¤НюАы
	DefineMission( 5566, "Посол мира 8", 1083 )
	MisBeginTalk("<t>Вы проходите задание Тортуги? Давайте я Вас познакомлю с одним человеком, Ваше знакомство поможет Вам!")
				
	MisBeginCondition(NoMission, 1083)
	MisBeginCondition(NoRecord,1083)
	MisBeginCondition(HasRecord, 1082)
	MisBeginAction(AddMission,1083)
	MisCancelAction(ClearMission, 1083)

	MisNeed(MIS_NEED_DESP, "Поговорите с врачом в Аргенте в точке(1004, 2973)")
	
	MisHelpTalk("<t>Желаю удачи человек... Бее... Бееее...!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№8--------ВГРРТЅЙъЎ¤ГЧДОПЈ¶ы
	DefineMission(5567, "Посол мира 8", 1083, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Мир меняется на глазах... Всё не вечно в этом мире!")
	MisResultCondition(NoRecord, 1083)
	MisResultCondition(HasMission,1083)
	MisResultAction(ClearMission,1083)
	MisResultAction(SetRecord, 1083)


	----------------------------------------------------------ЙзЅ»ґуК№8----------ВГРРТЅЙъЎ¤ГЧДОПЈ¶ы
	DefineMission( 5568, "Посол мира 9", 1084 )
	MisBeginTalk("<t>Навестите Фей Фей, и чмокните её за меня.")
				
	MisBeginCondition(NoMission, 1084)
	MisBeginCondition(NoRecord,1084)
	MisBeginCondition(HasRecord, 1083)
	MisBeginAction(AddMission,1084)
	MisCancelAction(ClearMission, 1084)

	MisNeed(MIS_NEED_DESP, "Отправляйтесь в Шайтан и поговорите с Фей Фей(797, 3129)")
	
	MisHelpTalk("<t>Я хочу, что бы Вы отстали от меня.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№8--------·Ж·Ж
	DefineMission(5569, "Посол мира 9", 1084, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Доктор - тихий и очень странный, но хороший человек!")
	MisResultCondition(NoRecord, 1084)
	MisResultCondition(HasMission,1084)
	MisResultAction(ClearMission,1084)
	MisResultAction(SetRecord, 1084)

	----------------------------------------------------------ЙзЅ»ґуК№10----------·Ж·Ж
	DefineMission( 5572, "Посол мира 10", 1086 )
	MisBeginTalk("<t>Не говорите больше ни слова я люблю одну девушку, её имя - Элизабет, у меня есть приглашение на балл, я хочу её пригласить.")
				
	MisBeginCondition(NoMission, 1086)
	MisBeginCondition(NoRecord,1086)
	MisBeginCondition(HasRecord, 1084)
	MisBeginAction(AddMission,1086)
	MisCancelAction(ClearMission, 1086)

	MisNeed(MIS_NEED_DESP, "Ищите Элизабет в Заливе Сокровищ(616, 965)")
	
	MisHelpTalk("<t>Романтический танец... Романтический вечер....")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№10--------ТБАцЙЇ°Ч
	DefineMission(5573, "Посол мира 10", 1086, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Меня приглашают на Балл? Это прекрасно.")
	MisResultCondition(NoRecord, 1086)
	MisResultCondition(HasMission,1086)
	MisResultAction(ClearMission,1086)
	MisResultAction(SetRecord, 1086)

	----------------------------------------------------------ЙзЅ»ґуК№11----------ТБАцЙЇ°Ч
	DefineMission( 5574, "Посол мира 11", 1087 )
	MisBeginTalk("<t>Балл уже скоро! Всё готово, за исключением... не пригласите ли Вы Генерала Кена?")
				
	MisBeginCondition(NoMission, 1087)
	MisBeginCondition(NoRecord,1087)
	MisBeginCondition(HasRecord, 1086)
	MisBeginAction(AddMission,1087)
	MisCancelAction(ClearMission, 1087)

	MisNeed(MIS_NEED_DESP, "Ищите Генерала в Громграде(808, 1521)")
	
	MisHelpTalk("<t>Я хочу узнать тех девочек")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№11--------єЈѕьЧЬІїЦё»У№ЩЎ¤»щ.°ЈЛ№ОчЧјЅ«
	DefineMission(5575, "Посол мира 11", 1087, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Я никогда не отклоняю приглашения от красивых девушек, Хе хе")
	MisResultCondition(NoRecord, 1087)
	MisResultCondition(HasMission,1087)
	MisResultAction(ClearMission,1087)
	MisResultAction(SetRecord, 1087)

	----------------------------------------------------------ЙзЅ»ґуК№12----------єЈѕьЧЬІїЦё»У№ЩЎ¤»щ.°ЈЛ№ОчЧјЅ«
	DefineMission( 5576, "Посол мира 12", 1088 )
	MisBeginTalk("<t>Я обещал встретиться с Момо в Шайтане. Не скажете ей, что я приболел и не смогу с нею встретиться. а я тогда пойду готовиться к баллу.")
				
	MisBeginCondition(NoMission, 1088)
	MisBeginCondition(NoRecord,1088)
	MisBeginCondition(HasRecord, 1087)
	MisBeginAction(AddMission,1088)
	MisCancelAction(ClearMission, 1088)

	MisNeed(MIS_NEED_DESP, "Обмануть Момо в Шайтане в (1209, 3196)")
	
	MisHelpTalk("<t>Романтичный танец даст мне прекрасный шанс добиться ее. О моя прекрасная Элизабет...")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№12--------ДўДў
	DefineMission(5577, "Посол мира 12", 1088, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Он приболел? Вы говорите мне правду? Бедный Генерал, только час назад он был здоровым, полон счастья и веселья...")
	MisResultCondition(NoRecord, 1088)
	MisResultCondition(HasMission,1088)
	MisResultAction(ClearMission,1088)
	MisResultAction(SetRecord, 1088)


	----------------------------------------------------------ЙзЅ»ґуК№13----------ДўДў
	DefineMission( 5578, "Посол мира 13", 1089 )
	MisBeginTalk("<t>Мой друг не проч навестить Генерала, не попросите моего друга об одолжении???")
				
	MisBeginCondition(NoMission, 1089)
	MisBeginCondition(NoRecord,1089)
	MisBeginCondition(HasRecord, 1088)
	MisBeginAction(AddMission,1089)
	MisCancelAction(ClearMission, 1089)

	MisNeed(MIS_NEED_DESP, "Поговорить с Берри в Аргенте в (1893, 2812)")
	
	MisHelpTalk("<t>Берри станет поэтом... я в этом просто уверена.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№13--------МФМФ
	DefineMission(5579, "Посол мира 13", 1089, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Хм... говорите Генерал заболел, странно, странно, но мы его не оставим одного в эту трудную минуту!")
	MisResultCondition(NoRecord, 1089)
	MisResultCondition(HasMission,1089)
	MisResultAction(ClearMission,1089)
	MisResultAction(SetRecord, 1089)

	----------------------------------------------------------ЙзЅ»ґуК№14----------МФМФ
	DefineMission( 5580, "Посол мира 14", 1090 )
	MisBeginTalk("<t>Плохо, Генерал если болен это очень плохо, я отправлю к нему Ваню.")
				
	MisBeginCondition(NoMission, 1090)
	MisBeginCondition(NoRecord,1090)
	MisBeginCondition(HasRecord, 1089)
	MisBeginAction(AddMission,1090)
	MisCancelAction(ClearMission, 1090)

	MisNeed(MIS_NEED_DESP, "Поговорите с Ваней в Ледыне в (1380, 523)")
	
	MisHelpTalk("<t>Ваней находится в Ледыне.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№14--------ОВАтЎ¤±щИЄ        
	DefineMission(5581, "Посол мира 14", 1090, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Можете мне не врать, я уже знаю что Генерал променял Момо на танец с Элизабет, меня тоже любили красавцы когда я была молодой.")
	MisResultCondition(NoRecord, 1090)
	MisResultCondition(HasMission,1090)
	MisResultAction(ClearMission,1090)
	MisResultAction(SetRecord, 1090)

	----------------------------------------------------------ЙзЅ»ґуК№15----------ОВАтЎ¤±щИЄ
	DefineMission( 5582, "Посол мира 15", 1091 )
	MisBeginTalk("<t>У меня болят ноги, навестите Дона Пита от моего лица и я не расскажу Момо о Вашей лжи!")
				
	MisBeginCondition(NoMission, 1091)
	MisBeginCondition(NoRecord,1091)
	MisBeginCondition(HasRecord, 1090)
	MisBeginAction(AddMission,1091)
	MisCancelAction(ClearMission, 1091)

	MisNeed(MIS_NEED_DESP, "Поговорите с Дон Питом в Аргенте(1113, 2779)")
	
	MisHelpTalk("<t>Как же не хорошо обманывать людей, тем более когда один из них по настоящему любит!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№15-------- ИрµГЎ¤Ж¤ёк
	DefineMission(5583, "Посол мира 15", 1091, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Винн заболела? Ноги болят? Что мне сделать, что бы помочь ей?")
	MisResultCondition(NoRecord, 1091)
	MisResultCondition(HasMission,1091)
	MisResultAction(ClearMission,1091)
	MisResultAction(SetRecord, 1091)


	----------------------------------------------------------ЙзЅ»ґуК№16----------ИрµГЎ¤Ж¤ёк
	DefineMission( 5584, "Посол мира 16", 1092 )
	MisBeginTalk("<t>Всё дела, дела, совсем нету ни на что времени.")
				
	MisBeginCondition(NoMission, 1092)
	MisBeginCondition(NoRecord,1092)
	MisBeginCondition(HasRecord, 1091)
	MisBeginAction(AddMission,1092)
	MisCancelAction(ClearMission, 1092)

	MisNeed(MIS_NEED_DESP, "Отправляйтесь в Ледынь в точку(2134, 555)")
	
	MisHelpTalk("<t>Я полагаю, что Оракул поймет!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№16-------- НЁБйХЯЎ¤ФВ№вСЫ
	DefineMission(5585, "Посол мира 16", 1092, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Если бы я смог исправить все ошибки сделанные ранее...")
	MisResultCondition(NoRecord, 1092)
	MisResultCondition(HasMission,1092)
	MisResultAction(ClearMission,1092)
	MisResultAction(SetRecord, 1092)


	----------------------------------------------------------ЙзЅ»ґуК№17----------НЁБйХЯЎ¤ФВ№вСЫ
	DefineMission( 5586, "Посол мира 17", 1093 )
	MisBeginTalk("<t>Проклятый Дуриан...Проклятый Дуриан...Проклятый Дуриан...")
				
	MisBeginCondition(NoMission, 1093)
	MisBeginCondition(NoRecord,1093)
	MisBeginCondition(HasRecord, 1092)
	MisBeginAction(AddMission,1093)
	MisCancelAction(ClearMission, 1093)

	MisNeed(MIS_NEED_DESP, "Отыщите Дуриана в Аргенте в точке(1535, 3071)")
	
	MisHelpTalk("<t>Дурио походит на ребенка. Он всегда мечтает")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№17-------- БсБ«
	DefineMission(5587, "Посол мира 17", 1093, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>А меня моя болезнь не смущает ни капельки, я из-за неё стройный и меня вполне всё устраивает...")
	MisResultCondition(NoRecord, 1093)
	MisResultCondition(HasMission,1093)
	MisResultAction(ClearMission,1093)
	MisResultAction(SetRecord, 1093)

	----------------------------------------------------------ЙзЅ»ґуК№18----------БсБ«
	DefineMission( 5588, "Посол мира 18", 1094 )
	MisBeginTalk("<t>Не имея свободного времен из-за постоянных дел, я не могу даже навестить <bНану>, Не навестите <bНану> от моего имени.")
				
	MisBeginCondition(NoMission, 1094)
	MisBeginCondition(NoRecord,1094)
	MisBeginCondition(HasRecord, 1093)
	MisBeginAction(AddMission,1094)
	MisCancelAction(ClearMission, 1094)

	MisNeed(MIS_NEED_DESP, "Поговорите с <bНаной> в Ледыне(798, 369)")
	
	MisHelpTalk("<t>А всё таки я бы не отказался от лишних килограммов в весе.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№18-------- ДОДО
	DefineMission(5589, "Посол мира 18", 1094, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Я очень ревнив")
	MisResultCondition(NoRecord, 1094)
	MisResultCondition(HasMission,1094)
	MisResultAction(ClearMission,1094)
	MisResultAction(SetRecord, 1094)

	----------------------------------------------------------ЙзЅ»ґуК№19----------ДОДО
	DefineMission( 5590, "Посол мира 19", 1095 )
	MisBeginTalk("<t>Я был занят. Писал поэмы. Не поможете мне? Передайте моё сообщение <bЮрию>.")
				
	MisBeginCondition(NoMission, 1095)
	MisBeginCondition(NoRecord,1095)
	MisBeginCondition(HasRecord, 1094)
	MisBeginAction(AddMission,1095)
	MisCancelAction(ClearMission, 1095)

	MisNeed(MIS_NEED_DESP, "Ищите Юрия в  (624, 2105)")
	
	MisHelpTalk("<t>Гомер - самый великий поэт всех времён и народов!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№19-------- єЈА¶Ў¤Оў·з
	DefineMission(5591, "Посол мира 19", 1095, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Ах Морщины! Ах")
	MisResultCondition(NoRecord, 1095)
	MisResultCondition(HasMission,1095)
	MisResultAction(ClearMission,1095)
	MisResultAction(SetRecord, 1095)


		----------------------------------------------------------ЙзЅ»ґуК№20----------єЈА¶Ў¤Оў·з
	DefineMission( 5592, "Посол мира 20", 1096 )
	MisBeginTalk("<t>Однажды я был в море и на нас напало ужасное чудовище, и если бы не тот добрый человек, я бы с вами сейчас не разговаривал, пожалуйста скажите ему ещё раз спасибо от меня.")
				
	MisBeginCondition(NoMission, 1096)
	MisBeginCondition(NoRecord,1096)
	MisBeginCondition(HasRecord, 1095)
	MisBeginAction(AddMission,1096)
	MisCancelAction(ClearMission, 1096)

	MisNeed(MIS_NEED_DESP, "Отблагодарите Портальщика Абаддона в (690, 1043)")
	
	MisHelpTalk("<t>Спасибо, идите же, идите.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№20-------- µШУьґ«ЛНК№
	DefineMission(5593, "Посол мира 20", 1096, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Хм... Это было очень давно... Я польщён и удивлён, что он ещё это помнит!")
	MisResultCondition(NoRecord, 1096)
	MisResultCondition(HasMission,1096)
	MisResultAction(ClearMission,1096)
	MisResultAction(SetRecord, 1096)

		----------------------------------------------------------ЙзЅ»ґуК№21----------µШУьґ«ЛНК№
	DefineMission( 5594, "Посол мира 21", 1097 )
	MisBeginTalk("<t>Хотите меня отблагодарить? Хорошо поговорите с Портальщиком на небо, он мне должен кое что, он поймёт, Вы только ему напомните обо мне.")
				
	MisBeginCondition(NoMission, 1097)
	MisBeginCondition(NoRecord,1097)
	MisBeginCondition(HasRecord, 1096)
	MisBeginAction(AddMission,1097)
	MisCancelAction(ClearMission, 1097)

	MisNeed(MIS_NEED_DESP, "Поговорите с Небесным Портальщиком в(474, 1054)")
	
	MisHelpTalk("<t>Может долги соберу...")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№21-------- МмМГґ«ЛНК№
	DefineMission(5595, "Посол мира 21", 1097, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вот он мелочный... Я и должен то ему гроши... Ну и люди.")
	MisResultCondition(NoRecord, 1097)
	MisResultCondition(HasMission,1097)
	MisResultAction(ClearMission,1097)
	MisResultAction(SetRecord, 1097)

	----------------------------------------------------------ЙзЅ»УўРЫ22----------МмМГґ«ЛНК№
	DefineMission( 5596, "Посол мира 22", 1098 )
	MisBeginTalk("<t>Поздравляю! Вы закончили путешествия по миру 'Пиратии', я слышал Вас ищет<bСинди>.")
				
	MisBeginCondition(NoMission, 1098)
	MisBeginCondition(NoRecord,1098)
	MisBeginCondition(HasRecord, 1097)
	MisBeginAction(AddMission,1098)
	MisCancelAction(ClearMission, 1098)

	MisNeed(MIS_NEED_DESP, "Вернитесь и поговорите с Синди в (740, 1451)")
	
	MisHelpTalk("<t>Я один в долгах в это время года")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»УўРЫ22------- РБµЩ
	DefineMission(5597, "Посол мира 22", 1098, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Поздравляю! Вы прошли тест 'Пиратии', вот Ваша награда!")
	MisResultCondition(NoRecord, 1098)
	MisResultCondition(HasMission,1098)
	MisResultAction(ClearMission,1098)
	MisResultAction(SetRecord, 1098)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2949, 1, 4)
	MisResultBagNeed(1)




	

	-------------------------------------------------МШ±рИООс	
	DefineMission (5600, "Специальная операция и Овен-вампир", 1101)
	
	MisBeginTalk("<t>Эти задания по желанию игроков: <rУбить 99 Волшебных кустов за 15 минут>. Пройдите и их, что бы получить приз.")

	MisBeginCondition(NoMission,1101)
	MisBeginCondition(NoRecord,1101)
	MisBeginCondition(HasRecord,835)
	MisBeginCondition(HasRecord,1071)
	MisBeginCondition(HasRecord,1072)
	MisBeginCondition(HasRecord,1073)
	MisBeginCondition(HasRecord,1074)
	MisBeginCondition(HasRecord,1075)
	MisBeginCondition(HasRecord,1065)
	MisBeginCondition(HasRecord,1098)
	MisBeginAction(AddMission,1101)
	MisBeginAction(AddChaItem3, 2952)---------МШ±рРР¶ЇїЁ
	MisBeginAction(AddTrigger, 11011, TE_KILL, 75, 99 )
	MisCancelAction(ClearMission, 1101)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_KILL, 75, 99, 1, 99)

	MisHelpTalk("<t>Быстрей! Быстрей! У тебя всего 15 минут")
	MisResultTalk("<t>Нормально, даже хорошо.")


	MisResultCondition(HasMission, 1101)
	MisResultCondition(NoRecord,1101)
	MisResultCondition(HasFlag, 1101, 99 )
	MisResultAction(AddChaItem4, 2952)----МШ±рРР¶ЇїЁ
	MisResultAction(ClearMission, 1101)
	MisResultAction(SetRecord,  1101 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2955, 1, 4)------------°ЧСтґ¬і¤їбЧ°±¦Пд
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 75)	
	TriggerAction( 1, AddNextFlag, 1101, 1, 99 )
	RegCurTrigger( 11011 )





	----------------------------------------------------------УЮИЛЅЪµД№ыКµ
	DefineMission( 5601, "Фрукты Дурака апреля", 1102)

	MisBeginTalk( "<t>Сегодня - день Дурака! Я люблю шутить в этот день. Вы тоже весельчак? Хорошо, давайте веселиться вместе. Вот Вам первая задача: Соберите 99 Эльфийских Фруктов!")
	MisBeginCondition(NoRecord, 1102)
	MisBeginCondition(NoMission, 1102)
	MisBeginCondition(LvCheck, ">", 10 )
	MisBeginAction(AddMission, 1102)
	MisBeginAction(AddTrigger, 11021, TE_GETITEM, 3116, 100 )		
	MisCancelAction(ClearMission, 1102)
	
	MisNeed(MIS_NEED_ITEM, 3116, 100, 10, 100)

	MisResultTalk("<t>Вы поняли мою шутку, Вы заслужили подарок от меня.")
	MisHelpTalk("<t>Ну подумайте, может я Вас обманываю о количестве Эльфийских фруктов!")
	MisResultCondition(HasMission, 1102)
	MisResultCondition(HasItem, 3116, 100 )
	MisResultAction(TakeItem, 3116, 100 )
	MisResultAction(ClearMission, 1102)
	MisResultAction(SetRecord, 1102 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2953, 1, 4)------------УЮИЛЅЪµДАсОп
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1102, 10, 100 )
	RegCurTrigger( 11021 )



	------------------------------------------------------УЮИЛЅЪµДї¶ї®
	DefineMission( 5602, "Глупая Щедрость", 1103)

	MisBeginTalk( "<t>Я хотел бы взять в займы у Вас немного денег, у меня Малыш идёт на праздник, а денег на развлечения нет. Дайте мне 1.000.000 золота! Отдам. Честно!")
	MisBeginCondition(NoRecord, 1103)
	MisBeginCondition(HasRecord, 1102)
	MisBeginCondition(NoMission, 1103)
	MisBeginAction(AddMission, 1103)	
	MisCancelAction(ClearMission, 1103)
	
	MisResultTalk("<t>Вы думаете я Вам его отдам?! Ха ха ха... Вы наивный человек!")
	MisHelpTalk("<t>Да не мелочитесь, я разве похож на того кто посмеет Вас обмануть?")
	MisResultCondition(HasMission, 1103)
	MisResultCondition(HasMoney, 1000000 )
	MisResultAction(TakeMoney, 1000000 )
	MisResultAction(ClearMission, 1103)
	MisResultAction(SetRecord, 1103 )



	------------------------------------------------------УЮИЛЅЪµДЛАЙс
	DefineMission( 5603, "Глупая Смерть", 1104)

	MisBeginTalk( "<t>Ой какой наивный! Ай я яй! Нельзя быть таким наивным... Нельзя! Как же я Вам отдам деньги? А вот! Придумал, Умрите 50 раз от рук <rПиратов о.Удачи> и тогда я Вам отдам Ваши деньги. Даже увеличу их количество в 5 раз.")
	MisBeginCondition(NoRecord, 1104)
	MisBeginCondition(HasRecord, 1103)
	MisBeginCondition(NoMission, 1104)
	MisBeginCondition(HaveNoItem, 2954)
	MisBeginAction(AddMission, 1104)	
	MisBeginAction(GiveItem, 2954, 1, 4)------------ЛАНцЦ¤Гч
	MisCancelAction(ClearMission, 1104)
	MisBeginBagNeed(1)
	
	MisResultTalk("t>Ну Вы и наивный... Ха-ха-ха-ха... А если я бы сказал 100 раз умереть от рук Кактусов в Аргенте, Вы бы искали эти кактусы?")
	MisHelpTalk("<t>Ну что Вам стоит умереть? Это же игра!")
	MisResultCondition(HasMission, 1104)
	MisResultCondition(CheckPoint, 2954 )
	MisResultAction(TakeItem, 2954,1,4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 0853,1,4)
	MisResultAction(ClearMission, 1104)
	MisResultAction(SetRecord, 1104 )
	MisResultBagNeed(1)


--------------------------------------------------Л­КЗКШ»¤ХЯ--------В·ИЛЎ¤¶Ў
	DefineMission( 6015, "Кто такой хранитель?", 1013, COMPLETE_SHOW )

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>ТуТу всегда чинил мне неудобства!")
	MisResultCondition(NoRecord, 1013)
	MisResultCondition(HasMission, 1013)
	MisResultAction(SetRecord, 1013)
	MisResultAction(ClearMission, 1013)

--------------------------------------------------ДСЈї»№КЗ·іЈї-------В·ИЛЎ¤¶Ў
	DefineMission( 6016, "Трудно? Или хлопотно?", 1014)
	MisBeginTalk("<t> Часть перерождения никогда не была простой. Отправляйся к главе клана Альбуде.")
	MisBeginCondition(NoRecord, 1014)
	MisBeginCondition(NoMission, 1014)
	MisBeginCondition(HasRecord, 1013)
	MisBeginAction(AddMission, 1014)
	MisBeginAction(ZSSTART)
	MisCancelAction(ClearMission, 1014)

	MisNeed(MIS_NEED_DESP, "<t>Ищите руководителя Клана Альбуду, чтобы понять о перерождении больше.")
	MisHelpTalk("<t> Ищите главу клана Альбуду в шайтане!")

	MisResultCondition(AlwaysFailure)



---------------------------------------------------ДСЈї»№КЗ·іЈї----------КПЧеі¤Ў¤°ўІј¶аВЮ.Ао
	DefineMission( 6017, "Трудно? Или раздражает?", 1014, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure )
	MisResultTalk("<t> Сделал ли ты свой выбор? Если ты хочешь изменить свой выбор в будущем, ты должен будешь найти меня вновь. Но учти, ошибки в наше время стоят денег!")
	MisResultCondition(NoRecord, 1014)
	MisResultCondition(HasMission, 1014)
	MisResultCondition(HasRecord, 1059)
	MisResultAction(ClearMission, 1014)
	MisResultAction(SetRecord, 1014)
	

---------------------------------------------------јМРшЧЄЙъЦ®В·-----------КПЧеі¤Ў¤°ўІј¶аВЮ.Ао
	DefineMission( 6018, "Продолжай идти по пути перерождения", 1017)
	MisBeginTalk("<t>Ты обрёл свой путь. Теперь встреться с тинком. Он поведет тебя.")
	MisBeginCondition(NoRecord, 1017)
	MisBeginCondition(NoMission, 1017)
	MisBeginCondition(HasRecord, 1014)
	MisBeginAction(AddMission, 1017)
	MisCancelAction(ClearMission, 1017)

	MisNeed(MIS_NEED_DESP, "<t>Найди прохожего Тинка.")
	MisHelpTalk("<t>Найди Тинка немедлеенно!")

	MisResultCondition(AlwaysFailure)

--------------------------------------------------јМРшЧЄЙъЦ®В·---------------В·ИЛЎ¤¶Ў
	DefineMission( 6019, "Продолжай идти по пути перерождения", 1017, COMPLETE_SHOW )
	MisBeginCondition(AlwaysFailure)
	MisResultTalk("<t>Ты выбрал свой путь? Нам нужно продолжать наш путь, друг.")
	MisResultCondition(NoRecord, 1017)
	MisResultCondition(HasMission, 1017)
	MisResultAction(ClearMission, 1017)
	MisResultAction(SetRecord, 1017)

---------------------------------------------------јиѕЮµДИООс---------В·ИЛЎ¤¶Ў
	DefineMission( 6020, "Трудные путь", 1018)
	MisBeginTalk("<t>Так как Вы выбрали тяжёлый путь к перерождению, я Вам буду помогать")
	MisBeginCondition(NoRecord,1000)
	MisBeginCondition(HasRecord,1017)
	MisBeginCondition(HasRecord,1015)
	MisBeginCondition(NoRecord,1018)
	MisBeginCondition(NoMission,1018)
	MisBeginAction(AddMission,1018)
	MisBeginAction(AddTrigger, 10181, TE_KILL,678, 1)
	MisBeginAction(AddTrigger, 10182, TE_KILL,679, 1)
	MisBeginAction(AddTrigger, 10183, TE_KILL,789, 1)
	MisCancelAction(ClearMission,1018)

	MisNeed(MIS_NEED_DESP, "Мне нужно знать что Вы убили: <rГлаву снежного люда>, <rБлуждающую душу>, <rЧерного дракона>.")
	MisNeed(MIS_NEED_KILL, 678, 1, 10, 1)
	MisNeed(MIS_NEED_KILL, 679, 1, 20, 1)
	MisNeed(MIS_NEED_KILL, 789, 1, 30, 1)

	MisHelpTalk("<t>Одному сложно, ищите помощь!")
	MisResultTalk("<t>О! Не вероятно, но как я вижу это - Факт, Вы настоящий Герой!")
	MisResultCondition(HasMission,1018)
	MisResultCondition(NoRecord,1018)
	MisResultCondition(HasFlag, 1018, 10)
	MisResultCondition(HasFlag, 1018, 20)
	MisResultCondition(HasFlag, 1018, 30)
	MisResultAction(SetRecord,1018)
	MisResultAction(SetRecord,1056)
	MisResultAction(ClearMission,1018)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2229, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2230, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2231, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2232, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2233, 1, 4)
	MisResultBagNeed(5)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 678 )
	TriggerAction( 1, AddNextFlag, 1018, 10, 1 )
	RegCurTrigger( 10181 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 679 )
	TriggerAction( 1, AddNextFlag, 1018, 20, 1 )
	RegCurTrigger( 10182 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 789 )
	TriggerAction( 1, AddNextFlag, 1018, 30, 1 )
	RegCurTrigger( 10183 )

----------------------------------------------ПЮК±µДМфХЅ---------В·ИЛЎ¤¶Ў
	DefineMission( 6021, "Испытание на время", 1019)
	MisBeginTalk("<t>Ты выбрал трудный путь? Отлично, наверное ты уже слышал о вызове бытию?!")
	MisBeginCondition( NoRecord, 1000)
	MisBeginCondition( NoRecord, 1019)
	MisBeginCondition( NoMission, 1019)
	MisBeginCondition( HasRecord, 1017)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1019)
	MisCancelAction(ClearMission,1019)

	MisNeed(MIS_NEED_DESP, "Заверши испытания 'Вызов бытия' за 30 минут.")

	MisHelpTalk("<t>Если отсчет времени, зарегистрированный на Письме Молодца, будет меньше чем 1800 секунд, то я буду ждать вас через. Запомни, мне нужно лишь одно письмо.")
	MisResultTalk("<t>Это было весело!")
	MisResultCondition( HasItem, 2912, 1)
	MisResultCondition( LessTime, 1800)
	MisResultCondition( NoRecord, 1019)
	MisResultCondition( HasMission, 1019)
	MisResultAction( SetRecord, 1019)
	MisResultAction( ClearMission, 1019)


--------------------------------------------ПЮК±µДМфХЅ-------------В·ИЛЎ¤¶Ў
	DefineMission( 6022, "Испытание на время", 1020)
	MisBeginTalk("<t>Начнем другой круг. Однако, пожалуйста, не торопитесь, чтобы сделать его. Попытайся завершить его в промежуток времени 7-и и 8-и часов.")
	MisBeginCondition( NoRecord, 1020)
	MisBeginCondition( NoMission, 1020)
	MisBeginCondition( HasRecord, 1019)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1020)
	MisCancelAction( ClearMission, 1020)

	MisNeed(MIS_NEED_DESP, "От тебя требуется завершить вызов бытия и уложиться во время от 7 до 8 часов.")

	MisHelpTalk("<t>Запись времени на письме молодца должна быть ни меньше 25200 секунд, но и не больше чем 28800 секунд. Мне нужно только одно письмо!")
	MisResultTalk("<t>Это было великолепно, не правда ли?!")
	MisResultCondition( MoreTime, 25200)
	MisResultCondition( LessTime, 28800)
	MisResultCondition( NoRecord, 1020)
	MisResultCondition( HasMission, 1020)
	MisResultAction( SetRecord, 1020)
	MisResultAction( ClearMission, 1020)



-----------------------------------------------ПЮК±µДМфХЅ------------В·ИЛЎ¤¶Ў
	DefineMission( 6023, "Испытание на время", 1021)
	MisBeginTalk("<t>Повтори ещё разок. Тебе нужно пройти испытание за время от 5 часов, до 5 часов 30 минут.")
	MisBeginCondition( NoRecord, 1021)
	MisBeginCondition( NoMission, 1021)
	MisBeginCondition( HasRecord, 1020)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1021)
	MisCancelAction( ClearMission, 1021)

	MisNeed(MIS_NEED_DESP, "Заверши 'Вызов бытия' не меньше чем за 5 часов, но и не больше чем за 5 часов 30 минут.")

	MisHelpTalk("<t>Таймер времени на Письме Молодца должен быть между 18000 секундами и 19800 секундами. Учти, что нужно только 1 Письмо Молодца!")
	MisResultTalk("<t>Я признаю, ты превозмог мои испытания.")
	MisResultCondition( LessTime, 19800)
	MisResultCondition( MoreTime, 18000)
	MisResultCondition( NoRecord, 1021)
	MisResultCondition( HasMission, 1021)

	MisResultAction( SetRecord, 1021)
	MisResultAction( ClearMission, 1021)

---------------------------------------------С°·ГАЧцЄКШ»¤ХЯ------В·ИЛЎ¤¶Ў
	DefineMission( 6024, "Побывай у хранителя Громограда", 1022)
	MisBeginTalk("<t>Следующий наставник находится в крепости Громограда. Увидься с ним.")
	MisBeginCondition( NoRecord, 1022)
	MisBeginCondition( NoMission, 1022)
	MisBeginCondition( HasRecord, 1021)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1022)
	MisCancelAction( ClearMission, 1022)

	MisNeed(MIS_NEED_DESP, "Встреться со стражем в Громограде.")
	MisHelpTalk("<t>Найди его в крепости Громограда.")

	MisResultCondition(AlwaysFailure)

-----------------------------------------------С°·ГАЧцЄКШ»¤ХЯ--------°ЧТшіЗЧ¤АЧцЄ±¤ґуК№Ў¤ТБЛю¶а
	DefineMission( 6025, "Побывай у хранителя Громограда", 1022,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Вы наконец явились!")
	MisResultCondition( NoRecord, 1022)
	MisResultCondition( HasMission, 1022)
	MisResultAction( SetRecord, 1022)
	MisResultAction( ClearMission, 1022)

-------------------------------------------------°ЧСт№¬µДХЅ¶·---------------°ЧТшіЗЧ¤АЧцЄ±¤ґуК№Ў¤ТБЛю¶а
	DefineMission( 6026, "Битва в Дворце овна", 1023)
	MisBeginTalk("<t>Колесо фортуны начало крутиться! Заходите в врата и ищите Печать овна!")
	MisBeginCondition( NoRecord, 1023)
	MisBeginCondition( NoMission, 1023)
	MisBeginCondition( HasRecord, 1022)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1023)
	MisBeginAction(AddTrigger, 10231, TE_GETITEM, 2942, 1 )
	MisCancelAction( ClearMission, 1023)

	MisNeed(MIS_NEED_DESP, "Будьте одеты в одежду Овна и принесите Печать Овна в Громград Юте.")
	MisNeed(MIS_NEED_ITEM, 2942, 1, 10 ,1)

	MisHelpTalk("<t>Оденьтесь в Одежду Овна, что бы поприветствовать меня.")
	MisResultTalk("<t>Ты - действительно избранный!")
	MisResultCondition( HasItem, 2942, 1)
	MisResultCondition( BaiyangOn )
	MisResultAction( SetRecord, 1023)
	MisResultAction( ClearMission, 1023)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2942)	
	TriggerAction( 1, AddNextFlag, 1023, 10, 1 )
	RegCurTrigger( 10231 )

--------------------------------------------------С°·ГЙіб°КШ»¤ХЯ--------------------°ЧТшіЗЧ¤АЧцЄ±¤ґуК№Ў¤ТБЛю¶а
	DefineMission( 6027, "Встреться с хранителем в Шайтане", 1024)
	MisBeginTalk("<t>Встреться со следующим наставником в пещаном городе.")
	MisBeginCondition( NoRecord, 1024)
	MisBeginCondition( NoMission, 1024)
	MisBeginCondition( HasRecord, 1023)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1024)
	MisCancelAction( ClearMission, 1024)

	MisNeed(MIS_NEED_DESP, "Посети наставника в Шайтане.")
	MisHelpTalk("<t>Отправляйся в Шайтан")
	
	MisResultCondition(AlwaysFailure)

-----------------------------------------------------С°·ГЙіб°КШ»¤ХЯ--------------------В·ИЛЎ¤Йєєчіж
	DefineMission( 6028, "Встреться с хранителем в Шайтане", 1024, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

--	MisResultTalk("<t>Do not ignore me because I look weak!")
	MisResultCondition( NoRecord, 1024)
	MisResultCondition( HasMission, 1024)
	MisResultAction( SetRecord, 1024)
	MisResultAction( ClearMission, 1024)

-------------------------------------------------------»·ЗтВГРР--------------------В·ИЛЎ¤Йєєчіж
	DefineMission( 6029, "Кругосветное путешествие", 1025)
	MisBeginTalk("<t>Вы знакомы с миром Мордо Онлайн? Позволь мне пригласить тебя в кругосветное путешествие. По дороге ты сможешь встретить достаточно интересных людей. Поделись с ними частью своей репутации, для помощи в их делах. Первая остановка - Заброшенные шахты. Найди там Кентаро.")
	MisBeginCondition( NoMission, 1025)
	MisBeginCondition( NoRecord, 1025)
	MisBeginCondition( HasRecord, 1024)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1025)
	MisCancelAction( ClearMission, 1025)

	MisNeed(MIS_NEED_DESP, "Встреться с Кентаро, если у тебя есть по меньшей мере 500 репутации.")
	MisHelpTalk("<t>Кентаро охраняет вход в заброшенные шахты.")

	MisResultCondition(AlwaysFailure)

-------------------------------------------------------»·ЗтВГРР-----------------СПВЮЛю
	DefineMission( 6030, "Кругосветное путешествие", 1025, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Турист? Не забудь хорошенько отдохнуть!")
	MisResultCondition( NoRecord, 1025)
	MisResultCondition( HasMission, 1025)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1025)
	MisResultAction( ClearMission, 1025)

--------------------------------------------------------»·ЗтВГРР------------------СПВЮЛю
	DefineMission( 6031, "Кругосветное путешествие", 1026)
	MisBeginTalk("<t>Следующая остановка в Роще Акаций. Найди Минелли.")
	MisBeginCondition( NoMission, 1026)
	MisBeginCondition( NoRecord, 1026)
	MisBeginCondition( HasRecord, 1025)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1026)
	MisCancelAction( ClearMission, 1026)

	MisNeed(MIS_NEED_DESP, "Встреться с Минелли, когда у тебя будет по меньшей мере 500 очков репутации.")
	MisHelpTalk("<t>Минелли находится в Роще акаций.")

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------»·ЗтВГРР----------------ГЧ¶ыГЧАт
	DefineMission( 6032, "Кругосветное путешествие", 1026, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Турист? Не забудь хорошенько отдохнуть!")
	MisResultCondition( NoRecord, 1026)
	MisResultCondition( HasMission, 1026)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1026)
	MisResultAction( ClearMission, 1026)

----------------------------------------------------------»·ЗтВГРР-----------------ГЧ¶ыГЧАт
	DefineMission( 6033, "Кругосветное путешествие", 1027)
	MisBeginTalk("<t>Следующая остановка в Бухте Атлантис. Встреться с Вилли")
	MisBeginCondition( NoMission, 1027)
	MisBeginCondition( NoRecord, 1027)
	MisBeginCondition( HasRecord, 1026)
	MisBeginCondition( HasRecord, 1016)
 	MisBeginAction( AddMission,1027)
	MisCancelAction( ClearMission, 1027)

	MisNeed(MIS_NEED_DESP, "найди Вилли, когда у тебя будет 500 репутации.")
	MisHelpTalk("<t>Вы всё ещё не можете получить это? Ищите руководителя Клана Альбуду, чтобы повторно выбрать Ваш путь возрождения.")

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------»·ЗтВГРР-------------------Ю±Ат¶ы
	DefineMission( 6034, "Кругосветное путешествие", 1027, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Турист? Не забудь хорошенько отдохнуть!")
	MisResultCondition( NoRecord, 1027)
	MisResultCondition( HasMission, 1027)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1027)
	MisResultAction( ClearMission, 1027)

-----------------------------------------------------------»·ЗтВГРР------------------Ю±Ат¶ы
	DefineMission( 6035, "Кругосветное путешествие", 1028)
	MisBeginTalk("<t>Следующая остановка - Валгалла. Найди профессора Фенни")
	MisBeginCondition( NoMission, 1028)
	MisBeginCondition( NoRecord, 1028)
	MisBeginCondition( HasRecord, 1027)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1028)
	MisCancelAction( ClearMission, 1028)

	MisNeed(MIS_NEED_DESP, "Встреться с профессором Фенни, когда получишь как минимум 500 репутации.")
	MisHelpTalk("<t>Профессора Фенни можно найти в Валгалле")

	MisResultCondition(AlwaysFailure)

------------------------------------------------------------»·ЗтВГРР---------------І©¶ы·ТДб
	DefineMission( 6036, "Кругосветное путешествие", 1028, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Турист? Не забудь хорошенько отдохнуть!")
	MisResultCondition( NoRecord, 1028)
	MisResultCondition( HasMission, 1028)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1028)
	MisResultAction( ClearMission, 1028)

---------------------------------------------------------------»·ЗтВГРР------------І©¶ы·ТДб
	DefineMission( 6037, "Кругосветное путешествие", 1029)
	MisBeginTalk("<t>Следующая остановка - Оазис. Найди Дитаро.")
	MisBeginCondition( NoMission, 1029)
	MisBeginCondition( NoRecord, 1029)
	MisBeginCondition( HasRecord, 1028)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1029)
	MisCancelAction( ClearMission, 1029)

	MisNeed(MIS_NEED_DESP, "Найди Дитаро, когда у тебя будет 500 репутации.")
	MisHelpTalk("<t>Дитаро находится В Оазисе.")

	MisResultCondition(AlwaysFailure)

--------------------------------------------------------------»·ЗтВГРР-----------µПµПВнРЮ
	DefineMission( 6038, "Кругосветное путешествие", 1029, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Турист? Не забудь хорошенько отдохнуть!")
	MisResultCondition( NoRecord, 1029)
	MisResultCondition( HasMission, 1029)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1029)
	MisResultAction( ClearMission, 1029)

--------------------------------------------------------------»·ЗтВГРР-----------µПµПВнРЮ
	DefineMission( 6039, "Кругосветное путешествие", 1030)
	MisBeginTalk("<t>Следующая остновка - Ледяной шип. Встреться с ЛуЛу")
	MisBeginCondition( NoMission, 1030)
	MisBeginCondition( NoRecord, 1030)
	MisBeginCondition( HasRecord, 1029)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1030)
	MisCancelAction( ClearMission, 1030)

	MisNeed(MIS_NEED_DESP, "Найди ЛуЛу, когда заработаешь 500 репутации.")
	MisHelpTalk("<t>ЛуЛу находится в ледяном шипе.")

	MisResultCondition(AlwaysFailure)

--------------------------------------------------------------»·ЗтВГРР-----------ВіВі
	DefineMission( 6040, "Кругосветное путешествие", 1030, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Турист? Не забудь хорошенько отдохнуть!")
	MisResultCondition( NoRecord, 1030)
	MisResultCondition( HasMission, 1030)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1030)
	MisResultAction( ClearMission, 1030)

--------------------------------------------------------------»·ЗтВГРР-----------ВіВі
	DefineMission( 6041, "Кругосветное путешествие", 1031)
	MisBeginTalk("<t>Следующая остановка в Скалистом Уделе")
	MisBeginCondition( NoMission, 1031)
	MisBeginCondition( NoRecord, 1031)
	MisBeginCondition( HasRecord, 1030)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1031)
	MisCancelAction( ClearMission, 1031)

	MisNeed(MIS_NEED_DESP, "У Вас должно быть как минимум 500 очков репутации")
	MisHelpTalk("<t>Дуриан ждёт Вас в Скалистом Уделе")

	MisResultCondition(AlwaysFailure)

--------------------------------------------------------------»·ЗтВГРР-------------БсБ«
	DefineMission( 6042, "Кругосветное путешествие", 1031, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Вы турист? Расслабьтесь")
	MisResultCondition( NoRecord, 1031)
	MisResultCondition( HasMission, 1031)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1031)
	MisResultAction( ClearMission, 1031)

--------------------------------------------------------------»·ЗтВГРР-------------БсБ«
	DefineMission( 6043, "Кругосветное путешествие", 1032)
	MisBeginTalk("<t>Отправляйтесь к Линде, она ждёт Вас в Обители Радости")
	MisBeginCondition( NoMission, 1032)
	MisBeginCondition( NoRecord, 1032)
	MisBeginCondition( HasRecord, 1031)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1032)
	MisCancelAction( ClearMission, 1032)

	MisNeed(MIS_NEED_DESP, " У Вас должно быть как минимум 500 очков репутации")
	MisHelpTalk("<t>Линда в Обителе Радости")

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------------»·ЗтВГРР--------------БХґп
	DefineMission( 6044, "Кругосветное путешествие", 1032, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Вы турист? Расслабьтесь")
	MisResultCondition( NoRecord, 1032)
	MisResultCondition( HasMission, 1032)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( GiveItem, 3128, 10, 4)
	MisResultAction( SetRecord, 1032)
	MisResultAction( ClearMission, 1032)
	MisResultBagNeed(1)


---------------------------------------------------------------»·ЗтВГРР--------------БХґп
	DefineMission( 6045, "Кругосветное путешествие", 1033)
	MisBeginTalk("<t>Ищите Ксеуса в Береге Скелетов")
	MisBeginCondition( NoMission, 1033)
	MisBeginCondition( NoRecord, 1033)
	MisBeginCondition( HasRecord, 1032)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1033)
	MisCancelAction( ClearMission, 1033)

	MisNeed(MIS_NEED_DESP, "У Вас должно быть как минимум 500 очков репутации")
	MisHelpTalk("<t>Ксенус на острове Скелетов")

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------»·ЗтВГРР--------------РЮЛѕ
	DefineMission( 6046, "Кругосветное путешествие", 1033, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Вы турист? Расслабьтесь")
	MisResultCondition( NoRecord, 1033)
	MisResultCondition( HasMission, 1033)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1033)
	MisResultAction( ClearMission, 1033)

----------------------------------------------------------------»·ЗтВГРР--------------РЮЛѕ
	DefineMission( 6047, "Кругосветное путешествие", 1034)
	MisBeginTalk("<t>Следующая остановка в Холдее, ищите Юрия")
	MisBeginCondition( NoMission, 1034)
	MisBeginCondition( NoRecord, 1034)
	MisBeginCondition( HasRecord, 1033)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1034)
	MisCancelAction( ClearMission, 1034)

	MisNeed(MIS_NEED_DESP, "У Вас должно быть как минимум 500 очков репутации")
	MisHelpTalk("<t>Юрий в Холдее")

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------------»·ЗтВГРР-------------єЈА¶Ў¤Оў·з
	DefineMission( 6048, "Кругосветное путешествие", 1034, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Вы турист? Расслабьтесь")
	MisResultCondition( NoRecord, 1034)
	MisResultCondition( HasMission, 1034)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1034)
	MisResultAction( ClearMission, 1034)

-----------------------------------------------------------------»·ЗтВГРР-------------єЈА¶Ў¤Оў·з
	DefineMission( 6049, "Кругосветное путешествие", 1035)
	MisBeginTalk("<t>Отправляйтесь в Ледынь и ищите в одной из деревень Нану")
	MisBeginCondition( NoMission, 1035)
	MisBeginCondition( NoRecord, 1035)
	MisBeginCondition( HasRecord, 1034)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1035)
	MisCancelAction( ClearMission, 1035)

	MisNeed(MIS_NEED_DESP, "У Вас должно быть как минимум 500 очков репутации")
	MisHelpTalk("<t>Нана где то в Ледыне")

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------»·ЗтВГРР---------------ДОДО
	DefineMission( 6050, "Кругосветное путешествие", 1035, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Вы турист? Раслабтесь")
	MisResultCondition( NoRecord, 1035)
	MisResultCondition( HasMission, 1035)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1035)
	MisResultAction( ClearMission, 1035)

----------------------------------------------------------------»·ЗтВГРР---------------ДОДО
	DefineMission( 6051, "Кругосветное путешествие", 1036)
	MisBeginTalk("<t>Отыщите в Андийском Лесу Доктора Минора")
	MisBeginCondition( NoMission, 1036)
	MisBeginCondition( NoRecord, 1036)
	MisBeginCondition( HasRecord, 1035)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1036)
	MisCancelAction( ClearMission, 1036)

	MisNeed(MIS_NEED_DESP, "У Вас должно быть как минимум 500 очков репутации")
	MisHelpTalk("<t>Доктор Минора в Адийском Лесу")

	MisResultCondition(AlwaysFailure)

----------------------------------------------------------------»·ЗтВГРР---------------ГЧДОПЈ¶ы
	DefineMission( 6052, "Кругосветное путешествие", 1036, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Вы турист? Расслабьтесь")
	MisResultCondition( NoRecord, 1036)
	MisResultCondition( HasMission, 1036)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( GiveItem, 3139, 10, 4)
	MisResultAction( SetRecord, 1036)
	MisResultAction( ClearMission, 1036)
	MisResultBagNeed(1)


----------------------------------------------------------------»·ЗтВГРР-------------------ГЧДОПЈ¶ы
	DefineMission( 6053, "Кругосветное путешествие", 1037)
	MisBeginTalk("<t>Ваше путишествие подошло к концу, возвращайтесь в Шайтан к Опекуну Вово")
	MisBeginCondition( NoMission, 1037)
	MisBeginCondition( NoRecord, 1037)
	MisBeginCondition( HasRecord, 1036)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1037)
	MisCancelAction( ClearMission, 1037)

	MisNeed(MIS_NEED_DESP, "Поговорите с Вово")
	MisHelpTalk("<t>Поговорите с Вово")

	MisResultCondition(AlwaysFailure)

---------------------------------------------------------------»·ЗтВГРР--------------------В·ИЛЎ¤Йєєчіж
	DefineMission( 6054, "Кругосветное путешествие", 1037, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Ну как Вам путешествие? Вам понравилось? Не заметили? Так может ещё раз попутешествуете?! Ха-ха-ха! Не переживайте, я просто пошутил!")
	MisResultCondition( NoRecord, 1037)
	MisResultCondition( HasMission, 1037)
	MisResultCondition( HasCredit, 500)
	MisResultAction( DelRoleCredit, 500)
	MisResultAction( SetRecord, 1037)
	MisResultAction( ClearMission, 1037)

--------------------------------------------------------------С°·ГМмМГКШ»¤ХЯ--------------В·ИЛЎ¤Йєєчіж
	DefineMission( 6055, "Посети Стража небес", 1038)
	MisBeginTalk("<t>Найдите Небесного Портальщика.")
	MisBeginCondition( NoMission, 1038)
	MisBeginCondition( NoRecord, 1038)
	MisBeginCondition( HasRecord, 1037)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission,1038)
	MisCancelAction( ClearMission, 1038)

	MisNeed(MIS_NEED_DESP, "Ищите следующего Опекуна")
	MisHelpTalk("<t>Отправляйтесь в Карибы.")

	MisResultCondition(AlwaysFailure)

-------------------------------------------------------------С°·ГМмМГКШ»¤ХЯ--------------МмМГґ«ЛНК№
	DefineMission( 6056, "Посети Стража небес", 1038, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Вы случайно не на небо собрались в гости к Богине?")
	MisResultCondition( NoRecord, 1038)
	MisResultCondition( HasMission, 1038)
	MisResultAction( SetRecord, 1038)
	MisResultAction( ClearMission, 1038)
	
------------------------------------------------------------тЇіПµДЦ¤Гч-------------------МмМГґ«ЛНК№
	DefineMission( 6057, "Доказательство набожности", 1039)
	MisBeginTalk("<t>Вы хотите попасть на Небо? Хорошо! Ни каких проблем. Но... Вам необходимо зажечь Священные свечи")
	MisBeginCondition( NoRecord, 1039)
	MisBeginCondition( NoMission, 1039)
	MisBeginCondition( HasRecord, 1038)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10391, TE_GETITEM, 3007, 9 )
	MisBeginAction( AddMission, 1039)
	MisBeginAction( GiveItem, 3006, 9, 4)
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1039)

	MisNeed(MIS_NEED_ITEM, 3007, 9, 10, 9)

	MisResultTalk("<t>Очень хорошо!")
	MisHelpTalk("<t>Богиня не может так долго ждать.")
	MisResultCondition( NoRecord, 1039)
	MisResultCondition( HasMission, 1039)
	MisResultCondition( HasItem, 3007, 9)
	MisResultAction( TakeItem, 3007, 9)
	MisResultAction( SetRecord, 1039)
	MisResultAction( ClearMission, 1039)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3007)	
	TriggerAction( 1, AddNextFlag, 1039, 10, 9 )
	RegCurTrigger( 10391 )


------------------------------------------------------------тЇіПµДЦ¤Гч-------------------МмМГґ«ЛНК№
	DefineMission( 6058, "Доказательство набожности", 1040)
	MisBeginTalk("<t>А я Вам дал всего 9 свечей? Ой, моя оплошность, вот ещё 99 свечей. Так же зажгите их.")
	MisBeginCondition( NoRecord, 1040)
	MisBeginCondition( NoMission, 1040)
	MisBeginCondition( HasRecord, 1039)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10401, TE_GETITEM, 3007, 99 )
	MisBeginAction( AddMission, 1040)
	MisBeginAction( GiveItem, 3006, 99, 4)
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1040)

	MisNeed(MIS_NEED_ITEM, 3007, 99, 10, 99)

	MisResultTalk("<t>Очень хорошо!")
	MisHelpTalk("<t> Зажгите Свечи.")
	MisResultCondition( NoRecord, 1040)
	MisResultCondition( HasMission, 1040)
	MisResultCondition( HasItem, 3007, 99)
	MisResultAction( TakeItem, 3007, 99)
	MisResultAction( SetRecord, 1040)
	MisResultAction( ClearMission, 1040)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3007)	
	TriggerAction( 1, AddNextFlag, 1040, 10, 99 )
	RegCurTrigger( 10401 )

------------------------------------------------------------тЇіПµДЦ¤Гч-------------------МмМГґ«ЛНК№
	DefineMission( 6059, "Доказательство набожности", 1041)
	MisBeginTalk("<t>Это последнее испытание. Вот - Статуя Богини. Зарядите её энергией и возвращайтесь ко мне!")
	MisBeginCondition( NoRecord, 1041)
	MisBeginCondition( NoMission, 1041)
	MisBeginCondition( HasRecord, 1040)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction(AddTrigger, 10411, TE_GETITEM, 3010, 1 )
	MisBeginAction( AddMission, 1041)
	MisBeginAction( GiveNSDX, 3010 )
	MisBeginBagNeed(1)
	MisCancelAction( ClearMission, 1041)
	
	MisNeed(MIS_NEED_ITEM, 3010, 1, 10, 1)

	MisResultTalk("<t>Богиня всегда Будет с Вами.")
	MisHelpTalk("<t>Вы не можете повторить квест, идите к Албуде за повторной попыткой прохождения Перерождения.")
	MisResultCondition( NoRecord, 1041)
	MisResultCondition( HasMission, 1041)
	MisResultCondition( CheckEnergy )
	MisResultAction( TakeItem, 3010, 1)
	MisResultAction( SetRecord, 1041)
	MisResultAction( ClearMission, 1041)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3010)	
	TriggerAction( 1, AddNextFlag, 1041, 10, 1 )
	RegCurTrigger( 10411 )

----------------------------------------------------------С°·Г°ЧТшКШ»¤ХЯ--------------МмМГґ«ЛНК№
	DefineMission( 6060, "Посети стража Аргента", 1042)
	MisBeginTalk("<t>Ищите следующего опекуна в Аргенте.")
	MisBeginCondition( NoRecord, 1042)
	MisBeginCondition( NoMission, 1042)
	MisBeginCondition( HasRecord, 1041)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1042)
	MisCancelAction( ClearMission, 1042)

	MisNeed(MIS_NEED_DESP, "Найдите в Аргенте следующего опекуна")
	MisHelpTalk("<t>Найдите в Аргенте следующего опекуна.")

	MisResultCondition(AlwaysFailure)

-----------------------------------------------------------С°·Г°ЧТшКШ»¤ХЯ--------------Л®КЦЎ¤єЈФЖ
	DefineMission( 6061, "Посети стража Аргента", 1042, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Хотите поиграть в одну интересную игру?")
	MisResultCondition( NoRecord, 1042)
	MisResultCondition( HasMission, 1042)
	MisResultAction( SetRecord, 1042)
	MisResultAction( ClearMission, 1042)

------------------------------------------------------------·иїсµДУОП·-----------------Л®КЦЎ¤єЈФЖ
	DefineMission( 6062, "Безумная игра", 1043)
	MisBeginTalk("<t>Давайте сыграем: Вы убьёте 110 Волшебных кустов и вернётесь ко мне, а я Вам по задаю вопросы.")
	MisBeginCondition( NoRecord, 1043)
	MisBeginCondition( NoMission, 1043)
	MisBeginCondition( HasRecord, 1042)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1043)
	MisBeginAction( AddTrigger, 10431, TE_KILL, 75, 110)
	MisCancelAction( ClearMission, 1043)

	MisNeed(MIS_NEED_DESP, "Убейте 110 Волшебных кустов")
	MisNeed(MIS_NEED_KILL, 75, 110, 10, 110)

	MisResultTalk("<t>Поздравляю!")
	MisHelpTalk("<t>Убейте по скорее эти кусты, я так хочу Вам задать один вопросик(хихикает)!")
	MisResultCondition( NoRecord, 1043)
	MisResultCondition( HasMission, 1043)
	MisResultCondition( HasFlag, 1043, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1043)
	MisResultAction( ClearMission, 1043)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 75 )
	TriggerAction( 1, AddNextFlag, 1043, 10, 110 )
	RegCurTrigger( 10431 )

------------------------------------------------------------·иїсµДУОП·-----------------Л®КЦЎ¤єЈФЖ
	DefineMission( 6063, "Безумная игра", 1046)
	MisBeginTalk("<t>Убейте 110 Засохших волшебных кустыв!")
	MisBeginCondition( NoRecord, 1046)
	MisBeginCondition( NoMission, 1046)
	MisBeginCondition( HasRecord, 1043)
	MisBeginCondition( HasRecord, 1044)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1046)
	MisBeginAction( AddTrigger, 10461, TE_KILL, 218, 110)
	MisCancelAction( ClearMission, 1046)

	MisNeed(MIS_NEED_DESP, "Убейте 110 Засохших волшебных кустыв")
	MisNeed(MIS_NEED_KILL, 218, 110, 10, 110)

	MisResultTalk("<t>Вы это сделали")
	MisHelpTalk("<t>Ищите Засохшие волшебные кусты у Города Шайтана.")
	MisResultCondition( NoRecord, 1046)
	MisResultCondition( HasMission, 1046)
	MisResultCondition( HasFlag, 1046, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1046)
	MisResultAction( SetRecord, 1057)
	MisResultAction( ClearMission, 1046)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 218 )
	TriggerAction( 1, AddNextFlag, 1046, 10, 110 )
	RegCurTrigger( 10461 )

---------------------------------------------------------------·иїсµДУОП·------------------Л®КЦЎ¤єЈФЖ
	DefineMission( 6064, "Безумная игра", 1047)
	MisBeginTalk("<t>Убейте 110 Заснеженных Волшебных кустов!")
	MisBeginCondition( NoRecord, 1047)
	MisBeginCondition( NoMission, 1047)
	MisBeginCondition( HasRecord, 1045)
	MisBeginCondition( HasRecord, 1043)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1047)
	MisBeginAction( AddTrigger, 10471, TE_KILL, 216, 110)
	MisCancelAction( ClearMission, 1047)

	MisNeed(MIS_NEED_DESP, "Убейте 110 Заснеженных Волшебных кустов")
	MisNeed(MIS_NEED_KILL, 216, 110, 10, 110)

	MisResultTalk("<t>Вы Молодец,!")
	MisHelpTalk("<t>Вы их сможете найти в окраинах Ледыни.")
	MisResultCondition( NoRecord, 1047)
	MisResultCondition( HasMission, 1047)
	MisResultCondition( HasFlag, 1047, 10)
	MisResultCondition( HasRecord, 1058)
	MisResultAction( SetRecord, 1047)
	MisResultAction( SetRecord, 1057)
	MisResultAction( ClearMission, 1047)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 216 )
	TriggerAction( 1, AddNextFlag, 1047, 10, 110 )
	RegCurTrigger( 10471 )

---------------------------------------------------------------·иїсµДУОП·------------------Л®КЦЎ¤єЈФЖ
	DefineMission( 6065, "Безумная игра", 1048)
	MisBeginTalk("<t>Теперь убейте 110 Кальмарчиков-моряков.")
	MisBeginCondition( NoRecord, 1048)
	MisBeginCondition( NoMission, 1048)
	MisBeginCondition( HasRecord, 1057)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1048)
	MisBeginAction( AddTrigger, 10481, TE_KILL, 233, 110)
	MisCancelAction( ClearMission, 1048)

	MisNeed(MIS_NEED_DESP, "Убейте 110 Кальмарчиков-моряков")
	MisNeed(MIS_NEED_KILL, 233, 110, 10, 110)

	MisResultTalk("<t>Вы не устали играть?")
	MisHelpTalk("<t>Убить 110 Кальмарчиков-моряков.")
	MisResultCondition( NoRecord, 1048)
	MisResultCondition( HasMission, 1048)
	MisResultCondition( HasFlag, 1048, 10)
	MisResultAction( SetRecord, 1048)
	MisResultAction( ClearMission, 1048)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 233)
	TriggerAction( 1, AddNextFlag, 1048, 10, 110 )
	RegCurTrigger( 10481 )

---------------------------------------------------------------·иїсµДУОП·------------------Л®КЦЎ¤єЈФЖ
	DefineMission( 6066, "Безумная игра", 1049)
	MisBeginTalk("<t>Убить 110 Кальмарчиков-моряков.")
	MisBeginCondition( NoRecord, 1049)
	MisBeginCondition( NoMission, 1049)
	MisBeginCondition( HasRecord, 1048)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1049)
	MisBeginAction( AddTrigger, 10491, TE_KILL, 235, 110)
	MisCancelAction( ClearMission, 1049)

	MisNeed(MIS_NEED_DESP, "Убйте 110 Снежных кальмарчиков")
	MisNeed(MIS_NEED_KILL, 235, 110, 10, 110)

	MisResultTalk("<t>Вы не устали играть?")
	MisHelpTalk("<t>Вы их можете найти в Ледыне.")
	MisResultCondition( NoRecord, 1049)
	MisResultCondition( HasMission, 1049)
	MisResultCondition( HasFlag, 1049, 10)
	MisResultAction( SetRecord, 1049)
	MisResultAction( ClearMission, 1049)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 235)
	TriggerAction( 1, AddNextFlag, 1049, 10, 110 )
	RegCurTrigger( 10491 )

---------------------------------------------------------------·иїсµДУОП·------------------Л®КЦЎ¤єЈФЖ
	DefineMission( 6067, "Безумная игра", 1050)
	MisBeginTalk("<t>Теперь убейте 110 Креветок-матросов.")
	MisBeginCondition( NoRecord, 1050)
	MisBeginCondition( NoMission, 1050)
	MisBeginCondition( HasRecord, 1049)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1050)
	MisBeginAction( AddTrigger, 10501, TE_KILL, 232, 110)
	MisCancelAction( ClearMission, 1050)

	MisNeed(MIS_NEED_DESP, "Убейте 110 Креветок-матросов")
	MisNeed(MIS_NEED_KILL, 232, 110, 10, 110)

	MisResultTalk("<t>Вы не устали играть?")
	MisHelpTalk("<t>Вы считаете мою игру скучной?")
	MisResultCondition( NoRecord, 1050)
	MisResultCondition( HasMission, 1050)
	MisResultCondition( HasFlag, 1050, 10)
	MisResultAction( SetRecord, 1050)
	MisResultAction( ClearMission, 1050)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 232)
	TriggerAction( 1, AddNextFlag, 1050, 10, 110 )
	RegCurTrigger( 10501 )

---------------------------------------------------------------·иїсµДУОП·------------------Л®КЦЎ¤єЈФЖ
	DefineMission( 6068, "Безумная игра", 1051)
	MisBeginTalk("<t>Ну а теперь убейте 110 Снегоплювов.")
	MisBeginCondition( NoRecord, 1051)
	MisBeginCondition( NoMission, 1051)
	MisBeginCondition( HasRecord, 1050)
	MisBeginCondition( HasRecord, 1016)
	MisBeginAction( AddMission, 1051)
	MisBeginAction( AddTrigger, 10511, TE_KILL, 234, 110)
	MisCancelAction( ClearMission, 1051)

	MisNeed(MIS_NEED_DESP, "Убейте 110 Снегоплювов")
	MisNeed(MIS_NEED_KILL, 234, 110, 10, 110)

	MisResultTalk("<t>Всё? Больше Вы со мной играть не хотите? Как жаль. Хоть Вы меня и обидели, я всё таки дам Вам этот приз.")
	MisHelpTalk("<t>Ну убейте их!")
	MisResultCondition( NoRecord, 1051)
	MisResultCondition( HasMission, 1051)
	MisResultCondition( HasFlag, 1051, 10)
	MisResultAction( SetRecord, 1051)
	MisResultAction( SetRecord, 1056)
	MisResultAction( ClearMission, 1051)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2229, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2230, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2231, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2232, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2233, 1, 4)
	MisResultBagNeed(5)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 234)
	TriggerAction( 1, AddNextFlag, 1051, 10, 110 )
	RegCurTrigger( 10511 )

-------------------------------------------------ЧцКЩЛѕµДФ­БП----------МбЛѕГж°ь	
	DefineMission (5604, "Ингредиент для супер-суши", 1107)
	
	MisBeginTalk("<t>Что бы Приготовить Сушы, Вы должны будете принести мне следующее: <pЧистую воду>, <pУсик улитки> и <pЭльфийский фрукт>! ")

	MisBeginCondition(NoMission,1107)
	MisBeginCondition(NoRecord,1107)
	MisBeginAction(AddMission,1107)
	MisBeginAction(AddTrigger, 11071, TE_GETITEM, 1649, 1 )---------------1ёцґїѕ»µДЛ®
	MisBeginAction(AddTrigger, 11072, TE_GETITEM, 1690, 1 )---------------1ёцОПЕЈґҐЅЗ
	MisBeginAction(AddTrigger, 11073, TE_GETITEM, 3116, 1 )-------------1ёцѕ«Бй№ы
	MisCancelAction( ClearMission, 1107)
	
	MisNeed(MIS_NEED_ITEM, 1649, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1690, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3116, 1, 30, 1 )

	MisHelpTalk("<t>В этой просьбе нет ни чего сложного!")
	MisResultTalk("<t>Отлично, сейчас мы приготовим вкуснятину!")

	MisResultCondition(HasMission, 1107)
	MisResultCondition(NoRecord,1107)
	MisResultCondition(HasItem, 1649, 1 )
	MisResultCondition(HasItem, 1690, 1 )
	MisResultCondition(HasItem, 3116, 1 )
	
	MisResultAction(TakeItem, 1649, 1 )
	MisResultAction(TakeItem, 1690, 1 )
	MisResultAction(TakeItem, 3116, 1 )
	
	MisResultAction(ClearMission, 1107)
	MisResultAction(SetRecord,  1107 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1649)	
	TriggerAction( 1, AddNextFlag, 1107, 10, 1 )
	RegCurTrigger( 11071 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1690)	
	TriggerAction( 1, AddNextFlag, 1107, 20, 1 )
	RegCurTrigger( 11072 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1107, 30, 1 )
	RegCurTrigger( 11073 )


	-------------------------------------------------і¬ј¶КЩЛѕ----------МбЛѕГж°ь	
	DefineMission (5605, "Супер-суши", 1108)
	
	MisBeginTalk("<t>Принесите <p2 Расписки на кусок кекса>, и я Вас угощу самыми вкусными Суши во всём мире! ")

	MisBeginCondition(NoMission,1108)
	MisBeginCondition(HasRecord,1107)
	MisBeginCondition(NoRecord,1108)
	MisBeginAction(AddMission,1108)
	MisBeginAction(AddTrigger, 11081, TE_GETITEM, 1097, 2 )---------------2ёцµ°ёвЖ·іўИЇ
	MisCancelAction( ClearMission, 1108)
	
	MisNeed(MIS_NEED_ITEM, 1097, 2, 10, 2 )

	MisHelpTalk("<t>Не достовайте меня, Вы не первый кто мне ноет что у него нет ни чего и что очень кушать хочется... У меня этот трюк не пройдёт")
	MisResultTalk("<t>Вот! Угощайтесь пока тёпленькое!")

	MisResultCondition(HasMission, 1108)
	MisResultCondition(NoRecord,1108)
	MisResultCondition(HasItem, 1097, 2 )
	MisResultAction(TakeItem, 1097, 2 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2989,1,4)-------і¬ј¶КЩЛѕ
	MisResultAction(ClearMission, 1108)
	MisResultAction(SetRecord,  1108 )
	MisResultAction(ClearRecord, 1107)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1108)---------------їЙТФ·ґёґЅУ
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1097)	
	TriggerAction( 1, AddNextFlag, 1108, 10, 2 )
	RegCurTrigger( 11081 )

	-------------------------------------------------µ°ёвУВКї----------МбЛѕГж°ь	
	DefineMission (5606, "Кексовоин", 1109)
	
	MisBeginTalk("<t>У меня самые вкусные пироги, но что бы их попробовать Вы должны мне принести <pМедаль отваги>! ")

	MisBeginCondition(NoMission,1109)
	MisBeginCondition(NoRecord,1109)
	MisBeginAction(AddMission,1109)
	MisBeginAction(AddTrigger, 11091, TE_GETITEM, 3849, 1 )---------------1ёцУВХЯЦ®Ц¤
	MisCancelAction( ClearMission, 1109)
	
	MisNeed(MIS_NEED_ITEM, 3849, 1, 10, 1 )

	MisHelpTalk("<t>Нет! Так дело не пойдёт, мне нужна Медаль отваги")
	MisResultTalk("<t>Кушайте на здоровье")

	MisResultCondition(HasMission, 1109)
	MisResultCondition(NoRecord,1109)
	MisResultCondition(HasItem, 3849, 1 )
	MisResultAction(ClearMission, 1109)
	MisResultAction(SetRecord,  1109 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3849)	
	TriggerAction( 1, AddNextFlag, 1109, 10, 1 )
	RegCurTrigger( 11091 )


	-------------------------------------------------Ж·ЕЖµ°ёв----------МбЛѕГж°ь	
	DefineMission (5607, "Знаменитый кекс", 1110)
	
	MisBeginTalk("<t>Вы хотите, что бы я приготовила для Вас Мой Знаменитый кекс? Хорошо, но принесите мне <pРасписку на кусок кекса>! ")

	MisBeginCondition(NoMission,1110)
	MisBeginCondition(HasRecord,1109)
	MisBeginCondition(NoRecord,1110)
	MisBeginAction(AddMission,1110)
	MisBeginAction(AddTrigger, 11101, TE_GETITEM, 1097, 1 )---------------1ёцµ°ёвЖ·іўИЇ
	MisCancelAction( ClearMission, 1110)
	
	MisNeed(MIS_NEED_ITEM, 1097, 1, 10, 1 )
	MisHelpTalk("<t>Мне необходима Расписка на кусок кекса")
	MisResultTalk("<t>Приятного аппетита")
	

	MisResultCondition(HasMission, 1110)
	MisResultCondition(NoRecord,1110)
	MisResultCondition(HasItem, 1097, 1 )
	MisResultAction(TakeItem, 1097, 1 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2988,1,4)------Ж·ЕЖµ°ёв
	MisResultAction(ClearMission, 1110)
	MisResultAction(SetRecord,  1110 )
	MisResultAction(ClearRecord, 1109)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1110)---------------їЙТФ·ґёґЅУ
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1097)	
	TriggerAction( 1, AddNextFlag, 1110, 10, 1 )
	RegCurTrigger( 11101 )


--	-----------------------------------------------------ВнАґОчСЗїЄ·юПЧАс
--	DefineMission( 6069, "Server opening ceremony", 1400)
--
--	MisBeginTalk( "<t>Feeling shy lately? If you help me do a small flavour, I'll give you a rich reward in return ")
--	MisBeginCondition( LvCheck, ">", 10)
--	MisBeginCondition( NoRecord, 1400)
--	MisBeginCondition( NoMission, 1400)
--	MisBeginAction( AddMission, 1400 )
--	MisBeginAction( AddTrigger, 14001, TE_GETITEM, 1604, 10 )
--	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 1777, 5 )
--	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 1692, 5 )
--	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 4334, 5 )
--	MisBeginAction( AddTrigger, 14002, TE_GETITEM, 4511, 1 )
--	MisCancelAction(ClearMission, 1400)
--
--	MisNeed(MIS_NEED_ITEM, 1604, 10, 10, 10)
--	MisNeed(MIS_NEED_ITEM, 1779, 5, 20, 5)
--	MisNeed(MIS_NEED_ITEM, 1692, 5, 30, 5)
--	MisNeed(MIS_NEED_ITEM, 4334, 5, 40, 5)
--	MisNeed(MIS_NEED_ITEM, 4511, 1, 50, 1)
--
--	MisResultTalk("<t>Nice job, I won't forget your reward!")
--	MisHelpTalk("<t>Mane is dropped by Bear Cub (Ascaron 1905, 2953), Glass is dropped by Forest Spirit (Ascaron 2220, 2638), Cactus is dropped by Killer Cactus (Magical Ocean 884, 3156), Pengiun Pelt is dropped by Sailor Penguin (Deep Blue 994, 365), and Glistening Shrub is from water shrub (Ascaron Sea Region 3000, 2566).")
--	MisResultCondition( HasMission, 1400)
--	MisResultCondition( NoRecord, 1400)
--	MisResultCondition( HasItem, 1604, 10)
--	MisResultCondition( HasItem, 1777, 5)
--	MisResultCondition( HasItem, 1692, 5)
--	MisResultCondition( HasItem, 4334, 5)
--	MisResultCondition( HasItem, 4511, 1)
--	MisResultAction( TakeItem, 1604, 10)
--	MisResultAction( TakeItem, 1777, 5)
--	MisResultAction( TakeItem, 1692, 5)
--	MisResultAction( TakeItem, 4334, 5)
--	MisResultAction( TakeItem, 4511, 1)
--	MisResultAction( SetRecord, 1400)
--	MisResultAction( ClearMission, 1400)
--	MisResultAction( AddMoney, 10000, 10000)
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 1604)	
--	TriggerAction( 1, AddNextFlag, 1400, 10, 10 )
--	RegCurTrigger( 14001 )
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 1777)	
--	TriggerAction( 1, AddNextFlag, 1400, 20, 5 )
--	RegCurTrigger( 14002 )
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 1692)	
--	TriggerAction( 1, AddNextFlag, 1400, 30, 5 )
--	RegCurTrigger( 14003 )
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4334)	
--	TriggerAction( 1, AddNextFlag, 1400, 40, 5 )
--	RegCurTrigger( 14004 )
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4511)	
--	TriggerAction( 1, AddNextFlag, 1400, 50, 1 )
--	RegCurTrigger( 14005 )
--
--
--	----------------------------------------------------------ВнАґОчСЗРТФЛґу±¦Пд
--	DefineMission ( 6070 , "Golden Chest" , 1401 )
--	MisBeginTalk("<t>Want to obtain Big Lucky chest? If you want one help me kill the following monsters: 30 Bandit, 20 Miner mole, 10 Tribal warrior, 5 Bandit Leader - Adder, 5 Ruby dolphin, 5 Fish bone, 20 Sluggish Squid, and Man Eating Sea Jelly")
--	MisBeginCondition( NoMission, 1401)
--	MisBeginCondition( NoRecord, 1401)
--	MisBeginAction( AddMission, 1401)
--	MisBeginAction( AddTrigger, 14011, TE_KILL, 93, 30)
--	MisBeginAction( AddTrigger, 14012, TE_KILL, 88, 20)
--	MisBeginAction( AddTrigger, 14013, TE_KILL, 248, 10)
--	MisBeginAction( AddTrigger, 14014, TE_KILL, 211, 5)
--	MisBeginAction( AddTrigger, 14015, TE_KILL, 58, 5)
--	MisBeginAction( AddTrigger, 14016, TE_KILL, 242, 5)
--	MisBeginAction( AddTrigger, 14017, TE_KILL, 578, 20)
--	MisBeginAction( AddTrigger, 14018, TE_KILL, 596, 20)
--	MisCancelAction(ClearMission, 1401)
--
--	MisNeed(MIS_NEED_KILL, 93, 30, 10, 30)
--	MisNeed(MIS_NEED_KILL, 88, 20, 20, 20)
--	MisNeed(MIS_NEED_KILL, 248, 10, 30, 10)
--	MisNeed(MIS_NEED_KILL, 211, 5, 40, 5)
--	MisNeed(MIS_NEED_KILL, 58, 5, 50, 5)
--	MisNeed(MIS_NEED_KILL, 242, 5, 60, 5)
--	MisNeed(MIS_NEED_KILL, 578, 20, 70, 20)
--	MisNeed(MIS_NEED_KILL, 596, 20, 80, 20)
--
--	MisResultTalk("<t>ЧЈДгєГФЛЕ¶~")
--	MisHelpTalk("<t>The monsters on the sea must be defeated on a ship")
--	MisResultCondition( HasMission, 1401)
--	MisResultCondition( NoRecord, 1401)
--	MisResultCondition( HasFlag, 1401, 10)
--	MisResultCondition( HasFlag, 1401, 20)
--	MisResultCondition( HasFlag, 1401, 30)
--	MisResultCondition( HasFlag, 1401, 40)
--	MisResultCondition( HasFlag, 1401, 50)
--	MisResultCondition( HasFlag, 1401, 60)
--	MisResultCondition( HasFlag, 1401, 70)
--	MisResultCondition( HasFlag, 1401, 80)
--	MisResultAction( SetRecord, 1401)
--	MisResultAction( ClearMission, 1401)
--	MisResultAction( GiveItem, 4312)
--	MisResultBagNeed(1)
--
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 93 )
--	TriggerAction( 1, AddNextFlag, 1401, 10, 30 )
--	RegCurTrigger( 14011 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 88 )
--	TriggerAction( 1, AddNextFlag, 1401, 20, 20 )
--	RegCurTrigger( 14012 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 248 )
--	TriggerAction( 1, AddNextFlag, 1401, 30, 10 )
--	RegCurTrigger( 14013 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 211 )
--	TriggerAction( 1, AddNextFlag, 1401, 40, 5 )
--	RegCurTrigger( 14014 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 58 )
--	TriggerAction( 1, AddNextFlag, 1401, 50, 5 )
--	RegCurTrigger( 14015 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 242 )
--	TriggerAction( 1, AddNextFlag, 1401, 60, 5 )
--	RegCurTrigger( 14016 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 578 )
--	TriggerAction( 1, AddNextFlag, 1401, 70, 20 )
--	RegCurTrigger( 14017 )
--	InitTrigger()
--	TriggerCondition( 1, IsMonster, 596 )
--	TriggerAction( 1, AddNextFlag, 1401, 80, 30 )
--	RegCurTrigger( 14018 )


------------------------------------------------------------------РВµДДҐБ·---ЧЄЙъМмК№
	DefineMission( 6071, "Новое сражение", 1402)
	MisBeginTalk("<t>Вам ещё учиться и учиться, но за время прохождения моих заданий Вы быстро всему научитесь")
	MisBeginCondition( CheckZS )
	MisBeginCondition( NoRecord, 1402)
	MisBeginCondition( NoMission, 1402)
	MisBeginAction( AddMission, 1402)
	MisCancelAction( ClearMission ,1402)

	MisNeed( MIS_NEED_DESP, "Ищите Ненавистный Куст у города Аргента")
	MisHelpTalk("<t>Выйдите за пределы города Аргента и поговорите с Ненавистным Кустом")

	MisResultCondition( AlwaysFailure )

-------------------------------------------------------------------РВµДДҐБ·---Ф№ДоІЭ
	DefineMission( 6072, "Новое сражение", 1402, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ха-ха-ха-ха")
	MisResultCondition( HasMission, 1402)
	MisResultCondition( NoRecord, 1402)
	MisResultAction( AddSailExp , 10, 10)
	MisResultAction( SetRecord, 1402)
	MisResultAction( ClearMission, 1402)

-----------------------------------------------------------------ѕ«БйІЭµДФ№До----Ф№ДоІЭ
	DefineMission( 6073, "Ненависть Коварного Куста", 1403)

	MisBeginTalk("<t>Ты мне ответишь на мой вопрос!")
	MisBeginCondition( CheckZS )
	MisBeginCondition( HasRecord, 1402)
	MisBeginCondition( NoRecord, 1403)
	MisBeginCondition( NoMission, 1403)
	MisBeginAction( AddMission, 1403)
	MisCancelAction( ClearMission, 1403)

	MisNeed( MIS_NEED_DESP, "Ответить на вопрос Ненавистной Травы")
	
	MisResultTalk( "<t>Я хочу отомстить!")
	MisHelpTalk( "<t>Не уходите от ответа!")
	MisResultCondition( HasRecord, 1404)
	MisResultCondition( HasMission, 1403)
	MisResultAction( SetRecord, 1403)
	MisResultAction( ClearMission, 1403)
	MisResultAction( AddSailExp, 10, 10)

---------------------------------------------------------------Ф№ДоІЭµДТЄЗу------Ф№ДоІЭ
	DefineMission( 6074, "Просьба Коварного Куста", 1408)

	MisBeginTalk("<t>Я не смерюсь, Вы меня убиваете! Сходите в Священую Войну и принесите мне от туда 20 кровавых контрактов")
	MisBeginCondition( NoMission, 1408)
	MisBeginCondition( NoRecord, 1408)
	MisBeginCondition( HasRecord, 1403)
	MisBeginCondition( HasRecord, 1405)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1408)
	MisBeginAction( AddTrigger, 14081, TE_GETITEM, 2383, 20 )
	MisCancelAction( ClearMission, 1408)

	MisNeed( MIS_NEED_ITEM, 2383 , 20, 10, 20)
	
	MisResultTalk( "<t>Ха-ха-ха... У Тебя хорошее чувство юмора, ещё немного и ты дойдёшь до своей цели!")
	MisHelpTalk( "<t>Кровавый Контракт ты сможешь получить только сходив в Священную Войну!")
	MisResultCondition( HasMission, 1408)
	MisResultCondition( NoRecord, 1408)
	MisResultCondition( HasItem, 2383, 20)
	MisResultAction( TakeItem ,2383, 20)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1408)
	MisResultAction( SetRecord, 1409)
	MisResultAction( ClearMission, 1408)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2383)	
	TriggerAction( 1, AddNextFlag, 1408, 10, 20 )
	RegCurTrigger( 14081 )

-------------------------------------------------------------Ф№ДоІЭµДТЄЗу------Ф№ДоІЭ
	DefineMission( 6075, "Просьба Коварного Куста", 1410)

	MisBeginTalk( "<t>Я злюсь на тебя всё больше и больше... Принеси мне 10 Чистой воды и не зли меня!")
	MisBeginCondition( NoRecord, 1410)
	MisBeginCondition( NoMission, 1410)
	MisBeginCondition( HasRecord, 1406)
	MisBeginCondition( HasRecord, 1403)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1410)
	MisBeginAction( AddTrigger, 14101, TE_GETITEM, 1649, 10 )
	MisCancelAction( ClearMission, 1410)

	MisNeed( MIS_NEED_ITEM, 1649 , 10, 10, 10)

	MisResultTalk( "<t>Поскольку ты так искрен, то я дам тебе еще один шанс.")
	MisHelpTalk( "Не теряй зря время, я и так на тебя злой!")
	MisResultCondition( HasMission, 1410)
	MisResultCondition( NoRecord, 1410)
	MisResultCondition( HasItem, 1649, 10)
	MisResultAction( SetRecord, 1410)
	MisResultAction( SetRecord, 1405)
	MisResultAction( TakeItem, 1649, 10)
	MisResultAction( ClearMission, 1410)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1649)	
	TriggerAction( 1, AddNextFlag, 1410, 10, 10 )
	RegCurTrigger( 14101 )

-------------------------------------------------------Ф№ДоІЭµДТЄЗу
	DefineMission( 6076, "Просьба Коварного Куста", 1411)
	MisBeginTalk( "<t>Убийца, злодей, дай мне 1.000.000 золотом, и может быть я прощу тебя")
	MisBeginCondition( NoRecord, 1411)
	MisBeginCondition( NoMission, 1411)
	MisBeginCondition( HasRecord, 1403)
	MisBeginCondition( HasRecord, 1407)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1411)
	MisCancelAction( ClearMission, 1411)

	MisNeed( MIS_NEED_DESP, "<t>Дать 1.000.000 золота Ненавистной траве")
	
	MisResultTalk( "<t>Деньги-Деньги, нет в них ни смысла ни разума, а вот убийство моих разумных братьев это огромный грех,  и эти деньги не помогут мне их забыть")
	MisHelpTalk("<t>Быстро, дай мне деньги!")
	MisResultCondition( HasMission, 1411)
	MisResultCondition( NoRecord, 1411)
	MisResultCondition( HasMoney, 1000000)
	MisResultAction( TakeMoney, 1000000)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1411)
	MisResultAction( SetRecord, 1409)
	MisResultAction( ClearMission, 1411)

---------------------------------------------------------»г±ЁЗйїц-------Ф№ДоІЭ
	DefineMission( 6077, "Доложить о ситуации", 1412)
	MisBeginTalk( "<t>Я вижу, что ты осознаешь вину в смертях моих собратьев...")
	MisBeginCondition( NoRecord, 1412)
	MisBeginCondition( NoMission, 1412)
	MisBeginCondition( HasRecord, 1409)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1412)
	MisCancelAction( ClearMission, 1412)

	MisNeed( MIS_NEED_DESP, "Раздобыть файлы у охранника замка и выяснить, что тут происходит.")
	MisHelpTalk( "<t>Не путайся у меня под ногами, я сказал тебе уже чем заняться!")

	MisResultCondition( AlwaysFailure )

---------------------------------------------------------»г±ЁЗйїц------іЗ±¤»¤ОАЎ¤±ИМШ
	DefineMission( 6078, "Доложить о ситуации", 1412, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure)

	MisResultTalk( "<t>Что? У цветка проблемы? Это Вам сам цветок сказал? Бред... Растения не могут говорить!")
	MisResultCondition( HasMission, 1412)
	MisResultCondition( NoRecord, 1412)
	MisResultAction( SetRecord, 1412)
	MisResultAction( ClearMission, 1412)
	MisResultAction( AddSailExp, 5, 5)

---------------------------------------------------------КХјЇУрГ«-------іЗ±¤»¤ОАЎ¤±ИМШ
	DefineMission( 6079, "Собрать перья", 1413)
	MisBeginTalk( "<t>Я Вам дам не простую задачу: Как Вы уже видели, перья перерождения состоят из двух видов перьев, и мы не можем сейчас выпускать новые крылья, у нас закончились припасы перьев. Принесите мне <b100Белоснежного султана> и <b100 Черных перьев>.")
	MisBeginCondition( NoMission, 1413)
	MisBeginCondition( NoRecord, 1413)
	MisBeginCondition( HasRecord, 1412)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1413)
	MisBeginAction( AddTrigger, 14131, TE_GETITEM, 4364, 100)
	MisBeginAction( AddTrigger, 14132, TE_GETITEM, 4347, 100)
	MisCancelAction( ClearMission, 1413)

	MisNeed( MIS_NEED_ITEM, 4364, 100, 10, 100)
	MisNeed( MIS_NEED_ITEM, 4347, 100, 20, 100)

	MisResultTalk( "<t>Вы сделали очень хорошее дело!")
	MisHelpTalk( "<t>Эти перья можно выбить из монстров города Аргента в точках (1360,2683) и (1461,3018).")
	MisResultCondition( HasMission, 1413)
	MisResultCondition( NoRecord, 1413)
	MisResultCondition( HasItem, 4364, 100)
	MisResultCondition( HasItem, 4347, 100)
	MisResultAction( TakeItem, 4364, 100)
	MisResultAction( TakeItem, 4347, 100)
	MisResultAction( AddSailExp, 40, 40)
	MisResultAction( SetRecord, 1413)
	MisResultAction( ClearMission, 1413)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4364)	
	TriggerAction( 1, AddNextFlag, 1413, 10, 100 )
	RegCurTrigger( 14131 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4347)	
	TriggerAction( 1, AddNextFlag, 1413, 20, 100 )
	RegCurTrigger( 14132 )

--------------------------------------------------------°пЦъЛыИЛ--------іЗ±¤»¤ОАЎ¤±ИМШ
	DefineMission( 6080, "Помоги другим людям", 1414)
	MisBeginTalk("<t>Идите и помогайте другим людям, им тоже нужна помощь, потом вернитесь ко мне!")
	MisBeginCondition( HasRecord, 1413)
	MisBeginCondition( NoRecord, 1414)
	MisBeginCondition( NoMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1414)
	MisCancelAction( ClearMission, 1414)

	MisNeed( MIS_NEED_DESP, "<t>Прогуляться по городу в поиске людей, которым необходимо помочь")

	MisResultTalk( "<t>Вы помогли многим, это потрясающе!")
	MisHelpTalk( "<t>В городе много людей нуждающихся в помощи!")
	MisResultCondition( HasMission, 1414)
	MisResultCondition( NoRecord, 1414)
	MisResultCondition( HasRecord, 1428)
	MisResultCondition( HasRecord, 1417)
	MisResultCondition( HasRecord, 1420)
	MisResultCondition( HasRecord, 1422)
	MisResultCondition( HasRecord, 1424)
	MisResultAction( AddSailExp, 10,10)
	MisResultAction( SetRecord, 1414)
	MisResultAction( ClearMission, 1414)

---------------------------------------------------------Гµ№еµДчИБ¦----ѕЖ°ЙЕ®Ў¤µЩДИ
	DefineMission( 6081, "Очарование розы", 1415)
	MisBeginTalk("<t>Я видела молодого человека, он так красиво говорит(ее глаза наполняются маленькая звездочка).")
	MisBeginCondition( NoChaType, 3)
	MisBeginCondition( NoChaType, 4)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginCondition( NoMission, 1415)
	MisBeginCondition( NoRecord, 1415)
	MisBeginAction( AddMission, 1415)
	MisCancelAction( ClearMission, 1415)

	MisNeed( MIS_NEED_DESP, "Девочка в баре хочет видеть Вас, пговорите с Мо Янг")

	MisResultTalk( "<t>Не плохо, мама Хуху тоже может играть 80 мин")
	MisHelpTalk( "<t>Вы не находите розу красивой?")
	MisResultCondition( HasState, 110)
	MisResultCondition( HasMission, 1415)
	MisResultCondition( NoRecord, 1415)
	MisResultAction( SetRecord, 1415)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1428)
	MisResultAction( ClearMission, 1415)


---------------------------------------------------------Гµ№еµДчИБ¦----ѕЖ№нЎ¤·ТµВДЪ
	DefineMission( 6082, "Очарование розы", 1416)
	MisBeginTalk( "<t>Я имел честь разговаривать о самых прикрасных вещах с самым прекрасным собеседником")
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( NoRecord, 1416)
	MisBeginCondition( NoMission, 1416)
	MisBeginCondition( NoChaType, 1)
	MisBeginCondition( NoChaType, 2)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1416)
	MisCancelAction( ClearMission, 1416)

	MisNeed( MIS_NEED_DESP, "Алкоголик Финди хочет с Вами поговорить!")

	MisResultTalk( "<t>Я должен признать, что Вы постарались на славу!")
	MisHelpTalk( "<t>Вы не находите розу красивой?")
	MisResultCondition( HasState, 110)
	MisResultCondition( HasMission, 1416)
	MisResultCondition( NoRecord, 1416)
	MisResultAction( SetRecord, 1416)
	MisResultAction( SetRecord, 1428)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( ClearMission, 1416)
---------------------------------------------------------µ№Г№µДДЈМШ----і±Бч·ўРНК¦Ў¤їЁМШ
	DefineMission( 6085, "Несчастливая модель", 1417)
	MisBeginTalk( "<t>Я хочу попробовать новую причёску, но у меня нет необходимого инструмента. Принесите мне <b5 Половин ножниц> и <b5 Гребеней>.")
	MisBeginCondition( NoMission, 1417)
	MisBeginCondition( NoRecord, 1417)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1417)
	MisBeginAction( AddTrigger, 14171, TE_GETITEM, 1804, 5)
	MisBeginAction( AddTrigger, 14172, TE_GETITEM, 1805, 5)
	MisCancelAction( ClearMission, 1417)

	MisNeed( MIS_NEED_ITEM, 1804, 5, 10, 5)
	MisNeed( MIS_NEED_ITEM, 1805, 5, 20, 5)
	
	MisResultTalk( "<t>Я Вам сильно благодарен, сейчас же займусь разработкой новых причёсок.")
	MisResultCondition( HasMission, 1417)
	MisResultCondition( HasItem, 1804, 5)
	MisResultCondition( HasItem, 1805, 5)
	MisResultCondition( NoRecord, 1417)
	MisResultAction( TakeItem, 1804, 5)
	MisResultAction( TakeItem, 1805, 5)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( SetRecord, 1417)
	MisResultAction( ClearMission, 1417)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1804)	
	TriggerAction( 1, AddNextFlag, 1417, 10, 5 )
	RegCurTrigger( 14171 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1805)	
	TriggerAction( 1, AddNextFlag, 1417, 20, 5 )
	RegCurTrigger( 14172 )


----------------------------------------------------------ЕЬБъМЧµДГОПл----В·ИЛЎ¤јЧ
	DefineMission( 6086, "Мечта о драконьих доспехах", 1418)
	MisBeginTalk( "<t>Я не хочу быть пешкой в спектаклях, я хочу играть главную роль в этом мире, Главно командующий сказал что для этого я должен вступить в Флот её величества Королевы.")
	MisBeginCondition( NoMission, 1418)
	MisBeginCondition( NoRecord, 1418)
	MisBeginCondition( CheckZS )
	MisBeginCondition( HasMission, 1414)
	MisBeginAction( AddMission, 1418)
	MisCancelAction( ClearMission, 1418)

	MisNeed( MIS_NEED_DESP, "Отправляйтесь к командующему ВМС Дезиталио, и поговорите о мечте бедолаги")

	MisResultCondition( AlwaysFailure )

------------------------------------------------------------ЕЬБъМЧµДГОПл----єЈѕьЛѕБо№ЩЎ¤µВЛ№ЛюВЮ
	DefineMission( 6087, "Мечта о драконьих доспехах", 1418, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Я не ошибся? Он хочет служить Её Величеству Королеве?")
	MisResultCondition( HasMission, 1418)
	MisResultCondition( NoRecord, 1418)
	MisResultAction( SetRecord, 1418)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( ClearMission, 1418)

-------------------------------------------------------------ЕЬБъМЧµДГОПл----єЈѕьЛѕБо№ЩЎ¤µВЛ№ЛюВЮ
	DefineMission( 6088, "Мечта о драконьих доспехах", 1419)
	MisBeginTalk( "<t>Ну что я могу сказать, необходимо пройти тестирование на способность быть в Флоте, для этого надо убить: <r5 Фрегатов бородачей> и <r5 Кораблей поддержки бородачей>.")
	MisBeginCondition( NoMission, 1419)
	MisBeginCondition( NoRecord, 1419)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( HasRecord, 1418)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1419)
	MisCancelAction( ClearMission, 1419)

	MisNeed( MIS_NEED_DESP, "Расскажите что необходимо для вступления в Флот.")

	MisResultCondition( AlwaysFailure )


--------------------------------------------------------------ЕЬБъМЧµДГОПл----В·ИЛЎ¤јЧ
	DefineMission( 6089, "Мечта о драконьих доспехах", 1419, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>О как?! Хорошо, дай мне подумать минутку.")
	MisResultCondition( HasMission, 1419)
	MisResultCondition( NoRecord, 1419)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( SetRecord, 1419)
	MisResultAction( ClearMission, 1419)

-------------------------------------------------------------ЕЬБъМЧµДГОПл----В·ИЛЎ¤јЧ
	DefineMission( 6090, "Мечта о драконьих доспехах", 1420)
	MisBeginTalk( "<t>Это для меня почти не выполнимая задача, не могли бы Вы убить их вместо меня?")
	MisBeginCondition( NoMission, 1420)
	MisBeginCondition( NoRecord, 1420)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( HasRecord, 1419)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1420)
	MisBeginAction( AddTrigger, 14201, TE_KILL, 630, 5)
	MisBeginAction( AddTrigger, 14202, TE_KILL, 631, 5)
	MisCancelAction( ClearMission, 1420)

	MisNeed( MIS_NEED_DESP, "Убейте <r5 Кораблей поддержки бородачей> и <r5 Фрегатов бородачей>.")
	MisNeed( MIS_NEED_KILL, 630, 5, 10, 5)
	MisNeed( MIS_NEED_KILL, 631, 5, 20, 5)
	
	MisResultTalk( "<t>Я получил письмо от командующего флота ВМС, меня приняли, Вы очень хороший человек!")
	MisResultCondition( HasMission, 1420)
	MisResultCondition( NoRecord, 1420)
	MisResultCondition( HasFlag, 1420, 14)
	MisResultCondition( HasFlag, 1420, 24)
	MisResultAction( SetRecord, 1420)
	MisResultAction( ClearMission, 1420)
	MisResultAction( AddSailExp, 20, 20)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 630 )
	TriggerAction( 1, AddNextFlag, 1420, 10, 5 )
	RegCurTrigger( 14201 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 631 )
	TriggerAction( 1, AddNextFlag, 1420, 20, 5 )
	RegCurTrigger( 14202 )


---------------------------------------------------------------Ѕфј±їмµЭ-----------ТшРРіцДЙЎ¤Д¦ДЭСЕ
	DefineMission( 6091, "Срочная доставка", 1421)
	MisBeginTalk( "<t>У меня есть срочное послание в Ледыню, но я не так быстр как Вы, может Вы поможете мне и подработаете в лице курьера?")
	MisBeginCondition( NoMission, 1421)
	MisBeginCondition( NoRecord, 1421)
	MisBeginCondition( CheckZS )
	MisBeginCondition( HasMission, 1414)
	MisBeginAction( AddMission, 1421)
	MisCancelAction( ClearMission, 1421)

	MisNeed( MIS_NEED_DESP, "<t>Доставьте посылку")

	MisResultTalk( "<t>Вы оправдали моё доверие")
	MisHelpTalk( "<t>Вы очень туго соображаете...")
	MisResultCondition( HasMission, 1421)
	MisResultCondition( NoRecord, 1421)
	MisResultCondition( CheckSpeed, 550)
	MisResultAction( SetRecord, 1421)
	MisResultAction( AddSailExp, 20, 20)
	MisResultAction( ClearMission, 1421)

---------------------------------------------------------------Ѕфј±їмµЭ-----------ТшРРіцДЙЎ¤Д¦ДЭСЕ
	DefineMission( 6092, "Срочная доставка", 1422)
	MisBeginTalk( "<t>Я очень рад Вас видеть, Это послание очень важно для меня! ")
	MisBeginCondition( NoMission, 1422)
	MisBeginCondition( NoRecord, 1422)
	MisBeginCondition( HasRecord, 1421)
	MisBeginAction( AddMission, 1422)
	MisBeginAction( GiveItem, 956, 1, 4)
	MisCancelAction( ClearMission, 1422)

	MisNeed( MIS_NEED_DESP, "Отнести посылку в к банкиру")
	MisHelpTalk( "<t>Ищите банкира!")

	MisResultCondition( AlwaysFailure )

------------------------------------------------------------Ѕфј±їмµЭ--------------ТшРРіцДЙЎ¤ІјАцДИ
	DefineMission( 6093, "Срочная доставка", 1422, COMPLETE)
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>Невероятно! Вы смогли меня найти... Это действительно потрясающе!")
	MisResultCondition( HasMission, 1422)
	MisResultCondition( NoRecord, 1422)
	MisResultCondition( HasItem, 956, 1)
	MisResultAction( TakeItem, 956, 1)
	MisResultAction( SetRecord, 1422)
	MisResultAction( ClearMission, 1422)
	MisResultAction( AddSailExp, 5, 5)

----------------------------------------------------------їЄѕнУРТж----------------АПХЯЎ¤єэНїЙЅИЛ
	DefineMission( 6094, "открытие свитков идет тебе на пользу", 1423)
	MisBeginTalk( "<t>Молодёж совсем перестаёт читать, и книги уходят из жизни людей, а именно в книгах таится вся важная информация!")
	MisBeginCondition( NoRecord, 1423)
	MisBeginCondition( NoMission, 1423)
	MisBeginCondition( HasMission, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1423)
	MisBeginAction( GiveItem, 957, 1, 4)
	MisCancelAction( ClearMission, 1423)

	MisNeed( MIS_NEED_DESP, "Отнесите эту книгу человеку, который сможет прочитать её и вникнуть в суть её.")
	MisHelpTalk( "<t>Ищите лучше этого человека, может он даже ближе чем Вы сами можите себе представить")

	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------їЄѕнУРТж-----------------НРВнЛ№Ў¤НјНј
	DefineMission( 6095, "открытие свитков идет тебе на пользу", 1423)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>О! Вы уже прочитали эту книгу? Тогда я заберу её у Вас!")
	MisResultCondition( HasMission, 1423)
	MisResultCondition( NoRecord, 1423)
	MisResultCondition( HasItem, 957, 1)
	MisResultAction( TakeItem, 957, 1)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( SetRecord, 1423)
	MisResultAction( ClearMission, 1423)

-----------------------------------------------------------їЄѕнУРТж-----------------НРВнЛ№Ў¤НјНј
	DefineMission( 6096, "открытие свитков идет тебе на пользу", 1424)
	MisBeginTalk( "<t>Значит Вы говорите, что читали книгу, а потом пришли в бар?")
	MisBeginCondition( NoMission, 1424)
	MisBeginCondition( NoRecord, 1424)
	MisBeginCondition( HasRecord, 1423)
	MisBeginAction( AddMission, 1424)
	MisCancelAction( ClearMission, 1424)

	MisNeed( MIS_NEED_DESP, "Вам необходимо ответить на несколько вопросов по поводу <bИстории возрождений>.")
	MisHelpTalk( "<t>Эти вопросы не такие и сложные, не надо их бояться!")
		
	MisResultTalk( "<t>Читать книжки всегда нужно, в них истина!")
	MisResultCondition( HasMission, 1424)
	MisResultCondition( NoRecord, 1424)
	MisResultCondition( HasRecord, 1429)
	MisResultAction( AddSailExp, 5, 5)
	MisResultAction( SetRecord, 1424)
	MisResultAction( ClearMission, 1424)

-----------------------------------------------------------ґММЅѕьЗй--------------іЗ±¤»¤ОАЎ¤±ИМШ
	DefineMission( 6097, "Шпионить за вражеской армией", 1425)
	MisBeginTalk( "<t>По моим наблюдениям, вы достойный солдат, и я могу вам доверить выполнение важной задачи, мы недавно направили разведчиков к черному дракону, но они до сих пор не вернулись, идти и разузнай всё.")
	MisBeginCondition( NoMission, 1425)
	MisBeginCondition( NoRecord, 1425)
	MisBeginCondition( HasRecord, 1414)
	MisBeginCondition( CheckZS )
	MisBeginAction( AddMission, 1425)
	MisCancelAction( ClearMission, 1425)

	MisNeed( MIS_NEED_DESP, "Отправляйтесь в логово Чёрного Дракона")
	MisHelpTalk( "<t>Идите, и будьте внимательнее")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------ґММЅѕьЗй--------------ЦШЙЛµДОЮГыХЅКї
	DefineMission( 6098, "Шпионить за вражеской армией", 1425, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Ааааа.. На нас напали молодые драконы, все... Это конец!...")
	MisResultCondition( HasMission, 1425)
	MisResultCondition( NoRecord, 1425)
	MisResultAction( SetRecord, 1425)
	MisResultAction( AddSailExp, 10, 10)
	MisResultAction( ClearMission, 1425)

-----------------------------------------------------------ґММЅѕьЗй---------------ЦШЙЛµДОЮГыХЅКї
	DefineMission( 6099, "Шпионить за вражеской армией", 1426)
	MisBeginCondition( NoMission, 1426)
	MisBeginCondition( NoRecord, 1426)
	MisBeginCondition( HasRecord, 1425)
	MisBeginAction( AddMission, 1426)
	MisBeginAction( GiveItem, 958, 1, 4)
	MisCancelAction( ClearMission, 1426)

	MisNeed( MIS_NEED_DESP, "Передать важный документ в штаб Гвардии.")
	MisHelpTalk( "<t>Я хочу вас!")

	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------ґММЅѕьЗй--------------іЗ±¤»¤ОАЎ¤±ИМШ
	DefineMission( 6100, "Шпионить за вражеской армией", 1426, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Что? Моих людей разбили? Это не возможно!")
	MisResultCondition( HasMission, 1426)
	MisResultCondition( NoRecord, 1426)
	MisResultCondition( HasItem, 958, 1)
	MisResultAction( TakeItem, 958, 1)
	MisResultAction( AddSailExp, 10, 10)
	MisResultAction( SetRecord, 1426)
	MisResultAction( ClearMission, 1426)

-----------------------------------------------------------±ИМШµДёґір-----------іЗ±¤»¤ОАЎ¤±ИМШ
	DefineMission( 6101, "Месть Питера", 1427)
	MisBeginTalk( "<t>Мы должны отомстить этим кровожадным рептилиям! Убейте <rМаленького Черного дракона>, <rГромового дракончика> и <rКровожадного дракон>. По Вашему возвращению мы отпразднуем победу в баре хорошим ромом!")
	MisBeginCondition( NoMission, 1427)
	MisBeginCondition( NoRecord, 1427)
	MisBeginCondition( HasRecord, 1426)
	MisBeginAction( AddMission, 1427)
	MisBeginAction( AddTrigger, 14271, TE_KILL, 791, 1)
	MisBeginAction( AddTrigger, 14272, TE_KILL, 793, 1)
	MisBeginAction( AddTrigger, 14273, TE_KILL, 794, 1)
	MisCancelAction( ClearMission, 1427)

	MisNeed( MIS_NEED_KILL, 791, 1, 10, 1)
	MisNeed( MIS_NEED_KILL, 793, 1, 30, 1)
	MisNeed( MIS_NEED_KILL, 794, 1, 50, 1)

	MisResultTalk( "<t>Спасибо, вы доказали, вы настоящий воин, позже вы можете  продолжить свой путь к перерождению.")
	MisHelpTalk( "<t>Будьте осторожны, эти ящеры не такие и слабые как могут показаться на первый взгляд.")
	MisResultCondition( HasMission, 1427)
	MisResultCondition( NoRecord, 1427)
	MisResultCondition( HasFlag, 1427, 10)
	MisResultCondition( HasFlag, 1427, 30)
	MisResultCondition( HasFlag, 1427, 50)
	MisResultAction( AddSailExp, 50, 50)
	MisResultAction( SetRecord, 1427)
	MisResultAction( ClearMission, 1427)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 791 )
	TriggerAction( 1, AddNextFlag, 1427, 10, 1 )
	RegCurTrigger( 14271 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 793 )
	TriggerAction( 1, AddNextFlag, 1427, 30, 1 )
	RegCurTrigger( 14272 )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 794 )
	TriggerAction( 1, AddNextFlag, 1427, 50, 1 )
	RegCurTrigger( 14273 )


----------------------------------------------------МфХЅЎ¤єЪБъ----------BOSSМфХЅµЗјЗФ±
	DefineMission( 6102, "Сразиться с Черным драконом", 1430)
	MisBeginTalk( "<t>Черный Дракон обитает в Логове Чёрного Дракона 2. Так же он считается одним из самых сильнейших Монстров в Игре. Вы точно уверены, что хотите пойти к нему?")
	MisBeginCondition( NoMission, 1430)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginAction(	AddMission, 1430)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14301, TE_KILL, 789, 1)
	MisCancelAction( ClearMission, 1430)

	MisNeed( MIS_NEED_KILL, 789, 1, 10, 1)

	MisResultTalk( "<t>Каждое сражение делает нас сильнее!")
	MisHelpTalk( "<t>Прошу Вас не бойтесь, если уже сделали вызов!")
	MisResultCondition( HasFlag, 1430, 10)
	MisResultCondition( HasMission, 1430)
	MisResultAction( AddSailExp, 120, 120)
	MisResultAction( ClearMission, 1430)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 789 )
	TriggerAction( 1, AddNextFlag, 1430, 10, 1 )
	RegCurTrigger( 14301 )

------------------------------------------------------МфХЅЎ¤С©йдБй--------BOSSМфХЅµЗјЗФ±
	DefineMission( 6103, "Сразиться с Блуждающей душой", 1432)
	MisBeginTalk( "<t>Блуждающую Душу Вы сможете найти в Мире демонов 1, но будьте осторожны, этот монстр один из самых сильных монстров в игре!")
	MisBeginCondition( NoMission, 1432)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginAction(	AddMission, 1432)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14321, TE_KILL, 679, 1)
	MisCancelAction( ClearMission, 1432)

	MisNeed( MIS_NEED_KILL, 679, 1, 10, 1)

	MisResultTalk( "<t>Вы сильный Герой.")
	MisHelpTalk( "<t>Идите и убейте Блуждающую душу!")
	MisResultCondition( HasFlag, 1432, 10)
	MisResultCondition( HasMission, 1432)
	MisResultAction( AddSailExp, 50, 50)
	MisResultAction( ClearMission, 1432)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 679 )
	TriggerAction( 1, AddNextFlag, 1432, 10, 1 )
	RegCurTrigger( 14321 )

------------------------------------------------------МфХЅЎ¤ѕЮИЛКЧБм--------BOSSМфХЅµЗјЗФ±
	DefineMission( 6104, "Сразиться с Главой снежного люда", 1433)
	MisBeginTalk( "<t>Главу Снежного Люда Вы сможете найти в Мире Демонов 2, но будьте осторожны, он считается одним из самых сильных монстров игры!")
	MisBeginCondition( NoMission, 1433)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginAction(	AddMission, 1433)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14331, TE_KILL, 678, 1)
	MisCancelAction( ClearMission, 1433)

	MisNeed( MIS_NEED_KILL, 679, 1, 10, 1)

	MisResultTalk( "<t>Вы храбрый и смелый Воин.")
	MisHelpTalk( "<t>Отправляйтесь в Мир демонов!")
	MisResultCondition( HasFlag, 1433, 10)
	MisResultCondition( HasMission, 1433)
	MisResultAction( AddSailExp, 50, 50)
	MisResultAction( ClearMission, 1433)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 678 )
	TriggerAction( 1, AddNextFlag, 1433, 10, 1 )
	RegCurTrigger( 14331 )

-------------------------------------------------------МфХЅЎ¤°НІ®Иш--------BOSSМфХЅµЗјЗФ±
	DefineMission( 6105, "Схватка с Барборосой", 1434)
	MisBeginTalk( "<t>Барбаросса очень сильный монстр игры, будьте с ним осторожны. Найти его Вы сможете на острове скелетов!")
	MisBeginCondition( NoMission, 1434)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginAction(	AddMission, 1434)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14341, TE_KILL, 805, 1)
	MisCancelAction( ClearMission, 1434)

	MisNeed( MIS_NEED_KILL, 805, 1, 10, 1)

	MisResultTalk( "<t>Вы храбрый и смелый Воин.")
	MisHelpTalk( "<t>Отправляйтесь на поиски Барборосы!")
	MisResultCondition( HasFlag, 1434, 10)
	MisResultCondition( HasMission, 1434)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1434)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 805 )
	TriggerAction( 1, AddNextFlag, 1434, 10, 1 )
	RegCurTrigger( 14341 )

-------------------------------------------------------МфХЅЎ¤НцБйЛѕБо--------BOSSМфХЅµЗјЗФ±
	DefineMission( 6106, "Сразиться с Командиром мертвых душ", 1435)
	MisBeginTalk( "<t>Командир мертвых душ - это один из самых сильных монстров игры. Найти его можно в поиске убежища. Вы уверены, что готовы с ним бороться?")
	MisBeginCondition( NoMission, 1435)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginAction(	AddMission, 1435)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14351, TE_KILL, 807, 1)
	MisCancelAction( ClearMission, 1435)

	MisNeed( MIS_NEED_KILL, 807, 1, 10, 1)

	MisResultTalk( "<t>Вы сильный и храбрый Герой.")
	MisHelpTalk( "<t>Отправляйтесь в Убежище!")
	MisResultCondition( HasFlag, 1435, 10)
	MisResultCondition( HasMission, 1435)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1435)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 807 )
	TriggerAction( 1, AddNextFlag, 1435, 10, 1 )
	RegCurTrigger( 14351 )

-------------------------------------------------------МфХЅЎ¤ґуХВУг--------BOSSМфХЅµЗјЗФ±
	DefineMission( 6107, "Сразиться с Кракеном", 1436)
	MisBeginTalk( "<t>Кракен - Доисторический гигантский Спрут, является одним из самых сильнейших монстров игры, обитает он у острова скелетов. Вы уверены, что хотите с ним воевать?")
	MisBeginCondition( NoMission, 1436)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginAction(	AddMission, 1436)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14361, TE_KILL, 795, 1)
	MisCancelAction( ClearMission, 1436)

	MisNeed( MIS_NEED_KILL, 795, 1, 10, 1)

	MisResultTalk( "<t>Ищите Кракена на Острове Скелетов.")
	MisHelpTalk( "<t>Не бойтесь, он не укусит!")
	MisResultCondition( HasFlag, 1436, 10)
	MisResultCondition( HasMission, 1436)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1436)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 795 )
	TriggerAction( 1, AddNextFlag, 1436, 10, 1 )
	RegCurTrigger( 14361 )

-------------------------------------------------------МфХЅЎ¤єЪХдЦй--------BOSSМфХЅµЗјЗФ±
	DefineMission( 6108, "Сразиться с черным бриллиантом", 1437)
	MisBeginTalk( "<t>Черный бриллиант, является одним из сильнейших монстров игры, найти его можно в военной базе. Осторожно с ним, он опасен!")
	MisBeginCondition( NoMission, 1437)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginAction(	AddMission, 1437)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14371, TE_KILL, 815, 1)
	MisCancelAction( ClearMission, 1437)

	MisNeed( MIS_NEED_KILL, 815, 1, 10, 1)

	MisResultTalk( "<t>Вы настоящий Герой.")
	MisHelpTalk( "<t>Не бойтесь его!")
	MisResultCondition( HasFlag, 1437, 10)
	MisResultCondition( HasMission, 1437)
	MisResultAction( AddSailExp, 75, 75)
	MisResultAction( ClearMission, 1437)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 815 )
	TriggerAction( 1, AddNextFlag, 1437, 10, 1 )
	RegCurTrigger( 14371 )

-------------------------------------------------------МфХЅЎ¤ѕшНыЖпКї-ИыА­------BOSSМфХЅµЗјЗФ±
	DefineMission( 6109, "Сразиться с Рыцарем отчаяния - Саро", 1438)
	MisBeginTalk( "<t>Рыцарь отчаяния - Саро - это один из сильнейших монстров в игре, найти его можно в Абоддоне 5-8. Будьте осторожны с ним!")
	MisBeginCondition( NoMission, 1438)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginAction(	AddMission, 1438)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14381, TE_KILL, 974, 1)
	MisCancelAction( ClearMission, 1438)

	MisNeed( MIS_NEED_KILL, 974, 1, 10, 1)

	MisResultTalk( "<t>Вы настоящий Герой.")
	MisHelpTalk( "<t>Убейте Рыцаря отчаяния - Саро!")
	MisResultCondition( HasFlag, 1438, 10)
	MisResultCondition( HasMission, 1438)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1438)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 974 )
	TriggerAction( 1, AddNextFlag, 1438, 10, 1 )
	RegCurTrigger( 14381 )

-------------------------------------------------------МфХЅЎ¤Ъ¤Да№Ц-їЁЖХ¶Щ------BOSSМфХЅµЗјЗФ±
	DefineMission( 6110, "Сразиться с Грязилищем из Бездны - Кару", 1439)
	MisBeginTalk( "<t>Грязилище из Бездны - Кару можно найти в Абаддоне 6. Осторожно! Он считается одним из сильнейших монстров игры!")
	MisBeginCondition( NoMission, 1439)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginAction(	AddMission, 1439)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14391, TE_KILL, 975, 1)
	MisCancelAction( ClearMission, 1439)

	MisNeed( MIS_NEED_KILL, 975, 1, 10, 1)

	MisResultTalk( "<t>Вы настоящий Герой.")
	MisHelpTalk( "<t>Не бойтесь и отправляйтесь в Абаддон 6!")
	MisResultCondition( HasFlag, 1439, 10)
	MisResultCondition( HasMission, 1439)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1439)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 975 )
	TriggerAction( 1, AddNextFlag, 1439, 10, 1 )
	RegCurTrigger( 14391 )

-------------------------------------------------------МфХЅЎ¤Ъ¤Зф-°ў¶ыМбЛ№------BOSSМфХЅµЗјЗФ±
	DefineMission( 6111, "Сразиться с Узником Бездны - Аратур", 1440)
	MisBeginTalk( "<t>Узник Бездны - Аратур можно найти в Абаддоне 7. Осторожно! Он считается одним из сильнейших монстров игры!")
	MisBeginCondition( NoMission, 1440)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginAction(	AddMission, 1440)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14401, TE_KILL, 976, 1)
	MisCancelAction( ClearMission, 1440)

	MisNeed( MIS_NEED_KILL, 976, 1, 10, 1)

	MisResultTalk( "<t> Каждая битва сделает вас сильнее.")
	MisHelpTalk( "<t>пожалуйста, будьте осторожны.")
	MisResultCondition( HasFlag, 1440, 10)
	MisResultCondition( HasMission, 1440)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1440)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 976 )
	TriggerAction( 1, AddNextFlag, 1440, 10, 1 )
	RegCurTrigger( 14401 )

-------------------------------------------------------МфХЅЎ¤Ъ¤Сэ-ИшївОчЛ№------BOSSМфХЅµЗјЗФ±
	DefineMission( 6112, "Сразиться с Демоном бездны - Сакруа", 1441)
	MisBeginTalk( "<t>Демон бездны - Сакруа можно найти в Абаддоне 8. Осторожно! Он считается одним из сильнейших монстров игры!")
	MisBeginCondition( NoMission, 1441)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginAction(	AddMission, 1441)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14411, TE_KILL, 977, 1)
	MisCancelAction( ClearMission, 1441)

	MisNeed( MIS_NEED_KILL, 977, 1, 10, 1)

	MisResultTalk( "<t>Вы настоящий Герой.")
	MisHelpTalk( "<t>Не бойтесь умереть!")
	MisResultCondition( HasFlag, 1441, 10)
	MisResultCondition( HasMission, 1441)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1441)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 977 )
	TriggerAction( 1, AddNextFlag, 1441, 10, 1 )
	RegCurTrigger( 14411 )

-------------------------------------------------------МфХЅЎ¤Ъ¤ЅзКЮ-№ѕ№ѕ------BOSSМфХЅµЗјЗФ±
	DefineMission( 6113, "Сразиться с Чудовищем из Бездны - Куро", 1442)
	MisBeginTalk( "<t>Чудовище из Бездны - Куро можно найти в Абаддоне 9. Осторожно! Он считается одним из сильнейших монстров игры!")
	MisBeginCondition( NoMission, 1442)
	MisBeginCondition( NoRecord, 1431)
	MisBeginCondition( HasRecord, 1427)
	MisBeginAction(	AddMission, 1442)
	MisBeginAction( SetRecord, 1431)
	MisBeginAction( AddTrigger, 14421, TE_KILL, 978, 1)
	MisCancelAction( ClearMission, 1442)

	MisNeed( MIS_NEED_KILL, 978, 1, 10, 1)

	MisResultTalk( "<t>Вы настоящий Герой.")
	MisHelpTalk( "<t>Не бойтесь умереть!")
	MisResultCondition( HasFlag, 1442, 10)
	MisResultCondition( HasMission, 1442)
	MisResultAction( AddSailExp, 90, 90)
	MisResultAction( ClearMission, 1442)
	MisResultAction( ClearRecord, 1431)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 978 )
	TriggerAction( 1, AddNextFlag, 1442, 10, 1 )
	RegCurTrigger( 14412 )

	-------------------------------------------------ВТ¶·УўРЫ----------°Е°ЕА­	
	DefineMission (5608, "Герой Хаоса Кровавого Тельца", 1114)
	
	MisBeginTalk("<t>Телец всегда был символом счастья.Настоящий Герой должен быть знаком с Хаосом.")

	MisBeginCondition(NoMission,1114)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1114)
	MisBeginAction(AddMission,1114)
	MisCancelAction(ClearMission, 1114)
	
	MisNeed(MIS_NEED_DESP, "Посторайтесь набрать 30 очков хаоса")
	MisHelpTalk("<t>Посторайтесь набрать 30 очков хаоса")
	MisResultTalk("<t>Не теряйте голову в чеславии, одна победа - это не победа во всём, а только первый шаг на длиной слесгнице!")

	MisResultCondition(HasMission, 1114)
	MisResultCondition(NoRecord,1114)
	MisResultCondition(HasFightingPoint,30 )
	MisResultAction(TakeFightingPoint, 30 )
	MisResultAction(ClearMission, 1114)
	MisResultAction(SetRecord,  1114 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3028, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ГыЙщУўРЫ----------°Е°ЕА­	
	DefineMission (5609, "Кровавый Телец - почитаемый герой", 1115)
	
	MisBeginTalk("<t>Репутация - это очень важный пункт у каждого героя!")

	MisBeginCondition(NoMission,1115)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1115)
	MisBeginAction(AddMission,1115)
	MisCancelAction(ClearMission, 1115)
	
	MisNeed(MIS_NEED_DESP, "Получите 1000 репутации.")
	MisHelpTalk("<t>Вам необходимо помогать ученикам и тем самым получать репутацию.")
	MisResultTalk("<t>Я вижу, что Вам не в первой помогать людям.")

	MisResultCondition(HasMission, 1115)
	MisResultCondition(NoRecord,1115)
	MisResultCondition(HasCredit,1000 )
	MisResultAction(TakeCredit, 1000 )
	MisResultAction(ClearMission, 1115)
	MisResultAction(SetRecord,  1115 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3029, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------µИј¶УўРЫ----------°Е°ЕА­	
	DefineMission (5610, "Кровавый Телец(", 1116)
	
	MisBeginTalk("<t>Вы должны быть не ниже 55 уровня!")

	MisBeginCondition(NoMission,1116)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1116)
	MisBeginAction(AddMission,1116)
	MisCancelAction(ClearMission, 1116)
	
	MisNeed(MIS_NEED_DESP, "Получить 55 уровень.")
	MisHelpTalk("<t>55 уровень, не так и сложно его получить....")
	MisResultTalk("<t>Вы ростёте на глазах.")

	MisResultCondition(HasMission, 1116)
	MisResultCondition(NoRecord,1116)
	MisResultCondition(LvCheck, ">", 54 )
	MisResultAction(ClearMission, 1116)
	MisResultAction(SetRecord,  1116 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3030, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------ИЩУюУўРЫ----------°Е°ЕА­	
	DefineMission (5611, "Герой Чести Кровавого Тельца", 1117)
	
	MisBeginTalk("<t>Без Чести в наше время ни куда. У Вас должно быть 300 чести.")

	MisBeginCondition(NoMission,1117)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1117)
	MisBeginAction(AddMission,1117)
	MisCancelAction(ClearMission, 1117)
	
	MisNeed(MIS_NEED_DESP, "У Вас должно быть 300 чести")
	MisHelpTalk("<t>Выигрывайте в сражениях между игроками.")
	MisResultTalk("<t>Мои Вам поздравления.")

	MisResultCondition(HasMission, 1117)
	MisResultCondition(NoRecord,1117)
	MisResultCondition(HasHonorPoint,300 )
	MisResultAction(TakeHonorPoint, 300 )
	MisResultAction(ClearMission, 1117)
	MisResultAction(SetRecord,  1117 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3031, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ІЙјЇґуК№----------°Е°ЕА­	
	DefineMission (5612, "Посол Собрания Кровавого Тельца", 1118)
	
	MisBeginTalk("<t>Вам необходимо собрать Дань для Тельца.")

	MisBeginCondition(NoMission,1118)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(NoRecord,1118)
	MisBeginAction(AddMission,1118)
	MisBeginAction(AddTrigger, 11181, TE_GETITEM, 4804, 10 )---------------ґшґМµДВьНУВЮ»Ё10
	MisBeginAction(AddTrigger, 11182, TE_GETITEM, 4720, 10 )---------------ѕЮґуµДРЬХЖ10
	MisBeginAction(AddTrigger, 11183, TE_GETITEM, 3129, 10 )-------------Т©УГІЭТ¶10
	MisBeginAction(AddTrigger, 11184, TE_GETITEM, 2588, 5 )--------------ѕ«Бй»ФУЎ5ХЕ
	MisBeginAction(AddTrigger, 11185, TE_GETITEM, 4494, 1 )--------------ѕЮґуµДР·ЗЇ1ёц
	MisBeginAction(AddTrigger, 11186, TE_GETITEM, 1682, 50 )-------------И®іЭ50ёц
	MisBeginAction(AddTrigger, 11187, TE_GETITEM, 1138, 10 )--------------УДБйМЅІвЖчLV1  10ёц
	MisBeginAction(AddTrigger, 11188, TE_GETITEM, 0227, 1 )-------------КШ»¤ѕ«БйЛЗБП1ёц
	MisCancelAction(ClearMission, 1118)
	

	MisNeed(MIS_NEED_ITEM, 4804, 10, 1, 10 )
	MisNeed(MIS_NEED_ITEM, 4720, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 3129, 10, 21, 10 )
	MisNeed(MIS_NEED_ITEM, 2588, 5, 31, 5 )
	MisNeed(MIS_NEED_ITEM, 4494, 1, 36, 1 )
	MisNeed(MIS_NEED_ITEM, 1682, 50, 37, 50 )
	MisNeed(MIS_NEED_ITEM, 1138, 10, 87, 10 )
	MisNeed(MIS_NEED_ITEM, 0227, 1, 97, 1 )

	MisHelpTalk("<t>Что бы не злить богов им подают подношения в виде Дани и Жертвоприношений.")
	MisResultTalk("<t>Боги на Вашей стороне.")

	MisResultCondition(HasMission, 1118)
	MisResultCondition(NoRecord,1118)
	MisResultCondition(HasItem, 4804, 10 )
	MisResultCondition(HasItem, 4720, 10 )
	MisResultCondition(HasItem, 3129, 10 )
	MisResultCondition(HasItem, 2588, 5 )
	MisResultCondition(HasItem, 4494, 1 )
	MisResultCondition(HasItem, 1682, 50 )
	MisResultCondition(HasItem, 1138, 10 )
	MisResultCondition(HasItem, 0227, 1 )

	MisResultAction(TakeItem, 4804, 10 )
	MisResultAction(TakeItem, 4720, 10 )
	MisResultAction(TakeItem, 3129, 10 )
	MisResultAction(TakeItem, 2588, 5 )
	MisResultAction(TakeItem, 4494, 1 )
	MisResultAction(TakeItem, 1682, 50 )
	MisResultAction(TakeItem, 1138, 10 )
	MisResultAction(TakeItem, 0227, 1 )
	MisResultAction(ClearMission, 1118)
	MisResultAction(SetRecord,  1118 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3032, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3036, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4804)	
	TriggerAction( 1, AddNextFlag, 1118, 1, 10 )
	RegCurTrigger( 11181 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4720)	
	TriggerAction( 1, AddNextFlag, 1118, 11, 10 )
	RegCurTrigger( 11182 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 1118, 21, 10 )
	RegCurTrigger( 11183 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1118, 31, 5 )
	RegCurTrigger( 11184 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4494)	
	TriggerAction( 1, AddNextFlag, 1118, 36, 1 )
	RegCurTrigger( 11185 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1682)	
	TriggerAction( 1, AddNextFlag, 1118, 37, 50 )
	RegCurTrigger( 11186 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1138)	
	TriggerAction( 1, AddNextFlag, 1118, 87, 10 )
	RegCurTrigger( 11187 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1118, 97, 1 )
	RegCurTrigger( 11188 )


	----------------------------------------------------------ЅрЕЈД©ИХ----------°Е°ЕА­
	DefineMission( 5613, "Кровавый Телец - судный день Тельца", 1119 )
	MisBeginTalk("<t>Избавьте жителей от злого духа Тельца на острове Купидона")
				
	MisBeginCondition(NoMission, 1119)
	MisBeginCondition(HasRecord,1152)
	MisBeginCondition(NoRecord,1119)
	MisBeginAction(AddMission,1119)
	MisBeginAction(AddTrigger, 11191, TE_KILL, 1038, 1)---ЅрЕЈКШ»¤ХЯ
	
	MisCancelAction(ClearMission, 1119)

	MisNeed(MIS_NEED_DESP, "Убить Тельца на острове Купидона в точке(2436,2405)!")
	MisNeed(MIS_NEED_KILL, 1038,1, 10, 1)
	

	MisResultTalk("<t>Вы сильный Герой, если справились с таким серьёзным противником.")
	MisHelpTalk("<t>Отправляйтесь и спасите жителей острова Купидон.")
	MisResultCondition(HasMission,  1119)
	MisResultCondition(HasFlag, 1119, 10)
	MisResultCondition(NoRecord , 1119)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3034, 1, 4 )
	MisResultAction(ClearMission,  1119)
	MisResultAction(SetRecord,  1119 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1038)	
	TriggerAction( 1, AddNextFlag, 1119, 10, 1 )
	RegCurTrigger( 11191 )






-------------------------------------------------ВТ¶·УўРЫ----------°Е°ЕА­	
	DefineMission (5614, "Герой Хаоса Кровавого Тельца", 1120)
	
	MisBeginTalk("<t>Телец всегда был символом счастья.Настоящий Герой должен быть знаком с Хаосом")

	MisBeginCondition(NoMission,1120)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1120)
	MisBeginAction(AddMission,1120)
	MisCancelAction(ClearMission, 1120)
	
	MisNeed(MIS_NEED_DESP, "Посторайтесь набрать 60 очков хаоса")
	MisHelpTalk("<t>Посторайтесь набрать 60 очков хаоса")
	MisResultTalk("<t>Не теряйте голову от тщеславия, одна победа - это не победа во всём, а только первый шаг на длиной лестнице!")

	MisResultCondition(HasMission, 1120)
	MisResultCondition(NoRecord,1120)
	MisResultCondition(HasFightingPoint,60 )
	MisResultAction(TakeFightingPoint, 60 )
	MisResultAction(ClearMission, 1120)
	MisResultAction(SetRecord,  1120 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3028, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ГыЙщУўРЫ----------°Е°ЕА­	
	DefineMission (5615, "Кровавый Телец - почитаемый герой", 1121)
	
	MisBeginTalk("<t>Репутация - это очень важный пункт у каждого героя.")

	MisBeginCondition(NoMission,1121)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1121)
	MisBeginAction(AddMission,1121)
	MisCancelAction(ClearMission, 1121)
	
	MisNeed(MIS_NEED_DESP, "Получите 3000 репутации.")
	MisHelpTalk("<t>Получите 3000 репутации!")
	MisResultTalk("<t>Я вижу, что Вам не в первой помогать людям.")

	MisResultCondition(HasMission, 1121)
	MisResultCondition(NoRecord,1121)
	MisResultCondition(HasCredit,3000 )
	MisResultAction(TakeCredit,3000  )
	MisResultAction(ClearMission, 1121)
	MisResultAction(SetRecord,  1121 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3029, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------µИј¶УўРЫ----------°Е°ЕА­	
	DefineMission (5616, "Кровавый Телец Героя", 1122)
	
	MisBeginTalk("<t>Вы должны быть не ниже 60 уровня.")

	MisBeginCondition(NoMission,1122)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1122)
	MisBeginAction(AddMission,1122)
	MisCancelAction(ClearMission, 1122)
	
	MisNeed(MIS_NEED_DESP, "Получить 60 уроверь")
	MisHelpTalk("<t>60 уровень, не так и сложно его получить....")
	MisResultTalk("<t>Вы ростёте на глазах.")

	MisResultCondition(HasMission, 1122)
	MisResultCondition(NoRecord,1122)
	MisResultCondition(LvCheck, ">", 59 )
	MisResultAction(ClearMission, 1122)
	MisResultAction(SetRecord,  1122 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3030, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------ИЩУюУўРЫ----------°Е°ЕА­	
	DefineMission (5617, "Герой Чести Кровавого Тельца", 1123)
	
	MisBeginTalk("<t>Без Чести в наше время ни куда. У Вас должно быть 500 чести.")

	MisBeginCondition(NoMission,1123)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1123)
	MisBeginAction(AddMission,1123)
	MisCancelAction(ClearMission, 1123)
	
	MisNeed(MIS_NEED_DESP, "У Вас должно быть 500 чести")
	MisHelpTalk("<t>Выигрывайте в сражениях между игроками")
	MisResultTalk("<t>Мои Вам поздравления.")

	MisResultCondition(HasMission, 1123)
	MisResultCondition(NoRecord,1123)
	MisResultCondition(HasHonorPoint,500 )
	MisResultAction(TakeHonorPoint, 500 )
	MisResultAction(ClearMission, 1123)
	MisResultAction(SetRecord,  1123 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3031, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ІЙјЇґуК№----------°Е°ЕА­	
	DefineMission (5618, "Посол Собрания Кровавого Тельца", 1124)
	
	MisBeginTalk("<t>Вам необходимо собрать Дань для Тельца.")

	MisBeginCondition(NoMission,1124)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(NoRecord,1124)
	MisBeginAction(AddMission,1124)
	MisBeginAction(AddTrigger, 11241, TE_GETITEM, 4804, 15 )-------------------ґшґМµДВьНУВЮ»Ё15    
	MisBeginAction(AddTrigger, 11242, TE_GETITEM, 4720, 15 )-------------------ѕЮґуµДРЬХЖ15          
	MisBeginAction(AddTrigger, 11243, TE_GETITEM, 3129, 15 )-----------------Т©УГІЭТ¶15               
	MisBeginAction(AddTrigger, 11244, TE_GETITEM, 2588, 10 )----------------ѕ«Бй»ФУЎ10ХЕ               
	MisBeginAction(AddTrigger, 11245, TE_GETITEM, 4494, 1 )------------------ѕЮґуµДР·ЗЇ1ёц            
	MisBeginAction(AddTrigger, 11246, TE_GETITEM, 1682, 40 )-----------------И®іЭ40ёц                  
	MisBeginAction(AddTrigger, 11247, TE_GETITEM, 1138, 20 )------------------УДБйМЅІвЖчLV1  20ёц 
	MisBeginAction(AddTrigger, 11248, TE_GETITEM, 0227, 3 )---------------КШ»¤ѕ«БйЛЗБП3ёц          
	MisCancelAction(ClearMission, 1124)
	

	MisNeed(MIS_NEED_ITEM, 4804, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 4720, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 3129, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 2588, 10, 46, 10 )
	MisNeed(MIS_NEED_ITEM, 4494, 1, 56, 1 )
	MisNeed(MIS_NEED_ITEM, 1682, 40, 57, 40 )
	MisNeed(MIS_NEED_ITEM, 1138, 20, 97, 20 )
	MisNeed(MIS_NEED_ITEM, 0227, 3, 117, 3 )

	MisHelpTalk("<t>Что бы не злить богов им подают подношения в виде Дани и Жертвоприношений.")
	MisResultTalk("<t>Боги на Вашей стороне.")

	MisResultCondition(HasMission, 1124)
	MisResultCondition(NoRecord,1124)
	MisResultCondition(HasItem, 4804, 15 )
	MisResultCondition(HasItem, 4720, 15 )
	MisResultCondition(HasItem, 3129, 15 )
	MisResultCondition(HasItem, 2588, 10 )
	MisResultCondition(HasItem, 4494, 1 )
	MisResultCondition(HasItem, 1682, 40 )
	MisResultCondition(HasItem, 1138, 20 )
	MisResultCondition(HasItem, 0227, 3 )

	MisResultAction(TakeItem, 4804, 15 )
	MisResultAction(TakeItem, 4720, 15 )
	MisResultAction(TakeItem, 3129, 15 )
	MisResultAction(TakeItem, 2588, 10 )
	MisResultAction(TakeItem, 4494, 1 )
	MisResultAction(TakeItem, 1682, 40 )
	MisResultAction(TakeItem, 1138, 20 )
	MisResultAction(TakeItem, 0227, 3 )
	MisResultAction(ClearMission, 1124)
	MisResultAction(SetRecord,  1124 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3032, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3036, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4804)	
	TriggerAction( 1, AddNextFlag, 1124, 1, 15 )
	RegCurTrigger( 11241 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4720)	
	TriggerAction( 1, AddNextFlag, 1124, 16, 15 )
	RegCurTrigger( 11242 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 1124, 31, 15 )
	RegCurTrigger( 11243 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1124, 46, 10 )
	RegCurTrigger( 11244 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4494)	
	TriggerAction( 1, AddNextFlag, 1124, 56, 1 )
	RegCurTrigger( 11245 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1682)	
	TriggerAction( 1, AddNextFlag, 1124, 57, 40 )
	RegCurTrigger( 11246 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1138)	
	TriggerAction( 1, AddNextFlag, 1124, 97, 20 )
	RegCurTrigger( 11247 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1124, 117, 3 )
	RegCurTrigger( 11248 )

	



-------------------------------------------------ВТ¶·УўРЫ----------°Е°ЕА­	
	DefineMission (5619, "Герой Хаоса Кровавого Тельца", 1125)
	
	MisBeginTalk("<t>Телец всегда был символом счастья. Настоящий Герой должен быть знаком с Хаосом. ")

	MisBeginCondition(NoMission,1125)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1125)
	MisBeginAction(AddMission,1125)
	MisCancelAction(ClearMission, 1125)
	
	MisNeed(MIS_NEED_DESP, "Посторайтесь набрать 100 очков хаоса")
	MisHelpTalk("<t>Посторайтесь набрать 100 очков хаоса")
	MisResultTalk("<t>Не теряйте голову в тщеславия, одна победа - это не победа во всём, а только первый шаг на длиной лестнице!")

	MisResultCondition(HasMission, 1125)
	MisResultCondition(NoRecord,1125)
	MisResultCondition(HasFightingPoint,100 )
	MisResultAction(TakeFightingPoint, 100 )
	MisResultAction(ClearMission, 1125)
	MisResultAction(SetRecord,  1125 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3028, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ГыЙщУўРЫ----------°Е°ЕА­	
	DefineMission (5620, "Кровавый Телец - почитаемый герой", 1126)
	
	MisBeginTalk("<t>Репутация - это очень важный пункт у каждого героя.")

	MisBeginCondition(NoMission,1126)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1126)
	MisBeginAction(AddMission,1126)
	MisCancelAction(ClearMission, 1126)
	
	MisNeed(MIS_NEED_DESP, "Получите 5000 репутации")
	MisHelpTalk("<t>Вам необходимо помогать ученикам и тем самым получать репутацию")
	MisResultTalk("<t>Я вижу, что Вам не в первой помогать людям.")

	MisResultCondition(HasMission, 1126)
	MisResultCondition(NoRecord,1126)
	MisResultCondition(HasCredit,5000 )
	MisResultAction(TakeCredit, 5000 )
	MisResultAction(ClearMission, 1126)
	MisResultAction(SetRecord,  1126 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3029, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------µИј¶УўРЫ----------°Е°ЕА­	
	DefineMission (5621, "Кровавый Телец Героя", 1127)
	
	MisBeginTalk("<t>Вы должны быть не ниже 65 уровня")

	MisBeginCondition(NoMission,1127)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1127)
	MisBeginAction(AddMission,1127)
	MisCancelAction(ClearMission, 1127)
	
	MisNeed(MIS_NEED_DESP, "Получить 65 уровень")
	MisHelpTalk("<t>Получить 65 уровень....")
	MisResultTalk("<t>Вы ростёте на глазах.")

	MisResultCondition(HasMission, 1127)
	MisResultCondition(NoRecord,1127)
	MisResultCondition(LvCheck, ">", 64 )
	MisResultAction(ClearMission, 1127)
	MisResultAction(SetRecord,  1127 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3030, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------ИЩУюУўРЫ----------°Е°ЕА­	
	DefineMission (5622, "Герой Чести Кровавого Тельца", 1128)
	
	MisBeginTalk("<t>Без Чести в наше время ни куда. У Вас должно быть 800 чести.")

	MisBeginCondition(NoMission,1128)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1128)
	MisBeginAction(AddMission,1128)
	MisCancelAction(ClearMission, 1128)
	
	MisNeed(MIS_NEED_DESP, "У Вас должно быть 800 чести")
	MisHelpTalk("<t>Выигрывайте в сражениях между игроками")
	MisResultTalk("<t>Мои Вам поздравления!")

	MisResultCondition(HasMission, 1128)
	MisResultCondition(NoRecord,1128)
	MisResultCondition(HasHonorPoint,800 )
	MisResultAction(TakeHonorPoint, 800 )
	MisResultAction(ClearMission, 1128)
	MisResultAction(SetRecord,  1128 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3031, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ІЙјЇґуК№----------°Е°ЕА­	
	DefineMission (5623, "Посол Собрания Кровавого Тельца", 1129)
	
	MisBeginTalk("<t>Вам необходимо собрать Дань для Тельца.")

	MisBeginCondition(NoMission,1129)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(NoRecord,1129)
	MisBeginAction(AddMission,1129)
	MisBeginAction(AddTrigger, 11291, TE_GETITEM, 4804, 10 )---------------------ґшґМµДВьНУВЮ»Ё10    
	MisBeginAction(AddTrigger, 11292, TE_GETITEM, 4720, 10 )---------------------ѕЮґуµДРЬХЖ10          
	MisBeginAction(AddTrigger, 11293, TE_GETITEM, 3129, 10 )-------------------Т©УГІЭТ¶10               
	MisBeginAction(AddTrigger, 11294, TE_GETITEM, 2588, 15 )------------------ѕ«Бй»ФУЎ15ХЕ             
	MisBeginAction(AddTrigger, 11295, TE_GETITEM, 4494, 5 )--------------------ѕЮґуµДР·ЗЇ5ёц             
	MisBeginAction(AddTrigger, 11296, TE_GETITEM, 1682, 40 )-------------------И®іЭ40ёц                  
	MisBeginAction(AddTrigger, 11297, TE_GETITEM, 1138, 25 )--------------------УДБйМЅІвЖчLV1  25ёц 
	MisBeginAction(AddTrigger, 11298, TE_GETITEM, 0227, 5 )----------------------КШ»¤ѕ«БйЛЗБП5ёц            
	MisCancelAction(ClearMission, 1129)						                                     
	

	MisNeed(MIS_NEED_ITEM, 4804, 10, 1, 10 )
	MisNeed(MIS_NEED_ITEM, 4720, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 3129, 10, 21, 10 )
	MisNeed(MIS_NEED_ITEM, 2588, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 4494, 5, 46, 5)
	MisNeed(MIS_NEED_ITEM, 1682, 40, 51, 40 )
	MisNeed(MIS_NEED_ITEM, 1138, 25, 91, 25 )
	MisNeed(MIS_NEED_ITEM, 0227, 5, 116, 5 )

	MisHelpTalk("<t>Что бы не злить богов им подают подношения в виде Дани и Жертвоприношений")
	MisResultTalk("<t>Боги на Вашей стороне.")

	MisResultCondition(HasMission, 1129)
	MisResultCondition(NoRecord,1129)
	MisResultCondition(HasItem, 4804, 10 )
	MisResultCondition(HasItem, 4720, 10 )
	MisResultCondition(HasItem, 3129, 10 )
	MisResultCondition(HasItem, 2588, 15 )
	MisResultCondition(HasItem, 4494,  5 )
	MisResultCondition(HasItem, 1682, 40 )
	MisResultCondition(HasItem, 1138, 25 )
	MisResultCondition(HasItem, 0227, 5 )

	MisResultAction(TakeItem, 4804, 10 )
	MisResultAction(TakeItem, 4720, 10 )
	MisResultAction(TakeItem, 3129, 10 )
	MisResultAction(TakeItem, 2588, 15 )
	MisResultAction(TakeItem, 4494, 5 )
	MisResultAction(TakeItem, 1682, 40 )
	MisResultAction(TakeItem, 1138, 25 )
	MisResultAction(TakeItem, 0227, 5 )
	MisResultAction(ClearMission, 1129)
	MisResultAction(SetRecord,  1129 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3032, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3036, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4804)	
	TriggerAction( 1, AddNextFlag, 1129, 1, 10 )
	RegCurTrigger( 11291 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4720)	
	TriggerAction( 1, AddNextFlag, 1129, 11, 10 )
	RegCurTrigger( 11292 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3129)	
	TriggerAction( 1, AddNextFlag, 1129, 21, 10 )
	RegCurTrigger( 11293 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1129, 31, 15 )
	RegCurTrigger( 11294 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4494)	
	TriggerAction( 1, AddNextFlag, 1129, 46, 5 )
	RegCurTrigger( 11295 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1682)	
	TriggerAction( 1, AddNextFlag, 1129, 51, 40 )
	RegCurTrigger( 11296 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1138)	
	TriggerAction( 1, AddNextFlag, 1129, 91, 25 )
	RegCurTrigger( 11297 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0227)	
	TriggerAction( 1, AddNextFlag, 1129, 116, 5 )
	RegCurTrigger( 11298 )


	

	----------------------------------------------------------ЙзЅ»ґуК№----------°Е°ЕА­
	DefineMission( 5624, "Посол Собрания Кровавого Тельца", 1130 )
	MisBeginTalk("<t>Вам прийдётся побегать по всему миру, что бы получить разрешение")
				
	MisBeginCondition(NoMission, 1130)
	MisBeginCondition(NoRecord,1130)
	MisBeginCondition(HasRecord, 1152)-------------------РВµДid,ЧоєуµДid
	MisBeginAction(AddMission,1130)
	MisCancelAction(ClearMission, 1130)

	MisNeed(MIS_NEED_DESP, "Отправляйтесь в Аргент в точку (628,2095).")
	
	MisHelpTalk("<t>Не теряйте время на пустые разговоры")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№-----------------ЩђЎ¤Д§Б¦

	DefineMission(5625, "Посол мира", 1130, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вам нужно моё разрешение? Но я не имею права подписывать ни чего.")
	MisResultCondition(NoRecord, 1130)
	MisResultCondition(HasMission,1130)
	MisResultAction(ClearMission,1130)
	MisResultAction(SetRecord, 1130)

	----------------------------------------------------------ЙзЅ»ґуК№2----------ЩђЎ¤Д§Б¦
	DefineMission( 5626, "Посол мира 2", 1131 )
	MisBeginTalk("<t>Вам необходимо взять разрешение в Шайтане у Ады.")
				
	MisBeginCondition(NoMission, 1131)
	MisBeginCondition(NoRecord,1131)
	MisBeginCondition(HasRecord, 1130)
	MisBeginAction(AddMission,1131)
	MisCancelAction(ClearMission, 1131)

	MisNeed(MIS_NEED_DESP, "Отправляйтесь в Шайтан в точку (862,3303).")
	
	MisHelpTalk("<t>Не теряйте время на пустые разговоры")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№2-------------КҐЕ®Ў¤°¬ґп
	DefineMission(5627, "Посол мира 2", 1131, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы ко мне?")
	MisResultCondition(NoRecord, 1131)
	MisResultCondition(HasMission,1131)
	MisResultAction(ClearMission,1131)
	MisResultAction(SetRecord, 1131)

	----------------------------------------------------------ЙзЅ»ґуК№3----------КҐЕ®Ў¤°¬ґп
	DefineMission( 5628, "Посол мира 3", 1132 )
	MisBeginTalk("t>Очень хорошо! Но Вас не правильно информировали.")
				
	MisBeginCondition(NoMission, 1132)
	MisBeginCondition(NoRecord,1132)
	MisBeginCondition(HasRecord, 1131)
	MisBeginAction(AddMission,1132)
	MisCancelAction(ClearMission, 1132)

	MisNeed(MIS_NEED_DESP, "Отправляйтесь в Ледынь к Тэ в точку (2128,540).")
	
	MisHelpTalk("<t>Не теряйте время на пустые разговоры")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№3--------°ўМ©
	DefineMission(5629, "Посол мира 3", 1132, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Я не могу понять кто над Вами так злобно пошутил, ноя я точно не выдаю ни каких разрешений.")
	MisResultCondition(NoRecord, 1132)
	MisResultCondition(HasMission,1132)
	MisResultAction(ClearMission,1132)
	MisResultAction(SetRecord, 1132)



	----------------------------------------------------------ЙзЅ»ґуК№4----------°ўМ©
	DefineMission( 5630, "Посол мира 4", 1133 )
	MisBeginTalk("<t>Смех да и только. Но я же не смогу выдать Вам ни какого разрешения, даже если сам этого сильно захочу.")
				
	MisBeginCondition(NoMission, 1133)
	MisBeginCondition(NoRecord,1133)
	MisBeginCondition(HasRecord, 1132)
	MisBeginAction(AddMission,1133)
	MisCancelAction(ClearMission, 1133)

	MisNeed(MIS_NEED_DESP, "Отправляйтесь в Аргент(2277,2769).")
	
	MisHelpTalk("<t>Не теряйте время на пустые разговоры")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№4--------АПДМДМЎ¤±ґµЩ
	DefineMission(5631, "Посол мира 4", 1133, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Что? Так и сказал? Хахаха... Он ни когда не осмелиться выдать разрешение... Так где моя ручка?...")
	MisResultCondition(NoRecord, 1133)
	MisResultCondition(HasMission,1133)
	MisResultAction(ClearMission,1133)
	MisResultAction(SetRecord, 1133)


	----------------------------------------------------------ЙзЅ»ґуК№5----------АПДМДМЎ¤±ґµЩ
	DefineMission( 5632, "Посол мира 5", 1134 )
	MisBeginTalk("<t>Ну вот... Я бы подписал, но у меня потерялась ручка...")
				
	MisBeginCondition(NoMission, 1134)
	MisBeginCondition(NoRecord,1134)
	MisBeginCondition(HasRecord, 1133)
	MisBeginAction(AddMission,1134)
	MisCancelAction(ClearMission, 1134)

	MisNeed(MIS_NEED_DESP, "Возможно в точке(2519,2397) Вам подпишут. ")
	
	MisHelpTalk("<t>Не теряйте время на пустые разговоры.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№5--------Ѕ»ТЧФ±Ў¤УИїЁ
	DefineMission(5633, "Посол мира 5", 1134, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("Я боюсь пропустить хорошие вещи, как пить вино, но хорошая вещь бабушка все еще думает обо мне, ха-ха. Я очень скучаю едят торт бабушки, как я вырасту.")
	MisResultCondition(NoRecord, 1134)
	MisResultCondition(HasMission,1134)
	MisResultAction(ClearMission,1134)
	MisResultAction(SetRecord, 1134)


	----------------------------------------------------------ЙзЅ»ґуК№6----------Ѕ»ТЧФ±Ў¤УИїЁ
	DefineMission( 5634, "Посол мира 6", 1135 )
	MisBeginTalk("<t> Когда я съем все вкусняшки я отправлюсь в бар, надеюсь мой друг Оди тоже сможет придти.")
				
	MisBeginCondition(NoMission, 1135)
	MisBeginCondition(NoRecord,1135)
	MisBeginCondition(HasRecord, 1134)
	MisBeginAction(AddMission,1135)
	MisCancelAction(ClearMission, 1135)

	MisNeed(MIS_NEED_DESP, "Поговорить с оди (738, 3803)")
	
	MisHelpTalk("<t> Нет уверенности что Барбара самая красивая!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№6--------єЈёЫЦё»УЎ¤°ВµЗ
	DefineMission(5635, "Посол мира 6", 1135, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Для пьяного человека, пойти на свидание, удача!")
	MisResultCondition(NoRecord, 1135)
	MisResultCondition(HasMission,1135)
	MisResultAction(ClearMission,1135)
	MisResultAction(SetRecord, 1135)



	----------------------------------------------------------ЙзЅ»ґуК№7----------єЈёЫЦё»УЎ¤°ВµЗ
	DefineMission( 5636, "Посол мира 7", 1136 )
	MisBeginTalk("<t>Поговори с торговом кораллов - Ламоном, мне некогда... Срочно надо уйти в бар!")
				
	MisBeginCondition(NoMission, 1136)
	MisBeginCondition(NoRecord,1136)
	MisBeginCondition(HasRecord, 1135)
	MisBeginAction(AddMission,1136)
	MisCancelAction(ClearMission, 1136)

	MisNeed(MIS_NEED_DESP, "Поговорить с Ламоном по координатам (2061,2543)")
	
	MisHelpTalk("<t>Я всегда их выручаю, когда у них не остается денег что бы посидеть в баре!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№7--------±ґїЗЙМИЛЎ¤А­Д·
	DefineMission(5637, "Посол мира 7", 1136, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("Оди всегда был пьян не имея денег, я могу только использовать это, чтобы заставить его помочь мне.")
	MisResultCondition(NoRecord, 1136)
	MisResultCondition(HasMission,1136)
	MisResultAction(ClearMission,1136)
	MisResultAction(SetRecord, 1136)


	----------------------------------------------------------ЙзЅ»ґуК№8----------±ґїЗЙМИЛЎ¤А­Д·
	DefineMission( 5638, "Посол мира 8", 1137 )
	MisBeginTalk("<t>Почему вы смотрите на меня так? Все купцы поступают так!")
				
	MisBeginCondition(NoMission, 1137)
	MisBeginCondition(NoRecord,1137)
	MisBeginCondition(HasRecord, 1136)
	MisBeginAction(AddMission,1137)
	MisCancelAction(ClearMission, 1137)

	MisNeed(MIS_NEED_DESP, "Поговорить с Капитаном Джеком (1672, 3777) на о.Канареек")
	
	MisHelpTalk("<t>Потом не жалуйтесь! Что якобы я вам не говорил, что там опасно.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№8--------ЅЬїЛґ¬і¤
	DefineMission(5639, "Посол мира 8", 1137, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Я привык к тому что во круг меня много дам и ревнивых парней.")
	MisResultCondition(NoRecord, 1137)
	MisResultCondition(HasMission,1137)
	MisResultAction(ClearMission,1137)
	MisResultAction(SetRecord, 1137)


	----------------------------------------------------------ЙзЅ»ґуК№9----------ЅЬїЛґ¬і¤
	DefineMission( 5640, "Посол мира 9", 1138 )
	MisBeginTalk("<t>Знакомое имя шрам, я бы выпил пиво, но только с моим другом <bСеверный пират - Якомото>, может он что-то расскажет.")
				
	MisBeginCondition(NoMission, 1138)
	MisBeginCondition(NoRecord,1138)
	MisBeginCondition(HasRecord, 1137)
	MisBeginAction(AddMission,1138)
	MisCancelAction(ClearMission, 1138)

	MisNeed(MIS_NEED_DESP, "Ступайте на остров Осени и поговорите с Якомото (2221, 3285)")
	
	MisHelpTalk("<t>Якомото не когда не был против поделится своим опытом!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№9--------¶«·ЅєЈµБЎ¤БеЧфМпЙЅ
	DefineMission(5641, "Посол мира 9", 1138, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>  Я пират из далекой земли, которые только что узнали ваш язык. # # @ @ # $, я люблю этот красивый остров. & * &%, хм, но быть пиратом часто вводит в заблуждение. У меня были некоторые проблемы с Captain Jack, когда я впервые приехал сюда.")
	MisResultCondition(NoRecord, 1138)
	MisResultCondition(HasMission,1138)
	MisResultAction(ClearMission,1138)
	MisResultAction(SetRecord, 1138)

	----------------------------------------------------------ЙзЅ»ґуК№10----------¶«·ЅєЈµБЎ¤БеЧфМпЙЅ
	DefineMission( 5642, "Посол мира 10", 1139 )
	MisBeginTalk("<t>Джек остался такой же? Дайте время мне нужно обдумать это. Я думаю, я просто отправиться на рыбалку с моим другом Купцом Сакини")
				
	MisBeginCondition(NoMission, 1139)
	MisBeginCondition(NoRecord,1139)
	MisBeginCondition(HasRecord, 1138)
	MisBeginAction(AddMission,1139)
	MisCancelAction(ClearMission, 1139)

	MisNeed(MIS_NEED_DESP, "Поговорите с Купцом-Сакини по координатам  (2279, 1112)")
	
	MisHelpTalk("<t>Думаю, что я просто подожду Сакини")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№10--------Ѕ»ТЧФ±Ў¤ИьЙЄДб
	DefineMission(5643, "Посол мира 10", 1139, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Я очень люблю Северного Пирата-Якомото, особенно его романтические черты, и его внешний вид")
	MisResultCondition(NoRecord, 1139)
	MisResultCondition(HasMission,1139)
	MisResultAction(ClearMission,1139)
	MisResultAction(SetRecord, 1139)

	----------------------------------------------------------ЙзЅ»ґуК№11----------Ѕ»ТЧФ±Ў¤ИьЙЄДб
	DefineMission( 5644, "Посол мира 11", 1140 )
	MisBeginTalk("<t>Если Джек любит ходить в бар, то я пойду в море с Северным Пиратом-Якомото.")
				
	MisBeginCondition(NoMission, 1140)
	MisBeginCondition(NoRecord,1140)
	MisBeginCondition(HasRecord, 1139)
	MisBeginAction(AddMission,1140)
	MisCancelAction(ClearMission, 1140)

	MisNeed(MIS_NEED_DESP, "Поговорите с Хем (826, 3347) в Старом городе Шайтан")
	
	MisHelpTalk("<t> Пожалуйста, не учите плохим вещам детей.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№11--------єєД·
	DefineMission(5645, "Посол мира 11", 1140, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Дети не должны идти в бар, но для некоторых есть исключение.")
	MisResultCondition(NoRecord, 1140)
	MisResultCondition(HasMission,1140)
	MisResultAction(ClearMission,1140)
	MisResultAction(SetRecord, 1140)

	----------------------------------------------------------ЙзЅ»ґуК№12----------єєД·
	DefineMission( 5646, "Посол мира 12", 1141 )
	MisBeginTalk("<t>Господа не будет наслаждаться вином, это мое правило. Я собираюсь позвонить моему другу Зурби.")
				
	MisBeginCondition(NoMission, 1141)
	MisBeginCondition(NoRecord,1141)
	MisBeginCondition(HasRecord, 1140)
	MisBeginAction(AddMission,1141)
	MisCancelAction(ClearMission, 1141)

	MisNeed(MIS_NEED_DESP, "Поговорите с Зурби (1037, 671) в бухте Атлантиса")
	
	MisHelpTalk("<t>Я никогда раньше не ходил в бар,  удостоверение  личности что бы пройти.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№12--------Цм±И
	DefineMission(5647, "Посол мира 12", 1141, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Чтобы говорить правду, каждый раз Хэм придает предложению,большое значение. Однако из-за этого я ругаюсь с мамой каждый раз.")
	MisResultCondition(NoRecord, 1141)
	MisResultCondition(HasMission,1141)
	MisResultAction(ClearMission,1141)
	MisResultAction(SetRecord, 1141)


	----------------------------------------------------------ЙзЅ»ґуК№13----------Цм±И
	DefineMission( 5648, "Посол мира 13", 1142 )
	MisBeginTalk("<t>Хотя я поклялся никогда не слушать свои предложения еще раз, я все таки собрался в бар,  моя цель стать зрелым,так что хе-хе, если вы будете проходить мимо Андейский лес пожалуйста спросите у Рики есть ли у него красивые кольца ")
				
	MisBeginCondition(NoMission, 1142)
	MisBeginCondition(NoRecord,1142)
	MisBeginCondition(HasRecord, 1141)
	MisBeginAction(AddMission,1142)
	MisCancelAction(ClearMission, 1142)

	MisNeed(MIS_NEED_DESP, "Поговорите с - Рикки (996, 2969) в Андейском лесу")
	
	MisHelpTalk("<t>Рикки имеет острый глаз, глядя на ювелирные изделия. Когда я была маленькой, моя мама всегда приходила туда, чтобы купить ювелирные изделия.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№13--------КОЖ·ЙМИЛЎ¤АпїЛ
	DefineMission(5649, "Посол мира 13", 1142, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Продажа кольца, чтобы пойти в бар?")
	MisResultCondition(NoRecord, 1142)
	MisResultCondition(HasMission,1142)
	MisResultAction(ClearMission,1142)
	MisResultAction(SetRecord, 1142)

	----------------------------------------------------------ЙзЅ»ґуК№14----------КОЖ·ЙМИЛЎ¤АпїЛ
	DefineMission( 5650, "Посол мира 14", 1143 )
	MisBeginTalk("<t>Вспоминая когда я был молод, я встретил пирата Джереми, и наша дружба стала очень крепкой. Благодаря помощи Джереми мой бизнес стал настолько успешным. Если вы можете идти на остров отверженных  передайте мои поздравления ему")
				
	MisBeginCondition(NoMission, 1143)
	MisBeginCondition(NoRecord,1143)
	MisBeginCondition(HasRecord, 1142)
	MisBeginAction(AddMission,1143)
	MisCancelAction(ClearMission, 1143)

	MisNeed(MIS_NEED_DESP, "Поговорите с Пиратом Джереми (2362, 657)")
	
	MisHelpTalk("Остров Отверженных находится в регионе Магический океан.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№14--------єЈµБЅЬАпГЧ        
	DefineMission(5651, "Посол мира 14", 1143, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Ха-ха, это был мой первый раз, идя в бар. Я помню то время я был только крошечный пират, и я пил, чтобы сделать себя более храбрыми во время плавания в море.")
	MisResultCondition(NoRecord, 1143)
	MisResultCondition(HasMission,1143)
	MisResultAction(ClearMission,1143)
	MisResultAction(SetRecord, 1143)

	----------------------------------------------------------ЙзЅ»ґуК№15----------єЈµБЅЬАпГЧ
	DefineMission( 5652, "Посол мира 15", 1144 )
	MisBeginTalk("<t>Это напоминает мне, как я хотел вступить в пиратскую группу Лесси. Но я был слишком мал. Нужно пить ром что бы быть смелее.")
				
	MisBeginCondition(NoMission, 1144)
	MisBeginCondition(NoRecord,1144)
	MisBeginCondition(HasRecord, 1143)
	MisBeginAction(AddMission,1144)
	MisCancelAction(ClearMission, 1144)

	MisNeed(MIS_NEED_DESP, "Поговорите с Лесси (1379, 612) в Ледыне.")
	
	MisHelpTalk("<t> Я тебя прошу, любить его")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№15-------- АЧЛ№Ў¤РЎіж
	DefineMission(5653, "Посол мира 15", 1144, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Я хочу стать как Золотой пират Хакинсон")
	MisResultCondition(NoRecord, 1144)
	MisResultCondition(HasMission,1144)
	MisResultAction(ClearMission,1144)
	MisResultAction(SetRecord, 1144)


	----------------------------------------------------------ЙзЅ»ґуК№16----------АЧЛ№Ў¤РЎіж
	DefineMission( 5654, "Посол мира 16", 1145 )
	MisBeginTalk("<t>Для достижения моей мечты, я думаю, что я должен начать учиться плавать,владеть мечом и управлять лодкой. Я думаю диспетчер порта Вайткомби может мне помочь научится управлять лодкой")
				
	MisBeginCondition(NoMission, 1145)
	MisBeginCondition(NoRecord,1145)
	MisBeginCondition(HasRecord, 1144)
	MisBeginAction(AddMission,1145)
	MisCancelAction(ClearMission, 1145)

	MisNeed(MIS_NEED_DESP, "Поговорите с диспетчер порта Вайткомби (2041, 1355)")
	
	MisHelpTalk("<t>Я очень упрямый человек, для восстановления мира в море и торговли, я готов стать пиратом.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№16-------- єЈёЫЦё»УЎ¤НЯАЧГЧ
	DefineMission(5655, "Посол мира 16", 1145, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Он хочет узнать как управлять лодкой от меня? Ха-ха,  мои навыки управления лодкой извеснны всем.")
	MisResultCondition(NoRecord, 1145)
	MisResultCondition(HasMission,1145)
	MisResultAction(ClearMission,1145)
	MisResultAction(SetRecord, 1145)


	----------------------------------------------------------ЙзЅ»ґуК№17----------єЈёЫЦё»УЎ¤НЯАЧГЧ
	DefineMission( 5656, "Посол мира 17", 1146 )
	MisBeginTalk("<t> В бар я больше не нагой! Там очень смутная обстановка и очень много чужеземцев... Поговорите с Солари. Он собирается в открытый океан... Поговорите с ним у него должно быть лишнее место.")
				
	MisBeginCondition(NoMission, 1146)
	MisBeginCondition(NoRecord,1146)
	MisBeginCondition(HasRecord, 1145)
	MisBeginAction(AddMission,1146)
	MisCancelAction(ClearMission, 1146)

	MisNeed(MIS_NEED_DESP, "Поговорить с Солари (1202, 3179) в Гавани Бабу")
	
	MisHelpTalk("<t>Солари мальчик полон страсти, поговори с ним")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№17-------- ЛчА­Д·Ў¤ИшјУ
	DefineMission(5657, "Посол мира 17", 1146, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Я человек, который готов отказаться от жизни только своей мечты и приключений!")
	MisResultCondition(NoRecord, 1146)
	MisResultCondition(HasMission,1146)
	MisResultAction(ClearMission,1146)
	MisResultAction(SetRecord, 1146)

	----------------------------------------------------------ЙзЅ»ґуК№18----------ЛчА­Д·Ў¤ИшјУ
	DefineMission( 5658, "Посол мира 18", 1147 )
	MisBeginTalk("<t>Я ухожу, если вы хотите что то узнать, давайте быстрее. Бар? Замечательно место что бы выпить с друзьями. У меня маленькая просьба, передайте Римусу что к его порту подъехало много продавцов, а также скажите ему спасибо.")
				
	MisBeginCondition(NoMission, 1147)
	MisBeginCondition(NoRecord,1147)
	MisBeginCondition(HasRecord, 1146)
	MisBeginAction(AddMission,1147)
	MisCancelAction(ClearMission, 1147)

	MisNeed(MIS_NEED_DESP, "Поговорить с Диспетчером порта - Римусом (2297, 3723)")
	
	MisHelpTalk("<t>Почему вы так смотрите на меня? Я молодой человек с страстью в глазах.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№18-------- єЈёЫЦё»УЎ¤А­ГЧРЮ
	DefineMission(5659, "Посол мира 18", 1147, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Спасибо вам за письмо. Вы хотите остаться здесь и быть моим помощником?")
	MisResultCondition(NoRecord, 1147)
	MisResultCondition(HasMission,1147)
	MisResultAction(ClearMission,1147)
	MisResultAction(SetRecord, 1147)

	----------------------------------------------------------ЙзЅ»ґуК№19----------єЈёЫЦё»УЎ¤А­ГЧРЮ
	DefineMission( 5660, "Посол мира 19", 1148 )
	MisBeginTalk("<t>Оператор порта высокого ранга заняты работой. Говоря о занятости я не видел милую  Элизабет некоторое время, я думаю, ее стиль все тот же.")
				
	MisBeginCondition(NoMission, 1148)
	MisBeginCondition(NoRecord,1148)
	MisBeginCondition(HasRecord, 1147)
	MisBeginAction(AddMission,1148)
	MisCancelAction(ClearMission, 1148)

	MisNeed(MIS_NEED_DESP, "Посмотрите на Элизабет в Заливе сокровище (616, 965)")
	
	MisHelpTalk("<t>Когда Элизабет была маленькой, она была красива. ")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№19-------- ТБАцЙЇ°Ч
	DefineMission(5661, "Посол мира 19", 1148, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Ожидание для одного человека это очень болезненно и одиноко, но мне нравится мое положение основанное на страсти. ")
	MisResultCondition(NoRecord, 1148)
	MisResultCondition(HasMission,1148)
	MisResultAction(ClearMission,1148)
	MisResultAction(SetRecord, 1148)


		----------------------------------------------------------ЙзЅ»ґуК№20----------ТБАцЙЇ°Ч
	DefineMission( 5662, "Посол мира 20", 1149 )
	MisBeginTalk("<t> Я всегда засматриваюсь на красивые побрякушки и тут я увидел у Шахтера - Дранке изумруд. Он отказался мне его продавать, поговорите с ним. Я хочу его купить")
				
	MisBeginCondition(NoMission, 1149)
	MisBeginCondition(NoRecord,1149)
	MisBeginCondition(HasRecord, 1148)
	MisBeginAction(AddMission,1149)
	MisCancelAction(ClearMission, 1149)

	MisNeed(MIS_NEED_DESP, "Поговорить с Шахтером - Дранке (296, 57) в Серебреной Шахте 2")
	
	MisHelpTalk("???")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№20-------- їу№¤ґу¶Зло
	DefineMission(5663, "Посол мира 20", 1149, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Выдающихся людей должны быть замечательные вещи, женщинам нравится это.")
	MisResultCondition(NoRecord, 1149)
	MisResultCondition(HasMission,1149)
	MisResultAction(ClearMission,1149)
	MisResultAction(SetRecord, 1149)

		----------------------------------------------------------ЙзЅ»ґуК№21----------їу№¤ґу¶Зло
	DefineMission( 5664, "Посол мира 21", 1150 )
	MisBeginTalk("Вы закончили ознакомление с миром 'Пиартии'. Я слышал <bОфициантка - Барбара> ищет тебя.")
				
	MisBeginCondition(NoMission, 1150)
	MisBeginCondition(NoRecord,1150)
	MisBeginCondition(HasRecord, 1149)
	MisBeginAction(AddMission,1150)
	MisCancelAction(ClearMission, 1150)

	MisNeed(MIS_NEED_DESP, "Поговорить с Барбарой (1310, 530)")
	
	MisHelpTalk("<t>У Барбары есть для тебя подарок")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»УўРЫ21------- °Е°ЕА­
	DefineMission(5667, "Главный герой 21", 1150, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("Вы прошли все задания, вот ваша эмблема!")
	MisResultCondition(NoRecord, 1150)
	MisResultCondition(HasMission,1150)
	MisResultAction(ClearMission,1150)
	MisResultAction(SetRecord, 1150)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3033, 1, 4)
	MisResultBagNeed(1)

--	-------------------------------------------------МШ±рИООс	--------°Е°ЕА­
--	DefineMission (5668, "Blood Shed Taurus Special Operation", 1153)
--	
--	MisBeginTalk("<t>This quest is Taurus Special Operation, you don't have to participate if you don't want to, but you don't get the prize. Sail to <b Aerase Haven and talk to Harbor Operator - Buni (2042, 6351) in 10 minutes>")
--
--	MisBeginCondition(NoMission,1153)
--	MisBeginCondition(NoRecord,1153)
--	MisBeginCondition(HasRecord,1113)
--	MisBeginCondition(HasRecord,1114)
--	MisBeginCondition(HasRecord,1115)
--	MisBeginCondition(HasRecord,1116)
--	MisBeginCondition(HasRecord,1117)
--	MisBeginCondition(HasRecord,1118)
--	MisBeginCondition(HasRecord,1150)
--	MisBeginCondition(HasRecord,1119)
--	MisBeginAction(AddMission,1153)
--	MisBeginAction(AddChaItem3, 2952)---------ЅрЕЈМШ±рРР¶ЇїЁ
--	MisCancelAction(ClearMission, 1153)
--	MisBeginBagNeed(1)
--	
--	MisNeed(MIS_NEED_DESP, "Sail to Aerase Haven and talk to Harbor Operator - Buni (2042, 635)")
--	MisHelpTalk("<t>Go now! You only have 15 minutes")
--
--	MisResultCondition(AlwaysFailure)	
--
--	--------------------------------------МШ±рИООс----єЈёЫЦё»УЎ¤ІјЕ¦
--
--	DefineMission(5669, "Blood Shed Taurus Special Operation", 1153, COMPLETE_SHOW )
--	
--	MisBeginCondition(AlwaysFailure )
--
--	MisResultTalk("<t>Not too bad, you will not regret it.")
--	MisResultCondition(HasMission, 1153)
--	MisResultCondition(NoRecord,1153)
--	MisResultAction(AddChaItem5, 2952)----МШ±рРР¶ЇїЁ
--	MisResultAction(ClearMission, 1153)
--	MisResultAction(SetRecord,  1153 )
--	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3035, 1, 4)------------ЅрЕЈґ¬і¤їбЧ°±¦Пд
--	MisResultBagNeed(1)
	
---------------------------------------------------МШ±рИООс	--------°Е°ЕА­
--	DefineMission (5673, "Blood Shed Taurus Special Operation", 1159)
--	
--	MisBeginTalk("<t>This quest is Taurus Special Operation, you don't have to participate if you don't want to, but you don't get the prize. Sail to <b Aerase Haven and talk to Harbor Operator - Buni (2042, 6351) in 10 minutes>")
--
--	MisBeginCondition(NoMission,1159)
--	MisBeginCondition(NoRecord,1159)
--	MisBeginCondition(HasRecord,1112)
--	MisBeginCondition(HasRecord,1120)
--	MisBeginCondition(HasRecord,1121)
--	MisBeginCondition(HasRecord,1122)
--	MisBeginCondition(HasRecord,1123)
--	MisBeginCondition(HasRecord,1124)
--	MisBeginCondition(HasRecord,1150)
--	MisBeginCondition(HasRecord,1119)
--	MisBeginAction(AddMission,1159)
--	MisBeginAction(AddChaItem3, 2952)---------ЅрЕЈМШ±рРР¶ЇїЁ
--	MisCancelAction(ClearMission, 1159)
--	MisBeginBagNeed(1)
--	
--	MisNeed(MIS_NEED_DESP, "Sail to Aerase Haven and talk to Harbor Operator - Buni (2042, 635)")
--	MisHelpTalk("<t>Go now! You only have 15 minutes")
--
--	MisResultCondition(AlwaysFailure)	
--
--	--------------------------------------МШ±рИООс----єЈёЫЦё»УЎ¤ІјЕ¦
--
--	DefineMission(5674, "Blood Shed Taurus Special Operation", 1159, COMPLETE_SHOW )
--	
--	MisBeginCondition(AlwaysFailure )
--
--	MisResultTalk("<t>Not too bad, you will not regret it.")
--	MisResultCondition(HasMission, 1159)
--	MisResultCondition(NoRecord,1159)
--	MisResultAction(AddChaItem5, 2952)----МШ±рРР¶ЇїЁ
--	MisResultAction(ClearMission, 1159)
--	MisResultAction(SetRecord,  1159 )
--	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3035, 1, 4)------------ЅрЕЈґ¬і¤їбЧ°±¦Пд
--	MisResultBagNeed(1)
--	
-------------------------------------------------МШ±рИООс	--------°Е°ЕА­
	DefineMission (5675, "Специальная операция кроваввого тельца", 1160)
	
	MisBeginTalk("<t>Это задание дворца Тельцов специальные мероприятия.Вы можете не выполнять это задание но тогда вы не получите награды.")

	MisBeginCondition(NoMission,1160)
	MisBeginCondition(NoRecord,1160)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(HasRecord,1125)
	MisBeginCondition(HasRecord,1126)
	MisBeginCondition(HasRecord,1127)
	MisBeginCondition(HasRecord,1128)
	MisBeginCondition(HasRecord,1129)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginAction(AddMission,1160)
	MisBeginAction(AddChaItem3, 2952)---------ЅрЕЈМШ±рРР¶ЇїЁ
	MisCancelAction(ClearMission, 1160)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "Поговорите с Джеком по координатам (230, 579)")
	MisHelpTalk("<t>Спешите  у вас есть только 7 минут")

	MisResultCondition(AlwaysFailure)	

	--------------------------------------МШ±рИООс----ЅЬїЛК·ЕЙВЮ

	DefineMission(5676, "Специальная операция кроваввого тельца", 1160, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Вы осмелились бросить вызов острову скелетов?")
	MisResultCondition(HasMission, 1160)
	MisResultCondition(NoRecord,1160)
	MisResultAction(AddChaItem5, 2952)----МШ±рРР¶ЇїЁ
	MisResultAction(ClearMission, 1160)
	MisResultAction(SetRecord,  1160 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3035, 1, 4)------------ЅрЕЈґ¬і¤їбЧ°±¦Пд
	MisResultBagNeed(1)
	


-------------------------------------------------ЅрЕЈЦ®Л®КЦ№э№ШЅ±Аш----------°Е°ЕА­	
	DefineMission (5670, "Приз за победу над Моряком Тельца", 1156)
	
	MisBeginTalk("<t>Соберите все 7 знаков тельца и я их обменяю  на свиток стражи тельца и билет к воротам близнецов")

	MisBeginCondition(NoMission,1156)
	MisBeginCondition(HasRecord,1111)
	MisBeginCondition(HasRecord,1114)
	MisBeginCondition(HasRecord,1115)
	MisBeginCondition(HasRecord,1116)
	MisBeginCondition(HasRecord,1117)
	MisBeginCondition(HasRecord,1118)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginCondition(NoRecord,1156)
	MisBeginAction(AddMission,1156)  
	MisBeginAction(AddTrigger, 11561, TE_GETITEM, 3028, 1 )		
	MisBeginAction(AddTrigger, 11562, TE_GETITEM, 3029, 1 )		
	MisBeginAction(AddTrigger, 11563, TE_GETITEM, 3030, 1 )		
 	MisBeginAction(AddTrigger, 11564, TE_GETITEM, 3031, 1 )		
	MisBeginAction(AddTrigger, 11565, TE_GETITEM, 3032, 1 )		
	MisBeginAction(AddTrigger, 11566, TE_GETITEM, 3033, 1 )		
	MisBeginAction(AddTrigger, 11567, TE_GETITEM, 3034, 1 )	
	MisCancelAction(ClearMission, 1156)						                                     
	
	MisNeed(MIS_NEED_ITEM, 3028, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 3029, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3030, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 3031, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 3032, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3033, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 3034, 1, 70, 1 )
	
	MisHelpTalk("<t>Что вы еще ждете? Если у вас есть все части я готов обменять их прямо сейчас.")
	MisResultTalk("<t>Следующий дворец близнецов, там вас ждут более интересные задания и призы.")

	MisResultCondition(HasMission, 1156)
	MisResultCondition(NoRecord,1156)
	MisResultCondition(HasItem, 3028, 1 )
	MisResultCondition(HasItem, 3029, 1 )
	MisResultCondition(HasItem, 3030, 1 )
	MisResultCondition(HasItem, 3031, 1 )
	MisResultCondition(HasItem, 3032, 1 )
	MisResultCondition(HasItem, 3033, 1 )
	MisResultCondition(HasItem, 3034, 1 )

	MisResultAction(TakeItem, 3028, 1 )
	MisResultAction(TakeItem, 3029, 1 )
	MisResultAction(TakeItem, 3030, 1 )
	MisResultAction(TakeItem, 3031, 1 )
	MisResultAction(TakeItem, 3032, 1 )
	MisResultAction(TakeItem, 3033, 1 )
	MisResultAction(TakeItem, 3034, 1 )

	MisResultAction(ClearMission, 1156)
	MisResultAction(SetRecord,  1156 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3026, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3027, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 0227, 10, 4)
	MisResultAction(AddMoney,100000,100000)
	MisResultAction(JINNiuSS)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3028)	
	TriggerAction( 1, AddNextFlag, 1156, 10, 1 )
	RegCurTrigger( 11561 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3029)	
	TriggerAction( 1, AddNextFlag, 1156, 20, 1 )
	RegCurTrigger( 11562 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3030)	
	TriggerAction( 1, AddNextFlag, 1156, 30, 1 )
	RegCurTrigger( 11563 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3031)	
	TriggerAction( 1, AddNextFlag, 1156, 40, 1 )
	RegCurTrigger( 11564 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3032)	
	TriggerAction( 1, AddNextFlag, 1156, 50, 1 )
	RegCurTrigger( 11565 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3033)	
	TriggerAction( 1, AddNextFlag, 1156, 60, 1 )
	RegCurTrigger( 11566 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3034)	
	TriggerAction( 1, AddNextFlag, 1156, 70, 1 )
	RegCurTrigger( 11567 )
----------------------------------------------ЅрЕЈЦ®єЈµБ№э№ШЅ±Аш----------°Е°ЕА­	
	DefineMission (5671, "Приз за победу над Пиратом Тельца", 1157)
	
	MisBeginTalk("<t>Соберите все 7 знаков тельца и я их обменяю  на свиток стражи тельца и билет к воротам близнецов")

	MisBeginCondition(NoMission,1157)
	MisBeginCondition(HasRecord,1112)
	MisBeginCondition(HasRecord,1120)
	MisBeginCondition(HasRecord,1121)
	MisBeginCondition(HasRecord,1122)
	MisBeginCondition(HasRecord,1123)
	MisBeginCondition(HasRecord,1124)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginCondition(NoRecord,1157)
	MisBeginAction(AddMission,1157)
	MisBeginAction(AddTrigger, 11571, TE_GETITEM, 3028, 1 )		
	MisBeginAction(AddTrigger, 11572, TE_GETITEM, 3029, 1 )		
	MisBeginAction(AddTrigger, 11573, TE_GETITEM, 3030, 1 )		
 	MisBeginAction(AddTrigger, 11574, TE_GETITEM, 3031, 1 )		
	MisBeginAction(AddTrigger, 11575, TE_GETITEM, 3032, 1 )		
	MisBeginAction(AddTrigger, 11576, TE_GETITEM, 3033, 1 )		
	MisBeginAction(AddTrigger, 11577, TE_GETITEM, 3034, 1 )		
	MisCancelAction(ClearMission, 1157)						                                     
	
	MisNeed(MIS_NEED_ITEM, 3028, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 3029, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3030, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 3031, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 3032, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3033, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 3034, 1, 70, 1 )
	
	MisHelpTalk("<t>Что вы еще ждете? Если у вас есть все части я готов обменять их прямо сейчас.")
	MisResultTalk("<t>Следующий дворец близнецов, там вас ждут более интересные задания и призы.")

	MisResultCondition(HasMission, 1157)
	MisResultCondition(NoRecord,1157)
	MisResultCondition(HasItem, 3028, 1 )
	MisResultCondition(HasItem, 3029, 1 )
	MisResultCondition(HasItem, 3030, 1 )
	MisResultCondition(HasItem, 3031, 1 )
	MisResultCondition(HasItem, 3032, 1 )
	MisResultCondition(HasItem, 3033, 1 )
	MisResultCondition(HasItem, 3034, 1 )

	MisResultAction(TakeItem, 3028, 1 )
	MisResultAction(TakeItem, 3029, 1 )
	MisResultAction(TakeItem, 3030, 1 )
	MisResultAction(TakeItem, 3031, 1 )
	MisResultAction(TakeItem, 3032, 1 )
	MisResultAction(TakeItem, 3033, 1 )
	MisResultAction(TakeItem, 3034, 1 )

	MisResultAction(ClearMission, 1157)
	MisResultAction(SetRecord,  1157 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3026, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3027, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 0227, 20, 4)
	MisResultAction(AddMoney,200000,200000)
	MisResultAction(JINNiuHD)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3028)	
	TriggerAction( 1, AddNextFlag, 1157, 10, 1 )
	RegCurTrigger( 11571 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3029)	
	TriggerAction( 1, AddNextFlag, 1157, 20, 1 )
	RegCurTrigger( 11572 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3030)	
	TriggerAction( 1, AddNextFlag, 1157, 30, 1 )
	RegCurTrigger( 11573 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3031)	
	TriggerAction( 1, AddNextFlag, 1157, 40, 1 )
	RegCurTrigger( 11574 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3032)	
	TriggerAction( 1, AddNextFlag, 1157, 50, 1 )
	RegCurTrigger( 11575 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3033)	
	TriggerAction( 1, AddNextFlag, 1157, 60, 1 )
	RegCurTrigger( 11576 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3034)	
	TriggerAction( 1, AddNextFlag, 1157, 70, 1 )
	RegCurTrigger( 11577 )

	---------------------------------------------ЅрЕЈЦ®ґ¬і¤№э№ШЅ±Аш----------°Е°ЕА­	
	DefineMission (5672, "Приз за победу над Капитаном Тельца", 1158)
	
	MisBeginTalk("<t>Соберите все 7 знаков тельца и я их обменяю  на свиток стражи тельца и билет к воротам близнецов")

	MisBeginCondition(NoMission,1158)
	MisBeginCondition(HasRecord,1113)
	MisBeginCondition(HasRecord,1125)
	MisBeginCondition(HasRecord,1126)
	MisBeginCondition(HasRecord,1127)
	MisBeginCondition(HasRecord,1128)
	MisBeginCondition(HasRecord,1129)
	MisBeginCondition(HasRecord,1150)
	MisBeginCondition(HasRecord,1119)
	MisBeginCondition(NoRecord,1158)
	MisBeginAction(AddMission,1158)   
	MisBeginAction(AddTrigger, 11581, TE_GETITEM, 3028, 1 )		
	MisBeginAction(AddTrigger, 11582, TE_GETITEM, 3029, 1 )		
	MisBeginAction(AddTrigger, 11583, TE_GETITEM, 3030, 1 )		
 	MisBeginAction(AddTrigger, 11584, TE_GETITEM, 3031, 1 )		
	MisBeginAction(AddTrigger, 11585, TE_GETITEM, 3032, 1 )		
	MisBeginAction(AddTrigger, 11586, TE_GETITEM, 3033, 1 )		
	MisBeginAction(AddTrigger, 11587, TE_GETITEM, 3034, 1 )	
	MisCancelAction(ClearMission, 1158)						                                     
	
	MisNeed(MIS_NEED_ITEM, 3028, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 3029, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 3030, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 3031, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 3032, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3033, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 3034, 1, 70, 1 )
	
	MisHelpTalk("<t>Что вы еще ждете? Если у вас есть все части я готов обменять их прямо сейчас.")
	MisResultTalk("<t>Следующий дворец близнецов, там вас ждут более интересные задания и призы.")

	MisResultCondition(HasMission, 1158)
	MisResultCondition(NoRecord,1158)
	MisResultCondition(HasItem, 3028, 1 )
	MisResultCondition(HasItem, 3029, 1 )
	MisResultCondition(HasItem, 3030, 1 )
	MisResultCondition(HasItem, 3031, 1 )
	MisResultCondition(HasItem, 3032, 1 )
	MisResultCondition(HasItem, 3033, 1 )
	MisResultCondition(HasItem, 3034, 1 )

	MisResultAction(TakeItem, 3028, 1 )
	MisResultAction(TakeItem, 3029, 1 )
	MisResultAction(TakeItem, 3030, 1 )
	MisResultAction(TakeItem, 3031, 1 )
	MisResultAction(TakeItem, 3032, 1 )
	MisResultAction(TakeItem, 3033, 1 )
	MisResultAction(TakeItem, 3034, 1 )

	MisResultAction(ClearMission, 1158)
	MisResultAction(SetRecord,  1158 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3026, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3027, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 0227, 30, 4)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(JINNiuCZ)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3028)	
	TriggerAction( 1, AddNextFlag, 1158, 10, 1 )
	RegCurTrigger( 11581 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3029)	
	TriggerAction( 1, AddNextFlag, 1158, 20, 1 )
	RegCurTrigger( 11582 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3030)	
	TriggerAction( 1, AddNextFlag, 1158, 30, 1 )
	RegCurTrigger( 11583 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3031)	
	TriggerAction( 1, AddNextFlag, 1158, 40, 1 )
	RegCurTrigger( 11584 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3032)	
	TriggerAction( 1, AddNextFlag, 1158, 50, 1 )
	RegCurTrigger( 11585 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3033)	
	TriggerAction( 1, AddNextFlag, 1158, 60, 1 )
	RegCurTrigger( 11586 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3034)	
	TriggerAction( 1, AddNextFlag, 1158, 70, 1 )
	RegCurTrigger( 11587 )

--	-----------------------------------------------------Цн№в±¦Жш-----------ВнАґОчСЗ
--
--       DefineMission(6126,"Цн№в±¦Жш",1452)
--
--	MisBeginTalk("<t>ЧоЅьОТФЩСРѕїТ»µАРВІЛЙ«РиТЄР©МШ±рµДІДБП,ОТІВДгТ»¶ЁФёТв°пГ¦,ТтОЄ»Ш±Ё№»єГЕ¶.")
--	MisBeginCondition(NoMission, 1452)
--	MisBeginCondition(NoRecord,1452)
--	MisBeginAction(AddMission,1452)
--	MisBeginAction(AddTrigger, 14521, TE_GETITEM, 4325, 5)
--	MisBeginAction(AddTrigger, 14522, TE_GETITEM, 1680, 5)
--	MisBeginAction(AddTrigger, 14523, TE_GETITEM, 4433, 5)
--	MisBeginAction(AddTrigger, 14524, TE_GETITEM, 4357, 5)
--	MisBeginAction(AddTrigger, 14525, TE_GETITEM, 4461, 40)
--	MisBeginAction(AddTrigger, 14526, TE_GETITEM, 4462, 40)
--
--
--	MisCancelAction(ClearMission, 1452)
--
--	MisNeed(MIS_NEED_DESP, "КХјЇµЅС©°ЧЦнОІ 5ёц(ЙоА¶1179,371),·ЫємЦнОІ 5ёц(јУДЙ1950,2563),єАЦн¶МОІ 5ёц(јУДЙ1384,3065),ґЦІЪµДЦнОІ 5ёц(јУДЙ910,2971),±дТмЦнМг 40 ЙоА¶1455,560)ј° ЗїЧіЦнМг 40(ЙоА¶2266,590).")
--	MisNeed(MIS_NEED_ITEM, 4325, 5, 10, 5)
--	MisNeed(MIS_NEED_ITEM, 1680, 5, 15, 5)
--	MisNeed(MIS_NEED_ITEM, 4433, 5, 20, 5)
--	MisNeed(MIS_NEED_ITEM, 4357, 5, 25, 5)
--	MisNeed(MIS_NEED_ITEM, 4461, 40, 30, 40)
--	MisNeed(MIS_NEED_ITEM, 4462, 40, 70, 40)
--
--	
--	
--	MisHelpTalk("<t>ј°Фз»ШАґёґГь,ОТ»бёшДъЧоєГµДкыЙН")
--	MisResultTalk("<t>ХвёцЙсГШµДРТФЛЦн±¦ПдѕНКЗОТТЄЛНёшДгµДЅ±ЙНБЛ,ОТУРєЬ¶аКВРиТЄ°пГ¦,ДгїЙТФѕ­іЈ№эАґХТОТ.")
--
--	MisResultCondition(HasMission, 1452)
--	MisResultCondition(NoRecord,1452)
--	MisResultCondition(HasItem, 4325, 5)
--	MisResultCondition(HasItem, 1680, 5)
--	MisResultCondition(HasItem, 4433, 5)
--	MisResultCondition(HasItem, 4357, 5)
--	MisResultCondition(HasItem, 4461, 40)
--	MisResultCondition(HasItem, 4462, 40)
--
--	
--	
--	MisResultAction(TakeItem, 4325, 5 )
--	MisResultAction(TakeItem, 1680, 5 )
--	MisResultAction(TakeItem, 4433, 5 )
--	MisResultAction(TakeItem, 4357, 5 )
--	MisResultAction(TakeItem, 4461, 40 )
--	MisResultAction(TakeItem, 4462, 40 )
--
--	
--	
--	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2909,1,4)------------ёшРТФЛЦн±¦Пд
--	MisResultAction(ClearMission, 1452)
--	MisResultAction(SetRecord, 1452)
--	MisResultAction(ClearRecord, 1452)---------------їЙТФ·ґёґЅУ
--	MisResultBagNeed(1)
--	
--
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4325)	
--	TriggerAction( 1, AddNextFlag, 1452, 10, 5 )
--	RegCurTrigger( 14521 )
--
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 1680)	
--	TriggerAction( 1, AddNextFlag, 1452, 15, 5 )
--	RegCurTrigger( 14522 )
--	
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4433)	
--	TriggerAction( 1, AddNextFlag, 1452, 20, 5 )
--	RegCurTrigger( 14523 )
--	
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4357)	
--	TriggerAction( 1, AddNextFlag, 1452, 25, 5 )
--	RegCurTrigger( 14524 )
--	
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4461)	
--	TriggerAction( 1, AddNextFlag, 1452, 30, 40 )
--	RegCurTrigger( 14525 )
--	
--	InitTrigger()
--	TriggerCondition( 1, IsItem, 4462)	
--	TriggerAction( 1, AddNextFlag, 1452, 70, 40 )
--	RegCurTrigger( 14526 )

-------------------------------------------------ВТ¶·УўРЫ----------єЈµБЎ¤µВїЛ	--------Л®КЦ
	DefineMission (5673, "Герой Сражений Мифический Близнецов", 1163)
	
	MisBeginTalk("<t>Л«ЧУЧщµДИЛ,КЦТХК®·ЦБйЗЙ,ФЪёч·ЅГжТІ¶јДЬ±нПЦіцЧФјєµДІЕДЬ.ХвКЗКфУЪДгµДГО»ГРЗЧщВр? ")

	MisBeginCondition(NoMission,1163)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1163)
	MisBeginAction(AddMission,1163)
	MisCancelAction(ClearMission, 1163)
	
	MisNeed(MIS_NEED_DESP, "»сµГ5µгВТ¶·µгКэ")
	MisHelpTalk("<t>ВТ¶·µгКэїЙТФґУВТ¶·°ЧТш»сµГ!")
	MisResultTalk("<t>їґµГіцДгЧў¶ЁКЗТ»ёцОЄХЅ¶·¶шЙъµДИЛ.")

	MisResultCondition(HasMission, 1163)
	MisResultCondition(NoRecord,1163)
	MisResultCondition(HasFightingPoint,5 )
	MisResultAction(TakeFightingPoint, 5 )
	MisResultAction(ClearMission, 1163)
	MisResultAction(SetRecord,  1163 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1874, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ГыЙщУўРЫ----------єЈµБЎ¤µВїЛ	--------Л®КЦ
	DefineMission (5674, "Прославленный Герой Мифических Близнецов", 1164)
	
	MisBeginTalk("<t>ЕуУСДгєГ,ОТПлИГДгЦЄµАОТКЗТ»ёц¶ФЧФјєУРТЄЗуµДИЛЈ®ЛщТФГО»ГЛ«ЧУ№¬¶ФДгµДТЄЗуТІёьёЯТ»Р©.")

	MisBeginCondition(NoMission,1164)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1164)
	MisBeginAction(AddMission,1164)
	MisCancelAction(ClearMission, 1164)
	
	MisNeed(MIS_NEED_DESP, "»сµГ2000µгГыЙщµгКэ")
	MisHelpTalk("<t>їґКІГґїґ,»№І»ЧЯ?ДгТФОЄ2000µгГыЙщєЬєГ»мВр?")
	MisResultTalk("<t>ХвГ¶ГыЙщС«ХВКЗУГАґјыЦ¤УўРЫµД.")

	MisResultCondition(HasMission, 1164)
	MisResultCondition(NoRecord,1164)
	MisResultCondition(HasCredit,2000 )
	MisResultAction(TakeCredit, 2000 )
	MisResultAction(ClearMission, 1164)
	MisResultAction(SetRecord,  1164 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1875, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------µИј¶УўРЫ----------єЈµБЎ¤µВїЛ	---------Л®КЦ
	DefineMission (5741, "Герой Мифических Близнецов", 1165)
	
	MisBeginTalk("<t>УВёТµДЕуУС,ИГОТїґµЅДг·З·ІµДДЬБ¦°Й,ПтОТЦ¤ГчДгЦ»±ИОТІоТ»µг,№ю№ю... ")

	MisBeginCondition(NoMission,1165)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1165)
	MisBeginAction(AddMission,1165)
	MisCancelAction(ClearMission, 1165)
	
	MisNeed(MIS_NEED_DESP, "Level reached 60")
	MisHelpTalk("<t>µ±И»,60ј¶¶ФОТАґЛµІ»іЙОКМв.")
	MisResultTalk("<t>І»µГІ»іРИП,ДгµДИ·Ц»±ИОТВФІоТ»іп¶шТС,ХвГ¶µИј¶С«ХВКЗДгµДБЛ.")

	MisResultCondition(HasMission, 1165)
	MisResultCondition(NoRecord,1165)
	MisResultCondition(LvCheck, ">", 59 )
	MisResultAction(ClearMission, 1165)
	MisResultAction(SetRecord,  1165 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1876, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------ИЩУюУўРЫ----------єЈµБЎ¤µВїЛ	----------Л®КЦ
	DefineMission (5742, "Благородный Герой Мифических Близнецов", 1166)
	
	MisBeginTalk("<t>ґ«ЛµЦРєЈµБКАЅзЧоО°ґуµДИЩУюЦ®ЧУѕНКЗОТ..ОТµДЧжПИ,ОТТтґЛКЬµЅ№гґуєЈµБН¬РРµДЧрѕґ,ДгТЄТФОТОЄ°сСщ°Ў.")

	MisBeginCondition(NoMission,1166)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1166)
	MisBeginAction(AddMission,1166)
	MisCancelAction(ClearMission, 1166)
	
	MisNeed(MIS_NEED_DESP, "Gained 500 honor points")
	MisHelpTalk("<t>ИҐОЄИЩУю¶шХЅ°Й!")
	MisResultTalk("<t>ДгКЗёцєЬІ»ґнµДИЩУюЦ®ЧУ.")

	MisResultCondition(HasMission, 1166)
	MisResultCondition(NoRecord,1166)
	MisResultCondition(HasHonorPoint,500 )
	MisResultAction(TakeHonorPoint, 500 )
	MisResultAction(ClearMission, 1166)
	MisResultAction(SetRecord,  1166 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1877, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ІЙјЇґуК№----------єЈµБЎ¤µВїЛ	------------Л®КЦ
	DefineMission (5677, "Посол Мифических Близнецов", 1167)
	
	MisBeginTalk("<t>ІЙјЇС«ХВКЗФщУлДЗР©¶ґІмБ¦єЬЗїµДИЛµДАсОп,УРРЕРДµД»°ѕНИҐКФКФ°Й. ")

	MisBeginCondition(NoMission,1167)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(NoRecord,1167)
	MisBeginAction(AddMission,1167)
	MisBeginAction(AddTrigger, 11671, TE_GETITEM, 1346, 10 )---------------СЄРИµДтттЅСЄ10
	MisBeginAction(AddTrigger, 11672, TE_GETITEM, 4526, 10 )--------------- ЙъРвµДі¤Г¬10
	MisBeginAction(AddTrigger, 11673, TE_GETITEM, 1608, 10 )-------------¶ЇОпЖ¤Г«10--------
	MisBeginAction(AddTrigger, 11674, TE_GETITEM, 4495, 1 )--------------ЙЅФфСьґш1ёц
	MisBeginAction(AddTrigger, 11675, TE_GETITEM, 1612, 20 )--------------·жАыµДЅЗ20ёц
	MisBeginAction(AddTrigger, 11676, TE_GETITEM, 1140, 20 )-------------ґ¬Ц»ЕзЙдЖчLV1 20ёц
	MisBeginAction(AddTrigger, 11677, TE_GETITEM, 3094, 5 )--------------Е¬Б¦Фц·щЖч5ёц
	MisCancelAction(ClearMission, 1167)
	

	MisNeed(MIS_NEED_ITEM, 1346, 10, 1, 10 )
	MisNeed(MIS_NEED_ITEM, 4526, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 1608, 10, 21, 10 )
	MisNeed(MIS_NEED_ITEM, 4495, 1, 31, 1 )
	MisNeed(MIS_NEED_ITEM, 1612, 20, 32, 20 )
	MisNeed(MIS_NEED_ITEM, 1140, 20, 52, 20 )
	MisNeed(MIS_NEED_ITEM, 3094, 5, 72, 5 )
	

	MisHelpTalk("<t>І»ТЄТФОЄєЬИЭТЧ,їмИҐ°Й")
	MisResultTalk("<t>ХвР©¶«ОчИГДгєЬЙЛДФЅо°Й,јЗЧЎ,ХвКАЅзЙПЛщУРµД¶«Оч¶јУРЧФјєµДјЫЦµ,І»ТЄЧЬКЗј±РиµДК±єтІЕПлЖрАґИҐБфТв.")

	MisResultCondition(HasMission, 1167)
	MisResultCondition(NoRecord,1167)
	MisResultCondition(HasItem, 1346, 10 )
	MisResultCondition(HasItem, 4526, 10 )
	MisResultCondition(HasItem, 1608, 10 )
	MisResultCondition(HasItem, 4495, 1 )
	MisResultCondition(HasItem, 1612, 20 )
	MisResultCondition(HasItem, 1140, 20 )
	MisResultCondition(HasItem, 3094, 5 )


	MisResultAction(TakeItem, 1346, 10 )
	MisResultAction(TakeItem, 4526, 10 )
	MisResultAction(TakeItem, 1608, 10 )
	MisResultAction(TakeItem, 4495, 1)
	MisResultAction(TakeItem, 1612, 20 )
	MisResultAction(TakeItem, 1140, 20 )
	MisResultAction(TakeItem, 3094, 5 )
	
	MisResultAction(ClearMission, 1167)
	MisResultAction(SetRecord,  1167 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1878, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1882, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1346)	
	TriggerAction( 1, AddNextFlag, 1167, 1, 10 )
	RegCurTrigger( 11671 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4526)	
	TriggerAction( 1, AddNextFlag, 1167, 11, 10 )
	RegCurTrigger( 11672 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1608)	
	TriggerAction( 1, AddNextFlag, 1167, 21, 10 )
	RegCurTrigger( 11673 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4495)	
	TriggerAction( 1, AddNextFlag, 1167, 31, 1 )
	RegCurTrigger( 11674 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1612)	
	TriggerAction( 1, AddNextFlag, 1167, 36, 20 )
	RegCurTrigger( 11675 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1140)	
	TriggerAction( 1, AddNextFlag, 1167, 37, 20 )
	RegCurTrigger( 11676 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1167, 87, 5 )
	RegCurTrigger( 11677 )


	----------------------------------------------------------Л«ЧУД©ИХ----------єЈµБЎ¤µВїЛ
	DefineMission( 5678, "Фантастические Близнецы - Последний День", 1168 )
	MisBeginTalk("<t>BOSSС«ХВКЗЧоѕЯУўРЫЦчТеТвО¶µДЅ±ХВ,ДгТЄµД»°ѕНИҐЙ±µфїЙЕВµДЛ«ЧУКШ»¤ХЯ.")
				
	MisBeginCondition(NoMission, 1168)
	MisBeginCondition(HasRecord,1162)
	MisBeginCondition(NoRecord,1168)
	MisBeginAction(AddMission,1168)
	MisBeginAction(AddTrigger, 11681, TE_KILL, 1039, 1)---Л«ЧУКШ»¤ХЯ
	
	MisCancelAction(ClearMission, 1168)

	MisNeed(MIS_NEED_DESP, "І¶Й±Л«ЧУКШ»¤ХЯД§Е®Ц®єЈ(2527, 2467)!")
	MisNeed(MIS_NEED_KILL, 1039,1, 10, 1)
	

	MisResultTalk("<t>Л«Н·ЛД±ЫµД№ЦОпКЗЙПЙсІ»РЎРДµДЅЬЧч.ДгУАФ¶¶јОЮ·ЁХжХэµДЙ±ЛАЛьГЗ!")
	MisHelpTalk("<t>МэЛµКЗЦ»Л«Н·№Ц,І»Н¬ТФНщ,ДгТЄРЎРД.")
	MisResultCondition(HasMission,  1168)
	MisResultCondition(HasFlag, 1168, 10)
	MisResultCondition(NoRecord , 1168)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1880, 1, 4 )
	MisResultAction(ClearMission,  1168)
	MisResultAction(SetRecord,  1168 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1039)	
	TriggerAction( 1, AddNextFlag, 1168, 10, 1 )
	RegCurTrigger( 11681 )

-------------------------------------------------ВТ¶·УўРЫ----------єЈµБЎ¤µВїЛ	
	DefineMission (5679, "Герой Сражений Мифический Близнецов", 1169)
	
	MisBeginTalk("<t>Л«ЧУЧщµДИЛ,КЦТХК®·ЦБйЗЙ,ФЪёч·ЅГжТІ¶јДЬ±нПЦіцЧФјєµДІЕДЬ.ХвКЗКфУЪДгµДГО»ГРЗЧщВр? ")

	MisBeginCondition(NoMission,1169)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1169)
	MisBeginAction(AddMission,1169)
	MisCancelAction(ClearMission, 1169)
	
	MisNeed(MIS_NEED_DESP, "»сµГ10µгВТ¶·µгКэ")
	MisHelpTalk("<t>ВТ¶·µгКэїЙТФґУВТ¶·°ЧТш»сµГ!")
	MisResultTalk("<t>їґµГіцДгЧў¶ЁКЗТ»ёцОЄХЅ¶·¶шЙъµДИЛ.")

	MisResultCondition(HasMission, 1169)
	MisResultCondition(NoRecord,1169)
	MisResultCondition(HasFightingPoint,10 )
	MisResultAction(TakeFightingPoint, 10 )
	MisResultAction(ClearMission, 1169)
	MisResultAction(SetRecord,  1169 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1874, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ГыЙщУўРЫ----------єЈµБЎ¤µВїЛ	
	DefineMission (5680, "Прославленный Герой Мифических Близнецов", 1170)
	
	MisBeginTalk("<t>ЕуУСДгєГ,ОТПлИГДгЦЄµАОТКЗТ»ёц¶ФЧФјєУРТЄЗуµДИЛЈ®ЛщТФГО»ГЛ«ЧУ№¬¶ФДгµДТЄЗуТІёьёЯТ»Р©.")

	MisBeginCondition(NoMission,1170)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1170)
	MisBeginAction(AddMission,1170)
	MisCancelAction(ClearMission, 1170)
	
	MisNeed(MIS_NEED_DESP, "Obtained 5000 points of reputation")
	MisHelpTalk("<t>їґКІГґїґ,»№І»ЧЯ?ДгТФОЄ5000µгГыЙщєЬєГ»мВр?")
	MisResultTalk("<t>ХвГ¶ГыЙщС«ХВКЗУГАґјыЦ¤УўРЫµД.")

	MisResultCondition(HasMission, 1170)
	MisResultCondition(NoRecord,1170)
	MisResultCondition(HasCredit,5000 )
	MisResultAction(TakeCredit,5000  )
	MisResultAction(ClearMission, 1170)
	MisResultAction(SetRecord,  1170 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1875, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------µИј¶УўРЫ----------єЈµБЎ¤µВїЛ	
	DefineMission (5681, "Герой Мифических Близнецов", 1171)
	
	MisBeginTalk("<t>УВёТµДЕуУС,ИГОТїґµЅДг·З·ІµДДЬБ¦°Й,ПтОТЦ¤ГчДгЦ»±ИОТІоТ»µг,№ю№ю... ")

	MisBeginCondition(NoMission,1171)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1171)
	MisBeginAction(AddMission,1171)
	MisCancelAction(ClearMission, 1171)
	
	MisNeed(MIS_NEED_DESP, "Reached Level 65")
	MisHelpTalk("<t>µ±И»,65ј¶¶ФОТАґЛµІ»іЙОКМв.")
	MisResultTalk("<t>І»µГІ»іРИП,ДгµДИ·Ц»±ИОТВФІоТ»іп¶шТС,ХвГ¶µИј¶С«ХВКЗДгµДБЛ.")

	MisResultCondition(HasMission, 1171)
	MisResultCondition(NoRecord,1171)
	MisResultCondition(LvCheck, ">", 64 )
	MisResultAction(ClearMission, 1171)
	MisResultAction(SetRecord,  1171 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1876, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------ИЩУюУўРЫ----------єЈµБЎ¤µВїЛ	
	DefineMission (5682, "Благородный Герой Мифических Близнецов", 1172)
	
	MisBeginTalk("<t>ґ«ЛµЦРєЈµБКАЅзЧоО°ґуµДИЩУюЦ®ЧУѕНКЗОТ..ОТµДЧжПИ,ОТТтґЛКЬµЅ№гґуєЈµБН¬РРµДЧрѕґ,ДгТЄТФОТОЄ°сСщ°Ў.")

	MisBeginCondition(NoMission,1172)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1172)
	MisBeginAction(AddMission,1172)
	MisCancelAction(ClearMission, 1172)
	
	MisNeed(MIS_NEED_DESP, "»сµГ700µгИЩУюµгКэ")
	MisHelpTalk("<t>ИҐОЄИЩУю¶шХЅ°Й!")
	MisResultTalk("<t>ДгКЗёцєЬІ»ґнµДИЩУюЦ®ЧУ.")

	MisResultCondition(HasMission, 1172)
	MisResultCondition(NoRecord,1172)
	MisResultCondition(HasHonorPoint,700 )
	MisResultAction(TakeHonorPoint, 700 )
	MisResultAction(ClearMission, 1172)
	MisResultAction(SetRecord,  1172 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1877, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ІЙјЇґуК№----------єЈµБЎ¤µВїЛ	
	DefineMission (5683, "Посол Мифических Близнецов", 1173)
	
	MisBeginTalk("<t>ІЙјЇС«ХВКЗФщУлДЗР©¶ґІмБ¦єЬЗїµДИЛµДАсОп,УРРЕРДµД»°ѕНИҐКФКФ°Й. ")

	MisBeginCondition(NoMission,1173)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(NoRecord,1173)
	MisBeginAction(AddMission,1173)
	MisBeginAction(AddTrigger, 11731, TE_GETITEM, 1346, 15 )-------------------СЄРИµДтттЅСЄ15
	MisBeginAction(AddTrigger, 11732, TE_GETITEM, 4526, 15 )-------------------ЙъРвµДі¤Г¬15          
	MisBeginAction(AddTrigger, 11733, TE_GETITEM, 1608, 15 )-----------------¶ЇОпЖ¤Г«15               
	MisBeginAction(AddTrigger, 11734, TE_GETITEM, 4495, 2 )----------------ЙЅФфСьґш2ёц               
	MisBeginAction(AddTrigger, 11735, TE_GETITEM, 1612, 30)------------------·жАыµДЅЗ30ёц            
	MisBeginAction(AddTrigger, 11736, TE_GETITEM, 2724, 20 )-----------------ґ¬Ц»ЕзЙдЖчLV2 20ёц                  
	MisBeginAction(AddTrigger, 11737, TE_GETITEM, 3094, 10 )------------------Е¬Б¦Фц·щЖч10ёц          
	MisCancelAction(ClearMission, 1173)
	

	MisNeed(MIS_NEED_ITEM, 1346, 15, 1, 15 )
	MisNeed(MIS_NEED_ITEM, 4526, 15, 16, 15 )
	MisNeed(MIS_NEED_ITEM, 1608, 15, 31, 15 )
	MisNeed(MIS_NEED_ITEM, 4495,  2, 46, 2 )
	MisNeed(MIS_NEED_ITEM, 1612, 30, 48, 30 )
	MisNeed(MIS_NEED_ITEM, 2724, 20, 78, 20 )
	MisNeed(MIS_NEED_ITEM, 3094, 10, 98, 10 )
	

	MisHelpTalk("<t>І»ТЄТФОЄєЬИЭТЧ,їмИҐ°Й")
	MisResultTalk("<t>ХвР©¶«ОчИГДгєЬЙЛДФЅо°Й,јЗЧЎ,ХвКАЅзЙПЛщУРµД¶«Оч¶јУРЧФјєµДјЫЦµ,І»ТЄЧЬКЗј±РиµДК±єтІЕПлЖрАґИҐБфТв..")

	MisResultCondition(HasMission, 1173)
	MisResultCondition(NoRecord,1173)
	MisResultCondition(HasItem, 1346, 15 )
	MisResultCondition(HasItem, 4526, 15 )
	MisResultCondition(HasItem, 1608, 15 )
	MisResultCondition(HasItem, 4495, 2 )
	MisResultCondition(HasItem, 1612, 30 )
	MisResultCondition(HasItem, 2724, 20 )
	MisResultCondition(HasItem, 3094, 10 )


	MisResultAction(TakeItem, 1346, 15 )
	MisResultAction(TakeItem, 4526, 15 )
	MisResultAction(TakeItem, 1608, 15 )
	MisResultAction(TakeItem, 4495, 2 )
	MisResultAction(TakeItem, 1612, 30 )
	MisResultAction(TakeItem, 2724, 20 )
	MisResultAction(TakeItem, 3094, 10 )

	MisResultAction(ClearMission, 1173)
	MisResultAction(SetRecord,  1173 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1878, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1882, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1346)	
	TriggerAction( 1, AddNextFlag, 1173, 1, 15 )
	RegCurTrigger( 11731 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4526)	
	TriggerAction( 1, AddNextFlag, 1173, 16, 15 )
	RegCurTrigger( 11732 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1608)	
	TriggerAction( 1, AddNextFlag, 1173, 31, 15 )
	RegCurTrigger( 11733 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4495)	
	TriggerAction( 1, AddNextFlag, 1173, 46, 2 )
	RegCurTrigger( 11734 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1612)	
	TriggerAction( 1, AddNextFlag, 1173, 48, 30 )
	RegCurTrigger( 11735 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2724)	
	TriggerAction( 1, AddNextFlag, 1173,78, 20 )
	RegCurTrigger( 11736 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1173, 98, 10 )
	RegCurTrigger( 11737 )


-------------------------------------------------ВТ¶·УўРЫ----------єЈµБЎ¤µВїЛ	
	DefineMission (5684, "Герой Сражений Мифический Близнецов", 1174)
	
	MisBeginTalk("<t>Л«ЧУЧщµДИЛ,КЦТХК®·ЦБйЗЙ,ФЪёч·ЅГжТІ¶јДЬ±нПЦіцЧФјєµДІЕДЬ.ХвКЗКфУЪДгµДГО»ГРЗЧщВр? ")

	MisBeginCondition(NoMission,1174)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1174)
	MisBeginAction(AddMission,1174)
	MisCancelAction(ClearMission, 1174)
	
	MisNeed(MIS_NEED_DESP, "»сµГ15µгВТ¶·µгКэ")
	MisHelpTalk("<t>ВТ¶·µгКэїЙТФґУВТ¶·°ЧТш»сµГ!")
	MisResultTalk("<t>їґµГіцДгЧў¶ЁКЗТ»ёцОЄХЅ¶·¶шЙъµДИЛ.")

	MisResultCondition(HasMission, 1174)
	MisResultCondition(NoRecord,1174)
	MisResultCondition(HasFightingPoint,15 )
	MisResultAction(TakeFightingPoint, 15 )
	MisResultAction(ClearMission, 1174)
	MisResultAction(SetRecord,  1174 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1874, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ГыЙщУўРЫ----------єЈµБЎ¤µВїЛ	
	DefineMission (5685, "Прославленный Герой Мифических Близнецов", 1175)
	
	MisBeginTalk("<t>ЕуУСДгєГ,ОТПлИГДгЦЄµАОТКЗТ»ёц¶ФЧФјєУРТЄЗуµДИЛЈ®ЛщТФГО»ГЛ«ЧУ№¬¶ФДгµДТЄЗуТІёьёЯТ»Р©.")

	MisBeginCondition(NoMission,1175)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1175)
	MisBeginAction(AddMission,1175)
	MisCancelAction(ClearMission, 1175)
	
	MisNeed(MIS_NEED_DESP, "»сµГ8000µгГыЙщµгКэ")
	MisHelpTalk("<t>їґКІГґїґ,»№І»ЧЯ?ДгТФОЄ8000µгГыЙщєЬєГ»мВр?")
	MisResultTalk("<t>ХвГ¶ГыЙщС«ХВКЗУГАґјыЦ¤УўРЫµД.")

	MisResultCondition(HasMission, 1175)
	MisResultCondition(NoRecord,1175)
	MisResultCondition(HasCredit,8000 )
	MisResultAction(TakeCredit, 8000 )
	MisResultAction(ClearMission, 1175)
	MisResultAction(SetRecord,  1175 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1875, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------µИј¶УўРЫ----------єЈµБЎ¤µВїЛ	
	DefineMission (5686, "Герой Мифических Близнецов", 1176)
	
	MisBeginTalk("<t>УВёТµДЕуУС,ИГОТїґµЅДг·З·ІµДДЬБ¦°Й,ПтОТЦ¤ГчДгЦ»±ИОТІоТ»µг,№ю№ю....")

	MisBeginCondition(NoMission,1176)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1176)
	MisBeginAction(AddMission,1176)
	MisCancelAction(ClearMission, 1176)
	
	MisNeed(MIS_NEED_DESP, "µИј¶ґпµЅ70ј¶")
	MisHelpTalk("<t>µ±И»,70ј¶¶ФОТАґЛµІ»іЙОКМв.")
	MisResultTalk("<t>І»µГІ»іРИП,ДгµДИ·Ц»±ИОТВФІоТ»іп¶шТС,ХвГ¶µИј¶С«ХВКЗДгµДБЛ.")

	MisResultCondition(HasMission, 1176)
	MisResultCondition(NoRecord,1176)
	MisResultCondition(LvCheck, ">", 69 )
	MisResultAction(ClearMission, 1176)
	MisResultAction(SetRecord,  1176 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1876, 1, 4)
	MisResultBagNeed(1)
	

	-------------------------------------------------ИЩУюУўРЫ----------єЈµБЎ¤µВїЛ	
	DefineMission (5687, "Благородный Герой Мифических Близнецов", 1177)
	
	MisBeginTalk("<t>ґ«ЛµЦРєЈµБКАЅзЧоО°ґуµДИЩУюЦ®ЧУѕНКЗОТ..ОТµДЧжПИ,ОТТтґЛКЬµЅ№гґуєЈµБН¬РРµДЧрѕґ,ДгТЄТФОТОЄ°сСщ°Ў.")

	MisBeginCondition(NoMission,1177)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1177)
	MisBeginAction(AddMission,1177)
	MisCancelAction(ClearMission, 1177)
	
	MisNeed(MIS_NEED_DESP, "»сµГ1000µгИЩУюµгКэ")
	MisHelpTalk("<t>ИҐОЄИЩУю¶шХЅ°Й!")
	MisResultTalk("<t>ДгКЗёцєЬІ»ґнµДИЩУюЦ®ЧУ.")

	MisResultCondition(HasMission, 1177)
	MisResultCondition(NoRecord,1177)
	MisResultCondition(HasHonorPoint,1000 )
	MisResultAction(TakeHonorPoint, 1000 )
	MisResultAction(ClearMission, 1177)
	MisResultAction(SetRecord,  1177 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1877, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ІЙјЇґуК№----------єЈµБЎ¤µВїЛ	
	DefineMission (5688, "Посол Мифических Близнецов", 1178)
	
	MisBeginTalk("<t>ІЙјЇС«ХВКЗФщУлДЗР©¶ґІмБ¦єЬЗїµДИЛµДАсОп,УРРЕРДµД»°ѕНИҐКФКФ°Й. ")

	MisBeginCondition(NoMission,1178)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(NoRecord,1178)
	MisBeginAction(AddMission,1178)
	MisBeginAction(AddTrigger, 11781, TE_GETITEM, 1346, 20 )---------------------СЄРИµДтттЅСЄ20 
	MisBeginAction(AddTrigger, 11782, TE_GETITEM, 3433, 1 )---------------------·СЕµ·ыКЇ1ёц          
	MisBeginAction(AddTrigger, 11783, TE_GETITEM, 4495, 3 )-------------------ЙЅФфСьґш3ёц               
	MisBeginAction(AddTrigger, 11784, TE_GETITEM, 1612, 30 )------------------·жАыµДЅЗ30ёц             
	MisBeginAction(AddTrigger, 11785, TE_GETITEM, 2724, 30 )--------------------ґ¬Ц»ЕзЙдЖчLV2 30ёц             
	MisBeginAction(AddTrigger, 11786, TE_GETITEM, 3094, 30 )-------------------Е¬Б¦Фц·щЖч30ёц                              
	MisCancelAction(ClearMission, 1178)						                                     
	

	MisNeed(MIS_NEED_ITEM, 1346, 20, 1, 20 )
	MisNeed(MIS_NEED_ITEM, 3433, 1, 21, 1 )
	MisNeed(MIS_NEED_ITEM, 4495, 3, 22, 3 )
	MisNeed(MIS_NEED_ITEM, 1612, 30, 25, 30 )
	MisNeed(MIS_NEED_ITEM, 2724, 30, 55, 30)
	MisNeed(MIS_NEED_ITEM, 3094, 30, 85, 30 )


	MisHelpTalk("<t>І»ТЄТФОЄєЬИЭТЧ,їмИҐ°Й")
	MisResultTalk("<t>ХвР©¶«ОчИГДгєЬЙЛДФЅо°Й,јЗЧЎ,ХвКАЅзЙПЛщУРµД¶«Оч¶јУРЧФјєµДјЫЦµ,І»ТЄЧЬКЗј±РиµДК±єтІЕПлЖрАґИҐБфТв.")

	MisResultCondition(HasMission, 1178)
	MisResultCondition(NoRecord,1178)
	MisResultCondition(HasItem, 1346, 20 )
	MisResultCondition(HasItem, 3433, 1 )
	MisResultCondition(HasItem, 4495, 3 )
	MisResultCondition(HasItem, 1612, 30 )
	MisResultCondition(HasItem, 2724, 30 )
	MisResultCondition(HasItem, 3094, 30 )


	MisResultAction(TakeItem, 1346, 20 )
	MisResultAction(TakeItem, 3433, 1 )
	MisResultAction(TakeItem, 4495, 3 )
	MisResultAction(TakeItem, 1612, 30 )
	MisResultAction(TakeItem, 2724, 30 )
	MisResultAction(TakeItem, 3094, 30 )

	MisResultAction(ClearMission, 1178)
	MisResultAction(SetRecord,  1178 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1878, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1882, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1346)	
	TriggerAction( 1, AddNextFlag, 1178, 1, 20 )
	RegCurTrigger( 11781 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3433)	
	TriggerAction( 1, AddNextFlag, 1178, 21, 1 )
	RegCurTrigger( 11782 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4495)	
	TriggerAction( 1, AddNextFlag, 1178, 22, 3 )
	RegCurTrigger( 11783 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1612)	
	TriggerAction( 1, AddNextFlag, 1178, 25, 30 )
	RegCurTrigger( 11784 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2724)	
	TriggerAction( 1, AddNextFlag, 1178, 55, 30 )
	RegCurTrigger( 11785 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1178, 85, 30 )
	RegCurTrigger( 11786 )

	----------------------------------------------------------ЙзЅ»ґуК№----------єЈµБЎ¤µВїЛ
	DefineMission( 5689, "ГО»ГЛ«ЧУЦ®ЙзЅ»ґуК№", 1179 )
	MisBeginTalk("<t>УРИЛЛµОТПІ»¶ґµЕЈ,ДСµАХвКЗОТµДґнВр?УРјёёцДРИЛІ»КЗХвСщ?ЖдКµОТ»№КЗєЬУРГыНыµД,ДЗР©із°ЭОТµДЕуУСГЗїЙТФЧчЦ¤.ХэєГОТТЄФЪКҐµ®ЅЪѕЩ°мЕЙ¶Ф,Из№ыДгПлТЄМЅЛчС«ХВѕН°пОТИҐСыЗлЛыГЗ°Й.")
				
	MisBeginCondition(NoMission, 1179)
	MisBeginCondition(NoRecord,1179)
	MisBeginCondition(HasRecord, 1162)-------------------РВµДid,ЧоєуµДid
	MisBeginAction(AddMission,1179)
	MisCancelAction(ClearMission, 1179)

	MisNeed(MIS_NEED_DESP, "ХТАЧцЄ±¤µД»¤ОАЎ¤ДбЛЙ(711,1414)БДБД")
	
	MisHelpTalk("<t>їмИҐ°Й,К±јдЧЬКЗ±ИПлПуµД№эµГїм.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№-----------------»¤ОАЎ¤ДбЛЙ

	DefineMission(5690, "Посол мира", 1179, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>єЈµБЎ¤µВїЛ?ОТИПК¶Лы,ЛыґµЕЈµД±ѕКВОТКЗФзУР¶ъОЕµД.")
	MisResultCondition(NoRecord, 1179)
	MisResultCondition(HasMission,1179)
	MisResultAction(ClearMission,1179)
	MisResultAction(SetRecord, 1179)

	----------------------------------------------------------ЙзЅ»ґуК№2----------»¤ОАЎ¤ДбЛЙ
	DefineMission( 5691, "Посол мира 2", 1180 )
	MisBeginTalk("<t>ОТёХёХ18ЛкµДК±єтєЬПтНщєЈµБЙъ»о,єуАґИПК¶БЛµВїЛѕН·ЕЖъБЛХвёцГОПл...ЛыµДЕЙ¶ФОТДЬІ»ДЬІОјУ»№ТЄїґУРГ»УРјЩЖЪ,ОТїЙГ»УРВхїЛДЗГґУЖПР")
				
	MisBeginCondition(NoMission, 1180)
	MisBeginCondition(NoRecord,1180)
	MisBeginCondition(HasRecord, 1179)
	MisBeginAction(AddMission,1180)
	MisCancelAction(ClearMission, 1180)

	MisNeed(MIS_NEED_DESP, "ХТЙіб°µДСІВЯ±шЎ¤ВхїЛ(958,3549)БДБД")
	
	MisHelpTalk("<t>ФЪі¤№ЩСЫЖ¤µЧПВµ±ІоѕНКЗІ»ДЗГґУЖПР.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№2-------------СІВЯ±шЎ¤ВхїЛ
	DefineMission(5692, "Посол мира 2", 1180, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгєГ!ОТ¶Уі¤І»ФЪ,ДгКЗХТОТВр?")
	MisResultCondition(NoRecord, 1180)
	MisResultCondition(HasMission,1180)
	MisResultAction(ClearMission,1180)
	MisResultAction(SetRecord, 1180)

	----------------------------------------------------------ЙзЅ»ґуК№3----------СІВЯ±шЎ¤ВхїЛ
	DefineMission( 5693, "Посол мира 3", 1181 )
	MisBeginTalk("<t>µВїЛµДКҐµ®ЕЙ¶Ф?єЬІ»ґн,ОТТСѕ­¶И№эБЛєЬ¶аёц№В¶АОЮБДµДКҐµ®ЅЪБЛ.І»№эОТТСѕ­Фј№эРЮЛѕБЛ,І»ИзДг°пОТОКТ»ПВРЮЛѕµДТвјы")
				
	MisBeginCondition(NoMission, 1181)
	MisBeginCondition(NoRecord,1181)
	MisBeginCondition(HasRecord, 1180)
	MisBeginAction(AddMission,1181)
	MisCancelAction(ClearMission, 1181)

	MisNeed(MIS_NEED_DESP, "ХТчјчГУЄµШІ№ёшХѕµДРЮЛѕ(2138,545)БДБД")
	
	MisHelpTalk("<t>ЛµКµ»°ОТ¶ФµВїЛТСѕ­Г»КІГґУЎПуБЛ,єЗєЗ..")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№3--------РЮЛѕ
	DefineMission(5694, "Посол мира 3", 1181, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ІОјУµВїЛµДКҐµ®ЕЙ¶ФКЗёцј«єГµДЦчТв,ЛдИ»ОТІ»ПІ»¶µВїЛ,µ«КЗОТПІ»¶ЕЙ¶ФЙПµД№ГДп.")
	MisResultCondition(NoRecord, 1181)
	MisResultCondition(HasMission,1181)
	MisResultAction(ClearMission,1181)
	MisResultAction(SetRecord, 1181)



	----------------------------------------------------------ЙзЅ»ґуК№4----------РЮЛѕ
	DefineMission( 5695, "Посол мира 4", 1182 )
	MisBeginTalk("<t>Из№ыДг»бИҐµВ¶ыО¬ЖЅФ­Зл°пГ¦ёжЛЯїЙБЇµДВн¶ыЛ№,ОТЦЄµАТ»ЦЦЦІОпїЙТФУРР§µДЗэіэХВУгЦ­.")
				
	MisBeginCondition(NoMission, 1182)
	MisBeginCondition(NoRecord,1182)
	MisBeginCondition(HasRecord, 1181)
	MisBeginAction(AddMission,1182)
	MisCancelAction(ClearMission, 1182)

	MisNeed(MIS_NEED_DESP, "ХТµВ¶ыО¬ЖЅФ­µДСІВЯ±шЎ¤Вн¶ыЛ№(2065,2732)БДБД")
	
	MisHelpTalk("<t>Лы¶ФХвёцПыПў»бєЬёРРЛИ¤µД.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№4--------СІВЯ±шЎ¤Вн¶ыЛ№
	DefineMission(5696, "Посол мира 4", 1182, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>КЗВр?УРХвЦЦЦІОп,ДЗЛыОЄКІГґІ»ИГДгґшТ»Р©ёшОТ,їґАґКЗУРЅ»»»МхјюµД.ХвёцјТ»пХжКЗРЎЖш°Ў.")
	MisResultCondition(NoRecord, 1182)
	MisResultCondition(HasMission,1182)
	MisResultAction(ClearMission,1182)
	MisResultAction(SetRecord, 1182)


	----------------------------------------------------------ЙзЅ»ґуК№5----------СІВЯ±шЎ¤Вн¶ыЛ№
	DefineMission( 5697, "Посол мира 5", 1183 )
	MisBeginTalk("<t>ДгЛµµВїЛ?ОТУлµВїЛПаК¶¶аДкБЛ,ЛыКЗТ»ёцєЬІ»ґнµДЕуУС,ЛдИ»°®ґµЕЈ,ИґКЗТ»ёцєЬХжіПµДЕуУС.ОТТ»¶Ё»бИҐІОјУЛыµДЕЙ¶Ф.ОТПлДг»бФёТв°пОТНЁЦЄ¶нїЛБрОчЛ№,ЛыµДХжіПТвК¶М«Іо,ОТТЄґшЛыИҐЅУКЬТ»µгЅМУэ.")
				
	MisBeginCondition(NoMission, 1183)
	MisBeginCondition(NoRecord,1183)
	MisBeginCondition(HasRecord, 1182)
	MisBeginAction(AddMission,1183)
	MisCancelAction(ClearMission, 1183)

	MisNeed(MIS_NEED_DESP, "ХТДПІїЙіД®µД¶нїЛБрОчЛ№(1131,3153)БДБД")
	
	MisHelpTalk("<t>¶нїЛБрОчЛ№КЗёцКУІЖИзГьµДРЎєў,У¦ёГПтµВїЛС§П°.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№5--------¶нїЛБрОчЛ№
	DefineMission(5698, "Посол мира 5", 1183, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТКУІЖИзГь?ДгОКЛыІ»·ўѕьвГёшЛыЛы»бН¬ТвВр?")
	MisResultCondition(NoRecord, 1183)
	MisResultCondition(HasMission,1183)
	MisResultAction(ClearMission,1183)
	MisResultAction(SetRecord, 1183)


	----------------------------------------------------------ЙзЅ»ґуК№6----------¶нїЛБрОчЛ№
	DefineMission( 5699, "Посол мира 6", 1184 )
	MisBeginTalk("<t>ЖдКµОТХвСщ°®З®ТІУРОТµДФ­Тт,Ч·ЗуГОЦРЗйИЛКЗІ»ДЬЦ»їїУпСФµД,ДОДОКЗёцїЙ°®µДЕ®єў,ОТІ»ТЄЛэКЬїа.І»ЦЄµАЛэУРГ»УРПлОТ.")
				
	MisBeginCondition(NoMission, 1184)
	MisBeginCondition(NoRecord,1184)
	MisBeginCondition(HasRecord, 1183)
	MisBeginAction(AddMission,1184)
	MisCancelAction(ClearMission, 1184)

	MisNeed(MIS_NEED_DESP, "ХТДОДО(798,369)БДБД")
	
	MisHelpTalk("<t>ДОДОКЗТ»ёцЖшЦКУЕСЕµДГААц№ГДп.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№6--------ДОДО
	DefineMission(5700, "Посол мира 6", 1184, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ЛдИ»ДРИЛУ¦ёГУРїн№гµДРШ»ієНРЫєсµДЧК±ѕ,µ«№ШРДОТІЕКЗЧоЦШТЄµД.")
	MisResultCondition(NoRecord, 1184)
	MisResultCondition(HasMission,1184)
	MisResultAction(ClearMission,1184)
	MisResultAction(SetRecord, 1184)


	----------------------------------------------------------ЙзЅ»ґуК№7----------ДОДО
	DefineMission( 5701, "Посол мира 7", 1185 )
	MisBeginTalk("<t>ОТКЗЗеґїІ»¶®°®ЗйµДРЎЕ®Йъ,ЛщУР№ШУЪ°®ЗйµДАнПлµДєНПЦКµµД№ЫДоОТ¶јКЗНЁ№э№ЕІ©А­µДКйБЛЅвµЅµД.")
				
	MisBeginCondition(NoMission, 1185)
	MisBeginCondition(NoRecord,1185)
	MisBeginCondition(HasRecord, 1184)
	MisBeginAction(AddMission,1185)
	MisCancelAction(ClearMission, 1185)

	MisNeed(MIS_NEED_DESP, "ХТјУДЙµД№ЕІ©А­(1507,3105)БДБД")
	
	MisHelpTalk("<t>ОТґУГ»јы№эХвО»ОДС§ґуК¦,µ«КЗОТІВПлЛыТ»¶ЁКЗТ»О»іЙКмОИЦШµДУЕСЕДРЧУ.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№7--------№ЕІ©А­
	DefineMission(5702, "Посол мира 7", 1185, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТµДЦТКµ¶БХЯДОДО?ОТµД¶БХЯМ«¶аБЛ.І»№эЛэУРХвёцРАЙНЛ®ЧјИГОТ¶ФХвёцКАЅзЦШИјРЕРДБЛ.")
	MisResultCondition(NoRecord, 1185)
	MisResultCondition(HasMission,1185)
	MisResultAction(ClearMission,1185)
	MisResultAction(SetRecord, 1185)


	----------------------------------------------------------ЙзЅ»ґуК№8----------№ЕІ©А­
	DefineMission( 5703, "Посол мира 8", 1186 )
	MisBeginTalk("<t>ЖдКµОТФ­±ѕКЗДОДОПлПуµДДЗЦЦДРЧУ,КЗДЗґОєЈДСєуЖ®µЅєЈµєЙПФміЙµД,ОТєНµВїЛ±»ДЄГыЖдГоµД»Ґ»»БЛНвГІ.І»ЦЄµАХвёцјТ»п¶®І»¶®µГ±ЈСш,ОТДЗїЎГАµДБі°Ў,КЗёГИҐїґТ»ПВБЛ.ДгІ»РЕ?ІЁ¶ыїЙТФЧчЦ¤µД.")
				
	MisBeginCondition(NoMission, 1186)
	MisBeginCondition(NoRecord,1186)
	MisBeginCondition(HasRecord, 1185)
	MisBeginAction(AddMission,1186)
	MisCancelAction(ClearMission, 1186)

	MisNeed(MIS_NEED_DESP, "ХТ±щС©µєєЈёЫЦё»УЎ¤ІЁ¶ы(2372,737)БДБД")
	
	MisHelpTalk("<t>ОТєГ»іДоОТµДБі°Ў!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№8--------єЈёЫЦё»УЎ¤ІЁ¶ы
	DefineMission(5704, "Посол мира 8", 1186, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>№ЕІ©А­єНµВїЛ»»Бі?І»јЗµГБЛ,ГїМмѕ­№эХвАпµДИЛ¶јєЬ¶а.ЛµКµ»°ЛыГЗµДБі»»І»»»¶јїґІ»іцКІГґГАёР,ТІѕНМёІ»ЙПЛ­КЬТж.єЗєЗ")
	MisResultCondition(NoRecord, 1186)
	MisResultCondition(HasMission,1186)
	MisResultAction(ClearMission,1186)
	MisResultAction(SetRecord, 1186)


	----------------------------------------------------------ЙзЅ»ґуК№9----------єЈёЫЦё»УЎ¤ІЁ¶ы
	DefineMission( 5705, "Посол мира 9", 1187 )
	MisBeginTalk("<t>°МєЫКЗДРИЛµД»ХХВ,ѕЖѕ«КЗєЈµБµД»п°й,УРѕЖОТКЗІ»»бґн№эµД.І»ЦЄµАОТµДНв№ъУСИЛ¶«·ЅєЈµБЎ¤БеЧфМпЙЅ»бІ»»бІОјУ,ЛдИ»ЛыЅІ»°єЬЙЩУРИЛДЬМэ¶®.ДДПсїЙ°®µДУЕУЕ...")
				
	MisBeginCondition(NoMission, 1187)
	MisBeginCondition(NoRecord,1187)
	MisBeginCondition(HasRecord, 1186)
	MisBeginAction(AddMission,1187)
	MisCancelAction(ClearMission, 1187)

	MisNeed(MIS_NEED_DESP, "ХТ°ўАј±ИЛ№±щФ­µДІЭЭ®УЕУЕ(1010,350)БДБД")
	
	MisHelpTalk("<t>УЕУЕјтЦ±КЗ±щС©ЦРКўїЄµДГµ№е.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№9--------ІЭЭ®УЕУЕ
	DefineMission(5706, "Посол мира 9", 1187, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТДДУРІЁ¶ыТЇТЇЛµµГДЗГґїЙ°®ДШ?КЗТтОЄЛыПІ»¶ОТІЕФЅ·ўѕхµГОТїЙ°®.")
	MisResultCondition(NoRecord, 1187)
	MisResultCondition(HasMission,1187)
	MisResultAction(ClearMission,1187)
	MisResultAction(SetRecord, 1187)

	----------------------------------------------------------ЙзЅ»ґуК№10----------ІЭЭ®УЕУЕ
	DefineMission( 5707, "Посол мира 10", 1188 )
	MisBeginTalk("<t>µВїЛКЗУРГыµДєЈµБВр?ЛыТІСыЗлБЛОТ?ДЗОТТЄОЄЛыЧј±ёАсОпБЛ...ЛНКІГґёшЛыДШ?УР°м·ЁБЛ,І»ИзДг°пОТОКОКНЯИш·Ё¶ы,ЛыДЗУРєЬУРИ¤µДЦЅЕЖ.ОТПлєЈµБ¶ј»бПІ»¶ЦЅЕЖУОП·µД.")
				
	MisBeginCondition(NoMission, 1188)
	MisBeginCondition(NoRecord,1188)
	MisBeginCondition(HasRecord, 1187)
	MisBeginAction(AddMission,1188)
	MisCancelAction(ClearMission, 1188)

	MisNeed(MIS_NEED_DESP, "ХТ±ґ±ИЖЅФ­µДНЯИш·Ё¶ы(1136,2778)БДБД")
	
	MisHelpTalk("<t>І»ЦЄµАНЯИш·Ё¶ыїПІ»їП°СЦЅЕЖЛНёшОТДШ...")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№10--------НЯИш·Ё¶ы
	DefineMission(5708, "Посол мира 10", 1188, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>УЕУЕТІЧўТвµЅОТµДІЕ»ЄБЛ?єГУРіЙѕНёР°Ў!")
	MisResultCondition(NoRecord, 1188)
	MisResultCondition(HasMission,1188)
	MisResultAction(ClearMission,1188)
	MisResultAction(SetRecord, 1188)

	----------------------------------------------------------ЙзЅ»ґуК№11----------НЯИш·Ё¶ы
	DefineMission( 5709, "Посол мира 11", 1189 )
	MisBeginTalk("<t>ОТІ»ДЬИГУЕУЕХвСщµДРЎЕ®єўТ»ёцИЛИҐІОјУєЈµБµДParty,ОТ»бґшЧЕАсОпЕгЛэТ»ЖрИҐµД.ЛµµЅКҐµ®ЅЪК№ОТПлЖрТ»јюКВ,УЙУЪФ­БПЅфИ±,ДкµЧТЄЅ»ёшЅ»ТЧФ±Ў¤ГЧЛчСЗЛ№µД»хОпїЙДЬІ»»б°ґК±ЛНµЅБЛ,Из№ыДгВ·№эГщЙіµєґъОТЛµГчТ»ПВєГВр?ОТПаРЕДг.")
				
	MisBeginCondition(NoMission, 1189)
	MisBeginCondition(NoRecord,1189)
	MisBeginCondition(HasRecord, 1188)
	MisBeginAction(AddMission,1189)
	MisCancelAction(ClearMission, 1189)

	MisNeed(MIS_NEED_DESP, "ХТГщЙіµєµДЅ»ТЧФ±Ў¤ГЧЛчСЗЛ№(1739,3748)БДБД")
	
	MisHelpTalk("<t>ДгµДСщЧУїґЖрАґѕНєЬЦµµГНРё¶.Ѕ»ТЧФ±Ў¤ГЧЛчСЗЛ№ФЪГщЙіµє.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№11--------Ѕ»ТЧФ±Ў¤ГЧЛчСЗЛ№
	DefineMission(5710, "Посол мира 11", 1189, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>УЦТЄСУК±!НЯИш·Ё¶ыОЄБЛїЙ°®µДЕ®єўКІГґ¶јїЙТФ·ЕЖъ,ЙхЦБКЗОТХвёцєГЕуУСµДЦцНР...")
	MisResultCondition(NoRecord, 1189)
	MisResultCondition(HasMission,1189)
	MisResultAction(ClearMission,1189)
	MisResultAction(SetRecord, 1189)

	----------------------------------------------------------ЙзЅ»ґуК№12----------Ѕ»ТЧФ±Ў¤ГЧЛчСЗЛ№
	DefineMission( 5711, "Посол мира 12", 1190 )
	MisBeginTalk("<t>ХвСщїґАґДкµЧОТТІГ»УРМ«¶аКВїЙТФЧцБЛ.ОТ»бИҐІОјУµВїЛµДСз»бµД,єЬѕГГ»ИҐ°Э·Г№эЕуУСБЛ.№ЕІ©А­ТІИҐВр?М«єГБЛ,Из№ыКОЖ·ЙМИЛЎ¤Ир¶чТІДЬІОјУ,ДЗЅ«КЗТ»ёцНкГАµДКҐµ®ЅЪ.")
				
	MisBeginCondition(NoMission, 1190)
	MisBeginCondition(NoRecord,1190)
	MisBeginCondition(HasRecord, 1189)
	MisBeginAction(AddMission,1190)
	MisCancelAction(ClearMission, 1190)

	MisNeed(MIS_NEED_DESP, "ХТ±щј«І№ёшХѕµДКОЖ·ЙМИЛЎ¤Ир¶ч(2673,657)БДБД")
	
	MisHelpTalk("<t>Из№ыИр¶чІ»ИҐµД»°ОТ»бѕхµГТЕє¶µД,ПЈНыДгїЙТФ°пОТ.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№12--------КОЖ·ЙМИЛЎ¤Ир¶ч
	DefineMission(5712, "Посол мира 12", 1190, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>№ю№ю№ю,ГЧЛчСЗЛ№ХвёцјТ»пЧЬКЗЛµХвР©ИГИЛёР¶ЇµД»°.МЦСбА­.")
	MisResultCondition(NoRecord, 1190)
	MisResultCondition(HasMission,1190)
	MisResultAction(ClearMission,1190)
	MisResultAction(SetRecord, 1190)


	----------------------------------------------------------ЙзЅ»ґуК№13----------КОЖ·ЙМИЛЎ¤Ир¶ч
	DefineMission( 5713, "Посол мира 13", 1191 )
	MisBeginTalk("<t>їЙДЬКЗ¶аДкѕ­УЄЦй±¦КОЖ·К№ОТµДРФёсТІЕ®РФ»ЇБЛ.ОЄБЛИГЧФјєКјЦХ±ЈіЦДРЧУµДСфёХ,¶аДкАґОТКјЦХУлДРИЛО¶К®ЧгµДїЁРЭЎ¤ЛйКЇ±ЈіЦБЄВз.")
				
	MisBeginCondition(NoMission, 1191)
	MisBeginCondition(NoRecord,1191)
	MisBeginCondition(HasRecord, 1190)
	MisBeginAction(AddMission,1191)
	MisCancelAction(ClearMission, 1191)

	MisNeed(MIS_NEED_DESP, "ХТїЁ¶ыјУµВІ№ёшХѕµДїЁРЭЎ¤ЛйКЇ(626,2100)БДБД")
	
	MisHelpTalk("<t>ДгїЙТФЛі±гµЅїЁ¶ыјУµВІ№ёшХѕЧЄЧЄ,ДЗАпµДКч»бЧЯВ·µД.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№13--------їЁРЭЎ¤ЛйКЇ
	DefineMission(5714, "Посол мира 13", 1191, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ХвАпІ»КЗТ»ёцККєПИЛАаѕУЧЎµДµШ·Ѕ,УИЖдКЗµ±ДгІ»ПІ»¶ДгµДБЪѕУК±,ХвЦЦёРѕхѕНёьЗїБТ.")
	MisResultCondition(NoRecord, 1191)
	MisResultCondition(HasMission,1191)
	MisResultAction(ClearMission,1191)
	MisResultAction(SetRecord, 1191)

	----------------------------------------------------------ЙзЅ»ґуК№14----------їЁРЭЎ¤ЛйКЇ
	DefineMission( 5715, "Посол мира 14", 1192 )
	MisBeginTalk("<t>УРѕЫ»бїЙТФІОјУ?ЛдИ»»№УРєЬѕГІЕµЅКҐµ®ЅЪ,µ«КЗМэµЅХвёцПыПўИФИ»ИГОТѕхµГєЬХс·Ь,ЦБЙЩїЙТФФ¶АлДіёцИЛ.ОТПлЅ»ТЧФ±Ў¤УИїЁТІПлЅвНСµД,І»ИзДгИҐОКПВЛы.")
				
	MisBeginCondition(NoMission, 1192)
	MisBeginCondition(NoRecord,1192)
	MisBeginCondition(HasRecord, 1191)
	MisBeginAction(AddMission,1192)
	MisCancelAction(ClearMission, 1192)

	MisNeed(MIS_NEED_DESP, "Talk to Trader - Yuka (2519, 2397) at Cupid Isle ")
	
	MisHelpTalk("<t>Хж°®µєµДµШРОКЗРДРОµД,ДгЦЄµАВр?")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№14--------Ѕ»ТЧФ±Ў¤УИїЁ        
	DefineMission(5716, "Посол мира 14", 1192, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгєНїЁРЭЎ¤ЛйКЇХжКЗОТµДѕИРЗ°ЎЈ®ОТФЪ¶гОТµДХ®Цч,ОТіРИПОТІ»КЗТ»ёціЙ№¦µДЅ»ТЧФ±,ЧЬКЗЧцЕв±ѕµДЙъТв.Чоє¦ЕВ№эКҐµ®ЅЪУРИЛ±ЖХ®БЛ.")
	MisResultCondition(NoRecord, 1192)
	MisResultCondition(HasMission,1192)
	MisResultAction(ClearMission,1192)
	MisResultAction(SetRecord, 1192)

	----------------------------------------------------------ЙзЅ»ґуК№15----------Ѕ»ТЧФ±Ў¤УИїЁ
	DefineMission( 5717, "Посол мира 15", 1193 )
	MisBeginTalk("<t>їЄЛЅИЛѕЫ»бГ»УРПсСщµДµгРДїЙІ»РР,ОЄБЛДЗёцГАєГµДНнЙП,ОТИПОЄДгУ¦ёГ°пОТГЗСыЗл»бЧчГАО¶µгРДµДУИЛюАпДб.")
				
	MisBeginCondition(NoMission, 1193)
	MisBeginCondition(NoRecord,1193)
	MisBeginCondition(HasRecord, 1192)
	MisBeginAction(AddMission,1193)
	MisCancelAction(ClearMission, 1193)

	MisNeed(MIS_NEED_DESP, "ХТ°ўАј±ИЛ№І№ёшХѕµДУИЛюАпДб(1059,661)БДБД")
	
	MisHelpTalk("<t>°ЭНРДгБЛ,ОЄБЛГАО¶µДµгРД.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№15-------- УИЛюАпДб
	DefineMission(5718, "Посол мира 15", 1193, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДЗР©ДкЗбµДѕЫ»бСыЗлОТУ¦ёГКЗТтОЄГАО¶µДµгРД.")
	MisResultCondition(NoRecord, 1193)
	MisResultCondition(HasMission,1193)
	MisResultAction(ClearMission,1193)
	MisResultAction(SetRecord, 1193)


	----------------------------------------------------------ЙзЅ»ґуК№16----------УИЛюАпДб
	DefineMission( 5719, "Посол мира 16", 1194 )
	MisBeginTalk("<t>їґјыОТШюЩНµДСьёЛБЛВр?ОТТСѕ­І»ЧцµгРДБЛ,·ПїуІ№ёшХѕµДґт°ьИЛЎ¤єхАХґпКЗОТµДС§НЅ,ДгИҐ°ЭНРЛы°Й.")
				
	MisBeginCondition(NoMission, 1194)
	MisBeginCondition(NoRecord,1194)
	MisBeginCondition(HasRecord, 1193)
	MisBeginAction(AddMission,1194)
	MisCancelAction(ClearMission, 1194)

	MisNeed(MIS_NEED_DESP, "ХТ·ПїуІ№ёшХѕµДґт°ьИЛЎ¤єхАХґп(1907,2798)БДБД")
	
	MisHelpTalk("<t>ТІёГКЗ¶НБ¶ЛыµДК±єтБЛ.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№16-------- ґт°ьИЛЎ¤єхАХґп
	DefineMission(5720, "Посол мира 16", 1194, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТµДИ·јМіРБЛОТАПК¦µДѕ«ХїјјТХ,·ЕРД°Й,°ьФЪОТЙнЙП.")
	MisResultCondition(NoRecord, 1194)
	MisResultCondition(HasMission,1194)
	MisResultAction(ClearMission,1194)
	MisResultAction(SetRecord, 1194)


	----------------------------------------------------------ЙзЅ»ґуК№17----------ґт°ьИЛЎ¤єхАХґп
	DefineMission( 5721, "Посол мира 17", 1195 )
	MisBeginTalk("<t>І»№эОТРиТЄТ»ёцОВИбµДЦъКЦ°пГ¦.Из№ыГЧ¶ыГЧАтІ»Г¦µД»°,ЛыУ¦ёГКЗЧојСИЛСЎ.")
				
	MisBeginCondition(NoMission, 1195)
	MisBeginCondition(NoRecord,1195)
	MisBeginCondition(HasRecord, 1194)
	MisBeginAction(AddMission,1195)
	MisCancelAction(ClearMission, 1195)

	MisNeed(MIS_NEED_DESP, "ХТДПІїЙіД®µДГЧ¶ыГЧАт(1244,3186)БДБД")
	
	MisHelpTalk("<t>ГЧ¶ыГЧАтКЗТ»ёцєЬПёРДІўЗТєЬУРДНРДµДЕ®єў.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№17-------- ГЧ¶ыГЧАт
	DefineMission(5722, "Посол мира 17", 1195, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгєГ!»¶У­ДгЕуУС.ОТЅУКЬєхАХґпµДФЮСп,ТтОЄОТ¶Ф№¤ЧчєНЙъ»о¶јКЗХвСщИПХжµД.")
	MisResultCondition(NoRecord, 1195)
	MisResultCondition(HasMission,1195)
	MisResultAction(ClearMission,1195)
	MisResultAction(SetRecord, 1195)

	----------------------------------------------------------ЙзЅ»ґуК№18----------ГЧ¶ыГЧАт
	DefineMission( 5723, "Посол мира 18", 1196 )
	MisBeginTalk("<t>ЅсМмКЗОТАґµЅХвЖ¬ГО»ГµДДПІїЙіД®Т»ЦЬДкµДјНДоИХ,ТЄФхГґЗмЧЈДШ?ОТПлЧоЦШТЄµДКЗТЄёРР»єЈёЫЦё»УЎ¤А­ГЧРЮ,КЗЛыЦёТэОТАґµЅХвАпµД.їЙКЗОТКµФЪЧЯІ»їЄ,ОТПЦФЪКЗЦ°ТµАПК¦µДЧЁЦ°ГШКйДШ.ДгДЬМеБВОТ°Й.")
				
	MisBeginCondition(NoMission, 1196)
	MisBeginCondition(NoRecord,1196)
	MisBeginCondition(HasRecord, 1195)
	MisBeginAction(AddMission,1196)
	MisCancelAction(ClearMission, 1196)

	MisNeed(MIS_NEED_DESP, "Talk to Harbor Operator - Ramus (2297, 3723) at Muse Haven")
	
	MisHelpTalk("<t>ОТИИ°®ОТµД№¤ЧчєНЙъ»о,ёРР»ХвЖ¬ГААцµДНБµШ.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№18-------- єЈёЫЦё»УЎ¤А­ГЧРЮ
	DefineMission(5724, "Посол мира 18", 1196, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>К±јд№эµГєГїм°Ў.ЧЄСЫТСѕ­Т»ДкБЛ,ДЗёцРЎЕ®єўѕУИ»»№јЗµГОТ.єЗєЗ....")
	MisResultCondition(NoRecord, 1196)
	MisResultCondition(HasMission,1196)
	MisResultAction(ClearMission,1196)
	MisResultAction(SetRecord, 1196)

	----------------------------------------------------------ЙзЅ»ґуК№19----------єЈёЫЦё»УЎ¤А­ГЧРЮ
	DefineMission( 5725, "Посол мира 19", 1197 )
	MisBeginTalk("<t>К±№в·ЙКЕ,ОТёХµЅХвАпµДК±єт»№КЗТ»ёцРЎ»пЧУ.єЬ»іДоґУЗ°µДАПЕуУС.І»ЦЄµАМмМГґ«ЛНК№ПЦФЪ№эµГФхГґСщБЛ.")
				
	MisBeginCondition(NoMission, 1197)
	MisBeginCondition(NoRecord,1197)
	MisBeginCondition(HasRecord, 1196)
	MisBeginAction(AddMission,1197)
	MisCancelAction(ClearMission, 1197)

	MisNeed(MIS_NEED_DESP, "Look for Heaven Teleporter at (474, 1054)")
	
	MisHelpTalk("<t>ЛыµДЦ°О»КЗТ»ёцєЬЦШТЄµДО»ЦГ.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№19-------- МмМГґ«ЛНК№
	DefineMission(5726, "Посол мира 19", 1197, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>І»ЦЄµАМмМГЙПµДК±№вКЗ·сТІИзґЛБчКЕОЮУ°.")
	MisResultCondition(NoRecord, 1197)
	MisResultCondition(HasMission,1197)
	MisResultAction(ClearMission,1197)
	MisResultAction(SetRecord, 1197)


		----------------------------------------------------------ЙзЅ»ґуК№20----------МмМГґ«ЛНК№
	DefineMission( 5727, "Посол мира 20", 1198 )
	MisBeginTalk("<t>ОТПлЅсДкµДКҐµ®ЅЪТ»¶Ё»бєЬГА,ЙЈјЄ»№ґрУ¦ЛНёшОТТ»Р©»ЄАцµДСМ»ЁДШ,І»ЦЄµАЛы»№јЗІ»јЗµГБЛ.")
				
	MisBeginCondition(NoMission, 1198)
	MisBeginCondition(NoRecord,1198)
	MisBeginCondition(HasRecord, 1197)
	MisBeginAction(AddMission,1198)
	MisCancelAction(ClearMission, 1198)

	MisNeed(MIS_NEED_DESP, "ХТЅ»ТЧФ±Ў¤ЙЈјЄ(1003,1306)БДБД")
	
	MisHelpTalk("<t>Thank you, go now.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»ґуК№20-------- Ѕ»ТЧФ±Ў¤ЙЈјЄ
	DefineMission(5728, "Посол мира 20", 1198, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТФхГґ»бНьјЗДШ?ЛыЧЬКЗ°пЦъ±рИЛ,ОТІ»»бИГЛыК§НыµД.")
	MisResultCondition(NoRecord, 1198)
	MisResultCondition(HasMission,1198)
	MisResultAction(ClearMission,1198)
	MisResultAction(SetRecord, 1198)

		----------------------------------------------------------ЙзЅ»ґуК№21----------Ѕ»ТЧФ±Ў¤ЙЈјЄ
	DefineMission( 5729, "Посол мира 21", 1199 )
	MisBeginTalk("<t>№§ПІДгНкіЙБЛВюі¤µДЙзЅ»ИООсЈ®ёР¶чКЗГїТ»ёцИИ°®Йъ»оµДИЛМШУРµДДЬБ¦,ТтОЄУµУРЛь,ИЛГЗ»бѕхµГРТёЈ.І»µўОуДгµДК±јдБЛ,µВїЛФЪµИДгБЛ.")
				
	MisBeginCondition(NoMission, 1199)
	MisBeginCondition(NoRecord,1199)
	MisBeginCondition(HasRecord, 1198)
	MisBeginAction(AddMission,1199)
	MisCancelAction(ClearMission, 1199)

	MisNeed(MIS_NEED_DESP, "ХТЙіб°іЗєЈµБЎ¤µВїЛ(794,3669)БДБД")
	
	MisHelpTalk("<t>µВїЛУРАсОпёшДг.")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------ЙзЅ»УўРЫ21------- єЈµБЎ¤µВїЛ
	DefineMission(5730, "Главный герой 21", 1199, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгКЗОТјы№эµДЧоіцЙ«µДЙзЅ»ґуК№,ХвГ¶С«ХВДгКЬЦ®ОЮАў.")
	MisResultCondition(NoRecord, 1199)
	MisResultCondition(HasMission,1199)
	MisResultAction(ClearMission,1199)
	MisResultAction(SetRecord, 1199)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1879, 1, 4)
	MisResultBagNeed(1)


-------------------------------------------------МШ±рИООс	--------єЈµБЎ¤µВїЛ
	DefineMission (5731, "Мифические Близнецы - Особые Действия", 1200)
	
	MisBeginTalk("<t>ХвёцИООсКЗЅрЕЈ№¬МШ±рРР¶Ї,ДгїЙТФІ»ІОјУ,µ±И»І»ІОјУµДГ»УРАсОпДГ.ДгЦЄµА<b°ЩНтґуі®>ХвЦЦ¶«ОчВр?ОТј±РиТ»ХЕ,ДгТ»¶ЁФёТв°пОТµДКЗ°Й.")

	MisBeginCondition(NoMission,1200)
	MisBeginCondition(NoRecord,1200)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(HasRecord,1174)
	MisBeginCondition(HasRecord,1175)
	MisBeginCondition(HasRecord,1176)
	MisBeginCondition(HasRecord,1177)
	MisBeginCondition(HasRecord,1178)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(HasRecord,1168)
	MisBeginAction(AddMission,1200)
	MisBeginAction(AddTrigger, 12001, TE_GETITEM, 0854, 1 )---------------------°ЩНтґуі® 
	MisCancelAction(ClearMission, 1200)
	
	
	MisNeed(MIS_NEED_ITEM, 0854, 1, 1, 1 )
	MisHelpTalk("<t>ОТІ»КЗТ»ёц°®З®µДИЛ,µ«КЗПІ»¶КХІШі®Ж±...")

	MisResultTalk("<t>ОТЧоРАЙНДгХвЦЦґу·ЅµДИЛ,ТІЦ»УРґу·ЅµДИЛЕдґ©ХвМЧЛ«ЧУїбЧ°.")

	MisResultCondition(HasMission, 1200)
	MisResultCondition(NoRecord,1200)
	MisResultCondition(HasItem, 0854, 1 )
	MisResultAction(TakeItem, 0854, 1 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1881, 1, 4)
	MisResultAction(ClearMission, 1200)
	MisResultAction(SetRecord,  1200 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 0854)	
	TriggerAction( 1, AddNextFlag, 1200, 1, 1 )
	RegCurTrigger( 12001 )	


	
-------------------------------------------------Л«ЧУЦ®Л®КЦ№э№ШЅ±Аш----------єЈµБЎ¤µВїЛ	
	DefineMission (5733, "Награда Близнецов за Испытание Моряка", 1201)
	
	MisBeginTalk("<t>јЇЖл7Г¶С«ХВѕНїЙТФФЪОТХвАп¶Т»»µЅЛ«ЧУ№¬КШУЎєНѕЮР·№¬µДГЕЖ±БЛ.»№УРєЬ¶аЅ±АшЕ¶ ")

	MisBeginCondition(NoMission,1201)
	MisBeginCondition(HasRecord,1159)
	MisBeginCondition(HasRecord,1163)
	MisBeginCondition(HasRecord,1164)
	MisBeginCondition(HasRecord,1165)
	MisBeginCondition(HasRecord,1166)
	MisBeginCondition(HasRecord,1167)
	MisBeginCondition(HasRecord,1168)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(NoRecord,1201)
	MisBeginAction(AddMission,1201)  
	MisBeginAction(AddTrigger, 12011, TE_GETITEM, 1874, 1 )		
	MisBeginAction(AddTrigger, 12012, TE_GETITEM, 1875, 1 )		
	MisBeginAction(AddTrigger, 12013, TE_GETITEM, 1876, 1 )		
 	MisBeginAction(AddTrigger, 12014, TE_GETITEM, 1877, 1 )		
	MisBeginAction(AddTrigger, 12015, TE_GETITEM, 1878, 1 )		
	MisBeginAction(AddTrigger, 12016, TE_GETITEM, 1879, 1 )		
	MisBeginAction(AddTrigger, 12017, TE_GETITEM, 1880, 1 )	
	MisCancelAction(ClearMission, 1201)						                                     
	
	MisNeed(MIS_NEED_ITEM, 1874, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1875, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 1876, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 1877, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 1878, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 1879, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 1880, 1, 70, 1 )
	
	MisHelpTalk("<t>What are you still waiting for? Come now to exchange for prizes")
	MisResultTalk("<t>ПВТ»№¬КЗѕЮР·№¬,УРёьУХИЛµДЅ±АшєНёьґМј¤µДМфХЅФЪµИДг.")

	MisResultCondition(HasMission, 1201)
	MisResultCondition(NoRecord,1201)
	MisResultCondition(HasItem, 1874, 1 )
	MisResultCondition(HasItem, 1875, 1 )
	MisResultCondition(HasItem, 1876, 1 )
	MisResultCondition(HasItem, 1877, 1 )
	MisResultCondition(HasItem, 1878, 1 )
	MisResultCondition(HasItem, 1879, 1 )
	MisResultCondition(HasItem, 1880, 1 )

	MisResultAction(TakeItem, 1874, 1 )
	MisResultAction(TakeItem, 1875, 1 )
	MisResultAction(TakeItem, 1876, 1 )
	MisResultAction(TakeItem, 1877, 1 )
	MisResultAction(TakeItem, 1878, 1 )
	MisResultAction(TakeItem, 1879, 1 )
	MisResultAction(TakeItem, 1880, 1 )

	MisResultAction(ClearMission, 1201)
	MisResultAction(SetRecord,  1201 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1865, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1866, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1002, 30, 4)
	MisResultAction(AddMoney,500000,500000)
	MisResultAction(ShuangZiSS)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1201, 10, 1 )
	RegCurTrigger( 12011 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1201, 20, 1 )
	RegCurTrigger( 12012 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1201, 30, 1 )
	RegCurTrigger( 12013 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1201, 40, 1 )
	RegCurTrigger( 12014 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1201, 50, 1 )
	RegCurTrigger( 12015 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1201, 60, 1 )
	RegCurTrigger( 12016 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1201, 70, 1 )
	RegCurTrigger( 12017 )
----------------------------------------------Л«ЧУЦ®єЈµБ№э№ШЅ±Аш----------єЈµБЎ¤µВїЛ	
	DefineMission (5734, "Награда Близнецов за Испытание Пирата", 1202)
	
	MisBeginTalk("<t>јЇЖл7Г¶С«ХВѕНїЙТФФЪОТХвАп¶Т»»µЅЛ«ЧУ№¬КШУЎєНѕЮР·№¬µДГЕЖ±БЛ.»№УРєЬ¶аЅ±АшЕ¶ ")

	MisBeginCondition(NoMission,1202)
	MisBeginCondition(HasRecord,1204)
	MisBeginCondition(HasRecord,1169)
	MisBeginCondition(HasRecord,1170)
	MisBeginCondition(HasRecord,1171)
	MisBeginCondition(HasRecord,1172)
	MisBeginCondition(HasRecord,1173)
	MisBeginCondition(HasRecord,1168)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(NoRecord,1202)
	MisBeginAction(AddMission,1202)
	MisBeginAction(AddTrigger, 11571, TE_GETITEM, 1874, 1 )		
	MisBeginAction(AddTrigger, 11572, TE_GETITEM, 1875, 1 )		
	MisBeginAction(AddTrigger, 11573, TE_GETITEM, 1876, 1 )		
 	MisBeginAction(AddTrigger, 11574, TE_GETITEM, 1877, 1 )		
	MisBeginAction(AddTrigger, 11575, TE_GETITEM, 1878, 1 )		
	MisBeginAction(AddTrigger, 11576, TE_GETITEM, 1879, 1 )		
	MisBeginAction(AddTrigger, 11577, TE_GETITEM, 1880, 1 )		
	MisCancelAction(ClearMission, 1202)						                                     
	
	MisNeed(MIS_NEED_ITEM, 1874, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1875, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 1876, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 1877, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 1878, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 1879, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 1880, 1, 70, 1 )
	
	MisHelpTalk("<t>What are you still waiting for? Come now to exchange for prizes")
	MisResultTalk("<t>ПВТ»№¬КЗѕЮР·№¬,УРёьУХИЛµДЅ±АшєНёьґМј¤µДМфХЅФЪµИДг.")

	MisResultCondition(HasMission, 1202)
	MisResultCondition(NoRecord,1202)
	MisResultCondition(HasItem, 1874, 1 )
	MisResultCondition(HasItem, 1875, 1 )
	MisResultCondition(HasItem, 1876, 1 )
	MisResultCondition(HasItem, 1877, 1 )
	MisResultCondition(HasItem, 1878, 1 )
	MisResultCondition(HasItem, 1879, 1 )
	MisResultCondition(HasItem, 1880, 1 )

	MisResultAction(TakeItem, 1874, 1 )
	MisResultAction(TakeItem, 1875, 1 )
	MisResultAction(TakeItem, 1876, 1 )
	MisResultAction(TakeItem, 1877, 1 )
	MisResultAction(TakeItem, 1878, 1 )
	MisResultAction(TakeItem, 1879, 1 )
	MisResultAction(TakeItem, 1880, 1 )

	MisResultAction(ClearMission, 1202)
	MisResultAction(SetRecord,  1202 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1865, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1866, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1002, 60, 4)
	MisResultAction(AddMoney,700000,700000)
	MisResultAction(ShuangZiHD)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1157, 10, 1 )
	RegCurTrigger( 12021 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1202, 20, 1 )
	RegCurTrigger( 12022 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1202, 30, 1 )
	RegCurTrigger( 12023 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1202, 40, 1 )
	RegCurTrigger( 12024 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1202, 50, 1 )
	RegCurTrigger( 12025 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1202, 60, 1 )
	RegCurTrigger( 12026 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1202, 70, 1 )
	RegCurTrigger( 12027 )

	--------------------------------------------Л«ЧУЦ®ґ¬і¤№э№ШЅ±Аш----------єЈµБЎ¤µВїЛ	
	DefineMission (5735, "Вознаграждение капитана Близнецов за выполнение задания", 1203)
	
	MisBeginTalk("<t>јЇЖл7Г¶С«ХВѕНїЙТФФЪОТХвАп¶Т»»µЅЛ«ЧУ№¬КШУЎєНѕЮР·№¬µДГЕЖ±БЛ.»№УРєЬ¶аЅ±АшЕ¶ ")

	MisBeginCondition(NoMission,1203)
	MisBeginCondition(HasRecord,1161)
	MisBeginCondition(HasRecord,1174)
	MisBeginCondition(HasRecord,1175)
	MisBeginCondition(HasRecord,1176)
	MisBeginCondition(HasRecord,1177)
	MisBeginCondition(HasRecord,1178)
	MisBeginCondition(HasRecord,1199)
	MisBeginCondition(HasRecord,1168)
	MisBeginCondition(NoRecord,1203)
	MisBeginAction(AddMission,1203)   
	MisBeginAction(AddTrigger, 11581, TE_GETITEM, 1874, 1 )		
	MisBeginAction(AddTrigger, 11582, TE_GETITEM, 1875, 1 )		
	MisBeginAction(AddTrigger, 11583, TE_GETITEM, 1876, 1 )		
 	MisBeginAction(AddTrigger, 11584, TE_GETITEM, 1877, 1 )		
	MisBeginAction(AddTrigger, 11585, TE_GETITEM, 1878, 1 )		
	MisBeginAction(AddTrigger, 11586, TE_GETITEM, 1879, 1 )		
	MisBeginAction(AddTrigger, 11587, TE_GETITEM, 1880, 1 )	
	MisCancelAction(ClearMission, 1203)						                                     
	
	MisNeed(MIS_NEED_ITEM, 1874, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 1875, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 1876, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 1877, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 1878, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 1879, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 1880, 1, 70, 1 )
	
	MisHelpTalk("<t>What are you still waiting for? Come now to exchange for prizes")
	MisResultTalk("<t>ПВТ»№¬КЗѕЮР·№¬,УРёьУХИЛµДЅ±АшєНёьґМј¤µДМфХЅФЪµИДг.")

	MisResultCondition(HasMission, 1203)
	MisResultCondition(NoRecord,1203)
	MisResultCondition(HasItem, 1874, 1 )
	MisResultCondition(HasItem, 1875, 1 )
	MisResultCondition(HasItem, 1876, 1 )
	MisResultCondition(HasItem, 1877, 1 )
	MisResultCondition(HasItem, 1878, 1 )
	MisResultCondition(HasItem, 1879, 1 )
	MisResultCondition(HasItem, 1880, 1 )

	MisResultAction(TakeItem, 1874, 1 )
	MisResultAction(TakeItem, 1875, 1 )
	MisResultAction(TakeItem, 1876, 1 )
	MisResultAction(TakeItem, 1877, 1 )
	MisResultAction(TakeItem, 1878, 1 )
	MisResultAction(TakeItem, 1879, 1 )
	MisResultAction(TakeItem, 1880, 1 )

	MisResultAction(ClearMission, 1203)
	MisResultAction(SetRecord,  1203 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1865, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1866, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1002, 90, 4)
	MisResultAction(AddMoney,900000,900000)
	MisResultAction(ShuangZiCZ)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1203, 10, 1 )
	RegCurTrigger( 12031 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1203, 20, 1 )
	RegCurTrigger( 12032 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1203, 30, 1 )
	RegCurTrigger( 12033 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1203, 40, 1 )
	RegCurTrigger( 12034 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1203, 50, 1 )
	RegCurTrigger( 12035 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1203, 60, 1 )
	RegCurTrigger( 12036 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1203, 70, 1 )
	RegCurTrigger( 12037 )

	----------------------------------МмПЙЕдґ«Жж--------ФВАП
	DefineMission ( 5736, "МмПЙЕдґ«Жж", 1205)

	MisBeginTalk("<t>ЖЯП¦Ѕ«ЦБ,їаµИТ»ДкµДЕЈАЙЦЇЕ®јґЅ«Па»б,ХжКЗБоИЛёРї®°Ў.ДгПлТЄМэЕЈАЙУлЦЇЕ®µДМмПЙЕдґ«Жж№ККВВр?УГ10ёцѕ«БйЦ®РДАґЅ»»»°Й.")

	MisBeginCondition(NoMission,1205)
	MisBeginCondition(NoRecord,1205)
	MisBeginAction(AddMission,1205)
	MisBeginAction(AddTrigger, 12051, TE_GETITEM, 4418, 10)
	MisCancelAction(ClearMission, 1205)
	

	MisNeed(MIS_NEED_DESP, "ИҐХТµЅ10ёцѕ«БйЦ®РДУлФВАПЅ»»»¶ЇИЛµД°®Зй№ККВ")
	MisNeed(MIS_NEED_ITEM, 4418, 10, 10, 10)

	MisHelpTalk("<t>ТЄ10ёцѕ«БйЦ®РД")
	MisResultTalk("<t>ОТ±аЦЇ№эОЮКэµДЖаГА№ККВ,µ«ОТ·ўКДХвјюКВУлОТОЮ№Ш.ОТїЙКЗТ»ёцЙЖБјµДАПН·.") 
	
	MisResultCondition(HasMission, 1205)
	MisResultCondition(NoRecord,1205)
	MisResultCondition(HasItem, 4418, 10)
	MisResultAction(TakeItem, 4418, 10 )
	MisResultAction(ClearMission, 1205)
	MisResultAction(SetRecord, 1205 )
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4418)	
	TriggerAction( 1, AddNextFlag, 1205, 10, 10 )
	RegCurTrigger( 12051 )

	-------------------------------ИµЗЕЗйКВ--------ФВАП
	DefineMission( 5737, "ИµЗЕЗйКВ", 1206)
	
	MisBeginTalk( "<t>ФЪєЬѕГєЬѕГТФЗ°......ХвКЗТ»ёцТФЗй№бґ©µД№ККВ.ИЛµДЗйЎўЙсµДЗйЎўЙьБйµДЗйЎўИЛєНЙсµДЗйЎўХэТеµДЗйЎўР°¶сµДЗйЎўЙъФ№µДЗйЎўЖаГАµДЗйЎўЙъЛАПаТАµДЗй......<n><t>ИҐС°ХТ№ККВµДЦчИЛ№«ЕЈАЙ°Й!ѕЭЛµЛыФЪПДµєёЅЅь.")
	MisBeginCondition(HasRecord, 1205 )
	MisBeginCondition(NoRecord, 1206 )
	MisBeginCondition(NoMission, 1206 )
	MisBeginAction(AddMission, 1206 )
	MisCancelAction(ClearMission, 1206)
	
	MisNeed(MIS_NEED_DESP, "ХТµЅПДµєЕЈАЙ(3670,2636)")
	MisHelpTalk("<t>ИҐПДµєТЄУГ»ъЖ±Е¶.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------ИµЗЕЗйКВ-------ЕЈАЙ

	DefineMission(5738,"ИµЗЕЗйКВ",1206,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>ОТјґЅ«УлОТµД°®ИЛјыГж,ХжКЗЖЪґэ°Ў!ТЈПлµ±Дк,ОТГЗАъѕЎЗ§РБНтїа,ЦХУЪ»»АґХвТ»ДкТ»ґОµДПаѕЫ.ЛдИ»¶МФЭ,µ«ТІЦµµГ.")
	MisResultCondition(HasMission, 1206)
	MisBeginCondition(NoRecord, 1206)
	MisResultAction(ClearMission, 1206)
	MisResultAction(SetRecord, 1206)


	-------------------------------З§Апґ«Кй------ЕЈАЙ
	DefineMission( 5739, "З§Апґ«Кй", 1207)
	
	MisBeginTalk( "<t>ВнЙПѕНТЄјыГж,УРЗ§СФНтУпТЄЛµ,ТСѕ­ЖИІ»ј°ґэБЛ.ДъДЬ·сЅ«Хв·вРЕЅ»µЅЦЇЕ®КЦЦР?ЛэФЪМмМГ!РБїаДгБЛ!")
	MisBeginCondition(HasRecord, 1206 )
	MisBeginCondition(NoRecord, 1207 )
	MisBeginCondition(NoMission, 1207 )
	MisBeginAction(AddMission, 1207 )
	MisBeginAction(GiveItem, 2669, 1, 4)----------ЕЈАЙµДЗйКй
	MisCancelAction(ClearMission, 1207)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "°пЕЈАЙЛНРЕёшМмМГµДЦЇЕ®(1599,909)")
	MisHelpTalk("<t>Т»ДкТ»¶ИµДПаѕЫ,¶аїчБЛДЗР©ПІИµ.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------З§Апґ«Кй----ЦЇЕ®

	DefineMission(5740,"З§Апґ«Кй",1207,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>ХвКЗЕЈАЙёшОТµДКйРЕ?М«єГБЛ,КµФЪёРР»Дъ.ЧчОЄ»Ш±Ё,ОТЅ«УГМмЛуОЄДг±аЦЇКАЅзЙПЧоГААцµДТВ·ю.ТІЧЈФёДъДЬХТµЅДъµДЦї°®.ґ©ЙПОТёшДгЧцµДТВ·ю,Т»¶ЁїЙТФІ¶»сЛы(Лэ)µДРД.<n><t>Из№ыДъПлБЛЅвёь¶а№ШУЪОТєНЕЈАЙµД№ККВ,ѕЎЗл№ШЧўјґЅ«ОЄОТГЗіпЕДµДµзКУѕзЎ¶ЕЈАЙЦЇЕ®Ў·.")
	MisResultCondition(HasMission, 1207)
	MisBeginCondition(NoRecord, 1207)
	MisResultCondition(HasItem,2669,1)---------ЕЈАЙµДЗйКй
	MisResultAction(TakeItem, 2669,1)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2670, 1, 4)----------МмТВ±¦Пд
	MisResultAction(ClearMission, 1207)
	MisResultAction(SetRecord, 1207)
	MisResultAction(ClearRecord, 1205 )
	MisResultAction(ClearRecord, 1206 )
	MisResultAction(ClearRecord, 1207 )
	MisResultBagNeed(1)

-------------------------------------------------------°є№уµДС§·С----------АЧЕµРЈі¤
	DefineMission( 6127, "Плата за обучение", 1453)
	MisBeginTalk( "<t>УЦТ»ёцС§ДкїЄКјї©,РЎЕуУСДгПлМеСйЙПС§µДАЦИ¤Вр?ДЗГґ~~єЩєЩ,ПИё¶µгС§·С°Й,ТІІ»№у,Ц»ТЄ2ТЪєЈµБ±ТѕНРРБЛ.КІГґ?ДгГ»З®?ЛгАІЛгАІ,Ц»ТЄДг°пОТАПИЛјТИҐХТ99ёцКіЙсЛ®ЅИ№эАґ°Й,С§·СѕНГвБЛ°Й.")
	MisBeginCondition( NoMission, 1453)
	MisBeginCondition( NoRecord, 1453)
	MisBeginAction( AddMission, 1453)
	MisBeginAction(AddTrigger, 14531, TE_GETITEM, 3909, 99)
	MisCancelAction( ClearMission, 1453)

	MisNeed( MIS_NEED_DESP, "ХТ99ёцКіЙсЛ®ЅИАґёшАЧЕµРЈі¤(2232,2781)")
	MisNeed( MIS_NEED_ITEM, 3909, 99, 10, 99)

	MisHelpTalk( "<t>КіЙсЛ®ЅИµД»°ѕЭЛµУРёцЙсГШµДЙМіЗУРВфЈ¬І»№эјЗµГ°С±і°ьБфіцЧг№»µДїХёс")
	MisResultTalk( "<t>Л®ЅИХжєГіФ,РЎЕуУСХжІ»ґн°Ў!")
	MisResultCondition( HasMission, 1453)
	MisResultCondition( NoRecord, 1453)
	MisResultCondition( HasItem, 3909, 99)
	MisResultAction( ClearMission, 1453)
	MisResultAction( TakeItem, 3909, 99)
	MisResultAction( SetRecord, 1453)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1453, 10, 99 )
	RegCurTrigger( 14531 )

-------------------------------------------------------ёь¶аµДЕуУС----------АЧЕµРЈі¤
	DefineMission( 6128, "Еще друзья", 1454)
	MisBeginTalk( "<t>ИлБЛС§Дг»№ТЄ¶аИПК¶РВ»п°й°Ў,ХвСщ°Й,ИҐИПК¶4ёцЕуУС,И»єуґшЛыГЗАґјыОТ.")
	MisBeginCondition( NoMission, 1454)
	MisBeginCondition( NoRecord, 1454)
	MisBeginCondition( HasRecord, 1453)
	MisBeginAction( AddMission, 1454)
	MisCancelAction( ClearMission, 1454)

	MisNeed( MIS_NEED_DESP, "Чй4ёц¶УУСИ»єу»ШИҐХТАЧЕµРЈі¤(2232,2781)МёМё")
	
	MisHelpTalk( "<t>ИҐЧй4ёц¶УУС°Й!")
	MisResultTalk( "<t>¶чЈ¬»№КЗДкЗбєГ,¶аУР»оБ¦°Ў,ИҐ¶а¶аИПК¶Р©ЕуУС°Й.")
	MisResultCondition( HasMission, 1454)
	MisResultCondition( NoRecord, 1454)
	MisResultCondition( CheckTeam1, 5)					------јмІвУРјёёц¶УУС
	MisResultAction( ClearMission, 1454)
	MisResultAction( SetRecord, 1454)

-------------------------------------------------------МеУэ¶НБ¶----------АЧЕµРЈі¤

	DefineMission( 6129, "Физкультура", 1455)
	MisBeginTalk( "<t>µ±Т»ёцєГС§ЙъЙнМеТІТЄЅЎЅЎїµїµ,ИҐ¶НБ¶ПВПыГр10їГѕ«БйІЭ.")
	MisBeginCondition( NoMission, 1455)
	MisBeginCondition( NoRecord, 1455)
	MisBeginCondition( HasRecord, 1454)
	MisBeginAction( AddMission, 1455)
	MisBeginAction(AddTrigger, 14551, TE_KILL, 75, 10 )
	MisCancelAction( ClearMission, 1455)

	MisNeed( MIS_NEED_DESP, "ИҐПыГр10їГѕ«БйІЭ(2118,2638)єу»ШАґХТАЧЕµРЈі¤.")
	MisNeed( MIS_NEED_KILL, 75, 10, 10, 10)

	MisHelpTalk( "<t>ѕ«БйІЭ°ЧТшіЗГЕїЪѕНУРєЬ¶а.")
	MisResultTalk( "<t>їґАґДгХжµДєЬЅЎЧі.")
	MisResultCondition( HasMission, 1455)
	MisResultCondition( NoRecord, 1455)
	MisResultCondition( HasFlag, 1455, 19)
	MisResultAction( ClearMission, 1455)
	MisResultAction( SetRecord, 1455)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 75 )	
	TriggerAction( 1, AddNextFlag, 1455, 10, 10 )
	RegCurTrigger(14551)

-------------------------------------------------------ИлС§Ц¤Кй----------АЧЕµРЈі¤
	DefineMission( 6130, "Входной билет", 1456)
	MisBeginTalk( "<t>јИИ»С§·СТІЅ»№эБЛ,ЕуУСТІИПК¶БЛ,ДЗХвХЕИлС§Ц¤КйѕНёшДг°Й,І»№эЦ¤КйТІТЄЦЖЧч·СµДВп,ЛгДг±гТЛµг,ёшОТХЕ°ЩНтґуі®ѕНРРБЛ.")
	MisBeginCondition( NoMission, 1456)
	MisBeginCondition( NoRecord, 1456)
	MisBeginCondition( HasRecord, 1455)
	MisBeginAction( AddMission, 1456)
	MisBeginAction(AddTrigger, 14561, TE_GETITEM, 854, 1)
	MisCancelAction( ClearMission, 1456)

	MisNeed( MIS_NEED_DESP, "ХТХЕ°ЩНтґуі®ёшАЧЕµРЈі¤(2232,2781)")
	MisNeed( MIS_NEED_ITEM, 854, 1, 10, 1)

	MisHelpTalk( "<t>ёшОТТ»ХЕ°ЩНтґуі®,ОТѕНёшДгИлС§Ц¤Кй,єЩєЩ")
	MisResultTalk( "<t>З®ДГАґБЛ?ДЗИлС§Ц¤КйёшДг°Й.")
	MisResultCondition( HasMission, 1456)
	MisResultCondition( NoRecord, 1456)
	MisResultCondition( HasItem, 854, 1)
	MisResultAction( ClearMission, 1456)
	MisResultAction( TakeItem, 854, 1)
	MisResultAction( GiveItem, 579, 1, 4)
	MisResultAction( SetRecord, 1456)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 854)	
	TriggerAction( 1, AddNextFlag, 1456, 10, 1 )
	RegCurTrigger( 14561 )

-------------------------------------------------------їЄС§±ЁµЅ----------АЧЕµРЈі¤
	DefineMission( 6131, "Сообщить о наличии при начале нового семестра", 1457)
	MisBeginTalk( "<t>јИИ»С§·СТІЅ»№эБЛЈ¬ЕуУСТІИПК¶БЛЈ¬ДЗѕНґшЧЕХвХЕИлС§Ц¤КйИҐХТ°єАтДИАПК¦(871,3582)±ЁµЅ°ЙЈ¬І»№эЛэїЙДЬ»бїјПВДгЕ¶ЈЎ")
	MisBeginCondition( NoMission, 1457)
	MisBeginCondition( NoRecord, 1457)
	MisBeginCondition( HasRecord, 1456)
	MisBeginAction( AddMission, 1457)
	MisCancelAction( ClearMission, 1457)

	MisNeed( MIS_NEED_DESP, "ґшЧЕИлС§Ц¤КйИҐХТ°єАтДИАПК¦(871,3582)±ЁµЅ")
	MisHelpTalk( "<t>°єАтДИАПК¦ѕНФЪЙіб°(871,3582),±рНьјЗґшИлС§Ц¤Кй№эИҐЕ¶.")
	MisResultCondition( AlwaysFailure )

-------------------------------------------------------їЄС§±ЁµЅ----------°єАтДИАПК¦
	DefineMission( 6132, "Сообщить о наличии при начале нового семестра", 1457, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>ЦЄµАВрЈїУРР©ЙсГШµДОДѕЯѕЭЛµїЙТФµ±ЧцОдЖчК№УГЕ¶.")
	MisResultCondition( HasMission, 1457)
	MisResultCondition( NoRecord, 1457)
	MisResultCondition( HasItem, 579, 1)
	MisResultAction( ClearMission, 1457)
	MisResultAction( SetRecord, 1457)
	
-------------------------------------------------------ИлС§їјКФ----------°єАтДИАПК¦
	DefineMission( 6133, "Входная проверка", 1458)
	MisBeginTalk( "<t>ТЄПлИлС§µД»°ТЄЅУКЬОТµДїјКФВр?ДЗїЙКЗєЬДСµДЕ¶,ГїµАМвДгЦ»УР30ГлµДЛјїјК±јд,Оґґр»тХЯНнґр¶јЛгґрґн.")
	MisBeginCondition( NoMission, 1458)
	MisBeginCondition( NoRecord, 1458)
	MisBeginCondition( HasRecord, 1457)
	MisBeginAction( AddMission, 1458)
	MisCancelAction( ClearMission, 1458)

	MisNeed( MIS_NEED_DESP, "»ШґрНк°єАтДИАПК¦µДИлС§їјКФОКМв")

	MisHelpTalk( "<t>ТЄПл»Шґр¶ФОТµДОКМвµД»°,ДгїЙТЄЧцєГід·ЦµДЧј±ёЕ¶,Ц»УР¶ФОТГЗєЈµБНхµДКАЅзУРТ»¶ЁБЛЅвµДИЛІЕДЬ»ШґріцАґ.")
	MisResultCondition( AlwaysFailure )

-------------------------------------------------------ИлС§їјКФ----------°єАтДИАПК¦
	DefineMission( 6134, "Входная проверка", 1458, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>№§ПІДг,ДгХжµДєЬґПГч,ОТПаРЕДгТ»¶Ё»біЙОЄТ»ёцєГС§ЙъµД,ЧчОЄЅ±Аш,ёшДгТ»ёцґуАс°ь°Й.")
	MisResultCondition( HasMission, 1458)
	MisResultCondition( NoRecord, 1463)
	MisResultCondition( HasRecord, 1461)
	MisResultCondition( CheckRightNum )
	MisResultAction( SetRecord, 1463)
	MisResultAction( SetRecord, 1458)
	MisResultAction( TakeItem, 579, 1)
	MisResultAction( GiveItem, 47, 1, 4)
	MisResultAction( ClearMission, 1458)
	MisResultBagNeed(1)

-------------------------------------------------------ИлС§їјКФ----------°єАтДИАПК¦
	DefineMission( 6135, "Входная проверка", 1458, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>І»ј°ёсЕ¶,І»№эГ»№ШПµ,ОТ»№УРБнНвµДТ»ПоИООсЅ»ёшДг.")
	MisResultCondition( HasMission, 1458)
	MisResultCondition( NoRecord, 1463)
	MisResultCondition( HasRecord, 1461)
	MisResultCondition( CheckErroNum )
	MisResultAction( SetRecord, 1463)
	MisResultAction( SetRecord, 1458)
	MisResultAction( SetRecord, 1460)
	MisResultAction( TakeItem, 579, 1)
	MisResultAction( ClearMission, 1458)

-------------------------------------------------------ХжјЩУСИЛ----------°єАтДИАПК¦
	DefineMission( 6136, "Верный друг", 1464)
	MisBeginTalk( "<t>ОТХвАпУР·вРЕРиТЄДгИҐ°пОТЛНёшЧЎФЪ±щј«µДївА­НРЛ№.ЛыКЗёцєЬПІ»¶їЄНжР¦µДИЛ,ѕ­іЈєН3ёцёъЛыЧФјєТ»ДЈТ»СщµДїюАЬФЪТ»Жр,ДгИз№ыИҐµД»°Т»¶ЁТЄ·ЦЗеіюДДёцКЗХжµД,І»И»»бУРєЬїЙЕВµДКВЗй·ўЙъµД!!»№УР,Лі±гИҐХТ10ХЕКҐС©ЙЅЦ±єЅЖ±ёшївА­НРЛ№")
	MisBeginCondition( NoMission, 1464)
	MisBeginCondition( NoRecord, 1464)
	MisBeginCondition( HasRecord, 1460)
	MisBeginAction( AddMission, 1464)
	MisBeginAction(AddTrigger, 14641, TE_GETITEM, 3050, 10)
	MisBeginAction( GiveItem, 500, 1, 4)
	MisCancelAction( ClearMission, 1464)
	MisBeginBagNeed(1)

	MisNeed( MIS_NEED_DESP, "°С°єАтДИµДРЕ,»№УР10ХЕКҐС©ЙЅ»ъЖ±ЛНИҐёшХжХэµДївА­НРЛ№,ЛыѕНФЪ±щј«І№ёшХѕёЅЅь")
	MisHelpTalk( "<t>ївА­НРЛ№ѕНФЪ±щј«ёЅЅь,І»№эДгТЄЕР¶ПЧјЛыКЗІ»КЗХжµДївА­НРЛ№")
	
	MisResultCondition( AlwaysFailure )

-------------------------------------------------------ХжјЩУСИЛ----------ївА­НРЛ№
	DefineMission( 6137, "Верный друг", 1464, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>ѕУИ»ДЬ·ўПЦОТµДХжЙн,їґАґДгУµУРєЬГфИсµД№ЫІмДЬБ¦єНІ»ХЫІ»ДУµДТгБ¦°Ў,ХвКЗЦµµГЅ±АшµД,ОТПаРЕДгТІТ»¶Ё»бКЗёцєГС§Йъ.")
	MisResultCondition( HasMission, 1464)
	MisResultCondition( NoRecord, 1464)
	MisResultCondition( HasRecord, 1465)
	MisResultCondition( HasItem, 500, 1)
	MisResultCondition( HasItem, 3050, 10)
	MisResultAction( SetRecord, 1464)
	MisResultAction( TakeItem, 500, 1)
	MisResultAction( TakeItem, 3050, 10)
	MisResultAction( ClearMission, 1464)
	MisResultAction( GiveItem, 47, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3050)	
	TriggerAction( 1, AddNextFlag, 1464, 10, 10 )
	RegCurTrigger( 14641 )

	-----------------------------------------ВТ¶·УўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ--------Л®КЦ
	DefineMission (5800, "Рак - Герой Сражений", 1470)
	
	MisBeginTalk("<t>ѕЮР·ЧщµДИЛ,ОВЗй№ЛјТ,ФЪКВТµ·ЅГжТІ¶јДЬ±нПЦіцЧФјєµДІЕДЬ.ХвКЗКфУЪДгµДГО»ГРЗЧщВр?")

	MisBeginCondition(NoMission,1470)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1470)
	MisBeginAction(AddMission,1470)
	MisCancelAction(ClearMission, 1470)
	
	MisNeed(MIS_NEED_DESP, "»сµГ80µгВТ¶·µгКэ")
	MisHelpTalk("<t>ВТ¶·µгКэїЙТФґУВТ¶·°ЧТш»сµГ!")
	MisResultTalk("<t>іЙОЄУўРЫµДµАВ·ЙП±Ш¶Ё»бУРЦЦЦЦЧи°­,ХЅ¶·µДУВЖшЖ¬їМ¶јІ»ДЬ¶ЄК§Е¶.Н¶ИлИ«Б¦ИҐХЅ¶·°Й!")

	MisResultCondition(HasMission, 1470)
	MisResultCondition(NoRecord,1470)
	MisResultCondition(HasFightingPoint,80 )
	MisResultAction(TakeFightingPoint, 80 )
	MisResultAction(ClearMission, 1470)
	MisResultAction(SetRecord,  1470 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2568, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------ГыЙщУўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	--------Л®КЦ
	DefineMission (5801, "ОВЗйѕЮР·Ц®ГыЙщУўРЫ", 1471)
	
	MisBeginTalk("<t>УРДї±кІЕУРЧ·Зу,УРЧ·ЗуІЕУРіЙѕН.ЛщТФОВЗйѕЮР·№¬¶ФДгµДТЄЗуТІёьёЯТ»Р©. ")

	MisBeginCondition(NoMission,1471)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1471)
	MisBeginAction(AddMission,1471)
	MisCancelAction(ClearMission, 1471)
	
	MisNeed(MIS_NEED_DESP, "Obtain 3000 points of reputation")
	MisHelpTalk("<t>їґАґДгµГµЅµДГыЙщ»№І»№»Е¶,ОТПл3000µгГыЙщ¶ФДгАґЛµУ¦ёГІ»КЗОКМв°Й? ")
	MisResultTalk("<t>ХвГ¶ГыЙщС«ХВКЗУГАґјыЦ¤УўРЫµД.")

	MisResultCondition(HasMission, 1471)
	MisResultCondition(NoRecord,1471)
	MisResultCondition(HasCredit,3000 )
	MisResultAction(TakeCredit, 3000 )
	MisResultAction(ClearMission, 1471)
	MisResultAction(SetRecord,  1471 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2569, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------µИј¶УўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	---------Л®КЦ
	DefineMission (5802, "ОВЗйѕЮР·Ц®µИј¶УўРЫ", 1472)
	
	MisBeginTalk("<t>іЙі¤µДµАВ·КЗВюі¤єНјиРБµД,µ«КЗё¶іцТ»¶Ё»бУР»Ш±ЁЕ¶,ИГОТїґїґДгКХ»сБЛКІГґ°Й...")

	MisBeginCondition(NoMission,1472)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1472)
	MisBeginAction(AddMission,1472)
	MisCancelAction(ClearMission, 1472)
	
	MisNeed(MIS_NEED_DESP, "Reached Level 65")
	MisHelpTalk("<t>µ±И»,65ј¶¶ФОТАґЛµІ»іЙОКМв.")
	MisResultTalk("<t>їґАґДгТСѕ­ѕ­АъБЛіЙі¤µДДҐБ·,КХ»сІ»ЙЩЕ¶,ХвГ¶µИј¶С«ХВКЗДгµДБЛ.")

	MisResultCondition(HasMission, 1472)
	MisResultCondition(NoRecord,1472)
	MisResultCondition(LvCheck, ">", 64 )
	MisResultAction(ClearMission, 1472)
	MisResultAction(SetRecord,  1472 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2570, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------ИЩУюУўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	----------Л®КЦ
	DefineMission (5803, "ОВЗйѕЮР·Ц®ИЩУюУўРЫ", 1473)
	
	MisBeginTalk("<t>ЗЧ°®µДЕуУС,УРТ»µгДг±ШРлТЄЦЄµА,єЈµБКАЅзЧоЦШТЄµДѕНКЗИЩУю!ЧжПИОЄґЛё¶іцТ»ЗРУ®µГЧрѕґ,ДгТ»¶ЁТЄјМіРПВИҐ.")

	MisBeginCondition(NoMission,1473)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1473)
	MisBeginAction(AddMission,1473)
	MisCancelAction(ClearMission, 1473)
	
	MisNeed(MIS_NEED_DESP, "»сµГ600µгИЩУюµгКэ")
	MisHelpTalk("<t>ИҐОЄИЩУю¶шХЅ°Й!")
	MisResultTalk("<t>ДгКЗёцєЬІ»ґнµДИЩУюЦ®ЧУ.")

	MisResultCondition(HasMission, 1473)
	MisResultCondition(NoRecord,1473)
	MisResultCondition(HasHonorPoint,600 )
	MisResultAction(TakeHonorPoint, 600 )
	MisResultAction(ClearMission, 1473)
	MisResultAction(SetRecord,  1473 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2571, 1, 4)
	MisResultBagNeed(1)	

	-------------------------------------------------ІЙјЇґуК№----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	----------Л®КЦ	
	DefineMission (5804, "ОВЗйѕЮР·Ц®ІЙјЇґуК№", 1474)
	
	MisBeginTalk("<t>іЙ№¦КЗРиТЄЖЅК±µД»эАЫµДЕ¶!¶ґІмБ¦ТІКЗ№Шјь.ПЦФЪОТРиТЄДгИҐКХјЇТ»Р©¶«Оч... ")

	MisBeginCondition(NoMission,1474)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(NoRecord,1474)
	MisBeginAction(AddMission,1474)
	MisBeginAction(AddTrigger, 14741, TE_GETITEM, 1693, 10 )-------------------Р«јЧ10ёц
	MisBeginAction(AddTrigger, 14742, TE_GETITEM, 2677, 10 )-------------------БґµЇLV1 10          
	MisBeginAction(AddTrigger, 14743, TE_GETITEM, 3909, 1 )-----------------КіЙсЛ®ЅИ1               
	MisBeginAction(AddTrigger, 14744, TE_GETITEM, 2589, 5 )----------------ѕ«БйНх»ФУЎ5               
	MisBeginAction(AddTrigger, 14745, TE_GETITEM, 3094, 5)------------------Е¬Б¦Фц·щЖч5            
	MisBeginAction(AddTrigger, 14746, TE_GETITEM, 3827, 1 )-----------------ЗйЦ®йд1             
	MisCancelAction(ClearMission, 1474)
	

	MisNeed(MIS_NEED_ITEM, 1693, 10,  1, 10 )
	MisNeed(MIS_NEED_ITEM, 2677, 10, 11, 10 )
	MisNeed(MIS_NEED_ITEM, 3909, 1,  21, 1 )
	MisNeed(MIS_NEED_ITEM, 2589, 5,  22, 5 )
	MisNeed(MIS_NEED_ITEM, 3094, 5,  27, 5 )
	MisNeed(MIS_NEED_ITEM, 3827, 1,  32, 1 )
	

	MisHelpTalk("<t>РиТЄµД¶«ОчІ»КЗєЬ¶а,µ«КЗТІІ»КЗДЗГґИЭТЧЕ¶.")
	MisResultTalk("<t>ОпµЅУГК±·ЅєЮЙЩ°Й,»эАЫµД№эіМЛдИ»±ИЅПВй·і,µ«КЗИз№ыТЄЧцёцґуИЛОп,ПёРД»эАЫєН№ЫІм¶јКЗІ»їЙИ±ЙЩµДЕ¶,µ±И»,»№УРі¬ЗїµДДНРДєНТгБ¦!")

	MisResultCondition(HasMission, 1474)
	MisResultCondition(NoRecord,1474)
	MisResultCondition(HasItem, 1693, 10 )
	MisResultCondition(HasItem, 2677, 10 )
	MisResultCondition(HasItem, 3909, 1 )
	MisResultCondition(HasItem, 2589, 5 )
	MisResultCondition(HasItem, 3094, 5 )
	MisResultCondition(HasItem, 3827, 1 )


	MisResultAction(TakeItem, 1693, 10 )
	MisResultAction(TakeItem, 2677, 10 )
	MisResultAction(TakeItem, 3909, 1 )
	MisResultAction(TakeItem, 2589, 5 )
	MisResultAction(TakeItem, 3094, 5 )
	MisResultAction(TakeItem, 3827, 1 )

	MisResultAction(ClearMission, 1474)
	MisResultAction(SetRecord,  1474 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2572, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2576, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1693)	
	TriggerAction( 1, AddNextFlag, 1474, 1, 10 )
	RegCurTrigger( 14741 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2677)	
	TriggerAction( 1, AddNextFlag, 1474, 11, 10 )
	RegCurTrigger( 14742 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1474, 21, 1 )
	RegCurTrigger( 14743 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1474, 22, 5 )
	RegCurTrigger( 14744 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1474, 27, 5 )
	RegCurTrigger( 14745 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3827)	
	TriggerAction( 1, AddNextFlag, 1474,32, 1 )
	RegCurTrigger( 14746 )

	----------------------------------------------------------ѕЮР·Д©ИХ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ
	DefineMission( 5805, "ОВЗйѕЮР·Ц®ѕЮР·Д©ИХ", 1475 )
	MisBeginTalk("<t>BOSSС«ХВКЗЧоѕЯУўРЫЦчТеТвО¶µДЅ±ХВ,ДгТЄµД»°ѕНИҐЙ±µфїЙЕВµДѕЮР·№¬КШ»¤Йс.")
				
	MisBeginCondition(NoMission, 1475)
	MisBeginCondition(HasRecord,1469)
	MisBeginCondition(NoRecord,1475)
	MisBeginAction(AddMission,1475)
	MisBeginAction(AddTrigger, 14751, TE_KILL, 1040, 1)---ѕЮР·КШ»¤ХЯ
	
	MisCancelAction(ClearMission, 1475)

	MisNeed(MIS_NEED_DESP, "І¶Й±ѕЮР·№¬КШ»¤Йс,Д§Е®Ц®єЈ(1637,3751)!")
	MisNeed(MIS_NEED_KILL, 1040,1, 10, 1)
	

	MisResultTalk("<t>µ±ИЛєНу¦Р·ЅбєПЅ«КЗїЙЕВµДФмОп.ЛыµДТ°РДУМИзНв±нТ»СщіуВЄ!")
	MisHelpTalk("<t>ДЗ№ЦОпУµУРЗїУРБ¦µДґуЗЇєН¶сРДµДНЩД­Е¶,ДгТЄРЎРД.")
	MisResultCondition(HasMission,  1475)
	MisResultCondition(HasFlag, 1475, 10)
	MisResultCondition(NoRecord , 1475)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2574, 1, 4 )
	MisResultAction(ClearMission,  1475)
	MisResultAction(SetRecord,  1475 )
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 1040)	
	TriggerAction( 1, AddNextFlag, 1475, 10, 1 )
	RegCurTrigger( 14751 )


	-----------------------------------------ВТ¶·УўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ--------єЈµБ
	DefineMission (5806, "ОВЗйѕЮР·Ц®ВТ¶·УўРЫ", 1476)
	
	MisBeginTalk("<t>ѕЮР·ЧщµДИЛ,ОВЗй№ЛјТ,ФЪКВТµ·ЅГжТІ¶јДЬ±нПЦіцЧФјєµДІЕДЬ.ХвКЗКфУЪДгµДГО»ГРЗЧщВр?")

	MisBeginCondition(NoMission,1476)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1476)
	MisBeginAction(AddMission,1476)
	MisCancelAction(ClearMission, 1476)
	
	MisNeed(MIS_NEED_DESP, "»сµГ150µгВТ¶·µгКэ")
	MisHelpTalk("<t>ВТ¶·µгКэїЙТФґУВТ¶·°ЧТш»сµГ!")
	MisResultTalk("<t>іЙОЄУўРЫµДµАВ·ЙП±Ш¶Ё»бУРЦЦЦЦЧи°­,ХЅ¶·µДУВЖшЖ¬їМ¶јІ»ДЬ¶ЄК§Е¶.Н¶ИлИ«Б¦ИҐХЅ¶·°Й!")

	MisResultCondition(HasMission, 1476)
	MisResultCondition(NoRecord,1476)
	MisResultCondition(HasFightingPoint,150 )
	MisResultAction(TakeFightingPoint, 150 )
	MisResultAction(ClearMission, 1476)
	MisResultAction(SetRecord,  1476 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2568, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------ГыЙщУўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	--------єЈµБ
	DefineMission (5807, "ОВЗйѕЮР·Ц®ГыЙщУўРЫ", 1477)
	
	MisBeginTalk("<t>УРДї±кІЕУРЧ·Зу,УРЧ·ЗуІЕУРіЙѕН.ЛщТФОВЗйѕЮР·№¬¶ФДгµДТЄЗуТІёьёЯТ»Р©. ")

	MisBeginCondition(NoMission,1477)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1477)
	MisBeginAction(AddMission,1477)
	MisCancelAction(ClearMission, 1477)
	
	MisNeed(MIS_NEED_DESP, "»сµГ6000µгГыЙщµгКэ")
	MisHelpTalk("<t>їґАґДгµГµЅµДГыЙщ»№І»№»Е¶,ОТПл6000µгГыЙщ¶ФДгАґЛµУ¦ёГІ»КЗОКМв°Й? ")
	MisResultTalk("<t>ХвГ¶ГыЙщС«ХВКЗУГАґјыЦ¤УўРЫµД.")

	MisResultCondition(HasMission, 1477)
	MisResultCondition(NoRecord,1477)
	MisResultCondition(HasCredit,6000 )
	MisResultAction(TakeCredit, 6000 )
	MisResultAction(ClearMission, 1477)
	MisResultAction(SetRecord,  1477 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2569, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------µИј¶УўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	---------єЈµБ
	DefineMission (5808, "ОВЗйѕЮР·Ц®µИј¶УўРЫ", 1600)
	
	MisBeginTalk("<t>іЙі¤µДµАВ·КЗВюі¤єНјиРБµД,µ«КЗё¶іцТ»¶Ё»бУР»Ш±ЁЕ¶,ИГОТїґїґДгКХ»сБЛКІГґ°Й...")

	MisBeginCondition(NoMission,1600)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1600)
	MisBeginAction(AddMission,1600)
	MisCancelAction(ClearMission, 1600)
	
	MisNeed(MIS_NEED_DESP, "µИј¶ґпµЅ70ј¶")
	MisHelpTalk("<t>µ±И»,70ј¶¶ФОТАґЛµІ»іЙОКМв.")
	MisResultTalk("<t>їґАґДгТСѕ­ѕ­АъБЛіЙі¤µДДҐБ·,КХ»сІ»ЙЩЕ¶,ХвГ¶µИј¶С«ХВКЗДгµДБЛ.")

	MisResultCondition(HasMission, 1600)
	MisResultCondition(NoRecord,1600)
	MisResultCondition(LvCheck, ">", 69 )
	MisResultAction(ClearMission, 1600)
	MisResultAction(SetRecord,  1600 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2570, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ИЩУюУўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	----------єЈµБ
	DefineMission (5809, "ОВЗйѕЮР·Ц®ИЩУюУўРЫ", 1479)
	
	MisBeginTalk("<t>ЗЧ°®µДЕуУС,УРТ»µгДг±ШРлТЄЦЄµА,єЈµБКАЅзЧоЦШТЄµДѕНКЗИЩУю!ЧжПИОЄґЛё¶іцТ»ЗРУ®µГЧрѕґ,ДгТ»¶ЁТЄјМіРПВИҐ.")

	MisBeginCondition(NoMission,1479)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1479)
	MisBeginAction(AddMission,1479)
	MisCancelAction(ClearMission, 1479)
	
	MisNeed(MIS_NEED_DESP, "»сµГ900µгИЩУюµгКэ")
	MisHelpTalk("<t>ИҐОЄИЩУю¶шХЅ°Й!")
	MisResultTalk("<t>ДгКЗёцєЬІ»ґнµДИЩУюЦ®ЧУ.")

	MisResultCondition(HasMission, 1479)
	MisResultCondition(NoRecord,1479)
	MisResultCondition(HasHonorPoint,900 )
	MisResultAction(TakeHonorPoint, 900 )
	MisResultAction(ClearMission, 1479)
	MisResultAction(SetRecord,  1479 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2571, 1, 4)
	MisResultBagNeed(1)	

	-------------------------------------------------ІЙјЇґуК№----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	----------єЈµБ	
	DefineMission (5810, "ОВЗйѕЮР·Ц®ІЙјЇґуК№", 1480)
	
	MisBeginTalk("<t>іЙ№¦КЗРиТЄЖЅК±µД»эАЫµДЕ¶!¶ґІмБ¦ТІКЗ№Шјь.ПЦФЪОТРиТЄДгИҐКХјЇТ»Р©¶«Оч... ")

	MisBeginCondition(NoMission,1480)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(NoRecord,1480)
	MisBeginAction(AddMission,1480)
	MisBeginAction(AddTrigger, 14801, TE_GETITEM, 1693, 20 )-------------------Р«јЧ20ёц
	MisBeginAction(AddTrigger, 14802, TE_GETITEM, 2677, 20 )-------------------БґµЇLV1 20ёц          
	MisBeginAction(AddTrigger, 14803, TE_GETITEM, 3909, 5 )-----------------КіЙсЛ®ЅИ5ёц               
	MisBeginAction(AddTrigger, 14804, TE_GETITEM, 2589, 5 )----------------ѕ«БйНх»ФУЎ5               
	MisBeginAction(AddTrigger, 14805, TE_GETITEM, 3094, 10)------------------Е¬Б¦Фц·щЖч10ёц         
	MisBeginAction(AddTrigger, 14806, TE_GETITEM, 3827, 1 )-----------------ЗйЦ®йд1     
	MisBeginAction(AddTrigger, 14807, TE_GETITEM, 0271, 1 )-----------------МмК№ч»ЧУ1ёц         
	MisCancelAction(ClearMission, 1480)
	

	MisNeed(MIS_NEED_ITEM, 1693, 20,  1, 20 )
	MisNeed(MIS_NEED_ITEM, 2677, 20, 21, 20 )
	MisNeed(MIS_NEED_ITEM, 3909, 5,  41, 5 )
	MisNeed(MIS_NEED_ITEM, 2589, 5,  46, 5 )
	MisNeed(MIS_NEED_ITEM, 3094, 10, 51, 10 )
	MisNeed(MIS_NEED_ITEM, 3827, 1,  61, 1 )
	MisNeed(MIS_NEED_ITEM, 0271, 1,  62, 1 )

	MisHelpTalk("<t>РиТЄµД¶«ОчІ»КЗєЬ¶а,µ«КЗТІІ»КЗДЗГґИЭТЧЕ¶.")
	MisResultTalk("<t>ОпµЅУГК±·ЅєЮЙЩ°Й,»эАЫµД№эіМЛдИ»±ИЅПВй·і,µ«КЗИз№ыТЄЧцёцґуИЛОп,ПёРД»эАЫєН№ЫІм¶јКЗІ»їЙИ±ЙЩµДЕ¶,µ±И»,»№УРі¬ЗїµДДНРДєНТгБ¦!")

	MisResultCondition(HasMission, 1480)
	MisResultCondition(NoRecord,1480)
	MisResultCondition(HasItem, 1693, 20 )
	MisResultCondition(HasItem, 2677, 20 )
	MisResultCondition(HasItem, 3909, 5 )
	MisResultCondition(HasItem, 2589, 5 )
	MisResultCondition(HasItem, 3094, 10 )
	MisResultCondition(HasItem, 3827, 1 )
	MisResultCondition(HasItem, 0271, 1 )

	MisResultAction(TakeItem, 1693, 20 )
	MisResultAction(TakeItem, 2677, 20 )
	MisResultAction(TakeItem, 3909, 5 )
	MisResultAction(TakeItem, 2589, 5 )
	MisResultAction(TakeItem, 3094, 10 )
	MisResultAction(TakeItem, 3827, 1 )
	MisResultAction(TakeItem, 0271, 1 )

	MisResultAction(ClearMission, 1480)
	MisResultAction(SetRecord,  1480 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2572, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2576, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1693)	
	TriggerAction( 1, AddNextFlag, 1480, 1, 20 )
	RegCurTrigger( 14801 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2677)	
	TriggerAction( 1, AddNextFlag, 1480, 21, 20 )
	RegCurTrigger( 14802 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1480, 41, 5 )
	RegCurTrigger( 14803 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1480, 46, 5 )
	RegCurTrigger( 14804 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1480, 51, 10 )
	RegCurTrigger( 14805 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3827)	
	TriggerAction( 1, AddNextFlag, 1480,61, 1 )
	RegCurTrigger( 14806 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0271)	
	TriggerAction( 1, AddNextFlag, 1480,62, 1 )
	RegCurTrigger( 14807 )


	-----------------------------------------ВТ¶·УўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ--------ґ¬і¤
	DefineMission (5811, "ОВЗйѕЮР·Ц®ВТ¶·УўРЫ", 1481)
	
	MisBeginTalk("<t>ѕЮР·ЧщµДИЛ,ОВЗй№ЛјТ,ФЪКВТµ·ЅГжТІ¶јДЬ±нПЦіцЧФјєµДІЕДЬ.ХвКЗКфУЪДгµДГО»ГРЗЧщВр?")

	MisBeginCondition(NoMission,1481)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1481)
	MisBeginAction(AddMission,1481)
	MisCancelAction(ClearMission, 1481)
	
	MisNeed(MIS_NEED_DESP, "»сµГ200µгВТ¶·µгКэ")
	MisHelpTalk("<t>ВТ¶·µгКэїЙТФґУВТ¶·°ЧТш»сµГ!")
	MisResultTalk("<t>іЙОЄУўРЫµДµАВ·ЙП±Ш¶Ё»бУРЦЦЦЦЧи°­,ХЅ¶·µДУВЖшЖ¬їМ¶јІ»ДЬ¶ЄК§Е¶.Н¶ИлИ«Б¦ИҐХЅ¶·°Й!")

	MisResultCondition(HasMission, 1481)
	MisResultCondition(NoRecord,1481)
	MisResultCondition(HasFightingPoint,200 )
	MisResultAction(TakeFightingPoint, 200 )
	MisResultAction(ClearMission, 1481)
	MisResultAction(SetRecord,  1481 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2568, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ГыЙщУўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	--------ґ¬і¤
	DefineMission (5812, "ОВЗйѕЮР·Ц®ГыЙщУўРЫ", 1482)
	
	MisBeginTalk("<t>УРДї±кІЕУРЧ·Зу,УРЧ·ЗуІЕУРіЙѕН.ЛщТФОВЗйѕЮР·№¬¶ФДгµДТЄЗуТІёьёЯТ»Р©. ")

	MisBeginCondition(NoMission,1482)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1482)
	MisBeginAction(AddMission,1482)
	MisCancelAction(ClearMission, 1482)
	
	MisNeed(MIS_NEED_DESP, "»сµГ10000µгГыЙщµгКэ")
	MisHelpTalk("<t>їґАґДгµГµЅµДГыЙщ»№І»№»Е¶,ОТПл10000µгГыЙщ¶ФДгАґЛµУ¦ёГІ»КЗОКМв°Й? ")
	MisResultTalk("<t>ХвГ¶ГыЙщС«ХВКЗУГАґјыЦ¤УўРЫµД.")

	MisResultCondition(HasMission, 1482)
	MisResultCondition(NoRecord,1482)
	MisResultCondition(HasCredit,10000 )
	MisResultAction(TakeCredit, 10000 )
	MisResultAction(ClearMission, 1482)
	MisResultAction(SetRecord,  1482 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2569, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------µИј¶УўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	---------ґ¬і¤
	DefineMission (5813, "ОВЗйѕЮР·Ц®µИј¶УўРЫ", 1483)
	
	MisBeginTalk("<t>іЙі¤µДµАВ·КЗВюі¤єНјиРБµД,µ«КЗё¶іцТ»¶Ё»бУР»Ш±ЁЕ¶,ИГОТїґїґДгКХ»сБЛКІГґ°Й...")

	MisBeginCondition(NoMission,1483)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1483)
	MisBeginAction(AddMission,1483)
	MisCancelAction(ClearMission, 1483)
	
	MisNeed(MIS_NEED_DESP, "µИј¶ґпµЅ75ј¶")
	MisHelpTalk("<t>µ±И»,75ј¶¶ФОТАґЛµІ»іЙОКМв.")
	MisResultTalk("<t>їґАґДгТСѕ­ѕ­АъБЛіЙі¤µДДҐБ·,КХ»сІ»ЙЩЕ¶,ХвГ¶µИј¶С«ХВКЗДгµДБЛ.")

	MisResultCondition(HasMission, 1483)
	MisResultCondition(NoRecord,1483)
	MisResultCondition(LvCheck, ">", 74 )
	MisResultAction(ClearMission, 1483)
	MisResultAction(SetRecord,  1483 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2570, 1, 4)
	MisResultBagNeed(1)

	-------------------------------------------------ИЩУюУўРЫ----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	----------ґ¬і¤
	DefineMission (5814, "ОВЗйѕЮР·Ц®ИЩУюУўРЫ", 1484)
	
	MisBeginTalk("<t>ЗЧ°®µДЕуУС,УРТ»µгДг±ШРлТЄЦЄµА,єЈµБКАЅзЧоЦШТЄµДѕНКЗИЩУю!ЧжПИОЄґЛё¶іцТ»ЗРУ®µГЧрѕґ,ДгТ»¶ЁТЄјМіРПВИҐ.")

	MisBeginCondition(NoMission,1484)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1484)
	MisBeginAction(AddMission,1484)
	MisCancelAction(ClearMission, 1484)
	
	MisNeed(MIS_NEED_DESP, "»сµГ1200µгИЩУюµгКэ")
	MisHelpTalk("<t>ИҐОЄИЩУю¶шХЅ°Й!")
	MisResultTalk("<t>ДгКЗёцєЬІ»ґнµДИЩУюЦ®ЧУ.")

	MisResultCondition(HasMission, 1484)
	MisResultCondition(NoRecord,1484)
	MisResultCondition(HasHonorPoint,1200 )
	MisResultAction(TakeHonorPoint, 1200 )
	MisResultAction(ClearMission, 1484)
	MisResultAction(SetRecord,  1484 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2571, 1, 4)
	MisResultBagNeed(1)	


	-------------------------------------------------ІЙјЇґуК№----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	----------ґ¬і¤	
	DefineMission (5815, "ОВЗйѕЮР·Ц®ІЙјЇґуК№", 1485)
	
	MisBeginTalk("<t>іЙ№¦КЗРиТЄЖЅК±µД»эАЫµДЕ¶!¶ґІмБ¦ТІКЗ№Шјь.ПЦФЪОТРиТЄДгИҐКХјЇТ»Р©¶«Оч... ")

	MisBeginCondition(NoMission,1485)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(NoRecord,1485)
	MisBeginAction(AddMission,1485)
	MisBeginAction(AddTrigger, 14851, TE_GETITEM, 1693, 30 )-------------------Р«јЧ30ёц
	MisBeginAction(AddTrigger, 14852, TE_GETITEM, 2677, 30 )-------------------БґµЇLV1 30ёц          
	MisBeginAction(AddTrigger, 14853, TE_GETITEM, 3909, 10 )-----------------КіЙсЛ®ЅИ10ёц               
	MisBeginAction(AddTrigger, 14854, TE_GETITEM, 2589, 10 )----------------ѕ«БйНх»ФУЎ10               
	MisBeginAction(AddTrigger, 14855, TE_GETITEM, 3094, 20)------------------Е¬Б¦Фц·щЖч20ёц         
	MisBeginAction(AddTrigger, 14856, TE_GETITEM, 3827, 1 )-----------------ЗйЦ®йд1     
	MisBeginAction(AddTrigger, 14857, TE_GETITEM, 0271, 2 )-----------------МмК№ч»ЧУ2ёц         
	MisCancelAction(ClearMission, 1485)
	

	MisNeed(MIS_NEED_ITEM, 1693, 30,  1, 30 )
	MisNeed(MIS_NEED_ITEM, 2677, 30, 31, 30 )
	MisNeed(MIS_NEED_ITEM, 3909, 10, 61, 10 )
	MisNeed(MIS_NEED_ITEM, 2589, 10, 71, 10 )
	MisNeed(MIS_NEED_ITEM, 3094, 20, 81, 20 )
	MisNeed(MIS_NEED_ITEM, 3827, 1,  101, 1 )
	MisNeed(MIS_NEED_ITEM, 0271, 2,  102, 2 )

	MisHelpTalk("<t>РиТЄµД¶«ОчІ»КЗєЬ¶а,µ«КЗТІІ»КЗДЗГґИЭТЧЕ¶.")
	MisResultTalk("<t>ОпµЅУГК±·ЅєЮЙЩ°Й,»эАЫµД№эіМЛдИ»±ИЅПВй·і,µ«КЗИз№ыТЄЧцёцґуИЛОп,ПёРД»эАЫєН№ЫІм¶јКЗІ»їЙИ±ЙЩµДЕ¶,µ±И»,»№УРі¬ЗїµДДНРДєНТгБ¦!")

	MisResultCondition(HasMission, 1485)
	MisResultCondition(NoRecord,1485)
	MisResultCondition(HasItem, 1693, 30 )
	MisResultCondition(HasItem, 2677, 30 )
	MisResultCondition(HasItem, 3909, 10 )
	MisResultCondition(HasItem, 2589, 10 )
	MisResultCondition(HasItem, 3094, 20 )
	MisResultCondition(HasItem, 3827, 1 )
	MisResultCondition(HasItem, 0271, 2 )

	MisResultAction(TakeItem, 1693, 30 )
	MisResultAction(TakeItem, 2677, 30 )
	MisResultAction(TakeItem, 3909, 10 )
	MisResultAction(TakeItem, 2589, 10 )
	MisResultAction(TakeItem, 3094, 20 )
	MisResultAction(TakeItem, 3827, 1 )
	MisResultAction(TakeItem, 0271, 2 )

	MisResultAction(ClearMission, 1485)
	MisResultAction(SetRecord,  1485 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2572, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2576, 1, 4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1693)	
	TriggerAction( 1, AddNextFlag, 1485, 1, 30 )
	RegCurTrigger( 14851 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2677)	
	TriggerAction( 1, AddNextFlag, 1485, 31, 30 )
	RegCurTrigger( 14852 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3909)	
	TriggerAction( 1, AddNextFlag, 1485, 61, 10 )
	RegCurTrigger( 14853 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2589)	
	TriggerAction( 1, AddNextFlag, 1485, 71, 10 )
	RegCurTrigger( 14854 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3094)	
	TriggerAction( 1, AddNextFlag, 1485, 81, 20 )
	RegCurTrigger( 14855 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3827)	
	TriggerAction( 1, AddNextFlag, 1485,101, 1 )
	RegCurTrigger( 14856 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0271)	
	TriggerAction( 1, AddNextFlag, 1485,102, 2 )
	RegCurTrigger( 14857 )


	----------------------------------------------------------ЙзЅ»ґуК№----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ
	DefineMission( 5816, "Посол мира 1", 1486 )
	MisBeginTalk("<t>іЙ№¦µДИЛ»№РиТЄУРіцЙ«µДЙзЅ»ДЬБ¦Е¶,ѕНПсОТ,ЕуУС±йј°ёчёціЗХт,µ«КЗУЙУЪєЈКВ№«ОсµД·±Г¦,ОТ¶јєГѕГГ»УРОКєтЛыГЗБЛ,Из№ыДгПлТЄМЅЛчС«ХВѕНМжОТОКєтЛыГЗ°Й.")
				
	MisBeginCondition(NoMission, 1486)
	MisBeginCondition(NoRecord,1486)
	MisBeginCondition(HasRecord, 1469)
	MisBeginAction(AddMission,1486)
	MisCancelAction(ClearMission, 1486)

	MisNeed(MIS_NEED_DESP, "ХТґє·зХтµДМъЅіЎ¤ОдцО(3316,2516)БДБД")
	
	MisHelpTalk("<t>їмИҐ°Й,ОТЖИІ»ј°ґэёжЛЯЛыГЗОТєЬПлДоЛыГЗ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№-----------------МъЅіЎ¤ОдцО

	DefineMission(5817, "Посол мира 1", 1486, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>єЈКВЛщЦъАнЎ¤ВЮА­ДИ?МмДШ,ХжµДєГѕГ¶јГ»УРјыГжБЛДШ,ЛэТ»¶Ё»№јЗµГОТіцЙ«µДКЦТХ°Й.")
	MisResultCondition(NoRecord, 1486)
	MisResultCondition(HasMission,1486)
	MisResultAction(ClearMission,1486)
	MisResultAction(SetRecord, 1486)

	----------------------------------------------------------ЙзЅ»ґуК№2----------МъЅіЎ¤ОдцО
	DefineMission( 5818, "Посол мира 2", 1487 )
	MisBeginTalk("<t>ОТТ»Ц±·ЗіЈРАЙНВЮА­ДИ,ЛэґУАґІ»»бТтОЄЧФјєµДµШО»¶шЧФВъ,ЛщТФЛэµДЕуУСєЬ¶аЕ¶,БъЕ®єНОТµ±іхКЗТ»ЖрУРРТЅбК¶ХвО»їЙ°®µДЕ®КїµД.")
				
	MisBeginCondition(NoMission, 1487)
	MisBeginCondition(NoRecord,1487)
	MisBeginCondition(HasRecord, 1486)
	MisBeginAction(AddMission,1487)
	MisCancelAction(ClearMission, 1487)

	MisNeed(MIS_NEED_DESP, "ХТґє·зХтµДїНХ»АП°еЎ¤БъЕ®(3302,2501)БДБД")
	
	MisHelpTalk("<t>ЛжК±»¶У­ДгєНВЮА­ДИАґОТХвАпґтФмј«Ж·Ч°±ёЕ¶.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№2-------------їНХ»АП°еЎ¤БъЕ®
	DefineMission(5819, "Посол мира 2", 1487, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгєГ,ДкЗбИЛ,РиТЄЧЎµкВр?")
	MisResultCondition(NoRecord, 1487)
	MisResultCondition(HasMission,1487)
	MisResultAction(ClearMission,1487)
	MisResultAction(SetRecord, 1487)

	----------------------------------------------------------ЙзЅ»ґуК№3----------їНХ»АП°еЎ¤БъЕ®
	DefineMission( 5820, "Посол мира 3", 1488 )
	MisBeginTalk("<t>ДгИПК¶ВЮА­ДИ?М«єГБЛ,ЛэКЗОТµДЕуУС!»№јЗµГЛэµ±іхЕјИ»АґµЅОТµДїНХ»К±µДЗйѕ°ДШ,ЛэєАЛ¬µДРФёсИГОТГЗєЬїміЙОЄБЛЕуУС.ОТГЗ»№ѕ­іЈКЦЗЈКЦИҐФУ»хЙМИЛЎ¤ВіДИ¶щДЗАп№єОпДШ!")
				
	MisBeginCondition(NoMission, 1488)
	MisBeginCondition(NoRecord,1488)
	MisBeginCondition(HasRecord, 1487)
	MisBeginAction(AddMission,1488)
	MisCancelAction(ClearMission, 1488)

	MisNeed(MIS_NEED_DESP, "ХТґє·зХтµДФУ»хЙМИЛЎ¤ВіДИ¶щ(3279,2501)БДБД")
	
	MisHelpTalk("<t>ВіДИ¶щКЗТ»ёцѕ«ГчµДЙМИЛ,µ«І»БЯШД,єЗєЗ..")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№3--------ФУ»хЙМИЛЎ¤ВіДИ¶щ
	DefineMission(5821, "Посол мира 3", 1488, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>БъЕ®ѕ­іЈАґОТХвАп№єОп,їЙП§єЬѕГГ»УРїґµЅЛэєНВЮА­ДИТ»ЖрАґБЛЕ¶,ОТєЬПлДоЛэДШ,Из№ыЛэФЩґО№вБЩ,ОТТ»¶ЁёшЛэЧоґуµДХЫїЫ.")
	MisResultCondition(NoRecord, 1488)
	MisResultCondition(HasMission,1488)
	MisResultAction(ClearMission,1488)
	MisResultAction(SetRecord, 1488)

	----------------------------------------------------------ЙзЅ»ґуК№4----------ФУ»хЙМИЛЎ¤ВіДИ¶щ
	DefineMission( 5822, "Посол мира 4", 1489 )
	MisBeginTalk("<t>ДЗґООТФЪТ°НвЕЬЙМ,Ѕб№ыЕцµЅБЛїЙЕВµДєЈµБ»фЅрЛ№,ОТТФОЄОТѕНХвСщНкБЛ!КЗВЮА­ДИѕИБЛОТ!єуАґѕ№И»Б¬»фЅрЛ№¶јє¦ЕВВЮА­ДИ,І»ёТµЅХтАпАґµ·ВТБЛ.")
				
	MisBeginCondition(NoMission, 1489)
	MisBeginCondition(NoRecord,  1489)
	MisBeginCondition(HasRecord, 1488)
	MisBeginAction(AddMission, 1489)
	MisCancelAction(ClearMission, 1489)

	MisNeed(MIS_NEED_DESP, "ХТјЕДЇЦ®ЛюµД»фЅрЛ№(513,269)БДБД")
	
	MisHelpTalk("<t>Гж¶ФХвСщµДєЈµБДгТЄРЎРДЕ¶,Из№ыУРОЈПХѕНЛµДгКЗВЮА­ДИµДЕуУС!")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№4--------»фЅрЛ№
	DefineMission(5823, "Посол мира 4", 1489, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>єЯєЯ,РЎСщДДАпАґµД°Ў?ТЄПл№эґЛВ·,БфПВЛщУРЗ®!¶о...ДгКЗВЮА­ДИµДЕуУС°Ў.ЧоЅьОТ¶јГ»ёЙКІГґ»µКВ,ОТјёєхТСѕ­ТЄЅбКшОТµДєЈµБЙъ»оБЛ.")
	MisResultCondition(NoRecord, 1489)
	MisResultCondition(HasMission,1489)
	MisResultAction(ClearMission,1489)
	MisResultAction(SetRecord, 1489)


	----------------------------------------------------------ЙзЅ»ґуК№5----------»фЅрЛ№
	DefineMission( 5824, "Посол мира 5", 1490 )
	MisBeginTalk("<t>ЛдИ»ЙнОЄєЈµБ,µ«КЗОТІ»µГІ»ЗХЕеВЮА­ДИµДµЁК¶єНЦЗ»Ы,ОЄБЛЕуУСЛэїЙТФГж¶ФТ»ЗРОЈПХ,ОТГЗЙнОЄєЈµБЧоїґЦШµДѕНКЗТеЖшБЛ!єЩєЩ.µ±К±µДЗйїц?ДгїЙТФИҐОКДЗёцГіТЧЙМИЛ.")
				
	MisBeginCondition(NoMission, 1490)
	MisBeginCondition(NoRecord,  1490)
	MisBeginCondition(HasRecord, 1489)
	MisBeginAction(AddMission,1490)
	MisCancelAction(ClearMission, 1490)

	MisNeed(MIS_NEED_DESP, "ХТґє·зХтµДГіТЧЙМИЛЎ¤УНАо(3195,2506)БДБД")
	
	MisHelpTalk("<t>ГіТЧЙМИЛЎ¤УНАоКЗёцПІ»¶ЛЈРЎґПГчµДЙМИЛ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№5--------ГіТЧЙМИЛЎ¤УНАо
	DefineMission(5825, "Посол мира 5", 1490, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>їИїИ,ПсОТХвСщµДЙМИЛТЄєНёчЦЦИЛОпґтЅ»µА,МШ±рКЗПсєЈµБХвСщµДЅЗЙ«,µ±И»ТЄН·ДФБй»оАІ,ДЗёцІ»ЛгЛЈРЎґПГч°Й?")
	MisResultCondition(NoRecord, 1490)
	MisResultCondition(HasMission,1490)
	MisResultAction(ClearMission,1490)
	MisResultAction(SetRecord, 1490)


	----------------------------------------------------------ЙзЅ»ґуК№6----------ГіТЧЙМИЛЎ¤УНАо
	DefineMission( 5826, "Посол мира 6", 1491)
	MisBeginTalk("<t>ЛµЖрДЗґОѕ­Аъ,ХжКЗїЙЕВ!РТФЛµДКЗОТТІµГµЅБЛВЮА­ДИµД°пЦъ,ІЕ°ЪНСБЛєЈµБµДѕАІш,·сФтОТЛщУРµДјТµ±¶ј±»ЗАБЛ!µ±К±ЛыГЗїЙ¶јДГЧЕ·жАыµДОдЖч°Ў!ВЮА­ДИѕИБЛОТ,»№ИГґ«ЛНК№Ў¤ґєАтЛНОТµЅБЛ°ІИ«µДµШ·Ѕ,ЧФјє¶АЧФГж¶ФДЗГґ¶а»µµ°.")
				
	MisBeginCondition(NoMission, 1491)
	MisBeginCondition(NoRecord,1491)
	MisBeginCondition(HasRecord, 1490)
	MisBeginAction(AddMission,1491)
	MisCancelAction(ClearMission, 1491)

	MisNeed(MIS_NEED_DESP, "ХТґ«ЛНК№Ў¤ґєАт(3326,2511)БДБД")
	
	MisHelpTalk("<t>ґєАтТІКЗВЮА­ДИµДЕуУСДШ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№6--------ґ«ЛНК№Ў¤ґєАт
	DefineMission(5827, "Посол мира 6", 1491, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгєГ,°пЦъИЛ»бК№ЧФјєТІ±дµГїмАЦЕ¶.")
	MisResultCondition(NoRecord, 1491)
	MisResultCondition(HasMission,1491)
	MisResultAction(ClearMission,1491)
	MisResultAction(SetRecord, 1491)


	----------------------------------------------------------ЙзЅ»ґуК№7----------ґ«ЛНК№Ў¤ґєАт
	DefineMission( 5828, "Посол мира 7", 1492 )
	MisBeginTalk("<t>ДЗґОЛНУНАо»ШАґµДµДИ·КЗОТ.ОТґУВЮА­ДИДЗАпС§»бБЛЦъИЛОЄАЦ,°пЦъ±рИЛХжµДКЗјюєЬїмАЦµДКВЗйДШ,УР»ъ»бОТ»№ТЄґУЛэЙнЙПС§µЅёь¶а¶«Оч!МэЛµЛгГьПИЙъЎ¤ЛгЖЖМмТІєНВЮА­ДИЅУґҐ№э.")
				
	MisBeginCondition(NoMission, 1492)
	MisBeginCondition(NoRecord,1492)
	MisBeginCondition(HasRecord, 1491)
	MisBeginAction(AddMission,1492)
	MisCancelAction(ClearMission, 1492)

	MisNeed(MIS_NEED_DESP, "ХТґє·зХтµДЛгГьПИЙъЎ¤ЛгЖЖМм(3262,2502)БДБД")
	
	MisHelpTalk("<t>ЛгГьПИЙъЎ¤ЛгЖЖМмТФЗ°КЗёцЦ»ПаРЕГьФЛµДИЛ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№7--------ЛгГьПИЙъЎ¤ЛгЖЖМм
	DefineMission(5829, "Посол мира 7", 1492, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТТФЗ°µДИ·КЗёцЦ»ПаРЕГьФЛµДИЛ,µ«КЗВЮА­ДИК№ОТГч°ЧБЛГьФЛКЗїЙТФїїЧФјєёД±дµД,ОТПЦФЪёшИЛЛгГьКЗОЄБЛИГґујТ·А·¶УЪОґИ»,ґґФмЧФјєёьєГµДОґАґ.")
	MisResultCondition(NoRecord, 1492)
	MisResultCondition(HasMission,1492)
	MisResultAction(ClearMission,1492)
	MisResultAction(SetRecord, 1492)


	----------------------------------------------------------ЙзЅ»ґуК№8----------ЛгГьПИЙъЎ¤ЛгЖЖМм
	DefineMission( 5830, "Посол мира 8", 1493 )
	MisBeginTalk("<t>ЙПґОёшѕЖµкАП°еЎ¤ЕбµЩЛгГьµДК±єт,ОТёжЛЯЛыЅ«УР№уИЛПаЦъ,Г»ПлµЅєуАґЛыёжЛЯОТЛыµД№уИЛѕНКЗВЮА­ДИ!єЗєЗ.")
				
	MisBeginCondition(NoMission, 1493)
	MisBeginCondition(NoRecord,  1493)
	MisBeginCondition(HasRecord, 1492)
	MisBeginAction(AddMission,1493)
	MisCancelAction(ClearMission, 1493)

	MisNeed(MIS_NEED_DESP, "ХТѕЖµкАП°еЎ¤ЕбµЩ(3287,2501)БДБД")
	
	MisHelpTalk("<t>ґшОТПтВЮА­ДИОКєГ!")
	MisResultCondition(AlwaysFailure)
	
	-----------------------------------------ЙзЅ»ґуК№8--------ѕЖµкАП°еЎ¤ЕбµЩ
	DefineMission(5831, "Посол мира 8", 1493, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ВЮА­ДИХжКЗОТµД№уИЛ,µ±К±ОТГЗѕЖµкµДЙъТвІўІ»ФхГґСщ,ДгЦЄµА,ХвАпЦ»КЗТ»ёцРЎХт,єуАґКЗВЮА­ДИЅйЙЬБЛєЬ¶аВГРРµДИЛАґ№в№ЛОТ.")
	MisResultCondition(NoRecord, 1493)
	MisResultCondition(HasMission,1493)
	MisResultAction(ClearMission,1493)
	MisResultAction(SetRecord, 1493)


	----------------------------------------------------------ЙзЅ»ґуК№9----------ѕЖµкАП°еЎ¤ЕбµЩ
	DefineMission( 5832, "Посол мира 9", 1494 )
	MisBeginTalk("<t>ДЗґОВЮА­ДИКЗАґХТёЫїЪЦё»УЎ¤ЛЄЖжМё№«КВµД....")
				
	MisBeginCondition(NoMission, 1494)
	MisBeginCondition(NoRecord,  1494)
	MisBeginCondition(HasRecord, 1493)
	MisBeginAction(AddMission,1494)
	MisCancelAction(ClearMission, 1494)

	MisNeed(MIS_NEED_DESP, "ХТёЫїЪЦё»УЎ¤ЛЄЖж(3409,2560)БДБД")
	
	MisHelpTalk("<t>ёЫїЪЦё»УЎ¤ЛЄЖжКЗёцѕґ№«Ц°КШµДИЛ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№9--------ёЫїЪЦё»УЎ¤ЛЄЖж
	DefineMission(5833, "Посол мира 9", 1494, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>»¶У­ДгАґµЅґє·зХт,ХвАпЛдИ»КЗРЎХт,µ«КЗХвАпµДИЛ¶јєЬєГїНЕ¶!ВЮА­ДИЙПґО№эАґКЗАґКУІмХвАпµД№¤ЧчµД.")
	MisResultCondition(NoRecord, 1494)
	MisResultCondition(HasMission,1494)
	MisResultAction(ClearMission,1494)
	MisResultAction(SetRecord, 1494)

	----------------------------------------------------------ЙзЅ»ґуК№10----------ёЫїЪЦё»УЎ¤ЛЄЖж
	DefineMission( 5834, "Посол мира 10", 1495 )
	MisBeginTalk("<t>ВЮА­ДИХжКЗТ»ёцєГИЛ,Т»µг¶јГ»УРёЯёЯФЪЙПµДјЬЧУ,Лэ¶ФОТµД№¤ЧчёшУиБЛїП¶Ё,М«БоИЛёЯРЛБЛ.¶шЗТЛэ»№єЬ№ШРДПВКфДШ,єуАґЛэ»№ИҐОїОКБЛОА±шЎ¤ХФЗ®Лп.")
				
	MisBeginCondition(NoMission, 1495)
	MisBeginCondition(NoRecord, 1495)
	MisBeginCondition(HasRecord, 1494)
	MisBeginAction(AddMission, 1495)
	MisCancelAction(ClearMission, 1495)

	MisNeed(MIS_NEED_DESP, "ХТОА±шЎ¤ХФЗ®Лп(3303,2533)БДБД")
	
	MisHelpTalk("<t>ОТПлЙПј¶µДОїОК¶ФУЪПВКфКЗєЬєГµД№ДОи°Й...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№10--------ОА±шЎ¤ХФЗ®Лп
	DefineMission(5835, "Посол мира 10", 1495, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгєГЈ¬ДгКЗФ¶µА¶шАґµДВГїН°Й.ДгИПК¶ВЮА­ДИ?№ю№ю,ВЮА­ДИРЎЅгЗЧЧФАґїґ№эОТЕ¶!М«РТёЈБЛ!")
	MisResultCondition(NoRecord, 1495)
	MisResultCondition(HasMission,1495)
	MisResultAction(ClearMission,1495)
	MisResultAction(SetRecord, 1495)

	----------------------------------------------------------ЙзЅ»ґуК№11----------ОА±шЎ¤ХФЗ®Лп
	DefineMission( 5836, "Посол мира 11", 1496 )
	MisBeginTalk("<t>ВЮА­ДИКЗёцОВИбМеМщµДИЛ,ДЗМмЛэМШµШАґОїОКБЛОТєНЦЬОвЦЈ.")
				
	MisBeginCondition(NoMission, 1496)
	MisBeginCondition(NoRecord,1496)
	MisBeginCondition(HasRecord, 1495)
	MisBeginAction(AddMission,1496)
	MisCancelAction(ClearMission, 1496)

	MisNeed(MIS_NEED_DESP, "ХТОА±шЎ¤ЦЬОвЦЈ(3298,2534)БДБД")
	
	MisHelpTalk("<t>ЦЬОвЦЈєНОТПсЗЧРЦµЬТ»Сщ,ПВ°аєуОТГЗОЮЛщІ»Мё.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№11--------ОА±шЎ¤ЦЬОвЦЈ
	DefineMission(5837, "Посол мира 11", 1496, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>НЫ№ю№ю,јыµЅДгєЬёЯРЛВЮА­ДИµДЕуУС.ДгґУХФЗ®ЛпДЗАп№эАґµД?ЛыГ»УРНµАБ°Й.")
	MisResultCondition(NoRecord, 1496)
	MisResultCondition(HasMission,1496)
	MisResultAction(ClearMission,1496)
	MisResultAction(SetRecord, 1496)

	----------------------------------------------------------ЙзЅ»ґуК№12----------ОА±шЎ¤ЦЬОвЦЈ
	DefineMission( 5838, "Посол мира 12", 1497 )
	MisBeginTalk("<t>±рїґОТЦ»КЗРЎРЎµДОА±ш,ОТµДЅ»јКїЙКЗєЬ№гµДДШ,ТшРРЧЬ№ЬЎ¤НхД«ТІКЗОТµДЕуУС.ЙПґОВЮА­ДИРЎЅгАґОїОКОТ,ПРБДµЅЛэУРТ»Р©¶«ОчРиТЄХТµШ·ЅјД·Е,ХвСщІЕДЬЧЁРДКУІм№¤Чч,ОТТэјцНхД«ёшВЮА­ДИРЎЅгИПК¶БЛ.")
				
	MisBeginCondition(NoMission, 1497)
	MisBeginCondition(NoRecord,1497)
	MisBeginCondition(HasRecord, 1496)
	MisBeginAction(AddMission,1497)
	MisCancelAction(ClearMission, 1497)

	MisNeed(MIS_NEED_DESP, "ХТТшРРЧЬ№ЬЎ¤НхД«(3290,2512)БДБД")
	
	MisHelpTalk("<t>ТшРРЧЬ№ЬЎ¤НхД«КЗРРКВЅчЙчµДИЛ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№12--------ТшРРЧЬ№ЬЎ¤НхД«
	DefineMission(5839, "Посол мира 12", 1497, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ВЮА­ДИТ»¶ЁѕхµГОТКЗЦµµГРЕИОµДИЛ,ЛщТФЅ«Лэ№уЦШµДОпЖ·јД·ЕФЪОТХвАп,І»№эДгЗ§НтІ»ТЄёжЛЯ±рИЛЕ¶,ВЮА­ДИРЎЅгПВґОАґТ»¶Ё»бК®·ЦВъТвОТГЗµД·юОсµД.")
	MisResultCondition(NoRecord, 1497)
	MisResultCondition(HasMission,1497)
	MisResultAction(ClearMission,1497)
	MisResultAction(SetRecord, 1497)


	----------------------------------------------------------ЙзЅ»ґуК№13----------ТшРРЧЬ№ЬЎ¤НхД«
	DefineMission( 5840, "Посол мира 13", 1498 )
	MisBeginTalk("<t>ЛдИ»ВЮА­ДИКЗАґКУІмµД,µ«КЗјИИ»АґµЅБЛОТГЗГААцµДРЎХт,ЧФИ»ТЄєГєГМеСйєНПнКЬТ»ПВХвАпµД·зНБИЛЗйАІ,ОТИГБчФЖЕгВЮА­ДИРЎЅгµЅґ¦№д№д.")
				
	MisBeginCondition(NoMission, 1498)
	MisBeginCondition(NoRecord,1498)
	MisBeginCondition(HasRecord, 1497)
	MisBeginAction(AddMission,1498)
	MisCancelAction(ClearMission, 1498)

	MisNeed(MIS_NEED_DESP, "ХТЗаДкДРЧУЎ¤БчФЖ(3275,2467)БДБД")
	
	MisHelpTalk("<t>ЗаДкДРЧУЎ¤БчФЖКЗёцідВъ»оБ¦µДРЎ»пЧУ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№13--------ЗаДкДРЧУЎ¤БчФЖ
	DefineMission(5841, "Посол мира 13", 1498, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>єЩ,ЕуУС!УРКІГґїЙТФ°пЦъДгµДВр?ОТєЕіЖКЗґє·зХтµДµјУОЕ¶.")
	MisResultCondition(NoRecord, 1498)
	MisResultCondition(HasMission,1498)
	MisResultAction(ClearMission,1498)
	MisResultAction(SetRecord, 1498)

	----------------------------------------------------------ЙзЅ»ґуК№14----------ЗаДкДРЧУЎ¤БчФЖ
	DefineMission( 5842, "Посол мира 14", 1499 )
	MisBeginTalk("<t>КЗЕ¶,ЙПґОВЮА­ДИАґОТГЗґє·зХтѕНКЗОТєНЛ®ОнґшЛэµЅґ¦УОНжµДДШ!»°Лµ»ШАґ,ЛэТІКЗТ»ёцїЄАКµДИЛ,єНОТГЗТ»ЖрНжµДєЬН¶»ъ.")
				
	MisBeginCondition(NoMission, 1499)
	MisBeginCondition(NoRecord,1499)
	MisBeginCondition(HasRecord, 1498)
	MisBeginAction(AddMission,1499)
	MisCancelAction(ClearMission, 1499)

	MisNeed(MIS_NEED_DESP, "ХТЗаДкЕ®ЧУЎ¤Л®Он(3241,2533)БДБД")
	
	MisHelpTalk("<t>ЖдКµ...ГїМмДЬ№»єНЛ®ОнФЪТ»ЖрКЗОТТ»Ц±ТФАґµДФёНы...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№14--------ЗаДкЕ®ЧУЎ¤Л®Он        
	DefineMission(5843, "Посол мира 14", 1499, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>КЗБчФЖИГДгАґХТОТµДВр?Лы...ЛыКЗёцєГИЛ.ЖдКµИз№ыЛыДЬ№»ФЪКВТµЙПУРЛщіЙѕНІўЗТОВИбМеМщР©,ДЗёГ¶аєГ.ОТЦ»¶ФВЮА­ДИЛµ№эРДАпµДПл·Ё...")
	MisResultCondition(NoRecord, 1499)
	MisResultCondition(HasMission,1499)
	MisResultAction(ClearMission,1499)
	MisResultAction(SetRecord, 1499)

	----------------------------------------------------------ЙзЅ»ґуК№15----------ЗаДкЕ®ЧУЎ¤Л®Он
	DefineMission( 5844, "Посол мира 15", 1601 )
	MisBeginTalk("<t>¶ФОТАґЛµ,ВЮА­ДИѕНПсТ»ёцґуЅгЅгТ»Сщ,ОТКІГґ»°¶јФёТв¶ФЛэЛµ.ОТєГПлЛэЕ¶,ОТУРєГ¶а»°ПлєНЛэЛµДШ.ПЦФЪЦ»УРНхИШ°ўТМДЬ№»ЕгОТЛµЛµ»°.")
				
	MisBeginCondition(NoMission, 1601)
	MisBeginCondition(NoRecord,1601)
	MisBeginCondition(HasRecord, 1499)
	MisBeginAction(AddMission,1601)
	MisCancelAction(ClearMission, 1601)

	MisNeed(MIS_NEED_DESP, "ХТЦРДкЕ®ЧУЎ¤НхИШ(3265,2547)БДБД")
	
	MisHelpTalk("<t>»ЖИШ,КЗёцЦРДкЕ®ЧУ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№15-------- ЦРДкЕ®ЧУЎ¤НхИШ
	DefineMission(5845, "Посол мира 15", 1601, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Л®ОнХвРЎСѕН·КЗєЬ¶аіоЙЖёРµДЕ®єў,Лэµ№КЗТ»Ц±ДоЯ¶ЧЕВЮА­ДИДШ,ЛэєЬПЈНыЧФјєДЬУРХвСщТ»ёцЅгЅг.ОТКЗєЬПІ»¶ХвёцРЎСѕН·,ЛщТФѕ­іЈЕгЛэБДМм.")
	MisResultCondition(NoRecord, 1601)
	MisResultCondition(HasMission,1601)
	MisResultAction(ClearMission,1601)
	MisResultAction(SetRecord, 1601)


	----------------------------------------------------------ЙзЅ»ґуК№16----------ЦРДкЕ®ЧУЎ¤НхИШ
	DefineMission( 5846, "Посол мира 16", 1602 )
	MisBeginTalk("<t>№ю,ДгКЗЧЁіМАґМжВЮА­ДИОКєтґујТµДВр?ВЮА­ДИХжКЗУРРД°Ў,Р»Р»Дг.¶ФБЛ,±ИёЗТІКЗВЮА­ДИµДЕуУС.")
				
	MisBeginCondition(NoMission, 1602)
	MisBeginCondition(NoRecord,1602)
	MisBeginCondition(HasRecord, 1601)
	MisBeginAction(AddMission,1602)
	MisCancelAction(ClearMission, 1602)

	MisNeed(MIS_NEED_DESP, "ХТЦРДкДРЧУЎ¤±ИёЗ(3235,2550)БДБД")
	
	MisHelpTalk("<t>±ИёЗКЗёц·зИ¤µДДРИЛ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№16-------- ЦРДкДРЧУЎ¤±ИёЗ
	DefineMission(5847, "Посол мира 16", 1602, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ВЮА­ДИЧоЅьїЙєГ?ВЮА­ДИµДОўР¦ѕНПсМмЙПµДМ«СфТ»СщІУАГ,ФЪЛэµДЦЬО§ЧЬКЗ»бУРТ»ИєЕуУС,Из№ыУРСЎРг»о¶Ї,ОТёТґт¶ДВЮА­ДИµД¶МРЕЦ§іЦВКТ»¶ЁЧоёЯ!")
	MisResultCondition(NoRecord, 1602)
	MisResultCondition(HasMission,1602)
	MisResultAction(ClearMission,1602)
	MisResultAction(SetRecord, 1602)


	----------------------------------------------------------ЙзЅ»ґуК№17----------ЦРДкДРЧУЎ¤±ИёЗ
	DefineMission( 5848, "Посол мира 17", 1502 )
	MisBeginTalk("<t>КІГґ?ДгОКОТОЄКІГґ?Из№ыОТёжЛЯДгБ¬¶«·ЅєЈµБЎ¤БеЧфМпЙЅ¶јКЗВЮА­ДИµДЕуУСµД»°,ДгУ¦ёГГ»УРТЙОКБЛ°Й.")
				
	MisBeginCondition(NoMission, 1502)
	MisBeginCondition(NoRecord,1502)
	MisBeginCondition(HasRecord, 1602)
	MisBeginAction(AddMission,1502)
	MisCancelAction(ClearMission, 1502)

	MisNeed(MIS_NEED_DESP, "ХТ¶«·ЅєЈµБЎ¤БеЧфМпЙЅ(2219,3286)БДБД")
	
	MisHelpTalk("<t>¶«·ЅєЈµБЎ¤БеЧфМпЙЅКЗУРГыµДєЈµБ,Фшѕ­іЫіТ¶«·ЅєЈУт.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№17-------- ¶«·ЅєЈµБЎ¤БеЧфМпЙЅ
	DefineMission(5849, "Посол мира 17", 1502, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>їХДбЖлНЫЈ¬Г»ПлµЅДгКЗВЮА­ДИµДЕуУС,ЛµЖрАґБ¬ОТ¶јІ»ёТПаРЕѕ№И»ДЬ№»єНєЈКВЦъАніЙОЄЕуУС,ІўЗТОТГЗґпіЙБЛР­Тй,ОТІ»»бП®»чВЮА­ДИ№ЬПЅ·¶О§µДґ¬Ц».")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission,1502)
	MisResultAction(SetRecord, 1502)

	----------------------------------------------------------ЙзЅ»ґуК№18----------¶«·ЅєЈµБЎ¤БеЧфМпЙЅ
	DefineMission( 5850, "Посол мира 18", 1603 )
	MisBeginTalk("<t>ґє·зХтХжКЗєГµШ·Ѕ°Ў,ФЪХвАпОТ¶јјёєхНьјЗБЛєЈЙПµД·з·зУкУк.ХвАпµД·юКОєН·ўРН¶јєНОТјТПзІ»Т»СщЕ¶,ЙПґОВЮА­ДИґшОТИҐі±БчАн·ўК¦ДЗАпЙијЖБЛТ»ёцДЄОчёЙ·ўРН,НЫИы,їб±ЧБЛ!ЛдИ»ОТКЗєЈµБ,µ«КЗОТТІКЗРиТЄ°ьЧ°µДВп,єОїцОТКЗДЗГґУРГыµДєЈµБ°Ў,№ю№ю№ю.")
				
	MisBeginCondition(NoMission, 1603)
	MisBeginCondition(NoRecord,1603)
	MisBeginCondition(HasRecord, 1502)
	MisBeginAction(AddMission,1603)
	MisCancelAction(ClearMission, 1603)

	MisNeed(MIS_NEED_DESP, "ХТі±БчАн·ўК¦(3300,2513)БДБД")
	
	MisHelpTalk("<t>і±БчАн·ўК¦КЗЛјПлЗ°ОА,ЙијЖіцЦЪµД·ўРНЙијЖК¦.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№18-------- і±БчАн·ўК¦
	DefineMission(5851, "Посол мира 18", 1603, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>№ю№ю,ДгЛµµДКЗЙПґОВЮА­ДИґшАґµДДЗёцЖж№ЦµДєЈµБ°Й,Лы¶ФОТёшЛыЙијЖµД·ўРНєЬВъТв°Й!")
	MisResultCondition(NoRecord, 1603)
	MisResultCondition(HasMission,1603)
	MisResultAction(ClearMission,1603)
	MisResultAction(SetRecord, 1603)

	----------------------------------------------------------ЙзЅ»ґуК№19----------і±БчАн·ўК¦
	DefineMission( 5852, "Посол мира 19", 1604 )
	MisBeginTalk("<t>°Ў,Ф­АґДгКЗЧЁіММжВЮА­ДИАґОКєтЛэµДЕуУСµД°Ў,ДгИҐ№эёЫїЪЦё»УЎ¤ЛЄЖжДЗАпБЛ?ДЗУРГ»УРИҐ№эєЈёЫЦё»УЎ¤ПДЗаДЗАпДШ?¶ФБЛ,јЗµГПтОТМжВЮА­ДИОКєГ,Лі±гёжЛЯЛэОТОЄЛэЧЁГЕЙијЖБЛТ»ёц·ўРН,ѕш¶ФККєПЛэµДЖшЦК!")
				
	MisBeginCondition(NoMission, 1604)
	MisBeginCondition(NoRecord,1604)
	MisBeginCondition(HasRecord, 1603)
	MisBeginAction(AddMission,1604)
	MisCancelAction(ClearMission, 1604)

	MisNeed(MIS_NEED_DESP, "ХТєЈёЫЦё»УЎ¤ПДЗа(3685,2652)БДБД")
	
	MisHelpTalk("<t>єЈёЫЦё»УЎ¤ПДЗаКЗТ»ёцПІ»¶»ГПлµДИЛ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№19-------- єЈёЫЦё»УЎ¤ПДЗа
	DefineMission(5853, "Посол мира 19", 1604, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>№юа¶,їґїґХвґуєЈ,¶аГФИЛ°Ў!ОТГїМм¶ј»бєНЛьБДМм,¶о...Дг»бѕхµГОТУРКІГґІ»НЧВр?ДЗМмВЮА­ДИїґµЅОТФЪєНґуєЈЛµ»°¶јГ»УРѕхµГЖж№Ц,ЛэХжКЗТ»ёцМШ±рµДИЛ,єГПсДЬ№»їґНёОТµДРД.")
	MisResultCondition(NoRecord, 1604)
	MisResultCondition(HasMission,1604)
	MisResultAction(ClearMission,1604)
	MisResultAction(SetRecord, 1604)


	----------------------------------------------------------ЙзЅ»ґуК№20----------єЈёЫЦё»УЎ¤ПДЗа
	DefineMission( 5854, "Посол мира 20", 1605 )
	MisBeginTalk("<t>ОТТ»Ц±ТФОЄіэБЛєЈёЫЦё»УЎ¤ПДФЖТФНв,Г»УРИЛДЬ№»АнЅвОТОЄКІГґ¶ФґуєЈЛµ»°ДШ.¶ФБЛ,ЛµЖрПДФЖ,ЛыТІѕхµГВЮА­ДИКЗёцМШ±рµДИЛ,ЙхЦБХыМмФЪОТ¶ъ±ЯМбЖрВЮА­ДИДШ,єЩєЩ.")
				
	MisBeginCondition(NoMission, 1605)
	MisBeginCondition(NoRecord,1605)
	MisBeginCondition(HasRecord, 1604)
	MisBeginAction(AddMission,1605)
	MisCancelAction(ClearMission, 1605)

	MisNeed(MIS_NEED_DESP, "ХТєЈёЫЦё»УЎ¤ПДФЖ(3337,3523)БДБД")
	
	MisHelpTalk("<t>ПДЗаКЗёцУµУРФ¶ґуАнПлєН±§ёєµДєЈёЫЦё»У,їЙКЗГ»УРИЛИПОЄЛыµДФёНыДЬ№»КµПЦ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»ґуК№20-------- єЈёЫЦё»УЎ¤ПДФЖ
	DefineMission(5855, "Посол мира 20", 1605, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Дгјы№эПДЗаБЛ°Ў.КІГґ,ЛыёжЛЯДгОТТ»Ц±МбЖрВЮА­ДИБЛ?єЗєЗ,ЛµКµ»°,ВЮА­ДИКЗДЬ№»ёшИЛБфПВЙоїМУЎПуµДИЛЕ¶.ЧцХвёцРЎХтµДєЈёЫЦё»УДЗГґ¶аДкБЛ,µЪТ»ґОУРИЛИПН¬ОТµДАнПл...ТтОЄОТПлУРТ»МмДЬ№»ЧФјєУµУРТ»Ц§Ѕў¶УИҐ¶Фё¶ЛщУРµДєЈµБ.")
	MisResultCondition(NoRecord, 1605)
	MisResultCondition(HasMission,1605)
	MisResultAction(ClearMission,1605)
	MisResultAction(SetRecord, 1605)

	----------------------------------------------------------ЙзЅ»ґуК№21----------єЈёЫЦё»УЎ¤ПДФЖ
	DefineMission( 5856, "Посол мира 21", 1606 )
	MisBeginTalk("<t>ДгТСѕ­ОКєтБЛЛщУРХвАпВЮА­ДИµДЕуУСБЛ?ОТРАЙНДгµДФрИОРД.З§НтІ»ТЄНьјЗ°СОТµДЧЈёЈґшёшВЮА­ДИЕ¶,Из№ыЛэДЬ№»ѕЎїмАґїґОТГЗ,ОТТ»¶ЁµЪТ»К±јдУ­ЅУЛэ.ОТГЗ¶јєЬПлДоЛэ!¶ФБЛ,Злґъ±нґє·зХтµДЕуУСЅ«ХвёцАсОпґшёшВЮА­ДИ,їґµЅЛьТЄПлµЅОТГЗЕ¶.")
				
	MisBeginCondition(NoMission, 1606)
	MisBeginCondition(NoRecord,1606)
	MisBeginCondition(HasRecord, 1605)
	MisBeginAction(AddMission,1606)
	MisCancelAction(ClearMission, 1606)

	MisNeed(MIS_NEED_DESP, "ХТ°ЧТшіЗєЈКВЛщЦъАнЎ¤ВЮА­ДИ(2247,2858)БДБД")
	
	MisHelpTalk("<t>Вй·іДгЅ«ОТГЗµДАсОпґшёшВЮА­ДИ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ЙзЅ»УўРЫ21------- єЈКВЛщЦъАнЎ¤ВЮА­ДИ
	DefineMission(5857, "Главный герой 21", 1606, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгХжµД°пОТОКєтБЛґє·зХтЛщУРµДЕуУСБЛ,М«ёРР»ДгБЛ,ѕ№И»»№ґшАґБЛАсОп!°Ў,ХжІ»ЦЄµАИзєОёРР»Дг,ХвГ¶С«ХВДгКЬЦ®ОЮАў.")
	MisResultCondition(NoRecord, 1606)
	MisResultCondition(HasMission,1606)
	MisResultAction(ClearMission,1606)
	MisResultAction(SetRecord, 1606)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2573, 1, 4)
	MisResultBagNeed(1)


	-------------------------------------------------МШ±рИООсТ»--------єЈКВЛщЦъАнЎ¤ВЮА­ДИ
	DefineMission (5858, "Специальное мероприятие Большого краба 1", 1607)
	
	MisBeginTalk("<t>єЩ,ѕНХвСщВъЧгУЪДгµДіЙјЁБЛВр?єЗєЗ,Из№ыДг»№УРЧг№»µДРЕРДµД»°,ИҐ±щАЗ±¤ХТВ·ИЛЎ¤¶Ў°Й,ЛыЅ«ёшДгМШ±рµДїјСй.")

	MisBeginCondition(NoMission,1607)
	MisBeginCondition(NoRecord,1607)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(HasRecord,1481)
	MisBeginCondition(HasRecord,1482)
	MisBeginCondition(HasRecord,1483)
	MisBeginCondition(HasRecord,1484)
	MisBeginCondition(HasRecord,1485)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginAction(AddMission,1607)
	MisCancelAction(ClearMission, 1607)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "ХТ±щАЗ±¤µДВ·ИЛЎ¤¶Ў(1335,469)БДБД")
	MisHelpTalk("<t>ТЄПлЦЄµАУРКІГґМШ±рИООсµИґэЧЕДгЈ¬ѕНёПїмИҐХТВ·ИЛЎ¤¶Ў°Й.")

	MisResultCondition(AlwaysFailure)	


	-------------------------------------------------МШ±рИООсТ»--------±щАЗ±¤µДВ·ИЛЎ¤¶Ў
	DefineMission (5859, "Специальное мероприятие Большого краба 1", 1607, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>ДгТСѕ­НЁ№эВЮА­ДИёшДгµДИООсБЛВр?ХжБЛІ»Жр,±рїґОТїґЙПИҐКЗёцІ»ЖрСЫµДВ·ИЛ,ЖдКµОТКЗТюІШј¶±рµДИЛОпЕ¶!єЯєЯ!Б¬ОТµДГыЧЦ¶јТюІШµДДЗГґЗЙГо,єЬїб°Й!ДЗГґАґїґїґДгКЗ·сУРДЬБ¦НкіЙОТёшДгµДМШ±рИООс°Й..")	
	MisResultCondition(NoRecord, 1607)
	MisResultCondition(HasMission,1607)
	MisResultAction(ClearMission,1607)
	MisResultAction(SetRecord, 1607)


	--------------------------------------МШ±рИООс¶ю----±щАЗ±¤µДВ·ИЛЎ¤¶Ў

	DefineMission(5860, "Специальное мероприятие Большого краба 2", 1608 )	
	
	MisBeginTalk("<t>ХвёцИООсКЗѕЮР·№¬МШ±рРР¶Ї,ДгїЙТФІ»ІОјУ,µ«КЗѕНГ»УРМШ±рµДАсОпЕ¶.Из№ыДгХжµДУµУРКµБ¦єНУВЖш,ДЗГґѕНЅУКЬМфХЅ°Й.ОТХвАпУРК®·ЦЦШТЄµД¶«ОчРиТЄДгѕЎїмЛНµЅєЈёЫЦё»УЎ¤НЯАЧГЧДЗАп.<b15·ЦЦУДЪёПµЅ№ю¶ыІ№ёшХѕХТєЈёЫЦё»УЎ¤НЯАЧГЧ(2041,1355)>БДБД.")

	MisBeginCondition(NoMission,1608)
	MisBeginCondition(NoRecord,1608)
	MisBeginCondition(HasRecord,1607)
	MisBeginAction(AddMission,1608)
	MisBeginAction(AddChaItem3, 2952)---------ѕЮР·МШ±рРР¶ЇїЁ
	MisCancelAction(ClearMission, 1608)
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "ХТєЈёЫЦё»УЎ¤НЯАЧГЧ(2041,1355)БДБД")
	MisHelpTalk("<t>Go now! You only have 15 minutes")

	MisResultCondition(AlwaysFailure)	

	--------------------------------------МШ±рИООс¶ю----єЈёЫЦё»УЎ¤НЯАЧГЧ

	DefineMission(5861, "Специальное мероприятие Большого краба 2", 1608, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>№ю№юЈ¬·ЗіЈёРР»Дг.ОТµИХвёц¶«ОчєГѕГАІ.¶ч...ЛыГЗґшРЕёжЛЯОТДгКЗТ»ёцУµУРЗїґуЗ±Б¦µДїЙФмЦ®ІЕ.Аґ,ЛНДгТ»·ЭАсОп,ПЈНыДЬ№»°пЦъДгѕЎїмЗїґуЖрАґ.")
	MisResultCondition(HasMission, 1608)
	MisResultCondition(NoRecord,1608)
	MisResultAction(AddChaItem4, 2952)----МШ±рРР¶ЇїЁ
	MisResultAction(ClearMission, 1608)
	MisResultAction(SetRecord,  1608 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2575, 1, 4)------------ѕЮР·ґ¬і¤їбЧ°±¦Пд
	MisResultBagNeed(1)

-------------------------------------------------ѕЮР·Ц®Л®КЦ№э№ШЅ±Аш----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ
	DefineMission (5862, "Награда моряка за тест Большого Краба", 1609)
	
	MisBeginTalk("<t>јЇЖл7Г¶С«ХВѕНїЙТФФЪОТХвАп¶Т»»µЅѕЮР·№¬КШУЎєНКЁЧУ№¬µДГЕЖ±БЛ.»№УРєЬ¶аЅ±АшЕ¶ ")

	MisBeginCondition(NoMission,1609)
	MisBeginCondition(HasRecord,1466)
	MisBeginCondition(HasRecord,1470)
	MisBeginCondition(HasRecord,1471)
	MisBeginCondition(HasRecord,1472)
	MisBeginCondition(HasRecord,1473)
	MisBeginCondition(HasRecord,1474)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginCondition(NoRecord,1609)
	MisBeginAction(AddMission,1609)  
	MisBeginAction(AddTrigger, 16091, TE_GETITEM, 2568, 1 )		
	MisBeginAction(AddTrigger, 16092, TE_GETITEM, 2569, 1 )		
	MisBeginAction(AddTrigger, 16093, TE_GETITEM, 2570, 1 )		
 	MisBeginAction(AddTrigger, 16094, TE_GETITEM, 2571, 1 )		
	MisBeginAction(AddTrigger, 16095, TE_GETITEM, 2572, 1 )		
	MisBeginAction(AddTrigger, 16096, TE_GETITEM, 2573, 1 )		
	MisBeginAction(AddTrigger, 16097, TE_GETITEM, 2574, 1 )	
	MisCancelAction(ClearMission, 1609)						                                     
	
	MisNeed(MIS_NEED_ITEM, 2568, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2569, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 2570, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 2571, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 2572, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2573, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 2574, 1, 70, 1 )
	
	MisHelpTalk("<t>Что вы стоите, принесите все что я вам сказал и забирайте свой приз!")
	MisResultTalk("<t>ПВТ»№¬КЗКЁЧУ№¬,УРёьУХИЛµДЅ±АшєНёьґМј¤µДМфХЅФЪµИДг.")

	MisResultCondition(HasMission, 1609)
	MisResultCondition(NoRecord,1609)
	MisResultCondition(HasItem, 2568, 1 )
	MisResultCondition(HasItem, 2569, 1 )
	MisResultCondition(HasItem, 2570, 1 )
	MisResultCondition(HasItem, 2571, 1 )
	MisResultCondition(HasItem, 2572, 1 )
	MisResultCondition(HasItem, 2573, 1 )
	MisResultCondition(HasItem, 2574, 1 )

	MisResultAction(TakeItem, 2568, 1 )
	MisResultAction(TakeItem, 2569, 1 )
	MisResultAction(TakeItem, 2570, 1 )
	MisResultAction(TakeItem, 2571, 1 )
	MisResultAction(TakeItem, 2572, 1 )
	MisResultAction(TakeItem, 2573, 1 )
	MisResultAction(TakeItem, 2574, 1 )

	MisResultAction(ClearMission, 1609)
	MisResultAction(SetRecord,  1609 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2273, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2274, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3877, 1, 4)
	MisResultAction(AddMoney,1000000,1000000)
	MisResultAction(ShuangZiSS)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1874)	
	TriggerAction( 1, AddNextFlag, 1609, 10, 1 )
	RegCurTrigger( 16091 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1875)	
	TriggerAction( 1, AddNextFlag, 1609, 20, 1 )
	RegCurTrigger( 16092 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1876)	
	TriggerAction( 1, AddNextFlag, 1609, 30, 1 )
	RegCurTrigger( 16093 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1877)	
	TriggerAction( 1, AddNextFlag, 1609, 40, 1 )
	RegCurTrigger( 16094 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1878)	
	TriggerAction( 1, AddNextFlag, 1609, 50, 1 )
	RegCurTrigger( 16095 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1879)	
	TriggerAction( 1, AddNextFlag, 1609, 60, 1 )
	RegCurTrigger( 16096 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1880)	
	TriggerAction( 1, AddNextFlag, 1609, 70, 1 )
	RegCurTrigger( 16097 )
----------------------------------------------ѕЮР·Ц®єЈµБ№э№ШЅ±Аш----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	
	DefineMission (5863, "Награда пирата за тест Большого Краба", 1610)
	
	MisBeginTalk("<t>јЇЖл7Г¶С«ХВѕНїЙТФФЪОТХвАп¶Т»»µЅѕЮР·№¬КШУЎєНКЁЧУ№¬µДГЕЖ±БЛ.»№УРєЬ¶аЅ±АшЕ¶ ")

	MisBeginCondition(NoMission,1610)
	MisBeginCondition(HasRecord,1467)
	MisBeginCondition(HasRecord,1476)
	MisBeginCondition(HasRecord,1477)
	MisBeginCondition(HasRecord,1600)
	MisBeginCondition(HasRecord,1479)
	MisBeginCondition(HasRecord,1480)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginCondition(NoRecord,1610)
	MisBeginAction(AddMission,1610)
	MisBeginAction(AddTrigger, 16101, TE_GETITEM, 2568, 1 )		
	MisBeginAction(AddTrigger, 16102, TE_GETITEM, 2569, 1 )		
	MisBeginAction(AddTrigger, 16103, TE_GETITEM, 2570, 1 )		
 	MisBeginAction(AddTrigger, 16104, TE_GETITEM, 2571, 1 )		
	MisBeginAction(AddTrigger, 16105, TE_GETITEM, 2572, 1 )		
	MisBeginAction(AddTrigger, 16106, TE_GETITEM, 2573, 1 )		
	MisBeginAction(AddTrigger, 16107, TE_GETITEM, 2574, 1 )		
	MisCancelAction(ClearMission, 1610)						                                     
	
	MisNeed(MIS_NEED_ITEM, 2568, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2569, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 2570, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 2571, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 2572, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2573, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 2574, 1, 70, 1 )
	
	MisHelpTalk("<t>Что вы стоите, принесите все что я вам сказал и забирайте свой приз!")
	MisResultTalk("<t>ПВТ»№¬КЗКЁЧУ№¬,УРёьУХИЛµДЅ±АшєНёьґМј¤µДМфХЅФЪµИДг.")

	MisResultCondition(HasMission, 1610)
	MisResultCondition(NoRecord,1610)
	MisResultCondition(HasItem, 2568, 1 )
	MisResultCondition(HasItem, 2569, 1 )
	MisResultCondition(HasItem, 2570, 1 )
	MisResultCondition(HasItem, 2571, 1 )
	MisResultCondition(HasItem, 2572, 1 )
	MisResultCondition(HasItem, 2573, 1 )
	MisResultCondition(HasItem, 2574, 1 )

	MisResultAction(TakeItem, 2568, 1 )
	MisResultAction(TakeItem, 2569, 1 )
	MisResultAction(TakeItem, 2570, 1 )
	MisResultAction(TakeItem, 2571, 1 )
	MisResultAction(TakeItem, 2572, 1 )
	MisResultAction(TakeItem, 2573, 1 )
	MisResultAction(TakeItem, 2574, 1 )

	MisResultAction(ClearMission, 1610)
	MisResultAction(SetRecord,  1610 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2273, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2274, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3877, 2, 4)
	MisResultAction(AddMoney,2000000,2000000)
	MisResultAction(ShuangZiHD)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2568)	
	TriggerAction( 1, AddNextFlag, 1610, 10, 1 )
	RegCurTrigger( 16101 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2569)	
	TriggerAction( 1, AddNextFlag, 1610, 20, 1 )
	RegCurTrigger( 16102 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2570)	
	TriggerAction( 1, AddNextFlag, 1610, 30, 1 )
	RegCurTrigger( 16103 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2571)	
	TriggerAction( 1, AddNextFlag, 1610, 40, 1 )
	RegCurTrigger( 16104 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2572)	
	TriggerAction( 1, AddNextFlag, 1610, 50, 1 )
	RegCurTrigger( 16105 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2573)	
	TriggerAction( 1, AddNextFlag, 1610, 60, 1 )
	RegCurTrigger( 16106 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2574)	
	TriggerAction( 1, AddNextFlag, 1610, 70, 1 )
	RegCurTrigger( 16107 )

	--------------------------------------------ѕЮР·Ц®ґ¬і¤№э№ШЅ±Аш----------єЈКВЛщЦъАнЎ¤ВЮА­ДИ	
	DefineMission (5864, "Награды Капитана Большого Краба", 1611)
	
	MisBeginTalk("<t>јЇЖл7Г¶С«ХВѕНїЙТФФЪОТХвАп¶Т»»µЅѕЮР·№¬КШУЎєНКЁЧУ№¬µДГЕЖ±БЛ.»№УРєЬ¶аЅ±АшЕ¶ ")

	MisBeginCondition(NoMission,1611)
	MisBeginCondition(HasRecord,1468)
	MisBeginCondition(HasRecord,1481)
	MisBeginCondition(HasRecord,1482)
	MisBeginCondition(HasRecord,1483)
	MisBeginCondition(HasRecord,1484)
	MisBeginCondition(HasRecord,1485)
	MisBeginCondition(HasRecord,1475)
	MisBeginCondition(HasRecord,1606)
	MisBeginCondition(NoRecord,1611)
	MisBeginAction(AddMission,1611)   
	MisBeginAction(AddTrigger, 16111, TE_GETITEM, 2568, 1 )		
	MisBeginAction(AddTrigger, 16112, TE_GETITEM, 2569, 1 )		
	MisBeginAction(AddTrigger, 16113, TE_GETITEM, 2570, 1 )		
 	MisBeginAction(AddTrigger, 16114, TE_GETITEM, 2571, 1 )		
	MisBeginAction(AddTrigger, 16115, TE_GETITEM, 2572, 1 )		
	MisBeginAction(AddTrigger, 16116, TE_GETITEM, 2573, 1 )		
	MisBeginAction(AddTrigger, 16117, TE_GETITEM, 2574, 1 )	
	MisCancelAction(ClearMission, 1611)						                                     
	
	MisNeed(MIS_NEED_ITEM, 2568, 1, 10, 1 )
	MisNeed(MIS_NEED_ITEM, 2569, 1, 20, 1 )
	MisNeed(MIS_NEED_ITEM, 2570, 1, 30, 1 )
	MisNeed(MIS_NEED_ITEM, 2571, 1, 40, 1 )
	MisNeed(MIS_NEED_ITEM, 2572, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2573, 1, 60, 1 )
	MisNeed(MIS_NEED_ITEM, 2574, 1, 70, 1 )
	
	MisHelpTalk("<t>Что вы стоите, принесите все, что я вам сказал и забирайте свой приз!")
	MisResultTalk("<t>ПВТ»№¬КЗКЁЧУ№¬,УРёьУХИЛµДЅ±АшєНёьґМј¤µДМфХЅФЪµИДг.")

	MisResultCondition(HasMission, 1611)
	MisResultCondition(NoRecord,1611)
	MisResultCondition(HasItem, 2568, 1 )
	MisResultCondition(HasItem, 2569, 1 )
	MisResultCondition(HasItem, 2570, 1 )
	MisResultCondition(HasItem, 2571, 1 )
	MisResultCondition(HasItem, 2572, 1 )
	MisResultCondition(HasItem, 2573, 1 )
	MisResultCondition(HasItem, 2574, 1 )

	MisResultAction(TakeItem, 2568, 1 )
	MisResultAction(TakeItem, 2569, 1 )
	MisResultAction(TakeItem, 2570, 1 )
	MisResultAction(TakeItem, 2571, 1 )
	MisResultAction(TakeItem, 2572, 1 )
	MisResultAction(TakeItem, 2573, 1 )
	MisResultAction(TakeItem, 2574, 1 )

	MisResultAction(ClearMission, 1611)
	MisResultAction(SetRecord,  1611 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2273, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 2274, 1, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3877, 3, 4)
	MisResultAction(AddMoney,3000000,3000000)
	MisResultAction(ShuangZiCZ)
	MisResultBagNeed(3)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2568)	
	TriggerAction( 1, AddNextFlag, 1611, 10, 1 )
	RegCurTrigger( 16111 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2569)	
	TriggerAction( 1, AddNextFlag, 1611, 20, 1 )
	RegCurTrigger( 16112 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2570)	
	TriggerAction( 1, AddNextFlag, 1611, 30, 1 )
	RegCurTrigger( 16113 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2571)	
	TriggerAction( 1, AddNextFlag, 1611, 40, 1 )
	RegCurTrigger( 16114 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2572)	
	TriggerAction( 1, AddNextFlag, 1611, 50, 1 )
	RegCurTrigger( 16115 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2573)	
	TriggerAction( 1, AddNextFlag, 1611, 60, 1 )
	RegCurTrigger( 16116 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2574)	
	TriggerAction( 1, AddNextFlag, 1611, 70, 1 )
	RegCurTrigger( 16117 )


----------------------------------------ЅрЗпК®ФВґуХўР·»о¶ЇЈЁТ»Ј©---------°ЧТшіЗАПДМДМЎ¤±ґµЩЈЁ2277,2769Ј©

	DefineMission(5865,"ЅрЗпК®ФВзН·ЧјЩЖЪіФГ«Р·",1208)

	MisBeginTalk("<t>ЅрЗпК®ФВЈ¬ХэКЗіФР·µД»ЖЅрјСјѕЈЎ<n><t>ЅьАґОТФЪґє·зХтС°µГТ»±ѕЕлР·ГШ·ЅЈ¬ѕЭЛµУЙґЛ·ЅЕлЦуµДГ«Р·Ј¬УРТвПлІ»µЅµДР§№ыЈ¬І»ЦЄДъїЙёРРЛИ¤Јї")

	MisBeginCondition(NoMission, 1208)
	MisBeginCondition(NoRecord, 1208)
	MisBeginAction(AddMission, 1208)
	MisBeginAction(AddTrigger, 12081, TE_GETITEM, 4490, 1)          
	MisBeginAction(AddTrigger, 12082, TE_GETITEM, 4426, 2)
	MisBeginAction(AddTrigger, 12083, TE_GETITEM, 4393, 8)

	MisCancelAction(ClearMission,1208)                         ---------їЙТФИЎПыґЛИООс

	MisNeed(MIS_NEED_DESP, "<t>ОТЛдѕ«НЁЕлвїЈ¬µ«Ф­ІДБП»№РиДгµД°пЦъЎЈМъјЧР·(јУДЙ1773,2517)ЙнЙП1·Э<yР·їЗ>КЗГАО¶ёЯМАµДµНБПЈ¬ОА±шР·(јУДЙ1783,2507)ЙнЙП2ёц<y·жАыµДР·ЗЇ>ДЬ°СР·ИвЗРёоµГёьОЄѕщФИЈ¬¶ш8·ЭУІјЧР·(ЙоА¶994,857)ЙнЙП<yОЮ·ЁКіУГµДР·ЅЕ>ФтКЗЕлЦуґЛІЛµД№ШјьЈЎ")
	MisNeed(MIS_NEED_ITEM, 4490, 1, 10, 1)               ---------Р·їЗ
	MisNeed(MIS_NEED_ITEM, 4426, 2, 20, 2)               ---------·жАыµДР·ЗЇ
	MisNeed(MIS_NEED_ITEM, 4393, 8, 30, 8)               ---------ОЮ·ЁКіУГµДР·ЅЕ

	MisHelpTalk("<t>ЧРПёХТµЅХвР©Ф­ІДБПЈ¬ОТµДішТХТ»¶ЁІ»»бИГДгК§НыЈЎ")
	MisResultTalk("<t>ёПЅфіўіўПКГАµДГ«Р·КўСзЈ¬Т»¶ЁµГБфТвЛьµДР§№ыЕ¶ЈЎ№ъЗм14МмЈ¬ХжЗйОЄДъЕлвїР·ИвґуІНЈ¬»¶У­ФЩґОЖ·іўЈЎ")

	MisResultCondition(HasMission, 1208)
	MisResultCondition(NoRecord, 1208)
	MisResultCondition(HasItem, 4490, 1)
	MisResultCondition(HasItem, 4426, 2)
	MisResultCondition(HasItem, 4393, 8)

	MisResultAction(TakeItem, 4490, 1)
	MisResultAction(TakeItem, 4426, 2)
	MisResultAction(TakeItem, 4393, 8)

	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 0048, 1, 4)                          ---------Г«Р·
	MisResultAction(ClearMission, 1208)                        
	MisResultAction(SetRecord, 1208)
	MisResultAction(ClearRecord, 1208)                          ----------ИООсїЙТФ·ґёґЅУ
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4490)
	TriggerAction(1, AddNextFlag, 1208, 10, 1)
	RegCurTrigger(12081)


	InitTrigger()
	TriggerCondition(1, IsItem, 4426)
	TriggerAction(1, AddNextFlag, 1208, 20, 2)
	RegCurTrigger(12082)


	InitTrigger()
	TriggerCondition(1, IsItem, 4393)
	TriggerAction(1, AddNextFlag, 1208, 30, 8)
	RegCurTrigger(12083)


----------------------------------------ЅрЗпК®ФВґуХўР·»о¶ЇЈЁ¶юЈ©---------°ЧТшіЗАПДМДМЎ¤±ґµЩЈЁ2277,2769Ј©

	DefineMission(5866,"ЅрЗпК®ФВґЅіЭБфПгґуХўР·",1209)

	MisBeginTalk("<t>ґуХўР·АъАґПнУРР·ЦРЦ®НхµДГАУюЈ¬УЙОТ°ѕЦуµДґуХўР·ёьКЗѕЯ±ёПКЎўПгЎўДЫЎўЛ¬µДМШµгЈ¬іФєуИГДгЙсЗеЖшЛ¬Ј¬Ул№ЦОпХЅ¶·ѕ­Сй·ЙФцЈЎІ»ЦЄДъКЗ·сУРРЛИ¤Ж·іўЈї")

	
	MisBeginCondition(NoMission, 1209)
	MisBeginCondition(NoRecord, 1209)
	MisBeginAction(AddMission,1209)
	MisBeginAction(AddTrigger, 12091, TE_GETITEM, 4342, 1)
	MisBeginAction(AddTrigger, 12092, TE_GETITEM, 4793, 2)
	MisBeginAction(AddTrigger, 12093, TE_GETITEM, 4500, 1)
	MisBeginAction(AddTrigger, 12094, TE_GETITEM, 0057, 1)


	MisCancelAction(ClearMission, 1209)

	MisNeed(MIS_NEED_DESP, "<t>ЕлЦЖґЛР·ЛщРиµДФ­БПТа·ЗіЈїјѕїЈ¬іэБЛОА±шР·(јУДЙ1783,2507)ЙнЙП1ёц<yјбУІµДР·їЗ>Ј¬і¤ИЮР·(єЈµЧЛнµА349, 376)ЙнЙП2ёц<yі¤ИЮР·ЗЇ>Ј¬МъјЧР·Нх(јУДЙ1783,2507)ЙнЙП1ёц<yРЙємµДР·їЗ>Ј¬»№РиЙМіЗАпіцКЫµД1ёщ<yР·Йю>Ј¬ґЛЙюДЬА¦Р·Ц®ѕ«»ЄЈ¬ЦЖР·Ц®ѕ«Ж·ЎЈ")
       
	
	MisNeed(MIS_NEED_ITEM, 4342, 1, 10, 1)                       ---------јбУІµДР·їЗ
	MisNeed(MIS_NEED_ITEM, 4793, 2, 20, 2)                       ---------і¤ИЮР·ЗЇ
	MisNeed(MIS_NEED_ITEM, 4500, 1, 30, 1)                       ---------РЙємµДР·їЗ
	MisNeed(MIS_NEED_ITEM, 0057, 1, 40, 1)                       ---------Р·Йю

	MisHelpTalk("<t>ЧЭИ»Ф­ІДБПµДКХјЇКЗТ»јю·ЗіЈРБїаµДКВЈ¬µ«ПаРЕЖ·іў№эГАО¶µДґуХўР·єуЈ¬Дг»бОЄЧФјєµДЕ¬Б¦¶шёРµЅЧФєАЈЎ")
	MisResultTalk("<t>ПКПгґуХўР·іцВЇЈ¬јЗµГХдП§КіУГЦ®єу20±¶ѕ­СйµДі¬ЦµР§№ыаёЈЎ№ъЗмі¤јЩЈ¬УлДъ·ЦПнГШЦЖГАО¶ЕлР·ґуІНЈ¬»¶У­ФЩґЛЖ·іўЈЎ")

	MisResultCondition(HasMission, 1209)
	MisResultCondition(NoRecord, 1209)
	MisResultCondition(HasItem, 4342, 1)
	MisResultCondition(HasItem, 4793, 2)
	MisResultCondition(HasItem, 4500, 1)
	MisResultCondition(HasItem, 0057, 1)

	MisResultAction(TakeItem, 4342, 1)
	MisResultAction(TakeItem, 4793, 2)
	MisResultAction(TakeItem, 4500, 1)
	MisResultAction(TakeItem, 0057, 1)

	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 0056, 1, 4)                                   ---------ґуХўР·
	MisResultAction(ClearMission, 1209)
	MisResultAction(SetRecord, 1209)
	MisResultAction(ClearRecord, 1209)                                   ----------ИООсїЙТФ·ґёґЅУ
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsItem, 4342)
	TriggerAction(1, AddNextFlag, 1209, 10, 1)
	RegCurTrigger(12091)


	InitTrigger()
	TriggerCondition(1, IsItem, 4793)
	TriggerAction(1, AddNextFlag, 1209, 20, 2)
	RegCurTrigger(12092)

	InitTrigger()
	TriggerCondition(1, IsItem, 4500)
	TriggerAction(1, AddNextFlag, 1209, 30, 1)
	RegCurTrigger(12093)

	InitTrigger()
	TriggerCondition(1, IsItem, 0057)
	TriggerAction(1, AddNextFlag, 1209, 40, 1)
	RegCurTrigger(12094)


----------------------------------------ЅрЗпК®ФВґуХўР·»о¶ЇЈЁИэЈ©---------°ЧТшіЗАПДМДМЎ¤±ґµЩЈЁ2277,2769Ј©

	DefineMission(5867, "ЅрЗпК®ФВВъ»іЖЪґэУэР·Гз", 1210)

	MisBeginTalk("<t>ёщѕЭХв±ѕЕлвїГШ·ЅЙПµДјЗФШЈ¬УЙѕ«БјР·ГзЕаУэ¶шіцµДР·НхїЙКЗѕЯ±ёОЮТФВЧ±ИµДЙэј¶№¦Р§ЈЎКЗОЄУВКїЦ®ѕ«Ж·ЈЎ¶шХвР·Гз±ѕЙнТаУµУРЙсЖжР§№ыЈ¬І»ЦЄДъїЙёРРЛИ¤Јї")

	MisBeginCondition(NoMission, 1210)
	MisBeginCondition(NoRecord, 1210)
	MisBeginAction(AddMission, 1210)
	MisBeginAction(AddTrigger, 12101, TE_KILL, 273, 10)
	MisBeginAction(AddTrigger, 12102, TE_KILL, 186, 10)
	MisBeginAction(AddTrigger, 12103, TE_GETITEM, 4259, 5)
	MisBeginAction(AddTrigger, 12104, TE_GETITEM, 4890, 5)


	MisCancelAction(ClearMission, 1210)

	MisNeed(MIS_NEED_DESP, "<t>СшУэР·ГзїЙКЗјюј¬КЦµДКВ¶щЈ¬ХвјёИХОТ±»і¤ИЮР·ЎўЙіР·ЅБµГОЮ·ЁјЇЦРѕ«ЙсЈ¬ДъїЙ·сОЄОТЅвѕцєу№ЛЦ®УЗДШЈїПыГрО»УЪ(єЈµЧЛнµА349, 376)µД10Ц»<yі¤ИЮР·>єНО»УЪ(Д§Е®Ц®єЈ1341,3010)µД10Ц»<yЙіР·>Ј¬ІўЛіґш°СЛьГЗІШДдµД5·Э<y»рИЮ>єН5·Э<yУРЙіЧУµДР·Ив>ґш»ШАґЈЎ")
	MisNeed(MIS_NEED_KILL, 273, 10, 10, 10)                  ----------і¤ИЮР·
	MisNeed(MIS_NEED_KILL, 186, 10, 20, 10)                  ----------ЙіР·
	MisNeed(MIS_NEED_ITEM, 4259, 5, 30, 5)                  -----------»рИЮ
	MisNeed(MIS_NEED_ITEM, 4890, 5, 40, 5)                  -----------УРЙіЧУµДР·Ив



	MisHelpTalk("<t>ДгїЙТЄРЎРДУ¦¶ФДЗР©ЅЖ»«µДі¤ИЮР·єНЙіР·Ј¬ОТ»бФщУлДг1·Э<yР·Гз>ЧчОЄ»Ш±ЁаёЈЎ")
	MisResultTalk("<t>Хв·ЭИбДЫµДР·ГзРиТЄДг·ЕЦГФЪ<y±і°ьµЪ2Аё>(·ЕЦГѕ«БйµДО»ЦГ)Ј¬<y5Мм>(7200·ЦЦУ)µДѕ«РДєЗ»¤Ј¬·ЅДЬµЅОТХвЕлвїОЄчТчСґуІНЈЎІ»№эЈ¬ѕЭЛµЙМіЗАп»біцКЫТ»ЦЦДЬёьїмґМј¤Р·ГзіЙі¤µД<yі¬ј¶Р·УГј¤ЛШ>Ј¬ДгИфУРґЛОпїЙЦ±ЅУАґХТОТЈЎСшУэР·ГзХжКЗІ»јтµҐДЕЈ¬Из№ыѕхµГХвР©КВ¶јєЬАНЙс·іРДЈ¬ДЗГґЦ±ЅУКіУГХв·ЭР·ГзЈ¬Фт»бёшДгґшАґМбЙэ1000µгѕ­СйµДѕЄПІЈЎ")
	
	MisResultCondition(HasMission, 1210)
	MisResultCondition(NoRecord, 1210)
	MisResultCondition(HasFlag, 1210, 19)
	MisResultCondition(HasFlag, 1210, 29)
	MisResultCondition(HasItem, 4259, 5)
	MisResultCondition(HasItem, 4890, 5)

	MisResultAction(TakeItem, 4259, 5)
	MisResultAction(TakeItem, 4890, 5)


	MisResultAction(ClearMission, 1210)
	MisResultAction(SetRecord, 1210)
	MisResultAction(ClearRecord, 1210)                                   ----------ИООсїЙТФ·ґёґЅУ
	MisResultAction(Givecrab, 0058)                                   ---------Р·Гз
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition(1, IsMonster, 273)
	TriggerAction(1, AddNextFlag, 1210, 10, 10)
	RegCurTrigger(12101)

	InitTrigger()
	TriggerCondition(1, IsMonster, 186)
	TriggerAction(1, AddNextFlag, 1210, 20, 10)
	RegCurTrigger(12102)

	InitTrigger()
	TriggerCondition(1, IsItem, 4259)
	TriggerAction(1, AddNextFlag, 1210, 30, 5)
	RegCurTrigger(12103)

	InitTrigger()
	TriggerCondition(1, IsItem, 4890)
	TriggerAction(1, AddNextFlag, 1210, 40, 5)
	RegCurTrigger(12104)



-----------------------------kokora---------------------------------------
-------------------------------------------------------------------------------

-------------------------------------------Йэј¶їјКФ1	
	DefineMission( 6138, "Миссия Переводного Экзамена", 1211)
	MisBeginTalk( "<t>С§БЛХвГґѕГЈ¬ДгЦХУЪїЙТФМбЙэС§АъБЛЕ¶ЈЎХвґОµДїјКФИООсєЬјтµҐЈ¬ИҐХТ30ёцѕ«Бй№ыАґѕНРРБЛ")
	MisBeginCondition( CheckXSZCh,2 )				------јмІвС§ЙъЦ¤ЦРґўґжµДС§·ЦКЗ·сґпµЅЙППЮ
	MisBeginCondition( HasItem , 3280,1 )
	MisBeginCondition( HasNoItem, 3282)
	MisBeginCondition( NoMission ,1211)
	MisBeginAction( AddMission, 1211)
	MisBeginAction(AddTrigger, 12111, TE_GETITEM, 3116, 30 )
	MisCancelAction( ClearMission, 1211)

	MisNeed(MIS_NEED_ITEM, 3116, 30, 10, 30 )
	MisHelpTalk( "<t>їмµгИҐ°ЙЈ¬К±јдІ»µИИЛЕ¶")

	MisResultTalk( "<t>Жнµ»ЧФјєУРёцєГіЙјЁ°ЙЈЎ")
	MisResultCondition( HasMission, 1211)
	MisResultCondition( HasItem, 3116, 30)
	MisResultAction( TakeItem, 3116, 30)
	MisResultAction( ClearMission, 1211)
	MisResultAction( GiveItem, 3282, 1, 4)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 1211, 10, 30 )
	RegCurTrigger( 12111 )


--------------------------------------------------------------------ХьѕИЅЈїНЕбГО

	DefineMission( 6139, "ХьѕИЅЈїНЕбГО", 1212 )
	MisBeginTalk("<t>ОТµДЕуУСЕбГО±»Д§НхВеїЛІРИМµДЙ±є¦БЛ.УВёТµДХЅКї,Из№ыДгДЬ№»ОЄОТХТ»Шґъ±нОТЕуУСБй»кµД<bЖЯёцЧЦДёP-E-I-M-E-N-G>.ОТЅ«»б°СОТКХІШ¶аДкµДД§·ЁєРЛНёшДг.ДгїЙТФИҐХТТ»ПВФЪ<bјЕДЇЦ®ЛюёЅЅьµДВеїЛµДКШГЕИЛ(271,1775)>СЇОКТ»ПВѕЯМеµДЗйїц")
	MisBeginCondition(NoMission, 1212)
	MisBeginCondition(NoRecord,1212)
	MisBeginAction(AddMission,1212)
	MisBeginAction(AddTrigger, 12121, TE_GETITEM, 3854, 2)
	MisBeginAction(AddTrigger, 12122, TE_GETITEM, 3858, 1)
	MisBeginAction(AddTrigger, 12123, TE_GETITEM, 3863, 1)
	MisBeginAction(AddTrigger, 12124, TE_GETITEM, 3865, 1)
	MisBeginAction(AddTrigger, 12125, TE_GETITEM, 3862, 1)
	MisBeginAction(AddTrigger, 12126, TE_GETITEM, 3856, 1)
	
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "ХТ»Шґъ±нПДМмЕуУСБй»кµД<bЖЯёцЧЦДёP-E-I-M-E-N-G>.ИҐХТТ»ПВФЪ<bјЕДЇЦ®ЛюёЅЅьµДВеїЛµДКШГЕИЛ(271,1775)>СЇОКТ»ПВѕЯМеµДЗйїц.јЗµГ»ШАґХТ°ЧТшіЗµДД§·ЁК¦ПДМм(2229,2782)Ѕ»Іо")
	MisNeed(MIS_NEED_ITEM, 3854, 2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 3858, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 3863, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 3865, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 3862, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 3856, 1, 60, 1)

	MisHelpTalk("<t>ОТµИЧЕДгµД№йАґ.")
	MisResultTalk("<t>ДгКЗХжХэµДУВКї!ЧчОЄ±Ёґр,ХвёцОТКХІШБЛ¶аДкµДД§·ЁєР,ПЦФЪКЗДгµДБЛ.")

	MisResultCondition(HasMission, 1212)
	MisResultCondition(NoRecord,1212)
	MisResultCondition(HasItem, 3854, 2)
	MisResultCondition(HasItem, 3858, 1)
	MisResultCondition(HasItem, 3863, 1)
	MisResultCondition(HasItem, 3865, 1)
	MisResultCondition(HasItem, 3862, 1)
	MisResultCondition(HasItem, 3856, 1)

	MisResultAction(TakeItem, 3854, 2 )
	MisResultAction(TakeItem, 3858, 1 )
	MisResultAction(TakeItem, 3863, 1 )
	MisResultAction(TakeItem, 3865, 1 )
	MisResultAction(TakeItem, 3862, 1 )
	MisResultAction(TakeItem, 3856, 1 )

	
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3673,1,4)------------ПДМмµДД§·ЁєР
	MisResultAction(ClearMission, 1212)
	--MisResultAction(ZSSTOP)
	MisResultAction(SetRecord, 1212)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 3854)	
	TriggerAction( 1, AddNextFlag, 1212, 10, 2 )
	RegCurTrigger( 12121 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3858)	
	TriggerAction( 1, AddNextFlag, 1212, 20, 1 )
	RegCurTrigger( 12122 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3863)	
	TriggerAction( 1, AddNextFlag, 1212, 30, 1 )
	RegCurTrigger( 12123 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3865)	
	TriggerAction( 1, AddNextFlag, 1212, 40, 1 )
	RegCurTrigger( 12124 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3862)	
	TriggerAction( 1, AddNextFlag, 1212, 50, 1 )
	RegCurTrigger( 12125 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3856)	
	TriggerAction( 1, AddNextFlag, 1212, 60, 1 )
	RegCurTrigger( 12126 )

	----------------------------------------------------------КШГЕИЛНёВ©µДРЕПў----------ВеїЛјТµДКШГЕИЛ
	DefineMission( 6140, "КШГЕИЛНёВ©µДРЕПў", 1213 )
	MisBeginTalk("<t>ОТІ»ДЬіцВфВеїЛґуИЛ,µ«ОТТІєЬЧрѕґДгХвСщЙбЙнНмѕИЕуУСµДИЛ.ХвСщ°Й,ОТёжЛЯДгТ»ёцРЕПўЈєµЪТ»ХЕЧЦДёФЪјЕДЇЦ®Лю1(263,260)ОТГЗјТДРУ¶µДКЦАп")
				
	MisBeginCondition(NoMission, 1213)
	MisBeginCondition(NoRecord,1213)
	MisBeginCondition(HasMission, 1212)
	MisBeginCondition(NoRecord, 1212)
	MisBeginAction(AddMission,1213)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "ХТјЕДЇЦ®Лю1Іг(263,260)ВеїЛјТµДДРУ¶БДБД")
	
	MisHelpTalk("<t>ОТІўГ»УРіцВфОТµДЦчИЛЕ¶,УРЛ­їґµЅОТЛНіцБЛЧЦДёїЁ?")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------КШГЕИЛНёВ©µДРЕПў--------ВеїЛјТµДДРУ¶
	DefineMission(6141, "КШГЕИЛНёВ©µДРЕПў", 1213, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТµДЦчИЛµДИ·Ѕ»ёш№эОТТ»ХЕЧЦДёїЁЖ¬.µ«ОТЖѕКІГґёшДг?")
	MisResultCondition(NoRecord, 1213)
	MisResultCondition(HasMission,1213)
	MisResultAction(ClearMission,1213)
	MisResultAction(SetRecord, 1213)


	---------------------------------------------ДРУ¶µДІ»Въ---------ВеїЛјТµДДРУ¶
	DefineMission(6142,"ДРУ¶µДІ»Въ",1214)

      MisBeginTalk("<t> ЖдКµХвёцЧЦДёїЁ¶ФОТАґЛµТІГ»КІГґУГ,ОТТІКЗЕјИ»µГµЅµД.їґµЅЕФ±ЯДЗР©МЦСбµД№ЦОпБЛВр?Гїµ±ОТТЄФј»бµДК±єтЛьГЗЧЬКЗІ»єПК±ТЛµДЗ°АґґтИЕ,ТЄёшЛьГЗµгСХЙ«їґїґ.ДгЧцµГБоОТВъТв,ОТ»б°СДЗХЕЧЦДёїЁЛНёшДг.")

      MisBeginCondition(NoRecord,1214)
      MisBeginCondition(NoMission,1214)
      MisBeginCondition(HasRecord, 1213)
      MisBeginAction(AddMission,1214)
      MisBeginAction(AddTrigger, 12141, TE_GETITEM, 4739, 25 )
      MisBeginAction(AddTrigger, 12142, TE_GETITEM, 4740, 25 )          
      MisBeginAction(AddTrigger, 12143, TE_GETITEM, 4741, 25 )               
      MisBeginAction(AddTrigger, 12144, TE_GETITEM, 1486, 25 )               
      MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

      MisNeed(MIS_NEED_DESP, "јвИсµДНБЦші¤Г¬Ўўјб№МµДтбтжИЛСьґшЎўГфЅЭµДКҐБЦЦ®РДЎўЛр»µµД°ЧЙ«БйГЁіб°тёч25ёц!")
      MisNeed(MIS_NEED_ITEM, 4739, 25,  1, 25 )
      MisNeed(MIS_NEED_ITEM, 4740, 25, 26, 25 )
      MisNeed(MIS_NEED_ITEM, 4741, 25,  51, 25 )
      MisNeed(MIS_NEED_ITEM, 1486, 25,  76, 25 )

      MisHelpTalk("<t>І»°пОТЅМСµЛьГЗ,Т»ЗРГвМё.")  
      MisResultTalk("<t>УВКї,јИИ»ДгТСѕ­КХјЇЖлБЛОТТЄµД¶«Оч.ДЗГґЧчОЄ±Ёік,ХвХЕЧЦДёPДгДГИҐ°Й.")
      MisResultCondition(HasMission,1214 )
      MisResultCondition(NoRecord,1214)
      MisResultCondition(HasItem, 4739, 25 )
      MisResultCondition(HasItem, 4740, 25 )
      MisResultCondition(HasItem, 4741, 25 )
      MisResultCondition(HasItem, 1486, 25 )

        MisResultAction(TakeItem, 4739, 25 )
	MisResultAction(TakeItem, 4740, 25 )
	MisResultAction(TakeItem, 4741, 25 )
	MisResultAction(TakeItem, 1486, 25 )

      MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3865, 1, 4 )
      MisResultAction(ClearMission, 1214 )
      MisResultAction(SetRecord, 1214)
      MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4739)	
	TriggerAction( 1, AddNextFlag, 1214, 1, 25 )
	RegCurTrigger( 12141 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4740)	
	TriggerAction( 1, AddNextFlag, 1214, 26, 25 )
	RegCurTrigger( 12142 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4741)	
	TriggerAction( 1, AddNextFlag, 1214, 51, 25 )
	RegCurTrigger( 12143 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1486)	
	TriggerAction( 1, AddNextFlag, 1214, 76, 25 )
	RegCurTrigger( 12144 )
  
----------------------------------------------------------Жж№ЦµДЕ®У¶----------ВеїЛјТµДДРУ¶
	DefineMission( 6143, "Жж№ЦµДЕ®У¶", 1215 )
	MisBeginTalk("<t>ѕЭОТЛщЦЄ,јЕДЇЦ®Лю2Іг(151,134)µДОТјТµДЕ®У¶ДЗАпТІУРТ»ХЕЧЦДёїЁ.ЧЈДъєГФЛ.")
				
	MisBeginCondition(NoMission, 1215)
	MisBeginCondition(NoRecord,1215)
	MisBeginCondition(HasRecord, 1214)
	MisBeginAction(AddMission,1215)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "ХТјЕДЇЦ®Лю2Іг(151,134)µДВеїЛјТµДЕ®У¶БДБД")
	
	MisHelpTalk("<t>ЛэКЗТ»О»Жж№ЦµДЕ®РФ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------Жж№ЦµДЕ®У¶--------ВеїЛјТµДЕ®У¶
	DefineMission(6144, "Жж№ЦµДЕ®У¶", 1215, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТµДИ·Псґ«ЛµЦРµДДЗСщУРёцРФ,µ«ОТ·ўКДОТѕшІ»КЗЖж№ЦµДИЛ.")
	MisResultCondition(NoRecord, 1215)
	MisResultCondition(HasMission,1215)
	MisResultAction(ClearMission,1215)
	MisResultAction(SetRecord, 1215)

	---------------------------------------------ЦОБЖ¶аЧмµДГШ·Ѕ---------ВеїЛјТµДЕ®У¶
	DefineMission(6145,"ЦОБЖ¶аЧмµДГШ·Ѕ",1216)

      MisBeginTalk("<t> Из№ыТ»¶ЁТЄЛµОТУРКІГґІ»ЧгµДµШ·ЅѕНКЗОТУРµг°®№ЬПРКВ,ѕНКЗИЛГЗіЈЛµµД¶аЧм.ОТёХёХµГµЅТ»ёцГШ·ЅїЙТФЦОБЖХвёцГ«ІЎ,ѕНКЗУГМъёдєНХЅё«І»НЈµД»чЛйчјчГ,јбіЦЖЯЖЯЛДК®ѕЕМм.ОТПлОТ»бТтґЛ±дµГМЦИЛПІ»¶µД.")

      MisBeginCondition(NoRecord,1216)
      MisBeginCondition(NoMission,1216)
      MisBeginCondition(HasRecord, 1215)
      MisBeginAction(AddMission,1216)
      MisBeginAction(AddTrigger, 12161, TE_GETITEM, 4742, 35 )
      MisBeginAction(AddTrigger, 12162, TE_GETITEM, 4743, 35 )          
      MisBeginAction(AddTrigger, 12163, TE_GETITEM, 4745, 35 )                           
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

      MisNeed(MIS_NEED_DESP, "КХјЇ°µСЄчјчГЎўµШѕ«МъёдЎўіБЦШµДµШѕ«ХЅё«ёч35ёц!")
      MisNeed(MIS_NEED_ITEM, 4742, 35,  1, 35 )
      MisNeed(MIS_NEED_ITEM, 4743, 35, 36, 35 )
      MisNeed(MIS_NEED_ITEM, 4745, 35,  71, 35 )

      MisHelpTalk("<t>ОТЦЄµАХвМэЖрАґУРµг·ЛТДЛщЛј.")  
      MisResultTalk("<t>ХжПЈНыОТµДи¦ґГїЙТФмоіэ.ХвёцЧЦДёКЗОТёшДгµД»Ш±Ё.")
      MisResultCondition(HasMission,1216 )
      MisResultCondition(NoRecord,1216)
      MisResultCondition(HasItem, 4742, 35 )
      MisResultCondition(HasItem, 4743, 35 )
      MisResultCondition(HasItem, 4745, 35 )

        MisResultAction(TakeItem, 4742, 35 )
	MisResultAction(TakeItem, 4743, 35 )
	MisResultAction(TakeItem, 4745, 35 )


      MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3854, 1, 4 )
      MisResultAction(ClearMission, 1216 )
      MisResultAction(SetRecord, 1216)
      MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4742)	
	TriggerAction( 1, AddNextFlag, 1216, 1, 35 )
	RegCurTrigger( 12161 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4743)	
	TriggerAction( 1, AddNextFlag, 1216, 36, 35 )
	RegCurTrigger( 12162 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4745)	
	TriggerAction( 1, AddNextFlag, 1216, 71, 35 )
	RegCurTrigger(12163 )
----------------------------------------------------------ВеїЛјТµДРЎГШ----------ВеїЛјТµДЕ®У¶
	DefineMission( 6146, "ВеїЛјТµДРЎГШ", 1217 )
	MisBeginTalk("<t>ДгЦЄµАВр,јЕДЇЦ®Лю3Іг(63,311)µДЕ®ИЛКЗВеїЛґуИЛµДРЎГШ.ЛµІ»¶ЁЛэДЗАпТІУРТ»ХЕЧЦДёїЁ,°ҐЯП,ОТУЦ¶аЧмБЛ,їґАґТЄёПїмЦОБЖ,І»·оЕгБЛ.")
				
	MisBeginCondition(NoMission, 1217)
	MisBeginCondition(NoRecord,1217)
	MisBeginCondition(HasRecord, 1216)
	MisBeginAction(AddMission,1217)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "ХТјЕДЇЦ®Лю3Іг(63,311)µДВеїЛјТµДРЎГШБДБД")
	
	MisHelpTalk("<t>ОТЧоІ»ПІ»¶ДЗЦЦЙ¦КЧЕЄЧЛµДЕ®ИЛ.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------ВеїЛјТµДРЎГШ--------ВеїЛјТµДРЎГШ
	DefineMission(6147, "ВеїЛјТµДРЎГШ", 1217, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Л­ЛµОТєНВеїЛґуИЛ№ШПµкУГББЛ,ФмТҐВп.")
	MisResultCondition(NoRecord, 1217)
	MisResultCondition(HasMission,1217)
	MisResultAction(ClearMission,1217)
	MisResultAction(SetRecord, 1217)

	--------------------------------------------------------------------РЎГШµДГОПл------ВеїЛјТµДРЎГШ

	DefineMission( 6148, "РЎГШµДГОПл", 1218 )
	MisBeginTalk("<t>ОТУРТ»ёцГААцµДГОПл,ТЄ±іЙПіб°т°їПиФ¶·Ѕ.µ«КЗОТРиТЄФ­БПєН№¤ѕЯ.")
	MisBeginCondition(NoMission, 1218)
	MisBeginCondition(NoRecord,1218)
	MisBeginCondition(HasRecord, 1217)
	MisBeginAction(AddMission,1218)
	MisBeginAction(AddTrigger, 12181, TE_GETITEM, 1501, 20)
	MisBeginAction(AddTrigger, 12182, TE_GETITEM, 1490, 20)
	MisBeginAction(AddTrigger, 12183, TE_GETITEM, 4748, 20)
	MisBeginAction(AddTrigger, 12184, TE_GETITEM, 4749, 20)
	MisBeginAction(AddTrigger, 12185, TE_GETITEM, 4725, 20)
	MisBeginAction(AddTrigger, 12186, TE_GETITEM, 4747, 20)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "КХјЇЖЖЛрµДєЪЙ«ГЁБеохЎўЛр»µµДєЪЙ«БйГЁіб°тЎўЖЖБСµДµШѕ«¶ъ»·ЎўґуєЕµШѕ«°вКЦЎўЖЖѕЙµДБФКЦЦ®№­Ўў°ЧЙ«БйГЁіб°тёч20ёц.")
	MisNeed(MIS_NEED_ITEM, 1501, 20, 1, 20)
	MisNeed(MIS_NEED_ITEM, 1490, 20, 21, 20)
	MisNeed(MIS_NEED_ITEM, 4748, 20, 41, 20)
	MisNeed(MIS_NEED_ITEM, 4749, 20, 61, 20)
	MisNeed(MIS_NEED_ITEM, 4725, 20, 81, 20)
	MisNeed(MIS_NEED_ITEM, 4747, 20, 101, 20)

	MisHelpTalk("<t>ОТ·В·рТСѕ­ґҐГюµЅБЛ°ЧФЖµДТВЅЗ.")
	MisResultTalk("<t>Р»Р»Дг°пЦъОТКµПЦГААцµДГОПл,ГОПлїЙДЬІ»»бКµПЦ,µ«КЗИЛКЗІ»ДЬГ»УРГОПлµД.")

	MisResultCondition(HasMission, 1218)
	MisResultCondition(NoRecord,1218)
	MisResultCondition(HasItem, 1501, 20)
	MisResultCondition(HasItem, 1490, 20)
	MisResultCondition(HasItem, 4748, 20)
	MisResultCondition(HasItem, 4749, 20)
	MisResultCondition(HasItem, 4725, 20)
	MisResultCondition(HasItem, 4747, 20)

	MisResultAction(TakeItem, 1501, 20 )
	MisResultAction(TakeItem, 1490, 20 )
	MisResultAction(TakeItem, 4748, 20 )
	MisResultAction(TakeItem, 4749, 20 )
	MisResultAction(TakeItem, 4725, 20 )
	MisResultAction(TakeItem, 4747, 20 )

	
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3858,1,4)------------i
	MisResultAction(ClearMission, 1218)
	MisResultAction(SetRecord, 1218)
	MisResultBagNeed(1)
	


	InitTrigger()
	TriggerCondition( 1, IsItem, 1501)	
	TriggerAction( 1, AddNextFlag, 1218, 1, 20 )
	RegCurTrigger( 12181 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1490)	
	TriggerAction( 1, AddNextFlag, 1218, 21, 20 )
	RegCurTrigger( 12182 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4748)	
	TriggerAction( 1, AddNextFlag, 1218, 41, 20 )
	RegCurTrigger( 12183 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4749)	
	TriggerAction( 1, AddNextFlag, 1218, 61, 20 )
	RegCurTrigger( 12184 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4725)	
	TriggerAction( 1, AddNextFlag, 1218, 81, 20 )
	RegCurTrigger( 12185 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4747)	
	TriggerAction( 1, AddNextFlag, 1218, 101, 20 )
	RegCurTrigger( 12186 )

	----------------------------------------------------------СПЛаµДКШ»¤ХЯ----------ВеїЛјТµДРЎГШ
	DefineMission( 6149, "СПЛаµДКШ»¤ХЯ", 1219 )
	MisBeginTalk("<t>јЕДЇЦ®Лю4(261,70)ІгµДКШ»¤ХЯКЗТ»ёцєЬСПЛаµДИЛ,Жнµ»ДгДЬЛіАыДГµЅТ»ХЕїЁЖ¬.")
				
	MisBeginCondition(NoMission, 1219)
	MisBeginCondition(NoRecord,1219)
	MisBeginCondition(HasRecord, 1218)
	MisBeginAction(AddMission,1219)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "ХТјЕДЇЦ®Лю4(261,70)ІгµДВеїЛјТµДКШ»¤ХЯБДБД")
	
	MisHelpTalk("<t>ЙПТ»ІгєЬОЈПХЕ¶.")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------СПЛаµДКШ»¤ХЯ--------ВеїЛјТµДКШ»¤ХЯ
	DefineMission(6150, "СПЛаµДКШ»¤ХЯ", 1219, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>І»№ЬКЗКІГґµШО»µДКІГґИЛ,¶јУ¦ёГС§»бЧрЦШ±рИЛ,·сФтУАФ¶І»»бµГµЅ±рИЛХжХэµДЧрЦШ.")
	MisResultCondition(NoRecord, 1219)
	MisResultCondition(HasMission,1219)
	MisResultAction(ClearMission,1219)
	MisResultAction(SetRecord, 1219)

--------------------------------------------------------------------Т»ёцИЛЗйУЦТ»ёцИЛЗй------ВеїЛјТµДКШ»¤ХЯ

	DefineMission( 6151, "Т»·ЭИЛЗйУЦТ»·ЭИЛЗй", 1220 )
	MisBeginTalk("<t>ОТОЄКІГґ»бТ»Ц±ЧчД§НхµДКШ»¤ХЯ?!КЗТтОЄОТЗ·ЛыТ»·ЭИЛЗй.µ±іхОТВдЖЗµДК±єт,ЛыёшБЛОТєЪЙ«БйГЁіб°тЎў±»ОЫИѕµДМмК№№в»·ёч10ёц,ВфµфВтПЎ·№іФ.КВµЅИзЅсОТ¶ФЛыµД¶чЗйТСѕ­±ЁґрµГІоІ»¶аБЛ,ДгФЩ°пОТёцГ¦ОТѕНїЙТФ°ЪНСВеїЛБЛ.")
	MisBeginCondition(NoMission, 1220)
	MisBeginCondition(NoRecord,1220)
	MisBeginCondition(HasRecord, 1219)
	MisBeginAction(AddMission,1220)
	MisBeginAction(AddTrigger, 12201, TE_GETITEM, 4750,50)
	MisBeginAction(AddTrigger, 12202, TE_GETITEM, 4763, 50)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "КХјЇєЪЙ«БйГЁіб°тЎў±»ОЫИѕµДМмК№№в»·ёч50ёц.")
	MisNeed(MIS_NEED_ITEM, 4750, 50, 1, 50)
	MisNeed(MIS_NEED_ITEM, 4763, 50, 51, 50)


	MisHelpTalk("<t>ОТДЬ·с»сµГЧФУЙѕНїїДгБЛ.")
	MisResultTalk("<t>ЦХУЪїЙТФ»№ВеїЛХв·ЭИЛЗй,µ«ОТУЦЗ·БЛДгТ»·ЭИЛЗй,ОТЦ»УР°СЧЦДёїЁёшДгЧчОЄ»Ш±ЁБЛ,ТІЛгМжВеїЛЧцТ»јюєГКВ.")

	MisResultCondition(HasMission, 1220)
	MisResultCondition(NoRecord,1220)
	MisResultCondition(HasItem, 4750, 50)
	MisResultCondition(HasItem, 4763,50)
	MisResultAction(TakeItem, 4750, 50 )
	MisResultAction(TakeItem, 4763, 50 )
	
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3862,1,4)----------m
	MisResultAction(ClearMission, 1220)
	MisResultAction(SetRecord, 1220)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4750)	
	TriggerAction( 1, AddNextFlag, 1220, 1, 50 )
	RegCurTrigger( 12201 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4763)	
	TriggerAction( 1, AddNextFlag, 1220, 21, 50 )
	RegCurTrigger( 12202 )

----------------------------------------------------------»№КЗТ»·ЭИЛЗй----------ВеїЛјТµДКШ»¤ХЯ
	DefineMission( 6152, "»№КЗТ»·ЭИЛЗй", 1221 )
	MisBeginTalk("<t>ОТН»И»УРТ»ёцєГЦчТв,Хв±ІЧУОТТ»Ц±ФЪ»№±рИЛµДЗй,»тРнХвґООТїЙТФИГДгЗ·ОТТ»·ЭЗй.<n><t>јЕДЇЦ®Лю5Іг(542,54)µД№ЬјТДЗУРТ»ХЕЧЦДёїЁЖ¬")
				
	MisBeginCondition(NoMission, 1221)
	MisBeginCondition(NoRecord,1221)
	MisBeginCondition(HasRecord, 1220)
	MisBeginAction(AddMission,1221)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "ХТјЕДЇЦ®Лю5Іг(542,54)µДВеїЛјТµД№ЬјТБДБД")
	
	MisHelpTalk("<t>І»УГР»ОТ,ОТєЬПнКЬХвЦЦёРѕх,ЛдИ»єГПсУРµгЧФЛЅ.№ю№ю...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------»№КЗТ»·ЭИЛЗй--------ВеїЛјТµД№ЬјТ
	DefineMission(6153, "»№КЗТ»·ЭИЛЗй", 1221, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ХвёцІ»№¶СФР¦µДјТ»пµ№КЗїЄРДµДЛНИЛЗйёш±рИЛ,ОТФхГґ°м?")
	MisResultCondition(NoRecord, 1221)
	MisResultCondition(HasMission,1221)
	MisResultAction(ClearMission,1221)
	MisResultAction(SetRecord, 1221)


	--------------------------------------------------------------------№ЬјТµД·іДХ------ВеїЛјТµД№ЬјТ

	DefineMission( 6154, "№ЬјТµД·іДХ", 1222 )
	MisBeginTalk("<t>ЧцИЛІ»їЙТФМ«М°А·ЦЄµАВр?І»ТЄПсОТ.ЙПґООТµДЗЧУСАґ°ЭНыОТ,ОТїґВеїЛґуИЛІ»КЗєЬЧўТвјТАпµДІЖОпЧґїцѕНЛЅЧФДГјТАпµД¶«ОчЛНёшОТµДЗЧЖЭ.І»ЦЄµАОЄКІГґВеїЛґуИЛУРБЛІмѕх,ПЦФЪОТєЬЧЕј±,Из№ыДгїЙТФ°пОТКХјЇЖлХвР©¶«Оч,ОТІ»ЅйТв°СґуИЛµДЧЦДёїЁЛНёшДг")
	MisBeginCondition(NoMission, 1222)
	MisBeginCondition(NoRecord,1222)
	MisBeginCondition(HasRecord, 1221)
	MisBeginAction(AddMission,1222)
	MisBeginAction(AddTrigger, 12221, TE_GETITEM, 4770, 35)
	MisBeginAction(AddTrigger, 12222, TE_GETITEM, 4766, 35)
	MisBeginAction(AddTrigger, 12223, TE_GETITEM, 4772, 35)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "КХјЇ±»ЧзЦдµД°ЧЙ«БйГЁіб°тЎў єЪ°µµДКҐБЦЦ®РДЎў±»ЧзЦдµДєЪЙ«БйГЁіб°тёч35ёц.")
	MisNeed(MIS_NEED_ITEM, 4770, 35, 1, 35)
	MisNeed(MIS_NEED_ITEM, 4766, 35, 36, 35)
	MisNeed(MIS_NEED_ITEM, 4772, 35, 71, 35)

	MisHelpTalk("<t>ТЄїм,·сФтИГВеїЛґуИЛЦЄµАБЛ,ЧцКІГґ¶јГ»УРУГБЛ.")
	MisResultTalk("<t>ЧЬКЗХвСщІр¶«ЗЅІ№ОчЗЅОТХжµЈРДУРТ»МмОТФЩГ»УРНЛВ·БЛ.")

	MisResultCondition(HasMission, 1222)
	MisResultCondition(NoRecord,1222)
	MisResultCondition(HasItem, 4770, 35)
	MisResultCondition(HasItem, 4766, 35)
	MisResultCondition(HasItem, 4772, 35)

	MisResultAction(TakeItem, 4770, 35 )
	MisResultAction(TakeItem, 4766, 35 )
	MisResultAction(TakeItem, 4772, 35 )
	
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3863,1,4)----------n
	MisResultAction(ClearMission, 1222)
	MisResultAction(SetRecord, 1222)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4770)	
	TriggerAction( 1, AddNextFlag, 1222, 1, 35 )
	RegCurTrigger( 12221 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4766)	
	TriggerAction( 1, AddNextFlag, 1222, 36, 35 )
	RegCurTrigger( 12222 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4772)	
	TriggerAction( 1, AddNextFlag, 1222, 71, 35 )
	RegCurTrigger( 12223 )

---------------------------------------------------------№ЬјТµД±Ёёґ----------ВеїЛјТµД№ЬјТ
	DefineMission( 6155, "№ЬјТµД±Ёёґ", 1223 )
	MisBeginTalk("<t>Е¶~~ОТЦХУЪГч°ЧОЄКІГґТ»ПтРЕИООТµДВеїЛґуИЛН»И»¶ФОТІъЙъБЛ»іТЙ,Т»¶ЁКЗЛыЗйИЛёгµД№н,ТтОЄОТФшѕ­їґјыЛэУлТ»ёцД°ЙъДРЧУФј»б,ЛэТЄПЭє¦ОТ...±рЛµОТІ»°пДг,ДЗёцЕ®ИЛЙнЙПУРТ»ХЕїЁЖ¬,ДгТ»¶ЁТЄДГµЅДЗХЕїЁЖ¬.ХвСщТ»Аґ,Из№ыОТ±©В¶БЛЛэТІЕЬІ»БЛ,№ю№ю№ю,ОТМ«»µБЛ~~")
				
	MisBeginCondition(NoMission, 1223)
	MisBeginCondition(NoRecord,1223)
	MisBeginCondition(HasRecord, 1222)
	MisBeginAction(AddMission,1223)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "ХТјЕДЇЦ®Лю6Іг(541,268)µДВеїЛµДЗйИЛБДБД")
	
	MisHelpTalk("<t>№ЦІ»µГґУРЎВиВиѕНЅМУэОТІ»ТЄєН»µєўЧУНжДШ,ЧФґУёъЛжБЛД§НхВеїЛґуИЛ,ОТХжµД±д»µБЛ,ОШ...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------№ЬјТµД±Ёёґ--------ВеїЛµДЗйИЛ
	DefineMission(6156, "№ЬјТµД±Ёёґ", 1223, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ДгФхГґЦЄµАОТУРїЁЖ¬µД?")
	MisResultCondition(NoRecord, 1223)
	MisResultCondition(HasMission,1223)
	MisResultAction(ClearMission,1223)
	MisResultAction(SetRecord, 1223)
--------------------------------------------------------------------ГАЕ®µДЖжМШ°®єГ------ВеїЛµДЗйИЛ

	DefineMission( 6157, "ГАЕ®µДЖжМШ°®єГ", 1224 )
	MisBeginTalk("<t>ОТЧоЅьН»И»¶ФЅрКфКОЖ·МШ±рёРРЛИ¤,ТСѕ­іХГФµЅ·иїсµДіМ¶И.ДгТ»¶ЁІ»Гч°ЧОТОЄКІГґїЄКјПІ»¶ЙПЅрКфСМґС,ЖдКµОТТІІ»Гч°Ч.µ«ОТ¶ФЧФјєПІ»¶µД¶«ОчЧЬКЗТ»¶ЁТЄµГµЅ,І»П§ИОєОґъјЫ,јґК№КЗД§НхВеїЛµД¶«Оч.")
	MisBeginCondition(NoMission, 1224)
	MisBeginCondition(NoRecord,1224)
	MisBeginCondition(HasRecord, 1223)
	MisBeginAction(AddMission,1224)
	MisBeginAction(AddTrigger, 12241, TE_GETITEM, 1503, 110)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "КХјЇЅрКфСМґС110ёц.")
	MisNeed(MIS_NEED_ITEM, 1503, 110, 1, 110)

	MisHelpTalk("<t>±рёъОТЅвКН,ОТЦ»ТЄЅрКфСМґС.")
	MisResultTalk("<t>їґАґОТГЗХжµДКЗБЅёцКАЅзµДИЛ,ПсДгІ»Гч°ЧОТТ»Сщ,ОТУАФ¶І»Гч°ЧДгТЄХвёцЖЖЧЦДёУРКІГґУГ,ёшДг°Й.")

	MisResultCondition(HasMission, 1224)
	MisResultCondition(NoRecord,1224)
	MisResultCondition(HasItem, 1503, 110)
	MisResultAction(TakeItem, 1503, 110 )

	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3856,1,4)----------G
	MisResultAction(ClearMission, 1224)
	MisResultAction(SetRecord, 1224)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1503)	
	TriggerAction( 1, AddNextFlag, 1224, 1, 110 )
	RegCurTrigger( 12241 )

------------------------------------------------------¶ДЖшµДНъІЖ----------ВеїЛµДЗйИЛ
	DefineMission( 6158, "¶ДЖшµДНъІЖ", 1225 )
	MisBeginTalk("<t>ПВТ»ХЕЧЦДёФЪОТјТДРИЛµДіиОпНъІЖЙнЙП.ДЗКЗТ»Ц»єЬНЁИЛРФµД№·Е¶,Ц»КЗУРµгРЎЖш.УРТ»ґООТЙъЖшГ»ёшЛы№ЗН·іФ,ЛыМУµЅµШУьЛДІгІШЖрАґБЛ.ЧЬµДАґЛµОТ»№КЗєЬПІ»¶ЛьµД.")
				
	MisBeginCondition(NoMission, 1225)
	MisBeginCondition(NoRecord,1225)
	MisBeginCondition(HasRecord, 1224)
	MisBeginAction(AddMission,1225)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "ХТµШУьЛДІг(154,912)µДВеїЛјТµДНъІЖТЄЧЦДёїЁЖ¬")
	
	MisHelpTalk("<t>ГААцµДСМґС°Ў...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------¶ДЖшµДНъІЖ--------ВеїЛјТµДНъІЖ
	DefineMission(6159, "¶ДЖшµДНъІЖ", 1225, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>НфНф!ОТМУµЅХвДг¶ј·ўПЦОТБЛ?КЗВеїЛЗйИЛТЄДгАґЗлОТ»ШИҐµДВр?ЛэЕВМЫ°®ОТµДВеїЛХТІ»µЅОТ№ЦЧпЛэ°Й?")
	MisResultCondition(NoRecord, 1225)
	MisResultCondition(HasMission,1225)
	MisResultAction(ClearMission,1225)
	MisResultAction(SetRecord, 1225)


	--------------------------------------------------------------------НъІЖТІІ»КЗєГИЗµД------ВеїЛјТµДНъІЖ

	DefineMission( 6160, "НъІЖТІІ»КЗєГИЗµД!", 1226 )
	MisBeginTalk("<t>µШУьИэІгµДЅ©К¬Т»Ц±ЖЫёєїЙБЇµДОТ,Из№ыДг°пОТИҐ°СЛыµДН··ў°ОјёёщПВАґ,ХвХЕОЮБДµДїЁЖ¬ѕНКЗДгµДБЛ.Т»¶ЁТЄИГЛыГЗЦЄµАНъІЖТІІ»КЗєГИЗµД.")
	MisBeginCondition(NoMission, 1226)
	MisBeginCondition(NoRecord,1226)
	MisBeginCondition(HasRecord, 1225)
	MisBeginAction(AddMission,1226)
	MisBeginAction(AddTrigger, 12261, TE_GETITEM, 4884, 99)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "КХјЇЅ©К¬Н··ў99ёц.")
	MisNeed(MIS_NEED_ITEM, 4884, 99, 1, 99)

	MisHelpTalk("<t>ЅсМмДгНфНфБЛГ»УР?")
	MisResultTalk("<t>ДгїЙТФ»ШИҐ<bХТ°ЧТшіЗµДД§·ЁК¦ПДМм(2229,2782)Ѕ»Іо>БЛ.")

	MisResultCondition(HasMission, 1226)
	MisResultCondition(NoRecord,1226)
	MisResultCondition(HasItem, 4884, 99)
	MisResultAction(TakeItem, 4884, 99 )

	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3854,1,4)----------E
	MisResultAction(ClearMission, 1226)
	MisResultAction(SetRecord, 1226)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4884)	
	TriggerAction( 1, AddNextFlag, 1226, 1, 99 )
	RegCurTrigger( 12261 )


-----------------------------------------------------Е¶!Г»ФїіЧ----------Д§·ЁК¦ПДМм
	DefineMission( 6161, "Е¶!Г»ФїіЧ", 1227 )
	MisBeginTalk("<t>Е¶!Г»ФїіЧ.ОТФЪИҐЗпµєВГУОµДК±єт°СїЄЖфД§·ЁєРµДФїіЧµфФЪГААцµДµјУОРЎЅг(2423,3186)ДЗБЛ,Ц»ТЄДгИҐХТЛэТЄ»Ш,ѕНїЙТФґтїЄД§·ЁєРБЛ")
				
	MisBeginCondition(NoMission, 1227)
	MisBeginCondition(NoRecord,1227)
	MisBeginCondition(HasRecord, 1212)
	MisBeginAction(AddMission,1227)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "ХТЗпµєµјУОРЎЅг(2423,3186)ТЄ»ШїЄЖфД§·ЁєРµДФїіЧЎЈ")
	
	MisHelpTalk("<t>Е¶!ФхГґНьјЗґш»ШФїіЧБЛ...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------Е¶!Г»ФїіЧ--------ЗпµєµјУОРЎЅг
	DefineMission(6162, "Е¶!Г»ФїіЧ", 1227, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Т»¶ЁКЗД§·ЁК¦ПДМмЅРДгАґµД°Й?ЛыКЗУР°СФїіЧ¶ЄФЪОТХвБЛ")
	MisResultCondition(NoRecord, 1227)
	MisResultCondition(HasMission,1227)
	MisResultAction(ClearMission,1227)
	MisResultAction(SetRecord, 1227)



	--------------------------------------------------------------------µјУОРЎЅгµДЗлЗу------ЗпµєµјУОРЎЅг

	DefineMission( 6163, "µјУОРЎЅгµДЗлЗу", 1228 )
	MisBeginTalk("<t>ОТ°пДгГЗ±ЈґжБЛХвГґѕГ,ЧЬёГУРµг±Ёґр°Й.Зпµєѕ­іЈУРРЧє·µДНБ·ЛґтЅЩУОїН,ДгѕН°пОТіэіэє¦°Й")
	MisBeginCondition(NoMission, 1228)
	MisBeginCondition(NoRecord,1228)
	MisBeginCondition(HasRecord, 1227)
	MisBeginAction(AddMission,1228)
	MisBeginAction(AddTrigger, 12281, TE_GETITEM, 0154, 20)
	MisBeginAction(AddTrigger, 12282, TE_GETITEM, 0156, 20)
	MisBeginAction(AddTrigger, 12283, TE_GETITEM, 0158, 20)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "КХјЇ¶«·ЅєЈµБЛ®КЦ»ХјЗЎў¶«·ЅєЈµБХЅ¶·Ф±»ХјЗЎў¶«·ЅєЈµБН»»чКЦ»ХјЗёч20ёц.")
	MisNeed(MIS_NEED_ITEM, 0154, 20, 1, 20)
	MisNeed(MIS_NEED_ITEM, 0156, 20, 21, 20)
	MisNeed(MIS_NEED_ITEM, 0158, 20, 41, 20)

	MisHelpTalk("<t>ДгїмИҐ°Й,ОТХвАпЧоЅьЙъТвПфМхµГєЬДШ.")
	MisResultTalk("<t>Дг»№ХжКЗТ»ёцєГКЦДШ,Р»Р».")

	MisResultCondition(HasMission, 1228)
	MisResultCondition(NoRecord,1228)
	MisResultCondition(HasItem, 0154, 20)
	MisResultCondition(HasItem, 0156, 20)
	MisResultCondition(HasItem, 0158, 20)

	MisResultAction(TakeItem, 0154, 20 )
	MisResultAction(TakeItem, 0156, 20 )
	MisResultAction(TakeItem, 0158, 20 )
	
	MisResultAction(ClearMission, 1228)
	MisResultAction(SetRecord, 1228)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 0154)	
	TriggerAction( 1, AddNextFlag, 1228, 1, 20 )
	RegCurTrigger( 12281 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0156)	
	TriggerAction( 1, AddNextFlag, 1228, 36, 20 )
	RegCurTrigger( 12282 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 0158)	
	TriggerAction( 1, AddNextFlag, 1228, 71, 20 )
	RegCurTrigger( 12283 )


		--------------------------------------------------------------------ёжОїНцБй------ЗпµєµјУОРЎЅг

	DefineMission( 6164, "ёжОїНцБй", 1229 )
	MisBeginTalk("<t>ЗпµєЙПУРєЬ¶аµДНц»к,ДЬ·сјМРшОЄОТХТ»ШИҐЖьБйОдКїєЎ№ЗєН·ПБйОдКїєЎ№З,ИГЗпµєµДНцБйµГµЅ°ІПў.")
	MisBeginCondition(NoMission, 1229)
	MisBeginCondition(NoRecord,1229)
	MisBeginCondition(HasRecord, 1228)
	MisBeginAction(AddMission,1229)
	MisBeginAction(AddTrigger, 12291, TE_GETITEM, 3436, 50)
	MisBeginAction(AddTrigger, 12292, TE_GETITEM, 3434, 50)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "КХјЇЖьБйОдКїєЎ№ЗЎў·ПБйОдКїєЎ№Зёч50ёц.")
	MisNeed(MIS_NEED_ITEM, 3436, 50, 1, 50)
	MisNeed(MIS_NEED_ITEM, 3434, 50, 51, 50)


	MisHelpTalk("<t>КµФЪ°ЭНРДгБЛ.")
	MisResultTalk("<t>ДгХжКЗєГИЛ,М«ёРР»ДгАІ.ФїіЧДГИҐ°Й.")

	MisResultCondition(HasMission, 1229)
	MisResultCondition(NoRecord,1229)
	MisResultCondition(HasItem, 3436, 50)
	MisResultCondition(HasItem, 3434, 50)

	MisResultAction(TakeItem, 3436, 50 )
	MisResultAction(TakeItem, 3434, 50 )

	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3674,1,4)----------ФїіЧ
	MisResultAction(ClearMission, 1229)
	MisResultAction(SetRecord, 1229)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3436)	
	TriggerAction( 1, AddNextFlag, 1229, 1, 50 )
	RegCurTrigger( 12291 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 3434)	
	TriggerAction( 1, AddNextFlag, 1229, 51, 50 )
	RegCurTrigger( 12292 )

----------------------------------------------------Т»°СФїіЧїЄТ»°СЛш---------ЗпµєµјУОРЎЅг
	DefineMission( 6165, "Т»°СФїіЧїЄТ»°СЛш", 1230 )
	MisBeginTalk("<t>ёПїмХТД§·ЁК¦ПДМмґтїЄД§·ЁєР°Й.")
				
	MisBeginCondition(NoMission, 1230)
	MisBeginCondition(NoRecord,1230)
	MisBeginCondition(HasRecord, 1229)
	MisBeginAction(AddMission,1230)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed(MIS_NEED_DESP, "ХТ°ЧТшіЗД§·ЁК¦ПДМм(2229,2782)ґтїЄД§·ЁєР.")
	
	MisHelpTalk("<t>јЗµГґшФїіЧєНД§·ЁєРТ»ЖрИҐ...")
	MisResultCondition(AlwaysFailure)	
	-----------------------------------------Т»°СФїіЧїЄТ»°СЛш---------Д§·ЁК¦ПДМм
	DefineMission(6166, "Т»°СФїіЧїЄТ»°СЛш", 1230, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>ОТµДЦч°Ў,КАјдѕ№УРИзґЛТгБ¦µДєўЧУ,ДСДЬїЙ№у°Ў.ОТ°пДгґтїЄєРЧУ°Й.НЫ,ѕУИ»єРЧУАпГжУРёцєЪП»ЧУ.ДГИҐїґїґ,КЗКІГґ¶«¶«?")
	MisResultCondition(NoRecord, 1230)
	MisResultCondition(HasMission,1230)
	MisResultCondition(HasItem, 3673, 1)
	MisResultCondition(HasItem, 3674, 1)
	MisResultAction(TakeItem, 3673, 1 )
	MisResultAction(TakeItem, 3674, 1 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3672,1,4)----------єЪП»ЧУ
	MisResultAction(ClearMission,1230)
	MisResultAction(SetRecord, 1230)
	MisResultBagNeed(1)

	MisResultAction(ClearRecord, 1212)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1213)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1214)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1215)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1216)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1217)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1218)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1219)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1220)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1221)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1222)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1223)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1224)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1225)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1226)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1227)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1228)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1229)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1230)---------------їЙТФ·ґёґЅУ


--------------------------------------------------------УВХЯµДЧгјЈ	
	DefineMission( 6167, "Геройская реликвия", 1231)
	MisBeginTalk( "<t>Малыш. Ты обязательно станешь взрослым, но не сейчас. сейчас же ты можешь только делать смелые поступки, благодаря которым ты быстрее повзрослеешь.<n><t>Ты ещё не передумал идти на встречу взрослой жизни?<n><t>Вот тебе достойное испытание: Убей <r30 Жалящих дурманищ>!")
	MisBeginCondition( LvCheck, ">", 44)
	MisBeginCondition( LvCheck, "<", 66)
	MisBeginCondition( NoMission, 1231)
	MisBeginCondition( NoRecord, 1231)
	MisBeginAction( AddMission, 1231)
	MisBeginAction( AddTrigger, 12311, TE_KILL, 514, 30 )
	MisCancelAction(ClearMission, 1231)

	MisNeed(MIS_NEED_KILL, 514, 30, 10, 30)
	
	MisResultTalk("<t>Я верил в твои способности малыш. Чего ты ждёшь?.. А, прости вот твоя награда, если ты ещё захочешь испытать себя... В общем ты знаешь где меня искать!")
	MisHelpTalk("<t>Ищите Жалящих дурманищ в точке(440,1320) Аргент.")
	MisResultCondition( HasFlag, 1231, 39 )
	MisResultCondition( HasMission, 1231)
	MisResultCondition( NoRecord, 1231)
	MisResultAction( ClearMission, 1231)
	MisResultAction( SetRecord, 1231)
	MisResultAction( AddExpPer, 1)
	MisResultAction( AddMoney, 1000)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 514 )	
	TriggerAction( 1, AddNextFlag, 1231, 10, 30 )
	RegCurTrigger(12311)

	----------------------------------------
	DefineMission( 6168, "Геройская реликвия", 1232)
	MisBeginTalk( "<t>Ты быстро растешь мой друг! Малыш у меня есть для тебя Важное задание: Убей <r50 Ангелов-хранителей>! и избавь тем самым людей от исчадия ада!")
	MisBeginCondition( NoMission, 1232)
	MisBeginCondition( NoRecord, 1232)
	MisBeginCondition( HasRecord, 1231)
	MisBeginAction( AddMission, 1232)
	MisBeginAction( AddTrigger, 12321, TE_KILL, 284, 50 )
	MisCancelAction( ClearMission, 1232)

	MisNeed( MIS_NEED_KILL, 284, 50, 10, 50)

	MisResultTalk( "<t>Ну Молодец,! Ну просто нет слов Малыш!")
	MisHelpTalk( "<t>Ищите Ангелов в точке(904,1280).")
	MisResultCondition( HasMission, 1232)
	MisResultCondition( NoRecord, 1232)
	MisResultCondition( HasFlag, 1232, 59)
	MisResultAction( ClearMission, 1232)
	MisResultAction( SetRecord, 1232)
	MisResultAction( AddExpPer, 1)
	MisResultAction( AddMoney, 3000)

	InitTrigger() 
	TriggerCondition( 1, IsMonster, 284 )	
	TriggerAction( 1, AddNextFlag, 1232, 10, 50 )
	RegCurTrigger(12321)

	----------------------------------------
	DefineMission( 6169, "Геройская реликвия", 1233)
	MisBeginTalk( "<t>Малыш привет! Ты опять пришёл ко мне?! Ну, что я могу тебе сказать?! Да - у меня есть для тебя задача: Убей <r10 Терранских оружейников> и принеси мне <p50 Терранских золотых>!")
	MisBeginCondition( NoMission, 1233)
	MisBeginCondition( NoRecord, 1233)
	MisBeginCondition( HasRecord, 1232)
	MisBeginAction( AddMission, 1233)
	MisBeginAction( AddTrigger, 12331, TE_KILL, 65, 10 )
	MisBeginAction( AddTrigger, 12332, TE_GETITEM, 1783, 50)
	MisCancelAction( ClearMission, 1233)

	MisNeed( MIS_NEED_KILL, 65, 10, 10, 10)
	MisNeed( MIS_NEED_ITEM, 1783, 50, 20, 50)

	MisResultTalk( "<t>Малыш - ты упрям! И именно за это ты стал миллионером! Только трать эти деньги с умом.<n><t>А сейчас беги в Аргент к Фонтану!")
	MisHelpTalk( "<t>Если ты не хочешь выполнять моё задание, можешь сразу от него отказаться, всё равно у меня закончились награды для тебя.<n><t>Не мучай себя понапрасну. Я вижу тебе не по силам это задание.")
	MisResultCondition( HasMission, 1233)
	MisResultCondition( NoRecord, 1233)
	MisResultCondition( HasFlag, 1233, 19)
	MisResultCondition( HasItem, 1783, 50)
	MisResultAction( TakeItem, 1783, 50)
	MisResultAction( ClearMission, 1233)
	MisResultAction( SetRecord, 1233)
	MisResultAction( AddExpPer, 1)
	MisResultAction( AddMoney , 5000)
	MisResultAction( AddExpAndType, 2, 80000, 80000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 65)
	TriggerAction(1, AddNextFlag, 1233, 10, 10)
	RegCurTrigger(12331)

	InitTrigger()
	TriggerCondition(1, IsItem, 1783)
	TriggerAction(1, AddNextFlag, 1233, 20, 50)
	RegCurTrigger(12332)

	----------------------------------------------
	DefineMission( 6170, "Отважная любовь", 1234)
	MisBeginTalk( "<t>Помоги мне с моей любовью, Малыш. ")
	MisBeginCondition( NoMission, 1234)
	MisBeginCondition( NoRecord, 1234)
	MisBeginCondition( HasRecord, 1233)
	MisBeginAction( AddMission, 1234)
	MisBeginAction( GiveItem, 2671, 1, 4)
	MisBeginAction( AddTrigger, 12341, TE_GETITEM, 2671, 1)
	MisBeginAction( AddTrigger, 12342, TE_GETITEM, 4503, 1)
	MisBeginAction( AddTrigger, 12343, TE_GETITEM, 3361, 89)
	MisCancelAction( ClearMission, 1234)
	MisBeginBagNeed(1)

	MisHelpTalk( "<t>Поспеши!")
	MisNeed( MIS_NEED_DESP, " Если ты действительно так отважен, Малыш, как о тебе ходят легенды, то принеси мне: <b1 Письмо для Элизабет> одну <bКорону> и <b89 Жемчужен>.")
	MisNeed( MIS_NEED_ITEM, 2671, 1, 10, 1)
	MisNeed( MIS_NEED_ITEM, 4503, 1, 20, 1)
	MisNeed( MIS_NEED_ITEM, 3361, 89, 30, 89)

	MisResultCondition( AlwaysFailure )
	---------------------------------------------
	DefineMission( 6171, "Отважная любовь", 1234, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "<t>Спасибо тебе Малыш.<n><t>Это тебе в знак моей признательности.")
	MisResultCondition( HasItem, 2671, 1)
	MisResultCondition( HasItem, 4503, 1)
	MisResultCondition( HasItem, 3361, 89)
	MisResultCondition( HasMission, 1234)
	MisResultCondition( NoRecord, 1234)
	MisResultAction( TakeItem, 2671, 1)
	MisResultAction( TakeItem, 4503, 1)
	MisResultAction( TakeItem, 3361, 89)
	MisResultAction( ClearMission, 1234)
	MisResultAction( SetRecord, 1234)
	MisResultAction( AddExpPer, 2)
	MisResultAction( AddMoney, 300000)
	MisResultAction( AddReadingBook )                       ------ёшУи±ѕЦ°ТµµДіхј¶¶БОп

	InitTrigger()
	TriggerCondition(1, IsItem, 2671)
	TriggerAction(1, AddNextFlag, 1234, 10, 1)
	RegCurTrigger(12341)

	InitTrigger()
	TriggerCondition(1, IsItem, 4503)
	TriggerAction(1, AddNextFlag, 1234, 20, 1)
	RegCurTrigger(12342)

	InitTrigger()
	TriggerCondition(1, IsItem, 3361)
	TriggerAction(1, AddNextFlag, 1234, 30, 89)
	RegCurTrigger(12343)


	-------------------------------------------------------
	DefineMission( 6172, "Отважная любовь", 1235)
	MisBeginTalk( "<t>Всю жизнь живи - всю жизнь учись. Сколько бы ты не учился, всего не будешь знать всё равно.")
	MisBeginCondition( NoMission, 1235)
	MisBeginCondition( NoRecord, 1235)
	MisBeginCondition( HasRecord, 1234)
	MisBeginAction( AddMission, 1235)
	MisCancelAction( ClearMission, 1235)

	MisHelpTalk( "<t>Ищите Северного Пирата -Якомото на острове Осени для дальнейших указаний.")
	MisNeed( MIS_NEED_DESP, "Ищите Северного Пирата -Якомото на острове Осени")

	MisResultCondition( AlwaysFailure )
	--------------------------------------------------------
	DefineMission( 6173, "Отважная любовь", 1235, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Привет Малыш! Ближе к делу... Что тебе надо от меня?")
	MisResultCondition( HasMission, 1235)
	MisResultCondition( NoRecord, 1235)
	MisResultAction( ClearMission, 1235)
	MisResultAction( SetRecord, 1235)
	MisResultAction( AddMoney, 88)

	MisResultAction(ClearRecord, 1231)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1232)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1233)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1234)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1235)---------------їЙТФ·ґёґЅУ

	-------------------------------ЛДјѕ·ўІЖ----------їНХ»АП°еЎ¤БъЕ®
	DefineMission( 6174, "ЛДјѕ·ўІЖ", 1236)
	MisBeginTalk( "<t>ґєПДЗп¶¬4ХЕЕЖ¶јФЪЗпПг(Зпµє2722,3137)ХвёціфСѕН·ЙнЙП,°пОТХТ»ШАґ°Й,ОТ»бЦШЦШікР»ДгµД.")
	MisBeginCondition( NoMission, 1236)
	MisBeginCondition( NoRecord, 1236)
	MisBeginCondition( LvCheck, "<", 80)
	MisBeginAction( AddMission, 1236)
	MisBeginAction( AddTrigger, 12361, TE_GETITEM, 2969, 1)
	MisBeginAction( AddTrigger, 12362, TE_GETITEM, 2970, 1)
	MisBeginAction( AddTrigger, 12363, TE_GETITEM, 2971, 1)
	MisBeginAction( AddTrigger, 12364, TE_GETITEM, 2972, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed( MIS_NEED_DESP, "ґУЗпПгДЗАп¶б»ШВйЅ«ЕЖ(ґє),ВйЅ«ЕЖ(ПД),ВйЅ«ЕЖ(Зп),ВйЅ«ЕЖ(¶¬)ёшБъЕ®(ґєµє3302,2501),ЗпПгѕНФЪЗпµє(2722,3137)")
	MisNeed( MIS_NEED_ITEM, 2969, 1, 10, 1)
	MisNeed( MIS_NEED_ITEM, 2970, 1, 20, 1)
	MisNeed( MIS_NEED_ITEM, 2971, 1, 30, 1)
	MisNeed( MIS_NEED_ITEM, 2972, 1, 40, 1)

	MisResultTalk( "<t>НЫ!ѕНКЗХв4ХЕЕЖ,М«єГБЛ!іЙОЄЕЖЅзµЪТ»ИЛµДЛЮФёЅсМмµГµЅКµПЦ.")
	MisHelpTalk( "<t>Т»¶ЁТЄ°пОТХТ»ШДЗЛДХЕЕЖ°Ў,ОТіЙОЄЕЖЅзµЪТ»ИЛµДГОПлѕНїїДгБЛ!")
	MisResultCondition( HasMission, 1236)
	MisResultCondition( NoRecord, 1236)
	MisResultCondition( HasItem, 2969, 1)
	MisResultCondition( HasItem, 2970, 1)
	MisResultCondition( HasItem, 2971, 1)
	MisResultCondition( HasItem, 2972, 1)
	MisResultAction( TakeItem, 2969, 1)
	MisResultAction( TakeItem, 2970, 1)
	MisResultAction( TakeItem, 2971, 1)
	MisResultAction( TakeItem, 2972, 1)
	MisResultAction( ClearMission, 1236)
	MisResultAction( SetRecord, 1236)
	MisResultAction( AddExpNextLv1 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 2969)	
	TriggerAction( 1, AddNextFlag, 1236, 10, 1 )
	RegCurTrigger( 12361 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2970)	
	TriggerAction( 1, AddNextFlag, 1236, 20, 1 )
	RegCurTrigger( 12362 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2971)	
	TriggerAction( 1, AddNextFlag, 1236, 30, 1 )
	RegCurTrigger( 12363 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2972)	
	TriggerAction( 1, AddNextFlag, 1236, 40, 1 )
	RegCurTrigger( 12364 )

---------------------------------°Л·ЅЅш±¦------------їНХ»АП°еЎ¤БъЕ®
	DefineMission( 6175, "°Л·ЅЅш±¦", 1237)
	MisBeginTalk( "<t>ґєПДЗп¶¬4ХЕЕЖ¶јФЪЗпПг(Зпµє2722,3137)ХвёціфСѕН·ЙнЙП,ЖдЦРГ·,Ај,Цс,ѕХФЪПДµєµДОчГЕЗм(3734,2661)µДЙнЙП,їмµг°пОТХТ»ШАґ°Й,ОТ»бЦШЦШікР»ДгµД!")
	MisBeginCondition( NoMission, 1237)
	MisBeginCondition( NoRecord, 1237)
	MisBeginCondition( LvCheck, "<", 90)
	MisBeginAction( AddMission, 1237)
	MisBeginAction( AddTrigger, 12371, TE_GETITEM, 2969, 1)
	MisBeginAction( AddTrigger, 12372, TE_GETITEM, 2970, 1)
	MisBeginAction( AddTrigger, 12373, TE_GETITEM, 2971, 1)
	MisBeginAction( AddTrigger, 12374, TE_GETITEM, 2972, 1)
	MisBeginAction( AddTrigger, 12375, TE_GETITEM, 2973, 1)
	MisBeginAction( AddTrigger, 12376, TE_GETITEM, 2974, 1)
	MisBeginAction( AddTrigger, 12377, TE_GETITEM, 2975, 1)
	MisBeginAction( AddTrigger, 12378, TE_GETITEM, 2976, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed( MIS_NEED_DESP, "ФЪПДµєµДОчГЕЗм(3734,2661)µДЙнЙП,ХТЖлґєПДЗп¶¬Г·АјЦсѕХ8ХЕВйЅ«ЕЖёшБъЕ®(ґєµє3302,2501)")
	MisNeed( MIS_NEED_ITEM, 2969, 1, 10, 1)
	MisNeed( MIS_NEED_ITEM, 2970, 1, 20, 1)
	MisNeed( MIS_NEED_ITEM, 2971, 1, 30, 1)
	MisNeed( MIS_NEED_ITEM, 2972, 1, 40, 1)
	MisNeed( MIS_NEED_ITEM, 2973, 1, 50, 1)
	MisNeed( MIS_NEED_ITEM, 2974, 1, 60, 1)
	MisNeed( MIS_NEED_ITEM, 2975, 1, 70, 1)
	MisNeed( MIS_NEED_ITEM, 2976, 1, 80, 1)

	MisResultTalk( "<t>ДгМ«НкГАБЛ,ОТТЄјЮёшДг!ИГДгЦЄµАОТИёНхЦ®НхµДчИБ¦!")
	MisHelpTalk( "<t>їмµгИҐ°Й,Из№ыДг°пОТХТ»ШБЛХв8ХЕЕЖ,ОТКЗІ»»бїчґэДгµД.")
	MisResultCondition( HasMission, 1237)
	MisResultCondition( NoRecord, 1237)
	MisResultCondition( HasItem, 2969, 1)
	MisResultCondition( HasItem, 2970, 1)
	MisResultCondition( HasItem, 2971, 1)
	MisResultCondition( HasItem, 2972, 1)
	MisResultCondition( HasItem, 2973, 1)
	MisResultCondition( HasItem, 2974, 1)
	MisResultCondition( HasItem, 2975, 1)
	MisResultCondition( HasItem, 2976, 1)
	MisResultAction( TakeItem, 2969, 1)
	MisResultAction( TakeItem, 2970, 1)
	MisResultAction( TakeItem, 2971, 1)
	MisResultAction( TakeItem, 2972, 1)
	MisResultAction( TakeItem, 2973, 1)
	MisResultAction( TakeItem, 2974, 1)
	MisResultAction( TakeItem, 2975, 1)
	MisResultAction( TakeItem, 2976, 1)
	MisResultAction( ClearMission, 1237)
	MisResultAction( SetRecord, 1237)
	MisResultAction( AddExpNextLv2 )
	MisResultAction(ClearRecord, 1236)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1237)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1238)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1239)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1240)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1241)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1242)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1243)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1244)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1245)---------------їЙТФ·ґёґЅУ
	MisResultAction(ClearRecord, 1246)---------------їЙТФ·ґёґЅУ

	InitTrigger()
	TriggerCondition( 1, IsItem, 2969)	
	TriggerAction( 1, AddNextFlag, 1237, 10, 1 )
	RegCurTrigger( 12371 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2970)	
	TriggerAction( 1, AddNextFlag, 1237, 20, 1 )
	RegCurTrigger( 12372 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2971)	
	TriggerAction( 1, AddNextFlag, 1237, 30, 1 )
	RegCurTrigger( 12373 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2972)	
	TriggerAction( 1, AddNextFlag, 1237, 40, 1 )
	RegCurTrigger( 12374 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2973)	
	TriggerAction( 1, AddNextFlag, 1237, 50, 1 )
	RegCurTrigger( 12375 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2974)	
	TriggerAction( 1, AddNextFlag, 1237, 60, 1 )
	RegCurTrigger( 12376 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2975)	
	TriggerAction( 1, AddNextFlag, 1237, 70, 1 )
	RegCurTrigger( 12377 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 2976)	
	TriggerAction( 1, AddNextFlag, 1237,80, 1 )
	RegCurTrigger( 12378 )

----------------------------------РДЦ®Лш----------ОчГЕЗм
	DefineMission( 6176, "РДЦ®Лш", 1238)
	MisBeginTalk( "<t>ЅрБ«№ГДпКЗОТЅсЙъµДОЁТ»,ОТРиТЄИзТвФїіЧґтїЄЛэРДБйµДјПЛш,ДгїЙТФИҐХТєЈµБµДЗйКҐЙіб°іЗґуК№Ў¤ПЇ°Н(јУДЙ2256,2707)ЛыїЙТФёшДгМбКѕ.")
	MisBeginCondition( NoMission, 1238)
	MisBeginCondition( NoRecord, 1238)
	MisBeginCondition( HasMission, 1237)
	MisBeginAction( AddMission, 1238)
	MisBeginAction( AddTrigger, 12381, TE_GETITEM, 2965, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed( MIS_NEED_DESP,"ИҐХТЙіб°іЗґуК№Ў¤ПЇ°Н(јУДЙ2256,2707)ДГИзТвФїіЧ,Іўґш»ШёшПДµєОчГЕЗм(3734,2661).")
	MisNeed( MIS_NEED_ITEM, 2965, 1, 10, 1)

	MisResultTalk( "<t>Oh,baby!ѕНКЗХв°СИзТвФїіЧ,ЅсНнОТѕНДГХв°СИҐїЄЖфЅрБ«µДРДГЕ.")
	MisHelpTalk( "<t>ПЇ°НТ»¶ЁЦЄµАИзТвФїіЧµДПВВдЈ¬ИҐОКОКЛы°Й")
	MisResultCondition( HasMission, 1238)
	MisResultCondition( NoRecord, 1238)
	MisResultCondition( HasItem, 2965, 1)
	MisResultAction( TakeItem, 2965, 1)
	MisResultAction( ClearMission, 1238)
	MisResultAction( SetRecord, 1238)
	MisResultAction( GiveItem, 2974, 1, 4)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2965)	
	TriggerAction( 1, AddNextFlag, 1238, 10, 1 )
	RegCurTrigger( 12381 )

----------------------------------РДЦ®Лш----------Йіб°іЗґуК№Ў¤ПЇ°Н
	DefineMission( 6177, "РДЦ®Лш", 1239)
	MisBeginTalk( "<t>єЪХдЦйКЗКАЅзЙПИЛИЛЧ·ЗуµД±¦±ґ,ОТµДЛпЕ®єЬТЄУµУР2ёцєЪХдЦйАґПвЗ¶Лэ°ЧЅрµДКЦпнЙП,ѕЭЛµїЙТФФЪґєµєµДєьСэ,єьµАКїЙнЙПХТµЅ,Из№ыДгДЬХТАґ2ёцёшОТµД»°,ОТѕН°СОТХдІШ¶аДкµДИзТвФїіЧЛНёшДг!!")
	MisBeginCondition( HasMission, 1238)
	MisBeginCondition( NoRecord, 1239)
	MisBeginCondition( NoMission, 1239)
	MisBeginAction( AddMission, 1239)
	MisBeginAction( AddTrigger, 12391, TE_GETITEM, 3362, 2)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed( MIS_NEED_DESP, "ФЪґєµєµДДЗР©єьАкЙнЙПХТ2ёцєЪХдЦйёшПЇ°Н")
	MisNeed( MIS_NEED_ITEM, 3362, 2, 10, 2)

	MisResultTalk( "<t>єЪХдЦйКЗ¶аєГµД±¦Оп,ОТТСѕ­УµУРБЛЛь,ОТµДЛпЕ®Т»¶Ё»бєЬёЯРЛ.")
	MisHelpTalk( "<t>єЪХдЦйґєµєµДДЗР©єьАкЙнЙПѕНУР.")
	MisResultCondition( HasMission, 1239)
	MisResultCondition( NoRecord, 1239)
	MisResultCondition( HasItem, 3362, 2)
	MisResultAction( TakeItem, 3362, 2)
	MisResultAction( ClearMission, 1239)
	MisResultAction( SetRecord, 1239)
	MisResultAction( GiveItem, 2965, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3362)	
	TriggerAction( 1, AddNextFlag, 1239, 10, 2 )
	RegCurTrigger( 12391 )
	
---------------------------------іВДкµДємѕЖ-----------ОчГЕЗм
	DefineMission( 6178, "іВДкµДємѕЖ", 1240)
	MisBeginTalk( "<t>АЛВюµДТ№НнФхГґДЬИ±ЙЩГАО¶µДємѕЖ,ОТФЪ±щАЗµДВГµкАП°еЎ¤ФјЙЄ·т(1291,541)ДЗ¶ЁБЛ1ЖїіВДкµДємѕЖ,ДгїЙТФИҐ°пОТИЎ»ШАґВр?")
	MisBeginCondition( NoMission, 1240)
	MisBeginCondition( NoRecord, 1240)
	MisBeginCondition( HasMission, 1237)
	MisBeginCondition( HasRecord, 1238)
	MisBeginAction( AddMission, 1240)
	MisBeginAction( AddTrigger, 12401, TE_GETITEM, 2977, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed( MIS_NEED_DESP, "ФЪ±щАЗµДВГµкАП°еЎ¤ФјЙЄ·т(1291,541)ДЗ°пОчГЕЗм(3734,2661)ИЎАґТ»ЖїіВДкµДємѕЖ")
	MisNeed( MIS_NEED_ITEM, 2977, 1, 10, 1)

	MisResultTalk( "<t>ХвЅ«КЗТ»ёцБоИЛЖЪґэµДТ№Нн,ОТТЄєНЅрБ«№ГДпТ»Чн·ЅРЭ.")
	MisHelpTalk( "<t>їмµгИҐ°Й")
	MisResultCondition( HasMission, 1240)
	MisResultCondition( NoRecord, 1240)
	MisResultCondition( HasItem, 2977, 1)
	MisResultAction( TakeItem, 2977, 1)
	MisResultAction( ClearMission, 1240)
	MisResultAction( SetRecord, 1240)
	MisResultAction( GiveItem, 2976, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2977)	
	TriggerAction( 1, AddNextFlag, 1240, 10, 1 )
	RegCurTrigger( 12401 )

---------------------------------іВДкµДємѕЖ------------ВГµкАП°еЎ¤ФјЙЄ·т
	DefineMission( 6179, "іВДкµДємѕЖ", 1241)
	MisBeginTalk( "<t>ОТХвУРМШЦЖµДКАЅзЧоГАО¶µДємѕЖ,ДгПлВтВр?УРЗ®ТІІ»ВфДг!іэ·ЗДгУРОТПлТЄµД!<n><t>ЗлДГВйЅ«ЕЖёЬ3ёц,ВйЅ«ЕЖЕц3ёц,ВйЅ«ЕЖєъ3ёц,Т¬№ыѕЖ70ёцАґєНОТ»».")
	MisBeginCondition( NoMission, 1241)
	MisBeginCondition( NoRecord, 1241)
	MisBeginCondition( HasMission, 1240)
	MisBeginAction( AddMission, 1241)
	
	MisBeginAction( AddTrigger, 12411, TE_GETITEM, 0172, 3)
	MisBeginAction( AddTrigger, 12412, TE_GETITEM, 0173, 3)
	MisBeginAction( AddTrigger, 12413, TE_GETITEM, 0174, 3)
	MisBeginAction( AddTrigger, 12414, TE_GETITEM, 3916, 70)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed( MIS_NEED_DESP, "ХТАґФјЙЄ·тРиТЄµДµАѕЯ,ДЗР©ВйЅ«ЕЖФЪПВЛ®µАµДЅ©К¬ЙнЙПУР,Т¬№ыѕЖФЪ°ЧТшіЗУРВфЕ¶")
	
	MisNeed( MIS_NEED_ITEM, 0172, 3, 5, 3)
	MisNeed( MIS_NEED_ITEM, 0173, 3, 10, 3)
	MisNeed( MIS_NEED_ITEM, 0174, 3, 15, 3)
	MisNeed( MIS_NEED_ITEM, 3916, 70, 20, 70)

	MisResultTalk( "<t>ХжµДКЗОТТЄµД¶«Оч,КµФЪМ«ёРР»ДгБЛ.")
	MisHelpTalk( "<t>ОТХвАпµДємѕЖїЙКЗКАЅзОЕГыµДЕ¶.")
	MisResultCondition( HasMission, 1241)
	MisResultCondition( NoRecord, 1241)
	MisResultCondition( HasItem, 3916, 70)
	MisResultCondition( HasItem, 172, 3)
	MisResultCondition( HasItem, 173, 3)
	MisResultCondition( HasItem, 174, 3)
	MisResultAction( TakeItem, 3916, 70)
	MisResultAction( TakeItem, 172, 3)
	MisResultAction( TakeItem, 173, 3)
	MisResultAction( TakeItem, 174, 3)
	MisResultAction( ClearMission, 1241)
	MisResultAction( SetRecord, 1241)



	
	InitTrigger()
	TriggerCondition( 1, IsItem, 0172)	
	TriggerAction( 1, AddNextFlag, 1241, 5, 3 )
	RegCurTrigger( 12411 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0173)	
	TriggerAction( 1, AddNextFlag, 1241, 10, 3)
	RegCurTrigger( 12412 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 0174)	
	TriggerAction( 1, AddNextFlag, 1241, 15, 3 )
	RegCurTrigger( 12413 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3916)	
	TriggerAction( 1, AddNextFlag, 1241, 20, 70 )
	RegCurTrigger( 12414 )
	
	
--------------------------------іВДкµДємѕЖ------------ВГµкАП°еЎ¤ФјЙЄ·т
	DefineMission( 6180, "іВДкµДємѕЖ", 1242)
	MisBeginTalk( "<t>М«І»ЗЙБЛ,ОТХвАпПЦФЪГ»УРіВДкµДємѕЖ,ХвСщ°Й,ХвЖїємѕЖДг°пОТ±Ј№ЬТ»ПВ,ГчМмФЩ»№ёшОТ!")
	MisBeginCondition( NoMission, 1242)
	MisBeginCondition( NoRecord, 1242)
	MisBeginCondition( HasRecord, 1241)
	MisBeginAction( AddMission, 1242)
	MisBeginAction( AddChaHJ )--------ДНѕГОЄ1440
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")
	MisBeginBagNeed(1)

	MisNeed( MIS_NEED_DESP, "Ѕ«ФјЙЄ·тёшµДємѕЖ·ЕФЪ±і°ьµЪ¶юёс,µИДНѕГГ»БЛТФєуФЩИҐ»№ёшФјЙЄ·т.")
	
	MisResultTalk( "<t>ємѕЖ°ЎємѕЖ,·ЕµДК±јдФЅі¤ФЅХд№у.")
	MisHelpTalk( "<t>°СємѕЖ·ЕФЪ±і°ьµЪ¶юёсѕНРРБЛ.")
	MisResultCondition( CheckHJ )-----1·ЦЦУїЫ1µг,їЫµЅ0
	MisResultCondition( NoRecord, 1242)
	MisResultCondition( HasMission, 1242)
	MisResultAction( ClearMission, 1242)
	MisResultAction( SetRecord, 1242)
	MisResultAction( TakeItem, 2967, 1)
	MisResultAction( GiveItem, 2977, 1, 4)
	MisResultBagNeed(1)

----------------------------------ХТ»ШГµ№е»Ё°к-------------ОчГЕЗм
	DefineMission( 6181, "ХТ»ШГµ№е»Ё°к", 1243)
	MisBeginTalk( "<t>Гµ№е»Ё°к°®ЗйµДПуХч,ОТјЗµГ±щАЗµДГЧРЄ¶ыГ·БЦ·Т(1280,478)ДЗУРГµ№е»Ё°к,їЙТФ°пОТИҐИЎТ»Р©Вр?")
	MisBeginCondition( NoMission, 1243)
	MisBeginCondition( NoRecord, 1243)
	MisBeginCondition( HasMission, 1237)
	MisBeginCondition( HasRecord, 1238)
	MisBeginCondition( HasRecord, 1240)
	MisBeginAction( AddMission, 1243)
	MisBeginAction( AddTrigger, 12431, TE_GETITEM, 2968, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed( MIS_NEED_DESP, "ИҐ°пОчГЕЗмґУ±щАЗµДГЧРЄ¶ыГ·БЦ·Т(1280,478)ДЗАпИЎАґГµ№е»Ё°к")
	MisNeed( MIS_NEED_ITEM, 2968, 1, 10, 1)

	MisResultTalk( "<t>аЮ!ОТµДЙсДЗ!ѕУИ»УРХвГґГААцµД»Ё°к!ДгМ«БоОТѕЄЖжБЛ,ЅсНнОТТ»¶ЁТЄіЙ№¦!")
	MisHelpTalk( "<t>ГААцµДГµ№е»Ё°кТ»¶ЁДЬґт¶ЇЅрБ«µД!")
	MisResultCondition( HasMission, 1243)
	MisResultCondition( NoRecord, 1243)
	MisResultCondition( HasItem, 2968, 1)
	MisResultAction( ClearMission, 1243)
	MisResultAction( SetRecord, 1243)
	MisResultAction( TakeItem, 2968, 1)
	MisResultAction( GiveItem, 2973, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2968)	
	TriggerAction( 1, AddNextFlag, 1243, 10, 1 )
	RegCurTrigger( 12431 )

----------------------------------ХТ»ШГµ№е»Ё°к-------------ГЧРЄ¶ыГ·БЦ·Т
	DefineMission( 6182, "ХТ»ШГµ№е»Ё°к", 1244)
	MisBeginTalk( "<t>ґ«ОЕєЈµЧЛнµАµДі¤ИЮР·,РЎ±щБъ,±»ЧзЦдµДЛ®ПЙЧУѕ­іЈЙ§ИЕВ·ИЛ.ОТРиТЄДгґш»Ш»рИЮ3ёц,БъБЫ3ёц,ЙъГьѕ§КЇ3ёц,АґЦ¤ГчДгµДКµБ¦.Из№ыНкіЙИООсѕНїЙТФµЅОТХвАп»»ИЎГµ№е»Ё°кЧчОЄЅ±Аш.")
	MisBeginCondition( NoMission, 1244)
	MisBeginCondition( NoRecord, 1244)
	MisBeginCondition( HasMission, 1243)
	MisBeginAction( AddMission, 1244)
	MisBeginAction( AddTrigger, 12441, TE_GETITEM, 4259, 3)
	MisBeginAction( AddTrigger, 12442, TE_GETITEM, 1774, 3)
	MisBeginAction( AddTrigger, 12443, TE_GETITEM, 1632, 3)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed( MIS_NEED_DESP, "ґш3ёц»рИЮ,3ёцБъБЫ,3ёцЙъГьѕ§КЇёшГЧРЄ¶ыГ·БЦ·Т")
	MisNeed( MIS_NEED_ITEM, 4259, 3, 10, 3)
	MisNeed( MIS_NEED_ITEM, 1774, 3, 20, 3)
	MisNeed( MIS_NEED_ITEM, 1632, 3, 30, 3)

	MisResultTalk( "<t>ДгІЕК¶ХжХэµДУВХЯ,ХвКЗёшДгµДЅ±Аш.")
	MisHelpTalk( "<t>»рИЮ,БъБЫєНЙъГьѕ§КЇµД»°ґтєЈµЧЛнµАµДі¤ИЮР·,РЎ±щБъ,±»ЧзЦдµДЛ®ПЙЧУѕНУРБЛ.")
	MisResultCondition( HasMission, 1244)
	MisResultCondition( NoRecord, 1244)
	MisResultCondition( HasItem, 4259, 3)
	MisResultCondition( HasItem, 1774, 3)
	MisResultCondition( HasItem, 1632, 3)
	MisResultAction( TakeItem, 4259, 3)
	MisResultAction( TakeItem, 1774, 3)
	MisResultAction( TakeItem, 1632, 3)
	MisResultAction( SetRecord, 1244)
	MisResultAction( ClearMission, 1244)
	MisResultAction( GiveItem, 2968, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4259)	
	TriggerAction( 1, AddNextFlag, 1244, 10, 3 )
	RegCurTrigger( 12441 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1774)	
	TriggerAction( 1, AddNextFlag, 1244, 10, 1 )
	RegCurTrigger( 12442 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1632)	
	TriggerAction( 1, AddNextFlag, 1244, 10, 1 )
	RegCurTrigger( 12443 )

---------------------------------ХТ»Шѕ«ГАµДАЇЦт-----------ОчГЕЗм
	DefineMission( 6183, "ХТ»Шѕ«ГАµДАЇЦт", 1245)
	MisBeginTalk( "<t>ЅсНнЅ«КЗёцДСНьµДТ№Нн,ОТРиТЄР©АЇЦтАґОВЕЇДкЗбИЛµДРДмй,їЙТФ°пОТИҐЙіб°µДРЎСтЎ¤НюБ¦(897,3683)ДЗХТР©ѕ«ГАµДАЇЦтВр?")
	MisBeginCondition( NoMission, 1245)
	MisBeginCondition( NoRecord, 1245)
	MisBeginCondition( HasMission, 1237)
	MisBeginCondition( HasRecord, 1238)
	MisBeginCondition( HasRecord, 1240)
	MisBeginCondition( HasRecord, 1243)
	MisBeginAction( AddMission, 1245)
	MisBeginAction( AddTrigger, 12451, TE_GETITEM, 2966, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")
	
	MisNeed( MIS_NEED_DESP, "ХТРЎСтЎ¤НюБ¦(Д§Е®897,3683)ДГАґѕ«ГАµДАЇЦтёшПДµєµДОчГЕЗм(3734,2661)")
	MisNeed( MIS_NEED_ITEM, 2966, 1, 10, 1)

	MisResultTalk( "<t>АЇЦтТ»ёщёщµДµгББ,ДгУРХвДНРДВр?ЅсНнУЦКЗёцІ»ГЯЦ®Т№~")
	MisHelpTalk( "<t>АЛВюµДТ№НнФхГґДЬГ»УРЦт№вДШ?")
	MisResultCondition( HasMission, 1245)
	MisResultCondition( NoRecord, 1245)
	MisResultCondition( HasItem, 2966, 1)
	MisResultAction( TakeItem, 2966, 1)
	MisResultAction( SetRecord, 1245)
	MisResultAction( ClearMission, 1245)
	MisResultAction( GiveItem, 2975, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2966)	
	TriggerAction( 1, AddNextFlag, 1245, 10, 1 )
	RegCurTrigger( 12451 )

----------------------------------ХТ»Шѕ«ГАµДАЇЦт------------РЎСтЎ¤НюБ¦
	DefineMission( 6184, "ХТ»Шѕ«ГАµДАЇЦт", 1246)
	MisBeginTalk( "<t>ОТПлТЄЧцТ»ёщ·ЗіЈГААцµДПоБґ,І»№эПЦФЪ»№ЙЩ2ёц»ЖЙ«Л®ѕ§,2ёцВкДЗКЇЅбѕ§,Из№ыДгДЬИҐОЈПХµДПДµєИҐМфХЅтбтжХЅКїєН·иїсµДтбтжИЛµД»°,У¦ёГїЙТФХТµЅОТПлТЄµД¶«Оч.")
	MisBeginCondition( NoMission, 1246)
	MisBeginCondition( NoRecord, 1246)
	MisBeginCondition( HasMission, 1245)
	MisBeginAction( AddMission, 1246)
	MisBeginAction( AddTrigger, 12461, TE_GETITEM, 3367,2)
	MisBeginAction( AddTrigger, 12462, TE_GETITEM, 3380,2)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменен")

	MisNeed( MIS_NEED_DESP, "°пРЎСтЎ¤НюБ¦(Д§Е®897,3683)ФЪПДµєµДтбтжХЅКїєН·иїсµДтбтжИЛЙнЙПХТµЅ2ёц»ЖЙ«Л®ѕ§,2ёцВкДЗКЇЅбѕ§.<rјЗµГ»ШИҐХТОчГЕЗм(3734,2661)>")
	MisNeed( MIS_NEED_ITEM, 3367, 2, 10, 2)
	MisNeed( MIS_NEED_ITEM, 3380, 2, 20, 2)

	MisResultTalk( "<t>ДгєГВэ°Ў!ОТН·ЙП¶јµИіцЦ©ЦлНшБЛ~")
	MisHelpTalk( "<t>Л®ѕ§°ЎЛ®ѕ§..")
	MisResultCondition( HasMission, 1246)
	MisResultCondition( NoRecord, 1246)
	MisResultCondition( HasItem, 3367, 2)
	MisResultCondition( HasItem, 3380, 2)
	MisResultAction( TakeItem, 3380, 2)
	MisResultAction( TakeItem, 3367, 2)
	MisResultAction( SetRecord, 1246)
	MisResultAction( ClearMission, 1246)
	MisResultAction( GiveItem, 2966, 1, 4)

	MisResultBagNeed(1)

        InitTrigger()
	TriggerCondition( 1, IsItem, 3367)	
	TriggerAction( 1, AddNextFlag, 1246, 10, 2 )
	RegCurTrigger( 12461 )

	 InitTrigger()
	TriggerCondition( 1, IsItem, 3380)	
	TriggerAction( 1, AddNextFlag, 1246, 20, 2 )
	RegCurTrigger( 12462 )

------------------------»¤ЛНКҐµ®АПИЛ------------ 	±щАЗ±¤NPCКҐµ®АПИЛЈЁ1216Ј¬550Ј©
	DefineMission( 6185, "ХьѕИКҐµ®АПИЛ", 1247)
	MisBeginTalk( "<t>ГїДкУРДЗГґ¶аРЎЕуУСФЪµИОТ·ЕКҐµ®АсОпФЪЛыГЗµДіфНаЧУАп,І»»б·ЦЙнКхФхГґДЬРР?ОТУГТ»ёщєъРл±діцТ»Ц»КҐµ®АПИЛМжЙн.УЙУЪСМґСµДїЪѕ¶ґуРЎІ»Т»,ЛщТФКҐµ®АПИЛТ»ВЙНіТ»№жёс,ІЙУГРЎРНєЕ.ЛдЛµГїДкІЕ№эТ»ґОКҐµ®,µ«ИФИ»µјЦВОТєъЧУПЎКиБЛ.ОТµДРЦµЬїЛИрЛ№ДЄЛ№µДєъЧУТСѕ­°О№вґшјЩµДБЛ,»тРнДгФёТв°пОТЕЬТ»МЛ.ЅиёшЛыТ»ёцРЎАПИЛ.")
	MisBeginCondition( NoMission, 1247)
	MisBeginCondition( NoRecord, 1247)
	MisBeginCondition( HasItem, 2878, 1)
	MisBeginAction( TakeItem, 2878, 1)
	MisBeginAction( AddMission, 1247)
	MisBeginAction( CreatBBBB, 929)
	MisCancelAction( ClearMission, 1247)

	MisHelpTalk( "<t>ЗлФЪ<rТ»РЎК±ДЪЅ«КҐµ®РЎАПИЛЛНµЅїЁМШ¶ы>ДЗ,јЗµГТЄ<rНЅІЅ>ЧЯµЅ±щј«чјчГУЄµШІ№ёшХѕ(2111,557),ИОєО<rМшЧЄµШНјЎўК№УГ»ъЖ±ЎўАлїЄ±»»¤ЛНµДNPCКУТ°·¶О§>µИРРОЄ¶јЅ«ФміЙКҐµ®РЎАПИЛµД¶ЄК§.ЗРјЗ!")
	MisNeed( MIS_NEED_DESP, "ЗлФЪ<rТ»РЎК±ДЪЅ«КҐµ®РЎАПИЛЛНµЅїЛИрЛ№ДЄЛ№>ДЗ,јЗµГТЄ<rНЅІЅ>ЧЯµЅ±щј«чјчГУЄµШІ№ёшХѕ(2111,557).ОЄБЛКҐµ®АПИЛµД°ІИ«,ЗлІ»ТЄ<rМшЧЄµШНјЎўК№УГ»ъЖ±ЎўПВПЯЎўАлїЄ±»»¤ЛНµДNPCКУТ°·¶О§>µИ.<bёГИООсЦ»ДЬЅУИЎТ»ґО,ЦР¶П»бФміЙ»¤ЛНЧКёсЦ¤µДЛрК§,ТЄЅчЙчЕ¶>.")

	MisResultCondition( AlwaysFailure )


--------------------------------------------------------»¤ЛНКҐµ®АПИЛ--------±щј«чјчГУЄµШІ№ёшХѕ(2111,557)
	DefineMission( 6186, "ХьѕИКҐµ®АПИЛ", 1247, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Р»Р»Дг.ОТµДјЩєъЧУ»№єЬ±ЖХж°Й.єЗєЗ")
	MisResultCondition( HasMission, 1247)
	MisResultCondition( NoRecord, 1247)
	MisResultAction( CheckBBBB)
	MisResultAction( ClearMission, 1247)
	MisResultAction( SetRecord, 1247)
	MisResultAction( GiveItem, 2888, 1, 4)
	MisResultAction( GiveItem, 2889, 1, 4)
	MisResultAction( GiveItem, 3240, 1, 4)
	MisResultBagNeed(3)
	
------------------------------»рј¦ґуБФІ¶	
	DefineMission( 6187, "»рј¦ґуБФІ¶", 1248)
	MisBeginTalk( "<t>ОТМЦСбХвКҐЅаС©°ЧµД¶¬Мм.ЕуУСЈ¬ОЄКІГґІ»ЕЧЖъХвР©ОЮБДµДЗмЧЈ»о¶ЇіцИҐЙ±ВѕТ»·¬ДШ?ТІРніЗНвДЗР©µЅґ¦ВТЕЬµД»рј¦КЗёцІ»ґнµДДї±к,ИҐёшОТЙ±µфТ»Р©,И»єу°СЛьГЗµфВдµД»рј¦µДУрГ«ґш№эАґёшОТ,КэБїВпѕН100ёц°Й.")
	MisBeginCondition( NoMission, 1248)
	MisBeginCondition( NoRecord, 1248)
	MisBeginAction( AddMission, 1248)
	MisBeginAction(AddTrigger, 12481, TE_GETITEM, 2879, 100 )
	MisCancelAction( ClearMission, 1248)

	MisNeed(MIS_NEED_ITEM, 2879, 100, 10, 100 )
	MisHelpTalk( "<t>»рј¦ФЪ°ЧТшіЗ,±щАЗ±¤єНЙіб°іЗіЗНвµЅґ¦¶јКЗ")

	MisResultTalk( "<t>ёЙµДєГ,ДгІ»ѕхµГПКСЄТІКЗХвёцЅа°ЧКҐµ®ЅЪµДµгЧєЦ®Т»Вр?")
	MisResultCondition( HasMission, 1248)
	MisResultCondition( NoRecord, 1248)
	MisResultCondition( HasItem, 2879, 100)
	MisResultAction( TakeItem, 2879, 100)
	MisResultAction( GiveItem, 2882, 1, 4)
	MisResultAction( CpHuojiNum )
	MisResultAction( ClearMission, 1248)
	MisResultAction( SetRecord, 1248)
	MisResultAction( ClearRecord, 1248)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2879)	
	TriggerAction( 1, AddNextFlag, 1248, 10, 100 )
	RegCurTrigger( 12481 )

------------------------------чзВ№ґуБФІ¶	
	DefineMission( 6188, "чзВ№ґуБФІ¶", 1249)
	MisBeginTalk( "<t>ОТМЦСбХвКҐЅаС©°ЧµД¶¬Мм.ЕуУСЈ¬ОЄКІГґІ»ЕЧЖъХвР©ОЮБДµДЗмЧЈ»о¶ЇіцИҐЙ±ВѕТ»·¬ДШ?ТІРніЗНвДЗР©µЅґ¦ВТЕЬµДР°¶счзВ№КЗёцІ»ґнµДДї±к,ИҐёшОТЙ±µфТ»Р©,И»єу°СЛьГЗµфВдµДчзВ№µДјвЅЗґш№эАґёшОТ,КэБїВпѕН100ёц°Й.")
	MisBeginCondition( NoMission, 1249)
	MisBeginCondition( NoRecord, 1249)
	MisBeginAction( AddMission, 1249)
	MisBeginAction(AddTrigger, 12491, TE_GETITEM, 2881, 100 )
	MisCancelAction( ClearMission, 1249)

	MisNeed(MIS_NEED_ITEM, 2881, 100, 10, 100 )
	MisHelpTalk( "<t>Р°¶счзВ№ФЪ°ЧТшіЗ,±щАЗ±¤єНЙіб°іЗіЗНвµЅґ¦¶јКЗ")

	MisResultTalk( "<t>ёЙµДєГ,ДгІ»ѕхµГПКСЄТІКЗХвёцЅа°ЧКҐµ®ЅЪµДµгЧєЦ®Т»Вр?")
	MisResultCondition( HasMission, 1249)
	MisResultCondition( NoRecord, 1249)
	MisResultCondition( HasItem, 2881, 100)
	MisResultAction( TakeItem, 2881, 100)
	MisResultAction( GiveItem, 2882, 1, 4)
	MisResultAction( CpMiluNum )
	MisResultAction( ClearMission, 1249)
	MisResultAction( SetRecord, 1249)
	MisResultAction( ClearRecord, 1249)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2881)	
	TriggerAction( 1, AddNextFlag, 1249, 10, 100 )
	RegCurTrigger( 12491 )

------------------------------С©ИЛґуБФІ¶	
	DefineMission( 6189, "С©ИЛґуБФІ¶", 1250)
	MisBeginTalk( "<t>ОТМЦСбХвКҐЅаС©°ЧµД¶¬Мм.ЕуУСЈ¬ОЄКІГґІ»ЕЧЖъХвР©ОЮБДµДЗмЧЈ»о¶ЇіцИҐЙ±ВѕТ»·¬ДШ?ТІРніЗНвДЗР©µЅґ¦ВТЕЬµДКҐµ®С©ИЛКЗёцІ»ґнµДДї±к,ИҐёшОТЙ±µфТ»Р©,И»єу°СЛьГЗµфВдµДС©ИЛµДСЫЗтґш№эАґёшОТ,КэБїВпѕН100ёц°Й.")
	MisBeginCondition( NoMission, 1250)
	MisBeginCondition( NoRecord, 1250)
	MisBeginAction( AddMission, 1250)
	MisBeginAction(AddTrigger, 12501, TE_GETITEM, 2880, 100 )
	MisCancelAction( ClearMission, 1250)

	MisNeed(MIS_NEED_ITEM, 2880, 100, 10, 100 )
	MisHelpTalk( "<t>КҐµ®С©ИЛФЪ°ЧТшіЗ,±щАЗ±¤єНЙіб°іЗіЗНвµЅґ¦¶јКЗ")

	MisResultTalk( "<t>ёЙµДєГ,ДгІ»ѕхµГПКСЄТІКЗХвёцЅа°ЧКҐµ®ЅЪµДµгЧєЦ®Т»Вр?")
	MisResultCondition( HasMission, 1250)
	MisResultCondition( NoRecord, 1250)
	MisResultCondition( HasItem, 2880, 100)
	MisResultAction( TakeItem, 2880, 100)
	MisResultAction( GiveItem, 2882, 1, 4)
	MisResultAction( CpXuerenNum )
	MisResultAction( ClearMission, 1250)
	MisResultAction( SetRecord, 1250)
	MisResultAction( ClearRecord, 1250)


	InitTrigger()
	TriggerCondition( 1, IsItem, 2880)	
	TriggerAction( 1, AddNextFlag, 1250, 10, 100 )
	RegCurTrigger( 12501 )


	----------------------------------------------------------І»ИМґн№эµДКҐµ®ИООс(Т»)--------------КҐµ®ґеґ«ЛНК№
	DefineMission( 6190, "Необычное Новогоднее Задание 1", 1251)
	MisBeginTalk( "<t>Г»УР»рј¦µДКҐµ®ЅЪКЗІ»НкХыµД,ОТЅйЙЬКҐµ®ґеµДміР»МШёшДгИПК¶°Й,ФЪЦЖЧцКҐµ®ґуІНХв·ЅГжЛыєЬФЪРРЕ¶.")
	MisBeginCondition( NoMission, 1251)
	MisBeginCondition( NoRecord, 1251)
	MisBeginAction( AddMission, 1251)
	MisCancelAction( ClearMission, 1251)

	MisNeed( MIS_NEED_DESP, "ИҐХТміР»МШ(220,41)БДБД.")
	MisHelpTalk( "<t>КҐµ®ЅЪєЬїмѕН№эИҐБЛ,ДгТЄјУїмЛЩ¶ИБЛ.")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------І»ИМґн№эµДКҐµ®ИООс(Т»)--------------міР»МШ(220,41)
	DefineMission( 6191, "Необычное Новогоднее Задание 1", 1251, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>ДгєГЕуУС,КҐµ®їмАЦ!ТІРнДгФзѕНМэЛµБЛ,ОТХвАпЧЁГЕёєФрЕлвїГАО¶µД»рј¦ИвєНКҐµ®ґуІН,»¶У­АґЖ·іў.")
	MisResultCondition( HasMission, 1251)
	MisResultCondition( NoRecord, 1251)
	MisResultAction( SetRecord, 1251)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1251)
	MisResultBagNeed(1)


	--------------------------------------------------------І»ИМґн№эµДКҐµ®ИООс(¶ю)-----------------КҐµ®ґеґ«ЛНК№
	DefineMission( 6192, "Необычное Новогоднее Задание 2", 1252)
	MisBeginTalk( "<t>І»їЙ·сИПїЖ¶чКЗёцРФёРµДГыЧЦ,ЛыУРКХ№єј¦Г«ЎўВ№ЅЗЎўС©ИЛСЫЗтµДс±єГ.Из№ыДгПлИҐКҐµ®ѕєјјіЎ,ѕНІ»µГІ»ИҐИПК¶ЛыТ»ПВ.")
	MisBeginCondition( NoMission, 1252)
	MisBeginCondition( NoRecord, 1252)
	MisBeginAction( AddMission, 1252)
	MisCancelAction( ClearMission, 1252)

	MisNeed( MIS_NEED_DESP, "ИҐХТКҐµ®ґеµДїЖ¶ч(144,252)БДБД.")
	MisHelpTalk( "<t>ДгТСѕ­ИПК¶№эЛыБЛ?")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------І»ИМґн№эµДКҐµ®ИООс(¶ю)--------------їЖ¶ч(144,252)
	DefineMission( 6193, "Необычное Новогоднее Задание 2", 1252, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>КҐµ®їмАЦ!ПлИҐКҐµ®ѕєјјіЎВр?ПлТЄУГј¦Г«ЎўВ№ЅЗЎўС©ИЛСЫЗтХвР©А¬»ш»»µгУРУГµД¶«ОчВр?ПлЦЄµАЙ±ЛА»рј¦ЎўчзВ№ЎўС©ИЛ»б·ўЙъКІГґїЙЕВєу№ыВр?")
	MisResultCondition( HasMission, 1252)
	MisResultCondition( NoRecord, 1252)
	MisResultAction( SetRecord, 1252)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1252)
	MisResultBagNeed(1)

	--------------------------------------------------------І»ИМґн№эµДКҐµ®ИООс(Иэ)--------------КҐµ®ґеґ«ЛНК№
	DefineMission( 6194, "Необычное Новогоднее Задание 3", 1253)
	MisBeginTalk( "<t>ЛьїЙІ»КЗТ»ёцЖХНЁµДПґТВ»ъ°Ў.Из№ыДгУРОЫЧЗµДКҐµ®АсєР,УЦХэіоГ»УРµШ·ЅЗеПґ,ДЗѕНИҐХТЛь°Й.")
	MisBeginCondition( NoMission, 1253)
	MisBeginCondition( NoRecord, 1253)
	MisBeginAction( AddMission, 1253)
	MisCancelAction( ClearMission, 1253)

	MisNeed( MIS_NEED_DESP, "ИҐХТКҐµ®ґеµДКҐµ®АПИЛµДПґТВ»ъ(84,37).")
	MisHelpTalk( "<t>ПґЛўЛў~ПґЛўЛў......")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------І»ИМґн№эµДКҐµ®ИООс(Иэ)--------------КҐµ®АПИЛµДПґТВ»ъ(84,37)
	DefineMission( 6195, "Необычное Новогоднее Задание 3", 1253, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>ЕуУС,ДгУРКІГґТЄПґµДВр?іфНаЧУГвМё.")
	MisResultCondition( HasMission, 1253)
	MisResultCondition( NoRecord, 1253)
	MisResultAction( SetRecord, 1253)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1253)
	MisResultBagNeed(1)

	--------------------------------------------------------І»ИМґн№эµДКҐµ®ИООс(ЛД)--------------КҐµ®ґеґ«ЛНК№
	DefineMission( 6196, "Необычное Новогоднее Задание 4", 1254)
	MisBeginTalk( "<t>ДДАпУРВтёЯј¶»хµДµШ·Ѕ?µ±И»КЗКҐµ®ФУ»хЙМДЗАпБЛ,іцГЕФЪНв,¶аёъЛыґтЅ»µАГ»УРє¦ґ¦.")
	MisBeginCondition( NoMission, 1254)
	MisBeginCondition( NoRecord, 1254)
	MisBeginAction( AddMission, 1254)
	MisCancelAction( ClearMission, 1254)

	MisNeed( MIS_NEED_DESP, "ИҐХТКҐµ®ґеµДКҐµ®ФУ»хЙМ(197,251).")
	MisHelpTalk( "<t>І»ИзИҐИПК¶Т»ПВКҐµ®ФУ»хЙМ.")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------І»ИМґн№эµДКҐµ®ИООс(ЛД)--------------КҐµ®ФУ»хЙМ(197,251)
	DefineMission( 6197, "Необычное Новогоднее Задание 4", 1254, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>КҐµ®їс»¶ґуЗА№є!КэБїУРПЮ,ПИµЅПИµГ.")
	MisResultCondition( HasMission, 1254)
	MisResultCondition( NoRecord, 1254)
	MisResultAction( SetRecord, 1254)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1254)
	MisResultBagNeed(1)


	--------------------------------------------------------І»ИМґн№эµДКҐµ®ИООс(Ое)--------------КҐµ®ґеґ«ЛНК№
	DefineMission( 6198, "Необычное Новогоднее Задание 5", 1255)
	MisBeginTalk( "<t>ХвёцАЛВюµДКҐµ®І»ТЄґн№эПт°®ИЛ±нґп°®ТвµД»ъ»бЕ¶.")
	MisBeginCondition( NoMission, 1255)
	MisBeginCondition( NoRecord, 1255)
	MisBeginAction( AddMission, 1255)
	MisCancelAction( ClearMission, 1255)

	MisNeed( MIS_NEED_DESP, "ИҐХТКҐµ®ґеµДКҐµ®ЙМИЛЎ¤ОТРРОТїб(125,253).")
	MisHelpTalk( "<t>ОТРРОТїб!")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------І»ИМґн№эµДКҐµ®ИООс(Ое)--------------КҐµ®ЙМИЛЎ¤ОТРРОТїб(125,253)
	DefineMission( 6199, "Необычное Новогоднее Задание 5", 1255, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>ОТРРОТїб!ИПК¶ОТµДДЗёцН¬КВВр,ОТїбОТРР,КЗТ»ёцРгЧФјє,УйАЦ±рИЛµДРРјТДШ.")
	MisResultCondition( HasMission, 1255)
	MisResultCondition( NoRecord, 1255)
	MisResultAction( SetRecord, 1255)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1255)
	MisResultBagNeed(1)


	--------------------------------------------------------І»ИМґн№эµДКҐµ®ИООс(Бщ)--------------КҐµ®ґеґ«ЛНК№
	DefineMission( 6200, "Необычное Новогоднее Задание 6", 1256)
	MisBeginTalk( "<t>КҐµ®ЅЪµДЧоЦШТЄИЛОпКЗЛ­?КЗДг!¶Ф,µ±И»,»№УРТ»ёцИЛ,ѕНКЗКҐµ®АПИЛЕ¶.")
	MisBeginCondition( NoMission, 1256)
	MisBeginCondition( NoRecord, 1256)
	MisBeginAction( AddMission, 1256)
	MisCancelAction( ClearMission, 1256)

	MisNeed( MIS_NEED_DESP, "ИҐХТКҐµ®ґеµДКҐµ®АПИЛ(144,166)БДБД.")
	MisHelpTalk( "<t>merry christmas!")
	
	MisResultCondition( AlwaysFailure )

-----------------------------------------------------------І»ИМґн№эµДКҐµ®ИООс(Бщ)-------------КҐµ®АПИЛ(144,166)
	DefineMission( 6201, "Необычное Новогоднее Задание 6", 1256, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>merry christmas!Чј±ёєГДгµДНаЧУБЛВр?№ю№ю,ОТЙнєуµДКҐµ®КчїЙТФЛНЧЈёЈёшДгФЪєхµДИЛЕ¶.")
	MisResultCondition( HasMission, 1256)
	MisResultCondition( NoRecord, 1256)
	MisResultAction( SetRecord, 1256)
	MisResultAction( GiveItem, 2883, 2, 4)
	MisResultAction( ClearMission, 1256)
	MisResultBagNeed(1)

-----------------------------------------------------------»ГѕхИООс------------І»їЙДЬЅУµЅ
	DefineMission( 6202, "»Гѕх", 1257)		------------КҐµ®АПИЛ

	MisBeginTalk( "<t>µ±ДгїґµЅХвёцИООсµДК±єтЈ¬ДгТ»¶ЁКЗІъЙъ»ГѕхБЛЈ¬ПаРЕОТЈ¬ДгГ»їґµЅ.")
	MisBeginCondition( XmasNotice, 1 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1257)
	MisCancelAction( ClearMission, 1257)

	MisResultCondition( AlwaysFailure )

	DefineMission( 6203, "»Гѕх", 1258)		------------КҐµ®уф»р

	MisBeginTalk( "<t>µ±ДгїґµЅХвёцИООсµДК±єтЈ¬ДгТ»¶ЁКЗІъЙъ»ГѕхБЛЈ¬ПаРЕОТЈ¬ДгГ»їґµЅ.")
	MisBeginCondition( XmasNotice, 2 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1258)
	MisCancelAction( ClearMission, 1258)

	MisResultCondition( AlwaysFailure )

	DefineMission( 6204, "»Гѕх", 1259)		------------їЖ¶ч

	MisBeginTalk( "<t>µ±ДгїґµЅХвёцИООсµДК±єтЈ¬ДгТ»¶ЁКЗІъЙъ»ГѕхБЛЈ¬ПаРЕОТЈ¬ДгГ»їґµЅ.")
	MisBeginCondition( XmasNotice, 3 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1259)
	MisCancelAction( ClearMission, 1259)

	MisResultCondition( AlwaysFailure )

	DefineMission( 6205, "»Гѕх", 1260)		------------РЎМАД·

	MisBeginTalk( "<t>µ±ДгїґµЅХвёцИООсµДК±єтЈ¬ДгТ»¶ЁКЗІъЙъ»ГѕхБЛЈ¬ПаРЕОТЈ¬ДгГ»їґµЅ.")
	MisBeginCondition( XmasNotice, 4 )
	MisBeginCondition( AlwaysFailure )
	MisBeginAction( AddMission, 1260)
	MisCancelAction( ClearMission, 1260)

	MisResultCondition( AlwaysFailure )
	
	-----------ХЕКСАЛОН
	DefineMission( 6114, "Первое задание", 1000)

	MisBeginTalk( "<t>Вы не смогли бы ещё помочь мне? Пожалуйста отнесите это письмо в Шайтан  (873, 3545) . Вас ждёт большая награда!")
	MisBeginCondition( CheckTime )
	MisBeginCondition( NoMission, 1000)
	MisBeginCondition( NoRecord, 1000)
	MisBeginAction( GiveItem, 3292, 1, 4)
	MisBeginAction( AddMission, 1000)
	MisCancelAction( ClearMission, 1000)
	MisBeginBagNeed(1)
	
	MisNeed( MIS_NEED_DESP, "Следуйте в Шайтан(873, 3545).")
	
	MisHelpTalk( "<t>Отправляйтесь в Шайтан.")
	MisResultCondition( AlwaysFailure )
-------------------------------------------

	DefineMission( 6115, "Первое задание", 1000, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Мне письмо? Спасибо.")
	MisResultCondition( HasMission, 1000)
	MisResultCondition( HasItem, 3292, 1)
	MisResultCondition( NoRecord, 1000)
	MisResultAction( TakeItem, 3292, 1)
	MisResultAction( SetRecord, 1000)
	MisResultAction( ClearMission, 1000)
	MisResultAction( AddExp_1)


-----------------------------МъИЛБщПоЦ®¶ю
	DefineMission( 6116, "Второе задание", 1001)

	MisBeginTalk( "<t>Медсестра Джинна в Аргенте хочет Суперконфету на палочке ")
	MisBeginCondition( HasRecord, 1000)
	MisBeginCondition( NoMission, 1001)
	MisBeginCondition( NoRecord, 1001)
	MisBeginAction( AddMission, 1001)
	MisBeginAction(AddTrigger, 10011, TE_GETITEM, 3910, 1)
	MisCancelAction( ClearMission, 1001)

	MisNeed( MIS_NEED_DESP, "Иди и купи суперконфету для Джинны.")
	MisNeed( MIS_NEED_ITEM, 3910, 1, 10, 1)

	MisHelpTalk( "<t>Суперконфета на палочке")
	MisResultCondition( AlwaysFailure )



----------------------------МъИЛБщПоЦ®¶ю
	DefineMission( 6117, "Второе задание", 1001, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Эта конфета должна быть доставлена вовремя. Она нужна мне прямо сейчас!")
	MisResultCondition( HasMission, 1001)
	MisResultCondition( NoRecord, 1001)
	MisResultCondition( HasItem, 3910, 1)
	MisResultAction( TakeItem, 3910, 1)
	MisResultAction( SetRecord, 1001)
	MisResultAction( ClearMission, 1001)
	MisResultAction( AddExp_1 )


	InitTrigger()
	TriggerCondition( 1, IsItem, 3910)	
	TriggerAction( 1, AddNextFlag, 1001, 10, 1 )
	RegCurTrigger( 10011 )

---------------------------МъИЛБщПоЦ®ИэA
	DefineMission( 6118, "Третье задание", 1002)
	
	MisBeginTalk( "Последенее время Луговые Лоси доставляют нам неприятности. Не могли бы вы преподать им урок?")
	MisBeginCondition( HasRecord, 1001)
	MisBeginCondition( NoMission, 1002)
	MisBeginCondition( NoRecord, 1002)
	MisBeginCondition( NoRecord, 1003)
	MisBeginCondition( LvCheck, "<", 40)
	MisBeginAction( AddMission, 1002)
	MisBeginAction( AddTrigger, 10021, TE_KILL, 299, 20 )
	--MisBeginAction( AddTrigger, 10022, TE_KILL, 97, 5 )		--єЈІЭ
	MisCancelAction( ClearMission, 1002)
	
	MisNeed( MIS_NEED_DESP, "Убейте 20 Луговых Лосей")
	MisNeed( MIS_NEED_KILL, 299, 20, 10, 20)
	--MisNeed( MIS_NEED_KILL, 97, 5, 25, 5)


	MisResultTalk( "<t>Хорошо. Вы сделали это так быстро, я вынужден вознаградить вас.")
	MisHelpTalk( "<t>Вы можете найти Луговых Лосей возле Склада (1360, 2683)")
	MisResultCondition( HasMission, 1002)
	MisResultCondition( NoRecord, 1002)
	MisResultCondition( HasFlag, 1002, 29)
	MisResultAction( SetRecord, 1002)
	MisResultAction( SetRecord, 1003)
	MisResultAction( ClearMission, 1002)
	MisResultAction( AddExp, 13000, 13000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 299)	
	TriggerAction( 1, AddNextFlag, 1002, 10, 20)
	RegCurTrigger( 10021 )

	--InitTrigger()
	--TriggerCondition( 1, IsMonster, 97)	
	--TriggerAction( 1, AddNextFlag, 1002, 25, 5 )
	--RegCurTrigger( 10022 )


----------------------------МъИЛИэПоЦ®ИэB
	DefineMission( 6119, "Третье задание", 1004)
	
	MisBeginTalk( "В последнее время Рыцари - тыквы доставили нам много неприятностей. Могли бы вы преподать им урок?")
	MisBeginCondition( HasRecord, 1001)
	MisBeginCondition( NoMission, 1004)
	MisBeginCondition( NoMission, 1002)
	MisBeginCondition( NoRecord, 1003)
	MisBeginCondition( NoRecord, 1004)
	MisBeginCondition( LvCheck, ">", 39)
	MisBeginAction( AddMission, 1004)
	MisBeginAction( AddTrigger, 10041, TE_KILL, 37, 20 )
	--MisBeginAction( AddTrigger, 10042, TE_KILL, 97, 5 )
	MisCancelAction( ClearMission, 1004)
	
	MisNeed( MIS_NEED_DESP, "Убейте")
	MisNeed( MIS_NEED_KILL, 37, 20, 10, 20)
	--MisNeed( MIS_NEED_KILL, 97, 5, 25, 5)

	MisResultTalk( "<t>Оу, очень хорошо. Вы выполнили это довольно быстро. Я хочу вас вознаградить.")
	MisHelpTalk( "<t>Вы можете найти Рыцарей Тыкв около (622, 3364)")
	MisResultCondition( HasMission, 1004)
	MisResultCondition( NoRecord, 1004)
	MisResultCondition( HasFlag, 1004, 29)
	MisResultAction( SetRecord, 1004)
	MisResultAction( SetRecord, 1003)
	MisResultAction( ClearMission, 1004)
	MisResultAction( AddExp_3)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 37)		
	TriggerAction( 1, AddNextFlag, 1004, 10, 20 )
	RegCurTrigger( 10041 )

	--InitTrigger()
	--TriggerCondition( 1, IsMonster, 97)		
	--TriggerAction( 1, AddNextFlag, 1004, 25, 5 )
	--RegCurTrigger( 10042 )
----------------------------------МъИЛБщПоЦ®ЛД
	DefineMission( 6120, "Четвертое задание", 1005)
	MisBeginTalk( "<t>Теперь вы готовы выполнить четвертое задание. Соберите 3 древесины ,3 Сашими и 3 Железной Руды и отдайте это Грегу (1882, 2805).")
	MisBeginCondition( HasRecord, 1003)
	MisBeginCondition( NoMission, 1005)
	MisBeginCondition( NoRecord, 1005)
	MisBeginAction( AddMission, 1005)
	MisBeginAction(AddTrigger, 10051, TE_GETITEM, 4543, 3 )
	MisBeginAction(AddTrigger, 10052, TE_GETITEM, 4545, 3 )
	MisBeginAction(AddTrigger, 10053, TE_GETITEM, 1478, 3 )
	MisCancelAction( ClearMission, 1005)

	MisNeed( MIS_NEED_DESP, "Соберите 3 древесины ,3 Сашими и 3 Железной Руды и отдайте это Грегу (1882, 2805).")
	MisNeed( MIS_NEED_ITEM, 4543, 3, 10, 3)
	MisNeed( MIS_NEED_ITEM, 4545, 3, 20, 3)
	MisNeed( MIS_NEED_ITEM, 1478, 3, 30, 3)

	MisHelpTalk( "<t>Вы можете получить Дерево путем Рубки деревьев и Железную Руду путем  Добычи руды")

	MisResultCondition( AlwaysFailure )

---------------------------------МъИЛБщПоЦ®ЛД
	DefineMission( 6121, "Четвертое задание", 1005, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )

	MisResultTalk( "<t>Принесите необходимое вовремя. Мне нужно это прямо сейчас.")
	MisResultCondition( HasMission, 1005)
	MisResultCondition( NoRecord, 1005)
	MisResultCondition( HasItem, 4543, 3)
	MisResultCondition( HasItem, 4545, 3)
	MisResultCondition( HasItem, 1478, 3)
	MisResultAction( TakeItem, 4543, 3)
	MisResultAction( TakeItem, 4545, 3)
	MisResultAction( TakeItem, 1478, 3)
	MisResultAction( SetRecord, 1005)
	MisResultAction( ClearMission, 1005)
	MisResultAction( AddExp_4)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4543)	
	TriggerAction( 1, AddNextFlag, 1005, 10, 3 )
	RegCurTrigger( 10051 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4545)	
	TriggerAction( 1, AddNextFlag, 1005, 20, 3 )
	RegCurTrigger( 10052 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1478)	
	TriggerAction( 1, AddNextFlag, 1005, 30, 3 )
	RegCurTrigger( 10053 )
-----------------------------------МъИЛБщПоЦ®Ое
	DefineMission( 6122, "Пятое задание", 1006)
	MisBeginTalk( "Следующая задача. Собери 5 эльфийских Печатей, и дайте им Форбею в Аргенте")
	MisBeginCondition( HasRecord, 1005)
	MisBeginCondition( NoMission, 1006)
	MisBeginCondition( NoRecord, 1006)
	MisBeginAction( AddMission, 1006)
	MisBeginAction(AddTrigger, 10061, TE_GETITEM, 2588, 5 )
	MisCancelAction( ClearMission, 1006)

	MisNeed( MIS_NEED_DESP, "Собери 5 Эльфийских печаток и отдай их Форбею в (2226, 2726) в аргенте")
	MisNeed( MIS_NEED_ITEM, 2588, 5, 10, 5)

	MisHelpTalk( "Кажется, ты можешь только отберать эльфийские монетки у устриц!")
	MisResultCondition( AlwaysFailure )

-----------------------------------МъИЛБщПоЦ®Ое
	DefineMission( 6123, "Пятое задание", 1006, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk( "Ты так силён! А печати столь красивы. Теперь ты имеешь шанс преступить к финальному испытанию!")
	MisResultCondition( HasMission, 1006)
	MisResultCondition( NoRecord, 1006)
	MisResultCondition( HasItem, 2588, 5)
	MisResultAction( TakeItem, 2588, 5)
	MisResultAction( SetRecord, 1006)
	MisResultAction( ClearMission, 1006)
	MisResultAction( AddExp_5)

	InitTrigger()
	TriggerCondition( 1, IsItem, 2588)	
	TriggerAction( 1, AddNextFlag, 1006, 10, 2 )
	RegCurTrigger( 10061 )

-----------------------------------МъИЛБщПоЦ®Бщ
	DefineMission( 6124, "Шестое задание", 1007)
	MisBeginTalk( "<t>Финальное задание очень простое. Все что от тебя требуется это найти двух товарищей которые будут с тобой в отряде. Требуются персонаж, уровень которого больше 20 но не больше 30. Другой персонаж, чей уровень в диапазоне 31-40. И третий персонаж, чей уровень выше 40. Когда ты найдешь людей, что помогут тебе - обратись к рею из ледыни")
	MisBeginCondition( HasRecord, 1006)
	MisBeginCondition( NoMission, 1007)
	MisBeginCondition( NoRecord, 1007)
	MisBeginAction( AddMission, 1007)
	MisCancelAction( ClearMission, 1007)

	MisHelpTalk( "<t> Вперёд на поиски компании!")

	MisResultCondition( AlwaysFailure )

----------------------------------МъИЛБщПоЦ®Бщ
	DefineMission( 6125, "Шестое задание", 1007, COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )


	MisResultTalk( "<t> Великолепная работа! Мои поздравления! Я с нетерпением жду момента, когда увижу тебя снова.")
	MisResultCondition( HasMission, 1007)
	MisResultCondition( NoRecord, 1007)
	MisResultCondition( CheckTeam)
	MisResultAction( SetRecord, 1007)
	MisResultAction( ClearMission, 1007)
	MisResultAction( AddExp_6)

	
-----------------------------------МъИЛБщПоЅбКш







---Аргент:---

--- Диспетчер порта - Люфань ---- (3254,3301)



DefineMission( 3001, "Зефирный Сад", 3001 )

MisBeginTalk( "<t>Я начал выращивать ягоды, но для этого климата мне нужно удобрение, оно делается с Хряща большой рыбы, ты сможешь достать его из <rРыбы-меча> ")

--MisBeginCondition(NoRecord, 3001)
MisBeginCondition(NoMission, 3001)
MisBeginAction(AddMission, 3001)

MisBeginAction(AddTrigger, 30011, TE_GETITEM, 1361, 10 )
 
MisCancelAction(ClearMission, 3001)

MisNeed(MIS_NEED_DESP, "Ты можешь достать его в Аргент 3260,3350. ")
MisNeed(MIS_NEED_ITEM, 1361, 10, 10, 10)

MisResultTalk("<t>Теперь я могу вырастить настоящий сад, спасибо, попробуй <pягодку!>")
MisHelpTalk("<t>Поспеши, растения гибнут.")

MisResultCondition(HasMission, 3001 )
MisResultCondition(HasItem, 1361, 10 )

MisResultAction(TakeItem, 1361, 10 )

MisResultAction(AddExp, 50000, 50000)
MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3845, 1, 4)

MisResultBagNeed(1)

InitTrigger()
TriggerCondition( 1, IsItem, 1361 )
TriggerAction( 1, AddNextFlag, 3001, 10, 10 )
RegCurTrigger( 30011 )
 


--- Диспетчер порта - Люцци --- (3620,743)



DefineMission( 3002, "Сад Отверженных", 3002 )

MisBeginTalk( "<t>Будь проклят тот день, когда я послушал <rЛюфаня>. Эти ягоды совсем не растут в этих краях, у меня вообще вышел другой сорт. Мне так скучно, ром есть а вот закуски нету, слушай, достань мне <rсоус ужасной рыбы> и я дам тебе одну ягоду?")

--MisBeginCondition(NoRecord, 3002)
MisBeginCondition(HasMission, 3002)
MisBeginAction(AddMission, 3002)

MisBeginAction(AddTrigger, 30021, TE_GETITEM, 1342, 10 )

MisCancelAction(ClearMission, 3002)

MisNeed(MIS_NEED_DESP, "Принести Люцию <rСоус ужасной рыбы>. ")
MisNeed(MIS_NEED_ITEM, 1342, 10, 10, 10)

MisResultTalk("<t>Вау, этот рыбный соус такой вкусный, идеален под ром, вот, держи ягоду как и обещал друг! ")
MisHelpTalk("<t>Сколько мне ждать друг? я бутылку уже открыл.")

MisResultCondition(HasMission, 3002 )
MisResultCondition(HasItem, 1342, 10 )

MisResultAction(TakeItem, 1342, 10 )

MisResultAction(AddExp, 50000, 50000)
MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3844, 1, 4)

MisResultBagNeed(1)

InitTrigger()
TriggerCondition( 1, IsItem, 1342 )
TriggerAction( 1, AddNextFlag, 3002, 10, 10 )
RegCurTrigger( 30021 )



---Диспетчер порта - Уитни--- (3098,3531)



DefineMission( 3003, "Пиратский рейд.", 3003 )

MisBeginTalk( "<t>Неделю назад на нашу бухту был набег пиратов, они похители наши припасы, их знамя - Сакура XIII. Верни наши припасы и я тебя щедро отблагодарю!")

--MisBeginCondition(NoRecord, 3003)
MisBeginCondition(HasMission, 3003)
MisBeginAction(AddMission, 3003)
MisBeginCondition(LvCheck, ">", 50 )

MisBeginAction(AddTrigger, 30031, TE_GETITEM, 4238, 15 )

MisCancelAction(ClearMission, 3003)

MisNeed(MIS_NEED_DESP, "Найди пиратов со знаменем <rСакура XIII> найди их и принеси припасы. ")
MisNeed(MIS_NEED_ITEM, 4238, 15, 10, 15)

MisResultTalk("<t>Ты вернул припасы? не верю, они же такие страшные пираты... Ну за твою храбрость вот держи медаль!")
MisHelpTalk("<t>Поторопись, скоро нам нечем будит и свечку зажечь.")

MisResultCondition(HasMission, 3003 )
MisResultCondition(HasItem, 4238, 15 )

MisResultAction(TakeItem, 4238, 15 )
MisResultAction(ClearMission, 3003 )
MisResultAction(SetRecord, 3003)

MisResultAction(AddExp, 100000, 100000)
MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 8142, 1, 4)

MisResultBagNeed(1)

InitTrigger()
TriggerCondition( 1, IsItem, 4238 )
TriggerAction( 1, AddNextFlag, 3003, 10, 15 )
RegCurTrigger( 30031 )


--- Шайтан: ---

--- Диспетчер порта - Данний --- (136,3432)


DefineMission( 3004, "Метаморфоза", 3004 )

MisBeginTalk( "<t>Я слышал сказания о великом алхимике, которого зовут Августин, в одной книге он описал как можно используя два клевера создать новый, приносящий удачу.  ")

--MisBeginCondition(NoMission, 3004)
MisBeginAction(AddMission, 3004)

MisBeginAction(AddTrigger, 30041, TE_GETITEM, 3143, 1 )
MisBeginAction(AddTrigger, 30042, TE_GETITEM, 1578, 5 )

MisCancelAction(ClearMission, 3004)

MisNeed(MIS_NEED_DESP, "Принеси Даннию <pклевера>. ")
MisNeed(MIS_NEED_ITEM, 3143, 1, 10, 1)
MisNeed(MIS_NEED_ITEM, 1578, 5, 20, 5)

MisResultTalk("<t>Так ты всеже решился на это? Отлично! ")
MisHelpTalk("<t>Все в твоих руках, обдумай хорошенько.")

MisResultCondition(HasMission, 3004 )
MisResultCondition(HasItem, 3143, 1 )
MisResultCondition(HasItem, 1578, 5 )

MisResultAction(TakeItem, 3143, 1 )
MisResultAction(TakeItem, 1578, 5 )
MisResultAction(ClearMission, 3004 )
MisResultAction(SetRecord, 3004)

MisResultAction(AddExp, 20000, 20000)
MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3336, 1, 4)

MisResultBagNeed(1)

InitTrigger()
TriggerCondition( 1, IsItem, 3143)   
TriggerAction( 1, AddNextFlag, 3004, 10, 1 )
RegCurTrigger( 30041 )

InitTrigger()
TriggerCondition( 1, IsItem, 1578)   
TriggerAction( 1, AddNextFlag, 3004, 20, 5 )
RegCurTrigger( 30042 )


---Диспетчер порта - Ксад --- (2529,2393)

DefineMission( 3005, "Бессонница", 3005 )

MisBeginTalk( "<t>Псс, парнишка, не хочешь немного подзаработать? У меня бессонница а мои лекарства закончились, принеси мне <r20 Лепестков многоцвета> и я тебе заплачу. ")

MisBeginCondition(NoMission, 3005)
MisBeginAction(AddMission, 3005)

MisBeginAction(AddTrigger, 30051, TE_GETITEM, 3130, 20 )

MisCancelAction(ClearMission, 3005)

MisNeed(MIS_NEED_DESP, "Ксад попросил принести ему <rлепестки многоцвета>, думаю легкая задача. ")
MisNeed(MIS_NEED_ITEM, 3130, 20, 10, 20)

MisResultTalk("<t>Теперь я могу спать спокойно, держи свою награду. ")
MisHelpTalk("<t>Время - деньги.")

MisResultCondition(HasMission, 3005 )
MisResultCondition(HasItem, 3130, 20 )

MisResultAction(TakeItem, 3130, 20 )
MisResultAction(ClearMission, 3005 )
MisResultAction(SetRecord, 3005)

MisResultAction(AddExp, 70000, 70000)
MisResultAction(AddMoney, 30000, 30000)

InitTrigger()
TriggerCondition( 1, IsItem, 3130)   
TriggerAction( 1, AddNextFlag, 3005, 10, 20 )
RegCurTrigger( 30051 )


--- Диспетчер порта - Дидан --- (1544,3712)


DefineMission( 3006, "Мясник", 3006 )

MisBeginTalk( "<t>Привет, меня зовут Дидан, я лутший повар в этих краях. Для моих шедевров я исползую только морепродукты, принеси мне свежее мясо, говорят у <rрыбы скелета> оно свежее. ")

MisBeginCondition(NoMission, 3006)
MisBeginAction(AddMission, 3006)

MisBeginAction(AddTrigger, 30061, TE_GETITEM, 4529, 15 )

MisCancelAction(ClearMission, 3006)

MisNeed(MIS_NEED_DESP, "Дидан лутший повар в бухте, он хочет накормить своих друзей но для этого ему нужно <rсвежее мясо>. ")
MisNeed(MIS_NEED_ITEM, 4529, 15, 10, 15)

MisResultTalk("<t>Быстрая доставка заслуживает похвал, спасибо. ")
MisHelpTalk("<t>Скоро рыба закончится, ты скоро? ")

MisResultCondition(HasMission, 3006 )
MisResultCondition(HasItem, 4529, 15 )

MisResultAction(TakeItem, 4529, 15 )
MisResultAction(ClearMission, 3006 )
MisResultAction(SetRecord, 3006)

MisResultAction(AddExp, 200000, 200000)
MisResultAction(AddMoney, 15000, 15000)

InitTrigger()
TriggerCondition( 1, IsItem, 4529)   
TriggerAction( 1, AddNextFlag, 3006, 10, 15 )
RegCurTrigger( 30061 )


--- Диспетчер порта - Тиба --- (3081,2136)


DefineMission( 3007, "Дефицит", 3007 )

MisBeginTalk( "<t>Привет путник, на днях я обнаружил что мои запасы дерева иссякли, достань мне <r20 ясеневых бревен>. ")

MisBeginCondition(NoMission, 3007)
MisBeginAction(AddMission, 3007)
MisBeginAction(AddTrigger, 30071, TE_GETITEM, 3989, 20 )

MisCancelAction(ClearMission, 3007)

MisNeed(MIS_NEED_DESP, "Тиба из бухты просит доставить ему ясеневых бревен, так чего я жду? ")
MisNeed(MIS_NEED_ITEM, 3989, 20, 10, 20)

MisResultTalk("<t>Теперь починка не остановится, рад что ты помог мне. ")
MisHelpTalk("<t>Я жду свое дерево, поторопись! ")

MisResultCondition(HasMission, 3007 )
MisResultCondition(HasItem, 3989, 20 )

MisResultAction(TakeItem, 3989, 20 )
MisResultAction(ClearMission, 3007 )
MisResultAction(SetRecord, 3007)

MisResultAction(AddExp, 300000, 300000)
MisResultAction(AddMoney, 40000, 40000)

InitTrigger()
TriggerCondition( 1, IsItem, 3989)   
TriggerAction( 1, AddNextFlag, 3007, 10, 20 )
RegCurTrigger( 30071 )


--- Диспетчер порта - Барос --- (2024,2753)


DefineMission( 3008, "Корабль мечты Бароса", 3008 )

MisBeginTalk( "<t>Ого, настоящий пират! Я тоже хочу стать пиратом, по правде я мечтал об этом с 12 лет но корабля так и не купил. Теперь когда я заработал денег я могу сам построить его, доставишь мне <rдерево>? я щедро тебе заплачу. ")

MisBeginCondition(NoMission, 3008)
MisBeginAction(AddMission, 3008)

MisBeginAction(AddTrigger, 30081, TE_GETITEM, 4543, 20 )

MisCancelAction(ClearMission, 3008)

MisNeed(MIS_NEED_DESP, "Барос - тайный любитель пиратского дела, он мечтает о своем судне но у него нет дерева. ")
MisNeed(MIS_NEED_ITEM, 4543, 20, 10, 20)

MisResultTalk("<t>Я все ближе к своей мечте. Спасибо за доставку! ")
MisHelpTalk("<t>Еще не доставил? Поищи в аргенте, там много деревьев! ")

MisResultCondition(HasMission, 3008 )
MisResultCondition(HasItem, 4543, 20 )

MisResultAction(TakeItem, 4543, 20 )
MisResultAction(ClearMission, 3008 )
MisResultAction(SetRecord, 3008)

MisResultAction(AddExp, 300000, 300000)
MisResultAction(AddMoney, 60000, 60000)

InitTrigger()
TriggerCondition( 1, IsItem, 4543)   
TriggerAction( 1, AddNextFlag, 3008, 10, 20 )
RegCurTrigger( 30081 )


--- Диспетчер порта - Сок --- (3194,3508)


DefineMission( 3009, "Мистика", 3009 )

MisBeginTalk( "<t>Я был в шайтане и в лавке я нашел интересный свиток, я целый год изучал эти символы и теперь я знаю что с помощью этого свитка я смогу видеть будущее, принеси мне <rсердца наяды> и <rгрибковые споры> для ритуала. ")

MisBeginCondition(NoMission, 3009)
MisBeginAction(AddMission, 3009)

MisBeginAction(AddTrigger, 30091, TE_GETITEM, 4406, 10 )
MisBeginAction(AddTrigger, 30092, TE_GETITEM, 4418, 5 )

MisCancelAction(ClearMission, 3009)

MisNeed(MIS_NEED_DESP, "В своих странствиях по Шайтану Сок нашел в одной лавке странный свиток, после долгих исследований он обнаружил что этот свиток может показывать будущее. ")
MisNeed(MIS_NEED_ITEM, 4406, 10, 10, 10)
MisNeed(MIS_NEED_ITEM, 4418, 5, 20, 5)

MisResultTalk("<t>Я и правда видел будущее, это страшное будушее но зато у меня теперь будут деньги. ")
MisHelpTalk("<t>Скорее, я не могу больше терпеть. ")

MisResultCondition(HasMission, 3009 )
MisResultCondition(HasItem, 4406, 10 )
MisResultCondition(HasItem, 4418, 5 )

MisResultAction(TakeItem, 4406, 10 )
MisResultAction(TakeItem, 4418, 5 )
MisResultAction(ClearMission, 3009 )
MisResultAction(SetRecord, 3009)

MisResultAction(AddExp, 150000, 150000)
MisResultAction(AddMoney, 20000, 20000)

InitTrigger()
TriggerCondition( 1, IsItem, 4406)   
TriggerAction( 1, AddNextFlag, 3009, 10, 10 )
RegCurTrigger( 30091 )

InitTrigger()
TriggerCondition( 1, IsItem, 4418)   
TriggerAction( 1, AddNextFlag, 3009, 20, 5 )
RegCurTrigger( 30092 )


--- Диспетчер порта - Домору --- (3498,923)
--3010


DefineMission( 3010, "Золотая лихорадка", 3010 )

MisBeginTalk( "<t>Сейчас такое время что деньги нужно хранить в твердой валюте, золото для слабаков, я вот буду хранить свой капитал в алмазах. ")

MisBeginCondition(NoMission, 3010)
MisBeginAction(AddMission, 3010)

MisBeginAction(AddTrigger, 30101, TE_GETITEM, 3360, 10 )

MisCancelAction(ClearMission, 3010)

MisNeed(MIS_NEED_DESP, "Похоже что у Домору началась золотая лихорадка, он хочет забить свой склад алмазами.  ")
MisNeed(MIS_NEED_ITEM, 3360, 10, 10, 10)

MisResultTalk("<t>Мой склад будет сиять как дворец, спасибо! ")
MisHelpTalk("<t>Ну что ты медлишь? скорее дай мне алмазы. ")

MisResultCondition(HasMission, 3010 )
MisResultCondition(HasItem, 3360, 10 )

MisResultAction(TakeItem, 3360, 10 )
MisResultAction(ClearMission, 3010 )
MisResultAction(SetRecord, 3010)

MisResultAction(AddExp, 200000, 200000)
MisResultAction(AddMoney, 150000, 150000)

InitTrigger()
TriggerCondition( 1, IsItem, 3360)   
TriggerAction( 1, AddNextFlag, 3010, 10, 10 )
RegCurTrigger( 30101 )



--- Диспетчер порта - Луиджи --- (464,468)


DefineMission( 3011, "Чистое золото", 3011 )

MisBeginTalk( "<t>Чтобы получить Терранский золотой нужно провести две степени очистки, действительно это самое чистое золото в Шайтане! ")

MisBeginCondition(NoMission, 3011)
MisBeginAction(AddMission, 3011)

MisBeginAction(AddTrigger, 30111, TE_GETITEM, 1783, 1 )

MisCancelAction(ClearMission, 3011)

MisNeed(MIS_NEED_DESP, "Луиджи предприимчивый человек, он знает цену простому золоту и чистому терранскому золоту, за один <rтерранский золотой> он готов хорошо заплатить. ")
MisNeed(MIS_NEED_ITEM, 1783, 1, 10, 1)

MisResultTalk("<t>Я знаю что достать его сложно, награда тоже достойная. ")
MisHelpTalk("<t>Золото, золото, золото, золото. . . мне нужно только стопроцентное золото! ")

MisResultCondition(HasMission, 3011 )
MisResultCondition(HasItem, 1783, 1 )

MisResultAction(TakeItem, 1783, 1 )
MisResultAction(ClearMission, 3011 )
MisResultAction(SetRecord, 3011)

MisResultAction(AddExp, 300000, 300000)
MisResultAction(AddMoney, 70000, 70000)

InitTrigger()
TriggerCondition( 1, IsItem, 1783)   
TriggerAction( 1, AddNextFlag, 3011, 10, 1 )
RegCurTrigger( 30111 )




--- Диспетчер порта - Буни --- (2042,636)


DefineMission( 3012, "Коллекционер", 3012 )

MisBeginTalk( "<t>В былые времена я был отличным охоником но трофеи я подарил друзьям, теперь я хочу собрать новую коллекцию, поможешь? ")

MisBeginCondition(NoMission, 3012)
MisBeginAction(AddMission, 3012)

MisBeginAction(AddTrigger, 30121, TE_GETITEM, 2663, 1 )
MisBeginAction(AddTrigger, 30122, TE_GETITEM, 2662, 1 )
MisBeginAction(AddTrigger, 30123, TE_GETITEM, 2661, 1 )
MisBeginAction(AddTrigger, 30124, TE_GETITEM, 2660, 1 )
MisBeginAction(AddTrigger, 30125, TE_GETITEM, 2658, 1 )
MisBeginAction(AddTrigger, 30126, TE_GETITEM, 2656, 1 )
MisBeginAction(AddTrigger, 30127, TE_GETITEM, 2654, 1 )

MisCancelAction(ClearMission, 3012)

MisNeed(MIS_NEED_DESP, "Буни до своего назначения в бухту Айрис был отличным охотником, на старость он хочет несколько <pтвофеев>. ")
MisNeed(MIS_NEED_ITEM, 2663, 1, 10, 1)
MisNeed(MIS_NEED_ITEM, 2662, 1, 20, 1)
MisNeed(MIS_NEED_ITEM, 2661, 1, 30, 1)
MisNeed(MIS_NEED_ITEM, 2660, 1, 40, 1)
MisNeed(MIS_NEED_ITEM, 2658, 1, 50, 1)
MisNeed(MIS_NEED_ITEM, 2656, 1, 60, 1)
MisNeed(MIS_NEED_ITEM, 2654, 1, 70, 1)

MisResultTalk("<t>Это хоть и вся коллекция но тоже хорошо! ")
MisHelpTalk("<t>Неужели так трудно выполнить просьбу старика? ")

MisResultCondition(HasMission, 3012 )
MisResultCondition(HasItem, 2663, 1 )
MisResultCondition(HasItem, 2662, 1 )
MisResultCondition(HasItem, 2661, 1 )
MisResultCondition(HasItem, 2660, 1 )
MisResultCondition(HasItem, 2658, 1 )
MisResultCondition(HasItem, 2656, 1 )
MisResultCondition(HasItem, 2654, 1 )

MisResultAction(TakeItem, 2663, 1 )
MisResultAction(TakeItem, 2662, 1 )
MisResultAction(TakeItem, 2661, 1 )
MisResultAction(TakeItem, 2660, 1 )
MisResultAction(TakeItem, 2658, 1 )
MisResultAction(TakeItem, 2656, 1 )
MisResultAction(TakeItem, 2654, 1 )
MisResultAction(ClearMission, 3012 )
MisResultAction(SetRecord, 3012)

MisResultAction(AddExp, 1000000, 1000000)
MisResultAction(AddMoney, 150000, 150000)

InitTrigger()
TriggerCondition( 1, IsItem, 2663)   
TriggerAction( 1, AddNextFlag, 3012, 10, 1 )
RegCurTrigger( 30121 )

InitTrigger()
TriggerCondition( 1, IsItem, 2662)   
TriggerAction( 1, AddNextFlag, 3012, 20, 1 )
RegCurTrigger( 30122 )

InitTrigger()
TriggerCondition( 1, IsItem, 2661)   
TriggerAction( 1, AddNextFlag, 3012, 30, 1 )
RegCurTrigger( 30123 )

InitTrigger()
TriggerCondition( 1, IsItem, 2660)   
TriggerAction( 1, AddNextFlag, 3012, 40, 1 )
RegCurTrigger( 30124 )

InitTrigger()
TriggerCondition( 1, IsItem, 2658)   
TriggerAction( 1, AddNextFlag, 3012, 50, 1 )
RegCurTrigger( 30125 )

InitTrigger()
TriggerCondition( 1, IsItem, 2656)   
TriggerAction( 1, AddNextFlag, 3012, 60, 1 )
RegCurTrigger( 30126 )

InitTrigger()
TriggerCondition( 1, IsItem, 2654)   
TriggerAction( 1, AddNextFlag, 3012, 70, 1 )
RegCurTrigger( 30127 )



 --- Диспетчер порта - Пол --- (2372,738)



DefineMission( 3013, "Чертеж робота", 3013 )

MisBeginTalk( "<t>Я хороший механик и могу создать даже робота, мне нужен только чертеж и материалы!  ")

MisBeginCondition(NoMission, 3013)
MisBeginAction(AddMission, 3013)

MisBeginAction(AddTrigger, 30131, TE_GETITEM, 1002, 1 )
MisBeginAction(AddTrigger, 30132, TE_GETITEM, 3368, 10 )
MisBeginAction(AddTrigger, 30133, TE_GETITEM, 1662, 15 )
MisBeginAction(AddTrigger, 30134, TE_GETITEM, 4543, 30 )
MisBeginAction(AddTrigger, 30135, TE_GETITEM, 3933, 5 )

MisCancelAction(ClearMission, 3013)

MisNeed(MIS_NEED_DESP, "Пол из острова Стужи хочет создать робота, для этого ему нужно: ")
MisNeed(MIS_NEED_ITEM, 1002, 1, 10, 1)
MisNeed(MIS_NEED_ITEM, 3368, 10, 20, 10)
MisNeed(MIS_NEED_ITEM, 1662, 15, 30, 15)
MisNeed(MIS_NEED_ITEM, 4543, 30, 40, 30)
MisNeed(MIS_NEED_ITEM, 3933, 5, 50, 5)

MisResultTalk("<t>Чертеж, сталь, дерево, железо и детали. Приступаю к созданию робота! ")
MisHelpTalk("<t>Странно, я думал ты из любопытных. ")

MisResultCondition(HasMission, 3013 )
MisResultCondition(HasItem, 1002, 1 )
MisResultCondition(HasItem, 3368, 10 )
MisResultCondition(HasItem, 1662, 15 )
MisResultCondition(HasItem, 4543, 30 )
MisResultCondition(HasItem, 3933, 5 )

MisResultAction(TakeItem, 1002, 1 )
MisResultAction(TakeItem, 3368, 10 )
MisResultAction(TakeItem, 1662, 15 )
MisResultAction(TakeItem, 4543, 30 )
MisResultAction(TakeItem, 3933, 5 )
MisResultAction(ClearMission, 3013 )
MisResultAction(SetRecord, 3013)

MisResultAction(AddExp, 1200000, 1200000)
MisResultAction(AddMoney, 100000, 100000)

InitTrigger()
TriggerCondition( 1, IsItem, 1002)   
TriggerAction( 1, AddNextFlag, 3013, 10, 1 )
RegCurTrigger( 30131 )

InitTrigger()
TriggerCondition( 1, IsItem, 3368)   
TriggerAction( 1, AddNextFlag, 3013, 20, 10 )
RegCurTrigger( 30132 )

InitTrigger()
TriggerCondition( 1, IsItem, 1662)   
TriggerAction( 1, AddNextFlag, 3013, 30, 15 )
RegCurTrigger( 30133 )

InitTrigger()
TriggerCondition( 1, IsItem, 4543)   
TriggerAction( 1, AddNextFlag, 3013, 40, 30 )
RegCurTrigger( 30134 )

InitTrigger()
TriggerCondition( 1, IsItem, 3933)   
TriggerAction( 1, AddNextFlag, 3013, 50, 5 )
RegCurTrigger( 30135 )


-------------













--3101,  "Чистка Океана Аскарон ", 3101)
DefineMission(  3101,  "Чистка Океана Аскарон ", 3101)

MisBeginTalk(  "<t>В округах Аргента обитает Водоросль, Убей 20шт и принеси Искрящийся куст 10шт и получишь Зачарованную ягоду 1шт  " )


MisBeginCondition(NoMission, 3101)
MisBeginCondition(LvCheck, "<", 40)
MisBeginCondition(LvCheck, ">", 30)
MisBeginAction(AddMission, 3101)
MisBeginAction(AddTrigger, 31011, TE_GETITEM, 4511, 10 )
MisCancelAction(ClearMission, 3101)

MisNeed(MIS_NEED_DESP, "Чистка Океана Аскарон ")
MisNeed(MIS_NEED_ITEM,  4511, 10, 10, 10)

MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
MisPrize(MIS_PRIZE_ITEM, 3845, 1, 4)
MisPrizeSelAll()

MisResultTalk( "<t>Молодец, ты справился с Заданием, получи свою награду!  ")
MisHelpTalk( "<t>Извини, но ты не справился с Заданием! =(  ")

MisResultCondition(HasMission, 3101)
MisResultCondition(HasItem, 4511, 10)
MisResultAction(TakeItem, 4511, 10)
MisResultAction(ClearMission, 3101)
MisResultAction(SetRecord, 3101)
MisResultAction(AddMoney, 28500, 28500)
MisResultAction(AddExp, 55254, 55254)

InitTrigger()
TriggerCondition( 1, IsItem, 4511)
TriggerAction( 1, AddNextFlag, 3101, 10, 10)
RegCurTrigger( 31011)

-------------Конец квеста

---------3102,  "Чистка Океана Аскарон ", 3102)
DefineMission(  3102,  "Чистка Океана Аскарон ", 3102)

MisBeginTalk(  "<t>В округах Аргента Кальмар-хамелеон травит своим ядом косяки рыб, Убей 15шт и и получишь Небесную ягоду 1шт  " )

MisBeginCondition(NoMission, 3101)
MisBeginCondition(LvCheck, "<", 45)
MisBeginCondition(LvCheck, ">", 35)
MisBeginAction(AddMission, 3102)
MisBeginAction(AddTrigger, 31021, TE_KILL, 610, 15 )
MisCancelAction(ClearMission, 3102)

MisNeed(MIS_NEED_DESP, "Чистка Океана Аскарон ")
MisNeed(MIS_NEED_KILL,  610, 15, 10, 15)

MisPrize(MIS_PRIZE_ITEM, 3844, 1, 4)
MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
MisPrizeSelAll()

MisResultTalk( "<t>Молодец, ты справился с Заданием, получи свою награду!  ")
MisHelpTalk( "<t>Извини, но ты не справился с Заданием! =(  ")

MisResultCondition(HasMission, 3102)
MisResultCondition(HasFlag, 3102, 24 )
MisResultAction(ClearMission, 3102)
MisResultAction(SetRecord, 3102)
MisResultAction(AddMoney, 34000, 34000)
MisResultAction(AddExp, 51300, 51300)

InitTrigger()
TriggerCondition( 1, IsMonster, 610)
TriggerAction( 1, AddNextFlag, 3102, 10, 15)
RegCurTrigger( 31021)

-------------Конец квеста


---------3103,  "Чистка Океана Аскарон ", 3103)
DefineMission(  3103,  "Чистка Океана Аскарон ", 3103)

MisBeginTalk(  "<t>Рыбаки с аргента жалуются что не возмоно окунутся Медузи не дают покая, Убей 30шт и и получишь Супер Усилитель стремлений 1шт  " )

MisBeginCondition(NoMission, 3103)
MisBeginCondition(LvCheck, "<", 45)
MisBeginCondition(LvCheck, ">", 40)
MisBeginAction(AddMission, 3103)
MisBeginAction(AddTrigger, 31031, TE_KILL, 1012, 30 )
MisCancelAction(ClearMission, 3103)

MisNeed(MIS_NEED_DESP, "Чистка Океана Аскарон ")
MisNeed(MIS_NEED_KILL,  1012, 30, 10, 30)
MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
MisPrize(MIS_PRIZE_ITEM, 3095, 1, 4)
MisPrizeSelAll()

MisResultTalk( "<t>Молодец, ты справился с Заданием, получи свою награду!  ")
MisHelpTalk( "<t>Извини, но ты не справился с Заданием! =(  ")

MisResultCondition(HasMission, 3103)
MisResultCondition(HasFlag, 3103, 39 )
MisResultAction(ClearMission, 3103)
MisResultAction(SetRecord, 3103)
MisResultAction(AddMoney, 40000, 40000)
MisResultAction(AddExp, 73350, 73350)

InitTrigger()
TriggerCondition( 1, IsMonster, 1012)
TriggerAction( 1, AddNextFlag, 3103, 10, 30)
RegCurTrigger( 31031)

-------------Конец квеста

---------3104,  "Чистка Океана Аскарон ", 3104)
DefineMission(  3104,  "Чистка Океана Аскарон ", 3104)

MisBeginTalk(  "<t>Сина рыбака Сарно ужалила Ядовитая Медуза, Убей 15шт и  забери у нее ядовитые покрови 10шт для изготовления противоядия и получишь Свиток благославления и Зачарованную ягоду по 1шт  " )

MisBeginCondition(NoMission, 3104)
MisBeginCondition(LvCheck, "<", 60)
MisBeginCondition(LvCheck, ">", 45)
MisBeginAction(AddMission, 3104)
MisBeginAction(AddTrigger, 31041, TE_KILL, 614, 15 )
MisCancelAction(ClearMission, 3104)

MisNeed(MIS_NEED_DESP, "Чистка Океана Аскарон ")
MisNeed(MIS_NEED_KILL,  614, 15, 10, 15)
MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
MisPrize(MIS_PRIZE_ITEM, 3845, 1, 4)
MisPrize(MIS_PRIZE_ITEM, 8529, 1, 4)
MisPrizeSelAll()

MisResultTalk( "<t>Молодец, ты справился с Заданием, получи свою награду!  ")
MisHelpTalk( "<t>Извини, но ты не справился с Заданием! =(  ")

MisResultCondition(HasMission, 3104)
MisResultCondition(HasFlag, 3104, 24 )
MisResultAction(ClearMission, 3104)
MisResultAction(SetRecord, 3104)
MisResultAction(AddMoney, 49000, 49000)
MisResultAction(AddExp, 65050, 65050)

InitTrigger()
TriggerCondition( 1, IsMonster, 614)
TriggerAction( 1, AddNextFlag, 3104, 10, 15)
RegCurTrigger( 31041)

-------------Конец квеста


---------3105,  "Чистка Океана Аскарон ", 3105)
DefineMission(  3105,  "Чистка Океана Аскарон ", 3105)

MisBeginTalk(  "<t>  Спрут потопил торговое судно с едой ступай по координатам (3465/1963 – 4056/2187) и Убей 10шт и  получи 20 Медных Жетонов  " )

MisBeginCondition(NoMission, 3105)
MisBeginCondition(LvCheck, "<", 55)
MisBeginCondition(LvCheck, ">", 45)
MisBeginAction(AddMission, 3105)
MisBeginAction(AddTrigger, 31051, TE_KILL, 592, 10 )
MisCancelAction(ClearMission, 3105)

MisNeed(MIS_NEED_DESP, "Чистка Океана Аскарон ")
MisNeed(MIS_NEED_KILL,  592, 10, 10, 10)
MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
MisPrize(MIS_PRIZE_ITEM, 8141, 20, 4)
MisPrizeSelAll()

MisResultTalk( "<t>Молодец, ты справился с Заданием, получи свою награду!  ")
MisHelpTalk( "<t>Извини, но ты не справился с Заданием! =(  ")

MisResultCondition(HasMission, 3105)
MisResultCondition(HasFlag, 3105, 19 )
MisResultAction(ClearMission, 3105)
MisResultAction(SetRecord, 3105)
MisResultAction(AddMoney, 55000, 55000)
MisResultAction(AddExp, 68400, 68400)

InitTrigger()
TriggerCondition( 1, IsMonster, 592)
TriggerAction( 1, AddNextFlag, 3105, 10, 10)
RegCurTrigger( 31051)

-------------Конец квеста

-------------Убить кротов

DefineMission(  3025,  "\211\225\232\242\252 \234\240\238\242\238\226! ", 3025)

MisBeginTalk(  "<t>\223 \228\238\235\227\238 \241\242\240\224\237\241\242\226\238\226\224\235 \239\238 \236\232\240\243 \232 \241\238\225\232\240\224\235 \241\224\236\238\246\226\229\242\251, \237\238 \237\229\228\224\226\237\238 \234\240\238\242\251-\237\232\237\228\231\255 \239\238\245\232\242\232\235\232 \225\238\235\252\248\243\254 \247\224\241\242\252 \236\238\232\245 \241\238\234\240\238\226\232\249! \194\240\229\236\255 \225\229\231\239\238\249\224\228\237\238, \255 \241\242\224\240,\237\238 \242\251 \236\238\230\229\248\252 \238\242\238\236\241\242\232\242\252 \232\236 \231\224 \236\229\237\255.   " )
--\207\224\240\224\236\229\242\240 "\205\224\235\232\247\232\229 \226\251\239\238\235\237\229\237\237\238\227\238 \234\226\229\241\242\224" \237\229 \231\224\228\224\237
--MisBeginCondition(NoRecord, 3025)
--MisBeginCondition(NoMission, 3025)
--\207\224\240\224\236\229\242\240 "\210\240\229\225\243\229\236\251\233 \211\240\238\226\229\237\252 \239\229\240\241\238\237\224\230\224" \237\229 \231\224\228\224\237
MisBeginAction(AddMission, 3025)
MisBeginAction(AddTrigger, 30251, TE_KILL, 243, 20 )
MisCancelAction(ClearMission, 3025)

MisNeed(MIS_NEED_DESP, "\211\225\232\242\252 \234\240\238\242\238\226! ")
MisNeed(MIS_NEED_KILL,  243, 20, 10, 20)

--

MisResultTalk( "<t>\193\235\224\238\228\224\240\254 \242\229\225\255, \242\229\239\229\240\252 \236\238\255 \228\243\248\224 \241\239\238\234\238\233\237\224  ")
MisHelpTalk( "<t>\204\238\184 \226\240\229\236\255 \237\224 \232\241\245\238\228\229. \207\238\242\238\240\238\239\232\241\252,\247\242\238\225\251 \255 \236\238\227 \228\238\230\232\226\224\242\252 \241\226\238\232 \227\238\228\251 \241\239\238\234\238\233\237\238  ")

MisResultCondition(HasMission, 3025)
MisResultCondition(HasFlag, 3025, 29 )
MisResultAction(ClearMission, 3025)
MisResultAction(SetRecord, 3025)
MisResultAction(AddMoney, 55000, 55000)
MisResultAction(AddExp, 7500, 7500)

InitTrigger()
TriggerCondition( 1, IsMonster, 243)
TriggerAction( 1, AddNextFlag, 3025, 10, 20)
RegCurTrigger( 30251)

-------------\202\238\237\229\246 \234\226\229\241\242\224


---------3024,  "Рецепт кекса ", 3024)
DefineMission(  3024,  "\208\229\246\229\239\242 \234\229\234\241\224 ", 3024)

MisBeginTalk(  "<t>\223 \245\238\247\243 \243\231\237\224\242\252 \237\238\226\251\229 \240\229\246\229\239\242\251, \228\235\255 \253\242\238\227\238 \236\237\229 \237\243\230\237\238 \239\240\238\225\238\226\224\242\252 \237\238\226\251\229 \225\235\254\228\224. \209\229\233\247\224\241 \241\242\224\235 \239\238\239\243\235\255\240\229\237 \227\240\255\231\237\251\233 \235\232\239\234\232\233 \234\229\234\241. \196\238\241\242\224\237\252 \236\237\229 \229\227\238, \247\242\238\225\251 \255 \237\224\243\247\232\235\224\241\252 \227\238\242\238\226\232\242\252 \242\224\234\238\233 \230\229  " )
--\207\224\240\224\236\229\242\240 "\205\224\235\232\247\232\229 \226\251\239\238\235\237\229\237\237\238\227\238 \234\226\229\241\242\224" \237\229 \231\224\228\224\237
--MisBeginCondition(NoRecord, 3024)
MisBeginCondition(NoMission, 3024)
--\207\224\240\224\236\229\242\240 "\210\240\229\225\243\229\236\251\233 \211\240\238\226\229\237\252 \239\229\240\241\238\237\224\230\224" \237\229 \231\224\228\224\237
MisBeginAction(AddMission, 3024)
MisBeginAction(AddTrigger, 30241, TE_GETITEM, 4363, 1 )
MisCancelAction(ClearMission, 3024)

MisNeed(MIS_NEED_DESP, "\208\229\246\229\239\242 \234\229\234\241\224 ")
MisNeed(MIS_NEED_ITEM,  4363, 1, 10, 1)

--

MisResultTalk( "<t>\204\236\236,\226\234\243\241\237\255\242\232\237\224! \199\224\245\238\228\232, \243\227\238\249\243!  ")
MisHelpTalk( "<t>\210\251 \226\241\184 \229\249\229 \237\229 \228\238\241\242\224\235 \236\237\229 \234\229\234\241? \192\245, \238\237 \237\224\225\232\240\224\229\242 \225\238\235\252\248\243\254 \239\238\239\243\235\255\240\237\238\241\242\252, \236\237\229 \241\240\238\247\237\238 \237\243\230\229\237 \240\229\246\229\239\242!  ")

MisResultCondition(HasMission, 3024)
MisResultCondition(HasItem, 4363, 1)
MisResultAction(TakeItem, 4363, 1)
MisResultAction(ClearMission, 3024)
MisResultAction(SetRecord, 3024)
MisResultAction(AddMoney, 35000, 35000)
MisResultAction(AddExp, 7000, 7000)

InitTrigger()
TriggerCondition( 1, IsItem, 4363)
TriggerAction( 1, AddNextFlag, 3024, 10, 1)
RegCurTrigger( 30241)

-------------\202\238\237\229\246 \234\226\229\241\242\224

---------3021,  "\202\238\235\252\247\243\227\224 \232\231 \247\229\248\243\232 ", 3021)
DefineMission(  3021,  "\202\238\235\252\247\243\227\224 \232\231 \247\229\248\243\232 ", 3021)

MisBeginTalk(  "<t>\204\237\229 \237\243\230\237\224 \242\226\238\255 \239\238\236\238\249\252! \223 \228\238\235\230\237\224 \241\240\238\247\237\238 \231\224\234\238\237\247\232\242\252 \236\238\240\241\234\243\254 \234\238\235\252\247\243\227\243, \237\238 \243 \236\229\237\255, \234\224\234 \237\224\231\235\238, \231\224\234\238\237\247\232\235\224\241\252 \247\229\248\243\255! \196\238\225\243\228\252 \228\235\255 \236\229\237\255 \247\229\248\243\254 \243\230\224\241\237\238\233 \240\251\225\251 \232 \247\229\240\237\243\254 \247\229\248\243\254, \247\242\238\225\251 \255 \241\236\238\227\235\224 \231\224\234\238\237\247\232\242\252 \240\224\225\238\242\243 \226 \241\240\238\234  " )
--\207\224\240\224\236\229\242\240 "\205\224\235\232\247\232\229 \226\251\239\238\235\237\229\237\237\238\227\238 \234\226\229\241\242\224" \237\229 \231\224\228\224\237
--MisBeginCondition(NoRecord, 3021)
MisBeginCondition(NoMission, 3021)
--\207\224\240\224\236\229\242\240 "\210\240\229\225\243\229\236\251\233 \211\240\238\226\229\237\252 \239\229\240\241\238\237\224\230\224" \237\229 \231\224\228\224\237
MisBeginAction(AddMission, 3021)
MisBeginAction(AddTrigger, 30211, TE_GETITEM, 4950, 10 )
MisBeginAction(AddTrigger, 30212, TE_GETITEM, 4987, 10 )
MisCancelAction(ClearMission, 3021)

MisNeed(MIS_NEED_DESP, "\202\238\235\252\247\243\227\224 \232\231 \247\229\248\243\232 ")
MisNeed(MIS_NEED_ITEM,  4950, 10, 10, 10)
MisNeed(MIS_NEED_ITEM, 4987, 10, 20, 10)

MisResultTalk( "<t>\209\239\224\241\232\225\238 \225\238\235\252\248\238\229! \193\235\224\227\238\228\224\240\255 \242\229\225\229 \255 \241\236\238\227\243 \231\224\234\238\237\247\232\242\252 \226\241\184 \226\238-\226\240\229\236\255  ")
MisHelpTalk( "<t>\210\251 \243\230\229 \239\240\232\237\229\241 \236\237\229 \247\229\248\243\254? \207\238\242\238\240\238\239\232\242\252,\226\240\229\236\255 \232\228\184\242 \225\251\241\242\240\238!  ")

MisResultCondition(HasMission, 3021)
MisResultCondition(HasItem, 4950, 10)
MisResultAction(TakeItem, 4950, 10)
MisResultCondition(HasItem, 4987, 10)
MisResultAction(TakeItem, 4987, 10)
MisResultCondition(HasFlag, 3021, 29 )
MisResultAction(ClearMission, 3021)
MisResultAction(SetRecord, 3021)
MisResultAction(AddMoney, 25000, 25000)
MisResultAction(AddExp, 35000, 35000)

InitTrigger()
TriggerCondition( 1, IsItem, 4950)
TriggerAction( 1, AddNextFlag, 3021, 10, 10)
RegCurTrigger( 30211)

InitTrigger()
TriggerCondition( 1, IsItem, 4987)
TriggerAction( 1, AddNextFlag, 3021, 20, 10)
RegCurTrigger( 30212)

-------------\202\238\237\229\246 \234\226\229\241\242\224

------------3026, Борьба с кровавой медузой
---------3026,  "\193\238\240\252\225\224 \241 \234\240\238\226\224\226\238\233 \236\229\228\243\231\238\233 ", 3026)
DefineMission(  3026,  "\193\238\240\252\225\224 \241 \234\240\238\226\224\226\238\233 \236\229\228\243\231\238\233 ", 3026)

MisBeginTalk(  "<t>\210\251 \231\237\224\229\248\252, \247\242\238 \232\231 \249\243\239\224\235\229\246 \234\240\238\226\224\226\251\245 \236\229\228\243\231 \239\238\235\243\247\224\254\242\241\255 \238\242\235\232\247\237\251\229 \226\229\240\229\226\234\232? \204\237\229 \237\243\230\237\238 \232\231\227\238\242\238\226\232\242\252 \239\224\240\238\247\234\243 \242\224\234\232\245.\207\238\236\238\230\229\248\252 \236\237\229 \228\238\225\251\242\252 \237\229\241\234\238\235\252\234\238 \249\243\239\224\235\229\246 ?  " )
--\207\224\240\224\236\229\242\240 "\205\224\235\232\247\232\229 \226\251\239\238\235\237\229\237\237\238\227\238 \234\226\229\241\242\224" \237\229 \231\224\228\224\237

MisBeginCondition(NoMission, 3026)
--\207\224\240\224\236\229\242\240 "\210\240\229\225\243\229\236\251\233 \211\240\238\226\229\237\252 \239\229\240\241\238\237\224\230\224" \237\229 \231\224\228\224\237
MisBeginAction(AddMission, 3026)
MisBeginAction(AddTrigger, 30261, TE_GETITEM, 1213, 7 )
MisCancelAction(ClearMission, 3026)

MisNeed(MIS_NEED_DESP, "\193\238\240\252\225\224 \241 \234\240\238\226\224\226\238\233 \236\229\228\243\231\238\233 ")
MisNeed(MIS_NEED_ITEM,  1213, 7, 10, 7)

--

MisResultTalk( "<t>\209\239\224\241\232\225\238! \200\231 \253\242\238\227\238 \239\238\235\243\247\224\242\241\255 \238\242\235\232\247\237\251\229 \226\229\240\229\226\234\232!  ")
MisHelpTalk( "<t>\221\245,\241\235\232\248\234\238\236 \236\224\235\238 \249\243\239\224\235\229\246 \228\235\255 \226\229\240\229\226\234\232  ")

MisResultCondition(HasMission, 3026)
MisResultCondition(HasItem, 1213, 7)
MisResultAction(TakeItem, 1213, 7)
MisResultAction(ClearMission, 3026)
MisResultAction(SetRecord, 3026)
MisResultAction(AddMoney, 65000, 65000)
MisResultAction(AddExp, 8000, 8000)

InitTrigger()
TriggerCondition( 1, IsItem, 1213)
TriggerAction( 1, AddNextFlag, 3026, 10, 7)
RegCurTrigger( 30261)

-------------\202\238\237\229\246 \234\226\229\241\242\224

--Месть русалке
---------3023,  "\204\229\241\242\252 \208\243\241\224\235\234\229 ", 3023)
DefineMission(  3023,  "\204\229\241\242\252 \208\243\241\224\235\234\229 ", 3023)

MisBeginTalk(  "<t>\199\237\224\229\248\252 \208\243\241\224\235\234\243-\239\240\232\231\240\224\234\224? \206\237\224 \243\234\240\224\235\224 \243 \236\229\237\255 \236\243\230\224! \206\234\238\235\228\238\226\224\235\224 \229\227\238 \232 \239\240\238\241\242\238 \231\224\225\240\224\235\224 \243 \236\229\237\255! \192\245, \242\238\235\252\234\238 \225\251 \255 \236\238\227\235\224 \229\233 \238\242\238\236\241\242\232\242\252...\205\238 \255 \242\224\234 \241\235\224\225\224, \236\238\230\229\242 \225\251\242\252, \242\251 \241\236\238\230\229\248\252 \239\238\236\238\247\252 \236\237\229?  " )
--\207\224\240\224\236\229\242\240 "\205\224\235\232\247\232\229 \226\251\239\238\235\237\229\237\237\238\227\238 \234\226\229\241\242\224" \237\229 \231\224\228\224\237

MisBeginCondition(NoMission, 3023)
--\207\224\240\224\236\229\242\240 "\210\240\229\225\243\229\236\251\233 \211\240\238\226\229\237\252 \239\229\240\241\238\237\224\230\224" \237\229 \231\224\228\224\237
MisBeginAction(AddMission, 3023)
MisBeginAction(AddTrigger, 30231, TE_KILL, 620, 1 )
MisCancelAction(ClearMission, 3023)

MisNeed(MIS_NEED_DESP, "\204\229\241\242\252 \208\243\241\224\235\234\229 ")
MisNeed(MIS_NEED_KILL,  620, 1, 10, 1)

--

MisResultTalk( "<t>\205\224\234\238\237\229\246-\242\238 \238\237\224 \238\249\243\242\232\235\224 \242\243 \230\229 \225\238\235\252,\247\242\238 \232 \255!  ")
MisHelpTalk( "<t>\192\245, \236\238\184 \241\229\240\228\246\229 \226\241\184 \229\249\229 \225\238\235\232\242! \207\238\234\224 \208\243\241\224\235\234\224 \230\232\226\224,\255 \237\229 \241\236\238\227\243 \230\232\242\252 \241\239\238\234\238\233\237\238!  ")

MisResultCondition(HasMission, 3023)
MisResultCondition(HasFlag, 3023, 10 )
MisResultAction(ClearMission, 3023)
MisResultAction(SetRecord, 3023)
MisResultAction(AddMoney, 75000, 75000)
MisResultAction(AddExp, 10000, 10000)

InitTrigger()
TriggerCondition( 1, IsMonster, 620)
TriggerAction( 1, AddNextFlag, 3023, 10, 1)
RegCurTrigger( 30231)

---------3020,  "Сломанный сейф", 3020)
DefineMission(  3020,  "\209\235\238\236\224\237\237\251\233 \241\229\233\244 ", 3020)

MisBeginTalk(  "<t>\211 \236\229\237\255 \234 \242\229\225\229 \239\240\238\241\252\225\224 - \237\224\228\238 \239\238\247\232\237\232\242\252 \241\229\233\244, \255 \241\235\243\247\224\233\237\238 \241\235\238\236\224\235\224 \231\224\236\238\234. \205\224\247\224\235\252\237\232\234 \236\229\237\255 \243\225\252\229\242 \229\241\235\232 \243\231\237\224\229\242. \204\224\235\251\248 \196\224\237\232\253\235\252 \227\238\226\238\240\232\235 \236\237\229 \247\242\238 \239\238\245\238\230\232\229 \236\229\245\224\237\232\231\236\251 \236\238\230\237\238 \241\228\229\235\224\242\252 \232\231 \228\229\242\224\235\229\233 \240\238\225\238\242\224.  " )
--\207\224\240\224\236\229\242\240 "\205\224\235\232\247\232\229 \226\251\239\238\235\237\229\237\237\238\227\238 \234\226\229\241\242\224" \237\229 \231\224\228\224\237
--\193\229\241\234\238\237\229\247\237\251\233 \240\229\230\232\236 \234\226\229\241\242\224
MisBeginCondition(LvCheck, ">", 20)
MisBeginAction(AddMission, 3020)
MisBeginAction(AddTrigger, 30201, TE_GETITEM, 3933, 10 )
MisCancelAction(ClearMission, 3020)

MisNeed(MIS_NEED_DESP, "\209\235\238\236\224\237\237\251\233 \241\229\233\244 ")
MisNeed(MIS_NEED_ITEM,  3933, 10, 10, 10)

--

MisResultTalk( "<t>\206\233, \209\239\224\241\232\225\238 \242\251 \236\237\229 \238\247\229\237\252 \239\238\236\238\227, \229\241\235\232 \225\251 \237\224\247\224\235\252\237\232\234 \243\231\237\224\235, \238\237 \225\251 \236\229\237\255 \243\226\238\235\232\235  ")
MisHelpTalk( "<t>\210\251 \229\249\229 \237\229 \237\224\248\229\235? \210\238\240\238\239\232\241\252, \224 \242\238 \236\229\237\255 \236\238\227\243\242 \243\226\238\235\232\242\252  ")

MisResultCondition(HasMission, 3020)
MisResultCondition(HasItem, 3933, 10)
MisResultAction(TakeItem, 3933, 10)
MisResultAction(ClearMission, 3020)
MisResultAction(SetRecord, 3020)
MisResultAction(AddMoney, 4000, 4000)
MisResultAction(AddExp, 5000, 5000)

InitTrigger()
TriggerCondition( 1, IsItem, 3933)
TriggerAction( 1, AddNextFlag, 3020, 10, 10)
RegCurTrigger( 30201)

