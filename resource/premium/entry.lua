function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1)
end 

function after_create_entry(entry) 

end

function after_destroy_entry_premium(entry)
    
end

function after_player_login_premium(entry, player_name)
   
end

function check_can_enter_premium( role, copy_mgr )
	if Lv(role) >=25 then
		return 1
	else
		SystemNotice(role, "�� ������ ���� �� ���� 25 ������, ����� ����� � [����������]")
		return 0    
	end
	
end

function begin_enter_premium(role, copy_mgr) 
	SystemNotice(role,"�� ����� � ������� ����������") 
	MoveCity(role, "Premium")
end