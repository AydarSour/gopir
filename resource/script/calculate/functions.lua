MFRADIX=100 
CRTRADIX=100 
ATKER=0 
DEFER=1 

--------------КҐХЅЧЁУГІї·Ц----------------------------------------
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
-- обрезает пробелы по границам строки
function trim(s)
	return (string.gsub(s, "^%s*(.-)%s*$", "%1"))
end

-- разделяет строку на части указанным разделителем; возвращает массив этих частей
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
			if message == "/банк" then
				local map_name_role = GetChaMapName ( role )
				if map_name_role == "heilong" then
					SystemNotice(role, "Применение команды в данной местности запрещено!")
					return 0
				end
				OpenBank(role,role)
				return 0
			end
			return 0
		end
	elseif check ~= nil then
		if gmlvl == 99 then
			msg = explode(" ", message)
			message = msg[0]
			if (message == "&lua") then
				SystemNotice(role, "Доступ запрещен!")
				return 0
			end
			if (message == "&lua_all") then
				SystemNotice(role, "Доступ запрещен!")
				return 0
			end
			local map_name = GetChaMapName ( role )
			if map_name == "07xmas" then
				return 1
			else
				if (message == "&gamesvrstop") then
					SystemNotice(role, "Доступ запрещен!")
					return 0
				end
				if (message == "&reload") then
					SystemNotice(role, "Доступ запрещен!")
					return 0
				end
				if (message == "&updateall") then
					SystemNotice(role, "Доступ запрещен!")
					return 0
				end
				return 1
			end
		else
			SystemNotice(role, "Доступ запрещен!")
			return 0
		end
	end
	return 1
