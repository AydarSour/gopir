-------------------------------------------------------------------
--									--
--									--
--NPCScript06.lua Created by Robin.Zeng 2005.9.22.				--
--									--
--									--
--------------------------------------------------------------------------
print( "loading NPCScript06.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

--------------------------------------------------


--                 ё±±ѕИООс


--------------------------------------------
function DuplicateMission001()
-----------------------------------ѕЖ№нµДГШГЬ
	DefineMission( 500, "Тайны Пропойного двора", 500 )
	
	MisBeginTalk( "Я так давно не пил вина... Приятель, для меня вино, как кислород! Не могу жить без него! <n><t>Ты бы не мог купить для меня бутылочку вина в баре Аргента? За это я расскажу тебе секрет." )
	MisBeginCondition(LvCheck, ">", 29 )
	MisBeginCondition(NoMission, 500)
	MisBeginCondition(NoRecord, 500)
	MisBeginAction(AddMission, 500)
	MisBeginAction(AddTrigger, 5001, TE_GETITEM, 3916, 1 )
	MisCancelAction(ClearMission, 500)

	MisNeed(MIS_NEED_DESP, "Купите 1 кокосовое вино для Пьянчужки в баре Аргента (2222, 2889).")
	MisNeed(MIS_NEED_ITEM, 3916, 1, 10, 1)
		
	MisHelpTalk("Что? Девчонка не продала тебе вина? Или ты не ходил к ней? Иди сейчас! Не зли меня! Я забуду, что тебе нужно узнать.")
	MisResultTalk("Хммм... Несомненно, это отличное вино! Давно я не употреблял напитки такого качества! Будешь? ­ ZZzzzZZZzzz")
	MisResultCondition(NoRecord, 500)
	MisResultCondition(HasMission, 500)
	MisResultCondition(HasItem, 3916, 1)
	MisResultAction(TakeItem, 3916, 1)
	MisResultAction(ClearMission, 500)
	MisResultAction(SetRecord, 500)
	MisResultAction(AddExp, 5000, 5000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3916 )	
	TriggerAction( 1, AddNextFlag, 500, 10, 1 )
	RegCurTrigger( 5001 )

-----------------------------------ФЩАґТ»±­
	DefineMission( 501, "Еще чашечку, пожалуйста", 501 )
	
	MisBeginTalk( "<t>Oh my...The last drop of my wine is gone! But I am still thirsty for more...<n><t>Young adventurer, get me the famous \"Drunkern Dream\" from Argent bar. Faster!<n><t>Some Sashimi too will be nice..." )
	MisBeginCondition(NoMission, 501)
	MisBeginCondition(NoRecord, 501)
	MisBeginCondition(HasRecord, 500)
	MisBeginAction(AddMission, 501)
	MisBeginAction(AddTrigger, 5011, TE_GETITEM, 3926, 1 )
	MisBeginAction(AddTrigger, 5012, TE_GETITEM, 1478, 20 )
	MisCancelAction(ClearMission, 501)

	MisNeed(MIS_NEED_DESP, "Для \ Мечта Дункана\  требуются все ингредиенты...")
	MisNeed(MIS_NEED_ITEM, 3926, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 1478, 20, 20, 20)
		
	MisHelpTalk("Я хочу больше вина!")
	MisResultTalk(" О.. Какое хорошее вино... Ай точно секрет! <n><t>Когда я был молодым примерно твоего возраста, я собрал группу исследователей моего и твоего возраста. Мы вышли в море и плыли по старому компасу который нашел один из команды. Мы плыли по показанием компаса, на восток, вдруг мы увидели большую воронку, нас просто затянуло в нее!<n><t>Попав через воронку, мы увидели странный остров с руинами на нем... Я вдруг вспомнил легенду о Забытом Городе которую часто рассказывал мне эту историю. Много секретов и богатства лежит в этом городе!<n><t>Тем не менее никто из нас не мог унести больше одной монеты из этого города. Если кто-то брал больше появлялись злостные скелеты и просто нападали на нас! Они поубивали нас всех! Только я и Маленький Даниель вернулись с этого похода.<n><t>Ты не веришь мне? Нет! Спроси у Маленького Даниеля, он тебе все скажет! Иногда мне даже снится это странное место... Хррррр...")
	MisResultCondition(NoRecord, 501)
	MisResultCondition(HasMission, 501)
	MisResultCondition(HasItem, 3926, 1)
	MisResultCondition(HasItem, 1478, 20)
	MisResultAction(TakeItem, 3926, 1)
	MisResultAction(TakeItem, 1478, 20)
	MisResultAction(ClearMission, 501)
	MisResultAction(SetRecord, 501)
	MisResultAction(AddExp, 10000, 10000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3926 )	
	TriggerAction( 1, AddNextFlag, 501, 10, 1 )
	RegCurTrigger( 5011 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 1478 )	
	TriggerAction( 1, AddNextFlag, 501, 20, 20 )
	RegCurTrigger( 5012 )

-----------------------------------ЧнЙъГОЛА
	DefineMission( 502, "Пьяные мечты", 502 )
	
	MisBeginTalk( "<t>О...Мечты Дункана? Только Дункан знает про это вино.<n><t>В это странное вино входят индегреинты 1 Снежная гулкая раковина, 5 Радужный фрукт, 5 Чудо-фрукт и 20 Цветок дурмана. Это все достать не сложно.<n><t>А и под конец, за работу 2000 золота." )
	MisBeginCondition(NoMission, 502)
	MisBeginCondition(NoRecord, 502)
	MisBeginCondition(HasRecord, 500)
	MisBeginCondition(HasMission, 501)
	MisBeginAction(AddMission, 502)
	MisBeginAction(AddTrigger, 5021, TE_GETITEM, 4377, 1 )
	MisBeginAction(AddTrigger, 5022, TE_GETITEM, 3121, 5 )
	MisBeginAction(AddTrigger, 5023, TE_GETITEM, 3131, 5 )
	MisBeginAction(AddTrigger, 5024, TE_GETITEM, 4352, 20 )
	MisCancelAction(ClearMission, 502)

	MisNeed(MIS_NEED_ITEM, 4377, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 3121, 5, 15, 5)
	MisNeed(MIS_NEED_ITEM, 3131, 5, 20, 5)
	MisNeed(MIS_NEED_ITEM, 4352, 20, 30, 20)

	MisPrize(MIS_PRIZE_ITEM, 3926, 1, 4)
	MisPrizeSelAll()
		
	MisHelpTalk("Brewing of \"Drunken Dreams\"Ў­All ingredients must be preparedЎ­")
	MisResultTalk("Все! Лучшее вино! Как раз то что хотел Дункан.")
	MisResultCondition(NoRecord, 502)
	MisResultCondition(HasMission, 502)
	MisResultCondition(HasItem, 4377, 1)
	MisResultCondition(HasItem, 3121, 5)
	MisResultCondition(HasItem, 3131, 5)
	MisResultCondition(HasItem, 4352, 20)
	MisResultCondition(HasMoney, 2000 )
	MisResultAction(TakeMoney, 2000 )
	MisResultAction(TakeItem, 4377, 1)
	MisResultAction(TakeItem, 3121, 5)
	MisResultAction(TakeItem, 3131, 5)
	MisResultAction(TakeItem, 4352, 20)
	MisResultAction(ClearMission, 502)
	MisResultAction(SetRecord, 502)
	MisResultAction(AddExp, 20000, 20000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 4377 )	
	TriggerAction( 1, AddNextFlag, 502, 10, 1 )
	RegCurTrigger( 5021 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3121 )	
	TriggerAction( 1, AddNextFlag, 502, 15, 5 )
	RegCurTrigger( 5022 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3131 )	
	TriggerAction( 1, AddNextFlag, 502, 20, 5 )
	RegCurTrigger( 5023 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 4352 )	
	TriggerAction( 1, AddNextFlag, 502, 20, 20 )
	RegCurTrigger( 5024 )

-----------------------------------·ПБйОдКїєЎ№З
	DefineMission( 503, "Скелет печального воина", 503 )
	
	MisBeginTalk( "<t>Если Дункан послал тебя суда, я тебе могу. Я был там до него, но не сказал ему. Что бы войти нужен Генератор Древних. Принеси мне 10 Деталей Робота.<n><t>Кстати, вы можете собрать кости для моего исследования, пока вы там?" )
	MisBeginCondition(NoMission, 503)
	MisBeginCondition(NoRecord, 503)
	MisBeginCondition(HasRecord, 501)
	MisBeginAction(AddMission, 503)
	MisBeginAction(AddTrigger, 5031, TE_GETITEM, 3434, 10 )
	MisBeginAction(AddTrigger, 5032, TE_GETITEM, 3435, 10 )
	MisBeginAction(AddTrigger, 5033, TE_GETITEM, 3436, 10 )
	MisBeginAction(AddTrigger, 5034, TE_GETITEM, 3437, 10 )
	MisCancelAction(ClearMission, 503)

	--MisNeed(MIS_NEED_DESP, "Found 10 Sorrow Warrior Carcass in Forsaken City. Give it to Little Daniel in Argent City at (2193, 2730)")
	MisNeed(MIS_NEED_ITEM, 3434, 10, 10, 10)
	MisNeed(MIS_NEED_ITEM, 3435, 10, 20, 10)
	MisNeed(MIS_NEED_ITEM, 3436, 10, 30, 10)
	MisNeed(MIS_NEED_ITEM, 3437, 10, 40, 10)
		
	MisHelpTalk("Это крайне интересно... Вам надо тоже на это посмотреть.")
	MisResultTalk("Это труп бессмертного...<n><t>Я чувствую как он зовет меня! Интересно, что это за таинственная сила. Мне нужно будет сделать углубленное исследование.<n><t>Может я раскрою секрет это силы!")
	MisResultCondition(NoRecord, 503)
	MisResultCondition(HasMission, 503)
	MisResultCondition(HasItem, 3434, 10)
	MisResultCondition(HasItem, 3435, 10)
	MisResultCondition(HasItem, 3436, 10)
	MisResultCondition(HasItem, 3437, 10)
	MisResultAction(TakeItem, 3434, 10)
	MisResultAction(TakeItem, 3435, 10)
	MisResultAction(TakeItem, 3436, 10)
	MisResultAction(TakeItem, 3437, 10)
	MisResultAction(ClearMission, 503)
	MisResultAction(SetRecord, 503)
	MisResultAction(AddExp, 80000, 80000)
	--MisResultAction(AddMoney,270,270)

	InitTrigger()
	TriggerCondition( 1, IsItem, 3434 )	
	TriggerAction( 1, AddNextFlag, 503, 10, 10 )
	RegCurTrigger( 5031 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3435 )	
	TriggerAction( 1, AddNextFlag, 503, 20, 10 )
	RegCurTrigger( 5032 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3436 )	
	TriggerAction( 1, AddNextFlag, 503, 30, 10 )
	RegCurTrigger( 5033 )
	InitTrigger()
	TriggerCondition( 1, IsItem, 3437 )	
	TriggerAction( 1, AddNextFlag, 503, 40, 10 )
	RegCurTrigger( 5034 )

----------------------------------------
--                                    --
--        јУАХ±ИєЈµБЦчПЯИООс          --
--                                    --
----------------------------------------

----------------------------------------
--                                    --
--              ЦчПЯИООс              --
--                                    --
----------------------------------------

-- МъЅі >> МъЅіµДµЈУЗ
	DefineMission(504,"Опасения Кузнеца",504)
	
	MisBeginTalk("<t>Моя любимая была похищена! Я пойду спасти себя! Черт бы побрал этих Мертвых Душ! Я буду рвать вас на куски!<n><t>Прости меня за эмоции. Если ты видел Элизабет, скажи ей что я вернусь за ней.<n><t>Если даже это будет стоить моей жизнью!")

	MisBeginCondition(NoRecord, 504)
	MisBeginCondition(NoMission, 504)

	MisBeginAction(AddMission, 504)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisHelpTalk("<t>Я никогда не медлю, поэтому и ты беги к ней быстрей!")
	MisNeed(MIS_NEED_DESP, "Пошли письмо Элизабет")
	
	MisResultCondition(AlwaysFailure)

-- МъЅі >> МъЅіµДµЈУЗ
	DefineMission(505,"Опасения Кузнеца",504,COMPLETE_SHOW )
	
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Тебя послал Марк ко мне?<n><t>Я знаю... Я люблю его...")
	MisResultCondition(HasMission, 504)
	MisBeginCondition(NoRecord, 504)
	
	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(ClearMission, 504)
	MisResultAction(SetRecord, 504)


-- МъЅі >> ТБАцЙЇ°ЧµД¶ЁЗйРЕОп
	DefineMission(506,"Любовный подарок Элизабет",505)

	MisBeginTalk("<t>Я хочу послать ему это ожерелье, оно много значит для меня. Эй где мое ожерелье? О нет я его потеряла! <n><t>Ой что же я наделала! Я думаю я его потеряла на корабле Пиратов! Оно для меня очень, это ведь еще для Марка!<n><t>Не мог бы ты его вернуть мне?")

	MisBeginCondition(HasRecord, 504)
	MisBeginCondition(NoMission, 505)
	MisBeginCondition(NoRecord, 505)

	MisBeginAction(AddMission, 505)
	MisBeginAction(AddTrigger, 5051, TE_GETITEM, 2415, 1)
	
	MisNeed(MIS_NEED_ITEM, 2415, 1, 10, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisHelpTalk("<t>Не мог бы ты найти мое ожерелье?")

	MisResultTalk("<t>Да, это оно! Спасибо тебе огромное.")

	MisResultCondition(HasMission, 505)
	MisResultCondition(HasItem, 2415, 1)
	MisResultCondition(NoRecord,505)

	MisResultAction(AddExp, 250000, 250000)
	MisResultAction(AddMoney, 150000, 150000)
	MisResultAction(ClearMission, 505)
	MisResultAction(TakeItem, 2415,1)
	MisResultAction(SetRecord, 505)

	InitTrigger()
	TriggerCondition(1,IsItem, 2415)
	TriggerAction(1, AddNextFlag, 505, 10, 1)
	RegCurTrigger(5051)


-- МъЅі >> ¶ЁЗйПоБґ
	DefineMission(507,"Ожерелье любви",506)
	
	MisBeginTalk("<t>Все хорошо. Я написала ему письмо и прикрепила на него ожерелье.<n><t>Не мог бы ты послать письмо Марку? Да храни тебя Бог!")

	MisBeginCondition(HasRecord, 505)
	MisBeginCondition(NoRecord, 506)
	MisBeginCondition(NoMission, 506)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 506)
	MisBeginAction(GiveItem, 2415,1,4)

	MisHelpTalk("<t>Богиня дала благословение.")
	MisNeed(MIS_NEED_DESP, "Помоги Элизабет отослать письмо Кузнецу Марку")

	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisResultCondition(AlwaysFailure)

-- МъЅі >> ¶ЁЗйПоБґ
	DefineMission(508,"Ожерелье любви",506, COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Ты нашел Элизабет? Молодец, спасибо тебе большое.<n><t>Подожди, а где ожерелье? А вот оно. Спасибо тебе.")
	MisResultCondition(HasMission, 506)
	MisResultCondition(NoRecord,506)
	MisResultCondition(HasItem, 2415, 1)

	MisResultAction(AddExp, 10000, 10000)
	MisResultAction(AddMoney, 25000, 25000)

	MisResultAction(TakeItem, 2415, 1)
	MisResultAction(ClearMission, 506)
	MisResultAction(SetRecord, 506)

-- МъЅі >> МъЅіµДФј¶Ё
	DefineMission(509,"Обещание кузнеца",507)
	
	MisBeginTalk("<t>Да храни тебя Богиня, у меня просто уникальное оружие. Можете ли вы помочь мне с этим?<n><t>Это оружие можно достать только с Командира Мертвых Душ.")

	MisBeginCondition(HasRecord, 506)
	MisBeginCondition(NoRecord, 507)
	MisBeginCondition(NoMission, 507)

	MisBeginAction(AddMission, 507)
	MisBeginAction(AddTrigger, 5071, TE_GETITEM, 2384, 1)

	MisNeed(MIS_NEED_ITEM, 2384, 1, 10, 1)

	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisHelpTalk("<t>...Это очень важно для меня. Хмм. Ты достал мне уникальное оружие?")

	MisResultTalk("<t>Это то что я искал, то что говорила Элизабет.")

	MisResultCondition(HasMission, 507)
	MisResultCondition(HasItem, 2384, 1)
	MisResultCondition(NoRecord, 507)

	MisResultAction(TakeItem, 2384, 1)
	MisResultAction(AddExp, 200000, 200000)
	MisResultAction(AddMoney, 100000, 100000)

	MisResultAction(ClearMission, 507)
	MisResultAction(SetRecord, 507)

	InitTrigger()
	TriggerCondition(1, IsItem, 2384)
	TriggerAction(1, AddNextFlag, 507, 10, 1)
	RegCurTrigger(5071)

-- МъЅі >> МШКвµДОдЖч
	DefineMission(573,"Уникальное оружие",508)
	
	MisBeginTalk("<t>Это оружие не совсем то что я хотел. Я чувствую не большую силу.<n><t>Хммм...Не мог бы ты отнести его к Джеку Воробью? Он сразу скажет то ли это.")
	
	MisBeginBagNeed(1)
	MisBeginCondition(HasRecord, 507)
	MisBeginCondition(NoRecord, 508)
	MisBeginCondition(NoMission, 508)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 508)
	MisBeginAction(GiveItem, 2384, 1,4)

	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisHelpTalk("<t>Что сказал Джек? Или ты еще не был у него?")
	MisNeed(MIS_NEED_DESP, "Принеси это оружие Джеку Воробью")

	MisResultCondition(AlwaysFailure)


-- ЅЬїЛК·ЕЙВЮ >> МШКвµДОдЖч
	DefineMission(574,"Уникальное оружие", 508,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)
	MisResultTalk("<t>Дай-ка я посмотрю! Это оружие и вправду порождение тьмы.<n><t>Только дьявол сможет носить его...Марк просто слишком добр для него...")
	MisResultCondition(HasMission, 508)
	MisResultCondition(NoRecord, 508)
	MisResultCondition(HasItem, 2384, 1)

	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(TakeItem, 2384, 1)
	MisResultAction(ClearMission, 508)
	MisResultAction(SetRecord, 508)


-- ЅЬїЛК·ЕЙВЮ >> єЈµБУлєЈѕь
	DefineMission(575,"Пираты против Флота",509)
	
	MisBeginTalk("<t>Я требую сделать поездку в Управление Флотом. Расскажи Веллингтону об случившейся ситуации.<n><t>Я думаю он найдет нужное решение.")

	MisBeginCondition(HasRecord, 508)
	MisBeginCondition(NoRecord, 509)
	MisBeginCondition(NoMission, 509)

	MisBeginAction(AddMission, 509)
	
	MisHelpTalk("<t>Ты уже совершил поездку? Нет тогда отправляйся туда не медленно!")
	MisNeed(MIS_NEED_DESP, "Помоги Джеку Воробью доставить сообщение Веллингтону.")
	
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisResultCondition(AlwaysFailure)

-- ЕµБй¶Щ >> єЈµБУлєЈѕь
	DefineMission(576, "Пираты против Флота", 509,COMPLETE_SHOW)
	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Джек еще не умер? Что! Он смеет просить моей помощи? Какой он смелый!<n><t>Хмм... Офицер Мертвых Душ Токен?<n><t>Похоже, мы стоим на гране союза ведь у нас одна цель... Я буду рассматривать предложение Джека.")

	MisResultCondition(HasMission, 509)
	MisResultCondition(NoRecord, 509)

	MisResultAction(AddMoney, 25000, 25000)
	MisResultAction(ClearMission, 509)
	MisResultAction(SetRecord, 509)

-- ЕµБй¶Щ >> Ѕ«ѕьµД±н°Ч
	DefineMission(577,"Признание в любви генерала",510)
	
	MisBeginTalk("<t>Черт бы побрал этих Мертвых душ! Я хотел сделать предложение одно девушке, но эти проклятые души украли мое кольцо!<n><t>Не мог бы ты вернуть его обратно?<n><t>Черт! Нам не везет сегодня. Пожалуйста верни его обратно по скорее. Они убегают на кораблях.")

	MisBeginCondition(HasRecord, 509)
	MisBeginCondition(NoRecord, 510)
	MisBeginCondition(NoMission, 510)
	
	MisBeginAction(AddMission, 510)
	MisBeginAction(AddTrigger, 5101, TE_GETITEM, 2416, 1)
	MisNeed(MIS_NEED_ITEM, 2416, 1, 10, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisHelpTalk("<t>Если ты не вернешь мне кольцо, я не помогу Джеку.")

	MisResultTalk("<t>Слава Богам! Я могу сделать предложение Элизабет ведь ты достал мне кольцо!")

	MisResultCondition(HasMission, 510)
	MisResultCondition(NoRecord, 510)
	MisResultCondition(HasItem, 2416, 1)
	
	MisResultAction(TakeItem, 2416, 1)
	MisResultAction(AddExp, 30000, 30000)
	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(ClearMission, 510)
	MisResultAction(SetRecord, 510)
	
	InitTrigger()
	TriggerCondition(1, IsItem, 2416)
	TriggerAction(1, AddNextFlag, 510, 10, 1)
	RegCurTrigger(5101)

-- ЕµБй¶Щ >> Ѕ«ѕьµД±н°Ч
	DefineMission(578,"Признание в любви генерала",511)
	
	MisBeginTalk("<t>Как я и говорил ранее... Я люблю девушку...<n><t>Но я очень застенчивый и сам не могу сделать ей предложение... Не мог бы ты принести ей это кольцо... Посмотри на ее реакцию...<n><t>Я буду признателен вам.... Если она примет мою любовь... Ах точно..... Ее зовут Элизабет.")

	MisBeginCondition(HasRecord, 510)
	MisBeginCondition(NoRecord, 511)
	MisBeginCondition(NoMission, 511)
	MisBeginBagNeed(1)

	MisBeginAction(AddMission, 511)
	MisBeginAction(GiveItem, 2416, 1,4)
	MisHelpTalk("<t>Элизабет... Элизабет...")
	MisNeed(MIS_NEED_DESP, "<t>Помоги Веллингтону признаться в любви к Элизабет.")

	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisResultCondition(AlwaysFailure)

-- ТБАцЙЇ°Ч >> Ѕ«ѕьµД±н°Ч
	DefineMission(579, "Признание в любви генерала", 511,COMPLETE_SHOW)
	
	MisBeginCondition(AlwaysFailure)
	
	MisResultTalk("<t>Генерал Веллингтон... Ой я даже не знаю...")
	MisResultCondition(HasMission, 511)
	MisResultCondition(NoRecord, 511)
	MisResultCondition(HasItem, 2416, 1)

	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(TakeItem, 2416, 1)
	MisResultAction(ClearMission, 511)
	MisResultAction(SetRecord, 511)

-- ТБАцЙЇ°Ч >> ТБАцЙЇ°ЧµДЖнµ»
	DefineMission(580,"Молитва Элизабет",512)

	MisBeginTalk("<t>Я чувствую себя плохо.<n><t>Мне надо повидаться с Марком. Я не хочу его расстраивать, не мог бы ты сходить к нему и проверить его? Я за него волнуюсь.<n><t>Я буду молиться что бы ты дошел!")

	MisBeginCondition(HasRecord, 511)
	MisBeginCondition(NoRecord, 512)
	MisBeginCondition(NoMission, 512)
	
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")
	MisBeginAction(AddMission, 512)
	MisHelpTalk("<t>О могущественный Бог благослови Марка...")
	MisNeed(MIS_NEED_DESP, "Помоги Элизабет. Сходи проведай Марка.")

	MisResultCondition(AlwaysFailure)


-- МъЅі >> ТБАцЙЇ°ЧµДЖнµ»
	DefineMission(581, "Молитва Элизабет", 512,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Зачем Элизабет послала тебя?<n><t>У нее что-то случилось? У меня есть пара проблем, но они не значительные. Скажи что бы она не беспокоилась.")

	MisResultCondition(HasMission, 512)
	MisResultCondition(NoRecord, 512)
	
	MisResultAction(AddMoney, 35000, 35000)
	MisResultAction(ClearMission, 512)
	MisResultAction(SetRecord, 512)

-- МъЅі >> ЧзЦд
	DefineMission(582,"Проклятье",513)

	MisBeginTalk("<t>Сокровища которые мы нашли, украли духи мертвых душ. Они наложили проклятье на все что там было.<n><t>Не мог бы ты вернуть мне эти сокровища, я продолжу изучение этого проклятья.<n><t>Но ведь для тебя это не составит проблемы, ведь.<n><t>Пойди и убей их, они наверное на Черной Жемчужине. Я знаю, что это чрезвычайно трудная задача, я награжу тебя хорошо, когда задание будет завершено.")
	
	MisBeginCondition(HasRecord, 512)
	MisBeginCondition(NoRecord, 513)
	MisBeginCondition(NoMission, 513)
	
	MisBeginAction(AddMission, 513)
	MisBeginAction(AddTrigger, 5131,TE_GETITEM, 2417, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisNeed(MIS_NEED_ITEM, 2417, 1, 10, 1)

	MisHelpTalk("<t>Ты вернул мне сокровища?")

	MisResultTalk("<t> Дай мне посмотреть... Это действительно мощный проклятие. Позволь мне попытаться отменить его.<n><t>!^($......%*#oa2......1&s?~*#^%!...... (Кузнец начал говорить на каком-то странном и не красивом языке!) Отлично! Проклятие снято!")

	MisResultCondition(HasMission, 513)
	MisResultCondition(NoRecord, 513)
	MisResultCondition(HasItem, 2417, 1)
	
	MisResultAction(TakeItem, 2417, 1)
	MisResultAction(AddExp, 500000, 500000)
	MisResultAction(AddMoney, 800000, 800000)
	MisResultAction(ClearMission, 513)
	MisResultAction(SetRecord, 513)

	InitTrigger()
	TriggerCondition(1, IsItem, 2417)
	TriggerAction(1, AddNextFlag, 513, 10, 1)
	RegCurTrigger(5131)

-- МъЅі >> ЧзЦд

	DefineMission(583,"Проклятье",514)
	
	MisBeginTalk("<t>Мы сняли проклятье. Но вот эти странные монеты пиратов.<n><t>Без их сокровища и источником власти, они не смогут противостоять нам!<n><t>Настало время сделать решительный шаг! Но вначале сообщи об этом Джеку.")

	MisBeginCondition(HasRecord, 513)
	MisBeginCondition(NoRecord, 514)
	MisBeginCondition(NoMission, 514)

	MisBeginAction(AddMission, 514)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisHelpTalk("<t>Почему ты еще не уехал?! Нам нельзя медлить! Беги быстрей!")
	MisNeed(MIS_NEED_DESP, "Расскажите Джеку от имени кузнеца, что проклятие было снято.")

	MisResultCondition(AlwaysFailure)

-- ЅЬїЛК·ЕЙВЮ >> ЧзЦд
	DefineMission(584, "Проклятье", 514,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Хорошо. Начнем наступление. Вы с нами?")
	MisResultCondition(HasMission, 514)
	MisResultCondition(NoRecord, 514)

	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 514)
	MisResultAction(SetRecord, 514)

-- ЅЬїЛК·ЕЙВЮ >> ХжХжµДґ¬і¤
	DefineMission(585,"Тот самый Капитан",515)
	
	MisBeginTalk("<t>Битва надвигается! Я отомщу им! Жди меня Барбаросса!<n><t>Мой друг, Капитан Токен знает об Барбароссе многое однако убивать он его не хочет, но если ты убьешь его без помощи я награжу тебя!<n><t>Он узнает капитан Черной Жемчужины!")
	MisBeginCondition(HasRecord, 514)
	MisBeginCondition(NoRecord, 515)
	MisBeginCondition(NoMission,515)
	
	MisBeginAction(AddMission, 515)
	MisBeginAction(AddTrigger, 5151, TE_KILL, 805, 1)
	MisBeginAction(AddTrigger, 5152, TE_GETITEM, 2428, 1)

	MisNeed(MIS_NEED_KILL, 805, 1, 10, 1)
	MisNeed(MIS_NEED_ITEM, 2428, 1,20, 1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisHelpTalk("<t>Чертов Барбаросса!")

	MisResultTalk("<t>Отлично! Я опять капитан Черной Жемчужины!")

	MisResultCondition(HasMission, 515)
	MisResultCondition(HasFlag, 515, 10)
	MisResultCondition(HasItem, 2428,1)
	MisResultCondition(NoRecord, 515)

	MisResultAction(TakeItem, 2428, 1)
	MisResultAction(ClearMission, 515)
	MisResultAction(SetRecord, 515)

	MisResultAction(AddExp, 500000,500000)
	MisResultAction(AddMoney, 800000,800000)

	InitTrigger()
	TriggerCondition(1,IsMonster, 805)
	TriggerAction(1,AddNextFlag, 515, 10, 1)
	RegCurTrigger(5151)

	InitTrigger()
	TriggerCondition(1, IsItem, 2428)
	TriggerAction(1, AddNextFlag , 515, 20, 1)
	RegCurTrigger(5152)


-- ЅЬїЛК·ЕЙВЮ >> єШАс
	DefineMission(586,"Дар",516)
	
	MisBeginTalk("<t>Все, наконец-то закончилась. Я слышал, что Марк и Элизабет поженились, наконец.<n><t>Я еще не отослал мой подарок. Можете ли вы сделать это от моего имени?<n><t>...Кто-то тебе давал уже такое задание?")

	MisBeginCondition(HasRecord, 515)
	MisBeginCondition(NoRecord, 516)
	MisBeginCondition(NoMission, 516)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisBeginAction(AddMission, 516)
	MisBeginAction(GiveItem, 2433, 1,4)
	MisHelpTalk("<t> Хмм... Любовь в облаках... Хеххе!")
	MisNeed(MIS_NEED_DESP, "Отнеси подарок от Джека Элизабет и поздравь ее со свадьбой.")
	
	MisResultCondition(AlwaysFailure)

-- ЅЬїЛК·ЕЙВЮ >> єШАс
	DefineMission(587,"Дар",516,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Вау...! Подарок от Джека! Давай-ка откроем его!<n><t>Что!!! Только Костяная Эмблема...Что же это!")
	MisResultCondition(HasMission, 516)
	MisResultCondition(NoRecord, 516)
	MisResultCondition(HasItem, 2433, 1)
	
	MisResultAction(TakeItem, 2433, 1)
	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 516)
	MisResultAction(SetRecord, 516)

-- ТБАцЙЇ°Ч >> РДУРЛщКф
	DefineMission(588,"Недостойный любви",517)
	
	MisBeginTalk("<t>Помоги мне еще раз...<n><t>Верни это кольцо Генералу Веллингтону, я надеюсь он поймет мои чувства.")

	MisBeginCondition(HasRecord, 516)
	MisBeginCondition(NoRecord, 517)
	MisBeginCondition(NoMission, 517)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisBeginAction(AddMission, 517)
	MisBeginAction(GiveItem, 2416, 1,4)
	MisHelpTalk("<t>Куда поехать на медовый месяц...? Хм...")
	MisNeed(MIS_NEED_DESP, "Помоги Элизабет вернуть кольцо Веллингтону.")
	
	MisResultCondition(AlwaysFailure)

-- ЕµБй¶Щ >> РДУРЛщКф
	DefineMission(589,"Недостойный любви",517,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Она вернула кольцо обратно...n><t>Зачем было обещать, если все равно знаешь что не выполнишь...<n><t>Печаль единственное, что осталось...")
	MisResultCondition(HasMission, 517)
	MisResultCondition(NoRecord, 517)
	MisResultCondition(HasItem, 2416, 1)
	
	MisResultAction(TakeItem, 2416, 1)
	MisResultAction(AddMoney, 30000, 30000)
	MisResultAction(ClearMission, 517)
	MisResultAction(SetRecord, 517)

-- ЕµБй¶Щ  >> ЕµБй¶ЩµДЧЈёЈ
	DefineMission(590,"Благословение Веллингтона",518)
	
	MisBeginTalk("<t>Я думал и думал... Если они действительно любят друг друга пусть останется так.<n><t>Отошли мой подарок им и скажи что я не злюсь.")

	MisBeginCondition(HasRecord, 517)
	MisBeginCondition(NoRecord, 518)
	MisBeginCondition(NoMission, 518)
	MisBeginBagNeed(1)
	MisCancelAction(SystemNotice, "This quest cannot be abandoned")

	MisBeginAction(AddMission, 518)
	MisBeginAction(GiveItem, 2435, 1,4)
	MisHelpTalk("<t>Элизабет! Я надеюсь, что судьба сведет нас в следующей жизни.")
	MisNeed(MIS_NEED_DESP, "Отошли подарок Велленгтона Элизабет.")
	
	MisResultCondition(AlwaysFailure)

-- ТБАцЙЇ°Ч>> ЕµБй¶ЩµДЧЈёЈ
	DefineMission(591,"Благословение Веллингтона",518,COMPLETE_SHOW)

	MisBeginCondition(AlwaysFailure)

	MisResultTalk("<t>Генерал Тернер... Вы крайне хороший человек.<n><t>Спасибо Вам...")
	MisResultCondition(HasMission, 518)
	MisResultCondition(NoRecord, 518)
	MisResultCondition(HasItem, 2435, 1)
	
	MisResultAction(TakeItem, 2435, 1)
	MisResultAction(AddMoney,300000, 300000)
	MisResultAction(ClearMission, 518)
	MisResultAction(SetRecord, 518)
	
end
DuplicateMission001()























