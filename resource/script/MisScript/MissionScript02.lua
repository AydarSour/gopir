--------------------------------------------------------------------------
--									--
--									--
--missionscript02.lua Created by Robin 2005.03.31.			--
--									--
--									--
--------------------------------------------------------------------------
print( "‡ Јаг§Є  missionscript02.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

----------------------------------------------------------
--							--
--							--
--		АъК·ИООс	 				--
--							--
--		227725,276925				--
----------------------------------------------------------
	-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>АъК·ИООсїЄКј
function HistoryMission001()

----------------------------КЧПЇГШКйµДїЪРЕ
	DefineMission( 200, "Сообщение секретаря", 200 )
	
	MisBeginTalk( "<t>Добрый день. Я думаю что тебе пора отнести письмо секретарю Аргента, <bСальвьеру>. Удачи и не опаздывай!" )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 200)
	MisCancelAction(ClearMission, 200)
		
	MisNeed(MIS_NEED_DESP, "Секретарь находится в Аргенте по координатам  (2219, 2749)")
	
	MisHelpTalk("<t>Почему вы не встретились с секретарем Аргента? Пожалуйста поторопитесь.")
	MisResultCondition(AlwaysFailure )

	



----------------------------КЧПЇГШКйµДїЪРЕ
	DefineMission( 201, "Сообщение секретаря", 201 )
	
	MisBeginTalk( "<t>Добрый день. Я думаю что тебе пора отнести письмо секретарю Аргента, <bСальвьеру>. Удачи и не опаздывай!" )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 201)
	MisCancelAction(ClearMission, 201)
		
	MisNeed(MIS_NEED_DESP, "Секретарь находится в Аргенте по координатам  (2219, 2749)")
	
	MisHelpTalk("<t>Почему вы не встретились с секретарем Аргента? Пожалуйста поторопитесь.")
	MisResultCondition(AlwaysFailure )


----------------------------КЧПЇГШКйµДїЪРЕ
	DefineMission( 202, "Сообщение секретаря", 202 )
	
	MisBeginTalk( "<t>Добрый день. Я думаю что тебе пора отнести письмо секретарю Аргента, <bСальвьеру>. Удачи и не опаздывай!" )
	MisBeginCondition(NoRecord, 200)
	MisBeginCondition(NoMission, 200)
	MisBeginCondition(NoMission, 201)
	MisBeginCondition(NoMission, 202)
	MisBeginCondition(LvCheck, ">",9)
	MisBeginAction(AddMission, 202)
	MisCancelAction(ClearMission, 202)
		
	MisNeed(MIS_NEED_DESP, "Секретарь находится в Аргенте по координатам  (2219, 2749)")
	
	MisHelpTalk("<t>Почему вы не встретились с секретарем Аргента? Пожалуйста поторопитесь.")
	MisResultCondition(AlwaysFailure )


-----------------------------------КЧПЇГШКйµДїЪРЕ
	DefineMission( 203, "Сообщение секретаря", 200, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Добро пожаловать, я рад встрече с Вами. Ваша репутация распространилась так далеко что я с радостью приму вас.")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 200)
	MisResultAction(ClearMission, 200 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,500,00)
	MisResultAction(AddMoney,1399,1399)
	MisResultAction(AddExpAndType,2,875,875)



-----------------------------------КЧПЇГШКйµДїЪРЕ
	DefineMission( 204, "Сообщение секретаря", 201, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Добро пожаловать, я рад встрече с Вами. Ваша репутация распространилась так далеко что я с радостью приму вас.")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 201)
	MisResultAction(ClearMission, 201 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,500,00)
	MisResultAction(AddMoney,1399,1399)
	MisResultAction(AddExpAndType,2,875,875)


-----------------------------------КЧПЇГШКйµДїЪРЕ
	DefineMission( 205, "Сообщение секретаря", 202, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Добро пожаловать, я рад встрече с Вами. Ваша репутация распространилась так далеко что я с радостью приму вас.")
	MisResultCondition(NoRecord, 200)
	MisResultCondition(HasMission, 202)
	MisResultAction(ClearMission, 202 )
	MisResultAction(SetRecord, 200 )
	MisResultAction(AddExp,500,00)
	MisResultAction(AddMoney,1399,1399)
	MisResultAction(AddExpAndType,2,875,875)


----------------------------РЎРЎµДїјСй
	DefineMission( 206, "Пустяковая задача", 203 )
	
	MisBeginTalk( "<t>Я хотел бы просить вас провести расследование некоторых странных событий в Пастушьих равнинах. <n> <t> Однако до того как дать вам это задание,я вынужден испытать вас<n> <t> Сходите в <pПристане Аргента> по координатам (2277, 2831 ) и найдите там <bГенерала-Увильяма>. Он даст вам небольшую задачу." )
	MisBeginCondition(NoRecord, 203)
	MisBeginCondition(NoMission, 203)
	MisBeginCondition(HasRecord, 200)
	MisBeginAction(AddMission, 203)
	MisCancelAction(ClearMission, 203)
		
	MisNeed(MIS_NEED_DESP, "Найти <bГенерал - Вильям> на <pПристани аргента> по координатам  (2277, 2831)")
	
	MisHelpTalk("Какие еще вопросы? Если их нету, то пожалуйста, найдите <bГенерал Увильям> он назначит вам задание.")
	MisResultCondition(AlwaysFailure )

-----------------------------------РЎРЎµДїјСй
	DefineMission( 207, "Пустяковая задача", 203, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("Ах, Силвер очень странный парень, посылает нам неизвестно кого. Доверяет ли он флоту? <n> <t> Возвращайся когда будешь готов. У меня есть задание для вас")
	MisResultCondition(NoRecord, 203)
	MisResultCondition(HasMission, 203)
	MisResultAction(ClearMission, 203 )
	MisResultAction(SetRecord, 203 )
	MisResultAction(AddExp,430,430)
	MisResultAction(AddMoney,1400,1400)
	MisResultAction(AddExpAndType,2,875,875)



-------------------------------------------------єЈѕьµД»пКіЕдБП
	DefineMission( 208, "Провиант для флота", 204 )

	MisBeginTalk( "<t>Я думаю вы способны выполнить эти задания.Принесите мне некоторые предметы. <n> <t> Мне нужно 5 <yМясо пузырчатого моллюска>, 10 <yМясо улитки> и 10 <yЭльфийский фрукт>" )
	MisBeginCondition(NoRecord, 204)
	MisBeginCondition(HasRecord, 203)
	MisBeginCondition(NoMission, 204)
	MisBeginAction(AddMission, 204)
	MisBeginAction(AddTrigger, 2041, TE_GETITEM, 3963, 5 )		--ЙдЛ®±ґИв
	MisBeginAction(AddTrigger, 2042, TE_GETITEM, 3964, 10 )		--єЈВЭИв
	MisBeginAction(AddTrigger, 2043, TE_GETITEM, 3116, 10 )
	MisCancelAction(ClearMission, 204)

	MisNeed(MIS_NEED_ITEM, 3963, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3964, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3116, 10, 30, 10)

	MisResultTalk("<t>Даже если вы выполнили это задание, до наших стандартов вам далеко.")
	MisHelpTalk("<t>Такая простая задача, и вы не можете справиться? <n> <t> Помните! Я требую от вас  5 <yМяса пузырчатого моллюска>, 10 <yМяса морской улитки> и 10 <yЭльфийские фруктов>.")
	MisResultCondition(HasMission, 204)
	MisResultCondition(HasItem, 3963, 5 )
	MisResultCondition(HasItem, 3964, 10 )
	MisResultCondition(HasItem, 3116, 10 )
	MisResultAction(TakeItem, 3963, 5 )
	MisResultAction(TakeItem, 3964, 10 )
	MisResultAction(TakeItem, 3116, 10 )
	MisResultAction(ClearMission, 204)
	MisResultAction(SetRecord, 204 )
	MisResultAction(AddExp,430,430)
	MisResultAction(AddMoney,1400,1400)	
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3963)	
	TriggerAction( 1, AddNextFlag, 204, 10, 5 )
	RegCurTrigger( 2041 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3964)	
	TriggerAction( 1, AddNextFlag, 204, 20, 10 )
	RegCurTrigger( 2042 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3116)	
	TriggerAction( 1, AddNextFlag, 204, 30, 10 )
	RegCurTrigger( 2043 )

----------------------------ЧЯК§µДМЖµВ
	DefineMission( 209, "Пропавший Томми", 205 )
	
	MisBeginTalk( "<t>Поскольку вы  здесь, почему бы вам не помоч найти пропавшего ребенка. Его зовут <bТомми>. В последний раз его видили недалеко от  <pПастушьих равнин>. Верните его домой благополучно!" )
	MisBeginCondition(NoRecord, 205)
	MisBeginCondition(HasRecord, 204)
	MisBeginCondition(NoMission, 205)
	MisBeginAction(AddMission, 205)
	MisCancelAction(ClearMission, 205)
		
	MisNeed(MIS_NEED_DESP, "Найти Томми по координатам (1962, 2694)")
	
	MisHelpTalk("<t>Несколько людей видели <bТомми> недалеко от <pСеребряных Шахт>. Поищи там.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЧЯК§µДМЖµВ
	DefineMission( 210, "Пропавший Томми", 205, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Вы искали  меня? Я пришел сюда, чтобы посмотреть на бешеных овец.")
	MisResultCondition(NoRecord, 205)
	MisResultCondition(HasMission, 205)
	MisResultAction(ClearMission, 205 )
	MisResultAction(SetRecord, 205 )
	MisResultAction(AddExp,430,430)
	MisResultAction(AddMoney,1100,1100)
	MisResultAction(AddExpAndType,2,875,875)


----------------------------ПтЙЩЅ«»Ш±Ё
	DefineMission( 211, "Рассказать Томми", 206 )
	
	MisBeginTalk( "<t>Я удивлен тем, что генерал ищет меня. Я хотел бы поблагодарить его за заботу. Принеси ему это письмо, в доказательство того что я в безопасости. Я собираюсь остаться здесь еще на некоторое время." )
	MisBeginCondition(NoRecord, 206)
	MisBeginCondition(HasRecord, 205)
	MisBeginCondition(NoMission, 206)
	MisBeginAction(AddMission, 206)
	MisBeginAction(GiveItem, 3965, 1, 4)		--МЖµВµДРЕ
	MisCancelAction(ClearMission, 206)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Отнеси письмо генералу Уильяму по координатам (2277, 2831)")
	
	MisHelpTalk("<t>Что-нибудь еще? Я скоро вернусь, обещаю.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ПтЙЩЅ«»Ш±Ё
	DefineMission( 212, "Рассказать Томми", 206, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ооо, с Томми все впорядке? Спасибо.")
	MisResultCondition(NoRecord, 206)
	MisResultCondition(HasMission, 206)
	MisResultCondition(HasItem, 3965, 1)		--МЖµВµДРЕ
	MisResultAction(TakeItem, 3965, 1 ) 
	MisResultAction(ClearMission, 206 )
	MisResultAction(SetRecord, 206 )
	MisResultAction(AddExp,430,430)
	MisResultAction(AddMoney,1100,1100)	
	MisResultAction(AddExpAndType,2,875,875)


-------------------------------------------------И«МеКіОпЦР¶ѕ
	DefineMission( 213, "Отравление еды", 207 )

	MisBeginTalk( "<t>Кхе-кхе. Извени похоже еда была отравлена. Отнеси пожалуйста <yЛанч> врачу в аргенте <bДито> и попроси разобраться!" )
	MisBeginCondition(NoRecord, 207)
	MisBeginCondition(HasRecord, 206)
	MisBeginCondition(NoMission, 207)
	MisBeginAction(AddMission, 207)
	MisBeginAction(GiveItem, 3966, 1, 4)			--ОзІНСщ±ѕ
	MisBeginAction(AddTrigger, 2071, TE_GETITEM, 3967, 1 )		--ЙдЛ®±ґИв
	MisCancelAction(ClearMission, 207)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_ITEM, 3967, 1, 10, 1)

	MisResultTalk("<t>Ты не плохой человек. Спасибо.")
	MisHelpTalk("Противоядие, прошу вас поспешите. Умираю.")
	MisResultCondition(HasMission, 207)
	MisResultCondition(HasItem, 3967, 1 )
	MisResultAction(TakeItem, 3967, 1 )
	MisResultAction(ClearMission, 207)
	MisResultAction(SetRecord, 207 )
	MisResultAction(AddExp,500,00)
	MisResultAction(AddMoney,1200,1200)
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3967)	
	TriggerAction( 1, AddNextFlag, 207, 10, 1 )
	RegCurTrigger( 2071 )

-----------------------------------И«МеКіОпЦР¶ѕ
	DefineMission( 214, "Отравление еды", 207, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Отравление?! <n> <t> Позвольте мне посмотреть на еду? Хм,выглядит вкусно, не так ли?")
	MisResultCondition(NoRecord, 207)
	MisResultCondition(NoFlag, 207, 1 )
	MisResultCondition(HasMission, 207)
	MisResultCondition(HasItem, 3966, 1)		--МЖµВµДРЕ
	MisResultAction(TakeItem, 3966, 1 ) 
	MisResultAction(SetFlag, 207, 1 )
	
-------------------------------------------------ЅвТ©Ф­БП
	DefineMission( 215, "Поиск противоядия", 208 )

	MisBeginTalk( "<t>Я рассмотрел еду, проблема в том что Мясо пузырчатого моллюска было заражено. Мне потребуется несколько  ингредиентов для противаюдия. <n> <t> 3 <yКашемир>, 3 <yХвост свинокрыла> и 3 <yТяжелый панцирь>. Не могли бы вы помочь в их поисках?" )
	MisBeginCondition(NoRecord, 208)
	MisBeginCondition(HasMission, 207)
	MisBeginCondition(NoMission, 208)
	MisBeginCondition(HasFlag, 207, 1)
	MisBeginAction(AddMission, 208)
	MisBeginAction(AddTrigger, 2081, TE_GETITEM, 1678, 3 )		--СтИЮ
	MisBeginAction(AddTrigger, 2082, TE_GETITEM, 3968, 3 )		--РЎЦнОІ°Н
	MisBeginAction(AddTrigger, 2083, TE_GETITEM, 1614, 3 )		--јбУІµДїЗ
	MisCancelAction(ClearMission, 208)

	MisNeed(MIS_NEED_ITEM, 1678, 3, 10, 3)
	MisNeed(MIS_NEED_ITEM, 3968, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 1614, 3, 30, 3)
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrize(MIS_PRIZE_ITEM, 3967, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>Великолепно! Пожалуйста, дай мне время для приготовления  противоядия. <n> <t> Получилось! Отнеси это Генералу.")
	MisHelpTalk("<t>Мне надо 3 <yКашемир>, 3 <yХвост свинокрыла> и 3 <yТяжелый панцирь>. Ты разыскал все?")
	MisResultCondition(HasMission, 208)
	MisResultCondition(HasItem, 1678, 3 )
	MisResultCondition(HasItem, 3968, 3 )
	MisResultCondition(HasItem, 1614, 3 )
	MisResultAction(TakeItem, 1678, 3 )
	MisResultAction(TakeItem, 3968, 3 )
	MisResultAction(TakeItem, 1614, 3 )
	MisResultAction(ClearMission, 208)
	MisResultAction(SetRecord, 208 )
	MisResultAction(AddExp,500,500)
	MisResultAction(AddMoney,1200,1200)
	MisResultAction(AddExpAndType,2,875,875)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 1678)	
	TriggerAction( 1, AddNextFlag, 208, 10, 3 )
	RegCurTrigger( 2081 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3968)	
	TriggerAction( 1, AddNextFlag, 208, 20, 3 )
	RegCurTrigger( 2082 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1614)	
	TriggerAction( 1, AddNextFlag, 208, 30, 3 )
	RegCurTrigger( 2083 )

----------------------------МЖµВµДОЇНР
	DefineMission( 216, "Просьба Томми", 209 )
	
	MisBeginTalk( "<t>В письме Томи написал что овцы выходят из под контроля намного чаще,чем раньше.Мы назвали это Мутацией <n> <T> Я предлагаю вам поговорить с Дито(2250, 2770) для получения более подробной информации." )
	MisBeginCondition(NoRecord, 209)
	MisBeginCondition(HasRecord, 207)
	MisBeginCondition(NoMission, 209)
	MisBeginAction(AddMission, 209)
	MisCancelAction(ClearMission, 209)
		
	MisNeed(MIS_NEED_DESP, "Спросите Дитто по координатам  (2250, 2770) о Слюне бешенной овцы.")
	
	MisHelpTalk("<t>Ты поговорил с  Дитто о болезне Фералл?")
	MisResultCondition(AlwaysFailure )

-----------------------------------МЖµВµДОЇНР
	DefineMission( 217, "Просьба Томми", 209, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Возможно это просто одна из биологических мутаций, которые происходят вокруг нас. Может это эволюция? Мне нужно уделить чуть больше внимания этой проблеме.")
	MisResultCondition(NoRecord, 209)
	MisResultCondition(HasMission, 209)
	MisResultAction(ClearMission, 209 )
	MisResultAction(SetRecord, 209 )
	MisResultAction(AddExp,380,380)
	MisResultAction(AddMoney,2300,2300)
	MisResultAction(AddExpAndType,2,875,875)


-------------------------------------------------·иїсµДФ­Тт
	DefineMission( 218, "Причина сумасшествия", 210 )

	MisBeginTalk( "<t>Хорошо, после некоторых исследований, мы должны проверить <Слюну овцы>. <n> <t> Принеси мне 5 флаконов <Слюна бешеной овцы>. Найти их можно по координатам (1968, 2697)." )
	MisBeginCondition(NoRecord, 210)
	MisBeginCondition(HasRecord, 209)
	MisBeginCondition(NoMission, 210)
	MisBeginAction(AddMission, 210)
	MisBeginAction(AddTrigger, 2101, TE_GETITEM, 3969, 5 )		--ІР±©ЙЅСтµДїЪЛ®
	MisCancelAction(ClearMission, 210)

	MisNeed(MIS_NEED_ITEM, 3969, 5, 10, 5)

	MisResultTalk("<t>Слюна поможет для выяснения причины мутации. Я проведу побольше исследований по ней, и узнаю как обстоит дело.")
	MisHelpTalk("<t>Что такое? Почему Вы до сих пор не принесли 5 флаконов <yСлюны>?")
	MisResultCondition(HasMission, 210)
	MisResultCondition(HasItem, 3969, 5 )
	MisResultAction(TakeItem, 3969, 5 )
	MisResultAction(ClearMission, 210)
	MisResultAction(SetRecord, 210 )
	MisResultAction(AddExp,500,5000)
	MisResultAction(AddMoney,2300,2300)
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3969)	
	TriggerAction( 1, AddNextFlag, 210, 10, 5 )
	RegCurTrigger( 2101 )

-------------------------------------------------ЙоИлµчІй
	DefineMission( 219, "Тщательное исследование", 211 )

	MisBeginTalk( "<t>После ряда исследований, есть странность в том, что овцы питались только травой. <n> <t> Я не буду абсолютно уверен, пока вы не принесете мне <rЖемчужину короля маллюсков>. Он находится на севере <pАргента> по координатам (2048, 2514). <n> <t> Спешите!" )
	MisBeginCondition(NoRecord, 211)
	MisBeginCondition(HasRecord, 210)
	MisBeginCondition(NoMission, 211)
	MisBeginAction(AddMission, 211)
	MisBeginAction(AddTrigger, 2111, TE_GETITEM, 3970, 1 )		--ІР±©ЙЅСтµДїЪЛ®
	MisCancelAction(ClearMission, 211)

	MisNeed(MIS_NEED_ITEM, 3970, 1, 10, 1)

	MisResultTalk("<t> Хорошая работа! Вы получили <yЖемчужину короля моллюсков>. Она определенно лучше других жемчужин, теперь я могу более тщательнее изучить проблему!")
	MisHelpTalk("<t>Где жемчужина? Боитесь <rКороля моллюсков>? Возьми с собой несколько друзей.")
	MisResultCondition(HasMission, 211)
	MisResultCondition(HasItem, 3970, 1 )
	MisResultAction(TakeItem, 3970, 1 )
	MisResultAction(ClearMission, 211)
	MisResultAction(SetRecord, 211 )
	MisResultAction(AddExp,1800,1800)
	MisResultAction(AddMoney,7000,7000)	
	MisResultAction(AddExpAndType,2,875,875)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3970)	
	TriggerAction( 1, AddNextFlag, 211, 10, 1 )
	RegCurTrigger( 2111 )

----------------------------µЫД·µД±ЁёжКй
	DefineMission( 220, "Доклад Дито", 212 )
	
	MisBeginTalk( "<t>Это расследование продлится еще некоторое время, я написал предварительный <yОтчет>. <n> <t> Пожалуйста доставь его <bСальвьеру> по координатам (2219, 2749)" )
	MisBeginCondition(NoRecord, 212)
	MisBeginCondition(HasRecord, 211)
	MisBeginCondition(NoMission, 212)
	MisBeginAction(AddMission, 212)
	MisBeginAction(GiveItem, 3971, 1, 4)
	MisCancelAction(ClearMission, 212)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Доставь отчет Секретарю Аргента (2219, 2749)")
	
	MisHelpTalk("<t>Что не так? Ступайте!")
	MisResultCondition(AlwaysFailure )

-----------------------------------µЫД·µД±ЁёжКй
	DefineMission( 221, "Доклад Дито", 212, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>В отчете врача Дито я прочитал о Ваших успехах. Я рад за Вас.")
	MisResultCondition(NoRecord, 212)
	MisResultCondition(HasMission, 212)
	MisResultCondition(HasItem, 3971, 1)
	MisResultAction(TakeItem, 3971, 1 )
	MisResultAction(ClearMission, 212 )
	MisResultAction(SetRecord, 212 )
	MisResultAction(AddExp,550,550)
	MisResultAction(AddMoney,3500,3500)
	MisResultAction(AddExpAndType,2,3400,3400)


----------------------------РВИООс
	DefineMission( 222, "Новое задание", 213 )
	
	MisBeginTalk( "<t>Говорят, что недалеко от <pСеребряных шахт> проблемы. Отнеси рекомендательное письмо <bОхраннику - Кайлу> по координатам (1909, 2820). Он даст тебе новое задание." )
	MisBeginCondition(NoRecord, 213)
	MisBeginCondition(HasRecord, 212)
	MisBeginCondition(NoMission, 213)
	MisBeginAction(AddMission, 213)
	MisBeginAction(GiveItem, 3972, 1, 4)
	MisCancelAction(ClearMission, 213)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Отнести письмо Охраннику - Кайлу  (1909, 2820).")
	
	MisHelpTalk("<t>Следуй к <pСеребряным Шахтам>, поторапливайся!")
	MisResultCondition(AlwaysFailure )

-----------------------------------РВИООс
	DefineMission( 223, "Новое задание", 213, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Тебя прислал секретарь Сальвьер? Рад познакомиться.")
	MisResultCondition(NoRecord, 213)
	MisResultCondition(HasMission, 213)
	MisResultCondition(HasItem , 3972, 1)
	MisResultAction(TakeItem , 3972, 1 )
	MisResultAction(ClearMission, 213 )
	MisResultAction(SetRecord, 213 )
	MisResultAction(AddExp,500,500)
	MisResultAction(AddMoney,2500,2500)	
	MisResultAction(AddExpAndType,2,3401,3401)


-------------------------------------------------С°ХТ¶ЄК§µД№¤ѕЯ
	DefineMission( 224, "Пропавший инструмент", 214 )

	MisBeginTalk( "<t>Недавно кроты-рудокопы украли наши инструменты. Не могли бы вы осмотреться вокруге, и найти их?" )
	MisBeginCondition(NoRecord, 214)
	MisBeginCondition(HasRecord, 213)
	MisBeginCondition(NoMission, 214)
	MisBeginAction(AddMission, 214)
	MisBeginAction(AddTrigger, 2141, TE_GETITEM, 3973, 5 )		--±»µБµДМъЗВ
	MisBeginAction(AddTrigger, 2142, TE_GETITEM, 3974, 3 )		--±»µБµД°ІИ«Г±
	MisBeginAction(AddTrigger, 2143, TE_GETITEM, 3975, 5 )		--±»µБµДїуµЖ
	MisCancelAction(ClearMission, 214)

	MisNeed(MIS_NEED_ITEM, 3973, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 3974, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 3975, 5, 30, 5)

	MisResultTalk("<t>Это великолепно! Ты вернул нам наши инструменты, теперь мы можем приступить к работе!")
	MisHelpTalk("<t>Вы не нашли инструменты? Без них мы не можем продолжать работать. Пожалуйста, помогите нам найти их.")
	MisResultCondition(HasMission, 214)
	MisResultCondition(HasItem, 3973, 5 )
	MisResultCondition(HasItem, 3974, 3 )
	MisResultCondition(HasItem, 3975, 5 )
	MisResultAction(TakeItem, 3973, 5 )
	MisResultAction(TakeItem, 3974, 3 )
	MisResultAction(TakeItem, 3975, 5 )
	MisResultAction(ClearMission, 214)
	MisResultAction(SetRecord, 214 )
	MisResultAction(AddExp,850,850)
	MisResultAction(AddMoney,2600,2600)	
	MisResultAction(AddExpAndType,2,3402,3402)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3973)	
	TriggerAction( 1, AddNextFlag, 214, 10, 5 )
	RegCurTrigger( 2141 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3974)	
	TriggerAction( 1, AddNextFlag, 214, 20, 3 )
	RegCurTrigger( 2142 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3975)	
	TriggerAction( 1, AddNextFlag, 214, 30, 5 )
	RegCurTrigger( 2143 )

-------------------------------------------------ЗеАнАыіЭ№Ѕ
	DefineMission( 225, "Убить грибочки", 215 )

	MisBeginTalk( "<t>Мой главная задача состоит в том, чтобы избавиться от бандитов, но <rУбойный грибочек> в это время года очень мешают. <n> <t> Пожалуйста, отыщи и убей всех <rУбойных грибочков> в близи (1594, 2689)." )
	MisBeginCondition(NoRecord, 215)
	MisBeginCondition(HasRecord, 214)
	MisBeginCondition(NoMission, 215)
	MisBeginAction(AddMission, 215)
	MisBeginAction(AddTrigger, 2151, TE_KILL, 252, 10 )		--АыіЭ№Ѕ
	MisCancelAction(ClearMission, 215)

	MisNeed(MIS_NEED_KILL, 252, 10, 10, 10)

	MisResultTalk("<t>Хорошая работа! Без Грибов на пути, мы сможем без труда подобраться к Бандитам!")
	MisHelpTalk("<t>Вы должны остерегаться этих <rГрибочков> они очень ядовиты!")
	MisResultCondition(HasMission, 215)
	MisResultCondition(HasFlag, 215, 19 )
	MisResultAction(ClearMission, 215)
	MisResultAction(SetRecord, 215 )
	MisResultAction(AddExp,1500,1500)
	MisResultAction(AddMoney,2700,2700)	
	MisResultAction(AddExpAndType,2,3403,3403)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 252)	
	TriggerAction( 1, AddNextFlag, 215, 10, 10 )
	RegCurTrigger( 2151 )

-------------------------------------------------µЫД·µДОЇНР
	DefineMission( 226, "Просьба Дитто", 216 )

	MisBeginTalk( "<t>Я только что получил письмо от Дито, кажется, что у него возникли некоторые трудности в его исследованиях. Он просит достать для него <yЖелудочный Камень Короля Крабов> . <n> <t> Я видел  <rКороля крабов>, недалеко от  пляжа (1783, 2507)." )
	MisBeginCondition(NoRecord, 216)
	MisBeginCondition(HasRecord, 215)
	MisBeginCondition(NoMission, 216)
	MisBeginAction(AddMission, 216)
	MisBeginAction(AddTrigger, 2161, TE_GETITEM, 3976, 1 )		--Р·НхµДОёЅбКЇ
	MisCancelAction(ClearMission, 216)

	MisNeed(MIS_NEED_ITEM, 3976, 1, 10, 1)

	MisResultTalk("<t>Великолепно! Вы нашли его! Я немедленно отправлю его Дито!")
	MisHelpTalk("<t>Вы не нашли <rКороля бронекрабов>? Я точно видел его недалеко от пляжа...")
	MisResultCondition(HasMission, 216)
	MisResultCondition(HasItem, 3976, 1 )
	MisResultAction(TakeItem, 3976, 1)
	MisResultAction(ClearMission, 216)
	MisResultAction(SetRecord, 216 )
	MisResultAction(AddExp,5000,5000)
	MisResultAction(AddMoney,11000,11000)	
	MisResultAction(AddExpAndType,2,3404,3404)


	InitTrigger()
	TriggerCondition( 1, IsItem, 3976 )	
	TriggerAction( 1, AddNextFlag, 216, 10, 1 )
	RegCurTrigger( 2161 )

-------------------------------------------------ЙЅФфКЖБ¦Нј
	DefineMission( 227, "План разбойничьего укрытия", 217 )

	MisBeginTalk( "<t> Говорят, что загадочный человек продает карты, в одной из них наверняка есть расположение лагеря Бандитов. Вы должны найти такую карту. Попробуйте поискать торговца по координатам  (2217, 2547)." )
	MisBeginCondition(NoRecord, 217)
	MisBeginCondition(HasRecord, 216)
	MisBeginCondition(NoMission, 217)
	MisBeginAction(AddMission, 217)
	MisBeginAction(AddTrigger, 2171, TE_GETITEM, 3977, 1 )		--ЙЅФфКЖБ¦Нј
	MisCancelAction(ClearMission, 217)

	MisNeed(MIS_NEED_ITEM, 3977, 1, 10, 1)

	MisResultTalk("<t>Вы смогли заполучить карту! Фантастика!")
	MisHelpTalk("<t>Не нашел? Я тоже! Может быть, попросить помощи у людей в округе.")
	MisResultCondition(HasMission, 217)
	MisResultCondition(HasItem, 3977, 1 )
	MisResultAction(TakeItem, 3977, 1)
	MisResultAction(ClearMission, 217)
	MisResultAction(SetRecord, 217 )
	MisResultAction(AddExp,950,950)
	MisResultAction(AddMoney,3000,3000)
	MisResultAction(AddExpAndType,2,11833,11833)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3977 )	
	TriggerAction( 1, AddNextFlag, 217, 10, 1 )
	RegCurTrigger( 2171 )

-------------------------------------------------Н»П®ЙЅФфНЕ
	DefineMission( 228, "Разбойник из засады", 218 )

	MisBeginTalk( "<t>На карте видно, что бандиты собираются недалеко от западной части <pСкалистого удела>. Мне нужно, чтобы вы  проникли в их лагерь и принесли 3 <yОжерелья бандита>." )
	MisBeginCondition(NoRecord, 218)
	MisBeginCondition(HasRecord, 217)
	MisBeginCondition(NoMission, 218)
	MisBeginAction(AddMission, 218)
	MisBeginAction(AddTrigger, 2181, TE_GETITEM, 1841, 3 )		--ЙЅФфµДПоБґ
	MisCancelAction(ClearMission, 218)

	MisNeed(MIS_NEED_ITEM, 1841, 3, 10, 3)

	MisResultTalk("<t>Ура! Впервые мы смогли получить эти ожерелья!")
	MisHelpTalk("<t>Почему Вы не собрали <yОжерелья бандитов>?")
	MisResultCondition(HasMission, 218)
	MisResultCondition(HasItem, 1841, 3 )
	MisResultAction(TakeItem, 1841, 3 )
	MisResultAction(ClearMission, 218)
	MisResultAction(SetRecord, 218 )
	MisResultAction(AddExp,3000,3000)
	MisResultAction(AddMoney,3200,3200)	
	MisResultAction(AddExpAndType,2,11833,11833)


	InitTrigger()
	TriggerCondition( 1, IsItem, 1841 )	
	TriggerAction( 1, AddNextFlag, 218, 10, 3 )
	RegCurTrigger( 2181 )

-------------------------------------------------РьЙНБо
	DefineMission( 229, "Награда за голову", 219 )

MisBeginTalk( "<t>Мне извесно о Главаре бандитов. Он очень жестокий и хитрый человек. <n> <t> Найди его лагеря по координатам (1052, 3037) и уничтож этого бантита." )
	MisBeginCondition(NoRecord, 219)
	MisBeginCondition(HasRecord, 218)
	MisBeginCondition(NoMission, 219)
	MisBeginAction(AddMission, 219)
	MisBeginAction(AddTrigger, 2191, TE_KILL, 211, 1 )		--ЙЅФфКЧБмЎ¤тсЙЯ
	MisCancelAction(ClearMission, 219)

	MisNeed(MIS_NEED_KILL, 211, 1, 10, 1)

	MisResultTalk("<t>Вы убили Гадюку? Молодец! Благодаря вашему мужественному поступку, бандиты больше не представляет угрозы.")
	MisHelpTalk("<t>Вы боитесь идти в одиночку? Почему бы вам не попросить помощи друзей?")
	MisResultCondition(HasMission, 219)
	MisResultCondition(HasFlag, 219, 10 )
	MisResultAction(ClearMission, 219)
	MisResultAction(SetRecord, 219 )
	MisResultAction(AddExp,6000,6000)
	MisResultAction(AddMoney,12000,12000)	
	MisResultAction(AddExpAndType,2,11833,11833)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 211 )	
	TriggerAction( 1, AddNextFlag, 219, 10, 1 )
	RegCurTrigger( 2191 )

----------------------------ИҐЙіД®
	DefineMission( 230, "Поход в пустыню", 220 )
	
	MisBeginTalk( "<t>Навести Старейшину Кланов <bАльбуду> по координатам (898, 3640) в Шайтане, он даст тебе необходимуюю информацию." )
	MisBeginCondition(NoRecord, 220)
	MisBeginCondition(HasRecord, 219)
	MisBeginCondition(NoMission, 220)
	MisBeginAction(AddMission, 220)
	MisBeginAction(GiveItem, 3978, 1, 4)
	MisCancelAction(ClearMission, 220)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Навести Старейшину Кланов <bАльбуду>  в Шайтане (898, 3640)")
	
	MisHelpTalk("<t>Хоть я и желаю что бы вы остались, но вам надо помочь в Шайтане!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ИҐЙіД®
	DefineMission( 231, "Поход в пустыню", 220, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Добро пожаловать. Секретарь Аргента сообщил мне о цели вашего визита.  Мы считаем, что это указ Богини Кары. Я помогу тебе, насколько смогу.")
	MisResultCondition(NoRecord, 220)
	MisResultCondition(HasMission, 220)
	MisResultCondition(HasItem, 3978, 1)
	MisResultAction(TakeItem, 3978, 1 )
	MisResultAction(ClearMission, 220 )
	MisResultAction(SetRecord, 220 )
	MisResultAction(AddExp,3100,3100)
	MisResultAction(AddMoney,2700,2700)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------±дТмµДФ­Тт
	DefineMission( 232, "Перемены", 221 )
	
	MisBeginTalk( "<t>Навестите говорящую Овечку - Волли в гавани шайтана (898, 3683). Может быть, она поможет вам в  исследованиях. <n> <t> Доложите мне после того как найдете ее." )
	MisBeginCondition(NoRecord, 221)
	MisBeginCondition(HasRecord, 220)
	MisBeginCondition(NoMission, 221)
	MisBeginAction(AddMission, 221)
	MisCancelAction(ClearMission, 221)
		
	MisNeed(MIS_NEED_DESP, "Навести говорящую Овечку - Волли (898, 3683) а затем вернись к Альбуде (898, 3640)")
	
	MisResultTalk("<t>О! Ты говорил с Овечкой? Ха-ха, она скоро станет достопримечательностью города Шайтан.")
	MisHelpTalk("<t>Ты еще не поговрил с <bОвечкой - Волли>?")
	MisResultCondition(HasMission, 221 )
	MisResultCondition(NoRecord, 221 )
	MisResultCondition(HasFlag, 221, 1 )
	MisResultAction(ClearMission, 221 )
	MisResultAction(SetRecord, 221 )
	MisResultAction(AddExp,3200,3200)
	MisResultAction(AddMoney,4400,4400)	
	MisResultAction(AddExpAndType,2,5000,5000)

-----------------------------------±дТмµДФ­Тт
	DefineMission( 233, "Перемены", 221, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Бее... Я говорящая овечка! <n> <T> Хотите знать, как я начала говорить? <n> <T> Не так давно я прогуливался! Бее ... <n> <T> Там был плод в форме яйца.Бее... <n> <T> Бее ... Это было вкусно <n> <T> На следующий день я уже могла говорить! ")
	MisResultCondition(NoRecord, 221)
	MisResultCondition(HasMission, 221)
	MisResultCondition(NoFlag, 221, 1)
	MisResultAction(SetFlag, 221, 1 )
	


----------------------------ВЮЙ­µД±КјЗ±ѕ
	DefineMission( 234, "Записная книжка Роланда", 222 )
	
	MisBeginTalk( "<t>Хмм ... Плод в форме яйца, который плавал у берега? Я помню, что читал что-то подобное, но где? Хмм... <n> <t> Ну конечно! Недавно библиотеке города Шайтана появился дневник Роладна... <n> <t> Эх, жаль, что библиотрека была взломана прежде чем вы пришли к нам. Много книг и карт было утерянно. Я думаю вы узнаете подробности если навестите человека отвечающего за это дело - Стражника Михаэля (958, 3549)." )
	MisBeginCondition(NoRecord, 222)
	MisBeginCondition(HasRecord, 221)
	MisBeginCondition(NoMission, 222)
	MisBeginAction(AddMission, 222)
	MisCancelAction(ClearMission, 222)
		
	MisNeed(MIS_NEED_DESP, "Найти Стражника (958, 3549).")
	
	MisHelpTalk("<t>Стражник находится недалеко от главных ворот шайтана!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ВЮЙ­µД±КјЗ±ѕ
	DefineMission( 235, "Записная книжка Роланда", 222, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Привет! Я Стражник Михаэль. <n> <t> Виновника приступления я так и не нашел!<n> <t>Что является более необычным, вор украл лишь несколько книг которые абсолютно бесполезны.")
	MisResultCondition(NoRecord, 222)
	MisResultCondition(HasMission, 222)
	MisResultAction(ClearMission, 222 )
	MisResultAction(SetRecord, 222 )
	MisResultAction(AddExp,4200,4200)
	MisResultAction(AddMoney,5400,5400)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------ПЯЛч
	DefineMission( 236, "Улики", 223 )
	
	MisBeginTalk( "<t>Проводя расследование я наткнулся на следы бандитов! Мне кажется это они ответственны за этот инцидент! <n> <t>Они считаются одними из лучших преступников в Пустыне! <n> <t> Я знаю одного бантида по имени <bСупермун>. Я думаю он расскажет тебе какие нибудь факты. Найти его можно в <pОазисе> по координатам  (1080,3086)." )
	MisBeginCondition(NoRecord, 223)
	MisBeginCondition(HasRecord, 222)
	MisBeginCondition(NoMission, 223)
	MisBeginAction(AddMission, 223)
	MisCancelAction(ClearMission, 223)
		
	MisNeed(MIS_NEED_DESP, "Найдите Супермуна (1080, 3086)")
	
	MisHelpTalk("<t>Не волнуйтесь. Супермун не такой как все бандиты. Он не лезет в драку первый!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ПЯЛч
	DefineMission( 237, "Улики", 223, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Как вы меня нашли? Вы хотите узнать больше о той краже? <n> <t> Ха-ха! Я не имею ничего общего с этим проишествием! Серьезно. И даю вам совет - Не лезьте в это дело.<n> <t> Вы не боитесь что я могу убить вас?")
	MisResultCondition(NoRecord, 223)
	MisResultCondition(HasMission, 223)
	MisResultAction(ClearMission, 223 )
	MisResultAction(SetRecord, 223 )
	MisResultAction(AddExp,900,900)
	MisResultAction(AddMoney,5000,5000)
	MisResultAction(AddExpAndType,2,5000,5000)


-------------------------------------------------ДЪјй
	DefineMission( 238, "Предатель внутри", 224 )

	MisBeginTalk( "<t>Хорошо, хорошо. Я открою вам небольшой секрет. Но за определенную плату. Во-первых, мы должны вам помочь мне выполнить поручение. <n> <t> Другие Песчаные бандиты хотят проучить меня. <n> <t> Убей 10 <rПесчаных бандитов> и 5 <rПесчаных Всадников>." )
	MisBeginCondition(NoRecord, 224)
	MisBeginCondition(HasRecord, 223)
	MisBeginCondition(NoMission, 224)
	MisBeginAction(AddMission, 224)
	MisBeginAction(AddTrigger, 2241, TE_KILL, 45, 10 )		--Йі·Л
	MisBeginAction(AddTrigger, 2242, TE_KILL, 49, 5 )		--ЙіЖпКї
	MisCancelAction(ClearMission, 224)

	MisNeed(MIS_NEED_KILL, 45, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 49, 5, 20, 5)

	MisResultTalk("<t>Ха я знал, что я могу рассчитывать на вас.")
	MisHelpTalk("<t>Похоже, что вы не в состоянии выполнить задачу.")
	MisResultCondition(HasMission, 224)
	MisResultCondition(HasFlag, 224, 19 )
	MisResultCondition(HasFlag, 224, 24 )
	MisResultAction(ClearMission, 224)
	MisResultAction(SetRecord, 224 )
	MisResultAction(AddExp,2000,2000)
	MisResultAction(AddMoney,3550,3550)	
	MisResultAction(AddExpAndType,2,5000,5000)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 45 )	
	TriggerAction( 1, AddNextFlag, 224, 10, 10 )
	RegCurTrigger( 2241 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 49 )	
	TriggerAction( 1, AddNextFlag, 224, 20, 5 )
	RegCurTrigger( 2242 )

-------------------------------------------------ХЅ¶·µДЙіД®
	DefineMission( 239, "Битва в пустыне", 225 )

	MisBeginTalk( "<t>Главарь Песчаных бандитов - <rГарета> Он находится по координатам (1180, 3030). Он очень жесток, но достаточно туповат. <n> <t> Он любит использоать свою силу, а не ум <n> <t> Убейте его для меня!<n> <t> Я скажу вам все, что надо, после того как вы убьет его." )
	MisBeginCondition(NoRecord, 225)
	MisBeginCondition(HasRecord, 224)
	MisBeginCondition(NoMission, 225)
	MisBeginAction(AddMission, 225)
	MisBeginAction(AddTrigger, 2251, TE_GETITEM, 3979, 1 )		--ЙіД®НхХЯЦ®Ц¤
	MisCancelAction(ClearMission, 225)

	MisNeed(MIS_NEED_ITEM, 3979, 1, 10, 1)

	MisResultTalk("<t>УРААААА! Благодаря вам я теперь новый Главарь Песчаных Бандитов!")
	MisHelpTalk("<t>Почему вы здесь?")
	MisResultCondition(HasMission, 225 )
	MisResultCondition(HasItem, 3979, 1 )
	MisResultAction(TakeItem, 3979, 1 )
	MisResultAction(ClearMission, 225 )
	MisResultAction(SetRecord, 225 )
	MisResultAction(AddExp,1669,1669)
	MisResultAction(AddMoney,4275,4275)	
	MisResultAction(AddExpAndType,2,5000,5000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3979 )	
	TriggerAction( 1, AddNextFlag, 225, 10, 1 )
	RegCurTrigger( 2251 )

----------------------------ХжПа
	DefineMission( 240, "ИСТИНА", 226 )
	
	MisBeginTalk( "<t>Вы помогли стать мне новым Главарем Песчаных бандитов,я скажу вам правду. <n> <T>Я знаю о небольшой группе пиратов.<n> <T> Их называют еПираты Джекае Они пытались найти журнал Роланда,и я им в этом помого!А теперь можете доложить стражу " )
	MisBeginCondition(NoRecord, 226)
	MisBeginCondition(HasRecord, 225)
	MisBeginCondition(NoMission, 226)
	MisBeginAction(AddMission, 226)
	MisCancelAction(ClearMission, 226)
		
	MisNeed(MIS_NEED_DESP, "Доложить <rСтражу - Майклу>")
	
	MisHelpTalk("<t>Я уже сказал вам все, что знаю.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ХжПа
	DefineMission( 241, "ИСТИНА", 226, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Значит <bБандиты> украли книгу? <n> <t> Я должен был догадаться, но сейчас он является Главарем Песчаных бандитов, я не думаю, что мы сможем его арестовать. Спасибо за вашу помощь.")
	MisResultCondition(NoRecord, 226)
	MisResultCondition(HasMission, 226)
	MisResultAction(ClearMission, 226 )
	MisResultAction(SetRecord, 226 )
	MisResultAction(AddExp,4500,4500)
	MisResultAction(AddMoney,5650,5650)
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------єЈµБµДПыПў
	DefineMission( 242, "Новости корсара", 227 )
	
	MisBeginTalk( "<t>Хотя мы не можем арестовать <bСупермуна>, мы могли провести расследование. <n> <t> Во-первых, мне придется отчитываться перед начальником о ходе расследования. Хмм ... Не могли бы Вы, найти Франко (867, 3660). Он сделает неплохую новость о пиратах." )
	MisBeginCondition(NoRecord, 227)
	MisBeginCondition(HasRecord, 226)
	MisBeginCondition(NoMission, 227)
	MisBeginAction(AddMission, 227)
	MisCancelAction(ClearMission, 227)
		
	MisNeed(MIS_NEED_DESP, "Найти Франко (867, 3660)")
	
	MisHelpTalk("<t>Если вы не можете найти Франко, попробуйте обойти гавань.")
	MisResultCondition(AlwaysFailure )

-----------------------------------єЈµБµДПыПў
	DefineMission( 243, "Новости корсара", 227, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Вам нужна информация о пиратах. Вы нашли нужного человека! <n> <t> О чем бы вы хотели знать больше? Легенда о <bПирате Роланде>? Войне  между Громоградом  и <bПиратами Сакуры>? Или, возможно, о <rПиратах Джека>? Спросите сейчас!")
	MisResultCondition(NoRecord, 227 )
	MisResultCondition(HasMission, 227 )
	MisResultAction(ClearMission, 227 )
	MisResultAction(SetRecord, 227 )
	MisResultAction(AddExp,949,949)
	MisResultAction(AddMoney,6333,6333)	
	MisResultAction(AddExpAndType,2,5000,5000)


----------------------------ЅЬїЛєЈµБНЕ
	DefineMission( 244, "Пираты Джека", 228 )
	
	MisBeginTalk( "<t>Ну, так что вы хотели знать о <rПиратах Джека>. В начале эта группа пиратов собиралась в округе города. Однако, пока они не создавали проблем, не было смысла их беспокоить. Но в последнее время они стали появляться в южной части пустыни. <n> <t> Пустыня принадлежит Песчаным бандитам. <n> <t> Может ли так быть? Ха-ха ... <n> <t> О таких вещах лучше спросить <bМеррикса> она находится в Шайтане (1118, 3611). По какой-то причине, она всегда, все знает. После выхода из города, следуйте вдоль побережья на восток, и вы найдете ее рядом с затонувшими судами." )
	MisBeginCondition(NoRecord, 228)
	MisBeginCondition(HasRecord, 227)
	MisBeginCondition(NoMission, 228)
	MisBeginAction(AddMission, 228)
	MisCancelAction(ClearMission, 228)
		
	MisNeed(MIS_NEED_DESP, "Навестите <bМеррикс> (1118, 3611)")
	
	MisHelpTalk("Навестите <bМеррикс>  (1118, 3611).")
	MisResultCondition(AlwaysFailure )

-----------------------------------єЪЅЬїЛєЈµБНЕ
	DefineMission( 245, "Пираты Джека", 228, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Необычные обряды <rПиратов Джека> привлекают мое внимание. Я чувствую, наступают темные времена..")
	MisResultCondition(NoRecord, 228 )
	MisResultCondition(HasMission, 228 )
	MisResultAction(ClearMission, 228 )
	MisResultAction(SetRecord, 228 )
	MisResultAction(AddExp,2700,2700)
	MisResultAction(AddMoney,3000,3000)
	MisResultAction(AddExpAndType,2,5000,5000)


-------------------------------------------------·СїЛґ¬і¤
	DefineMission( 246, "Капитан Фикл", 229 )

	MisBeginTalk( "<t>Я могу помочь вам, но <rКапитан Фикл>  и его помощники очень опасные люди.  <n> <t> Капитан Фикл очень жестокий и его примерное местонахождение вблиз (1500,3450)  <n> <t> Если вы каким-то образом достанете сумку для меня, я мог бы помочь вам. <n> <t> Удачи." )
	MisBeginCondition(NoRecord, 229)
	MisBeginCondition(HasRecord, 228)
	MisBeginCondition(NoMission, 229)
	MisBeginAction(AddMission, 229)
	MisBeginAction(AddTrigger, 2291, TE_GETITEM, 3980, 1 )		--·СїЛµДРЎ°ь
	MisCancelAction(ClearMission, 229)

	MisNeed(MIS_NEED_ITEM, 3980, 1, 10, 1)

	MisResultTalk("<t>Вы достали сумку? <n> <t> Великолепно! Теперь я вижу, что это такое...")
	MisHelpTalk("<t>Хмм.. Не удается найти его? Прогулка вдоль береговой линии вам не помешает...")
	MisResultCondition(HasMission, 229 )
	MisResultCondition(HasItem, 3980, 1 )
	MisResultAction(TakeItem, 3980, 1 )
	MisResultAction(ClearMission, 229 )
	MisResultAction(SetRecord, 229 )
	MisResultAction(AddExp,6680,6680)
	MisResultAction(AddMoney,9075,9075)	
	MisResultAction(AddExpAndType,2,5000,5000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3980 )	
	TriggerAction( 1, AddNextFlag, 229, 10, 1 )
	RegCurTrigger( 2291 )

----------------------------С°ХТКХРЕИЛ
	DefineMission( 247, "Для тех, кого это касается", 230 )
	
	MisBeginTalk( "<t> Я осмотрел сумку, она содержала письмо от от таинственного \ Дж\." )
	MisBeginCondition(NoRecord, 230)
	MisBeginCondition(HasRecord, 229)
	MisBeginCondition(NoMission, 230)
	MisBeginAction(AddMission, 230)
	MisBeginAction(GiveItem, 3981, 1, 4 )
	MisCancelAction(ClearMission, 230)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Найдите таинственного  \"Дж\"")
	
	MisHelpTalk("<t>Я знаю, что информации мало, но вы должны доверять мне. У меня есть предчувствие, что вы сможете его найти...")
	MisResultCondition(AlwaysFailure )

-----------------------------------С°ХТКХРЕИЛ
	DefineMission( 248, "Для тех, кого это касается", 230, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t> Каким образом вы получили это письмо? Это мое письмо!!! <n> <T> Я \ Дж\.Почему называется \ Дж\? <n> <T> Ты никогда не узнаешь ответа.А теперь я дам тебе небольшой урок этикета!. ")
	MisResultCondition(NoRecord, 230 )
	MisResultCondition(HasMission, 230 )
	MisResultCondition(HasItem, 3981, 1 )
	MisResultAction(TakeItem, 3981, 1 )
	MisResultAction(ClearMission, 230 )
	MisResultAction(SetRecord, 230 )
	MisResultAction(ObligeAcceptMission, 5 )
	MisResultAction(AddExp,1936,1936)
	MisResultAction(AddMoney,2415,2415)	
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------»г±ЁКХРЕИЛ
	DefineMission( 249, "Для тех, кого это касается", 5, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Супермун - загадочный Дж?Никогда бы не подумал...")
	MisResultCondition(HasMission, 5 )
	MisResultCondition(NoRecord, 5 )
	MisResultAction(ClearMission, 5 )
	MisResultAction(SetRecord, 5 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,5800,5800)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------ИҐ±±·Ѕ
	DefineMission( 250, "Путешествие на север", 232 )
	
	MisBeginTalk( "<t>Приветствую вас в Ледыни. Я знаю что вы пришли по поводу тех проишествий с животными <n> <t> Извини, не думаю что смогу чем то помоч. Мы заняты реконструкцией города." )
	MisBeginCondition(NoRecord, 232)
	MisBeginCondition(HasRecord, 5 )
	MisBeginCondition(NoMission, 232)
	MisBeginAction(AddMission, 232)
	MisCancelAction(ClearMission, 232)
		
	MisNeed(MIS_NEED_DESP, "Отправляйтесь к Мечнику - Рею (1365, 570)")
	
	MisHelpTalk("Спешите! Нет времени ждать!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ИҐ±±·Ѕ
	DefineMission( 251, "Путешествие на север", 232, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("К сожелению, я не могу помочь вам. Так как в Ледыни кризис после разгрома, и реконструкция города является главной проблемой! Так что у меня нет времени обсуждать вопрос о том что случилось с чудовищами! Я не думаю, что расследование данного вопроса как-то смогут помочь нашей главной проблеме.")
	MisResultCondition(NoRecord, 232 )
	MisResultCondition(HasMission, 232 )
	MisResultAction(ClearMission, 232 )
	MisResultAction(SetRecord, 232 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,5900,5900)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------±щАЗ±¤µДОЈ»ъ
	DefineMission( 252, "Опасность в Ледыни", 233 )
	
	MisBeginTalk( "<t>Поговорите с  <bМасом>. Он должен вам помочь. Думаю он в этом районе (1346, 451)." )
	MisBeginCondition(NoRecord, 233)
	MisBeginCondition(HasRecord, 232)
	MisBeginCondition(NoMission, 233)
	MisBeginAction(AddMission, 233)
	MisCancelAction(ClearMission, 233)
		
	MisNeed(MIS_NEED_DESP, "Найдите Маса (1346, 451).")
	
	MisHelpTalk("<t>Маса не так легко найти! Но я знаю у вас получится.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ИҐ±±·Ѕ
	DefineMission( 253, "Опасность в Ледыни", 233, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Добро пожаловать путешественник. Ледынь на грани жизни и смерти, как мы говорим. Мы были когда-то большим и красивым городом <n> <t> Мы можем лишь надеяться на то что нежить отступит.")
	MisResultCondition(NoRecord, 233 )
	MisResultCondition(HasMission, 233 )
	MisResultAction(ClearMission, 233 )
	MisResultAction(SetRecord, 233 )
	MisResultAction(AddExp,5000,5000)
	MisResultAction(AddMoney,7900,7900)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------І№ёш
	DefineMission( 254, "Восполнение", 234 )
	
	MisBeginTalk( "<t>Недавно было столько неприятностей, что положение значительно ухудшилось. К нам ехало подкрепление из Громограда и Аргента, но нежить перехватила их по пути. Теперь вся наша надежда на воинов из Шайтана <n> <t> Умоляю! Узнайте у Мо о том как обстоит дело!" )
	MisBeginCondition(NoRecord, 234)
	MisBeginCondition(HasRecord, 233)
	MisBeginCondition(NoMission, 234)
	MisBeginAction(AddMission, 234)
	MisCancelAction(ClearMission, 234)
		
	MisNeed(MIS_NEED_DESP, "Найдите Мо (1237, 613)")
	
	MisHelpTalk("<t>Вы не нашли Мо?")
	MisResultCondition(AlwaysFailure )

-----------------------------------І№ёш
	DefineMission( 255, "Восполнение", 234, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Вас прислал Мас? Я очень сожалею, но подкрепление не прибыло. Надеюсь они не столкнулись с врагами.")
	MisResultCondition(NoRecord, 234 )
	MisResultCondition(HasMission, 234 )
	MisResultAction(ClearMission, 234 )
	MisResultAction(SetRecord, 234 )
	MisResultAction(AddExp,3000,3000)
	MisResultAction(AddMoney,5800,5800)
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------С°ХТІ№ёш¶У
	DefineMission( 256, "Поиск припасов", 235 )
	
	MisBeginTalk( "<t>Я уверен, что подкрепление попало в беду, они должны были прибыть в <pБухту Атлантис> (1028, 649). <n><t> Не могли бы вы помочь это проверить? Если вы найдете капитана <bГасардиса>, передайте что мы ждем его." )
	MisBeginCondition(NoRecord, 235)
	MisBeginCondition(HasRecord, 234)
	MisBeginCondition(NoMission, 235)
	MisBeginAction(AddMission, 235)
	MisCancelAction(ClearMission, 235)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Гасардисом в бухте Атлантиса (1028, 649)")
	
	MisHelpTalk("<t> Я уверен что вы найдете <pГасардия>, поверните на запад, потом немного на юг. Он должен быть там.")
	MisResultCondition(AlwaysFailure )

-----------------------------------С°ХТІ№ёш¶У
	DefineMission( 257, "Поиск припасов", 235, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Проклятье, нас застали врасплох! Чёрт... Я потерял все припасы.")
	MisResultCondition(NoRecord, 235 )
	MisResultCondition(HasMission, 235 )
	MisResultAction(ClearMission, 235 )
	MisResultAction(SetRecord, 235 )
	MisResultAction(AddExp,5000,5000)
	MisResultAction(AddMoney,6800,6800)	
	MisResultAction(AddExpAndType,2,7000,7000)


-------------------------------------------------І№ёшЖ·¶б»Ш
	DefineMission( 258, "Возвращение пропавших припасов", 236 )

	MisBeginTalk( "<t>Когда мы приближались к Бухте Атлантис. Мы были окружены отрядом Йети. Мы бились с ними,а тем временем несколько Йети украли наши припасы <n> <t> Странно, я всегда думал что они глуповаты! <n> <t> Помогите нам найди наши припасы." )
	MisBeginCondition(NoRecord, 236)
	MisBeginCondition(HasRecord, 235)
	MisBeginCondition(NoMission, 236)
	MisBeginAction(AddMission, 236)
	MisBeginAction(AddTrigger, 2361, TE_GETITEM, 3982, 15 )		--±»ЗАµДІ№ёшЖ·
	MisCancelAction(ClearMission, 236)

	MisNeed(MIS_NEED_ITEM, 3982, 15, 10, 15)

	MisResultTalk("<t>Вау ты нашел все припасы! Ура!")
	MisHelpTalk("<t>Йети не слишком сложно найти! Думаю они находятся где то в этом районе Материка (860/532 - 1628/954)")
	MisResultCondition(HasMission, 236 )
	MisResultCondition(HasItem, 3982, 15 )
	MisResultAction(TakeItem, 3982, 15 )
	MisResultAction(ClearMission, 236 )
	MisResultAction(SetRecord, 236 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,3800,3800)
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3982 )	
	TriggerAction( 1, AddNextFlag, 236, 10, 15 )
	RegCurTrigger( 2361 )


----------------------------»¤ЛНІ№ёшЖ·
	DefineMission( 259, "Сопровождение припасов", 237 )
	
	MisBeginTalk( "<t> Так как вы помогли нам вернуть Припасы, не могли бы вы  помочь довести их до Ледыни  к <bМечнику Рею> по координатам  (1365, 570). Я в долгу перед вами." )
	MisBeginCondition(NoRecord, 237)
	MisBeginCondition(HasRecord, 236)
	MisBeginCondition(NoMission, 237)
	MisBeginAction(AddMission, 237)
	MisBeginAction(GiveItem, 3983, 15, 4)
	MisCancelAction(ClearMission, 237)
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Найдите Рея в Ледыни (1365, 570)")
	
	MisHelpTalk("<t>Быстрее! Люди Ледыни умирают от голода!")
	MisResultCondition(AlwaysFailure )

-----------------------------------»¤ЛНІ№ёшЖ·
	DefineMission( 260, "Сопровождение припасов", 237, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Слава богам! Мы спасены, припасы получены. <n><t>Это единственная вещь, которую мы с нетерпение ожидали последние несколько дней. Я не знаю, как вас благодарить!")
	MisResultCondition(NoRecord, 237 )
	MisResultCondition(HasMission, 237)
	MisResultCondition(HasItem, 3983, 15 )
	MisResultAction(TakeItem, 3983, 15 )
	MisResultAction(ClearMission, 237 )
	MisResultAction(SetRecord, 237 )
	MisResultAction(AddExp,3550,3550)
	MisResultAction(AddMoney,3900,3900)	
	MisResultAction(AddExpAndType,2,7000,7000)


----------------------------КВјюµчІй
	DefineMission( 261, "Дальнейшее исследование", 238 )
	
	MisBeginTalk( "<t>Из предоставленной Вами информации, складывается впечатление, что Йети стали более смышленными. <n> <t>Сходите к Исследователю Элане (1141, 575), который проводит исследования существ Ледыни." )
	MisBeginCondition(NoRecord, 238)
	MisBeginCondition(HasRecord, 237)
	MisBeginCondition(NoMission, 238)
	MisBeginAction(AddMission, 238)
	MisCancelAction(ClearMission, 238)
		
	MisNeed(MIS_NEED_DESP, "Найти Элану (1141, 575)")
	
	MisHelpTalk("Элана должна быть недалеко от Бухты Атлантис!")
	MisResultCondition(AlwaysFailure )

-----------------------------------КВјюµчІй
	DefineMission( 262, "Дальнейшее исследование", 238, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Что касается существа Ледыни, я заметила большой прирост их интеллекта,они стали более агрессивны. Если вы готовы помочь мне , то мы поймем что происходит.")
	MisResultCondition(NoRecord, 238 )
	MisResultCondition(HasMission, 238)
	MisResultAction(ClearMission, 238 )
	MisResultAction(SetRecord, 238 )
	MisResultAction(AddExp,2600,2600)
	MisResultAction(AddMoney,3000,3000)
	MisResultAction(AddExpAndType,2,7000,7000)


-------------------------------------------------С©Ф­ЙъОп
	DefineMission( 263, "Существо со снежных равнин", 239 )

	MisBeginTalk( "<t>Помимо <bЙети>(1495,667), есть ещё существа, которые изменились до неузнаваемости, такие как: <bИгривая снегурка>(1746,530) и <bСнежная королева>(873,646). Они уже не такие дружелюбные, как раньше.<n><t>Принесите мне несколько материалов для моих исследований, а именно: <y5 Каменей памяти снегурки>, <y5 Каменей памяти снежной королевы> и <y5 Каменей памяти йети>.<n><t>Изучив их я смогу понять, что произошло с этими существами." )
	MisBeginCondition(NoRecord, 239)
	MisBeginCondition(HasRecord, 238)
	MisBeginCondition(NoMission, 239)
	MisBeginAction(AddMission, 239)
	MisBeginAction(AddTrigger, 2391, TE_GETITEM, 3984, 5 )		--С©НЮНЮµДјЗТдКЇ
	MisBeginAction(AddTrigger, 2392, TE_GETITEM, 4069, 5 )		--С©Е®µДјЗТдКЇ
	MisBeginAction(AddTrigger, 2393, TE_GETITEM, 4070, 5 )		--С©ИЛµДјЗТдКЇ
	MisCancelAction(ClearMission, 239)

	MisNeed(MIS_NEED_ITEM, 3984, 5, 10, 5)
	MisNeed(MIS_NEED_ITEM, 4069, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 4070, 5, 30, 5)

	MisResultTalk("<t>Это то, что мне нужно.<n><t>Странно, но эти камни памяти выглядят нормальными... Хм... Странно.")
	MisHelpTalk("<t>Просто идите и принесите мне камни памяти.")
	MisResultCondition(HasMission, 239 )
	MisResultCondition(HasItem, 3984, 5 )
	MisResultCondition(HasItem, 4069, 5 )
	MisResultCondition(HasItem, 4069, 5 )
	MisResultAction(TakeItem, 3984, 5 )
	MisResultAction(TakeItem, 4069, 5 )
	MisResultAction(TakeItem, 4070, 5 )
	MisResultAction(ClearMission, 239 )
	MisResultAction(SetRecord, 239 )
	MisResultAction(AddExp,3000,3000)
	MisResultAction(AddMoney,3000,3000)	
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3984 )	
	TriggerAction( 1, AddNextFlag, 239, 10, 5 )
	RegCurTrigger( 2391 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4069 )	
	TriggerAction( 1, AddNextFlag, 239, 20, 5 )
	RegCurTrigger( 2392 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4070 )	
	TriggerAction( 1, AddNextFlag, 239, 30, 5 )
	RegCurTrigger( 2393 )

-------------------------------------------------С°ХТС©ИЛНх
	DefineMission( 264, "Поиски короля йети", 240 )

	MisBeginTalk( "<t>Скорее всего <pЙети> управляет <bКороль йети Великий и ужасный>. Он не похож на других Йети, он гораздо сильнее их и ужаснее. Если бы Вы смогли принести мне <bКамень памяти короля йети>, то, возможно, я могла бы исследовать его и разобраться в чём тут дело." )
	MisBeginCondition(NoRecord, 240)
	MisBeginCondition(HasRecord, 239)
	MisBeginCondition(NoMission, 240)
	MisBeginAction(AddMission, 240)
	MisBeginAction(AddTrigger, 2401, TE_GETITEM, 4071, 1 )		--С©НЮНЮµДјЗТдКЇ
	MisCancelAction(ClearMission, 240)

	MisNeed(MIS_NEED_ITEM, 4071, 1, 10, 1)

	MisResultTalk("<t><bКамень памяти короля йети> действительно отличается от <bКаменей памяти йети>. Я сейчас же приступлю к более точному обследованию его.")
	MisHelpTalk("<t>Я верю в Вас! Вы справитесь с <rКоролём йети Великим и ужасным>.")
	MisResultCondition(HasMission, 240 )
	MisResultCondition(HasItem, 4071, 1 )
	MisResultAction(TakeItem, 4071, 1 )
	MisResultAction(ClearMission, 240 )
	MisResultAction(SetRecord, 240 )
	MisResultAction(AddExp,16000,16000)
	MisResultAction(AddMoney,16000,16000)	
	MisResultAction(AddExpAndType,2,7000,7000)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4071 )	
	TriggerAction( 1, AddNextFlag, 240, 10, 1 )
	RegCurTrigger( 2401 )

----------------------------°ЧТшіЗµДЦЗХЯ
	DefineMission( 265, "Мудрость серебра", 241 )
	
	MisBeginTalk( "<t>Я тщательно изучила <bКамень памяти короля йети>, и пришла к выводу, что он был обыкновенным <bЙети>. Похоже, есть что-то такое, что изменило его ум и силу. И именно по этому он стал их королём.<n><t>Давным-давно, мой старый учитель <bБлюрри> рассказывал мне легенду о затонувших сокровищ, которые содержат таинственные яйца, способные давать власть тем, кто их съест.<n><t>Если Вы хотите узнать о этой легенде больше, то Вы можете найти Старика Блюрри в Аргенте в точке(2272,2700)." )
	MisBeginCondition(NoRecord, 241 )
	MisBeginCondition(HasRecord, 240 )
	MisBeginCondition(NoMission, 241 )
	MisBeginAction(AddMission, 241 )
	MisCancelAction(ClearMission, 241 )
		
	MisNeed(MIS_NEED_DESP, "Ищите в Аргенет в точке(2272, 2700) Старика Блюрри.")
	
	MisHelpTalk("<t>Мой учитель живёт в Аргенте.")
	MisResultCondition(AlwaysFailure )

-----------------------------------°ЧТшіЗµДЦЗХЯ
	DefineMission( 266, "Мудрость серебра", 241, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>А? Старик Блюрри? Я не знаю о ком Вы. Я слышал, что он очень приятный и добрый..")
	MisResultCondition(NoRecord, 241 )
	MisResultCondition(HasMission, 241)
	MisResultAction(ClearMission, 241 )
	MisResultAction(SetRecord, 241 )
	MisResultAction(AddExp,3200,3200)
	MisResultAction(AddMoney,3100,3100)	
	MisResultAction(AddExpAndType,2,9035,9035)



-------------------------------------------------єэНїЙЅИЛ
	DefineMission( 267, "Пачкуля", 242 )

	MisBeginTalk( "<t>Что Вы говорите? Вы уверены, что я говорил Вам, что меня зовут Блюрри? Хм... Я не помню, что бы мы были знакомы.<n><t>Хотя, если бы Вы мне принесли <bВино Восьми Драгоценностей>, тогда, возможно, я бы вспомнил что нибудь." )
	MisBeginCondition(NoRecord, 242)
	MisBeginCondition(HasRecord, 241)
	MisBeginCondition(NoMission, 242)
	MisBeginAction(AddMission, 242)
	MisBeginAction(AddTrigger, 2421, TE_GETITEM, 4072, 1 )		--С©НЮНЮµДјЗТдКЇ
	MisCancelAction(ClearMission, 242)

	MisNeed(MIS_NEED_ITEM, 4072, 1, 10, 1)

	MisResultTalk("<t>Это самое лучшее вино, которое я пил за свою жизнь!")
	MisHelpTalk("<t>Ты не принёс мне вина! Иди и принеси мне его!")
	MisResultCondition(HasMission, 242 )
	MisResultCondition(HasItem, 4072, 1 )
	MisResultAction(TakeItem, 4072, 1 )
	MisResultAction(ClearMission, 242 )
	MisResultAction(SetRecord, 242 )
	MisResultAction(AddExp,7000,7000)
	MisResultAction(AddMoney,6000,6000)	
	MisResultAction(AddExpAndType,2,9035,9035)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4072 )	
	TriggerAction( 1, AddNextFlag, 242, 10, 1 )
	RegCurTrigger( 2421 )

-----------------------------------єэНїЙЅИЛ
	DefineMission( 268, "Пачкуля", 242, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Вы хотите купить <bВино Восьми Драгоценностей>? К сожалению оно быстро расступается из-за своего необычного вкуса. Но я могу сделать для Вас одну бутылку, если Вы принесёте мне ингредиенты.")
	MisResultCondition(NoRecord, 242 )
	MisResultCondition(HasMission, 242)
	MisResultCondition(NoFlag, 242, 1 )
	MisResultAction(SetFlag, 242, 1 )


-------------------------------------------------ЙЅХд°Л±¦ѕЖ
	DefineMission( 269, "Вино Восьми Драгоценностей", 243 )

	MisBeginTalk( "<t>Что бы сделать одну бутылку вина вам необходимо собрать 8 ингредиентов. Принесите сначала 4 компонента: <b2 Яйца Зловещей черепахи> из <rзловещей черепахи>(969,2587), <b2 Сухожилия хряка> из <rБезумного кабана>(910,2971), <b2 Усика дурмана> из <rДурмана>(1414,2896) и <b2 Порошка рудного кристалла> из <rЛетучей мыши-вампира>(1900,2643). Принесите мне всё что я прошу. Это будет не так и сложно для Вас." )
	MisBeginCondition(NoRecord, 243)
	MisBeginCondition(HasMission, 242)
	MisBeginCondition(HasFlag, 242, 1)
	MisBeginCondition(NoMission, 243)
	MisBeginAction(AddMission, 243)
	MisBeginAction(AddTrigger, 2431, TE_GETITEM, 4073, 2 )		--їЦ№кµ°
	MisBeginAction(AddTrigger, 2432, TE_GETITEM, 4074, 2 )		--Т°ЦнµДлмЧУИв
	MisBeginAction(AddTrigger, 2433, TE_GETITEM, 4075, 2 )		--ВьНУВЮµДМЩВы
	MisBeginAction(AddTrigger, 2434, TE_GETITEM, 4076, 2 )		--їуОпµДЅбѕ§·ЫД©
	MisCancelAction(ClearMission, 243)

	MisNeed(MIS_NEED_ITEM, 4073, 2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 4074, 2, 12, 2)
	MisNeed(MIS_NEED_ITEM, 4075, 2, 14, 2)
	MisNeed(MIS_NEED_ITEM, 4076, 2, 16, 2)


	MisResultTalk("<t>Вы принесли ингредиенты.<n><t>Я сейчас же приступлю к приготовлению вина.")
	MisHelpTalk("<t>Что Вы говорите? Как так не принесли мне ингредиенты? Идите и соберите всё необходимое.")
	MisResultCondition(HasMission, 243 )
	MisResultCondition(HasItem, 4073, 2 )
	MisResultCondition(HasItem, 4074, 2 )
	MisResultCondition(HasItem, 4075, 2 )
	MisResultCondition(HasItem, 4076, 2 )
	MisResultAction(TakeItem, 4073, 2 )
	MisResultAction(TakeItem, 4074, 2 )
	MisResultAction(TakeItem, 4075, 2 )
	MisResultAction(TakeItem, 4076, 2 )
	MisResultAction(ClearMission, 243 )
	MisResultAction(SetRecord, 243 )
	MisResultAction(AddExp,3200,3200)
	MisResultAction(AddMoney,3100,3100)
	MisResultAction(AddExpAndType,2,9035,9035)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4073 )	
	TriggerAction( 1, AddNextFlag, 243, 10, 2 )
	RegCurTrigger( 2431 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4074 )	
	TriggerAction( 1, AddNextFlag, 243, 12, 2 )
	RegCurTrigger( 2432 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4075 )	
	TriggerAction( 1, AddNextFlag, 243, 14, 2 )
	RegCurTrigger( 2433 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4076 )	
	TriggerAction( 1, AddNextFlag, 243, 16, 2 )
	RegCurTrigger( 2434 )


----------------------------іВДкѕЙКВ
	DefineMission( 270, "Давным-давно", 244 )
	
	MisBeginTalk( "<t>О чудо! Я Вас вспомнил... Так как Вы добры со мной я Вам открою тайну.<n><t>У <bПредседателя Аргента - Ронни> есть одно яйцо из легенды, о которой Вы говорите.<n><t>Вы мне не верите? Поговорите с ним сами, он в точке (2241,2748)." )
	MisBeginCondition(NoRecord, 244 )
	MisBeginCondition(HasRecord, 242 )
	MisBeginCondition(NoMission, 244 )
	MisBeginAction(AddMission, 244 )
	MisCancelAction(ClearMission, 244 )
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Ронни в точке (2241, 2748).")
	
	MisHelpTalk("<t>Хорошее вино, очень хорошее!")
	MisResultCondition(AlwaysFailure )

-----------------------------------іВДкѕЙКВ
	DefineMission( 271, "Давным-давно", 244, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Что? Да как он смеет такое говорить обо мне?! Скажите ему, если у него есть какие ни будь ко мне претензии, пусть придет  сам и скажет  мне всё в лицо!")
	MisResultCondition(NoRecord, 244 )
	MisResultCondition(HasMission, 244)
	MisResultAction(ClearMission, 244 )
	MisResultAction(SetRecord, 244 )
	MisResultAction(ObligeAcceptMission, 6 )
	MisResultAction(SystemNotice, "Obtain quest 'Unripe Fruit'" )
	MisResultAction(AddExp,3500,3500)
	MisResultAction(AddMoney,3150,3150)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------СЇОКОґ№ы
	DefineMission( 272, "Неверный вопрос", 6 )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("Ха Ха Ха... Я почти забыл. Он скорее потеряет все, чем станет говорить об этом. Я думаю, мы можем разработать план, чтобы заставить его говорить.")
	MisResultCondition(HasMission, 6 )
	MisResultAction(ClearMission, 6 )
	MisResultAction(SetRecord, 6 )
	MisResultAction(AddExp,1768,1768)
	MisResultAction(AddMoney,1565,1565)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------»бі¤µД°С±ъ
	DefineMission( 273, "Мрачный секрет председателя", 246 )
	
	MisBeginTalk( "<t>Если мы хотим заставить <bРонни> сотрудничать с нами, нам придётся  его шантажировать.<n><t>Нам нужна помощь <pГенерала Вильяма>. Поговорите с ним. Его можно найти по координатам(2277,2831)." )
	MisBeginCondition(NoRecord, 246 )
	MisBeginCondition(HasRecord, 6 )
	MisBeginCondition(NoMission, 246 )
	MisBeginAction(AddMission, 246 )
	MisCancelAction(ClearMission, 246 )
		
	MisNeed(MIS_NEED_DESP, "Поговорите с <bГениралом Вильямом> в точке (2277, 2831).")
	
	MisHelpTalk("<t>Идите же! Не мешайте мне наслождаться Вкусом вина.")
	MisResultCondition(AlwaysFailure )

-----------------------------------»бі¤µД°С±ъ
	DefineMission( 274, "Мрачный секрет председателя", 246, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Хе-хе-хе! Ох уж этот <bБлюрри>! Я боюсь, что узнав тайну обо мне, он не даст и мне покоя. Хорошо. Вы мне помогали и по этому я помогу Вам!")
	MisResultCondition(NoRecord, 246 )
	MisResultCondition(HasMission, 246)
	MisResultAction(ClearMission, 246 )
	MisResultAction(SetRecord, 246 )
	MisResultAction(AddExp,3600,3600)
	MisResultAction(AddMoney,3100,3100)	
	MisResultAction(AddExpAndType,2,9035,9035)


-------------------------------------------------·ПїуМЅЛч
	DefineMission( 275, "Расследование на шахте", 247 )

	MisBeginTalk( "<t>Идите в <pШахты> и найдите <bСтарые документы>.<n><t>Возможно они выпали у <bРонни>, и <rГрязилище> их подобрали.<n><t>Убейте <rГрязилище> и принесите мне <bСтарые Документы>. Если Вы принесёте эти документы, мы сможем шантажировать <bРонни>! " )
	MisBeginCondition(NoRecord, 247)
	MisBeginCondition(HasRecord, 246)
	MisBeginCondition(NoMission, 247)
	MisBeginAction(AddMission, 247)
	MisBeginAction(AddTrigger, 2471, TE_GETITEM, 4081, 10 )		--ЖЖѕЙµДЦЅЖ¬
	MisCancelAction(ClearMission, 247)

	MisNeed(MIS_NEED_ITEM, 4081, 10, 10, 10)

	MisResultTalk("<t>Сейчас посмотрим, надо только правильно разложить эти бумаги.")
	MisHelpTalk("<t>Запомните, <rГрязилища> могли поглотить <bСтарые документы>.")
	MisResultCondition(HasMission, 247 )
	MisResultCondition(HasItem, 4081, 10 )
	MisResultAction(TakeItem, 4081, 10 )
	MisResultAction(ClearMission, 247 )
	MisResultAction(SetRecord, 247 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,3200,3200)
	MisResultAction(AddExpAndType,2,9035,9035)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4081 )	
	TriggerAction( 1, AddNextFlag, 247, 10, 10 )
	RegCurTrigger( 2471 )

----------------------------ЦЅЖ¬µДГШГЬ
	DefineMission( 276, "Секрет ростка", 248 )
	
	MisBeginTalk( "<t>Посмотрите на этот <bДревний премиальный знак>, его потеряли уже очень давно и так и не смогли найти. Угадайте у кого он был?! Да да, у Ронни.<n><t>Я хочу посмотреть на выражение его лица, когда Вы скажите ему, что нашли этот Знак. Ха-ха-ха." )
	MisBeginCondition(NoRecord, 248 )
	MisBeginCondition(HasRecord, 247 )
	MisBeginCondition(NoMission, 248 )
	MisBeginAction(AddMission, 248 )
	MisBeginAction(GiveItem, 4082, 1, 4 )
	MisCancelAction(ClearMission, 248 )
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Покажите <bРонни> <yДревний премиальный знак> (2241, 2748).")
	
	MisHelpTalk("Покажите <bРонни> <yДревний премиальный знак> (2241, 2748).")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЦЅЖ¬µДГШГЬ
	DefineMission( 277, "Секрет ростка", 248, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Идите же, мне не терпится увидеть его удивлённое лицо. Ха-ха-ха!")
	MisResultCondition(NoRecord, 248 )
	MisResultCondition(HasMission, 248)
	MisResultCondition(HasItem, 4082, 1)
	MisResultAction(ClearMission, 248 )
	MisResultAction(SetRecord, 248 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,3200,3200)
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------МУЕЬµДѕЮКЮ
	DefineMission( 278, "Побег Бехамота", 249 )
	
	MisBeginTalk( "<t>Недавно я побывал за границей. Там я купил <rБехомота>, что бы потом перепродать его по выгодной цене. Я так же приобрел легендарные магические Яйца.<n><t>На обратном пути, я спрятал яйца под клеткой. Думаю, что он съел бесценные яйца и стал достаточно сильным, чтобы сломать свою клетку.<n><t>Он убежал в Серебренные шахты и терроризируют там шахтеров . Я вынужден был назначить награду за поимку зверя, но, увы, никому не удалось его поймать. <bГородской страж - Питер> (2192, 2767) также участвовал в поимке Бегемота, но безрезультатно, возможно, он даст вам более подробную информацию." )
	MisBeginCondition(NoRecord, 249 )
	MisBeginCondition(HasRecord, 248 )
	MisBeginCondition(NoMission, 249 )
	MisBeginAction(AddMission, 249 )
	MisCancelAction(ClearMission, 249 )
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Питером в точке (2192, 2767).")
	
	MisHelpTalk("<t><bПитер> несёт службу в Аргенте, поговорите с ним.")
	MisResultCondition(AlwaysFailure )

-----------------------------------МУЕЬµДѕЮКЮ
	DefineMission( 279, "Побег Бехамота", 249, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Бехомот? Это очень опасный зверь!<n><t>Он очень умный и сильный, я поставил на него самые лучшие ловушки, но ни в одну из них он так и не угодил, а в равном поединке, он сильнее меня! Теперь идите к <bРонни>, ведь это он Вас послал ко мне?")
	MisResultCondition(NoRecord, 249 )
	MisResultCondition(HasMission, 249)
	MisResultAction(ClearMission, 249 )
	MisResultAction(SetRecord, 249 )
	MisResultAction(AddExp,5000,5000)
	MisResultAction(AddMoney,1700,1700)	
	MisResultAction(AddExpAndType,2,9035,9035)




-------------------------------------------------№ЕАПµДРьЙНБо
	DefineMission( 280, "Древний премиальный знак", 250 )

	MisBeginTalk( "<t>Это было давно, тогда любой авантюристов принимал охоту на <rБехомота> приключением. Я почти забыл о ней. Вознаграждение остается в силе. Все что вам нужно сделать, это убить <rБехомота> и взять у него <y Железные наручники>  .. Возможно удача улыбнется Вам." )
	MisBeginCondition(NoRecord, 250)
	MisBeginCondition(HasRecord, 248)
	MisBeginCondition(NoMission, 250)
	MisBeginCondition(HasItem, 4082, 1)
	MisBeginAction(AddMission, 250)
	MisBeginAction(AddTrigger, 2501, TE_GETITEM, 4083, 1 )		--БНонx1
	MisCancelAction(ClearMission, 250)

	MisNeed(MIS_NEED_ITEM, 4083, 1, 10, 1)
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrize(MIS_PRIZE_ITEM, 8288 , 1 , 4) 
	 MisPrize(MIS_PRIZE_MONEY, 34464, 1)
	MisPrizeSelAll()

	MisResultTalk("<t>Вы действительно убили его! Вот Ваша награда.")
	MisHelpTalk("<t>Вы испугались его? или он оказался сильнее Вас? Идите и попробуйте ещё раз!")
	MisResultCondition(HasMission, 250 )
	MisResultCondition(HasItem, 4083, 1 )
	MisResultCondition(HasItem, 4082, 1 )
	MisResultAction(TakeItem, 4083, 1 )
	MisResultAction(TakeItem, 4082, 1 )
	MisResultAction(ClearMission, 250 )
	MisResultAction(SetRecord, 250 )
	MisResultAction(AddExp,13245,13245)
	MisResultAction(AddExpAndType,2,9035,9035)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4083 )	
	TriggerAction( 1, AddNextFlag, 250, 10, 1 )
	RegCurTrigger( 2501 )

----------------------------їЙЕВµД№ЦОп
	DefineMission( 281, "Пугающие чудовища", 251 )
	
	MisBeginTalk( "<t>Как ни странно, этот монстр любит поесть <bЗемляничное пирожное>. В то время, когда мы пили чай, он внезапно напал на нас. Нам повезло, мы отделались легким испугом, а вот пирожные он прихватил с собой." )
	MisBeginCondition(NoRecord, 251 )
	MisBeginCondition(HasRecord, 249 )
	MisBeginCondition(NoMission, 251 )
	MisBeginAction(AddMission, 251 )
	MisCancelAction(ClearMission, 251 )
		
	MisNeed(MIS_NEED_DESP, "Найти бабушку Белди(2277,2769).")
	
	MisHelpTalk("<t>Каждый раз когда я вспоминаю о выпечке Бабушки Белди, у меня текут слюни.")
	MisResultCondition(AlwaysFailure )

-----------------------------------їЙЕВµД№ЦОп
	DefineMission( 282, "Пугающие чудовища", 251, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Я люблю печь, и это замечательно если даже Монстру понравилась моя выпечка. Вы так не думаете?")
	MisResultCondition(NoRecord, 251 )
	MisResultCondition(HasMission, 251)
	MisResultAction(ClearMission, 251 )
	MisResultAction(SetRecord, 251 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,2000,2000)	
	MisResultAction(AddExpAndType,2,9035,9035)


----------------------------АПДМДМµДёвµг
	DefineMission( 283, "Бабушкина выпечка", 252 )
	
	MisBeginTalk( "<t><bШахтёр Друнки> любит мою выпечку так сильно, что готов только ею питаться, он заходил утром ко мне и забрал всё, что я испекла. Он работает в Шахтах, возможно у него ещё осталась моя выпечка. Сходите к нему и если у него есть ещё булочки, то он обязательно с Вами поделиться." )
	MisBeginCondition(NoRecord, 252 )
	MisBeginCondition(HasRecord, 251 )
	MisBeginCondition(NoMission, 252 )
	MisBeginAction(AddMission, 252 )
	MisCancelAction(ClearMission, 252 )
		
	MisNeed(MIS_NEED_DESP, "Ищите Шахтёра Друнки в Шахтах(296, 57).")
	
	MisHelpTalk("<t>Ой! Поспешите, а то он всё слопает. Он так любит мою стрепню.")
	MisResultCondition(AlwaysFailure )

-----------------------------------АПДМДМµДёвµг
	DefineMission( 284, "Бабушкина выпечка", 252, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Ты хочешь Булочку? Я тоже хочу! Я на минутку отвернулся, как у меня украли все булочки.")
	MisResultCondition(NoRecord, 252 )
	MisResultCondition(HasMission, 252)
	MisResultAction(ClearMission, 252 )
	MisResultAction(SetRecord, 252 )
	MisResultAction(AddExp,4000,4000)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,9035,9035)


-------------------------------------------------±»¶бЧЯµД±гµ±
	DefineMission( 285, "Украденная коробка для завтрака", 253 )

	MisBeginTalk( "<t>Я  успел разглядеть того кто украл выпечку, это был <rКрот Нинзя>. Отберите у него мой обед, что бы я смог поработать сегодня. я не могу работать на голодный желудок. " )
	MisBeginCondition(HasRecord, 252)
	MisBeginCondition(NoMission, 253)
	MisBeginCondition(NoRecord, 250)
	MisBeginCondition(NoRecord, 253)  --ФЭК±І»РнЦШёґЅУ
	MisBeginCondition(NoMission, 4)
	MisBeginAction(AddMission, 253)
	MisBeginAction(AddTrigger, 2531, TE_GETITEM, 4084, 1 )		--±гµ±x1
	MisCancelAction(ClearMission, 253)

	MisNeed(MIS_NEED_ITEM, 4084, 1, 10, 1)
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrize(MIS_PRIZE_ITEM, 3917, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>Ура!!! Вы вернули мой обед! Наконецто я смогу пообедать, а потом, наверно, поработаю. Ха-ха-ха. Вы настоящий спаситель, вот возьмите этот <bОсобый клубничный бисквит>.")
	MisHelpTalk("<t>Как же хочется кушать!")
	MisResultCondition(HasMission, 253 )
	MisResultCondition(HasItem, 4084, 1 )
	MisResultAction(TakeItem, 4084, 1 )
	MisResultAction(ClearMission, 253 )
	MisResultAction(SetRecord, 253 )
	MisResultAction(ObligeAcceptMission, 4 )
	MisResultAction(AddTrigger, 109, TE_KILL, 99, 1 )
	MisResultAction(AddTrigger, 108, TE_GAMETIME, TT_MULTITIME, 60, 1 )
	MisResultAction(AddExp,4500,4500)
	MisResultAction(AddMoney,2000,2000)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultBagNeed(1)


	InitTrigger()
	TriggerCondition( 1, IsItem, 4084 )	
	TriggerAction( 1, AddNextFlag, 253, 10, 1 )
	RegCurTrigger( 2531 )
	InitTrigger()
	TriggerCondition( 1, NoMisssionFailure, 4 )
	TriggerCondition( 1, IsMonster, 99 )
	TriggerAction( 1, AddNextFlag, 4, 10, 1 )
	RegCurTrigger( 109 )
	InitTrigger()
	TriggerCondition( 1, NoFlag, 4, 10 )
	TriggerAction( 1, SystemNotice, "Время прошло!" )
	TriggerAction( 1, SetMissionFailure, 4 )
	RegCurTrigger( 108 )

-------------------------------------------------єЈЙПІ№ёшХѕ
	DefineMission( 286, "Морская гавань", 254 )

	MisBeginTalk( "<t>Когда я занимался поставкой грузов, я очень много путешествовал по морям. Мои путешествия привели меня к Осенним островам. Бехомота мы взяли от туда.<n><t>По возвращению мы остановились в <bДевятой Гаване>. Там я встретился с Андреем и он мне продал Легендарные яйца, сказав, что они являются частью затонувшего сокровища. Он так же сказал, что эти яйца обладают магической силой, я ему не поверил, но так как у меня были с собой лишние 100 тысяч, я купил их в качестве сувенира. Разгадайте тайну о диких существах и о яйцах, с помощью которых, существа становятся умнее и сильнее.<n><t>Отправляйтесь к Ширли, в гавань Аргента в точку(2243,2826)." )
	MisBeginCondition(NoRecord, 254)
	MisBeginCondition(HasRecord, 250)
	MisBeginCondition(NoMission, 254)
	MisBeginAction(AddMission, 254)
	MisCancelAction(ClearMission, 254)

	MisNeed(MIS_NEED_DESP, "Узнайте у <bОператора Гавани Ширли>(2243,2826) как попасть в <yДевятую Гавань>.")

	MisHelpTalk("t>Вы должны поговорить с Ширли.")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------ЙЅХд°Л±¦ѕЖ
	DefineMission( 288, "Вино Восьми Драгоценностей", 255 )

	MisBeginTalk( "<t>Что бы сделать бутылку вина, 4 ингредиентов будет не достаточно! Принесите мне: 2 Бамбуковой росы(небесная панда 1655,2583), 2 Питательной жемчужной пудры(Устрица 1817,2472), 2 Контрабандные пряности(Контрабандист 1624,3017) и 2 Варево кенгуру(Боксеру-берсерк 1161,2639)." )
	MisBeginCondition(NoRecord, 255)
	MisBeginCondition(HasRecord, 243)
	MisBeginCondition(HasMission, 242)
	MisBeginCondition(NoMission, 255)
	MisBeginAction(AddMission, 255)
	MisBeginAction(AddTrigger, 2551, TE_GETITEM, 4077, 2 )		--ЦсТ¶ЙПµДВ¶Цй
	MisBeginAction(AddTrigger, 2552, TE_GETITEM, 4078, 2 )		--СшСХµДХдЦй·Ы
	MisBeginAction(AddTrigger, 2553, TE_GETITEM, 4079, 2 )		--ЧЯЛЅПгБП
	MisBeginAction(AddTrigger, 2554, TE_GETITEM, 4080, 3 )		--ґьКуµДЛЅДр
	MisCancelAction(ClearMission, 255)

	MisNeed(MIS_NEED_ITEM, 4077, 2, 18, 2)
	MisNeed(MIS_NEED_ITEM, 4078, 2, 20, 2)
	MisNeed(MIS_NEED_ITEM, 4079, 2, 22, 2)
	MisNeed(MIS_NEED_ITEM, 4080, 3, 24, 3)
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrize(MIS_PRIZE_ITEM, 4072, 1, 4)
	MisPrizeSelAll()

	MisResultTalk("<t>О! Вы Уже принесли мне ингредиенты, я продолжу готовить вино незамедлительно.")
	MisHelpTalk("<t>Что? Не принесли? Я не смогу Вам помочь с вином, если Вы не принесёте мне ингредиенты!")
	MisResultCondition(HasMission, 255 )
	MisResultCondition(HasItem, 4077, 2 )
	MisResultCondition(HasItem, 4078, 2 )
	MisResultCondition(HasItem, 4079, 2 )
	MisResultCondition(HasItem, 4080, 3 )
	MisResultAction(TakeItem, 4077, 2 )
	MisResultAction(TakeItem, 4078, 2 )
	MisResultAction(TakeItem, 4079, 2 )
	MisResultAction(TakeItem, 4080, 3 )
	MisResultAction(ClearMission, 255 )
	MisResultAction(SetRecord, 255 )
	MisResultAction(AddExp,1595,1595)
	MisResultAction(AddMoney,1538,1538)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultBagNeed(1)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4077 )	
	TriggerAction( 1, AddNextFlag, 255, 18, 2 )
	RegCurTrigger( 2551 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4078 )	
	TriggerAction( 1, AddNextFlag, 255, 20, 2 )
	RegCurTrigger( 2552 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4079 )	
	TriggerAction( 1, AddNextFlag, 255, 22, 2 )
	RegCurTrigger( 2553 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4080 )	
	TriggerAction( 1, AddNextFlag, 255, 24, 3 )
	RegCurTrigger( 2554 )

-----------------------------------єЈЙПІ№ёшХѕ
	DefineMission( 289, "Морская гавань", 254, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Девятая Гавань? Странно, я пол жизни хожу под порусами и побывала везде, но о таком месте и не слышала даже.")
	MisResultCondition(NoRecord, 254 )
	MisResultCondition(HasMission, 254)
	MisResultAction(ClearMission, 254 )
	MisResultAction(SetRecord, 254 )
	MisResultAction(AddExp,5000,5000)	
	MisResultAction(AddMoney,2000,2000)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------єЅПЯ»оµШНј
	DefineMission( 290, "Навигационная карта", 256 )

	MisBeginTalk( "<t>Хотя я и не знаю об этом месте,возможно другие пираты знаюи. <n> <T>. Его зовут .....< bБарос>! Если вы найдете его,то получите некоторую информацию. Однако в открытом море много опасностей! <n> <T> Ах , да местонахождение бухты тут  (2024, 2752).Удачи! " )
	MisBeginCondition(NoRecord, 256)
	MisBeginCondition(HasRecord, 254)
	MisBeginCondition(NoMission, 256)
	MisBeginAction(AddMission, 256)
	MisCancelAction(ClearMission, 256)

	MisNeed(MIS_NEED_DESP, "Отправляйтесь к Оператору Гавани <pБаросу> в точку(2024,2752) и узнайте у него про Девятую Гавань.<n><t>пальмовый Берег Вы найдёте в Магическом Океане. Удачи")

	MisHelpTalk("<t>Мне очень жаль, но больше ни чем не могу Вам помочь. Я рассказала всё что знала о Девятой Гаване.")
	MisResultCondition(AlwaysFailure )

-----------------------------------єЅПЯ»оµШНј
	DefineMission( 291, "Навигационная карта", 256, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>А? Кто Вы и от куда Вам известно о Девятой Гавани? Я не тот кто за так откроет секрет. *Кашель*.")
	MisResultCondition(NoRecord, 256 )
	MisResultCondition(HasMission, 256)
	MisResultAction(ClearMission, 256 )
	MisResultAction(SetRecord, 256 )
	MisResultAction(AddExp,2649,2649)
	MisResultAction(AddMoney,1680,1680)
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------МфХЅЛ®Дё
	DefineMission( 292, "Состязание морской медузы", 257 )

	MisBeginTalk( "<t>*Кашель* Если вы хотите знат чуть больше,то выполните мои поручения <n> <T>Найдите для меня 15 кристалов кровожадной медузы.." )
	MisBeginCondition(NoRecord, 257)
	MisBeginCondition(HasRecord, 256)
	MisBeginCondition(NoMission, 257)
	MisBeginAction(AddMission, 257)
	MisBeginAction(AddTrigger, 2571, TE_GETITEM, 4140, 15 )		--ЦсТ¶ЙПµДВ¶Цй
	MisCancelAction(ClearMission, 257)

	MisNeed(MIS_NEED_DESP, "Принесите <yБаросу>(2024,2757) <b15 Кристаллов кровожадной медузы>.")
	MisNeed(MIS_NEED_ITEM, 4140, 15, 10, 15)

	MisResultTalk("<t>*Кашель* Не плохо! Позвольте мне отварить лекарство.")
	MisHelpTalk("<t>*Кашль* *Сопение* *Кашль*!")
	MisResultCondition(HasMission, 257 )
	MisResultCondition(HasItem, 4140, 15 )
	MisResultAction(TakeItem, 4140, 15 )
	MisResultAction(ClearMission, 257 )
	MisResultAction(SetRecord, 257 )
	MisResultAction(AddExp,5848,5848)
	MisResultAction(AddMoney,3422,3422)	
	MisResultAction(AddExpAndType,2,26625,26625)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4140 )	
	TriggerAction( 1, AddNextFlag, 257, 10, 15 )
	RegCurTrigger( 2571 )

-------------------------------------------------ЕЬґ¬
	DefineMission( 293, "Хождение под парусом", 258 )

	MisBeginTalk( "<t>Вам же не составило труда мне помочь, не так ли? Я хочу Вас попросить ещё о одной услуге.<n><t>Доставьте эту посылку в Ледынь к моему старому другу." )
	MisBeginCondition(NoRecord, 258)
	MisBeginCondition(HasRecord, 257)
	MisBeginCondition(NoMission, 258)
	MisBeginAction(AddMission, 258)
	MisBeginAction(GiveItem, 4141, 1, 4)
	MisCancelAction(ClearMission, 258)
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "Отправляйтесь в Ледынь в точку (1214, 681) и передайте Посылку Бароса.")

	MisHelpTalk("<t>Эй! Почему Вы ещё тут?")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЕЬґ¬
	DefineMission( 294, "Хождение под парусом", 258, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вас послал Бароса? К сожалению Вас опередили! Вы очень медленно добирались, Курьеры его прибыли на много раньше Вас.")
	MisResultCondition(NoRecord, 258 )
	MisResultCondition(HasMission, 258)
	MisResultCondition(HasItem, 4141, 1)
	MisResultAction(TakeItem, 4141, 1 )
	MisResultAction(ClearMission, 258 )
	MisResultAction(SetRecord, 258 )
	MisResultAction(AddExp,2924,2924)	
	MisResultAction(AddMoney,1711,1711)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------ВПЙъРЦµЬ
	DefineMission( 295, "Братья Ли", 259 )

	MisResultTalk("<t>Хм ... Это письмо от моего брата.<n> <T> Он всегда умел шутить.Хе-хе.Я  надеюсь, что вы не сердитесь.")
	MisBeginCondition(NoRecord, 259)
	MisBeginCondition(HasRecord, 258)
	MisBeginCondition(NoMission, 259)
	MisBeginAction(AddMission, 259)
	MisBeginAction(GiveItem, 4142, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(ClearMission, 259)

	MisNeed(MIS_NEED_DESP, "Ищите <bЛуки> по координатам(1320, 585).")

	MisHelpTalk("<t>Вы уже доставили посылку, я дал Вам письмо... Что нибудь ещё?")
	MisResultCondition(AlwaysFailure )

-----------------------------------ВПЙъРЦµЬ
	DefineMission( 296, "Братья Ли", 259, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Хм... Да, это письмо от моего брата. Вы стали его очередной жертвой.<n><t>Не сердитесь на него, он постоянно шутит. А так он очень хороший человек.")
	MisResultCondition(NoRecord, 259 )
	MisResultCondition(HasMission, 259)
	MisResultCondition(HasItem, 4142, 1)
	MisResultAction(TakeItem, 4142, 1 )
	MisResultAction(ClearMission, 259 )
	MisResultAction(SetRecord, 259 )
	MisResultAction(AddExp,3225,3225)	
	MisResultAction(AddMoney,1742,1742)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------Чј±ё»о¶Ї
	DefineMission( 297, "Подготовка к деятельности", 260 )

	MisBeginTalk( "<t>Хотя я знаю, где Девятая бухта, я должен предупредить вас!<n> <T> Это место очень опасно. Я надеюсь, что вы достаточно сильны. <n> <T> Достаньте мне 12 Чешуи Рыбы-Скелета , и я дам вам вознаграждение.")
	MisBeginCondition(NoRecord, 260)
	MisBeginCondition(HasRecord, 259)
	MisBeginCondition(NoMission, 260)
	MisBeginAction(AddMission, 260)
	MisBeginAction(AddTrigger, 2601, TE_GETITEM, 4143, 12)		
	MisCancelAction(ClearMission, 260)

	MisNeed(MIS_NEED_DESP, "Принесите <pЛуки> в точку (1320, 585) <b12 Чешуй рыбы-скелета>.")
	MisNeed(MIS_NEED_ITEM, 4143, 12, 10, 12)

	MisResultTalk("<t>Похоже Вам это удалось! Я дам Вам кольцо. Оно поможет Вам в будующем и с ним Вы станите сильнее.")
	MisHelpTalk("<t>Перед большим плаванием, Вам необходимо подготовиться.")
	MisResultCondition(HasMission, 260 )
	MisResultCondition(HasItem, 4143, 12 )
	MisResultAction(TakeItem, 4143, 12 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4144, 1, 4 )
	MisResultAction(ClearMission, 260 )
	MisResultAction(SetRecord, 260 )
	MisResultAction(AddExp,7110,7110)	
	MisResultAction(AddMoney,3548,3548)	
	MisResultAction(AddExpAndType,2,26625,26625)
	MisResultBagNeed(1)

	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4143 )	
	TriggerAction( 1, AddNextFlag, 260, 10, 12 )
	RegCurTrigger( 2601 )

-------------------------------------------------ЧЈёЈЦ®КЦ
	DefineMission( 298, "Благословляющая рука", 261 )

	MisBeginTalk( "<t>Это кольцо обладает большой силой, но Вы не можете пока его одеть. Вам необходимо его благословить.<n><t>Мастер Кера(2664, 654) в Ледяном Шипе сможет дать благословение Вашему кольцу, ступайте к ней." )
	MisBeginCondition(NoRecord, 261)
	MisBeginCondition(NoMission, 261)
	MisBeginCondition(HasRecord, 260)
	MisBeginAction(AddMission, 261)
	MisCancelAction(ClearMission, 261)

	MisNeed(MIS_NEED_DESP, "Поговорите с Мастер -Керой в ледяном Шипе (2664, 654).")

	MisHelpTalk("<t>Получите благословение от Мастер - Керы!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЧЈёЈЦ®КЦ
	DefineMission( 299, "Благословляющая рука", 261, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Молодой человек, Вы пришли ко мне за Благословением?")
	MisResultCondition(NoRecord, 261)
	MisResultCondition(HasMission, 261)
	MisResultAction(ClearMission, 261 )
	MisResultAction(SetRecord, 261 )
	MisResultAction(AddExp,3916,3916)
	MisResultAction(AddMoney,1807,1807)
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------РДБйБ¦Бї
	DefineMission( 300, "Духовная сила", 262 )

	MisBeginTalk( "<t> Бесчисленное множество людей просили моего благословения!Но только чистый сердцем может получить благословение. Я не хотела бы давать вам ложные надежды. Уничтожте Неупокоенного Лучника  (2746, 450) и принесите мне Лучистую душу. ")
	MisBeginCondition(NoRecord, 262)
	MisBeginCondition(HasRecord, 261)
	MisBeginCondition(NoMission, 262)
	MisBeginAction(AddMission, 262)
	MisBeginAction(AddTrigger, 2621, TE_GETITEM, 4145, 1)		
	MisCancelAction(ClearMission, 262)

	MisNeed(MIS_NEED_DESP, "Принесите <pКере> в (2664,654) <bЛучистую душу>.")
	MisNeed(MIS_NEED_ITEM, 4145, 1, 10, 1)

	MisResultTalk("<t>Вы выполнили моё поручение и теперь я вижу, что Вы достойны моего Благословения.<n><t>Я благословляю Вас, и теперь Вы сможете носить это кольцо.")
	MisHelpTalk("<t>Если вы так не уверенны в себе, то о каком благословении может идти речь?")
	MisResultCondition(HasMission, 262 )
	MisResultCondition(HasItem, 4144, 1 )
	MisResultCondition(HasItem, 4145, 1 )
	MisResultAction(TakeItem, 4145, 1 )
	MisResultAction(TakeItem, 4144, 1 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4146, 1 , 4)
	MisResultAction(ClearMission, 262 )
	MisResultAction(SetRecord, 262 )
	MisResultAction(SystemNotice, "Obtained quest: 'Return to Icicle'" )
	MisResultAction(ObligeAcceptMission, 7 )
	MisResultAction(AddExp,8620,8620)	
	MisResultAction(AddMoney,3682,3682)	
	MisResultAction(AddExpAndType,2,26625,26625)
	MisResultBagNeed(1)

		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4145 )	
	TriggerAction( 1, AddNextFlag, 262, 10, 1 )
	RegCurTrigger( 2621 )

-----------------------------------·µ»Ш±щАЗ
	DefineMission( 302, "Вернуться в Ледынь", 7, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Дорогой друг, я вижу, что ты весьма успешно справляешься с заданиями.<n><t>Но будующее требует более серьезной подготовки.")
	MisResultCondition(NoRecord, 7 )
	MisResultCondition(HasMission, 7)
	MisResultAction(ClearMission, 7 )
	MisResultAction(SetRecord, 7 )
	MisResultAction(AddExp,5211,5211)	
	MisResultAction(AddMoney,1910,1910)	
	MisResultAction(AddExpAndType,2,26625,26625)



-------------------------------------------------З°Нщt9
	DefineMission( 303, "Плывите до девятой гавани", 264 )

	MisBeginTalk( "<t>Девятая бухта существовала 10 лет назад. <n> <T> Эта было торговая бухта,охраняемая флотом <n> <T> Когда он был перестроен она была переименована в  <yБухту Айрис>.  <n> <T> Не многие люди помнят о Девятой бухте.Координаты  (2042, 635 ),в Магическом океане.Ищите Оператора Бани,он вам поможет!" )
	MisBeginCondition(NoRecord, 264)
	MisBeginCondition(HasRecord, 7)
	MisBeginCondition(NoMission, 264)
	MisBeginAction(AddMission, 264)
	MisCancelAction(ClearMission, 264)

	MisNeed(MIS_NEED_DESP, "Отправляйтесь в Ммагический океан в точку (2042,635).")

	MisHelpTalk("<t>Я могу ещё чем ни будь Вам помочь?")
	MisResultCondition(AlwaysFailure )

-----------------------------------З°Нщt9
	DefineMission( 304, "Плывите до девятой гавани", 264, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Что? Вы ищите Девятую Гавань? Ха-ха-ха... Вы стоите в этой Гавани.")
	MisResultCondition(NoRecord, 264 )
	MisResultCondition(HasMission, 264)
	MisResultAction(ClearMission, 264 )
	MisResultAction(SetRecord, 264 )
	MisResultAction(AddExp,12572,12572)
	MisResultAction(AddMoney,3966,3966)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------З°Нщt9
	DefineMission( 305, "Кто такой Андрей?", 265 )

	MisBeginTalk( "<t>Раньше это место называлось <bДевятой Гаванью>. Теперь это место носит название <pБухты Айрис>. Я приехал сюда после реконструкции, так, что я ни много знаю ою этом месте.<n><t><bПират Джерими> знает об этом месте гораздо больше меня, поговорите с ним. Его можно найти на Острове Стужи(2362,657). Отправляйтесь к нему." )
	MisBeginCondition(NoRecord, 265)
	MisBeginCondition(HasRecord, 264)
	MisBeginCondition(NoMission, 265)
	MisBeginAction(AddMission, 265)
	MisCancelAction(ClearMission, 265)

	MisNeed(MIS_NEED_DESP, "Поговорите с <bПиратом Джерими> в точке(2362, 657).")

	MisHelpTalk("<t>Я больше ни чем не могу Вам помочь.")
	MisResultCondition(AlwaysFailure )

-----------------------------------З°Нщt9
	DefineMission( 306, "Кто такой Андрей?", 265, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Какой ещё Андрей? Какие легендарные яйца? О чём Вы говорите? Я Вас не понимаю!!!")
	MisResultCondition(NoRecord, 265 )
	MisResultCondition(HasMission, 265)
	MisResultAction(ClearMission, 265 )
	MisResultAction(SetRecord, 265 )
	MisResultAction(AddExp,8292,8292)	
	MisResultAction(AddMoney,2097,2097)	
	MisResultAction(AddExpAndType,2,26625,26625)


-------------------------------------------------єЈѕь±р¶Ї¶У
	DefineMission( 307, "Флот не движется!", 266 )

	MisBeginTalk( "<t>Да кто ты такой, что бы меня беспокоить? Хочешь что бы я тебе помог, помоги мне!<n><t>Отомсти за меня этим <rМорским стрелкам>. Ты найдёшь их в верхней части этого города. Они беспощадные убийцы! Мы, пираты, хоть и грабим и убиваем, но не всех, а только тех кто может нас убить, они же не жалеют ни кого! Они убивают всех, и стариков и детей! И кто же после этого убийцы? Мы? Пираты?")
	MisBeginCondition(NoRecord, 266)
	MisBeginCondition(HasRecord, 265)
	MisBeginCondition(NoMission, 262)
	MisBeginAction(AddMission, 266)
	MisBeginAction(AddTrigger, 2661, TE_KILL, 667, 5)		
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте <r5 Морских стрелков> и вернитесь к <bДжереми> в точку(2362, 657).")
	MisNeed(MIS_NEED_KILL, 667, 5, 10, 5)

	MisResultTalk("<t>Я Вас не дооценивал. Вы не трус и не спрятались от страха в кусты! Я помогу Вам!")
	MisHelpTalk("<t>Что? Вы боитесь? Вы заблудились? О горе! Идите с глаз моих!")
	MisResultCondition(HasMission, 266 )
	MisResultCondition(HasFlag, 266 , 14)
	MisResultAction(ClearMission, 266 )
	MisResultAction(SetRecord, 266 )
	MisResultAction(AddExp,21776,21776)	
	MisResultAction(AddMoney,4436,4436)	
	MisResultAction(AddExpAndType,2,26625,26625)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 266, 10, 5 )
	RegCurTrigger( 2661 )

-------------------------------------------------УЦјыЅЬїЛ
	DefineMission( 308, "Снова Джек", 267 )

	MisBeginTalk( "<t>Малыш, я люблю храбрых и отважных людей. Андрей сменил своё имя на <bДарвин> и жил на этом острове до тех пор, пока Пираты не узнали об этом. Я смутно помню, но по моему это были люди <pКопитана Джека>. Они уговорили его пойти с ними, с тех пор я не видел <bАндрея>... Вам лучше спросить о Андрее у самого Джека. Отправляйтесь на остров Канареек и поговорите с ним лично. Удачи и спасибо тебе ещё раз." )
	MisBeginCondition(NoRecord, 267)
	MisBeginCondition(HasRecord, 266)
	MisBeginCondition(NoMission, 267)
	MisBeginAction(AddMission, 267)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Ищите <pДжека> на <bострове Канареек> по координатам (1672,3777).")

	MisHelpTalk("<t>Если Вы станете Пиратом, то мы с Вами поладим. А сейчас ступайте прочь.")
	MisResultCondition(AlwaysFailure )

-----------------------------------УЦјыЅЬїЛ
	DefineMission( 309, "Снова Джек", 267, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Так так... Вот мы и встретились... Вы уже догадались что я и есть тот самый Джек?<n><t>Я надеюсь это останется между нами...")
	MisResultCondition(NoRecord, 267 )
	MisResultCondition(HasMission, 267)
	MisResultAction(ClearMission, 267 )
	MisResultAction(SetRecord, 267 )
	MisResultAction(AddExp,13026,13026)
	MisResultAction(AddMoney,2303,2303)
	MisResultAction(AddExpAndType,2,26625,26625)



-------------------------------------------------ЙФєуФЩАґ
	DefineMission( 310, "Я Вернусь!", 268 )

	MisBeginTalk( "Хм... Я... Не ну а чё?... Вы не вовремя!" )
	MisBeginCondition(NoRecord, 268)
	MisBeginCondition(HasRecord, 267)
	MisBeginCondition(NoMission, 268)
	MisBeginAction(AddMission, 268)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Поговорите с Джеком (1672, 3777).")

	MisHelpTalk("Хм.. похоже мне необходимо заканчивать со своими расследованиями.")
	MisResultCondition(AlwaysFailure )


-----------------------------------ТэУХѕЮКЮ
	DefineMission( 311, "Заманить чудовище", 4, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("Я не могу в это поверить! Вам удалось убить Бехамота! Я так счастлива! Теперь я могу спокойно наслаждаться вкусом печенья Бабушки Белди! Спасибо!")
	MisResultCondition(HasMission, 4 )
	MisResultCondition(NoRecord, 4 )
	MisResultCondition(NoMisssionFailure, 4 )
	MisResultCondition(HasFlag, 4, 10 )
	MisResultAction(ClearMission, 4 )
	MisResultAction(SetRecord, 4 )
	MisResultAction(AddExp,2649,2649)
	MisResultAction(AddMoney,1680,1680)
	MisResultAction(AddExpAndType,2,9035,9035)
	MisResultAction(ClearTrigger, 108)


-------------------------------------------------Ў°µчІйЎ±
	DefineMission( 312, "Investigation", 269 )

	MisBeginTalk( "<t>Кто Вас послал? Деви? Джонс? Воробей?<n><t>Не важно...На счёт Андрея! Я не знаю по именам своих Пиратов! У меня 8 тысяч членов экипажа! Вы думаете я их всех помню по именам? Пойдите и найдите его сами.")
	MisBeginCondition(NoRecord, 269)
	MisBeginCondition(HasRecord, 267)
	MisBeginCondition(NoMission, 269)
	MisBeginCondition(HasMission, 268)
	MisBeginAction(AddMission, 269)
	MisBeginAction(ClearMission, 268 )
	MisBeginAction(SetRecord, 268 )
	MisBeginAction(AddTrigger, 2691, TE_GETITEM, 3790, 1)
	MisBeginAction(AddTrigger, 2692, TE_GETITEM, 3791, 1)
	MisBeginAction(AddTrigger, 2693, TE_GETITEM, 3792, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_ITEM, 3790, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3791, 1, 11, 1)
	MisNeed(MIS_NEED_ITEM, 3792, 1, 12, 1)
	MisNeed(MIS_NEED_DESP, "Принесите Джеку Эмблемы его подчиненных..")


	MisResultTalk("<t>От куда у Вас эти <bЭмблемы>? И по чему на них кровь? Не может быть... Хватит остановитесь, я всё расскажу. Этот Андрей и после своей смерти приносит одни только неприятности. Я жду Вас немного позже, что бы рассказать всю историю, связанную с Андреем.")
	MisHelpTalk("<t>Ну что Вам надо от меня? Я не буду говорить ни в каком случае и что бы Вы не делали.")
	MisResultCondition(HasMission, 269 )
	MisResultCondition(HasItem, 3790 , 1)
	MisResultCondition(HasItem, 3791 , 1)
	MisResultCondition(HasItem, 3792 , 1)
	MisResultAction(TakeItem, 3790, 1 )
	MisResultAction(TakeItem, 3791, 1 )
	MisResultAction(TakeItem, 3792, 1 )
	MisResultAction(ClearMission, 269 )
	MisResultAction(SetRecord, 269 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 3790 )
	TriggerAction( 1, AddNextFlag, 269, 10, 1 )
	RegCurTrigger( 2691 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3791 )
	TriggerAction( 1, AddNextFlag, 269, 11, 1 )
	RegCurTrigger( 2692 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3792)
	TriggerAction( 1, AddNextFlag, 269, 12, 1 )
	RegCurTrigger( 2693 )

-------------------------------------------------ВіµВ°ІµДТЕОп
	DefineMission( 313, "Записка Андрея", 270 )

	MisBeginTalk( "<t>Как вы уже наверно знаете, Андрей изменил свое имя на Дарвен. Но он не смог обмануть меня таким образом. Его разыскивал флот её величества Королевы! Когда я его нашёл, я предложил ему выбор: или я его сдаю флоту, или он пойдёт ко мне в команду. Андрей выбрал второе. Пол года назад он заболел странной болезнью. У нас не оставалось другого выбора, как положить его на плот и отправить в море. У пиратов есть традиция: Когда один из нас умирает, всё его богатство делится на всех членов экипажа. Так как я их Командир, я сам лично делил сокровища.")
	MisBeginCondition(NoRecord, 270)
	MisBeginCondition(HasRecord, 269)
	MisBeginCondition(NoMission, 270)
	MisBeginAction(AddMission, 270)
	MisBeginAction(AddTrigger, 2701, TE_GETITEM, 4219, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убивайте членов экипажа Джека в поисках <bЗаписки Андрея>.")
	MisNeed(MIS_NEED_ITEM, 4219, 1, 10, 1)

	MisResultTalk("<t>Да! Это пренадлежало Андрею.")
	MisHelpTalk("<t>Ищите у моей команды вещи Андрея!")
	MisResultCondition(HasMission, 270 )
	MisResultCondition(HasItem, 4219 , 1)
	MisResultAction(TakeItem, 4219, 1 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4220, 1, 4 )
	MisResultAction(ClearMission, 270 )
	MisResultAction(SetRecord, 270 )
	MisResultAction(AddExp,30000,30000)
	MisResultAction(AddMoney,5000,5000)
	MisResultAction(AddExpAndType,2,20000,20000)
	--MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,1815,1,4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,679,1,4) -- Яйцо Мордо
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4219 )
	TriggerAction( 1, AddNextFlag, 270, 10, 1 )
	RegCurTrigger( 2701 )


-----------------------------------єЈµБЦ®СЄ1
	DefineMission( 314, "Кровь Пирата", 8, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Ох. Это часто называют Сердцем Моряка. Оно отражает внутренний мир любого. Если твои помыслы чисты, ты можешь получить доступ ко всему, что скрыто в этом сердце. Однако, это знание будет потеряно для следующих поколений. У тебя есть Завещание Андрея?<n><t>Похоже, тебе потребуется помощь. Найди <rМонарха Ледыни - Маса> (1346,451), он ответит на твои вопросы.")
	MisResultCondition(NoRecord, 8 )
	MisResultCondition(HasMission, 8)
	MisResultAction(ClearMission, 8 )
	MisResultAction(SetRecord, 8 )
	MisResultAction(ObligeAcceptMission, 11 )

-----------------------------------єЈѕьЦ®»к1
	DefineMission( 315, "Душа Моря", 9, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Ох. Это часто называют Сердцем Моряка. Оно отражает внутренний мир любого. Если твои помыслы чисты, ты можешь получить доступ ко всему, что скрыто в этом сердце. Однако, это знание будет потеряно для следующих поколений. У тебя есть Завещание Андрея?<n><t>Похоже, тебе потребуется помощь. Найди <rГенерала - Вильяма> (2277, 2831), он ответит на твои вопросы.")
	MisResultCondition(NoRecord, 9 )
	MisResultCondition(HasMission, 9)
	MisResultAction(ClearMission, 9)
	MisResultAction(SetRecord, 9 )
	MisResultAction(ObligeAcceptMission, 12 )

-----------------------------------ОЮГыЦ®ИЛ1
	DefineMission( 316, "Свободный Дух", 10, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Ох. Это часто называют Сердцем Моряка. Оно отражает внутренний мир любого. Если твои помыслы чисты, ты можешь получить доступ ко всему, что скрыто в этом сердце. Однако, это знание будет потеряно для следующих поколений. У тебя есть Завещание Андрея?<n><t>Похоже, тебе потребуется помощь. Найди <rСекретаря Аргента - Сальвьера> (2219, 2749), он ответит на твои вопросы.")
	MisResultCondition(NoRecord, 10 )
	MisResultCondition(HasMission, 10)
	MisResultAction(ClearMission, 10)
	MisResultAction(SetRecord, 10 )
	MisResultAction(ObligeAcceptMission, 13 )

-------------------------------------------------єЈµБЦ®СЄ2
	DefineMission( 317, "Кровь пирата", 271 )

	MisBeginTalk( "<t>Кровь пиратов? Похоже Вы решили серьёзно разобраться с этим делом! Что бы почувствовать себя настоящим пиратом, Вам необходимо сделать пиратский поступок.<n><t>Убейте <r30 Морских стрелков>.")
	MisBeginCondition(NoRecord, 271)
	MisBeginCondition(NoMission, 271)
	MisBeginCondition(HasMission, 11)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 11)
	MisBeginAction(SetRecord, 11)
	MisBeginAction(AddMission, 271)
	MisBeginAction(AddTrigger, 2711, TE_KILL, 667, 30)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте <r30 Морских стрелков> и вернитесь к <bМонарху Ледыни - Масу> в точку(1346, 451).")
	MisNeed(MIS_NEED_KILL, 667, 30, 10, 30)

	MisResultTalk("<t>Ты убил достаточно <rМорских стрелков>? Твоё сердце теперь принадлежит Пиратам. Этот ключ от тайн пиратской жизни.")
	MisHelpTalk("<t>ты разве уже сделал ператский поступок?")
	MisResultCondition(HasMission, 271 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultCondition(HasFlag, 271, 39)
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 271 )
	MisResultAction(SetRecord, 271 )
	MisResultAction(AddExp,50000,50000)
	MisResultAction(AddMoney,5000,5000)
	MisResultAction(AddExpAndType,2,20000,20000)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,1814,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 271, 10, 30 )
	RegCurTrigger( 2711 )

-------------------------------------------------єЈѕьЦ®»к2
	DefineMission( 318, "Душа флота", 272 )

	MisBeginTalk( "<t>Душа Флота? О! Это было 30 лет назад, а то и больше. Теперь только в музее можно столкнутся с предметами тех лет.<n><t>Если Вы хотите вернуть былые времена и познать жизнь моряка, то сделайте вклад в развитие Морского Флота. <b2 Милkиона>, я думаю, будет достаточно.")
	MisBeginCondition(NoRecord, 272)
	MisBeginCondition(NoMission, 272)
	MisBeginCondition(HasMission, 12)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 12)
	MisBeginAction(SetRecord, 12)
	MisBeginAction(AddMission, 272)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "ринесите <p2 миллиона> золота <bГениралу Вильяму>(2277, 2831).")

	MisResultTalk("<t>Вы положили первый кирпичик в восстановлении Военно Морского Флота Её Величества Королевы.")
	MisHelpTalk("<t>Вы не сделали взнос размером <p2.000.000> золота.")
	MisResultCondition(HasMission, 272 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultCondition(HasMoney, 2000000 )
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 272 )
	MisResultAction(SetRecord, 272 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,8000,8000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,1814,1,4)
	MisResultBagNeed(2)

-------------------------------------------------ОЮГыЦ®ИЛ3
	DefineMission( 319, "Безымянный", 273 )

	MisBeginTalk( "<t>Вы поддерживаете нейтральную сторону? У Вас есть сердце матроса? Позвольте мне взглянуть! Какая красота.<n><t>Что бы доказать, что Вы не трус плывите в Аргент <p(77,3971)> и там на месте, пропустите своё сердце через Послание Андрея!")
	MisBeginCondition(NoRecord, 273)
	MisBeginCondition(NoMission, 273)
	MisBeginCondition(HasMission, 13)
	MisBeginCondition(HasItem, 4221 , 1)
	MisBeginAction(ClearMission, 13)
	MisBeginAction(SetRecord, 13)
	MisBeginAction(AddMission, 273)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Плывите в Аскарон в точку<p(77, 3971)> и кликните 2 раза по <bЗаписке Андрея>. Получив задание вернитесь к Сальверу в точку (2219, 2749).")

	MisResultTalk("<t>Похоже Вы обрели мудрость Андрея и получили ключ.")
	MisHelpTalk("<t>Отправляйтесь в Аскарон в точку(77, 3971) и пропустите через себя Андреево послание.")
	MisResultCondition(HasMission, 273 )
	MisResultCondition(HasMission, 14 )
	MisResultCondition(HasItem, 4221 , 1)
	MisResultAction(TakeItem, 4221, 1 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4222, 1, 4 )
	MisResultAction(ClearMission, 273 )
	MisResultAction(SetRecord, 14 )
	MisResultAction(ClearMission, 14 )
	MisResultAction(SetRecord, 273 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,8000,8000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultBagNeed(1)

-------------------------------------------------ВіµВ°ІµДТЕОп
	DefineMission( 320, "Банк Громограда", 274 )

	MisBeginTalk( "<t>Так, минутку... Угу... Всё ясно...<n><t>К большому моему сожалению, мы не можем Вам отдать завещание Андрея не имея подписей, разрешающих нам это сделать. Соберите все подписи и возвращайтесь за завещанием.")
	MisBeginCondition(NoRecord, 274)
	MisBeginCondition(NoMission, 274)
	MisBeginCondition(HasMission, 15)
	MisBeginCondition(HasItem, 4222, 1)
	MisBeginAction(AddMission, 274)
	MisBeginAction(ClearMission, 15)
	MisBeginAction(SetRecord, 15)
	MisBeginAction(AddTrigger, 2741, TE_GETITEM, 4223, 1)
	MisBeginAction(AddTrigger, 2742, TE_GETITEM, 4224, 1)
	MisBeginAction(AddTrigger, 2743, TE_GETITEM, 4225, 1)
	MisBeginAction(AddTrigger, 2744, TE_GETITEM, 4226, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Соберите все подписи и возвращайтесь к Банкиру Громорада (743,1534).")
	MisNeed(MIS_NEED_ITEM, 4223, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4224, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 4225, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 4226, 1, 40, 1)

	MisResultTalk("<t>Вы купили подписи? Но как, как они Вам подписали, особенно тот старый дурак... Ладно, ладно... Это меня не касается. Главное подписи действительно их, а не подделка.")
	MisHelpTalk("<t>Вы собрали не все подписи.")
	MisResultCondition(HasMission, 274 )
	MisResultCondition(HasItem, 4223 , 1)
	MisResultCondition(HasItem, 4224 , 1)
	MisResultCondition(HasItem, 4225 , 1)
	MisResultCondition(HasItem, 4226 , 1)
	MisResultCondition(HasItem, 4222 , 1)
	MisResultAction(TakeItem, 4222, 1 )
	MisResultAction(TakeItem, 4223, 1 )
	MisResultAction(TakeItem, 4224, 1 )
	MisResultAction(TakeItem, 4225, 1 )
	MisResultAction(TakeItem, 4226, 1 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4227, 1, 4 )
	MisResultAction(ClearMission, 274 )
	MisResultAction(SetRecord, 274 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4223 )
	TriggerAction( 1, AddNextFlag, 274, 10, 1 )
	RegCurTrigger( 2741 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4224 )
	TriggerAction( 1, AddNextFlag, 274, 20, 1 )
	RegCurTrigger( 2742 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4225 )
	TriggerAction( 1, AddNextFlag, 274, 30, 1 )
	RegCurTrigger( 2743 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4226 )
	TriggerAction( 1, AddNextFlag, 274, 40, 1 )
	RegCurTrigger( 2744 )

-------------------------------------------------єЈµБµДЕуУС
	DefineMission( 321, "Друг пиратов", 275 )

	MisBeginTalk( "<t>Дорогой друг! У Вас на лбу написано, что Вы из Флота! Как... Хе-хе-хе Я не подпешу Вам ни чего!<n><t>Так Вы говорите, что друг пиратов?! Хорошо, докажите мне это! Убейте <r30 Морских Стрелков> и я Вам поверю.")
	MisBeginCondition(NoRecord, 275)
	--MisBeginCondition(NoRecord, 276)
	MisBeginCondition(NoMission, 275)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(HasNavyGuild)
	MisBeginAction(AddMission, 275)
	MisBeginAction(AddTrigger, 2751, TE_KILL, 667, 30)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте <r30 морских стрелков> и вернитесь к <bМасу> за подписью в точку(1346,451).")
	MisNeed(MIS_NEED_KILL, 667, 30, 10, 30)

	MisResultTalk("<t>Вы пролили кровь нашему врагу и этим доказали свою преданность. С этого мамента Вы наш друг. Давайте сюда свою бумагу, я её подпешу Вам с радостью.")
	MisHelpTalk("<t>И Вы после этого говорите, что наш друг, убирайтесь от сюда!")
	MisResultCondition(HasMission, 275 )
	MisResultCondition(HasFlag, 275, 39)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4223, 1, 4 )
	MisResultAction(ClearMission, 275 )
	MisResultAction(SetRecord, 275 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 275, 10, 30 )
	RegCurTrigger( 2751 )

-----------------------------------ОТІ»КЗєЈѕь
	DefineMission( 322, "Я не из флота!", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы хотите мою подпись? Я подпишу Вам при том условии, что Вы не из Флота.")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 275 )
	MisResultCondition(NoFlag, 274, 1 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(NoNavyGuild)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4223, 1, 4)
	MisResultAction(SetFlag, 274, 1 )
	MisResultBagNeed(1)

-------------------------------------------------НСАл№ШПµ
	DefineMission( 323, "Разорвать связь", 277 )

	MisBeginTalk( "t>Вы что Батенька, совсем страх потеряли, заявились ко мне и просите подпись? Я ни чего не буду подписывать пиратам!<n><t>Хотя если Вы оставите пиратов и перейдёте на нашу сторону то я смогу Вам подписать Ваш документ.")
	MisBeginCondition(NoRecord, 277)
	MisBeginCondition(NoRecord, 278 )
	MisBeginCondition(NoMission, 277)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(HasPirateGuild)
	MisBeginAction(AddMission, 277)
	MisBeginAction(AddTrigger, 2771, TE_KILL, 145, 10)
	MisBeginAction(AddTrigger, 2772, TE_KILL, 146, 10)
	MisBeginAction(AddTrigger, 2773, TE_KILL, 291, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте пиратов Джека, что бы доказать свою преданность флоту.")
	MisNeed(MIS_NEED_KILL, 145, 10, 10, 10)
	MisNeed(MIS_NEED_KILL, 146, 10, 20, 10)
	MisNeed(MIS_NEED_KILL, 291, 10, 30, 10)

	MisResultTalk("t>Вы сделали хорошее дело и теперь я вижу в Вас будующее. Бросайте Вы этих неудачников и идите служить к нам. Такие люди как Вы не должны Гнить Пиратом.")
	MisHelpTalk("<t>О! Нахал, ты ещё тут? Охрана.. Взять Наглеца и на висельницу его.")
	MisResultCondition(HasMission, 277 )
	MisResultCondition(HasFlag, 277, 19)
	MisResultCondition(HasFlag, 277, 29)
	MisResultCondition(HasFlag, 277, 39)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4224, 1, 4 )
	MisResultAction(ClearMission, 277 )
	MisResultAction(SetRecord, 277 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 145 )
	TriggerAction( 1, AddNextFlag, 277, 10, 10 )
	RegCurTrigger( 2771 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 146 )
	TriggerAction( 1, AddNextFlag, 277, 20, 10 )
	RegCurTrigger( 2772 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 291 )
	TriggerAction( 1, AddNextFlag, 277, 30, 10 )
	RegCurTrigger( 2773 )

-----------------------------------ОТІ»КЗєЈµБ
	DefineMission( 324, "Я не пират!", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Привет Матрос, Давай я тебе подпишу.")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 277 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(NoFlag, 274, 2 )
	MisResultCondition(NoPirateGuild)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4224, 1, 4)
	MisResultAction(SetFlag, 274, 2 )
	MisResultBagNeed(1)

-------------------------------------------------№В¶АµДХЅКї
	DefineMission( 325, "Одинокий воин", 279 )

	MisBeginTalk( "<t>Если Вы выбрали нейтральную сторону, значит Вы или глупец зазнайка или действительно воин одиночка.<n><t>Это можно выяснить одним способом. Докажите свою независимость и тогда я подпишу Вам всё, что Вы скажете.")
	MisBeginCondition(NoRecord, 279)
	MisBeginCondition(NoRecord, 280 )
	MisBeginCondition(NoMission, 279)
	MisBeginCondition(HasMission, 274)
	MisBeginCondition(NoGuild)
	MisBeginAction(AddMission, 279)
	MisBeginAction(AddTrigger, 2791, TE_KILL, 145, 5)
	MisBeginAction(AddTrigger, 2792, TE_KILL, 146, 5)
	MisBeginAction(AddTrigger, 2793, TE_KILL, 291, 5)
	MisBeginAction(AddTrigger, 2794, TE_KILL, 667, 5)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте требуемых монстров и вернитесь к Секретарю Аргента - Сальеру за подпесью!")
	MisNeed(MIS_NEED_KILL, 145, 5, 10, 5)
	MisNeed(MIS_NEED_KILL, 146, 5, 20, 5)
	MisNeed(MIS_NEED_KILL, 291, 5, 30, 5)
	MisNeed(MIS_NEED_KILL, 667, 5, 40, 5)

	MisResultTalk("<t>Вы достойны моего уважения воин. Давайте я Вам подпишу документ.")
	MisHelpTalk("<t>Вы ничтожны! Теперь понятно почему Вы один, Вас невзяли ни Пираты ни Флот. Убирайтесь с глаз моих и не возвращайтесь ко мне пока не убьёте монстров.")
	MisResultCondition(HasMission, 279 )
	MisResultCondition(HasFlag, 279, 14)
	MisResultCondition(HasFlag, 279, 24)
	MisResultCondition(HasFlag, 279, 34)
	MisResultCondition(HasFlag, 279, 44)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4225, 1, 4 )
	MisResultAction(ClearMission, 279 )
	MisResultAction(SetRecord, 279 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 145 )
	TriggerAction( 1, AddNextFlag, 279, 10, 5 )
	RegCurTrigger( 2791 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 146 )
	TriggerAction( 1, AddNextFlag, 279, 20, 5 )
	RegCurTrigger( 2792 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 291 )
	TriggerAction( 1, AddNextFlag, 279, 30, 5 )
	RegCurTrigger( 2793 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 667 )
	TriggerAction( 1, AddNextFlag, 279, 40, 5 )
	RegCurTrigger( 2794 )

-----------------------------------ЗїґуµДєу¶Ь
	DefineMission( 326, "Лучший банк", 274, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Так как у Вас поддержка серьёзной Гильдии я поставлю подпись.")
	MisResultCondition(NoRecord, 274 )
	MisResultCondition(NoRecord, 279 )
	MisResultCondition(NoFlag, 274, 3 )
	MisResultCondition(HasMission, 274)
	MisResultCondition(HasGuild)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4225, 1, 4)
	MisResultAction(SetFlag, 274, 3 )
	MisResultBagNeed(1)

-------------------------------------------------ПґЛўЧп¶с
	DefineMission( 327, "Кающийся грешник", 281 )

	MisBeginTalk( "<t>Перед Богом все равны, дитя моё. И не имеет значение Пират ты или Матрос Флота. Я подпишу тебе документ, но с начала попрошу тебя об одной услуге: Убей исчадие ада - <r30 Русалок-призраков>.")
	MisBeginCondition(NoRecord, 281)
	MisBeginCondition(NoMission, 281)
	MisBeginCondition(HasMission, 274)
	MisBeginAction(AddMission, 281)
	MisBeginAction(AddTrigger, 2811, TE_KILL, 620, 30)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте Русалку-Призрака и доложите Альбуде (898, 3640).")
	MisNeed(MIS_NEED_KILL, 620, 30, 10, 30)

	MisResultTalk("<t>Да благословят Вас Боги. Давайте свой Документ. Я с удовольствием его Вам подпишу.")
	MisHelpTalk("<t>Пока исчадие ада ходит по этой земле я не могу думать ни о каких бумажках!")
	MisResultCondition(HasMission, 281 )
	MisResultCondition(HasFlag, 281, 39)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4226, 1, 4 )
	MisResultAction(ClearMission, 281 )
	MisResultAction(SetRecord, 281 )
	MisResultAction(AddExp,80000,80000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,3885,1,4)
	MisResultBagNeed(2)


	InitTrigger()
	TriggerCondition( 1, IsMonster, 620 )
	TriggerAction( 1, AddNextFlag, 281, 10, 30 )
	RegCurTrigger( 2811 )

-----------------------------------ВіµВ°ІµДТЕКй
	DefineMission( 328, "Завещание Андрея", 16, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Зачем ты вернулся? Мои ребята больше не тронут тебя и ты оставь их в покое!<n><t>Что? Ты получил завещание Андрея? Только с позволения Великой Четверки ты мог сделать это! Дай мне его проверить!")
	MisResultCondition(NoRecord, 16 )
	MisResultCondition(HasMission, 16)
	MisResultCondition(HasItem, 4227, 1)
	MisResultAction(ClearMission, 16)
	MisResultAction(SetRecord, 16 )

----------------------------ТЕКйµДГШГЬ
	DefineMission( 329, "Секрет завещания", 282 )
	
	MisBeginTalk( "<t>Ха-ха. Андрей... Ну конечно же он не мог так просто оставить своё завещание... Не смотрите так на меня, я не знаю как прочитать завещание. которого не видно.<n><t>Возможно Малыш Дениель сможет Вам помочь. Ах уж этот стары Пёс... Андрей, Андрей. Всегда любил загадки." )
	MisBeginCondition(NoRecord, 282)
	MisBeginCondition(HasRecord, 16)
	MisBeginCondition(NoMission, 282)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 282)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Поговорите о завещании с Малышом Дениелем(2193, 2730).")
	
	MisHelpTalk("<t>Отправляйтесь к Малышу Дениелю, но помните, ни под какими пытками не говорите ни кому, что это я Вас к нему послал.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ТЕКйµДГШГЬ
	DefineMission( 330, "Секрет завещания", 282, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Дайте ка я посмотрю... Хм, пахнет невидимыми чернилами. Я удивлён, что есть люди, которые знают, как сделать невидимые чернила. Я могу Вам помочь в проявителе невидимых чернил, но Вы должны мне сказать, кто же мог Вам рассказать о том, что я умею делать проявитель.")
	MisResultCondition(NoRecord, 282 )
	MisResultCondition(HasMission, 282)
	MisResultCondition(HasItem, 4227, 1)
	MisResultAction(ClearMission, 282)
	MisResultAction(SetRecord, 282 )

----------------------------ЅЬїЛЅйЙЬ
	DefineMission( 331, "Вступление Джека", 283 )
	
	MisBeginTalk( "t>Что?! Вы общаетесь с этим гнусным пиратом?! Передайте ему, что его дни сочтены! Убирайтесь с глаз моих и что бы я Вас больше не видел." )
	MisBeginCondition(NoRecord, 283)
	MisBeginCondition(HasRecord, 282)
	MisBeginCondition(NoMission, 283)
	MisBeginCondition(NoRecord, 284)
	MisBeginCondition(NoMission, 284)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 283)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Отправляйтесь в (1672, 3777) и посмотрите, что произошло с Джеком, после того как Вы его предали.")
	
	MisHelpTalk("<t>Ты ещё тут? А ну убирайся от сюда пока я не пролил на тебя кислоту!")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------ѕЖ№Эґ«ОЕ
	DefineMission( 332, "Барные слухи", 284 )

	MisBeginTalk( "<t>Значит это Вы узнали в таверне? Я наверно был сильно пьян раз сам распустил язык.<n><t>Ладно, без обид тогда. Если Вы сможете мне принести необходимые ингредиенты, то я смогу Вам помочь с проявителем. Слушайте внимательно, что Вам надо принести: <b3 Хвоста кровососущего выползня>, <b5 Сердец кровожадной медузы>, <b7 Знаков древних русалок> и <b9 Спинных плавников топаз.дедельфинов>. Поспешите принести мне это всё, пока я не передумал.")
	MisBeginCondition(NoRecord, 284)
	MisBeginCondition(NoMission, 284)
	MisBeginCondition(NoMission, 283)
	MisBeginCondition(NoRecord, 283)
	MisBeginCondition(HasRecord, 282)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(AddMission, 284)
	MisBeginAction(AddTrigger, 2841, TE_GETITEM, 1255, 3)
	MisBeginAction(AddTrigger, 2842, TE_GETITEM, 1291, 5)
	MisBeginAction(AddTrigger, 2843, TE_GETITEM, 1365, 7)
	MisBeginAction(AddTrigger, 2844, TE_GETITEM, 1292, 9)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите всё это Малышу Дениелю в Аргент в точку(2193, 2730).")
	MisNeed(MIS_NEED_ITEM, 1255, 3, 10, 3)
	MisNeed(MIS_NEED_ITEM, 1291, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 1365, 7, 30, 7)
	MisNeed(MIS_NEED_ITEM, 1292, 9, 40, 9)

	MisResultTalk("<t>Хорошо! Вы принесли всё то, о чём я Вас просил. Я давно не занимался изготовлением проявителей так что если, что то не получиться, не вините меня.")
	MisHelpTalk("<t>Вы не хотите мне нести ингредиенты, смотрите, ведь я могу и передумать делать проявитель для Вас!")
	MisResultCondition(HasMission, 284 )
	MisResultCondition(HasItem, 1255, 3)
	MisResultCondition(HasItem, 1291, 5)
	MisResultCondition(HasItem, 1365, 7)
	MisResultCondition(HasItem, 1292, 9)
	MisResultAction(TakeItem, 1255, 3)
	MisResultAction(TakeItem, 1291, 5)
	MisResultAction(TakeItem, 1365, 7)
	MisResultAction(TakeItem, 1292, 9)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4228, 1, 4)
	MisResultAction(SetRecord, 284 )
	MisResultAction(ClearMission, 284 )
	MisResultBagNeed(1)
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 1255 )
	TriggerAction( 1, AddNextFlag, 284, 10, 3 )
	RegCurTrigger( 2841 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1291 )
	TriggerAction( 1, AddNextFlag, 284, 20, 5 )
	RegCurTrigger( 2842 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1365 )
	TriggerAction( 1, AddNextFlag, 284, 30, 7 )
	RegCurTrigger( 2843 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1292 )
	TriggerAction( 1, AddNextFlag, 284, 40, 9 )
	RegCurTrigger( 2844 )

----------------------------ёРЗйѕА·Ч
	DefineMission( 333, "Любовное переплетение", 285 )
	
	MisBeginTalk( "<t>Боже мой! Вы проигнорировали моё предупреждение! Разве я не просил Вас не говорить Малышу Дениелю о бо мне?<n><t>Ладно. Забудем о Вашей ошибке. <bМалыша Дениэля> сможет успокоить только <bДина>(2224,2887). Только теперь думайте своей головой, прежде чем что ни будь ляпнуть лишнее." )
	MisBeginCondition(NoRecord, 285)
	MisBeginCondition(HasMission, 283)
	MisBeginCondition(NoMission, 285)
	MisBeginAction(AddMission, 285)
	MisBeginAction(SetRecord, 283)
	MisBeginAction(ClearMission, 283)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Барменшой Диной в точке(2224,2887).")
	
	MisHelpTalk("<t>Ну что же Вы опять тормозите? Идите уже в Бар Аргента и поговорите с барменшей Донной.")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------ёРЗйѕА·Ч
	DefineMission( 334, "Любовное переплетение", 286 )

	MisBeginTalk( "<t>Что? Прошло уже столько лет, а Малыш Дениель до сих пор не может простить Джеку его предательство?<n><t>Я попробую помочь Вам помириться с Малышом Дениелем.<n><t>Я слышала, что Малыш Дениель занимается исследованием Тыкв. Принесите мне одну <bУжасную тыквенную голову>. Вы сможете получить её убив <rУжасного рыцаря тыкв>.")
	MisBeginCondition(NoRecord, 286)
	MisBeginCondition(NoMission, 286)
	MisBeginCondition(HasRecord, 283)
	MisBeginCondition(HasMission, 285)
	MisBeginAction(AddMission, 286)
	MisBeginAction(AddTrigger, 2861, TE_GETITEM, 4735, 1)
	MisBeginAction(SetRecord, 285)
	MisBeginAction(ClearMission, 285)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите <bДине> (2224, 2887) одну <pУжасную тыквенную голову>.")
	MisNeed(MIS_NEED_ITEM, 4735, 1, 10, 1)

	MisResultTalk("<t>Хи-хи. Это красивая Тыква. Я уверена, что увидев мою подпись на ней он не откажет Вам в проявителе.")
	MisHelpTalk("<t>Я не смогу Вам помочь пока Вы не соезволите постараться. Принесите мне <pУжасную тыквенную голову>.")
	MisResultCondition(HasMission, 286 )
	MisResultCondition(HasItem, 4735, 1)
	MisResultAction(TakeItem, 4735, 1)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4229, 1, 4)
	MisResultAction(SetRecord, 286 )
	MisResultAction(ClearMission, 286 )
	MisResultAction(ObligeAcceptMission, 17 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4735 )
	TriggerAction( 1, AddNextFlag, 286, 10, 1 )
	RegCurTrigger( 2861 )

-----------------------------------ёРЗйѕА·Ч
	DefineMission( 335, "Узы Любви", 17, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Разве я не просил тебя держаться от меня подальше? Постой! Что это у тебя в руках? Тыква с подписью Дины? Можешь ли ты дать мне ее? Попробуй использовать Проявитель невидимых чернил.")
	MisResultCondition(NoRecord, 17 )
	MisResultCondition(HasMission, 17 )
	MisResultCondition(HasItem, 4229, 1)
	MisResultAction(TakeItem, 4229, 1 )
	MisResultAction(SetRecord, 17 )
	MisResultAction(ClearMission, 17 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4228, 1, 4 )
	MisResultBagNeed(1)

-------------------------------------------------єЈµБУпСФ
	DefineMission( 336, "Язык пиратов", 287 )

	MisBeginTalk( "<t>О! Ты смог прочитать невидимое послание Андрея! Никто не верит больше в эту легенду, но если вы настаиваете я расскажу о ней. В легенде, красивая русалка оберегает скрытое сокровище от посторонних глаз. Согласно легенде, если замочить свежую кровь на скелет, то он приведет к кладу. Однако никому это раньше не удавалось сделать. Готовы ли вы попробовать?<n><t>(Русалки? Их так много , как мне найти нужную? Может быть <yКоролева русалок>? Я не думаю, что это всё так просто!).")
	MisBeginCondition(NoRecord, 287)
	MisBeginCondition(NoRecord, 18)
	MisBeginCondition(HasMission, 18)
	MisBeginCondition(HasItem, 4227, 1)
	MisBeginAction(TakeItem, 4227, 1)
	MisBeginAction(AddMission, 287)
	MisBeginAction(AddTrigger, 2871, TE_GETITEM, 4230, 1)
	MisBeginAction(SetRecord, 18)
	MisBeginAction(ClearMission, 18)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Отправляйтесь в Магический океан и убейте <rКоролеву русалок> в точке(3385,1985). И принесите <pРусалочье тело> <bДжеку>.")
	MisNeed(MIS_NEED_ITEM, 4230, 1, 10, 1)

	MisResultTalk("<t>О вы нашли этот скелет! А Вы не такой уж и простачок, каким показалось мне при нашей первой встрече. Теперь плывите в Магический Океан  в точку <p(1843,1717)> и пролейте кровь на <bРусалочье тело>.")
	MisHelpTalk("<t>Вы не смогли её найти, я так и думал. Это Всего лишь легенда. Но всё равно Вы можете проявить и по больше желания в поисках.")
	MisResultCondition(HasMission, 287 )
	MisResultCondition(HasItem, 4230, 1)
	MisResultAction(SetRecord, 287 )
	MisResultAction(ClearMission, 287 )
	MisResultAction(ObligeAcceptMission, 19 )
	MisResultAction(AddExp,300000,300000)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,30000,30000)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,3463,10,4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,1092,5,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4230 )
	TriggerAction( 1, AddNextFlag, 287, 10, 1 )
	RegCurTrigger( 2871 )

-----------------------------------ГФµДИХјЗ
	DefineMission( 337, "Таинственный дневник", 20, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Я давно уже не видел подобных писаний. Зачем ты здесь? Я думал, что мне никогда не попадутся в руки такие вещи. К сожалению, я поклялся никогда и ни для кого больше не переводить с этого языка. Пожалуйста, оставь свою затею, это - проклятый язык и любого, кто окажется к нему причастен, ждет незавидная судьба.<n><t>Пожалуй, только так называемые, Последователи Богини могут взять на себя такой риск.")
	MisResultCondition(NoRecord, 20 )
	MisResultCondition(HasMission, 20 )
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetRecord, 20 )
	MisResultAction(ClearMission, 20 )
	
----------------------------Е®ЙсµДЧ·ЛжХЯ
	DefineMission( 338, "Последователь богини", 288 )
	
	MisBeginTalk( "<t>Отправляйтесь к Предводителю клана Альбуде в Шайтан!" )
	MisBeginCondition(NoRecord, 288)
	MisBeginCondition(HasRecord, 20)
	MisBeginCondition(NoMission, 288)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 288)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Поговорить с Альбудой в точке(898, 3640).")
	
	MisHelpTalk("<t>Я больше ни чем не могу Вам помочь.")
	MisResultCondition(AlwaysFailure )

-----------------------------------Е®ЙсµДЧ·ЛжХЯ
	DefineMission( 339, "Последователь богини", 288, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Уберите немедленно это дьявольское письмо с глаз моих и, что бы я больше не видел это проклятое письмо! <pЖрица - Ада> изучает этот дьявольский язык, и возможно она Вам поможет, но я не обещаю Вам, что и она будет переводить эту ересь.")
	MisResultCondition(NoRecord, 288)
	MisResultCondition(HasMission, 288 )
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetRecord, 288 )
	MisResultAction(ClearMission, 288 )

----------------------------КҐЕ®
	DefineMission( 340, "Благочестивая жрица", 289 )
	
	MisBeginTalk( "<t>Но я должен Вас предупредить, не стоит связываться с такими людьми как <bАда>, иначе о Вас пойдёт по миру дурная слава.<n><t>(Что такого страшного в этом послании? Почему эти старики, все как один, кричат на меня и отворачиваются от этого письма? Возможно они трусы? Или это я глупец и не слушаю предупреждений старейшин? Во всяком случае мне стоит попытать счастье и отправиться к <pЖрице Аде>, помнится <bАльбуда> говорил, что она не по далёку от <pШайтана в точке(862,3303)>. Я так и сделаю, отправлюсь к ней, а там будь что будет!)" )
	MisBeginCondition(NoRecord, 289)
	MisBeginCondition(HasRecord, 288)
	MisBeginCondition(NoMission, 289)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 289)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Ищите Жрицу Аду по координатам(862, 3303).")
	
	MisHelpTalk("<t>Я ещё раз повторяю, не лезьте не в своё дело и оставьте эту глупую затею!")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------тЇіПµДЦ¤Гч
	DefineMission( 341, "Доказательство набожности", 290 )

	MisBeginTalk( "<t>Давным давно произошёл инцидент и Предводитель клана Альбуда запретил все исследования Демонического языка, назвав его Ересью, а тех кто общается на нём Еретиками!<n><t>Как Вы уже поняли, я смогу Вам помочь, но об этом придется молчать. Вы должны пройти испытания на чистоту помыслов и души, так как только святые люди и с чистым сердцем смогут влезть в Демонический язык не став его последователем! Если Душа Ваша окажется под сомнением на чистоту и Ваши помыслы будут грешными, то мы выпустим на волю Демона, который приведёт мир в Хаос и разрушения!<n><t>Есть люди которые смогут нам с вами помочь, отправляйтесь к <pВерховному жрецу - Геньону> в точку(862,3500). Он скажет Вам, как очистить душу, и стать послушником Богини.")
	MisBeginCondition(NoRecord, 290)
	MisBeginCondition(HasMission, 289)
	MisBeginCondition(HasItem, 4231, 1)
	MisBeginAction(AddMission, 290)
	MisBeginAction(AddTrigger, 2901, TE_GETITEM, 3954, 1)
	MisBeginAction(SetRecord, 289)
	MisBeginAction(ClearMission, 289)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Очистите свою душу и получите Благословление у Верховного жреца - Геньона(862, 3500).")
	MisNeed(MIS_NEED_ITEM, 3954, 1, 15, 1)

	MisResultTalk("<t>Я надеюсь Вы найдёте истину и разберётесь, что произходит. Вот Ваш Журнал, я перевела его, и да хранит Вас Бог дитя моё.")
	MisHelpTalk("<t>Ваша душу ещё не чиста, а Ваш разум ещё не готов принять зловещее сказания, приходите ко мне когда Вас Благославит Жрец Геньон.")
	MisResultCondition(HasMission, 290 )
	MisResultCondition(HasItem, 3954, 1)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(TakeItem, 4231, 1)
	MisResultAction(TakeItem, 3954, 1)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4232, 1, 4)
	MisResultAction(SetRecord, 290 )
	MisResultAction(ClearMission, 290 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3954 )
	TriggerAction( 1, AddNextFlag, 290, 15, 1 )
	RegCurTrigger( 2901 )


-----------------------------------тЇіПµДЦ¤Гч
	DefineMission( 342, "Доказательство набожности", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Малышка, с тех пор как Вы стали помогать людям и лечить их от болезней, Вы доказали, что Ваше сердце и Ваша душа чисты. Возьмите этот <pПатент о благочестии>, и ступайте с богом!")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 5)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------тЇіПµДЦ¤Гч
	DefineMission( 343, "Доказательство набожности", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Малышка, с тех пор как Вы стали помогать людям и лечить их от болезней, Вы доказали, что Ваше сердце и Ваша душа чисты. Возьмите этот <pПатент о благочестии>, и ступайте с богом!")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 13)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------тЇіПµДЦ¤Гч
	DefineMission( 344, "Доказательство набожности", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Малышка, с тех пор как Вы стали помогать людям и лечить их от болезней, Вы доказали, что Ваше сердце и Ваша душа чисты. Возьмите этот <pПатент о благочестии>, и ступайте с богом!")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(PfEqual, 14)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultBagNeed(1)
	
-----------------------------------тЇіПµДЦ¤Гч
	DefineMission( 345, "Доказательство набожности", 290, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Малышка, с тех пор как Вы стали помогать людям и лечить их от болезней, Вы доказали, что Ваше сердце и Ваша душа чисты. Возьмите этот <pПатент о благочестии>, и ступайте с богом!")
	MisResultCondition(NoRecord, 290)
	MisResultCondition(NoFlag, 290, 1)
	MisResultCondition(NoItem, 3954, 1)
	MisResultCondition(HasMission, 290 )
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(HasItem, 4231, 1)
	MisResultAction(SetFlag, 290, 1 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 346, "Испытание богини", 291 )

	MisBeginTalk( "<t>.Вы готовы? Тогда приступим.<n><t>Первое что Вы должны сделать это убить <r10 Стальных мумий>. Вы их найдёте в Аскароне(440,1440). ")
	MisBeginCondition(NoRecord, 291)
	MisBeginCondition(HasMission, 290)
	MisBeginCondition(HasFlag, 290, 1)
	MisBeginAction(AddMission, 291)
	MisBeginAction(AddTrigger, 2911, TE_KILL, 42, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Первое испытание")
	MisNeed(MIS_NEED_KILL, 42, 10, 10, 10)

	MisResultTalk("<t>Поздравляю, Вы прошли первое испытание.")
	MisHelpTalk("<t>Старайтесь дитя моё и у Вас всё получиться. И да помогут Вам Боги.")
	MisResultCondition(HasMission, 291 )
	MisResultCondition(HasFlag, 291, 19)
	MisResultAction(SetRecord, 291 )
	MisResultAction(ClearMission, 291 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 42 )
	TriggerAction( 1, AddNextFlag, 291, 10, 10 )
	RegCurTrigger( 2911 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 347, "Испытание богини", 292 )

	MisBeginTalk( "<t>Вы сможете пройти эти испытания, я верю в Вас.<n><t>Теперь отправляйтесь в (511,1721) Аскарон и убейте <r10 Неупокоенных воинов>.")
	MisBeginCondition(NoRecord, 292)
	MisBeginCondition(HasRecord, 291)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 292)
	MisBeginAction(AddTrigger, 2921, TE_KILL, 267, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Второе испытание")
	MisNeed(MIS_NEED_KILL, 267, 10, 10, 10)

	MisResultTalk("<t>Поздравляю, Боги на Вашей стороне.")
	MisHelpTalk("<t>Старайтесь дитя моё и всё получиться.")
	MisResultCondition(HasMission, 292 )
	MisResultCondition(HasFlag, 292, 19)
	MisResultAction(SetRecord, 292 )
	MisResultAction(ClearMission, 292 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 267 )
	TriggerAction( 1, AddNextFlag, 292, 10, 10 )
	RegCurTrigger( 2921 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 348, "Испытание богини", 293 )

	MisBeginTalk( "<t>Что бы пройти третье испытание Вам надо убить <r10 Смертоносных скелетов-лучников>(919,1581). Остерегайтесь стрел.")
	MisBeginCondition(NoRecord, 293)
	MisBeginCondition(HasRecord, 292)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 293)
	MisBeginAction(AddTrigger, 2931, TE_KILL, 541, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Третье испытание")
	MisNeed(MIS_NEED_KILL, 541, 10, 10, 10)

	MisResultTalk("<t>Поздравляю, Боги на Вашей стороне.")
	MisHelpTalk("<t>Старайтесь дитя моё и всё получиться.")
	MisResultCondition(HasMission, 293 )
	MisResultCondition(HasFlag, 293, 19)
	MisResultAction(SetRecord, 293 )
	MisResultAction(ClearMission, 293 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 541 )
	TriggerAction( 1, AddNextFlag, 293, 10, 10 )
	RegCurTrigger( 2931 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 349, "Испытание богини", 294 )

	MisBeginTalk( "t>Четвёртое испытание будет не простым.<n><t>Вам необходимо убить <r10 Предводителей скелетов-воинов>. Вы их найдёте по координатам в Аскароне(360,1440). Я Вас умоляю, будьте осторожны. Кто умрёт от их мечей, тот обречён на вечную смерть в Аду!")
	MisBeginCondition(NoRecord, 294)
	MisBeginCondition(HasRecord, 293)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 294)
	MisBeginAction(AddTrigger, 2941, TE_KILL, 565, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Четвёртое испытание")
	MisNeed(MIS_NEED_KILL, 565, 10, 10, 10)

	MisResultTalk("<t>Поздравляю, Боги на Вашей стороне.")
	MisHelpTalk("<t>Старайтесь дитя моё и всё получиться.")
	MisResultCondition(HasMission, 294 )
	MisResultCondition(HasFlag, 294, 19)
	MisResultAction(SetRecord, 294 )
	MisResultAction(ClearMission, 294 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 565 )
	TriggerAction( 1, AddNextFlag, 294, 10, 10 )
	RegCurTrigger( 2941 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 350, "Испытание богини", 295 )

	MisBeginTalk( "<t>Пятым испытанием для Вас будет - это отправить на тот свет <r10 Проклятых тел>. Ищите их в Аскароне в(360,1440).")
	MisBeginCondition(NoRecord, 295)
	MisBeginCondition(HasRecord, 294)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 295)
	MisBeginAction(AddTrigger, 2951, TE_KILL, 52, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Пятое испытание")
	MisNeed(MIS_NEED_KILL, 52, 10, 10, 10)

	MisResultTalk("<t>Поздравляю, Боги на Вашей стороне.")
	MisHelpTalk("<t>Старайтесь дитя моё и всё получиться.")
	MisResultCondition(HasMission, 295 )
	MisResultCondition(HasFlag, 295, 19)
	MisResultAction(SetRecord, 295 )
	MisResultAction(ClearMission, 295 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 52 )
	TriggerAction( 1, AddNextFlag, 295, 10, 10 )
	RegCurTrigger( 2951 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 351, "Испытание богини", 296 )

	MisBeginTalk( "<t>Теперь отправляйтесь в Аскарон в точку(445,1571) и покончите с <rКровожадными охотниками>.")
	MisBeginCondition(NoRecord, 296)
	MisBeginCondition(HasRecord, 295)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 296)
	MisBeginAction(AddTrigger, 2961, TE_KILL, 666, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Шестое испытание")
	MisNeed(MIS_NEED_KILL, 666, 10, 10, 10)

	MisResultTalk("<t>Поздравляю, Боги на Вашей стороне.")
	MisHelpTalk("<t>Старайтесь дитя моё и всё получиться.")
	MisResultCondition(HasMission, 296 )
	MisResultCondition(HasFlag, 296, 19)
	MisResultAction(SetRecord, 296 )
	MisResultAction(ClearMission, 296 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 666 )
	TriggerAction( 1, AddNextFlag, 296, 10, 10 )
	RegCurTrigger( 2961 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 352, "Испытание богини", 297 )

	MisBeginTalk( "<t>Убейте <r10 Кошмарных проклятых трупов>(360, 1340). Не перепутайте их с Проклятым телом. Они похожи с виду, но эти гораздо опаснее.")
	MisBeginCondition(NoRecord, 297)
	MisBeginCondition(HasRecord, 296)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 297)
	MisBeginAction(AddTrigger, 2971, TE_KILL, 508, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Седьмое испытание")
	MisNeed(MIS_NEED_KILL, 508, 10, 10, 10)

	MisResultTalk("<t>Поздравляю, Боги на Вашей стороне.")
	MisHelpTalk("<t>Старайтесь дитя моё и всё получиться.")
	MisResultCondition(HasMission, 297 )
	MisResultCondition(HasFlag, 297, 19)
	MisResultAction(SetRecord, 297 )
	MisResultAction(ClearMission, 297 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 508 )
	TriggerAction( 1, AddNextFlag, 297, 10, 10 )
	RegCurTrigger( 2971 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 353, "Испытание богини", 298 )

	MisBeginTalk( "<t>Отправляйтесь на поиски <rУжасных рыцарей тыквы> и убейте <r10> этих рыцарей.")
	MisBeginCondition(NoRecord, 298)
	MisBeginCondition(HasRecord, 297)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 298)
	MisBeginAction(AddTrigger, 2981, TE_KILL, 518, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Восьмое испытание")
	MisNeed(MIS_NEED_KILL, 518, 10, 10, 10)

	MisResultTalk("<t>Поздравляю, Боги на Вашей стороне.")
	MisHelpTalk("<t>Старайтесь дитя моё и всё получиться.")
	MisResultCondition(HasMission, 298 )
	MisResultCondition(HasFlag, 298, 19)
	MisResultAction(SetRecord, 298 )
	MisResultAction(ClearMission, 298 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 518 )
	TriggerAction( 1, AddNextFlag, 298, 10, 10 )
	RegCurTrigger( 2981 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 354, "Испытание богини", 299 )

	MisBeginTalk( "<t><rЗловещий энт>(662, 2460) очень опасен. Он убивает всех не задумываясь. Будьте с ним осторожнее. Убейте <r10 Зловещих энтов>.")
	MisBeginCondition(NoRecord, 299)
	MisBeginCondition(HasRecord, 298)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 299)
	MisBeginAction(AddTrigger, 2991, TE_KILL, 547, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Девятое испытание")
	MisNeed(MIS_NEED_KILL, 547, 10, 10, 10)

	MisResultTalk("<t>Поздравляю, Боги на Вашей стороне.")
	MisHelpTalk("<t>Старайтесь дитя моё и всё получиться.")
	MisResultCondition(HasMission, 299 )
	MisResultCondition(HasFlag, 299, 19)
	MisResultAction(SetRecord, 299 )
	MisResultAction(ClearMission, 299 )
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 547 )
	TriggerAction( 1, AddNextFlag, 299, 10, 10 )
	RegCurTrigger( 2991 )

-------------------------------------------------Е®ЙсµДїјСй
	DefineMission( 355, "Испытание богини", 300 )

	MisBeginTalk( "<t>Последним испытанием для Вас будет Убить, от имени Богини, <rАнибуса>. Вы его найдёте на острове Лета в Пещере Дракона. Благословит Вас Богиня. Ни каждому дано его победить!")
	MisBeginCondition(NoRecord, 300)
	MisBeginCondition(HasRecord, 299)
	MisBeginCondition(HasMission, 290)
	MisBeginAction(AddMission, 300)
	MisBeginAction(AddTrigger, 3001, TE_KILL, 190, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Последнее испытание")
	MisNeed(MIS_NEED_KILL, 190, 1, 10, 1)

	MisResultTalk("<t>Очень хорошо! Вы чисты сердцем и душой. Возьмите этот <bПатент о благочестии> и ступайте с Богом к <pСвятой Жрице - Аде>!")
	MisHelpTalk("<t>Старайтесь дитя моё и всё получиться.")
	MisResultCondition(HasMission, 300 )
	MisResultCondition(HasFlag, 300, 10)
	MisResultAction(SetRecord, 300 )
	MisResultAction(ClearMission, 300 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3954, 1, 4 )
	MisResultAction(AddExp,350000,350000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,3844,15,4)
	MisResultBagNeed(2)

		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 190 )
	TriggerAction( 1, AddNextFlag, 300, 10, 1 )
	RegCurTrigger( 3001 )


-----------------------------------ЙсГШРЎХт
	DefineMission( 356, "Таинственный город", 21, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Вы ищете точное местоположение?<n><t>В исходном тексте ничего об это не упоминается. Даже название Веснограда. Если бы пьянчужка Антоний в точке (2222, 2889) не упомянул бы о нем, я бы так никогда и не разобрался во всей этой истории.")
	MisResultCondition(NoRecord, 21)
	MisResultCondition(HasMission, 21 )
	MisResultAction(SetRecord, 21 )
	MisResultAction(ClearMission, 21 )

----------------------------ґє·зРЎХт
	DefineMission( 357, "Весноград", 301 )
	
	MisBeginTalk( "<t>Пьяные, как правило несут бред, но даже в их бреде иногда проскальзывают логические мысли. Выбор за Вами, или поверить бреду Пьяницы или искать другие пути, для решения Вашей проблемы. Решайте сами. Я сказала всё, что знала(Может это ирония судьбы, от куда этому алкоголику знать о Весне? Он кроме рюмки своей и ни чего не видел в своей жизни. Хотя другого выхода у меня нет, придется доверить свою судьбу этому пьянице). " )
	MisBeginCondition(NoRecord, 301)
	MisBeginCondition(HasRecord, 21)
	MisBeginCondition(NoMission, 301)
	MisBeginAction(AddMission, 301)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Поговорите с пьяницей в Баре Аргента(2222,2889) о Веснограде.")
	
	MisHelpTalk("<t>Идите в Бар Аргента.")
	MisResultCondition(AlwaysFailure )

-------------------------------------------------Г°ПХѕ«Йс
	DefineMission( 358, "Дух исследователя", 302 )

	MisBeginTalk( "<t>Весноград! От куда Вам известно о этом месте? Вам ни когда не попасть туда! Я не возьму грех на душу не убедившись в Ваших способностях! Вас убьют в море, а мне потом с этим грехом жить!<n><t>Вы ещё молоды и вам рано умирать. тем более такой глупой смертью!")
	MisBeginCondition(NoRecord, 302)
	MisBeginCondition(HasMission, 301)
	MisBeginCondition(HasItem, 4232, 1)
	MisBeginAction(AddMission, 302)
	MisBeginAction(SetRecord, 301)
	MisBeginAction(ClearMission, 301)
	MisBeginAction(AddTrigger, 3021, TE_GETITEM, 3962, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Поговорите с <bМалышом Даниэлем>(2193, 2730) о испытаниях, после прохождения испытаний вернитесь к Антонию в точку (2222, 2889).")
	MisNeed(MIS_NEED_ITEM, 3962, 1, 10, 1)

	MisResultTalk("<t>Вы доказали мне, что готовы отправиться в столь опасное путешествие. *Кхе-кхе* Честно говоря я сам небыл там, но зато я слышал много историй о этом месте от <bБабушки Белди>!<n><t>Почему вы так на меня злобно смотрите? *Ик* Я же всего лишь пьяница этого бара. Хех... Поговорите с Бабушкой Белди, она уж точно знает о <pВеснограде> всё.")
	MisHelpTalk("<t>Я ещё раз повторяю *Ик* Молод ты ещё умирать, эх.. молод!")
	MisResultCondition(HasMission, 302 )
	MisResultCondition(HasItem, 3962, 1 )
	MisResultCondition(HasItem, 4232, 1 )
	MisResultAction(TakeItem, 4232, 1 )
	MisResultAction(TakeItem, 3962, 1 )
	MisResultAction(SetRecord, 302 )
	MisResultAction(SetRecord, 312 )
	MisResultAction(ClearMission, 302 )
			
	InitTrigger()
	TriggerCondition( 1, IsItem, 3962 )
	TriggerAction( 1, AddNextFlag, 302, 10, 1 )
	RegCurTrigger( 3021 )

-----------------------------------Г°ПХѕ«Йс
	DefineMission( 359, "Дух исследователя", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Давно не виделись мой юный друг! Как Ваша жизнь? О! Вы хотите пройти испытания, что бы доказать свою силу и подготовленность к морским путешествиям? Хорошо! Я помогу Вам!")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(PfEqual, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3962, 1, 4 )
	MisResultBagNeed(1)

-----------------------------------Г°ПХѕ«Йс
	DefineMission( 360, "Дух исследователя", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Давно не виделись мой юный друг! Как Ваша жизнь? О! Вы хотите пройти испытания, что бы доказать свою силу и подготовленность к морским путешествиям? Хорошо! Я помогу Вам!")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(PfEqual, 16)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3962, 1, 4 )
	MisResultBagNeed(1)

-----------------------------------Г°ПХѕ«Йс
	DefineMission( 361, "Дух исследователя", 302, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Что? Вам нужно доказательство? Отлично! Пройдя ряд моих испытаний я дам Вам <bКомпас выживания>, как знак доказывающий Вашу подготовку к морским путешествиям.")
	MisResultCondition(NoRecord, 302)
	MisResultCondition(NoRecord, 312)
	MisResultCondition(NoFlag, 302, 5)
	MisResultCondition(NoItem, 3962, 1)
	MisResultCondition(HasMission, 302 )
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(SetFlag, 302, 5 )

-------------------------------------------------Г°ПХїјСй
	DefineMission( 362, "Испытание для исследователя", 303 )

	MisBeginTalk( "<t>Позвольте мне узнать зачем Вам это всё?... А понятно! Я дам Вам такие испытания, что бы Вы смогли доказать Пьянице <bЭнтони>, что Вы достойны, что бы отправиться в <bВесноград>.<n><t>Вот Вам первая задача! Отправляйтесь в Океан Аскарона и убейте <r10 Фрегатов Сакуры XIII>(1950,1286)...<n><t>И запомните: <pКуда бы и на кого бы я Вас не послал, Вы должны будите убивать по 10 монстров!> Хорошо? Запомнили? Ну теперь отправляйтесь мой юный друг.")
	MisBeginCondition(NoRecord, 303)
	MisBeginCondition(HasFlag, 302, 5)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 303)
	MisBeginAction(AddTrigger, 3031, TE_KILL, 574, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Первое испытание")
	MisNeed(MIS_NEED_KILL, 574, 10, 10, 10)

	MisResultTalk("<t>Отлично! Теперь Вы можете приступить к следующему испытанию.")
	MisHelpTalk("<t>Вы не убили монстра к которому я Вас послал! Вы уверены, что хотите доказать Пьяному Энтони, что Вы готовы к путешествию в Весноград?")
	MisResultCondition(HasMission, 303 )
	MisResultCondition(HasFlag, 303, 19)
	MisResultAction(SetRecord, 303 )
	MisResultAction(ClearMission, 303 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 574 )
	TriggerAction( 1, AddNextFlag, 303, 10, 10 )
	RegCurTrigger( 3031 )

-------------------------------------------------Г°ПХїјСй
	DefineMission( 363, "Испытание для исследователя", 304 )

	MisBeginTalk( "<t>Теперь убейте Выползеня-вампира в (370, 2317). Это большая голова на воде, задание это не покажется Вам сложным.")
	MisBeginCondition(NoRecord, 304)
	MisBeginCondition(HasRecord, 303)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 304)
	MisBeginAction(AddTrigger, 3041, TE_KILL, 638, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Второе испытание")
	MisNeed(MIS_NEED_KILL, 638, 10, 10, 10)

	MisResultTalk("<t>Отлично! Теперь Вы можете приступить к следующему испытанию.")
	MisHelpTalk("<t>Вы не убили монстра к которому я Вас послал! Вы уверены, что хотите доказать Пьяному Энтони, что Вы готовы к путешествию в Весноград?")
	MisResultCondition(HasMission, 304 )
	MisResultCondition(HasFlag, 304, 19)
	MisResultAction(SetRecord, 304 )
	MisResultAction(ClearMission, 304 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 638 )
	TriggerAction( 1, AddNextFlag, 304, 10, 10 )
	RegCurTrigger( 3041 )



-------------------------------------------------Г°ПХїјСй
	DefineMission( 364, "Испытание для исследователя", 305 )

	MisBeginTalk( "<t>Следующий монстр которого Вы должны убить это Кровожадная медуза.")
	MisBeginCondition(NoRecord, 305)
	MisBeginCondition(HasRecord, 304)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 305)
	MisBeginAction(AddTrigger, 3051, TE_KILL, 583, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Третье испытание")
	MisNeed(MIS_NEED_KILL, 583, 10, 10, 10)

	MisResultTalk("<t>Отлично! Теперь Вы можете приступить к следующему испытанию.")
	MisHelpTalk("<t>Вы не убили монстра к которому я Вас послал! Вы уверены, что хотите доказать Пьяному Энтони, что Вы готовы к путешествию в Весноград?")
	MisResultCondition(HasMission, 305 )
	MisResultCondition(HasFlag, 305, 19)
	MisResultAction(SetRecord, 305 )
	MisResultAction(ClearMission, 305 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 583 )
	TriggerAction( 1, AddNextFlag, 305, 10, 10 )
	RegCurTrigger( 3051 )

-------------------------------------------------Г°ПХїјСй
	DefineMission( 365, "Испытание для исследователя", 306 )

	MisBeginTalk( "<t>Четвёртым испытанием будет для Вас убийство Шелковистой акулы (3149,3836). Интересно, кто ей дал такое название, ни какого сходство с шолком!")
	MisBeginCondition(NoRecord, 306)
	MisBeginCondition(HasRecord, 305)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 306)
	MisBeginAction(AddTrigger, 3061, TE_KILL, 660, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Четвёртое испытание")
	MisNeed(MIS_NEED_KILL, 660, 10, 10, 10)

	MisResultTalk("<t>Отлично! Теперь Вы можете приступить к следующему испытанию.")
	MisHelpTalk("<t>Вы не убили монстра к которому я Вас послал! Вы уверены, что хотите доказать Пьяному Энтони, что Вы готовы к путешествию в Весноград?")
	MisResultCondition(HasMission, 306 )
	MisResultCondition(HasFlag, 306, 19)
	MisResultAction(SetRecord, 306 )
	MisResultAction(ClearMission, 306 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 660 )
	TriggerAction( 1, AddNextFlag, 306, 10, 10 )
	RegCurTrigger( 3061 )




-------------------------------------------------Г°ПХїјСй
	DefineMission( 366, "Испытание для исследователя", 307 )

	MisBeginTalk( "<t>Плывите в Великий Синий Океан в точку (986,1787) и убейте там Топазового дельфина.")
	MisBeginCondition(NoRecord, 307)
	MisBeginCondition(HasRecord, 306)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 307)
	MisBeginAction(AddTrigger, 3071, TE_KILL, 584, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Пятое испытание")
	MisNeed(MIS_NEED_KILL, 584, 10, 10, 10)

	MisResultTalk("<t>Отлично! Теперь Вы можете приступить к следующему испытанию.")
	MisHelpTalk("<t>Вы не убили монстра к которому я Вас послал! Вы уверены, что хотите доказать Пьяному Энтони, что Вы готовы к путешествию в Весноград?")
	MisResultCondition(HasMission, 307 )
	MisResultCondition(HasFlag, 307, 19)
	MisResultAction(SetRecord, 307 )
	MisResultAction(ClearMission, 307 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 584 )
	TriggerAction( 1, AddNextFlag, 307, 10, 10 )
	RegCurTrigger( 3071 )

-------------------------------------------------Г°ПХїјСй
	DefineMission( 367, "Испытание для исследователя", 308 )

	MisBeginTalk( "<t>Теперь убейте <rБуйную медузу> в (1275, 3634)!")
	MisBeginCondition(NoRecord, 308)
	MisBeginCondition(HasRecord, 307)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 308)
	MisBeginAction(AddTrigger, 3081, TE_KILL, 603, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Шестое испытание")
	MisNeed(MIS_NEED_KILL, 603, 10, 10, 10)

	MisResultTalk("<t>Отлично! Теперь Вы можете приступить к следующему испытанию.")
	MisHelpTalk("<t>Вы не убили монстра к которому я Вас послал! Вы уверены, что хотите доказать Пьяному Энтони, что Вы готовы к путешествию в Весноград?")
	MisResultCondition(HasMission, 308 )
	MisResultCondition(HasFlag, 308, 19)
	MisResultAction(SetRecord, 308 )
	MisResultAction(ClearMission, 308 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 603 )
	TriggerAction( 1, AddNextFlag, 308, 10, 10 )
	RegCurTrigger( 3081 )


-------------------------------------------------Г°ПХїјСй
	DefineMission( 368, "Испытание для исследователя", 309 )

	MisBeginTalk( "<t>В Великом Синем Океане есть <rМатерый рубиновый дельфин>(3785,1975). Убейте его, что бы пройти седьмое испытание.")
	MisBeginCondition(NoRecord, 309)
	MisBeginCondition(HasRecord, 308)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 309)
	MisBeginAction(AddTrigger, 3091, TE_KILL, 622, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Седьмое испытание")
	MisNeed(MIS_NEED_KILL, 622, 10, 10, 10)

	MisResultTalk("<t>Отлично! Теперь Вы можете приступить к следующему испытанию.")
	MisHelpTalk("<t>Вы не убили монстра к которому я Вас послал! Вы уверены, что хотите доказать Пьяному Энтони, что Вы готовы к путешествию в Весноград?")
	MisResultCondition(HasMission, 309 )
	MisResultCondition(HasFlag, 309, 19)
	MisResultAction(SetRecord, 309 )
	MisResultAction(ClearMission, 309 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 622 )
	TriggerAction( 1, AddNextFlag, 309, 10, 10 )
	RegCurTrigger( 3091 )




-------------------------------------------------Г°ПХїјСй
	DefineMission( 369, "Испытание для исследователя", 310 )

	MisBeginTalk( "<t>В Океане Аскарона в точке(2790, 1286) Вы столкнётесь с <rКомандным кораблём Сакуры XIII>. Вы знаете как поступить в этом случае!")
	MisBeginCondition(NoRecord, 310)
	MisBeginCondition(HasRecord, 309)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 310)
	MisBeginAction(AddTrigger, 3101, TE_KILL, 650, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Восьмое испытание")
	MisNeed(MIS_NEED_KILL, 650, 10, 10, 10)

	MisResultTalk("<t>Отлично! Теперь Вы можете приступить к следующему испытанию.")
	MisHelpTalk("<t>Вы не убили монстра к которому я Вас послал! Вы уверены, что хотите доказать Пьяному Энтони, что Вы готовы к путешествию в Весноград?")
	MisResultCondition(HasMission, 310 )
	MisResultCondition(HasFlag, 310, 19)
	MisResultAction(SetRecord, 310 )
	MisResultAction(ClearMission, 310 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 650 )
	TriggerAction( 1, AddNextFlag, 310, 10, 10 )
	RegCurTrigger( 3101 )


-------------------------------------------------Г°ПХїјСй
	DefineMission( 370, "Испытание для исследователя", 311 )

	MisBeginTalk( "<t>Следующая ваша задача, <yКолючая рыба-кость> (370, 2317)! Они действительно как бельмо на глазу, уничтожте их на благо остального мира!")
	MisBeginCondition(NoRecord, 311)
	MisBeginCondition(HasRecord, 310)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 311)
	MisBeginAction(AddTrigger, 3111, TE_KILL, 585, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Девятое испытание")
	MisNeed(MIS_NEED_KILL, 585, 10, 10, 10)

	MisResultTalk("<t>Вы закончили девятый раунд, если вы готовы, давайте переходить к следующему.")
	MisHelpTalk("<t>Такая простая задача, и все же вы не смогли справиться с ней? Вы уверены, что хотите взять на себя риск доказать свою готовность?")
	MisResultCondition(HasMission, 311 )
	MisResultCondition(HasFlag, 311, 19)
	MisResultAction(SetRecord, 311 )
	MisResultAction(ClearMission, 311 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 585 )
	TriggerAction( 1, AddNextFlag, 311, 10, 10 )
	RegCurTrigger( 3111 )

-------------------------------------------------Г°ПХїјСй
	DefineMission( 371, "Испытание для исследователя", 312 )

	MisBeginTalk( "<t>Ваше последнее задание касается правительства. Нужно  уничтожить <yКорабли поддержки северян>! Надеюсь вскоре увидеть их раздетыми хе-хе")
	MisBeginCondition(NoRecord, 312)
	MisBeginCondition(HasRecord, 311)
	MisBeginCondition(HasMission, 302)
	MisBeginAction(AddMission, 312)
	MisBeginAction(AddTrigger, 3121, TE_KILL, 611, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Десятое испытание")
	MisNeed(MIS_NEED_KILL, 611, 10, 10, 10)

	MisResultTalk("<t>Вы преодолели все испытания! Не думал, что у вас получится. Оказывается, вы более находчивы, чем другие. Вот, держите этот компас, вы заслужили его.")
	MisHelpTalk("<t>Вы не смогли справиться с моим заданием и потопить вражеские корабли! Вы уверены, что заслуживаете награду?")
	MisResultCondition(HasMission, 312 )
	MisResultCondition(HasFlag, 312, 19)
	MisResultAction(SetRecord, 312 )
	MisResultAction(ClearMission, 312 )
        MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3962, 1, 4 )	
	MisResultAction(AddExp,250000,250000)
	MisResultAction(AddMoney,50000,50000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,3845,6,4)
	MisResultBagNeed(2)

			
	InitTrigger()
	TriggerCondition( 1, IsMonster, 611 )
	TriggerAction( 1, AddNextFlag, 312, 10, 10 )
	RegCurTrigger( 3121 )

----------------------------±ґµЩ
	DefineMission( 372, "Белди", 313 )
	
	MisBeginTalk( "<t>Попробуйте расспросить <bСтарушку Белди>. Возможно она поможет вам." )
	MisBeginCondition(NoRecord, 313)
	MisBeginCondition(HasRecord, 302)
	MisBeginCondition(NoMission, 313)
	MisBeginAction(AddMission, 313)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Вы можете найти ее в Аргенте в точке (2277, 2769)")
	
	MisHelpTalk("<t>Узнайте о Веснограде у <bСтарушки Белди>")
	MisResultCondition(AlwaysFailure )


----------------------------±ґµЩ
	DefineMission( 373, "Белди", 313, COMPLETE_SHOW )

	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Что? Весноград? Ах, какое прекрасное название! Давненько я не слышала, что бы кто-нибудь упоминал этот город. Когда-то в молодости я пыталась рассказывать людям о прекрасном Веснограде, но мне никто не верил. Теперь же тут вы и спрашиваете меня про историю Веснограда! Судьба ли это?")
	MisResultCondition(NoRecord, 313)
	MisResultCondition(HasMission, 313)
	MisResultAction(SetRecord, 313 )
	MisResultAction(ClearMission, 313 )

-----------------------------------јТПз
	DefineMission( 374, "Родной город", 315 )

	MisBeginTalk( "<t>Хотите верьте, хотите нет, но я родилась и жила в Веснограде! Это было самое лучшее время в моей жизни! Один раз мы решили отправиться в море, чтобы искупаться, но начался  шторм и наш корабль накрыло волной. Не знаю, может быть все погибли и я одна осталась в живых, может быть кто то ещё выжил, я тогда была ещё совсем ребёнком. Меня подобрал мимо проходящий торговый корабль, который шел в Аргент. Так я попала в приют, где прожила до совершеннолетия. Моей мечтой было вернуться к себе на родину, но никто мне не верил, что есть такой город. Да... Весноград, он прекрасен! Прошло время. Теперь я очень старая для путешествий по Океанам и моё здоровье не позволит мне отправиться в это опасное путешествие. Но во сне я часто бываю там. Если Вы отважный герой и не боитесь опасностей, то Вы сможете преодолеть все препятствия и попасть в Весноград!<n><t>Доставьте от меня одну вещь на остров Весны. Вы сможете её взять в банке Ледыни.")
	MisBeginCondition(NoRecord, 315)
	MisBeginCondition(HasRecord, 313)
	MisBeginCondition(NoMission, 315)
	MisBeginAction(AddMission, 315)
	MisBeginAction(AddTrigger, 3151, TE_GETITEM, 4235, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Верните вещи <bБелди>, хранящиеся в банке Ледыни")
	MisNeed(MIS_NEED_ITEM, 4235, 1, 1, 1)

	MisResultTalk("<t>О! Это же украшение моего детства! Я знала, что вы поможете мне. Эта серьга очень важна для меня. Она всегда защищала меня, когда я попадала в неприятности. У моей сестры есть такая же, поэтому, когда я смотрю на серьгу, то вспоминаю о ней. Пожалуйста, возьмите её и отдайте моей сестре, если она всё еще жива!<n><t> Если вы вдруг заблудитесь, воспользуйтесь вот этим водяным колесом, оно укажет вам верный путь.<n><t>Если мне не изменяет память, то Весноград должен находиться в Великом синем океане, на юго-востоке. Ближайшие к нему острова: Осень и  Лето. Как только вы заметите остров в форме якоря, знайте, что Весноград уже близко!")
	MisHelpTalk("<t>Отправляйтесь за вещами в банк Громограда.")
	MisResultCondition(HasMission, 315 )
	MisResultCondition(HasItem, 4235, 1)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4237, 1 , 4)
	MisResultAction(SetRecord, 315 )
	MisResultAction(ClearMission, 315 )
	MisResultBagNeed(1)
	
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4235 )
	TriggerAction( 1, AddNextFlag, 315, 1, 1 )
	RegCurTrigger( 3151 )


-----------------------------------±ґµЩµД¶ъ»·
	DefineMission( 375, "Серьга Бельди", 316 )

	MisBeginTalk( "<t>Здравствуйте! Белди мне всё рассказала. Это действительно ее последняя надежда... Правда я не знаю, как кто-то настолько слабый, как вы, может обещать доставить в безопасности настолько важную для неё вещь? <t>Ох, ну неважно. В любом случае вы должны побить рекорд Рэя в убийстве 100 <yПолярных медведей>, что бы доказать насколько вы сильны. Только тогда я с уверенностью смогу отдать вам вещь Белди.<n><t>Эти крупные животные в основном обитают в точке (3101, 666).")
	MisBeginCondition(NoRecord, 316)
	MisBeginCondition(HasMission, 315)
	MisBeginCondition(NoMission, 316)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginAction(AddMission, 316)
	MisBeginAction(AddTrigger, 3161, TE_KILL, 504, 100)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Побит рекорд установленный Рэем")
	MisNeed(MIS_NEED_KILL, 504, 100, 1, 100)

	MisNeed(MIS_NEED_DESP, "Убейте Огромных Полярных медведей ")
	MisHelpTalk("<t>Хм.. убийство 100 <yПолярных медведей> кажется слишком легким заданием для вас. Думаю, мне стоит пересмотреть сложность заданий.")
	MisResultCondition(HasMission, 316 )
	MisResultCondition(HasFlag, 316, 100)
	MisResultAction(SetRecord, 316 )
	MisResultAction(ClearMission, 316 )
        MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4235, 1, 4 )	
	MisResultBagNeed(1)
 		
	InitTrigger()
	TriggerCondition( 1, IsMonster, 504 )
	TriggerAction( 1, AddNextFlag, 316, 1, 100 )
	RegCurTrigger( 3161 )


-------------------------------------------------јТПз
	DefineMission( 376, "Родной город", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Старушка Белди рассказала мне, через что вы прошли. После стольких лет наконец-то появился храбрец, который готов помочь ей! Вот, возьмите его, это её последняя надежда. Я прошу вас, исполните желание старушки Белди!<n><t>Кажется у Моны, официантки из Халдеи, есть похожая вещица. Если вы свободны, то,  пожалуй, вам стоит её навестить.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 10)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 1)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 10 )
	MisResultBagNeed(1)

-------------------------------------------------јТПз
	DefineMission( 377, "Родной город", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Старушка Белди рассказала мне, через что вы прошли. После стольких лет наконец-то появился храбрец, который готов помочь ей! Вот, возьмите его, это её последняя надежда. Я прошу вас, исполните желание старушки Белди!<n><t>Кажется у Моны, официантки из Халдеи, есть похожая вещица. Если вы свободны, то,  пожалуй, вам стоит её навестить.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 20)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 8)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 20 )
	MisResultBagNeed(1)

-------------------------------------------------јТПз
	DefineMission( 560, "Родной город", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Старушка Белди рассказала мне, через что вы прошли. После стольких лет наконец-то появился храбрец, который готов помочь ей! Вот, возьмите его, это её последняя надежда. Я прошу вас, исполните желание старушки Белди!<n><t>Кажется у Моны, официантки из Халдеи, есть похожая вещица. Если вы свободны, то,  пожалуй, вам стоит её навестить.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 30)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 9)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 30 )
	MisResultBagNeed(1)

-------------------------------------------------јТПз
	DefineMission( 561, "Родной город", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Старушка Белди рассказала мне, через что вы прошли. После стольких лет наконец-то появился храбрец, который готов помочь ей! Вот, возьмите его, это её последняя надежда. Я прошу вас, исполните желание старушки Белди!<n><t>Кажется у Моны, официантки из Халдеи, есть похожая вещица. Если вы свободны, то,  пожалуй, вам стоит её навестить.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 40)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 2)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 40 )
	MisResultBagNeed(1)

-------------------------------------------------јТПз
	DefineMission( 562, "Родной город", 315 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Старушка Белди рассказала мне, через что вы прошли. После стольких лет наконец-то появился храбрец, который готов помочь ей! Вот, возьмите его, это её последняя надежда. Я прошу вас, исполните желание старушки Белди!<n><t>Кажется у Моны, официантки из Халдеи, есть похожая вещица. Если вы свободны, то,  пожалуй, вам стоит её навестить.")
	MisResultCondition(NoRecord, 315)
	MisResultCondition(NoFlag, 315, 50)
	MisResultCondition(NoItem, 4235, 1)
	MisResultCondition(HasMission, 315 )
	MisResultCondition(PfEqual, 12)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4235, 1, 4 )
	MisResultAction(SetFlag, 315, 50 )
	MisResultBagNeed(1)



-----------------------------------№ЕАПµДРШХл
	DefineMission( 378, "Древняя брошь", 317 )

	MisBeginTalk( "<t> Древняя брошь? Да, у меня имеется подобный цветочный орнамент! Мы как то с другом гуляли по пляжу, там то её и нашли.<n><t>Что? Вы хотите забрать её? Никогда! Мне очень нравится эта брошь! Были другие, которые предлагали мне 5000 золотых, и всё же я не продала её. Что-что? Вы предлагаете 10000 золота? Нет, это символ любви между мной и моим другом, и независимо от того, сколько вы мне предложите, я не стану её вам продавать. 50000? Хм… дайте-ка подумать... Хорошо, я продам вам её, но не меньше, чем за 100000 золотых. Согласны?")
	MisBeginCondition(NoRecord, 317)
	MisBeginCondition(HasRecord, 316)
	MisBeginCondition(HasItem, 4235, 1)
	MisBeginCondition(NoMission, 317)
	MisBeginAction(AddMission, 317)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Заплатите 100 000 золотых за брошь <bОфициантке Моне> в точке (990, 1263)")
	
	MisResultTalk("<t>Хах, 100 000 золотых за брошь, наверно все-таки слишком низкая цена, но раз уж я согласилась, то так тому и быть. Вам стоит ответственней относиться к вещам и не терять их!")
	MisHelpTalk("<t>У вас недостаточно денег? Очень плохо, ведь я согласилась продать вам её.")
	MisResultCondition(HasMoney, 100000 )
	MisResultCondition(HasMission, 317 )
	MisResultAction(TakeMoney, 100000 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4236, 1, 4 )
	MisResultAction(SetRecord, 317 )
	MisResultAction(ClearMission, 317 )
	MisResultAction(AddExp,180000,180000)
	MisResultAction(AddMoney,15000,15000)
	MisResultAction(AddExpAndType,2,40000,40000)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,3848,30,4)
	MisResultBagNeed(2)
	

-----------------------------------ГьФЛЦ®ВЦ
	DefineMission( 379, "Колесо судьбы", 318 )

	MisBeginTalk( "<t>Из-за того, что этот остров так далеко, тишина царила тут достаточно долгое время. Как вы сказали? Слухи привели вас сюда? Тогда считайте, что вам очень повезло добраться ко мне живым.<n><t>Множество опасных существ появляется неподалёку, но пираты Сакуры 13 самые грозные. Они часто разыгрывают своё кораблекрушение, дабы привлечь внимание проплывающих рядом судов. Как только те пытаются им помочь, они тут же устраивают засаду на их кораблях. Мне кажется, и вы когда-то попадались на их уловку. Наш транспортный корабль попал в засаду несколько дней назад! Поскольку вы здесь, почему бы вам не помочь восстановить наши <rПоставки>? Мы должным образом вознаградим вас!")
	MisBeginCondition(NoRecord, 318)
	MisBeginCondition(HasMission, 22)
	MisBeginCondition(NoMission, 318)
	MisBeginAction(SetRecord, 22)
	MisBeginAction(ClearMission, 22)
	MisBeginAction(AddMission, 318)
	MisBeginAction(AddTrigger, 3181, TE_GETITEM, 4238, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Привезите <rПоставки> обратно на остров.")
	MisNeed(MIS_NEED_ITEM, 4238, 1, 1, 1)

	MisResultTalk("<t>Невероятно! Вы вернули припасы! Хоть они и не в полном объеме, но этого будет достаточно, что бы достигнуть следующей остановки. Спасибо! Вот ваша награда.")
	MisHelpTalk("<t>Спасите меня! Без этих поставок я тут с голоду умру! А ведь у меня еще семья, 10 детей кормить! У вас сердце есть? Не дайте мне умереть!")
	MisResultCondition(HasMission, 318 )
	MisResultCondition(HasItem, 4238, 1 )
	MisResultAction(TakeItem, 4238, 1 )
	MisResultAction(SetRecord, 318 )
	MisResultAction(ClearMission, 318 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4238 )
	TriggerAction( 1, AddNextFlag, 318, 1, 1 )
	RegCurTrigger( 3181 )


----------------------------ГьФЛЦ®ВЦ
	DefineMission( 380, "Колесо судьбы", 319 )
	
	MisBeginTalk( "<t>Я понимаю, вы прошли через многие трудности, что бы помочь нам восстановить наши запасы. Конечно, мы больше не должны вас беспокоить, но вы же знаете нашу ситуацию? Линии питания были застигнуты пиратами и теперь мы не знаем когда должна будет прибыть следующая поставка. Пожалуйста, сообщите нашим товарищам, что бы те подготовились." )
	MisBeginCondition(NoRecord, 319)
	MisBeginCondition(HasRecord, 318)
	MisBeginCondition(NoMission, 319)
	MisBeginAction(AddMission, 319)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Поговорите с диспетчером порта в точке (2041, 1355)")
	
	MisHelpTalk("<t>Расскажите об инциденте Похищенных поставок <bДиспетчеру порта> в точке (2041, 1355)")
	MisResultCondition(AlwaysFailure )



-----------------------------------ГьФЛЦ®ВЦ
	DefineMission( 381, "Колесо судьбы", 320 )

	MisBeginTalk( "<t>Что? Что вы говорите? Снова без еды? Да я лучше от табака откажусь, чем без еды останусь! Мало того, что платят мало, так еще и пираты постоянно нападают! Я уже как три дня ничего не ел! Разве это стоит таких страданий?<n><t>О, добрый человек, вы уже как то помогли нам, почему бы вам не сделать это в последний раз?<n><t>Здесь неподалёку есть рыбные косяки, но их охраняют свирепые существа... Не могли бы вы добыть для меня немного рыбы?")
	MisBeginCondition(NoRecord, 320)
	MisBeginCondition(HasMission, 319)
	MisBeginCondition(NoMission, 320)
	MisBeginAction(ClearMission, 319)
	MisBeginAction(SetRecord, 319)
	MisBeginAction(AddMission, 320)
	MisBeginAction(AddTrigger, 3201, TE_GETITEM, 1478, 20)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Принесите 20 <rСашими> в точку (2041, 1355)")
	MisNeed(MIS_NEED_ITEM, 1478, 20, 1, 20)

	MisResultTalk("<t>Ох, спасибо за понимание! Я знал, что на вас можно положиться! У меня нет ничего, что я мог бы дать вам взамен, разве что некоторые новости, которые могут вас заинтересовать.")
	MisHelpTalk("<t>Что? Вы не умеете ловить рыбу?")
	MisResultCondition(HasMission, 320)
	MisResultCondition(HasItem, 1478, 20 )
        MisResultAction(TakeItem, 1478, 20 )
	MisResultAction(SetRecord, 320 )
	MisResultAction(ClearMission, 320 )
  	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 1478 )
	TriggerAction( 1, AddNextFlag, 320, 1, 20 )
	RegCurTrigger( 3201 )



-----------------------------------ГьФЛЦ®ВЦ
	DefineMission( 382, "Колесо судьбы", 321 )
	MisBeginCondition(NoMission, 321)
	MisBeginCondition(HasRecord, 320)
	MisBeginCondition(NoMission, 321)
	MisBeginAction(AddMission, 321)	

	MisBeginTalk("<t>Слышали ли вы о подобном? Можно сварить специальное зелье, с использованием масла из различных  морских существ! Тот, кто выпьет его - сможет разговаривать на разных языках и даже понимать монстров.<n><t>Отправляйтесь в точку (3153,674) и поговорите об этом зелье с <pОператором гавани Фарделлом>.")
	
	MisNeed(MIS_NEED_DESP, "<t>Отправляйтесь к <bОператору гавани - Фарделлу> в точку (3153, 674)")
	
	MisResultCondition(AlwaysFailure )


-----------------------------------ГьФЛЦ®ВЦ
	DefineMission( 383, "Колесо судьбы", 321, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Черт! Снова он несёт бред! Если бы только он не спас меня тогда, я и пальцем не пошевелил бы, чтобы помочь вам.<n><t>Насчёт зелья... Да, я знаю, как приготовить его, но добыть ингредиенты очень непросто. Если вы принесете мне их, я сварю вам это зелье!")
	MisResultCondition(NoRecord, 321)
	MisResultCondition(HasMission, 321)
	MisResultAction(ClearMission, 321)
	MisResultAction(SetRecord, 321)

-----------------------------------ГьФЛЦ®ВЦ
	DefineMission( 384, "Колесо судьбы", 323 )

	MisBeginTalk( "<t>Для зелья потребуются пилюли, в состав которых входит полосатая рыбья кость, толстая рыбья кость и гнилая рыбья кость. Что с вашим лицом? Неужели вы думаете, что я собираюсь вас отравить? Ха-ха! Не волнуйтесь, эти ингредиенты не ядовиты! Ничего дурного с вами не случится.")
	MisBeginCondition(NoRecord, 323)
	MisBeginCondition(HasRecord, 321)
	MisBeginCondition(NoMission, 323)
	MisBeginAction(AddMission, 323)
	MisBeginAction(AddTrigger, 3231, TE_GETITEM, 4938, 60)
	MisBeginAction(AddTrigger, 3232, TE_GETITEM, 4957, 60)
	MisBeginAction(AddTrigger, 3233, TE_GETITEM, 4976, 60)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Принесите нужные ингридиенты Оператору гавани - Фарделлу в точку (3153, 674)")
	MisNeed(MIS_NEED_ITEM, 4938, 60, 1, 60)
	MisNeed(MIS_NEED_ITEM, 4957, 60, 31, 60)
	MisNeed(MIS_NEED_ITEM, 4976, 60, 61, 60)

	MisResultTalk("<t>Отлично! Это все ингредиенты, которые мне потребуются. Пожалуйста, подождите немного, пока я сварю вам зелье. (Теперь вы способны услышать, о чем говорят русалки).")
	MisHelpTalk("<t>ЧТО?! Вы не знаете, из каких монстров можно добыть эти ингредиенты? Что ж, я подскажу, кто вам потребуется: Колючая рыба-кость, Прожорливая рыба-кость и Скелет рыбы чистильщика. Аа? Вы хотите, что бы я сказал вам их координаты? Научитесь вы, наконец, пользоваться веб-сайтом базы данных этой игры!")
	MisResultCondition(HasMission, 323 )
	MisResultCondition(HasItem, 4938, 60)
	MisResultCondition(HasItem, 4957, 60)
	MisResultCondition(HasItem, 4976, 60)
	MisResultAction(TakeItem, 4938, 60 )
	MisResultAction(TakeItem, 4957, 60 )
	MisResultAction(TakeItem, 4976, 60 )
	MisResultAction(SetRecord, 323 )
	MisResultAction(ClearMission, 323 )
	
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4938 )
	TriggerAction( 1, AddNextFlag, 323, 1, 60 )
	RegCurTrigger( 3231 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4957 )
	TriggerAction( 1, AddNextFlag, 323, 31, 60 )
	RegCurTrigger( 3232 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4976 )
	TriggerAction( 1, AddNextFlag, 323, 61, 60 )
	RegCurTrigger( 3233 )



-----------------------------------ГьФЛЦ®ВЦ
	DefineMission( 385, "Колесо судьбы", 324 )

	MisBeginTalk( "<t>... этого не должно было случиться.. похоже, это расплата... Я не должен был красть ваши пилюли. Помогите мне, молю вас! Дайте мне умереть.... <t>Эээй, постойте! Вы правда решили оставить меня умирать? Прошу вас, не уходите! Спасите меня! Эта формула украдена мною у <bдиспетчера порта Буни> в точке (2042, 635). Теперь вы знаете всё. Пожалуйста, спасите меня!")
	MisBeginCondition(NoRecord, 324)
	MisBeginCondition(HasRecord, 323)
	MisBeginCondition(NoMission, 324)
	MisBeginAction(AddMission, 324)
	MisBeginAction(AddTrigger, 3241, TE_GETITEM, 4254, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Получите <rпротивоядие> у <bОператора порта Буни> в точке (2042, 635).")
	MisNeed(MIS_NEED_ITEM, 4254, 1, 1, 1)

	MisResultTalk("<t>Ах! Медицина творит чудеса! Не смотрите на меня так, я только что избежал смерти. Какие деньги? Я занят сейчас, увидимся позже. Прощайте!")
	MisHelpTalk("<t>...мои силы на исходе... пожалуйста, помогите мне!")
	MisResultCondition(HasMission, 324 )
	MisResultCondition(HasMission, 325 )
	MisResultCondition(HasItem, 4254, 1)
	MisResultAction(TakeItem, 4254, 1)
	MisResultAction(SetRecord, 324 )
	MisResultAction(ClearMission, 324 )

		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4254 )
	TriggerAction( 1, AddNextFlag, 324, 1, 1 )
	RegCurTrigger( 3241 )

-----------------------------------ГьФЛЦ®ВЦ
	DefineMission( 386, "Колесо судьбы", 325 )

	MisBeginTalk( "<t>О чем вы? Неужели Фардилл знал, как сделать зелье и украл то, что сделано специально для вас?<n><t>Этот мерзавец заслужил смерть! Он постоянно приходил и тайком крал формулы, не оставив ни копейки! К тому же он все еще должен мне 100 000 золотых! Прежде, чем он умрет, выведайте у него пароль от ячейки в банке!<n><t>Ладно, ладно! На самом-то деле я довольно мягкосердечен. Вот, держите противоядие. Пускай он выпьет его как можно быстрее, и напомните ему, что я всё еще жду, когда он вернет мне деньги! Да, и если вам дорога ваша жизнь, впредь стоит перестать доверять ему. А на счет зелья… Я подожду, пока вы вернетесь.")
	MisBeginCondition(NoRecord, 325)
	MisBeginCondition(HasMission, 324)
	MisBeginCondition(NoMission, 325)
	MisBeginAction(AddMission, 325)
	MisBeginAction(GiveItem, 4254, 1, 4 )	
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>Обменяйте противоядие на 100 000 золотых у Фардилла, в точке (3153, 674).")

	MisResultTalk("<t>Что? Этот парень притворился, что не понимает о каких деньгах идет речь? Ах он... В следующий раз я отравлю его и наложу на него немоту!<n><t>Ладно, забудем о нём. Вы хотели узнать о зелье...")
	MisHelpTalk("<t>Ну же, идите, пока я не передумал!")
	MisResultCondition(HasMission, 325)
	MisResultCondition(HasRecord, 324)
	MisResultAction(SetRecord, 325 )
	MisResultAction(ClearMission, 325 )	

-----------------------------------ГьФЛЦ®ВЦ
	DefineMission( 387, "Колесо судьбы", 326 )

	MisBeginTalk( "<t>Я нашел эту формулу в океане. Поначалу мне не особо верилось в то, что она будет работать. Сделав 1 порцию зелья, я испытал его на здешних овцах. Казалось, что после применения этой вакцины они начали понимать наш язык. Одна из овец догадалась, что я собираюсь убить их ночью и сбежала. К несчастью, формула так же была испорчена ею. Уцелела лишь малая часть. Вот почему Фардил отравился зельем - формула, по которой он сварил его, была неполной.<n><t>Если вы сможете отыскать пропавшую часть формулы, возможно, я смогу сделать это зелье.")
	MisBeginCondition(NoRecord, 326)
	MisBeginCondition(HasRecord, 325)
	MisBeginCondition(NoMission, 326)
	MisBeginAction(AddMission, 326)
	MisBeginAction(AddTrigger, 3261, TE_GETITEM, 4255, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Найдите утерянный фрагмент формулы.")
	MisNeed(MIS_NEED_ITEM, 4255, 10, 1, 10)

	MisResultTalk("<t>Да-да! Это именно то, что мне нужно! Теперь подождите немного...<n><t>Ну вот и всё! Теперь вы можете понимать любых существ.")
	MisHelpTalk("<t>Вы всё еще ничего не нашли? Наверно это слишком сложно для вас.<n><t>Возможно, оставшуюся часть формулы вы найдете у Призрачной сирены.")
	MisResultCondition(HasMission, 326 )
	MisResultCondition(HasItem, 4255, 10)
	MisResultAction(TakeItem, 4255, 10 )
	MisResultAction(SetRecord, 326 )
	MisResultAction(SetRecord, 330 )
	MisResultAction(ClearMission, 326 )
	MisResultAction(AddExp,320000,320000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,3846,1,4)
	MisResultBagNeed(1)
		
	InitTrigger()
	TriggerCondition( 1, IsItem, 4255 )
	TriggerAction( 1, AddNextFlag, 326, 1, 10)
	RegCurTrigger( 3261 )

----------------------------УпСФОКМв
	DefineMission( 559, "Языковой барьер", 387 )
	
	MisBeginTalk( "<t>Что говорят это люди? Ни слова не понимаю...<n><t>Думаю, нужно попросить помощи у <bБабушки Белди> (2277, 2769)." )
	MisBeginCondition(NoRecord, 387)
	MisBeginCondition(NoMission, 387)
	MisBeginCondition(NoRecord, 327)
	MisBeginCondition(NoRecord, 330)
	MisBeginAction( AddMission, 387 )
	MisCancelAction(SystemNotice, "Квест не может быть удален" )
		
	MisNeed(MIS_NEED_DESP, "Поговорите с <bБабушкой Белди> (2277, 2769)")
	
	MisHelpTalk( "Найти <bБабушку Белди> и поговорить с ней." )
	MisResultCondition( AlwaysFailure )

----------------------------УпСФОКМв
	DefineMission( 388, "Языковой барьер", 327)
	
	MisBeginTalk( "<t>Ах, незнакомец, вы бывали в Веснограде ранее?<n><t>Что?? Вы не понимаете языка, на котором говорят живущие в Веснограде? Разве вы не выпили зелье?<n><t>Как жаль, что молодое поколение совсем не прислушивается к старшим... Что ж, пожалуй я еще раз обьясню вам, только в этот раз слушайте меня внимательно! Видите ту симпатичную официантку в баре? (1310,530) Её зовут Бабара, она сможет помочь вам. Давным-давно, когда я была молодой и красивой, какой-то незнакомец подарил мне зелье Откровения. Ммм.. как вы думаете, я ведь по-прежнему красивая, да?" )
	MisBeginCondition(NoRecord, 327)
	MisBeginCondition(HasMission, 387)
	MisBeginCondition(NoMission, 327)
	MisBeginAction(SetRecord, 387)
	MisBeginAction(ClearMission, 387)
	MisBeginAction(AddMission, 327)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "<t>Спросите <bОфициантку Бабару> о зелье в точке (1310,530)")
	
	MisHelpTalk("<t>Поговорите с <bОфицианткой Бабарой>")
	MisResultCondition(AlwaysFailure )



-----------------------------------УпСФОКМв
	DefineMission( 389, "Языковой барьер", 328 )

	MisBeginTalk( "<t>Вы хотите узнать о Зелье Откровения? Что ж, вы нашли правильного человека! Я могу продать вам формулу для изготовления этого зелья! Оно подходит абсолютно всем! Купите, не пожалеете!<n><t>Можете приобрести по разумной цене, к тому же это многофункциональное зелье перевода! Вы не только начнете понимать животных, но так же сможете переводить кодированные сообщения! Для воплощения всего этого вам потребуется всего лишь одна таблетка! Что? Вы мне не доверяете мне? Разве я не выгляжу слишком невинной, что бы лгать вам?<n><t>Что? Вы пытаетесь дать мне 100 000 золотых, чтобы я замолчала и отдала вам формулу? Хорошо, деньги вперед!")
	MisBeginCondition(NoRecord, 328)
	MisBeginCondition(HasMission, 327)
	MisBeginCondition(NoMission, 328)
	MisBeginAction(SetRecord, 327)
	MisBeginAction(ClearMission, 327)
	MisBeginAction(AddMission, 328)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Всего 100 000 золотых")
	
	MisResultTalk("<t>Хех, а вы действительно разбираетесь в ценности вещей!")
	MisHelpTalk("<t>У вас нет 100 000 золотых? Хах! Какой же вы тогда пират?")
	MisResultCondition(HasMoney, 100000 )
	MisResultCondition(HasMission, 328 )
	MisResultAction(TakeMoney, 100000 )
	MisResultAction(SetRecord, 328 )
	MisResultAction(ClearMission, 328 )
        MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4256, 1, 4 )
	MisResultBagNeed(1)


-----------------------------------УпСФОКМв
	DefineMission( 391, "Языковой барьер", 330 )

	MisBeginTalk( "<t>Ох, Ай Вэнь, ты ли это? Сколько лет прошло... Да я не к вам обращаюсь, я с рецептом Откровения разговариваю. Дело в том, что в этот рецепт 500 лет назад запечатали душу человека, которого звали Ай Вэнь Цзябао, и теперь он внутри этой формулы и я могу его слышать!<n><t>Во всяком случае я могу предоставить вам скидку. Вам всего лишь нужно заплатить мне <r50000 золотых>. для того, что бы я завершила ваше зелье.")
	MisBeginCondition(NoRecord, 30)
	MisBeginCondition(NoRecord, 330)
	MisBeginCondition(HasMission, 30)
	MisBeginAction(AddMission, 330)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Соберите все ингредиенты и заплатите 50 000 золотых")

	MisResultTalk("<t>К чему такая спешка? Я пока еще не закончила! Мне нужно еще 50000. Почему?.. Эмм.. Хорошо-Хорошо! Я просто пошутила! Уберите своё оружие! Вот, забирайте его.<n><t>(Вы не задумываясь выпили зелье...)")
	MisHelpTalk("<t>Нет денег - нет зелья. Всего лишь 5000 золотых!")
	MisResultCondition(HasMission, 330 )
	MisResultCondition(HasItem, 4938, 60)
	MisResultCondition(HasItem, 4957, 60)
	MisResultCondition(HasItem, 4976, 60)
	MisResultCondition(HasItem, 4974, 10)
	MisResultCondition(HasMoney, 50000 )
	MisResultAction(SetRecord, 30)
	MisResultAction(ClearMission, 30)
	MisResultAction(TakeItem, 4938, 60)
	MisResultAction(TakeItem, 4957, 60)
	MisResultAction(TakeItem, 4976, 60)
	MisResultAction(TakeItem, 4974, 10)
	MisResultAction(TakeMoney, 50000 )
	MisResultAction(SetRecord, 330 )
	MisResultAction(ClearMission, 330 )
      	MisResultAction(AddExp,550000,550000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,3908,1,4)	
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,4708,1,4)
	MisResultBagNeed(3)

----------------------------Ф¶АґКЗїН
	DefineMission( 392, "Исключительный гость издалека", 331)
	
	MisBeginTalk( "<t>Привет! Как поживаете? Вы тут впервые? Расслабьтесь! Мы относимся ко всем путникам из других стран, как к друзьям.<n><t>Пройдитесь по нашему славному городу <bВеснограду> и познакомьтесь поближе с местными жителями и соберите <y7 Пропусков посетителя>!" )
	MisBeginCondition(NoRecord, 331)
	MisBeginCondition(HasRecord, 315)
	MisBeginCondition(NoMission, 331)
	MisBeginAction(AddTrigger, 3311, TE_GETITEM, 4242, 7 )
	MisBeginAction(AddMission, 331)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "<t>Ознакомтесь с местностью и пообщайтесь с жильцами этого города.")
	MisNeed(MIS_NEED_ITEM, 4242, 7, 10, 7)	

	MisResultTalk("<t>Боже мой! У Вас есть информация о моём сыне? Вы так на меня посмотрели, что я подумала это <bСтраж - Чжоу> Вас ко мне послал.")
	MisHelpTalk("<t>Вы повидались со всеми жителями города? Еще нет? Тогда идите! Многие люди хотят увидеться с вами.")
	MisResultCondition(HasMission, 331)
	MisResultCondition(HasItem, 4242, 7)
	MisResultAction(TakeItem, 4242, 7 )
	MisResultAction(SetRecord, 331 )
	MisResultAction(ClearMission, 331 )
	MisResultAction(AddExp,100000,100000)
	MisResultAction(AddMoney,30000,30000)
	MisResultAction(AddExpAndType,2,50000,50000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4242 )
	TriggerAction( 1, AddNextFlag, 331, 10, 7)
	RegCurTrigger( 3311 )

----------------------------Ф¶АґКЗїН
	DefineMission( 393, "Исключительный гость издалека", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>О, вы довольно таки хороший человек! Добравшись сюда, вы доказали, что способны на многое! Если с вашим оружием что-нибудь случится, обращайтесь ко мне. Я смогу вам помочь.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 1)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 1)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

----------------------------Ф¶АґКЗїН
	DefineMission( 394, "Исключительный гость издалека", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Хэй! Ваша одежда просто ужасна! Ну-ка дайте мне на неё взглянуть. Хмм.. Если вдруг отправитесь на опасное задание, обязательно перед этим загляните ко мне, возможно, я смогу сшить что-нибудь хорошее для вас. Уверена, что вам понравится!")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 2)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 2)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
----------------------------Ф¶АґКЗїН
	DefineMission( 395, "Исключительный гость издалека", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Приветствую вас, путник! Меня зовут Луна. Я занимаюсь травами. Если вам потребуется моя помощь - не стесняйтесь, обращайтесь ко мне. Так как вы пришли к нам издалека, я предоставлю вам скидку в 20%")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 3)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 3)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
---------------------------Ф¶АґКЗїН
	DefineMission( 396, "Исключительный гость издалека", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Здравствуй, дружище! Вам случайно не нужны акульи плавники или птичьи гнёзда? Я дам вам 20-процентную скидку! Как только вам что-нибудь понадобится, дайте мне знать.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 4)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	
----------------------------Ф¶АґКЗїН
	DefineMission( 397, "Исключительный гость издалека", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Если Вы решите покинуть наш город, то я помогу Вам. Не стесняйтесь и пользуйтесь моей услугой.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 5)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 5)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)
	

----------------------------Ф¶АґКЗїН
	DefineMission( 398, "Исключительный гость издалека", 331, COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Ну вот мы и встретились. Куда хотите отправиться?")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 6)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 6)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

----------------------------Ф¶АґКЗїН
	DefineMission( 399, "Исключительный гость издалека", 331, COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
	
	MisResultTalk("<t>IC? IP? IQ? Пароль? Номер карты? Личностный код? Ну же, скажите мне свой пароль! Что вы, это не ограбление, но если вам нужно забрать свои вещи, то вы обязаны сначала предоставить мне свой секретный код.")
	MisResultCondition(NoRecord, 331)
	MisResultCondition(NoFlag, 331, 7)
	MisResultCondition(HasMission, 331)
	MisResultAction(SetFlag, 331, 7)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4242, 1, 4)
	MisResultBagNeed(1)

-----------------------------------»­Бъµгѕ¦
	DefineMission( 510, "Поставить точку финиша", 339 )

	MisBeginTalk( "<t>Меня интересует одна очень красивая древняя брошь! Если вы согласны достать ее для меня, я открою вам секрет.")
	MisBeginCondition(NoRecord, 339)
	MisBeginCondition(HasRecord, 338)
	MisBeginCondition(NoMission, 339)
        MisBeginCondition(HasItem, 4236,1)
	MisBeginAction(AddMission, 339)
	MisBeginAction(AddTrigger, 3391, TE_GETITEM, 4236, 1 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Отдайте <bДревнюю брошь> <bБанкиру Ван Мо> в точке (3290, 2512)")
	MisNeed(MIS_NEED_ITEM, 4236, 1, 1, 1)

	MisResultTalk("<t>Поскольку вы готовы отдать мне такую ценную вещь, я расскажу вам свой секрет.")
	MisHelpTalk("<t>Что? У вас нет её? Но я же видел её несколько минут назад! Хм... наверно мне показалось.")
	MisResultCondition(HasMission, 339 )
	MisResultCondition(HasItem, 4236, 1 )
	MisResultAction(TakeItem, 4236, 1 )	
	MisResultAction(SetRecord, 339 )
	MisResultAction(ClearMission, 339 )
    


-----------------------------------»­Бъµгѕ¦
	DefineMission( 511, "Поставить точку финиша", 340 )

	MisBeginTalk( "<t>Так, а теперь о секрете... Ха-ха! Я обманул вас. Мне нужна была только брошь. Она может служить глазом для моей живописи 'Дракона'! Может быть, вы поможете? Мне нужны краски разных цветов, желательно 5 каждой, для того, что бы я смог закончить свой рисунок. Если у вас получится достать их для меня, я хорошо вознагражу вас!")
	MisBeginCondition(NoRecord, 340)
	MisBeginCondition(HasRecord, 339)
	MisBeginCondition(NoMission, 340)
	MisBeginAction(AddMission, 340)
	MisBeginAction(AddTrigger, 3401, TE_GETITEM, 1787, 5)
	MisBeginAction(AddTrigger, 3402, TE_GETITEM, 1788, 5)
	MisBeginAction(AddTrigger, 3403, TE_GETITEM, 1789, 5)
	MisBeginAction(AddTrigger, 3404, TE_GETITEM, 1790, 5)
	MisBeginAction(AddTrigger, 3405, TE_GETITEM, 1791, 5)
	MisBeginAction(AddTrigger, 3406, TE_GETITEM, 1792, 5)
	MisBeginAction(AddTrigger, 3407, TE_GETITEM, 1793, 5)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Собрать: <rКрасная краска> 5 штук, <rОранжевая краска> 5 штук, <rЖелтая краска> 5 штук, <rЗеленая краска> 5 штук, <rГолубая краска> 5 штук, <rСиняя краска> 5 штук, <rПурпурная краска> 5")
	MisNeed(MIS_NEED_ITEM, 1787, 5, 1, 5)
	MisNeed(MIS_NEED_ITEM, 1788, 5, 6, 5)
	MisNeed(MIS_NEED_ITEM, 1789, 5, 11, 5)
	MisNeed(MIS_NEED_ITEM, 1790, 5, 16, 5)
	MisNeed(MIS_NEED_ITEM, 1791, 5, 21, 5)
	MisNeed(MIS_NEED_ITEM, 1792, 5, 26, 5)
	MisNeed(MIS_NEED_ITEM, 1793, 5, 31, 5)

	MisResultTalk("<t>Ну что же вы так долго? Моя кисть совсем затвердела! Нелегко теперь будет рисовать мне.")
	MisHelpTalk("<t>Вернитесь и достаньте мне краски! Поспешите, иначе моя кисть совсем отвердеет и испортится!")
	MisResultCondition(HasMission, 340)
	MisResultCondition(HasItem, 1787, 5)
	MisResultCondition(HasItem, 1787, 5)
	MisResultCondition(HasItem, 1788, 5)
	MisResultCondition(HasItem, 1789, 5)
	MisResultCondition(HasItem, 1790, 5)
	MisResultCondition(HasItem, 1791, 5)
	MisResultCondition(HasItem, 1792, 5)
	MisResultCondition(HasItem, 1793, 5)
	MisResultAction(TakeItem, 1787, 5 )	
	MisResultAction(TakeItem, 1788, 5 )	
	MisResultAction(TakeItem, 1789, 5 )	
	MisResultAction(TakeItem, 1790, 5 )	
	MisResultAction(TakeItem, 1791, 5 )	
	MisResultAction(TakeItem, 1792, 5 )	
	MisResultAction(TakeItem, 1793, 5 )	
	MisResultAction(SetRecord, 340 )
	MisResultAction(ClearMission, 340 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1787 )
	TriggerAction( 1, AddNextFlag, 340, 1, 5 )
	RegCurTrigger( 3401 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1788 )
	TriggerAction( 1, AddNextFlag, 340, 6, 5 )
	RegCurTrigger( 3402 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1789 )
	TriggerAction( 1, AddNextFlag, 340, 11, 5 )
	RegCurTrigger( 3403 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1790 )
	TriggerAction( 1, AddNextFlag, 340, 16, 5 )
	RegCurTrigger( 3404 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1791 )
	TriggerAction( 1, AddNextFlag, 340, 21, 5 )
	RegCurTrigger( 3405 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1792 )
	TriggerAction( 1, AddNextFlag, 340, 26, 5 )
	RegCurTrigger( 3406 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1793 )
	TriggerAction( 1, AddNextFlag, 340, 31, 5 )
	RegCurTrigger( 3407 )

-----------------------------------»­Бъµгѕ¦
	DefineMission( 512, "Поставить точку финиша", 341 )

	MisBeginTalk( "<t>Вы знаете, что самая важная часть драконьего глаза - это его глазное яблоко? Из-за того, что моя кисть испортилась, я не могу нарисовать его глаз реалистичным! Мне необходимо смягчить кисть. Для этого добудьте мне чистой воды. Я думаю, что 30ти бутылок будет достаточно. Спешите, иначе я не смогу завершить свой рисунок!")
	MisBeginCondition(NoRecord, 341)
	MisBeginCondition(HasRecord, 340)
	MisBeginCondition(NoMission, 341)
	MisBeginAction(AddMission, 341)
	MisBeginAction(AddTrigger, 3411, TE_GETITEM, 1649, 30)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Добудьте 30 бутылок <rЧистой воды> для <bБанкира Ван Мо> в точку (3290, 2512)")
	MisNeed(MIS_NEED_ITEM, 1649, 30, 1, 30)

	MisResultTalk("<t>Ну почему вы такой медлительный? Кисть за это время совсем испортилась! Мне нужен еще один флакон!")
	MisHelpTalk("<t>Вы ничего не принесли? Вернитесь и добудьте чистой воды, прежде чем я измажу ваше лицо черной краской!")
	MisResultCondition(HasMission, 341)
	MisResultCondition(HasItem, 1649, 30)
	MisResultAction(TakeItem, 1649, 30 )
	MisResultAction(SetRecord, 341 )
	MisResultAction(ClearMission, 341 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 1649 )
	TriggerAction( 1, AddNextFlag, 341, 1, 30 )
	RegCurTrigger( 3411 )
	

-----------------------------------»­Бъµгѕ¦
	DefineMission( 513, "Поставить точку финиша", 342 )

	MisBeginTalk( "<t>Кисточку, которую Вы испортили, делали мне по заказу! Для того, что бы её сделать надо, как минимум <y10 Лисьих хвостов>. Я постараюсь сама сделать кисточку, от Вас же требуется принести только Лисий хвост. Если Вы не принесёте мне Лисий хвост, то мне придется сделать её из Ваших волос!")
	MisBeginCondition(NoMission, 342)
	MisBeginCondition(NoRecord, 342)
	MisBeginCondition(HasRecord, 341)
	MisBeginAction(AddMission, 342)
	MisBeginAction(AddTrigger, 3421, TE_GETITEM, 165, 10)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите этой ненормальной художнице, <bБанкиру Ванг Мо> <y10 Лисьих хвостов>")
	MisNeed(MIS_NEED_ITEM, 165, 10, 1, 10)

	MisResultTalk("<t>Какая прекрасная кисть у меня получилась!<n><t>Извините! Я не хочу Вас обманывать больше, Вы очень хороший человек и Вы помогли мне, не смотря на то, что я так агрессивно с Вами разговаривала. Моя кисточка была испорчена ещё до Вашего появления в Веснограде. За то, что Вы мне помогли, я щедро Вас отблагодарю. Вот держите, надеюсь это Вам пригодится.")
	MisHelpTalk("<t>Извините, но Вы - НЕУДАЧНИК! Принесите мне лисий хвост пока я не вырвала у Вас волосы с головы и не сделала из них кисточку!")
	MisResultCondition(HasMission, 342)
	MisResultCondition(HasItem, 165, 10)
	MisResultAction(TakeItem, 165, 10 )
	MisResultAction(SetRecord, 342 )
	MisResultAction(ClearMission, 342 )
	MisResultAction(AddExp,700000,700000)
	MisResultAction(AddMoney,10000,10000)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,3885,1,4)	
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 165 )
	TriggerAction( 1, AddNextFlag, 342, 1, 10 )
	RegCurTrigger( 3421 )


-----------------------------------К§ЧЩ
	DefineMission( 514, "Потерянный", 343 )

	MisBeginTalk( "<t>Помогите мне с моей проблемой! Я Вижу, что Вы добрый человек!<n><t>Много лет назад Подводный туннель использовали в целях перемещения между островами и для добычи морских водорослей, но из-за сильных штормов и из-за постоянных землетрясений туннель пришёл в негодное состояние. Люди перестали им пользоваться и его заселили монстры и зомби.<n><t>Мой сын <bХами> отправился в подводный туннель с группой друзей, в поисках сокровищ, с тех пор я его так и не видел. Спуститесь в туннель и узнайте что случилось с моим сыном.<n><t>Вход в туннель находится не подалёку от сюда в точке(3224,2444)!")
	MisBeginCondition(NoRecord, 343)
	MisBeginCondition(NoMission, 343)
	MisBeginCondition(HasRecord, 331)
   	MisBeginAction(AddMission, 343)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Спуститесь в туннель и узнайте, что произошло с сыном Санг Ди.")

	MisResultTalk("<t>Вы уверены, что кроме зомби, в туннеле никого не было? О боже, мой сынок стал зомби. Какой ужас.")
	MisHelpTalk("<t>Вы моя единственная надежда найти пропавшего сына, пожалуйста, спуститесь в туннель и найдите его.")
	MisResultCondition(HasMission, 343 )
	MisResultCondition(HasFlag, 343, 2 )
	MisResultAction(SetRecord, 343 )
	MisResultAction(ClearMission, 343 )

-----------------------------------К§ЧЩ
	DefineMission( 515, "Потерянный", 343 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Постойте! Подождите пожалуйста! Не бойтесь, я не заразный и не представляю для Вас угрозу. Я не утратил человеческих чувств.<n><t>В Веснограде живёт очень близкий мне человек, Вы его найдёте по координатам (3287,2501). Передайте этому человеку, что я его очень сильно люблю, но моя жестокая судьба заковала меня навеки тут, в этом проклятом туннеле.")
	MisResultCondition(NoRecord, 343)
	MisResultCondition(HasMission, 343)
	MisResultCondition(NoFlag, 343, 2)
	MisResultAction(SetFlag, 343, 2)
	
-----------------------------------К§ЧЩ
	DefineMission( 516, "Потеря", 345 )

	MisBeginTalk( "<t>Насколько мне известно, у <rЛуны> (3279,2501), есть <yТалисман>, способный заключать в себе души мертвых. Если ты не занят, будь добр, побеседуй с ней.<n><t>Посколько я виновна в их разрыве, мне слишком стыдно просить ее об этом! Но только она может помочь, я уверена!")
	MisBeginCondition(NoRecord, 345)
	MisBeginCondition(NoRecord, 347)
	MisBeginCondition(HasRecord, 343)
	MisBeginCondition(NoMission, 345)
  	MisBeginAction(AddMission, 345)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Найдите <bЛуну> (3279,2501), чтобы забрать <rТалисман>.")

	MisHelpTalk("<t>Луна согласилась помочь? Я надеюсь, еще не поздно!")
	MisResultCondition(AlwaysFailure )

-----------------------------------Бй·ы
	DefineMission( 517, "Талисман", 346 )

	MisBeginTalk( "<t>Что? Хами находится в подводном туннеле? Боже мой! Тут обычный Талисман ему не поможет! Что бы спасти его душу нужен специальный Талисман. Для того, что бы его изготовить надо сочетать  <yТалисманы привидения>.<n><t>Вы сможете получить эти талисманы у зомби в подводном туннеле, но будьте осторожны, они очень опасны и могут Вас заразить. Принесите <y20 Талисманов привидения> и я сделаю для Вас Талисман, который поможет бедному мальчику Хами!")
	MisBeginCondition(NoRecord, 346)
	MisBeginCondition(HasMission, 345)
	MisBeginCondition(NoMission, 346)
  	MisBeginAction(AddMission, 346)
	MisBeginAction(AddTrigger, 3461, TE_GETITEM, 4262, 20)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите <r20 Талисманов привидения> <bЛуне> в точку (3279,2501).")
	MisNeed(MIS_NEED_ITEM, 4262, 20, 1, 20)

	MisResultTalk("<t>Спешите! Отнесите этот Талисман Хами и попросите его, что бы он одел Талисман на голову.<n><t>Надеюсь Талисман поможет Хами.")
	MisHelpTalk("<t>Не теряйте зря время, мальчику нужно помочь.")
	MisResultCondition(HasMission, 346 )
	MisResultCondition(HasItem, 4262, 20)
	MisResultAction(TakeItem, 4262,20 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4244, 1, 4)
	MisResultAction(SetRecord, 346 )
	MisResultAction(ClearMission, 346 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4262 )
	TriggerAction( 1, AddNextFlag, 346, 1, 20 )
	RegCurTrigger( 3461 )

-----------------------------------Бй·ы
	DefineMission( 518, "Талисман", 347 )

	MisBeginTalk( "<t>Что случилось? Кто Вы? Я помню, что был долгое время без сознания. Это мне помог талисман <bЛуны>?<n><t>Я всегда знал, меня помнят и любят. Но я не смогу вернуться к моим друзьям и близким, моя душа спасена, но тело... Меня убьёт первый луч света! Поблагодарите <bЛуну> за талисман и заботу, но скажите, чтобы она забыли меня.")
	MisBeginCondition(NoRecord, 347)
	MisBeginCondition(NoMission, 347)
	MisBeginCondition(HasRecord, 346)
	MisBeginCondition(HasItem, 4244, 1)
	MisBeginAction(TakeItem, 4244, 1)
  	MisBeginAction(AddMission, 347)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Отправляйтесь к <bЛуне> и сообщите ей, что Хеми больше никогда не вернётся к ней и будет жить в подводном туннеле.")
	
	MisResultCondition(AlwaysFailure )

-----------------------------------Бй·ы
	DefineMission( 519, "Талисман", 347 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>То что Вы рассказали мне правда? Тогда я сегодня же отправляюсь к нему в подводный туннель. Я не могу жить без него!")
	MisResultCondition(NoRecord, 347)
	MisResultCondition(HasMission, 347)
	MisResultAction(SetRecord, 347)
	MisResultAction(ClearMission, 347)
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3883, 5, 4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 3884, 5, 4)
	MisResultBagNeed(2)

-----------------------------------°®µДЖжјЈ
	DefineMission( 520, "Чудо любви", 349 )

	MisBeginTalk( "<t>Молодой человек, я вижу боль в Ваших глазах.<n><t>Вас глубоко затронула история любви между Луной и Хами? Любовь способна творить чудеса.<n><t>Если вы все еще хотите помочь им, вы должны найти <bЧистый звенящий песок>, <bКорону королевы> и <bКристальное перо>. С помощью этих 3 волшебных вещей, мы могли бы помочь им.")
	MisBeginCondition(NoRecord, 349)
	MisBeginCondition(NoRecord, 356)
	MisBeginCondition(HasRecord, 347)
	MisBeginCondition(NoMission, 349)
	MisBeginCondition(NoMission, 356)
	MisBeginAction(AddMission, 349)
	MisBeginAction(AddTrigger, 3491, TE_GETITEM, 4245, 1 )
	MisBeginAction(AddTrigger, 3492, TE_GETITEM, 4246, 1 )
	MisBeginAction(AddTrigger, 3493, TE_GETITEM, 4247, 1 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите 3 специальных предмета <pФокусу-Покусу>.")
	MisNeed(MIS_NEED_ITEM, 4245, 1, 5, 1)
	MisNeed(MIS_NEED_ITEM, 4246, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4247, 1, 15, 1)

	MisResultTalk("<t>Вы принесли эти волшебные предметы, они творят чудеса по отдельности, но когда их объединить, то происходит самое большое чудо. По легенде эти предметы превратятся в Брошь и если дать эту Брошь Хами, то он опять станет человеком и сможет жить нормальной жизнью.")
	MisHelpTalk("<t>Вы ещё не принесли эти волшебные вещи. Без них мы не сможем помочь влюблённым.")
	MisResultCondition(HasMission, 349 )
	MisResultCondition(HasItem, 4245, 1 )	
	MisResultCondition(HasItem, 4246, 1 )	
	MisResultCondition(HasItem, 4247, 1 )
	MisResultAction(TakeItem, 4245, 1 )	
	MisResultAction(TakeItem, 4246, 1 )	
	MisResultAction(TakeItem, 4247, 1 )
        MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4248, 1 ,4)	
	MisResultAction(SetRecord, 349 )
	MisResultAction(ClearMission, 349 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4245)	
	TriggerAction( 1, AddNextFlag, 349, 5, 1 )
	RegCurTrigger( 3491 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4246)	
	TriggerAction( 1, AddNextFlag, 349, 10, 1 )
	RegCurTrigger( 3492 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4247)	
	TriggerAction( 1, AddNextFlag, 349, 15, 1 )
	RegCurTrigger( 3493 )

-----------------------------------Е®ЙсµДСЫАб
	DefineMission( 521, "Слеза Богини", 350 )

	MisBeginTalk( "<t> После стольких лет легенда еще не забыта? Слезы Богини - всего лишь изящная метафора, на самом деле это -  <rЧистый звенящий песок>, который можно найти только в Пустой пещере. Только чистые душой и добрые сердцем смогут добыть его. До сих пор ни один вор или бандит не вышел из пещеры живым.  Осмелишься ли ты добыть песок?")
	MisBeginCondition(NoRecord, 350)
	MisBeginCondition(NoMission, 350)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 350)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Зайдите в глубины <pПустой пещеры> и принесите оттуда <rЧистый Звенящий Песок>.")

	MisResultTalk("<t>Только чистейшая душа сможет добыть этот чистейший песок. То, что ты справился, говорит само за себя.")
	MisHelpTalk("<t>Запомни, Чистый звенящий песок ты найдешь в Пустой пещере.")
	MisResultCondition(HasMission, 350)
	MisResultCondition(HasItem, 4245, 1)
 	MisResultAction(SetRecord, 350 )
	MisResultAction(ClearMission, 350 )



-----------------------------------ИЛУгµДРДФа
	DefineMission( 522, "Сердце русалки", 351 )

	MisBeginTalk( "t> Сердце Мермана на самом деле относится к <rКоролевской короне>. Я не думаю, что такой молодой человек, как вы, можете это понять. <n><t>Сердце <n> Ф Мермана это алмаз, который Уильям подарил своей жене. Так или иначе, позже они были инкрустированные в корону королевы, которая попала в руки врага вместе с королевским дворцом. Все тропы, ведущие к нему, с тех пор потерялись, ходили слухи, что это проклятие Мермана в. Все бандиты и воры, которые искали его в руины королевского дворца были захвачены и убиты. Вы посмеете искать его самостоятельно?")
	MisBeginCondition(NoRecord, 351)
	MisBeginCondition(NoMission, 351)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 351)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Идите в <pРуины Дворца> и верните <rКорону Королевы>")

	MisResultTalk("t> Вы действительно нашли корону королевы? Возможно, вы будете первым человеком, который сделал легенду реальностью.")
	MisHelpTalk("t> Я уверена, что корону королевы можно найти в развалинах, но никто не знает ее точное местонахождение.")
	MisResultCondition(HasMission, 351)
	MisResultCondition(HasItem, 4246, 1)
 	MisResultAction(SetRecord, 351 )
	MisResultAction(ClearMission, 351 )

	-----------------------------------·ЙДсµДУрГ«
	DefineMission( 523, "Перо птицы", 352 )

	MisBeginTalk( "<t>Перо Райской Птицы - награда, выдаваемая храбрейшим из воинов. Ее достойны лишь те, кто способен добыть <rКристальное перо> в Мире Демонов. Многие погибли, пытаясь, осмелишься ли ты??")
	MisBeginCondition(NoRecord, 352)
	MisBeginCondition(NoMission, 352)
	MisBeginCondition(HasMission, 349)
 	MisBeginAction(AddMission, 352)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Отправляйтесь в <pМир Демонов> и добудьте <rКристальное перо>")

	MisResultTalk("<t>Ты - третий человек, добывший Кристальное перо. Я не могу назвать имен двух других героев, но скоро ты и сам их узнаешь.")
	MisHelpTalk("<t>Помни - Мир Демонов очень опасен, лишь немногие выжили там.")
	MisResultCondition(HasMission, 352)
	MisResultCondition(HasItem, 4247, 1)
 	MisResultAction(SetRecord, 352 )
	MisResultAction(ClearMission, 352 )

-----------------------------------°®µДЖжјЈ
	DefineMission( 524, "Чудо любви", 353 )

	MisBeginTalk( "t> Вы хотите сказать, что пока эта брошь со мной я могу вернуться в мир? <n><t> Спасибо! Теперь я могу увидеть Luna снова. Поспешите сказать ей, что у меня естьхорошие новости для нее.")
	MisBeginCondition(NoRecord, 353)
	MisBeginCondition(NoMission, 353)
	MisBeginCondition(HasRecord, 349)
	MisBeginCondition(HasItem, 4248,1)
	MisBeginAction(TakeItem, 4248, 1)
  	MisBeginAction(AddMission, 353)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Передайте добрую весть <bБакалейщице Luna>(3279, 2501)")

	MisHelpTalk("t>Огромное спасибо, я правда не знаю, как отблагодарить тебя, желаю тебе удачи в будущем.")
	MisResultCondition(AlwaysFailure )

-----------------------------------°®µДЖжјЈ
	DefineMission( 525, "Чудо любви", 353 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("t>Что? Вы выполнили древние легенды? Теперь моя Хами сможет вернуться ко мне? Как я смогу отблагодарить тебя? Возьми этот талисман, он даст вам сопротивление от яда ходячих трупов в подводном туннеле. Это немного, но это лучшее, чем я могу наградить тебя.")
	MisResultCondition(NoRecord, 353)
	MisResultCondition(HasMission, 353)
	MisResultAction(SetRecord, 353)
	MisResultAction(ClearMission, 353)	
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddExpAndType,2,50000,50000)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,3348,10,4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,3349,10,4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,3350,10,4)
	MisResultBagNeed(3)

-----------------------------------К¬¶ѕ
	DefineMission( 526, "Трупный яд", 355 )

	MisBeginTalk( "<t>Неприятности с ядом? Давненько я не делал оберегов от него.<n><t>Принеси мне 20 <rТалисманов привидения> и 5000 золотых, тогда я сделаю для тебя амулет. Талисманы привидения ты найдешь в Подводном Туннеле.")
	MisBeginCondition(NoRecord, 355)
	MisBeginCondition(NoMission, 355)
	MisBeginCondition(HasRecord, 353)
 	MisBeginAction(AddMission, 355)
	MisBeginAction(AddTrigger, 3551, TE_GETITEM, 4262, 20)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Найдите <r20 Талисманов привидения> для создания ядостойкого <rАмулета>")
	MisNeed(MIS_NEED_ITEM, 4262, 20, 1, 20)

	MisResultTalk("<t>Ты наконец собрал все Талисманы и принес с собой 5000 золота, поэтому я приступаю. Уходи, я зачарую амулет. Если будешь подглядывать - сделка отменяется! <n><t>Вот, держи свой амулет. Понадобится еще один - принеси еще 20 Талисманов привидения и 5000 золотых.")
	MisHelpTalk("<t>Всего-то нужно 20 Талисманов привидений! Даже мне это по силам. Ты совсем ничего не можешь, слабак.")
	MisResultCondition(HasMission, 355)
	MisResultCondition(HasItem, 4262, 20)
	MisResultAction(TakeItem, 4262, 20)
        MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4249, 12 ,4)	
 	MisResultAction(SetRecord, 355 )
	MisResultAction(ClearMission, 355 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4262 )
	TriggerAction( 1, AddNextFlag, 355, 1, 20 )
	RegCurTrigger( 3551 )

-----------------------------------К§ЧЩ
	DefineMission( 527, "Потеря", 345, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Что? Мой сын не вернется домой? Наверное, только смерть упокоит его. Мне было так неловко просить тебя о помощи, но мне так жаль его и Луну. <n><t>Но ты помог мне, и жители Веснограда запомнят твою доброту, если тебе понадобится помощь, обращайся!")
	MisResultCondition(HasRecord, 347)
	MisResultCondition(NoRecord, 353)
	MisResultCondition(NoRecord, 345)
	MisResultCondition(NoRecord, 349)
	MisResultCondition(HasMission, 345)
	MisResultCondition(NoMission, 353)
	MisResultCondition(NoMission, 349)
	MisResultAction(ClearMission, 345 )
	MisResultAction(SetRecord, 345 )
	
-----------------------------------К§ЧЩ
	DefineMission( 528, "Потеря", 345 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Что? Свершилось чудо? Мой сын спасен?!<n><t>Спасибо! Жители Веснограда всегда будут рады тебе! Твое доброе дело заслужило одобрение местных, и теперь ты - наш почетный гость. Если тебе понадобится помощь, просто дай мне знать.")
	MisResultCondition(HasRecord, 353)
	MisResultCondition(NoRecord, 345)
	MisResultCondition(HasMission, 345)
	MisResultAction(ClearMission, 345 )
	MisResultAction(SetRecord, 345 )
	MisResultAction(SetRecord, 354 )

-----------------------------------ЙсЖж№ыКµ
	DefineMission( 529, "Чудесный фрукт", 358 )

	MisBeginTalk( "<t>Тебе когда-нибудь ранее встречался загадочный фрукт?<n><t>Я даже не слыхала о таком ни разу! <bЮри> (3196, 2509), должно быть, опять всё выдумал! Я так и знала! Он обожает врать.")
	MisBeginCondition(NoRecord, 358)
	MisBeginCondition(HasRecord, 345)
	MisBeginCondition(NoMission, 358)
  	MisBeginAction(AddMission, 358)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Расспросите <bЮри> (3195, 2506) о загадочном фрукте.")

	MisHelpTalk("<t>Да не знаю я! Зачем бы я врала тебе?")
	MisResultCondition(AlwaysFailure )
-----------------------------------ЙсЖж№ыКµ
	DefineMission( 530, "Чудесный фрукт", 359 )

	MisBeginTalk( "<t>Я видел короля Роланда. <n> <T> Если вы не верите мне, посмотрите на эти шрамы!Они являются результатом нашей дуэли которая прошла недавно. Вы говорите, что хотите увидеть загадочные фрукты? Я раньше таких фруктов не видел!На знаю что Чжоу комуто его продала. <n> <T> Почему бы тебе самому не спросить  <bЧжоу> (3298, 2534)?")
	MisBeginCondition(NoRecord, 359)
	MisBeginCondition(NoMission, 359)
	MisBeginCondition(HasMission, 358)
	MisBeginAction(SetRecord, 358 )
	MisBeginAction(ClearMission, 358 )
  	MisBeginAction(AddMission, 359)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Расспросите <bСтражника Жу> (3298, 2534) о загадочном фрукте")

	MisHelpTalk("<t>Если тебе понадобится информация о золотых яблоках или фруктах единорога, заходи ко мне.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЙсЖж№ыКµ
	DefineMission( 531, "Волшебный фрукт", 360 )

	MisBeginTalk( "<t> Мистический фрукт? О чем идет речь, я не знаю не о каком фрукте. Не трогай меня, я прибыл сюда отдохнуть! Я наконец то выбрался из этого гадкого <pПодводного туннеля> и обратно не вернусь. Можешь там поискать, только предупреждаю... От туда ни кто живым не возвращается! Я счастливчик.")
	MisBeginCondition(NoRecord, 360)
	MisBeginCondition(NoMission, 360)
	MisBeginCondition(HasMission, 359)
	MisBeginAction(ClearMission, 359 )
  	MisBeginAction(AddMission, 360)
	MisBeginAction(AddTrigger, 3601, TE_GETITEM, 4263, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Исследовать в <pПодводном туннеле>")
	MisNeed(MIS_NEED_ITEM, 4263, 1, 1, 1)

	MisHelpTalk("<t>Желаю вам удачи...")
	MisResultCondition(AlwaysFailure )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4263 )
	TriggerAction( 1, AddNextFlag, 360, 1, 1 )
	RegCurTrigger( 3601 )

-----------------------------------¶сД§µД№ыКµ
	DefineMission( 532, "Волшебный фрукт", 361 )

	MisBeginTalk( "<t> Что там у вас в руках? Похоже я это когда-то видел. Ой убери эту мерзость, убери скорее... Я не желаю сталкиваться с ней снова! <n><t>Эта проклятая вещь, убери ее пока не случилось беды!")
	MisBeginCondition(NoRecord, 361)
	MisBeginCondition(HasMission, 360)
	MisBeginCondition(NoMission, 361)
	MisBeginCondition(HasItem, 4263, 1)
	MisBeginAction(ClearMission, 360 )
 	MisBeginAction(AddMission, 361)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Уничтожите фрукт и поговорите с Чжоу. (3298, 2534)")

	MisResultTalk("<t>Я чувствую себя намного лучше, надеюсь я вас не испугал? Если бы богиня кара послала на вас такие испытания что перенес я, у была бы та же реакция!")
	MisHelpTalk("<t> Что там у вас в руках? Похоже я это когда-то видел. Ой убери эту мерзость, убери скорее... Я не желаю сталкиваться с ней снова! <n><t>Эта проклятая вещь, убери ее пока не случилось беды!")
	MisResultCondition(HasMission, 361)
	MisResultCondition(NoItem, 4263, 1)
   	MisResultAction(SetRecord, 361 )
	MisResultAction(ClearMission, 361 )

-----------------------------------ЦЬОвЦЈµДРЕ
	DefineMission( 533, "Письмо Чжоу", 362 )

	MisBeginTalk( "<t>Хм, вы сказали в подводном туннеле больше нету этих фруктов? <n> <T> Это точно? Ну хорошо. Передайте это письмо <bБанкиру Ванг Мо> по координатам (3290, 2512)")
	MisBeginCondition(NoRecord, 362)
	MisBeginCondition(NoMission, 362)
	MisBeginCondition(HasRecord, 361)
 	MisBeginAction(AddMission, 362)
 	MisBeginAction(GiveItem, 4250,1,4)
	MisBeginBagNeed(1)

	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Отдайте <rРозовое письмо> Банкиру Ванг Мо (3290, 2512)")

	MisResultTalk("<t>Письмо от Чжоу? Ах *кашель* я думал это касающееся нашего бизнеса.")
	MisHelpTalk("<t>Спешите  доставить письмо. Я слишком взволнован, не могу ничего вспомнить.")
	MisResultCondition(HasMission, 362)
	MisResultCondition(HasFlag, 362, 10)
   	MisResultAction(SetRecord, 362 )
	MisResultAction(ClearMission, 362 )

-----------------------------------¶сД§µД№ыКµ
	DefineMission( 534, "Адский фрукт", 363 )

	MisBeginTalk( "<t>Вы видели Ледяных драконов? Ухххх. Но это не важно <n> <T>Что касается фруктов, то его называют Адским фруктом. Говорят, что те кто его съедят получать силы. Говорят один из драконов съел такой фрукт! Думаю Санг Ди вам поможет.")
	MisBeginCondition(NoRecord, 363)
	MisBeginCondition(NoMission, 363)
	MisBeginCondition(HasRecord, 362)
  	MisBeginAction(AddMission, 363)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Расспросите <pСанг Ди> о Адских фруктах (3287, 2501)")

	MisHelpTalk("<t>Я все сказал, больше я ничего не знаю. Не сводите меня с ума с этой историей еще раз.")
	MisResultCondition(AlwaysFailure )
	

-----------------------------------·АёЇјБ
	DefineMission( 535, "Защитное средство", 364 )

	MisBeginTalk( "<t>Хотите сделать Талисман защиты? Он может быть полезен при изучении Подводного туннеля. <n> <T> Принесите мне Гнилое дерево 3 шт, Проклятая кость 3 шт, Ость 3 шт.")
	MisBeginCondition(NoMission, 364)
 	MisBeginAction(AddMission, 364)
	MisBeginAction(AddTrigger, 3641, TE_GETITEM, 4259, 3)
	MisBeginAction(AddTrigger, 3642, TE_GETITEM, 4260, 3)
	MisBeginAction(AddTrigger, 3643, TE_GETITEM, 4261, 3)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите Луне ингредиенты")
	MisNeed(MIS_NEED_ITEM, 4259, 3, 1, 3)
	MisNeed(MIS_NEED_ITEM, 4260, 3, 5, 3)
	MisNeed(MIS_NEED_ITEM, 4261, 3, 10, 3)

	MisResultTalk("<t>.Да , это то что нужно.")
	MisHelpTalk("<t> Ты глупый? Я же четко сказала 3ш <rГнилое Дерево>, 3ш <rПроклятая кость>, 3ш <rОсть>.")
	MisResultCondition(HasMission, 364)
	MisResultCondition(HasItem, 4259, 3)
	MisResultCondition(HasItem, 4260, 3)
	MisResultCondition(HasItem, 4261, 3)
	MisResultAction(TakeItem, 4259, 3)
	MisResultAction(TakeItem, 4260, 3)
	MisResultAction(TakeItem, 4261, 3)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4251, 1 ,4)	
 	MisResultAction(SetRecord, 364 )
 	MisResultAction(ClearMission, 364 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4259 )
	TriggerAction( 1, AddNextFlag, 364, 1, 3 )
	RegCurTrigger( 3641 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4260 )
	TriggerAction( 1, AddNextFlag, 364, 5, 3 )
	RegCurTrigger( 3642 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4261 )
	TriggerAction( 1, AddNextFlag, 364, 10, 3 )
	RegCurTrigger( 3643)

-----------------------------------БъЦ®Аб
	DefineMission( 536, "Слеза дракона", 24 , COMPLETE_SHOW)
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Слеза Дракона? Я давно ничего об этом не слышал! Из-за того, что ты упомянул о размере этой вещички, я сразу решил, что ты встретился с тем ребенком. Забудь, чтобы мы ни делали - все бесполезно, прошлое в прошлом.<n><t>Ты бы хотел узнать подробнее о слезе дракона? У меня 2 варианта. Первый, ты продаешь мне ее за самоцвет и забываешь о нашем разговоре. Второй, я расскажу тебе все что я знаю об этом камне, но ты должен пообещать, что расскажешь мне, если раскроешь эту тайну.")
	MisResultCondition(NoRecord, 24)
	MisResultCondition(HasMission, 24)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 24)
	MisResultAction(ClearMission, 24)

-----------------------------------±дВфБъЦ®Аб
	DefineMission( 537, "Продажа слез дракона", 366 )

	MisBeginTalk( "<t>Я куплю этот камень за <r200000 золотых>")
	MisBeginCondition(NoRecord, 366)
	MisBeginCondition(NoMission, 366)
	MisBeginCondition(NoMission, 367)
	MisBeginCondition(NoRecord, 367)
	MisBeginCondition(HasRecord, 24)	
	MisBeginCondition(HasItem, 4252,1)	
 	MisBeginAction(AddMission, 366)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Найдите <rСлеза Дракона>")

	MisResultTalk("<t>Вы нашли ее? Получайте свое вознаграждение!")
	MisHelpTalk("<t>Где слеза?")
	MisResultCondition(HasMission, 366)
	MisResultCondition(HasItem, 4252,1)
        MisResultAction(TakeItem, 4252, 1)	
        MisResultAction(AddMoney, 200000, 200000)	
 	MisResultAction(SetRecord, 366 )
 	MisResultAction(ClearMission, 366 )

-----------------------------------БъЦ®АбµДґ«Лµ
	DefineMission( 538, "Легенда о слезе дракона", 367 )

	MisBeginTalk( "<t>Так вы действительно хотите узнать о Слезе Дракона? Я знаю только одну легенду <n> <T> Но мне нужно больше времени. Вернитесь чуть позже.")
	MisBeginCondition(NoRecord, 366)
	MisBeginCondition(HasRecord, 24)
	MisBeginCondition(NoMission, 366)
	MisBeginCondition(NoMission, 367)
	MisBeginCondition(NoRecord, 367)
	MisBeginCondition(HasItem, 4252,1)
	MisBeginAction(AddMission, 367)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Поговорите с Лонг Ер")

	MisResultTalk("<t> Легенда гласит,что Слезы дракона открывают путь к Черному дракону!")
	MisHelpTalk("<t>У вас есть слезы Дракона?")
	MisResultCondition(HasMission, 367)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 367 )
 	MisResultAction(ClearMission, 367 )
	MisResultAction(ObligeAcceptMission, 25 )




-----------------------------------БъЦ®АбµДГШГЬ
	DefineMission( 539, "Тайна слезы дракона", 25, COMPLETE_SHOW )
	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Как же ты достал слезу Дракона Стужи? Хорошо, что ты ей не воспользовался.<n><t>Значит легенда гласит правду. Тем не менее, есть еще одна вещь, которую мы оставили в стороне. Кровь и слезы должны быть для других!")
	MisResultCondition(NoRecord, 25)
	MisResultCondition(HasMission, 25)
	MisResultCondition(HasItem, 4252, 1)
	MisResultAction(SetRecord, 25)
	MisResultAction(ClearMission, 25)

-----------------------------------КҐЛ®
	DefineMission( 540, "Святая вода", 369 )

	MisBeginTalk( "<t>Ледовый дракон был создан Богами в надежде побороть горе и слабость. Но люди заметили в них лишь дорогие кости и ценные артефакты. <n> <T> Найдите в Магическом океане <pБутыль с водой> по координатам <p(3800, 550)> , и я расскажу вам как ей пользоваться.")
	MisBeginCondition(NoRecord, 369)
	MisBeginCondition(NoMission, 369)
	MisBeginCondition(HasRecord, 25 )
	MisBeginAction(GiveItem, 4239,1,4)
 	MisBeginAction(AddMission, 369)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Великий синий океан (3800, 550) Найдите бутыль с водой.")

	MisResultTalk("<t>Вау! извольте взглянуть на воду.")
	MisHelpTalk("<t>У вас проблемы? <p(3800, 550)> вам надо в Магический океан! ")
	MisResultCondition(HasMission, 369 )
	MisResultCondition(HasItem, 4257,1)
        MisResultAction(TakeItem, 4257, 1)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4240, 1, 4)
	MisResultAction(SetRecord, 369 )
 	MisResultAction(ClearMission, 369 )
	MisResultBagNeed(1)
 
 -----------------------------------КҐЛ®
	DefineMission( 541, "Выкуп", 370 )

	MisBeginTalk( "<t>Ваш знакомый будет особожден!")
	MisBeginCondition(HasRecord, 369)
	MisBeginCondition(NoRecord, 370)
	MisBeginCondition(NoMission, 370)
	MisBeginAction(AddMission, 370)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	
	MisNeed(MIS_NEED_DESP, "Пролейте Святую воду на Слезу дракона, что бы освободить душу.")

	MisHelpTalk("<t>Пролейте Святую воду на Слезу дракона, что бы освободить душу.")
	MisResultCondition(AlwaysFailure )
	
 
 -----------------------------------єЈЙ°µДґжїо
	DefineMission( 542, "Месторождение Хассли", 26 , COMPLETE_SHOW)
	
	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t> Наши вклады очень долгое время не использовали. Вы говорите,что готовы взять его на себя? Хорошо.Если вы скажите нам пароль от сейфа мы подумаем.")
	MisResultCondition(NoRecord, 26)
	MisResultCondition(HasMission, 26)
	MisResultAction(ClearMission, 26)
	MisResultAction(SetRecord, 26)
        MisResultAction(AddMoney, 200000)	
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,250000,250000)
	MisResultAction(AddExpAndType,2,60000,60000)

-----------------------------------ЦЬОвЦЈµДЗйКй
	DefineMission( 543, "Любовное письмо Чжоу", 372 )

	MisBeginTalk( "<t>Подождите! Не уходите! Я надеюсь вы не читали писмо? <n> <t> Если читали, то прошу, храните молчание! Кстате посмотрите новые товары у Юри (3195,2506)")
	MisBeginCondition(NoRecord, 372)
	MisBeginCondition(NoMission, 372)
	MisBeginCondition(HasMission, 27)
 	MisBeginAction(AddMission, 372)
	MisBeginAction(SetRecord, 27)
	MisBeginAction(ClearMission, 27)
	MisBeginAction(AddTrigger, 3721, TE_GETITEM, 4241, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Помогите <bБанкиру - Ванг Мо> вернуть комплект <rМодная одежда> купить который можно у <bКупец - Юрий> по координатам (3196, 2509).")
	MisNeed(MIS_NEED_ITEM, 4241, 1, 1, 1)

	MisResultTalk("<t>Да! Это то что я хотела.")
	MisHelpTalk("<t> Где моя одежда? А ну бегом за ней или я убью тебя прямо сейчас!")
	MisResultCondition(HasMission, 372)
	MisResultCondition(HasItem, 4241, 1)
	MisResultAction(TakeItem, 4241, 1 )
 	MisResultAction(SetRecord, 372 )
	MisResultAction(ClearMission, 372 )
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4241 )
	TriggerAction( 1, AddNextFlag, 372, 1, 1 )
	RegCurTrigger( 3721 )
 


 -----------------------------------ЦЬОвЦЈµДРЕ
	DefineMission( 544, "Письмо Чжоу", 362 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Снова? Этот парень... Я действительно не знаю что сказать ему. Я правда сожалею!  Прошу тебя вернись и отдай его обратно, он поймет.")
	MisResultCondition(NoRecord, 362)
	MisResultCondition(NoFlag, 362, 10)
	MisResultCondition(HasMission, 362)
	MisResultCondition(HasItem, 4250, 1)
	MisResultAction(TakeItem, 4250, 1)
	MisResultAction(SetFlag, 362, 10)
	
-----------------------------------РВ»х
	DefineMission( 545, "Новые вещи", 372 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Как ты я говорила ранее, у меня новые поставки товара, но чертов корабль еще не пришел! И я слишком взволнована что бы быть счастливой... Если ты готов помочь мне, то я могу дать тебе рубашку.")
	MisResultCondition(NoRecord, 372)
	MisResultCondition(NoFlag, 372, 10)
	MisResultCondition(HasMission, 372)
	MisResultAction(SetFlag, 372, 10)
	
-----------------------------------іцєЈґтМЅ
	DefineMission( 546, "Исследование моря", 375 )

	MisBeginTalk( "<t>Оу, так вы согласны найти мой корабль? Прекрасно! Отправляйтесь по координатам <p2500, 2260>. Ах да, возьмите с собой Бинокль, что бы хорошо видеть корабль.")
	MisBeginCondition(NoRecord, 375)
	MisBeginCondition(NoMission, 376)
	MisBeginCondition(NoMission, 375)
	MisBeginCondition(NoRecord, 376)
	MisBeginCondition(HasMission, 372)
	MisBeginCondition(HasFlag, 372, 10)
	MisBeginAction(AddMission, 375)
	MisBeginAction(GiveItem, 4258,1,4)
	MisBeginBagNeed(1)

	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Отправляйтесь по координатам <p2500, 2260> рядом с Весноградом. <rБинокль> для наблюдения.")

	MisResultTalk("<t> Вы нашли мой корабль? Восхитительно! Этот презент вам. Ах чуть не забыла, верните мой бинокль, он стоит целое состояние!")
	MisHelpTalk("<t> Вы забыли координаты? <p2500, 2260>. Отправляйтесь немедленно! Я буду ждать от вас хороших новостей.")
       	MisResultCondition(HasMission, 28)
	MisResultCondition(HasItem, 4258, 1)
	MisResultAction(TakeItem, 4258, 1)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4241, 1,4)	
 	MisResultAction(SetRecord, 375 )
 	MisResultAction(ClearMission, 375 )
 	MisResultAction(ClearMission, 28 )
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

 -----------------------------------№єВтРВТВ
	DefineMission( 547, "Покупка новой одежды", 376 )

	MisBeginTalk( "<t> Вы не хотите исследователь море? Хорошо.")
	MisBeginCondition(NoRecord, 375)
	MisBeginCondition(NoMission, 376)
	MisBeginCondition(NoMission, 375)
	MisBeginCondition(NoRecord, 376)
	MisBeginCondition(HasMission, 372)	
	MisBeginAction(AddMission, 376)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	
	MisResultTalk("<t>Я надеялся на то , что вы исследуете море.Но если вы готовы расстаться с 100000 тысячами золотых...")
	MisHelpTalk("<t>Принести 100000 тысяч золотых")
	MisResultCondition(HasMission, 376)
	MisResultCondition(HasMoney, 100000)
        MisResultAction(TakeMoney, 100000)	
        MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4241, 1,4)	
 	MisResultAction(SetRecord, 376 )
 	MisResultAction(ClearMission, 376 )
	MisResultBagNeed(1)

-----------------------------------¶сД§µД№ыКµ
	DefineMission( 548, "Адский фрукт", 363 , COMPLETE_SHOW)

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t> Какой еще демонический фрукт? Я же объяснил тебе, глупый. Мне просто, напросто 100 лет, я еще не стар. <n><t> Если бы вы не стремились помочь Хами, я давно бы выдворил вас к чертовой матери. Повторяю в последний раз мне 100 лет!")
	MisResultCondition(NoRecord, 363)
	MisResultCondition(NoFlag, 363, 22)
	MisResultCondition(HasMission, 363)
	MisResultAction(SetFlag, 363, 22)
	MisResultAction(AddExp,2500000,2500000)
	MisResultAction(AddExpAndType,2,50000,50000)

-----------------------------------¶сД§µД№ыКµ
	DefineMission( 550, "Адский фрукт", 363, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t> Бррр... Если ты спросишь еще раз о этом Адском фрукте, на меня не обижайся. <n><t>Что за серьга у тебя в кармане? Она похоже на серьгу моей внучки! Но она же была потеряна в море. Что? Вы не врете она жива? И ей уже 150 лет?!  Ладно, я признаюсь я съел Адский фрукт, но мой возраст не достиг тысячи лет! Эти фрукты появились когда Роланд Король пиратов обитал на этих островах, после того как он исчез, исчезли и фрукты. Но до сих пор никто не знает, откуда они взялись и куда они делись.")
	MisResultCondition(NoRecord, 363)
	MisResultCondition(HasFlag, 363, 22)
	MisResultCondition(HasMission, 363)
	MisResultCondition(HasItem, 4235, 1)
	MisResultAction(TakeItem, 4235, 1)
	MisResultAction(SetRecord, 363)
	MisResultAction(ClearMission, 363)
	MisResultAction(AddMoney,50000,50000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,3351,15,4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,3352,15,4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,3353,15,4)
	MisResultBagNeed(3)


 -----------------------------------ВЮЙ­
	DefineMission( 551, "Роланд", 380 )

	MisBeginTalk( "<t>Вы спрашиваете о Роланде? О-оо он герой многих легенд!")
	MisBeginCondition(HasRecord, 363)
	MisBeginCondition(NoRecord, 380)
	MisBeginCondition(NoMission, 380)
	MisBeginAction(AddMission, 380)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Навестите Санг Ди (3287, 2501).")

	MisResultTalk("<t>Все счета были урегулированы")
	MisHelpTalk("<t>Не все счета были урегулированы")
	MisResultCondition(HasRecord, 386)
	MisResultCondition(HasMission, 380)
  	MisResultAction(SetRecord, 380 )
 	MisResultAction(ClearMission, 380 )
	


-----------------------------------±Їѕз
	DefineMission( 552, "Трагедия", 381 )

	MisBeginTalk( "<t>О...эта ужасная история с внуком Пачкуля последний слух о нем был в  Магическом океане (3757, 1248), после чего он пропал без вести.Думаю мой подводный искатель поможет вам.")
	MisBeginCondition(NoRecord, 381)
	MisBeginCondition(NoMission, 381)
	MisBeginCondition(HasRecord, 290)
	MisBeginAction(AddMission, 381)
  	MisBeginAction(GiveItem,4253,1,4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	
	MisNeed(MIS_NEED_DESP, "Магический океан (3757, 1248)")
	MisResultCondition(AlwaysFailure )


-----------------------------------±Їѕз
	DefineMission( 553, "Трагедия", 382 )

	MisBeginTalk( "<t>Да,это большая трагедия.Думаю вам стоит рассказать об этом Пачкулю")
	MisBeginCondition(NoMission, 382)
	MisBeginCondition(HasMission, 29)
	MisBeginCondition(HasItem, 4233,1)
	MisBeginAction(ClearMission, 29)
	MisBeginAction(SetRecord, 29)
	MisBeginAction(AddMission, 382)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Отнести письмо Пачкулю по координатам (2272, 2700)")
	
	MisResultCondition(AlwaysFailure )
-----------------------------------±Їѕз
	DefineMission( 554, "Трагедия", 382, COMPLETE_SHOW )


	MisBeginCondition( AlwaysFailure )
		
	MisResultTalk("<t>Я знал,я знал что случится беда...Спасибо! Теперь я хотя бы буду знать что с ним случилось.")
	MisResultCondition(HasMission, 382)
	MisResultCondition(HasItem, 4233, 1)
	MisResultAction(TakeItem, 4233, 1)
	MisResultAction(ClearMission, 382)
	MisResultAction(SetRecord, 382)

-----------------------------------±Їѕз
	DefineMission( 555, "Трагедия", 383 )

	MisBeginTalk( "<t>Хотя я в вашем возрасте и плавал так далеко,вам придется проучить этих пиратов!")
	MisBeginCondition(NoRecord, 383)
 	MisBeginCondition(HasRecord, 382)
 	MisBeginCondition(NoMission, 383)
	MisBeginAction(AddMission, 383)
	MisBeginAction(AddTrigger, 3831, TE_KILL, 594, 10)
	MisBeginAction(AddTrigger, 3832, TE_KILL, 593, 5)
	MisBeginAction(AddTrigger, 3833, TE_KILL, 656, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Уничтожте Фрегат Джека-пирата x10 (1950, 3515); Корабль поддержки Джека-пирата на х5 (2210, 3769); Командный корабль Джека-пирата х1 (1966, 3769)")
	MisNeed(MIS_NEED_KILL, 594, 10, 1, 10)
	MisNeed(MIS_NEED_KILL, 593, 5, 11, 5)
	MisNeed(MIS_NEED_KILL, 656, 1, 16, 1)

	MisResultTalk("<t>Спасибо! Спасибо! Я вам очень благодарен!")
	MisHelpTalk("<t>Если для вас это сложно....забудьте об этом. Я умру с этими людоедами")
	MisResultCondition(HasMission, 383 )
	MisResultCondition(HasFlag, 383, 10)
	MisResultCondition(HasFlag, 383, 15)
	MisResultCondition(HasFlag, 383, 16)
 	MisResultAction(SetRecord, 383 )
 	MisResultAction(ClearMission, 383 )
	MisResultAction(AddMoney,100000,100000)
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,3878,1,4)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,4715,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 594 )
	TriggerAction( 1, AddNextFlag, 383, 1, 10 )
	RegCurTrigger( 3831 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 593 )
	TriggerAction( 1, AddNextFlag, 383, 11, 5 )
	RegCurTrigger( 3832 )
	InitTrigger()
	TriggerCondition( 1, IsMonster, 656 )
	TriggerAction( 1, AddNextFlag, 383, 16, 1 )
	RegCurTrigger( 3833 )

-----------------------------------№эИҐ
	DefineMission( 556, "Прошлое", 384 )

	MisBeginTalk( "<t>Знаете ли вы почему Альбуда в такой ярости? Взгляните на мусор в округе. <n> <T> Мы изучали древние письмена , и началась буря! Мы думаем это происки Богини. <n> <T> Интересно эти рукописи сохранились? Если вы найдете их,я поделюсь с вами некоторыми раритетами.")
	MisBeginCondition(NoRecord, 384)
	MisBeginCondition(NoMission, 384)
	MisBeginCondition(HasRecord, 290)
 	MisBeginAction(AddMission, 384)
	MisBeginAction(AddTrigger, 3841, TE_GETITEM, 4234, 1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Найдите <rДревние рукописи> для Жрицы Ады (862,3303)")
	MisNeed(MIS_NEED_ITEM, 4234, 1, 1, 1)

	MisResultTalk("<t>Я не думал что ты найдешь их так быстро.")
	MisHelpTalk("<t>Прошло больше месяца...возможно письмена уже пропали.")
	MisResultCondition(HasMission, 384)
	MisResultCondition(HasItem,4234,1)
	MisResultAction(TakeItem, 4234,1 )
 	MisResultAction(SetRecord, 384 )
	MisResultAction(ClearMission, 384 )
	MisResultAction(AddExpAndType,2,60000,60000)
	
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,3878,1,4)
	MisResultBagNeed(2)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4234 )
	TriggerAction( 1, AddNextFlag, 384, 1, 1 )
	RegCurTrigger( 3841 )

-----------------------------------№эИҐ
	DefineMission( 557, "Прошлое", 384, COMPLETE_SHOW )

	MisBeginCondition( AlwaysFailure )

	MisResultTalk("<t>Древний журнал? Хм, где то я уже о нем слышал! ")
	MisResultCondition(NoRecord, 384)
	MisResultCondition(HasMission, 384)
	MisResultCondition(NoItem, 4234, 1)
	MisResultCondition(NoFlag, 384, 10)
	MisResultAction(SetFlag, 384, 10)

	
-----------------------------------------МЦХ®
      DefineMission(558,"Требование оплаты",386)

      MisBeginCondition(HasMission,380)
      MisBeginCondition(NoRecord,386)
      MisBeginCondition(NoMission,386)
 
      MisBeginTalk("<t>Что? Вы хотите помочь мне собрать долги? Это замечательно! Вот записная книжка.В ней все написано.")
      MisBeginAction(AddMission,386)
      MisBeginAction(GiveItem,0948,1,4)
      MisBeginBagNeed(1)
      MisCancelAction(SystemNotice, "Квест не может быть удален") 

      MisNeed(MIS_NEED_DESP, "Соберите Долги с Кузнеца, Трактирщика , Луны, Юрия , Юноши - Облако , Диспетчера порта") 
      
      MisHelpTalk("Ты не выглядишь уставшим. Я всего лишь одинокая старая женщина, я не чем не могу помочь моему сыну, только вы можете  его спасти. Заплатив выкуп 2 миллиона.")
      
      MisResultTalk("<t>Спасибо!Вы мне очень помогли.")
    
      MisResultCondition(NoRecord,386)
      MisResultCondition(HasFlag,386, 100)
      MisResultCondition(HasFlag ,386, 101)
      MisResultCondition(HasFlag,386, 102)
      MisResultCondition(HasRecord,389)
      MisResultCondition(HasRecord,391)
      MisResultCondition(HasRecord,400)
      MisResultCondition(HasRecord,393)
	  MisResultCondition(HasItem,0948,1)
      MisResultCondition(HasMoney,2000000)
      MisResultAction(TakeMoney,2000000)
      MisResultAction(TakeItem,0948,1)
      MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem,0189,1,4)
      MisResultBagNeed(1)
      MisResultAction(ClearMission,380)
      MisResultAction(ClearMission, 386 )
      MisResultAction(SetRecord, 380 )
      MisResultAction(SetRecord,386)

      ----------------------------------МЦХ®      ЈЁОдцОЈ©
      DefineMission(567,"Требование оплаты",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>OА...этот старый долг Санг Ди.Получите ее золото.")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag, 386, 100)
      MisResultAction(AddMoney,200000)
      MisResultAction(SetFlag, 386, 100)
     


      ------------------------------------МЦХ®
       DefineMission(568,"Требование оплаты",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>OА...этот старый долг Санг Ди.Получите ее золото.")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag,386,101)
      MisResultAction(AddMoney,100000)
      MisResultAction(SetFlag,386,101)
    


      ----------------------------------------БъЕ®µДХ®Ос
      DefineMission(569,"Долг Длинного Эра",389)

      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,389 )
      MisBeginCondition(NoMission,389 )
      MisBeginAction(AddMission,389)
      MisCancelAction(SystemNotice, "Квест не может быть удален")

      MisBeginTalk("<t>Ох черт, моя память наверное подводит меня. Я так занят своей работой. Ты не сможешь сделать мне одолжение, не отправишься в банк? Я предупрежу Ванг Мо о Тебе? Если я правильно помню,  речь идет о 200000G.")
      
      MisNeed(MIS_NEED_DESP, "Отправиться к Банкиру Ванг Мо по координатам (3290, 2512) и забрать 200000G")

      MisHelpTalk("<t>Я уже поговорил с Ванг Мо. Тебе необходимо только сходить и забрать мои деньги")
       
     MisResultCondition(AlwaysFailure)

-------------------------------------------БъЕ®µДХ®Ос
     DefineMission(570,"Долг Длинного Эра",389, COMPLETE_SHOW)

     MisBeginCondition(AlwaysFailure)

     MisResultTalk("<t>Ты здесь, чтобы забрать деньги Длинного Эра? ЗДЕСЬ! В общей сложности 200000G если быть точным. Тем не менее, мне нужно, чтобы вы заплатили 200G как административный сбор.")

     MisResultCondition(HasMission,389)
     MisResultCondition(NoRecord,389)
     MisResultCondition(HasMoney,200)
     MisResultAction(TakeMoney,200)
     MisResultAction(AddMoney,200000)
     MisResultAction(ClearMission, 389 )
     MisResultAction(SetRecord, 389 )
     


---------------------------------------------МЦХ®
     DefineMission(563,"Требование оплаты",386, COMPLETE_SHOW )
      
      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>Что? Вы хотите сейчас? Разве мы не имеем 3-месячного соглашения по этому вопросу? Я должен был потратить эти деньги для своей свадьбы.")
      MisResultCondition(HasMission,386)
      MisResultCondition(HasItem,0948,1)
      MisResultCondition(NoRecord,386)
      MisResultCondition(NoFlag, 386, 102)
      MisResultAction(AddMoney,200000)
      MisResultAction(SetFlag, 386, 102)



     ---------------------------------------------ФУ»хЙМИЛµДХ®Ос
      DefineMission(564,"Долг бакалейщика",391)

      MisBeginTalk("<t>Я верну вам долг , но мне нужны некоторые ингредиенты для билетов.")
      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,391)
      MisBeginCondition(NoMission,391)
      MisBeginAction(AddMission,391)
   
      MisBeginAction(AddTrigger, 3911, TE_GETITEM, 0176, 3 )		--ІРИ±µД№ьК¬Іј
      MisBeginAction(AddTrigger, 3912, TE_GETITEM, 0177, 3 )		--ЖЖЛрµД№ьК¬Іј
      MisBeginAction(AddTrigger, 3913, TE_GETITEM, 0178, 3 )		--НкХыµД№ьК¬Іј
      MisCancelAction(SystemNotice, "Квест не может быть удален")
      
      MisNeed(MIS_NEED_DESP, "Идите в подводный туннель и достаньте :Разорванная ткань для оборачивания тела  3 шт, Поврежденная ткань для оборачивания тела  3 шт,Целая ткань для оборачивания тела  3 шт.")
      MisNeed(MIS_NEED_ITEM, 0176, 3, 10, 3)
      MisNeed(MIS_NEED_ITEM, 0177, 3, 20, 3)
      MisNeed(MIS_NEED_ITEM, 0178, 3, 30, 3)
      
      MisHelpTalk("<t>Вот мой долг.")  
      MisResultTalk("<t>Ха-ха! Теперь я сделаю много билетов!")
      MisResultCondition(HasMission, 391 )
      MisResultCondition(HasItem, 0176, 3 )
      MisResultCondition(HasItem, 0177, 3 )
      MisResultCondition(HasItem, 0178, 3 )
      MisResultAction(TakeItem, 0176, 3 )
      MisResultAction(TakeItem, 0177, 3 )
      MisResultAction(TakeItem, 0178, 3 )
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission, 391 )
      MisResultAction(SetRecord, 391 )
      
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0176 )	
   TriggerAction( 1, AddNextFlag, 391, 10, 3 )
    RegCurTrigger(3911)
    
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0177 )	
   TriggerAction( 1, AddNextFlag, 391, 20, 3 )
    RegCurTrigger(3912) 
     
      InitTrigger() 
   TriggerCondition( 1, IsItem, 0178 )	
   TriggerAction( 1, AddNextFlag, 391, 30, 3 )
    RegCurTrigger(3913)

--------------------------------------------------------ёЫїЪЦё»УЎ¤ЛЄЖжµДХ®Ос
     DefineMission(565,"Долг Шуанга",392)

      MisBeginTalk("<t>Ах,этот долг! Вы можете подождать несколько дней? Или же помогите.Мне нужно доставить груз в Громоград.")
      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,392)
      MisBeginCondition(NoMission,392)
      MisBeginAction(AddMission,392)
      MisBeginAction(GiveItem,0949,1,4)
      MisCancelAction(SystemNotice, "Квест не может быть удален")
      MisBeginBagNeed(1)

      MisNeed(MIS_NEED_DESP, "Доставьте посылку в Громоград Морскому Командующему - Дессаро (713, 1416)")
      MisHelpTalk("<t>Что такое?")
       
      MisResultTalk("<t>Вы доставили груз? Отлично, вот мой долг" )
      MisResultCondition(HasRecord,392) 
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission,392 )
      MisResultAction(SetRecord,400)

  -------------------------------------------------------ёЫїЪЦё»УЎ¤ЛЄЖжµДХ®Ос

  DefineMission(566,"Долг Шуанга",392, COMPLETE_SHOW )

      MisBeginCondition( AlwaysFailure )
      MisResultTalk("<t>Хм, я вас раньше не видел! Но все равно,спасибо за доставленные припасы.")
      MisResultCondition(HasMission,392)
      MisResultCondition(NoRecord,392)
      MisResultCondition(HasItem,0949,1)
      MisResultAction(TakeItem,0949,1)
      MisResultAction(SetRecord,392)
      
       

   -----------------------------------------------------ГіТЧЙМИЛЎ¤УНАоµДХ®Ос

      DefineMission(572,"Долг Юрия",393)

      MisBeginTalk("<t> Я вернул бы вам долг,но Кицуне украли мои Хрустальные шары из личного запаса,и теперь я не могу обменять их на золото...")

      MisBeginCondition(HasMission,386)
      MisBeginCondition(HasItem,0948,1)
      MisBeginCondition(NoRecord,393)
      MisBeginCondition(NoMission,393)
      MisBeginAction(AddMission,393)
   
      MisBeginAction(AddTrigger, 3931, TE_GETITEM, 1864, 5 )		 
      MisCancelAction(SystemNotice, "Квест не может быть удален")
      
      MisNeed(MIS_NEED_DESP, "Достаньте 5 Хрустальных шаров")
      MisNeed(MIS_NEED_ITEM, 1864, 5, 10, 5)
      
      
      MisHelpTalk("<t>Убейте Кицуне")  
      MisResultTalk("<t>О! Спасибо !Вы мой спаситель. Вот ваш долг.")
      MisResultCondition(HasMission, 393 )
      MisResultCondition(HasItem, 1864, 5 )
      MisResultAction(TakeItem, 1864, 5 )
      MisResultAction(AddMoney,420000)
      MisResultAction(ClearMission, 393 )
      MisResultAction(SetRecord, 393)

	  InitTrigger() 
   TriggerCondition( 1, IsItem, 1864 )	
   TriggerAction( 1, AddNextFlag, 393, 10, 5 )
    RegCurTrigger(3931)

--------------------------------------------ВЮЙ­
     DefineMission(571,"Роланд",394)
     MisBeginTalk("<t>Спасибо за собранные долги. <n> <T>  Чуть позже я переговорю с вами.")
     MisBeginCondition(HasRecord,386)
      MisBeginCondition(NoMission, 394)
     MisBeginCondition(NoRecord, 394)
     MisBeginAction(AddMission, 394)
     MisCancelAction(SystemNotice, "Квест не может быть удален")

     MisNeed(MIS_NEED_DESP, "Сдайте Санг Ди золото. (3287, 2501)")
     MisHelpTalk("<t>Будьте терпеливы!")
      MisResultTalk("<t>Все не так просто как вам кажется...")
     MisResultCondition(NoRecord, 394)
     MisResultCondition(HasMission, 394)
     MisResultAction(SetRecord, 394 )
     MisResultAction(ClearMission, 394 )

----------------------------------------Ч·Тд
	 DefineMission(592,"О прошлом",395)
	
	MisBeginTalk( "<t>Роланд был величайший пират в свое время, его очаровательная улыбка... Ахх! У меня начинает болеть голова,когда я вспоминаю об этом!. Возьмите эту ожерелье и продолжайте свои поиски. Я думаю постепенно вы разгадаете тайну. А сейчас вам лучше всего наведаться в Ледынь к целителю Дайше." )
	MisBeginCondition(NoRecord, 395)
	MisBeginCondition(NoMission, 395)
	MisBeginCondition(HasRecord,394)
	MisBeginAction(AddMission,395)
	MisBeginAction(GiveItem, 1051, 1, 4)	----------------ДЄР°ПоБґ	
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Найдите Дайшу")
	
	MisHelpTalk("<t>Спешите найти ее!")
	MisResultCondition(AlwaysFailure)	
-----------------------------------------Ч·Тд
	DefineMission(593, "О прошлом", 395, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>О боже,эта бессонница сводит меня с ума...!")
	MisResultCondition(NoRecord, 395)
	MisResultCondition(HasMission,395)
	MisResultAction(ClearMission,395)
	MisResultAction(SetRecord, 395)
       -----------------------------------------------------ґпєХµД¶сГО
	DefineMission(594,"Кошмар Дайши",396)
	
	MisBeginTalk( "<t>Я не спала уже неделю! Недавно у меня начались кошмары,но я не могла понять их смысла. Я думаю Фокус-Покус сможет выяснить что это за сны. Вы ведь поможете мне?" )
	MisBeginCondition(NoRecord, 396)
	MisBeginCondition(NoMission, 396)
	MisBeginCondition(HasRecord,395)
	MisBeginAction(AddMission,396)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Найдите Фокус-Покуса")
	
	MisHelpTalk("<t>Найдите его поскорее!")
	MisResultCondition(AlwaysFailure)
----------------------------------------------------ґпєХµД¶сГО
	DefineMission(5065,"Кошмар Дайши",396)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>У Дайши начались кошмары? О этого я и опасался больше всего...")
	MisResultCondition(NoRecord, 396)
	MisResultCondition(HasMission,396)
	MisResultAction(ClearMission,396)
	MisResultAction(SetRecord, 396)
	

---------------------------------------------------------------єьµАКїЧч№Ц
	DefineMission(595,"Козни Лисьих даосистов",397)

      MisBeginTalk("<t>Обычно я не помогаю другим с посвящением, но у тебя этот медальон, да и сам ты выглядишь честным. Так и быть, сделаю исключение. На этот раз.<n><t>Б*я! Это же <yЛисий даосист>. Проучи 10 из этих злодеев (3322, 2460)!")

      MisBeginCondition(HasRecord,396)
      MisBeginCondition(NoRecord,397)
      MisBeginCondition(NoMission,397)
      MisBeginCondition(HasItem,1051,1)----------ДЄР°ПоБґ
      MisBeginAction(TakeItem,1051,1)
      MisBeginAction(AddMission,397)
      MisBeginAction(AddTrigger, 3971, TE_KILL, 748, 10)
   
      MisCancelAction(SystemNotice, "Квест не может быть удален")
      MisNeed(MIS_NEED_DESP, "Убейте 10 Лисьих даосистов.")
      MisNeed(MIS_NEED_KILL, 748, 10, 10, 10)

      MisHelpTalk("<t>Убей 10 Лисьих даосистов на острове Весны.")  
      MisResultTalk("<t>Ты очень исполнителен. Я почти хочу сделать тебя своим учеником.")
      MisResultCondition(HasMission, 397 )
      MisResultCondition(HasFlag, 397, 19)
      MisResultAction(AddMoney,100000)
      MisResultAction(ClearMission, 397 )
      MisResultAction(SetRecord, 397)

      InitTrigger()
      TriggerCondition( 1, IsMonster, 748 )
      TriggerAction( 1, AddNextFlag, 397, 10, 10 )
      RegCurTrigger( 3971 )
-------------------------------------------------------ОЄґпєХЅвГО
	DefineMission(5066,"Разгадай сон Дайши",992)
	
	MisBeginTalk( "<t>Не стоит благодарности. Я всегда рад помочь нуждающимся. Отправляйся в Ледынь и найди <bДайшу>  (1352, 499)." )
	
	MisBeginCondition(HasRecord,397)
	MisBeginCondition(NoRecord, 992)
	MisBeginCondition(NoMission, 992)
	MisBeginAction(AddMission,992)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Найдите Дайшу, чтобы помочь разгадать его сны")
	
	MisHelpTalk("<t>Я никогда не раскрываю свое имя, когда творю хорошие дела, потому что я Фокус Покус!")
	MisResultCondition(AlwaysFailure)
----------------------------------------------------ОЄґпєХЅвГО
	DefineMission(5067,"Разгадай сон Дайши",992)

	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Серьезно? Я наконец-то смогу поспать сегодня! Возьми эти деньги в награду.")

	MisResultCondition(HasMission,992)
	MisResultCondition(NoRecord, 992)
	MisResultAction(ClearMission,992)
	MisResultAction(SetRecord, 992)
	MisResultAction(AddMoney,20000)

	------------------------------------------------------------ІјАцДИµД¶сГО
       DefineMission(596,"Кошмар Белинды",398)
	
	MisBeginTalk( "<t>Не могли бы вы мне помочь? Моя подруга Беледина...вообщем у нее тоже проблемы со сном." )
	MisBeginCondition(NoRecord, 398)
	MisBeginCondition(NoMission, 398)
	MisBeginCondition(HasRecord,992)
	MisBeginAction(AddMission,398)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Найдите Белидину (1360, 519)")
	
	MisHelpTalk("<t>Вы нашли ее?")
	MisResultCondition(AlwaysFailure)
	----------------------------------------------ІјАцДИµД¶сГО
	 DefineMission(597,"Кошмар Белинды",398)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Дайша попросила вас разобраться? О я очень тронута.")
	MisResultCondition(NoRecord, 398)
	MisResultCondition(HasMission,398)
	MisResultAction(ClearMission,398)
	MisResultAction(SetRecord, 398)	
	------------------------------------------------ЅвѕИІјАцДИ
	 DefineMission(598,"Спаси Белинду",399)
	
	MisBeginTalk( "<t>Несколько дней назад мне приснился кошмар. Я не помню! Чес но не помню что там было...расспросите пожалуйста Фокус-Покуса,возможно он сможет помочь." )
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoMission, 399)
	MisBeginCondition(HasRecord,398)
	MisBeginAction(AddMission,399)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Найдите Фокус-Покуса")
	
	MisHelpTalk("<t>Вы еще не нашли его?")

	MisResultTalk("<t>Спасибо. Вы очень добры. Подождите !Несколько минут назад я слышала что Фокус-Покус ищет вас.")
	MisResultCondition(NoRecord, 399)
	MisResultCondition(HasMission,399)
	MisResultCondition(HasRecord,950)
	MisResultAction(ClearMission,399)
	MisResultAction(SetRecord, 399)

	--------------------------------------------------------БйТмЛ®ѕ§Зт
	DefineMission( 599, "Мифический хрустальный шар", 996 )

	MisBeginTalk( "<t>Я гадаю только когда все мои условия выполнены. Я создаю самый могущественный Хрустальный Шар, о котором будут слагать легенды, но мне до сих пор не хватает 2 <yЛазурных кристалла>, которые можно найти у <bЖестокого кровавого выползня> в Аскароне  (2550, 400) и 3 <yСовершенных Кристалла> у <bКошмарного проклятого трупа> в Аскароне (360, 1340) Ты же мне не откажешь?" )------------++++++
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoRecord, 996)
	MisBeginCondition(NoMission, 996)
	MisBeginCondition(HasMission,399)
	MisBeginAction(AddMission, 996)
	MisBeginAction(AddTrigger, 9961, TE_GETITEM, 3366,2 )		--А¶Й«Л®ѕ§
	MisBeginAction(AddTrigger, 9962, TE_GETITEM, 1635, 3 )		--Л®ѕ§ґїКЇ
	MisCancelAction(SystemNotice, "Квест не может быть удален")

        MisNeed(MIS_NEED_DESP, "Запомни! Принеси 2 <yЛазурных кристалла> и 3 <yСовершенных кристалла>!")
	MisNeed(MIS_NEED_ITEM, 3366,2, 10, 2)
	MisNeed(MIS_NEED_ITEM, 1635, 3, 20, 3)


	MisResultTalk("<t>Я знал, что ты вернешься, но не знал, что так быстро.")
	MisHelpTalk("<t>Что такое? Задание настолько простое что ты не можешь его завершить?")
	MisResultCondition(HasMission, 996)
	MisResultCondition(HasItem, 3366, 2 )
	MisResultCondition(HasItem, 1635, 3 )
	
	MisResultAction(TakeItem, 3366, 2 )
	MisResultAction(TakeItem, 1635, 3 )
	
	MisResultAction(ClearMission, 996)
	MisResultAction(SetRecord, 996 )---------------------set996
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	


	InitTrigger()
	TriggerCondition( 1, IsItem,3366)	
	TriggerAction( 1, AddNextFlag, 996, 10, 2 )
	RegCurTrigger( 9961 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1635)	
	TriggerAction( 1, AddNextFlag, 996, 20, 3 )
	RegCurTrigger(9962 )

	----------------------------------------------------------------------------єьСэЧч№Ц
	DefineMission( 5000, "Проказы Кицуне", 950 )

	MisBeginTalk( "<t>###...**##%! На этот раз <yКицуне> (3306, 2444) в Веснограде вызывает проблемы. Не дай им уйти, убей 5 штук!" )
	MisBeginCondition(NoRecord, 950 )
	MisBeginCondition(NoRecord, 399)
	MisBeginCondition(NoMission, 950 )
	MisBeginCondition(HasRecord,996)-----------------
	MisBeginAction(AddMission,  950 )
	MisBeginAction(AddTrigger,  9501, TE_KILL,761, 5 )	----------єьСэ
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	
	MisNeed(MIS_NEED_DESP, "Убейте 5 Кицуне и вернитесь!")
	MisNeed(MIS_NEED_KILL,761,5, 10, 5)

	MisResultTalk("<t>Расскажи скорее Белинде (1360, 519) о хороших новостях.")
	MisHelpTalk("<t>Хмм... Тебе страшно? Неужели убийство 5 кицунь такое тяжелое занятие?")
	MisResultCondition(HasMission,  950 )
	MisResultCondition(NoRecord,  950)
	MisResultCondition(HasFlag,  950, 14 )
	MisResultAction(ClearMission, 950 )
	MisResultAction(SetRecord,  950  )
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 761)	
	TriggerAction( 1, AddNextFlag,   950 , 10,5)
	RegCurTrigger(   9501 )

---------------------------------------------------------------------єьПЙЧч№Ц

	DefineMission( 5001, "Проказы мудрого лиса", 951 )

	MisBeginTalk( "<t>Это не случайность, что они объединились чтобы разрушать все на своем пути. За этим точно кто-то стоит. Я решил, что это <yМудрый Лис>  (3135, 2469). Убей его, и ты будешь неплохо вознагражден. Тебе нужно убить всего 1." )--------++++++0
	MisBeginCondition(NoRecord, 951 )
	MisBeginCondition(HasRecord, 399)
	MisBeginCondition(NoMission, 951 )
	MisBeginAction(AddMission,  951)
	MisBeginAction(AddTrigger,  9511, TE_KILL, 776, 1 )----------------єьПЙ
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте Мудрого Лиса")
	MisNeed(MIS_NEED_KILL,776,1, 10, 1)

	MisResultTalk("<t>Хоть, Мудрый Лис и не ровня тебе, ты был великолепен. Я награжу тебя от лица всех тех, кого мучают кошмары.")
	MisHelpTalk("<t>Осторожно! Мудрый Лис из Веснограда будет тебя соблазнять!")
	MisResultCondition(HasMission,  951)
	MisResultCondition(NoRecord,  951)
	MisResultCondition(HasFlag,  951, 10 )
	MisResultAction(ClearMission,  951 )
	MisResultAction(SetRecord,  951  )
	MisResultAction(AddExp,2500000,2500000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 776)	
	TriggerAction( 1, AddNextFlag,  951 , 10,1)
	RegCurTrigger(   9511 )

-----------------------------------------------------------------------ЦШґуГШГЬ

	DefineMission( 5002, "Большой секрет",952 )

	MisBeginTalk( "Молодой человек, я вижу, что в тебе кроется некая тайна. Я хочу тебе помочь, но мне кое-что мешает. Помоги мне избавиться от помехи - <yЦиклонической Медузы> (3750, 1275), которую можно найти в Магическом Океане." )
	MisBeginCondition(NoRecord,952 )
	MisBeginCondition(HasRecord, 951)
	MisBeginCondition(NoMission,952 )
	MisBeginAction(AddMission, 952)
	MisBeginAction(AddTrigger,9521, TE_KILL, 621, 1 )		----СёЅЭµД±©·зЛ®Дё
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	 MisNeed(MIS_NEED_DESP, "Убейте 1 Циклоническую Медузу в Магическом Океане!")----------++++1
	MisNeed(MIS_NEED_KILL,621,1, 10, 1)

	MisResultTalk("<t>Погоди, я погадаю тебе.")
	MisHelpTalk("<t>Спокойный район (3750, 1275) был захвачен Медузами.")
	MisResultCondition(HasMission,952 )
	MisResultCondition(HasFlag, 952, 10 )
	MisResultAction(ClearMission, 952 )
	MisResultAction(SetRecord,952 )
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 621)	
	TriggerAction( 1, AddNextFlag,  952 , 10,1)
	RegCurTrigger( 9521 )
------------------------------------------------------------------ВЮЙ­ѕ«Йс

	DefineMission( 5003, "Дух Роланда", 953)
	
	MisBeginTalk( "<t>Я восхищаюсь добрыми и смелыми людьми, такими как ты. Заглянув тебе в душу, я увидел, что ты состоятельный человек. Ты носишь в себе завещание Роланда. Если хочешь узнать побольше, лучше всего спросить <bСанг Ди> в Веснограде (3287, 2501).")
	MisBeginCondition(NoRecord, 953 )
	MisBeginCondition(HasRecord, 952)
	MisBeginCondition(NoMission, 953 )
	MisBeginAction(AddMission, 953 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Найдите Санг Ди, чтобы узнать о Духе Роланда")
	MisHelpTalk("<t>Она тебе поможет.")
	MisResultCondition(AlwaysFailure )

	---------------------------------------ВЮЙ­ѕ«Йс

	DefineMission(5004,"Дух Роланда",953,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Почему кто-нибудь обязательно упомянет о Роланде при мне? Это моя головная боль!")
	MisResultCondition(HasMission, 953)
	MisResultCondition(NoRecord, 953)
	MisResultAction(ClearMission, 953)
	MisResultAction(SetRecord, 953)

-----------------------------------------------------ЦОБЖЕбµЩ

	DefineMission( 5005, "Исцели Санг Ди", 954 )

	MisBeginTalk( "<t>Похоже, я заболела. Мои силы попросту покидают меня. Может ты пожалеешь меня и поможешь найти <yИсцеляющую накидку>, так как любое передвижение вызывает у меня боль. Я слышал, что если я надену ее, то сразу вылечусь. Если нет, то я ничем не смогу тебе помочь." )
	MisBeginCondition(NoRecord, 954)
	MisBeginCondition(HasRecord,  953)
	MisBeginCondition(NoMission, 954)
	MisBeginAction(AddMission,  954)
	MisBeginAction(AddTrigger,  9541, TE_GETITEM,  0376,1 )		
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	 MisNeed(MIS_NEED_DESP, "Принесите 1 Исцеляющую накидку от Терранского капитана")
	MisNeed(MIS_NEED_ITEM,  0376,1, 10, 1)
	
	MisResultTalk("<t>Спасибо, что помог старушке!")
	MisHelpTalk("<t>Терранского капитана можно найти в Аскароне (546,  2726).")-------------------+++++2
	MisResultCondition(HasMission,  954)
	MisResultCondition(NoRecord, 954)
	MisResultCondition(HasItem, 0376, 1 )
	MisResultAction(TakeItem,  0376, 1 )
	MisResultAction(ClearMission,  954)
	MisResultAction(SetRecord,  954 )
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,800000,800000)	
	

	InitTrigger()
	TriggerCondition( 1, IsItem,0376)	
	TriggerAction( 1, AddNextFlag,954, 10, 1 )
	RegCurTrigger( 9541 )

------------------------------------------------------------------Д§Б¦№ЗН··Ы

	DefineMission( 5006, "Костный порошок Колдуна.", 955 )

	MisBeginTalk( "<t>Эта накидка мне совсем не помогла. Может она больше неэффективна, потому что ты так долго ходил? Ты неумелый. Теперь тебе нужно починить ее. Принеси мне 3 <yМагических Кости> от <bСмертоносного Скелета-Лучника>  (919, 1581). Я разотру их в порошок и посыплю на накидку." )
	MisBeginCondition(NoRecord,  955)
	MisBeginCondition(HasRecord,  954)
	MisBeginCondition(NoMission, 955)
	MisBeginAction(AddMission,  955)
	MisBeginAction(AddTrigger,  9551, TE_GETITEM,  1626,3 )		
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	 MisNeed(MIS_NEED_DESP, "Убейте Смертоносных скелетов-лучников и принесите 3 волшебных кости")
	MisNeed(MIS_NEED_ITEM,  1626,3, 10, 3)
	
	MisResultTalk("<t>Ты намного быстрее!")
	MisHelpTalk("<t>Волшебную кость можно найти у Смертоносных скелетов-лучников в Аскароне (919,  1581).")--------------------++++++3
	MisResultCondition(HasMission,  955)
	MisResultCondition(NoRecord, 955)
	MisResultCondition(HasItem, 1626, 3 )
	MisResultAction(TakeItem,  1626, 3 )
	MisResultAction(ClearMission,  955)
	MisResultAction(SetRecord,  955 )
	MisResultAction(AddExp,200000,200000)
	MisResultAction(AddMoney,700000,700000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,1626)	
	TriggerAction( 1, AddNextFlag, 955, 10, 3 )
	RegCurTrigger( 9551 )
------------------------------------------------------------------------ёЯј¶УЄСшЖ·

	DefineMission( 5007, "Очень питательный продукт", 956)

	MisBeginTalk( "<t>Я выгляжу лучше? Если бы мне кто-нибудь помог спилить <yРог Химеры> у Химеры в Аскароне (662, 2460), я бы подлечилась и вспомнила некоторые вещи... Этот кто-то случайно не ты...?" )
	MisBeginCondition(NoRecord,  956)
	MisBeginCondition(HasRecord,  955)
	MisBeginCondition(NoMission, 956)
	MisBeginAction(AddMission,  956)
	MisBeginAction(AddTrigger,  9561, TE_GETITEM,  4783,1 )		
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте Химер и принесите 1 Рог химеры")
	MisNeed(MIS_NEED_ITEM,  4783,1, 10, 1)
	
	MisResultTalk("<t>Отлично, так держать!")
	MisHelpTalk("<t>Никаких подарков от меня пока не найдешь рог химеры.")
	MisResultCondition(HasMission,  956)
	MisResultCondition(NoRecord, 956)
	MisResultCondition(HasItem, 4783, 1)
	MisResultAction(TakeItem,  4783, 1 )
	MisResultAction(ClearMission,  956)
	MisResultAction(SetRecord,  956)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	

	InitTrigger()
	TriggerCondition( 1, IsItem,4783)	
	TriggerAction( 1, AddNextFlag, 956, 10, 1 )
	RegCurTrigger( 9561 )
---------------------------------------------------------------------------ТЕНьµД№эИҐ
	 DefineMission(5008,"Забытое прошлое",957)
	
	MisBeginTalk( "<t>Наверно, мне нужно рассказать тебе то, о чем я пыталась забыть, потому что тебя послал предсказатель удачи. Все забывают свое прошлое рано или поздно, и ты не исключение. Не смотри так на меня. Я не могу вернуть твои воспоминания. Это то, что ты должен отыскать сам. Верховный Жрец Генььон в Шайтане (862, 3500) может тебе подсказать. <bРазыщи меня, когда ты достигнешь результатов>!" )
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(NoMission, 957)
	MisBeginCondition(HasRecord,956)
	MisBeginAction(AddMission,957)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Найдите в Шайтане Верховного Жреца Геньона (862, 3500) для дальнейших инструкций.")
	
	MisHelpTalk("<t>У Геньона (862, 3500) есть для тебя совет. ")
		
	MisResultTalk("<t>Поиск воспоминаний не обязательно сделает тебя счастливым. Я вижу, что ты потерян. На самом деле все довольно просто, но перед этим ты должен мне помочь кое с чем.")
	MisResultCondition(NoRecord, 957)
	MisResultCondition(HasMission, 957)
	MisResultCondition(HasRecord, 999)---
	MisResultAction(ClearMission, 957)
	MisResultAction(SetRecord,  957 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)


------------------------------------------------------------------------їЛВЎЦ®»Ш»кМАЈЁ1Ј©

	DefineMission(5009,"Суп памяти",958)
	
	MisBeginTalk( "<t>Так ты хочешь вспомнить прошлое? Твое прошлое спит где-то в твоем мозгу. Тебе нужно выпить <bСуп Памяти>, чтобы разбудить память.  Рецепт супа памяти очень странный. Что удивительно, только <bПринц-Тритон>  (1254, 3491) знает рецепт. <bВернись ко мне как получишь рецепт>." )
	MisBeginCondition(NoRecord, 958)
	MisBeginCondition(NoMission, 958)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord,957)
	MisBeginCondition(IsChaType,1)
	MisBeginAction(AddMission,958)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Найдите Принца-Тритона, чтобы узнать рецепт супа памяти.")
	
	MisHelpTalk("<t>Принца-Тритона можно найти на берегу (1254, 3491)")
	MisResultTalk("<t>Закрой глаза и выпей до дна.<n><t>Ты был создан по подобию Бога Хоби на острове Демонов. Генератор жизни No.1 создал тебя из одиночества. Без самосохранения, ты был убит кланом демонов, котороые тебя привели. В этот момент твои силы пробудились. Твои новые способности направили тебя во внутрь острова, и ничто не могло тебя остановить. Наконец, ты добрался до Ворот Правды. Там, ты узнал Правду . После глубокого сна ты пробудился через 100 лет с появлением Колдуна Лимона. Вместе вы отправились в путешествие искать сокровища. Через 2 года вы разошлись; она продолжала искать сокровища, а ты отправился за своей мечтой.<n><t>Вернись и разыщи ее <bСанг Ди>  (3287, 2501) в Веснограде. Да благославит тебя Господь.")
	
	MisResultCondition(NoRecord, 958)
	MisResultCondition(HasRecord, 962)
	MisResultCondition(HasMission, 958)
	MisResultCondition(HasItem, 1043, 1 )--------»Ш»кМА
	MisResultAction(TakeItem,  1043, 1 )
	MisResultAction(ClearMission, 958)
	MisResultAction(SetRecord,  958 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,600000,600000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	
---------------------------------------------------------------------------СЄКЇЈЁ1Ј©

	DefineMission(5010,"Кровавый камень",959)
	
	MisBeginTalk( "<t>Рецепт Супа Памяти это фамильный секрет. Так что его нельзя передать кому-то так просто. Если только ты не поможешь мне найти то, что я так долго ищу, Кровавый камень. Несколько дней назад я узнал что камень у  <bСупермуна>  (1080, 3086). <bРазыщи меня как только у тебя появится Кровавый камень>!" )
	MisBeginCondition(NoRecord, 959)
	MisBeginCondition(NoMission, 959)
	MisBeginCondition(HasMission, 958)
	MisBeginCondition(NoRecord,958)
	MisBeginAction(AddMission,959)

	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Найдите Супермуна")
	
	MisHelpTalk("<t>Супермун это известный бандит в Магическом Океане")
	

	MisResultTalk("<t>Супермун - идиот. Он не понимает что это за камень, и как он у него только оказался? У этого камня высокая цена. И он один из лучших среди всех кровавых камней... Забудь, бесполезно тебе что-либо объяснять.")
	MisResultCondition(NoRecord, 959)
	MisResultCondition(HasMission, 959)
	MisResultCondition(HasRecord, 960)
	MisResultCondition(HasItem, 1040, 1)
	MisResultAction(TakeItem, 1040, 1 )
	MisResultAction(ClearMission, 959)
	MisResultAction(SetRecord,  959 )

	
---------------------------------------------------------------------------СыЗлєЇЈЁ1Ј©

	DefineMission( 5011, "Приглашение", 960 )
	
	MisBeginTalk( "<t>Я должен показать свое уважение принцу-Тритону, но мне совсем не был интересен камень и я отдал его Юдису (906, 3539). По счастливой случайности, я его пригласил на выставку камней. Передай ему приглашение. А я упомяну об этом в приглашении. Уверен, он тебе поможет... если ты ему понравишься." )
	MisBeginCondition(NoRecord, 960)
	MisBeginCondition(HasMission, 959)
	MisBeginCondition(NoMission,960)
	MisBeginCondition(NoRecord,959)
	MisBeginAction(AddMission, 960)
	MisBeginAction(GiveItem, 1041, 1, 4)	----------СыЗлєЇ	
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Отправьте письмо Банкиру Юдису.")
	
	MisHelpTalk("<t>Не сдвинулся с места?")
	MisResultCondition(AlwaysFailure)
	
-----------------------------------------------------------------------СыЗлєЇЈЁ1Ј©

	DefineMission(5012,"Приглашение",960,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Как можно что-то забрать, что уже подарил? Невообразимо! Но поскольку ты не настолько красив, как я, я тебе помогу")
	MisResultCondition(NoRecord, 960)
	MisResultCondition(HasMission, 960)
	MisResultCondition(HasItem, 1041, 1)
	MisResultAction(TakeItem, 1041, 1 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1040, 1,4)--------------СЄКЇ
	MisResultAction(ClearMission, 960 )
	MisResultAction(SetRecord,  960 )
	MisResultBagNeed(1)

	-----------------------------------------------------------------»Ш»кМАТ©·Ѕ(1) 
	DefineMission(5014, "Рецепт Супа памяти", 961 )

	MisBeginTalk( "<t>Ингридиенты для супа памяти самые простые: 10 <yЧастей Арабской Черной Жемчужины> Полуночной танцовщицы из Великого Синего (3289, 1746), 1 <yТолстый хвост прозрачного выползня> Скрытного Большого Выползня в Магическом Океане (900, 1308). Потом нужно это все приготовить по специальной технологии. Собери ингридиенты и я все приготовлю. " )
	MisBeginCondition(NoRecord, 961)
	MisBeginCondition(HasRecord, 959)
	MisBeginCondition(NoMission, 961)
	MisBeginAction(AddMission, 961)
	MisBeginAction(AddTrigger, 9611, TE_GETITEM, 1234,10)		
	MisBeginAction(AddTrigger, 9612, TE_GETITEM, 1260, 1 )
	
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	 MisNeed(MIS_NEED_DESP, "Найдите 1 толстый хвост прозрачного выползня и 10 частей черной арабской жемчужины")
	MisNeed(MIS_NEED_ITEM, 1234,10, 10,10)
	MisNeed(MIS_NEED_ITEM, 1260, 1, 20, 1)
	
	MisResultTalk("<t>Рецепт нельзя никому передавать, или ты поплатишься своей жизнью! А теперь вернись в жрецу и передай ему это.")
	MisHelpTalk("<t>Это кусок кекса, теперь ты такой сильный!")
	MisResultCondition(HasMission,961)
	MisResultCondition(NoRecord, 961)
	MisResultCondition(HasItem, 1234, 10 )
	MisResultCondition(HasItem, 1260, 1 )
	
	MisResultAction(TakeItem, 1234, 10 )
	MisResultAction(TakeItem, 1260, 1 )
	
	MisResultAction(ClearMission, 961)
	MisResultAction(SetRecord, 961 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1043, 1, 4)-------»Ш»кМА
	MisResultAction(AddExp,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1234)	
	TriggerAction( 1, AddNextFlag, 961, 10, 10 )
	RegCurTrigger(9611 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1260)	
	TriggerAction( 1, AddNextFlag, 961, 20, 1 )
	RegCurTrigger(9612 )
	
	
------------------------------------------------------ЅµОВєЪХдЦй(1) 

	DefineMission( 5015, "Прохладная черная жемчужина", 962 )

	MisBeginTalk( "<t>Никогда бы не подумал, что Принц-Тритон так просто поделится с тобой рецептом. O! Я чуть не забыл самое главное. Суп Памяти очень горячий. Его можно выпить только если его охладить. Тебе нужно достать 1 <yЧерную Жемчужину>, которая поможет охладить суп." )
	MisBeginCondition(NoRecord,  962)
	MisBeginCondition(HasRecord,  961)
	MisBeginCondition(NoMission,962)
	MisBeginAction(AddMission,  962)
	MisBeginAction(AddTrigger,  9621, TE_GETITEM,  3362,1)--------єЪХдЦй		
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Получите 1 Черную Жемчужину")
	MisNeed(MIS_NEED_ITEM,  3362,1, 10, 1)
	
	MisResultTalk("<t>Использование черной жемчужины очень важно!")
	MisHelpTalk("<t>Похоже, что вещи, которые ты ищещь можно найти у Кицуне и Лисьего Даосиста (3322, 2460).")-------------------++++++++4
	MisResultCondition(HasMission,  962)
	MisResultCondition(NoRecord,962)
	MisResultCondition(HasItem, 3362, 1 )
	MisResultAction(TakeItem,  3362, 1 )
	MisResultAction(ClearMission,  962)
	MisResultAction(SetRecord,  962)
	MisResultAction(AddExp,500000,500000)
	MisResultAction(AddMoney,200000,200000)

	InitTrigger()
	TriggerCondition( 1, IsItem,3362)	
	TriggerAction( 1, AddNextFlag, 962, 10, 1 )
	RegCurTrigger( 9621 )



------------------------------------------------------------------Е®ЙсµД»щТтЦ®ЅЎТдЅєДТЈЁ2Ј©
	DefineMission(5017,"Капсула памяти",963)
	
	MisBeginTalk( "<t>Ты хочешь воскресить прошлое? Твое прошлое спит в твоей голове. Тебе нужно выпить  <bСуп Памяти> чтобы пробудить память. Рецепт Супа памяти странный. Что удивительно, только <bПринц-Тритон>  (1254, 3491) знает рецепт. <bВозвращайся ко мне, как только раздобудешь рецепт>." )
	MisBeginCondition(NoRecord, 963)
	MisBeginCondition(NoMission, 963)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(IsChaType,3)----·ЖАы¶ы
	MisBeginAction(AddMission,963)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Найдите Таинственную Бабушку, чтобы получить капсулу памяти.")
	
	MisHelpTalk("<t>Таинственная Бабушка в Аргенте (2159, 2792).")
	MisResultTalk("<t>Все! Ты быстро справился. Я уже помолилась за тебя. Закрой глаза и выпей до конца. <n><t>Ты был талантливым моряком королевских кровей. Ты получил лучшее морское образование и плюс ты обладаешь превосходной гениологией, Ты выиграл соревнование моряков в Громограде, когда тебе было 10 лет. Но использование запрещенных орудий результировало дисквалификацией. Все твое шутовство, лень, и то, что ты никогда не задумываешься о последствиях, результат того, что ты можешь жить только до 30 лет. Но, на острове Демонов заветсные слова пробудили тебя: так как тебе предстоит мало жить, ты должен потратить это время на то, что тебе действительно хочется делать. И это то, что толкает тебя вперед.<n><t>Разыщи <bСанг Ди> в Веснограде (3287, 2501). Да благославит тебя Господь.") 
	MisResultCondition(NoRecord, 963)
	MisResultCondition(HasMission, 963)
	MisResultCondition(HasRecord, 967)
	MisResultCondition(HasItem,  1050, 1 )-------ЅЎТдЅєДТ
	MisResultAction(TakeItem,  1050,1 )
	MisResultAction(ClearMission, 963)
	MisResultAction(SetRecord,  963 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,600000,600000)	
	MisResultAction(AddExpAndType,2,60000,60000)

--------------------------------------------------------------------АбЦ®зъзкЈЁ2Ј©
	DefineMission(5018,"Янтарная слеза",964)
	
	MisBeginTalk( "<t>Молодой человек, капсула памяти несет в себе очень важное послание. И его узнают только те, кто действительно добр и чист сердцем.<n><t>Хоть я сейчас и старая, я была очень даже ничего в молодости. Даже принц за мной ухаживал. Но в моем сердце только <bЛанга> из Шайтана. Подумать только, я не видела его так давно. Можешь передать ему янтарную слезу?" )
	MisBeginCondition(NoRecord, 964)
	MisBeginCondition(NoMission, 964)
	MisBeginCondition(HasMission, 963)
	MisBeginCondition(NoRecord,963)
	MisBeginAction(AddMission,964)
	MisBeginAction(GiveItem, 2303, 1, 4)---------+++++????
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	MisBeginBagNeed(1)	
	MisNeed(MIS_NEED_DESP, "Помогите таинственной Бабушке передать янтарную слезу Ланге в Шайтане (852, 3549).")
	
	MisHelpTalk("<t>Зачем искать прошлое, если можно быть счастливым в настоящем.")
	
	MisResultCondition(AlwaysFailure)
	----------------------------------------------------------------------АбЦ®зъзкЈЁ2Ј©
	DefineMission(5019,"Янтарная слеза",964,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Спасибо, Я знаю какого ей, но все невсегда случается как того хочет сердце. Даже если она будет продолжать меня ждать, я не смогу быть с ней. Передай ей <bМои Слова>, чтобы вещи остались на своих местах.")
	MisResultCondition(NoRecord, 964)
	MisResultCondition(HasMission, 964)
	MisResultCondition(HasItem,2303, 1)-------------++++++???
	MisResultAction(TakeItem, 2303, 1 )-------------++++++????
	MisResultAction(ClearMission,964)
	MisResultAction(SetRecord,  964)
	MisResultAction(AddMoney,80000,80000)	
		
	

---------------------------------------------------------------І№ёЖЈЁЈІЈ©


	DefineMission( 5020, "Восстановление кальция", 965)

	MisBeginTalk( "<t>Хорошо, что он так сказал, некоторых стоит ждать. Может, это потому что я плохо себя чувствую. мне так не хватает кальция, и я никак не могу укрепить свою спину. Если ты добудешь для меня 1 <yСпинной плавник Аметистового Дельфина> в Магическом Океане (900, 2000), я смогу тебе помочь." )--------------+++++5
	MisBeginCondition(NoRecord,  965)
	MisBeginCondition(HasRecord,  964)
	MisBeginCondition(NoMission,965)
	MisBeginAction(AddMission,  965)
	MisBeginAction(AddTrigger,  9651, TE_GETITEM,  1296,1)	
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Достаньте Спинной плавник Аметистового Дельфина для Таинственной Бабули, чтобы восстановить рацион кальция")
	MisNeed(MIS_NEED_ITEM,  1296,1, 10, 1)
	
	MisResultTalk("<t>Ты такой мужественный!")
	MisHelpTalk("<t>У меня так болит спина и ноги. Эх...")
	MisResultCondition(HasMission,965)
	MisResultCondition(NoRecord, 965)
	MisResultCondition(HasItem, 1296, 1 )
	MisResultAction(TakeItem,  1296, 1)
	MisResultAction(ClearMission,  965)
	MisResultAction(SetRecord,  965)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,1296)	
	TriggerAction( 1, AddNextFlag,965, 10, 1 )
	RegCurTrigger( 9651 )

--------------------------------------------------ёґ»оТ¶ЈЁЈІЈ©
	DefineMission(5021, "Оживляющий клевер", 966 )

	MisBeginTalk( "<t>Хоть ты мне и помог, но я не хочу чтобы кто-то знал о моих вещичках, и только мертвые не выдают секреты!<n><t>Не бойся, поскольку ты мне помог, я дам тебе еще один шанс. Принеси мне 1 <yОживляющий Клевер>. Он должен быть у Терранского Старейшины в (1381, 3134). Если ты выживешь, я не только тебя ни убью, но и расскажу все-все про капсулу памяти."  )
	MisBeginCondition(NoRecord,  966 )
	MisBeginCondition(HasRecord,  965)
	MisBeginCondition(NoMission, 966 )
	MisBeginAction(AddMission,  966 )
	MisBeginAction(AddTrigger,  9661, TE_GETITEM,  3143,1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

        MisNeed(MIS_NEED_DESP, "Принесите оживляющий клевер, чтобы спасти свою жизнь!")
	MisNeed(MIS_NEED_ITEM,  3143,1, 10, 1)
	
	MisResultTalk("<t>Похоже, твое время еще не пришло!")
	MisHelpTalk("<t>Достань 1 оживляющий клевер у Терранского Старейшины в Магическом Океане (1381, 3134).")-----------------------++++++++6
	MisResultCondition(HasMission,  966 )
	MisResultCondition(NoRecord, 966 )
	MisResultCondition(HasItem, 3143, 1 )
	MisResultAction(TakeItem,  3143,1 )
	MisResultAction(ClearMission,  966 )
	MisResultAction(SetRecord, 966 )
	MisResultAction(AddExp,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,3143)	
	TriggerAction( 1, AddNextFlag, 966 , 10, 1 )
	RegCurTrigger( 9661 )

--------------------------------------------------------------------------------------ё±ЧчУГ(2)
	DefineMission( 5022, "Побочный эффект", 967 )

	MisBeginTalk( "<t>Поскольку ты воспользовался возможностью, я расскажу тебе правду. У меня есть капсула памяти. Если ты ее съешь, то вспомнишь прошлое, но как побочный эффект, ты забудешь настоящее. Чтобы этого не случилось, найди 1 <yТемную кровь Выползня> у <bСкрытного Большого Выползня> в Магическом океане (900, 1308)." )------------------++++++++7
	MisBeginCondition(NoRecord,  967)
	MisBeginCondition(HasRecord,  966 )
	MisBeginCondition(NoMission, 967)
	MisBeginAction(AddMission,  967)
	MisBeginAction(AddTrigger,  9671, TE_GETITEM,  1351,1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	
	MisNeed(MIS_NEED_DESP, "Используйте Темную кровь Выпозня")
	MisNeed(MIS_NEED_ITEM,  1351,1, 10, 1)
	
	MisResultTalk("<t>Готово, Принеси это Жрецу. Я очень скрытный человек, никому обо мне не говори!")
	MisHelpTalk("<t>Поищи 1 бутыль темной крови выползня")
	MisResultCondition(HasMission, 967)
	MisResultCondition(NoRecord, 967)
	MisResultCondition(HasItem, 1351, 1 )
	MisResultAction(TakeItem,  1351,1 )
	MisResultAction(ClearMission, 967)
	MisResultAction(SetRecord,  967)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1050, 1, 4)-------ЅЎТдЅєДТ
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1351)	
	TriggerAction( 1, AddNextFlag, 967, 10, 1 )
	RegCurTrigger( 9671 )


		
	
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------»мСЄ¶щЦ®ГААц№эНщ(3) 
	DefineMission(5024,"Прекрасное прошлое",968)
	
	MisBeginTalk( "<t>Ты хочешь узнать свое забытое прошлое? Твое прошлое спит в твоей голове. Чтобы разбудить свое прошлое, ты должен начать любить. Ты еще помнишь <Минелли>  (1244, 3186)? У нее есть несколько воспоминаний, которые ты ищешь. <bВернись назад, когда ты найдешь что-нибудь для восстановления твоей памяти>." )
	MisBeginCondition(NoRecord, 968)
	MisBeginCondition(NoMission, 968)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord,957)
	MisBeginCondition(IsChaType,2)
	MisBeginAction(AddMission,968)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Найдите Минелии")
	
	MisHelpTalk("<t>Минелли можно найти в Магическом Океане")
	MisResultTalk("<t>Надеюсь Минелли вылечила свои боли в сердце. Отпей половину этого и закрой глаза.<n><t>Ты был рожден от человека и демона. Твой отец был одним из племени Демонов, в то время как твоя мать была девчонкой из рыбацкого городка. Когда тебе было 12, жители деревни узнали кем явлется твой отец и сожгли его до тла. Твоя мать присоединилась к нему позже. Ты начал свое путешествие с письмом в руке от твоего отца с просьбой не ненавидеть человечество. Но как только люди узнавали кто ты на самом деле, никто не брался тебя нанимать на корабль. Все, что у тебя было - это страсть к морю и душа, страждущая приключений. После смерти твоего отца, ты поклялся любить Минелли вечно. Ты забыл об этом... Неудивительно, что у неее разбито сердце.<n><t>Разыщи <bСанг Ди> в Веснограде (3287, 2501). Да благославит тебя Господь") 
	MisResultCondition(NoRecord, 968)
	MisResultCondition(HasMission, 968)
	MisResultCondition(HasRecord, 972)
	MisResultCondition(HasItem, 1042, 1 )
	MisResultAction(TakeItem, 1042, 1 )
	MisResultAction(ClearMission, 968)
	MisResultAction(SetRecord,  968 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
---------------------------------------------------ЙХ№эµДАЇЦт(3)
	DefineMission(5025, "Использованная свеча", 969 )

	MisBeginTalk( "<t>Ты хочешь узнать о своем прошлом? Прости, моя память улетучилась вместе с <yИспользованной Свечой>. Если ты достаточно силен, чтобы достать ее у <bТемного Грязилища> , то я смогу помочь." )------------------++++++8
	MisBeginCondition(NoRecord,  969)
	MisBeginCondition(HasMission, 968)
	MisBeginCondition(NoRecord,  968)
	MisBeginCondition(NoMission, 969)
	MisBeginAction(AddMission,  969)
	MisBeginAction(AddTrigger,  9691, TE_GETITEM,  4823,1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Получите 1 использованную свечу для Минелли")
	MisNeed(MIS_NEED_ITEM,  4823,1, 10, 1)
	
	MisResultTalk("<t>Пожоже, у тебя талант!")
	MisHelpTalk("<t>Найдите 1 использованную свечу")
	MisResultCondition(HasMission, 969)
	MisResultCondition(NoRecord, 969)
	MisResultCondition(HasItem, 4823, 1 )
	MisResultAction(TakeItem,  4823,1)
	MisResultAction(ClearMission,  969)
	MisResultAction(SetRecord,  969)
	MisResultAction(AddExp,80000,80000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,4823)	
	TriggerAction( 1, AddNextFlag, 969, 10, 1 )
	RegCurTrigger( 9691 )

---------------------------------------------------------ёґФ­НщКВ(3)
	DefineMission(5026,"Восстановить прошлое",970)
	
	MisBeginTalk( "<t>К сожалению, прошлое ушло. Хоть свеча и найдена, ее очарование пропало. Если ты действительно хочешь узнать прошлое, спроси о  <yЗелье Восстановления> у <bДитто>. <bВернись ко мне, когда найдешь зелье восстановления>" )
	MisBeginCondition(NoRecord, 970)
	MisBeginCondition(NoMission, 970)
	MisBeginCondition(HasRecord, 969)
	MisBeginAction(AddMission,970)
	MisBeginAction(AddTrigger,  9701, TE_GETITEM,  1042,1)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Получи Зелье Восстановления у Дитто")
	
	MisHelpTalk("<t>Дитто, естественно, в Аргенте (2250, 2770).")
	MisResultTalk("<t>Я вылила половину на свечу, напевая: может ли любовь быть вечной.<n><t>У тебя есть хоть какое-то представление? Ты когда-то любил меня... Все в прошлом. Не хочу больше ничего говорить. Отнеси оставшееся <bГеньону>.")
	MisResultCondition(HasMission,970)
	MisResultCondition(NoRecord, 970)
	MisResultCondition(HasRecord, 971)
	MisResultCondition(HasItem,1042, 1 )----------ёґФ­јБ
	MisResultAction(TakeItem, 1042, 1 )
	MisResultAction(ClearMission, 970)
	MisResultAction(SetRecord, 970)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1042, 1, 4)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1042)	
	TriggerAction( 1, AddNextFlag, 970, 10, 1 )
	RegCurTrigger(9701 )

	--------------------------------------------------ёґФ­јБФ­БП(3)

	DefineMission( 5027, "Ингредиент для зелья восстановления", 971 )

	MisBeginTalk( "<t>У меня больше нет Зелья Восстановления. К тому же, я был слишком занят, чтобы собрать ингридиенты... Если ты добудешь 3 <yСтимулятора> у Лугового оленя в Аскароне (1503, 2698), 3 <yЧая Бодрячка> у Неупокоенных Воинов в Аскароне (511, 1721) и 1 <yТемную кровь Выползня> у Скрытного Большого Выползня в Магическом Океане (900, 1308)." )-------------++++++9
	MisBeginCondition(NoRecord, 971 )
	MisBeginCondition(HasMission, 970)
	MisBeginCondition(NoRecord, 970)
	MisBeginCondition(NoMission, 971)
	MisBeginAction(AddMission, 971 )
	MisBeginAction(AddTrigger, 9711, TE_GETITEM, 1351,1)		
	MisBeginAction(AddTrigger, 9712, TE_GETITEM, 3134, 3 )
	MisBeginAction(AddTrigger, 9713, TE_GETITEM, 3147, 3 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Найдите 1 Темную Кровь Выползня, 3 Стимулятора и 3 Чая Бодрячка для Дитто")
	MisNeed(MIS_NEED_ITEM, 1351,1, 10,1)
	MisNeed(MIS_NEED_ITEM, 3134, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM,  3147,3, 30, 3)

	MisResultTalk("<t>Ты все собрал так быстро. Видимо, ты торопишься. Я потрачу дополнительное время, чтобы сделать Зелье Восстановления. Это займет совсем немного времени!")
	MisHelpTalk("<t>Если ты потратишь больше времени - это не значит, что ты получишь больше прибыли")
	MisResultCondition(HasMission, 971)
	MisResultCondition(NoRecord, 971)
	MisResultCondition(HasItem, 1351, 1 )
	MisResultCondition(HasItem, 3134, 3 )
	MisResultCondition(HasItem,  3147, 3)
	
	MisResultAction(TakeItem, 1351, 1 )
	MisResultAction(TakeItem, 3134, 3 )
	MisResultAction(TakeItem,  3147, 3 )
	
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1042, 1, 4)
	MisResultAction(ClearMission, 971)
	MisResultAction(SetRecord, 971 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1351)	
	TriggerAction( 1, AddNextFlag, 971, 10, 1 )
	RegCurTrigger(9711 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3134)	
	TriggerAction( 1, AddNextFlag, 971, 20, 3 )
	RegCurTrigger(9712 )
	InitTrigger()
	TriggerCondition( 1, IsItem,  3147)	
	TriggerAction( 1, AddNextFlag, 971, 30, 3 )
	RegCurTrigger(9713 )
	--------------------------------------------------------------КН·Е°®Зй(3)
	DefineMission( 5028, "Не цепляйся за любовь", 972)
	
	MisBeginTalk( "<t><bМинелли>, видимо, очень грустно. Ты очень жесток. Если ты получаешь удовольствие от ее боли, я не буду тебе помогать. Если же это не так, то для нее будет лучше все забыть... Это Лотусный Клевер." )
	MisBeginCondition(NoRecord, 972)
	MisBeginCondition(HasRecord, 971)
	MisBeginCondition(NoMission, 972)
	MisBeginCondition(HasItem, 1042, 1 )
	MisBeginAction(AddMission, 972)
	MisBeginAction(GiveItem, 1054, 1, 4)		
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Отдай Лотусный Клевер Минелли")
	
	MisHelpTalk("<t>Минелли в Магическом Океане(1244, 3186)")
	MisResultCondition(AlwaysFailure)
------------------------------------------------------------------КН·Е°®Зй(3)
	DefineMission(5029, "Не цепляйся за любовь", 972 ,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Я соглашусь, если ты меня отпускаешь для спасения.") 
	MisResultCondition(NoRecord, 972)
	MisResultCondition(HasMission, 972)
	MisResultCondition(HasItem, 1054, 1 )
	MisResultAction(TakeItem, 1054, 1 )
	MisResultAction(ClearMission, 972)
	MisResultAction(SetRecord,  972)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------µ®ЙъЦ®М«ј«КЇ(4)

	DefineMission(5031,"Сера",973)
	
	MisBeginTalk( "<t>Ты хочешь вспомнить прошлое? Прошлое спит в твоей голове. Ты должен найти <y2 Серы>. Если сложить 2 серы вместе, они могут вызвать человеческое магнитное поле, стимулирующее головной мозг пробудить воспоминания. Спроси об этом <bЛангу> из Шайтана, чтобы узнать про серу. Говорят, что он встречал ее раньше. <bВернись ко мне, когда разыщешь серу>." )----------------++++++10
	MisBeginCondition(NoRecord, 973)
	MisBeginCondition(NoMission, 973)
	MisBeginCondition(HasMission, 957)
	MisBeginCondition(NoRecord, 957)
	MisBeginCondition(IsChaType,4)
	MisBeginAction(AddMission,973)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Найдите Лангу в Шайтане и узнайте о сере.")
	
	MisHelpTalk("<t>Ланга в точке (852, 3549)")
	MisResultTalk("<t>Ты отпрыск Морского Короля. Ты похож на ребенка и никогда не вырастешь. Поскольку в тебе присутствуют особые гены, ты можешь общаться с природой, разговаривать с животными и монстрами. Ты можешь лечить  и создавать вещи, неведомые кому-либо еще. Именно из-за этих генов, тебя преследуют люди. Когда тебе было 12, тебе надоело скрываться и ты призвал цунами, уничтожающее все, что преследовало тебя. С тех пор никто не смеет выслеживать тебя и ловить, и ты стал одним из самых известых криминальных авторитетов. Позже ты присоединился к Пиратской Команде Филлис и стал путешествовать вместе с ними.<n><t>Разыщи <bСанг Ди> в Веснограде (3287, 2501). Да благославит тебя Господь.") 
	MisResultCondition(NoRecord, 973)
	MisResultCondition(HasMission, 973)
	MisResultCondition(HasRecord,  977)
	MisResultCondition(HasItem, 1045, 1)----------ТхКЇ
	MisResultCondition(HasItem, 1048, 1)-----------СфКЇ
	MisResultAction(TakeItem,  1045, 1 )
	MisResultAction(TakeItem,  1048, 1 )
	MisResultAction(ClearMission, 973)
	MisResultAction(SetRecord,  973 )
	MisResultAction(SetRecord,  999 )------
	MisResultAction(AddExp,2000000,2000000)
	MisResultAction(AddMoney,800000,800000)	
	MisResultAction(AddExpAndType,2,60000,60000)
------------------------------------------------------іПРЕІШ±¦Нј
	DefineMission(5032,"Карта сокровищ набожности",974)
	
	MisBeginTalk( "<t>Ты пришел узнать о Сере? Это было давно. Все держалось в секрете из-за того, что она может вызвать катастрофу. Поэтому тебе будет нелегко узнать о сере... Доставь эту <yКарту Сокровищ>  <bПринцу-Тритону> в Магическом Океане (1254, 3491)." )
	MisBeginCondition(NoRecord, 974)
	MisBeginCondition(NoMission,974)
	MisBeginCondition(HasMission, 973)
	MisBeginCondition(NoRecord,973)
	MisBeginAction(GiveItem, 1053, 1, 4)------іПРЕІШ±¦Нј
	MisBeginAction(AddMission,974)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	--MisBeginAction(AddTrigger, 9741, TE_GETITEM, 1044,1)
	MisBeginBagNeed(1)	
		
	MisNeed(MIS_NEED_DESP, "Передайте карту сокровищ Принцу-Тритону")
	
	MisHelpTalk("<t>Ходят слухи, что Принц-Тритон был лягушкой!")
	
	MisResultCondition(AlwaysFailure)

	------------------------------------------іПРЕІШ±¦Нј

	DefineMission(5033,"Карта сокровищ набожности",974,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>На самом деле, то что он тебе дал это кусок бумажки, не карта сокровищ. Ты не пытался открыть ее, значит, тебе можно доверять. Я открою секрет: Сера состоит из <yЛунного камня> и <yСолнечного камня>. Всего 3 человека знают этот секрет. У меня есть кусочек  <yЛунного камня>. Возьми.")
	MisResultCondition(NoRecord, 974)
	MisResultCondition(HasMission,974)
	MisResultCondition(HasItem,1053, 1)
	MisResultAction(TakeItem, 1053, 1 )
	MisResultAction(ClearMission, 974)
	MisResultAction(SetRecord, 974)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1045, 1, 4)--------ТхКЇ
	MisResultBagNeed(1)
	--------------------------------------------------СфКЇµДПВВд
	DefineMission(5034,"Поиски Солнечного камня",975)
	
	MisBeginTalk( "<t>Не должен ли ты быть в пути? Ну хорошо, я дам тебе подсказку.. Ты можешь узнать о Солнечном камне у <bДитто>. Возьми это <yРекомендательное Письмо> как доказательство." )
	MisBeginCondition(NoRecord, 975)
	MisBeginCondition(NoMission, 975)
	MisBeginCondition(HasRecord, 974)
	MisBeginAction(GiveItem, 1046, 1, 4)-------НЖјцРЕ
	MisBeginAction(AddMission,975)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Узнайте подробности у Дитто.")
	
	MisHelpTalk("<t>Найдите Дитто в Аргенте(2250, 2770)")
	MisResultCondition(AlwaysFailure)

--------------------------------------------------СфКЇµДПВВд
	DefineMission(5035,"Поиски Солнечного камня",975,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Совсем мало людей знают о секрете серы. Двое из них никому не доверяют. Поздравляю, ты прошел их тест.")
	MisResultCondition(NoRecord, 975)
	MisResultCondition(HasMission,975)
	MisResultCondition(HasItem,1046, 1)
	MisResultAction(TakeItem, 1046, 1 )
	MisResultAction(ClearMission, 975 )
	MisResultAction(SetRecord, 975)
	----------------------------------------------СшСЫЛ®

	DefineMission( 5036, "Слеза", 976 )

	MisBeginTalk( "<t>Если они все в тебя верят, я не буду больше так строг с тобой. <rОно спрятано в Аргенте, в тайной комнате Сальвьера>. Но солнечный камень очень яркий и очень вредно смотреть на него без защитных приспособлений. Я сделаю для тебя защитную жидкость, которая называется Слезой. Тебе нужно принести  3 <yЧая Бодрячка> от Неупокоенных Воинов в Аскароне (511, 1721) , 1 <yСильный спинной плавник> от Свирепого Алмазного Дельфина (2140, 3787) в Большом Синем Океане и 10 пузырьков  <yЧистой воды> от Пустынных Черепах Магического Океана (1197, 3270)." )
	MisBeginCondition(NoRecord, 976 )
	MisBeginCondition(HasRecord, 975)
	MisBeginCondition(NoMission, 976)
	MisBeginAction(AddMission, 976 )
	MisBeginAction(AddTrigger, 9761, TE_GETITEM, 1362,1)		
	MisBeginAction(AddTrigger, 9762, TE_GETITEM, 3134, 3 )
	MisBeginAction(AddTrigger, 9763, TE_GETITEM, 1649, 10 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Найдите 3 чашки чая Бодрячка, 1 сильный спинной плавник и 10 пузырьков чистой воды для приготовления слезы")
	MisNeed(MIS_NEED_ITEM, 1362,1, 10,1)
	MisNeed(MIS_NEED_ITEM, 3134, 3, 20, 3)
	MisNeed(MIS_NEED_ITEM, 1649,10, 30, 10)

	MisResultTalk("<t>Зелье готово. Можешь отправиться в Аргент и найти <rСекретаря Савьера>. Он тебе помождет нанести зелье на глаза")
	MisHelpTalk("<t>Пожалуйста, найди ингридиенты для Слезы. За это, я дам тебе билет до Аргента.")
	MisResultCondition(HasMission, 976 )
	MisResultCondition(NoRecord, 976)
	MisResultCondition(HasItem, 1362, 1 )
	MisResultCondition(HasItem, 3134, 3 )
	MisResultCondition(HasItem,1649, 10)
	
	MisResultAction(TakeItem, 1362, 1 )
	MisResultAction(TakeItem, 3134, 3 )
	MisResultAction(TakeItem,1649, 10 )
	
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1047, 1, 4)------------- СшСЫЛ®
	MisResultAction(ClearMission, 976 )
	MisResultAction(SetRecord, 976  )
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,1362)	
	TriggerAction( 1, AddNextFlag, 976, 10, 1 )
	RegCurTrigger(9761 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3134)	
	TriggerAction( 1, AddNextFlag, 976 , 20, 3 )
	RegCurTrigger(9762 )
	InitTrigger()
	TriggerCondition( 1, IsItem,1649)	
	TriggerAction( 1, AddNextFlag, 976 , 30, 10 )
	RegCurTrigger(9763 )

--------------------------------------------------------------------------ЛкФВЦ®іѕ
	DefineMission(5037, "Пыль столетия", 977)

	MisBeginTalk( "<t>Долгое время никто не приходил за Солнечным камнем. Он покрыт пылью столетия, особой химической субстанцией, которая поглощает его свойства. Мне необходим <yСаван> от  <bАдской Мумии B из Аббадона  2>, чтобы удалить химический налет." )
	MisBeginCondition(NoRecord,  977)
	MisBeginCondition(HasRecord,  976)
	MisBeginCondition(NoMission, 977)
	MisBeginCondition(HasItem, 1047, 1 )
	MisBeginAction(TakeItem, 1047, 1 )
	MisBeginAction(AddMission,  977)
	MisBeginAction(AddTrigger,  9771, TE_GETITEM,  4782,1 )		
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Найдите Саван у Адской Мумии B в Абаддоне 2")
	MisNeed(MIS_NEED_ITEM,  4782,1, 10, 1)
	
	MisResultTalk("<t>Солнечный камень невероятно красив после лакировки. Я даже не хочу его отдавать. Не нужно было соглашаться. Вот, отнеси <bГеньону>.")
	MisHelpTalk("<t>Ты можешь найти его на Адской мумии B в Абаддоне 2.")
	MisResultCondition(HasMission,  977)
	MisResultCondition(HasItem, 4782, 1)
	MisResultAction(TakeItem,  4782, 1 )
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1048, 1, 4)------------- СфКЇ
	MisResultAction(ClearMission,  977)
	MisResultAction(SetRecord,  977 )
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem,4782)	
	TriggerAction( 1, AddNextFlag, 977, 10, 1 )
	RegCurTrigger( 9771 )


	--------------------------------------------------Д§Цд

	DefineMission( 5043, "Волшебное проклятье", 978)

	MisBeginTalk( "<t>У меня есть беспомощный брат, который попал под действие неведомых чар. Все. что он пытается сделать, выходит наоборот. Он кушает ногами и ходит на руках. Я слышал, что <bМас> из Ледыни (1346, 451) страдал подобной болезнью. Не мог ты помочь мне узнать о лекарстве от него? <bВернись ко мне, когда получишь лекарство>" )
	MisBeginCondition(NoRecord,  978)
	MisBeginCondition(HasRecord, 957)
	MisBeginCondition(NoMission, 978)
	MisBeginAction(AddMission, 978)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	MisNeed(MIS_NEED_DESP, "Поговорите с Масом")

	MisResultTalk("<t>Отлично! Теперь моего брата можно спасти. Спасибо!")
	MisHelpTalk("<t>Еще не готово?")
	MisResultCondition(HasMission, 978)
	MisResultCondition(NoRecord,  978)
	MisResultCondition(HasItem, 1052, 1 )--------КҐБй»¤·ы
	MisResultAction(TakeItem, 1052, 1 )
	MisResultAction(ClearMission, 978)
	MisResultAction(SetRecord, 978 )
	MisResultAction(AddExp,1000000,1000000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)	
	

-------------------------------------------------НБЦші¤Г¬
	DefineMission( 5045, "Длинное туземное копье", 979 )

	MisBeginTalk( "<t>Я помню как один мой знакомый священник попал под проклятье. Вместо молитв он стал проклинать Бога. После того, как его исцелили, ему было настолько стыдно, что он сменил веру. Хаха вот прикол... Лекарство же очень странное, и я пообещал Кентаро, что никому не расскажу о том, что он исцеляет...<n><t>Oй! Кажется, я проболтался...<n><t>Мне нужно переговорить с Кентаро. А пока найди мне 1 <yДлинное Заточенное Туземное Копье> у Безумного Знахаря, который прячется в Одинокой башне 1." )
	MisBeginCondition(NoRecord, 979 )
	MisBeginCondition(HasMission, 978)
	MisBeginCondition(NoRecord, 978 )
	MisBeginCondition(NoMission, 979 )
	MisBeginAction(AddMission, 979)

	MisBeginAction(AddTrigger, 9791, TE_GETITEM, 4739, 1 )		--і¤Г¬
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	
	MisNeed(MIS_NEED_DESP, "Получите Длинное Заточенное Туземное Копье у Безумного Знахаря")
	MisNeed(MIS_NEED_ITEM, 4739,1, 10, 1)
	
	MisResultTalk("<t>Кентаро меня ужасно наругал, с полным пренебрежением к чести клана.")
	MisHelpTalk("<t>Получите Длинное Заточенное Туземное Копье у Безумного Знахаря")
	MisResultCondition(HasMission, 979)
	MisResultCondition(NoRecord, 979 )
	MisResultCondition(HasItem, 4739, 1 )
	MisResultAction(TakeItem, 4739, 1 )

	MisResultAction(ClearMission, 979)
	MisResultAction(SetRecord, 979)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4739)	
	TriggerAction( 1, AddNextFlag, 979, 10, 1)
	RegCurTrigger( 9791 )
----------------------------------------------------МЦ·ҐїЦІАµДЧзЦд№ЕК¬

	DefineMission(5046, "Убей мумию", 980 )

	MisBeginTalk( "<t>Кентаро хочет, чтобы ты убил 1 <yКошмарного Проклятого Трупа>. Найди меня, как только справишься.")
	MisBeginCondition(NoRecord,   980)
	MisBeginCondition(HasRecord,  979)
	MisBeginCondition(NoMission,  980)
	MisBeginAction(AddMission,   980)
	MisBeginAction(AddTrigger,   9801, TE_KILL, 508,1 )		
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_KILL,  508,1, 10, 1)
	
	MisResultTalk("<t>Добро пожаловать назад, смелый воин!")
	MisHelpTalk("<t>Кошмарный Проклятый Труп находится в Аскароне (360, 1340).")----------------+++++11
	MisResultCondition(HasMission,  980)
	MisResultCondition(HasFlag, 980, 10 )
	MisResultAction(ClearMission,   980)
	MisResultAction(SetRecord,   980 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	

	InitTrigger()
	TriggerCondition( 1, IsMonster,508)	
	TriggerAction( 1, AddNextFlag,  980, 10, 1 )
	RegCurTrigger(  9801 )

----------------------------------------------------ЧфВЮГжѕЯ

	DefineMission(5047,"Маска Зорро",981)
	
	MisBeginTalk( "<t><bКентаро> сказал, чтобы ты его нашел в (1894, 2798) если ты убил Кошмарный проклятый труп. Вот маска Зорро в подтверждение того, что ты справился. Она тебе пригодится в будущем." )
	MisBeginCondition(NoRecord, 981)
	MisBeginCondition(NoMission, 981)
	MisBeginCondition(HasRecord, 980)
	MisBeginAction(GiveItem, 1025, 1, 4)----------ЧфВЮГжѕЯ
	MisBeginAction(AddMission,981)
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	MisBeginBagNeed(1)
		
	MisNeed(MIS_NEED_DESP, "Поищите Кентаро")
	
	MisHelpTalk("<t>Кентаро в Аскароне")-----------------------++++++12
	MisResultCondition(AlwaysFailure)
	------------------------------------------------ЧфВЮГжѕЯ
	DefineMission(5048,"Маска Зорро",981,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Наша встреча чистая случайность из-за одного идиота... Надеюсь, ты меня не разочаруешь.")
	MisResultCondition(NoRecord, 981)
	MisResultCondition(HasMission,981)
	MisResultCondition(HasItem,1025, 1)
	MisResultAction(TakeItem, 1025, 1 )
	MisResultAction(ClearMission, 981 )
	MisResultAction(SetRecord, 981 )
-----------------------------------------------------ЦХј«ГЬВл
	DefineMission( 5049, "Финальный пароль", 982 )

	MisBeginTalk( "<t>После смерти Зорро, его маска была утеряна. Легенда гласит, что ты можешь получить сверхспособности, если поймешь как ей пользоваться. Теперь много злых пиратов ищут маску. Для сохранности моря мы должны найти маску первыми. Вначале нам нужен секретный код, чтобы начать следующий этап. Считается, что код написан на <yОсти>." )
	MisBeginCondition(NoRecord, 982  )
	MisBeginCondition(HasRecord,981)
	MisBeginCondition(NoMission, 982  )
	MisBeginAction(AddMission, 982 )
	MisBeginAction(AddTrigger, 9821, TE_GETITEM, 4261, 1 )		--Л®Гў
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Получите Ость проклятой водяной феи.")
	MisNeed(MIS_NEED_ITEM,4261,1, 10, 1)
	
	MisResultTalk("<t>Ты гордость пиратов!")
	MisHelpTalk("<t>Проклятая водяная фея обитает в подводном туннеле (486, 327).")
	MisResultCondition(HasMission, 982 )
	MisResultCondition(NoRecord,982 )
	MisResultCondition(HasItem, 4261,1 )
	MisResultAction(TakeItem, 4261,1 )
	
	MisResultAction(ClearMission, 982 )
	MisResultAction(SetRecord, 982 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4261)	
	TriggerAction( 1, AddNextFlag,  982 , 10,1)
	RegCurTrigger( 9821 )
-------------------------------------------------ЛЮГьЦ®КЇ

	DefineMission( 5050, "Камень судьбы", 983 )

	MisBeginTalk( "<t>На маске появились слова: Вместе с отталкивающим камнем зверей пришла моя судьба. Что это значит? Давай попробуем найти <yОтталкивающий камень зверей> сначала." )
	MisBeginCondition(NoRecord, 983)
	MisBeginCondition(HasRecord,  982 )
	MisBeginCondition(NoMission, 983 )
	MisBeginAction(AddMission, 983)
	MisBeginAction(AddTrigger, 9831, TE_GETITEM, 2487, 1 )		--КЮµ¤КЇ
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Найдите Отталкивающий камень зверей для того, чтобы понять что написано на маске")
	MisNeed(MIS_NEED_ITEM,2487,1, 10, 1)
	
	MisResultTalk("<t>От тебя веет смертью после похода в Абаддон!")
	MisHelpTalk("<t>Ты можешь найти его на Адской мумии A в Абаддоне 2.")
	MisResultCondition(HasMission, 983)
	MisResultCondition(NoRecord, 983)
	MisResultCondition(HasItem, 2487,1 )
	MisResultAction(TakeItem, 2487,1 )
	MisResultAction(ClearMission,983)
	MisResultAction(SetRecord, 983)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2487)	
	TriggerAction( 1, AddNextFlag,  983, 10,1)
	RegCurTrigger(  9831 )

----------------------------------------------------------Пъ»ЩГжѕЯ

	DefineMission( 5051, "Уничтожь маску", 984 )

	MisBeginTalk( "<t>До этого маска была в руках темного мага, и теперь она проклята... Уничтожать! Любой кто оденет маску приобретет силы и начнет уничтожать мир. Это слишком опасно, нам надо уничтожить маску. Говорят, что  <yСломанный Нимб>  <bПадшего Ангела Хранителя>  (335, 2121) может уничтожать зло." )
	MisBeginCondition(NoRecord,  984)
	MisBeginCondition(HasRecord,  983)
	MisBeginCondition(NoMission,  984 )
	MisBeginAction(AddMission,  984)
	MisBeginAction(AddTrigger,  9841, TE_GETITEM,4738, 1 )		--ЖЖЛйµДМмК№№в»·
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Отберите Сломанный нимб у падшего ангела-хранителя")
	MisNeed(MIS_NEED_ITEM,4738,1, 10, 1)
	
	MisResultTalk("<t>Я думала, что получу способности от маски. Но это была всего лишь мечта.")
	MisHelpTalk("<t>Падший ангел-хранитель в Аскароне (335, 2121).")
	MisResultCondition(HasMission, 984)
	MisResultCondition(NoRecord,  984)
	MisResultCondition(HasItem, 4738,1 )
	MisResultAction(TakeItem, 4738,1 )
	
	MisResultAction(ClearMission,  984)
	MisResultAction(SetRecord,  984)
	MisResultAction(AddMoney,300000,300000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 4738)	
	TriggerAction( 1, AddNextFlag,   984, 10,1)
	RegCurTrigger(   9841 )

-------------------------------------------------------Д§ІјїЪґь
	DefineMission( 5052, "Заколдованная сумка", 985 )

	MisBeginTalk( "<t>Хоть мы и изгнали все зло из маски, ей по прежнему не стоит доверять. Ее темные силы не должны пробудиться. Единственный способ - использовать <yЗаколдованную сумку>. Генерал Вильям (2277, 2831) поможет. Я уже отправил ему письмо. Отнеси ему маску" )
	MisBeginCondition(NoRecord,   985)
	MisBeginCondition(HasRecord, 984)
	MisBeginCondition(NoMission,  985)
	MisBeginAction(AddMission,  985)
	MisBeginAction(GiveItem, 1025, 1, 4)----------ЧфВЮГжѕЯ
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	MisBeginBagNeed(1)
	
	MisNeed(MIS_NEED_DESP, "Найдите Генерала Вильяма и передайте маску")----------------++++13
	MisHelpTalk("<t>Зависимость, Усталость, Алчность, Отчаяние... Составляющие нашей жизни. Мне нужно заняться саморефлексией.")
	
	MisResultCondition(AlwaysFailure)
	
-------------------------------------------------------Д§ІјїЪґь
	DefineMission( 5053, "Заколдованная сумка", 985, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Видимо, ты не такой уж и алчный, так как не захотел оставить маску себе. Хорошо! Этот <yСвященный Амулет> Кентаро тебе хочет вручить, чтобы исцелить проклятье. Отнеси его <bСанг Ди > в Весноград (3287, 2501), чтобы закончить задание.")
	MisResultCondition(NoRecord,  985)
	MisResultCondition(HasMission,  985)
	MisResultCondition(HasItem,1025, 1)
	MisResultAction(TakeItem, 1025, 1 )
	MisResultAction(ClearMission,  985)
	MisResultAction(SetRecord,  985)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 1052, 1,4)
	MisResultAction(AddMoney,80000,80000)
	MisResultBagNeed(1)
	
------------------------------------------------------Бй·ыЙПµДЅр·Ы

	DefineMission( 5054, "Золотая пыльца на Священном амулете", 986 )

	MisBeginTalk( "<t>Позолоченная надпись на священном амулете почти стерлась! Может, это из-за того, что им не пользовались очень давно? Мне нужно 10 <yЗолотых монет> чтобы стереть их в порошок, и амулет вернул свои свойства. Поможешь мне? Ничего, если откажешься... но я забуду о том, что ты искал." )
	MisBeginCondition(NoRecord, 986)
	MisBeginCondition(HasRecord, 978)
	MisBeginCondition(NoMission,986 )
	MisBeginAction(AddMission, 986)
	MisBeginAction(AddTrigger, 9861, TE_GETITEM, 2438, 10 )		--Ѕр±Т
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Поищите золотые монеты для Санг Ди у Кораблей скелетов-пиратов")
	MisNeed(MIS_NEED_ITEM,2438,10, 10, 10)
	
	MisResultTalk("<t>На тебя действительно можно положиться!")
	MisHelpTalk("<t>Золотые монеты можно найти на кораблях скелетов-пиратов в заливе сокровищ.")
	MisResultCondition(HasMission, 986)
	MisResultCondition(NoRecord,986)
	MisResultCondition(HasItem,2438,10 )
	MisResultAction(TakeItem, 2438,10 )
	MisResultAction(ClearMission, 986)
	MisResultAction(SetRecord,986)
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2438)	
	TriggerAction( 1, AddNextFlag,  986, 10,10)
	RegCurTrigger( 9861 )
-------------------------------------------------------ЕбµЩµДЦёµг
	DefineMission(5055,"Указания Санг Ди",987)
	
	MisBeginTalk( "<t>Правда в том, что ты ищешь себя. Я могу сообщить важную новость: Найди <bтого, кто может показать путь твоему классу>." )
	MisBeginCondition(NoRecord, 987)
	MisBeginCondition(NoMission,987)
	MisBeginCondition(HasRecord,986)
	MisBeginAction(AddMission,987)	
	MisCancelAction(SystemNotice, "Квест не может быть удален")
		
	MisNeed(MIS_NEED_DESP, "Поговорите с кем-нибудь кто может рассказать о разных классах.")
	
	MisHelpTalk("<t>Почему ты еще здесь? Поспеши!")
	MisResultCondition(AlwaysFailure)
-----------------------------------------------------ЕбµЩµДЦёµгЈЁ±ИМШЈ©
	DefineMission(5056, "Указания Санг Ди", 987, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Санг Ди вечно доставляет проблемы!")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

-----------------------------------------------------ЕбµЩµДЦёµгЈЁАЧЕ·Ј©
	DefineMission(5057, "Указания Санг Ди", 987, COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Санг Ди вечно доставляет проблемы!")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

	-----------------------------------------------------ЕбµЩµДЦёµгЈЁРЎЙЅіµЈ©
	DefineMission(5058, "Указания Санг Ди", 987 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Санг Ди вечно доставляет проблемы!")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)

	-----------------------------------------------------ЕбµЩµДЦёµг(ёКµШО¬А­)
	DefineMission(5059, "Указания Санг Ди", 987 , COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Санг Ди вечно доставляет проблемы!")
	MisResultCondition(NoRecord, 987)
	MisResultCondition(HasMission,987)
	MisResultCondition(NoPfEqual,1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,987)
	MisResultAction(SetRecord, 987)


-----------------------------------------------------Ц°ТµЅйЙЬИЛµДЅЁТйЈЁifЅЈКїЈ©
	DefineMission( 5060, "Предложение Питера",988 )

	MisBeginTalk( "<t>Счастье всегда затмевает одиночество. Даже в это время человечество не всегда знает, что предпринять.<n><t>В такое время, я бы тренировался. Почему бы и тебе не попробовать?<n><t>Убей безумного Знахаря в Одинокой башне 1." )
	MisBeginCondition(NoRecord, 988)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 988 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 988 )
	MisBeginAction(AddTrigger, 9881, TE_KILL, 524, 1 )		--±©Е­µДтбтжИЛ
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_KILL,524,1, 10, 1)
	
	MisResultTalk("<t>Ты выдающийся человек. Чувствуешь себя сильнее? Поздравляю!")
	MisHelpTalk("<t>Эти знахари очень свирепые. Тебе надо быть осторожным.")
	MisResultCondition(HasMission, 988 )
	MisResultCondition(HasFlag, 988, 10 )
	MisResultAction(ClearMission, 988 )
	MisResultAction(SetRecord, 988 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 524)	
	TriggerAction( 1, AddNextFlag,  988 , 10,1)
	RegCurTrigger(  9881 )

-----------------------------------------------------АЧЕ·µДЅЁТйЈЁifБФИЛЈ©
	DefineMission( 5061, "Предложение Рэя", 989 )

	MisBeginTalk( "<t>Мысли всегда затмевают смех. Даже если у тебя будут все богатства мира, настанет время, когда тебе нечего будет делать. В такой момент, я бы отправился в путешествие. Не хочешь попробовать?<n><t>Отбери 1 <yКоролевскую Эмблему> у Дворцового Стража в Аскароне  (435, 1690)  и 1 <yЖивое Сердце природы>  у Стремительного Лесного охотника в Одинокой Башне 1." )
	MisBeginCondition(NoRecord, 989)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 989 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 989 )
	MisBeginAction(AddTrigger, 9891, TE_GETITEM, 4789, 1 )		
	MisBeginAction(AddTrigger, 9892, TE_GETITEM, 4741, 1 )	
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Найдите Королевскую Эмблему и Живое сердце природы")
	MisNeed(MIS_NEED_ITEM, 4789,1, 10, 1)
	MisNeed(MIS_NEED_ITEM,4741,1, 20, 1)
	
	MisResultTalk("<t>Ты отличный воин. Чувствуешь себя лучше после путешествия?")
	MisHelpTalk("<t>Тебе нужно отшлифовать свои мысли.")
	MisResultCondition(HasMission,989 )
	MisResultCondition(HasItem, 4789,1 )
	MisResultCondition(HasItem,4741,1 )
	MisResultAction(TakeItem,  4789,1 )
	MisResultAction(TakeItem, 4741,1 )
	MisResultAction(ClearMission, 989 )
	MisResultAction(SetRecord, 989 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	
	InitTrigger()
	TriggerCondition( 1, IsMonster,  4789)	
	TriggerAction( 1, AddNextFlag,  989 , 10,1)
	RegCurTrigger(  9891 )
	InitTrigger()
	TriggerCondition( 1, IsMonster,4741)	
	TriggerAction( 1, AddNextFlag,  989 , 20,1)
	RegCurTrigger(  9892 )

---------------------------------------------------------------РЎЙЅіµµДЅЁТйЈЁifГ°ПХХЯЈ©
	DefineMission( 5062, "Предложение Даниэля", 990 )

	MisBeginTalk( "<t>Счастье всегда пропадает. Даже если ты испытал многое в жизни, наступает время, когда ты не знаешь чем заняться. В такой момент, я бы отправился в морское путешествие. Почему бы тебе не попробовать? <n><t>Отправляйся в путь в сторону Великого Синего Океана (194, 1718) и поговори с оператором порта Грегори." )
	MisBeginCondition(NoRecord, 990)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 990 )
	MisBeginCondition(NoPfEqual, 5)
	MisBeginCondition(NoPfEqual, 13)
	MisBeginCondition(NoPfEqual, 14)
	MisBeginCondition(NoPfEqual, 1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginAction(AddMission, 990 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisHelpTalk("<t>Отправляйтесь в Великий Синий (194, 1718) и поговорите с оператором порта Грегори.")
	MisNeed(MIS_NEED_DESP, "Поговорите с оператором порта Грегори")

	MisResultCondition(AlwaysFailure)
---------------------------------------------------------------Ц°ТµЅйЙЬИЛµДЅЁТй
	DefineMission( 5063, "Предложение Даниэля", 990,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ты талантливый искатель приключений. Жизнь- это длинное приключение, как и вояж. Надеюсь, это путешествие что-то для тебя значит.")
	MisHelpTalk("<t>Быть Покорителем Морей могут только бесстрашные.")
	MisResultCondition(NoRecord, 990)
	MisResultCondition(HasMission,990)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission, 990 )
	MisResultAction(SetRecord, 990 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
	-------------------------------------------------------ёКµШО¬А­µДЅЁТйЈЁifТ©К¦Ј©
	DefineMission( 5064, "Совет Геньона", 991 )

	MisBeginTalk( "<t>Надежду легко сломить.<n><t>Минелли (1244, 3186) расскажет, что нужно делать." )
	MisBeginCondition(NoRecord, 991)
	MisBeginCondition(HasRecord, 987)
	MisBeginCondition(NoMission, 991 )
	MisBeginCondition(NoPfEqual,1)
	MisBeginCondition(NoPfEqual, 8)
	MisBeginCondition(NoPfEqual, 9)
	MisBeginCondition(NoPfEqual, 2)
	MisBeginCondition(NoPfEqual, 12)
	MisBeginCondition(NoPfEqual, 4)
	MisBeginCondition(NoPfEqual, 16)
	MisBeginAction(AddMission, 991 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Поговорите с Минелли")
	MisHelpTalk("<t>Минелли в Магическом Океане (1244, 3186)")
	MisResultCondition(AlwaysFailure)

-------------------------------ёКµШО¬А­µДЅЁТй
	DefineMission( 5072, "Совет Геньона", 991,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Скоро я стану секретарем Верховного Жреца.")
	MisHelpTalk("<t>Ты смел.")
	MisResultCondition(NoRecord, 991)
	MisResultCondition(HasMission,991)
	MisResultAction(ClearMission, 991 )
	MisResultAction(SetRecord, 991 )

	
	-------------------------------------------------------КЇ»ЇµДТвЦѕ
	DefineMission( 5073, "Закалить волю", 998 )

	MisBeginTalk( "<t>Попробуй использовать волю на самом себе." )
	MisBeginCondition(NoRecord, 998)
	MisBeginCondition(HasRecord, 991)
	MisBeginCondition(NoMission, 998 )
	MisBeginAction(AddMission, 998 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Используйте навык на себя.")
	MisHelpTalk("<t>Сильная воля - главное качество пирата")
	MisResultTalk("<t>Каждый сам себе герой, чувствуешь, как стал сильнее!")

	MisResultCondition(HasMission, 998 )
	MisResultCondition(HasState, 92 )
	MisResultAction(ClearMission, 998 )
	MisResultAction(SetRecord, 998 )
	MisResultAction(AddExp,800000,800000)
	MisResultAction(AddMoney,200000,200000)	
	MisResultAction(AddExpAndType,2,60000,60000)
		
	----------------------------------------ЦЗХЯµДКВ
     DefineMission(5068,"История о Просветленном",993)
     MisBeginTalk("<t>Ты доказал, что годишься.<n><t>Я сейчас создаю статистическую таблицу. Я расскажу тебе историю о Просвященном позже.")
     MisBeginCondition(HasRecord,988)
     MisBeginCondition(NoMission, 993)
     MisBeginCondition(NoRecord, 993)
     MisBeginAction(AddMission, 993)
     MisCancelAction(SystemNotice, "Квест не может быть удален")

     MisNeed(MIS_NEED_DESP, "Подождите пока Питер закончит Статистическую таблицу")
     MisHelpTalk("<t>Таблица еще не закончена. Не отвлекай.")
     MisResultTalk("<t>Статистическую таблицу не так-то легко сделать.")
     MisResultCondition(NoRecord, 993)---------У¦ёДОЄNoRecord
     MisResultCondition(HasMission, 993)
     MisResultAction(SetRecord, 993 )
     MisResultAction(ClearMission, 993 )
----------------------------------------ЦЗХЯµДКВ
      DefineMission(5069,"История о Просветленном",994)
     MisBeginTalk("<t>Ты доказал, что достоин.<n><t>Сейчас я создаю статистическую таблицу. Я расскажу тебе историю о Просвященном попозже.")
     MisBeginCondition(HasRecord,989)
      MisBeginCondition(NoMission, 994)
     MisBeginCondition(NoRecord, 994)
     MisBeginAction(AddMission, 994)
     MisCancelAction(SystemNotice, "Квест не может быть удален")

     MisNeed(MIS_NEED_DESP, "Подождите пока Рэй завершит таблицу")
     MisHelpTalk("<t>Статистическая таблица еще не закончена. Не мешай.")
      MisResultTalk("<t>Статистическую таблицу не так легкo создать.")
     MisResultCondition(NoRecord, 994)---------У¦ёДОЄNoRecord
     MisResultCondition(HasMission, 994)
     MisResultAction(SetRecord, 994 )
     MisResultAction(ClearMission, 994 )

     ----------------------------------------ЦЗХЯµДКВ
      DefineMission(5070,"История о Просветленном",995)
     MisBeginTalk("<t>Твои способности были доказаны.<n><t>Я делаю очень важную статистическую таблицу, позже я расскажу тебе о Просвященном.")
     MisBeginCondition(HasRecord,998)
      MisBeginCondition(NoMission, 995)
     MisBeginCondition(NoRecord, 995)
     MisBeginAction(AddMission, 995)
     MisCancelAction(SystemNotice, "Квест не может быть удален")

     MisNeed(MIS_NEED_DESP, "Подождите пока Минелли завершит таблицу.")
     MisHelpTalk("<t>Статистическая таблица еще не готова.")
      MisResultTalk("<t>Не так уж и легко сделать статистическую таблицу.")
     MisResultCondition(NoRecord, 995)---------У¦ёДОЄNoRecord
     MisResultCondition(HasMission, 995)
     MisResultAction(SetRecord, 995 )
     MisResultAction(ClearMission, 995 )
	----------------------------------------ЦЗХЯµДКВ
      DefineMission(5071,"История о Просветленном",997)
     MisBeginTalk("<t>Твои способности заметно улучшились.<n><t>Я делаю важную Статистическую таблицу, позже я расскажу тебе о просвященном.")
     MisBeginCondition(HasRecord,990)
      MisBeginCondition(NoMission, 997)
     MisBeginCondition(NoRecord, 997)
     MisBeginAction(AddMission, 997)
     MisCancelAction(SystemNotice, "Квест не может быть удален")

     MisNeed(MIS_NEED_DESP, "Подождите пока оператор порта закончит таблицу")
     MisHelpTalk("<t>Таблица еще не закончена. Не мешай.")
      MisResultTalk("<t>Статистическая таблица - это не так-то просто.")
     MisResultCondition(NoRecord, 997)---------У¦ёДОЄNoRecord
     MisResultCondition(HasMission, 997)
     MisResultAction(SetRecord, 997 )
     MisResultAction(ClearMission, 997 )

-------------------------------------------------------Л­КЗЦЗХЯ-------------°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№
	DefineMission( 5167, "Кто же этот Просветленный?", 1500 )

	MisBeginTalk( "<t>Просветленная личность покрыта тайной. Но я думаю <bЛанга> сможет вам помочь" )
	MisBeginCondition(NoRecord,1500)
	MisBeginCondition(HasRecord, 993)
	MisBeginCondition(NoMission, 1500 )
	MisBeginAction(AddMission, 1500 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Поговорите с Лангой")
	MisHelpTalk("<t>Поговорите с Лангой (853, 3549)")
	MisResultCondition(AlwaysFailure)




-------------------------------------------------------Л­КЗЦЗХЯ---------АЧЕ·
	DefineMission( 5168, "Кто же этот Просветленный?", 1501 )

	MisBeginTalk( "<t>Просветленная личность покрыта тайной.Но я думаю <bЛанга> сможет вам помочь" )
	MisBeginCondition(NoRecord,1501)
	MisBeginCondition(HasRecord, 994)
	MisBeginCondition(NoMission, 1501 )
	MisBeginAction(AddMission, 1501 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Поговорите с Лангой")
	MisHelpTalk("<t>Поговорите с Лангой (853, 3549)")
	MisResultCondition(AlwaysFailure)



	-------------------------------------------------------Л­КЗЦЗХЯ------------ГЧ¶ыГЧАт
	DefineMission( 5074, "Кто же этот Просветленный?", 1502 )

	MisBeginTalk( "<t>Просветленная личность покрыта тайной.Но я думаю <bЛанга> сможет вам помочь" )
	MisBeginCondition(NoRecord,1502)
	MisBeginCondition(HasRecord, 995)
	MisBeginCondition(NoMission, 1502 )
	MisBeginAction(AddMission, 1502 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Поговорите с Лангой")
	MisHelpTalk("<t>Поговорите с Лангой (853, 3549)")
	MisResultCondition(AlwaysFailure)

	


-------------------------------------------------------Л­КЗЦЗХЯ------------ЗЗ¶ыЗЗДб
	DefineMission( 5075, "Кто же этот Просветленный?", 1503 )

	MisBeginTalk( "<t>Просветленная личность покрыта тайной. Но я думаю <bЛагна> сможет вам помочь" )
	MisBeginCondition(NoRecord,1503)
	MisBeginCondition(HasRecord, 997)
	MisBeginCondition(NoMission, 1503 )
	MisBeginAction(AddMission, 1503 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Поговорите с Лангой")
	MisHelpTalk("<t>Поговорите с Лангой (853, 3549)")
	MisResultCondition(AlwaysFailure)

	


	
-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5076, "Кто же этот Просветленный?", 1500,COMPLETE_SHOW )----------°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Каждый молодой человек ищет просветления. И я тоже не исключение, но будь готов! Пусть будет тяжек и жесток.")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5077, "Кто же этот Просветленный?", 1501,COMPLETE_SHOW )----------°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Каждый молодой человек ищет просветления. И я тоже не исключение, но будь готов! Пусть будет тяжек и жесток.")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5078, "Кто же этот Просветленный?", 1502,COMPLETE_SHOW )----------°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Каждый молодой человек ищет просветления. И я тоже не исключение, но будь готов! Пусть будет тяжек и жесток.")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1504 )

	-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5079, "Кто же этот Просветленный?", 1503,COMPLETE_SHOW )----------°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Каждый молодой человек ищет просветления. И я тоже не исключение, но будь готов! Пусть будет тяжек и жесток.")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1504 )
-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5080, "Кто же этот Просветленный?", 1500,COMPLETE_SHOW )----------АЙДГ¶Ѕ
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Вы ищите просветленного?Только умные люди могут узнать о нем.")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1505 )


-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5081, "Кто же этот Просветленный?", 1501,COMPLETE_SHOW )-----------АЙДГ¶Ѕ
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Вы ищите просветленного? Только умные люди могут узнать о нем.")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1505 )

-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5082, "Кто же этот Просветленный?", 1502,COMPLETE_SHOW )-----------АЙДГ¶Ѕ
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Вы ищите просветленного? Только умные люди могут узнать о нем.")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1505 )

-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5083, "Кто же этот Просветленный?", 1503,COMPLETE_SHOW )-----------АЙДГ¶Ѕ
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Вы ищите просветленного? Только умные люди могут узнать о нем.")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1505 )


	-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5084, "Кто же этот Просветленный?", 1500,COMPLETE_SHOW )----------°¬БўїЛ
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Друг мой...вы достаточно умны...?!")
	MisResultCondition(NoRecord, 1500)
	MisResultCondition(HasMission,1500)
	MisResultAction(ClearMission, 1500 )
	MisResultAction(SetRecord, 1500 )
	MisResultAction(SetRecord, 1506 )


-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5085, "Кто же этот Просветленный?", 1501,COMPLETE_SHOW )-----------°¬БўїЛ
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Друг мой...вы достаточно умны...?!")
	MisResultCondition(NoRecord, 1501)
	MisResultCondition(HasMission,1501)
	MisResultAction(ClearMission, 1501 )
	MisResultAction(SetRecord, 1501 )
	MisResultAction(SetRecord, 1506 )

-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5086, "Кто же этот Просветленный?", 1502,COMPLETE_SHOW )-----------°¬БўїЛ
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Друг мой...вы достаточно умны...?!")
	MisResultCondition(NoRecord, 1502)
	MisResultCondition(HasMission,1502)
	MisResultAction(ClearMission, 1502 )
	MisResultAction(SetRecord, 1502 )
	MisResultAction(SetRecord, 1506 )

-------------------------------Л­КЗЦЗХЯ
	DefineMission( 5087, "Кто же этот Просветленный?", 1503,COMPLETE_SHOW )-----------°¬БўїЛ
	
	MisBeginCondition(AlwaysFailure )

	MisResultTalk("<t>Друг мой...вы достаточно умны...?!")
	MisResultCondition(NoRecord, 1503)
	MisResultCondition(HasMission,1503)
	MisResultAction(ClearMission, 1503 )
	MisResultAction(SetRecord, 1503 )
	MisResultAction(SetRecord, 1506 )

-------------------------------------------------------ЅрЕЖГЕНЅ-------------°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№
	DefineMission( 5088, "Лучший ученик", 1507 )

	MisBeginTalk( "<t>Председатель Рони говорит что вы не слишком хорошо знакомы со своим классом?" )
	MisBeginCondition(NoRecord,1507)
	MisBeginCondition(HasRecord, 1504)
	MisBeginCondition(NoMission, 1507 )
	MisBeginAction(AddMission, 1507 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Поговорите с Грегори, Минелли, Рэйом или Питером.")
	MisHelpTalk("<t>Минели можно найти тут (1244, 3186).")
	MisResultCondition(AlwaysFailure)
--------------------------------------------------------ЅрЕЖГЕНЅ
	DefineMission( 5089, "Лучший ученик", 1507,COMPLETE_SHOW )--------±ИМШ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Председатель Рони говорит что вы не слишком хорошо знакомы со своим классом?")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1514)

	


	--------------------------------------------------------ЅрЕЖГЕНЅ
	DefineMission( 5090, "Лучший ученик", 1507,COMPLETE_SHOW )---------АЧЕ·
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Председатель Рони говорит что вы не слишком хорошо знакомы со своим классом?")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1515)

--------------------------------------------------------ЅрЕЖГЕНЅ
	DefineMission( 5091, "Лучший ученик", 1507,COMPLETE_SHOW )---------ЗЗ¶ыЗЗДб
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Малышь Даниель очень занят,он просил что бы я Вас проверил.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual, 5)
	MisResultCondition(NoPfEqual, 13)
	MisResultCondition(NoPfEqual, 14)
	MisResultCondition(NoPfEqual, 1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 12)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1516)

	--------------------------------------------------------ЅрЕЖГЕНЅ
	DefineMission( 5092, "Лучший ученик", 1507,COMPLETE_SHOW )---------ГЧ¶ыГЧАт
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Священник сейчас занят, он просил что бы я вас проверил.")
	MisResultCondition(NoRecord, 1507)
	MisResultCondition(HasMission,1507)
	MisResultCondition(NoPfEqual,1)
	MisResultCondition(NoPfEqual, 8)
	MisResultCondition(NoPfEqual, 9)
	MisResultCondition(NoPfEqual, 2)
	MisResultCondition(NoPfEqual, 12)
	MisResultCondition(NoPfEqual, 4)
	MisResultCondition(NoPfEqual, 16)
	MisResultAction(ClearMission,1507)
	MisResultAction(SetRecord, 1507)
	MisResultAction(SetRecord, 1517)

---------------------------------------------------------------------±ИМШіхј¶ГЕНЅ

	DefineMission( 5093, "Начинающий ученик", 1508 )

	MisBeginTalk( "<t>Вам необходимо пройти испытания.Убейте 5  Терранских капитанов" )
	MisBeginCondition(NoRecord, 1508 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1514 )
	MisBeginCondition(NoMission, 1508 )
	MisBeginAction(AddMission,  1508)
	MisBeginAction(AddTrigger,  15081, TE_KILL, 67, 5 )----------------µШѕ«ХЅКї
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 5  Терранских капитанов")
	MisNeed(MIS_NEED_KILL,67,5, 10, 5)

	MisResultTalk("<t>Отлично! Вы прошли 1 испытание")
	MisHelpTalk("<t>При стычке с Капитаном, будте спокойным")
	MisResultCondition(HasMission,  1508)
	MisResultCondition(NoRecord,  1508)
	MisResultCondition(HasFlag,  1508, 14 )
	MisResultAction(ClearMission,  1508 )
	MisResultAction(SetRecord,  1508  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 67)	
	TriggerAction( 1, AddNextFlag,  1508 , 10,5)
	RegCurTrigger(   15081 )

	---------------------------------------------------------------------±ИМШ¶юј¶ГЕНЅ

	DefineMission( 5094, "Ученик 2 ур.", 1509 )

	MisBeginTalk( "<t>Ваше второе задание.Убейте 5 Зловещий неупокоенный воин" )
	MisBeginCondition(NoRecord, 1509 )
	MisBeginCondition(HasRecord, 1508 )
	MisBeginCondition(NoMission, 1509 )
	MisBeginAction(AddMission,  1509)
	MisBeginAction(AddTrigger,  15091, TE_KILL, 549, 5 )----------------Р°¶сµДІ»ГрОд
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 5 Зловещий неупокоенный воин")
	MisNeed(MIS_NEED_KILL,549,5, 10, 5)

	MisResultTalk("<t>Вы отлично справились с заданием!")
	MisHelpTalk("<t>Будьте осторожны!")
	MisResultCondition(HasMission,  1509)
	MisResultCondition(NoRecord,  1509)
	MisResultCondition(HasFlag,  1509, 14 )
	MisResultAction(ClearMission,  1509 )
	MisResultAction(SetRecord,  1509  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 549)	
	TriggerAction( 1, AddNextFlag,  1509 , 10,5)
	RegCurTrigger(   15091 )

	---------------------------------------------------------------------±ИМШИэј¶ГЕНЅ

	DefineMission( 5095, "Ученик третьей ступени", 1510 )

	MisBeginTalk( "<t>Ваше следующее задание.Убейте Зловещий рыцарь тыквы 6 шт" )
	MisBeginCondition(NoRecord, 1510 )
	MisBeginCondition(HasRecord, 1509 )
	MisBeginCondition(NoMission, 1510 )
	MisBeginAction(AddMission,  1510)
	MisBeginAction(AddTrigger,  15101, TE_KILL, 546, 6 )----------------Р°¶сµДДП№ПЖпКї
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте Зловещий рыцарь тыквы 6 шт.")
	MisNeed(MIS_NEED_KILL,546,6, 10, 6)

	MisResultTalk("<t>Вы все ближе и ближе....")
	MisHelpTalk("<t>Будьте более настойчивым")
	MisResultCondition(HasMission,  1510)
	MisResultCondition(NoRecord,  1510)
	MisResultCondition(HasFlag,  1510, 15 )
	MisResultAction(ClearMission,  1510 )
	MisResultAction(SetRecord,  1510  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 546)	
	TriggerAction( 1, AddNextFlag,  1510 , 10,6)
	RegCurTrigger(   15101 )



---------------------------------------------------------------------±ИМШёЯј¶ГЕНЅ

	DefineMission( 5096, "Успевающий ученик", 1511 )

	MisBeginTalk( "<t>Ваше новое задание - убейте 8 Призрачных охотников" )
	MisBeginCondition(NoRecord, 1511 )
	MisBeginCondition(HasRecord, 1510 )
	MisBeginCondition(NoMission, 1511 )
	MisBeginAction(AddMission,  1511)
	MisBeginAction(AddTrigger,  15111, TE_KILL, 201, 8 )----------------°µУ°БФКЦ
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 8 Призрачных охотников")
	MisNeed(MIS_NEED_KILL,201,8, 10, 8)

	MisResultTalk("<t>Вы выполнили все задания!")
	MisHelpTalk("<t> Это последний тест! Не сдавайтесь")
	MisResultCondition(HasMission,  1511)
	MisResultCondition(NoRecord,  1511)
	MisResultCondition(HasFlag,  1511, 17 )
	MisResultAction(ClearMission,  1511 )
	MisResultAction(SetRecord,  1511  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 201)	
	TriggerAction( 1, AddNextFlag,  1511 , 10,8)
	RegCurTrigger(   15111 )


	
	---------------------------------------------------------------------АЧЕ·іхј¶ГЕНЅ

	DefineMission( 5097, "Начинающий ученик", 1512 )

	MisBeginTalk( "<t>Хм..ваше первое задание. Убейте 5 Детенышей ледяного дракона" )
	MisBeginCondition(NoRecord, 1512 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1515 )
	MisBeginCondition(NoMission, 1512 )
	MisBeginAction(AddMission,  1512)
	MisBeginAction(AddTrigger,  15121, TE_KILL, 187, 5 )----------------РЎ±щБъ
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 5 Детенышей ледяного дракона")
	MisNeed(MIS_NEED_KILL,187,5, 10, 5)

	MisResultTalk("<t>Отлично.Вы выполнили первое задание.")
	MisHelpTalk("<t> Осторожнее.")
	MisResultCondition(HasMission,  1512)
	MisResultCondition(NoRecord,  1512)
	MisResultCondition(HasFlag,  1512, 14 )
	MisResultAction(ClearMission,  1512 )
	MisResultAction(SetRecord,  1512  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 187)	
	TriggerAction( 1, AddNextFlag,  1512 , 10,5)
	RegCurTrigger(   15121 )


	---------------------------------------------------------------------АЧЕ·¶юј¶ГЕНЅ

	DefineMission( 5098, "Ученик 2 ур.", 1513 )

	MisBeginTalk( "<t>Ваше второе задание. Убейте 5 Безумных туземцев" )
	MisBeginCondition(NoRecord, 1513 )
	MisBeginCondition(HasRecord, 1512 )
	MisBeginCondition(NoMission, 1513 )
	MisBeginAction(AddMission,  1513)
	MisBeginAction(AddTrigger,  15131, TE_KILL, 543, 5 )----------------·иїсµДНБЦшИЛ
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 5 Безумных туземцев")
	MisNeed(MIS_NEED_KILL,543,5, 10, 5)

	MisResultTalk("<t>Отлично. Вы справились со вторым заданием.")
	MisHelpTalk("<t>Будьте осмотрительнее!")
	MisResultCondition(HasMission,  1513)
	MisResultCondition(NoRecord,  1513)
	MisResultCondition(HasFlag,  1513, 14 )
	MisResultAction(ClearMission,  1513 )
	MisResultAction(SetRecord,  1513  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 543)	
	TriggerAction( 1, AddNextFlag,  1513 , 10,5)
	RegCurTrigger(   15131 )


	---------------------------------------------------------------------АЧЕ·Иэј¶ГЕНЅ

	DefineMission( 5099, "Ученик третьей ступени", 1518 )

	MisBeginTalk( "<t>Ваше третье задание. Убейте 6 Главарей Вервольфов-воинов" )
	MisBeginCondition(NoRecord, 1518 )
	MisBeginCondition(HasRecord, 1513 )
	MisBeginCondition(NoMission, 1518 )
	MisBeginAction(AddMission,  1518)
	MisBeginAction(AddTrigger,  15181, TE_KILL, 566, 6 )----------------АЗИЛХЅКї¶Уі¤
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 6 Главарей Вервольфов-воинов")
	MisNeed(MIS_NEED_KILL,566,6, 10, 6)

	MisResultTalk("<t>Великолепно! Вы справились с третьим заданием.")
	MisHelpTalk("<t>Будьте осторожнее")
	MisResultCondition(HasMission,  1518)
	MisResultCondition(NoRecord,  1518)
	MisResultCondition(HasFlag,  1518, 15 )
	MisResultAction(ClearMission,  1518 )
	MisResultAction(SetRecord,  1518  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 566)	
	TriggerAction( 1, AddNextFlag,  1518 , 10,6)
	RegCurTrigger(   15181 )


	---------------------------------------------------------------------АЧЕ·ёЯј¶ГЕНЅ

	DefineMission( 5100, "Успевающий ученик", 1519 )

	MisBeginTalk( "<t>Ваше последнее задание.Убейте 8 Тысячелетних энтов" )
	MisBeginCondition(NoRecord, 1519 )
	MisBeginCondition(HasRecord, 1518 )
	MisBeginCondition(NoMission, 1519 )
	MisBeginAction(AddMission,  1519)
	MisBeginAction(AddTrigger,  15191, TE_KILL, 511, 8)----------------ѕЮРНКчИЛ
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 8 Тысячелетних энтов")
	MisNeed(MIS_NEED_KILL,511,8, 10, 8)

	MisResultTalk("<t>Великолепно! Вы выполнили все задания")
	MisHelpTalk("<t>Немного терпения.")
	MisResultCondition(HasMission,  1519)
	MisResultCondition(NoRecord,  1519)
	MisResultCondition(HasFlag,  1519, 17 )
	MisResultAction(ClearMission,  1519 )
	MisResultAction(SetRecord,  1519  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 511)	
	TriggerAction( 1, AddNextFlag,  1519 , 10,8)
	RegCurTrigger(   15191 )

	---------------------------------------------------------------------ГЧ¶ыіхј¶ГЕНЅ

	DefineMission( 5101, "Начинающий ученик", 1520 )

	MisBeginTalk( "<t>Хм...вы должны выполнить несколько заданий.Ваше первое задание.Убейте 5 Зловещий неупокоенный воин" )
	MisBeginCondition(NoRecord, 1520 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(HasRecord, 1517)
	MisBeginCondition(NoMission, 1520 )
	MisBeginAction(AddMission,  1520)
	MisBeginAction(AddTrigger,  15201, TE_KILL, 549, 5 )----------------Р°¶сµДІ»ГрОдКї
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 5 Зловещий неупокоенный воин")
	MisNeed(MIS_NEED_KILL,549,5, 10, 5)

	MisResultTalk("<t>Отлично. Вы справились")
	MisHelpTalk("<t>Проявите терпения друг мой...")
	MisResultCondition(HasMission,  1520)
	MisResultCondition(NoRecord,  1520)
	MisResultCondition(HasFlag,  1520, 14 )
	MisResultAction(ClearMission,  1520 )
	MisResultAction(SetRecord,  1520  )

	InitTrigger()
	TriggerCondition( 1, IsMonster, 549)	
	TriggerAction( 1, AddNextFlag,  1520 , 10,5)
	RegCurTrigger(   15201 )



---------------------------------------------------------------------ГЧ¶ы¶юј¶ГЕНЅ

	DefineMission( 5102, "Ученик 2 ур.", 1521 )

	MisBeginTalk( "<t>Ваше второе задание. Убейте 2 Сирены." )
	MisBeginCondition(NoRecord, 1521 )
	MisBeginCondition(HasRecord, 1520 )
	MisBeginCondition(NoMission, 1521 )
	MisBeginAction(AddMission,  1521)
	MisBeginAction(AddTrigger,  15211, TE_KILL, 587, 2 )----------------
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 2 Сирены")
	MisNeed(MIS_NEED_KILL,587,2, 10, 2)

	MisResultTalk("<t>Отлично. Вы справились")
	MisHelpTalk("<t>Проявите терпения друг мой...")
	MisResultCondition(HasMission,  1521)
	MisResultCondition(NoRecord,  1521)
	MisResultCondition(HasFlag,  1521, 11 )
	MisResultAction(ClearMission,  1521 )
	MisResultAction(SetRecord,  1521  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 587)	
	TriggerAction( 1, AddNextFlag,  1521 , 10,2)
	RegCurTrigger(   15211 )



	---------------------------------------------------------------------ГЧ¶ыИэј¶ГЕНЅ

	DefineMission( 5103, "Ученик третьей ступени", 1522 )

	MisBeginTalk( "<t>Ваше третье задание. Убейте 3 Глубоководная сирена " )
	MisBeginCondition(NoRecord, 1522 )
	MisBeginCondition(HasRecord, 1521 )
	MisBeginCondition(NoMission, 1522 )
	MisBeginAction(AddMission,  1522)
	MisBeginAction(AddTrigger,  15221, TE_KILL, 606, 3 )----------------
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 3 Глубоководная сирена")
	MisNeed(MIS_NEED_KILL,606,3, 10, 3)

	MisResultTalk("<t>Отлично. Вы справились")
	MisHelpTalk("<t>Проявите терпения друг мой...")
	MisResultCondition(HasMission,  1522)
	MisResultCondition(NoRecord,  1522)
	MisResultCondition(HasFlag,  1522, 12 )
	MisResultAction(ClearMission,  1522 )
	MisResultAction(SetRecord,  1522  )
	
	InitTrigger()
	TriggerCondition( 1, IsMonster, 606)	
	TriggerAction( 1, AddNextFlag,  1522 , 10,3)
	RegCurTrigger(   15221 )

---------------------------------------------------------------------ГЧ¶ыёЯј¶ГЕНЅ

	DefineMission( 5104, "Успевающий ученик", 1523 )

	MisBeginTalk( "<t>Ваше последнее задание убить 8 Пиратов 007" )
	MisBeginCondition(NoRecord, 1523 )
	MisBeginCondition(HasRecord, 1522 )
	MisBeginCondition(NoMission, 1523 )
	MisBeginAction(AddMission,  1523)
	MisBeginAction(AddTrigger,  15231, TE_KILL, 735, 8 )----------------
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убить 8 Пиратов 007 ")
	MisNeed(MIS_NEED_KILL,735,8, 10,8)

	MisResultTalk("<t>Отлично.Вы справились с последним заданием!")
	MisHelpTalk("<t>Проявите терпения друг мой...")
	MisResultCondition(HasMission,  1523)
	MisResultCondition(NoRecord,  1523)
	MisResultCondition(HasFlag,  1523, 17 )
	MisResultAction(ClearMission,  1523 )
	MisResultAction(SetRecord,  1523  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 735)	
	TriggerAction( 1, AddNextFlag,  1523 , 10,8)
	RegCurTrigger(   15231 )


---------------------------------------------------------------------ЗЗ¶ыіхј¶ГЕНЅ

	DefineMission( 5105, "Начинающий ученик", 1524 )

	MisBeginTalk( "<t>Я хочу построить себе дом.Помогите мне достать нужные компоненты.Первое задание  - принесите Светящийся хребет рыбы-кости 2 шт" )
	MisBeginCondition(NoRecord, 1524 )
	MisBeginCondition(HasRecord, 1516 )
	MisBeginCondition(HasRecord, 1507 )
	MisBeginCondition(NoMission, 1524 )
	MisBeginAction(AddMission,  1524)
	MisBeginAction(AddTrigger,  15241, TE_GETITEM, 1350, 2 )----------------
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите Светящийся хребет рыбы-кости 2 шт ")
	MisNeed(MIS_NEED_ITEM,1350,2, 10, 2)

	MisResultTalk("<t>Спасибо!")
	MisHelpTalk("<t>Будьте осторожны... ")
	MisResultCondition(HasMission,  1524)
	MisResultCondition(NoRecord,  1524)
	MisResultCondition(HasItem, 1350, 2)
	MisResultAction(TakeItem,  1350, 2 )
	MisResultAction(ClearMission,  1524 )
	MisResultAction(SetRecord,  1524  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,1350)	
	TriggerAction( 1, AddNextFlag, 1524, 10, 2 )
	RegCurTrigger( 15241 )

	---------------------------------------------------------------------ЗЗ¶ы¶юј¶ГЕНЅ

	DefineMission( 5106, "Ученик 2 ур.", 1525 )

	MisBeginTalk( "<t>Ваше второе задание. Принесите мне 2 Кристалла сирены" )
	MisBeginCondition(NoRecord, 1525 )
	MisBeginCondition(HasRecord, 1524 )
	MisBeginCondition(NoMission, 1525 )
	MisBeginAction(AddMission,  1525)
	MisBeginAction(AddTrigger,  15251, TE_GETITEM, 1295, 2 )----------------
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите 2 Кристалла сирены")
	MisNeed(MIS_NEED_ITEM,1295,2, 10, 2)

	MisResultTalk("<t>Спасибо!")
	MisHelpTalk("<t>Будьте осторожны... ")
	MisResultCondition(HasMission,  1525)
	MisResultCondition(NoRecord,  1525)
	MisResultCondition(HasItem, 1295, 2)
	MisResultAction(TakeItem,  1295, 2 )
	MisResultAction(ClearMission,  1525 )
	MisResultAction(SetRecord,  1525  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,1295)	
	TriggerAction( 1, AddNextFlag, 1525, 10, 2 )
	RegCurTrigger( 15251 )



---------------------------------------------------------------------ЗЗ¶ыИэј¶ГЕНЅ

	DefineMission( 5107, "Ученик третьей ступени", 1526 )

	MisBeginTalk( "<t>Ваше третье задание. Принесите мне 99 эльфийских фруктов " )
	MisBeginCondition(NoRecord, 1526 )
	MisBeginCondition(HasRecord, 1525 )
	MisBeginCondition(NoMission, 1526 )
	MisBeginAction(AddMission,  1526)
	MisBeginAction(AddTrigger,  15261, TE_GETITEM, 3116, 99 )----------------
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите 99 эльфийских фруктов")
	MisNeed(MIS_NEED_ITEM,3116,99, 10, 99)

	MisResultTalk("<t>Спасибо!")
	MisHelpTalk("<t>Будьте осторожны...")
	MisResultCondition(HasMission,  1526)
	MisResultCondition(NoRecord,  1526)
	MisResultCondition(HasItem, 3116, 99)
	MisResultAction(TakeItem,  3116, 99 )
	MisResultAction(ClearMission,  1526 )
	MisResultAction(SetRecord,  1526  )
	
	InitTrigger()
	TriggerCondition( 1, IsItem,3116)	
	TriggerAction( 1, AddNextFlag, 1526, 10, 99 )
	RegCurTrigger( 15261 )


	---------------------------------------------------------------------ЗЗ¶ыёЯј¶ГЕНЅ

	DefineMission( 5108, "Успевающий ученик", 1527 )

	MisBeginTalk( "<t>Ваше последнее задание.Принесите мне 15 Эмблем рядового бородача." )
	MisBeginCondition(NoRecord, 1527 )
	MisBeginCondition(HasRecord, 1526 )
	MisBeginCondition(NoMission, 1527 )
	MisBeginAction(AddMission,  1527)
	MisBeginAction(AddTrigger,  15271, TE_GETITEM, 4802, 1 )----------------
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите 15 Эмблем рядового бородача")
	MisNeed(MIS_NEED_ITEM,4802,1, 10, 1)

	MisResultTalk("<t>Великолепно! Вы выполнили все задания")
	MisHelpTalk("<t>Будьте осторожны...")
	MisResultCondition(HasMission,  1527)
	MisResultCondition(NoRecord,  1527)
	MisResultCondition(HasItem, 4802, 1)
	MisResultAction(TakeItem,  4802, 1 )
	MisResultAction(ClearMission,  1527 )
	MisResultAction(SetRecord,  1527  )
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsItem,4802)	
	TriggerAction( 1, AddNextFlag, 1527, 10, 1 )
	RegCurTrigger( 15271 )

-------------------------------------------------------єПёсµДГЕНЅ--------±ИМШ
	DefineMission( 5109, "Способный ученик", 1528 )

	MisBeginTalk( "<t>Вы достигли 4 уровня ученика.Теперь вам пора поговорить с Рони" )
	MisBeginCondition(NoRecord,1528)
	MisBeginCondition(HasRecord, 1511)
	MisBeginCondition(NoMission, 1528 )
	MisBeginAction(AddMission, 1528 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Рони")
	MisHelpTalk("<t>Рони находиться в Аргенте (2242, 2748)")
	MisResultCondition(AlwaysFailure)



--------------------------------------------------------єПёсµДГЕНЅ
	DefineMission( 5110, "Способный ученик", 1528,COMPLETE_SHOW )----------°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Отлично! Вы очень быстро справились во всеми заданиями.")
	MisResultCondition(NoRecord, 1528)
	MisResultCondition(HasMission, 1528)
	MisResultAction(ClearMission,1528)
	MisResultAction(SetRecord, 1528)
	MisResultAction(SetRecord, 1577)-------------
	

-------------------------------------------------------єПёсµДГЕНЅ--------АЧЕ·
	DefineMission( 5111, "Способный ученик", 1529 )

	MisBeginTalk( "<t>Вы достигли 4 уровня ученика. Теперь вам пора поговорить с Рони" )
	MisBeginCondition(NoRecord,1529)
	MisBeginCondition(HasRecord, 1519)
	MisBeginCondition(NoMission, 1529 )
	MisBeginAction(AddMission, 1529 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Рони")
	MisHelpTalk("<t>Рони находиться в Аргенте (2242, 2748)")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------єПёсµДГЕНЅ
	DefineMission( 5112, "Способный ученик", 1529,COMPLETE_SHOW )------°ЧТшіЗЙМ»б»бі¤Ў¤АНВЧµПВнЛ№(2242,2748)
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Отлично! Вы очень быстро справились во всеми заданиями.")
	MisResultCondition(NoRecord, 1529)
	MisResultCondition(HasMission, 1529)
	MisResultAction(ClearMission,1529)
	MisResultAction(SetRecord, 1529)
	MisResultAction(SetRecord, 1577)-------------


	-------------------------------------------------------єПёсµДГЕНЅ--------ГЧ¶ы
	DefineMission( 5113, "Способный ученик", 1530 )

	MisBeginTalk( "<t>Отлично! Вы очень быстро справились во всеми заданиями." )
	MisBeginCondition(NoRecord,1530)
	MisBeginCondition(HasRecord, 1523)
	MisBeginCondition(NoMission, 1530 )
	MisBeginAction(AddMission, 1530 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Рони")
	MisHelpTalk("<t>Рони находиться в Аргенте (2242, 2748)")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------єПёсµДГЕНЅ
	DefineMission( 5114, "Способный ученик", 1530,COMPLETE_SHOW )------АНВЧµПВнЛ№
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Отлично! Вы очень быстро справились во всеми заданиями.")
	MisResultCondition(NoRecord, 1530)
	MisResultCondition(HasMission, 1530)
	MisResultAction(ClearMission,1530)
	MisResultAction(SetRecord, 1530)
	MisResultAction(SetRecord, 1577)-------------

	-------------------------------------------------------єПёсµДГЕНЅ--------ЗЗ¶ы
	DefineMission( 5115, "Способный ученик", 1531 )

	MisBeginTalk( "<t>Отлично! Вы очень быстро справились во всеми заданиями." )
	MisBeginCondition(NoRecord,1531)
	MisBeginCondition(HasRecord, 1527)
	MisBeginCondition(NoMission, 1531 )
	MisBeginAction(AddMission, 1531 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Правителем Аргента")
	MisHelpTalk("<t>Правителя Аргента можно найти в (2242, 2748)")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------єПёсµДГЕНЅ
	DefineMission( 5116, "Способный ученик", 1531,COMPLETE_SHOW )------АНВЧµПВнЛ№
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Отлично! Вы очень быстро справились во всеми заданиями.")
	MisResultCondition(NoRecord, 1531)
	MisResultCondition(HasMission, 1531)
	MisResultAction(ClearMission,1531)
	MisResultAction(SetRecord, 1531)
	MisResultAction(SetRecord, 1577)-------------

-------------------------------------------------------О°ґуµДЙсЪН----------АКДГ¶И
	DefineMission( 5117, "Оракул Величия", 1532 )

	MisBeginTalk( "<t>Найдите 8 Посланников Богов и возвращайтесь ко мне." )
	MisBeginCondition(NoRecord,1532)
	MisBeginCondition(HasRecord, 1505)
	MisBeginCondition(NoMission, 1532 )
	MisBeginAction(AddMission, 1532 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с портнихой Биби")
	MisHelpTalk("<t>Поговорите с портнихой Биби ")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------О°ґуµДЙсЪН
	DefineMission( 5118, "Оракул Величия", 1532,COMPLETE_SHOW )-------------·юЧ°µкЦъАнЎ¤ЭнЭн
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Я являюсь Божеством воды")
	MisResultCondition(NoRecord, 1532)
	MisResultCondition(HasMission, 1532)
	MisResultAction(ClearMission,1532)
	MisResultAction(SetRecord, 1532)



---------------------------------------------------------------------Т»ЦШГЕ

	DefineMission( 5119, "Первые врата", 1533 )

	MisBeginTalk( "<t>Я слуга Божества воды." )------·юЧ°µкЦъАнЎ¤ЭнЭн
	MisBeginCondition(NoRecord, 1533 )
	MisBeginCondition(HasRecord, 1532 )
	MisBeginCondition(NoMission, 1533 )
	MisBeginAction(AddMission,  1533)
	MisBeginAction(AddTrigger,  15331, TE_KILL, 642, 2 )----------------РЧГНµД№ЗУг
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Уничтожте 2 Кровожадная рыба-кость")
	MisNeed(MIS_NEED_KILL,642,2, 10, 2)

	MisResultTalk("<t>Вы можете получить мое благословение")
	MisHelpTalk("<t>Храните мою тайну")
	MisResultCondition(HasMission,  1533)
	MisResultCondition(NoRecord,  1533)
	MisResultCondition(HasFlag,  1533, 11 )
	MisResultAction(ClearMission,  1533 )
	MisResultAction(SetRecord,  1533  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 642)	
	TriggerAction( 1, AddNextFlag,  1533 , 10,2)
	RegCurTrigger(   15331 )


-------------------------------------------------------ёж±рТ»ЦШГЕ------------·юЧ°µкЦъАнЎ¤ЭнЭн
	DefineMission( 5120, "Прощание с первыми вратами", 1534 )

	MisBeginTalk( "<t>Поговорите с <bМастером Керрой>" )
	MisBeginCondition(NoRecord,1534)
	MisBeginCondition(HasRecord, 1533)
	MisBeginCondition(NoMission, 1534 )
	MisBeginAction(AddMission, 1534 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с <bМастером Керрой>")
	MisHelpTalk("<t>Следующее испытание будет не такое легкое")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ёж±рТ»ЦШГЕ
	DefineMission( 5121, "Прощание с первыми вратами", 1534,COMPLETE_SHOW )-------------їЛА­А­ґуК¦
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Надеюсь вы знаете, что делаете.")
	MisResultCondition(NoRecord, 1534)
	MisResultCondition(HasMission, 1534)
	MisResultAction(ClearMission,1534)
	MisResultAction(SetRecord, 1534)

---------------------------------------------------------------------¶юЦШГЕ

	DefineMission( 5122, "Вторые врата", 1535 )

	MisBeginTalk( "<t>Я слуга Божества огня" )------їЛА­А­ґуК¦
	MisBeginCondition(NoRecord, 1535 )
	MisBeginCondition(HasRecord, 1534 )
	MisBeginCondition(NoMission, 1535 )
	MisBeginAction(AddMission,  1535)
	MisBeginAction(AddTrigger,  15351, TE_KILL, 652, 2 )----------------РЧГНµД±¦КЇєЈла
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 2 Свирепый рубиновый дельфин")
	MisNeed(MIS_NEED_KILL,652,2, 10, 2)

	MisResultTalk("<t>Вы можете получить мое благословение.")
	MisHelpTalk("<t>Храните мою тайну")
	MisResultCondition(HasMission,  1535)
	MisResultCondition(NoRecord,  1535)
	MisResultCondition(HasFlag,  1535, 11 )
	MisResultAction(ClearMission,  1535 )
	MisResultAction(SetRecord,  1535  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 652)	
	TriggerAction( 1, AddNextFlag,  1535 , 10,2)
	RegCurTrigger(   15351 )


-------------------------------------------------------ёж±р¶юЦШГЕ------------їЛА­А­ґуК¦
	DefineMission( 5123, "Прощание с Вторыми вратами", 1536 )

	MisBeginTalk( "<t>Поговорите с <bМаркусом>" )
	MisBeginCondition(NoRecord,1536)
	MisBeginCondition(HasRecord, 1535)
	MisBeginCondition(NoMission, 1536 )
	MisBeginAction(AddMission, 1536 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с <bМаркусом>")
	MisHelpTalk("<t>Желаю вам удачи!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ёж±р¶юЦШГЕ
	DefineMission( 5124, "Прощание с Вторыми вратами", 1536,COMPLETE_SHOW )-------------ВнВе
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы до сих пор в нормальном состояние?")
	MisResultCondition(NoRecord, 1536)
	MisResultCondition(HasMission, 1536)
	MisResultAction(ClearMission,1536)
	MisResultAction(SetRecord, 1536)

---------------------------------------------------------------------ИэЦШГЕ

	DefineMission( 5125, "Третьи врата", 1537 )

	MisBeginTalk( "<t>Я слуга Божества ветра." )------ВнВе
	MisBeginCondition(NoRecord, 1537 )
	MisBeginCondition(HasRecord, 1536 )
	MisBeginCondition(NoMission, 1537 )
	MisBeginAction(AddMission,  1537)
	MisBeginAction(AddTrigger,  15371, TE_KILL, 587, 2 )----------------РЧГНµД±¦КЇєЈла
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 3 Сирена")
	MisNeed(MIS_NEED_KILL,587,2, 10, 2)

	MisResultTalk("<t>Вы можете получить мое благословение.")
	MisHelpTalk("<t>Храните мою тайну")
	MisResultCondition(HasMission,  1537)
	MisResultCondition(NoRecord,  1537)
	MisResultCondition(HasFlag,  1537, 11 )
	MisResultAction(ClearMission,  1537 )
	MisResultAction(SetRecord,  1537  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 587)	
	TriggerAction( 1, AddNextFlag,  1537 , 10,2)
	RegCurTrigger(   15371 )


-------------------------------------------------------ёж±рИэЦШГЕ------------ВнВе
	DefineMission( 5126, "Прощание с третьими вратами", 1538 )

	MisBeginTalk( "<t>Поговорите с Зевсом" )
	MisBeginCondition(NoRecord,1538)
	MisBeginCondition(HasRecord, 1537)
	MisBeginCondition(NoMission, 1538 )
	MisBeginAction(AddMission, 1538 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Зевсом")
	MisHelpTalk("<t>Желаю вам удачи!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ёж±рИэЦШГЕ
	DefineMission( 5127, "Прощание с третьими вратами", 1538,COMPLETE_SHOW )-------------РЮЛѕ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы до сих пор в нормальном состояние?")
	MisResultCondition(NoRecord, 1538)
	MisResultCondition(HasMission, 1538)
	MisResultAction(ClearMission,1538)
	MisResultAction(SetRecord, 1538)



---------------------------------------------------------------------ЛДЦШГЕ

	DefineMission( 5128, "Четвертые врата", 1539 )

	MisBeginTalk( "<t>Я слуга Божества земли" )------РЮЛѕ
	MisBeginCondition(NoRecord, 1539 )
	MisBeginCondition(HasRecord, 1538 )
	MisBeginCondition(NoMission, 1539 )
	MisBeginAction(AddMission,  1539)
	MisBeginAction(AddTrigger,  15391, TE_KILL, 570, 5 )----------------ємєъЧУєЈµБНЕХЅ¶·Ф±
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 4 Абордажник бородачей")
	MisNeed(MIS_NEED_KILL,570,5, 10, 5)

	MisResultTalk("<t>Вы можете получить мое благословение.")
	MisHelpTalk("<t>Храните мою тайну")
	MisResultCondition(HasMission,  1539)
	MisResultCondition(NoRecord,  1539)
	MisResultCondition(HasFlag,  1539, 14 )
	MisResultAction(ClearMission,  1539 )
	MisResultAction(SetRecord,  1539  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 570)	
	TriggerAction( 1, AddNextFlag,  1539 , 10,5)
	RegCurTrigger(   15391 )


-------------------------------------------------------ёж±рЛДЦШГЕ------------РЮЛѕ
	DefineMission( 5129, "Прощание с четвертыми вратами", 1540 )

	MisBeginTalk( "<t>Поговорите с Доктором Маса" )
	MisBeginCondition(NoRecord,1540)
	MisBeginCondition(HasRecord, 1539)
	MisBeginCondition(NoMission, 1540 )
	MisBeginAction(AddMission, 1540 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Доктором Маса")
	MisHelpTalk("<t>Желаю вам удачи!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ёж±рЛДЦШГЕ
	DefineMission( 5130, "Прощание с четвертыми вратами", 1540,COMPLETE_SHOW )-------------ѕьТЅЎ¤ВкЙі
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы до сих пор в нормальном состояние?")
	MisResultCondition(NoRecord, 1540)
	MisResultCondition(HasMission, 1540)
	MisResultAction(ClearMission,1540)
	MisResultAction(SetRecord, 1540)


---------------------------------------------------------------------ОеЦШГЕ

	DefineMission( 5131, "Пятые врата", 1541 )

	MisBeginTalk( "<t>Я слуга Божества снега" )------ѕьТЅЎ¤ВкЙі
	MisBeginCondition(NoRecord, 1541 )
	MisBeginCondition(HasRecord, 1540 )
	MisBeginCondition(NoMission, 1541 )
	MisBeginAction(AddMission,  1541)
	MisBeginAction(AddTrigger,  15411, TE_KILL, 589, 2 )----------------єЈСэ№­КЦ
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 5 Сирена-стрелок")
	MisNeed(MIS_NEED_KILL,589,2, 10, 2)

	MisResultTalk("<t>Вы можете получить мое благословение.")
	MisHelpTalk("<t>Храните мою тайну")
	MisResultCondition(HasMission,  1541)
	MisResultCondition(NoRecord,  1541)
	MisResultCondition(HasFlag,  1541, 11 )
	MisResultAction(ClearMission,  1541 )
	MisResultAction(SetRecord,  1541  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 589)	
	TriggerAction( 1, AddNextFlag,  1541 , 10,2)
	RegCurTrigger(   15411 )


-------------------------------------------------------ёж±рОеЦШГЕ------------ѕьТЅЎ¤ВкЙі
	DefineMission( 5132, "Прощание с пятыми вратами", 1542 )

	MisBeginTalk( "<t>Поговорите с Диспетчер порта Данний" )
	MisBeginCondition(NoRecord,1542)
	MisBeginCondition(HasRecord, 1541)
	MisBeginCondition(NoMission, 1542 )
	MisBeginAction(AddMission, 1542 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Диспетчер порта Данний")
	MisHelpTalk("<t>Желаю вам удачи!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ёж±рОеЦШГЕ
	DefineMission( 5133, "Прощание с пятыми вратами", 1542,COMPLETE_SHOW )-------------µ¤ДбЛ№
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы до сих пор в нормальном состояние?")
	MisResultCondition(NoRecord, 1542)
	MisResultCondition(HasMission, 1542)
	MisResultAction(ClearMission,1542)
	MisResultAction(SetRecord, 1542)

---------------------------------------------------------------------БщЦШГЕ

	DefineMission( 5134, "Шестые врата", 1543 )

	MisBeginTalk( "<t>Я слуга Божества грома" )------µ¤ДбЛ№
	MisBeginCondition(NoRecord, 1543 )
	MisBeginCondition(HasRecord, 1542 )
	MisBeginCondition(NoMission, 1543 )
	MisBeginAction(AddMission,  1543)
	MisBeginAction(AddTrigger,  15431, TE_KILL, 36, 6 )----------------°ЧБйГЁ
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 6 Свирепая белая рысь")
	MisNeed(MIS_NEED_KILL,36,6, 10, 6)

	MisResultTalk("<t>Вы можете получить мое благословение..")
	MisHelpTalk("<t>Храните мою тайну")
	MisResultCondition(HasMission,  1543)
	MisResultCondition(NoRecord,  1543)
	MisResultCondition(HasFlag,  1543, 15 )
	MisResultAction(ClearMission,  1543 )
	MisResultAction(SetRecord,  1543  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 36)	
	TriggerAction( 1, AddNextFlag,  1543 , 10,6)
	RegCurTrigger(   15431 )

-------------------------------------------------------ёж±рБщЦШГЕ------------µ¤ДбЛ№
	DefineMission( 5135, "Прощание с шестыми вратами", 1544 )

	MisBeginTalk( "<t>Поговорите с Зурби" )
	MisBeginCondition(NoRecord,1544)
	MisBeginCondition(HasRecord, 1543)
	MisBeginCondition(NoMission, 1544 )
	MisBeginAction(AddMission, 1544 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Зурби")
	MisHelpTalk("<t>Желаю вам удачи!!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ёж±рБщЦШГЕ
	DefineMission( 5136, "Прощание с шестыми вратами", 1544,COMPLETE_SHOW )-------------Цм±И
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы до сих пор в нормальном состояние?")
	MisResultCondition(NoRecord, 1544)
	MisResultCondition(HasMission, 1544)
	MisResultAction(ClearMission,1544)
	MisResultAction(SetRecord, 1544)

---------------------------------------------------------------------ЖЯЦШГЕ

	DefineMission( 5137, "Седьмые врата", 1545 )

	MisBeginTalk( "<t>Я слуга Божества молний" )------Цм±И
	MisBeginCondition(NoRecord, 1545 )
	MisBeginCondition(HasRecord, 1544 )
	MisBeginCondition(NoMission, 1545 )
	MisBeginAction(AddMission,  1545)
	MisBeginAction(AddTrigger,  15451, TE_KILL, 263, 7 )----------------µШѕ«ХЅКїі¤
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 7 Терранских капитанов")
	MisNeed(MIS_NEED_KILL,263,7, 10, 7)

	MisResultTalk("<t>Вы можете получить мое благословение.")
	MisHelpTalk("<t>Храните мою тайну")
	MisResultCondition(HasMission,  1545)
	MisResultCondition(NoRecord,  1545)
	MisResultCondition(HasFlag,  1545, 16 )
	MisResultAction(ClearMission,  1545 )
	MisResultAction(SetRecord,  1545  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 263)	
	TriggerAction( 1, AddNextFlag,  1545 , 10,7)
	RegCurTrigger(   15451 )

-------------------------------------------------------ёж±рЖЯЦШГЕ------------Цм±И
	DefineMission( 5138, "Прощание с седьмыми вратами", 1546 )

	MisBeginTalk( "<t>Поговорите с Линдой" )
	MisBeginCondition(NoRecord,1546)
	MisBeginCondition(HasRecord, 1545)
	MisBeginCondition(NoMission, 1546 )
	MisBeginAction(AddMission, 1546 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Линдой")
	MisHelpTalk("<t>Желаю вам удачи!")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ёж±рЖЯЦШГЕ
	DefineMission( 5139, "Прощание с седьмыми вратами", 1546,COMPLETE_SHOW )-------------БХґп
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы до сих пор в нормальном состояние?")
	MisResultCondition(NoRecord, 1546)
	MisResultCondition(HasMission, 1546)
	MisResultAction(ClearMission,1546)
	MisResultAction(SetRecord, 1546)

---------------------------------------------------------------------°ЛЦШГЕ

	DefineMission( 5140, "Восьмые врата", 1547 )

	MisBeginTalk( "<t>Я слуга Божества любви" )------БХґп
	MisBeginCondition(NoRecord, 1547 )
	MisBeginCondition(HasRecord, 1546 )
	MisBeginCondition(NoMission, 1547 )
	MisBeginAction(AddMission,  1547)
	MisBeginAction(AddTrigger,  15471, TE_KILL, 808, 8 )----------------НцБйКї±ш
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 8 Солдат мертвых душ")
	MisNeed(MIS_NEED_KILL,808,8, 10,8)

	MisResultTalk("<t>Вы можете получить мое благословение.")
	MisHelpTalk("<t>Храните мою тайну")
	MisResultCondition(HasMission,  1547)
	MisResultCondition(NoRecord,  1547)
	MisResultCondition(HasFlag,  1547, 17 )
	MisResultAction(ClearMission,  1547 )
	MisResultAction(SetRecord,  1547  )
	MisResultAction(AddExp,3000000,3000000)
	MisResultAction(AddMoney,1000000,1000000)	
	MisResultAction(AddExpAndType,2,120000,120000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 808)	
	TriggerAction( 1, AddNextFlag,  1547 , 10,8)
	RegCurTrigger(   15471 )

-------------------------------------------------------ЦХЅбГЕµДЦёКѕ------------БХґп
	DefineMission( 5141, "Инструкция к последним воротам", 1548 )

	MisBeginTalk( "<t>Вот <rОракул>. А теперь ступайте и поговорите с Лангой" )
	MisBeginCondition(NoRecord,1548)
	MisBeginCondition(HasRecord, 1547)
	MisBeginCondition(NoMission, 1548 )
	MisBeginAction(AddMission, 1548 )
	MisBeginAction(GiveItem, 2917,1,4)----------------------------------------------------ЙсЪН
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Лангой")
	MisHelpTalk("<t>Богиня с Вами")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ЦХЅбГЕµДЦёКѕ
	DefineMission( 5142, "Инструкция к последним воротам", 1548,COMPLETE_SHOW )-------------АЙДГ¶И
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Что бы получить Оракул, нужно проделать нелегкий путь...")
	MisResultCondition(NoRecord, 1548)
	MisResultCondition(HasMission, 1548)
	MisResultCondition(HasItem,2917,1)--------------ЙсЪН
	MisResultAction(TakeItem, 2917,1)-------------ЙсЪН
	MisResultAction(ClearMission,1548)
	MisResultAction(SetRecord, 1548)

	---------------------------------------------------------------------НкГАєЈµБИООс

	DefineMission( 5143, "Идеальное пиратское задание", 1549 )

	MisBeginTalk( "<t>В доказательство того что вы идеальный пират, пройдите несколько заданий" )------°¬БўїЛ
	MisBeginCondition(NoRecord, 1549 )
	MisBeginCondition(HasRecord, 1506 )
	MisBeginCondition(NoMission, 1549 )
	MisBeginAction(AddMission,  1549)
	MisBeginAction(AddTrigger,  15491, TE_KILL, 546, 10 )----------------Р°¶сµДДП№ПЖпКї
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 10 Зловещий рыцарь тыквы")
	MisNeed(MIS_NEED_KILL,546,10, 10,10)

	MisResultTalk("<t>Отлично")
	MisHelpTalk("<t>Вы не убили тыкв?")
	MisResultCondition(HasMission,  1549)
	MisResultCondition(NoRecord,  1549)
	MisResultCondition(HasFlag,  1549, 19 )
	MisResultAction(ClearMission,  1549 )
	MisResultAction(SetRecord,  1549  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 546)	
	TriggerAction( 1, AddNextFlag,  1549 , 10,10)
	RegCurTrigger(   15491 )



---------------------------------------------------------------------НкГАєЈµБИООс

	DefineMission( 5144, "Идеальное пиратское задание", 1550 )

	MisBeginTalk( "<t>Ваше второе задание.Достать для меня 2 Королевских меча" )------°¬БўїЛ
	MisBeginCondition(NoRecord, 1550 )
	MisBeginCondition(HasRecord, 1549 )
	MisBeginCondition(NoMission, 1550 )
	MisBeginAction(AddMission,  1550)
	MisBeginAction(AddTrigger,  15501, TE_GETITEM, 4893, 2 )----------------НхКТЕеЅЈ
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите 2 Королевских меча")
	MisNeed(MIS_NEED_ITEM, 4893, 2, 10, 2)

	MisResultTalk("<t>Отлично.")
	MisHelpTalk("<t>Спасибо. Я ищу этот меч в течение очень долгих лет")
	MisResultCondition(HasMission,  1550)
	MisResultCondition(NoRecord,  1550)
	MisResultCondition(HasItem, 4893, 2)
	MisResultAction(TakeItem, 4893, 2 )
	MisResultAction(ClearMission,  1550 )
	MisResultAction(SetRecord,  1550  )
	

	InitTrigger()
	TriggerCondition( 1, IsItem, 4893)	
	TriggerAction( 1, AddNextFlag,  1550 , 10,2)
	RegCurTrigger(   15501 )


---------------------------------------------------------------------НкГАєЈµБИООс

	DefineMission( 5145, "Идеальное пиратское задание", 1551 )

	MisBeginTalk( "<t>Ооо Сирены напали на мой корабль! Отомсти им!" )------°¬БўїЛ
	MisBeginCondition(NoRecord, 1551 )
	MisBeginCondition(HasRecord, 1550 )
	MisBeginCondition(NoMission, 1551 )
	MisBeginAction(AddMission,  1551)
	MisBeginAction(AddTrigger,  15511, TE_KILL, 606, 3 )----------------ЙоА¶єЈСэ
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 3 Глубоководных сирен")
	MisNeed(MIS_NEED_KILL,606,3, 10,3)

	MisResultTalk("<t>Никогда мне не лгите...")
	MisHelpTalk("<t>Никогда мне не лгите...")
	MisResultCondition(HasMission,  1551)
	MisResultCondition(NoRecord,  1551)
	MisResultCondition(HasFlag,  1551, 12 )
	MisResultAction(ClearMission,  1551 )
	MisResultAction(SetRecord,  1551  )
	

	InitTrigger()
	TriggerCondition( 1, IsMonster, 606)	
	TriggerAction( 1, AddNextFlag,  1551 , 10,3)
	RegCurTrigger(   15511 )

---------------------------------------------------------------------НкГАєЈµБИООс

	DefineMission( 5146, "Идеальное пиратское задание", 1552 )

	MisBeginTalk( "<t>Недавно я гулял по пляжу , и увидел красивые кристаллы. Я украл их...Знаете мне так неловко.Но думаю если мы уничтожим свидетелей..." )------°¬БўїЛ
	MisBeginCondition(NoRecord, 1552 )
	MisBeginCondition(HasRecord, 1551 )
	MisBeginCondition(NoMission, 1552 )
	MisBeginAction(AddMission,  1552)
	MisBeginAction(AddTrigger,  15521, TE_KILL, 589, 3 )----------------єЈСэ№­КЦ
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Убейте 3 Сирена-стрелок")
	MisNeed(MIS_NEED_KILL,589,3, 10,3)

	MisResultTalk("<t>Благодарю вас за проделанную заботу")
	MisHelpTalk("<t>Чего вы стоите?")
	MisResultCondition(HasMission,  1552)
	MisResultCondition(NoRecord,  1552)
	MisResultCondition(HasFlag,  1552, 12 )
	MisResultAction(ClearMission,  1552 )
	MisResultAction(SetRecord,  1552  )
	MisResultAction(AddExp1500000,1500000)
	MisResultAction(AddMoney,500000,500000)	
	MisResultAction(AddExpAndType,2,60000,60000)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 589)	
	TriggerAction( 1, AddNextFlag,  1552 , 10,3)
	RegCurTrigger(   15521 )

-------------------------------------------------------ГХµЧЅТПю------------АНВЧµПВнЛ№
	DefineMission( 5147, "Тайна разгадана", 1553 )

	MisBeginTalk( "<t>Отлично! Вы выполнили все требования для того что бы поговорить с Просветленным.Вот вам Камень Менга , отдайте его Просветленному." )
	MisBeginCondition(NoRecord,1553)
	MisBeginCondition(HasRecord, 1577)
	MisBeginCondition(NoMission, 1553 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------ГЙµВКЇ
	MisBeginAction(AddMission, 1553 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>Отнесите Камень Менгу Старику-предсказателю")
	MisHelpTalk("<t>Будте осторожнее")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ГХµЧЅТПю
	DefineMission( 5148, "Тайна разгадана", 1553,COMPLETE_SHOW )-------------№ЦЫЕТЇТЇ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Не беспокойте меня!")
	MisResultCondition(NoRecord, 1553)
	MisResultCondition(HasMission, 1553)
	MisResultCondition(HasItem, 2918, 1)------------ГЙµВКЇ
	MisResultAction(TakeItem, 2918, 1 )-----ГЙµВКЇ
	MisResultAction(ClearMission,1553)
	MisResultAction(SetRecord, 1553)
	MisResultAction(SetRecord, 1556)

-------------------------------------------------------ГХµЧЅТПю------------АЙДГ¶И
	DefineMission( 5149, "Тайна разгадана", 1554 )

	MisBeginTalk( "<t>Отлично! Вы выполнили все требования для того что бы поговорить с Просветленным.Вот вам Камень Менга, отдайте его Просветленному." )
	MisBeginCondition(NoRecord,1554)
	MisBeginCondition(HasRecord, 1548)
	MisBeginCondition(NoMission, 1554 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------ГЙµВКЇ
	MisBeginAction(AddMission, 1554 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>Отнесите Камень Менгу Старику-предсказателю")
	MisHelpTalk("<t>Будте осторожнее")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ГХµЧЅТПю
	DefineMission( 5150, "Тайна разгадана", 1554,COMPLETE_SHOW )-------------№ЦЫЕТЇТЇ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Не беспокойте меня!")
	MisResultCondition(NoRecord, 1554)
	MisResultCondition(HasMission, 1554)
	MisResultCondition(HasItem, 2918, 1)------------ГЙµВКЇ
	MisResultAction(TakeItem, 2918, 1 )-----ГЙµВКЇ
	MisResultAction(ClearMission,1554)
	MisResultAction(SetRecord, 1554)
	MisResultAction(SetRecord, 1556)

-------------------------------------------------------ГХµЧЅТПю------------°¬БўїЛ
	DefineMission( 5151, "Тайна разгадана", 1555 )

	MisBeginTalk( "<t>Отлично! Вы выполнили все требования для того что бы поговорить с Просветленным. Вот вам Камень Менга, отдайте его Просветленному." )
	MisBeginCondition(NoRecord,1555)
	MisBeginCondition(HasRecord, 1552)
	MisBeginCondition(NoMission, 1555 )
	MisBeginAction(GiveItem, 2918, 1, 4)		------------ГЙµВКЇ
	MisBeginAction(AddMission, 1555 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	MisBeginBagNeed(1)

	MisNeed(MIS_NEED_DESP, "<t>Отнесите Камень Менгу Старику-предсказателю")
	MisHelpTalk("<t>Будте осторожнее")
	MisResultCondition(AlwaysFailure)

	--------------------------------------------------------ГХµЧЅТПю
	DefineMission( 5152, "Тайна разгадана", 1555,COMPLETE_SHOW )-------------№ЦЫЕТЇТЇ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Не беспокойте меня!")
	MisResultCondition(NoRecord, 1555)
	MisResultCondition(HasMission, 1555)
	MisResultCondition(HasItem, 2918, 1)------------ГЙµВКЇ
	MisResultAction(TakeItem, 2918, 1 )-----ГЙµВКЇ
	MisResultAction(ClearMission,1555)
	MisResultAction(SetRecord, 1555)
	MisResultAction(SetRecord, 1556)

------------------------------------------------------АПРаГЗµДѕА·Ч------------№ЦЫЕТЇТЇ
	DefineMission( 5169, "Стариковский спор", 1557 )

	MisBeginTalk( "<t>Хм...поговорите с Бабушкой Донг (795, 363)" )
	MisBeginCondition(NoRecord,1557)
	MisBeginCondition(HasRecord, 1556)
	MisBeginCondition(NoMission, 1557 )
	MisBeginAction(AddMission, 1557 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Поговорите с Бабушкой Донг (795, 363)")
	MisHelpTalk("<t>Поговорите с Бабушкой Донг (795, 363)")
	MisResultCondition(AlwaysFailure)


	--------------------------------------------------------АПРаГЗµДѕА·Ч
	DefineMission( 5153, "Стариковский спор", 1557,COMPLETE_SHOW )-------------¶¬ґпГЧЖЕЖЕ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Кто спорит? Я спорю? Ха-ха. Скажите мне <rПривет> и ответьте на вопрос.")
	MisResultCondition(NoRecord, 1557)
	MisResultCondition(HasMission, 1557)
	MisResultAction(ClearMission,1557)
	MisResultAction(SetRecord, 1557)
	
---------------------------------------------------------------------АПМ«ЖЕµДЦЗ»Ы

	DefineMission( 5154, "Интеллект бабушки", 1561 )

	MisBeginTalk( "<t>Вы достаточно умен.Ответе еще на один вопрос!" )------¶¬ґпГЧЖЕЖЕ
	MisBeginCondition(NoRecord,1561)
	MisBeginCondition(HasRecord, 1558)
	MisBeginCondition(HasRecord, 1559)
	MisBeginCondition(NoMission, 1561 )
	MisBeginAction(AddMission, 1561 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Нажмите на <rЕще раз здравствуй> и ответьте на вопрос.")
	
	MisResultTalk("<t>Поразительно!")
	MisHelpTalk("<t>Мышление это признак мудрости.")
	MisResultCondition(NoRecord, 1561)
	MisResultCondition(HasMission, 1561)
	MisResultCondition(HasRecord, 1562)
	MisResultCondition(HasRecord, 1564)
	MisResultAction(ClearMission,1561)
	MisResultAction(SetRecord, 1561)
	

---------------------------------------------------------------------ЦОБЖґ«ИѕІЎ

	DefineMission( 5155, "Вылечи заразную болезнь", 1566 )-----¶¬ґпГЧЖЕЖЕ

	MisBeginTalk( "<t>Мне нужна Световая бомба 3 ур." )------¶¬ґпГЧЖЕЖЕ
	MisBeginCondition(NoRecord,1566)
	MisBeginCondition(HasRecord, 1558)
	MisBeginCondition(HasRecord, 1560)
	MisBeginCondition(NoMission, 1566 )
	MisBeginAction(AddMission, 1566 )
	MisBeginAction(AddTrigger,  15661, TE_GETITEM, 2743, 1 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Дайте бабушке Световую гранату 3 ур")
	MisNeed(MIS_NEED_ITEM,2743,1, 10, 1)

	MisResultTalk("<t>Спасибо.")
	MisHelpTalk("<t>Это наказ!")
	MisResultCondition(NoRecord, 1566)
	MisResultCondition(HasMission, 1566)
	MisResultCondition(HasItem, 2743, 1)
	MisResultAction(TakeItem,  2743, 1 )
	MisResultAction(ClearMission,1566)
	MisResultAction(SetRecord, 1566)
	MisResultAction(SetRecord, 1559)


	InitTrigger()
	TriggerCondition( 1, IsItem,2743)	
	TriggerAction( 1, AddNextFlag, 1566, 10, 1 )
	RegCurTrigger( 15661 )
---------------------------------------------------------------------КЦ¶ЇЦОБЖ·Ё

	DefineMission( 5156, "Исцеление руками", 1567 )-----¶¬ґпГЧЖЕЖЕ

	
	MisBeginTalk( "<t>Ха-ха. Мне нужна граната!" )------¶¬ґпГЧЖЕЖЕ
	MisBeginCondition(NoRecord,1567)
	MisBeginCondition(HasRecord, 1562)
	MisBeginCondition(HasRecord, 1565)
	MisBeginCondition(HasRecord, 1561)
	MisBeginCondition(NoMission, 1567 )
	MisBeginAction(AddMission, 1567 )
	MisBeginAction(AddTrigger,  15671, TE_GETITEM, 2744, 1 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите бабушке 1 гранату 3 уровня")
	MisNeed(MIS_NEED_ITEM,2744,1, 10, 1)

	MisResultTalk("<t>Спасибо.")
	MisHelpTalk("<t>Это наказ!")
	MisResultCondition(NoRecord, 1567)
	MisResultCondition(HasMission, 1567)
	MisResultCondition(HasItem, 2744, 1)
	MisResultAction(TakeItem,  2744, 1 )
	MisResultAction(ClearMission,1567)
	MisResultAction(SetRecord, 1567)
	


	InitTrigger()
	TriggerCondition( 1, IsItem,2744)	
	TriggerAction( 1, AddNextFlag, 1567, 10, 1 )
	RegCurTrigger( 15671 )



-------------------------------------------------------ХжАнКШ»¤ХЯ-----------------¶¬ґпГЧЖЕЖЕ
	DefineMission( 5157, "Страж правды", 1568 )

	MisBeginTalk( "<t>Думаю вам пора поговорить со Стариком-предсказателем." )
	MisBeginCondition(NoRecord,1568)
	MisBeginCondition(HasRecord, 1561)
	MisBeginCondition(HasRecord, 1564)
	MisBeginCondition(NoMission, 1568 )
	MisBeginAction(AddMission, 1568 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	
	MisNeed(MIS_NEED_DESP, "<t>Поговорите со Стариком-предсказателем.")
	MisHelpTalk("<t>Ну же! Идите")
	
	MisResultCondition(AlwaysFailure)

	-------------------------------------------------------ХжАнКШ»¤ХЯ
	DefineMission( 5158, "Страж правды", 1568,COMPLETE_SHOW )-------------№ЦЫЕ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t>Вы утверждаете что Бабушка - Донг признала поражение? Вы не шутите? И в правду такая сила должна принадлежать, такая сила!")
	MisResultCondition(NoRecord, 1568)
	MisResultCondition(HasMission, 1568)
	MisResultAction(ClearMission,1568)
	MisResultAction(SetRecord, 1568)
	MisResultAction(SetRecord, 1571)


	-------------------------------------------------------ХжАнКШ»¤ХЯ-----------------¶¬ґпГЧЖЕЖЕ
	DefineMission( 5159, "Страж правды", 1569 )

	MisBeginTalk( "<t>Думаю вам пора поговорить со Стариком-предсказателем." )
	MisBeginCondition(NoRecord,1569)
	MisBeginCondition(HasRecord, 1567)
	MisBeginCondition(NoMission, 1569 )
	MisBeginAction(AddMission, 1569 )
	MisCancelAction(SystemNotice, "Квест не может быть удален")
	
	MisNeed(MIS_NEED_DESP, "<t>Поговорите со Стариком-предсказателем.")
	MisHelpTalk("<t>Ну же! Идите")
	
	MisResultCondition(AlwaysFailure)


--------------------------------------------------------ХжАнКШ»¤ХЯ

	DefineMission( 5160, "Страж правды", 1569,COMPLETE_SHOW )-------------№ЦЫЕ
	
	MisBeginCondition(AlwaysFailure )
	
	MisResultTalk("<t> Вы утверждаете что Бабушка - Донг признала свое поражение?  Вы не врете? И вправду эта сила должна принадлежать вам!")
	MisResultCondition(NoRecord, 1569)
	MisResultCondition(HasMission, 1569)
	MisResultAction(ClearMission,1569)
	MisResultAction(SetRecord, 1569)
	MisResultAction(SetRecord, 1571)

	MisResultAction(AddExp,300000,300000)
	MisResultAction(AddMoney,100000,100000)	
	MisResultAction(AddExpAndType,2,20000,20000)
-----------------------------------------------------ЙсГШµДЦдУп

	DefineMission( 5161, "Таинственное проклятие",1570 )

	MisBeginTalk( "<t>Принесите пароль BC" )
	MisBeginCondition(NoRecord, 1570)
	MisBeginCondition(HasRecord, 1571)
	MisBeginCondition(NoMission,1570 )
	MisBeginAction(AddMission, 1570)
	MisBeginAction(AddTrigger, 15701, TE_GETITEM, 2408, 1 )		--їЪБоAB
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "<t>Принесите пароль BC")
	MisNeed(MIS_NEED_ITEM,2408,1, 10, 1)
	
	MisResultTalk("<t>Спешите!")
	MisHelpTalk("<t>Говорят солдаты с паролями часто появляются у базы Флота")
	MisResultCondition(HasMission, 1570)
	MisResultCondition(NoRecord,1570)
	MisResultCondition(HasItem,2408,1 )
	MisResultAction(TakeItem, 2408,1 )
	MisResultAction(ClearMission, 1570)
	MisResultAction(SetRecord,1570)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2408)	
	TriggerAction( 1, AddNextFlag,  1570, 10,1)
	RegCurTrigger( 15701 )

----------------------------------------------------ЙсГШµДЦдУп

	DefineMission( 5162, "Таинственное проклятие",1572 )

	MisBeginTalk( "<t>Принесите пароль CD" )
	MisBeginCondition(NoRecord, 1572)
	MisBeginCondition(HasRecord, 1570)
	MisBeginCondition(NoMission,1572 )
	MisBeginAction(AddMission, 1572)
	MisBeginAction(AddTrigger, 15721, TE_GETITEM, 2409, 1 )		--їЪБоBC
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите пароль CD")
	MisNeed(MIS_NEED_ITEM,2409,1, 10, 1)
	
	MisResultTalk("<t>Спешите!")
	MisHelpTalk("<t>Говорят солдаты с паролями часто появляются у базы Флота")
	MisResultCondition(HasMission, 1572)
	MisResultCondition(NoRecord,1572)
	MisResultCondition(HasItem,2409,1 )
	MisResultAction(TakeItem, 2409,1 )
	MisResultAction(ClearMission, 1572)
	MisResultAction(SetRecord,1572)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2409)	
	TriggerAction( 1, AddNextFlag,  1572, 10,1)
	RegCurTrigger( 15721 )


	----------------------------------------------------ЙсГШµДЦдУп

	DefineMission( 5163, "Таинственное проклятие",1573 )

	MisBeginTalk( "<t>Принесите пароль CD" )
	MisBeginCondition(NoRecord, 1573)
	MisBeginCondition(HasRecord, 1572)
	MisBeginCondition(NoMission,1573 )
	MisBeginAction(AddMission, 1573)
	MisBeginAction(AddTrigger, 15731, TE_GETITEM, 2410, 1 )		--їЪБоCD
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите пароль CD")
	MisNeed(MIS_NEED_ITEM,2410,1, 10, 1)
	
	MisResultTalk("<t>Спешите!")
	MisHelpTalk("<t>Говорят солдаты с паролями часто появляются у базы Флота")
	MisResultCondition(HasMission, 1573)
	MisResultCondition(NoRecord,1573)
	MisResultCondition(HasItem,2410,1 )
	MisResultAction(TakeItem, 2410,1 )
	MisResultAction(ClearMission, 1573)
	MisResultAction(SetRecord,1573)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2410)	
	TriggerAction( 1, AddNextFlag,  1573, 10,1)
	RegCurTrigger( 15731 )


----------------------------------------------------ЙсГШµДЦдУп

	DefineMission( 5164, "Таинственное проклятие",1574 )

	MisBeginTalk( "<t>Говорят солдаты с паролями часто появляются у базы Флота" )
	MisBeginCondition(NoRecord, 1574)
	MisBeginCondition(HasRecord, 1573)
	MisBeginCondition(NoMission,1574 )
	MisBeginAction(AddMission, 1574)
	MisBeginAction(AddTrigger, 15741, TE_GETITEM, 2411, 1 )		--їЪБоDE
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите пароль DE")
	MisNeed(MIS_NEED_ITEM,2411,1, 10, 1)
	
	MisResultTalk("<t>Спешите!")
	MisHelpTalk("<t>Говорят солдаты с паролями часто появляются у базы Флота")
	MisResultCondition(HasMission, 1574)
	MisResultCondition(NoRecord,1574)
	MisResultCondition(HasItem,2411,1 )
	MisResultAction(TakeItem, 2411,1 )
	MisResultAction(ClearMission, 1574)
	MisResultAction(SetRecord,1574)
	
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2411)	
	TriggerAction( 1, AddNextFlag,  1574, 10,1)
	RegCurTrigger( 15741 )


----------------------------------------------------ЙсГШµДЦдУп

	DefineMission( 5165, "Таинственное проклятие",1575 )

	MisBeginTalk( "<t>Принесите пароль EF" )
	MisBeginCondition(NoRecord, 1575)
	MisBeginCondition(HasRecord, 1574)
	MisBeginCondition(NoMission,1575 )
	MisBeginAction(AddMission, 1575)
	MisBeginAction(AddTrigger, 15751, TE_GETITEM, 2412, 1 )		--їЪБоEF
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Принесите пароль EF")
	MisNeed(MIS_NEED_ITEM,2412,1, 10, 1)
	
	MisResultTalk("<t>Отлично! Я сообщу вам о результатах")
	MisHelpTalk("<t>Говорят солдаты с паролями часто появляются у базы Флота ")
	MisResultCondition(HasMission, 1575)
	MisResultCondition(NoRecord,1575)
	MisResultCondition(HasItem,2412,1 )
	MisResultAction(TakeItem, 2412,1 )
	MisResultAction(ClearMission, 1575)
	MisResultAction(SetRecord,1575)
	MisResultAction(AddExp,1500000,1500000)
	MisResultAction(AddMoney,400000,400000)	
	MisResultAction(AddExpAndType,2,80000,80000)
	
	InitTrigger()
	TriggerCondition( 1, IsItem, 2412)	
	TriggerAction( 1, AddNextFlag,  1575, 10,1)
	RegCurTrigger( 15751 )


----------------------------------------ЦдУпµДСРѕїЅб№ы
	DefineMission(5166,"Результат разработки печати",1576)
	MisBeginTalk("<t>Я сообщу вам о результатах")
	MisBeginCondition(NoRecord,1576)
	MisBeginCondition(NoMission, 1576)
	MisBeginCondition(HasRecord, 1575)
	MisBeginAction(AddMission, 1576)
	MisCancelAction(SystemNotice, "Квест не может быть удален")

	MisNeed(MIS_NEED_DESP, "Подождите пока Старик расскажет вам об результатах")
	MisHelpTalk("<t>Пожалуйста, будте терпеливы")
	MisResultTalk("<t>Эти пароли на самом деле не имеют ничего общего с проклятием. Я был обманут....")
	MisResultCondition(HasRecord, 1576)
	MisResultCondition(HasMission, 1576)
	MisResultAction(ClearMission, 1576 )
	MisResultAction(SetRecord, 1576 )

--Секрет огненного шара
	DefineMission(6300, "Секрет огненного шара",1620)
	MisBeginTalk("<t>Пару лет назад, мы все видели огромный огненый шар, который рухнул на северо-востоке океана. Он вызвал цунами, потрясшее весь мир!<n><t>Мне кажется - это какой-то знак...<n><t>Хотелось бы выяснить, что это значит, но я уже не так молод, а это довольно тяжко... Да, вот еще что. Я слышал, что некий - <rПьянчужка - Антоний> (2222,2889) знает что-то об этом, так что лучше спроси у него. Найти его можно в <bБаре Аргента>...<n><t>Ах да, он та еще пьянь. Чтобы с ним нормально поговорить, надо бы ему протрезвиться.")
	MisBeginCondition(NoRecord, 1636)
	MisBeginCondition(NoRecord, 1620)
	MisBeginCondition(NoMission,1620)
	MisBeginCondition(LvCheck, ">",84)
	MisBeginAction(AddMission, 1620)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Отыщи <rПьянчужку - Антония> (2222,2889) в <bБаре Аргента>")

	MisHelpTalk("<t>Эту пьянь знает весь город, но не думаю, что он действительно что-то знает - весь день проводит в баре. Синяк...")
	MisResultCondition(AlwaysFailure)

--Секрет огненного шара
	DefineMission(6301, "Секрет огненного шара",1620, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Хррр... места... психи... ты ваще кто? Места... Скотт? Цунами? Есть девичья фамилия? Эээ...че я ваще сказать-то тебе хотел?")
	MisResultCondition(NoRecord, 1620)
	MisResultCondition(HasMission, 1620)
	MisResultAction(ClearMission, 1620)
	MisResultAction(SetRecord, 1620)
	MisResultAction(AddExpAndType,2,200,200)
	MisResultAction(GiveNpcMission, 6302, "Пьянчужка - Антоний", 7)

--В поисках манящих искр
	DefineMission(6302, "В поисках манящих искр",1621)

	MisBeginTalk("<t>Ты меня утомляешь... Лан, забудь, если поможешь мне - очень занятому человеку, я расскажу тебе все, что знаю. Я тут слышал, что Принц-тритон - Хассан пытался сварить новый... кхм... Зачем я это рассказываю? Это не твое дело? Кароче, заткнись и слушай! Кажется это отличная штука и ты должен достать мне её. В качестве награды, я расскажу тебе все что знаю о таинственном огненом шаре. Найти <rПринца-тритона - Хассана> (1254,3491) можно в пустыне справа от <bШайтана>")
	MisBeginCondition(NoRecord, 1621)
	MisBeginCondition(NoMission,1621)
	MisBeginCondition(NoRecord, 1622)
	MisBeginCondition(HasRecord, 1620)
	MisBeginAction(AddMission, 1621)
	MisBeginAction(AddTrigger,16211, TE_GETITEM, 6206, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisBeginAction(SetFlag, 1621, 1)
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t><rПьянчужка - Антоний> (2222,2889) просит отыскать <rПринца-тритона - Хассана> (1254,3491) и принести ему <pМанящих искр>.")
	MisNeed(MIS_NEED_ITEM, 6206, 1, 10, 1)

	MisHelpTalk("<t>Ты не хочешь идти... Ты не хочешь познать тайну?")
	MisResultTalk("<t>О Да Да, превосходно. Эмм, хорошо, я тут слышал кое-что однажды ночью о 10 сладких восхитительных напитках...")
	MisResultCondition(HasMission, 1621)
	MisResultCondition(NoRecord,1621)
	MisResultCondition(HasItem, 6206, 1)
	MisResultAction(TakeItem, 6206, 1)
	MisResultAction(ClearMission, 1621)
	MisResultAction(SetRecord, 1621)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,250,250)
	MisResultAction(GiveNpcMission, 6304, "Пьянчужка - Антоний", 8) 

	InitTrigger()
	TriggerCondition(1, IsItem, 6206)
	TriggerAction(1, AddNextFlag, 1621, 10, 1)
	RegCurTrigger(16211)

--Изготовление манящих искр
	DefineMission(6303, "Изготовление манящих искр",1622)
	MisBeginTalk("<t>Манящих искр? Ахаха, ты шутишь? У меня этого нет!<n><t>Хм... ты выглядишь довольно взволнованным, я помогу тебе. По существу, у меня практически все готово, но не хватает нескольких важных ингридиентов. Я не могу находится долгое время на суше, поэтому нет возможности углубляться внутрь материка, как обычные люди...<n><t>Так, ты мне помогаешь с ингридиентами, а я помогаю тебе с твоим напитком. Записывай: 1 <bМясо песчаного краба>; 10 <bЧерной краски>; 20 <bПобегов кактуса>; 5 <bфлаконов>.<n><t><bМясо песчаного краба> можно достать с <rКраба> (1269,3250), <bЧерную краску> с <rСвирепого рубинового дельфина> (973,2358), <bПобеги кактуса> с <rЗлободыни> (1027,3551),а <bФлаконы> с <rЧокнутой овцы> (1968,2697).")

	MisBeginCondition(NoRecord, 1622)
	MisBeginCondition(NoMission,1622)
	MisBeginCondition(HasMission, 1621)
	MisBeginCondition(NoRecord, 1621)
	MisBeginAction(AddMission, 1622)
	MisBeginAction(SetFlag, 1622, 1)

	MisBeginAction(AddTrigger, 16221, TE_GETITEM, 4890, 1)
	MisBeginAction(AddTrigger, 16222, TE_GETITEM, 4606, 10)
	MisBeginAction(AddTrigger, 16223, TE_GETITEM, 1691, 20)
	MisBeginAction(AddTrigger, 16224, TE_GETITEM, 1779, 5)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Помоги <rПринцу-тритону - Хассану> (1254,3491) собрать необходимые ингридиенты.")

	MisNeed(MIS_NEED_ITEM, 4890, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 4606, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 1691, 20, 40, 20)
	MisNeed(MIS_NEED_ITEM, 1779, 5, 70, 5)

	MisHelpTalk("<t>Еще не все? Слишком уж медленно, но я то никуда не тороплюсь - русалки живут о-о-очень долго, плюс, я довольно терпеливый, чего не скажешь о тебе!?")
	MisResultTalk("<t>>Ога, тут все! Кажется, действительно все! Отлично, вот то что нужно... Cовершенство... Даже выйдет 2 дозы. Надеюсь, что Вы донесете свою в целости и сохранности! Я никогда не забуду то что Вы сделали для меня.")
	MisBeginCondition(NoRecord, 1622)
	MisResultCondition(HasMission, 1622)
	MisResultCondition(HasItem, 4890, 1)
	MisResultCondition(HasItem, 4606, 10)
	MisResultCondition(HasItem, 1691, 20)
	MisResultCondition(HasItem, 1779, 5)

	MisResultAction(TakeItem, 4890, 1)
	MisResultAction(TakeItem, 4606, 10)
	MisResultAction(TakeItem, 1691, 20)
	MisResultAction(TakeItem, 1779, 5)

	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 6206, 1, 4)
	MisResultAction(ClearMission, 1622)
	MisResultAction(SetRecord, 1622)
	MisResultAction(AddMoney,20000,20000)

	InitTrigger()
	TriggerCondition(1, IsItem, 4890)
	TriggerAction(1, AddNextFlag, 1622, 10, 1)
	RegCurTrigger(16221)

	InitTrigger()
	TriggerCondition(1, IsItem, 4606)
	TriggerAction(1, AddNextFlag, 1622, 20, 10)
	RegCurTrigger(16222)

	InitTrigger()
	TriggerCondition(1, IsItem, 1691)
	TriggerAction(1, AddNextFlag, 1622, 40, 20)
	RegCurTrigger(16223)

	InitTrigger()
	TriggerCondition(1, IsItem, 1779)
	TriggerAction(1, AddNextFlag, 1622, 70, 5)
	RegCurTrigger(16224)


--Отправляйся в город Шайтан и наведи справки
	DefineMission(6304, "Отправляйся в город Шайтан и наведи справки",1623)

	MisBeginTalk ( "<t>*напевает песню <p'Do not worry, be happy'>*<n><t>А теперь я все тебе расскажу! В общем так, каждый знает, что огненый шар и легендарный остров Зимы... Что? Ты не знаешь легеду о. Зимы? Ты, ты, ты... ах ты негодяй!<n><t>Ты выводишь меня из себя.. Аррр..!<n><t>Так... забудь! Отправляйся в <bШайтан>, отыщи <rГрузчика - Али Ку> (832,3707) - он тебе все расскажет.")
	MisBeginCondition(NoRecord, 1623)
	MisBeginCondition(NoMission,1623)
	MisBeginCondition(HasRecord, 1621)
	MisBeginAction(AddMission, 1623)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Отправиться в <bШайтан>, найти <rГрузчика - Али Ку> (832,3707) и расспросить о <rОстрове Зимы>")

	MisHelpTalk ( "<t>Еще не ходил туда? А че встал тут тогда?! Может выпьем?")
	MisResultCondition(AlwaysFailure)

--Отправляйся в город Шайтан и наведи справки
	DefineMission(6305, "Отправляйся в город Шайтан и наведи справки",1623, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Тебя прислала эта пьянь? Но я знаю не так уж и много...")
	MisResultCondition(NoRecord, 1623)
	MisResultCondition(HasMission, 1623)
	MisResultAction(ClearMission, 1623)
	MisResultAction(SetRecord, 1623)
	MisResultAction(AddExpAndType,2,300,300)
	MisResultAction(GiveNpcMission, 6306, "Грузчик - Али Ку", 2)

--Секрет острова Зимы
	DefineMission(6306, "Секрет острова Зимы",1624)
	MisBeginTalk("<t>Действительно есть связь между появлением огненного шара и зимы на том острове. Но в любом случае, связь это не настолько сильна, ибо все под властью нашей Богини.<n><t>Я думаю, что тебе также стоит знать, что я верующий, но многие документы остались в старом храме. Если начнешь поиск там, то возможно получишь ответ. Спроси <rБлагочестивую жрицу - Аду> (862,3303), она знает побольше меня.")
	MisBeginCondition(NoRecord, 1624)
	MisBeginCondition(NoMission,1624)
	MisBeginCondition(HasRecord, 1623)
	MisBeginAction(AddMission, 1624)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Отправляйся на север в <bстарый город> и найди <rБлагочестивую жрицу - Аду> (862,3303), она тебе все расскажет.")

	MisHelpTalk("<t>Вы намереваетесь спросить о прошлом? Атеизм никогда не вынуждал людей изменить свои сокровенные мысли.")
	MisResultCondition(AlwaysFailure)

--Секрет острова Зимы
	DefineMission(6307, "Секрет острова Зимы",1624, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Остров Зимы??? Подождите немного. Я закончу со своими делами и примусь за вас.")
	MisResultCondition(NoRecord, 1624)
	MisResultCondition(HasMission, 1624)
	MisResultAction(ClearMission, 1624)
	MisResultAction(SetRecord, 1624)
	MisResultAction(AddExpAndType,2,350,350)
	MisResultAction(GiveNpcMission, 6308, "Благочестивая жрица - Ада",15)

--Загадочный Вилль с Севера
	DefineMission(6308, "Загадочный Вилль с Севера",1625)
	MisBeginTalk("<t>Вы слышале о Вилле? Он супруг Кары, он наш мир, Бог-Отец.<n><t>Десять тысяч лет назад, без какой либо причины он покинул наш мир и вернулся в свой родной дом, после этого все изменилось. Богиня изменилась... Ах... Простите, забыла...<n><t>Вот что, есть мудрец, который обладает вещью, что может помочь мне вспомнить. Я слышала, что он находится в <bМире Демонов> и звать его <rЭдвард> (266,230).")
	MisBeginCondition(NoRecord, 1625)
	MisBeginCondition(NoMission,1625)
	MisBeginCondition(NoRecord, 1626)
	MisBeginCondition(HasRecord, 1624)
	MisBeginAction(AddMission, 1625)
	MisBeginAction(AddTrigger,16251, TE_GETITEM,4301, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Найди <rЭдварда> (266,230) в <bМире Демонов> и принесите от него <pПосох разума> для <rБлагочестивой жрицы - Ады> (862,3303).")
	MisNeed(MIS_NEED_ITEM, 4301, 1, 10, 1)

	MisHelpTalk("<t>Мир Демонов - прекрасное место.")
	MisResultTalk("<t>Принесли? Очень хорошо, теперь я могу продолжить..")
	MisResultCondition(HasMission, 1625)
	MisResultCondition(NoRecord,1625)
	MisResultCondition(HasItem, 4301, 1)
	MisResultAction(TakeItem, 4301, 1)
	MisResultAction(ClearMission, 1625)
	MisResultAction(SetRecord, 1625)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultAction(GiveNpcMission, 6310, "Благочестивая жрица - Ада",16)

	InitTrigger()
	TriggerCondition(1, IsItem, 4301)
	TriggerAction(1, AddNextFlag, 1625, 10, 1)
	RegCurTrigger(16251)

--Мятежный мир демонов
	DefineMission(6309, "Мятежный мир демонов",1626)
	MisBeginTalk("<t>Давно не виделись? Ты пришел за посохом? Да, он есть у меня, но к сожалению, просто так я его тебе не отдам.<n><t>Мир демонов кишит монстрами, которые в последнее время стали меня беспокоить. Поможешь мне убить 50 <bПроклятых черных рысей> и я помогу тебе?!")
	MisBeginCondition(NoRecord, 1626)
	MisBeginCondition(NoMission,1626)
	MisBeginCondition(HasMission, 1625)
	MisBeginCondition(NoRecord, 1625)
	MisBeginAction(AddMission, 1626)

	MisBeginAction(AddTrigger, 16261, TE_KILL, 559, 50)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Убей 50 <bПроклятых черных рысей> для <rЭдварда> (266,230)")

	MisNeed(MIS_NEED_KILL, 559, 50, 10, 50)

	MisHelpTalk("<t>От монстров проблем больше, чем от...от природных катаклизмов?!")
	MisResultTalk("<t>Спасибо тебе за помощь. Вот тебе мой подарок... Чувствую себя Дедом Морозом!")

	MisBeginCondition(NoRecord, 1626)
	MisResultCondition(HasMission, 1626)
	MisResultCondition(HasFlag, 1626, 59)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4301, 1, 4)
	MisResultAction(ClearMission, 1626)
	MisResultAction(SetRecord, 1626)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,450,450)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsMonster, 559 )
	TriggerAction( 1, AddNextFlag, 1626, 10, 50 )
	RegCurTrigger( 16261 )

--Местонахождение Вилля с Севера 1
	DefineMission(6310, "Местонахождение Вилля с Севера 1",1627)
	MisBeginTalk("<t>Итак...<n><t>Богиня разгневалась, в результате чего земля Шайтана откололся от материка Ганы, старый город занесло песком; Образовались Карибские острова, острова четырех сезонов, мир демонов. Из-за возвращения Вилля к Отцу-Создателю появился огненый шар, как эмоциональная субстанция переживаний Богини...<n><t>О местонахождении Вилля спроси у <rКапитана Джека> (1672,3777), он на <bострове Канареек>.")
	MisBeginCondition(NoRecord, 1627)
	MisBeginCondition(NoMission,1627)
	MisBeginCondition(HasRecord, 1625)
	MisBeginAction(AddMission, 1627)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Отправляйся на <bостров Канареек>, найди <rКапитана Джека> (1672,3777) и выясни всё о местоположение Вилля.")

	MisHelpTalk("<t>Вилль - Отец-Основатель... Он среди людей?")
	MisResultCondition(AlwaysFailure)

--Местонахождение Вилля с Севера 1
	DefineMission(6311, "Местонахождение Вилля с Севера 1",1627, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Ты от жрицы? Тут нет Вилля? Теперь я в этом убежден.")
	MisResultCondition(NoRecord, 1627)
	MisResultCondition(HasMission, 1627)
	MisResultAction(ClearMission, 1627)
	MisResultAction(SetRecord, 1627)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6312, "Капитан Джек", 17)

--Местонахождение Вилля с Севера 2
	DefineMission(6312, "Местонахождение Вилля с Севера 2",1628)

	MisBeginTalk("<t>Я вчера вернулся с Зимних островов... Что я могу сказать... Они особенные... Каждый по-своему. Я сильно сомневаюсь, что где-то есть место, похожее на это...<n><t>Вилль должен быть где-то на своем острове около озера у основной горной цепи. Но остров очень опасен.<n><t>Думаю <rПират Джереми> (2362,657) сможет тебе чем-нибудь помочь. Ступай к нему.")
	MisBeginCondition(NoRecord, 1628)
	MisBeginCondition(NoMission,1628)
	MisBeginCondition(HasRecord, 1627)
	MisBeginAction(AddMission, 1628)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>В море, на острове, покрытом снегом и льдом, отыщи <rПирата Джереми> (2362,657)")

	MisHelpTalk("<t>Остров Зимы особенный... Хех... О нем ходит огромное количество легенд.")
	MisResultCondition(AlwaysFailure)

--Местонахождение Вилля с Севера 2
	DefineMission(6313, "Местонахождение Вилля с Севера 2",1628, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Хаха, подозреваю, что тебя прислал ко мне малыш Джек!")
	MisResultCondition(NoRecord, 1628)
	MisResultCondition(HasMission, 1628)
	MisResultAction(ClearMission, 1628)
	MisResultAction(SetRecord, 1628)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6314, "Пират Джереми", 7)

--Проблема Джереми
	DefineMission(6314, "Проблема Джереми",1629)
	MisBeginTalk("<t>Ужасное настроение, косточки уже не те, а еще полно желающих начистить тебе рыло... Хе-хе, а ты выглядишь слегка напуганным, маленький сопляк.<n><t>Могу помочь тебе, если принесешь мне 20 <bЭльфийских фруктов>. Я расскажу тебе как попасть на Зимний остров!")
	MisBeginCondition(NoRecord, 1629)
	MisBeginCondition(NoMission,1629)
	MisBeginCondition(HasRecord, 1628)
	MisBeginAction(AddMission, 1629)
	MisBeginAction(AddTrigger,16291, TE_GETITEM,3116, 20)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Принеси <rПирату Джереми> (2362,657) 20 <bЭльфийских фруктов> и он расскажет тебе как попасть на остров Зимы.")
	MisNeed(MIS_NEED_ITEM, 3116, 20, 10, 20)

	MisHelpTalk("<t>Говорят, что Зимние острова манят и манят...")
	MisResultTalk("<t>Хорошо, хорошо... Очень хорошо! Огромное тебе спасибо!")
	MisResultCondition(HasMission, 1629)
	MisResultCondition(NoRecord,1629)
	MisResultCondition(HasItem, 3116, 20)
	MisResultAction(TakeItem, 3116, 20)
	MisResultAction(ClearMission, 1629)
	MisResultAction(SetRecord, 1629)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(GiveNpcMission, 6315, "Пират Джереми", 8)

	InitTrigger()
	TriggerCondition(1, IsItem, 3116)
	TriggerAction(1, AddNextFlag, 1629, 10, 20)
	RegCurTrigger(16291)

--Посылка Джереми
	DefineMission(6315, "Посылка Джереми",1630)
	MisBeginTalk("<t>Держи посылочку. Отнесешь её <rМонарху Ледыни - Масу> (1346,451). Он тебе расскажет, что делать дальше.")
	MisBeginCondition(NoRecord, 1630)
	MisBeginCondition(NoMission,1630)
	MisBeginCondition(HasRecord, 1629)
	MisBeginAction(AddMission, 1630)
	MisBeginAction(GiveItem, 6207, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Доставь <bПосылку Джереми> <rМонарху Ледыни - Масу> (1346,451).")

	MisHelpTalk("<t>тправляйся скорее, поторопись!")
	MisResultCondition(AlwaysFailure)

--Посылка Джереми
	DefineMission(6316, "Посылка Джереми",1630, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t><bПосылка Джереми>?<n><t>Так, понятно... Хм... замечательно.")
	MisResultCondition(NoRecord, 1630)
	MisResultCondition(HasMission, 1630)
	MisResultCondition(HasItem, 6207, 1)
	MisResultAction(TakeItem, 6207, 1)
	MisResultAction(ClearMission, 1630)
	MisResultAction(SetRecord, 1630)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6317, "Монарх Ледыни - Мас", 17)

--Путь в Весноград
	DefineMission(6317, "Путь в Весноград",1631)
	MisBeginTalk("<t>Есть еще желающий отправится на остров Зимы... Хм... Он очень опасен...<n><t>если ты решил умереть, я не стану тебя останавливать, хотя... Ты в любом случае умрешь... Когда-нибудь<n><t>Ты уверен, что готов? Хорошо... Отправляйся в <bВесноград> и возьми с собой это украшение! <rДевушка - Туман> (3241,2533) моя подруга. Отдай ей это украшение!")
	MisBeginCondition(NoRecord, 1631)
	MisBeginCondition(NoMission,1631)
	MisBeginCondition(HasRecord, 1630)
	MisBeginAction(AddMission, 1631)
	MisBeginAction(GiveItem, 6208, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Встреться в <bВеснограде> c <rДевушкой - Туман> (3241,2533)")

	MisHelpTalk("<t>Шевелись!!!")
	MisResultCondition(AlwaysFailure)

--Путь в Весноград
	DefineMission(6318, "Путь в Весноград",1631, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Боже, что это?!")
	MisResultCondition(NoRecord, 1631)
	MisResultCondition(HasMission, 1631)
	MisResultCondition(HasItem, 6208, 1)
	MisResultAction(TakeItem, 6208, 1)
	MisResultAction(ClearMission, 1631)
	MisResultAction(SetRecord, 1631) 
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6319, "Девушка - Туман", 4)

--Юность - Зависть Тумана
	DefineMission(6319, "Юность - Зависть Тумана",1632)
	MisResultTalk("<t>Хорошо, этот <rЮноша - Облако>(3275,2467)... Просто невыносим!<n><t>Последнйи раз мы путешествовали в турне по Осени! Я задавала ему кучу вопросов, а он игнорировал! Подлец! Просто негодяй!<n><t>Но все же, если найдешь его, попроси его помочь мне хотя бы сейчас!")
	MisBeginCondition(NoRecord, 1632)
	MisBeginCondition(NoMission,1632)
	MisBeginCondition(HasRecord, 1631)
	MisBeginAction(AddMission, 1632)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Отыщи <rЮношу - Облако>(3275,2467) по просьбе <rДевушки - Туман>(3241,2533).")

	MisHelpTalk("<t>Как ты мог?! Ты бяк!!!")
	MisResultCondition(AlwaysFailure)

--Юность - Зависть Тумана
	DefineMission(6320, "Юность - Зависть Тумана",1632, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>У меня есть для неё всего несколько слов...")
	MisResultCondition(NoRecord, 1632)
	MisResultCondition(HasMission, 1632)
	MisResultAction(ClearMission, 1632)
	MisResultAction(SetRecord, 1632)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6321, "Юноша - Облако", 6)

--Юность - Проблема Облака
	DefineMission(6321, "Юность - Проблема Облака",1633)

	MisBeginTalk("<t>Мы прогуливались по острову осени, как вдруг неожиданно появилась Странница. Я попытался узнать, что происходит, но не мог связать и двух слов, и ощущение было, как будто в рот воды набрал. Я не мог стоять, я не мог понять, что произошло.<n><t>Что? Ты ищешь <rСтранницу> (2423,3186)? Я не хочу подвергать себя опасности! Я расскажу где ее найти, но далее - это уже твои проблемы.<n><t>Ищи её на <bострове Осени> рядом с таинственным магическим кругом.")
	MisBeginCondition(NoRecord, 1633)
	MisBeginCondition(NoMission,1633)
	MisBeginCondition(HasRecord, 1632)
	MisBeginAction(AddMission, 1633)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Отыщи <rСтранницу>(2423,3186) на <bострове Осени>.")

	MisHelpTalk("<t>Этот день никогда не кончится.")
	MisResultCondition(AlwaysFailure)

--Юность - Проблема Облака
	DefineMission(6322, "Юность - Проблема Облака",1633, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Может поговорим?")
	MisResultCondition(NoRecord, 1633)
	MisResultCondition(HasMission, 1633)
	MisResultAction(ClearMission, 1633)
	MisResultAction(SetRecord, 1633)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6323, "Странница", 2)

--Просьба странницы
	DefineMission(6323, "Просьба странницы",1634)

	MisBeginTalk("<t>Загадочное место... Очень жаль, я как будто в астрале... Ты пришел ко мне не просто так... Что случилось? Автобусный тур №75 по Осени уже стартовал..<n><t>Хм...<n><t>Не нужны экскурсии? Хочешь найти кое-кого? Судя по твоей истории, ты проделал долгий путь... Но, я расскажу тебе все, только если поможешь мне!")
	MisBeginCondition(NoRecord, 1634)
	MisBeginCondition(NoMission,1634)
	MisBeginCondition(HasRecord, 1633)
	MisBeginAction(AddMission, 1634)

	MisBeginAction(AddTrigger, 16341, TE_KILL, 734, 25)
	MisBeginAction(AddTrigger, 16342, TE_KILL, 735, 30)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Убей для <rСтранницы>(2423,3186) 25 <pПиратов 006>(2736,3042) и 30 <pПиратов 007>(2736,3042)")

	MisNeed(MIS_NEED_KILL, 734, 25, 10, 25)
	MisNeed(MIS_NEED_KILL, 735, 30, 40, 30)

	MisHelpTalk("<t>Странные люди, странно смотрят на меня...")
	MisResultTalk("<t>Ура... Наконец мир и спокойствие...")

	MisBeginCondition(NoRecord, 1634)
	MisResultCondition(HasMission, 1634)
	MisResultCondition(HasFlag, 1634, 34)

	MisResultCondition(HasFlag, 1634, 69)
	MisResultAction(ClearMission, 1634)
	MisResultAction(SetRecord, 1634)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(GiveNpcMission, 6324, "Странница", 3)

	InitTrigger()
	TriggerCondition(1, IsMonster, 734)
	TriggerAction(1, AddNextFlag, 1634, 10, 25)
	RegCurTrigger(16341)

	InitTrigger()
	TriggerCondition(1, IsMonster, 735)
	TriggerAction(1, AddNextFlag, 1634, 40, 30)
	RegCurTrigger(16342)


--Обожание странницы
	DefineMission(6324, "Обожание странницы",1635)

	MisBeginTalk("<t>Когда я впервые его увидела, я влюбилась по уши...<n><t>Оо...Он такой красивый, такой умный... А какой характер! А какие у него глаза!! Он там один... Стоит тихо, спокойно! Он сказал, что его зовут <rВилль> (2582,3245). Такое ощущение, что я слышала это имя прежде.<n><t>Передай ему привет от меня!")
	MisBeginCondition(NoRecord, 1635)
	MisBeginCondition(NoMission,1635)
	MisBeginCondition(HasRecord, 1634)
	MisBeginAction(AddMission, 1635)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Отыщи <rВилля> (2582,3245) и передай ему привет от Странницы.")

	MisHelpTalk("<t>Как это так?! Почему все именно так???")
	MisResultCondition(AlwaysFailure)

--Обожание странницы
	DefineMission(6325, "Обожание странницы",1635, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>...Я всего лишь человек, который не может себе ничего позволить...")
	MisResultCondition(NoRecord, 1635)
	MisResultCondition(HasMission, 1635)
	MisResultAction(ClearMission, 1635)
	MisResultAction(SetRecord, 1635)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6326, "Вилль", 2)

--Путь на остров Зимы
	DefineMission(6326, "Путь на остров Зимы",1636)
	MisBeginTalk("<t>Меня зовут Вилль. Я очень возмущен, что он опечален и у него такие мысли...<n><t>Если хочешь отыскать его - отправляйся на Зимние острова, но простому смертному это не дано. Для начала ты должен доказать, что ты этого достоин!<n><t>Мне нужно 10 <bЧерных жемчужин> с <rОбиталей о. Весны> (3194,2433), 10 <bТяжелых палашей ящера> с <rОбиталей о. Лета> (3650,2967) и 10 <bЛазурных кристаллов> с <rОбиталей о. Осени> (2736,3042).")
	MisBeginCondition(NoRecord, 1636)
	MisBeginCondition(NoMission,1636)
	MisBeginCondition(HasRecord, 1635)
	MisBeginAction(AddMission, 1636)
	MisBeginAction(AddTrigger,16361, TE_GETITEM,3362, 10)
	MisBeginAction(AddTrigger,16362, TE_GETITEM,4848, 10)
	MisBeginAction(AddTrigger,16363, TE_GETITEM,3366, 10)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Принеси <rВиллю> (2582,3245) 10 <bЧерных жемчужин>, 10 <bТяжелых палашей ящера> и 10 <bЛазурных кристаллов>, для того чтобы попасть на <pо. Зимы>.")
	MisNeed(MIS_NEED_ITEM, 3362, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 4848, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3366, 10, 30, 10)

	MisHelpTalk("<t>Сложно, если враг это чувствует! Сдайся и не делай ничего!")
	MisResultTalk("<t>Это означает, что ты действительно хочешь на остров Зимы. Очень хорошо!<n><t>Как я и обещал... Теперь, ты можешь отправляться... На юг, через моря - воронка ждет!")
	MisResultCondition(HasMission, 1636)
	MisResultCondition(NoRecord,1636)
	MisResultCondition(HasItem, 3362, 10)
	MisResultCondition(HasItem, 4848, 10)
	MisResultCondition(HasItem, 3366, 10)
	MisResultAction(TakeItem, 3362, 10)
	MisResultAction(TakeItem, 4848, 10)
	MisResultAction(TakeItem, 3366, 10)
	MisResultAction(ClearMission, 1636)
	MisResultAction(SetRecord, 1636)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,500,500)

	InitTrigger()
	TriggerCondition(1, IsItem, 3362)
	TriggerAction(1, AddNextFlag, 1636, 10, 10)
	RegCurTrigger(16361)

	InitTrigger()
	TriggerCondition(1, IsItem, 4848)
	TriggerAction(1, AddNextFlag, 1636, 20, 10)
	RegCurTrigger(16362)

	InitTrigger()
	TriggerCondition(1, IsItem, 3366)
	TriggerAction(1, AddNextFlag, 1636, 30, 10)
	RegCurTrigger(16363)

--Осмотр острова Зимы
	DefineMission(6327, "Осмотр острова Зимы",1637)

	MisBeginTalk("<t>Я так до сих пор и не выяснил, что собственно произошло. Какой позор!<n><t>Начну сначала... Я археолог... Я отправил четырех студентов, по островам. Возможно они смогут предоставить мне немного информации. Постарайся найти их и взять их <bЖурналы Приключений> для меня. Найди: <rИсследователя -  Уинстона> (472,531) на <bСнежном острове Кары>; <rИсследователю - Крису> (1147,403) на <bСнежном острове Вилля>; <rИсследователю - Лиону> (365,1526) и <rИсследователю - Джиллу> (958,1159) на <bострове Ледяных озер>.")
	MisBeginCondition(NoRecord, 1637)
	MisBeginCondition(NoMission,1637)
	MisBeginCondition(HasRecord, 1636)
	MisBeginCondition(NoRecord, 1638)
	MisBeginCondition(NoRecord, 1639)
	MisBeginCondition(NoRecord, 1640)
	MisBeginCondition(NoRecord, 1641)
	MisBeginAction(AddMission, 1637)
	MisBeginAction(AddTrigger,16371, TE_GETITEM,6209, 1)
	MisBeginAction(AddTrigger,16372, TE_GETITEM,6210, 1)
	MisBeginAction(AddTrigger,16373, TE_GETITEM,6211, 1)
	MisBeginAction(AddTrigger,16374, TE_GETITEM,6212, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Принеси <pЖурналы Приключений> <rУченому - Йе> (297,901)")
	MisNeed(MIS_NEED_ITEM, 6209, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 6210, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 6211, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 6212, 1, 40, 1)

	MisHelpTalk("<t>Мне нужно время подумать... Почему все произошло именно так?")
	MisResultTalk("<t>Спасибо за помощь! Похоже ученики потрудились на славу и собрали всю необходимую информацию.")
	MisResultCondition(HasMission, 1637)
	MisResultCondition(NoRecord,1637)
	MisResultCondition(HasItem, 6209, 1)
	MisResultCondition(HasItem, 6210, 1)
	MisResultCondition(HasItem, 6211, 1)
	MisResultCondition(HasItem, 6212, 1)
	MisResultAction(TakeItem, 6209, 1)
	MisResultAction(TakeItem, 6210, 1)
	MisResultAction(TakeItem, 6211, 1)
	MisResultAction(TakeItem, 6212, 1)
	MisResultAction(ClearMission, 1637)
	MisResultAction(SetRecord, 1637)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6332, "Ученый - Йе",2)

	InitTrigger()
	TriggerCondition(1, IsItem, 6209)
	TriggerAction(1, AddNextFlag, 1637, 10, 1)
	RegCurTrigger(16371)

	InitTrigger()
	TriggerCondition(1, IsItem, 6210)
	TriggerAction(1, AddNextFlag, 1637, 20, 1)
	RegCurTrigger(16372)

	InitTrigger()
	TriggerCondition(1, IsItem, 6211)
	TriggerAction(1, AddNextFlag, 1637, 30, 1)
	RegCurTrigger(16373)

	InitTrigger()
	TriggerCondition(1, IsItem, 6212)
	TriggerAction(1, AddNextFlag, 1637, 40, 1)
	RegCurTrigger(16374)

--Просьба Уинстона
	DefineMission(6328, "Просьба Уинстона",1638)

	MisBeginTalk("<t>Снежный остров Кары! Я так называю этот остров... Не знаю откуда у него такое название. Об острове знаю лишь, что тут хранится какая-то реликвия.<n><t>И еще, монстры вокруг меня - достали! Сделай так, что бы они убрались подальше от меня!")
	MisBeginCondition(NoRecord, 1638)
	MisBeginCondition(NoMission,1638)
	MisBeginCondition(HasMission, 1637)
	MisBeginCondition(NoRecord, 1637)
	MisBeginAction(AddMission, 1638)

	MisBeginAction(AddTrigger, 16381, TE_KILL, 1090, 20)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Помоги <rИсследователю -  Уинстону> (472,531) убить 20 <pСнежных Леопардов> (549,528).")

	MisNeed(MIS_NEED_KILL, 1090, 20, 10, 20)

	MisHelpTalk("<t>Неужели это так трудно? Аррр... Как они меня достали...")
	MisResultTalk("<t>Спасибо, теперь я могу спокойно продолжить работу. Отнеси отчет <rУченому - Йе> (297,901).")

	MisBeginCondition(NoRecord, 1638)
	MisResultCondition(HasMission, 1638)
	MisResultCondition(HasFlag, 1638, 29)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 6209, 1, 4)
	MisResultAction(ClearMission, 1638)
	MisResultAction(SetRecord, 1638)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1090)
	TriggerAction(1, AddNextFlag, 1638, 10, 20)
	RegCurTrigger(16381)

--Просьба Криса
	DefineMission(6329, "Просьба Криса",1639)

	MisBeginTalk("<t>Ааа... Тебя прислал профессор? Отлично... Да еще и эти... Чертовы Генералы! Помоги разобраться с ними.")
	MisBeginCondition(NoRecord, 1639)
	MisBeginCondition(NoMission,1639)
	MisBeginCondition(HasMission, 1637)
	MisBeginCondition(NoRecord, 1637)
	MisBeginAction(AddMission, 1639)

	MisBeginAction(AddTrigger, 16391, TE_KILL, 1091, 20)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Помоги <rИсследователю - Крису> (1147,403) убить 20 <pГенералов тыквы> (966,272).")

	MisNeed(MIS_NEED_KILL, 1091, 20, 10, 20)

	MisHelpTalk("<t>Неужели это так трудно? Аррр... Как они меня достали...")
	MisResultTalk("<t>Спасибо, теперь я могу спокойно продолжить работу. Отнеси отчет <rУченому - Йе> (297,901).")

	MisBeginCondition(NoRecord, 1639)
	MisResultCondition(HasMission, 1639)
	MisResultCondition(HasFlag, 1639, 29)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 6210, 1, 4)
	MisResultAction(ClearMission, 1639)
	MisResultAction(SetRecord, 1639)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1091)
	TriggerAction(1, AddNextFlag, 1639, 10, 20)
	RegCurTrigger(16391)

--Ответ Джилл
	DefineMission(6330, "Ответ Джилл",1640)

	MisBeginTalk("<t>Ааа... Тебя прислал профессор? Отлично... Но я ждал новостей от Джилл... Да еще и эти... Чёртовые чудовища! Помоги разобраться с ними.")
	MisBeginCondition(NoRecord, 1640)
	MisBeginCondition(NoMission,1640)
	MisBeginCondition(HasMission, 1637)
	MisBeginCondition(NoRecord, 1637)
	MisBeginAction(AddMission, 1640)

	MisBeginAction(AddTrigger, 16401, TE_KILL, 1085, 20)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Помоги <rИсследователю - Лиону> (365,1526) убить 20 <pЯрых Медведей> (661,1230)")

	MisNeed(MIS_NEED_KILL, 1085, 20, 10, 29)

	MisHelpTalk("<t>Неужели это так трудно? Аррр... Как они меня достали...")
	MisResultTalk("<t>Спасибо, теперь я могу спокойно продолжить работу. Отнеси отчет <rУченому - Йе> (297,901).")

	MisBeginCondition(NoRecord, 1640)
	MisResultCondition(HasMission, 1640)
	MisResultCondition(HasFlag, 1640, 29)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 6211, 1, 4)
	MisResultAction(ClearMission, 1640)
	MisResultAction(SetRecord, 1640)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1085)
	TriggerAction(1, AddNextFlag, 1640, 10, 20)
	RegCurTrigger(16401)

--Вопрос археолога
	DefineMission(6331, "Вопрос археолога",1641)

	MisBeginTalk("<t>Привет, а где профессор? Я собиралась встретиться с Лионом, но заблудилась, а потом еще это чудовище... Помоги мне пожалуйста!")
	MisBeginCondition(NoRecord, 1641)
	MisBeginCondition(NoMission,1641)
	MisBeginCondition(HasMission, 1637)
	MisBeginCondition(NoRecord, 1637)
	MisBeginAction(AddMission, 1641)

	MisBeginAction(AddTrigger, 16411, TE_KILL, 1086, 20)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Помоги <rИсследователю - Джилл> (958,1159) убить 20 <pУбийц Душ> (839,1160).")

	MisNeed(MIS_NEED_KILL, 1086, 20, 10, 20)

	MisHelpTalk("<t>Неужели это так трудно? Аррр... Как они меня достали...")
	MisResultTalk("<t>Спасибо, теперь я могу спокойно продолжить работу. Отнеси отчет <rУченому - Йе> (297,901).")

	MisBeginCondition(NoRecord, 1641)
	MisResultCondition(HasMission, 1641)
	MisResultCondition(HasFlag, 1641, 29)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 6212, 1, 4)
	MisResultAction(ClearMission, 1641)
	MisResultAction(SetRecord, 1641)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1086)
	TriggerAction(1, AddNextFlag, 1641, 10, 20)
	RegCurTrigger(16411)

--Вопрос археолога
	DefineMission(6332, "Вопрос археолога",1642)

	MisBeginTalk("<t>О, спасибо за помощь!<n><t>Теперь я имею больше представления об истории острова. В записях учеников говорится о том, что раньше эти острова были единым целым; также пишут о том, что на каждом острове есть стражи древних реликвий. Возможно удастся узнать у них тайны острова. Один из них есть недалеко отсюда. Отправляйся к нему и поговори. Может быть узнаешь что-нибудь ценное.<n><t>А я остаюсь тут. С нетерпением жду информации от тебя... Ну и своих учеников.")
	MisBeginCondition(NoRecord, 1642)
	MisBeginCondition(NoMission,1642)
	MisBeginCondition(HasRecord, 1637)
	MisBeginAction(AddMission, 1642)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Отыщи <rСнежного Стража Кары> (557,300).")

	MisHelpTalk("<t>Хочется узнать секреты произошедшего? Действуй!")
	MisResultCondition(AlwaysFailure)

--Вопрос археолога
	DefineMission(6333, "Вопрос археолога",1642, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Ты готов познать секреты зимнего народа?")
	MisResultCondition(NoRecord, 1642)
	MisResultCondition(HasMission, 1642)
	MisResultAction(ClearMission, 1642)
	MisResultAction(SetRecord, 1642)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6334, "Снежный Страж Кары", 2)

--Наставление стража 1
	DefineMission(6334, "Наставление стража 1",1643)

	MisBeginTalk("<t>Сотни людей просили меня раскрыть им тайну острова Зимы, но я ничего им не сказал. Но, кажется, ты особенный... У тебя крепкий характер... Не знаю почему, но в последнее время ощущаю какое-то беспокойство.<n><t>Не так далеко есть еще один страж. Отыщите <rСнежного Стража Вилля> (1044,182).")
	MisBeginCondition(NoRecord, 1643)
	MisBeginCondition(NoMission,1643)
	MisBeginCondition(HasRecord, 1642)
	MisBeginAction(AddMission, 1643)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Отыщи <rСнежного Стража Вилля> (1044,182).")

	MisHelpTalk("<t>Возможно я просто запуган...")
	MisResultCondition(AlwaysFailure)

--Наставление стража 1
	DefineMission(6335, "Наставление стража 1",1643, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Тебя действительно прислал Страж снежного острова Кары? Хорошо... Слушай...")
	MisResultCondition(NoRecord, 1643)
	MisResultCondition(HasMission, 1643)
	MisResultAction(ClearMission, 1643)
	MisResultAction(SetRecord, 1643)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6336, "Снежный Страж Вилля", 2)

--Наставление стража 2
	DefineMission(6336, "Наставление стража 2",1644)

	MisBeginTalk("<t>Остров раскололся... Богиня Кара отвергла Вилля... Не понимаю, почему Кара, такая большая девочка - такая злая. Разрушила всю красоту этих островов, а могли бы жить тут вместе.<n><t>Отправляйся на остров Ледяных озер... Зачем? На месте разберешься...")
	MisBeginCondition(NoRecord, 1644)
	MisBeginCondition(NoMission,1644)
	MisBeginCondition(HasRecord, 1643)
	MisBeginAction(AddMission, 1644)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "Найди <rЗащитника Острова Зимы> (655,1471).")

	MisHelpTalk("<t>В результате мы получили то, что получили...")
	MisResultCondition(AlwaysFailure)

--Наставление стража 2
	DefineMission(6337, "Наставление стража 2",1644, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Откуда ты? Странно, не всегда люди связываются со стражами? Очень странно.")
	MisResultCondition(NoRecord, 1644)
	MisResultCondition(HasMission, 1644)
	MisResultAction(ClearMission, 1644)
	MisResultAction(SetRecord, 1644)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6338, "Снежный Страж Зимнего озера", 2)

--Испытание стража 1
	DefineMission(6338, "Испытание стража 1",1645)

	MisBeginTalk("<t>Хочешь знать зачем?<n><t>Ты не кажешься мне достаточно готовым, чтобы познать эти тайны. Покажи мне свою силу - разберись с бунтующими чудовищами. Убей: 30 <rКаменных Драконов> (404,1340), 35 <rКрасных каменюков> (451,1288), 25 <rУбийц Душ> (839,1160).")
	MisBeginCondition(NoRecord, 1645)
	MisBeginCondition(NoMission,1645)
	MisBeginCondition(HasRecord, 1644)
	MisBeginAction(AddMission, 1645)

	MisBeginAction(AddTrigger, 16451, TE_KILL, 1083, 30)
	MisBeginAction(AddTrigger, 16452, TE_KILL, 1084, 35)
	MisBeginAction(AddTrigger, 16453, TE_KILL, 1086, 25)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Помоги <rЗащитнику Острова Зимы> (655,1471) убить чудовищ.")

	MisNeed(MIS_NEED_KILL, 1083, 30, 10, 30)
	MisNeed(MIS_NEED_KILL, 1084, 35, 50, 35)
	MisNeed(MIS_NEED_KILL, 1086, 25, 90, 25)

	MisHelpTalk("<t>Сдаешься? Твое дело.")
	MisResultTalk("<t>Кажется, ты готов познать главный секрет. Отлично! Поздравляю!")

	MisBeginCondition(NoRecord, 1645)
	MisResultCondition(HasMission, 1645)
	MisResultCondition(HasFlag, 1645, 39)
	MisResultCondition(HasFlag, 1645, 84)
	MisResultCondition(HasFlag, 1645, 114)
	MisResultAction(ClearMission, 1645)
	MisResultAction(SetRecord, 1645)
	MisResultAction(AddMoney,30000,30000)
	MisResultAction(AddExpAndType,2,550,550)
	MisResultAction(GiveNpcMission, 6339, "Снежный Страж Зимнего озера", 3)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1083)
	TriggerAction(1, AddNextFlag, 1645, 10, 30)
	RegCurTrigger(16451)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1084)
	TriggerAction(1, AddNextFlag, 1645, 50, 35)
	RegCurTrigger(16452)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1086)
	TriggerAction(1, AddNextFlag, 1645, 90, 25)
	RegCurTrigger(16453)

--Испытание стража 2
	DefineMission(6339, "Испытание стража 2",1646)

	MisBeginTalk("<t>Я вижу, что ты силен... посмотрим, хватит ли тебе терпения. Собери: 10 <bЧудесных Камень> с <rКаменных Драконов> (404,1340), 10 <bТаинственных топазовых осколков> с <rКрасных каменюков> (451,1288), 10 <bКристальных Ребер> с <rУбийц Душ> (839,1160). Я жду.")
	MisBeginCondition(NoRecord, 1646)
	MisBeginCondition(NoMission,1646)
	MisBeginCondition(HasRecord, 1645)
	MisBeginAction(AddMission, 1646)
	MisBeginAction(AddTrigger,16461, TE_GETITEM,6237, 10)
	MisBeginAction(AddTrigger,16462, TE_GETITEM,1201, 10)
	MisBeginAction(AddTrigger,16463, TE_GETITEM,6240, 10)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Заверши задание <rЗащитника Острова Зимы> (655,1471) собери необходимые предметы.")
	MisNeed(MIS_NEED_ITEM, 6237, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 1201, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 6240, 10, 30, 10)

	MisHelpTalk("<t>Хочешь сдаться? Твое дело.")
	MisResultTalk("<t>Отличная работа. Надеюсь, что ты сможешь во всем разобраться...")
	MisResultCondition(HasMission, 1646)
	MisResultCondition(NoRecord,1646)
	MisResultCondition(HasItem, 6237, 10)
	MisResultCondition(HasItem, 1201, 10)
	MisResultCondition(HasItem, 6240, 10)
	MisResultAction(TakeItem, 6237, 10)
	MisResultAction(TakeItem, 1201, 10)
	MisResultAction(TakeItem, 6240, 10)
	MisResultAction(ClearMission, 1646)
	MisResultAction(SetRecord, 1646)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,550,550)
	MisResultAction(GiveNpcMission, 6340, "Снежный Страж Зимнего озера", 4)

	InitTrigger()
	TriggerCondition(1, IsItem, 6237)
	TriggerAction(1, AddNextFlag, 1646, 10, 10)
	RegCurTrigger(16461)

	InitTrigger()
	TriggerCondition(1, IsItem, 1201)
	TriggerAction(1, AddNextFlag, 1646, 20, 10)
	RegCurTrigger(16462)

	InitTrigger()
	TriggerCondition(1, IsItem, 6240)
	TriggerAction(1, AddNextFlag, 1646, 30, 10)
	RegCurTrigger(16463)


--Беспокойство стража
	DefineMission(6340, "Беспокойство стража",1647)

	MisBeginTalk("<t>Вилль провоцировал Кару, в результате она стала очень нервной.<n><t>Возможно ты знаешь, что пески Шайтана сместились под город, в результате он поднялся над водой - это результат гнева Кары. Еще и вечная зима здесь, на островах... Райское местечко. Весна, Лето, Осень - три острова - части материка Шайтана. Эх... Много воды утекло...<n><t>Но, в результате Вилль вернулся. Ты сможешь смело побеседовать с ним лично. Он подскажет тебе решение.")
	MisBeginCondition(NoRecord, 1647)
	MisBeginCondition(NoMission,1647)
	MisBeginCondition(HasRecord, 1646)
	MisBeginAction(AddMission, 1647)
	MisBeginAction(GiveItem, 6213, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Отыщи <rВилля с Севера> (715,1135), чтобы выяснить все тайны истории.")

	MisHelpTalk("<t>Еще не искал его? Он недалеко.. севернее...")
	MisResultCondition(AlwaysFailure)

--Беспокойство стража
	DefineMission(6341, "Беспокойство стража",1647, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Меч стража? Эта вещь все еще существует? Кара, Кара, зачем...")
	MisResultCondition(NoRecord, 1647)
	MisResultCondition(HasMission, 1647)
	MisResultCondition(HasItem, 6213, 1)
	MisResultAction(TakeItem, 6213, 1)
	MisResultAction(ClearMission, 1647)
	MisResultAction(SetRecord, 1647)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6342, "Виль с Севера", 2)

--Сожаление Вилля с Севера
	DefineMission(6342, "Сожаление Вилля с Севера",1648)

	MisBeginTalk("<t>Десять тысячь лет назад, я приказал Каре навести порядок в мире. Чтобы все было как прежде. Но я не ожидал, что кое-что меня так затянет, что до сих пор я не мог вернуться...<n><t>Кое-что - это тот факт, что Кара, которую я любил, сделала... Я не знаю, что делать с Шайтаном, Карибами, Островами, а также людьми, которые выжили лишь потому, что не встали на пути Кары.<n><t>Ну что сказать... Что я могу сказать? Возможно не стоит возвращаться, или... Тебе нечего посоветовать. Я знаю, что у тебя самого ко мне вопросы, но ты должен получить <bСердце сутры>.<n><t>Эту вещь ты можешь раздобыть у <pПовелителя каменных драконов>. После его использования я укажу тебе последнюю точку на острове, где ты сможешь узнать все.")
	MisBeginCondition(NoRecord, 1648)
	MisBeginCondition(NoMission,1648)
	MisBeginCondition(HasRecord, 1647)
	MisBeginAction(AddMission, 1648)

	MisBeginAction(AddTrigger, 16481, TE_GETITEM, 6200, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Помоги <rВиллю с Севера> (715,1135) отыскать <bСердце Сутры>.")

	MisNeed(MIS_NEED_ITEM, 6200, 1, 10, 1)

	MisHelpTalk("<t>Возможно мне действительно не стоит возвращаться, не хочу, чтобы с миром что-нить произошло.")
	MisResultTalk("<t>Вернулся? Хорошо... Все как я и ожидал. С тобой меч. Я открою для тебя портал и ты сможешь попасть на Обледенелый остров и найти <rЗащитника Древних Реликвий> (2010,783).")
	MisBeginCondition(NoRecord, 1648)
	MisResultCondition(HasMission, 1648)
	MisResultCondition(HasItem, 6200, 1)
	MisResultAction(TakeItem, 6200, 1)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 6213, 1, 4)
	MisResultAction(ClearMission, 1648)
	MisResultAction(SetRecord, 1648)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,600,600)
	MisResultBagNeed(1)
	--MisResultAction(GiveNpcMission, 6343, "Снежный Страж Древних Реликвий", 1)

	InitTrigger()
	TriggerCondition(1, IsItem, 6200)
	TriggerAction(1, AddNextFlag, 1648, 10, 1)
	RegCurTrigger(16481)

--Снежный остров
	DefineMission(6343, "Снежный остров",1649)
	MisBeginTalk("<t>Меч Стража... Хех... затем Вилль,...<n><t>Кара правящая жизнями мечом любви. Кара выместила всю злость на острове Зимы. Это был перебор... Я видел предостаточно, но всегда думал об этом и не мог найти ответа - верно ли она поступила. Сначала все было хорошо, но после того, как Вилль ушел, на острове появились кучи чудовищ!<n><t>Если не очень занят, помоги избавится от них. Я буду тебе очень благодарен. Убей: 30 <rДемонов Меча> (1761,609), 35 <rДемонических Душ> (1676,800) и 25 <rКошмаров> (1640,1083)")
	MisBeginCondition(NoRecord, 1649)
	MisBeginCondition(NoMission,1649)
	MisBeginCondition(HasRecord, 1648)
	MisBeginCondition(HasItem, 6213, 1, 4)
	MisBeginAction(AddMission, 1649)

	MisBeginAction(AddTrigger, 16491, TE_KILL, 1095, 30)
	MisBeginAction(AddTrigger, 16492, TE_KILL, 1097, 35)
	MisBeginAction(AddTrigger, 16493, TE_KILL, 1098, 25)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Помоги <rЗащитнику Древних Реликвий> (2010,783) убить чудовищ.")

	MisNeed(MIS_NEED_KILL, 1095, 30, 10, 30)
	MisNeed(MIS_NEED_KILL, 1097, 35, 50, 35)
	MisNeed(MIS_NEED_KILL, 1098, 25, 90, 25)

	MisHelpTalk("<t>Не можешь их найти? Ну и ладно, все от тебя зависит, я то никуда не спешу.")
	MisResultTalk("<t>Не могу поверить, что ты так быстро со всем справился. Ты один из самых сильных бойцов в мире! Думаю, что ты сможешь со всем справится...")

	MisBeginCondition(NoRecord, 1649)
	MisResultCondition(HasMission, 1649)
	MisResultCondition(HasFlag, 1649, 39)
	MisResultCondition(HasFlag, 1649, 74)
	MisResultCondition(HasFlag, 1649, 99)
	MisResultCondition (HasItem, 6213, 1)
	MisResultAction (TakeItem, 6213, 1)
	MisResultAction(ClearMission, 1649)
	MisResultAction(SetRecord, 1649)
	MisResultAction(AddMoney,30000,30000)
	MisResultAction(AddExpAndType,2,650,650)
	MisResultAction(GiveNpcMission, 6344, "Снежный Страж Древних Реликвий", 2)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1095)
	TriggerAction(1, AddNextFlag, 1649, 10, 30)
	RegCurTrigger(16491)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1097)
	TriggerAction(1, AddNextFlag, 1649, 50, 35)
	RegCurTrigger(16492)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1098)
	TriggerAction(1, AddNextFlag, 1649, 90, 25)
	RegCurTrigger(16493)


--Вечная любовь
	DefineMission(6344, "Вечная любовь",1650)

	MisBeginTalk("<t>Наверное видел, что на острове есть две ледяных статуи.<n><t>Возможно не обращал внимание, не так ли? Это статуи Вилля и Кары... Они очень древние. Кажется, что они живые... В те дни, когда они появились в этом мире, они внесли в него много сил. Пытались бросить это дело...<n><t>Но сейчас, их вера и любовь друг к другу... Я верю в нее.. Будет сложно все восстановить, но я хочу попробовать.<n><t>Отправляйся к статуям и принеси мне их слезы.")
	MisBeginCondition(NoRecord, 1650)
	MisBeginCondition(NoMission,1650)
	MisBeginCondition(HasRecord, 1649)
	MisBeginCondition(NoRecord, 1651)
	MisBeginCondition(NoRecord, 1652)
	MisBeginAction(AddMission, 1650)
	MisBeginAction(AddTrigger,16501, TE_GETITEM, 6214, 1)
	MisBeginAction(AddTrigger,16502, TE_GETITEM, 6216, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Собери по одной слезе со <rСтатуи Кары> (1440,1268) и <rСтатуи Вилля> (1464,464) и возвращайся к <pЗащитнику Древних Реликвий> (2010,783).")
	MisNeed(MIS_NEED_ITEM, 6214, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 6216, 1, 20, 1)

	MisHelpTalk("<t>Быстрее, еще быстрее, я больше не вынесу их страданий...")
	MisResultTalk("<t>Хорошо, надеюсь усилия не были напрасными!")
	MisResultCondition(HasMission, 1650)
	MisResultCondition(NoRecord,1650)
	MisResultCondition(HasItem, 6214, 1)
	MisResultCondition(HasItem, 6216, 1)
	MisResultAction(TakeItem, 6214, 1)
	MisResultAction(TakeItem, 6216, 1)
	MisResultAction(ClearMission, 1650)
	MisResultAction(SetRecord, 1650)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,600,600)
	MisResultAction(GiveNpcMission, 6347, "Снежный Страж Древних Реликвий", 3)

	InitTrigger()
	TriggerCondition(1, IsItem, 6214)
	TriggerAction(1, AddNextFlag, 1650, 10, 1)
	RegCurTrigger(16501)

	InitTrigger()
	TriggerCondition(1, IsItem, 6216)
	TriggerAction(1, AddNextFlag, 1650, 20, 1)
	RegCurTrigger(16502) 

--Фантазия
	DefineMission(6345, "Фантазия",1651)

	MisBeginTalk("<t>Каждую ночь, когда я смотрю на звезды, я скучаю по людям, которые, надеюсь, вернуться. И я увижу, как они улыбаются друг другу, их сердца необычайно счастливы, но пока все не так...<n><t>Сейчас, глядя на звезды, я вижу только пропасть в моем сознании. Если ты действительно хочешь нам помочь, принеси мне <bТаинство камня>.")
	MisBeginCondition(NoRecord, 1651)
	MisBeginCondition(NoMission,1651)
	MisBeginCondition(HasMission, 1650)
	MisBeginCondition(NoRecord, 1650)
	MisBeginAction(AddMission, 1651)

	MisBeginAction(AddTrigger, 16511, TE_GETITEM, 6215, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t><rСтатуя Кары> (1440,1268) просит убить <pДемонов Меча> (1761,609), что бы достать с них <bТаинство Камня>.")

	MisNeed(MIS_NEED_ITEM, 6215, 1, 10, 1)

	MisHelpTalk("<t>Еще не все? Быстрее, прошу быстрее...")
	MisResultTalk("<t>Таинство камня... Звезда... Прочный, как скала... Хорошо... Очень хорошо... Возьми эту слезу, она поможет тебе, спасибо.")
	MisBeginCondition(NoRecord, 1651)
	MisResultCondition(HasMission, 1651)
	MisResultCondition(HasItem, 6215, 1)
	MisResultAction(TakeItem, 6215, 1)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 6214, 1, 4)
	MisResultAction(ClearMission, 1651)
	MisResultAction(SetRecord, 1651)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition(1, IsItem, 6215)
	TriggerAction(1, AddNextFlag, 1651, 10, 1)
	RegCurTrigger(16511)

--Иллюзия
	DefineMission(6346, "Иллюзия",1652)

	MisBeginTalk("<t>Я забыл, я начал с того, что когда этот кусочек земли... Ну когда Земля зародилась... Большой взрыв и т.д. Так вот, не было чистого неба, только холодная тьма... И появился камень... Необычный... С зеленым фрагментом на поверхности, но я так и не знаю, где его искать... Надеюсь ты поможешь мне его найти.")
	MisBeginCondition(NoRecord, 1652)
	MisBeginCondition(NoMission,1652)
	MisBeginCondition(HasMission, 1650)
	MisBeginCondition(NoRecord, 1650)
	MisBeginAction(AddMission, 1652)

	MisBeginAction(AddTrigger, 16521, TE_GETITEM, 6217, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t><rСтатуя Вилля(1464,464)> просит убить <pДемонических Душ> (1676,800), что бы достать с них <bКамень Всераскрытия>.")

	MisNeed(MIS_NEED_ITEM, 6217, 1, 10, 1)

	MisHelpTalk("<t>Возможно его и не существует...")
	MisResultTalk("<t>Камень всераскрытия, чистый как небо... Спасибо, спасибо тебе, прими эту слезу в знак благодарности!")
	MisBeginCondition(NoRecord, 1652)
	MisResultCondition(HasMission, 1652)
	MisResultCondition(HasItem, 6217, 1)
	MisResultAction(TakeItem, 6217, 1)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 6216, 1, 4)
	MisResultAction(ClearMission, 1652)
	MisResultAction(SetRecord, 1652)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition(1, IsItem, 6217)
	TriggerAction(1, AddNextFlag, 1652, 10, 1)
	RegCurTrigger(16521)

--Сердце моря
	DefineMission(6347, "Сердце моря",1653)
	MisBeginTalk("<t>Результатом твоих подвигов стал символ любви. Я всматриваюсь в этот темно синий самоцвет и не могу оторвать глаз. Это <bСердце моря>. Надюсь, что их любовь будет такой же бескрайней.<n><t>Отнеси его <rВиллю с Севера(715,1135)>.")
	MisBeginCondition(NoRecord, 1653)
	MisBeginCondition(NoMission,1653)
	MisBeginCondition(HasRecord, 1650)
	MisBeginAction(AddMission, 1653)
	MisBeginAction(GiveItem, 6218, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Отнеси <bСердце моря> <rВиллю с Севера> (715,1135).")

	MisHelpTalk("<t>Надеюсь, что все сложится хорошо.")
	MisResultCondition(AlwaysFailure)

--Сердце моря
	DefineMission(6348, "Сердце моря",1653, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Сердце! Ты... Ты так много для меня сделал. Как мне тебя отблагодарить? Я был таким эгоистом...")
	MisResultCondition(NoRecord, 1653)
	MisResultCondition(HasMission, 1653)
	MisResultCondition(HasItem, 6218, 1)
	MisResultAction(TakeItem, 6218, 1)
	MisResultAction(ClearMission, 1653)
	MisResultAction(SetRecord, 1653)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultAction(GiveNpcMission, 6349, "Виль с Севера", 4)

--Сердце стража
	DefineMission(6349, "Сердце стража",1654)

	MisBeginTalk("<t>Что? Душевные проблемы стража? Дай подумать...<n><t>Давным-давно, когда он пришел ко мне, я увидел, что он эмоционально неуравновешен, страдает...как будто полон проблем. Но он отказался что либо нам рассказывать и тогда мы провели собственное расследование. Я слышал, <rСтарик - Пачкуля> (2272,2700) знает много - у него были свои дела со стражем.<n><t>Поговори с ним.")
	MisBeginCondition(NoRecord, 1654)
	MisBeginCondition(NoMission,1654)
	MisBeginCondition(HasRecord, 1653)
	MisBeginAction(AddMission, 1654)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Отправляйся в <bАргент> и поговори со <rСтариком - Пачкулей> (2272,2700) о <pЗащитнике Древних Реликвий> и его проблемах.")

	MisHelpTalk("<t>Не знаю, что случилось, но мне не хочется знать о его проблемах и что произошло.")
	MisResultCondition(AlwaysFailure)

--Сердце стража
	DefineMission(6350, "Сердце стража",1654, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Оу? Вилль просил разобраться с проблемами стража? Он действительно заинтересован, это факт!")
	MisResultCondition(NoRecord, 1654)
	MisResultCondition(HasMission, 1654)
	MisResultAction(ClearMission, 1654)
	MisResultAction(SetRecord, 1654)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultAction(GiveNpcMission, 6351, "Старик - Пачкуля", 18)

--Темная волна
	DefineMission(6351, "Темная волна",1655)

	MisBeginTalk("<t>Страж был защищен печатями Бога и видимо таким оказалось их воздействие... Мы всегда старались не оставлять его одного. Однако, те кто долго находились рядом с ним, попадали в разные передряги...<n><t>Если хочешь узнать об этом побольше, отправляйся в <bШайтан> и поговори с <rПредводителем клана - Альбудой> (898,3640).")
	MisBeginCondition(NoRecord, 1655)
	MisBeginCondition(NoMission,1655)
	MisBeginCondition(HasRecord, 1654)
	MisBeginAction(AddMission, 1655)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Отправиться в <bШайтан> и поговорить с <rПредводителем клана - Альбудой> (898,3640).")

	MisHelpTalk("<t>Беда настигала многих людей. Думаю, что проблема в страже.")
	MisResultCondition(AlwaysFailure)

--Темная волна
	DefineMission(6352, "Темная волна",1655, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Эмоциональные переживания стража? Пффф... С меня хватит... Сплошные с ним мучения.")
	MisResultCondition(NoRecord, 1655)
	MisResultCondition(HasMission, 1655)
	MisResultAction(ClearMission, 1655)
	MisResultAction(SetRecord, 1655)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultAction(GiveNpcMission, 6353, "Предводитель клана - Альбуда", 15)

--Масса переживаний
	DefineMission(6353, "Масса переживаний",1656)

	MisBeginTalk("<t>Не так давно, я пересекался со стражами, и все закончилось битвой. Мы не хотели конфликтов, но они выглядили довольно сильными и очень злыми!<n><t>Мой друг - <rПринц-тритон - Хассан> (1254,3491) и я загнали их в землю. Но он расскажет об этом лучше меня.")
	MisBeginCondition(NoRecord, 1656)
	MisBeginCondition(NoMission,1656)
	MisBeginCondition(HasRecord, 1655)
	MisBeginAction(AddMission, 1656)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Найди <rПринца-тритона - Хассана> (1254,3491) недалеко от <bШайтана> и узнай, что произошло.")

	MisHelpTalk("<t>Надеюсь, что чувства меня обманывают - не хочу видеть этих стражей! Они отвратительны и от них куча проблем!")
	MisResultCondition(AlwaysFailure)

--Масса переживаний
	DefineMission(6354, "Масса переживаний",1656, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Масса переживаний... Возможно причина лежит прямо на поверхности...")
	MisResultCondition(NoRecord, 1656)
	MisResultCondition(HasMission, 1656)
	MisResultAction(ClearMission, 1656)
	MisResultAction(SetRecord, 1656)
	MisResultAction(AddExpAndType,2,400,400)
	MisResultAction(GiveNpcMission, 6355, "Принц-тритон - Хассан", 9)

--Новая одежда Принца 
	DefineMission(6355, "Новая одежда Принца ",1657)

	MisBeginTalk("<t>Ты же в курсе, что я из королевской русалочего рода, но я всегда предпочитал носить человеческую одежду. Это показатель роскоши. Хочешь от меня истории - принеси мне пиджак.<n><t>Да и еще раз спасибо за тот напиток. Всем понравилось.")
	MisBeginCondition(NoRecord, 1657)
	MisBeginCondition(NoMission,1657)
	MisBeginCondition(HasRecord, 1656)
	MisBeginAction(AddMission, 1657)

	MisBeginAction(AddTrigger, 16571, TE_GETITEM, 0400, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Принеси <rПринцу-тритону - Хассану> (1254,3491) <bКамзол Аполлона>.")

	MisNeed(MIS_NEED_ITEM, 0400, 1, 10, 1)

	MisHelpTalk("<t>Шмотки, шмотки... Ну и где? Принц разочарован.")
	MisResultTalk("<t>Спасибо за одежду, теперь я могу отправится в город... Какой я моднявый...")
	MisBeginCondition(NoRecord, 1657)
	MisResultCondition(HasMission, 1657)
	MisResultCondition(HasItem, 0400, 1)
	MisResultAction(TakeItem, 0400, 1)
	MisResultAction(ClearMission, 1657)
	MisResultAction(SetRecord, 1657)
	MisResultAction(AddMoney,20000,20000)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6356, "Принц-тритон - Хассан", 10)

	InitTrigger()
	TriggerCondition(1, IsItem, 0400)
	TriggerAction(1, AddNextFlag, 1657, 10, 1)
	RegCurTrigger(16571)

--Беда тритона
	DefineMission(6356, "Беда тритона",1658)

	MisBeginTalk("<t>Немножко отошел от того волшебного напитка и сейчас пытаюсь выяснить причины кризиса среди русалок. Стражи раньше служили нашему роду, но внезапно оказались в какой-то аномальной зоне и начали нападать на мой народ. Я отправился за помощью, не ожидая, что со мной случится та же беда...<n><t>Еще сложнее дела обстоят с Карибами. Чтобы узнать побольше, спроси <rДжека Воробья> (230,579) на <bострове Скелетов>.")
	MisBeginCondition(NoRecord, 1658)
	MisBeginCondition(NoMission,1658)
	MisBeginCondition(HasRecord, 1657)
	MisBeginAction(AddMission, 1658)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Найди <rДжека Воробья> (230,579) на <bо. Скелетов>.")

	MisHelpTalk("<t>На карибах беда, но это не единственное проблемное место")
	MisResultCondition(AlwaysFailure)

--Беда тритона
	DefineMission(6357, "Беда тритона",1658, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Страж? Кажется что-то припоминаю... Хм... Возможно... Так, нада найти лодку.")
	MisResultCondition(NoRecord, 1658)
	MisResultCondition(HasMission, 1658)
	MisResultAction(ClearMission, 1658)
	MisResultAction(SetRecord, 1658)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6358, "Джек Стрела", 13)

--Странное дело
	DefineMission(6358, "Странное дело",1659)

	MisBeginTalk("<t>Насколько я помню, Карибы - изумительно место: солнце, пальмы, девочки... Но помимо всего прочего - место проклятых душ. Всегда хотелось украсть корабль Барборосы - не ожидал он этого, но дальше еще хуже - Кракен!!...<n><t>Так, о чем это я... Когда я там был последний раз, один кузнец рассказал об изменениях стражей... Хм, а вот что, спроси у него сам. Его зовут <rВильям Тернер> (516,407).<n><t>Узнав о тайне музея, он просто помешался на ней.")
	MisBeginCondition(NoRecord, 1659)
	MisBeginCondition(NoMission,1659)
	MisBeginCondition(HasRecord, 1658)
	MisBeginAction(AddMission, 1659)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "Найдите <rВильяма Тернера> (516,407) на <bо.Скелетов> и поговорите с ним о проблеме Карибских островов.")

	MisHelpTalk("<t>Элизабет... О-да... Как хороша... Ой... Кхм... Спалился.... Надеюсь ты счастлив?")
	MisResultCondition(AlwaysFailure)

--Странное дело
	DefineMission(6359, "Странное дело",1659, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Тебя прислал Джек? Сто лет его не видел... Как он поживает?")
	MisResultCondition(NoRecord, 1659)
	MisResultCondition(HasMission, 1659)
	MisResultAction(ClearMission, 1659)
	MisResultAction(SetRecord, 1659)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6360, "Марк Тернер", 11)

--Просьба кузнеца
	DefineMission(6360, "Просьба кузнеца",1660)

	MisBeginTalk("<t>Несмотря на то, что ты попал на о.Зимы, для меня это не показатель. Я должен убедится, что ты действительно силен.<n><t>Мне нужно закончить работу, а ты мне в этом поможешь.")
	MisBeginCondition(NoRecord, 1660)
	MisBeginCondition(NoMission,1660)
	MisBeginCondition(HasRecord, 1659)
	MisBeginAction(AddMission, 1660)

	MisBeginAction(AddTrigger, 16601, TE_GETITEM, 2463, 1)
	MisBeginAction(AddTrigger, 16602, TE_GETITEM, 2468, 1)
	MisBeginAction(AddTrigger, 16603, TE_GETITEM, 2469, 1)
	MisBeginAction(AddTrigger, 16604, TE_GETITEM, 2470, 1)
	MisBeginAction(AddTrigger, 16605, TE_GETITEM, 2474, 1)
	MisBeginAction(AddTrigger, 16606, TE_GETITEM, 2478, 1)
	MisBeginAction(AddTrigger, 16607, TE_GETITEM, 2484, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Помоги <rВильяму Тернеру> (516,407) собрать ингридиенты, чтобы он смог закончить свою работу.")

	MisNeed(MIS_NEED_ITEM, 2463, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2468, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 2469, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 2470, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 2474, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2478, 1, 60, 1)
	MisNeed(MIS_NEED_ITEM, 2484, 1, 70, 1)

	MisHelpTalk("<t>Я надеюсь на тебя, это же не сложно?")
	MisResultTalk("<t>Замечательно, теперь я смогу закончить необходимые инструменты, чтобы постигнуть тайну Музея.")
	MisBeginCondition(NoRecord, 1660)
	MisResultCondition(HasMission, 1660)
	MisResultCondition(HasItem, 2463, 1)
	MisResultCondition(HasItem, 2468, 1)
	MisResultCondition(HasItem, 2469, 1)
	MisResultCondition(HasItem, 2470, 1)
	MisResultCondition(HasItem, 2474, 1)
	MisResultCondition(HasItem, 2478, 1)
	MisResultCondition(HasItem, 2484, 1)
	MisResultAction(TakeItem, 2463, 1)
	MisResultAction(TakeItem, 2468, 1)
	MisResultAction(TakeItem, 2469, 1)
	MisResultAction(TakeItem, 2470, 1)
	MisResultAction(TakeItem, 2474, 1)
	MisResultAction(TakeItem, 2478, 1)
	MisResultAction(TakeItem, 2484, 1)
	MisResultAction(ClearMission, 1660)
	MisResultAction(SetRecord, 1660)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,600,600)
	MisResultAction(GiveNpcMission, 6361, "Марк Тернер", 12)

	InitTrigger()
	TriggerCondition(1, IsItem, 2463)
	TriggerAction(1, AddNextFlag, 1660, 10, 1)
	RegCurTrigger(16601)

	InitTrigger()
	TriggerCondition(1, IsItem, 2468)
	TriggerAction(1, AddNextFlag, 1660, 20, 1)
	RegCurTrigger(16602)

	InitTrigger()
	TriggerCondition(1, IsItem, 2469)
	TriggerAction(1, AddNextFlag, 1660, 30, 1)
	RegCurTrigger(16603)

	InitTrigger()
	TriggerCondition(1, IsItem, 2470)
	TriggerAction(1, AddNextFlag, 1660, 40, 1)
	RegCurTrigger(16604)

	InitTrigger()
	TriggerCondition(1, IsItem, 2474)
	TriggerAction(1, AddNextFlag, 1660, 50, 1)
	RegCurTrigger(16605)

	InitTrigger()
	TriggerCondition(1, IsItem, 2478)
	TriggerAction(1, AddNextFlag, 1660, 60, 1)
	RegCurTrigger(16606)

	InitTrigger()
	TriggerCondition(1, IsItem, 2484)
	TriggerAction(1, AddNextFlag, 1660, 70, 1)
	RegCurTrigger(16607)


--Таинственные Бермуды
	DefineMission(6361, "Таинственные Бермуды",1661)

	MisBeginTalk("<t>Если интересно, то изменения Карибов начались с Бермуд. <rСтраж Бермуд> (669,1064) не является защитником древних реликвий. Он из простых смертных с Весны. Он тебе все расскажет.")
	MisBeginCondition(NoRecord, 1661)
	MisBeginCondition(NoMission,1661)
	MisBeginCondition(HasRecord, 1660)
	MisBeginAction(AddMission, 1661)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Отыщите <rСтража Бермуд> (669,1064) в <bЗаливе Сокровищ> и распросите его об изменениях.")

	MisHelpTalk("<t>Бермуды - очень загадочное место. Даже мой хороший друг Джек опасается наведываться туда.")
	MisResultCondition(AlwaysFailure)

--Таинственные Бермуды
	DefineMission(6362, "Таинственные Бермуды",1661, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Привет, да, собственно с Карибов и начались все перемены.")
	MisResultCondition(NoRecord, 1661)
	MisResultCondition(HasMission, 1661)
	MisResultAction(ClearMission, 1661)
	MisResultAction(SetRecord, 1661)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6363, "Страж Бермуд", 2)

--Загадочные стражи
	DefineMission(6363, "Загадочные стражи",1662)

	MisBeginTalk("<t>Это место ведет к исчезнувшим древним руинам. Не так давно, здесь появились несколько стражей, а перемены в них сказались на изменениях всего Карибского архипелага. Но я человек, поэтому со мной ничего и не произошло.<n><t>Ты храбрый воин и сможешь в одиночку добраться к башне, где живет <rХакинсон> (513,269). Он поможет тебе разобраться в этом вопросе.")
	MisBeginCondition(NoRecord, 1662)
	MisBeginCondition(NoMission,1662)
	MisBeginCondition(HasRecord, 1661)
	MisBeginAction(AddMission, 1662)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Распроси <rХакинсона> (513,269) о причинах изменений.")

	MisHelpTalk("<t>Отправляйся на 6 этаж <bОдинокой башни> и отыщи там <rХакинсон> (513,269). Он поможешь разобраться с переменами стражей.")
	MisResultCondition(AlwaysFailure)

--Загадочные стражи
	DefineMission(6364, "Загадочные стражи",1662, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>До тебя приходило множество людей, но никто из них не решался рискнуть. Ты готов?")
	MisResultCondition(NoRecord, 1662)
	MisResultCondition(HasMission, 1662)
	MisResultAction(ClearMission, 1662)
	MisResultAction(SetRecord, 1662)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6365, "Хакинсон", 6)

--Наставление Хакинсона
	DefineMission(6365, "Наставление Хакинсона",1663)

	MisBeginTalk("<t>Все началось с Богини Кары. После разрыва с Виллем у нее началась истерика, и, решив напакостить, изменила сознание стражей.<n><t>Отправляйся на <bНебеса> к <rБогине> (1755,908), она расскажет тебе как решить эту проблему.")
	MisBeginCondition(NoRecord, 1663)
	MisBeginCondition(NoMission,1663)
	MisBeginCondition(HasRecord, 1662)
	MisBeginAction(AddMission, 1663)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Отправляйся на <bНебеса> к <rБогине> (1755,908) и разберись с проблемой стражей.")

	MisHelpTalk("<t>Богиня, ты не хочешь, чтобы люди видели, как ты страдаешь?")
	MisResultCondition(AlwaysFailure)

--Наставление Хакинсона
	DefineMission(6366, "Наставление Хакинсона",1663, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Мои люди... Ах, ты действительно решил, что сможешь разрешить эту проблему?")
	MisResultCondition(NoRecord, 1663)
	MisResultCondition(HasMission, 1663)
	MisResultAction(ClearMission, 1663)
	MisResultAction(SetRecord, 1663)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6367, "Богиня", 3)

--Просьба богини
	DefineMission(6367, "Просьба богини",1664)

	MisBeginTalk("<t>Я знаю, что тысячелетиями я поступала неправильно. Я не знаю как реабилитировать себя и Вилля. Я здесь, потому что надеюсь, что люди смогут попасть сюда и переродиться. Я совершила ужасную ошибку. Изменения в сердцах стражников - моя вина. Темная сторона силы проникла в них, но вернуть все на места я, увы, не могу.<n><t>Спасти их души может только Вилль. Я надеюсь, что еще увижу его... Но пока я этого сделать не могу. Встреться с ним вместо меня - он все поймет.")
	MisBeginCondition(NoRecord, 1664)
	MisBeginCondition(NoMission,1664)
	MisBeginCondition(HasRecord, 1663)
	MisBeginAction(AddMission, 1664)
	MisBeginAction(GiveItem, 6219, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Отыщи <rВиля с Севера> (715,1135), чтобы он помог разобраться со стражами.")

	MisHelpTalk("<t>Вилль, Вилль, я хочу тебя, правда, Я очень хочу тебя увидеть...")
	MisResultCondition(AlwaysFailure)

--Просьба богини
	DefineMission(6368, "Просьба богини",1664, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Кара! Ты не разрушила мир, люди не отреклись от тебя..! Я виноват, я помогу тебе решить эти проблемы!")
	MisResultCondition(NoRecord, 1664)
	MisResultCondition(HasMission, 1664)
	MisResultCondition(HasItem, 6219, 1)
	MisResultAction(TakeItem, 6219, 1)
	MisResultAction(ClearMission, 1664)
	MisResultAction(SetRecord, 1664)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6369, "Виль с Севера", 6)

--Усилие бога
	DefineMission(6369, "Усилие бога",1665)

	MisBeginTalk("<t>Каре очень больно, я понимаю; стражи страдают, и это я понимаю. Люди зовут меня Богом, но есть вещи, которые мне не подвластны. Я не могу влезть в душу стражам и тут мне понадобится твоя помощь.<n><t>Ты должен отправится к <rСтражу реликвии Авроры> (376,376). Он скажет, что делать дальше!")
	MisBeginCondition(NoRecord, 1665)
	MisBeginCondition(NoMission,1665)
	MisBeginCondition(HasRecord, 1664)
	MisBeginAction(AddMission, 1665)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Посетите <rСтраж реликвии Авроры> (376,376).")

	MisHelpTalk("<t>Я уверен, что все будет хорошо и тогда я смогу увидеть Кару...")
	MisResultCondition(AlwaysFailure)

--Усилие бога
	DefineMission(6370, "Усилие бога",1665, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Наконец-то, ты разобрался с этим? Хорошо, я не спешу...")
	MisResultCondition(NoRecord, 1665)
	MisResultCondition(HasMission, 1665)
	MisResultAction(ClearMission, 1665)
	MisResultAction(SetRecord, 1665)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6371, "Страж реликвии Авроры", 2)

--Испытание Авроры
	DefineMission(6371, "Испытание Авроры",1666)

	MisBeginTalk("<t>Край Авроры разделен на две зоны. На втором уровне самые мощные чудовища, которые свирепеют, когда клон Кары появляется там.<n><t>Если он пойдет в Край Тьмы, то последствия будут невообразимы; глубоко в леса этого места есть страж... Разберись с Карой, но для начала ты должен пройти испытанния <rСтража реликвии Авроры> (376,376), и затем принести ему <bРуну учтивости>.")
	MisBeginCondition(NoRecord, 1666)
	MisBeginCondition(NoMission,1666)
	MisBeginCondition(HasRecord, 1665)
	MisBeginAction(AddMission, 1666)
	MisBeginAction(AddTrigger,16661, TE_GETITEM,6231, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>В глубинах края есть страж, который ждет, чтобы ему принесли <bРуну Учтивости>.")
	MisNeed(MIS_NEED_ITEM, 6231, 1, 10, 1)

	MisHelpTalk("<t>Нельзя ли побыстрее? Я не желаю ждать тебя слишком долго.")
	MisResultTalk("<t>Прелестно! Ты самый достоный из всех людей, выбранных Виллем и Карой!")
	MisResultCondition(HasMission, 1666)
	MisResultCondition(NoRecord,1666)
	MisResultCondition(HasItem, 6231, 1)
	MisResultAction(TakeItem, 6231, 1)
	MisResultAction(ClearMission, 1666)
	MisResultAction(SetRecord, 1666)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,700,700)
	MisResultAction(GiveNpcMission, 6619, "Страж реликвии Авроры", 3)

	InitTrigger()
	TriggerCondition(1, IsItem, 6231)
	TriggerAction(1, AddNextFlag, 1666, 10, 1)
	RegCurTrigger(16661)

--Сообщение хранителя реликвии Авроры
	DefineMission(6619 , "Сообщение хранителя реликвии Авроры",1857)

	MisBeginTalk("<t>Ты подтвердил свои способности и теперь следуй указаниям <rСтатуи Вилля> (377,417).")
	MisBeginCondition(NoRecord, 1857)
	MisBeginCondition(NoMission,1857)
	MisBeginCondition(HasRecord, 1666)
	MisBeginAction(AddMission, 1857)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "Найти <rСтатую Вилля> (377,417).")

	MisHelpTalk("<t>Быстрее, отважнее, смелее.")
	MisResultCondition(AlwaysFailure)

--Долгий путь
	DefineMission(6372, "Долгий путь",1667)

	MisBeginTalk("<t>Ты выполнил задание Авроры, теперь ты сможешь справится и с призраком Богини. Это очень сложно, но я надеюсь, что ты справишься! Все в твоих руках! Удачи!<n><t>Как только ты её убьёшь найди меня и получишь свою награду.")
	MisBeginCondition(NoRecord, 1667)
	MisBeginCondition(NoMission,1667)
	MisBeginCondition(HasRecord, 1857)
	MisBeginAction(AddMission, 1667)

	MisBeginAction(AddTrigger, 16671, TE_KILL, 1109, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>Уничтожь <bЯростную Кары> и освободи край Авроры. После отчитайся перед <rСтатуей Вилля> (377,417).")

	MisNeed(MIS_NEED_KILL, 1109, 1, 10, 1)

	MisHelpTalk("<t>Быстрее, еще быстрее, и совсем быстро! Я очень волнуюсь!")
	MisResultTalk("<t>Спасибо, что освободил край Авроры. Теперь он в надежных руках и Тьма покинет нас.")

	MisBeginCondition(NoRecord, 1667)
	MisResultCondition(HasMission, 1667)
	MisResultCondition(HasFlag, 1667, 10)
	MisResultAction(ClearMission, 1667)
	MisResultAction(SetRecord, 1667)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,700,700)
	MisResultAction(GiveNpcMission, 6373, "Статуя Вилля",2)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1109)
	TriggerAction(1, AddNextFlag, 1667, 10, 1)
	RegCurTrigger(16671)

--Сражение в краю Тьмы
	DefineMission(6373, "Сражение в краю Тьмы",1668)

	MisBeginTalk("<t>Ты уже решил проблему края Авроры, теперь настала очередь края Тьмы. Отыщи <rСтража реликвии Тьмы> (360,117), он введет тебя в курс дела. Твоя помощь не останется незамеченой.")
	MisBeginCondition(NoRecord, 1668)
	MisBeginCondition(NoMission,1668)
	MisBeginCondition(HasRecord, 1667)
	MisBeginAction(AddMission, 1668)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t>Отыщи <rСтража реликвии Тьмы> (360,117) и распроси его о произошедшем.")

	MisHelpTalk("<t>Когда со всем разберешься, не задерживайся у стража.")
	MisResultCondition(AlwaysFailure)

--Сражение в краю Тьмы
	DefineMission(6374, "Сражение в краю Тьмы",1668, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Ты разобрался с проблемами в краю Авроры? Долго же я ждал тебя.")
	MisResultCondition(NoRecord, 1668)
	MisResultCondition(HasMission, 1668)
	MisResultAction(ClearMission, 1668)
	MisResultAction(SetRecord, 1668)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6375, "Страж реликвии Тьмы", 2)

--Проклятие
	DefineMission(6375, "Проклятие",1669)

	MisBeginTalk("<t>Край Тьмы погряз в разврате и находится сейчас в упадочном состоянии. Мне едва удается выживать, а вот мой брат перешел на темную сторону...<n><t>Он где-то на юге у развалин и я надеюсь, что ты сможешь его найти и убить.")
	MisBeginCondition(NoRecord, 1669)
	MisBeginCondition(NoMission,1669)
	MisBeginCondition(HasRecord, 1668)
	MisBeginAction(AddMission, 1669)

	MisBeginAction(AddTrigger, 16691, TE_KILL, 1113, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "Убей <bДефектного защитника реликвий> и после найди <rСтража реликвии Тьмы> (360,117).")

	MisNeed(MIS_NEED_KILL, 1113, 1, 10, 1)

	MisHelpTalk("<t>Бедный брат, ты недостаточно силен, чтобы выполнить задание?")
	MisResultTalk("<t>Спасибо, что избавился от него, но я сожалею. Скоро все должно закончиться.")

	MisBeginCondition(NoRecord, 1669)
	MisResultCondition(HasMission, 1669)
	MisResultCondition(HasFlag, 1669, 10)
	MisResultAction(ClearMission, 1669)
	MisResultAction(SetRecord, 1669)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,700,700)
	MisResultAction(GiveNpcMission, 6376, "Страж реликвии Тьмы", 3)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1113)
	TriggerAction(1, AddNextFlag, 1669, 10, 1)
	RegCurTrigger(16691)

--Невинный вздох
	DefineMission(6376, "Невинный вздох",1670)

	MisBeginTalk("<t>О, для чего это все? Кара, ты должна избавится от ярости. Это приводит к хаосу. Примеры искать не надо: материк Шайтана, Карибы или беспорядки в Краях Авроры и Тьмы. Бог или человек, или страж или они все...<n><t>Свет должен проникнуть во Тьму! Отыщи <rИзображение Кары> (360,117), возможно она расскажет тебе свою тайну.")
	MisBeginCondition(NoRecord, 1670)
	MisBeginCondition(NoMission,1670)
	MisBeginCondition(HasRecord, 1669)
	MisBeginAction(AddMission, 1670)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "<t><bСтраж реликвии Тьмы> просит отыскать <rИзображение Кары> (360,117).")

	MisHelpTalk("<t>Статуя Богини Кары находится на втором уровне. Ты сразу же ее увидишь,как только попадешь туда.")
	MisResultCondition(AlwaysFailure)

--Невинный вздох
	DefineMission(6377, "Невинный вздох",1670, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>В любом случае, виновен или нет - страх у них в голове.")
	MisResultCondition(NoRecord, 1670)
	MisResultCondition(HasMission, 1670)
	MisResultAction(ClearMission, 1670)
	MisResultAction(SetRecord, 1670)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6378, "Изображение Кары", 2)

--Образ реликвии
	DefineMission(6378, "Образ реликвии",1671)

	MisBeginTalk("<t>На втором уровне живет чудовище - <bМорфей>. Его род был сослан, потому что, если я ненавижу мир - нет никакого шанс их спасти! Теперь они переполнены злобой и готовы выплеснуть ее и все это отразится на стражах.<n><t>Возможно, пока не позно, нужно избавится от них. Думаю людям нужно знать о его существовании.")
	MisBeginCondition(NoRecord, 1671)
	MisBeginCondition(NoMission,1671)
	MisBeginCondition(HasRecord, 1670)
	MisBeginAction(AddMission, 1671)

	MisBeginAction(AddTrigger, 16711, TE_KILL, 1117, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "<t>На втором уровне края Тьмы уничтожь <bМорфея> и возвращайся к <rИзображению Кары> (360,117).")

	MisNeed(MIS_NEED_KILL, 1117, 1, 10, 1)

	MisHelpTalk("<t>Где спаситель, где родоначальник, неужили настал конец?")
	MisResultTalk("<t>Благодарю за помощь. Страж снова вернется в свое нормальное состояние и больше не причинит людям вреда.")

	MisBeginCondition(NoRecord, 1671)
	MisResultCondition(HasMission, 1671)
	MisResultCondition(HasFlag, 1671, 10)
	MisResultAction(ClearMission, 1671)
	MisResultAction(SetRecord, 1671)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,700,700)
	MisResultAction(GiveNpcMission, 6621, "Изображение Кары", 4)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1117)
	TriggerAction(1, AddNextFlag, 1671, 10, 1)
	RegCurTrigger(16711)

--Доклад Виллю
	DefineMission(6621 , "Доклад Виллю",1858)

	MisBeginTalk("<t>Ты разобрался со злом. Срочно доложи об этом <rВиллю с Севера> (715,1135).")
	MisBeginCondition(NoRecord, 1858)
	MisBeginCondition(NoMission,1858)
	MisBeginCondition(HasRecord, 1671)
	MisBeginAction(AddMission, 1858)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisNeed(MIS_NEED_DESP, "Доставь хорошие новости <rВиллю с Севера> (715,1135).")

	MisHelpTalk("<t>Быстрее, смельчак!")
	MisResultCondition(AlwaysFailure)

--Передать сообщение Вилля
	DefineMission(6379, "Передать сообщение Вилля",1672)

	MisBeginTalk("<t>Проблемы стражей решены. Я также буду тебе признателен, мой легионер, если ты как можно скорее расскажешь хорошие новости <rБогине> (1755,908) и отдашь ей мой <bКристалл Любви>.")
	MisBeginCondition(NoRecord, 1672)
	MisBeginCondition(NoMission,1672)
	MisBeginCondition(HasRecord, 1858)
	MisBeginAction(AddMission, 1672)
	MisBeginAction(GiveItem, 6220, 1, 4)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "Доложи хорошие новости <rБогине> (1755,908) и передай <bКристалл Любви Вилля>.")

	MisHelpTalk("<t>Я чувствую себя гораздо лучше и надеюсь мир изменится в лучшую сторону.")
	MisResultCondition(AlwaysFailure)

--Передать сообщение Вилля
	DefineMission(6380, "Передать сообщение Вилля",1672, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Спасибо за помощь! Вилль и я, также как и стражи навсегда запомним твой подвиг! Ты спаситель мира!")
	MisResultCondition(NoRecord, 1672)
	MisResultCondition(HasMission, 1672)
	MisResultCondition(HasItem, 6220, 1)
	MisResultAction(TakeItem, 6220, 1)
	MisResultAction(ClearMission, 1672)
	MisResultAction(SetRecord, 1672)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6381, "Богиня", 7)

--Ярость Морфея
	DefineMission(6381, "Ярость Морфея",1673)

	MisBeginTalk("<t>Ничего не могу поделать... Вся проблема в том, что я не могу их спасти. Но теперь они находятся в самом центре острова - это их мир...<n><t>Ледяная крепость зовется <bЛедынью>. Отправляйся туда и найди <rНаставника Охотников - Рэя> (1365,570).")
	MisBeginCondition(NoRecord, 1673)
	MisBeginCondition(NoMission,1673)
	MisBeginCondition(HasRecord, 1672)
	MisBeginAction(AddMission, 1673)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "Найди <rНаставника Охотников - Рэя> (1365,570) в <bЛедыне>.")

	MisHelpTalk("<t>Не знаю как это остановить. Надо бы предаться воспоминаниям.")
	MisResultCondition(AlwaysFailure)

--Ярость Морфея
	DefineMission(6382, "Ярость Морфея",1673, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Настоящую Богиню Кару вы представляете... Хмм... Ну я как бэ не совсем то имел ввиду, о чем вы подумали.")
	MisResultCondition(NoRecord, 1673)
	MisResultCondition(HasMission, 1673)
	MisResultAction(ClearMission, 1673)
	MisResultAction(SetRecord, 1673)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6383, "Наставник Охотников - Рэй", 26)

--Морфейка
	DefineMission(6383, "Морфейка",1674)

	MisBeginTalk("<t>Девочка, с которой я советуюсь время от времени, находится около Громограда. У нее обычные человеческие корни, но она выросла и узнала, что относится к легендарному роду.<n><t>Я сам потомок Ганской империи, некогда мои предки отправились за моря и обосновались тут. Я спас эту девочку, и в отличии от меня, она была очень благодарна.<n><t>Если у тебя есть каки-то вопросы, отыщи <rМорфейку - Фрею> (651,1585) около <bГромограда>.")
	MisBeginCondition(NoRecord, 1674)
	MisBeginCondition(NoMission,1674)
	MisBeginCondition(HasRecord, 1673)
	MisBeginAction(AddMission, 1674)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )

	MisNeed(MIS_NEED_DESP, "Поговори с <rМорфейкой - Фреей> (651,1585) около <bГромограда>.")

	MisHelpTalk("<t>Говорят, что все-таки они плохи.")
	MisResultCondition(AlwaysFailure)

--Морфейка
	DefineMission(6384, "Морфейка",1674, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>... ... ... ... ... ... ... ...")
	MisResultCondition(NoRecord, 1674)
	MisResultCondition(HasMission, 1674)
	MisResultAction(ClearMission, 1674)
	MisResultAction(SetRecord, 1674)
	MisResultAction(AddExpAndType,2,500,500)
	MisResultAction(GiveNpcMission, 6385, "Морфейка - Фрея", 7)

--Человек на задании
	DefineMission(6385, "Человек на задании",1675)

	MisBeginTalk("<t>ашел, что искал? Если люди спрашивают о моих делах, мне не чего особо сказать, но, если ты поможешь мне избавится от <rЛорда Душ Стужи> (1595,687) с <bЗимних островов>, тогда я расскажу тебе нечто особенное.")
	MisBeginCondition(NoRecord, 1675)
	MisBeginCondition(NoMission,1675)
	MisBeginCondition(HasRecord, 1674)
	MisBeginAction(AddMission, 1675)

	MisBeginAction(AddTrigger, 16751, TE_KILL, 1101, 1)
	MisCancelAction(SystemNotice, "Этот квест не может быть отменён" )
	MisPrize(MIS_PRIZE_ITEM, 8288, 1, 4)
	MisPrizeSelAll()

	MisNeed(MIS_NEED_DESP, "Помоги <rМорфейке - Фрее> (651,1585) и убей <rЛорда Душ Стужи> (1595,687) с <bЗимних островов>.")

	MisNeed(MIS_NEED_KILL, 1101, 1, 10, 1)

	MisHelpTalk("<t>Еще не все? Ты просто бесполезен!")
	MisResultTalk("<t>Ты очень сильно мне помог! Я расскажу тебе. Я из племени Ганы и мы планируем вторгнутся на главный материк. Это случится в тот день, когда наши силы будут готовы нести возмедие!")
	MisBeginCondition(NoRecord, 1675)
	MisResultCondition(HasMission, 1675)
	MisResultCondition(HasFlag, 1675, 10)
	MisResultAction(ClearMission, 1675)
	MisResultAction(SetRecord, 1675)
	MisResultAction(AddMoney,300000,300000)
	MisResultAction(AddExpAndType,2,50000,50000)

	InitTrigger()
	TriggerCondition(1, IsMonster, 1101)
	TriggerAction(1, AddNextFlag, 1675, 10, 1)
	RegCurTrigger(16751)

--Сообщение хранителя реликвии Авроры
	DefineMission(6620, "Сообщение хранителя реликвии Авроры",1857, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Смельчак, ты прошел испытание Авроры. Ты способен помочь мне навести порядок в мире.")
	MisResultCondition(NoRecord, 1857)
	MisResultCondition(HasMission, 1857)
	MisResultAction(ClearMission, 1857)
	MisResultAction(SetRecord, 1857)
	MisResultAction(GiveNpcMission, 6372, "Статуя Вилля", 1)

	--Доклад Виллю
	DefineMission(6622, "Доклад Виллю",1858, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Смельчак, ты разобрался со злом в краю Тьмы, спасибо тебе.")
	MisResultCondition(NoRecord, 1858)
	MisResultCondition(HasMission, 1858)
	MisResultAction(ClearMission, 1858)
	MisResultAction(SetRecord, 1858)
	MisResultAction(GiveNpcMission, 6379, "Виль с Севера", 7)

end
HistoryMission001()