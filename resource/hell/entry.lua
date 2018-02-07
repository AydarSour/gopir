function config_entry(entry) 
	SetMapEntryEntiID(entry, 2492,1)
end 

function after_create_entry(entry) 
	local copy_mgr = GetMapEntryCopyObj(entry, 0)
	local EntryName = "Врата в Ад"
	SetMapEntryEventName( entry, EntryName )
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	Notice("Объявление: Из глубин Абаддона слышны крики умерших. Странники, которые находились на Острове Сокровищ ["..posx..","..posy.."] были очень напуганы этим. Неужели найдется храбрец, который отправится туда?")
end

function after_destroy_entry_hell(entry)
	map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	--Notice("Announcement: Challenge for today has ended.") 
end

function after_player_login_hell(entry, player_name)
end

function check_can_enter_hell( role, copy_mgr )
end

function begin_enter_hell(role, copy_mgr) 
	SystemNotice(role,"На секунду земля уходит из-под твоих ног. И открыв глаза, ты оказываешься в темном Абаддоне.")
	MoveCity(role, "Abaddon 1")
end 