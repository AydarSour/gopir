function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,4)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    Notice("Объявление: В Магическом океане ["..posx..","..posy.."] обнаружен портал, ведущий в [Темную Топь]!")
end

function after_destroy_entry_darkswamp(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Объявление: Портал в [Темную Топь] закрылся! Удачи!") 
end

function after_player_login_darkswamp(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ChaNotice(player_name, "Объявление: В Магическом океане ["..posx..","..posy.."] обнаружен портал, ведущий в [Темную Топь]!")
end

function check_can_enter_darkswamp( role, copy_mgr )
    local Cha = TurnToCha(role)
	if Lv(Cha) >=40 and Lv(Cha) <=55 then
		return 1
	else
		SystemNotice(role, "Только игроки 40-55 уровня могут попасть в Темную Топь.")
		return 0
	end
end


function begin_enter_darkswamp(role, copy_mgr) 
	SystemNotice(role,"Вы вошли в [Темную Топь]") 
	MoveCity(role, "Dark Swamp")
end 