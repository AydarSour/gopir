--------------------------------------------------------------------------
--									--
--									--
--npcscripts01.lua Created by Robin 2005.1.20.	--
--									--
--									--
--------------------------------------------------------------------------
print( "‡ Јаг§Є  npcscripts01.lua" )

jp= JumpPage
amp=AutoMissionPage
ct=CloseTalk
am=AddMission
MissionCheck = HasFlag
mc=MissionCheck


------------------------------------------------------------
-- °ЧТшЦ®іЗ:·юЧ°µкДбИшЖЕЖЕ
------------------------------------------------------------

function BT_NpcSale001()


	Talk( 1, "Бабушка Нилия: Добро пожаловать! Мои товары хороши и недороги! А еще у нас есть модные вещи! Посмотри!" )
	Text( 1, "Торг", BuyPage )

	InitTrade()
	Defence(	0290	)
	Defence(	0466	)
	Defence(	0642	)
	Defence(	0296	)
	Defence(	0472	)
	Defence(	0648	)
	Defence(	0291	)
	Defence(	0467	)
	Defence(	0643	)
	Defence(	0297	)
	Defence(	0473	)
	Defence(	0649	)
	Defence(	0293	)
	Defence(	0469	)
	Defence(	0645	)
	Defence(	0298	)
	Defence(	0474	)
	Defence(	0650	)
	Defence(	0300	)
	Defence(	0476	)
	Defence(	0652	)
	Defence(	0301	)
	Defence(	0477	)
	Defence(	0653	)
	Defence(	0228	)
	Defence(	0229	)
	Defence(	0230	)
	Defence(	0295	)
	Defence(	0471	)
	Defence(	0647	)
	Defence(	0302	)
	Defence(	0478	)
	Defence(	0654	)
	Defence(	0299	)
	Defence(	0475	)
	Defence(	0651	)
	Defence(	0303	)
	Defence(	0479	)
	Defence(	0655	)
	
	-- AddNpcMission	(220 )
	AddNpcMission	(705 )
	
end

-------------------------------------------------------------------
--								--
--		Замковый страж - Питер [Аргент]		--
--		219533,270323				--
-------------------------------------------------------------------

function r_talk86()

	InitTrigger()
	TriggerCondition( 1, CheckRase, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, CheckRase, 2 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerCondition( 3, CheckRase, 3 )
	TriggerAction( 3, JumpPage, 2 )
	TriggerCondition( 4, CheckRase, 4 )
	TriggerAction( 4, JumpPage, 1 )
	Start( GetMultiTrigger(), 4 )

	Talk( 1, "Питер: Привет, я страж Питер. Я охраняю этот замечательный город от бандитов. Так же я провожу тренировки юных Мечников. К сожалению ты не можешь у меня пройти обучение.")
	Text( 1, "Приобрести навыки",BuyPage)

	Talk( 2, "Питер: Привет, я страж Питер. Я охраняю этот замечательный город от бандитов. Так же я провожу тренировки юных Мечников. Тебя что то интересует?")

	Text( 2, "Стать Мечником" , JumpPage, 3 )
	Text( 2, "Стать Воителем" , JumpPage, 6 )
	Text( 2, "Стать Чемпионом" , JumpPage, 7 )
	Text( 2, "Приобрести навыки",BuyPage)

	InitTrade()
	Other(	3297	)
	Other(	3298	)
	Other(	3164	)
	Other(	3160	)
	Other(	3161	)
	Other(	3165	)
	Other(	3238	)
	Other(	3170	)
	Other(	3293	)
	Other(	3174	)
	Other(	3163	)
	Other(	3176	)
	Other(	3180	)
	Other(	3179	)
	Other(	3177	)
	Other(	3168	)
	Other(	3162	)
	Other(	3166	)
	Other(	3167	)
	Other(	3172	)
	Other(	3173	)



	Talk( 3, "Питер: Погоди, мой дорогой друг! Тебе так интересны мечи? Знай, я могу тебя обучить мастерству мечника, но знай, что профессия выбирается лишь 1 раз и навсегда. Ты готов стать настоящим Воином?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )--мечник
	TriggerCondition( 1, TurnToJob, 3 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, SetProfession, 1  )
	TriggerAction( 1, GiveItem, 3164, 1, 4 )
	TriggerAction( 1, GiveItem, 1, 1, 4 )
	TriggerAction( 1, JumpPage, 4 )
	TriggerAction( 1, Starteffect , 366)
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Да, я готов стать Мечником", MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "Мне нужно ещё подумать", CloseTalk)

	Talk( 4, "Питер: Поздравляю! Ты прошел обучение, теперь ты Мечник! Защищай слабых, будь благороден и служи силам добра!")

	Talk( 5, "Питер: К сожалению нужные условия, что бы стать Мечником не выполнены. Мечником может стать Ланс или Карциз. Необходимо иметь 10 уровень. Так же у тебя не должно быть не какой другой професии.")

	Talk( 6, "Питер: Погоди, мой дорогой друг! Тебе так интересны мечи? Знай, я могу тебя обучить мастерству Воителя, но знай, что профессия выбирается лишь 1 раз и навсегда. Ты готов стать настоящим Воином?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, TurnToJob, 3 )
	TriggerCondition( 1, PfEqual, 1 )
	--TriggerCondition( 1, CheckConvertProfession, MIS_TWO_FENCER )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, SetProfession, 9 )
	TriggerAction( 1, Starteffect , 366)
	TriggerFailure( 1, JumpPage, 8 )
	Text( 6, "Да, я готов стать Воителем", MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "Мне нужно ещё подумать", CloseTalk)

	Talk( 7, "Питер: Погоди, мой дорогой друг! Тебе так интересны мечи? Знай, я могу тебя обучить мастерству Чемпиона, но знай, что профессия выбирается лишь 1 раз и навсегда. Ты готов стать настоящим Воином?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, CheckRase, 2 )
	TriggerCondition( 1, PfEqual, 1 )
	TriggerCondition( 1, CheckConvertProfession, MIS_LARGE_FENCER )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, SetProfession, 8 )
	TriggerAction( 1, Starteffect , 366)
	TriggerFailure( 1, JumpPage, 9 )
	Text( 7, "Да, я готов стать Чемпионом", MultiTrigger, GetMultiTrigger(), 1)
	Text( 7, "Мне нужно ещё подумать", CloseTalk)

	Talk( 8, "Питер: К сожалению нужные условия, что бы стать Воителем не выполнены. Воителем может стать только Ланс. Необходимо иметь 40 уровень. Так же у тебя должна быть 1 профессия мечника.")

	Talk( 9, "Питер: К сожалению нужные условия, что бы стать Воителем не выполнены. Чемпионом может стать только Карциз. Необходимо иметь 40 уровень. Так же у тебя должна быть 1 профессия мечника.")

	AddNpcMission	(100)	--Жизнь Мечника
	AddNpcMission	(204)	--Послание секретаря(Завершение)
	AddNpcMission	(279)	--Бегство Чудища(Завершение)
	AddNpcMission	(281)	--Страшный Монстр
	AddNpcMission	(404)	--Исследование тундры
	AddNpcMission	(749)	--Кодекс Воителя
	AddNpcMission	(750)	--Мужество Чемпиона
	--AddNpcMission	(66)	--Карьера мечника(Завершение квеста от Наставницы)
	AddNpcMission	(67)	--Карьера мечника
	AddNpcMission	(68)	--Карьера мечника
	AddNpcMission	(72)	--Карьера мечника(Завершение квеста)
--	AddNpcMission	(1222)	--Коммерция

	AddNpcMission	(5056)	--Указания Санг Ди(Завершение)
	AddNpcMission	(5060)	--Просьба Питера
	AddNpcMission	(5068)	--История о Просветленном

	AddNpcMission	(5167)	--История о Просветленном
	AddNpcMission	(5089)	--Ученик(Завершение)
	AddNpcMission	(5093)	--Ученик уровень 1
	AddNpcMission	(5094)	--Ученик уровень 2
	AddNpcMission	(5095)	--Ученик уровень 3
	AddNpcMission	(5096)	--Ученик уровень 4
	AddNpcMission	(5109)	--Ученик

	AddNpcMission	(6078)	--Доложить о ситуации(Завершение)
	AddNpcMission	(6079)	--Собрать перья
	AddNpcMission	(6080)	--Помоги другим людям
	AddNpcMission	(6097)	--Шпионить за вражеской армией
	AddNpcMission	(6100)	--Шпионить за вражеской армией(Завершение)
	AddNpcMission	(6101)	--Месть Питера

	MisListPage(2)

end


-------------------------------------------------------------------
--								--
--		Кузнец Голди		--
--		219533,270323				--
-------------------------------------------------------------------
function r_trade01 ()

	Talk( 1, "Голди: Здравствуй! Я продаю всякое оружие! Взгляни!" )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Ремонт", OpenRepair )
	Text( 1, "Комбинировать", OpenUnite)
	Text( 1, "Ковка", OpenForge)
	--Text( 1, "Купить свитки плавки ", JumpPage, 3 )
	Text( 1, "Смотреть ещё ", JumpPage, 2 )
	Text( 2, "Плавка", OpenMilling)
	Text( 2, "Плавка аппарелей", OpenFusion)
	Text( 2, "Усовершенствование аппарелей", OpenUpgrade)
	Text( 2, "Извлечение самоцвета", OpenGetStone )
	Text( 2, "Получить украшение", SendExchangeXData )
	Text( 2, "Назад ", JumpPage, 1 )
	Text( 2, "Ничего...",CloseTalk )
	Text( 1, "Ничего...",CloseTalk )
	
	Talk( 3, "Хочешь купить свиток плавки? сколько ъочешь купить свитков? Цена одного свитка 100к, будешь брать?" )
		InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 100000)
	TriggerAction( 1, GiveItem, 453,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Один свиток за 100к ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 200000)
	TriggerAction( 1, GiveItem, 453,2, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Два свитка за 200к ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 300000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 300000)
	TriggerAction( 1, GiveItem, 453,3, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Три свитка за 300к ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 400000)
	TriggerAction( 1, GiveItem, 453,4, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Четыре свитка за 400к ",MultiTrigger, GetMultiTrigger(), 1 )
		InitTrigger()
	TriggerCondition( 1, HasMoney, 500000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 500000)
	TriggerAction( 1, GiveItem, 453,5, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Пять свитков за 500к ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "Назад ", JumpPage, 1 )
	Talk( 5, "Не все условия выполнены " )

		InitExchangeX()
	--Мечи 
ExchangeDataX	(	8142	,	15	,	5001	,	1	)
ExchangeDataX	(	8142	,	15	,	5008	,	1	)
ExchangeDataX	(	8142	,	20	,	5002	,	1	)
ExchangeDataX	(	8142	,	20	,	5007	,	1	)
--Молот
ExchangeDataX	(	8142	,	30	,	5003	,	1	)
ExchangeDataX	(	8142	,	40	,	5009	,	1	)
--Пистолеты\Луки
ExchangeDataX	(	8142	,	30	,	5005	,	1	)
ExchangeDataX	(	8142	,	40	,	5011	,	1	)
ExchangeDataX	(	8142	,	30	,	5448	,	1	)
ExchangeDataX	(	8142	,	40	,	5612	,	1	)
--Посохи
ExchangeDataX	(	8142	,	30	,	5006	,	1	)
ExchangeDataX	(	8142	,	40	,	5012	,	1	)
ExchangeDataX	(	8142	,	30	,	5004	,	1	)
ExchangeDataX	(	8142	,	40	,	5010	,	1	)

--Аппы Ланса за медь
ExchangeDataX	(	8141	,	20	,	8823	,	1	)
ExchangeDataX	(	8141	,	30	,	8821	,	1	)
ExchangeDataX	(	8141	,	40	,	8822	,	1	)
ExchangeDataX	(	8141	,	50	,	8824	,	1	)
ExchangeDataX	(	8141	,	60	,	8825	,	1	)
ExchangeDataX	(	8141	,	70	,	8826	,	1	)
--Аппа Карциза
ExchangeDataX	(	8141	,	20	,	8829	,	1	)
ExchangeDataX	(	8141	,	30	,	8827	,	1	)
ExchangeDataX	(	8141	,	40	,	8828	,	1	)
ExchangeDataX	(	8141	,	50	,	8830	,	1	)
ExchangeDataX	(	8141	,	60	,	8831	,	1	)
ExchangeDataX	(	8141	,	70	,	8832	,	1	)
--Аппы Филис
ExchangeDataX	(	8141	,	20	,	8835	,	1	)
ExchangeDataX	(	8141	,	30	,	8833	,	1	)
ExchangeDataX	(	8141	,	40	,	8834	,	1	)
ExchangeDataX	(	8141	,	50	,	8836	,	1	)
ExchangeDataX	(	8141	,	60	,	8837	,	1	)
ExchangeDataX	(	8141	,	70	,	8838	,	1	)
--Аппы Ами
ExchangeDataX	(	8141	,	20	,	8841	,	1	)
ExchangeDataX	(	8141	,	30	,	8839	,	1	)
ExchangeDataX	(	8141	,	40	,	8840	,	1	)
ExchangeDataX	(	8141	,	50	,	8842	,	1	)
ExchangeDataX	(	8141	,	60	,	8843	,	1	)
--ExchangeDataX	(	8141	,	70	,	8844	,	1	)
	
	
	
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
	--Weapon(	3400	)
	--Weapon(	3401	)
	--Weapon(	3402	)
	--Weapon(	3403	)
--	Defence(	0453	)
--	Defence(	0454	)
--	Defence(	6946	)
--	Defence(	1020	)
--	Defence(	0455	)
--	Defence(	0456	)
--	Defence(	0890	)
--	Defence(	0891	)
--	Defence(	0886	)
--	Defence(	3075	)
--	Defence(	3074	)
--	Defence(	454	)--катализатор плавки
--	Defence(	456	)
--	Defence(	891	)--Катализатор снаряжения
--	Defence(	890	)--Стабилизатор снаряжения
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

	AddNpcMission	(703 )
	AddNpcMission	(1044)
	AddNpcMission	(1096)
	AddNpcMission	(1155)
	AddNpcMission	(1207)
	AddNpcMission	(58)
	AddNpcMission	(59)
	AddNpcMission	(60)
	AddNpcMission	(114)
	AddNpcMission	(1221)


end
-----------------------------------------------------------------РЎЅрЅрМъЅіЅбКш----------------------------------------------------------------------------------------------




------------------------------------------------------------------
--								--
--								--
------------------------°ЧТшіЗГШКйЛ№їЛМШ---------------------------
--			221925,274925				--
--								--
------------------------------------------------------------------
function r_talk01 ()

	Talk( 1,  "Салвьер: Здравствуйте, Вы похожи на новичка в этих краях. Могу ли я чем то помочь? " )
	Text( 1,  "Кто Вы? ", JumpPage, 2)
	Text( 1,  "Что это за место? ", JumpPage, 3 )

	Text( 1,  "Я думаю все понял. Спасибо. ", JumpPage, 4 )

	Talk( 2,  "Салвьер: Я отвечаю на вопросы жителей этого города. Если у Вас какие то трудности, то ищите меня. " )
	Text( 2,  "Назад. ", JumpPage, 1)

	Talk( 3,  "Салвьер: Это самый преуспевающий город во всем Аскароне. У нас нет никаких проблем с ресурсами и все благодаря нашему градоначальнику. " )
	Text( 3,  "Назад. ", JumpPage, 1)

	Talk( 4,  "Салвьер: Хорошо, если Вам будет нужна помощь - обращайтесь. " )
	Text( 4,  "Я хочу задать еще вопросы. ", JumpPage, 5)

	Talk( 5,  "Салвьер: Не стесняйтесь, задавайте. " )
	Text( 5,  "Градоначальник и основание Аргента. ", JumpPage, 6)

	Talk( 6,  "Салвьер: Много столетий назад велась война между демонами и империей Аскарон. Это длилось в течение многих лет и Империя потеряла множество своих верных граждан. Герцог и его племянник отступили и решили основать новый город на тогда еще пустующей равнине. Этот город пережил после этого еще множество войн, но ни разу не был взят врагами. " )
	Text( 6,  "Отлично! Я рад. ", JumpPage, 7)

	InitTrigger()

	TriggerCondition( 1, NoRecord, 500 )

	TriggerAction( 1, CloseTalk )
	TriggerAction( 1, AddExp, 50, 50 )
	TriggerAction( 1, SetRecord, 500 )
	TriggerAction( 1, AddMoney, 1000 )

	Talk( 7,  "Салвьер: Как один из самых значимых людей города я принимаю всех новичков с подобающим гостеприимством. Всем новобранцам подарок - 1000 золотых и бесплатное лечение у медсестры до 5лвл." )
	Text( 7,  "Спасибо!",  MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8,  "Салвьер: Серебрянный город нуждается в таких новобранцах как Вы." )
	Text( 8,  "Спасибо. Я пока осматриваюсь.",  CloseTalk )


	InitTrigger()

	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, JumpPage, 8 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )

	AddNpcMission	(203)
	AddNpcMission	(204)
	AddNpcMission	(205)
	AddNpcMission	(206)
	AddNpcMission	(221)
	AddNpcMission	(222)
	AddNpcMission	(1002)
	AddNpcMission	(1057)
	AddNpcMission	(1112)
	AddNpcMission	(1166)
	AddNpcMission	(55)
	AddNpcMission	(56)
	AddNpcMission	(57)
	AddNpcMission	(1220)
	AddNpcMission	(319)
	AddNpcMission	(325)
	AddNpcMission	(326)

	AddNpcMission	(5037)

	
	MisListPage(8)

end 
---------------<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<NPC Ў¶Л№їЛМШЎ·ЅбКшБЛ!
----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[АПДМДМ]				--
--							--
--		227725,276925				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk02 ()

	
	Talk( 1, "Бабушка Белди: Как поживаешь, молодой человек?" )
	--Text( 1, "Seed of Love", JumpPage, 2)
	--Text( 1, "Redeem 10 Seeds of Love", JumpPage, 3)
	--Text( 1, "Redeem 100 Seeds of Love", JumpPage, 4)
	--Text( 1, "Redeem 1000 Seeds of Love", JumpPage, 5)
--	Text( 1, "К№УГ"Р·Гз"єН"і¬ј¶Р·УГј¤ЛШ"¶Т»»Р·Нх", JumpPage, 6)
--	Text( 1, "К№УГДНѕГЦµОЄ"0"µДР·Гз¶Т»»Р·Нх", JumpPage, 7)
	Text( 1, "Обменять Светильник", JumpPage, 7 )
	Text( 1, "Уйти", CloseTalk)
	
	
	Talk( 2, "Granny: Why wait when you can sow your Seed of Love. Bring me 1 vial of Pure Water, 1 Fancy Petal, 1 Perfect Sapphire and 1 Heart of Naiad to germinate 1 Seed of Love." )
	Text( 2, "Redeem Seed of Love", GetChaName_21, 1 )

	Talk( 3, "Granny: 10 Seeds of Love to exchange for 1 Honey Chocolate")
	Text(3,"Подтвердить to exchange",  GetChaName_22, 1)

	Talk( 4, "Granny: 100 Seeds of Love to exchange for 3 Amplifiers of Strive")
	Text(4,"Подтвердить to exchange",  GetChaName_23, 1)

	Talk( 5, "Granny: 1000 Seeds of Love can be used to exchange for 1 Pass to Abandon 4")
	Text(5,"Подтвердить to exchange",  GetChaName_24, 1)
	
	Talk(6,"АПДМДМЈєчТчСКўСзЦ®Р·НхґуІНЈ¬РиТЄДъКЦАпµД1ёцЎ°Р·ГзЎ±єНЙМіЗЦР№єВтµД1ёцЎ°і¬ј¶Р·УГј¤ЛШЎ±ЎЈµ±ДкПнУюХыёцєЈµБЅзµДґуєЈµБНхВЮЙ­Ј¬ФшТтЖ·№эґЛІЛ¶шѕ­Сй±лФцЎЈЗЧ°®µДЕуУСЈЎИГОТГЗ№ІН¬ЖЪґэЖжјЈµДЅµБЩЈЎ")	
	InitTrigger()                                                   --------1ёцР·Нх
	TriggerCondition(1, HasItem, 0058, 1)               ---------Р·Гз
	TriggerCondition(1, HasItem, 0060, 1)               ---------Р·Йю
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 0058, 1)
	TriggerAction(1, TakeItem, 0060, 1)
	TriggerAction(1, GiveItem, 0059, 1, 4)              ----------Р·Нх
	TriggerFailure(1, JumpPage, 8)
	Text(6,"ПнУГР·НхґуІН", MultiTrigger, GetMultiTrigger(), 1) 

InitTrigger() --¶Ф»»µЖБэ
	TriggerCondition( 1, HasItem, 3904, 15 )
	TriggerCondition( 1, HasItem, 3911, 15 )
	TriggerCondition( 1, HasItem, 4450, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 3904, 15 )
	TriggerAction( 1, TakeItem, 3911, 15 )
	TriggerAction( 1, TakeItem, 4450, 1 )
 	TriggerAction( 1, GiveItem, 3342, 1 ,4)
	TriggerFailure( 1, JumpPage, 9 ) 
	Talk( 7, "Бабушка: Дай мне 15 кусков Красной бумаги, 15 Бамбуковых шестов и 1 Таинственную свечу - и дам тебе Светильник.")
	Text( 7, "Подтвердить сделку",MultiTrigger, GetMultiTrigger(), 1) 

--[[	Talk(7,"АПДМДМЈєіЦЦ®ТФєгµДДНБ¦КЗіЙ№¦µД№ШјьЈЎЗл°СФЪДъ±і°ьАёµЪ2ёсЕаУэБЛ5МмµДР·ГзёшОТ°ЙЈЎµ±Р·ГзµДДНѕГЦµ»ЇХыОЄ0Ј¬ПнУюХыёцјУДЙґуВЅµДР·НхГылИ±гєбїХіцКАБЛЈЎИГОТГЗТ»ЖрµИґэХвОґЦЄµДѕЄПІЈЎ")
	InitTrigger()                                                   --------1ёцР·Нх
	TriggerCondition(1, HasItem, 0058, 1)               ---------Р·Гз 
	TriggerCondition(1, crablife)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 0058, 1)
	TriggerAction(1, GiveItem, 0059, 1, 4)              ----------Р·Нх
	TriggerFailure(1, JumpPage, 9)
	Text(7, "ПнУГР·НхґуІН", MultiTrigger, GetMultiTrigger(), 1) ]]--

	Talk(8, "ЗлИ·±ЈДъЙнЙПУРР·ГзєНЙМіЗАп№єВтµДЎ°і¬ј¶Р·УГј¤ЛШЎ±аёЈЎ")

	Talk( 9, "Бабушка: Кажется, у тебя недостаточно Красных документов, Бамбуковых шестов или Таинственных свечей!")
		

	MisListPage(1)

	AddNpcMission	(282 )
	AddNpcMission	(283 )
	AddNpcMission	(1026)
	AddNpcMission	(1084)
	AddNpcMission	(1137)
	AddNpcMission	(1189)
	AddNpcMission(	1224	)
	AddNpcMission(	373	)
	AddNpcMission(	374	)
	AddNpcMission(	388	)
	AddNpcMission( 906 )

-----------------АПДМДМЎ¤±ґµЩ---------ЅрЕЈ
	AddNpcMission	(5631)
	AddNpcMission	(5632)

-------------------АПДМДМЎ¤±ґµЩ---------ЅрЗпК®ФВ№ъЗм»о¶Ї
--	AddNpcMission  (5865)
--	AddNpcMission  (5866)
--	AddNpcMission  (5867)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<АПДМДМЅбКш




----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[Т©ІЭЙМИЛЎЄЎЄµЫД·]			--
--							--
--		224575,277025				--
----------------------------------------------------------
function r_talk03 ()

	Talk( 1, "Дито: Привет! У меня есть множество различных трав. Обрати внимание!" )
	Text( 1, "Торг", BuyPage)
	--Text( 1, "Sell items!", SalePage)
	Text( 1, "Рецепт отвара", JumpPage, 5)


	Talk( 4, "Очень хорошо. Ты уже достиг 9-го уровня. Как только ты достигнешь 10-го уровня, ты сможешь выбрать свою первую профессию. Разыщи Стражника - Питера в Аргенте (2192, 2767) если ты хочешь быть Мечником. Найди Верховного Жреца Геньона в Шайтане (862, 3500) если ты хочешь стать Знахаркой. Чтобы стать Охотником, разыщи Мечника Рэя из Ледыни (1365, 570). Исследователей готовит Малыш Даниэль из Аргента (2193, 2730). Для быстрого перемещения между городами ты можешь воспользоваться услугами портальщиков." )
	Text( 4, "Торг", BuyPage)
	--Text( 4, "Sell items!", SalePage )
	Text( 4, "Рецепт отвара", JumpPage, 5)

---------------ЦЖЧчёКІЭТ©Л®
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3129, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3129, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3133, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 5, "Дито: Нужно лекарство если ты заболел. Что тебе нужно?" )
	Text( 5, "Рецепт отвара солодки", MultiTrigger, GetMultiTrigger(), 1 )
	--------------ЕЪЦЖРСЙс»ЁІи
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3130, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3130, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3134, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Заварить энергетический чай", MultiTrigger, GetMultiTrigger(), 1 )
	-------------------єПіЙГШЦЖЖжТмёа
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3131, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3131, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3135, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 5, "Рецепт специальной мази", MultiTrigger, GetMultiTrigger(), 1 )
	-------------------Хфїѕ±щСїЛЦ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3132, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3132, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3136, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "Приготовить снежный мягкий бутон", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6, "Дито: Деньги в первую очередь. Это то, что ты просил." )
	Talk( 7, "Дито: Тебе потребуется Целебная трава (10), 1 Флакон и 50 золотых, чтобы сделать 1 Лакричное зелье" )
	Talk( 8, "Дито: О, тебе потребуется Лепесток многоцвета (10), 1 Флакон и 50 золотых, чтобы сделать 1 Чай 'Бодрячок'" )
	Talk( 9, "Дито: Привет, мне нужно Чудо-фрукт (10) и 1 Флакон, чтобы сделать 1 Чудо-мазь. Ты также должен заплатить мне 50 золотых." )
	Talk( 10, "Дито: Эй, ты должен иметь Побег снежной травы (10) и 1 Флакон, чтобы сделать 1 Брикет снежной травы. Также, ты должен заплатить мне 50 золотых." )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)
	--Other(	3911	)
    --Other(	3904	)
	--Other(	3343	)
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



--ХвАпРґИООсµДјмІв


-----------і¬№э9ј¶ёжЛЯНжјТїЙТФЧЄЦ°
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	---TriggerAction( 1, JumpPage, 4 )
	--TriggerFailure( 1, JumpPage, 1 )

	--Start( GetMultiTrigger(), 1 )

---------------------ЧўІбИООс
	MisListPage(1)

	AddNpcMission	(707 )
	AddNpcMission	(733 )
	AddNpcMission	(738 )
	AddNpcMission	(739 )
	AddNpcMission	(214 )
	AddNpcMission	(215 )
	AddNpcMission	(217 )
	AddNpcMission	(218 )
	AddNpcMission	(219 )
	AddNpcMission	(220 )
	AddNpcMission	(1046)
	AddNpcMission	(1208)
	AddNpcMission	(73)
	AddNpcMission	(74)
	AddNpcMission	(75)
	AddNpcMission	(913)
	AddNpcMission	(914)
	AddNpcMission	(915)
	AddNpcMission	(916)
-------------eleven
	AddNpcMission	(5027)
	AddNpcMission	(5035)
	AddNpcMission	(5036)

	MisListPage(4)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Т©ІЭЙМИЛЎЄЎЄµХДёЅбКш



----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[»¤КїРЎЅгЎЄЎЄб°б°]			--
--							--
--		224575,277025				--
----------------------------------------------------------

---------------јУСЄ»ЦёґµДЕР¶Ё


----------------ЖХНЁ¶Ф»°їЄКј
function r_talk04 ()

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 1, "Джина: Привет, я медсестра Джина. Если заболеешь или будешь ранен, разыщи меня." )
	Text( 1, "Великое исцеление", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 5000 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 15000 )
	TriggerAction( 2, TakeMoney, 15000 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 1, "Исцеление", MultiTrigger,GetMultiTrigger(),2)
	--Text( 1, "Build Ship", JumpPage, 10)

	Talk( 2, "Джина: Великое Исцеление стоит 20000 золотых, которых у тебя нет" )

	Talk( 3, "Джина: Исцеление стоит 15000 золотых, которых у тебя нет" )

	Talk( 4, "У меня нет никакого письма. Ты меня с кем-то путаешь" )

	Talk( 5, "Да? Забудь об этом... Спасибо... Возьми эту награду за свою работу." )
		
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 5000 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 2 )

	Talk( 6, "Джина: Привет, я медсестра Джина. Если заболеешь или будешь ранен, разыщи меня." )
	Text( 6, "Великое исцеление", MultiTrigger,GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 5000 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 5000 )
	TriggerAction( 2, TakeMoney, 5000 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 3 )

	Text( 6, "Исцеление", MultiTrigger,GetMultiTrigger(),2)
	

	InitTrigger()
	TriggerCondition( 1, HasMission, 53 )
	TriggerCondition( 1, HasFlag, 53, 1 )
	TriggerCondition( 1, NoRecord, 53 )
	TriggerCondition( 1, NoFlag, 53, 4 )
	TriggerCondition( 1, HasItem, 2304, 1 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 1 )

	Start( GetMultiTrigger(), 1 )
	AddNpcMission	(1048)
	AddNpcMission	(1210)
	AddNpcMission	(920)-----------------------------------------
	AddNpcMission	(921)

	MisListPage(6)
	
	-----МъИЛБщПо
	AddNpcMission	(6117 )
	AddNpcMission	(6118 )
	AddNpcMission	(6119 )
	AddNpcMission	(6120 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»¤КїРЎЅгЎЄЎЄб°б°         ЅбКшї©



----------------------------------------------------------
----							--
--							--
--		°ЧТшіЗ[ѕЖ°ЙЕ® - µЩДИ]			--
--							--
--		225325,278875				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk05 ()

	Talk( 1, "Привет, я Дина. Ты моряк? Тебе удалось побывать на легендарном Острове Галер? Если да - расскажи." )
	Text( 1, "Купить вино", BuyPage )
	Text(1, "О славе",JumpPage,4)
	--Text(1, "Royal Pirate Reputation Redemption",JumpPage,7)
	--Text( 1, "єГГыК¤=єГ»Ш±Ё", JumpPage, 9)

	InitTrade()
	Other(	3916	)

	Talk( 2, "Я слышала, что ты ищещь Вино Восьми Драгоценностей, у меня еще осталась бутылочка. Если хочешь, я могу продать ее тебе за 100 000 золотых" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerAction( 1, TakeMoney, 100000 )
	TriggerAction( 1, GiveItem, 4072, 1, 4 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "Eight Treasures Wine", MultiTrigger,GetMultiTrigger(),1)

	Talk( 3, "Похоже, у тебя недостаточно золота. Возвращайся, когда разбогатеешь." )

	Talk(4,"Репутация очень важна. Помогающий другим взамен получает более высокую репутацию! Здесь очки репутации можно обменять на награду")
	Text(4,"Я верю в себя. Я здесь, чтобы получить награды", JumpPage,5)

	Talk(5,"Сейчас можно выкупить следующие награды. При выкупе наград я вычту у тебя очки Репутации")
	InitTrigger()
	TriggerCondition( 1, HasCredit,20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 20 )
	TriggerAction( 1, GiveItem, 2602,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"Эмблема стремления нач. ур.: 20 Репутации" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,200 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 200 )
	TriggerAction( 1, GiveItem, 2603,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"Обычная эмблема стремления: 200 Репутации" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 2000 )
	TriggerAction( 1, GiveItem, 2604,1,4 )
	TriggerFailure( 1, JumpPage, 6)
	Text(5,"Эмблема стремления выс. ур.: 2000 Репутации" ,MultiTrigger,GetMultiTrigger(),1)
	Talk(6,"Пожалуйста убедись, что у тебя достаточно места в инвентаре и очков репутации для обмена. Больше помогай людям. Хочешь открою секрет? Возьми себе кого-нибудь в ученики...",CloseTalk)

	Talk(7,"Привет! Мы - Короли Пиратов. Мы принимаем только пиратов с хорошей репутацией. Ты хочешь что-то выкупить за очки Репутации?")
	InitTrigger()
	TriggerCondition( 1, HasCredit,500 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 500 )
	TriggerAction( 1, GiveItem, 855,5,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"5 монет феи - 500 очков Репутации" ,MultiTrigger,GetMultiTrigger(),1)

	InitTrigger()
	TriggerCondition( 1, HasCredit,50000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, DelRoleCredit, 50000 )
	TriggerAction( 1, GiveItem, 3094,3,4 )
	TriggerAction( 1, JumpPage,8 )
	TriggerFailure( 1, JumpPage, 6)
	Text(7,"3 Усилителя стремлений - 50 000 очков Репутации" ,MultiTrigger,GetMultiTrigger(),1)


	--InitTrigger()
	--TriggerCondition( 1, HasCredit,20000 )
	--TriggerCondition( 1, HasLeaveBagGrid, 1 )
	--TriggerCondition( 1, KitbagLock, 0 )
	--TriggerAction( 1, DelRoleCredit, 20000 )
	--TriggerAction( 1, GiveItem, 0610,1,4 )
	--TriggerAction( 1, JumpPage,8 )
	--TriggerFailure( 1, JumpPage, 6)
	--Text(7,"Саморазрушение нач. уровня - 20 000 очков Репутации" ,MultiTrigger,GetMultiTrigger(),1)

	
	Talk(8,"Добро пожаловать в когорту самых славных пиратов! Работай, чтобы достичь своей цели.")

--	Talk( 9, "ДъєГЈ¬ОТГЗХвАпЦ»ПтУРГыНыµДИЛїЄ·ЕЎЈЦ»УРДъУРЧг№»µДГыЙщЈ¬ДъїЙТФФЪХвАп»»µЅЛщУРДъПлТЄµД¶«ОчЈ¬І»№эН¬К±ОТГЗТІ»бїЫіэДъµДТ»Ії·Цѕ«БйУІ±ТЧчОЄКЦРш·СЕ¶ЎЈ")
--	
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,5 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 5)
--	TriggerAction( 1, DelRoleCredit, 5 )
--	TriggerAction( 1, TakeItem, 855, 5)
--	TriggerAction( 1, GiveItem, 1024,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"ёЯј¶ідµзµзіШ: РиТЄГыЙщ5Ј¬ѕ«БйУІ±Т5ёц" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,10 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 10)
--	TriggerAction( 1, DelRoleCredit, 10 )
--	TriggerAction( 1, TakeItem, 855, 10)
--	TriggerAction( 1, GiveItem, 0456,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"Зї»Їѕ§КЇ: РиТЄГыЙщ10Ј¬ѕ«БйУІ±Т10ёц" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,20 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 20)
--	TriggerAction( 1, DelRoleCredit, 20 )
--	TriggerAction( 1, TakeItem, 855, 20)
--	TriggerAction( 1, GiveItem, 0455,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"Зї»ЇѕнЦб: РиТЄГыЙщ20Ј¬ѕ«БйУІ±Т20ёц" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,30 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 30)
--	TriggerAction( 1, DelRoleCredit, 30 )
--	TriggerAction( 1, TakeItem, 855, 30)
--	TriggerAction( 1, GiveItem, 0453,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"ИЫєПѕнЦб: РиТЄГыЙщ30Ј¬ѕ«БйУІ±Т30ёц" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,50 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 50)
--	TriggerAction( 1, DelRoleCredit, 50 )
--	TriggerAction( 1, TakeItem, 855, 50)
--	TriggerAction( 1, GiveItem, 0332,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"ґє·з»ъЖ±: РиТЄГыЙщ50Ј¬ѕ«БйУІ±Т50ёц" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,80 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 80)
--	TriggerAction( 1, DelRoleCredit, 80 )
--	TriggerAction( 1, TakeItem, 855, 80)
--	TriggerAction( 1, GiveItem, 0583,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"Зпµє»ъЖ±: РиТЄГыЙщ80Ј¬ѕ«БйУІ±Т80ёц" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,120 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 120)
--	TriggerAction( 1, DelRoleCredit, 120 )
--	TriggerAction( 1, TakeItem, 855, 120)
--	TriggerAction( 1, GiveItem, 3094,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(9,"Е¬Б¦Фц·щЖч: РиТЄГыЙщ120Ј¬ѕ«БйУІ±Т120ёц" ,MultiTrigger,GetMultiTrigger(),1)
--
--	Text(9,"Next Page", JumpPage , 12)
--
--	Talk(12, "ДъєГЈ¬ОТГЗХвАпЦ»ПтУРГыНыµДИЛїЄ·ЕЎЈЦ»УРДъУРЧг№»µДГыЙщЈ¬ДъїЙТФФЪХвАп»»µЅЛщУРДъПлТЄµД¶«ОчЈ¬І»№эН¬К±ОТГЗТІ»бїЫіэДъµДТ»Ії·Цѕ«БйУІ±ТЧчОЄКЦРш·СЕ¶ЎЈ")
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,150 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 150)
--	TriggerAction( 1, DelRoleCredit, 150 )
--	TriggerAction( 1, TakeItem, 855, 150)
--	TriggerAction( 1, GiveItem, 1095,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"99±¬ХЁ°ь: РиТЄГыЙщ150Ј¬ѕ«БйУІ±Т150ёц" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,200 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 200)
--	TriggerAction( 1, DelRoleCredit, 200 )
--	TriggerAction( 1, TakeItem, 855, 200)
--	TriggerAction( 1, GiveItem, 2844,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"µШУь4Іг»ъЖ±: РиТЄГыЙщ200Ј¬ѕ«БйУІ±Т200ёц" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,300 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 300)
--	TriggerAction( 1, DelRoleCredit, 300 )
--	TriggerAction( 1, TakeItem, 855, 300)
--	TriggerAction( 1, GiveItem, 3336,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"ЙсЛгІЭ: РиТЄГыЙщ300Ј¬ѕ«БйУІ±Т300ёц" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,1000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 1000)
--	TriggerAction( 1, DelRoleCredit, 1000 )
--	TriggerAction( 1, TakeItem, 855, 1000)
--	TriggerAction( 1, GiveItem, 3088,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"28ёс±і°ь: РиТЄГыЙщ1000Ј¬ѕ«БйУІ±Т1000ёц" ,MultiTrigger,GetMultiTrigger(),1)
--
--	InitTrigger()
--	TriggerCondition( 1, HasCredit,4700 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasItem, 855, 4700)
--	TriggerAction( 1, DelRoleCredit, 4700 )
--	TriggerAction( 1, TakeItem, 855, 4700)
--	TriggerAction( 1, GiveItem, 1028,1,4 )
--	TriggerAction( 1, JumpPage,10 )
--	TriggerFailure( 1, JumpPage, 11)
--	Text(12,"Д¦Б¦·ыКЇ: РиТЄГыЙщ4700Ј¬ѕ«БйУІ±Т4700ёц" ,MultiTrigger,GetMultiTrigger(),1)
--
--	Text(12, "Go back a page", JumpPage , 9 )
--
--	Talk( 10, "Р»Р»»Э№ЛЈ¬»¶У­ФЩґО№вБЩ")
--
--	Talk( 11, "Зл±ЈЦ¤ДъµД±і°ьБфУРїХёс,Н¬К±ґ¦УЪОґЛш¶ЁµДЧґМ¬,ТЄІ»ѕНКЗДъµДЙщНыІ»№»»тХЯѕ«БйУІ±ТІ»№»¶аЕ¶.....",CloseTalk)

	InitTrigger()
	TriggerCondition( 1, HasRecord, 255 )
	TriggerCondition( 1, NoItem, 4072, 1 )
	TriggerCondition( 1, NoRecord, 242 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )


	Start( GetMultiTrigger(), 1 )

	MisListPage(2)

	AddNpcMission	(268 )
	AddNpcMission	(269 )
	AddNpcMission	(288 )
	AddNpcMission	(502 )
	AddNpcMission	(334 )
	AddNpcMission	(6081 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ѕЖ°ЙЕ® - µЩДИЅбКш



----------------------------------------------------------
--							--
--							--
--		Малыш Даниэль[Аргент]				--
--							--
--		219350,273050				--
----------------------------------------------------------
-----------------------------------------------------------
function r_talk06 ()

	InitTrigger()
	TriggerCondition( 1, CheckRase, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, CheckRase, 2 )
	TriggerAction( 2, JumpPage, 1 )
	TriggerCondition( 3, CheckRase, 3 )
	TriggerAction( 3, JumpPage, 2 )
	TriggerCondition( 4, CheckRase, 4 )
	TriggerAction( 4, JumpPage, 2 )
	Start( GetMultiTrigger(), 4 )

	Talk( 1, "Малыш Даниэль: Юным авантюристам следует без опаски изучать мир. Их ждет множество прекрасных открытий. Ты бывал в великом пустынном храме? А в Одинокой башне в чаще Священного леса? Я кстати провожу тренировки юных Мореплаваталей. К сожалению ты не можешь у меня пройти обучение." )
	Text( 1, "Я хочу получить Генератор Древних ", JumpPage, 9 )
	Talk( 2, "Малыш Даниэль: Юным авантюристам следует без опаски изучать мир. Их ждет множество прекрасных открытий. Ты бывал в великом пустынном храме? А в Одинокой башне в чаще Священного леса? Я кстати провожу тренировки юных Мореплаваталей." )
	Text( 2, "Я хочу стать Мореплавателем", JumpPage, 3 )
	Text( 2, "Я хочу стать Покорителем Морей", JumpPage, 6 )
	--Text( 2, "Я хочу получить Генератор Древних ", JumpPage, 9 )
	Text( 2, "Приобрести навыки", BuyPage )
	--Text( 2, "Перезарядка коралла", OpenItemEnergy )
	--Text( 2, "Руководство по перезарядке кораллов", JumpPage, 13)
	Talk( 13, "Малыш Даниэль: Используй батарейку для пополнения энергии кораллов. После использования батарейка исчезает!" )
	
	InitTrade()
	Other(	3227	)
	Other(	3231	)
	Other(	3228	)
	Other(	3229	)
	Other(	3230	)
	Other(	3232	)

	Other(	3233	)
	Other(	3234	)
	Other(	3235	)
	Other(	3236	)
	Other(	3237	)

	Talk(3, "Малыш Даниэль: Погоди, мой дорогой друг! Тебе так интересно море? Знай, я могу тебя обучить мастерству мореплавателя, но знай, что профессия выбирается лишь 1 раз и навсегда. Ты готов стать настоящим Морским волком?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 4 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, SetProfession, 4  )
	TriggerAction( 1, GiveItem, 3227, 1, 4 )
	TriggerAction( 1, GiveItem, 73, 1, 4 )
	--TriggerAction( 1, GiveItem, 867, 1, 4 )
	TriggerAction( 1, JumpPage, 4 )
	TriggerAction( 1, Starteffect , 366)
	TriggerCondition( 2, LvCheck, ">", 9 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasLeaveBagGrid, 4 )
	TriggerCondition( 2, HasMoney, 5000 )
	TriggerAction( 2, TakeMoney, 5000 )
	TriggerAction( 2, SetProfession, 4  )
	TriggerAction( 2, GiveItem, 3227, 1, 4 )
	TriggerAction( 2, GiveItem, 73, 1, 4 )
	--TriggerAction( 2, GiveItem, 867, 1, 4 )
	TriggerAction( 2, JumpPage, 4 )
	TriggerAction( 2, Starteffect , 366)
	TriggerCondition( 3, LvCheck, ">", 9 )
	TriggerCondition( 3, IsCategory, 4 )
	TriggerCondition( 3, PfEqual, 0 )
	TriggerCondition( 3, HasLeaveBagGrid, 4 )
	TriggerAction( 3, SetProfession, 4  )
	TriggerCondition( 3, HasMoney, 5000 )
	TriggerAction( 3, TakeMoney, 5000 )
	TriggerAction( 3, GiveItem, 3227, 1, 4 )
	TriggerAction( 3, GiveItem, 73, 1, 4 )
	--TriggerAction( 3, GiveItem, 867, 1, 4 )
	TriggerAction( 3, Starteffect , 366)
	TriggerAction( 3, JumpPage, 4 )
	TriggerFailure( 3, JumpPage, 5 )
	Text(3, "Да, я готов стать Мореплавателем", MultiTrigger, GetMultiTrigger(), 3)
	Text(3, "Хм, я ещё подумаю.", CloseTalk)

	Talk(4, "Малыш Даниэль: Поздравляю! Ты прошел обучение, теперь ты Мореплаватель! Поднять паруса и вперед к приключениям!")

	Talk(5, "Малыш Даниэль: К сожалению нужные условия, что бы стать Мореплавателем не выполнены. Мореплавателем может стать Ланс, Филлис или Ами. Необходимо иметь 10 уровень. Так же у тебя не должно быть не какой другой професии.")

	Talk(6, "Малыш Даниэль: Погоди, мой дорогой друг! Тебе так интересно море? Знай, я могу тебя обучить мастерству Покорителя морей, но знай, что профессия выбирается лишь 1 раз и навсегда. Ты готов стать настоящим Морским волком?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 4 )
	TriggerCondition( 1, CheckConvertProfession, MIS_VOYAGE )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, SetProfession, 16 )
	TriggerAction( 1, Starteffect , 366)
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 4 )
	TriggerCondition( 2, CheckConvertProfession, MIS_VOYAGE )
	TriggerCondition( 2, HasLeaveBagGrid, 2 )
	TriggerCondition( 2, HasMoney, 50000 )
	TriggerAction( 2, TakeMoney, 50000 )
	TriggerAction( 2, SetProfession, 16 )
	TriggerAction( 2, Starteffect , 366)
	TriggerCondition( 3, LvCheck, ">", 39 )
	TriggerCondition( 3, IsCategory, 4 )
	TriggerCondition( 3, PfEqual, 4 )
	TriggerCondition( 3, CheckConvertProfession, MIS_VOYAGE )
	TriggerCondition( 3, HasLeaveBagGrid, 2 )
	TriggerCondition( 3, HasMoney, 50000 )
	TriggerAction( 3, TakeMoney, 50000 )
	TriggerAction( 3, SetProfession, 16 )
	TriggerAction( 3, Starteffect , 366)
	TriggerFailure( 3, JumpPage, 7 )
	Text(6, "Да, я готов стать Покорителем Морей", MultiTrigger, GetMultiTrigger(), 3)
	Text(6, "Хм, я ещё подумаю.", CloseTalk)

	Talk(7, "Малыш Даниэль: К сожалению нужные условия, что бы стать Покорителем морей не выполнены. Покорителем морей может стать Ланс, Филлис или Ами. Необходимо иметь 40 уровень. Так же у тебя должна быть 1 профессия мореплавателя.")

	InitTrigger()
	TriggerCondition( 1, HasItem, 3933, 50)
	TriggerCondition( 1, HasMoney, 70000)
	TriggerAction( 1, TakeItem, 3933, 50)
	TriggerAction( 1, TakeMoney, 70000)
	TriggerAction( 1, GiveItem, 1812, 1, 4)
	TriggerAction( 1, JumpPage, 10)
	TriggerFailure( 1, JumpPage, 11)
	Talk( 9, "Малыш Даниэль: Да ты знаток! Принеси мне 50 Деталей робота и 70.000 золотых, и я сделаю для тебя Генератор Древних." )
	Text( 9, "Вот держи",  MultiTrigger, GetMultiTrigger(), 1)
	Text( 9, "Хорошо, я подумаю", CloseTalk)

	Talk(11, "Малыш Даниэль: Увы, но у тебя нету 50 Деталей робота и 70.000 золотых для изготовления 1 Генератора Древних.")

	Talk(10, "Малыш Даниэль: Вот, держи. Я надеюсь, ты знаешь, что с ним делать? Иначе он бесполезен.")


--	AddNpcMission	(2999)	--Начальное снаряжение 
--	AddNpcMission	(1045)	--Жизнь мечника
---	AddNpcMission	(1099)	--Жизнь охотника
--	AddNpcMission	(1157)	--Жизнь знахарки
	AddNpcMission	(758)	--Путешествие Покорителя Морей
	AddNpcMission	(103)	--Жизнь Исследователя
	AddNpcMission	(191)	--Повышение Мореплавателя(Завершение от Наставницы)
	AddNpcMission	(192)	--Повышение Мореплавателя
	AddNpcMission	(193)	--Повышение Мореплавателя
	AddNpcMission	(197)	--Повышение Мореплавателя
--	AddNpcMission	(1225)	--Коммерция
	AddNpcMission	(503)	--Страшный Скелет войн
	AddNpcMission	(330)	--Тайна(Завершение)
	AddNpcMission	(331)	--Приветствие Джека
	AddNpcMission	(332)	--Слухи
	AddNpcMission	(335)	--Запутанная Любовь(Завершение)
	AddNpcMission	(359)	--Улучшение духа(Завершение)
	AddNpcMission	(360)	--Улучшение духа(Завершение)
	AddNpcMission	(361)	--Улучшение духа(Завершение)
	AddNpcMission	(362)	--Испытание
	AddNpcMission	(363)	--Испытание
	AddNpcMission	(364)	--Испытание
	AddNpcMission	(365)	--Испытание
	AddNpcMission	(366)	--Испытание
	AddNpcMission	(367)	--Испытание
	AddNpcMission	(368)	--Испытание
	AddNpcMission	(369)	--Испытание
	AddNpcMission	(370)	--Испытание
	AddNpcMission	(371)	--Испытание
	AddNpcMission	(522)	--Сердце Русалки

	AddNpcMission	(5058)	--Указания Санг Ди(Завершение)
	AddNpcMission	(5062)	--Просьба Даниеля

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<РЎЙЅіµЅбКш






----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[ФУ»хЙМИЛ - јЄЖХБў]			--
--							--
--		225075,277025				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk07 ()

	Talk( 1, "Джимбери: Привет тебе! Чем могу помочь?" )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Ничего...",CloseTalk )
	Text( 1, "Выкупить маску реальности",JumpPage, 2 )

	InitTrade()
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3296	)
	Other(	3299	)
	--baby--Йъ»ојјДЬКйLv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--leo
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
	--Other(	3288	)
	--Other(  2440    )
	Other(	854	)
	AddNpcMission	(5501)


	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Маска реальности стоит 1 Эльфийскую печать, 10 000 золотых и 10 единиц любых собранных ресурсов 3 ур." )
	Text( 2, "Обменять кости на Маску реальности", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "Exchange Razor Tooth for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Обменять Хрустальный эолит на Маску реальности", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Teak Wood Log to change a Reality Mask ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Обменять Рыбу-шар на Маску реальности", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Джимбери: Используйте это с умом!" )
	Talk( 4, "Джимбери: Похоже, тебе не хватает сырья. Или твой рюкзак заблокирован, или свободных ячеек слишком мало." )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ФУ»хЙМИЛ - јЄЖХБўЅбКш


----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[ѕУГсЎ¤ВкёсАцМШ]			--
--							--
--		227459,277722				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk08 ()

	Talk( 1, "Маргарита: Ты очень дальновиден! Не хочу показаться нескромной, но я каждый день смотрела по телевизору 'Железного босса'! Я просто восхитительно готовлю. Хи-хи." )
	Text( 1, "Выпечь печенье", JumpPage, 2)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Маргарита: У тебя есть интуиция, не то чтобы я преувеличиваю, но я смотрю 'железного повара' по телевизору каждый день! И пища, которую я делаю довольно вкусная, хе-хе." )
	Text( 2, "Смешать Сок эльфийского фрукта", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3117, 10 )
	TriggerAction( 1, TakeItem, 3117, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3123, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Приготовить Чай из красных фиников", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3118, 10 )
	TriggerAction( 1, TakeItem, 3118, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3124, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2, "Приготовить Грибной суп", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3119, 10 )
	TriggerAction( 1, TakeItem, 3119, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3125, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 2, "Приготовить Сок дурмана", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3120, 10 )
	TriggerAction( 1, TakeItem, 3120, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3126, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "Приготовить Мороженое", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Маргарита: Это то, что ты хотел, ни больше, ни меньше." )
	Talk( 4, "Маргарита: Извини, но тебе понадобится еще кое-что. Для сока из эльфийских фруктов нужно 10 Эльфийских фруктов и 1 Стакан." )
	Talk( 5, "Маргарита: Извини, у тебя нет нужных предметов. Для приготовления Чая из красных фиников нужны 10 Красных фиников и 1 Стакан." )
	Talk( 6, "Маргарита: Извини, но тебе понадобится еще кое-что. Для приготовления Грибного супа нужно 10 Грибов и 1 Стакан." )
	Talk( 7, "Маргарита: Извини, но тебе понадобится еще кое-что. Согласно рецепту, тебе нужны 10 Плодов дурмана и 1 Стакан." )
	Talk( 8, "Маргарита: Извини, но у тебя нет нужных вещей. Чтобы сделать Мороженое, нужно добыть 10 Ледяных фруктов и 1 Стакан." )
	AddNpcMission	(1023)
	AddNpcMission	(1080)
	AddNpcMission	(1135)
	AddNpcMission	(1186)
	AddNpcMission(	1223	)
	--AddNpcMission(	3024	)
	




end 


function r_talk09 ()
	
	
	Talk( 1, "Marriam: Hi, I am the Innkeeper. Want to stay for a few days? Or maybe a new hairstyle?" )		
	Text( 1, "Decoct Hair Colorant", JumpPage, 2)
	
	--Text(1, "Cook a delicious turkeyt", JumpPage, 10)
	--Text(1, "Cook Christmas meal", JumpPage, 13)
	
	
---------------------ЕлµчГАО¶µД»рј¦Ив
	InitTrigger()
	TriggerCondition( 1, HasItem, 2886, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2886,10 )
	TriggerAction( 1, GiveItem, 2895, 1 , 4)
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 12)
	Talk( 10, "Marriam: Want some extra juicy and delicious turkey meat? Bring me 10 slices of turkey meat and 10000 coins.")
	Text(10, "Подтвердить and Cook",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(11, "Marriam: The delicious turkey meat was cooked by me, come and try some to see how it tastes?" )

	Talk( 13, "Marriam: If you give me some Christmas roses, I can cook a Christmas Meal. Since it is a very demanding job, I will only cook this feast 3 times, and the cooking fee will become more expensive each time!")
	Text(13, "Cook Christmas Meal the First Time",  JumpPage, 15)
	Text(13, "Cook Christmas Meal the Second time",  JumpPage, 16)
	Text(13, "Cook Christmas Meal the Third time", JumpPage, 17)
	---------------------ЕлµчКҐµ®ґуІН
	InitTrigger()
	TriggerCondition( 1, NoRecord, 815 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 815 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 14 )
	Talk( 15, "ItЎЇs not easy to cook Christmas meal, I need 10 pieces of turkey meat , a Christmas Rose,and 10000 coins. A Christmas Rose can be found in the Item Mall and I will only cook the meal for each person 3 times at most.")
	Text( 15, "Подтвердить and Cook",  MultiTrigger, GetMultiTrigger(), 1)

	

	---------------------ЕлµчКҐµ®ґуІН
	InitTrigger()
	TriggerCondition( 1, HasRecord, 815 )
	TriggerCondition( 1, NoRecord, 816 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney,1000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction(1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 816 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage, 18 )
	Talk(16, "Want me to cook again? I need 10 pieces of turkey meat, a Christmas Rose and 1,000,000 coin.  A Christmas Rose can be found in the Item Mall and I will only cook the meal for each person 3 times at most.")
	Text( 16, "Подтвердить and Cook",  MultiTrigger, GetMultiTrigger(), 1)

	---------------------ЕлµчКҐµ®ґуІН
	InitTrigger()
	TriggerCondition( 1, HasRecord, 816 )
	TriggerCondition( 1, NoRecord, 817 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 10000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 817 )
	TriggerAction( 1, JumpPage, 11 )
	TriggerFailure( 1, JumpPage,19 )
	Talk(17, "Want me to cook again? I need 10 pieces of turkey meat, a Christmas Rose and 10,000,000 coin.  A Christmas Rose can be found in the Item Mall and I will only cook the meal for each person 3 times at most.")
	Text( 17, "Подтвердить and Cook",  MultiTrigger, GetMultiTrigger(), 1)
	Talk( 14, "Marriam: It seems you donЎЇt have enough items and money. You also need to make sure there is one available slot in your backpack. Is this your first time to let me cook Christmas meal? I will only do it 3 times. ")
	Talk( 18, "Marriam: It seems you donЎЇt have enough items and money. You also need to make sure there is one available slot in your backpack. Is this your second time to let me cook Christmas meal? I will only do it 3 times. ")
	Talk( 19, " It seems you donЎЇt have enough items and money. You also need to make sure there is one available slot in your backpack. Is this your third time to let me cook Christmas meal? I will only do it 3 times. ")
	Talk( 12, " It seems you donЎЇt have enough items and money. You also need to make sure there is one available slot in your backpack.")
------------------µчЕдємЙ«Иѕ·ўјБ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1787, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1787, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1797, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Marriam: Keeping the same color of hairdo will make you a boring person. I can decoct colored hair dyes for you if you wish." )
	Text( 2, "Decoct Red Colorant", MultiTrigger, GetMultiTrigger(), 1)
---------------------µчЕдіИЙ«Иѕ·ўјБ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1788, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1788, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1798, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Decoct Orange Colorant", MultiTrigger, GetMultiTrigger(), 1)
---------------------µчЕдєЪЙ«Иѕ·ўјБ
	InitTrigger()
	TriggerCondition( 1, HasItem, 4606, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 4606, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 4607, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "Decoct Black Colorant", MultiTrigger, GetMultiTrigger(), 1)
---------------------µчЕдєЦЙ«Иѕ·ўјБ
	InitTrigger()
	TriggerCondition( 1, HasItem, 4608, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 4608, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 4609, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 9 )
	Text( 2, "Decoct Brown Colorant", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Marriam: Look! Its done! Take this nice colorant with you." )
	Talk( 4, "Marriam: Red Colorant requires 5 Red Dye, 1 Special Gas, 1 Rainbow Glass and a 200G fee." )
	Talk( 5, "Marriam: Orange Colorant requires 5 Orange Dye, 1 Special Gas, 1 Rainbow Glass and 200G to decoct." )

--- в блок ибо нех	
--InitTrigger()
--TriggerCondition( 1, LvCheck, "<", 2 )
--TriggerAction( 1, AddExp, 116688305, 116688305 )
--TriggerAction( 1, AddExpAndType,2,370500,370500)
--TriggerAction( 1, AddMoney, 1000000 )
--TriggerFailure( 1, JumpPage, 7 )
--Talk( 6, "Marriam: To test PK, I will make you Lv 65 and add 1 million gold for you." )
--Text( 6, "Ok", MultiTrigger, GetMultiTrigger(), 1)

--Talk( 7, "Marriam: I only give this chance to level 1 new players." )

	Talk( 8, "Marriam: Black Colorant requires 5 Black Dye, 1 Special Gas, 1 Rainbow Glass and 200G to decoct." )
	Talk( 9, "Marriam: Brown Colorant requires 5 Brown Dye, 1 Special Gas, 1 Rainbow Glass and also 200G." )

	AddNpcMission	(1029)
	AddNpcMission	(1192)
	------------¶юФВ-----------ЗйОЄєООп-----------ЗгіЗЦ®Бµ------------РТФЛЦнЦн----------ЖЯЦнїЄМ©
	--AddNpcMission	(5505)   		--7ЦнїЄМ©
	--AddNpcMission	(5506)		--РТФЛЦнЦн
	--AddNpcMission	(5508)			--ЗгіЗЦ®Бµ
	--AddNpcMission	(5509)			--ЗгіЗЦ®Бµ
	AddNpcMission	(5536)		--ЗгіЗЦ®Бµ

end 

function r_talk11 ()
	
	
	Talk( 1, "Forbei:У меня есть загадка для вас, что 1 плюс 1? Хохо, его 2! Разве это не смешно? Нет? Не уходи!" )

	--Text( 1, "Ties up Dumpling", JumpPage,2)

	--Talk( 2, "0")
	--Text( 2, "Egg Yolk dumpling",JumpPage,3)
	--Text( 2, "Bean Paste Dumpling", JumpPage,4)
	--Text( 2, "Sticky Rice Dumpling", JumpPage,5)

	InitTrigger() --¶Т»»µ°»ЖфХ
	TriggerCondition( 1, HasItem, 3037, 1 )
	TriggerCondition( 1, HasItem, 3040, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3037, 1 )
	TriggerAction( 1, TakeItem, 3040, 1 )
	TriggerAction( 1, GiveItem,3043, 1,4 )
	TriggerFailure( 1, JumpPage, 6 ) 
	Talk(3, "Forbei: 1 Желток клецки строки + 1 теплый пельмень =1 яичный желток клецки. Яичный желток вареник может поднять защиту на 60 пунктов на 10 минут.")
	Text( 3, "Подтвердить",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --¶Т»»¶№ЙіфХ
	TriggerCondition( 1, HasItem, 3037, 1 )
	TriggerCondition( 1, HasItem, 3041, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 3037, 1 )
	TriggerAction( 1, TakeItem, 3041, 1 )
	TriggerAction( 1, GiveItem,3044, 1,4 )
	TriggerFailure( 1, JumpPage, 6 ) 
	Talk(4, "Forbei: 1 красная фасоль клецки строки + 1 теплый вареник=1 вареник красной фасоли. Клецки с красной фасолью может значительно увеличить скорость ходьбы на 15 минут.")
	Text( 4, "Подтвердить",MultiTrigger, GetMultiTrigger(), 1) 
	
	InitTrigger() --¶Т»»ЕґГЧфХ
	TriggerCondition( 1, HasItem, 3037, 1 )
	TriggerCondition( 1, HasItem, 3042, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 3037, 1 )
	TriggerAction( 1, TakeItem, 3042, 1 )
	TriggerAction( 1, GiveItem,3045, 1,4 )
	TriggerFailure( 1, JumpPage, 6 ) 
	Talk(5, "Forbei: 1 Sticky Rice Dumpling String + 1 Warm Dumpling=1 Sticky Rice Dumpling. Sticky Rice Dumpling can recover 35% HP")
	Text( 5, "Подтвердить",MultiTrigger, GetMultiTrigger(), 1) 
	
	Talk( 6, "Forbei: You do have have enough space to make a dumpling! Your bag could also be locked, please Подтвердить you have one space inside your inventory.")
	AddNpcMission	(1009)
	AddNpcMission	(1173)

	-----МъИЛБщПо
	AddNpcMission	(6123 )
	AddNpcMission	(6124 )
end 


function r_talk12 ()
	
	
	Talk( 1, "Коди: Привет, я - моряк Коди." )

--	InitTrigger()
--	TriggerCondition( 1, HasMission, 1043 )
--	TriggerCondition( 1, HasRecord, 1042 )
--	TriggerCondition( 1, NoRecord, 1058 )
--	TriggerAction( 1, JumpPage, 2 )
--	TriggerFailure( 1, JumpPage, 3 )
--	Text( 1, "First question",MultiTrigger, GetMultiTrigger(), 1 )
--
--	InitTrigger()
--	TriggerAction( 1, SetRecord, 1044 )
--	TriggerAction( 1, SetRecord, 1058 )
--	TriggerAction( 1, JumpPage, 4 )
--	Talk( 2, "Is killing Mystic Shrubs fun?")
--	Text( 2, "Good",MultiTrigger, GetMultiTrigger(), 1 )
--
--	InitTrigger()
--	TriggerAction( 1, SetRecord, 1045 )
--	TriggerAction( 1, SetRecord, 1058 )
--	TriggerAction( 1, JumpPage, 5 )
--	Text( 2, "Not happy",MultiTrigger, GetMultiTrigger(), 1  )


--	Talk( 3, "Who are you? I do not know you!")
--	Talk( 4, "Good? LetЎЇs continue.")
--	Talk( 5, "No satisfied? LetЎЇs change another for you to kill")

	AddNpcMission	(1039)
	AddNpcMission	(1202)
	AddNpcMission	(80)
	AddNpcMission	(81)
	AddNpcMission	(79)
	----------------јЄДбЛ№-єЈФЖ---01
	AddNpcMission	(5510)
	AddNpcMission	(6061 )
	AddNpcMission	(6062 )
	AddNpcMission	(6063 )
	AddNpcMission	(6064 )
	AddNpcMission	(6065 )
	AddNpcMission	(6066 )
	AddNpcMission	(6067 )
	AddNpcMission	(6068 )

end 


function r_talk13 ()
	
	
	Talk( 1, "Моника: Привет, я Банкир Моника. Со мной счета всегда будут в порядке." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 3000 )
	TriggerAction( 1, TakeMoney, 3000 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Хранилище (плата 3000 зол.)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Извини, похоже, у тебя не хватает денег" )

	AddNpcMission	(1050)
	AddNpcMission	(1212)
	AddNpcMission	(6091 )
	AddNpcMission	(6092 )
	AddNpcMission (113)

end 


function r_talk14 ()
	
	
	Talk( 1, "Вильям: Приветствую, я адмирал Вильям. Я здесь самый главный." )
	--Text( 1, "¶Т»»ѕьГ±", JumpPage, 3)
	Text( 1, "Ничего...",CloseTalk )

	Talk( 3, "Ню¶ыЛ№:ОТХвАпїЙТФУГѕьПОЦ¤Гч»»µГ·ЗіЈПЎУРµДѕьГ±Е¶." )
	Text( 3, "¶Т»»ЙЩРЈѕьГ±", JumpPage, 4)
	Text( 3, "¶Т»»ЦРРЈѕьГ±", JumpPage, 5)
	Text( 3, "¶Т»»ЙПРЈѕьГ±", JumpPage, 6)
	Text( 3, "¶Т»»Ѕ«ѕьѕьГ±", JumpPage, 7)
	Text( 3, "¶Т»»ФЄЛ§ѕьГ±", JumpPage, 8)
	
	Talk( 4, "Ню¶ыЛ№:ПлТЄ¶Т»»ЙЩРЈЦ®КЧ,Дг±ШРлёшОТ1ХЕЙЩРЈѕьПОЦ¤ГчІЕРР." )
	--------------¶Т»»ЙЩРЈЦ®КЧ
	InitTrigger()
	TriggerCondition( 1, HasItem, 68, 1 )
	TriggerAction( 1, TakeItem, 68, 1 )
	TriggerAction( 1, GiveItem, 90, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 4, "ОТТЄ¶Т»»", MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "ґУ",CloseTalk )

	Talk( 5, "Ню¶ыЛ№:ПлТЄ¶Т»»ЙЩРЈЦ®КЧ,Дг±ШРлёшОТ1ХЕЦРРЈѕьПОЦ¤ГчІЕРР." )
	--------------¶Т»»ЦРРЈЦ®КЧ
	InitTrigger()
	TriggerCondition( 1, HasItem, 69, 1 )
	TriggerAction( 1, TakeItem, 69, 1 )
	TriggerAction( 1, GiveItem, 91, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 5, "ОТТЄ¶Т»»", MultiTrigger, GetMultiTrigger(), 1)
	Text( 5, "ґУ",CloseTalk )

	Talk( 6, "Ню¶ыЛ№:ПлТЄ¶Т»»ЙПРЈЦ®КЧ,Дг±ШРлёшОТ1ХЕЦРРЈѕьПОЦ¤ГчІЕРР." )
	--------------¶Т»»ЙПРЈЦ®КЧ
	InitTrigger()
	TriggerCondition( 1, HasItem, 70, 1 )
	TriggerAction( 1, TakeItem, 70, 1 )
	TriggerAction( 1, GiveItem, 92, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 6, "ОТТЄ¶Т»»", MultiTrigger, GetMultiTrigger(), 1)
	Text( 6, "ґУ",CloseTalk )

	Talk( 7, "Ню¶ыЛ№:ПлТЄ¶Т»»Ѕ«ѕьЦ®КЧ,Дг±ШРлёшОТ1ХЕЦРРЈѕьПОЦ¤ГчІЕРР." )
	--------------¶Т»»Ѕ«ѕьЦ®КЧ
	InitTrigger()
	TriggerCondition( 1, HasItem, 71, 1 )
	TriggerAction( 1, TakeItem, 71, 1 )
	TriggerAction( 1, GiveItem, 93, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 7, "ОТТЄ¶Т»»", MultiTrigger, GetMultiTrigger(), 1)
	Text( 7, "ґУ",CloseTalk )

	Talk( 8, "Ню¶ыЛ№:ПлТЄ¶Т»»ФЄЛ§Ц®КЧ,Дг±ШРлёшОТ1ХЕЦРРЈѕьПОЦ¤ГчІЕРР." )
	--------------¶Т»»ФЄЛ§Ц®КЧ
	InitTrigger()
	TriggerCondition( 1, HasItem, 72, 1 )
	TriggerAction( 1, TakeItem, 72, 1 )
	TriggerAction( 1, GiveItem, 94, 1 , 4)
	TriggerFailure( 1, JumpPage, 10 )
	Text( 8, "ОТТЄ¶Т»»", MultiTrigger, GetMultiTrigger(), 1)
	Text( 8, "ґУ",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, GiveItem, 4082, 1, 4)
	Talk( 2, "Что? Что! Ты потерял свой пропуск? Правитель тебя никуда не пропустит без него! К счастью, у меня есть еще. Новый пропуск стоит 20 000 золотых, ты можешь купить его у меня.")
	Text( 2, "Да, я хотел бы купить Древний премиальный знак.", MultiTrigger, GetMultiTrigger(), 1)



	Talk( 10, "Ню¶ыЛ№:ЗлИ·±ЈДъЙнЙПУР¶ФУ¦µДѕьПОЦ¤Гч." )

	InitTrigger()
	TriggerCondition( 1, HasMission, 248 )
	TriggerCondition( 1, NoItem, 4082, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, HasRecord, 249 )
	TriggerCondition( 2, NoRecord, 250 )
	TriggerCondition( 2, NoItem, 4082, 1 )
	TriggerAction( 2, JumpPage, 2 )
	TriggerFailure( 2, JumpPage, 1 )

	Start( GetMultiTrigger(), 2 )

	AddNpcMission	(207 )
	AddNpcMission	(208 )
	AddNpcMission	(209 )
	AddNpcMission	(212 )
	AddNpcMission	(213 )
	AddNpcMission	(216 )
	AddNpcMission	(274 )
	AddNpcMission	(275 )
	AddNpcMission	(276 )
	AddNpcMission	(1016)
	AddNpcMission	(1179)
	AddNpcMission	(69)
	AddNpcMission	(70)
	AddNpcMission	(71)
	AddNpcMission	(194)
	AddNpcMission	(195)
	AddNpcMission	(196)
	AddNpcMission	(318)
	AddNpcMission	(323)
	AddNpcMission	(324)
----------eleven
	AddNpcMission	(5053)

	MisListPage(2)

end 


function r_talk15 ()
	
	
	Talk( 1, "Ксиба: Хоть я и посол, мне тоже нужно иногда отдыхать... Жизнь – это не только работа, нужно поддерживать баланс!" )

	AddNpcMission	(1032)
	AddNpcMission	(1195)
----------------ЗпµєїЄ·ў
	--AddNpcMission	(6177)

end 


function r_talk16 ()
	
	
	Talk( 1, "Рональд: Я надзираю за всей торговлей в Аргенте. Я могу рассказать тебе, как стать богатейшим Торговцем в Аскароне." )
	
	AddNpcMission	(271 )
	AddNpcMission	(277 )
	AddNpcMission	(278 )
	AddNpcMission	(280 )
	AddNpcMission	(286 )
------------1.7
	AddNpcMission	(5076 )
	AddNpcMission	(5077 )
	AddNpcMission	(5078 )
	AddNpcMission	(5079 )
	AddNpcMission	(5088 )
	AddNpcMission	(5110 )
	AddNpcMission	(5112 )
	AddNpcMission	(5114 )
	AddNpcMission	(5116 )
	AddNpcMission	(5147 )
end 


function r_talk17 ()
	Talk( 1, "Пачкуля: Клубничные бисквиты, которые печет Белди, - обьеденье!" )
	--AddNpcMission	(3023)	
	AddNpcMission	(266)	--1
	AddNpcMission	(267)	--2
	AddNpcMission	(270)	--3
	AddNpcMission	(272)	--4
	AddNpcMission	(273)	--5
	AddNpcMission	(337)	--6
	AddNpcMission	(338)	--7
	AddNpcMission	(554)	--8
	AddNpcMission	(555)	--9
	AddNpcMission	(901)	--10

	AddNpcMission	(5557)	--11
	AddNpcMission	(5558)	--12

	AddNpcMission	(6168)	--13
	AddNpcMission	(6169)	--14
	AddNpcMission	(6170)	--15
	AddNpcMission	(6173)	--16
	AddNpcMission	(6350)	--17
	AddNpcMission	(6351)	--18

	--AddNpcMission	(6126)
	AddNpcMission	(6094)
	AddNpcMission	(6167)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<АПХЯЎ¤єэНїЙЅИЛ

----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[»бі¤ЦъАнЎ¤ВЮТБ]			--
--							--
--		224075,275275				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk18 ()
	
	
	Talk( 1, "Рори: Хмм... Интересно, какой секрет хранит наш главарь? Мне очень хотелось бы это узнать..." )
	
	AddNpcMission	(76 )
	AddNpcMission	(77 )
	AddNpcMission	(78 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»бі¤ЦъАнЎ¤ВЮТБ

----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[В·ИЛЎ¤јЧ]				--
--							--
--		221588,282819				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk19 ()
	
	
	Talk( 1, "Странник - Джа: Из всех морских монстров Пузырчатый моллюск – самый страшный. Правда-правда. Однажды я видел во-от такого здоровенного у порта. Если бы Сакура XIII не выстрелила в него дротиком, горожанам было бы несдобровать!" )
	
	AddNpcMission	(6086 )
	AddNpcMission	(6089 )
	AddNpcMission	(6090 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<В·ИЛЎ¤јЧ

----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[ѕЖ№нЎ¤·ТµВДЪ]			--
--							--
--		236002,281965				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk20 ()

	Talk( 1, "Антоний: Что такое? Хочешь что-то выведать у меня? Значит, ты попал в самую точку. Но только деньги развяжут любой язык. За сведения придется платить. Введи в текст запроса '/?ключевое слово'" )

	--AddNpcMission	(500)	--1
	AddNpcMission	(501)	--2
	AddNpcMission	(358)	--3
	AddNpcMission	(372)	--4
	AddNpcMission	(6082)	--5
	AddNpcMission	(6301)	--6
	AddNpcMission	(6302)	--7
	AddNpcMission	(6304)	--8

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ѕЖ№нЎ¤·ТµВДЪ

----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[ЙЩДкЎ¤МЖµВ]			--
--							--
--		196225,269425				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk21 ()
	
	
	Talk( 1, "Томми: Привет, я Томми. А тебя как зовут? В последнее время чудовища совсем распоясались." )
	
	AddNpcMission	(210 )
	AddNpcMission	(211 )
	AddNpcMission	(1034)
	AddNpcMission	(1197)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ЙЩДкЎ¤МЖµВ

----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[ЦЖФмК¦Ў¤µВИшїЛ]			--
--							--
--		173269,278261				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk22 ()
	
	
	Talk( 1, "Дезмон: Наше ремесло куда лучше вашего. Но вы, слишком заносчивы, чтобы признать это." )
	
	AddNpcMission	(1054)
	AddNpcMission	(1216)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ЦЖФмК¦Ў¤µВИшїЛ


----------------------------------------------------------
--							--
--							--
--		°ЧТшіЗ[D°жЙМЎ¤ЧЯЛЅНГ]			--
--							--
--		2298,2520				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk23 ()
	
	
	Talk( 1, "Контрабандист Бунни: Запрещенные товары? У меня есть всё, что пожелаешь! Что тебе нужно?" )
	
	AddNpcMission	(1000)
	AddNpcMission	(1164)
			--------УЮИЛЅЪ
	--AddNpcMission	(5601)
	--AddNpcMission	(5602)
	--AddNpcMission	(5603)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<D°жЙМЎ¤ЧЯЛЅНГ


----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[єЈѕьЛѕБо№ЩЎ¤µВЛ№ЛюВЮ]		--
--							--
--		71350,141619				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk24 ()
	
	
	Talk( 1, "Дессаро: Приветствую, я главнокомандующий в Громограде. Хочешь к нам присоединиться?" )
	InitTrigger()
	--TriggerCondition( 1, HasCredit, 150 )
	--TriggerCondition( 1, HasMoney, 300000 )
	--TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerCondition( 1, NoGuild )
	TriggerAction( 1, CreateGuild, 0 )
	--TriggerAction( 1, TakeMoney, 300000 )
	--TriggerAction( 1, TakeCredit, 150 )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Создать Флотскую гильдию", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "Дессаро: Чтобы стать главой подразделения морского флота и доказать свою преданность, тебе нужно заплатить 300 000 золотых и принести Камень клятвы и иметь 150 репутации" )
        
	AddNpcMission	(566)
	AddNpcMission	(477)
	AddNpcMission	(478)
	AddNpcMission	(6087 )
	AddNpcMission	(6088 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<єЈѕьЛѕБо№ЩЎ¤µВЛ№ЛюВЮ


----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[ѕЖ°Й·юОсФ±Ў¤ГЧДИ]			--
--							--
--		99053,133465				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk25 ()
	
	
	Talk( 1, "Мона: Привет! Ты знаешь знаменитую пиратку Сакуру XIII? Она мой идеал! Как бы я хотела уйти из этого скучного места и стать пиратом, как она!" )
	AddNpcMission	(1022)
	AddNpcMission	(1079)
	AddNpcMission	(1134)
	AddNpcMission	(1185)
	AddNpcMission	(378)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ѕЖ°Й·юОсФ±Ў¤ГЧДИ

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[Л®КЦЎ¤µП°В]			--
--							--
--		108330,128563				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk26 ()
	
	
	Talk( 1, "Привет! Я Моряк Дио. Будь осторожен на море. Там много страшных монстров, особенно акулы. Они тебе ногу откусят! Как у меня! Ох… моя ноженька..." )
	AddNpcMission	(1038)
	AddNpcMission	(1092)
	AddNpcMission	(1150)
	AddNpcMission	(1201)
----------------јЄДбЛ№---Л®КЦЎ¤µП°В--01
	AddNpcMission	(5535 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Л®КЦЎ¤µП°В






----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[ѕьТЅЎ¤ВкЙі]			--
--							--
--		77300,154900				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk28 ()
	
	
	Talk( 1, "Маса: С тобой что-то не так? Я военный врач Громограда. Если у тебя всего лишь маленький порез, обращаться ко мне даже не стоит." )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Ничего...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)
	Other(	3904	)
	Other(	3911	)

	AddNpcMission	(1024)
	AddNpcMission	(1081)
	AddNpcMission	(1136)
	AddNpcMission	(1187)
	----------------1.7
	AddNpcMission	(5130 )
	AddNpcMission	(5131 )
	AddNpcMission	(5132 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ѕьТЅЎ¤ВкЙі

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[ТшРРіцДЙЎ¤ВкїЁ¶а]			--
--							--
--		74300,153400				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk29 ()
	
	
	Talk( 1, "Макурдо: Привет, добро пожаловать в Банк Громограда." )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 30000 )
	TriggerAction( 1, TakeMoney, 30000 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Хранилище (плата 30000 зол.)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Извини, похоже, у тебя не хватает денег" )

	AddNpcMission	(1049)
	AddNpcMission	(1103)
	AddNpcMission	(1159)
	AddNpcMission	(1211)
	AddNpcMission	(320)
	AddNpcMission	(375)
	AddNpcMission	(376)
	AddNpcMission	(377)
	AddNpcMission	(432)
	AddNpcMission	(560)
	AddNpcMission	(561)
	AddNpcMission	(542)
	AddNpcMission	(562)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ТшРРіцДЙЎ¤ВкїЁ¶а


----------------------------------------------------------
--							--
--							--
--		Кузнец Фарлингтон [Громоград]			--
--							--
--		76662,144769				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk30 ()
	
	
	Talk( 1, "Фарлингтон: Ну как? Плавится? Хе-хе!" )
	Text( 1, "Очистить", JumpPage, 2)
	Text( 1, "Ничего...",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, HasItem, 1784, 10 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1784, 10 )
	TriggerAction( 1, GiveItem, 1785, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Фарлингтон: Ковать это... Ковать то... Ковать се... Я целый день только ковкой и занимаюсь ...Хр-р-р-р." )
	Text( 2, "Очистить кусок звенящего кристалла",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3, "Фарлингтон: Чтобы сделать Кусоу звенящего кристалла мне нужно 10 шт. Звенящего песка и 200 золотых. Приходи когда раздобудешь все необходимое." )
	Talk( 4, "Фарлингтон: Я могу переработать Звенящий песок (10) в Кусок звенящего кристалла. За мои услуги придется заплатить 200 золотых." )
	AddNpcMission	(1042)
	AddNpcMission	(1094)
	AddNpcMission	(1153)
	AddNpcMission	(1205)


	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<МъЅіЎ¤·рАКёз
----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[ЙЩЕ®Ў¤РБµЩ]			--
--							--
--		74026,145143				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk31 ()
	
	
	Talk( 1, "Синди: Привет, я люблю всякие симпатичные вещи. Если вдруг найдешь симпатичные вещи, сохрани их для меня!" )
	
	--Text( 1, "Дворец овна-вампира (Квест Гороскопа)", JumpPage,6 )
	--Text( 1, "Награда в состязании моряков", JumpPage,8 )
	--Text( 1, "Награда в состязании пиратов", JumpPage,11 )
	--Text( 1, "Капитанская награда за выполнение", JumpPage,12 )
	Text( 1, "Приготовить краситель для волос", JumpPage, 2)

	Talk( 6, "Синди: Пожалуйста, выбери испытание в порядке роста сложности, от Моряка до Капитана. Чем труднее испытание, тем щедрее награда. Ты уже сделал выбор? Смотри, потом не пожалей." )

	InitTrigger()
	TriggerCondition( 1, NoRecord,834 )
	TriggerCondition( 1, NoRecord,835 )
	TriggerAction( 1, SetRecord, 833 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "Моряк",MultiTrigger_1, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,833 )
	TriggerCondition( 1, NoRecord,835 )
	TriggerAction( 1, SetRecord, 834 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "Пират",MultiTrigger_2, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,834 )
	TriggerCondition( 1, NoRecord,833 )
	TriggerAction( 1, SetRecord, 835 )
	TriggerAction( 1, SetRecord, 836 )
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 6, "Капитан",MultiTrigger_3, GetMultiTrigger(), 1)

	Talk( 7, "Удачи!" )
  



	InitTrigger()
	TriggerCondition( 1, HasRecord,833 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )
	--TriggerAction( 1, SetLog  , 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 1 , 4)
	TriggerAction( 1, AddMoney, 10000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 8, "Синди: Собери 7 Эмблем, чтобы обменять на Печать Овна и билет в следующий дворец. Будут и другие награды" )
	Text( 8, "Подтвердить обмен",MultiTrigger_0, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasRecord,834 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 3 , 4)
	TriggerAction( 1, AddMoney, 50000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 11, "Синди: Собери 7 Эмблем, чтобы обменять на Печать Овна и билет в следующий дворец. Будут и другие награды" )
	Text( 11, "Подтвердить обмен",MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasRecord,835 )
	TriggerCondition( 1, HasItem, 2944, 1 )
	TriggerCondition( 1, HasItem, 2945, 1 )
	TriggerCondition( 1, HasItem, 2946, 1 )
	TriggerCondition( 1, HasItem, 2947, 1 )
	TriggerCondition( 1, HasItem, 2948, 1 )
	TriggerCondition( 1, HasItem, 2949, 1 )
	TriggerCondition( 1, HasItem, 2950, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2944, 1 )
	TriggerAction( 1, TakeItem, 2945, 1 )
	TriggerAction( 1, TakeItem, 2946, 1 )
	TriggerAction( 1, TakeItem, 2947, 1 )
	TriggerAction( 1, TakeItem, 2948, 1 )
	TriggerAction( 1, TakeItem, 2949, 1 )
	TriggerAction( 1, TakeItem, 2950, 1 )

	TriggerAction( 1, GiveItem, 2942, 1 , 4)
	TriggerAction( 1, GiveItem, 2943, 1 , 4)
	TriggerAction( 1, GiveItem, 3094, 5 , 4)
	TriggerAction( 1, AddMoney, 80000 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk( 12, "Синди: Собери 7 Эмблем, чтобы обменять на Печать Овна и билет в следующий дворец. Будут и другие награды" )
	Text( 12, "Подтвердить обмен",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 10, "Похоже, у тебя мало эмблем. Убедись, что твой рюкзак не заблокирован и что в нем найдется не менее 3 свободных ячеек. Кстати, насчет выбранного испытания: ты не передумал?")
	Talk( 9, "Синди: Дворец Тельца - это много сложных заданий!")
	Talk( 13, "Синди: Выбрать уровень сложности можно лишь во время соревнования в Дворце овна")

	InitTrigger()
	TriggerCondition( 1, HasItem, 1789, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1789, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1799, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Синди: Хочешь такой же цвет волос, как у меня? Давай, я помогу тебе сделать краску." )
	Text( 2, "Приготовить Желтый краситель",MultiTrigger, GetMultiTrigger(), 1)
---------------µчЕдВМЙ«Иѕ·ўјБ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1790, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1790, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1800, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Приготовь Зеленый Краситель",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Синди: Я еще новичок в этом деле. Пожалуйста, будь терпелив. Вот краситель, которые ты хотел." )
	Talk( 4, "Синди: Могу сделать Желтый краситель. Только принеси мне 5 Желтых красок, 1 Особый газ, 1 Радужный стакан и 200 золотых." )
	Talk( 5, "Синди: Я могу приготовить Зеленый краситель. Для этого принеси мне Зеленую краску (5), Особый газ (1), 1 Радужный стакан и 200 золотых." )
	AddNpcMission	(1036)
	AddNpcMission	(1090)
	AddNpcMission	(1148)
	AddNpcMission	(1199)
	AddNpcMission	(867)
	AddNpcMission	(863)
	------------------------------------------°ЧСт
	--AddNpcMission	(5536)
	AddNpcMission	(5537)
	AddNpcMission	(5538)
	AddNpcMission	(5539)
	AddNpcMission	(5540)
	AddNpcMission	(5541)

	--AddNpcMission	(5542)
	AddNpcMission	(5543)
	AddNpcMission	(5544)
	AddNpcMission	(5545)
	AddNpcMission	(5546)
	AddNpcMission	(5547)

	--AddNpcMission	(5548)
	AddNpcMission	(5549)
	AddNpcMission	(5550)
	AddNpcMission	(5551)
	AddNpcMission	(5552)


	--AddNpcMission	(5597)
	AddNpcMission	(5600)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ЙЩЕ®Ў¤РБµЩ


----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[Йіб°Ч¤АЧцЄ±¤ґуК№Ў¤°ЈµВјУ]		--
--							--
--		71220,150827				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk32 ()
	
	
	Talk( 1, "Аликс: Здравствуй, я Посол Шайтана Аликс. Не был ли ты там на днях? Я по нему скучаю." )
	AddNpcMission	(1033)
	AddNpcMission	(1088)
	AddNpcMission	(1145)
	AddNpcMission	(1196)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Йіб°Ч¤АЧцЄ±¤ґуК№Ў¤°ЈµВјУ

----------------------------------------------------------
--										--
--										--
--		Инструменты - Уэсли (Громоград)	--
--										--
--		74100,156300					--
----------------------------------------------------------
----------------------------------------------------------
function r_talk33 ()
	
	
	Talk( 1, "Уэсли: Привет! Здравствуй-здравствуй! Я тоже новичок в этом городе. Прошу, навещай меня почаще." )

	AddNpcMission	(1008)
	AddNpcMission	(1063)
	AddNpcMission	(1118)
	AddNpcMission	(1172)
	AddNpcMission	(850)
	AddNpcMission	(861)
	AddNpcMission	(868)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<µАѕЯЙМИЛЎ¤РЭІјАоО¬Л№

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[ВГ№ЭАП°еЎ¤ВкСЕЖЕЖЕ]		--
--							--
--		69761,154269				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk34 ()
	
	
	Talk( 1, "Бабушка Майя: Здравствуй, мой постоялый двор закрыт, потому что мне нездоровится." )
	AddNpcMission	(1030)
	AddNpcMission	(1086)
	AddNpcMission	(1139)
	AddNpcMission	(1193)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ВГ№ЭАП°еЎ¤ВкСЕЖЕЖЕ

----------------------------------------------------------
--							--
--							--
--		Портной Дитер [Громоград]			--
--							--
--		75450,151200				--
----------------------------------------------------------
-----------------------------------------------------------
function r_talk35 ()
	
	
	Talk( 1, "Дитер: Привет! Мы сейчас закрыты, но для тебя кое-что найдется." )
	Text( 1, "Ничего",CloseTalk )

	AddNpcMission	(1010)
	AddNpcMission	(1066)
	AddNpcMission	(1122)
	AddNpcMission	(1174)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·юЧ°µкЦчЎ¤µПАЦ

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[°ЧТшіЗЧ¤АЧцЄ±¤ґуК№Ў¤ТБЛю¶а]		--
--							--
--		74171,155325				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk36 ()
	
	
	Talk( 1, "Ята: Успеха добились только хитрые купцы! Ха-ха." )
	AddNpcMission	(1003)
	AddNpcMission	(1058)
	AddNpcMission	(1113)
	AddNpcMission	(1167)
	AddNpcMission	(6025 )
	AddNpcMission	(6026 )
	AddNpcMission	(6027 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<°ЧТшіЗЧ¤АЧцЄ±¤ґуК№Ў¤ТБЛю¶а

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[»¤ОАі¤Ў¤еИВФїЛ]			--
--							--
--		79600,148800				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk37 ()
	
	
	Talk( 1, "Маллак: Здравствуй! Я Страж Громограда." )
	Text( 1, "Ничего...",CloseTalk )

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 1 )
	TriggerCondition( 1, HasItem, 1673, 1 )
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerAction( 1, TakeItem, 1673, 1 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, SetProfession, 10 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 2 )
	TriggerCondition( 2, PfEqual, 1 )
	TriggerCondition( 2, HasItem, 1673, 1 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeItem, 1673, 1 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetProfession, 10  )
	TriggerAction( 2, JumpPage, 3 )
	TriggerFailure( 2, JumpPage, 4 )

--	Talk(2, "Pirates and monsters are rampant nowadays. We are lacking of Swordsman to deal with them. Hmm...You look suitable to become a Swordsman. Want to consider being the one to defend the peace?")
--	Text(2, "Ok, become a White Knight", MultiTrigger, GetMultiTrigger(), 2)
--	Text(2, "No, it is good enough for now.", CloseTalk)

--	Talk(3, "Keeping the peace is the job of a White Knight. Please remember this in your heart.")

--	Talk(4, "Want to become a White Knight? Come back to me when you have reached Lv 40. You must train your swordsmanship well. Remember to bring 1 Strange Metal Fragment and 20000G as a proof of your training too.")
	

	
	
	
		

	----------ЧЄЦ°іЙОЄЅЈ¶ЬКї
	--TriggerCondition( 1, LvCheck, ">", 39 )
	--TriggerCondition( 1, IsCategory, 1 )
	--TriggerCondition( 1, PfEqual, 1 )
	--TriggerAction( 1, JumpPage, 2 )

	--TriggerCondition( 2, LvCheck, ">", 39 )
	--TriggerCondition( 2, IsCategory, 2 )
	--TriggerCondition( 2, PfEqual, 1 )
	--TriggerAction( 2, JumpPage, 2 )

-------------------ЧЄѕС»чКЦЕР¶П

	AddNpcMission	(1019)
	AddNpcMission	(1074)
	AddNpcMission	(1130)
	AddNpcMission	(1182)
	AddNpcMission	(852)
	AddNpcMission	(855)
	AddNpcMission	(865)
	AddNpcMission	(473)

	MisListPage(5)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»¤ОАі¤Ў¤еИВФїЛ

----------------------------------------------------------
--							--
--							--
--		Бакалейщик Каду [Громоград]			--
--							--
--		72500,155100				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk38 ()
	
	
	Talk( 1, "Каду: Привет! Ты как раз во-время! У нас здесь рекламная акция. Когда поднимешься выше 10 уровня, я предоставлю тебе специальную скидку на свои товары. А, возможно, и дополнительный опыт!" )
	Text( 1,"Обмен", SendExchangeData23 )

	
	Text( 1,"Получить снаряжение",SendExchangeXData)

	
	InitExchangeX()
	ExchangeDataX	(	8141	,	90	,	8577	,	1	)
	ExchangeDataX	(	8142	,	5	,	3422	,	1	)
	ExchangeDataX	(	8142	,	90	,	3423	,	1	)
	ExchangeDataX	(	8143	,	25	,	4288	,	1	)
	ExchangeDataX	(	8143	,	100	,	2842	,	1	)
	
	InitExchange23()
	DoExchange23()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()



	AddNpcMission	(1053)
	AddNpcMission	(1107)
	AddNpcMission	(1163)
	AddNpcMission	(1215)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ФУ»хЙМИЛЎ¤№ѕаЅ

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[ЙЩЕ®Ў¤ВЮАт]			--
--							--
--		101653,128642				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk39 ()
	
	
	Talk( 1, "Риоли: Ты всюду побывал. Видел адмирала флота Вильяма? С тех пор, как его перевели в Аргент, у нас здесь царит скукотища." )
	AddNpcMission	(1035)
	AddNpcMission	(1089)
	AddNpcMission	(1147)
	AddNpcMission	(1198)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ЙЩЕ®Ў¤ВЮАт

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[єЈѕьЧЬІїЦё»У№ЩЎ¤»щ.°ЈЛ№ОчЧјЅ«]	--
--							--
--		80800,152100				--
---------------------2005-3-8-------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk40 ()
	
	
	Talk( 1, "Генерал Кен: Чует мое сердце, Макси втянет меня в неприятности. Хоть я и отослал его охранять другой пост, уверен, он и там устроит неразбериху. Из-за него у меня всегда проблемы..." )
	AddNpcMission	(1017)
	AddNpcMission	(1071)
	AddNpcMission	(1127)
	AddNpcMission	(1180)
---------------°ЧСт
	AddNpcMission	(5575)
	AddNpcMission	(5576)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<єЈѕьЧЬІїЦё»У№ЩЎ¤»щ.°ЈЛ№ОчЧјЅ«

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[єЈѕьЧЬІїІОД±і¤Ў¤ВкСЗЧИЙЩРЈ]		--
--							--
--		65323,150512				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk41 ()
	
	
	Talk( 1, "Полковник Макси: Привет, я полковник Макси. Генерал Кен поручил мне руководить этим участком. Хе-хе! Обожаю устраивать для него разные неприятности...­Хе-хе!" )
	
	AddNpcMission	(849)
	AddNpcMission	(856)
	AddNpcMission	(858)
	AddNpcMission	(860)
	AddNpcMission	(866)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<єЈѕьЧЬІїІОД±і¤Ў¤ВкСЗЧИЙЩРЈ

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[Д¦¶ыїЛИЛєуТбЎ¤·Ж¶щ]		--
--							--
--		65146,158595				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk42 ()
	
	
	Talk( 1, "Фрея: Разве вы не зовете нас демонами? Не лезь ко мне, заносчивый тип!" )
	
	AddNpcMission	(851)
	AddNpcMission	(853)
	AddNpcMission	(854)
	AddNpcMission	(862)
	AddNpcMission	(864)


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Д¦¶ыїЛИЛєуТбЎ¤·Ж¶щ

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[»¤ОАЎ¤ДбЛЙ]			--
--							--
--		71187,141438				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk43 ()
	
	
	Talk( 1, "Ниссон: Я близкий друг Сонни, мы одни из лучших гвардейцев Флота." )

	AddNpcMission	(859)
	AddNpcMission	(857)
	-------------»¤ОАЎ¤ДбЛЙ-------Л«ЧУ
	AddNpcMission	(5690)
	AddNpcMission	(5691)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»¤ОАЎ¤ДбЛЙ

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[»¤ОАЎ¤ЛЙДб]			--
--							--
--		71536,141462				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk44 ()
	
	
	Talk( 1, "Сонни: Какие могут быть счеты между друзьями?" )

	AddNpcMission	(474)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»¤ОАЎ¤ЛЙДб

----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[В·ИЛЎ¤±ы]				--
--							--
--		66976,155428				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk45 ()
	
	
	Talk( 1, "Бай: В Громограде возле гавани есть славный трактир. Но для меня он слишком далеко." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<В·ИЛЎ¤±ы


----------------------------------------------------------
--							--
--							--
--		АЧцЄ±¤[В·ИЛЎ¤°Н±И]				--
--							--
--		99475,123473				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk46 ()
	
	
	Talk( 1, "Барабей: Здорово! Ты бывший пират? Громоград кишит матросами. Пираты сюда носа не кажут!" )
	Text( 1, "Очистить", JumpPage, 2)

--------------Б¶ФмµШЅр
	InitTrigger()
	TriggerCondition( 1, HasItem, 1782, 10 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 1782, 10 )
	TriggerAction( 1, GiveItem, 1783, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Барабей: Моя работа - соединять эти обломки руды в большой кусок." )
	Text( 2, "Очистить Терранское золото", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Барабей: Я дам тебе Терранской Золотой Руды. Но только не жалей об этом в будующем..." )
	Talk( 4, "Барабей: Терранский золотой? Принеси мне 10 самородков Терранской золотой руды и 2000 золотых на обмен." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<В·ИЛЎ¤°Н±И

----------------------------------------------------------
--							--
--							--
--		Верховный жрец - Геньон			--
--							--
--		86299,350092				--
 
-----------------------------------------------------------
function r_talk47 ()

	

	Talk( 1, "Геньон: Здравствуй, друг мой! Да пребудет с тобой богиня Кара! Я Верховный жрец города Шайтана Геньон. Я обучаю юнных Знахарок. К сожалению я не могу заняться твоим обучением." )
	Text( 1, "Приобрести навыки", BuyPage)
	
	Talk( 2, "Геньон: Здравствуй, друг мой! Да пребудет с тобой богиня Кара! Я Верховный жрец города Шайтана Геньон. Я обучаю юнных Знахарок. Чем я могу тебе помочь?" )
	Text( 1, "Стать Знахаркой", JumpPage, 12 )
	Text( 1, "Стать Целительницей", JumpPage, 15 )
	Text( 1, "Стать Колдуньей", JumpPage, 17 )
	Text( 2, "Приобрести навыки", BuyPage)

	InitTrade()
	Other(	3206	)
	Other(	3208	)
	Other(	3205	)
	Other(	3242	)
	Other(	3210	)
	Other(	3207	)
	Other(	3211	)
	Other(	3215	)
	Other(	3212	)
	Other(	3209	)
	Other(	3220	)
	Other(	3222	)
	Other(	3219	)
	Other(	3218	)
	Other(	3216	)
	Other(	3223	)
	Other(	3217	)
	Other(	3224	)


--[[	Talk( 2, "Геньон: Я исследую древние руны. Принесешь достаточное количество рун, обменяю тебе их на что-нибудь стоящее." )
	--Text( 2, "Экиперовка скелета", JumpPage, 3)
	--Text( 2, "Экиперовка заклинаний", JumpPage, 4)
	--Text( 2, "Экиперовка исчезновения", JumpPage, 5)
	Text( 2, "Экиперовка потаенного", JumpPage, 6)

	Talk( 3, "Геньон: Экиперовка скелета - это снаряжение 30-го уровня из Затерянного города. Тебе понадобится 10 рун Нал и 10 рун Сол. На какую профессию интересует?" )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3400, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "Получить экиперовку Мечника", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3401, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "Получить экиперовку Охотника", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3402, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "Получить экиперовку Знахарки", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerAction( 1, TakeItem, 3425, 10 )
	TriggerAction( 1, TakeItem, 3426, 10 )
	TriggerAction( 1, GiveItem, 3403, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 3, "Получить экиперовку Мореплавателя", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "Геньон: Экиперовка заклинаний - это снаряжение 40-го уровня из Затерянного города и Темной топи. Тебе понадобится 10 рун Эль и 10 рун Кам. На какую профессию интересует?" )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3404, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Получить экиперовку Воителя", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3405, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Получить экиперовку Чемпиона", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3406, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Получить экиперовку Стрелка", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3407, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Получить экиперовку Целительницы", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3408, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Получить экиперовку Колдуньи", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3428, 10 )
	TriggerCondition( 1, HasItem, 3429, 10 )
	TriggerAction( 1, TakeItem, 3428, 10 )
	TriggerAction( 1, TakeItem, 3429, 10 )
	TriggerAction( 1, GiveItem, 3409, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 4, "Получить экиперовку Покорителя морей", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 5, "Геньон: Набор исчезновения - это снаряжение 50-го уровня из Мира демонов. Принеси мне 10 рун Джа и 10 рун Теф. На какую профессию интересует?" )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3410, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Получить экиперовку Воителя", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3411, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Получить экиперовку Чемпиона", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3412, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Получить экиперовку Стрелка", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3413, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Получить экиперовку Целительницы", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3414, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Получить экиперовку Колдуньи", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 3415, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 5, "Получить экиперовку Покорителя морей", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 6, "Геньон: Набор потаенного - это снаряжение 60-го уровня из Мира демонов. Принеси мне 10 рун Тер и 10 рун Фа. На какую профессию интересует?" )

	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3416, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Получить экиперовку Воителя", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3417, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Получить экиперовку Чемпиона", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3418, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Получить экиперовку Стрелка", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3419, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Получить экиперовку Целительницы", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3420, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Получить экиперовку Колдуньи", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3455, 10 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 10 )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, GiveItem, 3421, 1 , 4)
	TriggerFailure( 1, JumpPage, 30 )
	Text( 6, "Получить экиперовку Покорителя морей", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 5 )
	TriggerAction( 1, GiveItem, 1000, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 9, "Геньон: Что? У тебя есть Осколки иллюзии? Я могу их поменять на чертежи. Какой тебя интересует?" )
	Text( 9, "5 Осколков на 1 Чертеж пачкули", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 30 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 30 )
	TriggerAction( 1, GiveItem, 1001, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "30 Осколков на 1 Зашифрованный чертеж", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 100 )
	TriggerAction( 1, GiveItem, 1002, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "100 Осколков на 1 Запечатанный чертеж", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2324, 500 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2324, 500 )
	TriggerAction( 1, GiveItem, 1003, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 9, "500 Осколков на 1 Чертеж призыва", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4656, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 10, "Геньон: У тебя есть Сердце иллюзии? Я могу тебе предложить за него очень занятные кольца на 60 уровень. Какое интересует?" )
	Text( 10, "Получить Пламя ярости", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4657, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "Получить Булыжник", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4658, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "Получить Ветер благородной души", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4659, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "Получить Сплетенный хлыст из ротанга", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2325, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2325, 1 )
	TriggerAction( 1, GiveItem, 4660, 1 , 4)
	TriggerFailure( 1, JumpPage, 11 )
	Text( 10, "Получить Чудесная вода", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 11, "Геньон: У тебя нет вещей, которые можно обменять. Возможно, твой рюкзак заблокирован или в нем не хватает свободных ячеек." )	]]--

	Talk(12, "Геньон: Погоди, мой дорогой друг! Тебе так интересна магия? Знай, я могу тебя обучить мастерству Знахакаря, но знай, что профессия выбирается лишь 1 раз и навсегда. Для того чтоб пройти курс знахарки тебе надо быть выше 9 уровня и иметь при себе 5000 золотых. Ты готов освоить путь магии?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, IsCategory, 3 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, SetProfession, 5  )
	TriggerAction( 1, GiveItem, 3206, 1, 4 )
	TriggerAction( 1, GiveItem, 97, 1, 4 )
	TriggerAction( 1, JumpPage, 13 )
	TriggerAction( 1, Starteffect , 366)
	TriggerCondition( 2, LvCheck, ">", 9 )
	TriggerCondition( 2, IsCategory, 4 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasLeaveBagGrid, 2 )
	TriggerCondition( 2, HasMoney, 5000 )
	TriggerAction( 2, TakeMoney, 5000 )
	TriggerAction( 2, SetProfession, 5  )
	TriggerAction( 2, GiveItem, 3206, 1, 4 )
	TriggerAction( 2, GiveItem, 97, 1, 4 )
	TriggerAction( 2, JumpPage, 13 )
	TriggerAction( 2, Starteffect , 366)
	TriggerFailure( 2, JumpPage, 14 )
	Text(12, "Да, я готов стать Знахаркой.",MultiTrigger, GetMultiTrigger(), 2)
	Text(12, "Мне нужно ещё подумать", CloseTalk)

	Talk(13, "Геньон: Поздравляю! Ты прошел обучение, теперь ты Знахарка! Помни твои магические способности должны служить силам добра!")

	Talk(14, "Геньон: К сожалению нужные условия, что бы стать Знахаркой не выполнены. Знахаркой может стать Филлис или Ами. Необходимо иметь 10 уровень. Так же у тебя не должно быть не какой другой професии.")

	Talk(15, "Геньон: Погоди, мой дорогой друг! Тебе так интересна магия? Знай, я могу тебя обучить мастерству Целительницы, но знай, что профессия выбирается лишь 1 раз и навсегда. Для того чтоб стать Целительницей тебе нужно иметь при себе 50.000 золотых и быть выше 40 уровня. Ты готов освоить путь магии?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 3 )
	TriggerCondition( 1, PfEqual, 5 )
	TriggerCondition( 1, CheckConvertProfession, MIS_CLERGY )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, SetProfession, 13 )
	TriggerAction( 1, Starteffect , 366)
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 4 )
	TriggerCondition( 2, PfEqual, 5 )
	TriggerCondition( 2, CheckConvertProfession, MIS_CLERGY )
	TriggerCondition( 2, HasLeaveBagGrid, 2 )
	TriggerCondition( 2, HasMoney, 50000 )
	TriggerAction( 2, TakeMoney, 50000 )
	TriggerAction( 2, SetProfession, 13 )
	TriggerAction( 2, Starteffect , 366)
	TriggerFailure( 2, JumpPage, 16 )
	Text(15, "Да, я готов стать Целительницей.",MultiTrigger, GetMultiTrigger(), 2)
	Text(15, "Мне нужно ещё подумать", CloseTalk)

	Talk(16, "Геньон: К сожалению нужные условия, что бы стать Целительницей не выполнены. Целительницей может стать Филлис или Ами. Необходимо иметь 40 уровень. Так же у тебя должна быть 1 профессия знахарки.")

	Talk(17, "Геньон: Погоди, мой дорогой друг! Тебе так интересна магия? Знай, я могу тебя обучить мастерству Колдуньи, но знай, что профессия выбирается лишь 1 раз и навсегда. Ты готов освоить путь магии?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 3 )
	TriggerCondition( 1, PfEqual, 5 )
	TriggerCondition( 1, CheckConvertProfession, MIS_SEALER )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, SetProfession, 14 )
	TriggerAction( 1, Starteffect , 366)
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 4 )
	TriggerCondition( 2, PfEqual, 5 )
	TriggerCondition( 2, CheckConvertProfession, MIS_SEALER )
	TriggerCondition( 2, HasLeaveBagGrid, 2 )
	TriggerCondition( 2, HasMoney, 50000 )
	TriggerAction( 2, TakeMoney, 50000 )
	TriggerAction( 2, SetProfession, 14 )
	TriggerAction( 2, Starteffect , 366)
	TriggerFailure( 2, JumpPage, 18 )
	Text(17, "Да, я готов стать Колдуньей.",MultiTrigger, GetMultiTrigger(), 2)
	Text(17, "Мне нужно ещё подумать", CloseTalk)

	Talk(18, "Геньон: К сожалению нужные условия, что бы стать Колдуньей не выполнены. Колдуньей может стать Филлис или Ами. Необходимо иметь 40 уровень. Так же у тебя должна быть 1 профессия знахарки.")

--	AddNpcMission	(719)	--Патент о благочестии
	AddNpcMission	(102)	--Жизнь знахарки
	AddNpcMission	(416)	--Последователи Аши
	AddNpcMission	(751)	--Прогулка Целительницы
	AddNpcMission	(755)	--Колдовские пути
	--AddNpcMission	(95)	--Карьера знахарки(Завершение от Наставницы)
	AddNpcMission	(96)	--Карьера знахарки
	AddNpcMission	(97)	--Карьера знахарки
	AddNpcMission	(151)	--Карьера знахарки(Завершение)
	AddNpcMission	(1227)	--Коммерция
	AddNpcMission	(342)	--Завет(Завершение)
	AddNpcMission	(343)	--Завет(Завершение)
	AddNpcMission	(344)	--Завет(Завершение)
	AddNpcMission	(345)	--Завет(Завершение)
	AddNpcMission	(346)	--Тест Богини
	AddNpcMission	(347)	--Тест Богини
	AddNpcMission	(348)	--Тест Богини
	AddNpcMission	(349)	--Тест Богини
	AddNpcMission	(350)	--Тест Богини
	AddNpcMission	(351)	--Тест Богини
	AddNpcMission	(352)	--Тест Богини
	AddNpcMission	(353)	--Тест Богини
	AddNpcMission	(354)	--Тест Богини
	AddNpcMission	(355)	--Тест Богини

	AddNpcMission	(5009)	--Суп памяти
	AddNpcMission	(5015)	--Черная жемчужина
	AddNpcMission	(5017)	--Капсула Памяти
	AddNpcMission	(5024)	--Красивое прошлое
	AddNpcMission	(5028)	--Любовная часть
	AddNpcMission	(5031)	--Сера
	AddNpcMission	(5059)	--Указания Санг Ди(Завершение)
	AddNpcMission	(5064)	--Просьба Ганьона

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ґуЙс№ЩЎ¤ёКµШО¬А­


----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[КПЧеі¤Ў¤°ўІј¶аВЮ.Ао]		--
--							--
--		90374,364023				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk48 ()

	Talk( 1, "Альбуда: Приветствую, я Предводитель клана. Чем могу помочь?" )

	InitTrigger()
	TriggerCondition( 1, HasMission, 1014)
	TriggerCondition( 1, HasRecord, 1013)
	TriggerCondition( 1, NoRecord, 1059)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "Выбери путь Перерождения",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1059)
	TriggerCondition( 1, HasNOZSExp )
	TriggerCondition( 1, NoRecord, 1056)
	TriggerAction( 1, JumpPage, 5)
	TriggerFailure( 1, JumpPage, 6)
	Text( 1, "Можно заново выбрать путь Перерождения",MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "Уйти", CloseTalk)

	InitTrigger()
	TriggerAction( 1, SetRecord, 1015)
	TriggerAction( 1, SetRecord, 1059)
	TriggerAction( 1, JumpPage, 4)
	Talk( 2, "Альбуда: Существуют два пути перождения. Пойдя по сложному ты столкнешься с очень сильными боссами. Однако легкая ветка гораздо длинее сложной. Выбор за тобой.")
	Text( 2, "Трудный путь",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerAction( 1, SetRecord, 1016)
	TriggerAction( 1, SetRecord, 1059)
	TriggerAction( 1, JumpPage, 4)
	Text( 2, "Длинный путь",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 3, "Альбуда: Так ты выбираешь путь Перерождения? Да или нет?")

	Talk( 4, "Альбуда: Да прибудет с тобой богиня. Вперед!")

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1016)
	TriggerCondition( 1, HasMoney, 5000000)
	TriggerAction( 1, ClearRecord, 1016)
	TriggerAction( 1, SetRecord, 1015)
	TriggerAction( 1, TakeMoney, 5000000)
	TriggerAction( 1, JumpPage, 7)
	TriggerFailure( 1, JumpPage, 8)
	Talk( 5, "Альбуда: Заплатив 5 миллионов золота, вы сможете выбрать другой путь.")
	Text( 5, "Сложный путь",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasRecord, 1015)
	TriggerCondition( 1, HasMoney, 5000000)
	TriggerAction( 1, ClearRecord, 1015)
	TriggerAction( 1, SetRecord, 1016)
	TriggerAction( 1, TakeMoney, 5000000)
	TriggerAction( 1, JumpPage, 7)
	TriggerFailure( 1, JumpPage, 8)
	Text( 5, "Длинный путь",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Альбуда: Так ты выбираешь путь Перерождения? Да или нет?")

	Talk( 7, "Альбуда: Теперь ты можешь следовать по новому пути.")

	Talk( 8, "Альбуда: Ты не выбрал путь перерождение или ты его ещё начал. Это для тех, кто жалеет о своем выборе.")

	AddNpcMission	(231)	--1
	AddNpcMission	(232)	--2
	AddNpcMission	(234)	--3
	AddNpcMission	(1037)	--4
	AddNpcMission	(1091)	--5
	AddNpcMission	(1149)	--6
	AddNpcMission	(1200)	--7
	AddNpcMission	(1228)	--8
	AddNpcMission	(327)	--9
	AddNpcMission	(339)	--10
	AddNpcMission	(340)	--11
	AddNpcMission	(6017)	--12
	AddNpcMission	(6018)	--13
	AddNpcMission	(6352)	--14
	AddNpcMission	(6353)	--15

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<КПЧеі¤Ў¤°ўІј¶аВЮ.Ао


----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[µАѕЯµкЦчЎ¤Е·µФ]			--
--							--
--		86214,359121				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk49 ()
	
	
	Talk( 1, "Ойа: Заходи, посмотри, что у меня есть. Мои снадобья сделаны по секретным рецептам туземцев." )
	Text( 1, "Приготовить Восстанавливающее зелье", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3129, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeItem, 3129, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, GiveItem, 3133, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Ойа: Чтобы восстановить МН, необходимо зелье. Я могу сварить его для тебя." )
	Text( 2, "Сварить Лакричное зелье", MultiTrigger, GetMultiTrigger(), 1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 5 )
	TriggerFailure( 1, JumpPage, 6 )
	Text( 2, "Смешать Сок эльфийского фрукта", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3130, 10 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3130, 10 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3134, 1 , 4)
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 2, "Сварить Чай 'Бодрячок'", MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Ойа: Деньги вперед... Вот твое лакричное зелье" )
	Talk( 4, "Ойа: Ох... чтобы приготовить 1 Лакричное зелье, понадобятся Целебная трава (10) и 1 бутылка. А еще нужно будет заплатить 50 зол." )
	Talk( 5, "Ойа: Деньги вперед... Вот твой Сок из эльфийских фруктов" )
	Talk( 6, "Ойа: Прости, у тебя нет необходимых предметов. Для приготовления Сок эльфийского фрукта нужны 10 Эльфийских фруктов и 1 Стакан." )
	Talk( 7, "Ойа: Деньги вперед... Вот твой Чай 'Бодрячок'" )
	Talk( 8, "Ойа: Ох... чтобы приготовить Чай 'Бодрячок' (1), понадобятся 10 Лепестков многоцвета и 1 бутылка. А еще нужно будет заплатить 50 золотых." )

	AddNpcMission( 1007 )
	AddNpcMission( 1117 )
	AddNpcMission( 1171 )
	AddNpcMission(	1062	)
	AddNpcMission(	1229	)
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<µАѕЯµкЦчЎ¤Е·µФ


----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[·юЧ°µкЦчЎ¤ДЄСЗ]			--
--							--
--		89463,360213				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk50 ()
	
	
	Talk( 1, "Мойа: В моей семье все портные. Выбирай, что тебе нравится." )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Ничего...",CloseTalk )

	InitTrade()
	Defence(	0365	)
	Defence(	0541	)
	Defence(	0717	)
	Defence(	0372	)
	Defence(	0548	)
	Defence(	0724	)
	Defence(	0366	)
	Defence(	0542	)
	Defence(	0718	)
	Defence(	0373	)
	Defence(	0549	)
	Defence(	0725	)
	Defence(	0368	)
	Defence(	0544	)
	Defence(	0720	)
	Defence(	0374	)
	Defence(	0550	)
	Defence(	0726	)
	Defence(	0367	)
	Defence(	0543	)
	Defence(	0719	)
	Defence(	0375	)
	Defence(	0551	)
	Defence(	0727	)
	Defence(	0369	)
	Defence(	0545	)
	Defence(	0721	)
	Defence(	0376	)
	Defence(	0552	)
	Defence(	0728	)
	Defence(	0370	)
	Defence(	0546	)
	Defence(	0722	)
	Defence(	0378	)
	Defence(	0554	)
	Defence(	0730	)
	Defence(	0371	)
	Defence(	0547	)
	Defence(	0723	)
	Defence(	0379	)
	Defence(	0555	)
	Defence(	0731	)
	Defence(	0383	)
	Defence(	0559	)
	Defence(	0735	)
	Defence(	0359	)
	Defence(	0535	)
	Defence(	0711	)
	Defence(	0381	)
	Defence(	0557	)
	Defence(	0733	)
	Defence(	0360	)
	Defence(	0536	)
	Defence(	0712	)
	Defence(	0389	)
	Defence(	0565	)
	Defence(	0741	)
	Defence(	0361	)
	Defence(	0537	)
	Defence(	0713	)
	Defence(	0390	)
	Defence(	0566	)
	Defence(	0742	)
	Defence(	0362	)
	Defence(	0538	)
	Defence(	0714	)
	Defence(	0385	)
	Defence(	0561	)
	Defence(	0737	)
	Defence(	0363	)
	Defence(	0539	)
	Defence(	0715	)
	Defence(	0392	)
	Defence(	0568	)
	Defence(	0744	)
	Defence(	0388	)
	Defence(	0564	)
	Defence(	0740	)
	Defence(	0382	)
	Defence(	0558	)
	Defence(	0734	)
	Defence(	0391	)
	Defence(	0567	)
	Defence(	0743	)


	AddNpcMission	(715 )
	AddNpcMission	(1011)
	AddNpcMission	(1068)
	AddNpcMission	(1123)
	AddNpcMission	(1175)
	AddNpcMission(	1230	)
	



end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·юЧ°µкЦчЎ¤ДЄСЗ

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[ТшРРіцДЙЎ¤ЦмµПЛ№]			--
--							--
--		90637,353900				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk51 ()
	
	
	Talk( 1, "Юдис: Здравствуй! Добро пожаловать в банк города Шайтан! Чем могу помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 3000 )
	TriggerAction( 1, TakeMoney, 3000 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Хранилище (плата 3000 зол.)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Извини, похоже, у тебя не хватает денег" )

	AddNpcMission	(1051)
	AddNpcMission	(1104)
	AddNpcMission	(1160)
	AddNpcMission	(1213)
	AddNpcMission(	1231	)
-------eleven
	AddNpcMission(	5012	)	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ТшРРіцДЙЎ¤ЦмµПЛ№

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[ёЫОА¶УіЙФ±Ў¤рСріІЭ]		--
--							--
--		86734,366071				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk52 ()
	
	
	Talk( 1, "Франко: Я хотел поступить на Флот. Но я всем приношу несчастья. Однажды в открытом море на нас напало 10 пиратских кораблей. Старших по званию раздели, оставив в одном исподнем. Они так разозлились на меня, что отправили в Шайтан, сторожить это место." )
	Text( 1, "Ничего...",CloseTalk )
	
	
	----------------ЧЄЦ°іЙОЄСµКЮК¦
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, HasMoney, 20000 )
	TriggerCondition( 1, HasItem, 3364, 1 )
	TriggerAction( 1, TakeItem, 3364, 1 )
	TriggerAction( 1, TakeMoney, 20000 )
	TriggerAction( 1, SetProfession, 11 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerCondition( 2, HasItem, 3364, 1 )
	TriggerAction( 2, TakeItem, 3364, 1 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, SetProfession, 11  )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )

--	Talk(5, "SighЎ­it's a pity that you are not a Beast Tamer. I believed that you have the ability to become one. Let me teach you how!")
--	Text(5, "Ok, I will become a Beast Tamer", MultiTrigger, GetMultiTrigger(), 2)
--	Text(5, "No, it is good enough for now.", CloseTalk)

--	Talk(6, "How is it? I knew you are born to be a Beast Tamer!")

--	Talk(7, "Want to become a Beast Tamer? Come back to me when you have reached Lv 40. Train your hunter skills well as they are important foundation for you to advance further. Remember to bring 1 Clarity Crystal and 20000G too.")


	--TriggerCondition( 2, LvCheck, ">", 39 )
	--TriggerCondition( 2, IsCategory, 1 )
	--TriggerCondition( 2, PfEqual, 2 )
	--TriggerAction( 2, JumpPage, 5 )
	--TriggerCondition( 3, LvCheck, ">", 39 )
	--TriggerCondition( 3, IsCategory, 3 )
	--TriggerCondition( 3, PfEqual, 2 )
	--TriggerAction( 3, JumpPage, 5 )
	

	--Start( GetMultiTrigger(), 1 )
	

	AddNpcMission	(243 )
	AddNpcMission	(244 )
	AddNpcMission	(1012)
	AddNpcMission	(1069)
	AddNpcMission	(1124)
	AddNpcMission	(1176)
	AddNpcMission	(88)
	AddNpcMission	(89)
	AddNpcMission	(90)
	AddNpcMission(	1232	)
	



	
	MisListPage(5)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ёЫОА¶УіЙФ±Ў¤рСріІЭ

----------------------------------------------------------
--							--
--							--
--		Кузнец Коваль			--
--							--
--		90424,349871				--
----------------------------------------------------------
-----------------------------------------------------------
function r_talk53 ()

	Talk( 1, "Коваль: Привет! Здесь у меня огромный выбор оружия! За просмотр денег не беру!" )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Ремонт", OpenRepair )
	Text( 1, "Комбинировать", OpenUnite)
	Text( 1, "Ковка", OpenForge)
	--Text( 1, "Купить свитки плавки ", JumpPage, 3 )
	Text( 1, "Смотреть ещё ", JumpPage, 2 )
	Text( 2, "Плавка", OpenMilling)
	Text( 2, "Плавка аппарелей", OpenFusion)
	Text( 2, "Усовершенствование аппарелей", OpenUpgrade)
	Text( 2, "Извлечение самоцвета", OpenGetStone )
	Text( 2, "Получить украшение", SendExchangeXData )
	Text( 2, "Назад ", JumpPage, 1 )
	Text( 2, "Ничего...",CloseTalk )
	Text( 1, "Ничего...",CloseTalk )
	
	Talk( 3, "Хочешь купить свиток плавки? сколько ъочешь купить свитков? Цена одного свитка 100к, будешь брать?" )
		InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 100000)
	TriggerAction( 1, GiveItem, 453,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Один свиток за 100к ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 200000)
	TriggerAction( 1, GiveItem, 453,2, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Два свитка за 200к ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 300000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 300000)
	TriggerAction( 1, GiveItem, 453,3, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Три свитка за 300к ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 400000)
	TriggerAction( 1, GiveItem, 453,4, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Четыре свитка за 400к ",MultiTrigger, GetMultiTrigger(), 1 )
		InitTrigger()
	TriggerCondition( 1, HasMoney, 500000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 500000)
	TriggerAction( 1, GiveItem, 453,5, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Пять свитков за 500к ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "Назад ", JumpPage, 1 )
	Talk( 5, "Не все условия выполнены " )
	
		InitExchangeX()
	--Мечи 
ExchangeDataX	(	8142	,	15	,	5001	,	1	)
ExchangeDataX	(	8142	,	15	,	5008	,	1	)
ExchangeDataX	(	8142	,	20	,	5002	,	1	)
ExchangeDataX	(	8142	,	20	,	5007	,	1	)
--Молот
ExchangeDataX	(	8142	,	30	,	5003	,	1	)
ExchangeDataX	(	8142	,	40	,	5009	,	1	)
--Пистолеты\Луки
ExchangeDataX	(	8142	,	30	,	5005	,	1	)
ExchangeDataX	(	8142	,	40	,	5011	,	1	)
ExchangeDataX	(	8142	,	30	,	5448	,	1	)
ExchangeDataX	(	8142	,	40	,	5612	,	1	)
--Посохи
ExchangeDataX	(	8142	,	30	,	5006	,	1	)
ExchangeDataX	(	8142	,	40	,	5012	,	1	)
ExchangeDataX	(	8142	,	30	,	5004	,	1	)
ExchangeDataX	(	8142	,	40	,	5010	,	1	)

--Аппы Ланса за медь
ExchangeDataX	(	8141	,	20	,	8823	,	1	)
ExchangeDataX	(	8141	,	30	,	8821	,	1	)
ExchangeDataX	(	8141	,	40	,	8822	,	1	)
ExchangeDataX	(	8141	,	50	,	8824	,	1	)
ExchangeDataX	(	8141	,	60	,	8825	,	1	)
ExchangeDataX	(	8141	,	70	,	8826	,	1	)
--Аппа Карциза
ExchangeDataX	(	8141	,	20	,	8829	,	1	)
ExchangeDataX	(	8141	,	30	,	8827	,	1	)
ExchangeDataX	(	8141	,	40	,	8828	,	1	)
ExchangeDataX	(	8141	,	50	,	8830	,	1	)
ExchangeDataX	(	8141	,	60	,	8831	,	1	)
ExchangeDataX	(	8141	,	70	,	8832	,	1	)
--Аппы Филис
ExchangeDataX	(	8141	,	20	,	8835	,	1	)
ExchangeDataX	(	8141	,	30	,	8833	,	1	)
ExchangeDataX	(	8141	,	40	,	8834	,	1	)
ExchangeDataX	(	8141	,	50	,	8836	,	1	)
ExchangeDataX	(	8141	,	60	,	8837	,	1	)
ExchangeDataX	(	8141	,	70	,	8838	,	1	)
--Аппы Ами
ExchangeDataX	(	8141	,	20	,	8841	,	1	)
ExchangeDataX	(	8141	,	30	,	8839	,	1	)
ExchangeDataX	(	8141	,	40	,	8840	,	1	)
ExchangeDataX	(	8141	,	50	,	8842	,	1	)
ExchangeDataX	(	8141	,	60	,	8843	,	1	)
--ExchangeDataX	(	8141	,	70	,	8844	,	1	)

	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0097	)
	Weapon(	0104	)
	Weapon(	0098	)
	Weapon(	0105	)
	Weapon(	0099	)
	Weapon(	0106	)
	Weapon(	0101	)
	Weapon(	0107	)
	Weapon(	0102	)
	Weapon(	0108	)
	Weapon(	0100	)
	Weapon(	4301	)
	Weapon(	0103	)
	Weapon(	4302	)
	Weapon(	1427	)
	Weapon(	1428	)
	Weapon(	1429	)
	Weapon(	1430	)
	Weapon(	1431	)
	Weapon(	1432	)
	Weapon(	1433	)
	Weapon(	1434	)
	Weapon(	1435	)
	Weapon(	1436	)
	Weapon(	1437	)
	Weapon(	1438	)
	Weapon(	1440	)
	Weapon(	1441	)
	Weapon(	1462	)
	Weapon(	1463	)
	Weapon(	1464	)
	Weapon(	1465	)
	Weapon(	1466	)
	Weapon(	1467	)
	Weapon(	1468	)
	Weapon(	1469	)
	Weapon(	1470	)
	Weapon(	1471	)
	Weapon(	1472	)
	Weapon(	1473	)
	Weapon(	1475	)
	Weapon(	1476	)

	Other(		)
	Other(		)
	Other(		)
	AddNpcMission	(713 )
	AddNpcMission	(1043)
	AddNpcMission	(1095)
	AddNpcMission	(1154)
	AddNpcMission	(1206)
	AddNpcMission	(91)
	AddNpcMission	(92)
	AddNpcMission	(93)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<МъЅіЎ¤Н­Н­№Д




--------------------------------------------------------------МъЅіµДНЅµЬ 
function mmm_talk04 ()
	Text( 1, "Узнать о ковке", JumpPage, 2 )
	Text( 1, "Узнать о комбинировании", JumpPage, 3 )
	Text( 1, "Узнать о плавке", JumpPage, 7 )
	Text( 1, "Ничего...",CloseTalk )
	
	
	Talk( 2, "Ученик кузнеца: за выкованную вещь придется дорого заплатить. Тебе понадобится катализатор - Очищающий самоцвет такого же уровня, как и твой предмет. Потом выбери самоцветы, которыми украсишь свой предмет. Каждый придает предмету особые свойства и накладывает свои ограничения. Самоцветы должны принадлежать тому же уровню, что и предмет. Хочешь выковать его?" )
	Text( 2, "Об Очищающем самоцвете", JumpPage, 4)
	Text( 2, "О самоцветах", JumpPage, 5)
	Text( 2, "Узнать о шансах на успешную ковку", JumpPage, 6)
	
	Talk( 3, "Ученик кузнеца: Хочешь что-нибудь соединить? Насколько мне известно, тебе понадобится свиток соединения со списком необходимых предметов. Собери все, что тебе понадобится, и поговори с Бакалейщиком - Амосом в Шайтане. Только он владеет искусством соединения." )
	
	Talk( 4, "Ученик кузнеца: Без Очищающих самоцветов ничего не выкуешь. Самоцвет должен соответствовать уровню предмета. Самоцветы высших уровней можно получить, составляя низшие или убивая монстров." )

	Talk( 5, "Ученик Кузнеца: Существует множество самоцветов для ковки - огненный самоцвет атаки, водяной самоцвет защиты, священный духовный самоцвет... Самоцветы высшего уровня можно получить, убивая чудовищ, или путем соединения." )

	Talk( 6, "Ученик кузнеца: Чем выше уровень выковываемого предмета, тем ниже шанс удачной ковки. Максимальный уровень создаваемого предмета - 27. При неудачной ковке используемые в ней предметы исчезнут." )
	
	Talk( 7, "Ученик кузнеца: Для плавки предметов тебе необходимо приготовить 1 Стабилизатор и 1 Катализатор, чтобы сделать слот." )

end

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[АтДИ]				--
--							--
--		88307,352019				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk54 ()
	
	
	Talk( 1, "Лена: Привет! Я жена Коваля." )
	Text( 1, "Приготовить краситель для волос", JumpPage, 2)

----------------µчЕдЗаЙ«Иѕ·ўјБ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1791, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1791, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1801, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Лена: Думаю, к твоим волосам этот цвет подойдет. Или приготовить тебе краску для волос?" )
	Text( 2, "Приготовить Голубой краситель",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Ну, как? Этот тот краситель, который ты хотел?" )
	Talk( 4, "Лена: Чтобы приготовить Голубой краситель, нужны Голубая краска (5), Особый газ (1), 1 Радужный стакан и 200 золотых." )
	
	AddNpcMission	(1146)
	AddNpcMission	(155)
	AddNpcMission	(156)
	AddNpcMission	(157)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<АтДИ

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[ФУ»хЙМИЛЎ¤°¬Д«]			--
--							--
--		84040,358567				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk55 ()
	
	
	Talk( 1, "Амос: Привет, у нас есть все новинки. К другим торговцам даже и не ходи." )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Комбинировать", OpenUnite)
	Text( 1, "Ничего...",CloseTalk )
	Text( 1, "Выкупить маску реальности",JumpPage, 2 )

	InitTrade()
	
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other( 3296 )
	Other( 886 )
	--baby--Йъ»ојјДЬКйLv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--Leo
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
	--Other(	3288	)
	--Other(  2440    )
	Other(	854	)

	AddNpcMission	(1161)
	AddNpcMission	(152)
	AddNpcMission	(153)
	AddNpcMission	(154)
	--AddNpcMission	(5500)

	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Маска реальности стоит 1 Эльфийскую печать, 10 000 золотых и 10 единиц любых собранных ресурсов 3 ур." )
	Text( 2, "Обменять кости на Маску реальности", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "Exchange Razor Tooth for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Обменять Хрустальный эолит на Маску реальности", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Тиковое бревно на Маску реальности", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Обменять Рыбу-шар на Маску реальности", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Джимбери: Используйте это с умом!" )
	Talk( 4, "Амос: Судя по всему, тебе не хватает сырья. А может, твой рюкзак заблокирован или в нем недостает свободных ячеек." )

end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ФУ»хЙМИЛЎ¤°¬Д«

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[ВГµкАП°еЎ¤№юёщ]			--
--							--
--		81035,349813				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk56 ()
	
	
	Talk( 1, "Харкен: Привет! Негде остановиться? Наверху есть комната для двоих." )
	Text( 1, "Приготовить изысканный десерт", JumpPage, 2)


--------------------µчЕдОеІКБрБ§Ц­
	InitTrigger()
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasItem, 3121, 4 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3121, 4 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 3127, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "аркен: Год выдался удачным для торговли. Весь мой товар пользовался огромным спросом." )
	Text( 2, "Смешать Сок Радужных фруктов",MultiTrigger, GetMultiTrigger(), 1)

----------------µчЕдЧЫєП№ыЦ­
	InitTrigger()
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasItem, 3122, 1 )
	TriggerCondition( 1, HasItem, 3123, 1 )
	TriggerCondition( 1, HasItem, 3124, 1 )
	TriggerCondition( 1, HasItem, 3125, 1 )
	TriggerCondition( 1, HasMoney, 50 )
	TriggerAction( 1, TakeMoney, 50 )
	TriggerAction( 1, TakeItem, 3122, 1 )
	TriggerAction( 1, TakeItem, 3123, 1 )
	TriggerAction( 1, TakeItem, 3124, 1 )
	TriggerAction( 1, TakeItem, 3125, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 3128, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Приготовить Фруктовый коктейль",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Молодой человек, вот напиток, который ты хотел приготовить. Будь осторожен с ним. Это самый популярный напиток в городе." )
	Talk( 4, "Харкен: Прости, у тебя нет необходимых предметов. Для приготовления Сока радужных фруктов нужны 4 Радужных фрукта, 1 Радужный стакан и 50 золотых." )
	Talk( 5, "Харкен: Извини, у тебя нет нужных ингридиентов. Для приготовления Фруктового коктейля нужны 1 Сок эльфийского фрукта, 1 Чай из красных фиников, 1 Грибной суп, 1 Сок плодов дурмана, 1 Радужный стакан и вдобавок 50 золотых." )
	AddNpcMission	(1138)
	AddNpcMission	(1161)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ВГµкАП°еЎ¤№юёщ

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[»¤КїРЎЅгЎ¤АјАј]			--
--							--
--		87954,356282				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk57 ()
	
	
	Talk( 1, "Ленди: Привет, я Сиделка Ленди. Я еще учусь, поэтому исцеляю пока посредственно. Сейчас я не смогу вылечить тебя. Если тебе что-нибудь нужно, поищи Врача - Шайлу в (903,3646)." )
	AddNpcMission	(1129)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»¤КїРЎЅгЎ¤АјАј

--------------------------------------------------
--							--
--							--
--		Йіб°іЗ[єЈµБЎ¤µВїЛ]			--
--							--
--		794,3669				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk58 ()
	
	
	Talk( 1, "Деки: Эй! Я Деки, главарь Вервольфов-пиратов! В списке разыскиваемых флотом преступников я значусь седьмым. Почему я тебе об этом рассказываю? Потому, что я не боюсь флота! Хе-хе!" )
	

	--Text( 1, "ГО»ГЛ«ЧУ№¬(ЦХј«12№¬ЧЁУГИООс)", JumpPage,2 )

	Talk( 2, "єЈµБЎ¤µВїЛ:ЗлСЎФсДгТЄґі№ШµДДС¶И,ґУЛ®КЦµЅґ¬і¤ДС¶ИТАґОјУґу,µ±И»БЛДС¶ИФЅёЯЅ±АшФЅ·бєс.ДгПлєГБЛВр?Ц»ДЬСЎФсТ»ґО,І»їЙТФєу»ЪЕ¶" )

	InitTrigger()
	TriggerCondition( 1, NoRecord,1204 )
	TriggerCondition( 1, NoRecord,1161 )
	TriggerCondition( 1, HasItem, 3027, 1 )---------Л«ЧУГЕЖ±
	TriggerAction( 1, TakeItem, 3027, 1 )----------Л«ЧУГЕЖ±
	TriggerAction( 1, SetRecord, 1159 )
	TriggerAction( 1, SetRecord, 1162 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Моряк",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1159 )
	TriggerCondition( 1, NoRecord,1161 )
	TriggerCondition( 1, HasItem, 3027, 1 )---------Л«ЧУГЕЖ±
	TriggerAction( 1, TakeItem, 3027, 1 )----------Л«ЧУГЕЖ±
	TriggerAction( 1, SetRecord, 1204 )
	TriggerAction( 1, SetRecord, 1162 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Пират",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1159 )
	TriggerCondition( 1, NoRecord,1204 )
	TriggerCondition( 1, HasItem, 3027, 1 )--------Л«ЧУГЕЖ±
	TriggerAction( 1, TakeItem, 3027, 1 )----------Л«ЧУГЕЖ±
	TriggerAction( 1, SetRecord, 1161 )
	TriggerAction( 1, SetRecord, 1162 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Капитан",MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "єЈµБЎ¤µВїЛ:ОТЖнµ»ДгФЪЧФјєСЎФсµДµАВ·ЙПІ»»бТ»ГьОШєф.НЫ№ю№ю№ю..." )
	Talk( 4, "єЈµБЎ¤µВїЛ:МфХЅЛ«ЧУ№¬µДК±єт,ДС¶ИЦ»ДЬСЎФсТ»ґО.ІўИ·±ЈДъµД±і°ьАпУРЛ«ЧУ№¬ГЕЖ±.")
	
	AddNpcMission	(1125)

---------------------єЈµБЎ¤µВїЛ
	---------------Л«ЧУ
	AddNpcMission	(5673)
	AddNpcMission	(5674)
	AddNpcMission	(5741)-------(5675)
	AddNpcMission	(5742)
	AddNpcMission	(5677)
	AddNpcMission	(5678)

	AddNpcMission	(5679)
	AddNpcMission	(5680)
	AddNpcMission	(5681)
	AddNpcMission	(5682)
	AddNpcMission	(5683)
	AddNpcMission	(5684)
	AddNpcMission	(5685)
	AddNpcMission	(5686)
	AddNpcMission	(5687)
	AddNpcMission	(5688)
	AddNpcMission	(5689)

	AddNpcMission	(5730)
	AddNpcMission	(5731)
	AddNpcMission	(5733)
	AddNpcMission	(5734)
	AddNpcMission	(5735)
	

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<єЈµБЎ¤µВїЛ

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[РВКЦЦёµјЎ¤А­Лї±М]			--
--							--
--		87614,357250				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk59 ()
	Talk( 1, "Рислина: Привет! Я Рислина! Я обожаю болтовню и сплетни! Спрашивай меня о чем угодно!" )
	--Text( 1, 'Звезда единства', JumpPage, 31 )
	Text( 1, 'Звезда единства', SendExchangeXData )
	InitExchangeX()
	ExchangeDataX	(		8142	,	5	,	1033	,	1	)
	
	Text( 1, "Мне хотелось бы кое о чем спросить", JumpPage, 4 )
	Text( 1, "О классах и атрибутах", JumpPage, 11 )
	Text( 1, "Узнать расположение монстров", JumpPage, 30 )

	Talk( 4, "В Шайтане занимаются в основном ремеслами и магией. Здесь делают почти все лучшее оружие. Поброди-ка по нашему прекрасному городу, познакомься с ним поближе." )
	Text( 4, "Оружейная лавка", JumpPage, 5 )
	Text( 4, "Магазин доспехов", JumpPage, 7 )
	Text( 4, "Бакалейная лавка", JumpPage, 8 )
	Text( 4, "Портальщик", JumpPage, 9 )
	Text( 4, "Неважно себя чувствую. Надо к врачу", JumpPage, 10 )

	Talk( 5, "У Кузнеца Шайтана Коваля на продажу выставлены все виды высококачественного оружия. Он находится в своей мастерской - в правом углу города." )
	Text( 5, "Узнать о других магазинах", JumpPage, 4 )
	Text( 5, "Мне все ясно", CloseTalk )

--	Talk( 6, "Look for me again if there is anything you don't understand", CloseTalk )

	Talk( 7, "Чтобы купить себе доспехи, иди к Портному Мойе. Его цены вполне разумны. Мойю ты найдешь, сразу за фонтаном, справа." )
	Text( 7, "Узнать о других магазинах", JumpPage, 4 )
	Text( 7, "Мне все ясно", CloseTalk )

	Talk( 8, "Покупка предметов? Поищи продавца Ойа в западной части города." )
	Text( 8, "Узнать о других магазинах", JumpPage, 4 )
	Text( 8, "Мне все ясно",  CloseTalk )

	Talk( 9, "Чтобы добраться в другие места, спроси Портальщицу Шайтана - Мэй. Она переместит тебя в любой крупный город мира. Она также может зарегистрировать для тебя новую точку возрождения. Ищи Мэй у входа в город." )
	Text( 9, "Узнать о других магазинах", JumpPage, 4 )
	Text( 9, "Мне все ясно",  CloseTalk )

	Talk( 10, "Тебе нездоровится? Медсестра возле фонтана. Иди к ней немедленно!" )
	Text( 10, "Узнать о других магазинах", JumpPage, 4 )
	Text( 10, "Мне все ясно",  CloseTalk)


	InitTrigger()
	TriggerCondition( 1, NoRecord, 706 )
	TriggerCondition( 1, HasMission, 706 )
	TriggerCondition( 1, NoFlag, 706, 10 )
	TriggerAction( 1, SetFlag, 706, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "Рислина: Чтобы стать хорошим игроком, тебе надо изучить основные классы и характеристики. Хочешь узнать больше?" )
	Text( 11, "Классы", JumpPage, 12)
	Text( 11, "Характеристики", JumpPage, 13)
	--Text( 11, "Классы", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 706 )
	TriggerCondition( 1, HasMission, 706 )
	TriggerCondition( 1, NoFlag, 706, 20 )
	TriggerAction( 1, SetFlag, 706, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "Характеристики", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "Рислина: В этой игре 4 базовых класса. У каждой свой образ жизни и своя цель в игре. Кем бы ты хотел стать?" )
	Text( 12, "Мечник", JumpPage, 14 )
	Text( 12, "Охотник", JumpPage, 15 )
--	Text( 12, "Regarding Sailor", JumpPage, 16 )
	Text( 12, "Исследователь", JumpPage, 17 )
	Text( 12, "Знахарка", JumpPage, 18 )
--	Text( 12, "Regarding Artisan", JumpPage, 19 )
--	Text( 12, "Regarding Merchant", JumpPage, 20 )

	Talk( 13, "Рислина: У каждого персонажа есть 5 основных характеристик. Игроки могут повышать их и соответственно развивать свои умения. Каждый новый уровень приносит игроку 1 пункт параметра и 1 пункт навыка. Начинающему игроку дается 5 пунктов характеристики." )
	Text( 13, "Сила", JumpPage, 21 )
	Text( 13, "Ловкость", JumpPage, 22 )
	Text( 13, "Телосложение", JumpPage, 23 )
	Text( 13, "Дух", JumpPage, 24 )
	--Text( 13, "Regarding Luck", JumpPage, 25 )
	Text( 13, "Точность", JumpPage, 26 )

	Talk( 14, "Рислина: Мечники могут оказать самое сильное физическое сопротивление в игре. Этот класс доступен персонажам-мужчинам по достижении 10 уровня. Чтобы стать Мечником, отыщи Питера в Аргенте." )
	Text( 14, "Другие классы", JumpPage, 12)
	Text( 14, "Характеристики", JumpPage, 13)
	Text( 14, "Мне все ясно", JumpPage, 27)

	Talk( 15, "Рислина: Охотник - это единственный класс в игре, который использует оружие дальнего действия. После второго выбора специализации такие персонажи могут использовать огнестрельное оружие, что повысит боевую мощь. Охотниками могут стать только Ланс и Филлис. Для этого персонажи уровня 10 должны обратиться к Мечнику Рэю в замке Ледыни." )
	Text( 15, "Другие классы", JumpPage, 12)
	Text( 15, "Характеристики", JumpPage, 13)
	Text( 15, "Мне все ясно", JumpPage, 27)

	Talk( 16, "Resline: Sailor is the strongest class in the sea. It is still unreleased in current version." )
	Text( 16, "Другие классы", JumpPage, 12)
	Text( 16, "Характеристики", JumpPage, 13)
	Text( 16, "Мне все ясно", JumpPage, 27)
	
	Talk( 17, "Рислина: Исследователь - самый лучший помощник во время путешествий по морю. Стать им могут все три типа персонажей, за исключением Карциза. Чтобы стать Исследователем, а затем мореплавателем, игрокам 10 уровня и выше нужно поговорить с Малышом Даниэлем в Аргенте." )
	Text( 17, "Другие классы", JumpPage, 12)
	Text( 17, "Характеристики", JumpPage, 13)
	Text( 17, "Мне все ясно", JumpPage, 27)

	Talk( 18, "Рислина: Знахарки – верные служительницы богини Кары. Они обладают волшебной силой исцеления. Только Филлис и Ами могут стать Знахарками. Персонажи 10 уровня должны отыскать Верховного жреца Геньона в Шайтане, чтобы стать Знахарками." )
	Text( 18, "Другие классы", JumpPage, 12)
	Text( 18, "Характеристики", JumpPage, 13)
	Text( 18, "Мне все ясно", JumpPage, 27)

	Talk( 19, "Resline: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version." )
	Text( 19, "Другие классы", JumpPage, 12)
	Text( 19, "Характеристики", JumpPage, 13)
	Text( 19, "Мне все ясно", JumpPage, 27)

	Talk( 20, "Resline: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version." )
	Text( 20, "Другие классы", JumpPage, 12)
	Text( 20, "Характеристики", JumpPage, 13)
	Text( 20, "Мне все ясно", JumpPage, 27)

	Talk( 21, "Рислина: Сила увеличивает мощность Атаки в ближнем бою" )
	Text( 21, "Другие характеристики", JumpPage, 13)
	Text( 21, "Другие классы", JumpPage, 12)
	Text( 21, "Мне все ясно", JumpPage, 27)

	Talk( 22, "Рислина: Ловкость повышает Скорость атаки и Шанс уклонения" )
	Text( 22, "Другие характеристики", JumpPage, 13)
	Text( 22, "Другие классы", JumpPage, 12)
	Text( 22, "Мне все ясно", JumpPage, 27)

	Talk( 23, "Рислина: Телосложение повышает Максимальное количество жизни и Физическое сопротивление" )
	Text( 23, "Другие характеристики", JumpPage, 13)
	Text( 23, "Другие классы", JumpPage, 12)
	Text( 23, "Мне все ясно", JumpPage, 27)

	Talk( 24, "Рислина: Дух повышает Максимальное количество маны и скорость ее восстановления при использовании навыков" )
	Text( 24, "Другие характеристики", JumpPage, 13)
	Text( 24, "Другие классы", JumpPage, 12)
	Text( 24, "Мне все ясно", JumpPage, 27)

	Talk( 25, "Resline:  Luck increases Critical Rate and Combining Success Rate" )
	Text( 25, "Другие характеристики", JumpPage, 13)
	Text( 25, "Другие классы", JumpPage, 12)
	Text( 25, "Мне все ясно", JumpPage, 27)

	Talk( 26, "Рислина: Точность повышает силу дистанционной атаки и шанс нанесения урона" )
	Text( 26, "Другие характеристики", JumpPage, 13)
	Text( 26, "Другие классы", JumpPage, 12)
	Text( 26, "Мне все ясно", JumpPage, 27)

	Talk( 27, "Рислина: Хорошо. Если возникнут вопросы, всегда готова тебе помочь!")

	Talk( 28, "Рислина: Молодец, похоже, теперь у тебя есть понимание основных боевых приемов, а также того, что путь к твоей мечте требует серьезной работы. Похоже, я смогла тебя начить всему, что знала сама. Не хочешь познакомиться с моими друзьями? Если ты хочешь сражаться, найди Стражника Майкла. Последний раз его видели в (958, 3549). Вы также можете встретить Шайлу (903, 3646) - знаменитого врача Шайтана. В последнее время она искала помощников, готовых помочь ей собрать ингредиенты для снадобий." )
	Text( 28, "Мне хотелось бы кое о чем спросить", JumpPage, 4 )
	Text( 28, "О классах и атрибутах", JumpPage, 11 )
	Text( 28, "Мне все ясно",  CloseTalk)

	Talk( 29, "Очень хорошо. Ты уже достиг 9-го уровня. Как только ты достигнешь 10-го уровня, ты сможешь выбрать свою первую профессию. Разыщи Стражника - Питера в Аргенте (2192, 2767) если ты хочешь быть Мечником. Найди Верховного Жреца Геньона в Шайтане (862, 3500) если ты хочешь стать Знахаркой. Чтобы стать Охотником, разыщи Мечника Рэя из Ледыни (1365, 570). Исследователей готовит Малыш Даниэль из Аргента (2193, 2730). Для быстрого перемещения между городами ты можешь воспользоваться услугами портальщиков." )
	Text( 29, "Мне хотелось бы кое о чем спросить", JumpPage, 4 )
	Text( 29, "О классах и атрибутах", JumpPage, 11 )
	Text( 29, "Мне все ясно",  CloseTalk )

	Talk( 30, "Рислина: Чтобы выяснить, где находятся чудовища, достаточно разыскать Пьянчугу в баре Аргента (2222, 2889). За плату он сообщит тебе координаты." )

	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )

	Talk( 31, "Звезда единства - таинственный предмет из другого мира. Она позволит тебе использовать силу единства, и тогда... не знаю, что тогда. Все игроки с уровнем выше 41 могут обменять Звезду единства на хорошее снаряжение. Тебя это интересует?" )
	Text( 31, "Получить Звезду единства",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "Обменять Звезду единства",JumpPage, 32 )

	Talk( 32, "Благодарим за выбор наших товаров. Если у тебя есть 'Звезда единства', можешь выкупить оружие 50 ур. для своей категории. Заманчиво, правда?")
	Text( 32, "Получить оружие на свой класс", Transfer_TeamStar, 1)

	Talk( 6, "Рислина: Извини, но ты не соответствуешь нужным требованиям" )
	
	--InitTrigger()
	---------------------НжјТі¬№э6ј¶НкіЙ№эЙЄ°ІµДХЅ¶·СµБ·ИООс
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 9 )
	---TriggerCondition( 1, HasRecord, 710 )
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )


	--Start( GetMultiTrigger(), 2 )

	AddNpcMission	(711 )
	AddNpcMission	(712 )
	AddNpcMission	(714 )
	AddNpcMission	(716 )
	AddNpcMission	(718 )
	AddNpcMission	(202 )
	AddNpcMission	(414)
	AddNpcMission	(83)
	AddNpcMission	(84)
	AddNpcMission	(94)
	AddNpcMission	(161)
	--AddNpcMission	(62)
	--AddNpcMission	(63)
	--AddNpcMission	(64)
	--AddNpcMission	(65)

	MisListPage(28)
	MisListPage(29)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<РВКЦЦёµјЎ¤А­Лї±М


----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[єЈѕь°мКВґ¦№ЩФ±Ў¤°¬Оў¶ыЙЩРЈ]		--
--							--
--		86507,364804				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk61 ()
	
	
	Talk( 1, "Адмирал Ник: Здравствуй! Я Ник, первая женщина-офицер в округе." )
	AddNpcMission	(1126)
	AddNpcMission	(98)
	AddNpcMission	(99)
	AddNpcMission	(150)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<єЈѕь°мКВґ¦№ЩФ±Ў¤°¬Оў¶ыЙЩРЈ

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[Йіб°іЗЙМ»б»бі¤Ў¤№ЕАы»ч]		--
--							--
--		87362,354566				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk62 ()
	
	
	Talk( 1, "Плуто: Я люблю собирать странные предметы, покупать все дешево и продавать подороже. Можно сказать, что я самый находчивый торговец. Ты здесь по делу или как?" )
	Text( 1, "Ничего...",CloseTalk )
	AddNpcMission	(1144)

-----МъИЛБщПо
	AddNpcMission	(6115 )
	AddNpcMission	(6116 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Йіб°іЗЙМ»б»бі¤Ў¤№ЕАы»ч

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[В·ИЛЎ¤Йєєчіж]		--
--							--
--		84634,349945				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk63 ()
	
	
	Talk( 1, "Вово: Малышу Даниэлю нельзя доверять. Я переехал сюда, чтобы быть от него подальше." )
	InitTrigger()
	TriggerCondition( 1, HasItem, 2999, 99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2999, 99 )
	TriggerAction( 1, GiveItem, 3000, 1 , 4)
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 1, "99ёцЅрКфЛйЖ¬¶Т»»1ёц±¦ІШГЬФї", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 1 )
	TriggerAction( 1, GiveItem, 3017, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 1, "1ёц±¦ІШГЬФї¶Т»»1ёцМмК№±¦ІШ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 8 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 8 )
	TriggerAction( 1, GiveItem, 3018, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 1, "8ёц±¦ІШГЬФї¶Т»»1ёц»ЖЅрКҐ¶·Кї±¦ІШ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 18 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 18 )
	TriggerAction( 1, GiveItem, 3019, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 1, "18ёц±¦ІШГЬФї¶Т»»1ёцЙсБъ±¦ІШ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 88 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 88 )
	TriggerAction( 1, GiveItem, 3020, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 1, "88ёц±¦ІШГЬФї¶Т»»1ёцј«ЛЩ±¦ІШ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 198 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 198 )
	TriggerAction( 1, GiveItem, 3021, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	--Text( 1, "198ёц±¦ІШГЬФї¶Т»»1ёц¶сД§±¦ІШ", MultiTrigger, GetMultiTrigger(), 1)

	--Text( 1, "Next Page", JumpPage, 5)
	
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1007 )
	TriggerAction( 1, ClearRecord, 1000 )
	TriggerAction( 1, ClearRecord, 1001 )
	TriggerAction( 1, ClearRecord, 1002 )
	TriggerAction( 1, ClearRecord, 1003 )
	TriggerAction( 1, ClearRecord, 1004 )
	TriggerAction( 1, ClearRecord, 1005 )
	TriggerAction( 1, ClearRecord, 1006 )
	TriggerAction( 1, ClearRecord, 1007 )
	TriggerAction( 1, JumpPage, 20)
	TriggerFailure( 1, JumpPage, 21)
	Text( 1, "Повторить поединок" ,MultiTrigger, GetMultiTrigger(), 1)	

	Talk( 5, "Вово: Малышу Даниэлю нельзя доверять. Я переехал сюда, чтобы быть от него подальше." )

	Text( 5, "Вернуться назад", JumpPage, 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 498 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 498 )
	TriggerAction( 1, GiveItem, 3022, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 5, "498ёц±¦ІШГЬФї¶Т»»1ёцЛАЙс±¦ІШ", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3000, 3888 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3000, 3888 )
	TriggerAction( 1, GiveItem, 3023, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 5, "3888ёц±¦ІШГЬФї¶Т»»1ёцДкКЮ±¦ІШ", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "ХвїЙКЗґ«ЛµЦРДЬґшАґОЮКэІЖё»µДФїіЧ°ЎЈ¬ХвґО¶Т»»ХжКЗ±гТЛДгБЛЎЈ")
	Talk( 3, "»»µЅДгПлТЄµД±¦ПдБЛВрЈїЧЈДгєГФЛїЄіцєГ¶«¶«Е¶ЎЈ")
	Talk( 4, "ДъГ»УРЧг№»µД¶Т»»ЛщРиТЄµДµАѕЯЈ¬ТІУРїЙДЬДъµД±і°ьТСѕ­Лш¶Ё»тХЯ±і°ьїХјдІ»№»." )
	Talk( 20, "You can take the challenge of Hexathlon again now!")
	Talk( 21, "Можешь теперь состязаться. Пожалуйста, не шути со мной. У меня нет времени.")

	AddNpcMission	(6028 )
	AddNpcMission	(6029 )
	AddNpcMission	(6054 )
	AddNpcMission	(6055 )
	-----МъИЛБщПо
	AddNpcMission	(6114 )

end 


-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<В·ИЛЎ¤Йєєчіж

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[РЎСтЎ¤НюАы]			--
--							--
--		89875,368331				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk64 ()
	
	
	Talk( 1, "Волли: Привет! Я единственный в мире говорящий ягненок! Беее!" )

	AddNpcMission	(233 )
	---------------°ЧСт
	AddNpcMission	(5565)
	AddNpcMission	(5566)

		----------------ЗпµєїЄ·ў
	--AddNpcMission	(6184)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<РЎСтЎ¤НюАы

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[»бі¤ЦъАнЎ¤МбЛѕГж°ь]		--
--							--
--		87171,354774				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk65 ()
	
	
	Talk( 1, "Тинтик: Мы все говорим и говорим, вместо того, чтобы действовать." )
--	AddNpcMission	(905 )
	----------------ЦЬЛк°ь
--	AddNpcMission	(5604 )
--	AddNpcMission	(5605 )
--	AddNpcMission	(5606 )
--	AddNpcMission	(5607 )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»бі¤ЦъАнЎ¤МбЛѕГж°ь

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[В·ИЛЎ¤ТТ]				--
--							--
--		79792,355469				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk66 ()
	
	
	Talk( 1, "Yay: Holy Priestess is at the temple in Shaitan City. She has the blessings of many devotees." )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<В·ИЛЎ¤ТТ

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[Йі·ЛЎ¤ЙБ№вПА°ЛКА]			--
--							--
--		108242,310135				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk67 ()
	
	
	Talk( 1, "Супермун: Я великий наследник Супермена! Своими суперспособностями я покорю всю пустыню! (Боже, опять он грезит наяву...)" )
	
	AddNpcMission	(237 )
	AddNpcMission	(238 )
	AddNpcMission	(239 )
	AddNpcMission	(240 )
	AddNpcMission	(248 )
	AddNpcMission	(557 )
--------eleven
	AddNpcMission	(5011 )
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Йі·ЛЎ¤ЙБ№вПА°ЛКА


----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[ИЛУгНхЧУЎ¤№юЙіМШ]			--
--							--
--		125471,349171				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk68 ()

	Talk( 1, "Хассан: Хмм... На днях тут так вкусно пахло. Хотелось бы узнать, чем." )
	Text( 1, "Комбинировать", JumpPage, 2)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1785, 10 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 1785, 10 )
	TriggerAction( 1, GiveItem, 1786, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Хассан: Куски кристалла стоит недорого. Не хочешь соединить их и получить Звенящий кристалл?" )
	Text( 2, "Собрать Звенящий кристалл", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Хассан: Ну разве этот Звенящий кристалл не красив? Буду рад помочь тебе еще." )
	Talk( 4, "Хассан: Принеси 10 Кусков кристалла и 2000 золотых, и Звенящий кристалл твой." )

	AddNpcMission	(5010)	--1
	AddNpcMission	(5014)	--2
	AddNpcMission	(5033)	--3
	AddNpcMission	(5034)	--4
	--AddNpcMission	(5553)	--5
	--AddNpcMission	(5554)	--6
	--AddNpcMission	(6303)	--7
	AddNpcMission	(6354)	--8
	AddNpcMission	(6355)	--9
	AddNpcMission	(6356)	--10

--	AddNpcMission	(6258)	--11
--	AddNpcMission	(6259)	--12

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ИЛУгНхЧУЎ¤№юЙіМШ


----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[АЦЖчЧЁјТЎ¤ЙіГ·¶э]			--
--							--
--		66465,609367				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk69 ()
	
	
	Talk( 1, "Шармель: Привет! Я музыкант, я дарю здешним краям музыку." )
---------------°ЧСт
	AddNpcMission	(5559)
	AddNpcMission	(5560)
end 

--Имя: Благочестивая жрица - Ада
--Город: Шайтан
--Кординаты: 862,3303
function r_talk70 ()
	Talk( 1, "Ада: Приветствую, друг издалека. Да пребудет с тобой Богиня. Я Благочестивая жрица Ада." )

	AddNpcMission	(756)	--1-Колдовские пути(Завершение)
	AddNpcMission	(341)	--2-Завет
	AddNpcMission	(356)	--3-Загадочный Город(Завершение)
	AddNpcMission	(357)	--4-Город Весны
	AddNpcMission	(521)	--5-Слеза богини
	AddNpcMission	(539)	--6-Тайна Слез Дракона(Завершение)
	AddNpcMission	(540)	--7-Святая вода
	AddNpcMission	(541)	--8-Выкуп
	AddNpcMission	(552)	--9-Трагедия
	AddNpcMission	(553)	--10-Трагедия
	AddNpcMission	(556)	--11-Потеря

	--AddNpcMission	(5627)	--12-Посол Пиратии 2(Завершение)
	--AddNpcMission	(5628)	--13-Посол Пиратии 3(Завершение)

	AddNpcMission	(6307)	--14-Секрет острова Зимы(Завершение)
	AddNpcMission	(6308)	--15-Загадочный Вилль с Севера
	AddNpcMission	(6310)	--16-Местонахождение Вилля с Севера 1
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<КҐЕ®Ў¤°¬ґп

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[В·ИЛЎ¤·ЁАы¶ы]			--
--							--
--		93176,352977				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk71 ()
	
	
	Talk( 1, "Фейру: Знаешь что? Кактусы тоже цветут! И запах при этом божественный!" )
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<В·ИЛЎ¤·ЁАы¶ы

----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[№¤»б»бі¤Ў¤·рИр]			--
--							--
--		83171,354853				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk72 ()
	
	Talk( 1, "Форлан: Единство – это сила! Хотите бросить вызов первым трем гильдиям? Хотите править этим миром? Пусть глава гильдии обратится ко мне, я все устрою. Ваша гильдия тоже может попасть в тройку сильнейших!" )
	Text( 1, "Три лучшие гильдии", ListChallenge)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<№¤»б»бі¤Ў¤·рИр

----------------------------------------------------------
--							--
--							--
--		Кузнец Баш			--
--							--
--		134423,52988				--
----------------------------------------------------------
-----------------------------------------------------------
function r_talk73 ()
	Talk( 1, "Баш: Добро пожаловать! Я продаю все виды оружия! Удовольствие гарантировано!" )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Ремонт", OpenRepair )
	Text( 1, "Комбинировать", OpenUnite)
	Text( 1, "Ковка", OpenForge)
	--Text( 1, "Купить свитки плавки ", JumpPage, 3 )
	Text( 1, "Смотреть ещё ", JumpPage, 2 )
	Text( 2, "Плавка", OpenMilling)
	Text( 2, "Плавка аппарелей", OpenFusion)
	Text( 2, "Усовершенствование аппарелей", OpenUpgrade)
	Text( 2, "Извлечение самоцвета", OpenGetStone )
	Text( 2, "Получить украшение", SendExchangeXData )
	Text( 2, "Назад ", JumpPage, 1 )
	Text( 2, "Ничего...",CloseTalk )
	Text( 1, "Ничего...",CloseTalk )
	
	Talk( 3, "Хочешь купить свиток плавки? сколько ъочешь купить свитков? Цена одного свитка 100к, будешь брать?" )
		InitTrigger()
	TriggerCondition( 1, HasMoney, 100000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 100000)
	TriggerAction( 1, GiveItem, 453,1, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Один свиток за 100к ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 200000)
	TriggerAction( 1, GiveItem, 453,2, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Два свитка за 200к ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 300000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 300000)
	TriggerAction( 1, GiveItem, 453,3, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Три свитка за 300к ",MultiTrigger, GetMultiTrigger(), 1 ) 
		InitTrigger()
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 400000)
	TriggerAction( 1, GiveItem, 453,4, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Четыре свитка за 400к ",MultiTrigger, GetMultiTrigger(), 1 )
		InitTrigger()
	TriggerCondition( 1, HasMoney, 500000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 500000)
	TriggerAction( 1, GiveItem, 453,5, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Пять свитков за 500к ",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "Назад ", JumpPage, 1 )
	Talk( 5, "Не все условия выполнены " )
	--
	
		InitExchangeX()
	--Мечи 
ExchangeDataX	(	8142	,	15	,	5001	,	1	)
ExchangeDataX	(	8142	,	15	,	5008	,	1	)
ExchangeDataX	(	8142	,	20	,	5002	,	1	)
ExchangeDataX	(	8142	,	20	,	5007	,	1	)
--Молот
ExchangeDataX	(	8142	,	30	,	5003	,	1	)
ExchangeDataX	(	8142	,	40	,	5009	,	1	)
--Пистолеты\Луки
ExchangeDataX	(	8142	,	30	,	5005	,	1	)
ExchangeDataX	(	8142	,	40	,	5011	,	1	)
ExchangeDataX	(	8142	,	30	,	5448	,	1	)
ExchangeDataX	(	8142	,	40	,	5612	,	1	)
--Посохи
ExchangeDataX	(	8142	,	30	,	5006	,	1	)
ExchangeDataX	(	8142	,	40	,	5012	,	1	)
ExchangeDataX	(	8142	,	30	,	5004	,	1	)
ExchangeDataX	(	8142	,	40	,	5010	,	1	)

--Аппы Ланса за медь
ExchangeDataX	(	8141	,	20	,	8823	,	1	)
ExchangeDataX	(	8141	,	30	,	8821	,	1	)
ExchangeDataX	(	8141	,	40	,	8822	,	1	)
ExchangeDataX	(	8141	,	50	,	8824	,	1	)
ExchangeDataX	(	8141	,	60	,	8825	,	1	)
ExchangeDataX	(	8141	,	70	,	8826	,	1	)
--Аппа Карциза
ExchangeDataX	(	8141	,	20	,	8829	,	1	)
ExchangeDataX	(	8141	,	30	,	8827	,	1	)
ExchangeDataX	(	8141	,	40	,	8828	,	1	)
ExchangeDataX	(	8141	,	50	,	8830	,	1	)
ExchangeDataX	(	8141	,	60	,	8831	,	1	)
ExchangeDataX	(	8141	,	70	,	8832	,	1	)
--Аппы Филис
ExchangeDataX	(	8141	,	20	,	8835	,	1	)
ExchangeDataX	(	8141	,	30	,	8833	,	1	)
ExchangeDataX	(	8141	,	40	,	8834	,	1	)
ExchangeDataX	(	8141	,	50	,	8836	,	1	)
ExchangeDataX	(	8141	,	60	,	8837	,	1	)
ExchangeDataX	(	8141	,	70	,	8838	,	1	)
--Аппы Ами
ExchangeDataX	(	8141	,	20	,	8841	,	1	)
ExchangeDataX	(	8141	,	30	,	8839	,	1	)
ExchangeDataX	(	8141	,	40	,	8840	,	1	)
ExchangeDataX	(	8141	,	50	,	8842	,	1	)
ExchangeDataX	(	8141	,	60	,	8843	,	1	)
--ExchangeDataX	(	8141	,	70	,	8844	,	1	)
	
	
	InitTrade()
	Weapon(	0008	)
	Weapon(	0196	)
	Weapon(	0197	)
	Weapon(	0198	)
	Weapon(	0025	)
	Weapon(	0032	)
	Weapon(	0026	)
	Weapon(	0033	)
	Weapon(	0027	)
	Weapon(	0034	)
	Weapon(	1400	)
	Weapon(	1401	)
	Weapon(	1402	)
	Weapon(	1403	)
	Weapon(	1404	)
	Weapon(	1405	)
	Weapon(	0037	)
	Weapon(	0038	)
	Weapon(	0039	)
	Weapon(	0044	)
	Weapon(	0040	)
	Weapon(	0045	)
	Weapon(	1406	)
	Weapon(	1407	)
	Weapon(	1408	)
	Weapon(	1409	)
	Weapon(	1413	)
	Weapon(	1414	)

	Other(		)
	Other(		)
	Other(		)

	AddNpcMission	(723 )
	AddNpcMission	(1041)
	AddNpcMission	(1093)
	AddNpcMission	(1152)
	AddNpcMission	(1204)
	AddNpcMission(	1233	)
	


end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<МъЅіЎ¤±©±щ

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[ФУ»хЙМИЛЎ¤І®Ві]			--
--							--
--		135671,48320				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk74 ()
	Talk( 1, "Палпин: Привет, я бакалейщик из Ледыни. Люблю собирать разные вещи. Дойдешь до 10 уровня - разыщи меня, дам тебе задание раздобыть что-нибудь. За нужные мне вещи я щедро плачу. Чем могу помочь?" )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Ничего...",CloseTalk )
	Text( 1, "Выкупить маску реальности",JumpPage, 2 )

	InitTrade()
	
	Other(	3225	)
	Other(	3226	)
	Other(	3294	)
	Other(	3295	)
	Other(	3141	)
	Other(	4602	)
	Other(	4603	)
	Other(	4604	)
	Other( 3296 )
	--baby--Йъ»ојјДЬКйLv1
	Other(	2679	)
	Other(	2689	)
	Other(	2699	)
	Other(	2709	)
	--Leo
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
	--Other(	3288	)
	--Other(  2440    )
	Other(	854	)


	AddNpcMission	(1052)
	AddNpcMission	(1106)
	AddNpcMission	(1162)
	AddNpcMission	(1214)
	AddNpcMission	(181)
	AddNpcMission	(182)
	AddNpcMission	(183)
	AddNpcMission	(1234)
	--AddNpcMission	(5502)

	---bragi
	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 1624, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 1624, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Маска реальности стоит 1 Эльфийскую печать, 10000 золотых и 10 единиц любых собранных ресурсов 3 ур." )
	Text( 2, "Обменяй кости на маску реальности", MultiTrigger, GetMultiTrigger(), 1)

	---InitTrigger()
	---TriggerCondition( 1, HasLeaveBagGrid, 1 )
	---TriggerCondition( 1, KitbagLock, 0 )
	---TriggerCondition( 1, HasItem, 2588, 1 )
	---TriggerCondition( 1, HasItem, 1842, 10 )
	---TriggerCondition( 1, HasMoney, 10000 )
	---TriggerAction( 1, TakeItem, 2588, 1 )
	---TriggerAction( 1, TakeItem, 1842, 10 )
	---TriggerAction( 1, TakeMoney, 10000 )
	---TriggerAction( 1, GiveItem, 2326, 1 , 4)
	---TriggerAction( 1, JumpPage, 3 )
	---TriggerFailure( 1, JumpPage, 4 )
	---Text( 2, "Exchange Razor Tooth for Reality Mask", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4031, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4031, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Хрустальный Эолит на Маску реальности", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 3991, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 3991, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Тиковое бревно на маску реальности", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasItem, 2588, 1 )
	TriggerCondition( 1, HasItem, 4011, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerAction( 1, TakeItem, 2588, 1 )
	TriggerAction( 1, TakeItem, 4011, 10 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2326, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Обменяй Рыбу-шар на Маску реальности", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Используй это с умом." )
	Talk( 4, "Палпин: У тебя, похоже, недостаточно сырья. Может, твой рюкзак заблокирован или не хватает свободных ячеек." )
end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ФУ»хЙМИЛЎ¤І®Ві

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[Т©µкАП°еЎ¤ґпєХ]			--
--							--
--		135298,49926				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk75 ()
	
	
	Talk( 1, "Дайша: Мое почтение! Взгляните сюда! У меня лучшие травы во всей Ледыни." )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Ничего...",CloseTalk )
	
	Talk( 2, "Очень хорошо. Ты уже достиг 9-го уровня. Как только ты достигнешь 10-го уровня, ты сможешь выбрать свою первую профессию. Разыщи Стражника - Питера в Аргенте (2192, 2767) если ты хочешь быть Мечником. Найди Верховного Жреца Геньона в Шайтане (862, 3500) если ты хочешь стать Знахаркой. Чтобы стать Охотником, разыщи Мечника Рэя из Ледыни (1365, 570). Исследователей готовит Малыш Даниэль из Аргента (2193, 2730). Для быстрого перемещения между городами ты можешь воспользоваться услугами портальщиков." )
	Text( 2, "Торг", BuyPage )
	Text( 2, "Ничего...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
		Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)
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

	---------------------НжјТі¬№э9ј¶
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerFailure( 1, JumpPage, 1 )
	--Start( GetMultiTrigger(), 1 )

	AddNpcMission	(727 )
	AddNpcMission	(735 )
	AddNpcMission	(746 )
	AddNpcMission	(747 )
	AddNpcMission	(1047)
	AddNpcMission	(1101)
	AddNpcMission	(1158)
	AddNpcMission	(1209)
	AddNpcMission(	1235	)
---------eleven	
	AddNpcMission(	5067)
	AddNpcMission(	593)
	AddNpcMission(	594	)
	AddNpcMission(	596	)	

	MisListPage(2)

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Т©µкАП°еЎ¤ґпєХ


----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[»¤КїРЎЅгЎ¤°ІДЭ]			--
--							--
--		131725,50169				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk76 ()
	
	
	Talk( 1, "Анна: Привет! Я медсестра Анна. Я пока на испытательном сроке и не могу вас вылечить." )
	AddNpcMission	(1018)
	AddNpcMission	(1073)
	AddNpcMission	(1128)
	AddNpcMission	(1181)
	AddNpcMission(	1236	)
	



	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»¤КїРЎЅгЎ¤°ІДЭ

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[РВКЦЦёµјЎ¤°ІзчВ¶СЗ]		--
--							--
--		131577,50700				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk77 ()
	
	
        Talk( 1, "Анжела: Привет, меня зовут Анжела. Я расскажу тебе о жизни в Ледыни. Надеюсь, тебе понравится наша бесконечная зима!" )
	--Text( 1, 'Звезда единства', JumpPage, 31 )
	--Text( 1, 'Звезда единства', JumpPage, 31 )
	Text( 1, 'Звезда единства', SendExchangeXData )
	InitExchangeX()
	ExchangeDataX	(		8142	,	5	,	1033	,	1	)
	Text( 1, "Мне хотелось бы кое о чем спросить", JumpPage, 4 )
	Text( 1, "О классах и атрибутах", JumpPage, 11 )
	Text( 1, "Узнать расположение монстров", JumpPage, 30 )
	Text( 1, "Мне все ясно", CloseTalk )
--	Text( 1, "Мне все ясно", CloseTalk )


	Talk( 4, "Как ты уже видел, город Ледыня засыпан снегом. Чтобы с удобством устроиться здесь, ты должен научиться добывать необходимые вещи и снаряжение." )
	Text( 4, "Оружейная лавка", JumpPage, 5 )
	Text( 4, "Магазин доспехов", JumpPage, 7 )
	Text( 4, "Бакалейная лавка", JumpPage, 8 )
	Text( 4, "Портальщик", JumpPage, 9 )
	Text( 4, "Врач", JumpPage, 10 )

	Talk( 5, "Отсюда иди на юг и поверни направо на перекрёстке. Оттуда уже будет видно кузнеца. Он продаёт самое разное оружие, наверняка ты сможешь найти что-нибудь и для себя." )
	Text( 5, "Узнать о других магазинах", JumpPage, 4 )
	Text( 5, "Мне все ясно", CloseTalk )

--	Talk( 6, "Look for me again if there is anything you don't understand", CloseTalk )

	Talk( 7, "Чтобы купить доспехи, обратись к Портному. Он добрый и мягкий человек. Найди его в правом нижнем углу карты города." )
	Text( 7, "Узнать о других магазинах", JumpPage, 4 )
	Text( 7, "Мне все ясно", CloseTalk )

	Talk( 8, "Купить, говоришь? Бакалея отсюда недалеко, в западном углу города. Там ты найдешь все необходимое для приключений." )
	Text( 8, "Узнать о других магазинах", JumpPage, 4 )
	Text( 8, "Мне все ясно", CloseTalk )

	Talk( 9, "Иди по тропе и встретишь у ворот прекрасную даму. Она - Портальщик и может переместить тебя в другие города. Кроме того, у нее можно записать точку возрождения." )
	Text( 9, "Узнать о других магазинах", JumpPage, 4 )
	Text( 9, "Мне все ясно", CloseTalk )

	Talk( 10, "Сиделка - вон та дама по другую сторону фонтана. Если заболеешь или будешь ранен, не забудь обратиться к ней." )
	Text( 10, "Узнать о других магазинах", JumpPage, 4 )
	Text( 10, "Мне все ясно", CloseTalk )

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 10 )
	TriggerAction( 1, SetFlag, 700, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "Анжела: Поскольку ты новичок, тебе следует получше разобраться в различных классах и параметрах. Что ты хочешь знать?" )
	Text( 11, "Классы", JumpPage, 12)
	Text( 11, "Характеристики", JumpPage, 13)

	--Text( 11, "Классы", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 20 )
	TriggerAction( 1, SetFlag, 700, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "Характеристики", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "Анжела: В этой игре 4 базовых класса. У каждой свой образ жизни и своя цель в игре. Кем бы ты хотел стать?" )
	Text( 12, "Мечник", JumpPage, 14 )
	Text( 12, "Охотник", JumpPage, 15 )
--	Text( 12, "Regarding Sailor", JumpPage, 16 )
	Text( 12, "Исследователь", JumpPage, 17 )
	Text( 12, "Знахарка", JumpPage, 18 )
--	Text( 12, "Regarding Artisan", JumpPage, 19 )
--	Text( 12, "Regarding Merchant", JumpPage, 20 )
	Text( 12, "Понятно. Узнать еще что-нибудь...", JumpPage, 11 )

	Talk( 13, "Анжела: У каждого персонажа есть 5 основных характеристик. Игроки могут повышать их и соответственно развивать свои умения. Каждый новый уровень приносит игроку 1 пункт параметра и 1 пункт навыка. Начинающему игроку дается 5 пунктов характеристики." )
	Text( 13, "Сила", JumpPage, 21 )
	Text( 13, "Ловкость", JumpPage, 22 )
	Text( 13, "Телосложение", JumpPage, 23 )
	Text( 13, "Дух", JumpPage, 24 )
	--Text( 13, "Regarding Luck", JumpPage, 25 )
	Text( 13, "Точность", JumpPage, 26 )
	Text( 13, "Понятно. Узнать еще что-нибудь...", JumpPage, 11 )

	Talk( 14, "Анжела: Мечники могут оказать самое сильное физическое сопротивление в игре. Этот класс доступен персонажам-мужчинам по достижении 10 уровня. Чтобы стать Мечником, отыщи Питера в Аргенте." )
	Text( 14, "Другие классы", JumpPage, 12)
	Text( 14, "Характеристики", JumpPage, 13)
	Text( 14, "Мне все ясно", JumpPage, 27)

	Talk( 15, "Анжела: Охотник - это единственный класс в игре, который использует оружие дальнего действия. После второго выбора специализации такие персонажи могут использовать огнестрельное оружие, что повысит боевую мощь. Охотниками могут стать только Ланс и Филлис. Для этого персонажи уровня 10 должны обратиться к Мечнику Рэю в замке Ледыни." )
	Text( 15, "Другие классы", JumpPage, 12)
	Text( 15, "Характеристики", JumpPage, 13)
	Text( 15, "Мне все ясно", JumpPage, 27)

	Talk( 16, "Angela: Sailor is the strongest class in the sea. It is still unreleased in current version." )
	Text( 16, "Другие классы", JumpPage, 12)
	Text( 16, "Характеристики", JumpPage, 13)
	Text( 16, "Мне все ясно", JumpPage, 27)
	
	Talk( 17, "Анжела: Исследователь - самый лучший помощник во время путешествий по морю. Стать им могут все три типа персонажей, за исключением Карциза. Чтобы стать Исследователем, а затем мореплавателем, игрокам 10 уровня и выше нужно поговорить с Малышом Даниэлем в Аргенте." )
	Text( 17, "Другие классы", JumpPage, 12)
	Text( 17, "Характеристики", JumpPage, 13)
	Text( 17, "Мне все ясно", JumpPage, 27)

	Talk( 18, "Анжела: Знахарки – верные служительницы богини Кары. Они обладают волшебной силой исцеления. Только Филлис и Ами могут стать Знахарками. Персонажи 10 уровня должны отыскать Верховного жреца Геньона в Шайтане, чтобы стать Знахарками." )
	Text( 18, "Другие классы", JumpPage, 12)
	Text( 18, "Характеристики", JumpPage, 13)
	Text( 18, "Мне все ясно", JumpPage, 27)

	Talk( 19, "Angela: Angela: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version." )
	Text( 19, "Другие классы", JumpPage, 12)
	Text( 19, "Характеристики", JumpPage, 13)
	Text( 19, "Мне все ясно", JumpPage, 27)

	Talk( 20, "Angela: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version." )
	Text( 20, "Другие классы", JumpPage, 12)
	Text( 20, "Характеристики", JumpPage, 13)
	Text( 20, "Мне все ясно", JumpPage, 27)

	Talk( 21, "Анжела: Сила увеличивает мощность Атаки в ближнем бою" )
	Text( 21, "Другие характеристики", JumpPage, 13)
	Text( 21, "Другие классы", JumpPage, 12)
	Text( 21, "Мне все ясно", JumpPage, 27)

	Talk( 22, "Анжела: Ловкость повышает Скорость атаки и Шанс уклонения" )
	Text( 22, "Другие характеристики", JumpPage, 13)
	Text( 22, "Другие классы", JumpPage, 12)
	Text( 22, "Мне все ясно", JumpPage, 27)

	Talk( 23, "Анжела: Телосложение повышает Максимальное количество жизни и Физическое сопротивление" )
	Text( 23, "Другие характеристики", JumpPage, 13)
	Text( 23, "Другие классы", JumpPage, 12)
	Text( 23, "Мне все ясно", JumpPage, 27)

	Talk( 24, "Анжела: Дух повышает Максимальное количество маны и скорость ее восстановления при использовании навыков" )
	Text( 24, "Другие характеристики", JumpPage, 13)
	Text( 24, "Другие классы", JumpPage, 12)
	Text( 24, "Мне все ясно", JumpPage, 27)

	Talk( 25, "Angela: Luck increases Critical strike and Combine success rate" )
	Text( 25, "Другие характеристики", JumpPage, 13)
	Text( 25, "Другие классы", JumpPage, 12)
	Text( 25, "Мне все ясно", JumpPage, 27)

	Talk( 26, "Анжела: Точность повышает силу дистанционной атаки и шанс нанесения урона" )
	Text( 26, "Другие характеристики", JumpPage, 13)
	Text( 26, "Другие классы", JumpPage, 12)
	Text( 26, "Мне все ясно", JumpPage, 27)

	Talk( 27, "Анжела: Хорошо. Если возникнут вопросы, всегда готова тебе помочь!")

	Talk( 28, "Анжела: Молодец, похоже, теперь у тебя есть понимание основных боевых приемов, а также того, что путь к твоей мечте требует серьезной работы. Похоже, я смогла тебя начить всему, что знала сама. Не хочешь познакомиться с моими друзьями? Если ты хочешь сражаться, найди Стражника Майкла. Последний раз его видели в (958, 3549). Вы также можете встретить Шайлу (903, 3646) - знаменитого врача Шайтана. В последнее время она искала помощников, готовых помочь ей собрать ингредиенты для снадобий." )
	Text( 28, "Мне хотелось бы кое о чем спросить", JumpPage, 4 )
	Text( 28, "О классах и атрибутах", JumpPage, 11 )
	Text( 28, "Мне все ясно",  CloseTalk )

	Talk( 29, "Очень хорошо. Ты уже достиг 9-го уровня. Как только ты достигнешь 10-го уровня, ты сможешь выбрать свою первую профессию. Разыщи Стражника - Питера в Аргенте (2192, 2767) если ты хочешь быть Мечником. Найди Верховного Жреца Геньона в Шайтане (862, 3500) если ты хочешь стать Знахаркой. Чтобы стать Охотником, разыщи Мечника Рэя из Ледыни (1365, 570). Исследователей готовит Малыш Даниэль из Аргента (2193, 2730). Для быстрого перемещения между городами ты можешь воспользоваться услугами портальщиков." )
	Text( 29, "Мне хотелось бы кое о чем спросить", JumpPage, 4 )
	Text( 29, "О классах и атрибутах", JumpPage, 11 )
	Text( 29, "Мне все ясно",  CloseTalk)

	Talk( 30, "Анжела: Чтобы выяснить, где находятся чудовища, достаточно разыскать Пьянчугу в баре Аргента (2222, 2889). За плату он сообщит тебе координаты." )

	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )

	Talk( 31, "Анжела: Звезда единства - таинственный предмет из другого мира. Она позволит тебе использовать силу единства, и тогда... не знаю, что тогда. Все игроки с уровнем выше 41 могут обменять Звезду единства на хорошее снаряжение. Тебя это интересует?" )
	Text( 31, "Получить Звезду единства",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "Обменять Звезду единства",JumpPage, 32 )

	Talk( 32, "Благодарим за выбор наших товаров. Если у тебя есть 'Звезда единства', можешь выкупить оружие 50 ур. для своей категории. Заманчиво, правда?")
	Text( 32, "Получить оружие на свой класс", Transfer_TeamStar, 1)

	Talk( 6, "Анжела: Извини, но ты не соответствуешь нужным требованиям" )

	--InitTrigger()
	---------------------НжјТі¬№э6ј¶НкіЙ№эЙЄ°ІµДХЅ¶·СµБ·ИООс
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 9 )
	--TriggerCondition( 1, HasRecord, 716 )
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )

	
	AddNpcMission	(721 )
	AddNpcMission	(722 )
	AddNpcMission	(724 )
	AddNpcMission	(726 )
	AddNpcMission	(728 )
	AddNpcMission	(201 )
	AddNpcMission	(406)
	--AddNpcMission	(62)
	--AddNpcMission	(63)
	--AddNpcMission	(64)
	--AddNpcMission	(65)
	AddNpcMission	(162)
	AddNpcMission	(163)
	AddNpcMission	(173)
	AddNpcMission	(190)


	MisListPage(28)
	MisListPage(29)

end 

--Имя: Мечник из Ледыни - Рэй
--Город: Ледынь
--Кординаты: 1365,570
function r_talk78 ()

	InitTrigger()
	TriggerCondition( 1, CheckRase, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerCondition( 2, CheckRase, 2 )
	TriggerAction( 2, JumpPage, 1 )
	TriggerCondition( 3, CheckRase, 3 )
	TriggerAction( 3, JumpPage, 2 )
	TriggerCondition( 4, CheckRase, 4 )
	TriggerAction( 4, JumpPage, 1 )
	Start( GetMultiTrigger(), 4 )

	Talk( 1, "Рэй: Привет я наемний охотник. Я люблю охотиться на нежить. Так же я провожу тренировки юных охотников. К сожалению я не могу тебя обучить." )

	Talk( 2, "Рэй: Привет я наемний охотник. Я люблю охотиться на нежить. Так же я провожу тренировки юных охотников, общайся ко мне когда достигнешь 10 уровня." )

	Text( 2, "Стать Охотником", JumpPage, 3 )
	Text( 2, "Стать Стрелком", JumpPage, 6 )
	Text( 2, "Приобрести навыки",BuyPage)

	InitTrade()
	Other(	3187	)
	Other(	3188	)
	Other(	3190	)
	Other(	3239	)
	Other(	3197	)
	Other(	3193	)
	Other(	3241	)
	Other(	3192	)
	Other(	3198	)
	Other(	3202	)
	Other(	3203	)
	Other(	3204	)


	Talk( 3, "Рэй: Погоди, мой дорогой друг! Тебе так интересны луки? Знай, я могу тебя обучить мастерству охотника, но знай, что профессия выбирается лишь 1 раз и навсегда. Ты готов стать настоящим Стрелком?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 9 )
	TriggerCondition( 1, IsCategory, 1 )
	TriggerCondition( 1, PfEqual, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, HasMoney, 5000 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction( 1, SetProfession, 2  )
	TriggerAction( 1, GiveItem, 3187, 1, 4 )
	TriggerAction( 1, GiveItem, 25, 1, 4 )
	TriggerAction( 1, JumpPage, 4 )
	TriggerAction( 1, Starteffect , 366)
	TriggerCondition( 2, LvCheck, ">", 9 )
	TriggerCondition( 2, IsCategory, 3 )
	TriggerCondition( 2, PfEqual, 0 )
	TriggerCondition( 2, HasLeaveBagGrid, 3 )
	TriggerCondition( 2, HasMoney, 5000 )
	TriggerAction( 2, TakeMoney, 5000 )
	TriggerAction( 2, SetProfession, 2  )
	TriggerAction( 2, GiveItem, 3187, 1, 4 )
	TriggerAction( 2, GiveItem, 25, 1, 4 )
	TriggerAction( 2, JumpPage, 4 )
	TriggerAction( 2, Starteffect , 366)
	TriggerFailure( 2, JumpPage, 5 )
	Text( 3, "Да, я готов стать Охотником",MultiTrigger, GetMultiTrigger(), 2)
	Text( 3, "Мне нужно ещё подумать", CloseTalk)

	Talk( 4, "Рэй: Поздравляю! Ты прошел обучение, теперь ты Охотник! Вот твой лук, бери стрелы и вперед на охоту!")

	Talk( 5, "Рэй: К сожалению нужные условия, что бы стать Охотником не выполнены. Охотником может стать Ланс или Филлис. Необходимо иметь 10 уровень. Так же у тебя не должно быть не какой другой професии.")

	Talk( 6, "Рэй: Погоди, мой дорогой друг! Тебе так интересны луки? Знай, я могу тебя обучить мастерству охотника, но знай, что профессия выбирается лишь 1 раз и навсегда. Ты готов стать настоящим Стрелком?")

	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 39 )
	TriggerCondition( 1, CheckRase, 1 )
	TriggerCondition( 1, PfEqual, 2 )
	TriggerCondition( 1, CheckConvertProfession, MIS_GUNMAN )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, SetProfession, 12 )
	TriggerAction( 1, Starteffect , 366)
	TriggerCondition( 2, LvCheck, ">", 39 )
	TriggerCondition( 2, CheckRase, 3 )
	TriggerCondition( 2, PfEqual, 2 )
	TriggerCondition( 2, CheckConvertProfession, MIS_GUNMAN )
	TriggerCondition( 2, HasLeaveBagGrid, 2 )
	TriggerCondition( 2, HasMoney, 50000 )
	TriggerAction( 2, TakeMoney, 50000 )
	TriggerAction( 2, SetProfession, 12 )
	TriggerAction( 2, Starteffect , 366)
	TriggerFailure( 2, JumpPage, 7 )
	Text( 6, "Да, я готов стать Охотником",MultiTrigger, GetMultiTrigger(), 2)
	Text( 6, "Мне нужно ещё подумать", CloseTalk)

	Talk( 7, "Рэй: К сожалению нужные условия, что бы стать Стрелком не выполнены. Стрелком может стать Ланс или Филлис. Необходимо иметь 40 уровень. Так же у тебя должна быть 1 профессия охотника.")
	AddNpcMission	(101)	--Жизнь охотника
	AddNpcMission	(251)	--Путешествие на север(Завершение)
	AddNpcMission	(252)	--Опасность в Ледыне
	AddNpcMission	(260)	--Доставка припасов(Завершение)
	AddNpcMission	(261)	--Дальнейшее расследование
--	AddNpcMission	(410)	--Движение тундры
	AddNpcMission	(757)	--Стрельбище
	AddNpcMission	(167)	--Письмо Рэю(Завершение)
	AddNpcMission	(168)	--Лишним не будет
	AddNpcMission	(169)	--Письмо Ханне
	--AddNpcMission	(174)	--Карьера охотника(Завершение от наставницы)
	AddNpcMission	(175)	--Карьера охотника
	AddNpcMission	(176)	--Карьера охотника
	AddNpcMission	(180)	--Карьера охотника(Завершение)
	AddNpcMission	(523)	--Кристальное перо
--	AddNpcMission	(1237)	--Коммерция

	AddNpcMission	(5057)	--Указания Санг Ди(Завершение)
	AddNpcMission	(5061)	--Просьба Рея
	AddNpcMission	(5069)	--История о Просветленном

	AddNpcMission	(5168)	--Кто же этот Просветленный?
	AddNpcMission	(5090)	--Ученик(Завершение)
	AddNpcMission	(5097)	--Ученик уровень 1
	AddNpcMission	(5098)	--Ученик уровень 2
	AddNpcMission	(5099)	--Ученик уровень 3
	AddNpcMission	(5100)	--Ученик уровень 4
	AddNpcMission	(5111)	--Ученик
    AddNpcMission	(6125)	--The Sixth Task
	MisListPage(2)

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<±щАЗ±¤ЅЈКїЎ¤АЧЕ·

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[±щАЗ±¤ЙМ»б»бі¤Ў¤°¬БўїЛ]		--
--							--
--		129486,49842				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk79 ()
	
	
	Talk( 1, "Рейно: Я везде, где можно заработать денег. Привет! Я Председатель Ледыни - Рейно. Самый богатый человек в городе." )
	Text( 1, "Приготовить Восстанавливающее зелье", JumpPage, 5)

	--------------------ЕЪЦЖМбЙсјБ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3138, 2 )
	TriggerCondition( 1, HasItem, 3137, 2 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3138, 2 )
	TriggerAction( 1, TakeItem, 3137, 2 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3139, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Talk( 5, "Рейно: Травы, которые продают врачи - самые обычные травы. Лишь у меня есть редкие чудодейственные травы." )
	Text( 5, "Сделать Агрипнотик",MultiTrigger, GetMultiTrigger(), 1)

	----------------єПіЙД§»ГТ©Л®
	InitTrigger()
	TriggerCondition( 1, HasItem, 1779, 1 )
	TriggerCondition( 1, HasItem, 3133, 1 )
	TriggerCondition( 1, HasItem, 3134, 1 )
	TriggerCondition( 1, HasItem, 3135, 1 )
	TriggerCondition( 1, HasItem, 3136, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3133, 1 )
	TriggerAction( 1, TakeItem, 3134, 1 )
	TriggerAction( 1, TakeItem, 3135, 1 )
	TriggerAction( 1, TakeItem, 3136, 1 )
	TriggerAction( 1, TakeItem, 1779, 1 )
	TriggerAction( 1, GiveItem, 3140, 1 , 4)
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 8 )
	Text( 5, "Приготовьте волшебное зелье",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "Ты можешь немного подождать? Приготовление потребует времени." )
	Talk( 7, "Рейно: У меня есть Агрипнотик. Но взамен тебе придется принести мне 2 Загадочных фрукта, 2 Тиамарина, 1 бутылку и 200 золотых." )
	Talk( 8, "Рейно: У меня с собой есть Волшебное зелье. Взамен принеси мне 1 Лакричное зелье, 1 Чай 'Бодрячок', 1 Чудо-мазь, 1 Брикет снежной травы, 1 бутылку и 200 золотых." )

	AddNpcMission	(459)
	AddNpcMission	(465)
	AddNpcMission	(699)
	AddNpcMission	(800)
	AddNpcMission	(1005)
	AddNpcMission	(1060)
	AddNpcMission	(1115)
	AddNpcMission	(1169)
	AddNpcMission(	1238	)
	--------------------1.7
	AddNpcMission	(5084	)
	AddNpcMission	(5085	)
	AddNpcMission	(5086	)
	AddNpcMission	(5087	)
	AddNpcMission	(5143 )
	AddNpcMission	(5144 )
	AddNpcMission	(5145 )
	AddNpcMission	(5146 )
	AddNpcMission	(5151 )



end 

function r_talk80 ()
	
	
	Talk( 1, "Мас: История моей семьи так же велика, как замок Ледыни. Здесь все знают и уважают меня." )
	Text( 1, "О пиратских легендах",JumpPage, 2 )
	Text( 1, "Ничего...",CloseTalk )


	Talk( 2, "Мас: Хо-хо-хо… Пиратская банда? Хочешь основать банду? Это зависит от твоих способностей." )
	InitTrigger()
	--TriggerCondition( 1, HasCredit, 300 )
	--TriggerCondition( 1, HasMoney, 400000 )
	--TriggerCondition( 1, HasItem, 1780, 1 )
	TriggerCondition( 1, NoGuild )
	TriggerAction( 1, CreateGuild, 1 )
	--TriggerAction( 1, TakeMoney, 400000 )
	--TriggerAction( 1, TakeCredit, 300 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 2, "Создать Пиратскую гильдию", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Мас: Не каждому под силу быть лидером пиратов. Принеси 400 000 золотых и Камень клятвы и ты должен иметь 300 репутации, чтобы доказать, что ты достоин этого" )

	AddNpcMission	(253)	--1-Опасность в Ледыни(Завершение)
	AddNpcMission	(254)	--2-Восполнение
	AddNpcMission	(453)	--3-Загадка лабиринта(Завершение)
	AddNpcMission	(698)	--4-Потерянная тайна
	AddNpcMission	(801)	--5-Самоцвет духа
	AddNpcMission	(1004)	--6-Третье задание
	AddNpcMission	(1059)	--7-Жизнь охотника
	AddNpcMission	(1114)	--8-Жизнь знахарки
	AddNpcMission	(1168)	--9-Жизнь мореплавателя
	AddNpcMission	(317)	--10-Кровь пирата
	AddNpcMission	(321)	--11-Друг пиратов
	AddNpcMission	(322)	--12-Я не из флота!(Завершение)
	AddNpcMission	(5045)	--13-Длинное туземное копье
	AddNpcMission	(5046)	--14-Убей мумию
	AddNpcMission	(5047)	--15-Маска Зорро
	AddNpcMission	(6316)	--16-Посылка Джереми(Завершение)
	AddNpcMission	(6317)	--17-Путь в Весноград

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<±щАЗ±¤№уЧеЎ¤Вн¶ыРЮЛ№

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[ТшРРіцДЙЎ¤ІјАцДИ]		--
--							--
--		136058,51931				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk81 ()
	
	
	Talk( 1, "Белинда: Добро пожаловать в Банк Ледыни. Я могу вам чем-то помочь?" )
	InitTrigger()
	TriggerCondition( 1, HasMoney, 3000 )
	TriggerAction( 1, TakeMoney, 3000 )
	TriggerAction( 1, OpenBank )
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "Хранилище (плата 3000 зол.)", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 2, "Извини, похоже, у тебя не хватает денег" )

	AddNpcMission	(1102)
	AddNpcMission	(187)
	AddNpcMission	(188)
	AddNpcMission	(189)
----------eleven
	AddNpcMission	(597)
	AddNpcMission	(598)
	AddNpcMission	(6093 )

end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ТшРРіцДЙЎ¤ІјАцДИ

-----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[ѕЖ°Й·юОсФ±Ў¤°Е°ЕА­]		--
--							--
--		131083,53031				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk82 ()
	
	
	Talk( 1, "Бабара: Привет, есть что рассказать?" )

	--Text( 1, "Дворец Кровоточащего Тельца (Квест Гороскопа)", JumpPage,9 )
--	Text( 1, "Sailor Completion Reward", JumpPage,11 )
--	Text( 1, "Pirate Completion Reward", JumpPage,12 )
--	Text( 1, "Captain completion reward", JumpPage,13 )
	Text( 1, "Приготовить краситель для волос", JumpPage, 2)
	Text( 1, "Приготовить выпечку", JumpPage, 6)


	Talk( 9, "Бабара: выбери, пожалуйста, уровень сложности от моряка до капитана. Чем выше будет уровень сложности, тем ценнее станет приз за победу. Ты уже сделал выбор? Менять его нельзя, смотри, не ошибись." )

	InitTrigger()
	TriggerCondition( 1, NoRecord,1112 )
	TriggerCondition( 1, NoRecord,1113 )
	TriggerCondition( 1, HasItem, 2943, 1 )---------ЅрЕЈГЕЖ±
	TriggerAction( 1, TakeItem, 2943, 1 )----------ЅрЕЈГЕЖ±
	TriggerAction( 1, SetRecord, 1111 )
	TriggerAction( 1, SetRecord, 1152 )
	TriggerAction( 1, JumpPage, 10 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 9, "Моряк",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1111 )
	TriggerCondition( 1, NoRecord,1113 )
	TriggerCondition( 1, HasItem, 2943, 1 )---------ЅрЕЈГЕЖ±
	TriggerAction( 1, TakeItem, 2943, 1 )----------ЅрЕЈГЕЖ±
	TriggerAction( 1, SetRecord, 1112 )
	TriggerAction( 1, SetRecord, 1152 )
	TriggerAction( 1, JumpPage, 10 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 9, "Пират",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord,1111 )
	TriggerCondition( 1, NoRecord,1112 )
	TriggerCondition( 1, HasItem, 2943, 1 )---------ЅрЕЈГЕЖ±
	TriggerAction( 1, TakeItem, 2943, 1 )----------ЅрЕЈГЕЖ±
	TriggerAction( 1, SetRecord, 1113 )
	TriggerAction( 1, SetRecord, 1152 )
	TriggerAction( 1, JumpPage, 10 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 9, "Капитан",MultiTrigger, GetMultiTrigger(), 1)

	Talk(10, "Бабара: Я уверена - ты сделаешь это!" )
	Talk( 13, "Бабара: При сражениях во дворце Тельца уровень сложности можно выбрать только один раз. И убедись, пожалуйста, что билет во дворец Тельца у тебя с собой.")

--	InitTrigger()
--	TriggerCondition( 1, HasRecord,1111 )
--	TriggerCondition( 1, HasItem, 3028, 1 )
--	TriggerCondition( 1, HasItem, 3029, 1 )
--	TriggerCondition( 1, HasItem, 3030, 1 )
--	TriggerCondition( 1, HasItem, 3031, 1 )
--	TriggerCondition( 1, HasItem, 3032, 1 )
--	TriggerCondition( 1, HasItem, 3033, 1 )
--	TriggerCondition( 1, HasItem, 3034, 1 )
--	TriggerCondition( 1, HasLeaveBagGrid, 3 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3028, 1 )
--	TriggerAction( 1, TakeItem, 3029, 1 )
--	TriggerAction( 1, TakeItem, 3030, 1 )
--	TriggerAction( 1, TakeItem, 3031, 1 )
--	TriggerAction( 1, TakeItem, 3032, 1 )
--	TriggerAction( 1, TakeItem, 3033, 1 )
--	TriggerAction( 1, TakeItem, 3034, 1 )
--	TriggerAction( 1, SetLog  , 0 )-------------??????
--
--	TriggerAction( 1, GiveItem, 3026, 1 , 4)
--	TriggerAction( 1, GiveItem, 3027, 1 , 4)
--	TriggerAction( 1, GiveItem, 0227, 10 , 4)
--	TriggerAction( 1, AddMoney, 100000 )
--	TriggerAction( 1, JumpPage, 15 )
--	TriggerFailure( 1, JumpPage, 16 )
--	Talk( 11, "Babara: Collect all 7 badges to exchange for Aries Protector Seal and the Ticket for the next Palace. There are also more prizes available." )
--	Text( 11, "Подтвердить to exchange",MultiTrigger_1, GetMultiTrigger(), 1)--------------------?????????
--
--
--
--	InitTrigger()
--	TriggerCondition( 1, HasRecord,1112 )
--	TriggerCondition( 1, HasItem, 3028, 1 )
--	TriggerCondition( 1, HasItem, 3029, 1 )
--	TriggerCondition( 1, HasItem, 3030, 1 )
--	TriggerCondition( 1, HasItem, 3031, 1 )
--	TriggerCondition( 1, HasItem, 3032, 1 )
--	TriggerCondition( 1, HasItem, 3033, 1 )
--	TriggerCondition( 1, HasItem, 3034, 1 )
--	TriggerCondition( 1, HasLeaveBagGrid, 3 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3028, 1 )
--	TriggerAction( 1, TakeItem, 3029, 1 )
--	TriggerAction( 1, TakeItem, 3030, 1 )
--	TriggerAction( 1, TakeItem, 3031, 1 )
--	TriggerAction( 1, TakeItem, 3032, 1 )
--	TriggerAction( 1, TakeItem, 3033, 1 )
--	TriggerAction( 1, TakeItem, 3034, 1 )
--
--	TriggerAction( 1, GiveItem, 3026, 1 , 4)
--	TriggerAction( 1, GiveItem, 3027, 1 , 4)
--	TriggerAction( 1, GiveItem, 0227, 20 , 4)
--	TriggerAction( 1, AddMoney, 200000 )
--	TriggerAction( 1, JumpPage, 15 )
--	TriggerFailure( 1, JumpPage, 16 )
--	Talk( 11, "Babara: Collect all 7 Emblems to exchange for Taurus Protector Seal and Gemini Gate Ticket. There are also other prizes available." )
--	Text( 11, "Подтвердить to exchange",MultiTrigger, GetMultiTrigger(), 1)
--
--
--	InitTrigger()
--	TriggerCondition( 1, HasRecord,1113 )
--	TriggerCondition( 1, HasItem, 3028, 1 )
--	TriggerCondition( 1, HasItem, 3029, 1 )
--	TriggerCondition( 1, HasItem, 3030, 1 )
--	TriggerCondition( 1, HasItem, 3031, 1 )
--	TriggerCondition( 1, HasItem, 3032, 1 )
--	TriggerCondition( 1, HasItem, 3033, 1 )
--	TriggerCondition( 1, HasItem, 3034, 1 )
--	TriggerCondition( 1, HasLeaveBagGrid, 3 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3028, 1 )
--	TriggerAction( 1, TakeItem, 3029, 1 )
--	TriggerAction( 1, TakeItem, 3030, 1 )
--	TriggerAction( 1, TakeItem, 3031, 1 )
--	TriggerAction( 1, TakeItem, 3032, 1 )
--	TriggerAction( 1, TakeItem, 3033, 1 )
--	TriggerAction( 1, TakeItem, 3034, 1 )
--
--	TriggerAction( 1, GiveItem, 3026, 1 , 4)
--	TriggerAction( 1, GiveItem, 3027, 1 , 4)
--	TriggerAction( 1, GiveItem, 0227, 30 , 4)
--	TriggerAction( 1, AddMoney, 300000 )
--	TriggerAction( 1, JumpPage, 15 )
--	TriggerFailure( 1, JumpPage, 16 )
--	Talk( 12, "Babara: Collect all 7 Taurus Emblem to exchange with me for Taurus Protector Seal and Gemini Gate Ticket. There are also more prizes available." )
--	Text( 12, "Подтвердить to exchange",MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk( 16, "Babara: You don't seem to have enough emblems on you! Please check if your bag is locked, and please make sure you have 3 slots in your inventory! Are you sure you want to choose this difficulty?")
--	Talk( 15, "Babara: Next Palace is Gemini Palace, and please continue your effort!")


-----------µчЕдА¶Й«Иѕ·ўјБ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1792, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1792, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1802, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Talk( 2, "Бабара: Привет! Видел что-нибудь интересное? Выкладывай!" )
	Text( 2, "Сварить Синий краситель", MultiTrigger, GetMultiTrigger(), 1)
-------------------------µчЕдЧПЙ«Иѕ·ўјБ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1793, 5 )
	TriggerCondition( 1, HasItem, 1657, 1 )
	TriggerCondition( 1, HasItem, 1778, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1793, 5 )
	TriggerAction( 1, TakeItem, 1657, 1 )
	TriggerAction( 1, TakeItem, 1778, 1 )
	TriggerAction( 1, GiveItem, 1803, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 2, "Сварить Пурпурный краситель", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Бабара: Я проделала огромную работу для тебя. Обращайся еще." )
	Talk( 4, "Бабара: Для приготовления Синего красителя понадобится Синяя краска (5), Особый газ (1), 1 Радужный стакан и 200 золотых." )
	Talk( 5, "Бабара: Для изготовления Пурпурного красителя нужны Пурпурная краска (5), Особый газ (1), 1 Радужный стакан и 200 золотых." )

	InitTrigger()
	TriggerCondition( 1, HasItem, 1777, 1 )
	TriggerCondition( 1, HasItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 3116, 10 )
	TriggerAction( 1, TakeItem, 1777, 1 )
	TriggerAction( 1, GiveItem, 3122, 1 , 4)
	TriggerAction( 1, JumpPage, 7 )
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6, "Бабара: Я единственная в Ледыни знаю, как приготовить Сок эльфийского фрукта. Сделать тебе стаканчик?" )
	Text( 6, "Смешать Сок эльфийского фрукта", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "Бабара: Этот Сок эльфийского фрукта я сделала для тебя." )

	Talk( 8, "Бабара: Простите, но для того, чтобы смешать напиток, вам необходимо 10 Эльфийских фруктов и 1 Стакан." )
	AddNpcMission	(1078)
	AddNpcMission	(389)
---------------------°Е°ЕА­
	---------------ЅрЕЈ
	AddNpcMission	(5608)
	AddNpcMission	(5609)
	AddNpcMission	(5610)
	AddNpcMission	(5611)
	AddNpcMission	(5612)
	AddNpcMission	(5613)

	AddNpcMission	(5614)
	AddNpcMission	(5615)
	AddNpcMission	(5616)
	AddNpcMission	(5617)
	AddNpcMission	(5618)
	AddNpcMission	(5619)
	AddNpcMission	(5620)
	AddNpcMission	(5621)
	AddNpcMission	(5622)
	AddNpcMission	(5623)
	AddNpcMission	(5624)

	AddNpcMission	(5667)
	--AddNpcMission	(5668)

	AddNpcMission	(5670)
	AddNpcMission	(5671)
	AddNpcMission	(5672)
--	AddNpcMission	(5673)
	AddNpcMission	(5675)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ѕЖ°Й·юОсФ±Ў¤°Е°ЕА­

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[·юЧ°µкЦчЎ¤єІДИ]		--
--							--
--		134926,53992				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk83 ()
	
	
	Talk( 1, "Ханна: Милости просим в Портное ателье Ледыни. У нас всегда самая модная одежда." )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Ничего...",CloseTalk )
	
	InitTrade()
	Defence(	0305	)
	Defence(	0481	)
	Defence(	0657	)
	Defence(	0313	)
	Defence(	0487	)
	Defence(	0665	)
	Defence(	0306	)
	Defence(	0482	)
	Defence(	0658	)
	Defence(	0311	)
	Defence(	0489	)
	Defence(	0663	)
	Defence(	0307	)
	Defence(	0483	)
	Defence(	0659	)
	Defence(	0314	)
	Defence(	0490	)
	Defence(	0666	)
	Defence(	0310	)
	Defence(	0486	)
	Defence(	0662	)
	Defence(	0491	)
	Defence(	0315	)
	Defence(	0667	)
	Defence(	0312	)
	Defence(	0488	)
	Defence(	0664	)
	Defence(	0316	)
	Defence(	0492	)
	Defence(	0668	)




	AddNpcMission	(725 )
	AddNpcMission	(1067)
	AddNpcMission	(170)
	AddNpcMission	(171)
	AddNpcMission	(172)
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<·юЧ°µкЦчЎ¤єІДИ

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[ВГµкАП°еЎ¤ФјЙЄ·т]		--
--							--
--		129074,54098				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk84 ()
	
	
	Talk( 1, "Яски: Добро пожаловать в гостиницу Ледыни. Я ее хозяин Яски." )
	AddNpcMission	(1085)
	AddNpcMission	(184)
	AddNpcMission	(185)
	AddNpcMission	(186)
	---------------ЗпµєїЄ·ў
	--AddNpcMission	(6179)
	--AddNpcMission	(6180)
	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ВГµкАП°еЎ¤ФјЙЄ·т

----------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[В·ИЛЎ¤¶Ў]		--
--							--
--		133550,46900				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function r_talk85 ()
	
	
	Talk( 1, "Тинк: Ты не видел трех моих братьев? Они живут в Шайтане, Аргенте и Громограде." )
	Text( 1, "Очистить", JumpPage, 2)
-------------------Б¶ФмµШЅрїуКЇ
	InitTrigger()
	TriggerCondition( 1, HasItem, 1781, 10 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 1781, 10 )
	TriggerAction( 1, GiveItem, 1782, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )	
	Talk( 2, "Тинк: Я не простой персонаж. Без меня игры вообще не было бы! Хо-хо, сейчас сам увидишь!" )
	Text( 2, "Очистить Терранское золото", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Тинк: Вот Золотая терранская руда для тебя." )
	Talk( 4, "Тинк: Я знаю способ изготовления Терранской золотой Руды. Для этого мне необходимо 10 Кусочков терранского золотого и 200 золотых." )

	AddNpcMission	(6015 )
	AddNpcMission	(6016 )
	AddNpcMission	(6019 )
	AddNpcMission	(6020 )
	AddNpcMission	(6021 )
	AddNpcMission	(6022 )
	AddNpcMission	(6023 )
	AddNpcMission	(6024 )
	-------------------В·ИЛЎ¤¶Ў  -------------------------ѕЮР·
	AddNpcMission	(5859 )
	AddNpcMission	(5860 )

	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<В·ИЛЎ¤¶Ў




------------------------------------------------------------
-- °ЧТшЦ®іЗ:АъК·ИООс:РВКЦЦёµјИООс
------------------------------------------------------------

function BT_NewUser001()

	Talk( 1, "Синна: Здравствуй, я советник в Аргенте. Я отвечаю на вопросы всех новоприбывших путешественников. Если тебе что-то неясно, спроси меня." )
	--Text( 1, 'Звезда единства', JumpPage, 31 )
	--Text( 1, 'Звезда единства', JumpPage, 31 )
	Text( 1, 'Звезда единства', SendExchangeXData )
	InitExchangeX()
	ExchangeDataX	(		8142	,	5	,	1033	,	1	)
	Text( 1, "Узнать об Аргенте", JumpPage, 4 )
	Text( 1, "О классах и атрибутах", JumpPage, 11 )
	Text( 1, "Узнать расположение монстров", JumpPage, 30 )
	Text( 1, "Я все понял",  CloseTalk)



	Talk( 4, "Аргент - место, где торговцы сбывают свой товар. Осмотрись." )
	Text( 4, "Оружейная лавка", JumpPage, 5 )
	Text( 4, "Магазин доспехов", JumpPage, 7 )
	Text( 4, "Бакалейная лавка", JumpPage, 8 )
	Text( 4, "Портальщик", JumpPage, 9 )
	Text( 4, "О медсестре", JumpPage, 10 )

	Talk( 5, "Голди, кузнец Аргента, торгует оружием. Товар у него отличный. Навестите его, лавка кузнеца находится в левом верхнем углу Аргента." )
	Text( 5, "Узнать о других магазинах", JumpPage, 4 )
	Text( 5, "Я все понял",  CloseTalk )

--	Talk( 6, "Look for me again if there is anything you don't understand", CloseTalk )

	Talk( 7, "Доспехи, сделанные в Аргенте, очень прочные. Ищи портных в верхнем правом углу города." )
	Text( 7, "Узнать о других магазинах", JumpPage, 4 )
	Text( 7, "Я все понял",  CloseTalk )

	Talk( 8, "У нас есть много вещей, нужных начинающему пирату. Найти бакалейщика пожно сверху от фонтана." )
	Text( 8, "Узнать о других магазинах", JumpPage, 4 )
	Text( 8, "Я все понял",  CloseTalk )

	Talk( 9, "Портальщик доставит тебя в любой город на этой земле. Для тебя могут также записать точку возрождения. Ты найдешь Портальщицу у Западных ворот." )
	Text( 9, "Узнать о других магазинах", JumpPage, 4 )
	Text( 9, "Я все понял",  CloseTalk )

	Talk( 10, "Медсестру можно найти недалеко от фонтана. Она очень заботлива, и к ней все очень хорошо относятся." )
	Text( 10, "Узнать о других магазинах", JumpPage, 4 )
	Text( 10, "Я все понял", CloseTalk)

	
	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 10 )
	TriggerAction( 1, SetFlag, 700, 10)
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 12 )
	Talk( 11, "Синна: Ты новичок - значит, должен прежде всего разобраться в категориях и свойствах. Что ты хочешь узнать?" )
	Text( 11, "Классы", JumpPage, 12)
	Text( 11, "Характеристики", JumpPage, 13)
	Text( 11, "Я все понял", JumpPage, 6 )
	--Text( 11, "Классы", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, NoRecord, 700 )
	TriggerCondition( 1, HasMission, 700 )
	TriggerCondition( 1, NoFlag, 700, 20 )
	TriggerAction( 1, SetFlag, 700, 20)
	TriggerAction( 1, JumpPage, 13 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 11, "Характеристики", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "Синна: В этой игре 4 базовых класса. У каждой свой образ жизни и своя цель в игре. Кем бы ты хотел стать?" )
	Text( 12, "Мечник", JumpPage, 14 )
	Text( 12, "Охотник", JumpPage, 15 )
--	Text( 12, "Regarding Sailor", JumpPage, 16 )
	Text( 12, "Исследователь", JumpPage, 17 )
	Text( 12, "Знахарка", JumpPage, 18 )
--	Text( 12, "Regarding Artisan", JumpPage, 19 )
--	Text( 12, "Regarding Merchant", JumpPage, 20 )
	Text( 12, "Понятно. Узнать еще что-нибудь...", JumpPage, 11 )

	Talk( 13, "Синна: У каждого персонажа есть 5 основных характеристик. Игроки могут повышать их и соответственно развивать свои умения. Каждый новый уровень приносит игроку 1 пункт параметра и 1 пункт навыка. Начинающему игроку дается 5 пунктов характеристики." )
	Text( 13, "Сила", JumpPage, 21 )
	Text( 13, "Ловкость", JumpPage, 22 )
	Text( 13, "Телосложение", JumpPage, 23 )
	Text( 13, "Дух", JumpPage, 24 )
	--Text( 13, "Regarding Luck", JumpPage, 25 )
	Text( 13, "Точность", JumpPage, 26 )
	Text( 13, "Понятно. Узнать еще что-нибудь...", JumpPage, 11 )

	Talk( 14, "Синна: Мечники могут оказать самое сильное физическое сопротивление в игре. Этот класс доступен персонажам-мужчинам по достижении 10 уровня. Чтобы стать Мечником, отыщи Питера в Аргенте." )
	Text( 14, "Другие классы", JumpPage, 12)
	Text( 14, "Характеристики", JumpPage, 13)
	Text( 14, "Я все понял", JumpPage, 27)

	Talk( 15, "Синна: Охотник - это единственный класс в игре, который использует оружие дальнего действия. После второго выбора специализации такие персонажи могут использовать огнестрельное оружие, что повысит боевую мощь. Охотниками могут стать только Ланс и Филлис. Для этого персонажи уровня 10 должны обратиться к Мечнику Рэю в замке Ледыни." )
	Text( 15, "Другие классы", JumpPage, 12)
	Text( 15, "Характеристики", JumpPage, 13)
	Text( 15, "Я все понял", JumpPage, 27)

	Talk( 16, "Senna: Sailor is the strongest class in the sea. It is still unreleased in current version." )
	Text( 16, "Другие классы", JumpPage, 12)
	Text( 16, "Характеристики", JumpPage, 13)
	Text( 16, "Я все понял", JumpPage, 27)
	
	Talk( 17, "Синна: Исследователь - самый лучший помощник во время путешествий по морю. Стать им могут все три типа персонажей, за исключением Карциза. Чтобы стать Исследователем, а затем мореплавателем, игрокам 10 уровня и выше нужно поговорить с Малышом Даниэлем в Аргенте." )
	Text( 17, "Другие классы", JumpPage, 12)
	Text( 17, "Характеристики", JumpPage, 13)
	Text( 17, "Я все понял", JumpPage, 27)

	Talk( 18, "Синна: Знахарки – верные служительницы богини Кары. Они обладают волшебной силой исцеления. Только Филлис и Ами могут стать Знахарками. Персонажи 10 уровня должны отыскать Верховного жреца Геньона в Шайтане, чтобы стать Знахарками." )
	Text( 18, "Другие классы", JumpPage, 12)
	Text( 18, "Характеристики", JumpPage, 13)
	Text( 18, "Я все понял", JumpPage, 27)

	Talk( 19, "Senna: Artisan is the only class that can make item. They will be in-charge of building structures for the guild. It is still unreleased in current version." )
	Text( 19, "Другие классы", JumpPage, 12)
	Text( 19, "Характеристики", JumpPage, 13)
	Text( 19, "Я все понял", JumpPage, 27)

	Talk( 20, "Senna: Merchant is the richest of all classes as they specialise in commerce. It is still unreleased in current version." )
	Text( 20, "Другие классы", JumpPage, 12)
	Text( 20, "Характеристики", JumpPage, 13)
	Text( 20, "Я все понял", JumpPage, 27)

	Talk( 21, "Синна: Сила увеличивает мощность Атаки в ближнем бою" )
	Text( 21, "Другие характеристики", JumpPage, 13)
	Text( 21, "Другие классы", JumpPage, 12)
	Text( 21, "Я все понял", JumpPage, 27)

	Talk( 22, "Синна: Ловкость повышает Скорость атаки и Шанс уклонения" )
	Text( 22, "Другие характеристики", JumpPage, 13)
	Text( 22, "Другие классы", JumpPage, 12)
	Text( 22, "Я все понял", JumpPage, 27)

	Talk( 23, "Синна: Телосложение повышает Максимальное количество жизни и Физическое сопротивление" )
	Text( 23, "Другие характеристики", JumpPage, 13)
	Text( 23, "Другие классы", JumpPage, 12)
	Text( 23, "Я все понял", JumpPage, 27)

	Talk( 24, "Синна: Дух повышает Максимальное количество маны и скорость ее восстановления при использовании навыков" )
	Text( 24, "Другие характеристики", JumpPage, 13)
	Text( 24, "Другие классы", JumpPage, 12)
	Text( 24, "Я все понял", JumpPage, 27)

	Talk( 25, "Senna: Luck increases Critical Rate and Combining Rate" )
	Text( 25, "Другие характеристики", JumpPage, 13)
	Text( 25, "Другие классы", JumpPage, 12)
	Text( 25, "Я все понял", JumpPage, 27)

	Talk( 26, "Синна: Точность повышает силу дистанционной атаки и шанс нанесения урона" )
	Text( 26, "Другие характеристики", JumpPage, 13)
	Text( 26, "Другие классы", JumpPage, 12)
	Text( 26, "Я все понял", JumpPage, 27)

	Talk( 27, "Синна: Хорошо. Если возникнут вопросы, всегда готова тебе помочь!")
	
	Talk( 28, "Синна: Молодец, похоже, теперь у тебя есть понимание основных боевых приемов, а также того, что путь к твоей мечте требует серьезной работы. Похоже, я смогла тебя начить всему, что знала сама. Не хочешь познакомиться с моими друзьями? Если ты хочешь сражаться, найди Стражника Майкла. Последний раз его видели в (958, 3549). Вы также можете встретить Шайлу (903, 3646) - знаменитого врача Шайтана. В последнее время она искала помощников, готовых помочь ей собрать ингредиенты для снадобий." )
	Text( 28, "Узнать об Аргенте", JumpPage, 4 )
	Text( 28, "О классах и атрибутах", JumpPage, 11 )
	Text( 28, "Я все понял",  CloseTalk)

	Talk( 29, "Очень хорошо. Ты уже достиг 9-го уровня. Как только ты достигнешь 10-го уровня, ты сможешь выбрать свою первую профессию. Разыщи Стражника - Питера в Аргенте (2192, 2767) если ты хочешь быть Мечником. Найди Верховного Жреца Геньона в Шайтане (862, 3500) если ты хочешь стать Знахаркой. Чтобы стать Охотником, разыщи Мечника Рэя из Ледыни (1365, 570). Исследователей готовит Малыш Даниэль из Аргента (2193, 2730). Для быстрого перемещения между городами ты можешь воспользоваться услугами портальщиков." )
	Text( 29, "Я хотел бы еще кое-что узнать", JumpPage, 4 )
	Text( 29, "О классах и атрибутах", JumpPage, 11 )
	Text( 29, "Я все понял",  CloseTalk )

	Talk( 30, "Синна: Чтобы выяснить, где находятся чудовища, достаточно разыскать Пьянчугу в баре Аргента (2222, 2889). За плату он сообщит тебе координаты." )
	
	InitTrigger()
	TriggerCondition( 1, NoItem, 1034, 1 )
	TriggerCondition( 1, NoItem, 1033, 1 )
	TriggerCondition( 1, BankNoItem, 1034, 1 )
	TriggerCondition( 1, BankNoItem, 1033, 1 )
	TriggerCondition( 1, EquipNoItem, 1034, 1 )
	TriggerCondition( 1, EquipNoItem, 1033, 1 )
	TriggerCondition( 1, ChekTimeHook )
	TriggerCondition( 1, LvCheck, "<", 41 )
	TriggerAction( 1, GiveItem, 1033, 1, 4 )
	TriggerFailure( 1, JumpPage, 6 )
	Talk( 31, "Звезда единства - таинственный предмет из другого мира. Она позволит тебе использовать силу единства, и тогда... не знаю, что тогда. Все игроки с уровнем выше 41 могут обменять Звезду единства на хорошее снаряжение. Тебя это интересует?" )
	Text( 31, "Получить Звезду единства",MultiTrigger, GetMultiTrigger(), 1)
	Text( 31, "Обменять Звезду единства",JumpPage, 32 )

	Talk( 32,"Благодарим за выбор наших товаров. Если у тебя есть 'Звезда единства', можешь выкупить оружие 50 ур. для своей категории. Заманчиво, правда?")
	Text( 32, "Получить оружие на свой класс", Transfer_TeamStar, 1)

	Talk( 6, "Синна: Извини, но ты не соответствуешь нужным требованиям" )

	--InitTrigger()
	---------------------НжјТі¬№э6ј¶НкіЙ№эЙЄ°ІµДХЅ¶·СµБ·ИООс
	--TriggerCondition( 1, LvCheck, ">", 4 )
	--TriggerCondition( 1, LvCheck, "<", 8 )
	--TriggerCondition( 1, HasRecord, 704)
	--TriggerAction( 1, JumpPage, 28 )
	--TriggerCondition( 2, LvCheck, ">", 8 )
	--TriggerCondition( 2, PfEqual, 0 )
	--TriggerAction( 2, JumpPage, 29 )
	--TriggerFailure( 2, JumpPage, 1 )

	--Start( GetMultiTrigger(), 2 )

	AddNpcMission	(701 )
	AddNpcMission	(702 )
	AddNpcMission	(704 )
	AddNpcMission	(706 )
	AddNpcMission	(708 )
	AddNpcMission	(200 )
	AddNpcMission	(402)
	AddNpcMission	(50)
	AddNpcMission	(51)
	--AddNpcMission	(61)
	--AddNpcMission	(62)
	--AddNpcMission	(63)
	--AddNpcMission	(64)
	--AddNpcMission	(65)
	AddNpcMission	(82)

	MisListPage(28)
	MisListPage(29)
-----------------¶юФВ-------------С№Лк°ь
	--AddNpcMission	(5507)
end




------------------------------------------------------------
-- НЁУГѕєјјіЎЅЕ±ѕ
------------------------------------------------------------

function r_talk87 ()

	Talk( 1, "Управляющий Арены: Привет! Я Управляющий ареной. Хочешь показать свои способности? Хочешь сразиться с другими игроками?" )
	Text( 1, "Получить Медаль Отваги", JumpPage, 2)
	Text( 1, "Распределение очков чести в отряде", JumpPage, 6)
	Text( 1, "Обмен взноса команд", JumpPage, 3)
	Text( 1, "Записать точку возрождения", SetSpawnPos, "Argent Bar")
	
	InitTrigger()
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, ReHp,50 )
	TriggerFailure( 1, JumpPage, 1 )
	Text( 1, 'Великое исцеление', MultiTrigger,GetMultiTrigger(), 19 )

	Talk( 2, "Управляющий Арены: Привет! Чтобы получить Медаль отваги, нужно быть выше 25 ур. и иметь 50000 золотых, чтобы оплатить пошлину. Тогда ты сможешь участвовать в битвах с другими игроками. Медаль отваги всегда будет у тебя. Ее нельзя выбросить, уничтожить или потерять." )
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 25 )
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerCondition( 1, NoItem, 3849, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 3849, 1, 97 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Получить Медаль Отваги", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Управляющий Арены: Очки взноса отряда можно обменивать на очки Чести. Получить их можно, сразившись в битве отрядов. Одно очко Чести стоит 10 очков Очков взноса отряда и 8000 золотых." )
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 10 )
	TriggerCondition( 1, HasMoney, 8000 )
	TriggerAction( 1, TakeMoney, 8000 )
	TriggerAction( 1, TakeOffer, 10 )
	TriggerAction( 1, AddCredit, 1 )
	TriggerFailure( 1, JumpPage, 5 )
	Text( 3, "Выкупить 10 Очков взноса отряда", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 50 )
	TriggerCondition( 1, HasMoney, 40000 )
	TriggerAction( 1, TakeMoney, 40000 )
	TriggerAction( 1, TakeOffer, 50 )
	TriggerAction( 1, AddCredit, 5 )
	TriggerFailure( 1, JumpPage, 11 )
	Text( 3, "Выкупить 50 Очков взноса отряда", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 100 )
	TriggerCondition( 1, HasMoney, 80000 )
	TriggerAction( 1, TakeMoney, 80000 )
	TriggerAction( 1, TakeOffer, 100 )
	TriggerAction( 1, AddCredit, 10 )
	TriggerFailure( 1, JumpPage, 12 )
	Text( 3, "Выкупить 100 Очков взноса отряда", MultiTrigger, GetMultiTrigger(), 1)
	InitTrigger()
	TriggerCondition( 1, HasItem, 3849, 1 )
	TriggerCondition( 1, LessCredit, "<", 0 )
	TriggerCondition( 1, HasOffer, 300 )
	TriggerCondition( 1, HasMoney, 15000 )
	TriggerAction( 1, TakeMoney, 15000 )
	TriggerAction( 1, TakeOffer, 300 )
	TriggerAction( 1, AddCredit, 30 )
	TriggerFailure( 1, JumpPage, 13 )
	--Text( 3, "Выкупить 300 Очков взноса отряда", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "Управляющий Арены: Получить Медаль отваги могут игроки не ниже 25 уровня, у которых есть пустая ячейка в рюкзаке и 50000 золотых." )

	Talk( 5, "Управляющий Арены: Привет! Чтобы обменять 10 Очков взноса отряда на 1 очко Чести, тебе понадобится 10 Очков взноса отряда, 8000 золотых и отрицательная Честь." )

	Talk( 6, "Управляющий Арены: Я могу рассказать тебе как распределяются очки Чести" )
	Text( 6, "О количестве боев", JumpPage, 7)
	--Text( 6, "О награде за поединок", JumpPage, 8)
	--Text( 6, "О Воинской Чести", JumpPage, 9)
	Text( 6, "О том, как избежать наказания", JumpPage, 10)

	Talk( 7, "Управляющий Арены: Каждая битва увеличит счетчик битв на 1" )

	Talk( 8, "Управляющий Арены: Каждое убийство увеличит счетчик на 1 и даст тебе 1 очко Чести. За противников, которых ты превосходишь больше, чем на 10 уровней, Честь не дается. За противников, превосходящих тебя на 10 уровней дается дополнительно 1 очко Чести. Для побежденных все наоборот." )

	Talk( 9, "Управляющий Арены: Каждая победа отряда увеличивает ее счетчик побед на единицу, а количество очков чести возрастает пропорционально разнице между средними уровнями сторон." )

	Talk( 10, "Управляющий Арены: Каждый раз когда отряд выходит из боя и спасается бегством, система вычитает у него Очки чести в соответствии со средним уровнем обоих участников сражения, плюс по два Очка чести за каждого. В результате второй участник набирает Очки чести, потерянные его противником." )

	Talk( 11, "Управляющий Арены: Привет! Чтобы обменять 50 очков взноса в отряд на 5 очков чести, надо иметь 50 очков взноса в отряд, 2500 золотых и отрицательное значение очков чести." )

	Talk( 12, "Управляющий Арены: Привет! 100 Очков взноса отряда можно обменять на 10 Очков чести. Для этого тебе нужно 5000 золотых и отрицательное значение очков чести." )

	Talk( 13, "Управляющий Арены: Привет! Чтобы обменять 300 Очков взноса отряда на 30 Очков чести, необходимо заплатить 300 Очков взноса отряда и 15000 золотых и иметь отрицательные Очки чести" )


end



------------------------------------------------------------
-- °ЧТшіЗЎЄЎЄСІВЯ±шЎ¤Вн¶ыЛ№
------------------------------------------------------------

function r_talk88 ()

	Talk( 1, "Маркуса: Привет, я здесь новенький. Меня зовут Маркуса. Интересно, почему же так много осьминогов за Аргентом. Капитан отправил меня вычистить грязищу, которую они развели своими 'чернилами'... (хныканье)... Новички всегда крайние..." )

	Talk( 2, "Очень хорошо. Ты уже достиг 9-го уровня. Как только ты достигнешь 10-го уровня, ты сможешь выбрать свою первую профессию. Разыщи Стражника - Питера в Аргенте (2192, 2767) если ты хочешь быть Мечником. Найди Верховного Жреца Геньона в Шайтане (862, 3500) если ты хочешь стать Знахаркой. Чтобы стать Охотником, разыщи Мечника Рэя из Ледыни (1365, 570). Исследователей готовит Малыш Даниэль из Аргента (2193, 2730). Для быстрого перемещения между городами ты можешь воспользоваться услугами портальщиков." )


	---------------------НжјТі¬№э9ј¶
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission	(730 )
	--AddNpcMission	(736 )
	--AddNpcMission	(737 )
	AddNpcMission	(400 )
	AddNpcMission	(52 )
	AddNpcMission	(53 )
	AddNpcMission	(54 )
	AddNpcMission	(5696)
	AddNpcMission	(5697)
	MisListPage(2)

end

------------------------------------------------------------
-- Йіб°іЗЎЄЎЄСІВЯ±шЎ¤ВхїЛ
------------------------------------------------------------

function r_talk89 ()

	Talk( 1, "Майкл: Здравствуй. Я должен патрулировать окрестности... Будь осторожен, скорпионы здесь очень опасны. Как тут скучно..." )
	
	Talk( 2, "Очень хорошо. Ты уже достиг 9-го уровня. Как только ты достигнешь 10-го уровня, ты сможешь выбрать свою первую профессию. Разыщи Стражника - Питера в Аргенте (2192, 2767) если ты хочешь быть Мечником. Найди Верховного Жреца Геньона в Шайтане (862, 3500) если ты хочешь стать Знахаркой. Чтобы стать Охотником, разыщи Мечника Рэя из Ледыни (1365, 570). Исследователей готовит Малыш Даниэль из Аргента (2193, 2730). Для быстрого перемещения между городами ты можешь воспользоваться услугами портальщиков." )

	---------------------НжјТі¬№э9ј¶
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission	(731 )
	--AddNpcMission	(740 )
	--AddNpcMission	(741 )
	AddNpcMission	(235 )
	AddNpcMission	(236 )
	AddNpcMission	(241 )
	AddNpcMission	(242 )
	AddNpcMission	(412)
	AddNpcMission	(85)
	AddNpcMission	(86)
	AddNpcMission	(87)
	AddNpcMission	(922)--------------------------------------------
	AddNpcMission	(923)
	AddNpcMission	(924)------------
----------СІВЯ±шЎ¤ВхїЛ-------Л«ЧУ
	AddNpcMission	(5692)
	AddNpcMission	(5693)

	MisListPage(2)

end

------------------------------------------------------------
-- ±щАЗ±¤ЎЄЎЄСІВЯ±шЎ¤РЎДЄ
------------------------------------------------------------

function r_talk90 ()

	Talk( 1, "Малыш Мо: Мне приходится патрулировать целый день напролет. Здесь так скучно и холодно. У тебя не найдется ничего поесть? Я умираю с голоду. А еды здесь хорошей не найдешь..." )

	Talk( 2, "Очень хорошо. Ты уже достиг 9-го уровня. Как только ты достигнешь 10-го уровня, ты сможешь выбрать свою первую профессию. Разыщи Стражника - Питера в Аргенте (2192, 2767) если ты хочешь быть Мечником. Найди Верховного Жреца Геньона в Шайтане (862, 3500) если ты хочешь стать Знахаркой. Чтобы стать Охотником, разыщи Мечника Рэя из Ледыни (1365, 570). Исследователей готовит Малыш Даниэль из Аргента (2193, 2730). Для быстрого перемещения между городами ты можешь воспользоваться услугами портальщиков." )

	---------------------НжјТі¬№э9ј¶
	InitTrigger()
	TriggerCondition( 1, LvCheck, ">", 8 )
	TriggerCondition( 1, LvCheck, "<", 10 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	Start( GetMultiTrigger(), 1 )

	--AddNpcMission	(732 )
	--AddNpcMission	(742 )
	--AddNpcMission	(743 )
	AddNpcMission	(255 )
	AddNpcMission	(256 )
	AddNpcMission	(408)
	AddNpcMission	(164)
	AddNpcMission	(165)
	AddNpcMission	(166)
	AddNpcMission	(177)
	AddNpcMission	(178)
	AddNpcMission	(179)


	MisListPage(2)

end

------------------------------------------------------------
-- Йіб°іЗЎЄЎЄТ©ІДЙМИЛЎ¤ЙіА­А­
------------------------------------------------------------

function r_talk91 ()

	Talk( 1, "Шайла: Эй, эй... Я местный врач. У меня есть все, что тебе нужно!" )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Ничего...",CloseTalk )
	
	Talk( 2, "Очень хорошо. Ты уже достиг 9-го уровня. Как только ты достигнешь 10-го уровня, ты сможешь выбрать свою первую профессию. Разыщи Стражника - Питера в Аргенте (2192, 2767) если ты хочешь быть Мечником. Найди Верховного Жреца Геньона в Шайтане (862, 3500) если ты хочешь стать Знахаркой. Чтобы стать Охотником, разыщи Мечника Рэя из Ледыни (1365, 570). Исследователей готовит Малыш Даниэль из Аргента (2193, 2730). Для быстрого перемещения между городами ты можешь воспользоваться услугами портальщиков." )
	Text( 2, "Торг", BuyPage )
	Text( 2, "Ничего...",CloseTalk )

	InitTrade()
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


	---------------------НжјТі¬№э9ј¶
	--InitTrigger()
	--TriggerCondition( 1, LvCheck, ">", 8 )
	--TriggerCondition( 1, LvCheck, "<", 10 )
	--TriggerAction( 1, JumpPage, 2 )
	--TriggerFailure( 1, JumpPage, 1 )
	--Start( GetMultiTrigger(), 1 )

	AddNpcMission	(717 )
	--AddNpcMission	(734 )
	--AddNpcMission	(744 )
	--AddNpcMission	(745 )

	MisListPage(2)

end 


function r_talk92 ()

	Talk( 1, "Чиво: Привет, я Чиво. Я здесь единственный доктор в округе. Тебе нужны травы?" )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Ничего...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Defence(	4651	)
	Defence(	4652	)
	Defence(	4653	)
	Defence(	4654	)
	Defence(	4655	)
	Defence(	4656	)
	Defence(	4657	)
	Defence(	4658	)
	Defence(	4659	)
	Defence(	4660	)

	AddNpcMission	(471)	--Смена владельца(Завершение)
	AddNpcMission	(472)	--Флот Громограда
	AddNpcMission	(753)	--Прогулка Целительницы(Завершение)
end

------------------------------------------------------------
-- Аµ°ІЙ­БЦЎЄЎЄВГРРТЅЙъЎ¤ГЧДОПЈ¶ы
------------------------------------------------------------

function r_talk93 ()

	Talk( 1, "Миносива: Здравствуйте, меня зовут Миносива. В округе ты не найдешь больше ни одного доктора. Тебе нужны какие-нибудь лекарства?" )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Ничего...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Defence(	4626	)
	Defence(	4627	)
	Defence(	4628	)
	Defence(	4629	)
	Defence(	4630	)
	Defence(	4631	)
	Defence(	4632	)
	Defence(	4633	)
	Defence(	4634	)
	Defence(	4635	)

	AddNpcMission(	1442	)
	AddNpcMission	(	1900	)

	---------------°ЧСт
	AddNpcMission	(5567)
	AddNpcMission	(5568)
	AddNpcMission	(6052 )
	AddNpcMission	(6053 )
	


	
end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----ёЈїЛ
------------------------------------------------------------

function r_talk94 ()

	Talk( 1, "Фукс: Можно подумать, я о себе слишком высокого мнения! Но я просто мечтаю стать настоящим матросом! Неужели проболтался?" )

end

------------------------------------------------------------
-- ±щј«І№ёшХѕ-----·ЁµП¶ы
------------------------------------------------------------

function r_talk95 ()

	Talk( 1, "Фарди: Мой глупый друг хочет продавать в жарком и сухом Шайтане зимнюю одежду… Как мне отговорить его от этой затеи…" )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Ничего...",CloseTalk )

	InitTrade()
		Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
		
	AddNpcMission	(1065)
	AddNpcMission	(	869	)
	AddNpcMission	(	872	)
	AddNpcMission	(	874	)
	AddNpcMission	(	878	)
	AddNpcMission	(	886	)
	AddNpcMission	(	889	)
	AddNpcMission	(	470	)
	AddNpcMission(	1738	)
	AddNpcMission	(	1927	)
	AddNpcMission	(	1948	)

	------------------¶юФВ
	--AddNpcMission	(5504	)



end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----ПЇМШ
------------------------------------------------------------

function r_talk96 ()

	Talk( 1, "Кситрон: Все говорят, что я - волк в овечьей шкуре. Хе-хе." )

end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----СПВЮЛю
------------------------------------------------------------

function r_talk97 ()

	Talk( 1, "Кентаро: Жизнь коротка, как полёт снежинки, которая тает, не успев коснуться земли." )

	AddNpcMission	(409)
	AddNpcMission	(415)
	AddNpcMission	(424)
	AddNpcMission	(426)
	AddNpcMission	(449)
	AddNpcMission	(809)
	AddNpcMission	(813)
	AddNpcMission(	1431	)
	AddNpcMission	(	1901	)
----------eleven
	AddNpcMission	(	5048	)
	AddNpcMission	(	5049	)
	AddNpcMission	(	5050	)
	AddNpcMission	(	5051	)
	AddNpcMission	(	5052	)
	AddNpcMission	(6030 )
	AddNpcMission	(6031 )

end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----ІјІј
------------------------------------------------------------

function r_talk98 ()

	Talk( 1, "Бабу: Мой отец пират, и я тоже поступлю на флот и буду шпионом!" )

end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----ВіВі
------------------------------------------------------------

function r_talk99999 ()

	Talk( 1, "Лулу: Ха-ха! Не смотри на зло!" )

	AddNpcMission(	1736	)
	AddNpcMission	(	1925	)
	AddNpcMission	(	1946	)

	---------------°ЧСт
	AddNpcMission	(5561)
	AddNpcMission	(5562)
	AddNpcMission	(6040 )
	AddNpcMission	(6041 )



end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----°ВµПЛ№.ЙБ№в
------------------------------------------------------------

function r_talk100()

	Talk( 1, "Одессий: Когда состарюсь, хочу переехать на Остров Демонов. Чтобы иметь возможность смотреть на извержение вулкана. Это просто изумительно!" )

	AddNpcMission	(	454	)
	AddNpcMission	(	458	)
	AddNpcMission	(654)
	AddNpcMission	(657)
	AddNpcMission	(658)
	AddNpcMission	(663)
	AddNpcMission	(666)
	AddNpcMission	(1110)
	AddNpcMission(	1584	)
	AddNpcMission	(	1914	)

	




end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----Г·¶ы
------------------------------------------------------------

function r_talk101()

	Talk( 1, "Мелисса: Чтобы положить конец слуху, пусти новый." )

end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----№ЕІ©А­
------------------------------------------------------------

function r_talk102()

	Talk( 1, "Гэдор: Я автор бестселлера 'Пляжные мальчики'. Слышал, моя книга популярна среди пиратов." )

	AddNpcMission	(603)
	AddNpcMission	(608)
	AddNpcMission	(613)
	AddNpcMission	(615)
	AddNpcMission	(618)
----------№ЕІ©А­-------Л«ЧУ
	AddNpcMission	(5702)
	AddNpcMission	(5703)

end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----РЎїв¶ыЙ­
------------------------------------------------------------

function r_talk103()

	Talk( 1, "Малыш Ковен: Мама запрещает мне разговаривать с незнакомцами... Можно мне конфетку?" )

end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----Вкј§ЙфЙф
------------------------------------------------------------

function r_talk104()

	Talk( 1, "Тетушка Мэри: Я просто обожаю Торт Форе-Нуар с толстым слоем шоколада сверху. Вкуснятина... у меня аж слюнки текут." )

end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----НЯИш·Ё¶ы
------------------------------------------------------------

function r_talk105()

	Talk( 1, "Ваала: Открою тебе секрет... Я и мои друзья недавно придумали новую карточную игру. Чтобы играть в нее, нужны 4 человека и 108 карт. Мы все садимся в круг и..." )

	AddNpcMission	(451)
	AddNpcMission	(457)
	AddNpcMission	(621)
	AddNpcMission	(625)
	AddNpcMission(	1590	)
	AddNpcMission	(	1902	)
	AddNpcMission	(	1940	)

	----------НЯИш·Ё¶ы-------Л«ЧУ
	AddNpcMission	(5708)
	AddNpcMission	(5709)




end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----ЦмАцІјВк
------------------------------------------------------------

function r_talk106()

	Talk( 1, "Джули Огонек: Хочешь узнать, почему кузнец плешивый? Кто сплетница - я? Ну ты и зануда!" )

	AddNpcMission	(689)
	AddNpcMission	(1109)
	AddNpcMission(	1579	)
	AddNpcMission	(	1918	)





end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----°ўАпїЛЛ№
------------------------------------------------------------

function r_talk107()

	Talk( 1, "Александис: Жизнь – непростая штука. Почему бы нам не провести её за онлайновыми играми?" )
	AddNpcMission	(425)
	AddNpcMission	(431)
	AddNpcMission	(436)
	AddNpcMission	(442)
	AddNpcMission	(448)
	AddNpcMission	(601)
	AddNpcMission	(607)
	AddNpcMission	(610)
	AddNpcMission	(612)
	AddNpcMission	(1001)
	AddNpcMission	(1165)



end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----АПїв¶ыЙ­
------------------------------------------------------------

function r_talk108()

	Talk( 1, "Старик Ковен: Лето такое теплое, что хочется провести выходной на каком-нибудь уединенном островке." )

	AddNpcMission	(475)

end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----єЈѕьБР±ш
------------------------------------------------------------

function r_talk109()

	Talk( 1, "Тссс~ Тише! Наш главный говорит" )

end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----јЄ¶ыДбДбЛ№
------------------------------------------------------------

function r_talk110()

	Talk( 1, "Джернис: Все мои предки были лесорубами. В последнее время на мою семью ополчились защитники природы. Житья от них нет." )

	AddNpcMission	(411)
	AddNpcMission	(669)
	AddNpcMission	(675)
	AddNpcMission	(678)
	AddNpcMission	(680)
	AddNpcMission	(1075)



end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----ГЧ¶ыГЧАт
------------------------------------------------------------

function r_talk111()

	Talk( 1, "Минелли: Привет! Как дела? Друзья зовут меня Элли. Не возражаю, если и ты будешь звать меня так же." )

	AddNpcMission	(456)
	AddNpcMission	(656)
	AddNpcMission	(661)
	AddNpcMission	(665)
	AddNpcMission	(1142)
	AddNpcMission(	1582	)
	AddNpcMission	(	1910	)
---------eleven
	AddNpcMission	(	5025	)
	AddNpcMission	(5026	)
	AddNpcMission	(5029	)
	AddNpcMission	(	5070)
	AddNpcMission	(5072	)
	AddNpcMission	(5073	)
	------------1.7
	AddNpcMission	(5074	)
	AddNpcMission(	5092 )
	AddNpcMission	(5101 )
	AddNpcMission	(5102 )
	AddNpcMission	(5103 )
	AddNpcMission	(5104 )
	AddNpcMission	(5113 )
	AddNpcMission	(6032 )
	AddNpcMission	(6033 )
----------ГЧ¶ыГЧАт-------Л«ЧУ
	AddNpcMission	(5722)
	AddNpcMission	(5723)
end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----°ВёсЙ­
------------------------------------------------------------

function r_talk112()

	Talk( 1, "Августиан: Множество мифов и легенд ждут, когда великий авантюрист разгадает их!" )

	AddNpcMission	(1111)


end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----јУОчСЗЎ¤ЖЖ·«
------------------------------------------------------------

function r_talk113()

	Talk( 1, "Джейнаа: Привет, я Джейнаа." )
	AddNpcMission	(1131)

end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----µПµПВнРЮ
------------------------------------------------------------

function r_talk114()

	Talk( 1, "Дитаро: Великие путешественники! Просторы океана ждут нас! Вперед!" )

	AddNpcMission	(640)
	AddNpcMission	(644)
	AddNpcMission	(645)
	AddNpcMission	(646)
	AddNpcMission	(651)
	AddNpcMission	(1119)
	AddNpcMission(	1437	)
	AddNpcMission	(	1911	)
	AddNpcMission	(6038 )
	AddNpcMission	(6039 )

	





end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----¶нїЛБрОчЛ№
------------------------------------------------------------

function r_talk115()

	Talk( 1, "Рубен Актий: Мне хочется заработать кучу золота. Если у меня это не получится, мне нужен приятель, который будет снабжать меня этим золотом." )
	AddNpcMission	(1120)
----------¶нїЛБрОчЛ№-------Л«ЧУ
	AddNpcMission	(5698)
	AddNpcMission	(5699)

end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----Г·АыОчСЗЎ¤ГЁСЫ
------------------------------------------------------------

function r_talk116()

	Talk( 1, "Меррикс: Чему ты так удивляешься? Ты что, никогда раньше не видел женщину-пирата?" )
	
	AddNpcMission	(245 )
	AddNpcMission	(246 )
	AddNpcMission	(247 )
	AddNpcMission	(249 )
	AddNpcMission	(250 )
	AddNpcMission	(1141)

end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----№ЕµГЛюїЛЎ¤»ТЗЅ
------------------------------------------------------------

function r_talk117()

	Talk( 1, "Гадас: У меня морская болезнь? Да разве такое возможно в наше золотое время! Я просто не привык к новому кораблю." )

end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----їьИьЛ№Ў¤їсЙі
------------------------------------------------------------

function r_talk118()

	Talk( 1, "Гасардий: Добрым быть не выгодно..." )
	
	AddNpcMission	(257 )
	AddNpcMission	(258 )
	AddNpcMission	(259 )
	AddNpcMission	(435)
	AddNpcMission	(686)
	AddNpcMission	(691)
	AddNpcMission	(693)
	AddNpcMission	(694)
	AddNpcMission	(1082)



end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----НЁБйХЯЎ¤ФВ№вСЫ
------------------------------------------------------------

function r_talk119()

	Talk( 1, "Оракул Лунный Свет: Я могу видеть то, чего не видят другие... Например, тень позади тебя..." )

	AddNpcMission	(804)
	AddNpcMission	(808)
	
	AddNpcMission	(	468	)
	AddNpcMission(	1586	)
	AddNpcMission	(	1920	)

	
---------------°ЧСт
	AddNpcMission	(5585)
	AddNpcMission	(5586)



end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----їЁ¶ыЛХЛ№Ў¤Да°Н
------------------------------------------------------------

function r_talk120()

	Talk( 1, "Кавойски: Я вовсе не завидую секретарю Аргента или офицерам Громограда. Я просто хочу быть самим собой." )

	AddNpcMission	(407)
	AddNpcMission	(638)
	AddNpcMission	(642)
	AddNpcMission(	1438	)
	AddNpcMission	(	1912	)

	



end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----ДбАп°¬СЗЎ¤і¤·ў
------------------------------------------------------------

function r_talk121()

	Talk( 1, "Неля: Да, ты… я… это… ох… Прости! Я что-нибудь сказала?" )

	
	AddNpcMission	(	870	)
	AddNpcMission	(	875	)
	AddNpcMission	(	876	)
	AddNpcMission	(	880	)
	AddNpcMission	(	882	)
	AddNpcMission	(	885	)
	AddNpcMission	(	888	)
	AddNpcMission	(	891	)
	AddNpcMission	(	892	)
	AddNpcMission(	1735	)
	AddNpcMission	(	1924	)
	AddNpcMission	(	1945	)

	


end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----їЛАтАтСЕ
------------------------------------------------------------

function r_talk122()

	Talk( 1, "Геля: Аргент - известный законодатель мод. Пиратским шайкам до него далеко." )

	AddNpcMission	(428)
	AddNpcMission	(812)
	AddNpcMission	(1025)
	AddNpcMission	(1188)


end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----±ґїЛ
------------------------------------------------------------

function r_talk123()

	Talk( 1, "Бек: У меня есть брат по имени Хэм. Но я симпатичнее его!" )

end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----єєД·
------------------------------------------------------------

function r_talk124()

	Talk( 1, "Хэм: У меня есть брат по имени Бек. Но от него одни проблемы." )
-----------------єєД·---------ЅрЕЈ
	AddNpcMission	(5645)
	AddNpcMission	(5646)
end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----°®¶ыУИАыЎ¤Оў·з
------------------------------------------------------------

function r_talk125()

	Talk( 1, "Влюбленный Юрий: (Вздыхает.) Любовь так близка, и почему-то так недоступна... (Вздыхает.)" )

end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----Ю±Ат¶ы
------------------------------------------------------------

function r_talk126()

	Talk( 1, "Вилли: Во-первых! Никогда не смей говорить, что я толстый! Во-вторых! Никогда не говори, что я пухлый! В-третьих! Не смей говорить, что я похож на свинью! Хорошо… Теперь говори, что у тебя." )

	AddNpcMission	(685)
	AddNpcMission	(688)
	AddNpcMission	(690)
	AddNpcMission	(1097)
	AddNpcMission	(6034 )
	AddNpcMission	(6035 )


end
------------------------------------------------------------
-- ЕБїЛ»ДД®-----¶¬ґпГЧЖЕЖЕ
------------------------------------------------------------
function r_talk127()
Talk( 1, "Бабушка Донг: Молодежь... Путешествуйте пока молоды." )
	
	InitTrigger()
	TriggerCondition( 1, HasRecord, 1557 )
	TriggerCondition( 1, NoRecord, 1558 )
	TriggerCondition( 1, NoRecord, 1559 )
	TriggerCondition( 1, NoRecord, 1560 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "Привет!",MultiTrigger, GetMultiTrigger(), 1 )


	InitTrigger()
	TriggerCondition( 1, HasMission, 1561 )
	TriggerCondition( 1, HasRecord, 1558 )
	TriggerCondition( 1, HasRecord, 1559 )
	TriggerCondition( 1, NoRecord, 1569 )
	TriggerCondition( 1, NoRecord, 1561 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "Еще раз здравствуй!",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 1, "Я просто прохожу мимо",JumpPage, 3  )
	
	InitTrigger()
	TriggerAction( 1, SetRecord, 1558 )
	TriggerAction( 1, SetRecord, 1559 )
	TriggerAction( 1, JumpPage, 4 )
	Talk( 2, "Бабушка Донг: Как ты думаешь, что появилось раньше, яйцо или курица?")
	Text(2, "Курица", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerAction( 1, SetRecord, 1558 )
	TriggerAction( 1, SetRecord, 1560 )
	TriggerAction( 1, JumpPage, 5 )
	Text(2, "Яйцо", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 3, "Бабушка Донг: Молодежь, у бабули нет ни минутки свободной. Если у вас ничего срочного - будьте добры посторониться.")
	Talk( 10, "Бабушка Донг: Мой юный друг, ты ответил неправильно. Подумай как следует, а потом приходи снова.")

	Talk( 4, "Бабушка Донг: Ты не лишен таланта! Неплохо!")

	Talk( 5, "Бабушка Донг: Неужели болезнь Старика-предсказателя заразна?")
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1563 )
	TriggerAction( 1, JumpPage, 7 )
	Talk( 6, "Бабушка Донг: Если кролик и черепаха устроят забег, кто победит?")
	Text( 6, "Черепаха",MultiTrigger, GetMultiTrigger(), 1 )
	Text( 6, "Кролик",JumpPage, 10  )

	Talk( 7, "Само собой, победила черепаха - ведь она бегает так, что не угонишься.")
	Text( 7, "Следующий вопрос",JumpPage, 8  )
	

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1564 )
	TriggerAction( 1, JumpPage, 9 )
	Talk( 8, "Бабушка Донг: Если кролик и черепаха в солнечных очках устроят забег, кто победит?")
	Text( 8, "Черепаха в солнечных очках",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1562 )
	TriggerAction( 1, SetRecord, 1565 )
	TriggerAction( 1, JumpPage, 9 )
	Text( 8, "Кролик",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 9, "Бабушка Донг: Кролик проиграл. А все потому, что черепаха в очках от солнца - чемпионка по бегу! Хо-хо!")
	--Start( GetMultiTrigger(), 1 )

	AddNpcMission	(417)	--Последователи Аши(Завершение)
	AddNpcMission	(674)	--Снежная летучая мышь
	AddNpcMission	(676)	--Грязная струя
	AddNpcMission	(681)	--Цветочный камень
--	AddNpcMission	(1064)	--Жизнь охотника
	AddNpcMission	(752)	--Прогулка Целительницы(Завершение)

	AddNpcMission	(5153)	--Стариковский спор(Завершение)
	AddNpcMission	(5154)	--Интеллект бабушки
	AddNpcMission	(5155)	--Лечение
	AddNpcMission	(5156)	--Исцеление руками
	AddNpcMission	(5157)	--Страж правды
	AddNpcMission	(5159)	--Страж правды
end


function r_talk128()

	Talk( 1, "Робин: Когда я был маленьким, отец сажал меня в котомку и странствовал по свету. Я хотел поступить так же..." )

end

------------------------------------------------------------
-- ЕБїЛ»ДД®-----ИрµГЎ¤Ж¤ёк
------------------------------------------------------------

function r_talk129()

	Talk( 1, "Дон Питт: Ха-ха! Как дела? Что привело тебя ко мне, Дону Питту?" )

	AddNpcMission	(623)
	AddNpcMission	(627)
	AddNpcMission	(634)
	AddNpcMission	(1031)
	AddNpcMission	(1194)
	AddNpcMission(	1591	)
	AddNpcMission	(	1905	)
	AddNpcMission	(	1941	)

	---------------°ЧСт
	AddNpcMission	(5583)
	AddNpcMission	(5584)



end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ОВАтЎ¤±щИЄ
------------------------------------------------------------

function r_talk130()

	Talk( 1, "Выннь: Я живу в замке Ледыни. Ты бывал там?" )
---------------°ЧСт
	AddNpcMission	(5581)
	AddNpcMission	(5582)
end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----АЧЛ№Ў¤РЎіж
------------------------------------------------------------

function r_talk131()

	Talk( 1, "Лесси: Люди всегда обращаются со мной как с ничтожным червем... Но я не всегда буду таким маленьким..." )
-----------------АЧЛ№Ў¤РЎіж---------ЅрЕЈ
	AddNpcMission	(5653)
	AddNpcMission	(5654)
end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ґпГЧ¶ыЎ¤аЅаЅ
------------------------------------------------------------

function r_talk132()

	Talk( 1, "Додо: Додо, Додо, Додо..." )
	AddNpcMission	(1061)
	AddNpcMission	(1007)
	AddNpcMission	(1062)
	AddNpcMission	(1117)
	AddNpcMission	(1171)


end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ЛчА­Д·Ў¤ИшјУ
------------------------------------------------------------

function r_talk133()

	Talk( 1, "Солар: Тебе приходилось что-нибудь слышать о сокровищах Короля Пиратов? Я ищу их уже целую вечность!" )

	AddNpcMission	(421)
	AddNpcMission	(427)
	AddNpcMission	(438)
	AddNpcMission	(444)
	AddNpcMission	(653)
	AddNpcMission	(659)
	AddNpcMission	(660)
	AddNpcMission	(664)
	AddNpcMission	(1151)
	AddNpcMission(	1583	)
	AddNpcMission	(	1913	)


-----------------ЛчА­Д·Ў¤ИшјУ---------ЅрЕЈ
	AddNpcMission	(5657)
	AddNpcMission	(5658)



end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----АЗСАА­Д·
------------------------------------------------------------

function r_talk134()

	Talk( 1, "Лямут: Я уже три дня иду, а города все не видно. Неужели я опять заблудился?" )
	AddNpcMission	(1083)

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----АЗСАА­Д·
------------------------------------------------------------

function r_talk135()

	Talk( 1, "Айрисис: Если не принесешь мне письмо от 'Легендарного прекрасного принца', то даже и не приближайся!" )
	AddNpcMission	(1098)

end


------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----°¬ВЧДИ
------------------------------------------------------------

function r_talk136()

	Talk( 1, "Елуна: Я готова идти на распродажу сегодня же! Если опоздаю, мне ничего не достанется!" )

	AddNpcMission	(262 )
	AddNpcMission	(263 )
	AddNpcMission	(264 )
	AddNpcMission	(265 )
	AddNpcMission	(1056)


end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----єХ¶ыґпґп
------------------------------------------------------------

function r_talk137()

	Talk( 1, "Шереда: Скучно... Как же это все скучно..." )
	AddNpcMission	(1072)

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ФјЙЄ·тЎ¤ЗЗ
------------------------------------------------------------

function r_talk138()

	Talk( 1, "Чао: Ненавижу кальмаров! Вечно пачкают меня чернилами!" )
	AddNpcMission	(1105)

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ІЭЭ®УЕУЕ
------------------------------------------------------------

function r_talk139()

	Talk( 1, "Клубничка: Розовых поросят видел? Они в округе самые вкусные." )
---------------°ЧСт
	AddNpcMission	(5555)
	AddNpcMission	(5556)
	----------ІЭЭ®УЕУЕ-------Л«ЧУ
	AddNpcMission	(5706)
	AddNpcMission	(5707)
end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ТБОД
------------------------------------------------------------

function r_talk140()

	Talk( 1, "Ева: Здравствуй! Я Ева. Что ты здесь делаешь?" )

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ЛХЙєДИ
------------------------------------------------------------

function r_talk141()

	Talk( 1, "Сюзанна: О Боже мой! Время уходит так быстро!" )

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----їЁЕµБЦ
------------------------------------------------------------

function r_talk142()

	Talk( 1, "Каролина: Я вегетарианка, и поэтому меня беспокоит вот какой вопрос: Злободыни – животные или растения?" )

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ХІД·Л№
------------------------------------------------------------

function r_talk143()

	Talk( 1, "Джемесон: Говорят, где-то живет говорящий ягненок..." )

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----В¶ОчАцАцСЕ
------------------------------------------------------------

function r_talk144()

	Talk( 1, "Люси: Здравствуй, гость!" )

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----УИАјґпїЛ
------------------------------------------------------------

function r_talk145()

	Talk( 1, "Юландор: Я всегда стараюсь заработать побольше денег, охотясь на чудовищ. Но в последнее время навар с них совсем небольшой." )

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----І©¶ы·ТДб
------------------------------------------------------------

function r_talk146()

	Talk( 1, "Профессор Фейн: Однажды в море я видел русалку. Жаль, забыл спросить, где она купила свои соблазнительные ресницы." )

	AddNpcMission	(622)
	AddNpcMission	(624)
	AddNpcMission	(628)
	AddNpcMission	(630)
	AddNpcMission	(636)
	AddNpcMission	(1006)
	AddNpcMission	(1170)
	AddNpcMission(	1592	)
	AddNpcMission	(	1906	)
	AddNpcMission	(	1942	)
	AddNpcMission	(6036 )
	AddNpcMission	(6037 )

	



end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----МФМФ
------------------------------------------------------------

function r_talk147()

	Talk( 1, "Берри: Небо мрачное, мрачное. океан тоже мрачный. мрачный. И на душе у меня мрачно, мрачно..." )

	AddNpcMission	(401 )
	AddNpcMission	(810)
	AddNpcMission	(1040)
	AddNpcMission	(1203)
	AddNpcMission(	1433	)
	AddNpcMission	(	1909	)

	
---------------°ЧСт
	AddNpcMission	(5579)
	AddNpcMission	(5580)





end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----їЖИрЖд
------------------------------------------------------------

function r_talk148()

	Talk( 1, "Кетан: Привет. Я вот все думаю - куда делась луна? Ты как считаешь?" )

end

------------------------------------------------------------
-- °ўАј±ИЛ№±щФ­-----ГЧРЄ¶ыГ·БЦ·Т
------------------------------------------------------------

function r_talk149()

	Talk( 1, "Девушка Елена: ..............(Мне нечего тебе сказать...)" )
-------------ЗпµєїЄ·ў
	--AddNpcMission	(6182)
end

------------------------------------------------------------
-- ±щАЗ±¤-----Л®КЦЎ¤°ЈµПјУ
------------------------------------------------------------

function r_talk156()

	Talk( 1, "Аякс: Здорово! Я лучший моряк здешних мест. Нужна моя помощь?" )

end

------------------------------------------------------------
-- №ЕАпї©АыІ№ёшХѕ-----БсБ«
------------------------------------------------------------

function r_talk157()

	Talk( 1, "Дуриан: Я много ем, но я всегда голоден. Наверно, это какая-то болезнь..." )
	
	Text( 1,"Обмен", SendExchangeData7 )
	InitExchange7()
	DoExchange7()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	AddNpcMission	(419)
	AddNpcMission	(460)
	AddNpcMission	(600)
	AddNpcMission	(604)
	AddNpcMission	(606)
	AddNpcMission	(611)
	AddNpcMission	(614)
	AddNpcMission	(619)
	AddNpcMission	(1028)
	AddNpcMission	(1191)
	AddNpcMission(	1434	)
	AddNpcMission	(	1903	)

	---------------°ЧСт
	AddNpcMission	(5587)
	AddNpcMission	(5588)

	AddNpcMission	(6042 )
	AddNpcMission	(6043 )


end

------------------------------------------------------------
-- №ЕАпї©АыІ№ёшХѕ-----Б«ДИТМ
------------------------------------------------------------

function r_talk158()

	Talk( 1, "Лейна: Че...го...буу..дешь...пппо... купать?" )
	Text( 1, "Торг", BuyPage )


	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission	(450)
	AddNpcMission	(452)
	AddNpcMission	(602)
	AddNpcMission	(605)
	AddNpcMission	(609)
	AddNpcMission	(616)
	AddNpcMission	(617)
	AddNpcMission(	1435	)
	AddNpcMission	(	1904	)

	



	
end

------------------------------------------------------------
-- НЯ¶ыЕµІ№ёшХѕ-----№ЕДОЛ№
------------------------------------------------------------

function r_talk159()

	Talk( 1, "Гидерий: Захочешь что-нибудь купить или продать - разыщи меня." )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Ничего",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Defence(	4631	)
	Defence(	4632	)
	Defence(	4633	)
	Defence(	4634	)
	Defence(	4635	)
	Defence(	4636	)
	Defence(	4637	)
	Defence(	4638	)
	Defence(	4639	)
	Defence(	4640	)
	
	AddNpcMission	(463)
	AddNpcMission	(620)
	AddNpcMission	(626)
	AddNpcMission	(629)
	AddNpcMission	(631)
	AddNpcMission	(632)
	AddNpcMission	(633)
	AddNpcMission	(635)
	AddNpcMission	(637)
	AddNpcMission	(1015)
	AddNpcMission	(1178)
	AddNpcMission(	1593	)
	AddNpcMission	(	1907	)
	AddNpcMission	(	1943	)

	


end

------------------------------------------------------------
-- ·ПїуІ№ёшХѕ-----АпїЁ¶ы
------------------------------------------------------------

function r_talk160()

	Talk( 1, "Кейл: Привет! Я Охранник - Кейл! Здесь опасно..." )

	AddNpcMission	(223 )
	AddNpcMission	(224 )
	AddNpcMission	(225 )
	AddNpcMission	(226 )
	AddNpcMission	(227 )
	AddNpcMission	(228 )
	AddNpcMission	(229 )
	AddNpcMission	(230 )
	AddNpcMission	(1055)
	AddNpcMission	(1217)
	AddNpcMission(	1432	)
	AddNpcMission	(	1908	)

	



	
end

------------------------------------------------------------
-- ·ПїуІ№ёшХѕ-----їу№¤ґу¶Зло
------------------------------------------------------------

function r_talk161()

	Talk( 1, "Дранки: *Стон* Я так голоден, я потерял свою коробку с завтраком..." )

	AddNpcMission	(284 )
	AddNpcMission	(285 )
	AddNpcMission	(311 )
	-----------------їу№¤ґу¶Зло---------ЅрЕЈ
	AddNpcMission	(5663)
	AddNpcMission	(5664)
end

------------------------------------------------------------
-- ·ПїуІ№ёшХѕ-----№ЕБйѕ«
------------------------------------------------------------

function r_talk162()

	Talk( 1, "Грег: Привет! Я Грег. Нужна помощь?" )
	Text( 1, "Торг", BuyPage )

	Text( 1, "Ничего...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Defence(	4611	)
	Defence(	4612	)
	Defence(	4613	)
	Defence(	4614	)
	Defence(	4615	)
	Defence(	4616	)
	Defence(	4617	)
	Defence(	4618	)
	Defence(	4619	)
	Defence(	4620	)

	AddNpcMission	(455)
	AddNpcMission	(461)
	AddNpcMission	(811)
	AddNpcMission	(814)
	AddNpcMission	(1013)
	AddNpcMission	(1014)
	AddNpcMission	(1177)

-----МъИЛБщПо
	AddNpcMission	(6121 )
	AddNpcMission	(6122 )

	
end

------------------------------------------------------------
-- ОВДГІ№ёшХѕ-----БХґп
------------------------------------------------------------

function r_talk163()

	Talk( 1, "Линда: Я не хочу работать сверхурочно! Но мой начальник заставляет меня делать это каждый день... Пусть мне платят больше!" )
	
	Text( 1,"Обмен", SendExchangeData11 )

	InitExchange11()
	DoExchange11()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
	
	AddNpcMission	(1027)
	AddNpcMission	(1190)
----------------1.7
	AddNpcMission	(5139 )
	AddNpcMission	(5140 )
	AddNpcMission	(5141 )
	AddNpcMission	(6044 )
	AddNpcMission	(6045 )

end

------------------------------------------------------------
-- ОВДГІ№ёшХѕ-----ґпґпВхСЗ
------------------------------------------------------------

function r_talk164()

	Talk( 1, "Дада: Приветствую, друг. Как же ты ходишь в таком опасном месте без провианта?" )

end

------------------------------------------------------------
-- ОВДГІ№ёшХѕ-----№ЕБ¦№ы
------------------------------------------------------------

function r_talk165()

	Talk( 1, "Грегг: Привет! Что тебе нужно?" )
	Text( 1, "Торг", BuyPage )
	


	Text( 1, "Ничего...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
		Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)
	---------------°ЧСт
	AddNpcMission	(5563)
	AddNpcMission	(5564)
end

------------------------------------------------------------
-- °НІјІ№ёшХѕ-----ДўДў
------------------------------------------------------------

function r_talk166()

	Talk( 1, "Момо: Привет! Я Момо. У меня ты можешь купить изысканные кушанья." )
	Text( 1, "Торг", BuyPage )
	Text(1, "Обменяться", SendExchangeData22 )
	Text( 1, "Ничего...",CloseTalk )
	InitExchange22()
	DoExchange22()
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
	

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)

	AddNpcMission	(433)
	AddNpcMission	(655)
	AddNpcMission	(662)
	AddNpcMission	(667)
	AddNpcMission	(1143)
	AddNpcMission(	1585	)
	AddNpcMission	(	1915	)

	---------------°ЧСт
	AddNpcMission	(5577)
	AddNpcMission	(5578)
	



end

------------------------------------------------------------
-- ЙіИЄІ№ёшХѕ-----О¬ДИ
------------------------------------------------------------

function r_talk167()

	Talk( 1, "Венона: Я скоро выхожу замуж! Хочу, чтобы все разделили со мной эту радость!" )

	AddNpcMission	(418)
	AddNpcMission	(641)
	AddNpcMission	(650)
	AddNpcMission	(1156)

	
end


------------------------------------------------------------
-- ЙіИЄІ№ёшХѕ-----·Ж·Ж
------------------------------------------------------------

function r_talk168()

	Talk( 1, "Фей Фей: Привет! Меня зовут Фей Фей." )

	AddNpcMission	(422)
	AddNpcMission	(639)
	AddNpcMission	(648)
	AddNpcMission	(1121)
	AddNpcMission(	1439	)
	AddNpcMission	(	1916	)

	---------------¶юФВ
	--AddNpcMission	(5503	)

---------------°ЧСт
	AddNpcMission	(5569)
	AddNpcMission	(5572)

	
end

------------------------------------------------------------
-- ЙіИЄІ№ёшХѕ-----ВнВе
------------------------------------------------------------

function r_talk169()

	Talk( 1, "Маркус: Я могу пополнить ваши запасы. Хотите?" )
	Text( 1, "Торг", BuyPage )
	Text( 1,"Обмен", SendExchangeData14 )

	InitExchange14()
	DoExchange14()
	
	Text( 1, "Ничего...",CloseTalk )

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)
	
	AddNpcMission	(403)
	AddNpcMission	(413)
	AddNpcMission	(420)
	AddNpcMission	(643)
	AddNpcMission	(647)
	AddNpcMission	(649)
	AddNpcMission	(652)
	AddNpcMission	(1140)
	AddNpcMission(	1440	)
	AddNpcMission	(	1917	)

	----------------1.7
	AddNpcMission	(5124 )
	AddNpcMission	(5125 )
	AddNpcMission	(5126 )
end

------------------------------------------------------------
-- °ўАј±ИЛ№І№ёшХѕ-----Цм±И
------------------------------------------------------------

function r_talk170()

	Talk( 1, "Зурби: Я всегда слышу зов моря. В этом мире столько красоты, достойной изучения." )

	AddNpcMission	(429)
	AddNpcMission	(464)
	AddNpcMission	(466)
	AddNpcMission	(684)
	AddNpcMission	(696)
	AddNpcMission	(697)
	AddNpcMission	(1108)

----------------1.7
	AddNpcMission	(5136 )
	AddNpcMission	(5137 )
	AddNpcMission	(5138 )
-----------------Цм±И---------ЅрЕЈ
	AddNpcMission	(5647)
	AddNpcMission	(5648)
end

------------------------------------------------------------
-- Алкар
------------------------------------------------------------

function r_talk171()

	Talk( 1, "Алкар: Привет, тебе чем то помочь?" )
	Text( 1, "Торг", BuyPage )
	Text( 1,"Обмен", SendExchangeData12 )
	Text( 1, "Ничего...",CloseTalk )
	InitExchange12()
	DoExchange12()
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

	
	

	InitTrade()
		Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission	(423)
	AddNpcMission	(440)
	AddNpcMission	(446)
	AddNpcMission	(462)
	AddNpcMission	(683)
	AddNpcMission	(687)
	AddNpcMission	(692)
	AddNpcMission	(695)
	AddNpcMission(	1580	)
	AddNpcMission	(	1919	)
	AddNpcMission	(	1955	)

	----------УИЛюАпДб-------Л«ЧУ
	AddNpcMission	(5718)
	AddNpcMission	(5719)




end

------------------------------------------------------------
-- чјчГУЄµШІ№ёшХѕ-----РЮЛѕ
------------------------------------------------------------

function r_talk172()

	Talk( 1, "Зевс: Воровать чужие трофеи - подло!" )

	AddNpcMission	(802)
	AddNpcMission	(807)
	AddNpcMission	(1100)
	AddNpcMission(	1587	)
	AddNpcMission	(	1921	)
	AddNpcMission	(	1922	)
----------------1.7
	AddNpcMission	(5127 )
	AddNpcMission	(5128 )
	AddNpcMission	(5129 )
	AddNpcMission	(6046 )
	AddNpcMission	(6047 )

	----------РЮЛѕ-------Л«ЧУ
	AddNpcMission	(5694)
	AddNpcMission	(5695)


end

------------------------------------------------------------
--Хозо
------------------------------------------------------------

function r_talk173()

	Talk( 1, "Хохо: Привет, я здесь отвечаю за ресурсы. Тебе что-нибудь нужно?" )
	Text( 1, "Торг", BuyPage )
	Text( 1,"Обмен", SendExchangeData13 )
Text( 1, "Ничего...",CloseTalk )
	InitExchange13()
	DoExchange13()
	
	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 1, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()
	

	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission	(467)
	AddNpcMission	(803)
	AddNpcMission(	1588	)
	AddNpcMission	(	1923	)
	AddNpcMission	(	1944	)

	





end

------------------------------------------------------------
-- ±щј«І№ёшХѕ-----ГЧїЄАК·СВЮ
------------------------------------------------------------

function r_talk174()

	Talk( 1, "Миккилон: Мой отец восхищался одним известным художником, поэтому назвал меня в его честь." )

	
	AddNpcMission	(	871	)
	AddNpcMission	(	873	)
	AddNpcMission	(	879	)
	AddNpcMission	(	887	)
	AddNpcMission	(	890	)
	AddNpcMission	(	893	)
	AddNpcMission(	1737	)
	AddNpcMission	(	1926	)
	AddNpcMission	(	1947	)

	



end

------------------------------------------------------------
-- ±щ¶јІ№ёшХѕ-----ДОДО
------------------------------------------------------------

function r_talk175()

	Talk( 1, "Нана: Наверное, я глупая... взяла и потерялась у самых городских стен. Если бы только у меня был автоматический проводник..." )

	AddNpcMission	(405)
	AddNpcMission	(432)
	AddNpcMission	(668)
	AddNpcMission	(672)
	AddNpcMission	(673)
	AddNpcMission	(677)
	AddNpcMission	(1087)
	AddNpcMission(	1429	)
	AddNpcMission	(	1928	)
---------------°ЧСт
	AddNpcMission	(5589)
	AddNpcMission	(5590)
	AddNpcMission	(6050 )
	AddNpcMission	(6051 )
	
----------ДОДО-------Л«ЧУ
	AddNpcMission	(5700)
	AddNpcMission	(5701)



end

------------------------------------------------------------
-- ±щ¶јІ№ёшХѕ-----№ЦЫЕТЇТЇ
------------------------------------------------------------

function r_talk176()

	Talk( 1, "Старик-предсказатель: Да, вид у меня чудной, но я здешний целитель. Прелестных дам надо осмотреть?" )
	Text( 1, "Торг", BuyPage )
	Text( 1, "Ничего...",CloseTalk )

	InitTrade()
		Other(	8290	)
	Other(	8291	)
	Other(	8292	)
	Other(	8294	)
	Other(	8295	)
	Other(	8296	)
	Other(	8297	)
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)

	AddNpcMission	(430)
	AddNpcMission	(434)
	AddNpcMission	(670)
	AddNpcMission	(671)
	AddNpcMission	(679)
	AddNpcMission	(682)
	AddNpcMission	(1070)
	AddNpcMission(	1430	)
	AddNpcMission	(	1929	)

	---------------1.7
	AddNpcMission	(5148 )
	AddNpcMission	(5150 )
	AddNpcMission	(5152 )
	AddNpcMission	(5158 )
	AddNpcMission	(5160 )
	AddNpcMission	(5161 )
	AddNpcMission	(5162 )
	AddNpcMission	(5163 )
	AddNpcMission	(5164 )
	AddNpcMission	(5165 )
	AddNpcMission	(5166 )
	AddNpcMission	(5169 )


end


------------------------------------------------------------
-- чјчГУЄµШІ№ёшХѕ-----°ўМ©
------------------------------------------------------------

function r_talk177()

	Talk( 1, "Тай: Я хочу организовать ансамбль из морских созданий. Русалки пусть будут вокалистками, а Бронекрабы - ударниками. А я буду соло-гитаристом! Хе-хе!" )

	AddNpcMission	(805)
	AddNpcMission	(806)
	AddNpcMission(	1589	)
	AddNpcMission	(	1934	)
	AddNpcMission	(	1949	)

	-----------------°ўМ©---------ЅрЕЈ
	AddNpcMission	(5629)
	AddNpcMission	(5630)




	
end

------------------------------------------------------------
-- µВ¶ыО¬ЖЅФ­-----±ґїЗЙМИЛЎ¤А­Д·
------------------------------------------------------------

function r_talk221()

	Talk( 1, "Ламон: Я тут гуляю, что то случилось?" )
	--Text( 1, "Торг", BuyPage )
	--Text( 1, "Восполнение энергии Коралла", JumpPage, 2 )
	Text( 1, "Ничего",CloseTalk )


	Talk( 2, "Ламон: Кораллы можно перезаряжать, в море есть много подходящих мест: для Коралла ветра - район ветра, для Коралла грозы - область грозы, для Коралла тумана - туманная область... Помню, вблизи Аргента есть грозовая область (2500, 2850). Попробуй зарядить его там. Помни, заряженный коралл надо держать при себе.")


	InitTrade()
	Weapon(	0817	)
	Weapon(	0818	)
	Weapon(	0867	)
	Weapon(	0868	)
	Weapon(	0872	)
	Weapon(	0873	)
	Weapon(	0635	)
	Weapon(	0636	)
-----------------±ґїЗЙМИЛЎ¤А­Д·---------ЅрЕЈ
	AddNpcMission	(5637)
	AddNpcMission	(5638)


end




------------------------------------------------------------
-- °ЧТшіЗ-----·юЧ°µкЦъАнЎтЭнЭн
------------------------------------------------------------
function r_talk222()


	Talk( 1, "Биби: Привет! Я новый портной в этом городе. Я продаю любую экипировку для Мореплавателей!" )
	Text( 1, "Торг", BuyPage )

	InitTrade()
	Defence(	0335	)
	Defence(	0511	)
	Defence(	0687	)
	Defence(	0336	)
	Defence(	0512	)
	Defence(	0688	)
	Defence(	0338	)
	Defence(	0514	)
	Defence(	0690	)
	Defence(	0337	)
	Defence(	0513	)
	Defence(	0689	)
	Defence(	0340	)
	Defence(	0516	)
	Defence(	0692	)
	Defence(	0339	)
	Defence(	0515	)
	Defence(	0691	)
	Defence(	0341	)
	Defence(	0517	)
	Defence(	0693	)
	Defence(	0342	)
	Defence(	0518	)
	Defence(	0694	)
	Defence(	0345	)
	Defence(	0521	)
	Defence(	0697	)
	Defence(	0343	)
	Defence(	0519	)
	Defence(	0695	)
	Defence(	0380	)
	Defence(	0556	)
	Defence(	0732	)
	Defence(	0351	)
	Defence(	0527	)
	Defence(	0703	)
	Defence(	0386	)
	Defence(	0562	)
	Defence(	0738	)
	Defence(	0352	)
	Defence(	0528	)
	Defence(	0704	)
	Defence(	0350	)
	Defence(	0526	)
	Defence(	0702	)
	Defence(	0354	)
	Defence(	0530	)
	Defence(	0706	)
	Defence(	0353	)
	Defence(	0529	)
	Defence(	0705	)
	Defence(	0356	)
	Defence(	0532	)
	Defence(	0708	)
	Defence(	0355	)
	Defence(	0531	)
	Defence(	0707	)
	Defence(	0357	)
	Defence(	0533	)
	Defence(	0709	)
----------------1.7
	AddNpcMission	(5118 )
	AddNpcMission	(5119 )
	AddNpcMission	(5120 )
	--AddNpcMission	(3021 )
end
------------------------------------------------------------
-- ЗпЦ®µє-----АіДИ
------------------------------------------------------------
function r_talk223()


	Talk( 1, "Ланна: Привет! Я портальщик острова Осени. Чем я могу тебе помочь?" )
	Text( 1, "Return to Icicle City", GoTo, 1318, 510, "darkblue" )

end


function r_talk224()

	Talk( 1, "Пират Джереми: Привет! Я пират и я счастлив!" )
AddNpcMission	(306)
	AddNpcMission	(306)	--1-Кто такой Андрей?(Завершение)
	AddNpcMission	(307)	--2-Флот не движется!
	AddNpcMission	(308)	--3-Снова Джек
	AddNpcMission	(5651)	--4-Посол мира 14(Завершение)
	AddNpcMission	(5652)	--5-Посол мира 15
	AddNpcMission	(6313)	--6-Местонахождение Вилля с Севера 2(Завершение)
	AddNpcMission	(6314)	--7-Проблема Джереми
	AddNpcMission	(6315)	--8-Посылка Джереми
	
	AddNpcMission	(102)

end


function r_talk225()

	Talk( 1, "Капитан Джек: Привет! Я богат, красив и знаменит! Меня все боготворят!" )

	AddNpcMission	(309)	--1-Снова Джек(Завершение)
	AddNpcMission	(310)	--2-Я Вернусь!
	AddNpcMission	(312)	--3-Расследование
	AddNpcMission	(313)	--4-Записка Андрея
	AddNpcMission	(314)	--5-Кровь Пирата(Завершение)
	AddNpcMission	(315)	--6-Душа Моря(Завершение)
	AddNpcMission	(316)	--7-Свободный Дух(Завершение)
	AddNpcMission	(328)	--8-Завещание Андрея(Завершение)
	AddNpcMission	(329)	--9-Секрет завещания
	AddNpcMission	(333)	--10-Любовное переплетение
	AddNpcMission	(336)	--11-Язык пиратов
	AddNpcMission	(483)	--12-SOS(Завершение)
	AddNpcMission	(484)	--13-Джек против Джека
	AddNpcMission	(5639)	--14-Посол мира 8(Завершение)
	AddNpcMission	(5640)	--15-Посол мира 9
	AddNpcMission	(6311)	--16-Местонахождение Вилля с Севера 1(Завершение)
	AddNpcMission	(6312)	--17-Местонахождение Вилля с Севера 2
end


------------------------------------------------------------
-- ±щАЗ±¤ПВіЗ-----ВіёсАј
------------------------------------------------------------
function r_talk226()


	Talk( 1, "Люк: Мой брат любит втягивать меня в неприятности... и всегда ждет, что я его выручу. Эх..." )
	
	Talk( 2, "Люк: Мой брат любит втягивать меня в неприятности... и всегда ждет, что я его выручу. Эх...")
	Text( 2, "Я потерял кольцо, которые ты мне дал", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasMoney, 50000 )
	TriggerAction( 1, TakeMoney, 50000 )
	TriggerAction( 1, GiveItem, 4144, 1 , 4)
	TriggerAction( 1, JumpPage, 4 )
	TriggerFailure( 1, JumpPage, 5 )
	Talk( 3, "Люк: Неужели это дорогое кольцо потеряно? Всего за 50 000 золотых я могу изготовить такое же.")
	Text( 3, "Хорошо. Вот 50 000 золотых", MultiTrigger, GetMultiTrigger(), 1 )
	Text( 3, "Это же грабеж! У меня столько нет", CloseTalk )

	Talk( 4, "Люк: Это кольцо для тебя, храни его хорошенько")

	Talk( 5, "Люк: У тебя недостаточно золота... Всего-то 50 000 золотых...")

	InitTrigger()
	-----------јмІвИООсДГБЛУгБЫЅдЦё,µ«КЗ¶ЄБЛІ»јыБЛ
	TriggerCondition( 1, HasRecord, 260 )
	TriggerCondition( 1, NoRecord, 262 )
	TriggerCondition( 1, NoItem, 4144, 1 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 1 )
	
	Start( GetMultiTrigger(), 1 )

	AddNpcMission	(296 )
	AddNpcMission	(297 )
	AddNpcMission	(298 )
	AddNpcMission	(302 )
	AddNpcMission	(303 )

end


------------------------------------------------------------
-- чјчГУЄµШІ№ёшХѕ-----їЛА­А­ґуК¦
------------------------------------------------------------
function r_talk227()

	Talk( 1, "Кера: Люди думают, что я обладаю сверхчеловеческими способностями. Они ничего не понимают из-за того, что их вера слаба." )

	AddNpcMission	(299 )
	AddNpcMission	(300 )
	AddNpcMission	(469 )
	AddNpcMission	(391 )
	----------------1.7
	AddNpcMission	(5121 )
	AddNpcMission	(5122 )
	AddNpcMission	(5123 )
end

------------------------------------------------------------
-- їЁ¶ыјУµВІ№ёшХѕ-----ИшДПЎ¤ёсБ¦µВ
------------------------------------------------------------
function r_talk228()

	Talk( 1, "Simon Gilter: SighЎ­When can I become an officier in the Navy? Am I not charming?" )
	
	AddNpcMission	(837 )
	AddNpcMission	(838 )
	AddNpcMission	(839 )

end

------------------------------------------------------------
-- їЁ¶ыјУµВІ№ёшХѕ-----єЈА¶Ў¤Оў·з
------------------------------------------------------------
function r_talk229()

	Talk( 1, "Азур Бриз: Пожалуйста, не забудь сохранить свой милый взгляд." )

	AddNpcMission	(840 )
---------------°ЧСт
	AddNpcMission	(5591)
	AddNpcMission	(5592)
	AddNpcMission	(6048 )
	AddNpcMission	(6049 )

end

------------------------------------------------------------
-- їЁ¶ыјУµВІ№ёшХѕ-----ЩђЎ¤Д§Б¦
------------------------------------------------------------
function r_talk230()

	Talk( 1, "Sa Mori: Hohoho! There isn't any lady as beautiful and gentle as me in this world." )

	AddNpcMission	(844 )
	AddNpcMission	(841 )
	AddNpcMission	(842 )
	AddNpcMission	(843 )
-----------------ЩђЎ¤Д§Б¦---------ЅрЕЈ
	AddNpcMission	(5625)
	AddNpcMission	(5626)
end

------------------------------------------------------------
-- їЁ¶ыјУµВІ№ёшХѕ-----їЁРЭЎ¤ЛйКЇ
------------------------------------------------------------
function r_talk231()

	Talk( 1, "Карин Ливингстон: Просто терпеть не могу эту старую бабульку. До сих пор смеет называть себя молодой и красивой. Какая мерзость!" )

	AddNpcMission	(845 )
	AddNpcMission	(846 )
	AddNpcMission	(847 )
	AddNpcMission	(848 )
----------їЁРЭЎ¤ЛйКЇ-------Л«ЧУ
	AddNpcMission	(5714)
	AddNpcMission	(5715)
end

------------------------------------------------------------
-- ±щј«І№ёшХѕ-----ИыО¬Ў¤Цм¶ы
------------------------------------------------------------
function r_talk232()

	Talk( 1, "Саша: Здесь очень сильные ветры, они часто обдувают мою нежную кожу и царапают ее песком. Я ухаживаю за ней с помощью водорослей и грязи из Ледяного Шипа. Хочешь попробовать?" )
	
	AddNpcMission	(877 )
	AddNpcMission	(883 )
	AddNpcMission	(884 )


end

------------------------------------------------------------
-- ±щј«І№ёшХѕ-----ї­ОДЎ¤АЗ
------------------------------------------------------------
function r_talk233()

	Talk( 1, "Кевин Вульф: Я волк, блуждающий в отдаленной пустыни..." )

	AddNpcMission	(881 )
end

------------------------------------------------------------
-- °ЧТшіЗ-----і±Бч·ўРНК¦Ў¤їЁМШ
------------------------------------------------------------
function r_talk234()

	Talk( 1, "Привет! Хочешь поменять прическу? Будь стильным и следуй моде!" )
	Text( 1, "Я хочу сменить прическу", JumpPage, 2)
	Text( 1, "Приобрести", BuyPage )

	InitTrade()
	--Книги
	Weapon(	1808	)	--Обычная книга причесок(Ланс)
	Weapon(	1809	)	--Обычная книга причесок(Карциз)
	Weapon(	1810	)	--Обычная книга причесок(Филлис)
	Weapon(	1811	)	--Обычная книга причесок(Ами)
	--Weapon(	0931	)	--Модная книга причесок(Ланс)
	--Weapon(	0932	)	--Модная книга причесок(Карциз)
	--Weapon(	0933	)	--Модная книга причесок(Филлис)
	--Weapon(	0934	)	--Модная книга причесок(Ами)
	-- --Ингридиенты
	-- Weapon(	1804	)	--Половинка ножниц
	-- Weapon(	1805	)	--Гребень
	-- Weapon(	1806	)	--Гель для волос
	-- Weapon(	1807	)	--Расписка
	-- --Краска
	-- Defence(	4608	)	--Коричневая краска 
	-- Defence(	4606	)	--Черная краска 
	-- Defence(		)
	-- Defence(		)
	-- Defence(	1793	)	--Пурпурная краска 
	-- Defence(	1792	)	--Синяя краска
	-- Defence(	1791	)	--Голубая краска 
	-- Defence(	1790	)	--Зеленая краска 
	-- Defence(	1789	)	--Желтая краска 
	-- Defence(	1788	)	--Оранжевая краска
	-- Defence(	1787	)	--Красная краска
	-- --Красители
	-- Other(	4610	)	--Обесцвечивающее средство
	-- Other(	4609	)	--Коричневый краситель  
	-- Other(	4607	)	--Черный краситель
	-- Other(		)
	-- Other(	1803	)	--Пурпурный краситель 
	-- Other(	1801	)	--Голубой краситель 
	-- Other(	1800	)	--Зеленый краситель
	-- Other(	1798	)	--Оранжевый краситель 
	-- Other(	1797	)	--Красный краситель
	-- Other(	1802	)	--Синий краситель
	-- Other(	1799	)	--Желтый краситель

	InitTrigger()
	TriggerCondition( 1, HasItem, 1807, 1 )
	TriggerAction( 1, OpenHair )
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "Вообще-то... уже давно никому причесок не делал. Но если хочешь, могу сделать тебе новую. Только принеси мне сначала Парикмахерскую расписку.")
	Text( 2, "Да, точно", MultiTrigger, GetMultiTrigger(), 1)
	Text( 2, "Забудь об этом", CloseTalk )

	Talk( 3, "У тебя нет Парикмахерской расписки. Я не могу сделать тебе прическу.")

	AddNpcMission	(6085 )

end

------------------------------------------------------------
-- Пукан
------------------------------------------------------------
function r_talk235()

	Talk( 1, "Пукан: На твой выбор все виды драгоценных колец и ожерелий. Может что и приглянется. У меня самые низкие цены в округе." )
	Text( 1,"Обмен", SendExchangeData6 )

	InitExchange6()
	DoExchange6()


	
	InitTrigger()
	TriggerAction( 1, AddNpcTrigger, 53, TE_GAMETIME, TT_CYCLETIME, 55, 0 )
	SetNpcTrigger( GetTrigger( 1 ) )
	SetNpcActive()

end

------------------------------------------------------------
-- Рикка
------------------------------------------------------------
function r_talk236()

	Talk( 1, "Рикка: На твой выбор все виды драгоценных колец и ожерелий. Может что и приглянется. У меня самые низкие цены в округе.")
	
	Text( 1,"Обмен", SendExchangeData7 )

	InitExchange7()
	DoExchange7()

	

	-----------------КОЖ·ЙМИЛЎ¤АпїЛ---------ЅрЕЈ
	AddNpcMission	(5649)
	AddNpcMission	(5650)
end

------------------------------------------------------------
-- Феррари
------------------------------------------------------------
function r_talk237()

	Talk( 1, "Феррари: У меня самые лучшие кольца и ожерелья, которые только можно отыскать. Ты наверняка найдешь себе что-нибудь по душе." )

	Text( 1,"Обмен", SendExchangeData8 )
	
	
	
	InitExchange8()
	DoExchange8()

	

end

------------------------------------------------------------
-- Лавочник - Ветиго [Громоград]
------------------------------------------------------------
function r_talk238()

	Talk( 1, "Ветиго: У меня есть любые кольца и ожерелья. Посмотри, может быть тебе что-нибудь приглянется. Мои цены самые низкие в округе." )
	Text( 1, "Торг", BuyPage )

	InitTrade()
	Defence(	4641	)
	Defence(	4642	)
	Defence(	4643	)
	Defence(	4644	)
	Defence(	4645	)
	Defence(	4646	)
	Defence(	4647	)
	Defence(	4648	)
	Defence(	4649	)
	Defence(	4650	)
	Defence(	4706	)
	Defence(	4707	)
	Defence(	4708	)
	Defence(	4709	)
	Defence(	4711	)
	Defence(	4712	)
	Defence(	4713	)
	Defence(	4714	)
	Defence(	4715	)

end

------------------------------------------------------------
-- Ай
------------------------------------------------------------
function r_talk239()

	Talk( 1, "Ай: У меня есть множество ценных монет. Посмотри, может, тебе что-нибудь подойдет." )

	Text( 1,"Обмен", SendExchangeData9 )

	InitExchange9()
	DoExchange9()

	

end

------------------------------------------------------------
-- Аллан
------------------------------------------------------------
function r_talk240()

	Talk( 1, "Лавочник - Аллан: У меня в продаже только самые качественные и дорогие кольца и ожерелья. Выбирай! У меня самые разумные цены." )
	Text( 1, "Торг", BuyPage )
	Text( 1,"Обмен", SendExchangeData10 )

	InitExchange10()
	DoExchange10()

	InitTrade()
	Defence(	4666	)
	Defence(	4667	)
	Defence(	4668	)
	Defence(	4669	)
	Defence(	4671	)
	Defence(	4672	)
	Defence(	4673	)
	Defence(	4674	)
	Defence(	4675	)
	Defence(	4676	)
	Defence(	4677	)
	Defence(	4678	)
	Defence(	4679	)
	Defence(	4681	)
	Defence(	4682	)
	Defence(	4683	)
	Defence(	4684	)
	Defence(	4685	)

end

------------------------------------------------------------
--Данман
------------------------------------------------------------
function r_talk241()

	Talk( 1, "Данман: У меня в продаже только самые качественные и дорогие колца и ожерелья. Выбирай! У меня самые разумные цены!" )
	Text( 1, "Торг", BuyPage )
	Text( 1,"Обмен", SendExchangeData13 )

	InitExchange13()
	DoExchange13()

	InitTrade()
	Defence(	4686	)
	Defence(	4687	)
	Defence(	4688	)
	Defence(	4689	)
	Defence(	4691	)
	Defence(	4692	)
	Defence(	4693	)
	Defence(	4694	)
	Defence(	4695	)
	Defence(	4696	)
	Defence(	4697	)
	Defence(	4698	)
	Defence(	4699	)
	Defence(	4701	)
	Defence(	4702	)
	Defence(	4703	)
	Defence(	4704	)
	Defence(	4705	)
----------КОЖ·ЙМИЛЎ¤Ир¶ч-------Л«ЧУ
	AddNpcMission	(5712)
	AddNpcMission	(5713)
end


------------------------------------------------------------
-- °ЧТшіЗ-----ЗеПґ»ъ
------------------------------------------------------------
function r_talk252()
	
InitFuncList()
	AddFuncList( GiveItem,	1630	,	2	,	4)
	AddFuncList( GiveItem,	1631	,	1	,	4)
	AddFuncList( GiveItem,	1632	,	1	,	4)
	AddFuncList( GiveItem,	1633	,	2	,	4)
	AddFuncList( GiveItem,	1634	,	1	,	4)
	AddFuncList( GiveItem,	1635	,	1	,	4)
	AddFuncList( GiveItem,	1636	,	2	,	4)
	AddFuncList( GiveItem,	1637	,	1	,	4)
	AddFuncList( GiveItem,	1638	,	1	,	4)
	AddFuncList( GiveItem,	1639	,	2	,	4)
	AddFuncList( GiveItem,	1640	,	1	,	4)
	AddFuncList( GiveItem,	1641	,	1	,	4)
	AddFuncList( GiveItem,	1642	,	2	,	4)
	AddFuncList( GiveItem,	1643	,	1	,	4)
	AddFuncList( GiveItem,	1644	,	1	,	4)
	AddFuncList( GiveItem,	3360	,	1	,	4)
	AddFuncList( GiveItem,	3361	,	1	,	4)
	AddFuncList( GiveItem,	3362	,	1	,	4)
	AddFuncList( GiveItem,	3363	,	1	,	4)
	AddFuncList( GiveItem,	3364	,	1	,	4)
	AddFuncList( GiveItem,	3365	,	1	,	4)
	AddFuncList( GiveItem,	3366	,	1	,	4)
	AddFuncList( GiveItem,	3367	,	1	,	4)
	AddFuncList( GiveItem,	3425	,	1	,	4)
	AddFuncList( GiveItem,	3426	,	1	,	4)
	AddFuncList( GiveItem,	3427	,	1	,	4)
	AddFuncList( GiveItem,	3428	,	1	,	4)
	AddFuncList( GiveItem,	3429	,	1	,	4)
	AddFuncList( GiveItem,	3430	,	1	,	4)
	AddFuncList( GiveItem,	3431	,	1	,	4)
	AddFuncList( GiveItem,	3432	,	1	,	4)
	AddFuncList( GiveItem,	3433	,	1	,	4)
	AddFuncList( GiveItem,	1804	,	1	,	4)
	AddFuncList( GiveItem,	1805	,	1	,	4)
	AddFuncList( GiveItem,	1806	,	1	,	4)
	AddFuncList( GiveItem,	1807	,	1	,	4)
	AddFuncList( GiveItem,	1808	,	1	,	4)
	AddFuncList( GiveItem,	1809	,	1	,	4)
	AddFuncList( GiveItem,	1810	,	1	,	4)
	AddFuncList( GiveItem,	1811	,	1	,	4)
	AddFuncList( GiveItem,	1787	,	1	,	4)
	AddFuncList( GiveItem,	1788	,	1	,	4)
	AddFuncList( GiveItem,	1789	,	1	,	4)
	AddFuncList( GiveItem,	1790	,	1	,	4)
	AddFuncList( GiveItem,	1791	,	1	,	4)
	AddFuncList( GiveItem,	1792	,	1	,	4)
	AddFuncList( GiveItem,	1793	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3927, 1 )
	TriggerCondition( 1, HasMoney, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 2000 )
	TriggerAction( 1, TakeItem, 3927, 1 )
	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "Это старая чистилка, которая способная очистить все, что угодно. Стоимость очистки - 20000 золота." )
	Text( 1, "Очистить", MultiTrigger, GetMultiTrigger(), 1)
	--Text( 1, "Clean the Christmas Box", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2892, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2892, 1 )
	TriggerAction( 1, GiveItem, 2893, 1 , 4)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 3, "Ух ты! Какое грязное! Чтобы очистить это тебе потребуется 10000 монет." )
	Text( 3, "Подтвердить очистку", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 4, "Очистить Подарочную коробку" )
	Talk( 2, "Чистка невозможна. Недостаточно денег или нечего очищать." )
end


------------------------------------------------------------
-- їј№Е¶Уі¤-----їј№ЕС§јТ
------------------------------------------------------------
function r_talk253()
	
	Talk( 1, "Исследователь: Здравствуй! Я состою в организации профессиональных исследователей. Знаю много древних проклятий и заклинаний. Чем могу помочь тебе?" )
	Text( 1, "Печать Огня", JumpPage, 3)

	Talk( 3, "Исследователь: Раз тебе удалось меня найти, я окажу тебе услугу. Эти печати пришли из древних времен. Принеси мне необходимые руны, и я сниму проклятие с предметов." )
	Text( 3, "Мантия тайного знания", JumpPage, 6)
	Text( 3, "Посох миражей", JumpPage, 7)
	Text( 3, "Посох исчезновения", JumpPage, 8)
	Text( 3, "Покров исчезновения", JumpPage, 9)
	Text( 3, "Плащ исчезновения", JumpPage, 10)
	Text( 3, "Тату исчезновения", JumpPage, 11)
	Text( 3, "Доспех исчезновения", JumpPage, 12)
	Text( 3, "Следующая страница", JumpPage, 4)

	Talk( 4, "Исследователь: Раз тебе удалось меня найти, я окажу тебе услугу. Эти печати пришли из древних времен. Принеси мне необходимые руны, и я сниму проклятие с предметов." )
	Text( 4, "Вопль исчезновения", JumpPage, 13)
	Text( 4, "Рык исчезновения", JumpPage, 14)
	Text( 4, "Танец исчезновения", JumpPage, 15)
	Text( 4, "Зуб исчезновения", JumpPage, 16)
	Text( 4, "Мантия оскорбления", JumpPage, 17)
	Text( 4, "Перчатки исчезновения", JumpPage, 18)
	Text( 4, "Поножи исчезновения", JumpPage, 19)
	Text( 4, "Следующая страница", JumpPage, 5)

	Talk( 5, "Исследователь: Раз тебе удалось меня найти, я окажу тебе услугу. Эти печати пришли из древних времен. Принеси мне необходимые руны, и я сниму проклятие с предметов." )
	Text( 5, "Перчатки исчезновения", JumpPage, 20)
	Text( 5, "Башмаки исчезновения", JumpPage, 21)
	Text( 5, "Перчатки проклятия", JumpPage, 22)
	Text( 5, "Сапоги оскорбления", JumpPage, 23)
	Text( 5, "Перчатки тайного знания", JumpPage, 24)
	Text( 5, "Сапоги тайного знания", JumpPage, 25)
	Text( 5, "Тяжелые перчатки исчезновения", JumpPage, 26)
	Text( 5, "Сапоги исчезновения", JumpPage, 27)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1912, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1912, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 791, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 6, "Снять проклятие с Мантии тайного знания", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1915, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1915, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 794, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 7, "Снять проклятие с Посоха миражей", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1908, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1908, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 787, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 8, "Снять проклятие с Посоха исчезновения", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1926, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1926, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 805, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 9, "Снять проклятие с Покрова исчезновения", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1900, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1900, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 779, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 10, "Снять проклятие с Плаща исчезновения", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1886, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1886, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 765, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 11, "Снять проклятие с Тату исчезновения", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1889, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1889, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 768, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 12, "Снять проклятие с Доспехов исчезновения", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1904, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1904, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 783, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 13, "Снять проклятие с Вопля исчезновения", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1893, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1893, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 772, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 14, "Снять проклятие с Рыка исчезновения", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1896, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1896, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 775, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 15, "Снять проклятие с Танца исчезновения", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1922, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1922, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 801, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 16, "Снять проклятие с Зуба исчезновения", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1918, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1918, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 797, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 17, "Снять проклятие с Мантии оскорбления", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1988, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1988, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0807, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 18, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 18, "Снять проклятие с Рукавиц исчезновения", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1989, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1989, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0808, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 19, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 19, "Снять проклятие с Поножей исчезновения", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1990, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1990, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0809, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 20, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 20, "Снять проклятие с Перчаток исчезновения", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1991, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1991, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0810, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 21, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 21, "Снять проклятие с Башмаков исчезновения", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1992, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1992, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0811, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 22, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 22, "Снять проклятие с Перчаток проклятия", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 1994, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1994, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0813, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 23, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 23, "Снять проклятие с Сапогов оскорбления", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1993, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1993, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0812, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 24, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 24, "Снять проклятие с Перчаток тайного знания", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1995, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1995, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0814, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 25, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 25, "Снять проклятие с Сапогов тайного знания", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1996, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1996, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0815, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 26, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 26, "Снять проклятие с Тяжелых перчаток исчезновения", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1997, 1 )
	TriggerCondition( 1, HasItem, 3433, 5 )
	TriggerCondition( 1, HasItem, 3427, 10 )
	TriggerCondition( 1, HasItem, 3430, 10 )
	TriggerCondition( 1, HasMoney, 600000 )
	TriggerAction( 1, TakeMoney, 600000 )
	TriggerAction( 1, TakeItem, 1997, 1 )
	TriggerAction( 1, TakeItem, 3433, 5 )
	TriggerAction( 1, TakeItem, 3427, 10 )
	TriggerAction( 1, TakeItem, 3430, 10 )
	TriggerAction( 1, GiveItem, 0877, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 27, "Исследователь: Чтобы снять проклятие принеси мне Экипировку с печатью Огня, 5 рун Фэл, 10 рун Джа, 10 рун Теф и 600 000 золотых" )
	Text( 27, "Снять проклятие с Сапогов исчезновения", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 30, "Исследователь: Прости, но я не смогу снять проклятие без нужных вещей." )


end

------------------------------------------------------------
-- ·ПБйЦ®¶ј-----їј№ЕС§јТ
------------------------------------------------------------
function r_talk254()
	
	Talk( 1, "Исследователь: Здравствуй. Я профессионально занимался исследованием Затерянного города. Могу быть чем-нибудь полезен?" )
	Text( 1, "О Затерянном городе", JumpPage, 2)

	Talk( 2, "Исследователь: Я уже давно занимаюсь изучением Затерянного города. Я могу снять печать при помощи кое-каких рун." )
	Text( 2, "Снять проклятие", JumpPage, 3)
	
	Talk( 3, "Исследователь: Затерянный город скрывает много снаряжения с печатью нежити. Долгие годы я работал и научился снимать с него проклятие. Желаешь избавить что-нибудь от проклятия?" )
	Text( 3, "Зуб призрака", JumpPage, 6)
	Text( 3, "Накидка нага", JumpPage, 7)
	Text( 3, "Посох мстителя", JumpPage, 8)
	Text( 3, "Меч печали", JumpPage, 9)
	Text( 3, "Мантия смерти", JumpPage, 10)
	Text( 3, "Касание смерти", JumpPage, 11)
	Text( 3, "Мантия ядовитой ведьмы", JumpPage, 12)
	Text( 3, "Доспех возвращенного", JumpPage, 13)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1920, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1920, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 799, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "Исследователь: Чтобы снять проклятие с Зуба призрака, принеси мне Зуб призрака с печатью нежити, 5 рун Ял, 5 рун Эль, 10 рун Наль и 200 000 золотых" )
	Text( 6, "Снять проклятие с Зуба призрака", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1924, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1924, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 803, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "Исследователь: Чтобы снять проклятие с Накидки нага, принеси мне Накидку нага с печатью нежити, 5 рун Ял, 5 рун Эль, 10 рун Наль и еще 200 000 золотых" )
	Text( 7, "Снять проклятие с Накидки нага", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1906, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1906, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 785, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "Исследователь: Чтобы снять проклятие с Посоха мстителя, мне понадобится: Посох мстителя с печатью нежити, 5 рун Ял, 5 рун Эль, 10 рун Наль и 200 000 золотых" )
	Text( 8, "Снять проклятие с Посоха мстителя", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1891, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1891, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 770, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "Исследователь: Чтобы снять проклятие с Меча печали, принеси мне Меч печали с печатью нежити, 5 рун Ял, 5 рун Эль, 10 рун Наль и еще 200 000 золотых" )
	Text( 9, "Снять проклятие с Меча печали", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1898, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1898, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 777, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "Исследователь: Чтобы снять проклятие с Мантии смерти, мне понадобятся: Мантия смерти с печатью нежити, 5 рун Ял, 5 рун Эль, 10 рун Наль и 200 000 золотых" )
	Text( 10, "Снять проклятие с Мантии смерти", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1902, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1902, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 781, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "Исследователь: Чтобы снять проклятие с Касания смерти, мне понадобятся: Касание смерти с печатью нежити, 5 рун Ял, 5 рун Эль, 10 рун Наль и 200 000 золотых" )
	Text( 11, "Снять проклятие с Касания смерти", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1910, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1910, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 789, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "Исследователь: Чтобы снять проклятие с Мантии ядовитой ведьмы, мне понадобятся: Мантия ядовитой ведьмы с печатью нежити, 5 рун Ял, 5 рун Эль, 10 рун Наль и 200 000 золотых" )
	Text( 12, "Снять проклятие с Мантии ядовитой ведьмы", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1884, 1 )
	TriggerCondition( 1, HasItem, 3431, 5 )
	TriggerCondition( 1, HasItem, 3428, 5 )
	TriggerCondition( 1, HasItem, 3425, 10 )
	TriggerCondition( 1, HasMoney, 200000 )
	TriggerAction( 1, TakeMoney, 200000 )
	TriggerAction( 1, TakeItem, 1884, 1 )
	TriggerAction( 1, TakeItem, 3431, 5  )
	TriggerAction( 1, TakeItem, 3428, 5 )
	TriggerAction( 1, TakeItem, 3425, 10)
	TriggerAction( 1, GiveItem, 763, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "Исследователь: Чтобы снять проклятие с Доспеха возвращенного, мне понадобятся: Доспех возвращенного с печатью нежити, 5 рун Ял, 5 рун Эль, 10 рун Наль и 200 000 золотых" )
	Text( 13, "Снять проклятие с Доспеха возвращенного", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "Исследователь: Прости, но я не смогу снять проклятие без нужных вещей." )

end

------------------------------------------------------------
-- Д§·ЅКАЅз-----їј№ЕС§јТ
------------------------------------------------------------
function r_talk255()
	
	Talk( 1, "Исследователь: Привет! Я состою в организации профессиональных исследователей. Я отвечаю за изучение Мира демонов. Чем могу помочь?" )
	Text( 1, "О Мире демонов", JumpPage, 2)

	Talk( 2, "Исследователь: Я давно изучаю Мир демонов. Если хочешь снять проклятие с этих предметов, принеси мне руны." )
	Text( 2, "Снять проклятье", JumpPage, 3)
	
	Talk( 3, "Исследователь: В мире демонов на многих предметах лежит печать льда. После многих лет исследований я научился снимать её с помощью мощных рунных камней. Тебе нужно с чего-нибудь снять печать?" )
	Text( 3, "Посох потаенного", JumpPage, 6)
	Text( 3, "Накидка сфинкса", JumpPage, 7)
	Text( 3, "Крис сфинкса", JumpPage, 8)
	Text( 3, "Правосудие потаенного", JumpPage, 9)
	Text( 3, "Аркебуз потаенного", JumpPage, 10)
	Text( 3, "Накидка потаенного", JumpPage, 11)
	Text( 3, "Мантия потаенного", JumpPage, 12)
	Text( 3, "Следующая страница", JumpPage, 4)

	Talk( 4, "Исследователь: В мире демонов на многих предметах лежит печать льда. После многих лет исследований я научился снимать её с помощью мощных рунных камней. Тебе нужно с чего-нибудь снять печать?" )
	Text( 4, "Клинок потаенного", JumpPage, 13)
	Text( 4, "Тату потаенного", JumpPage, 14)
	Text( 4, "Доспех потаенного", JumpPage, 15)
	Text( 4, "Мантия сфинкса", JumpPage, 16)
	Text( 4, "Посох сфинкса", JumpPage, 17)
	Text( 4, "Щит Потаенного", JumpPage, 18)
	Text( 4, "Лук Потаенного", JumpPage, 19)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1909, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1909, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 788, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "Исследователь: Чтобы снять проклятие с Посоха потаенного, принеси мне: Посох потаенного с печатью Льда, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800 000 золотых." )
	Text( 6, "Снять проклятие с Посоха потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1927, 1 )
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1927, 1 )
	TriggerAction( 1, TakeItem, 3457, 3  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 806, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "Исследователь: Чтобы снять проклятие с Накидки потаенного, принеси мне: Накидку потаенного с печатью Льда, 3 руны Кэль, 10 рун Фа, 20 рун Тер и 800 000 золотых." )
	Text( 7, "Снять проклятие с Накидки сфинкса", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1923, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1923, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 802, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "Исследователь: Чтобы снять проклятие с Криса сфинкса, принеси мне: Крис сфинкса с печатью Льда, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800 000 золотых." )
	Text( 8, "Снять проклятие с Крис сфинкса", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1894, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1894, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 773, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "Исследователь: Чтобы снять проклятие с Правосудия потаенного, принеси мне: Правосудие потаенного с печатью Льда, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800 000 золотых." )
	Text( 9, "Снять проклятие с Правосудия потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1905, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1905, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 784, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "Исследователь: Чтобы снять проклятие с Аркебуза потаенного, принеси мне: Аркебуз потаенного с печатью Льда, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800 000 золотых." )
	Text( 10, "Снять проклятие с Аркебуза потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1901, 1 )
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1901, 1 )
	TriggerAction( 1, TakeItem, 3457, 3  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 780, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "Исследователь: Чтобы снять проклятие с Накидки потаенного, принеси мне: Накидку потаенного с печатью Льда, 3 руны Кэль, 10 рун Фа, 20 рун Тер и 800 000 золотых." )
	Text( 11, "Снять проклятие с Накидки потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1913, 1 )
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1913, 1 )
	TriggerAction( 1, TakeItem, 3457, 3  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 792, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "Исследователь: Чтобы снять проклятие с Мантии потаенного, принеси мне: Мантию потаенного с печатью Льда, 3 руны Кэль, 10 рун Фа, 20 рун Тер и 800 000 золотых." )
	Text( 12, "Снять проклятие с Мантии потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1897, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1897, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 776, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "Исследователь: Чтобы снять проклятие с Клинка потаенного, принеси мне: Клинок потаенного с печатью Льда, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800 000 золотых." )
	Text( 13, "Снять проклятие с Клинка потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1887, 1 )
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1887, 1 )
	TriggerAction( 1, TakeItem, 3457, 3  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 766, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "Исследователь: Чтобы снять проклятие с Тату потаенного, принеси мне: Тату потаенного с печатью Льда, 3 руны Кэль, 10 рун Фа, 20 рун Тер и 800 000 золотых." )
	Text( 14, "Снять проклятие с Тату потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1890, 1 )
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1890, 1 )
	TriggerAction( 1, TakeItem, 3457, 3  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 769, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "Исследователь: Чтобы снять проклятие с Доспеха потаенного, принеси мне: Доспех потаенного с печатью Льда, 3 руны Кэль, 10 рун Фа, 20 рун Тер и 800 000 золотых." )
	Text( 15, "Снять проклятие с Доспеха потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1919, 1 )
	TriggerCondition( 1, HasItem, 3457, 3 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1919, 1 )
	TriggerAction( 1, TakeItem, 3457, 3  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 798, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "Исследователь: Чтобы снять проклятие с Мантии сфинкса, принеси мне: Мантию сфинкса с печатью Льда, 3 руны Кэль, 10 рун Фа, 20 рун Тер и 800 000 золотых." )
	Text( 16, "Снять проклятие с Мантии сфинкса", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1916, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1916, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 795, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "Исследователь: Чтобы снять проклятие с Посоха сфинкса, принеси мне: Посох сфинкса с печатью Льда, 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800 000 золотых." )
	Text( 17, "Снять проклятие с Посоха сфинкса", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2341, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 2341, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 2339, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 18, "Исследователь: Чтобы снять проклятие с Щита Потаенного, принеси мне: Щит Потаенного (печать Льда), 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800 000 золотых." )
	Text( 18, "Снять проклятие с Щита Потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2342, 1 )
	TriggerCondition( 1, HasItem, 3457, 5 )
	TriggerCondition( 1, HasItem, 3456, 10 )
	TriggerCondition( 1, HasItem, 3455, 20 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 2342, 1 )
	TriggerAction( 1, TakeItem, 3457, 5  )
	TriggerAction( 1, TakeItem, 3456, 10 )
	TriggerAction( 1, TakeItem, 3455, 20)
	TriggerAction( 1, GiveItem, 2340, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 19, "Исследователь: Чтобы снять проклятие с Лука Потаенного, принеси мне: Лук Потаенного (печать Льда), 5 рун Кэль, 10 рун Фа, 20 рун Тер и 800 000 золотых." )
	Text( 19, "Снять проклятие с Лука Потаенного", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "Исследователь: Прости, но я не смогу снять проклятие без нужных вещей." )

end


------------------------------------------------------------
-- Тх°µХУФу-----їј№ЕС§јТ¶Уі¤
------------------------------------------------------------
function r_talk256()
	
	Talk( 1, "Приветствую! Я состою в организации профессиональных исследователей и отвечаю за изучение Затерянного города. Могу я тебе чем-нибудь помочь?" )
	Text( 1, "Темная топь", JumpPage, 2)

	Talk( 2, "Исследователь: Я долго исследовал Темную топь. Чтобы снять проклятие с этих предметов, ты должен принести мне руны. А если ты найдешь Тёмное масло, я смогу приготовить тебе Огненное зернышко." )
	Text( 2, "Снять проклятие", JumpPage, 3)
	Text( 2, "Огненное зернышко", JumpPage, 5)
	
	Talk( 3, "Исследователь: Темная топь хранит множество артефактов, запечатанных Землей. После многолетних исследований я, наконец, могу взломать эти печати с помощью могущественных рун. Вам нужно снять какие-нибудь печати?" )
	Text( 3, "Плащ Призыва", JumpPage, 6)
	Text( 3, "Тату Проклятого воина", JumpPage, 7)
	Text( 3, "Накидка проклятого пламени", JumpPage, 8)
	Text( 3, "Посох заклинаний", JumpPage, 9)
	Text( 3, "Посох Кабалы", JumpPage, 10)
	Text( 3, "Мантия Кабалы", JumpPage, 11)
	Text( 3, "Клинок заклинаний", JumpPage, 12)
	Text( 3, "Следующая страница", JumpPage, 4)

	Talk( 4, "Исследователь: Темная топь хранит множество артефактов, запечатанных Землей. После многолетних исследований я, наконец, могу взломать эти печати с помощью могущественных рун. Вам нужно снять какие-нибудь печати?" )
	Text( 4, "Пояс заклинаний", JumpPage, 13)
	Text( 4, "Большой меч заклинаний", JumpPage, 14)
	Text( 4, "Зуб проклятого", JumpPage, 15)
	Text( 4, "Пластинчатый доспех проклятого", JumpPage, 16)
	Text( 4, "Поцелуй проклятого", JumpPage, 17)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3930, 5 )
	TriggerCondition( 1, HasItem, 3931, 1 )
	TriggerCondition( 1, HasItem, 3932, 5 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3930, 5 )
	TriggerAction( 1, TakeItem, 3931, 1 )
	TriggerAction( 1, TakeItem, 3932, 5 )
	TriggerAction( 1, GiveItem, 3934, 1, 4 )
	TriggerFailure( 1, JumpPage, 31 )
	Talk( 5, "Исследователь: Чтобы сделать Огненное зернышко, тебе понадобятся: 5 Тёмного масла, 1 Зажигалка, 5 Клочков ткани и 200 золотых." )
	Text( 5, "Сделать Огненное зернышко", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1911, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1911, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 790, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "Исследователь: Чтобы снять проклятие, мне понадобится Экипировка с печатью земли, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400 000 золотых." )
	Text( 6, "Снять проклятие с Плаща Призыва", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1885, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1885, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 764, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "Исследователь: Чтобы снять проклятие, мне понадобится Экипировка с печатью земли, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400 000 золотых." )
	Text( 7, "Снять проклятие с Тату Проклятого воина", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1925, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1925, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 804, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "Исследователь: Чтобы снять проклятие, мне понадобится Экипировка с печатью земли, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400 000 золотых." )
	Text( 8, "Снять проклятие с Накидки проклятого пламени", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1907, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1907, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 786, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "Исследователь: Чтобы снять проклятие, мне понадобится Экипировка с печатью земли, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400 000 золотых." )
	Text( 9, "Снять проклятие с Посоха заклинаний", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1914, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1914, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 793, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "Исследователь: Чтобы снять проклятие, мне понадобится Экипировка с печатью земли, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400 000 золотых." )
	Text( 10, "Снять проклятие с Посоха Кабалы", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1917, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1917, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 796, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "Researcher: To unseal the curse on Robe of Abraxas, you must bring me: Earth Sealed Robe of Abraxas, Lum Runestone x5, Sol Runestone x10, Cam Runestone x5 and also 400000G as fee." )
	Text( 11, "Снять проклятие с Мантии Кабалы", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1895, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1895, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 774, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "Исследователь: Чтобы снять проклятие, мне понадобится Экипировка с печатью земли, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400 000 золотых." )
	Text( 12, "Снять проклятие с Клинка заклинаний.", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1899, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1899, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 778, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "Исследователь: Чтобы снять проклятие, мне понадобится Экипировка с печатью земли, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400 000 золотых." )
	Text( 13, "Снять проклятие с Пояса заклинаний", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1892, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1892, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 771, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "Исследователь: Чтобы снять проклятие, мне понадобится Экипировка с печатью земли, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400 000 золотых." )
	Text( 14, "Снять проклятие с Большого меча заклинаний", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1921, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1921, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 800, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "Исследователь: Чтобы снять проклятие, мне понадобится Экипировка с печатью земли, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400 000 золотых." )
	Text( 15, "Снять проклятие с Зуба проклятого", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1888, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1888, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 767, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "Исследователь: Чтобы снять проклятие, мне понадобится Экипировка с печатью земли, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400 000 золотых." )
	Text( 16, "Снять проклятие с Пластинчатого доспеха проклятого", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1903, 1 )
	TriggerCondition( 1, HasItem, 3432, 5 )
	TriggerCondition( 1, HasItem, 3426, 10 )
	TriggerCondition( 1, HasItem, 3429, 5 )
	TriggerCondition( 1, HasMoney, 400000 )
	TriggerAction( 1, TakeMoney, 400000 )
	TriggerAction( 1, TakeItem, 1903, 1 )
	TriggerAction( 1, TakeItem, 3432, 5  )
	TriggerAction( 1, TakeItem, 3426, 10)
	TriggerAction( 1, TakeItem, 3429, 5 )
	TriggerAction( 1, GiveItem, 782, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "Исследователь: Чтобы снять проклятие, мне понадобится Экипировка с печатью земли, 5 рун Лам, 10 рун Сол, 5 рун Кам и 400 000 золотых." )
	Text( 17, "Снять проклятие с Поцелуя проклятого", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "Исследователь: Прости, но я не смогу снять проклятие без нужных вещей." )

	Talk( 31, "Исследователь: Извини, но для изготовления Огненного зернышка мне понадобится Тёмное масло (5), 1 Зажигалка, 5 Клочков ткани и 200 золотых." )


end


------------------------------------------------------------
-- °ЧТшіЗ-----йД№ы
------------------------------------------------------------
function r_talk242()
	--Talk( 14, "Бинго: Дай мне Расписку на новогодний самоцвет и я дам тебе взамен высокоуровневый самоцвет" )
	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0860, 3, 101 )
	TriggerFailure( 1, JumpPage, 15 )
	--Text( 14, "Самоцвет Ветра 3 ур.",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0861, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
     --   Text( 14, "Самоцвет Удара 3 ур.",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0862, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
     --   Text( 14, "Самоцвет Колосса 3 ур.",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 0863, 3,101 )
	TriggerFailure( 1, JumpPage, 15 )
    --    Text( 14, "Самоцвет Ярости 3 ур.",MultiTrigger, GetMultiTrigger(), 1) 
	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem,2899, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2899, 1 )
	TriggerAction( 1, GiveItem, 1012, 1,101 )
	TriggerFailure( 1, JumpPage, 15 )
      --  Text( 14, "Самоцвет Души 1 ур.",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 15, "Redemption failed. You do not seem to have any Christmas Gem Voucher or your inventory has been binded. " )
	Talk( 16, "С новым годом!" )

	Talk( 1, "Бинго: У меня последние местные новости из достоверных источников. Хочешь послушать?")
	--Text( 1, "Pirate Voucher", JumpPage, 17 )
	Text( 1, "Расписка на новогодний самоцвет", JumpPage, 14 )
	Text( 1, "Расписка на уникальный самоцвет", JumpPage, 12 )
	Text( 1, "Расписка на очищающий самоцвет", JumpPage, 2 )
	Text( 1, "Расписка на очищающий самоцвет 2 ур.", JumpPage, 3 )
	Text( 1, "Расписка на очищающий самоцвет", JumpPage, 4 )
      --  Text( 1, "Расписка на самоцвет", JumpPage, 5 )
       -- Text( 1, "Соединить Камень желаний", JumpPage, 6 )
--	Text( 1, "ФВ±э¶Т»»", JumpPage, 20 )


--	Talk( 20, "йД№ы:ДгУРіФІ»НкµДФВ±эВр?ФЪОТХвАпїЙТФ¶Т»»Рн¶аєГ¶«Оч." )
--	InitTrigger() --99ёцЈєГФЦ®Лш10ёц
--	TriggerCondition( 1, HasItem,3915, 99 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 99 )
--	TriggerAction( 1, GiveItem, 2440, 10, 4 )
--	TriggerFailure( 1, JumpPage, 21 )
--	Text( 20, "¶Т»»ГФЦ®Лш10ёц",MultiTrigger, GetMultiTrigger(), 1) 
	
--	InitTrigger() --100ёцЈєІЖё»1ёц
--	TriggerCondition( 1, HasItem,3915, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 100 )
--	TriggerAction( 1, GiveItem, 3096, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "¶Т»»ІЖё»Фц·щЖч1ёц",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --200ёцЈєІШ±¦Нј1ёц
--	TriggerCondition( 1, HasItem,3915, 200 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 200 )
--	TriggerAction( 1, GiveItem, 1092, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "¶Т»»ІШ±¦Нј1ёц",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --300ёцЈє99°ь1ёц
--	TriggerCondition( 1, HasItem,3915, 300 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 300 )
--	TriggerAction( 1, GiveItem, 1095, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "¶Т»»99°ь1ёц",MultiTrigger, GetMultiTrigger(), 1) 
	
--	InitTrigger() --2000ёцЈєјУДЙЦ®ЙсЈЁѕ«ЙсјУ5Ј©
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 1012, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "¶Т»»јУДЙЦ®Йс1їЕ",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --2000ёцЈєСЧУсЈЁБ¦БїјУ5Ј©
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 863, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "¶Т»»СЧУс1їЕ",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --2000ёцЈєСТУсЈЁМеЦКјУ5Ј©
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 862, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "¶Т»»СТУс1їЕ",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --2000ёцЈєУҐСЫКЇЈЁЧЁЧўјУ5Ј©
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 861, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "¶Т»»УҐСЫКЇ1їЕ",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --2000ёцЈє·зБйКЇЈЁГфЅЭјУ5Ј©
--	TriggerCondition( 1, HasItem,3915, 2000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 2000 )
--	TriggerAction( 1, GiveItem, 860, 1,4 )
--	TriggerFailure( 1, JumpPage, 21 )
--       Text( 20, "¶Т»»·зБйКЇ1їЕ",MultiTrigger, GetMultiTrigger(), 1) 

--	InitTrigger() --3000ёцЈє65 BOSSТВ·ю1јю
--	TriggerCondition( 1, HasItem,3915,3000 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 3915, 3000)
--	TriggerAction( 1, GiveItem, 241, 1, 4 )
--	TriggerFailure( 1, JumpPage, 21 )
--      Text( 20, "¶Т»»65 BOSSТВ·ю1јю",MultiTrigger, GetMultiTrigger(), 1) 

--	Talk( 21, "¶Т»»К§°Ь,ДъЙнЙПєГПсГ»УРЧг№»µДФВ±э°Ў,»тХЯ±і°ьТСЛш»тГ»УРїХёс!" )

	--Text( 1, "Exchange Lantern", JumpPage, 7 )
	--Text( 1, "»сµГ"ИэФВѕ«Бй"", JumpPage, 10 )
      
	
	Talk( 2, "Бинго: Принеси мне Расписку на Очищающий самоцвет 1 ур., и я дам тебе Очищающий самоцвет 1 ур. Дополнительно ты получишь случайный Самоцвет 1 ур.")
	Text( 2, "Подтвердить обмен", TransferDiamond, 1)

	Talk( 3, "Бинго: Принеси мне Расписку на Очищающий самоцвет 2 ур., и я дам тебе Очищающий самоцвет 2 ур. Дополнительно ты получишь случайный Самоцвет 2 ур.")
	Text( 3, "Подтвердить обмен", TransferDiamond, 2)

	Talk( 4, "Бинго: В обмен на Очищающий самоцвет 1 ур. дай мне расписку на Очищающий самоцвет")
	Text( 4, "Подтвердить обмен", TransferDiamond, 3)

	Talk( 5, "Бинго: Принеси мне Расписку на самоцвет в обмен на Самоцвет 1 ур.")
	Text( 5, "Подтвердить обмен", TransferDiamond, 4)



	Talk( 17, "Бинго: У тебя есть Пиратские расписки?")
	
	InitTrigger()--¶Т»»"IPOD"¶Т»»ИЇ
	TriggerCondition( 1, HasItem, 2238, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2238, 1 )
 	TriggerAction( 1, GiveItem, 2306, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "У меня есть Пиратская расписка 8",MultiTrigger, GetMultiTrigger(), 1)


	--InitTrigger()--¶Т»»Д¦Б¦·ыКЇ
	--TriggerCondition( 1, HasItem, 2240, 1 )
	--TriggerCondition( 1, HasLeaveBagGrid, 1 )
	--TriggerCondition( 1, KitbagLock, 0 )
	--TriggerAction( 1, TakeItem, 2240, 1 )
 	--TriggerAction( 1, GiveItem, 1028, 1 ,4)
	--TriggerAction( 1,JumpPage, 19 )------------------
	--TriggerFailure( 1, JumpPage, 18 )
	--Text( 17, "У меня есть Пиратская расписка 6",MultiTrigger, GetMultiTrigger(), 1)

	Text( 17, "У меня есть Пиратская расписка 6",JumpPage, 19)
	Talk(19,"Хочешь ли ты их обменять?")
	Text( 19, "Подтвердить обмен",GetChaName_5, 1)

	InitTrigger()--¶Т»»ѕ«БйУІ±Т99ёц
	TriggerCondition( 1, HasItem, 2237, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2237, 1 )
 	TriggerAction( 1, GiveItem, 855, 99 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "У меня есть Пиратская расписка 9",MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()-- ¶Т»»ЦэФмНјЦЅ"Encrypted Blueprint"Ј±ХЕ
	TriggerCondition( 1, HasItem, 2239, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2239, 1 )
 	TriggerAction( 1, GiveItem, 1001, 1 ,4)
	TriggerFailure( 1, JumpPage, 18 )
	Text( 17, "У меня есть Пиратская расписка 7",MultiTrigger, GetMultiTrigger(), 1)

	-- InitTrigger()--¶Т»»јУЛЩіЙі¤№ы1ёц
	-- TriggerCondition( 1, HasItem, 2241, 1 )
	-- TriggerCondition( 1, HasLeaveBagGrid, 1 )
	-- TriggerCondition( 1, KitbagLock, 0 )
	-- TriggerAction( 1, TakeItem, 2241, 1 )
 	-- TriggerAction( 1, GiveItem, 0578, 1 ,4)
	-- TriggerFailure( 1, JumpPage, 18 )
	-- Text( 17, "У меня есть Пиратская расписка 5",MultiTrigger, GetMultiTrigger(), 1)
	Text( 17, "Общее количество других Пиратских расписок", GetChaName_4, 1)



	Talk( 18, "Бинго: Похоже, у тебя нет Пиратских расписок или недосточно места в инвентаре. Освободи хотябы одну ячейку.")

 	InitTrigger() --єПіЙРнФёКЇ
	TriggerCondition( 1, HasItem, 3905, 5 )
	TriggerCondition( 1, HasItem, 3907, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3905, 5 )
	TriggerAction( 1, TakeItem, 3907, 1 )
 	TriggerAction( 1, GiveItem, 3906, 1 ,4)
	TriggerFailure( 1, JumpPage, 8 )
	Talk( 6, "Бинго: Принеси мне 5 Темных камней желаний и 1 Катализатор ковки, и я сделаю тебе 1 Искрящийся камень желаний.")
	Text( 6, "Подтвердить комбинирование",MultiTrigger, GetMultiTrigger(), 1)        
 	
--	InitTrigger() --¶Ф»»µЖБэ
--	TriggerCondition( 1, HasItem, 3904, 15 )
--	TriggerCondition( 1, HasItem, 3911, 15 )
--	TriggerCondition( 1, HasItem, 4450, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerAction( 1, TakeItem, 3904, 15 )
--	TriggerAction( 1, TakeItem, 3911, 15 )
--	TriggerAction( 1, TakeItem, 4450, 1 )
 --	TriggerAction( 1, GiveItem, 3342, 1 ,4)
--	TriggerFailure( 1, JumpPage, 9 ) 
--	Talk( 7, "Bingo: Give me 15 pieces of Red Paper, 15 sticks of Bamboo Stick and 1 Strange Candle to exchange for a Lantern.")
--	Text( 7, "Подтвердить обмен",MultiTrigger, GetMultiTrigger(), 1) 
 --    
	Talk( 8, "Бинго: Похоже, у тебя нет Темных камней желаний или Катализатора ковки. Также необходимо иметь в инвентаре хотябы одну свободную ячейку.")
--	Talk( 9, "Bingo: You do not seem to have enough of Red Paper, Bamboo Stick or Strange Candle!")

	InitTrigger() --¶Т»»ИэФВѕ«Бй
	TriggerCondition( 1, HasItem, 3342, 2 )
	TriggerCondition( 1, HasItem, 3337, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3342, 2 )
	TriggerAction( 1, TakeItem, 3337, 1 )
	TriggerAction( 1, GiveItem, 3335, 1 ,4)
	TriggerFailure( 1, JumpPage, 11 ) 
	Talk( 10, "Бинго: Принеси мне 2 Светильника и Душу феи и я дам тебе взамен Мартовскую фею. Душу феи можно получить у Диспетчера порта - Уайткомби на острове Хафта.")
	Text( 10, "Подтвердить обмен",MultiTrigger, GetMultiTrigger(), 1) 
   
	Talk( 11, "Бинго: Для получения Мартовской феи необходимо 2 Светильника и Душа феи, а также одна свободная ячейка в инвентаре.")
	
	Talk( 12, "Бинго: Дай мне 1 Расписку на уникальный самоцвет, и я обменяю его на 3 шт. следующих камней:")

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0860, 3, 101 )
	TriggerFailure( 1, JumpPage, 13 ) 
	Text( 12, "Самоцвет Ветра",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3)
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0861, 3,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12, "Самоцвет Удара",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid,3 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0862, 3,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12, "Самоцвет Колосса",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --ёЯј¶±¦КЇ¶Т»»ИЇ
	TriggerCondition( 1, HasItem, 0333, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 3 )
	TriggerCondition( 1, KitbagLock, 0 )
        TriggerAction( 1, TakeItem, 0333, 1 )
	TriggerAction( 1, GiveItem, 0863, 3,101 )
	TriggerFailure( 1, JumpPage, 13 ) 
        Text( 12, "Самоцвет Ярости",MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 13, "Бинго: У тебя нет Расписки на уникальный самоцвет. Также убедись, что в инвентаре есть 3 свободные ячейки.")
	Talk( 20, "Бинго: У тебя много Лунных пирогов? Не желаешь их обменять?" )
	InitTrigger() --99ёцЈєГФЦ®Лш10ёц
	TriggerCondition( 1, HasItem,3915, 99 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 99 )
	TriggerAction( 1, GiveItem, 2440, 10, 4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20, "10 Таинственных замков",MultiTrigger, GetMultiTrigger(), 1) 
	
	InitTrigger() --100ёцЈєІЖё»1ёц
	TriggerCondition( 1, HasItem,3915, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 100 )
	TriggerAction( 1, GiveItem, 3096, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20, "Усилитель удачи",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --200ёцЈєІШ±¦Нј1ёц
	TriggerCondition( 1, HasItem,3915, 200 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 200 )
	TriggerAction( 1, GiveItem, 1092, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20, "Карта сокровищ",MultiTrigger, GetMultiTrigger(), 1) 

	--[[InitTrigger() --300ёцЈє99°ь1ёц
	TriggerCondition( 1, HasItem,3915, 300 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 300 )
	TriggerAction( 1, GiveItem, 1095, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20, "Посылка 99",MultiTrigger, GetMultiTrigger(), 1) ]]--
	
	InitTrigger() --2000ёцЈєјУДЙЦ®ЙсЈЁѕ«ЙсјУ5Ј©
	TriggerCondition( 1, HasItem,3915, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 2000 )
	TriggerAction( 1, GiveItem, 1012, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 20, "Самоцвет Души",MultiTrigger, GetMultiTrigger(), 1) 

	Text( 20, "Следующая страница", JumpPage, 22 )

	Talk( 22, "Бинго: У тебя много Лунных пирогов? Не желаешь их обменять?" )

	InitTrigger() --2000ёцЈєСЧУсЈЁБ¦БїјУ5Ј©
	TriggerCondition( 1, HasItem,3915, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 2000 )
	TriggerAction( 1, GiveItem, 863, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 22, "Самоцвет Ярости",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --2000ёцЈєСТУсЈЁМеЦКјУ5Ј©
	TriggerCondition( 1, HasItem,3915, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 2000 )
	TriggerAction( 1, GiveItem, 862, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 22, "Самоцвет Колосса",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --2000ёцЈєУҐСЫКЇЈЁЧЁЧўјУ5Ј©
	TriggerCondition( 1, HasItem,3915, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 2000 )
	TriggerAction( 1, GiveItem, 861, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 22, "Самоцвет Удара",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --2000ёцЈє·зБйКЇЈЁГфЅЭјУ5Ј©
	TriggerCondition( 1, HasItem,3915, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 2000 )
	TriggerAction( 1, GiveItem, 860, 1,4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 22, "Самоцвет Ветра",MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger() --3000ёцЈє65 BOSSТВ·ю1јю
	TriggerCondition( 1, HasItem,3915,3000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 3915, 3000)
	TriggerAction( 1, GiveItem, 241, 1, 4 )
	TriggerFailure( 1, JumpPage, 21 )
	Text( 22, "Снаряжение 65-го уровня",MultiTrigger, GetMultiTrigger(), 1) 

	Text( 22, "Последняя страница", JumpPage, 20 )

	Talk( 21, "Обмен не удался. Видимо, у тебя либо недостаточно Лунных пирогов, либо нет свободной ячейки в рюкзаке!" )	
	----------------------------------------30ёцФВ±э
	--InitFuncList()
	--AddFuncList( GiveItem, 374, 1, 7 )
	--AddFuncList( GiveItem, 361, 1, 7 )
	--AddFuncList( GiveItem, 314, 1, 7 )
	--AddFuncList( GiveItem, 298, 1, 7 )
	--AddFuncList( GiveItem, 339, 1, 7 )
	--AddFuncList( GiveItem, 354, 1, 7 )

--	InitTrigger()
--	TriggerCondition( 1, HasItem, 3915, 30 )
--	TriggerAction( 1, TakeItem, 3915, 30 )
--	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
--	TriggerFailure( 1, JumpPage, 11 )
--	Talk( 3, "Bingo: 30 Mooncakes to exchange for a Lv 35 armor of your class. Подтвердить?")
--	Text( 3, "I am sure",MultiTrigger, GetMultiTrigger(), 1)
--	Text( 3, "Forget it then",CloseTalk )

end

--Пэп Аргент
function mmm_talk01()
	Talk( 1, "Пэп: Обо всех грядущих событиях в мире 'Пиратии' ты можешь узнать у меня. Выбери интересующую тебя тему из списка, и увидишь краткое описание события. За более подробным описанием обращайся на сайт www.tortyga.xyz ")

--[[	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8207, 1 )
	TriggerAction( 1, JumpPage, 14 )
	TriggerFailure( 1, JumpPage, 15 )
	Text( 1, "У меня есть Расписка на фею" ,MultiTrigger, GetMultiTrigger(), 1)
--]]
--	Text( 1, "Меня интересуют уникальные кольца" ,JumpPage, 2)
--	Text( 1, "Меня интересуют уникальные Бижутерии" ,JumpPage, 8)
--	Text( 1, "Скелетные сундуки", BuyPage)
--	Text( 1, "Я просто осматриваюсь здесь, пока" ,CloseTalk)

	InitTrade()
	Other(	3400	)
	Other(	3401	)
	Other(	3402	)
	Other(	3403	)


	Talk( 2, "Пэп: О значит, ты знаешь что я в этом разбираюсь. Ведь не даром я королевских кровей. Только мы - потомки древнего Короля, который правил этими землями давным давно, знаем секрет зачарованных колец! Какой асортимент тебя интересует?")
	Text( 2, "Меня интересуют кольца 40 ур." ,JumpPage, 3)
	Text( 2, "Меня интересуют кольца 50 ур." ,JumpPage, 4)
	Text( 2, "Меня интересуют кольца 60 ур." ,JumpPage, 5)

	Talk( 3, "Пэп: Так так, говоришь интересует на 40 уровень? Тебе понадобиться: 30 рун Джа, 30 рун Теф и 3 млн. золота. Если принес все что нужно, выбирай кольцо.")

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3427, 30 )
	TriggerCondition( 1, HasItem, 3430, 30 )
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, TakeItem, 3427, 30 )
	TriggerAction( 1, TakeItem, 3430, 30 )
	TriggerAction( 1, GiveItem, 324, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Печать Силы (Сила +6, Тел. +2)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3427, 30 )
	TriggerCondition( 1, HasItem, 3430, 30 )
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, TakeItem, 3427, 30 )
	TriggerAction( 1, TakeItem, 3430, 30 )
	TriggerAction( 1, GiveItem, 327, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Кнопка призрачного волка (Ловк. +6, Тел. +2)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3427, 30 )
	TriggerCondition( 1, HasItem, 3430, 30 )
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, TakeItem, 3427, 30 )
	TriggerAction( 1, TakeItem, 3430, 30 )
	TriggerAction( 1, GiveItem, 328, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Кольцо крыла дракона (Точн. +6, Сила +2)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3427, 30 )
	TriggerCondition( 1, HasItem, 3430, 30 )
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, TakeItem, 3427, 30 )
	TriggerAction( 1, TakeItem, 3430, 30 )
	TriggerAction( 1, GiveItem, 329, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Благословение Единорога (Тел. +6, Дух +2)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3427, 30 )
	TriggerCondition( 1, HasItem, 3430, 30 )
	TriggerCondition( 1, HasMoney, 3000000 )
	TriggerAction( 1, TakeMoney, 3000000 )
	TriggerAction( 1, TakeItem, 3427, 30 )
	TriggerAction( 1, TakeItem, 3430, 30 )
	TriggerAction( 1, GiveItem, 330, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 3, "Горе Ангела (Дух +6, Тел. +2)" ,MultiTrigger, GetMultiTrigger(), 1)
	Text( 3, "Кажется я ошибся, мне нужны другие" ,JumpPage, 2)
	Text( 3, "Я вернусь, как соберу все необходимое" ,CloseTalk)


	Talk( 4, "Пэп: Так так, говоришь интересует на 50 уровень? Тебе понадобиться: 30 рун Тер, 20 рун Фа, 3 руны Фэл и 6 млн. золота. Если принес все что нужно, выбирай кольцо.")

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3456, 20 )
	TriggerCondition( 1, HasItem, 3455, 30 )
	TriggerCondition( 1, HasItem, 3433, 3 )
	TriggerCondition( 1, HasMoney, 6000000 )
	TriggerAction( 1, TakeMoney, 6000000 )
	TriggerAction( 1, TakeItem, 3456, 20 )
	TriggerAction( 1, TakeItem, 3455, 30 )
	TriggerAction( 1, TakeItem, 3433, 3 )
	TriggerAction( 1, GiveItem, 334, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "Громовой молот (Сила +8, Тел. +2)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3456, 20 )
	TriggerCondition( 1, HasItem, 3455, 30 )
	TriggerCondition( 1, HasItem, 3433, 3 )
	TriggerCondition( 1, HasMoney, 6000000 )
	TriggerAction( 1, TakeMoney, 6000000 )
	TriggerAction( 1, TakeItem, 3456, 20 )
	TriggerAction( 1, TakeItem, 3455, 30 )
	TriggerAction( 1, TakeItem, 3433, 3 )
	TriggerAction( 1, GiveItem, 346, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "Глаз молнии (Ловк. +8, Тел. +2)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3456, 20 )
	TriggerCondition( 1, HasItem, 3455, 30 )
	TriggerCondition( 1, HasItem, 3433, 3 )
	TriggerCondition( 1, HasMoney, 6000000 )
	TriggerAction( 1, TakeMoney, 6000000 )
	TriggerAction( 1, TakeItem, 3456, 20 )
	TriggerAction( 1, TakeItem, 3455, 30 )
	TriggerAction( 1, TakeItem, 3433, 3 )
	TriggerAction( 1, GiveItem, 347, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "Крылья света (Точн. +8, Сила +2)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3456, 20 )
	TriggerCondition( 1, HasItem, 3455, 30 )
	TriggerCondition( 1, HasItem, 3433, 3 )
	TriggerCondition( 1, HasMoney, 6000000 )
	TriggerAction( 1, TakeMoney, 6000000 )
	TriggerAction( 1, TakeItem, 3456, 20 )
	TriggerAction( 1, TakeItem, 3455, 30 )
	TriggerAction( 1, TakeItem, 3433, 3 )
	TriggerAction( 1, GiveItem, 348, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "Утренний колокольчик (Тел. +8, Дух +2)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 3456, 20 )
	TriggerCondition( 1, HasItem, 3455, 30 )
	TriggerCondition( 1, HasItem, 3433, 3 )
	TriggerCondition( 1, HasMoney, 6000000 )
	TriggerAction( 1, TakeMoney, 6000000 )
	TriggerAction( 1, TakeItem, 3456, 20 )
	TriggerAction( 1, TakeItem, 3455, 30 )
	TriggerAction( 1, TakeItem, 3433, 3 )
	TriggerAction( 1, GiveItem, 349, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerFailure( 1, JumpPage, 7 )
	Text( 4, "Шепот природы (Дух +8, Тел. +2)" ,MultiTrigger, GetMultiTrigger(), 1)
	Text( 4, "Кажется я ошибся, мне нужны другие" ,JumpPage, 2)
	Text( 4, "Я вернусь, как соберу все необходимое" ,CloseTalk)

	Talk( 5, "Пэп: Так так, говоришь интересует на 60 уровень? Тебе понадобиться: 5 Шкур бессмертной лисы, 5 Замороженной чешуи дракона, 5 Ночных глаз, 5 Хороших поясов ящера и 10 млн. золота. Если принес все что нужно, выбирай кольцо.")

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8203, 1 )
	TriggerAction( 1, TakeItem, 8203, 1 )
	TriggerAction( 1, GiveItem, 387, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, KitbagLock, 0 )
	TriggerCondition( 2, HasLeaveBagGrid, 1 )
	TriggerCondition( 2, HasItem, 0175, 5 )
	TriggerCondition( 2, HasItem, 3067, 5 )
	TriggerCondition( 2, HasItem, 0164, 5 )
	TriggerCondition( 2, HasItem, 0166, 5 )
	TriggerCondition( 2, HasMoney, 10000000 )
	TriggerAction( 2, TakeMoney, 10000000 )
	TriggerAction( 2, TakeItem, 0175, 5 )
	TriggerAction( 2, TakeItem, 3067, 5 )
	TriggerAction( 2, TakeItem, 0164, 5 )
	TriggerAction( 2, TakeItem, 0166, 5 )
	TriggerAction( 2, GiveItem, 387, 1, 4 )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )
	Text( 5, "Призыв Питера (Сила +10, Тел. +3)" ,MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8203, 1 )
	TriggerAction( 1, TakeItem, 8203, 1 )
	TriggerAction( 1, GiveItem, 414, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, KitbagLock, 0 )
	TriggerCondition( 2, HasLeaveBagGrid, 1 )
	TriggerCondition( 2, HasItem, 0175, 5 )
	TriggerCondition( 2, HasItem, 3067, 5 )
	TriggerCondition( 2, HasItem, 0164, 5 )
	TriggerCondition( 2, HasItem, 0166, 5 )
	TriggerCondition( 2, HasMoney, 10000000 )
	TriggerAction( 2, TakeMoney, 10000000 )
	TriggerAction( 2, TakeItem, 0175, 5 )
	TriggerAction( 2, TakeItem, 3067, 5 )
	TriggerAction( 2, TakeItem, 0164, 5 )
	TriggerAction( 2, TakeItem, 0166, 5 )
	TriggerAction( 2, GiveItem, 414, 1, 4 )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )
	Text( 5, "Поцелуй Ника (Ловк. +10, Тел. +3)" ,MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8203, 1 )
	TriggerAction( 1, TakeItem, 8203, 1 )
	TriggerAction( 1, GiveItem, 415, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, KitbagLock, 0 )
	TriggerCondition( 2, HasLeaveBagGrid, 1 )
	TriggerCondition( 2, HasItem, 0175, 5 )
	TriggerCondition( 2, HasItem, 3067, 5 )
	TriggerCondition( 2, HasItem, 0164, 5 )
	TriggerCondition( 2, HasItem, 0166, 5 )
	TriggerCondition( 2, HasMoney, 10000000 )
	TriggerAction( 2, TakeMoney, 10000000 )
	TriggerAction( 2, TakeItem, 0175, 5 )
	TriggerAction( 2, TakeItem, 3067, 5 )
	TriggerAction( 2, TakeItem, 0164, 5 )
	TriggerAction( 2, TakeItem, 0166, 5 )
	TriggerAction( 2, GiveItem, 415, 1, 4 )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )
	Text( 5, "Гнев Рэя (Точн. +10, Сила +3)" ,MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8203, 1 )
	TriggerAction( 1, TakeItem, 8203, 1 )
	TriggerAction( 1, GiveItem, 416, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, KitbagLock, 0 )
	TriggerCondition( 2, HasLeaveBagGrid, 1 )
	TriggerCondition( 2, HasItem, 0175, 5 )
	TriggerCondition( 2, HasItem, 3067, 5 )
	TriggerCondition( 2, HasItem, 0164, 5 )
	TriggerCondition( 2, HasItem, 0166, 5 )
	TriggerCondition( 2, HasMoney, 10000000 )
	TriggerAction( 2, TakeMoney, 10000000 )
	TriggerAction( 2, TakeItem, 0175, 5 )
	TriggerAction( 2, TakeItem, 3067, 5 )
	TriggerAction( 2, TakeItem, 0164, 5 )
	TriggerAction( 2, TakeItem, 0166, 5 )
	TriggerAction( 2, GiveItem, 416, 1, 4 )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )
	Text( 5, "Сожаления Даниэля (Тел. +10, Дух +3)" ,MultiTrigger, GetMultiTrigger(), 2)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8203, 1 )
	TriggerAction( 1, TakeItem, 8203, 1 )
	TriggerAction( 1, GiveItem, 417, 1, 4 )
	TriggerAction( 1, JumpPage, 6 )
	TriggerCondition( 2, KitbagLock, 0 )
	TriggerCondition( 2, HasLeaveBagGrid, 1 )
	TriggerCondition( 2, HasItem, 0175, 5 )
	TriggerCondition( 2, HasItem, 3067, 5 )
	TriggerCondition( 2, HasItem, 0164, 5 )
	TriggerCondition( 2, HasItem, 0166, 5 )
	TriggerCondition( 2, HasMoney, 10000000 )
	TriggerAction( 2, TakeMoney, 10000000 )
	TriggerAction( 2, TakeItem, 0175, 5 )
	TriggerAction( 2, TakeItem, 3067, 5 )
	TriggerAction( 2, TakeItem, 0164, 5 )
	TriggerAction( 2, TakeItem, 0166, 5 )
	TriggerAction( 2, GiveItem, 417, 1, 4 )
	TriggerAction( 2, JumpPage, 6 )
	TriggerFailure( 2, JumpPage, 7 )
	Text( 5, "Посвящение жрицы (Дух +10, Тел. +3)" ,MultiTrigger, GetMultiTrigger(), 2)
	Text( 5, "Кажется я ошибся, мне нужны другие" ,JumpPage, 2)
	Text( 5, "Я вернусь, как соберу все необходимое" ,CloseTalk)

	Talk( 6, "Пэп: Вот держи свое кольцо, знай, что оно должно служить правой цели. Если нужны будут мои услуги ещё обращайся.")
	Text( 6, "Хорошо, спасибо" ,CloseTalk)

	Talk( 7, "Пэп: Кажется у тебя не достаточно золота, или не хватает нужных предметов для зачарования. Так же возможно у тебя заблокирован инвентарь, или у тебя не хватает в нем места!")

	Talk( 8, "Пэп: Я смотрю ты хорошо осведомлен, и знаешь что я привожу различные магические украшения. На какой уровень тебя интересует?")
	Text( 8, "Меня интересует бижутерия на 40 ур." ,JumpPage, 9)
	Text( 8, "Меня интересует бижутерия на 50 ур." ,JumpPage, 10)
	Text( 8, "Меня интересует бижутерия на 60 ур." ,JumpPage, 11)

	Talk( 9, "Пэп: Я надеюсь ты так же хорошо осведомлен на что я их меняю? У тебя же есть Расписка на бижутерию 40 ур.? Если есть, то выбирай.")

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 7707, 1 )
	TriggerAction( 1, TakeItem, 7707, 1 )
	TriggerAction( 1, GiveItem, 461, 1, 4 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 9, "Кристалл Наяда (Скорость +60, Мана +40)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 7707, 1 )
	TriggerAction( 1, TakeItem, 7707, 1 )
	TriggerAction( 1, GiveItem, 739, 1, 4 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 9, "Бешеная атака (Скорость +60, Здор. +50)" ,MultiTrigger, GetMultiTrigger(), 1)
	Text( 9, "Кажется я ошибся, мне нужны другие" ,JumpPage, 8)
	Text( 9, "Я вернусь, как соберу все необходимое" ,CloseTalk)

	Talk( 10, "Пэп: Я надеюсь ты так же хорошо осведомлен на что я их меняю? У тебя же есть Расписка на бижутерию 50 ур.? Если есть, то выбирай.")

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 7708, 1 )
	TriggerAction( 1, TakeItem, 7708, 1 )
	TriggerAction( 1, GiveItem, 463, 1, 4 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 10, "Блуждающий по лабиринту (Скорость +80, Мана +50)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 7708, 1 )
	TriggerAction( 1, TakeItem, 7708, 1 )
	TriggerAction( 1, GiveItem, 462, 1, 4 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 10, "Ловкий торговец (Скорость +80, Здор. +60)" ,MultiTrigger, GetMultiTrigger(), 1)
	Text( 10, "Кажется я ошибся, мне нужны другие" ,JumpPage, 8)
	Text( 10, "Я вернусь, как соберу все необходимое" ,CloseTalk)

	Talk( 11, "Пэп: Я надеюсь ты так же хорошо осведомлен на что я их меняю? У тебя же есть Расписка на бижутерию 60 ур.? Если есть, то выбирай.")

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 7709, 1 )
	TriggerAction( 1, TakeItem, 7709, 1 )
	TriggerAction( 1, GiveItem, 497, 1, 4 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 11, "Благословенный Давао (Скорость +100, Мана +60)" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 7709, 1 )
	TriggerAction( 1, TakeItem, 7709, 1 )
	TriggerAction( 1, GiveItem, 495, 1, 4 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 13 )
	Text( 11, "Духовный генератор (Скорость +100, Здор. +70)" ,MultiTrigger, GetMultiTrigger(), 1)
	Text( 11, "Кажется я ошибся, мне нужны другие" ,JumpPage, 8)
	Text( 11, "Я вернусь, как соберу все необходимое" ,CloseTalk)

	Talk( 12, "Пэп: Вот держи свое ожерелье, используй его правильно.")
	Text( 12, "Хорошо, спасибо" ,CloseTalk)

	Talk( 13, "Пэп: Кажется у тебя нет расписки для обмена. Так же возможно у тебя заблокирован инвентарь, или у тебя не хватает в нем места!")

	Talk( 14, "Пэп: Расписка на фею говоришь? Ну хорошо, я могу тебе дать за нее подарок. Какой хочешь получить?!")

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8207, 1 )
	TriggerAction( 1, TakeItem, 8207, 1 )
	TriggerAction( 1, GiveItem, 8208, 1, 4 )
	TriggerAction( 1, JumpPage, 16 )
	TriggerFailure( 1, JumpPage, 17 )
	Text( 14, "Получить Фею на Силу" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8207, 1 )
	TriggerAction( 1, TakeItem, 8207, 1 )
	TriggerAction( 1, GiveItem, 8209, 1, 4 )
	TriggerAction( 1, JumpPage, 16 )
	TriggerFailure( 1, JumpPage, 17 )
	Text( 14, "Получить Фею на Телосложение" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8207, 1 )
	TriggerAction( 1, TakeItem, 8207, 1 )
	TriggerAction( 1, GiveItem, 8211, 1, 4 )
	TriggerAction( 1, JumpPage, 16 )
	TriggerFailure( 1, JumpPage, 17 )
	Text( 14, "Получить Фею на Точность" ,MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 8207, 1 )
	TriggerAction( 1, TakeItem, 8207, 1 )
	TriggerAction( 1, GiveItem, 8212, 1, 4 )
	TriggerAction( 1, JumpPage, 16 )
	TriggerFailure( 1, JumpPage, 17 )
	Text( 14, "Получить Фею на Дух" ,MultiTrigger, GetMultiTrigger(), 1)

	Text( 14, "Мне нужно ещё подумать" ,CloseTalk)

	Talk( 15, "Пэп: К сожалению у тебя нету Расписки на фею. Нам не о чем разговаривать, лгун!")

	Talk( 16, "Пэп: Вот держи, пользуйся ей правильно! Да прибудет с тобой Богиня во всех твоих начинаниях!")

	Talk( 17, "Пэп: Я не могу тебе ее дать, скорее всего твой инветарь заблокирован или в нем не хватает места. Так же возможно, что у тебя нет Расписки на фею!")

end 
------------------------------------------------------------
-- °ЧТшіЗ-----ЗьФ­
------------------------------------------------------------
function mmm_talk02()
	Talk( 1, "Qu Yuan: A long journey home...Sigh...")
	--AddNpcMission	(902 )
	--AddNpcMission	(903 )
	--AddNpcMission	(904 )
end

function e_talk01 ()
	Talk( 1, "Ланга: Адский фрукт определяет, какого типа будет новая фея, а тип феи определяет, какие характеристики получит игрок при использовании навыка обладания феей. После бракосочетания феи-родители теряют по 4 уровня. Коробочку фей ты можешь получить у меня за 10 брошей фей, а умения фей за 1 золотой, монеты фей я обмениваю на медь.  Хочешь узнать что-то еще?" )
	Text( 1, "Возможности нового поколения фей" ,JumpPage, 2)
	Text( 1, "Условия рождения фей", JumpPage, 3 )
	Text( 1, "Свадьба фей", OpenEidolonMetempsychosis )
	Text( 1, "Получить фею и умения", SendExchangeXData )
	Text( 1, "Улучшить фрукты", JumpPage, 13 )
	
	Talk( 2, "Ланга: Новое поколение фей обучится Самоуничтожению и Обладанию. Фея силы, Фея телосложения, Фея точности, Фея духа и Фея ловкости могут улучшать соответствующие параметры персонажа. Фея удачи и Фея зла могут увеливать вероятность нахождения трофеев и скорость получения опыта соответственно, а Мордо Младший обладает способностями как Феи Зла, так и Феи удачи, равно как и скрытыми свойствами.")	
	Talk( 3, "Ланга: Уровень обычных фей сильно влияет на новорожденных фей. Я много знаю о феях. Пожалуйста, проверяйте их.")
	Text( 3, "Условия для получения Феи Силы", JumpPage, 4  )
	Text( 3, "Условия для рождения Феи Телосложения", JumpPage, 5  )
	Text( 3, "Условия для рождения феи Точности", JumpPage, 6  )
	Text( 3, "Условия для рождения Феи Духа", JumpPage, 7  )
	Text( 3, "Условия для рождения Феи Ловкости", JumpPage, 8  )
	Text( 3, "Условия рождения Феи Удачи", JumpPage, 9 )
	Text( 3, "Условия для рождения Феи Зла", JumpPage, 10 )
	Text( 3, "Условия для рождения Мордо Младшего", JumpPage, 11 )	
	Talk(  4, "Ланга: чтобы сотворить Фею Силы, потребуется две феи не ниже 26 ур., 1 Адский фрукт силыи немного золота")
	Talk(  5, "Ланга: Чтобы вырастить Фею Телосложения понадобятся 2 феи не ниже 26 ур., 1 Адский фрукт отваги и немного золота")
	Talk(  6, "Ланга: Вот что нужно, чтобы вырастить фею Точности: 2 феи не ниже 26 ур. и 1 Адский фрукт энергии и немного золота")
	Talk(  7, "Ланга: чтобы получить Фею Духа, нужны две обычных феи 26 ур. Или выше и немного золота")
	Talk(  8, "Ланга: Чтобы создать Фею Ловкости, понадобится две обычных ручных феи не ниже 26 ур., 1 'Адский фрукт Ловкости' и немного золота")
	Talk(  9, "Ланга: Чтобы получить Фею удачи, необходимы: две обычные феи не слабее 26 ур., 1 Адский фрукт кислоты, и немного золота")
	Talk(  10, "Ланга: чтобы обрести Фею зла требуется: две обычных феи минимум 26 уровня, 1 адский фрукт тайны и немного золота")
	Talk(  11, "Ланга: Требования для получения Мордо Младшего: сочетание двух фей Мордо произведет на свет Мордо Младшего с вероятностью успеха 100%, вне зависимости от используемого Адского Фрукта. Вероятность рождения Мордо Младшего от сочетания феи Мордо с другими феями зависит от их уровня.")
	Talk(  12, "Ланга: Чтобы получить Супер фрукты фей тебе нужно принести мне Огромный фрукт и Брошку Фей, за услугу я у тебя возьму 30.000 золотых ")

InitTrigger()
TriggerCondition( 1, HasItem, 0276, 1 )
TriggerCondition( 1, HasItem, 1762, 1 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 0276, 1 )
TriggerAction( 1, TakeItem, 1762, 1 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 7008, 1, 4 )
TriggerFailure(  1, JumpPage, 1 )
Text( 12, " Улучшить Фрукт дракона ",MultiTrigger, GetMultiTrigger(), 1)
	
InitTrigger()
TriggerCondition( 1, HasItem, 0277, 1 )
TriggerCondition( 1, HasItem, 1762, 1 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 0277, 1 )
TriggerAction( 1, TakeItem, 1762, 1 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 7009, 1, 4 )
TriggerFailure(  1, JumpPage, 1 )
Text( 12, " Улучшить Ледяную сливу ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 0278, 1 )
TriggerCondition( 1, HasItem, 1762, 1 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 0278, 1 )
TriggerAction( 1, TakeItem, 1762, 1 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 7010, 1, 4 )
TriggerFailure(  1, JumpPage, 1 )
Text( 12, " Улучшить Фишлос ",MultiTrigger, GetMultiTrigger(), 1)
	
InitTrigger()
TriggerCondition( 1, HasItem, 0279, 1 )
TriggerCondition( 1, HasItem, 1762, 1 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 0279, 1 )
TriggerAction( 1, TakeItem, 1762, 1 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 7011, 1, 4 )
TriggerFailure(  1, JumpPage, 1 )
Text( 12, " Улучшить Серебрянное манго ",MultiTrigger, GetMultiTrigger(), 1)

InitTrigger()
TriggerCondition( 1, HasItem, 0280, 1 )
TriggerCondition( 1, HasItem, 1762, 1 )
TriggerCondition( 1, HasMoney, 30000 )
TriggerAction( 1, TakeItem, 31028035, 1 )
TriggerAction( 1, TakeItem, 1762, 1 )
TriggerAction( 1, TakeMoney, 30000 )
TriggerAction( 1, GiveItem, 7012, 1, 4 )
TriggerFailure(  1, JumpPage, 1 )
Text( 12, " Улучшить Шайтанский бисквит ",MultiTrigger, GetMultiTrigger(), 1)
	
	
	
	
	InitExchangeX()
	ExchangeDataX(	1762	,	1	,	262	,	1	)
	ExchangeDataX(	8143	,	1	,	8272	,	1	)
	ExchangeDataX(	855	,	99	,	8141	,	5	)
-----------eleven
	AddNpcMission	(5019 )
	AddNpcMission	(5032 )

	--------------------1.7
	AddNpcMission	(5080	)
	AddNpcMission	(5081	)
	AddNpcMission	(5082	)
	AddNpcMission	(5083	)
	AddNpcMission	(5117 )
	AddNpcMission	(5142 )
	AddNpcMission	(5149 )
end 

------------------------------С°ХТТЕК§µД°®Зй
function el_talk01()
	Talk( 1, "Little Fish: Be back fast! I can't handle it aloneЎ­..")	
	AddNpcMission	(907 )
	AddNpcMission	(911 )
	AddNpcMission	(912 )
	AddNpcMission	(917 )
end
function el_talk02()
	Talk( 1, "Butterfly: I am a close friend of Flower...")
	AddNpcMission	(908 )
	AddNpcMission	(909 )
	AddNpcMission	(910 )
end
-----------------------------------------------------------
---°ЧТш---ЙсГШЖЕЖЕ
-----------------------------------------------------------
-------------------------------------°®ЗйЦШЙъ
function el_talk03()
	Talk( 1, "Таинственная бабушка: Не понимаю, чего во мне такого таинственного нашли?")	
	AddNpcMission	(918 )
--------eleven
	AddNpcMission	(5018 )
	AddNpcMission	(5020 )
	AddNpcMission	(5021)
	AddNpcMission	(5022)
end
-----------------------------------------------------------
---ґє·зХт---ЙсГШµДВЇЧУ
-----------------------------------------------------------
function star_talk02 ()
	Talk( 1, "Очаг бессмертия: Что уставился? Впервые перед таким прекрасным очагом?" )
	Text( 1, "Разъяснение функций", JumpPage, 2 )
	Text( 1, "Улучшение снаряжения", OpenItemTiChun )
	--Text( 1, "Перезарядка коралла", OpenItemEnergy )
	Text( 1, "Извлечение самоцвета", OpenGetStone )
	Text( 1, "Ремонт инструментов", OpenItemFix )
	Talk( 2, "Очаг Бессмертия: Больше я ничего не скажу. Потрудись сам!" )
	Text( 2, "Руководство по улуРуководство по улучшению снаряжения", JumpPage, 3)
	Text( 2, "Руководство по перезарядке кораллов", JumpPage, 4 )
	Text( 2, "Руководство по извлечению самоцветов", JumpPage, 5 )
	Text( 2, "Руководство по ремонтному инструменту", JumpPage, 6)
	Talk( 3, "Очаг бессмертия: Очаг позволяет улучшать наборы Кайлин и Черного Дракона, а также Босс-снаряжение 70 ур. до Снаряжения Смерти 75 ур. Внешний вид снаряжения изменится, но самоцветы из него, при улучшении, не исчезнут." )
	Talk( 4, "Очаг бессмертия: Используй батарейку для пополнения энергии кораллов. Перезаряжаемая батарейка способна восстановить от 50 до 1000 очков энергии, а Перезаряжаемая супербатарея - до 1500 очков энергии. После использования батарейка исчезает!" )
	Talk( 5, "Очаг Бессмертия: Самоцветы извлекаются соответственно их положению в экипировке, сверху вниз. Для каждого извлечения требуются 1 Клещи кузнеца.")
	Text( 5, "Пример извлечения самоцвета", JumpPage, 7 )
	Talk( 6, "Очаг Бессмертия: Здесь можно починить повреждённые Кристальный котёл, Кристалл чёрной дыры, Кристалл антиматерии и Кристал частиц. Необходим 1 ремонтный инструмент. Будет как новенький!" )
	Talk( 7, "Очаг Бессмертия: Возьмём, например, Меч Дракона с 3 слотами: в первом слоте - Самоцвет Ярости 3 ур., во втором слоте Люстриновый самоцвет 2 ур., а в третьем - Глаз Чёрного Дракона 1 ур. При извлечении будет извлечен только Самоцвет Ярости 3 ур." )
end 
-----------------------------------------------------------
---°ЧТш---ЕцЕцАЦ
-----------------------------------------------------------
function star_talk03 ()
	Talk( 1, "Lucky Chance: Hi, I advised you to leave some empty slots in your inventory before playing. You might win something great!" )
	Text( 1, "Playing Lucky Chance", JumpPage, 2 )
	Text( 1, "Try your luck, play a round!", OpenTiger )
	Talk( 2, "Lucky Chance: Each try requires 5 Fairy Coins. You can try multiple times. The more you try, the higher your chance of winning!" )
end 
--------------------------------------СЄРИµДёЯёъР¬
function el_talk04 ()
	
	Talk( 1, "Skinny Worker: Sigh...Sigh...Oh god, who can take revenge for meЎ­" )-------------(2249,2705)
	AddNpcMission	(919 )
end

-----------------------------------------------------------
---УЎµЪ°ІДЙЎ¤ЗнЛ№
-----------------------------------------------------------
function llleo_talk01()
	Talk( 1, "Индиана Джонс: Через Каньон полумесяца до Усыпальницы, бессмертие во имя Богини... Я открыл секрет Мира демонов. Желаешь его знать?" )
	Text( 1, "Другой секрет", JumpPage, 2)

	Talk( 2, "Индиана Джонс: Говорят, Мир демонов состоит из двух измерений, значит, одновременно в каждом из них ты будешь раздвоенным. Другое измерение я нашел случайно - как и новый способ снимать проклятие с уникального снаряжения из Мира демонов. Исследователи о нем еще не знают. Если ты хочешь воспользоваться моим способом, вопрос можно обсудить" )
	Text( 2, "Снять проклятие", JumpPage, 3)
	
	Talk( 3, "Индиана Джонс: Чтобы снять печать с уникального снаряжения, понадобится огромный запас энергии. Только никчемные исследователи вытягивают энергию из множества рун. А мне понадобится всего 1 особая руна. Принеси мне 1 Изменчивую руну, и я помогу тебе снять печать со снаряжения." )
	Text( 3, "Посох потаенного", JumpPage, 6)
	Text( 3, "Накидка сфинкса", JumpPage, 7)
	Text( 3, "Крис сфинкса", JumpPage, 8)
	Text( 3, "Правосудие потаенного", JumpPage, 9)
	Text( 3, "Аркебуз потаенного", JumpPage, 10)
	Text( 3, "Накидка потаенного", JumpPage, 11)
	Text( 3, "Мантия потаенного", JumpPage, 12)
	Text( 3, "Следующая страница", JumpPage, 4)

	Talk( 4, "Индиана Джонс: Чтобы снять печать с уникального снаряжения, понадобится огромный запас энергии. Только никчемные исследователи вытягивают энергию из множества рун. А мне понадобится всего 1 особая руна. Принеси мне 1 Изменчивую руну, и я помогу тебе снять печать со снаряжения." )
	Text( 4, "Клинок потаенного", JumpPage, 13)
	Text( 4, "Тату потаенного", JumpPage, 14)
	Text( 4, "Доспех потаенного", JumpPage, 15)
	Text( 4, "Мантия сфинкса", JumpPage, 16)
	Text( 4, "Посох сфинкса", JumpPage, 17)
	Text( 4, "Щит Потаенного", JumpPage, 18)
	Text( 4, "Лук Потаенного", JumpPage, 19)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1909, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1909, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 788, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 6, "Индиана Джонс: Чтобы снять проклятие с Посоха потаенного, мне понадобится: Посох потаенного с печатью льда, 1 Изменчивая руна и 800 000 золотых." )
	Text( 6, "Снять проклятие с Посоха потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1927, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1927, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 806, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 7, "Индиана Джонс: Чтобы снять проклятие с Накидки сфинкса, мне понадобится: Накидка сфинкса с печатью льда, 1 Изменчивая руна и 800 000 золотых." )
	Text( 7, "Снять проклятие с Накидки сфинкса", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1923, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1923, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 802, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 8, "Индиана Джонс: Чтобы снять проклятие с Криса сфинкса, мне понадобится: Крис сфинкса с печатью льда, 1 Изменчивая руна и 800 000 золотых." )
	Text( 8, "Снять проклятие с Криса сфинкса", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1894, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1894, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 773, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 9, "Индиана Джонс: Чтобы снять проклятие с Правосудия потаенного, мне понадобится: Правосудие потаенного с печатью льда, 1 Изменчивая руна и 800 000 золотых." )
	Text( 9, "Снять проклятие с Правосудия потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1905, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1905, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 784, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 10, "Индиана Джонс: Чтобы снять проклятие с Аркебуза потаенного, мне понадобится: Аркебуз потаенного с печатью льда, 1 Изменчивая руна и 800 000 золотых." )
	Text( 10, "Снять проклятие с Аркебуза потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1901, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1901, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 780, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 11, "Индиана Джонс: Чтобы снять проклятие с Накидки потаенного, мне понадобится: Накидка потаенного с печатью льда, 1 Изменчивая руна и 800 000 золотых." )
	Text( 11, "Снять проклятие с Накидки потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1913, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1913, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 792, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 12, "Индиана Джонс: Чтобы снять проклятие с Мантии потаенного, мне понадобится: Мантия потаенного с печатью льда, 1 Изменчивая руна и 800 000 золотых." )
	Text( 12, "Снять проклятие с Мантии потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1897, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1897, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 776, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 13, "Индиана Джонс: Чтобы снять проклятие с Клинка потаенного, мне понадобится: Клинок потаенного с печатью льда, 1 Изменчивая руна и 800 000 золотых." )
	Text( 13, "Снять проклятие с Клинка потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1887, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1887, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 766, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 14, "Индиана Джонс: Чтобы снять проклятие с Тату потаенного, мне понадобится: Тату потаенного с печатью льда, 1 Изменчивая руна и 800 000 золотых." )
	Text( 14, "Снять проклятие с Тату потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1890, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1890, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 769, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 15, "Индиана Джонс: Чтобы снять проклятие с Доспеха потаенного, мне понадобится: Доспех потаенного с печатью льда, 1 Изменчивая руна и 800 000 золотых." )
	Text( 15, "Снять проклятие с Доспеха потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1919, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1919, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 798, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 16, "Индиана Джонс: Чтобы снять проклятие с Мантии сфинкса, мне понадобится: Мантия сфинкса с печатью льда, 1 Изменчивая руна и 800 000 золотых." )
	Text( 16, "Снять проклятие с Мантии сфинкса", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1916, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 1916, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 795, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 17, "Индиана Джонс: Чтобы снять проклятие с Посоха сфинкса, мне понадобится: Посох сфинкса с печатью льда, 1 Изменчивая руна и 800 000 золотых." )
	Text( 17, "Снять проклятие с Посоха сфинкса", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2341, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 2341, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 2339, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 18, "Индиана Джонс: Чтобы снять проклятие с Щита Потаенного, принеси мне: Щит Потаенного (печать Льда), 1 Изменчивая руна и 800 000 золотых." )
	Text( 18, "Снять проклятие с Щита Потаенного", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2342, 1 )
	TriggerCondition( 1, HasItem, 1028, 1 )
	TriggerCondition( 1, HasMoney, 800000 )
	TriggerAction( 1, TakeMoney, 800000 )
	TriggerAction( 1, TakeItem, 2342, 1 )
	TriggerAction( 1, TakeItem, 1028, 1  )
	TriggerAction( 1, GiveItem, 2340, 1, 4 )
	TriggerFailure( 1, JumpPage, 30 )
	Talk( 19, "Индиана Джонс: Чтобы снять проклятие с Лука Потаенного, принеси мне: Лук Потаенного (печать Льда), 1 Изменчивая руна и 800 000 золотых." )
	Text( 19, "Снять проклятие с Лука Потаенного", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 30, "Индиана Джонс: Прости, но у тебя нет необходимых предметов. Я не могу снять проклятие." )

end

------
-- Администратор хаоса
------

function kk_talk01 ()
	
	Talk( 1, "Управляющий Хаоса: Только сильнейший выживает в бою и только сильнейший заслуживает уважения." )
	Text( 1, "Обмен и выкуп предметов", JumpPage ,7)
	Text( 1, "Проверка ранга Хаоса", Garner2GetWiner)
	Text( 1, "Войти в рейтинговую таблицу", Garner2RequestReorder)
--	Text( 1, "You received Chaos Manual", Change_FightingBook)
--	Text( 1, "About Chaos manual", JumpPage ,2)
	Text( 1, "О рангах Хаоса", JumpPage ,3)
	Text( 1, "О Серебряном Хаосе", JumpPage ,13)
	
	Talk( 2, "Управляющий Хаоса: Если у тебя нет знака чести, то в эту книгу будут записываться твои очки чести. Если у тебя есть Знак Чести, то эта книга заменит его и запишет в него все твои очки чести. Все ваши очки не исчезнут и будут записаны в эту книгу." )
	Text(2,"Подтвердить",Change_FightingBook)

	Talk( 3, "Управляющий Хаоса: Каждый искатель приключений, выдержавший бой в Серебряном Хаосе, получит соответствующий ранг. Однако в список войдут лишь пятеро лучших, набравших больше всего очков Хаоса." )
	Text(3,"Об Очках хаоса",JumpPage ,4)
	Text(3,"О снаряжении Хаоса",JumpPage ,6)


	Talk( 4, "Управляющий Хаосом: Побеждая игроков, ближайших к твоему уровню, в Серебряном Хаосе, ты можешь получить очки хаоса. Это будет отражено на твоей Медали отваги." )
	Talk( 6, "Управляющий Хаоса: Этот набор снаряжения, состоящий из Каменного торса Хаоса, Каменной руки Хаоса и Каменной ноги Хаоса, дает высокий бонус к характеристикам и обладает другими скрытыми возможностями. Эти возможность активируются в соответствии с твоим местом в списке." )
	
	Talk( 7, "Управляющий Хаосом: Захочешь обменяться на что-нибудь ценное - приходи ко мне." )
	Text(7,"Получить стандартную расписку Хаоса",JumpPage ,8)
	Text(7,"Получить Сундук Хаоса",JumpPage ,9)
	Text(7,"Получить Эмблему Короля ринга",JumpPage ,10)
	Text(7,"Выкуп справочников",SendExchangeXData)
	Text(7,"Получить Знак чести",JumpPage ,12)

	-- Обмен справочников
	
	InitExchangeX()

	ExchangeDataX(	2608	,	100	,	2682	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2683	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2684	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2692	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2693	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2694	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2702	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2703	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2704	,	1	,	1)
	ExchangeDataX(	2608	,	100	,	2712	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2713	,	1	,	1)
	ExchangeDataX(	2609	,	100	,	2714	,	1	,	1)
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 1031, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1031, 1 )
	TriggerAction( 1, GiveItem, 2609, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 8, "Управляющий Хаосом: 1 Святой эмблемы ринга будет достаточно" )
	Text( 8, "Подтвердить обмен", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1032, 1 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1032, 1 )
	TriggerAction( 1, GiveItem, 1134, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 9, "Управляющий Хаоса: 1 Эмблемы Короля ринга будет достаточно" )
	Text( 9, "Подтвердить обмен", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 1031, 5 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 1031, 5 )
	TriggerAction( 1, GiveItem, 1032, 1, 4 )
	TriggerFailure( 1, JumpPage, 11 )
	Talk( 10, "Управляющий Хаосом: мне нужно 5 Святых эмблем ринга" )
	Text( 10, "Подтвердить обмен", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "Chaos Administrator: Come and find me after assembling the necessary items. Your inventory must have 1 free slot and not binded." )
	
	InitTrade()
	Other(	1847	)
	Other(	1848	)
	Other(	1849	)
	Other(	3143	)
	Talk( 12, "Управляющий Хаосом: К символам чести относятся Сердце искры, Сердце славы и Сердце великолепия. Для их получения необходимо 100, 500 и 1000 очков чести, соответственно." )
	Text( 12, "Получить Сердце искры Хаоса", Change_shanyao)
	Text( 12, "Получить Отважное сердце Хаоса", Change_rongyao)
	Text( 12, "Получить Сердце великолепия Хаоса", Change_huihuang)

	Talk( 13, "Управляющий Хаосом: Серебряный Хаос позволяет игрокам сражаться между собой! Для этого игроки должны быть не ниже 26 уровня и обладать 20 очками чести. Войдя в эту зону, игроки могут свободно убивать друг друга. Если разница в уровнях сражавшихся игроков не превышает 15, побежденный игрок потеряет 1 очко чести, а победивший получит 1 очко хаоса. Если побежденный игрок на 15 уровней выше проигравшего, он лишится 2 очков чести, а победитель заработает 2 очка хаоса. По окончании битвы победитель получит в награду золото. Если в битве выживут 5 или менее человек, каждый из них получит Святую эмблему ринга. Если выживет только один боец, он получит дополнительное золото и Эмблему Короля ринга. Внимание: перед участием в битве необходимо оставить одну свободную ячейку в рюкзаке." )
	
end 

function b_talk25 ()
	Popup( LifeSkillBegin , 3 )	

end 

function b_talk26 ()
	Popup( LifeSkillBegin , 2 )	

end 

function b_talk27 ()
	Popup( LifeSkillBegin , 0 )
end 

function b_talk28 ()
	Popup( LifeSkillBegin , 1 )	

end 

function leo_talkaa()
	Talk( 1, "Будет принимать все материалы! Гарантия на годы!" )
	Text( 1, "Покажи что у тебя есть.", SendExchangeXData)


	InitExchangeX()

	ExchangeDataX(	3989	,	99	,	3999	,	20	,	1)
	ExchangeDataX(	3990	,	99	,	4000	,	20	,	1)
	ExchangeDataX(	3991	,	99	,	4001	,	20	,	1)
	ExchangeDataX(	3992	,	99	,	4002	,	20	,	1)
	ExchangeDataX(	3993	,	99	,	4003	,	20	,	1)
	ExchangeDataX(	3994	,	99	,	4004	,	20	,	1)
	ExchangeDataX(	3995	,	99	,	4005	,	20	,	1)
	ExchangeDataX(	3996	,	99	,	4006	,	20	,	1)
	ExchangeDataX(	3997	,	99	,	4007	,	20	,	1)
	ExchangeDataX(	3998	,	99	,	4008	,	20	,	1)
	--AddNpcMission(3026)
end

function leo_talkbb()
	Talk( 1, "Не приходи, если у тебя нет денег!" )
	Text( 1, "У меня есть деньги", SendExchangeXData)

	
	--¶Т»»ЛщРиОпЖ· ID,КэБї,¶Т»»ЛщµГОпЖ·КэБї,ёіУиµДЦµ
	InitExchangeX()

	ExchangeDataX(	4029	,	99	,	4039	,	20	,	1)
	ExchangeDataX(	4030	,	99	,	4040	,	20	,	1)
	ExchangeDataX(	4031	,	99	,	4041	,	20	,	1)
	ExchangeDataX(	4032	,	99	,	4042	,	20	,	1)
	ExchangeDataX(	4033	,	99	,	4043	,	20	,	1)
	ExchangeDataX(	4034	,	99	,	4044	,	20	,	1)
	ExchangeDataX(	4035	,	99	,	4045	,	20	,	1)
	ExchangeDataX(	4036	,	99	,	4046	,	20	,	1)
	ExchangeDataX(	4037	,	99	,	4047	,	20	,	1)
	ExchangeDataX(	4038	,	99	,	4048	,	20	,	1)
	ExchangeDataX(	1670	,	99	,	1671	,	20	,	1)
	ExchangeDataX(	1668	,	99	,	3368	,	20	,	1)
	ExchangeDataX(	1667	,	99	,	3360	,	20	,	1)
	ExchangeDataX(	1642	,	99	,	1643	,	20	,	1)
	ExchangeDataX(	4825	,	99	,	1638	,	20	,	1)
	ExchangeDataX(	1633	,	99	,	1641	,	20	,	1)
	ExchangeDataX(	1782	,	99	,	1769	,	20	,	1)
	ExchangeDataX(	2815	,	99	,	1775	,	20	,	1)
	ExchangeDataX(	1674	,	99	,	1767	,	20	,	1)
	ExchangeDataX(	4832	,	99	,	2901	,	20	,	1)

end


------
-- Торговец феями. Убран диалог обмена 99 монет фей на расписку на самоцвет
------
function leo_talkcc()
	Talk( 1, "Торговец: Никогда ничего не покупай у моего соседа - он жулик. Лучше взгляни на мои товары." )
	Text( 1, "Позвольте мне взглянуть на ваш товар", SendExchangeXData)
	Text( 1, "Получить ремонтный инструмент", JumpPage, 2)

	Talk( 2, "Торговец: Ремонтный инструмент? Хмм, думаю я тебе смогу помочь. Какой тебе нужен? Только учти, мне взамен потребуются расписки хаоса." )

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 2608, 5 )
	TriggerAction( 1, TakeItem, 2608, 5 )
	TriggerAction( 1, GiveItem, 7301, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Ремонтный инструемнт 2 ур.(5 нач.)", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 2608, 20 )
	TriggerAction( 1, TakeItem, 2608, 20 )
	TriggerAction( 1, GiveItem, 7302, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Ремонтный инструемнт 3 ур.(20 нач.)", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 2609, 5 )
	TriggerAction( 1, TakeItem, 2609, 5 )
	TriggerAction( 1, GiveItem, 7303, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Ремонтный инструемнт 4 ур.(5 станд.)", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 2609, 20 )
	TriggerAction( 1, TakeItem, 2609, 20 )
	TriggerAction( 1, GiveItem, 7304, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Ремонтный инструемнт 5 ур.(20 станд.)", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 2610, 5 )
	TriggerAction( 1, TakeItem, 2610, 5 )
	TriggerAction( 1, GiveItem, 7305, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Ремонтный инструемнт 6 ур.(5 выс.)", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasItem, 2610, 20 )
	TriggerAction( 1, TakeItem, 2610, 20 )
	TriggerAction( 1, GiveItem, 7306, 1, 4 )
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 2, "Ремонтный инструемнт 7 ур.(20 выс.)", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 3, "Торговец: Вот держи, надеюсь ты знаешь как его применять?" )
	Talk( 4, "Торговец: Кажется у тебя не хватает материала для обмена. Так же возможно у тебя заблокирован интвентарь, или недостаточно в нем места." )

	InitExchangeX()
	ExchangeDataX(	855	,	60	,	2617	,	1	,	1)
	ExchangeDataX(	2588	,	3	,	2619	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2622	,	1	,	1)
	ExchangeDataX(	2589	,	5	,	2624	,	1	,	1)
	ExchangeDataX(	2588	,	3	,	2640	,	1	,	1)
	ExchangeDataX(	855	,	60	,	2641	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2642	,	1	,	1)
	ExchangeDataX(	2588	,	20	,	2643	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2644	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2649	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1055	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1056	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1058	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1059	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1061	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1062	,	1	,	1)
	ExchangeDataX(	855	,	100	,	1064	,	1	,	1)
	ExchangeDataX(	2588	,	100	,	1065	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2680	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2681	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2682	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2683	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2684	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2685	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2690	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2691	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2692	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2693	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2694	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2695	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2700	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2701	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2702	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2703	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2704	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2705	,	1	,	1)
	ExchangeDataX(	855	,	10	,	2710	,	1	,	1)
	ExchangeDataX(	855	,	50	,	2711	,	1	,	1)
	ExchangeDataX(	855	,	300	,	2712	,	1	,	1)
	ExchangeDataX(	2588	,	10	,	2713	,	1	,	1)
	ExchangeDataX(	2588	,	50	,	2714	,	1	,	1)
	ExchangeDataX(	2588	,	300	,	2715	,	1	,	1)

end

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<єПіЙЅйЙЬФ±
-----ЅйЙЬФ±-А¶
function max_talka1()
	Talk( 1, "Помощник - Синий: Привет, я помощник Синий. Я помогу тебе разобраться с устройством для анализа субстанций. Как дела?" )
	Text( 1, "Для чего служит Анализатор субстанций?", JumpPage ,2)
	Text( 1, "Я могу пользоваться Анализатором субстанций?", JumpPage ,7)
	Text( 1, "Как работает Анализатор субстанций?", JumpPage ,3)
	Text( 1, "Что может анализировать Анализатор субстанций?", JumpPage ,4)
	Text( 1, "Мне нет никакого дела. Я просто мимо прохожу!", JumpPage ,6)

	Talk( 2, "Помощник - Синий: Анализатор субстанций - таинственный инструмент природы. Он позволяет анализировать и восстанавливать предмет до первоначального состояния." )
	Text( 2, "У меня еще остались вопросы", JumpPage ,1)
	Text( 2, "Ясно. Больше вопросов нет, спасибо!", CloseTalk)

	Talk( 3, "Помощник - Синий: Сначала нужно приготовить для анализа фею, инструменты и катализатор. Подойди к инструменту и положи предметы в соответствующие им ячейки. Во время анализа в левой части экрана ты увидишь пятизначное число. Если число в правой части экрана меньше этого числа, анализ прошел успешно." )
	Text( 3, "А если я не сумею, это будет опасно для жизни?", JumpPage ,5)
	Text( 3, "Ты только что упомянул про инструмент?", JumpPage ,9)
	Text( 3, "I have other questions", JumpPage ,1)
	Text( 3, "Ясно. Больше вопросов нет, спасибо!", CloseTalk)

	Talk( 4, "Помощник - Синий: Устройство для анализа субстанций позволяет разложить оружие или предмет на исходные компоненты - при наличии необходимого катализатора. Если использовать другой катализатор, эффект может быть неожиданным!" )
	Text( 4, "Где найти Катализатор?", JumpPage ,8)
	Text( 4, "У меня еще остались вопросы", JumpPage ,1)
	Text( 4, "Ясно. Больше вопросов нет, спасибо!", CloseTalk)

	Talk( 5, "Помощник - Синий: Ха-ха! Не бойся, устройство для анализа субстанций совершенно безопасно и твоей фее не повредит. Однако, если процесс анализа сорвется, предметы и катализаторы исчезнут.")
	Text( 5, "I have other questions", JumpPage ,1)
	Text( 5, "Ясно. Больше вопросов нет, спасибо!", CloseTalk)

	Talk( 6, "Помощник - Синий: Надеюсь, тебе удастся спокойно пройти!")
	Text( 6, "Проходи дальше!", CloseTalk)

	Talk( 7, "Помощник - Синий: Конечно, можно. Но сначала купи у лавочника справочник по Анализу. Прочитаешь, тогда и сможешь приняться за дело.")
	Text( 7, "I have other questions", JumpPage ,1)
	Text( 7, "Ясно. Больше вопросов нет, спасибо!", CloseTalk)

	Talk( 8, "Помощник - Синий: Катализатор можно приобрести за дублоны" )
	Text( 8, "I have other questions", JumpPage ,1)
	Text( 8, "Ясно. Больше вопросов нет, спасибо!", CloseTalk)

	Talk( 9, "Помощник - Синий: Инструмент увеличивает успешность процесса. Помни, что уровень навыка питомца должен быть выше, чем уровень изготавливаемого инструмента." )
	Text( 9, "I have other questions", JumpPage ,1)
	Text( 9, "Ясно. Больше вопросов нет, спасибо!", CloseTalk)

end

-----уф»рЖЕЖЕ
function max_talka2()
	Talk( 1, "Бабушка Спичка: Здравствуй, юноша. Меня называют Бабушкой Спичкой. В молодости я была знаменитым поваром! Ха-ха! Чем могу помочь?Бабушка Спичка: Здравствуй, юноша. Меня называют Бабушкой Спичкой. В молодости я была знаменитым поваром! Ха-ха! Чем могу помочь?" )
	Text( 1, "Где я могу готовить пищу", JumpPage ,2)
	Text( 1, "Могу я научиться готовить?", JumpPage ,3)
	Text( 1, "Вы можете научить меня готовить?", JumpPage ,4)
	Text( 1, "Неужели эти вещи настолько особенные?", JumpPage ,5)
	Text( 1, "Я просто мимо прохожу...", JumpPage ,6)

	Talk( 2, "Бабушка Спичка: Нужно ценить редкий ресурс нашего мира - огонь. С его помощью можно готовить вкусную еду." )
	Text( 2, "Задать еще несколько вопросов", JumpPage ,1)
	Text( 2, "Спасибо, Бабушка. Теперь я понимаю.", CloseTalk)

	Talk( 3, "Бабушка Спичка: Ха-ха! Ну, конечно. Но сначала тебе нужно сходить к Бакалейшику и купить Справочник по Кулинарии, который я написала. Когда поймещь основные вещи, сможешь начать готовить." )
	Text( 3, "Хотелось бы задать еще несколько вопросов", JumpPage ,1)
	Text( 3, "Спасибо, Бабушка. Теперь я понимаю.", CloseTalk)

	Talk( 4, " Matchstick Granny: Cooking is a great skill. You should be thankful to our God for being able to use such powers. Firstly, you need to have a fairy, cooking recipe, cooking tools and lastly, ingredients for cooking. Next you need to place the things in their respective places. Remember not to place them wrongly. Once everything is ready, you can start cooking. The fire must be controlled nicely, or the things might get burnt. Wastage of food is a sin!" )
	Text( 4, "Когда огонь будет таким, как надо?", JumpPage ,7)
	Text( 4, "Хотелось бы задать еще несколько вопросов", JumpPage ,1)
	Text( 4, "Спасибо, Бабушка. Теперь я понимаю.", CloseTalk)

	Talk( 5, "Бабушка Спичка: Если довести воду до нужной температуры, приготовленная еда будет бесподобной. Пища не просто наполнит твой желудок, но и окажет особое воздействие. Говорят, Рагу из трески в древности придавало воинам чудовищную силу!" )
	Text( 5, "Хотелось бы задать еще несколько вопросов", JumpPage ,1)
	Text( 5, "Спасибо, Бабушка. Теперь я понимаю.", CloseTalk)

	Talk( 6, "Бабушка Спичка: Надеюсь, у тебя все получится! Да благословит тебя Господь!")
	Text( 6, "Я просто мимо прохожу...", CloseTalk)

	Talk( 7, "Бабушка Спичка: Значит, всего получается 75%. Ты совсем ничего не знаешь!")
	Text( 7, "Хотелось бы задать еще несколько вопросов", JumpPage ,1)
	Text( 7, "Спасибо, Бабушка. Теперь я понимаю.", CloseTalk)

end

-----ИЫВЇјјК¦Ў¤Г·їЛ
function max_talka3()
	Talk( 1, "Мел: Привет! Ты разыскивал меня?" )
	Text( 1, "Расскажи, что может делать печь", JumpPage ,2)
	Text( 1, "Как использовать печь?", JumpPage ,3)
	Text( 1, "Открой тайну печи", JumpPage ,4)
	Text( 1, "Я просто проходил мимо", JumpPage ,5)


	Talk( 2, "Мел: Печь используется для изготовления экипировки." )
	Text( 2, "Я хочу задать другие вопросы", JumpPage ,1)
	Text( 2, "Спасибо! Я все понял", CloseTalk)

	Talk( 3, "Мел: Чтобы использовать печь, тебе необходимо выучить навык ремесла. Книгу навыка ты можешь приобрести у бакалейщика." )
	Text( 3, "Я хочу задать другие вопросы", JumpPage ,1)
	Text( 3, "Спасибо! Я все понял", CloseTalk)

	Talk( 4, "Мел: У тебя должна быть фея с соответствующим навыком. Кроме того, тебе потребуется инструмент, чертеж и все необходимые компоненты. Не забудь расствить компоненты в правильном порядке." )
	Text( 4, "Как делать лучшие вещи?", JumpPage ,7)
	Text( 4, "Спасибо! Я все понял", CloseTalk)

	Talk( 7, "Мел: В процессе производства вы можете получить предметы с магическими свойствами. Однако это потребует большого количество материалов и более высокий навык питомца." )
	Text( 7, "Я хочу задать другие вопросы", JumpPage ,1)
	Text( 7, "Спасибо! Я все понял", CloseTalk)

	Talk( 5, "Мел: Ты волк? Так зачем тут гуляешь?")
	Text( 5, "Я просто проходил мимо", CloseTalk)

end

-----СРѕїЙъ
function max_talka4()
	Talk( 1, "Graduate: Hi, is there anything I can do for you?" )
	Text( 1, "What is it above you", JumpPage ,2)
	Text( 1, "Can I use Substance Generator?", JumpPage ,3)
	Text( 1, "How do Substance Generator work?", JumpPage ,4)
	Text( 1, "What item can it generate?", JumpPage ,5)
	Text( 1, "I'm just passing through.", JumpPage ,6)


	Talk( 2, "Graduate: This is our latest invention: Substance Generator. We can now refine metals with it!" )
	Text( 2, "I would like to enquire about other questions", JumpPage ,1)
	Text( 2, "So this is it. I understand now.", CloseTalk)

	Talk( 3, "Graduate: First, go to a Groceror to buy the Novice Manufacturing Guide. After you have read through the basics, you will be able to start trying on your own." )
	Text( 3, "I would like to enquire about other questions", JumpPage ,1)
	Text( 3, "So this is it. I understand now.", CloseTalk)

	Talk( 4, "Graduate: To ensure that the power of Substance Generator comes under control, you will need to have a pet fairy. Place the Manufacturing Blueprint and Material into the Substance Generator accordingly and click the button to process." )
	Text( 4, "Are there different results?", JumpPage ,7)
	Text( 4, "I would like to enquire about other questions", JumpPage ,1)
	Text( 4, "So this is it. I understand now.", CloseTalk)

	Talk( 5, "Graduate: As it is a copy of the original smelting technique, it is not as wondrous. But if you follow strictly to the formulas, you will not be disappointed." )
	Text( 5, "I would like to enquire about other questions", JumpPage ,1)
	Text( 5, "So this is it. I understand now.", CloseTalk)

	Talk( 6, "Graduate: Looks like you areЎ­")
	Text( 6, "I am really only passing byЎ­", CloseTalk)

	Talk( 7, "Graduate: As we are not the Almighty, what we create are not perfect. To distinguish the quality of the product we have seperate it accordingly in ascending order:                  Thank you     Abysmal                            Terrible                           Bad                                  Poor                            Mediocre                          Fair                              Good                                Great                              Superb                            Perfect .")
	Text( 7, "I would like to enquire about other questions", JumpPage ,1)
	Text( 7, "So this is it. I understand now.", CloseTalk)
end

---------------------КҐµ®ґеµДКҐµ®Кч
function el_talk05 ()
	
	Talk( 1, "Christmas Tree: Merry Christmas to you! Each blessing that comes from the heart will hold true" )
	Text( 1, "Select blessing",JumpPage, 2  )
	
	Talk ( 2, "Christmas Tree: Do you want to dedicate your blessing? Every dedication requires a Christmas Card and 1000G." )
	Text( 2, "µЪТ»МхЧЈёЈ",JumpPage, 3  )
	Text( 2, "µЪ¶юМхЧЈёЈ",JumpPage, 4 )
	Text( 2, "µЪИэМхЧЈёЈ",JumpPage, 5 )
	Text( 2, "µЪЛДМхЧЈёЈ",JumpPage, 6 )
	Text( 2, "µЪОеМхЧЈёЈ",JumpPage, 7 )
	Text( 2, "µЪБщМхЧЈёЈ",JumpPage, 8 )
	Text( 2, "µЪЖЯМхЧЈёЈ",JumpPage, 9 )

	
	Talk( 3, "°ЧС©Ж®Ж®,В№БеПцПц,МрГЫµДЖЅ°ІТ№УЦАґµЅ,РЎКЦ°Ъ°Ъ,ОиЧЛВьВь,їмАЦµДКҐµ®ЅЪИХ¶аГАєГ.")
	Text(3,"Подтвердить транслировать это благословениеПодтвердить транслировать это благословение",  GetChaName_0, 1)
	Text( 3, "Return",JumpPage, 2  )

	Talk( 4, "ГїТ»¶дС©»ЁЖ®ПВ,ГїТ»ёцСМ»рИјЖр,ГїТ»ГлК±јдБч¶Ї,ГїТ»·ЭЛјДоґ«ЛН,¶јґъ±нЧЕОТПлТЄЛНДгµДГїТ»ёцЧЈёЈ,КҐµ®їмАЦ!")
	Text(4,"Подтвердить транслировать это благословениеПодтвердить транслировать это благословение",  GetChaName_1, 1)
	Text( 4, "Return",JumpPage, 2  )

	Talk( 5, "ОТУРТ»ёцГААцµДФёНы:ТФЗ°µДКҐµ®ЅЪ,ЧЬКЗИПОЄКҐµ®АПИЛІ»»бЅ«ЧоєГµДАсОпЅµБЩёшОТ,µ«ЅсДкµДКҐµ®ЅЪІ»Н¬,УРДгµДµЅАґ,ИГОТУАФ¶јЗЧЎЅсМм.")
	Text(5,"Подтвердить транслировать это благословениеПодтвердить транслировать это благословение",  GetChaName_2, 1)
	Text( 5, "Return",JumpPage, 2  )

	Talk( 6, "КҐµ®ЅЪµЅБЛ,ПтЦ§іЦОТµДЕуУСєНОТЛщ°®µДЕуУСЛµЙщёРР»,ёРР»ДгЧЯЅшОТµДЙъ»о,ОТ»бѕЎОТЧоґуµДЕ¬Б¦ёшДгОЮПЮµДїмАЦ!")
	Text(6,"Подтвердить транслировать это благословениеПодтвердить транслировать это благословение",  GetChaName_3, 1)
	Text( 6, "Return",JumpPage, 2 )

	Talk( 7, "КҐµ®ЅЪ¶јµЅБЛ,ДЬІ»ДЬФЪПВёцКҐµ®ЅЪЦ®З°±рФЩИГОТµ±ВТ¶·Ц®Нх,№¤»бХЅІ»ТЄґОґО¶јУ®,ЙПМм,ґНУиОТТ»ёцЗїѕўµД¶ФКЦ°Й,°ўГЕЎ­Ў­")
	Text(7,"Подтвердить транслировать это благословениеПодтвердить транслировать это благословение",  GetChaName_26, 1)
	Text( 7, "Return",JumpPage, 2 )

	Talk( 8, "№юАпВ·СЗ,ВиВиЯдСЅ,Цч°ЎЎ­Ў­ґНОТТ»ёцж¤°Й")
	Text(8,"Подтвердить транслировать это благословениеПодтвердить транслировать это благословение",  GetChaName_27, 1)
	Text( 8, "Return",JumpPage, 2 )

	Talk( 9, "КҐµ®ЅЪµЅБЛ,ЧЈёЈЧФјєєГФЛМмМмЅ»Ј¬Йъ»оІЅІЅёЯЈ¬ІКЖ±ЖЪЖЪЦРЈ¬ґтЕЖґОґОУ®Ј¬їЪО¶¶Щ¶ЩєГЈ¬ИфёТ°СОТНьЈ¬РЎРД°¤№ч°ф ")
	Text(9,"Подтвердить транслировать это благословениеПодтвердить транслировать это благословение",  GetChaName_28, 1)
	Text( 9, "Return",JumpPage, 2 )
---------------------------------------------------------------------------------------------------------------	
end



----------------------------------------»фЅрЛ№-------------------------
--------------------------------јЕДЇЦ®Лю6Іг(51300,26900)
--------------------------------------eleven------------------------------------------
function el_talk07 ()

	InitTrigger()
	TriggerCondition( 1, HasMission, 1300 )
	TriggerCondition( 1, LvCheck,  "> ", 74 )
	TriggerCondition( 1, HasCredit,9999 )
	TriggerCondition( 1, NoRecord, 1300 )
	TriggerCondition( 1, NoRecord, 1301 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, CloseTalk  )

	Talk( 1, "Хаскинсон: Я Пиратский Военачальник! Не разговаривай со мной если у тебя меньше 75 уровня и 9999 очков репутации." )
	Text( 1, "Привет!",MultiTrigger, GetMultiTrigger(), 1)

	Talk( 2, "Хаскинсон: Чтобы получить фрагменты вы должны ответить на несколько вопросов!Кто послал тебя ко мне?" )
	Text( 2, "Бабушка",JumpPage, 32  )
	Text( 2, "Ашот",JumpPage, 32  )
	Text( 2, "Богиня",JumpPage, 3  )				--Правильный ответ
	Text( 2, "Свинокрыл",JumpPage, 32  )

	Talk( 3, "Хаскинсон: Не будьте так высокомерны! Дальше...Чем из этого можно кормить фею?" )
	Text( 3, "Питание феи",JumpPage, 4  )-------------Правильный ответ
	Text( 3, "Монета фей",JumpPage, 32  )
	Text( 3, "Огромный фрукт снежного дракона",JumpPage,5  )-------------Правильный ответ
	Text( 3, "Яблоко",JumpPage, 2  )
	Text( 3, "Шайтанский Бисквит",JumpPage, 4  )				--Правильный ответ
	Text( 3, "Пища феи",JumpPage, 12  )-------------Правильный ответ

	Talk( 4, "Хаскинсон: Где достать великие самоцветы?" )
	Text( 4, "Командир мертвых душ",JumpPage, 5  )-------------Правильный ответ
	Text( 4, "Интернет Магазин",JumpPage, 2  )
	Text( 4, "Монстры на Базе Флота",JumpPage, 32)
	Text( 4, "Кракен",JumpPage, 6  )-------------Правильный ответ
	Text( 4, "Барбороса",JumpPage, 19  )				--Правильный ответ
	Text( 4, "Черная Жемчужина",JumpPage, 5  )-------------Правильный ответ

	Talk( 5, "Хаскинсон: Чем из перечисленного нельзя восстановить здоровье?" )
	Text( 5, "Фруктовый коктейль",JumpPage, 32  )
	Text( 5, "Каска крота рудокопа",JumpPage, 6  )-------------Правильный ответ
	Text( 5, "Кекс",JumpPage, 3  )
	Text( 5, "Комок грязи",JumpPage, 22  )				--Правильный ответ
	Text( 5, "Камень клятвы",JumpPage, 7  )-------------Правильный ответ
	Text( 5, "Медаль отваги",JumpPage, 7  )-------------Правильный ответ
	Text( 5, "Питание Феи",JumpPage, 32  )

	Talk( 6, "Хаскинсон: Когда открывается портал в Снежную Войну?" )
	Text( 6, "Круглосуточно",JumpPage, 4  )
	Text( 6, "6:00, 13:00, 22:00",JumpPage, 8  )-------------Правильный ответ
	Text( 6, "Утром, Днем и Вечером",JumpPage, 7  )-------------Правильный ответ
	Text( 6, "5:00 и 12:00",JumpPage, 32  )
	Text( 6, "Тут есть Снежная война?",JumpPage, 32  )
	Text( 6, "Надо спросить у ГМ",JumpPage, 32  )
	Text( 6, "Так, так, а где у нас форум",JumpPage, 32  )

	Talk( 7, "Хаскинсон: Для чего используют Демонический фрукт?" )
	Text( 7, "Как Яблоко",JumpPage, 32  )
	Text( 7, "Для свадьбы фей",JumpPage, 8  )				--Правильный ответ
	Text( 7, "Для получения феи следующего поколения",JumpPage, 9  )-------------Правильный ответ
	Text( 7, "Для управления фруктами демонов",JumpPage, 5  )
	Text( 7, "Для закалки",JumpPage, 32  )

	Talk( 8, "Хаскинсон: Где можно выбить Чертеж Пачкуля?" )
	Text( 8, "Куст",JumpPage, 3  )
	Text( 8, "Крот Рудокоп",JumpPage, 32  )
	Text( 8, "Сонная Улитка",JumpPage, 32  )
	Text( 8, "Устрица",JumpPage, 9  )				--Правильный ответ
	Text( 8, "Контрабандист",JumpPage, 7  )
	Text( 8, "Лесной дух",JumpPage, 9  )-------------Правильный ответ

	Talk( 9, "Хаскинсон: Что дают за выживание в Снежной Войне?" )
	Text( 9, "Медаль отваги",JumpPage, 4  )
	Text( 9, "Золото",JumpPage, 10)				--Правильный ответ
	Text( 9, "Хаос экипировку",JumpPage, 32  )
	Text( 9, "Честь и репутацию",JumpPage, 23)
	Text( 9, "Все вместе",JumpPage, 6  )

	Talk( 10, "Хаскинсон: Что Торговец черного рынка не берет за свои вещи?" )
	Text( 10, "Руна Кэль",JumpPage, 5  )
	Text( 10, "Изменчивая руна",JumpPage, 8  )
	Text( 10, "Каменное Яйцо",JumpPage, 11  )				--Правильный ответ
	Text( 10, "Монеты феи",JumpPage, 32  )
	Text( 10, "Чешуйку дракона",JumpPage, 11  )--Правильный ответ


	Talk( 11, "Хаскинсон: Какой НПС не понимает обычной речи?" )
	Text( 11, "Барыга - Ашот",JumpPage, 32)
	Text( 11, "Билетер - Кристина",JumpPage, 30  )
	Text( 11, "Странствующий торговец",JumpPage, 13  )-------------Правильный ответ
	Text( 11, "Пингвинчик Пэп",JumpPage, 2  )
	Text( 11, "Портальщик Веснограда",JumpPage, 13  )				--Правильный ответ
	Text( 11, "Кузнец - Баш",JumpPage, 32  )
	Text( 11, "Нет правильных ответов.",JumpPage, 28  )

	Talk( 30, "Хаскинсон: Вы очень глубоко заблуждаетесь!"  )
	Text( 30, "Нет, я уверен!",JumpPage, 32  )

	Talk( 31, "Хаскинсон: Мне кажется ты не прав!" )
	Text( 31, "Нет, я уверен!",JumpPage, 32  )

	Talk( 13, "Хаскинсон: Что из ниже сказанного неверно?" )
	Text( 13, "Клещи кузнеца необходимы для извлечения",JumpPage, 5)
	Text( 13, "Каждый самоцвет извлекается поочередно",JumpPage, 3)
	Text( 13, "Число слотов не изменяется после извлечения самоцвета",JumpPage, 32)
	Text( 13, "Стоимость извлечения - уровень предмета*1000 золота",JumpPage, 14)-------------Правильный ответ
	Text( 13, "Вы можете начать извлекать только из 1 слота",JumpPage, 10)
	Text( 13, "Уровень извлеченного самоцвета ниже чем вставленного в слот",JumpPage, 14)				--Правильный ответ
	Text( 13, "Все вышеназванное неверно",JumpPage, 8)

	Talk( 14, "Хаскинсон: Какая фея больше всех повышает шанс на выпадение предметов?" )
	Text( 14, "Мордо младший",JumpPage, 4)
	Text( 14, "Фея Точности",JumpPage, 32)
	Text( 14, "Фея Телосложения",JumpPage, 7)
	Text( 14, "Фея Зла",JumpPage, 32)
	Text( 14, "Все одинаково",JumpPage, 15)				--Правильный ответ
	Text( 14, "Фея Удачи",JumpPage, 8)
	Text( 14, "Фея ловкости",JumpPage, 7)

	Talk( 15, "Хаскинсон: Какой самоцвет увеличивает физическую атаку героя?" )
	Text( 15, "Самоцвет Души",JumpPage,13)
	Text( 15, "Самоцвет Ветра",JumpPage, 32)
	Text( 15, "Самоцвет Ярости",JumpPage, 16)				--Правильный ответ
	Text( 15, "Самоцвет Колосса",JumpPage, 5)
	Text( 15, "Танец Азраила",JumpPage, 4)
	Text( 15, "Самоцвет Удара",JumpPage, 16)-------------Правильный ответ

	Talk( 16, "Хаскинсон: Что правильно?" )
	Text( 16, "Последняя цифра числа Pi - 5",JumpPage, 32)
	Text( 16, "Секретарь аргента - Сальвьер",JumpPage, 17)				--Правильный ответ
	Text( 16, "СНВ находится в Ледыни",JumpPage, 5)
	Text( 16, "У Шапки Ковбоя Ланса есть хозяин",JumpPage, 10)
	Text( 16, "У всех Стрелков есть инвиз",JumpPage, 15)

	Talk( 17, "Хаскинсон: Вы любите играть?" )
	Text( 17, "Люблю играть на Mordo Online",JumpPage, 32)
	Text( 17, "Мне нравятся разные проекты",JumpPage, 32)
	Text( 17, "Я очень сильно люблю играть в Пиратию",JumpPage, 32)
	Text( 17, "Все из-за игры!",JumpPage, 32)
	Text( 17, "Я люблю играть  - International",JumpPage, 18)				--Правильный ответ
	Text( 17, "Вроде бы люблю!!!" ,JumpPage, 5)
	Text( 17, "Пока еще люблю...",JumpPage, 15)

	Talk( 18, "Хаскинсон: Что самое главное в PvP?" )
	Text( 18, "Кулинария",JumpPage, 5)
	Text( 18, "Форженная экипировка",JumpPage, 14)
	Text( 18, "Бегать одному",JumpPage, 2)
	Text( 18, "Командная игра",JumpPage, 12)				--Правильный ответ
	Text( 18, "Высокий уровень",JumpPage, 10)
	Text( 18, "Спать",JumpPage, 4)

	Talk( 19, "Хаскинсон: Вы уверены насчет своего выбора?" )
	Text( 19, "Я уверен",JumpPage, 21  )
	Text( 19, "Я выбрал неверно",JumpPage, 20  )
	Text( 19, "Я должен подумать",JumpPage, 32  )

	Talk( 20, "Хаскинсон: Пожалуйста пробуйте снова" )
	Text( 20, "Продолжить -->",JumpPage, 3  )

	Talk( 21, "Хаскинсон: Уверенность это главное для пирата!" )
	Text( 21, "Подтвердить",JumpPage, 5  )

	Talk( 22, "Хаскинсон: Вы уверены насчет своего выбора?" )
	Text( 22, "Я уверен",JumpPage, 24  )
	Text( 22, "Я выбрал неверно",JumpPage, 20  )
	Text( 22, "Я должен подумать",JumpPage, 32  )


	Talk( 23, "Хаскинсон: Вы уверены насчет своего выбора?" )
	Text( 23, "Я уверен",JumpPage, 25  )
	Text( 23, "Я выбрал неверно",JumpPage, 8  )
	Text( 23, "Я должен подумать",JumpPage, 32  )

	Talk( 24, "Хаскинсон: Вера - это главное чтобы стать пиратом!")
	Text( 24, "Я Верю!",JumpPage, 6   )

	Talk( 25, "Хаскинсон: Пожалуйста используйте мозг. Не всегда выбирайте тот же ответ!")
	Text( 25, "Хорошо, я понял",JumpPage, 32  )

	Talk( 26, "Хаскинсон: Вы уверены насчет своего выбора?" )
	Text( 26, "Я уверен",JumpPage, 28  )
	Text( 26, "Я выбрал неверно",JumpPage, 27  )
	Text( 26, "Я должен подумать",JumpPage, 32  )

	Talk( 27, "Хаскинсон: Это движение позволит вам сэкономить время." )
	Text( 27, "Ура, экономить я люблю!",JumpPage, 12  )

	Talk( 28, "Хаскинсон: Вы слишком самонадеянны. Это не достоинство пирата."  )
	Text( 28, "Я могу попробовать ещё?",JumpPage, 32  )


	InitTrigger()
	TriggerCondition( 1, HasMission, 1300 )
	TriggerCondition( 1, NoRecord, 1300 )
	TriggerAction( 1, SetRecord, 1301 )
	TriggerAction( 1, JumpPage, 29 )

	Talk( 12, "Хаскинсон: Я думаю эти загадки интересны. Вы хотите попробовать?"  )
	Text( 12, "Хочу",MultiTrigger, GetMultiTrigger(), 1  )
	Text( 12, "Нет",JumpPage, 2  )

	Talk( 29, "Хаскинсон: Поздравляю! Ваша мудрость дарует вам фрагменты! Идите и докажите свою силу." )

	Talk( 32, "Хаскинсон: Вы так глупы?" )
	Text( 32, "Нет, я хочу попробовать снова!",JumpPage, 2  )
	Text( 32, "Я глупец, пожалуй лучше уйду...",CloseTalk  )

	AddNpcMission	(6001)	--1
	AddNpcMission	(6002)	--2
	AddNpcMission	(5823)	--3
	AddNpcMission	(5824)	--4
	AddNpcMission	(6364)	--5
	AddNpcMission	(6365)	--6

end 
-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<»фЅрЛ№



----------------------------------------НРВнЛ№Ў¤НјНј-------------------------
--------------------------------Д§·ЅКАЅз¶юІг(26600,25900)
--------------------------------------eleven------------------------------------------

function el_talk08 ()


	Talk( 1, "Томас Туту: Организую турне! 3 дня и 2 ночи в Пещере ледяного дьявола! Членам клуба скидки!" )

	InitTrigger()
	TriggerCondition( 1, HasMission, 1424 )
	TriggerCondition( 1, HasMission, 1414 )
	TriggerCondition( 1, NoRecord, 1424 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Ответить на вопрос",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Talk( 2, "Как называется эта книга? Ответишь неверно и я телепортирую тебя отсюда.")
	Text( 2, "Моя боевая история",MultiTrigger, GetMultiTrigger(), 1 )
	
	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 2, "Моя несчастная история",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, JumpPage, 4)
	Text( 2, "История моего перерождения",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "Я читаю, не отвлекай меня.")

	InitTrigger()
	TriggerAction( 1, JumpPage, 5)
	Talk( 4, "Кто автор этой книги? Ответишь неверно и я телепортирую тебя отсюда.")
	Text( 4, "Томас Ридель Махеро",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 4, "Кто автор этой книги? Ответишь неверно и я телепортирую тебя отсюда.",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 4, "Томас Ридель Мафуро",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Talk( 5, "Сколько страниц в этой книге? Ответишь неверно и я телепортирую тебя отсюда.")
	Text( 5, "Страница 5231",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1429)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "Страница 5321",MultiTrigger, GetMultiTrigger(), 1 )
	
	InitTrigger()
	TriggerAction( 1, GoTo, 2232, 2809, "garner")
	Text( 5, "Страница 5132",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 6, "Поздравляю! Ты ответил правильно на все вопросы! Надеюсь, ты продолжишь чтение книг.")

	AddNpcMission	(6095)	--1-открытие свитков идет тебе на пользу
	AddNpcMission	(6096)	--2-открытие свитков идет тебе на пользу
	AddNpcMission	(6010)	--3-Найди демонический трактат(Завершение)
	AddNpcMission	(6011)	--4-Однодневное путешествие по Карибам
	AddNpcMission	(6012)	--5-Второй день карибского тура!
	AddNpcMission	(6013)	--6-Вторая карибская кампания.
	AddNpcMission	(6014)	--7-Кто такой хранитель?

	end

function Leo_talkQ()

	Talk(1, "Представитель порядка, закона и правосудия! Я помогу вам связаться с ГМом.")
	Text(1, "Узнать подробности",JumpPage,2)
	Text(1, "Задать вопрос" , OpenGMSend)
	Text(1, "Проверить ответы" , OpenGMRecv)

	Talk(2, "Я помощник ГМов. Я передаю им вопросы и возвращаю назад ответы от них. Вопрос не должен иметь больше 256 знаков или 128 слов. Одновременно вы можете задать лишь 1 вопрос. Пока вы не получите на него ответа задать другой вы не сможете. Пожалуйста задавайте вопросы только касательно игры!")
	Text(2, "Я понял" , CloseTalk)

end


function smzh_talk ()

	Talk( 1, "Таинственный бакалейщик: Молодой человек! Не поддавайтесь иллюзиям!" )
	Text( 1, "Торг", BuyPage)
	Text( 1, "Ремонт", OpenRepair)

	InitTrade()
	Other	(1847)
	Other	(1848)
	Other	(1849)
	Other	(3143)
	Other	(637)
	Other	(819)
	Other	(869)
	Other	(874)

end 

function leo_talkzz()

	Talk( 1, "Привет! Я НПС поддержки. Я помогаю игрокам решить некоторые проблемы.")
	Text( 1, "Неверное количество очков Хаоса",JumpPage,2)
	Text( 1, "Проблема с Картой перерождения",JumpPage,3)

	Talk( 3, "Привет! У вас проблема с Картой перерождения? Такое иногда случается. У меня вы можете восстановить свою карту.")
	Text( 3, "Восстановить",GetChaName_25, 1) 

	Talk( 2, "Если у вас проблема с очками Хаоса, то я могу их сбросить до нуля.")
	Text( 2, "Сбросьте очки Хаоса",PKPointToZero)
	Text( 2, "Нет, у меня все в порядке",CloseTalk)

end



------------------------------------------------------------
----							--
----							--
----		Йіб°іЗ[ЅММГРЮЕ®.Г·А­ґп]			--
----							--
----		82271,353453				--
------------------------------------------------------------
-------------------------------------------------------------ХвАпїЄКјP»°БДМм
--function el_talk09 ()
--	
--	Talk( 1, "Г·А­ґп:Йс°®КАИЛ,ОТТФЦчµДГыТеСыЗлДгИҐКҐµШ." )
--	Text( 1, "Church bidding", ListAuction)
--	Text( 1, "Buy Church Visit Ticket", JumpPage,2 )
--	Text( 1, "Buy invitiations", JumpPage, 5)
--
--
--	InitTrigger()
--	TriggerCondition( 1, HasMoney,5000 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerAction( 1, TakeMoney, 5000 )
--	TriggerAction(1, GiveItem, 3013, 1 , 4)
--	TriggerAction( 1, JumpPage, 3)
--	TriggerFailure( 1, JumpPage, 4 )
--	Talk(2, "Mulida: Holy and Sacred church is a place of where happiness begins, and where love gets witnessed. You're welcome to take a tour with a ticket, one ticket only costs 5000 gold.")
--	Text( 2, "Подтвердить buying",  MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk(3, "Mulida: Welcome you to take a tour on time anytime")
--	Talk(4, "Mulida: You don't seem to have enough money on you! Or you bag is already locked, please make you have 1 empty space inside your inventory")
--	
--	Talk( 5, "Meridar: Church permit will allow you to purchase invitation cards, each stack of 10 cost 50000G. Invite your friends now!" )
--	Text( 5, "Подтвердить buying", ChangeItem, 1  )
--	
--	
--end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Г·А­ґп
	
-----------------------------Ф№ДоІЭ
function ync_talk ()
	Talk( 1, "Коварный куст: Что ты на меня смотришь? Если не уйдешь, я тебя ударю.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1403 )
	TriggerCondition( 1, HasRecord, 1402 )
	TriggerCondition( 1, NoRecord, 1403 )
	TriggerCondition( 1, NoRecord, 1404 )
	TriggerAction( 1, JumpPage, 2 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "Ответить на вопрос",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1405 )
	Talk( 2, "Почему... почему нас всегда убивают? Ты знаешь, сколько месяцев мы растем? А потом приходят разные люди и обдирают нас, чтобы выполнить свои дурацкие задания.")
	Text( 2, "11 штук",MultiTrigger, GetMultiTrigger(), 1 )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1406 )
	Text( 2, "12 штук",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1406 )
	Text( 2, "13 штук",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, SetRecord, 1404 )
	TriggerAction( 1, SetRecord, 1407 )
	Text( 2, "Мне все равно",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 3, "Я должен отомстить! Держись от меня подальше!")

	AddNpcMission	(6072 )
	AddNpcMission	(6073 )
	AddNpcMission	(6074 )
	AddNpcMission	(6075 )
	AddNpcMission	(6076 )
	AddNpcMission	(6077 )

end

--------------------------------------ЦШЙЛµДОЮГыХЅКї

function Zs_Soldier ()
	Talk( 1, "Дорогой друг, не буди большую ящерицу.")


	AddNpcMission	(6098 )
	AddNpcMission	(6099 )
end
---------------------------------------------------------
--							--
--							--
--		µШУь7Іг[А­Ир]			--
--							--
--		190, 181				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function el_talk11 ()
	
	Talk( 1, "Лури: Добро пожаловать в Абаддон 7! Я чувствую, что тебе страшно, но не стоит бояться. Абаддон это рай для отважных искателей приключений" )
--	Text( 1, "Please click here once", JumpPage,2 )
--	
--	
--	InitTrigger()
--	TriggerCondition( 1, NoRecord, 1154 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerAction(1, GiveItem, 3877, 1 , 4)
--	TriggerAction( 1, SetRecord, 1154 )
--	TriggerAction( 1, JumpPage, 3)
--	TriggerFailure( 1, JumpPage, 4 )
--	Talk( 2, "Lurie: Friend, to honour your bravery into the abaddon, I'll give you a present, but only one chance per person!")
--	Text( 2, "I accept",  MultiTrigger, GetMultiTrigger(), 1)
--	Text( 2,"Thank you, I'm just passing by.",CloseTalk)
--
--	Talk(3, "Lurie: Brave warrior, my friend Anita at the 15th floor of Abaddon have a bigger surprise for you, don't miss it!")
--	Talk(4, "Lurie: Please Подтвердить your bag is not locked, and make sure you have one space in your inventory. Present can only be claimed once!")
--	
end 

-----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ВЮА­

---------------------------------------------------------
--							--
--							--
--		µШУь15Іг[ПЈ¶ыЛю]			--
--							--
--		314, 303				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function el_talk12 ()
	
	Talk( 1, "На 15 уровне Абаддона многих преследуют кошмарные видения. Не каждому дано через это пройти." )
--	Text( 1, "Please click here once", JumpPage,2 )
--	
--	
--	InitTrigger()
--	TriggerCondition( 1, NoRecord, 1155 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerAction(1, GiveItem, 0853, 1 , 4)
--	TriggerAction( 1, SetRecord, 1155 )
--	TriggerAction( 1, JumpPage, 3)
--	TriggerFailure( 1, JumpPage, 4 )
--	Talk( 2, "Anita: Friend, anyone who dares challenge Abaddon level 15 is entited to get a present from me. You only have one chance though!")
--	Text( 2, "I accept",  MultiTrigger, GetMultiTrigger(), 1)
--	Text( 2,"Thank you, I'm just passing by.",CloseTalk)
--
--	Talk(3, "Anita: Friend, when on the road to exploring Abaddon, there's no loser. Going forward is a hero's destiny.")
--	Talk(4, "Anita: Please Подтвердить your inventory is not locked or you have one free space inside your inventory. You can only claim the present once!")
	
end 


---------------------------------------------------------
--							--
--							--
--		ґє·зХт[ФВАП]			--
--							--
--		3228,2508				--
----------------------------------------------------------
function amon_talk1 ()
	Talk( 1, "ФВАП: Т»ёщємПЯ,БЅґ¦ЗйФµ.µАІ»НкИЛјдЗйКВ.")


	--AddNpcMission	(5736 )
	--AddNpcMission	(5737 )
end

---------------------------------------------------------
--							--
--							--
--		ПДµє[ЕЈАЙ]			--
--							--
--		3670,2636			--
----------------------------------------------------------
function amon_talk2 ()
	Talk( 1, "ЕЈАЙ: ПаѕЫ¶М,ТшєУі¤.УЖУЖИµЗЕВ·,АґИЛВ·,АлИЛВ·.")


	--AddNpcMission	(5738 )
	--AddNpcMission	(5739 )
end

---------------------------------------------------------
--							--
--							--
--		МмМГ[ЦЇЕ®]			--
--							--
--		1599,909			--
----------------------------------------------------------
function amon_talk3 ()
	Talk( 1, "ЦЇЕ®: ПаѕЫ¶М,ЛјДоі¤.УЖУЖИµЗЕВ·,АлИЛВ·,АґИЛВ·.")


	--AddNpcMission	(5740 )
	
end
---------------------------------------------------------
--							--
--							--
--		°ЧТш[РЈі¤АЧЕµ]			--
--							--
--		2232,2781			--
----------------------------------------------------------

-----------------------------------------------------------
----							--
----							--
----		Йіб°[°єАтДИАПК¦]			--
----							--
----		871,3581			--
------------------------------------------------------------
function dina_talk02 ()
	Talk( 1, "°єАтДИАПК¦: РВС§ЖЪЈ¬РВїЄКјЈ¬С§ОЮЦ№ѕі~")
	
	InitTrigger()
	TriggerCondition( 1, HasMission, 1458)
	TriggerCondition( 1, NoRecord, 1458)
	TriggerCondition( 1, NoRecord, 1461)
	TriggerCondition( 1, HasItem, 579, 1)
	TriggerAction( 1, JumpPage, 2)
	TriggerAction( 1, SetTestTime )
	TriggerFailure( 1, JumpPage, 20)
	Text( 1, "ІОјУИлС§їјКФ",MultiTrigger, GetMultiTrigger(), 1  )
	
	Talk( 2, "ОКМвТ»:јЩЖЪ»¶АЦФУЦѕКЗ·сїЙЅ»ТЧ?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 3)
	Text( 2, "їЙЅ»ТЧ",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 3)
	Text( 2, "І»їЙЅ»ТЧ",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "ОКМв¶ю:NPCїЛА­А­ґуК¦ФЪДЗёцІ№ёшХѕ?")

	InitTrigger()
	TriggerAction( 1, JumpPage, 4)
	TriggerAction( 1, RenewTestTime2)
	Text( 3, "Icicle Haven",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 4)
	Text( 3, "Icespire Haven",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 4, "ОКМвИэ:АЧ±ґУлПоБґДЬІ»ДЬН¬К±Ч°±ё?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 5)
	Text( 4, "їЙТФ",MultiTrigger, GetMultiTrigger(), 1  )
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 5)
	Text( 4, "І»їЙТФ",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 5, "ОКМвЛД:»ГУ°ИэіЗГїМмїЄ·ЕјёґО?")
	
	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "2ґО",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 6)
	Text( 5, "4ґО",MultiTrigger, GetMultiTrigger(), 1  )
	
	Talk( 6, "ОКМвОе:КҐ№вКЇїЙТФПвЗ¶ФЪР¬ЧУЙПВр?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 7)
	Text( 6, "їЙТФ",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 7)
	Text( 6, "І»їЙТФ",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 7, "ОКМвБщ:100ј¶µДБФУҐ»¤ОАЅўµДєЅЛЩКЗ¶аЙЩ?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 8)
	Text( 7, "623",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 8)
	Text( 7, "632",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 8, "ОКМвЖЯ:єЈµБНхµДЦ°ТµјјДЬЦРУРјёЦЦјјДЬКЗРиТЄПыєДµАѕЯІЕДЬК©Х№µД?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 9)
	Text( 8, "3ЦЦ",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 9)
	Text( 8, "4ЦЦ",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 9, "ОКМв°Л:±щАЗ±¤Т»№ІУРјёЦ»±щµсµДАЗ?")

	InitTrigger()
	TriggerAction( 1, RenewTestTime1)
	TriggerAction( 1, JumpPage, 12)
	Text( 9, "9Ц»",MultiTrigger, GetMultiTrigger(), 1  )

	InitTrigger()
	TriggerAction( 1, RenewTestTime2)
	TriggerAction( 1, JumpPage, 12)
	Text( 9, "10Ц»",MultiTrigger, GetMultiTrigger(), 1  )

	Talk( 12, "ДгИ·¶ЁДгѕНХвСщ»ШґрХвР©ОКМвВр?")

	TriggerAction( 1, SetRecord, 1461)
	TriggerAction( 1, JumpPage, 13)
	Text( 12, "I am sure",MultiTrigger, GetMultiTrigger(), 1  )

	Text( 12, "Let me think again", CloseTalk )
	
	Talk( 13, "»ШґрНкБЛѕНїЙТФХТОТ»№ИООсБЛЕ¶,±рНьБЛ.")
	Text( 13, "Ok", CloseTalk )

	Talk( 20, "ПлІОјУИлС§їјКФВр?ДгУРИлС§Ц¤КйВр?Г»µД»°ЧФјєИҐХТАЧЕµРЈі¤°мТ»ХЕ°Й")

	AddNpcMission	(6132 )
	AddNpcMission	(6133 )
	AddNpcMission	(6134 )
	AddNpcMission	(6135 )
	AddNpcMission	(6136 )


end
-----------------------------------------------------------
----							--
----							--
--		±щј«[ївА­НРЛ№1]			--
--							--
--		2646,671			--
----------------------------------------------------------
function dina_talk03 ()
	Talk( 1, "ївА­НРЛ№:ОыОы,ІВІВДЗёцІЕКЗХжХэµДОТ!ІВґнБЛїЙКЗТЄ±»ОТёП»Ш°ЧТшіЗµДЕ¶.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "ОТХТДгУРКВ",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "Ф­АґКЗПлХТХжХэµДївА­НРЛ№°Ў,ДЗДгИПОЄОТКЗХжХэµДївА­НРЛ№Вр?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 1)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "ОТІВДгѕНКЗХжХэµДївА­НРЛ№",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "Let me think again", CloseTalk)

	Talk( 3, "ДгКЗЛ­?ОТУЦІ»ИПК¶Дг.")

	Talk( 4, "°ҐСЅ,±»ДгЧҐЧЎБЛ,єГ°ЙєГ°Й,°С°єАтДИµДРЕёшОТ°Й")

	AddNpcMission	(6137 )

end

---------------------------------------------------------
--							--
--							--
--		±щј«[ївА­НРЛ№2]			--
--							--
--		2718,586			--
----------------------------------------------------------
function dina_talk04 ()
	Talk( 1, "ївА­НРЛ№:ОыОы,ІВІВДЗёцІЕКЗХжХэµДОТ!ІВґнБЛїЙКЗТЄ±»ОТёП»Ш°ЧТшіЗµДЕ¶.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "ОТХТДгУРКВ",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "Ф­АґКЗПлХТХжХэµДївА­НРЛ№°Ў,ДЗДгИПОЄОТКЗХжХэµДївА­НРЛ№Вр?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 2)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "ОТІВДгѕНКЗХжХэµДївА­НРЛ№",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "Let me think again", CloseTalk)

	Talk( 3, "ДгКЗЛ­?ОТУЦІ»ИПК¶Дг.")

	Talk( 4, "°ҐСЅ,±»ДгЧҐЧЎБЛ,єГ°ЙєГ°Й,°С°єАтДИµДРЕёшОТ°Й")

	AddNpcMission	(6137 )

end

---------------------------------------------------------
--							--
--							--
--		±щј«[ївА­НРЛ№3]			--
--							--
--		2714,699			--
----------------------------------------------------------
function dina_talk05 ()
	Talk( 1, "ївА­НРЛ№:ОыОы,ІВІВДЗёцІЕКЗХжХэµДОТ!ІВґнБЛїЙКЗТЄ±»ОТёП»Ш°ЧТшіЗµДЕ¶.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "ОТХТДгУРКВ",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "Ф­АґКЗПлХТХжХэµДївА­НРЛ№°Ў,ДЗДгИПОЄОТКЗХжХэµДївА­НРЛ№Вр?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 3)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "ОТІВДгѕНКЗХжХэµДївА­НРЛ№",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "Let me think again", CloseTalk)

	Talk( 3, "ДгКЗЛ­?ОТУЦІ»ИПК¶Дг.")

	Talk( 4, "°ҐСЅ,±»ДгЧҐЧЎБЛ,єГ°ЙєГ°Й,°С°єАтДИµДРЕёшОТ°Й")

	AddNpcMission	(6137 )
end

---------------------------------------------------------
--							--
--							--
--		±щј«[ївА­НРЛ№4]			--
--							--
--		2609,607			--
----------------------------------------------------------
function dina_talk06 ()
	Talk( 1, "ївА­НРЛ№:ОыОы,ІВІВДЗёцІЕКЗХжХэµДОТ!ІВґнБЛїЙКЗТЄ±»ОТёП»Ш°ЧТшіЗµДЕ¶.")

	InitTrigger()
	TriggerCondition( 1, HasMission, 1464)
	TriggerCondition( 1, NoRecord, 1465)
	TriggerAction( 1, JumpPage, 2)
	TriggerFailure( 1, JumpPage, 3)
	Text( 1, "ОТХТДгУРКВ",MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 2, "Ф­АґКЗПлХТХжХэµДївА­НРЛ№°Ў,ДЗДгИПОЄОТКЗХжХэµДївА­НРЛ№Вр?")
	
	InitTrigger()
	TriggerCondition( 1, CheckRealNpc, 0)
	TriggerAction( 1, SetRecord, 1465)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, GoTo, 2298, 2704, "garner")
	Text( 2, "ОТІВДгѕНКЗХжХэµДївА­НРЛ№",MultiTrigger, GetMultiTrigger(), 1  )	
	Text( 2, "Let me think again", CloseTalk)

	Talk( 3, "ДгКЗЛ­?ОТУЦІ»ИПК¶Дг.")

	Talk( 4, "°ҐСЅ,±»ДгЧҐЧЎБЛ,єГ°ЙєГ°Й,°С°єАтДИµДРЕёшОТ°Й")
	AddNpcMission	(6137 )

end

-----------------------¶БКйПµНі
function reading_talk01 ()
	Talk( 1 , "Tester: I am the tester in Argent City. I will assist you when taking your tests. Put your Student card in your bag before starting the tests.")
	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3279, 1 )
	TriggerCondition( 1, HasItem, 3289, 1 )
	TriggerAction( 1, checkcytime )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Hand in the Report Card.",  MultiTrigger, GetMultiTrigger(), 1)

	Text( 1, "What are requirements for taking tests?" , JumpPage , 5)

	Text( 1, "What are the tests like?", JumpPage , 6)

	Talk( 4, "Tester: There is no Student card and no Report card in your bag")

	Talk( 5, "Tester: The requirements for taking tests are strict. You have to have a Student card in your bag.")

	Talk( 6, "Tester: You have to put your student card in your bag and then start the tests. After the tests are completed, you will be given a Report card. I will reward you based on your grades.")

	AddNpcMission	(112 )
end

function reading_talk02 ()
	Talk( 1, "Promotion Examination Officer: I am the Promotion Examination Officer in Icicle City. I sell test papers for the Promotion Examination.")

	InitTrigger()
	TriggerCondition( 1, CheckXSZCh )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, HasNoItem, 3280 )
	TriggerCondition( 1, HasNoItem, 3281 )
	TriggerCondition( 1, HasNoItem, 3282 )
	TriggerAction( 1, AddChaItem7)
	TriggerFailure( 1, JumpPage, 2 )
	Text( 1, "I want to take the test papers.",  MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, CheckXSZCh )
	TriggerCondition( 1, CheckKJNum )
	TriggerCondition( 1, HasItem, 3280, 1 )
	TriggerCondition( 1, HasItem, 3282, 1 )
	TriggerAction( 1 , AddChaItem8)
	TriggerAction( 1, TakeItem, 3282, 1 )
	TriggerFailure( 1, JumpPage, 3 )
	Text( 1, "I have completed the tests and want my report card.",  MultiTrigger, GetMultiTrigger(),2)

	InitTrigger()
	TriggerCondition( 1, CheckXSZCh )
	TriggerCondition( 1, HasItem, 3289, 1 )
	TriggerCondition( 1, HasItem, 3281, 1 )
	TriggerAction( 1, checksjtime )
	TriggerFailure( 1, JumpPage, 4 )
	Text( 1, "Hand in the report card and find out your test results.",  MultiTrigger, GetMultiTrigger(), 1)

	Text( 1, "What are the requirements for taking the Promotion Examination?" , JumpPage , 5)

	Text( 1, "What is the Promotion Examination like?", JumpPage , 6)
	
	Talk( 2, "Promotion Examination Officer: You failed to meet the requirements and are unable to take the test. Review the requirements before taking the exam.")

	Talk( 3, "Promotion Examination Officer: You must have one test paper and one answer sheet to get your report card.")

	Talk( 4, "Promotion Examination Officer: You donЎЇt have a report card.")

	Talk( 5, "Promotion Examination Officer: Requirements for taking the Promotion Exam are strict. You must have one student card in your bag with full academic credits. Besides, you are not allowed to own any test papers, answer sheets or report cards.")

	Talk( 6, "Promotion Examination Officer: You have to take a test paper before starting the Promotion Examination. After completing the exam, you will be given an answer sheet. Taking your test paper and answer sheet to visit me, you will get your report card. I will reward you according to your grades.")
	
	AddNpcMission	(6138 )

end


----------------------------------------------------------
--							--
--							--
--		Йіб°іЗ[ЅММГРЮЕ®.Г·А­ґп]			--
--							--
--		82271,353453				--
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function el_talk09 ()
	
	Talk( 1, "Г·А­ґп:Йс°®КАИЛ,ОТТФЦчµДГыТеСыЗлДгИҐКҐµШ." )
	Text( 1, "№ШУЪЅММГ", JumpPage, 17)	

	Talk( 17, "Г·А­ґп:ДгТЄЧвЅиЅММГВрЈїЅсМмХэєГУРґтХЫ»о¶ЇЕ¶." )

	Text( 17, "ХчУГЅММГјтЅй", JumpPage, 6)
	Text( 17, "Church bidding", ListAuction)
	Text( 17, "Buy Church Visit Ticket", JumpPage,2 )
	Text( 17, "Buy invitiations", JumpPage, 5)




	InitTrigger()
	TriggerCondition( 1, HasMoney,5000 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeMoney, 5000 )
	TriggerAction(1, GiveItem, 3024, 1 , 4)
	TriggerAction( 1, JumpPage, 3)
	TriggerFailure( 1, JumpPage, 4 )
	Talk(2, "Г·А­ґп:ЙсКҐµдСЕµДЅММГКЗРТёЈїЄКјµДµШ·Ѕ,КЗ°®ЗйЧЇСПµДјыЦ¤.ГїЦЬТ»Нн17:00~17:10»¶У­іЦЖ±ІО№Ы,ГїХЕІО№ЫГЕЖ±Ц»Ри5000УОП·±Т")
	Text( 2, "Подтвердить buying",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "Mulida: Welcome you to take a tour on time anytime")
	Talk(4, "Г·А­ґп:ДъЙнЙПЛЖєхГ»УРЧг№»µДЅр±Т°Ў!»тХЯДъµД±і°ьТСЛш¶Ё,Зл±ЈЦ¤±і°ьДЪБфУРТ»ёцїХёс")
	
	Talk( 5, "Г·А­ґп:УГЅММГК№УГЦ¤КйѕНїЙТФ№єВт¶ФУ¦ЅММГµДЗлјн,Гї10Г¶ЗлјнОЄ1Чй,ГїЧй5НтУОП·±Т.СыЗлДъµДЕуУСІОјУѕЫ»б°Й!" )
	Text( 5, "Подтвердить buying", ChangeItem, 1  )
	
	Talk( 6, "Г·А­ґп:ДгПлБЛЅвДЗТ»Ії·Ц?" )
	Text( 6, "№ШУЪІО№Ы", JumpPage, 7)
	Text( 6, "№ШУЪЅММГѕєЕД", JumpPage, 8)
	Text( 6, "№ШУЪЅММГК№УГИЁ", JumpPage, 9)
	Text( 6, "№ШУЪЅММГК№УГЦ¤Кй", JumpPage, 10)

	Talk( 7, "Г·А­ґп:№єВтІО№ЫГЕЖ±µДЕуУСУЪГїЦЬТ»Нн17:00~17:10ІО№ЫЅММГ.")
	Text( 7, "Подтвердить", CloseTalk)
	Text( 7, "Return", JumpPage, 6)

	Talk( 8, "Г·А­ґп:ѕєЕДК±јд:УЪГїЦЬТ»НнЙП18:00~20:30Ц®јдФЪОТХвАпЅшРРЅММГѕєЕД.ѕєЕДМхјю:РЇґшЅММГѕє±кїЁ1·Э.ѕєЕДіЎґО:ЅММГГїРЗЖЪіцЧвБЅИХ,їЙіР°мЛДіЎµдАс.РЗЖЪБщБЅіЎ,Ас°ЭМмБЅіЎ.ГїіЎ2ёцРЎК±,іЎґОУЙѕєЕДК±¶Оѕц¶Ё.")
	Text( 8, "Подтвердить", CloseTalk)
	Text( 8, "Return", JumpPage, 6)

	Talk( 9, "Г·А­ґп:№І·Ц4ёцК±¶ОѕєЕД,¶ФУ¦К±¶ОДЪіцјЫЧоёЯµДЕуУСЅ«»сµГЅММГК№УГИЁ,ОЄѕє±кіЙ№¦ХЯ°д·ўЅММГК№УГЦ¤Кй,»№Ѕ«ФщЛН10Г¶Злјн.")
	Text( 9, "Подтвердить", CloseTalk)
	Text( 9, "Return", JumpPage, 6)

	Talk( 10, "Г·А­ґп:Ц¤КйЧчУГ:ЖѕёГЦ¤Кй·ЅїЙ№єВтЗлјн;µдАсК±¶ОДЪЛ«»чёГЦ¤КйЅшИлЅММГ.ФЪЅММГК№УГЦ¤КйЙП±кКѕµДК±јдєуБЅРЎК±,ЧФ¶ЇЅ«ЛщУРФЪіЎИЛФ±ґ«ЛН»ШЙіб°іЗ.")
	Text( 10, "Подтвердить", CloseTalk)
	Text( 10, "Return", JumpPage, 6)
end 


function el_talk13 ()

	Talk (1, "Эдвард: Тысячи лет назад был похоронен под годам пыли богатый континент, он прекратил свое существование в Аскароне.") 

	AddNpcMission	(6309)	--1-Мятежный мир демонов

end

----------------------------------------------------------
--							--
--							--
--		Д§·Ѕ2Іг¶Т»»Ф±[µВВіїЛ]			--
--							--
--		26600,23000			--
----------------------------------------------------------
function el_talk14 ()
	Talk( 1, "µВВіїЛ:єЩєЩ,ЅьАґМЅС°ґуєЈµБНхВЮЙ­ТЕБф±¦ІШµДИЛЗчЦ®ИфрН,ИґІ»ЦЄД§·Ѕ¶юІгТюІШЧЕТ»ёцѕЄМмµДГШГЬ!ХвАпµДѕЮИЛКЧБмЙнЙПБчМКЧЕД¦¶ыїЛЧеИЛµДСЄТє,ДЗР©Т°ВщµДјТ»пФЪ·ЦБСНБµШК±,І»ЦЄґУНх№¬АпµББЛ¶аЙЩПЎХдТм±¦!")
	
	Text( 1, "¶Т»»°ФНх±¦Пд", JumpPage, 2)

	Talk( 2, "µВВіїЛ:ЕуУС,ЕуУС!РЧГНµДД§¶ыїЛИЛГ»°СДгПЕ»µ°Й?КІГґ?ДгЛµДгУРРЕРД°СЛыЙ±ЛА?!ХжКЗЕе·юЕе·ю!ОТГГГГЧоЅьФЪСРЦЖТ»±ъ»рСжЙсЖч,ј±РиХвН·ѕЮИЛЙнЙПµД1ёцѕЮИЛКЧБмПоБґєН1ёцДЙїЁ·ыКЇЧцФ­БП!Из№ыДгДЬ°СХвБЅСщ¶«ОчХТАґ,ОТЅ«ФщУлДг:ОТГГГГЗЧКЦґёБ¶µД°ФНх±¦Пд,єЩєЩ,Ап±ЯµД±¦±ґїЙКЗГГГГ±ПЙъКХВјµДѕ«»Є!!")	
	InitTrigger()
	TriggerCondition( 1, HasItem, 3826, 1)             ------------ѕЮИЛКЧБмПоБґ
	TriggerCondition( 1, HasItem, 3457, 1)             ------------ДЙїЁ·ыКЇ
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerCondition(1, KitbagLock, 0 )
	TriggerAction(1, TakeItem, 3826, 1)
	TriggerAction(1, TakeItem, 3457, 1)
	TriggerAction(1, GiveItem, 0146, 1, 4)              ----------°ФНх±¦Пд
	TriggerFailure(1, JumpPage, 3)
	Text(2,"Подтвердить to redeem", MultiTrigger, GetMultiTrigger(), 1) 	

	Talk( 3, "°ҐСЅ°ҐСЅ,Дгѕ№И»»№Г»КХјЇµЅѕЮИЛКЧБмПоБґєНДЙїЁ·ыКЇ»тКЗДг±і°ьМ«ВъБЛ!ДЗёПЅфМУ°Й!!!Д¦¶ыїЛЧеѕЮИЛ·ўЖр»рАґїЙКЗК®·ЦРЧє·аё!")

end


---------------------------------------------------------
--							--
--							--
--		°ЧТш[Д§·ЁК¦ПДМм]			--
--							--
--		2229,2782			--
----------------------------------------------------------
function el_talk15 ()
	Talk( 1, "Д§·ЁК¦ПДМм: ОТµДЕуУСЕбГО±»Д§НхВеїЛІРИМµДЙ±є¦БЛЎЈУВёТµДХЅКї,Из№ыДгДЬ№»ОЄОТХТ»Шґъ±нОТЕуУСБй»кµДЖЯёцЧЦДёP-E-I-M-E-N-GЎЈОТЅ«»б°СОТКХІШ¶аДкµДД§·ЁєРЛНёшДгЎЈ")

	AddNpcMission	(6139 )
	AddNpcMission	(6161 )
	AddNpcMission	(6166 )
		
end


---------------------------------------------------------
--							--
--							--
--		јУДЙКҐБЦ[ВеїЛјТµДКШГЕИЛ]			--
--							--
--		271Ј¬1775			--
----------------------------------------------------------
function el_talk16 ()
	
	Talk( 1, "ВеїЛјТµДКШГЕИЛ: ОТКЗВеїЛґуИЛµДЦТКµјТЖН,ЛдИ»ЛыєЬІРИМ,µ«КЗХвІўІ»·Б°­ОТРАЙНЛыµДДЬБ¦єНЙнІД.")
	Text( 1, "ОТТЄИҐјЕДЇЦ®Лю1ІгЈЎ", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasMission,1213 )
	TriggerAction( 1, GoTo, 352, 378, "lonetower")
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "ВеїЛјТµДКШГЕИЛ:јЕДЇЦ®ЛюЦ®ЛщТФјЕДЇКЗТтОЄГ»УРјёёц»оИЛ" )
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 1 )


	Talk( 3, "ВеїЛјТµДКШГЕИЛ:ЕуУСДг»№Г»ЅУ КШГЕИЛНёВ¶µДРЕПў ХвёцИООс°Й?" )
	AddNpcMission	(6140 )
	
end

---------------------------------------------------------
--							--
--							--
--		јЕДЇЦ®Лю1Іг[ВеїЛјТµДДРУ¶]			--
--							--
--		260,257			--
----------------------------------------------------------
function el_talk17 ()
	Talk( 1, " ВеїЛјТµДДРУ¶: ЦЪЛщЦЬЦЄ,Т»ДїБЛИ»,ОТ±ИВеїЛЛ§,ОЄКІГґЛыµДЗйИЛГЗІ»ХвСщПл......")
	Text( 1, "ОТТЄИҐКҐБЦЈЎ", JumpPage, 2 )

	InitTrigger()
	TriggerAction( 1, GoTo, 275, 1775, "garner")
	Talk( 2, "ВеїЛјТµДДРУ¶:УРїХіЈАґНж,№В¶АµДК±єтЎўїмАЦµДК±єтєНІ»ЦЄµАКЗ·сїмАЦµДК±єт..." )
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 1 )

	AddNpcMission	(6141 )
	AddNpcMission	(6142 )
	AddNpcMission	(6143 )
	
end

---------------------------------------------------------
--							--
--							--
--		јЕДЇЦ®Лю2Іг[ВеїЛјТµДЕ®У¶]			--
--							--
--		151Ј¬134			--
----------------------------------------------------------
function el_talk18 ()
	Talk( 1, "ВеїЛјТµДЕ®У¶: ЧчОЄТ»ёцЕ®У¶І»ДЬІ»№ШЧўЧФјєЦчИЛµДЛЅЙъ»о,·сФтИХЧУ»бёьјУОЮБД.")


	AddNpcMission	(6144 )
	AddNpcMission	(6145 )
	AddNpcMission	(6146 )
	
end

---------------------------------------------------------
--							--
--							--
--		јЕДЇЦ®Лю3Іг[ВеїЛјТµДРЎГШ]			--
--							--
--		63Ј¬311			--
----------------------------------------------------------
function el_talk19 ()
	Talk( 1, " ВеїЛјТµДРЎГШ: ОТЦЄµАОТЖЇББ,І»ТЄґ№ПСОТ.")


	AddNpcMission	(6147 )
	AddNpcMission	(6148 )
	AddNpcMission	(6149 )
	
end

---------------------------------------------------------
--							--
--							--
--		јЕДЇЦ®Лю4Іг[ВеїЛјТµДКШ»¤ХЯ]			--
--							--
--		261Ј¬70			--
----------------------------------------------------------
function el_talk20 ()
	Talk( 1, "ВеїЛјТµДКШ»¤ХЯ: КШ»¤ХЯКЗУГАґЧрѕґµД.ВеїЛКІГґК±єтІЕДЬГч°ЧХвёцµААнДШ")


	AddNpcMission	(6150 )
	AddNpcMission	(6151 )
	AddNpcMission	(6152 )
	
end

---------------------------------------------------------
--							--
--							--
--		јЕДЇЦ®Лю5Іг[ВеїЛјТµД№ЬјТ]			--
--							--
--		542Ј¬54			--
----------------------------------------------------------
function el_talk21 ()
	Talk( 1, "ВеїЛјТµД№ЬјТ: №ЬјТ№ЬјТ,ЦчИЛІ»№ЬѕНКЗОТµДјТ.")


	AddNpcMission	(6153 )
	AddNpcMission	(6154 )
	AddNpcMission	(6155 )
end

---------------------------------------------------------
--							--
--							--
--		јЕДЇЦ®Лю6Іг[Д§НхВеїЛµДЗйИЛ]			--
--							--
--		541Ј¬268			--
----------------------------------------------------------
function el_talk22 ()
	Talk( 1, "Д§НхВеїЛµДЗйИЛ: ОТїЙДЬІ»КЗRockЧоГААцµДЗйИЛ,µ«Т»¶ЁКЗЧо»ЁРДµДТ»ёц.")


	AddNpcMission	(6156 )
	AddNpcMission	(6157 )
	AddNpcMission	(6158 )
	
end

---------------------------------------------------------
--							--
--							--
--		µШУь4Іг[ВеїЛјТµДНъІЖ]			--
--							--
--		154,912			--
----------------------------------------------------------
function el_talk23 ()
	Talk( 1, "ВеїЛјТµДНъІЖ: НфНфНфНфНфНфНф...ДгНф,ОТНф,ґујТНф!")


	AddNpcMission	(6159 )
	AddNpcMission	(6160 )

end


function el_talk24 ()

	Talk (1, "Страница: Осенний Тур! Добро пожаловать на остров, это мое первое руководство, я надеюсь вы хорошо проведёте время. Спасибо!") 

	AddNpcMission	(6322)	--1-Юность - Проблема Облака(Завершение)
	AddNpcMission	(6323)	--2-Просьба странницы
	AddNpcMission	(6324)	--3-Обожание странницы

--	AddNpcMission	(6162)
--	AddNpcMission	(6163)
--	AddNpcMission	(6164)
--	AddNpcMission	(6165)
end

---------------------------------------------------------
--							--
--							--
--		ДАРИТЕЛЬ ПОДАРКОВ			--
--							--
--		1307,500			--
----------------------------------------------------------
function pre_talk()
	Talk( 1, "Даритель Подарков: Привет, я дарую подарки. Когда-то я давал тебе награду. Надеюсь, она тебе понравилась.")

	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1872)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1872, 1, 4)
	TriggerFailure( 1, JumpPage, 2)
	Text( 1, "Получить сундук с монетами фей", MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1570)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1570, 1, 4)
	TriggerFailure( 1, JumpPage, 2)
	Text( 1, "Получить запечатаный сундук фей", MultiTrigger, GetMultiTrigger(), 1) 

	InitTrigger()
	TriggerCondition( 1, HasNoItem,  1571)
	TriggerCondition(1, HasLeaveBagGrid, 1)
	TriggerAction( 1, GiveItem, 1571, 1, 4)
	TriggerFailure( 1, JumpPage, 2)
	Text( 1, "Получить сундук повелителя фей", MultiTrigger, GetMultiTrigger(), 1) 

	Talk( 2, "Даритель Подарков: У тебя уже есть такой сундук, или в твоей сумке слишком мало места для него.")
end

-----------------------------------------------------------------------------
-- °ЧТшіЗ-----ЛДЛТРЎјвµ¶єЕЎўЙєєчєЕЎўѕЮѕЁєЕЈЁЕдєПіМРтРЮёДµДґ¬ІХ·З·ЁµАѕЯОКМвЈ©
-----------------------------------------------------------------------------

function k_talk001()

	Talk( 1, "... ..." )

end


---------------------------------------------------------
--							--
--							--
--		ПДµє[ОчГЕЗм]			--
--							--
--		3734Ј¬2661			--
----------------------------------------------------------
function el_talk25 ()
	Talk( 1, "ОчГЕЗм: ОчГЕОТЖдКµКЗёцХэѕ­ИЛ,°®Т»ёцИЛУРКІГґґн?Из№ыУРАґЙъ,ОТПЈНыФЪЛщУРДРИЛЦ®З°УцµЅЛэ.")

---------------------ЗпµєїЄ·ў
	AddNpcMission	(6176 )
	AddNpcMission	(6178 )
	AddNpcMission	(6181 )
	AddNpcMission	(6183 )
	
end

---------------------------------------------------------
--							--
--							--
--		ПДµєґ«ЛНК№Ў¤°¬ГЙ			--
--							--
--		3714Ј¬2664			--
----------------------------------------------------------
function el_talk26 ()
	Talk( 1, " ПДµєґ«ЛНК№Ў¤°¬ГЙ: ТтОЄОТ°®ЙПВГРР,ЛщТФОТЧцБЛґ«ЛНК№,ЛН±рИЛИҐВГРР.")
	Text( 1, "ОТТЄИҐЗпµє!", JumpPage, 2 )

	InitTrigger()
	TriggerCondition( 1, HasMoney, 500 )
	TriggerAction( 1, TakeMoney, 500 )
	TriggerAction( 1, GoTo, 2414,3174, "darkblue")
	TriggerFailure( 1, JumpPage, 3 )
	Talk( 2, "ПДµєґ«ЛНК№Ў¤°¬ГЙ:К±їМПнКЬИЛЙъµДГАѕ°..." )
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 1 )

	Talk( 3, "ПДµєґ«ЛНК№Ў¤°¬ГЙ:ЕуУС,ДгєГґхТІґш500їйіцГЕ°Ў!·сФт±рИЛ»бИПОЄДгГ»ГжЧУ" )
end

----------------------------------------------------------

	--КҐµ®ґе[міР»МШ]		

--		221150,278125				
----------------------------------------------------------
-----------------------------------------------------------ХвАпїЄКјP»°БДМм
function el_talk29 ()
	
	
	Talk( 1, "міР»МШ:КҐµ®їмАЦ!»ЄАцОВЬ°µДКҐµ®ЅЪФхГґїЙТФГ»УРГАО¶µДКҐµ®СзДШ?" )		

	
	Text(1, "Cooking delicious turkey meat", JumpPage, 2)
	Text(1, "Cook Christmas Dinner", JumpPage, 5)
	
	
---------------------ЕлµчГАО¶µД»рј¦Ив
	InitTrigger()
	TriggerCondition( 1, HasItem, 2886, 10 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2886,10 )
	TriggerAction( 1, GiveItem, 2895, 1 , 4)
	TriggerAction( 1, JumpPage, 3 )
	TriggerFailure( 1, JumpPage, 4)
	Talk( 2, "міР»МШ:ОТРиТЄФ­ІДБП10ёц»рј¦Ив,µ±И»Дг»№ТЄЦ§ё¶ёшОТ10000єЈµБ±ТµДРБїа·С")
	Text(2, "Подтвердить to cook",  MultiTrigger, GetMultiTrigger(), 1)

	Talk(3, "міР»МШ:ХвКЗОТѕ«РДЕлµчµДГАО¶»рј¦Ив,ёПїміўіў,О¶µАФхГґСщ?" )

	Talk( 5, "міР»МШ:ЧцКҐµ®ґуІНа¶,ГїИЛЦ»ПЮИэґОЕ¶!")
	Text(5, "The first Christmas Cooking Contest",  JumpPage, 6)
	Text(5, "Second Set of Christmas Dinner",  JumpPage, 7)
	Text(5, "Third time making Christmas Dinner", JumpPage, 8)
	---------------------ЕлµчКҐµ®ґуІН
	InitTrigger()
	TriggerCondition( 1, NoRecord, 815 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 815 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 9 )
	Talk( 6, "To make a good Christmas Dinner is not simple. I required 10 slices of Tasty Turkey Meat and 1 Christmas Rose. Christmas Rose seems to be found in the Item Mall. Beside paying me 10000G for the troublle, you can only make the Christmas Dinner 3 times.")
	Text( 6, "Подтвердить to cook",  MultiTrigger, GetMultiTrigger(), 1)

	

	---------------------ЕлµчКҐµ®ґуІН
	InitTrigger()
	TriggerCondition( 1, HasRecord, 815 )
	TriggerCondition( 1, NoRecord, 816 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney,1000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction(1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 816 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage, 10 )
	Talk(7, "Making Christmas Dinner again? I required 10 slices of Tasty Turkey Meat and 1 Christmas Rose. Christmas Rose seems to be found in the Item Mall. Beside paying me 1000000G for the troublle, you can only make the Christmas Dinner 3 times.")
	Text( 7, "Подтвердить to cook",  MultiTrigger, GetMultiTrigger(), 1)

	---------------------ЕлµчКҐµ®ґуІН
	InitTrigger()
	TriggerCondition( 1, HasRecord, 816 )
	TriggerCondition( 1, NoRecord, 817 )
	TriggerCondition( 1, HasItem, 2895, 10 )
	TriggerCondition( 1, HasItem, 2894, 1 )
	TriggerCondition( 1, HasMoney, 10000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000000 )
	TriggerAction( 1, TakeItem, 2895,10 )
	TriggerAction( 1, TakeItem, 2894,1 )
	TriggerAction( 1, GiveItem, 2898, 1 , 4)
	TriggerAction( 1, SetRecord, 817 )
	TriggerAction( 1, JumpPage, 12 )
	TriggerFailure( 1, JumpPage,11 )
	Talk(8, "Making Christmas Dinner again? I required 10 slices of Tasty Turkey Meat and 1 Christmas Rose. Christmas Rose seems to be found in the Item Mall. Besides paying me 10000G for the troublle, you can only make the Christmas Dinner 3 times.")
	Text( 8, "Подтвердить to cook",  MultiTrigger, GetMultiTrigger(), 1)
	Talk( 9, "міР»МШ:ДъЙнЙПЛЖєхГ»УРЧг№»УГАґЕлЦЖµДОпЖ·»тЅрЗ®°Ў!ДъµД±і°ьЦБЙЩТЄУРТ»ёцїХёсЕ¶.ДгИ·¶ЁКЗµЪТ»ґОЧцКҐµ®ґуІНВр?Ц»ДЬЧц3ґО.")
	Talk( 10, "міР»МШ:ДъЙнЙПЛЖєхГ»УРЧг№»УГАґЕлЦЖµДОпЖ·»тЅрЗ®°Ў!ДъµД±і°ьЦБЙЩТЄУРТ»ёцїХёсЕ¶.ДгИ·¶ЁКЗµЪ¶юґОЧцКҐµ®ґуІНВр?Ц»ДЬЧц3ґОЕ¶.")
	Talk( 11, "міР»МШ:ДъЙнЙПЛЖєхГ»УРЧг№»УГАґЕлЦЖµДОпЖ·»тЅрЗ®°Ў!ДъµД±і°ьЦБЙЩТЄУРТ»ёцїХёсЕ¶.ДгИ·¶ЁКЗµЪИэґОЧцКҐµ®ґуІНВр?Ц»ДЬЧц3ґОЕ¶.")
	Talk( 4, "міР»МШ:ДъЙнЙПЛЖєхГ»УРЧг№»УГАґЕлЦЖµДОпЖ·»тЅрЗ®°Ў!ЗлИ·±ЈДъµД±і°ьОґЛш¶Ё,ІўЗТЦБЙЩТЄУРТ»ёцїХёсЕ¶.")
	Talk(12, "міР»МШ:ХвКЗОТѕ«РДЕлµчµДКҐµ®ґуІН,ёПїміўіў,О¶µАФхГґСщ?" )
	AddNpcMission	(6191 )
end 

------------------------------------------------------------
-- КҐµ®ґе-----КҐµ®АПИЛµДПґТВ»ъ
------------------------------------------------------------
function el_talk30()
	
	InitFuncList()
	AddFuncList( GiveItem,	0817	,	1	,	4)
	AddFuncList( GiveItem,	0818	,	1	,	4)
	AddFuncList( GiveItem,	0819	,	1	,	4)
	AddFuncList( GiveItem,	0867	,	1	,	4)
	AddFuncList( GiveItem,	0868	,	1	,	4)
	AddFuncList( GiveItem,	0869	,	1	,	4)
	AddFuncList( GiveItem,	0872	,	1	,	4)
	AddFuncList( GiveItem,	0873	,	1	,	4)
	AddFuncList( GiveItem,	0874	,	1	,	4)
	AddFuncList( GiveItem,	1630	,	2	,	4)
	AddFuncList( GiveItem,	1631	,	1	,	4)
	AddFuncList( GiveItem,	1632	,	1	,	4)
	AddFuncList( GiveItem,	1633	,	2	,	4)
	AddFuncList( GiveItem,	1634	,	1	,	4)
	AddFuncList( GiveItem,	1635	,	1	,	4)
	AddFuncList( GiveItem,	1636	,	2	,	4)
	AddFuncList( GiveItem,	1637	,	1	,	4)
	AddFuncList( GiveItem,	1638	,	1	,	4)
	AddFuncList( GiveItem,	1639	,	2	,	4)
	AddFuncList( GiveItem,	1640	,	1	,	4)
	AddFuncList( GiveItem,	1641	,	1	,	4)
	AddFuncList( GiveItem,	1642	,	2	,	4)
	AddFuncList( GiveItem,	1643	,	1	,	4)
	AddFuncList( GiveItem,	1644	,	1	,	4)
	AddFuncList( GiveItem,	3360	,	1	,	4)
	AddFuncList( GiveItem,	3361	,	1	,	4)
	AddFuncList( GiveItem,	3362	,	1	,	4)
	AddFuncList( GiveItem,	3363	,	1	,	4)
	AddFuncList( GiveItem,	3364	,	1	,	4)
	AddFuncList( GiveItem,	3365	,	1	,	4)
	AddFuncList( GiveItem,	3366	,	1	,	4)
	AddFuncList( GiveItem,	3367	,	1	,	4)
	AddFuncList( GiveItem,	3425	,	1	,	4)
	AddFuncList( GiveItem,	3426	,	1	,	4)
	AddFuncList( GiveItem,	3427	,	1	,	4)
	AddFuncList( GiveItem,	3428	,	1	,	4)
	AddFuncList( GiveItem,	3429	,	1	,	4)
	AddFuncList( GiveItem,	3430	,	1	,	4)
	AddFuncList( GiveItem,	3431	,	1	,	4)
	AddFuncList( GiveItem,	3432	,	1	,	4)
	AddFuncList( GiveItem,	3433	,	1	,	4)
	AddFuncList( GiveItem,	1804	,	1	,	4)
	AddFuncList( GiveItem,	1805	,	1	,	4)
	AddFuncList( GiveItem,	1806	,	1	,	4)
	AddFuncList( GiveItem,	1807	,	1	,	4)
	AddFuncList( GiveItem,	1808	,	1	,	4)
	AddFuncList( GiveItem,	1809	,	1	,	4)
	AddFuncList( GiveItem,	1810	,	1	,	4)
	AddFuncList( GiveItem,	1811	,	1	,	4)
	AddFuncList( GiveItem,	1787	,	1	,	4)
	AddFuncList( GiveItem,	1788	,	1	,	4)
	AddFuncList( GiveItem,	1789	,	1	,	4)
	AddFuncList( GiveItem,	1790	,	1	,	4)
	AddFuncList( GiveItem,	1791	,	1	,	4)
	AddFuncList( GiveItem,	1792	,	1	,	4)
	AddFuncList( GiveItem,	1793	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)
	AddFuncList( GiveItem,	3932	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3930	,	1	,	4)
	AddFuncList( GiveItem,	3931	,	1	,	4)

	InitTrigger()
	TriggerCondition( 1, HasItem, 3927, 1 )
	TriggerCondition( 1, HasMoney, 200 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 200 )
	TriggerAction( 1, TakeItem, 3927, 1 )
	TriggerAction( 1, RandFunction, GetFuncList(), GetNumFunc() )
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 1, "КҐµ®їмАЦ!ХвКЗТ»МЁ№ЕАПµДЗеПґ»ъ,ФЪХвАпїЙТФПґµУДгµДТ»ЗР,ДгРиТЄЗеПґГґ?ГїґО200G." )
	Text( 1, "Cleanse Mud", MultiTrigger, GetMultiTrigger(), 1)
	Text( 1, "Cleanse Christmas Box", JumpPage, 3)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2892, 1 )
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, TakeItem, 2892, 1 )
	TriggerAction( 1, GiveItem, 2893, 1 , 4)
	TriggerAction( 1, JumpPage, 4)
	TriggerFailure( 1, JumpPage, 2 )
	Talk( 3, "Woah! What a dirty box! You need to pay 10000G to clean such a dirty box." )
	Text( 3, "Подтвердить to clean", MultiTrigger, GetMultiTrigger(), 1)
	Talk( 4, "What a beautiful chest! Open it for some surprises" )
	Talk( 2, "Failed to clean the item. Insufficient gold or does not possess the required item" )
	AddNpcMission	(6195 )
end


---------------------------------------------------------
--							--
--							--
--		±щАЗ±¤[КҐµ®АПИЛВуИр]			--
--							--
--		ЈЁ1216Ј¬550Ј©			--
----------------------------------------------------------
function el_talk27 ()
	Talk( 1, "ВуИр: КҐµ®їмАЦ!ФёДгµГµЅКАЙПЧоХжЦїГАєГµДЧЈёЈ.ПлТЄДГµЅЧоУХИЛµДКҐµ®АсОпВр?ИҐЙМіЗВтТ»ХЕКҐµ®»¤ЛНЧКёсЦ¤ДгѕНїЙТФФЪОТХвАпЅУИЎ»¤ЛНКҐµ®АПИЛµДИООсБЛ.")
	--------------»¤ЛНКҐµ®АПИЛ
	--AddNpcMission	(6185)
end


---------------------------------------------------------
--							--
--							--
--		±щј«І№ёшХѕ[КҐµ®АПИЛїЛИрЛ№ДЄЛ№]		--
--							--
--		ЈЁ2111Ј¬557Ј©			--
----------------------------------------------------------
function el_talk28 ()
	Talk( 1, "їЛИрЛ№ДЄЛ№: КҐµ®їмАЦ!ДгМэЛµ№эКҐµ®ґеВр?ДЗКЗТ»ёцідВъїмАЦµДМмМГ.")
	--------------»¤ЛНКҐµ®АПИЛ
	--AddNpcMission	(6186)

end

---------------------------------КҐµ®ЙМИЛРР»б»бі¤
function Xmas_talk01 ()
	Talk( 1, "КҐµ®ЙМИЛРР»б»бі¤:Merry Christmas~ОТОЄХвёцГААцµДКҐµ®ЅЪЧј±ёБЛєЬ¶аµД»хОпЕ¶,ДгУРРЛИ¤ПлїґТ»ПВВр?")
	Text( 1, "ИГОТїґїґДгХвУРКІГґєГ¶«Оч°Й." , JumpPage , 2 )
	Text( 1, "ЛгБЛЈ¬ОТГ»їХїґ", CloseTalk )

	Talk( 2, "ОТХвАпµД№жѕШєН±рµДµШ·ЅїЙІ»Т»СщЕ¶,Ц»їЙТФК№УГКҐµ®УІ±ТАґ№єВт.")
	Text( 2, "Power of Frost", JumpPage , 3)
	Text( 2, "Power of Thunder", JumpPage , 4)
	Text( 2, "Power of Wind", JumpPage , 5)
	Text( 2, "Power of Flame", JumpPage , 6)
	Text( 2, "Potion of Lion", JumpPage , 7)
	Text( 2, "Potion of Eagle", JumpPage , 8)
	Text( 2, "Potion of Monkey", JumpPage , 9)
	Text( 2, "Next Page", JumpPage , 10)

	Talk( 10, "ОТХвАпµД№жѕШєН±рµДµШ·ЅїЙІ»Т»СщЕ¶,Ц»їЙТФК№УГКҐµ®УІ±ТАґ№єВт.")
	Text( 10, "Go back a page", JumpPage , 2)
	Text( 10, "Potion of Bull", JumpPage, 11)
	Text( 10, "Potion of Soul", JumpPage, 12)
	Text( 10, "28 Slot Inventory", JumpPage, 13)
	Text( 10, "Mordo", JumpPage, 14)
	Text( 10, "Party EXP Fruit", JumpPage, 15)
	Text( 10, "Voodoo Puppet", JumpPage, 16)
	Text( 10, "Next Page", JumpPage , 17)

	Talk( 17, "ОТХвАпµД№жѕШєН±рµДµШ·ЅїЙІ»Т»СщЕ¶,Ц»їЙТФК№УГКҐµ®УІ±ТАґ№єВт.")
	Text( 17, "Go back a page", JumpPage , 10)
	Text( 17, "Novice Self Destruct", JumpPage, 18)
	Text( 17, "Fruit of Growth", JumpPage, 19)
	Text( 17, "КҐµ®АПИЛµДАЎФщ", JumpPage, 20)

	Talk( 3, "¶Т»»±щЦ®Б¦µД»°ЧЬ№ІРиТЄГж¶о250WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 270, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 4, "¶Т»»АЧЦ®Б¦µД»°ЧЬ№ІРиТЄГж¶о250WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 269, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "¶Т»»·зЦ®Б¦µД»°ЧЬ№ІРиТЄГж¶о250WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 268, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "¶Т»»СЧЦ®Б¦µД»°ЧЬ№ІРиТЄГж¶о250WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 250 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 250 )
	TriggerAction( 1, GiveItem, 267, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "¶Т»»РЫКЁТ©јБµД»°ЧЬ№ІРиТЄГж¶о50WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 897, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "¶Т»»УҐСЫТ©јБµД»°ЧЬ№ІРиТЄГж¶о50WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 894, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "¶Т»»БйєпТ©јБµД»°ЧЬ№ІРиТЄГж¶о50WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 893, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "¶Т»»ВщЕЈТ©јБµД»°ЧЬ№ІРиТЄГж¶о50WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 895, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "¶Т»»КҐБйТ©јБµД»°ЧЬ№ІРиТЄГж¶о50WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 896, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "¶Т»»28ёс±і°ьµД»°ЧЬ№ІРиТЄГж¶о1000WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 3088, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "¶Т»»Д¦¶№РЎЧУµД»°ЧЬ№ІРиТЄГж¶о1000WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 680, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "¶Т»»Чй¶Уѕ­Сй№ыµД»°ЧЬ№ІРиТЄГж¶о80WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 80 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 80 )
	TriggerAction( 1, GiveItem, 849, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "¶Т»»МжЙн±¦±¦µД»°ЧЬ№ІРиТЄГж¶о55WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 55 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 55 )
	TriggerAction( 1, GiveItem, 3047, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 18, "¶Т»»іхј¶ѕ«БйЧФ±¬µД»°ЧЬ№ІРиТЄГж¶о500WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 500 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 500 )
	TriggerAction( 1, GiveItem, 610, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 18, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)
	
	Talk( 19, "¶Т»»јУЛЩіЙі¤№ыµД»°ЧЬ№ІРиТЄГж¶о20WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 578, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 19, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 20, "¶Т»»КҐµ®АПИЛµДАЎФщµД»°ЧЬ№ІРиТЄГж¶о2000WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 2877, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 20, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "Р»Р»ДгµД№в№Л,ЧЈДгКҐµ®Удїм!")

	Talk( 26, "Дг±і°ьДЪєГПуГ»УРЧг№»µДКҐµ®УІ±ТЕ¶,ТІУРїЙДЬДгµД±і°ьГ»їХёс»т±і°ьТСЛш.")
end

-------------------------------------------------------------------КҐµ®ФУ»хЙМA
function Xmas_talk02 ()
	Talk( 1, "КҐµ®ФУ»хЙМ:КҐµ®ЅЪµЅА­~ОТОЄХвёцОВЬ°µДКҐµ®Чј±ёБЛєЬ¶а»хОп,УРРЛИ¤їґТ»ПВВр?ДгїП¶Ё»бПІ»¶µД!")
	Text( 1, "ИГОТїґїґДгХвУРКІГґєГ¶«Оч°Й." , JumpPage , 2 )
	Text( 1, "ЛгБЛЈ¬ОТГ»їХїґ", CloseTalk )

	Talk( 2, "ОТХвАпµД№жѕШєН±рµДµШ·ЅїЙІ»Т»СщЕ¶,Ц»їЙТФК№УГКҐµ®УІ±ТАґ№єВт.")
	Text( 2, "Gold Axe", JumpPage , 3)
	Text( 2, "Gold Pickaxe", JumpPage , 4)
	Text( 2, "Unique Necklace Voucher", JumpPage , 5)
	Text( 2, "Unique Coral Voucher", JumpPage , 6)
	Text( 2, "Lock of Mystic", JumpPage , 7)
	Text( 2, "Super Rechargeable Battery", JumpPage , 8)
	Text( 2, "ЖшЗтУОП·ИЇ", JumpPage , 9)
	Text( 2, "Next Page", JumpPage , 10)

	Talk( 10, "ОТХвАпµД№жѕШєН±рµДµШ·ЅїЙІ»Т»СщЕ¶,Ц»їЙТФК№УГКҐµ®УІ±ТАґ№єВт.")
	Text( 10, "Go back a page", JumpPage , 2)
	Text( 10, "єА»ЄАс»Ё", JumpPage, 11)
	Text( 10, "ѕХРНАс»Ё", JumpPage, 12)
	Text( 10, "»ЁЗт", JumpPage, 13)
	Text( 10, "Golden Apple", JumpPage, 14)
	Text( 10, "Intelligence fruit", JumpPage, 15)
	Text( 10, "Mystic Clover", JumpPage, 16)
	Text( 10, "Р°¶сНБЦшЗхі¤ХЩ»ЅИЇ", JumpPage , 17)

	Talk( 3, "¶Т»»ёЯј¶·ҐДѕё«µД»°ЧЬ№ІРиТЄГж¶о50WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 207, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "¶Т»»ёЯј¶їуёдµД»°ЧЬ№ІРиТЄГж¶о50WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 208, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "¶Т»»ёЯј¶ПоБґ¶Т»»ИЇµД»°ЧЬ№ІРиТЄГж¶о1000WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 581, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "¶Т»»ёЯј¶±ґїЗ¶Т»»ИЇµД»°ЧЬ№ІРиТЄГж¶о1000WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 582, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "¶Т»»ГФЦ®ЛшµД»°ЧЬ№ІРиТЄГж¶о15WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 15 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 15 )
	TriggerAction( 1, GiveItem, 2440, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "¶Т»»ёЯј¶ідµзµзіШµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1024, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "¶Т»»ЖшЗтУОП·ИЇµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3083, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "¶Т»»єА»ЄАс»ЁµД»°ЧЬ№ІРиТЄГж¶о9WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 9 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 9 )
	TriggerAction( 1, GiveItem, 3082, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "¶Т»»ѕХРНАс»ЁµД»°ЧЬ№ІРиТЄГж¶о9WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 9 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 9 )
	TriggerAction( 1, GiveItem, 3081, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "¶Т»»»ЁЗтµД»°ЧЬ№ІРиТЄГж¶о15WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 15 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 15 )
	TriggerAction( 1, GiveItem, 3080, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "¶Т»»ЅрЖ»№ыµД»°ЧЬ№ІРиТЄГж¶о50WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 50 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 50 )
	TriggerAction( 1, GiveItem, 3291, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "¶Т»»ЦЗ»Ы№ыµД»°ЧЬ№ІРиТЄГж¶о20WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 3290, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "¶Т»»ЙсЛгІЭµД»°ЧЬ№ІРиТЄГж¶о100WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3336, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 17, "¶Т»»Р°¶сµДНБЦшЗхі¤ХЩ»ЅИЇµД»°ЧЬ№ІРиТЄГж¶о2000WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3013, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 17, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "Р»Р»ДгµД№в№Л,ЧЈДгКҐµ®Удїм!")

	Talk( 26, "Дг±і°ьДЪєГПуГ»УРЧг№»µДКҐµ®УІ±ТЕ¶,ТІУРїЙДЬДгµД±і°ьГ»їХёс»т±і°ьТСЛш.")
	AddNpcMission	(6197 )
end

-------------------------------------------------------------------КҐµ®ФУ»хЙМB
function Xmas_talk03 ()
	Talk( 1, "КҐµ®АсЖ·ЙМ:Merry Christmas~ОТОЄХвёцГААцµДКҐµ®ЅЪЧј±ёБЛєЬ¶аµД»хОпЕ¶,ДгУРРЛИ¤ПлїґТ»ПВВр?")
	Text( 1, "ИГОТїґїґДгХвУРКІГґєГ¶«Оч°Й." , JumpPage , 2 )
	Text( 1, "ЛгБЛЈ¬ОТГ»їХїґ", CloseTalk )

	Talk( 2, "ОТХвАпµД№жѕШєН±рµДµШ·ЅїЙІ»Т»СщЕ¶,Ц»їЙТФК№УГКҐµ®УІ±ТАґ№єВт.")
	Text( 2, "Pirate Captain 008 Summoning Scroll", JumpPage , 3)
	Text( 2, "Lizardman Warrior Commander Summon Scroll", JumpPage , 4)
	Text( 2, "Party EXP Fruit", JumpPage , 5)
	Text( 2, "Voodoo Puppet", JumpPage , 6)
	Text( 2, "Expert Monster Covenant", JumpPage , 7)
	Text( 2, "Standard Monster Covenant", JumpPage , 8)
	Text( 2, "Novice Monster Covenant", JumpPage , 9)
	Text( 2, "Next Page", JumpPage , 10)

	Talk( 10, "ОТХвАпµД№жѕШєН±рµДµШ·ЅїЙІ»Т»СщЕ¶,Ц»їЙТФК№УГКҐµ®УІ±ТАґ№єВт.")
	Text( 10, "Go back a page", JumpPage , 2)
	Text( 10, "Stone Catalyst", JumpPage, 11)
	Text( 10, "Liquid Catalyst", JumpPage, 12)
	Text( 10, "Food Catalyst", JumpPage, 13)
	Text( 10, "Special Catalyst", JumpPage, 14)
	Text( 10, "Bone Catalyst", JumpPage, 15)
	Text( 10, "Plant Catalyst", JumpPage, 16)
	Text( 10, "Fur Catalyst", JumpPage , 17)

	Talk( 3, "¶Т»»єЈµБґ¬і¤БгБг·ўХЩ»ЅИЇµД»°ЧЬ№ІРиТЄГж¶о2000WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3014, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "¶Т»»тбтжХЅКїНіБмХЩ»ЅИЇµД»°ЧЬ№ІРиТЄГж¶о2000WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 2000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 2000 )
	TriggerAction( 1, GiveItem, 3012, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "¶Т»»Чй¶Уѕ­Сй№ыµД»°ЧЬ№ІРиТЄГж¶о80WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 80 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 80 )
	TriggerAction( 1, GiveItem, 849, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "¶Т»»МжЙн±¦±¦µД»°ЧЬ№ІРиТЄГж¶о55WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 55 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 55 )
	TriggerAction( 1, GiveItem, 3047, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "¶Т»»ёЯј¶№ЦОпЖхФјµД»°ЧЬ№ІРиТЄГж¶о100WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 2607, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "¶Т»»ЦРј¶№ЦОпЖхФјµД»°ЧЬ№ІРиТЄГж¶о200WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 200 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 200 )
	TriggerAction( 1, GiveItem, 2606, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "¶Т»»іхј¶№ЦОпЖхФјµД»°ЧЬ№ІРиТЄГж¶о60WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 60 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 60 )
	TriggerAction( 1, GiveItem, 2605, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "¶Т»»КЇІДґЯ»ЇјБµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2625, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "¶Т»»ТєМеґЯ»ЇјБµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2638, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "¶Т»»КіІДґЯ»ЇјБµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2630, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "¶Т»»МШКвґЯ»ЇјБµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2634, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "¶Т»»№ЗН·ґЯ»ЇјБµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2635, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "¶Т»»ЦІОпґЯ»ЇјБµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2636, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 17, "¶Т»»Г«Ж¤ґЯ»ЇјБµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 2637, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 17, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "Р»Р»ДгµД№в№Л,ЧЈДгКҐµ®Удїм!")

	Talk( 26, "Дг±і°ьДЪєГПуГ»УРЧг№»µДКҐµ®УІ±ТЕ¶,ТІУРїЙДЬДгµД±і°ьГ»їХёс»т±і°ьТСЛш.")
end
-------------------------------------------------------------------КҐµ®ЙМИЛЎ¤ОТРРОТїб
function Xmas_talk04 ()
	Talk( 1, "КҐµ®ЙМИЛЎ¤ОТРРОТїб:АґАґАґ,ВтБЛОТµД¶«ОчЅсДкµДКҐµ®ЅЪДгЅ«ОЮ±ИРТёЈ,І»ТЄУМФҐАІ,АґїґПВ°Й~")
	Text( 1, "ИГОТїґїґДгХвУРКІГґєГ¶«Оч°Й." , JumpPage , 2 )
	Text( 1, "ЛгБЛЈ¬ОТГ»їХїґ", CloseTalk )

	Talk( 2, "ОТХвАпµД№жѕШєН±рµДµШ·ЅїЙІ»Т»СщЕ¶,Ц»їЙТФК№УГКҐµ®УІ±ТАґ№єВт.")
	Text( 2, "КҐµ®ЗйИЛСМ»Ё", JumpPage , 3)
	Text( 2, "КҐµ®їс»¶СМ»Ё", JumpPage , 4)
	Text( 2, "Heart Shape I", JumpPage , 5)
	Text( 2, "Heart Shape LOVE", JumpPage , 6)
	Text( 2, "Heart Shape U", JumpPage , 7)
	Text( 2, "Heart Shape ОТ", JumpPage , 8)
	Text( 2, "Heart Shape °®", JumpPage , 9)
	Text( 2, "Next Page", JumpPage , 10)

	Talk( 10, "ОТХвАпµД№жѕШєН±рµДµШ·ЅїЙІ»Т»СщЕ¶,Ц»їЙТФК№УГКҐµ®УІ±ТАґ№єВт.")
	Text( 10, "Go back a page", JumpPage , 2)
	Text( 10, "Heart Shape Дг", JumpPage, 11)
	Text( 10, "Rose", JumpPage, 12)
	Text( 10, "Devil Wings", JumpPage, 13)
	Text( 10, "Honey Chocolate", JumpPage, 14)

	Talk( 3, "¶Т»»КҐµ®ЗйИЛСМ»ЁµД»°ЧЬ№ІРиТЄГж¶о180WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 180 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 180 )
	TriggerAction( 1, GiveItem, 2870, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "¶Т»»КҐµ®їс»¶СМ»ЁµД»°ЧЬ№ІРиТЄГж¶о1000WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 1000 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 1000 )
	TriggerAction( 1, GiveItem, 2871, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "¶Т»»РДРНIµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3354, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "¶Т»»РДРНLOVEµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3355, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "¶Т»»РДРНUµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3356, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "¶Т»»РДРНОТµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3359, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "¶Т»»РДРН°®µД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3357, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "¶Т»»РДРНДгµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3358, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "¶Т»»Гµ№е»ЁµД»°ЧЬ№ІРиТЄГж¶о20WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 20 )
	TriggerAction( 1, GiveItem, 3343, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "¶Т»»єЪД§іб°тµД»°ЧЬ№ІРиТЄГж¶о100WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 906, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "¶Т»»МрГЫЗЙїЛБ¦µД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3077, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "Р»Р»ДгµД№в№Л,ЧЈДгКҐµ®Удїм!")

	Talk( 26, "Дг±і°ьДЪєГПуГ»УРЧг№»µДКҐµ®УІ±ТЕ¶,ТІУРїЙДЬДгµД±і°ьГ»їХёс»т±і°ьТСЛш.")
	AddNpcMission	(6199 )
end

-------------------------------------------------------------------КҐµ®ЙМИЛЎ¤ОТїбОТРР
function Xmas_talk05 ()
	Talk( 1, "КҐµ®ЙМИЛЎ¤ОТїбОТРР:ДгєГСЅ,КҐµ®їмАЦ!ОТєЬїбКЗ°Й,ОТµД¶«Оч±ИОТёьїб,АґїґПВ°Й~")
	Text( 1, "ИГОТїґїґДгХвУРКІГґєГ¶«Оч°Й." , JumpPage , 2 )
	Text( 1, "ЛгБЛЈ¬ОТГ»їХїґ", CloseTalk )

	Talk( 2, "ОТХвАпµД№жѕШєН±рµДµШ·ЅїЙІ»Т»СщЕ¶,Ц»їЙТФК№УГКҐµ®УІ±ТАґ№єВт.")
	Text( 2, "Vampiric Wings", JumpPage , 3)
	Text( 2, "Elven Wings", JumpPage , 4)
	Text( 2, "Dragon Wings", JumpPage , 5)
	Text( 2, "<јјЎ¤°ЧіХ>јјДЬКй", JumpPage , 6)
	Text( 2, "<јјЎ¤±ЙКУ>јјДЬКй", JumpPage , 7)
	Text( 2, "<јјЎ¤ґу±г>јјДЬКй", JumpPage , 8)
	Text( 2, "<јјЎ¤ЅрЗ®Ук>јјДЬКй", JumpPage , 9)
	Text( 2, "Next Page", JumpPage , 10)

	Talk( 10, "ОТХвАпµД№жѕШєН±рµДµШ·ЅїЙІ»Т»СщЕ¶,Ц»їЙТФК№УГКҐµ®УІ±ТАґ№єВт.")
	Text( 10, "Go back a page", JumpPage , 2)
	Text( 10, "<јјЎ¤ДЪїг>јјДЬКй", JumpPage, 11)
	Text( 10, "<јјЎ¤Ж­ЧУ>јјДЬКй", JumpPage, 12)
	Text( 10, "<јјЎ¤ЙµЧУ>јјДЬКй", JumpPage, 13)
	Text( 10, "<јјЎ¤РШХЦ>јјДЬКй", JumpPage, 14)

	Talk( 3, "¶Т»»Затріб°тµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 904, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "¶Т»»ѕ«БйЦ®ТнµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 935, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "¶Т»»ємБъіб°тµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 905, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "¶Т»»<јјЎ¤°ЧіХ>јјДЬКйµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1130, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "¶Т»»<јјЎ¤±ЙКУ>јјДЬКйµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1131, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "¶Т»»<јјЎ¤ґу±г>јјДЬКйµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1037, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "¶Т»»<јјЎ¤ЅрЗ®Ук>јјДЬКйµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1129, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "¶Т»»<јјЎ¤ДЪїг>јјДЬКйµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1038, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "¶Т»»<јјЎ¤Ж­ЧУ>јјДЬКйµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1132, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "¶Т»»<јјЎ¤ЙµЧУ>јјДЬКйµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1133, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "¶Т»»<јјЎ¤РШХЦ>јјДЬКйµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 1039, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "Р»Р»ДгµД№в№Л,ЧЈДгКҐµ®Удїм!")

	Talk( 26, "Дг±і°ьДЪєГПуГ»УРЧг№»µДКҐµ®УІ±ТЕ¶,ТІУРїЙДЬДгµД±і°ьГ»їХёс»т±і°ьТСЛш.")
end

-------------------------------------------------------------------КҐµ®ЙМИЛЎ¤С§ХЯ
function Xmas_talk06 ()
	Talk( 1, "КҐµ®ЙМИЛЎ¤С§ХЯ:Merry Christmas~ОТОЄХвёцГААцµДКҐµ®ЅЪЧј±ёБЛєЬ¶аµД»хОпЕ¶,ДгУРРЛИ¤ПлїґТ»ПВВр?")
	Text( 1, "ИГОТїґїґДгХвУРКІГґєГ¶«Оч°Й." , JumpPage , 2 )
	Text( 1, "ЛгБЛЈ¬ОТГ»їХїґ", CloseTalk )

	Talk( 2, "ОТХвАпµД№жѕШєН±рµДµШ·ЅїЙІ»Т»СщЕ¶,Ц»їЙТФК№УГКҐµ®УІ±ТАґ№єВт.")
	Text( 2, "Expert Voyager Study Book", JumpPage , 3)
	Text( 2, "Expert SealMaster Study book", JumpPage , 4)
	Text( 2, "Expert Cleric study book", JumpPage , 5)
	Text( 2, "Expert SharpShooter Study Book", JumpPage , 6)
	Text( 2, "Expert Champion Study Book", JumpPage , 7)
	Text( 2, "Crusader expert read", JumpPage , 8)
	Text( 2, "Standard Voyager study book", JumpPage , 9)
	Text( 2, "Next Page", JumpPage , 10)

	Talk( 10, "ОТХвАпµД№жѕШєН±рµДµШ·ЅїЙІ»Т»СщЕ¶,Ц»їЙТФК№УГКҐµ®УІ±ТАґ№єВт.")
	Text( 10, "Go back a page", JumpPage , 2)
	Text( 10, "Standard SealMaster study book", JumpPage, 11)
	Text( 10, "Standard Cleric study book", JumpPage, 12)
	Text( 10, "Standard SharpShooter study book", JumpPage, 13)
	Text( 10, "Standard Champion study book", JumpPage, 14)
	Text( 10, "Standard Crusader Study Book", JumpPage, 15)
	Text( 10, "Intense Magic", JumpPage, 16)
	Text( 10, "Next Page", JumpPage , 17)

	Talk( 17, "ОТХвАпµД№жѕШєН±рµДµШ·ЅїЙІ»Т»СщЕ¶,Ц»їЙТФК№УГКҐµ®УІ±ТАґ№єВт.")
	Text( 17, "Go back a page", JumpPage , 10)
	Text( 17, "Sea Weed Killer", JumpPage, 18)
	Text( 17, "Icy Crystal", JumpPage, 19)
	Text( 17, "Power Sail", JumpPage, 20)
	Text( 17, "Crystalline Blessing", JumpPage, 21)
	Text( 17, "Magical Clover", JumpPage, 22)

	Talk( 3, "¶Т»»єЅєЈКїёЯј¶¶БОпµД»°ЧЬ№ІРиТЄГж¶о120WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3272, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 3, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 4, "¶Т»»·вУЎК¦ёЯј¶¶БОпµД»°ЧЬ№ІРиТЄГж¶о120WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3271, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 4, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 5, "¶Т»»КҐЦ°ХЯёЯј¶¶БОпµД»°ЧЬ№ІРиТЄГж¶о120WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3270, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 5, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 6, "¶Т»»ѕС»чКЦёЯј¶¶БОпµД»°ЧЬ№ІРиТЄГж¶о120WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3269, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 6, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 7, "¶Т»»ѕЮЅЈКїёЯј¶¶БОпµД»°ЧЬ№ІРиТЄГж¶о120WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3268, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 7, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 8, "¶Т»»Л«ЅЈКїёЯј¶¶БОпµД»°ЧЬ№ІРиТЄГж¶о120WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 120 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 120 )
	TriggerAction( 1, GiveItem, 3267, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 8, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 9, "¶Т»»єЅєЈКїЦРј¶¶БОпµД»°ЧЬ№ІРиТЄГж¶о100WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3266, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 9, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 11, "¶Т»»·вУЎК¦ЦРј¶¶БОпµД»°ЧЬ№ІРиТЄГж¶о100WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3265, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 11, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 12, "¶Т»»КҐЦ°ХЯЦРј¶¶БОпµД»°ЧЬ№ІРиТЄГж¶о100WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3264, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 12, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 13, "¶Т»»ѕС»чКЦЦРј¶¶БОпµД»°ЧЬ№ІРиТЄГж¶о100WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3263, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 13, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 14, "¶Т»»ѕЮЅЈКїЦРј¶¶БОпµД»°ЧЬ№ІРиТЄГж¶о100WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3262, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 14, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 15, "¶Т»»Л«ЅЈКїЦРј¶¶БОпµД»°ЧЬ№ІРиТЄГж¶о100WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 100 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 100 )
	TriggerAction( 1, GiveItem, 3261, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 15, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 16, "¶Т»»Д§Б¦ґЯ»ЇµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3300, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 16, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 18, "¶Т»»єЈІЭЗеіэјБµД»°ЧЬ№ІРиТЄГж¶о25WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 25 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 25 )
	TriggerAction( 1, GiveItem, 3114, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 18, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 19, "¶Т»»є®±щЛ®ѕ§µД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3463, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 19, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 20, "¶Т»»¶ЇБ¦·«µД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3046, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 20, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 21, "¶Т»»±щБй»¤УУµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3301, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 21, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 22, "¶Т»»Д§·ЁІЭµД»°ЧЬ№ІРиТЄГж¶о10WµДКҐµ®УІ±ТЕ¶")
	InitTrigger()
	TriggerCondition( 1, HasXmasYB, 10 )
	TriggerCondition( 1, HasLeaveBagGrid, 2 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeXmasYB, 10 )
	TriggerAction( 1, GiveItem, 3462, 1, 4 )
	TriggerAction( 1, JumpPage, 25 )
	TriggerFailure( 1, JumpPage, 26 )
	Text( 22, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk( 25, "Р»Р»ДгµД№в№Л,ЧЈДгКҐµ®Удїм!")

	Talk( 26, "Дг±і°ьДЪєГПуГ»УРЧг№»µДКҐµ®УІ±ТЕ¶,ТІУРїЙДЬДгµД±і°ьГ»їХёс»т±і°ьТСЛш.")
end

----------------------------------------------------КҐµ®ґеїЖ¶ч
function Xmas_talk07 ()
	Talk ( 1, "ОТМЦСбХвКҐЅаС©°ЧµД¶¬Мм.ЕуУСЈ¬ОЄКІГґІ»ЕЧЖъХвР©ОЮБДµДЗмЧЈ»о¶ЇіцИҐЙ±ВѕТ»·¬ДШ?°ЧТш,±щАЗєНЙіб°іЗНвУРРн¶аµД»рј¦,чзВ№єНС©ИЛ,ИҐёЙµфЛыГЗ,И»єу°СЦ¤ѕЭґш»ШАґЈ¬ОТІ»»бїчґэДгµД.")
--	Text ( 1, "ОТґшАґБЛТ»°Щёц»рј¦µДУрГ«", JumpPage, 2)
--	Text ( 1, "ОТґшАґБЛТ»°ЩёцчзВ№µДјвЅЗ", JumpPage, 3)
--	Text ( 1, "ОТґшАґБЛТ»°ЩёцС©ИЛµДСЫЗт", JumpPage, 4)
	Text ( 1, "ОТПлИҐКҐµ®ѕєјјіЎ", JumpPage, 5)
	Text ( 1, "ОЄКІГґОТГЗТЄЙ±ВѕХвР©їЙБЇµД№ЦОпДШ?", JumpPage, 10)

--	Talk ( 2, "ДгИ·¶ЁТЄУГХвТ»°Щёц»рј¦µДУрГ«ёъОТ»»Т»ёцКҐµ®АсєРВр?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2879, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2879, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpHuojiNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 2, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk ( 3, "ДгИ·¶ЁТЄУГХвТ»°ЩёцчзВ№µДјвЅЗёъОТ»»Т»ёцКҐµ®АсєРВр?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2881, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2881, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpMiluNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 3, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)
--
--	Talk ( 4, "ДгИ·¶ЁТЄУГХвТ»°ЩёцС©ИЛµДСЫЗтОТ»»Т»ёцКҐµ®АсєРВр?")
--	InitTrigger()
--	TriggerCondition( 1, HasItem, 2880, 100 )
--	TriggerCondition( 1, HasLeaveBagGrid, 1 )
--	TriggerCondition( 1, KitbagLock, 0 )
--	TriggerAction( 1, TakeItem, 2880, 100 )
--	TriggerAction( 1, GiveItem, 2882, 1, 4 )
--	TriggerAction( 1, CpXuerenNum )
--	TriggerAction( 1, JumpPage, 6 )
--	TriggerFailure( 1, JumpPage, 7 )
--	Text ( 4, "Подтвердить to exchange", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 5, "ОТГЗТ»№ІУР5ёцѕєјјіЎ,ДгПлИҐДДТ»ёцДШ?")
	Text ( 5, "КҐµ®ѕєјјіЎA", GoTosdBoss, 1 )
	Text ( 5, "КҐµ®ѕєјјіЎB", GoTosdBoss, 2 )
	Text ( 5, "КҐµ®ѕєјјіЎC", GoTosdBoss, 3 )
	Text ( 5, "КҐµ®ѕєјјіЎD", GoTosdBoss, 4 )
	Text ( 5, "КҐµ®ѕєјјіЎE", GoTosdBoss, 5 )

	Talk ( 6, "ЧЈДгУРёцїмАЦµДКҐµ®")

	Talk ( 7, "Дг±і°ьДЪєГПуГ»УРЧг№»µДµАѕЯЕ¶,ТІУРїЙДЬДгµД±і°ьТСЛш»тХЯ±і°ьДЪГ»УРїХёс.")

	Talk ( 10, "ёжЛЯДгёцГШГЬ,Из№ыДгГЗДЬЙПЅЙЧг№»КэБїµД№©Ж·ёшОТ,ДЗГґОТѕНДЬФЪКҐµ®ѕєјјіЎЦРХЩ»Ѕіцј«ЖдЗїґуµДєЪ°µBOSS,І»№эФхГґІЕДЬ»ч°ЬЛьГЗѕНКЗДгГЗёГїјВЗµДКВАІ!")

	AddNpcMission	(6187 )
	AddNpcMission	(6188 )
	AddNpcMission	(6189 )
	AddNpcMission	(6193 )
	AddNpcMission	(6204 )
end

----------------------------------------------------КҐµ®ґеКҐµ®АПИЛ
function Xmas_talk08 ()
	Talk ( 1, "КҐµ®АПИЛ:єЗєЗ~КҐµ®їмАЦ~~ОТХвАпїЙТФОЄґујТ¶Т»»КҐµ®ґеЧЁУГµД№єОпУІ±Т,Из№ыДгПлФЪХвёцКҐµ®ґеАпShoppingµД»°ДЗѕНХТОТєГБЛ.")

	Text ( 1, "ОТПл¶Т»»КҐµ®НтФЄУІ±Т", JumpPage, 2)
	Text ( 1, "ОТПл¶Т»»КҐµ®°ЩНтФЄУІ±Т", JumpPage, 3)
	Text ( 1, "ОТПл°СКҐµ®НтФЄУІ±Т¶Т»»»ШєЈµБ±Т", JumpPage, 4)
	Text ( 1, "ОТПл°СКҐµ®°ЩНтФЄУІ±Т¶Т»»»ШєЈµБ±Т", JumpPage, 5)
	Text ( 1, "ОТПл»Ш±щАЗ±¤", JumpPage, 6)

	Talk ( 2, "¶Т»»Т»ёцКҐµ®НтФЄУІ±ТРиТЄ10000µДєЈµБ±Т,ДгИ·ИПТЄ¶Т»»Вр?")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 10000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 10000 )
	TriggerAction( 1, GiveItem, 2962, 1, 4 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Text ( 2, "Подтвердить to redeem", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 3, "¶Т»»Т»ёцКҐµ®°ЩНтФЄУІ±ТРиТЄ100WµДєЈµБ±Т,ДгИ·ИПТЄ¶Т»»Вр?")
	InitTrigger()
	TriggerCondition( 1, HasMoney, 1000000 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeMoney, 1000000 )
	TriggerAction( 1, GiveItem, 2963, 1, 4 )
	TriggerAction( 1, JumpPage, 9 )
	TriggerFailure( 1, JumpPage, 10 )
	Text ( 3, "Подтвердить to redeem", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 4, "ДгИ·¶ЁТЄ°СКҐµ®НтФЄУІ±Т»»іЙ10000єЈµБ±ТВр?")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2962, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2962,1 )
	TriggerAction( 1, AddMoney, 10000 )
	TriggerFailure( 1, JumpPage, 11 )
	Text ( 4, "Подтвердить to redeem", MultiTrigger, GetMultiTrigger(), 1)

	Talk ( 5, "ДгИ·¶ЁТЄ°СКҐµ®°ЩНтФЄУІ±Т»»іЙ100WєЈµБ±ТВр?")
	InitTrigger()
	TriggerCondition( 1, HasItem, 2963, 1)
	TriggerCondition( 1, KitbagLock, 0 )
	TriggerAction( 1, TakeItem, 2963,1 )
	TriggerAction( 1, AddMoney, 1000000 )
	TriggerFailure( 1, JumpPage, 11 )
	Text ( 5, "Подтвердить to redeem", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerAction( 1, GoTo, 1318,510, "darkblue")
	Talk( 6, "ДгИ·¶ЁТЄАлїЄХвАп»ШµЅ±щАЗ±¤Вр?")
	Text( 6, "Teleport",MultiTrigger, GetMultiTrigger(), 1 )

	Talk ( 9, "ЧЈДгУРёцїмАЦµДКҐµ®ЅЪ~")
	Talk ( 10, "ДгµДЗ®І»№»Е¶,ТІУРїЙДЬДгµД±і°ьТСЛш¶Ё»тХЯГ»УРЧг№»µДїХёс.")
	Talk ( 11, "ДгГ»УРґЛµАѕЯ,ТІУРїЙДЬДгµД±і°ьТСЛш¶Ё.")
	AddNpcMission	(6201 )
	AddNpcMission	(6202 )
end

-----------------------------------------±щАЗ±¤КҐµ®ґеґ«ЛНК№
function movexmas_talk()
	Talk ( 1, "КҐµ®ґеґ«ЛНК№:Merry Christmas~ПлИҐКҐµ®ґеВрЈїПлИҐДгѕНЛµ°Ў,ДгІ»ЛµОТФхГґЦЄµАДШ?І»їЙДЬЛµДгІ»ПлИҐОТЖ«Ж«ЛНДгИҐ,ТІІ»їЙДЬДгПлИҐОТЖ«Ж«І»ЛНДгµД!")
	Text ( 1, "ОТПлИҐКҐµ®ґе", JumpPage, 2)
	Text ( 1, "ХвИЛєГВЮаВ,ОТ»№КЗЧЯБЛ", CloseTalk)


	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 11 )
	TriggerAction( 1, GoTo, 144,136, "07xmas" )
	TriggerCondition( 2, HasMoney, 500 )
	TriggerAction( 2, TakeMoney, 500 )
	TriggerAction( 2, GoTo, 144,136, "07xmas")
	TriggerFailure( 2, JumpPage, 3 )
	Talk( 2, "ГААцµДКҐµ®ґеПЦФЪХэФЪїЄ·ЕЖЪјд,Ц»ТЄЦ§ё¶ЗшЗш500єЈµБ±ТОТѕНїЙТФЛНДг№эИҐ,Из№ыДгКЗ10ј¶ТФПВµДРВКЦµД»°ОТїЙТФГв·СОЄДг·юОсЕ¶.")
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 2 )

	Talk( 3, "КҐµ®ґеґ«ЛНК№:Г»З®Вр?ДЗєЬ±§ЗёІ»ДЬОЄДг·юОсБЛЕ¶.")
	AddNpcMission	(6190 )
	AddNpcMission	(6192 )
	AddNpcMission	(6194 )
	AddNpcMission	(6196 )
	AddNpcMission	(6198 )
	AddNpcMission	(6200 )
end

---------------------------------------КҐµ®ѕєјјіЎґ«ЛНК№
function movexmas_talk01 ()
	Talk ( 1, "КҐµ®їмАЦ~ДгПл»ШµЅКҐµ®ґеВр?І»ФЩ¶аНж»бБЛВр?ДЗєГ,ОТХвАпµД·юОсїЙКЗИ«Гв·СµДЕ¶!")
	Text ( 1, "ОТПл»ШКҐµ®ґе", JumpPage, 2)


	InitTrigger()
	TriggerAction( 1, GoTo, 144,136, "07xmas")
	Talk( 2, "Чј±ёєГБЛВр?.")
	Text( 2, "Teleport",MultiTrigger, GetMultiTrigger(), 1 )
end

-------------------------------------ТФПВОЄНБЦшїс»¶ХЯ--------bragi
function Xmas_talk09 ()
	Talk ( 1, "КҐµ®уф»рФЪ»¶їмµДМш¶ЇЧЕ~")
	AddNpcMission	(6203 )
end

function Xmas_talk10 ()
	Talk ( 1, "НБЦшїс»¶ХЯ:ОЄБЛХвГААц»¶АЦµДЅЪИХ,АґєНОТГЗТ»ЖрО§ЧЕуф»рМшОи°Й!")
end

function Xmas_talk11 ()
	Talk ( 1, "НБЦшїс»¶ХЯ:С©»Ё...Оиµё...уф»р...»рј¦...С©ИЛ...КҐµ®Кч...АсОп...»№УР±ИХвёьНкГАµДКҐµ®ЅЪВр?")
end

function Xmas_talk12 ()
	Talk ( 1, "НБЦшїс»¶ХЯ:»№КЗО§ЧЕуф»р±ИЅПЕЇєН°Ў!ЕуУСЈ¬ТЄІ»ТЄАґТ»Жрїѕ»б»р,МшёцОиДШ?")
end

function Xmas_talk13 ()
	Talk ( 1, "НБЦшїс»¶ХЯ:ОТ»№КЗѕхµГОТµДОиЧЛІЕКЗЧо°фµДЈ¬ДгІ»ХвСщИПОЄВр?")
end

function Xmas_talk14 ()
	Talk ( 1, "НБЦшїс»¶ХЯ:ЅсМмµДНнІНКЗКІГґДШ?»бУРПгЕзЕзµД»рј¦Вр?єГПлДоВиВиµДКЦТХ°Ў.")
end

function Xmas_talk15 ()
	Talk ( 1, "НБЦшїс»¶ХЯ:ЛдИ»І»М«ПІ»¶Хвє®АдµДМмЖш,І»№эКҐµ®ЅЪµД·ХО§ХжєГ°Ў!єГїЄРД°Ў!")
end

-------------------------------------ТФПВОЄРЎ¶ЇОпИє------bragi
function Xmas_talk16 ()
	Talk ( 1, "РЎВ№°Я±И:Г»Аґ№эКҐµ®ґеГґ?ДгХжВдОй,ёжЛЯДг№ю,КҐµ®ґеЦРјдУРїГєЬґуµДКҐµ®Кч,ґ«Лµ¶ФХвКҐµ®КчРнФёКЗєЬБйСйµД.їмИҐКФКФ°Й~~~!№ю№ю,ЧЈДгКҐµ®їмАЦ!")
end

function Xmas_talk17 ()
	Talk ( 1, "±щБъИш·ЖА­:±рј·ОТ°Ў!РЎРДОТ·ў»рЧбДгГЗЕ¶!")
end

function Xmas_talk18 ()
	Talk ( 1, "РЎјЄГЧ:О№О№,±рµІЧЎОТВп,ОТТІПлТЄТ»·ЭАсОп!ѕНТ»·Э,їЙТФВр?")
end

function Xmas_talk19 ()
	Talk ( 1, "їмАЦµДС©НЮНЮ:ІЁ¶ыПИЙъ!ДгµДїЪґьАп¶јЧ°БЛР©КІГґ°Ў?УРМрМрµДМЗ№ыВр?УРЖЇББµДНжѕЯВр?")
end

function Xmas_talk20 ()
	Talk ( 1, "РЎГЁРБЛї:¶Ј¶Јµ±,¶Ј¶Јµ±,Бе¶щПм¶Јµ±~~~!№ю№ю.ЅсДкТ»¶ЁКЗёцїмАЦµДКҐµ®ЅЪ,ёжЛЯДгёцГШГЬЕ¶.ѕЭЛµКҐµ®ЅЪµ±МмОзТ№12µгµДК±єт,ЙсГШµДДжЧЄКҐµ®ґеИлїЪ»біцПЦФЪґеАп.±рНьБЛИҐїґїґЕ¶~~јЗµГ¶аґ©µг.")
end

function Xmas_talk21 ()
	Talk ( 1, "·ЙРЬГЁЕЙґп:УРЗЙїЛБ¦О¶µАµДЦсЛсВр?ёшОТТ»Р©!!")
end

function Xmas_talk22 ()
	Talk ( 1, "РЎВ·ТЧЛї:КҐµ®ЅЪї©!!ДгГЗїґ,ХвКЗОТВиВи°пОТРВВтµДєЈѕьГ±ЧУ,єЬЖЇББ°Й!")
end

function Xmas_talk23 ()
	Talk ( 1, "ІЁ¶ыПИЙъ:єГµДєГµДєўЧУГЗ,ОТХвЧј±ёБЛєЬ¶аАсОп,ГїёцИЛ¶ј»бУРµД,І»ТЄј·Е¶!")
end

function Xmas_talk24 ()
	Talk ( 1, "РЎМАД·:УРЛ­ФёТвєНОТТ»ЖрИҐґтС©ХМµДВр?І»№эПИЛµєГ,ОТТЄЧцЅ«ѕь!!!ЦХУРТ»МмОТ»бі¬№эїЖ¶чµД,ґшЧЕ»рј¦УрГ«ИҐХТЛыЦ¤ГчОТµДКµБ¦,ѕНКЗФЪКҐµ®ґеЦРПВ·ЅЕзИЄЙПГжµДДЗёцјТ»п.")
	AddNpcMission	(6205 )
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[ґфґфµДґфґф]			--
--							--
--		3901, 4301			--
----------------------------------------------------------
function peter_talk01 ()
	Talk( 1, "ґфґфµДґфґф: ±рїґОТЅРґфґфЈ¬ЖдКµОТТ»µгТІІ»ґфЈ¬ОТµДЦЗЙМїЙКЗёЯґп180Е¶ЈЎ")

end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[УОїНЎ¤ТБВк]			--
--							--
--		10802, 5602             		--
----------------------------------------------------------
function peter_talk02 ()
	Talk( 1, "УОїНЎ¤ТБВк:№эЅЪµДК±єт,·ЕПВЛщУРµД·ЧИЕ,АґХвАпєНґујТТ»Жр№эКҐµ®,КЗОТТ»ДкЦРЧоЗбЛЙµДКВ,Рк,І»ТЄёжЛЯ±рИЛОТКЗЛ­,Т»»бОТ»№ТЄИҐ°зіЙКҐµ®АПИЛ·ўЅ±Ж·ДШ,µЅК±єтїґДгДЬІ»ДЬИПіцОТАґ,№ю№ю№юЎЈ")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[ОчБЦµД°Ц°Ц]		--
--							--
--		11803, 6103			        --
----------------------------------------------------------
function peter_talk03 ()
	Talk( 1, "ОчБЦµД°Ц°Ц:ёжЛЯДгµД°Ц°Ц,ѕНЛµОТЛµµД,КҐµ®ЅЪёГёшєўЧУГЗБг»ЁЗ®,ТтОЄДгЧЬВтІ»И«ЛщУРЛыГЗ°®іФµДМЗ№ы,µ±И»,»№УРТ»ѕд,їґєГЧФјєµДєўЧУ,ЗЖ,ОТµДОчБЦѕНёъ¶ЄБЛЎЈ")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[УОїНЎ¤ОВЕ¬]			--
--							--
--		5904, 4704			--
----------------------------------------------------------
function peter_talk04 ()
	Talk( 1, "УОїНЎ¤ОВЕ¬: аЛ!КҐµ®їмАЦ,ДгТ»¶ЁєНОТТ»СщКЗАґХвАп№эКҐµ®µД°Й?№ю№ю,їмИҐХТКҐµ®ЙМИЛ,ЛыГЗУРєГ¶аєЬмЕµД¶«ОчДШ!")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[№юёщґуКе]			--
--							--
--		3001 Ј¬11701			--
----------------------------------------------------------
function peter_talk05 ()
	Talk( 1, "№юёщґуКе: №ю№ю!№ю№ю!КҐµ®ЅЪ°ЎЎЈ№ю№ю,ОТТ»їЄРДѕНЦ»»б`№ю№ю`№ю№ю№юЎЈ")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[Оы№юРЎЧУ]			--
--							--
--		7031, 4902			--
----------------------------------------------------------
function peter_talk06 ()
	Talk( 1, "Оы№юРЎЧУ: come on!КҐµ®ДгёГФхГґмЕ?ґчЖрД«ѕµАґЧ°їб?І»І»І»,ИГОТёжЛЯДг,ґ©Т»МЧКҐµ®АПИЛµДТВ·юІЕїбЎЈ")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[їЁАыГЧґ¬і¤]			--
--							--
--		3101, 11901			--
----------------------------------------------------------
function peter_talk07 ()
	Talk( 1, "їЁАыГЧґ¬і¤: Дг»іТЙєЈЙПµДєўЧУГЗКХІ»µЅКҐµ®АсОп?·ЕРД,КҐµ®АПИЛ»бИГєўЧУ¶јВъТвµД!")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[ґ¬Ф±°¬Дб]			--
--							--
--		4401, 8401			--
----------------------------------------------------------
function peter_talk08 ()
	Talk( 1, "ґ¬Ф±°¬Дб: ґ¬і¤ХжКЗґу·ўґИ±ЇБЛ,НщДкµДКҐµ®ЅЪОТЦ»ДЬЖЇ°ЎЖЇ°Ў,ХвґОЦХУЪґшОТАґХвАпІОјУКҐµ®ѕЫ»бБЛ!М«ёЯРЛБЛЎЈ")
end


--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[ЙПОѕїЁАп]			--
--							--
--		25801, 23101			--
----------------------------------------------------------
function peter_talk09 ()
	Talk( 1, "Первосвященник: Добро пожаловть в Церковь. Давайте начнем церемонию.")
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

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[єЈѕьКї±ш]			--
--							--
--		19401, 3901			--
----------------------------------------------------------
function peter_talk10 ()
	Talk( 1, "єЈѕьКї±ш: ОТёТ±ЈЦ¤,ґујТФЪХвАп¶јїЙТФѕЎЗйµДПнКЬКҐµ®µДїмАЦ,ѕш¶ФІ»»бУРІ»їЄРДµДКВ·ўЙъ,ДгОКОЄКІГґ?Г»їґјыОТКЦАпµДѕЇ№чГґ!")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[УОїНЎ¤ВЮБХЛ№]			--
--							--
--		7301, 23601			        --
----------------------------------------------------------
function peter_talk11 ()
	Talk( 1, "УОїНЎ¤ВЮБХЛ№: ОТПІ»¶КҐµ®ЅЪ,ОТПІ»¶ФЪХвАпНж,єГ¶аїЙ°®µД¶«¶«аё,ДгПлВтТ»јюКҐµ®АсОпЛНёшОТГґ?")
end


--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[РЎМЇ··ЦмµП]			--
--							--
--		13901, 6101			--
----------------------------------------------------------
function peter_talk12 ()
	Talk( 1, "РЎМЇ··ЦмµП: Из№ыУОНжДЬ№»Ч¬µЅЗ®,ОТТІІ»УГ°ЪМЇБЛ,єЗєЗ,µ«КЗОТ°ЪїґµЅ№ЛїНВтµЅіЖРДµД¶«ОчК±їЄРДµДСщЧУ,ОТѕНѕхµГЦµЎЈ")
end


--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[РЎМЇ··ЗР¶ы]			--
--							--
--		3301, 21601			        --
----------------------------------------------------------
function peter_talk13 ()
	Talk( 1, "РЎМЇ··ЗР¶ы:ДгИҐ№эХж°®µєГґ?Из№ыДгГ»ИҐ№э,ДЗТ»¶ЁТЄВтВтХвёцјНДоЖ·,ДгЛµДгИҐ№эБЛ?ДЗѕНёьёГВтХвёцЧцКҐµ®јНДоЖ·БЛ°Ў!")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µєРЎМЇ··ВЮГЕ			--
--							--
--		8701, 20401			         --
----------------------------------------------------------
function peter_talk14 ()
	Talk( 1, "КҐµ®µєРЎМЇ··ВЮГЕ: ¶¬МмµДК±єт,Ц»УРЅЪИХАсЖ·КЗЛщУРИЛїП»ЁЗ®µДЎЈ")
end
 
--------------------------------------------------------
--							--
--							--
--		КҐµ®µєРЎМЇ··Т®СЗ			--
--							--
--		25501, 12401    			--
----------------------------------------------------------
function peter_talk15 ()
	Talk( 1, "КҐµ®µєРЎМЇ··Т®СЗ: аЛ!КҐµ®їмАЦ!ЗЖОТґ©µДХвЙнТВ·юєГїґГґ?")
end


--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[уф»рАПИЛ]			--
--							--
--		24801, 9801			        --
----------------------------------------------------------
function peter_talk16 ()
	Talk( 1, "уф»рАПИЛ: їґДЗємємµД»рСж°Й,ХыёцКҐµ®µДТ№їХЅ«±»ЛьХХББ,Гїµ±ХвК±єтОТѕНПлЖрБЛДкЗбК±О§ЧЕуф»рМшОиµДЗйѕ°ЎЈТЄХдП§ПЦФЪ°ЎЎЈ")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[°ЧєъЧУВіМШ]			--
--							--
--		13001,23601			--
----------------------------------------------------------
function peter_talk17 ()
	Talk( 1, "°ЧєъЧУВіМШ:ДгѕхµГОТУР¶аґу?ФЪКҐµ®АПИЛГжЗ°ОТГЗ¶јКЗєўЧУВп,ОТїЙХжКЗєўЧУЕ¶,І»РЕОТГЗАґґтС©ХМЎЈ")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[АПМ«М«їЛА­]			--
--							--
--		23901, 22701	         		--
----------------------------------------------------------
function peter_talk18 ()
	Talk( 1, "АПМ«М«їЛА­: аЛ!аЛ!ёГ»эј«µД°пЦъАґ№эКҐµ®ЅЪµДИЛГЗ°Ў!ОТїЙКЗёцИИРДі¦,ДДАпµДВ·ДгТЄКЗІ»ЦЄµАѕНХТОТ!")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[ємєъЧУАЧ¶Щ]			--
--							--
--		24601, 19701			--
----------------------------------------------------------
function peter_talk19 ()
	Talk( 1, "ємєъЧУАЧ¶Щ: ЯА?ДгТЄєНОТЛµ»°?Ян,ОТєЬѕГГ»єНИЛЅ»МёБЛ,ЙПґОєНИЛЛµ»°КЗКІГґК±єт?Ў­Ў­Ян?ДгКЗЛ­?ДгТЄєНОТЛµ»°?Ў­ЯАЎ­ОТПлОКДгКІГґАґЧЕЎ­")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[РЎМЇ··УИїЁµ¤]			--
--							--
--		23201, 20001			--
----------------------------------------------------------
function peter_talk20 ()
	Talk( 1, "РЎМЇ··УИїЁµ¤: HOoooo,КҐµ®ЅЪїмАЦ!їґДгХвГґПІ»¶КҐµ®ЅЪ,ОЄКІГґІ»ДГёцЖшЗтДШ?МэЛµКҐµ®АПИЛПИёшДГЖшЗтµДєўЧУ·ўАсОпЕ¶!")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[РЎМФЖшОчБЦ]			--
--							--
--		22801, 5401			--
----------------------------------------------------------
function peter_talk21 ()
	Talk( 1, "РЎМФЖшОчБЦ:ОШЎ­ОТТЄ°Ц°ЦЎ­ОТБмµЅБЛКҐµ®АПИЛµДµ°ёв,їЙКЗИґХТІ»µЅ°Ц°ЦБЛЎ­")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[¶МОІ°НїЁЛ№]			--
--							--
--		25601, 4301			--
----------------------------------------------------------
function peter_talk22 ()
	Talk( 1, "¶МОІ°НїЁЛ№:ТФЗ°КҐµ®ЅЪѕНКЗКХАсОп,Хв»ШОТТЄЧФјєИҐХТАсОп,КҐµ®АПИЛЛНµДАсОпЧЬКЗєН°Ц°ЦЗ°БЅМмНµНµВт»ШјТµДТ»Сщ,ОТ¶јЦЄµА,Ачє¦°Й?")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[РЎЕ®єўОч¶ыОД]			--
--							--
--		21501, 4101			--
----------------------------------------------------------
function peter_talk23 ()
	Talk( 1, "РЎЕ®єўОч¶ыОД:Уґ~~КҐµ®їмАЦ!Т»ЖрїЄРДµД№эЅЪ°Й!КІГґ?ДгГ»СМ»Ё?єЩєЩ,ёжЛЯДгЕ¶,їЙТФИҐКҐµ®ґеЦРСлПВ·ЅµДКРіЎИҐ№єВт~~~»№УРєЬ¶аЖдЛыґтХЫЙМЖ·.јЗµГИҐїґїґЕ¶.")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[Е·ГЧ]			--
--							--
--		20601, 7601			--
----------------------------------------------------------
function peter_talk24 ()
	Talk( 1, "Е·ГЧ:ФЪ№ЕАПµД¶«·ЅУРТ»ѕдГыСФ,КйЦРЧФУР»ЖЅрОЭ,КйЦРЧФУРСХИзУс.їмµгИҐС§ёц¶БКйјјДЬКФКФ°Й!")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[ЧфД·]			--
--							--
--		19401, 23501			--
----------------------------------------------------------
function peter_talk25 ()
	Talk( 1, "ЧфД·: ёжЛЯДгёцГШГЬ,їмИҐДЗ±Я,¶Ф,Т»¶СЖшЗтµДµШ·Ѕ,ДЗ±ЯУРєЬ¶аєГ¶«ОчВфДШ!")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[ВнїЛ]			--
--							--
--		19401, 20101			--
----------------------------------------------------------
function peter_talk26 ()
	Talk( 1, "ВнїЛ:їґјыУОїНОТѕН»бЦч¶Ї¶ФЛыГЗЛµ~аЛ~~ОТКЗВнїЛ~ЎЈ")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[БЦїЛ]			        --
--							--
--		17301, 23501		         	--
----------------------------------------------------------
function peter_talk27 ()
	Talk( 1, "БЦїЛ: УРИЛЛµОТІ»ёГґУіш·їАпЕЬіцАґЎ­ОТПлХвКЗКҐµ®АПИЛµДµгЧУ,їґЧЕґујТФЪОТЦЬО§Р¦µД¶ЗЧУНґ,ОТТІР¦µДЦ±І»ЖрСьБЛ,КҐµ®їмАЦ!јЗЧЎ°Ў,ЅсДкµДКҐµ®,Дгїґјы№э°«¶¬№ПБЦїЛФЪЅЦЙП!")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[ОДДИ]			--
--							--
--		15701, 23401			--
----------------------------------------------------------
function peter_talk28 ()
	Talk( 1, "ОДДИ: ОТі¤µД°«Гґ?ОТКЗКҐµ®АПИЛЧоєГµДЦъКЦДШ!")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[КҐµ®С©ИЛАЧёсБЦ]			--
--							--
--		15101, 25901			        --
----------------------------------------------------------
function peter_talk29 ()
	Talk( 1, "КҐµ®С©ИЛАЧёсБЦ: ОТІ»ёГЛµ»°,µ«КЗ,»№КЗЧЈДгКҐµ®їмАЦ!")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[КҐµ®С©ИЛїЁёсБЦ]			--
--						 	--
--		6601, 8301			        --
----------------------------------------------------------
function peter_talk30 ()
	Talk( 1, "КҐµ®С©ИЛїЁёсБЦ: HELLO!!КҐµ®їмАЦ,ДгЦЄµАФшѕ­УРёцґ¬і¤±»КЇН·ёъЧЩµД№ККВГґ?№ю№ю,»№Г»Мэ№э°Ў?ДЗЅсНнДгїЙТЄЧҐЧЕКҐµ®АПИЛёшДгЅІ,НнЙПДг»бР¦РСµД!!")
end




--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[КҐµ®ґеЦёµјФ±]		--
--						 	--
--		                         	        --
----------------------------------------------------------
function Xmas_talk25 ()
	Talk( 1, "КҐµ®їмАЦ!»¶У­АґµЅГААцµДКҐµ®ґе,ОТїЙКЗХвАпµДНтКВНЁ,УРКІГґІ»ЦЄµАµДѕЎ№ЬОКОТ°Й")
	Text( 1, "КҐµ®ґеµД»о¶Ї",JumpPage, 2  )
	Text( 1, "КҐµ®ґеїЙТФВтµЅКІГґ",JumpPage, 3  )
	Text( 1, "КҐµ®ѕєјјіЎ",JumpPage, 4 )

	Talk( 2, "ДгµДКҐµ®АсєРФаБЛВр?ХТЗеПґ»ъ(83,39)°Й......ДгПліФ»рј¦ґуІНВр?ХТміР»МШ(220,40)°Й......ДгПлµгІҐЧЈёЈВр?ЗлХТКҐµ®Кч(144,158)°Й......¶јБЛЅвБЛВр?їмµг·µ»Ш°Й....")
	Text( 2, "Return",JumpPage, 1  )

	Talk( 3, "ДгїЙТФµЅ(132,246)ёЅЅь,ДЗАпУРТ»ёцєЬґуµДјЇКР,їЙТФВтµЅєЬ¶аґ«ЛµЦРµД¶«¶«Е¶ЎЈІ»№эДгПИТЄµЅКҐµ®АПИЛ(146,171)°СєЈµБ±Т»»іЙКҐµ®УІ±ТЈ¬ОТГЗµДУЄТµФ±їЙКЗІ»ДЬЦ±ЅУКХЗ®µДЎ­Ў­їмИҐЗА№є°Й")
	Text( 3, "Return",JumpPage, 1  )

	Talk( 4, "ѕЭЛµКҐµ®ѕєјјіЎАпУРј«ЖдїЦІАµДBOSS,І»№эєГПу»№Г»УРЧг№»µД№©Ж·АґХЩ»ЅЛьГЗ,ДгїЙТФµЅ(146,252)ХТїЖ¶чОКОК!")
	Text( 4, "Return",JumpPage, 1  )
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[РЎАЦДб]			--
--						 	--
--		9801, 23501			        --
----------------------------------------------------------
function peter_talk31 ()
	Talk( 1, "РЎАЦДб:ДгУРПл№эНнЙПФЪКҐµ®АПИЛЛНАсОпµДК±єт°СЛыЧҐЧЎСшФЪјТАпГґ?ОТѕНКФ№э,їЙП§К§°ЬБЛ,І»№эЅсНнОТПлµД°м·Ёѕш¶ФДЬЧҐЧЎЛы,ПлЦЄµАКІГґ°м·Ё?µЅБЛГчМмІЕДЬёжЛЯДг! ")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[ДГМъРЎЧУ]			--
--						 	--
--		14501, 26802			        --
----------------------------------------------------------
function peter_talk32 ()
	Talk( 1, "ДГМъРЎЧУ:Е¶єр~КҐµ®АПИЛёшОТґшАґБЛТ»ґуН°ОТЧо°®µДДГМъ,Хыёц¶¬МмОТ¶јКЗЧоРТёЈµДАІ!КҐµ®ЅЪНтЛк~")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[±їµ°ФјєІ]			--
--						 	--
--		18101, 23903			        --
----------------------------------------------------------
function peter_talk33 ()
	Talk( 1, "±їµ°ФјєІ:аЛ~КҐµ®їмАЦ~±рИЛ¶јЅРОТФјєІ,ДгїЙДЬТІЦЄµАОТµДНвєЕ,µ«КЗОТІ»±їµД,ОТ¶јЦЄµАРЎАЦДбЅсНнУР°м·ЁЧҐЧЎКҐµ®АПИЛµДКВДШ!")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[ЛµР¦»°µДчзВ№]			--
--						 	--
--		22201, 22804			        --
----------------------------------------------------------
function peter_talk34 ()
	Talk( 1, "ЛµР¦»°µДчзВ№:ДгМэЛµБЛВр?ОТУРТ»ёцН¬°й,ЛьК®·ЦЙГі¤±јЕЬ,УРТ»ґОЛьФЅЕЬФЅїм,Ѕб№ыѕН±діЙБЛёЯЛЩ№«В·!")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[ГЧЖжСЗНвЖЕ]			--
--						 	--
--		24801, 8105			        --
----------------------------------------------------------
function peter_talk35 ()
	Talk( 1, "ГЧЖжСЗНвЖЕ:КҐµ®ЅЪµДНнЙП,ДгїЙТ»¶ЁТЄјЗµГ°СНаЧУ№ТФЪКҐµ®КчЙПЕ¶,КҐµ®АПИЛ»бёшДгЛНАґАсОпµД.")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[ТБВіЙ­ЅМКї]			--
--						 	--
--		5501, 19506			        --
----------------------------------------------------------
function peter_talk36 ()
	Talk( 1, "ТБВіЙ­ЅМКї:УРТ»ёцХжРДЕуУСѕНЧг№»БЛ,УРК®ёцХжХэµДЕуУС,ДгѕНМмПВОЮµР.Т®ЛЦ±ЈУУДг,ОТµДЕуУС.")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[їЁВі]			--
--						 	--
--		11301, 23907			        --
----------------------------------------------------------
function peter_talk37 ()
	Talk( 1, "їЁВі: ГїМмНнЙП±р±§ЧЕµзКУПыДҐК±јдАІ~ЅсНн»»µг»ЁСщ,єНЕуУСГЗТ»ЖрѕЫ»б°Й!Т»ёцИЛµДКҐµ®ЅЪЧЬКЗДЦІ»ЖрАґ,ОТѕНФЪіўКФЧЕёД±дДШ.")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[ІјЖж]			--
--						 	--
--		26301, 17308			        --
----------------------------------------------------------
function peter_talk38 ()
	Talk( 1, "ІјЖж: ДгЦЄµАВр?ѕЭЛµУРТ»ЦЦЅРЧцНтДЬ±¦КЇµД¶«Оч,ѕЭЛµїЙТФИГК№УГХЯ±дµДёьЗїґу,ѕЯМеµДЗйїцДгїЙТФХТ±щАЗµДВуИрОКПВ!")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[АпДЙ¶а]			--
--						 	--
--		17401, 6009			        --
----------------------------------------------------------
function peter_talk39 ()
	Talk( 1, "АпДЙ¶а:їґЧЕИЛГЗ¶јФЪµгІҐЧЈёЈ,ОТТІєЬПлµгІҐТ»ѕдРДАп»°ЈєОТТЄјУ№«ЧК!ОТТЄґшРЅ·ЕјЩ!ОТТЄДГЅ±Ѕр!Ў­»№УР,±рИГАП°еЦЄµАКЗОТЛµµД.")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[їЛАі¶ы]			--
--						 	--
--		3401, 20011			        --
----------------------------------------------------------
function peter_talk40 ()
	Talk( 1, "їЛАі¶ы: ЅЪИХЛдИ»їмАЦ~µ«КЗТІТЄЧўТв°ІИ«Е¶!ОТїЙІ»ПлТ»ґуФзѕНФЪТЅФєАпїґµЅУРІЎИЛФЪ! ")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[µПїЙЛ№]			--
--						 	--
--		7401, 20511			        --
----------------------------------------------------------
function peter_talk41 ()
	Talk( 1, "µПїЙЛ№:єГ¶аµДС©°Ў,ДСµАХвГґґуµДµШ·Ѕ¶јТЄОТАґЙЁВр?ОТПЈНыХвёцКҐµ®ЅЪОТДЬµГµЅµДАсОпКЗТ»МЁіэС©»ъ!")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[ЖХВЮ]			--
--						 	--
--		20901, 21912			        --
----------------------------------------------------------
function peter_talk42 ()
	Talk( 1, "ЖХВЮ: ґУєЈЙПОЮѕЎµДЖЇІґµЅПЦФЪХѕФЪДгµДГжЗ°,ОТ¶®µГБЛЙъ»оТЄХдП§ПЦФЪ,ДЬХѕФЪВЅµШЙП№эКҐµ®ЅЪ,КµФЪКЗјюЦµµГЗмЧЈµДКВ,ОТ»б¶ФГїёцИЛґуЙщµДЧЈёЈ!ПнКЬПЦФЪµДЙъ»о°Й!КҐµ®їмАЦ!")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[ОВДбАц]			--
--						 	--
--		26401, 13813			        --
----------------------------------------------------------
function peter_talk43 ()
	Talk( 1, "ОВДбАц: ОТТ»Ц±Плµ±Т»ГыєЅєЈјТ!ОТТЄИГОТµДґ¬їЄµД±ИКҐµ®АПИЛ·ЙЖрАґ»№ТЄїм!Ѕ«АґКҐµ®АПИЛ»№ТЄ°ЭНРОТ°пЛыФЛЛНАсОпДШ.")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[јУ·Ж]			--
--						 	--
--		24801, 8114			        --
----------------------------------------------------------
function peter_talk44 ()
	Talk( 1, "јУ·Ж: ЦЄµАКҐµ®ЅЪёГФхГґ№эВр?ОТѕхµГЧшФЪИнИнµДЙі·ўЙП,їґµзКУ,іФТвґуАыЗ§ІгГжІЕКЗЧо°фµД!")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[ОКМвРЎ¶а¶а]			--
--						 	--
--		26101, 8915			        --
----------------------------------------------------------
function peter_talk45 ()
	Talk( 1, "ОКМвРЎ¶а¶а: ОТґУДДАпАґµД?¶¬МмµДГµ№е»ЁФхГґАґµД?РЎС©ИЛєНРЎчзВ№іиОпКЗФхГґАґµД?Ян,ХвР©ОТ¶јЦЄµА,ОТЦ»КЗПлМэМэДгЦЄІ»ЦЄµА.")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[°ВЛ№їЁ]			--
--						 	--
--		19301, 4016			        --
----------------------------------------------------------
function peter_talk46 ()
	Talk( 1, "°ВЛ№їЁ: КҐµ®ЅЪµЅБЛ,ѕНЛгКЗЧчОЄЧоО°ґуµДГ°ПХјТµДОТТІУ¦ёГНЈПВАґєНєўЧУГЗґтґтС©ХМ,єГєГПнКЬТ»ПВГАО¶µД»рј¦БЛ°Й.")
end

--------------------------------------------------------
--							--
--							--
--		КҐµ®µє[ІКТГ]			--
--						 	--
--		19101, 8417			        --
----------------------------------------------------------
function peter_talk47 ()
	Talk( 1, "ІКТГ: ХвѕНКЗКҐµ®ЅЪВр?ОТ»№КЗµЪТ»ґО№эХвёцЅЪИХДШ~І»№эДЗёцКҐµ®АПИЛЕЦєхєхµДХжїЙ°®,»№УРДЗїГґуґуµДКҐµ®КчТІєГЖЇББЕ¶,ДгИҐїґБЛВр?")
end

function med_chaos ()


	Talk( 1, 'Помпи: Привет, я медсестра Серебрянного Хаоса, я могу залечить твои раны, а так же ты можешь записать у меня свою точку возрождения.')

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 5000 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 50000 )
	TriggerAction( 2, TakeMoney, 50000 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 3 )
	Text( 1, 'Великое исцеление', MultiTrigger,GetMultiTrigger(), 2 )

	
	
	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 5000 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, 'Исцеление', MultiTrigger,GetMultiTrigger(), 2 )
	Text( 1, 'Записать точку возрождения', JumpPage, 2 )

	Talk( 2, 'Помпи: Записать точку возрождения рядом с порталом в Серебрянный Хаос?')
	Text( 2, 'Да, пожалуйста запиши.', SetSpawnPos, 'Портал Хаоса' )
	Text( 2, 'Нет, спасибо',CloseTalk )

	Talk( 3, 'Помпи: Великое Исцеление стоит 50000 золотых, которых у тебя нет' )

	Talk( 4, 'Помпи: Исцеление стоит 20000 золотых, которых у тебя нет' )

end

function med_snv ()

	Talk( 1, 'Лори: Привет, я медсестра Снежных Войн, я могу залечить твои раны, а так же ты можешь записать у меня свою точку возрождения.')

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReAll )
	TriggerCondition( 2, HasMoney, 50000 )
	TriggerAction( 2, TakeMoney, 50000 )
	TriggerAction( 2, ReAll )
	TriggerFailure( 2, JumpPage, 3 )
	Text( 1, 'Великое исцеление', MultiTrigger,GetMultiTrigger(), 2 )

	InitTrigger()
	TriggerCondition( 1, LvCheck, "<", 6 )
	TriggerCondition( 1, HasRecord, 500 )
	TriggerAction( 1, ReHp, 50 )
	TriggerCondition( 2, HasMoney, 20000 )
	TriggerAction( 2, TakeMoney, 20000 )
	TriggerAction( 2, ReHp,50 )
	TriggerFailure( 2, JumpPage, 4 )
	Text( 1, 'Исцеление', MultiTrigger,GetMultiTrigger(), 2 )
	Text( 1, 'Записать точку возрождения', JumpPage, 2 )

	Talk( 2, 'Лори: Записать точку возрождения рядом с порталом в Снежные Войны?')
	Text( 2, 'Да, пожалуйста запиши.', SetSpawnPos, 'Портал СНВ' )
	Text( 2, 'Нет, спасибо',CloseTalk )

	Talk( 3, 'Лори: Великое Исцеление стоит 50000 золотых, которых у тебя нет' )

	Talk( 4, 'Лори: Исцеление стоит 20000 золотых, которых у тебя нет' )

end


function test_dialog ()

	Talk( 1, 'Помпи: Привет, я медсестра Серебрянного Хаоса, я могу залечить твои раны, а так же ты можешь записать у меня свою точку возрождения.')

	Text( 1, "Приобрести", BuyPage )

	InitTrade()
	--Книги
	Weapon(	1808	)	--Обычная книга причесок(Ланс)
	Weapon(	1809	)	--Обычная книга причесок(Карциз)
	Weapon(	1810	)	--Обычная книга причесок(Филлис)
	Weapon(	1811	)	--Обычная книга причесок(Ами)
	--Weapon(	0931	)	--Модная книга причесок(Ланс)
	--Weapon(	0932	)	--Модная книга причесок(Карциз)
	--Weapon(	0933	)	--Модная книга причесок(Филлис)
	--Weapon(	0934	)	--Модная книга причесок(Ами)
	-- --Ингридиенты
	-- Weapon(	1804	)	--Половинка ножниц
	-- Weapon(	1805	)	--Гребень
	-- Weapon(	1806	)	--Гель для волос
	-- Weapon(	1807	)	--Расписка
	-- --Краска
	-- Defence(	4608	)	--Коричневая краска 
	-- Defence(	4606	)	--Черная краска 
	-- Defence(		)
	-- Defence(		)
	-- Defence(	1793	)	--Пурпурная краска 
	-- Defence(	1792	)	--Синяя краска
	-- Defence(	1791	)	--Голубая краска 
	-- Defence(	1790	)	--Зеленая краска 
	-- Defence(	1789	)	--Желтая краска 
	-- Defence(	1788	)	--Оранжевая краска
	-- Defence(	1787	)	--Красная краска
	-- --Красители
	-- Other(	4610	)	--Обесцвечивающее средство
	-- Other(	4609	)	--Коричневый краситель  
	-- Other(	4607	)	--Черный краситель
	-- Other(		)
	-- Other(	1803	)	--Пурпурный краситель 
	-- Other(	1801	)	--Голубой краситель 
	-- Other(	1800	)	--Зеленый краситель
	-- Other(	1798	)	--Оранжевый краситель 
	-- Other(	1797	)	--Красный краситель
	-- Other(	1802	)	--Синий краситель
	-- Other(	1799	)	--Желтый краситель

end

function roico_talk()

    Talk( 1, "Администратор Священной войны: Для того, чтобы войти в священную войну, пожалуйста, получите [Знак жизни и смерти] от меня, он представляет вашу решимость и дух! Еще у меня есть нечто, в чем Вы могли бы быть заинтересованы, но я могу это дать только Героям войны!" )
    Text( 1, "Получить [70 ур.] Снаряжение Босса",JumpPage, 2 )
	--Text( 1, "Получить Титул",JumpPage, 16 )
	Text( 1, "Получить [Знак Кровавого альянса]",JumpPage, 28 )
	Text( 1, "Обменять Честь на [Знак жизни и смерти]",JumpPage, 29 )

	Talk( 2, "Выберите Босс камень который вы хотите!" )
        Text( 2, "Каменная нога Гефеста (Чемпион)", JumpPage, 3)
	Text( 2, "Каменная нога Гермеса (Воитель)", JumpPage, 4)
	Text( 2, "Каменная нога Аполлона (Стрелок)", JumpPage, 5)
	Text( 2, "Каменная нога Посейдона (Покоритель Морей)", JumpPage, 6)
	Text( 2, "Каменная нога Гестии (Целитель)", JumpPage, 7)
	Text( 2, "Каменная нога Афины (Колдунья)", JumpPage, 8)
	Text( 2, "Вперед", JumpPage, 9)
	Talk( 9, "Выберите Босс камень который вы хотите!" )
	Text( 9, "Каменная рука Гефеста (Чемпион)", JumpPage, 10)
	Text( 9, "Каменная рука Гермеса (Воитель)", JumpPage, 11)
	Text( 9, "Каменная рука Аполлона (Стрелок)", JumpPage, 12)
	Text( 9, "Каменная рука Посейдона (Покоритель Морей)", JumpPage, 13)
	Text( 9, "Каменная рука Гестии (Целитель)", JumpPage, 14)
	Text( 9, "Каменная рука Афины (Колдунья)", JumpPage, 15)
	Text( 9, "Назад", JumpPage, 2) 


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2532, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 3, "Администратор Священной войны: Если ваш уровень выше 65, и вы принесете мне 300 кровавых контрактов, я могу дать вам этот камень." )
	Text( 3, "Получить", MultiTrigger, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2535, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 4, "Администратор Священной войны: Если ваш уровень выше 65, и вы принесете мне 300 кровавых контрактов, я могу дать вам этот камень." )
	Text( 4, "Получить", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2538, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 5, "Администратор Священной войны: Если ваш уровень выше 65, и вы принесете мне 300 кровавых контрактов, я могу дать вам этот камень." )
	Text( 5, "Получить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2541, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 6, "Администратор Священной войны: Если ваш уровень выше 65, и вы принесете мне 300 кровавых контрактов, я могу дать вам этот камень." )
	Text( 6, "Получить", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2544, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 7, "Администратор Священной войны: Если ваш уровень выше 65, и вы принесете мне 300 кровавых контрактов, я могу дать вам этот камень." )
	Text( 7, "Получить", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2547, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 8, "Администратор Священной войны: Если ваш уровень выше 65, и вы принесете мне 300 кровавых контрактов, я могу дать вам этот камень." )
	Text( 8, "Получить", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2531, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 10, "Администратор Священной войны: Если ваш уровень выше 65, и вы принесете мне 300 кровавых контрактов, я могу дать вам этот камень." )
	Text( 10, "Получить", MultiTrigger, GetMultiTrigger(), 1)



	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2534, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 11, "Администратор Священной войны: Если ваш уровень выше 65, и вы принесете мне 300 кровавых контрактов, я могу дать вам этот камень." )
	Text( 11, "Получить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2537, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 12, "Администратор Священной войны: Если ваш уровень выше 65, и вы принесете мне 300 кровавых контрактов, я могу дать вам этот камень." )
	Text( 12, "Получить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2540, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 13, "Администратор Священной войны: Если ваш уровень выше 65, и вы принесете мне 300 кровавых контрактов, я могу дать вам этот камень." )
	Text( 13, "Получить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2543, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 14, "Администратор Священной войны: Если ваш уровень выше 65, и вы принесете мне 300 кровавых контрактов, я могу дать вам этот камень." )
	Text( 14, "Получить", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 300 )
	TriggerCondition( 1, LvCheck, ">", 64 )
	TriggerAction( 1, TakeItem, 2383, 300 )
	TriggerAction( 1, GiveItem, 2546, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 15, "Администратор Священной войны: Если ваш уровень выше 65, и вы принесете мне 300 кровавых контрактов, я могу дать вам этот камень." )
	Text( 15, "Получить", MultiTrigger, GetMultiTrigger(), 1)


	Talk( 16, "Администратор Священной войны: Пожалуйста, выберите Звание, которое вы хотите!" )
        Text( 16, "Матрос", JumpPage, 17)
	Text( 16, "Старшина", JumpPage, 18)
	Text( 16, "Мичман", JumpPage, 19)
	Text( 16, "Лейтенант", JumpPage, 20)
	Text( 16, "Капитан 3 ранга", JumpPage, 21)
	Text( 16, "Дальше", JumpPage, 30)

	Talk( 30, "Администратор Священной войны: Пожалуйста, выберите Звание, которое вы хотите!" )
	Text( 30, "Капитан 2 ранга", JumpPage, 22)
	Text( 30, "Капитан 1 ранга", JumpPage, 23)
	Text( 30, "Контр-Адмирал", JumpPage, 24)
	Text( 30, "Адмирал Флота", JumpPage, 25)
	Text( 30, "Главнокомандующий", JumpPage, 26)
	Text( 30, "Назад", JumpPage, 16)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2383, 20 )
	TriggerAction( 1, GiveItem, 5331, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 17, "Администратор Священной войны: Если вы дадите мне 20 кровавых контрактов, я могу дать вам такое звание!" )
	Text( 17, "Получить", MultiTrigger, GetMultiTrigger(), 1)



	
	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 50 )
	TriggerCondition( 1, HasItem, 5331, 1 )
	TriggerAction( 1, TakeItem, 2383, 50 )
	TriggerAction( 1, TakeItem, 5331, 1 )
	TriggerAction( 1, GiveItem, 5332, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 18, "Администратор Священной войны: Если вы дадите мне 50 кровавых контрактов и Медаль чести 1 уровня, я могу дать вам такое звание!" )
	Text( 18, "Получить", MultiTrigger, GetMultiTrigger(), 1)

	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 100 )
	TriggerCondition( 1, HasItem, 5332, 1 )
	TriggerAction( 1, TakeItem, 2383, 100 )
	TriggerAction( 1, TakeItem, 5332, 1 )
	TriggerAction( 1, GiveItem, 5333, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 19, "Администратор Священной войны: Если вы дадите мне 100 кровавых контрактов и Медаль чести 2 уровня, я могу дать вам такое звание!" )
	Text( 19, "Получить", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 250 )
	TriggerCondition( 1, HasItem, 5333, 1 )
	TriggerAction( 1, TakeItem, 2383, 250 )
	TriggerAction( 1, TakeItem, 5333, 1 )
	TriggerAction( 1, GiveItem, 5334, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 20, "Администратор Священной войны: Если вы дадите мне 250 кровавых контрактов и Медаль чести 3 уровня, я могу дать вам такое звание!" )
	Text( 20, "Получить", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 400 )
	TriggerCondition( 1, HasItem, 5334, 1 )
	TriggerAction( 1, TakeItem, 2383, 400 )
	TriggerAction( 1, TakeItem, 5334, 1 )
	TriggerAction( 1, GiveItem, 5335, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 21, "Администратор Священной войны: Если вы дадите мне 400 кровавых контрактов и Медаль чести 4 уровня, я могу дать вам такое звание!" )
	Text( 21, "Получить", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 650 )
	TriggerCondition( 1, HasItem, 5335, 1 )
	TriggerAction( 1, TakeItem, 2383, 650 )
	TriggerAction( 1, TakeItem, 5335, 1 )
	TriggerAction( 1, GiveItem, 5336, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 22, "Администратор Священной войны: Если вы дадите мне 650 кровавых контрактов и Медаль чести 5 уровня, я могу дать вам такое звание!" )
	Text( 22, "Получить", MultiTrigger, GetMultiTrigger(), 1)



	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 55 )
	TriggerCondition( 1, HasItem, 5336, 1 )
	TriggerAction( 1, TakeItem, 2865, 55 )
	TriggerAction( 1, TakeItem, 5336, 1 )
	TriggerAction( 1, GiveItem, 5337, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 23, "Администратор Священной войны: Если вы дадите мне 55 Знаков кровавого альянса и Медаль чести 6 уровня, я могу дать вам такое звание!" )
	Text( 23, "Получить", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 80 )
        TriggerCondition( 1, HasItem, 5337, 1)
	TriggerAction( 1, TakeItem, 2865, 80 )
	TriggerAction( 1, TakeItem, 5337, 1 )
	TriggerAction( 1, GiveItem, 5338, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 24, "Администратор Священной войны: Если вы дадите мне 80 Знаков кровавого альянса и Медаль чести 7 уровня, я могу дать вам такое звание!" )
	Text( 24, "Получить", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 110 )
	TriggerCondition( 1, HasItem, 5338, 1)
	TriggerAction( 1, TakeItem, 2865, 110 )
	TriggerAction( 1, TakeItem, 5338, 1 )
	TriggerAction( 1, GiveItem, 5339, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 25, "Администратор Священной войны: Если вы дадите мне 110 Знаков кровавого альянса и Медаль чести 8 уровня, я могу дать вам такое звание!" )
	Text( 25, "Получить", MultiTrigger, GetMultiTrigger(), 1)


	InitTrigger()
	TriggerCondition( 1, HasItem, 2865, 155 )
	TriggerCondition( 1, HasItem, 5339, 1)
	TriggerAction( 1, TakeItem, 2865, 155 )
	TriggerAction( 1, TakeItem, 5339, 1 )
	TriggerAction( 1, GiveItem, 5340, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 26, "Администратор Священной войны: Если вы дадите мне 155 Знаков кровавого альянса и Медаль чести 9 уровня, я могу дать вам такое звание!" )
	Text( 26, "Получить", MultiTrigger, GetMultiTrigger(), 1)
        Talk( 27, "Администратор Священной войны: Пожалуйста, проверьте, если ваш инвентарь имеет достаточно места или у вас есть все нужные предметы для обмена. Я не могу обмениваться с вами!" )




	InitTrigger()
	TriggerCondition( 1, HasItem, 2383, 20 )
	TriggerCondition( 1, HasLeaveBagGrid, 1 )
	TriggerAction( 1, TakeItem, 2383, 20 )
	TriggerAction( 1, GiveItem, 2865, 1, 4 )
	TriggerFailure( 1, JumpPage, 27 )
	Talk( 28, "Администратор Священной войны: 20 Кровавых контрактов можно поменять на 1 Знак Кровавого Альянса" )
	Text( 28, "Подтвердить обмен", MultiTrigger, GetMultiTrigger(), 1)


	
	Talk( 29, "Администратор Священной войны: 15 чести можно обменять в однин Знак жизни и смерти. Знак жизни и смерти исчезнет только тогда, когда вы умерли внутри Священной войны!")
	Text( 29, "Подтвердить обмен", GetChaName45_guildwar, 1)

end