end
				--[[	msg = explode(" ", message)
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

function goto_BDL_time(role)
	--local Now_Time = GetNowTime()
	local hour = tonumber(os.date("%H"))
	local minu = tonumber(os.date("%M"))
	local Now_Time = hour*100 + minu
	if Now_Time >= 1910 and Now_Time < 1915 then
		return 1
	else
		SystemNotice(role , "Логово Черного Дракона 2 открывается с 19:10 - 19:15!.")
		return 0
	end
end

function CheckRase ( character, p )
	local cha_type = GetChaTypeID ( character )
	--Если расса Ланс
	if p == 1 then
		if cha_type == 1 then
			return LUA_TRUE
		else
			return LUA_FALSE
		end
	end
	--Если расса Карциз
	if p == 2 then
		if cha_type == 2 then
			return LUA_TRUE
		else
			return LUA_FALSE
		end
	end
	--Если расса Филлис
	if p == 3 then
		if cha_type == 3 then
			return LUA_TRUE
		else
			return LUA_FALSE
		end
	end
	--Если расса Ами
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



function EightyLv_ExpAdd ( cha , expadd ) 

	if ValidCha (cha) ==1 then					--ЦёХлґжФЪ
		if ChaIsBoat ( cha ) == 0 then			--ИЛОпјУѕ­СйЧчМШКвґ¦Ан
			if Lv ( cha ) >= 80 then 
				expadd = math.floor ( expadd / 50 ) 
			end 
			if expadd == 0 then 
				SystemNotice ( TurnToCha(cha) , "Дистанция до цели слишком велика" )
			end 
		end 
		exp = GetChaAttr ( cha , ATTR_CEXP ) 
		exp = exp + expadd 
		SetCharaAttr ( exp , cha , ATTR_CEXP ) 
	end 
end 


function Check_State ( atk_role , def_role ) 
	Reset_Statecheck() 
	--№Ґ»чЧґМ¬ЕР¶П
--	atk_statecheck[STATE_ZMYJ] = GetChaStateLv ( ATKER , STATE_ZMYJ ) 
--	atk_statecheck[STATE_SMYB] = GetChaStateLv ( ATKER , STATE_SMYB ) 
	atk_statecheck[STATE_YS] = GetChaStateLv ( atk_role , STATE_YS ) 
	--КЬ»чЧґМ¬ЕР¶П
--	def_statecheck[STATE_ZJFT] = GetChaStateLv ( DEFER , STATE_ZJFT ) 
--	def_statecheck[STATE_BSHD] = GetChaStateLv ( DEFER , STATE_BSHD ) 
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
	--SystemNotice ( role , "come here" )
	RemoveState( role , STATE_YS )					
	return 1 
end

function Rem_State_Unnormal ( role ) 
	RemoveState( role , STATE_ZD )					--ЦР¶ѕ
	RemoveState( role , STATE_MB )					--Вй±Ф
	RemoveState( role , STATE_ZZZH )				--ЧзЦдЦ®»р
	RemoveState( role , STATE_SYNZ)				--ЙоФЁДаХУ
	RemoveState( role , STATE_SDBZ )				--ЙБ¶г±ЪХП
	RemoveState( role , STATE_TJ )					--НИѕС
	RemoveState( role , STATE_SJ )					--КЦѕС
--	RemoveState( role , STATE_XY )					--СЈФО
	RemoveState( role , STATE_JNJZ )				--јјДЬЅыЦ№
	RemoveState( role , STATE_GJJZ )				--№Ґ»чЅыЦ№
	RemoveState( role , STATE_BDJ )					--±щ¶іјэ
	RemoveState( role , STATE_XN )					--СЄЕ­
	RemoveState( role , STATE_NT )					--ДаМ¶
	RemoveState( role , STATE_DIZ )					--µШХр
	RemoveState( role , STATE_SWCX )				--ЛАНці°Р¦
	RemoveState( role , STATE_JSDD )				--Ѕ©К¬ґш¶ѕ
	RemoveState( role , STATE_HYMH )				--єьСэД§·Ё-чИ»у
	RemoveState( role , STATE_HLKJ )				--єЪБъ-їЦѕе
	RemoveState( role , STATE_HLLM )				--єЪБъ-БъГщ
	RemoveState( role , STATE_CRXSF )				--і¤ИЮР·-Кшёї
	RemoveState( role , STATE_BlackHX )				--єЪБъ»ўРҐ
	RemoveState( role , STATE_HLKJ )				--єЪБъАЧ»ч
end 
------------------------------------------REMOVEХЅ¶·ЧґМ¬
function Rem_State_StarUnnormal ( role )
	RemoveState( role , STATE_YSMspd )
	RemoveState( role , STATE_KUANGZ )					--їсХЅКх     
	RemoveState( role , STATE_QUANS )					--И«ЙнЧ°јЧ  
	RemoveState( role , STATE_QINGZ )					--ЗбЧ°Т©Л®  
end 
function Rem_State_NOSEA ( role ) ------------------ПВєЈК±ТЖіэЧґМ¬
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
function SetCharaAttr(a,b,c) --[[ЙиЦГЅЗЙ«КфРФЧЄ»ЇЅУїЪ:КфРФЦµЈ¬ЅЗЙ«АаРНЈ¬КфРФ±аєЕ]]--
	local x,y=b,c 
	local z=math.floor(a) 
--	LuaPrint("Set character"..b) 
	--LuaPrint("Attribute"..c) 
	--LuaPrint(a.."\n") 
	--LG("setchaattr","Setting"..c, "number attribute", "= ", a ,"\n") 
	SetChaAttr(x,y,z) 
end 

function Attr_ap(a) --[[ИЎЅЗЙ«КЈУаїЙ·ЦЕдµгКэ]]--
	--LuaPrint("Obtain character attribute remain_ap") 
	local attr_ap=GetChaAttr(a,ATTR_AP) 
	return attr_ap 
end 

function Attr_tp(a) 
	--LuaPrint("Obtain character attribute remain_tp") 
	local attr_tp=GetChaAttr(a,ATTR_TP) 
	return attr_tp 
end 

function CheckCha_Job(a) --[[ИЎЅЗЙ«Ц°Тµ]]-- 
	--LuaPrint("Obtain character attribute job") 
	local role_attr_job=GetChaAttr(a,ATTR_JOB) 
	return role_attr_job 
end 

function Exp(a) 
	--LuaPrint("obtain character current exp or monster exp") 
	local exp=GetChaAttr(a,ATTR_CEXP) --[[ИЎexp]]--
	return exp 
end 

function Lv(a)
	--LuaPrint("Obtain character attribute lv") 
	local b = TurnToCha ( a ) 
	local lv=GetChaAttr( b , ATTR_LV ) --[[ИЎlv]]--
	return lv 
end 

function Hp(a)
	--LuaPrint("Obtain character attribute hp") 
	local hp=GetChaAttr(a,ATTR_HP) --[[ИЎhp]]--
	return hp 
end 

function Mxhp(a)
	--LuaPrint("Obtain character attribute mxhp") 
	local mxhp=GetChaAttr(a,ATTR_MXHP) --[[ИЎmxhp]]--
	return mxhp 
end 

function MxhpSa(a)
	--LuaPrint("Obtain character attribute mxhp_sa") 
	local mxhpsa= GetChaAttr(a, ATTR_STATEC_MXHP)/ATTR_RADIX   --[[ИЎmxhpЧґМ¬°Щ·Ц±И]]--
	return mxhpsa 
end 

function MxhpSb(a)
	--LuaPrint("Obtain character attributemxhp_sb") 
	local mxhpsb=GetChaAttr(a, ATTR_STATEV_MXHP) --[[ИЎmxhpЧґМ¬іЈКэ]]--
	return mxhpsb 
end 

function MxhpIa(a)
	--LuaPrint("Obtain character attribute mxhp_ia") 
	local mxhpia=GetChaAttr(a, ATTR_ITEMC_MXHP)/ATTR_RADIX --[[ИЎmxhpµАѕЯ°Щ·Ц±И]]--
	return mxhpia 
end 

function MxhpIb(a)
	--LuaPrint("Obtain character attribute mshp_ib") 
	local mxhpib=GetChaAttr(a, ATTR_ITEMV_MXHP) --[[ИЎmxhpµАѕЯіЈКэ]]--
	return mxhpib 
end 

function Sp(a)
	--LuaPrint("Obtain player attribute sp") 
	local sp=GetChaAttr(a,ATTR_SP) --[[ИЎsp]]--
	return sp 
end 

function Mxsp(a)
	--LuaPrint("Obtain character attribute mxsp") 
	local mxsp=GetChaAttr(a,ATTR_MXSP) --[[ИЎmxsp]]--
	return mxsp 
end 

function MxspSa(a)
	--LuaPrint("Obtain player attribute mxsp_sa") 
	local mxspsa=GetChaAttr(a, ATTR_STATEC_MXSP)/ATTR_RADIX  --[[ИЎmxspЧґМ¬°Щ·Ц±И]]--
	return mxspsa 
end 

function MxspSb(a)
	--LuaPrint("Obtain character attribute mxsp_sb") 
	local mxspsb=GetChaAttr(a, ATTR_STATEV_MXSP) --[[ИЎmxspЧґМ¬іЈКэ]]--
	return mxspsb 
end 

function MxspIa(a)
	--LuaPrint("Obtain character attribute mxsp_ia") 
	local mxspia=GetChaAttr(a, ATTR_ITEMC_MXSP)/ATTR_RADIX --[[ИЎmxspµАѕЯ°Щ·Ц±И]]--
	return mxspia 
end 

function MxspIb(a)
	--LuaPrint("Obtain character attribute mxsp_ib") 
	local mxspib=GetChaAttr(a, ATTR_ITEMV_MXSP) --[[ИЎmxspµАѕЯіЈКэ]]--
	return mxspib 
end 

function Mnatk(a)
	--LuaPrint("Obtain character attribute mnatk") 
	local mnatk=GetChaAttr(a,ATTR_MNATK) --[[ИЎmnatk]]--
	return mnatk 
end 

function MnatkSa(a)
	--LuaPrint("Obtain character attribute mnatk_sa") 
	local mnatksa= GetChaAttr(a, ATTR_STATEC_MNATK)/ATTR_RADIX --[[ИЎmnatkЧґМ¬°Щ·Ц±И]]--
	return mnatksa 
end 

function MnatkSb(a)
	--LuaPrint("Obtain character attributemnatk_sb") 
	local mnatksb=GetChaAttr(a, ATTR_STATEV_MNATK) --[[ИЎmnatkЧґМ¬іЈКэ]]--
	return mnatksb 
end 

function MnatkIa(a)
	--LuaPrint("Obtain character attribute mnatk_ia") 
	local mnatkia=GetChaAttr(a, ATTR_ITEMC_MNATK)/ATTR_RADIX --[[ИЎmnatkµАѕЯ°Щ·Ц±И]]--
	return mnatkia 
end 

function MnatkIb(a)
	--LuaPrint("Obtain player attribute mnatk_ib") 
	local mnatkib=GetChaAttr(a, ATTR_ITEMV_MNATK) --[[ИЎmnatkµАѕЯіЈКэ]]--
	return mnatkib 
end 

function Mxatk(a)
	--LuaPrint("Obtain player attribute mxatk") 
	local mxatk=GetChaAttr(a,ATTR_MXATK) --[[ИЎmxatk]]--
	return mxatk 
end 

function MxatkSa(a)
	--LuaPrint("Obtain character attribute mxatk_sa") 
	local mxatksa= GetChaAttr(a, ATTR_STATEC_MXATK)/ATTR_RADIX  --[[ИЎmxatkЧґМ¬°Щ·Ц±И]]--
	return mxatksa 
end 

function MxatkSb(a)
	--LuaPrint("Obtain character attribute mxatk_sb") 
	local mxatksb=GetChaAttr(a, ATTR_STATEV_MXATK) --[[ИЎmxatkЧґМ¬іЈКэ]]--
	return mxatksb 
end 

function MxatkIa(a)
	--LuaPrint("Obtain character attribute mxatk_ia") 
	local mxatkia=GetChaAttr(a, ATTR_ITEMC_MXATK)/ATTR_RADIX --[[ИЎmxatkµАѕЯ°Щ·Ц±И]]--
	return mxatkia 
end 

function MxatkIb(a)
	--LuaPrint("Obtain character attributemxatk_ib") 
	local mxatkib=GetChaAttr(a, ATTR_ITEMV_MXATK) --[[ИЎmxatkµАѕЯіЈКэ]]--
	return mxatkib 
end 

function Def(a)
	--LuaPrint("Obtain character attribute def") 
	local def=GetChaAttr(a,ATTR_DEF) --[[ИЎdef]]--
	return def 
end 

function DefSa(a)
	--LuaPrint("Obtain player attribute def_sa") 
	local defsa= GetChaAttr(a, ATTR_STATEC_DEF)/ATTR_RADIX  --[[ИЎdefЧґМ¬°Щ·Ц±И]]--
	return defsa 
end 

function DefSb(a)
	--LuaPrint("Obtain character attribute def_sb") 
	local defsb=GetChaAttr(a, ATTR_STATEV_DEF) --[[ИЎdefЧґМ¬іЈКэ]]--
	--LG("setchaattr","obtain character",ATTR_STATEV_DEF,"number attribute= ", defsb,"\n" ) 
	return defsb 
end 

function DefIa(a)
	--LuaPrint("Obtain character attribute def_ia") 
	local defia=GetChaAttr(a, ATTR_ITEMC_DEF)/ATTR_RADIX --[[ИЎdefµАѕЯ°Щ·Ц±И]]--
	return defia 
end 

function DefIb(a)
	--LuaPrint("Obtain character attribute def_ib") 
	local defib=GetChaAttr(a, ATTR_ITEMV_DEF) --[[ИЎdefµАѕЯіЈКэ]]--
	return defib 
end 

function Resist(a)
	--LuaPrint("Obtain character attribute def") 
	local def=GetChaAttr(a,ATTR_PDEF) --[[ИЎdef]]--
	return def 
end 

function ResistSa(a)
	--LuaPrint("Obtain player attribute def_sa") 
	local defsa= GetChaAttr(a, ATTR_STATEC_PDEF)/ATTR_RADIX  --[[ИЎdefЧґМ¬°Щ·Ц±И]]--
	return defsa 
end 

function ResistSb(a)
	--LuaPrint("Obtain character attribute def_sb") 
	local defsb=GetChaAttr(a, ATTR_STATEV_PDEF) --[[ИЎdefЧґМ¬іЈКэ]]--
	return defsb 
end 

function ResistIa(a)
	--LuaPrint("Obtain character attribute def_ia") 
	local defia=GetChaAttr(a, ATTR_ITEMC_PDEF)/ATTR_RADIX --[[ИЎdefµАѕЯ°Щ·Ц±И]]--
	return defia 
end 

function ResistIb(a)
	--LuaPrint("Obtain character attribute def_ib") 
	local defib=GetChaAttr(a, ATTR_ITEMV_PDEF) --[[ИЎdefµАѕЯіЈКэ]]--
	return defib 
end 

function Hit(a)
	--LuaPrint("Obtain character attribute hit") 
	local hit=GetChaAttr(a,ATTR_HIT) --[[ИЎhit]]--
	return hit 
end 

function HitSa(a)
	--LuaPrint("Obtain character attribute hit_sa") 
	local hitsa= GetChaAttr(a, ATTR_STATEC_HIT)/ATTR_RADIX   --[[ИЎhitЧґМ¬°Щ·Ц±И]]--
	return hitsa 
end 

function HitSb(a)
	--LuaPrint("Obtain character attribute hit_sb") 
	local hitsb=GetChaAttr(a, ATTR_STATEV_HIT) --[[ИЎhitЧґМ¬іЈКэ]]--
	return hitsb 
end 

function HitIa(a)
	--LuaPrint("Obtain character attribute hit_ia") 
	local hitia=GetChaAttr(a, ATTR_ITEMC_HIT)/ATTR_RADIX --[[ИЎhitµАѕЯ°Щ·Ц±И]]--
	return hitia 
end 

function HitIb(a)
	--LuaPrint("Obtain character attribute hit_ib") 
	local hitib=GetChaAttr(a, ATTR_ITEMV_HIT) --[[ИЎhitµАѕЯіЈКэ]]--
	return hitib 
end 

function Flee(a)
	--LuaPrint("Obtain character attribute flee") 
	local flee=GetChaAttr(a,ATTR_FLEE) --[[ИЎflee]]--
	return flee 
end 

function FleeSa(a)
	--LuaPrint("Obtain character attribute flee_sa") 
	local fleesa=  GetChaAttr(a, ATTR_STATEC_FLEE)/ATTR_RADIX  --[[ИЎfleeЧґМ¬°Щ·Ц±И]]--
	return fleesa 
end 

function FleeSb(a)
	--LuaPrint("Obtain character attribute flee_sb") 
	local fleesb=GetChaAttr(a, ATTR_STATEV_FLEE) --[[ИЎfleeЧґМ¬іЈКэ]]--
	return fleesb 
end 

function FleeIa(a)
	--LuaPrint("Obtain character attribute flee_ia") 
	local fleeia=GetChaAttr(a, ATTR_ITEMC_FLEE)/ATTR_RADIX --[[ИЎfleeµАѕЯ°Щ·Ц±И]]--
	return fleeia 
end 

function FleeIb(a)
	--LuaPrint("Obtain character attribute flee_ib") 
	local fleeib=GetChaAttr(a, ATTR_ITEMV_FLEE) --[[ИЎfleeµАѕЯіЈКэ]]--
	return fleeib 
end 

function Mf(a)
	--LuaPrint("Obtain character attribute mf") 
	local mf=GetChaAttr(a,ATTR_MF)/MFRADIX --[[ИЎmf]]--
	--SystemNotice (a,"mf = "..mf)
	return mf 
end 

function MfSa(a)
	--LuaPrint("Obtain character attributemf_sa") 
	local mfsa= GetChaAttr(a, ATTR_STATEC_MF)/ATTR_RADIX  --[[ИЎmfЧґМ¬°Щ·Ц±И]]--
	--SystemNotice (a,"mfsa = "..mfsa)
	return mfsa 
end 

function MfSb(a)
	--LuaPrint("Obtain character attribute mf_sb") 
	local mfsb=GetChaAttr(a, ATTR_STATEV_MF) --[[ИЎmfЧґМ¬іЈКэ]]--
	--SystemNotice (a,"mfsb = "..mfsb)
	return mfsb 
end 

function MfIa(a)
	--LuaPrint("Obtain player attribute mf_ia") 
	local mfia=GetChaAttr(a, ATTR_ITEMC_MF)/ATTR_RADIX --[[ИЎmfµАѕЯ°Щ·Ц±И]]--
	--SystemNotice (a,"mfia = "..mfia)
	return mfia 
end 

function MfIb(a)
	--LuaPrint("Obtain character attribute mf_ib") 
	local mfib=GetChaAttr(a, ATTR_ITEMV_MF) --[[ИЎmfµАѕЯіЈКэ]]--
	--SystemNotice (a,"mfib = "..mfib)
	return mfib 
end 

function Crt(a)
	--LuaPrint("Obtain character attribute crt") 
	local crt=GetChaAttr(a,ATTR_CRT)/CRTRADIX --[[ИЎcrt]]--
	return crt 
end 

function CrtSa(a)
	--LuaPrint("Obtain player attribute crt_sa") 
	local crtsa= GetChaAttr(a, ATTR_STATEC_CRT)/ATTR_RADIX  --[[ИЎcrtЧґМ¬°Щ·Ц±И]]--
	return crtsa 
end 

function CrtSb(a)
	--LuaPrint("Obtain character attribute crt_sb") 
	local crtsb=GetChaAttr(a, ATTR_STATEV_CRT) --[[ИЎcrtЧґМ¬іЈКэ]]--
	return crtsb 
end 

function CrtIa(a)
	--LuaPrint("Obtain character attribute crt_ia") 
	local crtia=GetChaAttr(a, ATTR_ITEMC_CRT)/ATTR_RADIX --[[ИЎcrtµАѕЯ°Щ·Ц±И]]--
	return crtia 
end 

function CrtIb(a)
	--LuaPrint("Obtain character attribute crt_ib") 
	local crtib=GetChaAttr(a, ATTR_ITEMV_CRT) --[[ИЎcrtµАѕЯіЈКэ]]--
	return crtib 
end 

function Hrec(a)
	--LuaPrint("Obtain character attribute hrec") 
	local hrec=GetChaAttr(a,ATTR_HREC) --[[ИЎhrec]]--
	return hrec 
end 

function HrecSa(a)
	--LuaPrint("Obtain character attribute hrec_sa") 
	local hrecsa=  GetChaAttr(a, ATTR_STATEC_HREC)/ATTR_RADIX  --[[ИЎhrecЧґМ¬°Щ·Ц±И]]--
	return hrecsa 
end 

function HrecSb(a)
	--LuaPrint("Obtain character attribute hrec_sb") 
	local hrecsb=GetChaAttr(a, ATTR_STATEV_HREC) --[[ИЎhrecЧґМ¬іЈКэ]]--
	return hrecsb 
end 

function HrecIa(a)
	--LuaPrint("Obtain character attribute hrec_ia") 
	local hrecia=GetChaAttr(a, ATTR_ITEMC_HREC)/ATTR_RADIX --[[ИЎhrecµАѕЯ°Щ·Ц±И]]--
	return hrecia 
end 

function HrecIb(a)
	--LuaPrint("Obtain character attribute hrec_ib") 
	local hrecib=GetChaAttr(a, ATTR_ITEMV_HREC) --[[ИЎhrecµАѕЯіЈКэ]]--
	return hrecib 
end 

function Srec(a)
	--LuaPrint("Obtain character attribute srec") 
	local srec=GetChaAttr(a,ATTR_SREC) --[[ИЎsrec]]--
	return srec 
end 

function SrecSa(a)
	--LuaPrint("Obtain character attribute srec_sa") 
	local srecsa= GetChaAttr(a, ATTR_STATEC_SREC)/ATTR_RADIX  --[[ИЎsrecЧґМ¬°Щ·Ц±И]]--
	return srecsa 
end 

function SrecSb(a)
	--LuaPrint("Obtain character attribute srec_sb") 
	local srecsb=GetChaAttr(a, ATTR_STATEV_SREC) --[[ИЎsrecЧґМ¬іЈКэ]]--
	return srecsb 
end 

function SrecIa(a)
	--LuaPrint("Obtain character attribute srec_ia") 
	local srecia=GetChaAttr(a, ATTR_ITEMC_SREC)/ATTR_RADIX --[[ИЎsrecµАѕЯ°Щ·Ц±И]]--
	return srecia 
end 

function SrecIb(a)
	--LuaPrint("Obtain character attribute srec_ib") 
	local srecib=GetChaAttr(a, ATTR_ITEMV_SREC) --[[ИЎsrecµАѕЯіЈКэ]]--
	return srecib 
end 

function Aspd(a)
	--LuaPrint("Obtain character attribute aspd") 
	local aspd=math.floor ( 100000 / GetChaAttr(a,ATTR_ASPD) )  --[[ИЎaspd]]--
	return aspd 
end 

function AspdSa(a)
	--LuaPrint("Obtain character attribute aspd_sa") 
	local aspdsa=  GetChaAttr(a, ATTR_STATEC_ASPD)/ATTR_RADIX    --[[ИЎaspdЧґМ¬°Щ·Ц±И]]--
	return aspdsa 
end 

function AspdSb(a)
	--LuaPrint("Obtain character attributeaspd_sb") 
	local aspdsb=GetChaAttr(a, ATTR_STATEV_ASPD) --[[ИЎaspdЧґМ¬іЈКэ]]--
	return aspdsb 
end 

function AspdIa(a)
	--LuaPrint("Obtain character attribute aspd_ia") 
	local aspdia=GetChaAttr(a, ATTR_ITEMC_ASPD)/ATTR_RADIX --[[ИЎaspdµАѕЯ°Щ·Ц±И]]--
	return aspdia 
end 

function AspdIb(a)
	--LuaPrint("Obtain player attribute aspd_ib") 
	local aspdib=GetChaAttr(a, ATTR_ITEMV_ASPD) --[[ИЎaspdµАѕЯіЈКэ]]--
	return aspdib 
end 

function Adis(a)
	--LuaPrint("Obtain character attribute adis") 
	local adis=GetChaAttr(a,ATTR_ADIS) --[[ИЎadis]]--
	return adis 
end 

function AdisSa(a)
	--LuaPrint("Obtain character attribute adis_sa") 
	local adissa=  GetChaAttr(a, ATTR_STATEC_ADIS)/ATTR_RADIX   --[[ИЎadisЧґМ¬°Щ·Ц±И]]--
	return adissa 
end 

function AdisSb(a)
	--LuaPrint("Obtain player attribute adis_sb") 
	local adissb=GetChaAttr(a, ATTR_STATEV_ADIS) --[[ИЎadisЧґМ¬іЈКэ]]--
	return adissb 
end 

function AdisIa(a)
	--LuaPrint("Obtain character attribute aids_ia") 
	local adisia=GetChaAttr(a, ATTR_ITEMC_ADIS)/ATTR_RADIX --[[ИЎadisµАѕЯ°Щ·Ц±И]]--
	return adisia 
end 

function AdisIb(a)
	--LuaPrint("Obtain character attribute adis_ib") 
	local adisib=GetChaAttr(a, ATTR_ITEMV_ADIS) --[[ИЎadisµАѕЯіЈКэ]]--
	return adisib 
end 

function Mspd(a)
	--LuaPrint("Obtain character attribute mspd") 
	local mspd=GetChaAttr(a,ATTR_MSPD) --[[ИЎmspd]]--
	return mspd 
end 

function MspdSa(a)
	--LuaPrint("Obtain character attribute mspd_sa") 
	local mspdsa=  GetChaAttr(a, ATTR_STATEC_MSPD)/ATTR_RADIX   --[[ИЎmspdЧґМ¬°Щ·Ц±И]]--
	return mspdsa 
end 
function MspdSb(a)
	--LuaPrint("Obtain character attribute mspd_sb") 
	local mspdsb=GetChaAttr(a, ATTR_STATEV_MSPD) --[[ИЎmspdЧґМ¬іЈКэ]]--
	return mspdsb 
end 
function MspdIa(a)
	--LuaPrint("Obtain character attributemspd_ia") 
	local mspdia=GetChaAttr(a, ATTR_ITEMC_MSPD)/ATTR_RADIX --[[ИЎmspdµАѕЯ°Щ·Ц±И]]--
	return mspdia 
end 

function MspdIb(a)
	--LuaPrint("Obtain character attribute Mspd_ib") 
	local mspdib=GetChaAttr(a, ATTR_ITEMV_MSPD) --[[ИЎmspdµАѕЯіЈКэ]]--
	return mspdib 
end 

function Col(a)
	--LuaPrint("Obtain character attribute col") 
	local col=GetChaAttr(a,ATTR_COL) --[[ИЎcol]]--
	return col 
end 

function ColSa(a) 
	--LuaPrint("Obtain character attribute col_sa") 
	local colsa= GetChaAttr(a, ATTR_STATEC_COL)/ATTR_RADIX  --[[ИЎcolЧґМ¬°Щ·Ц±И]]--
	return colsa 
end 

function ColSb(a) 
	--LuaPrint("Obtain character attribute col_sb") 
	local colsb=GetChaAttr(a, ATTR_STATEV_COL) --[[ИЎcolЧґМ¬іЈКэ]]--
	return colsb 
end 

function ColIa(a) 
	--LuaPrint("Obtain character attribute col_ia") 
	local colia=GetChaAttr(a, ATTR_ITEMC_COL)/ATTR_RADIX --[[ИЎcolµАѕЯ°Щ·Ц±И]]--
	return colia 
end 

function ColIb(a) 
	--LuaPrint("Obtain character attribute col_ib") 
	local colib=GetChaAttr(a, ATTR_ITEMV_COL) --[[ИЎcolµАѕЯіЈКэ]]--
	return colib 
end 

function Str(a) 
	--LuaPrint("Obtain character attribute str") 
	local str=GetChaAttr(a,ATTR_STR) --[[ИЎstr]]--
	return str 
end 

function StrSa(a) 
	--LuaPrint("Obtain character attribute str_sa") 
	local strsa= GetChaAttr(a, ATTR_STATEC_STR)/ATTR_RADIX   --[[ИЎstrЧґМ¬°Щ·Ц±И]]--
	return strsa 
end 

function StrSb(a) 
	--LuaPrint("Obtain character attribute str_sb") 
	local strsb=GetChaAttr(a, ATTR_STATEV_STR) --[[ИЎstrЧґМ¬іЈКэ]]--
	return strsb 
end 

function StrIa(a)
	--LuaPrint("Obtain character attribute str_ia") 
	local stria=GetChaAttr(a,ATTR_ITEMC_STR)/ATTR_RADIX --[[ИЎstrµАѕЯ°Щ·Ц±И]]--
	return stria 
end 

function StrIb(a)
	--LuaPrint("Obtain character attribute str_ib") 
	local strib=GetChaAttr(a,ATTR_ITEMV_STR) --[[ИЎstrµАѕЯіЈКэ]]--
	return strib 
end 

function Dex(a)
	--LuaPrint("Obtain character attribute dex") 
	local dex=GetChaAttr(a,ATTR_DEX) --[[ИЎdex]]--
	return dex 
end 

function DexSa(a)
	--LuaPrint("Obtain character attribute dex_sa") 
	local dexsa= GetChaAttr(a, ATTR_STATEC_DEX)/ATTR_RADIX  --[[ИЎdexЧґМ¬°Щ·Ц±И]]--
	return dexsa 
end 

function DexSb(a)
	--LuaPrint("Obtain player attribute dex_sb") 
	local dexsb=GetChaAttr(a, ATTR_STATEV_DEX) --[[ИЎdexЧґМ¬іЈКэ]]--
	return dexsb 
end 

function DexIa(a)
	--LuaPrint("Obtain character attribute dex_ia") 
	local dexia=GetChaAttr(a,ATTR_ITEMC_DEX)/ATTR_RADIX --[[ИЎdexµАѕЯ°Щ·Ц±И]]--
	return dexia 
end 

function DexIb(a)
	--LuaPrint("Obtain character attribute dex_ib") 
	local dexib=GetChaAttr(a,ATTR_ITEMV_DEX) --[[ИЎdexµАѕЯіЈКэ]]--
	return dexib 
end 

function Agi(a) 
	--LuaPrint("Obtain character attribute agi") 
	local agi=GetChaAttr(a,ATTR_AGI) --[[ИЎagi]]--
	return agi 
end 

function AgiSa(a)
	--LuaPrint("Obtain character attribute agi_sa") 
	local agisa= GetChaAttr(a, ATTR_STATEC_AGI)/ATTR_RADIX  --[[ИЎagiЧґМ¬°Щ·Ц±И]]--
	return agisa 
end 

function AgiSb(a)
	--LuaPrint("Obtain character attribute agi_sb") 
	local agisb=GetChaAttr(a, ATTR_STATEV_AGI) --[[ИЎagiЧґМ¬іЈКэ]]--
	return agisb 
end 

function AgiIa(a)
	--LuaPrint("Obtain character attribute agi_ia") 
	local agiia=GetChaAttr(a,ATTR_ITEMC_AGI)/ATTR_RADIX --[[ИЎagiµАѕЯ°Щ·Ц±И]]--
	return agiia 
end 

function AgiIb(a)
	--LuaPrint("Obtain character attribute agi_ib") 
	local agiib=GetChaAttr(a,ATTR_ITEMV_AGI) --[[ИЎagiµАѕЯіЈКэ]]--
	return agiib 
end 

function Con(a)
	--LuaPrint("Obtain character attribute con") 
	local con=GetChaAttr(a,ATTR_CON) --[[ИЎcon]]--
	return con 
end 

function ConSa(a)
	--LuaPrint("Obtain character attribute con_sa") 
	local consa= GetChaAttr(a, ATTR_STATEC_CON)/ATTR_RADIX  --[[ИЎconЧґМ¬°Щ·Ц±И]]--
	return consa 
end 

function ConSb(a)
	--LuaPrint("Obtain character attribute con_sb") 
	local consb=GetChaAttr(a, ATTR_STATEV_CON) --[[ИЎconЧґМ¬іЈКэ]]--
	return consb 
end 

function ConIa(a)
	--LuaPrint("Obtain character attribute con_ia") 
	local conia=GetChaAttr(a, ATTR_ITEMC_CON)/ATTR_RADIX --[[ИЎconµАѕЯ°Щ·Ц±И]]--
	return conia 
end 

function ConIb(a)
	--LuaPrint("Obtain character attribute con_ib") 
	local conib=GetChaAttr(a, ATTR_ITEMV_CON) --[[ИЎconµАѕЯіЈКэ]]--
	return conib 
end 

function Sta(a)
	--LuaPrint("Obtain character attribute sta") 
	local sta=GetChaAttr(a,ATTR_STA) --[[ИЎsta]]--
	return sta 
end 

function StaSa(a)
	--LuaPrint("Obtain character attribute sta_sa") 
	local stasa= GetChaAttr(a, ATTR_STATEC_STA)/ATTR_RADIX  --[[ИЎstaЧґМ¬°Щ·Ц±И]]--
	return stasa 
end 

function StaSb(a)
	--LuaPrint("Obtain character attribute sta_sb") 
	local stasb=GetChaAttr(a, ATTR_STATEV_STA) --[[ИЎstaЧґМ¬іЈКэ]]--
	return stasb 
end 

function StaIa(a)
	--LuaPrint("Obtain character attribute sta_ia") 
	local staia=GetChaAttr(a, ATTR_ITEMC_STA)/ATTR_RADIX --[[ИЎstaµАѕЯ°Щ·Ц±И]]--
	return staia 
end 

function StaIb(a)
	--LuaPrint("Obtain character attribute sta_ib") 
	local staib=GetChaAttr(a, ATTR_ITEMV_STA) --[[ИЎstaµАѕЯіЈКэ]]--
	return staib 
end 

function Luk(a)
	--LuaPrint("Obtain character attribute luk") 
	local luk=GetChaAttr(a,ATTR_LUK) --[[ИЎluk]]--
	return luk 
end 

function LukSa(a)
	--LuaPrint("Obtain character attribute luk_sa") 
	local luksa= GetChaAttr(a, ATTR_STATEC_LUK)/ATTR_RADIX   --[[ИЎlukЧґМ¬°Щ·Ц±И]]--
	return luksa 
end 

function LukSb(a)
	--LuaPrint("Obtain character attribute luk_sb") 
	local luksb=GetChaAttr(a, ATTR_STATEV_LUK) --[[ИЎlukЧґМ¬іЈКэ]]--
	return luksb 
end 

function LukIa(a)
	--LuaPrint("Obtain character attribute luk_ia") 
	local lukia=GetChaAttr(a, ATTR_ITEMC_LUK)/ATTR_RADIX --[[ИЎlukµАѕЯ°Щ·Ц±И]]--
	return lukia 
end 

function LukIb(a)
	--LuaPrint("Obtain character attribute luk_ib") 
	local lukib = GetChaAttr(a, ATTR_ITEMV_LUK) --[[ИЎlukµАѕЯіЈКэ]]--
	return lukib 
end 




function BSMxhp(a) --[[ИЎ»щ±ѕmxhp]]--
	--LuaPrint("Obtain character attribute bsmxhp") 
	local bsmxhp=GetChaAttr(a,ATTR_BMXHP) 
	return bsmxhp 
end 

function Mxhp_final(a) 
	local mxhp_final=(BSMxhp(a) * MxhpIa(a) + MxhpIb(a) ) * math.max(0, MxhpSa(a))  + MxhpSb(a) --[[ИЎµ±К±КµјКmxhp]]--
	--LG("chaattr_set", " BSMxhp = " , BSMxhp(a) , "MxhpIa = " , MxhpIa(a) , " MxhpIb = " , MxhpIb(a) , "MxhpSa = " , MxhpSa(a) , "MxhpSb = ", MxhpSb(a) , "\n" ) 
	--LG("chaattr_set", "mxhp_final = ", mxhp_final , "\n" ) 
	return mxhp_final 
end 


function Sp_final(a)
	local sp_final=(BSSp(a) * SpIa(a) + SpIb(a) ) * math.max(0 , SpSa(a)) + SpSb(a) --[[ИЎµ±К±КµјКsp]]--
	--LG("chaattr_set", " BSMxhp = " , BSmxhp(a) , "MxhpIa = " , MxhpIa(a) , " MxhpIb = " , MxhpIb(a) , "MxhpSa = " , MxhpSa(a) , "MxhpSb = ", MxhpSb(a) , "\n" ) 
	--LG("chaattr_set", "mxhp_final = ", mxhp_final , "\n" ) 
	return sp_final 
end 

function BSMxsp(a) --[[ИЎ»щ±ѕmxsp]]--
	--LuaPrint("Obtain character attribute bsmxsp") 
	local bsmxsp=GetChaAttr(a,ATTR_BMXSP) 
	return bsmxsp 
end 

function Mxsp_final(a)
	local mxsp_final=(BSMxsp(a) * MxspIa(a) + MxspIb(a) ) * math.max ( 0 , MxspSa(a) ) + MxspSb(a) --[[ИЎµ±К±КµјКmxsp]]--
	--LG("chaattr_set", " BSMxsp = " , BSMxsp(a) , "MxspIa = " , MxspIa(a) , " MxspIb = " , MxspIb(a) , "MxspSa = " , MxspSa(a) , "MxspSb = ", MxspSb(a) , "\n" ) 
	--LG("chaattr_set", "mxsp_final = ", mxsp_final , "\n" ) 
	return mxsp_final 
end 

function BSMnatk(a) --[[ИЎ»щ±ѕmnatk]]--
	--LuaPrint("Obtain character attribute bsmnatk") 
	local bsmnatk=GetChaAttr(a,ATTR_BMNATK) 
	return bsmnatk 
end

function Mnatk_final(a)
	local mnatk_final=math.max ( (BSMnatk(a) * MnatkIa(a) + MnatkIb(a) ) * math.max ( 0 , MnatkSa(a)) + MnatkSb(a) , 1 ) --[[ИЎµ±К±КµјКmnatk]]--
	--LG("chaattr_set", " BSMnatk = " , BSMnatk(a) , "MnatkIa = " , MnatkIa(a) , " MnatkIb = " , MnatkIb(a) , "MnatkSa = " , MnatkSa(a) , "MnatkSb = ", MnatkSb(a) , "\n" ) 
	--LG("chaattr_set", "mnatk_final = ", mnatk_final , "\n" ) 
	return mnatk_final 
end 

function BSMxatk(a) --[[ИЎ»щ±ѕmxatk]]--
	--LuaPrint("Obtain character attribute bsmxatk") 
	local bsmxatk=GetChaAttr(a,ATTR_BMXATK) 
	return bsmxatk 
end

function Mxatk_final(a)
	local mxatk_final=math.max ( (BSMxatk(a) * MxatkIa(a) + MxatkIb(a) ) * math.max ( 0 , MxatkSa(a) ) + MxatkSb(a) , 1 ) --[[ИЎµ±К±КµјКmxatk]]--
	return mxatk_final 
end 

function BSDef(a) --[[ИЎ»щ±ѕdef]]--
	--LuaPrint("Obtain character attributebsdef") 
	local bsdef=GetChaAttr(a,ATTR_BDEF) 
	return bsdef 
end


function Def_final(a)
	local def_final=math.max ( (BSDef(a) * DefIa(a) + DefIb(a) ) * math.max ( 0 , DefSa(a) ) + DefSb(a) , 0 ) --[[ИЎµ±К±КµјКdef]]--
	--LG("chaattr_set", " BSDef = " , BSDef(a) , "DefIa = " , DefIa(a) , " DefIb = " , DefIb(a) , "DefSa = " , DefSa(a) , "DefSb = ", DefSb(a) , "\n" ) 
	--LG("chaattr_set", "def_final = ", def_final , "\n" ) 
	return def_final 
end 

function BSResist(a) --[[ИЎ»щ±ѕї№РФ]]--
   --LuaPrint("Obtain player attribute bsresist") 
   local bsresist = GetChaAttr(a, ATTR_BPDEF) 
   return bsresist 
end 

function Resist_final(a) 
   local resist_final=(BSResist(a) * ResistIa(a) + ResistIb(a) ) * math.max ( 0 , ResistSa(a) ) + ResistSb(a) --[[ИЎКµјКresist]]--
   return resist_final 
end 


function BSHit(a) --[[ИЎ»щ±ѕhit]]--
	--LuaPrint("Obtain character attribute bshit") 
	local bshit=GetChaAttr(a,ATTR_BHIT) 
	return bshit 
end

function Hit_final(a)
	local hit_final = (BSHit(a) * HitIa(a) + HitIb(a) ) * math.max ( 0 , HitSa(a) ) + HitSb(a) --[[ИЎµ±К±КµјКhit]]--
	return hit_final 
end 

function BSFlee(a) --[[ИЎ»щ±ѕflee]]--
	--LuaPrint("Obtain character attribute bsflee") 
	local bsflee=GetChaAttr(a,ATTR_BFLEE) 
	return bsflee 
end

function Flee_final(a) 
	local flee_final=(BSFlee(a) * FleeIa(a) + FleeIb(a) ) * math.max ( 0 , FleeSa(a) ) + FleeSb(a)  --[[ИЎµ±К±КµјКflee]]--
	return flee_final 
end 

function BSMf(a) --[[ИЎ»щ±ѕmf]]--
	--LuaPrint("Obtain character attribute bsmf") 
	local bsmf=GetChaAttr(a,ATTR_BMF)
	--SystemNotice(a,"bsmf = "..bsmf)
	return bsmf 
end

function Mf_final(a)
	local mf_final=(BSMf(a) * MfIa(a) + MfIb(a) )* math.max ( 0 , MfSa(a) ) + MfSb(a) --[[ИЎµ±К±КµјКmf]]--
	return mf_final 
end 

function BSCrt(a) --[[ИЎ»щ±ѕcrt]]--
	--LuaPrint("Obtain character attributebscrt") 
	local bscrt=GetChaAttr(a,ATTR_BCRT) 
	return bscrt 
end

function Crt_final(a)
	local crt_final=(BSCrt(a) * CrtIa(a) + CrtIb(a) ) * math.max ( 0 , CrtSa(a) )  + CrtSb(a) --[[ИЎµ±К±КµјКcrt]]--
	return crt_final 
end 

function BSHrec(a) --[[ИЎ»щ±ѕhrec]]--
	--LuaPrint("Obtain character attribute bshrec") 
	local bshrec=GetChaAttr(a,ATTR_BHREC) 
	return bshrec 
end

function Hrec_final(a)
	local hrec_final=( BSHrec(a) * HrecIa(a) + HrecIb(a) ) * math.max ( 0 , HrecSa(a) ) + HrecSb(a) --[[ИЎµ±К±КµјКhrec]]--
	return hrec_final 
end 

function BSSrec(a) --[[ИЎ»щ±ѕsrec]]--
	--LuaPrint("Obtain character attribute bssrec") 
	local bssrec=GetChaAttr(a,ATTR_BSREC) 
	return bssrec 
end

function Srec_final(a)
	local srec_final=(BSSrec(a) * SrecIa(a) + SrecIb(a) ) * math.max ( 0 , SrecSa(a) ) + SrecSb(a) --[[ИЎµ±К±КµјКsrec]]--
	return srec_final 
end 

function BSAspd(a) --[[ИЎ»щ±ѕaspd]]--
	--LuaPrint("Obtain character attribute bsaspd") 
	local bsaspd=math.floor ( 100000 / GetChaAttr(a,ATTR_BASPD) ) 
	return bsaspd 
end

function Aspd_final(a)

	local aspd_final= math.floor ( ( BSAspd(a)  * AspdIa(a) + AspdIb(a) ) * math.max ( 0 , AspdSa(a) ) + AspdSb(a) )
		--SystemNotice(a,"aspd_final = "..aspd_final)
	--LG("aspd", "baspd = " , BSAspd(a),"aspdia= " , AspdIa(a) , " AspdIb = ", AspdIb(a), "AspdSa = " , AspdSa(a) , "AspdSb = " , AspdSb(a) ) 
	return aspd_final 
end 

function BSAdis(a) --[[ИЎ»щ±ѕadis]]--
	--LuaPrint("Obtain character attribute bsadis") 
	local bsadis=GetChaAttr(a,ATTR_BADIS) 
	return bsadis 
end

function Adis_final(a)
	local adis_final=(BSAdis(a) * AdisIa(a) + AdisIb(a) ) * math.max ( 0 , AdisSa(a) ) + AdisSb(a) --[[ИЎµ±К±КµјКadis]]--
	return adis_final 
end 

function BSMspd(a) --[[ИЎ»щ±ѕmspd]]--
	--LuaPrint("Obtain character attribute bsmspd") 
	local bsmspd=GetChaAttr(a,ATTR_BMSPD) 
	return bsmspd 
end

function Mspd_final(a)
	local mspd_final=math.max ( BSMspd(a) * 0.3 , ( (BSMspd(a) * MspdIa(a) + MspdIb(a) ) * math.max ( 0.3 , MspdSa(a))  + MspdSb(a) )  )  --[[ИЎµ±К±КµјКmspd]]--
	return mspd_final 
end 

function BSCol(a) --[[ИЎ»щ±ѕcol]]--
	--LuaPrint("Obtain character attribute bscol") 
	local bscol=GetChaAttr(a,ATTR_BCOL) 
	return bscol 
end

function Col_final(a)
	local col_final=(BSCol(a) * ColIa(a) + ColIb(a) ) * math.max ( 0 , ColSa(a) ) + ColSb(a) --[[ИЎµ±К±КµјКcol]]--
	return col_final 
end 

function BSStr(a) --[[ИЎ»щ±ѕstr]]--
	--LuaPrint("Obtain character attribute bsstr") 
	local bsstr=GetChaAttr(a,ATTR_BSTR) 
	return bsstr 
end

function Str_final(a)
	local str_final=(BSStr(a) * StrIa(a) + StrIb(a) ) * math.max ( 0 , StrSa(a) ) + StrSb(a) --[[ИЎµ±К±КµјКstr]]--
	return str_final 
end 

function BSDex(a) --[[ИЎ»щ±ѕdex]]--
	--LuaPrint("Obtain character attribute bsdex") 
	local bsdex=GetChaAttr(a,ATTR_BDEX) 
	return bsdex 
end

function Dex_final(a)
	local dex_final=(BSDex(a) * DexIa(a) + DexIb(a) ) * math.max ( 0 , DexSa(a) ) + DexSb(a) --[[ИЎµ±К±КµјКdex]]--
	return dex_final 
end 

function BSAgi(a) --[[ИЎ»щ±ѕagi]]--
	--LuaPrint("Obtain character attribute bsagi") 
	local bsagi=GetChaAttr(a,ATTR_BAGI) 
	return bsagi 
end

function Agi_final(a)
	local agi_final=(BSAgi(a) * AgiIa(a) + AgiIb(a) ) * math.max ( 0 , AgiSa(a) ) + AgiSb(a) --[[ИЎµ±К±КµјКagi]]--
	return agi_final 
end 

function BSCon(a) --[[ИЎ»щ±ѕcon]]--
	--LuaPrint("Obtain character attribute bscon") 
	local bscon=GetChaAttr(a,ATTR_BCON) 
	return bscon 
end

function Con_final(a)
	local con_final=(BSCon(a) * ConIa(a) + ConIb(a)) * math.max ( 0 , ConSa(a) ) + ConSb(a) --[[ИЎµ±К±КµјКcon]]--
	return con_final 
end 

function BSSta(a) --[[ИЎ»щ±ѕsta]]--
	--LuaPrint("Obtain character attribute bssta") 
	local bssta=GetChaAttr(a,ATTR_BSTA) 
	return bssta 
end

function Sta_final(a)
	local sta_final=(BSSta(a) * StaIa(a) + StaIb(a) ) * math.max ( 0 , StaSa(a) ) + StaSb(a) --[[ИЎµ±К±КµјКsta]]--
	return sta_final 
end 

function BSLuk(a) --[[ИЎ»щ±ѕluk]]--
	--LuaPrint("Obtain character attribute bsluk") 
	local bsluk=GetChaAttr(a,ATTR_BLUK) 
	return bsluk 
end

function Luk_final(a)
	local luk_final=(BSLuk(a)  *LukIa(a) + LukIb(a) ) * math.max ( 0 , LukSa(a) ) + LukSb(a) --[[ИЎµ±К±КµјКluk]]--
	return luk_final 
end 



--ИЎґ¬Ц»»щ±ѕКфРФєЇКэ-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Ship_BSMnatk ( ship_role )						--ґ¬Ц»»щ±ѕЧоРЎ№Ґ»ч
	local ship_bsmnatk=GetChaAttr( ship_role , ATTR_BMNATK ) 
	return ship_bsmnatk 
end 

function Ship_BSMxatk ( ship_role )						--ґ¬Ц»»щ±ѕЧоґу№Ґ»ч
	local ship_bsmxatk=GetChaAttr( ship_role , ATTR_BMXATK ) 
	return ship_bsmxatk 
end 
	
function Ship_BSAdis ( ship_role )							--ґ¬Ц»»щ±ѕ№Ґ»чѕаАл
	local ship_bsadis=GetChaAttr( ship_role , ATTR_BADIS ) 
	return ship_bsadis  
end 

function Ship_BSCspd ( ship_role )							--ЕЪµЇ»щ±ѕ·ЙРРЛЩ¶И
	local ship_bscspd=GetChaAttr( ship_role , ATTR_BOAT_BCSPD ) 
	return ship_bscspd  
end 

function Ship_BSAspd ( ship_role ) 						--ЕЪµЇ»щ±ѕ№Ґ»чјдёф
	local ship_bsaspd=GetChaAttr( ship_role , ATTR_BASPD ) 
	return ship_bsaspd  
end 

function Ship_BSCrange ( ship_role ) 						--ЕЪµЇ»щ±ѕ±¬ХЁ·¶О§
	local ship_bscrange=GetChaAttr( ship_role , ATTR_BOAT_BCRANGE ) 
	return ship_bscrange  
end 


function Ship_BSDef ( ship_role ) 							--ґ¬Ц»»щ±ѕ·АУщ
	local ship_bsdef=GetChaAttr( ship_role , ATTR_BDEF ) 
	return ship_bsdef   
end 


function Ship_BSResist ( ship_role ) 						--ґ¬Ц»»щ±ѕµЦї№
	local ship_bsresist=GetChaAttr( ship_role , ATTR_BPDEF ) 
	return ship_bsresist   
end 

function Ship_BSMxhp ( ship_role ) 						--ґ¬Ц»»щ±ѕЧоґуДНѕГ
	local ship_bsmxhp=GetChaAttr( ship_role , ATTR_BMXHP ) 
	return ship_bsmxhp    
end 

function Ship_BSHrec ( ship_role ) 						--ґ¬Ц»»щ±ѕДНѕГ»ШёґЛЩ¶И
	local ship_bshrec=GetChaAttr( ship_role , ATTR_BHREC ) 
	return ship_bshrec 
end 

function Ship_BSSrec ( ship_role ) 							--ґ¬Ц»»щ±ѕІ№ёшПыєДЛЩ¶И
	local ship_bssrec=GetChaAttr( ship_role , ATTR_BSREC ) 
	return ship_bssrec 
end 

function Ship_BSMspd ( ship_role ) 						--ґ¬Ц»»щ±ѕТЖ¶ЇЛЩ¶И
	local ship_bsmspd=GetChaAttr( ship_role , ATTR_BMSPD ) 
	return ship_bsmspd 
end 

function Ship_BSMxsp ( ship_role ) 						--ґ¬Ц»»щ±ѕЧоґуІ№ёшЦµ
	local ship_bsmxsp=GetChaAttr( ship_role , ATTR_BMXSP ) 
	return ship_bsmxsp 
end 


--ИЎИЛОпґ¬Ц»КфРФµДјјДЬУ°Пм--------------------------------------------------------------------------------------------------------------------------------------------------------------------

function Ship_MnatkSa ( cha_role )						--ґ¬Ц»»щ±ѕЧоРЎ№Ґ»чЅЗЙ«јјДЬПµКэУ°Пм
	local ship_mnatksa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MNATK ) / ATTR_RADIX
	return ship_mnatksa 
end 

function Ship_MnatkSb ( cha_role )						--ґ¬Ц»»щ±ѕЧоРЎ№Ґ»чЅЗЙ«јјДЬіЈКэУ°Пм
	local ship_mnatksb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MNATK ) 
	return ship_mnatksb 
