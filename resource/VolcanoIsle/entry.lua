
function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
		local EntryName = "Подвал "
		SetMapEntryEventName( entry, EntryName )
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    Notice("\227\238\240\238\228 \202\240\232\241\242\224\235\235\224, \238\242\234\240\251\235\241\255 \239\238\240\242\224\235 ["..posx..","..posy.."] \226\229\228\243\249\232\233 \226 \209\229\240\229\225\240\255\237\237\251\233 \245\224\238\241!")

end

function after_destroy_entry_basement(entry)


end

function after_player_login_basement(entry, player_name)

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --ChaNotice(player_name, "Добро пожаловать пират!")

end


function check_can_enter_basement( role, copy_mgr )

end

function check_HasMoney(role)

end


function begin_enter_basement(role, copy_mgr) 
        MoveCity(role, "basement")
end

