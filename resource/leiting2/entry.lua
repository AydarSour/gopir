function config_entry(entry) 
	SetMapEntryEntiID(entry, 193,1)
end 

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: В окресностях Аскарона ["..posx..","..posy.."] обнаружен портал, ведущий в [Мираж Громограда].")
end

function after_destroy_entry_leiting2(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	Notice("Объявление: Портал в [Мираж Громограда] закрылся. Удачи!") 
end

function after_player_login_leiting2(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "Объявление: В окресностях Аскарона ["..posx..","..posy.."] обнаружен портал, ведущий в [Мираж Громограда].")
end


function check_can_enter_leiting2( role, copy_mgr )
	local i = IsChaStall(role)
	if i == LUA_TRUE then
		SystemNotice(role, "Невозможно телепортироваться, когда вы торгуете в лотке")
		return 0    
	end
	if Lv(role) < 70 then
		SystemNotice(role, "Вы должны быть не ниже 70 уровня, чтобы войти в [Мираж Громограда]")
		return 0    
	end
	if Lv(role) > 100 then
		SystemNotice(role, "Вы должны быть не выше 100 уровня, чтобы войти в [Мираж Громограда]")
		return 0
	end

	local Credit_Leiting2 = GetCredit(role)
	if Credit_Leiting2 < 10 then
		SystemNotice(role, "Недостаточно очков репутации. Невозможно войти в [Мираж Громограда]")
		return 0
	else
		DelCredit(role,10)
		return 1
	end
end

function begin_enter_leiting2(role, copy_mgr)
	SystemNotice(role,"Вы вошли в [Мираж Громограда]") 
	MoveCity(role, "Thundoria Mirage")
end