end 

function Ship_MxatkSa ( cha_role )						--ґ¬Ц»»щ±ѕЧоґу№Ґ»чЅЗЙ«јјДЬПµКэУ°Пм
	local ship_mxatksa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXATK ) / ATTR_RADIX
	return ship_mxatksa 
end 

function Ship_MxatkSb ( cha_role )						--ґ¬Ц»»щ±ѕЧоґу№Ґ»чЅЗЙ«јјДЬіЈКэУ°Пм
	local ship_mxatksb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXATK ) 
	return ship_mxatksb 
end 
	
function Ship_AdisSa ( cha_role )							--ґ¬Ц»»щ±ѕ№Ґ»чѕаАлЅЗЙ«јјДЬПµКэУ°Пм
	local ship_adissa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_ADIS ) / ATTR_RADIX
	return ship_adissa  
end 

function Ship_AdisSb ( cha_role )							--ґ¬Ц»»щ±ѕ№Ґ»чѕаАлЅЗЙ«јјДЬіЈКэУ°Пм
	local ship_adissb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_ADIS ) 
	return ship_adissb  
end 



function Ship_CspdSa ( cha_role )							--ЕЪµЇ»щ±ѕ·ЙРРЛЩ¶ИЅЗЙ«јјДЬПµКэУ°Пм
	local ship_cspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_CSPD ) / ATTR_RADIX
	return ship_cspdsa  
end 

function Ship_CspdSb ( cha_role )							--ЕЪµЇ»щ±ѕ·ЙРРЛЩ¶ИЅЗЙ«јјДЬіЈКэУ°Пм
	local ship_cspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_CSPD ) 
	return ship_cspdsb  
end 



function Ship_AspdSa ( cha_role ) 						--ЕЪµЇ»щ±ѕ№Ґ»чјдёфЅЗЙ«јјДЬПµКэУ°Пм
	local ship_aspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_ASPD ) / ATTR_RADIX
	return ship_aspdsa  
end 


function Ship_AspdSb ( cha_role ) 						--ЕЪµЇ»щ±ѕ№Ґ»чјдёфЅЗЙ«јјДЬіЈКэУ°Пм
	local ship_aspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_ASPD ) 
	return ship_aspdsb  
end 




function Ship_CrangeSa ( cha_role ) 						--ЕЪµЇ»щ±ѕ±¬ХЁ·¶О§ЅЗЙ«јјДЬПµКэУ°Пм
	local ship_crangesa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_CRANGE ) / ATTR_RADIX
	return ship_crangesa  
end 

function Ship_CrangeSb ( cha_role ) 						--ЕЪµЇ»щ±ѕ±¬ХЁ·¶О§ЅЗЙ«јјДЬіЈКэУ°Пм
	local ship_crangesb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_CRANGE ) 
	return ship_crangesb  
end 




function Ship_DefSa ( cha_role ) 							--ґ¬Ц»»щ±ѕ·АУщЅЗЙ«јјДЬПµКэУ°Пм
	local ship_defsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_DEF ) / ATTR_RADIX
	return ship_defsa   
end 

function Ship_DefSb ( cha_role ) 							--ґ¬Ц»»щ±ѕ·АУщЅЗЙ«јјДЬіЈКэУ°Пм
	local ship_defsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_DEF ) 
	return ship_defsb   
end 



function Ship_ResistSa ( cha_role ) 						--ґ¬Ц»»щ±ѕµЦї№ЅЗЙ«јјДЬПµКэУ°Пм
	local ship_resistsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_RESIST ) / ATTR_RADIX
	return ship_resistsa   
end 

function Ship_ResistSb ( cha_role ) 						--ґ¬Ц»»щ±ѕµЦї№ЅЗЙ«јјДЬіЈКэУ°Пм
	local ship_resistsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_RESIST ) 
	return ship_resistsb   
end 



function Ship_MxhpSa ( cha_role ) 						--ґ¬Ц»»щ±ѕЧоґуДНѕГЅЗЙ«јјДЬПµКэУ°Пм
	local ship_mxhpsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXUSE ) / ATTR_RADIX
	return ship_mxhpsa    
end 

function Ship_MxhpSb ( cha_role ) 						--ґ¬Ц»»щ±ѕЧоґуДНѕГЅЗЙ«јјДЬіЈКэУ°Пм
	local ship_mxhpsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXUSE ) 
	return ship_mxhpsb    
end 



function Ship_HrecSa ( cha_role ) 							--ґ¬Ц»»щ±ѕДНѕГ»ШёґЛЩ¶ИЅЗЙ«јјДЬПµКэУ°Пм
	local ship_hrecsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_USEREC ) / ATTR_RADIX
	return ship_hrecsa 
end 

function Ship_HrecSb ( cha_role ) 						--ґ¬Ц»»щ±ѕДНѕГ»ШёґЛЩ¶ИЅЗЙ«јјДЬіЈКэУ°Пм
	local ship_hrecsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_USEREC ) 
	return ship_hrecsb 
end 



function Ship_SrecSa ( cha_role ) 							--ґ¬Ц»»щ±ѕІ№ёшПыєДЛЩ¶ИЅЗЙ«јјДЬПµКэУ°Пм
	local ship_srecsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_EXP ) / ATTR_RADIX
	return ship_srecsa 
end 

function Ship_SrecSb ( cha_role ) 									--ґ¬Ц»»щ±ѕІ№ёшПыєДЛЩ¶ИЅЗЙ«јјДЬіЈКэУ°Пм
	local ship_srecsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_EXP ) 
	return ship_srecsb 
end 



function Ship_MspdSa ( cha_role ) 								--ґ¬Ц»»щ±ѕТЖ¶ЇЛЩ¶ИЅЗЙ«јјДЬПµКэУ°Пм
	local ship_mspdsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MSPD ) / ATTR_RADIX
	return ship_mspdsa 
end 

function Ship_MspdSb ( cha_role ) 								--ґ¬Ц»»щ±ѕТЖ¶ЇЛЩ¶ИЅЗЙ«јјДЬіЈКэУ°Пм
	local ship_mspdsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MSPD ) 
	return ship_mspdsb 
end 



function Ship_MxspSa ( cha_role ) 									--ґ¬Ц»»щ±ѕЧоґуІ№ёшЦµЅЗЙ«јјДЬПµКэУ°Пм
	local ship_mxspsa=GetChaAttr( cha_role , ATTR_BOAT_SKILLC_MXSPLY ) / ATTR_RADIX
	return ship_mxspsa 
end 

function Ship_MxspSb ( cha_role ) 								--ґ¬Ц»»щ±ѕЧоґуІ№ёшЦµЅЗЙ«јјДЬіЈКэУ°Пм
	local ship_mxspsb=GetChaAttr( cha_role , ATTR_BOAT_SKILLV_MXSPLY ) 
	return ship_mxspsb 
end 

--ґ¬Ц»ЧоЦХКфРФјЖЛг--------------------------------------------------------------------------------------------------------------------------------------------------

function Ship_Mnatk_final ( cha_role , ship_role )							--јЖЛгґ¬Ц»ЧоРЎ№Ґ»ч
	local ship_mnatk=  math.floor ( ( Ship_BSMnatk ( ship_role ) * Ship_MnatkSa ( cha_role ) + Ship_MnatkSb ( cha_role ) ) * MnatkSa ( ship_role ) + MnatkSb ( ship_role ) )
	return ship_mnatk 
end 

function Ship_Mnatk ( ship_role )										--ґ¬Ц»ЧоРЎ№Ґ»ч
	local ship_mnatk=GetChaAttr( ship_role , ATTR_MNATK ) 
	return ship_mnatk 
end 

function Ship_Mxatk_final ( cha_role , ship_role )							--јЖЛгґ¬Ц»Чоґу№Ґ»ч
	local ship_mxatk= math.floor ( ( Ship_BSMxatk ( ship_role ) * Ship_MxatkSa ( cha_role ) + Ship_MxatkSb ( cha_role ) ) * MxatkSa ( ship_role ) + MxatkSb ( ship_role ) )
	return ship_mxatk 
end 

function Ship_Mxatk ( ship_role )										--ґ¬Ц»Чоґу№Ґ»ч
	local ship_mxatk=GetChaAttr( ship_role , ATTR_MXATK ) 
	return ship_mxatk 
end 


	
function Ship_Adis_final ( cha_role , ship_role )							--јЖЛгґ¬Ц»№Ґ»чѕаАл
	local ship_adis= math.floor ( ( Ship_BSAdis ( ship_role ) * Ship_AdisSa ( cha_role ) + Ship_AdisSb ( cha_role ) )  ) 
	return ship_adis 
end 

function Ship_Adis ( ship_role )										--ґ¬Ц»№Ґ»чѕаАл
	local ship_adis=GetChaAttr( ship_role , ATTR_ADIS ) 
	return ship_adis 
end 




function Ship_Cspd_final ( cha_role , ship_role )							--јЖЛгґ¬Ц»ЕЪµЇ·ЙРРЛЩ¶И
	local ship_cspd= math.floor ( ( Ship_BSCspd ( ship_role ) * Ship_CspdSa ( cha_role ) + Ship_CspdSb ( cha_role ) )  )
	return ship_cspd 
end 

function Ship_Cspd ( ship_role )										--ґ¬Ц»ЕЪµЇ·ЙРРЛЩ¶И
	local ship_cspd=GetChaAttr( ship_role , ATTR_BOAT_CSPD ) 
	return ship_cspd 
end 



function Ship_Aspd_final ( cha_role , ship_role ) 							--јЖЛгЕЪµЇ№Ґ»чјдёф
	local ship_aspd= math.floor ((  Ship_BSAspd ( ship_role ) * Ship_AspdSa ( cha_role ) + Ship_AspdSb ( cha_role ) ) * AspdSa ( ship_role ) + AspdSb ( ship_role ) )
	return ship_aspd  
end 

function Ship_Aspd ( ship_role ) 										--ЕЪµЇ№Ґ»чјдёф
	local ship_aspd=GetChaAttr( ship_role , ATTR_ASPD ) 
	return ship_aspd  
end 



function Ship_Crange_final (  cha_role , ship_role ) 							--јЖЛгЕЪµЇ±¬ХЁ·¶О§
	local ship_crange= math.floor ( ( Ship_BSCrange ( ship_role ) * Ship_CrangeSa ( cha_role ) + Ship_CrangeSb ( cha_role ) )  ) 
	return ship_crange  
end 

function Ship_Crange ( ship_role ) 										--ЕЪµЇ±¬ХЁ·¶О§
	local ship_crange=GetChaAttr( ship_role , ATTR_CRANGE ) 
	return ship_crange  
end 




function Ship_Def_final ( cha_role , ship_role ) 							--јЖЛгґ¬Ц»·АУщ
	local ship_def= math.floor ( ( Ship_BSDef ( ship_role ) * Ship_DefSa ( cha_role ) + Ship_DefSb ( cha_role ) ) * DefSa ( ship_role ) + DefSb ( ship_role ) ) 
	return ship_def  
end 

function Ship_Def ( ship_role ) 										--ґ¬Ц»·АУщ
	local ship_def=GetChaAttr( ship_role , ATTR_DEF ) 
	return ship_def  
end 



function Ship_Resist_final (  cha_role ,ship_role ) 							--јЖЛгґ¬Ц»µЦї№
	local ship_resist= math.floor ( ( Ship_BSResist ( ship_role ) * Ship_ResistSa ( cha_role ) + Ship_ResistSb ( cha_role ) ) * ResistSa ( ship_role ) + ResistSb ( ship_role ) ) 
	return ship_resist  
end 

function Ship_Resistl ( ship_role ) 										--ґ¬Ц»µЦї№
	local ship_resist=GetChaAttr( ship_role , ATTR_PDEF ) 
	return ship_resist  
end 



function Ship_Mxhp_final (  cha_role ,ship_role ) 							--јЖЛгґ¬Ц»ЧоґуДНѕГ
	local ship_mxhp= math.floor ( ( Ship_BSMxhp ( ship_role ) * Ship_MxhpSa ( cha_role ) + Ship_MxhpSb ( cha_role ) ) * MxhpSa ( ship_role ) + MxhpSb ( ship_role ) ) 
	return ship_mxhp  
end 

function Ship_Mxhp ( ship_role ) 										--ґ¬Ц»ЧоґуДНѕГ
	local ship_mxhp=GetChaAttr( ship_role , ATTR_MXHP ) 
	return ship_mxhp  
end 

function Ship_Hp ( ship_role )										--ґ¬Ц»µ±З°ДНѕГ
	local ship_hp=GetChaAttr( ship_role , ATTR_HP ) 
	return ship_hp  
end 

function Ship_Hrec_final (  cha_role ,ship_role ) 							--јЖЛгґ¬Ц»ДНѕГ»ШёґЛЩ¶И
	local ship_hrec= math.floor ( ( Ship_BSHrec ( ship_role ) * Ship_HrecSa ( cha_role ) + Ship_HrecSb ( cha_role ) ) * HrecSa ( ship_role ) + HrecSb ( ship_role )  ) 
	return ship_hrec  
end 

function Ship_Hrec (  ship_role ) 										--ґ¬Ц»ДНѕГ»ШёґЛЩ¶И
	local ship_hrec=GetChaAttr( ship_role , ATTR_HREC ) 
	return ship_hrec  
end 


function Ship_Srec_final (  cha_role ,ship_role ) 							--јЖЛгґ¬Ц»І№ёшПыєДЛЩ¶И
	local ship_srec= math.floor ( ( Ship_BSSrec ( ship_role ) * Ship_SrecSa ( cha_role ) + Ship_SrecSb ( cha_role ) ) * SrecSa ( ship_role ) + SrecSb ( ship_role ) ) 
	return ship_srec  
end 

function Ship_Srec ( ship_role ) 										--ґ¬Ц»І№ёшПыєДЛЩ¶И
	local ship_srec=GetChaAttr( ship_role , ATTR_SREC ) 
	return ship_srec  
end 




function Ship_Mspd_final (  cha_role ,ship_role ) 							--јЖЛгґ¬Ц»ТЖ¶ЇЛЩ¶И
	local ship_mspd= math.floor ( ( Ship_BSMspd ( ship_role ) * Ship_MspdSa ( cha_role ) + Ship_MspdSb ( cha_role ) ) * MspdSa ( ship_role ) + MspdSb ( ship_role ) ) 
	return ship_mspd  
end 

function Ship_Mspd ( ship_role ) 										--ґ¬Ц»ТЖ¶ЇЛЩ¶И
	local ship_mspd=GetChaAttr( ship_role , ATTR_MSPD ) 
	return ship_mspd  
end 



function Ship_Mxsp_final (  cha_role ,ship_role ) 									--ґ¬Ц»ЧоґуІ№ёшЦµ
	local ship_mxsp= math.floor ( ( Ship_BSMxsp ( ship_role ) * Ship_MxspSa ( cha_role ) + Ship_MxspSb ( cha_role ) ) * MxspSa ( ship_role ) + MxspSb ( ship_role ) ) 
	return ship_mxsp  
end 

function Ship_Mxsp ( ship_role ) 										--ґ¬Ц»ЧоґуІ№ёшЦµ
	local ship_mxsp=GetChaAttr( ship_role , ATTR_MXSP ) 
	return ship_mxsp  
end 

function Ship_Sp ( ship_role )										--ґ¬Ц»µ±З°І№ёшЦµ
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



function Dis(a,b,c,d) --[[Зу(a,b)ЦБ(c,d)ѕаАл]]--
	local x1,y1,x2,y2=a,b,c,d 
	local dis=math.pow( math.pow(x1-x2, 2) + math.pow(y1-y2, 2), 0.5) 
	return dis 
end 

function Check_Direction(a) --ЕР¶ЁЅЗЙ«ГжПт·ЅПт,xЦбµДХэ·ЅПтОЄ1ЗшЦРРДПЯЈ¬ДжК±ХлТАґООЄ2Ј¬3Ј¬4Ј¬5Ј¬6Ј¬7Ј¬8
	--LuaPrint("Enter function Check_Direction(a) --[[determine  character direction, x axis of center as 1, anticlockwise as 2, 3, 4, 5, 6, 7, 8Ј]]--") 
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
	else --LuaPrint("incorrect character angle direction".."\n" ) 
      return 
   end 

	--LuaPrint("Out function Check_Direction(a) --[[determine character direction, x axis with center as 1, anticlockwise as 2, 3, 4, 5, 6, 7, 8Ј]]--") 
	return division 
end 


function Hp_Dmg(role,dmg) --[[ИЛОпhpПыєДґ¦Ан№«КЅ]]--

	local map_name_DEFER = GetChaMapName ( role )
	local Can_Pk_Garner2 = Is_NormalMonster (role)
	local T=0.25	
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_ATKER == "07xmas2" or map_name_DEFER == "07xmas2" or map_name_ATKER == "07xmas" or map_name_DEFER == "07xmas" then
		if Can_Pk_Garner2 == 0 then
			dmg = dmg * T
		end
	end	
	
	--LuaPrint("Enter function Hp_Dmg(role,dmg) --[[hp consumption management formula]]--") 
	--Notice("dmg3="..dmg)
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
				SystemNotice ( role , "Фея применила навык защиты. Часть урона поглощена." )
			end
			dmg = dmg - PowerSheild
		end
	end

	if statelv_mfd >= 1 then 
		sp_change = statelv_mfd * 0.25 + 0.5
	--local map_name_ATKER = GetChaMapName ( a )
	local map_name_DEFER = GetChaMapName ( role )
	local Can_Pk_Garner2 = Is_NormalMonster (role)
		
		if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_ATKER == "07xmas2" or map_name_DEFER == "07xmas2"  or map_name_ATKER == "07xmas" or map_name_DEFER == "07xmas" then
	--	Notice("22")
			if Can_Pk_Garner2 == 0 then
				sp_change = statelv_mfd * 0.25 + 0.5
			end
		end
		local CheckItem_Death  = CheckItem_Death ( role )
		if CheckItem_Death == 1 then
			local Percentage_Death = Percentage_Random ( 0.5 )
			if Percentage_Death == 1 then
				sp_change =  sp_change*1.5
				SystemNotice ( role , "Использована сила набора Сета Смерти. Часть урона поглощена.")
			end
		end
		local Check_Heilong  = CheckItem_Heilong ( role )
		if Check_Heilong == 1 then
			local Percentage = Percentage_Random ( 0.5 )
			if Percentage == 1 then
				sp_change =  sp_change*1.5
				SystemNotice ( role , "Использована сила набора Черного Дракона. Эффект от навыка увеличен.")
			end
		end
		
		local CheckItem_Heilong_app  = CheckItem_Heilong_app ( role )
		if CheckItem_Heilong_app == 1 then
			local Percentage1 = Percentage_Random ( 0.5 )
			if Percentage1 == 1 then
				sp_change = sp_change*1.5
				SystemNotice ( role , "Использована сила набора Черного Дракона. Эффект от навыка увеличен.")
			end
		end
		local CheckItem_fighting = CheckItem_fighting ( role )
		local IsGarnerWiner = IsGarnerWiner(role)
		if CheckItem_fighting == 1 then
			if IsGarnerWiner == 1  then 
				local Percentage_1 = Percentage_Random ( 0.5 )
				if Percentage_1 == 1 then
					dmg = dmg*0.5
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощена." )
				end
			elseif IsGarnerWiner == 2  then
				local Percentage_2 = Percentage_Random ( 0.5 )
				if Percentage_2 == 1 then
					dmg = dmg*0.6
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощена." )
			
				end
			elseif IsGarnerWiner == 3  then
				local Percentage_3 = Percentage_Random ( 0.5 )
				if Percentage_3 == 1 then
					dmg = dmg*0.7
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощена." )
			
				end
			elseif IsGarnerWiner == 4  then
				local Percentage_4 = Percentage_Random ( 0.5 )
				if Percentage_4 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощена." )
			
				end
			elseif IsGarnerWiner == 5 then
				local Percentage_5 = Percentage_Random ( 0.3 )
				if Percentage_5 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощена." )
		
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
				SystemNotice ( role , "Получено благословение Богини. Отнято ЖЗ у противника.")
			end
		end
		if CheckItem_fighting == 1 then
			if IsGarnerWiner == 1  then 
				local Percentage_1 = Percentage_Random ( 0.5 )
				if Percentage_1 == 1 then
					dmg = dmg*0.5
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощена." )
				end
			elseif IsGarnerWiner == 2  then
				local Percentage_2 = Percentage_Random ( 0.5 )
				if Percentage_2 == 1 then
					dmg = dmg*0.6
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощена." )
			
				end
			elseif IsGarnerWiner == 3  then
				local Percentage_3 = Percentage_Random ( 0.5 )
				if Percentage_3 == 1 then
					dmg = dmg*0.7
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощена." )
			
				end
			elseif IsGarnerWiner == 4  then
				local Percentage_4 = Percentage_Random ( 0.5 )
				if Percentage_4 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощена." )
			
				end
			elseif IsGarnerWiner == 5 then
				local Percentage_5 = Percentage_Random ( 0.3 )
				if Percentage_5 == 1 then
					dmg = dmg*0.8
					SystemNotice ( role , "Использована сила Снаряжения Хаоса. Часть урона поглощена." )
		
				end
			end	
		end
	
	--local map_name_ATKER = GetChaMapName ( role )
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
	--LuaPrint("Out function Hp_Dmg(role,dmg) --[[HP consumption management formula]]--") 
end 


function Endure_Dmg ( role , dmg ) 
	local hp = Hp ( role ) - dmg 
	SetCharaAttr(hp, role, ATTR_HP ) 
end 
	

function Sp_Red(role,sp_reduce) --[[spПыєДґ¦Ан№«КЅ]]--
	--LuaPrint("Enter function Sp_Red(role,spreduce) --[[SP consumption management formula]]--") 
	local sp = Sp(role) - sp_reduce 
	--LG("sp_red", "before_sp = " , Sp(role) , " sp_reduce = " , sp_reduce , "final_sp = " , sp ,"\n" ) 
	SetCharaAttr(sp, role, ATTR_SP ) 
	--LuaPrint("Out function Sp_Red(role,spreduce) --[[SP consumption management formula]]--") 
end 

function Coefficientadjust_Steady_atk()	--[[µчХыОИ¶Ё№Ґ»чПµКэ]]--
	--LuaPrint("Enter function Coefficientadjust_Steady_atk()") 
	local steady_atk_maxreduce = 0.9 
	local steady_atk_maxreducepoint = 0.99 
	local steady_atk_maxluk=1500 
	local a = steady_atk_maxreduce / steady_atk_maxluk 
	local b = steady_atk_maxreducepoint / steady_atk_maxluk 
	--LuaPrint("Out function Coefficientadjust_Steady_atk()") 
	return a,b,steady_atk_maxreduce,steady_atk_maxreducepoint 
