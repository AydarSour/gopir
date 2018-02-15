function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --???????????(??????characterinfo.txt???)

end 

--function after_create_entry(entry) 
--    local copy_mgr = GetMapEntryCopyObj(entry, 0) --????????,?????????????????,?????????(?????)???????
--
--    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --??????????(???,??,?????)
--    Notice("В аргенте на ["..posx..","..posy.."] открылся портал в Зимний город. ") --????????????
--
 --   local EntryName = " «имний город "
 --   SetMapEntryEventName( entry, EntryName )
--end

--function after_destroy_entry_garner(entry)
--    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
--    Notice("В аргенте на ["..posx..","..posy.."] закрылся портал в Зимний город") 
--
--end
--
--function after_player_login_garner(entry, player_name)
--    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --??????????(???,??,?????)
--    ChaNotice(player_name, "Вы вошли на ["..posx..","..posy.."] в Зимний город. ") --????????????

--end

--????????
--???:0,????????1,?????
--function check_can_enter_garner(role, copy_mgr)

--	local Cha = TurnToCha(role)
  
--	if Lv(Cha) >=269 and Lv(Cha) <=1001 then
--			return 1	
--	else
--		SystemNotice(role, "„тобы войти в портал вы должны быть не меньше 270 уровн€ и не больше 1000. ")
--		return 0    
--	end
--end



--function begin_enter_garner(role, copy_mgr) 
--	local Cha = TurnToCha(role)	
--	local Dbag = 0
--	Dbag = DelBagItem(Cha, 6207, 1)
--	local Dbag1 = 0
--	Dbag1 = DelBagItem(Cha, 182, 1)
--	local Dbag2 = 0
--	Dbag2 = DelBagItem(Cha, 1119, 1)
--	if Dbag == 1 and Dbag1 == 1 and Dbag2 == 1 then
--		SystemNotice(role," «имний город ") 
--		MoveCity(role, "Winter Garner")
--	else
--	SystemNotice(role, "¬ам не хватает вещей, чтобы попасть в «имний город. ")
--	end
--end