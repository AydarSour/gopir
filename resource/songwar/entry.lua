function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
end

function after_destroy_entry_songwar(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
end

function after_player_login_songwar(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
end

function check_can_enter_songwar( role, copy_mgr )
end

function begin_enter_songwar(role, copy_mgr) 
end