end 

function SetSteady_atk(a) --[[Йи¶Ё№Ґ»чБ¦ОИ¶ЁРФ]]--
	--LuaPrint("Enter function SetSteady_atk(a) --[[set attack stability]]--") 
	local x,y,m,n = Coefficientadjust_Steady_atk() --[[µчХыОИ¶Ё№Ґ»чПµКэ]]--
	local sum=1 
	local atkstep={} --[[Гїµµ№Ґ»чБ¦ХјУРВК]]--
	local atk={} --[[Гїµµ№Ґ»чХјУРЛж»ъКэЦµ·¶О§]]--
	atk[Mnatk_final(a) - 1 ] = 0 
	for i = Mnatk_final(a),  Mxatk_final(a), 1 do 
		atkstep[i] = 1 
	end 
	local maxreduce = math.min(m, Luk_final(a) * x ) 
	local reducepoint = math.min(n, Luk_final(a) * y ) * (Mxatk_final(a) - Mnatk_final(a) ) 
	if reducepoint==0 then 
		--LuaPrint("Non attacking wave".."\n") 
		atk[Mnatk_final(a)] = 1 
	return atk,sum 
	end --[[ґ¦АнОЮ№Ґ»чБ¦ІЁ¶ЇЈ¬·µ»ШЧоРЎ№Ґ»чБ¦ИЎµГёЕВКОЄ1]]--
	local steady_step = maxreduce / reducepoint 
	for i = 0, Mxatk_final(a) - Mnatk_final(a), 1 do 
		atkstep[ i + Mnatk_final(a) ] = atkstep [ i + Mnatk_final(a) ] - math.max(0, (maxreduce-i * steady_step) ) 
		sum = sum + atkstep[ i + Mnatk_final(a) ]  
		atk[ i + Mnatk_final(a) ] = sum 
	end 
	--local gatk = 0 
	--for i = Mnatk_final(a), Mxatk_final(a), 1 do 
	--ccc = (atk[i]-atk[i-1]) / sum 
	--gatk = gatk + i * ccc --[[ЖЅѕщ№Ґ»чБ¦]]--
	--end 
	--LuaPrint("Out function SetSteady_atk(a) --[[Set attack stability]]--") 
	return atk,sum 
end 
	
	
function CheckSteady_atk(a) --[[ОИ¶Ё№Ґ»чЕР¶Ё]]--
	--LuaPrint("Enter function CheckSteady_atk(a) --[[stablilze attack determination]]--") 
	local atk,sum = SetSteady_atk(a) 
	local x = math.random( 0, 10000 ) 
	local y = x * sum/10000 
	for i = Mnatk_final(a), Mxatk_final(a), 1 do 
      if y<=atk[i] then 
         return i 
      end 
   end 
	--LuaPrint ("error! No Hit Rate to Attack, return Min Attack".."\n") 
	--LuaPrint("Out function CheckSteady_atk(a) --[[stablilize attack determination]]--") 
	return Mnatk_fianl(a) 
end 
	

--	function  Skadd_Check( job , lv , tp , form_sklv)									--С§П°јјДЬЕР¶П
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
	
function Lefthand_Atk ( role , atk )												--Л«КЦОдЖчЧґМ¬                        
	local sklv = GetSkillLv ( role , STATE_FSZ ) 
	add_atk = math.floor ( atk * ( 1.2 + sklv * 0.08 ) ) 
	return add_atk 
end 

function Check_Zmyj ( role , dmg_mul )												--јмІйЦВГьТ»»чЧґМ¬
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
	
function Check_Smyb ( role )													--јмІйЙбГьТ»І«ЧґМ¬
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


--јмІвЅЗЙ«ТюЙнЧґМ¬Ј¬ТЖіэ№Ґ»чХЯµДТюЙнЧґМ¬ЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄЎЄ

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

function Atk_Raise ( rad , atker , defer )			--јјДЬ№Ґ»чМбЙэ
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
			LG ( "getshipid_err" , " get a nil shipid " ) 
		end 
	end 
	return x_role 
end 

function ALLExAttrSet ( role )				--ёщѕЭЅЗЙ«РОМ¬·Ц±рЛўРВµ±З°КфРФ
	if IsPlayer ( role ) == 0 then				--ЅЗЙ«ОЄ№ЦОп
		ExAttrSet ( role ) 
		return 
	end 
	if ChaIsBoat ( role ) == 0 then			--ЅЗЙ«РОМ¬ОЄИЛОп
		AttrRecheck ( role ) 
	else								--ЅЗЙ«РОМ¬ОЄґ¬Ц»
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

----јЖЛгґ¬Ц»іЙі¤КфРФ------------------------------------------------------------------------------
function Boat_plus_MNATk( Lv , mnatk)
	local mnatk_new = 0
	
	if Lv < 1 then
		LG("Boat_plus_MNatk","Ship level is lower than 1")
		LG("Boat_plus_MNatk","1")
		return mnatk
	end
	
	if Lv > 100 then
		LG("Boat_plus_MNatk","Ship level higher than 100")
		LG("Boat_plus_MNatk","Ship level lower than 2")

		return mnatk
	end
	
	if Lv < 60 then
		LG ( "Boat_plus_MNatk" , mnatk ) 
		mnatk_new = ( 1 + ( Lv - 20 ) / 120 ) * mnatk
		LG("Boat_plus_MNatk","Ship level smaller than 3")

		return mnatk_new
	end
	
	if Lv >=60 then
		mnatk_new = ( 1 + ( 60 - 20 ) / 120 ) * mnatk + ( Lv - 60 ) * 5
		LG("Boat_plus_MNatk","Ship level lower than 4")

		return mnatk_new
	end
	

end

function Boat_plus_MXATk( Lv , mxatk)
	local mxatk_new = 0
	
	if Lv < 1 then
		LG("Boat_plus_MXatk","Ship level is lower than 1")
		return mxatk_new
	end
	
	if Lv > 100 then
		LG("Boat_plus_MXatk","Ship level higher than 100")
		return mxatk_new
	end
	
	if Lv < 60 then
		mxatk_new = ( 1 + ( Lv - 20 ) / 120 ) * mxatk
		return mxatk_new
	end
	
	if Lv >=60 then
		mxatk_new = ( 1 + ( 60 - 20 ) / 120 ) * mxatk + ( Lv - 60 ) * 5
		return mxatk_new
	end
	

end

function Boat_plus_def ( Lv , def )
	local def_new = 0
	
	if  Lv < 1 then
		LG("Boat_plus_def","Ship level is lower than 1")
		return def
	end
	
	if Lv > 100 then
		LG("Boat_plus_def","Ship level higher than 100")
		return def
	end
	
	if Lv < 60 then
		def_new = ( 1 + ( Lv - 20 ) / 120 ) * def
		LG ( "Boat_plus_def","def_new1 = " ,  def_new ) 
		return def_new

	end
	
	if Lv >= 60 then
		def_new = ( 1 + ( 60 - 20 ) / 120 ) * def + ( Lv - 60 ) * 3
		LG ( "Boat_plus_def","def_new2 = " ,  def_new ) 
		return def_new
	end
	

end

function Boat_plus_Mxhp ( Lv , Mxhp )
	local Mxhp_new = 0
	
	if Lv < 1 then
		LG("Boat_plus_Mxhp","Ship level is lower than 1")
		return Mxhp
	end
	
	if Lv > 100 then
		LG("Boat_plus_Mxhp","Ship level higher than 100")
		return Mxhp
	end
	
	if Lv < 60 then
		Mxhp_new = ( 1 + ( Lv - 20 ) / 120 ) * Mxhp
		LG ( "Boat_plus_def","def_new2 = " ,  Mxhp_new ) 
		return Mxhp_new
	end
	
	if Lv >= 60 then
		Mxhp_new = ( 1 + ( 60 - 20 ) / 120 ) * Mxhp + (Lv - 60 )  * 20
		LG ( "Boat_plus_def","def_new2 = " ,  Mxhp_new ) 
		return Mxhp_new
	end
end

function Boat_plus_Mspd ( Lv , Mspd )
	local Mspd_new = 0

	if Lv < 1 then
		LG("Boat_plus_Mspd","Ship level is lower than 1")
		return Mspd
	end
	
	if Lv >100 then
		LG("Boat_plus_Mspd","Ship level higher than 100")
		return Mspd
	end
	
	if Lv < 60 then
		Mspd_new = ( 1 + ( Lv -30) / 300 ) * Mspd
		return Mspd_new
	end

	if Lv >=60 then
		Mspd_new = ( 1 + ( 60 -30) / 300 ) * Mspd
		return Mspd_new
	end

end

--ИЎЅЗЙ«№«»б±аєЕ
function get_cha_guild_id(cha) 
    local ply_cha = CheckChaRole(cha) 
    if ply_cha == 1 then --НжјТЅЗЙ«
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

--ЕР¶ПЅЗЙ«cha1Ј¬cha2КЗ·сКфУЪ¶УУСЎЈ
--КЗ¶УУСФт·µ»Ш1Ј¬·сФт·µ»Ш0
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

--ЕР¶ПЅЗЙ«cha2КЗ·сКЗcha1µДУС·ЅЎЈ
--КЗУС·ЅФт·µ»Ш1Ј¬·сФт·µ»Ш0
function is_friend(cha1, cha2) 
--	SystemNotice ( cha1, "transferis_friend" ) 
    local friend_target = 1 
    local Map_type = GetChaMapType( cha1 )
    if CheckChaRole( cha1 ) == 0 and Map_type ~= 2 then			--Из№ыcha1ОЄ№ЦОпЗТІ»ФЪ№¤»бµШНјЦРЈ¬Фтcha2ОЄ№ЦОпОЄУС·ЅЈ¬cha2ОЄИЛОЄµР·Ѕ
	if CheckChaRole( cha2 ) == 0 then							
		return 1 
	else 
		return 0 
	end 

    end
	local gm = GetGmLv(cha1)
	if gm == 99 then
		--return 0
	end
--		SystemNotice ( cha1 , "1" ) 
--		SystemNotice ( cha1 , "Map_type ="..Map_type ) 
--	    if Map_type == 4 then									--ГФ№¬PKµШНјУС·ЅЕР¶П
--		local team = is_teammate(cha1, cha2) 
--		if team == 1 then 
--			return 1 
--		end 
--	    else
--		return 0
--	    end
		if Map_type == 1 then 
			if CheckChaRole ( cha1 ) == 1 then 
					if CheckChaRole( cha2 ) == 0 then							
						return 0 
					else 
						return 1 
					end 

			end 
		end 

		if Map_type == 4 then									--ГФ№¬PKµШНјУС·ЅЕР¶П
			if Is_NormalMonster (cha1) == 1 then						--Из№ыКЗЖХНЁ№ЦОпФтУл№ЦОпКЗУС·Ѕ
				if Is_NormalMonster (cha2) == 1 then
					return 1
				end 
			end 
			local team = is_teammate(cha1,cha2) 
			if team == 1 then 
				return 1 
			else 
				local guild_id1, guild_id2 
				guild_id1 = get_cha_guild_id(cha1) 
				guild_id2 = get_cha_guild_id(cha2) 
				if guild_id1 ~= 0 and guild_id2 ~= 0 and guild_id1 == guild_id2 then 
					return 1  
				else
					return 0 
				end
			end
			
				
			--local team = is_teammate(cha1,cha2) 
			--		if team == 1 then 
			--			return 1 
			--		else 
			--			return 0 
			--		end 
		end 

--	        SystemNotice ( cha1 , "2" ) 

	    if  Map_type ==3 then									--КЗ¶УОйХЅµШНјФт¶УУСОЄУС·Ѕ
--		SystemNotice ( cha1 , "1" ) 
		    local team = is_teammate(cha1, cha2) 
--		    		SystemNotice ( cha1 , "2" ) 

		    if team == 1 then 
--		    		SystemNotice ( cha1 , "3" ) 
		        return 1 
		    else 
			return 0 
		    end
		   
	    end

	    if cha1 == 0 or cha2 == 0 then							--ЦёХлОЄїХ
	        return 0 
	    end 
--		SystemNotice ( cha1 , "3" ) 
	    if Map_type == 2 then									--№¤»бPKµШНјЕР¶П
		if Is_NormalMonster (cha1) == 1 then						--Из№ыКЗЖХНЁ№ЦОпФтУл№ЦОпКЗУС·Ѕ
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
	    if Map_type == 5 then									--№¤»бPKµШНјЕР¶П
--		if Is_NormalMonster (cha1) == 1 then						--Из№ыКЗЖХНЁ№ЦОпФтУл№ЦОпКЗУС·Ѕ
--			if Is_NormalMonster (cha2) == 1then 
--				return 1 
--			end 
--		end 
		local guild_side_1, guild_side_2 
		guild_side_1 = GetChaSideID(cha1) 
		guild_side_2 = GetChaSideID(cha2) 
		--if guild_side_1 <= 100 and guild_side_1 > 0 and guild_side_2 <= 100 and guild_side_2 > 0 then
		if guild_side_1 == guild_side_2 then
			return 1 
		--elseif
		   --guild_side_1 > 100 and guild_side_1 <= 200 and guild_side_2 > 100 and guild_side_2 <= 200 then
			--return 1
	        else
		        return 0
		end

	    end 
--		SystemNotice ( cha1 , "4" ) 

	    return friend_target 
 end 
--	    local is_plycha1 = CheckChaRole(cha1) 
--	    local is_plycha2 = CheckChaRole(cha2) 
--	    local can_PK1 = CheckChaPKState(cha1) 
--	    if can_PK1 == 0 then 
--	        if is_plycha1 ~= 0 and is_plycha2 ~= 0 then 
--	            return 1 
--	        end 
--	        if is_plycha1 == 0 and is_plycha2 == 0 then 
--	            return 1 
--	        end 
--	    end 
  --  end
--    return 0
-- end 

--ЖХНЁ№ЦЕР¶П
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

--јмІй№ЦОпКЗ·сТСЛА»тТСІ»ґжФЪ
function CheckMonsterDead ( role )
	if role == nil then
		return 1
	end
	if Hp(role) <= 0 then
		return 1
	end
	return 0
end

--јмІвјјДЬГьЦРіМ¶И
function ReCheck_Skill_Dmg ( MaxDmg , MinDmg , Ran )

	local a = 0
	a = Percentage_Random ( Ran / 100)
	if a == 1 then
	
		return MaxDmg
	else
	
		return MinDmg
	end
end

--јмІйPKЛ«·ЅµИј¶Іоѕа
function ReCheck_PK_Lv ( ATKER , DEFER )
	local Lv_atker = Lv ( ATKER )
	local Lv_defer = Lv ( DEFER )
	return Lv_atker - Lv_defer
end



--PKИЛОпЛАНцјмІв
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
		-- Равные уровни
		if Lv_ATKER == Lv_DEFER then
			ATKER_Get_chaos = 5
			DEFER_Get_chaos = -3
			SystemNotice ( ATKER , "Вы побеждаете противника и получаете 5 очков хаоса!" )
			SystemNotice ( DEFER , "Вас победил противник. Потеряно 3 очка хаоса!")
		end
		-- Уровень атакующего больше на 5
		if Lv_dif >= 1 and Lv_dif <= 5 then
			ATKER_Get_chaos = 5
			DEFER_Get_chaos = -3
			SystemNotice ( ATKER , "Вы побеждаете противника и получаете 5 очков хаоса!" )
			SystemNotice ( DEFER , "Вас победил противник. Потеряно 3 очка хаоса!")
		end
		-- Уровень атакующего больше на 10
		if Lv_dif >= 6 and Lv_dif <= 10 then
			ATKER_Get_chaos = 3
			DEFER_Get_chaos = -2
			SystemNotice ( ATKER , "Вы побеждаете противника и получаете 3 очка хаоса!" )
			SystemNotice ( DEFER , "Вас победил противник. Потеряно 2 очка хаоса!")
		end
		-- Уровень атакующего больше на 15
		if Lv_dif >= 11 and Lv_dif <= 15 then
			ATKER_Get_chaos = 2
			DEFER_Get_chaos = -1
			SystemNotice ( ATKER , "Вы побеждаете слабого противника и получаете 2 очка хаоса!" )
			SystemNotice ( DEFER , "Вас победил сильный противник. Потеряно 1 очко хаоса!")
		end
		-- Уровень атакующего больше 16
		if Lv_dif >= 16 then
			ATKER_Get_chaos = 1
			DEFER_Get_chaos = 0
			SystemNotice ( ATKER , "Вы побеждаете очень слабого противника и получаете 1 очка хаоса!" )
			SystemNotice ( DEFER , "Вас победил очень сильный противник. Хаос очки не теряются!")
		end
		-- Уровень атакующего меньше на 5
		if Lv_dif <= -1 and Lv_dif >= -5 then
			ATKER_Get_chaos = 5
			DEFER_Get_chaos = -3
			SystemNotice ( ATKER , "Вы побеждаете противника и получаете 3 очка хаоса!" )
			SystemNotice ( DEFER , "Вас победил противник. Потеряно 2 очка хаоса!")
		end
		-- Уровень атакующего меньше на 10
		if Lv_dif <= -6 and Lv_dif >= -10 then
			ATKER_Get_chaos = 7
			DEFER_Get_chaos = -4
			SystemNotice ( ATKER , "Вы побеждаете противника и получаете 3 очка хаоса!" )
			SystemNotice ( DEFER , "Вас победил противник. Потеряно 2 очка хаоса!")
		end
		-- Уровень атакующего меньше на 15
		if Lv_dif <= -11 and Lv_dif >= -15 then
			ATKER_Get_chaos = 9
			DEFER_Get_chaos = -5
			SystemNotice ( ATKER , "Вы побеждаете сильного противника и получаете 9 очков хаоса!" )
			SystemNotice ( DEFER , "Вас победил слабый противник. Потеряно 5 очков хаоса!")
		end
		-- Уровень атакующего меньше 16
		if Lv_dif <= -16 then
			ATKER_Get_chaos = 10
			DEFER_Get_chaos = -7
			SystemNotice ( ATKER , "Вы побеждаете очень сильного противника и получаете 10 очков хаоса!" )
			SystemNotice ( DEFER , "Вас победил очень слабый противник. Потеряно 7 очков хаоса!")
		end

--		local RongyuTpye = ITEMATTR_VAL_STR
--		local Kill_Num = 1
--		local Kill_attr = ITEMATTR_VAL_AGI
--		local Killed_attr = ITEMATTR_VAL_DEX
		local ATKER_medal = GetChaItem2 ( ATKER , 2 , 3849 )
		local DEFER_medal = GetChaItem2 ( DEFER , 2 , 3849 )
		local AtkerPoint = GetItemAttr ( ATKER_medal , ITEMATTR_MAXENERGY )
		local DeferPoint = GetItemAttr ( DEFER_medal , ITEMATTR_MAXENERGY )
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
	
	end
	
	
	if map_name_ATKER == "garner2" or map_name_DEFER == "garner2" or map_name_ATKER == "07xmas2" or map_name_DEFER == "07xmas2" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "["..def_name.."] терпит поражение от ["..atk_name.."]"
		Notice ( Notice_all )
	end

	if map_name_ATKER == "heilong" or map_name_DEFER == "heilong" or map_name_ATKER == "heilong2" or map_name_DEFER == "heilong2" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "В Логовое Черного Дракона: ["..def_name.."] терпит поражение от ["..atk_name.."]"
		Notice ( Notice_all )
	end

	if map_name_ATKER == "jialebi" or map_name_DEFER == "jialebi" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "Йо-хо-хо, Карибские острова опасное место: ["..def_name.."] терпит поражение от ["..atk_name.."]!"
		Notice ( Notice_all )
	end
	
	if map_name_ATKER == "teampk" or map_name_DEFER == "teampk" then
		local ATKER_RYZ = GetChaItem2 ( ATKER , 2 , 3849 )
		local DEFER_RYZ = GetChaItem2 ( DEFER , 2 , 3849 )
		local Lv_ATKER = Lv( ATKER )
		local Lv_DEFER = Lv( DEFER )
		local Lv_dif = Lv_ATKER - Lv_DEFER
		if Lv_dif < 10 and Lv_dif > -5 then
			ATKER_Get_Ry = 1
			DEFER_Get_Ry = -1
			SystemNotice ( ATKER ,"Вы победили противника. Получено очков чести: "..ATKER_Get_Ry )
			SystemNotice ( DEFER ,"Вы потерпели поражение. Потеряно очков чести: "..ATKER_Get_Ry )
		end
		
		if Lv_dif >= 10 then
			ATKER_Get_Ry = 0
			DEFER_Get_Ry = 0
			SystemNotice ( ATKER , "Уровень побежденного противника слишком мал. Вы не получаете очков чести" )
		end
		
		if Lv_dif < -5 then
			ATKER_Get_Ry = 2
			DEFER_Get_Ry = -2
			SystemNotice ( ATKER ,"Вы победили сильного противника и получаете "..ATKER_Get_Ry.." очков чести" )
			SystemNotice ( DEFER ,"Вы убиты слабым игроком и теряете "..ATKER_Get_Ry.." очков чести" )
		end

		local RongyuTpye = ITEMATTR_VAL_STR
		local Kill_Num = 1
		local Kill_attr = ITEMATTR_VAL_AGI
		local Killed_attr = ITEMATTR_VAL_DEX
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local map_copy = GetChaMapCopy ( ATKER )
		local Notice_map = "["..def_name.."] терпит поражение от ["..atk_name.."]"
--		SystemNotice( ATKER ,"Honor point gained")
		Add_ItemAttr_RYZ ( ATKER , ATKER_RYZ , RongyuTpye , ATKER_Get_Ry )
--		SystemNotice( ATKER , "Increases Kill count by")
		Add_ItemAttr_RYZ ( ATKER , ATKER_RYZ , Kill_attr , Kill_Num )
--		SystemNotice( DEFER ,"was killed. Honor points deducted by")
		Add_ItemAttr_RYZ ( DEFER ,DEFER_RYZ , RongyuTpye , DEFER_Get_Ry )
--		SystemNotice( DEFER , "Defeat Count increases by")	
		Add_ItemAttr_RYZ ( DEFER ,DEFER_RYZ , Killed_attr , Kill_Num )
		MapCopyNotice ( map_copy , Notice_map )

	end
	
	if map_name_ATKER == "secretgarden" or map_name_DEFER == "secretgarden" then
		local atk_name = GetChaDefaultName ( ATKER )
		local def_name = GetChaDefaultName ( DEFER )
		local Notice_all = "["..def_name.."] терпит поражение от ["..atk_name.."]"
		Notice ( Notice_all )
	end


	if map_name_ATKER == "guildwar" or map_name_DEFER == "guildwar" then

		local ATKER = TurnToCha ( ATKER )
		local DEFER = TurnToCha ( DEFER )
		--local Cha = TurnToCha(role) 
		local Num_shengsi_1= CheckBagItem(DEFER,2382)
                --Notice("Num_shengsi"..Num_shengsi)
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
		SystemNotice ( ATKER , "Цель не относится ни к Флоту, ни к Пиратам" )
	   end
	end
     end

     if map_name_ATKER == "guildwar2" or map_name_DEFER == "guildwar2" then

		local ATKER = TurnToCha ( ATKER )
		local DEFER = TurnToCha ( DEFER )
		--local Cha = TurnToCha(role) 
		local Num_shengsi_2= CheckBagItem(DEFER,2382)
                --Notice("Num_shengsi"..Num_shengsi)
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
			SystemNotice ( ATKER , "Цель не относится ни к Флоту, ни к Пиратам" )
	   end
	end
     end

	------
	-- Убийство в данжах
	------

    local C_Map = 0
	for C_Map = 0 , MGPK_MapNameNum , 1 do
	    if  map_name_ATKER == MGPK_MapName[C_Map] then
	    
			local atk_name = GetChaDefaultName ( ATKER )
			local def_name = GetChaDefaultName ( DEFER )
			local map_copy = GetChaMapCopy ( ATKER )
			local Notice_map = "Игрок ["..def_name.."] терпит поражение от ["..atk_name.."]"
			
			MapCopyNotice ( map_copy , Notice_map )
			
			ATKER = TurnToCha ( ATKER )
			DEFER = TurnToCha ( DEFER )
			
			--local Have_TSWW = CheckBagItem( DEFER , 3846 )
			
			--if Have_TSWW <= 0 then
			--	Dead_Punish_ItemURE ( DEFER )
			--	MGPK_Dead_Punish_Exp ( DEFER )
			--else
			--	local j = DelBagItem( DEFER , 3846 , 1 )
			--	if j == 0 then
			--		LG ( "NewItem" , "Ошибка при удалении Куклы Вуду" )
			--	else
			--		SystemNotice ( DEFER , "Кукла Вуду спасла тебя от потери опыта" )
			--	end
			--end

	    end
	end
	
--	PK_Dead_Punish_ItemURE ( DEFER )

end

--ГФ№¬PKЛАНцѕ­СйіН·Ј
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
		SystemNotice (dead , "Штраф за смерть. Потеряно опыта: "..exp_red_80 ) 
	else 
		SystemNotice (dead , "Штраф за смерть. Потеряно опыта: "..exp_red ) 
	end
	exp = Exp(dead) - exp_red
	SetChaAttrI( dead , ATTR_CEXP , exp ) 
	local name = GetChaDefaultName ( dead )
	LG ( "PKdie_exp" , "Character Name" , name , "Current Lv= ", lv , "Death EXP penalty= " , exp_red )
end 



--ФцјУИЩУюЦ¤КфРФ
function Add_ItemAttr_RYZ ( Cha_role ,role , attrtype , Num )
	local i = 0
	local attr_num = GetItemAttr ( role , attrtype )
