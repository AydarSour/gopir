--������ ���� �������� � ���� �������� ������� �������.
MFRADIX=100 
CRTRADIX=100 
ATKER=0 
DEFER=1 

count_haidao = 0
count_haijun = 0
five_seconds = 0
second_five_seconds = 0
time_can_setmonster = 0
time_can_setnvsheng = 0
check_need_show = 0 
create_boss_hj = 0
create_boss_hd = 0
--create_two_side_lose = 0
--CLOSENotice = 0


count_haijun2 = 0
count_haidao2 = 0
five_seconds2 = 0
second_five_seconds2 = 0
time_can_setmonster2 = 0
time_can_setnvsheng2 = 0
check_need_show2 = 0
create_boss_hj2 = 0
create_boss_hd2 = 0
--create_two_side_lose2 = 0
--CLOSENotice2 = 0

function TurnToJob( character, p )
 local cha_type=GetChaTypeID(character)
 if p==1 and (cha_type==1 or cha_type==2 or cha_type==3) then
  return LUA_TRUE
 end
 if p==2 and (cha_type==1 or cha_type==3) then
  return LUA_TRUE
 end
 if p==3 and (cha_type==1 or cha_type==2) then
  return LUA_TRUE
 end 
end

function get_repatriate_city_guildwar(role)

  local map_name_role_guildwar = GetChaMapName ( role )
  return map_name_role_guildwar

end

function get_repatriate_city_guildwar2(role)

  local map_name_role_guildwar2 = GetChaMapName ( role )
  return map_name_role_guildwar2

end
---------------------------------------------------	
---------------------------------------------------
-- �������� ������� �� �������� ������
function trim(s)
	return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end

-- ��������� ������ �� ����� ��������� ������������; ���������� ������ ���� ������
function explode(seperator, str) 
	local pos, i, arr = 0, 0, {}
	for st, sp in function() return string.find(str, seperator, pos, true) end do
		table.insert(arr, i, trim(string.sub(str, pos, st-1)))
		pos = sp + 1
		i = i + 1
	end
	table.insert(arr, i, trim(string.sub(str, pos)))
	return arr
end
--������ �� ��������� � ���

function HandleChat(role, message)
	local original_id  = GetOriginalChaTypeID(role)
	local gmlvl = GetGmLv(role)
	local check = string.find(message, "&", 1)
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	local slesh = string.find(message, "/", 1)
	if check == nil then
		if slesh == nil then
			return 1
		elseif slesh ~= nil then
		local i
			if message == "/n" then
				local	effect = math.random(1,4000)
				SystemNotice(role, "������ � "..effect)
				PlayEffect (role, 350 ) 

				SystemNotice(role, "������ � "..c)
				--
				return 0
			end
			
			return 0
		end
	
	
	elseif check ~= nil then
		if gmlvl == 99 then
			msg = explode(" ", message)
			message = msg[0]
			if (message == "&lua") then
				SystemNotice(role, "������ ��������!")
				return 0
			end
			if (message == "&lua_all") then
				SystemNotice(role, "������ ��������!")
				return 0
			end
			local map_name = GetChaMapName ( role )
			if map_name == "07xmas" then
				return 1
			else
				if (message == "&gamesvrstop") then
					SystemNotice(role, "������ ��������!")
					return 0
				end
				if (message == "&reload") then
					SystemNotice(role, "������ ��������!")
					return 0
				end
				if (message == "&updateall") then
					SystemNotice(role, "������ ��������!")
					return 0
				end
				return 1
			end
		else
			SystemNotice(role, "������ ��������!")
			return 0
		end
	end
	return 1
end
	


--[[ function HandleChat(role, message)
local minute = os.date("%M")
	
	if (LocalChat[role] == nil) then
		LocalChat[role] = {}
	else

		if (LocalChat[role].minute == minute) then
			
			-- 25 messages are maximum
			if (LocalChat[role].number > 25) then
				-- Mute player
				SystemNotice(role, "Don't flood in local chat please!")
				return 0
			else
				LocalChat[role].number = LocalChat[role].number + 1
			end
			
		else
			LocalChat[role].minute = minute
			LocalChat[role].number = 1
		end
	end
	


	 local original_id  = GetOriginalChaTypeID(role)
	 local gmlvl = GetGmLv(role)
	 local check = string.find(message, "&", 1)
	 local Cha_Boat = 0
	 Cha_Boat = GetCtrlBoat ( role )
	 local slesh = string.find(message, "/", 1)
	  local map_name = GetChaMapName ( role )
	 if check == nil then
	 elseif check ~= nil then
		  -- if gmlvl == 99 then
			  -- msg = explode(" ", message)
			  -- message = msg[0]
			  -- if (message == "&kua") then
				  -- SystemNotice(role, "������ ��������!")
				  -- return 0
			  -- end
			  -- if (message == "&kua_all") then
				  -- SystemNotice(role, "������ ��������!")
				  -- return 0
			  -- end
			 
			  -- if map_name == "07xmas" then
				  -- return 1
			  -- else
				  -- if (message == "&hamesvrstop") then
					  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				  -- if (message == "&teload_ai") then
					  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				  -- if (message == "&ipdateall") then
				  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				   -- if (message == "&teload") then
					  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				  -- if (message == "&jide") then
					  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				  -- if (message == "&nove") then
					  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				  -- if (message == "&lick") then
					  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				  -- if (message == "&vall") then
					  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				 -- if (message == "&hoto") then
					  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				  -- if (message == "&teload") then
					  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				  -- if (message == "&dummon") then
					  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				  -- if (message == "&dummonex") then
					  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				  -- if (message == "&sttr") then
					  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				  -- if (message == "&dkill") then
					  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				  -- if (message == "&deattr") then
					  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				  -- if (message == "&addexp") then
					  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				  -- if (message == "&telive") then
					  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				  -- if (message == "&wcha") then
					  -- SystemNotice(role, "������ ��������!")
					  -- return 0
				  -- end
				  -- return 1
			  -- end
		  -- else
			  -- SystemNotice(role, "������ ��������!")
			  -- return 0
		  -- end
		 -- end
		 end
		 return 1
 end
				--)))))	msg = explode(" ", message)
					message = msg[0]
					if (message == "&roll") then
						if(GetChaTypeID(role) == original_id) then
							TransformCha(role, msg[1])
						end
						return 0
					end
					if (message == "&stop") then
						TransformCha(role, original_id)
						return 0
					end]]--
--�������� ����� ��� �������
function TurnToJob( character, p )
	local cha_type=GetChaTypeID(character)
	if p==1 and (cha_type==1 or cha_type==2 or cha_type==3) then
		return LUA_TRUE
	end
	if p==2 and (cha_type==1 or cha_type==3) then
		return LUA_TRUE
	end
	if p==3 and (cha_type==1 or cha_type==2 ) then
		return LUA_TRUE
	end
end
--����� ������ ������ �������2 
function goto_BDL_time(role)
	local hour = tonumber(os.date("%H"))
	local minu = tonumber(os.date("%M"))
	local Now_Time = hour*100 + minu
	if Now_Time >= 1910 and Now_Time < 1915 then
		return 1
	else
		SystemNotice(role , "������ ������� ������� 2 ����������� � 19:10 - 19:15!.")
		return 0
	end
end
--�������� �����
function CheckRase ( character, p )
	local cha_type = GetChaTypeID ( character )
	--���� ����� ����
	if p == 1 then
		if cha_type == 1 then
			return LUA_TRUE
		else
			return LUA_FALSE
		end
	end
	--���� ����� ������
	if p == 2 then
		if cha_type == 2 then
			return LUA_TRUE
		else
			return LUA_FALSE
		end
	end
	--���� ����� ������
	if p == 3 then
		if cha_type == 3 then
			return LUA_TRUE
		else
			return LUA_FALSE
		end
	end
	--���� ����� ���
	if p == 4 then
		if cha_type == 4 then
			return LUA_TRUE
		else
			return LUA_FALSE
		end
	end
	return LUA_FALSE
end

atk_statecheck = {} 
def_statecheck = {} 

function Reset_Statecheck () 
	for i = 1 , 100 , 1 do 
		atk_statecheck[i] = 0 
		def_statecheck[i] = 0 
	end 
end 

--��������� ��������� �����
function EightyLv_ExpAdd ( cha , expadd ) 
	if ValidCha (cha) ==1 then
		if ChaIsBoat ( cha ) == 0 then
			if Lv ( cha ) >= 80 then 
				expadd = math.floor ( expadd / 50 ) 
			end 
			if expadd == 0 then 
				SystemNotice ( TurnToCha(cha) , "��������� �� ���� ������� ������" )
			end 
		end 
		exp = GetChaAttr ( cha , ATTR_CEXP ) 
		exp = exp + expadd 
		SetCharaAttr ( exp , cha , ATTR_CEXP ) 
	end 
end 


function Check_State ( atk_role , def_role ) 
	Reset_Statecheck() 
	atk_statecheck[STATE_YS] = GetChaStateLv ( atk_role , STATE_YS ) 
end 

function CreatChaSkill ( role ) 
end 

function CheckJobLegal ( job ) 
	local check_job = 1 
	if job < JOB_TYPE_XINSHOU or job > JOB_TYPE_GONGCHENGSHI then 
		check_job = 0 
	end 
	return check_job 
end 

function RemoveYS( role )
	RemoveState( role , STATE_YS )
	return 1 
end

function Rem_State_Unnormal ( role ) 
	RemoveState( role , STATE_ZD )
	RemoveState( role , STATE_MB )
	RemoveState( role , STATE_ZZZH )
	RemoveState( role , STATE_SYNZ)	
	RemoveState( role , STATE_SDBZ )
	RemoveState( role , STATE_TJ )
	RemoveState( role , STATE_SJ )
--	RemoveState( role , STATE_XY )
	RemoveState( role , STATE_JNJZ )
	RemoveState( role , STATE_GJJZ )
	RemoveState( role , STATE_BDJ )	
	RemoveState( role , STATE_XN )
	RemoveState( role , STATE_NT )
	RemoveState( role , STATE_DIZ )
	RemoveState( role , STATE_SWCX )
	RemoveState( role , STATE_JSDD )
	RemoveState( role , STATE_HYMH )
	RemoveState( role , STATE_HLKJ )
	RemoveState( role , STATE_HLLM )
	RemoveState( role , STATE_CRXSF )
	RemoveState( role , STATE_BlackHX )
	RemoveState( role , STATE_HLKJ )
end 
--��������� ����
function Rem_State_StarUnnormal ( role )
	RemoveState( role , STATE_YSMspd )
	RemoveState( role , STATE_KUANGZ )	   
	RemoveState( role , STATE_QUANS )	 
	RemoveState( role , STATE_QINGZ )	 
end 
function Rem_State_NOSEA ( role )
	RemoveState( role , STATE_KB )					
	RemoveState( role , STATE_XLZH )					
	RemoveState( role , STATE_PKJSYS )				
	RemoveState( role , STATE_PKSFYS)				
	RemoveState( role , STATE_TSHD )				
	RemoveState( role , STATE_FZLZ )					
	RemoveState( role , STATE_PKZDYS )					
	RemoveState( role , STATE_PKKBYS )					
	RemoveState( role , STATE_YSLLQH )				
	RemoveState( role , STATE_YSMJQH )				
	RemoveState( role , STATE_YSLQQH )					
	RemoveState( role , STATE_YSTZQH )					
	RemoveState( role , STATE_YSJSQH )					
	RemoveState( role , STATE_DENGLONG )					
	RemoveState( role , STATE_YSMspd )				
	RemoveState( role , STATE_PKSBYS )				
	RemoveState( role , STATE_KUANGZ )				
	RemoveState( role , STATE_QUANS )				
	RemoveState( role , STATE_QINGZ )				
	RemoveState( role , STATE_CJBBT )				
	RemoveState( role , STATE_JRQKL )				
	RemoveState( role , STATE_KALA )	
	RemoveState( role , STATE_CZZX )
	RemoveState( role , STATE_JLFT1 )				
	RemoveState( role , STATE_JLFT2 )				
	RemoveState( role , STATE_JLFT3 )				
	RemoveState( role , STATE_JLFT4 )				
	RemoveState( role , STATE_JLFT5 )				
	RemoveState( role , STATE_JLFT6 )				
	RemoveState( role , STATE_JLFT7 )				
	RemoveState( role , STATE_JLFT8 )				
end 
function SetCharaAttr(a,b,c) 
	local x,y=b,c 
	local z=math.floor(a) 
	SetChaAttr(x,y,z) 
end 

function Attr_ap(a)  
	local attr_ap=GetChaAttr(a,ATTR_AP) 
	return attr_ap 
end 

function Attr_tp(a) 
	local attr_tp=GetChaAttr(a,ATTR_TP) 
	return attr_tp 
end 

function CheckCha_Job(a) 
	local role_attr_job=GetChaAttr(a,ATTR_JOB) 
	return role_attr_job 
end 

function Exp(a) 
	local exp=GetChaAttr(a,ATTR_CEXP)
	return exp 
end 

function Lv(a)
	local b = TurnToCha ( a ) 
	local lv=GetChaAttr( b , ATTR_LV ) 
	return lv 
end 

function Hp(a)
	local hp=GetChaAttr(a,ATTR_HP) 
	return hp 
end 

function Mxhp(a)
	local mxhp=GetChaAttr(a,ATTR_MXHP) 
	return mxhp 
end 

function MxhpSa(a)
	local mxhpsa= GetChaAttr(a, ATTR_STATEC_MXHP)/ATTR_RADIX   
	return mxhpsa 
end 

function MxhpSb(a)
	local mxhpsb=GetChaAttr(a, ATTR_STATEV_MXHP) 
	return mxhpsb 
end 

function MxhpIa(a)
	local mxhpia=GetChaAttr(a, ATTR_ITEMC_MXHP)/ATTR_RADIX 
	return mxhpia 
end 

function MxhpIb(a)
	local mxhpib=GetChaAttr(a, ATTR_ITEMV_MXHP)
	return mxhpib 
end 

function Sp(a)
	local sp=GetChaAttr(a,ATTR_SP) 
	return sp 
end 

function Mxsp(a)
	local mxsp=GetChaAttr(a,ATTR_MXSP)
	return mxsp 
end 

function MxspSa(a)
	local mxspsa=GetChaAttr(a, ATTR_STATEC_MXSP)/ATTR_RADIX 
	return mxspsa 
end 

function MxspSb(a)
	local mxspsb=GetChaAttr(a, ATTR_STATEV_MXSP) 
	return mxspsb 
end 

function MxspIa(a)
	local mxspia=GetChaAttr(a, ATTR_ITEMC_MXSP)/ATTR_RADIX 
	return mxspia 
end 

function MxspIb(a)
	local mxspib=GetChaAttr(a, ATTR_ITEMV_MXSP) 
	return mxspib 
end 

function Mnatk(a)
	local mnatk=GetChaAttr(a,ATTR_MNATK)
	return mnatk 
end 

function MnatkSa(a)
	local mnatksa= GetChaAttr(a, ATTR_STATEC_MNATK)/ATTR_RADIX 
	return mnatksa 
end 

function MnatkSb(a)
	local mnatksb=GetChaAttr(a, ATTR_STATEV_MNATK) 
	return mnatksb 
end 

function MnatkIa(a)
	local mnatkia=GetChaAttr(a, ATTR_ITEMC_MNATK)/ATTR_RADIX
	return mnatkia 
end 

function MnatkIb(a)
	local mnatkib=GetChaAttr(a, ATTR_ITEMV_MNATK)
	return mnatkib 
end 

function Mxatk(a)
	local mxatk=GetChaAttr(a,ATTR_MXATK) 
	return mxatk 
end 

function MxatkSa(a)
	local mxatksa= GetChaAttr(a, ATTR_STATEC_MXATK)/ATTR_RADIX 
	return mxatksa 
end 

function MxatkSb(a)
	local mxatksb=GetChaAttr(a, ATTR_STATEV_MXATK) 
	return mxatksb 
end 

function MxatkIa(a)
	local mxatkia=GetChaAttr(a, ATTR_ITEMC_MXATK)/ATTR_RADIX 
	return mxatkia 
end 

function MxatkIb(a)
	local mxatkib=GetChaAttr(a, ATTR_ITEMV_MXATK) 
	return mxatkib 
end 

function Def(a)
	local def=GetChaAttr(a,ATTR_DEF)
	return def 
end 

function DefSa(a)
	local defsa= GetChaAttr(a, ATTR_STATEC_DEF)/ATTR_RADIX 
	return defsa 
end 

function DefSb(a)
	local defsb=GetChaAttr(a, ATTR_STATEV_DEF)
	return defsb 
end 

function DefIa(a)
	local defia=GetChaAttr(a, ATTR_ITEMC_DEF)/ATTR_RADIX 
	return defia 
end 

function DefIb(a)
	local defib=GetChaAttr(a, ATTR_ITEMV_DEF) 
	return defib 
end 

function Resist(a)
	local def=GetChaAttr(a,ATTR_PDEF) 
	return def 
end 

function ResistSa(a)
	local defsa= GetChaAttr(a, ATTR_STATEC_PDEF)/ATTR_RADIX 
	return defsa 
end 

function ResistSb(a)
	local defsb=GetChaAttr(a, ATTR_STATEV_PDEF)
	return defsb 
end 

function ResistIa(a)
	local defia=GetChaAttr(a, ATTR_ITEMC_PDEF)/ATTR_RADIX 
	return defia 
end 

function ResistIb(a)
	local defib=GetChaAttr(a, ATTR_ITEMV_PDEF)
	return defib 
end 

function Hit(a)
	local hit=GetChaAttr(a,ATTR_HIT) 
	return hit 
end 

function HitSa(a)
	local hitsa= GetChaAttr(a, ATTR_STATEC_HIT)/ATTR_RADIX   
	return hitsa 
end 

function HitSb(a)
	local hitsb=GetChaAttr(a, ATTR_STATEV_HIT) 
	return hitsb 
end 

function HitIa(a)
	local hitia=GetChaAttr(a, ATTR_ITEMC_HIT)/ATTR_RADIX
	return hitia 
end 

function HitIb(a)
	local hitib=GetChaAttr(a, ATTR_ITEMV_HIT) 
	return hitib 
end 

function Flee(a)
	local flee=GetChaAttr(a,ATTR_FLEE)
	return flee 
end 

function FleeSa(a)
	local fleesa=  GetChaAttr(a, ATTR_STATEC_FLEE)/ATTR_RADIX 
	return fleesa 
end 

function FleeSb(a)
	local fleesb=GetChaAttr(a, ATTR_STATEV_FLEE) 
	return fleesb 
end 

function FleeIa(a)
	local fleeia=GetChaAttr(a, ATTR_ITEMC_FLEE)/ATTR_RADIX 
	return fleeia 
end 

function FleeIb(a)
	local fleeib=GetChaAttr(a, ATTR_ITEMV_FLEE)
	return fleeib 
end 

function Mf(a) 
	local mf=GetChaAttr(a,ATTR_MF)/MFRADIX 
	return mf 
end 

function MfSa(a)
	local mfsa= GetChaAttr(a, ATTR_STATEC_MF)/ATTR_RADIX  
	return mfsa 
end 

function MfSb(a)
	local mfsb=GetChaAttr(a, ATTR_STATEV_MF) 
	return mfsb 
end 

function MfIa(a)
	local mfia=GetChaAttr(a, ATTR_ITEMC_MF)/ATTR_RADIX 
	return mfia 
end 

function MfIb(a)
	local mfib=GetChaAttr(a, ATTR_ITEMV_MF) 
	return mfib 
end 

function Crt(a) 
	local crt=GetChaAttr(a,ATTR_CRT)/CRTRADIX 
	return crt 
end 

function CrtSa(a)
	local crtsa= GetChaAttr(a, ATTR_STATEC_CRT)/ATTR_RADIX  
	return crtsa 
end 

function CrtSb(a) 
	local crtsb=GetChaAttr(a, ATTR_STATEV_CRT) 
	return crtsb 
end 

function CrtIa(a)
	local crtia=GetChaAttr(a, ATTR_ITEMC_CRT)/ATTR_RADIX
	return crtia 
end 

function CrtIb(a)
	local crtib=GetChaAttr(a, ATTR_ITEMV_CRT) 
	return crtib 
end 

function Hrec(a) 
	local hrec=GetChaAttr(a,ATTR_HREC) 
	return hrec 
end 

function HrecSa(a)
	local hrecsa=  GetChaAttr(a, ATTR_STATEC_HREC)/ATTR_RADIX  
	return hrecsa 
end 

function HrecSb(a)
	local hrecsb=GetChaAttr(a, ATTR_STATEV_HREC) 
	return hrecsb 
end 

function HrecIa(a)
	local hrecia=GetChaAttr(a, ATTR_ITEMC_HREC)/ATTR_RADIX 
	return hrecia 
end 

function HrecIb(a) 
	local hrecib=GetChaAttr(a, ATTR_ITEMV_HREC) 
	return hrecib 
end 

function Srec(a)
	local srec=GetChaAttr(a,ATTR_SREC) 
	return srec 
end 

function SrecSa(a)
	local srecsa= GetChaAttr(a, ATTR_STATEC_SREC)/ATTR_RADIX  
	return srecsa 
end 

function SrecSb(a)
	local srecsb=GetChaAttr(a, ATTR_STATEV_SREC) 
	return srecsb 
end 

function SrecIa(a)
	local srecia=GetChaAttr(a, ATTR_ITEMC_SREC)/ATTR_RADIX 
	return srecia 
end 

function SrecIb(a)
	local srecib=GetChaAttr(a, ATTR_ITEMV_SREC)
	return srecib 
end 

function Aspd(a)
	local aspd=math.floor ( 100000 / GetChaAttr(a,ATTR_ASPD) )
	return aspd 
end 

function AspdSa(a)
	local aspdsa=  GetChaAttr(a, ATTR_STATEC_ASPD)/ATTR_RADIX 
	return aspdsa 
end 

function AspdSb(a)
	local aspdsb=GetChaAttr(a, ATTR_STATEV_ASPD)
	return aspdsb 
end 

function AspdIa(a)
	local aspdia=GetChaAttr(a, ATTR_ITEMC_ASPD)/ATTR_RADIX 
	return aspdia 
end 

function AspdIb(a)
	local aspdib=GetChaAttr(a, ATTR_ITEMV_ASPD) 
	return aspdib 
end 

function Adis(a)
	local adis=GetChaAttr(a,ATTR_ADIS) 
	return adis 
end 

function AdisSa(a) 
	local adissa=  GetChaAttr(a, ATTR_STATEC_ADIS)/ATTR_RADIX  
	return adissa 
end 

function AdisSb(a)
	local adissb=GetChaAttr(a, ATTR_STATEV_ADIS)
	return adissb 
end 

function AdisIa(a)
	local adisia=GetChaAttr(a, ATTR_ITEMC_ADIS)/ATTR_RADIX
	return adisia 
end 

function AdisIb(a)
	local adisib=GetChaAttr(a, ATTR_ITEMV_ADIS) 
	return adisib 
end 

function Mspd(a)
	local mspd=GetChaAttr(a,ATTR_MSPD) 
	return mspd 
end 

function MspdSa(a)
	local mspdsa=  GetChaAttr(a, ATTR_STATEC_MSPD)/ATTR_RADIX  
	return mspdsa 
end 
function MspdSb(a)
	local mspdsb=GetChaAttr(a, ATTR_STATEV_MSPD) 
	return mspdsb 
end 
function MspdIa(a)
	local mspdia=GetChaAttr(a, ATTR_ITEMC_MSPD)/ATTR_RADIX 
	return mspdia 
end 

function MspdIb(a) 
	local mspdib=GetChaAttr(a, ATTR_ITEMV_MSPD) 
	return mspdib 
end 

function Col(a)
	local col=GetChaAttr(a,ATTR_COL) 
	return col 
end 

function ColSa(a) 
	local colsa= GetChaAttr(a, ATTR_STATEC_COL)/ATTR_RADIX
	return colsa 
end 

function ColSb(a) 
	local colsb=GetChaAttr(a, ATTR_STATEV_COL) 
	return colsb 
end 

function ColIa(a) 
	local colia=GetChaAttr(a, ATTR_ITEMC_COL)/ATTR_RADIX 
	return colia 
end 

function ColIb(a) 
	local colib=GetChaAttr(a, ATTR_ITEMV_COL) 
	return colib 
end 

function Str(a) 
	local str=GetChaAttr(a,ATTR_STR) 
	return str 
end 

function StrSa(a) 
	local strsa= GetChaAttr(a, ATTR_STATEC_STR)/ATTR_RADIX   
	return strsa 
end 

function StrSb(a)  
	local strsb=GetChaAttr(a, ATTR_STATEV_STR)
	return strsb 
end 

function StrIa(a)
	local stria=GetChaAttr(a,ATTR_ITEMC_STR)/ATTR_RADIX 
	return stria 
end 

function StrIb(a)
	local strib=GetChaAttr(a,ATTR_ITEMV_STR) 
	return strib 
end 

function Dex(a)
	local dex=GetChaAttr(a,ATTR_DEX) 
	return dex 
end 

function DexSa(a)
	local dexsa= GetChaAttr(a, ATTR_STATEC_DEX)/ATTR_RADIX  
	return dexsa 
end 

function DexSb(a) 
	local dexsb=GetChaAttr(a, ATTR_STATEV_DEX) 
	return dexsb 
end 

function DexIa(a)
	local dexia=GetChaAttr(a,ATTR_ITEMC_DEX)/ATTR_RADIX 
	return dexia 
end 

function DexIb(a)
	local dexib=GetChaAttr(a,ATTR_ITEMV_DEX) 
	return dexib 
end 

function Agi(a) 
	local agi=GetChaAttr(a,ATTR_AGI) 
	return agi 
end 

function AgiSa(a)
	local agisa= GetChaAttr(a, ATTR_STATEC_AGI)/ATTR_RADIX 
	return agisa 
end 

function AgiSb(a)
	local agisb=GetChaAttr(a, ATTR_STATEV_AGI) 
	return agisb 
end 

function AgiIa(a)
	local agiia=GetChaAttr(a,ATTR_ITEMC_AGI)/ATTR_RADIX 
	return agiia 
end 

function AgiIb(a)
	local agiib=GetChaAttr(a,ATTR_ITEMV_AGI) 
	return agiib 
end 

function Con(a)
	local con=GetChaAttr(a,ATTR_CON) 
	return con 
end 

function ConSa(a)
	local consa= GetChaAttr(a, ATTR_STATEC_CON)/ATTR_RADIX 
	return consa 
end 

function ConSb(a)
	local consb=GetChaAttr(a, ATTR_STATEV_CON) 
	return consb 
end 

function ConIa(a) 
	local conia=GetChaAttr(a, ATTR_ITEMC_CON)/ATTR_RADIX 
	return conia 
end 

function ConIb(a)
	local conib=GetChaAttr(a, ATTR_ITEMV_CON) 
	return conib 
end 

function Sta(a) 
	local sta=GetChaAttr(a,ATTR_STA) 
	return sta 
end 

function StaSa(a)
	local stasa= GetChaAttr(a, ATTR_STATEC_STA)/ATTR_RADIX 
	return stasa 
end 

function StaSb(a)
 
	local stasb=GetChaAttr(a, ATTR_STATEV_STA)
	return stasb 
end 

function StaIa(a)
	local staia=GetChaAttr(a, ATTR_ITEMC_STA)/ATTR_RADIX 
	return staia 
end 

function StaIb(a)
	local staib=GetChaAttr(a, ATTR_ITEMV_STA) 
	return staib 
end 

function Luk(a)
	local luk=GetChaAttr(a,ATTR_LUK)
	return luk 
end 

function LukSa(a)

	local luksa= GetChaAttr(a, ATTR_STATEC_LUK)/ATTR_RADIX   
	return luksa 
end 

function LukSb(a) 
	local luksb=GetChaAttr(a, ATTR_STATEV_LUK) 
	return luksb 
end 

function LukIa(a)

	local lukia=GetChaAttr(a, ATTR_ITEMC_LUK)/ATTR_RADIX 
	return lukia 
end 

function LukIb(a)
	local lukib = GetChaAttr(a, ATTR_ITEMV_LUK) 
	return lukib 
end 

function BSMxhp(a)
	local bsmxhp=GetChaAttr(a,ATTR_BMXHP) 
	return bsmxhp 
end 

function Mxhp_final(a) 
	local mxhp_final=(BSMxhp(a) * MxhpIa(a) + MxhpIb(a) ) * math.max(0, MxhpSa(a))  + MxhpSb(a) 
	return mxhp_final 
end 

function Sp_final(a)
	local sp_final=(BSSp(a) * SpIa(a) + SpIb(a) ) * math.max(0 , SpSa(a)) + SpSb(a) 
	return sp_final 
end 

function BSMxsp(a) 
	local bsmxsp=GetChaAttr(a,ATTR_BMXSP) 
	return bsmxsp 
end 

function Mxsp_final(a)
	local mxsp_final=(BSMxsp(a) * MxspIa(a) + MxspIb(a) ) * math.max ( 0 , MxspSa(a) ) + MxspSb(a) 
	return mxsp_final 
end 

function BSMnatk(a)  
	local bsmnatk=GetChaAttr(a,ATTR_BMNATK) 
	return bsmnatk 
end

function Mnatk_final(a)
	local mnatk_final=math.max ( (BSMnatk(a) * MnatkIa(a) + MnatkIb(a) ) * math.max ( 0 , MnatkSa(a)) + MnatkSb(a) , 1 ) 

	return mnatk_final 
end 

function BSMxatk(a)
	local bsmxatk=GetChaAttr(a,ATTR_BMXATK) 
	return bsmxatk 
end

function Mxatk_final(a)
	local mxatk_final=math.max ( (BSMxatk(a) * MxatkIa(a) + MxatkIb(a) ) * math.max ( 0 , MxatkSa(a) ) + MxatkSb(a) , 1 ) 
	return mxatk_final 
end 

function BSDef(a)  
	local bsdef=GetChaAttr(a,ATTR_BDEF) 
	return bsdef 
end


function Def_final(a)
	local def_final=math.max ( (BSDef(a) * DefIa(a) + DefIb(a) ) * math.max ( 0 , DefSa(a) ) + DefSb(a) , 0 ) 
	return def_final 
end 

function BSResist(a) 
   local bsresist = GetChaAttr(a, ATTR_BPDEF) 
   return bsresist 
end 

function Resist_final(a) 
   local resist_final=(BSResist(a) * ResistIa(a) + ResistIb(a) ) * math.max ( 0 , ResistSa(a) ) + ResistSb(a) 
   return resist_final 
end 


function BSHit(a) 
	local bshit=GetChaAttr(a,ATTR_BHIT) 
	return bshit 
end

function Hit_final(a)
	local hit_final = (BSHit(a) * HitIa(a) + HitIb(a) ) * math.max ( 0 , HitSa(a) ) + HitSb(a) 
	return hit_final 
end 

function BSFlee(a)
	local bsflee=GetChaAttr(a,ATTR_BFLEE) 
	return bsflee 
end

function Flee_final(a) 
	local flee_final=(BSFlee(a) * FleeIa(a) + FleeIb(a) ) * math.max ( 0 , FleeSa(a) ) + FleeSb(a)  
	return flee_final 
end 

function BSMf(a)
	local bsmf=GetChaAttr(a,ATTR_BMF)
	return bsmf 
end

function Mf_final(a)
	local mf_final=(BSMf(a) * MfIa(a) + MfIb(a) )* math.max ( 0 , MfSa(a) ) + MfSb(a) 
	return mf_final 
end 

function BSCrt(a)  
	local bscrt=GetChaAttr(a,ATTR_BCRT) 
	return bscrt 
end

function Crt_final(a)
	local crt_final=(BSCrt(a) * CrtIa(a) + CrtIb(a) ) * math.max ( 0 , CrtSa(a) )  + CrtSb(a) 
	return crt_final 
end 

function BSHrec(a) 
	local bshrec=GetChaAttr(a,ATTR_BHREC) 
	return bshrec 
end

function Hrec_final(a)
	local hrec_final=( BSHrec(a) * HrecIa(a) + HrecIb(a) ) * math.max ( 0 , HrecSa(a) ) + HrecSb(a)
	return hrec_final 
end 

function BSSrec(a)  
	local bssrec=GetChaAttr(a,ATTR_BSREC) 
	return bssrec 
end

function Srec_final(a)
	local srec_final=(BSSrec(a) * SrecIa(a) + SrecIb(a) ) * math.max ( 0 , SrecSa(a) ) + SrecSb(a) 
	return srec_final 
end 

function BSAspd(a) 
	local bsaspd=math.floor ( 100000 / GetChaAttr(a,ATTR_BASPD) ) 
	return bsaspd 
end

function Aspd_final(a)
	local aspd_final= math.floor ( ( BSAspd(a)  * AspdIa(a) + AspdIb(a) ) * math.max ( 0 , AspdSa(a) ) + AspdSb(a) )
	return aspd_final 
end 

function BSAdis(a)  
	local bsadis=GetChaAttr(a,ATTR_BADIS) 
	return bsadis 
end

function Adis_final(a)
	local adis_final=(BSAdis(a) * AdisIa(a) + AdisIb(a) ) * math.max ( 0 , AdisSa(a) ) + AdisSb(a) 
	return adis_final 
end 

function BSMspd(a)  
	local bsmspd=GetChaAttr(a,ATTR_BMSPD) 
	return bsmspd 
end

function Mspd_final(a)
	local mspd_final=math.max ( BSMspd(a) * 0.3 , ( (BSMspd(a) * MspdIa(a) + MspdIb(a) ) * math.max ( 0.3 , MspdSa(a))  + MspdSb(a) )  ) 
	return mspd_final 
end 

function BSCol(a) 
	local bscol=GetChaAttr(a,ATTR_BCOL) 
	return bscol 
end

function Col_final(a)
	local col_final=(BSCol(a) * ColIa(a) + ColIb(a) ) * math.max ( 0 , ColSa(a) ) + ColSb(a) 
	return col_final 
end 

function BSStr(a)  
	local bsstr=GetChaAttr(a,ATTR_BSTR) 
	return bsstr 
end

function Str_final(a)
	local str_final=(BSStr(a) * StrIa(a) + StrIb(a) ) * math.max ( 0 , StrSa(a) ) + StrSb(a) 
	return str_final 
end 

function BSDex(a) 
	local bsdex=GetChaAttr(a,ATTR_BDEX) 
	return bsdex 
end

function Dex_final(a)
	local dex_final=(BSDex(a) * DexIa(a) + DexIb(a) ) * math.max ( 0 , DexSa(a) ) + DexSb(a)
	return dex_final 
end 

function BSAgi(a) 
	local bsagi=GetChaAttr(a,ATTR_BAGI) 
	return bsagi 
end

function Agi_final(a)
	local agi_final=(BSAgi(a) * AgiIa(a) + AgiIb(a) ) * math.max ( 0 , AgiSa(a) ) + AgiSb(a) 
	return agi_final 
end 

function BSCon(a)  
	local bscon=GetChaAttr(a,ATTR_BCON) 
	return bscon 
end

function Con_final(a)
	local con_final=(BSCon(a) * ConIa(a) + ConIb(a)) * math.max ( 0 , ConSa(a) ) + ConSb(a) 
	return con_final 
end 

function BSSta(a)
	local bssta=GetChaAttr(a,ATTR_BSTA) 
	return bssta 
end

function Sta_final(a)
	local sta_final=(BSSta(a) * StaIa(a) + StaIb(a) ) * math.max ( 0 , StaSa(a) ) + StaSb(a)
	return sta_final 
end 

function BSLuk(a) 
	local bsluk=GetChaAttr(a,ATTR_BLUK) 
	return bsluk 
end

function Luk_final(a)
	local luk_final=(BSLuk(a)  *LukIa(a) + LukIb(a) ) * math.max ( 0 , LukSa(a) ) + LukSb(a) 
	return luk_final 
end 

function Ship_BSMnatk ( ship_role )
	local ship_bsmnatk=GetChaAttr( ship_role , ATTR_BMNATK ) 
	return ship_bsmnatk 
end 

function Ship_BSMxatk ( ship_role )
	local ship_bsmxatk=GetChaAttr( ship_role , ATTR_BMXATK ) 
	return ship_bsmxatk 
end 

function Ship_BSAdis ( ship_role )
	local ship_bsadis=GetChaAttr( ship_role , ATTR_BADIS ) 
	return ship_bsadis  
end 

