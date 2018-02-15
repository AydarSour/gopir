function config_entry(entry) 
	SetMapEntryEntiID(entry, 2492,1)
end 

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0)
	local EntryName = "Врата в Ад"
	SetMapEntryEventName( entry, EntryName )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: В глубинах Абаддона 9 ["..posx..","..posy.."] открылся портал, ведущий в Гавань Абаддона.")
end

function after_destroy_entry_hell3(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	--Notice("Announcement: Challenge for today has ended.") 
end

function after_player_login_hell3(entry, player_name)
end

function check_can_enter_hell3( role, copy_mgr )
	if CRY[9]==0 then
		SystemNotice(role,"Силы тьмы запечатали проход. Ты никогда не сможешь пройти.")
		return 0
	end
	return 1
end

function begin_enter_hell3(role, copy_mgr) 
	SystemNotice(role,"На секунду земля уходит из-под твоих ног. И открыв глаза, ты оказываешься в темном Абаддоне.")
	MoveCity(role, "Abaddon 3")
end 