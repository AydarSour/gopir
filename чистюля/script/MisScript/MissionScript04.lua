------------------------------------------------------------
--missionscript04.lua Created by Robin 2005.05.27.
--
--ЦчПЯИООс
------------------------------------------------------------
print( "‡ Јаг§Є  missionscript04.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck





function CenterMission001()

	DefineMission( 400, "Блуждающие существа", 400 )
	
	MisBeginTalk( "<t>Густой лес - это опасное место, где рыскают свирепые медведи.<n><t>Тем не менее, мой племянник, <bBerry>, живет в <pЗаброшенных Шахтах>, которые находятся на краю леса. Смелый странник, не мог бы ты навестить его от моего имени и убедиться в том, что с ним все в порядке?" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 400)
	MisBeginCondition(NoMission, 400)
	MisBeginAction(AddMission, 400)
	MisCancelAction(ClearMission, 400)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Берри в (1893, 2812)")
	
	MisHelpTalk("Берри всегда играет в окрестности Заброшенных Шахт. Надеюсь, что у него все хорошо.")
	MisResultCondition(AlwaysFailure )

-----------------------------------Т°КЮіцГ»µДЙ­БЦ
	DefineMission( 401, "Блуждающие существа", 400, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Со мной все в порядке. Медвежата не такие уж и опасные, как думает мой дядя. На самом деле, я люблю с ними играть.")
	MisResultCondition(NoRecord, 400)
	MisResultCondition(HasMission, 400)
	MisResultAction(ClearMission, 400 )
	MisResultAction(SetRecord, 400 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)



----------------------------іЩµЅµДЙіД®ЙМВГ
	DefineMission( 402, "Позднее прибытие", 401 )
	
	MisBeginTalk( "<t>Ку! Ты как раз вовремя! Между мной и купцами из пустыни сложились довольно близкие отношения. Каждый год они приезжают сюда для торговли. Тем не менее, в этом году они очень сильно задерживаются, и от них нет никаких вестей.<n><t>Не мог бы ты отыскать <bМаркуса> в <pОазисе> и разузнать, что же их задержало?" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 401)
	MisBeginCondition(NoMission, 401)
	MisBeginAction(AddMission, 401)
	MisCancelAction(ClearMission, 401)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Маркусом (789, 3112)")
	
	MisHelpTalk("Эй! Почему ты до сих пор здесь? Тебе удалось разыскать Маркуса?")
	MisResultCondition(AlwaysFailure )

-----------------------------------іЩµЅµДЙіД®ЙМВГ
	DefineMission( 403, "Позднее прибытие", 401, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>О, мы не можем путешествовать из-за участившихся песчаных бурь, поэтому мы должны отложить встречу. Не переживай, мы обязательно заглянем в Аргент. Нам это выгодно!")
	MisResultCondition(NoRecord, 401)
	MisResultCondition(HasMission, 401)
	MisResultAction(ClearMission, 401 )
	MisResultAction(SetRecord, 401 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)



----------------------------±щФ­МЅПХ
	DefineMission( 404, "Исследование тундры", 402 )
	
	MisBeginTalk( "<t>Здраствуй дружок, ты быстро растешь. Эти животные тебе больше не ровня.<n><t>Я слышал, что в <pПустошах Ледыни> собираются нанять новых искателей приключений. Почему бы тебе не попробовать? Я напишу рекомендательное письмо для <bНаны>." )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 402)
	MisBeginCondition(NoMission, 402)
	MisBeginAction(AddMission, 402)
	MisCancelAction(ClearMission, 402)
		
	MisNeed(MIS_NEED_DESP, "Найдите Нану (798, 369) для дальнейших заданий")
	
	MisHelpTalk("Пожалуйста, найди Нану как можно быстрее. Она тебя ждет.")
	MisResultCondition(AlwaysFailure )

-----------------------------------±щФ­МЅПХ
	DefineMission( 405, "Исследование тундры", 402, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Я верю в твои способности поскольку <bПитер> порекомендовал тебя.<n><t>Тебе бы стоило его отблагодарить.")
	MisResultCondition(NoRecord, 402)
	MisResultCondition(HasMission, 402)
	MisResultAction(ClearMission, 402 )
	MisResultAction(SetRecord, 402 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------ПтЧЕЙіД®
	DefineMission( 406, "В пустыню!", 403 )
	
	MisBeginTalk( "<t>Боже мой! Никогда не видел кого-то, кто бы развивался также быстро , как и ты.<n><t>К сожалению, местные монстры на окраине Ледыни больше не помеха тебе. Если интересно, я могу порекомендовать тебе <bКавойски> из <pОазиса>, ему нужна помощь." )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 403)
	MisBeginCondition(NoMission, 403)
	MisBeginAction(AddMission, 403)
	MisCancelAction(ClearMission, 403)
		
	MisNeed(MIS_NEED_DESP, "Найдите Кавойски (779, 3098)")
	
	MisHelpTalk("Кавойски очень добр. Не стоит стесняться его.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ПтЧЕЙіД®
	DefineMission( 407, "В пустыню!", 403, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Мне нужна твоя помощь. Пожалуйста, будь неподалеку и помоги мне. Спасибо!")
	MisResultCondition(NoRecord, 403)
	MisResultCondition(HasMission, 403)
	MisResultAction(ClearMission, 403 )
	MisResultAction(SetRecord, 403 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------АґЧФ°ЧТшµДСыЗл
	DefineMission( 408, "Приглашение в Аргент", 404 )
	
	MisBeginTalk( "<t>Послушай, друг мой. Ледынь- очень холодный город, с непривычки можно даже заболеть.<n><t>Люди из <pЗаброшенных шахт> совсем недавно просили у меня помощи.<n><t>Если не против, не мог бы ты отправиться туда и разыскать <bКентаро>? " )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 404)
	MisBeginCondition(NoMission, 404)
	MisBeginAction(AddMission, 404)
	MisCancelAction(ClearMission, 404)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Кентаро (1894, 2798)")
	
	MisHelpTalk("Ты еще здесь? Кентаро срочно нужна твоя помощь!")
	MisResultCondition(AlwaysFailure )

-----------------------------------АґЧФ°ЧТшµДСыЗл
	DefineMission( 409, "Приглашение в Аргент", 404, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Я верю в твои силы, поскольку <bПитер> ручался за тебя.<n><t>Тебе стоило бы его поблагодарить за рекомендации.")
	MisResultCondition(NoRecord, 404)
	MisResultCondition(HasMission, 404)
	MisResultAction(ClearMission, 404 )
	MisResultAction(SetRecord, 404 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------Й§¶ЇµД±щФ­
	DefineMission( 410, "Движение тундры", 405 )
	
	MisBeginTalk( "<t>Эй! Ты как раз вовремя.<n><t><bДжернис> в беде в <pПустошах Ледыни> и ему нужна помощь.<n><t>Поскольку здесь почти нечего делать, почему бы тебе туда не сгонять?" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 405)
	MisBeginCondition(NoMission, 405)
	MisBeginAction(AddMission, 405)
	MisCancelAction(ClearMission, 405)
		
	MisNeed(MIS_NEED_DESP, "Найдите Джернис (803, 352)")
	
	MisHelpTalk("Почему ты до сих пор здесь тусуешься? Отыщи Джернис.")
	MisResultCondition(AlwaysFailure )

-----------------------------------Й§¶ЇµД±щФ­
	DefineMission( 411, "Движение тундры", 405, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Поскольку тебя порекомендовал Одессий, я верю, что ты справишься.<n><t>Можешь послоняться поблизости, а я тем временем приму необходимые меры.")
	MisResultCondition(NoRecord, 405)
	MisResultCondition(HasMission, 405 )
	MisResultAction(ClearMission, 405 )
	MisResultAction(SetRecord, 405 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------КЬЧиµДОпЧК
	DefineMission( 412, "Торговое эмбарго", 406 )
	
	MisBeginTalk( "<t>Привет, мне нужна помощь. Моей задачей явлется доставка ресурсов в <pОазис>. Как бы то ни было, на путешественников в последнее время стали нападать волки. Ты не мог бы доставить письмо <bМаркусу> в Оазис и ,возможно, он придумает как мне добраться до него в целости и сохранности?" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 406)
	MisBeginCondition(NoMission, 406)
	MisBeginAction(AddMission, 406)
	MisCancelAction(ClearMission, 406)
		
	MisNeed(MIS_NEED_DESP, "Найдите Маркуса (789, 3112)")
	
	MisHelpTalk("Не мог бы ты поспешить? Эти ресурсы очень важны в Оазисе.")
	MisResultCondition(AlwaysFailure )

-----------------------------------КЬЧиµДОпЧК
	DefineMission( 413, "Торговое эмбарго", 406, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Спасибо большое! Без этих ресурсов мы бы не прожили даже до следующего месяца.")
	MisResultCondition(NoRecord, 406)
	MisResultCondition(HasMission, 406 )
	MisResultAction(ClearMission, 406 )
	MisResultAction(SetRecord, 406 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------УВХЯХРДј
	DefineMission( 414, "Вербовка воителей", 407 )
	
	MisBeginTalk( "<t>Послушай меня, дружок. Шайтан - очень пыльный и опасный для жизни город.<n><t><pЗаброшенные шахты> просили о помощи совсем недавно.<n><t>Ты не мог бы отправиться туда и найти <bКентаро>?" )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 407)
	MisBeginCondition(NoMission, 407)
	MisBeginAction(AddMission, 407)
	MisCancelAction(ClearMission, 407)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Кентаро (1894, 2798)")
	
	MisHelpTalk("Как? Ты еще здесь? Кентаро нужна твоя помощь!")
	MisResultCondition(AlwaysFailure )

-----------------------------------УВХЯХРДј
	DefineMission( 415, "Вербовка воителей", 407, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>О, так <bРеслина> попросила тебя придти. Вообще-то, я не очень то ей доверяю.<n><t>Ну раз уж ты здесь...Ну, да ладно...")
	MisResultCondition(NoRecord, 407)
	MisResultCondition(HasMission, 407 )
	MisResultAction(ClearMission, 407 )
	MisResultAction(SetRecord, 407 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------±щіЗµДЕ®ЙсРЕНЅ
	DefineMission( 416, "Последователи Аши", 408 )
	
	MisBeginTalk( "<t>Ты как раз вовремя!<n><t>Мой хороший друг, <bБабушка Донг>, переехала в <pПустоши Ледыни> 10 лет назад, чтобы распространить свои знания о медицине. Но холод негативно сказывается на ее здоровье.<n><t>Мне нужен отважный доброволец, который передал бы ей мое благословение." )
	MisBeginCondition( LvCheck, ">", 9 )
	MisBeginCondition(NoRecord, 408)
	MisBeginCondition(NoMission, 408)
	MisBeginAction(AddMission, 408)
	MisCancelAction(ClearMission, 408)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Бабушкой Донг (795, 363)")
	
	MisHelpTalk("Я боюсь, как бы Бабушка Донг не откинула коньки.<n><t>Поторопись!")
	MisResultCondition(AlwaysFailure )

-----------------------------------±щіЗµДЕ®ЙсРЕНЅ
	DefineMission( 417, "Последователи Аши", 408, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Спасибо, что передал благословение Святого Отца. Мне уже лучше!")
	MisResultCondition(NoRecord, 408)
	MisResultCondition(HasMission, 408 )
	MisResultAction(ClearMission, 408 )
	MisResultAction(SetRecord, 408 )
	MisResultAction(AddExp, 100, 100)
	MisResultAction(AddMoney, 300, 300)


----------------------------ГЬБЦМЅПХ
	DefineMission( 418, "Исследование джунглей", 409 )
	
	MisBeginTalk( "<t>Привет, вижу твою страсть к исследованиям.<n><t>Но это место не совсем для тебя. Поищи <pДуриана> в <pСкалистом уделе>. У него есть задание для тебя." )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 409)
	MisBeginCondition(NoMission, 409)
	MisBeginAction(AddMission, 409)
	MisCancelAction(ClearMission, 409)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Дурианом (1535, 3071)")
	
	MisHelpTalk("Ты так и не сдвинулся с места?<n><t>Быстрее, время никого не ждет!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ГЬБЦМЅПХ
	DefineMission( 419, "Исследование джунглей", 409, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Хоть <bВенона> и порекомендовала тебя, если ты мне не подойдешь, я не доверю тебе ни одного задания.")
	MisResultCondition(NoRecord, 409)
	MisResultCondition(HasMission, 409 )
	MisResultAction(ClearMission, 409 )
	MisResultAction(SetRecord, 409 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)



----------------------------іцРР¶«·Ѕ
	DefineMission( 420, "Путешествие на Восток", 410 )
	
	MisBeginTalk( "<t>О, я тебя знаю.<n><t>Твоя репутация распространилась далеко по пустыне. Эта гавань слишком мала для такого человека, как ты.<n><t>Может ты отправишься в <pРощу Акаций> и там найдешь применение своим способностям? <bСолару> сейчас нужен кто-то с твоими умениями." )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 410)
	MisBeginCondition(NoMission, 410)
	MisBeginAction(AddMission, 410)
	MisCancelAction(ClearMission, 410)
		
	MisNeed(MIS_NEED_DESP, "Найдите Солару (1202, 3179)")
	
	MisHelpTalk("Не задерживайся тут надолго. Беги в Рощу Акаций!")
	MisResultCondition(AlwaysFailure )

-----------------------------------іцРР¶«·Ѕ
	DefineMission( 421, "Путешествие на Восток", 410, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ого, я много о тебе слышал. У <bМаркуса> прямо таки чутье на таланты.<n><t>Пожалуйста, останься здесь и я тебя проинформирую о заданиях, которые нужно выполнить.")
	MisResultCondition(NoRecord, 410)
	MisResultCondition(HasMission, 410 )
	MisResultAction(ClearMission, 410 )
	MisResultAction(SetRecord, 410 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------С°ХТ±ЈпЪ
	DefineMission( 422, "В поисках телохранителя", 411 )
	
	MisBeginTalk( "<t>Ку, ты выглядишь уныло. Это потому что ты не можешь найти достойного противника тут? Если так, то позволь мне познакомить тебя с торговцем <bАлкаром> в <pБухте Атлантис>.<n><t>Его торговый путь простирается через опасный лес, и эта задача будет интересна таким, как ты!" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 411)
	MisBeginCondition(NoMission, 411)
	MisBeginAction(AddMission, 411)
	MisCancelAction(ClearMission, 411)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Алкаром (1059, 661)")
	
	MisHelpTalk("Почему тебе не отправиться на розыски Алкара в Бухту Атлантис?")
	MisResultCondition(AlwaysFailure )

-----------------------------------С°ХТ±ЈпЪ
	DefineMission( 423, "В поисках телохранителя", 411, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Поскольку ты от <bФей Фей>, Я приму все возможные меры, чтобы мы отправились в путь.")
	MisResultCondition(NoRecord, 411)
	MisResultCondition(HasMission, 411 )
	MisResultAction(ClearMission, 411 )
	MisResultAction(SetRecord, 411 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------Й­БЦМЅПХ
	DefineMission( 424, "Исследование леса", 412 )
	
	MisBeginTalk( "<t>Мне кажется, что ты любишь риск.<n><t>Жаль, что тут нет ничего интересного.<n><t>Я могу порекомендовать местечко под названием <pСкалистый Удел>. У меня там друг <bАлександис>, он точно даст тебе пару интересных поручений." )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 412)
	MisBeginCondition(NoMission, 412)
	MisBeginAction(AddMission, 412)
	MisCancelAction(ClearMission, 412)
		
	MisNeed(MIS_NEED_DESP, "Найдите Александиса (1526, 3089)")
	
	MisHelpTalk("Давай быстрее! Александис ждет тебя в Скалистом Уделе.")
	MisResultCondition(AlwaysFailure )

-----------------------------------Й­БЦМЅПХ
	DefineMission( 425, "Исследование леса", 412, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t><bКентаро> редко кого-то хвалит.<n><t>Поскольку он тебе доверяет, я найду подходящее задание для тебя.")
	MisResultCondition(NoRecord, 412)
	MisResultCondition(HasMission, 412 )
	MisResultAction(ClearMission, 412 )
	MisResultAction(SetRecord, 412 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------ПХѕіЦШЦШ
	DefineMission( 426, "Опасные времена", 413 )
	
	MisBeginTalk( "<t>О, а я хотел пойти тебя искать. Мой друг, <bСолар>, пострадал от рук песчанных бандитов несколько дней назад, когда искал сокровища. Сейчас он поправляется в <pРоще Акаций>.<n><t>Дорога туда очень опасна для меня. Не мог бы ты передать ему привет от меня?" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 413)
	MisBeginCondition(NoMission, 413)
	MisBeginAction(AddMission, 413)
	MisCancelAction(ClearMission, 413)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Соларом в (1202, 3179)")
	
	MisHelpTalk("Ты встретился с Соларом? Я беспокоюсь!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ПХѕіЦШЦШ
	DefineMission( 427, "Опасные времена", 413, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Все хорошо. Просто я уже не могу так быстро двигаться, как раньше. Не переживай, я очень скоро поправлюсь.<n><t>Спасибо за беспокойство!")
	MisResultCondition(NoRecord, 413)
	MisResultCondition(HasMission, 413 )
	MisResultAction(ClearMission, 413 )
	MisResultAction(SetRecord, 413 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------Ц§Ф®°ўАј±ИЛ№
	DefineMission( 428, "Подкрепление для Атлантиды", 414 )
	
	MisBeginTalk( "<t>Привет. Похоже здешние монстры уже не противники тебе. Ты был отличным защитником этой маленькой окраины все это время.<n><t>Один мой друг в <pБухте Атлантис> очень нуждается в твоей помощи. <n><t>Можешь разыскать <bЗурби> и постараться помочь ему?" )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 414)
	MisBeginCondition(NoMission, 414)
	MisBeginAction(AddMission, 414)
	MisCancelAction(ClearMission, 414)
		
	MisNeed(MIS_NEED_DESP, "Найдите Зурби в (1037, 671)")
	
	MisHelpTalk("Бухта Атлантис нуждается в твоей помощи.<n><t>Не стой тут, беги быстрее туда.")
	MisResultCondition(AlwaysFailure )

-----------------------------------Ц§Ф®°ўАј±ИЛ№
	DefineMission( 429, "Подкрепление для Атлантиды", 414, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Круто! Нам как раз нужна помощь.<n><t>Пожалуйста, не уходи!")
	MisResultCondition(NoRecord, 414)
	MisResultCondition(HasMission, 414 )
	MisResultAction(ClearMission, 414 )
	MisResultAction(SetRecord, 414 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------ґуїЄСЫЅз
	DefineMission( 430, "Пробуждение", 415 )
	
	MisBeginTalk( "<t>Внучок, если ты здесь останешься , то только потеряешь время.<n><t>Почему бы тебе не пойти и изучить мир пока ты еще молод? Мой ученик, <bАлександис>, сейчас проживает в <pСкалистом Уделе>.<n><t>Если ты скажешь, что ты от меня, он с радостью тебя примет." )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 415)
	MisBeginCondition(NoMission, 415)
	MisBeginAction(AddMission, 415)
	MisCancelAction(ClearMission, 415)
		
	MisNeed(MIS_NEED_DESP, "Найдите Александиса в (1526, 3089)")
	
	MisHelpTalk("Александис тебя ждет в Скалистом Уделе. Пожалуйста иди.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ґуїЄСЫЅз
	DefineMission( 431, "Пробуждение", 415, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Тебя отправил сюда <bСтарик-предсказатель>? Пожалуйста, чувствуй себя как дома.")
	MisResultCondition(NoRecord, 415)
	MisResultCondition(HasMission, 415 )
	MisResultAction(ClearMission, 415 )
	MisResultAction(SetRecord, 415 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)



----------------------------ЙіД®МЅПХ
	DefineMission( 432, "Исследование пустыни", 416 )
	
	MisBeginTalk( "<t>Привет, у тебя похоже страсть к исследованиям. Но это совсем не то место. Найди <bМомо> в <tРоще Акаций>.<n><t>У нее найдется пару заданий." )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 416)
	MisBeginCondition(NoMission, 416)
	MisBeginAction(AddMission, 416)
	MisCancelAction(ClearMission, 416)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Момо (1209, 3196)")
	
	MisHelpTalk("Чего ты ждешь? Иди в Рощу Акаций и найди Момо!")
	MisResultCondition(AlwaysFailure )


-----------------------------------ЙіД®МЅПХ
	DefineMission( 433, "Исследование пустыни", 416, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Хоть тебя и порекомендовала <bНана>, если ты мне не подходишь, я буду вынужден отказаться от твоих услуг.")
	MisResultCondition(NoRecord, 416)
	MisResultCondition(HasMission, 416 )
	MisResultAction(ClearMission, 416 )
	MisResultAction(SetRecord, 416 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------ПтДП·Ѕ
	DefineMission( 434, "Путешествие на юг", 417 )
	
	MisBeginTalk( "<t>Внучок, если ты здесь останешься, то только потеряешь время. Почему бы тебе не пойти и изучить мир пока ты еще молод? Мой ученик, <bГасардий>, сейчас проживает в <pБухте Атлантис>.<n><t>Если ты скажешь, что ты от меня, он с радостью тебя примет." )
	MisBeginCondition( LvCheck, ">", 19 )
	MisBeginCondition(NoRecord, 417)
	MisBeginCondition(NoMission, 417)
	MisBeginAction(AddMission, 417)
	MisCancelAction(ClearMission, 417)
		
	MisNeed(MIS_NEED_DESP, "Найти Гасардия в (1028, 649)")
	
	MisHelpTalk("Гасардий в Бухте Атлантис. Иди уже.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ПтДП·Ѕ
	DefineMission( 435, "Путешествие на юг", 417, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Эх, этот старичок все никак от меня не отстанет...<n><t>Ладно, забудь, раз уж ты здесь, тебе стоит остаться.<n><t>Мне все равно не хватает здесь рук.")
	MisResultCondition(NoRecord, 417)
	MisResultCondition(HasMission, 417 )
	MisResultAction(ClearMission, 417 )
	MisResultAction(SetRecord, 417 )
	MisResultAction(AddExp, 500, 500)
	MisResultAction(AddMoney, 550, 550)


----------------------------ГОПлєЈСу
	DefineMission( 436, "Море Мечты", 418 )
	
	MisBeginTalk( "<t>Oго, только не говори, что ты еще не исследовал море!?<n><t>Позволь мне представить тебе <bМорского советника - Алену> из <pАргента>. Она научит тебя всему, что необходимо." )
	MisBeginCondition( LvCheck, ">", 24 )
	MisBeginCondition(NoRecord, 418)
	MisBeginCondition(NoRecord, 419)
	MisBeginCondition(NoRecord, 420)
	MisBeginCondition(NoMission, 418)
	MisBeginCondition(NoMission, 419)
	MisBeginCondition(NoMission, 420)
	MisBeginAction(AddMission, 418)
	MisCancelAction(ClearMission, 418)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Аленой (2247, 2858)")
	
	MisHelpTalk("Алена в порту Аргента. Отправляйся к ней.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ГОПлєЈСу
	DefineMission( 437, "Море Мечты", 418, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Не волнуйся, с моей помощью ты тотчас же отправишься в плавание!")
	MisResultCondition(NoRecord, 418)
	MisResultCondition(HasMission, 418 )
	MisResultAction(ClearMission, 418 )
	MisResultAction(SetRecord, 418 )
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney, 700, 700)



----------------------------єЈѕьКВОсЛщ±ЁµЅЈЎ
	DefineMission( 438, "Открыта запись во флот!", 419 )
	
	MisBeginTalk( "<t>Ты еще не был в море, дружок? Я считаю, ты как раз вовремя.<n><t>Позволь представить тебе <bМорского советника - Алену> из <pАргента>. Она научит тебя всему, что надо знать о плавании." )
	MisBeginCondition( LvCheck, ">", 24 )
	MisBeginCondition(NoRecord, 418)
	MisBeginCondition(NoRecord, 419)
	MisBeginCondition(NoRecord, 420)
	MisBeginCondition(NoMission, 418)
	MisBeginCondition(NoMission, 419)
	MisBeginCondition(NoMission, 420)
	MisBeginAction(AddMission, 419)
	MisCancelAction(ClearMission, 419)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Аленой в (2247, 2858)")
	
	MisHelpTalk("Алена в порту Аргенту. Пожалуйста, иди к ней.")
	MisResultCondition(AlwaysFailure )

-----------------------------------єЈѕьКВОсЛщ±ЁµЅЈЎ
	DefineMission( 439, "Открыта запись во флот!", 419, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Не волнуйся, с моей помощью ты сию же секунду отправишься в плавание!")
	MisResultCondition(NoRecord, 419)
	MisResultCondition(HasMission, 419 )
	MisResultAction(ClearMission, 419 )
	MisResultAction(SetRecord, 419 )
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney, 700, 700)



----------------------------єЈѕьКВОсЛщ
	DefineMission( 440, "Штаб флота", 420 )
	
	MisBeginTalk( "<t>О, только не говори, что ты еще не выходил в открытое море!?<n><t>Я представлю тебя <bМорскому советнику - Алене> из <pАргента>. Она научит тебя всему, что нужно знать." )
	MisBeginCondition( LvCheck, ">", 24 )
	MisBeginCondition(NoRecord, 418)
	MisBeginCondition(NoRecord, 419)
	MisBeginCondition(NoRecord, 420)
	MisBeginCondition(NoMission, 418)
	MisBeginCondition(NoMission, 419)
	MisBeginCondition(NoMission, 420)
	MisBeginAction(AddMission, 420)
	MisCancelAction(ClearMission, 420)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Аленой в (2247, 2858)")
	
	MisHelpTalk("Алена в порту Аргента. Иди к ней.")
	MisResultCondition(AlwaysFailure )

-----------------------------------єЈѕьКВОсЛщ
	DefineMission( 441, "Штаб флота", 420, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Не волнуйся, с моей помощью ты сию же секунду отправишься в плавание!")
	MisResultCondition(NoRecord, 420)
	MisResultCondition(HasMission, 420 )
	MisResultAction(ClearMission, 420 )
	MisResultAction(SetRecord, 420 )
	MisResultAction(AddExp, 1000, 1000)
	MisResultAction(AddMoney, 700, 700)



----------------------------МмПВµЪТ»ЙМИЛ
	DefineMission( 442, "Лучший купец в мире", 421 )
	
	MisBeginTalk( "<t>Наконец-то ты здесь! У меня сложились хорошие отношения с <bХироро>, торговцем из <pАргента>. В последнне время, он экзаменует студентов на знание морской торговли.<n><t>Если тебе интересно узнать побольше о морской торговле, встреться с <bХироро>." )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 421)
	MisBeginCondition(NoRecord, 422)
	MisBeginCondition(NoRecord, 423)
	MisBeginCondition(NoMission, 421)
	MisBeginCondition(NoMission, 422)
	MisBeginCondition(NoMission, 423)
	MisBeginAction(AddMission, 421)
	MisCancelAction(ClearMission, 421)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с торговцем Хироро в (2331, 2821)")
	
	MisHelpTalk("ОМГ! Почему ты еще здесь! Неужели тебе не интересно? Хироро сейчас в Аргенте.")
	MisResultCondition(AlwaysFailure )

-----------------------------------МмПВµЪТ»ЙМИЛ
	DefineMission( 443, "Лучший купец в мире", 421, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ты хочешь быть лучшим торговцем?<n><t>Хорошо! Я так и знал.")
	MisResultCondition(NoRecord, 421)
	MisResultCondition(HasMission, 421 )
	MisResultAction(ClearMission, 421 )
	MisResultAction(SetRecord, 421 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------°ЧТшЅ»ТЧЛщ
	DefineMission( 444, "Центр торговли Аргента", 422 )
	
	MisBeginTalk( "<t>Наконец-то ты здесь! У меня сложились хорошие отношения с <bХироро>, торговцем из <pАргента>. В последнне время, он экзаменует студентов на знание морской торговли.<n><t>Если тебе интересно узнать побольше о морской торговле, встреться с <bХироро>." )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 421)
	MisBeginCondition(NoRecord, 422)
	MisBeginCondition(NoRecord, 423)
	MisBeginCondition(NoMission, 421)
	MisBeginCondition(NoMission, 422)
	MisBeginCondition(NoMission, 423)
	MisBeginAction(AddMission, 422)
	MisCancelAction(ClearMission, 422)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с торговцем Хироро в (2331, 2821)")
	
	MisHelpTalk("ОМГ! Почему ты еще здесь! Неужели тебе не интересно? Хироро сейчас в Аргенте.")
	MisResultCondition(AlwaysFailure )

-----------------------------------°ЧТшЅ»ТЧЛщ
	DefineMission( 445, "Центр торговли Аргента", 422, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ты хочешь быть лучшим торговцем?<n><t>Хорошо! Я так и знал.")
	MisResultCondition(NoRecord, 422)
	MisResultCondition(HasMission, 422 )
	MisResultAction(ClearMission, 422 )
	MisResultAction(SetRecord, 422 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)



----------------------------іцєЈЅ»ТЧ
	DefineMission( 446, "Морская торговля", 423 )
	
	MisBeginTalk( "<t>Наконец-то ты здесь! У меня сложились хорошие отношения с <bХироро>, торговцем из <pАргента>. В последнне время, он экзаменует студентов на знание морской торговли.<n><t>Если тебе интересно узнать побольше о морской торговле, встреться с <bХироро>." )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 421)
	MisBeginCondition(NoRecord, 422)
	MisBeginCondition(NoRecord, 423)
	MisBeginCondition(NoMission, 421)
	MisBeginCondition(NoMission, 422)
	MisBeginCondition(NoMission, 423)
	MisBeginAction(AddMission, 423)
	MisCancelAction(ClearMission, 423)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с торговцем Хироро в (2331, 2821)")
	
	MisHelpTalk("ОМГ! Почему ты еще здесь! Неужели тебе не интересно? Хироро сейчас в Аргенте.")
	MisResultCondition(AlwaysFailure )

-----------------------------------іцєЈЅ»ТЧ
	DefineMission( 447, "Морская торговля", 423, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Ты хочешь быть лучшим торговцем?<n><t>Хорошо! Я так и знал.")
	MisResultCondition(NoRecord, 423)
	MisResultCondition(HasMission, 423 )
	MisResultAction(ClearMission, 423 )
	MisResultAction(SetRecord, 423 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------±»П®µДЅЈКї
	DefineMission( 448, "Мечник, попавший в засаду", 424)
	
	MisBeginTalk( "<t>О боже!<n><t>Даже <bКентаро> был травмирован монстром из <pЗаброшенных Шахт>.<n><t>Меня обеспокоила ситуация в шахтах. Не мог бы ты отправиться в <pЗаброшенные Шахты> и проверить обстановку?" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 424)
	MisBeginCondition(NoMission, 424)
	MisBeginAction(AddMission, 424)
	MisCancelAction(ClearMission, 424)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Кентаро в (1894, 2798)")
	
	MisHelpTalk("Раз уж пообещал, иди теперь.")
	MisResultCondition(AlwaysFailure )

-----------------------------------±»П®µДЅЈКї
	DefineMission( 449, "Мечник, попавший в засаду", 424, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Я случайно разозлил мух в шахтах и получил травму.<n><t>Теперь моя рана зажила.")
	MisResultCondition(NoRecord, 424)
	MisResultCondition(HasMission, 424 )
	MisResultAction(ClearMission, 424 )
	MisResultAction(SetRecord, 424 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------ґ©ФЅАµ°ІЙ­БЦ
	DefineMission( 450, "Пересечение", 425)
	
	MisBeginTalk( "<t>Опасные существа затаились около перехода через <pАндийский Лес> в <pВалгаллу>. Многие люди не рискуют идти туда.<n><t>Но мой сын проводит там исследования. Пожалей меня, старую женщину, и передай послание моему сыну <bВаала>.<n><t>Вот бы он вернулся и навестил меня." )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 425)
	MisBeginCondition(NoMission, 425)
	MisBeginAction(AddMission, 425)
	MisCancelAction(ClearMission, 425)
		
	MisNeed(MIS_NEED_DESP, "Передайте послание Ваалу в (1136, 2778)")
	
	MisHelpTalk("Не хотелось бы тебя торопить, но лучше бы Ваала получил мое послание как можно быстрее.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ґ©ФЅАµ°ІЙ­БЦ
	DefineMission( 451, "Пересечение", 425, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Моя мама так сказала? Ого, похоже я слишком заработался.")
	MisResultCondition(NoRecord, 425)
	MisResultCondition(HasMission, 425 )
	MisResultAction(ClearMission, 425 )
	MisResultAction(SetRecord, 425 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------ГФ№¬Рь°ё
	DefineMission( 452, "Загадка лабиринта", 426)
	
	MisBeginTalk( "<t><pЛедынь> когда-то была восхитительна, но каменные структуры со временем стали разрушаться.<n><t> Да еще и монстры завелись под башней, и даже стали пропадать люди. <bМасу>, монарху Ледыни нужен мой сын, Ваала, чтобы расследовать это дело. Но мой сын занят исследдованиями.<n><t>Ты можешь передать <bМасу>, чтобы он поискал кого-то другого?" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 426)
	MisBeginCondition(NoMission, 426)
	MisBeginAction(AddMission, 426)
	MisCancelAction(ClearMission, 426)
		
	MisNeed(MIS_NEED_DESP, "Передайте письмо Масу в (1346, 451)")
	
	MisHelpTalk("Монарх Ледыни - Мас, все еще ждет мой ответ. Пожалуйста, не заставляй его ждать слишком долго.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ГФ№¬Рь°ё
	DefineMission( 453, "Загадка лабиринта", 426, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Раз уж Ваала не сможет, мне придется найти кого-то другого.<n><t>Спасибо, что передал письмо.")
	MisResultCondition(NoRecord, 426)
	MisResultCondition(HasMission, 426 )
	MisResultAction(ClearMission, 426 )
	MisResultAction(SetRecord, 426 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------·ПїуМЅѕї
	DefineMission( 454, "Исследование шахт", 427)
	
	MisBeginTalk( "<t>Заброшенные Шахты возле Аргента похожи на подземный лабиринт.<n><t>В течение долгих лет там развились новые формы жизни.<n><t>Может быть, ты найдешь там противников по душе. Иди и найди <bГрега> в <pЗаброшенных шахтах>, он расскажет намного больше об этом месте." )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 427)
	MisBeginCondition(NoMission, 427)
	MisBeginAction(AddMission, 427)
	MisCancelAction(ClearMission, 427)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Грегом (1883, 2805)")
	
	MisHelpTalk("Я думаю тебе понравиться исследовать лабиринты Заброшенных Шахт. Поторопись!")
	MisResultCondition(AlwaysFailure )

-----------------------------------·ПїуМЅѕї
	DefineMission( 455, "Исследование шахт", 427, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Раз <bПитер> тебя направил, я не сомневаюсь, что ты справишься.<n><t>Поблагодари его.")
	MisResultCondition(NoRecord, 427)
	MisResultCondition(HasMission, 427 )
	MisResultAction(ClearMission, 427 )
	MisResultAction(SetRecord, 427 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------НЯИш·Ё¶ыµДОЈ»ъ
	DefineMission( 456, "Кризис Ваалы", 428)
	
	MisBeginTalk( "<t>Почему так долго?!<n><t>Мой дорогой <bВаала> занимается исследованиями в <pВалгалле>. Но он потерял все свои инструменты по дороге.<n><t>Поможешь мне передать эти вещи ему и заодно проверить, как у него дела?" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 428)
	MisBeginCondition(NoMission, 428)
	MisBeginAction(AddMission, 428)
	MisCancelAction(ClearMission, 428)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Ваалой в (1136, 2778)")
	
	MisHelpTalk("Поспеши, пожалуйста! Это вопрос жизни и смерти.")
	MisResultCondition(AlwaysFailure )

-----------------------------------НЯИш·Ё¶ыµДОЈ»ъ
	DefineMission( 457, "Кризис Ваалы", 428, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Вода...Вода...Ах...Теперь мне лучше.<n><t>Спасибо!Мне станет еще лучше после того, как я отдохну.")
	MisResultCondition(NoRecord, 428)
	MisResultCondition(HasMission, 428 )
	MisResultAction(ClearMission, 428 )
	MisResultAction(SetRecord, 428 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------ЙсГШ·ўПЦ
	DefineMission( 458, "Загадочное открытие", 429)
	
	MisBeginTalk( "<t>Эй, я случайно нашел карту Замка Ледыни пока изучал эту книгу.<n><t>Глава Ледыни, <bРейно> будет рад взглянуть на нее. Ты можешь ему передать?" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 429)
	MisBeginCondition(NoMission, 429)
	MisBeginAction(AddMission, 429)
	MisCancelAction(ClearMission, 429)
		
	MisNeed(MIS_NEED_DESP, "Передайте послание главе Ледыни Рейно в (1294, 498)")
	
	MisHelpTalk("Пожалуйста, отнеси это Главе Ледыни - Рейно. Это очень важно!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ЙсГШ·ўПЦ
	DefineMission( 459, "Загадочное открытие", 429, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Это удивительное открытие! Спасибо за помощь!")
	MisResultCondition(NoRecord, 429)
	MisResultCondition(HasMission, 429 )
	MisResultAction(ClearMission, 429 )
	MisResultAction(SetRecord, 429 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------·ПїуГФ№¬
	DefineMission( 460, "Лабиринты шахт", 430)
	
	MisBeginTalk( "<t>Заброшенные Шахты возле Аргента похожи на подземный лабиринт.<n><t>в течение долгих лет там развились новые формы жизни.<n><t>Может быть, ты найдешь там противников по душе. Иди и найди <bГрега> в <pЗаброшенных Шахтах>, он расскажет намного больше об этом месте." )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 430)
	MisBeginCondition(NoMission, 430)
	MisBeginAction(AddMission, 430)
	MisCancelAction(ClearMission, 430)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Грегом в (1883, 2805)")
	
	MisHelpTalk("Я думаю тебе понравится исследовать лабиринты Заброшенных Шахт. Поторопись!")
	MisResultCondition(AlwaysFailure )

-----------------------------------·ПїуГФ№¬
	DefineMission( 461, "Лабиринты шахт", 430, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Да, <bДуриан> рекомендовал тебя. У могу подыскать для тебя работу.")
	MisResultCondition(NoRecord, 430)
	MisResultCondition(HasMission, 430 )
	MisResultAction(ClearMission, 430 )
	MisResultAction(SetRecord, 430 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------С°ГЩИЛІЕ
	DefineMission( 462, "Поиски таланта", 431)
	
	MisBeginTalk( "<t>Привет. Мой друг <bГидерий> ищет ответственного человека для работы в <pВалгалле>. Поскольку он доверил мне это задание, я его не подведу.<n><t>Несмотря на это, я порекомендую тебя. Там будет много сильных мобов. Ты готов?" )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 431)
	MisBeginCondition(NoMission, 431)
	MisBeginAction(AddMission, 431)
	MisCancelAction(ClearMission, 431)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с Гидерием в (1123, 2766)")
	
	MisHelpTalk("Гидерий уже ждет, пожалуйста, поспеши!")
	MisResultCondition(AlwaysFailure )

-----------------------------------С°ГЩИЛІЕ
	DefineMission( 463, "Поиски таланта", 431, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Я был уверен, что ты справишься, поскольку Алкар порекомендовал тебя.<n><t>Я дам тебе самы важные задания, которые только возникнут.")
	MisResultCondition(NoRecord, 431)
	MisResultCondition(HasMission, 431 )
	MisResultAction(ClearMission, 431 )
	MisResultAction(SetRecord, 431 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------ГФ№¬МЅѕї
	DefineMission( 464, "Исследование лабиринта", 432)
	
	MisBeginTalk( "<t>Мой друг, я вижу, что здешние монстры больше не противники тебе. Почему бы тебе не отправиться в <pЛедынь>?<n><t>Монарх Ледыни <bРейно> сейчас набирает бойцов для того, чтобы разобраться с угрозой монстров, которые заполонили город.<n><t>Если хочешь, я напишу рекомендательное письмо." )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 432)
	MisBeginCondition(NoMission, 432)
	MisBeginAction(AddMission, 432)
	MisCancelAction(ClearMission, 432)
		
	MisNeed(MIS_NEED_DESP, "Поговорите с главой Ледыни Рейно в (1294, 498)")
	
	MisHelpTalk("Я думаю, что ты достаточно силен чтобы сражаться с монстрами в <pЛедыни>! Иди же вперед и прославься!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ГФ№¬МЅѕї
	DefineMission( 465, "Исследование лабиринта", 432, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Несмотря на то, что тебя рекомендовал сам <bЗурби>, если ты не подходишь, у меня нет другого варианта, как отправить тебя обратно.")
	MisResultCondition(NoRecord, 432)
	MisResultCondition(HasMission, 432 )
	MisResultAction(ClearMission, 432 )
	MisResultAction(SetRecord, 432 )
	MisResultAction(AddExp, 2000, 2000)
	MisResultAction(AddMoney, 850, 850)


----------------------------ѕшµШ·кЙъ
	DefineMission( 466, "Пока мы не встретимся", 433)
	
	MisBeginTalk( "<t>Слава Богам! Мой друг <bХохо> сумел избежать смерти после того как <rВоин Скелетов> пронзил его своей катаной. <n><t>Я бы навестил его, но ужасные монстры у <pБерега Скелетов> останавливают меня.<n><t>Удружи мне и навести <bХохо> от моего имени." )
	MisBeginCondition( LvCheck, ">", 29 )
	MisBeginCondition(NoRecord, 433)
	MisBeginCondition(NoMission, 433)
	MisBeginAction(AddMission, 433)
	MisCancelAction(ClearMission, 433)
		
	MisNeed(MIS_NEED_DESP, "Передайте послание для Хохо в (2142, 556)")
	
	MisHelpTalk("Пожалуйста, будь осторожен, там много скелетов!")
	MisResultCondition(AlwaysFailure )

-----------------------------------ѕшµШ·кЙъ
	DefineMission( 467, "Пока мы не встретимся", 433, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Большое спасибо! Многие мои друзья были слишком напуганы, чтобы навестить меня, после того, как я сюда перебрался.")
	MisResultCondition(NoRecord, 433)
	MisResultCondition(HasMission, 433 )
	MisResultAction(ClearMission, 433 )
	MisResultAction(SetRecord, 433 )
	MisResultAction(AddExp, 3500, 3500)
	MisResultAction(AddMoney, 1000, 1000)

----------------------------¶«·ЅµјК¦
	DefineMission( 468, "Восточный учитель", 434)
	
	MisBeginTalk( "<t>Dear adventurer! I have been looking for my teacher, <bMaster Kerra>, for many years around Skeleton Haven but to no avail. Recently, I heard that she has moved to <pIcespire Haven>.<n><t>If you are going there, can you tell her that I have already acquired the \"Heart of Will\"?" )
	MisBeginCondition( LvCheck, ">", 39 )
	MisBeginCondition(NoRecord, 434)
	MisBeginCondition(NoMission, 434)
	MisBeginAction(AddMission, 434)
	MisCancelAction(ClearMission, 434)
		
	MisNeed(MIS_NEED_DESP, "Поищите Мастера Керу в (2664, 654)")
	
	MisHelpTalk("Иди на Восток и ты найдешь Ледяной Шип. Это будет опасный путь, но я верю, что твоя решимость преодолеет все преграды.")
	MisResultCondition(AlwaysFailure )

-----------------------------------¶«·ЅµјК¦
	DefineMission( 469, "Восточный учитель", 434, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Спасибо, что навестил. Похоже, мой любимый ученик наконец-то прошел обучение!")
	MisResultCondition(NoRecord, 434)
	MisResultCondition(HasMission, 434 )
	MisResultAction(ClearMission, 434 )
	MisResultAction(SetRecord, 434 )
	MisResultAction(AddExp, 6000, 6000)	
	MisResultAction(AddMoney, 1000, 1000)


----------------------------ТЅЙъёДРР
	DefineMission( 470, "Изменение местоположения", 435)
	
	MisBeginTalk( "<t>О, боже! Можешь мне помочь? Моя сестра, <bДоктор - Чиво>, когда-то жила в Шайтане. Недавно, она переехала в <pХалдейский Оплот>, но это место какое-то изолированное, там даже нет воды!<n><t>Не мог бы ты навестить ее от моего имени?" )
	MisBeginCondition( LvCheck, ">", 44 )
	MisBeginCondition(NoRecord, 435)
	MisBeginCondition(NoMission, 435)
	MisBeginAction(AddMission, 435)
	MisCancelAction(ClearMission, 435)
		
	MisNeed(MIS_NEED_DESP, "Навестите Доктора Чиво в (630, 2091)")
	
	MisHelpTalk("Халдейский Оплот чуть южнее Громограда.")
	MisResultCondition(AlwaysFailure )

-----------------------------------ТЅЙъёДРР
	DefineMission( 471, "Изменение местоположения", 435, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Хаха! Мой брат любит совать нос в чужие дела. Честно говоря, мне здесь нравится.")
	MisResultCondition(NoRecord, 435)
	MisResultCondition(HasMission, 435 )
	MisResultAction(ClearMission, 435 )
	MisResultAction(SetRecord, 435 )
	MisResultAction(AddExp, 10000, 10000)	
	MisResultAction(AddMoney, 1100, 1100)


----------------------------АЧцЄєЈѕь
	DefineMission( 472, "Флот Громограда", 436)
	
	MisBeginTalk( "<t>Я слышал, что в <pГромограде> нанимают искателей приключений. Там, наверное, много интересных заданий для тебя.<n><t>Я могу порекомендовать тебя Капитану Стражи <bМаллаку>, если хочешь." )
	MisBeginCondition( LvCheck, ">", 49 )
	MisBeginCondition(NoRecord, 436)
	MisBeginCondition(NoMission, 436)
	MisBeginAction(AddMission, 436)
	MisCancelAction(ClearMission, 436)
		
	MisNeed(MIS_NEED_DESP, "Встретьтесь с Маллаком в Громограде в (706, 1465)")
	
	MisHelpTalk("Поверь мне. Если ты пойдешь в Громоград прямо сейчас, ты можешь стать офицером.")
	MisResultCondition(AlwaysFailure )

-----------------------------------АЧцЄєЈѕь
	DefineMission( 473, "Флот Громограда", 436, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Привет, ты хочешь здесь закрепиться?<n><t>Без проблем! Только запомни, не нарушай правила.")
	MisResultCondition(NoRecord, 436)
	MisResultCondition(HasMission, 436 )
	MisResultAction(ClearMission, 436 )
	MisResultAction(SetRecord, 436 )
	MisResultAction(AddExp, 16000, 16000)
	MisResultAction(AddMoney, 1200, 1200)


----------------------------Й­БЦЙоґ¦
	DefineMission( 474, "Дремучий-предремучий лес", 437)
	
	MisBeginTalk( "<t>В дремучем лесу Аскарона много разных племен. Один мой приятель - Старик Ковен, остановился неподалеку от <pОбители Радости>. Он часто шлет мне письма, просит, чтобы я его навестил.<n><t>Но я не могу оставить свою работу. Ты не мог бы навестить его от моего имени?" )
	MisBeginCondition( LvCheck, ">", 54 )
	MisBeginCondition(NoRecord, 437)
	MisBeginCondition(NoMission, 437)
	MisBeginAction(AddMission, 437)
	MisCancelAction(ClearMission, 437)
		
	MisNeed(MIS_NEED_DESP, "Навестите Старика Ковена в (529, 2458)")
	
	MisHelpTalk("Спасибо тебе, друг. Можешь отправиться в <pОбитель Радости> когда будешь свободен.")
	MisResultCondition(AlwaysFailure )

-----------------------------------Й­БЦЙоґ¦
	DefineMission( 475, "Дремучий-предремучий лес", 437, COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure )
		
	MisResultTalk("<t>Спасибо за визит. Не могу поверить, что Сонни до сих пор меня помнит.")
	MisResultCondition(NoRecord, 437)
	MisResultCondition(HasMission, 437 )
	MisResultAction(ClearMission, 437 )
	MisResultAction(SetRecord, 437 )
	MisResultAction(AddExp, 25000, 25000)
	MisResultAction(AddMoney, 1300, 1300)




----------------------------------------
--                                    --
--        јУАХ±ИєЈµБЖХНЁИООс          --
--                                    --
----------------------------------------

-- Бй¶ЩЅ«ѕь >> ЛѕБоµДАОЙ§

	DefineMission(476, "Недовольство Командира", 438)

	MisBeginTalk("<t>Командующий флотом Громограда только что приказал мне вернуться обратно.<n><t>Но, ввиду обстоятельств, я не смогу сам добраться туда. Ты бы не мог это сделать за меня?<n><t>Да, вернись и проверь старика и сообщи мне о результатах.")
	MisBeginCondition(NoRecord, 438)
	MisBeginCondition(NoMission,438)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 438)
	MisCancelAction(ClearMission, 438)
	MisHelpTalk("<t>Ты все еще здесь? Живее!")

	MisNeed(MIS_NEED_DESP, "Доклад для Командующего Флотом Громограда от имени Велингтона")

	MisResultCondition(AlwaysFailure)

-- АЧцЄ±¤єЈѕьЛѕБо >> ЛѕБоµДАОЙ§
	DefineMission(477,"Недовольство Командира",438,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Ох, значит Велингтон не сможет сам придти. Забудь.")

	MisResultCondition(HasMission, 438)
	MisResultCondition(NoRecord, 438)
	MisResultCondition(HasNavyGuild)

	MisResultAction(ClearMission, 438)
	MisResultAction(SetRecord, 438)

	
-- АЧцЄ±¤єЈѕьЛѕБо >> ЛѕБоµДГШГЬ
	DefineMission(478, "Секрет командующего", 439)

	MisBeginTalk("<t>Из-за того, что Велингтон не смог придти сам, пожалуйста, доставь ему это письмо.<n><t>Запомни, письмо должно быть в сохранности, так как оно особой важности!")
	MisBeginCondition(HasRecord, 438)
	MisBeginCondition(NoRecord, 439)
	MisBeginCondition(NoMission,439)
	MisBeginCondition(HasNavyGuild)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 439)
	MisBeginAction(GiveItem, 2430, 1, 4)
	MisCancelAction(ClearMission, 439)
	MisHelpTalk("<t>Ты все еще здесь? Живее!")
	MisNeed(MIS_NEED_DESP, "Доставьте письмо Велингтону от Командующего флотом")

	MisResultCondition(AlwaysFailure)

-- Бй¶ЩЅ«ѕь >> ЛѕБоµДГШГЬ

	DefineMission(479,"Секрет командующего",439,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Так значит это приказ от командующего? Похоже, нам придется что-то придумать.<n><t>Солдат, отдохни сперва. Очень скоро у нас будет много дел.")

	MisResultCondition(HasMission, 439)
	MisResultCondition(NoRecord, 439)

	MisResultCondition(HasItem, 2430,1 )
	MisResultCondition(HasNavyGuild)

	MisResultAction(ClearMission, 439)
	MisResultAction(TakeItem, 2430,1 )
	MisResultAction(SetRecord, 439)
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 25000, 25000)


-- Бй¶ЩЅ«ѕь >> єЈѕьµДОдЖч

	DefineMission(480, "Вооружение Флота", 440)

	MisBeginTalk("<t>Ты готов? Тогда внимательно слушай.<n><t>От лица командующего я приказываю тебе проникнуть на базу неприятеля и убить несколько Мертвых Душ. Принеси мне 5 Душ, как доказательство.")

	MisBeginCondition(HasRecord, 439)
	MisBeginCondition(NoMission, 440)
	MisBeginCondition(NoRecord, 440)
	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 440)
	MisBeginAction(AddTrigger, 4401, TE_GETITEM, 2386, 5)

	MisNeed(MIS_NEED_ITEM, 2386, 5, 10, 5)

	MisCancelAction(ClearMission, 440)
	
	MisHelpTalk("<t>Ты еще не собрал 5 душ? Победа близка!")
	
	MisResultTalk("<t>Неплохо, здесь все, что нужно. Может тебе присоединиться к нам хаха! Так к слову, не волнуйся.")

	MisResultCondition(HasMission, 440)
	MisResultCondition(NoRecord, 440)
	MisResultCondition(HasItem, 2386, 5)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem, 2386, 5)
	MisResultAction(ClearMission, 440)
	MisResultAction(SetRecord, 440)
	MisResultAction(AddExp, 250000, 250000)
	MisResultAction(AddMoney, 150000, 150000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2386)
	TriggerAction(1, AddNextFlag, 440, 10, 5)
	RegCurTrigger(4401)

-- Бй¶ЩЅ«ѕь >> єЈѕьГШј®
	
	DefineMission(481,"Устав Флота",441)

	MisBeginTalk("<t>После последних операций, военная мощь Мертвых Душ сильно снизилась.<n><t>В тоже самое время, мы разработали несколько стратегий против них и записали их в специальную книгу. Но недавно она была украдена шпионами армии Мертвых Душ. Это тяжелый удар для нас!<n><t>Я хочу, чтобы ты проник на их морскую базу и стащил все 8 страниц Тома. Да и еще, достань мне суперклей от Командира Мертвых Душ.<n><t>И не возвращайся, если у тебя чего-то будет не хватать!")


	MisBeginCondition(HasRecord, 440)
	MisBeginCondition(NoRecord, 441)
	MisBeginCondition(NoMission, 441)

	MisBeginCondition(HasNavyGuild)

	MisBeginAction(AddMission, 441)

	MisBeginAction(AddTrigger, 4411, TE_GETITEM, 2388, 1)
	MisBeginAction(AddTrigger, 4412, TE_GETITEM, 2389, 1)
	MisBeginAction(AddTrigger, 4413, TE_GETITEM, 2390, 1)
	MisBeginAction(AddTrigger, 4414, TE_GETITEM, 2391, 1)
	MisBeginAction(AddTrigger, 4415, TE_GETITEM, 2392, 1)
	MisBeginAction(AddTrigger, 4416, TE_GETITEM, 2393, 1)
	MisBeginAction(AddTrigger, 4417, TE_GETITEM, 2394, 1)
	MisBeginAction(AddTrigger, 4418, TE_GETITEM, 2395, 1)
	MisBeginAction(AddTrigger, 4419, TE_GETITEM, 2441, 1)

	MisNeed(MIS_NEED_ITEM, 2388, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2389, 1, 20, 1)
	MisNeed(MIS_NEED_ITEM, 2390, 1, 30, 1)
	MisNeed(MIS_NEED_ITEM, 2391, 1, 40, 1)
	MisNeed(MIS_NEED_ITEM, 2392, 1, 50, 1)
	MisNeed(MIS_NEED_ITEM, 2393, 1, 60, 1)
	MisNeed(MIS_NEED_ITEM, 2394, 1, 70, 1)
	MisNeed(MIS_NEED_ITEM, 2395, 1, 80, 1)
	MisNeed(MIS_NEED_ITEM, 2441, 1, 90, 1)

	MisCancelAction(ClearMission, 441)

	MisHelpTalk("<t>Мы не можем позволить нашим врагам узнать наши стратегии из Тома!")
	
	MisResultTalk("<t>Это...Это все...Ты действительно наш герой!<n><t>Невероятно! Даже слов не хватает, чтобы передать мою радость, Мне нужно успокоиться...Хорошо...Это твоя награда, забирай.")

	MisResultCondition(HasMission, 441)
	MisResultCondition(NoRecord, 441)
	MisResultCondition(HasItem, 2388, 1)
	MisResultCondition(HasItem, 2389, 1)
	MisResultCondition(HasItem, 2390, 1)
	MisResultCondition(HasItem, 2391, 1)
	MisResultCondition(HasItem, 2392, 1)
	MisResultCondition(HasItem, 2393, 1)
	MisResultCondition(HasItem, 2394, 1)
	MisResultCondition(HasItem, 2395, 1)
	MisResultCondition(HasItem, 2441, 1)
	MisResultBagNeed(1)
	MisResultCondition(HasNavyGuild)

	MisResultAction(TakeItem, 2388, 1)
	MisResultAction(TakeItem, 2389, 1)
	MisResultAction(TakeItem, 2390, 1)
	MisResultAction(TakeItem, 2391, 1)
	MisResultAction(TakeItem, 2392, 1)
	MisResultAction(TakeItem, 2393, 1)
	MisResultAction(TakeItem, 2394, 1)
	MisResultAction(TakeItem, 2395, 1)
	MisResultAction(TakeItem, 2441, 1)

	MisResultAction(ClearMission, 441)
	MisResultAction(SetRecord, 441)
	MisResultAction(AddExp, 500000, 500000)
	MisResultAction(AddMoney, 500000, 500000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2388)
	TriggerAction(1, AddNextFlag, 441, 10, 1)
	RegCurTrigger(4411)

	InitTrigger()
	TriggerCondition(1, IsItem, 2389)
	TriggerAction(1, AddNextFlag, 441, 20, 1)
	RegCurTrigger(4412)

	InitTrigger()
	TriggerCondition(1, IsItem, 2390)
	TriggerAction(1, AddNextFlag, 441, 30, 1)
	RegCurTrigger(4413)

	InitTrigger()
	TriggerCondition(1, IsItem, 2391)
	TriggerAction(1, AddNextFlag, 441, 40, 1)
	RegCurTrigger(4414)

	InitTrigger()
	TriggerCondition(1, IsItem, 2392)
	TriggerAction(1, AddNextFlag, 441, 50, 1)
	RegCurTrigger(4415)

	InitTrigger()
	TriggerCondition(1, IsItem, 2393)
	TriggerAction(1, AddNextFlag, 441, 60, 1)
	RegCurTrigger(4416)

	InitTrigger()
	TriggerCondition(1, IsItem, 2394)
	TriggerAction(1, AddNextFlag, 441, 70, 1)
	RegCurTrigger(4417)

	InitTrigger()
	TriggerCondition(1, IsItem, 2395)
	TriggerAction(1, AddNextFlag, 441, 80, 1)
	RegCurTrigger(4418)

	InitTrigger()
	TriggerCondition(1, IsItem, 2441)
	TriggerAction(1, AddNextFlag, 441, 90, 1)
	RegCurTrigger(4419)



-- ЅЬїЛК·ЕЙВЮ >> ЗуФ®
	DefineMission(482, "SOS", 442)

	MisBeginTalk("<t>Я должен признаться, что армия Мертвых Душ превзошла все наши ожидания, так что я решил позвать моего старого врага, Капитана Джека, на помощь.<n><t>Он сейчас проживает где-то в районе Магического океана. Можешь туда сгонять от моего имени? Шансы невелики, но тем не менее.")
	MisBeginCondition(NoRecord, 442)
	MisBeginCondition(NoMission,442)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 442)
	MisCancelAction(ClearMission, 442)
	MisHelpTalk("<t>Ты так и не сдвинулся с места? Хорош спать!")

	MisNeed(MIS_NEED_DESP, "Передай просьбу о помощи Капитану Джеку в Магическом океане")

	MisResultCondition(AlwaysFailure)


-- ЅЬїЛґ¬і¤ >> ЗуФ®

	DefineMission(483,"SOS",442,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Что! И он осмелился просить у меня помощи? Шутишь чтоли.<n><t>Вернись и передай ему: если ему нужна моя помощь, пусть сперва победит меня в дуэли!")

	MisResultCondition(HasMission, 442)
	MisResultCondition(NoRecord, 442)
	MisBeginCondition(HasPirateGuild)

	MisResultAction(ClearMission, 442)
	MisResultAction(SetRecord, 442)

-- ЅЬїЛґ¬і¤ >> ЅЬїЛУЦјыЅЬїЛ
	DefineMission(484, "Джек против Джека", 443)

	MisBeginTalk("<t>Это письмо с заданием, которое написал я сам. Принеси его Джеку Стреле.<n><t>Скажи ему, что я буду его ждать в павильоне в полночь в полнолуние восьмого месяца. ")
	MisBeginCondition(HasRecord, 442)
	MisBeginCondition(NoRecord, 443)
	MisBeginCondition(NoMission,443)
	MisBeginCondition(HasPirateGuild)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 443)

	MisCancelAction(ClearMission, 443)
	MisBeginAction(GiveItem, 2431, 1, 4)
	MisHelpTalk("<t>Ты так и не сдвинулся с места? Хорош спать!")

	MisNeed(MIS_NEED_DESP, "Передай письмо Капитана Джека Джеку Стреле")

	MisResultCondition(AlwaysFailure)


-- ЅЬїЛК·ЕЙВЮ >> ЅЬїЛУЦјыЅЬїЛ

	DefineMission(485,"Джек против Джека",443,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Эх...Похоже, он нам не поможет. Мы сами что-нибудь придумаем.<n><t>Тебе пришлось нелегко. Отдохни.")

	MisResultCondition(HasItem,2431,1)
	MisResultCondition(HasMission, 443)
	MisResultCondition(NoRecord, 443)
	MisResultCondition(HasPirateGuild)

	MisResultAction(ClearMission, 443)
	MisResultAction(TakeItem,2431,1)
	MisResultAction(SetRecord, 443)
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 50000, 50000)

-- ЅЬїЛК·ЕЙВЮ >> јУАХ±И±¦ІШ

	DefineMission(486, "Карибские сокровища", 444)

	MisBeginTalk("<t>На Острове Скелетов много гробов, собирающих души и Сердце Дейви Джоунса до сих пор остается спрятанным в одном из них.<n><t>Мы могли бы воспользоваться им, если бы только нашли. Ты поможешь нам отыскать Сердце Дейви Джоунса?<n><t>Это бы дало нам достаточно сил, чтобы сдерживать натиск армии Мертвых Душ.")

	MisBeginCondition(HasRecord, 443)
	MisBeginCondition(NoRecord, 444)
	MisBeginCondition(NoMission, 444)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 444)
	MisBeginAction(AddTrigger, 4441, TE_GETITEM, 2444, 1)

	MisNeed(MIS_NEED_ITEM, 2444, 1, 10, 1)
	MisCancelAction(ClearMission, 444)

	MisHelpTalk("<t>Ты еще не закончил собирать? Поторопись!")

	MisResultTalk("<t>Круто, теперь у меня достаточно денег, чтобы собрать мою собственную пиратскую команду.")

	MisResultCondition(NoRecord, 444)
	MisResultCondition(HasMission, 444)
	MisResultCondition(HasPirateGuild)
	MisResultCondition(HasItem,2444,1)

	MisResultAction(TakeItem, 2444, 1)
	MisResultAction(ClearMission, 444)
	MisResultAction(SetRecord, 444)

	MisResultAction(AddExp, 250000, 250000)
	MisResultAction(AddMoney, 150000, 150000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2444)
	TriggerAction(1, AddNextFlag, 444, 10, 1)
	RegCurTrigger(4441)

--МъЅі >> КҐ№с
	
	DefineMission(487, "Собрание", 445)

	MisBeginTalk("<t>Я слышал о твоем мужественном поступке. Но не знаешь ли ты почему атака армии Мертвых Душ настолько мощна?<n><t>Я тебе скажу, это потому что они собирают проклятые монеты. Я, конечно, точно не знаю, но это точно что-то нехорошее.<n><t>Если тебе интересно, выбей 40 монет и 1 запачканную кровью монету. Я, может, смогу разрушить заклятие.")

	MisBeginCondition(HasRecord, 444)
	MisBeginCondition(NoRecord, 445)
	MisBeginCondition(NoMission, 445)
	MisBeginCondition(HasPirateGuild)

	MisBeginAction(AddMission, 445)
	MisBeginAction(AddTrigger, 4451, TE_GETITEM, 2427, 1)
	MisBeginAction(AddTrigger, 4452, TE_GETITEM, 2438, 40)
	

	MisNeed(MIS_NEED_ITEM, 2427, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2438, 40, 20, 40)
	

	MisCancelAction(ClearMission, 445)
	MisHelpTalk("<t>Ну как дела? Сколько уже собрал?")

	MisResultTalk("<t>Да! Ходят слухи что: !^($......%*#oa2......1&s?~*#^%!...... (Кузнец начинает бубнить на непонятном языке). Ok! Понятно!<n><t>Эти золотые монеты больше не прокляты. Этим Мертвым Душам теперь придется несладко при следующей атаке.")

	MisResultCondition(NoRecord, 445)
	MisResultCondition(HasMission, 445)
	MisResultCondition(HasItem, 2438, 40)
	MisResultCondition(HasItem, 2427, 1)
	MisResultCondition(HasPirateGuild)

	MisResultAction(TakeItem, 2438, 40)
	MisResultAction(TakeItem, 2427, 1)
	MisResultAction(ClearMission ,445)
	MisResultAction(SetRecord, 445)

	MisResultAction(AddExp, 500000,500000)
	MisResultAction(AddMoney, 800000, 800000)

	InitTrigger()
	TriggerCondition(1, IsItem, 2427)
	TriggerAction(1, AddNextFlag, 445, 10, 1)
	RegCurTrigger(4451)

	InitTrigger()
	TriggerCondition(1, IsItem, 2438)
	TriggerAction(1, AddNextFlag, 445, 20, 40)
	RegCurTrigger(4452)

end
CenterMission001()


	DefineMission( 1700, "Летний Эвент", 1700 )

	MisBeginTalk( "<t>Начало лета? Уже стало жарко? Хочется прохлады? Скорее на Зиму? Но ведь ее населяют ужасные монстры и прочие чудовища. Кажется тебе понадобится новая экипировка. У меня есть немного, но тебе придется потрудиться, чтобы получить ее. Надеюсь ты готов.")
	MisBeginCondition(PfEqual, 8)--champ
	MisBeginCondition(NoMission, 1700)
	MisBeginCondition(NoRecord, 1700)
	MisBeginCondition(LvCheck, ">", 69 )
	MisBeginAction(AddMission, 1700)
	MisBeginAction(SetFlag, 1700, 1)
	MisBeginAction(AddTrigger, 8151, TE_GETITEM, 4283, 100)--тиковое бревно
	MisBeginAction(AddTrigger, 1702, TE_GETITEM, 4284, 100)--Фальшивые флотские документы
	MisBeginAction(AddTrigger, 1703, TE_GETITEM, 4285, 100)--Браслет ящера
	MisCancelAction(ClearMission, 1700)

	MisNeed(MIS_NEED_DESP, "Соберите все, чтобы получить подарок.")
	MisNeed(MIS_NEED_ITEM, 4283, 100, 10, 100)
	MisNeed(MIS_NEED_ITEM, 4284, 100, 20, 100)
	MisNeed(MIS_NEED_ITEM, 4285, 100, 30, 100)

	MisResultTalk("<t>Молодец, ты сделал это! Ты действительно достоен награды!")
	MisHelpTalk("<t>Вы еще не собрали все, что нужно.")
	MisResultCondition(HasMission, 1700 )
	MisResultCondition(NoRecord, 1700)
	MisResultCondition(HasItem, 4283, 100)
	MisResultCondition(HasItem, 4284, 100)
	MisResultCondition(HasItem, 4285, 100)
	MisResultAction(TakeItem, 4283, 100)
	MisResultAction(TakeItem, 4284, 100)
	MisResultAction(TakeItem, 4285, 100)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4286, 1, 4)
	MisResultAction(ClearMission, 1700 )
	MisResultAction(SetRecord, 1700)
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4283 )
	TriggerAction( 1, AddNextFlag, 1700, 10, 100 )
	RegCurTrigger( 8151 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4284 )
	TriggerAction( 1, AddNextFlag, 1700, 20, 100 )
	RegCurTrigger( 1702 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4285 )
	TriggerAction( 1, AddNextFlag, 1700, 30, 100 )
	RegCurTrigger( 1703 )
	
	
	DefineMission( 1701, "Летний Эвент", 1701 )

	MisBeginTalk( "<t>Начало лета? Уже стало жарко? Хочется прохлады? Скорее на Зиму? Но ведь ее населяют ужасные монстры и прочие чудовища. Кажется тебе понадобится новая экипировка. У меня есть немного, но тебе придется потрудиться, чтобы получить ее. Надеюсь ты готов.")
	MisBeginCondition(LvCheck, ">", 69 )
	MisBeginCondition(PfEqual, 9)--круз
	MisBeginCondition(NoRecord, 1701)
	MisBeginCondition(NoMission, 1701)
	MisBeginAction(AddMission, 1701)
	MisBeginAction(SetFlag, 1701, 1)
	MisBeginAction(AddTrigger, 8161, TE_GETITEM, 4283, 100)--тиковое бревно
	MisBeginAction(AddTrigger, 8012, TE_GETITEM, 4284, 100)--Фальшивые флотские документы
	MisBeginAction(AddTrigger, 8013, TE_GETITEM, 4285, 100)--Браслет ящера
	MisCancelAction(ClearMission, 1701)

	MisNeed(MIS_NEED_DESP, "Соберите все, чтобы получить подарок.")
	MisNeed(MIS_NEED_ITEM, 4283, 100, 10, 100)
	MisNeed(MIS_NEED_ITEM, 4284, 100, 20, 100)
	MisNeed(MIS_NEED_ITEM, 4285, 100, 30, 100)

	MisResultTalk("<t>Молодец, ты сделал это! Ты действительно достоен награды!")
	MisHelpTalk("<t>Вы еще не собрали все, что нужно.")
	MisResultCondition(HasMission, 1701 )
	MisResultCondition(HasItem, 4283, 100)
	MisResultCondition(HasItem, 4284, 100)
	MisResultCondition(HasItem, 4285, 100)
	MisResultCondition(NoRecord, 1701)
	MisResultAction(SetRecord, 1701)
	MisResultAction(TakeItem, 4283, 100)
	MisResultAction(TakeItem, 4284, 100)
	MisResultAction(TakeItem, 4285, 100)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4286, 1, 4)
	MisResultAction(ClearMission, 1701 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4283 )
	TriggerAction( 1, AddNextFlag, 1701, 10, 100 )
	RegCurTrigger( 8161 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4284 )
	TriggerAction( 1, AddNextFlag, 1701, 20, 100 )
	RegCurTrigger( 8012 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4285 )
	TriggerAction( 1, AddNextFlag, 1701, 30, 100 )
	RegCurTrigger( 8013 )
	
	
	
	DefineMission( 1702, "Летний Эвент", 1702 )

	MisBeginTalk( "<t>Начало лета? Уже стало жарко? Хочется прохлады? Скорее на Зиму? Но ведь ее населяют ужасные монстры и прочие чудовища. Кажется тебе понадобится новая экипировка. У меня есть немного, но тебе придется потрудиться, чтобы получить ее. Надеюсь ты готов.")
	MisBeginCondition(LvCheck, ">", 69 )
	MisBeginCondition(PfEqual, 12)--Шарп
	MisBeginCondition(NoRecord, 1702)
	MisBeginCondition(NoMission, 1702)
	MisBeginAction(AddMission, 1702)
	MisBeginAction(SetFlag, 1702, 1)
	MisBeginAction(AddTrigger, 8171, TE_GETITEM, 4283, 100)--тиковое бревно
	MisBeginAction(AddTrigger, 8022, TE_GETITEM, 4284, 100)--Фальшивые флотские документы
	MisBeginAction(AddTrigger, 8023, TE_GETITEM, 4285, 100)--Браслет ящера
	MisCancelAction(ClearMission, 1702)

	MisNeed(MIS_NEED_DESP, "Соберите все, чтобы получить подарок.")
	MisNeed(MIS_NEED_ITEM, 4283, 100, 10, 100)
	MisNeed(MIS_NEED_ITEM, 4284, 100, 20, 100)
	MisNeed(MIS_NEED_ITEM, 4285, 100, 30, 100)

	MisResultTalk("<t>Молодец, ты сделал это! Ты действительно достоен награды!")
	MisHelpTalk("<t>Вы еще не собрали все, что нужно.")
	MisResultCondition(HasMission, 1702 )
	MisResultCondition(HasItem, 4283, 100)
	MisResultCondition(HasItem, 4284, 100)
	MisResultCondition(HasItem, 4285, 100)
	MisResultCondition(NoRecord, 1702)
	MisResultAction(SetRecord, 1702)
	MisResultAction(TakeItem, 4283, 100)
	MisResultAction(TakeItem, 4284, 100)
	MisResultAction(TakeItem, 4285, 100)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4286, 1, 4)
	MisResultAction(ClearMission, 1702 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4283 )
	TriggerAction( 1, AddNextFlag, 1702, 10, 100 )
	RegCurTrigger( 8171 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4284 )
	TriggerAction( 1, AddNextFlag, 8000, 20, 100 )
	RegCurTrigger( 8022 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4285 )
	TriggerAction( 1, AddNextFlag, 8000, 30, 100 )
	RegCurTrigger( 8023 )
	
	
	
	DefineMission( 1703, "Летний Эвент", 1703 )

	MisBeginTalk( "<t>Начало лета? Уже стало жарко? Хочется прохлады? Скорее на Зиму? Но ведь ее населяют ужасные монстры и прочие чудовища. Кажется тебе понадобится новая экипировка. У меня есть немного, но тебе придется потрудиться, чтобы получить ее. Надеюсь ты готов.")
	MisBeginCondition(LvCheck, ">", 69 )
	MisBeginCondition(PfEqual, 13)--Клер
	MisBeginCondition(NoRecord, 1703)
	MisBeginCondition(NoMission, 1703)
	MisBeginAction(AddMission, 1703)
	MisBeginAction(SetFlag, 1703, 1)
	MisBeginAction(AddTrigger, 8211, TE_GETITEM, 4283, 100)--тиковое бревно
	MisBeginAction(AddTrigger, 8032, TE_GETITEM, 4284, 100)--Фальшивые флотские документы
	MisBeginAction(AddTrigger, 8033, TE_GETITEM, 4285, 100)--Браслет ящера
	MisCancelAction(ClearMission, 1703)

	MisNeed(MIS_NEED_DESP, "Соберите все, чтобы получить подарок.")
	MisNeed(MIS_NEED_ITEM, 4283, 100, 10, 100)
	MisNeed(MIS_NEED_ITEM, 4284, 100, 20, 100)
	MisNeed(MIS_NEED_ITEM, 4285, 100, 30, 100)

	MisResultTalk("<t>Молодец, ты сделал это! Ты действительно достоен награды!")
	MisHelpTalk("<t>Вы еще не собрали все, что нужно.")
	MisResultCondition(HasMission, 1703 )
	MisResultCondition(HasItem, 4283, 100)
	MisResultCondition(HasItem, 4284, 100)
	MisResultCondition(HasItem, 4285, 100)
	MisResultCondition(NoRecord, 1703)
	MisResultAction(SetRecord, 1703)
	MisResultAction(TakeItem, 4283, 100)
	MisResultAction(TakeItem, 4284, 100)
	MisResultAction(TakeItem, 4285, 100)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4286, 1, 4)
	MisResultAction(ClearMission, 1703 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4283 )
	TriggerAction( 1, AddNextFlag, 1703, 10, 100 )
	RegCurTrigger( 8211 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4284 )
	TriggerAction( 1, AddNextFlag, 1703, 20, 100 )
	RegCurTrigger( 8032 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4285 )
	TriggerAction( 1, AddNextFlag, 1703, 30, 100 )
	RegCurTrigger( 8033 )
	
	
	DefineMission( 1704, "Летний Эвент", 1704 )

	MisBeginTalk( "<t>Начало лета? Уже стало жарко? Хочется прохлады? Скорее на Зиму? Но ведь ее населяют ужасные монстры и прочие чудовища. Кажется тебе понадобится новая экипировка. У меня есть немного, но тебе придется потрудиться, чтобы получить ее. Надеюсь ты готов.")
	MisBeginCondition(LvCheck, ">", 69 )
	MisBeginCondition(PfEqual, 14)--СМ
	MisBeginCondition(NoRecord, 1704)
	MisBeginCondition(NoMission, 1704)
	MisBeginAction(AddMission, 1704)
	MisBeginAction(SetFlag, 1704, 1)
	MisBeginAction(AddTrigger, 8222, TE_GETITEM, 4283, 100)--тиковое бревно
	MisBeginAction(AddTrigger, 8042, TE_GETITEM, 4284, 100)--Фальшивые флотские документы
	MisBeginAction(AddTrigger, 8043, TE_GETITEM, 4285, 100)--Браслет ящера
	MisCancelAction(ClearMission, 1704)

	MisNeed(MIS_NEED_DESP, "Соберите все, чтобы получить подарок.")
	MisNeed(MIS_NEED_ITEM, 4283, 100, 10, 100)
	MisNeed(MIS_NEED_ITEM, 4284, 100, 20, 100)
	MisNeed(MIS_NEED_ITEM, 4285, 100, 30, 100)

	MisResultTalk("<t>Молодец, ты сделал это! Ты действительно достоен награды!")
	MisHelpTalk("<t>Вы еще не собрали все, что нужно.")
	MisResultCondition(HasMission, 1704 )
	MisResultCondition(HasItem, 4283, 100)
	MisResultCondition(HasItem, 4284, 100)
	MisResultCondition(HasItem, 4285, 100)
	MisResultCondition(NoRecord, 1704)
	MisResultAction(SetRecord, 1704)
	MisResultAction(TakeItem, 4283, 100)
	MisResultAction(TakeItem, 4284, 100)
	MisResultAction(TakeItem, 4285, 100)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4286, 1, 4)
	MisResultAction(ClearMission, 1704 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4283 )
	TriggerAction( 1, AddNextFlag, 1704, 10, 100 )
	RegCurTrigger( 8222 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4284 )
	TriggerAction( 1, AddNextFlag, 1704, 20, 100 )
	RegCurTrigger( 8042 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4285 )
	TriggerAction( 1, AddNextFlag, 1704, 30, 100 )
	RegCurTrigger( 8043 )
	
	
	DefineMission( 1705, "Летний Эвент", 1705 )

	MisBeginTalk( "<t>Начало лета? Уже стало жарко? Хочется прохлады? Скорее на Зиму? Но ведь ее населяют ужасные монстры и прочие чудовища. Кажется тебе понадобится новая экипировка. У меня есть немного, но тебе придется потрудиться, чтобы получить ее. Надеюсь ты готов.")
	MisBeginCondition(LvCheck, ">", 69 )
	MisBeginCondition(PfEqual, 16)--вой
	MisBeginCondition(NoRecord, 1705)
	MisBeginCondition(NoMission, 1705)
	MisBeginAction(AddMission, 1705)
	MisBeginAction(SetFlag, 1705, 1)
	MisBeginAction(AddTrigger, 8223, TE_GETITEM, 4283, 100)--тиковое бревно 4283
	MisBeginAction(AddTrigger, 8052, TE_GETITEM, 4284, 100)--Фальшивые флотские документы 4284
	MisBeginAction(AddTrigger, 8053, TE_GETITEM, 4285, 100)--Браслет ящера 4285
	MisCancelAction(ClearMission, 1705)

	MisNeed(MIS_NEED_DESP, "Соберите все, чтобы получить подарок.")
	MisNeed(MIS_NEED_ITEM, 4283, 100, 10, 100)
	MisNeed(MIS_NEED_ITEM, 4284, 100, 20, 100)
	MisNeed(MIS_NEED_ITEM, 4285, 100, 30, 100)

	MisResultTalk("<t>Молодец, ты сделал это! Ты действительно достоен награды!")
	MisHelpTalk("<t>Вы еще не собрали все, что нужно.")
	MisResultCondition(HasMission, 1705 )
	MisResultCondition(HasItem, 4283, 100)
	MisResultCondition(HasItem, 4284, 100)
	MisResultCondition(HasItem, 4285, 100)
	MisResultCondition(NoRecord, 1705)
	MisResultAction(SetRecord, 1705)
	MisResultAction(TakeItem, 4283, 100)
	MisResultAction(TakeItem, 4284, 100)
	MisResultAction(TakeItem, 4285, 100)
	MisResultAction(GiveItem, 8288 , 1 , 4) 
	MisResultAction(GiveItem, 4286, 1, 4)
	MisResultAction(ClearMission, 1705 )
	MisResultBagNeed(1)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4283 )
	TriggerAction( 1, AddNextFlag, 1705, 10, 100 )
	RegCurTrigger( 8223 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4284 )
	TriggerAction( 1, AddNextFlag, 1705, 20, 100 )
	RegCurTrigger( 8052 )

	InitTrigger()
	TriggerCondition( 1, IsItem, 4285 )
	TriggerAction( 1, AddNextFlag, 1705, 30, 100 )
	RegCurTrigger( 8053 )
	
	