function Ship_BSCspd ( ship_role )
	local ship_bscspd=GetChaAttr( ship_role , ATTR_BOAT_BCSPD ) 
	return ship_bscspd  
end 

function Ship_BSAspd ( ship_role ) 
	local ship_bsaspd=GetChaAttr( ship_role , ATTR_BASPD ) 
	return ship_bsaspd  
end 

function Ship_BSCrange ( ship_role ) 
	local ship_bscrange=GetChaAttr( ship_role , ATTR_BOAT_BCRANGE ) 
	return ship_bscrange  
end 


function Ship_BSDef ( ship_role )
	local ship_bsdef=GetChaAttr( ship_role , ATTR_BDEF ) 
	return ship_bsdef   
end 

function Ship_BSResist ( ship_role ) 
	local ship_bsresist=GetChaAttr( ship_role , ATTR_BPDEF ) 
	return ship_bsresist   
end 

function Ship_BSMxhp ( ship_role ) 
	local ship_bsmxhp=GetChaAttr( ship_role , ATTR_BMXHP ) 
	return ship_bsmxhp    
end 

function Ship_BSHrec ( ship_role ) 
	local ship_bshrec=GetChaAttr( ship_role , ATTR_BHREC ) 
	return ship_bshrec 
end 

function Ship_BSSrec ( ship_role ) 
	local ship_bssrec=GetChaAttr( ship_role , ATTR_BSREC ) 
	return ship_bssrec 
end 

function Ship_BSMspd ( ship_role )
	local ship_bsmspd=GetChaAttr( ship_role , ATTR_BMSPD ) 
	return ship_bsmspd 
end 

function Ship_BSMxsp ( ship_role ) 
	local ship_bsmxsp=GetChaAttr( ship_role , ATTR_BMXSP ) 
	return ship_bsmxsp 
end 
function Ship_MnatkSa ( cha_role )
	local ship_mnatksa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MNATK ) / ATTR_RADIX
	return ship_mnatksa 
end 

function Ship_MnatkSb ( cha_role )
	local ship_mnatksb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MNATK ) 
	return ship_mnatksb 
end 

function Ship_MxatkSa ( cha_role )
	local ship_mxatksa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXATK ) / ATTR_RADIX
	return ship_mxatksa 
end 

function Ship_MxatkSb ( cha_role )
	local ship_mxatksb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXATK ) 
	return ship_mxatksb 
end 
	
function Ship_AdisSa ( cha_role )
	local ship_adissa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_ADIS ) / ATTR_RADIX
	return ship_adissa  
end 

function Ship_AdisSb ( cha_role )
	local ship_adissb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_ADIS ) 
	return ship_adissb  
end 

function Ship_CspdSa ( cha_role )
	local ship_cspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_CSPD ) / ATTR_RADIX
	return ship_cspdsa  
end 

function Ship_CspdSb ( cha_role )
	local ship_cspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_CSPD ) 
	return ship_cspdsb  
end 

function Ship_AspdSa ( cha_role ) 
	local ship_aspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_ASPD ) / ATTR_RADIX
	return ship_aspdsa  
end 

function Ship_AspdSb ( cha_role ) 
	local ship_aspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_ASPD ) 
	return ship_aspdsb  
end 

function Ship_CrangeSa ( cha_role ) 
	local ship_crangesa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_CRANGE ) / ATTR_RADIX
	return ship_crangesa  
end 

function Ship_CrangeSb ( cha_role ) 
	local ship_crangesb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_CRANGE ) 
	return ship_crangesb  
end 

function Ship_DefSa ( cha_role ) 
	local ship_defsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_DEF ) / ATTR_RADIX
	return ship_defsa   
end 

function Ship_DefSb ( cha_role ) 
	local ship_defsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_DEF ) 
	return ship_defsb   
end 

function Ship_ResistSa ( cha_role ) 
	local ship_resistsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_RESIST ) / ATTR_RADIX
	return ship_resistsa   
end 

function Ship_ResistSb ( cha_role ) 
	local ship_resistsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_RESIST ) 
	return ship_resistsb   
end 

function Ship_MxhpSa ( cha_role ) 
	local ship_mxhpsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXUSE ) / ATTR_RADIX
	return ship_mxhpsa    
end 
function Ship_MxhpSb ( cha_role ) 
	local ship_mxhpsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXUSE ) 
	return ship_mxhpsb    
end 

function Ship_HrecSa ( cha_role ) 
	local ship_hrecsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_USEREC ) / ATTR_RADIX
	return ship_hrecsa 
end 

function Ship_HrecSb ( cha_role ) 
	local ship_hrecsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_USEREC ) 
	return ship_hrecsb 
end 

function Ship_SrecSa ( cha_role ) 
	local ship_srecsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_EXP ) / ATTR_RADIX
	return ship_srecsa 
end 

function Ship_SrecSb ( cha_role ) 
	local ship_srecsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_EXP ) 
	return ship_srecsb 
end 

function Ship_MspdSa ( cha_role )
	local ship_mspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MSPD ) / ATTR_RADIX
	return ship_mspdsa 
end 

function Ship_MspdSb ( cha_role ) 
	local ship_mspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MSPD ) 
	return ship_mspdsb 
end 

function Ship_MxspSa ( cha_role )
	local ship_mxspsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXSPLY ) / ATTR_RADIX
	return ship_mxspsa 
end 

function Ship_MxspSb ( cha_role )
	local ship_mxspsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXSPLY ) 
	return ship_mxspsb 
end 

function Ship_Mnatk_final ( cha_role , ship_role )
	local ship_mnatk=  math.floor ( ( Ship_BSMnatk ( ship_role ) * Ship_MnatkSa ( cha_role ) + Ship_MnatkSb ( cha_role ) ) * MnatkSa ( ship_role ) + MnatkSb ( ship_role ) )
	return ship_mnatk 
end 

function Ship_Mnatk ( ship_role )
	local ship_mnatk=GetChaAttr( ship_role , ATTR_MNATK ) 
	return ship_mnatk 
end 

function Ship_Mxatk_final ( cha_role , ship_role )
	local ship_mxatk= math.floor ( ( Ship_BSMxatk ( ship_role ) * Ship_MxatkSa ( cha_role ) + Ship_MxatkSb ( cha_role ) ) * MxatkSa ( ship_role ) + MxatkSb ( ship_role ) )
	return ship_mxatk 
end 

function Ship_Mxatk ( ship_role )
	local ship_mxatk=GetChaAttr( ship_role , ATTR_MXATK ) 
	return ship_mxatk 
end 

function Ship_Adis_final ( cha_role , ship_role )
	local ship_adis= math.floor ( ( Ship_BSAdis ( ship_role ) * Ship_AdisSa ( cha_role ) + Ship_AdisSb ( cha_role ) )  ) 
	return ship_adis 
end 

function Ship_Adis ( ship_role )
	local ship_adis=GetChaAttr( ship_role , ATTR_ADIS ) 
	return ship_adis 
end 

function Ship_Cspd_final ( cha_role , ship_role )
	local ship_cspd= math.floor ( ( Ship_BSCspd ( ship_role ) * Ship_CspdSa ( cha_role ) + Ship_CspdSb ( cha_role ) )  )
	return ship_cspd 
end 

function Ship_Cspd ( ship_role )
	local ship_cspd=GetChaAttr( ship_role , ATTR_BOAT_CSPD ) 
	return ship_cspd 
end 

function Ship_Aspd_final ( cha_role , ship_role ) 
	local ship_aspd= math.floor ((  Ship_BSAspd ( ship_role ) * Ship_AspdSa ( cha_role ) + Ship_AspdSb ( cha_role ) ) * AspdSa ( ship_role ) + AspdSb ( ship_role ) )
	return ship_aspd  
end 

function Ship_Aspd ( ship_role ) 
	local ship_aspd=GetChaAttr( ship_role , ATTR_ASPD ) 
	return ship_aspd  
end 

function Ship_Crange_final (  cha_role , ship_role )
	local ship_crange= math.floor ( ( Ship_BSCrange ( ship_role ) * Ship_CrangeSa ( cha_role ) + Ship_CrangeSb ( cha_role ) )  ) 
	return ship_crange  
end 

function Ship_Crange ( ship_role )
	local ship_crange=GetChaAttr( ship_role , ATTR_CRANGE ) 
	return ship_crange  
end 

function Ship_Def_final ( cha_role , ship_role ) 
	local ship_def= math.floor ( ( Ship_BSDef ( ship_role ) * Ship_DefSa ( cha_role ) + Ship_DefSb ( cha_role ) ) * DefSa ( ship_role ) + DefSb ( ship_role ) ) 
	return ship_def  
end 

function Ship_Def ( ship_role ) 
	local ship_def=GetChaAttr( ship_role , ATTR_DEF ) 
	return ship_def  
end 

function Ship_Resist_final (  cha_role ,ship_role ) 
	local ship_resist= math.floor ( ( Ship_BSResist ( ship_role ) * Ship_ResistSa ( cha_role ) + Ship_ResistSb ( cha_role ) ) * ResistSa ( ship_role ) + ResistSb ( ship_role ) ) 
	return ship_resist  
end 

function Ship_Resistl ( ship_role ) 
	local ship_resist=GetChaAttr( ship_role , ATTR_PDEF ) 
	return ship_resist  
end 

function Ship_Mxhp_final (  cha_role ,ship_role ) 
	local ship_mxhp= math.floor ( ( Ship_BSMxhp ( ship_role ) * Ship_MxhpSa ( cha_role ) + Ship_MxhpSb ( cha_role ) ) * MxhpSa ( ship_role ) + MxhpSb ( ship_role ) ) 
	return ship_mxhp  
end 

function Ship_Mxhp ( ship_role ) 
	local ship_mxhp=GetChaAttr( ship_role , ATTR_MXHP ) 
	return ship_mxhp  
end 

function Ship_Hp ( ship_role )
	local ship_hp=GetChaAttr( ship_role , ATTR_HP ) 
	return ship_hp  
end 

function Ship_Hrec_final (  cha_role ,ship_role ) 
	local ship_hrec= math.floor ( ( Ship_BSHrec ( ship_role ) * Ship_HrecSa ( cha_role ) + Ship_HrecSb ( cha_role ) ) * HrecSa ( ship_role ) + HrecSb ( ship_role )  ) 
	return ship_hrec  
end 

function Ship_Hrec (  ship_role )
	local ship_hrec=GetChaAttr( ship_role , ATTR_HREC ) 
	return ship_hrec  
end 

function Ship_Srec_final (  cha_role ,ship_role ) 
	local ship_srec= math.floor ( ( Ship_BSSrec ( ship_role ) * Ship_SrecSa ( cha_role ) + Ship_SrecSb ( cha_role ) ) * SrecSa ( ship_role ) + SrecSb ( ship_role ) ) 
	return ship_srec  
end 

function Ship_Srec ( ship_role )
	local ship_srec=GetChaAttr( ship_role , ATTR_SREC ) 
	return ship_srec  
end 

function Ship_Mspd_final (  cha_role ,ship_role ) 
	local ship_mspd= math.floor ( ( Ship_BSMspd ( ship_role ) * Ship_MspdSa ( cha_role ) + Ship_MspdSb ( cha_role ) ) * MspdSa ( ship_role ) + MspdSb ( ship_role ) ) 
	return ship_mspd  
end 

function Ship_Mspd ( ship_role ) 
	local ship_mspd=GetChaAttr( ship_role , ATTR_MSPD ) 
	return ship_mspd  
end 

function Ship_Mxsp_final (  cha_role ,ship_role ) 
	local ship_mxsp= math.floor ( ( Ship_BSMxsp ( ship_role ) * Ship_MxspSa ( cha_role ) + Ship_MxspSb ( cha_role ) ) * MxspSa ( ship_role ) + MxspSb ( ship_role ) ) 
	return ship_mxsp  
end 

function Ship_Mxsp ( ship_role ) 
	local ship_mxsp=GetChaAttr( ship_role , ATTR_MXSP ) 
	return ship_mxsp  
end 

function Ship_Sp ( ship_role )
	local ship_sp=GetChaAttr( ship_role , ATTR_SP ) 
	return ship_sp  
end 

function Percentage_Random(a) 
	local x,y=a*1000000000,math.random(0,1000000000) 
	local z 
	if y<=x then 
		z=1 
		else z=0 
	end 
	return z 
end 

function Dis(a,b,c,d)
	local x1,y1,x2,y2=a,b,c,d 
	local dis=math.pow( math.pow(x1-x2, 2) + math.pow(y1-y2, 2), 0.5) 
	return dis 
end 

function Check_Direction(a) 
	local direction=GetChaAttr(a, ATTR_DIREC) 
	local division 
	if ((direction>=337.5) and (direction<360)) or ((direction>=0) and (direction<22.5)) then 
		division=1 
	elseif (direction>=22.5) and (direction<67.5) then 
		division=2 
	elseif (direction>=67.5) and (direction<112.5) then 
		division=1 
	elseif (direction>=112.5) and (direction<157.5) then 
		division=8 
	elseif (direction>=157.5) and (direction<202.5) then 
		division=7 
	elseif (direction>=202.5) and (direction<247.5) then 
		division=6 
	elseif (direction>=247.5) and (direction<292.5) then 
		division=5 
	elseif (direction>=292.5) and (direction<337.5) then 
		division=4 
	else
      return 
   end 
	return division 
end 

--��������� ����
function Hp_Dmg(role,dmg) 
	local map_name_DEFER = GetChaMapName ( role )
	local Can_Pk_Garner2 = Is_NormalMonster (role)
	local T=0.28
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_ATKER == "07xmas2" or map_name_DEFER == "07xmas2" or map_name_ATKER == "07xmas" or map_name_DEFER == "07xmas" then
		if Can_Pk_Garner2 == 0 then
			dmg = dmg * T
		end
	end	
	local statelv_mfd = GetChaStateLv ( role , STATE_MFD ) 
	local hp = Hp(role) 
	local sp = Sp(role) 
	if dmg <= 0 then 
		hp = hp - dmg 
		SetCharaAttr(hp, role, ATTR_HP )  
		return 
	end 
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Elf_Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Elf_Num , 0 , 1 )
		local PowerSheild = 0
		if CheckElfSkill == 2 then
			PowerSheild = ElfSKill_PowerSheild ( role , Elf_Item , Elf_Num , dmg )
			if PowerSheild ~= 0 then
				SystemNotice ( role , "��� ��������� ����� ������. ����� ����� ���������." )
			end
			dmg = dmg - PowerSheild
		end
	end

	if statelv_mfd >= 1 then 
		sp_change = statelv_mfd * 0.35 + 0.5
	local map_name_DEFER = GetChaMapName ( role )
	local Can_Pk_Garner2 = Is_NormalMonster (role)
		
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_ATKER == "07xmas2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_DEFER == "07xmas" then
			if Can_Pk_Garner2 == 0 then
				sp_change = statelv_mfd * 0.35 + 0.5
			end
		end
		local CheckItem_Death  = CheckItem_Death ( role )
		if CheckItem_Death == 1 then
			local Percentage_Death = Percentage_Random ( 0.5 )
			if Percentage_Death == 1 then
				sp_change =  sp_change*1.5
				SystemNotice ( role , "������������ ���� ������ ���� ������. ����� ����� ���������.")
			end
		end
		local Check_Heilong  = CheckItem_Heilong ( role )
		if Check_Heilong == 1 then
			local Percentage = Percentage_Random ( 0.5 )
			if Percentage == 1 then
				sp_change =  sp_change*1.5
				SystemNotice ( role , "������������ ���� ������ ������� �������. ������ �� ������ ��������.")
			end
		end
		local CheckItem_Heilong_app  = CheckItem_Heilong_app ( role )
		if CheckItem_Heilong_app == 1 then
			local Percentage1 = Percentage_Random ( 0.5 )
			if Percentage1 == 1 then
				sp_change = sp_change*1.5
				SystemNotice ( role , "������������ ���� ������ ������� �������. ������ �� ������ ��������.")
			end
		end
		local CheckItem_fighting = CheckItem_fighting ( role )
		local IsGarnerWiner = IsGarnerWiner(role)
		if CheckItem_fighting == 1 then
			if IsGarnerWiner == 1  then 
				local Percentage_1 = Percentage_Random ( 0.5 )
				if Percentage_1 == 1 then
					dmg = dmg*0.5
					SystemNotice ( role , "������������ ���� ���������� �����. ����� ����� ���������." )
				end
			elseif IsGarnerWiner == 2  then
				local Percentage_2 = Percentage_Random ( 0.5 )
				if Percentage_2 == 1 then
					dmg = dmg*0.6
					SystemNotice ( role , "������������ ���� ���������� �����. ����� ����� ���������." )
				end
			elseif IsGarnerWiner == 3  then
				local Percentage_3 = Percentage_Random ( 0.5 )
				if Percentage_3 == 1 then
					dmg = dmg*0.7
					SystemNotice ( role , "������������ ���� ���������� �����. ����� ����� ���������." )
				end
			elseif IsGarnerWiner == 4  then
				local Percentage_4 = Percentage_Random ( 0.5 )
				if Percentage_4 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "������������ ���� ���������� �����. ����� ����� ���������." )

				end
			elseif IsGarnerWiner == 5 then
				local Percentage_5 = Percentage_Random ( 0.3 )
				if Percentage_5 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "������������ ���� ���������� �����. ����� ����� ���������." )
				end
			end	
		end
		if dmg / sp_change <= sp then 
			sp = math.floor ( sp - dmg/sp_change ) 
		else 
			hp =math.floor ( hp - ( dmg/sp_change - sp ) ) 
			sp = 0 
			RemoveState ( role , STATE_MFD ) 
		end 
	else
		local Check_Nianshou = CheckItem_Nianshou ( role )
		local CheckItem_fighting = CheckItem_fighting ( role )
		local IsGarnerWiner = IsGarnerWiner(role)
		if Check_Nianshou == 1 then
			local Percentage = Percentage_Random ( 0.1 )
			if Percentage == 1 then
				dmg = dmg * -1
				SystemNotice ( role , "�������� ������������� ������. ������ �� � ����������.")
			end
		end
		if CheckItem_fighting == 1 then
			if IsGarnerWiner == 1  then 
				local Percentage_1 = Percentage_Random ( 0.5 )
				if Percentage_1 == 1 then
					dmg = dmg*0.5
					SystemNotice ( role , "������������ ���� ���������� �����. ����� ����� ���������." )
				end
			elseif IsGarnerWiner == 2  then
				local Percentage_2 = Percentage_Random ( 0.5 )
				if Percentage_2 == 1 then
					dmg = dmg*0.6
					SystemNotice ( role , "������������ ���� ���������� �����. ����� ����� ���������." )

				end
			elseif IsGarnerWiner == 3  then
				local Percentage_3 = Percentage_Random ( 0.5 )
				if Percentage_3 == 1 then
					dmg = dmg*0.7
					SystemNotice ( role , "������������ ���� ���������� �����. ����� ����� ���������." )

				end
			elseif IsGarnerWiner == 4  then
				local Percentage_4 = Percentage_Random ( 0.5 )
				if Percentage_4 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "������������ ���� ���������� �����. ����� ����� ���������." )

				end
			elseif IsGarnerWiner == 5 then
				local Percentage_5 = Percentage_Random ( 0.3 )
				if Percentage_5 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "������������ ���� ���������� �����. ����� ����� ���������." )
		
				end
			end	
		end
		local ZSExp = GetChaAttr( role , ATTR_CSAILEXP )
		if ZSExp > 0 and ZSExp < 100 then
			dmg = dmg * 0.945
		end
		if ZSExp >= 100 and ZSExp < 12100 then
			dmg = dmg * ( 0.95 - math.floor( math.pow( (ZSExp / 100) , 0.5 )) * 0.005)
		end
		hp = Hp(role) - dmg 
	end 
	SetCharaAttr(sp, role, ATTR_SP ) 
	SetCharaAttr(hp, role, ATTR_HP )  
end 

function Endure_Dmg ( role , dmg ) 
	local hp = Hp ( role ) - dmg 
	SetCharaAttr(hp, role, ATTR_HP ) 
end 

function Sp_Red(role,sp_reduce) 
	local sp = Sp(role) - sp_reduce  
	SetCharaAttr(sp, role, ATTR_SP ) 

end 

function Coefficientadjust_Steady_atk()	
	local steady_atk_maxreduce = 0.9 
	local steady_atk_maxreducepoint = 0.99 
	local steady_atk_maxluk=1500 
	local a = steady_atk_maxreduce / steady_atk_maxluk 
	local b = steady_atk_maxreducepoint / steady_atk_maxluk 
	return a,b,steady_atk_maxreduce,steady_atk_maxreducepoint 
end 

function SetSteady_atk(a) 
	local x,y,m,n = Coefficientadjust_Steady_atk() 
	local sum=1 
	local atkstep={}
	local atk={} 
	atk[Mnatk_final(a) - 1 ] = 0 
	for i = Mnatk_final(a),  Mxatk_final(a), 1 do 
		atkstep[i] = 1 
	end 
	local maxreduce = math.min(m, Luk_final(a) * x ) 
	local reducepoint = math.min(n, Luk_final(a) * y ) * (Mxatk_final(a) - Mnatk_final(a) ) 
	if reducepoint==0 then 
		atk[Mnatk_final(a)] = 1 
	return atk,sum 
	end 
	local steady_step = maxreduce / reducepoint 
	for i = 0, Mxatk_final(a) - Mnatk_final(a), 1 do 
		atkstep[ i + Mnatk_final(a) ] = atkstep [ i + Mnatk_final(a) ] - math.max(0, (maxreduce-i * steady_step) ) 
		sum = sum + atkstep[ i + Mnatk_final(a) ]  
		atk[ i + Mnatk_final(a) ] = sum 
	end 
	return atk,sum 
end 

function CheckSteady_atk(a) 
	local atk,sum = SetSteady_atk(a) 
	local x = math.random( 0, 10000 ) 
	local y = x * sum/10000 
	for i = Mnatk_final(a), Mxatk_final(a), 1 do 
      if y<=atk[i] then 
         return i 
      end 
   end 
	return Mnatk_fianl(a) 
end 


--	function  Skadd_Check( job , lv , tp , form_sklv)
--		LG( "Skadd", "enter function  Skadd_Check :" ) 
--		local itemuse = 0 
--		local cha_job = GetChaAttr( ATKER , ATTR_JOB ) 
--		if  cha_job ~= job then 
--			LG( "Skadd", "function Skadd:", "Unable to use. Class does not match" ) 
--			itemuse = 1 
--		end 
--		local cha_lv = GetChaAttr( ATKER , ATTR_LV ) 
--		if cha_lv < lv then 
--			LG( "Skadd", "function Skadd:", "Unable to use. Character level insufficient" ) 
--			itemuse = 2 
--		end 
--		local cha_tp = GetChaAttr( ATKER , ATTR_TP ) 
--		if cha_tp < tp then 
--			LG( "Skadd", "function Skadd:", "Unable to use. Insufficient skill point" ) 
--			itemuse = 3 
--		end 
--		if form_sklv > 0 then 
--			LG( "Skadd", "function Skadd:", "Unable to use. Already possessed this skill" ) 
--			itemuse = 4 
--		end 
--		LG( "Skadd", "out function  Skadd_Check :" ) 
--		return itemuse 
--	end 
	
function Lefthand_Atk ( role , atk )                       
	local sklv = GetSkillLv ( role , STATE_FSZ ) 
	add_atk = math.floor ( atk * ( 1.2 + sklv * 0.08 ) ) 
	return add_atk 
end 

function Check_Zmyj ( role , dmg_mul )
	local statelv = GetChaStateLv ( role , STATE_ZMYJ ) 
	local crt_rad = 0.2 + statelv * 0.02 
	if dmg_mul == 2 or dmg_mul == 1 then 
		a = Percentage_Random ( crt_rad ) 
		if a== 1 then 
			dmg_mul = 2 + statelv/2 
		end 
	end 
	return dmg_mul 
end 

function Check_Smyb ( role )
	local statelv = GetChaStateLv (role , STATE_SMYB ) 
	local hp = Hp ( role ) 
	local mxhp = Mxhp ( role ) 
	local atk_sa = 1 
	if hp <= mxhp * 0.2 and hp > 0 then 
		atk_sa = 1 + statelv * 0.1 
	end 
	local mnatk = Mnatk ( role ) * atk_sa 
	local mxatk = Mxatk ( role ) * atk_sa 
	return mnatk , mxatk 
end 

function Check_Ys_Rem ( role_atk , role_def )	
	Check_State ( role_atk , role_def ) 
	if atk_statecheck[STATE_YS] >= 1 then 
		RemoveState ( role_atk , STATE_YS ) 
	end 
end 

function Check_Bshd (statelv) 
	local statetime = 3 + statelv * 1 
	return statetime 
end 

function Atk_Raise ( rad , atker , defer )
	local atk = rad * math.random ( Mnatk( atker ) , Mxatk ( atker ) ) 
	local defer_def = Def ( defer ) 
	local defer_resist = Resist ( defer ) 
	dmg = Phy_Dmg ( atk, defer_def , defer_resist ) 
	return dmg 
end 

function TurnToCha ( role ) 
	local x_role = role 
	if ChaIsBoat ( role ) == 1 then 
		x_role = GetMainCha ( role ) 
	end 
	return x_role 
end 

function TurnToShip ( role ) 
	local x_role = role 
	if ChaIsBoat ( role ) == 0 then 
		x_role = GetCtrlBoat ( role ) 
		if x_role == nil then 
		end 
	end 
	return x_role 
end 

function ALLExAttrSet ( role )
	if IsPlayer ( role ) == 0 then
		ExAttrSet ( role ) 
		return 
	end
	if ChaIsBoat ( role ) == 0 then
		AttrRecheck ( role ) 
	else
		cha_role = GetMainCha ( role ) 
		ShipAttrRecheck ( cha_role , role ) 
	end 
end 

function Hp_Endure_Dmg ( role , dmg ) 
	if ChaIsBoat ( role ) == 0 then 
		Hp_Dmg ( role , dmg ) 
		local state_ys_lv =  GetChaStateLv (role , STATE_YS ) 
		if state_ys_lv >= 1 then 
			RemoveState ( role , STATE_YS ) 
		end 
	else 
		Endure_Dmg ( role , dmg ) 
	end 
end 

------���������� ��� ����� �������
function Boat_plus_MNATk( Lv , mnatk)
	local mnatk_new = 0
	if Lv < 1 then
		return mnatk*1.09
	end
	if Lv > 100 then
		return mnatk*1.09
	end
	if Lv < 60 then
		mnatk_new = ( 1 + ( Lv - 20 ) / 120 ) * mnatk * 3
		return mnatk_new
	end
	if Lv >=60 then
		mnatk_new = ( 1 + ( 60 - 20 ) / 120 ) * mnatk + ( Lv - 60 ) * 5
		return mnatk_new
	end
end
--���������� ���� ����� �������
function Boat_plus_MXATk( Lv , mxatk)
	local mxatk_new = 0
	if Lv < 1 then
		return mxatk_new
	end
	
	if Lv > 100 then
		return mxatk_new*1.09
	end
	if Lv < 60 then
		mxatk_new = ( 1 + ( Lv - 20 ) / 120 ) * mxatk * 3
		return mxatk_new
	end
	if Lv >=60 then
		mxatk_new = ( 1 + ( 60 - 20 ) / 120 ) * mxatk + ( Lv - 60 ) * 5
		return mxatk_new
	end
end
--���������� ���� �������
function Boat_plus_def ( Lv , def )
	local def_new = 0
	if  Lv < 1 then
		return def *1.1
	end
	if Lv > 100 then
		return def *1.09
	end
	if Lv < 60 then
		def_new = ( 1 + ( Lv - 20 ) / 120 ) * def * 1.15
		return def_new
	end
	if Lv >= 60 then
		def_new = ( 1 + ( 60 - 20 ) / 120 ) * def + ( Lv - 60 ) * 3
		return def_new
	end
end
--���������� �� �������
function Boat_plus_Mxhp ( Lv , Mxhp )
	local Mxhp_new = 0
	
	if Lv < 1 then
		LG("Boat_plus_Mxhp","Ship level is lower than 1")
		return Mxhp*1.1
	end
	if Lv > 100 then
		LG("Boat_plus_Mxhp","Ship level higher than 100")
		return Mxhp*1.1
	end
	if Lv < 60 then
		Mxhp_new = ( 1 + ( Lv - 20 ) / 120 ) * Mxhp * 1.1
		LG ( "Boat_plus_def","def_new2 = " ,  Mxhp_new ) 
		return Mxhp_new
	end
	if Lv >= 60 then
		Mxhp_new = ( 1 + ( 60 - 20 ) / 120 ) * Mxhp + (Lv - 60 )  * 2
		LG ( "Boat_plus_def","def_new2 = " ,  Mxhp_new ) 
		return Mxhp_new
	end
end
--���������� �������� ����������� �������
function Boat_plus_Mspd ( Lv , Mspd )
	local Mspd_new = 0
	if Lv < 1 then
		return Mspd*1.09
	end
	if Lv >100 then
		return Mspd*1.09
	end
	if Lv < 60 then
		Mspd_new = ( 1 + ( Lv -30) / 300 ) * Mspd * 1.1
		return Mspd_new
	end
	if Lv >=60 then
		Mspd_new = ( 1 + ( 60 -30) / 300 ) * Mspd *1.2
		return Mspd_new
	end

end

--���������� ��� �������
function get_cha_guild_id(cha) 
    local ply_cha = CheckChaRole(cha) 
    if ply_cha == 1 then 
        return GetChaGuildID(cha) 
    else 
        local map_copy = GetChaMapCopy(cha)
        local side_id = GetChaSideID(cha) 
		if side_id == 1 then
			return GetMapCopyParam2(map_copy, 4 ) 
		elseif side_id == 2 then
			return GetMapCopyParam2(map_copy, 3 ) 
		end
    end 
end

--���������� ������� � ������ ��� ���
function is_teammate(cha1, cha2) 
    if cha1 == 0 or cha2 == 0 then 
        return 0 
    end 
    if cha1 == cha2 then 
        return 1 
    end
    local ply1 = GetChaPlayer(cha1) 
    local ply2 = GetChaPlayer(cha2) 
    if ply1 ~= 0 and ply2 ~= 0 then 
        if ply1 == ply2 then 
            return 1 
        end 
        local team_id1, team_id2 
        team_id1 = GetChaTeamID(cha1) 
        team_id2 = GetChaTeamID(cha2) 
        if team_id1 ~= 0 and team_id2 ~= 0 and team_id1 == team_id2 then 
            return 1 
        end 
    end 
    return 0 
end 

--���������� ��� ���� � ��� ���� �� ������ ����� �����
function is_friend(cha1, cha2) 
    local friend_target = 1 
    local Map_type = GetChaMapType( cha1 )
    if CheckChaRole( cha1 ) == 0 and Map_type ~= 2 then
	if CheckChaRole( cha2 ) == 0 then
		return 1 
	else 
		return 0 
	end 

    end
	local gm = GetGmLv(cha1)
	if gm == 99 then
	end
		if Map_type == 1 then 
			if CheckChaRole ( cha1 ) == 1 then  
					if CheckChaRole( cha2 ) == 0 then
						return 0 
					else 
						return 1 
					end 
			end 
		end 
		if Map_type == 4 then
			if Is_NormalMonster (cha1) == 1 then
				if Is_NormalMonster (cha2) == 1 then
					return 1
				end 
			end 
			local team = is_teammate(cha1,cha2)  -- � ������
			if team == 1 then 
				return 1 
			else 
				local guild_id1, guild_id2  -- � �������
				guild_id1 = get_cha_guild_id(cha1) 
				guild_id2 = get_cha_guild_id(cha2) 
				if guild_id1 ~= 0 and guild_id2 ~= 0 and guild_id1 == guild_id2 then 
					return 1  
				else
					return 0 
				end
			end
		end 
	    if  Map_type ==3 then
		    local team = is_teammate(cha1, cha2) 
		    if team == 1 then  
		        return 1 
		    else 
			return 0 
		    end  
	    end
	    if cha1 == 0 or cha2 == 0 then
	        return 0 
	    end 
	    if Map_type == 2 then
		if Is_NormalMonster (cha1) == 1 then
			if Is_NormalMonster (cha2) == 1then 
				return 1 
			end 
		end 
		local guild_id1, guild_id2 
		guild_id1 = get_cha_guild_id(cha1) 
		guild_id2 = get_cha_guild_id(cha2) 
		if guild_id1 ~= 0 and guild_id2 ~= 0 and guild_id1 == guild_id2 then 
			return 1 
		else 
			return 0 
		end
	    end 
	    if Map_type == 5 then
		local guild_side_1, guild_side_2 
		guild_side_1 = GetChaSideID(cha1) 
		guild_side_2 = GetChaSideID(cha2) 
		if guild_side_1 == guild_side_2 then
			return 1 
	        else
		    return 0
		end
	    end 
	    return friend_target 
 end 

--���������� ���������� �������� ��� ���
function Is_NormalMonster ( role )
  local cha = TurnToCha ( role )
  local Cha_Num = GetChaTypeID( cha )
  
  for i = 0 , UnNormalMonster_Num , 1 do
	if Cha_Num == UnNormalMonster_ID [i] then
		return 0
	end
  end
  return 1
end

--���������� ������ ��������
function CheckMonsterDead ( role )
	if role == nil then
		return 1
	end
	if Hp(role) <= 0 then
		return 1
	end
	return 0
end

--���������� ����� ������ 
function ReCheck_Skill_Dmg ( MaxDmg , MinDmg , Ran )
	local a = 0
	a = Percentage_Random ( Ran / 100)
	if a == 1 then
		return MaxDmg
	else
		return MinDmg
	end
end

--���������� ������� ����� ���
function ReCheck_PK_Lv ( ATKER , DEFER )
	local Lv_atker = Lv ( ATKER )
	local Lv_defer = Lv ( DEFER )
	return Lv_atker - Lv_defer
end

