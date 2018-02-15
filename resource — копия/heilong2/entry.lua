function config_entry(entry) 
end 

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0)
	Notice("Внимание: В глубинах 'Логова Черного Дракона' открывается портал \"Логово Черного Дракона 2\"!")
end

function after_destroy_entry_heilong2(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
end

function after_player_login_heilong2(entry, player_name)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	ChaNotice(player_name, "Внимание: В глубинах 'Логова Черного Дракона' открывается портал \"Логово Черного Дракона 2\"!")
end