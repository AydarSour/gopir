function config_entry(entry) 
    SetMapEntryEntiID(entry, 2492,1)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    local EntryName = "Вечный Абаддон"
    SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    Notice("Объявление: В глубинах Абаддона 8 ["..posx..","..posy.."] открылся портал, ведущий в Вечный Абаддон. Только самые отважные воины могут выйти на схватку с самой смертью.")
end

function after_destroy_entry_hell5(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("Announcement: Challenge for today has ended.") 
end

function after_player_login_hell5(entry, player_name)
end


function check_can_enter_hell5( role, copy_mgr )

--	if CRY[18]==0 then

--		SystemNotice(role,"Силы тьмы опечатали проход. Он никогда не откроется, как бы ты ни старался.")
--		return 0

--	end

--	return 1
	local i=0

	for i=5,8,1 do

		if CRY[i] == 0 then

			SystemNotice(role,"Силы тьмы запечатали проход. Пройти через него невозможно.")

			return 0
		end
	end

	return 1

end

function begin_enter_hell5(role, copy_mgr) 
	SystemNotice(role,"Cердце начинает биться чаще, перед глазами быстро мелькают своды стен. И открыв глаза, ты обнаруживаешь перед собой привычный мир.")
	MoveCity(role, "Abaddon 5")
end 