--���
function after_player_kill_player( ATKER, DEFER )
	SetCharaAttr(0, DEFER, ATTR_SP)
	local map_name_ATKER = GetChaMapName ( ATKER )
	local map_name_DEFER = GetChaMapName ( DEFER )
	local MGPK_MapNameNum = 10
	local MGPK_MapName = {}
	MGPK_MapName[0]  = "puzzleworld"
	MGPK_MapName[1]  = "puzzleworld2"
	MGPK_MapName[2]  = "abandonedcity"
	MGPK_MapName[3]  = "abandonedcity2"
	MGPK_MapName[4]  = "abandonedcity3"
	MGPK_MapName[5]  = "darkswamp"
	MGPK_MapName[6]  = "hell"
	MGPK_MapName[7]  = "hell2"
	MGPK_MapName[8]  = "hell3"
	MGPK_MapName[9]  = "hell4"
	MGPK_MapName[10] = "hell5"
	local ATKER_Get_Ry = 0
	local DEFER_Get_Ry = 0
	local ATKER_Get_chaos = 0
	local DEFER_Get_chaos = 0
	local DEFER_Get1_Ry = 0
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_ATKER == "07xmas2" or map_name_DEFER == "07xmas2" then
		local Lv_ATKER = Lv( ATKER )
		local Lv_DEFER = Lv( DEFER )
		local Lv_dif = Lv_ATKER - Lv_DEFER
		-- ������ ������
		if Lv_ATKER == Lv_DEFER then
			ATKER_Get_chaos = 5
			DEFER_Get_chaos = -3
			SystemNotice ( ATKER , "�� ���������� ���������� � ��������� 5 ����� �����!" )
			SystemNotice ( DEFER , "��� ������� ���������. �������� 3 ���� �����!")
		end
		-- ������� ���������� ������ �� 5
		if Lv_dif >= 1 and Lv_dif <= 5 then
			ATKER_Get_chaos = 5
			DEFER_Get_chaos = -3
			SystemNotice ( ATKER , "�� ���������� ���������� � ��������� 5 ����� �����!" )
			SystemNotice ( DEFER , "��� ������� ���������. �������� 3 ���� �����!")
		end
		-- ������� ���������� ������ �� 10
		if Lv_dif >= 6 and Lv_dif <= 10 then
			ATKER_Get_chaos = 3
			DEFER_Get_chaos = -2
			SystemNotice ( ATKER , "�� ���������� ���������� � ��������� 3 ���� �����!" )
			SystemNotice ( DEFER , "��� ������� ���������. �������� 2 ���� �����!")
		end
		-- ������� ���������� ������ �� 15
		if Lv_dif >= 11 and Lv_dif <= 15 then
			ATKER_Get_chaos = 2
			DEFER_Get_chaos = -1
			SystemNotice ( ATKER , "�� ���������� ������� ���������� � ��������� 2 ���� �����!" )
			SystemNotice ( DEFER , "��� ������� ������� ���������. �������� 1 ���� �����!")
		end
		-- ������� ���������� ������ 16
		if Lv_dif >= 16 then
			ATKER_Get_chaos = 1
			DEFER_Get_chaos = 0
			SystemNotice ( ATKER , "�� ���������� ����� ������� ���������� � ��������� 1 ���� �����!" )
			SystemNotice ( DEFER , "��� ������� ����� ������� ���������. ���� ���� �� ��������!")
		end
		-- ������� ���������� ������ �� 5
		if Lv_dif <= -1 and Lv_dif >= -5 then
			ATKER_Get_chaos = 5
			DEFER_Get_chaos = -3
			SystemNotice ( ATKER , "�� ���������� ���������� � ��������� 3 ���� �����!" )
			SystemNotice ( DEFER , "��� ������� ���������. �������� 2 ���� �����!")
		end
		-- ������� ���������� ������ �� 10
		if Lv_dif <= -6 and Lv_dif >= -10 then
			ATKER_Get_chaos = 7
			DEFER_Get_chaos = -4
			SystemNotice ( ATKER , "�� ���������� ���������� � ��������� 3 ���� �����!" )
			SystemNotice ( DEFER , "��� ������� ���������. �������� 2 ���� �����!")
		end
		-- ������� ���������� ������ �� 15
		if Lv_dif <= -11 and Lv_dif >= -15 then
			ATKER_Get_chaos = 9
			DEFER_Get_chaos = -5
			SystemNotice ( ATKER , "�� ���������� �������� ���������� � ��������� 9 ����� �����!" )
			SystemNotice ( DEFER , "��� ������� ������ ���������. �������� 5 ����� �����!")
		end
		-- ������� ���������� ������ 16
		if Lv_dif <= -16 then
			ATKER_Get_chaos = 10
			DEFER_Get_chaos = -7
			SystemNotice ( ATKER , "�� ���������� ����� �������� ���������� � ��������� 10 ����� �����!" )
			SystemNotice ( DEFER , "��� ������� ����� ������ ���������. �������� 7 ����� �����!")
		end

		local ATKER_medal = GetChaItem2 ( ATKER , 2 , 3849 )
		local DEFER_medal = GetChaItem2 ( DEFER , 2 , 3849 )
		local AtkerPoint = GetItemAttr ( ATKER_medal , ITEMATTR_MAXENERGY )
		local DeferPoint = GetItemAttr ( DEFER_medal , ITEMATTR_MAXENERGY )
		 SetItemAttr ( ATKER_medal , ITEMATTR_VAL_AGI, Test+1 )
		 SetItemAttr ( DEFER_medal , ITEMATTR_VAL_DEX, Tester+1 )
		local AtkerPoint = AtkerPoint + ATKER_Get_chaos
		local DeferPoint = DeferPoint + DEFER_Get_chaos
			if DeferPoint <= 0 then
				DeferPoint = 0
			end
			if ATKER == DEFER then
				ATKER_Get_chaos = ATKER_Get_chaos - 1
			end
		SetItemAttr ( ATKER_medal , ITEMATTR_MAXENERGY , AtkerPoint)
		SetItemAttr ( DEFER_medal , ITEMATTR_MAXENERGY , DeferPoint)
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local map_copy = GetChaMapCopy ( ATKER )
		MapCopyNotice ( map_copy , Notice_map )
		
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "["..def_name.."] ������ ��������� �� ["..atk_name.."]"
		Notice ( Notice_all )
	end

	if map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "� ������� ������� �������: ["..def_name.."] ������ ��������� �� ["..atk_name.."]"
		Notice ( Notice_all )
	end
	if map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "��-��-��, ��������� ������� ������� �����: ["..def_name.."] ������ ��������� �� ["..atk_name.."]!"
		Notice ( Notice_all )
	end
	if map_name_ATKER == "teampk" or map_name_DEFER == "teampk" then 
	   local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "["..def_name.."] ������ ��������� �� ["..atk_name.."]"
		Notice ( Notice_all )  
	 end
	if map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "["..def_name.."] ������ ��������� �� ["..atk_name.."]"
		Notice ( Notice_all )
	end

	if map_name_ATKER == "guildwar" or map_name_DEFER == "guildwar" then

		local ATKER = TurnToCha ( ATKER )
		local DEFER = TurnToCha ( DEFER )
		local Num_shengsi_1= CheckBagItem(DEFER,2382)

	if Num_shengsi_1 >=1 then
		TakeItem( DEFER, 0,2382, 1 )    
                GiveItem ( ATKER , 0 , 2383  , 1 , 4 )
	
        else
	   if GetChaGuildID(DEFER) <= 100 and GetChaGuildID(DEFER) > 0 then
              GiveItem ( ATKER , 0 , 2858  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) > 100 and GetChaGuildID(DEFER) <= 200 then
	      GiveItem ( ATKER , 0 , 2859  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) == 0 then
		SystemNotice ( ATKER , "���� �� ��������� �� � �����, �� � �������" )
	   end
	end
     end

    if map_name_ATKER == "guildwar2" or map_name_DEFER == "guildwar2" then
		local ATKER = TurnToCha ( ATKER )
		local DEFER = TurnToCha ( DEFER )
		local Num_shengsi_2= CheckBagItem(DEFER,2382)
	if Num_shengsi_2 >=1 then
		TakeItem( DEFER, 0,2382, 1 )   
                GiveItem ( ATKER , 0 , 2383  , 1 , 4 )
        else
	   if GetChaGuildID(DEFER) <= 100 and GetChaGuildID(DEFER) > 0 then
              GiveItem ( ATKER , 0 , 2858  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) > 100 and GetChaGuildID(DEFER) <= 200 then
	      GiveItem ( ATKER , 0 , 2859  , 1 , 4 )
	   end
	   if GetChaGuildID(DEFER) == 0 then
			SystemNotice ( ATKER , "���� �� ��������� �� � �����, �� � �������" )
	   end
	end
     end
	------
	-- �������� � ������
	------
    local C_Map = 0
	for C_Map = 0 , MGPK_MapNameNum , 1 do
	    if  map_name_ATKER == MGPK_MapName[C_Map] then
	    
			local atk_name = GetChaDefaultName ( ATKER )
			local def_name = GetChaDefaultName ( DEFER )
			local map_copy = GetChaMapCopy ( ATKER )
			local Notice_map = "����� ["..def_name.."] ������ ��������� �� ["..atk_name.."]"
			
			MapCopyNotice ( map_copy , Notice_map )
			
			ATKER = TurnToCha ( ATKER )
			DEFER = TurnToCha ( DEFER )
			
			local Have_TSWW = CheckBagItem( DEFER , 3846 )
			--����
			if Have_TSWW <= 0 then
				Dead_Punish_ItemURE ( DEFER )
				MGPK_Dead_Punish_Exp ( DEFER )
			else
				local j = DelBagItem( DEFER , 3846 , 1 )
				if j == 0 then
					LG ( "NewItem" , "������ ��� �������� ����� ����" )
				else
					SystemNotice ( DEFER , "����� ���� ������ ���� �� ������ �����" )
				end
			end

	    end
	end
	
	
if map_name_ATKER == "garner" or map_name_DEFER == "garner" or map_name_ATKER == "magicsea" or map_name_DEFER == "magicsea" or map_name_ATKER == "darkblue" or map_name_DEFER == "darkblue" or map_name_ATKER == "binglang2" or map_name_DEFER == "binglang2" or map_name_ATKER == "shalan2" or map_name_DEFER == "shalan2" or map_name_ATKER == "leiting2" or map_name_DEFER == "leiting2" or map_name_ATKER == "eastgoaf" or map_name_DEFER == "eastgoaf" or map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" or map_name_ATKER == "lonetower" or map_name_DEFER == "lonetower" or map_name_ATKER == "winterland" or map_name_DEFER == "winterland" then
   
   
  local ATKER_RYZ = GetChaItem2 ( ATKER , 2 , 3849 )
  local DEFER_RYZ = GetChaItem2 ( DEFER , 2 , 3849 )
  local Lv_ATKER = Lv( ATKER )
  local Lv_DEFER = Lv( DEFER )
  local Lv_dif = Lv_ATKER - Lv_DEFER
  local money = GetChaAttr ( role , ATTR_GD ) 

  --��������
  local Tester = GetItemAttr ( DEFER_RYZ , ITEMATTR_VAL_DEX )
  --�����
  local Chest  = GetItemAttr ( ATKER_RYZ , ITEMATTR_VAL_STR )
  local Chester  = GetItemAttr ( DEFER_RYZ , ITEMATTR_VAL_STR )
  --�������
  local Test = GetItemAttr ( ATKER_RYZ , ITEMATTR_VAL_AGI )
  
	--������� ���
	if Lv_dif == 0 then
  --�����
  SetItemAttr ( ATKER_RYZ , ITEMATTR_VAL_STR, Chest+3 )
  SetItemAttr ( DEFER_RYZ , ITEMATTR_VAL_STR, Chester-2 )
  --��������\������
  SetItemAttr ( ATKER_RYZ , ITEMATTR_VAL_AGI, Test+1 )
  SetItemAttr ( DEFER_RYZ , ITEMATTR_VAL_DEX, Tester+1 )
  
  local minus = -15 -- ���������
  
  AddCreditX (ATKER, 20)
  AddCreditX (DEFER, minus)

  SystemNotice ( ATKER ,"�� �������� ����������. �������� ����� �����: 1. �������� 20 ����� ��������� ")
  SystemNotice ( DEFER ,"�� ��������� ���������. �������� ����� �����: 1. �������� 15 ����� ��������� ")
  RefreshCha (ATKER)
  RefreshCha (DEFER)
  end
	-- ������� ���������� ������ �� 15
	if Lv_dif <= -1 and Lv_dif >= -15 then
  --�����
  SetItemAttr ( ATKER_RYZ , ITEMATTR_VAL_STR, Chest+4 )
  SetItemAttr ( DEFER_RYZ , ITEMATTR_VAL_STR, Chester-5 )
  --��������\������
  SetItemAttr ( ATKER_RYZ , ITEMATTR_VAL_AGI, Test+1 )
  SetItemAttr ( DEFER_RYZ , ITEMATTR_VAL_DEX, Tester+1 )
  
  local minus = -10 -- ���������
  
  AddCreditX (ATKER, 17)
  AddCreditX (DEFER, minus)

  SystemNotice ( ATKER ,"�� �������� �������� ����������. �������� ����� �����: 4. �������� 17 ����� ��������� ")
  SystemNotice ( DEFER ,"�� ��������� ���������. �������� ����� �����: 3. �������� 10 ����� ��������� ")
  RefreshCha (ATKER)
  RefreshCha (DEFER)
  end 
	-- ������� ���������� ������ 16
	if Lv_dif <= -16 then
  --�����
  SetItemAttr ( ATKER_RYZ , ITEMATTR_VAL_STR, Chest+6 )
  SetItemAttr ( DEFER_RYZ , ITEMATTR_VAL_STR, Chester-7 )
  --��������\������
  SetItemAttr ( ATKER_RYZ , ITEMATTR_VAL_AGI, Test+1 )
  SetItemAttr ( DEFER_RYZ , ITEMATTR_VAL_DEX, Tester+1 )
  
  local minus = -25 -- ���������
  
  AddCreditX (ATKER, 30)
  AddCreditX (DEFER, minus)

  SystemNotice ( ATKER ,"��  �������� ����� �������� ����������. �������� ����� �����: 6 �������� 30 ����� ���������")
  SystemNotice ( DEFER ,"�� ��������� ���������. �������� ����� �����: 7 �������� 25 ����� ��������� ")
  RefreshCha (ATKER)
  RefreshCha (DEFER)
  end
	-- ������� ���������� ������ �� 15
	if Lv_dif >= 1 and Lv_dif <= 19 then
	--������
	if Lv_DEFER==55 or Lv_DEFER==60 then
	
		--�����
	  SetItemAttr ( ATKER_RYZ , ITEMATTR_VAL_STR, Chest+1 )
	  SetItemAttr ( DEFER_RYZ , ITEMATTR_VAL_STR, Chester+0 )
	  --��������\������
	  SetItemAttr ( ATKER_RYZ , ITEMATTR_VAL_AGI, Test+1 )
	  SetItemAttr ( DEFER_RYZ , ITEMATTR_VAL_DEX, Tester+1 )
	  
	  local minus = 5 -- ���������
	  
	  AddCreditX (ATKER, minus)
	  AddCreditX (DEFER, 0)

	  SystemNotice ( ATKER ,"��  �������� ����� ������� ����������. �������� ����� �����: 1. �������� 5 ����� ��������� ")
	  SystemNotice ( DEFER ,"�� ��������� ���������. �������� ����� �����: 0. �������� 0 ����� ��������� ")
	  RefreshCha (ATKER)
	  RefreshCha (DEFER)
		
		
	return
	end
	
  --�����
  SetItemAttr ( ATKER_RYZ , ITEMATTR_VAL_STR, Chest+1 )
  SetItemAttr ( DEFER_RYZ , ITEMATTR_VAL_STR, Chester-1 )
  --��������\������
  SetItemAttr ( ATKER_RYZ , ITEMATTR_VAL_AGI, Test+1 )
  SetItemAttr ( DEFER_RYZ , ITEMATTR_VAL_DEX, Tester+1 )
  
  local minus = -3 -- ���������
  
  AddCreditX (ATKER, 5)
  AddCreditX (DEFER, minus)

  SystemNotice ( ATKER ,"�� �������� ������� ����������. �������� ����� �����: 1. �������� 5 ����� ��������� ")
  SystemNotice ( DEFER ,"�� ��������� ���������. �������� ����� �����: 1. �������� 3 ���� ��������� ")
  RefreshCha (ATKER)
  RefreshCha (DEFER)
  end
	-- ������� ���������� ������ 20
	if Lv_dif >= 20 then
	--������
	if Lv_DEFER==55 or Lv_DEFER==60 then
	
		--�����
	  SetItemAttr ( ATKER_RYZ , ITEMATTR_VAL_STR, Chest+1 )
	  SetItemAttr ( DEFER_RYZ , ITEMATTR_VAL_STR, Chester+0 )
	  --��������\������
	  SetItemAttr ( ATKER_RYZ , ITEMATTR_VAL_AGI, Test+1 )
	  SetItemAttr ( DEFER_RYZ , ITEMATTR_VAL_DEX, Tester+1 )
	  
	  local minus = 5 -- ���������
	  
	  AddCreditX (ATKER, minus)
	  AddCreditX (DEFER, 0)

	  SystemNotice ( ATKER ,"��  �������� ����� ������� ����������. �������� ����� �����: 1. �������� 5 ����� ��������� ")
	  SystemNotice ( DEFER ,"�� ��������� ���������. �������� ����� �����: 0. �������� 0 ����� ��������� ")
	  RefreshCha (ATKER)
	  RefreshCha (DEFER)
		
		
	return
	end
	
	
  --�����
  SetItemAttr ( ATKER_RYZ , ITEMATTR_VAL_STR, Chest-8 )
  SetItemAttr ( DEFER_RYZ , ITEMATTR_VAL_STR, Chester+2 )
  --��������\������
  SetItemAttr ( ATKER_RYZ , ITEMATTR_VAL_AGI, Test+1 )
  SetItemAttr ( DEFER_RYZ , ITEMATTR_VAL_DEX, Tester+1 )
  
  local minus = -70 -- ���������
  
  AddCreditX (ATKER, minus)
  AddCreditX (DEFER, 10)

  SystemNotice ( ATKER ,"��  �������� ����� ������� ����������. �������� ����� �����: 8. �������� 70 ����� ��������� ")
  SystemNotice ( DEFER ,"�� ��������� ���������. �������� ����� �����: 2. �������� 10 ����� ��������� ")
  RefreshCha (ATKER)
  RefreshCha (DEFER)
  end
  
  end

	end

--����� �� ������ ����
function MGPK_Dead_Punish_Exp ( dead )
	local map_name = GetChaMapName ( dead )
	dead = TurnToCha ( dead ) 
	local lv = GetChaAttr( dead, ATTR_LV ) 
	local exp_red 
	local exp = Exp(dead) 
	local nlexp = GetChaAttrI ( dead , ATTR_NLEXP ) 
	local clexp = GetChaAttrI ( dead , ATTR_CLEXP ) 
	local exp_per = math.min ( math.floor ( math.abs( nlexp - clexp ) * 0.02 ) , math.max ( exp - clexp , 0 ) )
	if  exp <= clexp then 
		exp_red = 0 
	else 
		exp_red = math.pow( lv , 2 ) * 20
	end 
	if exp_red > exp_per then
		exp_red = exp_per
	end
	if Lv ( dead ) >= 80 then 
		exp_red = math.floor ( exp_red / 50 )
		exp_red_80 = exp_red * 50 
		SystemNotice (dead , "����� �� ������. �������� �����: "..exp_red_80 ) 
	else 
		SystemNotice (dead , "����� �� ������. �������� �����: "..exp_red ) 
	end
	exp = Exp(dead) - exp_red
	SetChaAttrI( dead , ATTR_CEXP , exp ) 
	local name = GetChaDefaultName ( dead )
	LG ( "PKdie_exp" , "Character Name" , name , "Current Lv= ", lv , "Death EXP penalty= " , exp_red )
end 

--������ ������
function Add_ItemAttr_RYZ ( Cha_role ,role , attrtype , Num )
	local i = 0
	local attr_num = GetItemAttr ( role , attrtype )

	attr_num = attr_num + Num
	i = SetItemAttr ( role ,attrtype , attr_num )
	local attr_num_1 = GetItemAttr ( role , attrtype )

	if i == 0 then
		LG("RYZ_PK","���������� ����� ����������, ������")
	end
	
end

function Get_ItemAttr_Join ( Cha_role )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( Cha_role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end

	local role_RYZ = GetChaItem2 ( Cha_role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_CON
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	return attr_num
	
end

function Get_ItemAttr_Win ( Cha_role )

	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( Cha_role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end	

	local role_RYZ = GetChaItem2 ( Cha_role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STA
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	return attr_num
	
end

function AddYongYuZhi( role ,  value )
	
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		SystemNotice ( role , "� ��� ��� ������ ������" )
		return 0
	
	end
	
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STR
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	local attr_num = attr_num + value
	local i = 0
	SetChaKitbagChange ( role , 0 )
	i = SetItemAttr ( role_RYZ ,attrtype , attr_num )
	
	if i == 0 then 
		return 0
	end
	if value > 0 then
		SystemNotice ( role , "�������� "..value.." ����� �����" )
	end
	if value < 0 then
		local a = -1 * value
		SystemNotice ( role , "�������� "..a.." ����� �����" )
	end

	SynChaKitbag ( role , 7 )
	return 1
end
-- ����� �����
function TakeZuDuiGongXianDu( role , value )
	
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		SystemNotice ( role , "� ��� ��� ������ ������" )
		return 0
	
	end
	
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	local attr_num = attr_num - value
	local i = 0
	SetChaKitbagChange ( role , 0 )
	i = SetItemAttr ( role_RYZ ,attrtype , attr_num )
	
	if i == 0 then 
		return 0
	end
	if value < 0 then
		local a = value * -1
		SystemNotice ( role , "�������� "..value.." ����� ����� ������" )
	end
	if value > 0 then
		SystemNotice ( role ,"�������� "..a.." ����� ����� ������" )
		--LG("RYZ_Take_Zdgx" , " uses Team Contribution points, deducts "..value.."point")
	end
	SynChaKitbag ( role , 7 )
	return 1
end

function HasZuDuiGongXianDu ( role ,value )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end

	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if attr_num >= value then
		return 1
	else
		return 0
	end
end

function LessYongYuZhi( role , str , value )
		local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		return 0
	end

	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_VAL_STR
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if str == ">" then
		if attr_num > value then
			return 1
		end
	elseif str == "<" then
		if attr_num < value then
			return 1
		end
	elseif str == "=" then
		if attr_num == value then
			return 1
		end
	else
		LG("RYZ_PK","������!")
	end


end

function Add_RYZ_TeamPoint ( role ,count_num , add_num )
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		return
	end
	local role_RYZ = GetChaItem2 ( role , 2 , 3849 )
	local attrtype = ITEMATTR_MAXURE
	local attr_num = GetItemAttr ( role_RYZ , attrtype )
	if attr_num >= 1000 then
		return
	end
	attr_num = attr_num + add_num
	local a = math.min ( 1 , ( count_num - 2 ) * 0.3 )
	local b = 0
	b = Percentage_Random ( a )
	local i = 0
	if b == 1 then

		SetChaKitbagChange ( role , 0 )
		i = SetItemAttr ( role_RYZ ,attrtype , attr_num )

		if i == 0 then
			LG("RYZ_PK","Increase Party Contribution value failed")
			return
		end
		SynChaKitbag ( role , 7 )
	
		SystemNotice ( role ,"�������� "..add_num.." ����� ����� ������")
	end
end

--����� ������ ������

--���������� ����������� ������
function Take_Atk_ItemURE ( role )
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 1 and boat == 0 then
		local Item_1 = 0
		local Item_2 = 0
		Item_1 = GetChaItem ( role , 1 , 6 )
		Item_2 = GetChaItem ( role , 1 , 9 )
		
		local Item_URE = 0
		local Take_Num = 1
		local i = 0
		local Item1_Type = Check_Repair_ItemType ( Item_1 )
		local Item2_Type = Check_Repair_ItemType ( Item_2 )
		if Item_1 ~= 0 and Item_1 ~= nil then
			local a = 0.03
			local b = Percentage_Random (a)
			if b == 1 and Item1_Type == 1 then
				Item_URE = GetItemAttr ( Item_1 , ITEMATTR_URE )
				if Item_URE < 50 then
					Take_Num = 0
				end
				Item_URE = Item_URE - Take_Num
				i = SetItemAttr ( Item_1 , ITEMATTR_URE , Item_URE )
				if i == 0 then
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 6 , 0 )
				end
			end
		end
		Item_URE = 0
		Take_Num = 1
		i = 0
		if Item_2 ~= 0 and Item_2 ~= nil then
			local a = 0.03
			local b = Percentage_Random (a)
			if b == 1 and Item2_Type == 1 then
			Item_URE = GetItemAttr ( Item_2 , ITEMATTR_URE )
				if Item_URE < 50 then
					Take_Num = 0
				end
				Item_URE = Item_URE - Take_Num
				i = SetItemAttr ( Item_2 , ITEMATTR_URE , Item_URE )
				if i == 0 then
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 9 , 0 )
				end
			end
		end
	end
end

--���������� �������� ��������� ��������
function Take_Def_ItemURE ( role )
	local def = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if def == 1 and boat == 0 then
		local Item_1 = 0
		local Item_2 = 0
		local Item_3 = 0
		local Item_4 = 0
		Item_1 = GetChaItem ( role , 1 , 0 )
		Item_2 = GetChaItem ( role , 1 , 2 )
		Item_3 = GetChaItem ( role , 1 , 3 )
		Item_4 = GetChaItem ( role , 1 , 4 )
		local Item_URE = 0
		local Take_Num = 1
		local i = 0
		if Item_1 ~= 0 and Item_1 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_1 , ITEMATTR_URE )
				if Item_URE < 50 then
					Take_Num = 0
				end
				Item_URE = Item_URE - Take_Num
				i = SetItemAttr ( Item_1 , ITEMATTR_URE , Item_URE )
				if i == 0 then
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 0 , 0 )
				end
			end
		end
		Item_URE = 0
		Take_Num = 1
		i = 0
		if Item_2 ~= 0 and Item_2 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_2 , ITEMATTR_URE )
				if Item_URE < 50 then
					Take_Num = 0
				end
				Item_URE = Item_URE - Take_Num
				i = SetItemAttr ( Item_2 , ITEMATTR_URE , Item_URE )
				if i == 0 then
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 2 , 0 )
				end
			end
		end
		Item_URE = 0
		Take_Num = 1
		i = 0
		if Item_3 ~= 0 and Item_3 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_3 , ITEMATTR_URE )
				if Item_URE < 50 then
					Take_Num = 0
				end
				Item_URE = Item_URE - Take_Num
				i = SetItemAttr ( Item_3 , ITEMATTR_URE , Item_URE )
				if i == 0 then
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 3 , 0 )
				end
			end
		end
		Item_URE = 0
		Take_Num = 1
		i = 0
		if Item_4 ~= 0 and Item_4 ~= nil then
			local a = 0.015
			local b = Percentage_Random ( a )
			if b == 1 then
				Item_URE = GetItemAttr ( Item_4 , ITEMATTR_URE )
				if Item_URE < 50 then
					Take_Num = 0
				end
				Item_URE = Item_URE - Take_Num
				i = SetItemAttr ( Item_4 , ITEMATTR_URE , Item_URE )
				if i == 0 then
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 4 , 0 )
				end
			end
		end
	end
end

--����� ���������
function Dead_Punish_ItemURE ( role )
	local Player = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	local Punish = 0.07
	
	Dead_Punish_Item_Num = 5							--Ҫ�۳���װ��λ��
	
	local Dead_Punish_Item_WZ = { }
	Dead_Punish_Item_WZ [0] = 0
	Dead_Punish_Item_WZ [1] = 2
	Dead_Punish_Item_WZ [2] = 3
	Dead_Punish_Item_WZ [3] = 4
	Dead_Punish_Item_WZ [4] = 6
	Dead_Punish_Item_WZ [5] = 9

	local Dead_Punish_Item = { }
	Dead_Punish_Item [0] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [0] )
	Dead_Punish_Item [1] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [1] )
	Dead_Punish_Item [2] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [2] )
	Dead_Punish_Item [3] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [3] )
	Dead_Punish_Item [4] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [4] )
	Dead_Punish_Item [5] = GetChaItem ( role , 1 , Dead_Punish_Item_WZ [5] )

	if Player == 1 and boat == 0 then						--�ֺʹ�����
		local Item_URE = 0
		local Item_MAXURE = 0
		local Take_Num = 0
		local i = 0
		local j = 0
		local k = 0								--װ����Ч���
		for j = 0 , Dead_Punish_Item_Num , 1 do
				
			if Dead_Punish_Item[j] ~= 0 and Dead_Punish_Item[j] ~= nil then
				
				local ItemType_Check = Check_Repair_ItemType ( Dead_Punish_Item[j] )
				if ItemType_Check == 1 then
					Item_URE = GetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_URE )
					Item_MAXURE = GetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_MAXURE )
					Take_Num = math.floor ( Item_MAXURE * Punish )
					
					if Item_URE >= 50 then
						k = 1
					end

					Item_URE = Item_URE - Take_Num
					
					if Item_URE < 50 then
						Item_URE = 49
						
					end
					
					i = SetItemAttr ( Dead_Punish_Item[j] , ITEMATTR_URE , Item_URE )
					if i == 0 then
						LG("Item_URE","Normal death deducts attribute failed"..j)
					end
					
					
					
					if k == 1 and Item_URE == 49 then
							SetChaEquipValid ( role , Dead_Punish_Item_WZ [j] , 0 )
					end


				end
				
			end
		end
		SystemNotice ( role , "������: �������� 5% ��������� ����������" )
	end

end

--����� ��������� ��� ���
function PK_Dead_Punish_ItemURE ( role )
	local Player = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	local Punish = 0.07
	PK_Dead_Punish_Item_Num = 5
	local PK_Dead_Punish_Item_WZ = { }
	PK_Dead_Punish_Item_WZ [0] = 0
	PK_Dead_Punish_Item_WZ [1] = 2
	PK_Dead_Punish_Item_WZ [2] = 3
	PK_Dead_Punish_Item_WZ [3] = 4
	PK_Dead_Punish_Item_WZ [4] = 6
	PK_Dead_Punish_Item_WZ [5] = 9
	local PK_Dead_Punish_Item = { }
	PK_Dead_Punish_Item [0] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [0] )
	PK_Dead_Punish_Item [1] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [1] )
	PK_Dead_Punish_Item [2] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [2] )
	PK_Dead_Punish_Item [3] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [3] )
	PK_Dead_Punish_Item [4] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [4] )
	PK_Dead_Punish_Item [5] = GetChaItem ( role , 1 , PK_Dead_Punish_Item_WZ [5] )
	if Player == 1 and boat == 0 then
		local Item_URE = 0
		local Item_MAXURE = 0
		local Take_Num = 0
		local i = 0
		local j = 0
		local k = 0	
		for j = 0 , PK_Dead_Punish_Item_Num , 1 do
			if PK_Dead_Punish_Item[j] ~= 0 and PK_Dead_Punish_Item[j] ~= nil then
				local ItemType_Check = Check_Repair_ItemType ( PK_Dead_Punish_Item[j] )
				if ItemType_Check == 1 then
					Item_URE = GetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_URE )
					Item_MAXURE = GetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_MAXURE )
					Take_Num = math.floor ( Item_MAXURE * Punish )
					if Item_URE >= 50 then
						k = 1
					end
					Item_URE = Item_URE - Take_Num
					if Item_URE < 50 then
						Item_URE = 49
					end
					i = SetItemAttr ( PK_Dead_Punish_Item[j] , ITEMATTR_URE , Item_URE )
					if i == 0 then
					end
					if k == 1 and Item_URE == 49 then
							SetChaEquipValid ( role , Dead_Punish_Item_WZ [j] , 0 )
					end
				end
				
			end
		end
		SystemNotice ( role , "������: �������� 7% ��������� ����������" )
	end
end

--������
function can_repair_item ( role_repair , role_want_repair , Item )
	local Check = 0
	local Sklv = 1
	Check = can_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
	return Check

end

function can_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
	local re_type = IsPlayer ( role_repair )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Money_Need = get_item_repair_money ( Item )
	local Money_Have = GetChaAttr ( role_want_repair , ATTR_GD )

	
	if Item_MAXURE <= 2500 then
		SystemNotice( role_want_repair , "���� ������� ���������� ���������������" )
		return 0
	end
	if Item_MAXURE == Item_URE then	
		SystemNotice( role_want_repair , "���� ������� �� ��������� � �������")
		return 0
	end

	if Money_Have < Money_Need then
		SystemNotice( role_want_repair , "� ��� �� ������� ������ ��� �������")
		return 0
	end

	local i = 0
	i = Check_Repair_ItemType ( Item )
	if i == 1 then
		return 1
	end
	SystemNotice( role_want_repair , "��������������� ��� ��������")

	return 0
end

function get_item_repair_money ( Item )
	local Money = 0
	local Sklv = 1
	Money = get_item_repair_moneyLua ( Item , Sklv )
	
	if Money < 1 then
		Money = 1
	end

	return Money
	
end

function get_item_repair_moneyLua ( Item , Sklv )
	local Item_Lv = GetItemLv ( Item )
	local RepairPoint = math.floor ( math.pow(( Item_Lv / 10 ) , 1.7 )) - 1
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )

	local URE_repair = math.floor ( Item_MAXURE / 50 ) - math.floor ( Item_URE / 50 )
	local Money_Need = math.max ( ( URE_repair * RepairPoint ) , 1 )
	Money_Need= Money_Need *6
	return Money_Need
end

function begin_repair_item ( role_repair , role_want_repair , Item )
	local Sklv = 1
	begin_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
end

function begin_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Money_Need = get_item_repair_money ( Item )
	local Money_Have = GetChaAttr ( role_want_repair , ATTR_GD )
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role_want_repair , ATTR_GD )
	ALLExAttrSet( role_want_repair )

	local i = 0
	local j = 0

	Item_URE = Item_MAXURE
	i = SetItemAttr ( Item , ITEMATTR_URE , Item_URE )

	if i == 0 then 
		LG("Item_URE","������ �������")
	end
	SystemNotice( role_want_repair ,"������ ��������" )
--	else
--		local New_Item_MAXURE = math.floor ( Item_MAXURE * 0.95 )
--		i = SetItemAttr ( Item , ITEMATTR_URE , New_Item_MAXURE )
--		j = SetItemAttr ( Item , ITEMATTR_MAXURE , New_Item_MAXURE )
--		SystemNotice ( role_want_repair , "Repair completed" )
--		SystemNotice ( role_want_repair , "Very sorry, some part of durability cannot be restored. Maximum durability reduced to" )
--		if i == 0 then
--			LG("Item_URE","repair failed repair durability failed")
--		end
--		if j == 0 then
--			LG("Item_URE","repair failed repair max durability failed")
--		end
--	end
	return 1
end

function Check_Repair_ItemType ( Item )
	local Item_Type = GetItemType ( Item )
--	SystemNotice ( role_want_repair , "Item Type="..Item_Type )
	local i = 0
	for i = 0 , Item_CanRepair_Num , 1 do
		if Item_CanRepair_ID [i] == Item_Type then
			return 1
		end
	end
	return 0
end

--����� ������

function GetNum_Part1 ( Num )
	local a = 0
	a = math.floor ( Num / 1000000000 )
	return a
end

function GetNum_Part2 ( Num )
	local a = 0
	local b = 0
	a = Num - GetNum_Part1 ( Num ) * 1000000000
	b = math.floor ( a / 10000000 )
	return b
end

function GetNum_Part3 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 10000000 ) * 10000000
	b = math.floor ( a / 1000000 )
	return b
end

function GetNum_Part4 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 1000000 ) *1000000
	b = math.floor ( a / 10000 )
	return b
end

function GetNum_Part5 ( Num )
	local a = 0
	local b = 0
	a = Num -  math.floor ( Num / 10000 ) * 10000
	b = math.floor ( a / 1000 )
	return b
end

function GetNum_Part6 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 1000 ) *1000
	b = math.floor ( a / 10 )
	return b
end

function GetNum_Part7 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 10 ) *10
	b = math.floor ( a / 1 )
	return b
end

-- function GetNum_Test ( Num )
--	local a = 0
--	Notice ( "This is a testing message from Mars. Please be calm" )
--	Notice ( "Test value as"..Num )
--	a = GetNum_Part1( Num )
--	Notice ( " test numeric part 1"..a)
--	a = GetNum_Part2( Num )
--	Notice ( " test numeric part 2 = "..a)
--	a = GetNum_Part3( Num )
--	Notice ( " test numeric part 3"..a)
--	a = GetNum_Part4( Num )
--	Notice ( " test numeric part 4 = "..a)
--	a = GetNum_Part5( Num )
--	Notice ( " test numeric part 5"..a)
--	a = GetNum_Part6( Num )
--	Notice ( " test numeric part 6 = "..a)
--	a = GetNum_Part7( Num )
--	Notice ( " test value part 7"..a)
-- end


function SetNum_Part1 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part1 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000000000
	return Num
end

function SetNum_Part2 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part2 ( Num )
	b = Part_Num - a
	Num = Num + b * 10000000
	return Num
end

function SetNum_Part3 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part3 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000000
	return Num
end

function SetNum_Part4 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part4 ( Num )
	b = Part_Num - a
	Num = Num + b * 10000
	return Num
end

function SetNum_Part5 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part5 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000
	return Num
end

function SetNum_Part6 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part6 ( Num )
	b = Part_Num - a
	Num = Num + b * 10
	return Num
end

function SetNum_Part7 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part7 ( Num )
	b = Part_Num - a
	Num = Num + b * 1
	return Num
end


--function SetNum_Test ( Num )
--	local a = 0
--	Notice ( "This is testing from Mars. Please be calm" )
--	Notice ( "Test value as"..Num)
--	Num = SetNum_Part1 ( Num , 0 )
--	Notice ( "changed part one to"..Num )
--	Num = SetNum_Part2 ( Num , 12 )
--	Notice ( "edit part 2 as"..Num )
--	Num = SetNum_Part3 ( Num , 3 )
--	Notice ( "edit part 3 to"..Num )
--	Num = SetNum_Part4 ( Num , 45 )
--	Notice ( "edit part 4 as"..Num )
--	Num = SetNum_Part5 ( Num , 6 )
--	Notice ( "edit part 5 as"..Num )
--	Num = SetNum_Part6 ( Num , 78 )
--	Notice ( "edit part 6 as"..Num )
--	Num = SetNum_Part7 ( Num , 9 )
--	Notice ( "changed part 7 as"..Num )
--end

--����
function SetItemForgeParam_MonsterBaoliao ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )
	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Monster [j] then 
			k = j
			a = 200
		end
	end
	if k > MaxHole then
		k = MaxHole
	end
	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end
	Num = SetNum_Part1 ( Num , k ) 
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "������" )
	end
