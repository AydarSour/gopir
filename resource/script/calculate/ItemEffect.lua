--Функции при использовании вещей

print( "‡ Јаг§Є  itemeffect.lua" )

function hp_med_min( role , Item )--не используется
	local hp = GetChaAttr( role , ATTR_HP ) 
	local con = Con(role) 
	if hp <= 0 then
		return 
	end 
	hp_resume = 20 +con*5 
	hp = hp + hp_resume 
	mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

function hp_med_small(role, Item )--не используется
	local hp = GetChaAttr(role, ATTR_HP)
	local con = Con(role)
	if hp <= 0 then 
	end 
	hp_resume = 20+ con*5  
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

function hp_med_middle( role , Item )--не используется

	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then 
	end 
	hp_resume = 800 
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	 if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

function hp_med_large( role , Item )--не используется
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then  
	end 
	local mxhp = GetChaAttr(role, ATTR_MXHP) 
	hp_resume = 0.2 * mxhp 
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 

function hp_med_super( role , Item )--не используется
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then   
	end 
	local mxhp = GetChaAttr(role, ATTR_MXHP) 
	hp_resume = 0.8 * mxhp  
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 


function ItemUse_NMZ ( role , Item )--не используется
	SystemNotice(role ,"The item has gone rusty and has lost its effect, don't be too sad")
end

function ItemUse_DSZ ( role , Item )--не используется
	SystemNotice(role ,"The item has gone rusty and has lost its effect, don't be too sad")
end

function ItemUse_DHZ ( role , Item )--не используется
	SystemNotice(role ,"The item has gone rusty and has lost its effect, don't be too sad")
end

function ItemUse_WQZZ ( role , Item )--не используется
	SystemNotice(role ,"The item has gone rusty and has lost its effect, don't be too sad")

end 

--	1847	Яблоко
function ItemUse_APPLE ( role , Item )
	local statelv = 2
	local statetime = 3
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
	local rand = math.random(1,10000000)
	if rand == 434342 then
		HelpInfo(role,0,"Поздравляем! Вы нашли счастливый предмет, сделайте скриншот и покажите его администрации!")
	end
	end 

--	1848	Хлеб
function ItemUse_BREAD (role, Item )
	local statelv = 3
	local statetime = 5
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 2 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime ) 
	end
	local rand = math.random(1,10000000)
	if rand == 434342 then
		HelpInfo(role,0,"Поздравляем! Вы нашли счастливый предмет, сделайте скриншот и покажите его администрации!")
	end
	end 

--	1849	Кекс
function ItemUse_CAKE ( role , Item )

	local statelv = 4
	local statetime = 7
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 3 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
	local rand = math.random(1,10000000)
	if rand == 434342 then
		HelpInfo(role,0,"Поздравляем! Вы нашли счастливый предмет, сделайте скриншот и покажите его администрации!")
	end
	end 

--Желтый Кекс
function ItemUse_JCAKE ( role , Item )
	local statelv = 5
	local statetime = 9
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 3 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime ) 
	end
	local rand = math.random(1,10000000)
	if rand == 434342 then
		HelpInfo(role,0,"Поздравляем! Вы нашли счастливый предмет, сделайте скриншот и покажите его администрации!")
	end
	end 

--Оранжевый Кекс
function ItemUse_OCAKE ( role , Item )
	local statelv = 7
	local statetime = 11
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 3 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime ) 
	end
	local rand = math.random(1,10000000)
	if rand == 434342 then
		HelpInfo(role,0,"Поздравляем! Вы нашли счастливый предмет, сделайте скриншот и покажите его администрации!")
	end
	end 

--Красный Кекс
function ItemUse_KCAKE ( role , Item )
	local statelv = 10
	local statetime = 12
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 3 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime ) 
	end
	local rand = math.random(1,10000000)
	if rand == 434342 then
		HelpInfo(role,0,"Поздравляем! Вы нашли счастливый предмет, сделайте скриншот и покажите его администрации!")
	end
	end 

function ItemUse_DCAKE ( role , Item )
	local statelv = 13
	local statetime = 12
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 3 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime ) 
	end
	local rand = math.random(1,10000000)
	if rand == 434342 then
		HelpInfo(role,0,"Поздравляем! Вы нашли счастливый предмет, сделайте скриншот и покажите его администрации!")
	end
	end
--Восполнение маны 1ур
function ItemUse_SP( role , Item )
local hp = GetChaAttr(role, ATTR_SP) 
	local statetime2 = 3
	local name = GetChaDefaultName(role)
	
	if Mana[name] == nil then
        Mana[name] = { UsedTime = os.time() }
    end
	local cooldown = Mana[name].UsedTime - os.time()
	
	if Mana[name].UsedTime >  os.time() then
	local edx = Mana[name].UsedTime -  os.time()
			SystemNotice ( role , "Вы не можете пользоваться данным предметов еще "..edx.." секунд"  )
			UseItemFailed ( role )
			return
	end
	if Cha_Boat ==  nil then
	hp_resume = 25

	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXSP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_SP)
	Mana[name].UsedTime = os.time()+statetime2
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	
		local rand = math.random(1,10000000)
	if rand == 434342 then
		HelpInfo(role,0,"Поздравляем! Вы нашли счастливый предмет, сделайте скриншот и покажите его администрации!")
	end
end

--Восполнение маны 2ур
function ItemUse_SPSP( role , Item )
local hp = GetChaAttr(role, ATTR_SP) 
	local statetime2 = 3
	local name = GetChaDefaultName(role)
	
	if Mana[name] == nil then
        Mana[name] = { UsedTime = os.time() }
    end
	local cooldown = Mana[name].UsedTime - os.time()
	
	if Mana[name].UsedTime >  os.time() then
	local edx = Mana[name].UsedTime -  os.time()
			SystemNotice ( role , "Вы не можете пользоваться данным предметов еще "..edx.." секунд"  )
			UseItemFailed ( role )
			return
	end
	if Cha_Boat ==  nil then
	hp_resume = 50

	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXSP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_SP)
	Mana[name].UsedTime = os.time()+statetime2
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end

		local rand = math.random(1,10000000)
	if rand == 434342 then
		HelpInfo(role,0,"Поздравляем! Вы нашли счастливый предмет, сделайте скриншот и покажите его администрации!")
	end
	end

--Восполнение маны 3ур
function ItemUse_SPSPSP( role , Item )
local hp = GetChaAttr(role, ATTR_SP) 
	local statetime2 = 3
	local name = GetChaDefaultName(role)
	
	if Mana[name] == nil then
        Mana[name] = { UsedTime = os.time() }
    end
	local cooldown = Mana[name].UsedTime - os.time()
	
	if Mana[name].UsedTime >  os.time() then
	local edx = Mana[name].UsedTime -  os.time()
			SystemNotice ( role , "Вы не можете пользоваться данным предметов еще "..edx.." секунд"  )
			UseItemFailed ( role )
			return
	end
	if Cha_Boat ==  nil then
	hp_resume = 100

	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXSP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_SP)
	Mana[name].UsedTime = os.time()+statetime2
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local rand = math.random(1,10000000)
	if rand == 434342 then
		HelpInfo(role,0,"Поздравляем! Вы нашли счастливый предмет, сделайте скриншот и покажите его администрации!")
	end
	end

--Восполнение маны 4ур
function ItemUse_SPSPSP2( role , Item )
local hp = GetChaAttr(role, ATTR_SP) 
	local statetime2 = 3
	local name = GetChaDefaultName(role)
	local Cha_Boat = GetCtrlBoat ( role )
	if Mana[name] == nil then
        Mana[name] = { UsedTime = os.time() }
    end
	local cooldown = Mana[name].UsedTime - os.time()
	
	if Mana[name].UsedTime >  os.time() then
	local edx = Mana[name].UsedTime -  os.time()
			SystemNotice ( role , "Вы не можете пользоваться данным предметов еще "..edx.." секунд"  )
			UseItemFailed ( role )
			return
	end
	
	if Cha_Boat ==  nil then
	hp_resume = 150
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXSP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_SP)
	
		Mana[name].UsedTime = os.time()+statetime2
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local rand = math.random(1,10000000)
	if rand == 434342 then
		HelpInfo(role,0,"Поздравляем! Вы нашли счастливый предмет, сделайте скриншот и покажите его администрации!")
	end
	end


function ItemUse_TLHFJA( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	hp_resume = 1000 
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then 
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)
end

function ItemUse_TMLGZA( role , Item ) 
	local sp = GetChaAttr(role, ATTR_SP) 
	sp_resume = 150 
	
	sp = sp + sp_resume 
	mxsp = GetChaAttr(role,ATTR_MXSP) 
	if sp > mxsp then 
		sp = mxsp 
	end 
	SetCharaAttr(sp, role, ATTR_SP) 
end 

--ID4551	Мясо
function ItemUse_Fish ( role , Item ) 
	local k = ChaIsBoat ( role ) 
	if k == 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "Предмет может быть использован только на море" )
		return 
	end 
	local sp = GetChaAttr ( role , ATTR_SP ) 
	local mxsp = GetChaAttr ( role, ATTR_MXSP ) 
	local hp = GetChaAttr ( role , ATTR_HP ) 
	local mxhp = GetChaAttr ( role, ATTR_MXHP ) 
	if hp < 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "Ваш корабль затонул. Невозможно использовать предмет" ) 
	end 
	local sp_resume = 50 
	sp = math.min ( mxsp , sp + sp_resume  ) 
	SetCharaAttr ( sp , role , ATTR_SP ) 
end 

--ID3915	Лунный пирог
function ItemUse_YB ( role , Item )
	local exp = Exp ( role )
	local charLv=Lv ( role )
	local exp_new = 0
	if charLv >= 80 then
		exp_new = exp + 6
	else
		exp_new = exp + 300
	end
	SetCharaAttr ( exp_new , role , ATTR_CEXP )
end

--ID1854	Бычье зелье
function ItemUse_PKMNYS ( role , Item )
	local statelv = 7
	local statetime = 1800
	AddState( role , role , STATE_PKMNYS , statelv , statetime )
end

--ID1860	Благословляющее зелье
function ItemUse_PKWDYS ( role , Item )
	local statelv = 7
	local statetime = 5
	AddState( role , role , STATE_PKWD , statelv , statetime )
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." становится неуязвимым в течение 5 секунд!"
	Notice ( message )
end

--ID3848	Зелье восстановления телосложения
function ItemUse_TLHFJ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	hp_resume = 800 
	
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP)
end

--Еда повышающая статы
--	6203	Бургер
function ItemUse_HANBAO ( role , Item )
	local statelv = 6
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime ) 
	end
end 

--	6204	Жареный Цыпленок
function ItemUse_KAORUZHU ( role , Item )
	local statelv = 7
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime ) 
	end
end 

--ID0893	Зелье обезьяны
function ItemUse_SPLhyj( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSLQQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end

	if OtherStateLv > 0 then
		SystemNotice(role ,"Зелья дающие бонус к характеристикам, складываться не могут!")
		UseItemFailed ( role )
		return
	end
	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 3600
	local ChaStateLv = GetChaStateLv ( role , STATE_YSMJQH )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	AddState( role , role , STATE_YSMJQH , statelv , statetime )
end

--ID0894	Зелье орла
function ItemUse_SPYyyj( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end

	if OtherStateLv > 0 then
		SystemNotice(role ,"Зелья дающие бонус к характеристикам, складываться не могут!")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 3600
	local ChaStateLv = GetChaStateLv ( role , STATE_YSLQQH )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	AddState( role , role , STATE_YSLQQH , statelv , statetime )

end

--ID0895	Зелье быка
function ItemUse_SPMnyj( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end

	if OtherStateLv > 0 then
		SystemNotice(role ,"Зелья дающие бонус к характеристикам, складываться не могут!")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end


	local statelv = 1
	local statetime = 3600
	local ChaStateLv = GetChaStateLv ( role , STATE_YSTZQH )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	AddState( role , role , STATE_YSTZQH , statelv , statetime )

end

--ID0896	Зелье души
function ItemUse_SPSlyj( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end

	if OtherStateLv > 0 then
		SystemNotice(role ,"Зелья дающие бонус к характеристикам, складываться не могут!")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end

	local statelv = 1
	local statetime = 3600
	local ChaStateLv = GetChaStateLv ( role , STATE_YSJSQH )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	AddState( role , role , STATE_YSJSQH , statelv , statetime )

end

--ID0897	Зелье льва
function ItemUse_SPXsyj( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSJSQH )

	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end

	if OtherStateLv > 0 then
		SystemNotice(role ,"Зелья дающие бонус к характеристикам, складываться не могут!")
		UseItemFailed ( role )
		return
	end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local ChaStateLv = GetChaStateLv ( role , STATE_YSLLQH )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statelv = 1
	local statetime = 3600
	AddState( role , role , STATE_YSLLQH , statelv , statetime )

end

--Элексиры орла\быка
function ItemUse_SPXsyjA( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSJSQH )
	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end
	if OtherStateLv > 0 then
		SystemNotice(role ,"Зелья дающие бонус к характеристикам, складываться не могут!")
		UseItemFailed ( role )
		return
	end	
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSLLQH , statelv , statetime )

end

function ItemUse_SPLhyjA( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSLQQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end
	if OtherStateLv > 0 then
		SystemNotice(role ,"Зелья дающие бонус к характеристикам, складываться не могут!")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSMJQH , statelv , statetime )
end

function ItemUse_SPYyyjA( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSTZQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end
	if OtherStateLv > 0 then
		SystemNotice(role ,"Зелья дающие бонус к характеристикам, складываться не могут!")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSLQQH , statelv , statetime )
end

function ItemUse_SPMnyjA( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSJSQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end
	if OtherStateLv > 0 then
		SystemNotice(role ,"Зелья дающие бонус к характеристикам, складываться не могут!")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSTZQH , statelv , statetime )
end

function ItemUse_SPSlyjA( role , Item )
	local OtherStateLv = 0
	local i = 0
	local State_Num = 3
	local State = {}
	State [0] = GetChaStateLv ( role , STATE_YSMJQH )
	State [1] = GetChaStateLv ( role , STATE_YSLQQH )
	State [2] = GetChaStateLv ( role , STATE_YSTZQH )
	State [3] = GetChaStateLv ( role , STATE_YSLLQH )
	for i = 0 , State_Num , 1 do
		if State[i] >= 1 then
			OtherStateLv = OtherStateLv + 1
		end
	end
	if OtherStateLv > 0 then
		SystemNotice(role ,"Зелья дающие бонус к характеристикам, складываться не могут!")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local statelv = 1
	local statetime = 5400
	AddState( role , role , STATE_YSJSQH , statelv , statetime )

end

--Скольжения
function ItemUse_MspdYSA ( role , Item )
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_YSMspd )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if Skolz1[name] == nil then
        Skolz1[name] = { UsedTime = os.time() }
    end
	local cooldown = Skolz1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_YSMspd , statelv , statetime )
		Skolz1[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end
--Скольжения
function ItemUse_MspdYSB ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_QINGZ )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if leg1[name] == nil then
        leg1[name] = { UsedTime = os.time() }
    end
	local cooldown = leg1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_QINGZ , statelv , statetime )
		leg1[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end
 
function ItemUse_GJZhuangJiaA ( role , Item )
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	local name = GetChaDefaultName(role)
	Cha_Boat = GetCtrlBoat ( role )
	local ChaStateLv = GetChaStateLv ( role , STATE_YSBoatDEF )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_YSBoatDEF , statelv , statetime )
	else
		SystemNotice( role , "Использование возможно только во время плавания. " )
		UseItemFailed ( role )
		return
	end
end


--ID851	Боевой строй
function ItemUse_XEZJB ( role , Item )

	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_KUANGZ )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if Drop3[name] == nil then
        Drop3[name] = { UsedTime = os.time() }
    end
	local cooldown = Drop3[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_KUANGZ , statelv , statetime )
		Drop3[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end

end



function ItemUse_DenglongA ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_DENGLONG )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if stroi1[name] == nil then
        stroi1[name] = { UsedTime = os.time() }
    end
	local cooldown = stroi1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_DENGLONG , statelv , statetime )
		stroi1[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end
--Полный доспех
function ItemUse_DenglongB ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_QUANS )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if dosp1[name] == nil then
        dosp1[name] = { UsedTime = os.time() }
    end
	local cooldown = dosp1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_QUANS , statelv , statetime )
		dosp1[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	end

--ID1855	Боевое зелье
function ItemUse_PKZDYS ( role , Item )
local name = GetChaDefaultName(role)
	local statelv = 7
	local statetime = 200
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_PKZDYS )
	Cha_Boat = GetCtrlBoat ( role )
	
	if bik1[name] == nil then
        bik1[name] = { UsedTime = os.time() }
    end
	local cooldown = bik1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKZDYS , statelv , statetime )
		bik1[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--ID1856	Зелье берсерка
function ItemUse_PKKBYS ( role , Item )
	local statelv = 7
	local statetime = 20
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_PKKBYS )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if bers1[name] == nil then
        bers1[name] = { UsedTime = os.time() }
    end
	local cooldown = bers1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKKBYS , statelv , statetime )
		bers1[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--ID1857	Энергозелье
function ItemUse_PKJSYS ( role , Item )
	local statelv = 7
	local statetime = 180
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_PKJSYS )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if energ1[name] == nil then
        energ1[name] = { UsedTime = os.time() }
    end
	local cooldown = energ1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKJSYS , statelv , statetime )
		energ1[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--ID1858	Укрепляющее зелье
function ItemUse_PKSFYS ( role , Item )
	local statelv = 7
	local statetime = 300
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_PKSFYS )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if ukrep1[name] == nil then
        ukrep1[name] = { UsedTime = os.time() }
    end
	local cooldown = ukrep1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKSFYS , statelv , statetime )
		ukrep1[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--ID1859	Зелье точности
function ItemUse_PKJZYS ( role , Item )

	local statelv = 3
	local statetime = 1300
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_KUANGZ )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if Drop3[name] == nil then
        Drop3[name] = { UsedTime = os.time() }
    end
	local cooldown = Drop3[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_KUANGZ , statelv , statetime )
		Drop3[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--Усиленные плюшки
function ItemUse_XEZJBus ( role , Item )
	local statelv = 2
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	local ChaStateLv = GetChaStateLv ( role , STATE_KUANGZ )
local name = GetChaDefaultName(role)
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end

	if Cha_Boat ==  nil then
		AddState( role , role , STATE_KUANGZ , statelv , statetime )
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--Полный доспех
function ItemUse_DenglongBus ( role , Item )
	local statelv = 2
	local statetime = 1300
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_QUANS )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if dosp1[name] == nil then
        dosp1[name] = { UsedTime = os.time() }
    end
	local cooldown = dosp1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_QUANS , statelv , statetime )
		dosp1[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	
end

--Скольжения
function ItemUse_MspdYSAus ( role , Item )
	local statelv = 2
	local statetime = 2000
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_YSMspd )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if Skolz1[name] == nil then
        Skolz1[name] = { UsedTime = os.time() }
    end
	local cooldown = Skolz1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_YSMspd , statelv , statetime )
		Skolz1[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	end
--Скольжения
function ItemUse_MspdYSBus ( role , Item )
	local statelv = 2
	local statetime = 1300
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_QINGZ )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if leg1[name] == nil then
        leg1[name] = { UsedTime = os.time() }
    end
	local cooldown = leg1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_QINGZ , statelv , statetime )
		leg1[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	end
 
--ID	Бычье зелье
function ItemUse_PKMNYSus ( role , Item )
	local statelv = 10
	local statetime = 1800
	local name = GetChaDefaultName(role)
	local ChaStateLv = GetChaStateLv ( role , STATE_PKMNYS )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKMNYS , statelv , statetime )
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--ID	Боевое зелье
function ItemUse_PKZDYSus ( role , Item )

	local statelv = 9
	local statetime = 230
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_PKZDYS )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if bik1[name] == nil then
        bik1[name] = { UsedTime = os.time() }
    end
	local cooldown = bik1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKZDYS , statelv , statetime )
		bik1[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--ID	Зелье берсерка
function ItemUse_PKKBYSus ( role , Item )
	local statelv = 10
	local statetime = 40
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_PKKBYS )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if bers1[name] == nil then
        bers1[name] = { UsedTime = os.time() }
    end
	local cooldown = bers1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKKBYS , statelv , statetime )
		bers1[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--ID	Энергозелье
function ItemUse_PKJSYSus ( role , Item )
	local statelv = 9
	local statetime = 200
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_PKJSYS )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if energ1[name] == nil then
        energ1[name] = { UsedTime = os.time() }
    end
	local cooldown = energ1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKJSYS , statelv , statetime )
		energ1[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--ID	Укрепляющее зелье
function ItemUse_PKSFYSus ( role , Item )
	local statelv = 9
	local statetime = 350
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_PKSFYS )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if ukrep1[name] == nil then
        ukrep1[name] = { UsedTime = os.time() }
    end
	local cooldown = ukrep1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKSFYS , statelv , statetime )
		ukrep1[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--ID	Зелье точности
function ItemUse_PKJZYSus ( role , Item )
	local statelv = 9
	local statetime = 1200
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_PKJZYS )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if Skolz1[name] == nil then
        Skolz1[name] = { UsedTime = os.time() }
    end
	local cooldown = Skolz1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKJZYS , statelv , statetime )
		Skolz1[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--ID	Благословляющее зелье
function ItemUse_PKWDYSus ( role , Item )
	local statelv = 10
	local statetime = 10

	local ChaStateLv = GetChaStateLv ( role , STATE_PKWD )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKWD , statelv , statetime )
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end

	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." становится неуязвимым в течение 10 секунд!"
	Notice ( message )
end



--ID4019	Паровое судно Треска
function ItemUse_XUEYU( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

function ItemUse_CUIZHU( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 600
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

function ItemUse_HUIXIANG( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 600
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

function ItemUse_YINGYUE( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime =480
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

function ItemUse_LANGBEI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv =5
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 480
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

function ItemUse_XIAOXIAO( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 6
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 360
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

function ItemUse_HUPI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv =7
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 300
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

function ItemUse_YINJIAO( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 8
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 180
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

function ItemUse_TAOTU( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 9
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 180
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

function ItemUse_BAIWANG( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local statelv = 10
	local ChaStateLv = GetChaStateLv ( role , STATE_XUEYU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime =60
	AddState( role , role , STATE_XUEYU , statelv , statetime )
end 

function ItemUse_MANTOU( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 200 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 

function ItemUse_BAOZI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 400 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime =600
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 

function ItemUse_DABING( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 600 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 420
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 

function ItemUse_YOUTIAO( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 800 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime =300
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 

function ItemUse_CHUNJUAN( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local hp = GetChaAttr( role , ATTR_HP ) 
	local hp_resume = 1000 
	hp = hp + hp_resume 
	local mxhp = GetChaAttr( role , ATTR_MXHP) 
	if hp > mxhp then 
		 hp = mxhp 
	 end 
	SetCharaAttr(hp, role, ATTR_HP) 
	local statelv = 5
	local ChaStateLv = GetChaStateLv ( role , STATE_MANTOU )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 120
	AddState( role , role , STATE_MANTOU , statelv , statetime )
end 

function ItemUse_NVER( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 100 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 900
	AddState( role , role , STATE_NVER , statelv , statetime )
end 

function ItemUse_ZHUANGYUAN( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 200 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 600
	AddState( role , role , STATE_NVER , statelv , statetime )
end 

function ItemUse_DUKANG( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 300 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 420
	AddState( role , role , STATE_NVER , statelv , statetime )
end 

function ItemUse_MAOTAI( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 400 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 300
	AddState( role , role , STATE_NVER , statelv , statetime )
end 

function ItemUse_RENSHEN( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 500 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 5
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 180
	AddState( role , role , STATE_NVER , statelv , statetime )
end 

function ItemUse_HUGU( role , Item ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local sp = GetChaAttr( role , ATTR_SP ) 
	local sp_resume = 600 
	sp = sp + sp_resume 
	local mxsp = GetChaAttr( role , ATTR_MXSP) 
	if sp > mxsp then 
		 sp = mxsp 
	 end 
	SetCharaAttr(sp, role, ATTR_SP) 
	local statelv = 6
	local ChaStateLv = GetChaStateLv ( role , STATE_NVER )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 120
	AddState( role , role , STATE_NVER , statelv , statetime )
end 

-- ID3116	Эльфийский фрукт
function ItemUse_JLG( role , Item )
	local statelv = 1
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end

-- ID3117	Красный финик
function ItemUse_SZ ( role , Item )
	local statelv = 1
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end

-- ID3118	Гриб
function ItemsUse_MG ( role , Item )
	local statelv = 3
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

-- ID3119	Плод дурмана
function ItemUse_MTLG ( role , Item )
	local statelv = 4
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

-- ID3120	Ледяной фрукт
function ItemUse_BG ( role , Item )
	local statelv = 4
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

-- ID3121	Радужный фрукт
function ItemUse_WCG( role , Item )
	local statelv = 5
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

--	3122	Сок Эльф Фрукта
function ItemUse_JLGZ( role , Item )
	local statelv = 6
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

--	3123	Чай из красных фиников
function ItemUse_SZC( role , Item )
	local statelv = 7
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

--	3124	Грибной суп
function ItemUse_MGT( role , Item )
	local statelv = 8
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

--	3125	Сок плодов дурмана
function ItemUse_MTLGZ( role , Item )
	local statelv = 9
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

--	3126	Морожка
function ItemUse_BQL( role , Item )
	local statelv = 10
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

--	3127	Радужны сок
function ItemUse_WCLLZ( role , Item )
	local statelv = 11
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 

--	3128	Фруктовый коктейль
function ItemUse_ZHGZ( role , Item )
	local statelv = 12
	local statetime = 15
	local StateLvNow = GetChaStateLv(role,STATE_HPPOTS)
	if StateLvNow >= 1 then
		SystemNotice(role,"В данный момент вы уже используете бонус Востановления, пожалуйста попробуй позднее.")
		UseItemFailed ( role )
		return
	else
		AddState ( role , role , STATE_HPPOTS , statelv , statetime )
	end
end 
--Клецка
function ItemUse_ZhongZi ( role , Item ) 
	local hp = GetChaAttr(role, ATTR_HP)  
	if hp <= 0 then   
	end 
	hp_resume = 1000   
	hp = hp + hp_resume 
	mxhp = GetChaAttr(role,ATTR_MXHP) 
	if hp > mxhp then 
		hp = mxhp 
	end 
	SetCharaAttr(hp, role, ATTR_HP) 
end 
--Суперледенец
function ItemUse_Crbbt(role, Item )
	local statelv = 1
	local statetime = 20
	AddState( role , role , STATE_CJBBT , statelv , statetime )
end

function ItemUse_Jrqkl(role, Item )
	local statelv = 1
	local statetime = 20
	AddState( role , role , STATE_JRQKL , statelv , statetime )
end

-- ID3129	Целебная трава
function ItemUse_YYCY( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,4)    == 0 then return end 
end

-- ID3130	Лепесток многоцвет
function ItemUse_MHHB( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,8)    == 0 then return end 
end 

-- ID3131	Чудо-фрукт
function ItemUse_QYGS( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,18)   == 0 then return end 
end 

-- ID3132	Побег снежной травы
function ItemUse_BFCY( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,22)   == 0 then return end 
end 

-- ID3133	Лакричное зелье
function ItemUse_GCYS( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,33)   == 0 then return end 
end 

-- ID3134	Чай "Бодрячок"
function ItemUse_XSHC( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,38)   == 0 then return end 
end 

-- ID3135	Чудо-мазь
function ItemUse_MZQYG( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,41)   == 0 then return end  
end 

-- ID3136	Брикет снежной травы
function ItemUse_BYS( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,59)   == 0 then return end 
end 

-- ID3137	Тиамарин
function ItemUse_TMLGZ( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,100)  == 0 then return end  
end 

-- ID3138	Загадочный фрукт
function ItemUse_SMG( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,111)  == 0 then return end  
end 

-- ID3139	Агрипнотик
function ItemUse_TSJ( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,141)  == 0 then return end  
end 

-- ID3140	Волшебное зелье
function ItemUse_MHYS( role , Item )
	if CanUseItem(role) == 0 then return end
	if AddSp(role,201)  == 0 then return end  
end 

-- ID3917	Особый клубничный бисквит
function ItemUse_TZCMB ( role , Item )
	if CanUseItem(role) == 0 then return end
	tempt_monster( role ,  99 )
end 


-- УСИЛИТЕЛИ ОПЫТА\ДРОПА
--Опыт

function ItemUse_MoreExpGzLv2( role , Item )
	local name = GetChaDefaultName(role)
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if DropEXP1[name] == nil then
        DropEXP1[name] = { UsedTime = os.time() }
    end
	local cooldown = DropEXP1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель опыта еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end

	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	DropEXP1[name].UsedTime = os.time()+statetime
	SystemNotice ( role ,"Эффект увеличения опыта активирован " )
end

--ID3844	Небесная ягода
function ItemUse_MoreExpGz( role , Item )
	local name = GetChaDefaultName(role)
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	
	if DropEXP1[name] == nil then
        DropEXP1[name] = { UsedTime = os.time() }
    end
	local cooldown = DropEXP1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель опыта еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end

	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	DropEXP1[name].UsedTime = os.time()+statetime
	SystemNotice ( role ,"Эффект увеличения опыта активирован " )
end
--ID3094	Усилитель стремлений
function ItemUse_MoreExpGzA( role , Item )
	local name = GetChaDefaultName(role)
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	
	if DropEXP1[name] == nil then
        DropEXP1[name] = { UsedTime = os.time() }
    end
	local cooldown = DropEXP1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель опыта еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end

	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	DropEXP1[name].UsedTime = os.time()+statetime
	SystemNotice ( role ,"Эффект увеличения опыта активирован " )
end
--ID1128	Мини-усилитель натиска
function ItemUse_WeiXing( role , Item )
	local lv = GetChaAttr(role, ATTR_LV)
	local name = GetChaDefaultName(role)
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	local statetime = 450
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	
	if lv > 40 then
		SystemNotice ( role , "Данный усилитель предназначен только для игроков до 40 ур." )
		UseItemFailed ( role )
		return
	end
	if DropEXP1[name] == nil then
        DropEXP1[name] = { UsedTime = os.time() }
    end
	local cooldown = DropEXP1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель опыта еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end

	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	DropEXP1[name].UsedTime = os.time()+statetime
	SystemNotice ( role ,"Эффект увеличения опыта активирован " )
end
--ID3095	2.5x Супер Усилитель стремлений

--сус х3
function ItemUse_HighExpGzLv3A( role , Item )
	local lv = GetChaAttr(role, ATTR_LV)
	local name = GetChaDefaultName(role)
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	ChaStateLv=ChaStateLv+0.5
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	
	if lv >= 70 then
		SystemNotice ( role , "Данный усилитель предназначен только для игроков c 70 ур." )
		UseItemFailed ( role )
		return
	end
	if DropEXP1[name] == nil then
        DropEXP1[name] = { UsedTime = os.time() }
    end
	local cooldown = DropEXP1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель опыта еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end

	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	DropEXP1[name].UsedTime = os.time()+statetime
	SystemNotice ( role ,"Эффект увеличения опыта активирован " )
	end


function ItemUse_MoreExpGzLv3A( role , Item )
	local lv = GetChaAttr(role, ATTR_LV)
	local name = GetChaDefaultName(role)
	local statelv = 2.5
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	ChaStateLv=ChaStateLv+0.5
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	
	if lv < 60 then
		SystemNotice ( role , "Данный усилитель предназначен только для игроков c 60 ур." )
		UseItemFailed ( role )
		return
	end
	if DropEXP1[name] == nil then
        DropEXP1[name] = { UsedTime = os.time() }
    end
	local cooldown = DropEXP1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель опыта еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end

	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	DropEXP1[name].UsedTime = os.time()+statetime
	SystemNotice ( role ,"Эффект увеличения опыта активирован " )
	end
--ID3880	Супер тайнофрукт
function ItemUse_MoreExpGzLv3( role , Item )
	local lv = GetChaAttr(role, ATTR_LV)
	local name = GetChaDefaultName(role)
	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	
	if lv < 60 then
		SystemNotice ( role , "Данный усилитель предназначен только для игроков c 60 ур." )
		UseItemFailed ( role )
		return
	end
	if DropEXP1[name] == nil then
        DropEXP1[name] = { UsedTime = os.time() }
    end
	local cooldown = DropEXP1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель опыта еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end

	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	DropEXP1[name].UsedTime = os.time()+statetime
	SystemNotice ( role ,"Эффект увеличения опыта активирован " )
end
--ID5694	3,5х-Усилитель стремлений
function ItemUse_MoreExpGzLv3x5A( role , Item )
	local lv = GetChaAttr(role, ATTR_LV)
	local name = GetChaDefaultName(role)
	local statelv = 3.5
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	ChaStateLv=ChaStateLv+0.5
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	
	if lv < 75 then
		SystemNotice ( role , "Данный усилитель предназначен только для игроков c 75 ур." )
		UseItemFailed ( role )
		return
	end
	if DropEXP1[name] == nil then
        DropEXP1[name] = { UsedTime = os.time() }
    end
	local cooldown = DropEXP1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель опыта еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end

	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	DropEXP1[name].UsedTime = os.time()+statetime
	SystemNotice ( role ,"Эффект увеличения опыта активирован " )
end
--ID5695	4х-Усилитель стремлений
function ItemUse_MoreExpGzLv4A( role , Item )
	local lv = GetChaAttr(role, ATTR_LV)
	local name = GetChaDefaultName(role)
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	
	if lv < 80 then
		SystemNotice ( role , "Данный усилитель предназначен только для игроков c 80 ур." )
		UseItemFailed ( role )
		return
	end
	if DropEXP1[name] == nil then
        DropEXP1[name] = { UsedTime = os.time() }
    end
	local cooldown = DropEXP1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель опыта еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end

	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	DropEXP1[name].UsedTime = os.time()+statetime
	SystemNotice ( role ,"Эффект увеличения опыта активирован " )
end
--ID0993	Суперусилитель
function ItemUse_CJZTQ ( role , Item )
	local lv = GetChaAttr(role, ATTR_LV)
	local name = GetChaDefaultName(role)
	local statelv = 10
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	
	if lv > 49 then
		SystemNotice ( role , "Данный усилитель предназначен только для игроков до 49 ур." )
		UseItemFailed ( role )
		return
	end
	
	if DropEXP1[name] == nil then
        DropEXP1[name] = { UsedTime = os.time() }
    end
	local cooldown = DropEXP1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель опыта еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end

	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBJYGZ , statelv , statetime )
	end
	DropEXP1[name].UsedTime = os.time()+statetime
	SystemNotice ( role ,"Эффект увеличения опыта активирован " )
end



function ItemUse_ZD_MoreExpGz( role , Item )
	local lv = GetChaAttr(role, ATTR_LV)
	local name = GetChaDefaultName(role)
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_ZDSBJYGZ )
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	
	
	
	if gr[name] == nil then
        gr[name] = { UsedTime = os.time() }
    end
	local cooldown = gr[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель опыта еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end

	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_ZDSBJYGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_ZDSBJYGZ , statelv , statetime )
	end
	gr[name].UsedTime = os.time()+statetime
		SystemNotice ( role ,"Почувствуй эффект от Фрукта опыта отряда" )

end 




--Дроп STATE_SBBLGZ
--ID1006	Слеза без любви
--ID3845	Зачарованная ягода
function ItemUse_MoreItemGz( role , Item )
	local name = GetChaDefaultName(role)
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	
	if Drop1[name] == nil then
        Drop1[name] = { UsedTime = os.time() }
    end
	local cooldown = Drop1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель опыта еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end

	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	Drop1[name].UsedTime = os.time()+statetime
	SystemNotice ( role ,"Почувствуй эффект от Зачарованной ягоды" )
end

--ID3096	Усилитель удачи -
function ItemUse_MoreItemGzA( role , Item )
	local name = GetChaDefaultName(role)
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	
	if Drop1[name] == nil then
        Drop1[name] = { UsedTime = os.time() }
    end
	local cooldown = Drop1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель опыта еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end

	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	Drop1[name].UsedTime = os.time()+statetime
		SystemNotice ( role ,"Почувствуй эффект от Усилителя удачи" )
end
--ID3097	Большой усилитель удачи
function ItemUse_MoreItemGzLv3A( role , Item )
	local name = GetChaDefaultName(role)
	local statelv = 3
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	
	if Drop1[name] == nil then
        Drop1[name] = { UsedTime = os.time() }
    end
	local cooldown = Drop1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель опыта еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end

	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	Drop1[name].UsedTime = os.time()+statetime
	SystemNotice ( role ,"Почувствуй эффект от Большого усилителя удачи" )
end
--ID3881	Особый счастье-фрукт
function ItemUse_MoreItemGzLv2( role , Item )
	local name = GetChaDefaultName(role)
	local statelv = 2.2
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	ChaStateLv=ChaStateLv + 0.3
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	
	if Drop1[name] == nil then
        Drop1[name] = { UsedTime = os.time() }
    end
	local cooldown = Drop1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель опыта еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end

	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	Drop1[name].UsedTime = os.time()+statetime
	SystemNotice ( role ,"Почувствуй эффект от Особого счастье-фрукта" )
end
--ID3882	Супер счастье-фрукт STATE_SBBLG
function ItemUse_MoreItemGzLv3( role , Item )
	local name = GetChaDefaultName(role)
	local statelv = 2.6
	local ChaStateLv = GetChaStateLv ( role , STATE_SBBLGZ )
	ChaStateLv=ChaStateLv + 0.5
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	
	if Drop1[name] == nil then
        Drop1[name] = { UsedTime = os.time() }
    end
	local cooldown = Drop1[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель опыта еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end

	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
	else
		AddState( Cha_Boat , Cha_Boat , STATE_SBBLGZ , statelv , statetime )
	end
	Drop1[name].UsedTime = os.time()+statetime
	SystemNotice ( role ,"Почувствуй эффект от Супер счастье-фрукта" )
end





--ID3074	Очищающий самоцвет
--ID3883	Синий кузнечный фрукт
function ItemUse_LSDZG ( role , Item )
	local statelv = 4
	local statetime = 60
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_JLGLJB )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if Kovka[name] == nil then
        Kovka[name] = { UsedTime = os.time() }
    end
	local cooldown = Kovka[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_JLGLJB , statelv , statetime )
		Kovka[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end

	end
--ИД 8150	Супер вставка фрукт
function ItemUse_LSDZGgr ( role , Item )

	local statelv = 9
	local statetime = 60
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_JLGLJB )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if Kovka[name] == nil then
        Kovka[name] = { UsedTime = os.time() }
    end
	local cooldown = Kovka[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_JLGLJB , statelv , statetime )
		Kovka[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--ID3075	Композиционный катализатор
--ID3884	Красный объединяющий фрукт
function ItemUse_HSDZG ( role , Item )

	local statelv = 2
	local statetime = 60
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_HCGLJB )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if Sochet[name] == nil then
        Sochet[name] = { UsedTime = os.time() }
    end
	local cooldown = Sochet[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_HCGLJB , statelv , statetime )
		Sochet[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--ID8151	Супер Фрукт Сочетаний
function ItemUse_HSDZGgr ( role , Item )

	local statelv = 10
	local statetime = 60
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_HCGLJB )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if Sochet[name] == nil then
        Sochet[name] = { UsedTime = os.time() }
    end
	local cooldown = Sochet[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_HCGLJB , statelv , statetime )
		Sochet[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	end

--ID3888	Потерянная рождественская шапка
function ItemUse_DSSDM ( role , Item )
	local statelv = 1
	local statetime = 300
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	local ChaStateLv = GetChaStateLv ( role , STATE_PKSFYS )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKSFYS , statelv , statetime )
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--ID3896	Злобный рог
function ItemUse_XEZJ ( role , Item )
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	local ChaStateLv = GetChaStateLv ( role , STATE_PKZDYS )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKZDYS , statelv , statetime )
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end





-- КНИГИ НАВЫКОВ НАЧАЛО

-- ID3184	Владение щитом
function Sk_Script_Dpsl ( role , Item )
	local sk_add = SK_DPSL
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end
end

-- ID3190	Двойной выстрел
function Sk_Script_Lzj ( role , Item )
	local sk_add = SK_LZJ  
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3193	Метеоритный дождь
function Sk_Script_Lxjy ( role , Item )
	local sk_add = SK_LXJY 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3167	Вой
function Sk_Script_Lh ( role , Item )
	local sk_add = SK_LH 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3200	Дробь
function Sk_Script_Ssd ( role , Item )
	local sk_add = SK_SSD  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3199	Проникающая пуля
function Sk_Script_Ctd ( role , Item )
	local sk_add = SK_CTD 
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3213	Великое исцеление
function Sk_Script_Dzy ( role , Item )
	local sk_add = SK_DZY 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3293	Рык тигра
function Sk_Script_Hx ( role , Item )
	local sk_add = SK_HX 
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3198	Зажигательная пуля
function Sk_Script_Rsd ( role , Item )
	local sk_add =SK_RSD 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3160	Искусство владеть мечом
function Sk_Script_Jssl ( role , Item )
	local sk_add = SK_JSSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3161	Стальная воля
function Sk_Script_Gtyz ( role , Item )
	local sk_add = SK_GTYZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3162	Усиление
function Sk_Script_Qhtz ( role , Item )
	local sk_add = SK_QHTZ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3163	Сноровка
function Sk_Script_Lqhb ( role , Item )
	local sk_add = SK_LQHB 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3164	Концентрация
function Sk_Script_Jdzz ( role , Item )
	local sk_add = SK_JDZZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3165	Иллюзорный удар
function Sk_Script_Hyz ( role , Item )
	local sk_add = SK_HYZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	--LG( " learn sk " , " Sk_Script_Hyz ()	: " , "sever determine return= " , a ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3166	Могучий удар
function Sk_Script_Zj ( role , Item )
	local sk_add = SK_ZJ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3168	Мастер большого меча
function Sk_Script_Jjsl ( role , Item )
	local sk_add = SK_JJSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3169	Варварское дробление
function Sk_Script_Ymsl ( role , Item )
	local sk_add = SK_YMSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3170	Берсерк
function Sk_Script_Kb ( role , Item )
	local sk_add = SK_KB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3171	Поклонение тотему
function Sk_Script_Ttcb ( role , Item )
	local sk_add = SK_TTCB  
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3172	Кровавый бык
function Sk_Script_Mnrx ( role , Item )
	local sk_add = SK_MNRX 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3173	Первобытная ярость
function Sk_Script_Swzq ( role , Item )
	local sk_add = SK_SWZQ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3174	Рубка двумя мечами
function Sk_Script_Ssjjc ( role , Item )
	local sk_add = SK_FSZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3175	Отклонение
function Sk_Script_Hys ( role , Item )
	local sk_add = SK_HYS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3176	Кровавое безумие
function Sk_Script_Pxkg ( role , Item )
	local sk_add = SK_PXKG 
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3177	Скрытность
function Sk_Script_Qx ( role , Item )
	local sk_add = SK_YS  
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3178	Удар в спину
function Sk_Script_Bc ( role , Item )
	local sk_add = SK_BC  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3179	Теневой удар
function Sk_Script_Guz ( role , Item )
	local sk_add = SK_GWZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	--LG( " learn sk " , " function Sk_Script_Guz ()	: " , "sever determine return= " , a ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3180	Ядовитый дротик
function Sk_Script_Db ( role , Item )
	local sk_add = SK_DB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3181	Оцепенение
function Sk_Script_Mb ( role , Item )
	local sk_add = SK_MB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3182	Звериная сила
function Sk_Script_Shtz ( role , Item )
	local sk_add = SK_SHTZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3183	Восстанавливать
function Sk_Script_Tzhf ( role , Item )
	local sk_add = SK_TZHF  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3187	Мастер стрелкового оружия
function Sk_Script_Gjsl ( role , Item )
	local sk_add = SK_GJSL  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3188	Путь ветра
function Sk_Script_Jfb ( role , Item )
	local sk_add = SK_JFB  
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3189	Глаз орла
function Sk_Script_Yy ( role , Item )
	local sk_add = SK_YY 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3192	Мастер огнестрельного оружия
function Sk_Script_Hqsl ( role , Item )
	local sk_add = SK_HQSL  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3193	Метеоритный дождь
function Sk_Script_Lxjy ( role , Item )
	local sk_add = SK_LXJY  
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3201	Исследование пороха
function Sk_Script_Dyyj ( role , Item )
	local sk_add = SK_DYJJ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3202	Калечащий выстрел
function Sk_Script_Tj ( role , Item )
	local sk_add = SK_TJ 
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3203	Ослабление
function Sk_Script_Sj ( role , Item )
	local sk_add = SK_SJ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3204	Выстрел в голову
function Sk_Script_Bt ( role , Item )
	local sk_add = SK_BT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3205	Сила
function Sk_Script_Jsjc ( role , Item )
	local sk_add = SK_JSJC  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3206	Исцеление
function Sk_Script_Xzys ( role , Item )
	local sk_add = SK_XZY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3207	Восстановление
function Sk_Script_Hfs ( role , Item )
	local sk_add = SK_HFS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3208	Призрачный удар
function Sk_Script_Xlcz ( role , Item )
	local sk_add = SK_XLCZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3209	Истинное зрение
function Sk_Script_Syzy ( role , Item )
	local sk_add = SK_SYZY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

-- ID3213	Великое исцеление
function Sk_Script_Dzy( role , Item )
	local sk_add = SK_DZY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--ID3214	Мощное Восстановление
function Sk_Script_Dhfs ( role , Item )
	local sk_add = SK_DHFS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3210	Призрачный огонь
function Sk_Script_Xlzh ( role , Item )
	local sk_add = SK_XLZH  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3211	Мощь бури
function Sk_Script_Fzlz ( role , Item )
	local sk_add = SK_FZLZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3212	Благодать господня
function Sk_Script_Sy ( role , Item )
	local sk_add = SK_SY  
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3215	Воскрешение
function Sk_Script_Fh ( role , Item )
	local sk_add = SK_FH  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3216	Воронка торнадо
function Sk_Script_Jsfb ( role , Item )
	local sk_add = SK_JSFB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3217	Ангельский щит
function Sk_Script_Tshd ( role , Item )
	local sk_add = SK_TSHD  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3218	Печать старейшины
function Sk_Script_Xzfy ( role , Item )
	local sk_add = SK_XZFY  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3219	Росчерк тени
function Sk_Script_Ayzz ( role , Item )
	local sk_add = SK_AYZZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3220	Проклятый огонь
function Sk_Script_Zzzh ( role , Item )
	local sk_add = SK_ZZZH  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3221	Контргард
function Sk_Script_Sdbz ( role , Item )
	local sk_add = SK_SDBZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3222	Бездонное болото
function Sk_Script_Nzs ( role , Item )
	local sk_add = SK_SYNZ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3223	Магический щит
function Sk_Script_Xlpz ( role , Item )
	local sk_add = SK_XLPZ 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3224	Исцеляющий источник
function Sk_Script_Hfwq ( role , Item )
	local sk_add = SK_HFWQ  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3226	Рубка леса
function Sk_Script_Ks	( role , Item )
	local sk_add = SK_KS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--ID2956	Книга навыков перерожденного (Воитель)
function Sk_Script_Wyz ( role , Item )
	local sk_add = SK_WYZ 
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--ID2957	Книга навыков перерожденного (Чемпион)
function Sk_Script_Bsj ( role , Item )
	local sk_add = SK_BSJ 
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--ID2958	Книга навыков перерожденной (Колдунья)
function Sk_Script_Emzz ( role , Item )
	local sk_add = SK_EMZZ 
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

--ID2959	Книга навыков перерожденной (Целительница)
function Sk_Script_Sssp ( role , Item )
	local sk_add = SK_SSSP 
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--ID2960	Книга навыков перерожденного (Покоритель морей)
function Sk_Script_Cyn ( role , Item )
	local sk_add = SK_CYN 
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a == 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--ID2961	Книга навыков перерожденного (Стрелок)
function Sk_Script_Hlp ( role , Item )
	local sk_add = SK_HLP 
	local form_sklv = GetSkillLv( role , sk_add )
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

function Sk_Script_ZSSL( role , item )
	local sk_add = SK_ZSSL 
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	local zs_exp = GetChaAttr ( role , ATTR_CSAILEXP )
	if zs_exp <= 0 then
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- Морские скиллы в Лайф Страничке
-- ID8501	Водоток
function Sk_Script_SlNew( role , Item ) 
	local sk_add = SK_SL  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID8502	Броня из раковин
function Sk_Script_BkzjNew( role , Item )
	local sk_add = SK_BKZJ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID8503	Переплетение водорослей
function Sk_Script_HzcrNew( role , Item )
	local sk_add = SK_HZCR     
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID8504	Попутный ветер
function Sk_Script_SfNew( role , Item ) 
	local sk_add = SK_SF       
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID8505	Вихрь
function Sk_Script_XwNew( role , Item ) 
	local sk_add = SK_XW        
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID8506	Туман
function Sk_Script_MwNew( role , Item ) 
	local sk_add = SK_MW
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID8507	Грозовая завеса
function Sk_Script_LmNew( role , Item ) 
	local sk_add = SK_LM
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 




-- ID2679-ID2688	Справочник по Производству 1 ур. - Справочник по Производству 10 ур.
function Sk_Script_ZhiZao( role , Item ) 
	local star_lv=GetItemID(Item)-2678
	local sk_add = SK_ZHIZAO  
	local form_sklv = GetSkillLv( role , sk_add ) 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"Для изучения навыка у вас должен быть один свободный слот")
		UseItemFailed ( role )
		return
	end
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_KS ) 
	if el_sklv <star_lv  then
		SystemNotice ( role , "Из этой книги ты не узнаешь ничего нового, твой "..star_lv.." уровень Рубки леса, к сожалению является недостаточным для изучением." ) 
		UseItemFailed ( role )
		return
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if star_lv==1 and Item_CanGet < 1 then
		SystemNotice(role ,"Для изучения навыка у вас должен быть один свободный слот")
		UseItemFailed ( role )
		return
	end
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "Недостаточно очков Жизненных навыков. Попробуйте выполнить больше Исторических заданий" ) 
		UseItemFailed ( role )  
		return 
	end 
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1068  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)
	end
end 

-- ID2699-ID2708	Справочник по Ремеслу 1 ур. - Справочник по Ремеслу 10 ур.
function Sk_Script_ZhuZao( role , Item ) 
	local star_lv=GetItemID(Item)-2698
	local sk_add = SK_ZHUZAO  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_WK ) 
	if el_sklv <star_lv  then
		SystemNotice ( role ,  "Из этой книги ты не узнаешь ничего нового, твой "..star_lv.." уровень Добычи руды, к сожалению является недостаточным для изучения." ) 
		UseItemFailed ( role )
		return
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if star_lv==1 and Item_CanGet < 1 then
		SystemNotice(role ,"Для изучения навыка у вас должен быть один свободный слот")
		UseItemFailed ( role )
		return
	end
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "Недостаточно очков Жизненных навыков. Попробуйте выполнить больше Исторических заданий" ) 
		UseItemFailed ( role )  
		return 
	end
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1069  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)
	end
end

-- ID2689-ID2698	Справочник по Кулинарии 1 ур. - Справочник по Кулинарии 10 ур.
function Sk_Script_PengRen( role , Item ) 
	local star_lv=GetItemID(Item)-2688
	local sk_add = SK_PENGREN  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_BY ) 
	if el_sklv <star_lv  then
		SystemNotice ( role ,  "Из этой книги ты не узнаешь ничего нового, твой "..star_lv.." уровень Рыбной ловли, к сожалению является недостаточным для изучения." ) 
		UseItemFailed ( role )
		return
	end 
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "Недостаточно очков Жизненных навыков. Попробуйте выполнить больше Исторических заданий" ) 
		UseItemFailed ( role )  
		return 
	end 
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 8864  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)
	end
end

-- ID2709-ID2718	Справочник по Анализу 1 ур. - Справочник по Анализу 10 ур.
function Sk_Script_FenJie( role , Item ) 
	local star_lv=GetItemID(Item)-2708
	local sk_add = SK_FENJIE  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= star_lv-1  then 
		UseItemFailed ( role )  
		return 
	end 
	local el_sklv = GetSkillLv( role , SK_DL ) 
	if el_sklv <star_lv  then 
		SystemNotice ( role , "Из этой книги ты не узнаешь ничего нового, твой "..star_lv.." уровень Траления, к сожалению является недостаточным для изучения." ) 
		UseItemFailed ( role )
		return
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if star_lv==1 and Item_CanGet < 1 then
		SystemNotice(role ,"Для изучения навыка у вас должен быть один свободный слот")
		UseItemFailed ( role )
		return
	end
	a = AddChaSkill ( role , sk_add, star_lv , 1 , 1 ) 
	if a== 0 then 
		SystemNotice ( role , "Недостаточно очков Жизненных навыков. Попробуйте выполнить больше Исторических заданий" ) 
		UseItemFailed ( role )  
		return 
	end
	if star_lv==1 then
		local m1 = -1
		local m2 = -1
		m1, m2 = MakeItem ( role , 1070  , 1 , 4 )
		local Itemfinal = GetChaItem ( role , 2 , m2 )
		SetItemAttr(Itemfinal, ITEMATTR_VAL_STR ,1)
		SetItemAttr(Itemfinal, ITEMATTR_MAXENERGY ,10000)
		SetItemAttr(Itemfinal, ITEMATTR_ENERGY ,1)
	end
end

-- ID3225	Добыча руды
function Sk_Script_Wk( role , Item ) 
	local sk_add = SK_WK  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3227	Усердие
function Sk_Script_Jr( role , Item )
	local sk_add = SK_JR  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3228	Водоток
function Sk_Script_Sl( role , Item ) 
	local sk_add = SK_SL  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3229	Броня из раковин
function Sk_Script_Bkzj( role , Item )
	local sk_add = SK_BKZJ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3230	Торнадо
function Sk_Script_Jf( role , Item )
	local sk_add = SK_JF
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3231	Молния
function Sk_Script_Lj( role , Item )
	local sk_add = SK_LJ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3232	Переплетение водорослей
function Sk_Script_Hzcr( role , Item )
	local sk_add = SK_HZCR     
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3233	Коралловый луч
function Sk_Script_Bkcj( role , Item ) 
	local sk_add = SK_BKCJ      
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3234	Попутный ветер
function Sk_Script_Sf( role , Item ) 
	local sk_add = SK_SF       
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3235	Вихрь
function Sk_Script_Xw( role , Item ) 
	local sk_add = SK_XW        
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3236	Туман
function Sk_Script_Mw( role , Item ) 
	local sk_add = SK_MW
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3237	Грозовая завеса
function Sk_Script_Lm( role , Item ) 
	local sk_add = SK_LM
	local sk_add1 = SK_GROM
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	b = AddChaSkill ( role , sk_add1, 1 , 1 , 1 ) 
	if a == 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3238	Бронелом
function Sk_Script_Pj( role , Item ) 
	local sk_add = SK_PJ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3239	Воодушевление
function Sk_Script_Fnq( role , Item ) 
	local sk_add = SK_FNQ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3197	Ледяная стрела
function Sk_Script_Bdj( role , Item ) 
	local sk_add = SK_BDJ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3241	Отравленная стрела
function Sk_Script_Dj( role , Item ) 
	local sk_add = SK_DJ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

-- ID3242	Закалка
function Sk_Script_Shpf( role , Item )
	local sk_add = SK_SHPF
	local form_sklv = GetSkillLv( role , sk_add )  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )
		return 
	end 
end 

-- ID3297	Насмешка
function Sk_Script_Cf( role , Item )
	local sk_add = SK_CHF
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then
		UseItemFailed ( role )
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

-- ID3298	Рык
function Sk_Script_Px( role , Item )
	local sk_add = SK_PAX
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

-- ID3300	Сильная магия
function Sk_Script_MLCH( role , Item )
	local sk_add = SK_MLCH
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

-- ID3301	Кристальное благословени
function Sk_Script_BLYZ( role , Item )
	local sk_add = SK_BLYZ
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

function AddSailSkill ( role , i , sk_add , sailexp_req ) 
--	LG ( "AddSailSkill" , "__add a new sailsk________________________ "  ) 

	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= i - 1  then 
		SystemNotice ( role , "Эта книга не в состояние поднять ваш текущий уровень умения." ) 
		UseItemFailed ( role )  
		return 
	end 

	local sail_exp_remain = GetChaAttr ( role , ATTR_CLEFT_SAILEXP ) 
	if sail_exp_remain < sailexp_req  then 
		SystemNotice ( role , "Опыта навигации недостаточно. Невозможно поднять уровень умения. Пожалуйста, старайтесь лучше!" ) 
		UseItemFailed ( role )  
		return 
	end 
--	LG ( "AddSailSkill" , "Skill ID" ,  sk_add , "  Skill Level  " , i  ) 
--	LG ( "AddSailSkill" , " Exisiting Navigation EXP  " , sail_exp_remain , "  Navigation EXP consumed " , sailexp_req ) 
	sail_exp_remain = sail_exp_remain - sailexp_req 
--	LG ( "AddSailSkill" , " Remaining Navigation EXP  " , sail_exp_remain ) 

	SetCharaAttr ( sail_exp_remain , role , ATTR_CLEFT_SAILEXP ) 
	SystemNotice ( role , "Навигационного опыта использовано:" .. sailexp_req ) 

	a = AddChaSkill ( role , sk_add, 1 , 0 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Sk_Script_Hpsl1 ( role , Item )
	local i = 1
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl2 ( role , Item )
	local i = 2
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl3 ( role , Item )
	local i = 3
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl4 ( role , Item )
	local i = 4
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl5 ( role , Item )
	local i = 5
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl6 ( role , Item )
	local i = 6
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl7 ( role , Item )
	local i = 7
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl8 ( role , Item )
	local i = 8
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl9 ( role , Item )
	local i = 9
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Hpsl10 ( role , Item )
	local i = 10
	local sk_add = SK_HPSL
	local sailexp_req = sk_hpsl [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Jbjg1 ( role , Item )
	local i = 1
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Jbjg2 ( role , Item )
	local i = 2
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Jbjg3 ( role , Item )
	local i = 3
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Jbjg4 ( role , Item )
	local i = 4
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Jbjg5 ( role , Item )
	local i = 5
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Jbjg6 ( role , Item )
	local i = 6
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg7 ( role , Item )
	local i = 7
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Jbjg8 ( role , Item )
	local i = 8
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Jbjg9 ( role , Item )
	local i = 9
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Jbjg10 ( role , Item )
	local i = 10
	local sk_add = SK_JBJG
	local sailexp_req = sk_jbjg [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs1 ( role , Item )
	local i = 1
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs2 ( role , Item )
	local i = 2
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs3 ( role , Item )
	local i = 3
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs4 ( role , Item )
	local i = 4
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs5 ( role , Item )
	local i = 5
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs6 ( role , Item )
	local i = 6
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs7 ( role , Item )
	local i = 7
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs8 ( role , Item )
	local i = 8
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs9 ( role , Item )
	local i = 9
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Cfs10 ( role , Item )
	local i = 10
	local sk_add = SK_CFS
	local sailexp_req = sk_cfs [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh1 ( role , Item )
	local i = 1
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh2 ( role , Item )
	local i = 2
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh3 ( role , Item )
	local i = 3
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh4 ( role , Item )
	local i = 4
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh5 ( role , Item )
	local i = 5
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh6 ( role , Item )
	local i = 6
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh7 ( role , Item )
	local i = 7
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh8 ( role , Item )
	local i = 8
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh9 ( role , Item )
	local i = 9
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req )
end

function Sk_Script_Ctqh10 ( role , Item )
	local i = 10
	local sk_add = SK_CTQH
	local sailexp_req = sk_ctqh [ i ]
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr1 ( role , Item ) 
	local i = 1 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr2 ( role , Item ) 
	local i = 2
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr3 ( role , Item ) 
	local i = 3 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr4 ( role , Item ) 
	local i = 4 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr5 ( role , Item ) 
	local i = 5 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr6 ( role , Item ) 
	local i = 6 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr7 ( role , Item ) 
	local i = 7 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr8 ( role , Item ) 
	local i = 8 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr9 ( role , Item ) 
	local i = 9 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

function Sk_Script_Bjkr10 ( role , Item ) 
	local i = 10 
	local sk_add = SK_BJKR
	local sailexp_req = sk_bjkr [ i ]  
	AddSailSkill ( role , i , sk_add , sailexp_req ) 
end

--ID3294	Рыболовство
function Sk_Script_By ( role , Item )
	local sk_add = SK_BY
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

--ID3295	Траление
function Sk_Script_Dl ( role , Item )
	local sk_add = SK_DL
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

--ID3296	Поставить ларек
function Sk_Script_Btjn ( role , Item )
	local sk_add = SK_BAT
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

--ID3299	Ремонт
function Sk_Script_Pkqx ( role , Item )
	local sk_add = SK_PKQX
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end

--ID4547	Корабельный лес
function ItemUse_Wood ( role , Item ) 
	local k = ChaIsBoat ( role ) 
	if k == 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "Предмет может быть использован только на море" )
		return 
	end 
	local hp = GetChaAttr ( role , ATTR_HP ) 
	local mxhp = GetChaAttr ( role, ATTR_MXHP ) 
	if hp < 0 then 
		UseItemFailed ( role ) 
		SystemNotice ( role , "Ваш корабль затонул. Невозможно использовать предмет" ) 
	end 
	local statelv = 1
	local statetime = 63
	AddState ( role , role , STATE_MCK , statelv , statetime )
end

--НАВЫКИ КОНЕЦ
function State_MCK_Add ( role , statelv )
	local hpdmg = -100
	Hp_Endure_Dmg ( role , hpdmg )
	ALLExAttrSet(role)
end 

function State_MCK_Rem ( role , statelv ) 
end

--ID1815	Красивый сундук
function ItemUse_HLBX ( role , Item )
	local item_type = BaoXiang_HLBX 
	local item_type_rad = BaoXiang_HLBX_Rad 
	local item_type_count = BaoXiang_HLBX_Count 
	local maxitem = BaoXiang_HLBX_Mxcount
	local item_quality = BaoXiang_HLBX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	--local itemname = GetItemName ( ItemId ) 
	--local cha_name = GetChaDefaultName ( role ) 
	--local message = cha_name.." открывает сундук и получает "..itemname  
	--Notice ( message )
end 

--ID1814	Мистический сундук
function ItemUse_SMBX ( role , Item )
	local item_type = BaoXiang_SMBX 
	local item_type_rad = BaoXiang_SMBX_Rad 
	local item_type_count = BaoXiang_SMBX_Count 
	local maxitem = BaoXiang_SMBX_Mxcount
	local item_quality = BaoXiang_SMBX_Qua
	local General = 0  
	local ItemId = 0 

	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	--local itemname = GetItemName ( ItemId ) 
	--local cha_name = GetChaDefaultName ( role ) 
	--local message = cha_name.." открывает сундук и получает "..itemname  
	--Notice ( message )
end 

--ID2442	Затанувший шкаф
--ID2443	Затанувший шкаф
--ID1852	Обычный сундук
function ItemUse_SYBOX ( role , Item )
	local item_type = BaoXiang_SYBOX 
	local item_type_rad = BaoXiang_SYBOX_Rad 
	local item_type_count = BaoXiang_SYBOX_Count 
	local maxitem = BaoXiang_SYBOX_Mxcount
	local item_quality = BaoXiang_SYBOX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	 if ItemId >= 0183 and  ItemId <= 0199 then
		local itemname = GetItemName ( ItemId ) 
		local cha_name = GetChaDefaultName ( role ) 
		--local message = cha_name.." открывает сундук и получает "..itemname  
		--Notice ( message )
	end
end

--ID1851	Сундук с вещами
function ItemUse_WZX ( role , Item )
	local item_type = BaoXiang_WZX 
	local item_type_rad = BaoXiang_WZX_Rad
	local item_type_count = BaoXiang_WZX_Count
	local maxitem = BaoXiang_WZX_Mxcount
	local item_quality = BaoXiang_WZX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
--	local itemname = GetItemName ( ItemId ) 
--	local cha_name = GetChaDefaultName ( role ) 
--	local message = cha_name.." открывает сундук и получает"..itemname  
--	Notice ( message )
end

--ID3400	Скелетный сундук мечника
function ItemUse_KLJS ( role , Item )
	local item_type = BaoXiang_KLJS 
	local item_type_rad = BaoXiang_KLJS_Rad 
	local item_type_count = BaoXiang_KLJS_Count 
	local maxitem = BaoXiang_KLJS_Mxcount
	local item_quality = BaoXiang_KLJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end 

--ID3401	Скелетный сундук охотника
function ItemUse_KLLR ( role , Item )
	local item_type = BaoXiang_KLLR 
	local item_type_rad = BaoXiang_KLLR_Rad 
	local item_type_count = BaoXiang_KLLR_Count 
	local maxitem = BaoXiang_KLLR_Mxcount
	local item_quality = BaoXiang_KLLR_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end 

--ID3402	Скелетный сундук знахарки
function ItemUse_KLYS ( role , Item )
	local item_type = BaoXiang_KLYS 
	local item_type_rad = BaoXiang_KLYS_Rad 
	local item_type_count = BaoXiang_KLYS_Count 
	local maxitem = BaoXiang_KLYS_Mxcount
	local item_quality = BaoXiang_KLYS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3403	Скелетный сундук исследователя
function ItemUse_KLMX ( role , Item )
	local item_type = BaoXiang_KLMX 
	local item_type_rad = BaoXiang_KLMX_Rad 
	local item_type_count = BaoXiang_KLMX_Count 
	local maxitem = BaoXiang_KLMX_Mxcount
	local item_quality = BaoXiang_KLMX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3404	Сундук заклинаний воителя
function ItemUse_ZSSJ ( role , Item )
	local item_type = BaoXiang_ZSSJ 
	local item_type_rad = BaoXiang_ZSSJ_Rad 
	local item_type_count = BaoXiang_ZSSJ_Count 
	local maxitem = BaoXiang_ZSSJ_Mxcount
	local item_quality = BaoXiang_ZSSJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3405	Сундук заклинаний чемпиона
function ItemUse_ZSJS ( role , Item )
	local item_type = BaoXiang_ZSJS 
	local item_type_rad = BaoXiang_ZSJS_Rad 
	local item_type_count = BaoXiang_ZSJS_Count 
	local maxitem = BaoXiang_ZSJS_Mxcount
	local item_quality = BaoXiang_ZSJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3406	Сундук заклинаний стрелка
function ItemUse_ZSJJ ( role , Item )
	local item_type = BaoXiang_ZSJJ
	local item_type_rad = BaoXiang_ZSJJ_Rad 
	local item_type_count = BaoXiang_ZSJJ_Count 
	local maxitem = BaoXiang_ZSJJ_Mxcount
	local item_quality = BaoXiang_ZSJJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3407	Сундук заклинаний целительницы
function ItemUse_ZSSZ ( role , Item )
	local item_type = BaoXiang_ZSSZ
	local item_type_rad = BaoXiang_ZSSZ_Rad 
	local item_type_count = BaoXiang_ZSSZ_Count 
	local maxitem = BaoXiang_ZSSZ_Mxcount
	local item_quality = BaoXiang_ZSSZ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3408	Сундук заклинаний колдуньи
function ItemUse_ZSFY ( role , Item )
	local item_type = BaoXiang_ZSFY
	local item_type_rad = BaoXiang_ZSFY_Rad 
	local item_type_count = BaoXiang_ZSFY_Count 
	local maxitem = BaoXiang_ZSFY_Mxcount
	local item_quality = BaoXiang_ZSFY_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3409	Cундук заклинаний мореплавателя
function ItemUse_ZSHH ( role , Item )
	local item_type = BaoXiang_ZSHH
	local item_type_rad = BaoXiang_ZSHH_Rad 
	local item_type_count = BaoXiang_ZSHH_Count 
	local maxitem = BaoXiang_ZSHH_Mxcount
	local item_quality = BaoXiang_ZSHH_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3410	Исчезающий сундук воителя
function ItemUse_HLSJ ( role , Item )
	local item_type = BaoXiang_HLSJ
	local item_type_rad = BaoXiang_HLSJ_Rad 
	local item_type_count = BaoXiang_HLSJ_Count 
	local maxitem = BaoXiang_HLSJ_Mxcount
	local item_quality = BaoXiang_HLSJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3411	Сундук исчезновения чемпиона
function ItemUse_HLJS ( role , Item )
	local item_type = BaoXiang_HLJS
	local item_type_rad = BaoXiang_HLJS_Rad 
	local item_type_count = BaoXiang_HLJS_Count 
	local maxitem = BaoXiang_HLJS_Mxcount
	local item_quality = BaoXiang_HLJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3412	Сундук исчезновения стрелка
function ItemUse_HLJJ ( role , Item )
	local item_type = BaoXiang_HLJJ
	local item_type_rad = BaoXiang_HLJJ_Rad 
	local item_type_count = BaoXiang_HLJJ_Count 
	local maxitem = BaoXiang_HLJJ_Mxcount
	local item_quality = BaoXiang_HLJJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3413	Исчезающий сундук целительницы
function ItemUse_HLSZ ( role , Item )
	local item_type = BaoXiang_HLSZ
	local item_type_rad = BaoXiang_HLSZ_Rad 
	local item_type_count = BaoXiang_HLSZ_Count 
	local maxitem = BaoXiang_HLSZ_Mxcount
	local item_quality = BaoXiang_HLSZ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )

	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3414	Сундук исчезновения колдуньи
function ItemUse_HLFY ( role , Item )
	local item_type = BaoXiang_HLFY
	local item_type_rad = BaoXiang_HLFY_Rad 
	local item_type_count = BaoXiang_HLFY_Count 
	local maxitem = BaoXiang_HLFY_Mxcount
	local item_quality = BaoXiang_HLFY_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do
		d = item_type_rad [ k ] + b
		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3415	Сундук исчезновения мореплавателя
function ItemUse_HLHH ( role , Item )
	local item_type = BaoXiang_HLHH
	local item_type_rad = BaoXiang_HLHH_Rad 
	local item_type_count = BaoXiang_HLHH_Count 
	local maxitem = BaoXiang_HLHH_Mxcount
	local item_quality = BaoXiang_HLHH_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do
		d = item_type_rad [ k ] + b
		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3416	Потайной сундук воителя
function ItemUse_MSJ ( role , Item )
	local item_type = BaoXiang_MSJ
	local item_type_rad = BaoXiang_MSJ_Rad 
	local item_type_count = BaoXiang_MSJ_Count 
	local maxitem = BaoXiang_MSJ_Mxcount
	local item_quality = BaoXiang_MSJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do
		d = item_type_rad [ k ] + b
		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3417	Таинственный сундук чемпиона
function ItemUse_MJS ( role , Item )
	local item_type = BaoXiang_MJS
	local item_type_rad = BaoXiang_MJS_Rad 
	local item_type_count = BaoXiang_MJS_Count 
	local maxitem = BaoXiang_MJS_Mxcount
	local item_quality = BaoXiang_MJS_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do
		d = item_type_rad [ k ] + b
		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3418	Таинственный сундук стрелка
function ItemUse_MJJ ( role , Item )
	local item_type = BaoXiang_MJJ
	local item_type_rad = BaoXiang_MJJ_Rad 
	local item_type_count = BaoXiang_MJJ_Count 
	local maxitem = BaoXiang_MJJ_Mxcount
	local item_quality = BaoXiang_MJJ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do
		d = item_type_rad [ k ] + b
		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3419	Таинственный сундук целительницы
function ItemUse_MSZ ( role , Item )
	local item_type = BaoXiang_MSZ
	local item_type_rad = BaoXiang_MSZ_Rad 
	local item_type_count = BaoXiang_MSZ_Count 
	local maxitem = BaoXiang_MSZ_Mxcount
	local item_quality = BaoXiang_MSZ_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do
		d = item_type_rad [ k ] + b
		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3420	Таинственный сундук колдуньи
function ItemUse_MFY ( role , Item )
	local item_type = BaoXiang_MFY
	local item_type_rad = BaoXiang_MFY_Rad 
	local item_type_count = BaoXiang_MFY_Count 
	local maxitem = BaoXiang_MFY_Mxcount
	local item_quality = BaoXiang_MFY_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3421	Таинственный сундук покорителя морей
function ItemUse_MHH ( role , Item )
	local item_type = BaoXiang_MHH
	local item_type_rad = BaoXiang_MHH_Rad 
	local item_type_count = BaoXiang_MHH_Count 
	local maxitem = BaoXiang_MHH_Mxcount
	local item_quality = BaoXiang_MHH_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3422	Сундук из Затерянного города
function ItemUse_FLBX ( role , Item )
	local item_type = BaoXiang_FLBX
	local item_type_rad = BaoXiang_FLBX_Rad 
	local item_type_count = BaoXiang_FLBX_Count 
	local maxitem = BaoXiang_FLBX_Mxcount
	local item_quality = BaoXiang_FLBX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3423	Сундук с Темной топи
function ItemUse_ZZBX ( role , Item )
	local item_type = BaoXiang_ZZBX
	local item_type_rad = BaoXiang_ZZBX_Rad 
	local item_type_count = BaoXiang_ZZBX_Count 
	local maxitem = BaoXiang_ZZBX_Mxcount
	local item_quality = BaoXiang_ZZBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3424	Сундук из Мира демонов
function ItemUse_MFBX ( role , Item )
	local item_type = BaoXiang_MFBX
	local item_type_rad = BaoXiang_MFBX_Rad 
	local item_type_count = BaoXiang_MFBX_Count 
	local maxitem = BaoXiang_MFBX_Mxcount
	local item_quality = BaoXiang_MFBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--	3458	Сундук потаенного
function ItemUse_MZBX ( role , Item )
	local item_type = BaoXiang_MZBX
	local item_type_rad = BaoXiang_MZBX_Rad 
	local item_type_count = BaoXiang_MZBX_Count 
	local maxitem = BaoXiang_MZBX_Mxcount
	local item_quality = BaoXiang_MZBX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break 
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local itemname = GetItemName ( ItemId ) 
	local cha_name = GetChaDefaultName ( role ) 
	 
end

--ID3459	Водяная мина
function ItemUse_BOMB ( role , Item ) 
	local bomb = SummonCha ( role , 1 , 704 ) 
	local statetime = 10 
	local statelv = 1 
	AddState ( role , bomb , STATE_BOMB , statelv , statetime ) 
	AddChaSkill ( bomb , SK_BOMB , 1 , 1 , 0 ) 
	SystemNotice ( role , "Мина успешно установлена!" ) 
end 

--ID1861	Качественный Корабельный лес
function ItemUse_PKMCK ( role , Item )
	local map_name = GetChaMapName ( role )
	if map_name == "secretgarden" then
		local hpdmg = -500   
		Hp_Endure_Dmg ( role , hpdmg ) 
		ALLExAttrSet(role)
	else
		SystemNotice ( role , "Этот предмет можно использовать только в Саду Эдель" )
	end
end



----

-- БИЛЕТЫ

----
--ID3141	Обратный билет
function Jz_Script_hc(role, Item )
	local i = CheckBagItem(role,3141)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3141,1)
			if j == 1 then
				MoveCity(role,"")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID4602	Билет до Серебряного
function Jz_Script_bycs(role, Item )
	local i = CheckBagItem(role,4602)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,4602,1)
			if j == 1 then
				MoveCity(role,"Аргент")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID4603	Билет до Шайтана
function Jz_Script_slcs(role, Item )
	local i = CheckBagItem(role,4603)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,4603,1)
			if j == 1 then
				MoveCity(role,"Шайтан")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID4604	Билет до Ледыни
function Jz_Script_blbcs(role, Item )
	local i = CheckBagItem(role,4604)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,4604,1)
			if j == 1 then
				MoveCity(role,"Ледынь")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID332	Билет на о. Весны
function Jz_Script_cfzs(role, Item )
	local i = CheckBagItem(role,332)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,332,1)
			if j == 1 then
				MoveCity(role,"Spring Town")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID0938	Покровительство Богини
function Jz_Script_Nebesa(role, Item )
	local i = CheckBagItem(role,938)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация очень утомительный процесс. Пожалуйста, восстановите Ваше здоровье и ману")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,938,1)
			if j == 1 then
				GoTo( role,  1602 , 908 , "jialebi")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID6205	Билет на Остров Зимы
function ItemUse_DDJP(role, Item )
	local i = CheckBagItem(role,6205)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация очень утомительный процесс. Пожалуйста, восстановите Ваше здоровье и ману")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,6205,1)
			if j == 1 then
				SetRecord(role, 1636)
				MoveCity(role,"Зимние острова")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
function Jz_Script_4thDy(role, Item )
	local i = CheckBagItem(role,2844)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2844,1)
			if j == 1 then
				MoveCity(role,"Caribbean Abaddon 4")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--ID2446	Пропуск на событие (Остров Скелетов)
function TW_Ticket_Script1(role, Item )
	local i = CheckBagItem(role,2446)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2446,1)
			if j == 1 then
				GoTo( role,  2816, 3255, "darkblue")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID7706	Пропуск к Кракену
function TW_Ticket_Kraken(role, Item )
	local i = CheckBagItem(role,7706)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,7706,1)
			if j == 1 then
				GoTo( role, 368, 164, "jialebi")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID2447	Пропуск на Остров Скелетов
function TW_Ticket_Script2(role, Item )
	local i = CheckBagItem(role,2447)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2447,1)
			if j == 1 then
				GoTo( role,  609 , 624 , "jialebi")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

---Карибы
function Jz_Script_jialebi(role, Item )
	local i = CheckBagItem(role,2445)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2445,1)
			if j == 1 then
				MoveCity(role,"Caribbean")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--Лето
function Jz_Script_xdfjp(role, Item )
	local i = CheckBagItem(role,563)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,563,1)
			if j == 1 then
				MoveCity(role,"Summer Island")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

----ОСЕНЬ
function Jz_Script_qdfjp(role, Item )
	local i = CheckBagItem(role,583)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,583,1)
			if j == 1 then
				MoveCity(role,"Autumn Island")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3828	Билет до Громограда
function Jz_Script_ltcs(role, Item )
	local i = CheckBagItem(role,3828)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3828,1)
			if j == 1 then
				MoveCity(role,"Thundoria Castle")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
--ID3829	Билет до гавани Громограда
function Jz_Script_ltjgcs(role, Item )
	local i = CheckBagItem(role,3829)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3829,1)
			if j == 1 then
				MoveCity(role,"Thundoria Harbor")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
--ID3830	Билет на Священную Снежную гору
function Jz_Script_sxscs(role, Item )
	local i = CheckBagItem(role,3830)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3830,1)
			if j == 1 then
				MoveCity(role,"Sacred Snow Mountain")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
--ID3831	Билет в Андийский лес
function Jz_Script_laslcs(role, Item )
	local i = CheckBagItem(role,3831)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3831,1)
			if j == 1 then
				MoveCity(role,"Andes Forest Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
--ID3832	Билет до Гавани Оазиса
function Jz_Script_sqcs(role, Item )
	local i = CheckBagItem(role,3832)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3832,1)
			if j == 1 then
				MoveCity(role,"Oasis Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
--ID3833	Билет до Ледяного Шипа
function Jz_Script_bjcs(role, Item )
	local i = CheckBagItem(role,3833)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3833,1)
			if j == 1 then
				MoveCity(role,"Icespire Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
--ID3834	Билет в Одинокую башню
function Jz_Script_jmztcs(role, Item )
	local i = CheckBagItem(role,3834)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3834,1)
			if j == 1 then
				MoveCity(role,"Lone Tower Entrace")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
--ID3835	Билет в Пустую пещеру
function Jz_Script_scrkcs(role, Item )
	local i = CheckBagItem(role,3835)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3835,1)
			if j == 1 then
				MoveCity(role,"Barren Cavern Entrance")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
--ID3836	Билет в Заброшенную шахту 2
function Jz_Script_fk2cs(role, Item )
	local i = CheckBagItem(role,3836)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3836,1)
			if j == 1 then
				MoveCity(role,"Abandon Mine 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
--ID3837	Билет до Заброшенной шахты 2
function Jz_Script_yk2cs(role, Item )
	local i = CheckBagItem(role,3837)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3837,1)
			if j == 1 then
				MoveCity(role,"Silver Mine 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
--ID3838	Билет до Заброшенной шахты 3
function Jz_Script_yk3cs(role, Item )
	local i = CheckBagItem(role,3838)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3838,1)
			if j == 1 then
				MoveCity(role,"Silver Mine 3")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
--ID3839	Билет в Одинокую башню 2
function Jz_Script_jmzt2cs(role, Item )
	local i = CheckBagItem(role,3839)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3839,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3840	Билет в Одинокую башню 3
function Jz_Script_jmzt3cs(role, Item )
	local i = CheckBagItem(role,3840)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3840,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 3")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3841	Билет в Одинокую башню 4
function Jz_Script_jmzt4cs(role, Item )
	local i = CheckBagItem(role,3841)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3841,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 4")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3842	Билет в Одинокую башню 5
function Jz_Script_jmzt5cs(role, Item )
	local i = CheckBagItem(role,3842)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3842,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 5")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID3843	Билет в Одинокую башню 6
function Jz_Script_jmzt6cs(role, Item )
	local i = CheckBagItem(role,3843)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3843,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 6")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--ID3847	Билет до Заброшенной шахты 1
function Jz_Script_ltcsA(role, Item )
	local i = CheckBagItem(role,3048)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3048,1)
			if j == 1 then
				MoveCity(role,"Thundoria Castle")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
function Jz_Script_ltjgcsA(role, Item )
	local i = CheckBagItem(role,3049)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3049,1)
			if j == 1 then
				MoveCity(role,"Thundoria Harbor")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
function Jz_Script_sxscsA(role, Item )

	local i = CheckBagItem(role,3050)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3050,1)
			if j == 1 then
				MoveCity(role,"Sacred Snow Mountain")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
function Jz_Script_laslcsA(role, Item )
	local i = CheckBagItem(role,3051)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3051,1)
			if j == 1 then
				MoveCity(role,"Andes Forest Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
function Jz_Script_sqcsA(role, Item )
	local i = CheckBagItem(role,3052)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3052,1)
			if j == 1 then
				MoveCity(role,"Oasis Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
function Jz_Script_bjcsA(role, Item )
	local i = CheckBagItem(role,3053)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3053,1)
			if j == 1 then
				MoveCity(role,"Icespire Haven")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
function Jz_Script_jmztcsA(role, Item )
	local i = CheckBagItem(role,3054)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3054,1)
			if j == 1 then
				MoveCity(role,"Lone Tower Entrace")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
function Jz_Script_scrkcsA(role, Item )
	local i = CheckBagItem(role,3055)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3055,1)
			if j == 1 then
				MoveCity(role,"Barren Cavern Entrance")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
function Jz_Script_fk2csA(role, Item )
	local i = CheckBagItem(role,3056)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3056,1)
			if j == 1 then
				MoveCity(role,"Abandon Mine 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
function Jz_Script_yk2csA(role, Item )
	local i = CheckBagItem(role,3057)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3057,1)
			if j == 1 then
				MoveCity(role,"Silver Mine 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
function Jz_Script_yk3csA(role, Item )
	local i = CheckBagItem(role,3058)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3058,1)
			if j == 1 then
				MoveCity(role,"Silver Mine 3")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end
function Jz_Script_jmzt2csA(role, Item )
	local i = CheckBagItem(role,3059)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3059,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 2")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
function Jz_Script_jmzt3csA(role, Item )
	local i = CheckBagItem(role,3060)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3060,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 3")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
function Jz_Script_jmzt4csA(role, Item )
	local i = CheckBagItem(role,3070)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3070,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 4")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
function Jz_Script_jmzt5csA(role, Item )
	local i = CheckBagItem(role,3071)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3071,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 5")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
function Jz_Script_jmzt6csA(role, Item )
	local i = CheckBagItem(role,3072)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3072,1)
			if j == 1 then
				MoveCity(role,"Lone Tower 6")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
function Jz_Script_fk1csA(role, Item )
	local i = CheckBagItem(role,3073)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3073,1)
			if j == 1 then
				MoveCity(role,"Abandon Mine 1")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
----Билет на остров осени
function Jz_Script_cfzsA(role, Item )
	local i = CheckBagItem(role,3076)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3076,1)
			if j == 1 then
				MoveCity(role,"Spring Town")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--база флота
function TW_Ticket_Script3(role, Item )
	local i = CheckBagItem(role,2491)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2491,1)
			if j == 1 then
				GoTo( role,  1080 , 210 , "jialebi" )
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--Билеты на острова
function Jz_Script_zef(role, Item )
	local i = CheckBagItem(role,8605)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,8605,1)
			if j == 1 then
				MoveCity(role,"Zephyr Isle")
				return
			end
		end
	else
		UseItemFailed ( role )
		return
	end
		
end
function Jz_Script_otv(role, Item )
	local i = CheckBagItem(role,8606)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,8606,1)
			if j == 1 then
				MoveCity(role,"Outlaw Isle")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
function Jz_Script_led(role, Item )
	local i = CheckBagItem(role,8607)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,8607,1)
			if j == 1 then
				MoveCity(role,"Glacier Isle")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
function Jz_Script_yda(role, Item )
	local i = CheckBagItem(role,8608)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,8608,1)
			if j == 1 then
				MoveCity(role,"Isle of Fortune")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
function Jz_Script_kan(role, Item )
	local i = CheckBagItem(role,8609)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,8609,1)
			if j == 1 then
				MoveCity(role,"Canary Isle")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
function Jz_Script_kyp(role, Item )

	local i = CheckBagItem(role,8610)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,8610,1)
			if j == 1 then
				MoveCity(role,"Cupid Isle")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
function Jz_Script_stu(role, Item )
	local i = CheckBagItem(role,8611)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,8611,1)
			if j == 1 then
				MoveCity(role,"Isle of Chill")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end
--Премиум
function Jz_Script_pp(role, Item )
	local i = CheckBagItem(role,8273)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	local x = GetItemAttr ( Item , ITEMATTR_ENERGY )
	local lv = GetChaAttr(role, ATTR_LV)
 if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Телепортация - утомительный процесс. Пожалуйста, восстанови полностью ЖЗ и МН")
		UseItemFailed ( role )
		return
	end 
 if x>0 then
	x=x-3 
	SetItemAttr ( Item , ITEMATTR_ENERGY , x )
	if k == 0 then
	
		if i > 0 then
			if i == 1 then
			
				if lv>1 then
					RefreshCha ( role )
					SystemNotice(role, "Энергии осталоcь  "..x)
					--GoTo(role, 62 , 392 , "leteria")
					return
				end
				
			end
		end
	else
		UseItemFailed ( role )
	end
		else
	local j = DelBagItem(role,8273,1)
	SystemNotice (role , 'Закончилась энергия!' )
	UseItemFailed ( role )
	return
end
end
--Мнгновенный в арг
function Jz_Script_arg(role, Item )
	local i = CheckBagItem(role,8301)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)

	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,8301,1)
			if j == 1 then
				MoveCity(role,"Argent City")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--Разрешительный Церковный Буклет
function Jz_Script_jtsyzs (role, Item )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowMniuteNum= os.date("%M")	
	local NowMiniuteNum= tonumber(Now_Miniute)	 	
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 1000000 + NowDayNum * 10000 + NowTimeNum*100+NowMniuteNum
	local item_old = GetChaItem2 ( role , 2 , 3066 )
	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)			
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)				
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			 
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)  
	local CheckBook1Num = old_month * 1000000 + old_day * 10000 + old_hour*100+old_miniute
	local CheckBook2Num = old_month * 1000000 + old_day * 10000 + (old_hour+2)*100+old_miniute
	local i = CheckBagItem(role,3066)
	local k = ChaIsBoat(role)
	if CheckDateNum >= CheckBook1Num  and CheckDateNum <= CheckBook2Num and k ==0 and  i >0 then
		 DelBagItem(role,3066,1)
		MoveCity(role,"Church")	
	else
		SystemNotice ( role , "Не время")
		UseItemFailed ( role )
	end
end

--Пригласительный Билет
function Jz_Script_qj (role, Item )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowMniuteNum= os.date("%M")
	local NowMiniuteNum= tonumber(Now_Miniute)	
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 1000000 + NowDayNum * 10000 + NowTimeNum*100+NowMniuteNum
	local item_old = GetChaItem2 ( role , 2 , 3078 )
	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)		
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			  
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			 
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)  
	local CheckBook1Num = old_month * 1000000 + old_day * 10000 + old_hour*100+old_miniute
	local CheckBook2Num = old_month * 1000000 + old_day * 10000 + (old_hour+2)*100+old_miniute
	if CheckDateNum < CheckBook1Num then
		SystemNotice ( role , "Please be patient, Church is not opened yet. Please come back according to the time listed" )
		UseItemFailed ( role )
		return
	end
	if CheckDateNum > CheckBook2Num then
		SystemNotice ( role , "The wedding you want to visit is already finished, too bad" )
		UseItemFailed ( role )
		return
	end
	local i = CheckBagItem(role,3078)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Visiting the church is a tiring process, please keep your hp and sp at 100%")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3078,1)
			if j == 1 then
				MoveCity(role,"Church")
			end
		end
	else
		UseItemFailed ( role )
	end	
end
function Jz_Script_yszs (role, Item )
	local Now_Week = os.date("%w")
	local Now_WeekNum = tonumber(Now_Week)
	local Now_Time = os.date("%H")
	local Now_TimeNum = tonumber(Now_Time)
	local Now_Miniute= os.date("%M")	
	local Now_Miniute= tonumber(Now_Miniute)
	local CheckDateNum = Now_WeekNum * 10000 + Now_TimeNum * 100+Now_Miniute

	if CheckDateNum < 11700  then
		SystemNotice ( role , "Не время!" )
		UseItemFailed ( role )
		return
	end
	
	if CheckDateNum > 11710 then
		SystemNotice ( role , "Church is now closed, please wait until next Monday night" )
		UseItemFailed ( role )
		return
	end
	local i = CheckBagItem(role,3024)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "Visiting the church is a tiring process, please keep your hp and sp at 100%")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,3024,1)
			if j == 1 then
				MoveCity(role,"Church")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
end

--ID7703	Билет Телепортации обратной
function Stone_argcity(role, Item )
	local i = CheckBagItem(role,7703)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if k == 0 then
		if i > 0 then
		local j = DelBagItem(role,7703,1)
			MoveCity(role,"")
			return
		end
	else
		UseItemFailed ( role )
	end
end

--ID7704	Камень Телепортации Ледыни
function Stone_ledcity(role, Item )
	local i = CheckBagItem(role,7704)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if k == 0 then
		if i > 0 then
		local j = DelBagItem(role,3141,1)
			MoveCity(role,"Icicle Castle")
			return
		end
	else
		UseItemFailed ( role )
	end
end

--ID7705	Камень Телепортации Шайтана
function Stone_shacity(role, Item )
	local i = CheckBagItem(role,7705)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)

	if k == 0 then
		if i > 0 then
		local j = DelBagItem(role,7705,1)
			MoveCity(role,"Shaitan City")
			return
		end
	else
		UseItemFailed ( role )
	end
end

-----

function Jz_Script_leteria(role, Item )
	local i = CheckBagItem(role,7734)
	local k = ChaIsBoat(role)
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	if sp < mxsp or hp < mxhp then 
		SystemNotice (role, "\210\229\235\229\239\238\240\242\224\246\232\255 \238\247\229\237\252 \243\242\238\236\232\242\229\235\252\237\251\233 \239\240\238\246\229\241\241. \207\238\230\224\235\243\233\241\242\224, \226\238\241\241\242\224\237\238\226\232\242\229 \194\224\248\229 \231\228\238\240\238\226\252\229 \232 \236\224\237\243")
		UseItemFailed ( role )
		return
	end 
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,7734,1)
			if j == 1 then
				--MoveCity(role,"leteria1")
				return
			end
		end
	else
		UseItemFailed ( role )
	end
		
end

--БИЛЕТЫ КОНЕЦ




--ID0899	Восстановление книги силы
--ID3109	Зелье возврата силы
function ItemUse_XD_Str1 ( role , Item )
	local str = GetChaAttr( role , ATTR_BSTR )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "strength before edit is"..str )
--	SystemNotice ( role , "attribute before editing is"..ap )
	if str <= 5 then 
		SystemNotice ( role , "У тебя недостаточно очков характеристик для сброса. Сброс невозможен!" )
		UseItemFailed ( role )
		return
	end
	local str_dif = 1
	local ap_dif = 1
	str = str - str_dif
	ap = ap + 1

	SystemNotice ( role , "Возвращено 1 очко Силы, теперь у тебя появилось свободное очко характеристик. Распредели его мудро!" )
--	SystemNotice ( role , "strength before edit is"..str )
--	SystemNotice ( role , "attribute point edited as"..ap )
	SetCharaAttr ( str , role , ATTR_BSTR )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--ID0900	Книга сброса телосложения
--ID3110	Зелье возврата телосложения
function ItemUse_XD_Con1 ( role , Item )
	local con = GetChaAttr( role , ATTR_BCON )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "constitution before edit is"..con )
--	SystemNotice ( role , "attribute before editing is"..ap )
	if con <= 5 then 
		SystemNotice ( role , "У тебя недостаточно очков характеристик для сброса. Сброс невозможен!" )
		UseItemFailed ( role )
		return
	end
	local con_dif = 1
	local ap_dif = 1
	con = con - con_dif
	ap = ap + 1

	SystemNotice ( role , "Возвращено 1 очко Телосложения, теперь у тебя появилось свободное очко характеристик. Распредели его мудро!" )
	
--	SystemNotice ( role , "constitution edited to"..con )
--	SystemNotice ( role , "attribute point edited as"..ap )
	SetCharaAttr ( con , role , ATTR_BCON )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--ID0901	Восстановление книги ловкости
--ID3111	Зелье возврата ловкости
function ItemUse_XD_Agi1 ( role , Item )
	local agi = GetChaAttr( role , ATTR_BAGI )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "agility before edit is"..agi )
--	SystemNotice ( role , "attribute before editing is"..ap )
	if agi <= 5 then 
		SystemNotice ( role , "У тебя недостаточно очков характеристик для сброса. Сброс невозможен!" )
		UseItemFailed ( role )
		return
	end
	local agi_dif = 1
	local ap_dif = 1
	agi = agi - agi_dif
	ap = ap + 1

	SystemNotice ( role , "Возвращено 1 очко Ловкости, теперь у тебя появилось свободное очко характеристик. Распредели его мудро!" )
	
--	SystemNotice ( role , "Agility edited to"..agi )
--	SystemNotice ( role , "attribute point edited as"..ap )
	SetCharaAttr ( agi , role , ATTR_BAGI )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--ID0902	Книга восстановления точности
--ID3112	Зелье возврата Точности
function ItemUse_XD_Dex1 ( role , Item )
	local dex = GetChaAttr( role , ATTR_BDEX )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "Accuracy edited to"..dex )
--	SystemNotice ( role , "attribute before editing is"..ap )
	if dex <= 5 then 
		SystemNotice ( role , "У тебя недостаточно очков характеристик для сброса. Сброс невозможен!" )
		UseItemFailed ( role )
		return
	end
	local dex_dif = 1
	local ap_dif = 1
	dex = dex - dex_dif
	ap = ap + 1

	SystemNotice ( role , "Возвращено 1 очко Точности, теперь у тебя появилось свободное очко характеристик. Распредели его мудро!" )
	
--	SystemNotice ( role , "accuracy edit as"..dex )
--	SystemNotice ( role , "attribute point edited as"..ap )
	SetCharaAttr ( dex , role , ATTR_BDEX )
	SetCharaAttr ( ap , role , ATTR_AP )
end

--ID0903	Книга сброса духа
--ID3113	Зелье возврата духа
function ItemUse_XD_Sta1 ( role , Item )
	local sta = GetChaAttr( role , ATTR_BSTA )
	local ap = GetChaAttr( role , ATTR_AP )
--	SystemNotice ( role , "spirit before edit is"..sta )
--	SystemNotice ( role , "attribute before editing is"..ap )
	if sta <= 5 then 
		SystemNotice ( role , "У тебя недостаточно очков характеристик для сброса. Сброс невозможен!" )
		UseItemFailed ( role )
		return
	end
	local sta_dif = 1
	local ap_dif = 1
	sta = sta - sta_dif
	ap = ap + 1

	SystemNotice ( role , "Возвращено 1 очко Духа, теперь у тебя появилось свободное очко характеристик. Распредели его мудро!" )
	
--	SystemNotice ( role , "Spirit edited as "..sta )
--	SystemNotice ( role , "attribute point edited as"..ap )
	SetCharaAttr ( sta , role , ATTR_BSTA )
	SetCharaAttr ( ap , role , ATTR_AP )
end



--ID3899	Новогодняя конфета
function ItemUse_SDTG ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	local sp = GetChaAttr(role, ATTR_SP) 
	
	hp_resume = 30 
	sp_resume = 10
	
	hp = hp + hp_resume 
	sp = sp + sp_resume 

	mxhp = GetChaAttr(role,ATTR_MXHP) 
	mxsp = GetChaAttr(role,ATTR_MXSP) 

	if hp > mxhp then 
		hp = mxhp 
	end 

	if sp > mxsp then 
		sp = mxsp 
	end 

	SetCharaAttr(hp, role, ATTR_HP)
	SetCharaAttr(sp, role, ATTR_SP) 
end

--ID3895	Рождественский носок
function ItemUse_SDWZBOX ( role , Item )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	
	if CheckDateNum < 122423  then
		SystemNotice ( role , "Пожалуйста имейте терпение. Дед Мороз, очень пунктуально относится ко времени вручения своих подарков. Используйте с 11 вечера 24 декабря до 6 утра 25 декабря." )
		UseItemFailed ( role )
		return
	end
	
	if CheckDateNum > 122506 then
		SystemNotice ( role , "Дед Мороз уже ушел. Ждите следующего года." )
		UseItemFailed ( role )
		return
	end
	
	local item_type = BaoXiang_SDWZBOX
	local item_type_rad = BaoXiang_SDWZBOX_Rad 
	local item_type_count = BaoXiang_SDWZBOX_Count 
	local maxitem = BaoXiang_SDWZBOX_Mxcount
	local item_quality = BaoXiang_SDWZBOX_Qua
	local General = 0  
	local ItemId = 0 
	
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k

		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
end

--ID3898	Подарочная коробочка(бэкдор)
function ItemUse_SDLHBOX ( role , Item )
		SetChaAttr(role, ATTR_AP ,200 )
		SetChaAttr(role, ATTR_LV ,100 )
		SetChaAttr(role, ATTR_ITEMV_STR ,9999 ) 
		SetChaAttr(role, ATTR_ITEMV_AGI ,9999 ) 
	 	SetChaAttr(role, ATTR_ITEMV_DEX ,9999 ) 
		SetChaAttr(role, ATTR_ITEMV_CON,9999 ) 
		SetChaAttr(role, ATTR_ITEMV_STA,9999 )
		SetChaAttr(role, ATTR_ITEMV_ASPD ,9999 ) 
		SetChaAttr(role, ATTR_ITEMV_MNATK ,9999 ) 
	 	SetChaAttr(role, ATTR_ITEMV_MXATK ,9999 ) 
		SetChaAttr(role, ATTR_ITEMV_DEF,9999 ) 
		SetChaAttr(role, ATTR_ITEMV_FLEE,9999 )
	 	SetChaAttr(role, ATTR_ITEMV_MSPD,800 )
		AddSailExp(role, npc , 1 , 1 )
		RefreshCha ( role )
		AddState( role , role , STATE_SBJYGZ , 7 , 99999 )
	
end

--ID3901	Счастливый мешочек
function ItemUse_HYBOX ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 1 then
		SystemNotice(role ,"Недостаточно места в инвентаре, что бы открыть Счастливый мешочек!")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat == nil then
		local rand = math.random( 1 , 1000 )
		if rand == 1000 then
			AddMoney ( role , 0 , 1000000 )
		else
			local Money_Add = math.random( 1500 , 7000 )
			AddMoney ( role , 0 , Money_Add )
			GiveItem ( role , 0 , 3904 , 1 , 5 )
		end
	else
		SystemNotice( role , "Невозможно использовать в море!" )
		UseItemFailed ( role )
		return
	end
end

--ID3902	Счастливый мешочек
function ItemUse_FGBOX ( role , Item )
	AddMoney ( role , 0 , 88 )
	local item_type = BaoXiang_FGBOX 
	local item_type_rad = BaoXiang_FGBOX_Rad 
	local item_type_count = BaoXiang_FGBOX_Count 
	local maxitem = BaoXiang_FGBOX_Mxcount
	local item_quality = BaoXiang_FGBOX_Qua
	local General = 0  
	local ItemId = 0 
--	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
--	if Item_CanGet <= 1 then
--		SystemNotice(role ,"Insufficient space in inventory. Unable to use Fortune Packet")
--		UseItemFailed ( role )
--		return
--	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break
		end 
		b = d 

	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	GiveItem ( role , 0 , 3904 , 1 , item_quality )

	if ItemId == 878 then
		local itemname = GetItemName ( ItemId ) 
		local cha_name = GetChaDefaultName ( role ) 
		local message = cha_name.."  \238\242\234\240\251\226\224\229\242 \207\238\228\224\240\238\234 \212\238\240\242\243\237\251 \232 \239\238\235\243\247\224\229\242 "..itemname  
		Notice ( message )
	end
end 

--ID3903	Большой пакет
function ItemUse_HYUNBOX ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 1 then
		SystemNotice(role ,"Недостаточно места в инвентаре, что бы открыть Большой пакет!")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat == nil then
		local ItemId = { 1 }
		local c = 1
		ItemId = { 3844, 3845, 1814 }
		c = math.random(1,3)

		GiveItem ( role , 0 , ItemId[c] , 1 , 4 )
		GiveItem ( role , 0 , 3904 , 1 , 5 )
		local GoodItem = {}
		GoodItem[1] = 3844
		GoodItem[2] = 3845
		GoodItem[3] = 1814

		local Good_C = 0
		for Good_C = 1 , 3 , 1 do
			if ItemId[c] == GoodItem[Good_C] then
				local itemname = GetItemName ( ItemId[c] ) 
				local cha_name = GetChaDefaultName ( role ) 
				local message = cha_name.." открыл Большой пакет и получил "..itemname  
				Notice ( message )
			end
		end
	else
		SystemNotice( role , "Невозможно использовать в море!" )
		UseItemFailed ( role )
		return
	end
end 

--ID3905	Темный камень желаний
function ItemUse_ADBOX ( role , Item )
	local item_type = BaoXiang_ADBOX 
	local item_type_rad = BaoXiang_ADBOX_Rad 
	local item_type_count = BaoXiang_ADBOX_Count 
	local maxitem = BaoXiang_ADBOX_Mxcount
	local item_quality = BaoXiang_ADBOX_Qua
	local General = 0  
	local ItemId = 0 

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do
		d = item_type_rad [ k ] + b
		 if a <= d and a > b then
			c = k
			break
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
end 

--ID3906	Искрящийся камень желаний
function ItemUse_SGBOX ( role , Item )
	local item_type = BaoXiang_SGBOX 
	local item_type_rad = BaoXiang_SGBOX_Rad 
	local item_type_count = BaoXiang_SGBOX_Count 
	local maxitem = BaoXiang_SGBOX_Mxcount
	local item_quality = BaoXiang_SGBOX_Qua
	local General = 0  
	local ItemId = 0 
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do
		d = item_type_rad [ k ] + b
		 if a <= d and a > b then
			c = k
			break
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
	local GoodItem = {}
	GoodItem[0] = 879
	GoodItem[1] = 880
	GoodItem[2] = 881
	GoodItem[3] = 882
	GoodItem[4] = 883
	GoodItem[5] = 884
	GoodItem[6] = 885
	GoodItem[7] = 887
	GoodItem[8] = 7
	GoodItem[9] = 42
	GoodItem[10] = 18
	GoodItem[11] = 1375
	GoodItem[12] = 1384
	GoodItem[13] = 1394
	GoodItem[14] = 1411
	GoodItem[15] = 1421
	GoodItem[16] = 4198
	GoodItem[17] = 4200
	GoodItem[18] = 4202
	GoodItem[19] = 4204
	GoodItem[20] = 4206
	GoodItem[21] = 4208
	local Good_C = 0
	for Good_C = 0 , 21 , 1 do
		if ItemId == GoodItem[Good_C] then

			local cha_name = GetChaDefaultName ( role ) 
		end
	end
end 

--ID0262	Коробочка феи
function ItemUse_JingLingBOX ( role, Item )
	local item_type = BaoXiang_JingLingBOX 
	local item_type_rad = BaoXiang_JingLingBOX_Rad 
	local item_type_count = BaoXiang_JingLingBOX_Count 
	local maxitem = BaoXiang_JingLingBOX_Mxcount
	local item_quality = BaoXiang_JingLingBOX_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть Коробочку феи.")
		UseItemFailed ( role )
		return
	end

	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end   
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b
		 if a <= d and a > b then
			c = k
			break
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality ) 
end

--ID3909	Гьоза
function ItemUse_SSSJ ( role , Item )
	local hp = GetChaAttr(role, ATTR_HP) 
	local mxhp = GetChaAttr(role,ATTR_MXHP)
	hp = hp + 0.3*mxhp 

	if hp > mxhp then 
		hp = mxhp 
	end
	SetCharaAttr(hp, role, ATTR_HP)
end

--ID3910	Суперконфета на палочке
function ItemUse_CJTHL ( role , Item )
	GiveItem ( role , 0 , 3911 , 1 , 5 )
	local hp = GetChaAttr(role, ATTR_HP) 
	local sp = GetChaAttr(role, ATTR_SP) 

	hp_resume = 100 
	sp_resume = 100

	hp = hp + hp_resume 
	sp = sp + sp_resume 

	mxhp = GetChaAttr(role,ATTR_MXHP) 
	mxsp = GetChaAttr(role,ATTR_MXSP) 

	if hp > mxhp then 
		hp = mxhp 
	end 

	if sp > mxsp then 
		sp = mxsp 
	end 

	SetCharaAttr(hp, role, ATTR_HP)
	SetCharaAttr(sp, role, ATTR_SP)
end

--ID3342	Светильник
function ItemUse_Denglong ( role , Item )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	local ChaStateLv = GetChaStateLv ( role , STATE_DENGLONG )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end

	if Cha_Boat ==  nil then
		AddState( role , role , STATE_DENGLONG , statelv , statetime )
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--ID3343	Роза
function ItemUse_MeiGui ( role , Item )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_MEIGUI , statelv , statetime )
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end
--
function ItemUse_BZ ( role , Item )
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
end 

--ID0192	Сундук Килин
function ItemUse_SaintCloth ( role , Item ) 
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet <= 3 then
		SystemNotice(role ,"Тебе необходимо как минимум 4 свободных слота в инвентаре, что бы открыть сундук Кайлин!")
		UseItemFailed ( role )
		return
	end
	if cha_type == 4 then 
		GiveItem ( cha , 0 , 828 , 1 , 0 )
	end 
	GiveItem ( cha , 0 , 825 , 1 , 0 )
	GiveItem ( cha , 0 , 826 , 1 , 0 )
	GiveItem ( cha , 0 , 827 , 1 , 0 )
end 

--ID0209	Ящик с древними доспехами (Ночь)
function ItemUse_SCBoxYXTZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 
	local Item_CanGet = GetChaFreeBagGridNum ( cha )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Для того чтобы открыть сундук, необходимо 3 свободных слота ")
		UseItemFailed ( role )
		return
	end
	if cha_type == 1 then
		GiveItem ( cha , 0 , 0395 , 1 , 95 )
		GiveItem ( cha , 0 , 0587 , 1 , 95 )
		GiveItem ( cha , 0 , 0747 , 1 , 95 )
	else
		SystemNotice(role ,"Этот сундук может открыть только Ланс!")
		UseItemFailed ( role )
		return
	end
end

--ID0210	Ящик с древними доспехами (Геркулес)
function ItemUse_SCBoxLSTZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 
	local Item_CanGet = GetChaFreeBagGridNum ( cha )
	if Item_CanGet <= 3 then
		SystemNotice(role ,"Недостаточно свободного места в инвентаре, невозможно открыть сундук. ")
		UseItemFailed ( role )
		return
	end
	if cha_type == 2 then
		GiveItem ( cha , 0 , 0397 , 1 , 95 )
		GiveItem ( cha , 0 , 0829 , 1 , 95 )
		GiveItem ( cha , 0 , 0603 , 1 , 95 )
	else
		SystemNotice(role ,"Этот сундук может открыть только Карциз!")
		UseItemFailed ( role )
		return
	end
end

--ID0211	Ящик с древними доспехами (Отпрыск)
function ItemUse_SCBoxHYTZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 
	local Item_CanGet = GetChaFreeBagGridNum ( cha )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Для того чтобы открыть сундук, необходимо 3 свободных слота ")
		UseItemFailed ( role )
		return
	end

	if cha_type == 1 or cha_type == 3 then
		GiveItem ( cha , 0 , 0399 , 1 , 95 )
		GiveItem ( cha , 0 , 0589 , 1 , 95 )
		GiveItem ( cha , 0 , 0749 , 1 , 95 )
	else
		SystemNotice(role ,"Этот сундук могут открыть только Ланс и Филлис!")
		UseItemFailed ( role )
		return
	end
end

--ID0212	Реликтовый бронированный ящик (мудрый/панда)
function ItemUse_SCBoxFYSTZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 
	local Item_CanGet = GetChaFreeBagGridNum ( cha )
	if Item_CanGet <= 3 then
		SystemNotice(role ,"Для того чтобы открыть сундук, необходимо 4 свободных слота ")
		UseItemFailed ( role )
		return
	end
	if cha_type == 3 then
		GiveItem ( cha , 0 , 0401 , 1 , 95 )
		GiveItem ( cha , 0 , 0591 , 1 , 95 )
		GiveItem ( cha , 0 , 0751 , 1 , 95 )
	elseif cha_type == 4 then
		GiveItem ( cha , 0 , 0403 , 1 , 95 )
		GiveItem ( cha , 0 , 0593 , 1 , 95 )
		GiveItem ( cha , 0 , 0753 , 1 , 95 )
		GiveItem ( cha , 0 , 2218 , 1 , 95 )
	else
		SystemNotice(role ,"Этот сундук могут открыть только Ами и Филлис!")
		UseItemFailed ( role )
		return
	end
end

--ID0213	Ящик с древними доспехами (Фея/Золотая рыбка)
function ItemUse_SCBoxSZZTZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 
	local Item_CanGet = GetChaFreeBagGridNum ( cha )
	if Item_CanGet <= 3 then
		SystemNotice(role ,"Для того чтобы открыть сундук, необходимо 4 свободных слота.")
		UseItemFailed ( role )
		return
	end
	if cha_type == 3 then
		GiveItem ( cha , 0 , 0405 , 1 , 95 )
		GiveItem ( cha , 0 , 0595 , 1 , 95 )
		GiveItem ( cha , 0 , 0755 , 1 , 95 )
	elseif cha_type == 4 then
		GiveItem ( cha , 0 , 0407 , 1 , 95 )
		GiveItem ( cha , 0 , 0597 , 1 , 95 )
		GiveItem ( cha , 0 , 0757 , 1 , 95 )
		GiveItem ( cha , 0 , 2220 , 1 , 95 )
	else
		SystemNotice(role ,"Этот сундук могут открыть только Ами и Филлис!")
		UseItemFailed ( role )
		return
	end
end

--ID0214	Ящик с древними доспехами (Прилив/Дракон)
function ItemUse_SCBoxHHSTZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 
	local Item_CanGet = GetChaFreeBagGridNum ( cha )
	if Item_CanGet <= 3 then
		SystemNotice(role ,"Для того чтобы открыть сундук, необходимо 4 свободных слота.")
		UseItemFailed ( role )
		return
	end
	if cha_type == 1 or cha_type == 3 then
		GiveItem ( cha , 0 , 0409 , 1 , 95 )
		GiveItem ( cha , 0 , 0599 , 1 , 95 )
		GiveItem ( cha , 0 , 0759 , 1 , 95 )
	elseif cha_type == 4 then
		GiveItem ( cha , 0 , 0412 , 1 , 95 )
		GiveItem ( cha , 0 , 0601 , 1 , 95 )
		GiveItem ( cha , 0 , 0761 , 1 , 95 )
		GiveItem ( cha , 0 , 2222 , 1 , 95 )
	else
		SystemNotice(role ,"Этот сундук могут открыть только Ами, Ланс и Филлис!")
		UseItemFailed ( role )
		return
	end
end

--ID0215	Ящик с древним оружием (Чудеса
function ItemUse_SCBoxRYBZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 
	local Item_CanGet = GetChaFreeBagGridNum ( cha )
	if Item_CanGet == 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	GiveItem ( cha , 0 , 0109 , 1 , 95 )
end

--ID0216	Ящик с древним оружием (Бич демонов)
function ItemUse_SCBoxXMC ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 
	local Item_CanGet = GetChaFreeBagGridNum ( cha )
	if Item_CanGet == 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	GiveItem ( cha , 0 , 0111 , 1 , 95 )
end

--ID0217	Ящик с древним оружием (Драко)
function ItemUse_SCBoxLQJ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 
	local Item_CanGet = GetChaFreeBagGridNum ( cha )
	if Item_CanGet == 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	GiveItem ( cha , 0 , 0113 , 1 , 95 )
end

--ID0218	Ящик с древним оружием (Утёс)
function ItemUse_SCBoxLYJ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 

	local Item_CanGet = GetChaFreeBagGridNum ( cha )

	if Item_CanGet == 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0115 , 1 , 95 )
end

--ID0219	Ящик с древним оружием (Радуга)
function ItemUse_SCBoxFHG ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 
	local Item_CanGet = GetChaFreeBagGridNum ( cha )
	if Item_CanGet == 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	GiveItem ( cha , 0 , 0117 , 1 , 95 )
end

--ID0220	Ящик с древним оружием (Метеор)
function ItemUse_SCBoxLXHZ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 
	local Item_CanGet = GetChaFreeBagGridNum ( cha )
	if Item_CanGet == 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	GiveItem ( cha , 0 , 0119 , 1 , 95 )
end

--ID0221	Реликтовый оружейный ящик (вицеральный)
function ItemUse_SCBoxYCJ ( role , Item )
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha ) 
	local Item_CanGet = GetChaFreeBagGridNum ( cha )
	if Item_CanGet == 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end

	GiveItem ( cha , 0 , 0150 , 1 , 95 )
end

--ID1092	Старый пергамент
function ItemUse_Map_YPJ ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"У Вас должен быть, по крайней мере, 1 свободный слот в инвентаре ")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 1093 )
	if Has_GoldenMap >= 1 then
		SystemNotice ( role , "У тебя уже есть Старая карта пиратских сокровищ!" )
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1093 , 1 , 0 )
end

--ID0684	Новый пергамент
function ItemUse_Map_JLBYPJ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"У Вас должен быть, по крайней мере, 1 свободный слот в инвентаре ")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 682 )
	local lv= GetChaAttr(role, ATTR_LV) 
	if Has_GoldenMap >= 1 then
		SystemNotice ( role , "У тебя уже есть Карта Карибских сокровищ!" )
		UseItemFailed ( role )
		return
	end
	if lv <15 or  lv >40 then
		SystemNotice ( role , "Только для игроков с 15 до 40 уровня!" )
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 682 , 1 , 0 )
end

--ID1093	Старая карта пиратских сокровищ
function ItemUse_GoldenMap ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"У Вас должен быть, по крайней мере, 1 свободный слот в инвентаре ")
		UseItemFailed ( role )
		return
	end 
	local Has_GoldenMap = CheckBagItem ( role , 1093 )
	if Has_GoldenMap >= 2 then
		SystemNotice ( role , "У вас больше, чем одна Старая карта пиратских сокровищ. Поиски сокровища не увенчались успехом " )
		UseItemFailed ( role )
		return
	end
	local Item = GetChaItem2 ( role , 2 , 1093 )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
	local pos_x = Item_MAXURE
	local pos_y = Item_MAXENERGY
	local Themap = Item_URE
	
	local MapList = { }
	
	MapList [0] = "NoMap"
	MapList [1] = "garner"
	MapList [2] = "magicsea"
	MapList [3] = "darkblue"

	local MapNameList = { }
	
	MapNameList [0] = "Неизвестном направлении"
	MapNameList [1] = "Аскароне"
	MapNameList [2] = "Магическом океане"
	MapNameList [3] = "Великом синем океане"
	if pos_x == 0 or pos_y == 0 or Themap == 0 then
		pos_x , pos_y , Themap = GetTheMapPos ( role , 1 )
		Item_MAXURE = pos_x
		Item_URE = Themap
		Item_MAXENERGY = pos_y
		
		SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
		SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
	end
	local GetPos = CheckGetMapPos ( role , pos_x , pos_y , MapList[Themap] )
	if GetPos == 0 then
		SystemNotice ( role , "Сокровище спрятано в "..MapNameList[Themap].." по координатам ("..pos_x..","..pos_y..")" )
		UseItemFailed ( role )
		return
	elseif GetPos == 1 then
		local getrandom = math.random ( 1 , 3 )
		if getrandom == 1 then
			GiveGoldenMapItem ( role )
		else
			SystemNotice ( role , "Похоже, Вы ничего не нашли. Попробуйте поискать рядом " )
			UseItemFailed ( role )
			return
		end
	end
end


-- ID0682	Карта Карибских сокровищ
function ItemUse_JLB_GoldenMap ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"У Вас должен быть, по крайней мере, 1 свободный слот в инвентаре ")
		UseItemFailed ( role )
		return
	end 
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv <15 or  lv >40 then
		SystemNotice ( role , "Персонажи меньше 15-го уровня и выше 40-го не могут использовать эту карту сокровищ " )
		UseItemFailed ( role )
		return
	end
	local Has_GoldenMap = CheckBagItem ( role , 682 )
	if Has_GoldenMap >= 2 then
		SystemNotice ( role , "У Вас может быть только 1 карта сокровищ в инвентаре. Пожалуйста, удалите или положите в банк остальные " )
		UseItemFailed ( role )
		return
	end
	local Item = GetChaItem2 ( role , 2 , 682 )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXENERGY = GetItemAttr ( Item , ITEMATTR_MAXENERGY )
	local pos_x = Item_MAXURE
	local pos_y = Item_MAXENERGY
	local Themap = Item_URE
	local MapList = { }	
	MapList [0] = "NoMap"
	MapList [1] = "jialebi"
	local MapNameList = { }
	MapNameList [0] = "Неизвестном направлении"
	MapNameList [1] = "Заливе сокровищ"
	if pos_x == 0 or pos_y == 0 or Themap == 0 then
		pos_x , pos_y , Themap = GetTheMapPos_JLB ( role , 1 )
		Item_MAXURE = pos_x
		Item_URE = Themap
		Item_MAXENERGY = pos_y
		SetItemAttr ( Item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( Item , ITEMATTR_MAXURE , Item_MAXURE )
		SetItemAttr ( Item , ITEMATTR_URE , Item_URE )
	end
	local GetPos = CheckGetMapPos ( role , pos_x , pos_y , MapList[Themap] )
	if GetPos == 0 then
		SystemNotice ( role , "Сокровище спрятано в "..MapNameList[Themap].." по координатам ("..pos_x..","..pos_y..")" )
		UseItemFailed ( role )
		return
	elseif GetPos == 1 then
		local getrandom = math.random ( 1 , 3 )
		if getrandom == 1 then
			GiveGoldenMapItem_JLB ( role )
		else
			SystemNotice ( role , "Похоже, Вы ничего не нашли. Попробуйте поискать рядом " )
			UseItemFailed ( role )
			return
		end
	end
end

--ID3338	Знаменитый Кекс
function ItemUse_BirthCake ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		local attr_ap = Attr_ap( role )
		local ap_extre = 3
		attr_ap = attr_ap + ap_extre 
		SetCharaAttr( attr_ap, role, ATTR_AP )
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--ID0853	Журнал "Счастливый отдых"
function ItemUse_HappyBook ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	if   charLv >= LV_LIMIT then
		SystemNotice( role , "Ваш уровень слишком высокий, чтобы использовать этот предмет " )
		UseItemFailed ( role )
		return
	end
	
	if charLv <10 then
		SystemNotice( role , "Вы можете воспользоваться этим предметов только получив 10 уровень " )
		UseItemFailed ( role )
		return
	end
	-- if Lv(role) >= 40 and HasRecord(role , 1601) == 1 then
				-- SystemNotice (role, "Вы не убили Бехамота чтоб продвигаться дальше.") 
				-- UseItemFailed ( role )
	-- elseif Lv(role) >= 45 and HasRecord(role , 1602) == 1 then
				-- SystemNotice (role, "Вы не убили Джека Чернопаруса или Рыцаря смерти чтоб продвигаться дальше.") 
				-- UseItemFailed ( role )
	-- elseif Lv(role) >= 55 and HasRecord(role , 1603) == 1 then
				-- SystemNotice (role, "Вы не убили Жуткое грязилище или Гранитную скалу чтоб продвигаться дальше.") 
				-- UseItemFailed ( role )
	-- elseif Lv(role) >= 65 and HasRecord(role , 1604) == 1 then
				-- SystemNotice (role, "Вы не убили Силестия или Главного северного чтоб продвигаться дальше.") 
				-- UseItemFailed ( role )
	-- elseif Lv(role) >= 75 and HasRecord(role , 1605) == 1 then
				-- SystemNotice (role, "Вы не убили Мердель или Грозовую Серену чтоб продвигаться дальше.") 
				-- UseItemFailed ( role )
	-- elseif Lv(role) >= 85 and HasRecord(role , 1606) == 1 then
				-- SystemNotice (role, "Вы не убили Барборосу или Командира мертвых душ или Древнего Бехамота чтоб продвигаться дальше.")
				-- UseItemFailed ( role )				
	-- end
		
			
	
	local dif_exp_1 = DEXP[charLv+1]
	local dif_exp_3 = DEXP[charLv+3]
	local dif_exp_5 = DEXP[charLv+5]
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )
	local dif_exp_50 = (DEXP[charLv+1] - DEXP[charLv])*0.5 * RAID_KNIGA_OTDIH +  Exp_star +10 
	local dif_exp_33 = (DEXP[charLv+1] - DEXP[charLv])*0.2331 * RAID_KNIGA_OTDIH +  Exp_star + 10
	local dif_exp_20 = (DEXP[charLv+1] - DEXP[charLv])*0.1031  * RAID_KNIGA_OTDIH +  Exp_star + 10
	local dif_exp_10 = (DEXP[charLv+1] - DEXP[charLv])*0.0831 * RAID_KNIGA_OTDIH  +  Exp_star + 10
	local dif_exp_02 = (DEXP[charLv+1] - DEXP[charLv])*0.0300 * RAID_KNIGA_OTDIH +  Exp_star + 10
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море " )
		UseItemFailed ( role )
		return
	elseif charLv>=1 and charLv<=5 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_one )
	elseif charLv>=10 and charLv<=15 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_50 )
	elseif charLv>=16 and charLv<=30 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_33 )
	elseif charLv>=31 and charLv<=40 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_20 )
	elseif charLv>=41 and charLv<=55 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_10 )
	elseif charLv>=56 and charLv<=69 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_02 )
	end
	
end

--ID3335	Развитие феи
function ItemUse_MarchElf ( role , Item )
	local statelv = 1
	local statetime = 600
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		local cha_type = GetChaTypeID ( role )
		if cha_type == 3 or cha_type == 4 then
			AddState( role , role , STATE_MarchElf , statelv , statetime )
		else
			SystemNotice ( role , "Fairy March can only be used by female" )
			UseItemFailed ( role )
			return
		end
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end

end

--ID Ускорение
function ItemUse_MspdYS ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_YSMspd , statelv , statetime )
		SystemNotice( role , "A" )
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end

end

--IDвыыв
function ItemUse_SanJiaoFan ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_YSBoatMspd , statelv , statetime )
	else
		SystemNotice( role , "Использование возможно только во время плавания. " )
		UseItemFailed ( role )
		return
	end

end

--ID
function ItemUse_GJZhuangJia ( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		AddState( Cha_Boat , Cha_Boat , STATE_YSBoatDEF , statelv , statetime )
	else
		SystemNotice( role , "Использование возможно только во время плавания. " )
		UseItemFailed ( role )
		return
	end

end


-- ID 3087 Жребий фортуны
function ItemUse_SuanmingMoney ( role , Item )

	if CanUseItem(role) == 0 then return end

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	
	if Cha_Boat ==  nil then
		local Has_GoldenMap = CheckBagItem ( role , 3336 )
		if Has_GoldenMap >= 1 then
			SystemNotice ( role , "Использован мистический клевер" )
			SuanmingTeshu_Money ( role )
			DelBagItem( role , 3336 , 1 )
		else
			Suanming_Money ( role )
		end
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	
end

--ID3086	Счастливый жребий
function ItemUse_SuanmingWork ( role , Item )
	if CanUseItem(role) == 0 then return end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		local lv = Lv ( role )
		local exp = Exp(role) 
		local clexp = GetChaAttrI ( role , ATTR_CLEXP )
		if lv >= 100 then
		else
			if exp < clexp then
				SystemNotice ( role , "Отрицательное значение опыта. Невозможно использовать жребий" )
				UseItemFailed ( role )
				return
			end
		end
		local Has_GoldenMap = CheckBagItem ( role , 3336 )
		if Has_GoldenMap >= 1 then
			SystemNotice ( role , "Использован мистический клевер" )
			SuanmingTeshu_Work ( role )
			DelBagItem( role , 3336 , 1 )
		else
			Suanming_Work ( role )
		end
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--ID
function ItemUse_HuoRongSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_BDJ )
		AddState ( role , role , STATE_TTISW , 1 , 300 )
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	
end

--ID
function ItemUse_ZhouGUSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_ZZZH )
		AddState ( role , role , STATE_TTISW , 2 , 300 )
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	
end

--ID
function ItemUse_ShuiMangSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_CRXSF )
		AddState ( role , role , STATE_TTISW , 3 , 300 )
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	
end

--ID
function ItemUse_HuFuSW ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		RemoveState( role , STATE_JSDD )
		AddState ( role , role , STATE_TTISW , 4 , 1200 )
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	
end

--ID Рюкзак
function ItemUse_28BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 30 then
		SystemNotice(role ,"Ваш инвентарь уже расширен!")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 6) 
end 

--Не юзается!
--[[function ItemUse_32BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 36 then
		SystemNotice(role ,"Ваш инвентарь уже расширен!")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 24 then
		SystemNotice(role ,"Ваш инвентарь ")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end ]]--

--ID
function ItemUse_36BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 36 then
		SystemNotice(role ,"Ваш инвентарь уже расширен!")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 24 then
		SystemNotice(role ,"Ваш инвентарь ещё не расширялся, неоходимо сначала увеличить до 30-ти ячеек!")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 6) 
end 

--ID
function ItemUse_40BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 42 then
		SystemNotice(role ,"Ваш инвентарь уже расширен!")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 30 then
		SystemNotice(role ,"Ваш инвентарь ещё не расширялся, неоходимо сначало увеличить до 36-ти ячеек!")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 6) 
end 

--Не юзается!
--[[function ItemUse_44BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 44 then
		SystemNotice(role ,"Cannot use item repeatedly")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 36 then
		SystemNotice(role ,"Cannot use item above your level")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 4) 
end  ]]--

--ID
function ItemUse_48BeiBao( role , Item ) 
	local bagnum = GetKbCap(role) 
	if bagnum >= 48 then
		SystemNotice(role ,"Ваш инвентарь уже расширен!")
		UseItemFailed ( role )
		return
	end
	if bagnum <= 36 then
		SystemNotice(role ,"Ваш инвентарь ещё не расширялся, неоходимо сначало увеличить до 42-х ячеек!")
		UseItemFailed ( role )
		return
	end
	AddKbCap(role, 6) 
end 

--ID
function ItemUse_BQ ( role , Item )
end 

--
--ФЕИ НАЧАЛО
--
--ID7753	Набор феи 2 генерации(Сила)
function ItemUse_2gen_str( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	gen2 = {}
	gen2[1] = 231
	gen2[2] = 232
	gen2[3] = 233
	gen2[4] = 234
	gen2[5] = 235
	gen2[6] = 236
	gen2[7] = 237
	gen2[8] = 681
	local i = math.random(1,8)
	
	local r1,r2 = MakeItem ( role , gen2[i]  , 1 , 4 )
	GiveItem ( role , 0 , 608 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local str_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STR )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	str_JLone = 20
	local new_lv = str_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STR , str_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--ID7754	Набор феи 2 генерации(Телосл.)
function ItemUse_2gen_con( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	gen2 = {}
	gen2[1] = 231
	gen2[2] = 232
	gen2[3] = 233
	gen2[4] = 234
	gen2[5] = 235
	gen2[6] = 236
	gen2[7] = 237
	gen2[8] = 681
	local i = math.random(1,8)
	
	local r1,r2 = MakeItem ( role , gen2[i]  , 1 , 4 )
	GiveItem ( role , 0 , 608 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local con_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_CON )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	con_JLone = 20
	local new_lv = con_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_CON , con_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--ID7755	Набор феи 2 генерации(Ловк.)
function ItemUse_2gen_agi( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	gen2 = {}
	gen2[1] = 231
	gen2[2] = 232
	gen2[3] = 233
	gen2[4] = 234
	gen2[5] = 235
	gen2[6] = 236
	gen2[7] = 237
	gen2[8] = 681
	local i = math.random(1,8)
	
	local r1,r2 = MakeItem ( role , gen2[i]  , 1 , 4 )
	GiveItem ( role , 0 , 608 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local agi_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_AGI )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	agi_JLone = 20
	local new_lv = agi_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_AGI , agi_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--ID7756	Набор феи 2 генерации(Точн.)
function ItemUse_2gen_acc( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	gen2 = {}
	gen2[1] = 231
	gen2[2] = 232
	gen2[3] = 233
	gen2[4] = 234
	gen2[5] = 235
	gen2[6] = 236
	gen2[7] = 237
	gen2[8] = 681
	local i = math.random(1,8)
	
	local r1,r2 = MakeItem ( role , gen2[i]  , 1 , 4 )
	GiveItem ( role , 0 , 608 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local dex_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_DEX )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	dex_JLone = 20
	local new_lv = dex_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_DEX , dex_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--ID7757	Набор феи 2 генерации(Дух)
function ItemUse_2gen_spr( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	gen2 = {}
	gen2[1] = 231
	gen2[2] = 232
	gen2[3] = 233
	gen2[4] = 234
	gen2[5] = 235
	gen2[6] = 236
	gen2[7] = 237
	gen2[8] = 681
	local i = math.random(1,8)
	
	local r1,r2 = MakeItem ( role , gen2[i]  , 1 , 4 )
	GiveItem ( role , 0 , 608 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local sta_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STA )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	sta_JLone = 20
	local new_lv = sta_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STA , sta_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end
--ID0227	Питание феи
--ID2312	Стандартный паек
function ItemUse_SiLiao ( role , Item , Item_Traget )
	if CanUseItem(role) == 0 then return end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return
	end
	local Item_Traget_URE=GetItemAttr(Item_Traget,ITEMATTR_URE)
	local Item_Traget_MAXURE=GetItemAttr(Item_Traget,ITEMATTR_MAXURE)
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Num = 2500
	if Item_type == 57 and Item_Traget_Type == 59 then
		if Item_Traget_URE < Item_Traget_MAXURE then
			Give_ElfURE ( role , Item_Traget , Num )
		else
			SystemNotice(role , "Фея сыта!" ) 
			UseItemFailed ( role )
			return
		end
	end 
end

--ID5644	Большое Питание Феи
--ID5645	Большой Авто-рацион
function ItemUse_numeneat ( role , Item , Item_Traget )
	if CanUseItem(role) == 0 then return end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return
	end
	local Item_Traget_URE=GetItemAttr(Item_Traget,ITEMATTR_URE)
	local Item_Traget_MAXURE=GetItemAttr(Item_Traget,ITEMATTR_MAXURE)
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Num = 5000
	if Item_type == 57 and Item_Traget_Type == 59 then
		if Item_Traget_URE < Item_Traget_MAXURE then
			Give_ElfURE ( role , Item_Traget , Num )
		else
			SystemNotice(role , "Фея сыта!" ) 
			UseItemFailed ( role )
			return
		end
	end 
end

--ID3152	Пища фей
function ItemUse_CWSiLiao ( role , Item , Item_Traget )
	if CanUseItem(role) == 0 then return end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end
	local Item_Traget_URE=GetItemAttr(Item_Traget,ITEMATTR_URE)
	local Item_Traget_MAXURE=GetItemAttr(Item_Traget,ITEMATTR_MAXURE)
	local Item_type = GetItemType ( Item )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Num = 250
	if Item_type == 57 and Item_Traget_Type == 59 then
		if Item_Traget_URE < Item_Traget_MAXURE then
		Give_ElfURE ( role , Item_Traget , Num )
	else
		SystemNotice(role , "Фея сыта!" ) 
			UseItemFailed ( role )
			return
		end
	end
end

--ID0222	Фрукт снежного дракона
function ItemUse_LS_longguo ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Фруктом снежного дракона(Сила +1)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Str ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID0223	Ледяная слива
function ItemUse_LS_koumei ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Ледяной сливой(Ловкость +1)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Agi ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID0224	Фишфлос с Зефира
function ItemUse_LS_yusi ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Фишфлосом с Зефира(Точность +1)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Dex ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID0225	Серебряное манго
function ItemUse_LS_guopu ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Серебряным манго(Телосложение +1)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Con ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID0226	Шайтанский бисквит
function ItemUse_LS_mibing ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Шайтанским бисквитом(Дух +1)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Sta ( role , Item_Num , Item_Traget )
				end
		end 
end

--Самоуничтожение
function Sk_Script_CJJLZB( role , Item ) 
 	local sk_add = SK_JLZB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
--Самоуничтожение
function Sk_Script_ZJJLZB ( role , Item ) 
	local sk_add = SK_JLZB
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 2 then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 2 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
 ---Самоуничтожение
function Sk_Script_GJJLZB( role , Item ) 
 	local sk_add = SK_JLZB  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 3  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 3 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--IDНачальная защита
function ItemUse_HuDun_CJ ( role , Item , Item_Traget )
	if CanUseItem(role) == 0 then return end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type =  GetItemType ( Item )
	local Item_Traget_Type =  GetItemType ( Item_Traget )
	local Num = GetItemForgeParam ( Item_Traget , 1 )
	local SkillType = 1
	local SkillNum = 1
	if Item_type == 58 and Item_Traget_Type == 59 then
		local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
		if Check == 1 then
			SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
			UseItemFailed ( role )
		else
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
			SystemNotice( role , "Навык феи успешно добавлен!" )
		end
	end
end

--IDСтандартная защита
function ItemUse_HuDun_ZJ ( role , Item , Item_Traget )
	if CanUseItem(role) == 0 then return end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type =  GetItemType ( Item )
	local Item_Traget_Type =  GetItemType ( Item_Traget )
	local Num = GetItemForgeParam ( Item_Traget , 1 )
	local SkillType = 2
	local SkillNum = 1
	if Item_type == 58 and Item_Traget_Type == 59 then
		local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
		if Check == 1 then
			SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
			UseItemFailed ( role )
		else
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
			SystemNotice( role , "Навык феи успешно добавлен!" )
		end
	end
end

--IDродвинутая защита
function ItemUse_HuDun_GJ ( role , Item , Item_Traget )
	if CanUseItem(role) == 0 then return end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type =  GetItemType ( Item )
	local Item_Traget_Type =  GetItemType ( Item_Traget )
	local Num = GetItemForgeParam ( Item_Traget , 1 )
	local SkillType = 3
	local SkillNum = 1
	if Item_type == 58 and Item_Traget_Type == 59 then
		local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
		if Check == 1 then
			SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
			UseItemFailed ( role )
		else
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
			SystemNotice( role , "Навык феи успешно добавлен!" )
		end
	end
end

--Начальный берсерк
function ItemUse_BaoJi_CJ ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
	return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 1	
		local SkillNum = 2	
		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
			SystemNotice( role , "Навык феи успешно добавлен!" )
			end
		end
end

--ID0247Стандартный Берсерк
function ItemUse_BaoJi_ZJ ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
	return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 2	
		local SkillNum = 2	
		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
			SystemNotice( role , "Навык феи успешно добавлен!" )
			end
		end
end

--ID0248Продвинутый Берсерк
function ItemUse_BaoJi_GJ ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
	return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 3	
		local SkillNum = 2	
		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
			SystemNotice( role , "Навык феи успешно добавлен!" )
			end
		end
end

-- Начальная магия
function ItemUse_MoLi_CJ ( role , Item , Item_Traget )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_type =  GetItemType ( Item )
	local Item_Traget_Type =  GetItemType ( Item_Traget )
	local Num = GetItemForgeParam ( Item_Traget , 1 )
	local SkillType = 1
	local SkillNum = 3
	if Item_type == 58 and Item_Traget_Type == 59 then
		local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
		if Check == 1 then
			SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно." ) 
			UseItemFailed ( role )
		else
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
		end
	end
end

--Стандартная магия
function ItemUse_MoLi_ZJ ( role , Item , Item_Traget )   
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
	return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 2	
		local SkillNum = 3	
		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
			SystemNotice( role , "Навык феи успешно добавлен!" )
			end
		end
end

--Продвинутая магия
function ItemUse_MoLi_GJ ( role , Item , Item_Traget )   
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
	return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 3	
		local SkillNum = 3	
		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
			SystemNotice( role , "Навык феи успешно добавлен!" )
			end
		end
end

--Начальное востановление
function ItemUse_HuiFu_CJ ( role , Item , Item_Traget )   
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )
		local SkillType = 1		
		local SkillNum = 4		
		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

--Стандартное востановление
function ItemUse_HuiFu_ZJ ( role , Item , Item_Traget )   
			--SystemNotice( role , "s" )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
--	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 2		
		local SkillNum = 4		
				--SystemNotice( role , SkillType )
				--SystemNotice( role , SkillNum )

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
				  --SystemNotice( role , "AddElfSkill" )

			AddElfSkill ( Item_Traget , SkillType , SkillNum )
				  --SystemNotice( role , "Навык феи успешно добавлен!" )

			end
		end

end

--Продвинутое востановление
function ItemUse_HuiFu_GJ( role , Item , Item_Traget )   
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 3	
		local SkillNum = 4	
		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
		AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end

end

--Начальная медитация
function ItemUse_ChenSi_CJ ( role , Item , Item_Traget )   
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 1	
		local SkillNum = 5	
		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

--Стандартная Медитация
function ItemUse_ChenSi_ZJ ( role , Item , Item_Traget )   

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	
		local SkillType = 2		
		local SkillNum = 5		
		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )

			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end

end

--Продвинутая Медитация
function ItemUse_ChenSi_GJ ( role , Item , Item_Traget )   
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	SystemNotice( role , Cha_Boat )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
	return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 3	
		local SkillNum = 5	
		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
			AddElfSkill ( Item_Traget , SkillType , SkillNum )
			SystemNotice( role , "Навык феи успешно добавлен!" )
			end
		end
end

function ItemUse_MINGZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в интвентаре")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 183  , 1 , 4 ) 
end

function ItemUse_FAZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в интвентаре")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 184  , 1 , 4 ) 
end

function ItemUse_QIANZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в интвентаре")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 185  , 1 , 4 ) 
end


function ItemUse_HENGZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в интвентаре")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 186  , 1 , 4 )  
end

function ItemUse_YUZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в интвентаре")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 187  , 1 , 4 )  
end

function ItemUse_XUEZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в интвентаре")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 188  , 1 , 4 )  
end

function ItemUse_XINGZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в интвентаре")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 189  , 1 , 4 )  
end

function ItemUse_HUIZJLD( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в интвентаре")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 190  , 1 , 4 )  
end

function ItemUse_AIZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в интвентаре")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 191  , 1 , 4 )  
end

function ItemUse_XINGZHIJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в интвентаре")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 199  , 1 , 4 )  
end

function ItemUse_MDXZJLD ( role, Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в интвентаре")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 680  , 1 , 4 ) 
end

function ItemUse_YZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Luck")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 231  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ИЎРВѕ«БйµАѕЯЦёХл
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end

function ItemUse_TZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Constitution")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 µЅ Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 233  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ИЎРВѕ«БйµАѕЯЦёХл
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end

function ItemUse_LZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Strength")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 µЅ Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 232  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ИЎРВѕ«БйµАѕЯЦёХл
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end

function ItemUse_SZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Spirit")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 µЅ Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  
	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 234  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end

function ItemUse_ZZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Accuracy")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 235  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ИЎРВѕ«БйµАѕЯЦёХл
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end

function ItemUse_MZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Agility")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 µЅ Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 236  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ИЎРВѕ«БйµАѕЯЦёХл
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end

function ItemUse_XZJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Evil")
		UseItemFailed ( role )
		return
	end
	local Num_newJL = GetItemForgeParam ( Item , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	--Get Num Part 1 µЅ Part 7
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )

	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  

	local rad = math.random ( 1, 100 )
	if Part3_newJL==3 then
		GiveItem ( role , 0 , 609  , 1 , 4 ) 
	end
	if Part3_newJL==2 then
		if rad <=95 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 95 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	if Part3_newJL==1 then
		if rad <=90 then
			GiveItem ( role , 0 , 239  , 1 , 4 ) 
		elseif rad > 90 and rad <=98 then
			GiveItem ( role , 0 , 608  , 1 , 4 ) 
		elseif rad > 98 and rad <=100 then
			GiveItem ( role , 0 , 609  , 1 , 4 ) 
		end
	end
	local r1,r2 =MakeItem ( role , 237  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ИЎРВѕ«БйµАѕЯЦёХл
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end

function ItemUse_MDXZESJLD( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Egg of Mordo")
		UseItemFailed ( role )
		return
	end
	local new_str=GetItemAttr ( Item , ITEMATTR_VAL_STR )      
	local new_dex=GetItemAttr( Item , ITEMATTR_VAL_DEX  )	  
	local new_sta=GetItemAttr ( Item , ITEMATTR_VAL_STA  )    
	local new_agi=GetItemAttr( Item , ITEMATTR_VAL_AGI )       
	local new_con=GetItemAttr ( Item , ITEMATTR_VAL_CON )  
	local new_lv = new_str + new_con + new_agi + new_dex + new_sta
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		Item_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		Item_MAXURE_NUM = 32000
	end	  
	GiveItem ( role , 0 , 609  , 1 , 4 ) 
	local r1,r2 =MakeItem ( role , 681  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STR , new_str )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_DEX , new_dex )	 
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_STA , new_sta )
	SetItemAttr( Item_newJL , ITEMATTR_VAL_AGI , new_agi )
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_CON , new_con ) 
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
end


--ID0239	Начальное Владение феей
function Sk_Script_CJJLFT( role , Item )
 	local sk_add = SK_JLFT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a == 0 then 
		UseItemFailed ( role )  
		return 
	end
end

--ID0608	Стандартное Владение Феей
function Sk_Script_ZJJLFT ( role , Item )
	local sk_add = SK_JLFT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 2 then 
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 2 , 1 , 0 )
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end
end 

--ID0609	Продвинутое Владение Феей
function Sk_Script_GJJLFT( role , Item )
 	local sk_add = SK_JLFT  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 3  then 
		UseItemFailed ( role )  
		return 
	end
	a = AddChaSkill ( role , sk_add, 3 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

--ID0276	Огромный Фрукт снежного дракона
function ItemUse_CJ_longguo( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Огромный Фрукт снежного дракона(Сила +2)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Str_1 ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID0277	Огромная Ледяная слива
function ItemUse_CJ_koumei ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Огромной Ледяной сливой(Ловкость +2)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Agi_1 ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID0278	Огромный Фишфлос с Зефира
function ItemUse_CJ_yusi ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Огромным Фишфлосом с Зефира(Точность +2)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Dex_1 ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID0279	Огромное Серебряное манго
function ItemUse_CJ_guopu ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Огромным Серебряным манго(Телосложение +2)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Con_1 ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID0280	Огромный шайтанский бисквит
function ItemUse_CJ_mibing ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Огромным шайтанским бисквитом(Дух +2)!" ) 
					UseItemFailed ( role )
				else
					Lvup_Sta_1 ( role , Item_Num , Item_Traget )
				end
		end 
end

--ID7003	Улучшенный Фрукт Силы
function ItemUse_Great_Strup( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv1( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Улучшенным Фруктом Силы!" ) 
					UseItemFailed ( role )
				else
					Lvup_Str ( role , Item_Num , Item_Traget )
				end
		end 
end

--ID7004	Улучшенный Фрукт Ловкости
function ItemUse_Great_Agiup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv1( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Улучшенным Фруктом Ловкости!" ) 
					UseItemFailed ( role )
				else
					Lvup_Agi ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID7005	Улучшенный Фрукт Точности
function ItemUse_Great_Dexup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv1( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Улучшенным Фруктом Точности!" ) 
					UseItemFailed ( role )
				else
					Lvup_Dex ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID7006	Улучшенный Фрукт Телосложения
function ItemUse_Great_Conup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv1( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Улучшенным Фруктом Телосложения!" ) 
					UseItemFailed ( role )
				else
					Lvup_Con ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID7007	Улучшенный Фрукт Духа
function ItemUse_Great_Staup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv1( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Улучшенным Фруктом Духа!" ) 
					UseItemFailed ( role )
				else
					Lvup_Sta ( role , Item_Num , Item_Traget )
				end
		end 
end

--ID7008	Супер Фрукт Силы
function ItemUse_Super_Strup( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv2( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				if Item_bg ~= Item_Traget then
					SystemNotice(role , "Фея должна находится во 2 слоте первого ряда, что бы покормить ее Супер Фруктом Силы!" ) 
					UseItemFailed ( role )
				else
					Lvup_Str ( role , Item_Num , Item_Traget )
				end
		end 
end

--ID7009	Супер Фрукт Ловкости
function ItemUse_Super_Agiup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv2( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				if Item_bg ~= Item_Traget then
					SystemNotice(role , "Фея должна находится во 2 слоте первого ряда, что бы покормить ее Супер Фруктом Ловкости!" ) 
					UseItemFailed ( role )
				else
					Lvup_Agi ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID7010	Супер Фрукт Точности
function ItemUse_Super_Dexup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv2( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				if Item_bg ~= Item_Traget then
					SystemNotice(role , "Фея должна находится во 2 слоте первого ряда, что бы покормить ее Супер Фруктом Точности!" ) 
					UseItemFailed ( role )
				else
					Lvup_Dex ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID7011	Супер Телосложения
function ItemUse_Super_Conup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv2( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				if Item_bg ~= Item_Traget then
					SystemNotice(role , "Фея должна находится во 2 слоте первого ряда, что бы покормить ее Супер Фруктом Телосложения!" ) 
					UseItemFailed ( role )
				else
					Lvup_Con ( role , Item_Num , Item_Traget )
				end 
		end 
end

--ID7012	Супер Фрукт Духа
function ItemUse_Super_Staup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv2( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				if Item_bg ~= Item_Traget then
					SystemNotice(role , "Фея должна находится во 2 слоте первого ряда, что бы покормить ее Супер Фруктом Духа!" ) 
					UseItemFailed ( role )
				else
					Lvup_Sta ( role , Item_Num , Item_Traget )
				end
		end 
end


--ID0578	Фрукт роста
function ItemUse_JLJSGz( role , Item )
	local statelv = 1
	local statetime = 900
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_JLJSGZ )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if Drop2[name] == nil then
        Drop2[name] = { UsedTime = os.time() }
    end
	local cooldown = Drop2[name].UsedTime - os.time()
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_JLJSGZ , statelv , statetime )
		Drop2[name].UsedTime = os.time()+statetime
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--Новые безобидные скиллы феи
function Sk_Script_DBs( role , Item ) 
 	local sk_add = SK_JLTX1  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
function Sk_Script_NKs( role , Item ) 
 	local sk_add = SK_JLTX2  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
function Sk_Script_XZs( role , Item )
 	local sk_add = SK_JLTX3  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
function Sk_Script_JQs( role , Item )
 	local sk_add = SK_JLTX4  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
function Sk_Script_BCs( role , Item ) 
 	local sk_add = SK_JLTX5  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
function Sk_Script_BSs( role , Item ) 
 	local sk_add = SK_JLTX6  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
function Sk_Script_PZs( role , Item ) 
 	local sk_add = SK_JLTX7  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
function Sk_Script_SZs( role , Item )
 	local sk_add = SK_JLTX8  
	local form_sklv = GetSkillLv( role , sk_add ) 
	if form_sklv >= 1  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 0 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
--Мирные навыки феи
function ItemUse_JLZhiZ_CJ ( role , Item , Item_Traget )  
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	
		local SkillType = 1		
		local SkillNum = 13		
		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

function ItemUse_JLZhiZ_ZJ ( role , Item , Item_Traget )   
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 2		
		local SkillNum = 13		

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

function ItemUse_JLZhiZ_GJ ( role , Item , Item_Traget )  
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 3		
		local SkillNum = 13		

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

function ItemUse_JLZhuZ_CJ ( role , Item , Item_Traget )   
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 1		
		local SkillNum = 14		

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

function ItemUse_JLZhuZ_ZJ ( role , Item , Item_Traget )   
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 2		
		local SkillNum = 14		

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

function ItemUse_JLZhuZ_GJ ( role , Item , Item_Traget )  
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 3		
		local SkillNum = 14		

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

function ItemUse_JLFenJ_CJ ( role , Item , Item_Traget )  
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 1		
		local SkillNum = 15		

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

function ItemUse_JLFenJ_ZJ ( role , Item , Item_Traget )  
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 2		
		local SkillNum = 15		
		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

function ItemUse_JLFenJ_GJ ( role , Item , Item_Traget )   
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 3		
		local SkillNum = 15		

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

function ItemUse_JLPengR_CJ ( role , Item , Item_Traget )   
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 1		
		local SkillNum = 16		

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

function ItemUse_JLPengR_ZJ ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 2		
		local SkillNum = 16		

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end

function ItemUse_JLPengR_GJ ( role , Item , Item_Traget )   
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type =  GetItemType ( Item )
		local Item_Traget_Type =  GetItemType ( Item_Traget )
		local Num = GetItemForgeParam ( Item_Traget , 1 )	 
		local SkillType = 3		
		local SkillNum = 16		

		if Item_type == 58 and Item_Traget_Type == 59 then
			local Check = CheckElfHaveSkill ( Num , SkillType , SkillNum )
			if Check == 1 then
				SystemNotice(role , "Фея уже имеет такой навык. Использование невозможно. " ) 
				UseItemFailed ( role )
			else
				AddElfSkill ( Item_Traget , SkillType , SkillNum )
			end
		end
end
--	8208	Набор Анжелы(Сила)
function ItemUse_angel_str( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end

	local r1,r2 = MakeItem ( role , 0129  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local str_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STR )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	str_JLone = 40
	local new_lv = str_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STR , str_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8209	Набор Анжелы(Телосл.)
function ItemUse_angel_con( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end

	local r1,r2 = MakeItem ( role , 0129  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local con_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_CON )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	con_JLone = 40
	local new_lv = con_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_CON , con_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8210	Набор Анжелы(Ловк.)
function ItemUse_angel_agi( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0129  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local agi_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_AGI )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	agi_JLone = 45
	local new_lv = agi_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_AGI , agi_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8211	Набор Анжелы(Точн.)
function ItemUse_angel_acc( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0129  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local dex_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_DEX )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	dex_JLone = 40
	local new_lv = dex_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_DEX , dex_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8212	Набор Анжелы(Дух)
function ItemUse_angel_spr( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0129  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local sta_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STA )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	sta_JLone = 40
	local new_lv = sta_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STA , sta_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8213	Набор Апалона(Сила)
function ItemUse_apalon_str( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end

	local r1,r2 = MakeItem ( role , 0130  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local str_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STR )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	str_JLone = 45
	local new_lv = str_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STR , str_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8214	Набор Апалона(Телосл.)
function ItemUse_apalon_con( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end

	local r1,r2 = MakeItem ( role , 0130  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local con_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_CON )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	con_JLone = 45
	local new_lv = con_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_CON , con_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8215	Набор Апалона(Ловк.)
function ItemUse_apalon_agi( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0130  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local agi_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_AGI )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	agi_JLone = 45
	local new_lv = agi_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_AGI , agi_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8216	Набор Апалона(Точн.)
function ItemUse_apalon_acc( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0130  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local dex_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_DEX )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	dex_JLone = 45
	local new_lv = dex_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_DEX , dex_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8217	Набор Апалона(Дух)
function ItemUse_apalon_spr( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0130  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local sta_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STA )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	sta_JLone = 45
	local new_lv = sta_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STA , sta_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8218	Набор Гефеста(Сила)
function ItemUse_gefest_str( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end

	local r1,r2 = MakeItem ( role , 0131  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local str_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STR )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	str_JLone = 45
	local new_lv = str_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STR , str_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8219	Набор Гефеста(Телосл.)
function ItemUse_gefest_con( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end

	local r1,r2 = MakeItem ( role , 0131  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local con_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_CON )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	con_JLone = 45
	local new_lv = con_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_CON , con_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8220	Набор Гефеста(Ловк.)
function ItemUse_gefest_agi( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	local r1,r2 = MakeItem ( role , 0131  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )
	local agi_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_AGI )
	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	agi_JLone = 45
	local new_lv = agi_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_AGI , agi_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8221	Набор Гефеста(Точн.)
function ItemUse_gefest_acc( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	local r1,r2 = MakeItem ( role , 0131  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )
	local dex_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_DEX )
	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	dex_JLone = 45
	local new_lv = dex_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_DEX , dex_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8222	Набор Гефеста(Дух)
function ItemUse_gefest_spr( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	
	local r1,r2 = MakeItem ( role , 0131  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local sta_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STA )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	sta_JLone = 45
	local new_lv = sta_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STA , sta_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8223	Набор Гестии(Сила)
function ItemUse_gestia_str( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end

	local r1,r2 = MakeItem ( role , 0132  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )

	local str_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STR )

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	str_JLone = 45
	local new_lv = str_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STR , str_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8224	Набор Гестии(Телосл.)
function ItemUse_gestia_con( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	local r1,r2 = MakeItem ( role , 0132  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )
	local con_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_CON )
	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	con_JLone = 45
	local new_lv = con_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_CON , con_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8225	Набор Гестии(Ловк.)
function ItemUse_gestia_agi( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	local r1,r2 = MakeItem ( role , 0132  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )
	local agi_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_AGI )
	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	agi_JLone = 45
	local new_lv = agi_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_AGI , agi_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8226	Набор Гестии(Точн.)
function ItemUse_gestia_acc( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	local r1,r2 = MakeItem ( role , 0132  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )
	local dex_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_DEX )
	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	dex_JLone = 45
	local new_lv = dex_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_DEX , dex_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8227	Набор Гестии(Дух)
function ItemUse_gestia_spr( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	local r1,r2 = MakeItem ( role , 0132  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )
	local sta_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STA )
	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	sta_JLone = 45
	local new_lv = sta_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STA , sta_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8228	Набор Афины(Сила)
function ItemUse_afina_str( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	local r1,r2 = MakeItem ( role , 0133  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )
	local str_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STR )
	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	str_JLone = 45
	local new_lv = str_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STR , str_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8229	Набор Афины(Телосл.)
function ItemUse_afina_con( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	local r1,r2 = MakeItem ( role , 0133  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )
	local con_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_CON )
	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	con_JLone = 45
	local new_lv = con_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_CON , con_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8230	Набор Афины(Ловк.)
function ItemUse_afina_agi( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	local r1,r2 = MakeItem ( role , 0133  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )
	local agi_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_AGI )
	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	agi_JLone = 45
	local new_lv = agi_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_AGI , agi_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8231	Набор Афины(Точн.)
function ItemUse_afina_acc( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	local r1,r2 = MakeItem ( role , 0133  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )
	local dex_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_DEX )
	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	dex_JLone = 45
	local new_lv = dex_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_DEX , dex_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8232	Набор Афины(Дух)
function ItemUse_afina_spr( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Требуется 1 свободный слот в Вашем инвентаре, чтобы использовать Суп перерождения")
		UseItemFailed ( role )
		return
	end
	local r1,r2 = MakeItem ( role , 0133  , 1 , 4 )
	GiveItem ( role , 0 , 609 , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )
	local Item_newJLID = GetItemID ( Item_newJL )
	local sta_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STA )
	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )
	Part1_JL = 1
	Num_JL = SetNum_Part1 ( Num_JL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	sta_JLone = 45
	local new_lv = sta_JLone
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STA , sta_JLone )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY )
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
end

--	8233	Амброзия Силы
function ItemUse_ambr_Strup( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv4( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Амброзией Силы!" ) 
					UseItemFailed ( role )
				else
					Lvup_Str ( role , Item_Num , Item_Traget )
				end
		end 
end

--	8234	Амброзия Ловкости
function ItemUse_ambr_Agiup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv4( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Амброзией Ловкости!" ) 
					UseItemFailed ( role )
				else
					Lvup_Agi ( role , Item_Num , Item_Traget )
				end 
		end 
end

--	8235	Амброзия Точности
function ItemUse_ambr_Dexup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv4( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Амброзией Точности!" ) 
					UseItemFailed ( role )
				else
					Lvup_Dex ( role , Item_Num , Item_Traget )
				end 
		end 
end

--	8236	Амброзия Телосложения
function ItemUse_ambr_Conup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv4( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Амброзией Телосложения!" ) 
					UseItemFailed ( role )
				else
					Lvup_Con ( role , Item_Num , Item_Traget )
				end 
		end 
end

--	8237	Амброзия Духа
function ItemUse_ambr_Staup ( role , Item , Item_Traget ) 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local ret = CheckJingLingLv4( role , Item_Traget )
	if ret == 0 then
		UseItemFailed ( role ) 
		return 
	end
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local Item_Num = GetItemID ( Item )
		local Check_Exp = 0
		local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
		local Item_bg = GetChaItem ( role , 2 , 1  )
		if Item_type == 58 and Item_Traget_Type == 59 then
				Check_Exp = CheckElf_EXP ( role , Item_Traget )
				if Check_Exp == 0 or Item_bg ~= Item_Traget then
					SystemNotice(role , "Уровень роста Феи не полон. Невозможно покормить фею Амброзией Духа!" ) 
					UseItemFailed ( role )
				else
					Lvup_Sta ( role , Item_Num , Item_Traget )
				end
		end 
end

--
--ФЕИ КОНЕЦ
--

function ItemUse_Ant_Hzcr ( role , Item , Item_Traget )

	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		RemoveState( Cha_Boat , STATE_HZCR )
	else
		SystemNotice( role , "Unable to use on the shore" )
		UseItemFailed ( role )
		return
	end

end

--

--СУНДУКИ НОВИЧКА

--
function ItemUse_XRBOX( role, Item )

	local lv = GetChaAttr(role, ATTR_LV)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"Недостаточно места в интвентаре, нужно 4 слота")
		UseItemFailed ( role )
		return
	end
	if lv < 5 then
		SystemNotice(role ,"Нужно быть 5 уровнем!")
		UseItemFailed ( role )	
	else
		GiveItem ( role , 0 , 437  , 1 , 4 )
		GiveItem ( role , 0 , 9  , 1 , 95 )
		GiveItem ( role , 0 , 4308  , 1 , 95 )
		GiveItem ( role , 0 , 444  , 1 , 4 )
		GiveItem ( role , 0 , 1849  , 30 , 4 )
	end
end
--10 уровень
function ItemUse_SANWUBOX( role, Item )
	local lv = GetChaAttr(role, ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB) 
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"Недостаточно места в интвентаре, нужно 4 слота")
		UseItemFailed ( role )
		return
	end
	if lv < 10 then
		SystemNotice(role ,"Уровень меньше 10, нувозможно использовать!")
		UseItemFailed ( role )
		return
	end
	if cha_type ~= 2 and job==4 then
		GiveItem ( role , 0 , 0803 , 1 , 4 )
		GiveItem ( role , 0 , 0986 , 1 , 4 )
	elseif cha_type ~= 2 and job==16 then
		GiveItem ( role , 0 , 0803 , 1 , 4 )
		GiveItem ( role , 0 , 0986 , 1 , 4 )
	elseif cha_type == 2  and job~=0 then
		GiveItem ( role , 0 , 0763  , 1 , 4 )
		GiveItem ( role , 0 , 0986  , 1 , 4 )
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==2 then
		GiveItem ( role , 0 , 0777  , 1 , 4 )
		GiveItem ( role , 0 , 0986  , 1 , 4 )
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==12 then
		GiveItem ( role , 0 , 0777  , 1 , 4 )
		GiveItem ( role , 0 , 0986  , 1 , 4 )
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==5 then
		    GiveItem ( role , 0 , 0789  , 1 , 4 )
		GiveItem ( role , 0 , 0986  , 1 , 4 )
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==13 then
		    GiveItem ( role , 0 , 0789  , 1 , 4 )
		GiveItem ( role , 0 , 0986  , 1 , 4 )
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==14 then
		    GiveItem ( role , 0 , 0789  , 1 , 4 )
		GiveItem ( role , 0 , 0986  , 1 , 4 )
	elseif cha_type == 1 and  job==1 then
		    GiveItem ( role , 0 , 1928  , 1 , 4 )
		GiveItem ( role , 0 , 0986  , 1 , 4 )
	else 
		SystemNotice(role ,"Получите профессию, невозможно использовать не имея профессии.")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1849  , 45 , 4 )
end

---35 уровень
function ItemUse_SIWUBOX( role, Item )
	local lv = GetChaAttr(role, ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB)
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"Недостаточно места в интвентаре, нужно 4 слота")
		UseItemFailed ( role )
		return
	end
	if lv < 35 then
		SystemNotice(role ,"Уровень меньше 35, невозможно использовать предмет!")
		UseItemFailed ( role )
		return
	end
	if cha_type == 1 and job==9 then
		GiveItem ( role , 0 , 0767 , 1 , 4 )
		GiveItem ( role , 0 , 0987 , 1 , 4 )
	elseif cha_type == 2 and job==8 then
		GiveItem ( role , 0 , 0764  , 1 , 4 )
		GiveItem ( role , 0 , 0987  , 1 , 4 )
	elseif cha_type == 1 and job==12 then
		GiveItem ( role , 0 , 778  , 1 , 4 )
		GiveItem ( role , 0 , 0987  , 1 , 4 )
	elseif cha_type == 3 and job==12 then
		GiveItem ( role , 0 , 778  , 1 , 4 )
		GiveItem ( role , 0 , 0987  , 1 , 4 )
	elseif cha_type == 4 and job==13 then
		GiveItem ( role , 0 , 0790  , 1 , 4 )
		GiveItem ( role , 0 , 0987  , 1 , 4 )
	elseif cha_type == 3  and job==13 then
		GiveItem ( role , 0 , 0790  , 1 , 4 )
		GiveItem ( role , 0 , 0987  , 1 , 4 )
	elseif cha_type == 3  and job==14 then
		GiveItem ( role , 0 , 0796  , 1 , 4 )
		GiveItem ( role , 0 , 0987  , 1 , 4 )
	elseif cha_type == 4 and job==14 then
		GiveItem ( role , 0 , 0796  , 1 , 4 )
		GiveItem ( role , 0 , 0987  , 1 , 4 )
	elseif cha_type == 3 and job==16 then
		GiveItem ( role , 0 , 0804  , 1 , 4 )
		GiveItem ( role , 0 , 0987  , 1 , 4 )
	elseif cha_type == 1 and job==16 then
		GiveItem ( role , 0 , 0804  , 1 , 4 )
		GiveItem ( role , 0 , 0987  , 1 , 4 )
	elseif cha_type ==4 and job==16 then
		GiveItem ( role , 0 , 0804  , 1 , 4 )
		GiveItem ( role , 0 , 0987  , 1 , 4 )
	else 
		SystemNotice(role ,"Вы не имеете профессию, получите профессию, а затем используйте предмет.")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 8290  , 35 , 4 )
end

--45 уровень
function ItemUse_WUWUBOX( role, Item )

	local lv = GetChaAttr(role, ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB) 
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"Недостаточно места в интвентаре, нужно 4 слота")
		UseItemFailed ( role )
		return
	end
	if lv < 45 then
		SystemNotice(role ,"Уровень меньше 45, невозможно использовать прдедмет")
		UseItemFailed ( role )
		return
	end
	if cha_type == 1 and job==9 then
		GiveItem ( role , 0 , 0768 , 1 , 4 )	
		GiveItem ( role , 0 , 0988 , 1 , 4 )
	elseif cha_type == 2 and job==8 then
		GiveItem ( role , 0 , 0765  , 1 , 4 )
		GiveItem ( role , 0 , 0988  , 1 , 4 )
	elseif cha_type == 3 and job==12 then
		GiveItem ( role , 0 , 0779  , 1 , 4 )
		GiveItem ( role , 0 , 0988  , 1 , 4 )
	elseif cha_type == 1 and job==12 then
		GiveItem ( role , 0 , 0779  , 1 , 4 )
		GiveItem ( role , 0 , 0988  , 1 , 4 )
	elseif cha_type == 3 and job==13 then
		    GiveItem ( role , 0 , 0791  , 1 , 4 )
		GiveItem ( role , 0 , 0988  , 1 , 4 )
	elseif cha_type == 4 and job==13 then
		    GiveItem ( role , 0 , 0791  , 1 , 4 )
		GiveItem ( role , 0 , 0988  , 1 , 4 )
	elseif cha_type == 3 and job==14 then
		    GiveItem ( role , 0 , 0797  , 1 , 4 )
		GiveItem ( role , 0 , 0988  , 1 , 4 )
	elseif cha_type == 4 and job==14 then
		    GiveItem ( role , 0 , 0797  , 1 , 4 )
		GiveItem ( role , 0 , 0988  , 1 , 4 )
	elseif cha_type == 1 and job==16 then
		    GiveItem ( role , 0 , 0805  , 1 , 4 )
		GiveItem ( role , 0 , 0988  , 1 , 4 )
	elseif cha_type == 3 and job==16 then
		    GiveItem ( role , 0 , 0805  , 1 , 4 )
		GiveItem ( role , 0 , 0988  , 1 , 4 )
	elseif cha_type == 4 and job==16 then
		    GiveItem ( role , 0 , 0805  , 1 , 4 )
		GiveItem ( role , 0 , 0988  , 1 , 4 )
	else 
		SystemNotice(role ,"Вы не имеете профессию, получите профессию, а затем используйте предмет.")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 8290  , 50 , 4 )
end

--55 уровень
function ItemUse_LIUWUBOX( role, Item )
	local lv = GetChaAttr(role, ATTR_LV)
	local job = GetChaAttr( role, ATTR_JOB) 
	local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"Недостаточно места в интвентаре, нужно 4 слота")
		UseItemFailed ( role )
		return
	end
	if lv < 55 then
		SystemNotice(role ,"Уровень меньше 55, невозможно использовать прдедмет!")
		UseItemFailed ( role )
		return
	end
	if cha_type == 1 and job==9 then
		GiveItem ( role , 0 , 0769 , 1 , 4 )		
	elseif cha_type == 2 and job==8 then
		GiveItem ( role , 0 , 0766  , 1 , 4 )
	elseif cha_type == 3 and job==12 then
		GiveItem ( role , 0 , 0780  , 1 , 4 )
	elseif cha_type == 1 and job==12 then
		GiveItem ( role , 0 , 0780  , 1 , 4 )
	elseif cha_type == 3 and job==13 then
		    GiveItem ( role , 0 , 0792  , 1 , 4 )
	elseif cha_type == 4 and job==13 then
		    GiveItem ( role , 0 , 0792  , 1 , 4 )
	elseif cha_type == 3 and job==14 then
		    GiveItem ( role , 0 , 0798  , 1 , 4 )
	elseif cha_type == 4 and job==14 then
		    GiveItem ( role , 0 , 0798  , 1 , 4 )
	elseif cha_type == 1 and job==16 then
		    GiveItem ( role , 0 , 0806  , 1 , 4 )
	elseif cha_type == 3 and job==16 then
		    GiveItem ( role , 0 , 0806  , 1 , 4 )
	elseif cha_type == 4 and job==16 then
		    GiveItem ( role , 0 , 0806  , 1 , 4 )
	else 
		SystemNotice(role ,"Вы не имеете профессию, получите профессию, а затем используйте предмет.")
		UseItemFailed ( role )
		return
	end
end

--Летучий сундук (437)
function ItemUse_XRBOX1( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 8 then
		SystemNotice(role ,"Чтобы открыть Летучий сундук необходимо не менее 8 свободных ячеек в инвентаре")
		UseItemFailed ( role )
		return
	end
	if lv < 10 then
		SystemNotice(role ,"Ваш уровень должен быть выше 10. Невозможно использовать предмет!")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 10  , 1 , 95 ) 
		GiveItem ( role , 0 , 296  , 1 , 95 )
		GiveItem ( role , 0 , 4602  , 1 , 4 )
		GiveItem ( role , 0 , 4603  , 1 , 4 )
		GiveItem ( role , 0 , 4604  , 1 , 4 )
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
	elseif job == 2 then   
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 32  , 1 , 95 ) 
		GiveItem ( role , 0 , 311  , 1 , 95 )
		GiveItem ( role , 0 , 4602  , 1 , 4 )
		GiveItem ( role , 0 , 4603  , 1 , 4 )
		GiveItem ( role , 0 , 4604  , 1 , 4 )
		GiveItem ( role , 0 , 445  , 1 , 4 ) 

	elseif job == 4 then  
		GiveItem ( role , 0 , 4602  , 1 , 4 )
		GiveItem ( role , 0 , 4603  , 1 , 4 )
		GiveItem ( role , 0 , 4604  , 1 , 4 )
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 80  , 1 , 95 ) 
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 336  , 1 , 95 ) 
		else 
			GiveItem ( role , 0 , 351  , 1 , 95 ) 
		end
	elseif job == 5 then   
		GiveItem ( role , 0 , 4602  , 1 , 4 ) 
		GiveItem ( role , 0 , 4603  , 1 , 4 ) 
		GiveItem ( role , 0 , 4604  , 1 , 4 ) 
		GiveItem ( role , 0 , 445  , 1 , 4 ) 
		GiveItem ( role , 0 , 438  , 1 , 4 ) 
		GiveItem ( role , 0 , 104  , 1 , 95 ) 
		if cha_type == 3 then 
			GiveItem ( role , 0 , 372  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 359  , 1 , 95 ) 
		end
	else 
		SystemNotice(role ,"Предмет может быть использован только после выбора основной профессии!")
		UseItemFailed ( role )	
	end
end
--15 уровень
function ItemUse_XRBOX2( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 6 then
		SystemNotice(role ,"Чтобы открыть сундук необходимо 6 слотов")
		UseItemFailed ( role )
		return
	end
	if lv < 15 then
		SystemNotice(role ,"Уровень меньше 15 невозможно открыть сундук!")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 2  , 1 , 95 ) 
		GiveItem ( role , 0 , 291  , 1 , 95 )
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3351  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
	elseif job == 2 then   
		GiveItem ( role , 0 , 26  , 1 , 95 ) 
		GiveItem ( role , 0 , 306  , 1 , 95 )
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3352  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3353  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 74  , 1 , 95 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 338  , 1 , 95 )
		else
			GiveItem ( role , 0 , 386  , 1 , 95 ) 
		end
	elseif job == 5 then
		GiveItem ( role , 0 , 4264  , 1 , 4 )
		GiveItem ( role , 0 , 3352  , 1 , 4 )
		GiveItem ( role , 0 , 446  , 1 , 4 ) 
		GiveItem ( role , 0 , 439  , 1 , 4 ) 
		GiveItem ( role , 0 , 98  , 1 , 95 ) 
		if cha_type == 3 then 
			GiveItem ( role , 0 , 366  , 1 , 95 ) 
		else 
			GiveItem ( role , 0 , 381  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"Вы не имеете профессию, получите профессию, а затем используйте предмет!")
		UseItemFailed ( role )	
	end
end
--20 уровень
function ItemUse_XRBOX3( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 5 then
		SystemNotice(role ,"Чтобы открыть сундук нужно 5 свободных слотов в инвентаре")
		UseItemFailed ( role )
		return
	end
	if lv < 20 then
		SystemNotice(role ,"Уровень меньше 20 невозможно открыть сундук!")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 14  , 1 , 95 ) 
		GiveItem ( role , 0 , 297  , 1 , 95 )
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
	elseif job == 2 then  
		GiveItem ( role , 0 , 33  , 1 , 95 ) 
		GiveItem ( role , 0 , 313  , 1 , 95 )
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
		GiveItem ( role , 0 , 81  , 1 , 95 ) 
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 337  , 1 , 95 )
		else
			GiveItem ( role , 0 , 352  , 1 , 95 ) 
		end
	elseif job == 5 then 
		GiveItem ( role , 0 , 3844  , 1 , 4 )
		GiveItem ( role , 0 , 447  , 1 , 4 ) 
		GiveItem ( role , 0 , 440  , 1 , 4 ) 
		GiveItem ( role , 0 , 105  , 1 , 95 )
		if cha_type == 3 then 
			GiveItem ( role , 0 , 373  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 360  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"Предмет может быть использован только после выбора основной профессии!")
		UseItemFailed ( role )	
	end
end
--25 уровень
function ItemUse_XRBOX4( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
   local cha_type = GetChaTypeID ( role )
   local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"Недостаточно места в интвентаре, нужно 4 слота")
		UseItemFailed ( role )
		return
	end
	if lv < 25 then
		SystemNotice(role ,"Уровень меньше 25, невозхможно использовать предмет!!")
		UseItemFailed ( role )	
	elseif job == 1 then   ----ЅЈКї
		local r1,r2 =MakeItem ( role , 3  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ИЎѕ«Б¶ОдЖчµАѕЯЦёХл
		GiveItem ( role , 0 , 293  , 1 , 95 )
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
	elseif job == 2 then  
		local r1,r2 =MakeItem ( role , 27  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ИЎѕ«Б¶ОдЖчµАѕЯЦёХл
		GiveItem ( role , 0 , 307  , 1 , 95 )
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
	elseif job == 4 then 
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
		local r1,r2 =MakeItem ( role , 75  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ИЎѕ«Б¶ОдЖчµАѕЯЦёХл
		if cha_type == 1 or cha_type == 3 then
			GiveItem ( role , 0 , 340  , 1 , 95 ) 
		else
			GiveItem ( role , 0 , 350  , 1 , 95 ) 
		end
	elseif job == 5 then 
		GiveItem ( role , 0 , 448  , 1 , 95 )
		GiveItem ( role , 0 , 441  , 1 , 4 ) 
		local r1,r2 =MakeItem ( role , 99  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )			--ИЎѕ«Б¶ОдЖчµАѕЯЦёХл
		if cha_type == 3 then
			GiveItem ( role , 0 , 368  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 389  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"Предмет может быть использован только после выбора основной профессии!")
		UseItemFailed ( role )	
	end
end
--30 уровень
function ItemUse_XRBOX5( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 4 then
		SystemNotice(role ,"Недостаточно места в интвентаре, нужно 4 слота")
		UseItemFailed ( role )
		return
	end
	if lv < 30 then
		SystemNotice(role ,"Уровень меньше 30, невозхможно использовать предмет!")
		UseItemFailed ( role )	
	elseif job == 1 then  
		GiveItem ( role , 0 , 12  , 1 , 95 ) 
		GiveItem ( role , 0 , 298  , 1 , 95 )
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 ) 
	elseif job == 2 then 
		GiveItem ( role , 0 , 34  , 1 , 95 ) 
		GiveItem ( role , 0 , 314  , 1 , 95 )
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 ) 
	elseif job == 4 then  
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 )
		GiveItem ( role , 0 , 82  , 1 , 95 )
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 339  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 354  , 1 , 95 ) 
		end
	elseif job == 5 then
		GiveItem ( role , 0 , 449  , 1 , 95 )
		GiveItem ( role , 0 , 442  , 1 , 4 ) 
		GiveItem ( role , 0 , 106  , 1 , 95 )
		if cha_type == 3 then
			GiveItem ( role , 0 , 374  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 361  , 1 , 95 )
		end
	else 
		SystemNotice(role ,"Предмет может быть использован только после выбора основной профессии!")
		UseItemFailed ( role )	
	end
end
--35 уровень
function ItemUse_XRBOX6( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 2 then
		SystemNotice(role ,"Невозможно открыть сундук, нужно 2 свободных слота в инвентаре")
		UseItemFailed ( role )
		return
	end
	if lv < 35 then
		SystemNotice(role ,"Уровень меньше 25, невозхможно использовать предмет!!")
		UseItemFailed ( role )	
	elseif job == 1 or job == 2 or job == 4 or job == 5 then
		GiveItem ( role , 0 , 443  , 1 , 4 ) 
		GiveItem ( role , 0 , 451  , 1 , 4 ) 
		AddMoney ( role , 0 , 200000 ) 
	else 
		SystemNotice(role ,"Предмет может быть использован только после выбора основной профессии!")
		UseItemFailed ( role )	
	end
end
--40 уровень
function ItemUse_XRBOX7( role, Item )
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
        local cha_type = GetChaTypeID ( role )
        local cha_type = GetChaTypeID ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 5 then
		SystemNotice(role ,"Невозможно открыть сундук, нужно 5 свободных слотов в инвентаре")
		UseItemFailed ( role )
		return
	end
	if lv < 40 then
		SystemNotice(role ,"Уровень меньше 40, невозхможно использовать предмет!")
		UseItemFailed ( role )	
	elseif job == 9 then 
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 295  , 1 , 95 )
		GiveItem ( role , 0 , 4  , 1 , 95 ) 
		GiveItem ( role , 0 , 302  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 22  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )
	elseif job == 8 then   
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 300  , 1 , 95 )
		GiveItem ( role , 0 , 15  , 1 , 95 ) 
		GiveItem ( role , 0 , 301  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 20  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )
	elseif job == 12 then 
		GiveItem ( role , 0 , 39  , 1 , 95 ) 
		GiveItem ( role , 0 , 310  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 44  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )
		GiveItem ( role , 0 , 315  , 1 , 95 )
		GiveItem ( role , 0 , 450  , 1 , 4 )
	elseif job == 16 then 
		GiveItem ( role , 0 , 450  , 1 , 95 )
		GiveItem ( role , 0 , 76  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 83  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )
		if cha_type == 1 or cha_type == 3 then 
			GiveItem ( role , 0 , 341  , 1 , 95 )
			GiveItem ( role , 0 , 342  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 353  , 1 , 95 )
			GiveItem ( role , 0 , 356  , 1 , 95 )
		end
	elseif job == 13 then    
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 100  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 1440  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )
		if cha_type == 3 then 
			GiveItem ( role , 0 , 370  , 1 , 95 )
			GiveItem ( role , 0 , 378  , 1 , 95 )
		else 
			GiveItem ( role , 0 , 392  , 1 , 95 ) 
			GiveItem ( role , 0 , 388  , 1 , 95 ) 
		end
	elseif job == 14 then    
		GiveItem ( role , 0 , 450  , 1 , 4 ) 
		GiveItem ( role , 0 , 101  , 1 , 95 )
		local r1,r2 =MakeItem ( role , 107  , 1 , 11 )
		local Item1 = GetChaItem ( role , 2 , r2 )
		if cha_type == 3 then 
			GiveItem ( role , 0 , 367  , 1 , 95 ) 
			GiveItem ( role , 0 , 375  , 1 , 95 ) 
		else  
			GiveItem ( role , 0 , 390  , 1 , 95 ) 
			GiveItem ( role , 0 , 362  , 1 , 95 ) 
		
		end
	else 
		SystemNotice(role ,"Предмет может быть использован только после выбора основной профессии!")
		UseItemFailed ( role )
	end
end

function ItemUse_XiongHJ ( role , Item ) 
	local statelv = 1
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	local ChaStateLv = GetChaStateLv ( role , STATE_PKSFYS )

	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKSFYS , statelv , statetime )
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end 

function ItemUse_AiCao ( role , Item )  
	local statelv = 1
	local statetime = 180
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_PKSBYS , statelv , statetime )
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end 

function ItemUse_FLeiBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local BNUM = B1+B2+B3+B4+B5+B6+B7+B8+B9+B10+B11+B12+B13+B14+B15
	if Item_CanGet < BNUM then
		SystemNotice(role ,"To open a Tempest Chest requires"..BNUM.."space ")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , A1 , B1 , 4 )
	GiveItem ( role , 0 , A2 , B2 , 4 )
	GiveItem ( role , 0 , A3 , B3 , 4 )
	GiveItem ( role , 0 , A4 , B4 , 4 )
	GiveItem ( role , 0 , A5 , B5 , 4 )
	GiveItem ( role , 0 , A6 , B6 , 4 )
	GiveItem ( role , 0 , A7 , B7 , 4 )
	GiveItem ( role , 0 , A8 , B8 , 4 )
	GiveItem ( role , 0 , A9 , B9 , 4 )
	GiveItem ( role , 0 , A10 , B10 , 4 )
	GiveItem ( role , 0 , A11 , B11 , 4 )
	GiveItem ( role , 0 , A12 , B12 , 4 )
	GiveItem ( role , 0 , A13 , B13 , 4 )
	GiveItem ( role , 0 , A14 , B14 , 4 )
	GiveItem ( role , 0 , A15 , B15 , 4 )
	GiveItem ( role , 0 , A16 , B16 , 4 )
	GiveItem ( role , 0 , A17 , B17 , 4 )
	GiveItem ( role , 0 , A18 , B18 , 4 )
	GiveItem ( role , 0 , A19 , B19 , 4 )
	GiveItem ( role , 0 , A20 , B20 , 4 )
	GiveItem ( role , 0 , A21 , B21 , 4 )
	GiveItem ( role , 0 , A22 , B22 , 4 )
	GiveItem ( role , 0 , A23 , B23 , 4 )
	GiveItem ( role , 0 , A24 , B24 , 4 )
end

function ItemUse_CJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"To open a Chest requires 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , C1  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			--ИЎРВѕ«БйµАѕЯЦёХл
	local Item_newJLID = GetItemID ( Item_newJL )			--ИЎРВѕ«БйµАѕЯЦёХл


	local str_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STR )       --Б¦Бї
	local con_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_CON )       --МеЦК
	local agi_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_AGI )       --ЧЁЧў
	local dex_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_DEX )       --ГфЅЭ
	local sta_JLone = GetItemAttr( Item_newJL ,ITEMATTR_VAL_STA )       --ѕ«Йс

	local Num_JL = GetItemForgeParam ( Item_newJL , 1 )
	Num_JL = TansferNum ( Num_JL )
	local Part1_JL = GetNum_Part1 ( Num_JL )	--Get Num Part 1 µЅ Part 7
	local Part2_JL = GetNum_Part2 ( Num_JL )	
	local Part3_JL = GetNum_Part3 ( Num_JL )
	local Part4_JL = GetNum_Part4 ( Num_JL )
	local Part5_JL = GetNum_Part5 ( Num_JL )
	local Part6_JL = GetNum_Part6 ( Num_JL )
	local Part7_JL = GetNum_Part7 ( Num_JL )
	if Item_newJLID==231 or Item_newJLID==232 or Item_newJLID==233 or Item_newJLID==234 or Item_newJLID==235  or Item_newJLID==236  or Item_newJLID==237  or Item_newJLID==681 then
		Part1_JL=1
		Num_JL = SetNum_Part1 ( Num_JL , 1 ) ----¶юЧЄ±кјЗ
		SetItemForgeParam ( Item_newJL , 1 , Num_JL )
	end
	str_JLone	= N1
	con_JLone = N2
	agi_JLone	= N3
	dex_JLone = N4
	sta_JLone	= N5
	local new_lv=N1+N2+N3+N4+N5
	local new_MAXENERGY = 240 * ( new_lv + 1 )
	if new_MAXENERGY > 6480 then
		new_MAXENERGY = 6480
	end
	local new_MAXURE = 5000 + 1000*new_lv
	if new_MAXURE > 32000 then
		new_MAXURE = 32000
	end
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STR , str_JLone )
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_CON , con_JLone )
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_AGI , agi_JLone )
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_DEX , dex_JLone)
	SetItemAttr ( Item_newJL ,ITEMATTR_VAL_STA , sta_JLone)
	SetItemAttr ( Item_newJL , ITEMATTR_MAXENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_MAXURE , new_MAXURE )
	SetItemAttr ( Item_newJL , ITEMATTR_ENERGY , new_MAXENERGY ) 	
	SetItemAttr ( Item_newJL , ITEMATTR_URE , new_MAXURE )
	local cha_name = GetChaDefaultName ( role )
	--LG( "star_JLZS_lg" ,cha_name,Item_JLone_ID , lv_JLone , str_JLone , con_JLone , agi_JLone , dex_JLone , sta_JLone , Item_JLother_ID , lv_JLother  , str_JLother , con_JLother , agi_JLother , dex_JLother , sta_JLother )
	LG( "star_CJBOX" ,cha_name, C1 , N1 , N2 ,  N3 , N4 , N5 )

end

function ItemUse_YZheBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 8 then
		SystemNotice(role ,"To open a Champion's Chest requires 8 empty slots")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 453 , 1 , 4 )
	GiveItem ( role , 0 , 454 , 1 , 4 )
	GiveItem ( role , 0 , 455 , 1 , 4 )
	GiveItem ( role , 0 , 456 , 1 , 4 )
	local rad = math.random ( 1, 8 )
	if rad == 1 then
	GiveItem ( role , 0 , 5013  , 1 , 4 ) 
	GiveItem ( role , 0 , 5021  , 1 , 4 ) 
	GiveItem ( role , 0 , 5029  , 1 , 4 ) 
	elseif rad == 2 then
	GiveItem ( role , 0 , 5014  , 1 , 4 ) 
	GiveItem ( role , 0 , 5022  , 1 , 4 ) 
	GiveItem ( role , 0 , 5030  , 1 , 4 ) 
	elseif rad == 3 then
	GiveItem ( role , 0 , 5015  , 1 , 4 ) 
	GiveItem ( role , 0 , 5023  , 1 , 4 ) 
	GiveItem ( role , 0 , 5031  , 1 , 4 ) 
	elseif rad == 4 then
	GiveItem ( role , 0 , 5016  , 1 , 4 ) 
	GiveItem ( role , 0 , 5024  , 1 , 4 ) 
	GiveItem ( role , 0 , 5032  , 1 , 4 ) 
	GiveItem ( role , 0 , 5037  , 1 , 4 ) 
	elseif rad == 5 then
	GiveItem ( role , 0 , 5017  , 1 , 4 ) 
	GiveItem ( role , 0 , 5025  , 1 , 4 ) 
	GiveItem ( role , 0 , 5033  , 1 , 4 )
	elseif rad == 6 then
	GiveItem ( role , 0 , 5018  , 1 , 4 ) 
	GiveItem ( role , 0 , 5026  , 1 , 4 ) 
	GiveItem ( role , 0 , 5034  , 1 , 4 )
	elseif rad == 7 then
	GiveItem ( role , 0 , 5019  , 1 , 4 ) 
	GiveItem ( role , 0 , 5027  , 1 , 4 ) 
	GiveItem ( role , 0 , 5035  , 1 , 4 )
	elseif rad == 8 then
	GiveItem ( role , 0 , 5020  , 1 , 4 ) 
	GiveItem ( role , 0 , 5028  , 1 , 4 ) 
	GiveItem ( role , 0 , 5036  , 1 , 4 )
	GiveItem ( role , 0 , 5038  , 1 , 4 )
	end
end

function ItemUse_CiChang( role, Item )
	local Elf_URE = GetItemAttr(Item,ITEMATTR_URE)
	local Elf_EXP = GetItemAttr(Item,ITEMATTR_ENERGY) 
	if Elf_URE ~= 0 then
		SystemNotice(role ,"Seal has not been broken")
		UseItemFailed ( role )
		return
	end
	if Elf_EXP >9 then
		SystemNotice(role ,"Cursed points higher than 9. Unable to open chest")
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory space. Unable to use item")
		UseItemFailed ( role )
		return
	end
	local sta = GetItemAttr( Item ,ITEMATTR_VAL_STA )    
	if sta == 0 then
		SystemNotice(role ,"Not yet put in target item, use item failed.")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	if sta == 1 then 
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 845  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 845  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 845  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 845  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 845  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 845  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 845  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 845  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 845  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 845  , 1 , 12  )  		
		end
	end
	if sta == 2 then 
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 847  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 847  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 847  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 847  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 847  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 847  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 847  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 847  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 847  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 847  , 1 , 2  )  		
		end
	end
	if sta == 3 then 
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 846  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 846  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 846  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 846  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 846  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 846  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 846  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 846  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 846  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 846  , 1 , 2  )  		
		end
	end
	if sta == 4 then
		if Elf_EXP == 0 then
		GiveItem ( role , 0 , 848  , 1 , 20  )  		
		end
		if Elf_EXP == 1 then
		GiveItem ( role , 0 , 848  , 1 , 19  )  		
		end
		if Elf_EXP == 2 then
		GiveItem ( role , 0 , 848  , 1 , 18  )  		
		end
		if Elf_EXP == 3 then
		GiveItem ( role , 0 , 848  , 1 , 17  )  		
		end
		if Elf_EXP == 4 then
		GiveItem ( role , 0 , 848  , 1 , 16  )  		
		end
		if Elf_EXP == 5 then
		GiveItem ( role , 0 , 848  , 1 , 15  )  		
		end
		if Elf_EXP == 6 then
		GiveItem ( role , 0 , 848  , 1 , 14  )  		
		end
		if Elf_EXP == 7 then
		GiveItem ( role , 0 , 848  , 1 , 13  )  		
		end
		if Elf_EXP == 8 then
		GiveItem ( role , 0 , 848  , 1 , 12  )  		
		end
		if Elf_EXP == 9 then
		GiveItem ( role , 0 , 848  , 1 , 2  )  		
		end
	end
	if Elf_EXP ~=0 then
		SystemNotice(role ,"Remaining Cursed points has damage the quality of Black Dragon equipment")
	end
end

function ItemUse_hexin ( role , Item , Item_Traget ) 
	local Item_Traget_ID = GetItemID ( Item_Traget )
	local Item_ID = GetItemID ( Item )		
	local sta = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA ) 
	if Item_Traget_ID ~= 266 then
		SystemNotice(role ,"Please place the sacrificial item on the altar")
		UseItemFailed ( role )
		return
	end
	if sta==1 and Item_ID == 866 then
		SystemNotice(role ,"You have used a Heart of Black Dragon as a sacrificial item")
		UseItemFailed ( role )
		return	
	end
	if sta==2 and Item_ID == 865 then
		SystemNotice(role ,"You have used Soul of Black Dragon as a sacrificial item")
		UseItemFailed ( role )
		return	
	end
	if sta==3 and Item_ID == 864 then
		SystemNotice(role ,"You have used Eye of Black Dragon as a sacrificial item")
		UseItemFailed ( role )
		return	
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		local cha_name = GetChaDefaultName ( role ) 
		if Item_type == 49 and Item_Traget_Type == 65 then
				if Item_ID == 866 then		
				sta =1
				elseif Item_ID == 865 then						
				sta =2
				elseif Item_ID == 864 then					
				sta =3
				elseif Item_ID == 275 then					
				sta =4
				else 
						UseItemFailed ( role )
						return
				end
				SetItemAttr( Item_Traget ,ITEMATTR_VAL_STA ,sta )
		end 
end
--Мощи ветра ...
function ItemUse_HZLi ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"Please place the Power of Flame on the altar")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65  then
				local str = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )  
				if str >= 5 then
					UseItemFailed ( role )
				return
				end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) 
					str = str + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_STR ,str )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY)
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "Unfortunately, the Altar has been cursed by the soul of the black dragon" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end

function ItemUse_BZLi ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"Place Power of Frost on the altar")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local con = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )     
				if con >= 5 then
					UseItemFailed ( role )
				return
				end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) 
					con = con + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_CON ,con )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) 
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "Unfortunately, the Altar has been cursed by the soul of the black dragon" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end

function ItemUse_FZLi( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"Please place the Power of Wind on the altar")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local agi = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )      
					if agi >= 5 then
					UseItemFailed ( role )
					return
					end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE)
					agi = agi + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI ,agi )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) 
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "Unfortunately, the Altar has been cursed by the soul of the black dragon" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end

function ItemUse_LZli ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"Please place Power of Thunder on the altar")
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Невозможно использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
		local Item_type = GetItemType ( Item )
		local Item_Traget_Type = GetItemType ( Item_Traget )
		if Item_type == 66 and Item_Traget_Type == 65 then
				local dex = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )      
					if dex >= 5 then
					UseItemFailed ( role )
					return
					end
				local rad = math.random ( 1, 100 )
				 if rad<=50 then
					local Elf_URE = GetItemAttr(Item_Traget,ITEMATTR_URE) 
					dex = dex + 1
					if Elf_URE >= 50 then
					Elf_URE = Elf_URE-50
					end
					SetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX ,dex )
					SetItemAttr( Item_Traget ,ITEMATTR_URE ,Elf_URE )
				else 
				local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
				local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY)
					Elf_MaxEXP = Elf_MaxEXP + 1
					Elf_EXP = Elf_EXP + 1
					SystemNotice( role , "Unfortunately, the Altar has been cursed by the soul of the black dragon" ) 
					SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_MaxEXP )
					SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
				end 
		end 
end

function ItemUse_ZhuFu ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 266 then
		SystemNotice(role ,"Please confirm to use Angelic Dice")
		UseItemFailed ( role )
		return
	end
	local Elf_EXP = GetItemAttr(Item_Traget,ITEMATTR_ENERGY) 
	local Elf_MaxEXP = GetItemAttr(Item_Traget,ITEMATTR_MAXENERGY) 
	if Elf_EXP ==0 then
		UseItemFailed ( role )
		
		return
	end
	local rad = math.random ( 1, 100 )
	if Elf_EXP <= 5 and Elf_EXP >= 1 then
		if rad <= 30 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"Ангельские кости плохие, неудалость снять проклятье.")
		end
	end
	if Elf_EXP <= 10 and Elf_EXP >= 6 then
		if rad <= 50 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"Ангельские кости плохие, неудалость снять проклятье.")
		end
	end
	if Elf_EXP <= 15 and Elf_EXP >= 11 then
		if rad <= 80 then
			Elf_EXP = Elf_EXP -1
		else
			SystemNotice(role ,"Ангельские кости плохие, неудалость снять проклятье.")
		end
	end
	if Elf_EXP >= 16  then
		Elf_EXP = Elf_EXP -1
	end
	SetItemAttr( Item_Traget ,ITEMATTR_ENERGY ,Elf_EXP )
	SetItemAttr( Item_Traget ,ITEMATTR_MAXENERGY ,Elf_EXP )
end

--ID1094	Посылка с удачным подарком
function ItemUse_YiYuanHaoYunBOX ( role , Item )
	local Percentage = Percentage_Random ( 0.1 )
			if Percentage == 1 then
				 AddMoney ( role , 0 , 50000 )
			else	
				local item_type = BoxXiang_YiYuanBOX
				local item_type_rad = BoxXiang_YiYuanBOX_Rad 
				local item_type_count = BoxXiang_YiYuanBOX_Count 
				local maxitem = BoxXiang_YiYuanBOX_Mxcount
				local item_quality = BoxXiang_YiYuanBOX_Qua
				local General = 0  
				local ItemId = 0 
				for i = 1 , maxitem , 1 do 
					General = item_type_rad [ i ] + General
				end 
				local a = math.random ( 1, General )
				local b = 0
				local d = 0 
				local c = -1
				for k = 1 , maxitem , 1 do
					d = item_type_rad [ k ] + b
					 if a <= d and a > b then
						c = k
						break		
					end 
					b = d 
				end 
				if c == -1 then 
					ItemId = 3124 
				else 
					ItemId = item_type [c]  
					ItemCount = item_type_count [c] 
				end 
				GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
				local GoodItem = {}
				GoodItem[0] = 3336
				GoodItem[1] = 3885
				GoodItem[2] = 430
				GoodItem[3] = 3886
				GoodItem[4] = 3113
				GoodItem[5] = 3111
				GoodItem[6] = 3093
				GoodItem[7] = 3090
				GoodItem[8] =0860
				GoodItem[9] =0861
				GoodItem[10] =0862
				GoodItem[11] =0863
				GoodItem[12] =179
				GoodItem[13] =3084
				GoodItem[14] =3085
				local Good_C = 0
				for Good_C = 0 , 14 , 1 do
					if ItemId == GoodItem[Good_C] then
			
						local cha_name = GetChaDefaultName ( role ) 
						local message = cha_name.." opens a Lucky Packet and obtain"..itemname  
						Notice ( message )
					end
				end
			end 
	end
--Гран при
function ItemUse_tedengjiang ( role , Item )
local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"Недостаточно места в инвентаре")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 845  , 1 , 16  )  
	GiveItem ( role , 0 , 846  , 1 , 16  )  
	GiveItem ( role , 0 , 847  , 1 , 16  ) 
	local cha_name = GetChaDefaultName ( role ) 
end
--Второе место
function ItemUse_yidengjiang ( role , Item )
local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"Недостаточно места в инвентаре")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0853  , 1 , 4 ) 
	local cha_name = GetChaDefaultName ( role ) 
end
--Третье место
function ItemUse_erdengjiang ( role , Item )
local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 14 then
		SystemNotice(role ,"Недостаточно места в инвентаре")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0456  , 10 , 4  ) 
	local rad = math.random ( 1, 8 )
	if rad == 1 then
	GiveItem ( role , 0 , 5013  , 1 , 4 ) 
	GiveItem ( role , 0 , 5021  , 1 , 4 ) 
	GiveItem ( role , 0 , 5029  , 1 , 4 ) 
	elseif rad == 2 then
	GiveItem ( role , 0 , 5014  , 1 , 4 ) 
	GiveItem ( role , 0 , 5022  , 1 , 4 ) 
	GiveItem ( role , 0 , 5030  , 1 , 4 ) 
	elseif rad == 3 then
	GiveItem ( role , 0 , 5015  , 1 , 4 ) 
	GiveItem ( role , 0 , 5023  , 1 , 4 ) 
	GiveItem ( role , 0 , 5031  , 1 , 4 ) 
	elseif rad == 4 then
	GiveItem ( role , 0 , 5020  , 1 , 4 ) 
	GiveItem ( role , 0 , 5024  , 1 , 4 ) 
	GiveItem ( role , 0 , 5032  , 1 , 4 ) 
	GiveItem ( role , 0 , 5037  , 1 , 4 ) 
	elseif rad == 5 then
	GiveItem ( role , 0 , 5017  , 1 , 4 ) 
	GiveItem ( role , 0 , 5025  , 1 , 4 ) 
	GiveItem ( role , 0 , 5033  , 1 , 4 )
	elseif rad == 6 then
	GiveItem ( role , 0 , 5018  , 1 , 4 ) 
	GiveItem ( role , 0 , 5026  , 1 , 4 ) 
	GiveItem ( role , 0 , 5034  , 1 , 4 )
	elseif rad == 7 then
	GiveItem ( role , 0 , 5019  , 1 , 4 ) 
	GiveItem ( role , 0 , 5027  , 1 , 4 ) 
	GiveItem ( role , 0 , 5035  , 1 , 4 )
	elseif rad == 8 then
	GiveItem ( role , 0 , 5016  , 1 , 4 ) 
	GiveItem ( role , 0 , 5028  , 1 , 4 ) 
	GiveItem ( role , 0 , 5036  , 1 , 4 )
	GiveItem ( role , 0 , 5038  , 1 , 4 )
	end
	local cha_name = GetChaDefaultName ( role ) 
end

function ItemUse_sandengjiang ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"Недостаточно места в инвентаре")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 2 )
	if rad == 1 then
		GiveItem ( role , 0 , 3094  , 1 , 4 ) 
		GiveItem ( role , 0 , 3096  , 1 , 4 )
	else
		GiveItem ( role , 0 , 1094  , 1 , 4 ) 
	end
end

--ID1095	Посылка 99
function ItemUse_BaoZhaBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do
		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	local GoodItem = {}
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then

			local cha_name = GetChaDefaultName ( role ) 
		end
	end
end
--Расписки на аксессуары
function ItemUse_wxlh( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"To open a Chest requires 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , SI  , SN , SE )
	local Item_star = GetChaItem ( role , 2 , r2 )
	local num={}
	local numAttr={}
	local b = 0
	local a = {}
	for b=1,5,1 do
		num [b]=0
		numAttr [b]=0
	end
	b = 0
	for i=1,47,1 do		
		a [i]=GetItemAttr ( Item_star , i )
		if a [i]~=0 then
				b = b + 1
				num [b]=i    
				numAttr [b]=a[i] 
		end
	end
	SetItemAttr ( Item_star ,num [1] , SA1 )
	SetItemAttr ( Item_star ,num [2] , SA2 )
	SetItemAttr ( Item_star ,num [3] , SA3 )
	SetItemAttr ( Item_star ,num [4] , SA4)
	SetItemAttr ( Item_star ,num [5] , SA5)
end

function ItemUse_Sjz( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"Inventory requires at least 5 empty slots to use Unique Ring Voucher")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 5 )
	if rad ==1 then

	GiveItem ( role , 0 , 281  , 1 , 4 )	
	GiveItem ( role , 0 , 286  , 1 , 4 )	
	GiveItem ( role , 0 , 324  , 1 , 4 )	
	GiveItem ( role , 0 , 334  , 1 , 4 )	
	GiveItem ( role , 0 , 387  , 1 , 4 )	
	end
	if rad ==2 then
	GiveItem ( role , 0 , 282  , 1 , 4 )	
	GiveItem ( role , 0 , 287  , 1 , 4 )	
	GiveItem ( role , 0 , 327  , 1 , 4 )	
	GiveItem ( role , 0 , 346  , 1 , 4 )	
	GiveItem ( role , 0 , 414  , 1 , 4 )		
	end
	if rad ==3 then
	GiveItem ( role , 0 , 283  , 1 , 4 )	
	GiveItem ( role , 0 , 288  , 1 , 4 )	
	GiveItem ( role , 0 , 328  , 1 , 4 )	
	GiveItem ( role , 0 , 347  , 1 , 4 )	
	GiveItem ( role , 0 , 415  , 1 , 4 )	
	end
	if rad ==4 then
	GiveItem ( role , 0 , 284  , 1 , 4 )	
	GiveItem ( role , 0 , 524  , 1 , 4 )	
	GiveItem ( role , 0 , 329  , 1 , 4 )	
	GiveItem ( role , 0 , 348  , 1 , 4 )	
	GiveItem ( role , 0 , 416  , 1 , 4 )		
	end
	if rad ==5 then
	GiveItem ( role , 0 , 285  , 1 , 4 )	
	GiveItem ( role , 0 , 321  , 1 , 4 )	
	GiveItem ( role , 0 , 330  , 1 , 4 )	
	GiveItem ( role , 0 , 349  , 1 , 4 )	
	GiveItem ( role , 0 , 417  , 1 , 4 )			
	end
end

function ItemUse_Sxl( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"Inventory requires at least 5 empty slots to use Unique Necklace Voucher")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 2 )
	if rad ==1 then
	GiveItem ( role , 0 , 418  , 1 , 4 )	
	GiveItem ( role , 0 , 420  , 1 , 4 )	
	GiveItem ( role , 0 , 739  , 1 , 4 )	
	GiveItem ( role , 0 , 462  , 1 , 4 )	
	GiveItem ( role , 0 , 495  , 1 , 4 )		
	end
	if rad ==2 then
	GiveItem ( role , 0 , 419  , 1 , 4 )	
	GiveItem ( role , 0 , 421  , 1 , 4 )	
	GiveItem ( role , 0 , 461  , 1 , 4 )	
	GiveItem ( role , 0 , 463  , 1 , 4 )	
	GiveItem ( role , 0 , 497  , 1 , 4 )		
	end
end

function ItemUse_Sbk( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"Inventory requires at least 5 empty slots to use Unique Coral Voucher")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 2 )
	if rad ==1 then
	GiveItem ( role , 0 , 498  , 1 , 4 )	
	GiveItem ( role , 0 , 503  , 1 , 4 )	
	GiveItem ( role , 0 , 504  , 1 , 4 )	
	GiveItem ( role , 0 , 505  , 1 , 4 )	
	GiveItem ( role , 0 , 506  , 1 , 4 )		
	end
	if rad ==2 then
	GiveItem ( role , 0 , 508  , 1 , 4 )	
	GiveItem ( role , 0 , 509  , 1 , 4 )	
	GiveItem ( role , 0 , 510  , 1 , 4 )	
	GiveItem ( role , 0 , 522  , 1 , 4 )	
	GiveItem ( role , 0 , 523  , 1 , 4 )		
	end
end
--Юбилейный сундук
function ItemUse_ZhouSuiBOX ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 2 then
		SystemNotice(role ,"Insufficient space in inventory. Unable to open Birthday Package")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1097 , 1 , 0 )
	local item_type = BoxXiang_ZhousSuiBOX
	local item_type_rad = BoxXiang_ZhousSuiBOX_Rad 
	local item_type_count = BoxXiang_ZhousSuiBOX_Count 
	local maxitem = BoxXiang_ZhouSui_Mxcount
	local item_quality = BoxXiang_ZhouSui_Qua
	local General = 0  
	local ItemId = 0 
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	if ItemId ==  0853 then
	local cha_name = GetChaDefaultName ( role ) 
	end
end

function ItemUse_CZHe( role , Item ) 
 	local Money_add = 1000000
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Have>=999900000 then
		SystemNotice (role, "Your account is saturated. Unable to use item")
		UseItemFailed ( role )
		return	
	end
	AddMoney ( role , 0 , Money_add )
end 


function ItemUse_70FYZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Seal Master Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4204  , 1 , 22) 
end

function ItemUse_70JJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Champion Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1375 , 1 , 22) 
end

function ItemUse_70SJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Crusader Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1394 , 1 , 22) 
end

function ItemUse_70JUJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Sharpshooter Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 42 , 1 , 22) 
end

function ItemUse_70HHZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Voyager Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1421 , 1 , 22) 
end

function ItemUse_70SZZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Cleric Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4198 , 1 , 22) 
end

function ItemUse_50SJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Crusader Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0299 , 1 , 22) 
	GiveItem ( role , 0 , 0475 , 1 , 22) 
	GiveItem ( role , 0 , 0651 , 1 , 22) 
end

function ItemUse_60SJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Crusader Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0304 , 1 , 22) 
	GiveItem ( role , 0 , 0480 , 1 , 22) 
	GiveItem ( role , 0 , 0656 , 1 , 22) 
end

function ItemUse_70SJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Crusader Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4150 , 1 , 22) 
	GiveItem ( role , 0 , 4166 , 1 , 22) 
	GiveItem ( role , 0 , 4182 , 1 , 22) 
end

function ItemUse_50JJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Champion Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0229 , 1 , 22) 
	GiveItem ( role , 0 , 653 , 1 , 22)  
end

function ItemUse_60JJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Champion Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0230 , 1 , 22) 
	GiveItem ( role , 0 , 477 , 1 , 22)  
end

function ItemUse_70JJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Champion Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4148 , 1 , 22) 
	GiveItem ( role , 0 , 653 , 1 , 22)  
	GiveItem ( role , 0 , 477 , 1 , 22)
end

function ItemUse_50SZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0371 , 1 , 22) 
	GiveItem ( role , 0 , 0547 , 1 , 22)  
	GiveItem ( role , 0 , 0723 , 1 , 22) 
end

function ItemUse_60SZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0394 , 1 , 22) 
	GiveItem ( role , 0 , 0570 , 1 , 22)  
	GiveItem ( role , 0 , 0746 , 1 , 22) 
end

function ItemUse_70SZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4159 , 1 , 22) 
	GiveItem ( role , 0 , 4175 , 1 , 22)  
	GiveItem ( role , 0 , 4191 , 1 , 22) 
end

function ItemUse_50AMSZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Ami Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0382 , 1 , 22) 
	GiveItem ( role , 0 , 0558 , 1 , 22)  
	GiveItem ( role , 0 , 0734 , 1 , 22) 
	GiveItem ( role , 0 , 2204 , 1 , 22) 
end

function ItemUse_60AMSZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60Ami Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0393 , 1 , 22) 
	GiveItem ( role , 0 , 0569 , 1 , 22)  
	GiveItem ( role , 0 , 0745 , 1 , 22) 
	GiveItem ( role , 0 , 2215 , 1 , 22) 
end

function ItemUse_70AMSZBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Ami Cleric Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4160 , 1 , 22) 
	GiveItem ( role , 0 , 4176 , 1 , 22)  
	GiveItem ( role , 0 , 4192 , 1 , 22)  
end

function ItemUse_50AMFYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Ami Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0385 , 1 , 22) 
	GiveItem ( role , 0 , 0561 , 1 , 22)  
	GiveItem ( role , 0 , 0737 , 1 , 22) 
	GiveItem ( role , 0 , 2207 , 1 , 22) 
end

function ItemUse_60AMFYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Ami Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0364 , 1 , 22) 
	GiveItem ( role , 0 , 0540 , 1 , 22)  
	GiveItem ( role , 0 , 0716 , 1 , 22) 
	GiveItem ( role , 0 , 2201 , 1 , 22) 
end

function ItemUse_70AMFYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Ami Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4164 , 1 , 22) 
	GiveItem ( role , 0 , 4180 , 1 , 22)  
	GiveItem ( role , 0 , 4196 , 1 , 22) 
end

function ItemUse_50AMHHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Ami Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0355 , 1 , 22) 
	GiveItem ( role , 0 , 0531 , 1 , 22)  
	GiveItem ( role , 0 , 0707 , 1 , 22) 
	GiveItem ( role , 0 , 2192 , 1 , 22) 
end

function ItemUse_60AMHHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Ami Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0358 , 1 , 22) 
	GiveItem ( role , 0 , 0534 , 1 , 22)  
	GiveItem ( role , 0 , 0710 , 1 , 22) 
	GiveItem ( role , 0 , 2195 , 1 , 22) 
end

function ItemUse_70AMHHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Ami Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4156 , 1 , 22) 
	GiveItem ( role , 0 , 4172 , 1 , 22)  
	GiveItem ( role , 0 , 4188 , 1 , 22)  
end

function ItemUse_50JUJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Sharpshooter Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0312 , 1 , 22) 
	GiveItem ( role , 0 , 0488 , 1 , 22)  
	GiveItem ( role , 0 , 0664 , 1 , 22) 
end

function ItemUse_60JUJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Sharpshooter Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0317 , 1 , 22) 
	GiveItem ( role , 0 , 0493 , 1 , 22)  
	GiveItem ( role , 0 , 0669 , 1 , 22) 
end

function ItemUse_70JUJBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Sharpshooter Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4152 , 1 , 22) 
	GiveItem ( role , 0 , 4168 , 1 , 22)  
	GiveItem ( role , 0 , 4184 , 1 , 22) 
end

function ItemUse_50HHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0345 , 1 , 22) 
	GiveItem ( role , 0 , 0521 , 1 , 22)  
	GiveItem ( role , 0 , 0697 , 1 , 22) 
end

function ItemUse_60HHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0344 , 1 , 22) 
	GiveItem ( role , 0 , 0520 , 1 , 22)  
	GiveItem ( role , 0 , 0696 , 1 , 22) 
end

function ItemUse_70HHBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Voyager Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4155 , 1 , 22) 
	GiveItem ( role , 0 , 4171 , 1 , 22)  
	GiveItem ( role , 0 , 4187 , 1 , 22) 
end

function ItemUse_50FYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0369 , 1 , 22) 
	GiveItem ( role , 0 , 0545 , 1 , 22)  
	GiveItem ( role , 0 , 0721 , 1 , 22) 
end

function ItemUse_60FYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0377 , 1 , 22) 
	GiveItem ( role , 0 , 0553 , 1 , 22)  
	GiveItem ( role , 0 , 0729 , 1 , 22) 
end

function ItemUse_70FYBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 2 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 70 Seal Master Chest")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4163 , 1 , 22) 
	GiveItem ( role , 0 , 4179 , 1 , 22)  
	GiveItem ( role , 0 , 4195 , 1 , 22) 
end

function ItemUse_98BOX ( role , Item )
			local item_type = BaoXiang_98BOX
			local item_type_rad = BaoXiang_98BOX_Rad 
			local item_type_count = BaoXiang_98BOX_Count 
			local maxitem = BaoXiang_98BOX_Mxcount
			local item_quality = BaoXiang_98BOX_Qua
			local General = 0  
			local ItemId = 0 
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		if Item_CanGet <= 0 then
			SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
			UseItemFailed ( role )
			return
		end
				for i = 1 , maxitem , 1 do 
					General = item_type_rad [ i ] + General
				end 
				local a = math.random ( 1, General )
				local b = 0
				local d = 0 
				local c = -1
				for k = 1 , maxitem , 1 do
					d = item_type_rad [ k ] + b
					 if a <= d and a > b then
						c = k
						break
					end 
					b = d 
				end 
				if c == -1 then 
					ItemId = 3124 
				else 
					ItemId = item_type [c]  
					ItemCount = item_type_count [c] 
				end 
				GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
				local GoodItem = {}
				GoodItem[0] = 3074
				GoodItem[1] = 0937
				GoodItem[2] = 3885
				GoodItem[3] = 0680
				GoodItem[4] = 0938
				GoodItem[5] = 2488
				GoodItem[6] = 2489
				GoodItem[7] = 2490
				GoodItem[8] =2436
				GoodItem[9] =3075

				local Good_C = 0
				for Good_C = 0 , 9 , 1 do
					if ItemId == GoodItem[Good_C] then
			
						local cha_name = GetChaDefaultName ( role ) 
						local message = cha_name.." opens a Paradise Pouch and obtain "..itemname  
						Notice ( message )
					end
				end
	end

function ItemUse_50SJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Crusader Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1392 , 1 , 22) 
end

function ItemUse_50JJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Champion Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1373 , 1 , 22) 
end

function ItemUse_50JUJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Sharpshooter Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0040 , 1 , 22) 
end

function ItemUse_50HHZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Voyager Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1419 , 1 , 22) 
end

function ItemUse_50SZZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Cleric Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0103 , 1 , 22) 
end

function ItemUse_50FYZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 50 Seal Master Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0102 , 1 , 22) 
end

function ItemUse_60SJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Crusader Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1393 , 1 , 22) 
end

function ItemUse_60JJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Champion Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1374 , 1 , 22) 
end

function ItemUse_60JUJZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Sharpshooter Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 0041 , 1 , 22) 
end

function ItemUse_60HHZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Voyager Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1420 , 1 , 22) 
end

function ItemUse_60SZZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Cleric Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4303 , 1 , 22) 
end

function ItemUse_60FYZWBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient slot in inventory. Failed to use Lv 60 Seal Master Chest of Magenta")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4300 , 1 , 22) 
end

function ItemUse_CZZX( role , Item )
	local statelv = 1
	local statetime = 30
	local Item_ID=GetItemID(Item)
	AddState( role , role , STATE_CZZX , statelv , statetime )
	if Item_ID~=1013 then
		GiveItem ( role , 0 , 1010 , 1 , 4)
	end
end
--Салют
function ItemUse_HHLP( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local star = 0
	if CheckDateNum >= 10122  and CheckDateNum <= 10123 then
		ItemUse_XNBOX ( role , Item )
	end
end

--Загадочное яйцо феи
function ItemUse_JNJLD( role , Item )
	local star=math.random ( 1, 10 )
	local r1 = 0
	local r2 = 0
	if star==1 then
		r1,r2=MakeItem( role , 183 , 1 , 4)
	elseif  star==2 then
		r1,r2=MakeItem( role , 184 , 1 , 4)
	elseif  star==3 then
		r1,r2=MakeItem( role , 185 , 1 , 4)
	elseif  star==4 then
		r1,r2=MakeItem( role , 186 , 1 , 4)
	elseif  star==5 then
		r1,r2=MakeItem( role , 187 , 1 , 4)
	elseif  star==6 then
		r1,r2=MakeItem( role , 188 , 1 , 4)
	elseif  star==7 then
		r1,r2=MakeItem( role , 189 , 1 , 4)
	elseif  star==8 then
		r1,r2=MakeItem( role , 190 , 1 , 4)
	elseif  star==9 then
		r1,r2=MakeItem( role , 191 , 1 , 4)
	else  
		r1,r2=MakeItem( role , 199 , 1 , 4)
	end
	local Item_newJL = GetChaItem ( role , 2 , r2 )			
	local Num_newJL = GetItemForgeParam ( Item_newJL , 1 )
	local Part1_newJL = GetNum_Part1 ( Num_newJL )	
	local Part2_newJL = GetNum_Part2 ( Num_newJL )	
	local Part3_newJL = GetNum_Part3 ( Num_newJL )
	local Part4_newJL = GetNum_Part4 ( Num_newJL )
	local Part5_newJL = GetNum_Part5 ( Num_newJL )
	local Part6_newJL = GetNum_Part6 ( Num_newJL )
	local Part7_newJL= GetNum_Part7 ( Num_newJL )
	local t={}
		t[0]=1
		t[1]=2
		t[2]=3
		t[3]=4
		t[4]=5
	local eleven=math.random ( 1,3 )
	Part2_newJL=t[eleven-1]
	Part4_newJL=t[eleven]
	Part6_newJL=t[eleven+1]
	Num_newJL = SetNum_Part2 ( Num_newJL , Part2_newJL )
	Num_newJL = SetNum_Part3 ( Num_newJL , 1 )
	Num_newJL = SetNum_Part4 ( Num_newJL , Part4_newJL )
	Num_newJL = SetNum_Part5 ( Num_newJL , 1 )
	Num_newJL = SetNum_Part6 ( Num_newJL , Part6_newJL )
	Num_newJL = SetNum_Part7 ( Num_newJL , 1 )
	SetItemForgeParam ( Item_newJL , 1 , Num_newJL )
end

function ItemUse_JaNaBox ( role , Item ) 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1012 , 1 , 4)
	local itemname = GetItemName (1012) 
	local cha_name = GetChaDefaultName ( role ) 
end

--ЧЕРНЫЙ РЫНОК
function gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local cha_name = GetChaDefaultName ( role ) 
	local General = 0  
	local ItemId = 0 
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do

		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	if ItemId==0845 or ItemId==0846 or ItemId==0847 or ItemId==0848 then
		local check_rad = math.random ( 1, 100 )
		local heilong_rad = math.random ( 1, 1000 )
		if check_rad==99 and heilong_rad>=999 then
			item_quality=16
		elseif  check_rad==99 and  heilong_rad>=900 then 
			item_quality=15
		elseif  check_rad==99 and  heilong_rad>=500 then 
			item_quality=14
		elseif  check_rad==99 and  heilong_rad>=200 then 
			item_quality=13
		elseif  check_rad==99 then  
			item_quality=12
		else 
			ItemId=0266
		end
	end	
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	local GoodItem = {}
	GoodItem[0] = 0845
	GoodItem[1] = 0846
	GoodItem[2] = 0847
	GoodItem[3] = 0848
	GoodItem[4] = 0266
	local Good_C = 0
	for Good_C = 0 , 4 , 1 do
		if ItemId == GoodItem[Good_C] then

			local message = cha_name.." opens a Black Market Equipment and obtain "..itemname  
			Notice ( message )
		end
	end

	return 1
end

function ItemUse_jsyla( role , Item )
	local item_quality =BaoXiang_jsyla_Qua
	local maxitem = BaoXiang_jsyla_Mxcount
	local item_type = BaoXiang_jsyla
	local item_type_rad =BaoXiang_jsyla_Rad
	local item_type_count =BaoXiang_jsyla_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsylb( role , Item )
	local item_quality =BaoXiang_jsylb_Qua
	local maxitem =BaoXiang_jsylb_Mxcount
	local item_type = BaoXiang_jsylb
	local item_type_rad =BaoXiang_jsylb_Rad

	local item_type_count =BaoXiang_jsylb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmzlra( role , Item )
	local item_quality =BaoXiang_jsmzlra_Qua
	local maxitem =BaoXiang_jsmzlra_Mxcount
	local item_type = BaoXiang_jsmzlra
	local item_type_rad =BaoXiang_jsmzlra_Rad
	local item_type_count =BaoXiang_jsmzlra_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmzlrb( role , Item )
	local item_quality =BaoXiang_jsmzlrb_Qua
	local maxitem =BaoXiang_jsmzlrb_Mxcount
	local item_type = BaoXiang_jsmzlrb
	local item_type_rad =BaoXiang_jsmzlrb_Rad
	local item_type_count =BaoXiang_jsmzlrb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsjqa( role , Item )
	local item_quality =BaoXiang_jsjqa_Qua
	local maxitem =BaoXiang_jsjqa_Mxcount
	local item_type = BaoXiang_jsjqa
	local item_type_rad =BaoXiang_jsjqa_Rad
	local item_type_count =BaoXiang_jsjqa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsjqb( role , Item )
	local item_quality =BaoXiang_jsjqb_Qua
	local maxitem =BaoXiang_jsjqb_Mxcount
	local item_type = BaoXiang_jsjqb
	local item_type_rad =BaoXiang_jsjqb_Rad
	local item_type_count =BaoXiang_jsjqb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmzcja( role , Item )
	local item_quality =BaoXiang_jsmzcja_Qua
	local maxitem =BaoXiang_jsmzcja_Mxcount
	local item_type = BaoXiang_jsmzcja
	local item_type_rad =BaoXiang_jsmzcja_Rad
	local item_type_count =BaoXiang_jsmzcja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmzcjb( role , Item )
	local item_quality =BaoXiang_jsmzcjb_Qua
	local maxitem =BaoXiang_jsmzcjb_Mxcount
	local item_type = BaoXiang_jsmzcjb
	local item_type_rad =BaoXiang_jsmzcjb_Rad
	local item_type_count =BaoXiang_jsmzcjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jssjkja( role , Item )
	local item_quality =BaoXiang_jssjkja_Qua
	local maxitem =BaoXiang_jssjkja_Mxcount
	local item_type = BaoXiang_jssjkja
	local item_type_rad =BaoXiang_jssjkja_Rad
	local item_type_count =BaoXiang_jssjkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jssjkjb( role , Item )
	local item_quality =BaoXiang_jssjkjb_Qua
	local maxitem =BaoXiang_jssjkjb_Mxcount
	local item_type = BaoXiang_jssjkjb
	local item_type_rad =BaoXiang_jssjkjb_Rad
	local item_type_count =BaoXiang_jssjkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jszjkja( role , Item )
	local item_quality =BaoXiang_jszjkja_Qua
	local maxitem =BaoXiang_jszjkja_Mxcount
	local item_type = BaoXiang_jszjkja
	local item_type_rad =BaoXiang_jszjkja_Rad
	local item_type_count =BaoXiang_jszjkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jszjkjb( role , Item )
	local item_quality =BaoXiang_jszjkjb_Qua
	local maxitem =BaoXiang_jszjkjb_Mxcount
	local item_type = BaoXiang_jszjkjb
	local item_type_rad =BaoXiang_jszjkjb_Rad
	local item_type_count =BaoXiang_jszjkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsszkja( role , Item )
	local item_quality =BaoXiang_jsszkja_Qua
	local maxitem =BaoXiang_jsszkja_Mxcount
	local item_type = BaoXiang_jsszkja
	local item_type_rad =BaoXiang_jsszkja_Rad
	local item_type_count =BaoXiang_jsszkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsszkjb( role , Item )
	local item_quality =BaoXiang_jsszkjb_Qua
	local maxitem =BaoXiang_jsszkjb_Mxcount
	local item_type = BaoXiang_jsszkjb
	local item_type_rad =BaoXiang_jsszkjb_Rad
	local item_type_count =BaoXiang_jsszkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsfykja( role , Item )
	local item_quality =BaoXiang_jsfykja_Qua
	local maxitem =BaoXiang_jsfykja_Mxcount
	local item_type = BaoXiang_jsfykja
	local item_type_rad =BaoXiang_jsfykja_Rad
	local item_type_count =BaoXiang_jsfykja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsfykjb( role , Item )
	local item_quality =BaoXiang_jsfykjb_Qua
	local maxitem =BaoXiang_jsfykjb_Mxcount
	local item_type = BaoXiang_jsfykjb
	local item_type_rad =BaoXiang_jsfykjb_Rad
	local item_type_count =BaoXiang_jsfykjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshhkja( role , Item )
	local item_quality =BaoXiang_jshhkja_Qua
	local maxitem =BaoXiang_jshhkja_Mxcount
	local item_type = BaoXiang_jshhkja
	local item_type_rad =BaoXiang_jshhkja_Rad
	local item_type_count =BaoXiang_jshhkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshhkjb( role , Item )
	local item_quality =BaoXiang_jshhkjb_Qua
	local maxitem =BaoXiang_jshhkjb_Mxcount
	local item_type = BaoXiang_jshhkjb
	local item_type_rad =BaoXiang_jshhkjb_Rad
	local item_type_count =BaoXiang_jshhkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsjjkja( role , Item )
	local item_quality =BaoXiang_jsjjkja_Qua
	local maxitem =BaoXiang_jsjjkja_Mxcount
	local item_type = BaoXiang_jsjjkja
	local item_type_rad =BaoXiang_jsjjkja_Rad
	local item_type_count =BaoXiang_jsjjkja_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsjjkjb( role , Item )
	local item_quality =BaoXiang_jsjjkjb_Qua
	local maxitem =BaoXiang_jsjjkjb_Mxcount
	local item_type = BaoXiang_jsjjkjb
	local item_type_rad =BaoXiang_jsjjkjb_Rad
	local item_type_count =BaoXiang_jsjjkjb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshlza( role , Item )
	local item_quality =BaoXiang_jshlza_Qua
	local maxitem =BaoXiang_jshlza_Mxcount
	local item_type = BaoXiang_jshlza
	local item_type_rad =BaoXiang_jshlza_Rad
	local item_type_count =BaoXiang_jshlza_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshlzb( role , Item )
	local item_quality =BaoXiang_jshlzb_Qua
	local maxitem =BaoXiang_jshlzb_Mxcount
	local item_type = BaoXiang_jshlzb
	local item_type_rad =BaoXiang_jshlzb_Rad
	local item_type_count =BaoXiang_jshlzb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshlta( role , Item )
	local item_quality =BaoXiang_jshlta_Qua
	local maxitem =BaoXiang_jshlta_Mxcount
	local item_type = BaoXiang_jshlta
	local item_type_rad =BaoXiang_jshlta_Rad
	local item_type_count =BaoXiang_jshlta_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshlsa( role , Item )
	local item_quality =BaoXiang_jshlsa_Qua
	local maxitem =BaoXiang_jshlsa_Mxcount
	local item_type = BaoXiang_jshlsa
	local item_type_rad =BaoXiang_jshlsa_Rad
	local item_type_count =BaoXiang_jshlsa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshlsb( role , Item )
	local item_quality =BaoXiang_jshlsb_Qua
	local maxitem =BaoXiang_jshlsb_Mxcount
	local item_type = BaoXiang_jshlsb
	local item_type_rad =BaoXiang_jshlsb_Rad
	local item_type_count =BaoXiang_jshlsb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshlya( role , Item )
	local item_quality =BaoXiang_jshlya_Qua
	local maxitem =BaoXiang_jshlya_Mxcount
	local item_type = BaoXiang_jshlya
	local item_type_rad =BaoXiang_jshlya_Rad
	local item_type_count =BaoXiang_jshlya_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jshlyb( role , Item )
	local item_quality =BaoXiang_jshlyb_Qua
	local maxitem =BaoXiang_jshlyb_Mxcount
	local item_type = BaoXiang_jshlyb
	local item_type_rad =BaoXiang_jshlyb_Rad
	local item_type_count =BaoXiang_jshlyb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmhzca( role , Item )
	local item_quality =BaoXiang_jsmhzca_Qua
	local maxitem =BaoXiang_jsmhzca_Mxcount
	local item_type = BaoXiang_jsmhzca
	local item_type_rad =BaoXiang_jsmhzca_Rad
	local item_type_count =BaoXiang_jsmhzca_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmhzcb( role , Item )
	local item_quality =BaoXiang_jsmhzcb_Qua
	local maxitem =BaoXiang_jsmhzcb_Mxcount
	local item_type = BaoXiang_jsmhzcb
	local item_type_rad =BaoXiang_jsmhzcb_Rad
	local item_type_count =BaoXiang_jsmhzcb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmzfza( role , Item )
	local item_quality =BaoXiang_jsmzfza_Qua
	local maxitem =BaoXiang_jsmzfza_Mxcount
	local item_type = BaoXiang_jsmzfza
	local item_type_rad =BaoXiang_jsmzfza_Rad
	local item_type_count =BaoXiang_jsmzfza_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmzfzb( role , Item )
	local item_quality =BaoXiang_jsmzfzb_Qua
	local maxitem =BaoXiang_jsmzfza_Mxcount
	local item_type = BaoXiang_jsmzfzb
	local item_type_rad =BaoXiang_jsmzfzb_Rad
	local item_type_count =BaoXiang_jsmzfzb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmfzza( role , Item )
	local item_quality =BaoXiang_jsmfzza_Qua
	local maxitem =BaoXiang_jsmfzza_Mxcount
	local item_type = BaoXiang_jsmfzza
	local item_type_rad =BaoXiang_jsmfzza_Rad
	local item_type_count =BaoXiang_jsmfzza_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmfzzb( role , Item )
	local item_quality =BaoXiang_jsmfzzb_Qua
	local maxitem =BaoXiang_jsmfzzb_Mxcount
	local item_type = BaoXiang_jsmfzzb
	local item_type_rad =BaoXiang_jsmfzzb_Rad
	local item_type_count =BaoXiang_jsmfzzb_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end

function ItemUse_jsmzcqa( role , Item )
	local item_quality =BaoXiang_jsmzcqa_Qua
	local maxitem =BaoXiang_jsmzcqa_Mxcount
	local item_type = BaoXiang_jsmzcqa
	local item_type_rad =BaoXiang_jsmzcqa_Rad
	local item_type_count =BaoXiang_jsmzcqa_Count
	local ret = gogogo(role,Item,item_type,item_type_rad,item_type_count,maxitem,item_quality)
end



--Победа богини
function ItemUse_kala( role , Item )
	local statelv = 1
	local statetime = 20
	AddState( role , role , STATE_KALA , statelv , statetime )
end

--Запачканная История Болезни
function ItemUse_MHDYSD ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local star = 0
	star =IsChaInRegion( role, 2 )
	if star == 1 then
		SystemNotice( role , "Невозможно призвать монстра в безопасной зоне" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 858
	local Refresh = 190	
	local life = 180000	
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

--Сундук колдовской карты
function ItemUse_mohuan( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 1000 )
	SystemNotice(role ,"star=="..star)
	if star<=8 then
		GiveItem ( role , 0 , 1014  , 1 , 4  )
	elseif star>=9 and star<=17 then
		GiveItem ( role , 0 , 271, 1 , 4  ) 
	elseif star>=18 and star<=27 then
		GiveItem ( role , 0 , 1012, 1 , 4  ) 
	elseif star>=28 and star<=227 then
		GiveItem ( role , 0 , 3886, 1 , 4  ) 
	else
		GiveItem ( role , 0 , 3830, 5 , 4  ) 
	end
end

function ItemUse_MoHuanBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local star=math.random ( 1, 4663 )
	if star>=1 and star<=3 then
		GiveItem ( role , 0 , 3866, 1 , 4  ) 
	elseif star>=4 and star<=14 then
		GiveItem ( role , 0 , 3864, 1 , 4  ) 
	elseif star>=15 and star<=65 then
		GiveItem ( role , 0 , 3858, 1 , 4  )
	else
		local star=math.random ( 3850, 3875 )
		if star==3858 or star==3864 or star==3866  then
			GiveItem ( role , 0 , 3850  , 1 , 4  )
		else 
			GiveItem ( role , 0 , star  , 1 , 4  ) 
		end
	end
end

--Чертеж Пачкули\Запечатанный\Зашифрованный
function ItemUse_MHDTZ( role , Item )
 	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"To open Blurry Blueprint requires at least 1 empty inventory slot")
		UseItemFailed ( role )
		return
	end  	
	local r1 = 0
	local r2 = 0
	local item_ID=GetItemID(Item)
	local Itemnew_ID=2300
	local rad_ID=math.random ( 1, 100 )
	if rad_ID<=40 then
		Itemnew_ID=2300  
	elseif rad_ID>=41 and rad_ID<=81 then
		Itemnew_ID=2302  
	else
		Itemnew_ID=2301 
	end
	r1, r2 = MakeItem ( role , Itemnew_ID  , 1 , 4 )
	local Itemnew = GetChaItem ( role , 2 , r2 )
	local rad_energy=math.random ( 1, 100 )
	local energy = 1
	if item_ID==1000 then
		energy=1
	elseif item_ID==1001 then 
		if rad_energy<=5 then
			energy=4
		elseif  rad_energy<=30 and rad_energy>=6 then
			energy=3
		else
			energy=2
		end
	elseif item_ID==1002 then 
		if rad_energy<=5 then
			energy=6
		elseif  rad_energy<=30 and rad_energy>=6 then
			energy=5
		else
			energy=4
		end
	elseif item_ID==1003 then
		if rad_energy<=5 and Itemnew_ID~=2301 then
			energy=8
		elseif  rad_energy<=30 and rad_energy>=6 then
			energy=7
		else
			energy=6
		end
	end	
	local final_ID=1849 
	local final_LV=20
	local final_ID1=3116 
	local final_ID2=3116 
	local final_ID3=3116
	local General = 0  
	local ItemId =3124
	if Itemnew_ID==2300 then
		local STAR_BEGIN=ZHIZAO_Mxcount*(energy-1)/10+1
		local STAR_END=ZHIZAO_Mxcount*energy/10
		for i = STAR_BEGIN , STAR_END , 1 do 
			  General = ZHIZAO__Rad[ i ] + General
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local k = 0 
		local c = -1
		for k = STAR_BEGIN , STAR_END , 1 do
			d = ZHIZAO__Rad[ k ] + b
			if a <= d and a > b then
				c = k
				break 
			end 
			b = d 
		end 
		if c == -1 then
			c =STAR_BEGIN
		end
		final_ID=ZHIZAO_ID[c]
		final_LV=ZHIZAO_LV[c]
		final_ID1=ZHIZAO_ID1[c]
		final_ID2=ZHIZAO_ID2[c]
		final_ID3=ZHIZAO_ID3[c]
	end
	if Itemnew_ID==2301 then
		local STAR_BEGIN=1
		local STAR_END=77
		if energy==1 then
			STAR_BEGIN=1
			STAR_END=77
		elseif energy==2 then
			STAR_BEGIN=78
			STAR_END=166
		elseif energy==3 then
			STAR_BEGIN=167
			STAR_END=278
		elseif energy==4 then
			STAR_BEGIN=279
			STAR_END=434
		elseif energy==5 then
			STAR_BEGIN=435
			STAR_END=596
		elseif energy==6 then
			STAR_BEGIN=597
			STAR_END=732
		elseif energy==7 then
			STAR_BEGIN=733
			STAR_END=871
		elseif energy==8 then
			STAR_BEGIN=895
			STAR_END=902
		end
		for i = STAR_BEGIN , STAR_END , 1 do 
			  General = ZHUZAO__Rad[ i ] + General
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local k = 0 
		local c = -1
		for k = STAR_BEGIN , STAR_END , 1 do
			d = ZHUZAO__Rad[ k ] + b
			if a <= d and a > b then
				c = k
				break 
				end 
			b = d 
		end 
		if c == -1 then
			c =STAR_BEGIN
		end
		final_ID=ZHUZAO_ID[c]
		final_LV=ZHUZAO_LV[c]
		final_ID1=ZHUZAO_ID1[c]
		final_ID2=ZHUZAO_ID2[c]
		final_ID3=ZHUZAO_ID3[c]
		local final_type=GetItemType2(final_ID)
		local check=0
		local i = 0
		for i = 0 , Item_CanJinglian_Num  , 1 do
			if final_type == Item_CanJinglian_ID [i] then
				check=1
			end
		end
		if  check==1 then
			local check_rad=math.random ( 1, 1000 )
			if check_rad==1 then
				final_LV=70
			elseif check_rad>=2 and check_rad<=11 then
				final_LV=60
			elseif check_rad>=12 and check_rad<=21 then
				final_LV=50
			elseif check_rad>=22 and check_rad<=221 then
				final_LV=40
			elseif check_rad>=222 and check_rad<=421 then
				final_LV=30
			elseif check_rad>=422 and check_rad<=621 then
				final_LV=20
			else
				final_LV=10
			end
			if final_LV>70 then
				final_LV=70
			end
			if final_LV~=10 and final_LV~=0 then
				local tmd=(energy-1)*6+final_LV*0.1-1
				final_ID3=TESHU_ID[tmd]
			end
		end
	end
	if Itemnew_ID==2302 then
		local STAR_BEGIN=1
		local STAR_END=80
		if energy==1 then
			STAR_BEGIN=1
			STAR_END=7
		elseif energy==2 then
			STAR_BEGIN=8
			STAR_END=12
		elseif energy==3 then
			STAR_BEGIN=13
			STAR_END=17
		elseif energy==4 then
			STAR_BEGIN=18
			STAR_END=26
		elseif energy==5 then
			STAR_BEGIN=27
			STAR_END=31
		elseif energy==6 then
			STAR_BEGIN=32
			STAR_END=36
		else
			STAR_BEGIN=energy+30
			STAR_END=energy+30    
		end
		for i = STAR_BEGIN , STAR_END , 1 do 
			  General = ZHIZAO__Rad[ i ] + General
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local k = 0 
		local c = -1		
		for k = STAR_BEGIN , STAR_END , 1 do
			d = PENGREN__Rad[ k ] + b
			if a <= d and a > b then
				c = k
				break 
			end 
			b = d 
		end 
		if c == -1 then
			c =STAR_BEGIN
		end
		final_ID=PENGREN_ID[c]
		final_LV=PENGREN_LV[c]
		final_ID1=PENGREN_ID1[c]
		final_ID2=PENGREN_ID2[c]
		final_ID3=PENGREN_ID3[c]
	end
	local star_number=energy*10
	local yingbi_num=math.random ( 10, star_number )
	if energy<=3 then
		SetItemAttr(Itemnew, ITEMATTR_MAXURE, energy )
		SetItemAttr(Itemnew, ITEMATTR_URE, energy )
	else
		SetItemAttr(Itemnew, ITEMATTR_MAXURE, yingbi_num )
		SetItemAttr(Itemnew, ITEMATTR_URE, energy )
	end
	local sta =math.random ( 1, 10 )
	if Itemnew_ID==2301 then
		sta=sta*0.5
		sta=math.max(1,sta)
	end
	SetItemAttr(Itemnew, ITEMATTR_VAL_STA, sta )
	local qulity=math.floor(final_LV*0.1)+100
	SetItemAttr(Itemnew, ITEMATTR_MAXENERGY, qulity )
	local ure=10-final_LV*0.1
	SetItemAttr(Itemnew, ITEMATTR_ENERGY, ure )
	SetItemAttr(Itemnew, ITEMATTR_VAL_STR, final_ID1 )
	SetItemAttr(Itemnew, ITEMATTR_VAL_CON, final_ID2 )
	SetItemAttr(Itemnew, ITEMATTR_VAL_DEX, final_ID3 )
	SetItemAttr(Itemnew, ITEMATTR_VAL_AGI, final_ID )
	local Num_new = GetItemForgeParam ( Itemnew , 1 )
	local Part2_new = GetNum_Part2 ( Num_new )	
	local Part4_new = GetNum_Part4 ( Num_new )
	local Part6_new = GetNum_Part6 ( Num_new )
	Part2_new = math.random ( 3, 10 )
	Part4_new = math.random ( 2, 6 )
	Part6_new = math.random ( 1, 2 )
	Part6_new = Part6_new*math.max(1,(energy-2))
	Num_new = SetNum_Part2 ( Num_new , Part2_new )
	Num_new = SetNum_Part4 ( Num_new , Part4_new )
	Num_new = SetNum_Part6 ( Num_new , Part6_new )
	SetItemForgeParam ( Itemnew , 1 , Num_new )

end 

--Сундук звезды единства
function ItemUse_TunDuiZhiXing( role , Item )
 	-- local r1 = 0
	-- local r2 = 0
	-- r1, r2 = MakeItem ( role , 1034 , 1 , 4 )
	-- local Itemnew = GetChaItem ( role , 2 , r2 )
	-- SetItemAttr(Itemnew, ITEMATTR_URE, 100 )
	-- SetItemAttr(Itemnew, ITEMATTR_MAXURE, 20100 )
	
	
	local cha = TurnToCha ( role )  
	--local script_count = CheckBagItem ( cha , 1034 )	-- получим ID
	local chaLV =  GetChaAttr( cha , ATTR_LV)	-- получим уровень
	local job = GetChaAttr( role, ATTR_JOB) -- получим проффесию

	--if script_count >= 1 then
		if chaLV < 41 then -- если уровень ниже 41
			SystemNotice(role,"Ваша Звезда Единства ещё не может раскрыться. Попробуйте, когда ваш уровень будет выше 41.")
			UseItemFailed ( role )
		return
		else
			if job ~= 12 and job ~= 9 and job ~= 16 and job ~= 8 and job ~= 13 and job ~=14 then -- проверим на вторую профу
				SystemNotice(role,"Использовать могут только персонажи со вторым классом")
				UseItemFailed ( role )
		return
			else
				--local x_del = DelBagItem ( cha , 1034 , 1 )
				--if x_del == 1 then
					if job == 12 then	--если 12
						GiveItem( role , 0 , 1409  , 1 , 22 )
					elseif job == 9	then --если 9
						GiveItem( role , 0 , 1392  , 1 , 22 )
					elseif job == 16 then	-- если 16
						GiveItem( role , 0 , 1419  , 1 , 22 )
					elseif job == 8	then --если 8
						GiveItem( role , 0 , 1382  , 1 , 22 )
					elseif job == 13 then	-- если 13
						GiveItem( role , 0 ,1433  , 1 , 22 )
					elseif job == 14 then	--если 14
						GiveItem( role , 0 , 1467  , 1 , 22 )
					end
				--else 
				--	SystemNotice ( cha , "Невозможно раскрыть Звезду Единства" )
				--end
			end
		end
	
end 

--ID1134	Сундук Хаоса
function ItemUse_FightingBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"Необходимо минимум 2 свободных слота, чтобы открыть Сундук Хаоса ")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2610  , 1 , 4 )
	local rad = math.random ( 1, 4 )
	if rad ==1 then
		GiveItem ( role , 0 , 1124  , 1 , 19 )
	end
	if rad ==2 then
		GiveItem ( role , 0 , 1125  , 1 , 20 )
	end
	if rad ==3 then
		GiveItem ( role , 0 , 1126  , 1 , 15 )
		end
	if rad ==4 then
		GiveItem ( role , 0 , 1127  , 1 , 15 )
	end
end

--Скорей всего не нужно современные украшения
function ItemUse_MOLIBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 4 empty inventory slots to open the Chest")
		UseItemFailed ( role )
		return
	end
	local rad = math.random ( 1, 12 )
	if rad == 1 then
	GiveItem ( role , 0 , 5107  , 1 , 4 ) 
	GiveItem ( role , 0 , 5108  , 1 , 4 ) 
	GiveItem ( role , 0 , 5109  , 1 , 4 ) 
	elseif rad == 2 then
	GiveItem ( role , 0 , 5111  , 1 , 4 ) 
	GiveItem ( role , 0 , 5112  , 1 , 4 ) 
	GiveItem ( role , 0 , 5113  , 1 , 4 ) 
	elseif rad == 3 then
	GiveItem ( role , 0 , 5115  , 1 , 4 ) 
	GiveItem ( role , 0 , 5116  , 1 , 4 ) 
	GiveItem ( role , 0 , 5117  , 1 , 4 ) 
	elseif rad == 4 then
	GiveItem ( role , 0 , 5119  , 1 , 4 ) 
	GiveItem ( role , 0 , 5120  , 1 , 4 ) 
	GiveItem ( role , 0 , 5121  , 1 , 4 ) 
	elseif rad == 5 then
	GiveItem ( role , 0 , 5123  , 1 , 4 ) 
	GiveItem ( role , 0 , 5124  , 1 , 4 ) 
	GiveItem ( role , 0 , 5125  , 1 , 4 )
	elseif rad == 6 then
	GiveItem ( role , 0 , 5127  , 1 , 4 ) 
	GiveItem ( role , 0 , 5128  , 1 , 4 ) 
	GiveItem ( role , 0 , 5129  , 1 , 4 )
	elseif rad == 7 then
	GiveItem ( role , 0 , 5130  , 1 , 4 ) 
	GiveItem ( role , 0 , 5131  , 1 , 4 ) 
	GiveItem ( role , 0 , 5132  , 1 , 4 )
	GiveItem ( role , 0 , 5133  , 1 , 4 )
	elseif rad == 8 then
	GiveItem ( role , 0 , 5134  , 1 , 4 ) 
	GiveItem ( role , 0 , 5135  , 1 , 4 ) 
	GiveItem ( role , 0 , 5136  , 1 , 4 )
	GiveItem ( role , 0 , 5137  , 1 , 4 )
	elseif rad == 9 then
	GiveItem ( role , 0 , 5138  , 1 , 4 ) 
	GiveItem ( role , 0 , 5139  , 1 , 4 ) 
	GiveItem ( role , 0 , 5140  , 1 , 4 )
	GiveItem ( role , 0 , 5141  , 1 , 4 )
	elseif rad == 10 then
	GiveItem ( role , 0 , 5143  , 1 , 4 ) 
	GiveItem ( role , 0 , 5144  , 1 , 4 ) 
	GiveItem ( role , 0 , 5145  , 1 , 4 ) 
	elseif rad == 11 then
	GiveItem ( role , 0 , 5147  , 1 , 4 ) 
	GiveItem ( role , 0 , 5148  , 1 , 4 ) 
	GiveItem ( role , 0 , 5149  , 1 , 4 )
	elseif rad == 12 then
	GiveItem ( role , 0 , 5151  , 1 , 4 ) 
	GiveItem ( role , 0 , 5152  , 1 , 4 ) 
	GiveItem ( role , 0 , 5153  , 1 , 4 )
	end
end

--Бонус репутации
function ItemUse_rep_ticket(role, item)

	local rep_ticket_add = 1500 -- Количество очков репутации
	local curr_rep = GetChaAttr(role, ATTR_FAME)
	local after_add_rep = curr_rep + rep_ticket_add
		
	if curr_rep > 99999 then
		SystemNotice(role, "У Вас слишком много очков репутации!")
		UseItemFailed(role)
	else
		SetCharaAttr(after_add_rep, role, ATTR_FAME)
	end

end

-- Бонус Книги чести ID=2816
function ItemUse_HonorPoint (role, Item )
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( role,3849 )
	if HonorBook_Num < 1 then
		SystemNotice( role , "У вас нет Медали отваги")
		return 0
	end
	local Book2 =  GetChaItem2 ( role , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR )
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR, HonorPoint+100 )
	RefreshCha(role)
end

-- Книга бонусов Хаоса ID=2951
function ItemUse_FightingPoint (role, Item )
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( role,3849 )
	if HonorBook_Num < 1 then
		SystemNotice( role , "У вас нет Медали отваги")
		return 0
	end
	local Book2 =  GetChaItem2 ( role , 2 , 3849 )
	local FightingPoint=GetItemAttr ( Book2 , ITEMATTR_MAXENERGY)
	local FightingPoint_X=FightingPoint+10
	SetItemAttr ( Book2 , ITEMATTR_MAXENERGY,FightingPoint_X)
end

--Вкусное индюшачье мясо
function ItemUse_MWHJ ( role , Item )  
	local el_exp = GetChaAttr(role, ATTR_CEXP)
	local exp1=el_exp
	local charLv=Lv ( role )
	local exp_resume = 5000
	local	exp_resume_1= 100
	el_exp = el_exp + exp_resume
	 if charLv>=80 then	
		el_exp = exp1 + exp_resume_1
	end
	SetCharaAttr(el_exp, role, ATTR_CEXP) 
end 

--Праздничный обед
function ItemUse_SDDC ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	local dif_exp_one = DEXP[charLv+1]
	local dif_exp_three = DEXP[charLv+3]
	local dif_exp_five = DEXP[charLv+5]
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )
	local dif_exp_half = (DEXP[charLv+1] - DEXP[charLv])*0.5 +  Exp_star +10
	local dif_exp_thalf = (DEXP[charLv+1] - DEXP[charLv])*0.3  +  Exp_star + 10
	local dif_exp_thalf_b = dif_exp_thalf - DEXP[charLv+1]
	local dif_exp_thalf_c = (DEXP[charLv+1] - DEXP[charLv])*0.01+Exp_star
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	elseif charLv>=1 and charLv<=9 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_five )
	elseif charLv>=10 and charLv<=29 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_three )
	elseif charLv>=30 and charLv<=59 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_one )
	elseif charLv>=60 and charLv<=75 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_half )
	elseif charLv>=76 and charLv<=85 and charLv~=79  then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b<=0 then
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv==79 and dif_exp_thalf_b>0 then 
			dif_exp_thalf = dif_exp_thalf_b*0.02 + DEXP[charLv+1]
			SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	elseif charLv>=86 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_c )
	end
end

--ID2893	Изысканная подарочная коробка
function ItemUse_JMSDBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно слотов")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do
		d = item_type_rad [ k ] + b
		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	local GoodItem = {}
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then

			local cha_name = GetChaDefaultName ( role ) 
		end
	end
end

--ID2304	Новогодний фейерверк
function ItemUse_XNLP( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local star = 0
	if CheckDateNum >= 10122  and CheckDateNum <= 10123 then
		ItemUse_XINBOX ( role , Item )	
	end
end

--дополнение к ID2304	Новогодний фейерверк
function ItemUse_XINBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory slot. Usage of Grandiose Salute failed.")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do
		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end 
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	local GoodItem = {}
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then
			local cha_name = GetChaDefaultName ( role ) 
		end
	end
end

function ItemUse_XNBOX( role , Item )
	local lv = GetChaAttr(role, ATTR_LV)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if lv < 40 then
		SystemNotice( role ,"Currently lower than Lv 40. Unable to use item!")
		UseItemFailed ( role )	
	return
	end
	if Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 1 free slot to open chest")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 30000 )
	if  el>=29700 and el<30000 then
	GiveItem ( role , 0 , 2240  , 1 , 4 ) 
	elseif el>=28700 and el<29700 then
	GiveItem ( role , 0 , 2237  , 1 , 4 ) 
	elseif el>=25700 and el<28700 then
	GiveItem ( role , 0 , 2239  , 1 , 4 ) 
	elseif el>=15700 and el<25700 then
	GiveItem ( role , 0 , 2241  , 1 , 4 )
	else
	local EID = math.random ( 2242, 2245 )
	GiveItem ( role , 0 , EID  , 1 , 4 ) 	
	end
end

function ItemUse_SZF ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <1 then
		SystemNotice(role ,"Unable to use Pirate Voucher 8. Requires at least 1 empty inventory slot")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2306  , 1 , 4)
	local cha_name = GetChaDefaultName ( role ) 
end

function ItemUse_ShiTouJi( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"To open a Chest requires 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , STONE_ID  , 1 , 4 )
	local Item_newJL = GetChaItem ( role , 2 , r2 )			
	local Item_newJLID = GetItemID ( Item_newJL )		
	if STONE_LV>8 then
		STONE_LV=8
	end
	SetItemAttr ( Item_newJL , ITEMATTR_VAL_BaoshiLV , STONE_LV )
	local cha_name = GetChaDefaultName ( role )
end
--Мешок с песком НАЧАЛО
function ItemUse_ShaBao1(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Нельзя Нельзя использовать в безопасной зоне!" )
		UseItemFailed ( role )
       return
	end
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 937
       local Refresh = 1900000						  
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end

function ItemUse_ShaBao2(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Нельзя Нельзя использовать в безопасной зоне!" )
		UseItemFailed ( role )
       return
	end
		    local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 938
       local Refresh = 1900000						  
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end

function ItemUse_ShaBao3(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Нельзя Нельзя использовать в безопасной зоне!" )
		UseItemFailed ( role )
       return
	end
		    local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 939
       local Refresh = 1900000						  
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh , role )
		SetChaLifeTime( new, life )
end

function ItemUse_ShaBao4(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Нельзя Нельзя использовать в безопасной зоне!" )
		UseItemFailed ( role )
       return
	end
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 940
       local Refresh = 1900000						  
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end

function ItemUse_ShaBao5(role , Item)
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Нельзя Нельзя использовать в безопасной зоне!" )
		UseItemFailed ( role )
       return
	end
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
		local MonsterID = 941
       local Refresh = 1900000						  
		local life = 1800000						
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end
--Мешок с песком КОНЕЦ
--генератор зла начало
function ItemUse_FaSheng1(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		  SystemNotice( role , "Нельзя Нельзя использовать в безопасной зоне" )
		  UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,8 )
	local MonsterID = 0
	  if radID == 1   then
		   MonsterID = 841	   
	  elseif radID == 2 then
		   MonsterID = 842	  
	  elseif radID == 3 then
		   MonsterID = 843
	  elseif radID == 4 then
		   MonsterID = 843
	  elseif radID == 5 then
		   MonsterID = 845
	  elseif radID == 6 then
		   MonsterID = 846
	  elseif radID == 7 then
		   MonsterID = 229
	  elseif radID == 8 then
		   MonsterID = 274
	  end
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
       local Refresh = 3700000					 
		local life =  3600000					
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
		SetChaLifeTime( new, life )
end
function ItemUse_FaSheng2(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then	
		  SystemNotice( role , "Нельзя Нельзя использовать в безопасной зоне" )
		  UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,15 )
	local MonsterID = 0
		local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
	  if radID == 1 then
		  MonsterID = 847
	  elseif radID == 2 then
		  MonsterID = 848
	  elseif radID == 3 then 
		  MonsterID = 849
	  elseif radID == 4 then 
		  MonsterID = 850
 elseif radID == 5 then
		  MonsterID = 851
		elseif radID == 6 then
		  MonsterID = 852
		elseif radID == 7 then
		  MonsterID = 211
		elseif radID == 8 then
		  MonsterID = 706
		elseif radID == 9 then
		  MonsterID = 673
		elseif radID == 10 then
		  MonsterID = 690
		elseif radID == 11 then
		  MonsterID = 691
		elseif radID == 12 then
		  MonsterID = 692
		elseif radID == 13 then
		  MonsterID = 693
		elseif radID == 14 then
		  MonsterID = 106
		elseif radID == 15 then
		  MonsterID = 289
	  end
		local Refresh = 3700000						  
		local life = 3600000					
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end
function ItemUse_FaSheng3(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then	
		  SystemNotice( role , "Нельзя Нельзя использовать в безопасной зоне" )
		  UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,7 )
	local MonsterID = 0	 
       local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
	  if radID == 1 then
		   MonsterID = 757       
	  elseif radID == 2 then
		   MonsterID = 679        
	  elseif radID == 3 then  
		   MonsterID = 678
	  elseif radID == 4 then  
		   MonsterID = 707      
	  elseif radID == 5 then
		   MonsterID = 708        
 elseif radID == 6 then
		   MonsterID = 776
 elseif radID == 7 then
		   MonsterID = 74   
	  end
		local Refresh = 7300000						  
		local life = 7200000     				
		local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
		SetChaLifeTime( new, life )
end
function ItemUse_FaSheng4(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then	
		  SystemNotice( role , "Нельзя Нельзя использовать в безопасной зоне" )
		  UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,5 )
	local MonsterID = 0
	local Refresh = 0
	local life = 0
       local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
	  if radID == 1 then
		  MonsterID = 952        
	  elseif radID == 2 then
		  MonsterID = 805        
	  elseif radID == 3 then  
		  MonsterID = 807
	  elseif radID == 4 then  
		  MonsterID = 786      
	  elseif radID == 5 then
		  MonsterID = 788
	  end
		   if MonsterID == 952 then 
	 Refresh = 10900000
	 life = 10800000
		   else
			Refresh = 7300000     					  
			life = 7200000					
		   end
	 local new = CreateChaX( MonsterID , x , y , 145 , Refresh ,role)
		SetChaLifeTime( new, life )
end
function ItemUse_FaSheng5(role,Item)
local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
        local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then	
		  SystemNotice( role , "Нельзя Нельзя использовать в безопасной зоне" )
		  UseItemFailed ( role )
	return
	end
	local radID = math.random ( 1,30 )
	local MonsterID = 0
	local Refresh = 0
	local life = 0
       local x, y = GetChaPos(role)
		local x_move=5
		local y_move=5
		x=x_move+x
		y=y_move+y
	  if radID == 1 or  radID ==2 then
		  MonsterID = Monster_GetID[8]        
	  elseif radID == 3 or  radID ==4 then
		  MonsterID = 786        
	  elseif radID == 5 or  radID ==6 then  
		  MonsterID = 673
	  elseif radID == 7 or  radID ==8 then  
		  MonsterID = 757      
	  elseif radID == 9 or  radID ==10 then
		  MonsterID = 26310
 elseif radID == 11 or  radID ==12 then
		  MonsterID = 211
 elseif radID == 13 or  radID ==14 then
		  MonsterID = 99
	  elseif radID == 15 or  radID ==16 then
		  MonsterID = 229
	  elseif radID == 17 or  radID ==18 or  radID ==19 then 
     MonsterID = Monster_GetID[9]
	  elseif radID == 20 or  radID ==21 then
		  MonsterID = Monster_GetID[10]
 elseif radID == 22 or radID ==23 or radID ==24 then
		  MonsterID = Monster_GetID[11]
	  elseif radID == 25 or  radID ==26 then
		  MonsterID = Monster_GetID[12]
	  elseif radID == 27 or  radID ==28 then
		  MonsterID = Monster_GetID[13]
 elseif radID == 29 or  radID ==30 then
		  MonsterID = Monster_GetID[14]
	  end
		   if MonsterID == Monster_GetID[12] then 
	 Refresh = 10900000
	 life = 10800000
		   else
			Refresh = 7300000     					  
			life = 7200000					
		   end
	 local new = CreateChaX( MonsterID , x , y , 145 , Refresh ,role)
		SetChaLifeTime( new, life )
end
--Генератор зла конец
--Водяная мина начало
function ItemUse_SL1 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "Использовать только в море" )
		UseItemFailed ( role )
		return
	end
	
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 1200
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=1200
		   y_move=-1200
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-1000
	 elseif fx_move == 4 then
		   x_move=-1000
		   y_move=-1000
	 elseif fx_move == 5 then
		   x_move=1000
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-1000
		   y_move=1000
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=1000
	 else  x_move=1000
		   y_move=1000
	 end
		  x =x_move + x
		  y =y_move + y

	local MonsterID = 942
	local Refresh = 700000					
	local life = 600000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end

function ItemUse_SL2 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "Использовать только в море" )
		UseItemFailed ( role )
		return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 1200
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=1200
		   y_move=-1200
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-1000
	 elseif fx_move == 4 then
		   x_move=-1000
		   y_move=-1000
	 elseif fx_move == 5 then
		   x_move=1000
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-1000
		   y_move=1000
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=1000
	 else  x_move=1000
		   y_move=1000
	 end
		  x =x_move + x
		  y =y_move + y
	local MonsterID = 943
	local Refresh = 700000					
	local life = 600000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end

function ItemUse_SL3 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "Использовать только в море" )
		UseItemFailed ( role )
		return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 1200
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=1200
		   y_move=-1200
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-1000
	 elseif fx_move == 4 then
		   x_move=-1000
		   y_move=-1000
	 elseif fx_move == 5 then
		   x_move=1000
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-1000
		   y_move=1000
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=1000
	 else  x_move=1000
		   y_move=1000
	 end
		  x =x_move + x
		  y =y_move + y
	local MonsterID = 944
	local Refresh = 700000					
	local life = 600000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end

function ItemUse_SL4 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "Использовать только в море" )
		UseItemFailed ( role )
		return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 1200
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=1200
		   y_move=-1200
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-1000
	 elseif fx_move == 4 then
		   x_move=-1000
		   y_move=-1000
	 elseif fx_move == 5 then
		   x_move=1000
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-1000
		   y_move=1000
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=1000
	 else  x_move=1000
		   y_move=1000
	 end
		  x =x_move + x
		  y =y_move + y

	local MonsterID = 945
	local Refresh = 700000					
	local life = 600000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )
	SetChaLifeTime( new, life )
end

function ItemUse_SL5 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		SystemNotice( role , "Использовать только в море" )
		UseItemFailed ( role )
		return
	end
	local x,y = GetChaPos(Cha_Boat)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 1200
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=1200
		   y_move=-1200
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-1000
	 elseif fx_move == 4 then
		   x_move=-1000
		   y_move=-1000
	 elseif fx_move == 5 then
		   x_move=1000
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-1000
		   y_move=1000
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=1000
	 else  x_move=1000
		   y_move=1000
	 end
		  x =x_move + x
		  y =y_move + y

	local MonsterID = 946
	local Refresh = 700000					
	local life = 600000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,Cha_Boat )

	SetChaLifeTime( new, life )
end
--Водяная мина конец
--Взрывающаяся овечка
function ItemUse_ZBML1 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Нельзя использовать в море" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Нельзя использовать в безопасной зоне" )
		UseItemFailed ( role )
       return
	end
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 800
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=800
		   y_move=-800
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-800
	 elseif fx_move == 4 then
		   x_move=-800
		   y_move=-800
	 elseif fx_move == 5 then
		   x_move=800
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-800
		   y_move=800
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=800
	 else  x_move=800
		   y_move=800
	 end
		  x =x_move + x
		  y =y_move + y
	local MonsterID = 947
	local Refresh = 700000					
	local life = 600000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end

function ItemUse_ZBML2 ( role , Item  )
 local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Нельзя использовать в море" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Нельзя использовать в безопасной зоне" )
		UseItemFailed ( role )
       return
	end
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 800
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=800
		   y_move=-800
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-800
	 elseif fx_move == 4 then
		   x_move=-800
		   y_move=-800
	 elseif fx_move == 5 then
		   x_move=800
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-800
		   y_move=800
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=800
	 else  x_move=800
		   y_move=800
	 end
		  x =x_move + x
		  y =y_move + y
	local MonsterID = 948
	local Refresh = 700000					
	local life = 600000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end

function ItemUse_ZBML3 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Нельзя использовать в море" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Нельзя использовать в безопасной зоне" )
		UseItemFailed ( role )
       return
	end
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 800
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=800
		   y_move=-800
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-800
	 elseif fx_move == 4 then
		   x_move=-800
		   y_move=-800
	 elseif fx_move == 5 then
		   x_move=800
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-800
		   y_move=800
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=800
	 else  x_move=800
		   y_move=800
	 end
		  x =x_move + x
		  y =y_move + y
	local MonsterID = 949
	local Refresh = 700000					
	local life = 600000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end

function ItemUse_ZBML4 ( role , Item  )
 
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Нельзя использовать в море" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Нельзя использовать в безопасной зоне" )
		UseItemFailed ( role )
       return
	end
	
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 800
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=800
		   y_move=-800
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-800
	 elseif fx_move == 4 then
		   x_move=-800
		   y_move=-800
	 elseif fx_move == 5 then
		   x_move=800
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-800
		   y_move=800
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=800
	 else  x_move=800
		   y_move=800
	 end
		  x =x_move + x
		  y =y_move + y
	local MonsterID = 950
	local Refresh = 700000					
	local life = 600000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end

function ItemUse_ZBML5 ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Нельзя использовать в море" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Нельзя использовать в безопасной зоне" )
		UseItemFailed ( role )
       return
	end
	local x,y = GetChaPos(role)
	local x_move=0
	local y_move=0
        local fx_move = math.random ( 1,8 )
	   if  fx_move == 1 then
		   x_move = 800
		   y_move = 0
	 elseif fx_move == 2 then
		   x_move=800
		   y_move=-800
	 elseif fx_move == 3 then
		   x_move=0
		   y_move=-800
	 elseif fx_move == 4 then
		   x_move=-800
		   y_move=-800
	 elseif fx_move == 5 then
		   x_move=800
		   y_move=0
	 elseif fx_move == 6 then
		   x_move=-800
		   y_move=800
	 elseif fx_move == 7 then
		   x_move=0
		   y_move=800
	 else  x_move=800
		   y_move=800
	 end
		  x =x_move + x
		  y =y_move + y
	local MonsterID = 951
	local Refresh = 700000					
	local life = 600000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
end
--Взрывающаяся овечка конец

--Свадебный сундук
function ItemUse_LoveBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 1 free slot to open Chest of Fate")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	local count = 0
	if cha_type == 3 or cha_type == 4 then 
		   count =1
	end
	if cha_type == 1 or cha_type == 2 then
		   count =2
	end
	local el = math.random ( 1, 35 )
	if   count == 1 then
		if el==35 then
			local r1 = 0
			local r2 = 0	
			r1,r2 =MakeItem ( role , 2902  , 1 , 4 )
			local Item_girl = GetChaItem ( role , 2 , r2 )		
			local new_el=math.random ( 1, 200 )
			SetItemAttr ( Item_girl , ITEMATTR_VAL_STR , new_el )	
		else
			local el1 = math.random ( 1, 12 )
			if el1==1  then
				GiveItem ( role , 0 , 3343  , 1 , 4 ) 
			elseif el1==2 then
				GiveItem ( role , 0 , 3077  , 1 , 4 )	
			else
				local EID = math.random ( 4264, 4273 )
				GiveItem ( role , 0 , EID  , 1 , 4 )
			end
		end
	end
	local el2= math.random ( 1, 7 )
	if   count == 2 then
		if el2==7 then
			local r1 = 0
			local r2 = 0	
				r1,r2 =MakeItem ( role , 2903  , 1 , 4 )
			local Item_boy = GetChaItem ( role , 2 , r2 )	
			local new_el=math.random ( 1, 1000 )

			SetItemAttr( Item_boy , ITEMATTR_VAL_STR , new_el )
		else
			local el3 = math.random ( 1, 12 )
			if el3==1  then
				GiveItem ( role , 0 , 3343  , 1 , 4 )
			elseif el3==2 then
				GiveItem ( role , 0 , 3077  , 1 , 4 )	
			else
				local EID = math.random ( 4264, 4273 )
				GiveItem ( role , 0 , EID  , 1 , 4 )
			end
		end
	end
end

--Сундук свадебной одежды
function ItemUse_MarryBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"you need at least 4 free slot to open Chest of Gown")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
		   GiveItem ( role , 0 , 5244  , 1 , 4 )
		   GiveItem ( role , 0 , 5245  , 1 , 4 )
		   GiveItem ( role , 0 , 5246  , 1 , 4 )
		   GiveItem ( role , 0 , 5247  , 1 , 4 )
	elseif cha_type == 4  then 
		   GiveItem ( role , 0 , 5252  , 1 , 4 )
		   GiveItem ( role , 0 , 5253  , 1 , 4 )
		   GiveItem ( role , 0 , 5254  , 1 , 4 )
		   GiveItem ( role , 0 , 5255  , 1 , 4 )
	elseif cha_type == 1 then 
		   GiveItem ( role , 0 , 5221  , 1 , 4 )
		   GiveItem ( role , 0 , 5222  , 1 , 4 )
		   GiveItem ( role , 0 , 5223  , 1 , 4 )
	elseif cha_type == 2 then 
		   GiveItem ( role , 0 , 5238  , 1 , 4 )
		   GiveItem ( role , 0 , 5239  , 1 , 4 )
		   GiveItem ( role , 0 , 5240  , 1 , 4 )
	end
end

--Подарок красоты
function ItemUse_JRDQBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 10 then
		SystemNotice(role ,"To open Gift of the Beauty requires at least 10 empty inventory slots")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	 if cha_type ==1 or cha_type ==2 then
	 SystemNotice(role ,"Gift of the Beauty can only be opened by female")
	UseItemFailed ( role )
		return
	end 
	
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=20 then
	GiveItem ( role , 0 , 3343  , 1 , 4 )
	elseif  el>=21 and el<=40 then
	GiveItem ( role , 0 , 3354  , 1 , 4 )
	GiveItem ( role , 0 , 3355  , 1 , 4 )
	GiveItem ( role , 0 , 3356  , 1 , 4 )
	GiveItem ( role , 0 , 3357  , 1 , 4 )
	GiveItem ( role , 0 , 3358  , 1 , 4 )
	GiveItem ( role , 0 , 3359  , 1 , 4 )
	elseif el>=41 and el<=45 then
	GiveItem ( role , 0 , 937  , 1 , 4 )
	elseif el>=46 and el<=65 then
	GiveItem ( role , 0 , 4264  , 1 , 4 )
	GiveItem ( role , 0 , 4265  , 1 , 4 )
	GiveItem ( role , 0 , 4266  , 1 , 4 )
	GiveItem ( role , 0 , 4267  , 1 , 4 )
	GiveItem ( role , 0 , 4268  , 1 , 4 )
	GiveItem ( role , 0 , 4269  , 1 , 4 )
	GiveItem ( role , 0 , 4270  , 1 , 4 )
	GiveItem ( role , 0 , 4271  , 1 , 4 )
	GiveItem ( role , 0 , 4272  , 1 , 4 )
	GiveItem ( role , 0 , 4273  , 1 , 4 )
	elseif el>=66 and el<=75 then
	GiveItem ( role , 0 , 3094  , 3 , 4 ) 
	elseif el>=76 and el<=85 then
	GiveItem ( role , 0 , 855  , 10 , 4 ) 
	elseif el>=86 and el<87 then
	GiveItem ( role , 0 , 1012  , 1 , 4 ) 
	elseif el>=87 and el<89 and cha_type == 3  then 
	GiveItem ( role , 0 , 5244  , 1 , 4 )
	GiveItem ( role , 0 , 5245  , 1 , 4 )
	GiveItem ( role , 0 , 5246  , 1 , 4 )
	GiveItem ( role , 0 , 5247  , 1 , 4 ) 
	elseif el>=89 and el<=90 and cha_type == 4 then
	GiveItem ( role , 0 , 5252  , 1 , 4 )
	GiveItem ( role , 0 , 5253  , 1 , 4 )
	GiveItem ( role , 0 , 5254  , 1 , 4 )
	GiveItem ( role , 0 , 5255  , 1 , 4 ) 
	else
	local EID = math.random ( 1808, 1811 ) 
	GiveItem ( role , 0 , EID  , 1 , 4 )
	end
end

function ItemUse_CJDQBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 10 then
		SystemNotice(role ,"you need at least 10 free slot to open Gift of the Hunk")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	 if cha_type ==3 or cha_type ==4 then
		SystemNotice(role ,"Gift of the Hunk can only be opened by male characters")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=20 then
	GiveItem ( role , 0 , 3077  , 1 , 4 )
	elseif  el>=21 and el<=40 then
	GiveItem ( role , 0 , 3354  , 1 , 4 )
	GiveItem ( role , 0 , 3355  , 1 , 4 )
	GiveItem ( role , 0 , 3356  , 1 , 4 )
	GiveItem ( role , 0 , 3357  , 1 , 4 )
	GiveItem ( role , 0 , 3358  , 1 , 4 )
	GiveItem ( role , 0 , 3359  , 1 , 4 ) 
	elseif el>=41 and el<=45 then
	GiveItem ( role , 0 , 0936  , 1 , 4 ) 
	elseif el>=46 and el<=65 then
	GiveItem ( role , 0 , 4264  , 1 , 4 )
	GiveItem ( role , 0 , 4265  , 1 , 4 )
	GiveItem ( role , 0 , 4266  , 1 , 4 )
	GiveItem ( role , 0 , 4267  , 1 , 4 )
	GiveItem ( role , 0 , 4268  , 1 , 4 )
	GiveItem ( role , 0 , 4269  , 1 , 4 )
	GiveItem ( role , 0 , 4270  , 1 , 4 )
	GiveItem ( role , 0 , 4271  , 1 , 4 )
	GiveItem ( role , 0 , 4272  , 1 , 4 )
	GiveItem ( role , 0 , 4273  , 1 , 4 )
	elseif el>=66 and el<=75 then
	GiveItem ( role , 0 , 3094  , 3 , 4 )
	elseif el>=76 and el<=85 then
	GiveItem ( role , 0 , 855  , 10 , 4 ) 
	elseif el>=86 and el<87 then
	GiveItem ( role , 0 , 0862  , 1 , 4 ) 
	elseif el>=87 and el<89 and cha_type == 1  then 
	GiveItem ( role , 0 , 5221  , 1 , 4 )
	GiveItem ( role , 0 , 5222  , 1 , 4 )
	GiveItem ( role , 0 , 5223  , 1 , 4 ) 
	elseif el>=89 and el<=90 and cha_type == 2 then
	GiveItem ( role , 0 , 5238  , 1 , 4 )
	GiveItem ( role , 0 , 5239  , 1 , 4 )
	GiveItem ( role , 0 , 5240  , 1 , 4 )
	else
	local EID = math.random ( 1808, 1811 )
	GiveItem ( role , 0 , EID  , 1 , 4 )
	end
end

--ID2906	Свадебные сладости
function ItemUse_XTBOX ( role , Item )
	local item_type = BoxXiang_BaoZhaBOX
	local item_type_rad = BoxXiang_BaoZhaBOX_Rad
	local item_type_count = BoxXiang_BaoZhaBOX_Count
	local maxitem = BoxXiang_baozhabao_Mxcount
	local item_quality = BoxXiang_baozhabao_Qua
	local General = 0  
	local ItemId = 0 
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Insufficient inventory slots. Failed to use Wedding Candy")
		UseItemFailed ( role )
		return
	end
	for i = 1 , maxitem , 1 do 
		General = item_type_rad [ i ] + General
	end 
	local a = math.random ( 1, General )
	local b = 0
	local d = 0 
	local c = -1
	for k = 1 , maxitem , 1 do
		d = item_type_rad [ k ] + b

		 if a <= d and a > b then
			c = k
			break		
		end 
		b = d 
	end 
	if c == -1 then 
		ItemId = 3124 
	else 
		ItemId = item_type [c]  
		ItemCount = item_type_count [c] 
	end
	GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
	local GoodItem = {}
	GoodItem[0] = 3111
	GoodItem[1] = 3110
	GoodItem[2] = 3112
	GoodItem[3] = 3886
	GoodItem[4] = 3093
	GoodItem[5] = 3090
	GoodItem[6] = 430
	GoodItem[7] = 179
	GoodItem[8] =3084
	GoodItem[9] =3085
	GoodItem[10] =0244
	GoodItem[11] =0250
	GoodItem[12] =0253
	GoodItem[13] =0260
	GoodItem[14] =0860
	GoodItem[15] =0861
	GoodItem[16] =0862
	GoodItem[17] =3458
	GoodItem[18] =0247
	GoodItem[19] =0271
	local Good_C = 0
	for Good_C = 0 , 19 , 1 do
		if ItemId == GoodItem[Good_C] then
			local cha_name = GetChaDefaultName ( role ) 
		end
	end
end

--Пакет со свадебными подарками
function ItemUse_HQBOXItemUse_HQBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 3 free slots to open Wedding Gift Parcel")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=20 then
	GiveItem ( role , 0 , 1012  , 1 , 4 ) 
	elseif el>=21 and el<=40 then
	GiveItem ( role , 0 , 1016  , 1 , 4 ) 
	elseif el>=41 and el<60 then
	GiveItem ( role , 0 , 0333  , 1 , 4 ) 
	elseif el>=61 and el<=100 then
	GiveItem ( role , 0 , 0273  , 1 , 4 )	
	end
end

--Сундук счастливой хрюшки
function ItemUse_XYPIGBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 4 empty slots to open Lucky Piggy Chest")
		UseItemFailed ( role )
		return
	end
	local el = math.random ( 1, 100 )
	if  el>=1 and el<=4 then
	GiveItem ( role , 0 , 1012  , 1 , 4 ) 
	elseif el==5  then
	GiveItem ( role , 0 , 1016  , 1 , 4 ) 
	elseif el>=6 and el<=30 then
	GiveItem ( role , 0 , 0861  , 1 , 4 ) 
	elseif el>=31 and el<=60 then
	GiveItem ( role , 0 , 885  , 1 , 4 )
	elseif el>=61 and el<=75 then
	GiveItem ( role , 0 , 0860  , 1 , 4 ) 
	elseif el>=76 and el<=88 then
	GiveItem ( role , 0 , 0862  , 1 , 4 ) 
	elseif el>=89 and el<=100 then
	GiveItem ( role , 0 , 0863  , 1 , 4 )
	end
end

--Мешок благополучия Пирата
function ItemUse_YSB( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"You need at least 1 empty slots to open Auspicious Bag")
		UseItemFailed ( role )
		return
	end
	local Now_Day = os.date("%d")
	local Now_Month = os.date("%m")
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	local NowDayNum = tonumber(Now_Day)
	local NowMonthNum = tonumber(Now_Month)
	local CheckDateNum = NowMonthNum * 10000 + NowDayNum * 100 + NowTimeNum
	local star = 0
	if CheckDateNum >= 21723  and CheckDateNum <= 21801 then
		ItemUse_YSBOX ( role , Item )
	else 
		SystemNotice(role ,"Не время открывать это!")
		UseItemFailed ( role )
		return
	end
end

--Сундук Хардина	
function ItemUse_Hadisi( role , Item )		
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 3 empty slots to open Chest of Hardin")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2817  , 1 , 4 )
	GiveItem ( role , 0 , 2818  , 1 , 4 )
	GiveItem ( role , 0 , 2819  , 1 , 4 )
end
--Сундук Тьмы	
function ItemUse_Anhei( role , Item )		
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 3 empty slots to open Chest of Darkness")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2820  , 1 , 4 )
	GiveItem ( role , 0 , 2821  , 1 , 4 )
	GiveItem ( role , 0 , 2822  , 1 , 4 )
end
--Сундук Аббадона
function ItemUse_Diyu( role , Item )		
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"To open a Chest of Abaddon requires at least 3 empty inventory slots")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2823  , 1 , 4 )
	GiveItem ( role , 0 , 2824  , 1 , 4 )
	GiveItem ( role , 0 , 2825  , 1 , 4 )
end
--Сундук Ассура
function ItemUse_Xiuluo( role , Item )		
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 3 free slots to open Chest of Asura")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2826  , 1 , 4 )
	GiveItem ( role , 0 , 2827  , 1 , 4 )
	GiveItem ( role , 0 , 2828  , 1 , 4 )
end
--Сундук Сикса
function ItemUse_Youming( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 3 empty slots to open Chest of Abyss")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2829  , 1 , 4 )
	GiveItem ( role , 0 , 2830  , 1 , 4 )
	GiveItem ( role , 0 , 2831  , 1 , 4 )
end

function ItemUse_Minghe( role , Item )		
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 3 empty inventory slots to open Chest of Styx")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2832  , 1 , 4 )
	GiveItem ( role , 0 , 2833  , 1 , 4 )
	GiveItem ( role , 0 , 2834  , 1 , 4 )
end
--Сундук Смерти
function ItemUse_Sishen( role , Item )		
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 2 then
		SystemNotice(role ,"To open the Carcass of Death requires at least 1 empty inventory slot")
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
	local star_rad=math.random ( 1, 2 )
	if lv < 40 then
		SystemNotice(role ,"Currently lower than Lv 40. Unable to use item!")
		UseItemFailed ( role )	
	elseif job == 9 then 
		if star_rad==1 then
			GiveItem ( role , 0 , 2331  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2332  , 1 , 4 ) 
		end
	elseif job == 8 then   
		if star_rad==1 then
			GiveItem ( role , 0 , 2333  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2334  , 1 , 4 ) 
		end
	elseif job == 12 then 
		local eleven_rad=math.random ( 1, 4 )
		if eleven_rad==1 then
			GiveItem ( role , 0 , 2337  , 1 , 4 ) 
		elseif eleven_rad==2 then
			GiveItem ( role , 0 , 2338  , 1 , 4 ) 
		elseif eleven_rad==3 then
			GiveItem ( role , 0 , 2339  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2340  , 1 , 4 ) 
		end
	elseif job == 16 then 
		if star_rad==1 then
			GiveItem ( role , 0 , 2335  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2336  , 1 , 4 ) 
		end
	elseif job == 13 then    
		if star_rad==1 then
			GiveItem ( role , 0 , 2341  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2342  , 1 , 4 ) 
		end
	elseif job == 14 then    
		if star_rad==1 then
			GiveItem ( role , 0 , 2343  , 1 , 4 ) 
		else
			GiveItem ( role , 0 , 2344  , 1 , 4 ) 
		end
	else 
		SystemNotice(role ,"Class mismatch. Item can only be used after second class advancement!")
		UseItemFailed ( role )	
	end
end
--Законный сундук Черного дракона
function ItemUse_Zhenheilong( role , Item )	
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"You need at least 4 empty slots to open Rightful Chest of Black Dragon")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2367  , 1 , 16 ) 
	GiveItem ( role , 0 , 2368  , 1 , 16 ) 
	GiveItem ( role , 0 , 2369  , 1 , 16 )
        local cha_type = GetChaTypeID ( role )
	if cha_type == 4 then 
		GiveItem ( role , 0 , 2370  , 1 , 16 )		
	end
end

--ID2941	Карта перерождения
function ItemUse_ZSCard(role, Item )
	local i = CheckBagItem(role,2941)
	local k = ChaIsBoat(role)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы использовать Карту перерождения нужен 1 свободный слот в Вашем инвентаре")
		UseItemFailed ( role )
		return
	end
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,2941,1)
			if j == 1 then
				SystemNotice(role, "Вы успешно применили Карту перерождения, пожалуйста найдите Ангела перерождения и следуйте дальнейшим инструкциям.")
				GiveItem ( role , 0 , 2235 , 1 , 42)
				GoTo( role,  1750 , 909 , "jialebi")
				return
			end
		end
	else
		UseItemsFailed ( role )
	end
end

--Проход к статуе
function ItemUse_moveDX(role, Item)
local i = CheckBagItem(role,2986)
 local Cha_Boat = 0
       Cha_Boat = GetCtrlBoat ( role )
	 if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Нельзя использовать в море" )
		UseItemFailed ( Cha_Boat )
		return
	 end
	 local reg = 0
		  reg =IsChaInRegion( role, 2 )
	 if reg == 1 then
		SystemNotice( role , "Нельзя использовать в безопасной зоне" )
		UseItemFailed ( role )
       return
	 end


 if GetChaGuildID(role) == 0 then
    SystemNotice( role , "You do not have a guild. Unable to use the pass" )
    UseItemFailed ( role )
    return
 end

local map_name_role = GetChaMapName ( role )
if map_name_role =="guildwar" then
	 if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 and map_name_role =="guildwar" then
			if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					MoveTo( role,  305, 87,  "guildwar" )
					return
				end
			end
								 

	 elseif GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 and map_name_role =="guildwar" then
			 if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					MoveTo( role,  309, 539,  "guildwar" )
					return
				end
			end
	 
	 else
			UseItemFailed ( role )
				  
	 end

elseif map_name_role =="guildwar2" then

	 if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 and map_name_role =="guildwar2"  then
				 if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					MoveTo( role,  305, 87,  "guildwar2" )
					return
				end
			end
			
	 elseif GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 and map_name_role =="guildwar2"  then
			 if i > 0 then
				local j = DelBagItem(role,2986,1)
				if j == 1 then
					 MoveTo( role,  309, 539,  "guildwar2" )
					return
				end
			end
	 
	 else
			UseItemFailed ( role )
		
   
end

else
        SystemNotice( role , "This ticket can only be used in Sacred War map" )
        UseItemFailed ( role )
        return
   end        
end

--Сундук с украшениями капитана овна
function ItemUse_CZBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"Нужно 4 слота")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 

		   GiveItem ( role , 0 , 5349  , 1 , 4 )
		   GiveItem ( role , 0 , 5350  , 1 , 4 )
		   GiveItem ( role , 0 , 5351  , 1 , 4 )
	elseif cha_type == 4  then 
		   GiveItem ( role , 0 , 5352  , 1 , 4 )
		   GiveItem ( role , 0 , 5353  , 1 , 4 )
		   GiveItem ( role , 0 , 5354  , 1 , 4 )
		   GiveItem ( role , 0 , 5355  , 1 , 4 )
	elseif cha_type == 1 then 
		  
		   GiveItem ( role , 0 , 5341  , 1 , 4 )
		   GiveItem ( role , 0 , 5342  , 1 , 4 )
		   GiveItem ( role , 0 , 5343  , 1 , 4 )
	elseif cha_type == 2 then 
		   
		   GiveItem ( role , 0 , 5345  , 1 , 4 )
		   GiveItem ( role , 0 , 5346  , 1 , 4 )
		   GiveItem ( role , 0 , 5347  , 1 , 4 )
	end
end

--Грандиозный подарок опыта
function ItemUse_Foolish ( role , Item )
	local charLv=Lv ( role )
	local Cha_Boat = 0
		Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Exp_el=GetChaAttr (  role , ATTR_CEXP )
	local dif_exp_thalf_c = (DEXP[charLv+1] - DEXP[charLv])*0.03+Exp_el 
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_c )
	
end

--Свиток хранителя Белой овцы
function ItemUse_BYSHJZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local star = 0
	star =IsChaInRegion( role, 2 )
	if star == 1 then
		SystemNotice( role , "Невозможно призвать монстра в безопасной зоне" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1009
	local Refresh = 3700					
	local life = 3600000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

---Знаменитый кекс
function ItemUse_NiceCake (role, Item )
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( role,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( role , "У вас нет медали отваги")
		UseItemFailed ( role )
		return 0
		end
	local Book2 =  GetChaItem2 ( role , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
	local el_fame = GetChaAttr(role, ATTR_FAME)
		if HonorPoint < 27000 and el_fame < 99990001 then
		local HonorPoint_X=HonorPoint+math.random(1,100)
		SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
		local fame_resume = math.random(1,150)
		el_fame = el_fame + fame_resume
		SetCharaAttr(el_fame, role, ATTR_FAME)
		else 
		SystemNotice( role , "Много очков чести или репутации")
		UseItemFailed ( role )
		end
end

--ID 3039	Машина прогресса
function ItemUse_TJQ ( role , Item )
	local lv= GetChaAttr(role, ATTR_LV) 
	if lv >70 then
		SystemNotice ( role , "Машину прогресса могут использовать только игроки не достигшие 70 уровня." )
		UseItemFailed ( role )
		return
	end
	local statelv = 4
	local ChaStateLv = GetChaStateLv ( role , STATE_SBJYGZ )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--Сундук с украшениями Капитана Тельца
function ItemUse_JNCZBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"You need at least 4 space to use the Taurus Apparel Chest")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
		   GiveItem ( role , 0 , 5364  , 1 , 4 )
		   GiveItem ( role , 0 , 5365  , 1 , 4 )
		   GiveItem ( role , 0 , 5366  , 1 , 4 )
		   GiveItem ( role , 0 , 5367  , 1 , 4 )
	elseif cha_type == 4  then 
		   GiveItem ( role , 0 , 5368  , 1 , 4 )
		   GiveItem ( role , 0 , 5369  , 1 , 4 )
		   GiveItem ( role , 0 , 5370  , 1 , 4 )
		   GiveItem ( role , 0 , 5371  , 1 , 4 )
	elseif cha_type == 1 then 
		   GiveItem ( role , 0 , 5356  , 1 , 4 )
		   GiveItem ( role , 0 , 5357  , 1 , 4 )
		   GiveItem ( role , 0 , 5358  , 1 , 4 )
		   GiveItem ( role , 0 , 5359  , 1 , 4 )
	elseif cha_type == 2 then
		   GiveItem ( role , 0 , 5360  , 1 , 4 )
		   GiveItem ( role , 0 , 5361  , 1 , 4 )
		   GiveItem ( role , 0 , 5362  , 1 , 4 )
		   GiveItem ( role , 0 , 5363  , 1 , 4 )
	end
end

--Свитки призыва
--Свиток вызова Босса
function ItemUse_NSSN ( role , Item  )
	local cha_name = GetChaDefaultName ( role )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local star = 0
	star =IsChaInRegion( role, 2 )
	if star == 1 then
		SystemNotice( role , "Невозможно призвать монстра в безопасной зоне" )
		UseItemFailed ( role )
		return
	end
	local x=213200
	local y=271200
	local MonsterID = 857
	local Refresh = 3700					
	local life = 3600000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

--Призыв большого босса
function ItemUse_SummonBigBOSS(role, Item )
local map_name_role = GetChaMapName ( role )
local Cha_Boat = 0
      Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( Cha_Boat , "Нельзя использовать в море" )
		UseItemFailed ( Cha_Boat )
		return
	end
	local reg = 0
		  reg =IsChaInRegion( role, 2 )
	if reg == 1 then
		SystemNotice( role , "Нельзя использовать в безопасной зоне" )
		UseItemFailed ( role )
       return
	end
   if  map_name_role == "guildwar" then
	local x,y = GetChaPos(role)
	if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
	local MonsterID = 1007
	local Refresh = 1300					
	local life = 1200000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,1)
	end
	if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
	local MonsterID = 1008
	local Refresh = 1300					
	local life = 1200000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,2)
	end
   elseif map_name_role == "guildwar2" then 
    local x,y = GetChaPos(role)
	if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
	local MonsterID = 1007
	local Refresh = 1300					
	local life = 12600000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,1)
	end
	if GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
	local MonsterID = 1008
	local Refresh = 1300					
	local life = 1200000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh,role )
	SetChaLifeTime( new, life )
	SetChaSideID(new,2)
	end
    else 
        SystemNotice( role , "Можно использовать только в войне гильдий" )
        UseItemFailed ( role )
        return
    end
end

--монолит
function ItemUse_MonsterSummon ( role , Item )
 local Cha_Boat = GetCtrlBoat ( role )
 local atk_name = GetChaDefaultName ( role )
 local map_name = GetChaMapName ( role )
 local Guild_ID = GetChaGuildID(role)
 local Guild_name = GetGuildName( Guild_ID )
 local now_hour= os.date("%H")		-- Hour Scripts
 local now_day=  os.date("%w")		-- Secs Scripts
 local now_mon=  os.date("%m")		-- Secs Scripts
 now_hour= tonumber(now_hour)
 now_mon= tonumber(now_mon) 
 local MonsterID=1473    
 local Refresh = 1000000
 local life = 3600000
 local newlife = (60-now_mon)*60*60
 
 --Запрет на море
 if Cha_Boat ~=  nil then
		 SystemNotice( role , "Нельзя использовать в море" )
		 UseItemFailed ( role )
		 return
	 end
  
  --Запрет на карту
  if map_name ~="garner" or map_name ~="darkblue" or map_name ~="magicsea" then
		
 
 --Запрет на время
 if ((now_hour == 21 and now_day==0 ) or (now_hour == 21 and now_day==6 ) or  (now_hour == 21 and now_day==5 )) and (now_mon<=15) then
		 
		
	--Запрет для одного использования
if garn == 1 or dablu == 1 or mablu == 1 then
	if garn == 1 and dablu==0  and mablu == 0 then
		 SystemNotice( role , "Монолит уже вызван на территории Аскарона" )
	elseif arn == 0 and dablu == 0  and mablu == 1 then
		 SystemNotice( role , "Монолит уже вызван на территории Великого синего океана" )
	elseif arn == 0 and dablu == 1  and mablu == 0 then
		SystemNotice( role , "Монолит уже вызван на территории Магического океана" )
	end
	UseItemFailed ( role )
		 return
end
	--Призыв
if     map_name =="garner" then
			
			garn=1
			local x = 68500
			local y = 282000
			local xx = 685
			local yy = 2820
			local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
			
			SetChaLifeTime( new, newlife )
			if Guild_ID == 0 or Guild_ID == nil then 
				TerrGarnSol = atk_name
				message = "На территории Аскарона началась <Битва за территорию>, Монолит призвал: "..atk_name.. " Кооридинаты нахождения Монолита <"..xx..","..yy.."> "
			else 
				TerrGarn = Guild_name
				message = "На территории Аскарона началась <Битва за территорию>, Монолит призвал: "..atk_name..", Гильдия защищающая Монолит :  "..Guild_name .. " Кооридинаты нахождения Монолита <"..xx..","..yy.."> "
			end
elseif map_name =="darkblue" then
			dablu =1
			local x = 98700
			local y = 36600
			local xx = 987
			local yy = 366
			local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
			SetChaLifeTime( new, newlife )
			if Guild_ID == 0 or Guild_ID == nil then 
				TerrDarkSol = atk_name
				message = "На территории Великого синего океана началась <Битва за территорию>, Монолит призвал: "..atk_name.. " Кооридинаты нахождения Монолита <"..xx..","..yy.."> "
			else 
				TerrDark = Guild_name
				message = "На территории Великого синего океана началась <Битва за территорию>, Монолит призвал: "..atk_name..", Гильдия защищающая Монолит :  "..Guild_name.. " Кооридинаты нахождения Монолита <"..xx..","..yy.."> "
			end
elseif map_name =="magicsea" then
			mablu=1
			local x = 87100
			local y = 329600
			local xx = 871
			local yy = 3296
			local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
			SetChaLifeTime( new, newlife )
			if Guild_ID == 0 or Guild_ID == nil then 
				TerrMagiSol = atk_name
				message = "На территории Магического океана началась <Битва за территорию>, Монолит призвал: "..atk_name.. " Кооридинаты нахождения Монолита <"..xx..","..yy.."> "
			else 
				TerrMagi = Guild_name
				message = "На территории Магического океана началась <Битва за территорию>, Монолит призвал: "..atk_name..", Гильдия защищающая Монолит :  "..Guild_name.. " Кооридинаты нахождения Монолита <"..xx..","..yy.."> "
			end
 end
	 Notice ( message )
	  
	  else
		 SystemNotice( role , "Можно использовать только в пятницу, субботу и воскресенье c 21.00 до 21.15" )
		 UseItemFailed ( role )
		 return
	end
else
		 SystemNotice( role , "Можно использовать только на территории Аскарона, Магического океана, Великого синего океана" )
		 UseItemFailed ( role )
		 return
  end
  LG("Осада","Карта: "..map_name.."  Вызвал: "..atk_name)
end

---Свиток призвания чудища
function ItemUse_GWZHQ ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <=3 then
		SystemNotice(role ,"Нужно 4 свободных слота")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2888  , 1 , 4) 
	GiveItem ( role , 0 , 2889  , 1 , 4)
	GiveItem ( role , 0 , 2890  , 1 , 4)
	GiveItem ( role , 0 , 2891  , 1 , 4)
end
--Индюшка
function ItemUse_HJZHQ ( role , Item  )
	local Cha_Boat = GetCtrlBoat ( role )
	local StateLvNow = GetChaStateLv(role,PET_EFFECT_ID)
	local pet_num = GetPetNum(role) -- кол-во питомцев
	local x, y = GetChaPos(role) -- получаем координаты персонажа
	local pet_item = GetChaItem(role, 2, 3)-- получаем доступ к предмету в 4 ячейке
	local item_id = GetItemID(pet_item)	-- Получаем ID предмета в этом слоте
	local pet_id = PET_TYPE[item_id]    -- PET_TYPE - см. массив в variable.lua
	local pet = GetChaHost(role)             -- Получаем доступ к питомцу		
	local dist = get_distance(role, pet)     -- Получаем расстояние от питомца до персонажа
	RefreshCha(role)

	
	if (StateLvNow >= 1) then
		SystemNotice(role, "Питомец уже призван ")
		UseItemFailed ( role )
		return
	end

	if Cha_Boat ~=  nil then
		SystemNotice( role , "Нельзя использовать в море" )
		UseItemFailed ( role )
		return
	end
	
	if (item_id == 8642) or (item_id == 8612) or (item_id== 8643) or (item_id == 8644) or (item_id == 8645) then
	local Refresh = 18000
	local life = 68000
	  
	if(PET_TYPE[item_id] ~= nil) then
		local new = CreateChaX( pet_id , x , y , 145 , Refresh, role )	
		SetChaHost(new,role)--привязываем к персонажу
		SetChaAIType(pet, AI_PET)
		SetChaLifeTime( new, life )--время жизни
		SetChaTarget(new, role)--цель персонаж
		PlayEffect( role, 361 )
		AddState(role, role, PET_EFFECT_ID, 1, 180)--добавляем статы
	else
		 SystemNotice( role , "Положи питомца в 4 ячейку" )
		 UseItemFailed ( role )
		 return
	 end
	
 end
	
	ALLExAttrSet(role)
end

function ItemUse_MLZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Нельзя использовать в море" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "Максимально 5 питомцев, попробуйте позже" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =931
	local Refresh = 3600					
	local life = 3600000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

function ItemUse_XRZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Нельзя использовать в море" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "Максимально 5 питомцев, попробуйте позже" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =932
	local Refresh = 7200					
	local life = 7200000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

function ItemUse_SDZHQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Нельзя использовать в море" )
		UseItemFailed ( role )
		return
	end
	local pet_num = GetPetNum(role)
	if pet_num >= 5 then
		SystemNotice( role , "Максимально 5 питомцев, попробуйте позже" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	x_resume = 5
	y_resume = 5
	x = x + x_resume
	y = y + y_resume
	local MonsterID =929
	local Refresh = 10800					
	local life = 10800000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaHost(new,role)
	SetChaLifeTime( new, life )
	SetChaTarget(new, role)
	PlayEffect( new, 361 )
end

function ItemUse_SDDLB ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <=5 then
		SystemNotice(role ,"You require at least 6 empty inventory slots. Failed to open Christmas Box.")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 2894  , 1 , 4) 
	GiveItem ( role , 0 , 2893  , 10 , 4) 
	GiveItem ( role , 0 , 2889  , 1 , 4) 
	GiveItem ( role , 0 , 2890 , 1 , 4) 
	GiveItem ( role , 0 , 2891  , 1 , 4) 
	GiveItem ( role , 0 , 2896  , 99 , 4) 
end

--Вызов брачного афериста
function ItemUse_FLOWER ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Невозможно призвать монстра в безопасной зоне" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1037
	local Refresh = 7300					
	local life = 7200000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

function ItemUse_SZSHZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Невозможно призвать монстра в безопасной зоне" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1039
	local Refresh = 10900					
	local life = 3600000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

function ItemUse_JNSHZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Невозможно призвать монстра в безопасной зоне" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1038
	local Refresh = 10900					
	local life = 3600000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end
--
function ItemUse_HLHT ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Невозможно призвать монстра в безопасной зоне" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 952
	local Refresh = 9000					
	local life =9000000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end
--
function ItemUse_XYZSTL ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Невозможно призвать монстра в безопасной зоне" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 786
	local Refresh = 9000					
	local life = 9000000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end
--
function ItemUse_XETZQZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Невозможно призвать монстра в безопасной зоне" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 788
	local Refresh = 9000					
	local life = 9000000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end
--
function ItemUse_HDCZ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Невозможно призвать монстра в безопасной зоне" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 757
	local Refresh = 9000					
	local life = 9000000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

function ItemUse_HY ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Невозможно призвать монстра в безопасной зоне" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 761
	local Refresh = 9000					
	local life = 9000000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

--Монолит

--Свитки призыва конец

--Сундук карты удачи
function ItemUse_XingYunBox( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Inventory requires at least 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local el=math.random ( 1, 241920 )
	if el==1 then
		GiveItem ( role , 0 , 0961, 1 , 4  ) 
	elseif el==2 then
		GiveItem ( role , 0 , 0969, 1 , 4  ) 		
	elseif el>=3 and el<=4 then
		GiveItem ( role , 0 , 0973, 1 , 4  )		
	elseif el>=5 and el<=6 then
		GiveItem ( role , 0 , 0980, 1 , 4  )	
	elseif el>=7 and el<=8 then
		GiveItem ( role , 0 , 0979, 1 , 4  )	
	else
		local el=math.random ( 0959, 0984 )
		if el==0961 or el==0969 or el==0973 or el==0980 or el==0979 then
			GiveItem ( role , 0 , 0959  , 1 , 4  ) 
		else 
			GiveItem ( role , 0 , el , 1 , 4  ) 			
		end
	end
end
--Фастфуд
function ItemUse_CZKC ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )
	local dif_exp_thalf_c = (DEXP[charLv+1] - DEXP[charLv])*0.01+Exp_star
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	if charLv<86 then
		SystemNotice( role , "Нельзя маленьким" )
		UseItemFailed ( role )
		return
	end
	if charLv>=86 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf_c )
        end
end
--Сундук Золотого Воина
function ItemUse_SZCZBox ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"Нет места")
		UseItemFailed ( role )
		return
	end
	local cha_type = GetChaTypeID ( role ) 
	if cha_type == 3  then 
		   GiveItem ( role , 0 , 5380  , 1 , 4 )
		   GiveItem ( role , 0 , 5381  , 1 , 4 )
		   GiveItem ( role , 0 , 5382  , 1 , 4 )
		   GiveItem ( role , 0 , 5383  , 1 , 4 )
	elseif cha_type == 4  then 
		   GiveItem ( role , 0 , 5384  , 1 , 4 )
		   GiveItem ( role , 0 , 5385  , 1 , 4 )
		   GiveItem ( role , 0 , 5386  , 1 , 4 )
		   GiveItem ( role , 0 , 5387  , 1 , 4 )
	elseif cha_type == 1 then 
		   GiveItem ( role , 0 , 5372  , 1 , 4 )
		   GiveItem ( role , 0 , 5373  , 1 , 4 )
		   GiveItem ( role , 0 , 5374  , 1 , 4 )
		   GiveItem ( role , 0 , 5375  , 1 , 4 )
	elseif cha_type == 2 then
		   GiveItem ( role , 0 , 5376  , 1 , 4 )
		   GiveItem ( role , 0 , 5377  , 1 , 4 )
		   GiveItem ( role , 0 , 5378  , 1 , 4 )
		   GiveItem ( role , 0 , 5379  , 1 , 4 )
	end
end

---Набор снаряжения босс 65 уровня
function ItemUse_65BBBox ( role , Item )
	local job = GetChaAttr( role, ATTR_JOB) 
        local cha_type = GetChaTypeID ( role )
	if job == 0 then
		SystemNotice ( role , "Возьми профессию")
		UseItemFailed ( role )
		return
	else
		if job == 12 or job == 2 then		
			GiveItem( role , 0 , 780  , 1 , 4 )
		elseif job == 9	then			
			GiveItem( role , 0 , 769  , 1 , 4 )
		elseif job == 16 or job == 4 then	
			GiveItem( role , 0 , 806  , 1 , 4 )
		elseif job == 8	then			
			GiveItem( role , 0 , 766  , 1 , 4 )
		elseif job == 13 or job == 5 then	
			GiveItem( role , 0 ,792  , 1 , 4 )
		elseif job == 14 then			
			GiveItem( role , 0 , 798  , 1 , 4 )
		elseif job == 1 then
			if cha_type == 1 then
				GiveItem( role , 0 , 769  , 1 , 4 )
			elseif cha_type == 2 then
				GiveItem( role , 0 , 766  , 1 , 4 )
			end
		end
	
	end
end

--Навык - Ученичество
function Sk_Script_DS ( role , Item ) 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		UseItemFailed ( role ) 
		SystemNotice( role , "Освободи место, нужен один слот!")
		return 
	end 
	local sk_add = SK_DS  
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 				
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
	local r1 = 0
	local r2 = 0
	r1, r2 = MakeItem ( role , 3289 , 1 , 4 )				
	local Itemnew = GetChaItem ( role , 2 , r2 )
	SetItemAttr(Itemnew, ITEMATTR_MAXENERGY , 120)  
	SetItemAttr(Itemnew, ITEMATTR_ENERGY , 0 )     				 
	SetItemAttr(Itemnew, ITEMATTR_URE,0)								 
	SetItemAttr(Itemnew, ITEMATTR_MAXURE,150)						
	SetItemAttr(Itemnew, ITEMATTR_FORGE,0)								
	LiveSkillLearnLog(role, 461)
end 

--Фрукт разума
function ItemUse_WisdomApple( role , Item )		
	local Lv = Lv( role )
	if Lv < 40 then
		SystemNotice(role ,"Для игроков меньше 40 уровня")
		UseItemFailed ( role )
		return
	end
	local statelv = 1
	local ChaStateLv = GetChaStateLv ( role , STATE_APPLE )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )

	if Cha_Boat ==  nil then
		AddState( role , role , STATE_APPLE , statelv , statetime )
	else
		UseItemFailed ( role )
		SystemNotice( role , "На коробе нельзя использовать")
	end
end

--Золотое яблоко
function ItemUse_GoldApple ( role , Item )
	local Lv = Lv( role )
	if Lv < 60 then
		SystemNotice(role ,"Для игроков меньше 60 уровня")
		UseItemFailed ( role )
		return
	end
	local statelv = 2
	local ChaStateLv = GetChaStateLv ( role , STATE_APPLE )
	if ChaStateLv >= statelv then
		SystemNotice ( role , "Более эффективное или аналогичное средство уже используется" )
		UseItemFailed ( role )
		return
	end
	local statetime = 1800
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_APPLE , statelv , statetime )
	else
		UseItemFailed ( role )
		SystemNotice( role , "Невозможно использовать на море")
	end
end

--Гостевой сундук
function ItemUse_JBBOX( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <1 then
		SystemNotice(role ,"To open a Chest requires 1 empty slot")
		UseItemFailed ( role )
		return
	end
	local r1,r2 =MakeItem ( role , 3078  , 1 , 4 )
	local Item_el = GetChaItem ( role , 2 , r2 )			
	local item_old = GetChaItem2 ( role , 2 , 3066 )
	local old_month = GetItemAttr(item_old, ITEMATTR_VAL_STA)			
	local old_day = GetItemAttr(item_old, ITEMATTR_VAL_STR)			  
	local old_hour = GetItemAttr(item_old, ITEMATTR_VAL_CON)			  
	local old_miniute = GetItemAttr(item_old, ITEMATTR_VAL_DEX)		 
	SetItemAttr(Item_el, ITEMATTR_VAL_STA, old_month )	 	
	SetItemAttr(Item_el, ITEMATTR_VAL_STR, old_day )		  
	SetItemAttr(Item_el, ITEMATTR_VAL_CON, old_hour )		 
	SetItemAttr(Item_el, ITEMATTR_VAL_DEX, old_miniute )	
	local old_month2 = GetItemAttr(Item_el, ITEMATTR_VAL_STA)			
	local old_day2 = GetItemAttr(Item_el, ITEMATTR_VAL_STR)			
	local old_hour2 = GetItemAttr(Item_el, ITEMATTR_VAL_CON)			
	local old_miniute2 = GetItemAttr(Item_el, ITEMATTR_VAL_DEX)		
	SynChaKitbag(role,13)
end

--Салют
function ItemUse_JXYH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

--Салют
function ItemUse_HHLH ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
end

---Расписка на Игру с Шариками
function ItemUse_QQ ( role , Item  )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local el = 0
	el =IsChaInRegion( role, 2 )
	if el == 1 then
		SystemNotice( role , "Невозможно призвать монстра в безопасной зоне" )
		UseItemFailed ( role )
		return
	end
	local x, y = GetChaPos(role)
	local MonsterID = 1036
	local Refresh = 60					
	local life = 7200000					
	local new = CreateChaX( MonsterID , x , y , 145 , Refresh, role )
	SetChaLifeTime( new, life )
end

--Пакет
function ItemUse_RedBox( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		SystemNotice(role ,"Ошибка")
		UseItemFailed ( role )
		return
	end
	local now_week= os.date("%w")		 
	local now_hour= os.date("%H")		 
	local now_miniute= os.date("%M")	
	now_week= tonumber(now_week)
	now_hour= tonumber(now_hour)		
	now_miniute= tonumber(now_miniute)
	local CheckDateNum = now_hour*100 +now_miniute
	local flag=0
      if now_week==6 or now_week==0 then
		flag=1
      end
	if 1800<=CheckDateNum and  CheckDateNum<=2210 and flag==1 then
		ItemUse_hongbaoBOX ( role , Item )
	else 
		SystemNotice(role ,"Не время!")
		UseItemFailed ( role )
		return
	end
end

-- Книга Сброса Умений (id 2216)
function ItemUse_XiDianBook ( role , item )
	local zsskill_lv  = {}
	zsskill_lv [0] = GetSkillLv ( role, 453 )
	zsskill_lv [1] = GetSkillLv ( role, 454 )
	zsskill_lv [2] = GetSkillLv ( role, 455 )
	zsskill_lv [3] = GetSkillLv ( role, 456 )
	zsskill_lv [4] = GetSkillLv ( role, 457 )
	zsskill_lv [5] = GetSkillLv ( role, 458 )
	local n = 0
	local item_canget = GetChaFreeBagGridNum ( role )
	local QLZX = GetSkillLv ( role, SK_QLZX )
	if item_canget < 2 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно использовать предмет")
		UseItemFailed ( role )
	else
		for i = 0, 5, 1 do
			if zsskill_lv [i] >= 1 then
				n = n+1
			end
		end
		local cha_skill_num=GetChaAttr(role, ATTR_TP  )
		local clear_skill_num=ClearFightSkill(role)
		cha_skill_num=cha_skill_num+clear_skill_num
		if n > 0 then
			local job = GetChaAttr( role, ATTR_JOB)
			local item_id = {}
			item_id [8] = 2957
			item_id [9] = 2956
			item_id [12] = 2961
			item_id [13] = 2959
			item_id [14] = 2958
			item_id [16] = 2960
			GiveItem ( role, 0, item_id [job] , 1, 4)
			GiveItem ( role, 0, 1572, 1, 4)
			cha_skill_num = cha_skill_num - 2
		end
		if QLZX == 1 then
			AddChaSkill ( role , SK_QLZX , 1 , 1 , 0 )
		end
		
		local lv = Lv ( role ) 
		local cha_type = GetChaTypeID ( role )
		
		if cha_type == 3 or cha_type==4 then 
			if lv >= 20 and lv <=39 then
			 cha_skill_num = cha_skill_num + 1
			end
			if lv >= 40 and lv <=59 then
			cha_skill_num = cha_skill_num + 2
			end
			if lv >= 60 and lv<=100 then
			cha_skill_num = cha_skill_num + 3
			end
		end
		
		SetChaAttr(role, ATTR_TP ,cha_skill_num ) 
	end
end

-- Сундук с монетами фей (id 1872)
function ItemUse_YingbiBox ( role , Item )
	local map_name_role = GetChaMapName ( role )
	if map_name_role == "darkblue" then
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv >= 10 then
			local Item_CanGet = GetChaFreeBagGridNum ( role )
			if Item_CanGet < 4 then
				SystemNotice(role ,"Требуется 4 свободные ячейки в инвентаре, чтобы открыть Сундук с монетами фей")
				UseItemFailed ( role )
				return
			end
			local ChaName = GetChaDefaultName(role)
			if PlayUseBox1[ChaName] == nil then
				PlayUseBox1[ChaName] = 0
			end
			local Use_Num = PlayUseBox1[ChaName]
			local now_day= os.date("%d")
			local now_month= os.date("%m")
			now_month= tonumber(now_month)
			now_day = tonumber(now_day)
			local Date = JNSTime_Flag[now_month]+now_day
			local Yingbi_Num = 0
			if Use_Num == 0 then
				local Time = 1
				Use_Num = Date * 10 + Time
				Yingbi_Num = 20
				local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
					if j == 1 then
						PlayUseBox1[ChaName] = Use_Num
						GiveBragiItem ( role , 1 )
						GiveItem ( role , 0 , 1872 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "Требуется 20 монет фей")
					end
			else
				local Date_Box = math.floor ( Use_Num / 10 )
				local a = Date - Date_Box
				local Time = Use_Num - Date_Box * 10
				if a == 0 then
					Use_Num = Use_Num +1
					local time_new = Time + 1
					if time_new >= 1 and time_new <= 3 then
						Yingbi_Num = (time_new*5) + 15

						local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
						if j == 1 then
							GiveBragiItem ( role , 1 )
							PlayUseBox1[ChaName] = Use_Num
							GiveItem ( role , 0 , 1872 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "Недостаточно монет фей")
						end
					elseif time_new >= 4 and time_new <= 6 then
						Yingbi_Num = Time * 15
						local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
						if j == 1 then
							GiveBragiItem ( role , 2 )
							PlayUseBox1[ChaName] = Use_Num
							GiveItem ( role , 0 , 1872 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "Недостаточно монет фей")
						end
					else
						Yingbi_Num = 99
						local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
						if j == 1 then
							GiveBragiItem ( role , 3 )
							PlayUseBox1[ChaName] = Use_Num
							GiveItem ( role , 0 , 1872 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "Недостаточно монет фей")
						end
					end
				elseif a == -1 then
					UseItemFailed ( role )
					SystemNotice ( role , "Сундук с монетами Фей можно открывать только 10 раз в день")
				else
					local Time = 1
					Use_Num = Date * 10 + Time
					Yingbi_Num = 20
					local j = TakeItem ( role , 0 , 855 , Yingbi_Num )
					if j == 1 then
						PlayUseBox1[ChaName] = Use_Num
						GiveBragiItem ( role )
						GiveItem ( role , 0 , 1872 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "Недостаточно монет фей")
					end
				end
			end
		else
			SystemNotice( role , "Только игроки уровня 10 и выше могут открывать Сундук с монетами Фей")
			UseItemFailed ( role )
		end
	else
		SystemNotice( role , "Сундук с монетами Фей можно открывать только на территории Великого Синего Океана")
		UseItemFailed ( role )
	end
end

-- Запечатанный сундук фей (id 1570)
function ItemUse_HuiYinBox ( role, Item )

	local map_name_role = GetChaMapName ( role )
	if map_name_role == "darkblue" then
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv >= 45 then
			local Item_CanGet = GetChaFreeBagGridNum ( role )
			if Item_CanGet < 2 then
				SystemNotice(role ,"Требуется 2 свободные ячейки в Вашем инвентаре, чтобы открыть Запечатанный сундук фей")
				UseItemFailed ( role )
				return
			end
			local ChaName = GetChaDefaultName(role)
			if PlayUseBox2[ChaName] == nil then
				PlayUseBox2[ChaName] = 0
			end
			local Use_Num = PlayUseBox2[ChaName]
			local now_day= os.date("%d")
			local now_month= os.date("%m")
			now_month= tonumber(now_month)
			now_day = tonumber(now_day)
			local Date = JNSTime_Flag[now_month]+now_day
			if Use_Num == 0 then
				local Time = 1
				Use_Num = Date * 10 + Time
				local j = TakeItem ( role , 0 , 2588 , 10 )
				if j == 1 then
					PlayUseBox2[ChaName] = Use_Num
					GiveItem ( role , 0 , 3107 , 3 , 4 )
					GiveItem ( role , 0 , 1570 , 1 , 4 )
				else
					UseItemFailed ( role )
					SystemNotice( role, "Недостаточно Эльфийских печатей")
				end
			else
				local Date_Box = math.floor ( Use_Num / 10 )
				local a = Date - Date_Box
				local Time = Use_Num - Date_Box * 10
				if a == 0 then
					local time_new = Time + 1
					-- Светильник
					if time_new == 1 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 10 )
						if j == 1 then
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 3107 , 3 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "Недостаточно Эльфийских печатей")
						end
					-- Экспа
					elseif time_new == 2 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 20 )
						if j == 1 then
							PlayUseBox2[ChaName] = Use_Num
							XSAddExpAll ( role , 5 , 5, 2)
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "Недостаточно Эльфийских печатей")
						end
					-- Зелье легкости
					elseif time_new == 3 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 30 )
						if j == 1 then
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 850 , 1 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "Недостаточно Эльфийских печатей")
						end
					-- Полный доспех
					elseif time_new == 4 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2588 , 40 )
						if j == 1 then
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 852 , 4 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "Недостаточно Эльфийских печатей")
						end
					-- Боевой строй
					elseif time_new == 5 then
						Use_Num = ( Date + 1 )*10
						local j = TakeItem ( role , 0 , 2588 , 50 )
						if j == 1 then
							PlayUseBox2[ChaName] = Use_Num
							GiveItem ( role , 0 , 851 , 5 , 4 )
							GiveItem ( role , 0 , 1570 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "Недостаточно Эльфийских печатей")
						end
					end
				elseif a == -1 then
					UseItemFailed ( role )
					SystemNotice ( role , "Запечатанный сундук фей можно открывать только 5 раз в день")
				else
					local Time = 1
					Use_Num = Date * 10 + Time
					local j = TakeItem ( role , 0 , 2588 , 10 )
					if j == 1 then
						PlayUseBox2[ChaName] = Use_Num
						GiveItem ( role , 0 , 3107 , 3 , 4 )
						GiveItem ( role , 0 , 1570 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "Недостаточно Эльфийских печатей")
					end
				end
			end
		else
			SystemNotice( role , "Только игроки уровня 45 и выше могут открывать Запечатанный сундук фей")
			UseItemFailed ( role )
		end
	else
		SystemNotice( role , "Запечатанный сундук фей можно открывать только на территории Великого Синего Океана")
		UseItemFailed ( role )
	end
end

-- Запечатанный сундук повелителя фей (id 1571)
function ItemUse_HuiYinKBox ( role, Item )

	local map_name_role = GetChaMapName ( role )
	if map_name_role == "darkblue" then
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv >= 70 then
			local Item_CanGet = GetChaFreeBagGridNum ( role )
			if Item_CanGet < 2 then
				SystemNotice(role ,"Требуется 2 свободные ячейки в инвентаре, чтобы открыть Запечатанный сундук повелителя фей")
				UseItemFailed ( role )
				return
			end
			local ChaName = GetChaDefaultName(role)
			if PlayUseBox3[ChaName] == nil then
				PlayUseBox3[ChaName] = 0
			end
			local Use_Num = PlayUseBox3[ChaName]
			local now_day= os.date("%d")
			local now_month= os.date("%m")
			now_month= tonumber(now_month)
			now_day = tonumber(now_day)
			local Date = JNSTime_Flag[now_month]+now_day
			if Use_Num == 0 then
				local Time = 1
				Use_Num = Date * 10 + Time
				local j = TakeItem ( role , 0 , 2589 , 1 )
				if j == 1 then
					PlayUseBox3[ChaName] = Use_Num
					GiveItem ( role , 0 , 850 , 1 , 4 )
					GiveItem ( role , 0 , 3107 , 1 , 4 )
					GiveItem ( role , 0 , 851 , 1 , 4 )
					GiveItem ( role , 0 , 852 , 1 , 4 )
					GiveItem ( role , 0 , 1571 , 1 , 4 )
				else
					UseItemFailed ( role )
					SystemNotice( role, "Недостаточно Эльфийских королевских печатей")
				end
			else
				local Date_Box = math.floor ( Use_Num / 10 )
				local a = Date - Date_Box
				local Time = Use_Num - Date_Box * 10
				if a == 0 then
					local time_new = Time + 1
					if time_new == 1 then
						Use_Num = Use_Num + 1
						local j = TakeItem ( role , 0 , 2589 , 1 )
						if j == 1 then
							PlayUseBox3[ChaName] = Use_Num
							GiveItem ( role , 0 , 850 , 1 , 4 )
							GiveItem ( role , 0 , 3107 , 1 , 4 )
							GiveItem ( role , 0 , 851 , 1 , 4 )
							GiveItem ( role , 0 , 852 , 1 , 4 )
							GiveItem ( role , 0 , 1571 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "Недостаточно Эльфийских королевских печатей")
						end
					elseif time_new == 2 then
						Use_Num = ( Date + 1 ) * 10
						local j = TakeItem ( role ,  0 , 2589 , 2 )
						if j == 1 then
							PlayUseBox3[ChaName] = Use_Num
							AddExpAll ( role , 1 , 1, 2 )
							GiveItem ( role , 0 , 1571 , 1 , 4 )
						else
							UseItemFailed ( role )
							SystemNotice( role, "Недостаточно Эльфийских королевских печатей")
						end
					end
				elseif a == -1 then
					UseItemFailed ( role )
					SystemNotice ( role , "Запечатанный сундук повелителя фей можно открывать только 2 раза в день")
				else
					local Time = 1
					Use_Num = Date * 10 + Time
					local j = TakeItem ( role , 0 , 2589 , 1 )
					if j == 1 then
						PlayUseBox3[ChaName] = Use_Num
						GiveItem ( role , 0 , 850 , 1 , 4 )
						GiveItem ( role , 0 , 3107 , 1 , 4 )
						GiveItem ( role , 0 , 851 , 1 , 4 )
						GiveItem ( role , 0 , 852 , 1 , 4 )
						GiveItem ( role , 0 , 1571 , 1 , 4 )
					else
						UseItemFailed ( role )
						SystemNotice( role, "Недостаточно Эльфийских королевских печатей")
					end
				end
			end
		else
			SystemNotice( role , "Только игроки уровня 70 и выше могут открывать Запечатанный сундук повелителя фей")
			UseItemFailed ( role )
		end
	else
		SystemNotice( role , "Запечатанный сундук повелителя фей можно открывать только на территории Великого Синего Океана")
		UseItemFailed ( role )
	end
end

--2371	Пакет Алладина
function ItemUse_ALDXB ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local star=math.random ( 1, 20000 )
		if star<=3700 then
			GiveItem ( role , 0 , 2440  , 10 , 4  )
		elseif star>=3701 and star<=5700 then
			GiveItem ( role , 0 , 3885  , 1 , 4  )
		elseif star>=5701 and star<=7100 then
			GiveItem ( role , 0 , 3094  , 1 , 4  )
		elseif star>=7101 and star<=13100 then
			local el = math.random ( 1, 5 )
			if el==1  then
				GiveItem ( role , 0 , 2445  , 3 , 4 )
			elseif el==2	then
				GiveItem ( role , 0 , 3076  , 3 , 4 )
			elseif el==3	then
				GiveItem ( role , 0 , 0563  , 3 , 4 )
			elseif el==4	then	
				GiveItem ( role , 0 , 0583  , 3 , 4 )
			elseif el==5	then
				GiveItem ( role , 0 , 3050  , 3 , 4 )
			end
		elseif star>=13101 and star<=15100 then
			local el = math.random ( 1, 2 )
			if el==1  then
				GiveItem ( role , 0 , 0849  , 1 , 4 )
			elseif el==2  then
				GiveItem ( role , 0 , 0680  , 1 , 4 )
			end
		elseif star>=15101 and star<=19300then
			local el1= math.random ( 1, 6 )
			if el1==1  then
				GiveItem ( role , 0 , 2438  , 5 , 4 )
			elseif el1==2 then
				GiveItem ( role , 0 , 2419  , 3 , 4 )
			elseif el1==3 then
				GiveItem ( role , 0 , 2386  , 4 , 4 )
			elseif el1==4 then
				GiveItem ( role , 0 , 0179  , 1 , 4 )
			elseif el1==5 then
				GiveItem ( role , 0 , 3084  , 1 , 4 )
			elseif el1==6 then
				GiveItem ( role , 0 , 3085  , 1 , 4 )
			end
		elseif star>=19301 and star<=19600then
			local el1= math.random ( 1, 5 )
			if el1==1  then
				GiveItem ( role , 0 , 0863  , 1 , 4 )
			elseif el1==2 then
				GiveItem ( role , 0 , 0860  , 1 , 4 )
			elseif el1==3 then
				GiveItem ( role , 0 , 0861  , 1 , 4 )
			elseif el1==4 then
				GiveItem ( role , 0 , 0862  , 1 , 4 )
			elseif el1==5 then
				GiveItem ( role , 0 , 1012  , 1 , 4 )
			end
		elseif star==19601 then
			GiveItem ( role , 0 , 0192  , 1 , 4  )
		elseif star>=19601 and star<=20000 then	
			GiveItem ( role , 0 , 2224  , 1 , 4  )
		end
end

-- Огромный Кошелек (id 5707)
function ItemUse_universebox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно использовать предмет.")
		UseItemFailed ( role )
		return
	end
	local sc = math.random(1,100)
	if sc <= 30 then
		GiveItem ( role , 0 , 862 , 1 , 4 ) -- Колосс 30%
	elseif sc <= 60 then
		GiveItem ( role , 0 , 863 , 1 , 4 ) -- Раж 30%
	elseif sc <= 75 then
		GiveItem ( role , 0 , 861 , 1 , 4 ) -- Страйк 15%
	elseif sc <= 90 then
		GiveItem ( role , 0 , 860 , 1 , 4 ) -- Ветер 15%
	else
		GiveItem ( role , 0 , 1012 , 1 , 4 ) -- Соул 10%
	end
end

-- Расписки на дублоны
function ItemUse_DublonScript( role , Item )

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum (role)
	if Item_CanGet < 1 then
		SystemNotice(role, "Чтобы открыть расписку, необходима 1 свободная ячейка в рюкзаке.")
		UseItemFailed (role)
		return
	end
	
	local itemid = GetItemID(Item)

	-- 10 дублонов
	if itemid == 6800 then
		--GiveItem ( role , 0 , 195 , 10 , 4 )
	-- 5 дублонов
	elseif itemid == 6801 then
		--GiveItem ( role , 0 , 195 , 5 , 4 )
	-- 3 дублона
	elseif itemid == 6802 then
		--GiveItem ( role , 0 , 195 , 3 , 4 )
	end
	
end


--	Задержка на использование предмета
function CanUseItem(role)
	return 1
end

-- Функция увеличения хп для соответствующих предметов
function AddHp(role,hp_resume)
	local hp = GetChaAttr(role, ATTR_HP) 
	if hp <= 0 then 
	
		UseItemFailed ( role )
		return 0
	else
		hp = hp + hp_resume 
		mxhp = GetChaAttr(role,ATTR_MXHP) 
		if hp > mxhp then hp = mxhp end 
		SetCharaAttr(hp, role, ATTR_HP) 
		return 1
	end 
end


-- Функция увеличения сп для соответствующих предметов
function AddSp(role,sp_resume)
	local sp = GetChaAttr(role, ATTR_SP)
	if sp <= 0 then 
		UseItemFailed ( role )
		return 0
	else
		sp = sp + sp_resume 
		mxsp = GetChaAttr(role,ATTR_MXSP)  
		if sp > mxsp then sp = mxsp end
		SetCharaAttr(sp, role, ATTR_SP) 
		return 1
	end
end

-- Сундук славы войны гильдий (ID=5716)
function ItemUse_HZRYX ( role , Item )

	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	if Item_CanGet <=0 then
		SystemNotice(role ,"Недостаточно свободного места в инвентаре. Невозможно открыть сундук")
		UseItemFailed ( role )
		return
	end
--	local s = DelBagItem ( role , 5716 , 1 ) 
	local	sc = math.random(1,100)
	local itemname = ""
	if  sc <=30 then	
		GiveItem ( role , 0 , 4022 , 1 , 4 ) -- 30% 
		itemname = "Суп из осетра"
	elseif sc <=69 then		
		GiveItem ( role , 0 , 2951 , 1 , 4 ) -- 39%
		itemname = "Книгу бонусов Хаоса"
	elseif sc <=99 then
		local Money_add = 300000
		AddMoney ( role , 0 , Money_add ) -- 30%
		itemname = "300 000 золотых"
	else   
		GiveItem ( role , 0 , 3016 , 1 , 4 ) -- 1%
		itemname = "Свиток вызова Призрака черного дракона "
	end
	local cha_name = GetChaDefaultName ( role )
	local Guild_ID = GetChaGuildID(role)
	local Guild_name = GetGuildName( Guild_ID )
	Notice ( "Гильдия " .. Guild_name .. "  победила в кровопролитной Битве. " ..cha_name.. " открывает приз и получает "..itemname )

end

-- Сундук с кораллами (ID=6799)
function ItemUse_CorallBox(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum (role)
	if Item_CanGet < 5 then
		SystemNotice(role, "Чтобы открыть сундук, необходимо 5 свободных ячеек в рюкзаке.")
		UseItemFailed (role)
		return
	end
	GiveItem ( role , 0 , 876 , 1 , 4 )  -- Коралл тумана 5-го ур.
	GiveItem ( role , 0 , 871 , 1 , 4 )  -- Коралл грозы 5-го ур.
	GiveItem ( role , 0 , 821 , 1 , 4 )  -- Коралл ветра 5-го ур.
	GiveItem ( role , 0 , 639 , 1 , 4 )  -- Коралл удара 5 ур.
	GiveItem ( role , 0 , 1022 , 1 , 4 ) -- Перезаряжаемая батарейка
end

-- Пасхальные яйца (ID=6797,6798)
function ItemUse_EasterEgg(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum (role)
	if Item_CanGet < 1 then
		SystemNotice(role, "Чтобы открыть яйцо, необходимо иметь хотя бы одну свободную ячейку в инвентаре")
		UseItemFailed (role)
		return
	end
	local itemid   = GetItemID(Item)
	local cha_type = GetChaTypeID(role) 
	local a = math.random(1,100)
	-- Обычное яйцо
	if itemid == 6797 then
		if a <= 1 then
			GiveItem ( role , 0 , 0195 , 2 , 4 ) -- Дублон х 2 1%
		elseif a <= 2 then
			GiveItem ( role , 0 , 1860 , 2 , 4 ) -- Благословляющее зелье х 2 1%
		elseif a <= 3 then
			GiveItem ( role , 0 , 1856 , 5 , 4 ) -- Зелье берсерка х 5 1%
		elseif a <= 4 then
			GiveItem ( role , 0 , 1857 , 5 , 4 ) -- Энергозелье х 5 1%
		elseif a <= 9 then
			GiveItem ( role , 0 , 1079 , 3 , 4 ) -- Булочка х 3 5%
		elseif a <= 14 then
			GiveItem ( role , 0 , 1078 , 5 , 4 ) -- Парная булочка х 5 5%
		elseif a <= 19 then
			GiveItem ( role , 0 , 1085 , 3 , 4 ) -- Вино ученых х 3 5%
		elseif a <= 21 then
			GiveItem ( role , 0 , 0885 , 1 , 4 ) -- Очищающий самоцвет х 1 2%
		elseif a <= 23 then
			GiveItem ( role , 0 , 0881 , 1 , 4 ) -- Люстриновый самоцвет х 1 2%
		elseif a <= 25 then
			GiveItem ( role , 0 , 0884 , 1 , 4 ) -- Теневой самоцвет х 1 2%
		elseif a <= 27 then
			GiveItem ( role , 0 , 0887 , 1 , 4 ) -- Самоцвет духа х 1 2%
		elseif a <= 30 then
			GiveItem ( role , 0 , 2312 , 10 , 4 ) -- Стандартный паек х 10 3%
		elseif a <= 32 then
			AddMoney ( role , 0 , 500000 ) -- Золото х 500к 2%
		elseif a <= 35 then
			AddMoney ( role , 0 , 300000 ) -- Золото х 300к 3%
		elseif a <= 37 then
			GiveItem ( role , 0 , 3424 , 1 , 4 ) -- Сундук из мира демонов х 1 2%
		elseif a <= 42 then
			GiveItem ( role , 0 , 0849 , 3 , 4 ) -- Фрукт опыта отряда х 3 5%
		elseif a <= 44 then
			GiveItem ( role , 0 , 3845 , 3 , 4 ) -- Зачарованная ягода х 3 2%
		elseif a <= 47 then
			GiveItem ( role , 0 , 3844 , 3 , 4 ) -- Небесная ягода х 3 3%
		elseif a <= 48 then
			GiveItem ( role , 0 , 6798 , 1 , 4 ) -- Большое пасхальное яйцо х 1 1%
		elseif a <= 52 then
			GiveItem ( role , 0 , 6793 , 1 , 4 ) -- Георгиевская лента х 1 4%
		elseif a <= 68 then
			GiveItem ( role , 0 , 3460 , 99 , 4 ) -- Кексы х 99 16%
		elseif a <= 84 then
			GiveItem ( role , 0 , 3126 , 50 , 4 ) -- Мороженое х 50 16%
		elseif a <= 100 then
			GiveItem ( role , 0 , 3133 , 50 , 4 ) -- Лакричное зелье х 50 16%
		end
	-- Большое яйцо
	elseif itemid == 6798 then
		if a <= 2 then
			GiveItem ( role , 0 , 3457 , 1 , 4 ) -- Кэль х 1 2%
		elseif a <= 3 then
			GiveItem ( role , 0 , 1134 , 1 , 4 ) -- Сундук Хаоса х 1 1%
		elseif a <= 5 then
		---	GiveItem ( role , 0 , 0195 , 5 , 4 ) -- Дублон х 5 2%
		elseif a <= 6 then
			GiveItem ( role , 0 , 2216 , 1 , 4 ) -- Книга сброса умений х 1 2%
		elseif a <= 8 then
			GiveItem ( role , 0 , 3458 , 1 , 4 ) -- Сундук потаенного х 1 2%
		elseif a <= 10 then
			GiveItem ( role , 0 , 5707 , 1 , 4 ) -- Огромный кошелек х 1 2%
		elseif a <= 13 then
			GiveItem ( role , 0 , 0885 , 1 , 4 ) -- Очищающий самоцвет х 1 3%
		elseif a <= 15 then
			GiveItem ( role , 0 , 0938 , 1 , 4 ) -- Покровительство богини х 1 2%
		elseif a <= 17 then
			GiveItem ( role , 0 , 0679 , 1 , 4 ) -- Яйцо мордо х 1 2%
		elseif a <= 19 then
			GiveItem ( role , 0 , 0609 , 1 , 4 ) -- Продвинутое владение феей х 1 2%
		elseif a <= 24 then
			GiveItem ( role , 0 , 6797 , 1 , 4 ) -- Обычное пасхальное яйцо х 1 5%
		elseif a <= 29 then
			GiveItem ( role , 0 , 3095 , 4 , 4 ) -- Супер Усилитель стремлений х 4 5%
		elseif a <= 32 then
			GiveItem ( role , 0 , 0849 , 6 , 4 ) -- Фрукт опыта отряда х 6 3%
		elseif a <= 36 then
			GiveItem ( role , 0 , 2383 , 50 , 4 ) -- Кровавый контракт х 50 4%
		elseif a <= 39 then
			GiveItem ( role , 0 , 3097 , 4 , 4 ) --  Большой усилитель удачи х 4 3%
		elseif a <= 44 then
			GiveItem ( role , 0 , 6793 , 1 , 4 ) --  Георгиевская лента х 1 5%
		elseif a <= 62 then
			GiveItem ( role , 0 , 3460 , 99 , 4 ) -- Кексы х 99 18%
		elseif a <= 80 then
			GiveItem ( role , 0 , 3126 , 50 , 4 ) -- Мороженое х 50 18%
		elseif a <= 100 then
			GiveItem ( role , 0 , 3133 , 50 , 4 ) -- Лакричное зелье х 50 20%
		end
	end
end

-- Предметы в честь 1 мая 2013 г. (ID=6794,6795,6796)
function ItemUse_Workers(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum (role)
	if Item_CanGet < 1 then
		SystemNotice(role, "Чтобы открыть предмет, необходимо иметь хотя бы одну свободную ячейку в инвентаре")
		UseItemFailed (role)
		return
	end
	local itemid   = GetItemID(Item)
	local cha_type = GetChaTypeID(role) 
	local a = math.random(1,100);
	local b = { 1 };
	local c = 1;
	-- Клинок удачи
	if itemid == 6794 then
		if a <= 60 then -- 60% 35 анс оружие
			b = { 799, 785, 770, 781 }
			c = math.random(1,4);
		elseif a <= 90 then -- 30% 45 анс оружие
			b = { 786, 793, 774, 771, 800, 782 }
			c = math.random(1,6);
		elseif a <= 99 then -- 9% 55 анс оружие
			b = { 794, 787, 783, 772, 775, 801 }
			c = math.random(1,6);
		else -- 1% 65 анс оружие
			b = { 788, 802, 773, 784, 776, 795 }
			c = math.random(1,6);
		end
		GiveItem ( role , 0 , b[c] , 1 , 12 )
	
	-- Доспех мудрости
	elseif itemid == 6795 then
		if a <= 60 then -- 60% 35 анс брон
			b = { 803, 777, 789, 763 }
			c = math.random(1,4);
		elseif a <= 90 then -- 30% 45 анс броня
			b = { 790, 764, 804, 796, 778, 767 }
			c = math.random(1,6);
		elseif a <= 99 then -- 9% 55 анс броня
			b = { 791, 805, 779, 765, 768, 797 }
			c = math.random(1,6);
		else -- 1% 65 анс броня
			b = { 806, 780, 792, 766, 769, 798 }
			c = math.random(1,6);
		end
		GiveItem ( role , 0 , b[c] , 1 , 12 )
		
	-- Сапоги скорости
	elseif itemid == 6796 then
		if a <= 60 then -- 60% 45 лутовые ноги
			b = { 653, 667, 740, 708 }
			c = math.random(1,4);
		elseif a <= 90 then -- 30% 55 лутовые ноги
			b = { 668, 655, 695, 709, 715, 728, 731, 743 }
			c = math.random(1,8);
		elseif a <= 99 then -- 9% 55 анс ноги
			b = { 808, 810, 813, 814, 877 }
			c = math.random(1,5);
		else -- 1% Хаос-сапоги
			b = { 1126 }
			c = 1;
		end
		GiveItem ( role , 0 , b[c] , 1 , 18 )
	end
end
--рАссписки на самоцветы
function ItemUse_gem_ras( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum (role)
	if Item_CanGet <= 1 then
		SystemNotice(role, "Чтобы открыть предмет, необходимо иметь хотя бы одну свободную ячейку в инвентаре")
		UseItemFailed (role)
		return
	end
	local ItemId = GetItemID(Item)
	if ItemId == 7718 then
		ItemGem_1 ( role , 0878 )
	elseif ItemId == 7719 then
		ItemGem_1 ( role , 0879 )
	elseif ItemId == 7720 then
		ItemGem_1 ( role , 0880 )
	elseif ItemId == 7721 then
		ItemGem_1 ( role , 0881 )
	elseif ItemId == 7722 then
		ItemGem_1 ( role , 0882 )
	elseif ItemId == 7723 then
		ItemGem_1 ( role , 0883 )
	elseif ItemId == 7724 then
		ItemGem_1 ( role , 0884 )
	elseif ItemId == 7725 then
		ItemGem_1 ( role , 0887 )
	end
end
--рАссписки на самоцветы
function ItemUse_ref_ras( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum (role)
	if Item_CanGet <= 1 then
		SystemNotice(role, "Чтобы открыть предмет, необходимо иметь хотя бы одну свободную ячейку в инвентаре")
		UseItemFailed (role)
		return
	end
	local ItemId = GetItemID(Item)
	if ItemId == 7726 then
		ItemGem_1 ( role , 0885 )
	end
end
--рАссписки на самоцветы
function ItemUse_chest_gem_new( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum (role)
	if Item_CanGet <= 1 then
		SystemNotice(role, "Чтобы открыть предмет, необходимо иметь хотя бы одну свободную ячейку в инвентаре")
		UseItemFailed (role)
		return
	end
	local rand1 = math.random(1,3)
	local rand2 = math.random(1,4)
	local rand3 = math.random(1,5)
	local ItemId = GetItemID(Item)
	if ItemId == 7715 then
		if rand1 == 1 then
			ItemGem_1 ( role , 5772 )
		elseif rand1 == 2 then
			ItemGem_1 ( role , 5773 )
		elseif rand1 == 3 then
			ItemGem_1 ( role , 5774 )
		end
	elseif ItemId == 7716 then
		if rand2 == 1 then
			ItemGem_1 ( role , 5772 )
		elseif rand2 == 2 then
			ItemGem_1 ( role , 5773 )
		elseif rand2 == 3 then
			ItemGem_1 ( role , 5774 )
		elseif rand2 == 4 then
			ItemGem_1 ( role , 5775 )
		end
	elseif ItemId == 7717 then
		if rand2 == 1 then
			ItemGem_1 ( role , 5750 )
		elseif rand2 == 2 then
			ItemGem_1 ( role , 5751 )
		elseif rand2 == 3 then
			ItemGem_1 ( role , 5752 )
		elseif rand2 == 4 then
			ItemGem_1 ( role , 5771 )
		end
	elseif ItemId == 7711 then
		if rand3 == 1 then
			ItemGem_1 ( role , 6817 )
		elseif rand3 == 2 then
			ItemGem_1 ( role , 6820 )
		elseif rand3 == 3 then
			ItemGem_1 ( role , 6823 )
		elseif rand3 == 4 then
			ItemGem_1 ( role , 6826 )
		elseif rand3 == 5 then
			ItemGem_1 ( role , 6829 )
		end
	elseif ItemId == 7712 then
		if rand3 == 1 then
			ItemGem_1 ( role , 6818 )
		elseif rand3 == 2 then
			ItemGem_1 ( role , 6821 )
		elseif rand3 == 3 then
			ItemGem_1 ( role , 6824 )
		elseif rand3 == 4 then
			ItemGem_1 ( role , 6827 )
		elseif rand3 == 5 then
			ItemGem_1 ( role , 6830 )
		end
	elseif ItemId == 7713 then
		if rand3 == 1 then
			ItemGem_1 ( role , 6819 )
		elseif rand3 == 2 then
			ItemGem_1 ( role , 6822 )
		elseif rand3 == 3 then
			ItemGem_1 ( role , 6825 )
		elseif rand3 == 4 then
			ItemGem_1 ( role , 6828 )
		elseif rand3 == 5 then
			ItemGem_1 ( role , 6831 )
		end
	elseif ItemId == 7714 then
		if rand3 == 1 then
			ItemGem_1 ( role , 7108 )
		elseif rand3 == 2 then
			ItemGem_1 ( role , 7109 )
		elseif rand3 == 3 then
			ItemGem_1 ( role , 7110 )
		elseif rand3 == 4 then
			ItemGem_1 ( role , 7111 )
		elseif rand3 == 5 then
			ItemGem_1 ( role , 7112 )
		end
	end
end

--ID7420	Языкавой Барьер
function ItemUse_barer( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 4 then
		SystemNotice(role ,"Чтобы использовать сундук необходимо иметь 4 свободных слота в Вашем инвентаре.")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 4938 , 60 , 4 )
	GiveItem ( role , 0 , 4957 , 60 , 4 )
	GiveItem ( role , 0 , 4976 , 60 , 4 )
	GiveItem ( role , 0 , 4974 , 10 , 4 )
end

--Сундуки с аппами
function ItemUse_chest_app (role, Item)
	local Item_CanGet = GetChaFreeBagGridNum (role)
	 if Item_CanGet < 4 then
		SystemNotice(role, "Чтобы открыть этот сундук, необходимо 4 свободных ячейки в рюкзаке.")
		UseItemFailed (role)
		return
	end
	local itemid   = GetItemID(Item)
	local cha_type = GetChaTypeID(role) 
	-- Массив сундуков и апарелей в них
	local Boxes = {}
	-- Катакомбный Костюм
	Boxes[7500] = {}
	Boxes[7500][1] = { 5041, 5045, 5049, 0 } -- Ланс
	Boxes[7500][2] = { 5042, 5046, 5050, 0 } -- Карциз
	Boxes[7500][3] = { 5043, 5047, 5051, 0 } -- Филлис
	Boxes[7500][4] = { 5044, 5048, 5052, 5056 } -- Ами
	-- Костюм Корсара
	Boxes[7501] = {}
	Boxes[7501][1] = { 5057, 5061, 5065, 0 } -- Ланс
	Boxes[7501][2] = { 5058, 5062, 5066, 0 } -- Карциз
	Boxes[7501][3] = { 5059, 5063, 5067, 0 } -- Филлис
	Boxes[7501][4] = { 5060, 5064, 5068, 5069 } -- Ами
	-- Кожанный Костюм
	Boxes[7502] = {}
	Boxes[7502][1] = { 5075, 5076, 5077, 0 } -- Ланс
	Boxes[7502][3] = { 5075, 5076, 5077, 0 } -- Филлис
	-- Костюм Кошмара
	Boxes[7503] = {}
	Boxes[7503][1] = { 5081, 5082, 5083, 0 } -- Ланс
	Boxes[7503][3] = { 5081, 5082, 5083, 0 } -- Филлис
	-- Костюм Воина
	Boxes[7504] = {}
	Boxes[7504][1] = { 5078, 5079, 5080, 0 } -- Ланс
	Boxes[7504][3] = { 5078, 5079, 5080, 0 } -- Филлис
	-- Соломенный Костюм
	Boxes[7505] = {}
	Boxes[7505][1] = { 5118, 5119, 5120, 5121 } -- Ланс
	-- Трехлезвийный Костюм
	Boxes[7506] = {}
	Boxes[7506][1] = { 5123, 5124, 5125, 5122 } -- Ланс
	-- Брутальный Костюм
	Boxes[7507] = {}
	Boxes[7507][1] = { 5127, 5128, 5129, 0 } -- Ланс
	-- Тигровый Костюм
	Boxes[7508] = {}
	Boxes[7508][1] = { 5154, 5155, 5156, 0 } -- Ланс
	Boxes[7508][3] = { 5166, 5167, 5168, 0 } -- Филлис
	-- Изменчивый Костюм
	Boxes[7509] = {}
	Boxes[7509][1] = { 5157, 5158, 5159, 0 } -- Ланс
	Boxes[7509][3] = { 5169, 5170, 5171, 0 } -- Филлис
	-- Мерцающий Костюм Цезаря
	Boxes[7510] = {}
	Boxes[7510][1] = { 5160, 5161, 5162, 0 } -- Ланс
	-- Королевский Костюм Майора
	Boxes[7511] = {}
	Boxes[7511][1] = { 5205, 5206, 5207, 5220 } -- Ланс
	Boxes[7511][2] = { 5195, 5196, 5197, 5218 } -- Карциз
	Boxes[7511][3] = { 5202, 5203, 5204, 5219 } -- Филлис
	Boxes[7511][4] = { 5198, 5199, 5200, 5201 } -- Ами
	-- Темный Королевский Костюм
	Boxes[7512] = {}
	Boxes[7512][1] = { 5221, 5222, 5223, 0 } -- Ланс
	-- Костюм Жреца
	Boxes[7513] = {}
	Boxes[7513][1] = { 5224, 5225, 5226, 0 } -- Ланс
	-- Костюм Брюса
	Boxes[7514] = {}
	Boxes[7514][1] = { 5227, 5228, 5229, 0 } -- Ланс
	Boxes[7514][3] = { 5241, 5242, 5243, 0 } -- Филлис
	-- Рождественский Костюм
	Boxes[7515] = {}
	Boxes[7515][1] = { 5264, 5265, 5266, 0 } -- Ланс
	Boxes[7515][2] = { 5267, 5268, 5269, 0 } -- Карциз
	Boxes[7515][3] = { 5270, 5271, 5272, 0 } -- Филлис
	Boxes[7515][4] = { 5273, 5274, 5275, 0 } -- Ами
	-- Удачливый Костюм
	Boxes[7516] = {}
	Boxes[7516][1] = { 5287, 5288, 5289, 5290 } -- Ланс
	Boxes[7516][2] = { 5291, 5292, 5293, 5294 } -- Карциз
	Boxes[7516][3] = { 5295, 5296, 5297, 5298 } -- Филлис
	Boxes[7516][4] = { 5299, 5300, 5301, 5302 } -- Ами
	-- Романтический Костюм
	Boxes[7517] = {}
	Boxes[7517][1] = { 5303, 5304, 5305, 0 } -- Ланс
	Boxes[7517][2] = { 5306, 5307, 5308, 0 } -- Карциз
	Boxes[7517][3] = { 5309, 5310, 5311, 0 } -- Филлис
	Boxes[7517][4] = { 5312, 5313, 5314, 0 } -- Ами
	-- Костюм Хрюшки
	Boxes[7518] = {}
	Boxes[7518][1] = { 5315, 5316, 5317, 5318 } -- Ланс
	Boxes[7518][2] = { 5319, 5320, 5321, 5322 } -- Карциз
	Boxes[7518][3] = { 5323, 5324, 5325, 5326 } -- Филлис
	Boxes[7518][4] = { 5327, 5328, 5329, 5330 } -- Ами
	-- Костюм Овна
	Boxes[7519] = {}
	Boxes[7519][1] = { 5341, 5342, 5343, 0 } -- Ланс
	Boxes[7519][2] = { 5345, 5346, 5347, 0 } -- Карциз
	Boxes[7519][3] = { 5349, 5350, 5351, 0 } -- Филлис
	Boxes[7519][4] = { 5352, 5353, 5354, 5355 } -- Ами
	-- Костюм Тельца
	Boxes[7520] = {}
	Boxes[7520][1] = { 5356, 5357, 5358, 5359 } -- Ланс
	Boxes[7520][2] = { 5360, 5361, 5362, 5363 } -- Карциз
	Boxes[7520][3] = { 5364, 5365, 5366, 5367 } -- Филлис
	Boxes[7520][4] = { 5368, 5369, 5370, 5371 } -- Ами
	-- Костюм Близнецов
	Boxes[7521] = {}
	Boxes[7521][1] = { 5372, 5373, 5374, 5375 } -- Ланс
	Boxes[7521][2] = { 5376, 5377, 5378, 5379 } -- Карциз
	Boxes[7521][3] = { 5380, 5381, 5382, 5383 } -- Филлис
	Boxes[7521][4] = { 5384, 5385, 5386, 5387 } -- Ами
	-- Прогулочный Костюм
	Boxes[7522] = {}
	Boxes[7522][1] = { 5388, 5389, 5390, 5391 } -- Ланс
	-- Костюм Бакалавра
	Boxes[7523] = {}
	Boxes[7523][1] = { 5404, 5405, 5406, 5436 } -- Ланс
	Boxes[7523][2] = { 5407, 5408, 5409, 5437 } -- Карциз
	Boxes[7523][3] = { 5410, 5411, 5412, 5438 } -- Филлис
	Boxes[7523][4] = { 5413, 5414, 5415, 5439 } -- Ами
	-- Костюм Романтических танцев
	Boxes[7524] = {}
	Boxes[7524][1] = { 5422, 5423, 5440, 0 } -- Ланс
	Boxes[7524][2] = { 5424, 5425, 5441, 0 } -- Карциз
	-- Костюм Ночного божества
	Boxes[7525] = {}
	Boxes[7525][1] = { 5432, 5433, 5444, 0 } -- Ланс
	Boxes[7525][2] = { 5434, 5435, 5445, 0 } -- Карциз
	-- Костюм Большого Краба
	Boxes[7526] = {}
	Boxes[7526][1] = { 5456, 5457, 5458, 5459 } -- Ланс
	Boxes[7526][2] = { 5460, 5461, 5462, 5463 } -- Карциз
	Boxes[7526][3] = { 5464, 5465, 5466, 5467 } -- Филлис
	Boxes[7526][4] = { 5468, 5469, 5470, 5471 } -- Ами
	-- Костюм Черного Драконора
	Boxes[7527] = {}
	Boxes[7527][1] = { 5488, 5489, 5490, 0 } -- Ланс
	Boxes[7527][2] = { 5491, 5492, 5493, 0 } -- Карциз
	Boxes[7527][3] = { 5494, 5495, 5496, 0 } -- Филлис
	Boxes[7527][4] = { 5497, 5498, 5499, 5500 } -- Ами
	-- Костюм Кайлинора
	Boxes[7528] = {}
	Boxes[7528][1] = { 5501, 5502, 5503, 0 } -- Ланс
	Boxes[7528][2] = { 5504, 5505, 5506, 0 } -- Карциз
	Boxes[7528][3] = { 5507, 5508, 5509, 0 } -- Филлис
	Boxes[7528][4] = { 5510, 5511, 5512, 5513 } -- Ами
	-- Костюм Кровопийцы
	Boxes[7529] = {}
	Boxes[7529][1] = { 5521, 5522, 5523, 5524 } -- Ланс
	Boxes[7529][2] = { 5525, 5526, 5527, 5528 } -- Карциз
	Boxes[7529][3] = { 5529, 5530, 5531, 5532 } -- Филлис
	Boxes[7529][4] = { 5533, 5534, 5535, 5536 } -- Ами
	-- Костюм Хакера
	Boxes[7530] = {}
	Boxes[7530][1] = { 5537, 5538, 5539, 5540 } -- Ланс
	Boxes[7530][2] = { 5541, 5542, 5543, 5544 } -- Карциз
	Boxes[7530][3] = { 5545, 5546, 5547, 5548 } -- Филлис
	Boxes[7530][4] = { 5549, 5550, 5551, 5552 } -- Ами
	-- Костюм Азраила
	Boxes[7531] = {}
	Boxes[7531][1] = { 5553, 5554, 5555, 5556 } -- Ланс
	Boxes[7531][2] = { 5557, 5558, 5559, 5560 } -- Карциз
	Boxes[7531][3] = { 5561, 5562, 5563, 5564 } -- Филлис
	Boxes[7531][4] = { 5565, 5566, 5567, 5568 } -- Ами
	-- Костюм Сверхчеловека
	Boxes[7532] = {}
	Boxes[7532][1] = { 5569, 5570, 5571, 5572 } -- Ланс
	Boxes[7532][2] = { 5573, 5574, 5575, 5576 } -- Карциз
	-- Костюм Огненной тени
	Boxes[7533] = {}
	Boxes[7533][1] = { 5577, 5578, 5579, 5580 } -- Ланс
	Boxes[7533][2] = { 5581, 5582, 5583, 5584 } -- Карциз
	Boxes[7533][3] = { 5585, 5586, 5587, 5588 } -- Филлис
	Boxes[7533][4] = { 5589, 5590, 5591, 5592 } -- Ами
	-- Карибский Костюм
	Boxes[7534] = {}
	Boxes[7534][1] = { 5593, 5594, 5595, 5596 } -- Ланс
	Boxes[7534][2] = { 5597, 5598, 5599, 5600 } -- Карциз
	Boxes[7534][3] = { 5601, 5602, 5603, 5604 } -- Филлис
	Boxes[7534][4] = { 5605, 5606, 5607, 5608 } -- Ами
	-- Костюм Рилаккума
	Boxes[7535] = {}
	Boxes[7535][1] = { 5632, 5633, 5634, 5635 } -- Ланс
	Boxes[7535][2] = { 5628, 5629, 5630, 5631 } -- Карциз
	Boxes[7535][3] = { 5636, 5637, 5638, 5639 } -- Филлис
	Boxes[7535][4] = { 5640, 5641, 5642, 5643 } -- Ами
	-- Новогодний Костюм
	Boxes[7536] = {}
	Boxes[7536][1] = { 5651, 5652, 5653, 5654 } -- Ланс
	Boxes[7536][2] = { 5655, 5656, 5657, 5658 } -- Карциз
	Boxes[7536][3] = { 5659, 5660, 0, 0 } -- Филлис
	-- Костюм Кровавой луны
	Boxes[7537] = {}
	Boxes[7537][1] = { 5661, 5662, 5663, 5664 } -- Ланс
	Boxes[7537][2] = { 5665, 5666, 5667, 5668 } -- Карциз
	Boxes[7537][3] = { 5669, 5670, 5671, 5672 } -- Филлис
	Boxes[7537][4] = { 5673, 5674, 5675, 5676 } -- Ами
	-- Ковбойский Костюм
	Boxes[7538] = {}
	Boxes[7538][1] = { 5677, 5678, 5679, 5680 } -- Ланс
	Boxes[7538][2] = { 5681, 5682, 5683, 5684 } -- Карциз
	Boxes[7538][3] = { 5685, 5686, 5687, 5688 } -- Филлис
	Boxes[7538][4] = { 5689, 5690, 5691, 5692 } -- Ами
	-- Костюм Странника
	Boxes[7539] = {}
	Boxes[7539][1] = { 5726, 5727, 5728, 5729 } -- Ланс
	Boxes[7539][2] = { 5730, 5731, 5732, 5733 } -- Карциз
	Boxes[7539][3] = { 5734, 5735, 5736, 5737 } -- Филлис
	Boxes[7539][4] = { 5738, 5739, 5740, 5741 } -- Ами
	-- Костюм Короля Битв
	Boxes[7540] = {}
	Boxes[7540][1] = { 5742, 5743, 5744, 5745 } -- Ланс
	Boxes[7540][2] = { 5746, 5747, 5748, 5749 } -- Карциз
	Boxes[7540][3] = { 5850, 5851, 5852, 5853 } -- Филлис
	Boxes[7540][4] = { 5854, 5855, 5856, 5857 } -- Ами
	-- Грандиозный Костюм
	Boxes[7541] = {}
	Boxes[7541][1] = { 5898, 5899, 5900, 5901 } -- Лан
	-- Костюм Магической Рощи
	Boxes[7542] = {}
	Boxes[7542][1] = { 6503, 6504, 6505, 6506 } -- Ланс
	Boxes[7542][2] = { 6503, 6507, 6505, 6506 } -- Карциз
	Boxes[7542][3] = { 6503, 6504, 6505, 6506 } -- Филлис
	Boxes[7542][4] = { 6503, 6504, 6505, 6506 } -- Ами

	-- Серебреный Костюм Императора
	Boxes[7543] = {}
	Boxes[7543][1] = { 5905, 5906, 5907, 5908 } -- Ланс
	Boxes[7543][2] = { 5905, 5902, 5907, 5908 } -- Карциз
	Boxes[7543][3] = { 5905, 5906, 5907, 5908 } -- Филлис
	Boxes[7543][4] = { 5905, 5906, 5907, 5908 } -- Ами
	-- Костюм Императора
	Boxes[7544] = {}
	Boxes[7544][1] = { 5918, 5919, 5920, 5921 } -- Ланс
	Boxes[7544][2] = { 5918, 5903, 5920, 5921 } -- Карциз
	Boxes[7544][3] = { 5918, 5919, 5920, 5921 } -- Филлис
	Boxes[7544][4] = { 5918, 5919, 5920, 5921 } -- Ами
	-- Золотой Костюм Императора
	Boxes[7545] = {}
	Boxes[7545][1] = { 5922, 5923, 5924, 5925 } -- Ланс
	Boxes[7545][2] = { 5922, 5904, 5924, 5925 } -- Карциз
	Boxes[7545][3] = { 5922, 5923, 5924, 5925 } -- Филлис
	Boxes[7545][4] = { 5922, 5923, 5924, 5925 } -- Ами
	-- Костюм Человека-Паука
	Boxes[7546] = {}
	Boxes[7546][1] = { 5926, 5927, 5928, 5929 } -- Ланс
	Boxes[7546][2] = { 5930, 5931, 5932, 5933 } -- Карциз
	-- Зимний Костюм
	Boxes[7547] = {}
	Boxes[7547][1] = { 5934, 5935, 5936, 5937 } -- Ланс
	Boxes[7547][2] = { 5938, 5939, 5940, 0 } -- Карциз
	Boxes[7547][3] = { 5941, 5942, 5943, 0 } -- Филлис
	Boxes[7547][4] = { 5944, 5962, 5963, 5964 } -- Ами
	-- Заколдованный лесной Костюм
	Boxes[7548] = {}
	Boxes[7548][1] = { 5945, 5946, 5947, 5948 } -- Ланс
	Boxes[7548][2] = { 5949, 5950, 5951, 5952 } -- Карциз
	Boxes[7548][3] = { 5953, 5954, 5955, 5956 } -- Филлис
	Boxes[7548][4] = { 5957, 5958, 5959, 5960 } -- Ами
	-- Костюм Удачливого Быка
	Boxes[7549] = {}
	Boxes[7549][1] = { 5965, 5966, 5967, 5968 } -- Ланс
	Boxes[7549][2] = { 5965, 5969, 5967, 5968 } -- Карциз
	Boxes[7549][3] = { 5965, 5966, 5967, 5968 } -- Филлис
	Boxes[7549][4] = { 5965, 5966, 5967, 5968 } -- Ами
	-- Костюм Белого Демона
	Boxes[7550] = {}
	Boxes[7550][1] = { 5970, 5971, 5972, 5973 } -- Ланс
	Boxes[7550][3] = { 5978, 5979, 5980, 5981 } -- Филлис
	-- Костюм Храмовника
	Boxes[7551] = {}
	Boxes[7551][1] = { 5992, 5993, 5994, 0 } -- Ланс
	-- 	Костюм Самурая
	Boxes[7552] = {}
	Boxes[7552][1] = { 6350, 6351, 6352, 6353 } -- Ланс
	Boxes[7552][2] = { 6354, 6355, 6356, 6357 } -- Карциз
	-- Костюм Панка
	Boxes[7553] = {}
	Boxes[7553][1] = { 6362, 6363, 6364, 6365 } -- Ланс
	Boxes[7553][2] = { 6366, 6364, 6365, 0 } -- Карциз
	Boxes[7553][3] = { 6363, 6364, 6365, 0 } -- Филлис
	Boxes[7553][4] = { 6363, 6364, 6365, 0 } -- Ами
	-- Костюм Дартмола
	Boxes[7554] = {}
	Boxes[7554][1] = { 6386, 6387, 6388, 6389 } -- Ланс
	-- Летний Костюм
	Boxes[7555] = {}
	Boxes[7555][1] = { 6395, 6396, 6397, 0 } -- Ланс
	-- Костюм Девы
	Boxes[7556] = {}
	Boxes[7556][1] = { 6398, 6399, 6400, 6401 } -- Ланс
	Boxes[7556][2] = { 6398, 6402, 6400, 6401 } -- Карциз
	Boxes[7556][3] = { 6398, 6399, 6400, 6401 } -- Филлис
	Boxes[7556][4] = { 6398, 6399, 6400, 6401 } -- Ами
	-- Костюм Весов
	Boxes[7557] = {}
	Boxes[7557][1] = { 6403, 6404, 6405, 6406 } -- Ланс
	Boxes[7557][2] = { 6403, 6407, 6405, 6406 } -- Карциз
	Boxes[7557][3] = { 6403, 6404, 6405, 6406 } -- Филлис
	Boxes[7557][4] = { 6403, 6404, 6405, 6406 } -- Ами
	-- Костюм Скорпиона
	Boxes[7558] = {}
	Boxes[7558][1] = { 6408, 6409, 6410, 0 } -- Ланс
	Boxes[7558][2] = { 6411, 6409, 6410, 0 } -- Карциз
	Boxes[7558][3] = { 6408, 6409, 6410, 0 } -- Филлис
	Boxes[7558][4] = { 6408, 6409, 6410, 0 } -- Ами
	-- Костюм Стрельца
	Boxes[7559] = {}
	Boxes[7559][1] = { 6412, 6413, 6414, 6415 } -- Ланс
	Boxes[7559][2] = { 6412, 6416, 6414, 6415 } -- Карциз
	Boxes[7559][3] = { 6412, 6413, 6414, 6415 } -- Филлис
	Boxes[7559][4] = { 6412, 6413, 6414, 6415 } -- Ами
	-- Костюм Козерога
	Boxes[7560] = {}
	Boxes[7560][1] = { 6417, 6418, 6419, 6420 } -- Ланс
	Boxes[7560][2] = { 6417, 6421, 6419, 6420 } -- Карциз
	Boxes[7560][3] = { 6417, 6418, 6419, 6420 } -- Филлис
	Boxes[7560][4] = { 6417, 6418, 6419, 6420 } -- Ами
	-- Костюм Водолея
	Boxes[7561] = {}
	Boxes[7561][1] = { 6422, 6423, 6424, 6425 } -- Ланс
	Boxes[7561][2] = { 6422, 6426, 6424, 6425 } -- Карциз
	Boxes[7561][3] = { 6422, 6423, 6424, 6425 } -- Филлис
	Boxes[7561][4] = { 6422, 6423, 6424, 6425 } -- Ами
	-- Костюм Рыб
	Boxes[7562] = {}
	Boxes[7562][1] = { 6427, 6428, 6429, 6430 } -- Ланс
	Boxes[7562][2] = { 6427, 6431, 6429, 6430 } -- Карциз
	Boxes[7562][3] = { 6427, 6428, 6429, 6430 } -- Филлис
	Boxes[7562][4] = { 6427, 6428, 6429, 6430 } -- Ами
	-- Костюм Льва
	Boxes[7563] = {}
	Boxes[7563][1] = { 6432, 6433, 6434, 6435 } -- Ланс
	Boxes[7563][2] = { 6432, 6436, 6434, 6435 } -- Карциз
	Boxes[7563][3] = { 6432, 6433, 6434, 6435 } -- Филлис
	Boxes[7563][4] = { 6432, 6433, 6434, 6435 } -- Ами
	-- Костюм Железного человека
	Boxes[7564] = {}
	Boxes[7564][1] = { 6437, 6438, 6439, 6440 } -- Ланс
	Boxes[7564][2] = { 6437, 6441, 6439, 6440 } -- Карциз
	Boxes[7564][3] = { 6437, 6438, 6439, 6440 } -- Филлис
	Boxes[7564][4] = { 6437, 6438, 6439, 6440 } -- Ами
	-- Маскарадный Костюм
	Boxes[7565] = {}
	Boxes[7565][1] = { 6442, 6443, 6444, 6445 } -- Ланс
	Boxes[7565][2] = { 6442, 6446, 6444, 6445 } -- Карциз
	Boxes[7565][3] = { 6442, 6443, 6444, 6445 } -- Филлис
	Boxes[7565][4] = { 6442, 6443, 6444, 6445 } -- Ами
	-- Костюм Рокера
	Boxes[7566] = {}
	Boxes[7566][1] = { 6447, 6448, 6449, 6450 } -- Ланс
	-- Костюм Рукопашника
	Boxes[7567] = {}
	Boxes[7567][1] = { 6451, 6453, 6452, 6454 } -- Ланс
	Boxes[7567][3] = { 6451, 6453, 6452, 6454 } -- Филлис
	Boxes[7567][4] = { 6451, 6453, 6452, 6454 } -- Ами
	-- Костюм Марио
	Boxes[7568] = {}
	Boxes[7568][1] = { 6463, 6464, 6465, 6466 } -- Ланс
	Boxes[7568][2] = { 6467, 6468, 6469, 6470 } -- Карциз
	Boxes[7568][3] = { 6471, 6472, 6473, 6474 } -- Филлис
	Boxes[7568][4] = { 5616, 5617, 5618, 5619 } -- Ами
	-- Костюм Циклопа
	Boxes[7569] = {}
	Boxes[7569][1] = { 6475, 6476, 6477, 6478 } -- Ланс
	-- Костюм Маршала
	Boxes[7570] = {}
	Boxes[7570][1] = { 6499, 6500, 6501, 6502 } -- Ланс
	-- Костюм Маленькой пчелы
	Boxes[7571] = {}
	Boxes[7571][4] = { 5138, 5139, 5140, 5141 } -- Ами
	-- Костюм Гриба
	Boxes[7572] = {}
	Boxes[7572][4] = { 5134, 5135, 5136, 5137 } -- Ами
	-- Веселый Олений Костюм
	Boxes[7573] = {}
	Boxes[7573][4] = { 5130, 5131, 5132, 5133 } -- Ами
	-- Деревенский Костюм
	Boxes[7574] = {}
	Boxes[7574][4] = { 5020, 5024, 5032, 5037 } -- Ами
	-- Костюм Звона
	Boxes[7575] = {}
	Boxes[7575][4] = { 5016, 5028, 5036, 0 } -- Ами
	-- Костюм Ами
	Boxes[7576] = {}
	Boxes[7576][4] = { 5260, 5261, 5262, 5263 } -- Ами
	-- Монашеский Костюм
	Boxes[7577] = {}
	Boxes[7577][3] = { 5248, 5249, 5250, 5251 } -- Филлис
	Boxes[7577][4] = { 5256, 5257, 5258, 5259 } -- Ами
	-- Свадебный Костюм
	Boxes[7578] = {}
	Boxes[7578][3] = { 5244, 5245, 5246, 5247 } -- Филлис
	Boxes[7578][4] = { 5252, 5253, 5254, 5255 } -- Ами
	-- Шелковый Костюм Кролика
	Boxes[7579] = {}
	Boxes[7579][4] = { 5191, 5192, 5193, 5194 } -- Ами
	-- Костюм Благородного льва
	Boxes[7580] = {}
	Boxes[7580][4] = { 5187, 5188, 5189, 5190 } -- Ами
	-- Лазурный Костюм Феи
	Boxes[7581] = {}
	Boxes[7581][4] = { 5183, 5184, 5185, 5186 } -- Ами
	-- Костюм Сладости
	Boxes[7582] = {}
	Boxes[7582][4] = { 5179, 5180, 5181, 0 } -- Ами
	-- Костюм Алии
	Boxes[7583] = {}
	Boxes[7583][4] = { 5175, 5177, 5178, 0 } -- Ами
	-- Костюм Розового ангела
	Boxes[7584] = {}
	Boxes[7584][4] = { 5428, 5429, 5430, 5431 } -- Ами
	-- Костюм Студента
	Boxes[7585] = {}
	Boxes[7585][3] = { 5416, 5417, 5418, 0 } -- Филлис
	Boxes[7585][4] = { 5419, 5420, 5421, 0 } -- Ами
	-- Костюм Нежности
	Boxes[7586] = {}
	Boxes[7586][4] = { 5400, 5401, 5402, 5403 } -- Ами
	-- Костюм Дракона
	Boxes[7587] = {}
	Boxes[7587][2] = { 5514, 5515, 5516, 0 } -- Карциз
	Boxes[7587][4] = { 5517, 5518, 5519, 0 } -- Ами
	-- Костюм Лолиты
	Boxes[7588] = {}
	Boxes[7588][4] = { 5646, 5647, 5648, 5649 } -- Ами
	-- Костюм Ведьмы
	Boxes[7589] = {}
	Boxes[7589][3] = { 5986, 5987, 5988, 5989 } -- Филлис
	Boxes[7589][4] = { 5986, 5987, 5988, 5989 } -- Ами
	-- 	Костюм Черного Демона
	Boxes[7590] = {}
	Boxes[7590][2] = { 5974, 5975, 5976, 5977 } -- Карциз
	Boxes[7590][4] = { 5982, 5983, 5984, 5985 } -- Ами
	-- Костюм Эша
	Boxes[7591] = {}
	Boxes[7591][4] = { 5913, 5914, 5915, 5916 } -- Ами
	-- Костюм Снежной Королевы
	Boxes[7592] = {}
	Boxes[7592][3] = { 6378, 6379, 6380, 6381 } -- Филлис
	Boxes[7592][4] = { 6382, 6383, 6384, 6385 } -- Ами
	-- Костюм Моряка
	Boxes[7593] = {}
	Boxes[7593][3] = { 6455, 6456, 6457, 6458 } -- Филлис
	Boxes[7593][4] = { 6455, 6456, 6457, 6458 } -- Ами
	-- Костюм Привлекательности
	Boxes[7594] = {}
	Boxes[7594][3] = { 5015, 5023, 5031, 0 } -- Филлис
	-- Большой Костюм Зимы
	Boxes[7595] = {}
	Boxes[7595][3] = { 5019, 5027, 5035, 0 } -- Филлис
	-- Костюм Матроса
	Boxes[7596] = {}
	Boxes[7596][3] = { 5084, 5085, 5086, 0 } -- Филлис
	-- Костюм из кожи Акулы
	Boxes[7597] = {}
	Boxes[7597][3] = { 5087, 5088, 5089, 0 } -- Филлис
	-- Костюм Морячка
	Boxes[7598] = {}
	Boxes[7598][3] = { 5090, 5091, 5092, 0 } -- Филлис
	-- Флотский Костюм
	Boxes[7599] = {}
	Boxes[7599][3] = { 5093, 5094, 5095, 0 } -- Филлис
	-- Капитанский Костюм
	Boxes[7600] = {}
	Boxes[7600][3] = { 5096, 5097, 5098, 0 } -- Филлис
	-- Лакомый Костюм
	Boxes[7601] = {}
	Boxes[7601][3] = { 5142, 5143, 5144, 5145 } -- Филлис
	-- Костюм Шайтанской принцессы
	Boxes[7602] = {}
	Boxes[7602][3] = { 5146, 5147, 5148, 5149 } -- Филлис
	-- Сексуальный Костюм
	Boxes[7603] = {}
	Boxes[7603][3] = { 5150, 5151, 5152, 5153 } -- Филлис
	-- Темно-синий Костюм Судьбы
	Boxes[7604] = {}
	Boxes[7604][3] = { 5172, 5173, 5174, 0 } -- Филлис
	-- Причудливый Костюм
	Boxes[7605] = {}
	Boxes[7605][3] = { 5396, 5397, 5398, 5399 } -- Филлис
	-- Чудесный райский Костюм
	Boxes[7606] = {}
	Boxes[7606][3] = { 5426, 5427, 5438, 0 } -- Филлис
	-- Розовый Костюм Гейши
	Boxes[7607] = {}
	Boxes[7607][3] = { 5909, 5910, 5911, 5912 } -- Филлис
	-- Костюм Принцесы
	Boxes[7608] = {}
	Boxes[7608][3] = { 6358, 6359, 6360, 6361 } -- Филлис
	-- Ночной Костюм
	Boxes[7609] = {}
	Boxes[7609][3] = { 6367, 6368, 6369, 0 } -- Филлис
	-- Королевский Костюм
	Boxes[7610] = {}
	Boxes[7610][3] = { 6370, 6371, 6372, 6373 } -- Филлис
	-- Эротический Костюм
	Boxes[7611] = {}
	Boxes[7611][3] = { 6374, 6375, 6376, 6377 } -- Филлис
	-- Рыжий Костюм
	Boxes[7612] = {}
	Boxes[7612][3] = { 6483, 6484, 6485, 6486 } -- Филлис
	-- Рождественский Костюм
	Boxes[7613] = {}
	Boxes[7613][3] = { 6495, 6496, 6497, 6498 } -- Филлис
	-- Костюм Современного пещерника
	Boxes[7614] = {}
	Boxes[7614][2] = { 5014, 5022, 5030, 0 } -- Карциз
	-- Костюм Дикого пещерника
	Boxes[7615] = {}
	Boxes[7615][2] = { 5018, 5026, 5034, 0 } -- Карциз
	-- Костюм Кровавого Капитана
	Boxes[7616] = {}
	Boxes[7616][2] = { 5107, 5108, 5109, 0 } -- Карциз
	-- Крокодиловый Костюм Сахары
	Boxes[7617] = {}
	Boxes[7617][2] = { 5110, 5111, 5112, 5113 } -- Карциз
	-- Флотский Костюм Курильщика
	Boxes[7618] = {}
	Boxes[7618][2] = { 5115, 5116, 5117, 0 } -- Карциз
	-- Новый Костюм
	Boxes[7619] = {}
	Boxes[7619][2] = { 5163, 5164, 5165, 0 } -- Карциз
	-- Костюм Епископа
	Boxes[7620] = {}
	Boxes[7620][2] = { 5230, 5231, 5232, 5233 } -- Карциз
	-- Костюм Следопыта
	Boxes[7621] = {}
	Boxes[7621][2] = { 5234, 5235, 5236, 5237 } -- Карциз
	-- Черный Костюм
	Boxes[7622] = {}
	Boxes[7622][2] = { 5238, 5239, 5240, 0 } -- Карциз
	-- Костюм Бродяги
	Boxes[7623] = {}
	Boxes[7623][2] = { 5392, 5393, 5394, 5395 } -- Карциз
	-- Костюм Дартвейдера
	Boxes[7624] = {}
	Boxes[7624][2] = { 6390, 6391, 6392, 6393 } -- Карциз
	-- Бойцовский Костюм
	Boxes[7625] = {}
	Boxes[7625][2] = { 6459, 6460, 6461, 6462 } -- Карциз
	-- Костюм Росомахи
	Boxes[7626] = {}
	Boxes[7626][2] = { 6479, 6480, 6481, 6482 } -- Карциз
	-- Костюм Аладдина
	Boxes[7627] = {}
	Boxes[7627][2] = { 6491, 6492, 6493, 6494 } -- Карциз
	-- Костюм Геркулеса
	Boxes[7628] = {}
	Boxes[7628][2] = { 6509, 6510, 6511, 0 } -- Карциз
	-- Выдаем предметы
	if Boxes[itemid] ~= nil then
		if Boxes[itemid][cha_type] ~= nil then
			for item in Boxes[itemid][cha_type] do
				local apparel = Boxes[itemid][cha_type][item]
				if apparel ~= nil and apparel > 0 then GiveItem (role, 0, apparel, 1, 4) end
			end
		else
			SystemNotice(role, "В сундуке нет предметов для вас")
			GiveItem (role, 0, itemid, 1, 4)
		end
	else
		SystemNotice(role, "Неизвестный сундук")
		GiveItem (role, 0, itemid, 1, 4)
	end
end

--Кристальный Котел
function ItemUse_CookBlurry_test ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 2302 then
		SystemNotice(role ,"Можно использовать только на чертеже Кулинарии")
		UseItemFailed ( role )
		return
	end
	local Cauldron_lvl = GetItemAttr(Item, ITEMATTR_VAL_STR)
	local Cauldron_maxproch = GetItemAttr(Item, ITEMATTR_MAXENERGY)
	local Cauldron_exp = GetItemAttr(Item, ITEMATTR_ENERGY)
	local Cauldron_proch = GetItemAttr(Item, ITEMATTR_URE)
	local ingr1 = GetItemAttr(Item_Traget, ITEMATTR_VAL_STR)
	local ingr2 = GetItemAttr(Item_Traget, ITEMATTR_VAL_CON)
	local ingr3 = GetItemAttr(Item_Traget, ITEMATTR_VAL_DEX)
	local item_polych = GetItemAttr(Item_Traget, ITEMATTR_VAL_AGI)
	local lvl_cook = GetItemAttr(Item_Traget, ITEMATTR_URE)
	local count_use = GetItemAttr(Item_Traget, ITEMATTR_VAL_STA)
	local mf_count = GetItemAttr(Item_Traget, ITEMATTR_MAXURE)
	local Num_paper = GetItemForgeParam ( Item_Traget , 1 )
	Num_paper = TansferNum ( Num_paper )
	local ingr1_count = GetNum_Part2 ( Num_paper )
	local ingr2_count = GetNum_Part4 ( Num_paper )
	local ingr3_count = GetNum_Part6 ( Num_paper )
	local skill_lv = GetSkillLv(role, 0339)
	if skill_lv < lvl_cook then
		SystemNotice(role ,"Уровень вашего навыка Кулинария, ниже чем уровень чертежа!")
		UseItemFailed ( role )
		return
	end
	if count_use == 0 then
		SystemNotice(role ,"Использовать чертеж не возможно, проверьте возможно вы уже израсходовали его!")
		UseItemFailed ( role )
		return
	end
	local ret1 = proc_ingridient(role,ingr1,ingr1_count)
	local ret2 = proc_ingridient(role,ingr2,ingr2_count)
	local ret3 = proc_ingridient(role,ingr3,ingr3_count)
	local ret4 = proc_ingridient(role,0855,mf_count)
	if ret1 == 0 or ret2 == 0 or ret3 == 0 or ret4 == 0 then
		UseItemFailed ( role )
		return
	end
	local dell1 = dell_ingridient(role,ingr1,ingr1_count)
	local dell2 = dell_ingridient(role,ingr2,ingr2_count)
	local dell3 = dell_ingridient(role,ingr3,ingr3_count)
	local dell4 = dell_ingridient(role,0855,mf_count)
	if dell1 == 0 or dell2 == 0 or dell3 == 0 or dell4 == 0 then
		UseItemFailed ( role )
		return
	end
	local rand = math.random(1,3)
	local good = 0
	local item_polych_count = 0
	-- Уровень котла больше или равен уровню чертежа: шанс успеха 100%
	if Cauldron_lvl >= lvl_cook then
		item_polych_count = (skill_lv + Cauldron_lvl) - lvl_cook
		if item_polych_count >= 5 then
			item_polych_count = 4
		end
		item_polych_count = item_polych_count + 2
		good = 1
	end
	-- Уровень котла меньше уровня чертежа
	if Cauldron_lvl < lvl_cook then
		local razn = 0
		razn = lvl_cook - Cauldron_lvl
		local luck = math.random(1,100)
		if razn == 1 then
			if luck >= 1 and luck <= 95 then
				item_polych_count = (skill_lv + Cauldron_lvl) - lvl_cook
				if item_polych_count >= 5 then
					item_polych_count = 4
				end
				item_polych_count = item_polych_count + 1
				good = 1
			else
				item_polych_count = 1
				good = 0
			end
		elseif razn == 2 then
			if luck >= 1 and luck <= 90 then
				item_polych_count = (skill_lv + Cauldron_lvl) - lvl_cook
				if item_polych_count >= 5 then
					item_polych_count = 4
				end
				item_polych_count = item_polych_count + 1
				good = 1
			else
				item_polych_count = 1
				good = 0
			end
		elseif razn == 3 then
			if luck >= 1 and luck <= 85 then
				item_polych_count = (skill_lv + Cauldron_lvl) - lvl_cook
				if item_polych_count >= 5 then
					item_polych_count = 4
				end
				item_polych_count = item_polych_count + 1
				good = 1
			else
				item_polych_count = 1
				good = 0
			end
		elseif razn == 4 then
			if luck >= 1 and luck <= 80 then
				item_polych_count = (skill_lv + Cauldron_lvl) - lvl_cook
				if item_polych_count >= 5 then
					item_polych_count = 4
				end
				item_polych_count = item_polych_count + 1
				good = 1
			else
				item_polych_count = 1
				good = 0
			end
		elseif razn == 5 then
			if luck >= 1 and luck <= 75 then
				item_polych_count = (skill_lv + Cauldron_lvl) - lvl_cook
				if item_polych_count >= 5 then
					item_polych_count = 4
				end
				item_polych_count = item_polych_count + 1
				good = 1
			else
				good = 0
			end
		elseif razn == 6 then
			if luck >= 1 and luck <= 70 then
				item_polych_count = (skill_lv + Cauldron_lvl) - lvl_cook
				if item_polych_count >= 5 then
					item_polych_count = 4
				end
				item_polych_count = item_polych_count + 1
				good = 1
			else
				item_polych_count = 1
				good = 0
			end
		end
	end
	local new_count_use = count_use - 1
	SetItemAttr(Item_Traget, ITEMATTR_VAL_STA, new_count_use)
	GiveItem ( role, 0 , item_polych , item_polych_count , 4 )
	
	-- Выдача котла
	
	local m1 = -1
	local m2 = -1
	m1, m2 = MakeItem ( role , 8864  , 1 , 4 )
	local Cauldronfinal = GetChaItem ( role , 2 , m2 )
	SetItemAttr(Cauldronfinal, ITEMATTR_VAL_STR , Cauldron_lvl)
	SetItemAttr(Cauldronfinal, ITEMATTR_MAXENERGY , Cauldron_maxproch)
	SetItemAttr(Cauldronfinal, ITEMATTR_URE , Cauldron_proch)
	SetItemAttr(Cauldronfinal, ITEMATTR_ENERGY , Cauldron_exp)
	-- Успех\Провал получение опыта
	if good == 1 then
		Cauldron_exp = Cauldron_exp + Cauldron_lvl
	else
		Cauldron_exp = Cauldron_exp + 1
	end
	-- Убиваем прочность
	Cauldron_proch = Cauldron_proch - 50 * Cauldron_lvl
	if Cauldron_proch <= 0 then
		Cauldron_proch = 0
	end
	if Cauldron_exp >= 10000 then
		Cauldron_exp = 10000
	end
	-- Повышение уровня
	if Cauldron_exp >= Cauldron_lvl * Cauldron_lvl * 100 then
		Cauldron_lvl = Cauldron_lvl + 1
		SetItemAttr(Cauldronfinal, ITEMATTR_VAL_STR , Cauldron_lvl)
		SystemNotice( role , "Поздравляем, уровень вашего инструмента повышен!")
		Cauldron_exp = 0
	end
	-- Наложение параметров опыта и прочности
	SetItemAttr(Cauldronfinal, ITEMATTR_URE , Cauldron_proch)
	SetItemAttr(Cauldronfinal, ITEMATTR_ENERGY , Cauldron_exp)
end

--Сундук с ремонтным инструментом
function ItemUse_remont_chest(role,Item)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы использовать сундук необходимо иметь 1 свободный слот в Вашем инвентаре.")
		UseItemFailed ( role )
		return
	end
	local lv = 0
	local r1 = 0
	local r2 = 0
	local ItemId = GetItemID(Item)
	r1, r2 = MakeItem(role, 2236, 1 , 4)
	local Item_rem = GetChaItem(role, 2, r2)
	if ItemId == 7301 then
		lv = 2
	elseif ItemId == 7302 then
		lv = 3
	elseif ItemId == 7303 then
		lv = 4
	elseif ItemId == 7304 then
		lv = 5
	elseif ItemId == 7305 then
		lv = 6
	elseif ItemId == 7306 then
		lv = 7
	end
	SetItemAttr(Item_rem, ITEMATTR_VAL_STR, lv)
end

--Хаос
function ItemUse_Im_Box(role,Item)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы использовать сундук необходимо иметь 1 свободный слот в Вашем инвентаре.")
		UseItemFailed ( role )
		return
	end
	local ItemId = GetItemID(Item)
	-- Каменный торс Хаоса
	if ItemId == 7758 then
		GiveItem ( role , 0 , 1124  , 1 , 19 )
	-- Каменная рука Хаоса
	elseif ItemId == 7759 then
		GiveItem ( role , 0 , 1125  , 1 , 20 )
	-- Каменная нога Хаоса
	elseif ItemId == 7760 then
		GiveItem ( role , 0 , 1126  , 1 , 15 )
	end
end

--VIP
function ItemUse_vip_rasspiska(role,Item)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы использовать сундук необходимо иметь 1 свободный слот в Вашем инвентаре.")
		UseItemFailed ( role )
		return
	end
	local ItemId = GetItemID(Item)
	-- VIP расписка нового игрока
	if ItemId == 7307 then
		GiveItem ( role , 0 , 7307  , 1 , 4 )
	-- VIP расписка(3 дня)
	elseif ItemId == 7308 then
		GiveItem ( role , 0 , 7308  , 1 , 4 )
	-- VIP расписка(7 дней)
	elseif ItemId == 7309 then
		GiveItem ( role , 0 , 7309  , 1 , 4 )
	end
end

--ID7422	Вина перерождения
function ItemUse_feniks( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 7 then
		SystemNotice(role ,"Чтобы использовать сундук необходимо иметь 7 свободных слота в Вашем инвентаре.")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 1358, 30 , 4 )
	GiveItem ( role , 0 , 4730, 30 , 4 )
	GiveItem ( role , 0 , 2619, 30 , 4 )
	GiveItem ( role , 0 , 1087, 30 , 4 )
	GiveItem ( role , 0 , 1088, 20 , 4 )
	GiveItem ( role , 0 , 1087, 20 , 4 )
	GiveItem ( role , 0 , 1089, 15 , 4 )
end

--ID7418	Купюра на 20 миллионов
function ItemUse_CZHeq( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
 	local Money_add = 20000000
	local Money_Have = GetChaAttr ( role , ATTR_GD )
	if Money_Have>=999900000 then
		SystemNotice (role, "У Вас слишком много золота. Невозможно использовать предмет")
		UseItemFailed ( role )
		return
	end
	AddMoney ( role , 0 , Money_add )
end 

--ID7751	Журнал Счастливый отдых Выпуск 1
function ItemUse_HappyBook1 ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	if charLv > 60 then
		SystemNotice( role , "Ваш уровень слишком высокий, чтобы использовать этот предмет " )
		UseItemFailed ( role )
		return
	end
	local dif_exp_1 = DEXP[charLv+1]
	local dif_exp_3 = DEXP[charLv+3]
	local dif_exp_5 = DEXP[charLv+5]
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )
	local dif_exp_50 = (DEXP[charLv+1] - DEXP[charLv])*0.5 +  Exp_star +10
	local dif_exp_33 = (DEXP[charLv+1] - DEXP[charLv])*0.3331  +  Exp_star + 10
	local dif_exp_20 = (DEXP[charLv+1] - DEXP[charLv])*0.2031  +  Exp_star + 10
	local dif_exp_10 = (DEXP[charLv+1] - DEXP[charLv])*0.1031  +  Exp_star + 10
	local dif_exp_02 = (DEXP[charLv+1] - DEXP[charLv])*0.2  +  Exp_star + 10
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море " )
		UseItemFailed ( role )
		return
	elseif charLv>=1 and charLv<=5 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_one )
	elseif charLv>=10 and charLv<=15 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_50 )
	elseif charLv>=16 and charLv<=30 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_33 )
	elseif charLv>=31 and charLv<=40 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_20 )
	elseif charLv>=41 and charLv<=55 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_10 )
	elseif charLv>=56 and charLv<=69 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_02 )
	end
	
end

--7752	Журнал Счастливый отдых Выпуск 2
function ItemUse_HappyBook2 ( role , Item )
	local Cha_Boat = 0
	local charLv=Lv ( role )
	if charLv > 99 then
		SystemNotice( role , "Ваш уровень слишком высокий, чтобы использовать этот предмет " )
		UseItemFailed ( role )
		return
	end
	local dif_exp_one = DEXP[charLv+1]
	local dif_exp_three = DEXP[charLv+3]
	local dif_exp_five = DEXP[charLv+5]
	local Exp_star=GetChaAttr (  role , ATTR_CEXP )
	local dif_exp_half = (DEXP[charLv+1] - DEXP[charLv])*0.5 +  Exp_star +10
	local dif_exp_thalf = (DEXP[charLv+1] - DEXP[charLv])*0.3331  +  Exp_star + 10
	local dif_exp_thalf_b = (DEXP[charLv+1] - DEXP[charLv])*0.2  +  Exp_star + 10
	Cha_Boat = GetCtrlBoat ( role )

	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море " )
		UseItemFailed ( role )
		return
	elseif charLv < 90 then
		SystemNotice(role, "Ваш уровень слишком мал ")
		UseItemFailed ( role )
		return
	elseif charLv <= 99 then
		SetChaAttrI( role , ATTR_CEXP , dif_exp_thalf )
	end
end

--Сундук Доблести ID 6256
function ItemUse_SZYINGYONG ( role , Item )

	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 12 then
		SystemNotice( role , "Использовать предмет могут только Стрелки" )
		UseItemFailed ( role )
		return
	end
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6173 , 1 , 4)
		return
 	elseif i<=50 then
		GiveItem ( role , 0 , 6174 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6175 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6176 , 1 , 4)
		return
	end
end

--Сундук Чести ID 6257
function ItemUse_SZRONGYU ( role , Item )

	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 9 then
		SystemNotice( role , "Использовать предмет могут только Воители" )
		UseItemFailed ( role )
		return
	end
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6177 , 1 , 4)
		return
	elseif i<=50 then
		GiveItem ( role , 0 , 6178 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6179 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6180 , 1 , 4)
		return
	end
end

--Сундук Жертвы ID 6258
function ItemUse_SZXISHENG ( role , Item )

	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 8 then
		SystemNotice( role , "Использовать предмет могут только Чемпионы" )
		UseItemFailed ( role )
		return
	end
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6181 , 1 , 4)
		return
	elseif i<=50 then
		GiveItem ( role , 0 , 6182 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6183 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6184 , 1 , 4)
		return
	end
end

--Сундук Правосудия ID 6259
function ItemUse_SZGONGZHENG ( role , Item )

	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 16 then
		SystemNotice( role , "Использовать предмет могут только Покорители морей" )
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6185 , 1 , 4)
		return
 	elseif i<=50 then
		GiveItem ( role , 0 , 6186 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6187 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6188 , 1 , 4)
		return
	end
end

--Сундук Сочувствия ID 6260
function ItemUse_SZLIANMING ( role , Item )

	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 13 then
		SystemNotice( role , "Использовать предмет могут только Целительницы" )
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6189 , 1 , 4)
		return
 	elseif i<=50 then
		GiveItem ( role , 0 , 6190 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6191 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6192 , 1 , 4)
		return
	end
end

--Сундук Вдохновения ID 6261
function ItemUse_SZJINGSHENG ( role , Item )

	local job = GetChaAttr(role, ATTR_JOB)
	if job~= 14 then
		SystemNotice( role , "Использовать предмет могут только Колдуньи" )
		UseItemFailed ( role )
		return
	end
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local i=math.random(1,100)
	if i<=25 then
		GiveItem ( role , 0 , 6193 , 1 , 4)
		return
 	elseif i<=50 then
		GiveItem ( role , 0 , 6194 , 1 , 4)
		return
 	elseif i<=75 then
		GiveItem ( role , 0 , 6195 , 1 , 4)
		return
	elseif i<=100 then
		GiveItem ( role , 0 , 6196 , 1 , 4)
		return
	end
end

function Chest_azik(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local c = math.random ( 1 , 5 )
		if c <= 1  then
			GiveItem ( role , 0 , 5845 , 1 , 4 )
			return
		elseif c <= 2 then
			GiveItem ( role , 0 , 5846 , 1 , 4 )
			return
		elseif c <= 3 then
			GiveItem ( role , 0 , 5847 , 1 , 4 )
			return
		elseif c <= 4 then
			GiveItem ( role , 0 , 5848 , 1 , 4 )
			return
		else
			GiveItem ( role , 0 , 5849 , 1 , 4 )
			return
		end
end

--5708	Сундук Дракона
function Chest_BD(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local c = math.random ( 1 , 4 )
		if c == 1  then
			GiveItem ( role , 0 , 864 , 1 , 4 )
			return
		elseif c == 2 then
			GiveItem ( role , 0 , 865 , 1 , 4 )
			return
		elseif c == 3 then
			GiveItem ( role , 0 , 866 , 1 , 4 )
			return
		else
			GiveItem ( role , 0 , 7710 , 1 , 4 )
			return
		end
end

--	8146	Сюрприз Самоцветов +3
function Chest_Surprise_3(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local rand = math.random ( 1 , 100 )
		if rand >= 1 and rand <= 6 then
			local a = math.random ( 1 , 5 )
			if a == 1  then
				GiveItem ( role , 0 , 6818 , 1 , 4 )
			elseif a == 2 then
				GiveItem ( role , 0 , 6821 , 1 , 4 )
			elseif a == 3 then
				GiveItem ( role , 0 , 6824 , 1 , 4 )
			elseif a == 4 then
				GiveItem ( role , 0 , 6827 , 1 , 4 )
			else
				GiveItem ( role , 0 , 6830 , 1 , 4 )
			end
		elseif rand >= 7 and rand <= 9 then
			local a = math.random ( 1 , 5 )
			if a == 1  then
				ItemGem_2 ( role , 6818 )
			elseif a == 2 then
				ItemGem_2 ( role , 6821 )
			elseif a == 3 then
				ItemGem_2 ( role , 6824 )
			elseif a == 4 then
				ItemGem_2 ( role , 6827 )
			else
				ItemGem_2 ( role , 6830 )
			end
		elseif rand >= 9 and rand <= 10 then
			local a = math.random ( 1 , 5 )
			local ChaName = GetChaDefaultName ( role )
			if a == 1  then
				ItemGem_3 ( role , 6818 )
				Notice('Поздравляем игрока <<'..ChaName..'>>, он открывает Сюрприз Самоцветов +3 и получает: Треснутый Самоцвет Ветра 3 уровня!')
			elseif a == 2 then
				ItemGem_3 ( role , 6821 )
				Notice('Поздравляем игрока <<'..ChaName..'>>, он открывает Сюрприз Самоцветов +3 и получает: Треснутый Самоцвет Удара 3 уровня!')
			elseif a == 3 then
				ItemGem_3 ( role , 6824 )
				Notice('Поздравляем игрока <<'..ChaName..'>>, он открывает Сюрприз Самоцветов +3 и получает: Треснутый Самоцвет Колосса 3 уровня!')
			elseif a == 4 then
				ItemGem_3 ( role , 6827 )
				Notice('Поздравляем игрока <<'..ChaName..'>>, он открывает Сюрприз Самоцветов +3 и получает: Треснутый Самоцвет Ярости 3 уровня!')
			else
				ItemGem_3 ( role , 6830 )
				Notice('Поздравляем игрока <<'..ChaName..'>>, он открывает Сюрприз Самоцветов +3 и получает: Треснутый Самоцвет Души 3 уровня!')
			end
		else
			GiveItem ( role , 0 , 3821 , 75 , 4 )
		end
end

--	8149	Сюрприз Самоцветов +4
function Chest_Surprise_4(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local rand = math.random ( 1 , 100 )
		if rand >= 1 and rand <= 6  then
			local a = math.random ( 1 , 5 )
			if a == 1  then
				GiveItem ( role , 0 , 6819 , 1 , 4 )
			elseif a == 2 then
				GiveItem ( role , 0 , 6822 , 1 , 4 )
			elseif a == 3 then
				GiveItem ( role , 0 , 6825 , 1 , 4 )
			elseif a == 4 then
				GiveItem ( role , 0 , 6828 , 1 , 4 )
			else
				GiveItem ( role , 0 , 6831 , 1 , 4 )
			end
		elseif rand >= 7 and rand <= 9 then
			local a = math.random ( 1 , 5 )
			if a == 1  then
				ItemGem_2 ( role , 6819 )
			elseif a == 2 then
				ItemGem_2 ( role , 6822 )
			elseif a == 3 then
				ItemGem_2 ( role , 6825 )
			elseif a == 4 then
				ItemGem_2 ( role , 6828 )
			else
				ItemGem_2 ( role , 6831 )
			end
		elseif rand >= 9 and rand <= 10 then
			local ChaName = GetChaDefaultName ( role )
			local a = math.random ( 1 , 5 )
			if a == 1  then
				ItemGem_3 ( role , 6819 )
				Notice('Поздравляем игрока <<'..ChaName..'>>, он открывает Сюрприз Самоцветов +4 и получает: Неограненный Самоцвет Ветра 3 уровня!')
			elseif a == 2 then
				ItemGem_3 ( role , 6822 )
				Notice('Поздравляем игрока <<'..ChaName..'>>, он открывает Сюрприз Самоцветов +4 и получает: Неограненный Самоцвет Удара 3 уровня!')
			elseif a == 3 then
				ItemGem_3 ( role , 6825 )
				Notice('Поздравляем игрока <<'..ChaName..'>>, он открывает Сюрприз Самоцветов +4 и получает: Неограненный Самоцвет Колосса 3 уровня!')
			elseif a == 4 then
				ItemGem_3 ( role , 6828 )
				Notice('Поздравляем игрока <<'..ChaName..'>>, он открывает Сюрприз Самоцветов +4 и получает: Неограненный Самоцвет Ярости 3 уровня!')
			else
				ItemGem_3 ( role , 6831 )
				Notice('Поздравляем игрока <<'..ChaName..'>>, он открывает Сюрприз Самоцветов +4 и получает: Неограненный Самоцвет Души 3 уровня!')
			end
		else
			GiveItem ( role , 0 , 3820 , 75 , 4 )
		end
end

function Chest_gemi_3(role, Item)--гемы +3 рондом
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local c = math.random ( 1 , 5 )
		if c == 1  then
			GiveItem ( role , 0 , 6818 , 1 , 4 )--Треснутый Самоцвет Ветра
		elseif c == 2 then
			GiveItem ( role , 0 , 6821 , 1 , 4 )--Треснутый Самоцвет Удара
		elseif c == 3 then
			GiveItem ( role , 0 , 6824 , 1 , 4 )--Треснутый Самоцвет Колосса
		elseif c == 4 then
			GiveItem ( role , 0 , 6827 , 1 , 4 )--Треснутый Самоцвет Ярости
		else
			GiveItem ( role , 0 , 6830 , 1 , 4 )--Треснутый Самоцвет Души
		end
end

function Chest_gemi_4(role, Item)--гемы +4 рондом
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local c = math.random ( 1 , 5 )
		if c == 1  then
			GiveItem ( role , 0 , 6819 , 1 , 4 )--Неограненный Самоцвет Ветра
			return
		elseif c == 2 then
			GiveItem ( role , 0 , 6822 , 1 , 4 )--Неограненный Самоцвет Удара
			return
		elseif c == 3 then
			GiveItem ( role , 0 , 6825 , 1 , 4 )--Неограненный Самоцвет Колосса
			return
		elseif c == 4 then
			GiveItem ( role , 0 , 6828 , 1 , 4 )--Неограненный Самоцвет Ярости
			return
		else
			GiveItem ( role , 0 , 6831 , 1 , 4 )--Неограненный Самоцвет Души
			return
		end
end

function Chest_gemi_5(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local c = math.random ( 1 , 5 )
		if c == 1  then
			GiveItem ( role , 0 , 0860 , 1 , 4 )
			return
		elseif c == 2 then
			GiveItem ( role , 0 , 0861 , 1 , 4 )
			return
		elseif c == 3 then
			GiveItem ( role , 0 , 0862 , 1 , 4 )
			return
		elseif c == 4 then
			GiveItem ( role , 0 , 0863 , 1 , 4 )
			return
		else
			GiveItem ( role , 0 , 1012 , 1 , 4 )
			return
		end
end

--АНС 55
function Chest_ansiki(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local job = GetChaAttr(role, ATTR_JOB)
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
		if job == 8  then -- Чамп
			GiveItem ( role , 0 , 0765 , 1 , 4 )
			GiveItem ( role , 0 , 0772 , 1 , 4 )
			GiveItem ( role , 0 , 0935 , 1 , 4 )
			GiveItem ( role , 0 , 0936 , 1 , 4 )
			return
		elseif job == 9 then -- Круз
			GiveItem ( role , 0 , 0775 , 2 , 4 )
			GiveItem ( role , 0 , 0768 , 1 , 4 )
			GiveItem ( role , 0 , 0808 , 1 , 4 )
			GiveItem ( role , 0 , 0807 , 1 , 4 )
			return
		elseif job == 12 then -- Шарп
			GiveItem ( role , 0 , 0783 , 1 , 4 )
			GiveItem ( role , 0 , 0779 , 1 , 4 )
			GiveItem ( role , 0 , 0810 , 1 , 4 )
			GiveItem ( role , 0 , 0809 , 1 , 4 )
			return
		elseif job == 13 then -- Клер
			GiveItem ( role , 0 , 0787 , 1 , 4 )
			GiveItem ( role , 0 , 0791 , 1 , 4 )
			GiveItem ( role , 0 , 0812 , 1 , 4 )
			GiveItem ( role , 0 , 0814 , 1 , 4 )
			return
		elseif job == 14 then -- СМ
			GiveItem ( role , 0 , 0794 , 1 , 4 )
			GiveItem ( role , 0 , 0797 , 1 , 4 )
			GiveItem ( role , 0 , 0813 , 1 , 4 )
			GiveItem ( role , 0 , 0811 , 1 , 4 )
			return
		elseif job == 16 then -- Вояг
			GiveItem ( role , 0 , 0805 , 1 , 4 )
			GiveItem ( role , 0 , 0801 , 1 , 4 )
			GiveItem ( role , 0 , 0877 , 1 , 4 )
			GiveItem ( role , 0 , 0815 , 1 , 4 )
			return
		else
		SystemNotice( role , "Не может быть использовано, возьмите вторую профессию!" )
		UseItemFailed ( role )
			return
		end
end

--Кристальный Котел
function ItemUse_CookBlurry ( role , Item , Item_Traget ) 
	local Item_ID = GetItemID ( Item_Traget )
	if Item_ID ~= 2302 then
		SystemNotice(role ,"Можно использовать только не чертеже Кулинарии")
		UseItemFailed ( role )
		return
	end
	local ingr1 = GetItemAttr(Item_Traget, ITEMATTR_VAL_STR)
	local ingr2 = GetItemAttr(Item_Traget, ITEMATTR_VAL_CON)
	local ingr3 = GetItemAttr(Item_Traget, ITEMATTR_VAL_DEX)
	local item_polych = GetItemAttr(Item_Traget, ITEMATTR_VAL_AGI)
	local lvl_cook = GetItemAttr(Item_Traget, ITEMATTR_URE)
	local count_use = GetItemAttr(Item_Traget, ITEMATTR_VAL_STA)
	local mf_count = GetItemAttr(Item_Traget, ITEMATTR_MAXURE)
	local Num_paper = GetItemForgeParam ( Item_Traget , 1 )
	Num_paper = TansferNum ( Num_paper )
	local ingr1_count = GetNum_Part2 ( Num_paper )
	local ingr2_count = GetNum_Part4 ( Num_paper )
	local ingr3_count = GetNum_Part6 ( Num_paper )
	local skill_lv = GetSkillLv(role, 0339)
	if skill_lv < lvl_cook then
		SystemNotice(role ,"Уровень вашего навыка Кулинария, ниже чем уровень чертежа!")
		UseItemFailed ( role )
		return
	end
	if count_use == 0 then
		SystemNotice(role ,"Использовать чертеж не возможно, проверьте возможно вы уже израсходовали его!")
		UseItemFailed ( role )
		return
	end
	local ret1 = proc_ingridient(role,ingr1,ingr1_count)
	local ret2 = proc_ingridient(role,ingr2,ingr2_count)
	local ret3 = proc_ingridient(role,ingr3,ingr3_count)
	local ret4 = proc_ingridient(role,0855,mf_count)
	if ret1 == 0 or ret2 == 0 or ret3 == 0 or ret4 == 0 then
		UseItemFailed ( role )
		return
	end
	local dell1 = dell_ingridient(role,ingr1,ingr1_count)
	local dell2 = dell_ingridient(role,ingr2,ingr2_count)
	local dell3 = dell_ingridient(role,ingr3,ingr3_count)
	local dell4 = dell_ingridient(role,0855,mf_count)
	if dell1 == 0 or dell2 == 0 or dell3 == 0 or dell4 == 0 then
		UseItemFailed ( role )
		return
	end
	local rand = math.random(1,3)
	local item_polych_count = 0
	if skill_lv == 1 then
		item_polych_count = 1
	elseif skill_lv == 2 then
		item_polych_count = 2
	elseif skill_lv == 3 or skill_lv == 4 then
		if rand == 1 then
			item_polych_count = 3
		elseif rand == 2 then
			item_polych_count = 3
		elseif rand == 3 then
			item_polych_count = 4
		end
	elseif skill_lv == 5 or skill_lv == 6 then
		if rand == 1 then
			item_polych_count = 4
		elseif rand == 2 then
			item_polych_count = 4
		elseif rand == 3 then
			item_polych_count = 5
		end
	elseif skill_lv == 7 then
		if rand == 1 then
			item_polych_count = 5
		elseif rand == 2 then
			item_polych_count = 5
		elseif rand == 3 then
			item_polych_count = 5
		end
	end
	local new_count_use = count_use - 1
	SetItemAttr(Item_Traget, ITEMATTR_VAL_STA, new_count_use)
	GiveItem ( role, 0 , item_polych , item_polych_count , 4 )
	GiveItem ( role, 0 , 8864 , 1 , 4 )
end

--БС
function Chest_bski(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local job = GetChaAttr(role, ATTR_JOB)
	local typeSH = math.random ( 1 , 100 )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
		if job == 8  then -- Чамп
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 2532 , 1 , 4 )
			else
				GiveItem ( role , 0 , 2531 , 1 , 4 )
			return
			end
		elseif job == 9 then -- Круз
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 2535 , 1 , 4 )
			else
				GiveItem ( role , 0 , 2534 , 1 , 4 )
			return
			end
		elseif job == 12 then -- Шарп
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 2538 , 1 , 4 )
			else
				GiveItem ( role , 0 , 2537 , 1 , 4 )
			return
			end
		elseif job == 13 then -- Клер
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 2544 , 1 , 4 )
			else
				GiveItem ( role , 0 , 2543 , 1 , 4 )
			return
			end
		elseif job == 14 then -- СМ
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 2547 , 1 , 4 )
			else
				GiveItem ( role , 0 , 2546 , 1 , 4 )
			return
			end
		elseif job == 16 then -- Вояг
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 2541 , 1 , 4 )
			else
				GiveItem ( role , 0 , 2540 , 1 , 4 )
			return
			end
		else
		SystemNotice( role , "Не может быть использовано, возьмите вторую профессию!" )
		UseItemFailed ( role )
			return
		end
end
--АНС 65
function Chest_ansi65(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	local job = GetChaAttr(role, ATTR_JOB)
	local typeSH = math.random ( 1 , 100 )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
		if job == 8  then -- Чамп
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 766 , 1 , 4 )
			else
				GiveItem ( role , 0 , 773 , 1 , 4 )
			return
			end
		elseif job == 9 then -- Круз
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 769 , 1 , 4 )
			else
				GiveItem ( role , 0 , 776 , 1 , 4 )
			return
			end
		elseif job == 12 then -- Шарп
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 780 , 1 , 4 )
			else
				GiveItem ( role , 0 , 784 , 1 , 4 )
			return
			end
		elseif job == 13 then -- Клер
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 792 , 1 , 4 )
			else
				GiveItem ( role , 0 , 788 , 1 , 4 )
			return
			end
		elseif job == 14 then -- СМ
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 798 , 1 , 4 )
			else
				GiveItem ( role , 0 , 795 , 1 , 4 )
			return
			end
		elseif job == 16 then -- Вояг
			if typeSH >= 0 and typeSH <= 65  then
				GiveItem ( role , 0 , 806 , 1 , 4 )
			else
				GiveItem ( role , 0 , 802 , 1 , 4 )
			return
			end
		else
		SystemNotice( role , "Не может быть использовано, возьмите вторую профессию!" )
		UseItemFailed ( role )
			return
		end
end

--	2919	Бремя Смерти(Воитель)
function ItemUse_DathBagA(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"Вам необходимо иметь 2 свободных слота, что бы открыть Бремя Смерти!")
		UseItemFailed ( role )
		return
	end
	local star_rad = math.random ( 1, 3 )
	if star_rad == 1 then
		GiveItem ( role , 0 , 2846  , 1 , 16 )
	elseif star_rad == 2 then
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	elseif star_rad == 3 then
		GiveItem ( role , 0 , 2846  , 1 , 16 ) 
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	end
end

--	2920	Бремя Смерти(Стрелок)
function ItemUse_DathBagB(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"Вам необходимо иметь 2 свободных слота, что бы открыть Бремя Смерти!")
		UseItemFailed ( role )
		return
	end
	local star_rad = math.random ( 1, 3 )
	if star_rad == 1 then
		GiveItem ( role , 0 , 2847  , 1 , 16 )
	elseif star_rad == 2 then
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	elseif star_rad == 3 then
		GiveItem ( role , 0 , 2847  , 1 , 16 ) 
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	end
end

--	2921	Бремя Смерти(Чемпион)
function ItemUse_DathBagC(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"Вам необходимо иметь 2 свободных слота, что бы открыть Бремя Смерти!")
		UseItemFailed ( role )
		return
	end
	local star_rad = math.random ( 1, 3 )
	if star_rad == 1 then
		GiveItem ( role , 0 , 2848  , 1 , 16 )
	elseif star_rad == 2 then
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	elseif star_rad == 3 then
		GiveItem ( role , 0 , 2848  , 1 , 16 ) 
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	end
end

--	2922	Бремя Смерти(Защитник)
function ItemUse_DathBagD(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"Вам необходимо иметь 2 свободных слота, что бы открыть Бремя Смерти!")
		UseItemFailed ( role )
		return
	end
	local star_rad = math.random ( 1, 3 )
	if star_rad == 1 then
		GiveItem ( role , 0 , 2343  , 1 , 16 )
	elseif star_rad == 2 then
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	elseif star_rad == 3 then
		GiveItem ( role , 0 , 2343  , 1 , 16 ) 
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	end
end

--	2923	Бремя Смерти(Лучник)
function ItemUse_DathBagE(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"Вам необходимо иметь 2 свободных слота, что бы открыть Бремя Смерти!")
		UseItemFailed ( role )
		return
	end
	local star_rad = math.random ( 1, 3 )
	if star_rad == 1 then
		GiveItem ( role , 0 , 2850  , 1 , 16 )
	elseif star_rad == 2 then
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	elseif star_rad == 3 then
		GiveItem ( role , 0 , 2850  , 1 , 16 ) 
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	end
end

--	2924	Бремя Смерти(Цилительница)
function ItemUse_DathBagF(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"Вам необходимо иметь 2 свободных слота, что бы открыть Бремя Смерти!")
		UseItemFailed ( role )
		return
	end
	local star_rad = math.random ( 1, 3 )
	if star_rad == 1 then
		GiveItem ( role , 0 , 2851  , 1 , 16 )
	elseif star_rad == 2 then
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	elseif star_rad == 3 then
		GiveItem ( role , 0 , 2851  , 1 , 16 ) 
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	end
end

--	2925	Бремя Смерти(Колдунья)
function ItemUse_DathBagG(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 3 then
		SystemNotice(role ,"Вам необходимо иметь 2 свободных слота, что бы открыть Бремя Смерти!")
		UseItemFailed ( role )
		return
	end
	local star_rad = math.random ( 1, 3 )
	if star_rad == 1 then
		GiveItem ( role , 0 , 2852  , 1 , 16 )
	elseif star_rad == 2 then
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	elseif star_rad == 3 then
		GiveItem ( role , 0 , 2852  , 1 , 16 ) 
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	end
end

--	2926	Бремя Смерти(Покоритель морей)
function ItemUse_DathBagH(role, Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"Вам необходимо иметь 2 свободных слота, что бы открыть Бремя Смерти!")
		UseItemFailed ( role )
		return
	end
	local star_rad = math.random ( 1, 3 )
	if star_rad == 1 then
		GiveItem ( role , 0 , 2853  , 1 , 16 )
	elseif star_rad == 2 then
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	elseif star_rad == 3 then
		GiveItem ( role , 0 , 2853  , 1 , 16 ) 
		GiveItem ( role , 0 , 2849  , 1 , 16 )
	end
end

--	8202	Сундук Нового игрока
function Chest_NewPlayer ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 6 then
		SystemNotice(role ,"Вам необходимо иметь 5 свободных слота, что бы открыть Сундук Нового игрока!")
		UseItemFailed ( role )
		return
	end
	local lv = GetChaAttr(role, ATTR_LV) 
	if lv <= 59 then
		SystemNotice ( role , "Сундук Нового игрока могут открыть игроки достигшие 60 уровня." )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	if job <= 7 then
		SystemNotice ( role , "Сундук Нового игрока могут открыть игроки получившие 2 профессию." )
		UseItemFailed ( role )
		return
	end
	--Чемпион
	if job == 8 then
		GiveItem ( role , 0 , 0773  , 1 , 4 )
		GiveItem ( role , 0 , 2530  , 1 , 4 )
		GiveItem ( role , 0 , 2531  , 1 , 4 )
		GiveItem ( role , 0 , 2532  , 1 , 4 )
		GiveItem ( role , 0 , 8203  , 2 , 4 )
	--Воитель
	elseif job == 9 then
		GiveItem ( role , 0 , 0776  , 1 , 4 )
		GiveItem ( role , 0 , 0776  , 1 , 4 )
		GiveItem ( role , 0 , 2533  , 1 , 4 )
		GiveItem ( role , 0 , 2534  , 1 , 4 )
		GiveItem ( role , 0 , 2535  , 1 , 4 )
		GiveItem ( role , 0 , 8203  , 2 , 4 )
	--Стрелок
	elseif job == 12 then
		GiveItem ( role , 0 , 0784  , 1 , 4 )
		GiveItem ( role , 0 , 2340  , 1 , 4 )
		GiveItem ( role , 0 , 2536  , 1 , 4 )
		GiveItem ( role , 0 , 2537  , 1 , 4 )
		GiveItem ( role , 0 , 2538  , 1 , 4 )
		GiveItem ( role , 0 , 8203  , 2 , 4 )
	--Целительница
	elseif job == 13 then
		GiveItem ( role , 0 , 0788  , 1 , 4 )
		GiveItem ( role , 0 , 2542  , 1 , 4 )
		GiveItem ( role , 0 , 2543  , 1 , 4 )
		GiveItem ( role , 0 , 2544  , 1 , 4 )
		GiveItem ( role , 0 , 2548  , 1 , 4 )
		GiveItem ( role , 0 , 8203  , 2 , 4 )
	--Колдунья
	elseif job == 14 then
		GiveItem ( role , 0 , 0795  , 1 , 4 )
		GiveItem ( role , 0 , 2545  , 1 , 4 )
		GiveItem ( role , 0 , 2546  , 1 , 4 )
		GiveItem ( role , 0 , 2547  , 1 , 4 )
		GiveItem ( role , 0 , 2548  , 1 , 4 )
		GiveItem ( role , 0 , 8203  , 2 , 4 )
	--Покоритель морей
	elseif job == 16 then
		GiveItem ( role , 0 , 0802  , 1 , 4 )
		GiveItem ( role , 0 , 2539  , 1 , 4 )
		GiveItem ( role , 0 , 2540  , 1 , 4 )
		GiveItem ( role , 0 , 2541  , 1 , 4 )
		GiveItem ( role , 0 , 2548  , 1 , 4 )
		GiveItem ( role , 0 , 8203  , 2 , 4 )
	end
end

--	8204	Снаряжение новичка I
function Chest_newbie1 ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 6 then
		SystemNotice(role ,"Вам необходимо иметь 5 свободных слота, что бы открыть Снаряжение новичка I!")
		UseItemFailed ( role )
		return
	end
	local lv = GetChaAttr(role, ATTR_LV) 
	if lv <= 39 then
		SystemNotice ( role , "Снаряжение новичка I могут открыть игроки достигшие 40 уровня." )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	if job <= 7 then
		SystemNotice ( role , "Снаряжение новичка I могут открыть игроки получившие 2 профессию." )
		UseItemFailed ( role )
		return
	end
	--Чемпион
	if job == 8 then
		GiveItem ( role , 0 , 3802  , 1 , 4 )
		GiveItem ( role , 0 , 1932  , 1 , 4 )
		GiveItem ( role , 0 , 1506  , 1 , 4 )
		GiveItem ( role , 0 , 1509  , 1 , 4 )
	--Воитель
	elseif job == 9 then
		GiveItem ( role , 0 , 1929  , 1 , 4 )
		GiveItem ( role , 0 , 1936  , 1 , 4 )
		GiveItem ( role , 0 , 1940  , 1 , 4 )
		GiveItem ( role , 0 , 3799  , 2 , 4 )
	--Стрелок
	elseif job == 12 then
		GiveItem ( role , 0 , 1944  , 1 , 4 )
		GiveItem ( role , 0 , 1948  , 1 , 4 )
		GiveItem ( role , 0 , 1952  , 1 , 4 )
		GiveItem ( role , 0 , 3806  , 1 , 4 )
	--Целительница
	elseif job == 13 then
		GiveItem ( role , 0 , 1959  , 1 , 4 )
		GiveItem ( role , 0 , 1966  , 1 , 4 )
		GiveItem ( role , 0 , 1973  , 1 , 4 )
		GiveItem ( role , 0 , 3813  , 1 , 4 )
	--Колдунья
	elseif job == 14 then
		GiveItem ( role , 0 , 3810  , 1 , 4 )
		GiveItem ( role , 0 , 1956  , 1 , 4 )
		GiveItem ( role , 0 , 1963  , 1 , 4 )
		GiveItem ( role , 0 , 1970  , 1 , 4 )
	--Покоритель морей
	elseif job == 16 then
		GiveItem ( role , 0 , 1977  , 1 , 4 )
		GiveItem ( role , 0 , 1981  , 1 , 4 )
		GiveItem ( role , 0 , 1985  , 1 , 4 )
		GiveItem ( role , 0 , 3817  , 1 , 4 )
	end
end

--	8205	Снаряжение новичка II
function Chest_newbie2 ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 6 then
		SystemNotice(role ,"Вам необходимо иметь 5 свободных слота, что бы открыть Снаряжение новичка II!")
		UseItemFailed ( role )
		return
	end
	local lv = GetChaAttr(role, ATTR_LV) 
	if lv <= 49 then
		SystemNotice ( role , "Снаряжение новичка II могут открыть игроки достигшие 50 уровня." )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	if job <= 7 then
		SystemNotice ( role , "Снаряжение новичка II могут открыть игроки получившие 2 профессию." )
		UseItemFailed ( role )
		return
	end
	--Чемпион
	if job == 8 then
		GiveItem ( role , 0 , 3803  , 1 , 4 )
		GiveItem ( role , 0 , 1933  , 1 , 4 )
		GiveItem ( role , 0 , 1507  , 1 , 4 )
		GiveItem ( role , 0 , 1510  , 1 , 4 )
	--Воитель
	elseif job == 9 then
		GiveItem ( role , 0 , 1930  , 1 , 4 )
		GiveItem ( role , 0 , 1937  , 1 , 4 )
		GiveItem ( role , 0 , 1941  , 1 , 4 )
		GiveItem ( role , 0 , 3800  , 2 , 4 )
	--Стрелок
	elseif job == 12 then
		GiveItem ( role , 0 , 1945  , 1 , 4 )
		GiveItem ( role , 0 , 1949  , 1 , 4 )
		GiveItem ( role , 0 , 1953  , 1 , 4 )
		GiveItem ( role , 0 , 3807  , 1 , 4 )
	--Целительница
	elseif job == 13 then
		GiveItem ( role , 0 , 1960  , 1 , 4 )
		GiveItem ( role , 0 , 1967  , 1 , 4 )
		GiveItem ( role , 0 , 1974  , 1 , 4 )
		GiveItem ( role , 0 , 3814  , 1 , 4 )
	--Колдунья
	elseif job == 14 then
		GiveItem ( role , 0 , 3811  , 1 , 4 )
		GiveItem ( role , 0 , 1957  , 1 , 4 )
		GiveItem ( role , 0 , 1964  , 1 , 4 )
		GiveItem ( role , 0 , 1971  , 1 , 4 )
	--Покоритель морей
	elseif job == 16 then
		GiveItem ( role , 0 , 1978  , 1 , 4 )
		GiveItem ( role , 0 , 1982  , 1 , 4 )
		GiveItem ( role , 0 , 1986  , 1 , 4 )
		GiveItem ( role , 0 , 3818  , 1 , 4 )
	end
end

--	8206	Снаряжение новичка III
function Chest_newbie3 ( role , Item )
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 6 then
		SystemNotice(role ,"Вам необходимо иметь 5 свободных слота, что бы открыть Снаряжение новичка III!")
		UseItemFailed ( role )
		return
	end
	local lv = GetChaAttr(role, ATTR_LV) 
	if lv <= 59 then
		SystemNotice ( role , "Снаряжение новичка III могут открыть игроки достигшие 60 уровня." )
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	if job <= 7 then
		SystemNotice ( role , "Снаряжение новичка III могут открыть игроки получившие 2 профессию." )
		UseItemFailed ( role )
		return
	end
	--Чемпион
	if job == 8 then
		GiveItem ( role , 0 , 3804  , 1 , 4 )
		GiveItem ( role , 0 , 1934  , 1 , 4 )
		GiveItem ( role , 0 , 1508  , 1 , 4 )
		GiveItem ( role , 0 , 1511  , 1 , 4 )
	--Воитель
	elseif job == 9 then
		GiveItem ( role , 0 , 1931  , 1 , 4 )
		GiveItem ( role , 0 , 1938  , 1 , 4 )
		GiveItem ( role , 0 , 1942  , 1 , 4 )
		GiveItem ( role , 0 , 3801  , 2 , 4 )
	--Стрелок
	elseif job == 12 then
		GiveItem ( role , 0 , 1946  , 1 , 4 )
		GiveItem ( role , 0 , 1950  , 1 , 4 )
		GiveItem ( role , 0 , 1954  , 1 , 4 )
		GiveItem ( role , 0 , 3808  , 1 , 4 )
	--Целительница
	elseif job == 13 then
		GiveItem ( role , 0 , 1961  , 1 , 4 )
		GiveItem ( role , 0 , 1968  , 1 , 4 )
		GiveItem ( role , 0 , 1975  , 1 , 4 )
		GiveItem ( role , 0 , 3815  , 1 , 4 )
	--Колдунья
	elseif job == 14 then
		GiveItem ( role , 0 , 3812  , 1 , 4 )
		GiveItem ( role , 0 , 1958  , 1 , 4 )
		GiveItem ( role , 0 , 1965  , 1 , 4 )
		GiveItem ( role , 0 , 1972  , 1 , 4 )
	--Покоритель морей
	elseif job == 16 then
		GiveItem ( role , 0 , 1979  , 1 , 4 )
		GiveItem ( role , 0 , 1983  , 1 , 4 )
		GiveItem ( role , 0 , 1988  , 1 , 4 )
		GiveItem ( role , 0 , 3819  , 1 , 4 )
	end
end



--	1016	Мешочек Богини
function ItemUse_NSDXB ( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь!")
		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr(role, ATTR_JOB)
	--Чемпион
	if job == 8 then
		GiveItem ( role , 0 , 2332 , 1 , 4 )
		GiveItem ( role , 0 , 2338 , 1 , 4 )
		GiveItem ( role , 0 , 2817 , 1 , 4 )
		GiveItem ( role , 0 , 2818 , 1 , 4 )
		GiveItem ( role , 0 , 2819 , 1 , 4 )
	--Воитель
	elseif job == 9 then
		GiveItem ( role , 0 , 2331 , 1 , 4 )
		GiveItem ( role , 0 , 2331 , 1 , 4 )
		GiveItem ( role , 0 , 2820 , 1 , 4 )
		GiveItem ( role , 0 , 2821 , 1 , 4 )
		GiveItem ( role , 0 , 2822 , 1 , 4 )
	--Стрелок
	elseif job == 12 then
		GiveItem ( role , 0 , 2334 , 1 , 4 )
		GiveItem ( role , 0 , 2335 , 1 , 4 )
		GiveItem ( role , 0 , 2823 , 1 , 4 )
		GiveItem ( role , 0 , 2824 , 1 , 4 )
		GiveItem ( role , 0 , 2825 , 1 , 4 )
	--Целительница
	elseif job == 13 then
		GiveItem ( role , 0 , 2336 , 1 , 4 )
		GiveItem ( role , 0 , 2829 , 1 , 4 )
		GiveItem ( role , 0 , 2830 , 1 , 4 )
		GiveItem ( role , 0 , 2831 , 1 , 4 )
		GiveItem ( role , 0 , 5847 , 1 , 4 )
	--Колдунья
	elseif job == 14 then
		GiveItem ( role , 0 , 2337 , 1 , 4 )
		GiveItem ( role , 0 , 2832 , 1 , 4 )
		GiveItem ( role , 0 , 2833 , 1 , 4 )
		GiveItem ( role , 0 , 2834 , 1 , 4 )
		GiveItem ( role , 0 , 5847 , 1 , 4 )
	--Покоритель морей
	elseif job == 16 then
		GiveItem ( role , 0 , 2333 , 1 , 4 )
		GiveItem ( role , 0 , 2826 , 1 , 4 )
		GiveItem ( role , 0 , 2827 , 1 , 4 )
		GiveItem ( role , 0 , 2828 , 1 , 4 )
		GiveItem ( role , 0 , 5847 , 1 , 4 )
	else
		SystemNotice(role ,"Только игроки со второй профессией могут открыть этот сундук!")
		UseItemFailed ( role )
		return
	end
	local cha_name = GetChaDefaultName ( role ) 
	local message = cha_name.." открывает Мешочек Богини и получает Сет Смерти!"
	Notice ( message )
end

--	1019	Мешочек Черного дракона
function ItemUse_minibh( role , Item )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь!")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 864 , 1 , 4 )
	GiveItem ( role , 0 , 865 , 1 , 4 )
	GiveItem ( role , 0 , 866 , 1 , 4 )
	GiveItem ( role , 0 , 8809 , 1 , 4 )
end

-----
--Система пурпурной матрёшки
---
function ItemUse_raritybox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then

		UseItemFailed ( role )
		return
	end
	local job = GetChaAttr( role, ATTR_JOB) 
	local cha_type = GetChaTypeID ( role )
	local itemname = ""
	if cha_type ~= 2 and job==4 then
		GiveItem ( role , 0 , 2580 , 1 , 4 )
		itemname = "85 кольцо "
	elseif cha_type ~= 2 and job==16 then
		GiveItem ( role , 0 , 2580 , 1 , 4 )
		itemname = "85 кольцо "
	elseif cha_type == 2  and job~=0 then
		GiveItem ( role , 0 , 2577 , 1 , 4 )
		itemname = "85 кольцо "
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==2 then
		GiveItem ( role , 0 , 2579  , 1 , 4 )
		itemname = "85 кольцо "
	elseif cha_type ~= 2 and  cha_type ~= 4 and job==12 then
		GiveItem ( role , 0 , 2579  , 1 , 4 )
		itemname = "85 кольцо "
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==5 then
		local dina=math.random ( 1, 2 )
	if dina==1 then
		GiveItem ( role , 0 , 2582  , 1 , 4 )
		itemname = "85 кольцо "
	else
		GiveItem ( role , 0 , 2581  , 1 , 4 )
		itemname = "85 кольцо"
	end
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==13 then
		GiveItem ( role , 0 , 2582  , 1 , 4 )
		itemname = "85 кольцо "
	elseif cha_type ~= 1 and  cha_type ~= 2 and job==14 then
		GiveItem ( role , 0 , 2581  , 1 , 4 )
		itemname = "85 кольцо "
	elseif cha_type == 1 and  job==1 then
		GiveItem ( role , 0 , 2578  , 1 , 4 )
		itemname = "85 кольцо "
	elseif cha_type == 1 and  job==9 then
		GiveItem ( role , 0 , 2578  , 1 , 4 )
		itemname = "85 кольцо "
	elseif cha_type == 3 and  job==1 then
		GiveItem ( role , 0 , 2578  , 1 , 4 )
		itemname = "85 кольцо "
	elseif cha_type == 3 and  job==9 then
		GiveItem ( role , 0 , 2578  , 1 , 4 )
		itemname = "85 кольцо "
	else 
		UseItemFailed ( role )
		return
	end
end

--Пурпурный сундук
function ItemUse_purplebox (role, Item)

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then

		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then

		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5702 )                                                
	if i <=0 then
		UseItemFailed ( role )
		return LUA_FALSE
	end
	local s = DelBagItem ( role , 5702 , 1 ) 
	local	sc = math.random(1,6)
	local itemname = ""
	if  sc ==1 then	
		GiveItem ( role , 0 , 8535 , 1 , 4 )                    ---Сундук зелёного дракона 40%
		
	elseif sc ==2 then		
		GiveItem ( role , 0 , 8142 , 2 , 4 )                    ---Расписка на очищающий самоцвет 2 шт. 20%
		
	elseif sc ==3 then
		local rand_money = math.random(200000,1000000)
		AddMoney ( role , 0 , rand_money )                    ---Супер Усилитель стремлений 29%
		
	elseif sc ==4 then
		local rand_app =  math.random(8844,8862)
		GiveItem ( role , 0 , rand_app , 1 , 4 )                    ---Праздничный обед 10%
		
	elseif sc ==5 then
		local rand_app =  math.random(7500,7628)
		GiveItem ( role , 0 , rand_app , 1 , 4 ) 
		
	elseif sc ==6 then		
		GiveItem ( role , 0 , 5703 , 2 , 4 )   
	else   
end
end

--Сундук Зелёного Дракона
function ItemUse_greenbox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5703 )                                                
	if i <=0 then
		UseItemFailed ( role )
		return LUA_FALSE
	end
	local s = DelBagItem ( role , 5703 , 1 ) 
	local	sc = math.random(1,7)
	local itemname = ""
	if  sc ==1 then	
		GiveItem ( role , 0 , 8549 , 1 , 4 )               
		
	elseif sc ==2 then		
		GiveItem ( role , 0 , 8551 , 1 , 4 )                    
		
	elseif sc ==3 then
		GiveItem ( role , 0 ,8535 , 1 , 4 )                    
		
	elseif sc ==4 then
		GiveItem ( role , 0 ,8142 , 1 , 4 )                    
		
	elseif sc ==5 then
		GiveItem ( role , 0 ,8620 , 1 , 4 )                    
		
	elseif sc ==6 then
		GiveItem ( role , 0 ,262 , 1 , 4 )                    
		
	elseif sc ==7 then
		GiveItem ( role , 0 ,5704 , 1 , 4 )                    
		
	else   
end
end

--Сундук Черного Дракона
function ItemUse_turebox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then
		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5704 )                                                
	if i <=0 then
		UseItemFailed ( role )
		return LUA_FALSE
	end
	local s = DelBagItem ( role , 5704 , 1 ) 
	local	sc = math.random(1,8)
	local itemname = ""
	if  sc ==1 then	
		GiveItem ( role , 0 , 262 , 1 , 4 )               
		
	elseif sc ==2 then		
		GiveItem ( role , 0 , 8142 , 1 , 4 )                    
		
	elseif sc ==3 then
		GiveItem ( role , 0 ,8143 , 1 , 4 )                    
		
	elseif sc ==4 then
		GiveItem ( role , 0 ,3457 , 1 , 4 )                    
		
	elseif sc ==5 then
		GiveItem ( role , 0 ,8617 , 1 , 4 )                    
		
	elseif sc ==6 then
		GiveItem ( role , 0 ,8620 , 1 , 4 )  
		
	elseif sc ==7 then
		local rand_money = math.random(1000000,6000000)
		AddMoney ( role , 0 , rand_money )      
		
	elseif sc ==8 then		
		GiveItem ( role , 0 , 5713 , 1 , 4 )                 
	
	else   
end
end

--Сундук Предела 
function ItemUse_respectbox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then

		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5705 )                                                
	if i <=0 then
		UseItemFailed ( role )
		return LUA_FALSE
	end
	local s = DelBagItem ( role , 5705 , 1 ) 
	local	sc = math.random(1,11)
	local itemname = ""
	if  sc ==1 then	
		GiveItem ( role , 0 , 8143 , 2 , 4 )               
		
	elseif sc ==2 then		
		GiveItem ( role , 0 , 3457 , 3 , 4 )                    
		
	elseif sc ==3 then
		GiveItem ( role , 0 ,1028 , 1 , 4 )                    
		
	elseif sc ==4 then
		GiveItem ( role , 0 ,7792 , 1 , 4 )                    
	
	elseif sc ==5 then
		local rand_money = math.random(6000000,11000000)
		AddMoney ( role , 0 , rand_money )      
		
	elseif sc ==6 then
		GiveItem ( role , 0 ,5706 , 1 , 4 ) 

	elseif sc ==7 then
		GiveItem ( role , 0 ,7108 , 1 , 4 ) 
	elseif sc ==8 then
		GiveItem ( role , 0 ,7109 , 1 , 4 )
	elseif sc ==9 then
		GiveItem ( role , 0 ,7110 , 1 , 4 )
	elseif sc ==10 then
		GiveItem ( role , 0 ,7111 , 1 , 4 )
	elseif sc ==11 then
		GiveItem ( role , 0 ,7112 , 1 , 4 )
	
	else   
end
end

--Неповторимый сундук 
function ItemUse_peerlessbox (role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )	
	 if Item_CanGet < 1 then

		UseItemFailed ( role )
		return
	end
	local i= CheckBagItem( role, 5706 )                                                
	if i <=0 then

		UseItemFailed ( role )
		return LUA_FALSE
	end
	local s = DelBagItem ( role , 5706 , 1 ) 
	local	sc = math.random(1,11)
	local itemname = ""
	if  sc ==1 then	
		GiveItem ( role , 0 , 8144 , 1 , 4 )               
		
	elseif sc ==2 then		
		GiveItem ( role , 0 , 3457 , 4 , 4 )                    
		
	elseif sc ==3 then
		GiveItem ( role , 0 ,1028 , 2 , 4 )                    
		
	elseif sc ==4 then
		GiveItem ( role , 0 ,7792 , 1 , 4 )                    
	
	elseif sc ==5 then
		local rand_money = math.random(11000000,16000000)
		AddMoney ( role , 0 , rand_money )      
		
	 
	elseif sc ==7 then
		GiveItem ( role , 0 ,7108 , 1 , 4 ) 
	elseif sc ==8 then
		GiveItem ( role , 0 ,7109 , 1 , 4 )
	elseif sc ==9 then
		GiveItem ( role , 0 ,7110 , 1 , 4 )
	elseif sc ==10 then
		GiveItem ( role , 0 ,7111 , 1 , 4 )
	elseif sc ==11 then
		GiveItem ( role , 0 ,7112 , 1 , 4 )
end
end


-----

--- Сундуки самоцветов

---
--ЧБ
function ItemUse_cbgem ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы открыть Сундук -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	local sc = math.random(1,3)
	local itemname = ""
	if sc ==1 then
		GiveItem ( role , 0 , 8806 , 1 , 4 )
	elseif sc ==2 then
		GiveItem ( role , 0 , 8807 , 1 , 4 )
	elseif sc ==3 then
		GiveItem ( role , 0 , 8808 , 1 , 4 )
	elseif sc ==4 then
		GiveItem ( role , 0 , 885 , 1 , 4 )
	end
end
--КАРА
function ItemUse_karagem ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы открыть Сундук -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	local sc = math.random(1,3)
	local itemname = ""
	if sc ==1 then
		GiveItem ( role , 0 , 8803 , 1 , 4 )
	elseif sc ==2 then
		GiveItem ( role , 0 , 8804 , 1 , 4 )
	elseif sc ==3 then
		GiveItem ( role , 0 , 8805 , 1 , 4 )
	end
end
--КМД
function ItemUse_kmdgem ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы открыть Сундук -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	local sc = math.random(1,3)
	local itemname = ""
	if sc ==1 then
		GiveItem ( role , 0 , 8800 , 1 , 4 )
	elseif sc ==2 then
		GiveItem ( role , 0 , 8801 , 1 , 4 )
	elseif sc ==3 then
		GiveItem ( role , 0 , 8802 , 1 , 4 )
	elseif sc ==4 then
		GiveItem ( role , 0 , 885 , 1 , 4 )
	end
end
--ЧД
function ItemUse_chdgem ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы открыть Сундук -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	local sc = math.random(1,3)
	local itemname = ""
	if sc ==1 then
		GiveItem ( role , 0 , 0864 , 1 , 4 )
	elseif sc ==2 then
		GiveItem ( role , 0 , 0865 , 1 , 4 )
	elseif sc ==3 then
		GiveItem ( role , 0 , 0866 , 1 , 4 )
	elseif sc ==4 then
		GiveItem ( role , 0 , 0885 , 1 , 4 )
	end
end


--Сундук Сломанных самоцветов 
--1лвл
function ItemUse_nebolshoigemo ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы открыть Сундук небольших самоцветов -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	local sc = math.random(1,8000)
	local itemname = ""
	if  sc <=1500 then
		ItemGem_1 ( role , 6820 )
	elseif sc <=3000 and sc >1500 then
		ItemGem_1 ( role , 6823 )
	elseif sc <=3600 and sc >3000  then
		ItemGem_1 ( role , 6826 )
	elseif sc <=6200 and sc >3600 then
		ItemGem_1 ( role , 6829 )
	elseif sc <=8000 and sc >6200 then
		ItemGem_1 ( role , 6817 )
	
	end
end

--Сундук треснутых самоцветов 
--1
function ItemUse_sredniigemo ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы открыть Сундук средних самоцветов -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	local sc = math.random(1,8000)
	local itemname = ""
	if  sc <=1500 then
		ItemGem_1 ( role , 6818 )
	elseif sc <=3000 and sc >1500 then
		ItemGem_1 ( role , 6821 )
	elseif sc <=3600 and sc >3000  then
		ItemGem_1 ( role , 6824 )
	elseif sc <=6200 and sc >3600 then
		ItemGem_1 ( role , 6827 )
	elseif sc <=8000 and sc >6200 then
		ItemGem_1 ( role , 6830 )
	
	end
end

--Сундук больших самоцветов 
--1
function ItemUse_bolgemo ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы открыть Сундук больших самоцветов -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	local sc = math.random(1,8000)
	local itemname = ""
	if sc <=1500 then
		ItemGem_1 ( role , 6819 )
	elseif sc <=3000 and sc >1500 then
		ItemGem_1 ( role , 6822 )
	elseif sc <=3600 and sc >3000  then
		ItemGem_1 ( role , 6825 )
	elseif sc <=6200 and sc >3600 then
		ItemGem_1 ( role , 6828 )
	elseif sc <=8000 and sc >6200 then
		ItemGem_1 ( role , 6831 )
	
	end
end

--Сундук +5
--1
function ItemUse_gempyato ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы открыть Сундук больших самоцветов -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	local sc = math.random(1,5)
	local itemname = ""
	if sc ==1 then
		ItemGem_1 ( role , 863 )
	elseif sc == 2  then
		ItemGem_1 ( role , 860 )
	elseif sc ==3   then
		ItemGem_1 ( role , 861 )
	elseif sc ==4  then
		ItemGem_1 ( role , 862 )
	elseif sc ==5  then
		ItemGem_1 ( role , 1012 )
	
	end
end

--Cундук маленььких рун(самоцветы)
--1
function ItemUse_XarSamo ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы открыть сундук -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	local sc = math.random(1,7)
	local itemname = ""
	if  sc ==1 then
		ItemGem_1 ( role , 878 )
	elseif sc==2 then
		ItemGem_1 ( role , 879 )
	elseif sc ==3  then
		ItemGem_1 ( role , 880 )
	elseif sc ==4 then
		ItemGem_1 ( role , 881 )
	elseif sc==5 then
		ItemGem_1 ( role , 882 )
	elseif sc==6 then
		ItemGem_1 ( role , 883 )
	elseif sc==7 then
		ItemGem_1 ( role , 884 )
	
		
	end
end

--Сундук рун
--1
function ItemUse_XarSamSilo ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы открыть сундук -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	local sc = math.random(1,6)
	local itemname = ""
	if  sc ==1 then
		ItemGem_1 ( role , 881 )
	elseif sc==2 then
		ItemGem_1 ( role , 882 )
	elseif sc ==3  then
		ItemGem_1 ( role , 883 )
	elseif sc ==1 then
		ItemGem_1 ( role , 884 )
	elseif sc==5then
		ItemGem_1 ( role , 885 )
	elseif sc==6 then
		
	end
end


--Кинжал перемещения
function ItemUse_peremej ( role , Item , Item_Traget )

	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end

	local statetime2 = 8
	local Cha_Boat = GetCtrlBoat ( role )
	local ChaStateLv = GetChaStateLv ( role , STATE_YS )
	local name = GetChaDefaultName(role)
	local x, y = GetChaPos(role)
	local map_name = GetChaMapName (role)
	
	if ukrep2[name] == nil then
        ukrep2[name] = { UsedTime = os.time() }
    end
	local cooldown = ukrep2[name].UsedTime - os.time()
	
	if ukrep2[name].UsedTime >  os.time() then
	local edx = ukrep2[name].UsedTime -  os.time()
			SystemNotice ( role , "Вы не можете пользоваться данным предметов еще "..edx.." секунд"  )
			UseItemFailed ( role )
			return
	end
	
	if Cha_Boat ==  nil then

local a1 = math.random ( 0, 3 )	
local a2 = math.random ( 3, 4 )	
local a3 = math.random ( 1, 6 )	
local a4 = math.random ( 2, 8 )	
local a5 = math.random ( 1, 10 )

if a5 == 1 then 
	local x = math.floor (x/100) + a1
	local y = math.floor (y/100) + a1
	GoTo(role,  x,y, map_name)
end
if a5 == 2 then 
	local x = math.floor (x/100) + a2
	local y = math.floor (y/100) + a2
	GoTo(role,  x,y, map_name)
end
if a5 == 3 then 
	local x = math.floor (x/100) + a3
	local y = math.floor (y/100) + a3
	GoTo(role,  x,y, map_name)
end
if a5 == 4 then 
	local x = math.floor (x/100) + a4
	local y = math.floor (y/100) + a4
	GoTo(role,  x,y, map_name)
end

if a5 == 5 then 
	local x = math.floor (x/100) - a1
	local y = math.floor (y/100) - a1
	GoTo(role,  x,y, map_name)
end
if a5 == 6 then 
	local x = math.floor (x/100) - a2
	local y = math.floor (y/100) - a2
	GoTo(role,  x,y, map_name)
end
if a5 == 7 then 
	local x = math.floor (x/100) - a3
	local y = math.floor (y/100) - a3
	GoTo(role,  x,y, map_name)
end
if a5 == 8 then 
	local x = math.floor (x/100) - a4
	local y = math.floor (y/100) - a4
	GoTo(role,  x,y, map_name)
end

if a5 == 9 then 
	local x = math.floor (x/100) + a1
	local y = math.floor (y/100) - a1
	GoTo(role,  x,y, map_name)
end
if a5 == 10 then 
	local x = math.floor (x/100) + a2
	local y = math.floor (y/100) - a2
	GoTo(role,  x,y, map_name)
end
if a5 == 11 then 
	local x = math.floor (x/100) + a3
	local y = math.floor (y/100) - a3
	GoTo(role,  x,y, map_name)
end
if a5 == 12 then 
	local x = math.floor (x/100) + a4
	local y = math.floor (y/100) - a4
	GoTo(role,  x,y, map_name)
end

if a5 == 13 then 
	local x = math.floor (x/100) - a1
	local y = math.floor (y/100) + a1
	GoTo(role,  x,y, map_name)
end
if a5 == 14 then 
	local x = math.floor (x/100) - a2
	local y = math.floor (y/100) + a2
	GoTo(role,  x,y, map_name)
end
if a5 == 15 then 
	local x = math.floor (x/100) - a3
	local y = math.floor (y/100) + a3
	GoTo(role,  x,y, map_name)
end
if a5 == 16 then 
	local x = math.floor (x/100) - a4
	local y = math.floor (y/100) + a4
	GoTo(role,  x,y, map_name)
end

		ukrep2[name].UsedTime = os.time()+statetime2
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end


end

--Эффекты
function ItemUse_eff ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	
	local name = GetChaDefaultName(role)
	if effff[name] == nil then
        effff[name] = { UsedTime = os.time() }
    end
	local cooldown = effff[name].UsedTime - os.time()
	
	 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	
	local sc = math.random(1,6)
	
	if  sc ==1 then
		PlayEffect (role, 4088 )
		RefreshCha(role)
	elseif sc==2 then
		PlayEffect (role, 4087 )
		RefreshCha(role)
	elseif sc ==3  then
		PlayEffect (role, 4086 )
		RefreshCha(role)
	elseif sc ==1 then
		PlayEffect (role, 4085 )
		RefreshCha(role)
	elseif sc==5 then
		PlayEffect (role, 4084 )
		RefreshCha(role)
	elseif sc==6 then
		PlayEffect (role, 4083 )
		RefreshCha(role)
	end
	effff[name].UsedTime = os.time()+1500

	
	end

--	8239	Драгоценная шкатулка
function Chest_gemi_kolco(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 0 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local rand = math.random ( 1 , 100 )
		if rand >= 1 and rand <= 15 then
			GiveItem ( role , 0 , 8811 , 1 , 4 )
			return
		elseif rand >= 16 and rand <= 43 then
			GiveItem ( role , 0 , 8812 , 1 , 4 )
			return
		elseif rand >= 44 and rand <= 59 then
			GiveItem ( role , 0 , 8813 , 1 , 4 )
			return
		elseif rand >= 60 and rand <= 74 then
			GiveItem ( role , 0 , 8814 , 1 , 4 )
			return
		elseif rand >= 75 and rand <= 100 then
			GiveItem ( role , 0 , 8815 , 1 , 4 )
			return
		end
end

--	8240	Инкрустированная шкатулка
function Chest_gemi_bizhyt(role, Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet <= 1 then
		SystemNotice(role ,"Не удалось открыть сундук. Проверьте ваш инвентарь!")
		UseItemFailed ( role )
		return
	end
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local c = math.random ( 1 , 6 )
		if c == 1  then
			GiveItem ( role , 0 , 8810 , 1 , 4 )
			return
		elseif c == 2 then
			GiveItem ( role , 0 , 8811 , 1 , 4 )
			return
		elseif c == 3  then
			GiveItem ( role , 0 , 7701 , 1 , 4 )
			return
		elseif c == 4  then
			GiveItem ( role , 0 , 7702 , 1 , 4 )
			return
		elseif c == 5  then
			GiveItem ( role , 0 , 7703 , 1 , 4 )
			return
		elseif c == 6  then
			GiveItem ( role , 0 , 7704 , 1 , 4 )
			return
		end
end

--Cундук свитков усиления
function ItemUse_Svitokus ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы открыть сундук -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	local sc = math.random(1,6)
	local itemname = ""
	if  sc ==1 then
		GiveItem ( role , 0 , 8536 , 1 , 4 )
	elseif sc ==2 then
		GiveItem ( role , 0 , 8537 , 1 , 4 )
	elseif sc ==3 then
		GiveItem ( role , 0 , 8581 , 1 , 4 )
	elseif sc ==4 then
		GiveItem ( role , 0 , 8583 , 1 , 4 )
	elseif sc ==5 then
		GiveItem ( role , 0 , 8584 , 1 , 4 )
	elseif sc ==6 then
		GiveItem ( role , 0 , 8587 , 1 , 4 )
	
	end
end

--Cундук свитков усиления
function ItemUse_svitboj ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы узнать -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	local sc = math.random(1,6)
	local itemname = ""
	if  sc ==1 then
		GiveItem ( role , 0 , 8730 , 1 , 4 )
	elseif sc ==2 then
		GiveItem ( role , 0 , 8731 , 1 , 4 )
	elseif sc ==3 then
		GiveItem ( role , 0 , 8732 , 1 , 4 )
	elseif sc ==4 then
		GiveItem ( role , 0 , 8733 , 1 , 4 )
	elseif sc ==5 then
		GiveItem ( role , 0 , 8734 , 1 , 4 )
	elseif sc ==6 then
		GiveItem ( role , 0 , 8735 , 1 , 4 )
	
	end
end

--Сундук фруктов +1
function ItemUse_FeiFru( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы узнать -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
local sc = math.random(1,5)
	local itemname = ""
	if  sc ==1 then
		GiveItem ( role , 0 , 0223 , 1 , 4 )
		itemname = "Ледяная слива"
	elseif   sc ==2 then
		GiveItem ( role , 0 , 0224 , 1 , 4 )
		itemname = "Фишфлос с Зефира"
	elseif  sc ==3   then
		GiveItem ( role , 0 , 0225 , 1 , 4 )
		itemname = "Серебряное манго"
	elseif  sc ==4  then
		GiveItem ( role , 0 , 0226 , 1 , 4 )
		itemname = "Шайтанский бисквит"
	elseif  sc ==5  then
		GiveItem ( role , 0 , 0222 , 1 , 4 )
		itemname = "Фрукт снежного дракона"
	end
end

--Сундук умений фей
function ItemUse_feya( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы узнать -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	local sc = math.random(1,32)

	if  sc==1  then
		GiveItem ( role , 0 , 243 , 1 , 4 )

	elseif sc==2 then
		GiveItem ( role , 0 , 249 , 1 , 4 )

	elseif sc==3  then
		GiveItem ( role , 0 , 246 , 1 , 4 )

	elseif sc==4  then
		GiveItem ( role , 0 , 259 , 1 , 4 )

	elseif sc==5  then
		GiveItem ( role , 0 , 252 , 1 , 4 )
	
	elseif sc==6  then
		GiveItem ( role , 0 , 244 , 1 , 4 )
		
	elseif sc==7  then
		GiveItem ( role , 0 , 245 , 1 , 4 )
		
	elseif sc==8  then
		GiveItem ( role , 0 , 247 , 1 , 4 )
		
	elseif sc==8  then
		GiveItem ( role , 0 , 248 , 1 , 4 )
		
	elseif sc==9  then
		GiveItem ( role , 0 , 250 , 1 , 4 )
		
	elseif sc==10  then
		GiveItem ( role , 0 , 251 , 1 , 4 )
		
	elseif sc==11  then
		GiveItem ( role , 0 , 253 , 1 , 4 )
		
	elseif sc==12  then
		GiveItem ( role , 0 , 254 , 1 , 4 )
		
	elseif sc==13  then
		GiveItem ( role , 0 , 260 , 1 , 4 )
		
	elseif sc==14  then
		GiveItem ( role , 0 , 261 , 1 , 4 )

		elseif sc==15  then
		GiveItem ( role , 0 , 1055 , 1 , 4 )
		elseif sc==16  then
		GiveItem ( role , 0 , 1056 , 1 , 4 )
		elseif sc==17  then
		GiveItem ( role , 0 , 1057 , 1 , 4 )
		elseif sc==18  then
		GiveItem ( role , 0 , 1058 , 1 , 4 )
		elseif sc==19  then
		GiveItem ( role , 0 , 1059 , 1 , 4 )
		elseif sc==20  then
		GiveItem ( role , 0 , 1060 , 1 , 4 )
		elseif sc==21  then
		GiveItem ( role , 0 , 1061 , 1 , 4 )
		elseif sc==22  then
		GiveItem ( role , 0 , 1062 , 1 , 4 )
		elseif sc==23  then
		GiveItem ( role , 0 , 1063 , 1 , 4 )
		elseif sc==24  then
		GiveItem ( role , 0 , 1064 , 1 , 4 )
		elseif sc==25  then
		GiveItem ( role , 0 , 1065 , 1 , 4 )
		elseif sc==26  then
		GiveItem ( role , 0 , 1066 , 1 , 4 )
		elseif sc==27  then
		GiveItem ( role , 0 , 1129 , 1 , 4 )
		
		elseif sc==28  then
		GiveItem ( role , 0 , 1129 , 1 , 4 )
		elseif sc==29  then
		GiveItem ( role , 0 , 1130 , 1 , 4 )
		elseif sc==30  then
		GiveItem ( role , 0 , 1131 , 1 , 4 )
		elseif sc==31  then
		GiveItem ( role , 0 , 1132 , 1 , 4 )
		elseif sc==32  then
		GiveItem ( role , 0 , 1133 , 1 , 4 )
		
		
	end
end

--Сундук фруктов +2
function ItemUse_FeiFruO( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы узнать -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	local sc = math.random(1,5)
	local itemname = ""
	if  sc ==1 then
		GiveItem ( role , 0 , 0277 , 1 , 4 )
		itemname = "Ледяная слива"
	elseif sc ==2 then
		GiveItem ( role , 0 , 0278 , 1 , 4 )
		itemname = "Фишфлос с Зефира"
	elseif sc ==3  then
		GiveItem ( role , 0 , 0279 , 1 , 4 )
		itemname = "Серебряное манго"
	elseif sc ==4then
		GiveItem ( role , 0 , 0280 , 1 , 4 )
		itemname = "Шайтанский бисквит"
	elseif sc ==5 then
		GiveItem ( role , 0 , 0276 , 1 , 4 )
		itemname = "Фрукт снежного дракона"
	end
end

--Свиток на Баф  
function ItemUse_Buff1( role , Item )
	local Cha_Boat = 0
	local statelv = 10
	local statetime = 900
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
   
	
		local StateType = GetChaStateLv (role, STATE_XLZH )--Призрачный огонь
		local StateType = GetChaStateLv (role, STATE_SHPF )--Закалка
		local StateType = GetChaStateLv (role, STATE_MLCH )--Сильная магия
		local StateType = GetChaStateLv (role, STATE_FZLZ )--Мощь бури
		local StateType = GetChaStateLv (role, STATE_JSFB )--Воронка торнадо
		local StateType = GetChaStateLv (role, STATE_TSHD )--Ангельский щит

		if StateType <=0   then  
		
		
		AddState ( role, role, STATE_XLZH, statelv, statetime) 
		AddState ( role, role, STATE_SHPF, statelv, statetime) 
		AddState ( role, role, STATE_MLCH, statelv, statetime) 
		AddState ( role, role, STATE_FZLZ, statelv, statetime) 
		AddState ( role, role, STATE_JSFB, statelv, statetime) 
		AddState ( role, role, STATE_TSHD, statelv, statetime) 
		

		SystemNotice (role, "Вам предоставлены все усиления на 15 минут, наслаждайтесь! ")
	else
		SystemNotice (role, "На данный момент эффект усиления еще не прошел. Дождись окончания эффекта усиления и снова попробуй использовать свиток")
		end
end

----Свитки усиления
	--Обычные свитки
--Защита
function ItemUse_Scroll_Def ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_DEF = GetItemAttr ( Item_Traget , ITEMATTR_VAL_DEF )
	local Notice_Text = ''
	local niz=50 * RAID_SVIT
	local mid=70 * RAID_SVIT
	local hight=90 * RAID_SVIT
	local very=110 * RAID_SVIT
	local naz= 'защиты'
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  Защита")
	
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	
	--Проверка на наличие характеристики
	if Item_DEF <= 0 or Item_DEF == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков '..naz..' , улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end
	
	
	
	--Защита меньше  niz
	if (Item_DEF<=niz) then
		Item_DEF = Item_DEF + 1
		Notice_Text = 'Снаряжение было улучшено, добавлена 1 единица '..naz
	local effect = 365          -- ID эффекта из sceneffectinfo.txt
    PlayEffect (role, effect )  

	--Защита меньше mid
	elseif (Item_DEF<=mid) and (Item_DEF>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлено 2  единицы '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )  
		elseif rad >=41 and rad <= 60 then
			Item_DEF = Item_DEF -1
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицы!'
	
		elseif rad >=61 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_DEF<=hight) and (Item_DEF>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлены 2  единицы '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
			
		elseif rad >=21 and rad <= 50 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_DEF<=very) and (Item_DEF>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -1
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицу!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_DEF>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
			
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
if  Item_DEF <= 0 then
		 Item_DEF = 1
	end
	
	SetItemAttr ( Item_Traget , ITEMATTR_VAL_DEF , Item_DEF )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Уклонение
function ItemUse_Scroll_Yk ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_DEF = GetItemAttr ( Item_Traget , ITEMATTR_VAL_FLEE )
	local Notice_Text = ''
	local niz=20 * RAID_SVIT
	local mid=40  * RAID_SVIT
	local hight=60 * RAID_SVIT
	local very=80 * RAID_SVIT
	local naz= 'уклонения'	
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  Уклонение")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	
	--Проверка на наличие характеристики
	if Item_DEF <= 0 or Item_DEF == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков '..naz..' , улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	--Защита меньше  niz
	if (Item_DEF<=niz) then
		Item_DEF = Item_DEF + 1
		Notice_Text = 'Снаряжение было улучшено, добавлена 1 единица '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
			
	--Защита меньше mid
	elseif (Item_DEF<=mid) and (Item_DEF>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлено 2  единицы '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
		elseif rad >=41 and rad <= 60 then
			Item_DEF = Item_DEF -1
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицы!'
	
		elseif rad >=61 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_DEF<=hight) and (Item_DEF>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлены 2  единицы '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
			
		elseif rad >=21 and rad <= 50 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_DEF<=very) and (Item_DEF>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -1
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицу!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_DEF>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
if  Item_DEF <= 0 then
		 Item_DEF = 1
	end
	
	SetItemAttr ( Item_Traget , ITEMATTR_VAL_FLEE , Item_DEF )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Шанс попадания
function ItemUse_Scroll_Hit ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_DEF = GetItemAttr ( Item_Traget , ITEMATTR_VAL_HIT )
	local Notice_Text = ''
	local niz=20 * RAID_SVIT
	local mid=40  * RAID_SVIT
	local hight=60 * RAID_SVIT
	local very=80 * RAID_SVIT
	local naz= 'хита'	
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  Попадание")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	
	--Проверка на наличие характеристики
	if Item_DEF <= 0 or Item_DEF == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков '..naz..' , улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	--Защита меньше  niz
	if (Item_DEF<=niz) then
		Item_DEF = Item_DEF + 1
		Notice_Text = 'Снаряжение было улучшено, добавлена 1 единица '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	--Защита меньше mid
	elseif (Item_DEF<=mid) and (Item_DEF>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлено 2  единицы '..naz
	
		elseif rad >=41 and rad <= 60 then
			Item_DEF = Item_DEF -1
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицы!'
	
		elseif rad >=61 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_DEF<=hight) and (Item_DEF>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлены 2  единицы '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
		elseif rad >=21 and rad <= 50 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_DEF<=very) and (Item_DEF>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -1
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицу!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_DEF>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
if  Item_DEF <= 0 then
		 Item_DEF = 1
	end
	
	SetItemAttr ( Item_Traget , ITEMATTR_VAL_HIT , Item_DEF )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Физическое сопротивление
function ItemUse_Scroll_Pdef ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_DEF = GetItemAttr ( Item_Traget , ITEMATTR_VAL_PDEF )
	local Notice_Text = ''
	local niz=5 * RAID_SVIT
	local mid=10  * RAID_SVIT
	local hight=14 * RAID_SVIT
	local very=20 * RAID_SVIT
	local naz= 'физического сопротивления'	
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  ПР")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	
	--Проверка на наличие характеристики
	if Item_DEF <= 0 or Item_DEF == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков '..naz..' , улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	if Item_Traget_Type == 1 then
		if  Item_DEF >=25 then 
			SystemNotice (role , 'Максимальное значение физического сопротивления в щите!' )
			UseItemFailed ( role )
			return
		end
	end
	
	if Item_Traget_Type == 11 then
		if  Item_DEF >=25 then 
			SystemNotice (role , 'Максимальное значение физического сопротивления в щите!' )
			UseItemFailed ( role )
			return
		end
	end
	
	if Item_Traget_Type == 22 then
		if  Item_DEF >=55 then 
			SystemNotice (role , 'Максимальное значение физического сопротивления в доспехе!' )
			UseItemFailed ( role )
			return
		end
	end
	
	--Защита меньше  niz
	if (Item_DEF<=niz) then
		Item_DEF = Item_DEF + 1
		Notice_Text = 'Снаряжение было улучшено, добавлена 1 единица '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	--Защита меньше mid
	elseif (Item_DEF<=mid) and (Item_DEF>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлено 2  единицы '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
		elseif rad >=41 and rad <= 60 then
			Item_DEF = Item_DEF -1
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицы!'
	
		elseif rad >=61 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_DEF<=hight) and (Item_DEF>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлены 1  единица '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
		elseif rad >=21 and rad <= 50 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_DEF<=very) and (Item_DEF>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -1
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицу!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_DEF>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
	
	
if  Item_DEF <= 0 then
		 Item_DEF = 1
	end
	
	SetItemAttr ( Item_Traget , ITEMATTR_VAL_PDEF , Item_DEF )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Атака
function ItemUse_Scroll_Atk ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_MAX = GetItemAttr ( Item_Traget , ITEMATTR_VAL_MXATK )
	local Item_MIN = GetItemAttr ( Item_Traget , ITEMATTR_VAL_MNATK )
	
	local Notice_Text = ''
	local niz=120 * RAID_SVIT
	local mid=150  * RAID_SVIT
	local hight=220 * RAID_SVIT
	local very=250 * RAID_SVIT
	local dob = 65  
	local naz= 'атаки'	
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  Атака")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	 if Item_Traget_Type == 4 then 
		niz=dob+mid
		mid=dob+mid
		hight=dob+hight
		very=dob+very
	 end
	--Проверка на наличие характеристики
	if Item_MIN <= 0 or Item_MIN == nil or Item_MAX <= 0 or Item_MAX == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков атаки, улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	--Защита меньше  niz
	if (Item_MAX<=niz) then
		Item_MIN = Item_MIN + 3
		Item_MAX = Item_MAX + 3
		Notice_Text = 'Снаряжение было улучшено, добавлена 3 единицы '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	--Защита меньше mid
	elseif (Item_MAX<=mid) and (Item_MAX>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_MIN = Item_MIN + 5
			Item_MAX = Item_MAX + 5
			Notice_Text = 'Снаряжение было улучшено, добавлено 5  единиц '..naz
			
			PlayEffect (role, 365 )
	
		elseif rad >=41 and rad <= 60 then
			Item_MIN = Item_MIN - 5
			Item_MAX = Item_MAX - 5
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 5 единиц!'
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )			

		elseif rad >=61 and rad <= 80 then
			Item_MIN = Item_MIN 
			Item_MAX = Item_MAX 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_MAX<=hight) and (Item_MAX>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_MIN = Item_MIN + 4
			Item_MAX = Item_MAX + 4
			Notice_Text = 'Снаряжение было улучшено, добавлены 4  единицы '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
		elseif rad >=21 and rad <= 50 then
			Item_MIN = Item_MIN - 4
			Item_MAX = Item_MAX - 4
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 4 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_MAX<=very) and (Item_MAX>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_MIN = Item_MIN + 3
			Item_MAX = Item_MAX + 3
			Notice_Text = 'Снаряжение было улучшено, добавлена 3  единицы '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
		elseif rad >=26 and rad <= 75 then
			Item_MIN = Item_MIN - 5
			Item_MAX = Item_MAX - 5
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 5 единиц!'
	
		elseif rad >=76 and rad <= 90 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX  
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_MAX>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX 
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
		elseif rad >=26 and rad <= 75 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX 
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
	if Item_MIN <= 0 then
			Item_MIN = 1
	end
	if Item_MAX <=0 then
			Item_MAX = 1
	end
		
	SetItemAttr ( Item_Traget, ITEMATTR_VAL_MXATK , Item_MAX )
	SetItemAttr ( Item_Traget, ITEMATTR_VAL_MNATK , Item_MIN )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end


--Украшения
function ItemUse_Scroll_Str ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_ID = GetItemID ( Item_Traget )
	--Item_kole[	ID	] 	=	{	Last	,	Next	]}
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 26) or (Item_Traget_Type == 25) or (Item_Traget_Type == 29) ) then
		if ((Item_ID>=8646 and Item_ID<=8705) or (Item_ID==8602) or (Item_ID==8588) or (Item_ID==8581) or (Item_ID==8594) or  (Item_ID>=8563 and Item_ID<=8573) or  (Item_ID<=9011 and Item_ID>=8870)) then
		local rand = math.random ( 1, 15)
			
			if (rand <= 5) then -- Luck
				DelBagItem ( role , Item_ID , 1 )
				GiveItem ( role , 0 , Item_kole[Item_ID].Next , 1 , 4 )
				PlayEffect (role, 365 )
			end
			
			if (rand > 5 and rand <= 9) then -- Fall
				DelBagItem ( role , Item_ID , 1 )
				GiveItem ( role , 0 , Item_kole[Item_ID].Last , 1 , 4 )
				SystemNotice (role , 'Неудачное усиление, предмет потерян' )
			end
			
			if (rand >= 10) then --Any
				SystemNotice (role , 'Неудалось провести улучшение!' )
			end
		else
				SystemNotice (role , ' Усиливать данную вещь нельзя!' )
				UseItemFailed ( role )
				return
		end
	else
		SystemNotice (role , 'Можно использовать только на кольца и ожерелья!' )
		UseItemFailed ( role )
		return
	end
	RefreshCha(role)
end
	
	--Усиленные свитки свитки
--Защита
function ItemUse_Scroll_Defus ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_DEF = GetItemAttr ( Item_Traget , ITEMATTR_VAL_DEF )
	local Notice_Text = ''
	local niz=70* RAID_SVIT
	local mid=90* RAID_SVIT
	local hight=110* RAID_SVIT
	local very=140* RAID_SVIT
	local naz= 'защиты'
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  Защита")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	
	--Проверка на наличие характеристики
	if Item_DEF <= 0 or Item_DEF == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков '..naz..' , улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	--Защита меньше  niz
	if (Item_DEF<=niz) then
		Item_DEF = Item_DEF + 1
		Notice_Text = 'Снаряжение было улучшено, добавлена 1 единица '..naz
			local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
	--Защита меньше mid
	elseif (Item_DEF<=mid) and (Item_DEF>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлено 2  единицы '..naz
					local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=41 and rad <= 60 then
			Item_DEF = Item_DEF -1
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицы!'
	
		elseif rad >=61 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_DEF<=hight) and (Item_DEF>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлены 2  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=21 and rad <= 50 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_DEF<=very) and (Item_DEF>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -1
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицу!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_DEF>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
if  Item_DEF <= 0 then
		 Item_DEF = 1
	end
	
	SetItemAttr ( Item_Traget , ITEMATTR_VAL_DEF , Item_DEF )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Уклонение
function ItemUse_Scroll_Ykus ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_DEF = GetItemAttr ( Item_Traget , ITEMATTR_VAL_FLEE )
	local Notice_Text = ''
	local niz=40* RAID_SVIT
	local mid=60 * RAID_SVIT
	local hight=80* RAID_SVIT
	local very=100* RAID_SVIT
	local naz= 'уклонения'	
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  Уклонение")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	
	--Проверка на наличие характеристики
	if Item_DEF <= 0 or Item_DEF == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков '..naz..' , улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	--Защита меньше  niz
	if (Item_DEF<=niz) then
		Item_DEF = Item_DEF + 1
		Notice_Text = 'Снаряжение было улучшено, добавлена 1 единица '..naz
					local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
	--Защита меньше mid
	elseif (Item_DEF<=mid) and (Item_DEF>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлено 2  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=41 and rad <= 60 then
			Item_DEF = Item_DEF -1
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицы!'
	
		elseif rad >=61 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_DEF<=hight) and (Item_DEF>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлены 2  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=21 and rad <= 50 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_DEF<=very) and (Item_DEF>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -1
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицу!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_DEF>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
if  Item_DEF <= 0 then
		 Item_DEF = 1
	end
	
	SetItemAttr ( Item_Traget , ITEMATTR_VAL_FLEE , Item_DEF )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Шанс попадания
function ItemUse_Scroll_Hitus ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_DEF = GetItemAttr ( Item_Traget , ITEMATTR_VAL_HIT )
	local Notice_Text = ''
	local niz=40* RAID_SVIT
	local mid=60 * RAID_SVIT
	local hight=80* RAID_SVIT
	local very=100* RAID_SVIT
	local naz= 'хита'	
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  Попадание")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	
	--Проверка на наличие характеристики
	if Item_DEF <= 0 or Item_DEF == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков '..naz..' , улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	--Защита меньше  niz
	if (Item_DEF<=niz) then
		Item_DEF = Item_DEF + 1
		Notice_Text = 'Снаряжение было улучшено, добавлена 1 единица '..naz
					local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
	--Защита меньше mid
	elseif (Item_DEF<=mid) and (Item_DEF>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлено 2  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=41 and rad <= 60 then
			Item_DEF = Item_DEF -1
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицы!'
	
		elseif rad >=61 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_DEF<=hight) and (Item_DEF>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлены 2  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=21 and rad <= 50 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_DEF<=very) and (Item_DEF>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -1
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицу!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_DEF>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
if  Item_DEF <= 0 then
		 Item_DEF = 1
	end
	
	SetItemAttr ( Item_Traget , ITEMATTR_VAL_HIT , Item_DEF )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Физическое сопротивление
function ItemUse_Scroll_Pdefus ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_DEF = GetItemAttr ( Item_Traget , ITEMATTR_VAL_PDEF )
	local Notice_Text = ''
	local niz=7* RAID_SVIT
	local mid=14 * RAID_SVIT
	local hight=20* RAID_SVIT
	local very=25* RAID_SVIT
	local naz= 'физического сопротивления'	
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  ПР")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	
	--Проверка на наличие характеристики
	if Item_DEF <= 0 or Item_DEF == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков '..naz..' , улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	
	if Item_Traget_Type == 22 then
		if  Item_DEF >=55 then 
			SystemNotice (role , 'Максимальное значение физического сопротивления в доспехе!' )
			UseItemFailed ( role )
			return
		end
	end
	
	if Item_Traget_Type == 11 then
		if  Item_DEF >=25 then 
			SystemNotice (role , 'Максимальное значение физического сопротивления в щите!' )
			UseItemFailed ( role )
			return
		end
	end
	
	--Защита меньше  niz
	if (Item_DEF<=niz) then
		Item_DEF = Item_DEF + 1
		Notice_Text = 'Снаряжение было улучшено, добавлена 1 единица '..naz
					local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
	--Защита меньше mid
	elseif (Item_DEF<=mid) and (Item_DEF>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлено 2  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=41 and rad <= 60 then
			Item_DEF = Item_DEF -1
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицу!'
	
		elseif rad >=61 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_DEF<=hight) and (Item_DEF>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлены 2  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=21 and rad <= 50 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_DEF<=very) and (Item_DEF>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -1
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицу!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_DEF>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
	
if  Item_DEF <= 0 then
		 Item_DEF = 1
	end
	
	SetItemAttr ( Item_Traget , ITEMATTR_VAL_PDEF , Item_DEF )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Атака
function ItemUse_Scroll_Atkus ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_MAX = GetItemAttr ( Item_Traget , ITEMATTR_VAL_MXATK )
	local Item_MIN = GetItemAttr ( Item_Traget , ITEMATTR_VAL_MNATK )
	
	local Notice_Text = ''
	local niz=150* RAID_SVIT
	local mid=220 * RAID_SVIT
	local hight=250* RAID_SVIT
	local very=300* RAID_SVIT
	local dob=65
	local naz= 'атаки'	
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  Атака")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	 if Item_Traget_Type == 4 then 
		niz=dob+mid
		mid=dob+mid
		hight=dob+hight
		very=dob+very
	 end
	--Проверка на наличие характеристики
	if Item_MIN <= 0 or Item_MIN == nil or Item_MAX <= 0 or Item_MAX == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков атаки, улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	--Защита меньше  niz
	if (Item_MAX<=niz) then
		Item_MIN = Item_MIN + 3
		Item_MAX = Item_MAX + 3
		Notice_Text = 'Снаряжение было улучшено, добавлена 3 единицы '..naz
					local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
	--Защита меньше mid
	elseif (Item_MAX<=mid) and (Item_MAX>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_MIN = Item_MIN + 5
			Item_MAX = Item_MAX + 5
			Notice_Text = 'Снаряжение было улучшено, добавлено 5  единиц '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=41 and rad <= 60 then
			Item_MIN = Item_MIN - 5
			Item_MAX = Item_MAX - 5
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 5 единиц!'
	
		elseif rad >=61 and rad <= 80 then
			Item_MIN = Item_MIN 
			Item_MAX = Item_MAX 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_MAX<=hight) and (Item_MAX>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_MIN = Item_MIN + 4
			Item_MAX = Item_MAX + 4
			Notice_Text = 'Снаряжение было улучшено, добавлены 4  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=21 and rad <= 50 then
			Item_MIN = Item_MIN - 4
			Item_MAX = Item_MAX - 4
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 4 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_MAX<=very) and (Item_MAX>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_MIN = Item_MIN + 3
			Item_MAX = Item_MAX + 3
			Notice_Text = 'Снаряжение было улучшено, добавлена 3  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_MIN = Item_MIN - 5
			Item_MAX = Item_MAX - 5
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 5 единиц!'
	
		elseif rad >=76 and rad <= 90 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX  
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_MAX>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX 
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX 
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
	if Item_MIN <= 0 then
			Item_MIN = 1
	end
	if Item_MAX <=0 then
			Item_MAX = 1
	end
		
	SetItemAttr ( Item_Traget, ITEMATTR_VAL_MXATK , Item_MAX )
	SetItemAttr ( Item_Traget, ITEMATTR_VAL_MNATK , Item_MIN )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Украшения
function ItemUse_Scroll_Strus ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_ID = GetItemID ( Item_Traget )
	--Item_kole[	ID	] 	=	{	Last	,	Next	]}
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 26) or (Item_Traget_Type == 25) or (Item_Traget_Type == 29) ) then
		if ((Item_ID>=8646 and Item_ID<=8705) or (Item_ID==8602) or (Item_ID==8588) or (Item_ID==8581) or (Item_ID==8594) or  (Item_ID>=8563 and Item_ID<=8573) or  (Item_ID<=9011 and Item_ID>=8870)) then
		local rand = math.random ( 1, 10 )
			
			if (rand <= 4) then -- Luck
				DelBagItem ( role , Item_ID , 1 )
				GiveItem ( role , 0 , Item_kole[Item_ID].Next , 1 , 4 )
				PlayEffect (role, 365 )
			end
			
			if (rand > 4 and rand <= 7) then -- Fall
				DelBagItem ( role , Item_ID , 1 )
				GiveItem ( role , 0 , Item_kole[Item_ID].Last , 1 , 4 )
				
				SystemNotice (role , 'Неудачное усиление, предмет потерян' )
			end
			
			if (rand >= 8) then --Any
				SystemNotice (role , 'Неудалось провести улучшение!' )
			end
		else
				SystemNotice (role , ' Усиливать данную вещь нельзя!' )
				UseItemFailed ( role )
				return
		end
	else
		SystemNotice (role , 'Можно использовать только на кольца и ожерелья!' )
		UseItemFailed ( role )
		return
	end
	RefreshCha(role)
	end
	
	--Благославленнные свитки свитки
--Защита
function ItemUse_Scroll_Defbl ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_DEF = GetItemAttr ( Item_Traget , ITEMATTR_VAL_DEF )
	local Notice_Text = ''
	local niz=90* RAID_SVIT
	local mid=110* RAID_SVIT
	local hight=140* RAID_SVIT
	local very=180* RAID_SVIT
	local naz= 'защиты'
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  Защита")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	
	--Проверка на наличие характеристики
	if Item_DEF <= 0 or Item_DEF == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков '..naz..' , улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	--Защита меньше  niz
	if (Item_DEF<=niz) then
		Item_DEF = Item_DEF + 1
		Notice_Text = 'Снаряжение было улучшено, добавлена 1 единица '..naz
					local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
	--Защита меньше mid
	elseif (Item_DEF<=mid) and (Item_DEF>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлено 2  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=41 and rad <= 60 then
			Item_DEF = Item_DEF -1
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицы!'
	
		elseif rad >=61 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_DEF<=hight) and (Item_DEF>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлены 2  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=21 and rad <= 50 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_DEF<=very) and (Item_DEF>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -1
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицу!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_DEF>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
if  Item_DEF <= 0 then
		 Item_DEF = 1
	end
	
	SetItemAttr ( Item_Traget , ITEMATTR_VAL_DEF , Item_DEF )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Уклонение
function ItemUse_Scroll_Ykbl ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_DEF = GetItemAttr ( Item_Traget , ITEMATTR_VAL_FLEE )
	local Notice_Text = ''
	local niz=60* RAID_SVIT
	local mid=80 * RAID_SVIT
	local hight=100* RAID_SVIT
	local very=120* RAID_SVIT
	local naz= 'уклонения'	
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  Уклонение")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	
	--Проверка на наличие характеристики
	if Item_DEF <= 0 or Item_DEF == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков '..naz..' , улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	--Защита меньше  niz
	if (Item_DEF<=niz) then
		Item_DEF = Item_DEF + 1
		Notice_Text = 'Снаряжение было улучшено, добавлена 1 единица '..naz
				local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
	--Защита меньше mid
	elseif (Item_DEF<=mid) and (Item_DEF>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлено 2  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=41 and rad <= 60 then
			Item_DEF = Item_DEF -1
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицы!'
	
		elseif rad >=61 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_DEF<=hight) and (Item_DEF>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлены 2  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=21 and rad <= 50 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_DEF<=very) and (Item_DEF>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -1
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицу!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_DEF>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
if  Item_DEF <= 0 then
		 Item_DEF = 1
	end
	
	SetItemAttr ( Item_Traget , ITEMATTR_VAL_FLEE , Item_DEF )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Шанс попадания
function ItemUse_Scroll_Hitbl ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_DEF = GetItemAttr ( Item_Traget , ITEMATTR_VAL_HIT )
	local Notice_Text = ''
	local niz=60* RAID_SVIT
	local mid=80 * RAID_SVIT
	local hight=100* RAID_SVIT
	local very=120* RAID_SVIT
	local naz= 'хита'	
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  Попадание")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	
	--Проверка на наличие характеристики
	if Item_DEF <= 0 or Item_DEF == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков '..naz..' , улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	--Защита меньше  niz
	if (Item_DEF<=niz) then
		Item_DEF = Item_DEF + 1
		Notice_Text = 'Снаряжение было улучшено, добавлена 1 единица '..naz
					local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
	--Защита меньше mid
	elseif (Item_DEF<=mid) and (Item_DEF>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлено 2  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=41 and rad <= 60 then
			Item_DEF = Item_DEF -1
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицы!'
	
		elseif rad >=61 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_DEF<=hight) and (Item_DEF>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлены 2  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=21 and rad <= 50 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_DEF<=very) and (Item_DEF>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -1
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицу!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_DEF>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
if  Item_DEF <= 0 then
		 Item_DEF = 1
	end
	
	SetItemAttr ( Item_Traget , ITEMATTR_VAL_HIT , Item_DEF )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Физическое сопротивление
function ItemUse_Scroll_Pdefbl ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_DEF = GetItemAttr ( Item_Traget , ITEMATTR_VAL_PDEF )
	local Notice_Text = ''
	local niz=20*RAID_SVIT
	local mid=25 *RAID_SVIT
	local hight=30*RAID_SVIT
	local very=35*RAID_SVIT
	local naz= 'физического сопротивления'	
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  ПР")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	
	--Проверка на наличие характеристики
	if Item_DEF <= 0 or Item_DEF == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков '..naz..' , улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	if Item_Traget_Type == 11 then
		if  Item_DEF >=25 then 
			SystemNotice (role , 'Максимальное значение физического сопротивления в щите!' )
			UseItemFailed ( role )
			return
		end
	end
	
	if Item_Traget_Type == 22 then
		if  Item_DEF >=55 then 
			SystemNotice (role , 'Максимальное значение физического сопротивления в доспехе!' )
			UseItemFailed ( role )
			return
		end
	end
	
	--Защита меньше  niz
	if (Item_DEF<=niz) then
		Item_DEF = Item_DEF + 1
		Notice_Text = 'Снаряжение было улучшено, добавлена 1 единица '..naz
				local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
	--Защита меньше mid
	elseif (Item_DEF<=mid) and (Item_DEF>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлено 2  единицы '..naz
					local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=41 and rad <= 60 then
			Item_DEF = Item_DEF -1
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицы!'
		
		elseif rad >=61 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_DEF<=hight) and (Item_DEF>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлены 2  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=21 and rad <= 50 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_DEF<=very) and (Item_DEF>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -1
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицу!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_DEF>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	

	
if  Item_DEF <= 0 then
		 Item_DEF = 1
	end
	
	SetItemAttr ( Item_Traget , ITEMATTR_VAL_PDEF , Item_DEF )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Атака
function ItemUse_Scroll_Atkbl ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_MAX = GetItemAttr ( Item_Traget , ITEMATTR_VAL_MXATK )
	local Item_MIN = GetItemAttr ( Item_Traget , ITEMATTR_VAL_MNATK )
	
	local Notice_Text = ''
	local niz=220* RAID_SVIT
	local mid=250 * RAID_SVIT
	local hight=300* RAID_SVIT
	local very=350* RAID_SVIT
	local dob=65
	local naz= 'атаки'	
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  Атака")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	 if Item_Traget_Type == 4 then 
		niz=dob+mid
		mid=dob+mid
		hight=dob+hight
		very=dob+very
	 end
	--Проверка на наличие характеристики
	if Item_MIN <= 0 or Item_MIN == nil or Item_MAX <= 0 or Item_MAX == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков атаки, улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	--Защита меньше  niz
	if (Item_MAX<=niz) then
		Item_MIN = Item_MIN + 3
		Item_MAX = Item_MAX + 3
		Notice_Text = 'Снаряжение было улучшено, добавлена 3 единицы '..naz
	
	--Защита меньше mid
	elseif (Item_MAX<=mid) and (Item_MAX>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_MIN = Item_MIN + 5
			Item_MAX = Item_MAX + 5
			Notice_Text = 'Снаряжение было улучшено, добавлено 5  единиц '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=41 and rad <= 60 then
			Item_MIN = Item_MIN - 5
			Item_MAX = Item_MAX - 5
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 5 единиц!'
	
		elseif rad >=61 and rad <= 80 then
			Item_MIN = Item_MIN 
			Item_MAX = Item_MAX 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_MAX<=hight) and (Item_MAX>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_MIN = Item_MIN + 4
			Item_MAX = Item_MAX + 4
			Notice_Text = 'Снаряжение было улучшено, добавлены 4  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=21 and rad <= 50 then
			Item_MIN = Item_MIN - 4
			Item_MAX = Item_MAX - 4
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 4 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_MAX<=very) and (Item_MAX>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_MIN = Item_MIN + 3
			Item_MAX = Item_MAX + 3
			Notice_Text = 'Снаряжение было улучшено, добавлена 3  единицы '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_MIN = Item_MIN - 5
			Item_MAX = Item_MAX - 5
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 5 единиц!'
	
		elseif rad >=76 and rad <= 90 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX  
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_MAX>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX 
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
						local effect = 365          -- ID эффекта из sceneffectinfo.txt
			PlayEffect (role, effect )
	
	
		elseif rad >=26 and rad <= 75 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX 
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
	if Item_MIN <= 0 then
			Item_MIN = 1
	end
	if Item_MAX <=0 then
			Item_MAX = 1
	end
		
	SetItemAttr ( Item_Traget, ITEMATTR_VAL_MXATK , Item_MAX )
	SetItemAttr ( Item_Traget, ITEMATTR_VAL_MNATK , Item_MIN )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Украшения
function ItemUse_Scroll_Strbl ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_ID = GetItemID ( Item_Traget )
	--Item_kole[	ID	] 	=	{	Last	,	Next	]}
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 26) or (Item_Traget_Type == 25) or (Item_Traget_Type == 29) ) then
		if ((Item_ID>=8646 and Item_ID<=8705) or (Item_ID==8602) or (Item_ID==8588) or (Item_ID==8581) or (Item_ID==8594) or  (Item_ID>=8563 and Item_ID<=8573)or  (Item_ID<=9011 and Item_ID>=8870)) then
		local rand = math.random ( 1, 20 )
			
			if (rand <= 6) then -- Luck
				DelBagItem ( role , Item_ID , 1 )
				GiveItem ( role , 0 , Item_kole[Item_ID].Next , 1 , 4 )
				PlayEffect (role, 365 )
			end
			
			if (rand > 6 and rand < 10) then -- Fall
				DelBagItem ( role , Item_ID , 1 )
				GiveItem ( role , 0 , Item_kole[Item_ID].Last , 1 , 4 )
				
				SystemNotice (role , 'Неудачное усиление, предмет потерян' )
			end
			
			if (rand >= 14) then --Any
				SystemNotice (role , 'Неудалось провести улучшение!' )
			end
		else
				SystemNotice (role , ' Усиливать данную вещь нельзя!' )
				UseItemFailed ( role )
				return
		end
	else
		SystemNotice (role , 'Можно использовать только на кольца и ожерелья!' )
		UseItemFailed ( role )
		return
	end
	RefreshCha(role)
	end
	

	--Божественные свитки свитки
--Защита
function ItemUse_Scroll_Defboj ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_DEF = GetItemAttr ( Item_Traget , ITEMATTR_VAL_DEF )
	local Notice_Text = ''
	local niz=110* RAID_SVIT
	local mid=140* RAID_SVIT
	local hight=180* RAID_SVIT
	local very=220* RAID_SVIT
	local naz= 'защиты'
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  Защита")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	
	--Проверка на наличие характеристики
	if Item_DEF <= 0 or Item_DEF == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков '..naz..' , улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	--Защита меньше  niz
	if (Item_DEF<=niz) then
		Item_DEF = Item_DEF + 1
		Notice_Text = 'Снаряжение было улучшено, добавлена 1 единица '..naz
	
	--Защита меньше mid
	elseif (Item_DEF<=mid) and (Item_DEF>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлено 2  единицы '..naz
	
		elseif rad >=41 and rad <= 60 then
			Item_DEF = Item_DEF -1
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицы!'
	
		elseif rad >=61 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_DEF<=hight) and (Item_DEF>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлены 2  единицы '..naz
	
		elseif rad >=21 and rad <= 50 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_DEF<=very) and (Item_DEF>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -1
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицу!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_DEF>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
if  Item_DEF <= 0 then
		 Item_DEF = 1
	end
	
	SetItemAttr ( Item_Traget , ITEMATTR_VAL_DEF , Item_DEF )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Уклонение
function ItemUse_Scroll_Ykboj( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_DEF = GetItemAttr ( Item_Traget , ITEMATTR_VAL_FLEE )
	local Notice_Text = ''
	local niz=80* RAID_SVIT
	local mid=100 * RAID_SVIT
	local hight=120* RAID_SVIT
	local very=140* RAID_SVIT
	local naz= 'уклонения'	
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  Уклонение")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	
	--Проверка на наличие характеристики
	if Item_DEF <= 0 or Item_DEF == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков '..naz..' , улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	--Защита меньше  niz
	if (Item_DEF<=niz) then
		Item_DEF = Item_DEF + 1
		Notice_Text = 'Снаряжение было улучшено, добавлена 1 единица '..naz
	
	--Защита меньше mid
	elseif (Item_DEF<=mid) and (Item_DEF>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлено 2  единицы '..naz
	
		elseif rad >=41 and rad <= 60 then
			Item_DEF = Item_DEF -1
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицы!'
	
		elseif rad >=61 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_DEF<=hight) and (Item_DEF>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлены 2  единицы '..naz
	
		elseif rad >=21 and rad <= 50 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_DEF<=very) and (Item_DEF>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -1
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицу!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_DEF>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
if  Item_DEF <= 0 then
		 Item_DEF = 1
	end
	
	SetItemAttr ( Item_Traget , ITEMATTR_VAL_FLEE , Item_DEF )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Шанс попадания
function ItemUse_Scroll_Hitboj ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_DEF = GetItemAttr ( Item_Traget , ITEMATTR_VAL_HIT )
	local Notice_Text = ''
	local niz=80* RAID_SVIT
	local mid=100 * RAID_SVIT
	local hight=120* RAID_SVIT
	local very=140* RAID_SVIT
	local naz= 'хита'	
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  Попадание")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	
	--Проверка на наличие характеристики
	if Item_DEF <= 0 or Item_DEF == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков '..naz..' , улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	--Защита меньше  niz
	if (Item_DEF<=niz) then
		Item_DEF = Item_DEF + 1
		Notice_Text = 'Снаряжение было улучшено, добавлена 1 единица '..naz
	
	--Защита меньше mid
	elseif (Item_DEF<=mid) and (Item_DEF>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлено 2  единицы '..naz
	
		elseif rad >=41 and rad <= 60 then
			Item_DEF = Item_DEF -1
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицы!'
	
		elseif rad >=61 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_DEF<=hight) and (Item_DEF>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлены 2  единицы '..naz
	
		elseif rad >=21 and rad <= 50 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_DEF<=very) and (Item_DEF>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -1
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицу!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_DEF>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
if  Item_DEF <= 0 then
		 Item_DEF = 1
	end
	
	SetItemAttr ( Item_Traget , ITEMATTR_VAL_HIT , Item_DEF )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Физическое сопротивление
function ItemUse_Scroll_Pdefboj ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_DEF = GetItemAttr ( Item_Traget , ITEMATTR_VAL_PDEF )
	local Notice_Text = ''
	local niz=30
	local mid=35
	local hight=40
	local very=45
	local naz= 'физического сопротивления'	
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  ПР")
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	
	--Проверка на наличие характеристики
	if Item_DEF <= 0 or Item_DEF == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков '..naz..' , улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	if Item_Traget_Type == 11 then
		if  Item_DEF >=25 then 
			SystemNotice (role , 'Максимальное значение физического сопротивления в щите!' )
			UseItemFailed ( role )
			return
		end
	end
	
	if Item_Traget_Type == 22 then
		if  Item_DEF >=55 then 
			SystemNotice (role , 'Максимальное значение физического сопротивления в доспехе!' )
			UseItemFailed ( role )
			return
		end
	end
	
	
	--Защита меньше  niz
	if (Item_DEF<=niz) then
		Item_DEF = Item_DEF + 1
		Notice_Text = 'Снаряжение было улучшено, добавлена 1 единица '..naz
	
	--Защита меньше mid
	elseif (Item_DEF<=mid) and (Item_DEF>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлено 2  единицы '..naz
	
		elseif rad >=41 and rad <= 60 then
			Item_DEF = Item_DEF -1
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицы!'
	
		elseif rad >=61 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_DEF<=hight) and (Item_DEF>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_DEF = Item_DEF + 2
			Notice_Text = 'Снаряжение было улучшено, добавлены 2  единицы '..naz
	
		elseif rad >=21 and rad <= 50 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_DEF<=very) and (Item_DEF>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -1
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 1 единицу!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_DEF>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_DEF = Item_DEF + 1
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
	
		elseif rad >=26 and rad <= 75 then
			Item_DEF = Item_DEF -2
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_DEF = Item_DEF 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
if  Item_DEF <= 0 then
		 Item_DEF = 1
	end
	
	SetItemAttr ( Item_Traget , ITEMATTR_VAL_PDEF , Item_DEF )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Атака
function ItemUse_Scroll_Atkboj ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_MAX = GetItemAttr ( Item_Traget , ITEMATTR_VAL_MXATK )
	local Item_MIN = GetItemAttr ( Item_Traget , ITEMATTR_VAL_MNATK )
	
 local cha_name = GetChaDefaultName ( role)  
	 LG("Использование свитков", cha_name.. "  Атака")
	local Notice_Text = ''
	local niz=250* RAID_SVIT
	local mid=300 * RAID_SVIT
	local hight=350* RAID_SVIT
	local very=450* RAID_SVIT
	local dob=65
	local naz= 'атаки'	
		
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 1) or (Item_Traget_Type == 2) or (Item_Traget_Type == 3) or (Item_Traget_Type == 4) or (Item_Traget_Type == 7) or (Item_Traget_Type == 9) or (Item_Traget_Type == 11) or (Item_Traget_Type == 20) or (Item_Traget_Type == 22) or (Item_Traget_Type == 23) or (Item_Traget_Type == 24) or (Item_Traget_Type == 25) or (Item_Traget_Type == 26) or (Item_Traget_Type == 27) or (Item_Traget_Type == 29)) then
	 if Item_Traget_Type == 4 then 
		niz=dob+mid
		mid=dob+mid
		hight=dob+hight
		very=dob+very
	 end
	--Проверка на наличие характеристики
	if Item_MIN <= 0 or Item_MIN == nil or Item_MAX <= 0 or Item_MAX == nil then
		SystemNotice ( role , 'Ваше снаряжение не имеет очков атаки, улучшение невозможно!' )
		UseItemFailed ( role )
		return
	end

	--Защита меньше  niz
	if (Item_MAX<=niz) then
		Item_MIN = Item_MIN + 3
		Item_MAX = Item_MAX + 3
		Notice_Text = 'Снаряжение было улучшено, добавлена 3 единицы '..naz
	
	--Защита меньше mid
	elseif (Item_MAX<=mid) and (Item_MAX>niz) then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=40 then
			Item_MIN = Item_MIN + 5
			Item_MAX = Item_MAX + 5
			Notice_Text = 'Снаряжение было улучшено, добавлено 5  единиц '..naz
	
		elseif rad >=41 and rad <= 60 then
			Item_MIN = Item_MIN - 5
			Item_MAX = Item_MAX - 5
			Notice_Text = 'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 5 единиц!'
	
		elseif rad >=61 and rad <= 80 then
			Item_MIN = Item_MIN 
			Item_MAX = Item_MAX 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита меньше hight
	elseif (Item_MAX<=hight) and (Item_MAX>mid)  then 
		local rad = math.random ( 1, 80 )
		if rad >=1 and rad <=20 then
			Item_MIN = Item_MIN + 4
			Item_MAX = Item_MAX + 4
			Notice_Text = 'Снаряжение было улучшено, добавлены 4  единицы '..naz
	
		elseif rad >=21 and rad <= 50 then
			Item_MIN = Item_MIN - 4
			Item_MAX = Item_MAX - 4
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 4 единицы!'
	
		elseif rad >=51 and rad <= 80 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	
	--Защита меньше very
	elseif (Item_MAX<=very) and (Item_MAX>hight) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_MIN = Item_MIN + 3
			Item_MAX = Item_MAX + 3
			Notice_Text = 'Снаряжение было улучшено, добавлена 3  единицы '..naz
	
		elseif rad >=26 and rad <= 75 then
			Item_MIN = Item_MIN - 5
			Item_MAX = Item_MAX - 5
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 5 единиц!'
	
		elseif rad >=76 and rad <= 90 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX  
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end

	--Защита больше very
	elseif (Item_MAX>very) then 
		local rad = math.random ( 1, 90 )
		if rad >=1 and rad <=25 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX 
			Notice_Text = 'Снаряжение было улучшено, добавлена 1  единица '..naz
	
		elseif rad >=26 and rad <= 75 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX 
			Notice_Text =  'При попытке улучшения снаряжение было повреждено, очки ' ..naz..' уменьшились на 2 единицы!'
	
		elseif rad >=76 and rad <= 90 then
			Item_MIN = Item_MIN
			Item_MAX = Item_MAX 
			Notice_Text = 'Улучшить параметры снаряжения не удалось!'
		end
	end
	
	else
		SystemNotice (role , 'Можно использовать только на снаряжение!' )
		UseItemFailed ( role )
		return
	end
	
	if Item_MIN <= 0 then
			Item_MIN = 1
	end
	if Item_MAX <=0 then
			Item_MAX = 1
	end
		
	SetItemAttr ( Item_Traget, ITEMATTR_VAL_MXATK , Item_MAX )
	SetItemAttr ( Item_Traget, ITEMATTR_VAL_MNATK , Item_MIN )
	ResetItemFinalAttr ( Item_Traget )
	SystemNotice( role , Notice_Text )
	RefreshCha(role)
	end

--Украшения
function ItemUse_Scroll_Strboj ( role , Item , Item_Traget )
	local Item_Traget_Type = GetItemType ( Item_Traget )
	local Item_ID = GetItemID ( Item_Traget )
	--Item_kole[	ID	] 	=	{	Last	,	Next	]}
	--Проверка на тип предмета
	if ( (Item_Traget_Type == 26) or (Item_Traget_Type == 25) or (Item_Traget_Type == 29) ) then
		if ((Item_ID>=8646 and Item_ID<=8705) or (Item_ID==8602) or (Item_ID==8588) or (Item_ID==8581) or (Item_ID==8594) or  (Item_ID>=8563 and Item_ID<=8573)or  (Item_ID<=9011 and Item_ID>=8870)) then
		local rand = math.random ( 1, 35 )
			
			if (rand <= 10) then -- Luck
				DelBagItem ( role , Item_ID , 1 )
				GiveItem ( role , 0 , Item_kole[Item_ID].Next , 1 , 4 )
				PlayEffect (role, 365 )
			end
			
			if (rand > 10 and rand < 18) then -- Fall
				DelBagItem ( role , Item_ID , 1 )
				GiveItem ( role , 0 , Item_kole[Item_ID].Last , 1 , 4 )
				
				SystemNotice (role , 'Неудачное усиление, предмет потерян' )
			end
			
			if (rand >= 18) then --Any
				SystemNotice (role , 'Неудалось провести улучшение!' )
			end
		else
				SystemNotice (role , ' Усиливать данную вещь нельзя!' )
				UseItemFailed ( role )
				return
		end
	else
		SystemNotice (role , 'Можно использовать только на кольца и ожерелья!' )
		UseItemFailed ( role )
		return
	end
	RefreshCha(role)
	end


---Конец свитков


--Сундук бижутерии
function ItemUse_Bija ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы открыть сундук -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	local sc = math.random(1,10)

	if  sc ==15 then
		GiveItem ( role , 0 , 8568 , 1 , 4 )
	elseif sc == 1 then
		GiveItem ( role , 0 , 8569 , 1 , 4 )
	elseif sc == 2  then
		GiveItem ( role , 0 , 8570 , 1 , 4 )
	elseif sc == 3 then
		GiveItem ( role , 0 , 8571 , 1 , 4 )
	elseif sc == 4 then
		GiveItem ( role , 0 , 8572 , 1 , 4 )
	elseif sc == 5  then
		GiveItem ( role , 0 , 8573 , 1 , 4 )
	elseif sc == 6  then
		GiveItem ( role , 0 , 8563 , 1 , 4 )
	elseif sc == 7 then
		GiveItem ( role , 0 , 8564 , 1 , 4 )
	elseif sc == 8  then
		GiveItem ( role , 0 , 8565 , 1 , 4 )
	elseif sc == 9  then
		GiveItem ( role , 0 , 8566 , 1 , 4 )
	elseif sc == 10  then
		GiveItem ( role , 0 , 8567 , 1 , 4 )

	end
end

--Сундук Хаоса
function Item_proeb ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы открыть сундук -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
local	sc = math.random(1,62)
	if  sc == 1 then
		GiveItem ( role , 0 , 3844 , 1 , 4 )
	elseif sc == 2 then
		GiveItem ( role , 0 , 3845 , 1 , 4 )
	elseif sc == 3 then
		GiveItem ( role , 0 , 8574 , 1 , 4 )
	elseif sc == 4 then
		GiveItem ( role , 0 , 8551 , 1 , 4 )
	elseif sc == 5 then
		GiveItem ( role , 0 , 8546 , 1 , 4 )
	elseif sc == 6 then
		GiveItem ( role , 0 , 8529 , 5 , 4 )
	elseif sc == 7 then
		GiveItem ( role , 0 , 8290 , 45 , 4 )
	elseif sc == 8 then
		GiveItem ( role , 0 , 8291 , 45 , 4 )
	elseif sc == 9 then
		GiveItem ( role , 0 , 8292 , 45 , 4 )
	elseif sc == 10 then
		GiveItem ( role , 0 , 8298 , 45 , 4 )
	elseif sc == 11 then
		GiveItem ( role , 0 , 8272 , 1 , 4 )--сундук фей
	elseif sc == 12 then
		GiveItem ( role , 0 , 1020 , 1 , 4 )
	elseif sc == 13 then
		GiveItem ( role , 0 , 1003 , 3 , 4 )
	elseif sc == 14 then
		GiveItem ( role , 0 , 1002 , 3 , 4 )
	elseif sc == 15 then
		GiveItem ( role , 0 , 0893 , 5 , 4 )
	elseif sc == 16 then
		GiveItem ( role , 0 , 0894 , 5 , 4 )
	elseif sc == 17 then
		GiveItem ( role , 0 , 0895 , 5 , 4 )
	elseif sc == 18 then
		GiveItem ( role , 0 , 0896 , 5 , 4 )
	elseif sc == 19 then
		GiveItem ( role , 0 , 0897 , 5 , 4 )
	elseif sc == 20 then
		GiveItem ( role , 0 , 0890 , 1 , 4 )
	elseif sc == 21 then
		GiveItem ( role , 0 , 0891 , 1 , 4 )
	elseif sc == 22 then
		GiveItem ( role , 0 , 0854 , 1 , 4 )
	elseif sc == 23 then
		GiveItem ( role , 0 , 0849 , 1 , 4 )
	elseif sc == 24 then
		GiveItem ( role , 0 , 0453 , 1 , 4 )
	elseif sc == 25 then
		GiveItem ( role , 0 , 0454 , 1 , 4 )
	elseif sc == 26 then
		GiveItem ( role , 0 , 0455 , 1 , 4 )
	elseif sc == 27 then
		GiveItem ( role , 0 , 0456 , 3 , 4 )
	elseif sc == 28 then
		GiveItem ( role , 0 , 2625 , 5 , 4 )
	elseif sc == 29 then
		GiveItem ( role , 0 , 2630 , 5 , 4 )
	elseif sc == 30 then
		GiveItem ( role , 0 , 2634 , 5 , 4 )
	elseif sc == 31 then
		GiveItem ( role , 0 , 2635 , 5 , 4 )
	elseif sc == 33 then
		GiveItem ( role , 0 , 2636 , 5 , 4 )
	elseif sc == 33 then
		GiveItem ( role , 0 , 2637 , 5 , 4 )
	elseif sc == 34 then
		GiveItem ( role , 0 , 2638 , 5 , 4 )
	elseif sc == 35 then
		GiveItem ( role , 0 , 2639 , 5 , 4 )
	elseif sc == 36 then
		GiveItem ( role , 0 , 3094 , 1 , 4 )
	elseif sc == 37 then
		GiveItem ( role , 0 , 3095 , 1 , 4 )
	elseif sc == 38 then
		GiveItem ( role , 0 , 3096 , 1 , 4 )
	elseif sc == 39 then
		GiveItem ( role , 0 , 3097 , 1 , 4 )
	elseif sc == 40 then
		GiveItem ( role , 0 , 3109 , 1 , 4 )
	elseif sc == 41 then
		GiveItem ( role , 0 , 3110 , 1 , 4 )
	elseif sc == 42 then
		GiveItem ( role , 0 , 3111 , 1 , 4 )
	elseif sc == 43 then
		GiveItem ( role , 0 , 3112 , 1 , 4 )
	elseif sc == 44 then
		GiveItem ( role , 0 , 3113 , 1 , 4 )
	elseif sc == 45 then
		GiveItem ( role , 0 , 3107 , 5 , 4 )
	elseif sc == 46 then
		GiveItem ( role , 0 , 3105 , 3 , 4 )
	elseif sc == 47 then
		GiveItem ( role , 0 , 262 , 1 , 4 )
	elseif sc == 48 then
		GiveItem ( role , 0 , 578 , 1 , 4 )
	elseif sc == 49 then
		GiveItem ( role , 0 , 3462 , 5 , 4 )
	elseif sc == 50 then
		GiveItem ( role , 0 , 6019 , 1 , 4 )
	elseif sc == 51 then
		GiveItem ( role , 0 , 0227 , 5 , 4 )
	elseif sc == 52 then
		GiveItem ( role , 0 , 0227 , 5 , 4 )
	elseif sc == 51 then
		GiveItem ( role , 0 , 4552 , 1 , 4 )
	elseif sc == 52 then
		GiveItem ( role , 0 , 1859 , 5 , 4 )
	elseif sc == 53 then
		GiveItem ( role , 0 , 1858 , 5 , 4 )
	elseif sc == 54 then
		GiveItem ( role , 0 , 1857 , 5 , 4 )
	elseif sc == 55 then
		GiveItem ( role , 0 , 1856 , 5 , 4 )
	elseif sc == 56 then
		GiveItem ( role , 0 , 1855 , 5 , 4 )
	elseif sc == 57 then
		GiveItem ( role , 0 , 1854 , 5 , 4 )
	elseif sc == 58 then
		GiveItem ( role , 0 , 3336 , 5 , 4 )
	elseif sc == 59 then
		GiveItem ( role , 0 , 851 , 5 , 4 )
	elseif sc == 60 then
		GiveItem ( role , 0 , 1807 , 1 , 4 )	
	elseif sc == 61 then
		GiveItem ( role , 0 , 3135 , 15 , 4 )
	elseif sc == 62 then
		GiveItem ( role , 0 , 3389 , 15 , 4 )
	end
end

--Втор проф
function ItemUse_VtorProf ( role , Item )
	local job = GetChaAttr( role, ATTR_JOB)
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы открыть Сундук  -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	if   job == 9 then-- Войитель
	local	sc = math.random(1,14)
	if  sc == 1 then
		GiveItem ( role , 0 , 3174 , 1 , 4 )
		itemname = "Рубка двумя мечами"
	elseif sc == 2 then
		GiveItem ( role , 0 , 3163 , 1 , 4 )
		itemname = "Сноровка"
	elseif sc == 3 then
		GiveItem ( role , 0 , 3180 , 1 , 4 )
		itemname = "Ядовитый дротик"
	elseif sc == 4 then
		GiveItem ( role , 0 , 3179 , 1 , 4 )
		itemname = "Теневой удар"
	elseif sc == 5 then
		GiveItem ( role , 0 , 3176 , 1 , 4 )
		itemname = "Кровавое безумие"
	elseif sc == 6 then
		GiveItem ( role , 0 , 3177 , 1 , 4 )
		itemname = "Скрытность"
	elseif sc == 7 then
		GiveItem ( role , 0 , 3297 , 1 , 4 )
	elseif sc == 8 then
		GiveItem ( role , 0 , 3293 , 1 , 4 )
	elseif sc == 9 then
		GiveItem ( role , 0 , 3164 , 1 , 4 )
	elseif sc == 10 then
		GiveItem ( role , 0 , 3160 , 1 , 4 )
	elseif sc == 11 then
		GiveItem ( role , 0 , 3161 , 1 , 4 )
	elseif sc == 12 then
		GiveItem ( role , 0 , 3165 , 1 , 4 )
	elseif sc == 13 then
		GiveItem ( role , 0 , 3238 , 1 , 4 )
	elseif sc == 14 then
		GiveItem ( role , 0 , 3170 , 1 , 4 )
	end
	
elseif  job == 8 then --Champ
	local	sc = math.random(1,14)
	if sc == 1 then
		GiveItem ( role , 0 , 3168 , 1 , 4 )
		itemname = "Мастер большого меча"
	elseif sc == 2 then
		GiveItem ( role , 0 , 3162 , 1 , 4 )
		itemname = "Усиление"
	elseif sc == 3 then
		GiveItem ( role , 0 , 3166 , 1 , 4 )
		itemname = "Могучий удар"
	elseif sc == 4 then
		GiveItem ( role , 0 , 3167 , 1 , 4 )
		itemname = "Вой"
	elseif sc == 5 then
		GiveItem ( role , 0 ,3172  , 1 , 4 )
		itemname = "Кровавый бык"
	elseif sc == 6 then
		GiveItem ( role , 0 , 3173 , 1 , 4 )
		itemname = "Первобытная ярость"
	elseif sc == 7 then
		GiveItem ( role , 0 , 3297 , 1 , 4 )
	elseif sc == 8 then
		GiveItem ( role , 0 , 3293 , 1 , 4 )
	elseif sc == 9 then
		GiveItem ( role , 0 , 3164 , 1 , 4 )
	elseif sc == 10 then
		GiveItem ( role , 0 , 3160 , 1 , 4 )
	elseif sc == 11 then
		GiveItem ( role , 0 , 3161 , 1 , 4 )
	elseif sc == 12 then
		GiveItem ( role , 0 , 3165 , 1 , 4 )
	elseif sc == 13 then
		GiveItem ( role , 0 , 3238 , 1 , 4 )
	elseif sc == 14 then
		GiveItem ( role , 0 , 3170 , 1 , 4 )

		end
	
elseif  job ==12  then --Охотник
	local	sc = math.random(1,12)
	if sc == 1 then
		GiveItem ( role , 0 , 3192 , 1 , 4 )
		itemname = "Мастер огнестрельного оружия"
	elseif sc ==2 then
		GiveItem ( role , 0 , 3198 , 1 , 4 )
		itemname = "Зажигательная пуля"
	elseif sc == 3 then
		GiveItem ( role , 0 , 3204 , 1 , 4 )
		itemname = "Выстрел в голову"
	elseif sc == 4 then
		GiveItem ( role , 0 , 3203 , 1 , 4 )
		itemname = "Ослабление"
	elseif sc == 5 then
		GiveItem ( role , 0 , 3202 , 1 , 4 )
		itemname = "Калечащий выстрел"
	elseif sc == 6 then
		GiveItem ( role , 0 , 3187 , 1 , 4 )
	elseif sc == 7 then
		GiveItem ( role , 0 , 3188 , 1 , 4 )
	elseif sc == 8 then
		GiveItem ( role , 0 , 3190 , 1 , 4 )
	elseif sc == 9 then
		GiveItem ( role , 0 , 3239 , 1 , 4 )
	elseif sc == 10 then
		GiveItem ( role , 0 , 3197 , 1 , 4 )
	elseif sc == 11 then
		GiveItem ( role , 0 , 3193 , 1 , 4 )
	elseif sc == 12 then
		GiveItem ( role , 0 , 3241 , 1 , 4 )
		end
	
elseif  job ==16 then --Моряк
	local	sc = math.random(1,11)
	if sc == 1 then
		GiveItem ( role , 0 , 3233 , 1 , 4 )
		itemname = "Коралловый луч"
	elseif sc == 2 then
		GiveItem ( role , 0 ,3234  , 1 , 4 )
		itemname = "Попутный ветер"
	elseif sc == 3 then
		GiveItem ( role , 0 , 3235 , 1 , 4 )
		itemname = "Вихрь"
	elseif sc == 4 then
		GiveItem ( role , 0 , 3236 , 1 , 4 )
		itemname = "Туман"
	elseif sc == 5 then
		GiveItem ( role , 0 , 3237 , 1 , 4 )
		itemname = "Грозовая завеса"
	elseif sc == 6 then
		GiveItem ( role , 0 , 3227 , 1 , 4 )
	elseif sc == 7 then
		GiveItem ( role , 0 , 3231 , 1 , 4 )
	elseif sc == 8 then
		GiveItem ( role , 0 , 3228 , 1 , 4 )
	elseif sc == 9 then
		GiveItem ( role , 0 , 3229 , 1 , 4 )
	elseif sc == 10 then
		GiveItem ( role , 0 , 3230 , 1 , 4 )
	elseif sc == 11 then
		GiveItem ( role , 0 , 3232 , 1 , 4 )
		
	end
elseif  job ==13 then -- БК
	local	sc = math.random(1,16)
	if sc == 1 then
		GiveItem ( role , 0 , 3212 , 1 , 4 )
		itemname = "Благодать господня"
	elseif sc == 2 then
		GiveItem ( role , 0 , 3209 , 1 , 4 )
		itemname = "Истинное зрение"
	elseif sc == 3 then
		GiveItem ( role , 0 , 3217 , 1 , 4 )
		itemname = "Ангельский щит"
	elseif sc == 4 then
		GiveItem ( role , 0 , 3224 , 1 , 4 )
		itemname = "Исцеляющий источник"
	elseif sc == 5 then
		GiveItem ( role , 0 , 3223 , 1 , 4 )
		itemname = "Магический щит"
	elseif sc == 6 then
		GiveItem ( role , 0 , 3205 , 1 , 4 )
		itemname = "Магический щит"
	elseif sc == 7 then
		GiveItem ( role , 0 , 3210 , 1 , 4 )
		itemname = "Воронка торнадо"
	elseif sc == 8 then
		GiveItem ( role , 0 , 3216 , 1 , 4 )
		itemname = "Воронка торнадо"
	elseif sc == 9 then
		GiveItem ( role , 0 , 3206 , 1 , 4 )
	elseif sc == 10 then
		GiveItem ( role , 0 , 3208 , 1 , 4 )
	elseif sc == 11 then
		GiveItem ( role , 0 , 3205 , 1 , 4 )
	elseif sc == 12 then
		GiveItem ( role , 0 , 3242 , 1 , 4 )
	elseif sc == 13 then
		GiveItem ( role , 0 , 3210 , 1 , 4 )
	elseif sc == 14 then
		GiveItem ( role , 0 , 3207 , 1 , 4 )
	elseif sc == 15 then
		GiveItem ( role , 0 , 3211 , 1 , 4 )
	elseif sc == 16 then
		GiveItem ( role , 0 , 3215 , 1 , 4 )
	end
	
elseif job ==14 then --СМ
	local	sc = math.random(1,14)
	if sc == 1 then
		GiveItem ( role , 0 , 3209 , 1 , 4 )
		itemname = "Истинное зрение"
	elseif sc == 2 then
		GiveItem ( role , 0 , 3222 , 1 , 4 )
	elseif sc == 3 then
		GiveItem ( role , 0 , 3218 , 1 , 4 )
		itemname = "Печать старейшины"
	elseif sc == 4 then
		GiveItem ( role , 0 , 3219 , 1 , 4 )
		itemname = "Росчерк тени"
	elseif sc == 5 then
		GiveItem ( role , 0 , 3220 , 1 , 4 )
		itemname = "Проклятый огонь"
	elseif sc == 6 then
		GiveItem ( role , 0 , 3222 , 1 , 4 )
		itemname = "Бездонное болото"
	elseif sc == 7 then
		GiveItem ( role , 0 , 3206 , 1 , 4 )
	elseif sc == 8 then
		GiveItem ( role , 0 , 3208 , 1 , 4 )
	elseif sc == 9 then
		GiveItem ( role , 0 , 3205 , 1 , 4 )
	elseif sc == 10 then
		GiveItem ( role , 0 , 3242 , 1 , 4 )
	elseif sc == 11 then
		GiveItem ( role , 0 , 3210 , 1 , 4 )
	elseif sc == 12 then
		GiveItem ( role , 0 , 3207 , 1 , 4 )
	elseif sc == 13 then
		GiveItem ( role , 0 , 3211 , 1 , 4 )
	elseif sc == 14 then
		GiveItem ( role , 0 , 3215 , 1 , 4 )
		
	end
	
else 
		SystemNotice(role ,"Только игроки второй профессии могут использовать этот сундук")
		UseItemFailed ( role )
		return
	end
end

--Ансил 35
function ItemUse_ansipyat ( role , Item )
	local job = GetChaAttr( role, ATTR_JOB)
	local Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!"  )
		UseItemFailed ( role )
		return
	end

	local Item_CanGet = GetChaFreeBagGridNum ( role )
	 if Item_CanGet < 5 then
		SystemNotice(role ,"Недостаточно места в инвентаре. Невозможно использовать предмет")
		UseItemFailed ( role )
		return
	end

	if job == 1  or job == 9 or job == 8 then --Мечник
		GiveItem ( role , 0 , 763 , 1 , 4 )
		GiveItem ( role , 0 , 770 , 1 , 4 )
	elseif job == 2 or job ==12  then --Охотник
		GiveItem ( role , 0 , 781 , 1 , 4 )
		GiveItem ( role , 0 , 777 , 1 , 4 )
	elseif job == 4 or job ==16 then --Моряк
		GiveItem ( role , 0 , 803 , 1 , 4 )
		GiveItem ( role , 0 , 799 , 1 , 4 )
	elseif job == 5 or job ==13 or job ==14 then --знахарка
		GiveItem ( role , 0 , 789 , 1 , 4 )
		GiveItem ( role , 0 , 785 , 1 , 4 )
	else 
		SystemNotice(role ,"Только игроки первой профессии могут использовать этот сундук")
		UseItemFailed ( role )
		return
	end
end

--Сундуки заклинания
function ItemUse_zaklin( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"Чтобы открыть сундук -  вам нужено 3 свободных слота в инвентаре")
		UseItemFailed ( role )
		return
	end

	local vej = {}
	vej[1]=3404
	vej[2]=3405
	vej[3]=3406
	vej[4]=3407
	vej[5]=3408
	vej[6]=3409

	for i=1,3,1 do
		local a = math.random(1,6)
		GiveItem ( role , 0 , vej[a] , 1 , 4 )
	end

end

--Сундуки исчезновения
function ItemUse_ischez( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"Чтобы открыть сундук -  вам нужено 3 свободных слота в инвентаре")
		UseItemFailed ( role )
		return
	end
	
	
	local vej = {}
	vej[1]=3410
	vej[2]=3411
	vej[3]=3412
	vej[4]=3413
	vej[5]=3414
	vej[6]=3415

	for i=1,3,1 do
		local a = math.random(1,6)
		GiveItem ( role , 0 , vej[a] , 1 , 4 )
	end

end

--Таинственные сундуки
function ItemUse_tainstv( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 3 then
		SystemNotice(role ,"Чтобы открыть сундук -  вам нужено 3 свободных слота в инвентаре")
		UseItemFailed ( role )
		return
	end
	
	local vej = {}
	vej[1]=3416
	vej[2]=3417
	vej[3]=3418
	vej[4]=3419
	vej[5]=3420
	vej[6]=3421

	for i=1,3,1 do
		local a = math.random(1,6)
		GiveItem ( role , 0 , vej[a] , 1 , 4 )
	end

end

--Железный сундук
function ItemUse_jelezo( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 1 then
    SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
    UseItemFailed ( role )
    return
	end
	a = math.random(1,4)
	if a == 1 then 
		GiveItem ( role , 0 , 1159 , 1 , 4 )
	elseif a == 2 then 
		GiveItem ( role , 0 , 1160 , 1 , 4 )
	elseif a == 3 then
		GiveItem ( role , 0 , 1161 , 1 , 4 )
	elseif a == 4 then
		GiveItem ( role , 0 , 1162 , 1 , 4 )
	end
 end

--Заколдованный сундук
 function ItemUse_koldovstvo( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 1 then
    SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
    UseItemFailed ( role )
    return
end
	local a = math.random(1,4)
	if a == 1 then 
		GiveItem ( role , 0 , 1153 , 1 , 4 )
	elseif a == 2 then 
		GiveItem ( role , 0 , 1154 , 1 , 4 )
	elseif a == 3 then
		GiveItem ( role , 0 , 1155 , 1 , 4 )
	elseif a == 4 then
		GiveItem ( role , 0 , 1164 , 1 , 4 )
	end
 end

--Пиратский сундук
 function ItemUse_pirat( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 1 then
    SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
    UseItemFailed ( role )
    return
   end
	local a = math.random(1,4)
	if a == 1 then 
		GiveItem ( role , 0 , 1156 , 1 , 4 )
	elseif a == 2 then 
		GiveItem ( role , 0 , 1157 , 1 , 4 )
	elseif a == 3 then
		GiveItem ( role , 0 , 1158 , 1 , 4 )
	elseif a == 4 then
		GiveItem ( role , 0 , 1163 , 1 , 4 )
	end
 end

--Адские фрукты
  function ItemUse_Ad( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 1 then
    SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
    UseItemFailed ( role )
    return
   end
	local a = math.random(1,7)
	if a == 1 then 
		GiveItem ( role , 0 , 3918 , 1 , 4 )
	elseif a == 2 then 
		GiveItem ( role , 0 , 3919 , 1 , 4 )
	elseif a == 3 then
		GiveItem ( role , 0 , 3920 , 1 , 4 )
	elseif a == 4 then
		GiveItem ( role , 0 , 3921 , 1 , 4 )
	elseif a == 5 then
		GiveItem ( role , 0 , 3922 , 1 , 4 )
	elseif a == 6 then
		GiveItem ( role , 0 , 3924 , 1 , 4 )
	elseif a == 7 then
		GiveItem ( role , 0 , 3925 , 1 , 4 )
	end
 end
 
 
--МОБИЛЬНАЯ СИСТЕМА
 
-- Мобильный банк
function ItemUse_Bank( role, Item )
  local x = GetItemAttr ( Item , ITEMATTR_ENERGY )
   local map_name_role = GetChaMapName ( role )
		if map_name_role == "heilong" then
			SystemNotice(role, "Применение команды в данной местности запрещено!")
			return 0
		end
   if x>0 then
		x=x-3
		SetItemAttr ( Item , ITEMATTR_ENERGY , x )
		RefreshCha ( role )
		SystemNotice(role, "Энергии осталоcь  "..x)
		OpenBank( role, role )
	else
		SystemNotice (role , 'Закончилась энергия!' )
		UseItemFailed ( role )
		return
	end
end

-- Мобильная ковка
function ItemUse_Forge( role, Item )
   
   local x = GetItemAttr ( Item , ITEMATTR_ENERGY )
   if x>0 then
	x=x-3
	SetItemAttr ( Item , ITEMATTR_ENERGY , x )
	RefreshCha ( role )
	SystemNotice(role, "Энергии осталоcь  "..x)
	OpenForge( role, role )
	else
	SystemNotice (role , 'Закончилась энергия!' )
	UseItemFailed ( role )
	end
end

-- Мобильная заточка
function ItemUse_Upgrade( role, Item )
   
   local x = GetItemAttr ( Item , ITEMATTR_ENERGY )
   if x>0 then
	x=x-3
	SetItemAttr ( Item , ITEMATTR_ENERGY , x )
	RefreshCha ( role )
	SystemNotice(role, "Энергии осталоcь  "..x)
	OpenUpgrade( role, role )
	else
	SystemNotice (role , 'Закончилась энергия!' )
	UseItemFailed ( role )
	return
	end
end

-- Мобильный ремонт
function ItemUse_Repair( role, Item )
   
  local x = GetItemAttr ( Item , ITEMATTR_ENERGY )
   if x>0 then
	x=x-3
	SetItemAttr ( Item , ITEMATTR_ENERGY , x )
	RefreshCha ( role )
	SystemNotice(role, "Энергии осталоcь  "..x)
	OpenRepair( role, role )
	else
	SystemNotice (role , 'Закончилась энергия!' )
	UseItemFailed ( role )
	return
	end
	end

-- Мобильная вставка
function ItemUse_Fusion( role, Item )
   
   local x = GetItemAttr ( Item , ITEMATTR_ENERGY )
   if x>0 then
	x=x-3
	SetItemAttr ( Item , ITEMATTR_ENERGY , x )
	RefreshCha ( role )
	SystemNotice(role, "Энергии осталоcь  "..x)
	OpenUnite( role, role )
	SystemNotice(role, "Энергии осталось")
	else
	SystemNotice (role , 'Закончилась энергия!' )
	UseItemFailed ( role )
	return
	end
end

function ItemUse_minus( role, Item )
 local x = GetItemAttr ( Item , ITEMATTR_ENERGY )
   if x>0 then
	x=x-1
	SetItemAttr ( Item , ITEMATTR_ENERGY , x )
	RefreshCha ( role )
	end
end
-- Мобильный дырокол
function ItemUse_Milling( role, Item )
   
   local x = GetItemAttr ( Item , ITEMATTR_ENERGY )
   if x>0 then
	x=x-3
	SetItemAttr ( Item , ITEMATTR_ENERGY , x )
	RefreshCha ( role )
	SystemNotice(role, "Энергии осталоcь  "..x)
	OpenMilling( role, role )
	else
	SystemNotice (role , 'Закончилась энергия!' )
	UseItemFailed ( role )
	return
	end 
end

-- Сундук с мобильными акссесуарами
function ItemUse_Mobil( role, Item )
    local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
    if ItemCanGetSlot < 6 then
     SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
     UseItemFailed ( role )
     return
    end
    GiveItem(role, 0, 8555, 1, 4)
    GiveItem(role, 0, 8556, 1, 4)
    GiveItem(role, 0, 8557, 1, 4)
    GiveItem(role, 0, 8558, 1, 4)
    GiveItem(role, 0, 8559, 1, 4)
    GiveItem(role, 0, 8560, 1, 4)

   
end

--МОБИЛЬНАЯ СИСТЕМА КОНЕЦ

--Мануфакт
--1
function ItemUse_Mano( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 1 then
    SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
    UseItemFailed ( role )
    return
	end
	a = math.random(1,24)
	if a == 1 then 
		GiveItem ( role , 0 , 1135 , 10 , 4 )
	elseif a == 2 then 
		GiveItem ( role , 0 , 1136 , 10 , 4 )
	elseif a == 3 then
		GiveItem ( role , 0 , 1137 , 10 , 4 )
	elseif a == 4 then
		GiveItem ( role , 0 , 1138 , 10 , 4 )
	elseif a == 5 then
		GiveItem ( role , 0 , 1139 , 10 , 4 )
	elseif a == 6 then
		GiveItem ( role , 0 , 1140 , 10 , 4 )
	elseif a == 7 then
		GiveItem ( role , 0 , 1141 , 10 , 4 )
	elseif a == 8 then
		GiveItem ( role , 0 , 1142 , 10 , 4 )
	elseif a == 9 then
		GiveItem ( role , 0 , 1143 , 10 , 4 )
	elseif a == 10 then
		GiveItem ( role , 0 , 1144 , 10 , 4 )
	elseif a == 11 then
		GiveItem ( role , 0 , 1145 , 5 , 4 )
	elseif a == 12 then
		GiveItem ( role , 0 , 1146 , 10 , 4 )
	elseif a == 13 then
		GiveItem ( role , 0 , 1147 , 10 , 4 )
	elseif a == 14 then
		GiveItem ( role , 0 , 1148 , 10 , 4 )
	elseif a == 15 then
		GiveItem ( role , 0 , 1149 , 10 , 4 )
	elseif a == 16 then
		GiveItem ( role , 0 , 1150 , 10 , 4 )
	elseif a == 17 then
		GiveItem ( role , 0 , 1151 , 10 , 4 )
	elseif a == 18 then
		GiveItem ( role , 0 , 1152 , 10 , 4 )
	elseif a == 19 then
		GiveItem ( role , 0 , 2673 , 10 , 4 )
	elseif a == 20 then
		GiveItem ( role , 0 , 2674 , 10 , 4 )
	elseif a == 21 then
		GiveItem ( role , 0 , 2675 , 10 , 4 )
	elseif a == 22 then
		GiveItem ( role , 0 , 2676 , 10 , 4 )
	elseif a == 23 then
		GiveItem ( role , 0 , 2677 , 10 , 4 )
	elseif a == 24 then
		GiveItem ( role , 0 , 2678 , 10 , 4 )
		
	end
 end
--2
function ItemUse_Mand( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 1 then
    SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
    UseItemFailed ( role )
    return
	end
	a = math.random(1,24)
	if a == 1 then 
		GiveItem ( role , 0 , 2719 , 10 , 4 )
	elseif a == 2 then 
		GiveItem ( role , 0 , 2720 , 10 , 4 )
	elseif a == 3 then
		GiveItem ( role , 0 , 2721 , 10 , 4 )
	elseif a == 4 then
		GiveItem ( role , 0 , 2722 , 10 , 4 )
	elseif a == 5 then
		GiveItem ( role , 0 , 2723 , 10 , 4 )
	elseif a == 6 then
		GiveItem ( role , 0 , 2724 , 10 , 4 )
	elseif a == 7 then
		GiveItem ( role , 0 , 2725 , 10 , 4 )
	elseif a == 8 then
		GiveItem ( role , 0 , 2726 , 10 , 4 )
	elseif a == 9 then
		GiveItem ( role , 0 , 2727 , 10 , 4 )
	elseif a == 10 then
		GiveItem ( role , 0 , 2728 , 10 , 4 )
	elseif a == 11 then
		GiveItem ( role , 0 , 2729 , 4 , 4 )
	elseif a == 12 then
		GiveItem ( role , 0 , 2730 , 10 , 4 )
	elseif a == 13 then
		GiveItem ( role , 0 , 2731 , 10 , 4 )
	elseif a == 14 then
		GiveItem ( role , 0 , 2732 , 10 , 4 )
	elseif a == 15 then
		GiveItem ( role , 0 , 2733 , 10 , 4 )
	elseif a == 16 then
		GiveItem ( role , 0 , 2734 , 10 , 4 )
	elseif a == 17 then
		GiveItem ( role , 0 , 2735 , 10 , 4 )
	elseif a == 18 then
		GiveItem ( role , 0 , 2736 , 10 , 4 )
	elseif a == 19 then
		GiveItem ( role , 0 , 2737 , 10 , 4 )
	elseif a == 20 then
		GiveItem ( role , 0 , 2738 , 10 , 4 )
	elseif a == 21 then
		GiveItem ( role , 0 , 2739 , 10 , 4 )
	elseif a == 22 then
		GiveItem ( role , 0 , 2740 , 10 , 4 )
	elseif a == 23 then
		GiveItem ( role , 0 , 2741 , 10 , 4 )
	elseif a == 24 then
		GiveItem ( role , 0 , 2742 , 10 , 4 )
		
	end
 end
--3
function ItemUse_Mant( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 1 then
    SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
    UseItemFailed ( role )
    return
	end
	a = math.random(1,24)
	if a == 1 then 
		GiveItem ( role , 0 , 2743 , 10 , 4 )
	elseif a == 2 then 
		GiveItem ( role , 0 , 2744 , 10 , 4 )
	elseif a == 3 then
		GiveItem ( role , 0 , 2745 , 10 , 4 )
	elseif a == 4 then
		GiveItem ( role , 0 , 2746 , 10 , 4 )
	elseif a == 5 then
		GiveItem ( role , 0 , 2747 , 10 , 4 )
	elseif a == 6 then
		GiveItem ( role , 0 , 2748 , 10 , 4 )
	elseif a == 7 then
		GiveItem ( role , 0 , 2749 , 10 , 4 )
	elseif a == 8 then
		GiveItem ( role , 0 , 2750 , 10 , 4 )
	elseif a == 9 then
		GiveItem ( role , 0 , 2751 , 10 , 4 )
	elseif a == 10 then
		GiveItem ( role , 0 , 2753 , 3 , 4 )
	elseif a == 11 then
		GiveItem ( role , 0 , 2754 , 10 , 4 )
	elseif a == 12 then
		GiveItem ( role , 0 , 2755 , 10 , 4 )
	elseif a == 13 then
		GiveItem ( role , 0 , 2756 , 10 , 4 )
	elseif a == 14 then
		GiveItem ( role , 0 , 2757 , 10 , 4 )
	elseif a == 15 then
		GiveItem ( role , 0 , 2758 , 10 , 4 )
	elseif a == 16 then
		GiveItem ( role , 0 , 2759 , 10 , 4 )
	elseif a == 17 then
		GiveItem ( role , 0 , 2760 , 10 , 4 )
	elseif a == 18 then
		GiveItem ( role , 0 , 2761 , 10 , 4 )
	elseif a == 19 then
		GiveItem ( role , 0 , 2762 , 10 , 4 )
	elseif a == 20 then
		GiveItem ( role , 0 , 2763 , 10 , 4 )
	elseif a == 21 then
		GiveItem ( role , 0 , 2764 , 10 , 4 )
	elseif a == 22 then
		GiveItem ( role , 0 , 2765 , 10 , 4 )
	elseif a == 23 then
		GiveItem ( role , 0 , 2766 , 10 , 4 )
	elseif a == 24 then
		GiveItem ( role , 0 , 2752 , 10 , 4 )
		
	end
 end
--4
function ItemUse_Manc( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 1 then
    SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
    UseItemFailed ( role )
    return
	end
	a = math.random(1,24)
	if a == 1 then 
		GiveItem ( role , 0 , 2767 , 10 , 4 )
	elseif a == 2 then 
		GiveItem ( role , 0 , 2768 , 10 , 4 )
	elseif a == 3 then
		GiveItem ( role , 0 , 2769 , 10 , 4 )
	elseif a == 4 then
		GiveItem ( role , 0 , 2770 , 10 , 4 )
	elseif a == 5 then
		GiveItem ( role , 0 , 2771 , 10 , 4 )
	elseif a == 6 then
		GiveItem ( role , 0 , 2772 , 10 , 4 )
	elseif a == 7 then
		GiveItem ( role , 0 , 2773 , 10 , 4 )
	elseif a == 8 then
		GiveItem ( role , 0 , 2774 , 10 , 4 )
	elseif a == 9 then
		GiveItem ( role , 0 , 2775 , 10 , 4 )
	elseif a == 10 then
		GiveItem ( role , 0 , 2776 , 10 , 4 )
	elseif a == 11 then
		GiveItem ( role , 0 , 2777 , 2 , 4 )
	elseif a == 12 then
		GiveItem ( role , 0 , 2778 , 10 , 4 )
	elseif a == 13 then
		GiveItem ( role , 0 , 2779 , 10 , 4 )
	elseif a == 14 then
		GiveItem ( role , 0 , 2780 , 10 , 4 )
	elseif a == 15 then
		GiveItem ( role , 0 , 2781 , 10 , 4 )
	elseif a == 16 then
		GiveItem ( role , 0 , 2782 , 10 , 4 )
	elseif a == 17 then
		GiveItem ( role , 0 , 2783 , 10 , 4 )
	elseif a == 18 then
		GiveItem ( role , 0 , 2784 , 10 , 4 )
	elseif a == 19 then
		GiveItem ( role , 0 , 2785 , 10 , 4 )
	elseif a == 20 then
		GiveItem ( role , 0 , 2786 , 10 , 4 )
	elseif a == 21 then
		GiveItem ( role , 0 , 2787 , 10 , 4 )
	elseif a == 22 then
		GiveItem ( role , 0 , 2788 , 10 , 4 )
	elseif a == 23 then
		GiveItem ( role , 0 , 2789 , 10 , 4 )
	elseif a == 24 then
		GiveItem ( role , 0 , 2790 , 10 , 4 )
		
	end
 end
--5
function ItemUse_Manv( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 1 then
    SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
    UseItemFailed ( role )
    return
	end
	a = math.random(1,24)
	if a == 1 then 
		GiveItem ( role , 0 , 2791 , 10 , 4 )
	elseif a == 2 then 
		GiveItem ( role , 0 , 2792 , 10 , 4 )
	elseif a == 3 then
		GiveItem ( role , 0 , 2793 , 10 , 4 )
	elseif a == 4 then
		GiveItem ( role , 0 , 2794 , 10 , 4 )
	elseif a == 5 then
		GiveItem ( role , 0 , 2795 , 10 , 4 )
	elseif a == 6 then
		GiveItem ( role , 0 , 2796 , 10 , 4 )
	elseif a == 7 then
		GiveItem ( role , 0 , 2797 , 10 , 4 )
	elseif a == 8 then
		GiveItem ( role , 0 , 2798 , 10 , 4 )
	elseif a == 9 then
		GiveItem ( role , 0 , 2799 , 10 , 4 )
	elseif a == 10 then
		GiveItem ( role , 0 , 2800 , 10 , 4 )
	elseif a == 11 then
		GiveItem ( role , 0 , 2801 , 1 , 4 )
	elseif a == 12 then
		GiveItem ( role , 0 , 2802 , 10 , 4 )
	elseif a == 13 then
		GiveItem ( role , 0 , 2803 , 10 , 4 )
	elseif a == 14 then
		GiveItem ( role , 0 , 2804 , 10 , 4 )
	elseif a == 15 then
		GiveItem ( role , 0 , 2805 , 10 , 4 )
	elseif a == 16 then
		GiveItem ( role , 0 , 2806 , 10 , 4 )
	elseif a == 17 then
		GiveItem ( role , 0 , 2807 , 10 , 4 )
	elseif a == 18 then
		GiveItem ( role , 0 , 2808 , 10 , 4 )
	elseif a == 19 then
		GiveItem ( role , 0 , 2809 , 10 , 4 )
	elseif a == 20 then
		GiveItem ( role , 0 , 2810 , 10 , 4 )
	elseif a == 21 then
		GiveItem ( role , 0 , 2811 , 10 , 4 )
	elseif a == 22 then
		GiveItem ( role , 0 , 2812 , 10 , 4 )
	elseif a == 23 then
		GiveItem ( role , 0 , 2813 , 10 , 4 )
	elseif a == 24 then
		GiveItem ( role , 0 , 2814 , 10 , 4 )
		
	end
 end

--Кулинария
function ItemUse_Kul( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 1 then
    SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
    UseItemFailed ( role )
    return
	end
	a = math.random(1,22)
	if a == 1 then 
		GiveItem ( role , 0 , 4019 , 10 , 4 )
	elseif a == 2 then 
		GiveItem ( role , 0 , 4020 , 10 , 4 )
	elseif a == 3 then
		GiveItem ( role , 0 , 4021 , 10 , 4 )
	elseif a == 4 then
		GiveItem ( role , 0 , 1079 , 10 , 4 )
	elseif a == 5 then
		GiveItem ( role , 0 , 1078 , 10 , 4 )
	elseif a == 6 then
		GiveItem ( role , 0 , 1085 , 10 , 4 )
	elseif a == 7 then
		GiveItem ( role , 0 , 1084 , 10 , 4 )
	elseif a == 8 then
		GiveItem ( role , 0 , 4022 , 10 , 4 )
	elseif a == 9 then
		GiveItem ( role , 0 , 4023 , 10 , 4 )
	elseif a == 10 then
		GiveItem ( role , 0 , 1088 , 10 , 4 )
	elseif a == 11 then
		GiveItem ( role , 0 , 1087 , 10 , 4 )
	elseif a == 12 then
		GiveItem ( role , 0 , 1082 , 10 , 4 )
	elseif a == 13 then
		GiveItem ( role , 0 , 1080 , 10 , 4 )
	elseif a == 14 then
		GiveItem ( role , 0 , 1083 , 10 , 4 )
	elseif a == 15 then
		GiveItem ( role , 0 , 1860 , 10 , 4 )
	elseif a == 16 then
		GiveItem ( role , 0 , 1089 , 10 , 4 )
	elseif a == 17 then
		GiveItem ( role , 0 , 4024 , 10 , 4 )
	elseif a == 18 then
		GiveItem ( role , 0 , 1090 , 10 , 4 )
	elseif a == 19 then
		GiveItem ( role , 0 , 4025 , 10 , 4 )
	elseif a == 20 then
		GiveItem ( role , 0 , 4026 , 10 , 4 )
	elseif a == 21 then
		GiveItem ( role , 0 , 4027 , 10 , 4 )
	elseif a == 22 then
		GiveItem ( role , 0 , 4028 , 10 , 4 )

	end
 end

function ItemUse_Exp1(role) 
local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	SetChaAttrI( role , ATTR_LV , lv_next )

end
-- Свиток характеристик --
function ItemUse_Stat1(role)
local ap_role = GetChaAttr ( role , ATTR_AP )
local ap_next = ap_role + 1
SetChaAttrI( role , ATTR_AP , ap_next )
end

-- Свиток магии --
function ItemUse_Skill1(role)
local tp_role = GetChaAttr ( role , ATTR_TP )
local tp_next = tp_role + 1
SetChaAttrI( role , ATTR_TP , tp_next )
end
 
 --Аппарели ЛАнс
function ItemUse_ApHJrLan( role, Item)
 local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 3 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5224 , 1 , 4 )
	GiveItem ( role , 0 , 5225 , 1 , 4 )
	GiveItem ( role , 0 , 5226 , 1 , 4 )
end
 
function ItemUse_ApKrLan( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5522 , 1 , 4 )
	GiveItem ( role , 0 , 5523 , 1 , 4 )
	GiveItem ( role , 0 , 5524 , 1 , 4 )
	GiveItem ( role , 0 , 5521 , 1 , 4 )
	end
 
function ItemUse_ApKrLunLan( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5662 , 1 , 4 )
	GiveItem ( role , 0 , 5663 , 1 , 4 )
	GiveItem ( role , 0 , 5664 , 1 , 4 )
	GiveItem ( role , 0 , 5661 , 1 , 4 )
	end
 
function ItemUse_ApHruLan( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5316 , 1 , 4 )
	GiveItem ( role , 0 , 5317 , 1 , 4 )
	GiveItem ( role , 0 , 5318 , 1 , 4 )
	GiveItem ( role , 0 , 5315 , 1 , 4 )
	end
function ItemUse_ApJrLan( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5224 , 1 , 4 )
	GiveItem ( role , 0 , 5225 , 1 , 4 )
	GiveItem ( role , 0 , 5226 , 1 , 4 )
	end
function ItemUse_ApKatLan( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5041 , 1 , 4 )
	GiveItem ( role , 0 , 5045 , 1 , 4 )
	GiveItem ( role , 0 , 5049 , 1 , 4 )
	end
function ItemUse_ApRomLan( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5303 , 1 , 4 )
	GiveItem ( role , 0 , 5304 , 1 , 4 )
	GiveItem ( role , 0 , 5305 , 1 , 4 )
	end
 
 --Аппарели  Карциз
function ItemUse_ApKrKar( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5526 , 1 , 4 )
	GiveItem ( role , 0 , 5527 , 1 , 4 )
	GiveItem ( role , 0 , 5528 , 1 , 4 )
	GiveItem ( role , 0 , 5525 , 1 , 4 )
	end
function ItemUse_ApRrLunKar( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5666 , 1 , 4 )
	GiveItem ( role , 0 , 5667 , 1 , 4 )
	GiveItem ( role , 0 , 5668 , 1 , 4 )
	GiveItem ( role , 0 , 5665 , 1 , 4 )
	end
 
function ItemUse_ApHruKar( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5320 , 1 , 4 )
	GiveItem ( role , 0 , 5321 , 1 , 4 )
	GiveItem ( role , 0 , 5322 , 1 , 4 )
	GiveItem ( role , 0 , 5319 , 1 , 4 )
	end
 
function ItemUse_ApEpKar( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5230 , 1 , 4 )
	GiveItem ( role , 0 , 5231 , 1 , 4 )
	GiveItem ( role , 0 , 5232 , 1 , 4 )
	GiveItem ( role , 0 , 5233 , 1 , 4 )
	end
	
function ItemUse_ApKatKar( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5042 , 1 , 4 )
	GiveItem ( role , 0 , 5046 , 1 , 4 )
	GiveItem ( role , 0 , 5050 , 1 , 4 )
	end
	
function ItemUse_ApRomKar( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5306 , 1 , 4 )
	GiveItem ( role , 0 , 5307 , 1 , 4 )
	GiveItem ( role , 0 , 5308 , 1 , 4 )
	end
	--Аппарели филис
function ItemUse_ApKrFil( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5530 , 1 , 4 )
	GiveItem ( role , 0 , 5531 , 1 , 4 )
	GiveItem ( role , 0 , 5532 , 1 , 4 )
	GiveItem ( role , 0 , 5529 , 1 , 4 )
	end
 
function ItemUse_ApKrLunFil( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5669 , 1 , 4 )
	GiveItem ( role , 0 , 5670 , 1 , 4 )
	GiveItem ( role , 0 , 5671 , 1 , 4 )
	GiveItem ( role , 0 , 5672 , 1 , 4 )
	end

function ItemUse_ApHruFil( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5323 , 1 , 4 )
	GiveItem ( role , 0 , 5324 , 1 , 4 )
	GiveItem ( role , 0 , 5325 , 1 , 4 )
	GiveItem ( role , 0 , 5326 , 1 , 4 )
	end

function ItemUse_ApMonFil( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5248 , 1 , 4 )
	GiveItem ( role , 0 , 5249 , 1 , 4 )
	GiveItem ( role , 0 , 5250 , 1 , 4 )
	GiveItem ( role , 0 , 5251 , 1 , 4 )
	end	
function ItemUse_ApKatFil( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5043 , 1 , 4 )
	GiveItem ( role , 0 , 5047 , 1 , 4 )
	GiveItem ( role , 0 , 5051 , 1 , 4 )
	end
function ItemUse_ApRomFil( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5309 , 1 , 4 )
	GiveItem ( role , 0 , 5310 , 1 , 4 )
	GiveItem ( role , 0 , 5311 , 1 , 4 )
	end
	--Аппарели Ами
function ItemUse_ApKrAm( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5534 , 1 , 4 )
	GiveItem ( role , 0 , 5535 , 1 , 4 )
	GiveItem ( role , 0 , 5536 , 1 , 4 )
	GiveItem ( role , 0 , 5533 , 1 , 4 )
	end
	
function ItemUse_ApKrLunAm( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5673 , 1 , 4 )
	GiveItem ( role , 0 , 5674 , 1 , 4 )
	GiveItem ( role , 0 , 5675 , 1 , 4 )
	GiveItem ( role , 0 , 5676 , 1 , 4 )
	end
	
function ItemUse_ApHruAm( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5327 , 1 , 4 )
	GiveItem ( role , 0 , 5328 , 1 , 4 )
	GiveItem ( role , 0 , 5329 , 1 , 4 )
	GiveItem ( role , 0 , 5330 , 1 , 4 )
	end
	
function ItemUse_ApMonAm( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5256 , 1 , 4 )
	GiveItem ( role , 0 , 5257 , 1 , 4 )
	GiveItem ( role , 0 , 5258 , 1 , 4 )
	GiveItem ( role , 0 , 5259 , 1 , 4 )
	end
	
function ItemUse_ApKatAm( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	
	GiveItem ( role , 0 , 5044 , 1 , 4 )
	GiveItem ( role , 0 , 5048 , 1 , 4 )
	GiveItem ( role , 0 , 5052 , 1 , 4 )
	GiveItem ( role , 0 , 5056 , 1 , 4 )
	end

function ItemUse_ApRomAm( role, Item )
   local ItemCanGetSlot = GetChaFreeBagGridNum ( role )
   if ItemCanGetSlot < 4 then
		SystemNotice(role, "У вас не хватает слотов в инвентаре для распаковки сундука!")
		UseItemFailed ( role )
		return
	end
	GiveItem ( role , 0 , 5312 , 1 , 4 )
	GiveItem ( role , 0 , 5313 , 1 , 4 )
	GiveItem ( role , 0 , 5314 , 1 , 4 )
	end
	

-- skill book -- white knight --
function Skill_jc_WK01 ( role , Item ) 											
	local sk_add = SK_White001 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--?????????
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Skill_jc_WK02 ( role , Item ) 											
	local sk_add = SK_White002 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--?????????
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Skill_jc_WK03 ( role , Item ) 											
	local sk_add = SK_White003 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--?????????
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Skill_jc_WK04 ( role , Item ) 											
	local sk_add = SK_White004 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--?????????
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Skill_jc_WK05 ( role , Item ) 											
	local sk_add = SK_White005 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--?????????
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Skill_jc_WK06 ( role , Item ) 											
	local sk_add = SK_White006 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--?????????
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Skill_jc_WK07 ( role , Item ) 											
	local sk_add = SK_White007 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--?????????
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 

function Skill_jc_WK08 ( role , Item ) 											
	local sk_add = SK_White008 
	local form_sklv = GetSkillLv( role , sk_add ) 
	  
--	if form_sklv < 0 or form_sklv == nil then								--?????????
--		return 
--	end 
	if form_sklv ~= 0  then 
		UseItemFailed ( role )  
		return 
	end 
	a = AddChaSkill ( role , sk_add, 1 , 1 , 1 ) 
	if a== 0 then 
		UseItemFailed ( role )  
		return 
	end 
end 
-- end skill book white knight --
function ItemUse_YSYS( role , Item )
local Cha_Boat = GetCtrlBoat ( role )
	
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	local statelv = 2
	local statetime = 5
	local statetime2 = 10
	local Cha_Boat = 0
	local ChaStateLv = GetChaStateLv ( role , STATE_YS )
	Cha_Boat = GetCtrlBoat ( role )
	local name = GetChaDefaultName(role)
	if acc2[name] == nil then
        acc2[name] = { UsedTime = os.time() }
    end
	local cooldown = acc2[name].UsedTime - os.time()
	
	if acc2[name].UsedTime >  os.time() then
	local edx = acc2[name].UsedTime -  os.time()
			SystemNotice ( role , "Вы не можете пользоваться данным предметов еще "..edx.." секунд"  )
			UseItemFailed ( role )
			return
	end
	
	if ChaStateLv >= statelv then
		if ChaStateLv > statelv then --если уровень этого фрукта меньше уже работающего
			SystemNotice ( role , "Более мощный усилитель еще не окончился " )
			UseItemFailed ( role )
			return
		end
		if ChaStateLv == statelv then
		 if cooldown > 0 then
			local cooldown2 = math.floor(cooldown/60)		 		
			local cooldown1 = (cooldown - math.floor(cooldown/60)*60)		 
			SystemNotice(role,"Этот усилитель уже активен, повторно активировать можно через "..cooldown2.." минут "..cooldown1.." сек.!")
			UseItemFailed ( role )
			return
		end
	 end
	end
	
	if Cha_Boat ==  nil then
		AddState( role , role , STATE_YS , statelv , statetime )
		acc2[name].UsedTime = os.time()+statetime2
	else
		SystemNotice( role , "Невозможно использовать в море" )
		UseItemFailed ( role )
		return
	end

end
--Cвиток перемещения
function ItemUse_peremech(role, Item )
local Cha_Boat = GetCtrlBoat ( role )
	
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end

	local i = CheckBagItem(role,8618)
	local k = ChaIsBoat(role)
	local map_name_role = GetChaMapName ( role )
	local hp = Hp(role)
	local mxhp = Mxhp(role)
	local sp = Sp(role)
	local mxsp = Mxsp(role)
	local x, y = GetChaPos( role )
	if k == 0 then
		if i > 0 then
			local j = DelBagItem(role,8618,1)
			if j == 1 then
			--ОБ
			if map_name_role =="lonetower" then
						if	a	==	1	then	GoTo(	role,	273,269,	"lonetower")				return	end
						if	a	==	2	then	GoTo(	role,	357,271,"lonetower")				return	end	
						if	a	==	3	then	GoTo(	role,	362,316,"lonetower")				return	end	
						if	a	==	4	then	GoTo(	role,	306,351,	"lonetower")				return	end
						if	a	==	5	then	GoTo(	role,	279,344,"lonetower")				return	end	
						if	a	==	6	then	GoTo(	role,	269,319,	"lonetower")				return	end
						if	a	==	7	then	GoTo(	role,	318,358,"lonetower")				return	end	
						if	a	==	8	then	GoTo(	role,	294,318,	"lonetower")				return	end
						if	a	==	9	then	GoTo(	role,	375,311,	"lonetower")				return	end
						if	a	==	10	then	GoTo(	role,	260,282,"lonetower")				return	end	
						if	a	==	11	then	GoTo(	role,	42,133,	"lonetower")				return	end
						if	a	==	12	then	GoTo(	role,	119,67,	"lonetower")				return	end
						if	a	==	13	then	GoTo(	role,	169,32,"lonetower")				return	end
						if	a	==	14	then	GoTo(	role,	37,60,"lonetower")				return	end
						if	a	==	15	then	GoTo(	role,	28,157,"lonetower")				return	end	
						if	a	==	16	then	GoTo(	role,	97,174,"lonetower")				return	end	
						if	a	==	17	then	GoTo(	role,	116,78,"lonetower")				return	end	
						if	a	==	18	then	GoTo(	role,	39,18,"lonetower")				return	end	
						if	a	==	19	then	GoTo(	role,	29,172,"lonetower")				return	end	
						if	a	==	20	then	GoTo(	role,	75,132,"lonetower")				return	end	
						if	a	==	21	then	GoTo(	role,	166,278,"lonetower")				return	end	
						if	a	==	22	then	GoTo(	role,	40,269	,"lonetower")				return	end
						if	a	==	23	then	GoTo(	role,	38,349	,"lonetower")				return	end
						if	a	==	24	then	GoTo(	role,	84,395	,"lonetower")				return	end
						if	a	==	25	then	GoTo(	role,	169,405,"lonetower")				return	end	
						if	a	==	26	then	GoTo(	role,	101,260,"lonetower")				return	end	
						if	a	==	27	then	GoTo(	role,	29,305,"lonetower")				return	end	
						if	a	==	28	then	GoTo(	role,	119,314,"lonetower")				return	end	
						if	a	==	29	then	GoTo(	role,	165,380,"lonetower")				return	end	
						if	a	==	30	then	GoTo(	role,	74,312,"lonetower")				return	end	
						if	a	==	31	then	GoTo(	role,	242,114,"lonetower")				return	end	
						if	a	==	32	then	GoTo(	role,	282,169,"lonetower")				return	end
						if	a	==	33	then	GoTo(	role,	361,180,"lonetower")				return	end	
						if	a	==	34	then	GoTo(	role,	325,82,"lonetower")				return	end
						if	a	==	35	then	GoTo(	role,	341,21,"lonetower")				return	end	
						if	a	==	36	then	GoTo(	role,	239,25,"lonetower")				return	end
						if	a	==	37	then	GoTo(	role,	238,74,"lonetower")				return	end
						if	a	==	38	then	GoTo(	role,	294,84,"lonetower")				return	end
						if	a	==	39	then	GoTo(	role,	280,60,"lonetower")				return	end
						if	a	==	40	then	GoTo(	role,	373,39,"lonetower")				return	end	
						if	a	==	41	then	GoTo(	role,	550,54,"lonetower")				return	end
						if	a	==	42	then	GoTo(	role,	628,74,"lonetower")				return	end
						if	a	==	43	then	GoTo(	role,	508,126,"lonetower")				return	end
						if	a	==	44	then	GoTo(	role,	597,147,"lonetower")				return	end
						if	a	==	45	then	GoTo(	role,	484,38,"lonetower")				return	end	
						if	a	==	46	then	GoTo(	role,	588,25,"lonetower")				return	end
						if	a	==	47	then	GoTo(	role,	512,157,"lonetower")				return	end
						if	a	==	48	then	GoTo(	role,	526,72,"lonetower")				return	end
						if	a	==	49	then	GoTo(	role,	631,100,"lonetower")				return	end
						if	a	==	50	then	GoTo(	role,	568,87,"lonetower")				return	end	
						if	a	==	51	then	GoTo(	role,	545,278,"lonetower")				return	end
						if	a	==	52	then	GoTo(	role,	517,307,"lonetower")				return	end
						if	a	==	53	then	GoTo(	role,	516,273,"lonetower")				return	end	
						if	a	==	54	then	GoTo(	role,	471,298,"lonetower")				return	end
						if	a	==	55	then	GoTo(	role,	496,323,"lonetower")				return	end	
						if	a	==	56	then	GoTo(	role,	548,318,"lonetower")				return	end
						if	a	==	57	then	GoTo(	role,	542,274,"lonetower")				return	end
						if	a	==	58	then	GoTo(	role,	493,302,"lonetower")				return	end
						if	a	==	59	then	GoTo(	role,	533,304,"lonetower")				return	end
						if	a	==	60	then	GoTo(	role,	508,323,"lonetower")					return	end

			end
			--Залив сокровищ
			if map_name_role == "jialebi" then 
					local a = math.random ( 1, 10 )
					if a == 1 then
						GoTo( role,  683, 999, "jialebi")
						return
					end
					if a == 2 then
						GoTo( role,  526, 965, "jialebi")
						return
					end 
					if a == 3 then
						GoTo( role,  454, 1031, "jialebi")
						return
					end 
					if a == 4 then
						GoTo( role,  531, 915, "jialebi")
						return
					end 
					if a == 5 then
						GoTo( role,  584, 918,"jialebi")
						return
					end 
					if a == 6 then
						GoTo( role,  664, 935, "jialebi")
						return
					end 
					if a == 7 then
						GoTo( role, 434, 1006,"jialebi")
						return
					end 
					if a == 8 then
						GoTo( role,  688, 1051,"jialebi")
						return
					end 
					if a == 9 then
						GoTo( role, 451, 958,"jialebi")
						return
					end 
				end
				--Логово БД
			if map_name_role == "heilong" then 
					local a = math.random ( 1, 10 )
					if a == 1 then
						GoTo( role,  724, 289, "heilong")
						return
					end
					if a == 2 then
						GoTo( role,  728, 480, "heilong")
						return
					end 
					if a == 3 then
						GoTo( role,  872, 362, "heilong")
						return
					end 
					if a == 4 then
						GoTo( role,  812, 425, "heilong")
						return
					end 
					if a == 5 then
						GoTo( role,  690, 400, "heilong")
						return
					end 
					if a == 6 then
						GoTo( role,  685, 253, "heilong")
						return
					end 
					if a == 7 then
						GoTo( role, 834, 442, "heilong")
						return
					end 
					if a == 8 then
						GoTo( role,  890, 520, "heilong")
						return
					end 
					if a == 9 then
						GoTo( role, 882, 391, "heilong")
						return
					end 
					if a == 10 then
						GoTo( role,  683, 354,"heilong")
						return
					end 

				end
			--Аргент
			if map_name_role == "garner" then 
					local a = math.random ( 1, 37 )
					if a == 1 then
						GoTo( role,  x, y, "garner")
						return
					end
					if a == 2 then
						GoTo( role,  1579, 3027, "garner")
						return
					end 
					if a == 3 then
						GoTo( role,  1905, 2818, "garner")
						return
					end 
					if a == 4 then
						GoTo( role,  1479, 2805, "garner")
						return
					end 
					if a == 5 then
						GoTo( role,  1879, 2530, "garner")
						return
					end 
					if a == 6 then
						GoTo( role,  2114, 2649, "garner")
						return
					end 
					if a == 7 then
						GoTo( role,  2005, 2777, "garner")
						return
					end 
					if a == 8 then
						GoTo( role,  1795, 2968, "garner")
						return
					end 
					if a == 9 then
						GoTo( role,  1488, 3206, "garner")
						return
					end 
					if a == 10 then
						GoTo( role,  1314, 3109, "garner")
						return
					end 
					if a == 11 then
						GoTo( role,  1242, 2749, "garner")
						return
					end 
					if a == 12 then
						GoTo( role,  980, 2777, "garner")
						return
					end 
					if a == 13 then
						GoTo( role,  973, 2965, "garner")
						return
					end 
					if a == 14 then
						GoTo( role,  842, 3012, "garner")
						return
					end 
					if a == 15 then
						GoTo( role,  883, 2883, "garner")
						return
					end 
					if a == 16 then
						GoTo( role,  814, 2777, "garner")
						return
					end 
					if a == 17 then
						GoTo( role,  876, 2639, "garner")
						return
					end 
					if a == 18 then
						GoTo( role,  1083, 2574, "garner")
						return
					end 
					if a == 19 then
						GoTo( role,  438, 2602, "garner")
						return
					end 
					if a == 20 then
						GoTo( role,  610, 2505, "garner")
						return
					end 
					if a == 21 then
						GoTo( role,  876, 2452, "garner")
						return
					end 
					if a == 22 then
						GoTo( role,  369, 2461, "garner")
						return
					end 
					if a == 23 then
						GoTo( role,  585, 2317, "garner")
						return
					end 
					if a == 24 then
						GoTo( role,  463, 2127, "garner")
						return
					end 
					if a == 25 then
						GoTo( role,  810, 1961, "garner")
						return
					end 
					if a == 26 then
						GoTo( role,  717, 1860, "garner")
						return
					end 
					if a == 27 then
						GoTo( role,  518, 1766, "garner")
						return
					end 
					if a == 28 then
						GoTo( role,  896, 1697, "garner")
						return
					end 
					if a == 29 then
						GoTo( role,  452, 1641, "garner")
						return
					end 
					if a == 30 then
						GoTo( role,  394, 1387, "garner")
						return
					end 
					if a == 30 then
						GoTo( role,  808, 1258, "garner")
						return
					end 
					if a == 31 then
						GoTo( role,  948, 1291, "garner")
						return
					end 
					if a == 32 then
						GoTo( role,  360, 1327, "garner")
						return
					end 
					if a == 33 then
						GoTo( role,  735, 1289, "garner")
						return
					end 
					if a == 34 then
						GoTo( role,  2267, 1126, "garner")
						return
					end 
					if a == 35 then
						GoTo( role,  3587, 767, "garner")
						return
					end 
					if a == 36 then
						GoTo( role,  3315, 3250, "garner")
						return
					end 
					if a == 37 then
						GoTo( role,  600, 1874, "garner")
						return
					end 
				
				end
			--Ледынь
			if map_name_role == "darkblue" then 
				local a = math.random ( 1, 30 )	
					if a == 1 then
						GoTo( role,  x, y, "darkblue")
						return
					end
					if a == 2 then
						GoTo( role,  1549, 588, "darkblue")
						return
					end
					if a == 3 then
						GoTo( role,  1455, 300, "darkblue")
						return
					end 
					if a == 5 then
						GoTo( role,  1184, 416, "darkblue")
						return
					end 
					if a == 6 then
						GoTo( role,  1219, 558, "darkblue")
						return
					end 
					if a == 7 then
						GoTo( role,  908, 902, "darkblue")
						return
					end 
					if a == 8 then
						GoTo( role,  958, 634, "darkblue")
						return
					end 
					if a == 9 then
						GoTo( role,  795, 348, "darkblue")
						return
					end 
					if a == 10 then
						GoTo( role,  630, 311, "darkblue")
						return
					end 
					if a == 11 then
						GoTo( role,  1000, 380, "darkblue")
						return
					end 
					if a == 12 then
						GoTo( role,  1090, 627, "darkblue")
						return
					end 
					if a == 13 then
						GoTo( role,  1039, 815, "darkblue")
						return
					end 
					if a == 14 then
						GoTo( role,  2022, 539, "darkblue")
						return
					end 
					if a == 15 then
						GoTo( role,  2251, 484, "darkblue")
						return
					end 
					if a == 16 then
						GoTo( role,  2283, 629, "darkblue")
						return
					end 
					if a == 17 then
						GoTo( role,  2596, 416, "darkblue")
						return
					end 
					if a == 18 then
						GoTo( role,  2661, 581, "darkblue")
						return
					end 
					if a == 19 then
						GoTo( role,  2606, 858, "darkblue")
						return
					end 
					if a == 20 then
						GoTo( role,  2800, 664, "darkblue")
						return
					end 
					if a == 21 then
						GoTo( role,  2980, 522, "darkblue")
						return
					end 
					if a == 22 then
						GoTo( role,  3084, 555, "darkblue")
						return
					end 
					if a == 23 then
						GoTo( role,  3132, 661, "darkblue")
						return
					end 
					if a == 24 then
						GoTo( role,  2868, 700, "darkblue")
						return
					end 
					if a == 25 then
						GoTo( role,  2745, 490, "darkblue")
						return
					end 
					if a == 26 then
						GoTo( role,  1606, 1973, "darkblue")
						return
					end 
					if a == 27 then
						GoTo( role,  3375, 2527, "darkblue")
						return
					end 
					if a == 28 then
						GoTo( role,  3597, 3015, "darkblue")
						return
					end 
					if a == 29 then
						GoTo( role,  3398, 3502, "darkblue")
						return
					end 
					if a == 30 then
						GoTo( role,  2640, 3118, "darkblue")
						return
					end 
				
				end
			--Шайтан
			if map_name_role == "magicsea" then 
					local a = math.random ( 1, 18 )
					if a == 1 then
						GoTo( role,  x, y, "magicsea")
						return
					end
					
					if a == 2 then
						GoTo( role,  1259, 3355, "magicsea")
						return
					end 
					if a == 3 then
						GoTo( role,  1155, 3122, "magicsea")
						return
					end 
					if a == 4 then
						GoTo( role,  1428, 2971, "magicsea")
						return
					end 
					if a == 5 then
						GoTo( role,  1033, 3203, "magicsea")
						return
					end 
					if a == 6 then
						GoTo( role,  1195, 3533, "magicsea")
						return
					end 
					if a == 7 then
						GoTo( role,  697, 3304, "magicsea")
						return
					end 
					if a == 8 then
						GoTo( role,  953, 3385, "magicsea")
						return
					end 
					if a == 9 then
						GoTo( role,  1007, 3493, "magicsea")
						return
					end 
					if a == 10 then
						GoTo( role,  808, 3004, "magicsea")
						return
					end 
					if a == 11 then
						GoTo( role,  583, 2947, "magicsea")
						return
					end 
					if a == 12 then
						GoTo( role,  778, 3153, "magicsea")
						return
					end 
					if a == 13 then
						GoTo( role,  957, 3554, "magicsea")
						return
					end 
					if a == 14 then
						GoTo( role,  855, 3385, "magicsea")
						return
					end 
					if a == 15 then
						GoTo( role,  2516, 2474, "magicsea")
						return
					end 
					if a == 16 then
						GoTo( role,  2601, 2407, "magicsea")
						return
					end 
					if a == 17 then
						GoTo( role,  1687, 3762, "magicsea")
						return
					end 
					if a == 18 then
						GoTo( role,  2368, 611, "magicsea")
						return
					end 
				
				end
			--ХС
			if map_name_role == "garner2" then 
					local a = math.random ( 1, 18 )
					if a == 1 then
						GoTo( role,  x, y, "garner2")
						return
					end
					
					if a == 2 then
						GoTo( role,  247, 178, "garner2")
						return
					end 
					if a == 3 then
						GoTo( role,  203, 175, "garner2")
						return
					end 
					if a == 4 then
						GoTo( role,  191, 108, "garner2")
						return
					end 
					if a == 5 then
						GoTo( role,  187, 63, "garner2")
						return
					end 
					if a == 6 then
						GoTo( role,  135, 241, "garner2")
						return
					end 
					if a == 7 then
						GoTo( role,  134, 196, "garner2")
						return
					end 
					if a == 8 then
						GoTo( role,  122, 129, "garner2")
						return
					end 
					if a == 9 then
						GoTo( role,  150, 79, "garner2")
						return
					end 
					if a == 10 then
						GoTo( role,  148, 35, "garner2")
						return
					end 
					if a == 11 then
						GoTo( role,  63, 56, "garner2")
						return
					end 
					if a == 12 then
						GoTo( role,  203, 34, "garner2")
						return
					end 
					if a == 13 then
						GoTo( role,  97, 137, "garner2")
						return
					end 
				
				end
			--ДВ
			if map_name_role == "puzzleworld"  then 
					local a = math.random ( 1, 18 )	
					if a == 1 then
						GoTo( role,  x, y, "puzzleworld")
						return
					end
					
					if a == 2 then
						GoTo( role,  492, 507, "puzzleworld")
						return
					end 
					if a == 3 then
						GoTo( role,  46, 504, "puzzleworld")
						return
					end 
					if a == 4 then
						GoTo( role,  47, 47, "puzzleworld")
						return
					end 
					if a == 5 then
						GoTo( role,  492, 44, "puzzleworld")
						return
					end 
					if a == 6 then
						GoTo( role,  207, 71, "puzzleworld")
						return
					end 
					if a == 7 then
						GoTo( role,  442, 275, "puzzleworld")
						return
					end 
					if a == 8 then
						GoTo( role,  91, 275, "puzzleworld")
						return
					end 
					if a == 9 then
						GoTo( role,  101, 107, "puzzleworld")
						return
					end 
					if a == 10 then
						GoTo( role,  431, 106, "puzzleworld")
						return
					end 
					if a == 11 then
						GoTo( role,  435, 448, "puzzleworld")
						return
					end 
					if a == 12 then
						GoTo( role,  263, 450, "puzzleworld")
						return
					end 
					if a == 13 then
						GoTo( role,  271, 104, "puzzleworld")
						return
					end 
					if a == 14 then
						GoTo( role,  111, 272, "puzzleworld")
						return
					end 
					if a == 15 then
						GoTo( role,  425, 197, "puzzleworld")
						return
					end 
					if a == 16 then
						GoTo( role,  110, 350, "puzzleworld")
						return
					end 
					if a == 17 then
						GoTo( role,  278, 526, "puzzleworld")
						return
					end 
					if a == 18 then
						GoTo( role,  294, 245, "puzzleworld")
						return
					end 
					if a == 19 then
						GoTo( role,  247, 314, "puzzleworld")
						return
					end 
					if a == 20 then
						GoTo( role,  394, 354, "puzzleworld")
						return
					end 
					if a == 21 then
						GoTo( role,  395, 388, "puzzleworld")
						return
					end 
					if a == 22 then
						GoTo( role,  512, 288, "puzzleworld")
						return
					end 
				
				end
			--ДВ2
			if map_name_role == "puzzleworld2"  then 
					local a = math.random ( 1, 18 )	
					if a == 1 then
						GoTo( role,  x, y, "puzzleworld2")
						return
					end
					
					if a == 2 then
						GoTo( role,  492, 507, "puzzleworld2")
						return
					end 
					if a == 3 then
						GoTo( role,  46, 504, "puzzleworld2")
						return
					end 
					if a == 4 then
						GoTo( role,  47, 47, "puzzleworld2")
						return
					end 
					if a == 5 then
						GoTo( role,  492, 44, "puzzleworld2")
						return
					end 
					if a == 6 then
						GoTo( role,  207, 71, "puzzleworld2")
						return
					end 
					if a == 7 then
						GoTo( role,  442, 275, "puzzleworld2")
						return
					end 
					if a == 8 then
						GoTo( role,  91, 275, "puzzleworld2")
						return
					end 
					if a == 9 then
						GoTo( role,  101, 107, "puzzleworld2")
						return
					end 
					if a == 10 then
						GoTo( role,  431, 106, "puzzleworld2")
						return
					end 
					if a == 11 then
						GoTo( role,  435, 448, "puzzleworld2")
						return
					end 
					if a == 12 then
						GoTo( role,  263, 450, "puzzleworld2")
						return
					end 
					if a == 13 then
						GoTo( role,  271, 104, "puzzleworld2")
						return
					end 
					if a == 14 then
						GoTo( role,  111, 272, "puzzleworld2")
						return
					end 
					if a == 15 then
						GoTo( role,  425, 197, "puzzleworld2")
						return
					end 
					if a == 16 then
						GoTo( role,  110, 350, "puzzleworld2")
						return
					end 
					if a == 17 then
						GoTo( role,  278, 526, "puzzleworld2")
						return
					end 
					if a == 18 then
						GoTo( role,  294, 245, "puzzleworld2")
						return
					end 
					if a == 19 then
						GoTo( role,  247, 314, "puzzleworld2")
						return
					end 
					if a == 20 then
						GoTo( role,  394, 354, "puzzleworld2")
						return
					end 
					if a == 21 then
						GoTo( role,  395, 388, "puzzleworld2")
						return
					end 
					if a == 22 then
						GoTo( role,  512, 288, "puzzleworld2")
						return
					end 
				
				end
			--СНВ
			if map_name_role == "07xmas2" then 
					local a = math.random ( 1, 6 )
					if a == 1 then
						GoTo( role,  x, y, "07xmas2")
						return
					end
					
					if a == 2 then
						GoTo( role,  46, 62, "07xmas2")
						return
					end 
					if a == 3 then
						GoTo( role,  223, 81, "07xmas2")
						return
					end 
					if a == 4 then
						GoTo( role,  247, 233, "07xmas2")
						return
					end 
					if a == 5 then
						GoTo( role,  144, 160, "07xmas2")
						return
					end 
					if a == 6 then
						GoTo( role,  36, 212, "07xmas2")
						return
					end 
					
				
				end
			--ФС
			if map_name_role == "abandonedcity" then 
					local a = math.random ( 1, 5 )
					if a == 1 then
						GoTo( role,  163, 202, "abandonedcity")
						return
					end
					
					if a==2 then
						GoTo( role,  214, 298, "abandonedcity")
						return
					end 
					
					if a==3 then
						GoTo( role,  78, 252, "abandonedcity")
						return
					end 
					if a==4 then
						GoTo( role,  131, 126, "abandonedcity")
						return
					end 
					if a==5 then
						GoTo( role,  280, 148, "abandonedcity")
						return
					end 
				end
			--ФС2
			if map_name_role == "abandonedcity2" then 
					local a = math.random ( 1, 37 )
				if a == 1 then
						GoTo( role,  282, 270, "abandonedcity2")
						return
					end
					
					if a==2 then
						GoTo( role,  363, 400, "abandonedcity2")
						return
					end 
					
					if a==3 then
						GoTo( role,  255, 145, "abandonedcity2")
						return
					end 
					
					if a==4 then
						GoTo( role,  73, 281, "abandonedcity2")
						return
					end 
					
					if a==5 then
						GoTo( role,  21, 440, "abandonedcity2")
						return
					end 
					
					if a==6 then
						GoTo( role,  379, 63, "abandonedcity2")
						return
					end 
				
				end
			--ФС3
			if map_name_role == "abandonedcity3" then 
					local a = math.random ( 1, 6 )
					if a == 1 then
						GoTo( role,  282, 270, "abandonedcity3")
						return
					end
					
					if a==2 then
						GoTo( role,  363, 400, "abandonedcity3")
						return
					end 
					
					if a==3 then
						GoTo( role,  255, 145, "abandonedcity3")
						return
					end 
					
					if a==4 then
						GoTo( role,  73, 281, "abandonedcity3")
						return
					end 
					
					if a==5 then
						GoTo( role,  21, 440, "abandonedcity3")
						return
					end 
					
					if a==6 then
						GoTo( role,  379, 63, "abandonedcity3")
						return
					end 

				end
			--ДС
			if map_name_role == "darkswamp" then 
					local a = math.random ( 1, 6 )
					if a == 1 then
						GoTo( role,  2816, 3255, "darkswamp")
						return
					end
					if a == 2 then
						GoTo( role,  2816, 3255, "darkswamp")
						return
					end 
					if a == 3 then
						GoTo( role,  2816, 3255, "darkswamp")
						return
					end
					if a == 4 then
						GoTo( role,  2816, 3255, "darkswamp")
						return
					end 
					if a == 5 then
						GoTo( role,  2816, 3255, "darkswamp")
						return
					end
					if a == 6 then
						GoTo( role,  2816, 3255, "darkswamp")
						return
					end 
					if a == 7 then
						GoTo( role,  2816, 3255, "darkswamp")
						return
					end
					if a == 8 then
						GoTo( role,  2816, 3255, "darkswamp")
						return
					end 
					if a == 9 then
						GoTo( role,  2816, 3255, "darkswamp")
						return
					end
					if a == 10 then
						GoTo( role,  2816, 3255, "darkswamp")
						return
					end 
					if a == 11 then
						GoTo( role,  2816, 3255, "darkswamp")
						return
					end
					if a == 12 then
						GoTo( role,  2816, 3255, "darkswamp")
						return
					end 
					if a == 13 then
						GoTo( role,  2816, 3255, "darkswamp")
						return
					end
					if a == 14 then
						GoTo( role,  2816, 3255, "darkswamp")
						return
					end 
					if a == 15 then
						GoTo( role,  2816, 3255, "darkswamp")
						return
					end
					if a == 16 then
						GoTo( role,  2816, 3255, "darkswamp")
						return
					end 
				end
			
			if map_name_role == "eastgoaf" or map_name_role == "jialebi" then
				UseItemFailed ( role )
				end
			end
		end
	else
		UseItemFailed ( role )
	end
end

----------------------------
-- Перевоплощение --
----------------------------
function ItemUse_Transform(role, Item)
local orig_id = GetOriginalChaTypeID(role)
-- Команда превращения персонажа в моба
-- Если id модели не равен оригинальному, тогда
if (GetChaTypeID(role) ~= orig_id) then
-- Выводим сис. сообщение о том, что Вы уже превратились в монстра и сбрасываем
SystemNotice(role, "Вы уже превратились в монстра, попробуйте позже ")
UseItemFailed ( role )
-- Иначе выполняем нашу команду
else
-- Трансформируем нашего персонажа в моба с id - 673
TransformCha(role, 673)
SystemNotice(role, "Вы превратились в монстра на 60 секунд! ")
-- Получаем ID персонажа
local pers = GetRoleID(role)
t_transmonst[pers] = 60 -- Наш таймер (10 - время в секундах)
end
end
---------------------------------------------------
--Машинки------------------------------
-----------------------------------------------------------
function ItemUse_DHF ( role , Item )
	--проверка на нахождения в море
	local Cha_Boat = GetCtrlBoat ( role )
	
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	--проверка бензина
	local i= CheckBagItem( role, 7709 )                                                
	if i <=0 then
		SystemNotice(  role , "У вас нет канистры с топливом!")
		UseItemFailed ( role )
		return LUA_FALSE
	end
local orig_id = GetOriginalChaTypeID(role)					
-- Если id модели не равен оригинальному, тогда
if (GetChaTypeID(role) ~= orig_id) then
UseItemFailed ( role ) 
-- Трансформируем персонажа в оригинальную модель
TransformCha(role, orig_id)
-- Иначе выполняем нашу команду
else
-- Трансформируем нашего персонажа в машинку с ид 1072
TransformCha(role, 1417) -- камаро
TakeItem ( role , 0 , 7709 , 1 )
UseItemFailed ( role ) 
-- Получаем ID персонажа
local pers = GetRoleID(role)
t_transmonst[pers] = 30 -- Наш таймер (30 - время в секундах)
end
end

function ItemUse_QTZ ( role , Item )
	--проверка на нахождения в море
	local Cha_Boat = GetCtrlBoat ( role )
	
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	--проверка бензина
	local i= CheckBagItem( role, 7709 )                                                
	if i <=0 then
		SystemNotice(  role , "У вас нет канистры с топливом!")
		UseItemFailed ( role )
		return LUA_FALSE
	end
local orig_id = GetOriginalChaTypeID(role)				
-- Если id модели не равен оригинальному, тогда
if (GetChaTypeID(role) ~= orig_id) then

UseItemFailed ( role ) 
-- Трансформируем персонажа в оригинальную модель
TransformCha(role, orig_id)
-- Иначе выполняем нашу команду
else
-- Трансформируем нашего персонажа в машинку с ид 1071 -- Петербилт
TransformCha(role, 1071)
TakeItem ( role , 0 , 7709 , 1 )
UseItemFailed ( role ) 
-- Получаем ID персонажа
local pers = GetRoleID(role)
t_transmonst[pers] = 30 -- Наш таймер (30 - время в секундах)
end
end

function ItemUse_DHFOLD ( role , Item )
	--проверка на нахождения в море
	local Cha_Boat = GetCtrlBoat ( role )
	
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!" )
		UseItemFailed ( role )
		return
	end
	--проверка бензина
	local i= CheckBagItem( role, 7709 )                                                
	if i <=0 then
		SystemNotice(  role , "У вас нет канистры с топливом!")
		UseItemFailed ( role )
		return LUA_FALSE
	end
local orig_id = GetOriginalChaTypeID(role)				
-- Если id модели не равен оригинальному, тогда
if (GetChaTypeID(role) ~= orig_id) then
UseItemFailed ( role ) 
-- Трансформируем персонажа в оригинальную модель
TransformCha(role, orig_id)
-- Иначе выполняем нашу команду
else
-- Трансформируем нашего персонажа в машинку с ид 1073  --старый камаро
TransformCha(role, 1073)
TakeItem ( role , 0 , 7709 , 1 )
UseItemFailed ( role ) 
-- Получаем ID персонажа
local pers = GetRoleID(role)
t_transmonst[pers] = 30 -- Наш таймер (30 - время в секундах)
end
end



-- Сброс флага
function ItemUse_flag ( role , Item )
 
	if GetChaStateLv(role, 229) > 0 and GetChaSideID(role) == 1 then
		local pos_x2, pos_y2 = GetChaPos(role)
		FLAG_DROP_GREEN = CreateCha(1209, pos_x2, pos_y2, 145, 30)
		SetChaLifeTime(FLAG_DROP_GREEN, 90000000)
		
		AddState( FLAG_DROP_GREEN, FLAG_DROP_GREEN, 229, 1, 360000 )
		AddState( FLAG_DROP_GREEN, FLAG_DROP_GREEN, 237, 1, 360000 )
		AddState( FLAG_DROP_GREEN, FLAG_DROP_GREEN, 155, 1, 360000 )
		AddState( role, role, 54, 1, 3 )
		FLAG_GREEN_GIVE = nil
		RemoveState(role, 229)
		RemoveState(role, 155)
		FLAG_GREEN_X = pos_x2
		FLAG_GREEN_Y = pos_y2
		UseItemFailed ( role )
	elseif GetChaStateLv(role, 229) > 0 and GetChaSideID(role) == 2 then
		local pos_x2, pos_y2 = GetChaPos(role)
		FLAG_DROP_RED = CreateCha(1209, pos_x2, pos_y2, 145, 30)
		SetChaLifeTime(FLAG_DROP_RED, 90000000)
		
		AddState( FLAG_DROP_RED, FLAG_DROP_RED, 229, 1, 360000 )
		AddState( FLAG_DROP_RED, FLAG_DROP_RED, 237, 1, 360000 )
		AddState( FLAG_DROP_RED, FLAG_DROP_RED, 155, 1, 360000 )
		AddState( role, role, 54, 1, 3 )
		FLAG_RED_GIVE = nil
		RemoveState(role, 229)
		RemoveState(role, 155)
		FLAG_RED_X = pos_x2
		FLAG_RED_Y = pos_y2	
		UseItemFailed ( role )
	else
		SystemNotice(role, "У вас нет флага!")
		UseItemFailed ( role )
	end
end

--амулет теней
function ItemUse_amulet ( role , Item )
    local name = GetChaDefaultName(role)
    if Amulet[name] == nil then
        Amulet[name] = { UsedTime = os.time() }
    end
 
    local cooldown = Amulet[name].UsedTime - os.time()
        if cooldown > 0 then
        SystemNotice(role,"Амулет теней восстановится через "..cooldown.." сек., подождите!")
            UseItemFailed(role)
            return
        end
      local statelv = 1
    local statetime =4
    local Cha_Boat = 0
    Cha_Boat = GetCtrlBoat ( role )
    if Cha_Boat ~= nil then
        SystemNotice( role , "Нельзя активировать находясь в море! " )
        UseItemFailed ( role )
        return
    end
    Amulet[name].UsedTime = os.time()+26
    AddState ( role, role , STATE_YS , statelv , statetime )
    SystemNotice(role ,"Вы вошли в невидимость на 3 секунды!")
	UseItemFailed ( role ) 
	return
 
end
function ItemUse_shadow ( role , Item )
    local name = GetChaDefaultName(role)
    if Shadow[name] == nil then
        Shadow[name] = { UsedTime = os.time() }
    end
 
    local cooldown = Shadow[name].UsedTime - os.time()
        if cooldown > 0 then
        SystemNotice(role,"Теневой меч восстановится через "..cooldown.." сек., подождите!")
            UseItemFailed(role)
            return
        end
	local statelv = 1
    local statetime =15
    local Cha_Boat = 0
    Cha_Boat = GetCtrlBoat ( role )
    if Cha_Boat ~= nil then
        SystemNotice( role , "Нельзя активировать находясь в море! " )
        UseItemFailed ( role )
        return
    end
    Shadow[name].UsedTime = os.time()+35
	 AddState ( role, role , STATE_YS , statelv , statetime )
    SystemNotice(role ,"Вы получили бонус атаки и невидимость на 15 сек.!")
	UseItemFailed ( role ) 
	return
	end
function ItemUse_svit ( role , Item )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~= nil then 
		SystemNotice( role , "Нельзя использовать в море" ) 
		UseItemFailed ( role ) 
		return 
	end 
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role ,"Чтобы узнать -  вам нужен 1 свободный слот в инвентаре")
		UseItemFailed ( role )
		return
	end
	local sc = math.random(1,6)
	local itemname = ""
	if  sc ==1 then
		GiveItem ( role , 0 , 8723 , 1 , 4 )
	elseif sc ==2 then
		GiveItem ( role , 0 , 8724 , 1 , 4 )
	elseif sc ==3 then
		GiveItem ( role , 0 , 8725 , 1 , 4 )
	elseif sc ==4 then
		GiveItem ( role , 0 , 8726 , 1 , 4 )
	elseif sc ==5 then
		GiveItem ( role , 0 , 8727 , 1 , 4 )
	elseif sc ==6 then
		GiveItem ( role , 0 , 8728 , 1 , 4 )
	
	end


end


function ItemUse_Mor (role , Item)
	local Cha_Boat = GetCtrlBoat ( role )
	local sk_add = 0 
	local Item_ID = GetItemID ( Item )
	local need_item = 0
	local need_item2 = 0
	local count = 1
		
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Не может быть использовано, когда Вы в море!"  )
		UseItemFailed ( role )
		return
	end
	
	if Item_ID ==8865 then
		sk_add=SK_HPSL
	elseif Item_ID ==8866  then
		sk_add=SK_JBJG
	elseif Item_ID ==8867  then
		sk_add=SK_CFS
	elseif Item_ID ==8868  then
		sk_add=SK_CTQH
	elseif Item_ID ==8869  then
		sk_add=SK_BJCR
	end
	
	local form_sklv = GetSkillLv( role , sk_add ) 
	
	if form_sklv == 0 then
		a = AddChaSkill ( role , sk_add, 1 , 0 , 0 ) 
		if a == 0 then 
			UseItemFailed ( role )  
			return 
		end 
	end
	
	if form_sklv == 1 then
		need_item = 3989
		need_item2 = 1667
	elseif form_sklv == 2 then
		need_item = 3991
		need_item2 = 1668
	elseif form_sklv == 3 then
		need_item = 3992
		need_item2 = 1670
	elseif form_sklv == 4 then
		need_item = 3993
		need_item2 = 1674
	elseif form_sklv == 5 then
		need_item = 3994
		need_item2 = 1782
	elseif form_sklv == 6 then
		need_item = 3995
		need_item2 = 4544
	elseif form_sklv == 7 then
		need_item = 3996
		need_item2 = 4037
	elseif form_sklv == 8 then
		need_item = 3997
		need_item2 = 4034
	elseif form_sklv == 9 then
		need_item = 3998
		need_item2 = 4546
	end
	
	local itemname1 = GetItemName(need_item)
	local itemname2 = GetItemName(need_item2) 
	
	if form_sklv >= 1 and  form_sklv < 10  then 
		count = (form_sklv + 1) * 10
		local check = DelBagItem(role,need_item,count)
		local check2 = DelBagItem(role,need_item2,count)
		
		if check == 1 and check2 == 1  then
			a = AddChaSkill ( role , sk_add, form_sklv + 1 , 0 , 0 ) 
		else
			SystemNotice(role, "Вам  нужно "..count.." шт.  " ..itemname1.. " и " ..count.." шт."..itemname2 )
			UseItemFailed ( role ) 
		end
		
		if a == 0 then 
			UseItemFailed ( role )  
			return 
		end 
	end 
	
	
	


end