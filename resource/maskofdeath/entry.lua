function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    local EntryName = "\193\229\240\236\243\228\241\234\232\233 \242\240\229\243\227\238\235\252\237\232\234"
    SetMapEntryEventName( entry, EntryName )

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    Notice("\194 \242\229\236\237\238\236 \227\238\240\238\228\229 \237\224 ["..posx..","..posy.."] \238\242\234\240\251\235\241\255 \239\238\240\242\224\235 \226 [\193\229\240\236\243\228\241\234\232\233 \242\240\229\243\227\238\235\252\237\232\234].")

end

function after_destroy_entry_maskofdeath(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("\194\251 \226\238\248\235\232 \237\224 ["..posx..","..posy.."] \226 \225\229\240\236\243\228\241\234\232\233 \242\240\229\243\227\238\235\252\237\232\234.") 

end

function after_player_login_maskofdeath(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ChaNotice(player_name, "\194 \242\229\236\237\238\236 \227\238\240\238\228\229 \237\224 ["..posx..","..posy.."] \231\224\234\240\251\235\241\255 \239\238\240\242\224\235 \226 \225\229\240\236\243\228\241\234\232\233 \242\240\229\243\227\238\235\252\237\232\234.")

end

function begin_enter_maskofdeath(role, copy_mgr) 
	SystemNotice(role,"Entering [Garden of Angels]") 
	MoveCity(role, "maskofdeath")
end