--	SystemNotice ( Cha_role , "Operation antenumber value"..attr_num )
--	SystemNotice ( Cha_role , "Operation Value"..Num )
--	SystemNotice ( Cha_role , "Operation attribute"..attrtype )
	attr_num = attr_num + Num
	i = SetItemAttr ( role ,attrtype , attr_num )
	local attr_num_1 = GetItemAttr ( role , attrtype )
--	SystemNotice ( Cha_role , "value after operation"..attr_num_1 )
	if i == 0 then
		LG("RYZ_PK","add Honor attribute failed")
	end
	
end


--¶БИЎИЩУюЦ¤КфРФ

--ІОјУіЎКэ
--ІОКэЈєЅЗЙ«ЦёХл
--·µ»ШЦµЈєІОИьіЎКэ
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

--К¤АыіЎКэ
--ІОКэЈєЅЗЙ«ЦёХл
--·µ»ШЦµЈєК¤АыіЎКэ
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

--МнјУИЩУюЦµ

function AddYongYuZhi( role ,  value )
	
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		SystemNotice ( role , "У вас нет Медали Отваги" )
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
		SystemNotice ( role , "Получено "..value.." очков чести" )
	end
	if value < 0 then
		local a = -1 * value
		SystemNotice ( role , "Потеряно "..a.." очков чести" )
	end

	SynChaKitbag ( role , 7 )
	return 1
end



--ёД±дЧй¶У№±ПЧµгКэ
function TakeZuDuiGongXianDu( role , value )
	
	local RYZ_Num = 0
	RYZ_Num = CheckBagItem( role,3849 )

	if RYZ_Num <= 0 then
		SystemNotice ( role , "У вас нет Медали Отваги" )
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
		SystemNotice ( role , "Потеряно "..value.." очков опыта отряда" )
	end
	if value > 0 then
		SystemNotice ( role ,"Получено "..a.." очков опыта отряда" )
		LG("RYZ_Take_Zdgx" , " uses Team Contribution points, deducts "..value.."point")
	end
	SynChaKitbag ( role , 7 )
	return 1
end



--ЕР¶ПКЗ·сУРЧг№»µДЧй¶У№±ПЧµгКэ
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

--ЕР¶ПИЩУюЦµКЗ·с·ыєПМхјю
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
		LG("RYZ_PK","determine Honor character error")
	end


end

--Чй¶УК±МнјУЧй¶У№±ПЧµгКэ
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
	
		SystemNotice ( role ,"Получено "..add_num.." очков опыта отряда")
	end
end

	

--ДНѕГПµНі--------------------------------------------

--їЫіэ№Ґ»чХЯОдЖчДНѕГ

function Take_Atk_ItemURE ( role )
--	SystemNotice( role ,"deducts attacker weapon durability")
	local Atk = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if Atk == 1 and boat == 0 then					---№ЦєНґ¬І»їЫ
--		SystemNotice ( role ,"starts to deduct")
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
--			SystemNotice (role , "Left hand")
			local a = 0.03
			local b = Percentage_Random (a)
			
			if b == 1 and Item1_Type == 1 then
--				SystemNotice (role , "start to deduct left hand")
				Item_URE = GetItemAttr ( Item_1 , ITEMATTR_URE )
				if Item_URE < 50 then
					Take_Num = 0
				end

				Item_URE = Item_URE - Take_Num
				
				

				i = SetItemAttr ( Item_1 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","Weapon imbue failed")
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
--			SystemNotice ( role ,"Right hand")
			local a = 0.03
			local b = Percentage_Random (a)
			if b == 1 and Item2_Type == 1 then
--				SystemNotice(role ,"start to deduct right hand")
				Item_URE = GetItemAttr ( Item_2 , ITEMATTR_URE )

				if Item_URE < 50 then
					Take_Num = 0
				end

				Item_URE = Item_URE - Take_Num
				
				

				i = SetItemAttr ( Item_2 , ITEMATTR_URE , Item_URE )
				if i == 0 then
					LG("Item_URE","Weapon imbue failed")
				end
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 9 , 0 )
				end
			end
		end
	end


	
end

--їЫіэКЬ»чХЯ·АѕЯДНѕГ

function Take_Def_ItemURE ( role )
	local def = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	if def == 1 and boat == 0 then						--№ЦєНґ¬І»їЫ
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
					LG("Item_URE","add armor attribute failed")
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
					LG("Item_URE","add armor attribute failed")
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
					LG("Item_URE","add armor attribute failed")
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
					LG("Item_URE","add armor attribute failed")
				end
				
				if Item_URE < 50 and Take_Num ~= 0 then
					SetChaEquipValid ( role , 4 , 0 )
				end
			end
		end
	end
end

--ХэіЈЛАНцК±їЫіэДНѕГ
function Dead_Punish_ItemURE ( role )
	local Player = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	local Punish = 0.05
	
	Dead_Punish_Item_Num = 5							--ТЄїЫіэµДЧ°±ёО»ЦГ
	
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

	if Player == 1 and boat == 0 then						--№ЦєНґ¬І»їЫ
		local Item_URE = 0
		local Item_MAXURE = 0
		local Take_Num = 0
		local i = 0
		local j = 0
		local k = 0								--Ч°±ёУРР§±кјЗ
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
		SystemNotice ( role , "Смерть: потеряно 5% прочности снаряжения" )
	end

end

--PKК±ЛАНцїЫіэДНѕГ

function PK_Dead_Punish_ItemURE ( role )
	local Player = IsPlayer ( role )
	local boat = ChaIsBoat ( role )
	local Punish = 0.05
	PK_Dead_Punish_Item_Num = 5							--ТЄїЫіэµДЧ°±ёО»ЦГ
	
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
	if Player == 1 and boat == 0 then						--№ЦєНґ¬І»їЫ
		local Item_URE = 0
		local Item_MAXURE = 0
		local Take_Num = 0
		local i = 0
		local j = 0
		local k = 0								--Ч°±ёУРР§±кјЗ
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
						LG("Item_URE","Normal death deducts attribute failed"..j)
					end
					
					
					
					if k == 1 and Item_URE == 49 then
							SetChaEquipValid ( role , Dead_Punish_Item_WZ [j] , 0 )
					end
				end
				
			end
		end
		SystemNotice ( role , "Смерть: потеряно 5% прочности снаряжения" )
	end
end



--јмІвµАѕЯКЗ·сїЙРЮАн
function can_repair_item ( role_repair , role_want_repair , Item )
	local Check = 0
	local Sklv = 1
	Check = can_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
	return Check

end

--јмІвКЗ·сїЙРЮАнЦчєЇКэ

function can_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
	--	SystemNotice( role_want_repair , "Starts can_repair_item")
	local re_type = IsPlayer ( role_repair )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Money_Need = get_item_repair_money ( Item )
	local Money_Have = GetChaAttr ( role_want_repair , ATTR_GD )
	
	
--	SystemNotice ( role_want_repair , "Item_MAXURE= "..Item_MAXURE)
--	SystemNotice ( role_want_repair , "Item_URE= "..Item_URE)

--	SystemNotice ( role_want_repair , "requires gold"..Money_Need )
	
	if Item_MAXURE <= 2500 then
		SystemNotice( role_want_repair , "Этот предмет невозможно отремонтировать" )
		return 0
	end
	if Item_MAXURE == Item_URE then								--ДНѕГМ«µНЈ¬ДНѕГОґПыєДІ»ДЬРЮ
		SystemNotice( role_want_repair , "Этот предмет не нуждается в ремонте")
		return 0
	end

	if Money_Have < Money_Need then								--Г»З®І»ДЬРЮ
		SystemNotice( role_want_repair , "У вас не хватает золота для ремонта")
		return 0
	end

--	if re_type == 1 then
--		LG("Item_URE","Repair is human?")
--		return 0
--	end
	
	local i = 0
	i = Check_Repair_ItemType ( Item )
	if i == 1 then
		return 1
	end
	SystemNotice( role_want_repair , "Неремонтируемый тип предмета")

	return 0
end


--ИЎµАѕЯРЮАн·СУГ
function get_item_repair_money ( Item )
	local Money = 0
	local Sklv = 1
	Money = get_item_repair_moneyLua ( Item , Sklv )
	
	if Money < 1 then
		Money = 1
	end

	return Money
	
end

--ИЎµАѕЯРЮАн·СУГЦчєЇКэ
function get_item_repair_moneyLua ( Item , Sklv )
	local Item_Lv = GetItemLv ( Item )
	local RepairPoint = math.floor ( math.pow(( Item_Lv / 10 ) , 1.7 )) - 1
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )

	local URE_repair = math.floor ( Item_MAXURE / 50 ) - math.floor ( Item_URE / 50 )
	local Money_Need = math.max ( ( URE_repair * RepairPoint ) , 1 )
	return Money_Need
end

--їЄКјРЮАнµАѕЯ
function begin_repair_item ( role_repair , role_want_repair , Item )
	local Sklv = 1
	begin_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
end

--їЄКјРЮАнЦчєЇКэ
function begin_repair_itemLua ( role_repair , role_want_repair , Item , Sklv )
--	SystemNotice( role_want_repair , "Start repairing items")
	local Item_MAXURE = GetItemAttr ( Item , ITEMATTR_MAXURE )
	local Item_URE = GetItemAttr ( Item , ITEMATTR_URE )
	local Money_Need = get_item_repair_money ( Item )
	local Money_Have = GetChaAttr ( role_want_repair , ATTR_GD )
--	SystemNotice ( role_want_repair , "Money_Have = "..Money_Have)
--	SystemNotice ( role_want_repair , "deducts gold "..Money_Need)
	Money_Have = Money_Have - Money_Need
	SetCharaAttr ( Money_Have , role_want_repair , ATTR_GD )
	ALLExAttrSet( role_want_repair )
--	SystemNotice ( role_want_repair , "Gold Deducted: " )
--	local a = 1
--	local b = 1
	local i = 0
	local j = 0
	
	
--	local URE_NeedRepair = ( Item_MAXURE - Item_URE ) - ( Item_MAXURE * 0.05 )
	
--	if URE_NeedRepair <= 0 then
--		b = 1
--	end

--	if b == 1 then
	Item_URE = Item_MAXURE
	i = SetItemAttr ( Item , ITEMATTR_URE , Item_URE )

	if i == 0 then 
		LG("Item_URE","Repair durability failed")
	end
	SystemNotice( role_want_repair ,"Ремонт завершен" )
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


--ЕР¶ПКЗ·сОЄїЙРЮАнµДЧ°±ёАаРН
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


-----ѕ«Б¶ПµНі32О»КэЧЦІрЅв----------------

--¶БИЎІї·Ц
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


--РґИлІї·Ц

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



--ѕ«Б¶ДЪИЭіхКј»Ї--

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
	
--	if k <= 1 then
--		k = 1
--	end

	if Item_Type == 49 or Item_Type == 50 then
		k = 0
	end

	Num = SetNum_Part1 ( Num , k )
	  
--	Notice(Num)
	i = SetItemForgeParam ( item , 1 , Num )
	if i == 0 then
		LG( "Creat_Item" , "set forging content failed" )
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


--№«»бѕє±кПа№ШДЪИЭ

--ИЎДїЗ°±ёХЅ№«»бГыґО

function GetFightGuildLevel()
--	±ИЅПhourЈ¬·µ»Шlevel
--	ФЪґЛІеИлhour±ИЅПЈ¬И·¶ЁGuildLevel
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


--ИЎМфХЅЛ«·ЅµД№¤»б±аєЕ
--ІОКэЈєМфХЅµИј¶
--·µ»ШЦµЈєАЮЦч№¤»б±аєЕЈ¬МфХЅ№¤»б·Ѕ№¤»б±аєЕ
function GetFightGuildID( GuildLevel )
	local RedSide = 0
	local BlueSide = 0
	RedSide , BlueSide = GetChallengeGuildID ( GuildLevel )
	return RedSide,BlueSide
end

--ИЎПЦФЪdayјё
function GetNowWeek ( )
	local Now_Week = os.date("%w")
	local Now_WeekNum = tonumber(Now_Week)
	return Now_WeekNum
end

--ИЎПЦФЪКЗјёµг
function GetNowTime ( )
	local Now_Time = os.date("%H")
	local NowTimeNum = tonumber(Now_Time)
	return NowTimeNum
end


--ДкКЮМЧЧ°ЕР¶П

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

--Проверка бд сета
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

--Проверка бд сета в аппарели
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


---јмІвєЈµБМЧЧ°
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

--Проверка деса
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

--Проверка хаос сета
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
---ЛгГьПµНі-------------------------------------------------

---ЗуІЖ---------------------

function Suanming_Money ( role )
	local a = CheckSuanmingType ( role )			--јмІвійµГµДКІГґЗ©
	if a == 1 then
		SystemNotice ( role , "Удача улыбнулась тебе! Ты получаешь лучший лот!" )
		ShangShangQian_Money ( role )
	elseif a == 2 then
		SystemNotice ( role , "Тебе сегодня везет. Ты получаешь хороший лот." )
		ShangQian_Money ( role )
	elseif a == 3 then
		ZhongQian_Money ( role )
		--SystemNotice ( role , "Просто возьми эти деньги." )
	elseif a == 4 then
		SystemNotice ( role , "Удача сегодня не на твоей стороне. Тебе достается плохой лот!" )
		XiaQian_Money ( role )
	elseif a == 5 then
		SystemNotice ( role , "Нет, сегодня точно не твой день! Это самый худший лот!" )
		XiaXiaQian_Money ( role )
	end
end

--Счастливый жребий
function Suanming_Work ( role )
	local a = CheckSuanmingType ( role )
	if a == 1 then
		SystemNotice ( role , "Удача улыбнулась тебе! Ты получаешь лучший лот!" )
		ShangShangQian_Work ( role )
	elseif a == 2 then
		SystemNotice ( role , "Тебе сегодня везет. Ты получаешь хороший лот." )
		ShangQian_Work ( role )
	elseif a == 3 then
		ZhongQian_Work ( role )
--		SystemNotice ( role , "Today looks good. Nothing special has happened" )
	elseif a == 4 then
		SystemNotice ( role , "Удача сегодня не на твоей стороне. Тебе достается плохой лот!" )
		XiaQian_Work ( role )
	elseif a == 5 then
		SystemNotice ( role , "Нет, сегодня точно не твой день! Это самый худший лот!" )
		XiaXiaQian_Work ( role )
	end
end


--јмІвійµГµДКІГґЗ©

function CheckSuanmingType ( role )
	local a = math.random ( 1 , 100 )
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

--ІЖФЛЙПЙПЗ©

function ShangShangQian_Money ( role )
	local a = math.random ( 1 , 100 )
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
		SystemNotice ( role , "Получено "..GiveMoneyNum_Notice.."% от имеющегося золота" )
		QianAddMoney ( role , 1 , GiveMoneyNum )							----ёшЗ®Ј¬1ОЄ°ґ±ИАэЈ¬2ОЄ°ґ№М¶ЁКэЦµ
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
		SystemNotice ( role , "Богиня Кара благославляет тебя. Получено "..time_Bei.." минут удачи при выпадении предметов" )
	elseif b == 3 then
		GiveItem ( role , 0 , 1092 , 1 , 0 )							---ёш±¦Нј
	end
end

--ІЖФЛЙПЗ©

function ShangQian_Money ( role )
	local a = math.random ( 1 , 100 )
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
		SystemNotice ( role , "Получено "..GiveMoneyNum_Notice.."% от имеющегося золота" )
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
		SystemNotice ( role , "Звон монет! Кто же это мог быть? Удача!" )
	end
end

--ІЖФЛЦРЗ©

function ZhongQian_Money ( role )
	SystemNotice ( role , "Сегодня удача не улыбнулась тебе..." )
end


--ІЖФЛПВЗ©

function XiaQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
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
		local Give_Money = math.random ( 100 , 5000 )
		Give_Money = Give_Money * -1
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local GiveMoneyNum = 0.001 * math.random ( 1 , 9 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "Проиграно "..GiveMoneyNum_Notice.."% золота" )
		GiveMoneyNum = GiveMoneyNum * -1
		QianAddMoney ( role , 1 , GiveMoneyNum )
	end
	
end

--ІЖФЛПВПВЗ©

function XiaXiaQian_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 20
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
		local Give_Money = math.random ( 10000 , 30000 )
		Give_Money = Give_Money * -1
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local GiveMoneyNum = 0.01 * math.random ( 1 , 2 )
		local GiveMoneyNum_Notice = GiveMoneyNum * 100
		SystemNotice ( role , "Проиграно "..GiveMoneyNum_Notice.."% золота" )
		GiveMoneyNum = GiveMoneyNum * -1
		QianAddMoney ( role , 1 , GiveMoneyNum )
	end
end

--Счастливый жребий
function ShangShangQian_Work ( role )
	local lv = Lv ( role )
	local a = math.random ( 1 , 100 )
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
			SystemNotice ( role , "Проиграно "..GiveExpNum_Notice.."% опыта" )
			QianAddExp ( role , GiveExpNum , 1 )
		end
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBJYGZ , statelv , statetime )
		SystemNotice ( role , "Богиня Кара благославляет тебя. Получено "..time_Bei.." минут удвоенного опыта" )
	elseif b == 3 then
		QianAddState ( role , 1 )
	end
end

--Счастливый жребий
function ShangQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 100
--	qian [1] = 40
--	qian [2] = 60
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
			SystemNotice(role,"Удача благовалит тебе! Но к сожалению игрокам 100 уровня опыт не начисляется!")
		else
			local GiveExpNum = Lv_role * math.random ( 50 , 500 )
			SystemNotice(role,"Удача благовалит тебе!")
			QianAddExp ( role , GiveExpNum , 2 )
		end
	end
end

--Жребии
function ZhongQian_Work ( role )
	SystemNotice ( role , "Сегодня удача не улыбнулась тебе..." )
end

--Жребии
function XiaQian_Work ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 100
--	qian [1] = 40
--	qian [2] = 60
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

--Жребии
function XiaXiaQian_Work ( role )
	local lv = Lv ( role )
	local a = math.random ( 1 , 100 )
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
			SystemNotice ( role , "Проиграно "..GiveExpNum_Notice.."% опыта" )
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
			local hp_dmg = math.floor ( hp * 1.1 )
			local map_name_role = GetChaMapName ( role )
			if map_name_role == "garner2" or map_name_role == "07xmas2" or map_name_role == "07xmas" then
				hp_dmg = hp_dmg * 3
			end
			Hp_Endure_Dmg ( role , hp_dmg )
			SystemNotice ( role , "Небо карает тебя светом пламени..." )
		else
			SystemNotice ( role , "Небо ранит тебя светом пламени..." )
			local hp = Hp ( role )
			local hp_dmg = math.floor ( hp * 1.1 )
			Hp_Endure_Dmg ( role , hp_dmg )
		end
	end
end

--ійµЅЗ®

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
			SystemNotice ( role , "Богиня Богатства подбросила в твой кошелек "..Num.."% от имеющегося золота" )
			if Money_Add >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				Notice ( cha_name.." использует лот и получает "..Money_Add.." золотых" )
			end
		elseif Money_Add < 0 then
			Num = Num * -100
			SystemNotice ( role , "Богиня Неудач выбрала тебя! Потеряно "..Num.."% золота" )
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
			SystemNotice ( role , "Добавлено "..Num.." золотых" )
			if Num >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				Notice ( cha_name.." использует лот и получает "..Num.." золотых" )
			end
		elseif Num < 0 then
			Num = Num * -1
			SystemNotice ( role , "Вы обнаружили пропажу "..Num.." золотых" )
		end
	end
end

--ійµЅѕ­Сй

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
		
		SystemNotice ( role , "Неожиданно добавлено "..ExpGet.." опыта" )
		if ExpGet >= 200000 then
				local cha_name = GetChaDefaultName ( role )
				Notice ( cha_name.." использует лот и получает "..ExpGet.." опыта" )
		end
	elseif ExpGet < 0 then
		ExpGet = ExpGet * -1
		SystemNotice ( role , "Потеряно "..ExpGet.." опыта" )
	end

end

--ійµЅЧґМ¬

function QianAddState ( role , Type )

	local State = { }
	local StateName = { }

	State [0] = STATE_PKZDYS
	State [1] = STATE_PKSFYS
	State [2] = STATE_PKMNYS
	State [3] = STATE_PKJZYS
	State [4] = STATE_PKKBYS
	
	StateName [0] = "Атака"
	StateName [1] = "Защита"
	StateName [2] = "Максимальная ЖЗ"
	StateName [3] = "Шанс попадания"
	StateName [4] = "Скорость атаки"

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
	SystemNotice ( 	role , "Вы чувствуете, что "..StateName[i].." увеличивается")
end


------
-- Старый пергамент - Старая карта пиратских сокровищ (ID=1093)
------

function GiveGoldenMapItem ( role )
	local CheckRandom = math.random ( 1,100 )
	if CheckRandom >= 1 and CheckRandom <= 23 then
		local GiveMoney = 1000 * math.random ( 1, 20 )
		SystemNotice ( role , "Найдено сокровище. Получено "..GiveMoney.." золотых" )
		AddMoney ( role , 0 , GiveMoney )
	elseif CheckRandom > 23 and CheckRandom <= 25 then -- Дублоны 2%
		XianJing ( role , 2 )
	elseif CheckRandom > 25 and CheckRandom <= 30 then -- Ловушки сильные 5%
		XianJing ( role , 1 )
	elseif CheckRandom > 30 and CheckRandom <= 34 then -- Ловушки слабые 4%
		XianJing ( role , 2 )
	elseif CheckRandom > 34 and CheckRandom <= 40 then -- Телепорт 6%
		SystemNotice ( role , "Сегодня тебе не повезло. Приходи в следующий раз..." )
		MapRandomtele ( role )
	else
		SystemNotice ( role , " Вы выкопали пиратские сокровища!" )
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

		local Good_C = 0
		for Good_C = 0 , 34 , 1 do
			if ItemId == GoodItem[Good_C] then
				local itemname = GetItemName ( ItemId ) 
				local cha_name = GetChaDefaultName ( role ) 
				local message = cha_name.." находит сокровища и получает "..itemname
				Notice ( message )
			end
		end
	end	

end

------
-- Новый пергамент - Карта карибских сокровищ (ID=682)
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
		SystemNotice ( role , "Найдены Карибские сокровища и получено "..GiveMoney.." золотых " )
		AddMoney ( role , 0 , GiveMoney )
	elseif CheckRandom > 20 and CheckRandom <= 22 then -- Дублоны 2%
		XianJing ( role , 2 )
	elseif CheckRandom > 22 and CheckRandom <= 25 then	-- Сильные ловушки 3%
		XianJing ( role , 1 )
	elseif CheckRandom > 25 and CheckRandom <= 29 then -- Слабые ловушки 4%
		XianJing ( role , 2 )
	elseif CheckRandom > 29 and CheckRandom <= 33 then -- Телепорт 4% 
		SystemNotice ( role , "Сегодня тебе не повезло. Приходи в следующий раз..." )
		MapRandomtele ( role )
	elseif CheckRandom > 33 and CheckRandom <= 40 then -- Ричи 7%
		SystemNotice ( role , "О, нет! Кто выпустил собак? Помогите..." )
		local new1 = CreateCha(monserID, x, y, 145, 30)
		SetChaLifeTime(new1, 90000)
	else
		SystemNotice ( role , " Вы выкопали пиратские сокровища!" )
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

		local Good_C = 0
		for Good_C = 0 , 34 , 1 do
			if ItemId == GoodItem[Good_C] then
				local itemname = GetItemName ( ItemId ) 
				local cha_name = GetChaDefaultName ( role ) 
				local message = cha_name.." находит сокровища и получает "..itemname  
				Notice ( message )
			end
		end
	end
				
end


--јмІвЧш±к

function CheckGetMapPos ( role , pos_x , pos_y , MapName )
--	SystemNotice ( role , "CheckPos" )
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
--		SystemNotice ( role , "map_name"..map_name)
--		SystemNotice ( role , "MapName"..MapName )
--		SystemNotice ( role , "mapname Error" )
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
	
--МШКвЛгГь

---ЗуІЖ---------------------

function SuanmingTeshu_Money ( role )
	local a = CheckSuanmingTypeTeshu ( role )
	if a == 1 then
		SystemNotice ( role , "Удача улыбнулась вам! Вы получаете лучший Лот!" )
		ShangShangQianTeshu_Money ( role )
	elseif a == 2 then
		SystemNotice ( role , "Сегодня удачный день. Вы получаете хороший Лот!" )
		ShangQianTeshu_Money ( role )
	elseif a == 3 then
		ZhongQian_Money ( role )
	end
end

---ЗуКВТµ-------------------

function SuanmingTeshu_Work ( role )
	local a = CheckSuanmingTypeTeshu ( role )
	if a == 1 then
		SystemNotice ( role , "Удача улыбнулась вам! Вы получаете лучший Лот!" )
		ShangShangQianTeshu_Work ( role )
	elseif a == 2 then
		SystemNotice ( role , "Сегодня удачный день. Вы получаете хороший Лот!" )
		ShangQianTeshu_Work ( role )
	elseif a == 3 then
		ZhongQian_Work ( role )
	end
end

--МШКвјмІв
function CheckSuanmingTypeTeshu ( role )
	local a = math.random ( 1 , 100 )
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

--МШКвІЖФЛЙПЙПЗ©

