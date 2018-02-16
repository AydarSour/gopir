print( "╪ ?агЄ  npcscripts06.lua" )

--Капитан корабля - Адрэн
function new_talk002 ()
	Talk( 1, "Капитан корабля: Нужна работа? Ты по адресу, у нас есть работа для тебя и твоей гильдии, так что зови сюда своих друзей " )

	Text( 1, "Обменять Монеты за задание ", SendExchangeXData)
	InitExchangeX()
	--ExchangeDataX	(	8288	,	2	,	8548	,	1	)--Неизвестное умение
	ExchangeDataX	(	8288	,	5	,	8142	,	3	)--Жетон
	ExchangeDataX	(	8288	,	2	,	7792	,	1	)--Часть тумана
	ExchangeDataX	(	8288	,	25	,	7793	,	1	)--Часть волнолома
	
	--AddNpcMission	(112 )
    --AddNpcMission	(3102 )
    --AddNpcMission	(3103 )
	--AddNpcMission	(3104 )
	--AddNpcMission	(3105 )
end



--Админы ФС ДС СНВ ДВ
function talk_fs ()
	Talk( 1, "Администратор : Привет! Я администратор Заброшенного города! Я могу поведать тебе об этом месте _Заброшенный город - PvP локация для новичков, в которой ты сможешь получить начальное снаряение и попробовать себя в боевых действиях. Забытый город состоит из 3х уровней. _1 уровень - существа у которых одна жизнь, они сильные, и весьма ценные. _2 уровень - существа более сильные, но они воскрешаются как обычные существа. _3 уровень - самые сильные существа и главный босс Рыцарь смерти!. _На каждом уровне находятся мини боссы и сундуки с которых выпадают очень ценные предметы. _Время работы портала - 1 час. _Время работы локации - 2 часа с момента закрытия портала. _ " )

end
function talk_snv ()
	Talk( 1, "Администратор : Привет! Я администратор Снежной войны! Я могу поведать тебе об этом месте. _Сняжная война  - PvP локация для игроков от 45 уровня и выше, в которой ты сможешь получить ценные предметы и боевой опыт._Каждые 5 минут на карте появляются существа, с каждой волной существа становятся сильнее и ценнее. _Снежная война открываетсяв 6,13,19,22 часа по Московскому времени. _Время работы карты - 1 час _Время работы портала 30 минут _ " )
end
function talk_dw ()
	Talk( 1, "Администратор : Привет! Я администратор Мира демонов! Я могу поведать тебе об этом месте. _Мир Демонов  - PvP локация для игроков 55 уровня и выше, в которой ты сможешь добыть снаряжение на 55-65 уровни и получиь боевой опыт. _Мир демонов состоит из двух уровней: _На первом уровне находятся слабые существа, босс - Снегурка и портал на второй уровень, портал на второй уровень появляется случайно в одной из 4 точек на карте. _На втором уровне сильные существа и босс Мердель в центре подземелья, второй уровень состоит из 3х контуров, для перемещения между которыми, существуют порталы. _ Время работы портала - 40 минут. _Время работы локациии - 2 часа. _ Портал открывается каждые 3 часа _" )
end
function talk_ds ()
	Talk( 1, "Администратор : Привет! Я администратор Темной топи! Я могу поведать тебе об этом месте _Темная топь - PvP локация для средних игроков, в которой ты сможешь получить начальное снаряение и попробовать себя в боевых действиях. Темная топь состоит из 3х уровней. _1 уровень - слабые существа с постоянным воскрешением. _2 уровень - существа более сильные, но они воскрешаются как обычные существа. _3 уровень - самые сильные существа и главный босс Грязедемон!. _На каждом уровне находятся мини боссы и сундуки с которых выпадают очень ценные предметы. _Время работы портала - 1 час. _Время работы локации -2 часа с момента закрытия портала. _ " )

end

--Диспетчер острова - Уилл
function new_talk03 ()
	Talk( 1, "Диспетчер: Извини, я сейчас не могу говорить." )


	
end

--Мао Костюмы
function xmas_0705 ()
	Talk( 1, "Mao: Привет, я продаю различные костюмы, ты хочешь выглядить красиво и модно? Так и чего ты тогда ждешь? __Костюм Льва: 99 ОЧ  _Костюм Девы: 150 ОЧ  _Костюм Весов: 200 ОЧ  _Костюм Скорпиона: 250 ОЧ  _Костюм Стрельца: 3000 репутации и 250 ОЧ _Костюм Водолея: 3000 репутации и 250 ОЧ _Костюм Рыб: 5000 репутации и 250 ОЧ " )
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1, 4 ) --Медаль отваги
    TriggerCondition( 1, HasLeaveBagGrid, 1 )--Свободные ячейки
    TriggerCondition( 1, HasHonorPoint,99 )     --Проверка чести на медали
    TriggerAction( 1, TakeHonorPoint, 99 )     --Отнятие чести с медали
    TriggerAction( 1, GiveItem, 7563, 1 , 4 )    --Выдача золота
    TriggerFailure( 1, JumpPage, 9)
    Text( 1, "Получить костюм Льва ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1, 4 ) --Медаль отваги
    TriggerCondition( 1, HasLeaveBagGrid, 1 )--Свободные ячейки
    TriggerCondition( 1, HasHonorPoint,150 )     --Проверка чести на медали
    TriggerAction( 1, TakeHonorPoint, 150 )     --Отнятие чести с медали
    TriggerAction( 1, GiveItem, 7556, 1 , 4 )    --Выдача золота
    TriggerFailure( 1, JumpPage, 9)
    Text( 1, "Получить костюм Девы ", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1, 4 ) --Медаль отваги
    TriggerCondition( 1, HasLeaveBagGrid, 1 )--Свободные ячейки
    TriggerCondition( 1, HasHonorPoint,200 )     --Проверка чести на медали
    TriggerAction( 1, TakeHonorPoint, 200 )     --Отнятие чести с медали
    TriggerAction( 1, GiveItem, 7557, 1 , 4 )    --Выдача золота
    TriggerFailure( 1, JumpPage, 9)
    Text( 1, "Получить костюм Весов", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1, 4 ) --Медаль отваги
    TriggerCondition( 1, HasLeaveBagGrid, 1 )--Свободные ячейки
    TriggerCondition( 1, HasHonorPoint,250 )     --Проверка чести на медали
    TriggerAction( 1, TakeHonorPoint, 250 )     --Отнятие чести с медали
    TriggerAction( 1, GiveItem, 7558, 1 , 4 )    --Выдача золота
    TriggerFailure( 1, JumpPage, 9)
    Text( 1, "Получить костюм Скорпиона", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1, 4 ) --Медаль отваги
    TriggerCondition( 1, HasLeaveBagGrid, 1 )--Свободные ячейки
    TriggerCondition( 1, HasHonorPoint,250 )     --Проверка чести на медали
	TriggerCondition( 1, HasCredit, 3000 )
	TriggerAction( 1, DelRoleCredit, 3000 )     --Отнятие чести с медали
    TriggerAction( 1, TakeHonorPoint, 250 )     --Отнятие чести с медали
    TriggerAction( 1, GiveItem, 7559, 1 , 4 )    --Выдача золота
    TriggerFailure( 1, JumpPage, 9)
    Text( 1, "Получить костюм Стрельца", MultiTrigger, GetMultiTrigger(), 1)
	
		InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1, 4 ) --Медаль отваги
    TriggerCondition( 1, HasLeaveBagGrid, 1 )--Свободные ячейки
    TriggerCondition( 1, HasHonorPoint,250 )     --Проверка чести на медали
	TriggerCondition( 1, HasCredit, 3000 )
	TriggerAction( 1, DelRoleCredit, 3000 )     --Отнятие чести с медали
    TriggerAction( 1, TakeHonorPoint, 250 )     --Отнятие чести с медали
    TriggerAction( 1, GiveItem, 7561, 1 , 4 )    --Выдача золота
    TriggerFailure( 1, JumpPage, 9)
    Text( 1, "Получить костюм Водолея", MultiTrigger, GetMultiTrigger(), 1)
	
		InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1, 4 ) --Медаль отваги
    TriggerCondition( 1, HasLeaveBagGrid, 1 )--Свободные ячейки
    TriggerCondition( 1, HasHonorPoint,250 )     --Проверка чести на медали
	TriggerCondition( 1, HasCredit, 5000 )
	TriggerAction( 1, DelRoleCredit, 5000 )     --Отнятие чести с медали
    TriggerAction( 1, TakeHonorPoint, 250 )     --Отнятие чести с медали
    TriggerAction( 1, GiveItem, 7562, 1 , 4 )    --Выдача золота
    TriggerFailure( 1, JumpPage, 9)
    Text( 1, "Получить костюм Рыб", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "Mao:  Извини, у тебя чего-то не хватает" )
	
end


--Аппарели Филлис
function new_talk04 ()
	Talk( 1, "Торговец: Привет, я продаю различные костюмы, ты хочешь выглядить красиво и модно? Так и чего ты тогда ждешь?" )
	Text( 1, "Приобрести", BuyPage )

	InitTrade()
	--Филис
	--[[
--Королевский камзол майора16
	Weapon(	5202	)
	Weapon(	5203	)
	Weapon(	5204	)
	Weapon(	5219	)
--Катакомбный Доспех1
	Weapon(		)
	Weapon(	5043	)
	Weapon(	5047	)
	Weapon(	5051	)
--Аппарель Корсара15
	Weapon(		)
	Weapon(	5059	)
	Weapon(	5063	)
	Weapon(	5067	)
--Костюм Кровопийцы
	Weapon(	5529	)
	Weapon(	5530	)
	Weapon(	5531	)
	Weapon(	5532	)
--Карибское одеяние
	Weapon(	5601	)
	Weapon(	5602	)
	Weapon(	5603	)
	Weapon(	5604	)
--Костюм Марио NO_TARGET
	--Weapon(	6471	)
	--Weapon(	6472	)
	--Weapon(	6473	)
	--Weapon(	6474	)
--Кожанный Костюм
	Weapon(		)
	Weapon(	5075	)
	Weapon(	5076	)
	Weapon(	5077	)
--Костюм Кошмара
	Weapon(		)
	Weapon(	5081	)
	Weapon(	5082	)
	Weapon(	5083	)
--Костюм Воина
	Weapon(		)
	Weapon(	5078	)
	Weapon(	5079	)
	Weapon(	5080	)
--Тигровый Костюм
	Weapon(		)
	Weapon(	5166	)
	Weapon(	5167	)
	Weapon(	5168	)
--Изменчивый Костюм
	Weapon(		)
	Weapon(	5169	)
	Weapon(	5170	)
	Weapon(	5171	)
--Костюм Брюса
	Weapon(		)
	Weapon(	5241	)
	Weapon(	5242	)
	Weapon(	5243	)
--Костюм Овна
	Weapon(		)
	Weapon(	5349	)
	Weapon(	5350	)
	Weapon(	5351	)
--Костюм Тельца
	Weapon(	5364	)
	Weapon(	5365	)
	Weapon(	5366	)
	Weapon(	5367	)
--Костюм Близнецов
	Weapon(	5380	)
	Weapon(	5381	)
	Weapon(	5382	)
	Weapon(	5383	)
--Костюм Большого Краба
	Weapon(	5464	)
	Weapon(	5465	)
	Weapon(	5466	)
	Weapon(	5467	)
--Костюм Черного Драконора
	Weapon(		)
	Weapon(	5494	)
	Weapon(	5495	)
	Weapon(	5496	)
--Костюм Хакера
	Weapon(	5545	)
	Weapon(	5546	)
	Weapon(	5547	)
	Weapon(	5548	)
--Костюм Азраила
	Weapon(	5561	)
	Weapon(	5562	)
	Weapon(	5563	)
	Weapon(	5564	)
--Костюм Огненной тени
	Weapon(	5585	)
	Weapon(	5586	)
	Weapon(	5587	)
	Weapon(	5588	)
--Костюм Рилаккума
	Weapon(	5636	)
	Weapon(	5637	)
	Weapon(	5638	)
	Weapon(	5639	)
--Новогодний Костюм
	Weapon(		)
	Weapon(		)
	Weapon(	5659	)
	Weapon(	5660	)
--Костюм Кровавой луны
	Weapon(	5669	)
	Weapon(	5670	)
	Weapon(	5671	)
	Weapon(	5672	)
--Ковбойский Костюм
	Weapon(	5685	)
	Weapon(	5686	)
	Weapon(	5687	)
	Weapon(	5688	)
-- Костюм Странника
	Weapon(	5734	)
	Weapon(	5735	)
	Weapon(	5736	)
	Weapon(	5737	)
--Костюм Короля Битв
	Weapon(	5850	)
	Weapon(	5851	)
	Weapon(	5852	)
	Weapon(	5853	)
--Костюм Магической Рощи
	Weapon(	6503	)
	Weapon(	6504	)
	Weapon(	6505	)
	Weapon(	6506	)
--Серебреный Костюм Императора
	Weapon(	5905	)
	Weapon(	5906	)
	Weapon(	5907	)
	Weapon(	5908	)
--Костюм Императора
	Weapon(	5918	)
	Weapon(	5919	)
	Weapon(	5920	)
	Weapon(	5921	)
--Золотой Костюм Императора
	Weapon(	5922	)
	Weapon(	5923	)
	Weapon(	5924	)
	Weapon(	5925	)
	--]]
--Удачливая Аппарель
	Defence(	5295	)
	Defence(	5296	)
	Defence(	5297	)
	Defence(	5298	)
--[[
	--Романтическая Аппарель
	Defence(		)
	Defence(	5309	)
	Defence(	5310	)
	Defence(	5311	)
--Костюм Хрюшки
	Defence(	5323	)
	Defence(	5324	)
	Defence(	5325	)
	Defence(	5326	)
--Зимний Костюм
	Defence(		)
	Defence(	5941	)
	Defence(	5942	)
	Defence(	5943	)
--Заколдованный лесной Костюм
	Defence(	5953	)
	Defence(	5954	)
	Defence(	5955	)
	Defence(	5956	)
--Костюм Удачливого Быка
	Defence(	5965	)
	Defence(	5966	)
	Defence(	5967	)
	Defence(	5968	)
--Костюм Белого Демона
	Defence(	5978	)
	Defence(	5979	)
	Defence(	5980	)
	Defence(	5981	)
--Костюм Панка
	Defence(		)
	Defence(	6363	)
	Defence(	6364	)
	Defence(	6365	)
--Костюм Девы
	Defence(	6398	)
	Defence(	6399	)
	Defence(	6400	)
	Defence(	6401	)
--Костюм Весов
	Defence(	6403	)
	Defence(	6404	)
	Defence(	6405	)
	Defence(	6406	)
--Костюм Скорпиона
	Defence(	6408	)
	Defence(	6409	)
	Defence(	6410	)
	Defence(	6487	)
--Костюм Стрельца
	Defence(	6412	)
	Defence(	6413	)
	Defence(	6414	)
	Defence(	6415	)
--Костюм Козерога
	Defence(	6417	)
	Defence(	6418	)
	Defence(	6419	)
	Defence(	6420	)
--Костюм Водолея
	Defence(	6422	)
	Defence(	6423	)
	Defence(	6424	)
	Defence(	6425	)
--Костюм Рыб
	Defence(	6427	)
	Defence(	6428	)
	Defence(	6429	)
	Defence(	6430	)
--Костюм Льва
	Defence(	6432	)
	Defence(	6433	)
	Defence(	6434	)
	Defence(	6435	)
--Костюм Железного человека
	Defence(	6437	)
	Defence(	6438	)
	Defence(	6439	)
	Defence(	6440	)
--Маскарадный Костюм
	Defence(	6442	)
	Defence(	6443	)
	Defence(	6444	)
	Defence(	6445	)
--Костюм Рукопашника
	Defence(	6451	)
	Defence(	6452	)
	Defence(	6453	)
	Defence(	6454	)
--Монашеский Костюм
	Defence(	5248	)
	Defence(	5249	)
	Defence(	5250	)
	Defence(	5251	)
--Свадебный Костюм
	Defence(	5244	)
	Defence(	5245	)
	Defence(	5246	)
	Defence(	5247	)
--Костюм Студента
	Defence(		)
	Defence(	5416	)
	Defence(	5417	)
	Defence(	5418	)
--Костюм Ведьмы
	Defence(	5986	)
	Defence(	5987	)
	Defence(	5988	)
	Defence(	5989	)
--Костюм Снежной Королевы
	Defence(	6378	)
	Defence(	6379	)
	Defence(	6380	)
	Defence(	6381	)
--Костюм Моряка
	Defence(	6455	)
	Defence(	6456	)
	Defence(	6457	)
	Defence(	6458	)
--Костюм Привлекательности
	Defence(		)
	Defence(	5015	)
	Defence(	5023	)
	Defence(	5031	)
--Большой Костюм Зимы
	Defence(		)
	Defence(	5019	)
	Defence(	5027	)
	Defence(	5035	)
--Костюм Матроса
	Defence(		)
	Defence(	5084	)
	Defence(	5085	)
	Defence(	5086	)
--Костюм из кожи Акулы
	Defence(		)
	Defence(	5087	)
	Defence(	5088	)
	Defence(	5089	)
--Костюм Морячка
	Defence(		)
	Defence(	5090	)
	Defence(	5091	)
	Defence(	5092	)
--Флотский Костюм
	Defence(		)
	Defence(	5093	)
	Defence(	5094	)
	Defence(	5095	)
--Костюм Бакалавра
	Other(	5410	)
	Other(	5411	)
	Other(	5412	)
	Other(	5438	)
--Костюм Кайлинора
	Other(		)
	Other(	5507	)
	Other(	5508	)
	Other(	5509	)
--Лесная Аппарель
	Other(	5953	)
	Other(	5954	)
	Other(	5955	)
	Other(	5956	)
--Капитанский Костюм
	Other(		)
	Other(	5096	)
	Other(	5097	)
	Other(	5098	)
--Лакомый Костюм
	Other(	5142	)
	Other(	5143	)
	Other(	5144	)
	Other(	5145	)
--Костюм Шайтанской принцессы
	Other(	5146	)
	Other(	5147	)
	Other(	5148	)
	Other(	5149	)
--Сексуальный Костюм
	Other(	5150	)
	Other(	5151	)
	Other(	5152	)
	Other(	5153	)
--Темно-синий Костюм Судьбы
	Other(		)
	Other(	5172	)
	Other(	5173	)
	Other(	5174	)
--Причудливый Костюм
	Other(	5396	)
	Other(	5397	)
	Other(	5398	)
	Other(	5399	)
--Чудесный райский Костюм
	Other(		)
	Other(	5426	)
	Other(	5427	)
	Other(	5438	)
--Розовый Костюм Гейши
	Other(	5909	)
	Other(	5910	)
	Other(	5911	)
	Other(	5912	)
--Костюм Костюм Принцесы
	Other(	6358	)
	Other(	6359	)
	Other(	6360	)
	Other(	6361	)
--Ночной Костюм
	Other(		)
	Other(	6367	)
	Other(	6368	)
	Other(	6369	)
--Королевский Костюм
	Other(	6370	)
	Other(	6371	)
	Other(	6372	)
	Other(	6373	)
--Эротический Костюм
	Other(	6374	)
	Other(	6375	)
	Other(	6376	)
	Other(	6377	)
--Рыжий Костюм
	Other(	6483	)
	Other(	6484	)
	Other(	6485	)
	Other(	6486	)
--Рождественский Костюм
	Other(	6495	)
	Other(	6496	)
	Other(	6497	)
	Other(	6498	)
--Шапка невидимка
	Other(	6488	)
--]]
end

