function config(map)
    MapCanSavePos(map, 1)
    MapCanPK(map, 0)
    MapCopyNum(map, 1)
    SingleMapCopyPlyNum(map, 300)
    MapCanTeam(map , 1)
    MapType ( map , 1 )
end


function get_map_entry_pos_fs()
end

function init_entry(map)
	SetMapEntryTime(map, "2006/10/18/14/0", "0/0/0", "0/0/0", "0/0/0")
end

function after_enter_yschurch( role , map_copy )
end

function before_leave_yschurch( role )
end

function map_copy_first_run_yschurch( map_copy )
end

function map_copy_run_yschurch( map_copy )
 local closetime = CHURCHCLOSETIME
     -- for i = 1 , CHURCHNOTICE , 1 do
		--if closetime == CHURCHCLOSESHOW[i] then
			-- local Notice_all = "距离教堂活动结束时间还有"..closetime.."秒！请抓紧时间拉！"
			--MapCopyNotice ( map_copy ,Notice_all )
		--end
	--end
	--CHURCHCLOSETIME = CHURCHCLOSETIME - 1
	KillMonsterInChurch(map_copy)
	KillMonsterInChurch(map_copy)
	DealAllActivePlayerInMap(map_copy,"Goto_ShaLan")
	--Notice("Goto_ShaLan  ")
end


function can_open_entry_yschurch( map )  
end 

function map_run_yschurch ( map )
end


function Goto_ShaLan (role)

	local now_week= os.date("%w")
	local now_hour= os.date("%H")
	local now_miniute= os.date("%M")
	now_week= tonumber(now_week)
	now_hour= tonumber(now_hour)		
	now_miniute= tonumber(now_miniute)
	local CheckDateNum = now_hour*100 +now_miniute
	--Notice("CheckDateNum = "..CheckDateNum)
	
	if now_week==1 then
	if CheckDateNum==1710  then
		MoveTo( role,  824, 3530,  "magicsea" )
		
		else
		return
		end
	elseif now_week==6 or  now_week==0 then
		if CheckDateNum==2000  or CheckDateNum==2210 then
		MoveTo( role,  910, 3571,  "magicsea" )
		--Notice("MoveTo1 = ".."910,3751")
		else
		return
		end
	
	end
	
end

function KillMonsterInChurch ( map_copy )
	local now_week= os.date("%w")
	local now_hour= os.date("%H")
	local now_miniute= os.date("%M")
	now_week= tonumber(now_week)
	now_hour= tonumber(now_hour)		
	now_miniute= tonumber(now_miniute)
	local CheckDateNum = now_hour*100 +now_miniute
	--Notice("CheckDateNum = "..CheckDateNum)
	
	if now_week==1 then
		if CheckDateNum==1710  then
			KillMonsterInMapByName(map_copy,"庆典淘气鬼")
			KillMonsterInMapByName(map_copy,"气球")
		else
			return
		end
	elseif now_week==6 or  now_week==0 then
		if CheckDateNum==2000  or CheckDateNum==2210 then
			KillMonsterInMapByName(map_copy,"庆典淘气鬼")
			KillMonsterInMapByName(map_copy,"气球")
		else
			return
		end
	end
end


function map_copy_close_yschurch ( map_copy )
end

function can_open_entry_yschurch( map ) 
end 