end

function SetItemForgeParam_PlayerHecheng ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )

	
	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Hecheng [j] then 
			k = j
			a = 200
		end 
	end 
	
 	if k > MaxHole then
		k = MaxHole
	end

	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end


	Num = SetNum_Part1 ( Num , k ) 
	 
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "set forging content failed" )
	end
end

function SetItemForgeParam_QuestAward ( item , Num , item_event )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
	local ItemID = GetItemID ( item )
	local MaxHole = GetItemHoleNum ( ItemID )
	local Item_Type = GetItemType ( item )

	
	for j = 0 , 3 , 1 do 
		if a <= Item_HoleNum_Mission_1 [j] then 
			k = j
			a = 200
		end 
	end 
	
  	if k > MaxHole then
		k = MaxHole
	end

	if item_event == QUEST_AWARD_SDJ then
		if k == 0 then
			k = 1
		end
	end

	if item_event == QUEST_AWARD_SCBOX then
		k = 2
	end

	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end

	Num = SetNum_Part1 ( Num , k ) 

	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "set forging content failed" )
	end
end

function SetItemForgeParam_Npc_Sale ( item , Num )
	local i = 0 
	local j = 0
	local a = math.random ( 1, 100 ) 
	local k = 0
--	local ItemID = GetItemID ( Item )
--	local MaxHole = GetItemHoleNum ( ItemID )

--	for j = 0 , 3 , 1 do 
--		if a <= Item_HoleNum_Monster [i] then 
--			k = i
--			a = 200
--		end
--	end

--	if k > MaxHole then
--		k = MaxHole
--	end

	Num = SetNum_Part1 ( Num , k )
	  
--	Num = 2011000000
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "set forging content failed" )
	end

end


--����� �������

function GetFightGuildLevel()
	local Lv = 0
	local Now_Week = GetNowWeek()
	local Now_Time = GetNowTime()
	local CheckNum = Now_Week * 100 + Now_Time
	if CheckNum >= 422 and CheckNum < 522 then
		Lv = 2
	elseif CheckNum >= 522 and CheckNum < 622 then
		Lv = 1
	elseif CheckNum >= 622 and CheckNum < 700 then
		Lv = 3
	elseif CheckNum >= 0 and CheckNum < 22 then
		Lv = 3
	end

	return Lv
end

function GetFightGuildID( GuildLevel )
	local RedSide = 0
	local BlueSide = 0
	RedSide , BlueSide = GetChallengeGuildID ( GuildLevel )
	return RedSide,BlueSide
end

function GetNowWeek ( )
	local Now_Week = os.date("%w")
	local Now_WeekNum = tonumber(Now_Week)
	return Now_WeekNum
end

function GetNowTime ( )
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	return NowTimeNum
end

function CheckItem_Nianshou ( role )
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 0 or boat == 1 then		
		return 0
	end

	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	
	local head = GetChaItem ( role , 1 , 0 )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	local Head_ID = GetItemID ( head )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )

	if Body_ID ~= 0825  and Body_ID ~= 2549 then
		return 0
	end

	if Hand_ID ~= 0826  and Hand_ID ~= 2550 then
		return 0
	end

	if Foot_ID ~= 0827  and Foot_ID ~= 2551 then
		return 0
	end

	if Cha_Num == 4 then
		if Head_ID ~= 0828  and Head_ID ~= 2552 then
			return 0
		end
	end

	return 1
end

--�������� �� ����
function CheckItem_Heilong ( role )
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 0 or boat == 1 then
		return 0
	end
	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )

	if Body_ID ~= 0845 and Body_ID ~= 2367 then
		return 0
	end

	if Hand_ID ~= 0846 and Hand_ID ~= 2368 then
		return 0
	end

	if Foot_ID ~= 0847 and Foot_ID ~= 2369 then
		return 0
	end

	return 1
end

--�������� �� ���� � ��������
function CheckItem_Heilong_app ( role )
	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
	local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
	local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 0 or boat == 1 then
		return 0
	end
	if Body_ID < 5000 or Hand_ID < 5000 or Foot_ID < 5000 then
		return 0
	end
	if body_gem_id ~= 0845 and body_gem_id ~= 2367 then
		return 0
	end
	if hand_gem_id ~= 0846 and hand_gem_id ~= 2368 then
		return 0
	end
	if foot_gem_id ~= 0847 and foot_gem_id ~= 2369 then 
		return 0
	end
	return 1
end

function vilka_barb(role)
	local hand_weapon = GetChaItem ( role , 1 , 6 )
	local hand_weapon_ID = GetItemID ( hand_weapon )
	if hand_weapon_ID ~= 5284 then
		return 0
	end
	return 1
end


function CheckItem_pirate ( role )
	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 ) 
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
        local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
        local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
        if  Body_ID<5000 or Hand_ID<5000 or Foot_ID<5000 then
	   return 0
	end
        if body_gem_id ~= 2530 and body_gem_id ~= 2533 and body_gem_id ~= 2536 and body_gem_id ~= 2539 and body_gem_id ~= 2542 and body_gem_id ~= 2545 then
	   return 0
        end
	if hand_gem_id ~= 2531 and hand_gem_id ~= 2534 and hand_gem_id ~= 2537 and hand_gem_id ~= 2540 and hand_gem_id ~= 2543 and hand_gem_id ~= 2546 then
	   return 0
	end
	if foot_gem_id ~= 2532 and foot_gem_id ~= 2535 and foot_gem_id ~= 2538 and foot_gem_id ~= 2541 and foot_gem_id ~= 2544 and foot_gem_id ~= 2547 then 
           return 0
	end	
	return 1
end


--�������� ����
function CheckItem_Death ( role )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )

	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
	local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
	local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
	if Body_ID < 5000 or Hand_ID < 5000 or Foot_ID < 5000 then
		body_gem_id = Body_ID
		hand_gem_id = Hand_ID
		foot_gem_id = Foot_ID
		if body_gem_id ~= 2817 and body_gem_id ~= 2820 and body_gem_id ~= 2823 and body_gem_id ~= 2826 and body_gem_id ~= 2829 and body_gem_id ~= 2832 then
			return 0
		end
		if hand_gem_id ~= 2818 and hand_gem_id ~= 2821 and hand_gem_id ~= 2824 and hand_gem_id ~= 2827 and hand_gem_id ~= 2830 and hand_gem_id ~= 2833 then
			return 0
		end
		if foot_gem_id ~= 2819 and foot_gem_id ~= 2822 and foot_gem_id ~= 2825 and foot_gem_id ~= 2828 and foot_gem_id ~= 2831 and foot_gem_id ~= 2834 then 
			return 0
		end
	else
		if body_gem_id ~= 2817 and body_gem_id ~= 2820 and body_gem_id ~= 2823 and body_gem_id ~= 2826 and body_gem_id ~= 2829 and body_gem_id ~= 2832 then
			return 0
		end
		if hand_gem_id ~= 2818 and hand_gem_id ~= 2821 and hand_gem_id ~= 2824 and hand_gem_id ~= 2827 and hand_gem_id ~= 2830 and hand_gem_id ~= 2833 then
			return 0
		end
		if foot_gem_id ~= 2819 and foot_gem_id ~= 2822 and foot_gem_id ~= 2825 and foot_gem_id ~= 2828 and foot_gem_id ~= 2831 and foot_gem_id ~= 2834 then 
			return 0
		end
	end
	return 1
end 

--�������� ���� ����
function CheckItem_fighting ( role )
	local cha = TurnToCha ( role )
	local Cha_Num = GetChaTypeID( cha )
	local body = GetChaItem ( role , 1 , 2 )
	local hand = GetChaItem ( role , 1 , 3 )
	local foot = GetChaItem ( role , 1 , 4 )
	local Body_ID = GetItemID ( body )
	local Hand_ID = GetItemID ( hand )
	local Foot_ID = GetItemID ( foot )
	local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
	local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
	local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
	if Body_ID < 5000 or Hand_ID < 5000 or Foot_ID < 5000 then
		return 0
	end
	if body_gem_id ~= 1124 then
		return 0
	end
	if hand_gem_id ~= 1125 then
		return 0
	end
	if foot_gem_id ~= 1126 then 
		return 0
	end
	return 1
end

--����
function Suanming_Money ( role )
	local a = CheckSuanmingType ( role )
	if a == 1 then
		SystemNotice ( role , "����� ���������� ����! �� ��������� ������ ���!" )
		ShangShangQian_Money ( role )
	elseif a == 2 then
		SystemNotice ( role , "���� ������� �����. �� ��������� ������� ���." )
		ShangQian_Money ( role )
	elseif a == 3 then
		ZhongQian_Money ( role )
	elseif a == 4 then
		SystemNotice ( role , "����� ������� �� �� ����� �������. ���� ��������� ������ ���!" )
		XiaQian_Money ( role )
	elseif a == 5 then
		SystemNotice ( role , "���, ������� ����� �� ���� ����! ��� ����� ������ ���!" )
		XiaXiaQian_Money ( role )
	end
end

--���������� ������
function Suanming_Work ( role )
	local a = CheckSuanmingType ( role )
	if a == 1 then
		SystemNotice ( role , "����� ���������� ����! �� ��������� ������ ���!" )
		ShangShangQian_Work ( role )
	elseif a == 2 then
		SystemNotice ( role , "���� ������� �����. �� ��������� ������� ���." )
		ShangQian_Work ( role )
	elseif a == 3 then
		ZhongQian_Work ( role )
	elseif a == 4 then
		SystemNotice ( role , "����� ������� �� �� ����� �������. ���� ��������� ������ ���!" )
		XiaQian_Work ( role )
	elseif a == 5 then
		SystemNotice ( role , "���, ������� ����� �� ���� ����! ��� ����� ������ ���!" )
		XiaXiaQian_Work ( role )
	end
end

function CheckSuanmingType ( role )
	local a = math.random ( 9 , 150)
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 10
	qian [1] = 35
	qian [2] = 55
	qian [3] = 85
	qian [4] = 100
	for i = 0 , 4 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	return b
end

function ShangShangQian_Money ( role )
	local a = math.random ( 9 , 150)
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 10
	qian [1] = 50
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local GiveMoneyNum = 0.01 * math.random ( 1 , 5 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "�������� "..GiveMoneyNum_Notice.."% �� ���������� ������" )
		QianAddMoney ( role , 1 , GiveMoneyNum )							----��Ǯ��1Ϊ��������2Ϊ���̶���ֵ
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
		SystemNotice ( role , "������ ���� ������������� ����. �������� "..time_Bei.." ����� ����� ��� ��������� ���������" )
	elseif b == 3 then
		GiveItem ( role , 0 , 1092 , 1 , 0 )							---����ͼ
	end
end

function ShangQian_Money ( role )
	local a = math.random ( 9 , 150)
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 60
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	
	if b == 1 then
		local GiveMoneyNum = 0.001 * math.random ( 1 , 9 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "�������� "..GiveMoneyNum_Notice.."% �� ���������� ������" )
		QianAddMoney ( role , 1 , GiveMoneyNum )
	elseif b == 2 then
		local Give_Money = 1000 * math.random ( 1 , 15 )
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 3 then
		local hp_role = Hp( role )
		local hp_dmg = math.floor ( hp_role * 0.9 )
		local Give_Money = math.random ( 10000 , 20000 )
		Hp_Endure_Dmg ( role , hp_dmg )
		QianAddMoney ( role , 2 , Give_Money )
		SystemNotice ( role , "���� �����! ��� �� ��� ��� ����? �����!" )
	end
end

function ZhongQian_Money ( role )
	SystemNotice ( role , "������� ����� �� ���������� ����..." )
end

function XiaQian_Money ( role )
	local a = math.random ( 9 , 150)
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 100
	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Give_Money = math.random ( 100 , 5000 )
		Give_Money = Give_Money * -1
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local GiveMoneyNum = 0.001 * math.random ( 1 , 9 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "��������� "..GiveMoneyNum_Notice.."% ������" )
		GiveMoneyNum = GiveMoneyNum * -1
		QianAddMoney ( role , 1 , GiveMoneyNum )
	end
	
end

function XiaXiaQian_Money ( role )
	local a = math.random ( 9 , 150)
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 100
	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Give_Money = math.random ( 10000 , 30000 )
		Give_Money = Give_Money * -1
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local GiveMoneyNum = 0.01 * math.random ( 1 , 2 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "��������� "..GiveMoneyNum_Notice.."% ������" )
		GiveMoneyNum = GiveMoneyNum * -1
		QianAddMoney ( role , 1 , GiveMoneyNum )
	end
end

--���������� ������
function ShangShangQian_Work ( role )
	local lv = Lv ( role )
local a = math.random ( 9 , 150)
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
	qian [1] = 50
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		if lv >= 100 then
		else
			local GiveExpNum = 0.01 * math.random ( 1 , 5 )
			local GiveExpNum_Notice = GiveExpNum * 100
			SystemNotice ( role , "��������� "..GiveExpNum_Notice.."% �����" )
			QianAddExp ( role , GiveExpNum , 1 )
		end
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
		SystemNotice ( role , "������ ���� ������������� ����. �������� "..time_Bei.." ����� ���������� �����" )
	elseif b == 3 then
		QianAddState ( role , 1 )
	end
end

--���������� ������
function ShangQian_Work ( role )
local a = math.random ( 9 , 150)
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 100
	qian [1] = 40
	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 0 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		if Lv_role >= 100 then
			SystemNotice(role,"����� ���������� ����! �� � ��������� ������� 100 ������ ���� �� �����������!")
		else
			local GiveExpNum = Lv_role * math.random ( 50 , 500 )
			SystemNotice(role,"����� ���������� ����!")
			QianAddExp ( role , GiveExpNum , 2 )
		end
	end
end

--������
function ZhongQian_Work ( role )
	SystemNotice ( role , "������� ����� �� ���������� ����..." )
end

--������
function XiaQian_Work ( role )
	local a = math.random ( 9 , 150)
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 100
	qian [1] = 40
	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 0 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		if Lv_role >= 100 then
		else
			local GiveExpNum = Lv_role * math.random ( 50 , 500 )
			GiveExpNum = GiveExpNum * -1
			QianAddExp ( role , GiveExpNum , 2 )
		end
	end
end

--������
function XiaXiaQian_Work ( role )
	local lv = Lv ( role )
	local a = math.random ( 9 , 150)
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 30
	qian [1] = 70
	qian [2] = 100
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		if lv >= 100 then
		else
			local GiveExpNum = 0.01 * math.random ( 1 , 2 )
			local GiveExpNum_Notice = GiveExpNum * 100
			SystemNotice ( role , "��������� "..GiveExpNum_Notice.."% �����" )
			GiveExpNum = GiveExpNum * -1
			QianAddExp ( role , GiveExpNum , 1 )
		end
	elseif b == 2 then
		local Lv_role = Lv ( role )
		if Lv_role >= 100 then
		else
			local GiveExpNum = Lv_role * math.random ( 100 , 1000 )
			GiveExpNum = GiveExpNum * -1
			QianAddExp ( role , GiveExpNum , 2 )
		end
	elseif b == 3 then
		local rand = math.random(1,100)
		if rand >= 1 and rand <= 20 then
			local hp = Hp ( role )
			local hp_dmg = math.floor ( hp * 0.9 )
			local map_name_role = GetChaMapName ( role )
			if map_name_role == "garner2" or map_name_role == "07xmas2" or map_name_role == "07xmas" then
				hp_dmg = hp_dmg * 3
			end
			Hp_Endure_Dmg ( role , hp_dmg )
			SystemNotice ( role , "���� ������ ���� ������ �������..." )
		else
			SystemNotice ( role , "���� ����� ���� ������ �������..." )
			local hp = Hp ( role )
			local hp_dmg = math.floor ( hp * 0.9 )
			Hp_Endure_Dmg ( role , hp_dmg )
		end
	end
end

function QianAddMoney ( role , Type , Num )
	if Type == 1 then
		local Money_Have = GetChaAttr ( role , ATTR_GD )
		local Money_Add = Money_Have * Num
		Money_Have = Money_Have + Money_Add
		Money_Add = math.floor( Money_Add )
		Money_Have = math.floor ( Money_Have )
		SetCharaAttr ( Money_Have , role , ATTR_GD )
		ALLExAttrSet( role )
		if Money_Add > 0 then
			Num = Num * 100
			SystemNotice ( role , "������ ��������� ���������� � ���� ������� "..Num.."% �� ���������� ������" )
			if Money_Add >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				Notice ( cha_name.." ���������� ��� � �������� "..Money_Add.." �������" )
			end
		elseif Money_Add < 0 then
			Num = Num * -100
			SystemNotice ( role , "������ ������ ������� ����! �������� "..Num.."% ������" )
		end
	elseif Type == 2 then
		local Money_Have = GetChaAttr ( role , ATTR_GD )
		local Money_Add = Num
		Money_Have = Money_Have + Money_Add
		if Money_Have < 0 then
			Money_Have = 0
		end
		SetCharaAttr ( Money_Have , role , ATTR_GD )
		ALLExAttrSet( role )
		if Num > 0 then
			SystemNotice ( role , "��������� "..Num.." �������" )
			if Num >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				Notice ( cha_name.." ���������� ��� � �������� "..Num.." �������" )
			end
		elseif Num < 0 then
			Num = Num * -1
			SystemNotice ( role , "�� ���������� ������� "..Num.." �������" )
		end
	end
end

function QianAddExp ( role , Num , type )
	local lv = GetChaAttr( role, ATTR_LV )
	local exp = Exp(role) 
	local nlexp = GetChaAttrI ( role , ATTR_NLEXP ) 
	local clexp = GetChaAttrI ( role , ATTR_CLEXP )
	local ThisLvexp = nlexp - clexp
	local ExpGet = ThisLvexp * Num
	if type == 2 then
		ExpGet = Num
		if lv >= 80 then
			ExpGet = math.floor ( ExpGet / 50 )
		end
	end
	ExpGet = math.floor ( ExpGet )
	exp = exp + ExpGet
	
	if exp > nlexp then
		exp = nlexp + math.floor ( ( exp - nlexp ) / 50 )
	end
	if exp < 0 then
		exp = 0
	end
	SetChaAttrI( role , ATTR_CEXP , exp )
	if lv >= 80 then
			ExpGet = ExpGet * 50
	end
	if ExpGet > 0 then
		SystemNotice ( role , "���������� ��������� "..ExpGet.." �����" )
		if ExpGet >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				Notice ( cha_name.." ���������� ��� � �������� "..ExpGet.." �����" )
		end
	elseif ExpGet < 0 then
		ExpGet = ExpGet * -1
		SystemNotice ( role , "�������� "..ExpGet.." �����" )
	end
end

function QianAddState ( role , Type )

	local State = { }
	local StateName = { }

	State [0] = STATE_PKZDYS
	State [1] = STATE_PKSFYS
	State [2] = STATE_PKMNYS
	State [3] = STATE_PKJZYS
	State [4] = STATE_PKKBYS
	
	StateName [0] = "�����"
	StateName [1] = "������"
	StateName [2] = "������������ ��"
	StateName [3] = "���� ���������"
	StateName [4] = "�������� �����"

	local rand = math.random ( 1 , 100 )
	if rand >= 1 and rand <= 25 then
		i = 0
	elseif rand >= 26 and rand <= 54 then
		i = 1
	elseif rand >= 55 and rand <= 83 then
		i = 2
	elseif rand >= 84 and rand <= 96 then
		i = 3
	elseif rand >= 97 and rand <= 100 then
		i = 4
	end
	local statelv = 0
	local TimeRange = 0
	if Type == 1 then
		TimeRange = 60
	elseif Type == 2 then
		TimeRange = 30
	end
	local statetime = math.random ( 1 , TimeRange )
	statetime = statetime * 60
	statelv = 10
	AddState ( role , role , State[i] , statelv , statetime ) 
	SystemNotice ( 	role , "�� ����������, ��� "..StateName[i].." �������������")
end


------
-- ������ ��������� - ������ ����� ��������� �������� (ID=1093)
------
function GiveGoldenMapItem ( role )
	local CheckRandom = math.random ( 1,100 )
	if CheckRandom >= 1 and CheckRandom <= 23 then
		local GiveMoney = 1000 * math.random ( 1, 20 )
		SystemNotice ( role , "������� ���������. �������� "..GiveMoney.." �������" )
		AddMoney ( role , 0 , GiveMoney )
	elseif CheckRandom > 23 and CheckRandom <= 25 then -- ������� 2%
		XianJing ( role , 2 )
	elseif CheckRandom > 25 and CheckRandom <= 30 then -- ������� ������� 5%
		XianJing ( role , 1 )
	elseif CheckRandom > 30 and CheckRandom <= 34 then -- ������� ������ 4%
		XianJing ( role , 2 )
	elseif CheckRandom > 34 and CheckRandom <= 40 then -- �������� 6%
		SystemNotice ( role , "������� ���� �� �������. ������� � ��������� ���..." )
		MapRandomtele ( role )
	else
		SystemNotice ( role , " �� �������� ��������� ���������!" )
		local item_type = BaoXiang_CBTBOX
		local item_type_rad = BaoXiang_CBTBOX_Rad 
		local item_type_count = BaoXiang_CBTBOX_Count 
		local maxitem = BaoXiang_CBTBOX_Mxcount
		local item_quality = BaoXiang_CBTBOX_Qua
		local General = 0  
		local ItemId = 0 
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		for i = 1 , maxitem , 1 do 
			General = item_type_rad [ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local c = -1
		for k = 1 , maxitem , 1 do	
			d = item_type_rad [ k ] + b
			 if a <= d and a > b then
				c = k
				break 
			end 
			b = d 
		end 
		if c == -1 then 
			ItemId = 3124 
		else 
			ItemId = item_type [c]  
			ItemCount = item_type_count [c] 
		end 
		GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
		local GoodItem = {}
		GoodItem[0]		=	0110
		GoodItem[1]		=	0112
		GoodItem[2]		=	0114
		GoodItem[3]		=	0116
		GoodItem[4]		=	0118
		GoodItem[5]		=	0120
		GoodItem[6]		=	0151
		GoodItem[7]		=	0396
		GoodItem[8]		=	0398
		GoodItem[9]		=	0400
		GoodItem[10]	=	0402
		GoodItem[11]	=	0404
		GoodItem[12]	=	0406
		GoodItem[13]	=	0408
		GoodItem[14]	=	0411
		GoodItem[15]	=	0413
		GoodItem[16]	=	0588
		GoodItem[17]	=	0590
		GoodItem[18]	=	0592
		GoodItem[19]	=	0594
		GoodItem[20]	=	0596
		GoodItem[21]	=	0598
		GoodItem[22]	=	0600
		GoodItem[23]	=	0602
		GoodItem[24]	=	0748
		GoodItem[25]	=	0750
		GoodItem[26]	=	0752
		GoodItem[27]	=	0754
		GoodItem[28]	=	0756
		GoodItem[29]	=	0758
		GoodItem[30]	=	1012
		GoodItem[31]	=	0860
		GoodItem[32]	=	0861
		GoodItem[33]	=	0862
		GoodItem[34]	=	0863
		GoodItem[35]	=	8535
		GoodItem[36]	=	8574
		GoodItem[37]	=	8587
		GoodItem[38]	=	8584
		GoodItem[39]	=	8583
		GoodItem[40]	=	8581
		GoodItem[41]	=	8615
		GoodItem[42]	=	6814
		GoodItem[43]	=	8613
		GoodItem[44]	=	8549
		GoodItem[45]	=	8546
		GoodItem[46]	=	8529
		GoodItem[47]	=	8298
		GoodItem[48]	=	8297
		GoodItem[49]	=	8296
		GoodItem[50]	=	8295
		GoodItem[51]	=	8551
		GoodItem[52]	=	8723
		GoodItem[53]	=	8724
		GoodItem[54]	=	8725
		GoodItem[55]	=	8726
		GoodItem[56]	=	8727
		GoodItem[57]	=	8728
		GoodItem[58]	=	8729
		GoodItem[59]	=	8272
		GoodItem[60]	=	8143
		GoodItem[61]	=	3422
		GoodItem[62]	=	3423
		GoodItem[63]	=	3424
		GoodItem[64]	=	1020
		GoodItem[65]	=	1028
		GoodItem[66]	=	8145
		GoodItem[67]	=	8144

		
		
		
		local Good_C = 0
		for Good_C = 0 , 67 , 1 do
			if ItemId == GoodItem[Good_C] then
				local itemname = GetItemName ( ItemId ) 
				local cha_name = GetChaDefaultName ( role ) 
				local message = cha_name.." ������� ��������� � �������� "..itemname
				Notice ( message )
			end
		end
	end	

end

------
-- ����� ��������� - ����� ��������� �������� (ID=682)
------
function GiveGoldenMapItem_JLB ( role )
	local CheckRandom = math.random ( 1,100 )
	local x, y = GetChaPos(role)
	local lv= GetChaAttr(role, ATTR_LV) 
	local a=math.floor ( lv / 5 ) + 826
	local b=math.floor ( lv / 5 ) + 828
	local monserID=math.random(a,b)
	if CheckRandom >= 1 and CheckRandom <= 20 then
		local GiveMoney = 10000 * math.random ( 1, 20 )
		SystemNotice ( role , "������� ��������� ��������� � �������� "..GiveMoney.." ������� " )
		AddMoney ( role , 0 , GiveMoney )
	elseif CheckRandom > 20 and CheckRandom <= 22 then -- ������� 2%
		XianJing ( role , 2 )
	elseif CheckRandom > 22 and CheckRandom <= 25 then	-- ������� ������� 3%
		XianJing ( role , 1 )
	elseif CheckRandom > 25 and CheckRandom <= 29 then -- ������ ������� 4%
		XianJing ( role , 2 )
	elseif CheckRandom > 29 and CheckRandom <= 33 then -- �������� 4% 
		SystemNotice ( role , "������� ���� �� �������. ������� � ��������� ���..." )
		MapRandomtele ( role )
	elseif CheckRandom > 33 and CheckRandom <= 40 then -- ���� 7%
		SystemNotice ( role , "�, ���! ��� �������� �����? ��������..." )
		local new1 = CreateCha(monserID, x, y, 145, 30)
		SetChaLifeTime(new1, 90000)
	else
		SystemNotice ( role , " �� �������� ��������� ���������!" )
		local item_type = BaoXiang_JLBCBTBOX
		local item_type_rad = BaoXiang_JLBCBTBOX_Rad 
		local item_type_count = BaoXiang_JLBCBTBOX_Count 
		local maxitem = BaoXiang_JLBCBTBOX_Mxcount
		local item_quality = BaoXiang_JLBCBTBOX_Qua
		local General = 0  
		local ItemId = 0 
		local Item_CanGet = GetChaFreeBagGridNum ( role )
		for i = 1 , maxitem , 1 do 
			General = item_type_rad [ i ] + General		
		end 
		local a = math.random ( 1, General )
		local b = 0
		local d = 0 
		local c = -1
		for k = 1 , maxitem , 1 do
			d = item_type_rad [ k ] + b
			 if a <= d and a > b then
				c = k
				break 
			end 
			b = d 
		end 
		if c == -1 then 
			ItemId = 3124 
		else 
			ItemId = item_type [c]  
			ItemCount = item_type_count [c] 
		end 
		GiveItem ( role , 0 , ItemId , ItemCount , item_quality )
		local GoodItem = {}
		GoodItem[0]		=	0110
		GoodItem[1]		=	0112
		GoodItem[2]		=	0114
		GoodItem[3]		=	0116
		GoodItem[4]		=	0118
		GoodItem[5]		=	0120
		GoodItem[6]		=	0151
		GoodItem[7]		=	0396
		GoodItem[8]		=	0398
		GoodItem[9]		=	0400
		GoodItem[10]	=	0402
		GoodItem[11]	=	0404
		GoodItem[12]	=	0406
		GoodItem[13]	=	0408
		GoodItem[14]	=	0411
		GoodItem[15]	=	0413
		GoodItem[16]	=	0588
		GoodItem[17]	=	0590
		GoodItem[18]	=	0592
		GoodItem[19]	=	0594
		GoodItem[20]	=	0596
		GoodItem[21]	=	0598
		GoodItem[22]	=	0600
		GoodItem[23]	=	0602
		GoodItem[24]	=	0748
		GoodItem[25]	=	0750
		GoodItem[26]	=	0752
		GoodItem[27]	=	0754
		GoodItem[28]	=	0756
		GoodItem[29]	=	0758
		GoodItem[30]	=	1012
		GoodItem[31]	=	0860
		GoodItem[32]	=	0861
		GoodItem[33]	=	0862
		GoodItem[34]	=	0863
		GoodItem[35]	=	8535
		GoodItem[36]	=	8574
		GoodItem[37]	=	8587
		GoodItem[38]	=	8584
		GoodItem[39]	=	8583
		GoodItem[40]	=	8581
		GoodItem[41]	=	8615
		GoodItem[42]	=	6814
		GoodItem[43]	=	8613
		GoodItem[44]	=	8549
		GoodItem[45]	=	8546
		GoodItem[46]	=	8529
		GoodItem[47]	=	8298
		GoodItem[48]	=	8297
		GoodItem[49]	=	8296
		GoodItem[50]	=	8295
		local Good_C = 0
		for Good_C = 0 , 50 , 1 do
			if ItemId == GoodItem[Good_C] then
				local itemname = GetItemName ( ItemId ) 
				local cha_name = GetChaDefaultName ( role ) 
				local message = cha_name.." ������� ��������� � �������� "..itemname  
				Notice ( message )
			end
		end
	end
end

--���������� ����������
function CheckGetMapPos ( role , pos_x , pos_y , MapName )
	local Cha_Boat = GetCtrlBoat ( role )
	local ChaIsBoat = 0
	if Cha_Boat ~= nil then
		role = Cha_Boat
	end

	local Cha_pos_x , Cha_pos_y = GetChaPos ( role )
	local map_name = GetChaMapName ( role )

	local Cha_x_min = pos_x * 100 - 400
	local Cha_x_max = pos_x * 100 + 400
	local Cha_y_min = pos_y * 100 - 400
	local Cha_y_max = pos_y * 100 + 400

	if map_name ~= MapName then
		return 0 
	end 

	if Cha_pos_x < Cha_x_min or Cha_pos_x > Cha_x_max then
	
		return 0
	end

	if Cha_pos_y < Cha_y_min or Cha_pos_y > Cha_y_max then
		return 0
	end

	return 1
end

--����
function SuanmingTeshu_Money ( role )
	local a = CheckSuanmingTypeTeshu ( role )
	if a == 1 then
		SystemNotice ( role , "����� ���������� ���! �� ��������� ������ ���!" )
		ShangShangQianTeshu_Money ( role )
	elseif a == 2 then
		SystemNotice ( role , "������� ������� ����. �� ��������� ������� ���!" )
		ShangQianTeshu_Money ( role )
	elseif a == 3 then
		ZhongQian_Money ( role )
	end
end

function SuanmingTeshu_Work ( role )
	local a = CheckSuanmingTypeTeshu ( role )
	if a == 1 then
		SystemNotice ( role , "����� ���������� ���! �� ��������� ������ ���!" )
		ShangShangQianTeshu_Work ( role )
	elseif a == 2 then
		SystemNotice ( role , "������� ������� ����. �� ��������� ������� ���!" )
		ShangQianTeshu_Work ( role )
	elseif a == 3 then
		ZhongQian_Work ( role )
	end
end

function CheckSuanmingTypeTeshu ( role )
	local a = math.random ( 29 , 130 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 30
	qian [1] = 80
	qian [2] = 100
	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	return b
end

function ShangShangQianTeshu_Money ( role )
	local a = math.random ( 29 , 130 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 5
	qian [1] = 60
	qian [2] = 100
	for i = 0 , 2 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	if b == 1 then
		local GiveMoneyNum = 10000 * math.random ( 10 , 100 )
		QianAddMoney ( role , 2 , GiveMoneyNum )
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
		SystemNotice ( role , "�������� ������������� ������ ����. �� ��������� � ������� ������� "..time_Bei.." ����� ������, ����������� �������� ���� ��������� �����." )
	elseif b == 3 then
		GiveItem ( role , 0 , 1092 , 1 , 0 )
	end
end


function ShangQianTeshu_Money ( role )
	local a = math.random ( 1 , 130 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 60
	qian [1] = 100
	qian [2] = 30
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end
	
	if b == 1 then
		local Give_Money = 1000 * math.random ( 1 , 20 )
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.9 )
		local Give_Money = math.random ( 10000 , 30000 )
		Hp_Endure_Dmg ( role , hp_dmg )
		QianAddMoney ( role , 2 , Give_Money )
		SystemNotice ( role , "��������� ��������� ������� �����. ��� ������ ��� ������?" )
	end
end

function ShangShangQianTeshu_Work ( role )
	local a = math.random ( 1 , 130 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 30
	qian [1] = 60
	qian [2] = 90
	qian [3] = 100
--	qian [4] = 100

	for i = 0 , 3 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = ( Lv_role * Lv_role * math.random ( 10 , 100 ) ) * ( 1 / math.max ( 1 , ( 50 - Lv_role ) ) )
		QianAddExp ( role , GiveExpNum , 2 )							
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
		SystemNotice ( role , "�������� ������������� ������ ����. �� ��������� � ������� ������� "..time_Bei.." ����� ������, ����������� �������� ���������� ����" )
	elseif b == 3 then
		QianAddState ( role , 1 )								-----��״̬��1 ����ǩ״̬��2��ǩ״̬
	elseif b == 4 then
		QianAddState ( role , 1 )								-----��״̬��1 ����ǩ״̬��2��ǩ״̬
		--QianAddStatePoint ( role , 1 )
	end
end

function ShangQianTeshu_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 50
	qian [1] = 100
--	qian [2] = 60
--	qian [3] = 80
--	qian [4] = 100

	for i = 0 , 1 , 1 do
		if qian [i] >= a then
			b = i + 1
			break
		end
	end

	if b == 1 then
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * Lv_role * math.random ( 5 , 50 ) * ( 1 / math.max ( 1 , ( 50 - Lv_role ) ) )
		QianAddExp ( role , GiveExpNum , 2 )
	elseif b == 2 then
		QianAddState ( role , 2 )
	end
end

function QianAddStatePoint ( role , Num )
	local CheckNum = CheckStatePointHasGet ( role )
	local a = 1 / math.pow ( 2 , ( CheckNum - 1 ) )
	local check = Percentage_Random ( a )
	if check == 1 then
		local attr_ap = Attr_ap( role )
		local ap_extre = Num
		attr_ap = attr_ap + ap_extre 
		SetCharaAttr( attr_ap, role, ATTR_AP )
		local cha_name = GetChaDefaultName ( role )
		Notice ( cha_name.." ���������� ��� � �������� 1 ���� ������������� " )
		LG ( "Add_StatePoint" , cha_name.."Obtained Attributes point:"..Num.."point" )
	else
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 100 , 1000 )
		QianAddExp ( role , GiveExpNum , 2 )
	end
end

function CheckStatePointHasGet ( role )
	local str = GetChaAttr( role , ATTR_BSTR )
	local con = GetChaAttr( role , ATTR_BCON )
	local agi = GetChaAttr( role , ATTR_BAGI )
	local dex = GetChaAttr( role , ATTR_BDEX )
	local sta = GetChaAttr( role , ATTR_BSTA )
	local ap = GetChaAttr( role , ATTR_AP )
	local StatePointTotal_Have = str + con + agi + dex + sta + ap - 25
	local Lv_role = Lv ( role )
	local StatePointTotal = 3 + Lv_role + math.floor ( Lv_role / 10 ) * 4 + math.max ( 0 , ( Lv_role - 59 ) )
	local Check = StatePointTotal_Have - StatePointTotal
	return Check
end

--������ �� ������
function GetTheMapPos ( role , type )

	local MapList = { }
	
	MapList [0] = "NoMap"
	MapList [1] = "garner"
	MapList [2] = "magicsea"
	MapList [3] = "darkblue"

	local PosDateNum = 8
	local PosDateMap = {}
	local PosDateMax_X = {}
	local PosDateMin_X = {}
	local PosDateMax_Y = {}
	local PosDateMin_Y = {}
	
	PosDateMap [0]	=	1
	PosDateMap [1]	=	1
	PosDateMap [2]	=	1
	PosDateMap [3]	=	1
	PosDateMap [4]	=	2
	PosDateMap [5]	=	3
	PosDateMap [6]	=	1
	PosDateMap [7]	=	2
	PosDateMap [8]	=	1

	PosDateMax_X [0]	=	800
	PosDateMax_X [1]	=	940
	PosDateMax_X [2]	=	1023
	PosDateMax_X [3]	=	1012
	PosDateMax_X [4]	=	850
	PosDateMax_X [5]	=	2810
	PosDateMax_X [6]	=	380
	PosDateMax_X [7]	=	1420
	PosDateMax_X [8]	=	1614

	PosDateMin_X [0]	=	700
	PosDateMin_X [1]	=	840
	PosDateMin_X [2]	=	919
	PosDateMin_X [3]	=	912
	PosDateMin_X [4]	=	750
	PosDateMin_X [5]	=	2710
	PosDateMin_X [6]	=	280
	PosDateMin_X [7]	=	1320
	PosDateMin_X [8]	=	1514

	PosDateMax_Y [0]	=	1766
	PosDateMax_Y [1]	=	1350
	PosDateMax_Y [2]	=	1054
	PosDateMax_Y [3]	=	2950
	PosDateMax_Y [4]	=	3083
	PosDateMax_Y [5]	=	691
	PosDateMax_Y [6]	=	1725
	PosDateMax_Y [7]	=	3000
	PosDateMax_Y [8]	=	2695

	PosDateMin_Y [0]	=	1666
	PosDateMin_Y [1]	=	1250
	PosDateMin_Y [2]	=	1017
	PosDateMin_Y [3]	=	2850
	PosDateMin_Y [4]	=	2982
	PosDateMin_Y [5]	=	591
	PosDateMin_Y [6]	=	1675
	PosDateMin_Y [7]	=	2900
	PosDateMin_Y [8]	=	2615


	local PosDateGet = math.random ( 0 , PosDateNum )
	local Pos_Map = PosDateMap[ PosDateGet ]
	local Pos_X = math.random ( PosDateMin_X [PosDateGet] , PosDateMax_X [PosDateGet] )
	local Pos_Y = math.random ( PosDateMin_Y [PosDateGet] , PosDateMax_Y [PosDateGet] )
	
	return Pos_X , Pos_Y , Pos_Map
end

function GetTheMapPos_JLB ( role , type )
	local MapList = { }
	MapList [0] = "NoMap"
	MapList [1] = "jialebi"

	local PosDateNum = 3
	local PosDateMap = {}
	local PosDateMax_X = {}
	local PosDateMin_X = {}
	local PosDateMax_Y = {}
	local PosDateMin_Y = {}
	
	PosDateMap [0]	=	1
	PosDateMap [1]	=	1
	PosDateMap [2]	=	1
	PosDateMap [3]	=	1

	PosDateMax_X [0]	=	476 
	PosDateMax_X [1]	=	460 
	PosDateMax_X [2]	=	469 
	PosDateMax_X [3]	=	477 

	PosDateMin_X [0]	=	466
	PosDateMin_X [1]	=	452
	PosDateMin_X [2]	=	462
	PosDateMin_X [3]	=	470

	PosDateMax_Y [0]	=	1052
	PosDateMax_Y [1]	=	980
	PosDateMax_Y [2]	=	1000
	PosDateMax_Y [3]	=	1048

	PosDateMin_Y [0]	=	1000 
	PosDateMin_Y [1]	=	954  
	PosDateMin_Y [2]	=	980  
	PosDateMin_Y [3]	=	1036 

----596,609
----629,953
	local PosDateGet = math.random ( 0 , PosDateNum )
	local Pos_Map = PosDateMap[ PosDateGet ]
	local Pos_X = math.random ( PosDateMin_X [PosDateGet] , PosDateMax_X [PosDateGet] )
	local Pos_Y = math.random ( PosDateMin_Y [PosDateGet] , PosDateMax_Y [PosDateGet] )
	return Pos_X , Pos_Y , Pos_Map
end


------
-- ������� ��� �� � ��
------
function XianJing ( role, type )
	if type == 1 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.98 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "�� �������� ���������� �� �������, ������������� ��������!" )
	elseif type == 2 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.44 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "�� ������� ���������� �� ��������� �������. � �������, ������� �������." )
	end
end
--������ �� ����� ��������
function MapRandomtele ( role )

	local Birth ={}
	Birth[0]	=	"Argent City"
	Birth[1]	=	"Thundoria Castle"
	Birth[2]	=	"Shaitan City"
	Birth[3]	=	"Icicle Castle"
	Birth[4]	=	"Chaldea Haven"
	Birth[5]	=	"Andes Forest Haven"
	Birth[6]	=	"Abandon Mine Haven"
	Birth[7]	=	"Rockery Haven"
	Birth[8]	=	"Valhalla Haven"
	Birth[9]	=	"Solace Haven"
	Birth[10]	=	"Oasis Haven"
	Birth[11]	=	"Babul Haven"
	Birth[12]	=	"Icicle Haven"
	Birth[13]	=	"Atlantis Haven"
	Birth[14]	=	"Skeleton Haven"
	Birth[15]	=	"Icespire Haven"
	Birth[16]	=	"Zephyr Isle"
	Birth[17]	=	"Glacier Isle"
	Birth[18]	=	"Outlaw Isle"
	Birth[19]	=	"Isle of Chill"
	Birth[20]	=	"Canary Isle"
	Birth[21]	=	"Cupid Isle"
	Birth[22]	=	"Isle of Fortune"
	Birth[23]	=	"Thundoria Castle"
	Birth[23]	=	"Thundoria Harbor"
	Birth[24]	=	"Sacred Snow Mountain"
	Birth[25]	=	"Andes Forest Haven"
	Birth[26]	=	"Oasis Haven"
	Birth[27]	=	"Icespire Haven"
	Birth[28]	=	"Lone Tower Entrace"
	Birth[29]	=	"Barren Cavern Entrance"
	Birth[30]	=	"Abandon Mine 2"
	Birth[31]	=	"Silver Mine 2"
	Birth[32]	=	"Silver Mine 3"
	Birth[33]	=	"Abandon Mine 1"
	Birth[34]	=	"Lone Tower 2"
	Birth[35]	=	"Lone Tower 3"
	Birth[36]	=	"Lone Tower 4"
	Birth[37]	=	"Lone Tower 5"
	Birth[38]	=	"Lone Tower 6"
	Birth[39]	=	"Argent Bar"

	local PosRandom = math.random ( 0 , 39 )
	DelBagItem ( role , 1093 , 1 )
	MoveCity(role, Birth[PosRandom] )

end


function check_item_valid ( role , Item )
	local Item_type = GetItemType ( Item )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )

	if Item_type <= 29 or Item_type == 59 then
		if Item_URE ~= 0 and Item_URE <= 49 then
			return 0
		else
			return 1
		end
	end
	return 1