--Аппарели Ами
function new_talk05 ()
	Talk( 1, "Торговец: Привет, я продаю различные костюмы, ты хочешь выглядить красиво и модно? Так и чего ты тогда ждешь?" )
	Text( 1, "Приобрести", BuyPage )

	InitTrade()
--Ами
--[[
--Катакомбный доспех
	Weapon(	5044	)
	Weapon(	5048	)
	Weapon(	5052	)
	Weapon(	5056	)
--Аппарель Корсара
	Weapon(	5060	)
	Weapon(	5064	)
	Weapon(	5068	)
	Weapon(	5069	)
--Королевский камзол майора
	Weapon(	5198	)
	Weapon(	5199	)
	Weapon(	5200	)
	Weapon(	5201	)
--Костюм Кровопийцы
	Weapon(	5533	)
	Weapon(	5534	)
	Weapon(	5535	)
	Weapon(	5536	)
--Карибское одеяние
	Weapon(	5605	)
	Weapon(	5606	)
	Weapon(	5607	)
	Weapon(	5608	)
--Костюм Марио
	Weapon(	5616	)
	Weapon(	5617	)
	Weapon(	5618	)
	Weapon(	5619	)
--Костюм Овна
	Weapon(	5352	)
	Weapon(	5353	)
	Weapon(	5354	)
	Weapon(	5355	)
--Костюм Тельца
	Weapon(	5368	)
	Weapon(	5369	)
	Weapon(	5370	)
	Weapon(	5371	)
--Костюм Близнецов
	Weapon(	5384	)
	Weapon(	5385	)
	Weapon(	5386	)
	Weapon(	5387	)
--Костюм Черного Драконора
	Weapon(	5497	)
	Weapon(	5498	)
	Weapon(	5499	)
	Weapon(	5500	)
--Костюм Большого Краба
	Weapon(	5468	)
	Weapon(	5469	)
	Weapon(	5470	)
	Weapon(	5471	)
--Костюм Хакера
	Weapon(	5549	)
	Weapon(	5550	)
	Weapon(	5551	)
	Weapon(	5552	)
--Костюм Азраила
	Weapon(	5565	)
	Weapon(	5566	)
	Weapon(	5567	)
	Weapon(	5568	)
--Костюм Огненной тени
	Weapon(	5589	)
	Weapon(	5590	)
	Weapon(	5591	)
	Weapon(	5592	)
--Костюм Рилаккума
	Weapon(	5640	)
	Weapon(	5641	)
	Weapon(	5642	)
	Weapon(	5643	)
--Костюм Кровавой луны
	Weapon(	5673	)
	Weapon(	5674	)
	Weapon(	5675	)
	Weapon(	5676	)
--Ковбойский Костюм
	Weapon(	5689	)
	Weapon(	5690	)
	Weapon(	5691	)
	Weapon(	5692	)
--Костюм Странника
	Weapon(	5738	)
	Weapon(	5739	)
	Weapon(	5740	)
	Weapon(	5741	)
--Костюм Короля Битв
	Weapon(	5854	)
	Weapon(	5855	)
	Weapon(	5856	)
	Weapon(	5857	)
--Костюм Магической Рощи
	Weapon(	6503	)
	Weapon(	6504	)
	Weapon(	6505	)
	Weapon(	6506	)
--Серебреный Костюм Императора
	Weapon(	5905	)
	Weapon(	5906	)
	Weapon(	5907	)
	Weapon(	5908	)
--Костюм Императора
	Weapon(	5918	)
	Weapon(	5919	)
	Weapon(	5920	)
	Weapon(	5921	)
--Золотой Костюм Императора
	Weapon(	5922	)
	Weapon(	5923	)
	Weapon(	5924	)
	Weapon(	5925	)
--Зимний Костюм
	Weapon(	5944	)
	Weapon(	5962	)
	Weapon(	5963	)
	Weapon(	5964	)
--Заколдованный лесной Костюм
	Weapon(	5957	)
	Weapon(	5958	)
	Weapon(	5959)
	Weapon(	5960	)
--Костюм Удачливого Быка
	Weapon(	5965	)
	Weapon(	5966	)
	Weapon(	5967	)
	Weapon(	5968	)
--Костюм Панка
	Weapon(		)
	Weapon(	6363	)
	Weapon(	6364	)
	Weapon(	6365	)
--Костюм Девы
	Weapon(	6398	)
	Weapon(	6399	)
	Weapon(	6400	)
	Weapon(	6401	)
--Костюм Весов
	Weapon(	6403	)
	Weapon(	6404	)
	Weapon(	6405	)
	Weapon(	6406	)
--Костюм Скорпиона
	Weapon(	6408	)
	Weapon(	6409	)
	Weapon(	6410	)
	Weapon(	6487	)
	--]]
--Удачливая Аппарель
	Defence(	5299	)
	Defence(	5300	)
	Defence(	5301	)
	Defence(	5302	)
--[[
	--Романтическая Аппарель
	Defence(		)
	Defence(	5312	)
	Defence(	5313	)
	Defence(	5314	)
--Костюм Хрюшки
	Defence(	5327	)
	Defence(	5328	)
	Defence(	5329	)
	Defence(	5330	)
--Костюм Козерога
	Defence(	6417	)
	Defence(	6418	)
	Defence(	6419	)
	Defence(	6420	)
--Костюм Водолея
	Defence(	6422	)
	Defence(	6423	)
	Defence(	6424	)
	Defence(	6425	)
--Костюм Рыб
	Defence(	6427	)
	Defence(	6428	)
	Defence(	6429	)
	Defence(	6430	)
--Костюм Льва
	Defence(	6432	)
	Defence(	6433	)
	Defence(	6434	)
	Defence(	6435	)
--Костюм Железного человека
	Defence(	6437	)
	Defence(	6438	)
	Defence(	6439	)
	Defence(	6440	)
--Маскарадный Костюм
	Defence(	6442	)
	Defence(	6443	)
	Defence(	6444	)
	Defence(	6445	)
--Костюм Рукопашника
	Defence(	6451	)
	Defence(	6452	)
	Defence(	6453	)
	Defence(	6454	)
--Костюм Маленькой пчелы
	Defence(	5138	)
	Defence(	5139	)
	Defence(	5140	)
	Defence(	5141	)
--Костюм Гриба
	Defence(	5134	)
	Defence(	5135	)
	Defence(	5136	)
	Defence(	5137	)
--Веселый Олений Костюм
	Defence(	5130	)
	Defence(	5131	)
	Defence(	5132	)
	Defence(	5133	)
--Деревенский Костюм
	Defence(	5020	)
	Defence(	5024	)
	Defence(	5032	)
	Defence(	5037	)
--Костюм Звона
	Defence(		)
	Defence(	5016	)
	Defence(	5028	)
	Defence(	5036	)
--Костюм Ами
	Defence(	5260	)
	Defence(	5261	)
	Defence(	5262	)
	Defence(	5263	)
--Монашеский Костюм
	Defence(	5256	)
	Defence(	5257	)
	Defence(	5258	)
	Defence(	5259	)
--Свадебный Костюм
	Defence(	5252	)
	Defence(	5253	)
	Defence(	5254	)
	Defence(	5255	)
--Шелковый Костюм Кролика
	Defence(	5191	)
	Defence(	5192	)
	Defence(	5193	)
	Defence(	5194	)
--Костюм Благородного льва
	Defence(	5187	)
	Defence(	5188	)
	Defence(	5189	)
	Defence(	5190	)
--Лазурный Костюм Феи
	Defence(	5183	)
	Defence(	5184	)
	Defence(	5185	)
	Defence(	5186	)
--Костюм Сладости
	Defence(		)
	Defence(	5179	)
	Defence(	5180	)
	Defence(	5181	)
--Костюм Алии
	Defence(		)
	Defence(	5175	)
	Defence(	5177	)
	Defence(	5178	)
--Костюм Розового ангела
	Defence(	5428	)
	Defence(	5429	)
	Defence(	5430	)
	Defence(	5431	)
--Костюм Студента
	Defence(		)
	Defence(	5419	)
	Defence(	5420	)
	Defence(	5421	)
--Костюм Нежности
	Defence(	5400	)
	Defence(	5401	)
	Defence(	5402	)
	Defence(	5403	)
--Костюм Дракона
	Defence(		)
	Defence(	5517	)
	Defence(	5518	)
	Defence(	5519	)
--Костюм Лолиты
	Defence(	5646	)
	Defence(	5647	)
	Defence(	5648	)
	Defence(	5649	)
--Костюм Ведьмы
	Defence(	5986	)
	Defence(	5987	)
	Defence(	5988	)
	Defence(	5989	)
--Костюм Черного Демона
	Defence(	5982	)
	Defence(	5983	)
	Defence(	5984	)
	Defence(	5985	)
--Костюм Эша NO_TARGET
	--Other(	5913	)
	--Other(	5914	)
	--Other(	5915	)
	--Other(	5916	)
--Костюм Снежной Королевы
	Other(	6382	)
	Other(	6383	)
	Other(	6384	)
	Other(	6385	)
--Костюм Костюм Моряка
	Other(	6455	)
	Other(	6456	)
	Other(	6457	)
	Other(	6458	)
--Костюм Бакалавра
	Other(	5413	)
	Other(	5414	)
	Other(	5415	)
	Other(	5439	)
--Костюм Кайлинора
	Other(	5510	)
	Other(	5511	)
	Other(	5512	)
	Other(	5513	)
--Лесная Аппарель
	Other(	5957	)
	Other(	5958	)
	Other(	5959	)
	Other(	5960	)
--Шапка невидимка
	Other(	6488	)--]]
end

--Аппарели Оружия
function new_talk06 ()
	Talk( 1, "Торговец: Привет, ты хочешь выглядить красиво и модно? Так и чего ты тогда ждешь?" )
	Text( 1, "Приобрести", BuyPage )
--	Talk( 1, "Аппарели: Заебали блять, суки ебаные НПС!")
--	Text( 1, "Приобрести", BuyPage )

	InitTrade()
	Weapon(	5230	)
	Weapon(	5231	)
	Weapon(	5232	)
	Weapon(	5233	)
	Weapon(	5234	)
	Weapon(	5235	)
	Weapon(	5236	)
	Weapon(	5237	)
	Weapon(	5238	)
	Weapon(	5239	)
	Weapon(	5240	)
	Weapon(		)
	Weapon(	5392	)
	Weapon(	5393	)
	Weapon(	5394	)
	Weapon(	5395	)
	Weapon(	6390	)
	Weapon(	6391	)
	Weapon(	6392	)
	Weapon(	6393	)
	Weapon(	6459	)
	Weapon(	6460	)
	Weapon(	6461	)
	Weapon(	6462	)
	Weapon(	6479	)
	Weapon(	6480	)
	Weapon(	6481	)
	Weapon(	6482	)
	Weapon(	6491	)
	Weapon(	6492	)
	Weapon(	6493	)
	Weapon(	6494	)
	Weapon(	6509	)
	Weapon(	6510	)
	Weapon(	6511	)
	Weapon(		)
--	Weapon(	5615	)	--Покровительство Богов
	Weapon(	5001	)	--Меч лазурного пламени
--	Weapon(	5002	)	--Меч малинового грома
	Weapon(	5007	)	--Меч малинового пламени
--	Weapon(	5008	)	--Меч лазурного грома
--	Weapon(	5070	)	--Меч кадавра
--	Weapon(	5276	)	--Складной стул
--	Weapon(	5278	)	--Ветвь очищения
--	Weapon(	5283	)	--Нож Барборосы
--	Weapon(	5284	)	--Вилка Барборосы
--	Weapon(	5285	)	--Сковорода Бабушки Спички
--	Weapon(	5449	)	--Книга Мясника
--	Weapon(	5610	)	--Рыба-меч
--	Weapon(	5871	)	--Световой меч
--	Weapon(	5876	)	--Бамбук
--	Weapon(	5877	)	--Бейсбольная бита
--	Weapon(	5990	)	--Меч Авроры
--	Weapon(	5991	)	--Меч Святости
--	Weapon(	6531	)	--Драко
	Weapon(	5004	)	--Клинок морозного полумесяца
--	Weapon(	5010	)	--Клинок пылающего полумесяца
--	Weapon(	5074	)	--Кинжал мертвеца
--	Weapon(	5282	)	--Волшебные китайские палочки
--	Weapon(	5453	)	--Аккуратная Линейка
--	Weapon(	5614	)	--Морская звезда (клинок)
--	Weapon(	5870	)	--Крюк пирата
--	Weapon(	5872	)	--Бумажный пакет
--	Weapon(	5873	)	--Кинжал
--	Weapon(	5874	)	--Тесак
--	Weapon(	5875	)	--Разбитая бутылка
--	Weapon(	5454	)	--Длинная Линейка
	Weapon(	5003	)	--Огромный молот Зеста
--	Weapon(	5009	)	--Великий молот Хона
--	Weapon(	5071	)	--Большой меч кадавра
--	Weapon(	5277	)	--Чистящая щетка Ланга
--	Weapon(	5450	)	--Красиво Обернутая Энциклопедия
--	Weapon(	5609	)	--Соленый Палаш
--	Weapon(	5878	)	--Бензопила
--	Weapon(	5879	)	--Шест
--	Weapon(	5880	)	--Световой посох
--	Weapon(	5881	)	--Зампакта
--	Weapon(	5882	)	--Бочка рома
--	Weapon(	6508	)	--Меч Смерти
--	Weapon(	6512	)	--Топор Ярости
--	Weapon(	5448	)	--Смертельная Линейка
--	Weapon(	5612	)	--Лук Лафея
--	Weapon(	6522	)	--Метеоритный лук
--	Weapon(	6523	)	--Охотничий лук
--	Weapon(	6524	)	--Боевой Лук
--	Weapon(	6525	)	--Точный лук
--	Weapon(	6526	)	--Солдатский лук
--	Weapon(	6527	)	--Точный лук
--	Weapon(	6528	)	--Радуга
--	Weapon(	6529	)	--Слеза
--	Weapon(	6530	)	--Лук Зари
	Weapon(	5005	)	--Виньон
--	Weapon(	5011	)	--Старинный пистолет
--	Weapon(	5072	)	--Мушкет кадавра
--[[	Weapon(	5279	)	--Богиня мщения
	Weapon(	5281	)	--Фальшивая пневмопушка
	Weapon(	5286	)	--Красивый арбалет
	Weapon(	5613	)	--Клещня краба (базука)
	Weapon(	5883	)	--Банан
	Weapon(	5884	)	--Супер Водяной пистолет
	Weapon(	5885	)	--Водяной пистолет
	Weapon(	5886	)	--Базука
	Weapon(	5887	)	--Соленая рыба-меч
	Weapon(	5888	)	--Молниемет
	Weapon(	5889	)	--Дробовик
	Weapon(	5890	)	--Лазерная пушка
	Weapon(	5897	)	--Древний Пистолет
	--]]
	Weapon(	5006	)	--Грох. стержень пылающ. полумесяца
--[[	Weapon(	5012	)	--Грох. стержень мороз. полумесяца
	Weapon(	5280	)	--Суповая ложка
	Weapon(	5451	)	--Змеиная Волшебная Ручка
	Weapon(	5452	)	--Острый Циркуль
	Weapon(	5611	)	--Посох Кальмарчика
	Weapon(	5891	)	--Удочка
	Weapon(	5892	)	--Большой леденец
	Weapon(	5893	)	--Флаг
	Weapon(	5894	)	--Пастуший посох
	Weapon(	5895	)	--Веер--]]
