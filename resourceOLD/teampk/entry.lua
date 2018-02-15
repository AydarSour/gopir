SetTeamFightMapName("teampk") 

function config_entry(entry) 
end 

function after_create_entry(entry) 
    Notice("Объявление: Открыта карта для командных сражений.")
end

function after_destroy_entry_teampk(entry)
    Notice("Объявление: Карта для командных сражений закрыта.") 
end

function after_player_login_teampk(entry, player_name)
    ChaNotice(player_name, "Объявление: Открыта карта для командных сражений.") 
end

function after_get_map_copy_teampk(copy_mgr, player1, player2, type) 
    SetMapCopyParam(copy_mgr, 1, type)
    SetMapCopyParam(copy_mgr, 2, 2)
    if type == 1 then 
        SetMapCopyParam(copy_mgr, 3, GetPlayerTeamID(player1)) 
        SetMapCopyParam(copy_mgr, 4, GetPlayerTeamID(player2)) 
    elseif type == 2 then 
        SetMapCopyParam(copy_mgr, 3, GetPlayerID(player1)) 
        SetMapCopyParam(copy_mgr, 4, GetPlayerID(player2)) 
    end
    SetMapCopyParam(copy_mgr, 5, -1)
    SetMapCopyParam(copy_mgr, 7, 3)
    SetMapCopyParam(copy_mgr, 8, 0)
    SetMapCopyParam(copy_mgr, 9, 0)
    SetMapCopyParam(copy_mgr, 10,0)
    SetMapCopyParam(copy_mgr, 11,0)
    SetMapCopyParam(copy_mgr, 12,0)

end 


function check_can_enter_teampk( role, copy_mgr )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		SystemNotice ( role , "У вас нет Медали Отваги. Обратитесь к Администратору арены" )
		return 0
	elseif RYZ_Num > 1 then
		LG("RYZ_PK","Have more than 1 Mark of Honor")
		return 0
	else
		local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
		local attrtype = ITEMATTR_VAL_STR
		local attr_num = GetItemAttr ( role_RYZ , attrtype )
		local Rongy_xianzhi = RYZ_Rongyu_Min
		local Rongy_xianzhi0 = RYZ_Rongyu_Max

		
		if attr_num < Rongy_xianzhi then
			SystemNotice ( role , "У вас слишком мало очков чести. Невозможно начать сражение" )
			return 0
		end

		if attr_num > Rongy_xianzhi0 then
			SystemNotice ( role , "У вас слишком много очков чести. Невозможно начать сражение" )
			return 0
		end
		
	end
	return 1


end

function begin_enter_teampk(role, copy_mgr) 
	local type = GetMapCopyParam(copy_mgr, 1) 
	local side1 = GetMapCopyParam(copy_mgr, 3) 
	local side2 = GetMapCopyParam(copy_mgr, 4) 
	local copy_id = GetMapCopyID(copy_mgr) 

	if type == 1 then
		local team_id1 = GetChaTeamID(role) 
		if team_id1 == side1 then 
		    MoveCity(role, "Party PK 1", copy_id) 
		else 
		    MoveCity(role, "Party PK2", copy_id)
		end 
	elseif type == 2 then
		local player = GetChaPlayer(role) 
		local ply_id1 = GetPlayerID(player) 
		if ply_id1 == side1 then 
		    MoveCity(role, "Party PK 1", copy_id) 
		else 
		    MoveCity(role, "Party PK2", copy_id)
		end 
	end
	
end 