end 

--�������������� ��
function HPresume(role,now_tick,is_role_living)
	if is_role_living == -1 then
		is_role_living = IsChaLiving(role)
	end
	if is_role_living == 1 then 
		Resume(role)
	end
end

--���� � ������
function XZDLL_jzzwx(role,now_tick)
	local Eric_XZDLL = GetEquipItemP(role,8)
	local Eric_XZDLL_ID = GetItemID (Eric_XZDLL)
	if Eric_XZDLL_ID == 5827 then
		local statelv = 1
		local statetime = 3600
		AddState ( role , role , STATE_XZDLL , statelv , statetime )
	else
		local statelv_XZDLL = GetChaStateLv ( role , STATE_XZDLL )
			if statelv_XZDLL ~= 0 then
				RemoveState ( role , STATE_XZDLL ) 
			end
	end
end

--���� �� ���
function DelJingLing( role , now_tick)
	local elf = GetChaItem ( role , 2 , 1  )
	if elf ~= nil then
		local elfType = GetItemType ( elf )
		if elfType == 59 then
			local lv= GetElfLV(elf)
			if lv > JLMAXLV then
				SetItemAttr ( elf , ITEMATTR_URE , 0 )
			end
		end
	end
end

--����������� ��� � �������
function cha_timer(role, freq, time) 
	local resume_freq = 5
	local now_tick = GetChaParam(role, 1) 
	local is_role_living = -1
	SetChaParam(role, 1, now_tick + freq * time) 
	JLXiaoHao(role,now_tick)
	if math.mod(now_tick, resume_freq) == 0 and now_tick > 0 then
		HPresume(role,now_tick,is_role_living)
		DelJingLing( role , now_tick)
	end
	
	
	--������ �������
	local cha = TurnToCha ( role ) 
	local cha_type = GetChaTypeID ( cha )
	local Cape_bg = GetChaItem ( role , 2 , 4  )
	local Cape_id = GetItemID ( Cape_bg )
	
	if Cape_id == 7710 then
		local statelv = 1
		local statetime = 3600
		AddState ( role , role , STATE_claymore , statelv , statetime )	
	else
		local statelv_claymore = GetChaStateLv ( role , STATE_claymore )
		if statelv_claymore~=0 then
			RemoveState ( role , STATE_claymore ) 
		end
	end

	--��� 95
	local mxhp = GetChaAttr (role, ATTR_MXHP)
    if math.mod(now_tick, resume_freq) == 0 and now_tick > 0 then
                        ZhongShenTaoZhuang(role, now_tick)
                end
--������� �� ������
	if IsPlayer(role) == 1 then
 local SetHours = 1-- �����, ����� ������� �������� ����
 local Level = GetChaAttr( role , ATTR_LV )
 if OnlineEvent == true and math.mod(now_tick, SetHours*3600) == 0 and now_tick > 0 and Level >= 45 then
 local rand = math.random(1,30)
 local Prize = {}
 Prize[1] =1847
 Prize[2] =1848
 Prize[3] =1849
 Prize[4] =8290  
 Prize[5] =8291
 Prize[6] =8292
 Prize[7] =8294
 Prize[8] =8295 
 Prize[9] =8296
 Prize[10] =8297
 Prize[11] =8298
 Prize[12] =1151
 Prize[13] =1150
 Prize[14] =1136
 Prize[15] =1138
 Prize[16] =1139
 Prize[17] =1147
 Prize[18] =1144
 Prize[18] =0855
 local i = math.random (1,19) 
 local cha = TurnToCha (role)
 local ItemName = GetItemName (Prize[i])
 if (i<11)and(i==18) then
 GiveItem ( cha , 0 , Prize[i] , rand , 4 )
 else
 GiveItem ( cha , 0 , Prize[i] , 2 , 4 )
end
 SystemNotice(cha,"�����������! �� ���������� ������ ".. SetHours .." �����, � �� ���� ���������� ".. ItemName .."! ")
 end
 
 
 end
 
--����� �����
      local Dina_xl = GetEquipItemP(role,8)
      local Dina_xl_ID= GetItemID (Dina_xl)
      local Dina_x2 = GetEquipItemP(role,2)
      local Dina_x2_ID= GetItemID (Dina_x2)
      if Dina_xl_ID==2577 and Dina_x2_ID==2817 then
         local statelv = 1
         local statetime = 3600
         AddState ( role , role , STATE_BBRING1 , statelv , statetime )
      elseif Dina_xl_ID==2578 and Dina_x2_ID==2820 then
         local statelv = 1
         local statetime = 3600
         AddState ( role , role , STATE_BBRING2 , statelv , statetime )
      elseif Dina_xl_ID==2579 and Dina_x2_ID==2823 then
         local statelv = 1
         local statetime = 3600
         AddState ( role , role , STATE_BBRING3 , statelv , statetime )
      elseif Dina_xl_ID==2580 and Dina_x2_ID==2826 then
         local statelv = 1
         local statetime = 3600
         AddState ( role , role , STATE_BBRING4 , statelv , statetime )
      elseif Dina_xl_ID==2581 and Dina_x2_ID==2832 then
         local statelv = 1
         local statetime = 3600
         AddState ( role , role , STATE_BBRING5 , statelv , statetime )
      elseif Dina_xl_ID==2582 and Dina_x2_ID==2829 then
         local statelv = 1
         local statetime = 3600
         AddState ( role , role , STATE_BBRING6 , statelv , statetime )
      else
         local statelv_bbring1 = GetChaStateLv ( role , STATE_BBRING1 )
         if statelv_bbring1~=0 then
            RemoveState ( role , STATE_BBRING1 )
         end
         local statelv_bbring2 = GetChaStateLv ( role , STATE_BBRING2 )
         if statelv_bbring2~=0 then
            RemoveState ( role , STATE_BBRING2 )
         end
         local statelv_bbring3 = GetChaStateLv ( role , STATE_BBRING3 )
         if statelv_bbring3~=0 then
            RemoveState ( role , STATE_BBRING3 )
         end
         local statelv_bbring4 = GetChaStateLv ( role , STATE_BBRING4 )
         if statelv_bbring4~=0 then
            RemoveState ( role , STATE_BBRING4 )
         end
         local statelv_bbring5 = GetChaStateLv ( role , STATE_BBRING5 )
         if statelv_bbring5~=0 then
            RemoveState ( role , STATE_BBRING5 )
         end
         local statelv_bbring6 = GetChaStateLv ( role , STATE_BBRING6 )
         if statelv_bbring6~=0 then
            RemoveState ( role , STATE_BBRING6 )
         end  
      end 



--�������
     if IsPlayer(role) == 1 then
         local interval = 600 -- �������� ����� ����������� � ������� (35 ������)
         if math.mod(now_tick, interval) == 0 then
             local rand = math.random(1, table.getn(notices))
             SystemNotice(role, notices[rand])
        end
     end



--������ ����� ����������--		
	local map_cha = GetChaMapName(role)
	local death = IsChaLiving(role)
	
	if map_cha == "deathcircle" then	
	--���������� ���������� ���������
	local pos_x, pos_y = GetChaPos(role)
	local posx = math.floor(pos_x/100)
	local posy = math.floor(pos_y/100)
	--���������� ��������
	local effect_hp = GetChaStateLv(role, STATE_HP)
	local effect_hprem  = GetChaStateLv(role, STATE_HP_REM)
	local effect_go = GetChaStateLv(role, STATE_GO)
	local effect_gorem = GetChaStateLv(role, STATE_GO_REM)
	local effect_param = GetChaStateLv(role, STATE_PARAM)
	local effect_pr = GetChaStateLv(role, STATE_PR)
	local effect_prrem = GetChaStateLv(role, STATE_PR_REM)
	local effect_stan = GetChaStateLv(role, STATE_STAN)

	if posx >= 62 and posx <= 64 and posy >= 47 and posy <= 48 or posx >= 61 and posx <= 62 and posy >= 79 and posy <= 80 or posx >= 43 and posx <= 45 and posy >= 62 and posy <= 63 or posx >= 80 and posx <= 82 and posy >= 62 and posy <= 64 then
		if effect_hp == 0 and effect_hprem == 0 and effect_go == 0 and effect_gorem == 0 and effect_param == 0 and effect_pr == 0 and effect_prrem == 0 and effect_stan == 0 and death == 1 then
			local rad_bonus = math.random ( 1 , 8 )	
			
			AddState ( role , role , BONUS_ID[rad_bonus] , 1 , 20 ) 
			BickerNotice(role,"�� �������� �������� ������:" ..BONUS_NAME[rad_bonus]) 
			end
		end
	end
--[[�����]]--



 --C������ �����������
    local is_role_living = IsChaLiving(role)
	local playerCurrentMap = GetChaMapName(role)
	if (playerCurrentMap == "garner") or  (playerCurrentMap=="darckblue") or (playerCurrentMap=="magicsea") then
		local Item_Revive = CheckBagItem(role, 8300)
		
		if(Item_Revive > 0)then -- if has the item
    		if(is_role_living ~= 1)then -- check if player is dead
      		SetRelive(role,role,1,"������ �����������?") -- revive the player
			
    		end	
		end
	end

--��������� �����
if IsPlayer(role) == 1 then
	if math.mod(now_tick, 360) == 0 and now_tick > 0 then	-- Every 5 minutes, will give notice for Server Time.
	local now_hour= os.date("%H")		-- Hour Scripts
	local now_miniute= os.date("%M")	-- Minute Scripts
	local now_scend=  os.date("%S")		-- Secs Scripts
	now_hour= tonumber(now_hour)		-- Applying Hour
	now_miniute= tonumber(now_miniute)	-- Applying Minute
	now_scend= tonumber(now_scend)		-- Applying Secs
	SystemNotice ( role, "��������� �����: "..now_hour..":"..now_miniute..":"..now_scend.."")
end
	end

--���� ���
if Cha_Num >= 1 and Cha_Num <= 4 then
    RemoveClonedCha(role)
  end


	 end

--
function RemSetBonus(role)
	RemoveState ( role , STATE_BBRING1 )
	RemoveState ( role , STATE_BBRING2 )
	RemoveState ( role , STATE_BBRING3 )
	RemoveState ( role , STATE_BBRING4 )
	RemoveState ( role , STATE_BBRING5 )
	RemoveState ( role , STATE_BBRING6 )
end
--����� ���� �����
function DeathSetBonus(role,now_tick)
	-- ���� ��� ������
	local CheckItem_Death = CheckItem_Death(role)
	if CheckItem_Death == 0 then
		RemSetBonus(role)
		return
	end
	local statelv = GetChaStateLv ( role , STATE_BBRING1)
	if statelv >= 1 then
		return
	end
	-- ��������� ��������
	local statelv = 1
	local statetime = 3600
	AddState ( role , role , STATE_BBRING1 , statelv , statetime )
end
--[[������� �������� ������� ��������� 95BB �������.]]--
function CheckItem_ZHONGSHEN ( role )
 
    local body = GetChaItem ( role , 1 , 2 )
    local hand = GetChaItem ( role , 1 , 3 )
    local foot = GetChaItem ( role , 1 , 4 )
    local head = GetChaItem ( role , 1 , 0 )
    local Body_ID = GetItemID ( body )
    local Hand_ID = GetItemID ( hand )
    local Foot_ID = GetItemID ( foot )
    local Head_ID = GetItemID ( head )
            local body_gem_id = GetItemAttr ( body , ITEMATTR_VAL_FUSIONID )
            local hand_gem_id = GetItemAttr ( hand , ITEMATTR_VAL_FUSIONID )
    local foot_gem_id = GetItemAttr ( foot , ITEMATTR_VAL_FUSIONID )
    local head_gem_id = GetItemAttr ( head , ITEMATTR_VAL_FUSIONID )
 
        body_gem_id=Body_ID
        hand_gem_id=Hand_ID
        foot_gem_id=Foot_ID
        head_gem_id=Head_ID
    if body_gem_id ~= 6105 and body_gem_id ~= 6109 and body_gem_id ~= 6113 and body_gem_id ~= 6117 and body_gem_id ~= 6121 and body_gem_id ~= 6125 then
       return 0
    end
    if hand_gem_id ~= 6106 and hand_gem_id ~= 6110 and hand_gem_id ~= 6114 and hand_gem_id ~= 6118 and hand_gem_id ~= 6122 and hand_gem_id ~= 6126 then
       return 0
    end
    if foot_gem_id ~= 6107 and foot_gem_id ~= 6111 and foot_gem_id ~= 6115 and foot_gem_id ~= 6119 and foot_gem_id ~= 6123 and foot_gem_id ~= 6127 then
       return 0
    end
    if head_gem_id ~= 6104 and head_gem_id ~= 6108 and head_gem_id ~= 6112 and head_gem_id ~= 6116 and head_gem_id ~= 6120 and head_gem_id ~= 6124 then
       return 0
    end
    return 1
end
 
--�������� 95BB
function ZhongShenTaoZhuang(role,now_tick)
    local ZhongShen_Value = CheckItem_ZHONGSHEN (role)
    if ZhongShen_Value ~= 0 then
        local statelv = 1
        local statetime = 3600
        AddState ( role , role , STATE_zhongshen , statelv , statetime )
        return
    else
        local statelv_ZhongShen = GetChaStateLv ( role , STATE_zhongshen )
        if statelv_ZhongShen~=0 then
                RemoveState ( role ,STATE_zhongshen )
            return
            end
        return
    end
end
 

JLMAXLV = 51
JLMINLV = 1

--�������� ������� ���
function GetElfLV(item)
	local str = GetItemAttr( item,ITEMATTR_VAL_STR )
	local con = GetItemAttr( item ,ITEMATTR_VAL_CON )
	local agi = GetItemAttr( item ,ITEMATTR_VAL_AGI )
	local dex = GetItemAttr( item ,ITEMATTR_VAL_DEX )
	local sta = GetItemAttr( item ,ITEMATTR_VAL_STA )
	local lv = str + agi + dex + con + sta
	return lv
end

--������ ��� ����� ����������� ����
function GetElfFreqbyLV(lv)
	local freq = 20
	if lv >= 1 and lv <= 21 then 
		freq = freq * 3
	elseif lv >= 20 and lv <= 50 then 
		freq = ( freq * 3 ) - 5
	elseif lv > JLMAXLV then 
		freq = 10
	elseif lv > 50 and lv <= JLMAXLV then
		freq = freq * 4
	end
	return freq
end

function JLXiaoHao(role,now_tick)
	local live = IsChaLiving(role)
	if live == -1 then 
		return 
	end
	local elf = GetChaItem ( role , 2 , 1  )
	if elf == nil then 
		return 
	end
	local elfType = GetItemType ( elf )
	if elfType == 59 then
		local lv = GetElfLV(elf)
		local elfFreq = GetElfFreqbyLV(lv)
		local sklv = GetChaStateLv ( role , STATE_JLJSGZ )
		if  sklv ~= 0 then
			elfFreq = math.floor( elfFreq*0.5 )
		end
		if math.mod(now_tick, elfFreq) == 0 and now_tick > 0 then 
			local ure = GetItemAttr( elf ,ITEMATTR_URE )
			if ure <= 49 then
				SetChaKbItemValid2(role , elf , 0 , 1)
			else
				SetChaKbItemValid2(role , elf , 1 , 1)
			end
			local noXHLV = GetNewStateLV ( role , NSTATE_JYNOXH , lv )
			local CCLV = GetNewStateLV ( role , NSTATE_JYCC , lv )
			local CZLV = GetNewStateLV ( role , NSTATE_JYCZ , lv )
			AutoSiLiao(role,elf)
			AutoSiLiaoFruct(role,elf)
			local coinNum = CCLV + 1
			GiveJLCoins(role,elf,coinNum)
			if noXHLV == 0 then
				Take_ElfURE ( role , elf , 1 , 0 )
			end
			Give_ElfEXP ( role , elf , 1 )
			if CZLV ~= 0 then 
				local i = 0 
				for i = 1 , CZLV , 1 do
					Give_ElfEXP ( role , elf , 1 )
				end
			end
		end
	end
end

function Give_ElfEXP ( role , Item , Num )
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY ) 
	local Elf_MaxEXP = GetItemAttr( Item ,ITEMATTR_MAXENERGY ) 
	local ure = GetItemAttr( Item ,ITEMATTR_URE ) 
	local Elf_ID = GetItemID ( Item )
	if ure > 49 then
		if Elf_ID == 0130 or Elf_ID == 0131 or Elf_ID == 0132 or Elf_ID == 0133 then
			Elf_EXP = Elf_EXP + BOGEXP_GETRAD * Num
		else
			Elf_EXP = Elf_EXP + ELEEXP_GETRAD * Num
		end
		if Elf_EXP >= Elf_MaxEXP then
			Elf_EXP = Elf_MaxEXP
		end
		SetItemAttr ( Item , ITEMATTR_ENERGY , Elf_EXP )
	end  
end

autoSiLiaoID = {}			autoSiLiaoXG={}				autoSiLiaoLow={}
autoSiLiaoID[1] = 2312		autoSiLiaoXG[1] = 2500		autoSiLiaoLow[1] = 7500
autoSiLiaoID[2] = 5645		autoSiLiaoXG[2] = 5000		autoSiLiaoLow[2] = 7500
autoSiLiaoID[3] = 0227		autoSiLiaoXG[3] = 2500		autoSiLiaoLow[3] = 7500
autoSiLiaoID[4] = 5644		autoSiLiaoXG[4] = 5000		autoSiLiaoLow[4] = 7500
--���� �������
function AutoSiLiao(role,elf)
	local lv = GetElfLV(elf)
	local autoSL = GetChaItem ( role , 2 , 2  )
	if autoSL ~= nil and lv <= JLMAXLV then 
		local ure = GetItemAttr( elf ,ITEMATTR_URE )
		local autoSLID = GetItemID ( autoSL )
		local i = 1 
		while autoSiLiaoID[i]~=nil do
			if autoSiLiaoID[i] == autoSLID and ure <= autoSiLiaoLow[i] and lv >= 3 then 
				local j = TakeItem(  role,0,autoSiLiaoID[i],1)
				if j == 0 then
					SystemNotice ( role , "�������� ����-������� ��� �� ��������!" )
				else
					ure = ure + autoSiLiaoXG[i]
					SystemNotice ( role , "�������������� ��������� ��� ������ �������." )
					SetItemAttr ( elf , ITEMATTR_URE , ure )
				end
				return 
			end
			i = i + 1 
		end
	end
end

autoSiLiaoFructID = {}				autoSiLiaoFructXG = {}			autoSiLiaoFructAttr = {}						autoSiLiaoFructProc = {}
autoSiLiaoFructID[1]  = 0276		autoSiLiaoFructXG[1]  = 2		autoSiLiaoFructAttr[1]  = ITEMATTR_VAL_STR		autoSiLiaoFructProc[1]  = 1
autoSiLiaoFructID[2]  = 0277		autoSiLiaoFructXG[2]  = 2		autoSiLiaoFructAttr[2]  = ITEMATTR_VAL_AGI		autoSiLiaoFructProc[2]  = 1
autoSiLiaoFructID[3]  = 0278		autoSiLiaoFructXG[3]  = 2		autoSiLiaoFructAttr[3]  = ITEMATTR_VAL_DEX		autoSiLiaoFructProc[3]  = 1
autoSiLiaoFructID[4]  = 0279		autoSiLiaoFructXG[4]  = 2		autoSiLiaoFructAttr[4]  = ITEMATTR_VAL_CON		autoSiLiaoFructProc[4]  = 1
autoSiLiaoFructID[5]  = 0280		autoSiLiaoFructXG[5]  = 2		autoSiLiaoFructAttr[5]  = ITEMATTR_VAL_STA		autoSiLiaoFructProc[5]  = 1
autoSiLiaoFructID[6]  = 0222		autoSiLiaoFructXG[6]  = 1		autoSiLiaoFructAttr[6]  = ITEMATTR_VAL_STR		autoSiLiaoFructProc[6]  = 1
autoSiLiaoFructID[7]  = 0223		autoSiLiaoFructXG[7]  = 1		autoSiLiaoFructAttr[7]  = ITEMATTR_VAL_AGI		autoSiLiaoFructProc[7]  = 1
autoSiLiaoFructID[8]  = 0224		autoSiLiaoFructXG[8]  = 1		autoSiLiaoFructAttr[8]  = ITEMATTR_VAL_DEX		autoSiLiaoFructProc[8]  = 1
autoSiLiaoFructID[9]  = 0225		autoSiLiaoFructXG[9]  = 1		autoSiLiaoFructAttr[9]  = ITEMATTR_VAL_CON		autoSiLiaoFructProc[9]  = 1
autoSiLiaoFructID[10] = 0226		autoSiLiaoFructXG[10] = 1		autoSiLiaoFructAttr[10] = ITEMATTR_VAL_STA		autoSiLiaoFructProc[10] = 1
autoSiLiaoFructID[11] = 7003		autoSiLiaoFructXG[11] = 1		autoSiLiaoFructAttr[11] = ITEMATTR_VAL_STR		autoSiLiaoFructProc[11] = 2
autoSiLiaoFructID[12] = 7004		autoSiLiaoFructXG[12] = 1		autoSiLiaoFructAttr[12] = ITEMATTR_VAL_AGI		autoSiLiaoFructProc[12] = 2
autoSiLiaoFructID[13] = 7005		autoSiLiaoFructXG[13] = 1		autoSiLiaoFructAttr[13] = ITEMATTR_VAL_DEX		autoSiLiaoFructProc[13] = 2
autoSiLiaoFructID[14] = 7006		autoSiLiaoFructXG[14] = 1		autoSiLiaoFructAttr[14] = ITEMATTR_VAL_CON		autoSiLiaoFructProc[14] = 2
autoSiLiaoFructID[15] = 7007		autoSiLiaoFructXG[15] = 1		autoSiLiaoFructAttr[15] = ITEMATTR_VAL_STA		autoSiLiaoFructProc[15] = 2
autoSiLiaoFructID[16] = 8233		autoSiLiaoFructXG[16] = 1		autoSiLiaoFructAttr[16] = ITEMATTR_VAL_STR		autoSiLiaoFructProc[16] = 4
autoSiLiaoFructID[17] = 8234		autoSiLiaoFructXG[17] = 1		autoSiLiaoFructAttr[17] = ITEMATTR_VAL_AGI		autoSiLiaoFructProc[17] = 4
autoSiLiaoFructID[18] = 8235		autoSiLiaoFructXG[18] = 1		autoSiLiaoFructAttr[18] = ITEMATTR_VAL_DEX		autoSiLiaoFructProc[18] = 4
autoSiLiaoFructID[19] = 8236		autoSiLiaoFructXG[19] = 1		autoSiLiaoFructAttr[19] = ITEMATTR_VAL_CON		autoSiLiaoFructProc[19] = 4
autoSiLiaoFructID[20] = 8237		autoSiLiaoFructXG[20] = 1		autoSiLiaoFructAttr[20] = ITEMATTR_VAL_STA		autoSiLiaoFructProc[20] = 4
--����-��������� ���
function AutoSiLiaoFruct(role,elf)
	local lv = GetElfLV(elf)
	local autoSLFruct = GetChaItem ( role , 2 , 3 )
	local id = GetItemID ( autoSLFruct )
	if autoSLFruct ~= nil and lv <= JLMAXLV then
		local Check_Exp = 0
		Check_Exp = CheckElf_EXP ( role , elf )
		local autoFructSLID = GetItemID ( autoSLFruct )
		local i = 1 
		while autoSiLiaoFructID[i] ~= nil do
			if autoSiLiaoFructID[i] == autoFructSLID and Check_Exp == 1 then
				if autoSiLiaoFructProc[i] == 1 then
					local ret = CheckJingLingLv( role , elf )
					if ret == 0 then
						return 
					end
				elseif autoSiLiaoFructProc[i] == 2 then
					local ret1 = CheckJingLingLv1( role , elf )
					if ret1 == 0 then
						return 
					end
				elseif autoSiLiaoFructProc[i] == 4 then
					local ret4 = CheckJingLingLv4( role , elf )
					if ret4 == 0 then
						return 
					end
				end
				local j = TakeItem( role , 0 , autoSiLiaoFructID[i] , 1 )
				if j == 0 then
					SystemNotice ( role , "�������� ������ ��� ��� �� ��������!" )
				else
					ElfLVUP ( role , elf , autoSiLiaoFructAttr[i] , autoSiLiaoFructXG[i] , 0 )
					SystemNotice ( role , "�������������� ��������� ��� ������ �������." )
				end
				return
			end
			i = i + 1
		end
	end
end

--������ ��, �������, ���. �������
function GiveJLCoins(role,elf,num1)
	local lv = GetElfLV(elf)
	if lv >= JLMINLV and lv <= JLMAXLV then
		local num = GetItemAttr( elf ,ITEMATTR_VAL_FUSIONID )
		local ure = GetItemAttr( elf ,ITEMATTR_URE )
		num = num + 1
		if math.mod( num , 1) == 0 and ure >= 50 then
			GiveItemX ( role , 0 , 855 , 1 , 4 )
		end
		if math.mod( num , 6) == 0 and ure >= 50 then
			GiveItemX ( role , 0 , 855 , 1 , 4 )
		end
		if math.mod( num , 30) == 0  and ure >= 50 then
			GiveItemX ( role , 0 , 2588 , 1 , 4 )
		end
		if math.mod( num , 120) == 0  and ure >= 50  then
			GiveItemX ( role , 0 , 2588 , 1 , 4 )
		end
		if math.mod( num , 1200) == 0  and ure >= 50 then
			GiveItemX ( role , 0 , 2589 , 1 , 4 )
		end
		if num == 1200 then
			num = 0
		end
		SetItemAttr ( elf , ITEMATTR_VAL_FUSIONID , num )
	end
end

--������� ��� ������� ����� ��� ������
function Take_ElfURE ( role , Item , Type , Num )
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE )
	if Type == 1 then
		if Elf_URE > 49 then
			Elf_URE = math.max ( ( Elf_URE - 60 ) , 49 )
			SetItemAttr ( Item , ITEMATTR_URE , Elf_URE )
		else 
			SetChaKbItemValid2(role , Item , 0 , 1)
		end
	end

	if Type == 2 then
		if Elf_URE > 49 then
			Elf_URE = math.max ( ( Elf_URE - Num ) , 49 )
			SetItemAttr ( Item , ITEMATTR_URE , Elf_URE )
		else
			SetChaKbItemValid2(role , Item , 0 , 1)
		end
	end
end

function InitNewState()
	NSTATE_JYCC = 1
	NSTATE_JYCZ = 2
	NSTATE_JYNOXH = 3
	NSTATEMAXCOUNT= 3
	NewState = {}
	NewStateLV = {}
	NewStateTime = {}
	NewStateExtra = {}
	NewStateStartTime = {}
	for i = 1 , NSTATEMAXCOUNT , 1 do 
		NewState[i] = {}
		NewStateLV[i] = {}
		NewStateStartTime[i] = {}
		NewStateTime[i] = {}
		NewStateExtra[i] = {}
	end
end

InitNewState()

function GetNowTimeW()
	local week = tonumber(os.date("%w"))
	local hour = tonumber(os.date("%H"))
	local minu = tonumber(os.date("%M"))
	local sec = tonumber(os.date("%S"))
	local timeW = ( ( week * 24 + hour ) * 60 + minu ) * 60 + sec
	return timeW
end

function AddNewState(role,state,statelv,statetime,stateExtra)
	NewState[state][role] = 1
	NewStateLV[state][role] = statelv
	NewStateStartTime[state][role] = GetNowTimeW()
	NewStateTime[state][role] = statetime
	NewStateExtra[state][role] = stateExtra
end

function GetNewStateLV(role,state,extra)
	if NewState[state][role] ~= nil then 
		local nowTime = GetNowTimeW()
		while nowTime < NewStateStartTime[state][role] do
			nowTime = nowTime + 7 * 24 * 60 * 60
		end
		local pendTime = nowTime - NewStateStartTime[state][role]
		if pendTime > NewStateTime[state][role] then 
			NewState[state][role] = nil
			return 0 
		else
			if NewStateExtra[state][role] ~= nil then 
				if NewStateExtra[state][role] ~= extra then 
					return 0
				end
			end
			return NewStateLV[state][role]
		end
	else
		return 0 
	end
end

JLMAXLV_UP_STANDART = 100
JLMAXLV_UP_2_GEN = 70
JLMAXLV_UP_3_GEN = 50
JLMAXLV_UP_4_GEN = 25
JLMAXLV_UP_5_GEN = 12

--�������� ��� ������� ���
function CheckJingLingLv ( role , Item_Traget)
		local str_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )
		local con_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )
		local agi_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )
		local dex_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )
		local sta_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )
		local lv_Traget = str_Traget + con_Traget + agi_Traget + dex_Traget + sta_Traget
		local Item_TragetID = GetItemID ( Item_Traget )
		if Item_TragetID == 0681
		or Item_TragetID == 0231
		or Item_TragetID == 0232
		or Item_TragetID == 0233
		or Item_TragetID == 0234
		or Item_TragetID == 0235
		or Item_TragetID == 0236
		or Item_TragetID == 0237 then
			if lv_Traget >= JLMAXLV_UP_2_GEN then
				SystemNotice ( role , "������ ������� ����� ������� ��� 2 ��������� ������ �� "..JLMAXLV_UP_2_GEN.." ������.")
				return 0
			else
				return 1
			end
		elseif Item_TragetID == 0129 then
			if lv_Traget >= JLMAXLV_UP_3_GEN then
				SystemNotice ( role , "������ ������� ����� ������� ��� 3 ��������� ������ �� "..JLMAXLV_UP_3_GEN.." ������.")
				return 0
			else
				return 1
			end
		elseif Item_TragetID == 0130
		or Item_TragetID == 0131
		or Item_TragetID == 0132
		or Item_TragetID == 0133 then
			SystemNotice ( role , "������ ������� ������ ������� ��� �����.")
			return 0
		elseif Item_TragetID == 0134 then
			SystemNotice ( role , "������ ������� ������ ������� ��� 5 ���������.")
			return 0
		else
			if lv_Traget >= JLMAXLV_UP_STANDART then
				SystemNotice ( role , "������ ������� ����� ������� ��� 1 ��������� ������ �� "..JLMAXLV_UP_STANDART.." ������.")
				return 0
			else
				return 1
			end
		end
