function config_entry(entry) 
  --  SetMapEntryEntiID(entry, 193,1)
end 

function after_create_entry(entry) 
	--local copy_mgr = GetMapEntryCopyObj(entry, 0)
	--map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	--Notice("�����㲥������ҷ��֣���ħŮ��½������ڽ��þ��л�������䣬����Ϣ��δ��ʵ�����йص�λע�⡣")
end

function after_destroy_entry_yslchurch(entry)
	--map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	--Notice("�����㲥��������ṩ����Ϣ�����л�������Ľ����Ѿ������ˡ����Ҽ�����ע��̨�Ĺ㲥��ף����졫��") 
end

function after_player_login_yslchurch(entry, player_name)
	--map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	--ChaNotice(player_name, "�����㲥������ҷ��֣���ħŮ��½������ڽ��þ��л�������䣬����Ϣ��δ��ʵ�����йص�λע�⡣")
end