end

--Билеты
function new_talk07 ()
	Talk( 1, "Кристина: Привет, я продаю билеты во все концы света. Куда хочешь отправиться?" )
	Text( 1, "Приобрести", BuyPage )
--[[	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasMoney, 25000000 )--25кк
	TriggerAction( 1, TakeMoney, 25000000 )
	TriggerAction( 1, GiveItem, 6205, 1, 4 )--Билет на Остров Зимы
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Билет на зиму за 25кк ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "Передумал ", JumpPage, 1 )
	Talk( 2, "Кристина: Желаю удачи, будь внимательнее, Зимние острова очень опасные места." )
	Talk( 3, "Кристина: Ты пытаешься меня обмануть, это плохо, я не хочу с тобой больше разговаривать!" )--]]
	InitTrade()
	Weapon(	4604	)--Билет до Ледыни
	Weapon(	4603	)--Билет до Шайтана
	Weapon(	4602	)--Билет до Аргента
	Weapon(	3141	)--Обратный билет
--	Weapon(	3076	)--Пропуск в Весноград
--	Weapon(	3048	)--Пропуск в Громоград
--	Weapon(	0563	)--Пропуск на остров Лета
--	Weapon(	0583	)--Пропуск на остров Осени
--	Weapon(	3049	)--Следуй в порт Громограда
--	Weapon(	3050	)--Пропуск к Священной Снежной горе
--	Weapon(	3051	)--Пропуск в Андийский лес
--	Weapon(	3052	)--Пропуск в Оазис
--	Weapon(	3053	)--Пропуск к Ледяному шипу
--	Weapon(	2445	)--Билет в карибское путешествие
--	Weapon(	3054	)--Пропуск в Одинокую башню
--	Weapon(	3059	)--Билет в Одинокую башню 2
--	Weapon(	3060	)--Пропуск в Одинокую башню 3
--	Weapon(	3070	)--Пропуск в Одинокую башню 4
--	Weapon(	3071	)--Пропуск в Одинокую башню 5
--	Weapon(	3072	)--Пропуск в Одинокую башню 6

end



--Получение профессий
function new_talk09()
Talk( 1, "Профессор: Привет! Я учу профессиям. " )
Text( 1, " Первая профессия ", JumpPage, 2)
Text( 1, " Вторая профессия ", JumpPage, 3)
Text( 1, " Пока.... ",  CloseTalk)

Talk( 2, "Для получения требуется 9 лвл и 1к голда! " )
Text( 2, " Мечник ", JumpPage, 4 )
Text( 2, " Хантер ", JumpPage, 5 )
Text( 2, " Знахарка ", JumpPage, 6 )
Text( 2, " Путешественник ", JumpPage, 7 )
Text( 2, " Назад ", JumpPage, 1 )

Talk( 3, "Для получения требуется 40 лвл и 50к голда! " )
Text( 3, "Хочу быть крузом!", JumpPage, 8 )
Text( 3, "Хочу быть чампом!", JumpPage, 9 )
Text( 3, "Хочу быть шарпом!", JumpPage, 10 )
Text( 3, "Хочу быть клером!", JumpPage, 11 )
Text( 3, "Хочу быть ведьмой!", JumpPage, 12 )
Text( 3, "Хочу быть воем!", JumpPage, 13 )
Text( 3, "Не Хочу никем быть...", JumpPage, 1 )