function ShangShangQianTeshu_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 5
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
		local GiveMoneyNum = 10000 * math.random ( 10 , 100 )
		QianAddMoney ( role , 2 , GiveMoneyNum )							----ёшЗ®Ј¬1ОЄ°ґ±ИАэЈ¬2ОЄ°ґ№М¶ЁКэЦµ
	elseif b == 2 then
		local statelv = 1
		local time_Bei = math.random ( 1 , 60 )
		local statetime = time_Bei * 60
		AddState( role , role , STATE_SBBLGZ , statelv , statetime )
		SystemNotice ( role , "Получено благословение богини Кары. Вы получаете в текущем регионе "..time_Bei.." минут бонуса, значительно увеличен шанс выпадения вещей." )
	elseif b == 3 then
		GiveItem ( role , 0 , 1092 , 1 , 0 )							---ёш±¦Нј
	end
end

--МШКвІЖФЛЙПЗ©

function ShangQianTeshu_Money ( role )
	local a = math.random ( 1 , 100 )
	local i = 0
	local b = 0
	local qian = { }
	qian [0] = 60
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
		local Give_Money = 1000 * math.random ( 1 , 20 )
		QianAddMoney ( role , 2 , Give_Money )
	elseif b == 2 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.9 )
		local Give_Money = math.random ( 10000 , 30000 )
		Hp_Endure_Dmg ( role , hp_dmg )
		QianAddMoney ( role , 2 , Give_Money )
		SystemNotice ( role , "Добавлено несколько золотых монет. Кто бросил эти монеты?" )
	end
end


--МШКвКВТµЙПЙПЗ©

function ShangShangQianTeshu_Work ( role )
	local a = math.random ( 1 , 100 )
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
		SystemNotice ( role , "Получено благословение богини Кары. Вы получаете в текущем регионе "..time_Bei.." минут бонуса, значительно увеличен получаемый опыт" )
	elseif b == 3 then
		QianAddState ( role , 1 )								-----јУЧґМ¬Ј¬1 ЙПЙПЗ©ЧґМ¬Ј¬2ЙПЗ©ЧґМ¬
	elseif b == 4 then
		QianAddState ( role , 1 )								-----јУЧґМ¬Ј¬1 ЙПЙПЗ©ЧґМ¬Ј¬2ЙПЗ©ЧґМ¬
		--QianAddStatePoint ( role , 1 )
	end
end

--МШКвКВТµЙПЗ©

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

--ФцјУКфРФµг
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
		Notice ( cha_name.." использует лот и получает 1 очко характеристик " )
		LG ( "Add_StatePoint" , cha_name.."Obtained Attributes point:"..Num.."point" )
	else
		local Lv_role = Lv ( role )
		local GiveExpNum = Lv_role * math.random ( 100 , 1000 )
		QianAddExp ( role , GiveExpNum , 2 )
	end
end

--јмІв¶оНвЅЗЙ«КфРФµг
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

--ИЎ±¦НјЧш±к

function GetTheMapPos ( role , type )
--	SystemNotice( role ,"GetTheMapPos" )
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
--	SystemNotice ( role , "PosDateGet"..PosDateGet )

	local Pos_Map = PosDateMap[ PosDateGet ]
--	SystemNotice ( role , "Pos_Map"..Pos_Map )

	local Pos_X = math.random ( PosDateMin_X [PosDateGet] , PosDateMax_X [PosDateGet] )
--	SystemNotice ( role , "Pos_X"..Pos_X )
	local Pos_Y = math.random ( PosDateMin_Y [PosDateGet] , PosDateMax_Y [PosDateGet] )
--	SystemNotice ( role , "Pos_Y"..Pos_Y )
	
	return Pos_X , Pos_Y , Pos_Map
end
--ИЎјУАХ±ИµШНј±¦НјЧш±к
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
-- Ловушки для СП и НП
------

function XianJing ( role, type )
	if type == 1 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.9 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "Вы серьёзно пострадали от ловушек, расставленных пиратами!" )
	elseif type == 2 then
		local hp = Hp ( role )
		local hp_dmg = math.floor ( hp * 0.3 )
		Hp_Endure_Dmg ( role , hp_dmg )
		SystemNotice ( role , "Вы немного пострадали от пиратских ловушек. К счастью, вовремя убежали." )
	end
end

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


--јмІвµАѕЯµДУРР§РФ

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

--Восстановление ХП
function HPresume(role,now_tick,is_role_living)
	if is_role_living == -1 then
		is_role_living = IsChaLiving(role)
	end
	if is_role_living == 1 then 
		Resume(role)
	end
end

--Сила в сердце
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

--Анти ГМ фея
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

--Выполняется раз в секунду
function cha_timer(role, freq, time) 
	local resume_freq = 5
	local now_tick = GetChaParam(role, 1) 
	local is_role_living = -1
	SetChaParam(role, 1, now_tick + freq * time) 
	--GiveJingLingNow( role , now_tick)
	JLXiaoHao(role,now_tick)
	if math.mod(now_tick, resume_freq) == 0 and now_tick > 0 then
		HPresume(role,now_tick,is_role_living)
		--XZDLL_jzzwx(role,now_tick)
		DelJingLing( role , now_tick)
	end
	if math.mod(now_tick, 10) == 0 and now_tick > 0 then
		DeathSetBonus(role,now_tick)
	end
-----------------------------------
-----------------------------------
end

function RemSetBonus(role)
	RemoveState ( role , STATE_BBRING1 )
	RemoveState ( role , STATE_BBRING2 )
	RemoveState ( role , STATE_BBRING3 )
	RemoveState ( role , STATE_BBRING4 )
	RemoveState ( role , STATE_BBRING5 )
	RemoveState ( role , STATE_BBRING6 )
end

function DeathSetBonus(role,now_tick)
	-- Одет Сет Смерти
	local CheckItem_Death = CheckItem_Death(role)
	if CheckItem_Death == 0 then
		RemSetBonus(role)
		return
	end
	local statelv = GetChaStateLv ( role , STATE_BBRING1)
	if statelv >= 1 then
		return
	end
	-- Наложение эффектов
	local statelv = 1
	local statetime = 3600
	AddState ( role , role , STATE_BBRING1 , statelv , statetime )
end

JLMAXLV = 51
JLMINLV = 1

--Получить уровень феи
function GetElfLV(item)
	local str = GetItemAttr( item,ITEMATTR_VAL_STR )
	local con = GetItemAttr( item ,ITEMATTR_VAL_CON )
	local agi = GetItemAttr( item ,ITEMATTR_VAL_AGI )
	local dex = GetItemAttr( item ,ITEMATTR_VAL_DEX )
	local sta = GetItemAttr( item ,ITEMATTR_VAL_STA )
	local lv = str + agi + dex + con + sta
	return lv
end

--Расчет как часто выполняется цикл
function GetElfFreqbyLV(lv)
	local freq = 20
	if lv >= 1 and lv <= 9 then 
		freq = freq * 3
	elseif lv >= 10 and lv <= 30 then 
		freq = ( freq * 3 ) - 5
	elseif lv > JLMAXLV then 
		freq = 10
	elseif lv > 30 and lv <= JLMAXLV then
		freq = freq * 3
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
			--AutoSiLiaoRost(role,elf)
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
					SystemNotice ( role , "Удаление авто-рациона феи не возможно!" )
				else
					ure = ure + autoSiLiaoXG[i]
					SystemNotice ( role , "Автоматическое кормление феи прошло успешно." )
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
					SystemNotice ( role , "Удаление фрукта для феи не возможно!" )
				else
					ElfLVUP ( role , elf , autoSiLiaoFructAttr[i] , autoSiLiaoFructXG[i] , 0 )
					SystemNotice ( role , "Автоматическое кормление феи прошло успешно." )
				end
				return
			end
			i = i + 1
		end
	end
end

--autoSiLiaoRostID = {}			autoSiLiaoRostState = {}		autoSiLiaoRostTime = {}
--autoSiLiaoRostID[1] = 0578		autoSiLiaoRostState[1] = 1		autoSiLiaoRostTime[1] = 900
--[[
function AutoSiLiaoRost(role,elf)
	local lv = GetElfLV(elf)
	local statelv = 1
	local statetime = 900
	local autoSLRost = GetChaItem ( role , 2 , 4 )
	if autoSLRost ~= nil and lv <= JLMAXLV then 
		local ChaStateLv = GetChaStateLv ( role , STATE_JLJSGZ)
		local autoSLIDRost = GetItemID ( autoSLRost )
		local i = 1 
		while autoSiLiaoRostID[i] ~= nil do
			if ChaStateLv >= statelv then
				return
			else
				if autoSiLiaoRostID[i] == autoSLIDRost then
					local j = TakeItem( role , 0 , autoSiLiaoRostID[i] , 1 )
					if j == 0 then
						SystemNotice ( role , "Удаление фрукта роста не возможно!" )
					else
						AddState( role , role , STATE_JLJSGZ , statelv , statetime )
						local ChaStateLv1 = GetChaStateLv ( role , STATE_JLJSGZ)
						SystemNotice ( role , "Автоматическое использование фрукта роста прошло успешно!" )
					end
				else
					return
				end
			end
			i = i + 1 
		end
	end
end
]]--
--Выдача МФ, Печаток, Кор. Печаток
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

--Убиваем феи стамину когда она растет
function Take_ElfURE ( role , Item , Type , Num )
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE )
	if Type == 1 then
		if Elf_URE > 49 then
			Elf_URE = math.max ( ( Elf_URE - 50 ) , 49 )
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

JLMAXLV_UP_STANDART = 51
JLMAXLV_UP_2_GEN = 45
JLMAXLV_UP_3_GEN = 20
JLMAXLV_UP_4_GEN = 14
JLMAXLV_UP_5_GEN = 8

--Проверка для фруктов фей
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
				SystemNotice ( role , "Данным фруктом можно кормить фей 2 поколения только до "..JLMAXLV_UP_2_GEN.." уровня.")
				return 0
			else
				return 1
			end
		elseif Item_TragetID == 0129 then
			if lv_Traget >= JLMAXLV_UP_3_GEN then
				SystemNotice ( role , "Данным фруктом можно кормить фей 3 поколения только до "..JLMAXLV_UP_3_GEN.." уровня.")
				return 0
			else
				return 1
			end
		elseif Item_TragetID == 0130
		or Item_TragetID == 0131
		or Item_TragetID == 0132
		or Item_TragetID == 0133 then
			SystemNotice ( role , "Данным фруктом нельзя кормить фей богов.")
			return 0
		elseif Item_TragetID == 0134 then
			SystemNotice ( role , "Данным фруктом нельзя кормить фей 5 поколения.")
			return 0
		else
			if lv_Traget >= JLMAXLV_UP_STANDART then
				SystemNotice ( role , "Данным фруктом можно кормить фей 1 поколения только до "..JLMAXLV_UP_STANDART.." уровня.")
				return 0
			else
				return 1
			end
		end
end

--Проверка для фруктов фей
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
				SystemNotice ( role , "Данным фруктом можно кормить фей 2 поколения только с "..JLMAXLV_UP_2_GEN.." уровня.")
				return 0
			elseif lv_Traget >= JLMAXLV then
				SystemNotice ( role , "Данным фруктом можно кормить фей 2 поколения только до "..JLMAXLV.." уровня.")
				return 0
			else
				return 1
			end
		elseif Item_TragetID == 0129 then
			if lv_Traget < JLMAXLV_UP_3_GEN then
				SystemNotice ( role , "Данным фруктом можно кормить фей 3 поколения только c "..JLMAXLV_UP_3_GEN.." уровня.")
				return 0
			elseif lv_Traget >= JLMAXLV then
				SystemNotice ( role , "Данным фруктом можно кормить фей 3 поколения только до "..JLMAXLV.." уровня.")
				return 0
			else
				return 1
			end
		elseif Item_TragetID == 0130
		or Item_TragetID == 0131
		or Item_TragetID == 0132
		or Item_TragetID == 0133 then
			SystemNotice ( role , "Данным фруктом нельзя кормить фей богов.")
			return 0
		elseif Item_TragetID == 0134 then
			SystemNotice ( role , "Данным фруктом нельзя кормить фей 5 поколения.")
			return 0
		else
			SystemNotice ( role , "Данным фруктом нельзя кормить фей 1 поколения.")
			return 0
		end
end

--Проверка для фруктов фей
function CheckJingLingLv2 ( role , Item_Traget)
	local str_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STR )
	local con_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_CON )
	local agi_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_AGI )
	local dex_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_DEX )
	local sta_Traget = GetItemAttr( Item_Traget ,ITEMATTR_VAL_STA )
	local lv_Traget = str_Traget + con_Traget + agi_Traget + dex_Traget + sta_Traget
	if lv_Traget >= JLMAXLV_UP_STANDART then
		SystemNotice ( role , "Данным фруктом можно кормить фей только до "..JLMAXLV_UP_STANDART.." уровня.")
		return 0
	else
		return 1
	end
end

--Проверка для фруктов фей
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
			SystemNotice ( role , "Данным фруктом нельзя кормить фей 2 поколения.")
			return 0
		elseif Item_TragetID == 0129 then
			SystemNotice ( role , "Данным фруктом нельзя кормить фей 3 поколения.")
			return 0
		elseif Item_TragetID == 0130
		or Item_TragetID == 0131
		or Item_TragetID == 0132
		or Item_TragetID == 0133 then
			if lv_Traget >= JLMAXLV_UP_STANDART then
				SystemNotice ( role , "Данным фруктом можно кормить фей богов только до "..JLMAXLV_UP_STANDART.." уровня.")
				return 0
			else
				return 1
			end
		elseif Item_TragetID == 0134 then
			SystemNotice ( role , "Данным фруктом нельзя кормить фей 5 поколения.")
			return 0
		else
			SystemNotice ( role , "Данным фруктом нельзя кормить фей 1 поколения.")
			return 0
		end
end

--Питание фей
function Give_ElfURE ( role , Item  , Num )
	local Elf_URE =  GetItemAttr( Item ,ITEMATTR_URE )
	local Elf_MaxURE = GetItemAttr( Item ,ITEMATTR_MAXURE )
	if Elf_URE <= 49 then
		SetChaKbItemValid2(role , Item , 1 , 0)
	end
	Elf_URE = Elf_URE + Num
	if Elf_URE >= Elf_MaxURE  then
		Elf_URE = Elf_MaxURE
	end
	SetItemAttr ( Item , ITEMATTR_URE , Elf_URE )
end

--Проверка полноты опыта у фей перед кормлением фруктом
function CheckElf_EXP ( role , Item )
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY )
	local Elf_MaxEXP = GetItemAttr( Item ,ITEMATTR_MAXENERGY )
	if Elf_EXP >= Elf_MaxEXP then
		return 1
	else
		return 0
	end
end

--Апп +1 Силы
function Lvup_Str ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR
	ElfLVUP(role,Item_Traget,attr_type,1,0)
end

--Апп +1 Телосложения
function Lvup_Con ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	ElfLVUP(role,Item_Traget,attr_type,1,0)
end

--Апп +1 Ловкости
function Lvup_Agi ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	ElfLVUP(role,Item_Traget,attr_type,1,0)
end 

--Апп +1 Точности
function Lvup_Dex ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	ElfLVUP(role,Item_Traget,attr_type,1,0)
end 

--Апп +1 Дух
function Lvup_Sta ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	ElfLVUP(role,Item_Traget,attr_type,1,0)
end

--Апп +2 Силы
function Lvup_Str_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_STR
	ElfLVUP(role,Item_Traget,attr_type,2,0)
end 

--Апп +2 Телосложения
function Lvup_Con_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type =  ITEMATTR_VAL_CON 
	ElfLVUP(role,Item_Traget,attr_type,2,0)
end

--Апп +2 Ловкости
function Lvup_Agi_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_AGI 
	ElfLVUP(role,Item_Traget,attr_type,2,0)
end 

--Апп +2 Точности
function Lvup_Dex_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_DEX
	ElfLVUP(role,Item_Traget,attr_type,2,0)
end 

--Апп +2 Дух
function Lvup_Sta_1 ( role , Item_Num ,Item_Traget ) 
	local attr_type = ITEMATTR_VAL_STA 
	ElfLVUP(role,Item_Traget,attr_type,2,0)
end 

--Расчет шансом аппа
function ElfLVUP(role,item,attrType,lvupType,falseType)
	local elfLV = GetElfLV(item)
	local elfMaxEXP = GetItemAttr(item,ITEMATTR_MAXENERGY) 
	local elfMaxURE = GetItemAttr(item,ITEMATTR_MAXURE)
	local attrNum = GetItemAttr( item ,attrType )
	local elfEXP = GetItemAttr( item ,ITEMATTR_ENERGY )
--	SystemNotice ( role , "elfLV = "..elfLV)
--	SystemNotice ( role , "attrNum = "..attrNum)
--	SystemNotice ( role , "attrType = "..attrType)

	local a = 1
	if elfLV >= 45 and elfLV <= 51 then
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
		SystemNotice (role , "Уровень феи успешно повышен!")
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
			SystemNotice (role , "Уровень феи повысить не удалось.")
		else
			elfEXP = 0.5 * elfEXP 
			SystemNotice (role , "Уровень феи повысить не удалось. Рост феи сократился в двое")
		end
	end
	if falseType == 1 then 
		SetItemAttr ( item , ITEMATTR_URE , 0 )
	end
	SetItemAttr ( item , ITEMATTR_ENERGY , elfEXP )
end



---------------------------------------
function Give_ElfEXP_MISSION ( role , num )						--ИООсФцјУіиОпѕ­СйЅЕ±ѕ

	local Item = GetChaItem ( role , 2 ,  2  ) 
	local Elf_EXP =  GetItemAttr( Item ,ITEMATTR_ENERGY )		--ИЎіиОпµ±З°іЙі¤¶И
	local Elf_MaxEXP = GetItemAttr( Item ,ITEMATTR_MAXENERGY )	--ИЎіиОпЧоґуіЙі¤¶И
	local Elf_URE = GetItemAttr( Item ,ITEMATTR_URE )			--ИЎіиОпµ±З°МеБ¦Цµ
	if Elf_URE <= 50 then									
		SystemNotice (role , "Фея истощена. Рост невозможен из-за недостатка выносливости")			--МеБ¦І»Чг50К±ОЮ·Ё»сµГіиОпexp
		return 0 
	else 
		Elf_URE = Elf_URE - 40								--МеБ¦ідЧгК±Ј¬їЫіэіиОп40µгМеБ¦Ј¬ФцјУіиОпEXP
		SetItemAttr ( Item , ITEMATTR_URE , Elf_URE ) 
		num = math.min ( num , Elf_MaxEXP - Elf_EXP ) 
		SetItemAttr ( Item , ITEMATTR_ENERGY , num ) 
	end 
	return 1 
end 


-----------------------------------------------
function CheckElfHaveSkill ( Num , SkillType , SkillNum )
	--Notice( "BEGINCheckElfHaveSkill" )

	local Part2 = GetNum_Part2 ( Num )	--Get Num Part 1 µЅ Part 7
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

----------------------------------------------------------

function AddElfSkill ( Item , SkillType , SkillNum )
	--Notice( "BEGINAddElfSkill" )
	

	local Num = GetItemForgeParam ( Item , 1 ) --ѕ«Бй32О»јјДЬРЕПўКэѕЭ	
	--Notice ( "Num= "..Num)
	local Part1 = GetNum_Part1 ( Num )	--Get Num Part 1 µЅ Part 7
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

	local rad = math.random( 1 , 100 )   --Лж»ъ 1Ј¬100                            
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
		--·с
		--ОЮІЩЧч
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
			--·с
			--ОЮІЩЧч
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

------------------------------------------------------------------

function CheckHaveElf ( role )
	local Item = GetChaItem ( role , 2 , 1  ) --ИЎЅЗЙ«±і°ьµЪ¶юАёµДЦёХл
	if Item == nil then              --?Item == 0 КІГґТвЛј
		return 0
	end
	
	local Item_Type =  GetItemType ( Item ) --Item µДµАѕЯАаРН
	
	if Item_Type ~= 59 then
		return 0
	else
		local ELf_URE = GetItemAttr( Item ,ITEMATTR_URE )  --ѕ«БйМеБ¦

		if ELf_URE <= 49 then
			return 0
		end
	end
	--Notice("CheckHaveElf has been executed" )
	return Item

end

--ѕ«БйјјДЬ

--»¤¶ЬКх
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
	dmg = math.floor ( dmg * ( 0.3 + Elf_SheildLv * 0.15 )  ) 

	local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
	local Dmg_Take_rad = 10 
	local Elf_Dmg_CanTake = ( Item_URE - 50 ) / Dmg_Take_rad
	
	if Elf_Dmg_CanTake >= dmg then
		local Elf_URE_Take = math.floor ( dmg * Dmg_Take_rad )
		local Elf_URE_Notice = math.floor ( Elf_URE_Take / 50 )
		Take_ElfURE ( role , Elf_Item , 2 , Elf_URE_Take )
		SystemNotice ( role , "Фея поглотила часть урона: "..dmg)
		return dmg
	else
		SystemNotice ( role , "Фея истощена. В таком состоянии фея не может поглощать урон" )
		return 0
	end
end

--»сµГѕ«БйЦё¶ЁјјДЬµИј¶
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

--±¬»ч

function ElfSKill_ElfCrt ( role , Elf_Item , Num )
	local Elf_SkillLv = GetElfSkill_Lv ( Num , 2 )
	local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
	if Item_URE < 50 then
		SystemNotice ( role , "Фея истощена. В таком состоянии фея не может применить Берсерк" )
		return 0
	end
	local b = ( Elf_SkillLv * 2 + 1 )  * 0.01
	local a = Percentage_Random ( b )
	if a == 1 then
		
		Take_ElfURE ( role , Elf_Item , 2 , Elf_SkillLv )
		return 1
		
	else
		return 0
	end
end

--Д§Б¦

function ElfSkill_MagicAtk ( dmg , role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 3 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 3 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "Фея истощена. В таком состоянии фея не может использовать магию" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 1 )
					return dmg * 0.05 + 5 
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return dmg * 0.08 + 8
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 3 )
					return dmg * 0.1 + 10
				end
			end
		end
	end
	return 0
end