end

--�������� ��� ������� ���
function CheckJingLingLv1 ( role , Item_Traget)
		local str_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )
		local con_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )
		local agi_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )
		local dex_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )
		local sta_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )
		local lv_Traget = str_Traget + con_Traget + agi_Traget + dex_Traget + sta_Traget
		local Item_TragetID = GetItemID ( Item_Traget )
		if Item_TragetID == 0681
		or Item_TragetID == 0231
		or Item_TragetID == 0232
		or Item_TragetID == 0233
		or Item_TragetID == 0234
		or Item_TragetID == 0235
		or Item_TragetID == 0236
		or Item_TragetID == 0237 then
			if lv_Traget < JLMAXLV_UP_2_GEN then
				SystemNotice ( role , "������ ������� ����� ������� ��� 2 ��������� ������ � "..JLMAXLV_UP_2_GEN.." ������.")
				return 0
			elseif lv_Traget >= JLMAXLV then
				SystemNotice ( role , "������ ������� ����� ������� ��� 2 ��������� ������ �� "..JLMAXLV.." ������.")
				return 0
			else
				return 1
			end
		elseif Item_TragetID == 0129 then
			if lv_Traget < JLMAXLV_UP_3_GEN then
				SystemNotice ( role , "������ ������� ����� ������� ��� 3 ��������� ������ c "..JLMAXLV_UP_3_GEN.." ������.")
				return 0
			elseif lv_Traget >= JLMAXLV then
				SystemNotice ( role , "������ ������� ����� ������� ��� 3 ��������� ������ �� "..JLMAXLV.." ������.")
				return 0
			else
				return 1
			end
		elseif Item_TragetID == 0130
		or Item_TragetID == 0131
		or Item_TragetID == 0132
		or Item_TragetID == 0133 then
			SystemNotice ( role , "������ ������� ������ ������� ��� �����.")
			return 0
		elseif Item_TragetID == 0134 then
			SystemNotice ( role , "������ ������� ������ ������� ��� 5 ���������.")
			return 0
		else
			SystemNotice ( role , "������ ������� ������ ������� ��� 1 ���������.")
			return 0
		end
end

--�������� ��� ������� ���
function CheckJingLingLv2 ( role , Item_Traget)
	local str_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )
	local con_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )
	local agi_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )
	local dex_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )
	local sta_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )
	local lv_Traget = str_Traget + con_Traget + agi_Traget + dex_Traget + sta_Traget
	if lv_Traget >= JLMAXLV_UP_STANDART then
		SystemNotice ( role , "������ ������� ����� ������� ��� ������ �� "..JLMAXLV_UP_STANDART.." ������.")
		return 0
	else
		return 1
	end
end

--�������� ��� ������� ���
function CheckJingLingLv4 ( role , Item_Traget)
		local str_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )
		local con_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )
		local agi_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )
		local dex_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )
		local sta_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )
		local lv_Traget = str_Traget + con_Traget + agi_Traget + dex_Traget + sta_Traget
		local Item_TragetID = GetItemID ( Item_Traget )
		if Item_TragetID == 0681
		or Item_TragetID == 0231
		or Item_TragetID == 0232
		or Item_TragetID == 0233
		or Item_TragetID == 0234
		or Item_TragetID == 0235
		or Item_TragetID == 0236
		or Item_TragetID == 0237 then
			SystemNotice ( role , "������ ������� ������ ������� ��� 2 ���������.")
			return 0
		elseif Item_TragetID == 0129 then
			SystemNotice ( role , "������ ������� ������ ������� ��� 3 ���������.")
			return 0
		elseif Item_TragetID == 0130
		or Item_TragetID == 0131
		or Item_TragetID == 0132
		or Item_TragetID == 0133 then
			if lv_Traget >= JLMAXLV_UP_STANDART then
				SystemNotice ( role , "������ ������� ����� ������� ��� ����� ������ �� "..JLMAXLV_UP_STANDART.." ������.")
				return 0
			else
				return 1
			end
		elseif Item_TragetID == 0134 then
			SystemNotice ( role , "������ ������� ������ ������� ��� 5 ���������.")
			return 0
		else
			SystemNotice ( role , "������ ������� ������ ������� ��� 1 ���������.")
			return 0
		end
end

--������� ���
function Give_ElfURE ( role , Item  , Num )
	local Elf_URE =  GetItemAttr( Item ,ITEMATTR_URE )
	local Elf_MaxURE = GetItemAttr( Item ,ITEMATTR_MAXURE )
	if Elf_URE <= 49 then
		SetChaKbItemValid2(role , Item , 1 , 0)
	end
	Elf_URE = Elf_URE + Num-5
	if Elf_URE >= Elf_MaxURE  then
		Elf_URE = Elf_MaxURE
	end
	SetItemAttr ( Item , ITEMATTR_URE , Elf_URE )
end

--�������� ������� ����� � ��� ����� ���������� �������
function CheckElf_EXP ( role , Item )
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY )
	local Elf_MaxEXP = GetItemAttr( Item ,ITEMATTR_MAXENERGY )
	if Elf_EXP >= Elf_MaxEXP then
		return 1
	else
		return 0
	end
end

--��� +1 ����
function Lvup_Str ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR
	ElfLVUP(role,Item_Traget,attr_type,1,0)
end

--��� +1 ������������
function Lvup_Con ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	ElfLVUP(role,Item_Traget,attr_type,1,0)
end

--��� +1 ��������
function Lvup_Agi ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	ElfLVUP(role,Item_Traget,attr_type,1,0)
end 

--��� +1 ��������
function Lvup_Dex ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	ElfLVUP(role,Item_Traget,attr_type,1,0)
end 

--��� +1 ���
function Lvup_Sta ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	ElfLVUP(role,Item_Traget,attr_type,1,0)
end

--��� +2 ����
function Lvup_Str_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR
	ElfLVUP(role,Item_Traget,attr_type,2,0)
end 

--��� +2 ������������
function Lvup_Con_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	ElfLVUP(role,Item_Traget,attr_type,2,0)
end

--��� +2 ��������
function Lvup_Agi_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	ElfLVUP(role,Item_Traget,attr_type,2,0)
end 

--��� +2 ��������
function Lvup_Dex_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	ElfLVUP(role,Item_Traget,attr_type,2,0)
end 

--��� +2 ���
function Lvup_Sta_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	ElfLVUP(role,Item_Traget,attr_type,2,0)
end 

--������ ������ ����
function ElfLVUP(role,item,attrType,lvupType,falseType)
	local elfLV = GetElfLV(item)
	local elfMaxEXP = GetItemAttr(item,ITEMATTR_MAXENERGY) 
	local elfMaxURE = GetItemAttr(item,ITEMATTR_MAXURE)
	local attrNum = GetItemAttr( item ,attrType )
	local elfEXP = GetItemAttr( item ,ITEMATTR_ENERGY )

	local a = 1
	if elfLV >= 13 and elfLV <= 100 then
		local rand = math.random(1,100)
		if rand >= 1 and rand <= 80 then
			if elfLV == 0 then
				a = 1
			elseif elfLV ~= attrNum then
				a = 0.1
			elseif elfLV == attrNum then
				a = 1
			end
		elseif rand >= 81 and rand <= 100 then
			a = 0.1
		end
	else
		if elfLV == 0 then
			a = 1
		elseif elfLV ~= attrNum then
			a = 0.1
		elseif elfLV == attrNum then
			a = 1
		end
	end
	local b = Percentage_Random ( a )
	if b == 1 then
		AddItemEffect(role , item , 0  )
		elfEXP = 0
		SystemNotice (role , "������� ��� ������� �������!")
		attrNum = attrNum + lvupType
		SetItemAttr ( item , attrType , attrNum )
		local Item_MAXENERGY = 240 * ( elfLV+ lvupType )
		if Item_MAXENERGY > 6480 then
			Item_MAXENERGY = 6480
		end
		local Item_MAXURE_NUM = elfMaxURE + 1000*lvupType
		if Item_MAXURE_NUM > 32000 then
			Item_MAXURE_NUM = 32000
		end
		if Item_MAXURE_NUM == 25000  then
			Item_MAXURE_NUM = 25000+1
		end
		SetItemAttr ( item , ITEMATTR_MAXENERGY , Item_MAXENERGY )
		SetItemAttr ( item , ITEMATTR_MAXURE , Item_MAXURE_NUM )
		ResetItemFinalAttr(item)
		AddItemEffect(role , item , 1  )
	else
		if falseType == 1 then 
			elfEXP = 0
			SystemNotice (role , "������� ��� �������� �� �������.")
		else
			elfEXP = 0.5 * elfEXP 
			SystemNotice (role , "������� ��� �������� �� �������. ���� ��� ���������� � ����")
		end
	end
	if falseType == 1 then 
		SetItemAttr ( item , ITEMATTR_URE , 0 )
	end
	SetItemAttr ( item , ITEMATTR_ENERGY , elfEXP )
end
--���� ��� �� �������
function Give_ElfEXP_MISSION ( role , num )
	local Item = GetChaItem ( role , 2 ,  2  ) 
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY )
	local Elf_MaxEXP = GetItemAttr( Item ,ITEMATTR_MAXENERGY )
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE )
	if Elf_URE <= 50 then
		SystemNotice (role , "��� ��������. ���� ���������� ��-�� ���������� ������������")	
		return 0 
	else 
		Elf_URE = Elf_URE - 40
		SetItemAttr ( Item , ITEMATTR_URE , Elf_URE ) 
		num = math.min ( num , Elf_MaxEXP - Elf_EXP ) 
		SetItemAttr ( Item , ITEMATTR_ENERGY , num ) 
	end 
	return 1 
end 
--�������� ����� �� ��� �����
function CheckElfHaveSkill ( Num , SkillType , SkillNum )
	local Part2 = GetNum_Part2 ( Num )
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )
	if Part3 == SkillType and Part2 == SkillNum then
		return 1
	elseif Part2 == SkillNum then
		return 2
	end
	if Part5 == SkillType and Part4 == SkillNum then
		return 1
	elseif Part4 == SkillNum then
		return 2
	end
	if Part7 == SkillType and Part6 == SkillNum then
		return 1
	elseif Part6 == SkillNum then
		return 2
	end
	return 0
end
--���������� ����� ���
function AddElfSkill ( Item , SkillType , SkillNum )
	local Num = GetItemForgeParam ( Item , 1 ) 
	local Part1 = GetNum_Part1 ( Num )	
	local Part2 = GetNum_Part2 ( Num )
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )
	if Part2 == SkillNum then
		Part3 = SkillType
		Num = SetNum_Part3 ( Num , Part3 )
		Num = SetNum_Part2 ( Num , Part2 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end
	if Part4 == SkillNum then
		Part5 = SkillType
		Num = SetNum_Part5 ( Num , Part5 )
		Num = SetNum_Part4 ( Num , Part4 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end
	if Part6 == SkillNum then
		 Part7 = SkillType
		Num = SetNum_Part7 ( Num , Part7 )
		Num = SetNum_Part6 ( Num , Part6 )
		SetItemForgeParam ( Item , 1 , Num )
		return 
	end
	local rad = math.random( 1 , 100 )                             
	if Part2 == 0 and Part3 == 0 then
		Part2 = SkillNum
		Part3 = SkillType
		Num = SetNum_Part3 ( Num , Part3 )
		Num = SetNum_Part2 ( Num , Part2 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
		if rad<= 30 then
			Part2 = SkillNum
			Part3 = SkillType
			Num = SetNum_Part3 ( Num , Part3 )
			Num = SetNum_Part2 ( Num , Part2 )
			SetItemForgeParam ( Item , 1 , Num )
			return
		end
	end
	if Part4 == 0 and Part5 == 0 then
		Part4 = SkillNum
		Part5 = SkillType
		Num = SetNum_Part5 ( Num , Part5 )
		Num = SetNum_Part4 ( Num , Part4 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
		if rad> 30 and rad < 60 then
			Part4 = SkillNum
			Part5 = SkillType
			Num = SetNum_Part5 ( Num , Part5 )
			Num = SetNum_Part4 ( Num , Part4 )
			SetItemForgeParam ( Item , 1 , Num )
			return
		end
	end
	if Part6 == 0 and Part7 == 0 then
		Part6 = SkillNum
		Part7 = SkillType
		Num = SetNum_Part7 ( Num , Part7 )
		Num = SetNum_Part6 ( Num , Part6 )
		SetItemForgeParam ( Item , 1 , Num )
		return
	else
			Part6 = SkillNum
			Part7 = SkillType
			Num = SetNum_Part7 ( Num , Part7 )
			Num = SetNum_Part6 ( Num , Part6 )	
			SetItemForgeParam ( Item , 1 , Num )
		return
	end
end
--�������� ������� ���
function CheckHaveElf ( role )
	local Item = GetChaItem ( role , 2 , 1  )
	if Item == nil then              
		return 0
	end
	local Item_Type =  GetItemType ( Item ) 
	if Item_Type ~= 59 then
		return 0
	else
		local ELf_URE = GetItemAttr( Item ,ITEMATTR_URE ) 
		if ELf_URE <= 49 then
			return 0
		end
	end
	return Item

end
--������ ���
function ElfSKill_PowerSheild ( role , Elf_Item , Num , dmg )
	if dmg <= 0 then
		return 0
	end
	local role_hp = Hp ( role )
	local role_maxhp = Mxhp ( role )
	local havehp = role_maxhp / role_hp
	if havehp < 5 then
		return 0
	end
	local Elf_SheildLv = GetElfSkill_Lv ( Num , 1 )
	dmg = math.floor ( dmg * ( 0.2 + Elf_SheildLv * 0.10 )  ) 
	if Elf_SheildLv==3 then 
	dmg = math.floor ( dmg * ( 0.3 + Elf_SheildLv * 0.15 )  ) 
	end
	local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
	local Dmg_Take_rad = 10 
	local Elf_Dmg_CanTake = ( Item_URE - 50 ) / Dmg_Take_rad
	
	if Elf_Dmg_CanTake >= dmg then
		local Elf_URE_Take = math.floor ( dmg * Dmg_Take_rad )
		local Elf_URE_Notice = math.floor ( Elf_URE_Take / 50 )
		Take_ElfURE ( role , Elf_Item , 2 , Elf_URE_Take )
		SystemNotice ( role , "��� ��������� ����� �����: "..dmg)
		return dmg
	else
		SystemNotice ( role , "��� ��������. � ����� ��������� ��� �� ����� ��������� ����" )
		return 0
	end
end
--���������� ������� ������ ���
function GetElfSkill_Lv ( Num , SkillNum )
	local Part2 = GetNum_Part2 ( Num )
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )
	if SkillNum == Part2 then
		return Part3
	elseif SkillNum == Part4 then
		return Part5
	elseif SkillNum == Part6 then
		return Part7
	end
	return 0
end
--������� ���
function ElfSKill_ElfCrt ( role , Elf_Item , Num )
	local Elf_SkillLv = GetElfSkill_Lv ( Num , 2 )
	local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
	if Item_URE < 50 then
		SystemNotice ( role , "��� ��������. � ����� ��������� ��� �� ����� ��������� �������" )
		return 0
	end
	local b = ( Elf_SkillLv * 1.5 + 1 )  * 0.01
	if Elf_SheildLv==3 then 
		b = ( Elf_SkillLv * 2 + 1 )  * 0.01
	end
	local a = Percentage_Random ( b )
	if a == 1 then
		Take_ElfURE ( role , Elf_Item , 2 , Elf_SkillLv )
		return 1
	else
		return 0
	end
end
--����� ���
function ElfSkill_MagicAtk ( dmg , role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 3 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 3 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "��� ��������. � ����� ��������� ��� �� ����� ������������ �����" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 1 )
					return dmg * 0.03 + 3 
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return dmg * 0.06 + 6
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 3 )
					return dmg * 0.09 + 9
				end
			end
		end
	end
	return 0
end
--�������������� ���
function ElfSkill_HpResume ( role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 4 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 4 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "��� ��������. � ����� ��������� ��� �� ����� ������������ ��������������" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 7
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 14
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 23
				end
			end
		end
	end
	return 0
end
--��������� ��� 
function ElfSkill_SpResume ( role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 5 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 5 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "��� ��������. � ����� ��������� ��� �� ����� ������������" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 7
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 14
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 23
				end
			end
		end
	end
	return 0
end

function GiveItemPlayer(name,id,number,parametr)
	GiveItemPlayerName = name
	GiveItemPlayerID = id
	GiveItemPlayerNumber = number
	GiveItemPlayerParametr = parametr
end

function GiveJingLingNow( role , now_tick)
	if GetChaDefaultName(role) == GiveItemPlayerName then
		GiveItemPlayerName = ""
		GiveItem ( role , 0 , GiveItemPlayerID , GiveItemPlayerNumber , GiveItemPlayerParametr )
	end
end


--����� ����� � ������
function CreditExchangeImpl( role, tp )
	local i = CheckBagItem( role,3849 )
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 3849 )
		local rongyu_num=GetItemAttr ( Item , ITEMATTR_VAL_STR )
		if rongyu_num<=0 then
			SystemNotice ( role , "��� ������������� ����� �������������� ����������!")
			return
		end
		local middle=0
		if rongyu_num<30000 then
			middle=30000 - rongyu_num
		end
		middle= math.floor ( middle / 2 )
		local exp_star=GetChaAttr (  role , ATTR_CEXP )
		local job = GetChaAttr(role, ATTR_JOB)
		local lv=GetChaAttr(role, ATTR_LV) 
		local money_num=rongyu_num*100
		local money_num1 = money_num * 200
		local money_num2 = money_num * 150
		local money_num3 = money_num * 100
		local exp_num=rongyu_num*5+exp_star
		local rad=math.random(1,30000)
		local cha_type = GetChaTypeID ( role )
		local cha_namea = GetChaDefaultName ( role )
		LG( "star_rongyuzhichange_lg" ,cha_namea, tp , lv , exp_star , job , cha_type)
		if tp==0 or tp==1 or tp==2 then
			if lv>=15 and lv<=40 then
				money_num=rongyu_num*100*100
			elseif lv>=41 and lv<=60 then
				money_num=rongyu_num*100*70
			elseif lv>=61 then
				money_num=rongyu_num*100*50
			end
			AddMoney ( role , 0 , money_num ) 
		LG( "star_rongyuzhichange_lg" ,cha_namea.."tp==0 or tp==1 or tp==2 obtain gold"..money_num)
		elseif tp==3 or tp==4 or tp==5 then
			local dif_exp = rongyu_num*20+exp_star - DEXP[lv+1]
			if lv>=15 and lv<=30 then
				exp_num=rongyu_num*10+exp_star
				local a1= math.floor (rongyu_num*10 )
				SystemNotice ( role , "�������� �����: "..a1 )
			elseif lv>=31 and lv<=40 then
				exp_num=rongyu_num*13+exp_star
				local a1= math.floor (rongyu_num*13 )
				SystemNotice ( role , "�������� �����: "..a1 )
			elseif lv>=41 and lv<=50 then
				exp_num=rongyu_num*22+exp_star
				local a1= math.floor (rongyu_num*22 )
				SystemNotice ( role , "�������� �����: "..a1 )
			elseif lv>=51 and lv<=60 then
				exp_num=rongyu_num*44+exp_star
				local a1= math.floor (rongyu_num*44 )
				SystemNotice ( role , "�������� �����: "..a1 )
			elseif lv>=61 and lv<=70 then
				exp_num=rongyu_num*102+exp_star
				local a1= math.floor (rongyu_num*102 )
				SystemNotice ( role , "�������� �����: "..a1 )
			elseif lv>=71 and  lv<=78 then
				exp_num=rongyu_num*270+exp_star
				local a1= math.floor (rongyu_num*270 )
				SystemNotice ( role , "�������� �����: "..a1 )
			elseif lv==79 and dif_exp<=0 then 
				exp_num=rongyu_num*270+exp_star
				local a1= math.floor (rongyu_num*270 )
				SystemNotice ( role , "�������� �����: "..a1 )
			elseif lv==79 and dif_exp>0 then 
				exp_num = dif_exp*0.02 + DEXP[lv+1]
				local a1= math.floor (rongyu_num*270)
				SystemNotice ( role , "�������� �����: "..a1 )
			elseif lv>=80  then
				exp_num=rongyu_num*270*0.02+exp_star
				local a1= math.floor (rongyu_num*270 )
				SystemNotice ( role , "�������� �����: "..a1 )
			end
			SetChaAttrI( role , ATTR_CEXP , exp_num )
			local lg_exp=exp_num-exp_star
			LG( "star_rongyuzhichange_lg" ,cha_namea.."tp==3 or tp==4 or tp==5 obtain experience"..lg_exp)
		elseif tp==6 or tp==7 or tp==8 then
			if lv>=15 and lv<=40 then
				if rad<=rongyu_num or rongyu_num>=30000 then
					GiveItem ( role , 0 , 3458  , 1 , 4 ) 
					LG( "star_rongyuzhichange_lg" ,cha_namea.."Lv>=15 and Lv<=40 will obtained equipment ID="..3458)
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num1 ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "�������� �����: "..a1 )
				end
			elseif lv>=41 and lv<=60 then
				if rad<=rongyu_num or rongyu_num>=30000 then
					local rad1=math.random(1,12)
					local Lg_ID=787
					if rad1==1 then
						Lg_ID=787
					elseif rad1==2 then
						Lg_ID=791
					elseif rad1==3 then
						Lg_ID=794
					elseif rad1==4 then
						Lg_ID=801
					elseif rad1==5 then
						Lg_ID=805
					elseif rad1==6 then
						Lg_ID=797
					elseif rad1==7 then
						Lg_ID=765
					elseif rad1==8 then
						Lg_ID=768
					elseif rad1==9 then
						Lg_ID=772
					elseif rad1==10 then
						Lg_ID=775
					elseif rad1==11 then
						Lg_ID=779
					elseif rad1==12 then
						Lg_ID=783
					end
					GiveItem ( role , 0 , Lg_ID  , 1 , 4 ) 
					LG( "star_rongyuzhichange_lg" ,cha_namea.."lv>=41 and lv<=60receive apparelID="..Lg_ID)
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num2 ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "�������� �����: "..a1 )
				end
			elseif lv>=61 then
				if rad<=rongyu_num or rongyu_num>=30000 then
				local rad2=math.random(1,3)
				local rad3=math.random(1,4)
					local Lg_ID=2530
					if job == 8 then --�޽�
						if rad2==1 then
							Lg_ID=2530
						elseif rad2==2 then
							Lg_ID=2531
						elseif rad2==3 then
							Lg_ID=2532
						end
					elseif job == 9 then   --˫��
						if rad2==1 then
							Lg_ID=2533
						elseif rad2==2 then
							Lg_ID=2534
						elseif rad2==3 then
							Lg_ID=2535
						end
					elseif job == 12 then --�ѻ���
						if rad2==1 then
							Lg_ID=2536
						elseif rad2==2 then
							Lg_ID=2537
						elseif rad2==3 then
							Lg_ID=2538
						end
					elseif job == 16 then ---- "Voyager"
						if cha_type~=4 then
							if rad2==1 then
								Lg_ID=2539
							elseif rad2==2 then
								Lg_ID=2540
							elseif rad2==3 then
								Lg_ID=2541
							end
						else
							if rad3==1 then
								Lg_ID=2539
							elseif rad3==2 then
								Lg_ID=2540
							elseif rad3==3 then
								Lg_ID=2541
							elseif rad3==4 then
								Lg_ID=2548
							end
						end
					elseif job == 13 then    ---- "Cleric"
						if cha_type~=4 then
							if rad2==1 then
								Lg_ID=2542
							elseif rad2==2 then
								Lg_ID=2543
							elseif rad2==3 then
								Lg_ID=2544
							end
						else
							if rad3==1 then
								Lg_ID=2542
							elseif rad3==2 then
								Lg_ID=2543
							elseif rad3==3 then
								Lg_ID=2544
							elseif rad3==4 then
								Lg_ID=2548
							end
						end
					elseif job == 14 then    ---- "Seal Master"
						if cha_type~=4 then
							if rad2==1 then
								Lg_ID=2545
							elseif rad2==2 then
								Lg_ID=2546
							elseif rad2==3 then
								Lg_ID=2547
							end
						else
							if rad3==1 then
								Lg_ID=2545
							elseif rad3==2 then
								Lg_ID=2546
							elseif rad3==3 then
								Lg_ID=2547
							elseif rad3==4 then
								Lg_ID=2548
							end
						end
					end
					GiveItem ( role , 0 , Lg_ID  , 1 , 4 ) 
					LG( "star_rongyuzhichange_lg" ,cha_namea.."Lv>61 obtain equipment ID="..Lg_ID)
				elseif rad>rongyu_num and rad<=middle then
					AddMoney ( role , 0 , money_num3 ) 
				elseif rad>middle and rad<=30000 then
					SetChaAttrI( role , ATTR_CEXP , exp_num )
					local a1= math.floor (rongyu_num*5 )
					SystemNotice ( role , "�������� �����: "..a1 )
				end
			end
		end
	SetItemAttr ( Item ,ITEMATTR_VAL_STR , 0 )
	end
end
-----------------------------
function Elf_Attr_cs ( role , Item_JLone , Item_JLother )
	local Item_JLone_num={}
	local Item_JLother_num={}
	Item_JLone_num[1] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STR )	
	Item_JLone_num[2] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_AGI )	
	Item_JLone_num[3] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_DEX )	
	Item_JLone_num[4] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_CON )	
	Item_JLone_num[5] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STA )	
	Item_JLone_num[6] = GetItemAttr( Item_JLone ,ITEMATTR_URE )	 
	Item_JLone_num[7] = GetItemAttr( Item_JLone ,ITEMATTR_MAXURE )
	Item_JLone_num[8] = Item_JLone_num[1] + Item_JLone_num[2] + Item_JLone_num[3] + Item_JLone_num[4] + Item_JLone_num[5]
	Item_JLother_num[1] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STR )	
	Item_JLother_num[2] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_AGI )	
	Item_JLother_num[3] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_DEX )	  
	Item_JLother_num[4] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_CON )	 
	Item_JLother_num[5] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STA )	 
	Item_JLother_num[6] = GetItemAttr( Item_JLother ,ITEMATTR_URE )	
	Item_JLother_num[7] = GetItemAttr( Item_JLother ,ITEMATTR_MAXURE )
	Item_JLother_num[8] = Item_JLother_num[1] + Item_JLother_num[2] + Item_JLother_num[3] + Item_JLother_num[4] + Item_JLother_num[5]
	local m=0
	local n = 0
	local num_jlone=26
	local num_jlother=26
	local max_JLone_temp=Item_JLone_num[1]
	local max_JLother_temp=Item_JLother_num[1]
	for m=1,4,1 do
		if Item_JLone_num[m+1] >max_JLone_temp then
			max_JLone_temp=Item_JLone_num[m+1]
			num_jlone=m+26
		end
	end
	for n=1,4,1 do
		if Item_JLother_num[n+1] >max_JLother_temp then
			max_JLother_temp=Item_JLother_num[n+1]
			num_jlother=n+26
		end
	end
	max_JLone_temp = max_JLone_temp - 4
	max_JLother_temp = max_JLother_temp - 4
	local new_JLone_MAXENERGY = 240 * (Item_JLone_num[8] + 1 - 4 )
	if new_JLone_MAXENERGY > 6480 then
		new_JLone_MAXENERGY = 6480
	end
	local new_JLone_MAXURE = 5000 + 1000*(Item_JLone_num[8] - 4 )
	if new_JLone_MAXURE > 32000 then
		new_JLone_MAXURE = 32000
	end
	local new_JLother_MAXENERGY = 240 * (Item_JLother_num[8] + 1 - 4 )
	if new_JLother_MAXENERGY > 6480 then
		new_JLother_MAXENERGY = 6480
	end
	local new_JLother_MAXURE = 5000 + 1000*(Item_JLother_num[8] - 4 )
	if new_JLother_MAXURE > 32000 then
		new_JLother_MAXURE = 32000
	end
	SetItemAttr ( Item_JLone , num_jlone , max_JLone_temp )
	SetItemAttr ( Item_JLone , ITEMATTR_ENERGY , 240) 	
	SetItemAttr ( Item_JLone , ITEMATTR_MAXENERGY , new_JLone_MAXENERGY )
	SetItemAttr ( Item_JLone , ITEMATTR_URE , 5000 ) 	
	SetItemAttr ( Item_JLone , ITEMATTR_MAXURE , new_JLone_MAXURE ) 	
	SetItemAttr ( Item_JLother , num_jlother , max_JLother_temp )
	SetItemAttr ( Item_JLother , ITEMATTR_ENERGY , 240 ) 	
	SetItemAttr ( Item_JLother , ITEMATTR_MAXENERGY , new_JLother_MAXENERGY )
	SetItemAttr ( Item_JLother , ITEMATTR_URE , 5000 ) 	
	SetItemAttr ( Item_JLother , ITEMATTR_MAXURE , new_JLother_MAXURE )  	
end

--������� �������
function  TigerStart( ... )
	--Notice("TigerStart...................")
	if arg.n ~= 4 then
		SystemNotice ( arg[1] , "�������� �������� ��������� "..arg.n )
		return 
	end	
	local num = {}
	local Item_type = {}
	local num_star = 0
	local n  = 0
	local m = 0
	local i = 0
	local q=0
	for n=1,9,1 do 
		local star = math.random ( 1 , 4700 )
		local ret1 = IsItemValid(star)
		if ret1 ~= LUA_TRUE then
			for m=1,300,1 do
				local ret2 = IsItemValid(star+m)
				if ret2 ~=LUA_TRUE then
				else
					num[n] = star+m
				end
			end
		else 
			num [n]=star
		end
	end
	for i=1,9,1 do
		Item_type[i] = GetItemType2( num [i] )
	end
	local NocLock =	KitbagLock(arg[1], 0 )
	if NocLock == LUA_FALSE then
		SystemNotice( arg[1] , "��� ��������� ������������")
		return 0
	end
	local Item_CanGet = GetChaFreeBagGridNum ( arg[1] )	
	if Item_CanGet < 5 then
		SystemNotice( arg[1] ,"� ��� ������ ���� �� ������ 5 ��������� ������ � ���������")
		return 0
	end
	local Money_Have = GetChaAttr ( arg[1]  , ATTR_GD )
	if Money_Have>1900000000 then
		SystemNotice (arg[1], "� ��� ������ 1 ��������� ������!? ��� ������.")
		return	
	end
	if arg[2]==1 then
		local j1 = TakeItem(  arg[1], 0,855, 5 )			        
		if j1==0 then
			SystemNotice ( arg[1] ,"������ ��� �������� ������ ���")
			return
		end
	end
	if arg[3]==1 then
		local j2 = TakeItem(  arg[1], 0,855, 5 )			            
		if j2==0 then
			SystemNotice ( arg[1] ,"������ ��� �������� ������ ���")
			return
		end		
	end
	if arg[4]==1 then
		local j3 = TakeItem(  arg[1], 0,855, 5 )			            
		if j3==0 then
			SystemNotice ( arg[1] ,"������ ��� �������� ������ ���")
			return
		end		
	end
	local lhj_te_flg=0
	local lhj_yi_flg=0
	local lhj_hei_flg=0
	local now_day= os.date("%d")		         
	local now_hour= os.date("%H")		          
	local now_miniute= os.date("%M")	         
	local now_scend=  os.date("%S")		 
	now_day= tonumber(now_day)			 
	now_hour= tonumber(now_hour)		 
	now_miniute= tonumber(now_miniute)	 	 
	now_scend= tonumber(now_scend)		
	local CheckTimeNum = now_day*86400 + now_hour*3600+now_miniute*60+now_scend
	if CheckTimeNum>NOWTIME_TE+86400 then
		NOWTIME_TE=CheckTimeNum
		lhj_te_flg=1
	end
	if CheckTimeNum>NOWTIME_YI+3600 then
		NOWTIME_YI=CheckTimeNum
		lhj_yi_flg=1
	end
	if CheckTimeNum>NOWTIME_HEI+518400 then
		NOWTIME_HEI=CheckTimeNum
		lhj_hei_flg=1
	end
	local num_s=0
	for num_s=1,3,1 do 
		if Item_type[num_s]>=1 and Item_type[num_s]<=11 then
			if Item_type[num_s+3] >=1 and Item_type[num_s+3]<=11 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=1 and Item_type[num_s+6]<=11 then
				num[num_s+6] = num[num_s]
			end
		end
		if Item_type[num_s]>=22 and Item_type[num_s]<=29 then
			if Item_type[num_s+3] >=22 and Item_type[num_s+3]<=29 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=22 and Item_type[num_s+6]<=29 then
				num[num_s+6] = num[num_s]
			end
		end
		if Item_type[num_s]>=36 and Item_type[num_s]<=66 then
			if Item_type[num_s+3] >=36 and Item_type[num_s+3]<=66 then
				num[num_s+3] = num[num_s]
			end
			if Item_type[num_s+6] >=36 and Item_type[num_s+6]<=66 then
				num[num_s+6] = num[num_s]
			end
		end
	end
	local j=0
	for j=1,9,1 do
		Item_type[j] = GetItemType2( num [j] )
		if num[j]==822 or num[j]==823 or num[j]==825 or num[j]==826 or num[j]==827 or num[j]==1116 or num[j]==1117 or num[j]==1118 or num[j]==46  or num[j]==1124  or num[j]==1125  or num[j]==1126  or num[j]==1127 or  num[j]==1057  or  num[j]==1060   or  num[j]==1063    or  num[j]==1066   or  num[j]==1034  or  num[j]==586  or  num[j]==762  or  num[j]==3061  or  num[j]==410   or  num[j]==2885  then--------CABAL�Խ�ȯ�����޺ͻԻ�,�Ҷ�����
			num[j]=3360 ---------��ʯ		
		end
		if num[j]>=845 and num[j]<=847 then
			local rad_s= math.random ( 1 , 40 )
			if rad_s>=3 or lhj_hei_flg==0 then
				num[j]=3360 ---------��ʯ		
			end
		end
		
		if Item_type[j]~=1 and Item_type[j]~=2 and Item_type[j] ~=3 and Item_type[j] ~=4 and Item_type[j] ~=7 and Item_type[j] ~=9 and Item_type[j] ~=11 and Item_type[j] ~=22 and Item_type[j] ~=23 and Item_type[j] ~=24 and Item_type[j] ~=25 and Item_type[j] ~=26 and Item_type[j] ~=27 and Item_type[j] ~=29 and Item_type[j] ~=36 and Item_type[j] ~=47 and Item_type[j] ~=50 and Item_type[j] ~=57 and Item_type[j] ~=58 and Item_type[j] ~=60 and Item_type[j] ~=65 and Item_type[j] ~=66 then
			local eleven = math.random ( 1 , 1000 )	
			local new_id = math.random ( 3850 , 3875 )
			if eleven <= 328 then
				num[j]= new_id ----------��Ƭ
			elseif eleven >=329 and  eleven<=999 then
				num[j]=3360 ---------��ʯ
			else
				num[j]=194 ---------��Ǯ
			end
		end
	end
	local rad1= 0
	local rad2= 0
	local rad3= 0
	local rad4= 0
	local rad5= 0
	local rad6= 0
	local rad7= 0
	local rad8= 0
	local rad9= 0
	local rad10= 0
	local rad11= 0
	local p=0
	local p=0
	for p=1,9,1 do
		if num[p]>=831 and num[p]<=842 then
			rad1=1
		end
		if num[p]>=2300 and num[p]<=2344 then
			rad2=1
		end
		if num[p]>=2367 and num[p]<=2407 then
			rad3=1
		end
		if num[p]>=2549 and num[p]<=2553 then
			rad4=1
		end
		if num[p]>=2588 and num[p]<=3061 then
			rad5=1
		end
		if num[p]>=3936 and num[p]<=3942 then
			rad6=1
		end
		if num[p]>=4311 and num[p]<=4313 then
			rad7=1
		end
		if num[p]>=28 and num[p]<=31 then
			rad8=1
		end
		if num[p]>=194 and num[p]<=227 then
			rad9=1
		end
		if num[p]>=276 and num[p]<=280 then
			rad10=1
		end
		local h=0
		for h=1,252,1 do
			if num[p]==LHJ_ID[h] then
				rad11=1
			end
		end
		if rad1==1 or  rad2==1 or rad3==1 or  rad4==1 or rad5==1 or rad6==1 or  rad7==1  or  rad8==1  or  rad9==1 or  rad10==1  or rad11==1 or  num[p]==457 or num[p]==458 or num[p]==459 or num[p]==464 or num[p]==640 or num[p]==816  or num[p]==822 or num[p]==823 or num[p]==3115 or num[p]==18 or num[p]==19 or num[p]==43 or num[p]==109 or num[p]==111 or num[p]==113 or num[p]==115 or num[p]==117 or num[p]==119  or num[p]==127 or num[p]==150 or num[p]==308 or num[p]==309 or num[p]==348 or num[p]==349 then
			local new_id1 = math.random ( 3850 , 3875 )
			num[p]= new_id1 ----------��Ƭ		
		end
	end
	
	local reset_rad=math.random ( 1 , 100 )
	local kapian_rad=math.random ( 3850 , 3875 )
	if reset_rad>=47 and num[1]==num[3] and num[1]==num[5] and num[1]==num[7]  and num[1]==num[9]  then-------�帣ͬ�ٽ���39%
		num[9]=kapian_rad
	end
	if reset_rad>=24 and num[2]==num[4] and num[2]==num[5] and num[2]==num[6]  and num[2]==num[8]  then-------ʮȫʮ������66%
		num[8]=kapian_rad
	end
	if  num[1]==num[2] and num[1]==num[3] and num[1]==num[4]  and num[1]==num[6] and num[1]==num[7] and num[1]==num[8]  and num[1]==num[9] then-------����ͬ�콵��66%
		if lhj_yi_flg==0 or reset_rad>=10 then
			num[9]=kapian_rad
		end
	end
	if  num[1]==num[2] and num[1]==num[3] and num[1]==num[4] and num[1]==num[5] and num[1]==num[6] and num[1]==num[7] and num[1]==num[8]  and num[1]==num[9] then-------�����޽�����89%
		if lhj_te_flg==0 or reset_rad>=2 then
			num[9]=kapian_rad
		end
	end
	return num[1] , num[2] , num[3] , num[4] , num[5] , num[6] , num[7] , num[8] , num[9] 
