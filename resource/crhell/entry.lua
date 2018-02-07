--------------------------------------------------------------------------------------
-- Снежная война v2.0
-- (c) V3ct0r
-- 08.01.2017
-- entry.lua
--------------------------------------------------------------------------------------
print "Loading crhell entry.lua"

-- Настройка портала
function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492, 1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 
	local EntryName = "Обитель падших "
	SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Обьявление: В Аргенте  открылся портал ["..posx..","..posy.."] ведущий в Обитель падших!")
end
-- Событие возникает после исчезновения портала
function after_destroy_entry_crhell(entry)
Notice("Объявление: Портал в Обитель падших исчез!") 
end

-- Событие возникает после подключения игрока к серверу
function after_player_login_crhell(entry, player_name)
    	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "Объявление: По координатам ["..posx..","..posy.."] в Аргенте открыт вход в Обитель падших!")
end

-- Событие возникает после входа в портал
function begin_enter_crhell(role, copy_mgr) 
	SystemNotice(role, "Вы проникли в Обитель падших!")
	MoveCity(role, "crhell")
end

-- Функция проверяет, может ли игрок войти в портал
function check_can_enter_crhell(role, copy_mgr)
	-- Уровень 40+
	if (Lv(role) < 40) then
		SystemNotice(role, "Вы должны быть хотя бы 40 уровня, чтобы испытать удачу в Обители падших!")
		return 0
	end

	return 1
end