--»Шёґ
function ElfSkill_HpResume ( role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 4 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 4 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "Фея истощена. В таком состоянии фея не может использовать восстановление" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 10
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 20
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 35
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

function ElfSkill_SpResume ( role )
	local Elf_Item = CheckHaveElf ( role )
	if Elf_Item ~= 0 then
		local Num = GetItemForgeParam ( Elf_Item , 1 )
		local CheckElfSkill = CheckElfHaveSkill ( Num , 0 , 5 )
		if CheckElfSkill == 2 then
			local Elf_SkillLv = GetElfSkill_Lv ( Num , 5 )
			local Item_URE = GetItemAttr( Elf_Item , ITEMATTR_URE )
			if Item_URE <= 50 then
				SystemNotice ( role , "Фея истощена. В таком состоянии фея не может медитировать" )
				return 0
			else
				if Elf_SkillLv == 1 then	
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 10
				elseif Elf_SkillLv == 2 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 20
				elseif Elf_SkillLv == 3 then
					Take_ElfURE ( role , Elf_Item , 2 , 2 )
					return 35
				end
			end
		end
	end
	return 0
end

--Обмен чести у Богини
function CreditExchangeImpl( role, tp )
	local i = CheckBagItem( role,3849 )
	if i==1 then
		local Item = GetChaItem2 ( role , 2 , 3849 )
		local rongyu_num=GetItemAttr ( Item , ITEMATTR_VAL_STR )
		if rongyu_num<=0 then
			SystemNotice ( role , "Без положительной чести благословление невозможно!")
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
				SystemNotice ( role , "Получено опыта: "..a1 )
			elseif lv>=31 and lv<=40 then
				exp_num=rongyu_num*13+exp_star
				local a1= math.floor (rongyu_num*13 )
				SystemNotice ( role , "Получено опыта: "..a1 )
			elseif lv>=41 and lv<=50 then
				exp_num=rongyu_num*22+exp_star
				local a1= math.floor (rongyu_num*22 )
				SystemNotice ( role , "Получено опыта: "..a1 )
			elseif lv>=51 and lv<=60 then
				exp_num=rongyu_num*44+exp_star
				local a1= math.floor (rongyu_num*44 )
				SystemNotice ( role , "Получено опыта: "..a1 )
			elseif lv>=61 and lv<=70 then
				exp_num=rongyu_num*102+exp_star
				local a1= math.floor (rongyu_num*102 )
				SystemNotice ( role , "Получено опыта: "..a1 )
			elseif lv>=71 and  lv<=78 then
				exp_num=rongyu_num*270+exp_star
				local a1= math.floor (rongyu_num*270 )
				SystemNotice ( role , "Получено опыта: "..a1 )
			elseif lv==79 and dif_exp<=0 then 
				exp_num=rongyu_num*270+exp_star
				local a1= math.floor (rongyu_num*270 )
				SystemNotice ( role , "Получено опыта: "..a1 )
			elseif lv==79 and dif_exp>0 then 
				exp_num = dif_exp*0.02 + DEXP[lv+1]
				local a1= math.floor (rongyu_num*270)
				SystemNotice ( role , "Получено опыта: "..a1 )
			elseif lv>=80  then
				exp_num=rongyu_num*270*0.02+exp_star
				local a1= math.floor (rongyu_num*270 )
				SystemNotice ( role , "Получено опыта: "..a1 )
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
					SystemNotice ( role , "Получено опыта: "..a1 )
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
					SystemNotice ( role , "Получено опыта: "..a1 )
				end
			elseif lv>=61 then
				if rad<=rongyu_num or rongyu_num>=30000 then
				local rad2=math.random(1,3)
				local rad3=math.random(1,4)
					local Lg_ID=2530
					if job == 8 then --ѕЮЅЈ
						if rad2==1 then
							Lg_ID=2530
						elseif rad2==2 then
							Lg_ID=2531
						elseif rad2==3 then
							Lg_ID=2532
						end
					elseif job == 9 then   --Л«ЅЈ
						if rad2==1 then
							Lg_ID=2533
						elseif rad2==2 then
							Lg_ID=2534
						elseif rad2==3 then
							Lg_ID=2535
						end
					elseif job == 12 then --ѕС»чКЦ
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
					SystemNotice ( role , "Получено опыта: "..a1 )
				end
			end
		end
	SetItemAttr ( Item ,ITEMATTR_VAL_STR , 0 )
	end
end
-----------------------------
-----------------------------ЦШЙиѕ«БйµИј¶
function Elf_Attr_cs ( role , Item_JLone , Item_JLother )
	local Item_JLone_num={}
	local Item_JLother_num={}
	---ИЎТ»ёцѕ«БйµДОеёцКфРФ
	Item_JLone_num[1] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STR )	-- Б¦БїіЈКэјУіЙ 26
	Item_JLone_num[2] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_AGI )	-- ГфЅЭіЈКэјУіЙ 27
	Item_JLone_num[3] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_DEX )	-- ЧЁЧўіЈКэјУіЙ 28
	Item_JLone_num[4] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_CON )	-- МеЦКіЈКэјУіЙ 29
	Item_JLone_num[5] = GetItemAttr( Item_JLone ,ITEMATTR_VAL_STA )	-- ѕ«Б¦іЈКэјУіЙ 30
	Item_JLone_num[6] = GetItemAttr( Item_JLone ,ITEMATTR_URE )			--МеБ¦ 
	Item_JLone_num[7] = GetItemAttr( Item_JLone ,ITEMATTR_MAXURE )		 --ЧоґуМеБ¦
	Item_JLone_num[8] = Item_JLone_num[1] + Item_JLone_num[2] + Item_JLone_num[3] + Item_JLone_num[4] + Item_JLone_num[5]	----Т»ёцѕ«БйµДµИј¶
	---ИЎБнТ»ёцѕ«БйµДОеёцКфРФ
	Item_JLother_num[1] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STR )	-- Б¦БїіЈКэјУіЙ  
	Item_JLother_num[2] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_AGI )	-- ГфЅЭіЈКэјУіЙ  
	Item_JLother_num[3] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_DEX )	-- ЧЁЧўіЈКэјУіЙ  
	Item_JLother_num[4] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_CON )	-- МеЦКіЈКэјУіЙ  
	Item_JLother_num[5] = GetItemAttr( Item_JLother ,ITEMATTR_VAL_STA )	-- ѕ«Б¦іЈКэјУіЙ  
	Item_JLother_num[6] = GetItemAttr( Item_JLother ,ITEMATTR_URE )			--МеБ¦ 
	Item_JLother_num[7] = GetItemAttr( Item_JLother ,ITEMATTR_MAXURE )		 --ЧоґуМеБ¦
	Item_JLother_num[8] = Item_JLother_num[1] + Item_JLother_num[2] + Item_JLother_num[3] + Item_JLother_num[4] + Item_JLother_num[5]	----Т»ёцѕ«БйµДµИј¶

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
	----ЦШЙиТ»Ц»ѕ«БйµДКфРФ
	SetItemAttr ( Item_JLone , num_jlone , max_JLone_temp )
	SetItemAttr ( Item_JLone , ITEMATTR_ENERGY , 240) 	
	SetItemAttr ( Item_JLone , ITEMATTR_MAXENERGY , new_JLone_MAXENERGY )
	SetItemAttr ( Item_JLone , ITEMATTR_URE , 5000 ) 	
	SetItemAttr ( Item_JLone , ITEMATTR_MAXURE , new_JLone_MAXURE ) 	
	----ЦШЙиБнТ»Ц»ѕ«БйµДКфРФ
	SetItemAttr ( Item_JLother , num_jlother , max_JLother_temp )
	SetItemAttr ( Item_JLother , ITEMATTR_ENERGY , 240 ) 	
	SetItemAttr ( Item_JLother , ITEMATTR_MAXENERGY , new_JLother_MAXENERGY )
	SetItemAttr ( Item_JLother , ITEMATTR_URE , 5000 ) 	
	SetItemAttr ( Item_JLother , ITEMATTR_MAXURE , new_JLother_MAXURE )  	
end

--Игровой автомат
function  TigerStart( ... )
	--Notice("TigerStart...................")
	if arg.n ~= 4 then
		SystemNotice ( arg[1] , "Неверное значение параметра "..arg.n )
		return 
	end	
	local num = {}
	local Item_type = {}
	local num_star = 0
	local n  = 0
	local m = 0
	local i = 0
	local q=0
	for n=1,9,1 do --------------іхКј»Ї9ёцОпЖ·ID
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
		SystemNotice( arg[1] , "Ваш инвентарь заблокирован")
		return 0
	end
	local Item_CanGet = GetChaFreeBagGridNum ( arg[1] )	
	if Item_CanGet < 5 then
		SystemNotice( arg[1] ,"У вас должно быть не меньше 5 свободных слотов в инвентаре")
		return 0
	end
	local Money_Have = GetChaAttr ( arg[1]  , ATTR_GD )
	if Money_Have>1900000000 then
		SystemNotice (arg[1], "У вас больше 1 миллиарда золота!? Это опасно.")
		return	
	end
	if arg[2]==1 then
		local j1 = TakeItem(  arg[1], 0,855, 5 )			        
		if j1==0 then
			SystemNotice ( arg[1] ,"Ошибка при удалении Монеты феи")
			return
		end
	end
	if arg[3]==1 then
		local j2 = TakeItem(  arg[1], 0,855, 5 )			            
		if j2==0 then
			SystemNotice ( arg[1] ,"Ошибка при удалении Монеты феи")
			return
		end		
	end
	if arg[4]==1 then
		local j3 = TakeItem(  arg[1], 0,855, 5 )			            
		if j3==0 then
			SystemNotice ( arg[1] ,"Ошибка при удалении Монеты феи")
			return
		end		
	end
	local lhj_te_flg=0
	local lhj_yi_flg=0
	local lhj_hei_flg=0
	local now_day= os.date("%d")		-------------ИХ          
	local now_hour= os.date("%H")		-------------К±          
	local now_miniute= os.date("%M")	-------------·Ц          
	local now_scend=  os.date("%S")		-------------Гл   
	now_day= tonumber(now_day)			-------------ИХ  
	now_hour= tonumber(now_hour)		-------------К±  
	now_miniute= tonumber(now_miniute)	 	-------------·Ц  
	now_scend= tonumber(now_scend)		-------------Гл 
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
		Item_type[j] = GetItemType2( num [j] )----------ЦШДГАаРН
		if num[j]==822 or num[j]==823 or num[j]==825 or num[j]==826 or num[j]==827 or num[j]==1116 or num[j]==1117 or num[j]==1118 or num[j]==46  or num[j]==1124  or num[j]==1125  or num[j]==1126  or num[j]==1127 or  num[j]==1057  or  num[j]==1060   or  num[j]==1063    or  num[j]==1066   or  num[j]==1034  or  num[j]==586  or  num[j]==762  or  num[j]==3061  or  num[j]==410   or  num[j]==2885  then--------CABAL¶ФЅ±ИЇЈ¬ДкКЮєН»Ф»Н,ВТ¶·І»ёш
			num[j]=3360 ---------ЧкКЇ		
		end
		if num[j]>=845 and num[j]<=847 then--------єЪБъїШЦЖ
			local rad_s= math.random ( 1 , 40 )
			if rad_s>=3 or lhj_hei_flg==0 then
				num[j]=3360 ---------ЧкКЇ		
			end
		end
		--------------feiПВГжХвјёЦЦАаРНµДОпЖ·І»ёш
		if Item_type[j]~=1 and Item_type[j]~=2 and Item_type[j] ~=3 and Item_type[j] ~=4 and Item_type[j] ~=7 and Item_type[j] ~=9 and Item_type[j] ~=11 and Item_type[j] ~=22 and Item_type[j] ~=23 and Item_type[j] ~=24 and Item_type[j] ~=25 and Item_type[j] ~=26 and Item_type[j] ~=27 and Item_type[j] ~=29 and Item_type[j] ~=36 and Item_type[j] ~=47 and Item_type[j] ~=50 and Item_type[j] ~=57 and Item_type[j] ~=58 and Item_type[j] ~=60 and Item_type[j] ~=65 and Item_type[j] ~=66 then
			local eleven = math.random ( 1 , 1000 )	
			local new_id = math.random ( 3850 , 3875 )
			if eleven <= 328 then
				num[j]= new_id ----------їЁЖ¬
			elseif eleven >=329 and  eleven<=999 then
				num[j]=3360 ---------ЧкКЇ
			else
				num[j]=194 ---------ЅрЗ®
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
			num[p]= new_id1 ----------їЁЖ¬		
		end
	end
	----------------------їШЦЖґуЅ±іцПЦ»ъВК
	local reset_rad=math.random ( 1 , 100 )
	local kapian_rad=math.random ( 3850 , 3875 )
	if reset_rad>=47 and num[1]==num[3] and num[1]==num[5] and num[1]==num[7]  and num[1]==num[9]  then-------ОеёЈН¬КЩЅµµН39%
		num[9]=kapian_rad
	end
	if reset_rad>=24 and num[2]==num[4] and num[2]==num[5] and num[2]==num[6]  and num[2]==num[8]  then-------К®И«К®ГАЅµµН66%
		num[8]=kapian_rad
	end
	if  num[1]==num[2] and num[1]==num[3] and num[1]==num[4]  and num[1]==num[6] and num[1]==num[7] and num[1]==num[8]  and num[1]==num[9] then-------ЖХМмН¬ЗмЅµµН66%
		if lhj_yi_flg==0 or reset_rad>=10 then
			num[9]=kapian_rad
		end
	end
	if  num[1]==num[2] and num[1]==num[3] and num[1]==num[4] and num[1]==num[5] and num[1]==num[6] and num[1]==num[7] and num[1]==num[8]  and num[1]==num[9] then-------НтКЩОЮЅ®ЅµµН89%
		if lhj_te_flg==0 or reset_rad>=2 then
			num[9]=kapian_rad
		end
	end
	return num[1] , num[2] , num[3] , num[4] , num[5] , num[6] , num[7] , num[8] , num[9] 
end

function TigerStop(...)
	if arg.n ~= 13 then
		SystemNotice ( arg[1] , "Неверное значение параметра "..arg.n )
		return 
	end
	local flag = 0
	if arg[11] == 1 and arg[12] == 1 and arg[13] == 1 then
		flag = 1
	end
	local flag_myp = 1
	if arg[2] == 0 or arg[3] == 0 or arg[4] == 0 or arg[5] == 0 or arg[6] == 0 or arg[7] == 0 or arg[8] == 0 or  arg[9] == 0 or arg[10] == 0 or arg[2] == nil or arg[3] == nil or arg[4] == nil or arg[5] == nil or arg[6] == nil or arg[7] == nil or arg[8] == nil or  arg[9] == 0 or arg[10] == nil then
		 flag_myp=0
		SystemNotice ( arg[1] , "Неверный параметр шанса Удачи" )
		return
	end
	local eleven = 0
	local new_id = math.random ( 3850 , 3875 )
--Самый высокий шанс(Все равны)
	if arg[2] == arg[3] and arg[3] == arg[4] and arg[4] == arg[5]  and arg[5] == arg[6] and arg[6] == arg[7] and arg[7] == arg[8] and arg[8] == arg[9] and arg[9] == arg[10] and arg[2] ~= new_id and flag == 1 and flag_myp == 1 then
		local cha_name4 = GetChaDefaultName ( arg[1] ) 
		local item_rad = math.random ( 1 , 9 )
		if item_rad == 1 then item_rad_id = 864
		elseif item_rad == 2 then item_rad_id = 865
		elseif item_rad == 3 then item_rad_id = 866
		else
			item_rad_id = 271
		end
		local itemname12 = GetItemName ( item_rad_id ) 
		local message4 = cha_name4.." выигрывает 50 000 000 золотых и "..itemname12
		Notice ( message4 )
		SynTigerString ( arg[1] ,"Поздравляем! Вы выиграли 50 000 000 золотых и "..itemname12)
		AddMoney ( arg[1] , 0 , 50000000 )
		GiveItem ( arg[1] , 0 , item_rad_id , 1 , 4  )
		eleven = eleven + 1
		LG( "LHJ_wanshou_lg" ,cha_name4,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--Высокий шанс(Все равно кроме середины)
	if arg[2] == arg[3] and arg[3] == arg[4] and arg[4] == arg[5] and arg[5] == arg[7] and arg[7] == arg[8] and arg[8] == arg[9] and arg[9] == arg[10] and arg[2] ~= new_id and flag == 1 and flag_myp == 1 then
		local item_rad = math.random ( 1 , 8 )
		if item_rad == 1 then item_rad_id = 860
		elseif item_rad == 2 then item_rad_id = 861
		elseif item_rad == 3 then item_rad_id = 862
		elseif item_rad == 4 then item_rad_id = 863
		elseif item_rad == 5 then item_rad_id = 1012
		else
			item_rad_id = 271
		end
		local itemname11 = GetItemName ( item_rad_id ) 
		local cha_name3 = GetChaDefaultName ( arg[1] ) 
		local message3 = cha_name3.." выигрывает 10 000 000 золотых и "..itemname11
		Notice ( message3 )
		SynTigerString ( arg[1] ,"Поздравляем! Вы выиграли 10 000 000 золотых и "..itemname11)
		AddMoney ( arg[1] , 0 , 10000000 )
		GiveItem ( arg[1] , 0 , item_rad_id , 1 , 4  )
		eleven = eleven + 1
		LG( "LHJ_putian_lg" ,cha_name3,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--Хороший шанс(Равны по кресту)
	if arg[3] == arg[5] and arg[5] == arg[6] and arg[6] == arg[7] and arg[7] == arg[9] and arg[3] ~= new_id and flag == 1 and flag_myp == 1 then
		local itemname2 = GetItemName ( arg[3] ) 
		local cha_name2 = GetChaDefaultName ( arg[1] ) 
		local message2 = cha_name2.." выигрывает 3 000 000 золотых"  
		Notice ( message2 )
		SynTigerString( arg[1] ,"Поздравляем! Вы выигрываете 3 000 000 золотых")
		AddMoney ( arg[1] , 0 , 3000000 )
		eleven = eleven + 1
		LG( "LHJ_shiquan_lg" ,cha_name2,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--Хороший шанс(Равны углы и центр)
	if arg[2] == arg[4] and arg[4] == arg[6] and arg[6] == arg[8] and arg[8] == arg[10] and arg[2] ~= new_id and flag == 1 and flag_myp == 1 then
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		local message1 = cha_name1.." выигрывает 1 000 000 золотых" 
		Notice ( message1 )
		SynTigerString  ( arg[1] ,"Поздравляем! Вы выигрываете 1 000 000 золотых")
		AddMoney ( arg[1] , 0 , 1000000 )
		eleven = eleven + 1
		LG( "LHJ_wufu_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--Средний шанс(Равны углы)
	if arg[2] == arg[4] and arg[4] == arg[8] and arg[8] == arg[10] and arg[2] ~= new_id and flag == 1 and flag_myp == 1 then
		SystemNotice ( arg[1] ,"Поздравляем! Вы выиграли 500 000 золотых и комплект снаряжения с Черного рынка")
		SynTigerString  ( arg[1] ,"Поздравляем! Вы выиграли 500 000 золотых и комплект снаряжения с Черного рынка")
		AddMoney ( arg[1] , 0 , 500000 )
		GiveItem ( arg[1] , 0 , 3323 , 1 , 4 )
		eleven = eleven + 1
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_siji_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--Средний шанс(Равный крест кроме центра)
	if arg[3] == arg[5] and arg[5] == arg[7] and arg[7] == arg[9] and arg[3] ~= new_id and flag == 1 and flag_myp == 1 then
		AddMoney ( arg[1] , 0 , 250000 )
		
		local rad_heishi = math.random ( 1 , 2 )
		if rad_heishi == 1 then
			SystemNotice ( arg[1] ,"Поздравляем! Вы выиграли 250 000 золотых и Большой усилитель удачи")
			SynTigerString  ( arg[1] ,"Поздравляем! Вы выиграли 250 000 золотых и Большой усилитель удачи")
			GiveItem ( arg[1] , 0 , 3326 , 1 , 4 )
			GiveItem ( arg[1] , 0 , 3097 , 1 , 4 )
		else
			SystemNotice ( arg[1] ,"Поздравляем! Вы выиграли 250 000 золотых и Супер усилитель стремлений")
			SynTigerString  ( arg[1] ,"Поздравляем! Вы выиграли 250 000 золотых и Супер усилитель стремлений")
			GiveItem ( arg[1] , 0 , 3328 , 1 , 4 )
			GiveItem ( arg[1] , 0 , 3095 , 1 , 4 )
		end
		eleven = eleven + 1
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_xiaokong_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--Плохой шанс(Равная диогональ)
	if arg[4] == arg[6] and arg[6] == arg[8] and arg[4] ~= new_id and flag == 1 and flag_myp == 1 then
		AddMoney ( arg[1] , 0 , 100000 )
		local rad_heishi1 = math.random ( 1 , 5 )
		if rad_heishi1 == 1 then
			SystemNotice ( arg[1] ,"Поздравляем! Вы выиграли 100 000 золотых и Большой усилитель удачи")
			SynTigerString ( arg[1] ,"Поздравляем! Вы выиграли 100 000 золотых и Большой усилитель удачи")
			GiveItem ( arg[1] , 0 , 3326 , 1 , 4 )
			GiveItem ( arg[1] , 0 , 3097 , 1 , 4 )
		else
			SystemNotice ( arg[1] ,"Поздравляем! Вы выиграли 100 000 золотых и Усилитель удачи")
			SynTigerString ( arg[1] ,"Поздравляем! Вы выиграли 100 000 золотых и Усилитель удачи")
			GiveItem ( arg[1] , 0 , 3096 , 1 , 4 )
		end
		eleven = eleven + 1
		local cha_name1 = GetChaDefaultName ( arg[1] )
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--Плохой шанс(Равная диогональ)
	if arg[2] == arg[6] and arg[6] == arg[10] and arg[2] ~= new_id and flag == 1 and flag_myp == 1 then
		AddMoney ( arg[1] , 0 , 50000 )
		local rad_heishi2 = math.random ( 1 , 5 )
		if rad_heishi2 == 1 then
			SystemNotice ( arg[1] ,"Поздравляем! Вы выиграли 50 000 золотых и Супер усилитель стремлений")
			SynTigerString ( arg[1] ,"Поздравляем! Вы выиграли 50 000 золотых и Супер усилитель стремлений")
			GiveItem ( arg[1] , 0 , 3328 , 1 , 4 )
			GiveItem ( arg[1] , 0 , 3095 , 1 , 4 )
		else
			SystemNotice ( arg[1] ,"Поздравляем! Вы выиграли 50 000 золотых и Усилитель стремлений")
			SynTigerString ( arg[1] ,"Поздравляем! Вы выиграли 50 000 золотых и Усилитель стремлений")
			GiveItem ( arg[1] , 0 , 3094 , 1 , 4 )
		end
		eleven = eleven + 1
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--Низкий шанс(Равна средняя строка)
	if arg[5] == arg[6] and arg[6] == arg[7] and arg[5] ~= new_id and flag == 1 and flag_myp == 1 then
		SystemNotice ( arg[1] ,"Поздравляем! Вы выиграли 50 000 золотых")
		SynTigerString ( arg[1] ,"Поздравляем! Вы выиграли 50 000 золотых")
		AddMoney ( arg[1] , 0 , 50000 )
		eleven = eleven + 1
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--Низкий шанс(Первые 3 строки равны)
	if arg[2] == arg[5] and arg[5] == arg[8] and arg[11] == 1 and arg[2] ~= new_id and flag_myp == 1 then
		SystemNotice ( arg[1] ,"Поздравляем! Вы выиграли 20 000 золотых")
		SynTigerString( arg[1] ,"Поздравляем! Вы выиграли 20 000 золотых")
		AddMoney ( arg[1] , 0 , 20000 )
		eleven = eleven + 1
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--Низкий шанс(Вторые 3 строки равны)
	if arg[3] == arg[6] and arg[6] == arg[9] and arg[12] == 1 and arg[3] ~= new_id and flag_myp == 1 then
		SystemNotice ( arg[1] ,"Поздравляем! Вы выиграли 20 000 золотых")
		SynTigerString( arg[1] ,"Поздравляем! Вы выиграли 20 000 золотых")
		AddMoney ( arg[1] , 0 , 20000 )
		eleven = eleven + 1
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
--Низкий шанс(Третьи 3 строки равны)
	if arg[4] == arg[7] and arg[7] == arg[10] and arg[13] == 1 and arg[4] ~= new_id and flag_myp == 1 then
		SystemNotice ( arg[1] ,"Поздравляем! Вы выиграли 20 000 золотых")
		SynTigerString( arg[1] ,"Поздравляем! Вы выиграли 20 000 золотых")
		AddMoney ( arg[1] , 0 , 20000 )
		eleven = eleven + 1
		local cha_name1 = GetChaDefaultName ( arg[1] ) 
		LG( "LHJ_qita_lg" ,cha_name1,arg[2],arg[3],arg[4],arg[5],arg[6],arg[7],arg[8],arg[9],arg[10])
	end
	if eleven == 0 then
		SynTigerString( arg[1] ,"К сожалению, вы проиграли!")
	else 
		eleven = 0
	end
end



------
-- Обмен 100 чести на Сердце искры
------
function Change_shanyao (character, npc)
	local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "Ваш инвентарь заблокирован")
		return 0
	end
		 
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "У вас нет Медали отваги")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 100 then
			SystemNotice( character , "У вас недостаточно очков чести")
			return 0
		end
	local HonorPoint_X=HonorPoint-100
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		
		if Item_CanGet <= 0 then
			SystemNotice(character ,"Недостаточно места в инвентаре")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2614  , 1 , 4 ) 
end

------
-- Обмен 500 чести на Отважное сердце
------
function Change_rongyao (character, npc)
local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "Ваш инвентарь заблокирован")
		return 0
	end
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "У вас нет Медали отваги")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 500 then
			SystemNotice( character , "У вас недостаточно очков чести")
			return 0
		end
	local HonorPoint_X=HonorPoint-500
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		
		if Item_CanGet <= 0 then
			SystemNotice(character ,"Недостаточно места в инвентаре")
			UseItemFailed ( character )
			return
		end
	GiveItem ( character , 0 , 2615  , 1 , 4 )
end

------
-- Обмен 1000 чести на Сердце великолепия
------
function Change_huihuang (character, npc)
	local NocLock =	KitbagLock( character, 0 )
		if NocLock == LUA_FALSE then
		SystemNotice( character , "Ваш инвентарь заблокирован")
		return 0
	end
	local HonorBook_Num = 0
	local HonorBook_Num = CheckBagItem( character,3849 )
		if HonorBook_Num < 1 then
		SystemNotice( character , "У вас нет Медали отваги")
		return 0
		end
	local Book2 =  GetChaItem2 ( character , 2 , 3849 )
	local HonorPoint=GetItemAttr ( Book2 , ITEMATTR_VAL_STR)
		if HonorPoint < 1000 then
			SystemNotice( character , "У вас недостаточно очков чести")
			return 0
		end
	local HonorPoint_X=HonorPoint-1000
	SetItemAttr ( Book2 , ITEMATTR_VAL_STR,HonorPoint_X)
	local Item_CanGet = GetChaFreeBagGridNum ( character )
		
		if Item_CanGet <= 0 then
			SystemNotice(character ,"Недостаточно места в инвентаре")
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
--				Leo  end
-------------------------------------------------------------------------------------

--------±±ГАМъИЛБщПо»о¶Ї---------bragi-----
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

function CheckTeam ( role )
--	SystemNotice( role, "ЅшИл1")
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
		if ValidCha( player[j] )== 1  then					--±»јУИлЧй¶Уѕ­Сй·ЦЕдµДЅЗЙ«±ШРлґжФЪ
			local lv_p = GetChaAttr ( player[j] , ATTR_LV )
--			SystemNotice( role, "ЅшИл2")
--			SystemNotice( role, "НжјТµИј¶"..lv_p)
			if lv_p >= 20 and lv_p <= 30 then
				n1 = n1 + 1
			elseif lv_p > 30 and lv_p <= 40 then
				n2 = n2 + 1
			elseif lv_p > 40 then
				n3 = n3 + 1
			end
		end
	end
--	SystemNotice( role , "¶УОйДЪ№ІУР20µЅ30ј¶ИЛКэ:"..n1..",31µЅ40ј¶ИЛКэ:"..n2..",40ј¶ТФЙПИЛКэ:"..n3)
	if n1 >= 1 and n2 >= 1 and n3>= 1 then
		return LUA_TRUE
	end
end

function CheckTime ( role )
	local now_week= os.date("%w")		-------------dayјёЈЁК®ЅшЦЖЈ© 
	local now_hour= os.date("%H")		-------------К± 
	now_week= tonumber(now_week)
	now_hour= tonumber(now_hour)
--	SystemNotice( role, "day"..now_week.."hour"..now_hour)
	if now_week == 6 then
		if now_hour >= 9 and now_hour < 12 then
			return LUA_TRUE
		elseif now_hour >= 21 then
			return LUA_TRUE
		end
	end
end

--------±±ГАМъИЛБщПо»о¶ЇЅбКш---------bragi-----
-------------------------------------------------------------------------------------
--				LeoµД·АНв№ТґрМвЅ±Аш
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
			SystemNotice( role , "ошибка")
		end
	else
		SystemNotice( role , "Верно! Но ты не получаешь никакого приза" )
	end