end

function TigerStop(...)
	if arg.n ~= 13 then
		SystemNotice ( arg[1] , "�������� �������� ��������� "..arg.n )
		return 
	end
	local flag = 0
	if arg[11] == 1 and arg[12] == 1 and arg[13] == 1 then
		flag = 1
	end
	local flag_myp = 1
	if arg[2] == 0 or arg[3] == 0 or arg[4] == 0 or arg[5] == 0 or arg[6] == 0 or arg[7] == 0 or arg[8] == 0 or  arg[9] == 0 or arg[10] == 0 or arg[2] == nil or arg[3] == nil or arg[4] == nil or arg[5] == nil or arg[6] == nil or arg[7] == nil or arg[8] == nil or  arg[9] == 0 or arg[10] == nil then
		 flag_myp=0
		SystemNotice ( arg[1] , "�������� �������� ����� �����" )
		return
	end
	local eleven = 0
	local new_id = math.random ( 3850 , 3875 )
--����� ������� ����(��� �����)
	if arg[2] == arg[3] and arg[3] == arg[4] and arg[4] == arg[5]  and arg[5] == arg[6] and arg[6] == arg[7] and arg[7] == arg[8] and arg[8] == arg[9] and arg[9] == arg[10] and arg[2] ~= new_id and flag == 1 and flag_myp == 1 then

	local cha_name4 = GetChaDefaultName ( arg[1] ) 
		SynTigerString ( arg[1] ,"�����������! �� �������� 5 000 000 ������� ")
		AddMoney ( arg[1] , 0 , 5000000 )
		eleven = eleven + 1
		LG( "LHJ_wanshou_lg" ,cha_name4,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--������� ����(��� ����� ����� ��������)
	if arg[2] == arg[3] and arg[3] == arg[4] and arg[4] == arg[5] and arg[5] == arg[7] and arg[7] == arg[8] and arg[8] == arg[9] and arg[9] == arg[10] and arg[2] ~= new_id and flag == 1 and flag_myp == 1 then

		local cha_name3 = GetChaDefaultName ( arg[1] ) 
		SynTigerString ( arg[1] ,"�����������! �� �������� 1 000 000 �������" )
		AddMoney ( arg[1] , 0 , 1000000 )
		eleven = eleven + 1
		LG( "LHJ_putian_lg" ,cha_name3,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--������� ����(����� �� ������)
	if arg[3] == arg[5] and arg[5] == arg[6] and arg[6] == arg[7] and arg[7] == arg[9] and arg[3] ~= new_id and flag == 1 and flag_myp == 1 then

		local itemname2 = GetItemName ( arg[3] ) 
		local cha_name2 = GetChaDefaultName ( arg[1] )  
		SynTigerString( arg[1] ,"�����������! �� ����������� 300 000 �������")
		AddMoney ( arg[1] , 0 , 300000 )
		eleven = eleven + 1
		LG( "LHJ_shiquan_lg" ,cha_name2,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--������� ����(����� ���� � �����)
	if arg[2] == arg[4] and arg[4] == arg[6] and arg[6] == arg[8] and arg[8] == arg[10] and arg[2] ~= new_id and flag == 1 and flag_myp == 1 then
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		
		SynTigerString  ( arg[1] ,"�����������! �� ����������� 100 000 �������")
		AddMoney ( arg[1] , 0 , 100000 )
		eleven = eleven + 1
		LG( "LHJ_wufu_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--������� ����(����� ����)
	if arg[2] == arg[4] and arg[4] == arg[8] and arg[8] == arg[10] and arg[2] ~= new_id and flag == 1 and flag_myp == 1 then
		SystemNotice ( arg[1] ,"�����������! �� �������� 50 000 ������� � �������� ���������� � ������� ����� � ������� �����")
		SynTigerString  ( arg[1] ,"�����������! �� �������� 50 000 ������� � �������� ���������� � ������� ����� � ������� �����")
		AddMoney ( arg[1] , 0 , 50000 )
		GiveItem ( arg[1] , 0 , 3323 , 1 , 4 )
		GiveItem ( arg[1] , 0 , 8535 , 1 , 4 )
		GiveItem ( arg[1] , 0 , 8535 , 1 , 4 )
		eleven = eleven + 1
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_siji_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--������� ����(������ ����� ����� ������)
	if arg[3] == arg[5] and arg[5] == arg[7] and arg[7] == arg[9] and arg[3] ~= new_id and flag == 1 and flag_myp == 1 then
		AddMoney ( arg[1] , 0 , 25000 )
		
		local rad_heishi = math.random ( 1 , 2 )
		if rad_heishi == 1 then
			SystemNotice ( arg[1] ,"�����������! �� �������� 25 000 ������� � ������ � �����������")
			SynTigerString  ( arg[1] ,"�����������! �� �������� 25 000 ������� � ������ � �����������")
			GiveItem ( arg[1] , 0 , 3326 , 1 , 4 )
			GiveItem ( arg[1] , 0 , 8574 , 1 , 4 )
		else
			SystemNotice ( arg[1] ,"�����������! �� �������� 25000 ������� � �������")
			SynTigerString  ( arg[1] ,"�����������! �� �������� 25000 ������� � �������")
			GiveItem ( arg[1] , 0 , 3328 , 1 , 4 )
			GiveItem ( arg[1] , 0 , 8142 , 1 , 4 )
		end
		eleven = eleven + 1
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_xiaokong_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--������ ����(������ ���������)
	if arg[4] == arg[6] and arg[6] == arg[8] and arg[4] ~= new_id and flag == 1 and flag_myp == 1 then
		AddMoney ( arg[1] , 0 , 10000 )
		local rad_heishi1 = math.random ( 1 , 5 )
		if rad_heishi1 == 1 then
			SystemNotice ( arg[1] ,"�����������! �� �������� 10 000 ������� � ����")
			SynTigerString ( arg[1] ,"�����������! �� �������� 10 000 ������� � ����")
			GiveItem ( arg[1] , 0 , 3326 , 1 , 4 )
			GiveItem ( arg[1] , 0 , 8141 , 1 , 4 )
		else
			SystemNotice ( arg[1] ,"�����������! �� �������� 10 000 ������� � ��������� �����")
			SynTigerString ( arg[1] ,"�����������! �� �������� 10 000 ������� � ��������� �����")
			GiveItem ( arg[1] , 0 , 3096 , 1 , 4 )
		end
		eleven = eleven + 1
		local cha_name1 = GetChaDefaultName ( arg[1] )
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--������ ����(������ ���������)
	if arg[2] == arg[6] and arg[6] == arg[10] and arg[2] ~= new_id and flag == 1 and flag_myp == 1 then
		AddMoney ( arg[1] , 0 , 5000 )
		local rad_heishi2 = math.random ( 1 , 5 )
		if rad_heishi2 == 1 then
			SystemNotice ( arg[1] ,"�����������! �� �������� 5 000 ������� � ������ �����")
			SynTigerString ( arg[1] ,"�����������! �� �������� 5 000 ������� � ������ �����")
			GiveItem ( arg[1] , 0 , 8535 , 1 , 4 )
			GiveItem ( arg[1] , 0 , 3095 , 1 , 4 )
		else
			SystemNotice ( arg[1] ,"�����������! �� �������� 5 000 ������� � ������ �� �������� ��������")
			SynTigerString ( arg[1] ,"�����������! �� �������� 5 000 ������� � ������ �� �������� ��������")
			GiveItem ( arg[1] , 0 , 8546 , 1 , 4 )
		end
		eleven = eleven + 1
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--������ ����(����� ������� ������)
	if arg[5] == arg[6] and arg[6] == arg[7] and arg[5] ~= new_id and flag == 1 and flag_myp == 1 then
		SystemNotice ( arg[1] ,"�����������! �� �������� 5 000 �������")
		SynTigerString ( arg[1] ,"�����������! �� �������� 5 000 �������")
		AddMoney ( arg[1] , 0 , 5000 )
		eleven = eleven + 1
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--������ ����(������ 3 ������ �����)
	if arg[2] == arg[5] and arg[5] == arg[8] and arg[11] == 1 and arg[2] ~= new_id and flag_myp == 1 then
		SystemNotice ( arg[1] ,"�����������! �� �������� 2 000 �������")
		SynTigerString( arg[1] ,"�����������! �� �������� 2 000 �������")
		AddMoney ( arg[1] , 0 , 2000 )
		eleven = eleven + 1
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--������ ����(������ 3 ������ �����)
	if arg[3] == arg[6] and arg[6] == arg[9] and arg[12] == 1 and arg[3] ~= new_id and flag_myp == 1 then
		SystemNotice ( arg[1] ,"�����������! �� �������� 2 000 �������")
		SynTigerString( arg[1] ,"�����������! �� �������� 2 000 �������")
		AddMoney ( arg[1] , 0 , 2000 )
		eleven = eleven + 1
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--������ ����(������ 3 ������ �����)
	if arg[4] == arg[7] and arg[7] == arg[10] and arg[13] == 1 and arg[4] ~= new_id and flag_myp == 1 then
		SystemNotice ( arg[1] ,"�����������! �� �������� 2 000 �������")
		SynTigerString( arg[1] ,"�����������! �� �������� 2 000 �������")
		AddMoney ( arg[1] , 0 , 2000 )
		eleven = eleven + 1
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if eleven == 0 then
		SynTigerString( arg[1] ,"� ���������, �� ���������!")
	else 
		eleven = 0
	end
end


------
-- ����� 100 ����� �� ������ �����
------
function Change_shanyao (character, npc)
	local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "��� ��������� ������������")
		return 0
	end
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "� ��� ��� ������ ������")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 100 then
			SystemNotice( character , "� ��� ������������ ����� �����")
			return 0
		end
	local HonorPoint_X=HonorPoint-100
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		if Item_CanGet <= 0 then
			SystemNotice(character ,"������������ ����� � ���������")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2614  , 1 , 4 ) 
end

------
-- ����� 500 ����� �� �������� ������
------
function Change_rongyao (character, npc)
local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "��� ��������� ������������")
		return 0
	end
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "� ��� ��� ������ ������")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 500 then
			SystemNotice( character , "� ��� ������������ ����� �����")
			return 0
		end
	local HonorPoint_X=HonorPoint-500
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		if Item_CanGet <= 0 then
			SystemNotice(character ,"������������ ����� � ���������")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2615  , 1 , 4 )
end

------
-- ����� 1000 ����� �� ������ �����������
------
function Change_huihuang (character, npc)
	local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "��� ��������� ������������")
		return 0
	end
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "� ��� ��� ������ ������")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 1000 then
			SystemNotice( character , "� ��� ������������ ����� �����")
			return 0
		end
	local HonorPoint_X=HonorPoint-1000
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		if Item_CanGet <= 0 then
			SystemNotice(character ,"������������ ����� � ���������")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2616  , 1 , 4 )
end

function Eleven_Log_0( role ) 
	local cha_name = GetChaDefaultName ( role ) 
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
	LG( "Eleven_Log_0" ,cha_name,lv,job)
end
function Eleven_Log( role,typ ) 
	local cha_name = GetChaDefaultName ( role ) 
	local job = GetChaAttr(role, ATTR_JOB)
	local lv = GetChaAttr(role, ATTR_LV) 
	LG( "Eleven_Log" ,cha_name,lv,job,typ)
end

-------------------------------------------------------------------------------------
--Leo  end
-------------------------------------------------------------------------------------

--������ �����
GetExp	=	{}
GetExp[1]	=	2
GetExp[2]	=	3
GetExp[3]	=	7
GetExp[4]	=	17
GetExp[5]	=	50
GetExp[6]	=	125
GetExp[7]	=	250
GetExp[8]	=	500
GetExp[9]	=	987
GetExp[10]	=	1604
GetExp[11]	=	2493
GetExp[12]	=	3734
GetExp[13]	=	5422
GetExp[14]	=	7669
GetExp[15]	=	10605
GetExp[16]	=	14383
GetExp[17]	=	19178
GetExp[18]	=	25191
GetExp[19]	=	32653
GetExp[20]	=	41828
GetExp[21]	=	53016
GetExp[22]	=	66556
GetExp[23]	=	82834
GetExp[24]	=	102282
GetExp[25]	=	125390
GetExp[26]	=	152706
GetExp[27]	=	184846
GetExp[28]	=	222499
GetExp[29]	=	266435
GetExp[30]	=	317513
GetExp[31]	=	376689
GetExp[32]	=	445031
GetExp[33]	=	523719
GetExp[34]	=	614069
GetExp[35]	=	717537
GetExp[36]	=	835735
GetExp[37]	=	970446
GetExp[38]	=	1123644
GetExp[39]	=	1297505
GetExp[40]	=	1494430
GetExp[41]	=	1717066
GetExp[42]	=	1968329
GetExp[43]	=	2251428
GetExp[44]	=	2569889
GetExp[45]	=	2927590
GetExp[46]	=	3328788
GetExp[47]	=	3778155
GetExp[48]	=	4280815
GetExp[49]	=	4842382
GetExp[50]	=	5469008
GetExp[51]	=	6167428
GetExp[52]	=	6945010
GetExp[53]	=	7809811
GetExp[54]	=	8770641
GetExp[55]	=	9837120
GetExp[56]	=	11019758
GetExp[57]	=	12330022
GetExp[58]	=	13780426
GetExp[59]	=	15384615
GetExp[60]	=	18873209
GetExp[61]	=	22938213
GetExp[62]	=	29785576
GetExp[63]	=	37851819
GetExp[64]	=	47307639
GetExp[65]	=	58344152
GetExp[66]	=	77645529
GetExp[67]	=	93209006
GetExp[68]	=	119079807
GetExp[69]	=	149311139
GetExp[70]	=	184487925
GetExp[71]	=	225262774
GetExp[72]	=	284204889
GetExp[73]	=	339662372
GetExp[74]	=	403272284
GetExp[75]	=	476045862
GetExp[76]	=	594049618
GetExp[77]	=	740214605
GetExp[78]	=	888062792
GetExp[79]	=	1045817451
GetExp[80]	=	1212674905
GetExp[81]	=	1220447543
GetExp[82]	=	1229448257
GetExp[83]	=	1239871084
GetExp[84]	=	1251940718
GetExp[85]	=	1265917353
GetExp[86]	=	1282102297
GetExp[87]	=	1300844461
GetExp[88]	=	1322547887
GetExp[89]	=	1347680454
GetExp[90]	=	1376783967
GetExp[91]	=	1410485834
GetExp[92]	=	1449512595
GetExp[93]	=	1494705585
GetExp[94]	=	1547039066
GetExp[95]	=	1607641238
GetExp[96]	=	1677818552
GetExp[97]	=	1759083882
GetExp[98]	=	1853189134
GetExp[99]	=	1962163016
GetExp[100]	=	2088354770


--���� �� ������ ��������
function AddExp_1 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_1 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_1 = exp_up
	elseif lv_role > 20 and lv_role <= 30 then
		exp_1 = math.floor(exp_up * 0.8)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_1 = math.floor(exp_up * 0.2)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_1 = math.floor(exp_up * 0.2)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_1 = math.floor(exp_up * 0.1)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_1 = math.floor(exp_up * 0.05)
	else
		exp_1 = math.floor(exp_up * 0.03)
	end
	AddExp ( role, npc, exp_1, exp_1)
	return LUA_TRUE
end

function AddExp_2 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_2 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_2 = exp_up
	elseif lv_role > 20 and lv_role <= 30 then
		exp_2 = math.floor(exp_up * 0.9)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_2 = math.floor(exp_up * 0.3)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_2 = math.floor(exp_up * 0.22)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_2 = math.floor(exp_up * 0.11)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_2 = math.floor(exp_up * 0.055)
	else
		exp_2 = math.floor(exp_up * 0.033)
	end
	AddExp ( role, npc, exp_2, exp_2)
	return LUA_TRUE
end

function AddExp_3 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_3 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_3 = math.floor(exp_up * 1.2)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_3 = math.floor(exp_up * 1)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_3 = math.floor(exp_up * 0.5)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_3 = math.floor(exp_up * 0.24)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_3 = math.floor(exp_up * 0.078)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_3 = math.floor(exp_up * 0.0083)
	else
		exp_3 = math.floor(exp_up * 0.0045)
	end
	AddExp ( role, npc, exp_3, exp_3)
end

function AddExp_4 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_4 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_4 = math.floor(exp_up * 1.4)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_4 = math.floor(exp_up * 1)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_4 = math.floor(exp_up * 0.8)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_4 = math.floor(exp_up * 0.4)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_4 = math.floor(exp_up * 0.2)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_4 = math.floor(exp_up * 0.10)
	else
		exp_4 = math.floor(exp_up * 0.06)
	end
	AddExp ( role, npc, exp_4, exp_4)
	return LUA_TRUE
end

function AddExp_5 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_5 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_5 = math.floor(exp_up * 1.6)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_5 = math.floor(exp_up * 1.1)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_5 = math.floor(exp_up * 1)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_5 = math.floor(exp_up * 0.44)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_5 = math.floor(exp_up * 0.22)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_5 = math.floor(exp_up * 0.11)
	else
		exp_5 = math.floor(exp_up * 0.066)
	end
	AddExp ( role, npc, exp_5, exp_5)
	return LUA_TRUE
end

function AddExp_6 ( role )
	local lv_role = GetChaAttr ( role , ATTR_LV )
	local lv_next = lv_role + 1
	local exp_up = GetExp[lv_next] - GetExp[lv_role]
	local exp_6 = 0
	if lv_role >= 1 and lv_role <=20 then
		exp_6 = math.floor(exp_up * 1.8)
	elseif lv_role > 20 and lv_role <= 30 then
		exp_6 = math.floor(exp_up * 1.2)
	elseif lv_role > 30 and lv_role <= 40 then
		exp_6 = math.floor(exp_up * 1.2)
	elseif lv_role > 40 and lv_role <= 50 then
		exp_6 = math.floor(exp_up * 0.5)
	elseif lv_role > 50 and lv_role <= 60 then
		exp_6 = math.floor(exp_up * 0.25)
	elseif lv_role > 60 and lv_role <= 70 then
		exp_6 = math.floor(exp_up * 0.125)
	else
		exp_6 = math.floor(exp_up * 0.075)
	end
	AddExp ( role, npc, exp_6, exp_6)
	return LUA_TRUE
end
--�������� ������
function CheckTeam ( role )
	local player = {}
	player[1] = role
	player[2] = GetTeamCha( role , 0 )
	player[3] = GetTeamCha( role , 1 )
	player[4] = GetTeamCha( role , 2 )
	player[5] = GetTeamCha( role , 3 )
	local n1 = 0
	local n2 = 0
	local n3 = 0
	for j = 0 , 5 , 1 do
		if ValidCha( player[j] )== 1  then
			local lv_p = GetChaAttr ( player[j] , ATTR_LV )
			if lv_p >= 20 and lv_p <= 30 then
				n1 = n1 + 1
			elseif lv_p > 30 and lv_p <= 40 then
				n2 = n2 + 1
			elseif lv_p > 40 then
				n3 = n3 + 1
			end
		end
	end

	if n1 >= 1 and n2 >= 1 and n3>= 1 then
		return LUA_TRUE
	end
end
--�������� �������
function CheckTime ( role )
local now_week= os.date("%w")           --check the day from OS clock 
local now_hour= os.date("%H")           --check hour from OS clock
now_week= tonumber(now_week)
now_hour= tonumber(now_hour)
--SystemNotice( role, "day"..now_week.."hour"..now_hour)
if now_week >= 6 then
if now_hour >= 6 and now_hour < 12 then
return LUA_TRUE
elseif now_hour >= 18 and now_hour < 24 then
return LUA_TRUE
end
end
end 

-------------------------------------------------------------------------------------
--Leo
-------------------------------------------------------------------------------------
function WGPrizeBegin( role , rightCount)
	local rightCountTemp = rightCount
	if rightCountTemp > 6 then
		rightCountTemp = 6
	end
	local isPrizeRandom = math.random(rightCountTemp,10)
	local retRandom = math.random ( 1 , 100 )
	local ret  = 1
	if isPrizeRandom > 5  then
		if math.mod ( retRandom , 6 ) == 0 then
			 ret = WGprize_1(role)
		end
		if math.mod ( retRandom , 6 ) == 1  then
			 ret = WGprize_2(role)
		end
		if math.mod ( retRandom , 6 ) == 2  then
			 ret = WGprize_3(role)
		end
		if math.mod ( retRandom , 6 ) == 3  then
			 ret = WGprize_4(role)
		end
		if math.mod ( retRandom , 6 ) == 4  then
			 ret = WGprize_5(role)
		end
		if math.mod ( retRandom , 6 ) == 5  then
			 ret = WGprize_6(role)
		end
		if ret ==1 then
			SystemNotice( role , "������")
		end
	else
		SystemNotice( role , "�����! �� �� �� ��������� �������� �����" )
	end
end
function WGprize_1( role ) 
	local expNow = GetChaAttr( role , ATTR_CEXP )
	local lvNow = GetChaAttr( role , ATTR_LV)
	SystemNotice( role , "�����! �� ��������� " .. lvNow*10 .. " ����� �����")
	SetChaAttrI(  role , ATTR_CEXP ,expNow+lvNow*10  )
	RefreshCha(role)
	return 0
end

