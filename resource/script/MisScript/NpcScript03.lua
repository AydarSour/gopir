--------Диспетчера, кораблестроители,СВЯЩЕННАЯ ВОЙНА
--									--
--									--
--npcscripts03.lua Created by Robin 2005.6.1.				--
--									--
--									--
--------------------------------------------------------------------------
print( "‡ Јаг§Є  npcscripts03.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck

function r_talk10 ()
	
	
	 Talk( 1, "Харбор : Привет! Я Оператор-Харбор. Как я могу помочь вам?" )
	


	AddNpcMission 	(443)
	AddNpcMission 	(445)
	AddNpcMission 	(447)
	AddNpcMission	(1020)
	AddNpcMission	(1076)
	AddNpcMission	(1132)
	AddNpcMission	(1183)
	AddNpcMission(	1226	)
	
end 


function r_talk27 ()
	
	
	Talk( 1, " Sanjay:Привет, Малыш! Я занимаюсь торговлей и девочками!." )


	AddNpcMission	(1021)
	AddNpcMission	(1077)
	AddNpcMission	(1133)
	AddNpcMission	(1184)

	AddNpcMission	(5728)
	AddNpcMission	(5729)
end 


function r_talk60 ()
	
	Talk( 1, "Франклин: Здравствуй! Строительству кораблей я научился в Аргенте. Можешь звать меня Франклин." )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "Достигнуто максимальное количество кораблей" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Построить корабль", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerAction( 1, BoatLevelBerthList, 3 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Усовершенствовать корабль", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Франклин: Эй! Хочешь отправиться в плавание? Тогда тебе нужен хороший корабль! Посмотри на мои корабли - нравится тебе какой-нибудь из них? Чтобы повысить уровень корабля, обращайся ко мне тогда, когда наберешь достаточно опыта в плавании или истреблении морских чудовищ." )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 1, 3 )
	Text( 2, "Построить Гуппи", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 5, 3 )
	Text( 2, "Построить Ветролов", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 6, 3 )
	Text( 2, "Построить Рыбу-меч", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 4, 3 )
	Text( 2, "Построить Черепаху", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 14 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 14, 3 )
	Text( 2, "Построить Ливень", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 15 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 15, 3 )
	Text( 2, "Построить Богиню", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 13 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 13, 3 )
	Text( 2, "Построить Огромную Белую акулу", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 16 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 16, 3 )
	Text( 2, "Построить Орёл", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Франклин: Чтобы повысить уровень своего судна, необходимо пришвартовать его в гавани. Корабль становится лучше, если поднять его уровень. Возвращайся, чтобы сделать это, когда накопишь достаточно опыта в плаваниях или сражениях с морскими чудовищами." )

	
	Text( 1, "Купить корабельные навыки ", SendExchangeXData)
	InitExchangeX()
	ExchangeDataX	(	8142	,	5	,	8865	,	1	)
	ExchangeDataX	(	8142	,	5	,	8866	,	1	)
	ExchangeDataX	(	8142	,	5	,	8867	,	1	)
	ExchangeDataX	(	8142	,	5	,	8868	,	1	)
	ExchangeDataX	(	8142	,	5	,	8869	,	1	)

	
	AddNpcMission	(1116)
	AddNpcMission	(158)
	AddNpcMission	(159)
	AddNpcMission	(160)
	
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<и€№еЋ‚е·ҐдєєВ·еј—е…°е…‹

------------------------------------------------------------
-- з™Ѕй“¶еџЋ-----жµ·дє‹ж‰ЂеЉ©зђ†В·зЅ—ж‹‰еЁњ
--           2247,2857
------------------------------------------------------------

function r_talk150()

	Talk( 1, "Алена: Привет! Я Морской советник. Чем я могу тебе помочь?" )

	--Text( 1, "жё©жѓ…е·Ёиџ№е®«(з»€жћЃ12е®«дё“з”Ёд»»еЉЎ)", JumpPage,2 )

	Talk( 2, "жµ·дє‹ж‰ЂеЉ©зђ†В·зЅ—ж‹‰еЁњ:иЇ·йЂ‰ж‹©дЅ и¦Ѓй—Їе…ізљ„йљѕеє¦,д»Ћж°ґж‰‹е€°и€№й•їйљѕеє¦дѕќж¬ЎеЉ е¤§,еЅ“з„¶дє†йљѕеє¦и¶Љй«?еҐ–еЉ±и¶Љдё°еЋљ.дЅ жѓіеҐЅдє†еђ—?еЏЄиѓЅйЂ‰ж‹©дёЂж¬Ў,дёЌеЏЇд»ҐеђЋж‚”е“¦" )

	InitTrigger()
	TriggerCondition( 1, NoRecord,1467 )
	TriggerCondition( 1, NoRecord,1468 )
	TriggerCondition( 1, HasItem, 1866, 1 )---------е·Ёиџ№й—ЁзҐЁ
	TriggerAction( 1, TakeItem, 1866, 1 )----------е·Ёиџ№й—ЁзҐЁ
	TriggerAction( 1, SetRecord, 1466 )
	TriggerAction( 1, SetRecord, 1469 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 2, "Моряк",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1466 )
	TriggerCondition( 1, NoRecord,1468 )
	TriggerCondition( 1, HasItem, 1866, 1 )---------е·Ёиџ№й—ЁзҐЁ
	TriggerAction( 1, TakeItem, 1866, 1 )----------е·Ёиџ№й—ЁзҐЁ
	TriggerAction( 1, SetRecord, 1467 )
	TriggerAction( 1, SetRecord, 1469 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 2, "Пират",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1466 )
	TriggerCondition( 1, NoRecord,1467 )
	TriggerCondition( 1, HasItem, 1866, 1 )--------е·Ёиџ№й—ЁзҐЁ
	TriggerAction( 1, TakeItem, 1866, 1 )----------е·Ёиџ№й—ЁзҐЁ
	TriggerAction( 1, SetRecord, 1468 )
	TriggerAction( 1, SetRecord, 1469 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 2, "Капитан",MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "жµ·дє‹ж‰ЂеЉ©зђ†В·зЅ—ж‹‰еЁњ:еёЊжњ›ж‚ЁиѓЅе¤џеќље®љи‡Єе·±зљ„йЂ‰ж‹©пјЊдёЌи¦Ѓж”ѕејѓе“¦пјЃж€‘ењЁиї™й‡ЊзҐќз¦Џж‚Ё..." )
	Talk( 4, "жµ·дє‹ж‰ЂеЉ©зђ†В·зЅ—ж‹‰еЁњ:жЊ‘ж€?е·Ёиџ№е®«зљ„ж—¶еЂ™,йљѕеє¦еЏЄиѓЅйЂ‰ж‹©дёЂж¬Ў.е№¶зЎ®дїќж‚Ёзљ„иѓЊеЊ…й‡Њжњ‰е·Ёиџ№е®«й—ЁзҐЁ.")
	
	AddNpcMission 	(437)
	AddNpcMission 	(439)
	AddNpcMission 	(441)

------------зЅ—ж‹‰еЁњ
-----------------------е·Ёиџ№еє§
	--AddNpcMission 	(5800)
	--AddNpcMission 	(5801)
	--AddNpcMission 	(5802)
	--AddNpcMission 	(5803)
	--AddNpcMission 	(5804)
	--AddNpcMission 	(5805)
	--AddNpcMission 	(5806)
	--AddNpcMission 	(5807)
	--AddNpcMission 	(5808)
	--AddNpcMission 	(5809)
	--AddNpcMission 	(5810)
	--AddNpcMission 	(5811)
	--AddNpcMission 	(5812)
	--AddNpcMission 	(5813)
	--AddNpcMission 	(5814)
	--AddNpcMission 	(5815)
	--AddNpcMission 	(5816)
	AddNpcMission 	(5857)
	AddNpcMission 	(5858)
	AddNpcMission 	(5862)
	AddNpcMission 	(5863)
	AddNpcMission 	(5864)

end

------------------------------------------------------------
-- з™Ѕй“¶еџЋ-----и€№е·ҐВ·ж–Їе·ґе…‹
------------------------------------------------------------
function r_talk151 ()
		
	Talk( 1, "Синбад: Эй! Хочешь выйти в море? Без хорошего корабля у тебя ничего не выйдет. У меня самые лучшие корабли в округе. Только взгляни!" )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "Достигнуто максимальное количество кораблей" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Построить корабль", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1 )
	TriggerAction( 1, BoatLevelBerthList, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Усовершенствовать корабль", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Синбад: Какой корабль ты желаешь построить? У меня есть несколько моделей. Если тебя это интересует, я могу сделать тебе скидку." )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 1 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 1, 1 )
	Text( 2, "Построить Гуппи", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 2 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 2, 1 )
	Text( 2, "Построить Транспорт", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 3, 1 )
	Text( 2, "Построить Летучую рыбку", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 6, 1 )
	Text( 2, "Построить Рыбу-меч", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 13 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 13, 1 )
	Text( 2, "Построить Огромную Белую акулу", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 16 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 16, 1 )
	Text( 2, "Построить Орёл", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Синбад: Видимо, твой корабль здесь не пришвартован. А это необходимо, чтобы повысить его уровень. Возвращайся, когда наберешь достаточно опыта в плаваниях или сражениях с морскими чудищами." )

	
	Text( 1, "Купить корабельные навыки ", SendExchangeXData)
	InitExchangeX()
	ExchangeDataX	(	8142	,	5	,	8865	,	1	)
	ExchangeDataX	(	8142	,	5	,	8866	,	1	)
	ExchangeDataX	(	8142	,	5	,	8867	,	1	)
	ExchangeDataX	(	8142	,	5	,	8868	,	1	)
	ExchangeDataX	(	8142	,	5	,	8869	,	1	)

	end 

------------------------------------------------------------
-- з™Ѕй“¶еџЋ-----жµ·жёЇжЊ‡жЊҐВ·й›ЄиЋ‰
------------------------------------------------------------

function r_talk152()

	Talk( 1, " Шерли: Привет! Я Диспетчер порта. Если захочешь отплыть - обращайся ко мне" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 1 )
	--TriggerAction( 1, RemoveYS )
	TriggerAction( 1, LuanchBerthList, 1, 2260,2829, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 1 )
	TriggerAction( 2, RepairBerthList, 1 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 1 )
	TriggerAction( 2, SupplyBerthList, 1 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 1 )
	TriggerAction( 1, SalvageBerthList, 1 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Извини, но я ремонтирую лишь корабли, приписанные к этой гавани. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Прости, но для заправки нужно пришвартовать корабль в нашей гавани. С тебя 200 золотых." )
	Talk( 6, "Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )

	AddNpcMission ( 289 )
	AddNpcMission ( 290 )


end

------------------------------------------------------------
-- жІ™еІљеџЋ-----жµ·жёЇжЊ‡жЊҐВ·й©¬е…‹
------------------------------------------------------------

function r_talk153()

	Talk( 1, "Марк: Привет! Я Диспетчер порта в Шайтане. Если захочешь отплыть - обращайся ко мне." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 832, 3698, 180 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, RepairBerthList, 3 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 3 )
	TriggerAction( 2, SupplyBerthList, 3 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 3 )
	TriggerAction( 1, SalvageBerthList, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Извини, но я ремонтирую лишь корабли, приписанные к этой гавани. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Прости, но для заправки нужно пришвартовать корабль в нашей гавани. С тебя 200 золотых." )
	Talk( 6, "Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )

	


end

------------------------------------------------------------
--е†°з‹је Ў-----и€№е·ҐВ·д№”жІ»
------------------------------------------------------------
function r_talk155 ()
		
	Talk( 1, "Джордж: Эй, ты! Хочешь выйти в море? Но как это сделать без корабля! Выбирай любой!" )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "Достигнуто максимальное количество кораблей" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Построить корабль", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4 )
	TriggerAction( 1, BoatLevelBerthList, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Усовершенствовать корабль", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Джордж: Какой корабль ты желаешь построить? У меня есть несколько моделей. Если тебя это интересует, я могу сделать тебе скидку." )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 2 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 2, 4 )
	Text( 2, "Построить Транспорт", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 5 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 5, 4 )
	Text( 2, "Построить Ветролов", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 3, 4 )
	Text( 2, "Построить Летучую рыбку", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 4, 4 )
	Text( 2, "Построить Черепаху", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 13 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 13, 4 )
	Text( 2, "Построить Огромную Белую акулу", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 16 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 16, 4 )
	Text( 2, "Построить Орёл", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Джордж: Чтобы повысить уровень судна, необходимо пришвартовать его в гавани. Корабль становится лучше, если поднять его уровень. Возвращайся, когда накопишь достаточно опыта в плаваниях или сражениях с морскими чудовищами." )
		
	Text( 1, "Купить корабельные навыки ", SendExchangeXData)
	InitExchangeX()
	ExchangeDataX	(	8142	,	5	,	8865	,	1	)
	ExchangeDataX	(	8142	,	5	,	8866	,	1	)
	ExchangeDataX	(	8142	,	5	,	8867	,	1	)
	ExchangeDataX	(	8142	,	5	,	8868	,	1	)
	ExchangeDataX	(	8142	,	5	,	8869	,	1	)
end 

------------------------------------------------------------
-- е†°з‹је Ў-----жµ·жёЇжЊ‡жЊҐВ·её­жћ—
------------------------------------------------------------

function r_talk154()

	Talk( 1, "Силион: Привет! Я Диспетчер порта в Ледыни. Я должен быть в курсе всех дел. Чем могу помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 4 )
	TriggerAction( 1, LuanchBerthList, 4, 1196,673, 177 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 4 )
	TriggerAction( 2, RepairBerthList, 4 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 4 )
	TriggerAction( 2, SupplyBerthList, 4 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 4 )
	TriggerAction( 1, SalvageBerthList, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 


	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море нужно спасти корабль!" )
	Talk( 4, "Извини, но я ремонтирую лишь корабли, приписанные к этой гавани." )
	Talk( 5, "Извини, но для заправки нужно пришвартовать корабль в нашей гавани. С вас 200 золотых." )
	Talk( 6, "Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )

	AddNpcMission ( 294 )
	AddNpcMission ( 295 )

end


------------------------------------------------------------
-- жµ·йЈЋеІ›-----жµ·жёЇжЊ‡жЊҐВ·и·Їе‡Ў
------------------------------------------------------------

function r_talk178()

	Talk( 1, "Люфань: Привет! Я Диспетчер порта. Чем могу помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 5 )
	TriggerAction( 1, LuanchBerthList, 5, 3240, 3314, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 5 )
	TriggerAction( 2, RepairBerthList, 5 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 5 )
	TriggerAction( 2, SupplyBerthList, 5 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 5 )
	TriggerAction( 1, SalvageBerthList, 5 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море нужно спасти корабль!" )
	Talk( 4, "Извини, но я ремонтирую лишь корабли, приписанные к этой гавани. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Прости, но для заправки нужно пришвартовать корабль в нашей гавани. С тебя 200 золотых." )
	Talk( 6, "Прости, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )
	--AddNpcMission	(3001 )
end

------------------------------------------------------------
-- зўЋе†°еІ›-----жµ·жёЇжЊ‡жЊҐВ·иЇєе°”зЅ—еѕ·
------------------------------------------------------------

function r_talk179()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 6 )
	TriggerAction( 1, LuanchBerthList, 6, 2301, 1144, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 6 )
	TriggerAction( 2, RepairBerthList, 6 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 6 )
	TriggerAction( 2, SupplyBerthList, 6 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 6 )
	TriggerAction( 1, SalvageBerthList, 6 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Извини, но я ремонтирую лишь корабли, приписанные к этой гавани. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Прости, но для заправки нужно пришвартовать корабль в нашей гавани. С тебя 200 золотых." )
	Talk( 6, "Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )

	
	
end

------------------------------------------------------------
-- й›ЄиґјеІ›-----жµ·жёЇжЊ‡жЊҐВ·йІЃе…№йІЃдјЉ
------------------------------------------------------------

function r_talk180()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 7 )
	TriggerAction( 1, LuanchBerthList, 7, 3628, 770, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 7 )
	TriggerAction( 2, RepairBerthList, 7 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 7 )
	TriggerAction( 2, SupplyBerthList, 7 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 7 )
	TriggerAction( 1, SalvageBerthList, 7 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Извини, но я ремонтирую лишь корабли, приписанные к этой гавани. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Прости, но для заправки нужно пришвартовать корабль в нашей гавани. С тебя 200 золотых." )
	Talk( 6, "Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )
	--AddNpcMission	(3002 )
end

------------------------------------------------------------
-- иђЁж‹‰иЎҐз»™з«™-----жµ·жёЇжЊ‡жЊҐВ·жё©дєљеЎ”
------------------------------------------------------------

function r_talk181()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 1 ) 
	
	Talk( 4, "Извини! Ремонт стоит 1000 зол." )
	Talk( 5, "Извини! Заправка стоит 200 зол." )

	
	
	AddNpcMission	(763)
	AddNpcMission(	1742	)
	AddNpcMission (	1938	)
	AddNpcMission (	1953	)
----------------еђ‰е°јж–Ї---жµ·жёЇжЊ‡жЊҐВ·жё©дєљеЎ”--03
	AddNpcMission	(5511)
	AddNpcMission	(5512)
	--AddNpcMission	(3003 )

end

------------------------------------------------------------
-- й?їе°”иЎҐз»™з«™-----жµ·жёЇжЊ‡жЊҐВ·иѕѕиЂ¶иѕѕ
------------------------------------------------------------

function r_talk182()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 1 ) 


	Talk( 4, "Извини! Ремонт стоит 1000 зол." )
	Talk( 5, "Извини! Заправка стоит 200 зол." )

	AddNpcMission	(379)
	AddNpcMission	(380)
----------------еђ‰е°јж–Ї---жµ·жёЇжЊ‡жЊҐВ·иѕѕиЂ¶иѕѕ--03
	AddNpcMission (5533 )
	AddNpcMission (5534 )
	
	
end

------------------------------------------------------------
-- е“€е°”иЎҐз»™з«™-----жµ·жёЇжЊ‡жЊҐВ·з“¦й›·з±і
------------------------------------------------------------

function r_talk183()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 1 ) 
--Text( 1, "Obtained Fairy Soul", JumpPage, 6 ) 
	
	Talk( 4, "Извини! Ремонт стоит 1000 зол." )
	Talk( 5, "Извини! Заправка стоит 200 зол." )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 50 )
	TriggerAction( 1, TakeItem, 3116, 50 )
	TriggerAction( 1, GiveItem, 3337, 1, 4 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 6, "Уайткомби: Привет! Ты хочешь заполучить Душу Феи? Тогда принеси мне 50 Эльфиских фруктов." )
	Text( 6, "У меня есть несколько Эльфийских фруктов.", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 7, "Уайткомби: Эй! Я же говорил уже - ты должен принести мне 50 Эльфийских фруктов." )


	AddNpcMission(	1740	)
	AddNpcMission (	1936	)
	AddNpcMission (	1951	)
	AddNpcMission (	381	)
	AddNpcMission (	382	)
----------------еђ‰е°јж–Ї---жµ·жёЇжЊ‡жЊҐВ·з“¦й›·з±і--03
	AddNpcMission (5531 )
	AddNpcMission (5532 )
	-----------------жµ·жёЇжЊ‡жЊҐВ·з“¦й›·з±і---------й‡‘з‰›
	AddNpcMission	(5655)
	AddNpcMission	(5656)

	-----------------жµ·жёЇжЊ‡жЊҐВ·з“¦й›·з±і---------е·Ёиџ№
	AddNpcMission	(5861)

end

------------------------------------------------------------
-- еј—й‡Њж•¦иЎҐз»™з«™-----жµ·жёЇжЊ‡жЊҐВ·жі•з¬¬е°”
------------------------------------------------------------

function r_talk184()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Извини! Ремонт стоит 1000 зол." )
	Talk( 5, "Извини! Заправка стоит 200 зол." )


	AddNpcMission(	1739	)
	AddNpcMission (	1935	)
	AddNpcMission (	1950	)
	AddNpcMission (	383	)
	AddNpcMission (	384	)
	AddNpcMission (	385	)

	----------------еђ‰е°јж–Ї---жµ·жёЇжЊ‡жЊҐВ·жі•з¬¬е°”--03
	AddNpcMission (5529 )
	AddNpcMission (5530 )



end

------------------------------------------------------------
-- жµ·йЈЋеІ›-----дє¤ж?“е‘?В·еёѓе°”е…№
------------------------------------------------------------

function r_talk185()

	Talk( 1, "Баргес: Привет! Чем могу помочь?" )
	Text( 1,"Обмен", SendExchangeData19 )

	InitExchange19()
	DoExchange19()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
	


--	AddNpcMission	(760)	--Путешествие Покорителя Морей

end

------------------------------------------------------------
-- зўЋе†°еІ›-----дє¤ж?“е‘?В·иµ›з‘џе°ј
------------------------------------------------------------

function r_talk186()

	Talk( 1, "Сакиний: Привет! Чем могу помочь?" )
Text( 1,"Обмен", SendExchangeData20 )

	InitExchange20()
	DoExchange20()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
--	AddNpcMission	(761)	--Путешествие Покорителя Морей

	-----------------дє¤ж?“е‘?В·иµ›з‘џе°ј---------й‡‘з‰›
	AddNpcMission	(5643)
	AddNpcMission	(5644)
end

------------------------------------------------------------
-- й›ЄиґјеІ›-----дє¤ж?“е‘?В·и‚ҐйІёеѕ·ж‹‰еѕ·
------------------------------------------------------------

function r_talk187()

	Talk( 1, "Дилади: Привет! Чем могу помочь?" )
Text( 1,"Обмен", SendExchangeData21 )

	InitExchange21()
	DoExchange21()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

--	AddNpcMission	(762)	--Путешествие Покорителя Морей
end

------------------------------------------------------------
-- е†°й›ЄеІ›-----жµ·жёЇжЊ‡жЊҐВ·жіўе°”
------------------------------------------------------------

function r_talk188()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 8 )
	TriggerAction( 1, LuanchBerthList, 8, 2351, 767, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 8 )
	TriggerAction( 2, RepairBerthList, 8 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 8 )
	TriggerAction( 2, SupplyBerthList, 8 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 8 )
	TriggerAction( 1, SalvageBerthList, 8 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Извини, но я ремонтирую лишь корабли, приписанные к этой гавани. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Прости, но для заправки нужно пришвартовать корабль в нашей гавани. С тебя 200 золотых." )
	Talk( 6, "Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )
	----------жµ·жёЇжЊ‡жЊҐВ·жіўе°”-------еЏЊе­ђ--------03
	--AddNpcMission	(101)
	AddNpcMission	(5704)
	AddNpcMission	(5705)
	--AddNpcMission (3013 )
	
end

------------------------------------------------------------
-- йёЈжІ™еІ›-----жµ·жёЇжЊ‡жЊҐВ·ж‰?зЋ›
------------------------------------------------------------

function r_talk189()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 9 )
	TriggerAction( 1, LuanchBerthList, 9, 1769, 3788, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 9 )
	TriggerAction( 2, RepairBerthList, 9 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 9 )
	TriggerAction( 2, SupplyBerthList, 9 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 9 )
	TriggerAction( 1, SalvageBerthList, 9 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Извини, но я ремонтирую лишь корабли, приписанные к этой гавани. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Прости, но для заправки нужно пришвартовать корабль в нашей гавани. С тебя 200 золотых." )
	Talk( 6, "Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )
	
end

------------------------------------------------------------
-- зњџз€±еІ›-----жµ·жёЇжЊ‡жЊҐВ·е¤Џеѕ·е€©
------------------------------------------------------------
function r_talk190()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 10 )
	TriggerAction( 1, LuanchBerthList, 10, 2527, 2358, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 10 )
	TriggerAction( 2, RepairBerthList, 10 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 10 )
	TriggerAction( 2, SupplyBerthList, 10 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 10 )
	TriggerAction( 1, SalvageBerthList, 10 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Извини, но я ремонтирую лишь корабли, приписанные к этой гавани. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Прости, но для заправки нужно пришвартовать корабль в нашей гавани. С тебя 200 золотых." )
	Talk( 6, "Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )
	--AddNpcMission (3005 )
end

------------------------------------------------------------
-- и‹ЏжёЇиЎҐз»™з«™-----жµ·жёЇжЊ‡жЊҐВ·йІЃиҐї
------------------------------------------------------------
function r_talk191()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Извини! Ремонт стоит 1000 зол." )
	Talk( 5, "Извини! Заправка стоит 200 зол." )
	 -------------еђ‰е°јж–Ї--и‹ЏжёЇиЎҐз»™з«™,жµ·жёЇжЊ‡жЊҐВ·йІЃиҐї(464,468)--03
	AddNpcMission (5527 )
	AddNpcMission (5528 )
	--AddNpcMission (3011 )


end

------------------------------------------------------------
-- еџѓеј—й‡ЊиЎҐз»™з«™-----жµ·жёЇжЊ‡жЊҐВ·еёѓзєЅ
------------------------------------------------------------
function r_talk192()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Извини! Ремонт стоит 1000 зол." )
	Talk( 5, "Извини! Заправка стоит 200 зол." )

	AddNpcMission ( 304 )
	AddNpcMission ( 305 )
	AddNpcMission(	1743	)
	AddNpcMission (	1939	)
	AddNpcMission (	1954	)
	AddNpcMission (	386	)
	AddNpcMission (	387	)
	--AddNpcMission (3012 )

	----------------еђ‰е°јж–Ї---жµ·жёЇжЊ‡жЊҐВ·еёѓзєЅ--03
	AddNpcMission (5525 )
	AddNpcMission (5526 )
	
	
end


------------------------------------------------------------
-- ж‹‰еЏ¤иЎҐз»™з«™-----жµ·жёЇжЊ‡жЊҐВ·е¤ље»‰иѕѕ
------------------------------------------------------------
function r_talk193()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Извини! Ремонт стоит 1000 зол." )
	Talk( 5, "Извини! Заправка стоит 200 зол." )

	AddNpcMission(	1441	)
	AddNpcMission (	1931	)

	----------------еђ‰е°јж–Ї---жµ·жёЇжЊ‡жЊҐВ·е¤ље»‰иѕѕ--03
	AddNpcMission (5523 )
	AddNpcMission (5524 )
	--AddNpcMission (3010 )

end

------------------------------------------------------------
-- е…¶зґўеЌ•иЎҐз»™з«™-----жµ·жёЇжЊ‡жЊҐВ·з‰№е·ґйЅђе°”
------------------------------------------------------------
function r_talk194()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Извини! Ремонт стоит 1000 зол." )
	Talk( 5, "Извини! Заправка стоит 200 зол." )
	
	--AddNpcMission (3007 )
end

------------------------------------------------------------
-- з©†з©†е°”иЎҐз»™з«™-----жµ·жёЇжЊ‡жЊҐВ·е·ґеҐҐ
------------------------------------------------------------
function r_talk195()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Извини! Ремонт стоит 1000 зол." )
	Talk( 5, "Извини! Заправка стоит 200 зол." )

	AddNpcMission ( 291 )
	AddNpcMission ( 292 )
	AddNpcMission ( 293 )
	AddNpcMission(	1443	)
	AddNpcMission (	1932	)
	--AddNpcMission (3008 )
	


end

------------------------------------------------------------
-- е°Џи‚ЇиЎҐз»™з«™-----жµ·жёЇжЊ‡жЊҐВ·иїЄиїЄиђЁ
------------------------------------------------------------
function r_talk196()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Извини! Ремонт стоит 1000 зол." )
	Talk( 5, "Извини! Заправка стоит 200 зол." )
	----------------еђ‰е°јж–Ї---жµ·жёЇжЊ‡жЊҐВ·иїЄиїЄиђЁ--03
	AddNpcMission (5515 )
	AddNpcMission (5516 )
	--AddNpcMission (3006 )
end

------------------------------------------------------------
-- и‚–жІёиЎҐз»™з«™-----жµ·жёЇжЊ‡жЊҐВ·дё№е°јж–Ї
------------------------------------------------------------
function r_talk197()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Извини! Ремонт стоит 1000 зол." )
	Talk( 5, "Извини! Заправка стоит 200 зол." )

	----------------1.7
	AddNpcMission (5133 )
	AddNpcMission (5134 )
	AddNpcMission (5135 )

	----------------еђ‰е°јж–Ї---жµ·жёЇжЊ‡жЊҐВ·дё№е°јж–Ї--03
	AddNpcMission (5513 )
	AddNpcMission (5514 )
	--AddNpcMission (3004 )
end

------------------------------------------------------------
-- еџѓзљ®жќњиЎҐз»™з«™-----жµ·жёЇжЊ‡жЊҐВ·зґўе°”
------------------------------------------------------------
function r_talk198()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Извини! Ремонт стоит 1000 зол." )
	Talk( 5, "Извини! Заправка стоит 200 зол." )
	AddNpcMission (5517 )
	AddNpcMission (5518 )
	--AddNpcMission (3009 )
end


function r_talk199()
Talk( 1, "Сибун: Привет! Чем могу помочь?" )

Text( 1,"Обмен", SendExchangeData17 )

	InitExchange17()
	DoExchange17()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	
end



function r_talk200()

	Talk( 1, "Микки: Привет! Чем могу помочь?" )	
	Text( 1,"Обмен", SendExchangeData15 )

	InitExchange15()
	DoExchange15()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

----------дє¤ж?“е‘?В·з±ізґўдєљж–Ї-------еЏЊе­ђ---03
	AddNpcMission	(5710)
	AddNpcMission	(5711)
end



function r_talk201()

	Talk( 1, "Юка: Привет! Чем могу помочь?" )
	Text( 1,"Обмен", SendExchangeData16 )
	

	InitExchange16()
	DoExchange16()
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
	

-----------------дє¤ж?“е‘?В·е°¤еЌЎ---------й‡‘з‰›
	AddNpcMission	(5633)
	AddNpcMission	(5634)
----------дє¤ж?“е‘?В·е°¤еЌЎ-------еЏЊе­ђ---------------------03
	AddNpcMission	(5716)
	AddNpcMission	(5717)
end


function r_talk202()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 11 )
	TriggerAction( 1, LuanchBerthList, 11, 1642, 2005, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 11 )
	TriggerAction( 2, RepairBerthList, 11 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 11 )
	TriggerAction( 2, SupplyBerthList, 11 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 11 )
	TriggerAction( 1, SalvageBerthList, 11 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Извини, но я ремонтирую лишь корабли, приписанные к этой гавани. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Прости, но для заправки нужно пришвартовать корабль в нашей гавани. С тебя 200 золотых." )
	Talk( 6, "Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )
end


function r_talk203()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Извини! Ремонт стоит 1000 зол." )
	Talk( 5, "Извини! Заправка стоит 200 зол." )

	AddNpcMission(	1741	)
	AddNpcMission (	1937	)
	AddNpcMission (	1952	)
	------------------eleven
	AddNpcMission (	5063 )
	AddNpcMission (	5071 )
--------------------1.7
	AddNpcMission ( 5075	)
	AddNpcMission(	5091 )
	AddNpcMission (5105 )
	AddNpcMission (5106 )
	AddNpcMission (5107 )
	AddNpcMission (5108 )
	AddNpcMission (5115 )
	----------------еђ‰е°јж–Ї---жµ·жёЇжЊ‡жЊҐВ·д№”е°”д№”е°ј--03
	AddNpcMission (5521 )
	AddNpcMission (5522 )
end


function r_talk204()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Извини! Ремонт стоит 1000 зол." )
	Talk( 5, "Извини! Заправка стоит 200 зол." )
	AddNpcMission (5519 )
	AddNpcMission (5520 )
	AddNpcMission	(5635)
	AddNpcMission	(5636)
end

------------------------------------------------------------

function r_talk205()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 4, "Извини! Ремонт стоит 1000 зол." )
	Talk( 5, "Извини! Заправка стоит 200 зол." )

	-----------------жµ·жёЇжЊ‡жЊҐВ·ж‹‰з±ідї®---------й‡‘з‰›
	AddNpcMission	(5659)
	AddNpcMission	(5660)
	----------жµ·жёЇжЊ‡жЊҐВ·ж‹‰з±ідї®-------еЏЊе­ђ--------------03
	AddNpcMission	(5724)
	AddNpcMission	(5725)
end

------------------------------------------------------------
-- еҐЅиїђеІ›-----дє¤ж?“е‘?В·её•еѕ·зђ‰ж–Ї
------------------------------------------------------------

function r_talk206()

	Talk( 1, "Буви: Привет! Чем могу помочь?" )
	Text( 1,"Обмен", SendExchangeData18 )

	InitExchange18()
	DoExchange18()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
	

end

------------------------------------------------------------
-- й›·йњ†е Ўе†›жёЇ-----жµ·жёЇжЊ‡жЊҐВ·жџҐеЏЇе¤«дё­е°‰
------------------------------------------------------------
function r_talk207()

	Talk( 1, "Диспетчер порта: Я заправляю и ремонтирую корабли. Могу я тебе чем-нибудь помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 2 )
	TriggerAction( 1, LuanchBerthList, 2, 1064, 1324, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 2 )
	TriggerAction( 2, RepairBerthList, 2 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 2 )
	TriggerAction( 2, SupplyBerthList, 2 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 2 )
	TriggerAction( 1, SalvageBerthList, 2 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Извини, но я ремонтирую лишь корабли, приписанные к этой гавани. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Прости, но для заправки нужно пришвартовать корабль в нашей гавани. С тебя 200 золотых." )
	Talk( 6, "Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )


	end

------------------------------------------------------------
-- жІ™еІљж–°еџЋ-----дє¤ж?“е‘?В·иҐїе¤ље¤«
------------------------------------------------------------

function r_talk208()

	 Talk( 1, "Сейдор: Привет! Здесь я отвечаю за торговлю. Чем могу помочь?" )


	AddNpcMission(	104	)
	--AddNpcMission 	(198)
	AddNpcMission 	(199)
	AddNpcMission 	(149)
	AddNpcMission(	105	)
	AddNpcMission(	106	)

end

------------------------------------------------------------
-- е†°з‹је Ў-----дє¤ж?“е‘?В·дЅ©йІЃиЇє
------------------------------------------------------------

function r_talk209()

	 Talk( 1, "Паниро: Привет! Я отвечаю за торговлю. Чем могу помочь?" )


end

------------------------------------------------------------
-- й›·йњ†е Ўе†›жёЇ-----и€№е·ҐВ·й?їж†Ё
------------------------------------------------------------
function r_talk210 ()
		
	Talk( 1, "Аттан: Эй! Хочешь отправиться в плавание? Тогда тебе нужен хороший корабль! Взгляни на мои корабли - может, какой-нибудь придется тебе по душе." )
	InitTrigger()
	TriggerCondition( 1, IsBoatFull )
	TriggerAction( 1, SystemNotice, "Достигнуто максимальное количество кораблей" )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Построить корабль", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2 )
	TriggerAction( 1, BoatLevelBerthList, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Усовершенствовать корабль", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Аттан: Какой корабль тебе нужен? У меня есть из чего выбрать. Но ты не сможешь управлять кораблем, если он не будет соответствовать уровню твоего персонажа." )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 3 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 3, 2 )
	Text( 2, "Построить Летучую рыбку", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 4 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 4, 2 )
	Text( 2, "Построить Богиню", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 6 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 6, 2 )
	Text( 2, "Построить Рыбу-меч", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 11 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 11, 2 )
	Text( 2, "Построить Фантом", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 12 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 12, 2 )
	Text( 2, "Построить Серебряного дельфина", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, BoatBuildCheck, 13 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerAction( 1, CreateBoat, 13, 2 )
	Text( 2, "Построить Огромную Белую акулу", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Аттан: Похоже, твоего корабля нет у этого причала. Чтобы повысить уровень судна, набери достаточно опыта в плаваниях и сражениях с чудовищами и пришвартуй корабль здесь." )

	Text( 1, "Купить корабельные навыки ", SendExchangeXData)
	InitExchangeX()
	ExchangeDataX	(	8142	,	5	,	8865	,	1	)
	ExchangeDataX	(	8142	,	5	,	8866	,	1	)
	ExchangeDataX	(	8142	,	5	,	8867	,	1	)
	ExchangeDataX	(	8142	,	5	,	8868	,	1	)
	ExchangeDataX	(	8142	,	5	,	8869	,	1	)

	
	end 




function r_talk211()

	Talk( 1, "Дживс: Эй! Хочешь познакомиться с самыми отъявленными пиратами? Хочешь присоединиться к ним в охоте на сокровища?" )
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 1 )
	TriggerAction( 1, ListAllGuild, 1 )
	TriggerCondition( 2, IsGuildType, 0 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, NoGuild )
	TriggerAction( 3, ListAllGuild, 1 )
	TriggerFailure( 3, JumpPage, 3 )
	Text( 1, "Проверить Пиратскую банду", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "Уйти", CloseTalk)
	
	Talk( 2, "Эй! Да ты из Флота! Мы ничего не расскажем никому из Флота." )

	Talk( 3, "Эй! Хочешь узнать, кто самый известный пират. Хехе! Не сейчас!" )

		
end



function r_talk212()

	Talk( 1, "Далонган: Привет, я обладаю полной информацией о флоте. Можешь посмотреть у меня список наших флотских подразделений. А также приглашаю тебя вступить в наши ряды!" )
	InitTrigger()
	TriggerCondition( 1, IsGuildType, 0 )
	TriggerAction( 1, ListAllGuild, 0 )
	TriggerCondition( 2, IsGuildType, 1 )
	TriggerAction( 2, JumpPage, 3 )
	TriggerCondition( 3, NoGuild )
	TriggerCondition( 3, HasItem, 4110, 1 )
	TriggerAction( 3, TakeItem, 4110, 1 )
	TriggerAction( 3, ListAllGuild, 0 )
	TriggerFailure( 3, JumpPage, 2 )
	Text( 1, "Запрос к флотскому подразделению", MultiTrigger, GetMultiTrigger(), 3)
	Text( 1, "Уйти", CloseTalk)
	
	Talk( 2, "Далонган: Ты не можешь узнать о Флоте пока у тебя не будет рекомендательного письма." )

	Talk( 3, "Далонган: Ты не из Флота. Я не собираюсь раскрывать тебе флотские секреты!" )

		
end


function r_talk213()

	Talk( 1, "Рейчел: Приветствую! Флот ждет тебя! Если считаешь, что умеешь достаточно много, отнеси это рекомендательное письмо к ближайшему месту вербовки в гавани Аргента!" )
	InitTrigger()
	TriggerCondition( 1, HasItem, 4110, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, IsGuildType, 0 )
	TriggerAction( 2, JumpPage, 4 )
	TriggerCondition( 3, IsGuildType, 1 )
	TriggerAction( 3, JumpPage, 5 )
	TriggerCondition( 4, HasLeaveBagGrid, 1 )
	TriggerCondition( 4, NoGuild )
	TriggerCondition( 4, ChekTimeHook )
	TriggerAction( 4, GiveItem, 4110, 1, 4 )
	TriggerFailure( 4, JumpPage, 3 )
	Text( 1, "Хорошо. Письмо, пожалуйста.",MultiTrigger, GetMultiTrigger(), 4 )
	Text( 1, "Возможно, не сейчас. Пока!", CloseTalk)

	Talk( 2, "У тебя уже есть рекомендательное письмо" )

	Talk( 3, "Рейчел: Ты уже состоишь в какой-то гильдии? Проверь место в своем инвентаре. Там должна быть свободная ячейка, чтобы я могла дать тебе рекомендательное письмо." )

	Talk( 4, "Рейчел: Ты уже состоишь в флотской гильдии. Зачем тебе рекомендательное письмо? Поговори с осведомителем флота, чтобы узнать статус своей гильдии." )

	Talk( 5, "Рейчел: Я вижу, ты недостойный человек. Ничего я тебе не отдам. Во имя чести флота!" )

		
end


function r_talk214()

	Talk( 1, "Привет! Я фрахтовщик, отвечаю здесь за перевозки. Если ваш корабль пришвартован к порту Аргента, я помогу вам с погрузкой." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_MINE, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "‡ Јаг§Є  Crystal", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "У тебя нет корабля в порту Аргента" )
	AddNpcMission	(5720)
	AddNpcMission	(5721)	
end


function r_talk215()

	Talk( 1, "Привет! Я фрахтовщик, отвечаю здесь за перевозки. Если ваш корабль пришвартован к порту Громограда, я помогу вам с погрузкой." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2)
	TriggerAction( 1, PackBagList, 2, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "У тебя нет корабля в порту Громограда" )
		
end

------------------------------------------------------------
-- з™Ѕй“¶жћ—еЊє-----ж‰“еЊ…дєєВ·ж‘©ж №
------------------------------------------------------------

function r_talk216()

	Talk( 1, "Привет! Я фрахтовщик, отвечаю здесь за перевозки. Если ваш корабль пришвартован к порту Аргента, я помогу вам с погрузкой." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "У тебя нет корабля в порту Аргента" )

	AddNpcMission(	1436	)
	AddNpcMission (	1930	)
		
end

------------------------------------------------------------
-- е†°й›ЄеІ›-----ж‰“еЊ…дєєВ·й?їй‡ЊиҐїж–Ї
------------------------------------------------------------

function r_talk217()

	Talk( 1, "Алекс: Привет! Я фрахтовщик, отвечаю здесь за перевозки. Если ваш корабль пришвартован к нашему порту, я помогу вам с погрузкой." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 8)
	TriggerAction( 1, PackBagList, 8, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Алекс: Привет! У тебя нет кораблей в Бухте Ледыни" )
		
end

------------------------------------------------------------
-- йёЈжІ™еІ›-----ж‰“еЊ…дєєВ·дјЉеЉ еЌЎзЏ­
------------------------------------------------------------

function r_talk218()

	Talk( 1, "Привет! Я фрахтовщик, отвечаю здесь за перевозки. Если ваш корабль пришвартован к нашему порту, я помогу вам с погрузкой." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 9)
	TriggerAction( 1, PackBagList, 9, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "У тебя не ткорабля в порту острова Канареек" )
		
end

------------------------------------------------------------
-- жІ™еІљж–°еџЋ-----ж‰“еЊ…дєєВ·е®‰е·ґз“¦иЂЊ
------------------------------------------------------------

function r_talk219()

	Talk( 1, "Амбер: Привет! Я фрахтовщик, занимаюсь погрузкой на корабль. Могу помочь тебе, если твой корабль стоит у причала в порту Шайтана." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_MINE, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить Энергоруду", MultiTrigger, GetMultiTrigger(), 1 )
	
	Talk( 2, "Амбер: Приветствую тебя! У причала в порту Шайтана нет твоих кораблей." )
		
end

------------------------------------------------------------
-- й?їе…°жЇ”ж–ЇиЎҐз»™з«™-----ж‰“еЊ…дєєВ·й?їеЉ жЃ©еёѓиµ–еѕ—
------------------------------------------------------------

function r_talk220()

	Talk( 1, "Привет! Я фрахтовщик, отвечаю здесь за перевозки. Если ваш корабль пришвартован к порту Ледыни, я помогу вам с погрузкой." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_MINE, 2 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "‡ Јаг§Є  Iron Ore", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "У тебя нет корабля в порту Ледыни" )

	AddNpcMission(	1581	)
	AddNpcMission (	1933	)

	
end


------------------------------------------------------------
-- еЌЎе°”еЉ еѕ·й›ЄеЋџ-----ж‰“еЊ…дєєВ·еќЋиґќе°”
------------------------------------------------------------

function r_talk243()

	Talk( 1, "Привет! Я фрахтовщик, отвечаю здесь за перевозки. Если ваш корабль пришвартован к порту Громограда, я помогу вам с погрузкой." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 2)
	TriggerAction( 1, PackBagList, 2, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "У тебя нет корабля в порту Громограда" )
		
end

------------------------------------------------------------
-- еѕ·е°”з»ґе№іеЋџ-----ж‰“еЊ…дєєВ·зґўж‹‰ж–Ї
------------------------------------------------------------

function r_talk244()

	Talk( 1, "Привет! Я фрахтовщик, отвечаю здесь за перевозки. Если ваш корабль пришвартован к порту Аргента, я помогу вам с погрузкой." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 1)
	TriggerAction( 1, PackBagList, 1, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "У тебя нет корабля в порту Аргента" )

end



------------------------------------------------------------
-- её•е…‹иЌ’жј -----ж‰“еЊ…дєєВ·е®‰еЎћж‹‰
------------------------------------------------------------

function r_talk245()

	Talk( 1, "Ансто: Привет! Я фрахтовщик, отвечаю за погрузку. Если в порту Шайтана стоит ваш корабль, я помогу вам загрузить его." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Ансто: Эй! В гавани Шайтана у тебя не пришвартовано ни одного корабля" )
		
end


------------------------------------------------------------
-- е†°жћЃ-----ж‰“еЊ…дєєВ·й?їеЉ иҐї
------------------------------------------------------------

function r_talk246()

	Talk( 1, "Джас: Э-хей! Я грузчик. Пришвартуй свое судно в Бухте Ледыни, и я смогу загрузить товары тебе на корабль." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 4)
	TriggerAction( 1, PackBagList, 4, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Джас: Привет, друг! В Бухте Ледыни нет твоих кораблей" )
	
end

------------------------------------------------------------
-- иї·д№‹жёЇеЏЈ-----жёЇеЏЈжЊ‡жЊҐв—Ћиї·
------------------------------------------------------------
function r_talk247()

	Talk( 1, "Mist: Hi, I can help you salvage any sunken ships in this mysterious land. Do you need any help?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 1341, 3257, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Set sail", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Repair Ship", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Refuel", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Salvage Ship", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Sorry, you do not have a ship at the harbor or it was sunken. Please salvage it before setting sail again!" )
	Talk( 4, "Sorry I only repair ships docked at Mystery Harbor. Please pay 1000G" )
	Talk( 5, "Sorry! I only refuel ships docked at Maze Harbor. Please pay 200G as repair fee." )
	Talk( 6, "Sorry, I only salvage sunken ship docked in Maze Harbor. Please pay 1000G" )

end

------------------------------------------------------------
-- иї·д№‹жёЇеЏЈ-----е°ЏиЉ±е›­еЊ—йѓЁе•†еє—жµ·жёЇжЊ‡жЊҐ
------------------------------------------------------------
function r_talk248()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 116, 51, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	
	

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	

end

------------------------------------------------------------
-- иї·д№‹жёЇеЏЈ-----е°ЏиЉ±е›­еЊ—йѓЁдё­е¤®жµ·жёЇжЊ‡жЊҐ
------------------------------------------------------------
function r_talk249()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 235, 123, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	

end


------------------------------------------------------------
-- иї·д№‹жёЇеЏЈ-----е°ЏиЉ±е›­дёњйѓЁжµ·жёЇжЊ‡жЊҐ
------------------------------------------------------------
function r_talk250()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 248, 352, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	

end

------------------------------------------------------------
-- иї·д№‹жёЇеЏЈ-----е°ЏиЉ±е›­еЌ—йѓЁе•†еє—жµ·жёЇжЊ‡жЊҐ
------------------------------------------------------------
function r_talk251()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 353, 428, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )


end

------------------------------------------------------------
-- иї·д№‹жёЇеЏЈ-----е°ЏиЉ±е›­еЊ—йѓЁдё‹жµ·жµ·жёЇжЊ‡жЊҐ
------------------------------------------------------------
function r_talk257()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 231,211, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )


end

------------------------------------------------------------
-- иї·д№‹жёЇеЏЈ-----е°ЏиЉ±е›­еЌ—йѓЁдё‹жµ·жµ·жёЇжЊ‡жЊҐ
------------------------------------------------------------
function r_talk258()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 231,256, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )


end


------------------------------------------------------------
-- иї·д№‹жёЇеЏЈ-----й?ґжљ—жІјжіЅжµ·жёЇжЊ‡жЊҐ
------------------------------------------------------------
function r_talk261()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 295, 352, 0 )
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

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в Таинственном порту. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Please pay 200G" )
	Talk( 6, "Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )

end

------------------------------------------------------------
-- иї·д№‹жёЇеЏЈ-----еєџзЃµд№‹йѓЅжµ·жёЇжЊ‡жЊҐ
------------------------------------------------------------
function r_talk262()

	Talk( 1, "Operator: Hi! Do you wish to go sailing? Maybe I can help you" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 299, 321, 0 )
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

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в Таинственном порту. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Please pay 200G" )
	Talk( 6, "Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в нашей гавани. Тебе придется заплатить 1000 зол." )

end

----------------------------------------------------------
--							--
--							--
--		з«ћжЉЂиЉ±е›­[зҐћз§?е•†дєє]			--
--							--
--		225538,280188				--
----------------------------------------------------------
-----------------------------------------------------------иї™й‡ЊејЂе§‹PиЇќиЃЉе¤©
function r_talk259 ()
	
	
	Talk( 1, "Mystery Merchant: Hi! I have some great stuff here! Want to have a look?" )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 12 )
	TriggerAction( 1, TradeBerthList, 12 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Торг", MultiTrigger, GetMultiTrigger(), 1 )

	
	Talk( 2, "Mystery Merchant: Sorry, you do not have any ships docked in Mystery Harbor. Unable to trade." )
	
	InitGoods(12)
	SaleGoodsData(	0	,	1861	,	500	,	5000	,	5000	)


	AddNpcMission 	(443)
	AddNpcMission 	(445)
	AddNpcMission 	(447)
	AddNpcMission	(1020)
	AddNpcMission	(1076)
	AddNpcMission	(1132)
	AddNpcMission	(1183)
	AddNpcMission(	1226	)
	
end 



------------------------------------------------------------
-- е°ЏиЉ±е›­-----иЌЇиЌ‰е•†дєє
------------------------------------------------------------

function r_talk260()

	Talk( 1, "Врач: Привет, у меня есть множество редких трав, тебе что-то из них нужно?" )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Ничего, я просто осматриваюсь",CloseTalk )

	InitTrade()
	Other(	3460	)
	Other(	3461	)

end

------------------------------------------------------------
-- жІ™еІљж–°еџЋ-----зҐћз§?жµ·жёЇжЊ‡жЊҐ
------------------------------------------------------------
function r_talk263()

	Talk( 1, "Наблюдающий диспетчер порта: Привет! Я могу восстанавливать суда, пришвартованные в Таинственной бухте. Я найду твой корабль, где бы он ни был, в Священном лабиринте или Саду Эдель. Нужна моя помощь?" )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 12 )
	TriggerAction( 1, LuanchBerthList, 12, 832, 3698, 0 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, RepairBerthList, 12 )
	TriggerFailure( 2, JumpPage, 3 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 12 )
	TriggerAction( 2, SupplyBerthList, 12 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 12 )
	TriggerAction( 1, SalvageBerthList, 12 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 3, "Извини, но я ремонтирую только корабли, пришвартованные в Таинственном порту. Это стоит 1000 золотых." )
	Talk( 4, "Извини, но я заправляю только корабли, пришвартованные в Таинственном порту. Это стоит 200 золотых." )
	Talk( 5, "Извини, но я восстанавливаю только корабли, пришвартованные в Таинственном порту. Это стоит 1000 золотых." )

end

----------------------------------------------------
--ж“‚дё»е…¬дјљз‰№ж®Љиґёж?“е“Ѓ
----------------------------------------------------
--е†›зЃ«е•†


function r_talk264()
	Talk( 1, "Торговец оружием: Привет, я Торговец оружием, я поставляю большую часть арсенала Громограда." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 1 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Купить", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "Торговец оружием: Покупать мои товары могут лишь члены гильдии, занимающей первое место, и при условии, что корабль пришвартован в порту Шайтана." )

	InitGoods(3)
	SaleGoodsData(	0	,	3914	,	150	,	990	,	220	)
	




end

--зІѕеЇ†д»Єе™Ёдѕ›еє”е•†	

function r_talk265()

	InitGoods(3)
	SaleGoodsData(	0	,	3912	,	200	,	855	,	190	)
	


	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end


--зЁЂжњ‰й‡‘е±ћдѕ›еє”е•†

function r_talk266()
	Talk( 1, "Поставщик редких металлов: Привет! Я Поставщик редких металлов, которые очень востребованы в Громограде для строительства. У меня как раз появилась новая партия металла для отправки в Громоград - там заплатят за них хорошую цену. Но я могу доверить доставку только членам гильдии, занимающей третье место." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3 )
	TriggerCondition( 1, HasGuildLevel, 3 )
	TriggerAction( 1, TradeBerthList, 3 )
	TriggerFailure( 1, JumpPage, 2 )
	--Text( 1, "Морская торговля", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 2, "Поставщик редких металлов: Совершать покупки могут только члены гильдии, занимающей третье место, если их корабль пришвартован в порту Шайтана." )


	InitGoods(3)
	SaleGoodsData(	0	,	3913	,	250	,	765	,	170	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 51, TE_GAMETIME, TT_CYCLETIME, 30, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



end


function m_talk001()

	Talk( 1, "Али Ку: Привет! Я фрахтовщик, отвечаю за перевозки. Если в порту Шайтана стоит ваш корабль, я помогу вам с погрузкой." )
	InitTrigger()
	TriggerCondition( 1, HasBoatInBerth, 3)
	TriggerAction( 1, PackBagList, 3, RES_WOOD, 1 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Загрузить древесину", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Али Ку: Привет! У тебя нет кораблей в порту Шайтана." )

	AddNpcMission	(6305)	--1
	AddNpcMission	(6306)	--2
end


------------------------------------------------------------
-- е¤ЏеІ›еЊ—жёЇ-----жµ·жёЇжЊ‡жЊҐВ·е¤Џйќ’
------------------------------------------------------------
function b_talk19()

	Talk( 1, "Диспетчер: Привет! Хочешь выйти в море? Думаю, я смогу помочь." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 14 )
	TriggerAction( 1, LuanchBerthList, 14, 3662, 2645, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 14 )
	TriggerAction( 2, RepairBerthList, 14 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 14 )
	TriggerAction( 2, SupplyBerthList, 14 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 14 )
	TriggerAction( 1, SalvageBerthList, 14 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Извини, но я чиню только суда, приписанные к Острову Лета. Пожалуйста, заплати за ремонт 1000 зол." )
	Talk( 5, "Извини, но я заправляю только суда, приписанные к Острову Лета. Пожалуйста, заплати 200 золотых." )
	Talk( 6, "Извини, но я спасаю только суда, приписанные к Острову Лета." )


	------------- жµ·жёЇжЊ‡жЊҐВ·е¤Џйќ’-------е·Ёиџ№
	AddNpcMission	(5853)
	AddNpcMission	(5854)


end


------------------------------------------------------------
-- е¤ЏеІ›еЌ—жёЇ-----жµ·жёЇжЊ‡жЊҐВ·е¤Џдє‘
------------------------------------------------------------
function b_talk20()

	Talk( 1, "Диспетчер порта: Привет! Хочешь выйти в море? Думаю, я смогу помочь." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 15 )
	TriggerAction( 1, LuanchBerthList, 15, 3324, 3541, 0 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, RepairBoat )
	TriggerCondition( 2, HasBoatInBerth, 15 )
	TriggerAction( 2, RepairBerthList, 15 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, "Починить корабль", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasLuanchOut )
	TriggerAction( 1, SupplyBoat )
	TriggerCondition( 2, HasBoatInBerth, 15 )
	TriggerAction( 2, SupplyBerthList, 15 )
	TriggerFailure( 2, JumpPage, 5 )
	Text( 1, "Заправка", MultiTrigger, GetMultiTrigger(), 2 ) 
	InitTrigger()
	TriggerCondition( 1, HasDeadBoatInBerth, 15 )
	TriggerAction( 1, SalvageBerthList, 15 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 1, "Восстановить корабль", MultiTrigger, GetMultiTrigger(), 1 ) 

	Talk( 3, "Извини, но у тебя нет корабля или он был потоплен. Перед отправкой в море тебе нужно спасти корабль!" )
	Talk( 4, "Извини, но я ремонтирую лишь корабли, приписанные гавани острова Лета. Тебе придется заплатить 1000 зол." )
	Talk( 5, "Прости, но для заправки нужно пришвартовать корабль в гавани острова Лета. С тебя 200 золотых." )
	Talk( 6, "Извини, мы восстанавливаем лишь те корабли, которые пришвартованы в гавани острова Лета. Тебе придется заплатить 1000 зол." )

	------------- жµ·жёЇжЊ‡жЊҐВ·е¤Џдє‘-------е·Ёиџ№
	AddNpcMission	(5855)
	AddNpcMission	(5856)


end

-----------й»‘её‚е•†дєє
function leo_talk10()	

	Talk(1, "Торговец Черного рынка: О-хо-хо, а вы неплохо осведомлены... Чего изволите?")
	Text( 1, "Эксклюзив", JumpPage, 2 )
	Text( 1, "Купить", BuyPage)
	

	Talk(2,"Торговец Черного рынка: О-хо-хо, а вы неплохо осведомлены... Чего изволите?")
	Text(2,"Дайте-ка сначала взглянуть на ваши вещи", SendExchangeData )

	InitExchange()
	DoExchange()

	InitTrade()
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	Other(	rand()	)
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 53, TE_GAMETIME, TT_CYCLETIME, 60, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
end


function rand()	
	local tabunknow = {}
	tabunknow[	1	] =	0088
	tabunknow[	2	] =	0088
	tabunknow[	3	] =	3302
	tabunknow[	4	] =	3303
	tabunknow[	5	] =	3304
	tabunknow[	6	] =	3305
	tabunknow[	7	] =	3306
	tabunknow[	8	] =	3307
	tabunknow[	9	] =	3308
	tabunknow[	10	] =	3309
	tabunknow[	11	] =	3310
	tabunknow[	12	] =	3311
	tabunknow[	13	] =	3312
	tabunknow[	14	] =	3313
	tabunknow[	15	] =	3314
	tabunknow[	16	] =	3315
	tabunknow[	17	] =	3316
	tabunknow[	18	] =	3317
	tabunknow[	19	] =	3318
	tabunknow[	20	] =	3319
	tabunknow[	21	] =	3320
	tabunknow[	22	] =	3321
	tabunknow[	23	] =	3322
	tabunknow[	24	] =	3323
	tabunknow[	25	] =	3324
	tabunknow[	26	] =	3325
	tabunknow[	27	] =	3326
	tabunknow[	28	] =	3327
	tabunknow[	29	] =	3328
	tabunknow[	30	] =	3329
	tabunknow[	31	] =	3330
	tabunknow[	32	] =	3331
	tabunknow[	33	] =	3332
	tabunknow[	34	] =	3333
	tabunknow[	35	] =	3334

	return tabunknow[math.floor(math.random(1,35))]
end
------------------------------------------------------------
--СВЯЩЕННАЯ ВОЙНА
------------------------------------------------------------
function star_talk001()
	Talk( 1, "Привет! Я диспетчер порта Священной Войны. Я ослуживаю только те корабли, которые пришвартованы к гавани Шайтана. Убедись, что твой корабль приписан к этому порту." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 148 , 154, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Извини, но у тебя нет корабля в Шайтане" )
end

function star_talk002()
	Talk( 1, "Привет! Я диспетчер порта Священной Войны. Я ослуживаю только те корабли, которые пришвартованы к гавани Шайтана. Убедись, что твой корабль приписан к этому порту." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 169 , 176, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Извини, но у тебя нет корабля в Шайтане" )
end

function star_talk003()
	Talk( 1, "Привет! Я диспетчер порта Священной Войны. Я ослуживаю только те корабли, которые пришвартованы к гавани Шайтана. Убедись, что твой корабль приписан к этому порту." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 168 , 111, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Извини, но у тебя нет корабля в Шайтане" )
end

function star_talk004()
	Talk( 1, "Привет! Я диспетчер порта Священной Войны. Я ослуживаю только те корабли, которые пришвартованы к гавани Шайтана. Убедись, что твой корабль приписан к этому порту." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 452 , 135, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Извини, но у тебя нет корабля в Шайтане" )
end

function star_talk005()
	Talk( 1, "Привет! Я диспетчер порта Священной Войны. Я ослуживаю только те корабли, которые пришвартованы к гавани Шайтана. Убедись, что твой корабль приписан к этому порту." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 496 , 164, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Извини, но у тебя нет корабля в Шайтане" )
end

function star_talk006()
	Talk( 1, "Привет! Я диспетчер порта Священной Войны. Я ослуживаю только те корабли, которые пришвартованы к гавани Шайтана. Убедись, что твой корабль приписан к этому порту." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 453 , 175, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Извини, но у тебя нет корабля в Шайтане" )
end

function star_talk007()
	Talk( 1, "Привет! Я диспетчер порта Священной Войны. Я ослуживаю только те корабли, которые пришвартованы к гавани Шайтана. Убедись, что твой корабль приписан к этому порту." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3 , 262 , 181, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Извини, но у тебя нет корабля в Шайтане" )
end

function star_talk008()
	Talk( 1, "Привет! Я диспетчер порта Священной Войны. Я ослуживаю только те корабли, которые пришвартованы к гавани Шайтана. Убедись, что твой корабль приписан к этому порту." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 348 , 175, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Извини, но у тебя нет корабля в Шайтане" )
end

function star_talk009()
	Talk( 1, "Привет! Я диспетчер порта Священной Войны. Я ослуживаю только те корабли, которые пришвартованы к гавани Шайтана. Убедись, что твой корабль приписан к этому порту." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 110 , 460, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Извини, но у тебя нет корабля в Шайтане" )
end

function star_talk010()
	Talk( 1, "Привет! Я диспетчер порта Священной Войны. Я ослуживаю только те корабли, которые пришвартованы к гавани Шайтана. Убедись, что твой корабль приписан к этому порту." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 169 , 493, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Извини, но у тебя нет корабля в Шайтане" )
end

function star_talk011()
	Talk( 1, "Привет! Я диспетчер порта Священной Войны. Я ослуживаю только те корабли, которые пришвартованы к гавани Шайтана. Убедись, что твой корабль приписан к этому порту." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 82 , 456, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Извини, но у тебя нет корабля в Шайтане" )
end

function star_talk012()
	Talk( 1, "Привет! Я диспетчер порта Священной Войны. Я ослуживаю только те корабли, которые пришвартованы к гавани Шайтана. Убедись, что твой корабль приписан к этому порту." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 463 , 453, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Извини, но у тебя нет корабля в Шайтане" )
end

function star_talk013()
	Talk( 1, "Привет! Я диспетчер порта Священной Войны. Я ослуживаю только те корабли, которые пришвартованы к гавани Шайтана. Убедись, что твой корабль приписан к этому порту." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 492 , 460, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Извини, но у тебя нет корабля в Шайтане" )
end

function star_talk014()
	Talk( 1, "Привет! Я диспетчер порта Священной Войны. Я ослуживаю только те корабли, которые пришвартованы к гавани Шайтана. Убедись, что твой корабль приписан к этому порту." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 453 , 506, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Извини, но у тебя нет корабля в Шайтане" )
end

function star_talk015()
	Talk( 1, "Привет! Я диспетчер порта Священной Войны. Я ослуживаю только те корабли, которые пришвартованы к гавани Шайтана. Убедись, что твой корабль приписан к этому порту." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 357 , 450, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Извини, но у тебя нет корабля в Шайтане" )
end

function star_talk016()
	Talk( 1, "Привет! Я диспетчер порта Священной Войны. Я ослуживаю только те корабли, которые пришвартованы к гавани Шайтана. Убедись, что твой корабль приписан к этому порту." )
	InitTrigger()
	TriggerCondition( 1, HasAllBoatInBerth, 3 )
	TriggerAction( 1, LuanchBerthList, 3, 256 , 450, 180 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Отправиться в плавание", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 2, "Извини, но у тебя нет корабля в Шайтане" )
end

function roico_talk001()
  Talk( 1, "Navy Frontline Commander: The battle has begun, everyone is a hero, remember what you strive for and work in teams to defeat the enemies! This is the only way to victory!" )
  Text( 1, "Battle Instructor" ,JumpPage, 2)
  --Text( 1, "set Sacred war revival point", SetSpawnPos, "Sacred War")
  Text( 1, "Exchange battle resources", JumpPage, 3)
  Text( 1, "Donate building resources", JumpPage, 4)
  Text( 1, "Use Navy Token", JumpPage, 13)
  --Text( 1, "continue battling", JumpPage, 5)
  Talk( 2, "Target: Destroy enemy base Statue. If you destroy their Ammo warehouse or Granary first, it'll sharply decrease their power. Gathering resources will raise own base defense or exchange for battle materials. Please use the Navy Token wisely to ambush on enemies.")
  Talk( 3, "Navy Frontline Commander: You can salvage useful things from enemies!")
  Text( 3, "Guardian statue boost" ,JumpPage, 6)
  Text( 3, "Random stats boost" ,JumpPage, 7)
  Talk( 4, "Navy Frontline Commander: Donate battle materials can raise statue and defense tower stats, enabling our side to have more power.")
  Text( 4, "Add 20 def and 1 phy resist to Statue" ,JumpPage, 8)
  Text( 4, "Add 25 dmg to Expert Guard Tower" ,JumpPage, 9)
  Text( 4, "SAdd invincibility to Statue for 3 minutes" ,JumpPage, 10)





 InitTrigger()
	TriggerCondition( 1, HasItem, 2859, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2859,25 )
	TriggerAction( 1, GiveItem, 2986, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 6, "Navy Frontline Commander: Give me 25 Eye Patch and I'll give you a ticket that teleports directly back to the Statue!")
	Text( 6, "Подтвердить обмен",  MultiTrigger, GetMultiTrigger(), 1)
        Talk(11, "Navy Frontline Commander: When the statue is in danger, you can use the ticket to come back!" )
	Talk( 12, "Navy Frontline Commander: You don't seem to have the item on you, and you need at least one inventory space.")

-- InitTrigger()
--	TriggerCondition( 1, HasItem, 3117, 20 )
--	TriggerAction( 1, TakeItem, 3117,20 )
--	TriggerAction( 1, GetChaName1_guildwar, 1 )
--	TriggerAction( 1, JumpPage, 13 )
--	TriggerFailure( 1, JumpPage, 14)
	Talk( 7, "Navy Frontline Commander: Give me 20 Eye Patch and I'll randomly give you power of a specific stat!")
	Text( 7, "Подтвердить обмен", GetChaName1_guildwar, 1)
	Talk( 8, "Navy Frontline Commander: 30 Crystal Ore is needed to raise the statue defense, you can find very rich resource areas on the 2 sides of the island!")
	Text( 8, "I have 30 Crystal Ore", GetChaName2_guildwar, 1)
	Talk( 9, "Pirate Frontline Commander: Statue has no attack of its own and relays on Arrow Tower's protection. You can search the surrounding sea areas and find me 12 Squirting Fish and 12 Fish Bone to raise the Arrow Tower attack by 25 points. ")
	Text( 9, "I have enough materials", GetChaName4_guildwar, 1)
	Talk( 10, "Navy Frontline Commander: I only need 4 Hard Tortoise Shell and 9 Moon Tail Eel (Try looking for the resources around the enemy base) and I can make the Statue invincible for 3 minutes!")
	Text( 10, "I have enough materials", GetChaName3_guildwar, 1)
	Talk( 13, " Pirate Frontline Commander: When you have collected enough [Navy Token], you'll be able to summon monsters to ambush your enemy once, use it wisely!")
	Text( 13, "Use 15 tokens", JumpPage, 14)
	Text( 13, "Use 30 tokens", JumpPage, 15)
	Text( 13, "Use 45 tokens", JumpPage, 16)
	Talk( 14, "Navy Frontline Commander: Use 15 <<Navy Token>>, arrange 3 Navy Ambush members, please select Ambush area!")
	Text( 14, "Enemy Statue surrounding", GetChaName5_guildwar, 1)
	Text( 14, "Enemy armoury surroundings", GetChaName6_guildwar, 1)
	Text( 14, "Enemy Granary surroundings", GetChaName7_guildwar, 1)
	Text( 14, "Own fraction statue surrounding", GetChaName8_guildwar, 1)
	Text( 14, "Own side Ammo Warehouse surroundings", GetChaName9_guildwar, 1)
	Text( 14, "Own side Granary surroundings", GetChaName10_guildwar, 1)
	--Text( 14, "Middle section of the battle field", GetChaName11_guildwar, 1)
	Talk( 15, "Navy Frontline Commander: Use 30 <<Navy Token>>, arrange 7 Navy Ambush members, please select Ambush area! ")
	Text( 15, "Enemy Statue surrounding", GetChaName11_guildwar, 1)
	Text( 15, "Enemy armoury surroundings", GetChaName12_guildwar, 1)
	Text( 15, "Enemy Granary surroundings", GetChaName13_guildwar, 1)
	Text( 15, "Own fraction statue surrounding", GetChaName14_guildwar, 1)
	Text( 15, "Own side Ammo Warehouse surroundings", GetChaName15_guildwar, 1)
	Text( 15, "Own side Granary surroundings", GetChaName16_guildwar, 1)
	--Text( 15, "Middle section of the battle field", GetChaName18_guildwar, 1)
	Talk( 16, "Navy Frontline Commander: Use 45 <<Navy Token>>, arrange 11 Navy Ambush members, please select ambush area!")
	Text( 16, "Enemy Statue surrounding", GetChaName17_guildwar, 1)
	Text( 16, "Enemy armoury surroundings", GetChaName18_guildwar, 1)
	Text( 16, "Enemy Granary surroundings", GetChaName19_guildwar, 1)
	Text( 16, "Own fraction statue surrounding", GetChaName20_guildwar, 1)
	Text( 16, "Own side Ammo Warehouse surroundings", GetChaName21_guildwar, 1)
	Text( 16, "Own side Granary surroundings", GetChaName22_guildwar, 1)

end

function roico_talk002()
Talk( 1, "Pirate Frontline Commander: Destroy, plunder, kill, nothing can stop us, show the enemy what real fear is!" )
  Text( 1, "Battle Instructor" ,JumpPage, 2)
  --Text( 1, "set Sacred war revival point", SetSpawnPos, "Sacred War")
  Text( 1, "Exchange battle resources", JumpPage, 3)
  Text( 1, "Donate building resources", JumpPage, 4)
  Text( 1, "Use Pirate Token", JumpPage, 13)
  --Text( 1, "continue battling", JumpPage, 5)
  Talk( 2, "Target: Destroy the Statue in the enemy's base. If you destroy their armoury and granary first, it will greatly decrease their strength. Minerals obtained from mining can increase the defence attributes of your facilities or exchange for combat items. Using the Pirate Token at the right timing can let the enemy suffer a surprise attack.")
  Talk( 3, "Pirate Frontline Commander: You can search for useful things from your enemies!")
  Text( 3, "Guardian statue boost" ,JumpPage, 6)
  Text( 3, "Random stats boost" ,JumpPage, 7)
  Talk( 4, "Pirate Frontline commander: Donating battle materials can raise the statue and Defense Tower stats, enabling our side to have more power.")
  Text( 4, "Add 20 def and 1 phy resist to Statue" ,JumpPage, 8)
  Text( 4, "Add 25 dmg to Expert Guard Tower" ,JumpPage, 9)
  Text( 4, "Add invincibility to Statue for 3 minutes" ,JumpPage, 10)





 InitTrigger()
	TriggerCondition( 1, HasItem, 2858, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2858,25 )
	TriggerAction( 1, GiveItem, 2986, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 6, "Pirate Frontline Commander: Give me 25 snuff and I'll give you a ticket that teleports you directly back to the statue!")
	Text( 6, "Confirm to exchange",  MultiTrigger, GetMultiTrigger(), 1)
        Talk(11, "Pirate Frontline Commander: When the statue is in danger, you can come back using this ticket!" )
	Talk( 12, "Pirate Frontline Commander: You don't seem to have the item on you. You also need to have at least one space inside your inventory!")

-- InitTrigger()
--	TriggerCondition( 1, HasItem, 3117, 20 )
--	TriggerAction( 1, TakeItem, 3117,20 )
--	TriggerAction( 1, GetChaName1_guildwar, 1 )
--	TriggerAction( 1, JumpPage, 13 )
--	TriggerFailure( 1, JumpPage, 14)
	Talk( 7, "Pirate Frontline Commander: Give me 20 snuff and I will randomly grant you a specific stat power!")
	Text( 7, "Confirm to exchange", GetChaName23_guildwar, 1)
	Talk( 8, "Pirate Frontline Commander: To raise the Statue defense I need 30 Crystal ore. You can find rich resources at both sides of the island!")
	Text( 8, "I have 30 Crystal Ore", GetChaName24_guildwar, 1)
	Talk( 9, "Pirate Frontline Commander: Statue has no attack and relays on Arrow Tower's protection. If you can find 12 Squirting Fish and 12 Fish Bone for me, I can raise the Arrow Tower attack by 25 points!")
	Text( 9, "I have enough materials", GetChaName26_guildwar, 1)
	Talk( 10, "Pirate Frontline Commander: I only need 4 Diving Clam and 9 Tortoise Shell Fragment (Try finding it near the enemy base) to make the Statue invincible for 3 minutes!")
	Text( 10, "I have enough materials", GetChaName25_guildwar, 1)
	Talk( 13, "Pirate Frontline Commander: When you have collected enough [Pirate Tokens], you'll be able to summon monsters to ambush your enemy once, use it wisely!")
	Text( 13, "Use 15 tokens", JumpPage, 14)
	Text( 13, "Use 30 tokens", JumpPage, 15)
	Text( 13, "Use 45 tokens", JumpPage, 16)
	Talk( 14, "Pirate Frontline Commander: Use 15 <<Pirate Token>>, arrange 3 Pirate Ambush members, please select ambush area!")
	Text( 14, "Enemy Statue surrounding", GetChaName27_guildwar, 1)
	Text( 14, "Enemy armoury surroundings", GetChaName28_guildwar, 1)
	Text( 14, "Enemy Granary surroundings", GetChaName29_guildwar, 1)
	Text( 14, "Own fraction statue surrounding", GetChaName30_guildwar, 1)
	Text( 14, "Own side Ammo Warehouse surroundings", GetChaName31_guildwar, 1)
	Text( 14, "Own side Granary surroundings", GetChaName32_guildwar, 1)
	--Text( 14, "Middle section of the battle field", GetChaName11_guildwar, 1)
	Talk( 15, "Pirate Frontline Commander: Use 30 <<Pirate Token>>, arrange 7 Pirate Ambush Members, please select ambush area!")
	Text( 15, "Enemy Statue surrounding", GetChaName33_guildwar, 1)
	Text( 15, "Enemy armoury surroundings", GetChaName34_guildwar, 1)
	Text( 15, "Enemy Granary surroundings", GetChaName35_guildwar, 1)
	Text( 15, "Own fraction statue surrounding", GetChaName36_guildwar, 1)
	Text( 15, "Own side Ammo Warehouse surroundings", GetChaName37_guildwar, 1)
	Text( 15, "Own side Granary surroundings", GetChaName38_guildwar, 1)
	--Text( 15, "Middle section of the battle field", GetChaName18_guildwar, 1)
	Talk( 16, "Pirate Frontline Commander: Use 45 <<Pirate Token>>, arrange 11 Pirate Ambush Members, please select ambush area!")
	Text( 16, "Enemy Statue surrounding", GetChaName39_guildwar, 1)
	Text( 16, "Enemy armoury surroundings", GetChaName40_guildwar, 1)
	Text( 16, "Enemy Granary surroundings", GetChaName41_guildwar, 1)
	Text( 16, "Own fraction statue surrounding", GetChaName42_guildwar, 1)
	Text( 16, "Own side Ammo Warehouse surroundings", GetChaName43_guildwar, 1)
	Text( 16, "Own side Granary surroundings", GetChaName44_guildwar, 1)
end


