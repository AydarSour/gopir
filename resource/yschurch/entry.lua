function config_entry(entry) 
  --  SetMapEntryEntiID(entry, 193,1)
end 

function after_create_entry(entry) 
	--local copy_mgr = GetMapEntryCopyObj(entry, 0)
	--map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	--Notice("海盗广播：有玩家发现，在魔女大陆有玩家在教堂举行华丽的庆典，该消息尚未核实，请有关单位注意。")
end

function after_destroy_entry_yslchurch(entry)
	--map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
	--Notice("海盗广播：据玩家提供的消息，举行婚礼等庆典的教堂已经关门了。请大家继续关注我台的广播，祝您愉快～！") 
end

function after_player_login_yslchurch(entry, player_name)
	--map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry)
	--ChaNotice(player_name, "海盗广播：有玩家发现，在魔女大陆有玩家在教堂举行华丽的庆典，该消息尚未核实，请有关单位注意。")
end