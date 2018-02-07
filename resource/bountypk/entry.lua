-- ����� ������� ������ ������������� ��������� �����, ����� ��� after_destroy_entry_bountypk
-- ���������� ����� �������� � ������ ���������� 255

function config_entry(entry) 
    SetMapEntryEntiID(entry,2492,1)
end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) 
    local EntryName = "������ 35-55 "
    SetMapEntryEventName( entry, EntryName )

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
   -- Notice("\194\237\232\236\224\237\232\229: \194 \194\229\235\232\234\238\236 \209\232\237\229\236 \206\234\229\224\237\229 \239\238 \234\238\238\240\228\232\237\224\242\224\236 ["..posx..","..posy.."] \238\242\234\240\251\235\241\255 \239\238\240\242\224\235 \226 [\193\224\243\237\242\232].")  
	Notice("��������: �� �������� �� ����������� ["..posx..","..posy.."] �������� ������ � [������].")  

end

function after_destroy_entry_bountypk(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --Notice("\194\237\232\236\224\237\232\229: \207\238\240\242\224\235 \226  [\193\224\243\237\242\232] \231\224\234\240\251\235\241\255. \205\224\241\235\224\230\228\224\233\242\229\241\252!") 
	Notice("��������: ������ �  [������] ��������. �������������!") 

end

function after_player_login_bountypk(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    --ChaNotice(player_name, "\194\237\232\236\224\237\232\229: \194 \194\229\235\232\234\238\236 \209\232\237\229\236 \206\234\229\224\237\229 \239\238 \234\238\238\240\228\232\237\224\242\224\236 ["..posx..","..posy.."] \238\242\234\240\251\235\241\255 \239\238\240\242\224\235 \226 [\193\224\243\237\242\232].")
	ChaNotice(player_name, "��������: �� �������� �� ����������� ["..posx..","..posy.."] �������� ������ � [������].")

end


function check_can_enter_bountypk(role, copy_mgr)
local Cha = TurnToCha(role)

	local gmlvl = GetGmLv(role)
	if gmlvl >= 98 then
		SystemNotice(role, "���� � ������ ������������� ��������")
		return 0
	end
	
	local FightingBook_Num = CheckBagItem( role,3849 )
	if FightingBook_Num <= 0 then
		SystemNotice ( role , "� ��� ������ ���� ������ ������ ��� ����� � ������ " )
		return 0
	end

	if Lv(Cha) >=30 and Lv(Cha) <=55 then
		return 1
	else
		SystemNotice(role, " � ������ ����� ������� ������ ��������� � 30 �� 55 ������� ")
		return 0
	end
end


function begin_enter_bountypk(role, copy_mgr) 

		SystemNotice(role,"\194\251 \226\238\248\235\232 \226 [\193\224\243\237\242\232]") 
		--SystemNotice(role,"�� ����� � [������]") 
		
		MoveCity(role, "\193\224\243\237\242\232")

end