end
function WGprize_1( role ) --јУѕ­Сй LV * 10
	local expNow = GetChaAttr( role , ATTR_CEXP )
	local lvNow = GetChaAttr( role , ATTR_LV)
	
	SystemNotice( role , "Верно! Ты получаешь " .. lvNow*10 .. " очков опыта")
	SetChaAttrI(  role , ATTR_CEXP ,expNow+lvNow*10  )
	RefreshCha(role)
	return 0
end

function WGprize_2( role ) --Ѕ«µ±З°СЄІ№Въ
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	SystemNotice( role , "Верно! Твои ЖЗ восстановлены")
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_3(role) --Ѕ«µ±З°А¶І№Въ
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	SystemNotice( role , "Верно! Твоя МН восстановлена")
	SetChaAttrI( role , ATTR_SP, SPMaxNow  )
	RefreshCha(role)
	return 0
end

function WGprize_4(role) --Ѕ±АшLV*1ёцµ°ёв
	local lvNow = GetChaAttr( role , ATTR_LV)
	SystemNotice( role , "Верно! Ты получаешь " .. lvNow .. " кексов")
	
	GiveItem( role , 0 , 1849  , lvNow , 4 )	
	return 0
end

function WGprize_5(role) --ЙсПЙЅґ№ы1ёц
	SystemNotice( role , "Верно! Ты получаешь Обратный билет")
	
	GiveItem( role , 0 , 3141  , 1 , 4 )	
	return 0
end

function WGprize_6(role) --СЄА¶И«Въ
	local bloodMaxNow = GetChaAttr( role , ATTR_MXHP)
	local SPMaxNow = GetChaAttr( role , ATTR_MXSP)
	
	SystemNotice( role , "Верно! Твои ЖЗ и МН восстановлены")
	
	SetChaAttrI( role , ATTR_HP ,bloodMaxNow  )
	SetChaAttrI( role , ATTR_SP ,SPMaxNow  )
	RefreshCha(role)
	return 0
end
---------------------------------------------------------------------------------------
----				Leo  end
---------------------------------------------------------------------------------------



------
-- В диалогах обмена товаров (SendExchangeXData) убираем проверку на возможность обмена итемов.
-- Зачем вообще эта проверка нужна?
-- Нах вообще в variable.lua нужен тогда массив ChangeItemList
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
-- Сундук с монетами фей
------
function GiveBragiItem ( role , value )
	local pinzhi = 0
	local ChaName = GetChaDefaultName ( role )
	local lv = GetChaAttr ( role , ATTR_LV )
	local a = math.random ( 1 , 10000 )
	-- Питание 5%(5шт)
	if a >= 1 and a <= 500 then
		GiveItem ( role , 0 , 0227 , 5 , 4 )
		-- Крылья 5% шанс
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
	-- Рюкзаки 1%
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
		-- Кольцо СВ 1%
		--GiveItem ( role , 0 , 2521 , 1 , 4 )
	-- Экспа 13.3% 
	elseif a >= 601 and a <= 1930 then
		XSAddExpAll ( role , 2, 2, 2 )
	-- Фрукт роста 5%(5шт)
	elseif a >= 1931 and a <= 2430 then
		GiveItem ( role , 0 , 578 , 5 , 4 )
	-- Световая бомба 10%(5шт)
	elseif a >= 2431 and a <= 3430 then
		GiveItem ( role , 0 , 1136 , 5 , 4 )
	-- Расписка на реф 1.5%
	elseif a >= 3431 and a <= 3580 then
		GiveItem ( role , 0 , 7726 , 1 , 4 )
	-- Чертеж призыва 6%(2шт)
	elseif a >= 3581 and a <= 4180 then
		GiveItem ( role , 0 , 1003 , 2 , 4 )
	-- Фляги хп 6%(5шт)
	elseif a >= 4181 and a <= 4780 then
		GiveItem ( role , 0 , 3848 , 5 , 4 )
	-- Запечатанный чертеж 10%(4шт)
	elseif a >= 4781 and a <= 5780 then
		GiveItem ( role , 0 , 1002 , 4 , 4 )
	-- Фляги хп 3%(10шт)
	elseif a >= 5781 and a <= 6080 then
		GiveItem ( role , 0 , 3848 , 10 , 4 )
	-- Банки на ХП и СП 15.1%(8шт)
	elseif a >= 6081 and a <= 7590 then
		GiveItem ( role , 0 , 3099 , 8 , 4 )
		GiveItem ( role , 0 , 3098 , 8 , 4 )
	-- Большое Питание 1%(10шт)
	elseif a >= 7591 and a <= 7690 then
		GiveItem ( role , 0 , 5644 , 10 , 4 )
	-- Грязный небесный сундук 1%
	elseif a >= 7691 and a <= 7790 then
		GiveItem ( role , 0 , 7715 , 1 , 4 )
	-- Сундук из Мира Демонов 0,1%
	elseif a >= 7791 and a <= 7800 then
		GiveItem ( role , 0 , 3424 , 1 , 4 )
	-- Билеты 20%
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
	-- Шмотки из мистиков 2%
	else
		local f = math.random ( 1 , 58 )
		if value == 1 then
			pinzhi = 4
		elseif value == 2 then
			pinzhi = 8
		elseif value == 3 then
			pinzhi = 12
		else
			SystemNotice( role , "Вы слишком хорошо выглядите! Думаю, вам здесь не место.")
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
-- Дает экспу при использования сундука с монетами фей
-- @param int type - Если 1 - 0.06% если уровень >=80, 3% если ниже, если 2 - 0.2% если уровень >=80, 1% если ниже
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
			SystemNotice( role , "Персонажам 100 уровня опыт не начисляется!" )
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
			SystemNotice( role , "Персонажам 100 уровня опыт не начисляется!" )
			--exp_new = exp_now + 10000
			--SetChaAttrI( role , ATTR_CEXP , exp_new )
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
			SystemNotice( role , "Персонажам 100 уровня опыт не начисляется!" )
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
			SystemNotice( role , "Персонажам 100 уровня опыт не начисляется!" )
			--exp_new = exp_now + 10000
			--SetChaAttrI( role , ATTR_CEXP , exp_new )
		end
	end
end


--Функция для выдачи гемов 1 лвл
function ItemGem_1 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Нельзя использовать когда вы в море!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "У вас должен быть 1 слот в инвентаре." )
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

--Функция для выдачи гемов 2 лвл
function ItemGem_2 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Нельзя использовать когда вы в море!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "У вас должен быть 1 слот в инвентаре." )
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

--Функция для выдачи гемов 3 лвл
function ItemGem_3 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Нельзя использовать когда вы в море!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "У вас должен быть 1 слот в инвентаре." )
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

--Функция для выдачи гемов 4 лвл
function ItemGem_4 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Нельзя использовать когда вы в море!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "У вас должен быть 1 слот в инвентаре." )
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

--Функция для выдачи гемов 5 лвл
function ItemGem_5 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Нельзя использовать когда вы в море!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "У вас должен быть 1 слот в инвентаре." )
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

--Функция для выдачи гемов 6 лвл
function ItemGem_6 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Нельзя использовать когда вы в море!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "У вас должен быть 1 слот в инвентаре." )
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

--Функция для выдачи гемов 7 лвл
function ItemGem_7 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Нельзя использовать когда вы в море!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "У вас должен быть 1 слот в инвентаре." )
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

--Функция для выдачи гемов 8 лвл
function ItemGem_8 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Нельзя использовать когда вы в море!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "У вас должен быть 1 слот в инвентаре." )
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

--Функция для выдачи гемов 9 лвл
function ItemGem_9 ( role , ItemID )
	local Cha_Boat = 0
	Cha_Boat = GetCtrlBoat ( role )
	if Cha_Boat ~=  nil then
		SystemNotice( role , "Нельзя использовать когда вы в море!" )
		UseItemFailed ( role )
		return
	end
	local Item_CanGet = GetChaFreeBagGridNum ( role )
	if Item_CanGet < 1 then
		SystemNotice(role , "У вас должен быть 1 слот в инвентаре." )
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

-- Функция проверяет можно ли повысить уровень уровень умения
function CheckCanUpgradeSkill(role, skill_id)
	-- Проверяем, есть ли у персонажа умение
	local skill = GetSkillLv(role, skill_id)
	if (skill > 0) then
		-- Ищем скилл в списке умений, которые нельзя повышать через плюсик
		local Data
		for Data in SkillListId do
			if SkillListId[Data] == skill_id then
				-- Скилл в списке
				SystemNotice(role, "Невозможно повысить уровень данного умения!")
				return 0
			end
		
		end
		-- Скилл не наден в списке, все ОК
		return 1
	end
	-- У персонажа нет умения
	SystemNotice(role, "Вы не изучили данное умение. Невозможно повысить уровень!")
	return 0
end

--Удаление ингридиентов
function dell_ingridient(role,itemid,count)
	local name = GetItemName ( itemid )
	a = TakeItem(  role , 0 , itemid , count )
	if a == 0 then
		SystemNotice ( role , "Удаление "..name.." в количестве "..count.." штук прошло не удачано, проверьте параметры." )
		return 0
	end
	return 1
end

--Проверка ингридиентов
function proc_ingridient(role,itemid,count)
	local item_est = CheckBagItem ( role , itemid )
	local name = GetItemName ( itemid )
	if item_est < count then
		SystemNotice(role ,"У вас не достаочно ингридиента: "..name..", необходимо, что бы у вас было как минимум - "..count.." штук!")
		return 0
	end
	return 1
end

function AntiBotSystem(role)
	local name = GetChaDefaultName(role)
	local CheckBot = CheckBot(role)
	--SystemNotice(role,"AntiBotSystem начало")
	if CheckBot == 0 then
		--SystemNotice(role,"AntiBotSystem CheckBot == 0")
		if AntiBot[name] == nil then
			--SystemNotice(role,"AntiBotSystem AntiBot[name] == nil")
			local X,Y = GetChaPos(role)
			AntiBot[name] = { Pos_X = X , Pos_Y = Y }
			return 1
		end
	elseif CheckBot == 1 then
		--SystemNotice(role,"AntiBotSystem CheckBot == 1")
		return 0
	end
end

function CheckBot(role)
	local name = GetChaDefaultName(role)
	local X,Y = GetChaPos(role)
	--SystemNotice(role,"CheckBot начало")
	--SystemNotice(role,"X = "..X)
	--SystemNotice(role,"Y = "..Y)
	if AntiBot[name] ~= nil then
		if AntiBot[name].Pos_X == X and AntiBot[name].Pos_Y == Y then
			SystemNotice ( role , "Невозможно использовать навык стоя на одном месте!" )
			return 1
		else
			--SystemNotice(role,"CheckBot Удаление перемнных")
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
		--SystemNotice(role,"AntiBotSystem начало")
		if CheckBotLine == 0 then
			--SystemNotice(role,"AntiBotSystem CheckBot == 0")
			if AntiBotLine[name] == nil then
				--SystemNotice(role,"AntiBotSystem AntiBot[name] == nil")
				local X,Y = GetChaPos(role)
				count = count + 1
				AntiBotLine[name] = { Pos_X = X , Pos_Y = Y, count = count }
				return 1
			elseif AntiBotLine[name] ~= nil then
				--SystemNotice(role,"AntiBotSystem AntiBot[name] ~= nil")
				count = AntiBotLine[name].count + 1
				X = AntiBotLine[name].Pos_X
				Y = AntiBotLine[name].Pos_Y
				AntiBotLine[name] = { Pos_X = X , Pos_Y = Y, count = count }
				return 1
			end
		elseif CheckBotLine == 1 then
			--SystemNotice(role,"AntiBotSystem CheckBot == 1")
			return 0
		end
	else
		return 1
	end
end

function CheckBotLine(role)
	local name = GetChaDefaultName(role)
	local X,Y = GetChaPos(role)
	--SystemNotice(role,"X = "..X)
	--SystemNotice(role,"Y = "..Y)
	if AntiBotLine[name] ~= nil then
		if AntiBotLine[name].count <= 5 then
			--SystemNotice(role,"AntiBotLine[name].count <= 3 ")
			if AntiBotLine[name].Pos_X == X and AntiBotLine[name].Pos_Y == Y then
				--SystemNotice(role,"CheckBot Работа")
				return 0
			else
				--SystemNotice(role,"CheckBot Удаление перемнных")
				AntiBotLine[name] = nil
				return 0
			end
		elseif AntiBotLine[name].count > 5 then
			--SystemNotice(role,"AntiBotLine[name].count > 3 ")
			if AntiBotLine[name].Pos_X == X and AntiBotLine[name].Pos_Y == Y then
				SystemNotice ( role , "Невозможно использовать навык стоя на одном месте!" )
				return 1
			else
				--SystemNotice(role,"CheckBot Удаление перемнных")
				AntiBotLine[name] = nil
				return 0
			end
		end
	else
		return 0
	end
end



-------------
-- Свадьба --
-------------

--Возвращает количество персонажей, которые в отряде с игроком.
function GetPlayerCountInPartyWithRole(role)
	local count = 0
	for i = 0, 4, 1 do
		if ValidCha(GetTeamCha(role , i)) == 1 then
			count = count + 1
		end
	end
	return count
end

--Проверяет расы персонажей.
function CheckChaType(player1, player2)
	local TypeFirstPlayer  = GetChaTypeID(player1)
	local TypeSecondPlayer = GetChaTypeID(player2)
	--Раса + раса
	if TypeFirstPlayer == TypeSecondPlayer then
		return 0
	end
	--Ланс + Карциз или Карциз + Ланс
	if TypeFirstPlayer == 1 and TypeSecondPlayer == 2 or
		TypeFirstPlayer == 2 and TypeSecondPlayer == 1 then
		return 0
	end
	--Филисс + Ами или Ами + Филисс
	if TypeFirstPlayer == 3 and TypeSecondPlayer == 4 or
		TypeFirstPlayer == 4 and TypeSecondPlayer == 3 then
		return 0
	end
	return 1
end

--Проверяет свадебные наряды
function CheckWeddingDress(role)

	local ChaType = GetChaTypeID(role)					--Раса персонажа
	local Body  = GetItemID(GetEquipItemP(role, 2))		--Тело
	local Glove = GetItemID(GetEquipItemP(role, 3))		--Перчатки
	local Shoes = GetItemID(GetEquipItemP(role, 4))		--Ботинки

	--Ланс
	if ChaType == 1 then
		if Body ~= 5221 or Glove ~= 5222 or Shoes ~= 5223 then
			return 0
		end
	--Карциз
	elseif ChaType == 2 then
		if Body ~= 5238 or Glove ~= 5239 or Shoes ~= 5240 then
			return 0
		end
	--Филлис
	elseif ChaType == 3 then
		if Body ~= 5245 or Glove ~= 5246 or Shoes ~= 5247 then
			return 0
		end
	--Ами
	elseif ChaType == 4 then
		if Body ~= 5253 or Glove ~= 5254 or Shoes ~= 5255 then
			return 0
		end
	end
	return 1
end

--Проверяет поженен персонаж или нет
function CheckIsMarried(role)
	local sc = CheckBagItem(role, 2520)
	if sc > 0 then
		return 0
	end
	return 1
end

--Запуск фейерверков свидетелей
function LaunchFirework(role, npc)
	PlayEffect(npc, math.random(1, WD_FIREWORK_COUNT))
end

--Свадьба
function Wedding(role)
	--В отряде ли персонаж?
	if IsInTeam(role) == 0 then
		SystemNotice(role, "Чтобы начать церемонию бракосочетания, вы, вместе со своей половинкой, должны быть в группе!")
		return 0
	end

	--Персонаж должен быть в отряде ТОЛЬКО со своей половинкой
	if GetPlayerCountInPartyWithRole(role) > 1 then
		SystemNotice(role, "Пожалуйста, останьтесь наедине в группе со своей половинкой!")
		return 0
	end

	local player = {}
	player[1] = role
	player[2] = GetTeamCha(role, 0)

	--Проверим, может из персонажей уже кто-то поженился
	if CheckIsMarried(player[1]) == 0 then
		SystemNotice(player[1], "Ты уже скреплены узами брака с другим игроком!")
		SystemNotice(player[2], GetChaDefaultName(player[1]).." уже скреплен узами брака с другим игроком!")
		return 0
	end
	if CheckIsMarried(player[2]) == 0 then
		SystemNotice(player[1], GetChaDefaultName(player[2]).." уже скреплен узами брака с другим игроком!")
		SystemNotice(player[2], "Ты уже скреплены узами брака с другим игроком!")
		return 0
	end

	--Проверим расы персонажей
	if CheckChaType(player[1], player[2]) == 0 then
		SystemNotice(player[1], GetChaDefaultName(player[2]).." неподоходящая для тебя пара!")
		SystemNotice(player[2], GetChaDefaultName(player[1]).." неподоходящая для тебя пара!")
		return 0
	end

	--Проверим свадебные наряды у обеих сторон
	if CheckWeddingDress(player[1]) == 0 then
		SystemNotice(player[1], "Наденьте свадебный наряд!")
		SystemNotice(player[2], "Твоя половинка должна надеть свадбеный наряд!")
		return 0
	end
	if CheckWeddingDress(player[2]) == 0 then
		SystemNotice(player[1], "Твоя половинка должна надеть свадбеный наряд!")
		SystemNotice(player[2], "Наденьте свадебный наряд!")
		return 0
	end

	--Проверим Кольцо Св. Валентина у обеих сторон
	local RingFirstPlayer = CheckBagItem(player[1], 2521)
	local RingSecondPlayer = CheckBagItem(player[2], 2521)
	if RingFirstPlayer == 0 then
		SystemNotice(player[1], "У тебя нет Кольца Св. Валентина!")
		SystemNotice(player[2], "У твоей половинки нет Кольца Св. Валентина!")
		return 0
	end
	if RingSecondPlayer == 0 then
		SystemNotice(player[1], "У твоей половинки нет Кольца Св. Валентина!")
		SystemNotice(player[2], "У тебя нет Кольца Св. Валентина!")
		return 0
	end

	--Проверим свободную ячейку в инвентаре
	local FreeSlotsFirstPlayer = GetChaFreeBagGridNum(player[1])
	local FreeSlotsSecondPlayer = GetChaFreeBagGridNum(player[2])
	if FreeSlotsFirstPlayer < 1 then 
		SystemNotice(player[1], "У тебя нет свободных ячеек в инвентаре! Освободите одну.")
		SystemNotice(player[2], "У твоей половинки нет свободных ячеек в инвентаре!")
		return 0
	end
	if FreeSlotsSecondPlayer < 1 then
		SystemNotice(player[1], "У твоей половинки нет свободных ячеек в инвентаре!")
		SystemNotice(player[2], "У тебя нет свободных ячеек в инвентаре! Освободите одну.")
		return 0
	end

	--Проверим наличие Золота
	local MoneyFirstPlayer = GetChaAttr(player[1] , ATTR_GD)
	local MoneySecondPlayer = GetChaAttr(player[2] , ATTR_GD)
	if MoneyFirstPlayer < WD_GOLD then
		SystemNotice(player[1], "У тебя недостаточно золота! Вам нужно "..WD_GOLD.." золота, чтобы заключить брак!")
		SystemNotice(player[2], "У твоей половинки недостаточно золота! Требуется "..WD_GOLD.." золота!")
		return 0
	end
	if MoneySecondPlayer < WD_GOLD then
		SystemNotice(player[2], "У тебя недостаточно золота! Вам нужно "..WD_GOLD.." золота, чтобы заключить брак!")
		SystemNotice(player[1], "У твоей половинки недостаточно золота! Требуется "..WD_GOLD.." золота!")
		return 0
	end

-----------------------------------------------------------------------
	--1. Забираем Кольца Дня Св. Валентина
	TakeItem(player[1], 0, 2521, 1)
	TakeItem(player[2], 0, 2521, 1)

	--2. Забираем Золото
	TakeMoney(player[1], nil, WD_GOLD)
	TakeMoney(player[2], nil, WD_GOLD)

	--3. Проиграем эффект сердечек на поженившихся персонажах
	PlayEffect_NEW(player[1],player[2])

	--4. Учим скилл "Узы любви"
	AddChaSkill(player[1], SK_QLZX, 1, 1, 0)
	AddChaSkill(player[2], SK_QLZX, 1, 1, 0)

	--5. Выдаем и настраиваем кольца
	GiveItem(player[1], 0, 2520, 1, 4)
	GiveItem(player[2], 0, 2520, 1, 4)

	local FirstPlayerID  = GetRoleID(player[1]) 
	local SecondPlayerID = GetRoleID(player[2])

	local FirstPlayerRing  = GetChaItem2(player[1], 2, 2520)
	local SecondPlayerRing = GetChaItem2(player[2], 2, 2520)

	SetItemForgeParam(FirstPlayerRing, 1, SecondPlayerID) 
	SetItemForgeParam(SecondPlayerRing, 1, FirstPlayerID)

	--6. Выводим глобальное сообщение о свадьбе.
	local msg = "Поздравляем <<"..GetChaDefaultName(player[1]).. ">> и <<"..GetChaDefaultName(player[2])..">> со свадьбой! Желаем им всего самого лучшего, долгих лет вместе и приятной игры на сервере Тортуга!"
	Notice(msg)

	return 1
end

function PlayEffect_NEW(cha1,cha2)
	PlayEffect(cha1, 370)
	PlayEffect(cha2, 370)
end

------------
-- Развод --
------------

function WeddingStop(role)
	--В отряде ли персонаж?
	if IsInTeam(role) == 0 then
		SystemNotice(role, "Чтобы начать церемонию бракосочетания, вы, вместе со своей половинкой, должны быть в группе!")
		return 0
	end

	--Персонаж должен быть в отряде ТОЛЬКО со своей половинкой
	if GetPlayerCountInPartyWithRole(role) > 1 then
		SystemNotice(role, "Пожалуйста, останьтесь наедине в группе со своей половинкой!")
		return 0
	end

	local player = {}
	player[1] = role
	player[2] = GetTeamCha(role, 0)

	--Проверим Кольцо у обеих сторон
	local RingFirstPlayer = CheckBagItem(player[1], 2520)
	local RingSecondPlayer = CheckBagItem(player[2], 2520)
	if RingFirstPlayer == 0 then
		SystemNotice(player[1], "У тебя нет Кольца Влюбленных!")
		SystemNotice(player[2], "У твоей половинки нет Кольца Влюбленных!")
		return 0
	end
	if RingSecondPlayer == 0 then
		SystemNotice(player[1], "У твоей половинки нет Кольца Влюбленных!")
		SystemNotice(player[2], "У тебя нет Кольца Влюбленных!")
		return 0
	end

	--Проверим соответсвие колец
	local RingFirst = GetChaItem2 ( player[1] , 2 , 2520 )
	local RingSecond = GetChaItem2 ( player[2] , 2 , 2520 )
	local FirstParamRing = GetItemForgeParam ( RingFirst , 1 )
	local SecondParamRing = GetItemForgeParam ( RingSecond , 1 )
	FirstParamRing = TansferNum ( FirstParamRing )
	SecondParamRing = TansferNum ( SecondParamRing )
	local ID_Character_Fisrt = GetRoleID(player[1])
	local ID_Character_Second = GetRoleID(player[2])
	if FirstParamRing ~= ID_Character_Second then
		SystemNotice(player[1], "У тебя Кольцо Влюбленных не соответсвует твоей половинке! Развод не возможен!")
		SystemNotice(player[2], "У твоей половинки Кольцо Влюбленных не соответсвует твоему персонажу! Развод не возможен!")
		return 0
	end
	if SecondParamRing ~= ID_Character_Fisrt then
		SystemNotice(player[2], "У тебя Кольцо Влюбленных не соответсвует твоей половинке! Развод не возможен!")
		SystemNotice(player[1], "У твоей половинки Кольцо Влюбленных не соответсвует твоему персонажу! Развод не возможен!")
		return 0
	end

	--Проверим наличие Золота
	local MoneyFirstPlayer = GetChaAttr(player[1] , ATTR_GD)
	local MoneySecondPlayer = GetChaAttr(player[2] , ATTR_GD)
	if MoneyFirstPlayer < WD_GOLD then
		SystemNotice(player[1], "У тебя недостаточно золота! Вам нужно "..WD_GOLD.." золота, чтобы расторгнуть брак!")
		SystemNotice(player[2], "У твоей половинки недостаточно золота! Требуется "..WD_GOLD.." золота!")
		return 0
	end
	if MoneySecondPlayer < WD_GOLD then
		SystemNotice(player[2], "У тебя недостаточно золота! Вам нужно "..WD_GOLD.." золота, чтобы расторгнуть брак!")
		SystemNotice(player[1], "У твоей половинки недостаточно золота! Требуется "..WD_GOLD.." золота!")
		return 0
	end
--------------------------------------------
	--1. Забираем Кольца
	TakeItem(player[1], 0, 2520, 1)
	TakeItem(player[2], 0, 2520, 1)

	--2. Забираем золто
	TakeMoney(player[1], nil, WD_GOLD)
	TakeMoney(player[2], nil, WD_GOLD)

	--3. Выводим сообщение
	local msg = "К сожалению игроки <<"..GetChaDefaultName(player[1]).. ">> и <<"..GetChaDefaultName(player[2])..">> решили расторгнуть брак! Желаем им найти счастье с кем то другим."
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
		SystemNotice(role , "Вход в [Край Авроры]")
		return LUA_TRUE
	else
		SystemNotice(role , "Вход в [Край Авроры] сейчас закрыт")
		return LUA_FALSE
	end
end

function goto_mj2_time(role)
	local Now_Time = GetNowTime()
	if Now_Time >= 19 and Now_Time < 20 then
		SystemNotice(role , "Вход в [Край Тьмы]")
		return LUA_TRUE
	else
		SystemNotice(role , "Вход в [Край Тьмы] закрыт")
		return LUA_FALSE
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