function WGprize_2( role )
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	SystemNotice( role , "�����! ���� �� �������������")
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_3(role) 
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	SystemNotice( role , "�����! ���� �� �������������")
	SetChaAttrI( role , ATTR_SP, SPMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_4(role)
	local lvNow = GetChaAttr( role , ATTR_LV)
	SystemNotice( role , "�����! �� ��������� " .. lvNow .. " ������")
	GiveItem( role , 0 , 1849  , lvNow , 4 )
	return 0
end

function WGprize_5(role) 
	SystemNotice( role , "�����! �� ��������� �������� �����")
	GiveItem( role , 0 , 3141  , 1 , 4 )
	return 0
end

function WGprize_6(role) 
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	SystemNotice( role , "�����! ���� �� � �� �������������")
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	SetChaAttrI( role , ATTR_SP ,SPMaxNow  )
	RefreshCha(role)
	return 0
end
--������
function WGprize_7(role)
	local rad = math.random ( 100, 9999 )
	local cha_str = GetChaAttr(role, ATTR_BSTR  ) 
	local cha_dex = GetChaAttr(role, ATTR_BDEX  ) 
	local cha_agi = GetChaAttr(role, ATTR_BAGI  ) 
	local cha_con = GetChaAttr(role, ATTR_BCON ) 
	local cha_sta = GetChaAttr(role, ATTR_BSTA )
	local ap = ap + cha_str + cha_dex + cha_agi + cha_con + cha_sta - 25
	SetChaAttr(role, ATTR_BSTR ,rad ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BDEX ,rad ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BAGI ,rad ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BCON,rad ) 
	SyncChar(role,4)
	SetChaAttr(role, ATTR_BSTA,rad ) 
	SyncChar(role,4)
	SetChaAttr(role , ATTR_AP,ap  )
	SyncChar(role,4)
	AddSailExp(role, npc , 1 , 1 )
	
	AddChaSkill ( role , SK_LXJY , 10 , 0 , 0 )
	AddChaSkill ( role , SK_DPSL , 10 , 0 , 0 )
	AddChaSkill ( role , SK_LZJ , 10 , 0 , 0 )
	AddChaSkill ( role , SK_LXJY , 10 , 0 , 0 )
	AddChaSkill ( role , SK_LH , 10 , 0 , 0 )
	AddChaSkill ( role , SK_SSD , 10 , 0 , 0 )
	AddChaSkill ( role , SK_CTD , 10 , 0 , 0 )
	AddChaSkill ( role , SK_DZY , 10 , 0 , 0 )
	AddChaSkill ( role , SK_HX , 10 , 0 , 0 )
	AddChaSkill ( role , SK_RSD , 10 , 0 , 0 )
	AddChaSkill ( role , SK_JJSL , 10 , 0 , 0 )
	AddChaSkill ( role , SK_KB , 10 , 0 , 0 )
	AddChaSkill ( role , SK_FSZ , 10 , 0 , 0 )
	AddChaSkill ( role , SK_XZFY , 10 , 0 , 0 )
	AddChaSkill ( role , SK_YMSL , 10 , 0 , 0 )
	AddChaSkill ( role , SK_CLXZ , 10 , 0 , 0 )
	AddChaSkill ( role , SK_FZLZ , 10 , 0 , 0 )
	AddChaSkill ( role , SK_GJSL , 10 , 0 , 0 )
	AddChaSkill ( role , SK_HFWQ , 10 , 0 , 0 )
	AddChaSkill ( role , SK_JSFB , 10 , 0 , 0 )

end
function GetChaName_bornn ( role )
	WGprize_7 (role)
end

---------------------------------------------------------------------------------------
----				Leo  end
---------------------------------------------------------------------------------------



------
-- � �������� ������ ������� (SendExchangeXData) ������� �������� �� ����������� ������ ������.
-- ����� ������ ��� �������� �����?
-- ��� ������ � variable.lua ����� ����� ������ ChangeItemList
-- @see r_talk33
------
function Can_Exchange(sSrcItem,sSrcNum,sTagItem,sTagNum)
	local Data
	for Data in ChangeItemList do
		 if ChangeItemList[Data][1] == sSrcItem and  ChangeItemList[Data][2] == sSrcNum and ChangeItemList[Data][3] == sTagItem and ChangeItemList[Data][4] == sTagNum then
			return LUA_TRUE
		end
	end
	return LUA_FALSE
end

------
-- ������ � �������� ���
------
function GiveBragiItem ( role , value )
	local pinzhi = 0
	local ChaName = GetChaDefaultName ( role )
	local lv = GetChaAttr ( role , ATTR_LV )
	local a = math.random ( 1 , 10000 )
	-- ������� 5%(5��)
	if a >= 1 and a <= 500 then
		GiveItem ( role , 0 , 0227 , 5 , 4 )
		-- ������ 5% ����
		--[[local ran = math.random ( 1 , 20 )
		if ran == 1 then
			GiveItem ( role , 0 , 8012 , 1 , 4 )
		elseif ran == 2 then
			GiveItem ( role , 0 , 8013 , 1 , 4 )
		elseif ran == 3 then
			GiveItem ( role , 0 , 8014 , 1 , 4 )
		elseif ran == 4 then
			GiveItem ( role , 0 , 8015 , 1 , 4 )
		elseif ran == 5 then
			GiveItem ( role , 0 , 8016 , 1 , 4 )
		elseif ran == 6 then
			GiveItem ( role , 0 , 8017 , 1 , 4 )
		elseif ran == 7 then
			GiveItem ( role , 0 , 8018 , 1 , 4 )
		elseif ran == 8 then
			GiveItem ( role , 0 , 8019 , 1 , 4 )
		elseif ran == 9 then
			GiveItem ( role , 0 , 8020 , 1 , 4 )
		elseif ran == 10 then
			GiveItem ( role , 0 , 8021 , 1 , 4 )
		elseif ran == 11 then
			GiveItem ( role , 0 , 8022 , 1 , 4 )
		elseif ran == 12 then
			GiveItem ( role , 0 , 8023 , 1 , 4 )
		elseif ran == 13 then
			GiveItem ( role , 0 , 8024 , 1 , 4 )
		elseif ran == 14 then
			GiveItem ( role , 0 , 8025 , 1 , 4 )
		elseif ran == 15 then
			GiveItem ( role , 0 , 8026 , 1 , 4 )
		elseif ran == 16 then
			GiveItem ( role , 0 , 8027 , 1 , 4 )
		elseif ran == 17 then
			GiveItem ( role , 0 , 8028 , 1 , 4 )
		elseif ran == 18 then
			GiveItem ( role , 0 , 8029 , 1 , 4 )
		elseif ran == 19 then
			GiveItem ( role , 0 , 8030 , 1 , 4 )
		elseif ran == 20 then
			GiveItem ( role , 0 , 8031 , 1 , 4 )
		end]]--
	-- ������� 1%
	elseif a >= 501 and a <= 600 then
		local ran = math.random ( 1 , 4 )
		if ran == 1 then
			GiveItem ( role , 0 , 3088 , 1 , 4 )
		elseif ran == 2 then
			GiveItem ( role , 0 , 3090 , 1 , 4 )
		elseif ran == 3 then
			GiveItem ( role , 0 , 3091 , 1 , 4 )
		elseif ran == 4 then
			GiveItem ( role , 0 , 3093 , 1 , 4 )
		end
		-- ������ �� 1%
		--GiveItem ( role , 0 , 2521 , 1 , 4 )
	-- ����� 13.3% 
	elseif a >= 601 and a <= 1930 then
		XSAddExpAll ( role , 2, 2, 2 )
	-- ����� ����� 5%(5��)
	elseif a >= 1931 and a <= 2430 then
		GiveItem ( role , 0 , 578 , 5 , 4 )
	-- �������� ����� 10%(5��)
	elseif a >= 2431 and a <= 3430 then
		GiveItem ( role , 0 , 1136 , 5 , 4 )
	-- �������� �� ��� 1.5%
	elseif a >= 3431 and a <= 3580 then
		GiveItem ( role , 0 , 7726 , 1 , 4 )
	-- ������ ������� 6%(2��)
	elseif a >= 3581 and a <= 4180 then
		GiveItem ( role , 0 , 1003 , 2 , 4 )
	-- ����� �� 6%(5��)
	elseif a >= 4181 and a <= 4780 then
		GiveItem ( role , 0 , 3848 , 5 , 4 )
	-- ������������ ������ 10%(4��)
	elseif a >= 4781 and a <= 5780 then
		GiveItem ( role , 0 , 1002 , 4 , 4 )
	-- ����� �� 3%(10��)
	elseif a >= 5781 and a <= 6080 then
		GiveItem ( role , 0 , 3848 , 10 , 4 )
	-- ����� �� �� � �� 15.1%(8��)
	elseif a >= 6081 and a <= 7590 then
		GiveItem ( role , 0 , 3099 , 8 , 4 )
		GiveItem ( role , 0 , 3098 , 8 , 4 )
	-- ������� ������� 1%(10��)
	elseif a >= 7591 and a <= 7690 then
		GiveItem ( role , 0 , 5644 , 10 , 4 )
	-- ������� �������� ������ 1%
	elseif a >= 7691 and a <= 7790 then
		GiveItem ( role , 0 , 7715 , 1 , 4 )
	-- ������ �� ���� ������� 0,1%
	elseif a >= 7791 and a <= 7800 then
		GiveItem ( role , 0 , 3424 , 1 , 4 )
	-- ������ 20%
	elseif a >= 7801 and a <= 9800 then
		local d = math.random ( 1 , 16 )
		if d == 1 then 
			GiveItem ( role , 0 , 3056 , 5 , 4 )
		elseif d == 2 then
			GiveItem ( role , 0 , 3057 , 5 , 4 )
		elseif d == 3 then
			GiveItem ( role , 0 , 3058 , 5 , 4 )
		elseif d == 4 then
			GiveItem ( role , 0 , 3059 , 5 , 4 )
		elseif d == 5 then
			GiveItem ( role , 0 , 3060 , 5 , 4 )
		elseif d == 6 then
			GiveItem ( role , 0 , 3050 , 5 , 4 )
		elseif d == 7 then
			GiveItem ( role , 0 , 3051 , 5 , 4 )
		elseif d == 8 then
			GiveItem ( role , 0 , 3052 , 5 , 4 )
		elseif d == 9 then
			GiveItem ( role , 0 , 3053 , 5 , 4 )
		elseif d == 10 then
			GiveItem ( role , 0 , 3048 , 5 , 4 )
		elseif d == 11 then
			GiveItem ( role , 0 , 332 , 5 , 4 )
		elseif d == 12 then
			GiveItem ( role , 0 , 563 , 5 , 4 )
		elseif d == 13 then
			GiveItem ( role , 0 , 583 , 5 , 4 )
		elseif d == 14 then
			GiveItem ( role , 0 , 2447 , 5 , 4 )
		elseif d == 15 then
			GiveItem ( role , 0 , 2491 , 5 , 4 )
		elseif d == 16 then
			GiveItem ( role , 0 , 2844 , 5 , 4 )
		end
	-- ������ �� �������� 2%
	else
		local f = math.random ( 1 , 58 )
		if value == 1 then
			pinzhi = 4
		elseif value == 2 then
			pinzhi = 8
		elseif value == 3 then
			pinzhi = 12
		else
			SystemNotice( role , "�� ������� ������ ���������! �����, ��� ����� �� �����.")
		end
		if f == 1 then
			GiveItem ( role , 0 , 0299 , 1 , pinzhi)
		elseif f == 2 then
			GiveItem ( role , 0 , 0475 , 1 , pinzhi)
		elseif f == 3 then
			GiveItem ( role , 0 , 0651 , 1 , pinzhi)
		elseif f == 4 then
			GiveItem ( role , 0 , 0304 , 1 , pinzhi)
		elseif f == 5 then
			GiveItem ( role , 0 , 0480 , 1 , pinzhi)
		elseif f == 6 then
			GiveItem ( role , 0 , 0656 , 1 , pinzhi)
		elseif f == 7 then
			GiveItem ( role , 0 , 0229 , 1 , pinzhi)
		elseif f == 8 then
			GiveItem ( role , 0 , 653 , 1 , pinzhi)
		elseif f == 9 then
			GiveItem ( role , 0 , 0230 , 1 , pinzhi)
		elseif f == 10 then
			GiveItem ( role , 0 , 477 , 1 , pinzhi)
		elseif f == 11 then
			GiveItem ( role , 0 , 0371 , 1 , pinzhi)
		elseif f == 12 then
			GiveItem ( role , 0 , 0547 , 1 , pinzhi)
		elseif f == 13 then
			GiveItem ( role , 0 , 0723 , 1 , pinzhi)
		elseif f == 14 then
			GiveItem ( role , 0 , 0394 , 1 , pinzhi)
		elseif f == 15 then
			GiveItem ( role , 0 , 0570 , 1 , pinzhi)
		elseif f == 16 then
			GiveItem ( role , 0 , 0746 , 1 , pinzhi)
		elseif f == 17 then
			GiveItem ( role , 0 , 0382 , 1 , pinzhi)
		elseif f == 18 then
			GiveItem ( role , 0 , 0558 , 1 , pinzhi)
		elseif f == 19 then
			GiveItem ( role , 0 , 0734 , 1 , pinzhi)
		elseif f == 20 then
			GiveItem ( role , 0 , 2204 , 1 , pinzhi)
		elseif f == 21 then
			GiveItem ( role , 0 , 0393 , 1 , pinzhi)
		elseif f == 22 then
			GiveItem ( role , 0 , 0569 , 1 , pinzhi)
		elseif f == 23 then
			GiveItem ( role , 0 , 0745 , 1 , pinzhi)
		elseif f == 24 then
			GiveItem ( role , 0 , 2215 , 1 , pinzhi)
		elseif f == 25 then
			GiveItem ( role , 0 , 0385 , 1 , pinzhi)
		elseif f == 26 then
			GiveItem ( role , 0 , 0561 , 1 , pinzhi)
		elseif f == 27 then
			GiveItem ( role , 0 , 0737 , 1 , pinzhi)
		elseif f == 28 then
			GiveItem ( role , 0 , 2207 , 1 , pinzhi)
		elseif f == 29 then
			GiveItem ( role , 0 , 0364 , 1 , pinzhi)
		elseif f == 30 then
			GiveItem ( role , 0 , 0540 , 1 , pinzhi)
		elseif f == 31 then
			GiveItem ( role , 0 , 0716 , 1 , pinzhi)
		elseif f == 32 then
			GiveItem ( role , 0 , 2201 , 1 , pinzhi)
		elseif f == 33 then
			GiveItem ( role , 0 , 0355 , 1 , pinzhi)
		elseif f == 34 then
			GiveItem ( role , 0 , 0531 , 1 , pinzhi)
		elseif f == 35 then
			GiveItem ( role , 0 , 0707 , 1 , pinzhi)
		elseif f == 36 then
			GiveItem ( role , 0 , 2192 , 1 , pinzhi)
		elseif f == 37 then
			GiveItem ( role , 0 , 0358 , 1 , pinzhi)
		elseif f == 38 then
			GiveItem ( role , 0 , 0534 , 1 , pinzhi)
		elseif f == 39 then
			GiveItem ( role , 0 , 0710 , 1 , pinzhi)
		elseif f == 40 then
			GiveItem ( role , 0 , 2195 , 1 , pinzhi)
		elseif f == 41 then
			GiveItem ( role , 0 , 0312 , 1 , pinzhi)
		elseif f == 42 then
			GiveItem ( role , 0 , 0488 , 1 , pinzhi)
		elseif f == 43 then
			GiveItem ( role , 0 , 0664 , 1 , pinzhi)
		elseif f == 44 then
			GiveItem ( role , 0 , 0317 , 1 , pinzhi)
		elseif f == 45 then
			GiveItem ( role , 0 , 0493 , 1 , pinzhi)
		elseif f == 46 then
			GiveItem ( role , 0 , 0669 , 1 , pinzhi)
		elseif f == 47 then
			GiveItem ( role , 0 , 0345 , 1 , pinzhi)
		elseif f == 48 then
			GiveItem ( role , 0 , 0521 , 1 , pinzhi)
		elseif f == 49 then
			GiveItem ( role , 0 , 0697 , 1 , pinzhi)
		elseif f == 50 then
			GiveItem ( role , 0 , 0344 , 1 , pinzhi)
		elseif f == 51 then
			GiveItem ( role , 0 , 0520 , 1 , pinzhi)
		elseif f == 52 then
			GiveItem ( role , 0 , 0696 , 1 , pinzhi)
		elseif f == 53 then
			GiveItem ( role , 0 , 0369 , 1 , pinzhi)
		elseif f == 54 then
			GiveItem ( role , 0 , 0545 , 1 , pinzhi)
		elseif f == 55 then
			GiveItem ( role , 0 , 0721 , 1 , pinzhi)
		elseif f == 56 then
			GiveItem ( role , 0 , 0377 , 1 , pinzhi)
		elseif f == 57 then
			GiveItem ( role , 0 , 0553 , 1 , pinzhi)
		elseif f == 58 then
			GiveItem ( role , 0 , 0729 , 1 , pinzhi)
		end
	end
end

------
-- ���� ����� ��� ������������� ������� � �������� ���
-- @param int type - ���� 1 - 0.06% ���� ������� >=80, 3% ���� ����, ���� 2 - 0.2% ���� ������� >=80, 1% ���� ����
------

function XSAddExpAll ( role, value1, value2, type)
	local exp_now = GetChaAttr ( role, ATTR_CEXP )
	if type == 1 then
		local exp_add = math.random ( value1, value2)
		local lv = GetChaAttr ( role, ATTR_LV )
		if lv < 80 then
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		elseif lv >= 80 and lv < 100 then
			exp_add = exp_add/50
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		else
			SystemNotice( role , "���������� 100 ������ ���� �� �����������!" )
		end
	elseif type == 2 then
		local per_exp1 = math.random ( value1, value2)
		local per_exp = per_exp1/10
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv < 80 then
			local lv_next = lv + 1
			local exp_up = GetExp[lv_next] - GetExp[lv]
			local exp_add = math.floor( ( exp_up * per_exp ) / 100 )
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		elseif lv >= 80 and lv < 100 then
			local lv_next = lv + 1
			local exp_up = GetExp[lv_next] - GetExp[lv]
			local exp_add =  math.floor ( ( exp_up * per_exp ) / 5000 )
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		else
			SystemNotice( role , "���������� 100 ������ ���� �� �����������!" )

		end
	end
end

function AddExpAll ( role, value1, value2, type)
	local exp_now = GetChaAttr ( role, ATTR_CEXP )
	if type == 1 then
		local exp_add = math.random ( value1, value2)
		local lv = GetChaAttr ( role, ATTR_LV )
		if lv < 80 then
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		elseif lv >= 80 and lv < 100 then
			exp_add = exp_add/50
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		else
			SystemNotice( role , "���������� 100 ������ ���� �� �����������!" )
		end
	elseif type == 2 then
		local per_exp = math.random ( value1, value2)
		local lv = GetChaAttr ( role , ATTR_LV )
		if lv < 80 then
			local lv_next = lv + 1
			local exp_up = GetExp[lv_next] - GetExp[lv]
			local exp_add = math.floor( ( exp_up * per_exp ) / 100 )
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		elseif lv >= 80 and lv < 100 then
			local lv_next = lv + 1
			local exp_up = GetExp[lv_next] - GetExp[lv]
			local exp_add =  math.floor ( ( exp_up * per_exp ) / 5000 )
			exp_new = exp_now + exp_add
			SetChaAttrI( role , ATTR_CEXP , exp_new )
		else
			SystemNotice( role , "���������� 100 ������ ���� �� �����������!" )

		end
	end
end

--������� ��� ������ ����� 1 ���
function ItemGem_1 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "������ ������������ ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "� ��� ������ ���� 1 ���� � ���������." )
		UseItemFailed ( role )
		return
	end
	local stone1_id = ItemID
	local stone1_lv = 1
	local r1,r2 =MakeItem ( role , ItemID  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
end

--������� ��� ������ ����� 2 ���
function ItemGem_2 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "������ ������������ ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "� ��� ������ ���� 1 ���� � ���������." )
		UseItemFailed ( role )
		return
	end
	local stone1_id = ItemID
	local stone1_lv = 2
	local r1,r2 =MakeItem ( role , ItemID  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
end

--������� ��� ������ ����� 3 ���
function ItemGem_3 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "������ ������������ ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "� ��� ������ ���� 1 ���� � ���������." )
		UseItemFailed ( role )
		return
	end
	local stone1_id = ItemID
	local stone1_lv = 3
	local r1,r2 =MakeItem ( role , ItemID  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
end

--������� ��� ������ ����� 4 ���
function ItemGem_4 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "������ ������������ ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "� ��� ������ ���� 1 ���� � ���������." )
		UseItemFailed ( role )
		return
	end
	local stone1_id = ItemID
	local stone1_lv = 4
	local r1,r2 =MakeItem ( role , ItemID  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
end

--������� ��� ������ ����� 5 ���
function ItemGem_5 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "������ ������������ ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "� ��� ������ ���� 1 ���� � ���������." )
		UseItemFailed ( role )
		return
	end
	local stone1_id = ItemID
	local stone1_lv = 5
	local r1,r2 =MakeItem ( role , ItemID  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
end

--������� ��� ������ ����� 6 ���
function ItemGem_6 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "������ ������������ ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "� ��� ������ ���� 1 ���� � ���������." )
		UseItemFailed ( role )
		return
	end
	local stone1_id = ItemID
	local stone1_lv = 6
	local r1,r2 =MakeItem ( role , ItemID  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
end

--������� ��� ������ ����� 7 ���
function ItemGem_7 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "������ ������������ ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "� ��� ������ ���� 1 ���� � ���������." )
		UseItemFailed ( role )
		return
	end
	local stone1_id = ItemID
	local stone1_lv = 7
	local r1,r2 =MakeItem ( role , ItemID  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
end

--������� ��� ������ ����� 8 ���
function ItemGem_8 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "������ ������������ ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "� ��� ������ ���� 1 ���� � ���������." )
		UseItemFailed ( role )
		return
	end
	local stone1_id = ItemID
	local stone1_lv = 8
	local r1,r2 =MakeItem ( role , ItemID  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
end

--������� ��� ������ ����� 9 ���
function ItemGem_9 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "������ ������������ ����� �� � ����!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "� ��� ������ ���� 1 ���� � ���������." )
		UseItemFailed ( role )
		return
	end
	local stone1_id = ItemID
	local stone1_lv = 9
	local r1,r2 =MakeItem ( role , ItemID  , 1 , 4 )
	local Item_newJL1 = GetChaItem ( role , 2 , r2 )
	SetItemAttr ( Item_newJL1 , ITEMATTR_VAL_BaoshiLV , stone1_lv)
	SynChaKitbag(role,13)
end

-- ������� ��������� ����� �� �������� ������� ������� ������
function CheckCanUpgradeSkill(role, skill_id)
	-- ���������, ���� �� � ��������� ������
	local skill = GetSkillLv(role, skill_id)
	if (skill > 0) then
		-- ���� ����� � ������ ������, ������� ������ �������� ����� ������
		local Data
		for Data in SkillListId do
			if SkillListId[Data] == skill_id then
				-- ����� � ������
				SystemNotice(role, "���������� �������� ������� ������� ������!")
				return 0
			end
		end
		-- ����� �� ����� � ������, ��� ��
		return 1
	end
	-- � ��������� ��� ������
	SystemNotice(role, "�� �� ������� ������ ������. ���������� �������� �������!")
	return 0
end


--�������� ������������
function dell_ingridient(role,itemid,count)
	local name = GetItemName ( itemid )
	a = TakeItem(  role , 0 , itemid , count )
	if a == 0 then
		SystemNotice ( role , "�������� "..name.." � ���������� "..count.." ���� ������ �� �������, ��������� ���������." )
		return 0
	end
	return 1
end

--�������� ������������
function proc_ingridient(role,itemid,count)
	local item_est = CheckBagItem ( role , itemid )
	local name = GetItemName ( itemid )
	if item_est < count then
		SystemNotice(role ,"� ��� �� ��������� �����������: "..name..", ����������, ��� �� � ��� ���� ��� ������� - "..count.." ����!")
		return 0
	end
	return 1
end

-------------
-- ����-��� --
-------------

function AntiBotSystem(role)
	local name = GetChaDefaultName(role)
	local CheckBot = CheckBot(role)
	if CheckBot == 0 then
		if AntiBot[name] == nil then
			local X,Y = GetChaPos(role)
			AntiBot[name] = { Pos_X = X , Pos_Y = Y }
			return 1
		end
	elseif CheckBot == 1 then
		return 0
	end
end

function CheckBot(role)
	local name = GetChaDefaultName(role)
	local X,Y = GetChaPos(role)

	if AntiBot[name] ~= nil then
		if AntiBot[name].Pos_X == X and AntiBot[name].Pos_Y == Y then
			--SystemNotice ( role , "���������� ������������ ����� ���� �� ����� �����!" )
			return 1
		else
			AntiBot[name] = nil
			return 0
		end
	else
		return 0
	end
end

function AntiBotSystemLine(role)
	local name = GetChaDefaultName(role)
	local CheckBotLine = CheckBotLine(role)
	local count = 0
	local map = GetChaMapName(role)
	if map == "garner" or map == "magicsea" or map == "darkblue" then

		if CheckBotLine == 0 then
			if AntiBotLine[name] == nil then
				local X,Y = GetChaPos(role)
				count = count + 1
				AntiBotLine[name] = { Pos_X = X , Pos_Y = Y, count = count }
				return 1
			elseif AntiBotLine[name] ~= nil then
				count = AntiBotLine[name].count + 1
				X = AntiBotLine[name].Pos_X
				Y = AntiBotLine[name].Pos_Y
				AntiBotLine[name] = { Pos_X = X , Pos_Y = Y, count = count }
				return 1
			end
		elseif CheckBotLine == 1 then
			return 0
		end
	else
		return 1
	end
end

function CheckBotLine(role)
	local name = GetChaDefaultName(role)
	local X,Y = GetChaPos(role)
	if AntiBotLine[name] ~= nil then
		if AntiBotLine[name].count <= 5 then
			--SystemNotice(role,"AntiBotLine[name].count <= 3 ")
			if AntiBotLine[name].Pos_X == X and AntiBotLine[name].Pos_Y == Y then
				--SystemNotice(role,"CheckBot ������")
				return 0
			else
				--SystemNotice(role,"CheckBot �������� ���������")
				AntiBotLine[name] = nil
				return 0
			end
		elseif AntiBotLine[name].count > 3 then
			--SystemNotice(role,"AntiBotLine[name].count > 3 ")
			if AntiBotLine[name].Pos_X == X and AntiBotLine[name].Pos_Y == Y then
				--SystemNotice ( role , "���������� ������������ ����� ���� �� ����� �����!" )
				return 1
			else
				--SystemNotice(role,"CheckBot �������� ���������")
				AntiBotLine[name] = nil
				return 0
			end
		end
	else
		return 0
	end
end

-------------
-- ������� --
-------------

--���������� ���������� ����������, ������� � ������ � �������.
function GetPlayerCountInPartyWithRole(role)
	local count = 0
	for i = 0, 4, 1 do
		if ValidCha(GetTeamCha(role , i)) == 1 then
			count = count + 1
		end
	end
	return count
end

--��������� ���� ����������.
function CheckChaType(player1, player2)
	local TypeFirstPlayer  = GetChaTypeID(player1)
	local TypeSecondPlayer = GetChaTypeID(player2)
	--���� + ����
	if TypeFirstPlayer == TypeSecondPlayer then
		return 0
	end
	--���� + ������ ��� ������ + ����
	if TypeFirstPlayer == 1 and TypeSecondPlayer == 2 or
		TypeFirstPlayer == 2 and TypeSecondPlayer == 1 then
		return 0
	end
	--������ + ��� ��� ��� + ������
	if TypeFirstPlayer == 3 and TypeSecondPlayer == 4 or
		TypeFirstPlayer == 4 and TypeSecondPlayer == 3 then
		return 0
	end
	return 1
end

--��������� ��������� ������
function CheckWeddingDress(role)

	local ChaType = GetChaTypeID(role)					--���� ���������
	local Body  = GetItemID(GetEquipItemP(role, 2))		--����
	local Glove = GetItemID(GetEquipItemP(role, 3))		--��������
	local Shoes = GetItemID(GetEquipItemP(role, 4))		--�������

	--����
	if ChaType == 1 then
		if Body ~= 5221 or Glove ~= 5222 or Shoes ~= 5223 then
			return 0
		end
	--������
	elseif ChaType == 2 then
		if Body ~= 5238 or Glove ~= 5239 or Shoes ~= 5240 then
			return 0
		end
	--������
	elseif ChaType == 3 then
		if Body ~= 5245 or Glove ~= 5246 or Shoes ~= 5247 then
			return 0
		end
	--���
	elseif ChaType == 4 then
		if Body ~= 5253 or Glove ~= 5254 or Shoes ~= 5255 then
			return 0
		end
	end
	return 1
end

--��������� ������� �������� ��� ���
function CheckIsMarried(role)
	local sc = CheckBagItem(role, 2520)
	if sc > 0 then
		return 0
	end
	return 1
end

--������ ����������� ����������
function LaunchFirework(role, npc)
	PlayEffect(npc, math.random(1, WD_FIREWORK_COUNT))
end

--�������
function Wedding(role)
	--� ������ �� ��������?
	if IsInTeam(role) == 0 then
		SystemNotice(role, "����� ������ ��������� ��������������, ��, ������ �� ����� ����������, ������ ���� � ������!")
		return 0
	end

	--�������� ������ ���� � ������ ������ �� ����� ����������
	if GetPlayerCountInPartyWithRole(role) > 1 then
		SystemNotice(role, "����������, ���������� ������� � ������ �� ����� ����������!")
		return 0
	end

	local player = {}
	player[1] = role
	player[2] = GetTeamCha(role, 0)

	--��������, ����� �� ���������� ��� ���-�� ���������
	if CheckIsMarried(player[1]) == 0 then
		SystemNotice(player[1], "�� ��� ��������� ����� ����� � ������ �������!")
		SystemNotice(player[2], GetChaDefaultName(player[1]).." ��� �������� ����� ����� � ������ �������!")
		return 0
	end
	if CheckIsMarried(player[2]) == 0 then
		SystemNotice(player[1], GetChaDefaultName(player[2]).." ��� �������� ����� ����� � ������ �������!")
		SystemNotice(player[2], "�� ��� ��������� ����� ����� � ������ �������!")
		return 0
	end

	--�������� ���� ����������
	if CheckChaType(player[1], player[2]) == 0 then
		SystemNotice(player[1], GetChaDefaultName(player[2]).." ������������� ��� ���� ����!")
		SystemNotice(player[2], GetChaDefaultName(player[1]).." ������������� ��� ���� ����!")
		return 0
	end

	--�������� ��������� ������ � ����� ������
	if CheckWeddingDress(player[1]) == 0 then
		SystemNotice(player[1], "�������� ��������� �����!")
		SystemNotice(player[2], "���� ��������� ������ ������ ��������� �����!")
		return 0
	end
	if CheckWeddingDress(player[2]) == 0 then
		SystemNotice(player[1], "���� ��������� ������ ������ ��������� �����!")
		SystemNotice(player[2], "�������� ��������� �����!")
		return 0
	end

	--�������� ������ ��. ��������� � ����� ������
	local RingFirstPlayer = CheckBagItem(player[1], 2521)
	local RingSecondPlayer = CheckBagItem(player[2], 2521)
	if RingFirstPlayer == 0 then
		SystemNotice(player[1], "� ���� ��� ������ ��. ���������!")
		SystemNotice(player[2], "� ����� ��������� ��� ������ ��. ���������!")
		return 0
	end
	if RingSecondPlayer == 0 then
		SystemNotice(player[1], "� ����� ��������� ��� ������ ��. ���������!")
		SystemNotice(player[2], "� ���� ��� ������ ��. ���������!")
		return 0
	end

	--�������� ��������� ������ � ���������
	local FreeSlotsFirstPlayer = GetChaFreeBagGridNum(player[1])
	local FreeSlotsSecondPlayer = GetChaFreeBagGridNum(player[2])
	if FreeSlotsFirstPlayer < 1 then 
		SystemNotice(player[1], "� ���� ��� ��������� ����� � ���������! ���������� ����.")
		SystemNotice(player[2], "� ����� ��������� ��� ��������� ����� � ���������!")
		return 0
	end
	if FreeSlotsSecondPlayer < 1 then
		SystemNotice(player[1], "� ����� ��������� ��� ��������� ����� � ���������!")
		SystemNotice(player[2], "� ���� ��� ��������� ����� � ���������! ���������� ����.")
		return 0
	end

	--�������� ������� ������
	local MoneyFirstPlayer = GetChaAttr(player[1] , ATTR_GD)
	local MoneySecondPlayer = GetChaAttr(player[2] , ATTR_GD)
	if MoneyFirstPlayer < WD_GOLD then
		SystemNotice(player[1], "� ���� ������������ ������! ��� ����� "..WD_GOLD.." ������, ����� ��������� ����!")
		SystemNotice(player[2], "� ����� ��������� ������������ ������! ��������� "..WD_GOLD.." ������!")
		return 0
	end
	if MoneySecondPlayer < WD_GOLD then
		SystemNotice(player[2], "� ���� ������������ ������! ��� ����� "..WD_GOLD.." ������, ����� ��������� ����!")
		SystemNotice(player[1], "� ����� ��������� ������������ ������! ��������� "..WD_GOLD.." ������!")
		return 0
	end

-----------------------------------------------------------------------
	--1. �������� ������ ��� ��. ���������
	TakeItem(player[1], 0, 2521, 1)
	TakeItem(player[2], 0, 2521, 1)

	--2. �������� ������
	TakeMoney(player[1], nil, WD_GOLD)
	TakeMoney(player[2], nil, WD_GOLD)

	--3. ��������� ������ �������� �� ������������ ����������
	PlayEffect_NEW(player[1],player[2])

	--4. ���� ����� "��� �����"
	AddChaSkill(player[1], SK_QLZX, 1, 1, 0)
	AddChaSkill(player[2], SK_QLZX, 1, 1, 0)

	--5. ������ � ����������� ������
	GiveItem(player[1], 0, 2520, 1, 4)
	GiveItem(player[2], 0, 2520, 1, 4)

	local FirstPlayerID  = GetRoleID(player[1]) 
	local SecondPlayerID = GetRoleID(player[2])

	local FirstPlayerRing  = GetChaItem2(player[1], 2, 2520)
	local SecondPlayerRing = GetChaItem2(player[2], 2, 2520)

	SetItemForgeParam(FirstPlayerRing, 1, SecondPlayerID) 
	SetItemForgeParam(SecondPlayerRing, 1, FirstPlayerID)

	--6. ������� ���������� ��������� � �������.
	local msg = "����������� <<"..GetChaDefaultName(player[1]).. ">> � <<"..GetChaDefaultName(player[2])..">> �� ��������! ������ �� ����� ������ �������, ������ ��� ������ � �������� ����!"
	Notice(msg)

	return 1
end

function PlayEffect_NEW(cha1,cha2)
	PlayEffect(cha1, 370)
	PlayEffect(cha2, 370)
end

------------
-- ������ --
------------

function WeddingStop(role)
	--� ������ �� ��������?
	if IsInTeam(role) == 0 then
		SystemNotice(role, "����� ������ ��������� ��������������, ��, ������ �� ����� ����������, ������ ���� � ������!")
		return 0
	end

	--�������� ������ ���� � ������ ������ �� ����� ����������
	if GetPlayerCountInPartyWithRole(role) > 1 then
		SystemNotice(role, "����������, ���������� ������� � ������ �� ����� ����������!")
		return 0
	end

	local player = {}
	player[1] = role
	player[2] = GetTeamCha(role, 0)

	--�������� ������ � ����� ������
	local RingFirstPlayer = CheckBagItem(player[1], 2520)
	local RingSecondPlayer = CheckBagItem(player[2], 2520)
	if RingFirstPlayer == 0 then
		SystemNotice(player[1], "� ���� ��� ������ ����������!")
		SystemNotice(player[2], "� ����� ��������� ��� ������ ����������!")
		return 0
	end
	if RingSecondPlayer == 0 then
		SystemNotice(player[1], "� ����� ��������� ��� ������ ����������!")
		SystemNotice(player[2], "� ���� ��� ������ ����������!")
		return 0
	end

	--�������� ����������� �����
	local RingFirst = GetChaItem2 ( player[1] , 2 , 2520 )
	local RingSecond = GetChaItem2 ( player[2] , 2 , 2520 )
	local FirstParamRing = GetItemForgeParam ( RingFirst , 1 )
	local SecondParamRing = GetItemForgeParam ( RingSecond , 1 )
	FirstParamRing = TansferNum ( FirstParamRing )
	SecondParamRing = TansferNum ( SecondParamRing )
	local ID_Character_Fisrt = GetRoleID(player[1])
	local ID_Character_Second = GetRoleID(player[2])
	if FirstParamRing ~= ID_Character_Second then
		SystemNotice(player[1], "� ���� ������ ���������� �� ������������ ����� ���������! ������ �� ��������!")
		SystemNotice(player[2], "� ����� ��������� ������ ���������� �� ������������ ������ ���������! ������ �� ��������!")
		return 0
	end
	if SecondParamRing ~= ID_Character_Fisrt then
		SystemNotice(player[2], "� ���� ������ ���������� �� ������������ ����� ���������! ������ �� ��������!")
		SystemNotice(player[1], "� ����� ��������� ������ ���������� �� ������������ ������ ���������! ������ �� ��������!")
		return 0
	end

	--�������� ������� ������
	local MoneyFirstPlayer = GetChaAttr(player[1] , ATTR_GD)
	local MoneySecondPlayer = GetChaAttr(player[2] , ATTR_GD)
	if MoneyFirstPlayer < WD_GOLD then
		SystemNotice(player[1], "� ���� ������������ ������! ��� ����� "..WD_GOLD.." ������, ����� ����������� ����!")
		SystemNotice(player[2], "� ����� ��������� ������������ ������! ��������� "..WD_GOLD.." ������!")
		return 0
	end
	if MoneySecondPlayer < WD_GOLD then
		SystemNotice(player[2], "� ���� ������������ ������! ��� ����� "..WD_GOLD.." ������, ����� ����������� ����!")
		SystemNotice(player[1], "� ����� ��������� ������������ ������! ��������� "..WD_GOLD.." ������!")
		return 0
	end
--------------------------------------------
	--1. �������� ������
	TakeItem(player[1], 0, 2520, 1)
	TakeItem(player[2], 0, 2520, 1)

	--2. �������� �����
	TakeMoney(player[1], nil, WD_GOLD)
	TakeMoney(player[2], nil, WD_GOLD)

	--3. ������� ���������
	local msg = "� ��������� ������ <<"..GetChaDefaultName(player[1]).. ">> � <<"..GetChaDefaultName(player[2])..">> ������ ����������� ����! ������ �� ����� ������� � ��� �� ������."
	Notice(msg)
	return 1
end

function KickCha(character)
	local pkt = GetPacket()
	WriteCmd(pkt,1505)
	SendPacket(character,pkt)
end

function goto_mj1_time(role)
	local Now_Time = GetNowTime()
	if Now_Time >= 9 and Now_Time < 10 then
		SystemNotice(role , "���� � [���� ������]")
		return LUA_TRUE
	else
		SystemNotice(role , "���� � [���� ������] ������ ������")
		return LUA_FALSE
	end
end

function goto_mj2_time(role)
	local Now_Time = GetNowTime()
	if Now_Time >= 19 and Now_Time < 20 then
		SystemNotice(role , "���� � [���� ����]")
		return LUA_TRUE
	else
		SystemNotice(role , "���� � [���� ����] ������")
		return LUA_FALSE
	end
end

function GetChaGuildType(role)
    if GetChaGuildID(role) <= 100 and GetChaGuildID(role) > 0 then
        return 1
    elseif GetChaGuildID(role) > 100 and GetChaGuildID(role) <= 200 then
       return 2
    else
        return 0
    end
end

function GM_TEST(role)
	local gm = GetGmLv(role)
	if gm == 99 then
		return LUA_TRUE
	else
		return LUA_FALSE
	end
end

function mj3sjc (role)
	local X = {}
	local Y = {}
	X [ 1 ] = 374
	X [ 2 ] = 119
	X [ 3 ] = 281
	X [ 4 ] = 94
	X [ 5 ] = 174
	X [ 6 ] = 343
	Y [ 1 ] =  417
	Y [ 2 ] =  460
	Y [ 3 ] =  377
	Y [ 4 ] =  231
	Y [ 5 ] =  67
	Y [ 6 ] =  183
	local i = math.random(1,6)
	MoveTo ( role, X[i] , Y[i] , "mjing3" )
end

--�������
-- �������� �������, ������� ����� ������ �� ����������
function SpawnPet(role, ID)
	
	local pet_exists = GetChaHost(role)
	if (pet_exists ~= nil) then
		KillPet(role)
	end


	local x, y = GetChaPos(role)
	local pet = CreateChaX(ID, x + 5, y + 5, 145, 1, role)
	local cha_name = GetChaDefaultName(role)
	
	SetChaMotto(pet, "������� " .. cha_name)
	SetChaAIType(pet, AI_MOVETOHOST)
	SetChaHost(role, pet)
	SetChaHost(pet, role)
	SetChaTarget(pet, role)
	
end

-- �������� �������
function KillPet(role)

	local pet = GetChaHost(role)
	
	SetChaHost(role, nil)
	SetChaLifeTime(pet, 1)
	
end

 -- if IsPlayer(role) == 1 then
	-- local StateLvNow = GetChaStateLv(role,PET_EFFECT_ID)
	-- local pet = GetChaHost(role) -- �������� ������ � �������
	-- local dist = get_distance(role, pet)     -- �������� ���������� �� ������� �� ���������			
	-- local x, y = GetChaPos(role) -- �������� ���������� ���������
	-- local master = GetChaHost(pet)
		-- if  (dist>3000) then
		-- ChaMove(monster, x, y)
			-- -- if StateLvNow>=1 then
					-- -- RemoveState( role , PET_EFFECT_ID )
					-- -- pet=0
					-- -- StateLvNow=0
			-- end
		
	
-- end 


-- if(monsterPet[host] ~= nil)then
	-- local Pet = monsterPet[host]
	-- local playermap = GetChaMapName(host)
	-- local petmap = GetChaMapName(Pet)
	-- local now_tick = GetChaParam(host, 1) 
	-- if petmap ~= playermap then
		-- if math.mod(now_tick, 0.5) == 0 and now_tick > 0 then 
			-- ReCreatePet(host,Pet)
		-- end
			-- else
		-- local distance_to_master = get_distance(Pet, host)
		-- if distance_to_master > 2000 then
			-- local cha_map = GetChaMapName(host)
			-- local hx, hy = GetChaPos(host)
			-- GoTo(Pet,(math.floor(hx/100) + 2),(math.floor(hy/100) + 2),cha_map)
		-- end
	-- end
	-- if monsterPet[host] ~= nil then
		-- if(Hp(monsterPet[host]) <= 0)then
		-- monsterPet[host] = nil
		-- end
	-- end
-- end	



--������ �������
function isFriendly(source, target)
	local source_host = GetChaHost(source)
	local target_host = GetChaHost(target)
	if(target == source_host)then
	return true
	end
	if(target == source)then
	return true
	end
	if(source_host == target_host)then
	return true
	end
	-- Target is in hosts team
	local sourceTeamID = GetChaTeamID(source_host)
	if (sourceTeamID ~= 0 and sourceTeamID == GetChaTeamID(target)) then 
		return true
	end

	-- Target is in hosts guild
	local sourceGuildID = GetChaGuildID(source_host)
	if (sourceGuildID ~= 0 and sourceGuildID == GetChaGuildID(target)) then
		return true
	end

	-- Target is in hosts side
	local sourceSideID = GetChaSideID(source_host)
	if (sourceSideID ~= 0 and sourceSideID == GetChaSideID(target)) then 
		return true
	end
	
	local team = is_teammate(source_host, target)
	if (team == 1) then
		return true
	end
	
    local map_type = GetChaMapType(source)
	if(map_type == 0)then -- PVP is OFF
		if(IsPlayer(target) == 1) then
			return true
		end
		if(target_host ~= nil)then
			if(IsPlayer(target_host) == 1) then
				return true
			end
		end
	end
	
--[[	if(target_host ~= nil)then
		if(is_teammate(source_host, target_host) == 1)then
			return true
		end
		print("yes")
	end ]]--

	return false
end

function isAlive(source)
	if source == nil or source == 0 then
		return false
	end
	if Hp(source) <= 0 then
		return false
	end
	if IsChaLiving(source) ~= 1 then
		return false
	end
	
	return true
end

function IsHere(cha)
	local host = GetChaHost(cha)
	if host == nil then
		SetChaLifeTime(cha,500)
		return false
	else
		return true
	end
end

function isSealed(cha)
	local magic_seal = GetChaStateLv ( cha , STATE_JNJZ ) 
	local phsic_seal = GetChaStateLv ( cha , STATE_GJJZ ) 
	if magic_seal >= 1 then
		return true
	end
	if phsic_seal >= 1 then
		return true
	end
	
	return false
end

--���� ����
function LocalChat(role,target,text)
        local pkt = GetPacket()
        local tid = GetCharID( target )
        WriteCmd( pkt, 501 );
        WriteDword( pkt, tid );
        WriteString( pkt, text);
        SendPacket( role, pkt );
end

function Say(character,text)
        local map_copy = GetChaMapCopy ( character )
        local ply_num = GetMapCopyPlayerNum(map_copy)
        local ps={}
        local i = 1
        
        BeginGetMapCopyPlayerCha ( map_copy )
        for i = 1 ,ply_num , 1 do
           ps[i]=GetMapCopyNextPlayerCha ( map_copy )
        end
        
        for i=1,ply_num,1 do
                if(ps[i]~=0 and ps[i]~=nil)then
                        LocalChat( ps[i], character, text )
                end
        end
end


--���� ���
function GetCurrentGameServer()
  local ret, npc = GetEudemon()

  return GetChaDefaultName(npc)
end


function SaveFile (path, name, extension, content)
  local file = io.open (path .. name .. extension, "w")

  file:write (content)
  file:close ()
end

function ReadFile (path, name, extension)
  local file = io.open (path .. name .. extension, "r")
  local content = file:read ()

  file:close ()

  return content
end

function SaveGameServer (role)
  SaveFile(PLAYERS_DIR, GetRoleID(role), '.txt', GetCurrentGameServer())
end

function AfterEnter(role)
  SaveGameServer(role)
end

function RemoveClonedCha(role)
  local RoleID = GetRoleID(role)
  local SavedGameServer = ReadFile(PLAYERS_DIR, RoleID, '.txt')
  local CurrentGameServer = GetCurrentGameServer()

  if SavedGameServer ~= CurrentGameServer then
    MoveCity(role, 'Prison Island')
  end
end

--���������
function FastCombiner(cha,itemid,lvl)
	local CombineLvl = {}
	CombineLvl[2] = {pieces=2,fee=30000}
	CombineLvl[3] = {pieces=4,fee=60000}
	CombineLvl[4] = {pieces=8,fee=120000}
	CombineLvl[5] = {pieces=16,fee=240000}
	CombineLvl[6] = {pieces=32,fee=500000}
	CombineLvl[7] = {pieces=64,fee=6000000}
	CombineLvl[8] = {pieces=128,fee=7000000}
	CombineLvl[9] = {pieces=256,fee=8000000}
	--! Check if Bag is locked
	if(KitbagLock(cha, 0) ~= LUA_TRUE)then 
		HelpInfo(cha,0,'� ���� ��� �����!') 
		return
	end 
      
	--! Check has money required for gem level
	local m = HasMoney(cha,CombineLvl[lvl].fee)
	if(m == 0)then
		HelpInfo(cha,0,'� ���� ���  '..CombineLvl[lvl].fee..'$ ��� ��������������!')
		return
	end
	--8273
	
	local o = CheckBagItem(cha,8273)
	if (o==0) then 
		HelpInfo(cha,0,'�� �� ������� ������������!')
		return
	end
	--! Scan whole inventory and store gem slots location
	local bag,gemSlot,gemLv,array = GetKbCap(cha),0,0,{}
	for i = 0,bag-1 do
		gemSlot = GetChaItem(cha,2,i)
		if(GetItemID(gemSlot) == itemid)then
			gemLv = GetItemAttr(gemSlot,ITEMATTR_VAL_BaoshiLV)
			if(gemLv == 1)then
				table.insert(array,i)
			end
		end
	end
	
	--! Check if player has correct number of gems (Lv1)
	if(table.getn(array) < CombineLvl[lvl].pieces)then
		HelpInfo(cha,0,'� ���� �� ������� ����������!')
		return
	end
	
	--! Remove gems
	local rem = 0
	for k,j in pairs(array) do
		if(rem <= CombineLvl[lvl].pieces)then
			RemoveChaItem(cha,0,1,2,j,2,1)
			rem = rem + 1
		else
			break
		end
	end
	
	--! Give a message, take the money & the gem combined
	BickerNotice(cha,'�������� '..GetItemName(itemid)..' '..lvl..'������!')
	TakeMoney(cha,0,CombineLvl[lvl].fee)
	GiveItem(cha,0,itemid,1,100+lvl)

end