Talk( 4, "У тебя уже есть 9 лвл и 1к золота? тогда выбирай. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 8 )
TriggerCondition( 1, IsCategory, 1 )
TriggerCondition( 1, PfEqual, 0 )
TriggerCondition( 1, HasMoney, 1000,1000 )
TriggerAction( 1, TakeMoney, 1000,1000 )
TriggerAction( 1, SetProfession, 1 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 8 )
TriggerCondition( 2, IsCategory, 2 )
TriggerCondition( 2, PfEqual, 0 )
TriggerCondition( 2, HasMoney, 1000,1000 )
TriggerAction( 2, TakeMoney, 1000,1000 )
TriggerAction( 2, SetProfession, 1 )
TriggerAction( 2, JumpPage, 14 )
TriggerCondition( 3, LvCheck, ">", 8 )
TriggerCondition( 3, IsCategory, 3 )
TriggerCondition( 3, PfEqual, 0 )
TriggerCondition( 3, HasMoney, 1000,1000 )
TriggerAction( 3, TakeMoney, 1000,1000 )
TriggerAction( 3, SetProfession, 1 )
TriggerAction( 3, JumpPage, 14 )
TriggerFailure( 3, JumpPage, 15 )
Text( 4, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 3)
Text( 4, "Перейти к выбору проф ", JumpPage, 2 )

Talk( 5, "У тебя уже есть 9 лвл и 1к золота? тогда выбирай. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 8 )
TriggerCondition( 1, IsCategory, 1 )
TriggerCondition( 1, PfEqual, 0 )
TriggerCondition( 1, HasMoney, 1000,1000 )
TriggerAction( 1, TakeMoney, 1000,1000 )
TriggerAction( 1, SetProfession, 2 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 8 )
TriggerCondition( 2, IsCategory, 3 )
TriggerCondition( 2, PfEqual, 0 )
TriggerCondition( 2, HasMoney, 1000,1000 )
TriggerAction( 2, TakeMoney, 1000,1000 )
TriggerAction( 2, SetProfession, 2 )
TriggerAction( 2, JumpPage, 14 )
TriggerFailure( 2, JumpPage, 15 )
Text( 5, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 2)
Text( 5, "Перейти к выбору проф ", JumpPage, 2 )

Talk( 6, "У тебя уже есть 9 лвл и 1к золота? тогда выбирай. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 8 )
TriggerCondition( 1, IsCategory, 3 )
TriggerCondition( 1, PfEqual, 0 )
TriggerCondition( 1, HasMoney, 1000,1000 )
TriggerAction( 1, TakeMoney, 1000,1000 )
TriggerAction( 1, SetProfession, 5 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 8 )
TriggerCondition( 2, IsCategory, 4 )
TriggerCondition( 2, PfEqual, 0 )
TriggerCondition( 2, HasMoney, 1000,1000 )
TriggerAction( 2, TakeMoney, 1000,1000 )
TriggerAction( 2, SetProfession, 5 )
TriggerAction( 2, JumpPage, 14 )
TriggerFailure( 2, JumpPage, 15 )
Text( 6, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 2)
Text( 6, "Перейти к выбору проф ", JumpPage, 2 )

Talk( 7, "У тебя уже есть 9 лвл и 1к золота? тогда выбирай. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 8 )
TriggerCondition( 1, IsCategory, 1 )
TriggerCondition( 1, PfEqual, 0 )
TriggerCondition( 1, HasMoney, 1000,1000 )
TriggerAction( 1, TakeMoney, 1000,1000 )
TriggerAction( 1, SetProfession, 4 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 8 )
TriggerCondition( 2, IsCategory, 3 )
TriggerCondition( 2, PfEqual, 0 )
TriggerCondition( 2, HasMoney, 1000,1000 )
TriggerAction( 2, TakeMoney, 1000,1000 )
TriggerAction( 2, SetProfession, 4 )
TriggerAction( 2, JumpPage, 14 )
TriggerCondition( 3, LvCheck, ">", 8 )
TriggerCondition( 3, IsCategory, 4 )
TriggerCondition( 3, PfEqual, 0 )
TriggerCondition( 3, HasMoney, 1000,1000 )
TriggerAction( 3, TakeMoney, 1000,1000 )
TriggerAction( 3, SetProfession, 4 )
TriggerAction( 3, JumpPage, 14 )
TriggerFailure( 3, JumpPage, 15 )
Text( 7, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 3)
Text( 7, "Перейти к выбору проф ", JumpPage, 2 )

Talk( 8, "У тебя уже есть 40 лвл и 50к золота? тогда выбирай. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 39 )
TriggerCondition( 1, IsCategory, 1 )
TriggerCondition( 1, PfEqual, 1 )
TriggerCondition( 1, HasMoney, 50000,50000 )
TriggerAction( 1, TakeMoney, 50000,50000 )
TriggerAction( 1, SetProfession, 9 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 39 )
TriggerCondition( 2, IsCategory, 3 )
TriggerCondition( 2, PfEqual, 1 )
TriggerCondition( 2, HasMoney, 50000,50000 )
TriggerAction( 2, TakeMoney, 50000,50000 )
TriggerAction( 2, SetProfession, 9 )
TriggerAction( 2, JumpPage, 14 )
TriggerFailure( 2, JumpPage, 15 )
Text( 8, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 2)
Text( 8, "Перейти к выбору проф", JumpPage, 2 )

Talk( 9, "У тебя уже есть 40 лвл и 50к золота? тогда выбирай. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 39 )
TriggerCondition( 1, IsCategory, 2 )
TriggerCondition( 1, PfEqual, 1 )
TriggerCondition( 1, HasMoney, 50000, 50000)
TriggerAction( 1, SetProfession, 8 )
TriggerAction( 1, TakeMoney, 50000, 50000 )
TriggerAction( 1, JumpPage, 14 )
TriggerFailure( 1, JumpPage, 15 )
Text( 9, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 1)
Text( 9, "Перейти к выбору проф ", JumpPage, 2 )

Talk( 10, "У тебя уже есть 40 лвл и 50к золота? тогда выбирай. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 39 )
TriggerCondition( 1, IsCategory, 1 )
TriggerCondition( 1, PfEqual, 2 )
TriggerCondition( 1, HasMoney, 50000,50000 )
TriggerAction( 1, TakeMoney, 50000,50000 )
TriggerAction( 1, SetProfession, 12 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 39 )
TriggerCondition( 2, IsCategory, 3 )
TriggerCondition( 2, PfEqual, 2 )
TriggerCondition( 2, HasMoney, 50000,50000 )
TriggerAction( 2, TakeMoney, 50000,50000 )
TriggerAction( 2, SetProfession, 12 )
TriggerAction( 2, JumpPage, 14 )
TriggerFailure( 2, JumpPage, 15 )
Text( 10, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 2)
Text( 10, "Перейти к выбору проф ", JumpPage, 2 )

Talk( 11, "У тебя уже есть 40 лвл и 50к золота? тогда выбирай. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 39 )
TriggerCondition( 1, IsCategory, 3 )
TriggerCondition( 1, PfEqual, 5 )
TriggerCondition( 1, HasMoney, 50000,50000 )
TriggerAction( 1, TakeMoney, 50000,50000 )
TriggerAction( 1, SetProfession, 13 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 39 )
TriggerCondition( 2, IsCategory, 4 )
TriggerCondition( 2, PfEqual, 5 )
TriggerCondition( 2, HasMoney, 50000,50000 )
TriggerAction( 2, TakeMoney, 50000,50000 )
TriggerAction( 2, SetProfession, 13 )
TriggerAction( 2, JumpPage, 14 )
TriggerFailure( 2, JumpPage, 15 )
Text( 11, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 2)
Text( 11, "Перейти к выбору проф ", JumpPage, 2 )

Talk( 12, "У тебя уже есть 40 лвл и 50к золота? тогда выбирай. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 39 )
TriggerCondition( 1, IsCategory, 3 )
TriggerCondition( 1, PfEqual, 5 )
TriggerCondition( 1, HasMoney, 50000,50000 )
TriggerAction( 1, TakeMoney, 50000,50000 )
TriggerAction( 1, SetProfession, 14 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 39 )
TriggerCondition( 2, IsCategory, 4 )
TriggerCondition( 2, PfEqual, 5 )
TriggerCondition( 2, HasMoney, 50000,50000 )
TriggerAction( 2, TakeMoney, 50000,50000 )
TriggerAction( 2, SetProfession, 14 )
TriggerAction( 2, JumpPage, 14 )
TriggerFailure( 2, JumpPage, 15 )
Text( 12, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 2)
Text( 12, "Перейти к выбору проф ", JumpPage, 2 )

Talk( 13, "У тебя уже есть 40 лвл и 50к золота? тогда выбирай. " )
InitTrigger()
TriggerCondition( 1, LvCheck, ">", 39 )
TriggerCondition( 1, IsCategory, 1 )
TriggerCondition( 1, PfEqual, 4 )
TriggerCondition( 1, HasMoney, 50000,50000 )
TriggerAction( 1, TakeMoney, 50000,50000 )
TriggerAction( 1, SetProfession, 16 )
TriggerAction( 1, JumpPage, 14 )
TriggerCondition( 2, LvCheck, ">", 39 )
TriggerCondition( 2, IsCategory, 3 )
TriggerCondition( 2, PfEqual, 4 )
TriggerCondition( 2, HasMoney, 50000,50000 )
TriggerAction( 2, TakeMoney, 50000,50000 )
TriggerAction( 2, SetProfession, 16 )
TriggerAction( 2, JumpPage, 14 )
TriggerCondition( 3, LvCheck, ">", 39 )
TriggerCondition( 3, IsCategory, 4 )
TriggerCondition( 3, PfEqual, 4 )
TriggerCondition( 3, HasMoney, 50000,50000 )
TriggerAction( 3, TakeMoney, 50000,50000 )
TriggerAction( 3, SetProfession, 16 )
TriggerAction( 3, JumpPage, 14 )
TriggerFailure( 3, JumpPage, 15 )
Text( 13, "Точно хочу ", MultiTrigger, GetMultiTrigger(), 3)
Text( 13, "Перейти к выбору проф ", JumpPage, 2 )

Talk( 14, "Профессор: Поздравляю тебя с получением профессии ")
Text( 14, "Спасибо ",  CloseTalk)

Talk( 15, "Профессор: Ты не подходишь под требования!")
Text( 15, "Я понял ",  CloseTalk) 
	
	--Other(	3089	)
	Other(	3090	)
	Other(	3091	)
	--Other(	3092	)
	Other(	3093	)
	--Other(	1024	) -- Super Rechargable battery
	Other(	3844	) -- ня
	Other(	3845	) -- зя
	Other(	3094	) -- Amp of strive

	Other(	3096	) -- amp of luck
	Other(	3095	) -- Hi Amp of strive
	Other(	5694	)
	Other(	5695	)
	Other(	3097	) -- hi amp of luck
	Other(	0849	) -- bananas
	Other(	3846	) -- voodoo doll
	Other(	3462	) -- magical clover
	Other(	3463	) -- Icy Crystal
	Other(	3300	) -- intense magic
	Other(	3301	) -- crystalline blessing
	Other(	3109	) -- str reset
	Other(	3110	) -- con reset
	Other(	3111	) -- agi reset
	Other(	3112	) -- acc reset
	Other(	3113	) -- spr reset
	Other(	3105	)
	Other(	1024	)
--]]
end

--Чародейка
function r_talk99()
Talk( 1, "Чародейка: Привет! _Я учу зачаровывать предметы, я прочла много книг и знаю многие секреты волшебства, тебе нужна помощь? __Хочешь получить благославление на усиление? - дай мне 500.000 монет. _Хочешь получить супер-благославление - _дай мне 1.000.000 монет " )

Text( 1, " О свиткках усиления ", JumpPage, 2)
Text( 1, " Усиление свитков ", JumpPage, 5)
Text( 1, " Усиление зелий ", JumpPage, 3)

InitTrigger()
TriggerAction( 1, TakeMoney, 50000 )
TriggerAction( 1, SystemNotice, "Вы получили благославление на 5 минут" )
TriggerFailure(  1, JumpPage, 1 )
Text( 1, "Получить удачу",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerAction( 1, TakeMoney, 1000000 )
TriggerAction( 1, SystemNotice, "Вы получили супер-благославление на 2 минуты" )
TriggerFailure(  1, JumpPage, 1 )
Text( 1, "Получить супер-удачу",MultiTrigger, GetMultiTrigger(), 1)


Talk( 2, "Чародейка: Свитки усиления это предметы которые могут усилить характеристики твоего снаряжения, свитки могут не только улучшить, но и ухудшить характеристики, так что будь осторожен. Свитки бывают 4 видов: обычные,усиленные,благославленные и божественные. Свитки могут улучшить только 5 характеристик предмета : защиту,уклонение,шанс попадания,физическую защиту,характеристики ожерелий и колец. Для того чтоб усилить вещь нужно щелкнуть по свитку и навести на предмет который хочешь усилить. " )
Talk( 3, "Чародейка: Я способна сварить более сильные элексиры усиления, для этого мне нужно будет 2 чудо-мази, 5 зелий которые ты хочешь усилить и 30.000 золотых " )



InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 1859, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 1859, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8715, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " Улучшить Зелье точности ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 1858, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 1858, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8714, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " Улучшить Укрепляющее зелье ",MultiTrigger, GetMultiTrigger(), 1)


InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 1857, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 1857, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8713, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " Улучшить Энергозелье ",MultiTrigger, GetMultiTrigger(), 1)



InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 1856, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 1856, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8712, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " Улучшить Зелье берсерка ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 1855, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 1855, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8711, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " Улучшить Боевое зелье ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 1854, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 1854, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8710, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " Улучшить Бычье зелье ",MultiTrigger, GetMultiTrigger(), 1)


InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 3339, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 3339, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8707, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " Улучшить Зелье ускорения ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 0851, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 0851, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8708, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " Улучшить Боевой строй ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 0852, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 0852, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8709, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " Улучшить Полный доспех ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3135, 2 )
TriggerCondition( 1, HasItem, 3105, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3135, 2 )
TriggerAction( 1, TakeItem, 3105, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8706, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 3, " Улучшить Зелье скольжения ",MultiTrigger, GetMultiTrigger(), 1)


Talk( 5, "Чародейка: Я могу усилить твои свитки, для этого мне понадобится 5 свитоков и искрящийся камень и 30.000 золотых" )


InitTrigger()
TriggerCondition( 1, HasItem, 3389, 1 )
TriggerCondition( 1, HasItem, 8536, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3389, 1 )
TriggerAction( 1, TakeItem, 8536, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8717, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 5, " Улучшить свиток защиты ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3389, 1 )
TriggerCondition( 1, HasItem, 8587, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3389, 1 )
TriggerAction( 1, TakeItem, 8587, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8718, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 5, " Улучшить свиток уклонения ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3389, 1 )
TriggerCondition( 1, HasItem, 8583, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3389, 1 )
TriggerAction( 1, TakeItem, 8583, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8719, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 5, " Улучшить свиток попадания ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3389, 1 )
TriggerCondition( 1, HasItem, 8584, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3389, 1 )
TriggerAction( 1, TakeItem, 8584, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8720, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 5, " Улучшить свиток физ. защиты ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3389, 1 )
TriggerCondition( 1, HasItem, 8581, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3389, 1 )
TriggerAction( 1, TakeItem, 8581, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8721, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 5, " Улучшить свиток атаки ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 3389, 1 )
TriggerCondition( 1, HasItem, 8537, 5 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 3389, 1 )
TriggerAction( 1, TakeItem, 8537, 5 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 8722, 1, 4 )
TriggerFailure(  1, JumpPage, 6 )
Text( 5, " Улучшить свиток украшений ",MultiTrigger, GetMultiTrigger(), 1)


Talk( 6, "Чародейка: Я не могу усилить предмет, чего то не хватает!" )

end

--Игровой автомат
function new_talk11 ()
	Talk( 1, "Игровой автомат: Испытай свою удачу! Чем выше ставка, тем больше выйгрыш." )
	Text( 1, "Играть", OpenTiger )
end


--Повышения
function r_talkmedal ()
Talk( 1, "Здравия, боец, неужели ты пришел ко мне чтобы повысить свое звание? " )
Text( 1, 'Повысить звание', JumpPage, 2 )
Talk( 2, "Для звания _Ефрейтор тебе нужно 1 ОЧ 500 репутации _Мл.Сержант тебе нужно 5 ОЧ 750 репутации _Сержант тебе нужно 15 ОЧ 1250 репутации _ст.Сержант тебе нужно 25 ОЧ 1250репутаци _Прапорщик тебе нужно 75 ОЧ 2000 репутаци" )

Talk( 3, "Для звания _ст.Прапорщик тебе нужно 95 ОЧ 2250 реп. _Лейтенанта тебе нужно 125 ОЧ 3250 реп. _ст.Лейтенанта тебе нужно 145 ОЧ 3500 реп. _Капитан тебе нужно 165 ОЧ 4000 репутации _Майор тебе нужно 185 ОЧ 4250 репутации " )
Talk( 4, "Для звания _Подполковник тебе нужно 205 ОЧ 4500 реп. _Полковник тебе нужно 250 ОЧ 5000 реп. _Генерал-майор тебе нужно 275 ОЧ 6000 реп. _Генерал-лейтенант тебе нужно 300 ОЧ 7000 репутации _Генерал-полковник тебе нужно 500 ОЧ 9000 репутации " )
InitTrigger() 
TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5331, 1 , 4 )
TriggerCondition( 1, HasCredit, 500 )
TriggerCondition( 1, HasHonorPoint,1 )     --Проверка чести на медали
TriggerAction( 1, TakeHonorPoint, 1 )     --Отнятие чести с медали
TriggerAction( 1, DelRoleCredit, 500 )
TriggerAction( 1, TakeItem, 5331, 1 )
TriggerAction( 1, GiveItem, 5332, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 2, "Повыситься до Ефрейтора", MultiTrigger, GetMultiTrigger(), 1)
	
InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5332, 1 , 4 )
TriggerCondition( 1, HasCredit, 750 )
TriggerCondition( 1, HasHonorPoint,5 )     --Проверка чести на медали
TriggerAction( 1, TakeHonorPoint, 5 )     --Отнятие чести с медали
TriggerAction( 1, DelRoleCredit, 750 )
TriggerAction( 1, TakeItem, 5332, 1 )
TriggerAction( 1, GiveItem, 5333, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 2, "Повыситься до Мл.Сержанта", MultiTrigger, GetMultiTrigger(), 1)
	
InitTrigger() 
TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5333, 1 , 4 )
TriggerCondition( 1, HasCredit, 1250 )
TriggerCondition( 1, HasHonorPoint,15 )     --Проверка чести на медали
TriggerAction( 1, TakeHonorPoint, 15)     --Отнятие чести с медали
TriggerAction( 1, DelRoleCredit, 1250 )
TriggerAction( 1, TakeItem, 5333, 1 )
TriggerAction( 1, GiveItem, 5334, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 2, "Повыситься до Сержанта", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5334, 1 , 4 )
TriggerCondition( 1, HasCredit, 1250 )
TriggerCondition( 1, HasHonorPoint,25 )     --Проверка чести на медали
TriggerAction( 1, TakeHonorPoint, 25 )     --Отнятие чести с медали
TriggerAction( 1, DelRoleCredit, 1250 )
TriggerAction( 1, TakeItem, 5334, 1 )
TriggerAction( 1, GiveItem, 5335, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 2, "Повыситься до ст.Сержанта", MultiTrigger, GetMultiTrigger(), 1)
		
	
InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5335, 1 , 4 )
TriggerCondition( 1, HasCredit, 1500 )
TriggerCondition( 1, HasHonorPoint,55 )     --Проверка чести на медали
TriggerAction( 1, TakeHonorPoint, 55 )     --Отнятие чести с медали
TriggerAction( 1, DelRoleCredit, 1500 )
TriggerAction( 1, TakeItem, 5335, 1 )
TriggerAction( 1, GiveItem, 5336, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 2, "Повыситься до Старшины", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5336, 1 , 4 )
TriggerCondition( 1, HasCredit, 2000 )
TriggerCondition( 1, HasHonorPoint,75 )     --Проверка чести на медали
TriggerAction( 1, TakeHonorPoint, 75 )     --Отнятие чести с медали
TriggerAction( 1, DelRoleCredit, 2000 )
TriggerAction( 1, TakeItem, 5336, 1 )
TriggerAction( 1, GiveItem, 5337, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 2, "Повыситься до Прапорщика", MultiTrigger, GetMultiTrigger(), 1)

Text(2, "Дальше",JumpPage, 3 )



InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5337, 1 , 4 )
TriggerCondition( 1, HasCredit, 2250 )
TriggerCondition( 1, HasHonorPoint,95 )     --Проверка чести на медали
TriggerAction( 1, TakeHonorPoint, 95 )     --Отнятие чести с медали
TriggerAction( 1, DelRoleCredit, 2250 )
TriggerAction( 1, TakeItem, 5337, 1 )
TriggerAction( 1, GiveItem, 5338, 1 , 4 ) 
TriggerFailure( 1, JumpPage, 14 )
Text( 3, "Повыситься до ст.Прапорщика", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5338, 1 , 4 )
TriggerCondition( 1, HasCredit, 3250)
TriggerCondition( 1, HasHonorPoint,125 )     --Проверка чести на медали
TriggerAction( 1, TakeHonorPoint, 125 )     --Отнятие чести с медали
TriggerAction( 1, DelRoleCredit, 3250 )
TriggerAction( 1, TakeItem, 5338, 1 )
TriggerAction( 1, GiveItem, 5339, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 3, "Повыситься до Лейтенанта", MultiTrigger, GetMultiTrigger(), 1)


InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5339, 1 , 4 )
TriggerCondition( 1, HasCredit, 3500 )
TriggerCondition( 1, HasHonorPoint,145 )     --Проверка чести на медали
TriggerAction( 1, TakeHonorPoint, 145 )     --Отнятие чести с медали
TriggerAction( 1, DelRoleCredit, 3500 )
TriggerAction( 1, TakeItem, 5339, 1 )
TriggerAction( 1, GiveItem, 5340, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 3, "Повыситься до ст.Лейтенанта", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 5340, 1 , 4 )
TriggerCondition( 1, HasCredit, 4000 )
TriggerCondition( 1, HasHonorPoint,165 )     --Проверка чести на медали
TriggerAction( 1, TakeHonorPoint, 165 )     --Отнятие чести с медали
TriggerAction( 1, DelRoleCredit, 4000 )
TriggerAction( 1, TakeItem, 5340, 1 )
TriggerAction( 1, GiveItem, 3936, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 3, "Повыситься до Капитана", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 3936, 1 , 4 )
TriggerCondition( 1, HasCredit, 4250 )
TriggerCondition( 1, HasHonorPoint,185 )     --Проверка чести на медали
TriggerAction( 1, TakeHonorPoint, 185 )     --Отнятие чести с медали
TriggerAction( 1, DelRoleCredit, 4250 )
TriggerAction( 1, TakeItem, 3936, 1 )
TriggerAction( 1, GiveItem, 3937, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 3, "Повыситься до Майора", MultiTrigger, GetMultiTrigger(), 1)

Text( 3, "Дальше", JumpPage, 4)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 3937, 1 , 4 )
TriggerCondition( 1, HasCredit, 4500 )
TriggerCondition( 1, HasHonorPoint,205 )     --Проверка чести на медали
TriggerAction( 1, TakeHonorPoint, 205 )     --Отнятие чести с медали
TriggerAction( 1, DelRoleCredit, 4500 )
TriggerAction( 1, TakeItem, 3937, 1 )
TriggerAction( 1, GiveItem, 3938, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 4, "Повыситься до Подполковника", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 3938, 1 , 4 )
TriggerCondition( 1, HasCredit, 5000 )
TriggerCondition( 1, HasHonorPoint,250 )     --Проверка чести на медали
TriggerAction( 1, TakeHonorPoint, 250 )     --Отнятие чести с медали
TriggerAction( 1, DelRoleCredit, 5000 )
TriggerAction( 1, TakeItem, 3938, 1 )
TriggerAction( 1, GiveItem, 3939, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 4, "Повыситься до Полковника", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 3939, 1 , 4 )
TriggerCondition( 1, HasCredit, 6000 )
TriggerCondition( 1, HasHonorPoint,275 )     --Проверка чести на медали
TriggerAction( 1, TakeHonorPoint, 275 )     --Отнятие чести с медали
TriggerAction( 1, DelRoleCredit, 6000 )
TriggerAction( 1, TakeItem, 3939, 1 )
TriggerAction( 1, GiveItem, 3940, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 4, "Повыситься до Генерал-майора", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 3940, 1 , 4 )
TriggerCondition( 1, HasCredit, 7000 )
TriggerCondition( 1, HasHonorPoint,300 )     --Проверка чести на медали
TriggerAction( 1, TakeHonorPoint, 300 )     --Отнятие чести с медали
TriggerAction( 1, DelRoleCredit, 7000 )
TriggerAction( 1, TakeItem, 3940, 1 )
TriggerAction( 1, GiveItem, 3941, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 4, "Повыситься до Генерал-лейтенанта", MultiTrigger, GetMultiTrigger(), 1)

InitTrigger() 
 TriggerCondition( 1, HasItem, 3849, 1, 4 )
TriggerCondition( 1, HasItem, 3941, 1 , 4 )
TriggerCondition( 1, HasCredit, 9000 )
TriggerCondition( 1, HasHonorPoint,500 )     --Проверка чести на медали
TriggerAction( 1, TakeHonorPoint, 500 )     --Отнятие чести с медали
TriggerAction( 1, DelRoleCredit, 9000 )
TriggerAction( 1, TakeItem, 3941, 1 )
TriggerAction( 1, GiveItem, 3942, 1 , 4 )    
TriggerFailure( 1, JumpPage, 14 )
Text( 4, "Повыситься до Генерал-полковника", MultiTrigger, GetMultiTrigger(), 1)





Talk( 14, "У тебя недостаточно репутации или чести или ты еще не достоин этого звания." )	
end

--Туман
function r_tuman()
	Talk( 1,  "Туманный торговец: Привет! Я отношусь к гильдии исследователей. Я долго изучал древние проклятья, но потом мне прострелили колено... " )
	Text( 1, "Обмен обломков тумана", JumpPage, 2 )
	--Text( 1, "О репутации", JumpPage, 17 )
	
	Talk( 2, "Туманный торговец: я обменяю 5 обломков тумана за перчатки; 5 обломков за сапоги; 10 обломков за доспех; 10 обломков за шлем, выбирите категорию!")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 10 )
	TriggerAction( 1, GiveItem, 7791, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 2, "Шлем Туманного Воина ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "Воитель", JumpPage, 11 )
	Text( 2, "Покоритель морей", JumpPage, 12 )
	Text( 2, "Чемпион", JumpPage, 13 )
	Text( 2, "Стрелок", JumpPage, 14 )
	Text( 2, "Ведьма", JumpPage, 15 )
	Text( 2, "Целительница", JumpPage, 16 )
	Text( 2, "Назад", JumpPage, 1 )
	
	Talk( 11, "Туманный торговец: выберите нужное снаряжение туманного воина ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 10 )
	TriggerAction( 1, GiveItem, 7739, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 11, "Доспех воителя ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7738, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 11, "Перчатка воителя ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7740, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 11, "Сапог воителя ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 11, "Назад", JumpPage, 2 )	
	--
	Talk( 12, "Туманный торговец: выберите нужное снаряжение туманного воина ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 10 )
	TriggerAction( 1, GiveItem, 7751, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 12, "Доспех покорителя морей ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7750, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 12, "Перчатка покорителя морей ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7752, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 12, "Сапог покорителя морей ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 12, "Назад", JumpPage, 10 )	
	--
	Talk( 13, "Туманный торговец: выберите нужное снаряжение туманного воина ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 10 )
	TriggerAction( 1, GiveItem, 7736, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 13, "Доспех чемпиона ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7735, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 13, "Перчатка чемпиона ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7737, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 13, "Сапог чемпиона ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 13, "Назад", JumpPage, 10 )	
	--
	Talk( 14, "Туманный торговец: выберите нужное снаряжение туманного воина ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 10 )
	TriggerAction( 1, GiveItem, 7742, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 14, "Доспех стрелка ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7741, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 14, "Перчатка стрелка ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7743, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 14, "Сапог стрелка ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 14, "Назад", JumpPage, 10 )
		--
	Talk( 15, "Туманный торговец: выберите нужное снаряжение туманного воина ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 10 )
	TriggerAction( 1, GiveItem, 7748, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 15, "Доспех ведьмы ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7747, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 15, "Перчатка ведьмы ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7749, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 15, "Сапог ведьмы ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 15, "Назад", JumpPage, 10 )	
			--
	Talk( 16, "Туманный торговец: выберите нужное снаряжение туманного воина ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 10 )
	TriggerAction( 1, GiveItem, 7745, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 16, "Доспех целительницы ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7744, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 16, "Перчатка целительницы ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7792, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7792, 5 )
	TriggerAction( 1, GiveItem, 7746, 1 , 4 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 16, "Сапог целительницы ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 16, "Назад", JumpPage, 10 )
	
	--Talk( 17,  "Туманный торговец: в Темной топи за уничтожение монстров начисляется репутация: за сундуки по 30; за мини боссов по 50; за Жуткое грязилище (мейн) 150 " ) 
	Text( 17,  "Назад ", JumpPage ,1)
end
--Богоубийца

--Волнолом
function r_volnolom()

Talk( 1, "Волнолом: я обменяю 5 обломков волнолома за перчатки; 5 обломков за сапоги; 10 обломков за доспех; 10 обломков за шлем, выбирите категорию!")
		InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 10 )
	TriggerAction( 1, GiveItem, 7765, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 1, "Шлем волнолома ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "Воитель", JumpPage, 11 )
	Text( 1, "Покоритель морей", JumpPage, 12 )
	Text( 1, "Чемпион", JumpPage, 13 )
	Text( 1, "Стрелок", JumpPage, 14 )
	Text( 1, "Ведьма", JumpPage, 15 )
	Text( 1, "Целительница", JumpPage, 16 )
	--Text( 10, "Назад", JumpPage, 1 )
	
	Talk( 9, "Волнолом: у вас нет нужных предметов или инвентарь заполнен! ")
	
	Talk( 11, "Волнолом: выберите нужное снаряжение волнолома ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 10 )
	TriggerAction( 1, GiveItem, 7757, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 11, "Доспех воителя ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7756, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 11, "Перчатка воителя ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7758, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 11, "Сапог воителя ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 11, "Назад", JumpPage, 10 )	
	--
	Talk( 12, "Волнолом: выберите нужное снаряжение волнолома ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 10 )
	TriggerAction( 1, GiveItem, 7770, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 12, "Доспех покорителя морей ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7769, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 12, "Перчатка покорителя морей ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7771, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 12, "Сапог покорителя морей ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 12, "Назад", JumpPage, 10 )	
	--
	Talk( 13, "Волнолом: выберите нужное снаряжение волнолома ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 10 )
	TriggerAction( 1, GiveItem, 7754, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 13, "Доспех чемпиона ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7753, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 13, "Перчатка чемпиона ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7755, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 13, "Сапог чемпиона ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 13, "Назад", JumpPage, 10 )	
	--
	Talk( 14, "Волнолом: выберите нужное снаряжение волнолома ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 10 )
	TriggerAction( 1, GiveItem, 7760, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 14, "Доспех стрелка ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7759, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 14, "Перчатка стрелка ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7761, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 14, "Сапог стрелка ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 14, "Назад", JumpPage, 10 )
		--
	Talk( 15, "Волнолом: выберите нужное снаряжение волнолома ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 10 )
	TriggerAction( 1, GiveItem, 7767, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 15, "Доспех ведьмы ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7766, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 15, "Перчатка ведьмы ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7768, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 15, "Сапог ведьмы ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 15, "Назад", JumpPage, 10 )	
			--
	Talk( 16, "Волнолом: выберите нужное снаряжение волнолома ")
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 10 )
	TriggerAction( 1, GiveItem, 7763, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 16, "Доспех целительницы ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7762, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 16, "Перчатка целительницы ", MultiTrigger, GetMultiTrigger(), 1)
			InitTrigger()
	TriggerCondition( 1, HasItem, 7793, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 7793, 5 )
	TriggerAction( 1, GiveItem, 7764, 1 , 4 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 16, "Сапог целительницы ", MultiTrigger, GetMultiTrigger(), 1)
	Text( 16, "Назад", JumpPage, 10 )
	

end

--Священник
function wedding_npc01()
 
    Talk( 1, "Первосвященник: Добро пожаловать в Церковь. Для проведения церемонии вы должны состоять в группе со своей половинкой, иметь 10.000.000 у каждой половинке и быть в свадебном костюме..")
	Text( 1, "Начать церемонию", JumpPage, 2)
	Text( 1, "Расторгнуть брак", JumpPage, 5)

	Talk(2, "Первосвященник: Готовы ли вы связать свой союз священными узами брака?" )

	InitTrigger()
	TriggerCondition(1, Wedding)
	TriggerAction(1, JumpPage, 3)
	TriggerFailure(1, JumpPage, 4)
	Text(2, "Провести Церемонию", MultiTrigger, GetMultiTrigger(), 1)
	Text(2, "Мне надо подумать...", CloseTalk)

	Talk(3, "Первосвященник: Поздравляем Вас! Теперь Вы муж и жена!")
	Talk(4, "Первосвященник: Я не могу венчать Вас! Не все требования соблюдены!")

	Talk(5, "Первосвященник: Вы хотите расторгнуть брак? Как жаль. Вам придется за это дорого заплатить." )

	InitTrigger()
	TriggerCondition(1, WeddingStop)
	TriggerAction(1, JumpPage, 6)
	TriggerFailure(1, JumpPage, 7)
	Text(5, "Расторгнуть", MultiTrigger, GetMultiTrigger(), 1)
	Text(5, "Мне надо подумать...", CloseTalk)

	Talk(6, "Первосвященник: Ну что же, как скажите. Теперь вы разведены!")
	Talk(7, "Первосвященник: Я не могу развести вас! Не все требования соблюдены!")
end

--ОБМЕНЩИК САМОЦВЕТОВ + Комбайнер
function Npc_Mentor_01()

	Talk( 1, "Я тут нашел самоцветы, могу продать за ценные монеты, не желаешь приобрести?")
	Text( 1, "Покажи мне самоцветы! ", SendExchangeXData)
	
	--Комбинировать
	Text( 1, "Комбинировать самоцветы! ", JumpPage, 2 )
	
	Talk( 2, "Выбери самоцвет для комбинирования! Чтобы комбинировать тебе нужен Премиум камень и немного денег и самоцветы - для 2 ур 2шт. для 3 ур 4 шт. для 4 ур 8шт. для 5 ур 16шт. ")
	Text( 2, "Очищаюший самоцвет! ", JumpPage, 3 )
	Text( 2, "Сломанный самоцвет силы! ", JumpPage, 4 )
	Text( 2, "Сломанный самоцвет ловкости! ", JumpPage, 5 )
	Text( 2, "Сломанный самоцвет телосложения! ", JumpPage, 6 )
	Text( 2, "Сломанный самоцвет духа! ", JumpPage, 7 )
	Text( 2, "Сломанный самоцвет точности! ", JumpPage, 8 )
	Text( 2, "Еще ", JumpPage, 9 )
	
	Talk( 9, "Выбери самоцвет для комбинирования! Чтобы комбинировать тебе нужен Премиум камень и немного денег и самоцветы - для 2 ур 2шт. для 3 ур 4 шт. для 4 ур 8шт. для 5 ур 16шт.")
	--Text( 9, "Очищаюший самоцвет! ", JumpPage, 3 )
	Text( 9, "Треснутый самоцвет силы! ", JumpPage, 11 )
	Text( 9, "Треснутый самоцвет ловкости! ", JumpPage, 12 )
	Text( 9, "Треснутый самоцвет телосложения! ", JumpPage, 13 )
	Text( 9, "Треснутый самоцвет духа! ", JumpPage, 13 )
	Text( 9, "Треснутый самоцвет точности! ", JumpPage, 14 )
	Text( 9, "Еще ", JumpPage, 15 )
	
	Talk( 15, "Выбери самоцвет для комбинирования! Чтобы комбинировать тебе нужен Премиум камень и немного денег и самоцветы - для 2 ур 2шт. для 3 ур 4 шт. для 4 ур 8шт. для 5 ур 16шт.")
	--Text( 15, "Очищаюший самоцвет! ", JumpPage, 3 )
	Text( 15, "Неограненный самоцвет силы! ", JumpPage, 17 )
	Text( 15, "Неограненный самоцвет ловкости! ", JumpPage, 18 )
	Text( 15, "Неограненный самоцвет телосложения! ", JumpPage, 19 )
	Text( 15, "Неограненный самоцвет духа! ", JumpPage, 20 )
	Text( 15, "Неограненный самоцвет точности! ", JumpPage, 21 )
	Text( 15, "Еще ", JumpPage, 22 )
	
	Talk( 22, "Выбери самоцвет для комбинирования! Чтобы комбинировать тебе нужен Премиум камень и немного денег и самоцветы - для 2 ур 2шт. для 3 ур 4 шт. для 4 ур 8шт. для 5 ур 16шт.")
--Text( 22, "Очищаюший самоцвет! ", JumpPage, 3 )
	Text( 22, "Самоцвет силы! ", JumpPage, 23 )
	Text( 22, "Самоцвет ловкости! ", JumpPage, 24 )
	Text( 22, "Самоцвет телосложения! ", JumpPage, 25 )
	Text( 22, "Самоцвет духа! ", JumpPage, 26 )
	Text( 22, "Самоцвет точности! ", JumpPage, 27 )
	Text( 22, "Еще ", JumpPage, 28 )
	
	Talk( 28, "Выбери самоцвет для комбинирования! Чтобы комбинировать тебе нужен Премиум камень и немного денег и самоцветы - для 2 ур 2шт. для 3 ур 4 шт. для 4 ур 8шт. для 5 ур 16шт.")
	--Text( 28, "Очищаюший самоцвет! ", JumpPage, 3 )
	Text( 28, "Великий самоцвет силы! ", JumpPage, 29 )
	Text( 28, "Великий самоцвет ловкости! ", JumpPage, 30 )
	Text( 28, "Великий самоцвет телосложения! ", JumpPage, 31 )
	Text( 28, "Великий самоцвет духа! ", JumpPage, 32 )
	Text( 28, "Великий самоцвет точности! ", JumpPage, 33 )
	
	
	--Сломанные
	Text( 3, "2 уровень",FastCombiner,885,2)	-- Gem item id, level to combine
	Text( 3, "3 уровень",FastCombiner,885,3)	-- Gem item id, level to combine
	Text( 3, "4 уровень",FastCombiner,885,4)	-- Gem item id, level to combine
	Text( 3, "5 уровень",FastCombiner,885,5)	-- Gem item id, level to combine

	Text( 4, "2 уровень",FastCombiner,6826,2)	-- Gem item id, level to combine
	Text( 4, "3 уровень",FastCombiner,6826,3)	-- Gem item id, level to combine
	Text( 4, "4 уровень",FastCombiner,6826,4)	-- Gem item id, level to combine
	Text( 4, "5 уровень",FastCombiner,6826,5)	-- Gem item id, level to combine
	
	Text( 5, "2 уровень",FastCombiner,6817,2)	-- Gem item id, level to combine
	Text( 5, "3 уровень",FastCombiner,6817,3)	-- Gem item id, level to combine
	Text( 5, "4 уровень",FastCombiner,6817,4)	-- Gem item id, level to combine
	Text( 5, "5 уровень",FastCombiner,6817,5)	-- Gem item id, level to combine
	
	Text( 6, "2 уровень",FastCombiner,6823,2)	-- Gem item id, level to combine
	Text( 6, "3 уровень",FastCombiner,6823,3)	-- Gem item id, level to combine
	Text( 6, "4 уровень",FastCombiner,6823,4)	-- Gem item id, level to combine
	Text( 6, "5 уровень",FastCombiner,6823,5)	-- Gem item id, level to combine
	
	Text( 7, "2 уровень",FastCombiner,6829,2)	-- Gem item id, level to combine
	Text( 7, "3 уровень",FastCombiner,6829,3)	-- Gem item id, level to combine
	Text( 7, "4 уровень",FastCombiner,6829,4)	-- Gem item id, level to combine
	Text( 7, "5 уровень",FastCombiner,6829,5)	-- Gem item id, level to combine
	
	Text( 8, "2 уровень",FastCombiner,6820,2)	-- Gem item id, level to combine
	Text( 8, "3 уровень",FastCombiner,6820,3)	-- Gem item id, level to combine
	Text( 8, "4 уровень",FastCombiner,6820,4)	-- Gem item id, level to combine
	Text( 8, "5 уровень",FastCombiner,6820,5)	-- Gem item id, level to combine
	
	--Треснутые
	Text( 10, "2 уровень",FastCombiner,6827,2)	-- Gem item id, level to combine
	Text( 10, "3 уровень",FastCombiner,6827,3)	-- Gem item id, level to combine
	Text( 10, "4 уровень",FastCombiner,6827,4)	-- Gem item id, level to combine
	Text( 10, "5 уровень",FastCombiner,6827,5)	-- Gem item id, level to combine
	
	Text( 11, "2 уровень",FastCombiner,6818,2)	-- Gem item id, level to combine
	Text( 11, "3 уровень",FastCombiner,6818,3)	-- Gem item id, level to combine
	Text( 11, "4 уровень",FastCombiner,6818,4)	-- Gem item id, level to combine
	Text( 11, "5 уровень",FastCombiner,6818,5)	-- Gem item id, level to combine
	
	Text( 12, "2 уровень",FastCombiner,6824,2)	-- Gem item id, level to combine
	Text( 12, "3 уровень",FastCombiner,6824,3)	-- Gem item id, level to combine
	Text( 12, "4 уровень",FastCombiner,6824,4)	-- Gem item id, level to combine
	Text( 12, "5 уровень",FastCombiner,6824,5)	-- Gem item id, level to combine
	
	Text( 13, "2 уровень",FastCombiner,6830,2)	-- Gem item id, level to combine
	Text( 13, "3 уровень",FastCombiner,6830,3)	-- Gem item id, level to combine
	Text( 13, "4 уровень",FastCombiner,6830,4)	-- Gem item id, level to combine
	Text( 13, "5 уровень",FastCombiner,6830,5)	-- Gem item id, level to combine
	
	Text( 14, "2 уровень",FastCombiner,6821,2)	-- Gem item id, level to combine
	Text( 14, "3 уровень",FastCombiner,6821,3)	-- Gem item id, level to combine
	Text( 14, "4 уровень",FastCombiner,6821,4)	-- Gem item id, level to combine
	Text( 14, "5 уровень",FastCombiner,6821,5)	-- Gem item id, level to combine
	
	--Неограненные
	Text( 16, "2 уровень",FastCombiner,6828,2)	-- Gem item id, level to combine
	Text( 16, "3 уровень",FastCombiner,6828,3)	-- Gem item id, level to combine
	Text( 16, "4 уровень",FastCombiner,6828,4)	-- Gem item id, level to combine
	Text( 16, "5 уровень",FastCombiner,6828,5)	-- Gem item id, level to combine
	
	Text( 17, "2 уровень",FastCombiner,6819,2)	-- Gem item id, level to combine
	Text( 17, "3 уровень",FastCombiner,6819,3)	-- Gem item id, level to combine
	Text( 17, "4 уровень",FastCombiner,6819,4)	-- Gem item id, level to combine
	Text( 17, "5 уровень",FastCombiner,6819,5)	-- Gem item id, level to combine
	
	Text( 18, "2 уровень",FastCombiner,6825,2)	-- Gem item id, level to combine
	Text( 18, "3 уровень",FastCombiner,6825,3)	-- Gem item id, level to combine
	Text( 18, "4 уровень",FastCombiner,6825,4)	-- Gem item id, level to combine
	Text( 18, "5 уровень",FastCombiner,6825,5)	-- Gem item id, level to combine
	
	Text( 19, "2 уровень",FastCombiner,6831,2)	-- Gem item id, level to combine
	Text( 19, "3 уровень",FastCombiner,6831,3)	-- Gem item id, level to combine
	Text( 19, "4 уровень",FastCombiner,6831,4)	-- Gem item id, level to combine
	Text( 19, "5 уровень",FastCombiner,6831,5)	-- Gem item id, level to combine
	
	Text( 20, "2 уровень",FastCombiner,6822,2)	-- Gem item id, level to combine
	Text( 20, "3 уровень",FastCombiner,6822,3)	-- Gem item id, level to combine
	Text( 20, "4 уровень",FastCombiner,6822,4)	-- Gem item id, level to combine
	Text( 20, "5 уровень",FastCombiner,6822,5)	-- Gem item id, level to combine
	
	--+5
		--Неограненные
	Text( 23, "2 уровень",FastCombiner,0863,2)	-- Gem item id, level to combine
	Text( 23, "3 уровень",FastCombiner,0863,3)	-- Gem item id, level to combine
	Text( 23, "4 уровень",FastCombiner,0863,4)	-- Gem item id, level to combine
	Text( 23, "5 уровень",FastCombiner,0863,5)	-- Gem item id, level to combine
	
	Text( 24, "2 уровень",FastCombiner,0860,2)	-- Gem item id, level to combine
	Text( 24, "3 уровень",FastCombiner,0860,3)	-- Gem item id, level to combine
	Text( 24, "4 уровень",FastCombiner,0860,4)	-- Gem item id, level to combine
	Text( 24, "5 уровень",FastCombiner,0860,5)	-- Gem item id, level to combine
	
	Text( 25, "2 уровень",FastCombiner,0862,2)	-- Gem item id, level to combine
	Text( 25, "3 уровень",FastCombiner,0862,3)	-- Gem item id, level to combine
	Text( 25, "4 уровень",FastCombiner,0862,4)	-- Gem item id, level to combine
	Text( 25, "5 уровень",FastCombiner,0862,5)	-- Gem item id, level to combine
	
	Text( 26, "2 уровень",FastCombiner,1012,2)	-- Gem item id, level to combine
	Text( 26, "3 уровень",FastCombiner,1012,3)	-- Gem item id, level to combine
	Text( 26, "4 уровень",FastCombiner,1012,4)	-- Gem item id, level to combine
	Text( 26, "5 уровень",FastCombiner,1012,5)	-- Gem item id, level to combine
	
	Text( 27, "2 уровень",FastCombiner,0861,2)	-- Gem item id, level to combine
	Text( 27, "3 уровень",FastCombiner,0861,3)	-- Gem item id, level to combine
	Text( 27, "4 уровень",FastCombiner,0861,4)	-- Gem item id, level to combine
	Text( 27, "5 уровень",FastCombiner,0861,5)	-- Gem item id, level to combine
	
	
	InitExchangeX()
	ExchangeDataX(	8141	,	90	,	885	,	1	)
	ExchangeDataX(	8141	,	90	,	8613	,	1	)
	ExchangeDataX(	8142	,	2	,	8614	,	1	)
	ExchangeDataX(	8142	,	4	,	8615	,	1	)
	ExchangeDataX(	8142	,	6	,	8616	,	1	)
	ExchangeDataX(	8142	,	20	,	8617	,	1	)--+5
	ExchangeDataX	(	8141	,	99	,	8142	,	1	)--Медью->Серебро
	ExchangeDataX	(	8142	,	1	,	8141	,	99	)--Серебро->Медь
	ExchangeDataX	(	8142	,	99	,	8143	,	1	)--Серебро->Золото
	ExchangeDataX	(	8143	,	1	,	8142	,	99	)--Золото->Серебро
	
	
	
end
--Серебро
function Npc_Mentor_02()

	Talk( 1, "Я скупаю серебрянные жетоны и могу предложить кое-что интересное для тебя!")
	Text( 1, "Покажи что у тебя есть. ", SendExchangeXData)
	InitExchangeX()
--Обмен Серебра
ExchangeDataX	(	8142	,	10	,	3910	,	1	)--Хекс
ExchangeDataX	(	8142	,	5	,	3094	,	1	)--УС
ExchangeDataX	(	8142	,	5	,	3096	,	1	)--УУ
ExchangeDataX	(	8142	,	3	,	3879	,	1	)--ОТ
ExchangeDataX	(	8142	,	7	,	3883	,	1	)--ССФ
ExchangeDataX	(	8142	,	7	,	3884	,	1	)--КОФ
ExchangeDataX	(	8142	,	7	,	8551	,	1	)--
ExchangeDataX	(	8142	,	1	,	227	,	10	)--Питание фей
ExchangeDataX	(	8142	,	5	,	3075	,	1	)--Комп катализатор
ExchangeDataX	(	8142	,	3	,	3462	,	20	)--Клевер
ExchangeDataX	(	8142	,	3	,	3463	,	20	)--Кристалл
ExchangeDataX	(	8142	,	5	,	3074	,	1	)--Очищ самоцвет
ExchangeDataX	(	8142	,	1	,	8141	,	99	)--Серебро->Медь
ExchangeDataX	(	8142	,	99	,	8143	,	1	)--Серебро->Золото
ExchangeDataX	(	8143	,	1	,	8142	,	99	)--Золото->Серебро
ExchangeDataX	(	8142	,	2	,	854	,	1	)--Бабки за серебро
	

	
end
--ЗОЛОТО
function Npc_Mentor_03()

	Talk( 1, "Скупщик золота: Привет, я выкупаю и обмениваю золотые жетоны на весьма интересные вещи!")
	Text( 1, "Обменять Золотые Жетоны ", SendExchangeXData)

	InitExchangeX()
	ExchangeDataX	(	8143	,	8	,	3088	,	1	)
	ExchangeDataX	(	8143	,	8	,	3090	,	1	)
	ExchangeDataX	(	8143	,	8	,	3091	,	1	)
	ExchangeDataX	(	8143	,	8	,	3093	,	1	)
	ExchangeDataX	(	8143	,	35	,	3000	,	1	)
	ExchangeDataX	(	8143	,	5	,	8620	,	1	)
	ExchangeDataX	(	8143	,	75	,	136	,	1	)
	ExchangeDataX	(	8143	,	75	,	137	,	1	)
	ExchangeDataX	(	8143	,	75	,	138	,	1	)
	ExchangeDataX	(	8143	,	75	,	139	,	1	)
	ExchangeDataX	(	8143	,	75	,	140	,	1	)
	ExchangeDataX	(	8143	,	75	,	141	,	1	)

end
--ПЛАТИНА
function Npc_Mentor_04()

	Talk( 1, "Платиновый Наставник: Научил? Получи и распишись!")
--	Text( 1, "Обменять Платиновые Жетоны ", SendExchangeXData)

	InitExchangeX()
	ExchangeDataX(	8144	,	1	,	5708	,	1	,	1) --БД Гем(Допилить)
	--ExchangeDataX(	8144	,	2	,	2835	,	1	,	1) --Дез Шапка
	ExchangeDataX(	8144	,	2	,	8145	,	1	,	1) --Мешок с Самоцветом Азраила(допилить)

end
--МЕДЬ
function Npc_Danji()

	Talk( 1, "Привет, я обмениваю медные жетоны на красивые вещи.Надеюсь тебе понравится!")
	Text( 1, "Покажи что у тебя есть. ", SendExchangeXData)

	InitExchangeX()
--ExchangeDataX	(	8141	,	25	,	8548	,	1	)--Умения
ExchangeDataX	(	8141	,	25	,	8549	,	1	)--Фрукты
ExchangeDataX	(	8141	,	170	,	8574	,	1	)--Украшения
ExchangeDataX	(	8141	,	10	,	578	,	1	)	 --Фрукт роста фей
ExchangeDataX	(	8141	,	25	,	3152	,	10	)--Пища фей
ExchangeDataX	(	8141	,	10	,	453	,	1	)--Свиток плавки
ExchangeDataX	(	8141	,	10	,	455	,	1	)--Свиток Усиления
ExchangeDataX	(	8141	,	70	,	454	,	1	)--Катализатор
ExchangeDataX	(	8141	,	70	,	456	,	1	)--Кристалл
ExchangeDataX	(	8141	,	70	,	890	,	1	)--Стабилизатор
ExchangeDataX	(	8141	,	70	,	891	,	1	)--Катализатор
ExchangeDataX	(	8141	,	70	,	1001	,	10	)--Чертежи
ExchangeDataX	(	8141	,	60	,	1002	,	5	)
ExchangeDataX	(	8141	,	90	,	1003	,	1	)
ExchangeDataX	(	8141	,	120	,	1807	,	1	)--Парикм расп
ExchangeDataX	(	8141	,	10	,	3389	,	1	)--Искрящийся камень
ExchangeDataX	(	8141	,	10	,	3135	,	1	)--Чудомазь
ExchangeDataX	(	8141	,	99	,	8142	,	1	)--Медью->Серебро
ExchangeDataX	(	8142	,	1	,	8141	,	99	)--Серебро->Медь
	
end

--Торговец вкусностями
function r_leter1()
Talk( 1, "Румоко: Привет! У меня есть множество различных трав. Обрати внимание!" )
Text( 1, "Торг", BuyPage)
	InitTrade()
	Other(	8292	)
	Other(	8297	)
	Other(	4602	)
	Other(	4604	)
	Other(	4603	)
	Other(	3141	)
	Other(	1139	)	-- Корабельный ускоритель, 1 ур.
	Other(	1140	)	-- Распылитель кораблей 1 ур.
	Other(	1141	)	-- Корабельный пробойник 1 ур.
	Other(	1142	)	-- Таран 1 ур.
	Other(	1143	)	-- Корабельный огнемет 1 ур.
	Other(	1150	)	-- Ремонт корпуса 1 ур.
	Other(	1151	)	-- Создание еды 1 ур.
	Other(	1152	)	-- Трупная пуля 1 ур.
	Other(	2673	)	-- Генератор миража 1 ур.
	Other(	2674	)	-- Генератор иллюзий 1 ур.
	--Other(	2675	)	-- Скрытность, 1 ур.
	--Other(	2676	)	-- Радар, 1 ур.
	Other(	2677	)	-- Сцепленные пули 1 ур.
	--Other(	2678	)	-- Водяная мина, 1 ур.

end
--Глава лагеря(рассказ о лагере) + банк
function r_leter2()
Talk( 1, "Грифин: Я тут главный, если будут какие-то вопросы - обращайся. У нас последнее время не так уж и много гостей, расскажешь нам о новостя" )

Text( 1, "Расскажи об этом месте", JumpPage, 3)

Talk( 3, "Грифин: Нас забросили сюда словно на каторгу, мы поддерживаем безопасность лагеря, дальше по туннелям ходили только путники, и не многие оттуда вернулись, так что будет осторожен. Те кто вернулись говорили там дальше сложные туннели в которых можно заблудится и множество опасных животных.. Торуль ничего не говорил кроме своего имени, а Румоко у нас отвечает за сбор продовольствия и медикаменты. " )


InitTrigger()
TriggerCondition( 1, HasMoney, 1 )
TriggerAction( 1, TakeMoney, 1 )
TriggerAction( 1, OpenBank )
TriggerFailure( 1, JumpPage, 2 )
Text( 1, "Хранилище (плата 1 зол.)", MultiTrigger, GetMultiTrigger(), 1)
Text( 1, "Купить билет", BuyPage)
	
	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
Talk( 2, "Извини, похоже, у тебя не хватает денег" )


end
--Кузнец 
function r_leter3()
	local ReSelectTalk = "Я передумал "
	local ReSelectPage = 1

	local CancelSelectTalk = "Забудь, я останусь тут "
	local CancelSelectPage = 2

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "darkblue"
	
	local GoTo01X = 2232
	local GoTo01Y = 2787
	local GoTo01M = CurMapName1
	
	local GoTo04X = 898
	local GoTo04Y = 3650
	local GoTo04M = CurMapName2
	
	local GoTo07X = 1316
	local GoTo07Y = 536
	local GoTo07M = CurMapName3

	
	
	Talk( 1, "Посыльная Кары - Рил: богиня Кара приветствую тебя странник, я могу тебе помочь? " )
	Text( 1, "Где я? ", JumpPage, 4 )
	Text( 1, "Кто я? ", JumpPage, 5 )
	Text( 1, "Отправиться в столицу Аскарона ", JumpPage, 3 )
	--Text( 1, "Отправиться в Ледынь ", JumpPage, 6 )
	--Text( 1, "Отправиться в Шайтан ", JumpPage, 7 )
	Text( 1, "Уйти ", CloseTalk)
	
	Talk( 2, "Найди меня, если потребуется помощь ", CloseTalk )
	
	Talk( 3, "Переместиться в Аргент? Стоимость перемещения 20000 золотых. Для игроков ниже 10 уровня бесплатно. " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, SetSpawnPos, "Аргент")
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetSpawnPos, "Аргент")
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 6)
	Text( 3, "Перейти ", MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 6, "Переместиться в Ледынь? Стоимость перемещения 20000 золотых. Для игроков ниже 10 уровня бесплатно. " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, SetSpawnPos, "Ледынь")
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetSpawnPos, "Ледынь")
	TriggerAction( 2,  GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 2, JumpPage, 6)
	Text( 6, "Перейти ", MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 6, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 7, "Переместиться в Шайтан? Стоимость перемещения 20000 золотых. Для игроков ниже 10 уровня бесплатно. " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, SetSpawnPos, "Шайтан")
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetSpawnPos, "Шайтан")
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 6)
	Text( 7, "Перейти ", MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 7, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk(4, "Посыльная Кары - Рил: аха-ха уже испугались? Вы на острове-распредилители новичковВ зависимости от выбранного сервера вы сможете переместиться в доступные основные локации. Сейчас вы находитесь на сервер Chaos и для вас доступны три локации  - Аргент, Шайтан, Ледынь ")
	Text(4, "Хорошо, я понял. ", CloseTalk)
	
	Talk(5, "Посыльная Кары - Рил: вы новичок, а по-простому салага. После перемещения в основную локацию рекомендую посетить наставницу новичков, она обычно находится у центрального фонтана города. ")
	Text(5, "Хорошо, я понял. ", CloseTalk)
	
	Talk( 6, "Прости, но у тебя недостаточно денег для перемещения " )
	Text( 6, "Я понял ", CloseTalk )
end

--Торговец Рил
function torg_talk02()
	Talk(1, "Торговец: Нам срочно необходимы некоторые предметы, вдруг у тебя найдется что нибудь что нас заинтересует")
	Text(1, "Обменяться", SendExchangeData2 )

	InitExchange2()
	DoExchange2()

	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()


end

--Торговец Понс
function torg_talk03()
	Talk(1, "Торговец: Нам срочно необходимы некоторые предметы, вдруг у тебя найдется что нибудь, что нас заинтересует")
	Text(1, "Обменяться", SendExchangeData4 )

	InitExchange4()
	DoExchange4()
InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	

end

--Торговец Майлада
function torg_talk04()
	Talk(1, "Майлада: Я скупаю ненужный для вас хлам, у тебя есть что нибудь интересное?")
	Text( 1, "Обмен", SendExchangeData3)


	InitExchange3()
	DoExchange3()
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	
end

--Марго Торговка
function new_talk08 ()
	Talk(1, "Марго: У вас может быть то что меня заинтересует? Покажи скорей")

	Text( 1, "Обмен", SendExchangeData5)

	InitExchange5()
	DoExchange5()
InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

end



--Портальщик Нубо локи
function Cr_talk011 ()
	local ReSelectTalk = "Я передумал "
	local ReSelectPage = 1

	local CancelSelectTalk = "Забудь, я останусь тут "
	local CancelSelectPage = 2

	local CurMapName1 = "garner"
	local CurMapName2 = "magicsea"
	local CurMapName3 = "darkblue"
	
	local GoTo01X = 2232
	local GoTo01Y = 2787
	local GoTo01M = CurMapName1
	
	local GoTo04X = 898
	local GoTo04Y = 3650
	local GoTo04M = CurMapName2
	
	local GoTo07X = 1316
	local GoTo07Y = 536
	local GoTo07M = CurMapName3

	
	
	Talk( 1, "Посыльная Кары - Рил: богиня Кара приветствую тебя странник, я могу тебе помочь? " )
	Text( 1, "Где я? ", JumpPage, 4 )
	Text( 1, "Кто я? ", JumpPage, 5 )
	Text( 1, "Отправиться в столицу Аскарона ", JumpPage, 3 )
	--Text( 1, "Отправиться в Ледынь ", JumpPage, 6 )
	--Text( 1, "Отправиться в Шайтан ", JumpPage, 7 )
	Text( 1, "Уйти ", CloseTalk)
	
	Talk( 2, "Найди меня, если потребуется помощь ", CloseTalk )
	
	Talk( 3, "Переместиться в Аргент? Стоимость перемещения 2000 золотых. Для игроков ниже 10 уровня бесплатно. " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, SetSpawnPos, "Аргент")
	TriggerAction( 1, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetSpawnPos, "Аргент")
	TriggerAction( 2, GoTo, GoTo01X, GoTo01Y, GoTo01M )
	TriggerFailure( 2, JumpPage, 6)
	Text( 3, "Перейти ", MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 3, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 6, "Переместиться в Ледынь? Стоимость перемещения 2000 золотых. Для игроков ниже 10 уровня бесплатно. " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, SetSpawnPos, "Ледынь")
	TriggerAction( 1, GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetSpawnPos, "Ледынь")
	TriggerAction( 2,  GoTo, GoTo07X, GoTo07Y, GoTo07M )
	TriggerFailure( 2, JumpPage, 6)
	Text( 6, "Перейти ", MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 6, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk( 7, "Переместиться в Шайтан? Стоимость перемещения 20000 золотых. Для игроков ниже 10 уровня бесплатно. " )
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, SetSpawnPos, "Шайтан")
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetSpawnPos, "Шайтан")
	TriggerAction( 1, GoTo, GoTo04X, GoTo04Y, GoTo04M )
	TriggerFailure( 2, JumpPage, 6)
	Text( 7, "Перейти ", MultiTrigger, GetMultiTrigger(), 2 ) 
	Text( 7, CancelSelectTalk, JumpPage , CancelSelectPage )
	
	Talk(4, "Посыльная Кары - Рил: аха-ха уже испугались? Вы на острове-распредилители новичковВ зависимости от выбранного сервера вы сможете переместиться в доступные основные локации. Сейчас вы находитесь на сервер Chaos и для вас доступны три локации  - Аргент, Шайтан, Ледынь ")
	Text(4, "Хорошо, я понял. ", CloseTalk)
	
	Talk(5, "Посыльная Кары - Рил: вы новичок, а по-простому салага. После перемещения в основную локацию рекомендую посетить наставницу новичков, она обычно находится у центрального фонтана города. ")
	Text(5, "Хорошо, я понял. ", CloseTalk)
	
	Talk( 6, "Прости, но у тебя недостаточно денег для перемещения " )
	Text( 6, "Я понял ", CloseTalk )
end



function r_tower()
	Talk( 1, "Диспетчер башень: У меня ты можешь построить башни для обороны своей базы, стоимость - 10 [Ресурс Базы] " )
	Text( 1, "Построить башню ", JumpPage, 3 )
	Text( 1, "Уйти ", CloseTalk )

	Talk( 3, "Диспетчер башень: Выбирай с какой стороны строить башню!")

	InitTrigger()
	TriggerCondition( 1, HasItem, 7195, 10 )
	TriggerAction( 1, TakeItem, 7195, 10 )
	TriggerAction( 1, attack_tower, 1, 1 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 3, "Слева ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 7195, 10 )
	TriggerAction( 1, TakeItem, 7195, 10 )
	TriggerAction( 1, attack_tower, 1, 2 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 3, "Справа ", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 4, "У тебя нету необходимых вещей для обмена, или твой инвентарь заблокирован " )
	Text( 4, "Назад ", JumpPage, 1) 
end

function r_songwar()
	Talk( 1, "Воин Песни Войны: Приветствую дорогой друг, нам требуется помощь в Ущельи Песни Войны чтобы отбить нашу базу от варваров, регистрируйся и помоги нам. [Во время BETA награды не начисляются!!!]" )
	Text( 1, "Встать в очередь ", enter_songwar )
	Text( 1, "Уйти ", CloseTalk )
end

function r_revive_song()
	Talk( 1, "Ангел Спаситель: Тебе требуется помощь? Мои услуги стоят очень скромно, всего 300.000 и я возвращу тебя с того света. " )
	Text( 1, "Воскреснуть ", revive_songwar )
	Text( 1, "Уйти ", CloseTalk )
end


--Странствующий торговец
function new_talk10 ()
	Talk( 1, "Странствующий торговец: Привет, ты такой же путник как и я? Тогда я могу тебе кое что предложить. Посмотри какие товары у меня есть." )
--	Text( 1, "Приобрести", BuyPage )


	InitTrade()
	Other(	1139	)	-- Корабельный ускоритель, 1 ур.
	Other(	1140	)	-- Распылитель кораблей 1 ур.
	Other(	1141	)	-- Корабельный пробойник 1 ур.
	Other(	1142	)	-- Таран 1 ур.
	Other(	1143	)	-- Корабельный огнемет 1 ур.
	Other(	1150	)	-- Ремонт корпуса 1 ур.
	Other(	1151	)	-- Создание еды 1 ур.
	Other(	1152	)	-- Трупная пуля 1 ур.
	Other(	2673	)	-- Генератор миража 1 ур.
	Other(	2674	)	-- Генератор иллюзий 1 ур.
	--Other(	2675	)	-- Скрытность, 1 ур.
	--Other(	2676	)	-- Радар, 1 ур.
	Other(	2677	)	-- Сцепленные пули 1 ур.
	--Other(	2678	)	-- Водяная мина, 1 ур.



	Talk( 2, "Странствующий торговец: Мая твая не панимать!" )

	InitTrigger()
	TriggerCondition( 1, HasRecord, 330 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, NoRecord, 330 )
	TriggerAction( 2, JumpPage, 2 )
	Start( GetMultiTrigger(), 2 )

end


--Тестовый
function qqqwe()
	Talk( 1, "Тестер: Привет, хочешь закупиться?." )	
	Text( 1, "Приобрести", BuyPage )
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, AddMoney, 10000000 )
	Text( 1, "Получить много денег за эльфийский фрукт",MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 8141, 99, 4 )
	TriggerAction( 1, GiveItem, 8142, 99, 4 )
	TriggerAction( 1, GiveItem, 8143, 99, 4 )
	Text( 1, "Получить жетоны за эльфийский фрукт",MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 2941, 1, 4 )
	Text( 1, "Получить перерождение за эльфийский фрукт",MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 2729, 5, 4 )
	Text( 1, "Получить мешок с песком за эльфийский фрукт",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 3422, 5, 4 )
	Text( 1, "Получить анс 45 за эльфийский фрукт",MultiTrigger, GetMultiTrigger(), 1)
	
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 3423, 5, 4 )
	Text( 1, "Получить анс 55 за эльфийский фрукт",MultiTrigger, GetMultiTrigger(), 1)
	
	Text( 1, "Покажи еще", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 3424, 5, 4 )
	Text( 1, "Получить анс 65 за эльфийский фрукт",MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 1134, 5, 4 )
	Text( 2, "Получить ХС сет эльфийский фрукт",MultiTrigger, GetMultiTrigger(), 1)
		InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 8597, 5, 4 )
	Text( 2, "Получить новый сет 53 эльфийский фрукт",MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 8598, 5, 4 )
	Text( 2, "Получить новый сет 57 эльфийский фрукт",MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3116, 1 )
	TriggerAction( 1, GiveItem, 8599, 5, 4 )
	Text( 2, "Получить новый сет 63 эльфийский фрукт",MultiTrigger, GetMultiTrigger(), 1)
	
		

	
	InitTrade()
	--1 строчка
	Weapon(	8562	)
	Weapon(	8529	)
	Weapon(	1020	)
	Weapon(	890	)
	Weapon(	891	)
	Weapon(	849	)--Фрукт опыта отряда
	Weapon(	3097	)--усилитель удачи
	Weapon(	3096	)-- Усилитель удачи
	Weapon(	3095	)--усилитель стремлений
	--2 строчка
	Weapon(	3844	)-- ня
	Weapon(	3845	)-- зя
	Weapon(	3846	) -- Кукла вуду
	Weapon(	3105	)--Зелье скольжения
	--3 строчка
	Weapon(	3088	)--Рюкзак с 30 ячейками
	Weapon(	3090	)--Рюкзак
	Weapon(	3091	)--Рюкзак
	Weapon(	3093	)--Рюкзак
	--4 строчка
	--для скилов
	Weapon(	3462	) -- Магический клевер
	Weapon(	3463	) -- Ледяной кристалл
	Weapon(	3300	) -- Сильная магия
	Weapon(	3301	) -- Кристальное благословение
	--сбросы
	Weapon(	3109	) -- сбросы статов
	Weapon(	3110	) -- сбросы статов
	Weapon(	3111	) -- сбросы статов
	Weapon(	3112	) -- сбросы статов
	Weapon(	3113	) -- сбросы статов
	Weapon(	1024	)--Перезаряжаемая супербатарея
	
	Other(	1139	)	-- Корабельный ускоритель, 1 ур.
	Other(	1140	)	-- Распылитель кораблей 1 ур.
	Other(	1141	)	-- Корабельный пробойник 1 ур.
	Other(	1142	)	-- Таран 1 ур.
	Other(	1143	)	-- Корабельный огнемет 1 ур.
	Other(	1150	)	-- Ремонт корпуса 1 ур.
	Other(	1151	)	-- Создание еды 1 ур.
	Other(	1152	)	-- Трупная пуля 1 ур.
	Other(	2673	)	-- Генератор миража 1 ур.
	Other(	2674	)	-- Генератор иллюзий 1 ур.
	Other(	2675	)	-- Скрытность, 1 ур.
	Other(	2676	)	-- Радар, 1 ур.
	Other(	2677	)	-- Сцепленные пули 1 ур.
	Other(	2678	)	-- Водяная мина, 1 ур.
	
	Weapon(	4604	)--Билет до Ледыни
	Weapon(	4603	)--Билет до Шайтана
	Weapon(	4602	)--Билет до Аргента
	Weapon(	3141	)--Обратный билет
	Weapon(	3076	)--Пропуск в Весноград
	Weapon(	3048	)--Пропуск в Громоград
	Weapon(	0563	)--Пропуск на остров Лета
	Weapon(	0583	)--Пропуск на остров Осени
	Weapon(	3049	)--Следуй в порт Громограда
	Weapon(	3050	)--Пропуск к Священной Снежной горе
	Weapon(	3051	)--Пропуск в Андийский лес
	Weapon(	3052	)--Пропуск в Оазис
	Weapon(	3053	)--Пропуск к Ледяному шипу
	Weapon(	2445	)--Билет в карибское путешествие	
	Weapon(	3054	)--Пропуск в Одинокую башню
	Weapon(	3059	)--Билет в Одинокую башню 2
    Weapon(	3060	)--Пропуск в Одинокую башню 3
	Weapon(	3070	)--
	Weapon(	3071	)--
	Weapon(	3072	)--
	Weapon(	8605	)--
	Weapon(	8606	)--
	Weapon(	8607	)--
	Weapon(	8608	)--
	Weapon(	8609	)--
	Weapon(	8610	)--
	Weapon(	8611	)--
	
	Defence(	8535	)
	Defence(	8574	)
	Defence(	8562	)
	Defence(	8548	)
	Defence(	8549	)
	Defence(	8551	)
	Defence(	8300	)
	Defence(	0262	)
	Defence(	1016	)
	
	Defence(	8546	)
	Defence(	7753	)
	Defence(	7754	)
	Defence(	7755	)
	Defence(	7756	)
	Defence(	7757	)
	Defence(	8577	)
	Defence(	453	)
	Defence(	455	)
	
end

function xmas_0706()
--	Talk( 1, "Аппарели: Заебали блять, суки ебаные НПС!")
--	Text( 1, "Приобрести", BuyPage )

	InitTrade()
	Weapon(	6417	)
	Weapon(	6418	)
	Weapon(	6419	)
	Weapon(	6420	)
	Weapon(	6421	)
	Weapon(		)
	Weapon(		)
	Weapon(		)
	Weapon(	6422	)
	Weapon(	6423	)
	Weapon(	6424	)
	Weapon(	6425	)
	Weapon(	6426	)
	Weapon(		)
	Weapon(		)
	Weapon(		)
	Weapon(	6427	)
	Weapon(	6428	)
	Weapon(	6429	)
	Weapon(	6430	)
	Weapon(	6431	)
	Weapon(		)
	Weapon(		)
	Weapon(		)
	Weapon(	6432	)
	Weapon(	6433	)
	Weapon(	6434	)
	Weapon(	6435	)
	Weapon(	6436	)
	Weapon(		)
	Weapon(		)
	Weapon(		)
	Weapon(	6437	)
	Weapon(	6438	)
	Weapon(	6439	)
	Weapon(	6440	)
	Weapon(	6441	)
	Weapon(		)
	Weapon(		)
	Weapon(		)
	Weapon(	6442	)
	Weapon(	6443	)
	Weapon(	6444	)
	Weapon(	6445	)
	Weapon(	6446	)
	Weapon(		)
	Weapon(		)
	Weapon(		)
	Weapon(	6447	)
	Weapon(	6448	)
	Weapon(	6449	)
	Weapon(	6450	)
	Weapon(	6451	)
	Weapon(	6452	)
	Weapon(	6453	)
	Weapon(	6454	)
	Weapon(	6463	)
	Weapon(	6464	)
	Weapon(	6465	)
	Weapon(	6466	)
	Weapon(	6471	)
	Weapon(	6472	)
	Weapon(	6473	)
	Weapon(	6474	)
	Weapon(	5616	)
	Weapon(	5617	)
	Weapon(	5618	)
	Weapon(	5619	)
	Weapon(	6475	)
	Weapon(	6476	)
	Weapon(	6477	)
	Weapon(	6478	)
	Weapon(	6499	)
	Weapon(	6500	)
	Weapon(	6501	)
	Weapon(	6502	)
	Weapon(	5138	)
	Weapon(	5139	)
	Weapon(	5140	)
	Weapon(	5414	)
	Weapon(	5134	)
	Weapon(	5135	)
	Weapon(	5136	)
	Weapon(	5137	)
	Weapon(	5130	)
	Weapon(	5131	)
	Weapon(	5132	)
	Weapon(	5133	)
	Weapon(	5020	)
	Weapon(	5024	)
	Weapon(	5032	)
	Weapon(	5037	)
	Weapon(	5016	)
	Weapon(	5028	)
	Weapon(	5036	)
	Weapon(		)
	Defence(	5260	)
	Defence(	5261	)
	Defence(	5262	)
	Defence(	5263	)
	Defence(	5248	)
	Defence(	5249	)
	Defence(	5250	)
	Defence(	5251	)
	Defence(	5256	)
	Defence(	5257	)
	Defence(	5258	)
	Defence(	5259	)
	Defence(	5244	)
	Defence(	5245	)
	Defence(	5246	)
	Defence(	5247	)
	Defence(	5252	)
	Defence(	5253	)
	Defence(	5254	)
	Defence(	5255	)
	Defence(	5191	)
	Defence(	5192	)
	Defence(	5193	)
	Defence(	5194	)
	Defence(	5187	)
	Defence(	5188	)
	Defence(	5189	)
	Defence(	5190	)
	Defence(	5183	)
	Defence(	5184	)
	Defence(	5185	)
	Defence(	5186	)
	Defence(	5179	)
	Defence(	5180	)
	Defence(	5181	)
	Defence(		)
	Defence(	5175	)
	Defence(	5177	)
	Defence(	5178	)
	Defence(		)
	Defence(	5428	)
	Defence(	5429	)
	Defence(	5430	)
	Defence(	5431	)
	Defence(	5416	)
	Defence(	5418	)
	Defence(	5417	)
	Defence(		)
	Defence(	5419	)
	Defence(	5420	)
	Defence(	5421	)
	Defence(		)
	Defence(	5400	)
	Defence(	5401	)
	Defence(	5402	)
	Defence(	5403	)
	Defence(	5514	)
	Defence(	5515	)
	Defence(	5516	)
	Defence(		)
	Defence(	5517	)
	Defence(	5518	)
	Defence(	5519	)
	Defence(		)
	Defence(	5646	)
	Defence(	5647	)
	Defence(	5648	)
	Defence(	5649	)
	Defence(	5986	)
	Defence(	5987	)
	Defence(	5988	)
	Defence(	5989	)
	Defence(	5974	)
	Defence(	5975	)
	Defence(	5976	)
	Defence(	5977	)
	Defence(	5982	)
	Defence(	5983	)
	Defence(	5984	)
	Defence(	5985	)
	Defence(	5913	)
	Defence(	5914	)
	Defence(	5915	)
	Defence(	5916	)
	Defence(	6378	)
	Defence(	6379	)
	Defence(	6380	)
	Defence(	6381	)
	Defence(	6382	)
	Defence(	6383	)
	Defence(	6384	)
	Defence(	6385	)
	Defence(	6455	)
	Defence(	6456	)
	Defence(	6457	)
	Defence(	6458	)
	Defence(	5015	)
	Defence(	5023	)
	Defence(	5031	)
	Defence(		)
	Other(	5019	)
	Other(	5027	)
	Other(	5035	)
	Other(		)
	Other(	5084	)
	Other(	5085	)
	Other(	5086	)
	Other(		)
	Other(	5087	)
	Other(	5088	)
	Other(	5089	)
	Other(		)
	Other(	5090	)
	Other(	5091	)
	Other(	5092	)
	Other(		)
	Other(	5093	)
	Other(	5094	)
	Other(	5095	)
	Other(		)
	Other(	5096	)
	Other(	5097	)
	Other(	5098	)
	Other(		)
	Other(	5142	)
	Other(	5143	)
	Other(	5144	)
	Other(	5145	)
	Other(	5146	)
	Other(	5147	)
	Other(	5148	)
	Other(	5149	)
	Other(	5150	)
	Other(	5151	)
	Other(	5152	)
	Other(	5153	)
	Other(	5172	)
	Other(	5173	)
	Other(	5474	)
	Other(		)
	Other(	5396	)
	Other(	5397	)
	Other(	5398	)
	Other(	5399	)
	Other(	5426	)
	Other(	5427	)
	Other(	5438	)
	Other(		)
	Other(	5909	)
	Other(	5910	)
	Other(	5911	)
	Other(	5912	)
	Other(	6358	)
	Other(	6359	)
	Other(	6360	)
	Other(	6361	)
	Other(	6367	)
	Other(	6368	)
	Other(	6369	)
	Other(		)
	Other(	6370	)
	Other(	6371	)
	Other(	6372	)
	Other(	6373	)
	Other(	6374	)
	Other(	6375	)
	Other(	6376	)
	Other(	6377	)
	Other(	6483	)
	Other(	6484	)
	Other(	6485	)
	Other(	6486	)
	Other(	6495	)
	Other(	6496	)
	Other(	6497	)
	Other(	6498	)
	Other(	5014	)
	Other(	5022	)
	Other(	5030	)
	Other(		)
	Other(	5018	)
	Other(	5026	)
	Other(	5034	)
	Other(		)
	Other(	5107	)
	Other(	5108	)
	Other(	5109	)
	Other(		)
	Other(	5110	)
	Other(	5111	)
	Other(	5112	)
	Other(	5113	)
	Other(	5115	)
	Other(	5116	)
	Other(	5117	)
	Other(		)
	Other(	5163	)
	Other(	5164	)
	Other(	5165	)
	Other(		)
end

function xmas_0707()
--	Talk( 1, "Аппарели: Заебали блять, суки ебаные НПС!")
--	Text( 1, "Приобрести", BuyPage )

	InitTrade()
	Weapon(	5521	)
	Weapon(	5522	)
	Weapon(	5523	)
	Weapon(	5524	)
	Weapon(	5529	)
	Weapon(	5530	)
	Weapon(	5531	)
	Weapon(	5532	)
	Weapon(	5533	)
	Weapon(	5534	)
	Weapon(	5535	)
	Weapon(	5536	)
	Weapon(	5537	)
	Weapon(	5538	)
	Weapon(	5539	)
	Weapon(	5540	)
	Weapon(	5541	)
	Weapon(	5542	)
	Weapon(	5543	)
	Weapon(	5544	)
	Weapon(	5545	)
	Weapon(	5546	)
	Weapon(	5547	)
	Weapon(	5548	)
	Weapon(	5549	)
	Weapon(	5550	)
	Weapon(	5551	)
	Weapon(	5552	)
	Weapon(	5553	)
	Weapon(	5554	)
	Weapon(	5555	)
	Weapon(	5556	)
	Weapon(	5557	)
	Weapon(	5558	)
	Weapon(	5559	)
	Weapon(	5560	)
	Weapon(	5561	)
	Weapon(	5562	)
	Weapon(	5563	)
	Weapon(	5564	)
	Weapon(	5565	)
	Weapon(	5566	)
	Weapon(	5567	)
	Weapon(	5568	)
	Weapon(	5569	)
	Weapon(	5570	)
	Weapon(	5571	)
	Weapon(	5572	)
	Weapon(	5573	)
	Weapon(	5574	)
	Weapon(	5575	)
	Weapon(	5576	)
	Weapon(	5577	)
	Weapon(	5578	)
	Weapon(	5579	)
	Weapon(	5580	)
	Weapon(	5581	)
	Weapon(	5582	)
	Weapon(	5583	)
	Weapon(	5584	)
	Weapon(	5585	)
	Weapon(	5586	)
	Weapon(	5587	)
	Weapon(	5588	)
	Weapon(	5589	)
	Weapon(	5590	)
	Weapon(	5591	)
	Weapon(	5592	)
	Weapon(	5593	)
	Weapon(	5594	)
	Weapon(	5595	)
	Weapon(	5596	)
	Weapon(	5601	)
	Weapon(	5602	)
	Weapon(	5603	)
	Weapon(	5604	)
	Weapon(	5605	)
	Weapon(	5606	)
	Weapon(	5607	)
	Weapon(	5608	)
	Weapon(	5632	)
	Weapon(	5633	)
	Weapon(	5634	)
	Weapon(	5635	)
	Weapon(	5628	)
	Weapon(	5629	)
	Weapon(	5630	)
	Weapon(	5631	)
	Weapon(	5636	)
	Weapon(	5637	)
	Weapon(	5638	)
	Weapon(	5639	)
	Defence(	5640	)
	Defence(	5641	)
	Defence(	5642	)
	Defence(	5643	)
	Defence(	5651	)
	Defence(	5652	)
	Defence(	5653	)
	Defence(	5634	)
	Defence(	5655	)
	Defence(	5656	)
	Defence(	5657	)
	Defence(	5658	)
	Defence(	5659	)
	Defence(	5660	)
	Defence(		)
	Defence(		)
	Defence(	5661	)
	Defence(	5662	)
	Defence(	5663	)
	Defence(	5664	)
	Defence(	5665	)
	Defence(	5666	)
	Defence(	5667	)
	Defence(	5668	)
	Defence(	5669	)
	Defence(	5670	)
	Defence(	5671	)
	Defence(	5672	)
	Defence(	5673	)
	Defence(	5674	)
	Defence(	5675	)
	Defence(	5676	)
	Defence(	5677	)
	Defence(	5678	)
	Defence(	5679	)
	Defence(	5680	)
	Defence(	5681	)
	Defence(	5682	)
	Defence(	5683	)
	Defence(	5684	)
	Defence(	5685	)
	Defence(	5686	)
	Defence(	5687	)
	Defence(	5688	)
	Defence(	5689	)
	Defence(	5690	)
	Defence(	5691	)
	Defence(	5692	)
	Defence(	5726	)
	Defence(	5727	)
	Defence(	5728	)
	Defence(	5729	)
	Defence(	5730	)
	Defence(	5731	)
	Defence(	5732	)
	Defence(	5733	)
	Defence(	5734	)
	Defence(	5735	)
	Defence(	5736	)
	Defence(	5737	)
	Defence(	5738	)
	Defence(	5739	)
	Defence(	5740	)
	Defence(	5741	)
	Defence(	5742	)
	Defence(	5743	)
	Defence(	5744	)
	Defence(	5745	)
	Defence(	5746	)
	Defence(	5747	)
	Defence(	5748	)
	Defence(	5749	)
	Defence(	5850	)
	Defence(	5851	)
	Defence(	5852	)
	Defence(	5853	)
	Defence(	5854	)
	Defence(	5855	)
	Defence(	5856	)
	Defence(	5857	)
	Defence(	5898	)
	Defence(	5899	)
	Defence(	5900	)
	Defence(	5901	)
	Defence(	6503	)
	Defence(	6504	)
	Defence(	6505	)
	Defence(	6506	)
	Defence(	5905	)
	Defence(	5906	)
	Defence(	5907	)
	Defence(	5908	)
	Defence(	5918	)
	Defence(	5919	)
	Defence(	5920	)
	Defence(	5921	)
	Defence(	5922	)
	Defence(	5923	)
	Defence(	5924	)
	Defence(	5925	)
	Other(	5926	)
	Other(	5927	)
	Other(	5928	)
	Other(	5929	)
	Other(	5930	)
	Other(	5931	)
	Other(	5932	)
	Other(	5933	)
	Other(	5934	)
	Other(	5935	)
	Other(	5936	)
	Other(	5937	)
	Other(	5938	)
	Other(	5939	)
	Other(	5940	)
	Other(		)
	Other(	5941	)
	Other(	5942	)
	Other(	5943	)
	Other(		)
	Other(	5944	)
	Other(	5962	)
	Other(	5963	)
	Other(	5964	)
	Other(	5945	)
	Other(	5946	)
	Other(	5947	)
	Other(	5948	)
	Other(	5953	)
	Other(	5954	)
	Other(	5955	)
	Other(	5956	)
	Other(	5957	)
	Other(	5958	)
	Other(	5959	)
	Other(	5960	)
	Other(	5965	)
	Other(	5966	)
	Other(	5967	)
	Other(	5968	)
	Other(	5970	)
	Other(	5971	)
	Other(	5972	)
	Other(	5973	)
	Other(	5978	)
	Other(	5979	)
	Other(	5980	)
	Other(	5981	)
	Other(	5992	)
	Other(	5993	)
	Other(	5994	)
	Other(		)
	Other(	6350	)
	Other(	6351	)
	Other(	5352	)
	Other(	6353	)
	Other(	6354	)
	Other(	6355	)
	Other(	6356	)
	Other(	6357	)
	Other(	6362	)
	Other(	6363	)
	Other(	6364	)
	Other(	6365	)
	Other(	6366	)
	Other(		)
	Other(		)
	Other(		)
	Other(	6386	)
	Other(	6387	)
	Other(	6388	)
	Other(	6389	)
	Other(	6395	)
	Other(	6396	)
	Other(	6397	)
	Other(		)
	Other(	6398	)
	Other(	6399	)
	Other(	6400	)
	Other(	6401	)
	Other(	6403	)
	Other(	6404	)
	Other(	6405	)
	Other(	6406	)
	Other(	6408	)
	Other(	6409	)
	Other(	6410	)
	Other(		)
	Other(	6411	)
	Other(		)
	Other(	6412	)
	Other(	6413	)
	Other(	6414	)
	Other(	6415	)
	Other(	6416	)
end

function xmas_0708()
--	Talk( 1, "Аппарели: Заебали блять, суки ебаные НПС!")
--	Text( 1, "Приобрести", BuyPage )

	InitTrade()
	Weapon(	5041	)
	Weapon(	5045	)
	Weapon(	5049	)
	Weapon(		)
	Weapon(	5042	)
	Weapon(	5046	)
	Weapon(	5050	)
	Weapon(		)
	Weapon(	5043	)
	Weapon(	5047	)
	Weapon(	5051	)
	Weapon(		)
	Weapon(	5044	)
	Weapon(	5048	)
	Weapon(	5052	)
	Weapon(	5056	)
	Weapon(	5057	)
	Weapon(	5061	)
	Weapon(	5065	)
	Weapon(		)
	Weapon(	5058	)
	Weapon(	5062	)
	Weapon(	5066	)
	Weapon(		)
	Weapon(	5059	)
	Weapon(	5069	)
	Weapon(	5067	)
	Weapon(		)
	Weapon(	5060	)
	Weapon(	5064	)
	Weapon(	5068	)
	Weapon(	5069	)
	Weapon(		)
	Weapon(	5075	)
	Weapon(	5076	)
	Weapon(	5077	)
	Weapon(		)
	Weapon(	5081	)
	Weapon(	5082	)
	Weapon(	5083	)
	Weapon(	5118	)
	Weapon(	5119	)
	Weapon(	5120	)
	Weapon(	5121	)
	Weapon(	5127	)
	Weapon(	5128	)
	Weapon(	5129	)
	Weapon(		)
	Weapon(	5154	)
	Weapon(	5155	)
	Weapon(	5156	)
	Weapon(		)
	Weapon(	5166	)
	Weapon(	5167	)
	Weapon(	5168	)
	Weapon(		)
	Weapon(	5157	)
	Weapon(	5158	)
	Weapon(	5159	)
	Weapon(		)
	Weapon(	5169	)
	Weapon(	5170	)
	Weapon(	5171	)
	Weapon(		)
	Weapon(	5160	)
	Weapon(	5161	)
	Weapon(	5162	)
	Weapon(		)
	Weapon(	5205	)
	Weapon(	5206	)
	Weapon(	5207	)
	Weapon(	5220	)
	Weapon(	5202	)
	Weapon(	5203	)
	Weapon(	5204	)
	Weapon(	5219	)
	Weapon(	5198	)
	Weapon(	5199	)
	Weapon(	5200	)
	Weapon(	5201	)
	Weapon(	5221	)
	Weapon(	5222	)
	Weapon(	5223	)
	Weapon(		)
	Weapon(	5224	)
	Weapon(	5225	)
	Weapon(	5226	)
	Weapon(		)
	Weapon(	5227	)
	Weapon(	5228	)
	Weapon(	5229	)
	Weapon(		)
	Weapon(	5241	)
	Weapon(	5242	)
	Weapon(	5243	)
	Weapon(		)
	Defence(	5241	)
	Defence(	5242	)
	Defence(	5243	)
	Defence(		)
	Defence(	5264	)
	Defence(	5265	)
	Defence(	5266	)
	Defence(		)
	Defence(	5267	)
	Defence(	5268	)
	Defence(	5269	)
	Defence(		)
	Defence(	5270	)
	Defence(	5271	)
	Defence(	5272	)
	Defence(		)
	Defence(	5273	)
	Defence(	5274	)
	Defence(	5275	)
	Defence(		)
	Defence(	5287	)
	Defence(	5288	)
	Defence(	5289	)
	Defence(	5290	)
	Defence(	5295	)
	Defence(	5296	)
	Defence(	5297	)
	Defence(	5298	)
	Defence(	5299	)
	Defence(	5300	)
	Defence(	5301	)
	Defence(	5302	)
	Defence(	5303	)
	Defence(	5304	)
	Defence(	5305	)
	Defence(		)
	Defence(	5309	)
	Defence(	5310	)
	Defence(	5311	)
	Defence(		)
	Defence(	5312	)
	Defence(	5313	)
	Defence(	5314	)
	Defence(		)
	Defence(	5315	)
	Defence(	5316	)
	Defence(	5317	)
	Defence(	5318	)
	Defence(	5323	)
	Defence(	5324	)
	Defence(	5325	)
	Defence(	5326	)
	Defence(	5327	)
	Defence(	5328	)
	Defence(	5329	)
	Defence(	5330	)
	Defence(	5341	)
	Defence(	5342	)
	Defence(	5343	)
	Defence(		)
	Defence(	5345	)
	Defence(	5346	)
	Defence(	5347	)
	Defence(		)
	Defence(	5349	)
	Defence(	5350	)
	Defence(	5351	)
	Defence(		)
	Defence(	5352	)
	Defence(	5353	)
	Defence(	5354	)
	Defence(	5355	)
	Defence(	5356	)
	Defence(	5357	)
	Defence(	5358	)
	Defence(	5359	)
	Defence(	5360	)
	Defence(	5361	)
	Defence(	5362	)
	Defence(	5363	)
	Defence(	5364	)
	Defence(	5365	)
	Defence(	5366	)
	Defence(	5367	)
	Defence(	5368	)
	Defence(	5369	)
	Defence(	5370	)
	Defence(	5371	)
	Other(	5372	)
	Other(	5373	)
	Other(	5374	)
	Other(	5375	)
	Other(	5376	)
	Other(	5377	)
	Other(	5378	)
	Other(	5379	)
	Other(	5380	)
	Other(	5381	)
	Other(	5382	)
	Other(	5383	)
	Other(	5384	)
	Other(	5385	)
	Other(	5386	)
	Other(	5387	)
	Other(	5388	)
	Other(	5389	)
	Other(	5390	)
	Other(	5391	)
	Other(	5404	)
	Other(	5405	)
	Other(	5406	)
	Other(	5436	)
	Other(	5410	)
	Other(	5411	)
	Other(	5412	)
	Other(	5438	)
	Other(	5413	)
	Other(	5414	)
	Other(	5415	)
	Other(	5439	)
	Other(	5422	)
	Other(	5423	)
	Other(	5440	)
	Other(		)
	Other(	5424	)
	Other(	5425	)
	Other(	5441	)
	Other(		)
	Other(	5432	)
	Other(	5433	)
	Other(	5444	)
	Other(		)
	Other(	5434	)
	Other(	5435	)
	Other(	5445	)
	Other(		)
	Other(	5456	)
	Other(	5457	)
	Other(	5458	)
	Other(	5459	)
	Other(	5460	)
	Other(	5461	)
	Other(	5462	)
	Other(	5463	)
	Other(	5464	)
	Other(	5465	)
	Other(	5466	)
	Other(	5467	)
	Other(	5468	)
	Other(	5469	)
	Other(	5470	)
	Other(	5471	)
	Other(	5488	)
	Other(	5489	)
	Other(	5490	)
	Other(		)
	Other(	5491	)
	Other(	5492	)
	Other(	5493	)
	Other(		)
	Other(	5494	)
	Other(	5495	)
	Other(	5496	)
	Other(		)
	Other(	5497	)
	Other(	5498	)
	Other(	5499	)
	Other(	5500	)
	Other(		)
	Other(	5501	)
	Other(	5502	)
	Other(	5503	)
	Other(		)
	Other(	5507	)
	Other(	5508	)
	Other(	5509	)
	Other(	5510	)
	Other(	5511	)
	Other(	5512	)
	Other(	5513	)
end

function xmas_0701()
	Talk( 1, "Голди: Здравствуй! Я продаю всякое оружие! Взгляни!" )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Ремонт", OpenRepair )
	Text( 1, "Комбинировать", OpenUnite)
	Text( 1, "Ковка", OpenForge)
	Text( 1, "Плавка", OpenMilling)
	Text( 1, "Плавка аппарелей", OpenFusion)
	Text( 1, "Усовершенствование аппарелей", OpenUpgrade)
	Text( 1, "Извлечение самоцвета", OpenGetStone )
	Text( 1, "Получить костюм", SendExchangeXData )
	Text( 1, "Ничего...",CloseTalk )

	

	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0001	)
	Weapon(	0010	)
	Weapon(	0002	)
	Weapon(	0011	)
	Weapon(	0003	)
	Weapon(	0012	)
	Weapon(	0013	)
	Weapon(	0014	)
	Weapon(	0022	)
	Weapon(	0005	)
	Weapon(	0023	)
	Weapon(	1388	)
	Weapon(	1389	)
	Weapon(	1390	)
	Weapon(	1391	)
	Weapon(	1392	)
	Weapon(	1395	)
	Weapon(	1396	)
	Weapon(	1397	)
	Weapon(	1398	)
	Weapon(	1399	)
	Weapon(	0121	)
	Weapon(	0122	)
	Weapon(	0123	)
	Weapon(	0124	)
	Weapon(	0125	)
	Weapon(	0126	)
	Weapon(	0015	)
	Weapon(	0020	)
	Weapon(	0016	)
	Weapon(	0021	)
	Weapon(	0004	)
	Weapon(	1370	)
	Weapon(	1371	)
	Weapon(	1372	)
	Weapon(	1373	)
	Weapon(	1377	)
	Weapon(	1378	)
	Weapon(	1379	)
	Weapon(	1380	)
	Weapon(	1381	)
	Weapon(	1382	)
	Weapon(	1386	)
	Weapon(	1387	)
	Weapon(	0073	)
	Weapon(	0080	)
	Weapon(	0074	)
	Weapon(	0081	)
	Weapon(	0075	)
	Weapon(	0082	)
	Weapon(	0076	)
	Weapon(	0083	)
	Weapon(	0077	)
	Weapon(	0084	)
	Weapon(	1415	)
	Weapon(	1416	)
	Weapon(	1417	)
	Weapon(	1418	)
	Weapon(	1419	)
	Weapon(	1422	)
	Weapon(	1423	)
	Weapon(	1424	)
	Weapon(	1425	)
	Weapon(	1426	)
	Weapon(	1443	)
	Weapon(	1444	)
	Weapon(	1445	)
	Weapon(	1446	)
	Weapon(	1447	)
	Weapon(	1450	)
	Weapon(	1451	)
	Weapon(	1452	)
	Weapon(	1460	)
	Weapon(	1461	)
--	Defence(	0453	)
--	Defence(	0454	)
--	Defence(	6946	)
	Defence(	1020	)
--	Defence(	0455	)
--	Defence(	0456	)
--	Defence(	0890	)
--	Defence(	0891	)
	Defence(	0886	)
	Defence(	3075	)
	Defence(	3074	)
	--Other(	6819	)
	--Other(	6822	)
	--Other(	6825	)
	--Other(	6828	)
	--Other(	6831	)
	--Other(		)
	--Other(		)
	--Other(		)
	--Other(	6818	)
	--Other(	6821	)
	--Other(	6824	)
	--Other(	6827	)
	--Other(	6830	)
	Other(		)
	Other(		)
	Other(		)
--[[	InitTrigger()
	TriggerCondition( 1, NoItem, 4286, 1 )
	TriggerAction( 1, JumpPage, 1 )
	TriggerCondition( 2, PfEqual, 8 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, PfEqual, 9 )
	TriggerAction( 3, JumpPage, 2 )
	TriggerCondition( 4, PfEqual, 12 )
	TriggerAction( 4, JumpPage, 2 )
	TriggerCondition( 5, PfEqual, 13 )
	TriggerAction( 5, JumpPage, 2 )
	TriggerCondition( 6, PfEqual, 14 )
	TriggerAction( 6, JumpPage, 2 )
	TriggerCondition( 7, PfEqual, 16 )
	TriggerAction( 7, JumpPage, 2 )
	Start( GetMultiTrigger(), 7 )

	Talk( 1, "Эвентер: лол." )

	Talk( 2, "Эвентер: меняй чо хошь" )
	Text( 2, "65 ансы", JumpPage, 3 )
	Text( 2, "Босс Стоун", JumpPage, 4 )
	Text( 2, "Сундук Хаоса", JumpPage, 5 )
	
	Talk( 6, "Эвентер: Ни катит." )
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 4286, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 4286, 1 )
	TriggerAction( 1, GiveItem, 4288, 1 , 4)
	TriggerFailure( 1, JumpPage, 6 )
	Text( 3, "Получить Сундук 65 Ансов", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 4286, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 4286, 1 )
	TriggerAction( 1, GiveItem, 4287, 1 , 4)
	TriggerFailure( 1, JumpPage, 6 )
	Text( 4, "Получить Сундук Босс Стоунов", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 4286, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 4286, 1 )
	TriggerAction( 1, GiveItem, 4288, 1 , 4)
	TriggerFailure( 1, JumpPage, 6 )
	
	

	AddNpcMission	(1700)	--Тест Богини
	AddNpcMission	(1701)	--Тест Богини
	AddNpcMission	(1702)	--Тест Богини
	AddNpcMission	(1703)	--Тест Богини
	AddNpcMission	(1704)	--Тест Богини
	AddNpcMission	(1705)	--Тест Богини

]]--
end

function xmas_0702()
	Talk( 1, "Аппарели: ")

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, GiveItem, 6206, 1 , 4)
	TriggerFailure( 1, JumpPage, 1 )
	Text( 1, "Выдать", MultiTrigger, GetMultiTrigger(), 1)


	
end

function xmas_0703()
	Talk( 1, "Аппарели: Заебали блять, суки ебаные НПС!")
	Text( 1, "Приобрести", BuyPage )


	
end
