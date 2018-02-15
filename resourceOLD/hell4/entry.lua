function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    local EntryName = "Врата в Ад"
    SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Объявление: Гавань Абаддона ["..posx..","..posy.."] открыла портал в Абаддон 18!")
end

function after_destroy_entry_hell4(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("Announcement: Challenge for today has ended.") 
end

function after_player_login_hell4(entry, player_name)
end


function check_can_enter_hell4( role, copy_mgr )

	local i=0

	for i=10,17,1 do

		if CRY[i] == 0 then
			SystemNotice(role,"Силы тьмы запечатали проход. Пройти через него невозможно.")
			return 0
		end
	end

	return 1

end

function begin_enter_hell4(role, copy_mgr) 
	SystemNotice(role,"На секунду земля уходит из-под твоих ног. И открыв глаза, ты оказываешься в темном Абаддоне.")
	MoveCity(role, "Abaddon 4")
end 