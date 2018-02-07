function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1)

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0)
    local EntryName = "Portal to Zodiac Palaces"
    SetMapEntryEventName( entry, EntryName )

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Pirate Radio: On Argent City appears portal to [Zodiac Palaces] at ["..posx..","..posy.."], let's check what's happening there.") 

end

function after_destroy_entry_zodiac(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("Entrance to [Zodiac Palaces] was vanished") 

end

function after_player_login_zodiac(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
    ChaNotice(player_name, "Hey! On Argent City appears the portal to [Zodiac Palaces] at ["..posx..","..posy.."], let's check what's happening there.")

end

function begin_enter_zodiac(role,copy_mgr) 
	SystemNotice(role,"Entering [Zodiac Palace]") 
	MoveCity(role,"Zodiac Palace")
end